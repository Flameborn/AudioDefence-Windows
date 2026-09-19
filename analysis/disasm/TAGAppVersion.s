// unit TAGAppVersion — 5 functions
//   0x10017364c      44  +[TAGAppVersion functionId]
//   0x100173678     176  -[TAGAppVersion init]
//   0x100173728       8  -[TAGAppVersion isCacheable]
//   0x100173730     220  -[TAGAppVersion evaluate:]
//   0x10017380c     120  +[TAGAppVersion infoDictionary]

; ======================================================================
; +[TAGAppVersion functionId]
; address 0x10017364c  size 44  kind objc
; ======================================================================
  10017364c  stp     x29, x30, [sp, #-0x10]!
  100173650  mov     x29, sp
  100173654  stp     x20, x19, [sp, #-0x10]!
  100173658  adrp    x19, #0x1003c9000
  10017365c  add     x19, x19, #0x150                         ; @"_av"
  100173660  mov     x0, x19
  100173664  bl      _objc_retainAutorelease
  100173668  mov     x0, x19
  10017366c  ldp     x20, x19, [sp], #0x10
  100173670  ldp     x29, x30, [sp], #0x10
  100173674  ret

; ======================================================================
; -[TAGAppVersion init]
; address 0x100173678  size 176  kind objc
; ======================================================================
  100173678  stp     x29, x30, [sp, #-0x10]!
  10017367c  mov     x29, sp
  100173680  stp     x20, x19, [sp, #-0x10]!
  100173684  stp     x22, x21, [sp, #-0x10]!
  100173688  sub     sp, sp, #0x10
  10017368c  mov     x20, x0
  100173690  adrp    x8, #0x10041e000
  100173694  ldr     x0, [x8, #0x550]                         ; class NSSet
  100173698  adrp    x8, #0x100418000
  10017369c  nop
  1001736a0  ldr     x1, [x8, #0x360]
  1001736a4  bl      _objc_msgSend                            ; [NSSet set]
  1001736a8  mov     x29, x29
  1001736ac  bl      _objc_retainAutoreleasedReturnValue
  1001736b0  mov     x19, x0
  1001736b4  str     x20, [sp]
  1001736b8  adrp    x8, #0x10041f000
  1001736bc  ldr     x8, [x8, #0x358]
  1001736c0  str     x8, [sp, #8]
  1001736c4  adrp    x8, #0x10041d000
  1001736c8  nop
  1001736cc  ldr     x1, [x8, #0xc10]
  1001736d0  adrp    x2, #0x1003c9000
  1001736d4  add     x2, x2, #0x150                           ; @"_av"
  1001736d8  mov     x0, sp
  1001736dc  mov     x3, x19
  1001736e0  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_av" requiredKeys:[NSSet set]]
  1001736e4  mov     x20, x0
  1001736e8  mov     x0, x19
  1001736ec  bl      _objc_release
  1001736f0  mov     x0, x20
  1001736f4  sub     sp, x29, #0x20
  1001736f8  ldp     x22, x21, [sp], #0x10
  1001736fc  ldp     x20, x19, [sp], #0x10
  100173700  ldp     x29, x30, [sp], #0x10
  100173704  ret
  100173708  mov     x21, x0
  10017370c  mov     x0, x20
  100173710  b       loc_10017371c
  100173714  mov     x21, x0
  100173718  mov     x0, x19
loc_10017371c:
  10017371c  bl      _objc_release
  100173720  mov     x0, x21
  100173724  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAppVersion isCacheable]
; address 0x100173728  size 8  kind objc
; ======================================================================
  100173728  mov     w0, #1
  10017372c  ret

; ======================================================================
; -[TAGAppVersion evaluate:]
; address 0x100173730  size 220  kind objc
; ======================================================================
  100173730  stp     x29, x30, [sp, #-0x10]!
  100173734  mov     x29, sp
  100173738  stp     x20, x19, [sp, #-0x10]!
  10017373c  stp     x22, x21, [sp, #-0x10]!
  100173740  adrp    x8, #0x10041e000
  100173744  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  100173748  adrp    x8, #0x100417000
  10017374c  nop
  100173750  ldr     x1, [x8, #0x2e0]
  100173754  bl      _objc_msgSend                            ; [self class]
  100173758  adrp    x8, #0x10041d000
  10017375c  nop
  100173760  ldr     x1, [x8, #0xc00]
  100173764  bl      _objc_msgSend                            ; [[self class] infoDictionary]
  100173768  mov     x29, x29
  10017376c  bl      _objc_retainAutoreleasedReturnValue
  100173770  mov     x19, x0
  100173774  adrp    x8, #0x100417000
  100173778  nop
  10017377c  ldr     x1, [x8, #0x40]
  100173780  adrp    x2, #0x1003c9000
  100173784  add     x2, x2, #0x170                           ; @"CFBundleShortVersionString"
  100173788  bl      _objc_msgSend                            ; [[[self class] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
  10017378c  mov     x29, x29
  100173790  bl      _objc_retainAutoreleasedReturnValue
  100173794  mov     x21, x0
  100173798  adrp    x8, #0x10041d000
  10017379c  nop
  1001737a0  ldr     x1, [x8, #0xc30]
  1001737a4  mov     x0, x20
  1001737a8  mov     x2, x21
  1001737ac  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[[self class] infoDictionary] objectForKey:@"CFBundleShortVersionString"]]
  1001737b0  mov     x29, x29
  1001737b4  bl      _objc_retainAutoreleasedReturnValue
  1001737b8  mov     x20, x0
  1001737bc  mov     x0, x21
  1001737c0  bl      _objc_release
  1001737c4  mov     x0, x19
  1001737c8  bl      _objc_release
  1001737cc  mov     x0, x20
  1001737d0  ldp     x22, x21, [sp], #0x10
  1001737d4  ldp     x20, x19, [sp], #0x10
  1001737d8  ldp     x29, x30, [sp], #0x10
  1001737dc  b       _objc_autoreleaseReturnValue
  1001737e0  mov     x20, x0
  1001737e4  b       loc_100173804
  1001737e8  mov     x20, x0
  1001737ec  b       loc_1001737fc
  1001737f0  mov     x20, x0
  1001737f4  mov     x0, x21
  1001737f8  bl      _objc_release
loc_1001737fc:
  1001737fc  mov     x0, x19
  100173800  bl      _objc_release
loc_100173804:
  100173804  mov     x0, x20
  100173808  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGAppVersion infoDictionary]
; address 0x10017380c  size 120  kind objc
; ======================================================================
  10017380c  stp     x29, x30, [sp, #-0x10]!
  100173810  mov     x29, sp
  100173814  stp     x20, x19, [sp, #-0x10]!
  100173818  adrp    x8, #0x10041d000
  10017381c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100173820  adrp    x8, #0x100416000
  100173824  nop
  100173828  ldr     x1, [x8, #0xb58]
  10017382c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100173830  mov     x29, x29
  100173834  bl      _objc_retainAutoreleasedReturnValue
  100173838  mov     x19, x0
  10017383c  adrp    x8, #0x10041d000
  100173840  nop
  100173844  ldr     x1, [x8, #0xc00]
  100173848  bl      _objc_msgSend                            ; [[NSBundle mainBundle] infoDictionary]
  10017384c  mov     x29, x29
  100173850  bl      _objc_retainAutoreleasedReturnValue
  100173854  mov     x20, x0
  100173858  mov     x0, x19
  10017385c  bl      _objc_release
  100173860  mov     x0, x20
  100173864  ldp     x20, x19, [sp], #0x10
  100173868  ldp     x29, x30, [sp], #0x10
  10017386c  b       _objc_autoreleaseReturnValue
  100173870  mov     x20, x0
  100173874  mov     x0, x19
  100173878  bl      _objc_release
  10017387c  mov     x0, x20
  100173880  bl      __Unwind_Resume                          ; Unwind_Resume()
