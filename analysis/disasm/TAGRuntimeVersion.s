// unit TAGRuntimeVersion — 5 functions
//   0x100178074      44  +[TAGRuntimeVersion functionId]
//   0x1001780a0      12  +[TAGRuntimeVersion versionNumber]
//   0x1001780ac     176  -[TAGRuntimeVersion init]
//   0x10017815c       8  -[TAGRuntimeVersion isCacheable]
//   0x100178164     152  -[TAGRuntimeVersion evaluate:]

; ======================================================================
; +[TAGRuntimeVersion functionId]
; address 0x100178074  size 44  kind objc
; ======================================================================
  100178074  stp     x29, x30, [sp, #-0x10]!
  100178078  mov     x29, sp
  10017807c  stp     x20, x19, [sp, #-0x10]!
  100178080  adrp    x19, #0x1003c9000
  100178084  add     x19, x19, #0x7d0                         ; @"_rv"
  100178088  mov     x0, x19
  10017808c  bl      _objc_retainAutorelease
  100178090  mov     x0, x19
  100178094  ldp     x20, x19, [sp], #0x10
  100178098  ldp     x29, x30, [sp], #0x10
  10017809c  ret

; ======================================================================
; +[TAGRuntimeVersion versionNumber]
; address 0x1001780a0  size 12  kind objc
; ======================================================================
  1001780a0  mov     x0, #0x44d0000
  1001780a4  movk    x0, #0x6fb8
  1001780a8  ret

; ======================================================================
; -[TAGRuntimeVersion init]
; address 0x1001780ac  size 176  kind objc
; ======================================================================
  1001780ac  stp     x29, x30, [sp, #-0x10]!
  1001780b0  mov     x29, sp
  1001780b4  stp     x20, x19, [sp, #-0x10]!
  1001780b8  stp     x22, x21, [sp, #-0x10]!
  1001780bc  sub     sp, sp, #0x10
  1001780c0  mov     x20, x0
  1001780c4  adrp    x8, #0x10041e000
  1001780c8  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001780cc  adrp    x8, #0x100418000
  1001780d0  nop
  1001780d4  ldr     x1, [x8, #0x360]
  1001780d8  bl      _objc_msgSend                            ; [NSSet set]
  1001780dc  mov     x29, x29
  1001780e0  bl      _objc_retainAutoreleasedReturnValue
  1001780e4  mov     x19, x0
  1001780e8  str     x20, [sp]
  1001780ec  adrp    x8, #0x10041f000
  1001780f0  ldr     x8, [x8, #0x3e0]
  1001780f4  str     x8, [sp, #8]
  1001780f8  adrp    x8, #0x10041d000
  1001780fc  nop
  100178100  ldr     x1, [x8, #0xc10]
  100178104  adrp    x2, #0x1003c9000
  100178108  add     x2, x2, #0x7d0                           ; @"_rv"
  10017810c  mov     x0, sp
  100178110  mov     x3, x19
  100178114  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_rv" requiredKeys:[NSSet set]]
  100178118  mov     x20, x0
  10017811c  mov     x0, x19
  100178120  bl      _objc_release
  100178124  mov     x0, x20
  100178128  sub     sp, x29, #0x20
  10017812c  ldp     x22, x21, [sp], #0x10
  100178130  ldp     x20, x19, [sp], #0x10
  100178134  ldp     x29, x30, [sp], #0x10
  100178138  ret
  10017813c  mov     x21, x0
  100178140  mov     x0, x20
  100178144  b       loc_100178150
  100178148  mov     x21, x0
  10017814c  mov     x0, x19
loc_100178150:
  100178150  bl      _objc_release
  100178154  mov     x0, x21
  100178158  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRuntimeVersion isCacheable]
; address 0x10017815c  size 8  kind objc
; ======================================================================
  10017815c  mov     w0, #1
  100178160  ret

; ======================================================================
; -[TAGRuntimeVersion evaluate:]
; address 0x100178164  size 152  kind objc
; ======================================================================
  100178164  stp     x29, x30, [sp, #-0x10]!
  100178168  mov     x29, sp
  10017816c  stp     x20, x19, [sp, #-0x10]!
  100178170  adrp    x8, #0x10041e000
  100178174  ldr     x19, [x8, #0xb58]                        ; class TAGTypes
  100178178  adrp    x8, #0x10041d000
  10017817c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100178180  adrp    x8, #0x10041c000
  100178184  nop
  100178188  ldr     x1, [x8, #0x808]
  10017818c  mov     w2, #0x44d0000
  100178190  movk    w2, #0x6fb8
  100178194  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInt:0x44d6fb8]
  100178198  mov     x29, x29
  10017819c  bl      _objc_retainAutoreleasedReturnValue
  1001781a0  mov     x20, x0
  1001781a4  adrp    x8, #0x10041d000
  1001781a8  nop
  1001781ac  ldr     x1, [x8, #0xc30]
  1001781b0  mov     x0, x19
  1001781b4  mov     x2, x20
  1001781b8  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[NSNumber numberWithUnsignedInt:0x44d6fb8]]
  1001781bc  mov     x29, x29
  1001781c0  bl      _objc_retainAutoreleasedReturnValue
  1001781c4  mov     x19, x0
  1001781c8  mov     x0, x20
  1001781cc  bl      _objc_release
  1001781d0  mov     x0, x19
  1001781d4  ldp     x20, x19, [sp], #0x10
  1001781d8  ldp     x29, x30, [sp], #0x10
  1001781dc  b       _objc_autoreleaseReturnValue
  1001781e0  mov     x19, x0
  1001781e4  b       loc_1001781f4
  1001781e8  mov     x19, x0
  1001781ec  mov     x0, x20
  1001781f0  bl      _objc_release
loc_1001781f4:
  1001781f4  mov     x0, x19
  1001781f8  bl      __Unwind_Resume                          ; Unwind_Resume()
