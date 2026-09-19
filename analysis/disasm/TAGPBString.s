// unit TAGPBString — 11 functions
//   0x100132a0c     132  -[TAGPBString dealloc]
//   0x100132a90     104  -[TAGPBString length]
//   0x100132af8     216  sub_100132af8
//   0x100132bd0     100  -[TAGPBString characterAtIndex:]
//   0x100132c34     128  -[TAGPBString copyWithZone:]
//   0x100132cb4      64  -[TAGPBString mutableCopyWithZone:]
//   0x100132cf4      44  -[TAGPBString hash]
//   0x100132d20     152  -[TAGPBString isEqual:]
//   0x100132db8     152  -[TAGPBString getCharacters:range:]
//   0x100132e50     172  -[TAGPBString lengthOfBytesUsingEncoding:]
//   0x100132efc     320  -[TAGPBString getBytes:maxLength:usedLength:encoding:options:range:remainingRange:]

; ======================================================================
; -[TAGPBString dealloc]
; address 0x100132a0c  size 132  kind objc
; ======================================================================
  100132a0c  stp     x29, x30, [sp, #-0x10]!
  100132a10  mov     x29, sp
  100132a14  stp     x20, x19, [sp, #-0x10]!
  100132a18  sub     sp, sp, #0x10
  100132a1c  mov     x19, x0
  100132a20  adrp    x8, #0x100420000
  100132a24  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132a28  ldr     x0, [x19, x8]                            ; x0 = self->string_
  100132a2c  cbz     x0, loc_100132a34                        ; if (self->string_ == 0)
  100132a30  bl      _CFRelease                               ; CFRelease(self->string_, _cmd)
loc_100132a34:
  100132a34  adrp    x8, #0x100420000
  100132a38  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132a3c  ldr     x0, [x19, x8]                            ; x0 = self->utf8_
  100132a40  cbz     x0, loc_100132a5c                        ; if (self->utf8_ == 0)
  100132a44  adrp    x8, #0x100420000
  100132a48  ldrsw   x8, [x8, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132a4c  add     x8, x19, x8
  100132a50  cmp     x0, x8
  100132a54  b.eq    loc_100132a5c                            ; if (self->utf8_ == x8)
  100132a58  bl      _free                                    ; free(self->utf8_)
loc_100132a5c:
  100132a5c  str     x19, [sp]
  100132a60  adrp    x8, #0x10041f000
  100132a64  ldr     x8, [x8, #0x178]
  100132a68  str     x8, [sp, #8]
  100132a6c  adrp    x8, #0x100416000
  100132a70  nop
  100132a74  ldr     x1, [x8, #0xfc8]
  100132a78  mov     x0, sp
  100132a7c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100132a80  sub     sp, x29, #0x10
  100132a84  ldp     x20, x19, [sp], #0x10
  100132a88  ldp     x29, x30, [sp], #0x10
  100132a8c  ret

; ======================================================================
; -[TAGPBString length]
; address 0x100132a90  size 104  kind objc
; ======================================================================
  100132a90  stp     x29, x30, [sp, #-0x10]!
  100132a94  mov     x29, sp
  100132a98  stp     x20, x19, [sp, #-0x10]!
  100132a9c  mov     x19, x0
  100132aa0  adrp    x8, #0x100420000
  100132aa4  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132aa8  ldr     x8, [x19, x8]                            ; x8 = self->utf8_
  100132aac  adrp    x9, #0x100420000
  100132ab0  ldrsw   x9, [x9, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132ab4  add     x9, x19, x9
  100132ab8  cmp     x8, x9
  100132abc  b.eq    loc_100132ae0                            ; if (self->utf8_ == x9)
  100132ac0  mov     x0, x19
  100132ac4  bl      sub_100132af8                            ; sub_100132af8(self, _cmd)
  100132ac8  adrp    x8, #0x100420000
  100132acc  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132ad0  ldr     x0, [x19, x8]                            ; x0 = self->string_
  100132ad4  ldp     x20, x19, [sp], #0x10
  100132ad8  ldp     x29, x30, [sp], #0x10
  100132adc  b       _CFStringGetLength                       ; CFStringGetLength(self->string_)
loc_100132ae0:
  100132ae0  adrp    x8, #0x100420000
  100132ae4  ldrsw   x8, [x8, #0x930]                         ; ivar offset TAGPBString.utf8Len_ (+0x18)
  100132ae8  ldr     x0, [x19, x8]                            ; x0 = self->utf8Len_
  100132aec  ldp     x20, x19, [sp], #0x10
  100132af0  ldp     x29, x30, [sp], #0x10
  100132af4  ret

; ======================================================================
; sub_100132af8
; address 0x100132af8  size 216  kind sub
; ======================================================================
  100132af8  stp     x29, x30, [sp, #-0x10]!
  100132afc  mov     x29, sp
  100132b00  stp     x20, x19, [sp, #-0x10]!
  100132b04  stp     x22, x21, [sp, #-0x10]!
  100132b08  stp     x24, x23, [sp, #-0x10]!
  100132b0c  mov     x19, x0
  100132b10  adrp    x20, #0x100420000
  100132b14  ldrsw   x8, [x20, #0x934]                        ; ivar offset TAGPBString.lock_ (+0x20)
  100132b18  add     x0, x19, x8
  100132b1c  bl      _OSSpinLockLock                          ; OSSpinLockLock(x0, a1, a2, a3)
  100132b20  adrp    x22, #0x100420000
  100132b24  ldrsw   x8, [x22, #0x93c]                        ; ivar offset TAGPBString.string_ (+0x8)
  100132b28  ldr     x8, [x19, x8]                            ; x8 = a0->string_
  100132b2c  cbnz    x8, loc_100132bb4                        ; if (a0->string_ != 0)
  100132b30  adrp    x21, #0x100420000
  100132b34  ldrsw   x8, [x21, #0x92c]                        ; ivar offset TAGPBString.utf8_ (+0x10)
  100132b38  ldr     x1, [x19, x8]                            ; x1 = a0->utf8_
  100132b3c  cbz     x1, loc_100132bb4                        ; if (a0->utf8_ == 0)
  100132b40  adrp    x23, #0x100420000
  100132b44  ldrsw   x8, [x23, #0x930]                        ; ivar offset TAGPBString.utf8Len_ (+0x18)
  100132b48  ldr     x2, [x19, x8]                            ; x2 = a0->utf8Len_
  100132b4c  adrp    x8, #0x1003b0000
  100132b50  ldr     x8, [x8, #0x1f8]                         ; _kCFAllocatorNull
  100132b54  ldr     x5, [x8]                                 ; x5 = _kCFAllocatorNull[+0x0]
  100132b58  mov     x0, #0
  100132b5c  mov     w3, #0x8000000
  100132b60  movk    w3, #0x100
  100132b64  mov     w4, #0
  100132b68  bl      _CFStringCreateWithBytesNoCopy           ; CFStringCreateWithBytesNoCopy(0, a0->utf8_, a0->utf8Len_, 0x8000100)
  100132b6c  ldrsw   x8, [x22, #0x93c]                        ; ivar offset TAGPBString.string_ (+0x8)
  100132b70  str     x0, [x19, x8]                            ; a0->string_ = CFStringCreateWithBytesNoCopy(0, a0->utf8_, a0->utf8Len_, 0x8000100)
  100132b74  cbnz    x0, loc_100132b8c                        ; if (CFStringCreateWithBytesNoCopy(0, a0->utf8_, a0->utf8Len_, 0x8000100) != 0)
  100132b78  adrp    x9, #0x1003b9000
  100132b7c  add     x9, x9, #0x870                           ; @""
  100132b80  str     x9, [x19, x8]                            ; a0->string_ = @""
  100132b84  ldrsw   x8, [x23, #0x930]                        ; ivar offset TAGPBString.utf8Len_ (+0x18)
  100132b88  str     xzr, [x19, x8]                           ; a0->utf8Len_ = 0
loc_100132b8c:
  100132b8c  ldrsw   x8, [x21, #0x92c]                        ; ivar offset TAGPBString.utf8_ (+0x10)
  100132b90  ldr     x0, [x19, x8]                            ; x0 = a0->utf8_
  100132b94  adrp    x8, #0x100420000
  100132b98  ldrsw   x8, [x8, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132b9c  add     x8, x19, x8
  100132ba0  cmp     x0, x8
  100132ba4  b.eq    loc_100132bb4                            ; if (a0->utf8_ == x8)
  100132ba8  bl      _free                                    ; free(a0->utf8_)
  100132bac  ldrsw   x8, [x21, #0x92c]                        ; ivar offset TAGPBString.utf8_ (+0x10)
  100132bb0  str     xzr, [x19, x8]                           ; a0->utf8_ = 0
loc_100132bb4:
  100132bb4  ldrsw   x8, [x20, #0x934]                        ; ivar offset TAGPBString.lock_ (+0x20)
  100132bb8  add     x0, x19, x8
  100132bbc  ldp     x24, x23, [sp], #0x10
  100132bc0  ldp     x22, x21, [sp], #0x10
  100132bc4  ldp     x20, x19, [sp], #0x10
  100132bc8  ldp     x29, x30, [sp], #0x10
  100132bcc  b       _OSSpinLockUnlock                        ; OSSpinLockUnlock(x0)

; ======================================================================
; -[TAGPBString characterAtIndex:]
; address 0x100132bd0  size 100  kind objc
; ======================================================================
  100132bd0  stp     x29, x30, [sp, #-0x10]!
  100132bd4  mov     x29, sp
  100132bd8  stp     x20, x19, [sp, #-0x10]!
  100132bdc  mov     x19, x2
  100132be0  mov     x20, x0
  100132be4  adrp    x8, #0x100420000
  100132be8  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132bec  ldr     x8, [x20, x8]                            ; x8 = self->utf8_
  100132bf0  adrp    x9, #0x100420000
  100132bf4  ldrsw   x9, [x9, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132bf8  add     x9, x20, x9
  100132bfc  cmp     x8, x9
  100132c00  b.eq    loc_100132c24                            ; if (self->utf8_ == x9)
  100132c04  mov     x0, x20
  100132c08  bl      sub_100132af8                            ; sub_100132af8(self, _cmd, arg1)
  100132c0c  adrp    x8, #0x100420000
  100132c10  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132c14  ldr     x0, [x20, x8]                            ; x0 = self->string_
  100132c18  mov     x1, x19
  100132c1c  bl      _CFStringGetCharacterAtIndex             ; CFStringGetCharacterAtIndex(self->string_, arg1)
  100132c20  b       loc_100132c28
loc_100132c24:
  100132c24  ldrb    w0, [x8, x19]
loc_100132c28:
  100132c28  ldp     x20, x19, [sp], #0x10
  100132c2c  ldp     x29, x30, [sp], #0x10
  100132c30  ret

; ======================================================================
; -[TAGPBString copyWithZone:]
; address 0x100132c34  size 128  kind objc
; ======================================================================
  100132c34  stp     x29, x30, [sp, #-0x10]!
  100132c38  mov     x29, sp
  100132c3c  stp     x20, x19, [sp, #-0x10]!
  100132c40  mov     x19, x2
  100132c44  mov     x20, x0
  100132c48  adrp    x8, #0x100420000
  100132c4c  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132c50  ldr     x8, [x20, x8]                            ; x8 = self->utf8_
  100132c54  adrp    x9, #0x100420000
  100132c58  ldrsw   x9, [x9, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132c5c  add     x9, x20, x9
  100132c60  cmp     x8, x9
  100132c64  b.eq    loc_100132c98                            ; if (self->utf8_ == x9)
  100132c68  mov     x0, x20
  100132c6c  bl      sub_100132af8                            ; sub_100132af8(self, _cmd, arg1)
  100132c70  adrp    x8, #0x100420000
  100132c74  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132c78  ldr     x0, [x20, x8]                            ; x0 = self->string_
  100132c7c  adrp    x8, #0x10041c000
  100132c80  nop
  100132c84  ldr     x1, [x8, #0x588]
  100132c88  mov     x2, x19
  100132c8c  ldp     x20, x19, [sp], #0x10
  100132c90  ldp     x29, x30, [sp], #0x10
  100132c94  b       _objc_msgSend                            ; [self->string_ copyWithZone:arg1]
loc_100132c98:
  100132c98  adrp    x8, #0x10041b000
  100132c9c  nop
  100132ca0  ldr     x1, [x8, #0xdb8]
  100132ca4  mov     x0, x20
  100132ca8  ldp     x20, x19, [sp], #0x10
  100132cac  ldp     x29, x30, [sp], #0x10
  100132cb0  b       _objc_msgSend                            ; [self retain]

; ======================================================================
; -[TAGPBString mutableCopyWithZone:]
; address 0x100132cb4  size 64  kind objc
; ======================================================================
  100132cb4  stp     x29, x30, [sp, #-0x10]!
  100132cb8  mov     x29, sp
  100132cbc  stp     x20, x19, [sp, #-0x10]!
  100132cc0  mov     x19, x2
  100132cc4  mov     x20, x0
  100132cc8  bl      sub_100132af8                            ; sub_100132af8(self, _cmd, arg1)
  100132ccc  adrp    x8, #0x100420000
  100132cd0  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132cd4  ldr     x0, [x20, x8]                            ; x0 = self->string_
  100132cd8  adrp    x8, #0x10041c000
  100132cdc  nop
  100132ce0  ldr     x1, [x8, #0x590]
  100132ce4  mov     x2, x19
  100132ce8  ldp     x20, x19, [sp], #0x10
  100132cec  ldp     x29, x30, [sp], #0x10
  100132cf0  b       _objc_msgSend                            ; [self->string_ mutableCopyWithZone:arg1]

; ======================================================================
; -[TAGPBString hash]
; address 0x100132cf4  size 44  kind objc
; ======================================================================
  100132cf4  stp     x29, x30, [sp, #-0x10]!
  100132cf8  mov     x29, sp
  100132cfc  stp     x20, x19, [sp, #-0x10]!
  100132d00  mov     x19, x0
  100132d04  bl      sub_100132af8                            ; sub_100132af8(self, _cmd)
  100132d08  adrp    x8, #0x100420000
  100132d0c  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132d10  ldr     x0, [x19, x8]                            ; x0 = self->string_
  100132d14  ldp     x20, x19, [sp], #0x10
  100132d18  ldp     x29, x30, [sp], #0x10
  100132d1c  b       _CFHash                                  ; CFHash(self->string_)

; ======================================================================
; -[TAGPBString isEqual:]
; address 0x100132d20  size 152  kind objc
; ======================================================================
  100132d20  stp     x29, x30, [sp, #-0x10]!
  100132d24  mov     x29, sp
  100132d28  stp     x20, x19, [sp, #-0x10]!
  100132d2c  mov     x19, x2
  100132d30  mov     x20, x0
  100132d34  cmp     x19, x20
  100132d38  b.eq    loc_100132d9c                            ; if (arg1 == self)
  100132d3c  adrp    x8, #0x10041d000
  100132d40  ldr     x0, [x8, #0xf78]                         ; class NSString
  100132d44  adrp    x8, #0x100417000
  100132d48  nop
  100132d4c  ldr     x1, [x8, #0x2e0]
  100132d50  bl      _objc_msgSend                            ; [NSString class]
  100132d54  mov     x2, x0
  100132d58  adrp    x8, #0x100417000
  100132d5c  nop
  100132d60  ldr     x1, [x8, #0x3b8]
  100132d64  mov     x0, x19
  100132d68  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSString class]]
  100132d6c  cbz     w0, loc_100132da4                        ; if ([arg1 isKindOfClass:[NSString class]] == 0)
  100132d70  mov     x0, x20
  100132d74  bl      sub_100132af8                            ; sub_100132af8(self)
  100132d78  adrp    x8, #0x100420000
  100132d7c  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132d80  ldr     x0, [x20, x8]                            ; x0 = self->string_
  100132d84  mov     x2, #0
  100132d88  mov     x1, x19
  100132d8c  bl      _CFStringCompare                         ; CFStringCompare(self->string_, arg1, 0)
  100132d90  cmp     x0, #0
  100132d94  cset    w8, eq
  100132d98  b       loc_100132da8
loc_100132d9c:
  100132d9c  mov     w8, #1
  100132da0  b       loc_100132da8
loc_100132da4:
  100132da4  mov     w8, #0
loc_100132da8:
  100132da8  and     w0, w8, #1
  100132dac  ldp     x20, x19, [sp], #0x10
  100132db0  ldp     x29, x30, [sp], #0x10
  100132db4  ret

; ======================================================================
; -[TAGPBString getCharacters:range:]
; address 0x100132db8  size 152  kind objc
; ======================================================================
  100132db8  stp     x29, x30, [sp, #-0x10]!
  100132dbc  mov     x29, sp
  100132dc0  stp     x20, x19, [sp, #-0x10]!
  100132dc4  stp     x22, x21, [sp, #-0x10]!
  100132dc8  mov     x19, x4
  100132dcc  mov     x21, x3
  100132dd0  mov     x20, x2
  100132dd4  mov     x22, x0
  100132dd8  adrp    x8, #0x100420000
  100132ddc  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132de0  ldr     x8, [x22, x8]                            ; x8 = self->utf8_
  100132de4  adrp    x9, #0x100420000
  100132de8  ldrsw   x9, [x9, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132dec  add     x9, x22, x9
  100132df0  cmp     x8, x9
  100132df4  b.eq    loc_100132e28                            ; if (self->utf8_ == x9)
  100132df8  mov     x0, x22
  100132dfc  bl      sub_100132af8                            ; sub_100132af8(self, _cmd, arg1, arg2)
  100132e00  adrp    x8, #0x100420000
  100132e04  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132e08  ldr     x0, [x22, x8]                            ; x0 = self->string_
  100132e0c  mov     x1, x21
  100132e10  mov     x2, x19
  100132e14  mov     x3, x20
  100132e18  ldp     x22, x21, [sp], #0x10
  100132e1c  ldp     x20, x19, [sp], #0x10
  100132e20  ldp     x29, x30, [sp], #0x10
  100132e24  b       _CFStringGetCharacters                   ; CFStringGetCharacters(self->string_, arg2, x2, arg1)
loc_100132e28:
  100132e28  cbz     x19, loc_100132e40                       ; if (x19 == 0)
  100132e2c  add     x8, x8, x21
loc_100132e30:
  100132e30  ldrb    w9, [x8], #1
  100132e34  strh    w9, [x20], #2
  100132e38  sub     x19, x19, #1
  100132e3c  cbnz    x19, loc_100132e30                       ; if ((x19 - 1) != 0)
loc_100132e40:
  100132e40  ldp     x22, x21, [sp], #0x10
  100132e44  ldp     x20, x19, [sp], #0x10
  100132e48  ldp     x29, x30, [sp], #0x10
  100132e4c  ret

; ======================================================================
; -[TAGPBString lengthOfBytesUsingEncoding:]
; address 0x100132e50  size 172  kind objc
; ======================================================================
  100132e50  stp     x29, x30, [sp, #-0x10]!
  100132e54  mov     x29, sp
  100132e58  stp     x20, x19, [sp, #-0x10]!
  100132e5c  mov     x20, x2
  100132e60  mov     x19, x0
  100132e64  cmp     x20, #1
  100132e68  b.ne    loc_100132e90                            ; if (arg1 != 1)
  100132e6c  adrp    x8, #0x100420000
  100132e70  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132e74  ldr     x8, [x19, x8]                            ; x8 = self->utf8_
  100132e78  adrp    x9, #0x100420000
  100132e7c  ldrsw   x9, [x9, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132e80  add     x9, x19, x9
  100132e84  cmp     x8, x9
  100132e88  b.ne    loc_100132ecc                            ; if (self->utf8_ != x9)
  100132e8c  b       loc_100132e98
loc_100132e90:
  100132e90  cmp     x20, #4
  100132e94  b.ne    loc_100132ecc                            ; if (arg1 != 4)
loc_100132e98:
  100132e98  adrp    x8, #0x100420000
  100132e9c  ldrsw   x8, [x8, #0x930]                         ; ivar offset TAGPBString.utf8Len_ (+0x18)
  100132ea0  ldr     x8, [x19, x8]                            ; x8 = self->utf8Len_
  100132ea4  adrp    x9, #0x100420000
  100132ea8  ldrsw   x9, [x9, #0x938]                         ; ivar offset TAGPBString.hasBOM_ (+0x24)
  100132eac  ldrb    w9, [x19, x9]                            ; w9 = self->hasBOM_
  100132eb0  cmp     w9, #0
  100132eb4  mov     x9, #3
  100132eb8  csel    x9, x9, xzr, ne
  100132ebc  sub     x0, x8, x9
  100132ec0  ldp     x20, x19, [sp], #0x10
  100132ec4  ldp     x29, x30, [sp], #0x10
  100132ec8  ret
loc_100132ecc:
  100132ecc  mov     x0, x19
  100132ed0  bl      sub_100132af8                            ; sub_100132af8(self, _cmd, arg1)
  100132ed4  adrp    x8, #0x100420000
  100132ed8  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132edc  ldr     x0, [x19, x8]                            ; x0 = self->string_
  100132ee0  adrp    x8, #0x10041c000
  100132ee4  nop
  100132ee8  ldr     x1, [x8, #0x598]
  100132eec  mov     x2, x20
  100132ef0  ldp     x20, x19, [sp], #0x10
  100132ef4  ldp     x29, x30, [sp], #0x10
  100132ef8  b       _objc_msgSend                            ; [self->string_ lengthOfBytesUsingEncoding:arg1]

; ======================================================================
; -[TAGPBString getBytes:maxLength:usedLength:encoding:options:range:remainingRange:]
; address 0x100132efc  size 320  kind objc
; ======================================================================
  100132efc  stp     x29, x30, [sp, #-0x10]!
  100132f00  mov     x29, sp
  100132f04  stp     x20, x19, [sp, #-0x10]!
  100132f08  stp     x22, x21, [sp, #-0x10]!
  100132f0c  stp     x24, x23, [sp, #-0x10]!
  100132f10  stp     x26, x25, [sp, #-0x10]!
  100132f14  stp     x28, x27, [sp, #-0x10]!
  100132f18  sub     sp, sp, #0x20
  100132f1c  mov     x20, x6
  100132f20  mov     x22, x5
  100132f24  mov     x19, x4
  100132f28  mov     x23, x3
  100132f2c  mov     x21, x2
  100132f30  mov     x24, x0
  100132f34  adrp    x8, #0x100420000
  100132f38  ldrsw   x8, [x8, #0x92c]                         ; ivar offset TAGPBString.utf8_ (+0x10)
  100132f3c  adrp    x9, #0x100420000
  100132f40  ldrsw   x9, [x9, #0x928]                         ; ivar offset TAGPBString.internalBuffer_ (+0x25)
  100132f44  ldp     x27, x25, [x29, #0x10]
  100132f48  ldr     x26, [x29, #0x20]
  100132f4c  ldr     x8, [x24, x8]                            ; x8 = self->utf8_
  100132f50  add     x9, x24, x9
  100132f54  cmp     x8, x9
  100132f58  b.ne    loc_100132f98                            ; if (self->utf8_ != x9)
  100132f5c  cmp     x22, #4
  100132f60  cset    w9, eq
  100132f64  cmp     x22, #1
  100132f68  cset    w10, eq
  100132f6c  orr     w9, w9, w10
  100132f70  cmp     w9, #1
  100132f74  ccmp    x20, #0, #0, eq
  100132f78  ccmp    x23, #0, #4, eq
  100132f7c  b.eq    loc_100132f98                            ; if (flags ==)
  100132f80  add     x9, x27, x25
  100132f84  adrp    x10, #0x100420000
  100132f88  ldrsw   x10, [x10, #0x930]                       ; ivar offset TAGPBString.utf8Len_ (+0x18)
  100132f8c  ldr     x10, [x24, x10]                          ; x10 = self->utf8Len_
  100132f90  cmp     x9, x10
  100132f94  b.ls    loc_100132ffc                            ; if ((x27 + x25) <=u self->utf8Len_)
loc_100132f98:
  100132f98  mov     x0, x24
  100132f9c  bl      sub_100132af8                            ; sub_100132af8(self, _cmd, arg1, arg2)
  100132fa0  adrp    x8, #0x100420000
  100132fa4  ldrsw   x8, [x8, #0x93c]                         ; ivar offset TAGPBString.string_ (+0x8)
  100132fa8  ldr     x0, [x24, x8]                            ; x0 = self->string_
  100132fac  adrp    x8, #0x10041c000
  100132fb0  nop
  100132fb4  ldr     x1, [x8, #0x5a0]
  100132fb8  stp     x25, x26, [sp, #8]
  100132fbc  str     x27, [sp]
  100132fc0  mov     x2, x21
  100132fc4  mov     x3, x23
  100132fc8  mov     x4, x19
  100132fcc  mov     x5, x22
  100132fd0  mov     x6, x20
  100132fd4  bl      _objc_msgSend                            ; [self->string_ getBytes:arg1 maxLength:arg2 usedLength:arg3 encoding:arg4 options:arg5 range:x7 remainingRange:&@selector(currentContext)]
loc_100132fd8:
  100132fd8  and     w0, w0, #1
  100132fdc  sub     sp, x29, #0x50
  100132fe0  ldp     x28, x27, [sp], #0x10
  100132fe4  ldp     x26, x25, [sp], #0x10
  100132fe8  ldp     x24, x23, [sp], #0x10
  100132fec  ldp     x22, x21, [sp], #0x10
  100132ff0  ldp     x20, x19, [sp], #0x10
  100132ff4  ldp     x29, x30, [sp], #0x10
  100132ff8  ret
loc_100132ffc:
  100132ffc  cmp     x25, x23
  100133000  csel    x20, x25, x23, lo
  100133004  add     x1, x8, x27
  100133008  mov     x0, x21
  10013300c  mov     x2, x20
  100133010  bl      _memcpy                                  ; memcpy(arg1, (self->utf8_ + x27), (x25 <u arg2 ? x25 : arg2), arg2)
  100133014  cbz     x19, loc_10013301c                       ; if (arg3 == 0)
  100133018  str     x20, [x19]                               ; arg3[+0x0] = (x25 <u arg2 ? x25 : arg2)
loc_10013301c:
  10013301c  cbz     x26, loc_100133030                       ; if (x26 == 0)
  100133020  add     x8, x20, x27
  100133024  str     x8, [x26]
  100133028  sub     x8, x25, x20
  10013302c  str     x8, [x26, #8]
loc_100133030:
  100133030  cmp     x20, #0
  100133034  cset    w0, ne
  100133038  b       loc_100132fd8
