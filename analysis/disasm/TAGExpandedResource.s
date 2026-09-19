// unit TAGExpandedResource — 10 functions
//   0x100164bf4     316  -[TAGExpandedResource initWithRules:macros:version:resourceFormatVersion:]
//   0x100164d30      56  +[TAGExpandedResource builder]
//   0x100164d68     168  -[TAGExpandedResource macrosByName:]
//   0x100164e10      16  -[TAGExpandedResource allMacros]
//   0x100164e20     300  -[TAGExpandedResource description]
//   0x100164f4c      16  -[TAGExpandedResource rules]
//   0x100164f5c      16  -[TAGExpandedResource version]
//   0x100164f6c      16  -[TAGExpandedResource resourceFormatVersion]
//   0x100164f7c      16  -[TAGExpandedResource macros]
//   0x100164f8c      84  -[TAGExpandedResource .cxx_destruct]

; ======================================================================
; -[TAGExpandedResource initWithRules:macros:version:resourceFormatVersion:]
; address 0x100164bf4  size 316  kind objc
; ======================================================================
  100164bf4  stp     x29, x30, [sp, #-0x10]!
  100164bf8  mov     x29, sp
  100164bfc  stp     x20, x19, [sp, #-0x10]!
  100164c00  stp     x22, x21, [sp, #-0x10]!
  100164c04  stp     x24, x23, [sp, #-0x10]!
  100164c08  sub     sp, sp, #0x10
  100164c0c  mov     x21, x5
  100164c10  mov     x22, x4
  100164c14  mov     x20, x3
  100164c18  mov     x23, x0
  100164c1c  mov     x0, x2
  100164c20  bl      _objc_retain
  100164c24  mov     x19, x0
  100164c28  mov     x0, x20
  100164c2c  bl      _objc_retain
  100164c30  mov     x20, x0
  100164c34  mov     x0, x22
  100164c38  bl      _objc_retain
  100164c3c  mov     x22, x0
  100164c40  str     x23, [sp]
  100164c44  adrp    x8, #0x10041f000
  100164c48  ldr     x8, [x8, #0x2f8]
  100164c4c  str     x8, [sp, #8]
  100164c50  adrp    x8, #0x100416000
  100164c54  nop
  100164c58  ldr     x1, [x8, #0xab8]
  100164c5c  mov     x0, sp
  100164c60  bl      _objc_msgSendSuper2                      ; [super init]
  100164c64  mov     x23, x0
  100164c68  cbz     x23, loc_100164cd8                       ; if (self == 0)
  100164c6c  adrp    x8, #0x100420000
  100164c70  ldrsw   x24, [x8, #0xbb4]                        ; ivar offset TAGExpandedResource._rules (+0x10)
  100164c74  mov     x0, x19
  100164c78  bl      _objc_retain
  100164c7c  ldr     x8, [x23, x24]                           ; x8 = self->_rules
  100164c80  str     x0, [x23, x24]                           ; self->_rules = arg1
  100164c84  mov     x0, x8
  100164c88  bl      _objc_release
  100164c8c  adrp    x8, #0x100420000
  100164c90  ldrsw   x24, [x8, #0xbb8]                        ; ivar offset TAGExpandedResource._macros (+0x20)
  100164c94  mov     x0, x20
  100164c98  bl      _objc_retain
  100164c9c  ldr     x8, [x23, x24]                           ; x8 = self->_macros
  100164ca0  str     x0, [x23, x24]                           ; self->_macros = arg2
  100164ca4  mov     x0, x8
  100164ca8  bl      _objc_release
  100164cac  adrp    x8, #0x100420000
  100164cb0  ldrsw   x24, [x8, #0xbbc]                        ; ivar offset TAGExpandedResource._version (+0x18)
  100164cb4  mov     x0, x22
  100164cb8  bl      _objc_retain
  100164cbc  ldr     x8, [x23, x24]                           ; x8 = self->_version
  100164cc0  str     x0, [x23, x24]                           ; self->_version = arg3
  100164cc4  mov     x0, x8
  100164cc8  bl      _objc_release
  100164ccc  adrp    x8, #0x100420000
  100164cd0  ldrsw   x8, [x8, #0xbc0]                         ; ivar offset TAGExpandedResource._resourceFormatVersion (+0x8)
  100164cd4  str     w21, [x23, x8]                           ; self->_resourceFormatVersion = arg4
loc_100164cd8:
  100164cd8  mov     x0, x22
  100164cdc  bl      _objc_release
  100164ce0  mov     x0, x20
  100164ce4  bl      _objc_release
  100164ce8  mov     x0, x19
  100164cec  bl      _objc_release
  100164cf0  mov     x0, x23
  100164cf4  sub     sp, x29, #0x30
  100164cf8  ldp     x24, x23, [sp], #0x10
  100164cfc  ldp     x22, x21, [sp], #0x10
  100164d00  ldp     x20, x19, [sp], #0x10
  100164d04  ldp     x29, x30, [sp], #0x10
  100164d08  ret
  100164d0c  mov     x21, x0
  100164d10  mov     x0, x22
  100164d14  bl      _objc_release
  100164d18  mov     x0, x20
  100164d1c  bl      _objc_release
  100164d20  mov     x0, x19
  100164d24  bl      _objc_release
  100164d28  mov     x0, x21
  100164d2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGExpandedResource builder]
; address 0x100164d30  size 56  kind objc
; ======================================================================
  100164d30  stp     x29, x30, [sp, #-0x10]!
  100164d34  mov     x29, sp
  100164d38  adrp    x8, #0x10041e000
  100164d3c  ldr     x0, [x8, #0x9a0]                         ; class TAGExpandedResourceBuilder
  100164d40  adrp    x8, #0x100416000
  100164d44  nop
  100164d48  ldr     x1, [x8, #0xac8]
  100164d4c  bl      _objc_msgSend                            ; [TAGExpandedResourceBuilder alloc]
  100164d50  adrp    x8, #0x100416000
  100164d54  nop
  100164d58  ldr     x1, [x8, #0xab8]
  100164d5c  bl      _objc_msgSend                            ; [[TAGExpandedResourceBuilder alloc] init]
  100164d60  ldp     x29, x30, [sp], #0x10
  100164d64  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGExpandedResource macrosByName:]
; address 0x100164d68  size 168  kind objc
; ======================================================================
  100164d68  stp     x29, x30, [sp, #-0x10]!
  100164d6c  mov     x29, sp
  100164d70  stp     x20, x19, [sp, #-0x10]!
  100164d74  stp     x22, x21, [sp, #-0x10]!
  100164d78  mov     x20, x0
  100164d7c  mov     x0, x2
  100164d80  bl      _objc_retain
  100164d84  mov     x19, x0
  100164d88  adrp    x8, #0x10041d000
  100164d8c  nop
  100164d90  ldr     x1, [x8, #0x6b8]
  100164d94  mov     x0, x20
  100164d98  bl      _objc_msgSend                            ; [self macros]
  100164d9c  mov     x29, x29
  100164da0  bl      _objc_retainAutoreleasedReturnValue
  100164da4  mov     x20, x0
  100164da8  adrp    x8, #0x100416000
  100164dac  nop
  100164db0  ldr     x1, [x8, #0xda0]
  100164db4  mov     x2, x19
  100164db8  bl      _objc_msgSend                            ; [[self macros] valueForKey:arg1]
  100164dbc  mov     x29, x29
  100164dc0  bl      _objc_retainAutoreleasedReturnValue
  100164dc4  mov     x21, x0
  100164dc8  mov     x0, x20
  100164dcc  bl      _objc_release
  100164dd0  mov     x0, x19
  100164dd4  bl      _objc_release
  100164dd8  mov     x0, x21
  100164ddc  ldp     x22, x21, [sp], #0x10
  100164de0  ldp     x20, x19, [sp], #0x10
  100164de4  ldp     x29, x30, [sp], #0x10
  100164de8  b       _objc_autoreleaseReturnValue
  100164dec  mov     x21, x0
  100164df0  b       loc_100164e00
  100164df4  mov     x21, x0
  100164df8  mov     x0, x20
  100164dfc  bl      _objc_release
loc_100164e00:
  100164e00  mov     x0, x19
  100164e04  bl      _objc_release
  100164e08  mov     x0, x21
  100164e0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedResource allMacros]
; address 0x100164e10  size 16  kind objc
; ======================================================================
  100164e10  adrp    x8, #0x10041d000
  100164e14  nop
  100164e18  ldr     x1, [x8, #0x6b8]
  100164e1c  b       _objc_msgSend                            ; [self macros]

; ======================================================================
; -[TAGExpandedResource description]
; address 0x100164e20  size 300  kind objc
; ======================================================================
  100164e20  stp     x29, x30, [sp, #-0x10]!
  100164e24  mov     x29, sp
  100164e28  stp     x20, x19, [sp, #-0x10]!
  100164e2c  stp     x22, x21, [sp, #-0x10]!
  100164e30  stp     x24, x23, [sp, #-0x10]!
  100164e34  sub     sp, sp, #0x20
  100164e38  mov     x22, x0
  100164e3c  adrp    x8, #0x10041d000
  100164e40  ldr     x21, [x8, #0xf78]                        ; class NSString
  100164e44  nop
  100164e48  nop
  100164e4c  ldr     x1, [x8, #0x820]
  100164e50  bl      _objc_msgSend                            ; [self rules]
  100164e54  mov     x29, x29
  100164e58  bl      _objc_retainAutoreleasedReturnValue
  100164e5c  mov     x19, x0
  100164e60  adrp    x8, #0x10041d000
  100164e64  nop
  100164e68  ldr     x1, [x8, #0x6b8]
  100164e6c  mov     x0, x22
  100164e70  bl      _objc_msgSend                            ; [self macros]
  100164e74  mov     x29, x29
  100164e78  bl      _objc_retainAutoreleasedReturnValue
  100164e7c  mov     x20, x0
  100164e80  adrp    x8, #0x10041d000
  100164e84  nop
  100164e88  ldr     x1, [x8, #0xc08]
  100164e8c  mov     x0, x22
  100164e90  bl      _objc_msgSend                            ; [self version]
  100164e94  mov     x29, x29
  100164e98  bl      _objc_retainAutoreleasedReturnValue
  100164e9c  mov     x23, x0
  100164ea0  adrp    x8, #0x10041d000
  100164ea4  nop
  100164ea8  ldr     x1, [x8, #0x6c0]
  100164eac  mov     x0, x22
  100164eb0  bl      _objc_msgSend                            ; [self resourceFormatVersion]
  100164eb4  adrp    x8, #0x100416000
  100164eb8  nop
  100164ebc  ldr     x1, [x8, #0xee8]
  100164ec0  stp     x23, x0, [sp, #0x10]
  100164ec4  stp     x19, x20, [sp]
  100164ec8  adrp    x2, #0x1003c8000
  100164ecc  add     x2, x2, #0xad0                           ; @"Rules: %@  Macros: %@  Version: %@ Format: %d"
  100164ed0  mov     x0, x21
  100164ed4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Rules: %@  Macros: %@  Version: %@ Format: %d", [self rules], [self macros], [self version], [self resourceFormatVersion]]
  100164ed8  mov     x29, x29
  100164edc  bl      _objc_retainAutoreleasedReturnValue
  100164ee0  mov     x21, x0
  100164ee4  mov     x0, x23
  100164ee8  bl      _objc_release
  100164eec  mov     x0, x20
  100164ef0  bl      _objc_release
  100164ef4  mov     x0, x19
  100164ef8  bl      _objc_release
  100164efc  mov     x0, x21
  100164f00  sub     sp, x29, #0x30
  100164f04  ldp     x24, x23, [sp], #0x10
  100164f08  ldp     x22, x21, [sp], #0x10
  100164f0c  ldp     x20, x19, [sp], #0x10
  100164f10  ldp     x29, x30, [sp], #0x10
  100164f14  b       _objc_autoreleaseReturnValue
  100164f18  mov     x21, x0
  100164f1c  b       loc_100164f3c
  100164f20  mov     x21, x0
  100164f24  b       loc_100164f34
  100164f28  mov     x21, x0
  100164f2c  mov     x0, x23
  100164f30  bl      _objc_release
loc_100164f34:
  100164f34  mov     x0, x20
  100164f38  bl      _objc_release
loc_100164f3c:
  100164f3c  mov     x0, x19
  100164f40  bl      _objc_release
  100164f44  mov     x0, x21
  100164f48  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGExpandedResource rules]
; address 0x100164f4c  size 16  kind objc
; ======================================================================
  100164f4c  adrp    x8, #0x100420000
  100164f50  ldrsw   x8, [x8, #0xbb4]                         ; ivar offset TAGExpandedResource._rules (+0x10)
  100164f54  ldr     x0, [x0, x8]                             ; x0 = self->_rules
  100164f58  ret

; ======================================================================
; -[TAGExpandedResource version]
; address 0x100164f5c  size 16  kind objc
; ======================================================================
  100164f5c  mov     w3, #0
  100164f60  adrp    x8, #0x100420000
  100164f64  ldrsw   x2, [x8, #0xbbc]                         ; ivar offset TAGExpandedResource._version (+0x18)
  100164f68  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGExpandedResource resourceFormatVersion]
; address 0x100164f6c  size 16  kind objc
; ======================================================================
  100164f6c  adrp    x8, #0x100420000
  100164f70  ldrsw   x8, [x8, #0xbc0]                         ; ivar offset TAGExpandedResource._resourceFormatVersion (+0x8)
  100164f74  ldr     w0, [x0, x8]                             ; w0 = self->_resourceFormatVersion
  100164f78  ret

; ======================================================================
; -[TAGExpandedResource macros]
; address 0x100164f7c  size 16  kind objc
; ======================================================================
  100164f7c  adrp    x8, #0x100420000
  100164f80  ldrsw   x8, [x8, #0xbb8]                         ; ivar offset TAGExpandedResource._macros (+0x20)
  100164f84  ldr     x0, [x0, x8]                             ; x0 = self->_macros
  100164f88  ret

; ======================================================================
; -[TAGExpandedResource .cxx_destruct]
; address 0x100164f8c  size 84  kind objc
; ======================================================================
  100164f8c  stp     x29, x30, [sp, #-0x10]!
  100164f90  mov     x29, sp
  100164f94  stp     x20, x19, [sp, #-0x10]!
  100164f98  mov     x19, x0
  100164f9c  adrp    x8, #0x100420000
  100164fa0  ldrsw   x8, [x8, #0xbb8]                         ; ivar offset TAGExpandedResource._macros (+0x20)
  100164fa4  add     x0, x19, x8
  100164fa8  mov     x1, #0
  100164fac  bl      _objc_storeStrong
  100164fb0  adrp    x8, #0x100420000
  100164fb4  ldrsw   x8, [x8, #0xbbc]                         ; ivar offset TAGExpandedResource._version (+0x18)
  100164fb8  add     x0, x19, x8
  100164fbc  mov     x1, #0
  100164fc0  bl      _objc_storeStrong
  100164fc4  mov     x1, #0
  100164fc8  adrp    x8, #0x100420000
  100164fcc  ldrsw   x8, [x8, #0xbb4]                         ; ivar offset TAGExpandedResource._rules (+0x10)
  100164fd0  add     x0, x19, x8
  100164fd4  ldp     x20, x19, [sp], #0x10
  100164fd8  ldp     x29, x30, [sp], #0x10
  100164fdc  b       _objc_storeStrong
