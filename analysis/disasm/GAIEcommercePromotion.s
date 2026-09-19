// unit GAIEcommercePromotion — 10 functions
//   0x10012692c     140  -[GAIEcommercePromotion init]
//   0x1001269b8     304  -[GAIEcommercePromotion setString:forKey:]
//   0x100126ae8      28  -[GAIEcommercePromotion setId:]
//   0x100126b04      28  -[GAIEcommercePromotion setName:]
//   0x100126b20      28  -[GAIEcommercePromotion setCreative:]
//   0x100126b3c      28  -[GAIEcommercePromotion setPosition:]
//   0x100126b58     540  -[GAIEcommercePromotion buildWithIndex:]
//   0x100126d74      16  -[GAIEcommercePromotion parameters]
//   0x100126d84      56  -[GAIEcommercePromotion setParameters:]
//   0x100126dbc      20  -[GAIEcommercePromotion .cxx_destruct]

; ======================================================================
; -[GAIEcommercePromotion init]
; address 0x10012692c  size 140  kind objc
; ======================================================================
  10012692c  stp     x29, x30, [sp, #-0x10]!
  100126930  mov     x29, sp
  100126934  stp     x20, x19, [sp, #-0x10]!
  100126938  sub     sp, sp, #0x10
  10012693c  str     x0, [sp]
  100126940  adrp    x8, #0x10041f000
  100126944  ldr     x8, [x8, #0x140]
  100126948  str     x8, [sp, #8]
  10012694c  adrp    x8, #0x100416000
  100126950  nop
  100126954  ldr     x1, [x8, #0xab8]
  100126958  mov     x0, sp
  10012695c  bl      _objc_msgSendSuper2                      ; [super init]
  100126960  mov     x19, x0
  100126964  cbz     x19, loc_1001269a4                       ; if (self == 0)
  100126968  adrp    x8, #0x10041d000
  10012696c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100126970  adrp    x8, #0x10041b000
  100126974  nop
  100126978  ldr     x1, [x8, #0x828]
  10012697c  mov     x2, #0
  100126980  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:0]
  100126984  mov     x29, x29
  100126988  bl      _objc_retainAutoreleasedReturnValue
  10012698c  adrp    x8, #0x100420000
  100126990  ldrsw   x9, [x8, #0x8b0]                         ; ivar offset GAIEcommercePromotion._parameters (+0x8)
  100126994  ldr     x8, [x19, x9]                            ; x8 = self->_parameters
  100126998  str     x0, [x19, x9]                            ; self->_parameters = [NSMutableDictionary dictionaryWithCapacity:0]
  10012699c  mov     x0, x8
  1001269a0  bl      _objc_release
loc_1001269a4:
  1001269a4  mov     x0, x19
  1001269a8  sub     sp, x29, #0x10
  1001269ac  ldp     x20, x19, [sp], #0x10
  1001269b0  ldp     x29, x30, [sp], #0x10
  1001269b4  ret

; ======================================================================
; -[GAIEcommercePromotion setString:forKey:]
; address 0x1001269b8  size 304  kind objc
; ======================================================================
  1001269b8  stp     x29, x30, [sp, #-0x10]!
  1001269bc  mov     x29, sp
  1001269c0  stp     x20, x19, [sp, #-0x10]!
  1001269c4  stp     x22, x21, [sp, #-0x10]!
  1001269c8  stp     x24, x23, [sp, #-0x10]!
  1001269cc  mov     x21, x3
  1001269d0  mov     x19, x0
  1001269d4  mov     x0, x2
  1001269d8  bl      _objc_retain
  1001269dc  mov     x20, x0
  1001269e0  mov     x0, x21
  1001269e4  bl      _objc_retain
  1001269e8  mov     x21, x0
  1001269ec  cbz     x21, loc_100126a58                       ; if (arg2 == 0)
  1001269f0  adrp    x8, #0x10041c000
  1001269f4  nop
  1001269f8  ldr     x1, [x8, #0x188]
  1001269fc  mov     x0, x19
  100126a00  bl      _objc_msgSend                            ; [self parameters]
  100126a04  mov     x29, x29
  100126a08  bl      _objc_retainAutoreleasedReturnValue
  100126a0c  mov     x22, x0
  100126a10  adrp    x8, #0x10041e000
  100126a14  ldr     x0, [x8, #0x5d8]                         ; class GAIUtil
  100126a18  adrp    x8, #0x10041c000
  100126a1c  nop
  100126a20  ldr     x1, [x8, #0x190]
  100126a24  mov     x2, x20
  100126a28  bl      _objc_msgSend                            ; [GAIUtil valueForString:arg1]
  100126a2c  mov     x29, x29
  100126a30  bl      _objc_retainAutoreleasedReturnValue
  100126a34  mov     x23, x0
  100126a38  adrp    x8, #0x100416000
  100126a3c  nop
  100126a40  ldr     x1, [x8, #0xdc8]
  100126a44  mov     x0, x22
  100126a48  mov     x2, x23
  100126a4c  mov     x3, x21
  100126a50  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIUtil valueForString:arg1] forKey:arg2]
  100126a54  b       loc_100126ab0
loc_100126a58:
  100126a58  adrp    x8, #0x10041d000
  100126a5c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100126a60  adrp    x8, #0x100416000
  100126a64  nop
  100126a68  ldr     x1, [x8, #0xac0]
  100126a6c  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100126a70  mov     x29, x29
  100126a74  bl      _objc_retainAutoreleasedReturnValue
  100126a78  mov     x22, x0
  100126a7c  adrp    x8, #0x100419000
  100126a80  nop
  100126a84  ldr     x1, [x8, #0xd20]
  100126a88  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  100126a8c  mov     x29, x29
  100126a90  bl      _objc_retainAutoreleasedReturnValue
  100126a94  mov     x23, x0
  100126a98  adrp    x8, #0x10041b000
  100126a9c  nop
  100126aa0  ldr     x1, [x8, #0xe90]
  100126aa4  adrp    x2, #0x1003c5000
  100126aa8  add     x2, x2, #0x550                           ; @"nil key not allowed in setString"
  100126aac  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:@"nil key not allowed in setString"]
loc_100126ab0:
  100126ab0  mov     x0, x23
  100126ab4  bl      _objc_release
  100126ab8  mov     x0, x22
  100126abc  bl      _objc_release
  100126ac0  mov     x0, x21
  100126ac4  bl      _objc_release
  100126ac8  mov     x0, x20
  100126acc  bl      _objc_release
  100126ad0  mov     x0, x19
  100126ad4  ldp     x24, x23, [sp], #0x10
  100126ad8  ldp     x22, x21, [sp], #0x10
  100126adc  ldp     x20, x19, [sp], #0x10
  100126ae0  ldp     x29, x30, [sp], #0x10
  100126ae4  ret

; ======================================================================
; -[GAIEcommercePromotion setId:]
; address 0x100126ae8  size 28  kind objc
; ======================================================================
  100126ae8  adrp    x8, #0x1003b7000
  100126aec  add     x8, x8, #0xd38                           ; &d_1003b7d38
  100126af0  ldr     x3, [x8]                                 ; [&d_1003b7d38] -> @"id"
  100126af4  adrp    x8, #0x10041c000
  100126af8  nop
  100126afc  ldr     x1, [x8, #0x1a0]
  100126b00  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"id"]

; ======================================================================
; -[GAIEcommercePromotion setName:]
; address 0x100126b04  size 28  kind objc
; ======================================================================
  100126b04  adrp    x8, #0x1003b7000
  100126b08  add     x8, x8, #0xd40                           ; &d_1003b7d40
  100126b0c  ldr     x3, [x8]                                 ; [&d_1003b7d40] -> @"nm"
  100126b10  adrp    x8, #0x10041c000
  100126b14  nop
  100126b18  ldr     x1, [x8, #0x1a0]
  100126b1c  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"nm"]

; ======================================================================
; -[GAIEcommercePromotion setCreative:]
; address 0x100126b20  size 28  kind objc
; ======================================================================
  100126b20  adrp    x8, #0x1003b7000
  100126b24  add     x8, x8, #0xd48                           ; &d_1003b7d48
  100126b28  ldr     x3, [x8]                                 ; [&d_1003b7d48] -> @"cr"
  100126b2c  adrp    x8, #0x10041c000
  100126b30  nop
  100126b34  ldr     x1, [x8, #0x1a0]
  100126b38  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"cr"]

; ======================================================================
; -[GAIEcommercePromotion setPosition:]
; address 0x100126b3c  size 28  kind objc
; ======================================================================
  100126b3c  adrp    x8, #0x1003b7000
  100126b40  add     x8, x8, #0xd50                           ; &d_1003b7d50
  100126b44  ldr     x3, [x8]                                 ; [&d_1003b7d50] -> @"ps"
  100126b48  adrp    x8, #0x10041c000
  100126b4c  nop
  100126b50  ldr     x1, [x8, #0x1a0]
  100126b54  b       _objc_msgSend                            ; [self setString:x2 forKey:@"ps"]

; ======================================================================
; -[GAIEcommercePromotion buildWithIndex:]
; address 0x100126b58  size 540  kind objc
; ======================================================================
  100126b58  stp     x29, x30, [sp, #-0x10]!
  100126b5c  mov     x29, sp
  100126b60  stp     x20, x19, [sp, #-0x10]!
  100126b64  stp     x22, x21, [sp, #-0x10]!
  100126b68  stp     x24, x23, [sp, #-0x10]!
  100126b6c  stp     x26, x25, [sp, #-0x10]!
  100126b70  stp     x28, x27, [sp, #-0x10]!
  100126b74  sub     sp, sp, #0x20
  100126b78  mov     x21, x2
  100126b7c  mov     x20, x0
  100126b80  adrp    x8, #0x10041d000
  100126b84  ldr     x22, [x8, #0xf90]                        ; class NSMutableDictionary
  100126b88  adrp    x8, #0x10041c000
  100126b8c  nop
  100126b90  ldr     x19, [x8, #0x188]
  100126b94  mov     x1, x19
  100126b98  bl      _objc_msgSend                            ; [self parameters]
  100126b9c  mov     x29, x29
  100126ba0  bl      _objc_retainAutoreleasedReturnValue
  100126ba4  mov     x23, x0
  100126ba8  adrp    x8, #0x100416000
  100126bac  nop
  100126bb0  ldr     x1, [x8, #0xe30]
  100126bb4  bl      _objc_msgSend                            ; [[self parameters] count]
  100126bb8  mov     x2, x0
  100126bbc  adrp    x8, #0x10041b000
  100126bc0  nop
  100126bc4  ldr     x1, [x8, #0x828]
  100126bc8  mov     x0, x22
  100126bcc  mov     x22, x19
  100126bd0  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[self parameters] count]]
  100126bd4  mov     x29, x29
  100126bd8  bl      _objc_retainAutoreleasedReturnValue
  100126bdc  str     x0, [sp, #0x18]
  100126be0  mov     x0, x23
  100126be4  bl      _objc_release
  100126be8  mov     x0, x20
  100126bec  mov     x1, x22
  100126bf0  bl      _objc_msgSend                            ; [self parameters]
  100126bf4  mov     x29, x29
  100126bf8  bl      _objc_retainAutoreleasedReturnValue
  100126bfc  mov     x24, x0
  100126c00  adrp    x8, #0x100417000
  100126c04  nop
  100126c08  ldr     x1, [x8, #0xa18]
  100126c0c  bl      _objc_msgSend                            ; [[self parameters] keyEnumerator]
  100126c10  mov     x29, x29
  100126c14  bl      _objc_retainAutoreleasedReturnValue
  100126c18  mov     x23, x0
  100126c1c  mov     x0, x24
  100126c20  bl      _objc_release
  100126c24  adrp    x8, #0x100417000
  100126c28  nop
  100126c2c  ldr     x24, [x8, #0xa20]
  100126c30  mov     x0, x23
  100126c34  mov     x1, x24
  100126c38  bl      _objc_msgSend                            ; [[[self parameters] keyEnumerator] nextObject]
  100126c3c  mov     x29, x29
  100126c40  bl      _objc_retainAutoreleasedReturnValue
  100126c44  mov     x25, x0
  100126c48  cbz     x25, loc_100126d48                       ; if ([[[self parameters] keyEnumerator] nextObject] == 0)
  100126c4c  adrp    x8, #0x100417000
  100126c50  nop
  100126c54  adrp    x9, #0x10041c000
  100126c58  add     x9, x9, #0x2d8                           ; &@selector(promotionForIndex:suffix:)
  100126c5c  ldr     x8, [x8, #0x40]
  100126c60  str     x8, [sp, #0x10]
  100126c64  ldr     x8, [x9]
  100126c68  str     x8, [sp, #8]
  100126c6c  adrp    x8, #0x100416000
  100126c70  add     x8, x8, #0xdc8                           ; &@selector(setObject:forKey:)
  100126c74  ldr     x28, [x8]
loc_100126c78:
  100126c78  mov     x0, x20
  100126c7c  mov     x1, x22
  100126c80  bl      _objc_msgSend                            ; [self parameters]
  100126c84  mov     x29, x29
  100126c88  bl      _objc_retainAutoreleasedReturnValue
  100126c8c  mov     x19, x0
  100126c90  ldr     x1, [sp, #0x10]
  100126c94  mov     x2, x25
  100126c98  bl      _objc_msgSend                            ; [[self parameters] objectForKey:[[[self parameters] keyEnumerator] nextObject]]
  100126c9c  mov     x29, x29
  100126ca0  bl      _objc_retainAutoreleasedReturnValue
  100126ca4  mov     x26, x23
  100126ca8  mov     x23, x20
  100126cac  mov     x20, x0
  100126cb0  adrp    x8, #0x10041e000
  100126cb4  ldr     x0, [x8, #0x638]                         ; class GAIEcommerceFields
  100126cb8  ldr     x1, [sp, #8]
  100126cbc  mov     x2, x21
  100126cc0  mov     x3, x25
  100126cc4  bl      _objc_msgSend                            ; [GAIEcommerceFields promotionForIndex:arg1 suffix:[[[self parameters] keyEnumerator] nextObject]]
  100126cc8  mov     x29, x29
  100126ccc  bl      _objc_retainAutoreleasedReturnValue
  100126cd0  mov     x27, x24
  100126cd4  mov     x24, x22
  100126cd8  mov     x22, x21
  100126cdc  mov     x21, x0
  100126ce0  ldr     x0, [sp, #0x18]
  100126ce4  mov     x1, x28
  100126ce8  mov     x2, x20
  100126cec  mov     x3, x21
  100126cf0  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[self parameters] count]] setObject:[[self parameters] objectForKey:[[[self parameters] keyEnumerator] nextObject]] forKey:[GAIEcommerceFields promotionForIndex:arg1 suffix:[[[self parameters] keyEnumerator] nextObject]]]
  100126cf4  mov     x0, x21
  100126cf8  mov     x21, x22
  100126cfc  mov     x22, x24
  100126d00  mov     x24, x27
  100126d04  bl      _objc_release
  100126d08  mov     x0, x20
  100126d0c  mov     x20, x23
  100126d10  mov     x23, x26
  100126d14  bl      _objc_release
  100126d18  mov     x0, x19
  100126d1c  bl      _objc_release
  100126d20  mov     x0, x23
  100126d24  mov     x1, x24
  100126d28  bl      _objc_msgSend                            ; [[[self parameters] keyEnumerator] nextObject]
  100126d2c  mov     x29, x29
  100126d30  bl      _objc_retainAutoreleasedReturnValue
  100126d34  mov     x19, x0
  100126d38  mov     x0, x25
  100126d3c  bl      _objc_release
  100126d40  mov     x25, x19
  100126d44  cbnz    x19, loc_100126c78                       ; if ([[[self parameters] keyEnumerator] nextObject] != 0)
loc_100126d48:
  100126d48  mov     x0, x23
  100126d4c  bl      _objc_release
  100126d50  ldr     x0, [sp, #0x18]
  100126d54  sub     sp, x29, #0x50
  100126d58  ldp     x28, x27, [sp], #0x10
  100126d5c  ldp     x26, x25, [sp], #0x10
  100126d60  ldp     x24, x23, [sp], #0x10
  100126d64  ldp     x22, x21, [sp], #0x10
  100126d68  ldp     x20, x19, [sp], #0x10
  100126d6c  ldp     x29, x30, [sp], #0x10
  100126d70  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIEcommercePromotion parameters]
; address 0x100126d74  size 16  kind objc
; ======================================================================
  100126d74  adrp    x8, #0x100420000
  100126d78  ldrsw   x8, [x8, #0x8b0]                         ; ivar offset GAIEcommercePromotion._parameters (+0x8)
  100126d7c  ldr     x0, [x0, x8]                             ; x0 = self->_parameters
  100126d80  ret

; ======================================================================
; -[GAIEcommercePromotion setParameters:]
; address 0x100126d84  size 56  kind objc
; ======================================================================
  100126d84  stp     x29, x30, [sp, #-0x10]!
  100126d88  mov     x29, sp
  100126d8c  stp     x20, x19, [sp, #-0x10]!
  100126d90  mov     x19, x0
  100126d94  adrp    x8, #0x100420000
  100126d98  ldrsw   x20, [x8, #0x8b0]                        ; ivar offset GAIEcommercePromotion._parameters (+0x8)
  100126d9c  mov     x0, x2
  100126da0  bl      _objc_retain
  100126da4  ldr     x8, [x19, x20]                           ; x8 = self->_parameters
  100126da8  str     x0, [x19, x20]                           ; self->_parameters = arg1
  100126dac  mov     x0, x8
  100126db0  ldp     x20, x19, [sp], #0x10
  100126db4  ldp     x29, x30, [sp], #0x10
  100126db8  b       _objc_release

; ======================================================================
; -[GAIEcommercePromotion .cxx_destruct]
; address 0x100126dbc  size 20  kind objc
; ======================================================================
  100126dbc  mov     x1, #0
  100126dc0  adrp    x8, #0x100420000
  100126dc4  ldrsw   x8, [x8, #0x8b0]                         ; ivar offset GAIEcommercePromotion._parameters (+0x8)
  100126dc8  add     x0, x0, x8
  100126dcc  b       _objc_storeStrong
