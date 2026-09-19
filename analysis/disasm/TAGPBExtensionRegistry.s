// unit TAGPBExtensionRegistry — 6 functions
//   0x10013a1fc     128  -[TAGPBExtensionRegistry init]
//   0x10013a27c     100  -[TAGPBExtensionRegistry dealloc]
//   0x10013a2e0     136  -[TAGPBExtensionRegistry extensionMapForContainingType:]
//   0x10013a368     184  -[TAGPBExtensionRegistry addExtension:]
//   0x10013a420     112  -[TAGPBExtensionRegistry getExtension:fieldNumber:]
//   0x10013a490     368  -[TAGPBExtensionRegistry addExtensions:]

; ======================================================================
; -[TAGPBExtensionRegistry init]
; address 0x10013a1fc  size 128  kind objc
; ======================================================================
  10013a1fc  stp     x29, x30, [sp, #-0x10]!
  10013a200  mov     x29, sp
  10013a204  stp     x20, x19, [sp, #-0x10]!
  10013a208  sub     sp, sp, #0x10
  10013a20c  str     x0, [sp]
  10013a210  adrp    x8, #0x10041f000
  10013a214  ldr     x8, [x8, #0x1c0]
  10013a218  str     x8, [sp, #8]
  10013a21c  adrp    x8, #0x100416000
  10013a220  nop
  10013a224  ldr     x20, [x8, #0xab8]
  10013a228  mov     x0, sp
  10013a22c  mov     x1, x20
  10013a230  bl      _objc_msgSendSuper2                      ; [super init]
  10013a234  mov     x19, x0
  10013a238  cbz     x19, loc_10013a268                       ; if (self == 0)
  10013a23c  adrp    x8, #0x10041d000
  10013a240  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10013a244  adrp    x8, #0x100416000
  10013a248  nop
  10013a24c  ldr     x1, [x8, #0xac8]
  10013a250  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10013a254  mov     x1, x20
  10013a258  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10013a25c  adrp    x8, #0x100420000
  10013a260  ldrsw   x8, [x8, #0x9bc]                         ; ivar offset TAGPBExtensionRegistry.mutableClassMap_ (+0x8)
  10013a264  str     x0, [x19, x8]                            ; self->mutableClassMap_ = [[NSMutableDictionary alloc] init]
loc_10013a268:
  10013a268  mov     x0, x19
  10013a26c  sub     sp, x29, #0x10
  10013a270  ldp     x20, x19, [sp], #0x10
  10013a274  ldp     x29, x30, [sp], #0x10
  10013a278  ret

; ======================================================================
; -[TAGPBExtensionRegistry dealloc]
; address 0x10013a27c  size 100  kind objc
; ======================================================================
  10013a27c  stp     x29, x30, [sp, #-0x10]!
  10013a280  mov     x29, sp
  10013a284  stp     x20, x19, [sp, #-0x10]!
  10013a288  sub     sp, sp, #0x10
  10013a28c  mov     x19, x0
  10013a290  adrp    x8, #0x100420000
  10013a294  ldrsw   x8, [x8, #0x9bc]                         ; ivar offset TAGPBExtensionRegistry.mutableClassMap_ (+0x8)
  10013a298  ldr     x0, [x19, x8]                            ; x0 = self->mutableClassMap_
  10013a29c  adrp    x8, #0x10041b000
  10013a2a0  nop
  10013a2a4  ldr     x1, [x8, #0xd70]
  10013a2a8  bl      _objc_msgSend                            ; [self->mutableClassMap_ release]
  10013a2ac  str     x19, [sp]
  10013a2b0  adrp    x8, #0x10041f000
  10013a2b4  ldr     x8, [x8, #0x1c0]
  10013a2b8  str     x8, [sp, #8]
  10013a2bc  adrp    x8, #0x100416000
  10013a2c0  nop
  10013a2c4  ldr     x1, [x8, #0xfc8]
  10013a2c8  mov     x0, sp
  10013a2cc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10013a2d0  sub     sp, x29, #0x10
  10013a2d4  ldp     x20, x19, [sp], #0x10
  10013a2d8  ldp     x29, x30, [sp], #0x10
  10013a2dc  ret

; ======================================================================
; -[TAGPBExtensionRegistry extensionMapForContainingType:]
; address 0x10013a2e0  size 136  kind objc
; ======================================================================
  10013a2e0  stp     x29, x30, [sp, #-0x10]!
  10013a2e4  mov     x29, sp
  10013a2e8  stp     x20, x19, [sp, #-0x10]!
  10013a2ec  stp     x22, x21, [sp, #-0x10]!
  10013a2f0  mov     x19, x2
  10013a2f4  mov     x20, x0
  10013a2f8  adrp    x8, #0x100420000
  10013a2fc  ldrsw   x22, [x8, #0x9bc]                        ; ivar offset TAGPBExtensionRegistry.mutableClassMap_ (+0x8)
  10013a300  ldr     x0, [x20, x22]                           ; x0 = self->mutableClassMap_
  10013a304  adrp    x8, #0x100417000
  10013a308  nop
  10013a30c  ldr     x1, [x8, #0x40]
  10013a310  bl      _objc_msgSend                            ; [self->mutableClassMap_ objectForKey:arg1]
  10013a314  mov     x21, x0
  10013a318  cbnz    x21, loc_10013a354                       ; if ([self->mutableClassMap_ objectForKey:arg1] != 0)
  10013a31c  adrp    x8, #0x10041d000
  10013a320  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10013a324  adrp    x8, #0x10041b000
  10013a328  nop
  10013a32c  ldr     x1, [x8, #0xf20]
  10013a330  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10013a334  mov     x21, x0
  10013a338  ldr     x0, [x20, x22]                           ; x0 = self->mutableClassMap_
  10013a33c  adrp    x8, #0x100416000
  10013a340  nop
  10013a344  ldr     x1, [x8, #0xdc8]
  10013a348  mov     x2, x21
  10013a34c  mov     x3, x19
  10013a350  bl      _objc_msgSend                            ; [self->mutableClassMap_ setObject:[NSMutableDictionary dictionary] forKey:arg1]
loc_10013a354:
  10013a354  mov     x0, x21
  10013a358  ldp     x22, x21, [sp], #0x10
  10013a35c  ldp     x20, x19, [sp], #0x10
  10013a360  ldp     x29, x30, [sp], #0x10
  10013a364  ret

; ======================================================================
; -[TAGPBExtensionRegistry addExtension:]
; address 0x10013a368  size 184  kind objc
; ======================================================================
  10013a368  stp     x29, x30, [sp, #-0x10]!
  10013a36c  mov     x29, sp
  10013a370  stp     x20, x19, [sp, #-0x10]!
  10013a374  stp     x22, x21, [sp, #-0x10]!
  10013a378  mov     x19, x2
  10013a37c  mov     x20, x0
  10013a380  cbz     x19, loc_10013a410                       ; if (arg1 == 0)
  10013a384  adrp    x8, #0x10041c000
  10013a388  nop
  10013a38c  ldr     x1, [x8, #0x868]
  10013a390  mov     x0, x19
  10013a394  bl      _objc_msgSend                            ; [arg1 containingType]
  10013a398  mov     x2, x0
  10013a39c  adrp    x8, #0x10041c000
  10013a3a0  nop
  10013a3a4  ldr     x1, [x8, #0x920]
  10013a3a8  mov     x0, x20
  10013a3ac  bl      _objc_msgSend                            ; [self extensionMapForContainingType:[arg1 containingType]]
  10013a3b0  mov     x20, x0
  10013a3b4  adrp    x8, #0x10041d000
  10013a3b8  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  10013a3bc  adrp    x8, #0x10041c000
  10013a3c0  nop
  10013a3c4  ldr     x1, [x8, #0x860]
  10013a3c8  mov     x0, x19
  10013a3cc  bl      _objc_msgSend                            ; [arg1 fieldNumber]
  10013a3d0  mov     x2, x0
  10013a3d4  adrp    x8, #0x100416000
  10013a3d8  nop
  10013a3dc  ldr     x1, [x8, #0xec0]
  10013a3e0  mov     x0, x21
  10013a3e4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[arg1 fieldNumber]]
  10013a3e8  mov     x3, x0
  10013a3ec  adrp    x8, #0x100416000
  10013a3f0  nop
  10013a3f4  ldr     x1, [x8, #0xdc8]
  10013a3f8  mov     x0, x20
  10013a3fc  mov     x2, x19
  10013a400  ldp     x22, x21, [sp], #0x10
  10013a404  ldp     x20, x19, [sp], #0x10
  10013a408  ldp     x29, x30, [sp], #0x10
  10013a40c  b       _objc_msgSend                            ; [[self extensionMapForContainingType:[arg1 containingType]] setObject:arg1 forKey:[NSNumber numberWithInt:[arg1 fieldNumber]]]
loc_10013a410:
  10013a410  ldp     x22, x21, [sp], #0x10
  10013a414  ldp     x20, x19, [sp], #0x10
  10013a418  ldp     x29, x30, [sp], #0x10
  10013a41c  ret

; ======================================================================
; -[TAGPBExtensionRegistry getExtension:fieldNumber:]
; address 0x10013a420  size 112  kind objc
; ======================================================================
  10013a420  stp     x29, x30, [sp, #-0x10]!
  10013a424  mov     x29, sp
  10013a428  stp     x20, x19, [sp, #-0x10]!
  10013a42c  stp     x22, x21, [sp, #-0x10]!
  10013a430  mov     x19, x3
  10013a434  adrp    x8, #0x100420000
  10013a438  ldrsw   x8, [x8, #0x9bc]                         ; ivar offset TAGPBExtensionRegistry.mutableClassMap_ (+0x8)
  10013a43c  ldr     x0, [x0, x8]                             ; x0 = self->mutableClassMap_
  10013a440  adrp    x8, #0x100417000
  10013a444  nop
  10013a448  ldr     x20, [x8, #0x40]
  10013a44c  mov     x1, x20
  10013a450  bl      _objc_msgSend                            ; [self->mutableClassMap_ objectForKey:arg1]
  10013a454  mov     x21, x0
  10013a458  adrp    x8, #0x10041d000
  10013a45c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10013a460  adrp    x8, #0x100417000
  10013a464  nop
  10013a468  ldr     x1, [x8, #0xe8]
  10013a46c  mov     x2, x19
  10013a470  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg2]
  10013a474  mov     x2, x0
  10013a478  mov     x0, x21
  10013a47c  mov     x1, x20
  10013a480  ldp     x22, x21, [sp], #0x10
  10013a484  ldp     x20, x19, [sp], #0x10
  10013a488  ldp     x29, x30, [sp], #0x10
  10013a48c  b       _objc_msgSend                            ; [[self->mutableClassMap_ objectForKey:arg1] objectForKey:[NSNumber numberWithInteger:arg2]]

; ======================================================================
; -[TAGPBExtensionRegistry addExtensions:]
; address 0x10013a490  size 368  kind objc
; ======================================================================
  10013a490  stp     x29, x30, [sp, #-0x10]!
  10013a494  mov     x29, sp
  10013a498  stp     x20, x19, [sp, #-0x10]!
  10013a49c  stp     x22, x21, [sp, #-0x10]!
  10013a4a0  stp     x24, x23, [sp, #-0x10]!
  10013a4a4  stp     x26, x25, [sp, #-0x10]!
  10013a4a8  stp     x28, x27, [sp, #-0x10]!
  10013a4ac  sub     sp, sp, #0xf0
  10013a4b0  mov     x19, x2
  10013a4b4  mov     x20, x0
  10013a4b8  adrp    x8, #0x1003b0000
  10013a4bc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013a4c0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013a4c4  stur    x8, [x29, #-0x58]
  10013a4c8  cbz     x19, loc_10013a5c4                       ; if (arg1 == 0)
  10013a4cc  adrp    x8, #0x100420000
  10013a4d0  ldrsw   x8, [x8, #0x9bc]                         ; ivar offset TAGPBExtensionRegistry.mutableClassMap_ (+0x8)
  10013a4d4  ldr     x21, [x19, x8]                           ; x21 = arg1->mutableClassMap_
  10013a4d8  stp     xzr, xzr, [x29, #-0x68]
  10013a4dc  stp     xzr, xzr, [x29, #-0x78]
  10013a4e0  stp     xzr, xzr, [x29, #-0x88]
  10013a4e4  stp     xzr, xzr, [x29, #-0x98]
  10013a4e8  adrp    x8, #0x100416000
  10013a4ec  nop
  10013a4f0  ldr     x1, [x8, #0xe00]
  10013a4f4  str     x1, [sp, #0x20]
  10013a4f8  sub     x2, x29, #0x98
  10013a4fc  add     x3, sp, #0x28
  10013a500  mov     x4, #0x10
  10013a504  mov     x0, x21
  10013a508  bl      _objc_msgSend                            ; [arg1->mutableClassMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10013a50c  mov     x24, x0
  10013a510  cbz     x24, loc_10013a5c4                       ; if ([arg1->mutableClassMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  10013a514  ldur    x8, [x29, #-0x88]
  10013a518  ldr     x26, [x8]
  10013a51c  adrp    x8, #0x10041c000
  10013a520  nop
  10013a524  ldr     x23, [x8, #0x920]
  10013a528  adrp    x8, #0x10041c000
  10013a52c  nop
  10013a530  ldr     x25, [x8, #0x218]
  10013a534  sub     x8, x29, #0x98
  10013a538  str     x8, [sp, #0x18]
  10013a53c  add     x8, sp, #0x28
  10013a540  str     x8, [sp, #0x10]
loc_10013a544:
  10013a544  mov     x27, #0
loc_10013a548:
  10013a548  ldur    x8, [x29, #-0x88]
  10013a54c  ldr     x8, [x8]
  10013a550  cmp     x8, x26
  10013a554  b.eq    loc_10013a560                            ; if (x8 == x26)
  10013a558  mov     x0, x21
  10013a55c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1->mutableClassMap_)
loc_10013a560:
  10013a560  ldur    x8, [x29, #-0x90]
  10013a564  ldr     x28, [x8, x27, lsl #3]
  10013a568  mov     x0, x20
  10013a56c  mov     x1, x23
  10013a570  mov     x2, x28
  10013a574  bl      _objc_msgSend                            ; [self extensionMapForContainingType:x2]
  10013a578  mov     x22, x0
  10013a57c  mov     x0, x19
  10013a580  mov     x1, x23
  10013a584  mov     x2, x28
  10013a588  bl      _objc_msgSend                            ; [arg1 extensionMapForContainingType:x2]
  10013a58c  mov     x2, x0
  10013a590  mov     x0, x22
  10013a594  mov     x1, x25
  10013a598  bl      _objc_msgSend                            ; [[self extensionMapForContainingType:x2] addEntriesFromDictionary:[arg1 extensionMapForContainingType:x2]]
  10013a59c  add     x27, x27, #1
  10013a5a0  cmp     x27, x24
  10013a5a4  b.lo    loc_10013a548                            ; if ((x27 + 1) <u [arg1->mutableClassMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  10013a5a8  mov     x4, #0x10
  10013a5ac  mov     x0, x21
  10013a5b0  ldp     x2, x1, [sp, #0x18]
  10013a5b4  ldr     x3, [sp, #0x10]
  10013a5b8  bl      _objc_msgSend                            ; [arg1->mutableClassMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10013a5bc  mov     x24, x0
  10013a5c0  cbnz    x24, loc_10013a544                       ; if ([arg1->mutableClassMap_ countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_10013a5c4:
  10013a5c4  adrp    x8, #0x1003b0000
  10013a5c8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10013a5cc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10013a5d0  ldur    x9, [x29, #-0x58]
  10013a5d4  sub     x8, x8, x9
  10013a5d8  cbnz    x8, loc_10013a5fc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10013a5dc  sub     sp, x29, #0x50
  10013a5e0  ldp     x28, x27, [sp], #0x10
  10013a5e4  ldp     x26, x25, [sp], #0x10
  10013a5e8  ldp     x24, x23, [sp], #0x10
  10013a5ec  ldp     x22, x21, [sp], #0x10
  10013a5f0  ldp     x20, x19, [sp], #0x10
  10013a5f4  ldp     x29, x30, [sp], #0x10
  10013a5f8  ret
loc_10013a5fc:
  10013a5fc  bl      ___stack_chk_fail                        ; stack_chk_fail()
