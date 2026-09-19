// unit GAIEcommerceProductAction — 18 functions
//   0x10012afd4     140  -[GAIEcommerceProductAction init]
//   0x10012b060     304  -[GAIEcommerceProductAction setString:forKey:]
//   0x10012b190     304  -[GAIEcommerceProductAction setNumber:forKey:]
//   0x10012b2c0      28  -[GAIEcommerceProductAction setAction:]
//   0x10012b2dc      28  -[GAIEcommerceProductAction setTransactionId:]
//   0x10012b2f8      28  -[GAIEcommerceProductAction setAffiliation:]
//   0x10012b314      28  -[GAIEcommerceProductAction setRevenue:]
//   0x10012b330      28  -[GAIEcommerceProductAction setTax:]
//   0x10012b34c      28  -[GAIEcommerceProductAction setShipping:]
//   0x10012b368      28  -[GAIEcommerceProductAction setCouponCode:]
//   0x10012b384      28  -[GAIEcommerceProductAction setCheckoutStep:]
//   0x10012b3a0      28  -[GAIEcommerceProductAction setCheckoutOption:]
//   0x10012b3bc      28  -[GAIEcommerceProductAction setProductActionList:]
//   0x10012b3d8      28  -[GAIEcommerceProductAction setProductListSource:]
//   0x10012b3f4      16  -[GAIEcommerceProductAction build]
//   0x10012b404      16  -[GAIEcommerceProductAction parameters]
//   0x10012b414      56  -[GAIEcommerceProductAction setParameters:]
//   0x10012b44c      20  -[GAIEcommerceProductAction .cxx_destruct]

