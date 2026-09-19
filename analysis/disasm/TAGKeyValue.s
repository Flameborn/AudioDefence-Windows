// unit TAGKeyValue — 8 functions
//   0x10015dde0     488  -[TAGKeyValue isEqual:]
//   0x10015dfc8     204  -[TAGKeyValue hash]
//   0x10015e094     216  -[TAGKeyValue copyWithZone:]
//   0x10015e16c     228  -[TAGKeyValue initWithKey:value:]
//   0x10015e250     212  -[TAGKeyValue description]
//   0x10015e324      16  -[TAGKeyValue key]
//   0x10015e334      16  -[TAGKeyValue value]
//   0x10015e344      64  -[TAGKeyValue .cxx_destruct]

; ======================================================================
; -[TAGKeyValue isEqual:]
; address 0x10015dde0  size 488  kind objc
; ======================================================================
  10015dde0  stp     x29, x30, [sp, #-0x10]!
  10015dde4  mov     x29, sp
  10015dde8  stp     x20, x19, [sp, #-0x10]!
  10015ddec  stp     x22, x21, [sp, #-0x10]!
  10015ddf0  stp     x24, x23, [sp, #-0x10]!
  10015ddf4  stp     x26, x25, [sp, #-0x10]!
  10015ddf8  mov     x22, x0
  10015ddfc  mov     x0, x2
  10015de00  bl      _objc_retain
  10015de04  mov     x19, x0
  10015de08  cmp     x22, x19
  10015de0c  b.eq    loc_10015df1c                            ; if (self == arg1)
  10015de10  cbz     x19, loc_10015df14                       ; if (arg1 == 0)
  10015de14  adrp    x8, #0x10041e000
  10015de18  ldr     x0, [x8, #0x960]                         ; class TAGKeyValue
  10015de1c  adrp    x8, #0x100417000
  10015de20  nop
  10015de24  ldr     x1, [x8, #0x2e0]
  10015de28  bl      _objc_msgSend                            ; [TAGKeyValue class]
  10015de2c  mov     x2, x0
  10015de30  adrp    x8, #0x100417000
  10015de34  nop
  10015de38  ldr     x1, [x8, #0x3b8]
  10015de3c  mov     x0, x19
  10015de40  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGKeyValue class]]
  10015de44  tbz     w0, #0, loc_10015df14                    ; if (!([arg1 isKindOfClass:[TAGKeyValue class]] & 1))
  10015de48  mov     x0, x19
  10015de4c  bl      _objc_retain
  10015de50  mov     x20, x0
  10015de54  adrp    x8, #0x100419000
  10015de58  nop
  10015de5c  ldr     x23, [x8, #0x3e8]
  10015de60  mov     x1, x23
  10015de64  bl      _objc_msgSend                            ; [arg1 key]
  10015de68  mov     x29, x29
  10015de6c  bl      _objc_retainAutoreleasedReturnValue
  10015de70  mov     x21, x0
  10015de74  mov     x0, x22
  10015de78  mov     x1, x23
  10015de7c  bl      _objc_msgSend                            ; [self key]
  10015de80  mov     x29, x29
  10015de84  bl      _objc_retainAutoreleasedReturnValue
  10015de88  mov     x23, x0
  10015de8c  adrp    x8, #0x100416000
  10015de90  nop
  10015de94  ldr     x1, [x8, #0xf58]
  10015de98  mov     x0, x21
  10015de9c  mov     x2, x23
  10015dea0  bl      _objc_msgSend                            ; [[arg1 key] isEqualToString:[self key]]
  10015dea4  cbz     w0, loc_10015df24                        ; if ([[arg1 key] isEqualToString:[self key]] == 0)
  10015dea8  adrp    x8, #0x100418000
  10015deac  nop
  10015deb0  ldr     x25, [x8, #0x800]
  10015deb4  mov     x0, x20
  10015deb8  mov     x1, x25
  10015debc  bl      _objc_msgSend                            ; [arg1 value]
  10015dec0  mov     x29, x29
  10015dec4  bl      _objc_retainAutoreleasedReturnValue
  10015dec8  mov     x24, x0
  10015decc  mov     x0, x22
  10015ded0  mov     x1, x25
  10015ded4  bl      _objc_msgSend                            ; [self value]
  10015ded8  mov     x29, x29
  10015dedc  bl      _objc_retainAutoreleasedReturnValue
  10015dee0  mov     x25, x0
  10015dee4  adrp    x8, #0x100417000
  10015dee8  nop
  10015deec  ldr     x1, [x8, #0x218]
  10015def0  mov     x0, x24
  10015def4  mov     x2, x25
  10015def8  bl      _objc_msgSend                            ; [[arg1 value] isEqual:[self value]]
  10015defc  mov     x22, x0
  10015df00  mov     x0, x25
  10015df04  bl      _objc_release
  10015df08  mov     x0, x24
  10015df0c  bl      _objc_release
  10015df10  b       loc_10015df28
loc_10015df14:
  10015df14  mov     w22, #0
  10015df18  b       loc_10015df40
loc_10015df1c:
  10015df1c  mov     w22, #1
  10015df20  b       loc_10015df40
loc_10015df24:
  10015df24  mov     w22, #0
loc_10015df28:
  10015df28  mov     x0, x23
  10015df2c  bl      _objc_release
  10015df30  mov     x0, x21
  10015df34  bl      _objc_release
  10015df38  mov     x0, x20
  10015df3c  bl      _objc_release
loc_10015df40:
  10015df40  mov     x0, x19
  10015df44  bl      _objc_release
  10015df48  mov     x0, x22
  10015df4c  ldp     x26, x25, [sp], #0x10
  10015df50  ldp     x24, x23, [sp], #0x10
  10015df54  ldp     x22, x21, [sp], #0x10
  10015df58  ldp     x20, x19, [sp], #0x10
  10015df5c  ldp     x29, x30, [sp], #0x10
  10015df60  ret
  10015df64  mov     x22, x0
  10015df68  b       loc_10015dfb8
  10015df6c  mov     x22, x0
  10015df70  b       loc_10015dfb0
  10015df74  mov     x22, x0
  10015df78  b       loc_10015dfa8
  10015df7c  mov     x22, x0
  10015df80  b       loc_10015dfa0
  10015df84  mov     x22, x0
  10015df88  b       loc_10015df98
  10015df8c  mov     x22, x0
  10015df90  mov     x0, x25
  10015df94  bl      _objc_release
loc_10015df98:
  10015df98  mov     x0, x24
  10015df9c  bl      _objc_release
loc_10015dfa0:
  10015dfa0  mov     x0, x23
  10015dfa4  bl      _objc_release
loc_10015dfa8:
  10015dfa8  mov     x0, x21
  10015dfac  bl      _objc_release
loc_10015dfb0:
  10015dfb0  mov     x0, x20
  10015dfb4  bl      _objc_release
loc_10015dfb8:
  10015dfb8  mov     x0, x19
  10015dfbc  bl      _objc_release
  10015dfc0  mov     x0, x22
  10015dfc4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyValue hash]
; address 0x10015dfc8  size 204  kind objc
; ======================================================================
  10015dfc8  stp     x29, x30, [sp, #-0x10]!
  10015dfcc  mov     x29, sp
  10015dfd0  stp     x20, x19, [sp, #-0x10]!
  10015dfd4  stp     x22, x21, [sp, #-0x10]!
  10015dfd8  mov     x22, x0
  10015dfdc  adrp    x8, #0x100419000
  10015dfe0  nop
  10015dfe4  ldr     x1, [x8, #0x3e8]
  10015dfe8  bl      _objc_msgSend                            ; [self key]
  10015dfec  mov     x29, x29
  10015dff0  bl      _objc_retainAutoreleasedReturnValue
  10015dff4  mov     x19, x0
  10015dff8  adrp    x8, #0x10041d000
  10015dffc  nop
  10015e000  ldr     x21, [x8, #0x478]
  10015e004  mov     x1, x21
  10015e008  bl      _objc_msgSend                            ; [[self key] hash]
  10015e00c  mov     x20, x0
  10015e010  adrp    x8, #0x100418000
  10015e014  nop
  10015e018  ldr     x1, [x8, #0x800]
  10015e01c  mov     x0, x22
  10015e020  bl      _objc_msgSend                            ; [self value]
  10015e024  mov     x29, x29
  10015e028  bl      _objc_retainAutoreleasedReturnValue
  10015e02c  mov     x22, x0
  10015e030  mov     x1, x21
  10015e034  bl      _objc_msgSend                            ; [[self value] hash]
  10015e038  lsl     x8, x20, #5
  10015e03c  sub     x8, x8, x20
  10015e040  lsl     x9, x0, #3
  10015e044  sub     x9, x9, x0
  10015e048  add     x20, x9, x8                              ; t1 = ((([[self value] hash] << 3) - [[self value] hash]) + (([[self key] hash] << 5) - [[self key] hash]))
  10015e04c  mov     x0, x22
  10015e050  bl      _objc_release
  10015e054  mov     x0, x19
  10015e058  bl      _objc_release
  10015e05c  mov     x0, x20
  10015e060  ldp     x22, x21, [sp], #0x10
  10015e064  ldp     x20, x19, [sp], #0x10
  10015e068  ldp     x29, x30, [sp], #0x10
  10015e06c  ret
  10015e070  mov     x20, x0
  10015e074  b       loc_10015e084
  10015e078  mov     x20, x0
  10015e07c  mov     x0, x22
  10015e080  bl      _objc_release
loc_10015e084:
  10015e084  mov     x0, x19
  10015e088  bl      _objc_release
  10015e08c  mov     x0, x20
  10015e090  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyValue copyWithZone:]
; address 0x10015e094  size 216  kind objc
; ======================================================================
  10015e094  stp     x29, x30, [sp, #-0x10]!
  10015e098  mov     x29, sp
  10015e09c  stp     x20, x19, [sp, #-0x10]!
  10015e0a0  stp     x22, x21, [sp, #-0x10]!
  10015e0a4  mov     x21, x0
  10015e0a8  adrp    x8, #0x10041e000
  10015e0ac  ldr     x0, [x8, #0x960]                         ; class TAGKeyValue
  10015e0b0  adrp    x8, #0x100416000
  10015e0b4  nop
  10015e0b8  ldr     x1, [x8, #0xab0]
  10015e0bc  bl      _objc_msgSend                            ; [TAGKeyValue allocWithZone:arg1]
  10015e0c0  mov     x20, x0
  10015e0c4  adrp    x8, #0x100419000
  10015e0c8  nop
  10015e0cc  ldr     x1, [x8, #0x3e8]
  10015e0d0  mov     x0, x21
  10015e0d4  bl      _objc_msgSend                            ; [self key]
  10015e0d8  mov     x29, x29
  10015e0dc  bl      _objc_retainAutoreleasedReturnValue
  10015e0e0  mov     x19, x0
  10015e0e4  adrp    x8, #0x100418000
  10015e0e8  nop
  10015e0ec  ldr     x1, [x8, #0x800]
  10015e0f0  mov     x0, x21
  10015e0f4  bl      _objc_msgSend                            ; [self value]
  10015e0f8  mov     x29, x29
  10015e0fc  bl      _objc_retainAutoreleasedReturnValue
  10015e100  mov     x21, x0
  10015e104  adrp    x8, #0x10041d000
  10015e108  nop
  10015e10c  ldr     x1, [x8, #0x510]
  10015e110  mov     x0, x20
  10015e114  mov     x2, x19
  10015e118  mov     x3, x21
  10015e11c  bl      _objc_msgSend                            ; [[TAGKeyValue allocWithZone:arg1] initWithKey:[self key] value:[self value]]
  10015e120  mov     x20, x0
  10015e124  mov     x0, x21
  10015e128  bl      _objc_release
  10015e12c  mov     x0, x19
  10015e130  bl      _objc_release
  10015e134  mov     x0, x20
  10015e138  ldp     x22, x21, [sp], #0x10
  10015e13c  ldp     x20, x19, [sp], #0x10
  10015e140  ldp     x29, x30, [sp], #0x10
  10015e144  ret
  10015e148  mov     x20, x0
  10015e14c  b       loc_10015e15c
  10015e150  mov     x20, x0
  10015e154  mov     x0, x21
  10015e158  bl      _objc_release
loc_10015e15c:
  10015e15c  mov     x0, x19
  10015e160  bl      _objc_release
  10015e164  mov     x0, x20
  10015e168  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyValue initWithKey:value:]
; address 0x10015e16c  size 228  kind objc
; ======================================================================
  10015e16c  stp     x29, x30, [sp, #-0x10]!
  10015e170  mov     x29, sp
  10015e174  stp     x20, x19, [sp, #-0x10]!
  10015e178  stp     x22, x21, [sp, #-0x10]!
  10015e17c  sub     sp, sp, #0x10
  10015e180  mov     x20, x3
  10015e184  mov     x21, x0
  10015e188  mov     x0, x2
  10015e18c  bl      _objc_retain
  10015e190  mov     x19, x0
  10015e194  mov     x0, x20
  10015e198  bl      _objc_retain
  10015e19c  mov     x20, x0
  10015e1a0  str     x21, [sp]
  10015e1a4  adrp    x8, #0x10041f000
  10015e1a8  ldr     x8, [x8, #0x290]
  10015e1ac  str     x8, [sp, #8]
  10015e1b0  adrp    x8, #0x100416000
  10015e1b4  nop
  10015e1b8  ldr     x1, [x8, #0xab8]
  10015e1bc  mov     x0, sp
  10015e1c0  bl      _objc_msgSendSuper2                      ; [super init]
  10015e1c4  mov     x21, x0
  10015e1c8  cbz     x21, loc_10015e20c                       ; if (self == 0)
  10015e1cc  adrp    x8, #0x100420000
  10015e1d0  ldrsw   x22, [x8, #0xb2c]                        ; ivar offset TAGKeyValue._key (+0x8)
  10015e1d4  mov     x0, x19
  10015e1d8  bl      _objc_retain
  10015e1dc  ldr     x8, [x21, x22]                           ; x8 = self->_key
  10015e1e0  str     x0, [x21, x22]                           ; self->_key = arg1
  10015e1e4  mov     x0, x8
  10015e1e8  bl      _objc_release
  10015e1ec  adrp    x8, #0x100420000
  10015e1f0  ldrsw   x22, [x8, #0xb30]                        ; ivar offset TAGKeyValue._value (+0x10)
  10015e1f4  mov     x0, x20
  10015e1f8  bl      _objc_retain
  10015e1fc  ldr     x8, [x21, x22]                           ; x8 = self->_value
  10015e200  str     x0, [x21, x22]                           ; self->_value = arg2
  10015e204  mov     x0, x8
  10015e208  bl      _objc_release
loc_10015e20c:
  10015e20c  mov     x0, x20
  10015e210  bl      _objc_release
  10015e214  mov     x0, x19
  10015e218  bl      _objc_release
  10015e21c  mov     x0, x21
  10015e220  sub     sp, x29, #0x20
  10015e224  ldp     x22, x21, [sp], #0x10
  10015e228  ldp     x20, x19, [sp], #0x10
  10015e22c  ldp     x29, x30, [sp], #0x10
  10015e230  ret
  10015e234  mov     x21, x0
  10015e238  mov     x0, x20
  10015e23c  bl      _objc_release
  10015e240  mov     x0, x19
  10015e244  bl      _objc_release
  10015e248  mov     x0, x21
  10015e24c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyValue description]
; address 0x10015e250  size 212  kind objc
; ======================================================================
  10015e250  stp     x29, x30, [sp, #-0x10]!
  10015e254  mov     x29, sp
  10015e258  stp     x20, x19, [sp, #-0x10]!
  10015e25c  stp     x22, x21, [sp, #-0x10]!
  10015e260  sub     sp, sp, #0x10
  10015e264  mov     x21, x0
  10015e268  adrp    x8, #0x10041d000
  10015e26c  ldr     x20, [x8, #0xf78]                        ; class NSString
  10015e270  adrp    x8, #0x100419000
  10015e274  nop
  10015e278  ldr     x1, [x8, #0x3e8]
  10015e27c  bl      _objc_msgSend                            ; [self key]
  10015e280  mov     x29, x29
  10015e284  bl      _objc_retainAutoreleasedReturnValue
  10015e288  mov     x19, x0
  10015e28c  adrp    x8, #0x100418000
  10015e290  nop
  10015e294  ldr     x1, [x8, #0x800]
  10015e298  mov     x0, x21
  10015e29c  bl      _objc_msgSend                            ; [self value]
  10015e2a0  mov     x29, x29
  10015e2a4  bl      _objc_retainAutoreleasedReturnValue
  10015e2a8  mov     x21, x0
  10015e2ac  adrp    x8, #0x100416000
  10015e2b0  nop
  10015e2b4  ldr     x1, [x8, #0xee8]
  10015e2b8  stp     x19, x21, [sp]
  10015e2bc  adrp    x2, #0x1003c8000
  10015e2c0  add     x2, x2, #0x370                           ; @"TAGKeyValue(%@, %@)"
  10015e2c4  mov     x0, x20
  10015e2c8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"TAGKeyValue(%@, %@)", [self key], [self value]]
  10015e2cc  mov     x29, x29
  10015e2d0  bl      _objc_retainAutoreleasedReturnValue
  10015e2d4  mov     x20, x0
  10015e2d8  mov     x0, x21
  10015e2dc  bl      _objc_release
  10015e2e0  mov     x0, x19
  10015e2e4  bl      _objc_release
  10015e2e8  mov     x0, x20
  10015e2ec  sub     sp, x29, #0x20
  10015e2f0  ldp     x22, x21, [sp], #0x10
  10015e2f4  ldp     x20, x19, [sp], #0x10
  10015e2f8  ldp     x29, x30, [sp], #0x10
  10015e2fc  b       _objc_autoreleaseReturnValue
  10015e300  mov     x20, x0
  10015e304  b       loc_10015e314
  10015e308  mov     x20, x0
  10015e30c  mov     x0, x21
  10015e310  bl      _objc_release
loc_10015e314:
  10015e314  mov     x0, x19
  10015e318  bl      _objc_release
  10015e31c  mov     x0, x20
  10015e320  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyValue key]
; address 0x10015e324  size 16  kind objc
; ======================================================================
  10015e324  mov     w3, #0
  10015e328  adrp    x8, #0x100420000
  10015e32c  ldrsw   x2, [x8, #0xb2c]                         ; ivar offset TAGKeyValue._key (+0x8)
  10015e330  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGKeyValue value]
; address 0x10015e334  size 16  kind objc
; ======================================================================
  10015e334  adrp    x8, #0x100420000
  10015e338  ldrsw   x8, [x8, #0xb30]                         ; ivar offset TAGKeyValue._value (+0x10)
  10015e33c  ldr     x0, [x0, x8]                             ; x0 = self->_value
  10015e340  ret

; ======================================================================
; -[TAGKeyValue .cxx_destruct]
; address 0x10015e344  size 64  kind objc
; ======================================================================
  10015e344  stp     x29, x30, [sp, #-0x10]!
  10015e348  mov     x29, sp
  10015e34c  stp     x20, x19, [sp, #-0x10]!
  10015e350  mov     x19, x0
  10015e354  adrp    x8, #0x100420000
  10015e358  ldrsw   x8, [x8, #0xb30]                         ; ivar offset TAGKeyValue._value (+0x10)
  10015e35c  add     x0, x19, x8
  10015e360  mov     x1, #0
  10015e364  bl      _objc_storeStrong
  10015e368  mov     x1, #0
  10015e36c  adrp    x8, #0x100420000
  10015e370  ldrsw   x8, [x8, #0xb2c]                         ; ivar offset TAGKeyValue._key (+0x8)
  10015e374  add     x0, x19, x8
  10015e378  ldp     x20, x19, [sp], #0x10
  10015e37c  ldp     x29, x30, [sp], #0x10
  10015e380  b       _objc_storeStrong
