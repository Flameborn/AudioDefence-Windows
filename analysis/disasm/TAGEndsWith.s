// unit TAGEndsWith — 3 functions
//   0x1001786ec      44  +[TAGEndsWith functionId]
//   0x100178718      68  -[TAGEndsWith init]
//   0x10017875c     164  -[TAGEndsWith evaluateWithArg0:arg1:parameters:]

; ======================================================================
; +[TAGEndsWith functionId]
; address 0x1001786ec  size 44  kind objc
; ======================================================================
  1001786ec  stp     x29, x30, [sp, #-0x10]!
  1001786f0  mov     x29, sp
  1001786f4  stp     x20, x19, [sp, #-0x10]!
  1001786f8  adrp    x19, #0x1003c9000
  1001786fc  add     x19, x19, #0x850                         ; @"_ew"
  100178700  mov     x0, x19
  100178704  bl      _objc_retainAutorelease
  100178708  mov     x0, x19
  10017870c  ldp     x20, x19, [sp], #0x10
  100178710  ldp     x29, x30, [sp], #0x10
  100178714  ret

; ======================================================================
; -[TAGEndsWith init]
; address 0x100178718  size 68  kind objc
; ======================================================================
  100178718  stp     x29, x30, [sp, #-0x10]!
  10017871c  mov     x29, sp
  100178720  sub     sp, sp, #0x10
  100178724  str     x0, [sp]
  100178728  adrp    x8, #0x10041f000
  10017872c  ldr     x8, [x8, #0x400]
  100178730  str     x8, [sp, #8]
  100178734  adrp    x8, #0x10041d000
  100178738  nop
  10017873c  ldr     x1, [x8, #0xcc8]
  100178740  adrp    x2, #0x1003c9000
  100178744  add     x2, x2, #0x850                           ; @"_ew"
  100178748  mov     x0, sp
  10017874c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ew"]
  100178750  mov     sp, x29
  100178754  ldp     x29, x30, [sp], #0x10
  100178758  ret

; ======================================================================
; -[TAGEndsWith evaluateWithArg0:arg1:parameters:]
; address 0x10017875c  size 164  kind objc
; ======================================================================
  10017875c  stp     x29, x30, [sp, #-0x10]!
  100178760  mov     x29, sp
  100178764  stp     x20, x19, [sp, #-0x10]!
  100178768  stp     x22, x21, [sp, #-0x10]!
  10017876c  mov     x20, x3
  100178770  mov     x0, x2
  100178774  bl      _objc_retain
  100178778  mov     x19, x0
  10017877c  mov     x0, x20
  100178780  bl      _objc_retain
  100178784  mov     x20, x0
  100178788  adrp    x8, #0x100417000
  10017878c  nop
  100178790  ldr     x1, [x8, #0xc58]
  100178794  bl      _objc_msgSend                            ; [arg2 length]
  100178798  cbz     x0, loc_1001787d8                        ; if ([arg2 length] == 0)
  10017879c  adrp    x8, #0x10041b000
  1001787a0  nop
  1001787a4  ldr     x1, [x8, #0x4e8]
  1001787a8  mov     x0, x19
  1001787ac  mov     x2, x20
  1001787b0  bl      _objc_msgSend                            ; [arg1 hasSuffix:arg2]
  1001787b4  mov     x21, x0
  1001787b8  b       loc_1001787dc
  1001787bc  mov     x21, x0
  1001787c0  mov     x0, x20
  1001787c4  bl      _objc_release
  1001787c8  mov     x0, x19
  1001787cc  bl      _objc_release
  1001787d0  mov     x0, x21
  1001787d4  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1001787d8:
  1001787d8  mov     w21, #1
loc_1001787dc:
  1001787dc  mov     x0, x20
  1001787e0  bl      _objc_release
  1001787e4  mov     x0, x19
  1001787e8  bl      _objc_release
  1001787ec  mov     x0, x21
  1001787f0  ldp     x22, x21, [sp], #0x10
  1001787f4  ldp     x20, x19, [sp], #0x10
  1001787f8  ldp     x29, x30, [sp], #0x10
  1001787fc  ret
