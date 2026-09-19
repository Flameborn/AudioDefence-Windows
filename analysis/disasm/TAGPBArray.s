// unit TAGPBArray — 42 functions
//   0x10012d5ac     208  -[TAGPBArray initWithCount:valueType:]
//   0x10012d67c      44  -[TAGPBArray hash]
//   0x10012d6a8      16  -[TAGPBArray data]
//   0x10012d6b8     172  -[TAGPBArray countByEnumeratingWithState:objects:count:]
//   0x10012d764     252  -[TAGPBArray enumerateObjectsUsingBlock:]
//   0x10012d860     256  -[TAGPBArray enumerateInt32sUsingBlock:]
//   0x10012d960     304  -[TAGPBArray isEqual:]
//   0x10012da90      16  -[TAGPBArray copyWithZone:]
//   0x10012daa0     100  -[TAGPBArray mutableCopyWithZone:]
//   0x10012db04     204  -[TAGPBArray dealloc]
//   0x10012dbd0     400  -[TAGPBArray description]
//   0x10012dd60     244  -[TAGPBArray objectAtIndex:]
//   0x10012de54      16  -[TAGPBArray objectAtIndexedSubscript:]
//   0x10012de64     164  -[TAGPBArray firstObject]
//   0x10012df08     164  -[TAGPBArray lastObject]
//   0x10012dfac     248  -[TAGPBArray boolAtIndex:]
//   0x10012e0a4     248  -[TAGPBArray int32AtIndex:]
//   0x10012e19c     248  -[TAGPBArray uint32AtIndex:]
//   0x10012e294     248  -[TAGPBArray int64AtIndex:]
//   0x10012e38c     248  -[TAGPBArray uint64AtIndex:]
//   0x10012e484     248  -[TAGPBArray floatAtIndex:]
//   0x10012e57c     248  -[TAGPBArray doubleAtIndex:]
//   0x10012e674     280  -[TAGPBArray array]
//   0x10012e78c     256  -[TAGPBArray arrayWithConversion:]
//   0x10012e88c     408  -[TAGPBArray arrayByAppendingArray:]
//   0x10012ea24      76  +[TAGPBArray arrayWithValueType:]
//   0x10012ea70     100  +[TAGPBArray arrayWithValues:count:valueType:]
//   0x10012ead4      84  +[TAGPBArray arrayWithArray:valueType:]
//   0x10012eb28      76  +[TAGPBArray arrayWithObject:]
//   0x10012eb74     204  +[TAGPBArray arrayWithObjects:]
//   0x10012ec40      76  +[TAGPBArray arrayWithInt32:]
//   0x10012ec8c     232  +[TAGPBArray arrayWithInt32s:]
//   0x10012ed74      28  -[TAGPBArray initWithValueType:]
//   0x10012ed90     212  -[TAGPBArray initWithValues:count:valueType:]
//   0x10012ee64     876  -[TAGPBArray initWithArray:valueType:]
//   0x10012f1d0      56  -[TAGPBArray initWithObject:]
//   0x10012f208      56  -[TAGPBArray initWithInt32:]
//   0x10012f240     356  -[TAGPBArray valueForKey:]
//   0x10012f3a4     256  -[TAGPBArray setValue:forKey:]
//   0x10012f4a4      16  -[TAGPBArray valueType]
//   0x10012f4b4      16  -[TAGPBArray count]
//   0x10012f4c4     236  sub_10012f4c4

