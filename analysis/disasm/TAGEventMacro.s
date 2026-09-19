// unit TAGEventMacro — 6 functions
//   0x1001749ec      44  +[TAGEventMacro functionId]
//   0x100174a18     228  -[TAGEventMacro initWithRuntime:]
//   0x100174afc       8  -[TAGEventMacro isCacheable]
//   0x100174b04     228  -[TAGEventMacro evaluate:]
//   0x100174be8      32  -[TAGEventMacro runtime]
//   0x100174c08      16  -[TAGEventMacro .cxx_destruct]

; ======================================================================
; +[TAGEventMacro functionId]
; address 0x1001749ec  size 44  kind objc
; ======================================================================
  1001749ec  stp     x29, x30, [sp, #-0x10]!
  1001749f0  mov     x29, sp
  1001749f4  stp     x20, x19, [sp, #-0x10]!
  1001749f8  adrp    x19, #0x1003c9000
  1001749fc  add     x19, x19, #0x3b0                         ; @"_e"
  100174a00  mov     x0, x19
  100174a04  bl      _objc_retainAutorelease
  100174a08  mov     x0, x19
  100174a0c  ldp     x20, x19, [sp], #0x10
  100174a10  ldp     x29, x30, [sp], #0x10
  100174a14  ret

; ======================================================================
; -[TAGEventMacro initWithRuntime:]
; address 0x100174a18  size 228  kind objc
; ======================================================================
  100174a18  stp     x29, x30, [sp, #-0x10]!
  100174a1c  mov     x29, sp
  100174a20  stp     x20, x19, [sp, #-0x10]!
  100174a24  stp     x22, x21, [sp, #-0x10]!
  100174a28  sub     sp, sp, #0x10
  100174a2c  mov     x20, x0
  100174a30  mov     x0, x2
  100174a34  bl      _objc_retain
  100174a38  mov     x19, x0
  100174a3c  adrp    x8, #0x10041e000
  100174a40  ldr     x0, [x8, #0x550]                         ; class NSSet
  100174a44  adrp    x8, #0x100418000
  100174a48  nop
  100174a4c  ldr     x1, [x8, #0x360]
  100174a50  bl      _objc_msgSend                            ; [NSSet set]
  100174a54  mov     x29, x29
  100174a58  bl      _objc_retainAutoreleasedReturnValue
  100174a5c  mov     x21, x0
  100174a60  str     x20, [sp]
  100174a64  adrp    x8, #0x10041f000
  100174a68  ldr     x8, [x8, #0x388]
  100174a6c  str     x8, [sp, #8]
  100174a70  adrp    x8, #0x10041d000
  100174a74  nop
  100174a78  ldr     x1, [x8, #0xc10]
  100174a7c  adrp    x2, #0x1003c9000
  100174a80  add     x2, x2, #0x3b0                           ; @"_e"
  100174a84  mov     x0, sp
  100174a88  mov     x3, x21
  100174a8c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_e" requiredKeys:[NSSet set]]
  100174a90  mov     x20, x0
  100174a94  mov     x0, x21
  100174a98  bl      _objc_release
  100174a9c  cbz     x20, loc_100174ab4                       ; if (self == 0)
  100174aa0  adrp    x8, #0x100420000
  100174aa4  ldrsw   x8, [x8, #0xc24]                         ; ivar offset TAGEventMacro._runtime (+0x8)
  100174aa8  add     x0, x20, x8
  100174aac  mov     x1, x19
  100174ab0  bl      _objc_storeWeak                          ; objc_storeWeak(x0, arg1)
loc_100174ab4:
  100174ab4  mov     x0, x19
  100174ab8  bl      _objc_release
  100174abc  mov     x0, x20
  100174ac0  sub     sp, x29, #0x20
  100174ac4  ldp     x22, x21, [sp], #0x10
  100174ac8  ldp     x20, x19, [sp], #0x10
  100174acc  ldp     x29, x30, [sp], #0x10
  100174ad0  ret
  100174ad4  mov     x22, x0
  100174ad8  mov     x0, x20
  100174adc  b       loc_100174ae8
  100174ae0  mov     x22, x0
  100174ae4  mov     x0, x21
loc_100174ae8:
  100174ae8  bl      _objc_release
  100174aec  mov     x0, x19
  100174af0  bl      _objc_release
  100174af4  mov     x0, x22
  100174af8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGEventMacro isCacheable]
; address 0x100174afc  size 8  kind objc
; ======================================================================
  100174afc  mov     w0, #0
  100174b00  ret

; ======================================================================
; -[TAGEventMacro evaluate:]
; address 0x100174b04  size 228  kind objc
; ======================================================================
  100174b04  stp     x29, x30, [sp, #-0x10]!
  100174b08  mov     x29, sp
  100174b0c  stp     x20, x19, [sp, #-0x10]!
  100174b10  stp     x22, x21, [sp, #-0x10]!
  100174b14  adrp    x8, #0x10041d000
  100174b18  nop
  100174b1c  ldr     x1, [x8, #0xc60]
  100174b20  bl      _objc_msgSend                            ; [self runtime]
  100174b24  mov     x29, x29
  100174b28  bl      _objc_retainAutoreleasedReturnValue
  100174b2c  mov     x20, x0
  100174b30  adrp    x8, #0x10041d000
  100174b34  nop
  100174b38  ldr     x1, [x8, #0xc68]
  100174b3c  bl      _objc_msgSend                            ; [[self runtime] currentEventName]
  100174b40  mov     x29, x29
  100174b44  bl      _objc_retainAutoreleasedReturnValue
  100174b48  mov     x19, x0
  100174b4c  mov     x0, x20
  100174b50  bl      _objc_release
  100174b54  adrp    x8, #0x10041e000
  100174b58  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100174b5c  cbz     x19, loc_100174b7c                       ; if ([[self runtime] currentEventName] == 0)
  100174b60  adrp    x8, #0x10041d000
  100174b64  nop
  100174b68  ldr     x1, [x8, #0xc30]
  100174b6c  mov     x2, x19
  100174b70  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[self runtime] currentEventName]]
  100174b74  mov     x29, x29
  100174b78  b       loc_100174b90
loc_100174b7c:
  100174b7c  adrp    x8, #0x10041c000
  100174b80  nop
  100174b84  ldr     x1, [x8, #0xa98]
  100174b88  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100174b8c  mov     x29, x29
loc_100174b90:
  100174b90  bl      _objc_retainAutoreleasedReturnValue
  100174b94  mov     x20, x0
  100174b98  mov     x0, x19
  100174b9c  bl      _objc_release
  100174ba0  mov     x0, x20
  100174ba4  bl      _objc_autorelease
  100174ba8  mov     x0, x20
  100174bac  ldp     x22, x21, [sp], #0x10
  100174bb0  ldp     x20, x19, [sp], #0x10
  100174bb4  ldp     x29, x30, [sp], #0x10
  100174bb8  ret
  100174bbc  mov     x21, x0
  100174bc0  b       loc_100174be0
  100174bc4  mov     x21, x0
  100174bc8  mov     x0, x20
  100174bcc  b       loc_100174bdc
  100174bd0  b       loc_100174bd4
loc_100174bd4:
  100174bd4  mov     x21, x0
  100174bd8  mov     x0, x19
loc_100174bdc:
  100174bdc  bl      _objc_release
loc_100174be0:
  100174be0  mov     x0, x21
  100174be4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGEventMacro runtime]
; address 0x100174be8  size 32  kind objc
; ======================================================================
  100174be8  stp     x29, x30, [sp, #-0x10]!
  100174bec  mov     x29, sp
  100174bf0  adrp    x8, #0x100420000
  100174bf4  ldrsw   x8, [x8, #0xc24]                         ; ivar offset TAGEventMacro._runtime (+0x8)
  100174bf8  add     x0, x0, x8
  100174bfc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100174c00  ldp     x29, x30, [sp], #0x10
  100174c04  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGEventMacro .cxx_destruct]
; address 0x100174c08  size 16  kind objc
; ======================================================================
  100174c08  adrp    x8, #0x100420000
  100174c0c  ldrsw   x8, [x8, #0xc24]                         ; ivar offset TAGEventMacro._runtime (+0x8)
  100174c10  add     x0, x0, x8
  100174c14  b       _objc_destroyWeak
