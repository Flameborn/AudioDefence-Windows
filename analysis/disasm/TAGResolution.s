// unit TAGResolution — 4 functions
//   0x100177e20      44  +[TAGResolution functionId]
//   0x100177e4c     176  -[TAGResolution init]
//   0x100177efc       8  -[TAGResolution isCacheable]
//   0x100177f04     368  -[TAGResolution evaluate:]

; ======================================================================
; +[TAGResolution functionId]
; address 0x100177e20  size 44  kind objc
; ======================================================================
  100177e20  stp     x29, x30, [sp, #-0x10]!
  100177e24  mov     x29, sp
  100177e28  stp     x20, x19, [sp, #-0x10]!
  100177e2c  adrp    x19, #0x1003c9000
  100177e30  add     x19, x19, #0x7b0                         ; @"_rs"
  100177e34  mov     x0, x19
  100177e38  bl      _objc_retainAutorelease
  100177e3c  mov     x0, x19
  100177e40  ldp     x20, x19, [sp], #0x10
  100177e44  ldp     x29, x30, [sp], #0x10
  100177e48  ret

; ======================================================================
; -[TAGResolution init]
; address 0x100177e4c  size 176  kind objc
; ======================================================================
  100177e4c  stp     x29, x30, [sp, #-0x10]!
  100177e50  mov     x29, sp
  100177e54  stp     x20, x19, [sp, #-0x10]!
  100177e58  stp     x22, x21, [sp, #-0x10]!
  100177e5c  sub     sp, sp, #0x10
  100177e60  mov     x20, x0
  100177e64  adrp    x8, #0x10041e000
  100177e68  ldr     x0, [x8, #0x550]                         ; class NSSet
  100177e6c  adrp    x8, #0x100418000
  100177e70  nop
  100177e74  ldr     x1, [x8, #0x360]
  100177e78  bl      _objc_msgSend                            ; [NSSet set]
  100177e7c  mov     x29, x29
  100177e80  bl      _objc_retainAutoreleasedReturnValue
  100177e84  mov     x19, x0
  100177e88  str     x20, [sp]
  100177e8c  adrp    x8, #0x10041f000
  100177e90  ldr     x8, [x8, #0x3d8]
  100177e94  str     x8, [sp, #8]
  100177e98  adrp    x8, #0x10041d000
  100177e9c  nop
  100177ea0  ldr     x1, [x8, #0xc10]
  100177ea4  adrp    x2, #0x1003c9000
  100177ea8  add     x2, x2, #0x7b0                           ; @"_rs"
  100177eac  mov     x0, sp
  100177eb0  mov     x3, x19
  100177eb4  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_rs" requiredKeys:[NSSet set]]
  100177eb8  mov     x20, x0
  100177ebc  mov     x0, x19
  100177ec0  bl      _objc_release
  100177ec4  mov     x0, x20
  100177ec8  sub     sp, x29, #0x20
  100177ecc  ldp     x22, x21, [sp], #0x10
  100177ed0  ldp     x20, x19, [sp], #0x10
  100177ed4  ldp     x29, x30, [sp], #0x10
  100177ed8  ret
  100177edc  mov     x21, x0
  100177ee0  mov     x0, x20
  100177ee4  b       loc_100177ef0
  100177ee8  mov     x21, x0
  100177eec  mov     x0, x19
loc_100177ef0:
  100177ef0  bl      _objc_release
  100177ef4  mov     x0, x21
  100177ef8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGResolution isCacheable]
; address 0x100177efc  size 8  kind objc
; ======================================================================
  100177efc  mov     w0, #1
  100177f00  ret

; ======================================================================
; -[TAGResolution evaluate:]
; address 0x100177f04  size 368  kind objc
; ======================================================================
  100177f04  stp     x29, x30, [sp, #-0x10]!
  100177f08  mov     x29, sp
  100177f0c  stp     x20, x19, [sp, #-0x10]!
  100177f10  stp     x22, x21, [sp, #-0x10]!
  100177f14  stp     d9, d8, [sp, #-0x10]!
  100177f18  stp     d11, d10, [sp, #-0x10]!
  100177f1c  sub     sp, sp, #0x10
  100177f20  adrp    x21, #0x10041e000
  100177f24  ldr     x0, [x21, #0x28]                         ; class UIScreen
  100177f28  adrp    x8, #0x100417000
  100177f2c  nop
  100177f30  ldr     x19, [x8, #0x6e8]
  100177f34  mov     x1, x19
  100177f38  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100177f3c  mov     x29, x29
  100177f40  bl      _objc_retainAutoreleasedReturnValue
  100177f44  mov     x20, x0
  100177f48  adrp    x8, #0x100417000
  100177f4c  nop
  100177f50  ldr     x1, [x8, #0x748]
  100177f54  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  100177f58  mov     v8.16b, v2.16b
  100177f5c  mov     v9.16b, v3.16b
  100177f60  mov     x0, x20
  100177f64  bl      _objc_release
  100177f68  ldr     x0, [x21, #0x28]                         ; class UIScreen
  100177f6c  mov     x1, x19
  100177f70  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100177f74  mov     x29, x29
  100177f78  bl      _objc_retainAutoreleasedReturnValue
  100177f7c  mov     x19, x0
  100177f80  adrp    x8, #0x100417000
  100177f84  nop
  100177f88  ldr     x1, [x8, #0x6e0]
  100177f8c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] scale]
  100177f90  mov     v10.16b, v0.16b
  100177f94  mov     x0, x19
  100177f98  bl      _objc_release
  100177f9c  fmul    d0, d8, d10
  100177fa0  fmul    d1, d9, d10
  100177fa4  adrp    x8, #0x10041e000
  100177fa8  ldr     x19, [x8, #0xb58]                        ; class TAGTypes
  100177fac  adrp    x8, #0x10041d000
  100177fb0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100177fb4  fcvt    s0, d0
  100177fb8  frintx  s2, s0
  100177fbc  frintp  s0, s0
  100177fc0  fcvtzs  w8, s0
  100177fc4  fcvt    s0, d1
  100177fc8  frintx  s1, s0
  100177fcc  frintp  s0, s0
  100177fd0  fcvtzs  w9, s0
  100177fd4  adrp    x10, #0x100416000
  100177fd8  nop
  100177fdc  ldr     x1, [x10, #0xee8]
  100177fe0  stp     x8, x9, [sp]
  100177fe4  adrp    x2, #0x1003c4000
  100177fe8  add     x2, x2, #0xfd0                           ; @"%dx%d"
  100177fec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%dx%d", (int)ceil(([[UIScreen mainScreen] bounds].2 * [[UIScreen mainScreen] scale])), (int)ceil(([[UIScreen mainScreen] bounds].3 * [[UIScreen mainScreen] scale]))]
  100177ff0  mov     x29, x29
  100177ff4  bl      _objc_retainAutoreleasedReturnValue
  100177ff8  mov     x20, x0
  100177ffc  adrp    x8, #0x10041d000
  100178000  nop
  100178004  ldr     x1, [x8, #0xc30]
  100178008  mov     x0, x19
  10017800c  mov     x2, x20
  100178010  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[NSString stringWithFormat:@"%dx%d", (int)ceil(([[UIScreen mainScreen] bounds].2 * [[UIScreen mainScreen] scale])), (int)ceil(([[UIScreen mainScreen] bounds].3 * [[UIScreen mainScreen] scale]))]]
  100178014  mov     x29, x29
  100178018  bl      _objc_retainAutoreleasedReturnValue
  10017801c  mov     x19, x0
  100178020  mov     x0, x20
  100178024  bl      _objc_release
  100178028  mov     x0, x19
  10017802c  sub     sp, x29, #0x40
  100178030  ldp     d11, d10, [sp], #0x10
  100178034  ldp     d9, d8, [sp], #0x10
  100178038  ldp     x22, x21, [sp], #0x10
  10017803c  ldp     x20, x19, [sp], #0x10
  100178040  ldp     x29, x30, [sp], #0x10
  100178044  b       _objc_autoreleaseReturnValue
  100178048  b       loc_100178060
  10017804c  mov     x21, x0
  100178050  mov     x0, x19
  100178054  b       loc_100178068
  100178058  mov     x21, x0
  10017805c  b       loc_10017806c
loc_100178060:
  100178060  mov     x21, x0
  100178064  mov     x0, x20
loc_100178068:
  100178068  bl      _objc_release
loc_10017806c:
  10017806c  mov     x0, x21
  100178070  bl      __Unwind_Resume                          ; Unwind_Resume()