; ======================================================================
; -[GAIEcommerceProductAction init]
; address 0x10012afd4  size 140  kind objc
; ======================================================================
  10012afd4  stp     x29, x30, [sp, #-0x10]!
  10012afd8  mov     x29, sp
  10012afdc  stp     x20, x19, [sp, #-0x10]!
  10012afe0  sub     sp, sp, #0x10
  10012afe4  str     x0, [sp]
  10012afe8  adrp    x8, #0x10041f000
  10012afec  ldr     x8, [x8, #0x158]
  10012aff0  str     x8, [sp, #8]
  10012aff4  adrp    x8, #0x100416000
  10012aff8  nop
  10012affc  ldr     x1, [x8, #0xab8]
  10012b000  mov     x0, sp
  10012b004  bl      _objc_msgSendSuper2                      ; [super init]
  10012b008  mov     x19, x0
  10012b00c  cbz     x19, loc_10012b04c                       ; if (self == 0)
  10012b010  adrp    x8, #0x10041d000
  10012b014  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10012b018  adrp    x8, #0x10041b000
  10012b01c  nop
  10012b020  ldr     x1, [x8, #0x828]
  10012b024  mov     x2, #0
  10012b028  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:0]
  10012b02c  mov     x29, x29
  10012b030  bl      _objc_retainAutoreleasedReturnValue
  10012b034  adrp    x8, #0x100420000
  10012b038  ldrsw   x9, [x8, #0x8fc]                         ; ivar offset GAIEcommerceProductAction._parameters (+0x8)
  10012b03c  ldr     x8, [x19, x9]                            ; x8 = self->_parameters
  10012b040  str     x0, [x19, x9]                            ; self->_parameters = [NSMutableDictionary dictionaryWithCapacity:0]
  10012b044  mov     x0, x8
  10012b048  bl      _objc_release
loc_10012b04c:
  10012b04c  mov     x0, x19
  10012b050  sub     sp, x29, #0x10
  10012b054  ldp     x20, x19, [sp], #0x10
  10012b058  ldp     x29, x30, [sp], #0x10
  10012b05c  ret

; ======================================================================
; -[GAIEcommerceProductAction setString:forKey:]
; address 0x10012b060  size 304  kind objc
; ======================================================================
  10012b060  stp     x29, x30, [sp, #-0x10]!
  10012b064  mov     x29, sp
  10012b068  stp     x20, x19, [sp, #-0x10]!
  10012b06c  stp     x22, x21, [sp, #-0x10]!
  10012b070  stp     x24, x23, [sp, #-0x10]!
  10012b074  mov     x21, x3
  10012b078  mov     x19, x0
  10012b07c  mov     x0, x2
  10012b080  bl      _objc_retain
  10012b084  mov     x20, x0
  10012b088  mov     x0, x21
  10012b08c  bl      _objc_retain
  10012b090  mov     x21, x0
  10012b094  cbz     x21, loc_10012b100                       ; if (arg2 == 0)
  10012b098  adrp    x8, #0x10041c000
  10012b09c  nop
  10012b0a0  ldr     x1, [x8, #0x188]
  10012b0a4  mov     x0, x19
  10012b0a8  bl      _objc_msgSend                            ; [self parameters]
  10012b0ac  mov     x29, x29
  10012b0b0  bl      _objc_retainAutoreleasedReturnValue
  10012b0b4  mov     x22, x0
  10012b0b8  adrp    x8, #0x10041e000
  10012b0bc  ldr     x0, [x8, #0x5d8]                         ; class GAIUtil
  10012b0c0  adrp    x8, #0x10041c000
  10012b0c4  nop
  10012b0c8  ldr     x1, [x8, #0x190]
  10012b0cc  mov     x2, x20
  10012b0d0  bl      _objc_msgSend                            ; [GAIUtil valueForString:arg1]
  10012b0d4  mov     x29, x29
  10012b0d8  bl      _objc_retainAutoreleasedReturnValue
  10012b0dc  mov     x23, x0
  10012b0e0  adrp    x8, #0x100416000
  10012b0e4  nop
  10012b0e8  ldr     x1, [x8, #0xdc8]
  10012b0ec  mov     x0, x22
  10012b0f0  mov     x2, x23
  10012b0f4  mov     x3, x21
  10012b0f8  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIUtil valueForString:arg1] forKey:arg2]
  10012b0fc  b       loc_10012b158
loc_10012b100:
  10012b100  adrp    x8, #0x10041d000
  10012b104  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10012b108  adrp    x8, #0x100416000
  10012b10c  nop
  10012b110  ldr     x1, [x8, #0xac0]
  10012b114  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10012b118  mov     x29, x29
  10012b11c  bl      _objc_retainAutoreleasedReturnValue
  10012b120  mov     x22, x0
  10012b124  adrp    x8, #0x100419000
  10012b128  nop
  10012b12c  ldr     x1, [x8, #0xd20]
  10012b130  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  10012b134  mov     x29, x29
  10012b138  bl      _objc_retainAutoreleasedReturnValue
  10012b13c  mov     x23, x0
  10012b140  adrp    x8, #0x10041b000
  10012b144  nop
  10012b148  ldr     x1, [x8, #0xe90]
  10012b14c  adrp    x2, #0x1003c5000
  10012b150  add     x2, x2, #0x550                           ; @"nil key not allowed in setString"
  10012b154  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:@"nil key not allowed in setString"]
loc_10012b158:
  10012b158  mov     x0, x23
  10012b15c  bl      _objc_release
  10012b160  mov     x0, x22
  10012b164  bl      _objc_release
  10012b168  mov     x0, x21
  10012b16c  bl      _objc_release
  10012b170  mov     x0, x20
  10012b174  bl      _objc_release
  10012b178  mov     x0, x19
  10012b17c  ldp     x24, x23, [sp], #0x10
  10012b180  ldp     x22, x21, [sp], #0x10
  10012b184  ldp     x20, x19, [sp], #0x10
  10012b188  ldp     x29, x30, [sp], #0x10
  10012b18c  ret

; ======================================================================
; -[GAIEcommerceProductAction setNumber:forKey:]
; address 0x10012b190  size 304  kind objc
; ======================================================================
  10012b190  stp     x29, x30, [sp, #-0x10]!
  10012b194  mov     x29, sp
  10012b198  stp     x20, x19, [sp, #-0x10]!
  10012b19c  stp     x22, x21, [sp, #-0x10]!
  10012b1a0  stp     x24, x23, [sp, #-0x10]!
  10012b1a4  mov     x21, x3
  10012b1a8  mov     x19, x0
  10012b1ac  mov     x0, x2
  10012b1b0  bl      _objc_retain
  10012b1b4  mov     x20, x0
  10012b1b8  mov     x0, x21
  10012b1bc  bl      _objc_retain
  10012b1c0  mov     x21, x0
  10012b1c4  cbz     x21, loc_10012b230                       ; if (arg2 == 0)
  10012b1c8  adrp    x8, #0x10041c000
  10012b1cc  nop
  10012b1d0  ldr     x1, [x8, #0x188]
  10012b1d4  mov     x0, x19
  10012b1d8  bl      _objc_msgSend                            ; [self parameters]
  10012b1dc  mov     x29, x29
  10012b1e0  bl      _objc_retainAutoreleasedReturnValue
  10012b1e4  mov     x22, x0
  10012b1e8  adrp    x8, #0x10041e000
  10012b1ec  ldr     x0, [x8, #0x5d8]                         ; class GAIUtil
  10012b1f0  adrp    x8, #0x10041c000
  10012b1f4  nop
  10012b1f8  ldr     x1, [x8, #0x198]
  10012b1fc  mov     x2, x20
  10012b200  bl      _objc_msgSend                            ; [GAIUtil valueForNumber:arg1]
  10012b204  mov     x29, x29
  10012b208  bl      _objc_retainAutoreleasedReturnValue
  10012b20c  mov     x23, x0
  10012b210  adrp    x8, #0x100416000
  10012b214  nop
  10012b218  ldr     x1, [x8, #0xdc8]
  10012b21c  mov     x0, x22
  10012b220  mov     x2, x23
  10012b224  mov     x3, x21
  10012b228  bl      _objc_msgSend                            ; [[self parameters] setObject:[GAIUtil valueForNumber:arg1] forKey:arg2]
  10012b22c  b       loc_10012b288
loc_10012b230:
  10012b230  adrp    x8, #0x10041d000
  10012b234  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10012b238  adrp    x8, #0x100416000
  10012b23c  nop
  10012b240  ldr     x1, [x8, #0xac0]
  10012b244  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10012b248  mov     x29, x29
  10012b24c  bl      _objc_retainAutoreleasedReturnValue
  10012b250  mov     x22, x0
  10012b254  adrp    x8, #0x100419000
  10012b258  nop
  10012b25c  ldr     x1, [x8, #0xd20]
  10012b260  bl      _objc_msgSend                            ; [[GAI sharedInstance] logger]
  10012b264  mov     x29, x29
  10012b268  bl      _objc_retainAutoreleasedReturnValue
  10012b26c  mov     x23, x0
  10012b270  adrp    x8, #0x10041b000
  10012b274  nop
  10012b278  ldr     x1, [x8, #0xe90]
  10012b27c  adrp    x2, #0x1003c5000
  10012b280  add     x2, x2, #0x570                           ; @"nil key not allowed in setNumber"
  10012b284  bl      _objc_msgSend                            ; [[[GAI sharedInstance] logger] warning:@"nil key not allowed in setNumber"]
loc_10012b288:
  10012b288  mov     x0, x23
  10012b28c  bl      _objc_release
  10012b290  mov     x0, x22
  10012b294  bl      _objc_release
  10012b298  mov     x0, x21
  10012b29c  bl      _objc_release
  10012b2a0  mov     x0, x20
  10012b2a4  bl      _objc_release
  10012b2a8  mov     x0, x19
  10012b2ac  ldp     x24, x23, [sp], #0x10
  10012b2b0  ldp     x22, x21, [sp], #0x10
  10012b2b4  ldp     x20, x19, [sp], #0x10
  10012b2b8  ldp     x29, x30, [sp], #0x10
  10012b2bc  ret

; ======================================================================
; -[GAIEcommerceProductAction setAction:]
; address 0x10012b2c0  size 28  kind objc
; ======================================================================
  10012b2c0  adrp    x8, #0x1003b7000
  10012b2c4  add     x8, x8, #0xcd8                           ; &d_1003b7cd8
  10012b2c8  ldr     x3, [x8]                                 ; [&d_1003b7cd8] -> @"&pa"
  10012b2cc  adrp    x8, #0x10041c000
  10012b2d0  nop
  10012b2d4  ldr     x1, [x8, #0x1a0]
  10012b2d8  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&pa"]

; ======================================================================
; -[GAIEcommerceProductAction setTransactionId:]
; address 0x10012b2dc  size 28  kind objc
; ======================================================================
  10012b2dc  adrp    x8, #0x1003b7000
  10012b2e0  add     x8, x8, #0xce0                           ; &d_1003b7ce0
  10012b2e4  ldr     x3, [x8]                                 ; [&d_1003b7ce0] -> @"&ti"
  10012b2e8  adrp    x8, #0x10041c000
  10012b2ec  nop
  10012b2f0  ldr     x1, [x8, #0x1a0]
  10012b2f4  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&ti"]

; ======================================================================
; -[GAIEcommerceProductAction setAffiliation:]
; address 0x10012b2f8  size 28  kind objc
; ======================================================================
  10012b2f8  adrp    x8, #0x1003b7000
  10012b2fc  add     x8, x8, #0xce8                           ; &d_1003b7ce8
  10012b300  ldr     x3, [x8]                                 ; [&d_1003b7ce8] -> @"&ta"
  10012b304  adrp    x8, #0x10041c000
  10012b308  nop
  10012b30c  ldr     x1, [x8, #0x1a0]
  10012b310  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&ta"]

; ======================================================================
; -[GAIEcommerceProductAction setRevenue:]
; address 0x10012b314  size 28  kind objc
; ======================================================================
  10012b314  adrp    x8, #0x1003b7000
  10012b318  add     x8, x8, #0xcf0                           ; &d_1003b7cf0
  10012b31c  ldr     x3, [x8]                                 ; [&d_1003b7cf0] -> @"&tr"
  10012b320  adrp    x8, #0x10041c000
  10012b324  nop
  10012b328  ldr     x1, [x8, #0x1a8]
  10012b32c  b       _objc_msgSend                            ; [self setNumber:arg1 forKey:@"&tr"]

; ======================================================================
; -[GAIEcommerceProductAction setTax:]
; address 0x10012b330  size 28  kind objc
; ======================================================================
  10012b330  adrp    x8, #0x1003b7000
  10012b334  add     x8, x8, #0xcf8                           ; &d_1003b7cf8
  10012b338  ldr     x3, [x8]                                 ; [&d_1003b7cf8] -> @"&tt"
  10012b33c  adrp    x8, #0x10041c000
  10012b340  nop
  10012b344  ldr     x1, [x8, #0x1a8]
  10012b348  b       _objc_msgSend                            ; [self setNumber:arg1 forKey:@"&tt"]

; ======================================================================
; -[GAIEcommerceProductAction setShipping:]
; address 0x10012b34c  size 28  kind objc
; ======================================================================
  10012b34c  adrp    x8, #0x1003b7000
  10012b350  add     x8, x8, #0xd00                           ; &d_1003b7d00
  10012b354  ldr     x3, [x8]                                 ; [&d_1003b7d00] -> @"&ts"
  10012b358  adrp    x8, #0x10041c000
  10012b35c  nop
  10012b360  ldr     x1, [x8, #0x1a8]
  10012b364  b       _objc_msgSend                            ; [self setNumber:arg1 forKey:@"&ts"]

; ======================================================================
; -[GAIEcommerceProductAction setCouponCode:]
; address 0x10012b368  size 28  kind objc
; ======================================================================
  10012b368  adrp    x8, #0x1003b7000
  10012b36c  add     x8, x8, #0xd08                           ; &d_1003b7d08
  10012b370  ldr     x3, [x8]                                 ; [&d_1003b7d08] -> @"&tcc"
  10012b374  adrp    x8, #0x10041c000
  10012b378  nop
  10012b37c  ldr     x1, [x8, #0x1a0]
  10012b380  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&tcc"]

; ======================================================================
; -[GAIEcommerceProductAction setCheckoutStep:]
; address 0x10012b384  size 28  kind objc
; ======================================================================
  10012b384  adrp    x8, #0x1003b7000
  10012b388  add     x8, x8, #0xd10                           ; &d_1003b7d10
  10012b38c  ldr     x3, [x8]                                 ; [&d_1003b7d10] -> @"&cos"
  10012b390  adrp    x8, #0x10041c000
  10012b394  nop
  10012b398  ldr     x1, [x8, #0x1a8]
  10012b39c  b       _objc_msgSend                            ; [self setNumber:arg1 forKey:@"&cos"]

; ======================================================================
; -[GAIEcommerceProductAction setCheckoutOption:]
; address 0x10012b3a0  size 28  kind objc
; ======================================================================
  10012b3a0  adrp    x8, #0x1003b7000
  10012b3a4  add     x8, x8, #0xd18                           ; &d_1003b7d18
  10012b3a8  ldr     x3, [x8]                                 ; [&d_1003b7d18] -> @"&col"
  10012b3ac  adrp    x8, #0x10041c000
  10012b3b0  nop
  10012b3b4  ldr     x1, [x8, #0x1a0]
  10012b3b8  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&col"]

; ======================================================================
; -[GAIEcommerceProductAction setProductActionList:]
; address 0x10012b3bc  size 28  kind objc
; ======================================================================
  10012b3bc  adrp    x8, #0x1003b7000
  10012b3c0  add     x8, x8, #0xd20                           ; &d_1003b7d20
  10012b3c4  ldr     x3, [x8]                                 ; [&d_1003b7d20] -> @"&pal"
  10012b3c8  adrp    x8, #0x10041c000
  10012b3cc  nop
  10012b3d0  ldr     x1, [x8, #0x1a0]
  10012b3d4  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&pal"]

; ======================================================================
; -[GAIEcommerceProductAction setProductListSource:]
; address 0x10012b3d8  size 28  kind objc
; ======================================================================
  10012b3d8  adrp    x8, #0x1003b7000
  10012b3dc  add     x8, x8, #0xd28                           ; &d_1003b7d28
  10012b3e0  ldr     x3, [x8]                                 ; [&d_1003b7d28] -> @"&pls"
  10012b3e4  adrp    x8, #0x10041c000
  10012b3e8  nop
  10012b3ec  ldr     x1, [x8, #0x1a0]
  10012b3f0  b       _objc_msgSend                            ; [self setString:arg1 forKey:@"&pls"]

; ======================================================================
; -[GAIEcommerceProductAction build]
; address 0x10012b3f4  size 16  kind objc
; ======================================================================
  10012b3f4  adrp    x8, #0x10041c000
  10012b3f8  nop
  10012b3fc  ldr     x1, [x8, #0x188]
  10012b400  b       _objc_msgSend                            ; [self parameters]

; ======================================================================
; -[GAIEcommerceProductAction parameters]
; address 0x10012b404  size 16  kind objc
; ======================================================================
  10012b404  adrp    x8, #0x100420000
  10012b408  ldrsw   x8, [x8, #0x8fc]                         ; ivar offset GAIEcommerceProductAction._parameters (+0x8)
  10012b40c  ldr     x0, [x0, x8]                             ; x0 = self->_parameters
  10012b410  ret

; ======================================================================
; -[GAIEcommerceProductAction setParameters:]
; address 0x10012b414  size 56  kind objc
; ======================================================================
  10012b414  stp     x29, x30, [sp, #-0x10]!
  10012b418  mov     x29, sp
  10012b41c  stp     x20, x19, [sp, #-0x10]!
  10012b420  mov     x19, x0
  10012b424  adrp    x8, #0x100420000
  10012b428  ldrsw   x20, [x8, #0x8fc]                        ; ivar offset GAIEcommerceProductAction._parameters (+0x8)
  10012b42c  mov     x0, x2
  10012b430  bl      _objc_retain
  10012b434  ldr     x8, [x19, x20]                           ; x8 = self->_parameters
  10012b438  str     x0, [x19, x20]                           ; self->_parameters = arg1
  10012b43c  mov     x0, x8
  10012b440  ldp     x20, x19, [sp], #0x10
  10012b444  ldp     x29, x30, [sp], #0x10
  10012b448  b       _objc_release

; ======================================================================
; -[GAIEcommerceProductAction .cxx_destruct]
; address 0x10012b44c  size 20  kind objc
; ======================================================================
  10012b44c  mov     x1, #0
  10012b450  adrp    x8, #0x100420000
  10012b454  ldrsw   x8, [x8, #0x8fc]                         ; ivar offset GAIEcommerceProductAction._parameters (+0x8)
  10012b458  add     x0, x0, x8
  10012b45c  b       _objc_storeStrong
