// unit TAGPlatform — 4 functions
//   0x100177078      44  +[TAGPlatform functionId]
//   0x1001770a4     176  -[TAGPlatform init]
//   0x100177154       8  -[TAGPlatform isCacheable]
//   0x10017715c      56  -[TAGPlatform evaluate:]

; ======================================================================
; +[TAGPlatform functionId]
; address 0x100177078  size 44  kind objc
; ======================================================================
  100177078  stp     x29, x30, [sp, #-0x10]!
  10017707c  mov     x29, sp
  100177080  stp     x20, x19, [sp, #-0x10]!
  100177084  adrp    x19, #0x1003c6000
  100177088  add     x19, x19, #0xe90                         ; @"_p"
  10017708c  mov     x0, x19
  100177090  bl      _objc_retainAutorelease
  100177094  mov     x0, x19
  100177098  ldp     x20, x19, [sp], #0x10
  10017709c  ldp     x29, x30, [sp], #0x10
  1001770a0  ret

; ======================================================================
; -[TAGPlatform init]
; address 0x1001770a4  size 176  kind objc
; ======================================================================
  1001770a4  stp     x29, x30, [sp, #-0x10]!
  1001770a8  mov     x29, sp
  1001770ac  stp     x20, x19, [sp, #-0x10]!
  1001770b0  stp     x22, x21, [sp, #-0x10]!
  1001770b4  sub     sp, sp, #0x10
  1001770b8  mov     x20, x0
  1001770bc  adrp    x8, #0x10041e000
  1001770c0  ldr     x0, [x8, #0x550]                         ; class NSSet
  1001770c4  adrp    x8, #0x100418000
  1001770c8  nop
  1001770cc  ldr     x1, [x8, #0x360]
  1001770d0  bl      _objc_msgSend                            ; [NSSet set]
  1001770d4  mov     x29, x29
  1001770d8  bl      _objc_retainAutoreleasedReturnValue
  1001770dc  mov     x19, x0
  1001770e0  str     x20, [sp]
  1001770e4  adrp    x8, #0x10041f000
  1001770e8  ldr     x8, [x8, #0x3c0]
  1001770ec  str     x8, [sp, #8]
  1001770f0  adrp    x8, #0x10041d000
  1001770f4  nop
  1001770f8  ldr     x1, [x8, #0xc10]
  1001770fc  adrp    x2, #0x1003c6000
  100177100  add     x2, x2, #0xe90                           ; @"_p"
  100177104  mov     x0, sp
  100177108  mov     x3, x19
  10017710c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_p" requiredKeys:[NSSet set]]
  100177110  mov     x20, x0
  100177114  mov     x0, x19
  100177118  bl      _objc_release
  10017711c  mov     x0, x20
  100177120  sub     sp, x29, #0x20
  100177124  ldp     x22, x21, [sp], #0x10
  100177128  ldp     x20, x19, [sp], #0x10
  10017712c  ldp     x29, x30, [sp], #0x10
  100177130  ret
  100177134  mov     x21, x0
  100177138  mov     x0, x20
  10017713c  b       loc_100177148
  100177140  mov     x21, x0
  100177144  mov     x0, x19
loc_100177148:
  100177148  bl      _objc_release
  10017714c  mov     x0, x21
  100177150  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGPlatform isCacheable]
; address 0x100177154  size 8  kind objc
; ======================================================================
  100177154  mov     w0, #1
  100177158  ret

; ======================================================================
; -[TAGPlatform evaluate:]
; address 0x10017715c  size 56  kind objc
; ======================================================================
  10017715c  stp     x29, x30, [sp, #-0x10]!
  100177160  mov     x29, sp
  100177164  adrp    x8, #0x10041e000
  100177168  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10017716c  adrp    x8, #0x10041d000
  100177170  nop
  100177174  ldr     x1, [x8, #0xc30]
  100177178  adrp    x2, #0x1003c9000
  10017717c  add     x2, x2, #0x690                           ; @"iOS"
  100177180  bl      _objc_msgSend                            ; [TAGTypes objectToValue:@"iOS"]
  100177184  mov     x29, x29
  100177188  bl      _objc_retainAutoreleasedReturnValue
  10017718c  ldp     x29, x30, [sp], #0x10
  100177190  b       _objc_autoreleaseReturnValue
