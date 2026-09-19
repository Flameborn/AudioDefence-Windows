// unit TAGAdvertiserId — 5 functions
//   0x100172a24      44  +[TAGAdvertiserId functionId]
//   0x100172a50     176  -[TAGAdvertiserId init]
//   0x100172b00       8  -[TAGAdvertiserId isCacheable]
//   0x100172b08     192  -[TAGAdvertiserId evaluate:]
//   0x100172bc8      24  -[TAGAdvertiserId rawAdvertiserId]

; ======================================================================
; +[TAGAdvertiserId functionId]
; address 0x100172a24  size 44  kind objc
; ======================================================================
  100172a24  stp     x29, x30, [sp, #-0x10]!
  100172a28  mov     x29, sp
  100172a2c  stp     x20, x19, [sp, #-0x10]!
  100172a30  adrp    x19, #0x1003c9000
  100172a34  add     x19, x19, #0x30                          ; @"_adi"
  100172a38  mov     x0, x19
  100172a3c  bl      _objc_retainAutorelease
  100172a40  mov     x0, x19
  100172a44  ldp     x20, x19, [sp], #0x10
  100172a48  ldp     x29, x30, [sp], #0x10
  100172a4c  ret

; ======================================================================
; -[TAGAdvertiserId init]
; address 0x100172a50  size 176  kind objc
; ======================================================================
  100172a50  stp     x29, x30, [sp, #-0x10]!
  100172a54  mov     x29, sp
  100172a58  stp     x20, x19, [sp, #-0x10]!
  100172a5c  stp     x22, x21, [sp, #-0x10]!
  100172a60  sub     sp, sp, #0x10
  100172a64  mov     x20, x0
  100172a68  adrp    x8, #0x10041e000
  100172a6c  ldr     x0, [x8, #0x550]                         ; class NSSet
  100172a70  adrp    x8, #0x100418000
  100172a74  nop
  100172a78  ldr     x1, [x8, #0x360]
  100172a7c  bl      _objc_msgSend                            ; [NSSet set]
  100172a80  mov     x29, x29
  100172a84  bl      _objc_retainAutoreleasedReturnValue
  100172a88  mov     x19, x0
  100172a8c  str     x20, [sp]
  100172a90  adrp    x8, #0x10041f000
  100172a94  ldr     x8, [x8, #0x328]
  100172a98  str     x8, [sp, #8]
  100172a9c  adrp    x8, #0x10041d000
  100172aa0  nop
  100172aa4  ldr     x1, [x8, #0xc10]
  100172aa8  adrp    x2, #0x1003c9000
  100172aac  add     x2, x2, #0x30                            ; @"_adi"
  100172ab0  mov     x0, sp
  100172ab4  mov     x3, x19
  100172ab8  bl      _objc_msgSendSuper2                      ; [super initWithFunctionId:@"_adi" requiredKeys:[NSSet set]]
  100172abc  mov     x20, x0
  100172ac0  mov     x0, x19
  100172ac4  bl      _objc_release
  100172ac8  mov     x0, x20
  100172acc  sub     sp, x29, #0x20
  100172ad0  ldp     x22, x21, [sp], #0x10
  100172ad4  ldp     x20, x19, [sp], #0x10
  100172ad8  ldp     x29, x30, [sp], #0x10
  100172adc  ret
  100172ae0  mov     x21, x0
  100172ae4  mov     x0, x20
  100172ae8  b       loc_100172af4
  100172aec  mov     x21, x0
  100172af0  mov     x0, x19
loc_100172af4:
  100172af4  bl      _objc_release
  100172af8  mov     x0, x21
  100172afc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAdvertiserId isCacheable]
; address 0x100172b00  size 8  kind objc
; ======================================================================
  100172b00  mov     w0, #1
  100172b04  ret

; ======================================================================
; -[TAGAdvertiserId evaluate:]
; address 0x100172b08  size 192  kind objc
; ======================================================================
  100172b08  stp     x29, x30, [sp, #-0x10]!
  100172b0c  mov     x29, sp
  100172b10  stp     x20, x19, [sp, #-0x10]!
  100172b14  adrp    x8, #0x10041d000
  100172b18  nop
  100172b1c  ldr     x1, [x8, #0xbe0]
  100172b20  bl      _objc_msgSend                            ; [self rawAdvertiserId]
  100172b24  mov     x29, x29
  100172b28  bl      _objc_retainAutoreleasedReturnValue
  100172b2c  mov     x19, x0
  100172b30  cbz     x19, loc_100172b70                       ; if ([self rawAdvertiserId] == 0)
  100172b34  adrp    x8, #0x100417000
  100172b38  nop
  100172b3c  ldr     x1, [x8, #0xc58]
  100172b40  mov     x0, x19
  100172b44  bl      _objc_msgSend                            ; [[self rawAdvertiserId] length]
  100172b48  cbz     x0, loc_100172b70                        ; if ([[self rawAdvertiserId] length] == 0)
  100172b4c  adrp    x8, #0x10041e000
  100172b50  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100172b54  adrp    x8, #0x10041d000
  100172b58  nop
  100172b5c  ldr     x1, [x8, #0xc30]
  100172b60  mov     x2, x19
  100172b64  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[self rawAdvertiserId]]
  100172b68  mov     x29, x29
  100172b6c  b       loc_100172b8c
loc_100172b70:
  100172b70  adrp    x8, #0x10041e000
  100172b74  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100172b78  adrp    x8, #0x10041c000
  100172b7c  nop
  100172b80  ldr     x1, [x8, #0xa98]
  100172b84  bl      _objc_msgSend                            ; [TAGTypes defaultValue]
  100172b88  mov     x29, x29
loc_100172b8c:
  100172b8c  bl      _objc_retainAutoreleasedReturnValue
  100172b90  mov     x20, x0
  100172b94  mov     x0, x19
  100172b98  bl      _objc_release
  100172b9c  mov     x0, x20
  100172ba0  ldp     x20, x19, [sp], #0x10
  100172ba4  ldp     x29, x30, [sp], #0x10
  100172ba8  b       _objc_autoreleaseReturnValue
  100172bac  mov     x20, x0
  100172bb0  b       loc_100172bc0
  100172bb4  mov     x20, x0
  100172bb8  mov     x0, x19
  100172bbc  bl      _objc_release
loc_100172bc0:
  100172bc0  mov     x0, x20
  100172bc4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGAdvertiserId rawAdvertiserId]
; address 0x100172bc8  size 24  kind objc
; ======================================================================
  100172bc8  adrp    x8, #0x10041e000
  100172bcc  ldr     x0, [x8, #0xb50]                         ; class TAGAdIdAccess
  100172bd0  adrp    x8, #0x10041d000
  100172bd4  nop
  100172bd8  ldr     x1, [x8, #0xbe8]
  100172bdc  b       _objc_msgSend                            ; [TAGAdIdAccess retrieveId]
