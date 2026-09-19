// unit TAGAppName — 5 functions
//   0x100173358      44  +[TAGAppName functionId]
//   0x100173384     176  -[TAGAppName init]
//   0x100173434       8  -[TAGAppName isCacheable]
//   0x10017343c     408  -[TAGAppName evaluate:]
//   0x1001735d4     120  +[TAGAppName infoDictionary]

; ======================================================================
; +[TAGAppName functionId]
; address 0x100173358  size 44  kind objc
; ======================================================================
  100173358  stp     x29, x30, [sp, #-0x10]!
  10017335c  mov     x29, sp
  100173360  stp     x20, x19, [sp, #-0x10]!
  100173364  adrp    x19, #0x1003c9000
  100173368  add     x19, x19, #0x110                         ; @"_an"
  10017336c  mov     x0, x19
  100173370  bl      _objc_retainAutorelease
  100173374  mov     x0, x19
  100173378  ldp     x20, x19, [sp], #0x10
  10017337c  ldp     x29, x30, [sp], #0x10
  100173380  ret

; ======================================================================
; -[TAGAppName init]
; address 0x100173384  size 176  kind objc
; ======================================================================
  100173384  stp     x29, x30, [sp, #-0x10]!
  100173388  mov     x29, sp
  10017338c  stp     x20, x19, [sp, #-0x10]!
  100173390  stp     x22, x21, [sp, #-0x10]!
  100173394  sub     sp, sp, #0x10
  100173398  mov     x20, x0
  10017339c  adrp    x8, #0x10041e000
  1001733a0  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001733a4  adrp    x8, #0x100418000
  1001733a8  nop
  1001733ac  ldr     x1, [x8, #0x360]
  1001733b0  bl      _objc_msgSend                            ; [NSSet set]
  1001733b4  mov     x29, x29
  1001733b8  bl      _objc_retainAutoreleasedReturnValue
  1001733bc  mov     x19, x0
  1001733c0  str     x20, [sp]
  1001733c4  adrp    x8, #0x10041f000
  1001733c8  ldr     x8, [x8, #0x350]
  1001733cc  str     x8, [sp, #8]
  1001733d0  adrp    x8, #0x10041d000
  1001733d4  nop
  1001733d8  ldr     x1, [x8, #0xc10]
  1001733dc  adrp    x2, #0x1003c9000
  1001733e0  add     x2, x2, #0x110                           ; @"_an"
  1001733e4  mov     x0, sp
  1001733e8  mov     x3, x19
  1001733ec  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_an" requiredKeys:[NSSet set]]
  1001733f0  mov     x20, x0
  1001733f4  mov     x0, x19
  1001733f8  bl      _objc_release
  1001733fc  mov     x0, x20
  100173400  sub     sp, x29, #0x20
  100173404  ldp     x22, x21, [sp], #0x10
  100173408  ldp     x20, x19, [sp], #0x10
  10017340c  ldp     x29, x30, [sp], #0x10
  100173410  ret
  100173414  mov     x21, x0
  100173418  mov     x0, x20
  10017341c  b       loc_100173428
  100173420  mov     x21, x0
  100173424  mov     x0, x19
loc_100173428:
  100173428  bl      _objc_release
  10017342c  mov     x0, x21
  100173430  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAppName isCacheable]
; address 0x100173434  size 8  kind objc
; ======================================================================
  100173434  mov     w0, #1
  100173438  ret

; ======================================================================
; -[TAGAppName evaluate:]
; address 0x10017343c  size 408  kind objc
; ======================================================================
  10017343c  stp     x29, x30, [sp, #-0x10]!
  100173440  mov     x29, sp
  100173444  stp     x20, x19, [sp, #-0x10]!
  100173448  stp     x22, x21, [sp, #-0x10]!
  10017344c  adrp    x8, #0x100417000
  100173450  nop
  100173454  ldr     x1, [x8, #0x2e0]
  100173458  bl      _objc_msgSend                            ; [self class]
  10017345c  adrp    x8, #0x10041d000
  100173460  nop
  100173464  ldr     x1, [x8, #0xc00]
  100173468  bl      _objc_msgSend                            ; [[self class] infoDictionary]
  10017346c  mov     x29, x29
  100173470  bl      _objc_retainAutoreleasedReturnValue
  100173474  mov     x19, x0
  100173478  adrp    x8, #0x1003b0000
  10017347c  ldr     x8, [x8, #0x210]                         ; _kCFBundleNameKey
  100173480  ldr     x2, [x8]                                 ; x2 = _kCFBundleNameKey[+0x0]
  100173484  adrp    x8, #0x100417000
  100173488  nop
  10017348c  ldr     x21, [x8, #0x40]
  100173490  mov     x1, x21
  100173494  bl      _objc_msgSend                            ; [[[self class] infoDictionary] objectForKey:_kCFBundleNameKey[+0x0]]
  100173498  mov     x29, x29
  10017349c  bl      _objc_retainAutoreleasedReturnValue
  1001734a0  mov     x20, x0
  1001734a4  cbz     x20, loc_1001734c8                       ; if ([[[self class] infoDictionary] objectForKey:_kCFBundleNameKey[+0x0]] == 0)
  1001734a8  adrp    x8, #0x100417000
  1001734ac  nop
  1001734b0  ldr     x1, [x8, #0x218]
  1001734b4  adrp    x2, #0x1003b9000
  1001734b8  add     x2, x2, #0x870                           ; @""
  1001734bc  mov     x0, x20
  1001734c0  bl      _objc_msgSend                            ; [[[[self class] infoDictionary] objectForKey:_kCFBundleNameKey[+0x0]] isEqual:@""]
  1001734c4  cbz     w0, loc_1001734f8                        ; if ([[[[self class] infoDictionary] objectForKey:_kCFBundleNameKey[+0x0]] isEqual:@""] == 0)
loc_1001734c8:
  1001734c8  adrp    x8, #0x1003b0000
  1001734cc  ldr     x8, [x8, #0x208]                         ; _kCFBundleIdentifierKey
  1001734d0  ldr     x2, [x8]                                 ; x2 = _kCFBundleIdentifierKey[+0x0]
  1001734d4  mov     x0, x19
  1001734d8  mov     x1, x21
  1001734dc  bl      _objc_msgSend                            ; [[[self class] infoDictionary] objectForKey:_kCFBundleIdentifierKey[+0x0]]
  1001734e0  mov     x29, x29
  1001734e4  bl      _objc_retainAutoreleasedReturnValue
  1001734e8  mov     x21, x0
  1001734ec  mov     x0, x20
  1001734f0  bl      _objc_release
  1001734f4  mov     x20, x21
loc_1001734f8:
  1001734f8  cbz     x20, loc_10017351c                       ; if (x20 == 0)
  1001734fc  adrp    x8, #0x100417000
  100173500  nop
  100173504  ldr     x1, [x8, #0x218]
  100173508  adrp    x2, #0x1003b9000
  10017350c  add     x2, x2, #0x870                           ; @""
  100173510  mov     x0, x20
  100173514  bl      _objc_msgSend                            ; [x0 isEqual:@""]
  100173518  cbz     w0, loc_10017355c                        ; if ([x0 isEqual:@""] == 0)
loc_10017351c:
  10017351c  adrp    x8, #0x10041e000
  100173520  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100173524  adrp    x8, #0x10041b000
  100173528  nop
  10017352c  ldr     x1, [x8, #0xdd0]
  100173530  adrp    x2, #0x1003c9000
  100173534  add     x2, x2, #0x130                           ; @"Application name cannot be retrieved."
  100173538  bl      _objc_msgSend                            ; [TAGLog error:@"Application name cannot be retrieved."]
  10017353c  adrp    x8, #0x10041e000
  100173540  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100173544  adrp    x8, #0x10041c000
  100173548  nop
  10017354c  ldr     x1, [x8, #0xa98]
  100173550  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100173554  mov     x29, x29
  100173558  b       loc_10017357c
loc_10017355c:
  10017355c  adrp    x8, #0x10041e000
  100173560  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100173564  adrp    x8, #0x10041d000
  100173568  nop
  10017356c  ldr     x1, [x8, #0xc30]
  100173570  mov     x2, x20
  100173574  bl      _objc_msgSend                            ; [TAGTypes objectToValue:x2]
  100173578  mov     x29, x29
loc_10017357c:
  10017357c  bl      _objc_retainAutoreleasedReturnValue
  100173580  mov     x21, x0
  100173584  mov     x0, x20
  100173588  bl      _objc_release
  10017358c  mov     x0, x19
  100173590  bl      _objc_release
  100173594  mov     x0, x21
  100173598  ldp     x22, x21, [sp], #0x10
  10017359c  ldp     x20, x19, [sp], #0x10
  1001735a0  ldp     x29, x30, [sp], #0x10
  1001735a4  b       _objc_autoreleaseReturnValue
  1001735a8  mov     x21, x0
  1001735ac  b       loc_1001735cc
  1001735b0  mov     x21, x0
  1001735b4  b       loc_1001735c4
  1001735b8  mov     x21, x0
  1001735bc  mov     x0, x20
  1001735c0  bl      _objc_release
loc_1001735c4:
  1001735c4  mov     x0, x19
  1001735c8  bl      _objc_release
loc_1001735cc:
  1001735cc  mov     x0, x21
  1001735d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGAppName infoDictionary]
; address 0x1001735d4  size 120  kind objc
; ======================================================================
  1001735d4  stp     x29, x30, [sp, #-0x10]!
  1001735d8  mov     x29, sp
  1001735dc  stp     x20, x19, [sp, #-0x10]!
  1001735e0  adrp    x8, #0x10041d000
  1001735e4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1001735e8  adrp    x8, #0x100416000
  1001735ec  nop
  1001735f0  ldr     x1, [x8, #0xb58]
  1001735f4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1001735f8  mov     x29, x29
  1001735fc  bl      _objc_retainAutoreleasedReturnValue
  100173600  mov     x19, x0
  100173604  adrp    x8, #0x10041d000
  100173608  nop
  10017360c  ldr     x1, [x8, #0xc00]
  100173610  bl      _objc_msgSend                            ; [[NSBundle mainBundle] infoDictionary]
  100173614  mov     x29, x29
  100173618  bl      _objc_retainAutoreleasedReturnValue
  10017361c  mov     x20, x0
  100173620  mov     x0, x19
  100173624  bl      _objc_release
  100173628  mov     x0, x20
  10017362c  ldp     x20, x19, [sp], #0x10
  100173630  ldp     x29, x30, [sp], #0x10
  100173634  b       _objc_autoreleaseReturnValue
  100173638  mov     x20, x0
  10017363c  mov     x0, x19
  100173640  bl      _objc_release
  100173644  mov     x0, x20
  100173648  bl      __Unwind_Resume                          ; Unwind_Resume()
