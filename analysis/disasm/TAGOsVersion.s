// unit TAGOsVersion — 4 functions
//   0x100176ec8      44  +[TAGOsVersion functionId]
//   0x100176ef4     176  -[TAGOsVersion init]
//   0x100176fa4       8  -[TAGOsVersion isCacheable]
//   0x100176fac     204  -[TAGOsVersion evaluate:]

; ======================================================================
; +[TAGOsVersion functionId]
; address 0x100176ec8  size 44  kind objc
; ======================================================================
  100176ec8  stp     x29, x30, [sp, #-0x10]!
  100176ecc  mov     x29, sp
  100176ed0  stp     x20, x19, [sp, #-0x10]!
  100176ed4  adrp    x19, #0x1003c9000
  100176ed8  add     x19, x19, #0x670                         ; @"_ov"
  100176edc  mov     x0, x19
  100176ee0  bl      _objc_retainAutorelease
  100176ee4  mov     x0, x19
  100176ee8  ldp     x20, x19, [sp], #0x10
  100176eec  ldp     x29, x30, [sp], #0x10
  100176ef0  ret

; ======================================================================
; -[TAGOsVersion init]
; address 0x100176ef4  size 176  kind objc
; ======================================================================
  100176ef4  stp     x29, x30, [sp, #-0x10]!
  100176ef8  mov     x29, sp
  100176efc  stp     x20, x19, [sp, #-0x10]!
  100176f00  stp     x22, x21, [sp, #-0x10]!
  100176f04  sub     sp, sp, #0x10
  100176f08  mov     x20, x0
  100176f0c  adrp    x8, #0x10041e000
  100176f10  ldr     x0, [x8, #0x550]                         ; class NSSet
  100176f14  adrp    x8, #0x100418000
  100176f18  nop
  100176f1c  ldr     x1, [x8, #0x360]
  100176f20  bl      _objc_msgSend                            ; [NSSet set]
  100176f24  mov     x29, x29
  100176f28  bl      _objc_retainAutoreleasedReturnValue
  100176f2c  mov     x19, x0
  100176f30  str     x20, [sp]
  100176f34  adrp    x8, #0x10041f000
  100176f38  ldr     x8, [x8, #0x3b8]
  100176f3c  str     x8, [sp, #8]
  100176f40  adrp    x8, #0x10041d000
  100176f44  nop
  100176f48  ldr     x1, [x8, #0xc10]
  100176f4c  adrp    x2, #0x1003c9000
  100176f50  add     x2, x2, #0x670                           ; @"_ov"
  100176f54  mov     x0, sp
  100176f58  mov     x3, x19
  100176f5c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ov" requiredKeys:[NSSet set]]
  100176f60  mov     x20, x0
  100176f64  mov     x0, x19
  100176f68  bl      _objc_release
  100176f6c  mov     x0, x20
  100176f70  sub     sp, x29, #0x20
  100176f74  ldp     x22, x21, [sp], #0x10
  100176f78  ldp     x20, x19, [sp], #0x10
  100176f7c  ldp     x29, x30, [sp], #0x10
  100176f80  ret
  100176f84  mov     x21, x0
  100176f88  mov     x0, x20
  100176f8c  b       loc_100176f98
  100176f90  mov     x21, x0
  100176f94  mov     x0, x19
loc_100176f98:
  100176f98  bl      _objc_release
  100176f9c  mov     x0, x21
  100176fa0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGOsVersion isCacheable]
; address 0x100176fa4  size 8  kind objc
; ======================================================================
  100176fa4  mov     w0, #1
  100176fa8  ret

; ======================================================================
; -[TAGOsVersion evaluate:]
; address 0x100176fac  size 204  kind objc
; ======================================================================
  100176fac  stp     x29, x30, [sp, #-0x10]!
  100176fb0  mov     x29, sp
  100176fb4  stp     x20, x19, [sp, #-0x10]!
  100176fb8  stp     x22, x21, [sp, #-0x10]!
  100176fbc  adrp    x8, #0x10041e000
  100176fc0  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  100176fc4  nop
  100176fc8  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100176fcc  adrp    x8, #0x100417000
  100176fd0  nop
  100176fd4  ldr     x1, [x8, #0x788]
  100176fd8  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100176fdc  mov     x29, x29
  100176fe0  bl      _objc_retainAutoreleasedReturnValue
  100176fe4  mov     x19, x0
  100176fe8  adrp    x8, #0x100418000
  100176fec  nop
  100176ff0  ldr     x1, [x8, #0xa90]
  100176ff4  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  100176ff8  mov     x29, x29
  100176ffc  bl      _objc_retainAutoreleasedReturnValue
  100177000  mov     x21, x0
  100177004  adrp    x8, #0x10041d000
  100177008  nop
  10017700c  ldr     x1, [x8, #0xc30]
  100177010  mov     x0, x20
  100177014  mov     x2, x21
  100177018  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[UIDevice currentDevice] systemVersion]]
  10017701c  mov     x29, x29
  100177020  bl      _objc_retainAutoreleasedReturnValue
  100177024  mov     x20, x0
  100177028  mov     x0, x21
  10017702c  bl      _objc_release
  100177030  mov     x0, x19
  100177034  bl      _objc_release
  100177038  mov     x0, x20
  10017703c  ldp     x22, x21, [sp], #0x10
  100177040  ldp     x20, x19, [sp], #0x10
  100177044  ldp     x29, x30, [sp], #0x10
  100177048  b       _objc_autoreleaseReturnValue
  10017704c  mov     x20, x0
  100177050  b       loc_100177070
  100177054  mov     x20, x0
  100177058  b       loc_100177068
  10017705c  mov     x20, x0
  100177060  mov     x0, x21
  100177064  bl      _objc_release
loc_100177068:
  100177068  mov     x0, x19
  10017706c  bl      _objc_release
loc_100177070:
  100177070  mov     x0, x20
  100177074  bl      __Unwind_Resume                          ; Unwind_Resume()
