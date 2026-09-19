// unit TAGFunctionCallMacroHandlerAdapter — 5 functions
//   0x10014ccbc     164  -[TAGFunctionCallMacroHandlerAdapter initWithContainer:]
//   0x10014cd60     268  -[TAGFunctionCallMacroHandlerAdapter evaluate:parameters:]
//   0x10014ce6c      16  -[TAGFunctionCallMacroHandlerAdapter container]
//   0x10014ce7c      12  -[TAGFunctionCallMacroHandlerAdapter setContainer:]
//   0x10014ce88      20  -[TAGFunctionCallMacroHandlerAdapter .cxx_destruct]

; ======================================================================
; -[TAGFunctionCallMacroHandlerAdapter initWithContainer:]
; address 0x10014ccbc  size 164  kind objc
; ======================================================================
  10014ccbc  stp     x29, x30, [sp, #-0x10]!
  10014ccc0  mov     x29, sp
  10014ccc4  stp     x20, x19, [sp, #-0x10]!
  10014ccc8  stp     x22, x21, [sp, #-0x10]!
  10014cccc  sub     sp, sp, #0x10
  10014ccd0  mov     x20, x0
  10014ccd4  mov     x0, x2
  10014ccd8  bl      _objc_retain
  10014ccdc  mov     x19, x0
  10014cce0  str     x20, [sp]
  10014cce4  adrp    x8, #0x10041f000
  10014cce8  ldr     x8, [x8, #0x200]
  10014ccec  str     x8, [sp, #8]
  10014ccf0  adrp    x8, #0x100416000
  10014ccf4  nop
  10014ccf8  ldr     x1, [x8, #0xab8]
  10014ccfc  mov     x0, sp
  10014cd00  bl      _objc_msgSendSuper2                      ; [super init]
  10014cd04  mov     x20, x0
  10014cd08  cbz     x20, loc_10014cd2c                       ; if (self == 0)
  10014cd0c  adrp    x8, #0x100420000
  10014cd10  ldrsw   x21, [x8, #0xa00]                        ; ivar offset TAGFunctionCallMacroHandlerAdapter._container (+0x8)
  10014cd14  mov     x0, x19
  10014cd18  bl      _objc_retain
  10014cd1c  ldr     x8, [x20, x21]                           ; x8 = self->_container
  10014cd20  str     x0, [x20, x21]                           ; self->_container = arg1
  10014cd24  mov     x0, x8
  10014cd28  bl      _objc_release
loc_10014cd2c:
  10014cd2c  mov     x0, x19
  10014cd30  bl      _objc_release
  10014cd34  mov     x0, x20
  10014cd38  sub     sp, x29, #0x20
  10014cd3c  ldp     x22, x21, [sp], #0x10
  10014cd40  ldp     x20, x19, [sp], #0x10
  10014cd44  ldp     x29, x30, [sp], #0x10
  10014cd48  ret
  10014cd4c  mov     x20, x0
  10014cd50  mov     x0, x19
  10014cd54  bl      _objc_release
  10014cd58  mov     x0, x20
  10014cd5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallMacroHandlerAdapter evaluate:parameters:]
; address 0x10014cd60  size 268  kind objc
; ======================================================================
  10014cd60  stp     x29, x30, [sp, #-0x10]!
  10014cd64  mov     x29, sp
  10014cd68  stp     x20, x19, [sp, #-0x10]!
  10014cd6c  stp     x22, x21, [sp, #-0x10]!
  10014cd70  stp     x24, x23, [sp, #-0x10]!
  10014cd74  mov     x20, x3
  10014cd78  mov     x21, x0
  10014cd7c  mov     x0, x2
  10014cd80  bl      _objc_retain
  10014cd84  mov     x19, x0
  10014cd88  mov     x0, x20
  10014cd8c  bl      _objc_retain
  10014cd90  mov     x20, x0
  10014cd94  adrp    x8, #0x10041c000
  10014cd98  nop
  10014cd9c  ldr     x1, [x8, #0xde0]
  10014cda0  mov     x0, x21
  10014cda4  bl      _objc_msgSend                            ; [self container]
  10014cda8  mov     x29, x29
  10014cdac  bl      _objc_retainAutoreleasedReturnValue
  10014cdb0  mov     x22, x0
  10014cdb4  adrp    x8, #0x10041c000
  10014cdb8  nop
  10014cdbc  ldr     x1, [x8, #0xe00]
  10014cdc0  mov     x2, x19
  10014cdc4  bl      _objc_msgSend                            ; [[self container] functionCallMacroHandlerForMacro:arg1]
  10014cdc8  mov     x29, x29
  10014cdcc  bl      _objc_retainAutoreleasedReturnValue
  10014cdd0  mov     x21, x0
  10014cdd4  mov     x0, x22
  10014cdd8  bl      _objc_release
  10014cddc  adrp    x8, #0x10041c000
  10014cde0  nop
  10014cde4  ldr     x1, [x8, #0xe08]
  10014cde8  mov     x0, x21
  10014cdec  mov     x2, x19
  10014cdf0  mov     x3, x20
  10014cdf4  bl      _objc_msgSend                            ; [[[self container] functionCallMacroHandlerForMacro:arg1] valueForMacro:arg1 parameters:arg2]
  10014cdf8  mov     x29, x29
  10014cdfc  bl      _objc_retainAutoreleasedReturnValue
  10014ce00  mov     x22, x0
  10014ce04  mov     x0, x21
  10014ce08  bl      _objc_release
  10014ce0c  mov     x0, x20
  10014ce10  bl      _objc_release
  10014ce14  mov     x0, x19
  10014ce18  bl      _objc_release
  10014ce1c  mov     x0, x22
  10014ce20  ldp     x24, x23, [sp], #0x10
  10014ce24  ldp     x22, x21, [sp], #0x10
  10014ce28  ldp     x20, x19, [sp], #0x10
  10014ce2c  ldp     x29, x30, [sp], #0x10
  10014ce30  b       _objc_autoreleaseReturnValue
  10014ce34  mov     x23, x0
  10014ce38  b       loc_10014ce54
  10014ce3c  mov     x23, x0
  10014ce40  mov     x0, x22
  10014ce44  b       loc_10014ce50
  10014ce48  mov     x23, x0
  10014ce4c  mov     x0, x21
loc_10014ce50:
  10014ce50  bl      _objc_release
loc_10014ce54:
  10014ce54  mov     x0, x20
  10014ce58  bl      _objc_release
  10014ce5c  mov     x0, x19
  10014ce60  bl      _objc_release
  10014ce64  mov     x0, x23
  10014ce68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallMacroHandlerAdapter container]
; address 0x10014ce6c  size 16  kind objc
; ======================================================================
  10014ce6c  adrp    x8, #0x100420000
  10014ce70  ldrsw   x2, [x8, #0xa00]                         ; ivar offset TAGFunctionCallMacroHandlerAdapter._container (+0x8)
  10014ce74  mov     w3, #1
  10014ce78  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGFunctionCallMacroHandlerAdapter setContainer:]
; address 0x10014ce7c  size 12  kind objc
; ======================================================================
  10014ce7c  adrp    x8, #0x100420000
  10014ce80  ldrsw   x3, [x8, #0xa00]                         ; ivar offset TAGFunctionCallMacroHandlerAdapter._container (+0x8)
  10014ce84  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGFunctionCallMacroHandlerAdapter .cxx_destruct]
; address 0x10014ce88  size 20  kind objc
; ======================================================================
  10014ce88  mov     x1, #0
  10014ce8c  adrp    x8, #0x100420000
  10014ce90  ldrsw   x8, [x8, #0xa00]                         ; ivar offset TAGFunctionCallMacroHandlerAdapter._container (+0x8)
  10014ce94  add     x0, x0, x8
  10014ce98  b       _objc_storeStrong
