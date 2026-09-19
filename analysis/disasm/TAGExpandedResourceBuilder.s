// unit TAGExpandedResourceBuilder — 13 functions
//   0x100164fe0     276  -[TAGExpandedResourceBuilder init]
//   0x1001650f4     148  -[TAGExpandedResourceBuilder addRule:]
//   0x100165188     564  -[TAGExpandedResourceBuilder addMacro:]
//   0x1001653bc     308  -[TAGExpandedResourceBuilder build]
//   0x1001654f0      16  -[TAGExpandedResourceBuilder version]
//   0x100165500      12  -[TAGExpandedResourceBuilder setVersion:]
//   0x10016550c      16  -[TAGExpandedResourceBuilder resourceFormatVersion]
//   0x10016551c      16  -[TAGExpandedResourceBuilder setResourceFormatVersion:]
//   0x10016552c      16  -[TAGExpandedResourceBuilder rules]
//   0x10016553c      56  -[TAGExpandedResourceBuilder setRules:]
//   0x100165574      16  -[TAGExpandedResourceBuilder macros]
//   0x100165584      56  -[TAGExpandedResourceBuilder setMacros:]
//   0x1001655bc      84  -[TAGExpandedResourceBuilder .cxx_destruct]

; ======================================================================
; -[TAGExpandedResourceBuilder init]
; address 0x100164fe0  size 276  kind objc
; ======================================================================
  100164fe0  stp     x29, x30, [sp, #-0x10]!
  100164fe4  mov     x29, sp
  100164fe8  stp     x20, x19, [sp, #-0x10]!
  100164fec  stp     x22, x21, [sp, #-0x10]!
  100164ff0  sub     sp, sp, #0x10
  100164ff4  str     x0, [sp]
  100164ff8  adrp    x8, #0x10041f000
  100164ffc  ldr     x8, [x8, #0x300]
  100165000  str     x8, [sp, #8]
  100165004  adrp    x8, #0x100416000
  100165008  nop
  10016500c  ldr     x20, [x8, #0xab8]
  100165010  mov     x22, #0
  100165014  mov     x0, sp
  100165018  mov     x1, x20
  10016501c  bl      _objc_msgSendSuper2                      ; [super init]
  100165020  mov     x19, x0
  100165024  cbz     x19, loc_1001650c8                       ; if (self == 0)
  100165028  mov     x22, x19
  10016502c  adrp    x8, #0x10041d000
  100165030  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100165034  adrp    x8, #0x100416000
  100165038  nop
  10016503c  ldr     x21, [x8, #0xac8]
  100165040  mov     x1, x21
  100165044  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100165048  mov     x22, x19
  10016504c  mov     x1, x20
  100165050  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100165054  mov     x22, x19
  100165058  adrp    x8, #0x100420000
  10016505c  ldrsw   x9, [x8, #0xbc4]                         ; ivar offset TAGExpandedResourceBuilder._rules (+0x18)
  100165060  ldr     x8, [x19, x9]                            ; x8 = self->_rules
  100165064  str     x0, [x19, x9]                            ; self->_rules = [[NSMutableArray alloc] init]
  100165068  mov     x0, x8
  10016506c  bl      _objc_release
  100165070  adrp    x8, #0x10041d000
  100165074  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100165078  mov     x1, x21
  10016507c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100165080  mov     x22, x19
  100165084  mov     x1, x20
  100165088  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10016508c  adrp    x8, #0x100420000
  100165090  ldrsw   x9, [x8, #0xbc8]                         ; ivar offset TAGExpandedResourceBuilder._macros (+0x20)
  100165094  ldr     x8, [x19, x9]                            ; x8 = self->_macros
  100165098  str     x0, [x19, x9]                            ; self->_macros = [[NSMutableDictionary alloc] init]
  10016509c  mov     x0, x8
  1001650a0  bl      _objc_release
  1001650a4  adrp    x8, #0x100420000
  1001650a8  ldrsw   x21, [x8, #0xbcc]                        ; ivar offset TAGExpandedResourceBuilder._version (+0x10)
  1001650ac  adrp    x20, #0x1003b9000
  1001650b0  add     x20, x20, #0x870                         ; @""
  1001650b4  mov     x0, x20
  1001650b8  bl      _objc_retain
  1001650bc  ldr     x0, [x19, x21]                           ; x0 = self->_version
  1001650c0  str     x20, [x19, x21]                          ; self->_version = @""
  1001650c4  bl      _objc_release
loc_1001650c8:
  1001650c8  mov     x0, x19
  1001650cc  sub     sp, x29, #0x20
  1001650d0  ldp     x22, x21, [sp], #0x10
  1001650d4  ldp     x20, x19, [sp], #0x10
  1001650d8  ldp     x29, x30, [sp], #0x10
  1001650dc  ret
  1001650e0  mov     x19, x0
  1001650e4  mov     x0, x22
  1001650e8  bl      _objc_release
  1001650ec  mov     x0, x19
  1001650f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedResourceBuilder addRule:]
; address 0x1001650f4  size 148  kind objc
; ======================================================================
  1001650f4  stp     x29, x30, [sp, #-0x10]!
  1001650f8  mov     x29, sp
  1001650fc  stp     x20, x19, [sp, #-0x10]!
  100165100  stp     x22, x21, [sp, #-0x10]!
  100165104  mov     x20, x0
  100165108  mov     x0, x2
  10016510c  bl      _objc_retain
  100165110  mov     x19, x0
  100165114  adrp    x8, #0x10041d000
  100165118  nop
  10016511c  ldr     x1, [x8, #0x820]
  100165120  mov     x0, x20
  100165124  bl      _objc_msgSend                            ; [self rules]
  100165128  mov     x29, x29
  10016512c  bl      _objc_retainAutoreleasedReturnValue
  100165130  mov     x20, x0
  100165134  adrp    x8, #0x100416000
  100165138  nop
  10016513c  ldr     x1, [x8, #0xd90]
  100165140  mov     x2, x19
  100165144  bl      _objc_msgSend                            ; [[self rules] addObject:arg1]
  100165148  mov     x0, x20
  10016514c  bl      _objc_release
  100165150  mov     x0, x19
  100165154  ldp     x22, x21, [sp], #0x10
  100165158  ldp     x20, x19, [sp], #0x10
  10016515c  ldp     x29, x30, [sp], #0x10
  100165160  b       _objc_release
  100165164  mov     x21, x0
  100165168  b       loc_100165178
  10016516c  mov     x21, x0
  100165170  mov     x0, x20
  100165174  bl      _objc_release
loc_100165178:
  100165178  mov     x0, x19
  10016517c  bl      _objc_release
  100165180  mov     x0, x21
  100165184  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedResourceBuilder addMacro:]
; address 0x100165188  size 564  kind objc
; ======================================================================
  100165188  stp     x29, x30, [sp, #-0x10]!
  10016518c  mov     x29, sp
  100165190  stp     x20, x19, [sp, #-0x10]!
  100165194  stp     x22, x21, [sp, #-0x10]!
  100165198  stp     x24, x23, [sp, #-0x10]!
  10016519c  stp     x26, x25, [sp, #-0x10]!
  1001651a0  mov     x22, x0
  1001651a4  mov     x0, x2
  1001651a8  bl      _objc_retain
  1001651ac  mov     x19, x0
  1001651b0  adrp    x8, #0x10041b000
  1001651b4  nop
  1001651b8  ldr     x1, [x8, #0x2f0]
  1001651bc  bl      _objc_msgSend                            ; [arg1 properties]
  1001651c0  mov     x29, x29
  1001651c4  bl      _objc_retainAutoreleasedReturnValue
  1001651c8  mov     x21, x0
  1001651cc  adrp    x8, #0x10041e000
  1001651d0  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  1001651d4  adrp    x8, #0x10041d000
  1001651d8  nop
  1001651dc  ldr     x1, [x8, #0xa80]
  1001651e0  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall instanceNameKey]
  1001651e4  mov     x29, x29
  1001651e8  bl      _objc_retainAutoreleasedReturnValue
  1001651ec  mov     x24, x0
  1001651f0  adrp    x8, #0x100416000
  1001651f4  nop
  1001651f8  ldr     x23, [x8, #0xda0]
  1001651fc  mov     x0, x21
  100165200  mov     x1, x23
  100165204  mov     x2, x24
  100165208  bl      _objc_msgSend                            ; [[arg1 properties] valueForKey:[TAGExpandedFunctionCall instanceNameKey]]
  10016520c  mov     x29, x29
  100165210  bl      _objc_retainAutoreleasedReturnValue
  100165214  mov     x20, x0
  100165218  mov     x0, x24
  10016521c  bl      _objc_release
  100165220  mov     x0, x21
  100165224  bl      _objc_release
  100165228  adrp    x8, #0x10041e000
  10016522c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100165230  adrp    x8, #0x10041d000
  100165234  nop
  100165238  ldr     x1, [x8, #0xc18]
  10016523c  mov     x2, x20
  100165240  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[arg1 properties] valueForKey:[TAGExpandedFunctionCall instanceNameKey]]]
  100165244  mov     x29, x29
  100165248  bl      _objc_retainAutoreleasedReturnValue
  10016524c  mov     x21, x0
  100165250  adrp    x8, #0x10041d000
  100165254  nop
  100165258  ldr     x24, [x8, #0x6b8]
  10016525c  mov     x0, x22
  100165260  mov     x1, x24
  100165264  bl      _objc_msgSend                            ; [self macros]
  100165268  mov     x29, x29
  10016526c  bl      _objc_retainAutoreleasedReturnValue
  100165270  mov     x25, x0
  100165274  mov     x1, x23
  100165278  mov     x2, x21
  10016527c  bl      _objc_msgSend                            ; [[self macros] valueForKey:[TAGTypes valueToString:[[arg1 properties] valueForKey:[TAGExpandedFunctionCall instanceNameKey]]]]
  100165280  mov     x29, x29
  100165284  bl      _objc_retainAutoreleasedReturnValue
  100165288  mov     x23, x0
  10016528c  mov     x0, x25
  100165290  bl      _objc_release
  100165294  cbnz    x23, loc_1001652f4                       ; if ([[self macros] valueForKey:[TAGTypes valueToString:[[arg1 properties] valueForKey:[TAGExpandedFunctionCall instanceNameKey]]]] != 0)
  100165298  adrp    x8, #0x10041d000
  10016529c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1001652a0  adrp    x8, #0x100418000
  1001652a4  nop
  1001652a8  ldr     x1, [x8, #0x50]
  1001652ac  bl      _objc_msgSend                            ; [NSMutableArray array]
  1001652b0  mov     x29, x29
  1001652b4  bl      _objc_retainAutoreleasedReturnValue
  1001652b8  mov     x23, x0
  1001652bc  mov     x0, x22
  1001652c0  mov     x1, x24
  1001652c4  bl      _objc_msgSend                            ; [self macros]
  1001652c8  mov     x29, x29
  1001652cc  bl      _objc_retainAutoreleasedReturnValue
  1001652d0  mov     x22, x0
  1001652d4  adrp    x8, #0x100416000
  1001652d8  nop
  1001652dc  ldr     x1, [x8, #0xdc8]
  1001652e0  mov     x2, x23
  1001652e4  mov     x3, x21
  1001652e8  bl      _objc_msgSend                            ; [[self macros] setObject:[NSMutableArray array] forKey:[TAGTypes valueToString:[[arg1 properties] valueForKey:[TAGExpandedFunctionCall instanceNameKey]]]]
  1001652ec  mov     x0, x22
  1001652f0  bl      _objc_release
loc_1001652f4:
  1001652f4  adrp    x8, #0x100416000
  1001652f8  nop
  1001652fc  ldr     x1, [x8, #0xd90]
  100165300  mov     x0, x23
  100165304  mov     x2, x19
  100165308  bl      _objc_msgSend                            ; [x0 addObject:arg1]
  10016530c  mov     x0, x23
  100165310  bl      _objc_release
  100165314  mov     x0, x21
  100165318  bl      _objc_release
  10016531c  mov     x0, x20
  100165320  bl      _objc_release
  100165324  mov     x0, x19
  100165328  ldp     x26, x25, [sp], #0x10
  10016532c  ldp     x24, x23, [sp], #0x10
  100165330  ldp     x22, x21, [sp], #0x10
  100165334  ldp     x20, x19, [sp], #0x10
  100165338  ldp     x29, x30, [sp], #0x10
  10016533c  b       _objc_release
  100165340  mov     x26, x0
  100165344  b       loc_1001653ac
  100165348  mov     x26, x0
  10016534c  b       loc_10016535c
  100165350  mov     x26, x0
  100165354  mov     x0, x24
  100165358  bl      _objc_release
loc_10016535c:
  10016535c  mov     x0, x21
  100165360  b       loc_1001653a8
  100165364  mov     x26, x0
  100165368  b       loc_1001653a4
  10016536c  mov     x26, x0
  100165370  b       loc_10016539c
  100165374  mov     x26, x0
  100165378  mov     x0, x25
  10016537c  b       loc_100165398
  100165380  mov     x26, x0
  100165384  mov     x0, x22
  100165388  bl      _objc_release
  10016538c  b       loc_100165394
  100165390  mov     x26, x0
loc_100165394:
  100165394  mov     x0, x23
loc_100165398:
  100165398  bl      _objc_release
loc_10016539c:
  10016539c  mov     x0, x21
  1001653a0  bl      _objc_release
loc_1001653a4:
  1001653a4  mov     x0, x20
loc_1001653a8:
  1001653a8  bl      _objc_release
loc_1001653ac:
  1001653ac  mov     x0, x19
  1001653b0  bl      _objc_release
  1001653b4  mov     x0, x26
  1001653b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedResourceBuilder build]
; address 0x1001653bc  size 308  kind objc
; ======================================================================
  1001653bc  stp     x29, x30, [sp, #-0x10]!
  1001653c0  mov     x29, sp
  1001653c4  stp     x20, x19, [sp, #-0x10]!
  1001653c8  stp     x22, x21, [sp, #-0x10]!
  1001653cc  stp     x24, x23, [sp, #-0x10]!
  1001653d0  mov     x22, x0
  1001653d4  adrp    x8, #0x10041e000
  1001653d8  ldr     x0, [x8, #0xb28]                         ; class TAGExpandedResource
  1001653dc  adrp    x8, #0x100416000
  1001653e0  nop
  1001653e4  ldr     x1, [x8, #0xac8]
  1001653e8  bl      _objc_msgSend                            ; [TAGExpandedResource alloc]
  1001653ec  mov     x21, x0
  1001653f0  adrp    x8, #0x10041d000
  1001653f4  nop
  1001653f8  ldr     x1, [x8, #0x820]
  1001653fc  mov     x0, x22
  100165400  bl      _objc_msgSend                            ; [self rules]
  100165404  mov     x29, x29
  100165408  bl      _objc_retainAutoreleasedReturnValue
  10016540c  mov     x19, x0
  100165410  adrp    x8, #0x10041d000
  100165414  nop
  100165418  ldr     x1, [x8, #0x6b8]
  10016541c  mov     x0, x22
  100165420  bl      _objc_msgSend                            ; [self macros]
  100165424  mov     x29, x29
  100165428  bl      _objc_retainAutoreleasedReturnValue
  10016542c  mov     x20, x0
  100165430  adrp    x8, #0x10041d000
  100165434  nop
  100165438  ldr     x1, [x8, #0xc08]
  10016543c  mov     x0, x22
  100165440  bl      _objc_msgSend                            ; [self version]
  100165444  mov     x29, x29
  100165448  bl      _objc_retainAutoreleasedReturnValue
  10016544c  mov     x23, x0
  100165450  adrp    x8, #0x10041d000
  100165454  nop
  100165458  ldr     x1, [x8, #0x6c0]
  10016545c  mov     x0, x22
  100165460  bl      _objc_msgSend                            ; [self resourceFormatVersion]
  100165464  mov     x5, x0
  100165468  adrp    x8, #0x10041d000
  10016546c  nop
  100165470  ldr     x1, [x8, #0x6c8]
  100165474  mov     x0, x21
  100165478  mov     x2, x19
  10016547c  mov     x3, x20
  100165480  mov     x4, x23
  100165484  bl      _objc_msgSend                            ; [[TAGExpandedResource alloc] initWithRules:[self rules] macros:[self macros] version:[self version] resourceFormatVersion:[self resourceFormatVersion]]
  100165488  mov     x21, x0
  10016548c  mov     x0, x23
  100165490  bl      _objc_release
  100165494  mov     x0, x20
  100165498  bl      _objc_release
  10016549c  mov     x0, x19
  1001654a0  bl      _objc_release
  1001654a4  mov     x0, x21
  1001654a8  ldp     x24, x23, [sp], #0x10
  1001654ac  ldp     x22, x21, [sp], #0x10
  1001654b0  ldp     x20, x19, [sp], #0x10
  1001654b4  ldp     x29, x30, [sp], #0x10
  1001654b8  b       _objc_autoreleaseReturnValue
  1001654bc  mov     x21, x0
  1001654c0  b       loc_1001654e0
  1001654c4  mov     x21, x0
  1001654c8  b       loc_1001654d8
  1001654cc  mov     x21, x0
  1001654d0  mov     x0, x23
  1001654d4  bl      _objc_release
loc_1001654d8:
  1001654d8  mov     x0, x20
  1001654dc  bl      _objc_release
loc_1001654e0:
  1001654e0  mov     x0, x19
  1001654e4  bl      _objc_release
  1001654e8  mov     x0, x21
  1001654ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedResourceBuilder version]
; address 0x1001654f0  size 16  kind objc
; ======================================================================
  1001654f0  mov     w3, #0
  1001654f4  adrp    x8, #0x100420000
  1001654f8  ldrsw   x2, [x8, #0xbcc]                         ; ivar offset TAGExpandedResourceBuilder._version (+0x10)
  1001654fc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGExpandedResourceBuilder setVersion:]
; address 0x100165500  size 12  kind objc
; ======================================================================
  100165500  adrp    x8, #0x100420000
  100165504  ldrsw   x3, [x8, #0xbcc]                         ; ivar offset TAGExpandedResourceBuilder._version (+0x10)
  100165508  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGExpandedResourceBuilder resourceFormatVersion]
; address 0x10016550c  size 16  kind objc
; ======================================================================
  10016550c  adrp    x8, #0x100420000
  100165510  ldrsw   x8, [x8, #0xbd0]                         ; ivar offset TAGExpandedResourceBuilder._resourceFormatVersion (+0x8)
  100165514  ldr     w0, [x0, x8]                             ; w0 = self->_resourceFormatVersion
  100165518  ret

; ======================================================================
; -[TAGExpandedResourceBuilder setResourceFormatVersion:]
; address 0x10016551c  size 16  kind objc
; ======================================================================
  10016551c  adrp    x8, #0x100420000
  100165520  ldrsw   x8, [x8, #0xbd0]                         ; ivar offset TAGExpandedResourceBuilder._resourceFormatVersion (+0x8)
  100165524  str     w2, [x0, x8]                             ; self->_resourceFormatVersion = arg1
  100165528  ret

; ======================================================================
; -[TAGExpandedResourceBuilder rules]
; address 0x10016552c  size 16  kind objc
; ======================================================================
  10016552c  adrp    x8, #0x100420000
  100165530  ldrsw   x8, [x8, #0xbc4]                         ; ivar offset TAGExpandedResourceBuilder._rules (+0x18)
  100165534  ldr     x0, [x0, x8]                             ; x0 = self->_rules
  100165538  ret

; ======================================================================
; -[TAGExpandedResourceBuilder setRules:]
; address 0x10016553c  size 56  kind objc
; ======================================================================
  10016553c  stp     x29, x30, [sp, #-0x10]!
  100165540  mov     x29, sp
  100165544  stp     x20, x19, [sp, #-0x10]!
  100165548  mov     x19, x0
  10016554c  adrp    x8, #0x100420000
  100165550  ldrsw   x20, [x8, #0xbc4]                        ; ivar offset TAGExpandedResourceBuilder._rules (+0x18)
  100165554  mov     x0, x2
  100165558  bl      _objc_retain
  10016555c  ldr     x8, [x19, x20]                           ; x8 = self->_rules
  100165560  str     x0, [x19, x20]                           ; self->_rules = arg1
  100165564  mov     x0, x8
  100165568  ldp     x20, x19, [sp], #0x10
  10016556c  ldp     x29, x30, [sp], #0x10
  100165570  b       _objc_release

; ======================================================================
; -[TAGExpandedResourceBuilder macros]
; address 0x100165574  size 16  kind objc
; ======================================================================
  100165574  adrp    x8, #0x100420000
  100165578  ldrsw   x8, [x8, #0xbc8]                         ; ivar offset TAGExpandedResourceBuilder._macros (+0x20)
  10016557c  ldr     x0, [x0, x8]                             ; x0 = self->_macros
  100165580  ret

; ======================================================================
; -[TAGExpandedResourceBuilder setMacros:]
; address 0x100165584  size 56  kind objc
; ======================================================================
  100165584  stp     x29, x30, [sp, #-0x10]!
  100165588  mov     x29, sp
  10016558c  stp     x20, x19, [sp, #-0x10]!
  100165590  mov     x19, x0
  100165594  adrp    x8, #0x100420000
  100165598  ldrsw   x20, [x8, #0xbc8]                        ; ivar offset TAGExpandedResourceBuilder._macros (+0x20)
  10016559c  mov     x0, x2
  1001655a0  bl      _objc_retain
  1001655a4  ldr     x8, [x19, x20]                           ; x8 = self->_macros
  1001655a8  str     x0, [x19, x20]                           ; self->_macros = arg1
  1001655ac  mov     x0, x8
  1001655b0  ldp     x20, x19, [sp], #0x10
  1001655b4  ldp     x29, x30, [sp], #0x10
  1001655b8  b       _objc_release

; ======================================================================
; -[TAGExpandedResourceBuilder .cxx_destruct]
; address 0x1001655bc  size 84  kind objc
; ======================================================================
  1001655bc  stp     x29, x30, [sp, #-0x10]!
  1001655c0  mov     x29, sp
  1001655c4  stp     x20, x19, [sp, #-0x10]!
  1001655c8  mov     x19, x0
  1001655cc  adrp    x8, #0x100420000
  1001655d0  ldrsw   x8, [x8, #0xbc8]                         ; ivar offset TAGExpandedResourceBuilder._macros (+0x20)
  1001655d4  add     x0, x19, x8
  1001655d8  mov     x1, #0
  1001655dc  bl      _objc_storeStrong
  1001655e0  adrp    x8, #0x100420000
  1001655e4  ldrsw   x8, [x8, #0xbc4]                         ; ivar offset TAGExpandedResourceBuilder._rules (+0x18)
  1001655e8  add     x0, x19, x8
  1001655ec  mov     x1, #0
  1001655f0  bl      _objc_storeStrong
  1001655f4  mov     x1, #0
  1001655f8  adrp    x8, #0x100420000
  1001655fc  ldrsw   x8, [x8, #0xbcc]                         ; ivar offset TAGExpandedResourceBuilder._version (+0x10)
  100165600  add     x0, x19, x8
  100165604  ldp     x20, x19, [sp], #0x10
  100165608  ldp     x29, x30, [sp], #0x10
  10016560c  b       _objc_storeStrong
