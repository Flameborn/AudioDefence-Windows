// unit TAGAppId — 4 functions
//   0x1001731a8      44  +[TAGAppId functionId]
//   0x1001731d4     176  -[TAGAppId init]
//   0x100173284       8  -[TAGAppId isCacheable]
//   0x10017328c     204  -[TAGAppId evaluate:]

; ======================================================================
; +[TAGAppId functionId]
; address 0x1001731a8  size 44  kind objc
; ======================================================================
  1001731a8  stp     x29, x30, [sp, #-0x10]!
  1001731ac  mov     x29, sp
  1001731b0  stp     x20, x19, [sp, #-0x10]!
  1001731b4  adrp    x19, #0x1003c9000
  1001731b8  add     x19, x19, #0xf0                          ; @"_ai"
  1001731bc  mov     x0, x19
  1001731c0  bl      _objc_retainAutorelease
  1001731c4  mov     x0, x19
  1001731c8  ldp     x20, x19, [sp], #0x10
  1001731cc  ldp     x29, x30, [sp], #0x10
  1001731d0  ret

; ======================================================================
; -[TAGAppId init]
; address 0x1001731d4  size 176  kind objc
; ======================================================================
  1001731d4  stp     x29, x30, [sp, #-0x10]!
  1001731d8  mov     x29, sp
  1001731dc  stp     x20, x19, [sp, #-0x10]!
  1001731e0  stp     x22, x21, [sp, #-0x10]!
  1001731e4  sub     sp, sp, #0x10
  1001731e8  mov     x20, x0
  1001731ec  adrp    x8, #0x10041e000
  1001731f0  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001731f4  adrp    x8, #0x100418000
  1001731f8  nop
  1001731fc  ldr     x1, [x8, #0x360]
  100173200  bl      _objc_msgSend                            ; [NSSet set]
  100173204  mov     x29, x29
  100173208  bl      _objc_retainAutoreleasedReturnValue
  10017320c  mov     x19, x0
  100173210  str     x20, [sp]
  100173214  adrp    x8, #0x10041f000
  100173218  ldr     x8, [x8, #0x348]
  10017321c  str     x8, [sp, #8]
  100173220  adrp    x8, #0x10041d000
  100173224  nop
  100173228  ldr     x1, [x8, #0xc10]
  10017322c  adrp    x2, #0x1003c9000
  100173230  add     x2, x2, #0xf0                            ; @"_ai"
  100173234  mov     x0, sp
  100173238  mov     x3, x19
  10017323c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ai" requiredKeys:[NSSet set]]
  100173240  mov     x20, x0
  100173244  mov     x0, x19
  100173248  bl      _objc_release
  10017324c  mov     x0, x20
  100173250  sub     sp, x29, #0x20
  100173254  ldp     x22, x21, [sp], #0x10
  100173258  ldp     x20, x19, [sp], #0x10
  10017325c  ldp     x29, x30, [sp], #0x10
  100173260  ret
  100173264  mov     x21, x0
  100173268  mov     x0, x20
  10017326c  b       loc_100173278
  100173270  mov     x21, x0
  100173274  mov     x0, x19
loc_100173278:
  100173278  bl      _objc_release
  10017327c  mov     x0, x21
  100173280  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAppId isCacheable]
; address 0x100173284  size 8  kind objc
; ======================================================================
  100173284  mov     w0, #1
  100173288  ret

; ======================================================================
; -[TAGAppId evaluate:]
; address 0x10017328c  size 204  kind objc
; ======================================================================
  10017328c  stp     x29, x30, [sp, #-0x10]!
  100173290  mov     x29, sp
  100173294  stp     x20, x19, [sp, #-0x10]!
  100173298  stp     x22, x21, [sp, #-0x10]!
  10017329c  adrp    x8, #0x10041e000
  1001732a0  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  1001732a4  adrp    x8, #0x10041d000
  1001732a8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1001732ac  adrp    x8, #0x100416000
  1001732b0  nop
  1001732b4  ldr     x1, [x8, #0xb58]
  1001732b8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1001732bc  mov     x29, x29
  1001732c0  bl      _objc_retainAutoreleasedReturnValue
  1001732c4  mov     x19, x0
  1001732c8  adrp    x8, #0x10041c000
  1001732cc  nop
  1001732d0  ldr     x1, [x8, #0x278]
  1001732d4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] bundleIdentifier]
  1001732d8  mov     x29, x29
  1001732dc  bl      _objc_retainAutoreleasedReturnValue
  1001732e0  mov     x21, x0
  1001732e4  adrp    x8, #0x10041d000
  1001732e8  nop
  1001732ec  ldr     x1, [x8, #0xc30]
  1001732f0  mov     x0, x20
  1001732f4  mov     x2, x21
  1001732f8  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[NSBundle mainBundle] bundleIdentifier]]
  1001732fc  mov     x29, x29
  100173300  bl      _objc_retainAutoreleasedReturnValue
  100173304  mov     x20, x0
  100173308  mov     x0, x21
  10017330c  bl      _objc_release
  100173310  mov     x0, x19
  100173314  bl      _objc_release
  100173318  mov     x0, x20
  10017331c  ldp     x22, x21, [sp], #0x10
  100173320  ldp     x20, x19, [sp], #0x10
  100173324  ldp     x29, x30, [sp], #0x10
  100173328  b       _objc_autoreleaseReturnValue
  10017332c  mov     x20, x0
  100173330  b       loc_100173350
  100173334  mov     x20, x0
  100173338  b       loc_100173348
  10017333c  mov     x20, x0
  100173340  mov     x0, x21
  100173344  bl      _objc_release
loc_100173348:
  100173348  mov     x0, x19
  10017334c  bl      _objc_release
loc_100173350:
  100173350  mov     x0, x20
  100173354  bl      __Unwind_Resume                          ; Unwind_Resume()
