// unit TAGKeyAndSerialized — 5 functions
//   0x10015e384     228  -[TAGKeyAndSerialized initWithKey:serialized:]
//   0x10015e468     228  -[TAGKeyAndSerialized description]
//   0x10015e54c      16  -[TAGKeyAndSerialized key]
//   0x10015e55c      16  -[TAGKeyAndSerialized serialized]
//   0x10015e56c      64  -[TAGKeyAndSerialized .cxx_destruct]

; ======================================================================
; -[TAGKeyAndSerialized initWithKey:serialized:]
; address 0x10015e384  size 228  kind objc
; ======================================================================
  10015e384  stp     x29, x30, [sp, #-0x10]!
  10015e388  mov     x29, sp
  10015e38c  stp     x20, x19, [sp, #-0x10]!
  10015e390  stp     x22, x21, [sp, #-0x10]!
  10015e394  sub     sp, sp, #0x10
  10015e398  mov     x20, x3
  10015e39c  mov     x21, x0
  10015e3a0  mov     x0, x2
  10015e3a4  bl      _objc_retain
  10015e3a8  mov     x19, x0
  10015e3ac  mov     x0, x20
  10015e3b0  bl      _objc_retain
  10015e3b4  mov     x20, x0
  10015e3b8  str     x21, [sp]
  10015e3bc  adrp    x8, #0x10041f000
  10015e3c0  ldr     x8, [x8, #0x298]
  10015e3c4  str     x8, [sp, #8]
  10015e3c8  adrp    x8, #0x100416000
  10015e3cc  nop
  10015e3d0  ldr     x1, [x8, #0xab8]
  10015e3d4  mov     x0, sp
  10015e3d8  bl      _objc_msgSendSuper2                      ; [super init]
  10015e3dc  mov     x21, x0
  10015e3e0  cbz     x21, loc_10015e424                       ; if (self == 0)
  10015e3e4  adrp    x8, #0x100420000
  10015e3e8  ldrsw   x22, [x8, #0xb34]                        ; ivar offset TAGKeyAndSerialized._key (+0x8)
  10015e3ec  mov     x0, x19
  10015e3f0  bl      _objc_retain
  10015e3f4  ldr     x8, [x21, x22]                           ; x8 = self->_key
  10015e3f8  str     x0, [x21, x22]                           ; self->_key = arg1
  10015e3fc  mov     x0, x8
  10015e400  bl      _objc_release
  10015e404  adrp    x8, #0x100420000
  10015e408  ldrsw   x22, [x8, #0xb38]                        ; ivar offset TAGKeyAndSerialized._serialized (+0x10)
  10015e40c  mov     x0, x20
  10015e410  bl      _objc_retain
  10015e414  ldr     x8, [x21, x22]                           ; x8 = self->_serialized
  10015e418  str     x0, [x21, x22]                           ; self->_serialized = arg2
  10015e41c  mov     x0, x8
  10015e420  bl      _objc_release
loc_10015e424:
  10015e424  mov     x0, x20
  10015e428  bl      _objc_release
  10015e42c  mov     x0, x19
  10015e430  bl      _objc_release
  10015e434  mov     x0, x21
  10015e438  sub     sp, x29, #0x20
  10015e43c  ldp     x22, x21, [sp], #0x10
  10015e440  ldp     x20, x19, [sp], #0x10
  10015e444  ldp     x29, x30, [sp], #0x10
  10015e448  ret
  10015e44c  mov     x21, x0
  10015e450  mov     x0, x20
  10015e454  bl      _objc_release
  10015e458  mov     x0, x19
  10015e45c  bl      _objc_release
  10015e460  mov     x0, x21
  10015e464  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyAndSerialized description]
; address 0x10015e468  size 228  kind objc
; ======================================================================
  10015e468  stp     x29, x30, [sp, #-0x10]!
  10015e46c  mov     x29, sp
  10015e470  stp     x20, x19, [sp, #-0x10]!
  10015e474  stp     x22, x21, [sp, #-0x10]!
  10015e478  sub     sp, sp, #0x10
  10015e47c  mov     x21, x0
  10015e480  adrp    x8, #0x10041d000
  10015e484  ldr     x20, [x8, #0xf78]                        ; class NSString
  10015e488  adrp    x8, #0x100419000
  10015e48c  nop
  10015e490  ldr     x1, [x8, #0x3e8]
  10015e494  bl      _objc_msgSend                            ; [self key]
  10015e498  mov     x29, x29
  10015e49c  bl      _objc_retainAutoreleasedReturnValue
  10015e4a0  mov     x19, x0
  10015e4a4  adrp    x8, #0x10041d000
  10015e4a8  nop
  10015e4ac  ldr     x1, [x8, #0x470]
  10015e4b0  mov     x0, x21
  10015e4b4  bl      _objc_msgSend                            ; [self serialized]
  10015e4b8  mov     x29, x29
  10015e4bc  bl      _objc_retainAutoreleasedReturnValue
  10015e4c0  mov     x21, x0
  10015e4c4  adrp    x8, #0x10041d000
  10015e4c8  nop
  10015e4cc  ldr     x1, [x8, #0x478]
  10015e4d0  bl      _objc_msgSend                            ; [[self serialized] hash]
  10015e4d4  adrp    x8, #0x100416000
  10015e4d8  nop
  10015e4dc  ldr     x1, [x8, #0xee8]
  10015e4e0  stp     x19, x0, [sp]
  10015e4e4  adrp    x2, #0x1003c8000
  10015e4e8  add     x2, x2, #0x430                           ; @"KeyAndSerialized: key = %@ serialized hash = %lu"
  10015e4ec  mov     x0, x20
  10015e4f0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"KeyAndSerialized: key = %@ serialized hash = %lu", [self key], [[self serialized] hash]]
  10015e4f4  mov     x29, x29
  10015e4f8  bl      _objc_retainAutoreleasedReturnValue
  10015e4fc  mov     x20, x0
  10015e500  mov     x0, x21
  10015e504  bl      _objc_release
  10015e508  mov     x0, x19
  10015e50c  bl      _objc_release
  10015e510  mov     x0, x20
  10015e514  sub     sp, x29, #0x20
  10015e518  ldp     x22, x21, [sp], #0x10
  10015e51c  ldp     x20, x19, [sp], #0x10
  10015e520  ldp     x29, x30, [sp], #0x10
  10015e524  b       _objc_autoreleaseReturnValue
  10015e528  mov     x20, x0
  10015e52c  b       loc_10015e53c
  10015e530  mov     x20, x0
  10015e534  mov     x0, x21
  10015e538  bl      _objc_release
loc_10015e53c:
  10015e53c  mov     x0, x19
  10015e540  bl      _objc_release
  10015e544  mov     x0, x20
  10015e548  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGKeyAndSerialized key]
; address 0x10015e54c  size 16  kind objc
; ======================================================================
  10015e54c  adrp    x8, #0x100420000
  10015e550  ldrsw   x2, [x8, #0xb34]                         ; ivar offset TAGKeyAndSerialized._key (+0x8)
  10015e554  mov     w3, #1
  10015e558  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGKeyAndSerialized serialized]
; address 0x10015e55c  size 16  kind objc
; ======================================================================
  10015e55c  adrp    x8, #0x100420000
  10015e560  ldrsw   x2, [x8, #0xb38]                         ; ivar offset TAGKeyAndSerialized._serialized (+0x10)
  10015e564  mov     w3, #1
  10015e568  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGKeyAndSerialized .cxx_destruct]
; address 0x10015e56c  size 64  kind objc
; ======================================================================
  10015e56c  stp     x29, x30, [sp, #-0x10]!
  10015e570  mov     x29, sp
  10015e574  stp     x20, x19, [sp, #-0x10]!
  10015e578  mov     x19, x0
  10015e57c  adrp    x8, #0x100420000
  10015e580  ldrsw   x8, [x8, #0xb38]                         ; ivar offset TAGKeyAndSerialized._serialized (+0x10)
  10015e584  add     x0, x19, x8
  10015e588  mov     x1, #0
  10015e58c  bl      _objc_storeStrong
  10015e590  mov     x1, #0
  10015e594  adrp    x8, #0x100420000
  10015e598  ldrsw   x8, [x8, #0xb34]                         ; ivar offset TAGKeyAndSerialized._key (+0x8)
  10015e59c  add     x0, x19, x8
  10015e5a0  ldp     x20, x19, [sp], #0x10
  10015e5a4  ldp     x29, x30, [sp], #0x10
  10015e5a8  b       _objc_storeStrong
