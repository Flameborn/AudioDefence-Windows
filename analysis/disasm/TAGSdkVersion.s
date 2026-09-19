// unit TAGSdkVersion — 4 functions
//   0x1001781fc      44  +[TAGSdkVersion functionId]
//   0x100178228     176  -[TAGSdkVersion init]
//   0x1001782d8       8  -[TAGSdkVersion isCacheable]
//   0x1001782e0     204  -[TAGSdkVersion evaluate:]

; ======================================================================
; +[TAGSdkVersion functionId]
; address 0x1001781fc  size 44  kind objc
; ======================================================================
  1001781fc  stp     x29, x30, [sp, #-0x10]!
  100178200  mov     x29, sp
  100178204  stp     x20, x19, [sp, #-0x10]!
  100178208  adrp    x19, #0x1003c9000
  10017820c  add     x19, x19, #0x7f0                         ; @"_sv"
  100178210  mov     x0, x19
  100178214  bl      _objc_retainAutorelease
  100178218  mov     x0, x19
  10017821c  ldp     x20, x19, [sp], #0x10
  100178220  ldp     x29, x30, [sp], #0x10
  100178224  ret

; ======================================================================
; -[TAGSdkVersion init]
; address 0x100178228  size 176  kind objc
; ======================================================================
  100178228  stp     x29, x30, [sp, #-0x10]!
  10017822c  mov     x29, sp
  100178230  stp     x20, x19, [sp, #-0x10]!
  100178234  stp     x22, x21, [sp, #-0x10]!
  100178238  sub     sp, sp, #0x10
  10017823c  mov     x20, x0
  100178240  adrp    x8, #0x10041e000
  100178244  ldr     x0, [x8, #0x550]                         ; class NSSet
  100178248  adrp    x8, #0x100418000
  10017824c  nop
  100178250  ldr     x1, [x8, #0x360]
  100178254  bl      _objc_msgSend                            ; [NSSet set]
  100178258  mov     x29, x29
  10017825c  bl      _objc_retainAutoreleasedReturnValue
  100178260  mov     x19, x0
  100178264  str     x20, [sp]
  100178268  adrp    x8, #0x10041f000
  10017826c  ldr     x8, [x8, #0x3e8]
  100178270  str     x8, [sp, #8]
  100178274  adrp    x8, #0x10041d000
  100178278  nop
  10017827c  ldr     x1, [x8, #0xc10]
  100178280  adrp    x2, #0x1003c9000
  100178284  add     x2, x2, #0x7f0                           ; @"_sv"
  100178288  mov     x0, sp
  10017828c  mov     x3, x19
  100178290  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_sv" requiredKeys:[NSSet set]]
  100178294  mov     x20, x0
  100178298  mov     x0, x19
  10017829c  bl      _objc_release
  1001782a0  mov     x0, x20
  1001782a4  sub     sp, x29, #0x20
  1001782a8  ldp     x22, x21, [sp], #0x10
  1001782ac  ldp     x20, x19, [sp], #0x10
  1001782b0  ldp     x29, x30, [sp], #0x10
  1001782b4  ret
  1001782b8  mov     x21, x0
  1001782bc  mov     x0, x20
  1001782c0  b       loc_1001782cc
  1001782c4  mov     x21, x0
  1001782c8  mov     x0, x19
loc_1001782cc:
  1001782cc  bl      _objc_release
  1001782d0  mov     x0, x21
  1001782d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGSdkVersion isCacheable]
; address 0x1001782d8  size 8  kind objc
; ======================================================================
  1001782d8  mov     w0, #1
  1001782dc  ret

; ======================================================================
; -[TAGSdkVersion evaluate:]
; address 0x1001782e0  size 204  kind objc
; ======================================================================
  1001782e0  stp     x29, x30, [sp, #-0x10]!
  1001782e4  mov     x29, sp
  1001782e8  stp     x20, x19, [sp, #-0x10]!
  1001782ec  stp     x22, x21, [sp, #-0x10]!
  1001782f0  adrp    x8, #0x10041e000
  1001782f4  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  1001782f8  nop
  1001782fc  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100178300  adrp    x8, #0x100417000
  100178304  nop
  100178308  ldr     x1, [x8, #0x788]
  10017830c  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100178310  mov     x29, x29
  100178314  bl      _objc_retainAutoreleasedReturnValue
  100178318  mov     x19, x0
  10017831c  adrp    x8, #0x100418000
  100178320  nop
  100178324  ldr     x1, [x8, #0xa90]
  100178328  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  10017832c  mov     x29, x29
  100178330  bl      _objc_retainAutoreleasedReturnValue
  100178334  mov     x21, x0
  100178338  adrp    x8, #0x10041d000
  10017833c  nop
  100178340  ldr     x1, [x8, #0xc30]
  100178344  mov     x0, x20
  100178348  mov     x2, x21
  10017834c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[UIDevice currentDevice] systemVersion]]
  100178350  mov     x29, x29
  100178354  bl      _objc_retainAutoreleasedReturnValue
  100178358  mov     x20, x0
  10017835c  mov     x0, x21
  100178360  bl      _objc_release
  100178364  mov     x0, x19
  100178368  bl      _objc_release
  10017836c  mov     x0, x20
  100178370  ldp     x22, x21, [sp], #0x10
  100178374  ldp     x20, x19, [sp], #0x10
  100178378  ldp     x29, x30, [sp], #0x10
  10017837c  b       _objc_autoreleaseReturnValue
  100178380  mov     x20, x0
  100178384  b       loc_1001783a4
  100178388  mov     x20, x0
  10017838c  b       loc_10017839c
  100178390  mov     x20, x0
  100178394  mov     x0, x21
  100178398  bl      _objc_release
loc_10017839c:
  10017839c  mov     x0, x19
  1001783a0  bl      _objc_release
loc_1001783a4:
  1001783a4  mov     x0, x20
  1001783a8  bl      __Unwind_Resume                          ; Unwind_Resume()
