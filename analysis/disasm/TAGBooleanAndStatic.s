// unit TAGBooleanAndStatic — 4 functions
//   0x1001627ec      60  -[TAGBooleanAndStatic initWithBoolean:isStatic:]
//   0x100162828      16  -[TAGBooleanAndStatic boolean]
//   0x100162838     124  +[TAGBooleanAndStatic booleanWithBoolean:isStatic:]
//   0x1001628b4     172  +[TAGBooleanAndStatic booleanWithBool:isStatic:]

; ======================================================================
; -[TAGBooleanAndStatic initWithBoolean:isStatic:]
; address 0x1001627ec  size 60  kind objc
; ======================================================================
  1001627ec  stp     x29, x30, [sp, #-0x10]!
  1001627f0  mov     x29, sp
  1001627f4  sub     sp, sp, #0x10
  1001627f8  str     x0, [sp]
  1001627fc  adrp    x8, #0x10041f000
  100162800  ldr     x8, [x8, #0x2c0]
  100162804  str     x8, [sp, #8]
  100162808  adrp    x8, #0x10041d000
  10016280c  nop
  100162810  ldr     x1, [x8, #0x650]
  100162814  mov     x0, sp
  100162818  bl      _objc_msgSendSuper2                      ; [super initWithObject:arg1 isStatic:arg2]
  10016281c  mov     sp, x29
  100162820  ldp     x29, x30, [sp], #0x10
  100162824  ret

; ======================================================================
; -[TAGBooleanAndStatic boolean]
; address 0x100162828  size 16  kind objc
; ======================================================================
  100162828  adrp    x8, #0x10041d000
  10016282c  nop
  100162830  ldr     x1, [x8, #0x658]
  100162834  b       _objc_msgSend                            ; [self object]

; ======================================================================
; +[TAGBooleanAndStatic booleanWithBoolean:isStatic:]
; address 0x100162838  size 124  kind objc
; ======================================================================
  100162838  stp     x29, x30, [sp, #-0x10]!
  10016283c  mov     x29, sp
  100162840  stp     x20, x19, [sp, #-0x10]!
  100162844  mov     x20, x3
  100162848  mov     x0, x2
  10016284c  bl      _objc_retain
  100162850  mov     x19, x0
  100162854  adrp    x8, #0x10041e000
  100162858  ldr     x0, [x8, #0xb08]                         ; class TAGBooleanAndStatic
  10016285c  adrp    x8, #0x100416000
  100162860  nop
  100162864  ldr     x1, [x8, #0xac8]
  100162868  bl      _objc_msgSend                            ; [TAGBooleanAndStatic alloc]
  10016286c  adrp    x8, #0x10041d000
  100162870  nop
  100162874  ldr     x1, [x8, #0x660]
  100162878  mov     x2, x19
  10016287c  mov     x3, x20
  100162880  bl      _objc_msgSend                            ; [[TAGBooleanAndStatic alloc] initWithBoolean:arg1 isStatic:arg2]
  100162884  mov     x20, x0
  100162888  mov     x0, x19
  10016288c  bl      _objc_release
  100162890  mov     x0, x20
  100162894  ldp     x20, x19, [sp], #0x10
  100162898  ldp     x29, x30, [sp], #0x10
  10016289c  b       _objc_autoreleaseReturnValue
  1001628a0  mov     x20, x0
  1001628a4  mov     x0, x19
  1001628a8  bl      _objc_release
  1001628ac  mov     x0, x20
  1001628b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGBooleanAndStatic booleanWithBool:isStatic:]
; address 0x1001628b4  size 172  kind objc
; ======================================================================
  1001628b4  stp     x29, x30, [sp, #-0x10]!
  1001628b8  mov     x29, sp
  1001628bc  stp     x20, x19, [sp, #-0x10]!
  1001628c0  stp     x22, x21, [sp, #-0x10]!
  1001628c4  mov     x20, x3
  1001628c8  mov     x19, x2
  1001628cc  adrp    x8, #0x10041e000
  1001628d0  ldr     x0, [x8, #0xb08]                         ; class TAGBooleanAndStatic
  1001628d4  adrp    x8, #0x100416000
  1001628d8  nop
  1001628dc  ldr     x1, [x8, #0xac8]
  1001628e0  bl      _objc_msgSend                            ; [TAGBooleanAndStatic alloc]
  1001628e4  mov     x21, x0
  1001628e8  adrp    x8, #0x10041e000
  1001628ec  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  1001628f0  adrp    x8, #0x10041d000
  1001628f4  nop
  1001628f8  ldr     x1, [x8, #0xab8]
  1001628fc  mov     x2, x19
  100162900  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:arg1]
  100162904  mov     x29, x29
  100162908  bl      _objc_retainAutoreleasedReturnValue
  10016290c  mov     x19, x0
  100162910  adrp    x8, #0x10041d000
  100162914  nop
  100162918  ldr     x1, [x8, #0x660]
  10016291c  mov     x0, x21
  100162920  mov     x2, x19
  100162924  mov     x3, x20
  100162928  bl      _objc_msgSend                            ; [[TAGBooleanAndStatic alloc] initWithBoolean:[TAGBoolean booleanWithBool:arg1] isStatic:arg2]
  10016292c  mov     x20, x0
  100162930  mov     x0, x19
  100162934  bl      _objc_release
  100162938  mov     x0, x20
  10016293c  ldp     x22, x21, [sp], #0x10
  100162940  ldp     x20, x19, [sp], #0x10
  100162944  ldp     x29, x30, [sp], #0x10
  100162948  b       _objc_autoreleaseReturnValue
  10016294c  mov     x20, x0
  100162950  mov     x0, x19
  100162954  bl      _objc_release
  100162958  mov     x0, x20
  10016295c  bl      __Unwind_Resume                          ; Unwind_Resume()
