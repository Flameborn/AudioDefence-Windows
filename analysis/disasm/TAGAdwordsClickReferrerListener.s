// unit TAGAdwordsClickReferrerListener — 1 functions
//   0x100158720     632  -[TAGAdwordsClickReferrerListener changed:]

; ======================================================================
; -[TAGAdwordsClickReferrerListener changed:]
; address 0x100158720  size 632  kind objc
; ======================================================================
  100158720  stp     x29, x30, [sp, #-0x10]!
  100158724  mov     x29, sp
  100158728  stp     x20, x19, [sp, #-0x10]!
  10015872c  stp     x22, x21, [sp, #-0x10]!
  100158730  stp     x24, x23, [sp, #-0x10]!
  100158734  stp     x26, x25, [sp, #-0x10]!
  100158738  mov     x0, x2
  10015873c  bl      _objc_retain
  100158740  mov     x19, x0
  100158744  adrp    x8, #0x100417000
  100158748  nop
  10015874c  ldr     x21, [x8, #0x40]
  100158750  adrp    x2, #0x1003c8000
  100158754  add     x2, x2, #0x70                            ; @"gtm.url"
  100158758  mov     x1, x21
  10015875c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"gtm.url"]
  100158760  mov     x29, x29
  100158764  bl      _objc_retainAutoreleasedReturnValue
  100158768  mov     x20, x0
  10015876c  cbnz    x20, loc_1001587f8                       ; if ([arg1 objectForKey:@"gtm.url"] != 0)
  100158770  mov     x20, #0
  100158774  adrp    x2, #0x1003c8000
  100158778  add     x2, x2, #0x90                            ; @"gtm"
  10015877c  mov     x0, x19
  100158780  mov     x1, x21
  100158784  bl      _objc_msgSend                            ; [arg1 objectForKey:@"gtm"]
  100158788  mov     x29, x29
  10015878c  bl      _objc_retainAutoreleasedReturnValue
  100158790  mov     x22, x0
  100158794  cbz     x22, loc_1001588fc                       ; if ([arg1 objectForKey:@"gtm"] == 0)
  100158798  adrp    x8, #0x10041d000
  10015879c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1001587a0  adrp    x8, #0x100417000
  1001587a4  nop
  1001587a8  ldr     x1, [x8, #0x2e0]
  1001587ac  bl      _objc_msgSend                            ; [NSDictionary class]
  1001587b0  mov     x2, x0
  1001587b4  adrp    x8, #0x100417000
  1001587b8  nop
  1001587bc  ldr     x1, [x8, #0x3b8]
  1001587c0  mov     x0, x22
  1001587c4  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"gtm"] isKindOfClass:[NSDictionary class]]
  1001587c8  cbz     w0, loc_1001588fc                        ; if ([[arg1 objectForKey:@"gtm"] isKindOfClass:[NSDictionary class]] == 0)
  1001587cc  adrp    x2, #0x1003c8000
  1001587d0  add     x2, x2, #0xb0                            ; @"url"
  1001587d4  mov     x0, x22
  1001587d8  mov     x1, x21
  1001587dc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"gtm"] objectForKey:@"url"]
  1001587e0  mov     x29, x29
  1001587e4  bl      _objc_retainAutoreleasedReturnValue
  1001587e8  mov     x20, x0
  1001587ec  mov     x0, x22
  1001587f0  bl      _objc_release
  1001587f4  cbz     x20, loc_100158904                       ; if ([[arg1 objectForKey:@"gtm"] objectForKey:@"url"] == 0)
loc_1001587f8:
  1001587f8  adrp    x8, #0x10041d000
  1001587fc  ldr     x0, [x8, #0xf78]                         ; class NSString
  100158800  adrp    x8, #0x100417000
  100158804  nop
  100158808  ldr     x1, [x8, #0x2e0]
  10015880c  bl      _objc_msgSend                            ; [NSString class]
  100158810  mov     x2, x0
  100158814  adrp    x8, #0x100417000
  100158818  nop
  10015881c  ldr     x1, [x8, #0x3b8]
  100158820  mov     x0, x20
  100158824  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSString class]]
  100158828  cbz     w0, loc_100158908                        ; if ([x0 isKindOfClass:[NSString class]] == 0)
  10015882c  adrp    x8, #0x10041e000
  100158830  ldr     x0, [x8, #0xa0]                          ; class NSURL
  100158834  adrp    x8, #0x10041a000
  100158838  nop
  10015883c  ldr     x1, [x8, #0x628]
  100158840  mov     x2, x20
  100158844  bl      _objc_msgSend                            ; [NSURL URLWithString:x2]
  100158848  mov     x29, x29
  10015884c  bl      _objc_retainAutoreleasedReturnValue
  100158850  mov     x22, x0
  100158854  adrp    x25, #0x10041e000
  100158858  ldr     x23, [x25, #0x928]                       ; class TAGClickReferrerUtil
  10015885c  adrp    x8, #0x10041c000
  100158860  nop
  100158864  ldr     x1, [x8, #0x138]
  100158868  bl      _objc_msgSend                            ; [[NSURL URLWithString:x2] query]
  10015886c  mov     x29, x29
  100158870  bl      _objc_retainAutoreleasedReturnValue
  100158874  mov     x24, x0
  100158878  adrp    x8, #0x10041d000
  10015887c  nop
  100158880  ldr     x1, [x8, #0x2c0]
  100158884  mov     x0, x23
  100158888  mov     x2, x24
  10015888c  bl      _objc_msgSend                            ; [TAGClickReferrerUtil parseComponentsFromQueryParameters:[[NSURL URLWithString:x2] query]]
  100158890  mov     x29, x29
  100158894  bl      _objc_retainAutoreleasedReturnValue
  100158898  mov     x23, x0
  10015889c  mov     x0, x24
  1001588a0  bl      _objc_release
  1001588a4  adrp    x2, #0x1003c8000
  1001588a8  add     x2, x2, #0xd0                            ; @"referrer"
  1001588ac  mov     x0, x23
  1001588b0  mov     x1, x21
  1001588b4  bl      _objc_msgSend                            ; [[TAGClickReferrerUtil parseComponentsFromQueryParameters:[[NSURL URLWithString:x2] query]] objectForKey:@"referrer"]
  1001588b8  mov     x29, x29
  1001588bc  bl      _objc_retainAutoreleasedReturnValue
  1001588c0  mov     x21, x0
  1001588c4  cbz     x21, loc_1001588e0                       ; if ([[TAGClickReferrerUtil parseComponentsFromQueryParameters:[[NSURL URLWithString:x2] query]] objectForKey:@"referrer"] == 0)
  1001588c8  ldr     x0, [x25, #0x928]                        ; class TAGClickReferrerUtil
  1001588cc  adrp    x8, #0x10041d000
  1001588d0  nop
  1001588d4  ldr     x1, [x8, #0x2c8]
  1001588d8  mov     x2, x21
  1001588dc  bl      _objc_msgSend                            ; [TAGClickReferrerUtil addClickReferrer:[[TAGClickReferrerUtil parseComponentsFromQueryParameters:[[NSURL URLWithString:x2] query]] objectForKey:@"referrer"]]
loc_1001588e0:
  1001588e0  mov     x0, x21
  1001588e4  bl      _objc_release
  1001588e8  mov     x0, x23
  1001588ec  bl      _objc_release
  1001588f0  mov     x0, x22
  1001588f4  bl      _objc_release
  1001588f8  b       loc_100158908
loc_1001588fc:
  1001588fc  mov     x0, x22
  100158900  bl      _objc_release
loc_100158904:
  100158904  mov     x20, #0
loc_100158908:
  100158908  mov     x0, x20
  10015890c  bl      _objc_release
  100158910  mov     x0, x19
  100158914  ldp     x26, x25, [sp], #0x10
  100158918  ldp     x24, x23, [sp], #0x10
  10015891c  ldp     x22, x21, [sp], #0x10
  100158920  ldp     x20, x19, [sp], #0x10
  100158924  ldp     x29, x30, [sp], #0x10
  100158928  b       _objc_release
  10015892c  mov     x25, x0
  100158930  b       loc_100158988
  100158934  mov     x25, x0
  100158938  mov     x0, x22
  10015893c  b       loc_100158984
  100158940  mov     x25, x0
  100158944  b       loc_100158980
  100158948  mov     x25, x0
  10015894c  b       loc_100158978
  100158950  mov     x25, x0
  100158954  mov     x0, x24
  100158958  b       loc_100158974
  10015895c  mov     x25, x0
  100158960  b       loc_100158970
  100158964  mov     x25, x0
  100158968  mov     x0, x21
  10015896c  bl      _objc_release
loc_100158970:
  100158970  mov     x0, x23
loc_100158974:
  100158974  bl      _objc_release
loc_100158978:
  100158978  mov     x0, x22
  10015897c  bl      _objc_release
loc_100158980:
  100158980  mov     x0, x20
loc_100158984:
  100158984  bl      _objc_release
loc_100158988:
  100158988  mov     x0, x19
  10015898c  bl      _objc_release
  100158990  mov     x0, x25
  100158994  bl      __Unwind_Resume                          ; Unwind_Resume()
