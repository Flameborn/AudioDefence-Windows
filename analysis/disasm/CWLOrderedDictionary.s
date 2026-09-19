// unit CWLOrderedDictionary — 18 functions
//   0x1000df2a4      36  -[CWLOrderedDictionary init]
//   0x1000df2c8     324  -[CWLOrderedDictionary initWithCapacity:]
//   0x1000df40c      60  -[CWLOrderedDictionary dealloc]
//   0x1000df448      16  -[CWLOrderedDictionary copy]
//   0x1000df458     224  -[CWLOrderedDictionary setObject:forKey:]
//   0x1000df538     128  -[CWLOrderedDictionary removeObjectForKey:]
//   0x1000df5b8      28  -[CWLOrderedDictionary count]
//   0x1000df5d4      52  -[CWLOrderedDictionary objectForKey:]
//   0x1000df608      28  -[CWLOrderedDictionary keyEnumerator]
//   0x1000df624      28  -[CWLOrderedDictionary reverseKeyEnumerator]
//   0x1000df640     256  -[CWLOrderedDictionary insertObject:forKey:atIndex:]
//   0x1000df740      28  -[CWLOrderedDictionary keyAtIndex:]
//   0x1000df75c     780  -[CWLOrderedDictionary descriptionWithLocale:indent:]
//   0x1000dfa68      16  -[CWLOrderedDictionary dictionary]
//   0x1000dfa78      56  -[CWLOrderedDictionary setDictionary:]
//   0x1000dfab0      16  -[CWLOrderedDictionary array]
//   0x1000dfac0      56  -[CWLOrderedDictionary setArray:]
//   0x1000dfaf8      64  -[CWLOrderedDictionary .cxx_destruct]

