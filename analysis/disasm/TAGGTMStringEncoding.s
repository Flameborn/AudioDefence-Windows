// unit TAGGTMStringEncoding — 20 functions
//   0x100114bd0      24  +[TAGGTMStringEncoding binaryStringEncoding]
//   0x100114be8      80  +[TAGGTMStringEncoding hexStringEncoding]
//   0x100114c38     100  +[TAGGTMStringEncoding rfc4648Base32StringEncoding]
//   0x100114c9c     100  +[TAGGTMStringEncoding rfc4648Base32HexStringEncoding]
//   0x100114d00      80  +[TAGGTMStringEncoding crockfordBase32StringEncoding]
//   0x100114d50     100  +[TAGGTMStringEncoding rfc4648Base64StringEncoding]
//   0x100114db4     100  +[TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding]
//   0x100114e18      76  +[TAGGTMStringEncoding stringEncodingWithString:]
//   0x100114e64     556  -[TAGGTMStringEncoding initWithString:]
//   0x100115090     100  -[TAGGTMStringEncoding dealloc]
//   0x1001150f4      96  -[TAGGTMStringEncoding description]
//   0x100115154     128  -[TAGGTMStringEncoding addDecodeSynonyms:]
//   0x1001151d4     280  -[TAGGTMStringEncoding ignoreCharacters:]
//   0x1001152ec      16  -[TAGGTMStringEncoding doPad]
//   0x1001152fc      16  -[TAGGTMStringEncoding setDoPad:]
//   0x10011530c      36  -[TAGGTMStringEncoding setPaddingChar:]
//   0x100115330     656  -[TAGGTMStringEncoding encode:]
//   0x1001155c0      76  -[TAGGTMStringEncoding encodeString:]
//   0x10011560c     536  -[TAGGTMStringEncoding decode:]
//   0x100115824     104  -[TAGGTMStringEncoding stringByDecoding:]

; ======================================================================
; +[TAGGTMStringEncoding binaryStringEncoding]
; address 0x100114bd0  size 24  kind objc
; ======================================================================
  100114bd0  adrp    x8, #0x10041b000
  100114bd4  nop
  100114bd8  ldr     x1, [x8, #0xd38]
  100114bdc  adrp    x2, #0x1003c4000
  100114be0  add     x2, x2, #0x250                           ; @"01"
  100114be4  b       _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"01"]

