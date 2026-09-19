// unit GAIEcommerceFields — 5 functions
//   0x100115a8c     124  +[GAIEcommerceFields stripAmpersandIfPresent:]
//   0x100115b08     200  +[GAIEcommerceFields productFieldForIndex:suffix:]
//   0x100115bd0      60  +[GAIEcommerceFields impressionListForIndex:]
//   0x100115c0c     180  +[GAIEcommerceFields productImpressionForList:index:suffix:]
//   0x100115cc0     148  +[GAIEcommerceFields promotionForIndex:suffix:]

; ======================================================================
; +[GAIEcommerceFields stripAmpersandIfPresent:]
; address 0x100115a8c  size 124  kind objc
; ======================================================================
  100115a8c  stp     x29, x30, [sp, #-0x10]!
  100115a90  mov     x29, sp
  100115a94  stp     x20, x19, [sp, #-0x10]!
  100115a98  mov     x0, x2
  100115a9c  bl      _objc_retain
  100115aa0  mov     x19, x0
  100115aa4  adrp    x8, #0x10041a000
  100115aa8  nop
  100115aac  ldr     x1, [x8, #0x2d0]
  100115ab0  adrp    x2, #0x1003c4000
  100115ab4  add     x2, x2, #0xb10                           ; @"&"
  100115ab8  bl      _objc_msgSend                            ; [arg1 hasPrefix:@"&"]
  100115abc  cbz     w0, loc_100115ae4                        ; if ([arg1 hasPrefix:@"&"] == 0)
  100115ac0  adrp    x8, #0x10041c000
  100115ac4  nop
  100115ac8  ldr     x1, [x8, #0x110]
  100115acc  mov     x2, #1
  100115ad0  mov     x0, x19
  100115ad4  bl      _objc_msgSend                            ; [arg1 substringFromIndex:1]
  100115ad8  mov     x29, x29
  100115adc  bl      _objc_retainAutoreleasedReturnValue
  100115ae0  b       loc_100115aec
loc_100115ae4:
  100115ae4  mov     x0, x19
  100115ae8  bl      _objc_retain
loc_100115aec:
  100115aec  mov     x20, x0
  100115af0  mov     x0, x19
  100115af4  bl      _objc_release
  100115af8  mov     x0, x20
  100115afc  ldp     x20, x19, [sp], #0x10
  100115b00  ldp     x29, x30, [sp], #0x10
  100115b04  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIEcommerceFields productFieldForIndex:suffix:]
; address 0x100115b08  size 200  kind objc
; ======================================================================
  100115b08  stp     x29, x30, [sp, #-0x10]!
  100115b0c  mov     x29, sp
  100115b10  stp     x20, x19, [sp, #-0x10]!
  100115b14  stp     x22, x21, [sp, #-0x10]!
  100115b18  sub     sp, sp, #0x10
  100115b1c  mov     x20, x2
  100115b20  adrp    x8, #0x10041d000
  100115b24  ldr     x19, [x8, #0xf78]                        ; class NSString
  100115b28  cbz     x3, loc_100115b8c                        ; if (arg2 == 0)
  100115b2c  adrp    x8, #0x10041e000
  100115b30  ldr     x0, [x8, #0x638]                         ; class GAIEcommerceFields
  100115b34  adrp    x8, #0x10041b000
  100115b38  nop
  100115b3c  ldr     x1, [x8, #0xd98]
  100115b40  mov     x2, x3
  100115b44  bl      _objc_msgSend                            ; [GAIEcommerceFields stripAmpersandIfPresent:arg2]
  100115b48  mov     x29, x29
  100115b4c  bl      _objc_retainAutoreleasedReturnValue
  100115b50  mov     x21, x0
  100115b54  adrp    x8, #0x100416000
  100115b58  nop
  100115b5c  ldr     x1, [x8, #0xee8]
  100115b60  stp     x20, x21, [sp]
  100115b64  adrp    x2, #0x1003c4000
  100115b68  add     x2, x2, #0x7f0                           ; @"&pr%lu%@"
  100115b6c  mov     x0, x19
  100115b70  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&pr%lu%@", arg1, [GAIEcommerceFields stripAmpersandIfPresent:arg2]]
  100115b74  mov     x29, x29
  100115b78  bl      _objc_retainAutoreleasedReturnValue
  100115b7c  mov     x19, x0
  100115b80  mov     x0, x21
  100115b84  bl      _objc_release
  100115b88  b       loc_100115bb8
loc_100115b8c:
  100115b8c  adrp    x8, #0x100416000
  100115b90  nop
  100115b94  ldr     x1, [x8, #0xee8]
  100115b98  str     x20, [sp]
  100115b9c  adrp    x2, #0x1003c4000
  100115ba0  add     x2, x2, #0x7d0                           ; @"&pr%lu"
  100115ba4  mov     x0, x19
  100115ba8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&pr%lu", arg1]
  100115bac  mov     x29, x29
  100115bb0  bl      _objc_retainAutoreleasedReturnValue
  100115bb4  mov     x19, x0
loc_100115bb8:
  100115bb8  mov     x0, x19
  100115bbc  sub     sp, x29, #0x20
  100115bc0  ldp     x22, x21, [sp], #0x10
  100115bc4  ldp     x20, x19, [sp], #0x10
  100115bc8  ldp     x29, x30, [sp], #0x10
  100115bcc  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIEcommerceFields impressionListForIndex:]
; address 0x100115bd0  size 60  kind objc
; ======================================================================
  100115bd0  stp     x29, x30, [sp, #-0x10]!
  100115bd4  mov     x29, sp
  100115bd8  sub     sp, sp, #0x10
  100115bdc  adrp    x8, #0x10041d000
  100115be0  ldr     x0, [x8, #0xf78]                         ; class NSString
  100115be4  adrp    x8, #0x100416000
  100115be8  nop
  100115bec  ldr     x1, [x8, #0xee8]
  100115bf0  str     x2, [sp]
  100115bf4  adrp    x2, #0x1003c4000
  100115bf8  add     x2, x2, #0x810                           ; @"&il%lu"
  100115bfc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&il%lu", arg1]
  100115c00  mov     sp, x29
  100115c04  ldp     x29, x30, [sp], #0x10
  100115c08  ret

; ======================================================================
; +[GAIEcommerceFields productImpressionForList:index:suffix:]
; address 0x100115c0c  size 180  kind objc
; ======================================================================
  100115c0c  stp     x29, x30, [sp, #-0x10]!
  100115c10  mov     x29, sp
  100115c14  stp     x20, x19, [sp, #-0x10]!
  100115c18  stp     x22, x21, [sp, #-0x10]!
  100115c1c  sub     sp, sp, #0x20
  100115c20  mov     x19, x4
  100115c24  mov     x20, x3
  100115c28  mov     x0, x2
  100115c2c  bl      _objc_retain
  100115c30  mov     x21, x0
  100115c34  adrp    x8, #0x10041d000
  100115c38  ldr     x22, [x8, #0xf78]                        ; class NSString
  100115c3c  adrp    x8, #0x10041e000
  100115c40  ldr     x0, [x8, #0x638]                         ; class GAIEcommerceFields
  100115c44  adrp    x8, #0x10041b000
  100115c48  nop
  100115c4c  ldr     x1, [x8, #0xd98]
  100115c50  mov     x2, x19
  100115c54  bl      _objc_msgSend                            ; [GAIEcommerceFields stripAmpersandIfPresent:arg3]
  100115c58  mov     x29, x29
  100115c5c  bl      _objc_retainAutoreleasedReturnValue
  100115c60  mov     x19, x0
  100115c64  adrp    x8, #0x100416000
  100115c68  nop
  100115c6c  ldr     x1, [x8, #0xee8]
  100115c70  stp     x20, x19, [sp, #8]
  100115c74  str     x21, [sp]
  100115c78  adrp    x2, #0x1003c4000
  100115c7c  add     x2, x2, #0x830                           ; @"%@pi%lu%@"
  100115c80  mov     x0, x22
  100115c84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@pi%lu%@", arg1, arg2, [GAIEcommerceFields stripAmpersandIfPresent:arg3]]
  100115c88  mov     x20, x0
  100115c8c  mov     x0, x21
  100115c90  bl      _objc_release
  100115c94  mov     x0, x20
  100115c98  bl      _objc_retainAutoreleasedReturnValue
  100115c9c  mov     x20, x0
  100115ca0  mov     x0, x19
  100115ca4  bl      _objc_release
  100115ca8  mov     x0, x20
  100115cac  sub     sp, x29, #0x20
  100115cb0  ldp     x22, x21, [sp], #0x10
  100115cb4  ldp     x20, x19, [sp], #0x10
  100115cb8  ldp     x29, x30, [sp], #0x10
  100115cbc  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIEcommerceFields promotionForIndex:suffix:]
; address 0x100115cc0  size 148  kind objc
; ======================================================================
  100115cc0  stp     x29, x30, [sp, #-0x10]!
  100115cc4  mov     x29, sp
  100115cc8  stp     x20, x19, [sp, #-0x10]!
  100115ccc  stp     x22, x21, [sp, #-0x10]!
  100115cd0  sub     sp, sp, #0x10
  100115cd4  mov     x19, x2
  100115cd8  adrp    x8, #0x10041d000
  100115cdc  ldr     x20, [x8, #0xf78]                        ; class NSString
  100115ce0  adrp    x8, #0x10041e000
  100115ce4  ldr     x0, [x8, #0x638]                         ; class GAIEcommerceFields
  100115ce8  adrp    x8, #0x10041b000
  100115cec  nop
  100115cf0  ldr     x1, [x8, #0xd98]
  100115cf4  mov     x2, x3
  100115cf8  bl      _objc_msgSend                            ; [GAIEcommerceFields stripAmpersandIfPresent:arg2]
  100115cfc  mov     x29, x29
  100115d00  bl      _objc_retainAutoreleasedReturnValue
  100115d04  mov     x21, x0
  100115d08  adrp    x8, #0x100416000
  100115d0c  nop
  100115d10  ldr     x1, [x8, #0xee8]
  100115d14  stp     x19, x21, [sp]
  100115d18  adrp    x2, #0x1003c4000
  100115d1c  add     x2, x2, #0x850                           ; @"&promo%lu%@"
  100115d20  mov     x0, x20
  100115d24  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"&promo%lu%@", arg1, [GAIEcommerceFields stripAmpersandIfPresent:arg2]]
  100115d28  mov     x29, x29
  100115d2c  bl      _objc_retainAutoreleasedReturnValue
  100115d30  mov     x19, x0
  100115d34  mov     x0, x21
  100115d38  bl      _objc_release
  100115d3c  mov     x0, x19
  100115d40  sub     sp, x29, #0x20
  100115d44  ldp     x22, x21, [sp], #0x10
  100115d48  ldp     x20, x19, [sp], #0x10
  100115d4c  ldp     x29, x30, [sp], #0x10
  100115d50  b       _objc_autoreleaseReturnValue