; ======================================================================
; -[TAGPBArray initWithCount:valueType:]
; address 0x10012d5ac  size 208  kind objc
; ======================================================================
  10012d5ac  stp     x29, x30, [sp, #-0x10]!
  10012d5b0  mov     x29, sp
  10012d5b4  stp     x20, x19, [sp, #-0x10]!
  10012d5b8  stp     x22, x21, [sp, #-0x10]!
  10012d5bc  sub     sp, sp, #0x10
  10012d5c0  mov     x21, x3
  10012d5c4  mov     x20, x2
  10012d5c8  str     x0, [sp]
  10012d5cc  adrp    x8, #0x10041f000
  10012d5d0  ldr     x8, [x8, #0x160]
  10012d5d4  str     x8, [sp, #8]
  10012d5d8  adrp    x8, #0x100416000
  10012d5dc  nop
  10012d5e0  ldr     x1, [x8, #0xab8]
  10012d5e4  mov     x0, sp
  10012d5e8  bl      _objc_msgSendSuper2                      ; [super init]
  10012d5ec  mov     x19, x0
  10012d5f0  cbz     x19, loc_10012d664                       ; if (self == 0)
  10012d5f4  adrp    x8, #0x100420000
  10012d5f8  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012d5fc  str     w21, [x19, x8]                           ; self->_valueType = arg2
  10012d600  adrp    x9, #0x100420000
  10012d604  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012d608  str     x20, [x19, x9]                           ; self->_count = arg1
  10012d60c  adrp    x9, #0x100420000
  10012d610  ldrsw   x9, [x9, #0x908]                         ; ivar offset TAGPBArray._capacity (+0x10)
  10012d614  str     x20, [x19, x9]                           ; self->_capacity = arg1
  10012d618  cbz     x20, loc_10012d664                       ; if (arg1 == 0)
  10012d61c  add     x8, x19, x8
  10012d620  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012d624  lsl     x8, x8, #5
  10012d628  adrp    x9, #0x1003b8000
  10012d62c  add     x9, x9, #0x618                           ; &d_1003b8618
  10012d630  ldr     x8, [x9, x8]
  10012d634  mul     x0, x8, x20
  10012d638  bl      _malloc                                  ; malloc((x8 * arg1))
  10012d63c  adrp    x8, #0x100420000
  10012d640  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012d644  str     x0, [x19, x8]                            ; self->_data = malloc((x8 * arg1))
  10012d648  cbnz    x0, loc_10012d664                        ; if (malloc((x8 * arg1)) != 0)
  10012d64c  adrp    x8, #0x10041b000
  10012d650  nop
  10012d654  ldr     x1, [x8, #0xd70]
  10012d658  mov     x0, x19
  10012d65c  bl      _objc_msgSend                            ; [self release]
  10012d660  mov     x19, #0
loc_10012d664:
  10012d664  mov     x0, x19
  10012d668  sub     sp, x29, #0x20
  10012d66c  ldp     x22, x21, [sp], #0x10
  10012d670  ldp     x20, x19, [sp], #0x10
  10012d674  ldp     x29, x30, [sp], #0x10
  10012d678  ret

; ======================================================================
; -[TAGPBArray hash]
; address 0x10012d67c  size 44  kind objc
; ======================================================================
  10012d67c  adrp    x8, #0x100420000
  10012d680  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012d684  ldr     w8, [x0, x8]                             ; w8 = self->_valueType
  10012d688  mov     w9, #0x10000
  10012d68c  movk    w9, #0x86a0
  10012d690  mul     w8, w8, w9
  10012d694  adrp    x9, #0x100420000
  10012d698  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012d69c  ldr     x9, [x0, x9]                             ; x9 = self->_count
  10012d6a0  add     x0, x9, w8, uxtw
  10012d6a4  ret

; ======================================================================
; -[TAGPBArray data]
; address 0x10012d6a8  size 16  kind objc
; ======================================================================
  10012d6a8  adrp    x8, #0x100420000
  10012d6ac  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012d6b0  ldr     x0, [x0, x8]                             ; x0 = self->_data
  10012d6b4  ret

; ======================================================================
; -[TAGPBArray countByEnumeratingWithState:objects:count:]
; address 0x10012d6b8  size 172  kind objc
; ======================================================================
  10012d6b8  stp     x29, x30, [sp, #-0x10]!
  10012d6bc  mov     x29, sp
  10012d6c0  stp     x20, x19, [sp, #-0x10]!
  10012d6c4  sub     sp, sp, #0x10
  10012d6c8  mov     x20, x2
  10012d6cc  mov     x19, x0
  10012d6d0  ldr     x8, [x20]                                ; x8 = arg1[+0x0]
  10012d6d4  cbz     x8, loc_10012d6e0                        ; if (arg1[+0x0] == 0)
  10012d6d8  mov     x0, #0
  10012d6dc  b       loc_10012d71c
loc_10012d6e0:
  10012d6e0  adrp    x8, #0x100420000
  10012d6e4  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012d6e8  ldr     w8, [x19, x8]                            ; w8 = self->_valueType
  10012d6ec  cbnz    w8, loc_10012d72c                        ; if (self->_valueType != 0)
loc_10012d6f0:
  10012d6f0  add     x8, x20, #0x18
  10012d6f4  str     x8, [x20, #0x10]                         ; arg1[+0x10] = (arg1 + 24)
  10012d6f8  adrp    x8, #0x100420000
  10012d6fc  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012d700  ldr     x8, [x19, x8]                            ; x8 = self->_data
  10012d704  str     x8, [x20, #8]                            ; arg1[+0x8] = self->_data
  10012d708  adrp    x8, #0x100420000
  10012d70c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012d710  ldr     x9, [x19, x8]                            ; x9 = self->_count
  10012d714  str     x9, [x20]                                ; arg1[+0x0] = self->_count
  10012d718  ldr     x0, [x19, x8]                            ; x0 = self->_count
loc_10012d71c:
  10012d71c  sub     sp, x29, #0x10
  10012d720  ldp     x20, x19, [sp], #0x10
  10012d724  ldp     x29, x30, [sp], #0x10
  10012d728  ret
loc_10012d72c:
  10012d72c  adrp    x8, #0x10041d000
  10012d730  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012d734  adrp    x8, #0x100417000
  10012d738  nop
  10012d73c  ldr     x1, [x8, #0x260]
  10012d740  adrp    x8, #0x100393000
  10012d744  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012d748  adrp    x2, #0x1003c6000
  10012d74c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012d750  str     x8, [sp]
  10012d754  adrp    x3, #0x1003c6000
  10012d758  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012d75c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012d760  b       loc_10012d6f0

; ======================================================================
; -[TAGPBArray enumerateObjectsUsingBlock:]
; address 0x10012d764  size 252  kind objc
; ======================================================================
  10012d764  stp     x29, x30, [sp, #-0x10]!
  10012d768  mov     x29, sp
  10012d76c  stp     x20, x19, [sp, #-0x10]!
  10012d770  stp     x22, x21, [sp, #-0x10]!
  10012d774  stp     x24, x23, [sp, #-0x10]!
  10012d778  stp     x26, x25, [sp, #-0x10]!
  10012d77c  sub     sp, sp, #0x10
  10012d780  mov     x19, x2
  10012d784  mov     x20, x0
  10012d788  adrp    x8, #0x100420000
  10012d78c  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012d790  ldr     w8, [x20, x22]                           ; w8 = self->_valueType
  10012d794  cbnz    w8, loc_10012d828                        ; if (self->_valueType != 0)
loc_10012d798:
  10012d798  strb    wzr, [sp, #0xf]
  10012d79c  adrp    x8, #0x100420000
  10012d7a0  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012d7a4  ldr     x8, [x20, x23]                           ; x8 = self->_count
  10012d7a8  cbz     x8, loc_10012d80c                        ; if (self->_count == 0)
  10012d7ac  mov     x21, #0
  10012d7b0  adrp    x8, #0x100420000
  10012d7b4  ldrsw   x24, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012d7b8  add     x25, x20, x22
  10012d7bc  adrp    x26, #0x1003b8000
  10012d7c0  add     x26, x26, #0x618                         ; &d_1003b8618
  10012d7c4  add     x22, sp, #0xf
loc_10012d7c8:
  10012d7c8  ldr     x8, [x20, x24]                           ; x8 = self->_data
  10012d7cc  ldr     w9, [x25]                                ; w9 = self->_valueType
  10012d7d0  lsl     x9, x9, #5
  10012d7d4  ldr     x9, [x26, x9]
  10012d7d8  mul     x9, x9, x21
  10012d7dc  ldr     x1, [x8, x9]
  10012d7e0  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10012d7e4  mov     x0, x19
  10012d7e8  mov     x2, x21
  10012d7ec  mov     x3, x22
  10012d7f0  blr     x8                                       ; call arg1[+0x10]
  10012d7f4  add     x21, x21, #1
  10012d7f8  ldr     x8, [x20, x23]                           ; x8 = self->_count
  10012d7fc  ldrb    w9, [sp, #0xf]
  10012d800  cmp     x21, x8
  10012d804  ccmp    w9, #0, #0, lo
  10012d808  b.eq    loc_10012d7c8                            ; if (flags ==)
loc_10012d80c:
  10012d80c  sub     sp, x29, #0x40
  10012d810  ldp     x26, x25, [sp], #0x10
  10012d814  ldp     x24, x23, [sp], #0x10
  10012d818  ldp     x22, x21, [sp], #0x10
  10012d81c  ldp     x20, x19, [sp], #0x10
  10012d820  ldp     x29, x30, [sp], #0x10
  10012d824  ret
loc_10012d828:
  10012d828  adrp    x8, #0x10041d000
  10012d82c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012d830  adrp    x8, #0x100417000
  10012d834  nop
  10012d838  ldr     x1, [x8, #0x260]
  10012d83c  adrp    x8, #0x100393000
  10012d840  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012d844  adrp    x2, #0x1003c6000
  10012d848  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012d84c  str     x8, [sp]
  10012d850  adrp    x3, #0x1003c6000
  10012d854  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012d858  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012d85c  b       loc_10012d798

; ======================================================================
; -[TAGPBArray enumerateInt32sUsingBlock:]
; address 0x10012d860  size 256  kind objc
; ======================================================================
  10012d860  stp     x29, x30, [sp, #-0x10]!
  10012d864  mov     x29, sp
  10012d868  stp     x20, x19, [sp, #-0x10]!
  10012d86c  stp     x22, x21, [sp, #-0x10]!
  10012d870  stp     x24, x23, [sp, #-0x10]!
  10012d874  stp     x26, x25, [sp, #-0x10]!
  10012d878  sub     sp, sp, #0x10
  10012d87c  mov     x19, x2
  10012d880  mov     x20, x0
  10012d884  adrp    x8, #0x100420000
  10012d888  ldrsw   x22, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012d88c  ldr     w8, [x20, x22]                           ; w8 = self->_valueType
  10012d890  cmp     w8, #2
  10012d894  b.ne    loc_10012d928                            ; if (self->_valueType != 2)
loc_10012d898:
  10012d898  strb    wzr, [sp, #0xf]
  10012d89c  adrp    x8, #0x100420000
  10012d8a0  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012d8a4  ldr     x8, [x20, x23]                           ; x8 = self->_count
  10012d8a8  cbz     x8, loc_10012d90c                        ; if (self->_count == 0)
  10012d8ac  mov     x21, #0
  10012d8b0  adrp    x8, #0x100420000
  10012d8b4  ldrsw   x24, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012d8b8  add     x25, x20, x22
  10012d8bc  adrp    x26, #0x1003b8000
  10012d8c0  add     x26, x26, #0x618                         ; &d_1003b8618
  10012d8c4  add     x22, sp, #0xf
loc_10012d8c8:
  10012d8c8  ldr     x8, [x20, x24]                           ; x8 = self->_data
  10012d8cc  ldr     w9, [x25]                                ; w9 = self->_valueType
  10012d8d0  lsl     x9, x9, #5
  10012d8d4  ldr     x9, [x26, x9]
  10012d8d8  mul     x9, x9, x21
  10012d8dc  ldr     w1, [x8, x9]
  10012d8e0  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10012d8e4  mov     x0, x19
  10012d8e8  mov     x2, x21
  10012d8ec  mov     x3, x22
  10012d8f0  blr     x8                                       ; call arg1[+0x10]
  10012d8f4  add     x21, x21, #1
  10012d8f8  ldr     x8, [x20, x23]                           ; x8 = self->_count
  10012d8fc  ldrb    w9, [sp, #0xf]
  10012d900  cmp     x21, x8
  10012d904  ccmp    w9, #0, #0, lo
  10012d908  b.eq    loc_10012d8c8                            ; if (flags ==)
loc_10012d90c:
  10012d90c  sub     sp, x29, #0x40
  10012d910  ldp     x26, x25, [sp], #0x10
  10012d914  ldp     x24, x23, [sp], #0x10
  10012d918  ldp     x22, x21, [sp], #0x10
  10012d91c  ldp     x20, x19, [sp], #0x10
  10012d920  ldp     x29, x30, [sp], #0x10
  10012d924  ret
loc_10012d928:
  10012d928  adrp    x8, #0x10041d000
  10012d92c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012d930  adrp    x8, #0x100417000
  10012d934  nop
  10012d938  ldr     x1, [x8, #0x260]
  10012d93c  adrp    x8, #0x100393000
  10012d940  add     x8, x8, #0x7e7                           ; "TAGPBArrayValueTypeInt32"
  10012d944  adrp    x2, #0x1003c6000
  10012d948  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012d94c  str     x8, [sp]
  10012d950  adrp    x3, #0x1003c6000
  10012d954  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012d958  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt32"]
  10012d95c  b       loc_10012d898

; ======================================================================
; -[TAGPBArray isEqual:]
; address 0x10012d960  size 304  kind objc
; ======================================================================
  10012d960  stp     x29, x30, [sp, #-0x10]!
  10012d964  mov     x29, sp
  10012d968  stp     x20, x19, [sp, #-0x10]!
  10012d96c  stp     x22, x21, [sp, #-0x10]!
  10012d970  stp     x24, x23, [sp, #-0x10]!
  10012d974  mov     x19, x2
  10012d978  mov     x20, x0
  10012d97c  cmp     x19, x20
  10012d980  b.eq    loc_10012da6c                            ; if (arg1 == self)
  10012d984  adrp    x8, #0x10041e000
  10012d988  ldr     x0, [x8, #0x760]                         ; class TAGPBArray
  10012d98c  adrp    x8, #0x100417000
  10012d990  nop
  10012d994  ldr     x1, [x8, #0x2e0]
  10012d998  bl      _objc_msgSend                            ; [TAGPBArray class]
  10012d99c  mov     x2, x0
  10012d9a0  adrp    x8, #0x100417000
  10012d9a4  nop
  10012d9a8  ldr     x1, [x8, #0x3b8]
  10012d9ac  mov     x0, x19
  10012d9b0  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGPBArray class]]
  10012d9b4  cbz     w0, loc_10012da74                        ; if ([arg1 isKindOfClass:[TAGPBArray class]] == 0)
  10012d9b8  adrp    x8, #0x100420000
  10012d9bc  ldrsw   x9, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012d9c0  add     x8, x20, x9
  10012d9c4  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012d9c8  ldr     w9, [x19, x9]                            ; w9 = arg1->_valueType
  10012d9cc  cmp     w8, w9
  10012d9d0  b.ne    loc_10012da74                            ; if (self->_valueType != arg1->_valueType)
  10012d9d4  adrp    x9, #0x100420000
  10012d9d8  ldrsw   x22, [x9, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012d9dc  ldr     x9, [x20, x22]                           ; x9 = self->_count
  10012d9e0  ldr     x10, [x19, x22]                          ; x10 = arg1->_count
  10012d9e4  cmp     x9, x10
  10012d9e8  b.ne    loc_10012da74                            ; if (self->_count != arg1->_count)
  10012d9ec  cbz     w8, loc_10012da24                        ; if (self->_valueType == 0)
  10012d9f0  adrp    x10, #0x100420000
  10012d9f4  ldrsw   x10, [x10, #0x90c]                       ; ivar offset TAGPBArray._data (+0x20)
  10012d9f8  ldr     x0, [x20, x10]                           ; x0 = self->_data
  10012d9fc  ldr     x1, [x19, x10]                           ; x1 = arg1->_data
  10012da00  lsl     x8, x8, #5
  10012da04  adrp    x10, #0x1003b8000
  10012da08  add     x10, x10, #0x618                         ; &d_1003b8618
  10012da0c  ldr     x8, [x10, x8]
  10012da10  mul     x2, x8, x9
  10012da14  bl      _memcmp                                  ; memcmp(self->_data, arg1->_data, (x8 * self->_count))
  10012da18  cmp     w0, #0
  10012da1c  cset    w8, eq
  10012da20  b       loc_10012da78
loc_10012da24:
  10012da24  cbz     x9, loc_10012da6c                        ; if (self->_count == 0)
  10012da28  mov     x23, #0
  10012da2c  adrp    x8, #0x100420000
  10012da30  ldrsw   x24, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012da34  adrp    x8, #0x100417000
  10012da38  add     x8, x8, #0x218                           ; &@selector(isEqual:)
  10012da3c  ldr     x21, [x8]
loc_10012da40:
  10012da40  ldr     x8, [x20, x24]                           ; x8 = self->_data
  10012da44  ldr     x0, [x8, x23, lsl #3]
  10012da48  ldr     x8, [x19, x24]                           ; x8 = arg1->_data
  10012da4c  ldr     x2, [x8, x23, lsl #3]
  10012da50  mov     x1, x21
  10012da54  bl      _objc_msgSend                            ; [x0 isEqual:x2]
  10012da58  tbz     w0, #0, loc_10012da74                    ; if (!([x0 isEqual:x2] & 1))
  10012da5c  add     x23, x23, #1
  10012da60  ldr     x8, [x20, x22]                           ; x8 = self->_count
  10012da64  cmp     x23, x8
  10012da68  b.lo    loc_10012da40                            ; if ((x23 + 1) <u self->_count)
loc_10012da6c:
  10012da6c  mov     w8, #1
  10012da70  b       loc_10012da78
loc_10012da74:
  10012da74  mov     w8, #0
loc_10012da78:
  10012da78  and     w0, w8, #1
  10012da7c  ldp     x24, x23, [sp], #0x10
  10012da80  ldp     x22, x21, [sp], #0x10
  10012da84  ldp     x20, x19, [sp], #0x10
  10012da88  ldp     x29, x30, [sp], #0x10
  10012da8c  ret

; ======================================================================
; -[TAGPBArray copyWithZone:]
; address 0x10012da90  size 16  kind objc
; ======================================================================
  10012da90  adrp    x8, #0x10041b000
  10012da94  nop
  10012da98  ldr     x1, [x8, #0xdb8]
  10012da9c  b       _objc_msgSend                            ; [self retain]

; ======================================================================
; -[TAGPBArray mutableCopyWithZone:]
; address 0x10012daa0  size 100  kind objc
; ======================================================================
  10012daa0  stp     x29, x30, [sp, #-0x10]!
  10012daa4  mov     x29, sp
  10012daa8  stp     x20, x19, [sp, #-0x10]!
  10012daac  mov     x19, x0
  10012dab0  adrp    x8, #0x10041e000
  10012dab4  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10012dab8  adrp    x8, #0x100416000
  10012dabc  nop
  10012dac0  ldr     x1, [x8, #0xab0]
  10012dac4  bl      _objc_msgSend                            ; [TAGPBMutableArray allocWithZone:arg1]
  10012dac8  adrp    x8, #0x100420000
  10012dacc  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012dad0  ldr     x2, [x19, x8]                            ; x2 = self->_data
  10012dad4  adrp    x8, #0x100420000
  10012dad8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012dadc  ldr     x3, [x19, x8]                            ; x3 = self->_count
  10012dae0  adrp    x8, #0x100420000
  10012dae4  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012dae8  ldr     w4, [x19, x8]                            ; w4 = self->_valueType
  10012daec  adrp    x8, #0x10041c000
  10012daf0  nop
  10012daf4  ldr     x1, [x8, #0x4e0]
  10012daf8  ldp     x20, x19, [sp], #0x10
  10012dafc  ldp     x29, x30, [sp], #0x10
  10012db00  b       _objc_msgSend                            ; [[TAGPBMutableArray allocWithZone:arg1] initWithValues:self->_data count:self->_count valueType:self->_valueType]

; ======================================================================
; -[TAGPBArray dealloc]
; address 0x10012db04  size 204  kind objc
; ======================================================================
  10012db04  stp     x29, x30, [sp, #-0x10]!
  10012db08  mov     x29, sp
  10012db0c  stp     x20, x19, [sp, #-0x10]!
  10012db10  stp     x22, x21, [sp, #-0x10]!
  10012db14  stp     x24, x23, [sp, #-0x10]!
  10012db18  sub     sp, sp, #0x10
  10012db1c  mov     x19, x0
  10012db20  adrp    x22, #0x100420000
  10012db24  ldrsw   x21, [x22, #0x90c]                       ; ivar offset TAGPBArray._data (+0x20)
  10012db28  ldr     x0, [x19, x21]                           ; x0 = self->_data
  10012db2c  cbz     x0, loc_10012db94                        ; if (self->_data == 0)
  10012db30  adrp    x8, #0x100420000
  10012db34  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012db38  ldr     w8, [x19, x8]                            ; w8 = self->_valueType
  10012db3c  cbnz    w8, loc_10012db8c                        ; if (self->_valueType != 0)
  10012db40  adrp    x8, #0x100420000
  10012db44  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012db48  ldr     x8, [x19, x23]                           ; x8 = self->_count
  10012db4c  cbz     x8, loc_10012db8c                        ; if (self->_count == 0)
  10012db50  mov     x24, #0
  10012db54  adrp    x8, #0x10041b000
  10012db58  add     x8, x8, #0xd70                           ; &@selector(release)
  10012db5c  ldr     x20, [x8]
  10012db60  b       loc_10012db68
loc_10012db64:
  10012db64  ldr     x0, [x19, x21]                           ; x0 = self->_data
loc_10012db68:
  10012db68  ldr     x0, [x0, x24, lsl #3]
  10012db6c  mov     x1, x20
  10012db70  bl      _objc_msgSend                            ; [x0 release]
  10012db74  add     x24, x24, #1
  10012db78  ldr     x8, [x19, x23]                           ; x8 = self->_count
  10012db7c  cmp     x24, x8
  10012db80  b.lo    loc_10012db64                            ; if ((x24 + 1) <u self->_count)
  10012db84  ldrsw   x8, [x22, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012db88  ldr     x0, [x19, x8]                            ; x0 = self->_data
loc_10012db8c:
  10012db8c  bl      _free                                    ; free(self->_data)
  10012db90  str     xzr, [x19, x21]                          ; self->_data = 0
loc_10012db94:
  10012db94  str     x19, [sp]
  10012db98  adrp    x8, #0x10041f000
  10012db9c  ldr     x8, [x8, #0x160]
  10012dba0  str     x8, [sp, #8]
  10012dba4  adrp    x8, #0x100416000
  10012dba8  nop
  10012dbac  ldr     x1, [x8, #0xfc8]
  10012dbb0  mov     x0, sp
  10012dbb4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10012dbb8  sub     sp, x29, #0x30
  10012dbbc  ldp     x24, x23, [sp], #0x10
  10012dbc0  ldp     x22, x21, [sp], #0x10
  10012dbc4  ldp     x20, x19, [sp], #0x10
  10012dbc8  ldp     x29, x30, [sp], #0x10
  10012dbcc  ret

; ======================================================================
; -[TAGPBArray description]
; address 0x10012dbd0  size 400  kind objc
; ======================================================================
  10012dbd0  stp     x29, x30, [sp, #-0x10]!
  10012dbd4  mov     x29, sp
  10012dbd8  stp     x20, x19, [sp, #-0x10]!
  10012dbdc  stp     x22, x21, [sp, #-0x10]!
  10012dbe0  stp     x24, x23, [sp, #-0x10]!
  10012dbe4  stp     x26, x25, [sp, #-0x10]!
  10012dbe8  stp     x28, x27, [sp, #-0x10]!
  10012dbec  sub     sp, sp, #0x20
  10012dbf0  mov     x19, x0
  10012dbf4  adrp    x8, #0x100420000
  10012dbf8  ldrsw   x24, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012dbfc  add     x8, x19, x24
  10012dc00  ldr     w22, [x8]                                ; w22 = self->_valueType
  10012dc04  adrp    x8, #0x10041e000
  10012dc08  ldr     x20, [x8, #0xd8]                         ; class NSMutableString
  10012dc0c  adrp    x8, #0x100417000
  10012dc10  nop
  10012dc14  ldr     x1, [x8, #0x2e0]
  10012dc18  bl      _objc_msgSend                            ; [self class]
  10012dc1c  adrp    x8, #0x100416000
  10012dc20  nop
  10012dc24  ldr     x1, [x8, #0xee8]
  10012dc28  stp     x0, x19, [sp]
  10012dc2c  adrp    x2, #0x1003c6000
  10012dc30  add     x2, x2, #0xb90                           ; @"<%@ %p> { "
  10012dc34  mov     x0, x20
  10012dc38  bl      _objc_msgSend                            ; [NSMutableString stringWithFormat:@"<%@ %p> { ", [self class], self]
  10012dc3c  mov     x20, x0
  10012dc40  adrp    x8, #0x100420000
  10012dc44  ldrsw   x25, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012dc48  ldr     x8, [x19, x25]                           ; x8 = self->_count
  10012dc4c  cbz     x8, loc_10012dd20                        ; if (self->_count == 0)
  10012dc50  mov     x21, #0
  10012dc54  adrp    x8, #0x1003b8000
  10012dc58  add     x8, x8, #0x618                           ; &d_1003b8618
  10012dc5c  add     x8, x8, x22, lsl #5
  10012dc60  ldr     x26, [x8, #0x18]                         ; x26 = (&d_1003b8618 + (self->_valueType << 5))[+0x18]
  10012dc64  adrp    x8, #0x100420000
  10012dc68  ldrsw   x27, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012dc6c  adrp    x8, #0x100417000
  10012dc70  add     x8, x8, #0xd88                           ; &@selector(appendFormat:)
  10012dc74  ldr     x22, [x8]
  10012dc78  adrp    x23, #0x1003c6000
  10012dc7c  add     x23, x23, #0xc30                         ; @"%@%@%@"
  10012dc80  adrp    x28, #0x1003b9000
  10012dc84  add     x28, x28, #0x870                         ; @""
loc_10012dc88:
  10012dc88  ldr     x0, [x19, x27]                           ; x0 = self->_data
  10012dc8c  mov     x1, x21
  10012dc90  blr     x26                                      ; call (&d_1003b8618 + (self->_valueType << 5))[+0x18]
  10012dc94  ldr     w8, [x19, x24]                           ; w8 = self->_valueType
  10012dc98  cbnz    w8, loc_10012dcdc                        ; if (self->_valueType != 0)
  10012dc9c  cmp     x21, #0
  10012dca0  adrp    x8, #0x1003c6000
  10012dca4  add     x8, x8, #0xbf0                           ; @"	"
  10012dca8  adrp    x9, #0x1003c6000
  10012dcac  add     x9, x9, #0xbd0                           ; @"\n	"
  10012dcb0  csel    x9, x9, x8, eq
  10012dcb4  ldr     x8, [x19, x25]                           ; x8 = self->_count
  10012dcb8  sub     x8, x8, #1
  10012dcbc  cmp     x21, x8
  10012dcc0  adrp    x8, #0x1003c2000
  10012dcc4  add     x8, x8, #0xbd0                           ; @"\n"
  10012dcc8  adrp    x10, #0x1003c6000
  10012dccc  add     x10, x10, #0xc10                         ; @",\n"
  10012dcd0  csel    x8, x8, x10, eq
  10012dcd4  csel    x9, x9, x9, eq
  10012dcd8  b       loc_10012dcf8
loc_10012dcdc:
  10012dcdc  ldr     x8, [x19, x25]                           ; x8 = self->_count
  10012dce0  sub     x8, x8, #1
  10012dce4  cmp     x21, x8
  10012dce8  adrp    x8, #0x1003c6000
  10012dcec  add     x8, x8, #0xbb0                           ; @", "
  10012dcf0  csel    x8, x8, x28, ne
  10012dcf4  csel    x9, x28, x28, ne
loc_10012dcf8:
  10012dcf8  stp     x0, x8, [sp, #8]
  10012dcfc  str     x9, [sp]
  10012dd00  mov     x0, x20
  10012dd04  mov     x1, x22
  10012dd08  mov     x2, x23
  10012dd0c  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p> { ", [self class], self] appendFormat:@"%@%@%@", sp[0], (&d_1003b8618 + (self->_valueType << 5))[+0x18](…), sp[16]]
  10012dd10  add     x21, x21, #1
  10012dd14  ldr     x8, [x19, x25]                           ; x8 = self->_count
  10012dd18  cmp     x21, x8
  10012dd1c  b.lo    loc_10012dc88                            ; if ((x21 + 1) <u self->_count)
loc_10012dd20:
  10012dd20  adrp    x8, #0x100417000
  10012dd24  nop
  10012dd28  ldr     x1, [x8, #0xd88]
  10012dd2c  adrp    x2, #0x1003c6000
  10012dd30  add     x2, x2, #0xc50                           ; @" }"
  10012dd34  mov     x0, x20
  10012dd38  bl      _objc_msgSend                            ; [[NSMutableString stringWithFormat:@"<%@ %p> { ", [self class], self] appendFormat:@" }"]
  10012dd3c  mov     x0, x20
  10012dd40  sub     sp, x29, #0x50
  10012dd44  ldp     x28, x27, [sp], #0x10
  10012dd48  ldp     x26, x25, [sp], #0x10
  10012dd4c  ldp     x24, x23, [sp], #0x10
  10012dd50  ldp     x22, x21, [sp], #0x10
  10012dd54  ldp     x20, x19, [sp], #0x10
  10012dd58  ldp     x29, x30, [sp], #0x10
  10012dd5c  ret

; ======================================================================
; -[TAGPBArray objectAtIndex:]
; address 0x10012dd60  size 244  kind objc
; ======================================================================
  10012dd60  stp     x29, x30, [sp, #-0x10]!
  10012dd64  mov     x29, sp
  10012dd68  stp     x20, x19, [sp, #-0x10]!
  10012dd6c  stp     x22, x21, [sp, #-0x10]!
  10012dd70  sub     sp, sp, #0x10
  10012dd74  mov     x19, x2
  10012dd78  mov     x20, x0
  10012dd7c  adrp    x8, #0x100420000
  10012dd80  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012dd84  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012dd88  cmp     x8, x19
  10012dd8c  b.ls    loc_10012dddc                            ; if (self->_count <=u arg1)
loc_10012dd90:
  10012dd90  adrp    x21, #0x100420000
  10012dd94  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012dd98  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012dd9c  cbnz    w8, loc_10012de10                        ; if (self->_valueType != 0)
  10012dda0  mov     x8, #0
loc_10012dda4:
  10012dda4  adrp    x9, #0x100420000
  10012dda8  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012ddac  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012ddb0  lsl     x8, x8, #5
  10012ddb4  adrp    x10, #0x1003b8000
  10012ddb8  add     x10, x10, #0x618                         ; &d_1003b8618
  10012ddbc  ldr     x8, [x10, x8]
  10012ddc0  mul     x8, x8, x19
  10012ddc4  ldr     x0, [x9, x8]
  10012ddc8  sub     sp, x29, #0x20
  10012ddcc  ldp     x22, x21, [sp], #0x10
  10012ddd0  ldp     x20, x19, [sp], #0x10
  10012ddd4  ldp     x29, x30, [sp], #0x10
  10012ddd8  ret
loc_10012dddc:
  10012dddc  adrp    x9, #0x10041d000
  10012dde0  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012dde4  adrp    x9, #0x1003b0000
  10012dde8  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012ddec  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012ddf0  adrp    x9, #0x100417000
  10012ddf4  nop
  10012ddf8  ldr     x1, [x9, #0x260]
  10012ddfc  stp     x19, x8, [sp]
  10012de00  adrp    x3, #0x1003c6000
  10012de04  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012de08  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012de0c  b       loc_10012dd90
loc_10012de10:
  10012de10  adrp    x8, #0x10041d000
  10012de14  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012de18  adrp    x8, #0x100417000
  10012de1c  nop
  10012de20  ldr     x1, [x8, #0x260]
  10012de24  adrp    x8, #0x100393000
  10012de28  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012de2c  adrp    x2, #0x1003c6000
  10012de30  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012de34  str     x8, [sp]
  10012de38  adrp    x3, #0x1003c6000
  10012de3c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012de40  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012de44  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012de48  add     x8, x20, x8
  10012de4c  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012de50  b       loc_10012dda4

; ======================================================================
; -[TAGPBArray objectAtIndexedSubscript:]
; address 0x10012de54  size 16  kind objc
; ======================================================================
  10012de54  adrp    x8, #0x100416000
  10012de58  nop
  10012de5c  ldr     x1, [x8, #0xc30]
  10012de60  b       _objc_msgSend                            ; [self objectAtIndex:arg1]

; ======================================================================
; -[TAGPBArray firstObject]
; address 0x10012de64  size 164  kind objc
; ======================================================================
  10012de64  stp     x29, x30, [sp, #-0x10]!
  10012de68  mov     x29, sp
  10012de6c  stp     x20, x19, [sp, #-0x10]!
  10012de70  sub     sp, sp, #0x10
  10012de74  mov     x19, x0
  10012de78  adrp    x8, #0x100420000
  10012de7c  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012de80  ldr     w8, [x19, x8]                            ; w8 = self->_valueType
  10012de84  cbnz    w8, loc_10012ded0                        ; if (self->_valueType != 0)
loc_10012de88:
  10012de88  adrp    x8, #0x100420000
  10012de8c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012de90  ldr     x8, [x19, x8]                            ; x8 = self->_count
  10012de94  cbz     x8, loc_10012debc                        ; if (self->_count == 0)
  10012de98  mov     x2, #0
  10012de9c  adrp    x8, #0x100416000
  10012dea0  nop
  10012dea4  ldr     x1, [x8, #0xc30]
  10012dea8  mov     x0, x19
  10012deac  sub     sp, x29, #0x10
  10012deb0  ldp     x20, x19, [sp], #0x10
  10012deb4  ldp     x29, x30, [sp], #0x10
  10012deb8  b       _objc_msgSend                            ; [self objectAtIndex:0]
loc_10012debc:
  10012debc  mov     x0, #0
  10012dec0  sub     sp, x29, #0x10
  10012dec4  ldp     x20, x19, [sp], #0x10
  10012dec8  ldp     x29, x30, [sp], #0x10
  10012decc  ret
loc_10012ded0:
  10012ded0  adrp    x8, #0x10041d000
  10012ded4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012ded8  adrp    x8, #0x100417000
  10012dedc  nop
  10012dee0  ldr     x1, [x8, #0x260]
  10012dee4  adrp    x8, #0x100393000
  10012dee8  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012deec  adrp    x2, #0x1003c6000
  10012def0  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012def4  str     x8, [sp]
  10012def8  adrp    x3, #0x1003c6000
  10012defc  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012df00  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012df04  b       loc_10012de88

; ======================================================================
; -[TAGPBArray lastObject]
; address 0x10012df08  size 164  kind objc
; ======================================================================
  10012df08  stp     x29, x30, [sp, #-0x10]!
  10012df0c  mov     x29, sp
  10012df10  stp     x20, x19, [sp, #-0x10]!
  10012df14  sub     sp, sp, #0x10
  10012df18  mov     x19, x0
  10012df1c  adrp    x8, #0x100420000
  10012df20  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012df24  ldr     w8, [x19, x8]                            ; w8 = self->_valueType
  10012df28  cbnz    w8, loc_10012df74                        ; if (self->_valueType != 0)
loc_10012df2c:
  10012df2c  adrp    x8, #0x100420000
  10012df30  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012df34  ldr     x8, [x19, x8]                            ; x8 = self->_count
  10012df38  cbz     x8, loc_10012df60                        ; if (self->_count == 0)
  10012df3c  sub     x2, x8, #1
  10012df40  adrp    x8, #0x100416000
  10012df44  nop
  10012df48  ldr     x1, [x8, #0xc30]
  10012df4c  mov     x0, x19
  10012df50  sub     sp, x29, #0x10
  10012df54  ldp     x20, x19, [sp], #0x10
  10012df58  ldp     x29, x30, [sp], #0x10
  10012df5c  b       _objc_msgSend                            ; [self objectAtIndex:(self->_count - 1)]
loc_10012df60:
  10012df60  mov     x0, #0
  10012df64  sub     sp, x29, #0x10
  10012df68  ldp     x20, x19, [sp], #0x10
  10012df6c  ldp     x29, x30, [sp], #0x10
  10012df70  ret
loc_10012df74:
  10012df74  adrp    x8, #0x10041d000
  10012df78  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012df7c  adrp    x8, #0x100417000
  10012df80  nop
  10012df84  ldr     x1, [x8, #0x260]
  10012df88  adrp    x8, #0x100393000
  10012df8c  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012df90  adrp    x2, #0x1003c6000
  10012df94  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012df98  str     x8, [sp]
  10012df9c  adrp    x3, #0x1003c6000
  10012dfa0  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012dfa4  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012dfa8  b       loc_10012df2c

; ======================================================================
; -[TAGPBArray boolAtIndex:]
; address 0x10012dfac  size 248  kind objc
; ======================================================================
  10012dfac  stp     x29, x30, [sp, #-0x10]!
  10012dfb0  mov     x29, sp
  10012dfb4  stp     x20, x19, [sp, #-0x10]!
  10012dfb8  stp     x22, x21, [sp, #-0x10]!
  10012dfbc  sub     sp, sp, #0x10
  10012dfc0  mov     x19, x2
  10012dfc4  mov     x20, x0
  10012dfc8  adrp    x8, #0x100420000
  10012dfcc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012dfd0  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012dfd4  cmp     x8, x19
  10012dfd8  b.ls    loc_10012e02c                            ; if (self->_count <=u arg1)
loc_10012dfdc:
  10012dfdc  adrp    x21, #0x100420000
  10012dfe0  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012dfe4  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012dfe8  cmp     w8, #1
  10012dfec  b.ne    loc_10012e060                            ; if (self->_valueType != 1)
  10012dff0  mov     x8, #1
loc_10012dff4:
  10012dff4  adrp    x9, #0x100420000
  10012dff8  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012dffc  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e000  lsl     x8, x8, #5
  10012e004  adrp    x10, #0x1003b8000
  10012e008  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e00c  ldr     x8, [x10, x8]
  10012e010  mul     x8, x8, x19
  10012e014  ldrb    w0, [x9, x8]
  10012e018  sub     sp, x29, #0x20
  10012e01c  ldp     x22, x21, [sp], #0x10
  10012e020  ldp     x20, x19, [sp], #0x10
  10012e024  ldp     x29, x30, [sp], #0x10
  10012e028  ret
loc_10012e02c:
  10012e02c  adrp    x9, #0x10041d000
  10012e030  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e034  adrp    x9, #0x1003b0000
  10012e038  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e03c  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e040  adrp    x9, #0x100417000
  10012e044  nop
  10012e048  ldr     x1, [x9, #0x260]
  10012e04c  stp     x19, x8, [sp]
  10012e050  adrp    x3, #0x1003c6000
  10012e054  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e058  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e05c  b       loc_10012dfdc
loc_10012e060:
  10012e060  adrp    x8, #0x10041d000
  10012e064  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e068  adrp    x8, #0x100417000
  10012e06c  nop
  10012e070  ldr     x1, [x8, #0x260]
  10012e074  adrp    x8, #0x100393000
  10012e078  add     x8, x8, #0x83e                           ; "TAGPBArrayValueTypeBool"
  10012e07c  adrp    x2, #0x1003c6000
  10012e080  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e084  str     x8, [sp]
  10012e088  adrp    x3, #0x1003c6000
  10012e08c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e090  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeBool"]
  10012e094  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e098  add     x8, x20, x8
  10012e09c  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e0a0  b       loc_10012dff4

; ======================================================================
; -[TAGPBArray int32AtIndex:]
; address 0x10012e0a4  size 248  kind objc
; ======================================================================
  10012e0a4  stp     x29, x30, [sp, #-0x10]!
  10012e0a8  mov     x29, sp
  10012e0ac  stp     x20, x19, [sp, #-0x10]!
  10012e0b0  stp     x22, x21, [sp, #-0x10]!
  10012e0b4  sub     sp, sp, #0x10
  10012e0b8  mov     x19, x2
  10012e0bc  mov     x20, x0
  10012e0c0  adrp    x8, #0x100420000
  10012e0c4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e0c8  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012e0cc  cmp     x8, x19
  10012e0d0  b.ls    loc_10012e124                            ; if (self->_count <=u arg1)
loc_10012e0d4:
  10012e0d4  adrp    x21, #0x100420000
  10012e0d8  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e0dc  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012e0e0  cmp     w8, #2
  10012e0e4  b.ne    loc_10012e158                            ; if (self->_valueType != 2)
  10012e0e8  mov     x8, #2
loc_10012e0ec:
  10012e0ec  adrp    x9, #0x100420000
  10012e0f0  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e0f4  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e0f8  lsl     x8, x8, #5
  10012e0fc  adrp    x10, #0x1003b8000
  10012e100  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e104  ldr     x8, [x10, x8]
  10012e108  mul     x8, x8, x19
  10012e10c  ldr     w0, [x9, x8]
  10012e110  sub     sp, x29, #0x20
  10012e114  ldp     x22, x21, [sp], #0x10
  10012e118  ldp     x20, x19, [sp], #0x10
  10012e11c  ldp     x29, x30, [sp], #0x10
  10012e120  ret
loc_10012e124:
  10012e124  adrp    x9, #0x10041d000
  10012e128  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e12c  adrp    x9, #0x1003b0000
  10012e130  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e134  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e138  adrp    x9, #0x100417000
  10012e13c  nop
  10012e140  ldr     x1, [x9, #0x260]
  10012e144  stp     x19, x8, [sp]
  10012e148  adrp    x3, #0x1003c6000
  10012e14c  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e150  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e154  b       loc_10012e0d4
loc_10012e158:
  10012e158  adrp    x8, #0x10041d000
  10012e15c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e160  adrp    x8, #0x100417000
  10012e164  nop
  10012e168  ldr     x1, [x8, #0x260]
  10012e16c  adrp    x8, #0x100393000
  10012e170  add     x8, x8, #0x7e7                           ; "TAGPBArrayValueTypeInt32"
  10012e174  adrp    x2, #0x1003c6000
  10012e178  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e17c  str     x8, [sp]
  10012e180  adrp    x3, #0x1003c6000
  10012e184  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e188  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt32"]
  10012e18c  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e190  add     x8, x20, x8
  10012e194  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e198  b       loc_10012e0ec

; ======================================================================
; -[TAGPBArray uint32AtIndex:]
; address 0x10012e19c  size 248  kind objc
; ======================================================================
  10012e19c  stp     x29, x30, [sp, #-0x10]!
  10012e1a0  mov     x29, sp
  10012e1a4  stp     x20, x19, [sp, #-0x10]!
  10012e1a8  stp     x22, x21, [sp, #-0x10]!
  10012e1ac  sub     sp, sp, #0x10
  10012e1b0  mov     x19, x2
  10012e1b4  mov     x20, x0
  10012e1b8  adrp    x8, #0x100420000
  10012e1bc  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e1c0  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012e1c4  cmp     x8, x19
  10012e1c8  b.ls    loc_10012e21c                            ; if (self->_count <=u arg1)
loc_10012e1cc:
  10012e1cc  adrp    x21, #0x100420000
  10012e1d0  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e1d4  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012e1d8  cmp     w8, #3
  10012e1dc  b.ne    loc_10012e250                            ; if (self->_valueType != 3)
  10012e1e0  mov     x8, #3
loc_10012e1e4:
  10012e1e4  adrp    x9, #0x100420000
  10012e1e8  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e1ec  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e1f0  lsl     x8, x8, #5
  10012e1f4  adrp    x10, #0x1003b8000
  10012e1f8  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e1fc  ldr     x8, [x10, x8]
  10012e200  mul     x8, x8, x19
  10012e204  ldr     w0, [x9, x8]
  10012e208  sub     sp, x29, #0x20
  10012e20c  ldp     x22, x21, [sp], #0x10
  10012e210  ldp     x20, x19, [sp], #0x10
  10012e214  ldp     x29, x30, [sp], #0x10
  10012e218  ret
loc_10012e21c:
  10012e21c  adrp    x9, #0x10041d000
  10012e220  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e224  adrp    x9, #0x1003b0000
  10012e228  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e22c  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e230  adrp    x9, #0x100417000
  10012e234  nop
  10012e238  ldr     x1, [x9, #0x260]
  10012e23c  stp     x19, x8, [sp]
  10012e240  adrp    x3, #0x1003c6000
  10012e244  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e248  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e24c  b       loc_10012e1cc
loc_10012e250:
  10012e250  adrp    x8, #0x10041d000
  10012e254  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e258  adrp    x8, #0x100417000
  10012e25c  nop
  10012e260  ldr     x1, [x8, #0x260]
  10012e264  adrp    x8, #0x100393000
  10012e268  add     x8, x8, #0x856                           ; "TAGPBArrayValueTypeUInt32"
  10012e26c  adrp    x2, #0x1003c6000
  10012e270  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e274  str     x8, [sp]
  10012e278  adrp    x3, #0x1003c6000
  10012e27c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e280  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeUInt32"]
  10012e284  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e288  add     x8, x20, x8
  10012e28c  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e290  b       loc_10012e1e4

; ======================================================================
; -[TAGPBArray int64AtIndex:]
; address 0x10012e294  size 248  kind objc
; ======================================================================
  10012e294  stp     x29, x30, [sp, #-0x10]!
  10012e298  mov     x29, sp
  10012e29c  stp     x20, x19, [sp, #-0x10]!
  10012e2a0  stp     x22, x21, [sp, #-0x10]!
  10012e2a4  sub     sp, sp, #0x10
  10012e2a8  mov     x19, x2
  10012e2ac  mov     x20, x0
  10012e2b0  adrp    x8, #0x100420000
  10012e2b4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e2b8  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012e2bc  cmp     x8, x19
  10012e2c0  b.ls    loc_10012e314                            ; if (self->_count <=u arg1)
loc_10012e2c4:
  10012e2c4  adrp    x21, #0x100420000
  10012e2c8  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e2cc  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012e2d0  cmp     w8, #4
  10012e2d4  b.ne    loc_10012e348                            ; if (self->_valueType != 4)
  10012e2d8  mov     x8, #4
loc_10012e2dc:
  10012e2dc  adrp    x9, #0x100420000
  10012e2e0  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e2e4  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e2e8  lsl     x8, x8, #5
  10012e2ec  adrp    x10, #0x1003b8000
  10012e2f0  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e2f4  ldr     x8, [x10, x8]
  10012e2f8  mul     x8, x8, x19
  10012e2fc  ldr     x0, [x9, x8]
  10012e300  sub     sp, x29, #0x20
  10012e304  ldp     x22, x21, [sp], #0x10
  10012e308  ldp     x20, x19, [sp], #0x10
  10012e30c  ldp     x29, x30, [sp], #0x10
  10012e310  ret
loc_10012e314:
  10012e314  adrp    x9, #0x10041d000
  10012e318  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e31c  adrp    x9, #0x1003b0000
  10012e320  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e324  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e328  adrp    x9, #0x100417000
  10012e32c  nop
  10012e330  ldr     x1, [x9, #0x260]
  10012e334  stp     x19, x8, [sp]
  10012e338  adrp    x3, #0x1003c6000
  10012e33c  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e340  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e344  b       loc_10012e2c4
loc_10012e348:
  10012e348  adrp    x8, #0x10041d000
  10012e34c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e350  adrp    x8, #0x100417000
  10012e354  nop
  10012e358  ldr     x1, [x8, #0x260]
  10012e35c  adrp    x8, #0x100393000
  10012e360  add     x8, x8, #0x870                           ; "TAGPBArrayValueTypeInt64"
  10012e364  adrp    x2, #0x1003c6000
  10012e368  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e36c  str     x8, [sp]
  10012e370  adrp    x3, #0x1003c6000
  10012e374  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e378  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeInt64"]
  10012e37c  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e380  add     x8, x20, x8
  10012e384  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e388  b       loc_10012e2dc

; ======================================================================
; -[TAGPBArray uint64AtIndex:]
; address 0x10012e38c  size 248  kind objc
; ======================================================================
  10012e38c  stp     x29, x30, [sp, #-0x10]!
  10012e390  mov     x29, sp
  10012e394  stp     x20, x19, [sp, #-0x10]!
  10012e398  stp     x22, x21, [sp, #-0x10]!
  10012e39c  sub     sp, sp, #0x10
  10012e3a0  mov     x19, x2
  10012e3a4  mov     x20, x0
  10012e3a8  adrp    x8, #0x100420000
  10012e3ac  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e3b0  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012e3b4  cmp     x8, x19
  10012e3b8  b.ls    loc_10012e40c                            ; if (self->_count <=u arg1)
loc_10012e3bc:
  10012e3bc  adrp    x21, #0x100420000
  10012e3c0  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e3c4  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012e3c8  cmp     w8, #5
  10012e3cc  b.ne    loc_10012e440                            ; if (self->_valueType != 5)
  10012e3d0  mov     x8, #5
loc_10012e3d4:
  10012e3d4  adrp    x9, #0x100420000
  10012e3d8  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e3dc  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e3e0  lsl     x8, x8, #5
  10012e3e4  adrp    x10, #0x1003b8000
  10012e3e8  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e3ec  ldr     x8, [x10, x8]
  10012e3f0  mul     x8, x8, x19
  10012e3f4  ldr     x0, [x9, x8]
  10012e3f8  sub     sp, x29, #0x20
  10012e3fc  ldp     x22, x21, [sp], #0x10
  10012e400  ldp     x20, x19, [sp], #0x10
  10012e404  ldp     x29, x30, [sp], #0x10
  10012e408  ret
loc_10012e40c:
  10012e40c  adrp    x9, #0x10041d000
  10012e410  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e414  adrp    x9, #0x1003b0000
  10012e418  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e41c  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e420  adrp    x9, #0x100417000
  10012e424  nop
  10012e428  ldr     x1, [x9, #0x260]
  10012e42c  stp     x19, x8, [sp]
  10012e430  adrp    x3, #0x1003c6000
  10012e434  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e438  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e43c  b       loc_10012e3bc
loc_10012e440:
  10012e440  adrp    x8, #0x10041d000
  10012e444  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e448  adrp    x8, #0x100417000
  10012e44c  nop
  10012e450  ldr     x1, [x8, #0x260]
  10012e454  adrp    x8, #0x100393000
  10012e458  add     x8, x8, #0x889                           ; "TAGPBArrayValueTypeUInt64"
  10012e45c  adrp    x2, #0x1003c6000
  10012e460  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e464  str     x8, [sp]
  10012e468  adrp    x3, #0x1003c6000
  10012e46c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e470  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeUInt64"]
  10012e474  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e478  add     x8, x20, x8
  10012e47c  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e480  b       loc_10012e3d4

; ======================================================================
; -[TAGPBArray floatAtIndex:]
; address 0x10012e484  size 248  kind objc
; ======================================================================
  10012e484  stp     x29, x30, [sp, #-0x10]!
  10012e488  mov     x29, sp
  10012e48c  stp     x20, x19, [sp, #-0x10]!
  10012e490  stp     x22, x21, [sp, #-0x10]!
  10012e494  sub     sp, sp, #0x10
  10012e498  mov     x19, x2
  10012e49c  mov     x20, x0
  10012e4a0  adrp    x8, #0x100420000
  10012e4a4  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e4a8  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012e4ac  cmp     x8, x19
  10012e4b0  b.ls    loc_10012e504                            ; if (self->_count <=u arg1)
loc_10012e4b4:
  10012e4b4  adrp    x21, #0x100420000
  10012e4b8  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e4bc  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012e4c0  cmp     w8, #6
  10012e4c4  b.ne    loc_10012e538                            ; if (self->_valueType != 6)
  10012e4c8  mov     x8, #6
loc_10012e4cc:
  10012e4cc  adrp    x9, #0x100420000
  10012e4d0  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e4d4  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e4d8  lsl     x8, x8, #5
  10012e4dc  adrp    x10, #0x1003b8000
  10012e4e0  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e4e4  ldr     x8, [x10, x8]
  10012e4e8  mul     x8, x8, x19
  10012e4ec  ldr     s0, [x9, x8]
  10012e4f0  sub     sp, x29, #0x20
  10012e4f4  ldp     x22, x21, [sp], #0x10
  10012e4f8  ldp     x20, x19, [sp], #0x10
  10012e4fc  ldp     x29, x30, [sp], #0x10
  10012e500  ret
loc_10012e504:
  10012e504  adrp    x9, #0x10041d000
  10012e508  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e50c  adrp    x9, #0x1003b0000
  10012e510  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e514  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e518  adrp    x9, #0x100417000
  10012e51c  nop
  10012e520  ldr     x1, [x9, #0x260]
  10012e524  stp     x19, x8, [sp]
  10012e528  adrp    x3, #0x1003c6000
  10012e52c  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e530  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e534  b       loc_10012e4b4
loc_10012e538:
  10012e538  adrp    x8, #0x10041d000
  10012e53c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e540  adrp    x8, #0x100417000
  10012e544  nop
  10012e548  ldr     x1, [x8, #0x260]
  10012e54c  adrp    x8, #0x100393000
  10012e550  add     x8, x8, #0x8a3                           ; "TAGPBArrayValueTypeFloat"
  10012e554  adrp    x2, #0x1003c6000
  10012e558  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e55c  str     x8, [sp]
  10012e560  adrp    x3, #0x1003c6000
  10012e564  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e568  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeFloat"]
  10012e56c  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e570  add     x8, x20, x8
  10012e574  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e578  b       loc_10012e4cc

; ======================================================================
; -[TAGPBArray doubleAtIndex:]
; address 0x10012e57c  size 248  kind objc
; ======================================================================
  10012e57c  stp     x29, x30, [sp, #-0x10]!
  10012e580  mov     x29, sp
  10012e584  stp     x20, x19, [sp, #-0x10]!
  10012e588  stp     x22, x21, [sp, #-0x10]!
  10012e58c  sub     sp, sp, #0x10
  10012e590  mov     x19, x2
  10012e594  mov     x20, x0
  10012e598  adrp    x8, #0x100420000
  10012e59c  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e5a0  ldr     x8, [x20, x8]                            ; x8 = self->_count
  10012e5a4  cmp     x8, x19
  10012e5a8  b.ls    loc_10012e5fc                            ; if (self->_count <=u arg1)
loc_10012e5ac:
  10012e5ac  adrp    x21, #0x100420000
  10012e5b0  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e5b4  ldr     w8, [x20, x8]                            ; w8 = self->_valueType
  10012e5b8  cmp     w8, #7
  10012e5bc  b.ne    loc_10012e630                            ; if (self->_valueType != 7)
  10012e5c0  mov     x8, #7
loc_10012e5c4:
  10012e5c4  adrp    x9, #0x100420000
  10012e5c8  ldrsw   x9, [x9, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e5cc  ldr     x9, [x20, x9]                            ; x9 = self->_data
  10012e5d0  lsl     x8, x8, #5
  10012e5d4  adrp    x10, #0x1003b8000
  10012e5d8  add     x10, x10, #0x618                         ; &d_1003b8618
  10012e5dc  ldr     x8, [x10, x8]
  10012e5e0  mul     x8, x8, x19
  10012e5e4  ldr     d0, [x9, x8]
  10012e5e8  sub     sp, x29, #0x20
  10012e5ec  ldp     x22, x21, [sp], #0x10
  10012e5f0  ldp     x20, x19, [sp], #0x10
  10012e5f4  ldp     x29, x30, [sp], #0x10
  10012e5f8  ret
loc_10012e5fc:
  10012e5fc  adrp    x9, #0x10041d000
  10012e600  ldr     x0, [x9, #0xfc8]                         ; class NSException
  10012e604  adrp    x9, #0x1003b0000
  10012e608  ldr     x9, [x9, #0x78]                          ; _NSRangeException
  10012e60c  ldr     x2, [x9]                                 ; x2 = _NSRangeException[+0x0]
  10012e610  adrp    x9, #0x100417000
  10012e614  nop
  10012e618  ldr     x1, [x9, #0x260]
  10012e61c  stp     x19, x8, [sp]
  10012e620  adrp    x3, #0x1003c6000
  10012e624  add     x3, x3, #0xc70                           ; @"idx (%lu) beyond bounds (%lu)"
  10012e628  bl      _objc_msgSend                            ; [NSException raise:_NSRangeException[+0x0] format:@"idx (%lu) beyond bounds (%lu)", arg1, self->_count]
  10012e62c  b       loc_10012e5ac
loc_10012e630:
  10012e630  adrp    x8, #0x10041d000
  10012e634  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e638  adrp    x8, #0x100417000
  10012e63c  nop
  10012e640  ldr     x1, [x8, #0x260]
  10012e644  adrp    x8, #0x100393000
  10012e648  add     x8, x8, #0x8bc                           ; "TAGPBArrayValueTypeDouble"
  10012e64c  adrp    x2, #0x1003c6000
  10012e650  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012e654  str     x8, [sp]
  10012e658  adrp    x3, #0x1003c6000
  10012e65c  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012e660  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeDouble"]
  10012e664  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e668  add     x8, x20, x8
  10012e66c  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e670  b       loc_10012e5c4

; ======================================================================
; -[TAGPBArray array]
; address 0x10012e674  size 280  kind objc
; ======================================================================
  10012e674  stp     x29, x30, [sp, #-0x10]!
  10012e678  mov     x29, sp
  10012e67c  stp     x20, x19, [sp, #-0x10]!
  10012e680  stp     x22, x21, [sp, #-0x10]!
  10012e684  stp     x24, x23, [sp, #-0x10]!
  10012e688  stp     x26, x25, [sp, #-0x10]!
  10012e68c  mov     x19, x0
  10012e690  adrp    x8, #0x100420000
  10012e694  ldrsw   x21, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e698  ldr     w8, [x19, x21]                           ; w8 = self->_valueType
  10012e69c  cbz     w8, loc_10012e748                        ; if (self->_valueType == 0)
  10012e6a0  adrp    x8, #0x10041d000
  10012e6a4  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10012e6a8  adrp    x8, #0x100420000
  10012e6ac  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012e6b0  ldr     x2, [x19, x23]                           ; x2 = self->_count
  10012e6b4  adrp    x8, #0x10041b000
  10012e6b8  nop
  10012e6bc  ldr     x1, [x8, #0x280]
  10012e6c0  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:self->_count]
  10012e6c4  mov     x20, x0
  10012e6c8  add     x8, x19, x21
  10012e6cc  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e6d0  ldr     x9, [x19, x23]                           ; x9 = self->_count
  10012e6d4  cbz     x9, loc_10012e72c                        ; if (self->_count == 0)
  10012e6d8  mov     x21, #0
  10012e6dc  adrp    x9, #0x1003b8000
  10012e6e0  add     x9, x9, #0x618                           ; &d_1003b8618
  10012e6e4  add     x8, x9, x8, lsl #5
  10012e6e8  ldr     x24, [x8, #8]                            ; x24 = (&d_1003b8618 + (self->_valueType << 5))[+0x8]
  10012e6ec  adrp    x8, #0x100420000
  10012e6f0  ldrsw   x25, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012e6f4  adrp    x8, #0x100416000
  10012e6f8  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10012e6fc  ldr     x22, [x8]
loc_10012e700:
  10012e700  ldr     x0, [x19, x25]                           ; x0 = self->_data
  10012e704  mov     x1, x21
  10012e708  blr     x24                                      ; call (&d_1003b8618 + (self->_valueType << 5))[+0x8]
  10012e70c  mov     x2, x0
  10012e710  mov     x0, x20
  10012e714  mov     x1, x22
  10012e718  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:self->_count] addObject:(&d_1003b8618 + (self->_valueType << 5))[+0x8](…)]
  10012e71c  add     x21, x21, #1
  10012e720  ldr     x8, [x19, x23]                           ; x8 = self->_count
  10012e724  cmp     x21, x8
  10012e728  b.lo    loc_10012e700                            ; if ((x21 + 1) <u self->_count)
loc_10012e72c:
  10012e72c  mov     x0, x20
  10012e730  ldp     x26, x25, [sp], #0x10
  10012e734  ldp     x24, x23, [sp], #0x10
  10012e738  ldp     x22, x21, [sp], #0x10
  10012e73c  ldp     x20, x19, [sp], #0x10
  10012e740  ldp     x29, x30, [sp], #0x10
  10012e744  ret
loc_10012e748:
  10012e748  adrp    x8, #0x10041d000
  10012e74c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10012e750  adrp    x8, #0x100420000
  10012e754  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012e758  ldr     x2, [x19, x8]                            ; x2 = self->_data
  10012e75c  adrp    x8, #0x100420000
  10012e760  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012e764  adrp    x9, #0x100417000
  10012e768  nop
  10012e76c  ldr     x3, [x19, x8]                            ; x3 = self->_count
  10012e770  ldr     x1, [x9, #0x3c8]
  10012e774  ldp     x26, x25, [sp], #0x10
  10012e778  ldp     x24, x23, [sp], #0x10
  10012e77c  ldp     x22, x21, [sp], #0x10
  10012e780  ldp     x20, x19, [sp], #0x10
  10012e784  ldp     x29, x30, [sp], #0x10
  10012e788  b       _objc_msgSend                            ; [NSArray arrayWithObjects:self->_data count:self->_count]

; ======================================================================
; -[TAGPBArray arrayWithConversion:]
; address 0x10012e78c  size 256  kind objc
; ======================================================================
  10012e78c  stp     x29, x30, [sp, #-0x10]!
  10012e790  mov     x29, sp
  10012e794  stp     x20, x19, [sp, #-0x10]!
  10012e798  stp     x22, x21, [sp, #-0x10]!
  10012e79c  stp     x24, x23, [sp, #-0x10]!
  10012e7a0  stp     x26, x25, [sp, #-0x10]!
  10012e7a4  mov     x19, x2
  10012e7a8  mov     x20, x0
  10012e7ac  adrp    x8, #0x100420000
  10012e7b0  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012e7b4  add     x8, x20, x8
  10012e7b8  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e7bc  cbz     w8, loc_10012e7d4                        ; if (self->_valueType == 0)
  10012e7c0  adrp    x9, #0x1003b8000
  10012e7c4  add     x9, x9, #0x618                           ; &d_1003b8618
  10012e7c8  add     x8, x9, x8, lsl #5
  10012e7cc  ldr     x24, [x8, #8]                            ; x24 = (&d_1003b8618 + (self->_valueType << 5))[+0x8]
  10012e7d0  b       loc_10012e7d8
loc_10012e7d4:
  10012e7d4  mov     x24, #0
loc_10012e7d8:
  10012e7d8  adrp    x8, #0x10041d000
  10012e7dc  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10012e7e0  adrp    x8, #0x100420000
  10012e7e4  ldrsw   x25, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012e7e8  ldr     x2, [x20, x25]                           ; x2 = self->_count
  10012e7ec  adrp    x8, #0x10041b000
  10012e7f0  nop
  10012e7f4  ldr     x1, [x8, #0x280]
  10012e7f8  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:self->_count]
  10012e7fc  mov     x21, x0
  10012e800  ldr     x8, [x20, x25]                           ; x8 = self->_count
  10012e804  cbz     x8, loc_10012e870                        ; if (self->_count == 0)
  10012e808  mov     x22, #0
  10012e80c  adrp    x8, #0x100420000
  10012e810  ldrsw   x26, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012e814  adrp    x8, #0x100416000
  10012e818  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10012e81c  ldr     x23, [x8]
loc_10012e820:
  10012e820  ldr     x0, [x20, x26]                           ; x0 = self->_data
  10012e824  cbnz    x24, loc_10012e830                       ; if (x24 != 0)
  10012e828  ldr     x1, [x0, x22, lsl #3]
  10012e82c  b       loc_10012e83c
loc_10012e830:
  10012e830  mov     x1, x22
  10012e834  blr     x24
  10012e838  mov     x1, x0
loc_10012e83c:
  10012e83c  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  10012e840  mov     x0, x19
  10012e844  blr     x8                                       ; call arg1[+0x10]
  10012e848  mov     x8, x0
  10012e84c  cbz     x8, loc_10012e860                        ; if (arg1[+0x10](…) == 0)
  10012e850  mov     x0, x21
  10012e854  mov     x1, x23
  10012e858  mov     x2, x8
  10012e85c  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:self->_count] addObject:arg1[+0x10](…)]
loc_10012e860:
  10012e860  add     x22, x22, #1
  10012e864  ldr     x8, [x20, x25]                           ; x8 = self->_count
  10012e868  cmp     x22, x8
  10012e86c  b.lo    loc_10012e820                            ; if ((x22 + 1) <u self->_count)
loc_10012e870:
  10012e870  mov     x0, x21
  10012e874  ldp     x26, x25, [sp], #0x10
  10012e878  ldp     x24, x23, [sp], #0x10
  10012e87c  ldp     x22, x21, [sp], #0x10
  10012e880  ldp     x20, x19, [sp], #0x10
  10012e884  ldp     x29, x30, [sp], #0x10
  10012e888  ret

; ======================================================================
; -[TAGPBArray arrayByAppendingArray:]
; address 0x10012e88c  size 408  kind objc
; ======================================================================
  10012e88c  stp     x29, x30, [sp, #-0x10]!
  10012e890  mov     x29, sp
  10012e894  stp     x20, x19, [sp, #-0x10]!
  10012e898  stp     x22, x21, [sp, #-0x10]!
  10012e89c  stp     x24, x23, [sp, #-0x10]!
  10012e8a0  stp     x26, x25, [sp, #-0x10]!
  10012e8a4  sub     sp, sp, #0x10
  10012e8a8  mov     x20, x2
  10012e8ac  mov     x19, x0
  10012e8b0  adrp    x8, #0x100420000
  10012e8b4  ldrsw   x23, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012e8b8  ldr     w8, [x19, x23]                           ; w8 = self->_valueType
  10012e8bc  ldr     w9, [x20, x23]                           ; w9 = arg1->_valueType
  10012e8c0  cmp     w8, w9
  10012e8c4  b.ne    loc_10012e9ec                            ; if (self->_valueType != arg1->_valueType)
loc_10012e8c8:
  10012e8c8  adrp    x8, #0x100417000
  10012e8cc  nop
  10012e8d0  ldr     x1, [x8, #0x2e0]
  10012e8d4  mov     x0, x19
  10012e8d8  bl      _objc_msgSend                            ; [self class]
  10012e8dc  adrp    x8, #0x100416000
  10012e8e0  nop
  10012e8e4  ldr     x1, [x8, #0xac8]
  10012e8e8  bl      _objc_msgSend                            ; [[self class] alloc]
  10012e8ec  adrp    x8, #0x100420000
  10012e8f0  ldrsw   x24, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012e8f4  ldr     x8, [x19, x24]                           ; x8 = self->_count
  10012e8f8  ldr     x9, [x20, x24]                           ; x9 = arg1->_count
  10012e8fc  add     x2, x9, x8
  10012e900  ldr     w3, [x19, x23]                           ; w3 = self->_valueType
  10012e904  adrp    x8, #0x10041c000
  10012e908  nop
  10012e90c  ldr     x1, [x8, #0x4e8]
  10012e910  bl      _objc_msgSend                            ; [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]
  10012e914  mov     x21, x0
  10012e918  cbz     x21, loc_10012e9c0                       ; if ([[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType] == 0)
  10012e91c  add     x8, x19, x23
  10012e920  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012e924  lsl     x8, x8, #5
  10012e928  adrp    x9, #0x1003b8000
  10012e92c  add     x9, x9, #0x618                           ; &d_1003b8618
  10012e930  ldr     x26, [x9, x8]
  10012e934  ldr     x22, [x19, x24]                          ; x22 = self->_count
  10012e938  mul     x2, x22, x26
  10012e93c  adrp    x8, #0x100420000
  10012e940  ldrsw   x25, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012e944  ldr     x0, [x21, x25]                           ; x0 = [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_data
  10012e948  ldr     x1, [x19, x25]                           ; x1 = self->_data
  10012e94c  bl      _memcpy                                  ; memcpy([[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_data, self->_data, (self->_count * x26))
  10012e950  ldr     x8, [x21, x25]                           ; x8 = [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_data
  10012e954  madd    x22, x22, x26, x8                        ; t1 = ([[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_data + self->_count * x26)
  10012e958  adrp    x8, #0x10041b000
  10012e95c  nop
  10012e960  ldr     x1, [x8, #0xc78]
  10012e964  mov     x0, x20
  10012e968  bl      _objc_msgSend                            ; [arg1 data]
  10012e96c  mov     x1, x0
  10012e970  ldr     x8, [x20, x24]                           ; x8 = arg1->_count
  10012e974  mul     x2, x8, x26
  10012e978  mov     x0, x22
  10012e97c  bl      _memcpy                                  ; memcpy(t1, [arg1 data], (arg1->_count * x26))
  10012e980  ldr     w8, [x19, x23]                           ; w8 = self->_valueType
  10012e984  cbnz    w8, loc_10012e9c0                        ; if (self->_valueType != 0)
  10012e988  ldr     x8, [x21, x24]                           ; x8 = [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_count
  10012e98c  cbz     x8, loc_10012e9c0                        ; if ([[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_count == 0)
  10012e990  mov     x20, #0
  10012e994  adrp    x8, #0x10041b000
  10012e998  add     x8, x8, #0xdb8                           ; &@selector(retain)
  10012e99c  ldr     x19, [x8]
loc_10012e9a0:
  10012e9a0  ldr     x8, [x21, x25]                           ; x8 = [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_data
  10012e9a4  ldr     x0, [x8, x20, lsl #3]
  10012e9a8  mov     x1, x19
  10012e9ac  bl      _objc_msgSend                            ; [x0 retain]
  10012e9b0  add     x20, x20, #1
  10012e9b4  ldr     x8, [x21, x24]                           ; x8 = [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_count
  10012e9b8  cmp     x20, x8
  10012e9bc  b.lo    loc_10012e9a0                            ; if ((x20 + 1) <u [[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType]->_count)
loc_10012e9c0:
  10012e9c0  adrp    x8, #0x10041b000
  10012e9c4  nop
  10012e9c8  ldr     x1, [x8, #0xe88]
  10012e9cc  mov     x0, x21
  10012e9d0  sub     sp, x29, #0x40
  10012e9d4  ldp     x26, x25, [sp], #0x10
  10012e9d8  ldp     x24, x23, [sp], #0x10
  10012e9dc  ldp     x22, x21, [sp], #0x10
  10012e9e0  ldp     x20, x19, [sp], #0x10
  10012e9e4  ldp     x29, x30, [sp], #0x10
  10012e9e8  b       _objc_msgSend                            ; [[[[self class] alloc] initWithCount:(arg1->_count + self->_count) valueType:self->_valueType] autorelease]
loc_10012e9ec:
  10012e9ec  adrp    x8, #0x10041d000
  10012e9f0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012e9f4  adrp    x8, #0x100417000
  10012e9f8  nop
  10012e9fc  ldr     x1, [x8, #0x260]
  10012ea00  adrp    x8, #0x100393000
  10012ea04  add     x8, x8, #0x8d6                           ; "array->_valueType"
  10012ea08  adrp    x2, #0x1003c6000
  10012ea0c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012ea10  str     x8, [sp]
  10012ea14  adrp    x3, #0x1003c6000
  10012ea18  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012ea1c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "array->_valueType"]
  10012ea20  b       loc_10012e8c8

; ======================================================================
; +[TAGPBArray arrayWithValueType:]
; address 0x10012ea24  size 76  kind objc
; ======================================================================
  10012ea24  stp     x29, x30, [sp, #-0x10]!
  10012ea28  mov     x29, sp
  10012ea2c  stp     x20, x19, [sp, #-0x10]!
  10012ea30  mov     x19, x2
  10012ea34  adrp    x8, #0x100416000
  10012ea38  nop
  10012ea3c  ldr     x1, [x8, #0xac8]
  10012ea40  bl      _objc_msgSend                            ; [TAGPBArray alloc]
  10012ea44  adrp    x8, #0x10041c000
  10012ea48  nop
  10012ea4c  ldr     x1, [x8, #0x4f0]
  10012ea50  mov     x2, x19
  10012ea54  bl      _objc_msgSend                            ; [[TAGPBArray alloc] initWithValueType:arg1]
  10012ea58  adrp    x8, #0x10041b000
  10012ea5c  nop
  10012ea60  ldr     x1, [x8, #0xe88]
  10012ea64  ldp     x20, x19, [sp], #0x10
  10012ea68  ldp     x29, x30, [sp], #0x10
  10012ea6c  b       _objc_msgSend                            ; [[[TAGPBArray alloc] initWithValueType:arg1] autorelease]

; ======================================================================
; +[TAGPBArray arrayWithValues:count:valueType:]
; address 0x10012ea70  size 100  kind objc
; ======================================================================
  10012ea70  stp     x29, x30, [sp, #-0x10]!
  10012ea74  mov     x29, sp
  10012ea78  stp     x20, x19, [sp, #-0x10]!
  10012ea7c  stp     x22, x21, [sp, #-0x10]!
  10012ea80  mov     x19, x4
  10012ea84  mov     x20, x3
  10012ea88  mov     x21, x2
  10012ea8c  adrp    x8, #0x100416000
  10012ea90  nop
  10012ea94  ldr     x1, [x8, #0xac8]
  10012ea98  bl      _objc_msgSend                            ; [TAGPBArray alloc]
  10012ea9c  adrp    x8, #0x10041c000
  10012eaa0  nop
  10012eaa4  ldr     x1, [x8, #0x4e0]
  10012eaa8  mov     x2, x21
  10012eaac  mov     x3, x20
  10012eab0  mov     x4, x19
  10012eab4  bl      _objc_msgSend                            ; [[TAGPBArray alloc] initWithValues:arg1 count:arg2 valueType:arg3]
  10012eab8  adrp    x8, #0x10041b000
  10012eabc  nop
  10012eac0  ldr     x1, [x8, #0xe88]
  10012eac4  ldp     x22, x21, [sp], #0x10
  10012eac8  ldp     x20, x19, [sp], #0x10
  10012eacc  ldp     x29, x30, [sp], #0x10
  10012ead0  b       _objc_msgSend                            ; [[[TAGPBArray alloc] initWithValues:arg1 count:arg2 valueType:arg3] autorelease]

; ======================================================================
; +[TAGPBArray arrayWithArray:valueType:]
; address 0x10012ead4  size 84  kind objc
; ======================================================================
  10012ead4  stp     x29, x30, [sp, #-0x10]!
  10012ead8  mov     x29, sp
  10012eadc  stp     x20, x19, [sp, #-0x10]!
  10012eae0  mov     x19, x3
  10012eae4  mov     x20, x2
  10012eae8  adrp    x8, #0x100416000
  10012eaec  nop
  10012eaf0  ldr     x1, [x8, #0xac8]
  10012eaf4  bl      _objc_msgSend                            ; [TAGPBArray alloc]
  10012eaf8  adrp    x8, #0x10041c000
  10012eafc  nop
  10012eb00  ldr     x1, [x8, #0x4f8]
  10012eb04  mov     x2, x20
  10012eb08  mov     x3, x19
  10012eb0c  bl      _objc_msgSend                            ; [[TAGPBArray alloc] initWithArray:arg1 valueType:arg2]
  10012eb10  adrp    x8, #0x10041b000
  10012eb14  nop
  10012eb18  ldr     x1, [x8, #0xe88]
  10012eb1c  ldp     x20, x19, [sp], #0x10
  10012eb20  ldp     x29, x30, [sp], #0x10
  10012eb24  b       _objc_msgSend                            ; [[[TAGPBArray alloc] initWithArray:arg1 valueType:arg2] autorelease]

; ======================================================================
; +[TAGPBArray arrayWithObject:]
; address 0x10012eb28  size 76  kind objc
; ======================================================================
  10012eb28  stp     x29, x30, [sp, #-0x10]!
  10012eb2c  mov     x29, sp
  10012eb30  stp     x20, x19, [sp, #-0x10]!
  10012eb34  mov     x19, x2
  10012eb38  adrp    x8, #0x100416000
  10012eb3c  nop
  10012eb40  ldr     x1, [x8, #0xac8]
  10012eb44  bl      _objc_msgSend                            ; [TAGPBArray alloc]
  10012eb48  adrp    x8, #0x10041c000
  10012eb4c  nop
  10012eb50  ldr     x1, [x8, #0x500]
  10012eb54  mov     x2, x19
  10012eb58  bl      _objc_msgSend                            ; [[TAGPBArray alloc] initWithObject:arg1]
  10012eb5c  adrp    x8, #0x10041b000
  10012eb60  nop
  10012eb64  ldr     x1, [x8, #0xe88]
  10012eb68  ldp     x20, x19, [sp], #0x10
  10012eb6c  ldp     x29, x30, [sp], #0x10
  10012eb70  b       _objc_msgSend                            ; [[[TAGPBArray alloc] initWithObject:arg1] autorelease]

; ======================================================================
; +[TAGPBArray arrayWithObjects:]
; address 0x10012eb74  size 204  kind objc
; ======================================================================
  10012eb74  stp     x29, x30, [sp, #-0x10]!
  10012eb78  mov     x29, sp
  10012eb7c  stp     x20, x19, [sp, #-0x10]!
  10012eb80  sub     sp, sp, #0x10
  10012eb84  mov     x20, x2
  10012eb88  add     x8, x29, #0x10
  10012eb8c  str     x8, [sp, #8]
  10012eb90  adrp    x8, #0x10041e000
  10012eb94  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10012eb98  adrp    x8, #0x100416000
  10012eb9c  nop
  10012eba0  ldr     x1, [x8, #0xac8]
  10012eba4  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10012eba8  adrp    x8, #0x10041c000
  10012ebac  nop
  10012ebb0  ldr     x1, [x8, #0x4f0]
  10012ebb4  mov     w2, #0
  10012ebb8  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:0]
  10012ebbc  adrp    x8, #0x10041b000
  10012ebc0  nop
  10012ebc4  ldr     x1, [x8, #0xe88]
  10012ebc8  bl      _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:0] autorelease]
  10012ebcc  mov     x19, x0
  10012ebd0  cbz     x20, loc_10012ebec                       ; if (arg1 == 0)
  10012ebd4  adrp    x8, #0x100416000
  10012ebd8  nop
  10012ebdc  ldr     x1, [x8, #0xd90]
  10012ebe0  mov     x0, x19
  10012ebe4  mov     x2, x20
  10012ebe8  bl      _objc_msgSend                            ; [[[[TAGPBMutableArray alloc] initWithValueType:0] autorelease] addObject:arg1]
loc_10012ebec:
  10012ebec  ldr     x8, [sp, #8]
  10012ebf0  add     x9, x8, #8
  10012ebf4  str     x9, [sp, #8]
  10012ebf8  ldr     x2, [x8]
  10012ebfc  cbz     x2, loc_10012ec2c                        ; if (x2 == 0)
  10012ec00  adrp    x8, #0x100416000
  10012ec04  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10012ec08  ldr     x20, [x8]
loc_10012ec0c:
  10012ec0c  mov     x0, x19
  10012ec10  mov     x1, x20
  10012ec14  bl      _objc_msgSend                            ; [[[[TAGPBMutableArray alloc] initWithValueType:0] autorelease] addObject:x2]
  10012ec18  ldr     x8, [sp, #8]
  10012ec1c  add     x9, x8, #8
  10012ec20  str     x9, [sp, #8]
  10012ec24  ldr     x2, [x8]
  10012ec28  cbnz    x2, loc_10012ec0c                        ; if (x2 != 0)
loc_10012ec2c:
  10012ec2c  mov     x0, x19
  10012ec30  sub     sp, x29, #0x10
  10012ec34  ldp     x20, x19, [sp], #0x10
  10012ec38  ldp     x29, x30, [sp], #0x10
  10012ec3c  ret

; ======================================================================
; +[TAGPBArray arrayWithInt32:]
; address 0x10012ec40  size 76  kind objc
; ======================================================================
  10012ec40  stp     x29, x30, [sp, #-0x10]!
  10012ec44  mov     x29, sp
  10012ec48  stp     x20, x19, [sp, #-0x10]!
  10012ec4c  mov     x19, x2
  10012ec50  adrp    x8, #0x100416000
  10012ec54  nop
  10012ec58  ldr     x1, [x8, #0xac8]
  10012ec5c  bl      _objc_msgSend                            ; [TAGPBArray alloc]
  10012ec60  adrp    x8, #0x10041c000
  10012ec64  nop
  10012ec68  ldr     x1, [x8, #0x508]
  10012ec6c  mov     x2, x19
  10012ec70  bl      _objc_msgSend                            ; [[TAGPBArray alloc] initWithInt32:arg1]
  10012ec74  adrp    x8, #0x10041b000
  10012ec78  nop
  10012ec7c  ldr     x1, [x8, #0xe88]
  10012ec80  ldp     x20, x19, [sp], #0x10
  10012ec84  ldp     x29, x30, [sp], #0x10
  10012ec88  b       _objc_msgSend                            ; [[[TAGPBArray alloc] initWithInt32:arg1] autorelease]

; ======================================================================
; +[TAGPBArray arrayWithInt32s:]
; address 0x10012ec8c  size 232  kind objc
; ======================================================================
  10012ec8c  stp     x29, x30, [sp, #-0x10]!
  10012ec90  mov     x29, sp
  10012ec94  stp     x20, x19, [sp, #-0x10]!
  10012ec98  stp     x22, x21, [sp, #-0x10]!
  10012ec9c  sub     sp, sp, #0x10
  10012eca0  mov     x20, x2
  10012eca4  add     x8, x29, #0x10
  10012eca8  str     x8, [sp, #8]
  10012ecac  adrp    x8, #0x10041e000
  10012ecb0  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  10012ecb4  adrp    x8, #0x100416000
  10012ecb8  nop
  10012ecbc  ldr     x1, [x8, #0xac8]
  10012ecc0  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  10012ecc4  adrp    x8, #0x10041c000
  10012ecc8  nop
  10012eccc  ldr     x1, [x8, #0x4f0]
  10012ecd0  mov     w2, #2
  10012ecd4  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:2]
  10012ecd8  adrp    x8, #0x10041b000
  10012ecdc  nop
  10012ece0  ldr     x1, [x8, #0xe88]
  10012ece4  bl      _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:2] autorelease]
  10012ece8  mov     x19, x0
  10012ecec  mov     w21, #0x7fffffff
  10012ecf0  cmp     w20, w21
  10012ecf4  b.eq    loc_10012ed10                            ; if (arg1 == 0x7fffffff)
  10012ecf8  adrp    x8, #0x10041c000
  10012ecfc  nop
  10012ed00  ldr     x1, [x8, #0x510]
  10012ed04  mov     x0, x19
  10012ed08  mov     x2, x20
  10012ed0c  bl      _objc_msgSend                            ; [[[[TAGPBMutableArray alloc] initWithValueType:2] autorelease] addInt32:arg1]
loc_10012ed10:
  10012ed10  ldr     x8, [sp, #8]
  10012ed14  add     x9, x8, #8
  10012ed18  str     x9, [sp, #8]
  10012ed1c  ldr     w2, [x8]
  10012ed20  cmp     w2, w21
  10012ed24  b.eq    loc_10012ed5c                            ; if (w2 == 0x7fffffff)
  10012ed28  adrp    x8, #0x10041c000
  10012ed2c  add     x8, x8, #0x510                           ; &@selector(addInt32:)
  10012ed30  ldr     x20, [x8]
  10012ed34  mov     w21, #0x7fffffff
loc_10012ed38:
  10012ed38  mov     x0, x19
  10012ed3c  mov     x1, x20
  10012ed40  bl      _objc_msgSend                            ; [[[[TAGPBMutableArray alloc] initWithValueType:2] autorelease] addInt32:x2]
  10012ed44  ldr     x8, [sp, #8]
  10012ed48  add     x9, x8, #8
  10012ed4c  str     x9, [sp, #8]
  10012ed50  ldr     w2, [x8]
  10012ed54  cmp     w2, w21
  10012ed58  b.ne    loc_10012ed38                            ; if (w2 != 0x7fffffff)
loc_10012ed5c:
  10012ed5c  mov     x0, x19
  10012ed60  sub     sp, x29, #0x20
  10012ed64  ldp     x22, x21, [sp], #0x10
  10012ed68  ldp     x20, x19, [sp], #0x10
  10012ed6c  ldp     x29, x30, [sp], #0x10
  10012ed70  ret

; ======================================================================
; -[TAGPBArray initWithValueType:]
; address 0x10012ed74  size 28  kind objc
; ======================================================================
  10012ed74  mov     x8, x2
  10012ed78  mov     x2, #0
  10012ed7c  adrp    x9, #0x10041c000
  10012ed80  nop
  10012ed84  ldr     x1, [x9, #0x4e8]
  10012ed88  mov     x3, x8
  10012ed8c  b       _objc_msgSend                            ; [self initWithCount:0 valueType:arg1]

; ======================================================================
; -[TAGPBArray initWithValues:count:valueType:]
; address 0x10012ed90  size 212  kind objc
; ======================================================================
  10012ed90  stp     x29, x30, [sp, #-0x10]!
  10012ed94  mov     x29, sp
  10012ed98  stp     x20, x19, [sp, #-0x10]!
  10012ed9c  stp     x22, x21, [sp, #-0x10]!
  10012eda0  stp     x24, x23, [sp, #-0x10]!
  10012eda4  mov     x21, x3
  10012eda8  mov     x20, x2
  10012edac  adrp    x8, #0x10041c000
  10012edb0  nop
  10012edb4  ldr     x1, [x8, #0x4e8]
  10012edb8  mov     x2, x21
  10012edbc  mov     x3, x4
  10012edc0  bl      _objc_msgSend                            ; [self initWithCount:arg2 valueType:arg3]
  10012edc4  mov     x19, x0
  10012edc8  cbz     x19, loc_10012ee4c                       ; if (self == 0)
  10012edcc  adrp    x8, #0x100420000
  10012edd0  ldrsw   x22, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012edd4  ldr     x0, [x19, x22]                           ; x0 = self->_data
  10012edd8  nop
  10012eddc  ldrsw   x23, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012ede0  add     x8, x19, x23
  10012ede4  ldr     w8, [x8]                                 ; w8 = self->_valueType
  10012ede8  lsl     x8, x8, #5
  10012edec  adrp    x9, #0x1003b8000
  10012edf0  add     x9, x9, #0x618                           ; &d_1003b8618
  10012edf4  ldr     x8, [x9, x8]
  10012edf8  mul     x2, x8, x21
  10012edfc  mov     x1, x20
  10012ee00  bl      _memcpy                                  ; memcpy(self->_data, arg1, (x8 * arg2))
  10012ee04  ldr     w8, [x19, x23]                           ; w8 = self->_valueType
  10012ee08  cbnz    w8, loc_10012ee4c                        ; if (self->_valueType != 0)
  10012ee0c  adrp    x8, #0x100420000
  10012ee10  ldrsw   x21, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012ee14  ldr     x8, [x19, x21]                           ; x8 = self->_count
  10012ee18  cbz     x8, loc_10012ee4c                        ; if (self->_count == 0)
  10012ee1c  mov     x23, #0
  10012ee20  adrp    x8, #0x10041b000
  10012ee24  add     x8, x8, #0xdb8                           ; &@selector(retain)
  10012ee28  ldr     x20, [x8]
loc_10012ee2c:
  10012ee2c  ldr     x8, [x19, x22]                           ; x8 = self->_data
  10012ee30  ldr     x0, [x8, x23, lsl #3]
  10012ee34  mov     x1, x20
  10012ee38  bl      _objc_msgSend                            ; [x0 retain]
  10012ee3c  add     x23, x23, #1
  10012ee40  ldr     x8, [x19, x21]                           ; x8 = self->_count
  10012ee44  cmp     x23, x8
  10012ee48  b.lo    loc_10012ee2c                            ; if ((x23 + 1) <u self->_count)
loc_10012ee4c:
  10012ee4c  mov     x0, x19
  10012ee50  ldp     x24, x23, [sp], #0x10
  10012ee54  ldp     x22, x21, [sp], #0x10
  10012ee58  ldp     x20, x19, [sp], #0x10
  10012ee5c  ldp     x29, x30, [sp], #0x10
  10012ee60  ret

; ======================================================================
; -[TAGPBArray initWithArray:valueType:]
; address 0x10012ee64  size 876  kind objc
; ======================================================================
  10012ee64  stp     x29, x30, [sp, #-0x10]!
  10012ee68  mov     x29, sp
  10012ee6c  stp     x20, x19, [sp, #-0x10]!
  10012ee70  stp     x22, x21, [sp, #-0x10]!
  10012ee74  stp     x24, x23, [sp, #-0x10]!
  10012ee78  stp     x26, x25, [sp, #-0x10]!
  10012ee7c  stp     x28, x27, [sp, #-0x10]!
  10012ee80  sub     sp, sp, #0x1f0
  10012ee84  mov     x21, x3
  10012ee88  str     x2, [sp, #0x48]
  10012ee8c  mov     x20, x0
  10012ee90  adrp    x8, #0x1003b0000
  10012ee94  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10012ee98  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10012ee9c  stur    x8, [x29, #-0x58]
  10012eea0  adrp    x8, #0x100416000
  10012eea4  nop
  10012eea8  ldr     x1, [x8, #0xe30]
  10012eeac  mov     x0, x2
  10012eeb0  bl      _objc_msgSend                            ; [arg1 count]
  10012eeb4  mov     x2, x0
  10012eeb8  adrp    x8, #0x10041c000
  10012eebc  nop
  10012eec0  ldr     x1, [x8, #0x4e8]
  10012eec4  mov     x0, x20
  10012eec8  mov     x3, x21
  10012eecc  bl      _objc_msgSend                            ; [self initWithCount:[arg1 count] valueType:arg2]
  10012eed0  str     x0, [sp, #0x60]
  10012eed4  cbz     x0, loc_10012f190                        ; if (self == 0)
  10012eed8  cbz     w21, loc_10012f088                       ; if (arg2 == 0)
  10012eedc  stp     xzr, xzr, [sp, #0x118]
  10012eee0  stp     xzr, xzr, [sp, #0x108]
  10012eee4  stp     xzr, xzr, [sp, #0xf8]
  10012eee8  stp     xzr, xzr, [sp, #0xe8]
  10012eeec  adrp    x8, #0x100416000
  10012eef0  nop
  10012eef4  ldr     x1, [x8, #0xe00]
  10012eef8  str     x1, [sp, #0x28]
  10012eefc  add     x2, sp, #0xe8
  10012ef00  add     x3, sp, #0x68
  10012ef04  mov     x4, #0x10
  10012ef08  ldr     x0, [sp, #0x48]
  10012ef0c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16]
  10012ef10  mov     x22, x0
  10012ef14  cbz     x22, loc_10012f190                       ; if ([arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16] == 0)
  10012ef18  mov     x26, #0
  10012ef1c  adrp    x19, #0x1003b8000
  10012ef20  add     x19, x19, #0x618                         ; &d_1003b8618
  10012ef24  ldr     x8, [sp, #0xf8]
  10012ef28  ubfx    x9, x21, #0, #0x20
  10012ef2c  add     x9, x19, x9, lsl #5
  10012ef30  ldr     x9, [x9, #0x10]                          ; x9 = (&d_1003b8618 + (x9 << 5))[+0x10]
  10012ef34  str     x9, [sp, #0x50]
  10012ef38  ldr     x8, [x8]
  10012ef3c  str     x8, [sp, #0x58]
  10012ef40  adrp    x8, #0x100417000
  10012ef44  nop
  10012ef48  ldr     x23, [x8, #0x2e0]
  10012ef4c  adrp    x8, #0x100417000
  10012ef50  nop
  10012ef54  ldr     x24, [x8, #0x3b8]
  10012ef58  adrp    x8, #0x100420000
  10012ef5c  ldrsw   x27, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012ef60  nop
  10012ef64  adrp    x9, #0x100417000
  10012ef68  nop
  10012ef6c  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012ef70  ldr     x9, [x9, #0x260]
  10012ef74  str     x9, [sp, #0x30]
  10012ef78  ldr     x9, [sp, #0x60]
  10012ef7c  add     x21, x9, x8
  10012ef80  add     x8, sp, #0xe8
  10012ef84  str     x8, [sp, #0x20]
  10012ef88  add     x8, sp, #0x68
  10012ef8c  str     x8, [sp, #0x18]
loc_10012ef90:
  10012ef90  mov     x20, #0
  10012ef94  cmp     x22, #1
  10012ef98  mov     x8, #1
  10012ef9c  csel    x8, x22, x8, hi                          ; t1 = ([arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16] >u 1 ? [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16] : 1)
  10012efa0  str     x8, [sp, #0x38]
  10012efa4  b       loc_10012efe4
loc_10012efa8:
  10012efa8  adrp    x8, #0x10041d000
  10012efac  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10012efb0  str     x8, [sp, #0x40]
  10012efb4  mov     x0, x28
  10012efb8  mov     x1, x23
  10012efbc  bl      _objc_msgSend                            ; [x0 class]
  10012efc0  str     x0, [sp]
  10012efc4  ldr     x0, [sp, #0x40]
  10012efc8  ldr     x1, [sp, #0x30]
  10012efcc  adrp    x2, #0x1003c6000
  10012efd0  add     x2, x2, #0xb30                           ; @"TAGPBArrayNumberExpectedException"
  10012efd4  adrp    x3, #0x1003c6000
  10012efd8  add     x3, x3, #0xc90                           ; @"NSNumber expected (got '%@')"
  10012efdc  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayNumberExpectedException" format:@"NSNumber expected (got '%@')", [x0 class]]
  10012efe0  b       loc_10012f030
loc_10012efe4:
  10012efe4  ldr     x8, [sp, #0xf8]
  10012efe8  ldr     x8, [x8]
  10012efec  ldr     x9, [sp, #0x58]
  10012eff0  cmp     x8, x9
  10012eff4  b.eq    loc_10012f000                            ; if (x8 == x9)
  10012eff8  ldr     x0, [sp, #0x48]
  10012effc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10012f000:
  10012f000  add     x25, x26, x20
  10012f004  ldr     x8, [sp, #0xf0]
  10012f008  ldr     x28, [x8, x20, lsl #3]
  10012f00c  adrp    x8, #0x10041d000
  10012f010  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10012f014  mov     x1, x23
  10012f018  bl      _objc_msgSend                            ; [NSNumber class]
  10012f01c  mov     x2, x0
  10012f020  mov     x0, x28
  10012f024  mov     x1, x24
  10012f028  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSNumber class]]
  10012f02c  tbz     w0, #0, loc_10012efa8                    ; if (!([x0 isKindOfClass:[NSNumber class]] & 1))
loc_10012f030:
  10012f030  ldr     x8, [sp, #0x60]
  10012f034  ldr     x8, [x8, x27]                            ; x8 = self->_data
  10012f038  ldr     w9, [x21]                                ; w9 = self->_valueType
  10012f03c  lsl     x9, x9, #5
  10012f040  ldr     x9, [x19, x9]
  10012f044  madd    x1, x9, x25, x8
  10012f048  mov     x0, x28
  10012f04c  ldr     x8, [sp, #0x50]
  10012f050  blr     x8                                       ; call (&d_1003b8618 + (x9 << 5))[+0x10]
  10012f054  add     x20, x20, #1
  10012f058  cmp     x20, x22
  10012f05c  b.lo    loc_10012efe4                            ; if ((x20 + 1) <u [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16])
  10012f060  ldr     x8, [sp, #0x38]
  10012f064  add     x26, x26, x8
  10012f068  mov     x4, #0x10
  10012f06c  ldr     x0, [sp, #0x48]
  10012f070  ldp     x2, x1, [sp, #0x20]
  10012f074  ldr     x3, [sp, #0x18]
  10012f078  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16]
  10012f07c  mov     x22, x0
  10012f080  cbnz    x22, loc_10012ef90                       ; if ([arg1 countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16] != 0)
  10012f084  b       loc_10012f190
loc_10012f088:
  10012f088  stp     xzr, xzr, [x29, #-0x68]
  10012f08c  stp     xzr, xzr, [x29, #-0x78]
  10012f090  stp     xzr, xzr, [x29, #-0x88]
  10012f094  stp     xzr, xzr, [x29, #-0x98]
  10012f098  adrp    x8, #0x100416000
  10012f09c  nop
  10012f0a0  ldr     x1, [x8, #0xe00]
  10012f0a4  str     x1, [sp, #0x58]
  10012f0a8  sub     x2, x29, #0x98
  10012f0ac  add     x3, sp, #0x128
  10012f0b0  mov     x4, #0x10
  10012f0b4  ldr     x0, [sp, #0x48]
  10012f0b8  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16]
  10012f0bc  mov     x23, x0
  10012f0c0  cbz     x23, loc_10012f190                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16] == 0)
  10012f0c4  mov     x19, #0
  10012f0c8  ldur    x8, [x29, #-0x88]
  10012f0cc  adrp    x9, #0x10041b000
  10012f0d0  nop
  10012f0d4  ldr     x26, [x8]
  10012f0d8  ldr     x22, [x9, #0xdb8]
  10012f0dc  adrp    x8, #0x100420000
  10012f0e0  ldrsw   x27, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012f0e4  nop
  10012f0e8  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012f0ec  ldr     x9, [sp, #0x60]
  10012f0f0  add     x28, x9, x8
  10012f0f4  adrp    x20, #0x1003b8000
  10012f0f8  add     x20, x20, #0x618                         ; &d_1003b8618
  10012f0fc  sub     x8, x29, #0x98
  10012f100  str     x8, [sp, #0x50]
  10012f104  add     x8, sp, #0x128
  10012f108  str     x8, [sp, #0x40]
loc_10012f10c:
  10012f10c  mov     x24, #0
  10012f110  cmp     x23, #1
  10012f114  mov     x8, #1
  10012f118  csel    x21, x23, x8, hi                         ; t2 = ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16] >u 1 ? [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16] : 1)
loc_10012f11c:
  10012f11c  add     x25, x19, x24
  10012f120  ldur    x8, [x29, #-0x88]
  10012f124  ldr     x8, [x8]
  10012f128  cmp     x8, x26
  10012f12c  b.eq    loc_10012f138                            ; if (x8 == x26)
  10012f130  ldr     x0, [sp, #0x48]
  10012f134  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10012f138:
  10012f138  ldur    x8, [x29, #-0x90]
  10012f13c  ldr     x0, [x8, x24, lsl #3]
  10012f140  mov     x1, x22
  10012f144  bl      _objc_msgSend                            ; [x0 retain]
  10012f148  ldr     x8, [sp, #0x60]
  10012f14c  ldr     x8, [x8, x27]                            ; x8 = self->_data
  10012f150  ldr     w9, [x28]                                ; w9 = self->_valueType
  10012f154  lsl     x9, x9, #5
  10012f158  ldr     x9, [x20, x9]
  10012f15c  mul     x9, x9, x25
  10012f160  str     x0, [x8, x9]
  10012f164  add     x24, x24, #1
  10012f168  cmp     x24, x23
  10012f16c  b.lo    loc_10012f11c                            ; if ((x24 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16])
  10012f170  add     x19, x19, x21
  10012f174  mov     x4, #0x10
  10012f178  ldp     x0, x2, [sp, #0x48]
  10012f17c  ldr     x1, [sp, #0x58]
  10012f180  ldr     x3, [sp, #0x40]
  10012f184  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16]
  10012f188  mov     x23, x0
  10012f18c  cbnz    x23, loc_10012f10c                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16] != 0)
loc_10012f190:
  10012f190  adrp    x8, #0x1003b0000
  10012f194  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10012f198  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10012f19c  ldur    x9, [x29, #-0x58]
  10012f1a0  sub     x8, x8, x9
  10012f1a4  cbnz    x8, loc_10012f1cc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10012f1a8  ldr     x0, [sp, #0x60]
  10012f1ac  sub     sp, x29, #0x50
  10012f1b0  ldp     x28, x27, [sp], #0x10
  10012f1b4  ldp     x26, x25, [sp], #0x10
  10012f1b8  ldp     x24, x23, [sp], #0x10
  10012f1bc  ldp     x22, x21, [sp], #0x10
  10012f1c0  ldp     x20, x19, [sp], #0x10
  10012f1c4  ldp     x29, x30, [sp], #0x10
  10012f1c8  ret
loc_10012f1cc:
  10012f1cc  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[TAGPBArray initWithObject:]
; address 0x10012f1d0  size 56  kind objc
; ======================================================================
  10012f1d0  stp     x29, x30, [sp, #-0x10]!
  10012f1d4  mov     x29, sp
  10012f1d8  sub     sp, sp, #0x10
  10012f1dc  str     x2, [sp, #8]
  10012f1e0  adrp    x8, #0x10041c000
  10012f1e4  nop
  10012f1e8  ldr     x1, [x8, #0x4e0]
  10012f1ec  add     x2, sp, #8
  10012f1f0  mov     x3, #1
  10012f1f4  mov     w4, #0
  10012f1f8  bl      _objc_msgSend                            ; [self initWithValues:&sp[0x8] count:1 valueType:0]
  10012f1fc  mov     sp, x29
  10012f200  ldp     x29, x30, [sp], #0x10
  10012f204  ret

; ======================================================================
; -[TAGPBArray initWithInt32:]
; address 0x10012f208  size 56  kind objc
; ======================================================================
  10012f208  stp     x29, x30, [sp, #-0x10]!
  10012f20c  mov     x29, sp
  10012f210  sub     sp, sp, #0x10
  10012f214  stur    w2, [x29, #-4]
  10012f218  adrp    x8, #0x10041c000
  10012f21c  nop
  10012f220  ldr     x1, [x8, #0x4e0]
  10012f224  sub     x2, x29, #4
  10012f228  mov     x3, #1
  10012f22c  mov     w4, #2
  10012f230  bl      _objc_msgSend                            ; [self initWithValues:&x29[-0x4] count:1 valueType:2]
  10012f234  mov     sp, x29
  10012f238  ldp     x29, x30, [sp], #0x10
  10012f23c  ret

; ======================================================================
; -[TAGPBArray valueForKey:]
; address 0x10012f240  size 356  kind objc
; ======================================================================
  10012f240  stp     x29, x30, [sp, #-0x10]!
  10012f244  mov     x29, sp
  10012f248  stp     x20, x19, [sp, #-0x10]!
  10012f24c  stp     x22, x21, [sp, #-0x10]!
  10012f250  stp     x24, x23, [sp, #-0x10]!
  10012f254  stp     x26, x25, [sp, #-0x10]!
  10012f258  stp     x28, x27, [sp, #-0x10]!
  10012f25c  sub     sp, sp, #0x10
  10012f260  mov     x19, x2
  10012f264  mov     x20, x0
  10012f268  adrp    x8, #0x100420000
  10012f26c  ldrsw   x28, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012f270  ldr     w8, [x20, x28]                           ; w8 = self->_valueType
  10012f274  cbnz    w8, loc_10012f36c                        ; if (self->_valueType != 0)
loc_10012f278:
  10012f278  adrp    x8, #0x10041d000
  10012f27c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10012f280  adrp    x8, #0x100420000
  10012f284  ldrsw   x25, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012f288  ldr     x2, [x20, x25]                           ; x2 = self->_count
  10012f28c  adrp    x8, #0x10041b000
  10012f290  nop
  10012f294  ldr     x1, [x8, #0x280]
  10012f298  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:self->_count]
  10012f29c  mov     x21, x0
  10012f2a0  ldr     x8, [x20, x25]                           ; x8 = self->_count
  10012f2a4  cbz     x8, loc_10012f348                        ; if (self->_count == 0)
  10012f2a8  mov     x26, #0
  10012f2ac  adrp    x8, #0x100420000
  10012f2b0  adrp    x9, #0x100416000
  10012f2b4  nop
  10012f2b8  ldrsw   x27, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012f2bc  ldr     x22, [x9, #0xda0]
  10012f2c0  adrp    x8, #0x100418000
  10012f2c4  nop
  10012f2c8  adrp    x9, #0x100416000
  10012f2cc  add     x9, x9, #0xd90                           ; &@selector(addObject:)
  10012f2d0  ldr     x8, [x8, #0x468]
  10012f2d4  str     x8, [sp, #8]
  10012f2d8  ldr     x24, [x9]
  10012f2dc  add     x28, x20, x28
  10012f2e0  adrp    x23, #0x1003b8000
  10012f2e4  add     x23, x23, #0x618                         ; &d_1003b8618
loc_10012f2e8:
  10012f2e8  ldr     x8, [x20, x27]                           ; x8 = self->_data
  10012f2ec  ldr     w9, [x28]                                ; w9 = self->_valueType
  10012f2f0  lsl     x9, x9, #5
  10012f2f4  ldr     x9, [x23, x9]
  10012f2f8  mul     x9, x9, x26
  10012f2fc  ldr     x0, [x8, x9]
  10012f300  mov     x1, x22
  10012f304  mov     x2, x19
  10012f308  bl      _objc_msgSend                            ; [x0 valueForKey:arg1]
  10012f30c  mov     x8, x0
  10012f310  cbnz    x8, loc_10012f328                        ; if ([x0 valueForKey:arg1] != 0)
  10012f314  adrp    x8, #0x10041e000
  10012f318  ldr     x0, [x8, #0x140]                         ; class NSNull
  10012f31c  ldr     x1, [sp, #8]
  10012f320  bl      _objc_msgSend                            ; [NSNull null]
  10012f324  mov     x8, x0
loc_10012f328:
  10012f328  mov     x0, x21
  10012f32c  mov     x1, x24
  10012f330  mov     x2, x8
  10012f334  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:self->_count] addObject:x2]
  10012f338  add     x26, x26, #1
  10012f33c  ldr     x8, [x20, x25]                           ; x8 = self->_count
  10012f340  cmp     x26, x8
  10012f344  b.lo    loc_10012f2e8                            ; if ((x26 + 1) <u self->_count)
loc_10012f348:
  10012f348  mov     x0, x21
  10012f34c  sub     sp, x29, #0x50
  10012f350  ldp     x28, x27, [sp], #0x10
  10012f354  ldp     x26, x25, [sp], #0x10
  10012f358  ldp     x24, x23, [sp], #0x10
  10012f35c  ldp     x22, x21, [sp], #0x10
  10012f360  ldp     x20, x19, [sp], #0x10
  10012f364  ldp     x29, x30, [sp], #0x10
  10012f368  ret
loc_10012f36c:
  10012f36c  adrp    x8, #0x10041d000
  10012f370  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012f374  adrp    x8, #0x100417000
  10012f378  nop
  10012f37c  ldr     x1, [x8, #0x260]
  10012f380  adrp    x8, #0x100393000
  10012f384  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012f388  adrp    x2, #0x1003c6000
  10012f38c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012f390  str     x8, [sp]
  10012f394  adrp    x3, #0x1003c6000
  10012f398  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012f39c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012f3a0  b       loc_10012f278

; ======================================================================
; -[TAGPBArray setValue:forKey:]
; address 0x10012f3a4  size 256  kind objc
; ======================================================================
  10012f3a4  stp     x29, x30, [sp, #-0x10]!
  10012f3a8  mov     x29, sp
  10012f3ac  stp     x20, x19, [sp, #-0x10]!
  10012f3b0  stp     x22, x21, [sp, #-0x10]!
  10012f3b4  stp     x24, x23, [sp, #-0x10]!
  10012f3b8  stp     x26, x25, [sp, #-0x10]!
  10012f3bc  stp     x28, x27, [sp, #-0x10]!
  10012f3c0  sub     sp, sp, #0x10
  10012f3c4  mov     x19, x3
  10012f3c8  mov     x20, x2
  10012f3cc  mov     x21, x0
  10012f3d0  adrp    x8, #0x100420000
  10012f3d4  ldrsw   x24, [x8, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012f3d8  ldr     w8, [x21, x24]                           ; w8 = self->_valueType
  10012f3dc  cbnz    w8, loc_10012f46c                        ; if (self->_valueType != 0)
loc_10012f3e0:
  10012f3e0  adrp    x8, #0x100420000
  10012f3e4  ldrsw   x23, [x8, #0x904]                        ; ivar offset TAGPBArray._count (+0x18)
  10012f3e8  ldr     x8, [x21, x23]                           ; x8 = self->_count
  10012f3ec  cbz     x8, loc_10012f44c                        ; if (self->_count == 0)
  10012f3f0  mov     x25, #0
  10012f3f4  adrp    x8, #0x100420000
  10012f3f8  ldrsw   x26, [x8, #0x90c]                        ; ivar offset TAGPBArray._data (+0x20)
  10012f3fc  adrp    x8, #0x100418000
  10012f400  add     x8, x8, #0x318                           ; &@selector(setValue:forKey:)
  10012f404  ldr     x22, [x8]
  10012f408  add     x24, x21, x24
  10012f40c  adrp    x27, #0x1003b8000
  10012f410  add     x27, x27, #0x618                         ; &d_1003b8618
loc_10012f414:
  10012f414  ldr     x8, [x21, x26]                           ; x8 = self->_data
  10012f418  ldr     w9, [x24]                                ; w9 = self->_valueType
  10012f41c  lsl     x9, x9, #5
  10012f420  ldr     x9, [x27, x9]
  10012f424  mul     x9, x9, x25
  10012f428  ldr     x0, [x8, x9]
  10012f42c  mov     x1, x22
  10012f430  mov     x2, x20
  10012f434  mov     x3, x19
  10012f438  bl      _objc_msgSend                            ; [x0 setValue:arg1 forKey:arg2]
  10012f43c  add     x25, x25, #1
  10012f440  ldr     x8, [x21, x23]                           ; x8 = self->_count
  10012f444  cmp     x25, x8
  10012f448  b.lo    loc_10012f414                            ; if ((x25 + 1) <u self->_count)
loc_10012f44c:
  10012f44c  sub     sp, x29, #0x50
  10012f450  ldp     x28, x27, [sp], #0x10
  10012f454  ldp     x26, x25, [sp], #0x10
  10012f458  ldp     x24, x23, [sp], #0x10
  10012f45c  ldp     x22, x21, [sp], #0x10
  10012f460  ldp     x20, x19, [sp], #0x10
  10012f464  ldp     x29, x30, [sp], #0x10
  10012f468  ret
loc_10012f46c:
  10012f46c  adrp    x8, #0x10041d000
  10012f470  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012f474  adrp    x8, #0x100417000
  10012f478  nop
  10012f47c  ldr     x1, [x8, #0x260]
  10012f480  adrp    x8, #0x100393000
  10012f484  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012f488  adrp    x2, #0x1003c6000
  10012f48c  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012f490  str     x8, [sp]
  10012f494  adrp    x3, #0x1003c6000
  10012f498  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012f49c  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012f4a0  b       loc_10012f3e0

; ======================================================================
; -[TAGPBArray valueType]
; address 0x10012f4a4  size 16  kind objc
; ======================================================================
  10012f4a4  adrp    x8, #0x100420000
  10012f4a8  ldrsw   x8, [x8, #0x900]                         ; ivar offset TAGPBArray._valueType (+0x8)
  10012f4ac  ldr     w0, [x0, x8]                             ; w0 = self->_valueType
  10012f4b0  ret

; ======================================================================
; -[TAGPBArray count]
; address 0x10012f4b4  size 16  kind objc
; ======================================================================
  10012f4b4  adrp    x8, #0x100420000
  10012f4b8  ldrsw   x8, [x8, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012f4bc  ldr     x0, [x0, x8]                             ; x0 = self->_count
  10012f4c0  ret

; ======================================================================
; sub_10012f4c4
; address 0x10012f4c4  size 236  kind sub
; ======================================================================
  10012f4c4  stp     x29, x30, [sp, #-0x10]!
  10012f4c8  mov     x29, sp
  10012f4cc  stp     x20, x19, [sp, #-0x10]!
  10012f4d0  stp     x22, x21, [sp, #-0x10]!
  10012f4d4  sub     sp, sp, #0x10
  10012f4d8  mov     x20, x1
  10012f4dc  mov     x19, x0
  10012f4e0  adrp    x21, #0x100420000
  10012f4e4  ldrsw   x8, [x21, #0x900]                        ; ivar offset TAGPBArray._valueType (+0x8)
  10012f4e8  ldr     w8, [x19, x8]                            ; w8 = a0->_valueType
  10012f4ec  cbnz    w8, loc_10012f578                        ; if (a0->_valueType != 0)
loc_10012f4f0:
  10012f4f0  adrp    x8, #0x10041c000
  10012f4f4  nop
  10012f4f8  ldr     x1, [x8, #0x518]
  10012f4fc  mov     x2, #1
  10012f500  mov     x0, x19
  10012f504  bl      _objc_msgSend                            ; [a0 ensureAdditionalCapacity:1]
  10012f508  adrp    x8, #0x100420000
  10012f50c  ldrsw   x8, [x8, #0x90c]                         ; ivar offset TAGPBArray._data (+0x20)
  10012f510  ldr     x8, [x19, x8]                            ; x8 = a0->_data
  10012f514  adrp    x9, #0x100420000
  10012f518  ldrsw   x9, [x9, #0x904]                         ; ivar offset TAGPBArray._count (+0x18)
  10012f51c  ldr     x10, [x19, x9]                           ; x10 = a0->_count
  10012f520  ldrsw   x11, [x21, #0x900]                       ; ivar offset TAGPBArray._valueType (+0x8)
  10012f524  add     x11, x19, x11
  10012f528  ldr     w11, [x11]                               ; w11 = a0->_valueType
  10012f52c  adrp    x12, #0x1003b8000
  10012f530  add     x12, x12, #0x618                         ; &d_1003b8618
  10012f534  lsl     x11, x11, #5
  10012f538  ldr     x11, [x12, x11]
  10012f53c  mul     x10, x11, x10
  10012f540  str     x20, [x8, x10]
  10012f544  ldr     x8, [x19, x9]                            ; x8 = a0->_count
  10012f548  add     x8, x8, #1
  10012f54c  str     x8, [x19, x9]                            ; a0->_count = (a0->_count + 1)
  10012f550  adrp    x8, #0x100420000
  10012f554  ldrsw   x8, [x8, #0x910]                         ; ivar offset TAGPBMutableArray._mutationCount (+0x28)
  10012f558  ldr     x9, [x19, x8]                            ; x9 = a0->_mutationCount
  10012f55c  add     x9, x9, #1
  10012f560  str     x9, [x19, x8]                            ; a0->_mutationCount = (a0->_mutationCount + 1)
  10012f564  sub     sp, x29, #0x20
  10012f568  ldp     x22, x21, [sp], #0x10
  10012f56c  ldp     x20, x19, [sp], #0x10
  10012f570  ldp     x29, x30, [sp], #0x10
  10012f574  ret
loc_10012f578:
  10012f578  adrp    x8, #0x10041d000
  10012f57c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10012f580  adrp    x8, #0x100417000
  10012f584  nop
  10012f588  ldr     x1, [x8, #0x260]
  10012f58c  adrp    x8, #0x100393000
  10012f590  add     x8, x8, #0x7cd                           ; "TAGPBArrayValueTypeObject"
  10012f594  adrp    x2, #0x1003c6000
  10012f598  add     x2, x2, #0xb10                           ; @"TAGPBArrayTypeMismatchException"
  10012f59c  str     x8, [sp]
  10012f5a0  adrp    x3, #0x1003c6000
  10012f5a4  add     x3, x3, #0xb70                           ; @"array value type mismatch (expected '%s')"
  10012f5a8  bl      _objc_msgSend                            ; [NSException raise:@"TAGPBArrayTypeMismatchException" format:@"array value type mismatch (expected '%s')", "TAGPBArrayValueTypeObject"]
  10012f5ac  b       loc_10012f4f0
