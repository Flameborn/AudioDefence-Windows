// unit TAGContainerVersionMacro — 6 functions
//   0x1001739d4      44  +[TAGContainerVersionMacro functionId]
//   0x100173a00     240  -[TAGContainerVersionMacro initWithVersion:]
//   0x100173af0       8  -[TAGContainerVersionMacro isCacheable]
//   0x100173af8     136  -[TAGContainerVersionMacro evaluate:]
//   0x100173b80      16  -[TAGContainerVersionMacro version]
//   0x100173b90      20  -[TAGContainerVersionMacro .cxx_destruct]

; ======================================================================
; +[TAGContainerVersionMacro functionId]
; address 0x1001739d4  size 44  kind objc
; ======================================================================
  1001739d4  stp     x29, x30, [sp, #-0x10]!
  1001739d8  mov     x29, sp
  1001739dc  stp     x20, x19, [sp, #-0x10]!
  1001739e0  adrp    x19, #0x1003c9000
  1001739e4  add     x19, x19, #0x1b0                         ; @"_ctv"
  1001739e8  mov     x0, x19
  1001739ec  bl      _objc_retainAutorelease
  1001739f0  mov     x0, x19
  1001739f4  ldp     x20, x19, [sp], #0x10
  1001739f8  ldp     x29, x30, [sp], #0x10
  1001739fc  ret

; ======================================================================
; -[TAGContainerVersionMacro initWithVersion:]
; address 0x100173a00  size 240  kind objc
; ======================================================================
  100173a00  stp     x29, x30, [sp, #-0x10]!
  100173a04  mov     x29, sp
  100173a08  stp     x20, x19, [sp, #-0x10]!
  100173a0c  stp     x22, x21, [sp, #-0x10]!
  100173a10  sub     sp, sp, #0x10
  100173a14  mov     x20, x0
  100173a18  mov     x0, x2
  100173a1c  bl      _objc_retain
  100173a20  mov     x19, x0
  100173a24  adrp    x8, #0x10041e000
  100173a28  ldr     x0, [x8, #0x550]                         ; class NSSet
  100173a2c  adrp    x8, #0x100418000
  100173a30  nop
  100173a34  ldr     x1, [x8, #0x360]
  100173a38  bl      _objc_msgSend                            ; [NSSet set]
  100173a3c  mov     x29, x29
  100173a40  bl      _objc_retainAutoreleasedReturnValue
  100173a44  mov     x21, x0
  100173a48  str     x20, [sp]
  100173a4c  adrp    x8, #0x10041f000
  100173a50  ldr     x8, [x8, #0x368]
  100173a54  str     x8, [sp, #8]
  100173a58  adrp    x8, #0x10041d000
  100173a5c  nop
  100173a60  ldr     x1, [x8, #0xc10]
  100173a64  adrp    x2, #0x1003c9000
  100173a68  add     x2, x2, #0x1b0                           ; @"_ctv"
  100173a6c  mov     x0, sp
  100173a70  mov     x3, x21
  100173a74  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_ctv" requiredKeys:[NSSet set]]
  100173a78  mov     x20, x0
  100173a7c  mov     x0, x21
  100173a80  bl      _objc_release
  100173a84  cbz     x20, loc_100173aa8                       ; if (self == 0)
  100173a88  adrp    x8, #0x100420000
  100173a8c  ldrsw   x21, [x8, #0xc1c]                        ; ivar offset TAGContainerVersionMacro._version (+0x8)
  100173a90  mov     x0, x19
  100173a94  bl      _objc_retain
  100173a98  ldr     x8, [x20, x21]                           ; x8 = self->_version
  100173a9c  str     x0, [x20, x21]                           ; self->_version = arg1
  100173aa0  mov     x0, x8
  100173aa4  bl      _objc_release
loc_100173aa8:
  100173aa8  mov     x0, x19
  100173aac  bl      _objc_release
  100173ab0  mov     x0, x20
  100173ab4  sub     sp, x29, #0x20
  100173ab8  ldp     x22, x21, [sp], #0x10
  100173abc  ldp     x20, x19, [sp], #0x10
  100173ac0  ldp     x29, x30, [sp], #0x10
  100173ac4  ret
  100173ac8  mov     x22, x0
  100173acc  mov     x0, x20
  100173ad0  b       loc_100173adc
  100173ad4  mov     x22, x0
  100173ad8  mov     x0, x21
loc_100173adc:
  100173adc  bl      _objc_release
  100173ae0  mov     x0, x19
  100173ae4  bl      _objc_release
  100173ae8  mov     x0, x22
  100173aec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainerVersionMacro isCacheable]
; address 0x100173af0  size 8  kind objc
; ======================================================================
  100173af0  mov     w0, #1
  100173af4  ret

; ======================================================================
; -[TAGContainerVersionMacro evaluate:]
; address 0x100173af8  size 136  kind objc
; ======================================================================
  100173af8  stp     x29, x30, [sp, #-0x10]!
  100173afc  mov     x29, sp
  100173b00  stp     x20, x19, [sp, #-0x10]!
  100173b04  adrp    x8, #0x10041e000
  100173b08  ldr     x20, [x8, #0xb58]                        ; class TAGTypes
  100173b0c  adrp    x8, #0x10041d000
  100173b10  nop
  100173b14  ldr     x1, [x8, #0xc08]
  100173b18  bl      _objc_msgSend                            ; [self version]
  100173b1c  mov     x29, x29
  100173b20  bl      _objc_retainAutoreleasedReturnValue
  100173b24  mov     x19, x0
  100173b28  adrp    x8, #0x10041d000
  100173b2c  nop
  100173b30  ldr     x1, [x8, #0xc30]
  100173b34  mov     x0, x20
  100173b38  mov     x2, x19
  100173b3c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[self version]]
  100173b40  mov     x29, x29
  100173b44  bl      _objc_retainAutoreleasedReturnValue
  100173b48  mov     x20, x0
  100173b4c  mov     x0, x19
  100173b50  bl      _objc_release
  100173b54  mov     x0, x20
  100173b58  ldp     x20, x19, [sp], #0x10
  100173b5c  ldp     x29, x30, [sp], #0x10
  100173b60  b       _objc_autoreleaseReturnValue
  100173b64  mov     x20, x0
  100173b68  b       loc_100173b78
  100173b6c  mov     x20, x0
  100173b70  mov     x0, x19
  100173b74  bl      _objc_release
loc_100173b78:
  100173b78  mov     x0, x20
  100173b7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainerVersionMacro version]
; address 0x100173b80  size 16  kind objc
; ======================================================================
  100173b80  adrp    x8, #0x100420000
  100173b84  ldrsw   x2, [x8, #0xc1c]                         ; ivar offset TAGContainerVersionMacro._version (+0x8)
  100173b88  mov     w3, #1
  100173b8c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainerVersionMacro .cxx_destruct]
; address 0x100173b90  size 20  kind objc
; ======================================================================
  100173b90  mov     x1, #0
  100173b94  adrp    x8, #0x100420000
  100173b98  ldrsw   x8, [x8, #0xc1c]                         ; ivar offset TAGContainerVersionMacro._version (+0x8)
  100173b9c  add     x0, x0, x8
  100173ba0  b       _objc_storeStrong
