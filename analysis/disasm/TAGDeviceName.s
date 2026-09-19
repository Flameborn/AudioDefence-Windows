// unit TAGDeviceName — 4 functions
//   0x100173f60      44  +[TAGDeviceName functionId]
//   0x100173f8c     176  -[TAGDeviceName init]
//   0x10017403c       8  -[TAGDeviceName isCacheable]
//   0x100174044     204  -[TAGDeviceName evaluate:]

; ======================================================================
; +[TAGDeviceName functionId]
; address 0x100173f60  size 44  kind objc
; ======================================================================
  100173f60  stp     x29, x30, [sp, #-0x10]!
  100173f64  mov     x29, sp
  100173f68  stp     x20, x19, [sp, #-0x10]!
  100173f6c  adrp    x19, #0x1003c9000
  100173f70  add     x19, x19, #0x210                         ; @"_dn"
  100173f74  mov     x0, x19
  100173f78  bl      _objc_retainAutorelease
  100173f7c  mov     x0, x19
  100173f80  ldp     x20, x19, [sp], #0x10
  100173f84  ldp     x29, x30, [sp], #0x10
  100173f88  ret

; ======================================================================
; -[TAGDeviceName init]
; address 0x100173f8c  size 176  kind objc
; ======================================================================
  100173f8c  stp     x29, x30, [sp, #-0x10]!
  100173f90  mov     x29, sp
  100173f94  stp     x20, x19, [sp, #-0x10]!
  100173f98  stp     x22, x21, [sp, #-0x10]!
  100173f9c  sub     sp, sp, #0x10
  100173fa0  mov     x20, x0
  100173fa4  adrp    x8, #0x10041e000
  100173fa8  ldr     x0, [x8, #0x550]                         ; class NSSet
  100173fac  adrp    x8, #0x100418000
  100173fb0  nop
  100173fb4  ldr     x1, [x8, #0x360]
  100173fb8  bl      _objc_msgSend                            ; [NSSet set]
  100173fbc  mov     x29, x29
  100173fc0  bl      _objc_retainAutoreleasedReturnValue
  100173fc4  mov     x19, x0
  100173fc8  str     x20, [sp]
  100173fcc  adrp    x8, #0x10041f000
  100173fd0  ldr     x8, [x8, #0x378]
  100173fd4  str     x8, [sp, #8]
  100173fd8  adrp    x8, #0x10041d000
  100173fdc  nop
  100173fe0  ldr     x1, [x8, #0xc10]
  100173fe4  adrp    x2, #0x1003c9000
  100173fe8  add     x2, x2, #0x210                           ; @"_dn"
  100173fec  mov     x0, sp
  100173ff0  mov     x3, x19
  100173ff4  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_dn" requiredKeys:[NSSet set]]
  100173ff8  mov     x20, x0
  100173ffc  mov     x0, x19
  100174000  bl      _objc_release
  100174004  mov     x0, x20
  100174008  sub     sp, x29, #0x20
  10017400c  ldp     x22, x21, [sp], #0x10
  100174010  ldp     x20, x19, [sp], #0x10
  100174014  ldp     x29, x30, [sp], #0x10
  100174018  ret
  10017401c  mov     x21, x0
  100174020  mov     x0, x20
  100174024  b       loc_100174030
  100174028  mov     x21, x0
  10017402c  mov     x0, x19
loc_100174030:
  100174030  bl      _objc_release
  100174034  mov     x0, x21
  100174038  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDeviceName isCacheable]
; address 0x10017403c  size 8  kind objc
; ======================================================================
  10017403c  mov     w0, #1
  100174040  ret

; ======================================================================
; -[TAGDeviceName evaluate:]
; address 0x100174044  size 204  kind objc
; ======================================================================
  100174044  stp     x29, x30, [sp, #-0x10]!
  100174048  mov     x29, sp
  10017404c  stp     x20, x19, [sp, #-0x10]!
  100174050  stp     x22, x21, [sp, #-0x10]!
  100174054  adrp    x8, #0x10041e000
  100174058  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  10017405c  nop
  100174060  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100174064  adrp    x8, #0x100417000
  100174068  nop
  10017406c  ldr     x1, [x8, #0x788]
  100174070  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100174074  mov     x29, x29
  100174078  bl      _objc_retainAutoreleasedReturnValue
  10017407c  mov     x19, x0
  100174080  adrp    x8, #0x100418000
  100174084  nop
  100174088  ldr     x1, [x8, #0x9e8]
  10017408c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  100174090  mov     x29, x29
  100174094  bl      _objc_retainAutoreleasedReturnValue
  100174098  mov     x21, x0
  10017409c  adrp    x8, #0x10041d000
  1001740a0  nop
  1001740a4  ldr     x1, [x8, #0xc30]
  1001740a8  mov     x0, x20
  1001740ac  mov     x2, x21
  1001740b0  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[UIDevice currentDevice] model]]
  1001740b4  mov     x29, x29
  1001740b8  bl      _objc_retainAutoreleasedReturnValue
  1001740bc  mov     x20, x0
  1001740c0  mov     x0, x21
  1001740c4  bl      _objc_release
  1001740c8  mov     x0, x19
  1001740cc  bl      _objc_release
  1001740d0  mov     x0, x20
  1001740d4  ldp     x22, x21, [sp], #0x10
  1001740d8  ldp     x20, x19, [sp], #0x10
  1001740dc  ldp     x29, x30, [sp], #0x10
  1001740e0  b       _objc_autoreleaseReturnValue
  1001740e4  mov     x20, x0
  1001740e8  b       loc_100174108
  1001740ec  mov     x20, x0
  1001740f0  b       loc_100174100
  1001740f4  mov     x20, x0
  1001740f8  mov     x0, x21
  1001740fc  bl      _objc_release
loc_100174100:
  100174100  mov     x0, x19
  100174104  bl      _objc_release
loc_100174108:
  100174108  mov     x0, x20
  10017410c  bl      __Unwind_Resume                          ; Unwind_Resume()
