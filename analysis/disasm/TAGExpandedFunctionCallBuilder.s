// unit TAGExpandedFunctionCallBuilder — 8 functions
//   0x100163aa0     180  -[TAGExpandedFunctionCallBuilder init]
//   0x100163b54     184  -[TAGExpandedFunctionCallBuilder addPropertyWithValue:forKey:]
//   0x100163c0c     216  -[TAGExpandedFunctionCallBuilder build]
//   0x100163ce4      16  -[TAGExpandedFunctionCallBuilder propertiesMap]
//   0x100163cf4      56  -[TAGExpandedFunctionCallBuilder setPropertiesMap:]
//   0x100163d2c      16  -[TAGExpandedFunctionCallBuilder pushAfterEvaluate]
//   0x100163d3c      56  -[TAGExpandedFunctionCallBuilder setPushAfterEvaluate:]
//   0x100163d74      64  -[TAGExpandedFunctionCallBuilder .cxx_destruct]

; ======================================================================
; -[TAGExpandedFunctionCallBuilder init]
; address 0x100163aa0  size 180  kind objc
; ======================================================================
  100163aa0  stp     x29, x30, [sp, #-0x10]!
  100163aa4  mov     x29, sp
  100163aa8  stp     x20, x19, [sp, #-0x10]!
  100163aac  stp     x22, x21, [sp, #-0x10]!
  100163ab0  sub     sp, sp, #0x10
  100163ab4  str     x0, [sp]
  100163ab8  adrp    x8, #0x10041f000
  100163abc  ldr     x8, [x8, #0x2e0]
  100163ac0  str     x8, [sp, #8]
  100163ac4  adrp    x8, #0x100416000
  100163ac8  nop
  100163acc  ldr     x20, [x8, #0xab8]
  100163ad0  mov     x21, #0
  100163ad4  mov     x0, sp
  100163ad8  mov     x1, x20
  100163adc  bl      _objc_msgSendSuper2                      ; [super init]
  100163ae0  mov     x19, x0
  100163ae4  cbz     x19, loc_100163b28                       ; if (self == 0)
  100163ae8  mov     x21, x19
  100163aec  adrp    x8, #0x10041d000
  100163af0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100163af4  adrp    x8, #0x100416000
  100163af8  nop
  100163afc  ldr     x1, [x8, #0xac8]
  100163b00  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100163b04  mov     x21, x19
  100163b08  mov     x1, x20
  100163b0c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100163b10  adrp    x8, #0x100420000
  100163b14  ldrsw   x9, [x8, #0xb7c]                         ; ivar offset TAGExpandedFunctionCallBuilder._propertiesMap (+0x8)
  100163b18  ldr     x8, [x19, x9]                            ; x8 = self->_propertiesMap
  100163b1c  str     x0, [x19, x9]                            ; self->_propertiesMap = [[NSMutableDictionary alloc] init]
  100163b20  mov     x0, x8
  100163b24  bl      _objc_release
loc_100163b28:
  100163b28  mov     x0, x19
  100163b2c  sub     sp, x29, #0x20
  100163b30  ldp     x22, x21, [sp], #0x10
  100163b34  ldp     x20, x19, [sp], #0x10
  100163b38  ldp     x29, x30, [sp], #0x10
  100163b3c  ret
  100163b40  mov     x19, x0
  100163b44  mov     x0, x21
  100163b48  bl      _objc_release
  100163b4c  mov     x0, x19
  100163b50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCallBuilder addPropertyWithValue:forKey:]
; address 0x100163b54  size 184  kind objc
; ======================================================================
  100163b54  stp     x29, x30, [sp, #-0x10]!
  100163b58  mov     x29, sp
  100163b5c  stp     x20, x19, [sp, #-0x10]!
  100163b60  stp     x22, x21, [sp, #-0x10]!
  100163b64  mov     x20, x3
  100163b68  mov     x21, x0
  100163b6c  mov     x0, x2
  100163b70  bl      _objc_retain
  100163b74  mov     x19, x0
  100163b78  mov     x0, x20
  100163b7c  bl      _objc_retain
  100163b80  mov     x20, x0
  100163b84  adrp    x8, #0x10041d000
  100163b88  nop
  100163b8c  ldr     x1, [x8, #0x6a0]
  100163b90  mov     x0, x21
  100163b94  bl      _objc_msgSend                            ; [self propertiesMap]
  100163b98  mov     x29, x29
  100163b9c  bl      _objc_retainAutoreleasedReturnValue
  100163ba0  mov     x21, x0
  100163ba4  adrp    x8, #0x100416000
  100163ba8  nop
  100163bac  ldr     x1, [x8, #0xdc8]
  100163bb0  mov     x2, x19
  100163bb4  mov     x3, x20
  100163bb8  bl      _objc_msgSend                            ; [[self propertiesMap] setObject:arg1 forKey:arg2]
  100163bbc  mov     x0, x21
  100163bc0  bl      _objc_release
  100163bc4  mov     x0, x20
  100163bc8  bl      _objc_release
  100163bcc  mov     x0, x19
  100163bd0  ldp     x22, x21, [sp], #0x10
  100163bd4  ldp     x20, x19, [sp], #0x10
  100163bd8  ldp     x29, x30, [sp], #0x10
  100163bdc  b       _objc_release
  100163be0  mov     x22, x0
  100163be4  b       loc_100163bf4
  100163be8  mov     x22, x0
  100163bec  mov     x0, x21
  100163bf0  bl      _objc_release
loc_100163bf4:
  100163bf4  mov     x0, x20
  100163bf8  bl      _objc_release
  100163bfc  mov     x0, x19
  100163c00  bl      _objc_release
  100163c04  mov     x0, x22
  100163c08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCallBuilder build]
; address 0x100163c0c  size 216  kind objc
; ======================================================================
  100163c0c  stp     x29, x30, [sp, #-0x10]!
  100163c10  mov     x29, sp
  100163c14  stp     x20, x19, [sp, #-0x10]!
  100163c18  stp     x22, x21, [sp, #-0x10]!
  100163c1c  mov     x21, x0
  100163c20  adrp    x8, #0x10041e000
  100163c24  ldr     x0, [x8, #0xb30]                         ; class TAGExpandedFunctionCall
  100163c28  adrp    x8, #0x100416000
  100163c2c  nop
  100163c30  ldr     x1, [x8, #0xac8]
  100163c34  bl      _objc_msgSend                            ; [TAGExpandedFunctionCall alloc]
  100163c38  mov     x20, x0
  100163c3c  adrp    x8, #0x10041d000
  100163c40  nop
  100163c44  ldr     x1, [x8, #0x6a0]
  100163c48  mov     x0, x21
  100163c4c  bl      _objc_msgSend                            ; [self propertiesMap]
  100163c50  mov     x29, x29
  100163c54  bl      _objc_retainAutoreleasedReturnValue
  100163c58  mov     x19, x0
  100163c5c  adrp    x8, #0x10041d000
  100163c60  nop
  100163c64  ldr     x1, [x8, #0x958]
  100163c68  mov     x0, x21
  100163c6c  bl      _objc_msgSend                            ; [self pushAfterEvaluate]
  100163c70  mov     x29, x29
  100163c74  bl      _objc_retainAutoreleasedReturnValue
  100163c78  mov     x21, x0
  100163c7c  adrp    x8, #0x10041d000
  100163c80  nop
  100163c84  ldr     x1, [x8, #0x6a8]
  100163c88  mov     x0, x20
  100163c8c  mov     x2, x19
  100163c90  mov     x3, x21
  100163c94  bl      _objc_msgSend                            ; [[TAGExpandedFunctionCall alloc] initWithPropertiesMap:[self propertiesMap] pushAfterEvaluate:[self pushAfterEvaluate]]
  100163c98  mov     x20, x0
  100163c9c  mov     x0, x21
  100163ca0  bl      _objc_release
  100163ca4  mov     x0, x19
  100163ca8  bl      _objc_release
  100163cac  mov     x0, x20
  100163cb0  ldp     x22, x21, [sp], #0x10
  100163cb4  ldp     x20, x19, [sp], #0x10
  100163cb8  ldp     x29, x30, [sp], #0x10
  100163cbc  b       _objc_autoreleaseReturnValue
  100163cc0  mov     x20, x0
  100163cc4  b       loc_100163cd4
  100163cc8  mov     x20, x0
  100163ccc  mov     x0, x21
  100163cd0  bl      _objc_release
loc_100163cd4:
  100163cd4  mov     x0, x19
  100163cd8  bl      _objc_release
  100163cdc  mov     x0, x20
  100163ce0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedFunctionCallBuilder propertiesMap]
; address 0x100163ce4  size 16  kind objc
; ======================================================================
  100163ce4  adrp    x8, #0x100420000
  100163ce8  ldrsw   x8, [x8, #0xb7c]                         ; ivar offset TAGExpandedFunctionCallBuilder._propertiesMap (+0x8)
  100163cec  ldr     x0, [x0, x8]                             ; x0 = self->_propertiesMap
  100163cf0  ret

; ======================================================================
; -[TAGExpandedFunctionCallBuilder setPropertiesMap:]
; address 0x100163cf4  size 56  kind objc
; ======================================================================
  100163cf4  stp     x29, x30, [sp, #-0x10]!
  100163cf8  mov     x29, sp
  100163cfc  stp     x20, x19, [sp, #-0x10]!
  100163d00  mov     x19, x0
  100163d04  adrp    x8, #0x100420000
  100163d08  ldrsw   x20, [x8, #0xb7c]                        ; ivar offset TAGExpandedFunctionCallBuilder._propertiesMap (+0x8)
  100163d0c  mov     x0, x2
  100163d10  bl      _objc_retain
  100163d14  ldr     x8, [x19, x20]                           ; x8 = self->_propertiesMap
  100163d18  str     x0, [x19, x20]                           ; self->_propertiesMap = arg1
  100163d1c  mov     x0, x8
  100163d20  ldp     x20, x19, [sp], #0x10
  100163d24  ldp     x29, x30, [sp], #0x10
  100163d28  b       _objc_release

; ======================================================================
; -[TAGExpandedFunctionCallBuilder pushAfterEvaluate]
; address 0x100163d2c  size 16  kind objc
; ======================================================================
  100163d2c  adrp    x8, #0x100420000
  100163d30  ldrsw   x8, [x8, #0xb80]                         ; ivar offset TAGExpandedFunctionCallBuilder._pushAfterEvaluate (+0x10)
  100163d34  ldr     x0, [x0, x8]                             ; x0 = self->_pushAfterEvaluate
  100163d38  ret

; ======================================================================
; -[TAGExpandedFunctionCallBuilder setPushAfterEvaluate:]
; address 0x100163d3c  size 56  kind objc
; ======================================================================
  100163d3c  stp     x29, x30, [sp, #-0x10]!
  100163d40  mov     x29, sp
  100163d44  stp     x20, x19, [sp, #-0x10]!
  100163d48  mov     x19, x0
  100163d4c  adrp    x8, #0x100420000
  100163d50  ldrsw   x20, [x8, #0xb80]                        ; ivar offset TAGExpandedFunctionCallBuilder._pushAfterEvaluate (+0x10)
  100163d54  mov     x0, x2
  100163d58  bl      _objc_retain
  100163d5c  ldr     x8, [x19, x20]                           ; x8 = self->_pushAfterEvaluate
  100163d60  str     x0, [x19, x20]                           ; self->_pushAfterEvaluate = arg1
  100163d64  mov     x0, x8
  100163d68  ldp     x20, x19, [sp], #0x10
  100163d6c  ldp     x29, x30, [sp], #0x10
  100163d70  b       _objc_release

; ======================================================================
; -[TAGExpandedFunctionCallBuilder .cxx_destruct]
; address 0x100163d74  size 64  kind objc
; ======================================================================
  100163d74  stp     x29, x30, [sp, #-0x10]!
  100163d78  mov     x29, sp
  100163d7c  stp     x20, x19, [sp, #-0x10]!
  100163d80  mov     x19, x0
  100163d84  adrp    x8, #0x100420000
  100163d88  ldrsw   x8, [x8, #0xb80]                         ; ivar offset TAGExpandedFunctionCallBuilder._pushAfterEvaluate (+0x10)
  100163d8c  add     x0, x19, x8
  100163d90  mov     x1, #0
  100163d94  bl      _objc_storeStrong
  100163d98  mov     x1, #0
  100163d9c  adrp    x8, #0x100420000
  100163da0  ldrsw   x8, [x8, #0xb7c]                         ; ivar offset TAGExpandedFunctionCallBuilder._propertiesMap (+0x8)
  100163da4  add     x0, x19, x8
  100163da8  ldp     x20, x19, [sp], #0x10
  100163dac  ldp     x29, x30, [sp], #0x10
  100163db0  b       _objc_storeStrong
