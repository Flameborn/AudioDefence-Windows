// unit TAGFunctionCallImplementation — 11 functions
//   0x100162290      44  +[TAGFunctionCallImplementation functionKey]
//   0x1001622bc      44  +[TAGFunctionCallImplementation instanceNameKey]
//   0x1001622e8      44  +[TAGFunctionCallImplementation notDefaultMacroKey]
//   0x100162314      84  -[TAGFunctionCallImplementation init]
//   0x100162368     256  -[TAGFunctionCallImplementation initWithFunctionId:requiredKeys:]
//   0x100162468      44  -[TAGFunctionCallImplementation isCacheable]
//   0x100162494      44  -[TAGFunctionCallImplementation evaluate:]
//   0x1001624c0     160  -[TAGFunctionCallImplementation hasRequiredKeys:]
//   0x100162560      16  -[TAGFunctionCallImplementation instanceFunctionId]
//   0x100162570      16  -[TAGFunctionCallImplementation requiredKeys]
//   0x100162580      64  -[TAGFunctionCallImplementation .cxx_destruct]

; ======================================================================
; +[TAGFunctionCallImplementation functionKey]
; address 0x100162290  size 44  kind objc
; ======================================================================
  100162290  stp     x29, x30, [sp, #-0x10]!
  100162294  mov     x29, sp
  100162298  stp     x20, x19, [sp, #-0x10]!
  10016229c  adrp    x19, #0x1003c8000
  1001622a0  add     x19, x19, #0x990                         ; @"function"
  1001622a4  mov     x0, x19
  1001622a8  bl      _objc_retainAutorelease
  1001622ac  mov     x0, x19
  1001622b0  ldp     x20, x19, [sp], #0x10
  1001622b4  ldp     x29, x30, [sp], #0x10
  1001622b8  ret

; ======================================================================
; +[TAGFunctionCallImplementation instanceNameKey]
; address 0x1001622bc  size 44  kind objc
; ======================================================================
  1001622bc  stp     x29, x30, [sp, #-0x10]!
  1001622c0  mov     x29, sp
  1001622c4  stp     x20, x19, [sp, #-0x10]!
  1001622c8  adrp    x19, #0x1003c8000
  1001622cc  add     x19, x19, #0x9b0                         ; @"instance_name"
  1001622d0  mov     x0, x19
  1001622d4  bl      _objc_retainAutorelease
  1001622d8  mov     x0, x19
  1001622dc  ldp     x20, x19, [sp], #0x10
  1001622e0  ldp     x29, x30, [sp], #0x10
  1001622e4  ret

; ======================================================================
; +[TAGFunctionCallImplementation notDefaultMacroKey]
; address 0x1001622e8  size 44  kind objc
; ======================================================================
  1001622e8  stp     x29, x30, [sp, #-0x10]!
  1001622ec  mov     x29, sp
  1001622f0  stp     x20, x19, [sp, #-0x10]!
  1001622f4  adrp    x19, #0x1003c8000
  1001622f8  add     x19, x19, #0x9d0                         ; @"not_default_macro"
  1001622fc  mov     x0, x19
  100162300  bl      _objc_retainAutorelease
  100162304  mov     x0, x19
  100162308  ldp     x20, x19, [sp], #0x10
  10016230c  ldp     x29, x30, [sp], #0x10
  100162310  ret

; ======================================================================
; -[TAGFunctionCallImplementation init]
; address 0x100162314  size 84  kind objc
; ======================================================================
  100162314  stp     x29, x30, [sp, #-0x10]!
  100162318  mov     x29, sp
  10016231c  stp     x20, x19, [sp, #-0x10]!
  100162320  mov     x8, x1
  100162324  mov     x19, x0
  100162328  adrp    x9, #0x10041b000
  10016232c  nop
  100162330  ldr     x1, [x9, #0xd68]
  100162334  mov     x2, x8
  100162338  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  10016233c  mov     x0, x19
  100162340  bl      _objc_release
  100162344  mov     x0, #0
  100162348  ldp     x20, x19, [sp], #0x10
  10016234c  ldp     x29, x30, [sp], #0x10
  100162350  ret
  100162354  mov     x20, x0
  100162358  mov     x0, x19
  10016235c  bl      _objc_release
  100162360  mov     x0, x20
  100162364  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallImplementation initWithFunctionId:requiredKeys:]
; address 0x100162368  size 256  kind objc
; ======================================================================
  100162368  stp     x29, x30, [sp, #-0x10]!
  10016236c  mov     x29, sp
  100162370  stp     x20, x19, [sp, #-0x10]!
  100162374  stp     x22, x21, [sp, #-0x10]!
  100162378  sub     sp, sp, #0x10
  10016237c  mov     x20, x3
  100162380  mov     x21, x0
  100162384  mov     x0, x2
  100162388  bl      _objc_retain
  10016238c  mov     x19, x0
  100162390  mov     x0, x20
  100162394  bl      _objc_retain
  100162398  mov     x20, x0
  10016239c  str     x21, [sp]
  1001623a0  adrp    x8, #0x10041f000
  1001623a4  ldr     x8, [x8, #0x2b0]
  1001623a8  str     x8, [sp, #8]
  1001623ac  adrp    x8, #0x100416000
  1001623b0  nop
  1001623b4  ldr     x1, [x8, #0xab8]
  1001623b8  mov     x22, #0
  1001623bc  mov     x0, sp
  1001623c0  bl      _objc_msgSendSuper2                      ; [super init]
  1001623c4  mov     x21, x0
  1001623c8  cbz     x21, loc_10016241c                       ; if (self == 0)
  1001623cc  mov     x22, x21
  1001623d0  adrp    x8, #0x100419000
  1001623d4  nop
  1001623d8  ldr     x1, [x8, #0xc08]
  1001623dc  mov     x0, x19
  1001623e0  bl      _objc_msgSend                            ; [arg1 copy]
  1001623e4  adrp    x8, #0x100420000
  1001623e8  ldrsw   x9, [x8, #0xb64]                         ; ivar offset TAGFunctionCallImplementation._instanceFunctionId (+0x8)
  1001623ec  ldr     x8, [x21, x9]                            ; x8 = self->_instanceFunctionId
  1001623f0  str     x0, [x21, x9]                            ; self->_instanceFunctionId = [arg1 copy]
  1001623f4  mov     x0, x8
  1001623f8  bl      _objc_release
  1001623fc  adrp    x8, #0x100420000
  100162400  ldrsw   x22, [x8, #0xb68]                        ; ivar offset TAGFunctionCallImplementation._requiredKeys (+0x10)
  100162404  mov     x0, x20
  100162408  bl      _objc_retain
  10016240c  ldr     x8, [x21, x22]                           ; x8 = self->_requiredKeys
  100162410  str     x0, [x21, x22]                           ; self->_requiredKeys = arg2
  100162414  mov     x0, x8
  100162418  bl      _objc_release
loc_10016241c:
  10016241c  mov     x0, x20
  100162420  bl      _objc_release
  100162424  mov     x0, x19
  100162428  bl      _objc_release
  10016242c  mov     x0, x21
  100162430  sub     sp, x29, #0x20
  100162434  ldp     x22, x21, [sp], #0x10
  100162438  ldp     x20, x19, [sp], #0x10
  10016243c  ldp     x29, x30, [sp], #0x10
  100162440  ret
  100162444  mov     x21, x0
  100162448  mov     x0, x20
  10016244c  bl      _objc_release
  100162450  mov     x0, x19
  100162454  bl      _objc_release
  100162458  mov     x0, x22
  10016245c  bl      _objc_release
  100162460  mov     x0, x21
  100162464  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallImplementation isCacheable]
; address 0x100162468  size 44  kind objc
; ======================================================================
  100162468  stp     x29, x30, [sp, #-0x10]!
  10016246c  mov     x29, sp
  100162470  mov     x8, x1
  100162474  adrp    x9, #0x10041b000
  100162478  nop
  10016247c  ldr     x1, [x9, #0xd68]
  100162480  mov     x2, x8
  100162484  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100162488  mov     w0, #0
  10016248c  ldp     x29, x30, [sp], #0x10
  100162490  ret

; ======================================================================
; -[TAGFunctionCallImplementation evaluate:]
; address 0x100162494  size 44  kind objc
; ======================================================================
  100162494  stp     x29, x30, [sp, #-0x10]!
  100162498  mov     x29, sp
  10016249c  mov     x8, x1
  1001624a0  adrp    x9, #0x10041b000
  1001624a4  nop
  1001624a8  ldr     x1, [x9, #0xd68]
  1001624ac  mov     x2, x8
  1001624b0  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  1001624b4  mov     x0, #0
  1001624b8  ldp     x29, x30, [sp], #0x10
  1001624bc  ret

; ======================================================================
; -[TAGFunctionCallImplementation hasRequiredKeys:]
; address 0x1001624c0  size 160  kind objc
; ======================================================================
  1001624c0  stp     x29, x30, [sp, #-0x10]!
  1001624c4  mov     x29, sp
  1001624c8  stp     x20, x19, [sp, #-0x10]!
  1001624cc  stp     x22, x21, [sp, #-0x10]!
  1001624d0  mov     x20, x0
  1001624d4  mov     x0, x2
  1001624d8  bl      _objc_retain
  1001624dc  mov     x19, x0
  1001624e0  adrp    x8, #0x10041d000
  1001624e4  nop
  1001624e8  ldr     x1, [x8, #0xa38]
  1001624ec  mov     x0, x20
  1001624f0  bl      _objc_msgSend                            ; [self requiredKeys]
  1001624f4  mov     x29, x29
  1001624f8  bl      _objc_retainAutoreleasedReturnValue
  1001624fc  mov     x20, x0
  100162500  adrp    x8, #0x10041d000
  100162504  nop
  100162508  ldr     x1, [x8, #0x648]
  10016250c  mov     x2, x19
  100162510  bl      _objc_msgSend                            ; [[self requiredKeys] isSubsetOfSet:arg1]
  100162514  mov     x21, x0
  100162518  mov     x0, x20
  10016251c  bl      _objc_release
  100162520  mov     x0, x19
  100162524  bl      _objc_release
  100162528  mov     x0, x21
  10016252c  ldp     x22, x21, [sp], #0x10
  100162530  ldp     x20, x19, [sp], #0x10
  100162534  ldp     x29, x30, [sp], #0x10
  100162538  ret
  10016253c  mov     x21, x0
  100162540  b       loc_100162550
  100162544  mov     x21, x0
  100162548  mov     x0, x20
  10016254c  bl      _objc_release
loc_100162550:
  100162550  mov     x0, x19
  100162554  bl      _objc_release
  100162558  mov     x0, x21
  10016255c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGFunctionCallImplementation instanceFunctionId]
; address 0x100162560  size 16  kind objc
; ======================================================================
  100162560  mov     w3, #0
  100162564  adrp    x8, #0x100420000
  100162568  ldrsw   x2, [x8, #0xb64]                         ; ivar offset TAGFunctionCallImplementation._instanceFunctionId (+0x8)
  10016256c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGFunctionCallImplementation requiredKeys]
; address 0x100162570  size 16  kind objc
; ======================================================================
  100162570  adrp    x8, #0x100420000
  100162574  ldrsw   x8, [x8, #0xb68]                         ; ivar offset TAGFunctionCallImplementation._requiredKeys (+0x10)
  100162578  ldr     x0, [x0, x8]                             ; x0 = self->_requiredKeys
  10016257c  ret

; ======================================================================
; -[TAGFunctionCallImplementation .cxx_destruct]
; address 0x100162580  size 64  kind objc
; ======================================================================
  100162580  stp     x29, x30, [sp, #-0x10]!
  100162584  mov     x29, sp
  100162588  stp     x20, x19, [sp, #-0x10]!
  10016258c  mov     x19, x0
  100162590  adrp    x8, #0x100420000
  100162594  ldrsw   x8, [x8, #0xb68]                         ; ivar offset TAGFunctionCallImplementation._requiredKeys (+0x10)
  100162598  add     x0, x19, x8
  10016259c  mov     x1, #0
  1001625a0  bl      _objc_storeStrong
  1001625a4  mov     x1, #0
  1001625a8  adrp    x8, #0x100420000
  1001625ac  ldrsw   x8, [x8, #0xb64]                         ; ivar offset TAGFunctionCallImplementation._instanceFunctionId (+0x8)
  1001625b0  add     x0, x19, x8
  1001625b4  ldp     x20, x19, [sp], #0x10
  1001625b8  ldp     x29, x30, [sp], #0x10
  1001625bc  b       _objc_storeStrong
