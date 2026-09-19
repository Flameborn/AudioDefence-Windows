// unit TAGLanguage — 5 functions
//   0x100176ad8      44  +[TAGLanguage functionId]
//   0x100176b04     176  -[TAGLanguage init]
//   0x100176bb4       8  -[TAGLanguage isCacheable]
//   0x100176bbc      24  -[TAGLanguage preferredLanguages]
//   0x100176bd4     312  -[TAGLanguage evaluate:]

; ======================================================================
; +[TAGLanguage functionId]
; address 0x100176ad8  size 44  kind objc
; ======================================================================
  100176ad8  stp     x29, x30, [sp, #-0x10]!
  100176adc  mov     x29, sp
  100176ae0  stp     x20, x19, [sp, #-0x10]!
  100176ae4  adrp    x19, #0x1003c9000
  100176ae8  add     x19, x19, #0x630                         ; @"_l"
  100176aec  mov     x0, x19
  100176af0  bl      _objc_retainAutorelease
  100176af4  mov     x0, x19
  100176af8  ldp     x20, x19, [sp], #0x10
  100176afc  ldp     x29, x30, [sp], #0x10
  100176b00  ret

; ======================================================================
; -[TAGLanguage init]
; address 0x100176b04  size 176  kind objc
; ======================================================================
  100176b04  stp     x29, x30, [sp, #-0x10]!
  100176b08  mov     x29, sp
  100176b0c  stp     x20, x19, [sp, #-0x10]!
  100176b10  stp     x22, x21, [sp, #-0x10]!
  100176b14  sub     sp, sp, #0x10
  100176b18  mov     x20, x0
  100176b1c  adrp    x8, #0x10041e000
  100176b20  ldr     x0, [x8, #0x550]                         ; class NSSet
  100176b24  adrp    x8, #0x100418000
  100176b28  nop
  100176b2c  ldr     x1, [x8, #0x360]
  100176b30  bl      _objc_msgSend                            ; [NSSet set]
  100176b34  mov     x29, x29
  100176b38  bl      _objc_retainAutoreleasedReturnValue
  100176b3c  mov     x19, x0
  100176b40  str     x20, [sp]
  100176b44  adrp    x8, #0x10041f000
  100176b48  ldr     x8, [x8, #0x3a8]
  100176b4c  str     x8, [sp, #8]
  100176b50  adrp    x8, #0x10041d000
  100176b54  nop
  100176b58  ldr     x1, [x8, #0xc10]
  100176b5c  adrp    x2, #0x1003c9000
  100176b60  add     x2, x2, #0x630                           ; @"_l"
  100176b64  mov     x0, sp
  100176b68  mov     x3, x19
  100176b6c  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_l" requiredKeys:[NSSet set]]
  100176b70  mov     x20, x0
  100176b74  mov     x0, x19
  100176b78  bl      _objc_release
  100176b7c  mov     x0, x20
  100176b80  sub     sp, x29, #0x20
  100176b84  ldp     x22, x21, [sp], #0x10
  100176b88  ldp     x20, x19, [sp], #0x10
  100176b8c  ldp     x29, x30, [sp], #0x10
  100176b90  ret
  100176b94  mov     x21, x0
  100176b98  mov     x0, x20
  100176b9c  b       loc_100176ba8
  100176ba0  mov     x21, x0
  100176ba4  mov     x0, x19
loc_100176ba8:
  100176ba8  bl      _objc_release
  100176bac  mov     x0, x21
  100176bb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGLanguage isCacheable]
; address 0x100176bb4  size 8  kind objc
; ======================================================================
  100176bb4  mov     w0, #0
  100176bb8  ret

; ======================================================================
; -[TAGLanguage preferredLanguages]
; address 0x100176bbc  size 24  kind objc
; ======================================================================
  100176bbc  adrp    x8, #0x10041e000
  100176bc0  ldr     x0, [x8, #0x518]                         ; class NSLocale
  100176bc4  adrp    x8, #0x10041b000
  100176bc8  nop
  100176bcc  ldr     x1, [x8, #0xa30]
  100176bd0  b       _objc_msgSend                            ; [NSLocale preferredLanguages]

; ======================================================================
; -[TAGLanguage evaluate:]
; address 0x100176bd4  size 312  kind objc
; ======================================================================
  100176bd4  stp     x29, x30, [sp, #-0x10]!
  100176bd8  mov     x29, sp
  100176bdc  stp     x20, x19, [sp, #-0x10]!
  100176be0  stp     x22, x21, [sp, #-0x10]!
  100176be4  adrp    x8, #0x10041b000
  100176be8  nop
  100176bec  ldr     x1, [x8, #0xa30]
  100176bf0  bl      _objc_msgSend                            ; [self preferredLanguages]
  100176bf4  mov     x29, x29
  100176bf8  bl      _objc_retainAutoreleasedReturnValue
  100176bfc  mov     x19, x0
  100176c00  adrp    x8, #0x100416000
  100176c04  nop
  100176c08  ldr     x1, [x8, #0xe30]
  100176c0c  bl      _objc_msgSend                            ; [[self preferredLanguages] count]
  100176c10  adrp    x8, #0x10041e000
  100176c14  ldr     x21, [x8, #0xb58]                        ; class TAGTypes
  100176c18  cbz     x0, loc_100176c94                        ; if ([[self preferredLanguages] count] == 0)
  100176c1c  adrp    x8, #0x100416000
  100176c20  nop
  100176c24  ldr     x1, [x8, #0xc30]
  100176c28  mov     x2, #0
  100176c2c  mov     x0, x19
  100176c30  bl      _objc_msgSend                            ; [[self preferredLanguages] objectAtIndex:0]
  100176c34  mov     x29, x29
  100176c38  bl      _objc_retainAutoreleasedReturnValue
  100176c3c  mov     x20, x0
  100176c40  adrp    x8, #0x10041b000
  100176c44  nop
  100176c48  ldr     x1, [x8, #0xa58]
  100176c4c  bl      _objc_msgSend                            ; [[[self preferredLanguages] objectAtIndex:0] lowercaseString]
  100176c50  mov     x29, x29
  100176c54  bl      _objc_retainAutoreleasedReturnValue
  100176c58  mov     x22, x0
  100176c5c  adrp    x8, #0x10041d000
  100176c60  nop
  100176c64  ldr     x1, [x8, #0xc30]
  100176c68  mov     x0, x21
  100176c6c  mov     x2, x22
  100176c70  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[[[self preferredLanguages] objectAtIndex:0] lowercaseString]]
  100176c74  mov     x29, x29
  100176c78  bl      _objc_retainAutoreleasedReturnValue
  100176c7c  mov     x21, x0
  100176c80  mov     x0, x22
  100176c84  bl      _objc_release
  100176c88  mov     x0, x20
  100176c8c  bl      _objc_release
  100176c90  b       loc_100176cb4
loc_100176c94:
  100176c94  adrp    x8, #0x10041c000
  100176c98  nop
  100176c9c  ldr     x1, [x8, #0xa98]
  100176ca0  mov     x0, x21
  100176ca4  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100176ca8  mov     x29, x29
  100176cac  bl      _objc_retainAutoreleasedReturnValue
  100176cb0  mov     x21, x0
loc_100176cb4:
  100176cb4  mov     x0, x19
  100176cb8  bl      _objc_release
  100176cbc  mov     x0, x21
  100176cc0  ldp     x22, x21, [sp], #0x10
  100176cc4  ldp     x20, x19, [sp], #0x10
  100176cc8  ldp     x29, x30, [sp], #0x10
  100176ccc  b       _objc_autoreleaseReturnValue
  100176cd0  mov     x21, x0
  100176cd4  b       loc_100176d04
  100176cd8  mov     x21, x0
  100176cdc  b       loc_100176cec
  100176ce0  mov     x21, x0
  100176ce4  mov     x0, x22
  100176ce8  bl      _objc_release
loc_100176cec:
  100176cec  mov     x0, x20
  100176cf0  bl      _objc_release
  100176cf4  b       loc_100176cfc
  100176cf8  mov     x21, x0
loc_100176cfc:
  100176cfc  mov     x0, x19
  100176d00  bl      _objc_release
loc_100176d04:
  100176d04  mov     x0, x21
  100176d08  bl      __Unwind_Resume                          ; Unwind_Resume()
