// unit TAGGtmVersionMacro — 4 functions
//   0x100174c18      44  +[TAGGtmVersionMacro functionId]
//   0x100174c44     176  -[TAGGtmVersionMacro init]
//   0x100174cf4       8  -[TAGGtmVersionMacro isCacheable]
//   0x100174cfc      60  -[TAGGtmVersionMacro evaluate:]

; ======================================================================
; +[TAGGtmVersionMacro functionId]
; address 0x100174c18  size 44  kind objc
; ======================================================================
  100174c18  stp     x29, x30, [sp, #-0x10]!
  100174c1c  mov     x29, sp
  100174c20  stp     x20, x19, [sp, #-0x10]!
  100174c24  adrp    x19, #0x1003c9000
  100174c28  add     x19, x19, #0x3d0                         ; @"_gtmv"
  100174c2c  mov     x0, x19
  100174c30  bl      _objc_retainAutorelease
  100174c34  mov     x0, x19
  100174c38  ldp     x20, x19, [sp], #0x10
  100174c3c  ldp     x29, x30, [sp], #0x10
  100174c40  ret

; ======================================================================
; -[TAGGtmVersionMacro init]
; address 0x100174c44  size 176  kind objc
; ======================================================================
  100174c44  stp     x29, x30, [sp, #-0x10]!
  100174c48  mov     x29, sp
  100174c4c  stp     x20, x19, [sp, #-0x10]!
  100174c50  stp     x22, x21, [sp, #-0x10]!
  100174c54  sub     sp, sp, #0x10
  100174c58  mov     x20, x0
  100174c5c  adrp    x8, #0x10041e000
  100174c60  ldr     x0, [x8, #0x550]                         ; class NSSet
  100174c64  adrp    x8, #0x100418000
  100174c68  nop
  100174c6c  ldr     x1, [x8, #0x360]
  100174c70  bl      _objc_msgSend                            ; [NSSet set]
  100174c74  mov     x29, x29
  100174c78  bl      _objc_retainAutoreleasedReturnValue
  100174c7c  mov     x19, x0
  100174c80  str     x20, [sp]
  100174c84  adrp    x8, #0x10041f000
  100174c88  ldr     x8, [x8, #0x390]
  100174c8c  str     x8, [sp, #8]
  100174c90  adrp    x8, #0x10041d000
  100174c94  nop
  100174c98  ldr     x1, [x8, #0xc10]
  100174c9c  adrp    x2, #0x1003c9000
  100174ca0  add     x2, x2, #0x3d0                           ; @"_gtmv"
  100174ca4  mov     x0, sp
  100174ca8  mov     x3, x19
  100174cac  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_gtmv" requiredKeys:[NSSet set]]
  100174cb0  mov     x20, x0
  100174cb4  mov     x0, x19
  100174cb8  bl      _objc_release
  100174cbc  mov     x0, x20
  100174cc0  sub     sp, x29, #0x20
  100174cc4  ldp     x22, x21, [sp], #0x10
  100174cc8  ldp     x20, x19, [sp], #0x10
  100174ccc  ldp     x29, x30, [sp], #0x10
  100174cd0  ret
  100174cd4  mov     x21, x0
  100174cd8  mov     x0, x20
  100174cdc  b       loc_100174ce8
  100174ce0  mov     x21, x0
  100174ce4  mov     x0, x19
loc_100174ce8:
  100174ce8  bl      _objc_release
  100174cec  mov     x0, x21
  100174cf0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGGtmVersionMacro isCacheable]
; address 0x100174cf4  size 8  kind objc
; ======================================================================
  100174cf4  mov     w0, #1
  100174cf8  ret

; ======================================================================
; -[TAGGtmVersionMacro evaluate:]
; address 0x100174cfc  size 60  kind objc
; ======================================================================
  100174cfc  stp     x29, x30, [sp, #-0x10]!
  100174d00  mov     x29, sp
  100174d04  adrp    x8, #0x10041e000
  100174d08  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100174d0c  adrp    x8, #0x1003b9000
  100174d10  add     x8, x8, #0x780                           ; &d_1003b9780
  100174d14  ldr     x2, [x8]                                 ; [&d_1003b9780] -> @"3.09"
  100174d18  adrp    x8, #0x10041d000
  100174d1c  nop
  100174d20  ldr     x1, [x8, #0xc30]
  100174d24  bl      _objc_msgSend                            ; [TAGTypes objectToValue:@"3.09"]
  100174d28  mov     x29, x29
  100174d2c  bl      _objc_retainAutoreleasedReturnValue
  100174d30  ldp     x29, x30, [sp], #0x10
  100174d34  b       _objc_autoreleaseReturnValue
