// unit TAGExpandedFunctionCall — 16 functions
//   0x1001632d0     256  -[TAGExpandedFunctionCall initWithPropertiesMap:pushAfterEvaluate:]
//   0x1001633d0      56  +[TAGExpandedFunctionCall builder]
//   0x100163408      44  +[TAGExpandedFunctionCall instanceNameKey]
//   0x100163434      44  +[TAGExpandedFunctionCall functionKey]
//   0x100163460      44  +[TAGExpandedFunctionCall notDefaultMacroKey]
//   0x10016348c     552  -[TAGExpandedFunctionCall approximateByteSize]
//   0x1001636b4     168  -[TAGExpandedFunctionCall propertyForKey:]
//   0x10016375c     184  -[TAGExpandedFunctionCall updateCacheablePropertyWithValue:forKey:]
//   0x100163814      16  -[TAGExpandedFunctionCall properties]
//   0x100163824     212  -[TAGExpandedFunctionCall description]
//   0x1001638f8     216  -[TAGExpandedFunctionCall copyWithZone:]
//   0x1001639d0      16  -[TAGExpandedFunctionCall pushAfterEvaluate]
//   0x1001639e0      56  -[TAGExpandedFunctionCall setPushAfterEvaluate:]
//   0x100163a18      16  -[TAGExpandedFunctionCall propertiesMap]
//   0x100163a28      56  -[TAGExpandedFunctionCall setPropertiesMap:]
//   0x100163a60      64  -[TAGExpandedFunctionCall .cxx_destruct]

