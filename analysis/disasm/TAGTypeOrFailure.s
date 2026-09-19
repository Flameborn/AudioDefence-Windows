// unit TAGTypeOrFailure — 5 functions
//   0x1001585f8     156  -[TAGTypeOrFailure initWithType:]
//   0x100158694      88  -[TAGTypeOrFailure initWithFailure:]
//   0x1001586ec      16  -[TAGTypeOrFailure type]
//   0x1001586fc      16  -[TAGTypeOrFailure failure]
//   0x10015870c      20  -[TAGTypeOrFailure .cxx_destruct]

; ======================================================================
; -[TAGTypeOrFailure initWithType:]
; address 0x1001585f8  size 156  kind objc
; ======================================================================
  1001585f8  stp     x29, x30, [sp, #-0x10]!
  1001585fc  mov     x29, sp
  100158600  stp     x20, x19, [sp, #-0x10]!
  100158604  stp     x22, x21, [sp, #-0x10]!
  100158608  sub     sp, sp, #0x10
  10015860c  mov     x20, x2
  100158610  mov     x21, x0
  100158614  mov     x0, x20
  100158618  bl      _objc_retain
  10015861c  mov     x19, x0
  100158620  str     x21, [sp]
  100158624  adrp    x8, #0x10041f000
  100158628  ldr     x8, [x8, #0x268]
  10015862c  str     x8, [sp, #8]
  100158630  adrp    x8, #0x100416000
  100158634  nop
  100158638  ldr     x1, [x8, #0xab8]
  10015863c  mov     x0, sp
  100158640  bl      _objc_msgSendSuper2                      ; [super init]
  100158644  mov     x21, x0
  100158648  cbz     x21, loc_100158660                       ; if (self == 0)
  10015864c  adrp    x8, #0x100420000
  100158650  ldrsw   x8, [x8, #0xaec]                         ; ivar offset TAGTypeOrFailure._type (+0x8)
  100158654  add     x0, x21, x8
  100158658  mov     x1, x20
  10015865c  bl      _objc_storeStrong
loc_100158660:
  100158660  mov     x0, x19
  100158664  bl      _objc_release
  100158668  mov     x0, x21
  10015866c  sub     sp, x29, #0x20
  100158670  ldp     x22, x21, [sp], #0x10
  100158674  ldp     x20, x19, [sp], #0x10
  100158678  ldp     x29, x30, [sp], #0x10
  10015867c  ret
  100158680  mov     x20, x0
  100158684  mov     x0, x19
  100158688  bl      _objc_release
  10015868c  mov     x0, x20
  100158690  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGTypeOrFailure initWithFailure:]
; address 0x100158694  size 88  kind objc
; ======================================================================
  100158694  stp     x29, x30, [sp, #-0x10]!
  100158698  mov     x29, sp
  10015869c  stp     x20, x19, [sp, #-0x10]!
  1001586a0  sub     sp, sp, #0x10
  1001586a4  mov     x19, x2
  1001586a8  str     x0, [sp]
  1001586ac  adrp    x8, #0x10041f000
  1001586b0  ldr     x8, [x8, #0x268]
  1001586b4  str     x8, [sp, #8]
  1001586b8  adrp    x8, #0x100416000
  1001586bc  nop
  1001586c0  ldr     x1, [x8, #0xab8]
  1001586c4  mov     x0, sp
  1001586c8  bl      _objc_msgSendSuper2                      ; [super init]
  1001586cc  cbz     x0, loc_1001586dc                        ; if (self == 0)
  1001586d0  adrp    x8, #0x100420000
  1001586d4  ldrsw   x8, [x8, #0xaf0]                         ; ivar offset TAGTypeOrFailure._failure (+0x10)
  1001586d8  str     x19, [x0, x8]                            ; self->_failure = arg1
loc_1001586dc:
  1001586dc  sub     sp, x29, #0x10
  1001586e0  ldp     x20, x19, [sp], #0x10
  1001586e4  ldp     x29, x30, [sp], #0x10
  1001586e8  ret

; ======================================================================
; -[TAGTypeOrFailure type]
; address 0x1001586ec  size 16  kind objc
; ======================================================================
  1001586ec  adrp    x8, #0x100420000
  1001586f0  ldrsw   x8, [x8, #0xaec]                         ; ivar offset TAGTypeOrFailure._type (+0x8)
  1001586f4  ldr     x0, [x0, x8]                             ; x0 = self->_type
  1001586f8  ret

; ======================================================================
; -[TAGTypeOrFailure failure]
; address 0x1001586fc  size 16  kind objc
; ======================================================================
  1001586fc  adrp    x8, #0x100420000
  100158700  ldrsw   x8, [x8, #0xaf0]                         ; ivar offset TAGTypeOrFailure._failure (+0x10)
  100158704  ldr     x0, [x0, x8]                             ; x0 = self->_failure
  100158708  ret

; ======================================================================
; -[TAGTypeOrFailure .cxx_destruct]
; address 0x10015870c  size 20  kind objc
; ======================================================================
  10015870c  mov     x1, #0
  100158710  adrp    x8, #0x100420000
  100158714  ldrsw   x8, [x8, #0xaec]                         ; ivar offset TAGTypeOrFailure._type (+0x8)
  100158718  add     x0, x0, x8
  10015871c  b       _objc_storeStrong
