// unit TAGObjectAndStatic — 4 functions
//   0x100162704     180  -[TAGObjectAndStatic initWithObject:isStatic:]
//   0x1001627b8      16  -[TAGObjectAndStatic isStatic]
//   0x1001627c8      16  -[TAGObjectAndStatic object]
//   0x1001627d8      20  -[TAGObjectAndStatic .cxx_destruct]

; ======================================================================
; -[TAGObjectAndStatic initWithObject:isStatic:]
; address 0x100162704  size 180  kind objc
; ======================================================================
  100162704  stp     x29, x30, [sp, #-0x10]!
  100162708  mov     x29, sp
  10016270c  stp     x20, x19, [sp, #-0x10]!
  100162710  stp     x22, x21, [sp, #-0x10]!
  100162714  sub     sp, sp, #0x10
  100162718  mov     x20, x3
  10016271c  mov     x21, x0
  100162720  mov     x0, x2
  100162724  bl      _objc_retain
  100162728  mov     x19, x0
  10016272c  str     x21, [sp]
  100162730  adrp    x8, #0x10041f000
  100162734  ldr     x8, [x8, #0x2b8]
  100162738  str     x8, [sp, #8]
  10016273c  adrp    x8, #0x100416000
  100162740  nop
  100162744  ldr     x1, [x8, #0xab8]
  100162748  mov     x0, sp
  10016274c  bl      _objc_msgSendSuper2                      ; [super init]
  100162750  mov     x21, x0
  100162754  cbz     x21, loc_100162784                       ; if (self == 0)
  100162758  adrp    x8, #0x100420000
  10016275c  ldrsw   x22, [x8, #0xb6c]                        ; ivar offset TAGObjectAndStatic._object (+0x10)
  100162760  mov     x0, x19
  100162764  bl      _objc_retain
  100162768  ldr     x8, [x21, x22]                           ; x8 = self->_object
  10016276c  str     x0, [x21, x22]                           ; self->_object = arg1
  100162770  mov     x0, x8
  100162774  bl      _objc_release
  100162778  adrp    x8, #0x100420000
  10016277c  ldrsw   x8, [x8, #0xb70]                         ; ivar offset TAGObjectAndStatic._isStatic (+0x8)
  100162780  strb    w20, [x21, x8]                           ; self->_isStatic = arg2
loc_100162784:
  100162784  mov     x0, x19
  100162788  bl      _objc_release
  10016278c  mov     x0, x21
  100162790  sub     sp, x29, #0x20
  100162794  ldp     x22, x21, [sp], #0x10
  100162798  ldp     x20, x19, [sp], #0x10
  10016279c  ldp     x29, x30, [sp], #0x10
  1001627a0  ret
  1001627a4  mov     x20, x0
  1001627a8  mov     x0, x19
  1001627ac  bl      _objc_release
  1001627b0  mov     x0, x20
  1001627b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGObjectAndStatic isStatic]
; address 0x1001627b8  size 16  kind objc
; ======================================================================
  1001627b8  adrp    x8, #0x100420000
  1001627bc  ldrsw   x8, [x8, #0xb70]                         ; ivar offset TAGObjectAndStatic._isStatic (+0x8)
  1001627c0  ldrb    w0, [x0, x8]                             ; w0 = self->_isStatic
  1001627c4  ret

; ======================================================================
; -[TAGObjectAndStatic object]
; address 0x1001627c8  size 16  kind objc
; ======================================================================
  1001627c8  adrp    x8, #0x100420000
  1001627cc  ldrsw   x8, [x8, #0xb6c]                         ; ivar offset TAGObjectAndStatic._object (+0x10)
  1001627d0  ldr     x0, [x0, x8]                             ; x0 = self->_object
  1001627d4  ret

; ======================================================================
; -[TAGObjectAndStatic .cxx_destruct]
; address 0x1001627d8  size 20  kind objc
; ======================================================================
  1001627d8  mov     x1, #0
  1001627dc  adrp    x8, #0x100420000
  1001627e0  ldrsw   x8, [x8, #0xb6c]                         ; ivar offset TAGObjectAndStatic._object (+0x10)
  1001627e4  add     x0, x0, x8
  1001627e8  b       _objc_storeStrong