; ======================================================================
; +[TAGGTMStringEncoding hexStringEncoding]
; address 0x100114be8  size 80  kind objc
; ======================================================================
  100114be8  stp     x29, x30, [sp, #-0x10]!
  100114bec  mov     x29, sp
  100114bf0  stp     x20, x19, [sp, #-0x10]!
  100114bf4  adrp    x8, #0x10041b000
  100114bf8  nop
  100114bfc  ldr     x1, [x8, #0xd38]
  100114c00  adrp    x2, #0x1003c4000
  100114c04  add     x2, x2, #0x270                           ; @"0123456789ABCDEF"
  100114c08  bl      _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEF"]
  100114c0c  mov     x19, x0
  100114c10  adrp    x8, #0x10041b000
  100114c14  nop
  100114c18  ldr     x1, [x8, #0xd40]
  100114c1c  adrp    x2, #0x1003c4000
  100114c20  add     x2, x2, #0x290                           ; @"AaBbCcDdEeFf"
  100114c24  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEF"] addDecodeSynonyms:@"AaBbCcDdEeFf"]
  100114c28  mov     x0, x19
  100114c2c  ldp     x20, x19, [sp], #0x10
  100114c30  ldp     x29, x30, [sp], #0x10
  100114c34  ret

; ======================================================================
; +[TAGGTMStringEncoding rfc4648Base32StringEncoding]
; address 0x100114c38  size 100  kind objc
; ======================================================================
  100114c38  stp     x29, x30, [sp, #-0x10]!
  100114c3c  mov     x29, sp
  100114c40  stp     x20, x19, [sp, #-0x10]!
  100114c44  adrp    x8, #0x10041b000
  100114c48  nop
  100114c4c  ldr     x1, [x8, #0xd38]
  100114c50  adrp    x2, #0x1003c4000
  100114c54  add     x2, x2, #0x2b0                           ; @"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"
  100114c58  bl      _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"]
  100114c5c  mov     x19, x0
  100114c60  adrp    x8, #0x10041b000
  100114c64  nop
  100114c68  ldr     x1, [x8, #0xd48]
  100114c6c  mov     w2, #0x3d
  100114c70  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"] setPaddingChar:61]
  100114c74  adrp    x8, #0x10041b000
  100114c78  nop
  100114c7c  ldr     x1, [x8, #0xd50]
  100114c80  mov     w2, #1
  100114c84  mov     x0, x19
  100114c88  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"] setDoPad:1]
  100114c8c  mov     x0, x19
  100114c90  ldp     x20, x19, [sp], #0x10
  100114c94  ldp     x29, x30, [sp], #0x10
  100114c98  ret

; ======================================================================
; +[TAGGTMStringEncoding rfc4648Base32HexStringEncoding]
; address 0x100114c9c  size 100  kind objc
; ======================================================================
  100114c9c  stp     x29, x30, [sp, #-0x10]!
  100114ca0  mov     x29, sp
  100114ca4  stp     x20, x19, [sp, #-0x10]!
  100114ca8  adrp    x8, #0x10041b000
  100114cac  nop
  100114cb0  ldr     x1, [x8, #0xd38]
  100114cb4  adrp    x2, #0x1003c4000
  100114cb8  add     x2, x2, #0x2d0                           ; @"0123456789ABCDEFGHIJKLMNOPQRSTUV"
  100114cbc  bl      _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEFGHIJKLMNOPQRSTUV"]
  100114cc0  mov     x19, x0
  100114cc4  adrp    x8, #0x10041b000
  100114cc8  nop
  100114ccc  ldr     x1, [x8, #0xd48]
  100114cd0  mov     w2, #0x3d
  100114cd4  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEFGHIJKLMNOPQRSTUV"] setPaddingChar:61]
  100114cd8  adrp    x8, #0x10041b000
  100114cdc  nop
  100114ce0  ldr     x1, [x8, #0xd50]
  100114ce4  mov     w2, #1
  100114ce8  mov     x0, x19
  100114cec  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEFGHIJKLMNOPQRSTUV"] setDoPad:1]
  100114cf0  mov     x0, x19
  100114cf4  ldp     x20, x19, [sp], #0x10
  100114cf8  ldp     x29, x30, [sp], #0x10
  100114cfc  ret

; ======================================================================
; +[TAGGTMStringEncoding crockfordBase32StringEncoding]
; address 0x100114d00  size 80  kind objc
; ======================================================================
  100114d00  stp     x29, x30, [sp, #-0x10]!
  100114d04  mov     x29, sp
  100114d08  stp     x20, x19, [sp, #-0x10]!
  100114d0c  adrp    x8, #0x10041b000
  100114d10  nop
  100114d14  ldr     x1, [x8, #0xd38]
  100114d18  adrp    x2, #0x1003c4000
  100114d1c  add     x2, x2, #0x2f0                           ; @"0123456789ABCDEFGHJKMNPQRSTVWXYZ"
  100114d20  bl      _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEFGHJKMNPQRSTVWXYZ"]
  100114d24  mov     x19, x0
  100114d28  adrp    x8, #0x10041b000
  100114d2c  nop
  100114d30  ldr     x1, [x8, #0xd40]
  100114d34  adrp    x2, #0x1003c4000
  100114d38  add     x2, x2, #0x310                           ; @"0oO1iIlLAaBbCcDdEeFfGgHhJjKkMmNnPpQqRrSsTtVvWwXxYyZz"
  100114d3c  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"0123456789ABCDEFGHJKMNPQRSTVWXYZ"] addDecodeSynonyms:@"0oO1iIlLAaBbCcDdEeFfGgHhJjKkMmNnPpQqRrSsTtVvWwXxYyZz"]
  100114d40  mov     x0, x19
  100114d44  ldp     x20, x19, [sp], #0x10
  100114d48  ldp     x29, x30, [sp], #0x10
  100114d4c  ret

; ======================================================================
; +[TAGGTMStringEncoding rfc4648Base64StringEncoding]
; address 0x100114d50  size 100  kind objc
; ======================================================================
  100114d50  stp     x29, x30, [sp, #-0x10]!
  100114d54  mov     x29, sp
  100114d58  stp     x20, x19, [sp, #-0x10]!
  100114d5c  adrp    x8, #0x10041b000
  100114d60  nop
  100114d64  ldr     x1, [x8, #0xd38]
  100114d68  adrp    x2, #0x1003c4000
  100114d6c  add     x2, x2, #0x330                           ; @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  100114d70  bl      _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"]
  100114d74  mov     x19, x0
  100114d78  adrp    x8, #0x10041b000
  100114d7c  nop
  100114d80  ldr     x1, [x8, #0xd48]
  100114d84  mov     w2, #0x3d
  100114d88  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"] setPaddingChar:61]
  100114d8c  adrp    x8, #0x10041b000
  100114d90  nop
  100114d94  ldr     x1, [x8, #0xd50]
  100114d98  mov     w2, #1
  100114d9c  mov     x0, x19
  100114da0  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"] setDoPad:1]
  100114da4  mov     x0, x19
  100114da8  ldp     x20, x19, [sp], #0x10
  100114dac  ldp     x29, x30, [sp], #0x10
  100114db0  ret

; ======================================================================
; +[TAGGTMStringEncoding rfc4648Base64WebsafeStringEncoding]
; address 0x100114db4  size 100  kind objc
; ======================================================================
  100114db4  stp     x29, x30, [sp, #-0x10]!
  100114db8  mov     x29, sp
  100114dbc  stp     x20, x19, [sp, #-0x10]!
  100114dc0  adrp    x8, #0x10041b000
  100114dc4  nop
  100114dc8  ldr     x1, [x8, #0xd38]
  100114dcc  adrp    x2, #0x1003c4000
  100114dd0  add     x2, x2, #0x350                           ; @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
  100114dd4  bl      _objc_msgSend                            ; [TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"]
  100114dd8  mov     x19, x0
  100114ddc  adrp    x8, #0x10041b000
  100114de0  nop
  100114de4  ldr     x1, [x8, #0xd48]
  100114de8  mov     w2, #0x3d
  100114dec  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"] setPaddingChar:61]
  100114df0  adrp    x8, #0x10041b000
  100114df4  nop
  100114df8  ldr     x1, [x8, #0xd50]
  100114dfc  mov     w2, #1
  100114e00  mov     x0, x19
  100114e04  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding stringEncodingWithString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"] setDoPad:1]
  100114e08  mov     x0, x19
  100114e0c  ldp     x20, x19, [sp], #0x10
  100114e10  ldp     x29, x30, [sp], #0x10
  100114e14  ret

; ======================================================================
; +[TAGGTMStringEncoding stringEncodingWithString:]
; address 0x100114e18  size 76  kind objc
; ======================================================================
  100114e18  stp     x29, x30, [sp, #-0x10]!
  100114e1c  mov     x29, sp
  100114e20  stp     x20, x19, [sp, #-0x10]!
  100114e24  mov     x19, x2
  100114e28  adrp    x8, #0x100416000
  100114e2c  nop
  100114e30  ldr     x1, [x8, #0xac8]
  100114e34  bl      _objc_msgSend                            ; [TAGGTMStringEncoding alloc]
  100114e38  adrp    x8, #0x100417000
  100114e3c  nop
  100114e40  ldr     x1, [x8, #0xb20]
  100114e44  mov     x2, x19
  100114e48  bl      _objc_msgSend                            ; [[TAGGTMStringEncoding alloc] initWithString:arg1]
  100114e4c  adrp    x8, #0x10041b000
  100114e50  nop
  100114e54  ldr     x1, [x8, #0xe88]
  100114e58  ldp     x20, x19, [sp], #0x10
  100114e5c  ldp     x29, x30, [sp], #0x10
  100114e60  b       _objc_msgSend                            ; [[[TAGGTMStringEncoding alloc] initWithString:arg1] autorelease]

; ======================================================================
; -[TAGGTMStringEncoding initWithString:]
; address 0x100114e64  size 556  kind objc
; ======================================================================
  100114e64  stp     x29, x30, [sp, #-0x10]!
  100114e68  mov     x29, sp
  100114e6c  stp     x20, x19, [sp, #-0x10]!
  100114e70  stp     x22, x21, [sp, #-0x10]!
  100114e74  sub     sp, sp, #0x10
  100114e78  mov     x20, x2
  100114e7c  str     x0, [sp]
  100114e80  adrp    x8, #0x10041f000
  100114e84  ldr     x8, [x8, #0xa8]
  100114e88  str     x8, [sp, #8]
  100114e8c  adrp    x8, #0x100416000
  100114e90  nop
  100114e94  ldr     x1, [x8, #0xab8]
  100114e98  mov     x0, sp
  100114e9c  bl      _objc_msgSendSuper2                      ; [super init]
  100114ea0  mov     x19, x0
  100114ea4  cbz     x19, loc_100114fcc                       ; if (self == 0)
  100114ea8  adrp    x8, #0x10041b000
  100114eac  nop
  100114eb0  ldr     x1, [x8, #0x358]
  100114eb4  mov     x2, #1
  100114eb8  mov     x0, x20
  100114ebc  bl      _objc_msgSend                            ; [arg1 dataUsingEncoding:1]
  100114ec0  adrp    x8, #0x10041b000
  100114ec4  nop
  100114ec8  ldr     x1, [x8, #0xdb8]
  100114ecc  bl      _objc_msgSend                            ; [[arg1 dataUsingEncoding:1] retain]
  100114ed0  adrp    x20, #0x100420000
  100114ed4  ldrsw   x8, [x20, #0x7c0]                        ; ivar offset TAGGTMStringEncoding.charMapData_ (+0x8)
  100114ed8  str     x0, [x19, x8]                            ; self->charMapData_ = [[arg1 dataUsingEncoding:1] retain]
  100114edc  cbz     x0, loc_100114fb8                        ; if ([[arg1 dataUsingEncoding:1] retain] == 0)
  100114ee0  adrp    x8, #0x10041c000
  100114ee4  nop
  100114ee8  ldr     x1, [x8, #0x490]
  100114eec  bl      _objc_msgSend                            ; [[[arg1 dataUsingEncoding:1] retain] bytes]
  100114ef0  adrp    x8, #0x100420000
  100114ef4  ldrsw   x22, [x8, #0x7c4]                        ; ivar offset TAGGTMStringEncoding.charMap_ (+0x10)
  100114ef8  str     x0, [x19, x22]                           ; self->charMap_ = [[[arg1 dataUsingEncoding:1] retain] bytes]
  100114efc  ldrsw   x8, [x20, #0x7c0]                        ; ivar offset TAGGTMStringEncoding.charMapData_ (+0x8)
  100114f00  ldr     x0, [x19, x8]                            ; x0 = self->charMapData_
  100114f04  adrp    x8, #0x100417000
  100114f08  nop
  100114f0c  ldr     x1, [x8, #0xc58]
  100114f10  bl      _objc_msgSend                            ; [self->charMapData_ length]
  100114f14  mov     x20, x0
  100114f18  sub     x8, x20, #2
  100114f1c  cmp     x8, #0x7e
  100114f20  b.hi    loc_100114fb8                            ; if (([self->charMapData_ length] - 2) >u 126)
  100114f24  sub     x8, x20, #1
  100114f28  and     x8, x8, x20
  100114f2c  cbnz    x8, loc_100114fb8                        ; if ((([self->charMapData_ length] - 1) & [self->charMapData_ length]) != 0)
  100114f30  adrp    x8, #0x100420000
  100114f34  ldrsw   x8, [x8, #0x7c8]                         ; ivar offset TAGGTMStringEncoding.reverseCharMap_ (+0x18)
  100114f38  add     x21, x19, x8
  100114f3c  mov     w1, #0xff
  100114f40  mov     x2, #0x200
  100114f44  mov     x0, x21
  100114f48  bl      _memset                                  ; memset(x0, 255, 512)
  100114f4c  cbz     x20, loc_100114fe8                       ; if ([self->charMapData_ length] == 0)
  100114f50  mov     x9, #0
  100114f54  mov     w8, #0
loc_100114f58:
  100114f58  ldr     x10, [x19, x22]                          ; x10 = self->charMap_
  100114f5c  ldrsb   x9, [x10, x9]
  100114f60  ldr     w10, [x21, x9, lsl #2]
  100114f64  cmn     w10, #1
  100114f68  b.ne    loc_100114fb8                            ; if (w10 != -1)
  100114f6c  str     w8, [x21, x9, lsl #2]
  100114f70  add     w9, w8, #1
  100114f74  cmp     x9, x20
  100114f78  mov     x8, x9
  100114f7c  b.lo    loc_100114f58                            ; if ((w8 + 1) <u [self->charMapData_ length])
  100114f80  adrp    x10, #0x100420000
  100114f84  ldr     w9, [x10, #0x7cc]                        ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  100114f88  ldr     w8, [x19, w9, sxtw]                      ; w8 = self->shift_
  100114f8c  cmp     x20, #1
  100114f90  b.ls    loc_100114ff4                            ; if ([self->charMapData_ length] <=u 1)
  100114f94  sxtw    x9, w9
  100114f98  mov     x11, #1
loc_100114f9c:
  100114f9c  add     w8, w8, #1
  100114fa0  str     w8, [x19, x9]                            ; self->shift_ = (w8 + 1)
  100114fa4  lsl     x11, x11, #1
  100114fa8  cmp     x11, x20
  100114fac  b.lo    loc_100114f9c                            ; if ((x11 << 1) <u [self->charMapData_ length])
  100114fb0  ldr     w9, [x10, #0x7cc]                        ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  100114fb4  b       loc_100114ff4
loc_100114fb8:
  100114fb8  adrp    x8, #0x10041b000
  100114fbc  nop
  100114fc0  ldr     x1, [x8, #0xd70]
  100114fc4  mov     x0, x19
  100114fc8  bl      _objc_msgSend                            ; [self release]
loc_100114fcc:
  100114fcc  mov     x19, #0
loc_100114fd0:
  100114fd0  mov     x0, x19
  100114fd4  sub     sp, x29, #0x20
  100114fd8  ldp     x22, x21, [sp], #0x10
  100114fdc  ldp     x20, x19, [sp], #0x10
  100114fe0  ldp     x29, x30, [sp], #0x10
  100114fe4  ret
loc_100114fe8:
  100114fe8  adrp    x8, #0x100420000
  100114fec  ldrsw   x9, [x8, #0x7cc]                         ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  100114ff0  ldr     w8, [x19, x9]                            ; w8 = self->shift_
loc_100114ff4:
  100114ff4  mov     w10, #1
  100114ff8  lsl     w8, w10, w8
  100114ffc  sub     w8, w8, #1
  100115000  adrp    x10, #0x100420000
  100115004  ldrsw   x10, [x10, #0x7d0]                       ; ivar offset TAGGTMStringEncoding.mask_ (+0x21c)
  100115008  str     w8, [x19, x10]                           ; self->mask_ = ((1 << w8) - 1)
  10011500c  ldr     w9, [x19, w9, sxtw]                      ; w9 = self->shift_
  100115010  mov     w8, #8
  100115014  cmp     w9, #8
  100115018  b.ne    loc_100115024                            ; if (self->shift_ != 8)
  10011501c  mov     w10, #8
  100115020  b       loc_100115070
loc_100115024:
  100115024  mov     w11, #0
  100115028  mov     x10, x9
loc_10011502c:
  10011502c  mov     w12, #0
  100115030  sub     w13, w11, w10
  100115034  add     w14, w13, #8
loc_100115038:
  100115038  cmp     w8, w10
  10011503c  b.lt    loc_100115054                            ; if (w8 < w10)
  100115040  add     w10, w10, w9
  100115044  add     w12, w12, w9
  100115048  cmp     w14, w12
  10011504c  b.ne    loc_100115038                            ; if (w14 != (w12 + self->shift_))
  100115050  b       loc_10011506c
loc_100115054:
  100115054  add     w8, w8, #8
  100115058  add     w13, w13, #0x10
  10011505c  add     w11, w11, #8
  100115060  cmp     w13, w12
  100115064  b.ne    loc_10011502c                            ; if ((w13 + 16) != w12)
  100115068  b       loc_100115070
loc_10011506c:
  10011506c  mov     x10, x8
loc_100115070:
  100115070  adrp    x8, #0x100420000
  100115074  ldrsw   x8, [x8, #0x7cc]                         ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  100115078  ldr     w8, [x19, x8]                            ; w8 = self->shift_
  10011507c  sdiv    w8, w10, w8
  100115080  adrp    x9, #0x100420000
  100115084  ldrsw   x9, [x9, #0x7d4]                         ; ivar offset TAGGTMStringEncoding.padLen_ (+0x224)
  100115088  str     w8, [x19, x9]                            ; self->padLen_ = (w10 / self->shift_)
  10011508c  b       loc_100114fd0

; ======================================================================
; -[TAGGTMStringEncoding dealloc]
; address 0x100115090  size 100  kind objc
; ======================================================================
  100115090  stp     x29, x30, [sp, #-0x10]!
  100115094  mov     x29, sp
  100115098  stp     x20, x19, [sp, #-0x10]!
  10011509c  sub     sp, sp, #0x10
  1001150a0  mov     x19, x0
  1001150a4  adrp    x8, #0x100420000
  1001150a8  ldrsw   x8, [x8, #0x7c0]                         ; ivar offset TAGGTMStringEncoding.charMapData_ (+0x8)
  1001150ac  ldr     x0, [x19, x8]                            ; x0 = self->charMapData_
  1001150b0  adrp    x8, #0x10041b000
  1001150b4  nop
  1001150b8  ldr     x1, [x8, #0xd70]
  1001150bc  bl      _objc_msgSend                            ; [self->charMapData_ release]
  1001150c0  str     x19, [sp]
  1001150c4  adrp    x8, #0x10041f000
  1001150c8  ldr     x8, [x8, #0xa8]
  1001150cc  str     x8, [sp, #8]
  1001150d0  adrp    x8, #0x100416000
  1001150d4  nop
  1001150d8  ldr     x1, [x8, #0xfc8]
  1001150dc  mov     x0, sp
  1001150e0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001150e4  sub     sp, x29, #0x10
  1001150e8  ldp     x20, x19, [sp], #0x10
  1001150ec  ldp     x29, x30, [sp], #0x10
  1001150f0  ret

; ======================================================================
; -[TAGGTMStringEncoding description]
; address 0x1001150f4  size 96  kind objc
; ======================================================================
  1001150f4  stp     x29, x30, [sp, #-0x10]!
  1001150f8  mov     x29, sp
  1001150fc  sub     sp, sp, #0x10
  100115100  adrp    x9, #0x100420000
  100115104  adrp    x8, #0x10041d000
  100115108  mov     w10, #1
  10011510c  ldr     x8, [x8, #0xf78]                         ; class NSString
  100115110  ldrsw   x9, [x9, #0x7cc]                         ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  100115114  ldr     w9, [x0, x9]                             ; w9 = self->shift_
  100115118  lsl     w9, w10, w9
  10011511c  adrp    x10, #0x100420000
  100115120  ldrsw   x10, [x10, #0x7c0]                       ; ivar offset TAGGTMStringEncoding.charMapData_ (+0x8)
  100115124  ldr     x10, [x0, x10]                           ; x10 = self->charMapData_
  100115128  adrp    x11, #0x100416000
  10011512c  nop
  100115130  ldr     x1, [x11, #0xee8]
  100115134  stp     x9, x10, [sp]
  100115138  adrp    x2, #0x1003c4000
  10011513c  add     x2, x2, #0x370                           ; @"<Base%d StringEncoder: %@>"
  100115140  mov     x0, x8
  100115144  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"<Base%d StringEncoder: %@>", (1 << self->shift_), self->charMapData_]
  100115148  mov     sp, x29
  10011514c  ldp     x29, x30, [sp], #0x10
  100115150  ret

; ======================================================================
; -[TAGGTMStringEncoding addDecodeSynonyms:]
; address 0x100115154  size 128  kind objc
; ======================================================================
  100115154  stp     x29, x30, [sp, #-0x10]!
  100115158  mov     x29, sp
  10011515c  stp     x20, x19, [sp, #-0x10]!
  100115160  mov     x8, x2
  100115164  mov     x19, x0
  100115168  adrp    x9, #0x10041b000
  10011516c  nop
  100115170  ldr     x1, [x9, #0xd58]
  100115174  mov     x2, #1
  100115178  mov     x0, x8
  10011517c  bl      _objc_msgSend                            ; [arg1 cStringUsingEncoding:1]
  100115180  ldrb    w9, [x0]                                 ; w9 = [arg1 cStringUsingEncoding:1][+0x0]
  100115184  cbz     w9, loc_1001151c8                        ; if ([arg1 cStringUsingEncoding:1][+0x0] == 0)
  100115188  adrp    x8, #0x100420000
  10011518c  ldrsw   x8, [x8, #0x7c8]                         ; ivar offset TAGGTMStringEncoding.reverseCharMap_ (+0x18)
  100115190  add     x8, x19, x8
  100115194  mov     w10, #-1
loc_100115198:
  100115198  add     x0, x0, #1
loc_10011519c:
  10011519c  sxtb    x9, w9
  1001151a0  ldr     w11, [x8, x9, lsl #2]
  1001151a4  cmn     w11, #1
  1001151a8  b.ne    loc_1001151bc                            ; if (w11 != -1)
  1001151ac  str     w10, [x8, x9, lsl #2]
  1001151b0  ldrb    w9, [x0], #1
  1001151b4  cbnz    w9, loc_10011519c                        ; if (w9 != 0)
  1001151b8  b       loc_1001151c8
loc_1001151bc:
  1001151bc  ldrb    w9, [x0]
  1001151c0  mov     x10, x11
  1001151c4  cbnz    w9, loc_100115198                        ; if (w9 != 0)
loc_1001151c8:
  1001151c8  ldp     x20, x19, [sp], #0x10
  1001151cc  ldp     x29, x30, [sp], #0x10
  1001151d0  ret

; ======================================================================
; -[TAGGTMStringEncoding ignoreCharacters:]
; address 0x1001151d4  size 280  kind objc
; ======================================================================
  1001151d4  stp     x29, x30, [sp, #-0x10]!
  1001151d8  mov     x29, sp
  1001151dc  stp     x20, x19, [sp, #-0x10]!
  1001151e0  stp     x22, x21, [sp, #-0x10]!
  1001151e4  stp     x24, x23, [sp, #-0x10]!
  1001151e8  stp     x26, x25, [sp, #-0x10]!
  1001151ec  stp     x28, x27, [sp, #-0x10]!
  1001151f0  mov     x8, x2
  1001151f4  mov     x23, x0
  1001151f8  adrp    x9, #0x10041b000
  1001151fc  nop
  100115200  ldr     x1, [x9, #0xd58]
  100115204  mov     x2, #1
  100115208  mov     x0, x8
  10011520c  bl      _objc_msgSend                            ; [arg1 cStringUsingEncoding:1]
  100115210  ldrb    w8, [x0]                                 ; w8 = [arg1 cStringUsingEncoding:1][+0x0]
  100115214  cbz     w8, loc_1001152d0                        ; if ([arg1 cStringUsingEncoding:1][+0x0] == 0)
  100115218  adrp    x9, #0x10041c000
  10011521c  add     x9, x9, #0x470                           ; &@selector(currentHandler)
  100115220  adrp    x10, #0x10041c000
  100115224  add     x10, x10, #0x478                         ; &@selector(stringWithUTF8String:)
  100115228  adrp    x11, #0x100420000
  10011522c  adrp    x12, #0x10041c000
  100115230  add     x12, x12, #0x520                         ; &@selector(handleFailureInFunction:file:lineNumber:description:)
  100115234  add     x27, x0, #1
  100115238  mov     w28, #-3
  10011523c  adrp    x22, #0x10041d000
  100115240  ldrsw   x11, [x11, #0x7c8]                       ; ivar offset TAGGTMStringEncoding.reverseCharMap_ (+0x18)
  100115244  ldr     x19, [x9]
  100115248  ldr     x20, [x10]
  10011524c  ldr     x21, [x12]
  100115250  add     x23, x23, x11
loc_100115254:
  100115254  sxtb    x24, w8
  100115258  ldr     w8, [x23, x24, lsl #2]
  10011525c  cmn     w8, #1
  100115260  b.eq    loc_1001152c4                            ; if (w8 == -1)
  100115264  adrp    x8, #0x10041e000
  100115268  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  10011526c  mov     x1, x19
  100115270  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  100115274  mov     x25, x0
  100115278  ldr     x0, [x22, #0xf78]                        ; class NSString
  10011527c  mov     x1, x20
  100115280  adrp    x2, #0x10038f000
  100115284  add     x2, x2, #0x912                           ; "-[TAGGTMStringEncoding ignoreCharacters:]"
  100115288  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGGTMStringEncoding ignoreCharacters:]"]
  10011528c  mov     x26, x0
  100115290  ldr     x0, [x22, #0xf78]                        ; class NSString
  100115294  mov     x1, x20
  100115298  adrp    x2, #0x10038f000
  10011529c  add     x2, x2, #0x93c                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001152a0  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  1001152a4  mov     x3, x0
  1001152a8  mov     x4, #0xa1
  1001152ac  mov     x0, x25
  1001152b0  mov     x1, x21
  1001152b4  mov     x2, x26
  1001152b8  adrp    x5, #0x1003c4000
  1001152bc  add     x5, x5, #0x390                           ; @"Character already mapped"
  1001152c0  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGGTMStringEncoding ignoreCharacters:]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:161 description:@"Character already mapped"]
loc_1001152c4:
  1001152c4  str     w28, [x23, x24, lsl #2]
  1001152c8  ldrb    w8, [x27], #1
  1001152cc  cbnz    w8, loc_100115254                        ; if (w8 != 0)
loc_1001152d0:
  1001152d0  ldp     x28, x27, [sp], #0x10
  1001152d4  ldp     x26, x25, [sp], #0x10
  1001152d8  ldp     x24, x23, [sp], #0x10
  1001152dc  ldp     x22, x21, [sp], #0x10
  1001152e0  ldp     x20, x19, [sp], #0x10
  1001152e4  ldp     x29, x30, [sp], #0x10
  1001152e8  ret

; ======================================================================
; -[TAGGTMStringEncoding doPad]
; address 0x1001152ec  size 16  kind objc
; ======================================================================
  1001152ec  adrp    x8, #0x100420000
  1001152f0  ldrsw   x8, [x8, #0x7d8]                         ; ivar offset TAGGTMStringEncoding.doPad_ (+0x220)
  1001152f4  ldrb    w0, [x0, x8]                             ; w0 = self->doPad_
  1001152f8  ret

; ======================================================================
; -[TAGGTMStringEncoding setDoPad:]
; address 0x1001152fc  size 16  kind objc
; ======================================================================
  1001152fc  adrp    x8, #0x100420000
  100115300  ldrsw   x8, [x8, #0x7d8]                         ; ivar offset TAGGTMStringEncoding.doPad_ (+0x220)
  100115304  strb    w2, [x0, x8]                             ; self->doPad_ = arg1
  100115308  ret

; ======================================================================
; -[TAGGTMStringEncoding setPaddingChar:]
; address 0x10011530c  size 36  kind objc
; ======================================================================
  10011530c  adrp    x8, #0x100420000
  100115310  ldrsw   x8, [x8, #0x7dc]                         ; ivar offset TAGGTMStringEncoding.paddingChar_ (+0x221)
  100115314  strb    w2, [x0, x8]                             ; self->paddingChar_ = arg1
  100115318  adrp    x8, #0x100420000
  10011531c  ldrsw   x8, [x8, #0x7c8]                         ; ivar offset TAGGTMStringEncoding.reverseCharMap_ (+0x18)
  100115320  add     x8, x0, x8
  100115324  mov     w9, #-2
  100115328  str     w9, [x8, w2, sxtw #2]
  10011532c  ret

; ======================================================================
; -[TAGGTMStringEncoding encode:]
; address 0x100115330  size 656  kind objc
; ======================================================================
  100115330  stp     x29, x30, [sp, #-0x10]!
  100115334  mov     x29, sp
  100115338  stp     x20, x19, [sp, #-0x10]!
  10011533c  stp     x22, x21, [sp, #-0x10]!
  100115340  stp     x24, x23, [sp, #-0x10]!
  100115344  stp     x26, x25, [sp, #-0x10]!
  100115348  mov     x19, x2
  10011534c  mov     x20, x0
  100115350  adrp    x8, #0x100417000
  100115354  nop
  100115358  ldr     x1, [x8, #0xc58]
  10011535c  mov     x0, x19
  100115360  bl      _objc_msgSend                            ; [arg1 length]
  100115364  mov     x22, x0
  100115368  cbz     x22, loc_100115524                       ; if ([arg1 length] == 0)
  10011536c  adrp    x8, #0x10041c000
  100115370  nop
  100115374  ldr     x1, [x8, #0x490]
  100115378  mov     x0, x19
  10011537c  bl      _objc_msgSend                            ; [arg1 bytes]
  100115380  mov     x23, x0
  100115384  adrp    x8, #0x100420000
  100115388  ldrsw   x25, [x8, #0x7cc]                        ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  10011538c  ldrsw   x8, [x20, x25]                           ; x8 = self->shift_
  100115390  add     x9, x8, x22, lsl #3
  100115394  sub     x9, x9, #1
  100115398  udiv    x21, x9, x8
  10011539c  adrp    x8, #0x100420000
  1001153a0  ldrsw   x26, [x8, #0x7d8]                        ; ivar offset TAGGTMStringEncoding.doPad_ (+0x220)
  1001153a4  ldrb    w8, [x20, x26]                           ; w8 = self->doPad_
  1001153a8  cbz     w8, loc_1001153c8                        ; if (self->doPad_ == 0)
  1001153ac  adrp    x8, #0x100420000
  1001153b0  ldrsw   x8, [x8, #0x7d4]                         ; ivar offset TAGGTMStringEncoding.padLen_ (+0x224)
  1001153b4  ldrsw   x8, [x20, x8]                            ; x8 = self->padLen_
  1001153b8  add     x9, x21, x8
  1001153bc  sub     x9, x9, #1
  1001153c0  udiv    x9, x9, x8                               ; t1 = ((((((self->shift_ + ([arg1 length] << 3)) - 1) / self->shift_) + self->padLen_) - 1) / self->padLen_)
  1001153c4  mul     x21, x9, x8
loc_1001153c8:
  1001153c8  adrp    x8, #0x10041e000
  1001153cc  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  1001153d0  adrp    x8, #0x10041c000
  1001153d4  nop
  1001153d8  ldr     x1, [x8, #0x5b8]
  1001153dc  mov     x2, x21
  1001153e0  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:x2]
  1001153e4  mov     x19, x0
  1001153e8  adrp    x8, #0x10041c000
  1001153ec  nop
  1001153f0  ldr     x1, [x8, #0x5d0]
  1001153f4  bl      _objc_msgSend                            ; [[NSMutableData dataWithLength:x2] mutableBytes]
  1001153f8  mov     x24, #0
  1001153fc  ldrb    w8, [x23]                                ; w8 = [arg1 bytes][+0x0]
  100115400  cmp     x22, #1
  100115404  cset    w14, hi
  100115408  adrp    x9, #0x100420000
  10011540c  ldrsw   x9, [x9, #0x7d0]                         ; ivar offset TAGGTMStringEncoding.mask_ (+0x21c)
  100115410  adrp    x10, #0x100420000
  100115414  ldrsw   x10, [x10, #0x7c4]                       ; ivar offset TAGGTMStringEncoding.charMap_ (+0x10)
  100115418  mov     w11, #8
  10011541c  mov     x12, #1
loc_100115420:
  100115420  mov     x13, x24
  100115424  ldr     w15, [x20, x25]                          ; w15 = self->shift_
  100115428  cmp     w15, w11
  10011542c  b.le    loc_100115454                            ; if (self->shift_ <= w11)
  100115430  tbz     w14, #0, loc_100115448                   ; if (!(w14 & 1))
  100115434  ldrb    w14, [x23, x12]
  100115438  add     x12, x12, #1
  10011543c  orr     w8, w14, w8, lsl #8
  100115440  add     w11, w11, #8
  100115444  b       loc_100115454
loc_100115448:
  100115448  sub     w11, w15, w11
  10011544c  lsl     w8, w8, w11
  100115450  mov     x11, x15
loc_100115454:
  100115454  sub     w11, w11, w15
  100115458  asr     w14, w8, w11
  10011545c  ldr     w15, [x20, x9]                           ; w15 = self->mask_
  100115460  and     w14, w14, w15
  100115464  ldr     x15, [x20, x10]                          ; x15 = self->charMap_
  100115468  ldrb    w14, [x15, w14, sxtw]
  10011546c  add     x24, x13, #1
  100115470  strb    w14, [x0, x13]
  100115474  cmp     x12, x22
  100115478  cset    w14, lo
  10011547c  cmp     w11, #0
  100115480  ccmp    x12, x22, #0, le
  100115484  b.lo    loc_100115420                            ; if (flags <u)
  100115488  ldrb    w8, [x20, x26]                           ; w8 = self->doPad_
  10011548c  cmp     w8, #0
  100115490  ccmp    x24, x21, #2, ne
  100115494  b.lo    loc_100115530                            ; if (flags <u)
  100115498  cmp     x21, x24
  10011549c  b.eq    loc_100115550                            ; if (x21 == (x13 + 1))
  1001154a0  adrp    x8, #0x10041e000
  1001154a4  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  1001154a8  adrp    x8, #0x10041c000
  1001154ac  nop
  1001154b0  ldr     x1, [x8, #0x470]
  1001154b4  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  1001154b8  mov     x20, x0
  1001154bc  adrp    x23, #0x10041d000
  1001154c0  ldr     x0, [x23, #0xf78]                        ; class NSString
  1001154c4  adrp    x8, #0x10041c000
  1001154c8  nop
  1001154cc  ldr     x21, [x8, #0x478]
  1001154d0  adrp    x2, #0x10038f000
  1001154d4  add     x2, x2, #0xa13                           ; "-[TAGGTMStringEncoding encode:]"
  1001154d8  mov     x1, x21
  1001154dc  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGGTMStringEncoding encode:]"]
  1001154e0  mov     x22, x0
  1001154e4  ldr     x0, [x23, #0xf78]                        ; class NSString
  1001154e8  adrp    x2, #0x10038f000
  1001154ec  add     x2, x2, #0x93c                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001154f0  mov     x1, x21
  1001154f4  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  1001154f8  mov     x3, x0
  1001154fc  adrp    x8, #0x10041c000
  100115500  nop
  100115504  ldr     x1, [x8, #0x520]
  100115508  adrp    x5, #0x1003c4000
  10011550c  add     x5, x5, #0x3b0                           ; @"Underflowed output buffer"
  100115510  mov     x4, #0xdc
  100115514  mov     x0, x20
  100115518  mov     x2, x22
  10011551c  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGGTMStringEncoding encode:]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:220 description:@"Underflowed output buffer"]
  100115520  b       loc_100115550
loc_100115524:
  100115524  adrp    x0, #0x1003b9000
  100115528  add     x0, x0, #0x870                           ; @""
  10011552c  b       loc_1001155a8
loc_100115530:
  100115530  adrp    x8, #0x100420000
  100115534  ldrsw   x8, [x8, #0x7dc]                         ; ivar offset TAGGTMStringEncoding.paddingChar_ (+0x221)
loc_100115538:
  100115538  ldrb    w9, [x20, x8]                            ; w9 = self->paddingChar_
  10011553c  strb    w9, [x0, x24]
  100115540  add     x24, x24, #1
  100115544  cmp     x21, x24
  100115548  b.ne    loc_100115538                            ; if (x21 != (x24 + 1))
  10011554c  mov     x24, x21
loc_100115550:
  100115550  adrp    x8, #0x10041b000
  100115554  nop
  100115558  ldr     x1, [x8, #0xd60]
  10011555c  mov     x0, x19
  100115560  mov     x2, x24
  100115564  bl      _objc_msgSend                            ; [[NSMutableData dataWithLength:x2] setLength:x2]
  100115568  adrp    x8, #0x10041d000
  10011556c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100115570  adrp    x8, #0x100416000
  100115574  nop
  100115578  ldr     x1, [x8, #0xac8]
  10011557c  bl      _objc_msgSend                            ; [NSString alloc]
  100115580  adrp    x8, #0x10041b000
  100115584  nop
  100115588  ldr     x1, [x8, #0x2d0]
  10011558c  mov     x3, #1
  100115590  mov     x2, x19
  100115594  bl      _objc_msgSend                            ; [[NSString alloc] initWithData:[NSMutableData dataWithLength:x2] encoding:1]
  100115598  adrp    x8, #0x10041b000
  10011559c  nop
  1001155a0  ldr     x1, [x8, #0xe88]
  1001155a4  bl      _objc_msgSend                            ; [[[NSString alloc] initWithData:[NSMutableData dataWithLength:x2] encoding:1] autorelease]
loc_1001155a8:
  1001155a8  ldp     x26, x25, [sp], #0x10
  1001155ac  ldp     x24, x23, [sp], #0x10
  1001155b0  ldp     x22, x21, [sp], #0x10
  1001155b4  ldp     x20, x19, [sp], #0x10
  1001155b8  ldp     x29, x30, [sp], #0x10
  1001155bc  ret

; ======================================================================
; -[TAGGTMStringEncoding encodeString:]
; address 0x1001155c0  size 76  kind objc
; ======================================================================
  1001155c0  stp     x29, x30, [sp, #-0x10]!
  1001155c4  mov     x29, sp
  1001155c8  stp     x20, x19, [sp, #-0x10]!
  1001155cc  mov     x8, x2
  1001155d0  mov     x19, x0
  1001155d4  adrp    x9, #0x10041b000
  1001155d8  nop
  1001155dc  ldr     x1, [x9, #0x358]
  1001155e0  mov     x2, #4
  1001155e4  mov     x0, x8
  1001155e8  bl      _objc_msgSend                            ; [arg1 dataUsingEncoding:4]
  1001155ec  mov     x2, x0
  1001155f0  adrp    x8, #0x10041b000
  1001155f4  nop
  1001155f8  ldr     x1, [x8, #0x2c8]
  1001155fc  mov     x0, x19
  100115600  ldp     x20, x19, [sp], #0x10
  100115604  ldp     x29, x30, [sp], #0x10
  100115608  b       _objc_msgSend                            ; [self encode:[arg1 dataUsingEncoding:4]]

; ======================================================================
; -[TAGGTMStringEncoding decode:]
; address 0x10011560c  size 536  kind objc
; ======================================================================
  10011560c  stp     x29, x30, [sp, #-0x10]!
  100115610  mov     x29, sp
  100115614  stp     x20, x19, [sp, #-0x10]!
  100115618  stp     x22, x21, [sp, #-0x10]!
  10011561c  stp     x24, x23, [sp, #-0x10]!
  100115620  stp     x26, x25, [sp, #-0x10]!
  100115624  mov     x8, x2
  100115628  mov     x20, x0
  10011562c  adrp    x9, #0x10041b000
  100115630  nop
  100115634  ldr     x1, [x9, #0xd58]
  100115638  mov     x2, #1
  10011563c  mov     x0, x8
  100115640  bl      _objc_msgSend                            ; [arg1 cStringUsingEncoding:1]
  100115644  mov     x22, x0
  100115648  cbz     x22, loc_100115758                       ; if ([arg1 cStringUsingEncoding:1] == 0)
  10011564c  mov     x0, x22
  100115650  bl      _strlen                                  ; strlen([arg1 cStringUsingEncoding:1])
  100115654  mov     x24, x0
  100115658  adrp    x8, #0x100420000
  10011565c  ldrsw   x25, [x8, #0x7cc]                        ; ivar offset TAGGTMStringEncoding.shift_ (+0x218)
  100115660  ldrsw   x8, [x20, x25]                           ; x8 = self->shift_
  100115664  mul     x8, x8, x24
  100115668  lsr     x23, x8, #3
  10011566c  adrp    x8, #0x10041e000
  100115670  ldr     x0, [x8, #0x568]                         ; class NSMutableData
  100115674  adrp    x8, #0x10041c000
  100115678  nop
  10011567c  ldr     x1, [x8, #0x5b8]
  100115680  mov     x2, x23
  100115684  bl      _objc_msgSend                            ; [NSMutableData dataWithLength:((self->shift_ * strlen([arg1 cStringUsingEncoding:1])) >>> 3)]
  100115688  mov     x19, x0
  10011568c  adrp    x8, #0x10041c000
  100115690  nop
  100115694  ldr     x1, [x8, #0x5d0]
  100115698  bl      _objc_msgSend                            ; [[NSMutableData dataWithLength:((self->shift_ * strlen([arg1 cStringUsingEncoding:1])) >>> 3)] mutableBytes]
  10011569c  cbz     x24, loc_100115760                       ; if (strlen([arg1 cStringUsingEncoding:1]) == 0)
  1001156a0  mov     x8, #0
  1001156a4  mov     w13, #0
  1001156a8  mov     w9, #0
  1001156ac  mov     w10, #0
  1001156b0  mov     x21, #0
  1001156b4  adrp    x11, #0x100420000
  1001156b8  ldrsw   x11, [x11, #0x7c8]                       ; ivar offset TAGGTMStringEncoding.reverseCharMap_ (+0x18)
  1001156bc  add     x11, x20, x11
  1001156c0  adrp    x12, #0x100420000
  1001156c4  ldrsw   x12, [x12, #0x7d0]                       ; ivar offset TAGGTMStringEncoding.mask_ (+0x21c)
loc_1001156c8:
  1001156c8  ldrsb   x14, [x22, x8]
  1001156cc  ldr     w14, [x11, x14, lsl #2]
  1001156d0  cmn     w14, #3
  1001156d4  b.eq    loc_100115734                            ; if (w14 == -3)
  1001156d8  cmn     w14, #1
  1001156dc  b.eq    loc_100115758                            ; if (w14 == -1)
  1001156e0  cmn     w14, #2
  1001156e4  b.ne    loc_1001156f0                            ; if (w14 != -2)
  1001156e8  mov     w13, #1
  1001156ec  b       loc_100115734
loc_1001156f0:
  1001156f0  and     w13, w13, #1
  1001156f4  tbnz    w13, #0, loc_100115758                   ; if (((one of {0, 1} & 1) & 1))
  1001156f8  ldr     w13, [x20, x25]                          ; w13 = self->shift_
  1001156fc  lsl     w10, w10, w13
  100115700  ldr     w15, [x20, x12]                          ; w15 = self->mask_
  100115704  and     w14, w15, w14
  100115708  orr     w10, w14, w10
  10011570c  add     w9, w13, w9
  100115710  cmp     w9, #8
  100115714  b.lt    loc_100115730                            ; if ((self->shift_ + w9) < 8)
  100115718  mov     w13, #0
  10011571c  sub     w9, w9, #8
  100115720  asr     w14, w10, w9
  100115724  strb    w14, [x0, x21]
  100115728  add     x21, x21, #1
  10011572c  b       loc_100115734
loc_100115730:
  100115730  mov     w13, #0
loc_100115734:
  100115734  add     x8, x8, #1
  100115738  cmp     x8, x24
  10011573c  b.lo    loc_1001156c8                            ; if ((x8 + 1) <u strlen([arg1 cStringUsingEncoding:1]))
  100115740  cbz     w9, loc_100115798                        ; if (w9 == 0)
  100115744  mov     w8, #1
  100115748  lsl     w8, w8, w9
  10011574c  sub     w8, w8, #1
  100115750  and     w8, w8, w10
  100115754  cbz     w8, loc_100115798                        ; if ((((1 << w9) - 1) & w10) == 0)
loc_100115758:
  100115758  mov     x19, #0
  10011575c  b       loc_10011577c
loc_100115760:
  100115760  mov     x21, #0
loc_100115764:
  100115764  adrp    x8, #0x10041b000
  100115768  nop
  10011576c  ldr     x1, [x8, #0xd60]
  100115770  mov     x0, x19
  100115774  mov     x2, x21
  100115778  bl      _objc_msgSend                            ; [[NSMutableData dataWithLength:((self->shift_ * strlen([arg1 cStringUsingEncoding:1])) >>> 3)] setLength:x2]
loc_10011577c:
  10011577c  mov     x0, x19
  100115780  ldp     x26, x25, [sp], #0x10
  100115784  ldp     x24, x23, [sp], #0x10
  100115788  ldp     x22, x21, [sp], #0x10
  10011578c  ldp     x20, x19, [sp], #0x10
  100115790  ldp     x29, x30, [sp], #0x10
  100115794  ret
loc_100115798:
  100115798  cmp     x21, x23
  10011579c  b.ls    loc_100115764                            ; if (x21 <=u ((self->shift_ * strlen([arg1 cStringUsingEncoding:1])) >>> 3))
  1001157a0  adrp    x8, #0x10041e000
  1001157a4  ldr     x0, [x8, #0x658]                         ; class NSAssertionHandler
  1001157a8  adrp    x8, #0x10041c000
  1001157ac  nop
  1001157b0  ldr     x1, [x8, #0x470]
  1001157b4  bl      _objc_msgSend                            ; [NSAssertionHandler currentHandler]
  1001157b8  mov     x20, x0
  1001157bc  adrp    x24, #0x10041d000
  1001157c0  ldr     x0, [x24, #0xf78]                        ; class NSString
  1001157c4  adrp    x8, #0x10041c000
  1001157c8  nop
  1001157cc  ldr     x22, [x8, #0x478]
  1001157d0  adrp    x2, #0x10038f000
  1001157d4  add     x2, x2, #0xa4d                           ; "-[TAGGTMStringEncoding decode:]"
  1001157d8  mov     x1, x22
  1001157dc  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"-[TAGGTMStringEncoding decode:]"]
  1001157e0  mov     x23, x0
  1001157e4  ldr     x0, [x24, #0xf78]                        ; class NSString
  1001157e8  adrp    x2, #0x10038f000
  1001157ec  add     x2, x2, #0x93c                           ; "/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001157f0  mov     x1, x22
  1001157f4  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"]
  1001157f8  mov     x3, x0
  1001157fc  adrp    x8, #0x10041c000
  100115800  nop
  100115804  ldr     x1, [x8, #0x520]
  100115808  adrp    x5, #0x1003c4000
  10011580c  add     x5, x5, #0x3d0                           ; @"Overflowed buffer"
  100115810  mov     x4, #0x118
  100115814  mov     x0, x20
  100115818  mov     x2, x23
  10011581c  bl      _objc_msgSend                            ; [[NSAssertionHandler currentHandler] handleFailureInFunction:[NSString stringWithUTF8String:"-[TAGGTMStringEncoding decode:]"] file:[NSString stringWithUTF8String:"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"] lineNumber:280 description:@"Overflowed buffer"]
  100115820  b       loc_100115764

; ======================================================================
; -[TAGGTMStringEncoding stringByDecoding:]
; address 0x100115824  size 104  kind objc
; ======================================================================
  100115824  stp     x29, x30, [sp, #-0x10]!
  100115828  mov     x29, sp
  10011582c  stp     x20, x19, [sp, #-0x10]!
  100115830  adrp    x8, #0x10041b000
  100115834  nop
  100115838  ldr     x1, [x8, #0x928]
  10011583c  bl      _objc_msgSend                            ; [self decode:arg1]
  100115840  mov     x19, x0
  100115844  adrp    x8, #0x10041d000
  100115848  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011584c  adrp    x8, #0x100416000
  100115850  nop
  100115854  ldr     x1, [x8, #0xac8]
  100115858  bl      _objc_msgSend                            ; [NSString alloc]
  10011585c  adrp    x8, #0x10041b000
  100115860  nop
  100115864  ldr     x1, [x8, #0x2d0]
  100115868  mov     x3, #4
  10011586c  mov     x2, x19
  100115870  bl      _objc_msgSend                            ; [[NSString alloc] initWithData:[self decode:arg1] encoding:4]
  100115874  adrp    x8, #0x10041b000
  100115878  nop
  10011587c  ldr     x1, [x8, #0xe88]
  100115880  ldp     x20, x19, [sp], #0x10
  100115884  ldp     x29, x30, [sp], #0x10
  100115888  b       _objc_msgSend                            ; [[[NSString alloc] initWithData:[self decode:arg1] encoding:4] autorelease]
