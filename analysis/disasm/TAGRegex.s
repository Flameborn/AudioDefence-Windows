// unit TAGRegex — 4 functions
//   0x100179368      44  +[TAGRegex functionId]
//   0x100179394      44  +[TAGRegex ignoreCaseKey]
//   0x1001793c0      68  -[TAGRegex init]
//   0x100179404     476  -[TAGRegex evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGRegex functionId]
; address 0x100179368  size 44  kind objc
; ======================================================================
  100179368  stp     x29, x30, [sp, #-0x10]!
  10017936c  mov     x29, sp
  100179370  stp     x20, x19, [sp, #-0x10]!
  100179374  adrp    x19, #0x1003c9000
  100179378  add     x19, x19, #0x910                         ; @"_re"
  10017937c  mov     x0, x19
  100179380  bl      _objc_retainAutorelease
  100179384  mov     x0, x19
  100179388  ldp     x20, x19, [sp], #0x10
  10017938c  ldp     x29, x30, [sp], #0x10
  100179390  ret

; ======================================================================
; +[TAGRegex ignoreCaseKey]
; address 0x100179394  size 44  kind objc
; ======================================================================
  100179394  stp     x29, x30, [sp, #-0x10]!
  100179398  mov     x29, sp
  10017939c  stp     x20, x19, [sp, #-0x10]!
  1001793a0  adrp    x19, #0x1003c9000
  1001793a4  add     x19, x19, #0x930                         ; @"ignore_case"
  1001793a8  mov     x0, x19
  1001793ac  bl      _objc_retainAutorelease
  1001793b0  mov     x0, x19
  1001793b4  ldp     x20, x19, [sp], #0x10
  1001793b8  ldp     x29, x30, [sp], #0x10
  1001793bc  ret

; ======================================================================
; -[TAGRegex init]
; address 0x1001793c0  size 68  kind objc
; ======================================================================
  1001793c0  stp     x29, x30, [sp, #-0x10]!
  1001793c4  mov     x29, sp
  1001793c8  sub     sp, sp, #0x10
  1001793cc  str     x0, [sp]
  1001793d0  adrp    x8, #0x10041f000
  1001793d4  ldr     x8, [x8, #0x438]
  1001793d8  str     x8, [sp, #8]
  1001793dc  adrp    x8, #0x10041d000
  1001793e0  nop
  1001793e4  ldr     x1, [x8, #0xcc8]
  1001793e8  adrp    x2, #0x1003c9000
  1001793ec  add     x2, x2, #0x910                           ; @"_re"
  1001793f0  mov     x0, sp
  1001793f4  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_re"]
  1001793f8  mov     sp, x29
  1001793fc  ldp     x29, x30, [sp], #0x10
  100179400  ret

; ======================================================================
; -[TAGRegex evaluateWithArg0:arg1:parameters:]
; address 0x100179404  size 476  kind objc
; ======================================================================
  100179404  stp     x29, x30, [sp, #-0x10]!
  100179408  mov     x29, sp
  10017940c  stp     x20, x19, [sp, #-0x10]!
  100179410  stp     x22, x21, [sp, #-0x10]!
  100179414  stp     x24, x23, [sp, #-0x10]!
  100179418  sub     sp, sp, #0x10
  10017941c  mov     x21, x4
  100179420  mov     x20, x3
  100179424  mov     x0, x2
  100179428  bl      _objc_retain
  10017942c  mov     x19, x0
  100179430  mov     x0, x20
  100179434  bl      _objc_retain
  100179438  mov     x20, x0
  10017943c  adrp    x8, #0x100417000
  100179440  nop
  100179444  ldr     x1, [x8, #0x40]
  100179448  adrp    x2, #0x1003c9000
  10017944c  add     x2, x2, #0x930                           ; @"ignore_case"
  100179450  mov     x0, x21
  100179454  bl      _objc_msgSend                            ; [arg3 objectForKey:@"ignore_case"]
  100179458  mov     x29, x29
  10017945c  bl      _objc_retainAutoreleasedReturnValue
  100179460  mov     x21, x0
  100179464  cbz     x21, loc_1001794b0                       ; if ([arg3 objectForKey:@"ignore_case"] == 0)
  100179468  adrp    x8, #0x10041e000
  10017946c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100179470  adrp    x8, #0x10041d000
  100179474  nop
  100179478  ldr     x1, [x8, #0xc38]
  10017947c  mov     x2, x21
  100179480  bl      _objc_msgSend                            ; [TAGTypes valueToBoolean:[arg3 objectForKey:@"ignore_case"]]
  100179484  mov     x29, x29
  100179488  bl      _objc_retainAutoreleasedReturnValue
  10017948c  mov     x23, x0
  100179490  adrp    x8, #0x100417000
  100179494  nop
  100179498  ldr     x1, [x8, #0xd8]
  10017949c  bl      _objc_msgSend                            ; [[TAGTypes valueToBoolean:[arg3 objectForKey:@"ignore_case"]] boolValue]
  1001794a0  mov     x22, x0
  1001794a4  mov     x0, x23
  1001794a8  bl      _objc_release
  1001794ac  b       loc_1001794b4
loc_1001794b0:
  1001794b0  mov     w22, #0
loc_1001794b4:
  1001794b4  adrp    x8, #0x100417000
  1001794b8  nop
  1001794bc  ldr     x24, [x8, #0xc58]
  1001794c0  mov     x0, x20
  1001794c4  mov     x1, x24
  1001794c8  bl      _objc_msgSend                            ; [arg2 length]
  1001794cc  cbz     x0, loc_100179514                        ; if ([arg2 length] == 0)
  1001794d0  adrp    x8, #0x10041e000
  1001794d4  ldr     x0, [x8, #0x948]                         ; class NSRegularExpression
  1001794d8  str     xzr, [sp, #8]
  1001794dc  adrp    x8, #0x10041d000
  1001794e0  nop
  1001794e4  ldr     x1, [x8, #0x330]
  1001794e8  add     x4, sp, #8
  1001794ec  mov     x2, x20
  1001794f0  mov     x3, x22
  1001794f4  bl      _objc_msgSend                            ; [NSRegularExpression regularExpressionWithPattern:arg2 options:x3 error:&sp[0x8]]
  1001794f8  mov     x29, x29
  1001794fc  bl      _objc_retainAutoreleasedReturnValue
  100179500  mov     x23, x0
  100179504  ldr     x8, [sp, #8]
  100179508  cbz     x8, loc_10017951c                        ; if (0 == 0)
  10017950c  mov     w22, #0
  100179510  b       loc_100179560
loc_100179514:
  100179514  mov     w22, #1
  100179518  b       loc_100179568
loc_10017951c:
  10017951c  mov     x0, x19
  100179520  mov     x1, x24
  100179524  bl      _objc_msgSend                            ; [arg1 length]
  100179528  mov     x5, x0
  10017952c  adrp    x8, #0x10041d000
  100179530  nop
  100179534  ldr     x1, [x8, #0x420]
  100179538  mov     x4, #0
  10017953c  mov     x0, x23
  100179540  mov     x2, x19
  100179544  mov     x3, x22
  100179548  bl      _objc_msgSend                            ; [[NSRegularExpression regularExpressionWithPattern:arg2 options:x3 error:&sp[0x8]] firstMatchInString:arg1 options:x3 range:0]
  10017954c  mov     x29, x29
  100179550  bl      _objc_retainAutoreleasedReturnValue
  100179554  cmp     x0, #0
  100179558  cset    w22, ne                                  ; t1 = ([[NSRegularExpression regularExpressionWithPattern:arg2 options:x3 error:&sp[0x8]] firstMatchInString:arg1 options:x3 ra… != 0)
  10017955c  bl      _objc_release
loc_100179560:
  100179560  mov     x0, x23
  100179564  bl      _objc_release
loc_100179568:
  100179568  mov     x0, x21
  10017956c  bl      _objc_release
  100179570  mov     x0, x20
  100179574  bl      _objc_release
  100179578  mov     x0, x19
  10017957c  bl      _objc_release
  100179580  and     w0, w22, #1
  100179584  sub     sp, x29, #0x30
  100179588  ldp     x24, x23, [sp], #0x10
  10017958c  ldp     x22, x21, [sp], #0x10
  100179590  ldp     x20, x19, [sp], #0x10
  100179594  ldp     x29, x30, [sp], #0x10
  100179598  ret
  10017959c  mov     x22, x0
  1001795a0  b       loc_1001795c8
  1001795a4  b       loc_1001795ac
  1001795a8  b       loc_1001795b4
loc_1001795ac:
  1001795ac  mov     x22, x0
  1001795b0  b       loc_1001795c0
loc_1001795b4:
  1001795b4  mov     x22, x0
  1001795b8  mov     x0, x23
  1001795bc  bl      _objc_release
loc_1001795c0:
  1001795c0  mov     x0, x21
  1001795c4  bl      _objc_release
loc_1001795c8:
  1001795c8  mov     x0, x20
  1001795cc  bl      _objc_release
  1001795d0  mov     x0, x19
  1001795d4  bl      _objc_release
  1001795d8  mov     x0, x22
  1001795dc  bl      __Unwind_Resume                          ; Unwind_Resume()
