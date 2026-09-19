// unit TAGPBMutableArray — 37 functions
//   0x10012f5b0     232  -[TAGPBMutableArray dealloc]
//   0x10012f698      84  +[TAGPBMutableArray arrayWithValueType:capacity:]
//   0x10012f6ec      80  -[TAGPBMutableArray initWithValueType:capacity:]
//   0x10012f73c     100  -[TAGPBMutableArray copyWithZone:]
//   0x10012f7a0     180  -[TAGPBMutableArray countByEnumeratingWithState:objects:count:]
//   0x10012f854     348  -[TAGPBMutableArray enumerateObjectsUsingBlock:]
//   0x10012f9b0     444  -[TAGPBMutableArray enumerateInt32sUsingBlock:]
//   0x10012fb6c     256  -[TAGPBMutableArray ensureAdditionalCapacity:]
//   0x10012fc6c      56  -[TAGPBMutableArray addObject:]
//   0x10012fca4     232  -[TAGPBMutableArray addBool:]
//   0x10012fd8c     232  -[TAGPBMutableArray addInt32:]
//   0x10012fe74     232  -[TAGPBMutableArray addUInt32:]
//   0x10012ff5c     232  -[TAGPBMutableArray addInt64:]
//   0x100130044     232  -[TAGPBMutableArray addUInt64:]
//   0x10013012c     232  -[TAGPBMutableArray addFloat:]
//   0x100130214     232  -[TAGPBMutableArray addDouble:]
//   0x1001302fc     316  -[TAGPBMutableArray replaceObjectAtIndex:withObject:]
//   0x100130438      68  -[TAGPBMutableArray setObject:atIndexedSubscript:]
//   0x10013047c     264  -[TAGPBMutableArray replaceBoolAtIndex:withBool:]
//   0x100130584     264  -[TAGPBMutableArray replaceInt32AtIndex:withInt32:]
//   0x10013068c     264  -[TAGPBMutableArray replaceUInt32AtIndex:withUInt32:]
//   0x100130794     264  -[TAGPBMutableArray replaceInt64AtIndex:withInt64:]
//   0x10013089c     264  -[TAGPBMutableArray replaceUInt64AtIndex:withUInt64:]
//   0x1001309a4     272  -[TAGPBMutableArray replaceFloatAtIndex:withFloat:]
//   0x100130ab4     272  -[TAGPBMutableArray replaceDoubleAtIndex:withDouble:]
//   0x100130bc4      92  -[TAGPBMutableArray setArray:]
//   0x100130c20     340  -[TAGPBMutableArray appendArray:]
//   0x100130d74     304  -[TAGPBMutableArray appendValues:valueType:count:]
//   0x100130ea4     204  -[TAGPBMutableArray removeAllValues]
//   0x100130f70      16  -[TAGPBMutableArray delegate]
//   0x100130f80      16  -[TAGPBMutableArray setDelegate:]
//   0x100130f90     184  sub_100130f90
//   0x100131048    1032  sub_100131048
//   0x100131450     252  sub_100131450
//   0x10013154c     484  sub_10013154c
//   0x100131730     288  sub_100131730
//   0x100131850     136  sub_100131850

