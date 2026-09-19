// unit TAGPValue+Hash — 1 functions
//   0x10017f018    1472  -[TAGPValue(Hash) hash]

; ======================================================================
; -[TAGPValue(Hash) hash]
; address 0x10017f018  size 1472  kind objc
; ======================================================================
  10017f018  stp     x29, x30, [sp, #-0x10]!
  10017f01c  mov     x29, sp
  10017f020  stp     x20, x19, [sp, #-0x10]!
  10017f024  stp     x22, x21, [sp, #-0x10]!
  10017f028  stp     x24, x23, [sp, #-0x10]!
  10017f02c  stp     x26, x25, [sp, #-0x10]!
  10017f030  stp     x28, x27, [sp, #-0x10]!
  10017f034  sub     sp, sp, #0x310
  10017f038  mov     x19, x0
  10017f03c  adrp    x21, #0x1003b0000
  10017f040  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10017f044  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10017f048  stur    x8, [x29, #-0x58]
  10017f04c  adrp    x8, #0x100417000
  10017f050  nop
  10017f054  ldr     x1, [x8, #0x9a8]
  10017f058  bl      _objc_msgSend                            ; [self type]
  10017f05c  sub     x8, x0, #1
  10017f060  cmp     x8, #7
  10017f064  b.ls    loc_10017f070                            ; if (([self type] - 1) <=u 7)
  10017f068  mov     x27, #1
  10017f06c  b       loc_10017f518
loc_10017f070:
  10017f070  adr     x9, #0x10017f5b8                         ; 0x10017f5b8
  10017f074  nop
  10017f078  ldrsw   x8, [x9, x8, lsl #2]
  10017f07c  add     x8, x8, x9
  10017f080  br      x8                                       ; switch (?) { case 0: goto loc_10017f084; case 1: goto loc_10017f0bc; case 2: goto loc_10017f19c; case 3: goto loc_10017f28c; case 4: goto loc_10017f2c4; case 5: goto loc_10017f304; case 6: goto loc_10017f320; case 7: goto loc_10017f400 }
loc_10017f084:  ; case 0
  10017f084  adrp    x8, #0x10041b000
  10017f088  nop
  10017f08c  ldr     x1, [x8, #0x1f0]
  10017f090  mov     x0, x19
  10017f094  bl      _objc_msgSend                            ; [self string]
  10017f098  mov     x29, x29
  10017f09c  bl      _objc_retainAutoreleasedReturnValue
  10017f0a0  mov     x20, x0
  10017f0a4  adrp    x8, #0x10041d000
  10017f0a8  nop
  10017f0ac  ldr     x1, [x8, #0x478]
  10017f0b0  bl      _objc_msgSend                            ; [[self string] hash]
  10017f0b4  b       loc_10017f2f4
  10017f0b8  b       loc_10017f590
loc_10017f0bc:  ; case 1
  10017f0bc  stp     xzr, xzr, [x29, #-0x68]
  10017f0c0  stp     xzr, xzr, [x29, #-0x78]
  10017f0c4  stp     xzr, xzr, [x29, #-0x88]
  10017f0c8  stp     xzr, xzr, [x29, #-0x98]
  10017f0cc  adrp    x8, #0x10041d000
  10017f0d0  nop
  10017f0d4  ldr     x1, [x8, #0x9a0]
  10017f0d8  mov     x0, x19
  10017f0dc  bl      _objc_msgSend                            ; [self listItemArray]
  10017f0e0  mov     x29, x29
  10017f0e4  bl      _objc_retainAutoreleasedReturnValue
  10017f0e8  mov     x20, x0
  10017f0ec  adrp    x8, #0x100416000
  10017f0f0  nop
  10017f0f4  ldr     x21, [x8, #0xe00]
  10017f0f8  sub     x2, x29, #0x98
  10017f0fc  add     x3, sp, #0x248
  10017f100  mov     x4, #0x10
  10017f104  mov     x1, x21
  10017f108  bl      _objc_msgSend                            ; [[self listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x248] count:16]
  10017f10c  mov     x23, x0
  10017f110  cbz     x23, loc_10017f424                       ; if ([[self listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x248] count:16] == 0)
  10017f114  ldur    x8, [x29, #-0x88]
  10017f118  ldr     x28, [x8]
  10017f11c  adrp    x8, #0x10041d000
  10017f120  add     x8, x8, #0x478                           ; &@selector(hash)
  10017f124  ldr     x22, [x8]
  10017f128  mov     x27, #1
  10017f12c  sub     x24, x29, #0x98
  10017f130  add     x25, sp, #0x248
loc_10017f134:
  10017f134  mov     x26, #0
loc_10017f138:
  10017f138  ldur    x8, [x29, #-0x88]
  10017f13c  ldr     x8, [x8]
  10017f140  cmp     x8, x28
  10017f144  b.eq    loc_10017f150                            ; if (x8 == x28)
  10017f148  mov     x0, x20
  10017f14c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self listItemArray])
loc_10017f150:
  10017f150  ldur    x8, [x29, #-0x90]
  10017f154  ldr     x0, [x8, x26, lsl #3]
  10017f158  mov     x1, x22
  10017f15c  bl      _objc_msgSend                            ; [x0 hash]
  10017f160  lsl     x8, x27, #5
  10017f164  sub     x8, x8, x27
  10017f168  add     x27, x0, x8
  10017f16c  add     x26, x26, #1
  10017f170  cmp     x26, x23
  10017f174  b.lo    loc_10017f138                            ; if ((x26 + 1) <u [[self listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x248] count:16])
  10017f178  mov     x4, #0x10
  10017f17c  mov     x0, x20
  10017f180  mov     x1, x21
  10017f184  mov     x2, x24
  10017f188  mov     x3, x25
  10017f18c  bl      _objc_msgSend                            ; [[self listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x248] count:16]
  10017f190  mov     x23, x0
  10017f194  cbnz    x23, loc_10017f134                       ; if ([[self listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x248] count:16] != 0)
  10017f198  b       loc_10017f428
loc_10017f19c:  ; case 2
  10017f19c  str     xzr, [sp, #0x240]
  10017f1a0  str     xzr, [sp, #0x238]
  10017f1a4  str     xzr, [sp, #0x230]
  10017f1a8  str     xzr, [sp, #0x228]
  10017f1ac  str     xzr, [sp, #0x220]
  10017f1b0  str     xzr, [sp, #0x218]
  10017f1b4  str     xzr, [sp, #0x210]
  10017f1b8  str     xzr, [sp, #0x208]
  10017f1bc  adrp    x8, #0x10041d000
  10017f1c0  nop
  10017f1c4  ldr     x1, [x8, #0xa78]
  10017f1c8  mov     x0, x19
  10017f1cc  bl      _objc_msgSend                            ; [self mapKeyArray]
  10017f1d0  mov     x29, x29
  10017f1d4  bl      _objc_retainAutoreleasedReturnValue
  10017f1d8  mov     x21, x0
  10017f1dc  adrp    x8, #0x100416000
  10017f1e0  nop
  10017f1e4  ldr     x20, [x8, #0xe00]
  10017f1e8  add     x2, sp, #0x208
  10017f1ec  add     x3, sp, #0x188
  10017f1f0  mov     x4, #0x10
  10017f1f4  mov     x1, x20
  10017f1f8  bl      _objc_msgSend                            ; [[self mapKeyArray] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16]
  10017f1fc  mov     x23, x0
  10017f200  cbz     x23, loc_10017f430                       ; if ([[self mapKeyArray] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16] == 0)
  10017f204  ldr     x8, [sp, #0x218]
  10017f208  ldr     x28, [x8]                                ; x28 = 0[+0x0]
  10017f20c  adrp    x8, #0x10041d000
  10017f210  add     x8, x8, #0x478                           ; &@selector(hash)
  10017f214  ldr     x22, [x8]
  10017f218  mov     x27, #1
  10017f21c  add     x24, sp, #0x208
  10017f220  add     x25, sp, #0x188
loc_10017f224:
  10017f224  mov     x26, #0
loc_10017f228:
  10017f228  ldr     x8, [sp, #0x218]
  10017f22c  ldr     x8, [x8]                                 ; x8 = 0[+0x0]
  10017f230  cmp     x8, x28
  10017f234  b.eq    loc_10017f240                            ; if (0[+0x0] == 0[+0x0])
  10017f238  mov     x0, x21
  10017f23c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self mapKeyArray])
loc_10017f240:
  10017f240  ldr     x8, [sp, #0x210]
  10017f244  ldr     x0, [x8, x26, lsl #3]
  10017f248  mov     x1, x22
  10017f24c  bl      _objc_msgSend                            ; [x0 hash]
  10017f250  lsl     x8, x27, #5
  10017f254  sub     x8, x8, x27
  10017f258  add     x27, x0, x8
  10017f25c  add     x26, x26, #1
  10017f260  cmp     x26, x23
  10017f264  b.lo    loc_10017f228                            ; if ((x26 + 1) <u [[self mapKeyArray] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16])
  10017f268  mov     x4, #0x10
  10017f26c  mov     x0, x21
  10017f270  mov     x1, x20
  10017f274  mov     x2, x24
  10017f278  mov     x3, x25
  10017f27c  bl      _objc_msgSend                            ; [[self mapKeyArray] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16]
  10017f280  mov     x23, x0
  10017f284  cbnz    x23, loc_10017f224                       ; if ([[self mapKeyArray] countByEnumeratingWithState:&sp[0x208] objects:&sp[0x188] count:16] != 0)
  10017f288  b       loc_10017f434
loc_10017f28c:  ; case 3
  10017f28c  adrp    x8, #0x10041d000
  10017f290  nop
  10017f294  ldr     x1, [x8, #0x9c8]
  10017f298  mov     x0, x19
  10017f29c  bl      _objc_msgSend                            ; [self macroReference]
  10017f2a0  mov     x29, x29
  10017f2a4  bl      _objc_retainAutoreleasedReturnValue
  10017f2a8  mov     x20, x0
  10017f2ac  adrp    x8, #0x10041d000
  10017f2b0  nop
  10017f2b4  ldr     x1, [x8, #0x478]
  10017f2b8  bl      _objc_msgSend                            ; [[self macroReference] hash]
  10017f2bc  b       loc_10017f2f4
  10017f2c0  b       loc_10017f590
loc_10017f2c4:  ; case 4
  10017f2c4  adrp    x8, #0x10041d000
  10017f2c8  nop
  10017f2cc  ldr     x1, [x8, #0xa90]
  10017f2d0  mov     x0, x19
  10017f2d4  bl      _objc_msgSend                            ; [self functionId]
  10017f2d8  mov     x29, x29
  10017f2dc  bl      _objc_retainAutoreleasedReturnValue
  10017f2e0  mov     x20, x0
  10017f2e4  adrp    x8, #0x10041d000
  10017f2e8  nop
  10017f2ec  ldr     x1, [x8, #0x478]
  10017f2f0  bl      _objc_msgSend                            ; [[self functionId] hash]
loc_10017f2f4:
  10017f2f4  add     x27, x0, #0x1f
  10017f2f8  mov     x0, x20
  10017f2fc  bl      _objc_release
  10017f300  b       loc_10017f518
loc_10017f304:  ; case 5
  10017f304  adrp    x8, #0x10041d000
  10017f308  nop
  10017f30c  ldr     x1, [x8, #0xba8]
  10017f310  mov     x0, x19
  10017f314  bl      _objc_msgSend                            ; [self integer]
  10017f318  add     x27, x0, #0x1f
  10017f31c  b       loc_10017f518
loc_10017f320:  ; case 6
  10017f320  stp     xzr, xzr, [sp, #0xb8]
  10017f324  stp     xzr, xzr, [sp, #0xa8]
  10017f328  stp     xzr, xzr, [sp, #0x98]
  10017f32c  stp     xzr, xzr, [sp, #0x88]
  10017f330  adrp    x8, #0x10041d000
  10017f334  nop
  10017f338  ldr     x1, [x8, #0x9e0]
  10017f33c  mov     x0, x19
  10017f340  bl      _objc_msgSend                            ; [self templateTokenArray]
  10017f344  mov     x29, x29
  10017f348  bl      _objc_retainAutoreleasedReturnValue
  10017f34c  mov     x20, x0
  10017f350  adrp    x8, #0x100416000
  10017f354  nop
  10017f358  ldr     x21, [x8, #0xe00]
  10017f35c  add     x2, sp, #0x88
  10017f360  add     x3, sp, #8
  10017f364  mov     x4, #0x10
  10017f368  mov     x1, x21
  10017f36c  bl      _objc_msgSend                            ; [[self templateTokenArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10017f370  mov     x23, x0
  10017f374  cbz     x23, loc_10017f424                       ; if ([[self templateTokenArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  10017f378  ldr     x8, [sp, #0x98]
  10017f37c  ldr     x28, [x8]
  10017f380  adrp    x8, #0x10041d000
  10017f384  add     x8, x8, #0x478                           ; &@selector(hash)
  10017f388  ldr     x22, [x8]
  10017f38c  mov     x27, #1
  10017f390  add     x24, sp, #0x88
  10017f394  add     x25, sp, #8
loc_10017f398:
  10017f398  mov     x26, #0
loc_10017f39c:
  10017f39c  ldr     x8, [sp, #0x98]
  10017f3a0  ldr     x8, [x8]
  10017f3a4  cmp     x8, x28
  10017f3a8  b.eq    loc_10017f3b4                            ; if (x8 == x28)
  10017f3ac  mov     x0, x20
  10017f3b0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self templateTokenArray])
loc_10017f3b4:
  10017f3b4  ldr     x8, [sp, #0x90]
  10017f3b8  ldr     x0, [x8, x26, lsl #3]
  10017f3bc  mov     x1, x22
  10017f3c0  bl      _objc_msgSend                            ; [x0 hash]
  10017f3c4  lsl     x8, x27, #5
  10017f3c8  sub     x8, x8, x27
  10017f3cc  add     x27, x0, x8
  10017f3d0  add     x26, x26, #1
  10017f3d4  cmp     x26, x23
  10017f3d8  b.lo    loc_10017f39c                            ; if ((x26 + 1) <u [[self templateTokenArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  10017f3dc  mov     x4, #0x10
  10017f3e0  mov     x0, x20
  10017f3e4  mov     x1, x21
  10017f3e8  mov     x2, x24
  10017f3ec  mov     x3, x25
  10017f3f0  bl      _objc_msgSend                            ; [[self templateTokenArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10017f3f4  mov     x23, x0
  10017f3f8  cbnz    x23, loc_10017f398                       ; if ([[self templateTokenArray] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
  10017f3fc  b       loc_10017f428
loc_10017f400:  ; case 7
  10017f400  adrp    x8, #0x10041d000
  10017f404  nop
  10017f408  ldr     x1, [x8, #0x8e0]
  10017f40c  mov     x0, x19
  10017f410  bl      _objc_msgSend                            ; [self boolean]
  10017f414  cmp     w0, #0
  10017f418  mov     x8, #0x1f
  10017f41c  cinc    x27, x8, ne
  10017f420  b       loc_10017f518
loc_10017f424:
  10017f424  mov     x27, #1
loc_10017f428:
  10017f428  mov     x0, x20
  10017f42c  b       loc_10017f50c
loc_10017f430:
  10017f430  mov     x27, #1
loc_10017f434:
  10017f434  mov     x0, x21
  10017f438  bl      _objc_release
  10017f43c  stp     xzr, xzr, [sp, #0x178]
  10017f440  stp     xzr, xzr, [sp, #0x168]
  10017f444  stp     xzr, xzr, [sp, #0x158]
  10017f448  stp     xzr, xzr, [sp, #0x148]
  10017f44c  adrp    x8, #0x10041d000
  10017f450  nop
  10017f454  ldr     x1, [x8, #0xa70]
  10017f458  mov     x0, x19
  10017f45c  bl      _objc_msgSend                            ; [self mapValueArray]
  10017f460  mov     x29, x29
  10017f464  bl      _objc_retainAutoreleasedReturnValue
  10017f468  mov     x21, x0
  10017f46c  add     x2, sp, #0x148
  10017f470  add     x3, sp, #0xc8
  10017f474  mov     x4, #0x10
  10017f478  mov     x1, x20
  10017f47c  bl      _objc_msgSend                            ; [[self mapValueArray] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16]
  10017f480  mov     x23, x0
  10017f484  cbz     x23, loc_10017f508                       ; if ([[self mapValueArray] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16] == 0)
  10017f488  ldr     x8, [sp, #0x158]
  10017f48c  ldr     x28, [x8]
  10017f490  adrp    x8, #0x10041d000
  10017f494  add     x8, x8, #0x478                           ; &@selector(hash)
  10017f498  ldr     x22, [x8]
  10017f49c  add     x24, sp, #0x148
  10017f4a0  add     x25, sp, #0xc8
loc_10017f4a4:
  10017f4a4  mov     x26, #0
loc_10017f4a8:
  10017f4a8  ldr     x8, [sp, #0x158]
  10017f4ac  ldr     x8, [x8]
  10017f4b0  cmp     x8, x28
  10017f4b4  b.eq    loc_10017f4c0                            ; if (x8 == x28)
  10017f4b8  mov     x0, x21
  10017f4bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self mapValueArray])
loc_10017f4c0:
  10017f4c0  ldr     x8, [sp, #0x150]
  10017f4c4  ldr     x0, [x8, x26, lsl #3]
  10017f4c8  mov     x1, x22
  10017f4cc  bl      _objc_msgSend                            ; [x0 hash]
  10017f4d0  lsl     x8, x27, #5
  10017f4d4  sub     x8, x8, x27
  10017f4d8  add     x27, x0, x8
  10017f4dc  add     x26, x26, #1
  10017f4e0  cmp     x26, x23
  10017f4e4  b.lo    loc_10017f4a8                            ; if ((x26 + 1) <u [[self mapValueArray] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16])
  10017f4e8  mov     x4, #0x10
  10017f4ec  mov     x0, x21
  10017f4f0  mov     x1, x20
  10017f4f4  mov     x2, x24
  10017f4f8  mov     x3, x25
  10017f4fc  bl      _objc_msgSend                            ; [[self mapValueArray] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16]
  10017f500  mov     x23, x0
  10017f504  cbnz    x23, loc_10017f4a4                       ; if ([[self mapValueArray] countByEnumeratingWithState:&sp[0x148] objects:&sp[0xc8] count:16] != 0)
loc_10017f508:
  10017f508  mov     x0, x21
loc_10017f50c:
  10017f50c  bl      _objc_release
  10017f510  adrp    x21, #0x1003b0000
  10017f514  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
loc_10017f518:
  10017f518  adrp    x8, #0x10041d000
  10017f51c  nop
  10017f520  ldr     x1, [x8, #0x9f0]
  10017f524  mov     x0, x19
  10017f528  bl      _objc_msgSend                            ; [self containsReferences]
  10017f52c  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  10017f530  ldur    x9, [x29, #-0x58]
  10017f534  sub     x8, x8, x9
  10017f538  cbnz    x8, loc_10017f568                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10017f53c  lsl     x8, x27, #5
  10017f540  sub     x8, x8, x27
  10017f544  add     x0, x8, w0, uxtw
  10017f548  sub     sp, x29, #0x50
  10017f54c  ldp     x28, x27, [sp], #0x10
  10017f550  ldp     x26, x25, [sp], #0x10
  10017f554  ldp     x24, x23, [sp], #0x10
  10017f558  ldp     x22, x21, [sp], #0x10
  10017f55c  ldp     x20, x19, [sp], #0x10
  10017f560  ldp     x29, x30, [sp], #0x10
  10017f564  ret
loc_10017f568:
  10017f568  bl      ___stack_chk_fail                        ; stack_chk_fail([self containsReferences])
  10017f56c  b       loc_10017f590
  10017f570  b       loc_10017f590
  10017f574  b       loc_10017f590
  10017f578  b       loc_10017f5a4
  10017f57c  b       loc_10017f5a4
  10017f580  b       loc_10017f5a4
  10017f584  b       loc_10017f590
  10017f588  b       loc_10017f590
  10017f58c  b       loc_10017f590
loc_10017f590:
  10017f590  mov     x19, x0
  10017f594  mov     x0, x20
  10017f598  b       loc_10017f5ac
  10017f59c  b       loc_10017f5a4
  10017f5a0  b       loc_10017f5a4
loc_10017f5a4:
  10017f5a4  mov     x19, x0
  10017f5a8  mov     x0, x21
loc_10017f5ac:
  10017f5ac  bl      _objc_release
  10017f5b0  mov     x0, x19
  10017f5b4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10017f5b8  .word   jump table of 10017f080, case 0 -> loc_10017f084
  10017f5bc  .word   jump table of 10017f080, case 1 -> loc_10017f0bc
  10017f5c0  .word   jump table of 10017f080, case 2 -> loc_10017f19c
  10017f5c4  .word   jump table of 10017f080, case 3 -> loc_10017f28c
  10017f5c8  .word   jump table of 10017f080, case 4 -> loc_10017f2c4
  10017f5cc  .word   jump table of 10017f080, case 5 -> loc_10017f304
  10017f5d0  .word   jump table of 10017f080, case 6 -> loc_10017f320
  10017f5d4  .word   jump table of 10017f080, case 7 -> loc_10017f400