; ======================================================================
; -[TAGExpandedFunctionCall initWithPropertiesMap:pushAfterEvaluate:]
; address 0x1001632d0  size 256  kind objc
; ======================================================================
  1001632d0  stp     x29, x30, [sp, #-0x10]!
  1001632d4  mov     x29, sp
  1001632d8  stp     x20, x19, [sp, #-0x10]!
  1001632dc  stp     x22, x21, [sp, #-0x10]!
  1001632e0  sub     sp, sp, #0x10
  1001632e4  mov     x20, x3
  1001632e8  mov     x21, x0
  1001632ec  mov     x0, x2
  1001632f0  bl      _objc_retain
  1001632f4  mov     x19, x0
  1001632f8  mov     x0, x20
  1001632fc  bl      _objc_retain
  100163300  mov     x20, x0
  100163304  str     x21, [sp]
  100163308  adrp    x8, #0x10041f000
  10016330c  ldr     x8, [x8, #0x2d8]
  100163310  str     x8, [sp, #8]
  100163314  adrp    x8, #0x100416000
  100163318  nop
  10016331c  ldr     x1, [x8, #0xab8]
  100163320  mov     x22, #0
  100163324  mov     x0, sp
  100163328  bl      _objc_msgSendSuper2                      ; [super init]
  10016332c  mov     x21, x0
  100163330  cbz     x21, loc_100163384                       ; if (self == 0)
  100163334  mov     x22, x21
  100163338  adrp    x8, #0x10041b000
  10016333c  nop
  100163340  ldr     x1, [x8, #0x1d8]
  100163344  mov     x0, x19
  100163348  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  10016334c  adrp    x8, #0x100420000
  100163350  ldrsw   x9, [x8, #0xb74]                         ; ivar offset TAGExpandedFunctionCall._propertiesMap (+0x10)
  100163354  ldr     x8, [x21, x9]                            ; x8 = self->_propertiesMap
  100163358  str     x0, [x21, x9]                            ; self->_propertiesMap = [arg1 mutableCopy]
  10016335c  mov     x0, x8
  100163360  bl      _objc_release
  100163364  adrp    x8, #0x100420000
  100163368  ldrsw   x22, [x8, #0xb78]                        ; ivar offset TAGExpandedFunctionCall._pushAfterEvaluate (+0x8)
  10016336c  mov     x0, x20
  100163370  bl      _objc_retain
  100163374  ldr     x8, [x21, x22]                           ; x8 = self->_pushAfterEvaluate
  100163378  str     x0, [x21, x22]                           ; self->_pushAfterEvaluate = arg2
  10016337c  mov     x0, x8
  100163380  bl      _objc_release
loc_100163384:
  100163384  mov     x0, x20
  100163388  bl      _objc_release
  10016338c  mov     x0, x19
  100163390  bl      _objc_release
  100163394  mov     x0, x21
  100163398  sub     sp, x29, #0x20
  10016339c  ldp     x22, x21, [sp], #0x10
  1001633a0  ldp     x20, x19, [sp], #0x10
  1001633a4  ldp     x29, x30, [sp], #0x10
  1001633a8  ret
  1001633ac  mov     x21, x0
  1001633b0  mov     x0, x20
  1001633b4  bl      _objc_release
  1001633b8  mov     x0, x19
  1001633bc  bl      _objc_release
  1001633c0  mov     x0, x22
  1001633c4  bl      _objc_release
  1001633c8  mov     x0, x21
  1001633cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGExpandedFunctionCall builder]
; address 0x1001633d0  size 56  kind objc
; ======================================================================
  1001633d0  stp     x29, x30, [sp, #-0x10]!
  1001633d4  mov     x29, sp
  1001633d8  adrp    x8, #0x10041e000
  1001633dc  ldr     x0, [x8, #0x988]                         ; class TAGExpandedFunctionCallBuilder
  1001633e0  adrp    x8, #0x100416000
  1001633e4  nop
  1001633e8  ldr     x1, [x8, #0xac8]
  1001633ec  bl      _objc_msgSend                            ; [TAGExpandedFunctionCallBuilder alloc]
  1001633f0  adrp    x8, #0x100416000
  1001633f4  nop
  1001633f8  ldr     x1, [x8, #0xab8]
  1001633fc  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCallBuilder alloc] init]
  100163400  ldp     x29, x30, [sp], #0x10
  100163404  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGExpandedFunctionCall instanceNameKey]
; address 0x100163408  size 44  kind objc
; ======================================================================
  100163408  stp     x29, x30, [sp, #-0x10]!
  10016340c  mov     x29, sp
  100163410  stp     x20, x19, [sp, #-0x10]!
  100163414  adrp    x19, #0x1003c8000
  100163418  add     x19, x19, #0x9b0                         ; @"instance_name"
  10016341c  mov     x0, x19
  100163420  bl      _objc_retainAutorelease
  100163424  mov     x0, x19
  100163428  ldp     x20, x19, [sp], #0x10
  10016342c  ldp     x29, x30, [sp], #0x10
  100163430  ret

; ======================================================================
; +[TAGExpandedFunctionCall functionKey]
; address 0x100163434  size 44  kind objc
; ======================================================================
  100163434  stp     x29, x30, [sp, #-0x10]!
  100163438  mov     x29, sp
  10016343c  stp     x20, x19, [sp, #-0x10]!
  100163440  adrp    x19, #0x1003c8000
  100163444  add     x19, x19, #0x990                         ; @"function"
  100163448  mov     x0, x19
  10016344c  bl      _objc_retainAutorelease
  100163450  mov     x0, x19
  100163454  ldp     x20, x19, [sp], #0x10
  100163458  ldp     x29, x30, [sp], #0x10
  10016345c  ret

; ======================================================================
; +[TAGExpandedFunctionCall notDefaultMacroKey]
; address 0x100163460  size 44  kind objc
; ======================================================================
  100163460  stp     x29, x30, [sp, #-0x10]!
  100163464  mov     x29, sp
  100163468  stp     x20, x19, [sp, #-0x10]!
  10016346c  adrp    x19, #0x1003c8000
  100163470  add     x19, x19, #0x9d0                         ; @"not_default_macro"
  100163474  mov     x0, x19
  100163478  bl      _objc_retainAutorelease
  10016347c  mov     x0, x19
  100163480  ldp     x20, x19, [sp], #0x10
  100163484  ldp     x29, x30, [sp], #0x10
  100163488  ret

; ======================================================================
; -[TAGExpandedFunctionCall approximateByteSize]
; address 0x10016348c  size 552  kind objc
; ======================================================================
  10016348c  stp     x29, x30, [sp, #-0x10]!
  100163490  mov     x29, sp
  100163494  stp     x20, x19, [sp, #-0x10]!
  100163498  stp     x22, x21, [sp, #-0x10]!
  10016349c  stp     x24, x23, [sp, #-0x10]!
  1001634a0  stp     x26, x25, [sp, #-0x10]!
  1001634a4  stp     x28, x27, [sp, #-0x10]!
  1001634a8  sub     sp, sp, #0x100
  1001634ac  str     x0, [sp, #0x30]
  1001634b0  adrp    x8, #0x1003b0000
  1001634b4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1001634b8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1001634bc  stur    x8, [x29, #-0x58]
  1001634c0  stp     xzr, xzr, [x29, #-0x68]
  1001634c4  stp     xzr, xzr, [x29, #-0x78]
  1001634c8  stp     xzr, xzr, [x29, #-0x88]
  1001634cc  stp     xzr, xzr, [x29, #-0x98]
  1001634d0  adrp    x8, #0x10041d000
  1001634d4  nop
  1001634d8  ldr     x1, [x8, #0x6a0]
  1001634dc  str     x1, [sp, #0x28]
  1001634e0  bl      _objc_msgSend                            ; [self propertiesMap]
  1001634e4  mov     x29, x29
  1001634e8  bl      _objc_retainAutoreleasedReturnValue
  1001634ec  str     x0, [sp, #0x20]
  1001634f0  adrp    x8, #0x100416000
  1001634f4  nop
  1001634f8  ldr     x1, [x8, #0xe00]
  1001634fc  str     x1, [sp, #0x18]
  100163500  sub     x2, x29, #0x98
  100163504  add     x3, sp, #0x38
  100163508  mov     x4, #0x10
  10016350c  bl      _objc_msgSend                            ; [[self propertiesMap] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100163510  mov     x25, x0
  100163514  cbz     x25, loc_100163620                       ; if ([[self propertiesMap] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  100163518  mov     x23, #0
  10016351c  ldur    x8, [x29, #-0x88]
  100163520  ldr     x20, [x8]
  100163524  adrp    x8, #0x100417000
  100163528  nop
  10016352c  ldr     x24, [x8, #0xc58]
  100163530  adrp    x8, #0x100417000
  100163534  nop
  100163538  ldr     x26, [x8, #0x40]
  10016353c  adrp    x8, #0x10041b000
  100163540  nop
  100163544  ldr     x27, [x8, #0xc78]
  100163548  sub     x8, x29, #0x98
  10016354c  str     x8, [sp, #0x10]
  100163550  add     x8, sp, #0x38
  100163554  str     x8, [sp, #8]
loc_100163558:
  100163558  mov     x21, #0
loc_10016355c:
  10016355c  ldur    x8, [x29, #-0x88]
  100163560  ldr     x8, [x8]
  100163564  cmp     x8, x20
  100163568  b.eq    loc_100163574                            ; if (x8 == x20)
  10016356c  ldr     x0, [sp, #0x20]
  100163570  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self propertiesMap])
loc_100163574:
  100163574  ldur    x8, [x29, #-0x90]
  100163578  ldr     x22, [x8, x21, lsl #3]
  10016357c  mov     x0, x22
  100163580  mov     x1, x24
  100163584  bl      _objc_msgSend                            ; [x0 length]
  100163588  mov     x28, x0
  10016358c  ldp     x1, x0, [sp, #0x28]
  100163590  bl      _objc_msgSend                            ; [self propertiesMap]
  100163594  mov     x29, x29
  100163598  bl      _objc_retainAutoreleasedReturnValue
  10016359c  mov     x19, x0
  1001635a0  mov     x1, x26
  1001635a4  mov     x2, x22
  1001635a8  bl      _objc_msgSend                            ; [[self propertiesMap] objectForKey:x2]
  1001635ac  mov     x29, x29
  1001635b0  bl      _objc_retainAutoreleasedReturnValue
  1001635b4  mov     x22, x0
  1001635b8  mov     x0, x19
  1001635bc  bl      _objc_release
  1001635c0  mov     x0, x22
  1001635c4  mov     x1, x27
  1001635c8  bl      _objc_msgSend                            ; [[[self propertiesMap] objectForKey:x2] data]
  1001635cc  mov     x29, x29
  1001635d0  bl      _objc_retainAutoreleasedReturnValue
  1001635d4  mov     x19, x0
  1001635d8  mov     x1, x24
  1001635dc  bl      _objc_msgSend                            ; [[[[self propertiesMap] objectForKey:x2] data] length]
  1001635e0  add     x8, x28, x23
  1001635e4  add     x23, x0, w8, sxtw
  1001635e8  mov     x0, x19
  1001635ec  bl      _objc_release
  1001635f0  mov     x0, x22
  1001635f4  bl      _objc_release
  1001635f8  add     x21, x21, #1
  1001635fc  cmp     x21, x25
  100163600  b.lo    loc_10016355c                            ; if ((x21 + 1) <u [[self propertiesMap] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  100163604  mov     x4, #0x10
  100163608  ldp     x1, x0, [sp, #0x18]
  10016360c  ldp     x3, x2, [sp, #8]
  100163610  bl      _objc_msgSend                            ; [[self propertiesMap] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  100163614  mov     x25, x0
  100163618  cbnz    x25, loc_100163558                       ; if ([[self propertiesMap] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
  10016361c  b       loc_100163624
loc_100163620:
  100163620  mov     w23, #0
loc_100163624:
  100163624  ldr     x0, [sp, #0x20]
  100163628  bl      _objc_release
  10016362c  adrp    x8, #0x1003b0000
  100163630  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100163634  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100163638  ldur    x9, [x29, #-0x58]
  10016363c  sub     x8, x8, x9
  100163640  cbnz    x8, loc_100163668                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100163644  mov     x0, x23
  100163648  sub     sp, x29, #0x50
  10016364c  ldp     x28, x27, [sp], #0x10
  100163650  ldp     x26, x25, [sp], #0x10
  100163654  ldp     x24, x23, [sp], #0x10
  100163658  ldp     x22, x21, [sp], #0x10
  10016365c  ldp     x20, x19, [sp], #0x10
  100163660  ldp     x29, x30, [sp], #0x10
  100163664  ret
loc_100163668:
  100163668  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10016366c:
  10016366c  mov     x20, x0
  100163670  b       loc_10016369c
  100163674  mov     x20, x0
  100163678  mov     x0, x19
  10016367c  b       loc_100163698
  100163680  mov     x20, x0
  100163684  b       loc_100163694
  100163688  mov     x20, x0
  10016368c  mov     x0, x19
  100163690  bl      _objc_release
loc_100163694:
  100163694  mov     x0, x22
loc_100163698:
  100163698  bl      _objc_release
loc_10016369c:
  10016369c  ldr     x0, [sp, #0x20]
  1001636a0  bl      _objc_release
  1001636a4  mov     x0, x20
  1001636a8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001636ac  b       loc_10016366c
  1001636b0  b       loc_10016366c

; ======================================================================
; -[TAGExpandedFunctionCall propertyForKey:]
; address 0x1001636b4  size 168  kind objc
; ======================================================================
  1001636b4  stp     x29, x30, [sp, #-0x10]!
  1001636b8  mov     x29, sp
  1001636bc  stp     x20, x19, [sp, #-0x10]!
  1001636c0  stp     x22, x21, [sp, #-0x10]!
  1001636c4  mov     x20, x0
  1001636c8  mov     x0, x2
  1001636cc  bl      _objc_retain
  1001636d0  mov     x19, x0
  1001636d4  adrp    x8, #0x10041d000
  1001636d8  nop
  1001636dc  ldr     x1, [x8, #0x6a0]
  1001636e0  mov     x0, x20
  1001636e4  bl      _objc_msgSend                            ; [self propertiesMap]
  1001636e8  mov     x29, x29
  1001636ec  bl      _objc_retainAutoreleasedReturnValue
  1001636f0  mov     x20, x0
  1001636f4  adrp    x8, #0x100416000
  1001636f8  nop
  1001636fc  ldr     x1, [x8, #0xda0]
  100163700  mov     x2, x19
  100163704  bl      _objc_msgSend                            ; [[self propertiesMap] valueForKey:arg1]
  100163708  mov     x29, x29
  10016370c  bl      _objc_retainAutoreleasedReturnValue
  100163710  mov     x21, x0
  100163714  mov     x0, x20
  100163718  bl      _objc_release
  10016371c  mov     x0, x19
  100163720  bl      _objc_release
  100163724  mov     x0, x21
  100163728  ldp     x22, x21, [sp], #0x10
  10016372c  ldp     x20, x19, [sp], #0x10
  100163730  ldp     x29, x30, [sp], #0x10
  100163734  b       _objc_autoreleaseReturnValue
  100163738  mov     x21, x0
  10016373c  b       loc_10016374c
  100163740  mov     x21, x0
  100163744  mov     x0, x20
  100163748  bl      _objc_release
loc_10016374c:
  10016374c  mov     x0, x19
  100163750  bl      _objc_release
  100163754  mov     x0, x21
  100163758  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCall updateCacheablePropertyWithValue:forKey:]
; address 0x10016375c  size 184  kind objc
; ======================================================================
  10016375c  stp     x29, x30, [sp, #-0x10]!
  100163760  mov     x29, sp
  100163764  stp     x20, x19, [sp, #-0x10]!
  100163768  stp     x22, x21, [sp, #-0x10]!
  10016376c  mov     x20, x3
  100163770  mov     x21, x0
  100163774  mov     x0, x2
  100163778  bl      _objc_retain
  10016377c  mov     x19, x0
  100163780  mov     x0, x20
  100163784  bl      _objc_retain
  100163788  mov     x20, x0
  10016378c  adrp    x8, #0x10041d000
  100163790  nop
  100163794  ldr     x1, [x8, #0x6a0]
  100163798  mov     x0, x21
  10016379c  bl      _objc_msgSend                            ; [self propertiesMap]
  1001637a0  mov     x29, x29
  1001637a4  bl      _objc_retainAutoreleasedReturnValue
  1001637a8  mov     x21, x0
  1001637ac  adrp    x8, #0x100416000
  1001637b0  nop
  1001637b4  ldr     x1, [x8, #0xdc8]
  1001637b8  mov     x2, x19
  1001637bc  mov     x3, x20
  1001637c0  bl      _objc_msgSend                            ; [[self propertiesMap] setObject:arg1 forKey:arg2]
  1001637c4  mov     x0, x21
  1001637c8  bl      _objc_release
  1001637cc  mov     x0, x20
  1001637d0  bl      _objc_release
  1001637d4  mov     x0, x19
  1001637d8  ldp     x22, x21, [sp], #0x10
  1001637dc  ldp     x20, x19, [sp], #0x10
  1001637e0  ldp     x29, x30, [sp], #0x10
  1001637e4  b       _objc_release
  1001637e8  mov     x22, x0
  1001637ec  b       loc_1001637fc
  1001637f0  mov     x22, x0
  1001637f4  mov     x0, x21
  1001637f8  bl      _objc_release
loc_1001637fc:
  1001637fc  mov     x0, x20
  100163800  bl      _objc_release
  100163804  mov     x0, x19
  100163808  bl      _objc_release
  10016380c  mov     x0, x22
  100163810  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCall properties]
; address 0x100163814  size 16  kind objc
; ======================================================================
  100163814  adrp    x8, #0x10041d000
  100163818  nop
  10016381c  ldr     x1, [x8, #0x6a0]
  100163820  b       _objc_msgSend                            ; [self propertiesMap]

; ======================================================================
; -[TAGExpandedFunctionCall description]
; address 0x100163824  size 212  kind objc
; ======================================================================
  100163824  stp     x29, x30, [sp, #-0x10]!
  100163828  mov     x29, sp
  10016382c  stp     x20, x19, [sp, #-0x10]!
  100163830  stp     x22, x21, [sp, #-0x10]!
  100163834  sub     sp, sp, #0x10
  100163838  mov     x21, x0
  10016383c  adrp    x8, #0x10041d000
  100163840  ldr     x20, [x8, #0xf78]                        ; class NSString
  100163844  nop
  100163848  nop
  10016384c  ldr     x1, [x8, #0x6a0]
  100163850  bl      _objc_msgSend                            ; [self propertiesMap]
  100163854  mov     x29, x29
  100163858  bl      _objc_retainAutoreleasedReturnValue
  10016385c  mov     x19, x0
  100163860  adrp    x8, #0x10041d000
  100163864  nop
  100163868  ldr     x1, [x8, #0x958]
  10016386c  mov     x0, x21
  100163870  bl      _objc_msgSend                            ; [self pushAfterEvaluate]
  100163874  mov     x29, x29
  100163878  bl      _objc_retainAutoreleasedReturnValue
  10016387c  mov     x21, x0
  100163880  adrp    x8, #0x100416000
  100163884  nop
  100163888  ldr     x1, [x8, #0xee8]
  10016388c  stp     x19, x21, [sp]
  100163890  adrp    x2, #0x1003c8000
  100163894  add     x2, x2, #0xa90                           ; @"Properties: %@ pushAfterEvaluate: %@"
  100163898  mov     x0, x20
  10016389c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Properties: %@ pushAfterEvaluate: %@", [self propertiesMap], [self pushAfterEvaluate]]
  1001638a0  mov     x29, x29
  1001638a4  bl      _objc_retainAutoreleasedReturnValue
  1001638a8  mov     x20, x0
  1001638ac  mov     x0, x21
  1001638b0  bl      _objc_release
  1001638b4  mov     x0, x19
  1001638b8  bl      _objc_release
  1001638bc  mov     x0, x20
  1001638c0  sub     sp, x29, #0x20
  1001638c4  ldp     x22, x21, [sp], #0x10
  1001638c8  ldp     x20, x19, [sp], #0x10
  1001638cc  ldp     x29, x30, [sp], #0x10
  1001638d0  b       _objc_autoreleaseReturnValue
  1001638d4  mov     x20, x0
  1001638d8  b       loc_1001638e8
  1001638dc  mov     x20, x0
  1001638e0  mov     x0, x21
  1001638e4  bl      _objc_release
loc_1001638e8:
  1001638e8  mov     x0, x19
  1001638ec  bl      _objc_release
  1001638f0  mov     x0, x20
  1001638f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCall copyWithZone:]
; address 0x1001638f8  size 216  kind objc
; ======================================================================
  1001638f8  stp     x29, x30, [sp, #-0x10]!
  1001638fc  mov     x29, sp
  100163900  stp     x20, x19, [sp, #-0x10]!
  100163904  stp     x22, x21, [sp, #-0x10]!
  100163908  mov     x21, x0
  10016390c  adrp    x8, #0x10041e000
  100163910  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  100163914  adrp    x8, #0x100416000
  100163918  nop
  10016391c  ldr     x1, [x8, #0xab0]
  100163920  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall allocWithZone:arg1]
  100163924  mov     x20, x0
  100163928  adrp    x8, #0x10041d000
  10016392c  nop
  100163930  ldr     x1, [x8, #0x6a0]
  100163934  mov     x0, x21
  100163938  bl      _objc_msgSend                            ; [self propertiesMap]
  10016393c  mov     x29, x29
  100163940  bl      _objc_retainAutoreleasedReturnValue
  100163944  mov     x19, x0
  100163948  adrp    x8, #0x10041d000
  10016394c  nop
  100163950  ldr     x1, [x8, #0x958]
  100163954  mov     x0, x21
  100163958  bl      _objc_msgSend                            ; [self pushAfterEvaluate]
  10016395c  mov     x29, x29
  100163960  bl      _objc_retainAutoreleasedReturnValue
  100163964  mov     x21, x0
  100163968  adrp    x8, #0x10041d000
  10016396c  nop
  100163970  ldr     x1, [x8, #0x6a8]
  100163974  mov     x0, x20
  100163978  mov     x2, x19
  10016397c  mov     x3, x21
  100163980  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall allocWithZone:arg1] initWithPropertiesMap:[self propertiesMap] pushAfterEvaluate:[self pushAfterEvaluate]]
  100163984  mov     x20, x0
  100163988  mov     x0, x21
  10016398c  bl      _objc_release
  100163990  mov     x0, x19
  100163994  bl      _objc_release
  100163998  mov     x0, x20
  10016399c  ldp     x22, x21, [sp], #0x10
  1001639a0  ldp     x20, x19, [sp], #0x10
  1001639a4  ldp     x29, x30, [sp], #0x10
  1001639a8  ret
  1001639ac  mov     x20, x0
  1001639b0  b       loc_1001639c0
  1001639b4  mov     x20, x0
  1001639b8  mov     x0, x21
  1001639bc  bl      _objc_release
loc_1001639c0:
  1001639c0  mov     x0, x19
  1001639c4  bl      _objc_release
  1001639c8  mov     x0, x20
  1001639cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCall pushAfterEvaluate]
; address 0x1001639d0  size 16  kind objc
; ======================================================================
  1001639d0  adrp    x8, #0x100420000
  1001639d4  ldrsw   x8, [x8, #0xb78]                         ; ivar offset TAGExpandedFunctionCall._pushAfterEvaluate (+0x8)
  1001639d8  ldr     x0, [x0, x8]                             ; x0 = self->_pushAfterEvaluate
  1001639dc  ret

; ======================================================================
; -[TAGExpandedFunctionCall setPushAfterEvaluate:]
; address 0x1001639e0  size 56  kind objc
; ======================================================================
  1001639e0  stp     x29, x30, [sp, #-0x10]!
  1001639e4  mov     x29, sp
  1001639e8  stp     x20, x19, [sp, #-0x10]!
  1001639ec  mov     x19, x0
  1001639f0  adrp    x8, #0x100420000
  1001639f4  ldrsw   x20, [x8, #0xb78]                        ; ivar offset TAGExpandedFunctionCall._pushAfterEvaluate (+0x8)
  1001639f8  mov     x0, x2
  1001639fc  bl      _objc_retain
  100163a00  ldr     x8, [x19, x20]                           ; x8 = self->_pushAfterEvaluate
  100163a04  str     x0, [x19, x20]                           ; self->_pushAfterEvaluate = arg1
  100163a08  mov     x0, x8
  100163a0c  ldp     x20, x19, [sp], #0x10
  100163a10  ldp     x29, x30, [sp], #0x10
  100163a14  b       _objc_release

; ======================================================================
; -[TAGExpandedFunctionCall propertiesMap]
; address 0x100163a18  size 16  kind objc
; ======================================================================
  100163a18  adrp    x8, #0x100420000
  100163a1c  ldrsw   x8, [x8, #0xb74]                         ; ivar offset TAGExpandedFunctionCall._propertiesMap (+0x10)
  100163a20  ldr     x0, [x0, x8]                             ; x0 = self->_propertiesMap
  100163a24  ret

; ======================================================================
; -[TAGExpandedFunctionCall setPropertiesMap:]
; address 0x100163a28  size 56  kind objc
; ======================================================================
  100163a28  stp     x29, x30, [sp, #-0x10]!
  100163a2c  mov     x29, sp
  100163a30  stp     x20, x19, [sp, #-0x10]!
  100163a34  mov     x19, x0
  100163a38  adrp    x8, #0x100420000
  100163a3c  ldrsw   x20, [x8, #0xb74]                        ; ivar offset TAGExpandedFunctionCall._propertiesMap (+0x10)
  100163a40  mov     x0, x2
  100163a44  bl      _objc_retain
  100163a48  ldr     x8, [x19, x20]                           ; x8 = self->_propertiesMap
  100163a4c  str     x0, [x19, x20]                           ; self->_propertiesMap = arg1
  100163a50  mov     x0, x8
  100163a54  ldp     x20, x19, [sp], #0x10
  100163a58  ldp     x29, x30, [sp], #0x10
  100163a5c  b       _objc_release

; ======================================================================
; -[TAGExpandedFunctionCall .cxx_destruct]
; address 0x100163a60  size 64  kind objc
; ======================================================================
  100163a60  stp     x29, x30, [sp, #-0x10]!
  100163a64  mov     x29, sp
  100163a68  stp     x20, x19, [sp, #-0x10]!
  100163a6c  mov     x19, x0
  100163a70  adrp    x8, #0x100420000
  100163a74  ldrsw   x8, [x8, #0xb74]                         ; ivar offset TAGExpandedFunctionCall._propertiesMap (+0x10)
  100163a78  add     x0, x19, x8
  100163a7c  mov     x1, #0
  100163a80  bl      _objc_storeStrong
  100163a84  mov     x1, #0
  100163a88  adrp    x8, #0x100420000
  100163a8c  ldrsw   x8, [x8, #0xb78]                         ; ivar offset TAGExpandedFunctionCall._pushAfterEvaluate (+0x8)
  100163a90  add     x0, x19, x8
  100163a94  ldp     x20, x19, [sp], #0x10
  100163a98  ldp     x29, x30, [sp], #0x10
  100163a9c  b       _objc_storeStrong
