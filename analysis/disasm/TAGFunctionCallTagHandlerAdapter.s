// unit TAGFunctionCallTagHandlerAdapter — 5 functions
//   0x10014cac4     164  -[TAGFunctionCallTagHandlerAdapter initWithContainer:]
//   0x10014cb68     292  -[TAGFunctionCallTagHandlerAdapter evaluate:parameters:]
//   0x10014cc8c      16  -[TAGFunctionCallTagHandlerAdapter container]
//   0x10014cc9c      12  -[TAGFunctionCallTagHandlerAdapter setContainer:]
//   0x10014cca8      20  -[TAGFunctionCallTagHandlerAdapter .cxx_destruct]

; ======================================================================
; -[TAGFunctionCallTagHandlerAdapter initWithContainer:]
; address 0x10014cac4  size 164  kind objc
; ======================================================================
  10014cac4  stp     x29, x30, [sp, #-0x10]!
  10014cac8  mov     x29, sp
  10014cacc  stp     x20, x19, [sp, #-0x10]!
  10014cad0  stp     x22, x21, [sp, #-0x10]!
  10014cad4  sub     sp, sp, #0x10
  10014cad8  mov     x20, x0
  10014cadc  mov     x0, x2
  10014cae0  bl      _objc_retain
  10014cae4  mov     x19, x0
  10014cae8  str     x20, [sp]
  10014caec  adrp    x8, #0x10041f000
  10014caf0  ldr     x8, [x8, #0x1f8]
  10014caf4  str     x8, [sp, #8]
  10014caf8  adrp    x8, #0x100416000
  10014cafc  nop
  10014cb00  ldr     x1, [x8, #0xab8]
  10014cb04  mov     x0, sp
  10014cb08  bl      _objc_msgSendSuper2                      ; [super init]
  10014cb0c  mov     x20, x0
  10014cb10  cbz     x20, loc_10014cb34                       ; if (self == 0)
  10014cb14  adrp    x8, #0x100420000
  10014cb18  ldrsw   x21, [x8, #0x9fc]                        ; ivar offset TAGFunctionCallTagHandlerAdapter._container (+0x8)
  10014cb1c  mov     x0, x19
  10014cb20  bl      _objc_retain
  10014cb24  ldr     x8, [x20, x21]                           ; x8 = self->_container
  10014cb28  str     x0, [x20, x21]                           ; self->_container = arg1
  10014cb2c  mov     x0, x8
  10014cb30  bl      _objc_release
loc_10014cb34:
  10014cb34  mov     x0, x19
  10014cb38  bl      _objc_release
  10014cb3c  mov     x0, x20
  10014cb40  sub     sp, x29, #0x20
  10014cb44  ldp     x22, x21, [sp], #0x10
  10014cb48  ldp     x20, x19, [sp], #0x10
  10014cb4c  ldp     x29, x30, [sp], #0x10
  10014cb50  ret
  10014cb54  mov     x20, x0
  10014cb58  mov     x0, x19
  10014cb5c  bl      _objc_release
  10014cb60  mov     x0, x20
  10014cb64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallTagHandlerAdapter evaluate:parameters:]
; address 0x10014cb68  size 292  kind objc
; ======================================================================
  10014cb68  stp     x29, x30, [sp, #-0x10]!
  10014cb6c  mov     x29, sp
  10014cb70  stp     x20, x19, [sp, #-0x10]!
  10014cb74  stp     x22, x21, [sp, #-0x10]!
  10014cb78  stp     x24, x23, [sp, #-0x10]!
  10014cb7c  mov     x20, x3
  10014cb80  mov     x21, x0
  10014cb84  mov     x0, x2
  10014cb88  bl      _objc_retain
  10014cb8c  mov     x19, x0
  10014cb90  mov     x0, x20
  10014cb94  bl      _objc_retain
  10014cb98  mov     x20, x0
  10014cb9c  adrp    x8, #0x10041c000
  10014cba0  nop
  10014cba4  ldr     x1, [x8, #0xde0]
  10014cba8  mov     x0, x21
  10014cbac  bl      _objc_msgSend                            ; [self container]
  10014cbb0  mov     x29, x29
  10014cbb4  bl      _objc_retainAutoreleasedReturnValue
  10014cbb8  mov     x22, x0
  10014cbbc  adrp    x8, #0x10041c000
  10014cbc0  nop
  10014cbc4  ldr     x1, [x8, #0xde8]
  10014cbc8  mov     x2, x19
  10014cbcc  bl      _objc_msgSend                            ; [[self container] functionCallTagHandlerForTag:arg1]
  10014cbd0  mov     x29, x29
  10014cbd4  bl      _objc_retainAutoreleasedReturnValue
  10014cbd8  mov     x21, x0
  10014cbdc  mov     x0, x22
  10014cbe0  bl      _objc_release
  10014cbe4  adrp    x8, #0x10041c000
  10014cbe8  nop
  10014cbec  ldr     x1, [x8, #0xdf0]
  10014cbf0  mov     x0, x21
  10014cbf4  mov     x2, x19
  10014cbf8  mov     x3, x20
  10014cbfc  bl      _objc_msgSend                            ; [[[self container] functionCallTagHandlerForTag:arg1] execute:arg1 parameters:arg2]
  10014cc00  adrp    x8, #0x10041e000
  10014cc04  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10014cc08  adrp    x8, #0x10041c000
  10014cc0c  nop
  10014cc10  ldr     x1, [x8, #0xdf8]
  10014cc14  bl      _objc_msgSend                            ; [TAGTypes defaultString]
  10014cc18  mov     x29, x29
  10014cc1c  bl      _objc_retainAutoreleasedReturnValue
  10014cc20  mov     x22, x0
  10014cc24  mov     x0, x21
  10014cc28  bl      _objc_release
  10014cc2c  mov     x0, x20
  10014cc30  bl      _objc_release
  10014cc34  mov     x0, x19
  10014cc38  bl      _objc_release
  10014cc3c  mov     x0, x22
  10014cc40  ldp     x24, x23, [sp], #0x10
  10014cc44  ldp     x22, x21, [sp], #0x10
  10014cc48  ldp     x20, x19, [sp], #0x10
  10014cc4c  ldp     x29, x30, [sp], #0x10
  10014cc50  b       _objc_autoreleaseReturnValue
  10014cc54  mov     x23, x0
  10014cc58  b       loc_10014cc74
  10014cc5c  mov     x23, x0
  10014cc60  mov     x0, x22
  10014cc64  b       loc_10014cc70
  10014cc68  mov     x23, x0
  10014cc6c  mov     x0, x21
loc_10014cc70:
  10014cc70  bl      _objc_release
loc_10014cc74:
  10014cc74  mov     x0, x20
  10014cc78  bl      _objc_release
  10014cc7c  mov     x0, x19
  10014cc80  bl      _objc_release
  10014cc84  mov     x0, x23
  10014cc88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallTagHandlerAdapter container]
; address 0x10014cc8c  size 16  kind objc
; ======================================================================
  10014cc8c  adrp    x8, #0x100420000
  10014cc90  ldrsw   x2, [x8, #0x9fc]                         ; ivar offset TAGFunctionCallTagHandlerAdapter._container (+0x8)
  10014cc94  mov     w3, #1
  10014cc98  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGFunctionCallTagHandlerAdapter setContainer:]
; address 0x10014cc9c  size 12  kind objc
; ======================================================================
  10014cc9c  adrp    x8, #0x100420000
  10014cca0  ldrsw   x3, [x8, #0x9fc]                         ; ivar offset TAGFunctionCallTagHandlerAdapter._container (+0x8)
  10014cca4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGFunctionCallTagHandlerAdapter .cxx_destruct]
; address 0x10014cca8  size 20  kind objc
; ======================================================================
  10014cca8  mov     x1, #0
  10014ccac  adrp    x8, #0x100420000
  10014ccb0  ldrsw   x8, [x8, #0x9fc]                         ; ivar offset TAGFunctionCallTagHandlerAdapter._container (+0x8)
  10014ccb4  add     x0, x0, x8
  10014ccb8  b       _objc_storeStrong