; ======================================================================
; -[CWLOrderedDictionary init]
; address 0x1000df2a4  size 36  kind objc
; ======================================================================
  1000df2a4  stp     x29, x30, [sp, #-0x10]!
  1000df2a8  mov     x29, sp
  1000df2ac  adrp    x8, #0x100417000
  1000df2b0  nop
  1000df2b4  ldr     x1, [x8, #0x288]
  1000df2b8  mov     x2, #0
  1000df2bc  bl      _objc_msgSend                            ; [self initWithCapacity:0]
  1000df2c0  ldp     x29, x30, [sp], #0x10
  1000df2c4  ret

; ======================================================================
; -[CWLOrderedDictionary initWithCapacity:]
; address 0x1000df2c8  size 324  kind objc
; ======================================================================
  1000df2c8  stp     x24, x23, [sp, #-0x40]!
  1000df2cc  stp     x22, x21, [sp, #0x10]
  1000df2d0  stp     x20, x19, [sp, #0x20]
  1000df2d4  stp     x29, x30, [sp, #0x30]
  1000df2d8  add     x29, sp, #0x30
  1000df2dc  sub     sp, sp, #0x10
  1000df2e0  mov     x20, x2
  1000df2e4  str     x0, [sp]
  1000df2e8  adrp    x8, #0x10041f000
  1000df2ec  ldr     x8, [x8, #0x30]
  1000df2f0  str     x8, [sp, #8]
  1000df2f4  adrp    x8, #0x100416000
  1000df2f8  nop
  1000df2fc  ldr     x1, [x8, #0xab8]
  1000df300  mov     x21, #0
  1000df304  mov     x0, sp
  1000df308  bl      _objc_msgSendSuper2                      ; [super init]
  1000df30c  mov     x19, x0
  1000df310  cbz     x19, loc_1000df3bc                       ; if (self == 0)
  1000df314  mov     x21, x19
  1000df318  adrp    x8, #0x10041d000
  1000df31c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000df320  adrp    x8, #0x100416000
  1000df324  nop
  1000df328  ldr     x22, [x8, #0xac8]
  1000df32c  mov     x1, x22
  1000df330  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000df334  mov     x21, x19
  1000df338  adrp    x8, #0x100417000
  1000df33c  nop
  1000df340  ldr     x23, [x8, #0x288]
  1000df344  mov     x1, x23
  1000df348  mov     x2, x20
  1000df34c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithCapacity:arg1]
  1000df350  mov     x24, x0
  1000df354  adrp    x8, #0x10041b000
  1000df358  nop
  1000df35c  ldr     x1, [x8, #0x1c8]
  1000df360  mov     x0, x19
  1000df364  mov     x2, x24
  1000df368  bl      _objc_msgSend                            ; [self setDictionary:[[NSMutableDictionary alloc] initWithCapacity:arg1]]
  1000df36c  mov     x21, x19
  1000df370  mov     x0, x24
  1000df374  bl      _objc_release
  1000df378  adrp    x8, #0x10041d000
  1000df37c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000df380  mov     x1, x22
  1000df384  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000df388  mov     x21, x19
  1000df38c  mov     x1, x23
  1000df390  mov     x2, x20
  1000df394  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithCapacity:arg1]
  1000df398  mov     x22, x0
  1000df39c  adrp    x8, #0x10041b000
  1000df3a0  nop
  1000df3a4  ldr     x1, [x8, #0x1d0]
  1000df3a8  mov     x0, x19
  1000df3ac  mov     x2, x22
  1000df3b0  bl      _objc_msgSend                            ; [self setArray:[[NSMutableArray alloc] initWithCapacity:arg1]]
  1000df3b4  mov     x0, x22
  1000df3b8  bl      _objc_release
loc_1000df3bc:
  1000df3bc  mov     x0, x19
  1000df3c0  sub     sp, x29, #0x30
  1000df3c4  ldp     x29, x30, [sp, #0x30]
  1000df3c8  ldp     x20, x19, [sp, #0x20]
  1000df3cc  ldp     x22, x21, [sp, #0x10]
  1000df3d0  ldp     x24, x23, [sp], #0x40
  1000df3d4  ret
  1000df3d8  mov     x20, x0
  1000df3dc  b       loc_1000df3fc
  1000df3e0  mov     x20, x0
  1000df3e4  mov     x0, x24
  1000df3e8  b       loc_1000df3f4
  1000df3ec  mov     x20, x0
  1000df3f0  mov     x0, x22
loc_1000df3f4:
  1000df3f4  bl      _objc_release
  1000df3f8  mov     x21, x19
loc_1000df3fc:
  1000df3fc  mov     x0, x21
  1000df400  bl      _objc_release
  1000df404  mov     x0, x20
  1000df408  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[CWLOrderedDictionary dealloc]
; address 0x1000df40c  size 60  kind objc
; ======================================================================
  1000df40c  stp     x29, x30, [sp, #-0x10]!
  1000df410  mov     x29, sp
  1000df414  sub     sp, sp, #0x10
  1000df418  str     x0, [sp]
  1000df41c  adrp    x8, #0x10041f000
  1000df420  ldr     x8, [x8, #0x30]
  1000df424  str     x8, [sp, #8]
  1000df428  adrp    x8, #0x100416000
  1000df42c  nop
  1000df430  ldr     x1, [x8, #0xfc8]
  1000df434  mov     x0, sp
  1000df438  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000df43c  mov     sp, x29
  1000df440  ldp     x29, x30, [sp], #0x10
  1000df444  ret

; ======================================================================
; -[CWLOrderedDictionary copy]
; address 0x1000df448  size 16  kind objc
; ======================================================================
  1000df448  adrp    x8, #0x10041b000
  1000df44c  nop
  1000df450  ldr     x1, [x8, #0x1d8]
  1000df454  b       _objc_msgSend                            ; [self mutableCopy]

; ======================================================================
; -[CWLOrderedDictionary setObject:forKey:]
; address 0x1000df458  size 224  kind objc
; ======================================================================
  1000df458  stp     x24, x23, [sp, #-0x40]!
  1000df45c  stp     x22, x21, [sp, #0x10]
  1000df460  stp     x20, x19, [sp, #0x20]
  1000df464  stp     x29, x30, [sp, #0x30]
  1000df468  add     x29, sp, #0x30
  1000df46c  mov     x20, x3
  1000df470  mov     x21, x0
  1000df474  mov     x0, x2
  1000df478  bl      _objc_retain
  1000df47c  mov     x19, x0
  1000df480  mov     x0, x20
  1000df484  bl      _objc_retain
  1000df488  mov     x20, x0
  1000df48c  adrp    x8, #0x100420000
  1000df490  ldrsw   x23, [x8, #0x5ac]                        ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000df494  ldr     x0, [x21, x23]                           ; x0 = self->dictionary
  1000df498  adrp    x8, #0x100417000
  1000df49c  nop
  1000df4a0  ldr     x1, [x8, #0x40]
  1000df4a4  mov     x2, x20
  1000df4a8  bl      _objc_msgSend                            ; [self->dictionary objectForKey:arg2]
  1000df4ac  mov     x29, x29
  1000df4b0  bl      _objc_retainAutoreleasedReturnValue
  1000df4b4  mov     x22, x0
  1000df4b8  bl      _objc_release
  1000df4bc  cbnz    x22, loc_1000df4e0                       ; if ([self->dictionary objectForKey:arg2] != 0)
  1000df4c0  adrp    x8, #0x100420000
  1000df4c4  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000df4c8  ldr     x0, [x21, x8]                            ; x0 = self->array
  1000df4cc  adrp    x8, #0x100416000
  1000df4d0  nop
  1000df4d4  ldr     x1, [x8, #0xd90]
  1000df4d8  mov     x2, x20
  1000df4dc  bl      _objc_msgSend                            ; [self->array addObject:arg2]
loc_1000df4e0:
  1000df4e0  ldr     x0, [x21, x23]                           ; x0 = self->dictionary
  1000df4e4  adrp    x8, #0x100416000
  1000df4e8  nop
  1000df4ec  ldr     x1, [x8, #0xdc8]
  1000df4f0  mov     x2, x19
  1000df4f4  mov     x3, x20
  1000df4f8  bl      _objc_msgSend                            ; [self->dictionary setObject:arg1 forKey:arg2]
  1000df4fc  mov     x0, x20
  1000df500  bl      _objc_release
  1000df504  mov     x0, x19
  1000df508  ldp     x29, x30, [sp, #0x30]
  1000df50c  ldp     x20, x19, [sp, #0x20]
  1000df510  ldp     x22, x21, [sp, #0x10]
  1000df514  ldp     x24, x23, [sp], #0x40
  1000df518  b       _objc_release
  1000df51c  mov     x21, x0
  1000df520  mov     x0, x20
  1000df524  bl      _objc_release
  1000df528  mov     x0, x19
  1000df52c  bl      _objc_release
  1000df530  mov     x0, x21
  1000df534  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[CWLOrderedDictionary removeObjectForKey:]
; address 0x1000df538  size 128  kind objc
; ======================================================================
  1000df538  stp     x20, x19, [sp, #-0x20]!
  1000df53c  stp     x29, x30, [sp, #0x10]
  1000df540  add     x29, sp, #0x10
  1000df544  mov     x20, x0
  1000df548  mov     x0, x2
  1000df54c  bl      _objc_retain
  1000df550  mov     x19, x0
  1000df554  adrp    x8, #0x100420000
  1000df558  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000df55c  ldr     x0, [x20, x8]                            ; x0 = self->dictionary
  1000df560  adrp    x8, #0x10041b000
  1000df564  nop
  1000df568  ldr     x1, [x8, #0x1e0]
  1000df56c  mov     x2, x19
  1000df570  bl      _objc_msgSend                            ; [self->dictionary removeObjectForKey:arg1]
  1000df574  adrp    x8, #0x100420000
  1000df578  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000df57c  ldr     x0, [x20, x8]                            ; x0 = self->array
  1000df580  adrp    x8, #0x100416000
  1000df584  nop
  1000df588  ldr     x1, [x8, #0xe20]
  1000df58c  mov     x2, x19
  1000df590  bl      _objc_msgSend                            ; [self->array removeObject:arg1]
  1000df594  mov     x0, x19
  1000df598  ldp     x29, x30, [sp, #0x10]
  1000df59c  ldp     x20, x19, [sp], #0x20
  1000df5a0  b       _objc_release
  1000df5a4  mov     x20, x0
  1000df5a8  mov     x0, x19
  1000df5ac  bl      _objc_release
  1000df5b0  mov     x0, x20
  1000df5b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[CWLOrderedDictionary count]
; address 0x1000df5b8  size 28  kind objc
; ======================================================================
  1000df5b8  adrp    x8, #0x100420000
  1000df5bc  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000df5c0  ldr     x0, [x0, x8]                             ; x0 = self->dictionary
  1000df5c4  adrp    x8, #0x100416000
  1000df5c8  nop
  1000df5cc  ldr     x1, [x8, #0xe30]
  1000df5d0  b       _objc_msgSend                            ; [self->dictionary count]

; ======================================================================
; -[CWLOrderedDictionary objectForKey:]
; address 0x1000df5d4  size 52  kind objc
; ======================================================================
  1000df5d4  stp     x29, x30, [sp, #-0x10]!
  1000df5d8  mov     x29, sp
  1000df5dc  adrp    x8, #0x100420000
  1000df5e0  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000df5e4  ldr     x0, [x0, x8]                             ; x0 = self->dictionary
  1000df5e8  adrp    x8, #0x100417000
  1000df5ec  nop
  1000df5f0  ldr     x1, [x8, #0x40]
  1000df5f4  bl      _objc_msgSend                            ; [self->dictionary objectForKey:arg1]
  1000df5f8  mov     x29, x29
  1000df5fc  bl      _objc_retainAutoreleasedReturnValue
  1000df600  ldp     x29, x30, [sp], #0x10
  1000df604  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[CWLOrderedDictionary keyEnumerator]
; address 0x1000df608  size 28  kind objc
; ======================================================================
  1000df608  adrp    x8, #0x100420000
  1000df60c  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000df610  ldr     x0, [x0, x8]                             ; x0 = self->array
  1000df614  adrp    x8, #0x100419000
  1000df618  nop
  1000df61c  ldr     x1, [x8, #0xec8]
  1000df620  b       _objc_msgSend                            ; [self->array objectEnumerator]

; ======================================================================
; -[CWLOrderedDictionary reverseKeyEnumerator]
; address 0x1000df624  size 28  kind objc
; ======================================================================
  1000df624  adrp    x8, #0x100420000
  1000df628  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000df62c  ldr     x0, [x0, x8]                             ; x0 = self->array
  1000df630  adrp    x8, #0x100418000
  1000df634  nop
  1000df638  ldr     x1, [x8, #0x48]
  1000df63c  b       _objc_msgSend                            ; [self->array reverseObjectEnumerator]

; ======================================================================
; -[CWLOrderedDictionary insertObject:forKey:atIndex:]
; address 0x1000df640  size 256  kind objc
; ======================================================================
  1000df640  stp     x24, x23, [sp, #-0x40]!
  1000df644  stp     x22, x21, [sp, #0x10]
  1000df648  stp     x20, x19, [sp, #0x20]
  1000df64c  stp     x29, x30, [sp, #0x30]
  1000df650  add     x29, sp, #0x30
  1000df654  mov     x22, x4
  1000df658  mov     x20, x3
  1000df65c  mov     x21, x0
  1000df660  mov     x0, x2
  1000df664  bl      _objc_retain
  1000df668  mov     x19, x0
  1000df66c  mov     x0, x20
  1000df670  bl      _objc_retain
  1000df674  mov     x20, x0
  1000df678  adrp    x8, #0x100420000
  1000df67c  ldrsw   x24, [x8, #0x5ac]                        ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000df680  ldr     x0, [x21, x24]                           ; x0 = self->dictionary
  1000df684  adrp    x8, #0x100417000
  1000df688  nop
  1000df68c  ldr     x1, [x8, #0x40]
  1000df690  mov     x2, x20
  1000df694  bl      _objc_msgSend                            ; [self->dictionary objectForKey:arg2]
  1000df698  mov     x29, x29
  1000df69c  bl      _objc_retainAutoreleasedReturnValue
  1000df6a0  mov     x23, x0
  1000df6a4  bl      _objc_release
  1000df6a8  cbz     x23, loc_1000df6c4                       ; if ([self->dictionary objectForKey:arg2] == 0)
  1000df6ac  adrp    x8, #0x10041b000
  1000df6b0  nop
  1000df6b4  ldr     x1, [x8, #0x1e0]
  1000df6b8  mov     x0, x21
  1000df6bc  mov     x2, x20
  1000df6c0  bl      _objc_msgSend                            ; [self removeObjectForKey:arg2]
loc_1000df6c4:
  1000df6c4  adrp    x8, #0x100420000
  1000df6c8  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000df6cc  ldr     x0, [x21, x8]                            ; x0 = self->array
  1000df6d0  adrp    x8, #0x10041b000
  1000df6d4  nop
  1000df6d8  ldr     x1, [x8, #0x1e8]
  1000df6dc  mov     x2, x20
  1000df6e0  mov     x3, x22
  1000df6e4  bl      _objc_msgSend                            ; [self->array insertObject:arg2 atIndex:arg3]
  1000df6e8  ldr     x0, [x21, x24]                           ; x0 = self->dictionary
  1000df6ec  adrp    x8, #0x100416000
  1000df6f0  nop
  1000df6f4  ldr     x1, [x8, #0xdc8]
  1000df6f8  mov     x2, x19
  1000df6fc  mov     x3, x20
  1000df700  bl      _objc_msgSend                            ; [self->dictionary setObject:arg1 forKey:arg2]
  1000df704  mov     x0, x20
  1000df708  bl      _objc_release
  1000df70c  mov     x0, x19
  1000df710  ldp     x29, x30, [sp, #0x30]
  1000df714  ldp     x20, x19, [sp, #0x20]
  1000df718  ldp     x22, x21, [sp, #0x10]
  1000df71c  ldp     x24, x23, [sp], #0x40
  1000df720  b       _objc_release
  1000df724  mov     x21, x0
  1000df728  mov     x0, x20
  1000df72c  bl      _objc_release
  1000df730  mov     x0, x19
  1000df734  bl      _objc_release
  1000df738  mov     x0, x21
  1000df73c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[CWLOrderedDictionary keyAtIndex:]
; address 0x1000df740  size 28  kind objc
; ======================================================================
  1000df740  adrp    x8, #0x100420000
  1000df744  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000df748  ldr     x0, [x0, x8]                             ; x0 = self->array
  1000df74c  adrp    x8, #0x100416000
  1000df750  nop
  1000df754  ldr     x1, [x8, #0xc30]
  1000df758  b       _objc_msgSend                            ; [self->array objectAtIndex:arg1]

; ======================================================================
; -[CWLOrderedDictionary descriptionWithLocale:indent:]
; address 0x1000df75c  size 780  kind objc
; ======================================================================
  1000df75c  stp     x28, x27, [sp, #-0x60]!
  1000df760  stp     x26, x25, [sp, #0x10]
  1000df764  stp     x24, x23, [sp, #0x20]
  1000df768  stp     x22, x21, [sp, #0x30]
  1000df76c  stp     x20, x19, [sp, #0x40]
  1000df770  stp     x29, x30, [sp, #0x50]
  1000df774  add     x29, sp, #0x50
  1000df778  sub     sp, sp, #0x110
  1000df77c  mov     x22, x3
  1000df780  mov     x23, x0
  1000df784  adrp    x8, #0x1003b0000
  1000df788  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000df78c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000df790  stur    x8, [x29, #-0x58]
  1000df794  mov     x0, x2
  1000df798  bl      _objc_retain
  1000df79c  mov     x19, x0
  1000df7a0  adrp    x25, #0x10041e000
  1000df7a4  ldr     x0, [x25, #0xd8]                         ; class NSMutableString
  1000df7a8  adrp    x8, #0x10041b000
  1000df7ac  nop
  1000df7b0  ldr     x20, [x8, #0x1f0]
  1000df7b4  mov     x1, x20
  1000df7b8  bl      _objc_msgSend                            ; [NSMutableString string]
  1000df7bc  mov     x29, x29
  1000df7c0  bl      _objc_retainAutoreleasedReturnValue
  1000df7c4  mov     x27, x0
  1000df7c8  cbz     x22, loc_1000df800                       ; if (arg2 == 0)
  1000df7cc  mov     x26, #0
  1000df7d0  adrp    x8, #0x100417000
  1000df7d4  add     x8, x8, #0xd88                           ; &@selector(appendFormat:)
  1000df7d8  ldr     x21, [x8]
  1000df7dc  adrp    x24, #0x1003c2000
  1000df7e0  add     x24, x24, #0xa70                         ; @"    "
loc_1000df7e4:
  1000df7e4  mov     x0, x27
  1000df7e8  mov     x1, x21
  1000df7ec  mov     x2, x24
  1000df7f0  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"    "]
  1000df7f4  add     x26, x26, #1
  1000df7f8  cmp     x26, x22
  1000df7fc  b.lo    loc_1000df7e4                            ; if ((x26 + 1) <u arg2)
loc_1000df800:
  1000df800  ldr     x0, [x25, #0xd8]                         ; class NSMutableString
  1000df804  mov     x1, x20
  1000df808  bl      _objc_msgSend                            ; [NSMutableString string]
  1000df80c  mov     x29, x29
  1000df810  bl      _objc_retainAutoreleasedReturnValue
  1000df814  str     x0, [sp, #0x40]
  1000df818  adrp    x8, #0x100417000
  1000df81c  nop
  1000df820  ldr     x1, [x8, #0xd88]
  1000df824  str     x1, [sp, #0x30]
  1000df828  str     x27, [sp]
  1000df82c  adrp    x2, #0x1003c2000
  1000df830  add     x2, x2, #0xa90                           ; @"%@{\n"
  1000df834  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@{\n", [NSMutableString string]]
  1000df838  str     x27, [sp, #0x38]
  1000df83c  stp     xzr, xzr, [sp, #0x78]
  1000df840  stp     xzr, xzr, [sp, #0x68]
  1000df844  stp     xzr, xzr, [sp, #0x58]
  1000df848  stp     xzr, xzr, [sp, #0x48]
  1000df84c  mov     x0, x23
  1000df850  bl      _objc_retain
  1000df854  mov     x23, x0
  1000df858  adrp    x8, #0x100416000
  1000df85c  nop
  1000df860  ldr     x1, [x8, #0xe00]
  1000df864  str     x1, [sp, #0x28]
  1000df868  add     x2, sp, #0x48
  1000df86c  add     x3, sp, #0x88
  1000df870  mov     w4, #0x10
  1000df874  bl      _objc_msgSend                            ; [self countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000df878  mov     x26, x0
  1000df87c  cbz     x26, loc_1000df96c                       ; if ([self countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] == 0)
  1000df880  ldr     x8, [sp, #0x58]
  1000df884  ldr     x28, [x8]
  1000df888  adrp    x8, #0x100417000
  1000df88c  add     x8, x8, #0x40                            ; &@selector(objectForKey:)
  1000df890  ldr     x27, [x8]
loc_1000df894:
  1000df894  mov     x24, #0
loc_1000df898:
  1000df898  ldr     x8, [sp, #0x58]
  1000df89c  ldr     x8, [x8]
  1000df8a0  cmp     x8, x28
  1000df8a4  b.eq    loc_1000df8b0                            ; if (x8 == x28)
  1000df8a8  mov     x0, x23
  1000df8ac  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self)
loc_1000df8b0:
  1000df8b0  ldr     x8, [sp, #0x50]
  1000df8b4  ldr     x20, [x8, x24, lsl #3]
  1000df8b8  mov     x0, x20
  1000df8bc  mov     x1, x19
  1000df8c0  mov     x2, x22
  1000df8c4  bl      sub_1000df150                            ; sub_1000df150(x0, arg1, arg2)
  1000df8c8  mov     x29, x29
  1000df8cc  bl      _objc_retainAutoreleasedReturnValue
  1000df8d0  mov     x25, x0
  1000df8d4  mov     x0, x23
  1000df8d8  mov     x1, x27
  1000df8dc  mov     x2, x20
  1000df8e0  bl      _objc_msgSend                            ; [self objectForKey:x2]
  1000df8e4  mov     x29, x29
  1000df8e8  bl      _objc_retainAutoreleasedReturnValue
  1000df8ec  mov     x20, x0
  1000df8f0  mov     x1, x19
  1000df8f4  mov     x2, x22
  1000df8f8  bl      sub_1000df150                            ; sub_1000df150([self objectForKey:x2], arg1, arg2)
  1000df8fc  mov     x29, x29
  1000df900  bl      _objc_retainAutoreleasedReturnValue
  1000df904  mov     x21, x0
  1000df908  stp     x25, x21, [sp, #8]
  1000df90c  ldr     x8, [sp, #0x38]
  1000df910  str     x8, [sp]
  1000df914  ldr     x0, [sp, #0x40]
  1000df918  ldr     x1, [sp, #0x30]
  1000df91c  adrp    x2, #0x1003c2000
  1000df920  add     x2, x2, #0xab0                           ; @"%@    %@ = %@;\n"
  1000df924  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@    %@ = %@;\n", [NSMutableString string], sub_1000df150(x0, arg1, arg2), sub_1000df150([self objectForKey:x2], arg1, arg2)]
  1000df928  mov     x0, x21
  1000df92c  bl      _objc_release
  1000df930  mov     x0, x20
  1000df934  bl      _objc_release
  1000df938  mov     x0, x25
  1000df93c  bl      _objc_release
  1000df940  add     x24, x24, #1
  1000df944  cmp     x24, x26
  1000df948  b.lo    loc_1000df898                            ; if ((x24 + 1) <u [self countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16])
  1000df94c  add     x2, sp, #0x48
  1000df950  add     x3, sp, #0x88
  1000df954  mov     w4, #0x10
  1000df958  mov     x0, x23
  1000df95c  ldr     x1, [sp, #0x28]
  1000df960  bl      _objc_msgSend                            ; [self countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000df964  mov     x26, x0
  1000df968  cbnz    x26, loc_1000df894                       ; if ([self countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] != 0)
loc_1000df96c:
  1000df96c  mov     x0, x23
  1000df970  bl      _objc_release
  1000df974  ldr     x27, [sp, #0x38]
  1000df978  str     x27, [sp]
  1000df97c  adrp    x2, #0x1003c2000
  1000df980  add     x2, x2, #0xad0                           ; @"%@}\n"
  1000df984  ldr     x0, [sp, #0x40]
  1000df988  ldr     x1, [sp, #0x30]
  1000df98c  bl      _objc_msgSend                            ; [[NSMutableString string] appendFormat:@"%@}\n", [NSMutableString string]]
  1000df990  adrp    x20, #0x1003b0000
  1000df994  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000df998  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000df99c  mov     x0, x27
  1000df9a0  bl      _objc_release
  1000df9a4  mov     x0, x19
  1000df9a8  bl      _objc_release
  1000df9ac  ldur    x8, [x29, #-0x58]
  1000df9b0  sub     x8, x20, x8
  1000df9b4  cbnz    x8, loc_1000df9dc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000df9b8  ldr     x0, [sp, #0x40]
  1000df9bc  sub     sp, x29, #0x50
  1000df9c0  ldp     x29, x30, [sp, #0x50]
  1000df9c4  ldp     x20, x19, [sp, #0x40]
  1000df9c8  ldp     x22, x21, [sp, #0x30]
  1000df9cc  ldp     x24, x23, [sp, #0x20]
  1000df9d0  ldp     x26, x25, [sp, #0x10]
  1000df9d4  ldp     x28, x27, [sp], #0x60
  1000df9d8  b       _objc_autoreleaseReturnValue
loc_1000df9dc:
  1000df9dc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000df9e0:
  1000df9e0  mov     x22, x0
  1000df9e4  ldr     x27, [sp, #0x38]
  1000df9e8  b       loc_1000dfa1c
  1000df9ec  mov     x22, x0
  1000df9f0  b       loc_1000dfa10
  1000df9f4  mov     x22, x0
  1000df9f8  b       loc_1000dfa08
  1000df9fc  mov     x22, x0
  1000dfa00  mov     x0, x21
  1000dfa04  bl      _objc_release
loc_1000dfa08:
  1000dfa08  mov     x0, x20
  1000dfa0c  bl      _objc_release
loc_1000dfa10:
  1000dfa10  ldr     x27, [sp, #0x38]
  1000dfa14  mov     x0, x25
  1000dfa18  bl      _objc_release
loc_1000dfa1c:
  1000dfa1c  mov     x0, x23
  1000dfa20  bl      _objc_release
loc_1000dfa24:
  1000dfa24  ldr     x0, [sp, #0x40]
  1000dfa28  bl      _objc_release
loc_1000dfa2c:
  1000dfa2c  mov     x0, x27
  1000dfa30  bl      _objc_release
loc_1000dfa34:
  1000dfa34  mov     x0, x19
  1000dfa38  bl      _objc_release
  1000dfa3c  mov     x0, x22
  1000dfa40  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000dfa44:
  1000dfa44  mov     x22, x0
  1000dfa48  b       loc_1000dfa2c
  1000dfa4c  b       loc_1000df9e0
  1000dfa50  mov     x22, x0
  1000dfa54  b       loc_1000dfa24
  1000dfa58  mov     x22, x0
  1000dfa5c  b       loc_1000dfa34
  1000dfa60  b       loc_1000dfa44
  1000dfa64  b       loc_1000df9e0

; ======================================================================
; -[CWLOrderedDictionary dictionary]
; address 0x1000dfa68  size 16  kind objc
; ======================================================================
  1000dfa68  adrp    x8, #0x100420000
  1000dfa6c  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000dfa70  ldr     x0, [x0, x8]                             ; x0 = self->dictionary
  1000dfa74  ret

; ======================================================================
; -[CWLOrderedDictionary setDictionary:]
; address 0x1000dfa78  size 56  kind objc
; ======================================================================
  1000dfa78  stp     x20, x19, [sp, #-0x20]!
  1000dfa7c  stp     x29, x30, [sp, #0x10]
  1000dfa80  add     x29, sp, #0x10
  1000dfa84  mov     x19, x0
  1000dfa88  adrp    x8, #0x100420000
  1000dfa8c  ldrsw   x20, [x8, #0x5ac]                        ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000dfa90  mov     x0, x2
  1000dfa94  bl      _objc_retain
  1000dfa98  ldr     x8, [x19, x20]                           ; x8 = self->dictionary
  1000dfa9c  str     x0, [x19, x20]                           ; self->dictionary = arg1
  1000dfaa0  mov     x0, x8
  1000dfaa4  ldp     x29, x30, [sp, #0x10]
  1000dfaa8  ldp     x20, x19, [sp], #0x20
  1000dfaac  b       _objc_release

; ======================================================================
; -[CWLOrderedDictionary array]
; address 0x1000dfab0  size 16  kind objc
; ======================================================================
  1000dfab0  adrp    x8, #0x100420000
  1000dfab4  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000dfab8  ldr     x0, [x0, x8]                             ; x0 = self->array
  1000dfabc  ret

; ======================================================================
; -[CWLOrderedDictionary setArray:]
; address 0x1000dfac0  size 56  kind objc
; ======================================================================
  1000dfac0  stp     x20, x19, [sp, #-0x20]!
  1000dfac4  stp     x29, x30, [sp, #0x10]
  1000dfac8  add     x29, sp, #0x10
  1000dfacc  mov     x19, x0
  1000dfad0  adrp    x8, #0x100420000
  1000dfad4  ldrsw   x20, [x8, #0x5b0]                        ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000dfad8  mov     x0, x2
  1000dfadc  bl      _objc_retain
  1000dfae0  ldr     x8, [x19, x20]                           ; x8 = self->array
  1000dfae4  str     x0, [x19, x20]                           ; self->array = arg1
  1000dfae8  mov     x0, x8
  1000dfaec  ldp     x29, x30, [sp, #0x10]
  1000dfaf0  ldp     x20, x19, [sp], #0x20
  1000dfaf4  b       _objc_release

; ======================================================================
; -[CWLOrderedDictionary .cxx_destruct]
; address 0x1000dfaf8  size 64  kind objc
; ======================================================================
  1000dfaf8  stp     x20, x19, [sp, #-0x20]!
  1000dfafc  stp     x29, x30, [sp, #0x10]
  1000dfb00  add     x29, sp, #0x10
  1000dfb04  mov     x19, x0
  1000dfb08  adrp    x8, #0x100420000
  1000dfb0c  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset CWLOrderedDictionary.array (+0x10)
  1000dfb10  add     x0, x19, x8
  1000dfb14  mov     x1, #0
  1000dfb18  bl      _objc_storeStrong
  1000dfb1c  mov     x1, #0
  1000dfb20  adrp    x8, #0x100420000
  1000dfb24  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset CWLOrderedDictionary.dictionary (+0x8)
  1000dfb28  add     x0, x19, x8
  1000dfb2c  ldp     x29, x30, [sp, #0x10]
  1000dfb30  ldp     x20, x19, [sp], #0x20
  1000dfb34  b       _objc_storeStrong
