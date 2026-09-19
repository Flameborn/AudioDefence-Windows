// unit TAGBoolean — 14 functions
//   0x10015945c     144  +[TAGBoolean initialize]
//   0x1001594ec      88  -[TAGBoolean initWithBool:]
//   0x100159544      72  +[TAGBoolean booleanWithBool:]
//   0x10015958c     216  +[TAGBoolean booleanWithString:]
//   0x100159664      16  +[TAGBoolean yes]
//   0x100159674      16  +[TAGBoolean no]
//   0x100159684      96  -[TAGBoolean copyWithZone:]
//   0x1001596e4      56  -[TAGBoolean description]
//   0x10015971c     188  -[TAGBoolean isEqual:]
//   0x1001597d8      48  -[TAGBoolean hash]
//   0x100159808     148  -[TAGBoolean initWithCoder:]
//   0x10015989c     116  -[TAGBoolean encodeWithCoder:]
//   0x100159910      16  -[TAGBoolean boolValue]
//   0x100159920      16  -[TAGBoolean setBoolValue:]

; ======================================================================
; +[TAGBoolean initialize]
; address 0x10015945c  size 144  kind objc
; ======================================================================
  10015945c  stp     x29, x30, [sp, #-0x10]!
  100159460  mov     x29, sp
  100159464  stp     x20, x19, [sp, #-0x10]!
  100159468  stp     x22, x21, [sp, #-0x10]!
  10015946c  adrp    x21, #0x10041e000
  100159470  ldr     x0, [x21, #0xb40]                        ; class TAGBoolean
  100159474  adrp    x8, #0x100416000
  100159478  nop
  10015947c  ldr     x19, [x8, #0xac8]
  100159480  mov     x1, x19
  100159484  bl      _objc_msgSend                            ; [TAGBoolean alloc]
  100159488  adrp    x8, #0x10041d000
  10015948c  nop
  100159490  ldr     x20, [x8, #0x2e8]
  100159494  mov     w2, #1
  100159498  mov     x1, x20
  10015949c  bl      _objc_msgSend                            ; [[TAGBoolean alloc] initWithBool:1]
  1001594a0  adrp    x22, #0x10042d000
  1001594a4  add     x22, x22, #0xf30                         ; &g_10042df30
  1001594a8  ldr     x8, [x22]                                ; load g_10042df30
  1001594ac  str     x0, [x22]                                ; store g_10042df30 = [[TAGBoolean alloc] initWithBool:1]
  1001594b0  mov     x0, x8
  1001594b4  bl      _objc_release
  1001594b8  ldr     x0, [x21, #0xb40]                        ; class TAGBoolean
  1001594bc  mov     x1, x19
  1001594c0  bl      _objc_msgSend                            ; [TAGBoolean alloc]
  1001594c4  mov     w2, #0
  1001594c8  mov     x1, x20
  1001594cc  bl      _objc_msgSend                            ; [[TAGBoolean alloc] initWithBool:0]
  1001594d0  ldr     x8, [x22, #8]                            ; load g_10042df38
  1001594d4  str     x0, [x22, #8]                            ; store g_10042df38 = [[TAGBoolean alloc] initWithBool:0]
  1001594d8  mov     x0, x8
  1001594dc  ldp     x22, x21, [sp], #0x10
  1001594e0  ldp     x20, x19, [sp], #0x10
  1001594e4  ldp     x29, x30, [sp], #0x10
  1001594e8  b       _objc_release

; ======================================================================
; -[TAGBoolean initWithBool:]
; address 0x1001594ec  size 88  kind objc
; ======================================================================
  1001594ec  stp     x29, x30, [sp, #-0x10]!
  1001594f0  mov     x29, sp
  1001594f4  stp     x20, x19, [sp, #-0x10]!
  1001594f8  sub     sp, sp, #0x10
  1001594fc  mov     x19, x2
  100159500  str     x0, [sp]
  100159504  adrp    x8, #0x10041f000
  100159508  ldr     x8, [x8, #0x270]
  10015950c  str     x8, [sp, #8]
  100159510  adrp    x8, #0x100416000
  100159514  nop
  100159518  ldr     x1, [x8, #0xab8]
  10015951c  mov     x0, sp
  100159520  bl      _objc_msgSendSuper2                      ; [super init]
  100159524  cbz     x0, loc_100159534                        ; if (self == 0)
  100159528  adrp    x8, #0x100420000
  10015952c  ldrsw   x8, [x8, #0xaf4]                         ; ivar offset TAGBoolean._boolValue (+0x8)
  100159530  strb    w19, [x0, x8]                            ; self->_boolValue = arg1
loc_100159534:
  100159534  sub     sp, x29, #0x10
  100159538  ldp     x20, x19, [sp], #0x10
  10015953c  ldp     x29, x30, [sp], #0x10
  100159540  ret

; ======================================================================
; +[TAGBoolean booleanWithBool:]
; address 0x100159544  size 72  kind objc
; ======================================================================
  100159544  stp     x29, x30, [sp, #-0x10]!
  100159548  mov     x29, sp
  10015954c  stp     x20, x19, [sp, #-0x10]!
  100159550  mov     x19, x2
  100159554  adrp    x8, #0x10041e000
  100159558  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  10015955c  adrp    x8, #0x100416000
  100159560  nop
  100159564  ldr     x1, [x8, #0xac8]
  100159568  bl      _objc_msgSend                            ; [TAGBoolean alloc]
  10015956c  adrp    x8, #0x10041d000
  100159570  nop
  100159574  ldr     x1, [x8, #0x2e8]
  100159578  mov     x2, x19
  10015957c  bl      _objc_msgSend                            ; [[TAGBoolean alloc] initWithBool:arg1]
  100159580  ldp     x20, x19, [sp], #0x10
  100159584  ldp     x29, x30, [sp], #0x10
  100159588  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGBoolean booleanWithString:]
; address 0x10015958c  size 216  kind objc
; ======================================================================
  10015958c  stp     x29, x30, [sp, #-0x10]!
  100159590  mov     x29, sp
  100159594  stp     x20, x19, [sp, #-0x10]!
  100159598  stp     x22, x21, [sp, #-0x10]!
  10015959c  mov     x20, x0
  1001595a0  mov     x0, x2
  1001595a4  bl      _objc_retain
  1001595a8  mov     x19, x0
  1001595ac  adrp    x8, #0x10041d000
  1001595b0  nop
  1001595b4  ldr     x21, [x8, #0x2f0]
  1001595b8  adrp    x0, #0x1003c2000
  1001595bc  add     x0, x0, #0xb30                           ; @"true"
  1001595c0  mov     x1, x21
  1001595c4  mov     x2, x19
  1001595c8  bl      _objc_msgSend                            ; [@"true" caseInsensitiveCompare:arg1]
  1001595cc  cbz     x0, loc_1001595f0                        ; if ([@"true" caseInsensitiveCompare:arg1] == 0)
  1001595d0  adrp    x0, #0x1003c2000
  1001595d4  add     x0, x0, #0xb50                           ; @"false"
  1001595d8  mov     x1, x21
  1001595dc  mov     x2, x19
  1001595e0  bl      _objc_msgSend                            ; [@"false" caseInsensitiveCompare:arg1]
  1001595e4  cbz     x0, loc_100159610                        ; if ([@"false" caseInsensitiveCompare:arg1] == 0)
  1001595e8  mov     x20, #0
  1001595ec  b       loc_100159634
loc_1001595f0:
  1001595f0  adrp    x8, #0x10041d000
  1001595f4  nop
  1001595f8  ldr     x1, [x8, #0xab8]
  1001595fc  mov     w2, #1
  100159600  mov     x0, x20
  100159604  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:1]
  100159608  mov     x29, x29
  10015960c  b       loc_10015962c
loc_100159610:
  100159610  adrp    x8, #0x10041d000
  100159614  nop
  100159618  ldr     x1, [x8, #0xab8]
  10015961c  mov     w2, #0
  100159620  mov     x0, x20
  100159624  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:0]
  100159628  mov     x29, x29
loc_10015962c:
  10015962c  bl      _objc_retainAutoreleasedReturnValue
  100159630  mov     x20, x0
loc_100159634:
  100159634  mov     x0, x19
  100159638  bl      _objc_release
  10015963c  mov     x0, x20
  100159640  ldp     x22, x21, [sp], #0x10
  100159644  ldp     x20, x19, [sp], #0x10
  100159648  ldp     x29, x30, [sp], #0x10
  10015964c  b       _objc_autoreleaseReturnValue
  100159650  mov     x20, x0
  100159654  mov     x0, x19
  100159658  bl      _objc_release
  10015965c  mov     x0, x20
  100159660  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBoolean yes]
; address 0x100159664  size 16  kind objc
; ======================================================================
  100159664  adrp    x8, #0x10042d000
  100159668  nop
  10015966c  ldr     x0, [x8, #0xf30]                         ; load g_10042df30
  100159670  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGBoolean no]
; address 0x100159674  size 16  kind objc
; ======================================================================
  100159674  adrp    x8, #0x10042d000
  100159678  add     x8, x8, #0xf30                           ; &g_10042df30
  10015967c  ldr     x0, [x8, #8]                             ; load g_10042df38
  100159680  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[TAGBoolean copyWithZone:]
; address 0x100159684  size 96  kind objc
; ======================================================================
  100159684  stp     x29, x30, [sp, #-0x10]!
  100159688  mov     x29, sp
  10015968c  stp     x20, x19, [sp, #-0x10]!
  100159690  mov     x19, x0
  100159694  adrp    x8, #0x10041e000
  100159698  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  10015969c  adrp    x8, #0x100416000
  1001596a0  nop
  1001596a4  ldr     x1, [x8, #0xab0]
  1001596a8  bl      _objc_msgSend                            ; [TAGBoolean allocWithZone:arg1]
  1001596ac  mov     x20, x0
  1001596b0  adrp    x8, #0x100417000
  1001596b4  nop
  1001596b8  ldr     x1, [x8, #0xd8]
  1001596bc  mov     x0, x19
  1001596c0  bl      _objc_msgSend                            ; [self boolValue]
  1001596c4  mov     x2, x0
  1001596c8  adrp    x8, #0x10041d000
  1001596cc  nop
  1001596d0  ldr     x1, [x8, #0x2e8]
  1001596d4  mov     x0, x20
  1001596d8  ldp     x20, x19, [sp], #0x10
  1001596dc  ldp     x29, x30, [sp], #0x10
  1001596e0  b       _objc_msgSend                            ; [[TAGBoolean allocWithZone:arg1] initWithBool:[self boolValue]]

; ======================================================================
; -[TAGBoolean description]
; address 0x1001596e4  size 56  kind objc
; ======================================================================
  1001596e4  stp     x29, x30, [sp, #-0x10]!
  1001596e8  mov     x29, sp
  1001596ec  adrp    x8, #0x100417000
  1001596f0  nop
  1001596f4  ldr     x1, [x8, #0xd8]
  1001596f8  bl      _objc_msgSend                            ; [self boolValue]
  1001596fc  adrp    x8, #0x1003c2000
  100159700  add     x8, x8, #0xb50                           ; @"false"
  100159704  adrp    x9, #0x1003c2000
  100159708  add     x9, x9, #0xb30                           ; @"true"
  10015970c  cmp     w0, #0
  100159710  csel    x0, x9, x8, ne
  100159714  ldp     x29, x30, [sp], #0x10
  100159718  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[TAGBoolean isEqual:]
; address 0x10015971c  size 188  kind objc
; ======================================================================
  10015971c  stp     x29, x30, [sp, #-0x10]!
  100159720  mov     x29, sp
  100159724  stp     x20, x19, [sp, #-0x10]!
  100159728  stp     x22, x21, [sp, #-0x10]!
  10015972c  mov     x20, x0
  100159730  mov     x0, x2
  100159734  bl      _objc_retain
  100159738  mov     x19, x0
  10015973c  adrp    x8, #0x10041e000
  100159740  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  100159744  adrp    x8, #0x100417000
  100159748  nop
  10015974c  ldr     x1, [x8, #0x2e0]
  100159750  bl      _objc_msgSend                            ; [TAGBoolean class]
  100159754  mov     x2, x0
  100159758  adrp    x8, #0x100417000
  10015975c  nop
  100159760  ldr     x1, [x8, #0x3b8]
  100159764  mov     x0, x19
  100159768  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGBoolean class]]
  10015976c  cbz     w0, loc_1001597a4                        ; if ([arg1 isKindOfClass:[TAGBoolean class]] == 0)
  100159770  adrp    x8, #0x100417000
  100159774  nop
  100159778  ldr     x21, [x8, #0xd8]
  10015977c  mov     x0, x20
  100159780  mov     x1, x21
  100159784  bl      _objc_msgSend                            ; [self boolValue]
  100159788  mov     x20, x0
  10015978c  mov     x0, x19
  100159790  mov     x1, x21
  100159794  bl      _objc_msgSend                            ; [arg1 boolValue]
  100159798  eor     w8, w20, w0
  10015979c  eor     w20, w8, #1
  1001597a0  b       loc_1001597a8
loc_1001597a4:
  1001597a4  mov     w20, #0
loc_1001597a8:
  1001597a8  mov     x0, x19
  1001597ac  bl      _objc_release
  1001597b0  mov     x0, x20
  1001597b4  ldp     x22, x21, [sp], #0x10
  1001597b8  ldp     x20, x19, [sp], #0x10
  1001597bc  ldp     x29, x30, [sp], #0x10
  1001597c0  ret
  1001597c4  mov     x20, x0
  1001597c8  mov     x0, x19
  1001597cc  bl      _objc_release
  1001597d0  mov     x0, x20
  1001597d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGBoolean hash]
; address 0x1001597d8  size 48  kind objc
; ======================================================================
  1001597d8  stp     x29, x30, [sp, #-0x10]!
  1001597dc  mov     x29, sp
  1001597e0  adrp    x8, #0x100417000
  1001597e4  nop
  1001597e8  ldr     x1, [x8, #0xd8]
  1001597ec  bl      _objc_msgSend                            ; [self boolValue]
  1001597f0  cmp     w0, #0
  1001597f4  mov     x8, #0x346
  1001597f8  mov     x9, #0x7b
  1001597fc  csel    x0, x9, x8, ne
  100159800  ldp     x29, x30, [sp], #0x10
  100159804  ret

; ======================================================================
; -[TAGBoolean initWithCoder:]
; address 0x100159808  size 148  kind objc
; ======================================================================
  100159808  stp     x29, x30, [sp, #-0x10]!
  10015980c  mov     x29, sp
  100159810  stp     x20, x19, [sp, #-0x10]!
  100159814  stp     x22, x21, [sp, #-0x10]!
  100159818  mov     x20, x0
  10015981c  mov     x21, x20
  100159820  mov     x0, x2
  100159824  bl      _objc_retain
  100159828  mov     x19, x0
  10015982c  adrp    x8, #0x100418000
  100159830  nop
  100159834  ldr     x1, [x8, #0x970]
  100159838  adrp    x2, #0x1003ba000
  10015983c  add     x2, x2, #0x1b0                           ; @"value"
  100159840  bl      _objc_msgSend                            ; [arg1 decodeBoolForKey:@"value"]
  100159844  mov     x2, x0
  100159848  adrp    x8, #0x10041d000
  10015984c  nop
  100159850  ldr     x1, [x8, #0x2e8]
  100159854  mov     x21, #0
  100159858  mov     x0, x20
  10015985c  bl      _objc_msgSend                            ; [self initWithBool:[arg1 decodeBoolForKey:@"value"]]
  100159860  mov     x20, x0
  100159864  mov     x0, x19
  100159868  bl      _objc_release
  10015986c  mov     x0, x20
  100159870  ldp     x22, x21, [sp], #0x10
  100159874  ldp     x20, x19, [sp], #0x10
  100159878  ldp     x29, x30, [sp], #0x10
  10015987c  ret
  100159880  mov     x20, x0
  100159884  mov     x0, x19
  100159888  bl      _objc_release
  10015988c  mov     x0, x21
  100159890  bl      _objc_release
  100159894  mov     x0, x20
  100159898  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGBoolean encodeWithCoder:]
; address 0x10015989c  size 116  kind objc
; ======================================================================
  10015989c  stp     x29, x30, [sp, #-0x10]!
  1001598a0  mov     x29, sp
  1001598a4  stp     x20, x19, [sp, #-0x10]!
  1001598a8  mov     x20, x0
  1001598ac  mov     x0, x2
  1001598b0  bl      _objc_retain
  1001598b4  mov     x19, x0
  1001598b8  adrp    x8, #0x100417000
  1001598bc  nop
  1001598c0  ldr     x1, [x8, #0xd8]
  1001598c4  mov     x0, x20
  1001598c8  bl      _objc_msgSend                            ; [self boolValue]
  1001598cc  mov     x2, x0
  1001598d0  adrp    x8, #0x100418000
  1001598d4  nop
  1001598d8  ldr     x1, [x8, #0x990]
  1001598dc  adrp    x3, #0x1003ba000
  1001598e0  add     x3, x3, #0x1b0                           ; @"value"
  1001598e4  mov     x0, x19
  1001598e8  bl      _objc_msgSend                            ; [arg1 encodeBool:[self boolValue] forKey:@"value"]
  1001598ec  mov     x0, x19
  1001598f0  ldp     x20, x19, [sp], #0x10
  1001598f4  ldp     x29, x30, [sp], #0x10
  1001598f8  b       _objc_release
  1001598fc  mov     x20, x0
  100159900  mov     x0, x19
  100159904  bl      _objc_release
  100159908  mov     x0, x20
  10015990c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGBoolean boolValue]
; address 0x100159910  size 16  kind objc
; ======================================================================
  100159910  adrp    x8, #0x100420000
  100159914  ldrsw   x8, [x8, #0xaf4]                         ; ivar offset TAGBoolean._boolValue (+0x8)
  100159918  ldrb    w0, [x0, x8]                             ; w0 = self->_boolValue
  10015991c  ret

; ======================================================================
; -[TAGBoolean setBoolValue:]
; address 0x100159920  size 16  kind objc
; ======================================================================
  100159920  adrp    x8, #0x100420000
  100159924  ldrsw   x8, [x8, #0xaf4]                         ; ivar offset TAGBoolean._boolValue (+0x8)
  100159928  strb    w2, [x0, x8]                             ; self->_boolValue = arg1
  10015992c  ret