; ======================================================================
; -[TAGPBMutableArray dealloc]
; address 0x10012f5b0  size 232  kind objc
; ======================================================================
  10012f5b0  stp     x29, x30, [sp, #-0x10]!
  10012f5b4  mov     x29, sp
  10012f5b8  stp     x20, x19, [sp, #-0x10]!
  10012f5bc  stp     x22, x21, [sp, #-0x10]!
  10012f5c0  stp     x24, x23, [sp, #-0x10]!
  10012f5c4  sub     sp, sp, #0x10
  10012f5c8  mov     x19, x0
  10012f5cc  adrp    x8, #0x100420000
  10012f5d0  ldrsw   x8, [x8, #0x914]                         ; ivar offset TAGPBMutableArray._delegate (+0x30)
  10012f5d4  ldr     x8, [x19, x8]                            ; x8 = self->_delegate
  10012f5d8  cbz     x8, loc_10012f65c                        ; if (self->_delegate == 0)
  10012f5dc  adrp    x8, #0x10041e000
  10012f5e0  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10012f5e4  adrp    x8, #0x10041c000
  10012f5e8  nop
  10012f5ec  ldr     x1, [x8, #0x470]
  10012f5f0  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  10012f5f4  mov     x20, x0
  10012f5f8  adrp    x23, #0x10041d000
  10012f5fc  ldr     x0, [x23, #0xf78]                        ; class NSString
  10012f600  adrp    x8, #0x10041c000
  10012f604  nop
  10012f608  ldr     x21, [x8, #0x478]
  10012f60c  adrp    x2, #0x100393000
  10012f610  add     x2, x2, #0x936                           ; "-[TAGPBMutableArray dealloc]"
  10012f614  mov     x1, x21
  10012f618  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGPBMutableArray dealloc]"]
  10012f61c  mov     x22, x0
  10012f620  ldr     x0, [x23, #0xf78]                        ; class NSString
  10012f624  adrp    x2, #0x100393000
  10012f628  add     x2, x2, #0x953                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10012f62c  mov     x1, x21
  10012f630  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  10012f634  mov     x3, x0
  10012f638  adrp    x8, #0x10041c000
  10012f63c  nop
  10012f640  ldr     x1, [x8, #0x520]
  10012f644  adrp    x5, #0x1003c6000
  10012f648  add     x5, x5, #0xcb0                           ; @"Delegate must be cleared before release."
  10012f64c  mov     x4, #0x260
  10012f650  mov     x0, x20
  10012f654  mov     x2, x22
  10012f658  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGPBMutableArray dealloc]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:608 description:@"Delegate must be cleared before release."]
loc_10012f65c:
  10012f65c  str     x19, [sp]
  10012f660  adrp    x8, #0x10041f000
  10012f664  ldr     x8, [x8, #0x168]
  10012f668  str     x8, [sp, #8]
  10012f66c  adrp    x8, #0x100416000
  10012f670  nop
  10012f674  ldr     x1, [x8, #0xfc8]
  10012f678  mov     x0, sp
  10012f67c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10012f680  sub     sp, x29, #0x30
  10012f684  ldp     x24, x23, [sp], #0x10
  10012f688  ldp     x22, x21, [sp], #0x10
  10012f68c  ldp     x20, x19, [sp], #0x10
  10012f690  ldp     x29, x30, [sp], #0x10
  10012f694  ret

; ======================================================================
; +[TAGPBMutableArray arrayWithValueType:capacity:]
; address 0x10012f698  size 84  kind objc
; ======================================================================
  10012f698  stp     x29, x30, [sp, #-0x10]!
  10012f69c  mov     x29, sp
  10012f6a0  stp     x20, x19, [sp, #-0x10]!
  10012f6a4  mov     x19, x3
  10012f6a8  mov     x20, x2
  10012f6ac  adrp    x8, #0x100416000
  10012f6b0  nop
  10012f6b4  ldr     x1, [x8, #0xac8]
  10012f6b8  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10012f6bc  adrp    x8, #0x10041c000
  10012f6c0  nop
  10012f6c4  ldr     x1, [x8, #0x528]
  10012f6c8  mov     x2, x20
  10012f6cc  mov     x3, x19
  10012f6d0  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:arg1 capacity:arg2]
  10012f6d4  adrp    x8, #0x10041b000
  10012f6d8  nop
  10012f6dc  ldr     x1, [x8, #0xe88]
  10012f6e0  ldp     x20, x19, [sp], #0x10
  10012f6e4  ldp     x29, x30, [sp], #0x10
  10012f6e8  b       _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:arg1 capacity:arg2] autorelease]

; ======================================================================
; -[TAGPBMutableArray initWithValueType:capacity:]
; address 0x10012f6ec  size 80  kind objc
; ======================================================================
  10012f6ec  stp     x29, x30, [sp, #-0x10]!
  10012f6f0  mov     x29, sp
  10012f6f4  stp     x20, x19, [sp, #-0x10]!
  10012f6f8  mov     x19, x3
  10012f6fc  adrp    x8, #0x10041c000
  10012f700  nop
  10012f704  ldr     x1, [x8, #0x4f0]
  10012f708  bl      _objc_msgSend                            ; [self initWithValueType:arg1]
  10012f70c  mov     x20, x0
  10012f710  cbz     x20, loc_10012f72c                       ; if (self == 0)
  10012f714  adrp    x8, #0x10041c000
  10012f718  nop
  10012f71c  ldr     x1, [x8, #0x518]
  10012f720  mov     x0, x20
  10012f724  mov     x2, x19
  10012f728  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:arg2]
loc_10012f72c:
  10012f72c  mov     x0, x20
  10012f730  ldp     x20, x19, [sp], #0x10
  10012f734  ldp     x29, x30, [sp], #0x10
  10012f738  ret

; ======================================================================
; -[TAGPBMutableArray copyWithZone:]
; address 0x10012f73c  size 100  kind objc
; ======================================================================
  10012f73c  stp     x29, x30, [sp, #-0x10]!
  10012f740  mov     x29, sp
  10012f744  stp     x20, x19, [sp, #-0x10]!
  10012f748  mov     x19, x0
  10012f74c  adrp    x8, #0x10041e000
  10012f750  ldr     x0, [x8, #0x760]                         ; class TAGPBArray
  10012f754  adrp    x8, #0x100416000
  10012f758  nop
  10012f75c  ldr     x1, [x8, #0xab0]
  10012f760  bl      _objc_msgSend                            ; [TAGPBArray allocWithZone:arg1]
  10012f764  adrp    x8, #0x100420000
  10012f768  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012f76c  ldr     x2, [x19, x8]                            ; x2 = self->_data
  10012f770  adrp    x8, #0x100420000
  10012f774  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012f778  ldr     x3, [x19, x8]                            ; x3 = self->_count
  10012f77c  adrp    x8, #0x100420000
  10012f780  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012f784  ldr     w4, [x19, x8]                            ; w4 = self->_valueType
  10012f788  adrp    x8, #0x10041c000
  10012f78c  nop
  10012f790  ldr     x1, [x8, #0x4e0]
  10012f794  ldp     x20, x19, [sp], #0x10
  10012f798  ldp     x29, x30, [sp], #0x10
  10012f79c  b       _objc_msgSend                            ; [[TAGPBArray allocWithZone:arg1] initWithValues:self->_data count:self->_count valueType:self->_valueType]

; ======================================================================
; -[TAGPBMutableArray countByEnumeratingWithState:objects:count:]
; address 0x10012f7a0  size 180  kind objc
; ======================================================================
  10012f7a0  stp     x29, x30, [sp, #-0x10]!
  10012f7a4  mov     x29, sp
  10012f7a8  stp     x20, x19, [sp, #-0x10]!
  10012f7ac  sub     sp, sp, #0x10
  10012f7b0  mov     x20, x2
  10012f7b4  mov     x19, x0
  10012f7b8  ldr     x8, [x20]                                ; x8 = arg1[+0x0]
  10012f7bc  cbz     x8, loc_10012f7c8                        ; if (arg1[+0x0] == 0)
  10012f7c0  mov     x0, #0
  10012f7c4  b       loc_10012f80c
loc_10012f7c8:
  10012f7c8  adrp    x8, #0x100420000
  10012f7cc  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012f7d0  ldr     w8, [x19, x8]                            ; w8 = self->_valueType
  10012f7d4  cbnz    w8, loc_10012f81c                        ; if (self->_valueType != 0)
loc_10012f7d8:
  10012f7d8  adrp    x8, #0x100420000
  10012f7dc  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012f7e0  add     x8, x19, x8
  10012f7e4  str     x8, [x20, #0x10]                         ; arg1[+0x10] = x8
  10012f7e8  adrp    x8, #0x100420000
  10012f7ec  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012f7f0  ldr     x8, [x19, x8]                            ; x8 = self->_data
  10012f7f4  str     x8, [x20, #8]                            ; arg1[+0x8] = self->_data
  10012f7f8  adrp    x8, #0x100420000
  10012f7fc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012f800  ldr     x9, [x19, x8]                            ; x9 = self->_count
  10012f804  str     x9, [x20]                                ; arg1[+0x0] = self->_count
  10012f808  ldr     x0, [x19, x8]                            ; x0 = self->_count
loc_10012f80c:
  10012f80c  sub     sp, x29, #0x10
  10012f810  ldp     x20, x19, [sp], #0x10
  10012f814  ldp     x29, x30, [sp], #0x10
  10012f818  ret
loc_10012f81c:
  10012f81c  adrp    x8, #0x10041d000
  10012f820  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012f824  adrp    x8, #0x100417000
  10012f828  nop
  10012f82c  ldr     x1, [x8, #0x260]
  10012f830  adrp    x8, #0x100393000
  10012f834  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012f838  adrp    x2, #0x1003c6000
  10012f83c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012f840  str     x8, [sp]
  10012f844  adrp    x3, #0x1003c6000
  10012f848  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012f84c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012f850  b       loc_10012f7d8

; ======================================================================
; -[TAGPBMutableArray enumerateObjectsUsingBlock:]
; address 0x10012f854  size 348  kind objc
; ======================================================================
  10012f854  stp     x29, x30, [sp, #-0x10]!
  10012f858  mov     x29, sp
  10012f85c  stp     x20, x19, [sp, #-0x10]!
  10012f860  stp     x22, x21, [sp, #-0x10]!
  10012f864  stp     x24, x23, [sp, #-0x10]!
  10012f868  stp     x26, x25, [sp, #-0x10]!
  10012f86c  stp     x28, x27, [sp, #-0x10]!
  10012f870  sub     sp, sp, #0x30
  10012f874  mov     x19, x2
  10012f878  mov     x20, x0
  10012f87c  adrp    x8, #0x100420000
  10012f880  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012f884  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012f888  cbnz    w8, loc_10012f978                        ; if (self->_valueType != 0)
loc_10012f88c:
  10012f88c  adrp    x8, #0x100420000
  10012f890  ldrsw   x28, [x8, #0x910]                        ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012f894  ldr     x26, [x20, x28]                          ; x26 = self->_mutationCount
  10012f898  strb    wzr, [sp, #0x2f]
  10012f89c  nop
  10012f8a0  ldrsw   x22, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012f8a4  ldr     x8, [x20, x22]                           ; x8 = self->_count
  10012f8a8  cbz     x8, loc_10012f958                        ; if (self->_count == 0)
  10012f8ac  mov     x21, #0
  10012f8b0  adrp    x8, #0x100420000
  10012f8b4  adrp    x9, #0x1003b0000
  10012f8b8  ldr     x9, [x9, #0x30]                          ; _NSGenericException
  10012f8bc  ldrsw   x23, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012f8c0  ldr     x8, [x9]                                 ; x8 = _NSGenericException[+0x0]
  10012f8c4  str     x8, [sp, #0x20]
  10012f8c8  adrp    x8, #0x100417000
  10012f8cc  nop
  10012f8d0  adrp    x9, #0x100417000
  10012f8d4  add     x9, x9, #0x260                           ; &@selector(raise:format:)
  10012f8d8  ldr     x8, [x8, #0x2e0]
  10012f8dc  str     x8, [sp, #0x18]
  10012f8e0  ldr     x24, [x9]
  10012f8e4  add     x25, sp, #0x2f
loc_10012f8e8:
  10012f8e8  ldr     x8, [x20, x23]                           ; x8 = self->_data
  10012f8ec  ldr     x1, [x8, x21, lsl #3]
  10012f8f0  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10012f8f4  mov     x0, x19
  10012f8f8  mov     x2, x21
  10012f8fc  mov     x3, x25
  10012f900  blr     x8                                       ; call arg1[+0x10]
  10012f904  ldr     x8, [x20, x28]                           ; x8 = self->_mutationCount
  10012f908  cmp     x8, x26
  10012f90c  b.eq    loc_10012f940                            ; if (self->_mutationCount == self->_mutationCount)
  10012f910  adrp    x8, #0x10041d000
  10012f914  ldr     x27, [x8, #0xfc8]                        ; class NSException
  10012f918  mov     x0, x20
  10012f91c  ldr     x1, [sp, #0x18]
  10012f920  bl      _objc_msgSend                            ; [self class]
  10012f924  stp     x0, x20, [sp]
  10012f928  mov     x0, x27
  10012f92c  mov     x1, x24
  10012f930  ldr     x2, [sp, #0x20]
  10012f934  adrp    x3, #0x1003c6000
  10012f938  add     x3, x3, #0xcd0                           ; @"*** Collection <%@: %p> was mutated while being enumerated."
  10012f93c  bl      _objc_msgSend                            ; [NSException raise:_NSGenericException[+0x0] format:@"*** Collection <%@: %p> was mutated while being enumerated.", [self class], self]
loc_10012f940:
  10012f940  add     x21, x21, #1
  10012f944  ldr     x8, [x20, x22]                           ; x8 = self->_count
  10012f948  ldrb    w9, [sp, #0x2f]
  10012f94c  cmp     x21, x8
  10012f950  ccmp    w9, #0, #0, lo
  10012f954  b.eq    loc_10012f8e8                            ; if (flags ==)
loc_10012f958:
  10012f958  sub     sp, x29, #0x50
  10012f95c  ldp     x28, x27, [sp], #0x10
  10012f960  ldp     x26, x25, [sp], #0x10
  10012f964  ldp     x24, x23, [sp], #0x10
  10012f968  ldp     x22, x21, [sp], #0x10
  10012f96c  ldp     x20, x19, [sp], #0x10
  10012f970  ldp     x29, x30, [sp], #0x10
  10012f974  ret
loc_10012f978:
  10012f978  adrp    x8, #0x10041d000
  10012f97c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012f980  adrp    x8, #0x100417000
  10012f984  nop
  10012f988  ldr     x1, [x8, #0x260]
  10012f98c  adrp    x8, #0x100393000
  10012f990  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012f994  adrp    x2, #0x1003c6000
  10012f998  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012f99c  str     x8, [sp]
  10012f9a0  adrp    x3, #0x1003c6000
  10012f9a4  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012f9a8  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012f9ac  b       loc_10012f88c

; ======================================================================
; -[TAGPBMutableArray enumerateInt32sUsingBlock:]
; address 0x10012f9b0  size 444  kind objc
; ======================================================================
  10012f9b0  stp     x29, x30, [sp, #-0x10]!
  10012f9b4  mov     x29, sp
  10012f9b8  stp     x20, x19, [sp, #-0x10]!
  10012f9bc  stp     x22, x21, [sp, #-0x10]!
  10012f9c0  stp     x24, x23, [sp, #-0x10]!
  10012f9c4  stp     x26, x25, [sp, #-0x10]!
  10012f9c8  stp     x28, x27, [sp, #-0x10]!
  10012f9cc  sub     sp, sp, #0x40
  10012f9d0  mov     x19, x2
  10012f9d4  str     x19, [sp, #0x30]
  10012f9d8  mov     x20, x0
  10012f9dc  adrp    x8, #0x100420000
  10012f9e0  ldrsw   x24, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012f9e4  ldr     w8, [x20, x24]                           ; w8 = self->_valueType
  10012f9e8  cmp     w8, #2
  10012f9ec  b.ne    loc_10012fb34                            ; if (self->_valueType != 2)
loc_10012f9f0:
  10012f9f0  adrp    x8, #0x100420000
  10012f9f4  ldrsw   x28, [x8, #0x910]                        ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012f9f8  ldr     x26, [x20, x28]                          ; x26 = self->_mutationCount
  10012f9fc  strb    wzr, [sp, #0x3f]
  10012fa00  nop
  10012fa04  ldrsw   x22, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012fa08  ldr     x8, [x20, x22]                           ; x8 = self->_count
  10012fa0c  cbz     x8, loc_10012fb14                        ; if (self->_count == 0)
  10012fa10  mov     x21, #0
  10012fa14  adrp    x8, #0x100420000
  10012fa18  ldrsw   x23, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012fa1c  adrp    x8, #0x1003b0000
  10012fa20  ldr     x8, [x8, #0x30]                          ; _NSGenericException
  10012fa24  adrp    x9, #0x100417000
  10012fa28  add     x9, x9, #0x2e0                           ; &@selector(class)
  10012fa2c  ldr     x8, [x8]                                 ; x8 = _NSGenericException[+0x0]
  10012fa30  str     x8, [sp, #0x28]
  10012fa34  ldr     x8, [x9]
  10012fa38  str     x8, [sp, #0x20]
  10012fa3c  adrp    x8, #0x100417000
  10012fa40  nop
  10012fa44  ldr     x8, [x8, #0x260]
  10012fa48  str     x8, [sp, #0x18]
  10012fa4c  add     x24, x20, x24
  10012fa50  adrp    x27, #0x1003b8000
  10012fa54  add     x27, x27, #0x618                         ; &d_1003b8618
  10012fa58  add     x25, sp, #0x3f
loc_10012fa5c:
  10012fa5c  ldr     x8, [x20, x23]                           ; x8 = self->_data
  10012fa60  ldr     w9, [x24]                                ; w9 = self->_valueType
  10012fa64  lsl     x9, x9, #5
  10012fa68  ldr     x9, [x27, x9]
  10012fa6c  mul     x9, x9, x21
  10012fa70  ldr     w1, [x8, x9]
  10012fa74  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10012fa78  mov     x0, x19
  10012fa7c  mov     x2, x21
  10012fa80  mov     x3, x25
  10012fa84  blr     x8                                       ; call arg1[+0x10]
  10012fa88  ldr     x8, [x20, x28]                           ; x8 = self->_mutationCount
  10012fa8c  cmp     x8, x26
  10012fa90  b.eq    loc_10012fafc                            ; if (self->_mutationCount == self->_mutationCount)
  10012fa94  mov     x19, x25
  10012fa98  mov     x25, x24
  10012fa9c  mov     x24, x23
  10012faa0  mov     x23, x22
  10012faa4  mov     x22, x28
  10012faa8  mov     x28, x26
  10012faac  mov     x26, x27
  10012fab0  adrp    x8, #0x10041d000
  10012fab4  ldr     x27, [x8, #0xfc8]                        ; class NSException
  10012fab8  mov     x0, x20
  10012fabc  ldr     x1, [sp, #0x20]
  10012fac0  bl      _objc_msgSend                            ; [self class]
  10012fac4  stp     x0, x20, [sp]
  10012fac8  mov     x0, x27
  10012facc  mov     x27, x26
  10012fad0  mov     x26, x28
  10012fad4  mov     x28, x22
  10012fad8  mov     x22, x23
  10012fadc  mov     x23, x24
  10012fae0  mov     x24, x25
  10012fae4  mov     x25, x19
  10012fae8  ldp     x2, x19, [sp, #0x28]
  10012faec  ldr     x1, [sp, #0x18]
  10012faf0  adrp    x3, #0x1003c6000
  10012faf4  add     x3, x3, #0xcd0                           ; @"*** Collection <%@: %p> was mutated while being enumerated."
  10012faf8  bl      _objc_msgSend                            ; [NSException raise:_NSGenericException[+0x0] format:@"*** Collection <%@: %p> was mutated while being enumerated.", [self class], self]
loc_10012fafc:
  10012fafc  add     x21, x21, #1
  10012fb00  ldr     x8, [x20, x22]                           ; x8 = self->_count
  10012fb04  ldrb    w9, [sp, #0x3f]
  10012fb08  cmp     x21, x8
  10012fb0c  ccmp    w9, #0, #0, lo
  10012fb10  b.eq    loc_10012fa5c                            ; if (flags ==)
loc_10012fb14:
  10012fb14  sub     sp, x29, #0x50
  10012fb18  ldp     x28, x27, [sp], #0x10
  10012fb1c  ldp     x26, x25, [sp], #0x10
  10012fb20  ldp     x24, x23, [sp], #0x10
  10012fb24  ldp     x22, x21, [sp], #0x10
  10012fb28  ldp     x20, x19, [sp], #0x10
  10012fb2c  ldp     x29, x30, [sp], #0x10
  10012fb30  ret
loc_10012fb34:
  10012fb34  adrp    x8, #0x10041d000
  10012fb38  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012fb3c  adrp    x8, #0x100417000
  10012fb40  nop
  10012fb44  ldr     x1, [x8, #0x260]
  10012fb48  adrp    x8, #0x100393000
  10012fb4c  add     x8, x8, #0x7e7                           ; "TAGPBArrayValueTypeInt32"
  10012fb50  adrp    x2, #0x1003c6000
  10012fb54  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012fb58  str     x8, [sp]
  10012fb5c  adrp    x3, #0x1003c6000
  10012fb60  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012fb64  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt32"]
  10012fb68  b       loc_10012f9f0

; ======================================================================
; -[TAGPBMutableArray ensureAdditionalCapacity:]
; address 0x10012fb6c  size 256  kind objc
; ======================================================================
  10012fb6c  stp     x29, x30, [sp, #-0x10]!
  10012fb70  mov     x29, sp
  10012fb74  stp     x20, x19, [sp, #-0x10]!
  10012fb78  stp     x22, x21, [sp, #-0x10]!
  10012fb7c  sub     sp, sp, #0x10
  10012fb80  mov     x8, x2
  10012fb84  mov     x19, x0
  10012fb88  adrp    x9, #0x100420000
  10012fb8c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012fb90  ldr     x9, [x19, x9]                            ; x9 = self->_count
  10012fb94  add     x20, x9, x8
  10012fb98  adrp    x9, #0x100420000
  10012fb9c  ldrsw   x9, [x9, #0x914]                         ; ivar offset TAGPBMutableArray._delegate (+0x30)
  10012fba0  ldr     x0, [x19, x9]                            ; x0 = self->_delegate
  10012fba4  adrp    x9, #0x10041c000
  10012fba8  nop
  10012fbac  ldr     x1, [x9, #0x530]
  10012fbb0  mov     x2, x19
  10012fbb4  mov     x3, x8
  10012fbb8  bl      _objc_msgSend                            ; [self->_delegate pbMutableArray:self willAddElements:arg1]
  10012fbbc  adrp    x8, #0x100420000
  10012fbc0  ldrsw   x8, [x8, #0x908]                         ; ivar offset TAGPBArray._capacity (+0x10)
  10012fbc4  ldr     x9, [x19, x8]                            ; x9 = self->_capacity
  10012fbc8  cmp     x20, x9
  10012fbcc  b.ls    loc_10012fc28                            ; if ((self->_count + arg1) <=u self->_capacity)
  10012fbd0  add     x10, x20, #0x20
  10012fbd4  and     x10, x10, #0xffffffffffffffe0
  10012fbd8  cmp     x9, #0
  10012fbdc  csel    x9, x20, x10, eq
  10012fbe0  str     x9, [x19, x8]                            ; self->_capacity = (self->_capacity == 0 ? (self->_count + arg1) : (((self->_count + arg1) + 32) & -32))
  10012fbe4  adrp    x8, #0x100420000
  10012fbe8  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012fbec  add     x8, x19, x8
  10012fbf0  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012fbf4  adrp    x10, #0x1003b8000
  10012fbf8  add     x10, x10, #0x618                         ; &d_1003b8618
  10012fbfc  lsl     x8, x8, #5
  10012fc00  ldr     x8, [x10, x8]
  10012fc04  mul     x20, x8, x9                              ; t1 = (x8 * (self->_capacity == 0 ? (self->_count + arg1) : (((self->_count + arg1) + 32) & -32)))
  10012fc08  adrp    x21, #0x100420000
  10012fc0c  ldrsw   x8, [x21, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012fc10  ldr     x0, [x19, x8]                            ; x0 = self->_data
  10012fc14  mov     x1, x20
  10012fc18  bl      _reallocf                                ; reallocf(self->_data, t1)
  10012fc1c  ldrsw   x8, [x21, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012fc20  str     x0, [x19, x8]                            ; self->_data = reallocf(self->_data, t1)
  10012fc24  cbz     x0, loc_10012fc3c                        ; if (reallocf(self->_data, t1) == 0)
loc_10012fc28:
  10012fc28  sub     sp, x29, #0x20
  10012fc2c  ldp     x22, x21, [sp], #0x10
  10012fc30  ldp     x20, x19, [sp], #0x10
  10012fc34  ldp     x29, x30, [sp], #0x10
  10012fc38  ret
loc_10012fc3c:
  10012fc3c  adrp    x8, #0x10041d000
  10012fc40  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012fc44  adrp    x8, #0x100417000
  10012fc48  nop
  10012fc4c  ldr     x1, [x8, #0x260]
  10012fc50  str     x20, [sp]
  10012fc54  adrp    x2, #0x1003c6000
  10012fc58  add     x2, x2, #0xb50                           ; @"TAGPBArrayAllocationFailureException"
  10012fc5c  adrp    x3, #0x1003c6000
  10012fc60  add     x3, x3, #0xcf0                           ; @"failed to allocate %lu bytes"
  10012fc64  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayAllocationFailureException" format:@"failed to allocate %lu bytes", t1]
  10012fc68  b       loc_10012fc28

; ======================================================================
; -[TAGPBMutableArray addObject:]
; address 0x10012fc6c  size 56  kind objc
; ======================================================================
  10012fc6c  stp     x29, x30, [sp, #-0x10]!
  10012fc70  mov     x29, sp
  10012fc74  stp     x20, x19, [sp, #-0x10]!
  10012fc78  mov     x19, x0
  10012fc7c  adrp    x8, #0x10041b000
  10012fc80  nop
  10012fc84  ldr     x1, [x8, #0xdb8]
  10012fc88  mov     x0, x2
  10012fc8c  bl      _objc_msgSend                            ; [arg1 retain]
  10012fc90  mov     x1, x0
  10012fc94  mov     x0, x19
  10012fc98  ldp     x20, x19, [sp], #0x10
  10012fc9c  ldp     x29, x30, [sp], #0x10
  10012fca0  b       sub_10012f4c4                            ; sub_10012f4c4(self, [arg1 retain])

; ======================================================================
; -[TAGPBMutableArray addBool:]
; address 0x10012fca4  size 232  kind objc
; ======================================================================
  10012fca4  stp     x29, x30, [sp, #-0x10]!
  10012fca8  mov     x29, sp
  10012fcac  stp     x20, x19, [sp, #-0x10]!
  10012fcb0  stp     x22, x21, [sp, #-0x10]!
  10012fcb4  sub     sp, sp, #0x10
  10012fcb8  mov     x20, x2
  10012fcbc  mov     x19, x0
  10012fcc0  adrp    x8, #0x100420000
  10012fcc4  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012fcc8  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  10012fccc  cmp     w8, #1
  10012fcd0  b.ne    loc_10012fd54                            ; if (self->_valueType != 1)
loc_10012fcd4:
  10012fcd4  adrp    x8, #0x10041c000
  10012fcd8  nop
  10012fcdc  ldr     x1, [x8, #0x518]
  10012fce0  mov     x2, #1
  10012fce4  mov     x0, x19
  10012fce8  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  10012fcec  adrp    x8, #0x100420000
  10012fcf0  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012fcf4  ldr     x8, [x19, x8]                            ; x8 = self->_data
  10012fcf8  adrp    x9, #0x100420000
  10012fcfc  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012fd00  ldr     x10, [x19, x9]                           ; x10 = self->_count
  10012fd04  add     x11, x19, x21
  10012fd08  ldr     w11, [x11]                               ; w11 = self->_valueType
  10012fd0c  lsl     x11, x11, #5
  10012fd10  adrp    x12, #0x1003b8000
  10012fd14  add     x12, x12, #0x618                         ; &d_1003b8618
  10012fd18  ldr     x11, [x12, x11]
  10012fd1c  mul     x11, x11, x10
  10012fd20  strb    w20, [x8, x11]
  10012fd24  add     x8, x10, #1
  10012fd28  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  10012fd2c  adrp    x8, #0x100420000
  10012fd30  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012fd34  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  10012fd38  add     x9, x9, #1
  10012fd3c  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  10012fd40  sub     sp, x29, #0x20
  10012fd44  ldp     x22, x21, [sp], #0x10
  10012fd48  ldp     x20, x19, [sp], #0x10
  10012fd4c  ldp     x29, x30, [sp], #0x10
  10012fd50  ret
loc_10012fd54:
  10012fd54  adrp    x8, #0x10041d000
  10012fd58  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012fd5c  adrp    x8, #0x100417000
  10012fd60  nop
  10012fd64  ldr     x1, [x8, #0x260]
  10012fd68  adrp    x8, #0x100393000
  10012fd6c  add     x8, x8, #0x83e                           ; "TAGPBArrayValueTypeBool"
  10012fd70  adrp    x2, #0x1003c6000
  10012fd74  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012fd78  str     x8, [sp]
  10012fd7c  adrp    x3, #0x1003c6000
  10012fd80  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012fd84  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeBool"]
  10012fd88  b       loc_10012fcd4

; ======================================================================
; -[TAGPBMutableArray addInt32:]
; address 0x10012fd8c  size 232  kind objc
; ======================================================================
  10012fd8c  stp     x29, x30, [sp, #-0x10]!
  10012fd90  mov     x29, sp
  10012fd94  stp     x20, x19, [sp, #-0x10]!
  10012fd98  stp     x22, x21, [sp, #-0x10]!
  10012fd9c  sub     sp, sp, #0x10
  10012fda0  mov     x20, x2
  10012fda4  mov     x19, x0
  10012fda8  adrp    x8, #0x100420000
  10012fdac  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012fdb0  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  10012fdb4  cmp     w8, #2
  10012fdb8  b.ne    loc_10012fe3c                            ; if (self->_valueType != 2)
loc_10012fdbc:
  10012fdbc  adrp    x8, #0x10041c000
  10012fdc0  nop
  10012fdc4  ldr     x1, [x8, #0x518]
  10012fdc8  mov     x2, #1
  10012fdcc  mov     x0, x19
  10012fdd0  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  10012fdd4  adrp    x8, #0x100420000
  10012fdd8  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012fddc  ldr     x8, [x19, x8]                            ; x8 = self->_data
  10012fde0  adrp    x9, #0x100420000
  10012fde4  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012fde8  ldr     x10, [x19, x9]                           ; x10 = self->_count
  10012fdec  add     x11, x19, x21
  10012fdf0  ldr     w11, [x11]                               ; w11 = self->_valueType
  10012fdf4  lsl     x11, x11, #5
  10012fdf8  adrp    x12, #0x1003b8000
  10012fdfc  add     x12, x12, #0x618                         ; &d_1003b8618
  10012fe00  ldr     x11, [x12, x11]
  10012fe04  mul     x11, x11, x10
  10012fe08  str     w20, [x8, x11]
  10012fe0c  add     x8, x10, #1
  10012fe10  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  10012fe14  adrp    x8, #0x100420000
  10012fe18  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012fe1c  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  10012fe20  add     x9, x9, #1
  10012fe24  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  10012fe28  sub     sp, x29, #0x20
  10012fe2c  ldp     x22, x21, [sp], #0x10
  10012fe30  ldp     x20, x19, [sp], #0x10
  10012fe34  ldp     x29, x30, [sp], #0x10
  10012fe38  ret
loc_10012fe3c:
  10012fe3c  adrp    x8, #0x10041d000
  10012fe40  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012fe44  adrp    x8, #0x100417000
  10012fe48  nop
  10012fe4c  ldr     x1, [x8, #0x260]
  10012fe50  adrp    x8, #0x100393000
  10012fe54  add     x8, x8, #0x7e7                           ; "TAGPBArrayValueTypeInt32"
  10012fe58  adrp    x2, #0x1003c6000
  10012fe5c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012fe60  str     x8, [sp]
  10012fe64  adrp    x3, #0x1003c6000
  10012fe68  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012fe6c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt32"]
  10012fe70  b       loc_10012fdbc

; ======================================================================
; -[TAGPBMutableArray addUInt32:]
; address 0x10012fe74  size 232  kind objc
; ======================================================================
  10012fe74  stp     x29, x30, [sp, #-0x10]!
  10012fe78  mov     x29, sp
  10012fe7c  stp     x20, x19, [sp, #-0x10]!
  10012fe80  stp     x22, x21, [sp, #-0x10]!
  10012fe84  sub     sp, sp, #0x10
  10012fe88  mov     x20, x2
  10012fe8c  mov     x19, x0
  10012fe90  adrp    x8, #0x100420000
  10012fe94  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012fe98  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  10012fe9c  cmp     w8, #3
  10012fea0  b.ne    loc_10012ff24                            ; if (self->_valueType != 3)
loc_10012fea4:
  10012fea4  adrp    x8, #0x10041c000
  10012fea8  nop
  10012feac  ldr     x1, [x8, #0x518]
  10012feb0  mov     x2, #1
  10012feb4  mov     x0, x19
  10012feb8  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  10012febc  adrp    x8, #0x100420000
  10012fec0  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012fec4  ldr     x8, [x19, x8]                            ; x8 = self->_data
  10012fec8  adrp    x9, #0x100420000
  10012fecc  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012fed0  ldr     x10, [x19, x9]                           ; x10 = self->_count
  10012fed4  add     x11, x19, x21
  10012fed8  ldr     w11, [x11]                               ; w11 = self->_valueType
  10012fedc  lsl     x11, x11, #5
  10012fee0  adrp    x12, #0x1003b8000
  10012fee4  add     x12, x12, #0x618                         ; &d_1003b8618
  10012fee8  ldr     x11, [x12, x11]
  10012feec  mul     x11, x11, x10
  10012fef0  str     w20, [x8, x11]
  10012fef4  add     x8, x10, #1
  10012fef8  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  10012fefc  adrp    x8, #0x100420000
  10012ff00  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012ff04  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  10012ff08  add     x9, x9, #1
  10012ff0c  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  10012ff10  sub     sp, x29, #0x20
  10012ff14  ldp     x22, x21, [sp], #0x10
  10012ff18  ldp     x20, x19, [sp], #0x10
  10012ff1c  ldp     x29, x30, [sp], #0x10
  10012ff20  ret
loc_10012ff24:
  10012ff24  adrp    x8, #0x10041d000
  10012ff28  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012ff2c  adrp    x8, #0x100417000
  10012ff30  nop
  10012ff34  ldr     x1, [x8, #0x260]
  10012ff38  adrp    x8, #0x100393000
  10012ff3c  add     x8, x8, #0x856                           ; "TAGPBArrayValueTypeUInt32"
  10012ff40  adrp    x2, #0x1003c6000
  10012ff44  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012ff48  str     x8, [sp]
  10012ff4c  adrp    x3, #0x1003c6000
  10012ff50  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012ff54  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeUInt32"]
  10012ff58  b       loc_10012fea4

; ======================================================================
; -[TAGPBMutableArray addInt64:]
; address 0x10012ff5c  size 232  kind objc
; ======================================================================
  10012ff5c  stp     x29, x30, [sp, #-0x10]!
  10012ff60  mov     x29, sp
  10012ff64  stp     x20, x19, [sp, #-0x10]!
  10012ff68  stp     x22, x21, [sp, #-0x10]!
  10012ff6c  sub     sp, sp, #0x10
  10012ff70  mov     x20, x2
  10012ff74  mov     x19, x0
  10012ff78  adrp    x8, #0x100420000
  10012ff7c  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012ff80  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  10012ff84  cmp     w8, #4
  10012ff88  b.ne    loc_10013000c                            ; if (self->_valueType != 4)
loc_10012ff8c:
  10012ff8c  adrp    x8, #0x10041c000
  10012ff90  nop
  10012ff94  ldr     x1, [x8, #0x518]
  10012ff98  mov     x2, #1
  10012ff9c  mov     x0, x19
  10012ffa0  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  10012ffa4  adrp    x8, #0x100420000
  10012ffa8  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012ffac  ldr     x8, [x19, x8]                            ; x8 = self->_data
  10012ffb0  adrp    x9, #0x100420000
  10012ffb4  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012ffb8  ldr     x10, [x19, x9]                           ; x10 = self->_count
  10012ffbc  add     x11, x19, x21
  10012ffc0  ldr     w11, [x11]                               ; w11 = self->_valueType
  10012ffc4  lsl     x11, x11, #5
  10012ffc8  adrp    x12, #0x1003b8000
  10012ffcc  add     x12, x12, #0x618                         ; &d_1003b8618
  10012ffd0  ldr     x11, [x12, x11]
  10012ffd4  mul     x11, x11, x10
  10012ffd8  str     x20, [x8, x11]
  10012ffdc  add     x8, x10, #1
  10012ffe0  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  10012ffe4  adrp    x8, #0x100420000
  10012ffe8  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012ffec  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  10012fff0  add     x9, x9, #1
  10012fff4  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  10012fff8  sub     sp, x29, #0x20
  10012fffc  ldp     x22, x21, [sp], #0x10
  100130000  ldp     x20, x19, [sp], #0x10
  100130004  ldp     x29, x30, [sp], #0x10
  100130008  ret
loc_10013000c:
  10013000c  adrp    x8, #0x10041d000
  100130010  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130014  adrp    x8, #0x100417000
  100130018  nop
  10013001c  ldr     x1, [x8, #0x260]
  100130020  adrp    x8, #0x100393000
  100130024  add     x8, x8, #0x870                           ; "TAGPBArrayValueTypeInt64"
  100130028  adrp    x2, #0x1003c6000
  10013002c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130030  str     x8, [sp]
  100130034  adrp    x3, #0x1003c6000
  100130038  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10013003c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt64"]
  100130040  b       loc_10012ff8c

; ======================================================================
; -[TAGPBMutableArray addUInt64:]
; address 0x100130044  size 232  kind objc
; ======================================================================
  100130044  stp     x29, x30, [sp, #-0x10]!
  100130048  mov     x29, sp
  10013004c  stp     x20, x19, [sp, #-0x10]!
  100130050  stp     x22, x21, [sp, #-0x10]!
  100130054  sub     sp, sp, #0x10
  100130058  mov     x20, x2
  10013005c  mov     x19, x0
  100130060  adrp    x8, #0x100420000
  100130064  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130068  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  10013006c  cmp     w8, #5
  100130070  b.ne    loc_1001300f4                            ; if (self->_valueType != 5)
loc_100130074:
  100130074  adrp    x8, #0x10041c000
  100130078  nop
  10013007c  ldr     x1, [x8, #0x518]
  100130080  mov     x2, #1
  100130084  mov     x0, x19
  100130088  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  10013008c  adrp    x8, #0x100420000
  100130090  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  100130094  ldr     x8, [x19, x8]                            ; x8 = self->_data
  100130098  adrp    x9, #0x100420000
  10013009c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001300a0  ldr     x10, [x19, x9]                           ; x10 = self->_count
  1001300a4  add     x11, x19, x21
  1001300a8  ldr     w11, [x11]                               ; w11 = self->_valueType
  1001300ac  lsl     x11, x11, #5
  1001300b0  adrp    x12, #0x1003b8000
  1001300b4  add     x12, x12, #0x618                         ; &d_1003b8618
  1001300b8  ldr     x11, [x12, x11]
  1001300bc  mul     x11, x11, x10
  1001300c0  str     x20, [x8, x11]
  1001300c4  add     x8, x10, #1
  1001300c8  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  1001300cc  adrp    x8, #0x100420000
  1001300d0  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  1001300d4  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  1001300d8  add     x9, x9, #1
  1001300dc  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  1001300e0  sub     sp, x29, #0x20
  1001300e4  ldp     x22, x21, [sp], #0x10
  1001300e8  ldp     x20, x19, [sp], #0x10
  1001300ec  ldp     x29, x30, [sp], #0x10
  1001300f0  ret
loc_1001300f4:
  1001300f4  adrp    x8, #0x10041d000
  1001300f8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001300fc  adrp    x8, #0x100417000
  100130100  nop
  100130104  ldr     x1, [x8, #0x260]
  100130108  adrp    x8, #0x100393000
  10013010c  add     x8, x8, #0x889                           ; "TAGPBArrayValueTypeUInt64"
  100130110  adrp    x2, #0x1003c6000
  100130114  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130118  str     x8, [sp]
  10013011c  adrp    x3, #0x1003c6000
  100130120  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130124  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeUInt64"]
  100130128  b       loc_100130074

; ======================================================================
; -[TAGPBMutableArray addFloat:]
; address 0x10013012c  size 232  kind objc
; ======================================================================
  10013012c  stp     x29, x30, [sp, #-0x10]!
  100130130  mov     x29, sp
  100130134  stp     x20, x19, [sp, #-0x10]!
  100130138  stp     d9, d8, [sp, #-0x10]!
  10013013c  sub     sp, sp, #0x10
  100130140  mov     v8.16b, v0.16b
  100130144  mov     x19, x0
  100130148  adrp    x8, #0x100420000
  10013014c  ldrsw   x20, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130150  ldr     w8, [x19, x20]                           ; w8 = self->_valueType
  100130154  cmp     w8, #6
  100130158  b.ne    loc_1001301dc                            ; if (self->_valueType != 6)
loc_10013015c:
  10013015c  adrp    x8, #0x10041c000
  100130160  nop
  100130164  ldr     x1, [x8, #0x518]
  100130168  mov     x2, #1
  10013016c  mov     x0, x19
  100130170  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  100130174  adrp    x8, #0x100420000
  100130178  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10013017c  ldr     x8, [x19, x8]                            ; x8 = self->_data
  100130180  adrp    x9, #0x100420000
  100130184  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100130188  ldr     x10, [x19, x9]                           ; x10 = self->_count
  10013018c  add     x11, x19, x20
  100130190  ldr     w11, [x11]                               ; w11 = self->_valueType
  100130194  lsl     x11, x11, #5
  100130198  adrp    x12, #0x1003b8000
  10013019c  add     x12, x12, #0x618                         ; &d_1003b8618
  1001301a0  ldr     x11, [x12, x11]
  1001301a4  mul     x11, x11, x10
  1001301a8  str     s8, [x8, x11]
  1001301ac  add     x8, x10, #1
  1001301b0  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  1001301b4  adrp    x8, #0x100420000
  1001301b8  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  1001301bc  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  1001301c0  add     x9, x9, #1
  1001301c4  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  1001301c8  sub     sp, x29, #0x20
  1001301cc  ldp     d9, d8, [sp], #0x10
  1001301d0  ldp     x20, x19, [sp], #0x10
  1001301d4  ldp     x29, x30, [sp], #0x10
  1001301d8  ret
loc_1001301dc:
  1001301dc  adrp    x8, #0x10041d000
  1001301e0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001301e4  adrp    x8, #0x100417000
  1001301e8  nop
  1001301ec  ldr     x1, [x8, #0x260]
  1001301f0  adrp    x8, #0x100393000
  1001301f4  add     x8, x8, #0x8a3                           ; "TAGPBArrayValueTypeFloat"
  1001301f8  adrp    x2, #0x1003c6000
  1001301fc  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130200  str     x8, [sp]
  100130204  adrp    x3, #0x1003c6000
  100130208  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10013020c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeFloat"]
  100130210  b       loc_10013015c

; ======================================================================
; -[TAGPBMutableArray addDouble:]
; address 0x100130214  size 232  kind objc
; ======================================================================
  100130214  stp     x29, x30, [sp, #-0x10]!
  100130218  mov     x29, sp
  10013021c  stp     x20, x19, [sp, #-0x10]!
  100130220  stp     d9, d8, [sp, #-0x10]!
  100130224  sub     sp, sp, #0x10
  100130228  mov     v8.16b, v0.16b
  10013022c  mov     x19, x0
  100130230  adrp    x8, #0x100420000
  100130234  ldrsw   x20, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130238  ldr     w8, [x19, x20]                           ; w8 = self->_valueType
  10013023c  cmp     w8, #7
  100130240  b.ne    loc_1001302c4                            ; if (self->_valueType != 7)
loc_100130244:
  100130244  adrp    x8, #0x10041c000
  100130248  nop
  10013024c  ldr     x1, [x8, #0x518]
  100130250  mov     x2, #1
  100130254  mov     x0, x19
  100130258  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:1]
  10013025c  adrp    x8, #0x100420000
  100130260  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  100130264  ldr     x8, [x19, x8]                            ; x8 = self->_data
  100130268  adrp    x9, #0x100420000
  10013026c  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100130270  ldr     x10, [x19, x9]                           ; x10 = self->_count
  100130274  add     x11, x19, x20
  100130278  ldr     w11, [x11]                               ; w11 = self->_valueType
  10013027c  lsl     x11, x11, #5
  100130280  adrp    x12, #0x1003b8000
  100130284  add     x12, x12, #0x618                         ; &d_1003b8618
  100130288  ldr     x11, [x12, x11]
  10013028c  mul     x11, x11, x10
  100130290  str     d8, [x8, x11]
  100130294  add     x8, x10, #1
  100130298  str     x8, [x19, x9]                            ; self->_count = (self->_count + 1)
  10013029c  adrp    x8, #0x100420000
  1001302a0  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  1001302a4  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  1001302a8  add     x9, x9, #1
  1001302ac  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  1001302b0  sub     sp, x29, #0x20
  1001302b4  ldp     d9, d8, [sp], #0x10
  1001302b8  ldp     x20, x19, [sp], #0x10
  1001302bc  ldp     x29, x30, [sp], #0x10
  1001302c0  ret
loc_1001302c4:
  1001302c4  adrp    x8, #0x10041d000
  1001302c8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001302cc  adrp    x8, #0x100417000
  1001302d0  nop
  1001302d4  ldr     x1, [x8, #0x260]
  1001302d8  adrp    x8, #0x100393000
  1001302dc  add     x8, x8, #0x8bc                           ; "TAGPBArrayValueTypeDouble"
  1001302e0  adrp    x2, #0x1003c6000
  1001302e4  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  1001302e8  str     x8, [sp]
  1001302ec  adrp    x3, #0x1003c6000
  1001302f0  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  1001302f4  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeDouble"]
  1001302f8  b       loc_100130244

; ======================================================================
; -[TAGPBMutableArray replaceObjectAtIndex:withObject:]
; address 0x1001302fc  size 316  kind objc
; ======================================================================
  1001302fc  stp     x29, x30, [sp, #-0x10]!
  100130300  mov     x29, sp
  100130304  stp     x20, x19, [sp, #-0x10]!
  100130308  stp     x22, x21, [sp, #-0x10]!
  10013030c  stp     x24, x23, [sp, #-0x10]!
  100130310  sub     sp, sp, #0x10
  100130314  mov     x20, x3
  100130318  mov     x21, x2
  10013031c  mov     x19, x0
  100130320  adrp    x8, #0x100420000
  100130324  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130328  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  10013032c  cbnz    w8, loc_1001303cc                        ; if (self->_valueType != 0)
loc_100130330:
  100130330  adrp    x8, #0x100420000
  100130334  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100130338  ldr     x8, [x19, x8]                            ; x8 = self->_count
  10013033c  cmp     x8, x21
  100130340  b.ls    loc_100130404                            ; if (self->_count <=u arg1)
loc_100130344:
  100130344  adrp    x8, #0x100420000
  100130348  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10013034c  ldr     x23, [x19, x8]                           ; x23 = self->_data
  100130350  add     x8, x19, x22
  100130354  ldr     w8, [x8]                                 ; w8 = self->_valueType
  100130358  lsl     x8, x8, #5
  10013035c  adrp    x9, #0x1003b8000
  100130360  add     x9, x9, #0x618                           ; &d_1003b8618
  100130364  ldr     x8, [x9, x8]
  100130368  mul     x21, x8, x21
  10013036c  ldr     x0, [x23, x21]
  100130370  cmp     x0, x20
  100130374  b.eq    loc_1001303a0                            ; if (x0 == arg2)
  100130378  adrp    x8, #0x10041b000
  10013037c  nop
  100130380  ldr     x1, [x8, #0xd70]
  100130384  bl      _objc_msgSend                            ; [x0 release]
  100130388  adrp    x8, #0x10041b000
  10013038c  nop
  100130390  ldr     x1, [x8, #0xdb8]
  100130394  mov     x0, x20
  100130398  bl      _objc_msgSend                            ; [arg2 retain]
  10013039c  str     x0, [x23, x21]
loc_1001303a0:
  1001303a0  adrp    x8, #0x100420000
  1001303a4  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  1001303a8  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  1001303ac  add     x9, x9, #1
  1001303b0  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  1001303b4  sub     sp, x29, #0x30
  1001303b8  ldp     x24, x23, [sp], #0x10
  1001303bc  ldp     x22, x21, [sp], #0x10
  1001303c0  ldp     x20, x19, [sp], #0x10
  1001303c4  ldp     x29, x30, [sp], #0x10
  1001303c8  ret
loc_1001303cc:
  1001303cc  adrp    x8, #0x10041d000
  1001303d0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001303d4  adrp    x8, #0x100417000
  1001303d8  nop
  1001303dc  ldr     x1, [x8, #0x260]
  1001303e0  adrp    x8, #0x100393000
  1001303e4  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  1001303e8  adrp    x2, #0x1003c6000
  1001303ec  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  1001303f0  str     x8, [sp]
  1001303f4  adrp    x3, #0x1003c6000
  1001303f8  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  1001303fc  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  100130400  b       loc_100130330
loc_100130404:
  100130404  adrp    x9, #0x10041d000
  100130408  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10013040c  adrp    x9, #0x1003b0000
  100130410  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130414  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  100130418  adrp    x9, #0x100417000
  10013041c  nop
  100130420  ldr     x1, [x9, #0x260]
  100130424  stp     x21, x8, [sp]
  100130428  adrp    x3, #0x1003c6000
  10013042c  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  100130430  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130434  b       loc_100130344

; ======================================================================
; -[TAGPBMutableArray setObject:atIndexedSubscript:]
; address 0x100130438  size 68  kind objc
; ======================================================================
  100130438  mov     x8, x2
  10013043c  adrp    x9, #0x100420000
  100130440  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100130444  ldr     x9, [x0, x9]                             ; x9 = self->_count
  100130448  cmp     x9, x3
  10013044c  b.ne    loc_100130464                            ; if (self->_count != arg2)
  100130450  adrp    x9, #0x100416000
  100130454  nop
  100130458  ldr     x1, [x9, #0xd90]
  10013045c  mov     x2, x8
  100130460  b       _objc_msgSend                            ; [self addObject:arg1]
loc_100130464:
  100130464  adrp    x9, #0x100418000
  100130468  nop
  10013046c  ldr     x1, [x9, #0x4b8]
  100130470  mov     x2, x3
  100130474  mov     x3, x8
  100130478  b       _objc_msgSend                            ; [self replaceObjectAtIndex:arg2 withObject:arg1]

; ======================================================================
; -[TAGPBMutableArray replaceBoolAtIndex:withBool:]
; address 0x10013047c  size 264  kind objc
; ======================================================================
  10013047c  stp     x29, x30, [sp, #-0x10]!
  100130480  mov     x29, sp
  100130484  stp     x20, x19, [sp, #-0x10]!
  100130488  stp     x22, x21, [sp, #-0x10]!
  10013048c  sub     sp, sp, #0x10
  100130490  mov     x20, x3
  100130494  mov     x21, x2
  100130498  mov     x19, x0
  10013049c  adrp    x8, #0x100420000
  1001304a0  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  1001304a4  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  1001304a8  cmp     w8, #1
  1001304ac  b.ne    loc_100130518                            ; if (self->_valueType != 1)
loc_1001304b0:
  1001304b0  adrp    x8, #0x100420000
  1001304b4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001304b8  ldr     x8, [x19, x8]                            ; x8 = self->_count
  1001304bc  cmp     x8, x21
  1001304c0  b.ls    loc_100130550                            ; if (self->_count <=u arg1)
loc_1001304c4:
  1001304c4  adrp    x8, #0x100420000
  1001304c8  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  1001304cc  ldr     x8, [x19, x8]                            ; x8 = self->_data
  1001304d0  add     x9, x19, x22
  1001304d4  ldr     w9, [x9]                                 ; w9 = self->_valueType
  1001304d8  lsl     x9, x9, #5
  1001304dc  adrp    x10, #0x1003b8000
  1001304e0  add     x10, x10, #0x618                         ; &d_1003b8618
  1001304e4  ldr     x9, [x10, x9]
  1001304e8  mul     x9, x9, x21
  1001304ec  strb    w20, [x8, x9]
  1001304f0  adrp    x8, #0x100420000
  1001304f4  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  1001304f8  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  1001304fc  add     x9, x9, #1
  100130500  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130504  sub     sp, x29, #0x20
  100130508  ldp     x22, x21, [sp], #0x10
  10013050c  ldp     x20, x19, [sp], #0x10
  100130510  ldp     x29, x30, [sp], #0x10
  100130514  ret
loc_100130518:
  100130518  adrp    x8, #0x10041d000
  10013051c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130520  adrp    x8, #0x100417000
  100130524  nop
  100130528  ldr     x1, [x8, #0x260]
  10013052c  adrp    x8, #0x100393000
  100130530  add     x8, x8, #0x83e                           ; "TAGPBArrayValueTypeBool"
  100130534  adrp    x2, #0x1003c6000
  100130538  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10013053c  str     x8, [sp]
  100130540  adrp    x3, #0x1003c6000
  100130544  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130548  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeBool"]
  10013054c  b       loc_1001304b0
loc_100130550:
  100130550  adrp    x9, #0x10041d000
  100130554  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130558  adrp    x9, #0x1003b0000
  10013055c  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130560  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  100130564  adrp    x9, #0x100417000
  100130568  nop
  10013056c  ldr     x1, [x9, #0x260]
  100130570  stp     x21, x8, [sp]
  100130574  adrp    x3, #0x1003c6000
  100130578  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10013057c  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130580  b       loc_1001304c4

; ======================================================================
; -[TAGPBMutableArray replaceInt32AtIndex:withInt32:]
; address 0x100130584  size 264  kind objc
; ======================================================================
  100130584  stp     x29, x30, [sp, #-0x10]!
  100130588  mov     x29, sp
  10013058c  stp     x20, x19, [sp, #-0x10]!
  100130590  stp     x22, x21, [sp, #-0x10]!
  100130594  sub     sp, sp, #0x10
  100130598  mov     x20, x3
  10013059c  mov     x21, x2
  1001305a0  mov     x19, x0
  1001305a4  adrp    x8, #0x100420000
  1001305a8  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  1001305ac  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  1001305b0  cmp     w8, #2
  1001305b4  b.ne    loc_100130620                            ; if (self->_valueType != 2)
loc_1001305b8:
  1001305b8  adrp    x8, #0x100420000
  1001305bc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001305c0  ldr     x8, [x19, x8]                            ; x8 = self->_count
  1001305c4  cmp     x8, x21
  1001305c8  b.ls    loc_100130658                            ; if (self->_count <=u arg1)
loc_1001305cc:
  1001305cc  adrp    x8, #0x100420000
  1001305d0  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  1001305d4  ldr     x8, [x19, x8]                            ; x8 = self->_data
  1001305d8  add     x9, x19, x22
  1001305dc  ldr     w9, [x9]                                 ; w9 = self->_valueType
  1001305e0  lsl     x9, x9, #5
  1001305e4  adrp    x10, #0x1003b8000
  1001305e8  add     x10, x10, #0x618                         ; &d_1003b8618
  1001305ec  ldr     x9, [x10, x9]
  1001305f0  mul     x9, x9, x21
  1001305f4  str     w20, [x8, x9]
  1001305f8  adrp    x8, #0x100420000
  1001305fc  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130600  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130604  add     x9, x9, #1
  100130608  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  10013060c  sub     sp, x29, #0x20
  100130610  ldp     x22, x21, [sp], #0x10
  100130614  ldp     x20, x19, [sp], #0x10
  100130618  ldp     x29, x30, [sp], #0x10
  10013061c  ret
loc_100130620:
  100130620  adrp    x8, #0x10041d000
  100130624  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130628  adrp    x8, #0x100417000
  10013062c  nop
  100130630  ldr     x1, [x8, #0x260]
  100130634  adrp    x8, #0x100393000
  100130638  add     x8, x8, #0x7e7                           ; "TAGPBArrayValueTypeInt32"
  10013063c  adrp    x2, #0x1003c6000
  100130640  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130644  str     x8, [sp]
  100130648  adrp    x3, #0x1003c6000
  10013064c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130650  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt32"]
  100130654  b       loc_1001305b8
loc_100130658:
  100130658  adrp    x9, #0x10041d000
  10013065c  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130660  adrp    x9, #0x1003b0000
  100130664  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130668  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10013066c  adrp    x9, #0x100417000
  100130670  nop
  100130674  ldr     x1, [x9, #0x260]
  100130678  stp     x21, x8, [sp]
  10013067c  adrp    x3, #0x1003c6000
  100130680  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  100130684  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130688  b       loc_1001305cc

; ======================================================================
; -[TAGPBMutableArray replaceUInt32AtIndex:withUInt32:]
; address 0x10013068c  size 264  kind objc
; ======================================================================
  10013068c  stp     x29, x30, [sp, #-0x10]!
  100130690  mov     x29, sp
  100130694  stp     x20, x19, [sp, #-0x10]!
  100130698  stp     x22, x21, [sp, #-0x10]!
  10013069c  sub     sp, sp, #0x10
  1001306a0  mov     x20, x3
  1001306a4  mov     x21, x2
  1001306a8  mov     x19, x0
  1001306ac  adrp    x8, #0x100420000
  1001306b0  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  1001306b4  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  1001306b8  cmp     w8, #3
  1001306bc  b.ne    loc_100130728                            ; if (self->_valueType != 3)
loc_1001306c0:
  1001306c0  adrp    x8, #0x100420000
  1001306c4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001306c8  ldr     x8, [x19, x8]                            ; x8 = self->_count
  1001306cc  cmp     x8, x21
  1001306d0  b.ls    loc_100130760                            ; if (self->_count <=u arg1)
loc_1001306d4:
  1001306d4  adrp    x8, #0x100420000
  1001306d8  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  1001306dc  ldr     x8, [x19, x8]                            ; x8 = self->_data
  1001306e0  add     x9, x19, x22
  1001306e4  ldr     w9, [x9]                                 ; w9 = self->_valueType
  1001306e8  lsl     x9, x9, #5
  1001306ec  adrp    x10, #0x1003b8000
  1001306f0  add     x10, x10, #0x618                         ; &d_1003b8618
  1001306f4  ldr     x9, [x10, x9]
  1001306f8  mul     x9, x9, x21
  1001306fc  str     w20, [x8, x9]
  100130700  adrp    x8, #0x100420000
  100130704  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130708  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  10013070c  add     x9, x9, #1
  100130710  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130714  sub     sp, x29, #0x20
  100130718  ldp     x22, x21, [sp], #0x10
  10013071c  ldp     x20, x19, [sp], #0x10
  100130720  ldp     x29, x30, [sp], #0x10
  100130724  ret
loc_100130728:
  100130728  adrp    x8, #0x10041d000
  10013072c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130730  adrp    x8, #0x100417000
  100130734  nop
  100130738  ldr     x1, [x8, #0x260]
  10013073c  adrp    x8, #0x100393000
  100130740  add     x8, x8, #0x856                           ; "TAGPBArrayValueTypeUInt32"
  100130744  adrp    x2, #0x1003c6000
  100130748  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10013074c  str     x8, [sp]
  100130750  adrp    x3, #0x1003c6000
  100130754  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130758  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeUInt32"]
  10013075c  b       loc_1001306c0
loc_100130760:
  100130760  adrp    x9, #0x10041d000
  100130764  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130768  adrp    x9, #0x1003b0000
  10013076c  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130770  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  100130774  adrp    x9, #0x100417000
  100130778  nop
  10013077c  ldr     x1, [x9, #0x260]
  100130780  stp     x21, x8, [sp]
  100130784  adrp    x3, #0x1003c6000
  100130788  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10013078c  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130790  b       loc_1001306d4

; ======================================================================
; -[TAGPBMutableArray replaceInt64AtIndex:withInt64:]
; address 0x100130794  size 264  kind objc
; ======================================================================
  100130794  stp     x29, x30, [sp, #-0x10]!
  100130798  mov     x29, sp
  10013079c  stp     x20, x19, [sp, #-0x10]!
  1001307a0  stp     x22, x21, [sp, #-0x10]!
  1001307a4  sub     sp, sp, #0x10
  1001307a8  mov     x20, x3
  1001307ac  mov     x21, x2
  1001307b0  mov     x19, x0
  1001307b4  adrp    x8, #0x100420000
  1001307b8  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  1001307bc  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  1001307c0  cmp     w8, #4
  1001307c4  b.ne    loc_100130830                            ; if (self->_valueType != 4)
loc_1001307c8:
  1001307c8  adrp    x8, #0x100420000
  1001307cc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001307d0  ldr     x8, [x19, x8]                            ; x8 = self->_count
  1001307d4  cmp     x8, x21
  1001307d8  b.ls    loc_100130868                            ; if (self->_count <=u arg1)
loc_1001307dc:
  1001307dc  adrp    x8, #0x100420000
  1001307e0  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  1001307e4  ldr     x8, [x19, x8]                            ; x8 = self->_data
  1001307e8  add     x9, x19, x22
  1001307ec  ldr     w9, [x9]                                 ; w9 = self->_valueType
  1001307f0  lsl     x9, x9, #5
  1001307f4  adrp    x10, #0x1003b8000
  1001307f8  add     x10, x10, #0x618                         ; &d_1003b8618
  1001307fc  ldr     x9, [x10, x9]
  100130800  mul     x9, x9, x21
  100130804  str     x20, [x8, x9]
  100130808  adrp    x8, #0x100420000
  10013080c  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130810  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130814  add     x9, x9, #1
  100130818  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  10013081c  sub     sp, x29, #0x20
  100130820  ldp     x22, x21, [sp], #0x10
  100130824  ldp     x20, x19, [sp], #0x10
  100130828  ldp     x29, x30, [sp], #0x10
  10013082c  ret
loc_100130830:
  100130830  adrp    x8, #0x10041d000
  100130834  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130838  adrp    x8, #0x100417000
  10013083c  nop
  100130840  ldr     x1, [x8, #0x260]
  100130844  adrp    x8, #0x100393000
  100130848  add     x8, x8, #0x870                           ; "TAGPBArrayValueTypeInt64"
  10013084c  adrp    x2, #0x1003c6000
  100130850  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130854  str     x8, [sp]
  100130858  adrp    x3, #0x1003c6000
  10013085c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130860  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt64"]
  100130864  b       loc_1001307c8
loc_100130868:
  100130868  adrp    x9, #0x10041d000
  10013086c  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130870  adrp    x9, #0x1003b0000
  100130874  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130878  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10013087c  adrp    x9, #0x100417000
  100130880  nop
  100130884  ldr     x1, [x9, #0x260]
  100130888  stp     x21, x8, [sp]
  10013088c  adrp    x3, #0x1003c6000
  100130890  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  100130894  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130898  b       loc_1001307dc

; ======================================================================
; -[TAGPBMutableArray replaceUInt64AtIndex:withUInt64:]
; address 0x10013089c  size 264  kind objc
; ======================================================================
  10013089c  stp     x29, x30, [sp, #-0x10]!
  1001308a0  mov     x29, sp
  1001308a4  stp     x20, x19, [sp, #-0x10]!
  1001308a8  stp     x22, x21, [sp, #-0x10]!
  1001308ac  sub     sp, sp, #0x10
  1001308b0  mov     x20, x3
  1001308b4  mov     x21, x2
  1001308b8  mov     x19, x0
  1001308bc  adrp    x8, #0x100420000
  1001308c0  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  1001308c4  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  1001308c8  cmp     w8, #5
  1001308cc  b.ne    loc_100130938                            ; if (self->_valueType != 5)
loc_1001308d0:
  1001308d0  adrp    x8, #0x100420000
  1001308d4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001308d8  ldr     x8, [x19, x8]                            ; x8 = self->_count
  1001308dc  cmp     x8, x21
  1001308e0  b.ls    loc_100130970                            ; if (self->_count <=u arg1)
loc_1001308e4:
  1001308e4  adrp    x8, #0x100420000
  1001308e8  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  1001308ec  ldr     x8, [x19, x8]                            ; x8 = self->_data
  1001308f0  add     x9, x19, x22
  1001308f4  ldr     w9, [x9]                                 ; w9 = self->_valueType
  1001308f8  lsl     x9, x9, #5
  1001308fc  adrp    x10, #0x1003b8000
  100130900  add     x10, x10, #0x618                         ; &d_1003b8618
  100130904  ldr     x9, [x10, x9]
  100130908  mul     x9, x9, x21
  10013090c  str     x20, [x8, x9]
  100130910  adrp    x8, #0x100420000
  100130914  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130918  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  10013091c  add     x9, x9, #1
  100130920  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130924  sub     sp, x29, #0x20
  100130928  ldp     x22, x21, [sp], #0x10
  10013092c  ldp     x20, x19, [sp], #0x10
  100130930  ldp     x29, x30, [sp], #0x10
  100130934  ret
loc_100130938:
  100130938  adrp    x8, #0x10041d000
  10013093c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130940  adrp    x8, #0x100417000
  100130944  nop
  100130948  ldr     x1, [x8, #0x260]
  10013094c  adrp    x8, #0x100393000
  100130950  add     x8, x8, #0x889                           ; "TAGPBArrayValueTypeUInt64"
  100130954  adrp    x2, #0x1003c6000
  100130958  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10013095c  str     x8, [sp]
  100130960  adrp    x3, #0x1003c6000
  100130964  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130968  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeUInt64"]
  10013096c  b       loc_1001308d0
loc_100130970:
  100130970  adrp    x9, #0x10041d000
  100130974  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130978  adrp    x9, #0x1003b0000
  10013097c  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130980  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  100130984  adrp    x9, #0x100417000
  100130988  nop
  10013098c  ldr     x1, [x9, #0x260]
  100130990  stp     x21, x8, [sp]
  100130994  adrp    x3, #0x1003c6000
  100130998  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10013099c  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  1001309a0  b       loc_1001308e4

; ======================================================================
; -[TAGPBMutableArray replaceFloatAtIndex:withFloat:]
; address 0x1001309a4  size 272  kind objc
; ======================================================================
  1001309a4  stp     x29, x30, [sp, #-0x10]!
  1001309a8  mov     x29, sp
  1001309ac  stp     x20, x19, [sp, #-0x10]!
  1001309b0  stp     x22, x21, [sp, #-0x10]!
  1001309b4  stp     d9, d8, [sp, #-0x10]!
  1001309b8  sub     sp, sp, #0x10
  1001309bc  mov     v8.16b, v0.16b
  1001309c0  mov     x20, x2
  1001309c4  mov     x19, x0
  1001309c8  adrp    x8, #0x100420000
  1001309cc  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  1001309d0  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  1001309d4  cmp     w8, #6
  1001309d8  b.ne    loc_100130a48                            ; if (self->_valueType != 6)
loc_1001309dc:
  1001309dc  adrp    x8, #0x100420000
  1001309e0  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  1001309e4  ldr     x8, [x19, x8]                            ; x8 = self->_count
  1001309e8  cmp     x8, x20
  1001309ec  b.ls    loc_100130a80                            ; if (self->_count <=u arg1)
loc_1001309f0:
  1001309f0  adrp    x8, #0x100420000
  1001309f4  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  1001309f8  ldr     x8, [x19, x8]                            ; x8 = self->_data
  1001309fc  add     x9, x19, x21
  100130a00  ldr     w9, [x9]                                 ; w9 = self->_valueType
  100130a04  lsl     x9, x9, #5
  100130a08  adrp    x10, #0x1003b8000
  100130a0c  add     x10, x10, #0x618                         ; &d_1003b8618
  100130a10  ldr     x9, [x10, x9]
  100130a14  mul     x9, x9, x20
  100130a18  str     s8, [x8, x9]
  100130a1c  adrp    x8, #0x100420000
  100130a20  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130a24  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130a28  add     x9, x9, #1
  100130a2c  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130a30  sub     sp, x29, #0x30
  100130a34  ldp     d9, d8, [sp], #0x10
  100130a38  ldp     x22, x21, [sp], #0x10
  100130a3c  ldp     x20, x19, [sp], #0x10
  100130a40  ldp     x29, x30, [sp], #0x10
  100130a44  ret
loc_100130a48:
  100130a48  adrp    x8, #0x10041d000
  100130a4c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130a50  adrp    x8, #0x100417000
  100130a54  nop
  100130a58  ldr     x1, [x8, #0x260]
  100130a5c  adrp    x8, #0x100393000
  100130a60  add     x8, x8, #0x8a3                           ; "TAGPBArrayValueTypeFloat"
  100130a64  adrp    x2, #0x1003c6000
  100130a68  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130a6c  str     x8, [sp]
  100130a70  adrp    x3, #0x1003c6000
  100130a74  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130a78  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeFloat"]
  100130a7c  b       loc_1001309dc
loc_100130a80:
  100130a80  adrp    x9, #0x10041d000
  100130a84  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130a88  adrp    x9, #0x1003b0000
  100130a8c  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130a90  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  100130a94  adrp    x9, #0x100417000
  100130a98  nop
  100130a9c  ldr     x1, [x9, #0x260]
  100130aa0  stp     x20, x8, [sp]
  100130aa4  adrp    x3, #0x1003c6000
  100130aa8  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  100130aac  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130ab0  b       loc_1001309f0

; ======================================================================
; -[TAGPBMutableArray replaceDoubleAtIndex:withDouble:]
; address 0x100130ab4  size 272  kind objc
; ======================================================================
  100130ab4  stp     x29, x30, [sp, #-0x10]!
  100130ab8  mov     x29, sp
  100130abc  stp     x20, x19, [sp, #-0x10]!
  100130ac0  stp     x22, x21, [sp, #-0x10]!
  100130ac4  stp     d9, d8, [sp, #-0x10]!
  100130ac8  sub     sp, sp, #0x10
  100130acc  mov     v8.16b, v0.16b
  100130ad0  mov     x20, x2
  100130ad4  mov     x19, x0
  100130ad8  adrp    x8, #0x100420000
  100130adc  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130ae0  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  100130ae4  cmp     w8, #7
  100130ae8  b.ne    loc_100130b58                            ; if (self->_valueType != 7)
loc_100130aec:
  100130aec  adrp    x8, #0x100420000
  100130af0  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100130af4  ldr     x8, [x19, x8]                            ; x8 = self->_count
  100130af8  cmp     x8, x20
  100130afc  b.ls    loc_100130b90                            ; if (self->_count <=u arg1)
loc_100130b00:
  100130b00  adrp    x8, #0x100420000
  100130b04  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  100130b08  ldr     x8, [x19, x8]                            ; x8 = self->_data
  100130b0c  add     x9, x19, x21
  100130b10  ldr     w9, [x9]                                 ; w9 = self->_valueType
  100130b14  lsl     x9, x9, #5
  100130b18  adrp    x10, #0x1003b8000
  100130b1c  add     x10, x10, #0x618                         ; &d_1003b8618
  100130b20  ldr     x9, [x10, x9]
  100130b24  mul     x9, x9, x20
  100130b28  str     d8, [x8, x9]
  100130b2c  adrp    x8, #0x100420000
  100130b30  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130b34  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130b38  add     x9, x9, #1
  100130b3c  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130b40  sub     sp, x29, #0x30
  100130b44  ldp     d9, d8, [sp], #0x10
  100130b48  ldp     x22, x21, [sp], #0x10
  100130b4c  ldp     x20, x19, [sp], #0x10
  100130b50  ldp     x29, x30, [sp], #0x10
  100130b54  ret
loc_100130b58:
  100130b58  adrp    x8, #0x10041d000
  100130b5c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130b60  adrp    x8, #0x100417000
  100130b64  nop
  100130b68  ldr     x1, [x8, #0x260]
  100130b6c  adrp    x8, #0x100393000
  100130b70  add     x8, x8, #0x8bc                           ; "TAGPBArrayValueTypeDouble"
  100130b74  adrp    x2, #0x1003c6000
  100130b78  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130b7c  str     x8, [sp]
  100130b80  adrp    x3, #0x1003c6000
  100130b84  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130b88  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeDouble"]
  100130b8c  b       loc_100130aec
loc_100130b90:
  100130b90  adrp    x9, #0x10041d000
  100130b94  ldr     x0, [x9, #0xfc8]                         ; class NSException
  100130b98  adrp    x9, #0x1003b0000
  100130b9c  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  100130ba0  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  100130ba4  adrp    x9, #0x100417000
  100130ba8  nop
  100130bac  ldr     x1, [x9, #0x260]
  100130bb0  stp     x20, x8, [sp]
  100130bb4  adrp    x3, #0x1003c6000
  100130bb8  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  100130bbc  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  100130bc0  b       loc_100130b00

; ======================================================================
; -[TAGPBMutableArray setArray:]
; address 0x100130bc4  size 92  kind objc
; ======================================================================
  100130bc4  stp     x29, x30, [sp, #-0x10]!
  100130bc8  mov     x29, sp
  100130bcc  stp     x20, x19, [sp, #-0x10]!
  100130bd0  mov     x19, x2
  100130bd4  mov     x20, x0
  100130bd8  cmp     x20, x19
  100130bdc  b.eq    loc_100130c14                            ; if (self == arg1)
  100130be0  adrp    x8, #0x10041c000
  100130be4  nop
  100130be8  ldr     x1, [x8, #0x538]
  100130bec  mov     x0, x20
  100130bf0  bl      _objc_msgSend                            ; [self removeAllValues]
  100130bf4  adrp    x8, #0x10041c000
  100130bf8  nop
  100130bfc  ldr     x1, [x8, #0x540]
  100130c00  mov     x0, x20
  100130c04  mov     x2, x19
  100130c08  ldp     x20, x19, [sp], #0x10
  100130c0c  ldp     x29, x30, [sp], #0x10
  100130c10  b       _objc_msgSend                            ; [self appendArray:arg1]
loc_100130c14:
  100130c14  ldp     x20, x19, [sp], #0x10
  100130c18  ldp     x29, x30, [sp], #0x10
  100130c1c  ret

; ======================================================================
; -[TAGPBMutableArray appendArray:]
; address 0x100130c20  size 340  kind objc
; ======================================================================
  100130c20  stp     x29, x30, [sp, #-0x10]!
  100130c24  mov     x29, sp
  100130c28  stp     x20, x19, [sp, #-0x10]!
  100130c2c  stp     x22, x21, [sp, #-0x10]!
  100130c30  stp     x24, x23, [sp, #-0x10]!
  100130c34  sub     sp, sp, #0x10
  100130c38  mov     x20, x2
  100130c3c  mov     x19, x0
  100130c40  cbz     x20, loc_100130d24                       ; if (arg1 == 0)
  100130c44  adrp    x8, #0x100420000
  100130c48  ldrsw   x22, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  100130c4c  ldr     x8, [x20, x22]                           ; x8 = arg1->_data
  100130c50  cbz     x8, loc_100130d24                        ; if (arg1->_data == 0)
  100130c54  adrp    x8, #0x100420000
  100130c58  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130c5c  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  100130c60  ldr     w9, [x20, x21]                           ; w9 = arg1->_valueType
  100130c64  cmp     w8, w9
  100130c68  b.ne    loc_100130d3c                            ; if (self->_valueType != arg1->_valueType)
loc_100130c6c:
  100130c6c  adrp    x8, #0x100420000
  100130c70  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  100130c74  ldr     x2, [x20, x23]                           ; x2 = arg1->_count
  100130c78  adrp    x8, #0x10041c000
  100130c7c  nop
  100130c80  ldr     x1, [x8, #0x518]
  100130c84  mov     x0, x19
  100130c88  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:arg1->_count]
  100130c8c  add     x8, x19, x21
  100130c90  ldr     w8, [x8]                                 ; w8 = self->_valueType
  100130c94  lsl     x8, x8, #5
  100130c98  adrp    x9, #0x1003b8000
  100130c9c  add     x9, x9, #0x618                           ; &d_1003b8618
  100130ca0  ldr     x8, [x9, x8]
  100130ca4  ldr     x9, [x19, x22]                           ; x9 = self->_data
  100130ca8  ldr     x10, [x19, x23]                          ; x10 = self->_count
  100130cac  madd    x0, x10, x8, x9
  100130cb0  ldr     x1, [x20, x22]                           ; x1 = arg1->_data
  100130cb4  ldr     x9, [x20, x23]                           ; x9 = arg1->_count
  100130cb8  mul     x2, x9, x8
  100130cbc  bl      _memcpy                                  ; memcpy((self->_data + self->_count * x8), arg1->_data, (arg1->_count * x8))
  100130cc0  ldr     x8, [x20, x23]                           ; x8 = arg1->_count
  100130cc4  ldr     x9, [x19, x23]                           ; x9 = self->_count
  100130cc8  add     x8, x9, x8
  100130ccc  str     x8, [x19, x23]                           ; self->_count = (self->_count + arg1->_count)
  100130cd0  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  100130cd4  cbnz    w8, loc_100130d10                        ; if (self->_valueType != 0)
  100130cd8  ldr     x8, [x20, x23]                           ; x8 = arg1->_count
  100130cdc  cbz     x8, loc_100130d10                        ; if (arg1->_count == 0)
  100130ce0  mov     x24, #0
  100130ce4  adrp    x8, #0x10041b000
  100130ce8  add     x8, x8, #0xdb8                           ; &@selector(retain)
  100130cec  ldr     x21, [x8]
loc_100130cf0:
  100130cf0  ldr     x8, [x20, x22]                           ; x8 = arg1->_data
  100130cf4  ldr     x0, [x8, x24, lsl #3]
  100130cf8  mov     x1, x21
  100130cfc  bl      _objc_msgSend                            ; [x0 retain]
  100130d00  add     x24, x24, #1
  100130d04  ldr     x8, [x20, x23]                           ; x8 = arg1->_count
  100130d08  cmp     x24, x8
  100130d0c  b.lo    loc_100130cf0                            ; if ((x24 + 1) <u arg1->_count)
loc_100130d10:
  100130d10  adrp    x8, #0x100420000
  100130d14  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130d18  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130d1c  add     x9, x9, #1
  100130d20  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
loc_100130d24:
  100130d24  sub     sp, x29, #0x30
  100130d28  ldp     x24, x23, [sp], #0x10
  100130d2c  ldp     x22, x21, [sp], #0x10
  100130d30  ldp     x20, x19, [sp], #0x10
  100130d34  ldp     x29, x30, [sp], #0x10
  100130d38  ret
loc_100130d3c:
  100130d3c  adrp    x8, #0x10041d000
  100130d40  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130d44  adrp    x8, #0x100417000
  100130d48  nop
  100130d4c  ldr     x1, [x8, #0x260]
  100130d50  adrp    x8, #0x100393000
  100130d54  add     x8, x8, #0x8d6                           ; "array->_valueType"
  100130d58  adrp    x2, #0x1003c6000
  100130d5c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130d60  str     x8, [sp]
  100130d64  adrp    x3, #0x1003c6000
  100130d68  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130d6c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "array->_valueType"]
  100130d70  b       loc_100130c6c

; ======================================================================
; -[TAGPBMutableArray appendValues:valueType:count:]
; address 0x100130d74  size 304  kind objc
; ======================================================================
  100130d74  stp     x29, x30, [sp, #-0x10]!
  100130d78  mov     x29, sp
  100130d7c  stp     x20, x19, [sp, #-0x10]!
  100130d80  stp     x22, x21, [sp, #-0x10]!
  100130d84  stp     x24, x23, [sp, #-0x10]!
  100130d88  sub     sp, sp, #0x10
  100130d8c  mov     x20, x4
  100130d90  mov     x21, x2
  100130d94  mov     x19, x0
  100130d98  adrp    x8, #0x100420000
  100130d9c  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  100130da0  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  100130da4  cmp     w8, w3
  100130da8  b.ne    loc_100130e6c                            ; if (self->_valueType != arg2)
loc_100130dac:
  100130dac  adrp    x8, #0x10041c000
  100130db0  nop
  100130db4  ldr     x1, [x8, #0x518]
  100130db8  mov     x0, x19
  100130dbc  mov     x2, x20
  100130dc0  bl      _objc_msgSend                            ; [self ensureAdditionalCapacity:arg3]
  100130dc4  add     x8, x19, x22
  100130dc8  ldr     w8, [x8]                                 ; w8 = self->_valueType
  100130dcc  lsl     x8, x8, #5
  100130dd0  adrp    x9, #0x1003b8000
  100130dd4  add     x9, x9, #0x618                           ; &d_1003b8618
  100130dd8  ldr     x8, [x9, x8]
  100130ddc  adrp    x9, #0x100420000
  100130de0  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  100130de4  ldr     x9, [x19, x9]                            ; x9 = self->_data
  100130de8  adrp    x10, #0x100420000
  100130dec  ldrsw   x23, [x10, #0x904]                       ; ivar offset TAGPBArray._count (+0x18)
  100130df0  ldr     x10, [x19, x23]                          ; x10 = self->_count
  100130df4  madd    x0, x10, x8, x9
  100130df8  mul     x2, x8, x20
  100130dfc  mov     x1, x21
  100130e00  bl      _memcpy                                  ; memcpy((self->_data + self->_count * x8), arg1, (x8 * arg3))
  100130e04  ldr     x8, [x19, x23]                           ; x8 = self->_count
  100130e08  add     x8, x8, x20
  100130e0c  str     x8, [x19, x23]                           ; self->_count = (self->_count + arg3)
  100130e10  ldr     w8, [x19, x22]                           ; w8 = self->_valueType
  100130e14  cmp     w8, #0
  100130e18  ccmp    x20, #0, #4, eq
  100130e1c  b.eq    loc_100130e40                            ; if (flags ==)
  100130e20  adrp    x8, #0x10041b000
  100130e24  add     x8, x8, #0xdb8                           ; &@selector(retain)
  100130e28  ldr     x22, [x8]
loc_100130e2c:
  100130e2c  ldr     x0, [x21], #8
  100130e30  mov     x1, x22
  100130e34  bl      _objc_msgSend                            ; [x0 retain]
  100130e38  sub     x20, x20, #1
  100130e3c  cbnz    x20, loc_100130e2c                       ; if ((x20 - 1) != 0)
loc_100130e40:
  100130e40  adrp    x8, #0x100420000
  100130e44  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130e48  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130e4c  add     x9, x9, #1
  100130e50  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130e54  sub     sp, x29, #0x30
  100130e58  ldp     x24, x23, [sp], #0x10
  100130e5c  ldp     x22, x21, [sp], #0x10
  100130e60  ldp     x20, x19, [sp], #0x10
  100130e64  ldp     x29, x30, [sp], #0x10
  100130e68  ret
loc_100130e6c:
  100130e6c  adrp    x8, #0x10041d000
  100130e70  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100130e74  adrp    x8, #0x100417000
  100130e78  nop
  100130e7c  ldr     x1, [x8, #0x260]
  100130e80  adrp    x8, #0x100393000
  100130e84  add     x8, x8, #0xabe                           ; "valueType"
  100130e88  adrp    x2, #0x1003c6000
  100130e8c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  100130e90  str     x8, [sp]
  100130e94  adrp    x3, #0x1003c6000
  100130e98  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  100130e9c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "valueType"]
  100130ea0  b       loc_100130dac

; ======================================================================
; -[TAGPBMutableArray removeAllValues]
; address 0x100130ea4  size 204  kind objc
; ======================================================================
  100130ea4  stp     x29, x30, [sp, #-0x10]!
  100130ea8  mov     x29, sp
  100130eac  stp     x20, x19, [sp, #-0x10]!
  100130eb0  stp     x22, x21, [sp, #-0x10]!
  100130eb4  stp     x24, x23, [sp, #-0x10]!
  100130eb8  mov     x19, x0
  100130ebc  adrp    x22, #0x100420000
  100130ec0  ldrsw   x21, [x22, #0x90c]                       ; ivar offset TAGPBArray._data (+0x20)
  100130ec4  ldr     x0, [x19, x21]                           ; x0 = self->_data
  100130ec8  cbz     x0, loc_100130f30                        ; if (self->_data == 0)
  100130ecc  adrp    x8, #0x100420000
  100130ed0  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  100130ed4  ldr     w8, [x19, x8]                            ; w8 = self->_valueType
  100130ed8  cbnz    w8, loc_100130f28                        ; if (self->_valueType != 0)
  100130edc  adrp    x8, #0x100420000
  100130ee0  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  100130ee4  ldr     x8, [x19, x23]                           ; x8 = self->_count
  100130ee8  cbz     x8, loc_100130f28                        ; if (self->_count == 0)
  100130eec  mov     x24, #0
  100130ef0  adrp    x8, #0x10041b000
  100130ef4  add     x8, x8, #0xd70                           ; &@selector(release)
  100130ef8  ldr     x20, [x8]
  100130efc  b       loc_100130f04
loc_100130f00:
  100130f00  ldr     x0, [x19, x21]                           ; x0 = self->_data
loc_100130f04:
  100130f04  ldr     x0, [x0, x24, lsl #3]
  100130f08  mov     x1, x20
  100130f0c  bl      _objc_msgSend                            ; [x0 release]
  100130f10  add     x24, x24, #1
  100130f14  ldr     x8, [x19, x23]                           ; x8 = self->_count
  100130f18  cmp     x24, x8
  100130f1c  b.lo    loc_100130f00                            ; if ((x24 + 1) <u self->_count)
  100130f20  ldrsw   x8, [x22, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  100130f24  ldr     x0, [x19, x8]                            ; x0 = self->_data
loc_100130f28:
  100130f28  bl      _free                                    ; free(self->_data)
  100130f2c  str     xzr, [x19, x21]                          ; self->_data = 0
loc_100130f30:
  100130f30  adrp    x8, #0x100420000
  100130f34  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  100130f38  str     xzr, [x19, x8]                           ; self->_count = 0
  100130f3c  adrp    x8, #0x100420000
  100130f40  ldrsw   x8, [x8, #0x908]                         ; ivar offset TAGPBArray._capacity (+0x10)
  100130f44  str     xzr, [x19, x8]                           ; self->_capacity = 0
  100130f48  adrp    x8, #0x100420000
  100130f4c  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  100130f50  ldr     x9, [x19, x8]                            ; x9 = self->_mutationCount
  100130f54  add     x9, x9, #1
  100130f58  str     x9, [x19, x8]                            ; self->_mutationCount = (self->_mutationCount + 1)
  100130f5c  ldp     x24, x23, [sp], #0x10
  100130f60  ldp     x22, x21, [sp], #0x10
  100130f64  ldp     x20, x19, [sp], #0x10
  100130f68  ldp     x29, x30, [sp], #0x10
  100130f6c  ret

; ======================================================================
; -[TAGPBMutableArray delegate]
; address 0x100130f70  size 16  kind objc
; ======================================================================
  100130f70  adrp    x8, #0x100420000
  100130f74  ldrsw   x8, [x8, #0x914]                         ; ivar offset TAGPBMutableArray._delegate (+0x30)
  100130f78  ldr     x0, [x0, x8]                             ; x0 = self->_delegate
  100130f7c  ret

; ======================================================================
; -[TAGPBMutableArray setDelegate:]
; address 0x100130f80  size 16  kind objc
; ======================================================================
  100130f80  adrp    x8, #0x100420000
  100130f84  ldrsw   x8, [x8, #0x914]                         ; ivar offset TAGPBMutableArray._delegate (+0x30)
  100130f88  str     x2, [x0, x8]                             ; self->_delegate = arg1
  100130f8c  ret

; ======================================================================
; sub_100130f90
; address 0x100130f90  size 184  kind sub
; ======================================================================
  100130f90  stp     x29, x30, [sp, #-0x10]!
  100130f94  mov     x29, sp
  100130f98  stp     x20, x19, [sp, #-0x10]!
  100130f9c  sub     sp, sp, #0x10
  100130fa0  mov     x19, x0
  100130fa4  adrp    x8, #0x100420000
  100130fa8  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100130fac  add     x9, x8, x19
  100130fb0  ldp     x10, x9, [x9, #8]
  100130fb4  cmp     x9, x10
  100130fb8  b.eq    loc_100130fcc                            ; if (a0->state_[+0x10] == a0->state_[+0x8])
  100130fbc  add     x10, x8, x19
  100130fc0  ldr     x10, [x10, #0x18]                        ; x10 = a0->state_[+0x18]
  100130fc4  cmp     x9, x10
  100130fc8  b.ne    loc_100130fe0                            ; if (a0->state_[+0x10] != a0->state_[+0x18])
loc_100130fcc:
  100130fcc  mov     w0, #0
  100130fd0  adrp    x8, #0x100420000
  100130fd4  ldrsw   x8, [x8, #0x918]                         ; ivar offset TAGPBCodedInputStream.lastTag_ (+0x30)
  100130fd8  str     wzr, [x19, x8]                           ; a0->lastTag_ = 0
  100130fdc  b       loc_100131038
loc_100130fe0:
  100130fe0  add     x0, x19, x8
  100130fe4  bl      sub_100131048                            ; sub_100131048(x0, a1, a2, a3)
  100130fe8  adrp    x20, #0x100420000
  100130fec  ldrsw   x8, [x20, #0x918]                        ; ivar offset TAGPBCodedInputStream.lastTag_ (+0x30)
  100130ff0  str     w0, [x19, x8]                            ; a0->lastTag_ = sub_100131048(x0, a1, a2, a3)
  100130ff4  ldrsw   x8, [x20, #0x918]                        ; ivar offset TAGPBCodedInputStream.lastTag_ (+0x30)
  100130ff8  ldr     w0, [x19, x8]                            ; w0 = a0->lastTag_
  100130ffc  cbnz    w0, loc_100131038                        ; if (a0->lastTag_ != 0)
  100131000  adrp    x8, #0x10041d000
  100131004  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131008  adrp    x8, #0x1003b0000
  10013100c  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131010  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131014  adrp    x8, #0x100417000
  100131018  nop
  10013101c  ldr     x1, [x8, #0x260]
  100131020  str     xzr, [sp]
  100131024  adrp    x3, #0x1003c6000
  100131028  add     x3, x3, #0xd10                           ; @"Invalid last tag %d"
  10013102c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Invalid last tag %d", 0]
  100131030  ldrsw   x8, [x20, #0x918]                        ; ivar offset TAGPBCodedInputStream.lastTag_ (+0x30)
  100131034  ldr     w0, [x19, x8]                            ; w0 = a0->lastTag_
loc_100131038:
  100131038  sub     sp, x29, #0x10
  10013103c  ldp     x20, x19, [sp], #0x10
  100131040  ldp     x29, x30, [sp], #0x10
  100131044  ret

; ======================================================================
; sub_100131048
; address 0x100131048  size 1032  kind sub
; ======================================================================
  100131048  stp     x29, x30, [sp, #-0x10]!
  10013104c  mov     x29, sp
  100131050  stp     x20, x19, [sp, #-0x10]!
  100131054  stp     x22, x21, [sp, #-0x10]!
  100131058  stp     x24, x23, [sp, #-0x10]!
  10013105c  stp     x26, x25, [sp, #-0x10]!
  100131060  mov     x19, x0
  100131064  ldp     x8, x9, [x19, #8]
  100131068  add     x20, x9, #1
  10013106c  cmp     x20, x8
  100131070  b.ls    loc_1001310a0                            ; if ((x9 + 1) <=u x8)
  100131074  adrp    x8, #0x10041d000
  100131078  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013107c  adrp    x8, #0x1003b0000
  100131080  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131084  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131088  adrp    x8, #0x100417000
  10013108c  nop
  100131090  ldr     x1, [x8, #0x260]
  100131094  adrp    x3, #0x1003b9000
  100131098  add     x3, x3, #0x870                           ; @""
  10013109c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001310a0:
  1001310a0  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  1001310a4  cmp     x20, x8
  1001310a8  b.ls    loc_1001310dc                            ; if ((x9 + 1) <=u a0[+0x18])
  1001310ac  str     x8, [x19, #0x10]                         ; a0[+0x10] = a0[+0x18]
  1001310b0  adrp    x8, #0x10041d000
  1001310b4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001310b8  adrp    x8, #0x1003b0000
  1001310bc  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001310c0  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001310c4  adrp    x8, #0x100417000
  1001310c8  nop
  1001310cc  ldr     x1, [x8, #0x260]
  1001310d0  adrp    x3, #0x1003b9000
  1001310d4  add     x3, x3, #0x870                           ; @""
  1001310d8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001310dc:
  1001310dc  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  1001310e0  add     x9, x8, #1
  1001310e4  str     x9, [x19, #0x10]                         ; a0[+0x10] = (a0[+0x10] + 1)
  1001310e8  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1001310ec  ldrsb   w20, [x9, x8]
  1001310f0  cmp     w20, #0
  1001310f4  b.ge    loc_100131238                            ; if (w20 >= 0)
  1001310f8  add     x21, x8, #2
  1001310fc  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  100131100  cmp     x21, x8
  100131104  b.ls    loc_100131134                            ; if ((a0[+0x10] + 2) <=u a0[+0x8])
  100131108  adrp    x8, #0x10041d000
  10013110c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131110  adrp    x8, #0x1003b0000
  100131114  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131118  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  10013111c  adrp    x8, #0x100417000
  100131120  nop
  100131124  ldr     x1, [x8, #0x260]
  100131128  adrp    x3, #0x1003b9000
  10013112c  add     x3, x3, #0x870                           ; @""
  100131130  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131134:
  100131134  and     w20, w20, #0x7f
  100131138  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  10013113c  cmp     x21, x8
  100131140  b.ls    loc_100131174                            ; if ((a0[+0x10] + 2) <=u a0[+0x18])
  100131144  str     x8, [x19, #0x10]                         ; a0[+0x10] = a0[+0x18]
  100131148  adrp    x8, #0x10041d000
  10013114c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131150  adrp    x8, #0x1003b0000
  100131154  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131158  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  10013115c  adrp    x8, #0x100417000
  100131160  nop
  100131164  ldr     x1, [x8, #0x260]
  100131168  adrp    x3, #0x1003b9000
  10013116c  add     x3, x3, #0x870                           ; @""
  100131170  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131174:
  100131174  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  100131178  add     x9, x8, #1
  10013117c  str     x9, [x19, #0x10]                         ; a0[+0x10] = (a0[+0x10] + 1)
  100131180  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  100131184  ldrsb   w9, [x9, x8]
  100131188  lsl     w21, w9, #7
  10013118c  cmp     w9, #0
  100131190  b.ge    loc_100131234                            ; if (w9 >= 0)
  100131194  add     x22, x8, #2
  100131198  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  10013119c  cmp     x22, x8
  1001311a0  b.ls    loc_1001311d0                            ; if ((a0[+0x10] + 2) <=u a0[+0x8])
  1001311a4  adrp    x8, #0x10041d000
  1001311a8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001311ac  adrp    x8, #0x1003b0000
  1001311b0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001311b4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001311b8  adrp    x8, #0x100417000
  1001311bc  nop
  1001311c0  ldr     x1, [x8, #0x260]
  1001311c4  adrp    x3, #0x1003b9000
  1001311c8  add     x3, x3, #0x870                           ; @""
  1001311cc  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001311d0:
  1001311d0  and     w21, w21, #0x3f80
  1001311d4  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  1001311d8  cmp     x22, x8
  1001311dc  b.ls    loc_100131210                            ; if ((a0[+0x10] + 2) <=u a0[+0x18])
  1001311e0  str     x8, [x19, #0x10]                         ; a0[+0x10] = a0[+0x18]
  1001311e4  adrp    x8, #0x10041d000
  1001311e8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001311ec  adrp    x8, #0x1003b0000
  1001311f0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001311f4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001311f8  adrp    x8, #0x100417000
  1001311fc  nop
  100131200  ldr     x1, [x8, #0x260]
  100131204  adrp    x3, #0x1003b9000
  100131208  add     x3, x3, #0x870                           ; @""
  10013120c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131210:
  100131210  orr     w20, w21, w20
  100131214  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  100131218  add     x9, x8, #1
  10013121c  str     x9, [x19, #0x10]                         ; a0[+0x10] = (a0[+0x10] + 1)
  100131220  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  100131224  ldrsb   w9, [x9, x8]
  100131228  lsl     w21, w9, #0xe
  10013122c  cmp     w9, #0
  100131230  b.lt    loc_100131254                            ; if (w9 < 0)
loc_100131234:
  100131234  orr     w20, w21, w20
loc_100131238:
  100131238  mov     x0, x20
  10013123c  ldp     x26, x25, [sp], #0x10
  100131240  ldp     x24, x23, [sp], #0x10
  100131244  ldp     x22, x21, [sp], #0x10
  100131248  ldp     x20, x19, [sp], #0x10
  10013124c  ldp     x29, x30, [sp], #0x10
  100131250  ret
loc_100131254:
  100131254  add     x22, x8, #2
  100131258  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  10013125c  cmp     x22, x8
  100131260  b.ls    loc_100131290                            ; if ((a0[+0x10] + 2) <=u a0[+0x8])
  100131264  adrp    x8, #0x10041d000
  100131268  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013126c  adrp    x8, #0x1003b0000
  100131270  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131274  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131278  adrp    x8, #0x100417000
  10013127c  nop
  100131280  ldr     x1, [x8, #0x260]
  100131284  adrp    x3, #0x1003b9000
  100131288  add     x3, x3, #0x870                           ; @""
  10013128c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131290:
  100131290  and     w21, w21, #0x1fc000
  100131294  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  100131298  cmp     x22, x8
  10013129c  b.ls    loc_1001312d0                            ; if ((a0[+0x10] + 2) <=u a0[+0x18])
  1001312a0  str     x8, [x19, #0x10]                         ; a0[+0x10] = a0[+0x18]
  1001312a4  adrp    x8, #0x10041d000
  1001312a8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001312ac  adrp    x8, #0x1003b0000
  1001312b0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001312b4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001312b8  adrp    x8, #0x100417000
  1001312bc  nop
  1001312c0  ldr     x1, [x8, #0x260]
  1001312c4  adrp    x3, #0x1003b9000
  1001312c8  add     x3, x3, #0x870                           ; @""
  1001312cc  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001312d0:
  1001312d0  orr     w20, w21, w20
  1001312d4  ldr     x8, [x19, #0x10]                         ; x8 = a0[+0x10]
  1001312d8  add     x9, x8, #1
  1001312dc  str     x9, [x19, #0x10]                         ; a0[+0x10] = (a0[+0x10] + 1)
  1001312e0  ldr     x9, [x19]                                ; x9 = a0[+0x0]
  1001312e4  ldrsb   w10, [x9, x8]
  1001312e8  lsl     w9, w10, #0x15
  1001312ec  cmp     w10, #0
  1001312f0  b.lt    loc_1001312fc                            ; if (w10 < 0)
  1001312f4  orr     w20, w9, w20
  1001312f8  b       loc_100131238
loc_1001312fc:
  1001312fc  and     w22, w9, #0xfe00000
  100131300  add     x21, x8, #2
  100131304  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  100131308  cmp     x21, x8
  10013130c  b.ls    loc_10013133c                            ; if ((a0[+0x10] + 2) <=u a0[+0x8])
  100131310  adrp    x8, #0x10041d000
  100131314  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131318  adrp    x8, #0x1003b0000
  10013131c  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131320  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131324  adrp    x8, #0x100417000
  100131328  nop
  10013132c  ldr     x1, [x8, #0x260]
  100131330  adrp    x3, #0x1003b9000
  100131334  add     x3, x3, #0x870                           ; @""
  100131338  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_10013133c:
  10013133c  orr     w20, w22, w20                            ; t1 = (((w10 << 21) & 0xfe00000) | (((w9 << 14) & 0x1fc000) | (((w9 << 7) & 0x3f80) | (w20 & 127))))
  100131340  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  100131344  cmp     x21, x8
  100131348  b.ls    loc_10013137c                            ; if ((a0[+0x10] + 2) <=u a0[+0x18])
  10013134c  str     x8, [x19, #0x10]                         ; a0[+0x10] = a0[+0x18]
  100131350  adrp    x8, #0x10041d000
  100131354  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131358  adrp    x8, #0x1003b0000
  10013135c  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131360  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131364  adrp    x8, #0x100417000
  100131368  nop
  10013136c  ldr     x1, [x8, #0x260]
  100131370  adrp    x3, #0x1003b9000
  100131374  add     x3, x3, #0x870                           ; @""
  100131378  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_10013137c:
  10013137c  ldr     x9, [x19, #0x10]                         ; x9 = a0[+0x10]
  100131380  add     x8, x9, #1
  100131384  str     x8, [x19, #0x10]                         ; a0[+0x10] = (a0[+0x10] + 1)
  100131388  ldr     x10, [x19]                               ; x10 = a0[+0x0]
  10013138c  ldrsb   w9, [x10, x9]
  100131390  orr     w20, w20, w9, lsl #28
  100131394  cmp     w9, #0
  100131398  b.ge    loc_100131238                            ; if (w9 >= 0)
  10013139c  mov     w24, #0
  1001313a0  adrp    x9, #0x1003b0000
  1001313a4  ldr     x9, [x9, #0x70]                          ; _NSParseErrorException
  1001313a8  ldr     x21, [x9]                                ; x21 = _NSParseErrorException[+0x0]
  1001313ac  adrp    x9, #0x100417000
  1001313b0  add     x9, x9, #0x260                           ; &@selector(raise:format:)
  1001313b4  ldr     x22, [x9]
  1001313b8  adrp    x25, #0x10041d000
  1001313bc  adrp    x23, #0x1003b9000
  1001313c0  add     x23, x23, #0x870                         ; @""
loc_1001313c4:
  1001313c4  add     x26, x8, #1
  1001313c8  ldr     x8, [x19, #8]                            ; x8 = a0[+0x8]
  1001313cc  cmp     x26, x8
  1001313d0  b.ls    loc_1001313e8                            ; if (((a0[+0x10] + 1) + 1) <=u a0[+0x8])
  1001313d4  ldr     x0, [x25, #0xfc8]                        ; class NSException
  1001313d8  mov     x1, x22
  1001313dc  mov     x2, x21
  1001313e0  mov     x3, x23
  1001313e4  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001313e8:
  1001313e8  ldr     x8, [x19, #0x18]                         ; x8 = a0[+0x18]
  1001313ec  cmp     x26, x8
  1001313f0  b.ls    loc_10013140c                            ; if (((a0[+0x10] + 1) + 1) <=u a0[+0x18])
  1001313f4  str     x8, [x19, #0x10]                         ; a0[+0x10] = a0[+0x18]
  1001313f8  ldr     x0, [x25, #0xfc8]                        ; class NSException
  1001313fc  mov     x1, x22
  100131400  mov     x2, x21
  100131404  mov     x3, x23
  100131408  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_10013140c:
  10013140c  ldr     x9, [x19, #0x10]                         ; x9 = a0[+0x10]
  100131410  add     x8, x9, #1
  100131414  str     x8, [x19, #0x10]                         ; a0[+0x10] = (a0[+0x10] + 1)
  100131418  ldr     x10, [x19]                               ; x10 = a0[+0x0]
  10013141c  ldrsb   w9, [x10, x9]
  100131420  cmp     w9, #0
  100131424  b.ge    loc_100131238                            ; if (w9 >= 0)
  100131428  add     w24, w24, #1
  10013142c  cmp     w24, #4
  100131430  b.le    loc_1001313c4                            ; if ((w24 + 1) <= 4)
  100131434  ldr     x0, [x25, #0xfc8]                        ; class NSException
  100131438  adrp    x3, #0x1003c7000
  10013143c  add     x3, x3, #0x1f0                           ; @"Unable to read varint32"
  100131440  mov     x1, x22
  100131444  mov     x2, x21
  100131448  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Unable to read varint32"]
  10013144c  b       loc_100131238

; ======================================================================
; sub_100131450
; address 0x100131450  size 252  kind sub
; ======================================================================
  100131450  stp     x29, x30, [sp, #-0x10]!
  100131454  mov     x29, sp
  100131458  stp     x20, x19, [sp, #-0x10]!
  10013145c  stp     x22, x21, [sp, #-0x10]!
  100131460  stp     x24, x23, [sp, #-0x10]!
  100131464  mov     x19, x0
  100131468  adrp    x8, #0x100420000
  10013146c  ldrsw   x22, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131470  add     x20, x19, x22
  100131474  mov     x0, x20
  100131478  bl      sub_100131048                            ; sub_100131048(x0, a1, a2, a3)
  10013147c  mov     x21, x0
  100131480  cbz     w21, loc_100131530                       ; if (sub_100131048(x0, a1, a2, a3) == 0)
  100131484  add     x23, x22, x19
  100131488  add     x22, x22, #0x10
  10013148c  ldr     x8, [x19, x22]
  100131490  add     x24, x8, w21, sxtw
  100131494  ldr     x8, [x23, #8]                            ; x8 = a0->state_[+0x8]
  100131498  cmp     x24, x8
  10013149c  b.ls    loc_1001314cc                            ; if ((x8 + sub_100131048(x0, a1, a2, a3)) <=u a0->state_[+0x8])
  1001314a0  adrp    x8, #0x10041d000
  1001314a4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001314a8  adrp    x8, #0x1003b0000
  1001314ac  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001314b0  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001314b4  adrp    x8, #0x100417000
  1001314b8  nop
  1001314bc  ldr     x1, [x8, #0x260]
  1001314c0  adrp    x3, #0x1003b9000
  1001314c4  add     x3, x3, #0x870                           ; @""
  1001314c8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001314cc:
  1001314cc  sxtw    x21, w21
  1001314d0  ldr     x8, [x23, #0x18]                         ; x8 = a0->state_[+0x18]
  1001314d4  cmp     x24, x8
  1001314d8  b.ls    loc_10013150c                            ; if ((x8 + sub_100131048(x0, a1, a2, a3)) <=u a0->state_[+0x18])
  1001314dc  str     x8, [x19, x22]
  1001314e0  adrp    x8, #0x10041d000
  1001314e4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001314e8  adrp    x8, #0x1003b0000
  1001314ec  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001314f0  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001314f4  adrp    x8, #0x100417000
  1001314f8  nop
  1001314fc  ldr     x1, [x8, #0x260]
  100131500  adrp    x3, #0x1003b9000
  100131504  add     x3, x3, #0x870                           ; @""
  100131508  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_10013150c:
  10013150c  ldr     x8, [x19, x22]
  100131510  ldr     x9, [x20]                                ; x9 = a0->state_
  100131514  add     x0, x9, x8
  100131518  mov     x1, x21
  10013151c  bl      sub_10013154c                            ; sub_10013154c((a0->state_ + x8), sub_100131048(x0, a1, a2, a3))
  100131520  ldr     x8, [x19, x22]
  100131524  add     x8, x8, x21
  100131528  str     x8, [x19, x22]
  10013152c  b       loc_100131538
loc_100131530:
  100131530  adrp    x0, #0x1003b9000
  100131534  add     x0, x0, #0x870                           ; @""
loc_100131538:
  100131538  ldp     x24, x23, [sp], #0x10
  10013153c  ldp     x22, x21, [sp], #0x10
  100131540  ldp     x20, x19, [sp], #0x10
  100131544  ldp     x29, x30, [sp], #0x10
  100131548  ret

; ======================================================================
; sub_10013154c
; address 0x10013154c  size 484  kind sub
; ======================================================================
  10013154c  stp     x29, x30, [sp, #-0x10]!
  100131550  mov     x29, sp
  100131554  stp     x20, x19, [sp, #-0x10]!
  100131558  stp     x22, x21, [sp, #-0x10]!
  10013155c  mov     x19, x1
  100131560  mov     x20, x0
  100131564  cbz     x19, loc_100131598                       ; if (a1 == 0)
  100131568  mov     x8, x20
  10013156c  mov     x9, x19
loc_100131570:
  100131570  and     x10, x8, #7
  100131574  cbz     x10, loc_1001315ac                       ; if ((x8 & 7) == 0)
  100131578  ldrsb   w10, [x8]
  10013157c  cmp     w10, #0
  100131580  b.lt    loc_10013164c                            ; if (w10 < 0)
  100131584  add     x8, x8, #1
  100131588  sub     x9, x9, #1
  10013158c  cbnz    x9, loc_100131570                        ; if ((x9 - 1) != 0)
  100131590  mov     x9, #0
  100131594  b       loc_100131638
loc_100131598:
  100131598  mov     x9, #0
  10013159c  mov     x8, x20
  1001315a0  b       loc_100131638
loc_1001315a4:
  1001315a4  add     x8, x8, #0x20
  1001315a8  sub     x9, x9, #0x20
loc_1001315ac:
  1001315ac  cmp     x9, #0x1f
  1001315b0  b.ls    loc_1001315dc                            ; if (x9 <=u 31)
  1001315b4  ldp     x10, x11, [x8]
  1001315b8  orr     x10, x11, x10
  1001315bc  ldp     x11, x12, [x8, #0x10]
  1001315c0  orr     x10, x10, x11
  1001315c4  orr     x10, x10, x12
  1001315c8  and     x10, x10, #0x8080808080808080
  1001315cc  cbz     x10, loc_1001315a4                       ; if (((((x11 | x10) | x11) | x12) & 0x8080808080808080) == 0)
  1001315d0  b       loc_10013164c
loc_1001315d4:
  1001315d4  add     x8, x8, #0x10
  1001315d8  sub     x9, x9, #0x10
loc_1001315dc:
  1001315dc  cmp     x9, #0xf
  1001315e0  b.ls    loc_100131600                            ; if (x9 <=u 15)
  1001315e4  ldp     x10, x11, [x8]
  1001315e8  orr     x10, x11, x10
  1001315ec  and     x10, x10, #0x8080808080808080
  1001315f0  cbz     x10, loc_1001315d4                       ; if (((x11 | x10) & 0x8080808080808080) == 0)
  1001315f4  b       loc_10013164c
loc_1001315f8:
  1001315f8  add     x8, x8, #8
  1001315fc  sub     x9, x9, #8
loc_100131600:
  100131600  cmp     x9, #7
  100131604  b.ls    loc_100131620                            ; if (x9 <=u 7)
  100131608  ldr     x10, [x8]
  10013160c  and     x10, x10, #0x8080808080808080
  100131610  cbz     x10, loc_1001315f8                       ; if ((x10 & 0x8080808080808080) == 0)
  100131614  b       loc_10013164c
loc_100131618:
  100131618  add     x8, x8, #4
  10013161c  sub     x9, x9, #4
loc_100131620:
  100131620  cmp     x9, #3
  100131624  b.ls    loc_100131638                            ; if (x9 <=u 3)
  100131628  ldr     w10, [x8]
  10013162c  and     w10, w10, #0x80808080
  100131630  cbz     w10, loc_100131618                       ; if ((w10 & 0x80808080) == 0)
  100131634  b       loc_10013164c
loc_100131638:
  100131638  cbz     x9, loc_100131680                        ; if (x9 == 0)
  10013163c  sub     x9, x9, #1
  100131640  ldrsb   w10, [x8], #1
  100131644  cmp     w10, #0
  100131648  b.ge    loc_100131638                            ; if (w10 >= 0)
loc_10013164c:
  10013164c  adrp    x8, #0x10041e000
  100131650  ldr     x0, [x8, #0x780]                         ; class TAGPBString
  100131654  adrp    x8, #0x100417000
  100131658  nop
  10013165c  ldr     x1, [x8, #0x2e0]
  100131660  bl      _objc_msgSend                            ; [TAGPBString class]
  100131664  mov     x1, #0
  100131668  mov     x2, #0
  10013166c  bl      _NSAllocateObject                        ; NSAllocateObject([TAGPBString class], 0, 0)
  100131670  mov     x21, x0
  100131674  mov     x0, x19
  100131678  bl      _malloc                                  ; malloc(a1)
  10013167c  b       loc_1001316b4
loc_100131680:
  100131680  adrp    x8, #0x10041e000
  100131684  ldr     x0, [x8, #0x780]                         ; class TAGPBString
  100131688  adrp    x8, #0x100417000
  10013168c  nop
  100131690  ldr     x1, [x8, #0x2e0]
  100131694  bl      _objc_msgSend                            ; [TAGPBString class]
  100131698  mov     x2, #0
  10013169c  mov     x1, x19
  1001316a0  bl      _NSAllocateObject                        ; NSAllocateObject([TAGPBString class], a1, 0)
  1001316a4  mov     x21, x0
  1001316a8  adrp    x8, #0x100420000
  1001316ac  ldrsw   x8, [x8, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  1001316b0  add     x0, x21, x8
loc_1001316b4:
  1001316b4  adrp    x8, #0x100420000
  1001316b8  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  1001316bc  str     x0, [x21, x8]                            ; x21->utf8_ = x0
  1001316c0  mov     x1, x20
  1001316c4  mov     x2, x19
  1001316c8  bl      _memcpy                                  ; memcpy(x0, a0, a1)
  1001316cc  adrp    x8, #0x100420000
  1001316d0  ldrsw   x8, [x8, #0x930]                         ; ivar offset TAGPBString.utf8Len_ (+0x18)
  1001316d4  str     x19, [x21, x8]                           ; x21->utf8Len_ = a1
  1001316d8  adrp    x8, #0x100420000
  1001316dc  ldrsw   x8, [x8, #0x934]                         ; ivar offset TAGPBString.lock_ (+0x20)
  1001316e0  str     wzr, [x21, x8]                           ; x21->lock_ = 0
  1001316e4  cmp     x19, #3
  1001316e8  b.lo    loc_10013171c                            ; if (a1 <u 3)
  1001316ec  adrp    x8, #0x100420000
  1001316f0  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  1001316f4  ldr     x0, [x21, x8]                            ; x0 = x21->utf8_
  1001316f8  adrp    x1, #0x100393000
  1001316fc  add     x1, x1, #0xb6d                           ; "﻿"
  100131700  mov     x2, #3
  100131704  bl      _memcmp                                  ; memcmp(x21->utf8_, "﻿", 3)
  100131708  cbnz    w0, loc_10013171c                        ; if (memcmp(x21->utf8_, "﻿", 3) != 0)
  10013170c  adrp    x8, #0x100420000
  100131710  ldrsw   x8, [x8, #0x938]                         ; ivar offset TAGPBString.hasBOM_ (+0x24)
  100131714  mov     w9, #1
  100131718  strb    w9, [x21, x8]                            ; x21->hasBOM_ = 1
loc_10013171c:
  10013171c  mov     x0, x21
  100131720  ldp     x22, x21, [sp], #0x10
  100131724  ldp     x20, x19, [sp], #0x10
  100131728  ldp     x29, x30, [sp], #0x10
  10013172c  ret

; ======================================================================
; sub_100131730
; address 0x100131730  size 288  kind sub
; ======================================================================
  100131730  stp     x29, x30, [sp, #-0x10]!
  100131734  mov     x29, sp
  100131738  stp     x20, x19, [sp, #-0x10]!
  10013173c  stp     x22, x21, [sp, #-0x10]!
  100131740  stp     x24, x23, [sp, #-0x10]!
  100131744  mov     x19, x0
  100131748  adrp    x8, #0x100420000
  10013174c  ldrsw   x22, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131750  add     x20, x19, x22
  100131754  mov     x0, x20
  100131758  bl      sub_100131048                            ; sub_100131048(x0, a1, a2, a3)
  10013175c  mov     x21, x0
  100131760  cmp     w21, #0
  100131764  b.lt    loc_100131838                            ; if (sub_100131048(x0, a1, a2, a3) < 0)
  100131768  add     x23, x22, x19
  10013176c  add     x22, x22, #0x10
  100131770  ldr     x8, [x19, x22]
  100131774  add     x24, x8, w21, sxtw
  100131778  ldr     x8, [x23, #8]                            ; x8 = a0->state_[+0x8]
  10013177c  cmp     x24, x8
  100131780  b.ls    loc_1001317b0                            ; if ((x8 + sub_100131048(x0, a1, a2, a3)) <=u a0->state_[+0x8])
  100131784  adrp    x8, #0x10041d000
  100131788  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013178c  adrp    x8, #0x1003b0000
  100131790  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131794  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131798  adrp    x8, #0x100417000
  10013179c  nop
  1001317a0  ldr     x1, [x8, #0x260]
  1001317a4  adrp    x3, #0x1003b9000
  1001317a8  add     x3, x3, #0x870                           ; @""
  1001317ac  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001317b0:
  1001317b0  sxtw    x21, w21
  1001317b4  ldr     x8, [x23, #0x18]                         ; x8 = a0->state_[+0x18]
  1001317b8  cmp     x24, x8
  1001317bc  b.ls    loc_1001317f0                            ; if ((x8 + sub_100131048(x0, a1, a2, a3)) <=u a0->state_[+0x18])
  1001317c0  str     x8, [x19, x22]
  1001317c4  adrp    x8, #0x10041d000
  1001317c8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001317cc  adrp    x8, #0x1003b0000
  1001317d0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001317d4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001317d8  adrp    x8, #0x100417000
  1001317dc  nop
  1001317e0  ldr     x1, [x8, #0x260]
  1001317e4  adrp    x3, #0x1003b9000
  1001317e8  add     x3, x3, #0x870                           ; @""
  1001317ec  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001317f0:
  1001317f0  adrp    x8, #0x10041e000
  1001317f4  ldr     x0, [x8, #0x770]                         ; class NSData
  1001317f8  adrp    x8, #0x100416000
  1001317fc  nop
  100131800  ldr     x1, [x8, #0xac8]
  100131804  bl      _objc_msgSend                            ; [NSData alloc]
  100131808  ldr     x8, [x20]                                ; x8 = a0->state_
  10013180c  ldr     x9, [x19, x22]
  100131810  add     x2, x8, x9
  100131814  adrp    x8, #0x10041c000
  100131818  nop
  10013181c  ldr     x1, [x8, #0x548]
  100131820  mov     x3, x21
  100131824  bl      _objc_msgSend                            ; [[NSData alloc] initWithBytes:(a0->state_ + x9) length:sub_100131048(x0, a1, a2, a3)]
  100131828  ldr     x8, [x19, x22]
  10013182c  add     x8, x8, x21
  100131830  str     x8, [x19, x22]
  100131834  b       loc_10013183c
loc_100131838:
  100131838  mov     x0, #0
loc_10013183c:
  10013183c  ldp     x24, x23, [sp], #0x10
  100131840  ldp     x22, x21, [sp], #0x10
  100131844  ldp     x20, x19, [sp], #0x10
  100131848  ldp     x29, x30, [sp], #0x10
  10013184c  ret

; ======================================================================
; sub_100131850
; address 0x100131850  size 136  kind sub
; ======================================================================
  100131850  stp     x29, x30, [sp, #-0x10]!
  100131854  mov     x29, sp
  100131858  stp     x20, x19, [sp, #-0x10]!
  10013185c  stp     x22, x21, [sp, #-0x10]!
  100131860  sub     sp, sp, #0x10
  100131864  mov     x19, x0
  100131868  adrp    x8, #0x100420000
  10013186c  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131870  add     x9, x8, x19
  100131874  ldr     x9, [x9, #0x10]                          ; x9 = a0->state_[+0x10]
  100131878  add     x21, x9, x1
  10013187c  add     x22, x8, #0x18
  100131880  ldr     x20, [x19, x22]
  100131884  cmp     x21, x20
  100131888  b.ls    loc_1001318bc                            ; if ((a0->state_[+0x10] + a1) <=u x20)
  10013188c  adrp    x8, #0x10041d000
  100131890  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131894  adrp    x8, #0x1003b0000
  100131898  ldr     x8, [x8, #0x40]                          ; _NSInvalidArgumentException
  10013189c  ldr     x2, [x8]                                 ; x2 = _NSInvalidArgumentException[+0x0]
  1001318a0  adrp    x8, #0x100417000
  1001318a4  nop
  1001318a8  ldr     x1, [x8, #0x260]
  1001318ac  stp     x21, x20, [sp]
  1001318b0  adrp    x3, #0x1003c6000
  1001318b4  add     x3, x3, #0xd30                           ; @"byteLimit > oldLimit: %ld > %ld"
  1001318b8  bl      _objc_msgSend                            ; [NSException raise:_NSInvalidArgumentException[+0x0] format:@"byteLimit > oldLimit: %ld > %ld", (a0->state_[+0x10] + a1), sp[8]]
loc_1001318bc:
  1001318bc  str     x21, [x19, x22]
  1001318c0  mov     x0, x20
  1001318c4  sub     sp, x29, #0x20
  1001318c8  ldp     x22, x21, [sp], #0x10
  1001318cc  ldp     x20, x19, [sp], #0x10
  1001318d0  ldp     x29, x30, [sp], #0x10
  1001318d4  ret
