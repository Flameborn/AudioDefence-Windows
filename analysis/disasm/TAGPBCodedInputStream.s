// unit TAGPBCodedInputStream — 30 functions
//   0x1001318d8      84  +[TAGPBCodedInputStream streamWithData:]
//   0x10013192c     196  -[TAGPBCodedInputStream initWithData:]
//   0x1001319f0     100  -[TAGPBCodedInputStream dealloc]
//   0x100131a54       4  -[TAGPBCodedInputStream readTag]
//   0x100131a58      96  -[TAGPBCodedInputStream checkLastTagWas:]
//   0x100131ab8     744  -[TAGPBCodedInputStream skipField:]
//   0x100131da0      76  -[TAGPBCodedInputStream skipMessage]
//   0x100131dec     204  -[TAGPBCodedInputStream readDouble]
//   0x100131eb8     204  -[TAGPBCodedInputStream readFloat]
//   0x100131f84     288  -[TAGPBCodedInputStream readUInt64]
//   0x1001320a4     288  -[TAGPBCodedInputStream readInt64]
//   0x1001321c4      16  -[TAGPBCodedInputStream readInt32]
//   0x1001321d4     200  -[TAGPBCodedInputStream readFixed64]
//   0x10013229c     200  -[TAGPBCodedInputStream readFixed32]
//   0x100132364      40  -[TAGPBCodedInputStream readBool]
//   0x10013238c      32  -[TAGPBCodedInputStream readString]
//   0x1001323ac     228  -[TAGPBCodedInputStream readGroup:builder:extensionRegistry:]
//   0x100132490     220  -[TAGPBCodedInputStream readUnknownGroup:builder:]
//   0x10013256c     256  -[TAGPBCodedInputStream readMessage:extensionRegistry:]
//   0x10013266c      32  -[TAGPBCodedInputStream readData]
//   0x10013268c      16  -[TAGPBCodedInputStream readUInt32]
//   0x10013269c      16  -[TAGPBCodedInputStream readEnum]
//   0x1001326ac     200  -[TAGPBCodedInputStream readSFixed32]
//   0x100132774     200  -[TAGPBCodedInputStream readSFixed64]
//   0x10013283c      44  -[TAGPBCodedInputStream readSInt32]
//   0x100132868     296  -[TAGPBCodedInputStream readSInt64]
//   0x100132990       8  -[TAGPBCodedInputStream pushLimit:]
//   0x100132998      20  -[TAGPBCodedInputStream popLimit:]
//   0x1001329ac      44  -[TAGPBCodedInputStream bytesUntilLimit]
//   0x1001329d8      52  -[TAGPBCodedInputStream isAtEnd]

