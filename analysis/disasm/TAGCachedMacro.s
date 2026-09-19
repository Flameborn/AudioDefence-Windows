// unit TAGCachedMacro — 6 functions
//   0x100167e84     228  -[TAGCachedMacro initWithValueAndStatic:pushAfterEvaluate:]
//   0x100167f68      16  -[TAGCachedMacro valueAndStatic]
//   0x100167f78      56  -[TAGCachedMacro setValueAndStatic:]
//   0x100167fb0      16  -[TAGCachedMacro pushAfterEvaluate]
//   0x100167fc0      56  -[TAGCachedMacro setPushAfterEvaluate:]
//   0x100167ff8      64  -[TAGCachedMacro .cxx_destruct]

; ======================================================================
; -[TAGCachedMacro initWithValueAndStatic:pushAfterEvaluate:]
; address 0x100167e84  size 228  kind objc
; ======================================================================
  100167e84  stp     x29, x30, [sp, #-0x10]!
  100167e88  mov     x29, sp
  100167e8c  stp     x20, x19, [sp, #-0x10]!
  100167e90  stp     x22, x21, [sp, #-0x10]!
  100167e94  sub     sp, sp, #0x10
  100167e98  mov     x20, x3
  100167e9c  mov     x21, x0
  100167ea0  mov     x0, x2
  100167ea4  bl      _objc_retain
  100167ea8  mov     x19, x0
  100167eac  mov     x0, x20
  100167eb0  bl      _objc_retain
  100167eb4  mov     x20, x0
  100167eb8  str     x21, [sp]
  100167ebc  adrp    x8, #0x10041f000
  100167ec0  ldr     x8, [x8, #0x308]
  100167ec4  str     x8, [sp, #8]
  100167ec8  adrp    x8, #0x100416000
  100167ecc  nop
  100167ed0  ldr     x1, [x8, #0xab8]
  100167ed4  mov     x0, sp
  100167ed8  bl      _objc_msgSendSuper2                      ; [super init]
  100167edc  mov     x21, x0
  100167ee0  cbz     x21, loc_100167f24                       ; if (self == 0)
  100167ee4  adrp    x8, #0x100420000
  100167ee8  ldrsw   x22, [x8, #0xbd4]                        ; ivar offset TAGCachedMacro._valueAndStatic (+0x8)
  100167eec  mov     x0, x19
  100167ef0  bl      _objc_retain
  100167ef4  ldr     x8, [x21, x22]                           ; x8 = self->_valueAndStatic
  100167ef8  str     x0, [x21, x22]                           ; self->_valueAndStatic = arg1
  100167efc  mov     x0, x8
  100167f00  bl      _objc_release
  100167f04  adrp    x8, #0x100420000
  100167f08  ldrsw   x22, [x8, #0xbd8]                        ; ivar offset TAGCachedMacro._pushAfterEvaluate (+0x10)
  100167f0c  mov     x0, x20
  100167f10  bl      _objc_retain
  100167f14  ldr     x8, [x21, x22]                           ; x8 = self->_pushAfterEvaluate
  100167f18  str     x0, [x21, x22]                           ; self->_pushAfterEvaluate = arg2
  100167f1c  mov     x0, x8
  100167f20  bl      _objc_release
loc_100167f24:
  100167f24  mov     x0, x20
  100167f28  bl      _objc_release
  100167f2c  mov     x0, x19
  100167f30  bl      _objc_release
  100167f34  mov     x0, x21
  100167f38  sub     sp, x29, #0x20
  100167f3c  ldp     x22, x21, [sp], #0x10
  100167f40  ldp     x20, x19, [sp], #0x10
  100167f44  ldp     x29, x30, [sp], #0x10
  100167f48  ret
  100167f4c  mov     x21, x0
  100167f50  mov     x0, x20
  100167f54  bl      _objc_release
  100167f58  mov     x0, x19
  100167f5c  bl      _objc_release
  100167f60  mov     x0, x21
  100167f64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGCachedMacro valueAndStatic]
; address 0x100167f68  size 16  kind objc
; ======================================================================
  100167f68  adrp    x8, #0x100420000
  100167f6c  ldrsw   x8, [x8, #0xbd4]                         ; ivar offset TAGCachedMacro._valueAndStatic (+0x8)
  100167f70  ldr     x0, [x0, x8]                             ; x0 = self->_valueAndStatic
  100167f74  ret

; ======================================================================
; -[TAGCachedMacro setValueAndStatic:]
; address 0x100167f78  size 56  kind objc
; ======================================================================
  100167f78  stp     x29, x30, [sp, #-0x10]!
  100167f7c  mov     x29, sp
  100167f80  stp     x20, x19, [sp, #-0x10]!
  100167f84  mov     x19, x0
  100167f88  adrp    x8, #0x100420000
  100167f8c  ldrsw   x20, [x8, #0xbd4]                        ; ivar offset TAGCachedMacro._valueAndStatic (+0x8)
  100167f90  mov     x0, x2
  100167f94  bl      _objc_retain
  100167f98  ldr     x8, [x19, x20]                           ; x8 = self->_valueAndStatic
  100167f9c  str     x0, [x19, x20]                           ; self->_valueAndStatic = arg1
  100167fa0  mov     x0, x8
  100167fa4  ldp     x20, x19, [sp], #0x10
  100167fa8  ldp     x29, x30, [sp], #0x10
  100167fac  b       _objc_release

; ======================================================================
; -[TAGCachedMacro pushAfterEvaluate]
; address 0x100167fb0  size 16  kind objc
; ======================================================================
  100167fb0  adrp    x8, #0x100420000
  100167fb4  ldrsw   x8, [x8, #0xbd8]                         ; ivar offset TAGCachedMacro._pushAfterEvaluate (+0x10)
  100167fb8  ldr     x0, [x0, x8]                             ; x0 = self->_pushAfterEvaluate
  100167fbc  ret

; ======================================================================
; -[TAGCachedMacro setPushAfterEvaluate:]
; address 0x100167fc0  size 56  kind objc
; ======================================================================
  100167fc0  stp     x29, x30, [sp, #-0x10]!
  100167fc4  mov     x29, sp
  100167fc8  stp     x20, x19, [sp, #-0x10]!
  100167fcc  mov     x19, x0
  100167fd0  adrp    x8, #0x100420000
  100167fd4  ldrsw   x20, [x8, #0xbd8]                        ; ivar offset TAGCachedMacro._pushAfterEvaluate (+0x10)
  100167fd8  mov     x0, x2
  100167fdc  bl      _objc_retain
  100167fe0  ldr     x8, [x19, x20]                           ; x8 = self->_pushAfterEvaluate
  100167fe4  str     x0, [x19, x20]                           ; self->_pushAfterEvaluate = arg1
  100167fe8  mov     x0, x8
  100167fec  ldp     x20, x19, [sp], #0x10
  100167ff0  ldp     x29, x30, [sp], #0x10
  100167ff4  b       _objc_release

; ======================================================================
; -[TAGCachedMacro .cxx_destruct]
; address 0x100167ff8  size 64  kind objc
; ======================================================================
  100167ff8  stp     x29, x30, [sp, #-0x10]!
  100167ffc  mov     x29, sp
  100168000  stp     x20, x19, [sp, #-0x10]!
  100168004  mov     x19, x0
  100168008  adrp    x8, #0x100420000
  10016800c  ldrsw   x8, [x8, #0xbd8]                         ; ivar offset TAGCachedMacro._pushAfterEvaluate (+0x10)
  100168010  add     x0, x19, x8
  100168014  mov     x1, #0
  100168018  bl      _objc_storeStrong
  10016801c  mov     x1, #0
  100168020  adrp    x8, #0x100420000
  100168024  ldrsw   x8, [x8, #0xbd4]                         ; ivar offset TAGCachedMacro._valueAndStatic (+0x8)
  100168028  add     x0, x19, x8
  10016802c  ldp     x20, x19, [sp], #0x10
  100168030  ldp     x29, x30, [sp], #0x10
  100168034  b       _objc_storeStrong
