// unit ADHackHitView — 2 functions
//   0x1000404ec      60  -[ADHackHitView initWithFrame:]
//   0x100040528     380  -[ADHackHitView hitTest:withEvent:]

; ======================================================================
; -[ADHackHitView initWithFrame:]
; address 0x1000404ec  size 60  kind objc
; ======================================================================
  1000404ec  stp     x29, x30, [sp, #-0x10]!
  1000404f0  mov     x29, sp
  1000404f4  sub     sp, sp, #0x10
  1000404f8  str     x0, [sp]
  1000404fc  adrp    x8, #0x10041e000
  100040500  ldr     x8, [x8, #0xce0]
  100040504  str     x8, [sp, #8]
  100040508  adrp    x8, #0x100417000
  10004050c  nop
  100040510  ldr     x1, [x8, #0x178]
  100040514  mov     x0, sp
  100040518  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10004051c  mov     sp, x29
  100040520  ldp     x29, x30, [sp], #0x10
  100040524  ret

; ======================================================================
; -[ADHackHitView hitTest:withEvent:]
; address 0x100040528  size 380  kind objc
; ======================================================================
  100040528  stp     d9, d8, [sp, #-0x50]!
  10004052c  stp     x24, x23, [sp, #0x10]
  100040530  stp     x22, x21, [sp, #0x20]
  100040534  stp     x20, x19, [sp, #0x30]
  100040538  stp     x29, x30, [sp, #0x40]
  10004053c  add     x29, sp, #0x40
  100040540  sub     sp, sp, #0x10
  100040544  mov     v8.16b, v1.16b
  100040548  mov     v9.16b, v0.16b
  10004054c  mov     x21, x0
  100040550  mov     x0, x2
  100040554  bl      _objc_retain
  100040558  mov     x19, x0
  10004055c  str     x21, [sp]
  100040560  adrp    x8, #0x10041e000
  100040564  ldr     x8, [x8, #0xce0]
  100040568  str     x8, [sp, #8]
  10004056c  adrp    x8, #0x100417000
  100040570  nop
  100040574  ldr     x1, [x8, #0xe28]
  100040578  mov     x20, #0
  10004057c  mov     x0, sp
  100040580  mov     v0.16b, v9.16b
  100040584  mov     v1.16b, v8.16b
  100040588  mov     x2, x19
  10004058c  bl      _objc_msgSendSuper2                      ; [super hitTest:{arg1.0, arg1.1} withEvent:arg2]
  100040590  mov     x29, x29
  100040594  bl      _objc_retainAutoreleasedReturnValue
  100040598  mov     x20, x0
  10004059c  cmp     x20, x21
  1000405a0  b.ne    loc_10004062c                            ; if ([super hitTest:{arg1.0, arg1.1} withEvent:arg2] != self)
  1000405a4  adrp    x8, #0x100417000
  1000405a8  nop
  1000405ac  ldr     x22, [x8, #0x1c8]
  1000405b0  mov     x0, x21
  1000405b4  mov     x1, x22
  1000405b8  bl      _objc_msgSend                            ; [self subviews]
  1000405bc  mov     x29, x29
  1000405c0  bl      _objc_retainAutoreleasedReturnValue
  1000405c4  mov     x23, x0
  1000405c8  adrp    x8, #0x100416000
  1000405cc  nop
  1000405d0  ldr     x1, [x8, #0xe30]
  1000405d4  bl      _objc_msgSend                            ; [[self subviews] count]
  1000405d8  mov     x24, x0
  1000405dc  mov     x0, x23
  1000405e0  bl      _objc_release
  1000405e4  cbz     x24, loc_10004062c                       ; if ([[self subviews] count] == 0)
  1000405e8  mov     x0, x21
  1000405ec  mov     x1, x22
  1000405f0  bl      _objc_msgSend                            ; [self subviews]
  1000405f4  mov     x29, x29
  1000405f8  bl      _objc_retainAutoreleasedReturnValue
  1000405fc  mov     x22, x0
  100040600  adrp    x8, #0x100416000
  100040604  nop
  100040608  ldr     x1, [x8, #0xc30]
  10004060c  mov     x2, #0
  100040610  bl      _objc_msgSend                            ; [[self subviews] objectAtIndex:0]
  100040614  mov     x29, x29
  100040618  bl      _objc_retainAutoreleasedReturnValue
  10004061c  mov     x21, x0
  100040620  mov     x0, x22
  100040624  bl      _objc_release
  100040628  b       loc_100040638
loc_10004062c:
  10004062c  mov     x0, x20
  100040630  bl      _objc_retain
  100040634  mov     x21, x0
loc_100040638:
  100040638  mov     x0, x20
  10004063c  bl      _objc_release
  100040640  mov     x0, x19
  100040644  bl      _objc_release
  100040648  mov     x0, x21
  10004064c  sub     sp, x29, #0x40
  100040650  ldp     x29, x30, [sp, #0x40]
  100040654  ldp     x20, x19, [sp, #0x30]
  100040658  ldp     x22, x21, [sp, #0x20]
  10004065c  ldp     x24, x23, [sp, #0x10]
  100040660  ldp     d9, d8, [sp], #0x50
  100040664  b       _objc_autoreleaseReturnValue
  100040668  mov     x21, x0
  10004066c  b       loc_10004068c
  100040670  mov     x21, x0
  100040674  mov     x0, x23
  100040678  bl      _objc_release
  10004067c  b       loc_10004068c
  100040680  mov     x21, x0
  100040684  mov     x0, x22
  100040688  bl      _objc_release
loc_10004068c:
  10004068c  mov     x0, x20
  100040690  bl      _objc_release
  100040694  mov     x0, x19
  100040698  bl      _objc_release
  10004069c  mov     x0, x21
  1000406a0  bl      __Unwind_Resume                          ; Unwind_Resume()