; ======================================================================
; +[TAGPBCodedInputStream streamWithData:]
; address 0x1001318d8  size 84  kind objc
; ======================================================================
  1001318d8  stp     x29, x30, [sp, #-0x10]!
  1001318dc  mov     x29, sp
  1001318e0  stp     x20, x19, [sp, #-0x10]!
  1001318e4  mov     x19, x2
  1001318e8  adrp    x8, #0x10041e000
  1001318ec  ldr     x0, [x8, #0x778]                         ; class TAGPBCodedInputStream
  1001318f0  adrp    x8, #0x100416000
  1001318f4  nop
  1001318f8  ldr     x1, [x8, #0xac8]
  1001318fc  bl      _objc_msgSend                            ; [TAGPBCodedInputStream alloc]
  100131900  adrp    x8, #0x10041c000
  100131904  nop
  100131908  ldr     x1, [x8, #0x550]
  10013190c  mov     x2, x19
  100131910  bl      _objc_msgSend                            ; [[TAGPBCodedInputStream alloc] initWithData:arg1]
  100131914  adrp    x8, #0x10041b000
  100131918  nop
  10013191c  ldr     x1, [x8, #0xe88]
  100131920  ldp     x20, x19, [sp], #0x10
  100131924  ldp     x29, x30, [sp], #0x10
  100131928  b       _objc_msgSend                            ; [[[TAGPBCodedInputStream alloc] initWithData:arg1] autorelease]

; ======================================================================
; -[TAGPBCodedInputStream initWithData:]
; address 0x10013192c  size 196  kind objc
; ======================================================================
  10013192c  stp     x29, x30, [sp, #-0x10]!
  100131930  mov     x29, sp
  100131934  stp     x20, x19, [sp, #-0x10]!
  100131938  stp     x22, x21, [sp, #-0x10]!
  10013193c  sub     sp, sp, #0x10
  100131940  mov     x20, x2
  100131944  str     x0, [sp]
  100131948  adrp    x8, #0x10041f000
  10013194c  ldr     x8, [x8, #0x170]
  100131950  str     x8, [sp, #8]
  100131954  adrp    x8, #0x100416000
  100131958  nop
  10013195c  ldr     x1, [x8, #0xab8]
  100131960  mov     x0, sp
  100131964  bl      _objc_msgSendSuper2                      ; [super init]
  100131968  mov     x19, x0
  10013196c  cbz     x19, loc_1001319d8                       ; if (self == 0)
  100131970  adrp    x8, #0x10041b000
  100131974  nop
  100131978  ldr     x1, [x8, #0xdb8]
  10013197c  mov     x0, x20
  100131980  bl      _objc_msgSend                            ; [arg1 retain]
  100131984  adrp    x20, #0x100420000
  100131988  ldrsw   x8, [x20, #0x920]                        ; ivar offset TAGPBCodedInputStream.buffer_ (+0x8)
  10013198c  str     x0, [x19, x8]                            ; self->buffer_ = [arg1 retain]
  100131990  adrp    x8, #0x10041c000
  100131994  nop
  100131998  ldr     x1, [x8, #0x490]
  10013199c  bl      _objc_msgSend                            ; [[arg1 retain] bytes]
  1001319a0  adrp    x21, #0x100420000
  1001319a4  ldrsw   x8, [x21, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001319a8  str     x0, [x19, x8]                            ; self->state_ = [[arg1 retain] bytes]
  1001319ac  ldrsw   x8, [x20, #0x920]                        ; ivar offset TAGPBCodedInputStream.buffer_ (+0x8)
  1001319b0  ldr     x0, [x19, x8]                            ; x0 = self->buffer_
  1001319b4  adrp    x8, #0x100417000
  1001319b8  nop
  1001319bc  ldr     x1, [x8, #0xc58]
  1001319c0  bl      _objc_msgSend                            ; [self->buffer_ length]
  1001319c4  ldrsw   x8, [x21, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001319c8  add     x8, x8, x19
  1001319cc  str     x0, [x8, #8]                             ; self->state_[+0x8] = [self->buffer_ length]
  1001319d0  mov     x9, #-1
  1001319d4  str     x9, [x8, #0x18]                          ; self->state_[+0x18] = -1
loc_1001319d8:
  1001319d8  mov     x0, x19
  1001319dc  sub     sp, x29, #0x20
  1001319e0  ldp     x22, x21, [sp], #0x10
  1001319e4  ldp     x20, x19, [sp], #0x10
  1001319e8  ldp     x29, x30, [sp], #0x10
  1001319ec  ret

; ======================================================================
; -[TAGPBCodedInputStream dealloc]
; address 0x1001319f0  size 100  kind objc
; ======================================================================
  1001319f0  stp     x29, x30, [sp, #-0x10]!
  1001319f4  mov     x29, sp
  1001319f8  stp     x20, x19, [sp, #-0x10]!
  1001319fc  sub     sp, sp, #0x10
  100131a00  mov     x19, x0
  100131a04  adrp    x8, #0x100420000
  100131a08  ldrsw   x8, [x8, #0x920]                         ; ivar offset TAGPBCodedInputStream.buffer_ (+0x8)
  100131a0c  ldr     x0, [x19, x8]                            ; x0 = self->buffer_
  100131a10  adrp    x8, #0x10041b000
  100131a14  nop
  100131a18  ldr     x1, [x8, #0xd70]
  100131a1c  bl      _objc_msgSend                            ; [self->buffer_ release]
  100131a20  str     x19, [sp]
  100131a24  adrp    x8, #0x10041f000
  100131a28  ldr     x8, [x8, #0x170]
  100131a2c  str     x8, [sp, #8]
  100131a30  adrp    x8, #0x100416000
  100131a34  nop
  100131a38  ldr     x1, [x8, #0xfc8]
  100131a3c  mov     x0, sp
  100131a40  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100131a44  sub     sp, x29, #0x10
  100131a48  ldp     x20, x19, [sp], #0x10
  100131a4c  ldp     x29, x30, [sp], #0x10
  100131a50  ret

; ======================================================================
; -[TAGPBCodedInputStream readTag]
; address 0x100131a54  size 4  kind objc
; ======================================================================
  100131a54  b       sub_100130f90                            ; sub_100130f90(self, _cmd)

; ======================================================================
; -[TAGPBCodedInputStream checkLastTagWas:]
; address 0x100131a58  size 96  kind objc
; ======================================================================
  100131a58  stp     x29, x30, [sp, #-0x10]!
  100131a5c  mov     x29, sp
  100131a60  sub     sp, sp, #0x10
  100131a64  adrp    x8, #0x100420000
  100131a68  ldrsw   x8, [x8, #0x918]                         ; ivar offset TAGPBCodedInputStream.lastTag_ (+0x30)
  100131a6c  ldr     w9, [x0, x8]                             ; w9 = self->lastTag_
  100131a70  cmp     w9, w2
  100131a74  b.eq    loc_100131aac                            ; if (self->lastTag_ == arg1)
  100131a78  adrp    x8, #0x10041d000
  100131a7c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131a80  adrp    x8, #0x1003b0000
  100131a84  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131a88  ldr     x8, [x8]                                 ; x8 = _NSParseErrorException[+0x0]
  100131a8c  adrp    x10, #0x100417000
  100131a90  nop
  100131a94  ldr     x1, [x10, #0x260]
  100131a98  stp     x9, x2, [sp]
  100131a9c  adrp    x3, #0x1003c6000
  100131aa0  add     x3, x3, #0xd50                           ; @"Last tag: %d should be %d"
  100131aa4  mov     x2, x8
  100131aa8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Last tag: %d should be %d", self->lastTag_, arg1]
loc_100131aac:
  100131aac  mov     sp, x29
  100131ab0  ldp     x29, x30, [sp], #0x10
  100131ab4  ret

; ======================================================================
; -[TAGPBCodedInputStream skipField:]
; address 0x100131ab8  size 744  kind objc
; ======================================================================
  100131ab8  stp     x29, x30, [sp, #-0x10]!
  100131abc  mov     x29, sp
  100131ac0  stp     x20, x19, [sp, #-0x10]!
  100131ac4  stp     x22, x21, [sp, #-0x10]!
  100131ac8  stp     x24, x23, [sp, #-0x10]!
  100131acc  sub     sp, sp, #0x10
  100131ad0  mov     x20, x2
  100131ad4  mov     x19, x0
  100131ad8  and     w8, w20, #7
  100131adc  cmp     w8, #5
  100131ae0  b.ls    loc_100131b1c                            ; if ((arg1 & 7) <=u 5)
  100131ae4  adrp    x8, #0x10041d000
  100131ae8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131aec  adrp    x8, #0x1003b0000
  100131af0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131af4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131af8  adrp    x8, #0x100417000
  100131afc  nop
  100131b00  ldr     x1, [x8, #0x260]
  100131b04  str     x20, [sp]
  100131b08  adrp    x3, #0x1003c6000
  100131b0c  add     x3, x3, #0xd70                           ; @"Invalid tag %d"
  100131b10  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Invalid tag %d", arg1]
  100131b14  mov     w0, #0
  100131b18  b       loc_100131d70
loc_100131b1c:
  100131b1c  mov     w0, #0
  100131b20  adr     x9, #0x100131d88                         ; 0x100131d88
  100131b24  nop
  100131b28  ldrsw   x8, [x9, x8, lsl #2]
  100131b2c  add     x8, x8, x9
  100131b30  br      x8                                       ; switch (?) { case 0: goto loc_100131b34; case 1: goto loc_100131b50; case 2: goto loc_100131be8; case 3: goto loc_100131c9c; case 4: goto loc_100131d70; case 5: goto loc_100131cd4 }
loc_100131b34:  ; case 0
  100131b34  adrp    x8, #0x10041c000
  100131b38  nop
  100131b3c  ldr     x1, [x8, #0x558]
  100131b40  mov     x0, x19
  100131b44  bl      _objc_msgSend                            ; [self readInt32]
  100131b48  mov     w0, #1
  100131b4c  b       loc_100131d70
loc_100131b50:  ; case 1
  100131b50  adrp    x8, #0x100420000
  100131b54  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131b58  add     x21, x8, x19
  100131b5c  add     x20, x8, #0x10
  100131b60  ldr     x8, [x19, x20]
  100131b64  add     x22, x8, #8
  100131b68  ldr     x8, [x21, #8]                            ; x8 = self->state_[+0x8]
  100131b6c  cmp     x22, x8
  100131b70  b.ls    loc_100131ba0                            ; if ((x8 + 8) <=u self->state_[+0x8])
  100131b74  adrp    x8, #0x10041d000
  100131b78  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131b7c  adrp    x8, #0x1003b0000
  100131b80  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131b84  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131b88  adrp    x8, #0x100417000
  100131b8c  nop
  100131b90  ldr     x1, [x8, #0x260]
  100131b94  adrp    x3, #0x1003b9000
  100131b98  add     x3, x3, #0x870                           ; @""
  100131b9c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131ba0:
  100131ba0  ldr     x8, [x21, #0x18]                         ; x8 = self->state_[+0x18]
  100131ba4  cmp     x22, x8
  100131ba8  b.ls    loc_100131bdc                            ; if ((x8 + 8) <=u self->state_[+0x18])
  100131bac  str     x8, [x19, x20]
  100131bb0  adrp    x8, #0x10041d000
  100131bb4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131bb8  adrp    x8, #0x1003b0000
  100131bbc  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131bc0  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131bc4  adrp    x8, #0x100417000
  100131bc8  nop
  100131bcc  ldr     x1, [x8, #0x260]
  100131bd0  adrp    x3, #0x1003b9000
  100131bd4  add     x3, x3, #0x870                           ; @""
  100131bd8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131bdc:
  100131bdc  ldr     x8, [x19, x20]
  100131be0  add     x8, x8, #8
  100131be4  b       loc_100131d68
loc_100131be8:  ; case 2
  100131be8  adrp    x8, #0x100420000
  100131bec  ldrsw   x23, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131bf0  add     x21, x19, x23
  100131bf4  mov     x0, x21
  100131bf8  bl      sub_100131048                            ; sub_100131048(x0, _cmd, arg1)
  100131bfc  mov     x20, x0
  100131c00  add     x22, x23, #0x10
  100131c04  ldr     x8, [x19, x22]
  100131c08  add     x24, x8, w20, sxtw
  100131c0c  ldr     x8, [x21, #8]                            ; x8 = self->state_[+0x8]
  100131c10  cmp     x24, x8
  100131c14  b.ls    loc_100131c44                            ; if ((x8 + sub_100131048(x0, _cmd, arg1)) <=u self->state_[+0x8])
  100131c18  adrp    x8, #0x10041d000
  100131c1c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131c20  adrp    x8, #0x1003b0000
  100131c24  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131c28  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131c2c  adrp    x8, #0x100417000
  100131c30  nop
  100131c34  ldr     x1, [x8, #0x260]
  100131c38  adrp    x3, #0x1003b9000
  100131c3c  add     x3, x3, #0x870                           ; @""
  100131c40  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131c44:
  100131c44  sxtw    x20, w20
  100131c48  add     x8, x23, x19
  100131c4c  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  100131c50  cmp     x24, x8
  100131c54  b.ls    loc_100131c88                            ; if ((x8 + sub_100131048(x0, _cmd, arg1)) <=u self->state_[+0x18])
  100131c58  str     x8, [x19, x22]
  100131c5c  adrp    x8, #0x10041d000
  100131c60  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131c64  adrp    x8, #0x1003b0000
  100131c68  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131c6c  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131c70  adrp    x8, #0x100417000
  100131c74  nop
  100131c78  ldr     x1, [x8, #0x260]
  100131c7c  adrp    x3, #0x1003b9000
  100131c80  add     x3, x3, #0x870                           ; @""
  100131c84  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131c88:
  100131c88  ldr     x8, [x19, x22]
  100131c8c  add     x8, x8, x20
  100131c90  str     x8, [x19, x22]
  100131c94  mov     w0, #1
  100131c98  b       loc_100131d70
loc_100131c9c:  ; case 3
  100131c9c  adrp    x8, #0x10041c000
  100131ca0  nop
  100131ca4  ldr     x1, [x8, #0x560]
  100131ca8  mov     x0, x19
  100131cac  bl      _objc_msgSend                            ; [self skipMessage]
  100131cb0  and     w8, w20, #0xfffffff8
  100131cb4  orr     w2, w8, #4
  100131cb8  adrp    x8, #0x10041c000
  100131cbc  nop
  100131cc0  ldr     x1, [x8, #0x568]
  100131cc4  mov     x0, x19
  100131cc8  bl      _objc_msgSend                            ; [self checkLastTagWas:((arg1 & 0xfffffff8) | 4)]
  100131ccc  mov     w0, #1
  100131cd0  b       loc_100131d70
loc_100131cd4:  ; case 5
  100131cd4  adrp    x8, #0x100420000
  100131cd8  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131cdc  add     x21, x8, x19
  100131ce0  add     x20, x8, #0x10
  100131ce4  ldr     x8, [x19, x20]
  100131ce8  add     x22, x8, #4
  100131cec  ldr     x8, [x21, #8]                            ; x8 = self->state_[+0x8]
  100131cf0  cmp     x22, x8
  100131cf4  b.ls    loc_100131d24                            ; if ((x8 + 4) <=u self->state_[+0x8])
  100131cf8  adrp    x8, #0x10041d000
  100131cfc  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131d00  adrp    x8, #0x1003b0000
  100131d04  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131d08  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131d0c  adrp    x8, #0x100417000
  100131d10  nop
  100131d14  ldr     x1, [x8, #0x260]
  100131d18  adrp    x3, #0x1003b9000
  100131d1c  add     x3, x3, #0x870                           ; @""
  100131d20  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131d24:
  100131d24  ldr     x8, [x21, #0x18]                         ; x8 = self->state_[+0x18]
  100131d28  cmp     x22, x8
  100131d2c  b.ls    loc_100131d60                            ; if ((x8 + 4) <=u self->state_[+0x18])
  100131d30  str     x8, [x19, x20]
  100131d34  adrp    x8, #0x10041d000
  100131d38  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131d3c  adrp    x8, #0x1003b0000
  100131d40  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131d44  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131d48  adrp    x8, #0x100417000
  100131d4c  nop
  100131d50  ldr     x1, [x8, #0x260]
  100131d54  adrp    x3, #0x1003b9000
  100131d58  add     x3, x3, #0x870                           ; @""
  100131d5c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131d60:
  100131d60  ldr     x8, [x19, x20]
  100131d64  add     x8, x8, #4
loc_100131d68:
  100131d68  str     x8, [x19, x20]
  100131d6c  mov     w0, #1
loc_100131d70:  ; case 4
  100131d70  sub     sp, x29, #0x30
  100131d74  ldp     x24, x23, [sp], #0x10
  100131d78  ldp     x22, x21, [sp], #0x10
  100131d7c  ldp     x20, x19, [sp], #0x10
  100131d80  ldp     x29, x30, [sp], #0x10
  100131d84  ret
  100131d88  .word   jump table of 100131b30, case 0 -> loc_100131b34
  100131d8c  .word   jump table of 100131b30, case 1 -> loc_100131b50
  100131d90  .word   jump table of 100131b30, case 2 -> loc_100131be8
  100131d94  .word   jump table of 100131b30, case 3 -> loc_100131c9c
  100131d98  .word   jump table of 100131b30, case 4 -> loc_100131d70
  100131d9c  .word   jump table of 100131b30, case 5 -> loc_100131cd4

; ======================================================================
; -[TAGPBCodedInputStream skipMessage]
; address 0x100131da0  size 76  kind objc
; ======================================================================
  100131da0  stp     x29, x30, [sp, #-0x10]!
  100131da4  mov     x29, sp
  100131da8  stp     x20, x19, [sp, #-0x10]!
  100131dac  mov     x19, x0
  100131db0  adrp    x8, #0x10041c000
  100131db4  add     x8, x8, #0x570                           ; &@selector(skipField:)
  100131db8  ldr     x20, [x8]
loc_100131dbc:
  100131dbc  mov     x0, x19
  100131dc0  bl      sub_100130f90                            ; sub_100130f90(self)
  100131dc4  mov     x8, x0
  100131dc8  cbz     w8, loc_100131de0                        ; if (sub_100130f90(self) == 0)
  100131dcc  mov     x0, x19
  100131dd0  mov     x1, x20
  100131dd4  mov     x2, x8
  100131dd8  bl      _objc_msgSend                            ; [self skipField:sub_100130f90(self)]
  100131ddc  tbnz    w0, #0, loc_100131dbc                    ; if (([self skipField:sub_100130f90(self)] & 1))
loc_100131de0:
  100131de0  ldp     x20, x19, [sp], #0x10
  100131de4  ldp     x29, x30, [sp], #0x10
  100131de8  ret

; ======================================================================
; -[TAGPBCodedInputStream readDouble]
; address 0x100131dec  size 204  kind objc
; ======================================================================
  100131dec  stp     x29, x30, [sp, #-0x10]!
  100131df0  mov     x29, sp
  100131df4  stp     x20, x19, [sp, #-0x10]!
  100131df8  stp     x22, x21, [sp, #-0x10]!
  100131dfc  mov     x19, x0
  100131e00  adrp    x8, #0x100420000
  100131e04  ldrsw   x21, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131e08  add     x8, x21, x19
  100131e0c  add     x20, x21, #0x10
  100131e10  ldr     x9, [x19, x20]
  100131e14  add     x22, x9, #8
  100131e18  ldr     x8, [x8, #8]                             ; x8 = self->state_[+0x8]
  100131e1c  cmp     x22, x8
  100131e20  b.ls    loc_100131e50                            ; if ((x9 + 8) <=u self->state_[+0x8])
  100131e24  adrp    x8, #0x10041d000
  100131e28  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131e2c  adrp    x8, #0x1003b0000
  100131e30  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131e34  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131e38  adrp    x8, #0x100417000
  100131e3c  nop
  100131e40  ldr     x1, [x8, #0x260]
  100131e44  adrp    x3, #0x1003b9000
  100131e48  add     x3, x3, #0x870                           ; @""
  100131e4c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131e50:
  100131e50  add     x8, x21, x19
  100131e54  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  100131e58  cmp     x22, x8
  100131e5c  b.ls    loc_100131e90                            ; if ((x9 + 8) <=u self->state_[+0x18])
  100131e60  str     x8, [x19, x20]
  100131e64  adrp    x8, #0x10041d000
  100131e68  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131e6c  adrp    x8, #0x1003b0000
  100131e70  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131e74  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131e78  adrp    x8, #0x100417000
  100131e7c  nop
  100131e80  ldr     x1, [x8, #0x260]
  100131e84  adrp    x3, #0x1003b9000
  100131e88  add     x3, x3, #0x870                           ; @""
  100131e8c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131e90:
  100131e90  ldr     x8, [x19, x21]                           ; x8 = self->state_
  100131e94  ldr     x9, [x19, x20]
  100131e98  ldr     x8, [x8, x9]
  100131e9c  add     x9, x9, #8
  100131ea0  str     x9, [x19, x20]
  100131ea4  fmov    d0, x8
  100131ea8  ldp     x22, x21, [sp], #0x10
  100131eac  ldp     x20, x19, [sp], #0x10
  100131eb0  ldp     x29, x30, [sp], #0x10
  100131eb4  ret

; ======================================================================
; -[TAGPBCodedInputStream readFloat]
; address 0x100131eb8  size 204  kind objc
; ======================================================================
  100131eb8  stp     x29, x30, [sp, #-0x10]!
  100131ebc  mov     x29, sp
  100131ec0  stp     x20, x19, [sp, #-0x10]!
  100131ec4  stp     x22, x21, [sp, #-0x10]!
  100131ec8  mov     x19, x0
  100131ecc  adrp    x8, #0x100420000
  100131ed0  ldrsw   x21, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131ed4  add     x8, x21, x19
  100131ed8  add     x20, x21, #0x10
  100131edc  ldr     x9, [x19, x20]
  100131ee0  add     x22, x9, #4
  100131ee4  ldr     x8, [x8, #8]                             ; x8 = self->state_[+0x8]
  100131ee8  cmp     x22, x8
  100131eec  b.ls    loc_100131f1c                            ; if ((x9 + 4) <=u self->state_[+0x8])
  100131ef0  adrp    x8, #0x10041d000
  100131ef4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131ef8  adrp    x8, #0x1003b0000
  100131efc  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131f00  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131f04  adrp    x8, #0x100417000
  100131f08  nop
  100131f0c  ldr     x1, [x8, #0x260]
  100131f10  adrp    x3, #0x1003b9000
  100131f14  add     x3, x3, #0x870                           ; @""
  100131f18  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131f1c:
  100131f1c  add     x8, x21, x19
  100131f20  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  100131f24  cmp     x22, x8
  100131f28  b.ls    loc_100131f5c                            ; if ((x9 + 4) <=u self->state_[+0x18])
  100131f2c  str     x8, [x19, x20]
  100131f30  adrp    x8, #0x10041d000
  100131f34  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131f38  adrp    x8, #0x1003b0000
  100131f3c  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131f40  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100131f44  adrp    x8, #0x100417000
  100131f48  nop
  100131f4c  ldr     x1, [x8, #0x260]
  100131f50  adrp    x3, #0x1003b9000
  100131f54  add     x3, x3, #0x870                           ; @""
  100131f58  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100131f5c:
  100131f5c  ldr     x8, [x19, x21]                           ; x8 = self->state_
  100131f60  ldr     x9, [x19, x20]
  100131f64  ldr     w8, [x8, x9]
  100131f68  add     x9, x9, #4
  100131f6c  str     x9, [x19, x20]
  100131f70  fmov    s0, w8
  100131f74  ldp     x22, x21, [sp], #0x10
  100131f78  ldp     x20, x19, [sp], #0x10
  100131f7c  ldp     x29, x30, [sp], #0x10
  100131f80  ret

; ======================================================================
; -[TAGPBCodedInputStream readUInt64]
; address 0x100131f84  size 288  kind objc
; ======================================================================
  100131f84  stp     x29, x30, [sp, #-0x10]!
  100131f88  mov     x29, sp
  100131f8c  stp     x20, x19, [sp, #-0x10]!
  100131f90  stp     x22, x21, [sp, #-0x10]!
  100131f94  stp     x24, x23, [sp, #-0x10]!
  100131f98  stp     x26, x25, [sp, #-0x10]!
  100131f9c  stp     x28, x27, [sp, #-0x10]!
  100131fa0  mov     x19, x0
  100131fa4  mov     x24, #0
  100131fa8  mov     x20, #0
  100131fac  adrp    x8, #0x100420000
  100131fb0  ldrsw   x25, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100131fb4  add     x26, x25, #0x10
  100131fb8  add     x27, x25, #8
  100131fbc  adrp    x8, #0x1003b0000
  100131fc0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100131fc4  ldr     x21, [x8]                                ; x21 = _NSParseErrorException[+0x0]
  100131fc8  adrp    x8, #0x100417000
  100131fcc  nop
  100131fd0  ldr     x22, [x8, #0x260]
  100131fd4  add     x28, x25, #0x18
  100131fd8  ldr     x8, [x19, x26]
loc_100131fdc:
  100131fdc  add     x23, x8, #1
  100131fe0  ldr     x8, [x19, x27]
  100131fe4  cmp     x23, x8
  100131fe8  b.ls    loc_100132008                            ; if ((x8 + 1) <=u x8)
  100131fec  adrp    x8, #0x10041d000
  100131ff0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100131ff4  mov     x1, x22
  100131ff8  mov     x2, x21
  100131ffc  adrp    x3, #0x1003b9000
  100132000  add     x3, x3, #0x870                           ; @""
  100132004  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132008:
  100132008  ldr     x8, [x19, x28]
  10013200c  cmp     x23, x8
  100132010  b.ls    loc_100132034                            ; if ((x8 + 1) <=u x8)
  100132014  str     x8, [x19, x26]
  100132018  adrp    x8, #0x10041d000
  10013201c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132020  mov     x1, x22
  100132024  mov     x2, x21
  100132028  adrp    x3, #0x1003b9000
  10013202c  add     x3, x3, #0x870                           ; @""
  100132030  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132034:
  100132034  ldr     x9, [x19, x26]
  100132038  add     x8, x9, #1
  10013203c  str     x8, [x19, x26]
  100132040  ldr     x10, [x19, x25]                          ; x10 = self->state_
  100132044  ldrsb   w9, [x10, x9]
  100132048  and     w10, w9, #0x7f
  10013204c  lsl     x10, x10, x24
  100132050  orr     x20, x10, x20
  100132054  tbz     w9, #7, loc_100132084                    ; if (!(w9 & (1<<7)))
  100132058  add     x24, x24, #7
  10013205c  cmp     w24, #0x3f
  100132060  b.le    loc_100131fdc                            ; if ((x24 + 7) <= 63)
  100132064  adrp    x8, #0x10041d000
  100132068  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013206c  adrp    x3, #0x1003c7000
  100132070  add     x3, x3, #0x610                           ; @"Unable to read varint64"
  100132074  mov     x1, x22
  100132078  mov     x2, x21
  10013207c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Unable to read varint64"]
  100132080  mov     x20, #0
loc_100132084:
  100132084  mov     x0, x20
  100132088  ldp     x28, x27, [sp], #0x10
  10013208c  ldp     x26, x25, [sp], #0x10
  100132090  ldp     x24, x23, [sp], #0x10
  100132094  ldp     x22, x21, [sp], #0x10
  100132098  ldp     x20, x19, [sp], #0x10
  10013209c  ldp     x29, x30, [sp], #0x10
  1001320a0  ret

; ======================================================================
; -[TAGPBCodedInputStream readInt64]
; address 0x1001320a4  size 288  kind objc
; ======================================================================
  1001320a4  stp     x29, x30, [sp, #-0x10]!
  1001320a8  mov     x29, sp
  1001320ac  stp     x20, x19, [sp, #-0x10]!
  1001320b0  stp     x22, x21, [sp, #-0x10]!
  1001320b4  stp     x24, x23, [sp, #-0x10]!
  1001320b8  stp     x26, x25, [sp, #-0x10]!
  1001320bc  stp     x28, x27, [sp, #-0x10]!
  1001320c0  mov     x19, x0
  1001320c4  mov     x24, #0
  1001320c8  mov     x20, #0
  1001320cc  adrp    x8, #0x100420000
  1001320d0  ldrsw   x25, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001320d4  add     x26, x25, #0x10
  1001320d8  add     x27, x25, #8
  1001320dc  adrp    x8, #0x1003b0000
  1001320e0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001320e4  ldr     x21, [x8]                                ; x21 = _NSParseErrorException[+0x0]
  1001320e8  adrp    x8, #0x100417000
  1001320ec  nop
  1001320f0  ldr     x22, [x8, #0x260]
  1001320f4  add     x28, x25, #0x18
  1001320f8  ldr     x8, [x19, x26]
loc_1001320fc:
  1001320fc  add     x23, x8, #1
  100132100  ldr     x8, [x19, x27]
  100132104  cmp     x23, x8
  100132108  b.ls    loc_100132128                            ; if ((x8 + 1) <=u x8)
  10013210c  adrp    x8, #0x10041d000
  100132110  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132114  mov     x1, x22
  100132118  mov     x2, x21
  10013211c  adrp    x3, #0x1003b9000
  100132120  add     x3, x3, #0x870                           ; @""
  100132124  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132128:
  100132128  ldr     x8, [x19, x28]
  10013212c  cmp     x23, x8
  100132130  b.ls    loc_100132154                            ; if ((x8 + 1) <=u x8)
  100132134  str     x8, [x19, x26]
  100132138  adrp    x8, #0x10041d000
  10013213c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132140  mov     x1, x22
  100132144  mov     x2, x21
  100132148  adrp    x3, #0x1003b9000
  10013214c  add     x3, x3, #0x870                           ; @""
  100132150  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132154:
  100132154  ldr     x9, [x19, x26]
  100132158  add     x8, x9, #1
  10013215c  str     x8, [x19, x26]
  100132160  ldr     x10, [x19, x25]                          ; x10 = self->state_
  100132164  ldrsb   w9, [x10, x9]
  100132168  and     w10, w9, #0x7f
  10013216c  lsl     x10, x10, x24
  100132170  orr     x20, x10, x20
  100132174  tbz     w9, #7, loc_1001321a4                    ; if (!(w9 & (1<<7)))
  100132178  add     x24, x24, #7
  10013217c  cmp     w24, #0x3f
  100132180  b.le    loc_1001320fc                            ; if ((x24 + 7) <= 63)
  100132184  adrp    x8, #0x10041d000
  100132188  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013218c  adrp    x3, #0x1003c7000
  100132190  add     x3, x3, #0x610                           ; @"Unable to read varint64"
  100132194  mov     x1, x22
  100132198  mov     x2, x21
  10013219c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Unable to read varint64"]
  1001321a0  mov     x20, #0
loc_1001321a4:
  1001321a4  mov     x0, x20
  1001321a8  ldp     x28, x27, [sp], #0x10
  1001321ac  ldp     x26, x25, [sp], #0x10
  1001321b0  ldp     x24, x23, [sp], #0x10
  1001321b4  ldp     x22, x21, [sp], #0x10
  1001321b8  ldp     x20, x19, [sp], #0x10
  1001321bc  ldp     x29, x30, [sp], #0x10
  1001321c0  ret

; ======================================================================
; -[TAGPBCodedInputStream readInt32]
; address 0x1001321c4  size 16  kind objc
; ======================================================================
  1001321c4  adrp    x8, #0x100420000
  1001321c8  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001321cc  add     x0, x0, x8
  1001321d0  b       sub_100131048                            ; sub_100131048(x0, _cmd)

; ======================================================================
; -[TAGPBCodedInputStream readFixed64]
; address 0x1001321d4  size 200  kind objc
; ======================================================================
  1001321d4  stp     x29, x30, [sp, #-0x10]!
  1001321d8  mov     x29, sp
  1001321dc  stp     x20, x19, [sp, #-0x10]!
  1001321e0  stp     x22, x21, [sp, #-0x10]!
  1001321e4  mov     x19, x0
  1001321e8  adrp    x8, #0x100420000
  1001321ec  ldrsw   x21, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001321f0  add     x8, x21, x19
  1001321f4  add     x20, x21, #0x10
  1001321f8  ldr     x9, [x19, x20]
  1001321fc  add     x22, x9, #8
  100132200  ldr     x8, [x8, #8]                             ; x8 = self->state_[+0x8]
  100132204  cmp     x22, x8
  100132208  b.ls    loc_100132238                            ; if ((x9 + 8) <=u self->state_[+0x8])
  10013220c  adrp    x8, #0x10041d000
  100132210  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132214  adrp    x8, #0x1003b0000
  100132218  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  10013221c  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100132220  adrp    x8, #0x100417000
  100132224  nop
  100132228  ldr     x1, [x8, #0x260]
  10013222c  adrp    x3, #0x1003b9000
  100132230  add     x3, x3, #0x870                           ; @""
  100132234  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132238:
  100132238  add     x8, x21, x19
  10013223c  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  100132240  cmp     x22, x8
  100132244  b.ls    loc_100132278                            ; if ((x9 + 8) <=u self->state_[+0x18])
  100132248  str     x8, [x19, x20]
  10013224c  adrp    x8, #0x10041d000
  100132250  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132254  adrp    x8, #0x1003b0000
  100132258  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  10013225c  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100132260  adrp    x8, #0x100417000
  100132264  nop
  100132268  ldr     x1, [x8, #0x260]
  10013226c  adrp    x3, #0x1003b9000
  100132270  add     x3, x3, #0x870                           ; @""
  100132274  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132278:
  100132278  ldr     x8, [x19, x21]                           ; x8 = self->state_
  10013227c  ldr     x9, [x19, x20]
  100132280  ldr     x0, [x8, x9]
  100132284  add     x8, x9, #8
  100132288  str     x8, [x19, x20]
  10013228c  ldp     x22, x21, [sp], #0x10
  100132290  ldp     x20, x19, [sp], #0x10
  100132294  ldp     x29, x30, [sp], #0x10
  100132298  ret

; ======================================================================
; -[TAGPBCodedInputStream readFixed32]
; address 0x10013229c  size 200  kind objc
; ======================================================================
  10013229c  stp     x29, x30, [sp, #-0x10]!
  1001322a0  mov     x29, sp
  1001322a4  stp     x20, x19, [sp, #-0x10]!
  1001322a8  stp     x22, x21, [sp, #-0x10]!
  1001322ac  mov     x19, x0
  1001322b0  adrp    x8, #0x100420000
  1001322b4  ldrsw   x21, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001322b8  add     x8, x21, x19
  1001322bc  add     x20, x21, #0x10
  1001322c0  ldr     x9, [x19, x20]
  1001322c4  add     x22, x9, #4
  1001322c8  ldr     x8, [x8, #8]                             ; x8 = self->state_[+0x8]
  1001322cc  cmp     x22, x8
  1001322d0  b.ls    loc_100132300                            ; if ((x9 + 4) <=u self->state_[+0x8])
  1001322d4  adrp    x8, #0x10041d000
  1001322d8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001322dc  adrp    x8, #0x1003b0000
  1001322e0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001322e4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001322e8  adrp    x8, #0x100417000
  1001322ec  nop
  1001322f0  ldr     x1, [x8, #0x260]
  1001322f4  adrp    x3, #0x1003b9000
  1001322f8  add     x3, x3, #0x870                           ; @""
  1001322fc  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132300:
  100132300  add     x8, x21, x19
  100132304  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  100132308  cmp     x22, x8
  10013230c  b.ls    loc_100132340                            ; if ((x9 + 4) <=u self->state_[+0x18])
  100132310  str     x8, [x19, x20]
  100132314  adrp    x8, #0x10041d000
  100132318  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013231c  adrp    x8, #0x1003b0000
  100132320  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100132324  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100132328  adrp    x8, #0x100417000
  10013232c  nop
  100132330  ldr     x1, [x8, #0x260]
  100132334  adrp    x3, #0x1003b9000
  100132338  add     x3, x3, #0x870                           ; @""
  10013233c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132340:
  100132340  ldr     x8, [x19, x21]                           ; x8 = self->state_
  100132344  ldr     x9, [x19, x20]
  100132348  ldr     w0, [x8, x9]
  10013234c  add     x8, x9, #4
  100132350  str     x8, [x19, x20]
  100132354  ldp     x22, x21, [sp], #0x10
  100132358  ldp     x20, x19, [sp], #0x10
  10013235c  ldp     x29, x30, [sp], #0x10
  100132360  ret

; ======================================================================
; -[TAGPBCodedInputStream readBool]
; address 0x100132364  size 40  kind objc
; ======================================================================
  100132364  stp     x29, x30, [sp, #-0x10]!
  100132368  mov     x29, sp
  10013236c  adrp    x8, #0x100420000
  100132370  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100132374  add     x0, x0, x8
  100132378  bl      sub_100131048                            ; sub_100131048(x0, _cmd)
  10013237c  cmp     w0, #0
  100132380  cset    w0, ne
  100132384  ldp     x29, x30, [sp], #0x10
  100132388  ret

; ======================================================================
; -[TAGPBCodedInputStream readString]
; address 0x10013238c  size 32  kind objc
; ======================================================================
  10013238c  stp     x29, x30, [sp, #-0x10]!
  100132390  mov     x29, sp
  100132394  bl      sub_100131450                            ; sub_100131450(self, _cmd)
  100132398  adrp    x8, #0x10041b000
  10013239c  nop
  1001323a0  ldr     x1, [x8, #0xe88]
  1001323a4  ldp     x29, x30, [sp], #0x10
  1001323a8  b       _objc_msgSend                            ; [sub_100131450(self, _cmd) autorelease]

; ======================================================================
; -[TAGPBCodedInputStream readGroup:builder:extensionRegistry:]
; address 0x1001323ac  size 228  kind objc
; ======================================================================
  1001323ac  stp     x29, x30, [sp, #-0x10]!
  1001323b0  mov     x29, sp
  1001323b4  stp     x20, x19, [sp, #-0x10]!
  1001323b8  stp     x22, x21, [sp, #-0x10]!
  1001323bc  stp     x24, x23, [sp, #-0x10]!
  1001323c0  sub     sp, sp, #0x10
  1001323c4  mov     x21, x4
  1001323c8  mov     x22, x3
  1001323cc  mov     x20, x2
  1001323d0  mov     x19, x0
  1001323d4  adrp    x24, #0x100420000
  1001323d8  ldrsw   x23, [x24, #0x924]                       ; ivar offset TAGPBCodedInputStream.recursionDepth_ (+0x38)
  1001323dc  ldr     x8, [x19, x23]                           ; x8 = self->recursionDepth_
  1001323e0  cmp     x8, #0x40
  1001323e4  b.lo    loc_100132428                            ; if (self->recursionDepth_ <u 64)
  1001323e8  adrp    x9, #0x10041d000
  1001323ec  ldr     x0, [x9, #0xfc8]                         ; class NSException
  1001323f0  adrp    x9, #0x1003b0000
  1001323f4  ldr     x9, [x9, #0x70]                          ; _NSParseErrorException
  1001323f8  ldr     x2, [x9]                                 ; x2 = _NSParseErrorException[+0x0]
  1001323fc  adrp    x9, #0x100417000
  100132400  nop
  100132404  ldr     x1, [x9, #0x260]
  100132408  mov     x9, #0x40
  10013240c  stp     x8, x9, [sp]
  100132410  adrp    x3, #0x1003c6000
  100132414  add     x3, x3, #0xd90                           ; @"recursionDepth(%ld) >= %ld"
  100132418  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"recursionDepth(%ld) >= %ld", self->recursionDepth_, 64]
  10013241c  ldrsw   x9, [x24, #0x924]                        ; ivar offset TAGPBCodedInputStream.recursionDepth_ (+0x38)
  100132420  ldr     x8, [x19, x9]                            ; x8 = self->recursionDepth_
  100132424  b       loc_10013242c
loc_100132428:
  100132428  mov     x9, x23
loc_10013242c:
  10013242c  add     x8, x8, #1
  100132430  str     x8, [x19, w9, sxtw]                      ; self->recursionDepth_ = (self->recursionDepth_ + 1)
  100132434  adrp    x8, #0x10041c000
  100132438  nop
  10013243c  ldr     x1, [x8, #0x578]
  100132440  mov     x0, x22
  100132444  mov     x2, x19
  100132448  mov     x3, x21
  10013244c  bl      _objc_msgSend                            ; [arg2 mergeFromCodedInputStream:self extensionRegistry:arg3]
  100132450  lsl     w8, w20, #3
  100132454  orr     w2, w8, #4
  100132458  adrp    x8, #0x10041c000
  10013245c  nop
  100132460  ldr     x1, [x8, #0x568]
  100132464  mov     x0, x19
  100132468  bl      _objc_msgSend                            ; [self checkLastTagWas:((arg1 << 3) | 4)]
  10013246c  ldr     x8, [x19, x23]                           ; x8 = self->recursionDepth_
  100132470  sub     x8, x8, #1
  100132474  str     x8, [x19, x23]                           ; self->recursionDepth_ = (self->recursionDepth_ - 1)
  100132478  sub     sp, x29, #0x30
  10013247c  ldp     x24, x23, [sp], #0x10
  100132480  ldp     x22, x21, [sp], #0x10
  100132484  ldp     x20, x19, [sp], #0x10
  100132488  ldp     x29, x30, [sp], #0x10
  10013248c  ret

; ======================================================================
; -[TAGPBCodedInputStream readUnknownGroup:builder:]
; address 0x100132490  size 220  kind objc
; ======================================================================
  100132490  stp     x29, x30, [sp, #-0x10]!
  100132494  mov     x29, sp
  100132498  stp     x20, x19, [sp, #-0x10]!
  10013249c  stp     x22, x21, [sp, #-0x10]!
  1001324a0  stp     x24, x23, [sp, #-0x10]!
  1001324a4  sub     sp, sp, #0x10
  1001324a8  mov     x21, x3
  1001324ac  mov     x20, x2
  1001324b0  mov     x19, x0
  1001324b4  adrp    x23, #0x100420000
  1001324b8  ldrsw   x22, [x23, #0x924]                       ; ivar offset TAGPBCodedInputStream.recursionDepth_ (+0x38)
  1001324bc  ldr     x8, [x19, x22]                           ; x8 = self->recursionDepth_
  1001324c0  cmp     x8, #0x40
  1001324c4  b.lo    loc_100132508                            ; if (self->recursionDepth_ <u 64)
  1001324c8  adrp    x9, #0x10041d000
  1001324cc  ldr     x0, [x9, #0xfc8]                         ; class NSException
  1001324d0  adrp    x9, #0x1003b0000
  1001324d4  ldr     x9, [x9, #0x70]                          ; _NSParseErrorException
  1001324d8  ldr     x2, [x9]                                 ; x2 = _NSParseErrorException[+0x0]
  1001324dc  adrp    x9, #0x100417000
  1001324e0  nop
  1001324e4  ldr     x1, [x9, #0x260]
  1001324e8  mov     x9, #0x40
  1001324ec  stp     x8, x9, [sp]
  1001324f0  adrp    x3, #0x1003c6000
  1001324f4  add     x3, x3, #0xd90                           ; @"recursionDepth(%ld) >= %ld"
  1001324f8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"recursionDepth(%ld) >= %ld", self->recursionDepth_, 64]
  1001324fc  ldrsw   x9, [x23, #0x924]                        ; ivar offset TAGPBCodedInputStream.recursionDepth_ (+0x38)
  100132500  ldr     x8, [x19, x9]                            ; x8 = self->recursionDepth_
  100132504  b       loc_10013250c
loc_100132508:
  100132508  mov     x9, x22
loc_10013250c:
  10013250c  add     x8, x8, #1
  100132510  str     x8, [x19, w9, sxtw]                      ; self->recursionDepth_ = (self->recursionDepth_ + 1)
  100132514  adrp    x8, #0x10041c000
  100132518  nop
  10013251c  ldr     x1, [x8, #0x580]
  100132520  mov     x0, x21
  100132524  mov     x2, x19
  100132528  bl      _objc_msgSend                            ; [arg2 mergeFromCodedInputStream:self]
  10013252c  lsl     w8, w20, #3
  100132530  orr     w2, w8, #4
  100132534  adrp    x8, #0x10041c000
  100132538  nop
  10013253c  ldr     x1, [x8, #0x568]
  100132540  mov     x0, x19
  100132544  bl      _objc_msgSend                            ; [self checkLastTagWas:((arg1 << 3) | 4)]
  100132548  ldr     x8, [x19, x22]                           ; x8 = self->recursionDepth_
  10013254c  sub     x8, x8, #1
  100132550  str     x8, [x19, x22]                           ; self->recursionDepth_ = (self->recursionDepth_ - 1)
  100132554  sub     sp, x29, #0x30
  100132558  ldp     x24, x23, [sp], #0x10
  10013255c  ldp     x22, x21, [sp], #0x10
  100132560  ldp     x20, x19, [sp], #0x10
  100132564  ldp     x29, x30, [sp], #0x10
  100132568  ret

; ======================================================================
; -[TAGPBCodedInputStream readMessage:extensionRegistry:]
; address 0x10013256c  size 256  kind objc
; ======================================================================
  10013256c  stp     x29, x30, [sp, #-0x10]!
  100132570  mov     x29, sp
  100132574  stp     x20, x19, [sp, #-0x10]!
  100132578  stp     x22, x21, [sp, #-0x10]!
  10013257c  stp     x24, x23, [sp, #-0x10]!
  100132580  sub     sp, sp, #0x10
  100132584  mov     x20, x3
  100132588  mov     x21, x2
  10013258c  mov     x19, x0
  100132590  adrp    x23, #0x100420000
  100132594  ldrsw   x8, [x23, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100132598  add     x0, x19, x8
  10013259c  bl      sub_100131048                            ; sub_100131048(x0, _cmd, arg1, arg2)
  1001325a0  mov     x22, x0
  1001325a4  adrp    x8, #0x100420000
  1001325a8  ldrsw   x24, [x8, #0x924]                        ; ivar offset TAGPBCodedInputStream.recursionDepth_ (+0x38)
  1001325ac  ldr     x8, [x19, x24]                           ; x8 = self->recursionDepth_
  1001325b0  cmp     x8, #0x40
  1001325b4  b.lo    loc_1001325ec                            ; if (self->recursionDepth_ <u 64)
  1001325b8  adrp    x9, #0x10041d000
  1001325bc  ldr     x0, [x9, #0xfc8]                         ; class NSException
  1001325c0  adrp    x9, #0x1003b0000
  1001325c4  ldr     x9, [x9, #0x70]                          ; _NSParseErrorException
  1001325c8  ldr     x2, [x9]                                 ; x2 = _NSParseErrorException[+0x0]
  1001325cc  adrp    x9, #0x100417000
  1001325d0  nop
  1001325d4  ldr     x1, [x9, #0x260]
  1001325d8  mov     x9, #0x40
  1001325dc  stp     x8, x9, [sp]
  1001325e0  adrp    x3, #0x1003c6000
  1001325e4  add     x3, x3, #0xd90                           ; @"recursionDepth(%ld) >= %ld"
  1001325e8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"recursionDepth(%ld) >= %ld", self->recursionDepth_, 64]
loc_1001325ec:
  1001325ec  sxtw    x1, w22
  1001325f0  mov     x0, x19
  1001325f4  bl      sub_100131850                            ; sub_100131850(self, sub_100131048(x0, _cmd, arg1, arg2))
  1001325f8  mov     x22, x0
  1001325fc  ldr     x8, [x19, x24]                           ; x8 = self->recursionDepth_
  100132600  add     x8, x8, #1
  100132604  str     x8, [x19, x24]                           ; self->recursionDepth_ = (self->recursionDepth_ + 1)
  100132608  adrp    x8, #0x10041c000
  10013260c  nop
  100132610  ldr     x1, [x8, #0x578]
  100132614  mov     x0, x21
  100132618  mov     x2, x19
  10013261c  mov     x3, x20
  100132620  bl      _objc_msgSend                            ; [arg1 mergeFromCodedInputStream:self extensionRegistry:arg2]
  100132624  adrp    x8, #0x10041c000
  100132628  nop
  10013262c  ldr     x1, [x8, #0x568]
  100132630  mov     w2, #0
  100132634  mov     x0, x19
  100132638  bl      _objc_msgSend                            ; [self checkLastTagWas:0]
  10013263c  ldr     x8, [x19, x24]                           ; x8 = self->recursionDepth_
  100132640  sub     x8, x8, #1
  100132644  str     x8, [x19, x24]                           ; self->recursionDepth_ = (self->recursionDepth_ - 1)
  100132648  ldrsw   x8, [x23, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013264c  add     x8, x8, x19
  100132650  str     x22, [x8, #0x18]                         ; self->state_[+0x18] = sub_100131850(self, sub_100131048(x0, _cmd, arg1, arg2))
  100132654  sub     sp, x29, #0x30
  100132658  ldp     x24, x23, [sp], #0x10
  10013265c  ldp     x22, x21, [sp], #0x10
  100132660  ldp     x20, x19, [sp], #0x10
  100132664  ldp     x29, x30, [sp], #0x10
  100132668  ret

; ======================================================================
; -[TAGPBCodedInputStream readData]
; address 0x10013266c  size 32  kind objc
; ======================================================================
  10013266c  stp     x29, x30, [sp, #-0x10]!
  100132670  mov     x29, sp
  100132674  bl      sub_100131730                            ; sub_100131730(self, _cmd)
  100132678  adrp    x8, #0x10041b000
  10013267c  nop
  100132680  ldr     x1, [x8, #0xe88]
  100132684  ldp     x29, x30, [sp], #0x10
  100132688  b       _objc_msgSend                            ; [sub_100131730(self, _cmd) autorelease]

; ======================================================================
; -[TAGPBCodedInputStream readUInt32]
; address 0x10013268c  size 16  kind objc
; ======================================================================
  10013268c  adrp    x8, #0x100420000
  100132690  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100132694  add     x0, x0, x8
  100132698  b       sub_100131048                            ; sub_100131048(x0, _cmd)

; ======================================================================
; -[TAGPBCodedInputStream readEnum]
; address 0x10013269c  size 16  kind objc
; ======================================================================
  10013269c  adrp    x8, #0x100420000
  1001326a0  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001326a4  add     x0, x0, x8
  1001326a8  b       sub_100131048                            ; sub_100131048(x0, _cmd)

; ======================================================================
; -[TAGPBCodedInputStream readSFixed32]
; address 0x1001326ac  size 200  kind objc
; ======================================================================
  1001326ac  stp     x29, x30, [sp, #-0x10]!
  1001326b0  mov     x29, sp
  1001326b4  stp     x20, x19, [sp, #-0x10]!
  1001326b8  stp     x22, x21, [sp, #-0x10]!
  1001326bc  mov     x19, x0
  1001326c0  adrp    x8, #0x100420000
  1001326c4  ldrsw   x21, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001326c8  add     x8, x21, x19
  1001326cc  add     x20, x21, #0x10
  1001326d0  ldr     x9, [x19, x20]
  1001326d4  add     x22, x9, #4
  1001326d8  ldr     x8, [x8, #8]                             ; x8 = self->state_[+0x8]
  1001326dc  cmp     x22, x8
  1001326e0  b.ls    loc_100132710                            ; if ((x9 + 4) <=u self->state_[+0x8])
  1001326e4  adrp    x8, #0x10041d000
  1001326e8  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001326ec  adrp    x8, #0x1003b0000
  1001326f0  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001326f4  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001326f8  adrp    x8, #0x100417000
  1001326fc  nop
  100132700  ldr     x1, [x8, #0x260]
  100132704  adrp    x3, #0x1003b9000
  100132708  add     x3, x3, #0x870                           ; @""
  10013270c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132710:
  100132710  add     x8, x21, x19
  100132714  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  100132718  cmp     x22, x8
  10013271c  b.ls    loc_100132750                            ; if ((x9 + 4) <=u self->state_[+0x18])
  100132720  str     x8, [x19, x20]
  100132724  adrp    x8, #0x10041d000
  100132728  ldr     x0, [x8, #0xfc8]                         ; class NSException
  10013272c  adrp    x8, #0x1003b0000
  100132730  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  100132734  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100132738  adrp    x8, #0x100417000
  10013273c  nop
  100132740  ldr     x1, [x8, #0x260]
  100132744  adrp    x3, #0x1003b9000
  100132748  add     x3, x3, #0x870                           ; @""
  10013274c  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132750:
  100132750  ldr     x8, [x19, x21]                           ; x8 = self->state_
  100132754  ldr     x9, [x19, x20]
  100132758  ldr     w0, [x8, x9]
  10013275c  add     x8, x9, #4
  100132760  str     x8, [x19, x20]
  100132764  ldp     x22, x21, [sp], #0x10
  100132768  ldp     x20, x19, [sp], #0x10
  10013276c  ldp     x29, x30, [sp], #0x10
  100132770  ret

; ======================================================================
; -[TAGPBCodedInputStream readSFixed64]
; address 0x100132774  size 200  kind objc
; ======================================================================
  100132774  stp     x29, x30, [sp, #-0x10]!
  100132778  mov     x29, sp
  10013277c  stp     x20, x19, [sp, #-0x10]!
  100132780  stp     x22, x21, [sp, #-0x10]!
  100132784  mov     x19, x0
  100132788  adrp    x8, #0x100420000
  10013278c  ldrsw   x21, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100132790  add     x8, x21, x19
  100132794  add     x20, x21, #0x10
  100132798  ldr     x9, [x19, x20]
  10013279c  add     x22, x9, #8
  1001327a0  ldr     x8, [x8, #8]                             ; x8 = self->state_[+0x8]
  1001327a4  cmp     x22, x8
  1001327a8  b.ls    loc_1001327d8                            ; if ((x9 + 8) <=u self->state_[+0x8])
  1001327ac  adrp    x8, #0x10041d000
  1001327b0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001327b4  adrp    x8, #0x1003b0000
  1001327b8  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001327bc  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  1001327c0  adrp    x8, #0x100417000
  1001327c4  nop
  1001327c8  ldr     x1, [x8, #0x260]
  1001327cc  adrp    x3, #0x1003b9000
  1001327d0  add     x3, x3, #0x870                           ; @""
  1001327d4  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001327d8:
  1001327d8  add     x8, x21, x19
  1001327dc  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  1001327e0  cmp     x22, x8
  1001327e4  b.ls    loc_100132818                            ; if ((x9 + 8) <=u self->state_[+0x18])
  1001327e8  str     x8, [x19, x20]
  1001327ec  adrp    x8, #0x10041d000
  1001327f0  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001327f4  adrp    x8, #0x1003b0000
  1001327f8  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001327fc  ldr     x2, [x8]                                 ; x2 = _NSParseErrorException[+0x0]
  100132800  adrp    x8, #0x100417000
  100132804  nop
  100132808  ldr     x1, [x8, #0x260]
  10013280c  adrp    x3, #0x1003b9000
  100132810  add     x3, x3, #0x870                           ; @""
  100132814  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132818:
  100132818  ldr     x8, [x19, x21]                           ; x8 = self->state_
  10013281c  ldr     x9, [x19, x20]
  100132820  ldr     x0, [x8, x9]
  100132824  add     x8, x9, #8
  100132828  str     x8, [x19, x20]
  10013282c  ldp     x22, x21, [sp], #0x10
  100132830  ldp     x20, x19, [sp], #0x10
  100132834  ldp     x29, x30, [sp], #0x10
  100132838  ret

; ======================================================================
; -[TAGPBCodedInputStream readSInt32]
; address 0x10013283c  size 44  kind objc
; ======================================================================
  10013283c  stp     x29, x30, [sp, #-0x10]!
  100132840  mov     x29, sp
  100132844  adrp    x8, #0x100420000
  100132848  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  10013284c  add     x0, x0, x8
  100132850  bl      sub_100131048                            ; sub_100131048(x0, _cmd)
  100132854  and     w8, w0, #1
  100132858  neg     w8, w8
  10013285c  eor     w0, w8, w0, lsr #1
  100132860  ldp     x29, x30, [sp], #0x10
  100132864  ret

; ======================================================================
; -[TAGPBCodedInputStream readSInt64]
; address 0x100132868  size 296  kind objc
; ======================================================================
  100132868  stp     x29, x30, [sp, #-0x10]!
  10013286c  mov     x29, sp
  100132870  stp     x20, x19, [sp, #-0x10]!
  100132874  stp     x22, x21, [sp, #-0x10]!
  100132878  stp     x24, x23, [sp, #-0x10]!
  10013287c  stp     x26, x25, [sp, #-0x10]!
  100132880  stp     x28, x27, [sp, #-0x10]!
  100132884  mov     x19, x0
  100132888  mov     x24, #0
  10013288c  mov     x23, #0
  100132890  adrp    x8, #0x100420000
  100132894  ldrsw   x25, [x8, #0x91c]                        ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  100132898  add     x26, x25, #0x10
  10013289c  add     x27, x25, #8
  1001328a0  adrp    x8, #0x1003b0000
  1001328a4  ldr     x8, [x8, #0x70]                          ; _NSParseErrorException
  1001328a8  ldr     x20, [x8]                                ; x20 = _NSParseErrorException[+0x0]
  1001328ac  adrp    x8, #0x100417000
  1001328b0  nop
  1001328b4  ldr     x21, [x8, #0x260]
  1001328b8  add     x28, x25, #0x18
  1001328bc  ldr     x8, [x19, x26]
loc_1001328c0:
  1001328c0  add     x22, x8, #1
  1001328c4  ldr     x8, [x19, x27]
  1001328c8  cmp     x22, x8
  1001328cc  b.ls    loc_1001328ec                            ; if ((x8 + 1) <=u x8)
  1001328d0  adrp    x8, #0x10041d000
  1001328d4  ldr     x0, [x8, #0xfc8]                         ; class NSException
  1001328d8  mov     x1, x21
  1001328dc  mov     x2, x20
  1001328e0  adrp    x3, #0x1003b9000
  1001328e4  add     x3, x3, #0x870                           ; @""
  1001328e8  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_1001328ec:
  1001328ec  ldr     x8, [x19, x28]
  1001328f0  cmp     x22, x8
  1001328f4  b.ls    loc_100132918                            ; if ((x8 + 1) <=u x8)
  1001328f8  str     x8, [x19, x26]
  1001328fc  adrp    x8, #0x10041d000
  100132900  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132904  mov     x1, x21
  100132908  mov     x2, x20
  10013290c  adrp    x3, #0x1003b9000
  100132910  add     x3, x3, #0x870                           ; @""
  100132914  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@""]
loc_100132918:
  100132918  ldr     x9, [x19, x26]
  10013291c  add     x8, x9, #1
  100132920  str     x8, [x19, x26]
  100132924  ldr     x10, [x19, x25]                          ; x10 = self->state_
  100132928  ldrsb   w9, [x10, x9]
  10013292c  and     w10, w9, #0x7f
  100132930  lsl     x10, x10, x24
  100132934  orr     x23, x10, x23
  100132938  tbz     w9, #7, loc_100132968                    ; if (!(w9 & (1<<7)))
  10013293c  add     x24, x24, #7
  100132940  cmp     w24, #0x3f
  100132944  b.le    loc_1001328c0                            ; if ((x24 + 7) <= 63)
  100132948  adrp    x8, #0x10041d000
  10013294c  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100132950  adrp    x3, #0x1003c7000
  100132954  add     x3, x3, #0x610                           ; @"Unable to read varint64"
  100132958  mov     x1, x21
  10013295c  mov     x2, x20
  100132960  bl      _objc_msgSend                            ; [NSException raise:_NSParseErrorException[+0x0] format:@"Unable to read varint64"]
  100132964  mov     x23, #0
loc_100132968:
  100132968  and     x8, x23, #1
  10013296c  neg     x8, x8
  100132970  eor     x0, x8, x23, lsr #1
  100132974  ldp     x28, x27, [sp], #0x10
  100132978  ldp     x26, x25, [sp], #0x10
  10013297c  ldp     x24, x23, [sp], #0x10
  100132980  ldp     x22, x21, [sp], #0x10
  100132984  ldp     x20, x19, [sp], #0x10
  100132988  ldp     x29, x30, [sp], #0x10
  10013298c  ret

; ======================================================================
; -[TAGPBCodedInputStream pushLimit:]
; address 0x100132990  size 8  kind objc
; ======================================================================
  100132990  mov     x1, x2
  100132994  b       sub_100131850                            ; sub_100131850(self, arg1, arg1)

; ======================================================================
; -[TAGPBCodedInputStream popLimit:]
; address 0x100132998  size 20  kind objc
; ======================================================================
  100132998  adrp    x8, #0x100420000
  10013299c  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001329a0  add     x8, x8, x0
  1001329a4  str     x2, [x8, #0x18]                          ; self->state_[+0x18] = arg1
  1001329a8  ret

; ======================================================================
; -[TAGPBCodedInputStream bytesUntilLimit]
; address 0x1001329ac  size 44  kind objc
; ======================================================================
  1001329ac  adrp    x8, #0x100420000
  1001329b0  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001329b4  add     x8, x8, x0
  1001329b8  ldr     x9, [x8, #0x18]                          ; x9 = self->state_[+0x18]
  1001329bc  cmn     x9, #1
  1001329c0  b.eq    loc_1001329d0                            ; if (self->state_[+0x18] == -1)
  1001329c4  ldr     x8, [x8, #0x10]                          ; x8 = self->state_[+0x10]
  1001329c8  sub     x0, x9, x8
  1001329cc  ret
loc_1001329d0:
  1001329d0  mov     x0, #-1
  1001329d4  ret

; ======================================================================
; -[TAGPBCodedInputStream isAtEnd]
; address 0x1001329d8  size 52  kind objc
; ======================================================================
  1001329d8  adrp    x8, #0x100420000
  1001329dc  ldrsw   x8, [x8, #0x91c]                         ; ivar offset TAGPBCodedInputStream.state_ (+0x10)
  1001329e0  add     x8, x8, x0
  1001329e4  ldp     x10, x9, [x8, #8]
  1001329e8  cmp     x9, x10
  1001329ec  b.ne    loc_1001329f8                            ; if (self->state_[+0x10] != self->state_[+0x8])
  1001329f0  mov     w8, #1
  1001329f4  b       loc_100132a04
loc_1001329f8:
  1001329f8  ldr     x8, [x8, #0x18]                          ; x8 = self->state_[+0x18]
  1001329fc  cmp     x9, x8
  100132a00  cset    w8, eq
loc_100132a04:
  100132a04  and     w0, w8, #1
  100132a08  ret
