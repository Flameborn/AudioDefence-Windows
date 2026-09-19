// unit TAGTypes — 35 functions
//   0x10016f37c     408  +[TAGTypes initialize]
//   0x10016f514       8  +[TAGTypes defaultObject]
//   0x10016f51c      16  +[TAGTypes defaultInt64]
//   0x10016f52c      16  +[TAGTypes defaultDouble]
//   0x10016f53c      16  +[TAGTypes defaultNumber]
//   0x10016f54c      16  +[TAGTypes defaultString]
//   0x10016f55c      16  +[TAGTypes defaultBoolean]
//   0x10016f56c      16  +[TAGTypes defaultList]
//   0x10016f57c      16  +[TAGTypes defaultMap]
//   0x10016f58c      16  +[TAGTypes defaultValue]
//   0x10016f59c    1700  +[TAGTypes objectToString:]
//   0x10016fc40     428  +[TAGTypes objectToNumber:]
//   0x10016fdec     296  +[TAGTypes objectToInt64:]
//   0x10016ff14     292  +[TAGTypes objectToDouble:]
//   0x100170038     264  +[TAGTypes objectToBoolean:]
//   0x100170140     132  +[TAGTypes valueToString:]
//   0x1001701c4     132  +[TAGTypes valueToNumber:]
//   0x100170248     132  +[TAGTypes valueToInt64:]
//   0x1001702cc     132  +[TAGTypes valueToDouble:]
//   0x100170350     132  +[TAGTypes valueToBoolean:]
//   0x1001703d4    2600  +[TAGTypes objectToValue:]
//   0x100170dfc     184  +[TAGTypes functionIdToValue:]
//   0x100170eb4      52  +[TAGTypes macroReferenceToValue:]
//   0x100170ee8     420  +[TAGTypes macroReferenceToValue:escapings:]
//   0x10017108c     460  +[TAGTypes templateToValue:]
//   0x100171258     164  +[TAGTypes isDoubleableNumber:]
//   0x1001712fc     192  +[TAGTypes getDouble:]
//   0x1001713bc     164  +[TAGTypes isInt64ableNumber:]
//   0x100171460     184  +[TAGTypes getInt64:]
//   0x100171518     284  +[TAGTypes parseNumber:]
//   0x100171634     196  +[TAGTypes parseInt64:]
//   0x1001716f8     192  +[TAGTypes parseDouble:]
//   0x1001717b8     284  +[TAGTypes parseBoolean:]
//   0x1001718d4     428  +[TAGTypes numberWithString:]
//   0x100171a80    2460  +[TAGTypes valueToObject:]

; ======================================================================
; +[TAGTypes initialize]
; address 0x10016f37c  size 408  kind objc
; ======================================================================
  10016f37c  stp     x29, x30, [sp, #-0x10]!
  10016f380  mov     x29, sp
  10016f384  stp     x20, x19, [sp, #-0x10]!
  10016f388  stp     x22, x21, [sp, #-0x10]!
  10016f38c  mov     x19, x0
  10016f390  adrp    x21, #0x10041e000
  10016f394  ldr     x0, [x21, #0xb48]                        ; class TAGDistinctZero
  10016f398  adrp    x8, #0x10041d000
  10016f39c  nop
  10016f3a0  ldr     x20, [x8, #0xae8]
  10016f3a4  mov     x1, x20
  10016f3a8  bl      _objc_msgSend                            ; [TAGDistinctZero distinctZero]
  10016f3ac  mov     x29, x29
  10016f3b0  bl      _objc_retainAutoreleasedReturnValue
  10016f3b4  adrp    x22, #0x10042d000
  10016f3b8  add     x22, x22, #0xf60                         ; &g_10042df60
  10016f3bc  ldr     x8, [x22, #8]                            ; load g_10042df68
  10016f3c0  str     x0, [x22, #8]                            ; store g_10042df68 = [TAGDistinctZero distinctZero]
  10016f3c4  mov     x0, x8
  10016f3c8  bl      _objc_release
  10016f3cc  ldr     x0, [x21, #0xb48]                        ; class TAGDistinctZero
  10016f3d0  mov     x1, x20
  10016f3d4  bl      _objc_msgSend                            ; [TAGDistinctZero distinctZero]
  10016f3d8  mov     x29, x29
  10016f3dc  bl      _objc_retainAutoreleasedReturnValue
  10016f3e0  ldr     x8, [x22, #0x10]                         ; load g_10042df70
  10016f3e4  str     x0, [x22, #0x10]                         ; store g_10042df70 = [TAGDistinctZero distinctZero]
  10016f3e8  mov     x0, x8
  10016f3ec  bl      _objc_release
  10016f3f0  ldr     x0, [x21, #0xb48]                        ; class TAGDistinctZero
  10016f3f4  mov     x1, x20
  10016f3f8  bl      _objc_msgSend                            ; [TAGDistinctZero distinctZero]
  10016f3fc  mov     x29, x29
  10016f400  bl      _objc_retainAutoreleasedReturnValue
  10016f404  ldr     x8, [x22, #0x18]                         ; load g_10042df78
  10016f408  str     x0, [x22, #0x18]                         ; store g_10042df78 = [TAGDistinctZero distinctZero]
  10016f40c  mov     x0, x8
  10016f410  bl      _objc_release
  10016f414  adrp    x8, #0x10041d000
  10016f418  ldr     x0, [x8, #0xf78]                         ; class NSString
  10016f41c  adrp    x8, #0x100416000
  10016f420  nop
  10016f424  ldr     x20, [x8, #0xac8]
  10016f428  mov     x1, x20
  10016f42c  bl      _objc_msgSend                            ; [NSString alloc]
  10016f430  adrp    x8, #0x100416000
  10016f434  nop
  10016f438  ldr     x21, [x8, #0xab8]
  10016f43c  mov     x1, x21
  10016f440  bl      _objc_msgSend                            ; [[NSString alloc] init]
  10016f444  ldr     x8, [x22, #0x20]                         ; load g_10042df80
  10016f448  str     x0, [x22, #0x20]                         ; store g_10042df80 = [[NSString alloc] init]
  10016f44c  mov     x0, x8
  10016f450  bl      _objc_release
  10016f454  adrp    x8, #0x10041d000
  10016f458  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10016f45c  mov     x1, x20
  10016f460  bl      _objc_msgSend                            ; [NSArray alloc]
  10016f464  mov     x1, x21
  10016f468  bl      _objc_msgSend                            ; [[NSArray alloc] init]
  10016f46c  ldr     x8, [x22, #0x28]                         ; load g_10042df88
  10016f470  str     x0, [x22, #0x28]                         ; store g_10042df88 = [[NSArray alloc] init]
  10016f474  mov     x0, x8
  10016f478  bl      _objc_release
  10016f47c  adrp    x8, #0x10041d000
  10016f480  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10016f484  mov     x1, x20
  10016f488  bl      _objc_msgSend                            ; [NSDictionary alloc]
  10016f48c  mov     x1, x21
  10016f490  bl      _objc_msgSend                            ; [[NSDictionary alloc] init]
  10016f494  ldr     x8, [x22, #0x30]                         ; load g_10042df90
  10016f498  str     x0, [x22, #0x30]                         ; store g_10042df90 = [[NSDictionary alloc] init]
  10016f49c  mov     x0, x8
  10016f4a0  bl      _objc_release
  10016f4a4  ldr     x2, [x22, #0x20]                         ; load g_10042df80
  10016f4a8  adrp    x8, #0x10041d000
  10016f4ac  nop
  10016f4b0  ldr     x1, [x8, #0xc30]
  10016f4b4  mov     x0, x19
  10016f4b8  bl      _objc_msgSend                            ; [TAGTypes objectToValue:g_10042df80]
  10016f4bc  mov     x29, x29
  10016f4c0  bl      _objc_retainAutoreleasedReturnValue
  10016f4c4  ldr     x8, [x22, #0x38]                         ; load g_10042df98
  10016f4c8  str     x0, [x22, #0x38]                         ; store g_10042df98 = [TAGTypes objectToValue:g_10042df80]
  10016f4cc  mov     x0, x8
  10016f4d0  bl      _objc_release
  10016f4d4  adrp    x8, #0x10041e000
  10016f4d8  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  10016f4dc  adrp    x8, #0x10041d000
  10016f4e0  nop
  10016f4e4  ldr     x1, [x8, #0xab8]
  10016f4e8  mov     w2, #0
  10016f4ec  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:0]
  10016f4f0  mov     x29, x29
  10016f4f4  bl      _objc_retainAutoreleasedReturnValue
  10016f4f8  ldr     x8, [x22, #0x40]                         ; load g_10042dfa0
  10016f4fc  str     x0, [x22, #0x40]                         ; store g_10042dfa0 = [TAGBoolean booleanWithBool:0]
  10016f500  mov     x0, x8
  10016f504  ldp     x22, x21, [sp], #0x10
  10016f508  ldp     x20, x19, [sp], #0x10
  10016f50c  ldp     x29, x30, [sp], #0x10
  10016f510  b       _objc_release

; ======================================================================
; +[TAGTypes defaultObject]
; address 0x10016f514  size 8  kind objc
; ======================================================================
  10016f514  mov     x0, #0
  10016f518  ret

; ======================================================================
; +[TAGTypes defaultInt64]
; address 0x10016f51c  size 16  kind objc
; ======================================================================
  10016f51c  adrp    x8, #0x10042d000
  10016f520  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f524  ldr     x0, [x8, #8]                             ; load g_10042df68
  10016f528  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultDouble]
; address 0x10016f52c  size 16  kind objc
; ======================================================================
  10016f52c  adrp    x8, #0x10042d000
  10016f530  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f534  ldr     x0, [x8, #0x10]                          ; load g_10042df70
  10016f538  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultNumber]
; address 0x10016f53c  size 16  kind objc
; ======================================================================
  10016f53c  adrp    x8, #0x10042d000
  10016f540  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f544  ldr     x0, [x8, #0x18]                          ; load g_10042df78
  10016f548  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultString]
; address 0x10016f54c  size 16  kind objc
; ======================================================================
  10016f54c  adrp    x8, #0x10042d000
  10016f550  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f554  ldr     x0, [x8, #0x20]                          ; load g_10042df80
  10016f558  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultBoolean]
; address 0x10016f55c  size 16  kind objc
; ======================================================================
  10016f55c  adrp    x8, #0x10042d000
  10016f560  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f564  ldr     x0, [x8, #0x40]                          ; load g_10042dfa0
  10016f568  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultList]
; address 0x10016f56c  size 16  kind objc
; ======================================================================
  10016f56c  adrp    x8, #0x10042d000
  10016f570  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f574  ldr     x0, [x8, #0x28]                          ; load g_10042df88
  10016f578  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultMap]
; address 0x10016f57c  size 16  kind objc
; ======================================================================
  10016f57c  adrp    x8, #0x10042d000
  10016f580  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f584  ldr     x0, [x8, #0x30]                          ; load g_10042df90
  10016f588  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes defaultValue]
; address 0x10016f58c  size 16  kind objc
; ======================================================================
  10016f58c  adrp    x8, #0x10042d000
  10016f590  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f594  ldr     x0, [x8, #0x38]                          ; load g_10042df98
  10016f598  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; +[TAGTypes objectToString:]
; address 0x10016f59c  size 1700  kind objc
; ======================================================================
  10016f59c  stp     x29, x30, [sp, #-0x10]!
  10016f5a0  mov     x29, sp
  10016f5a4  stp     x20, x19, [sp, #-0x10]!
  10016f5a8  stp     x22, x21, [sp, #-0x10]!
  10016f5ac  stp     x24, x23, [sp, #-0x10]!
  10016f5b0  stp     x26, x25, [sp, #-0x10]!
  10016f5b4  stp     x28, x27, [sp, #-0x10]!
  10016f5b8  sub     sp, sp, #0x1f0
  10016f5bc  mov     x20, x0
  10016f5c0  adrp    x23, #0x1003b0000
  10016f5c4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10016f5c8  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10016f5cc  stur    x8, [x29, #-0x58]
  10016f5d0  mov     x0, x2
  10016f5d4  bl      _objc_retain
  10016f5d8  mov     x22, x0
  10016f5dc  cbz     x22, loc_10016f7e4                       ; if (arg1 == 0)
  10016f5e0  adrp    x8, #0x10041d000
  10016f5e4  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10016f5e8  adrp    x8, #0x100417000
  10016f5ec  nop
  10016f5f0  ldr     x19, [x8, #0x2e0]
  10016f5f4  mov     x1, x19
  10016f5f8  bl      _objc_msgSend                            ; [NSArray class]
  10016f5fc  mov     x2, x0
  10016f600  adrp    x8, #0x100417000
  10016f604  nop
  10016f608  ldr     x21, [x8, #0x3b8]
  10016f60c  mov     x0, x22
  10016f610  mov     x1, x21
  10016f614  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSArray class]]
  10016f618  cbz     w0, loc_10016f7f8                        ; if ([arg1 isKindOfClass:[NSArray class]] == 0)
  10016f61c  mov     x0, x22
  10016f620  bl      _objc_retain
  10016f624  mov     x21, x0
  10016f628  adrp    x8, #0x10041d000
  10016f62c  ldr     x19, [x8, #0xf28]                        ; class NSMutableArray
  10016f630  adrp    x8, #0x100416000
  10016f634  nop
  10016f638  ldr     x1, [x8, #0xe30]
  10016f63c  bl      _objc_msgSend                            ; [arg1 count]
  10016f640  mov     x2, x0
  10016f644  adrp    x8, #0x10041b000
  10016f648  nop
  10016f64c  ldr     x1, [x8, #0x280]
  10016f650  mov     x0, x19
  10016f654  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[arg1 count]]
  10016f658  str     x22, [sp, #0x20]
  10016f65c  mov     x29, x29
  10016f660  bl      _objc_retainAutoreleasedReturnValue
  10016f664  mov     x22, x0
  10016f668  stp     xzr, xzr, [x29, #-0x68]
  10016f66c  stp     xzr, xzr, [x29, #-0x78]
  10016f670  stp     xzr, xzr, [x29, #-0x88]
  10016f674  stp     xzr, xzr, [x29, #-0x98]
  10016f678  mov     x0, x21
  10016f67c  str     x21, [sp, #0x50]
  10016f680  bl      _objc_retain
  10016f684  mov     x23, x0
  10016f688  adrp    x8, #0x100416000
  10016f68c  nop
  10016f690  ldr     x1, [x8, #0xe00]
  10016f694  str     x1, [sp, #0x60]
  10016f698  sub     x2, x29, #0x98
  10016f69c  add     x3, sp, #0x128
  10016f6a0  mov     x4, #0x10
  10016f6a4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16]
  10016f6a8  mov     x24, x0
  10016f6ac  cbz     x24, loc_10016f758                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16] == 0)
  10016f6b0  ldur    x8, [x29, #-0x88]
  10016f6b4  ldr     x19, [x8]
  10016f6b8  adrp    x8, #0x10041d000
  10016f6bc  nop
  10016f6c0  ldr     x25, [x8, #0xaf0]
  10016f6c4  adrp    x8, #0x100416000
  10016f6c8  nop
  10016f6cc  ldr     x26, [x8, #0xd90]
  10016f6d0  sub     x8, x29, #0x98
  10016f6d4  str     x8, [sp, #0x58]
  10016f6d8  add     x28, sp, #0x128
loc_10016f6dc:
  10016f6dc  mov     x27, #0
loc_10016f6e0:
  10016f6e0  ldur    x8, [x29, #-0x88]
  10016f6e4  ldr     x8, [x8]
  10016f6e8  cmp     x8, x19
  10016f6ec  b.eq    loc_10016f6f8                            ; if (x8 == x19)
  10016f6f0  mov     x0, x23
  10016f6f4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10016f6f8:
  10016f6f8  ldur    x8, [x29, #-0x90]
  10016f6fc  ldr     x2, [x8, x27, lsl #3]
  10016f700  mov     x0, x20
  10016f704  mov     x1, x25
  10016f708  bl      _objc_msgSend                            ; [TAGTypes objectToString:x2]
  10016f70c  mov     x29, x29
  10016f710  bl      _objc_retainAutoreleasedReturnValue
  10016f714  mov     x21, x0
  10016f718  mov     x0, x22
  10016f71c  mov     x1, x26
  10016f720  mov     x2, x21
  10016f724  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[arg1 count]] addObject:[TAGTypes objectToString:x2]]
  10016f728  mov     x0, x21
  10016f72c  bl      _objc_release
  10016f730  add     x27, x27, #1
  10016f734  cmp     x27, x24
  10016f738  b.lo    loc_10016f6e0                            ; if ((x27 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16])
  10016f73c  mov     x4, #0x10
  10016f740  mov     x0, x23
  10016f744  ldp     x2, x1, [sp, #0x58]
  10016f748  mov     x3, x28
  10016f74c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16]
  10016f750  mov     x24, x0
  10016f754  cbnz    x24, loc_10016f6dc                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x128] count:16] != 0)
loc_10016f758:
  10016f758  mov     x0, x23
  10016f75c  bl      _objc_release
  10016f760  adrp    x8, #0x10041d000
  10016f764  ldr     x19, [x8, #0xf78]                        ; class NSString
  10016f768  adrp    x8, #0x10041c000
  10016f76c  nop
  10016f770  ldr     x1, [x8, #0x1e8]
  10016f774  adrp    x2, #0x1003c6000
  10016f778  add     x2, x2, #0xbb0                           ; @", "
  10016f77c  mov     x0, x22
  10016f780  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[arg1 count]] componentsJoinedByString:@", "]
  10016f784  mov     x29, x29
  10016f788  bl      _objc_retainAutoreleasedReturnValue
  10016f78c  mov     x20, x0
  10016f790  adrp    x8, #0x100416000
  10016f794  nop
  10016f798  ldr     x1, [x8, #0xee8]
  10016f79c  str     x20, [sp]
  10016f7a0  adrp    x2, #0x1003c8000
  10016f7a4  add     x2, x2, #0xe30                           ; @"[%@]"
  10016f7a8  mov     x0, x19
  10016f7ac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"[%@]", [[NSMutableArray arrayWithCapacity:[arg1 count]] componentsJoinedByString:@", "]]
  10016f7b0  mov     x29, x29
  10016f7b4  bl      _objc_retainAutoreleasedReturnValue
  10016f7b8  mov     x19, x0
  10016f7bc  mov     x0, x20
  10016f7c0  bl      _objc_release
  10016f7c4  mov     x0, x22
  10016f7c8  bl      _objc_release
  10016f7cc  mov     x0, x23
  10016f7d0  bl      _objc_release
  10016f7d4  ldr     x22, [sp, #0x20]
  10016f7d8  adrp    x23, #0x1003b0000
  10016f7dc  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10016f7e0  b       loc_10016faf8
loc_10016f7e4:
  10016f7e4  adrp    x8, #0x10042d000
  10016f7e8  add     x8, x8, #0xf60                           ; &g_10042df60
  10016f7ec  ldr     x0, [x8, #0x20]                          ; load g_10042df80
  10016f7f0  bl      _objc_retain
  10016f7f4  b       loc_10016faf4
loc_10016f7f8:
  10016f7f8  adrp    x8, #0x10041d000
  10016f7fc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10016f800  mov     x1, x19
  10016f804  bl      _objc_msgSend                            ; [NSDictionary class]
  10016f808  mov     x2, x0
  10016f80c  mov     x0, x22
  10016f810  mov     x1, x21
  10016f814  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSDictionary class]]
  10016f818  cbz     w0, loc_10016fa98                        ; if ([arg1 isKindOfClass:[NSDictionary class]] == 0)
  10016f81c  mov     x0, x22
  10016f820  bl      _objc_retain
  10016f824  str     x0, [sp, #0x60]
  10016f828  adrp    x8, #0x10041d000
  10016f82c  ldr     x19, [x8, #0xf28]                        ; class NSMutableArray
  10016f830  adrp    x8, #0x100416000
  10016f834  nop
  10016f838  ldr     x1, [x8, #0xe30]
  10016f83c  bl      _objc_msgSend                            ; [arg1 count]
  10016f840  mov     x2, x0
  10016f844  adrp    x8, #0x10041b000
  10016f848  nop
  10016f84c  ldr     x1, [x8, #0x280]
  10016f850  mov     x0, x19
  10016f854  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[arg1 count]]
  10016f858  mov     x29, x29
  10016f85c  bl      _objc_retainAutoreleasedReturnValue
  10016f860  str     x0, [sp, #0x58]
  10016f864  stp     xzr, xzr, [sp, #0x118]
  10016f868  stp     xzr, xzr, [sp, #0x108]
  10016f86c  stp     xzr, xzr, [sp, #0xf8]
  10016f870  stp     xzr, xzr, [sp, #0xe8]
  10016f874  adrp    x8, #0x100417000
  10016f878  nop
  10016f87c  ldr     x1, [x8, #0xa18]
  10016f880  ldr     x0, [sp, #0x60]
  10016f884  bl      _objc_msgSend                            ; [arg1 keyEnumerator]
  10016f888  str     x22, [sp, #0x20]
  10016f88c  mov     x29, x29
  10016f890  bl      _objc_retainAutoreleasedReturnValue
  10016f894  str     x0, [sp, #0x40]
  10016f898  adrp    x8, #0x100416000
  10016f89c  nop
  10016f8a0  ldr     x1, [x8, #0xe00]
  10016f8a4  str     x1, [sp, #0x38]
  10016f8a8  add     x2, sp, #0xe8
  10016f8ac  add     x3, sp, #0x68
  10016f8b0  mov     x4, #0x10
  10016f8b4  bl      _objc_msgSend                            ; [[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16]
  10016f8b8  mov     x25, x0
  10016f8bc  cbz     x25, loc_10016fa0c                       ; if ([[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16] == 0)
  10016f8c0  ldr     x8, [sp, #0xf8]
  10016f8c4  ldr     x8, [x8]
  10016f8c8  str     x8, [sp, #0x50]
  10016f8cc  adrp    x8, #0x10041d000
  10016f8d0  nop
  10016f8d4  ldr     x26, [x8, #0xaf0]
  10016f8d8  adrp    x8, #0x100417000
  10016f8dc  nop
  10016f8e0  ldr     x8, [x8, #0x40]
  10016f8e4  str     x8, [sp, #0x48]
  10016f8e8  adrp    x8, #0x100416000
  10016f8ec  nop
  10016f8f0  ldr     x28, [x8, #0xee8]
  10016f8f4  adrp    x8, #0x100416000
  10016f8f8  nop
  10016f8fc  ldr     x19, [x8, #0xd90]
  10016f900  add     x8, sp, #0xe8
  10016f904  str     x8, [sp, #0x30]
  10016f908  add     x8, sp, #0x68
  10016f90c  str     x8, [sp, #0x28]
loc_10016f910:
  10016f910  mov     x27, #0
loc_10016f914:
  10016f914  ldr     x8, [sp, #0xf8]
  10016f918  ldr     x8, [x8]
  10016f91c  ldr     x9, [sp, #0x50]
  10016f920  cmp     x8, x9
  10016f924  b.eq    loc_10016f930                            ; if (x8 == x9)
  10016f928  ldr     x0, [sp, #0x40]
  10016f92c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 keyEnumerator])
loc_10016f930:
  10016f930  ldr     x8, [sp, #0xf0]
  10016f934  ldr     x21, [x8, x27, lsl #3]
  10016f938  adrp    x8, #0x10041d000
  10016f93c  ldr     x22, [x8, #0xf78]                        ; class NSString
  10016f940  mov     x0, x20
  10016f944  mov     x1, x26
  10016f948  mov     x2, x21
  10016f94c  bl      _objc_msgSend                            ; [TAGTypes objectToString:x2]
  10016f950  mov     x29, x29
  10016f954  bl      _objc_retainAutoreleasedReturnValue
  10016f958  mov     x23, x0
  10016f95c  ldr     x0, [sp, #0x60]
  10016f960  ldr     x1, [sp, #0x48]
  10016f964  mov     x2, x21
  10016f968  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10016f96c  mov     x29, x29
  10016f970  bl      _objc_retainAutoreleasedReturnValue
  10016f974  mov     x21, x0
  10016f978  mov     x0, x20
  10016f97c  mov     x1, x26
  10016f980  mov     x2, x21
  10016f984  bl      _objc_msgSend                            ; [TAGTypes objectToString:[arg1 objectForKey:x2]]
  10016f988  mov     x29, x29
  10016f98c  bl      _objc_retainAutoreleasedReturnValue
  10016f990  mov     x24, x0
  10016f994  stp     x23, x24, [sp]
  10016f998  mov     x0, x22
  10016f99c  mov     x1, x28
  10016f9a0  adrp    x2, #0x1003c5000
  10016f9a4  add     x2, x2, #0xd0                            ; @"%@=%@"
  10016f9a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@=%@", [TAGTypes objectToString:x2], [TAGTypes objectToString:[arg1 objectForKey:x2]]]
  10016f9ac  mov     x29, x29
  10016f9b0  bl      _objc_retainAutoreleasedReturnValue
  10016f9b4  mov     x22, x0
  10016f9b8  ldr     x0, [sp, #0x58]
  10016f9bc  mov     x1, x19
  10016f9c0  mov     x2, x22
  10016f9c4  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[arg1 count]] addObject:[NSString stringWithFormat:@"%@=%@", [TAGTypes objectToString:x2], [TAGTypes objectToString:[arg1 objectForKey:x2]]]]
  10016f9c8  mov     x0, x22
  10016f9cc  bl      _objc_release
  10016f9d0  mov     x0, x24
  10016f9d4  bl      _objc_release
  10016f9d8  mov     x0, x21
  10016f9dc  bl      _objc_release
  10016f9e0  mov     x0, x23
  10016f9e4  bl      _objc_release
  10016f9e8  add     x27, x27, #1
  10016f9ec  cmp     x27, x25
  10016f9f0  b.lo    loc_10016f914                            ; if ((x27 + 1) <u [[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16])
  10016f9f4  mov     x4, #0x10
  10016f9f8  ldp     x1, x0, [sp, #0x38]
  10016f9fc  ldp     x3, x2, [sp, #0x28]
  10016fa00  bl      _objc_msgSend                            ; [[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16]
  10016fa04  mov     x25, x0
  10016fa08  cbnz    x25, loc_10016f910                       ; if ([[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xe8] objects:&sp[0x68] count:16] != 0)
loc_10016fa0c:
  10016fa0c  ldr     x0, [sp, #0x40]
  10016fa10  bl      _objc_release
  10016fa14  adrp    x8, #0x10041d000
  10016fa18  ldr     x19, [x8, #0xf78]                        ; class NSString
  10016fa1c  adrp    x8, #0x10041c000
  10016fa20  nop
  10016fa24  ldr     x1, [x8, #0x1e8]
  10016fa28  adrp    x2, #0x1003c6000
  10016fa2c  add     x2, x2, #0xbb0                           ; @", "
  10016fa30  ldr     x0, [sp, #0x58]
  10016fa34  ldr     x22, [sp, #0x20]
  10016fa38  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[arg1 count]] componentsJoinedByString:@", "]
  10016fa3c  mov     x29, x29
  10016fa40  bl      _objc_retainAutoreleasedReturnValue
  10016fa44  mov     x20, x0
  10016fa48  adrp    x8, #0x100416000
  10016fa4c  nop
  10016fa50  ldr     x1, [x8, #0xee8]
  10016fa54  str     x20, [sp]
  10016fa58  adrp    x2, #0x1003c8000
  10016fa5c  add     x2, x2, #0xe50                           ; @"{%@}"
  10016fa60  mov     x0, x19
  10016fa64  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"{%@}", [[NSMutableArray arrayWithCapacity:[arg1 count]] componentsJoinedByString:@", "]]
  10016fa68  adrp    x23, #0x1003b0000
  10016fa6c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  10016fa70  mov     x29, x29
  10016fa74  bl      _objc_retainAutoreleasedReturnValue
  10016fa78  mov     x19, x0
  10016fa7c  mov     x0, x20
  10016fa80  bl      _objc_release
  10016fa84  ldr     x0, [sp, #0x58]
  10016fa88  bl      _objc_release
  10016fa8c  ldr     x0, [sp, #0x60]
  10016fa90  bl      _objc_release
  10016fa94  b       loc_10016faf8
loc_10016fa98:
  10016fa98  adrp    x8, #0x10041d000
  10016fa9c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10016faa0  mov     x1, x19
  10016faa4  bl      _objc_msgSend                            ; [NSNumber class]
  10016faa8  mov     x2, x0
  10016faac  mov     x0, x22
  10016fab0  mov     x1, x21
  10016fab4  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  10016fab8  cbz     w0, loc_10016fad8                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  10016fabc  adrp    x8, #0x10041a000
  10016fac0  nop
  10016fac4  ldr     x1, [x8, #0xd20]
  10016fac8  mov     x0, x22
  10016facc  bl      _objc_msgSend                            ; [arg1 stringValue]
  10016fad0  mov     x29, x29
  10016fad4  b       loc_10016faf0
loc_10016fad8:
  10016fad8  adrp    x8, #0x100418000
  10016fadc  nop
  10016fae0  ldr     x1, [x8, #0x648]
  10016fae4  mov     x0, x22
  10016fae8  bl      _objc_msgSend                            ; [arg1 description]
  10016faec  mov     x29, x29
loc_10016faf0:
  10016faf0  bl      _objc_retainAutoreleasedReturnValue
loc_10016faf4:
  10016faf4  mov     x19, x0
loc_10016faf8:
  10016faf8  mov     x0, x22
  10016fafc  bl      _objc_release
  10016fb00  ldr     x8, [x23]                                ; x8 = ___stack_chk_guard[+0x0]
  10016fb04  ldur    x9, [x29, #-0x58]
  10016fb08  sub     x8, x8, x9
  10016fb0c  cbnz    x8, loc_10016fb34                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10016fb10  mov     x0, x19
  10016fb14  sub     sp, x29, #0x50
  10016fb18  ldp     x28, x27, [sp], #0x10
  10016fb1c  ldp     x26, x25, [sp], #0x10
  10016fb20  ldp     x24, x23, [sp], #0x10
  10016fb24  ldp     x22, x21, [sp], #0x10
  10016fb28  ldp     x20, x19, [sp], #0x10
  10016fb2c  ldp     x29, x30, [sp], #0x10
  10016fb30  b       _objc_autoreleaseReturnValue
loc_10016fb34:
  10016fb34  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10016fb38  b       loc_10016fba4
  10016fb3c  mov     x19, x0
  10016fb40  mov     x0, x21
  10016fb44  bl      _objc_release
  10016fb48  b       loc_10016fba8
  10016fb4c  b       loc_10016fbf4
  10016fb50  mov     x19, x0
  10016fb54  b       loc_10016fb84
  10016fb58  mov     x19, x0
  10016fb5c  b       loc_10016fb7c
  10016fb60  mov     x19, x0
  10016fb64  b       loc_10016fb74
  10016fb68  mov     x19, x0
  10016fb6c  mov     x0, x22
  10016fb70  bl      _objc_release
loc_10016fb74:
  10016fb74  mov     x0, x24
  10016fb78  bl      _objc_release
loc_10016fb7c:
  10016fb7c  mov     x0, x21
  10016fb80  bl      _objc_release
loc_10016fb84:
  10016fb84  ldr     x22, [sp, #0x20]
  10016fb88  mov     x0, x23
  10016fb8c  bl      _objc_release
  10016fb90  b       loc_10016fbfc
  10016fb94  str     x22, [sp, #0x20]
  10016fb98  mov     x19, x0
  10016fb9c  b       loc_10016fbbc
  10016fba0  b       loc_10016fba4
loc_10016fba4:
  10016fba4  mov     x19, x0
loc_10016fba8:
  10016fba8  ldr     x21, [sp, #0x50]
  10016fbac  mov     x0, x23
  10016fbb0  bl      _objc_release
loc_10016fbb4:
  10016fbb4  mov     x0, x22
  10016fbb8  bl      _objc_release
loc_10016fbbc:
  10016fbbc  mov     x0, x21
  10016fbc0  bl      _objc_release
  10016fbc4  ldr     x22, [sp, #0x20]
  10016fbc8  b       loc_10016fc14
  10016fbcc  mov     x19, x0
  10016fbd0  b       loc_10016fbe0
  10016fbd4  mov     x19, x0
  10016fbd8  mov     x0, x20
  10016fbdc  bl      _objc_release
loc_10016fbe0:
  10016fbe0  ldr     x21, [sp, #0x50]
  10016fbe4  b       loc_10016fbb4
  10016fbe8  mov     x19, x0
  10016fbec  b       loc_10016fc0c
  10016fbf0  b       loc_10016fbf4
loc_10016fbf4:
  10016fbf4  mov     x19, x0
  10016fbf8  ldr     x22, [sp, #0x20]
loc_10016fbfc:
  10016fbfc  ldr     x0, [sp, #0x40]
loc_10016fc00:
  10016fc00  bl      _objc_release
loc_10016fc04:
  10016fc04  ldr     x0, [sp, #0x58]
  10016fc08  bl      _objc_release
loc_10016fc0c:
  10016fc0c  ldr     x0, [sp, #0x60]
  10016fc10  bl      _objc_release
loc_10016fc14:
  10016fc14  mov     x0, x22
  10016fc18  bl      _objc_release
  10016fc1c  mov     x0, x19
  10016fc20  bl      __Unwind_Resume                          ; Unwind_Resume()
  10016fc24  mov     x19, x0
  10016fc28  b       loc_10016fc04
  10016fc2c  mov     x19, x0
  10016fc30  mov     x0, x20
  10016fc34  b       loc_10016fc00
  10016fc38  mov     x19, x0
  10016fc3c  b       loc_10016fc14

; ======================================================================
; +[TAGTypes objectToNumber:]
; address 0x10016fc40  size 428  kind objc
; ======================================================================
  10016fc40  stp     x29, x30, [sp, #-0x10]!
  10016fc44  mov     x29, sp
  10016fc48  stp     x20, x19, [sp, #-0x10]!
  10016fc4c  stp     x22, x21, [sp, #-0x10]!
  10016fc50  mov     x20, x0
  10016fc54  mov     x0, x2
  10016fc58  bl      _objc_retain
  10016fc5c  mov     x19, x0
  10016fc60  adrp    x21, #0x10041d000
  10016fc64  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  10016fc68  adrp    x8, #0x100417000
  10016fc6c  nop
  10016fc70  ldr     x1, [x8, #0x2e0]
  10016fc74  bl      _objc_msgSend                            ; [NSNumber class]
  10016fc78  mov     x2, x0
  10016fc7c  adrp    x8, #0x100417000
  10016fc80  nop
  10016fc84  ldr     x1, [x8, #0x3b8]
  10016fc88  mov     x0, x19
  10016fc8c  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  10016fc90  cbz     w0, loc_10016fca4                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  10016fc94  mov     x0, x19
  10016fc98  bl      _objc_retain
  10016fc9c  mov     x20, x0
  10016fca0  b       loc_10016fdac
loc_10016fca4:
  10016fca4  adrp    x8, #0x10041d000
  10016fca8  nop
  10016fcac  ldr     x1, [x8, #0xaf8]
  10016fcb0  mov     x0, x20
  10016fcb4  mov     x2, x19
  10016fcb8  bl      _objc_msgSend                            ; [TAGTypes isInt64ableNumber:arg1]
  10016fcbc  cbz     w0, loc_10016fcfc                        ; if ([TAGTypes isInt64ableNumber:arg1] == 0)
  10016fcc0  ldr     x21, [x21, #0xf68]                       ; class NSNumber
  10016fcc4  adrp    x8, #0x10041d000
  10016fcc8  nop
  10016fccc  ldr     x1, [x8, #0xb00]
  10016fcd0  mov     x0, x20
  10016fcd4  mov     x2, x19
  10016fcd8  bl      _objc_msgSend                            ; [TAGTypes getInt64:arg1]
  10016fcdc  mov     x2, x0
  10016fce0  adrp    x8, #0x10041c000
  10016fce4  nop
  10016fce8  ldr     x1, [x8, #0x800]
  10016fcec  mov     x0, x21
  10016fcf0  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:[TAGTypes getInt64:arg1]]
  10016fcf4  mov     x29, x29
  10016fcf8  b       loc_10016fd4c
loc_10016fcfc:
  10016fcfc  adrp    x8, #0x10041d000
  10016fd00  nop
  10016fd04  ldr     x1, [x8, #0xb08]
  10016fd08  mov     x0, x20
  10016fd0c  mov     x2, x19
  10016fd10  bl      _objc_msgSend                            ; [TAGTypes isDoubleableNumber:arg1]
  10016fd14  cbz     w0, loc_10016fd58                        ; if ([TAGTypes isDoubleableNumber:arg1] == 0)
  10016fd18  ldr     x21, [x21, #0xf68]                       ; class NSNumber
  10016fd1c  adrp    x8, #0x10041d000
  10016fd20  nop
  10016fd24  ldr     x1, [x8, #0xb10]
  10016fd28  mov     x0, x20
  10016fd2c  mov     x2, x19
  10016fd30  bl      _objc_msgSend                            ; [TAGTypes getDouble:arg1]
  10016fd34  adrp    x8, #0x100419000
  10016fd38  nop
  10016fd3c  ldr     x1, [x8, #0x60]
  10016fd40  mov     x0, x21
  10016fd44  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:[TAGTypes getDouble:arg1]]
  10016fd48  mov     x29, x29
loc_10016fd4c:
  10016fd4c  bl      _objc_retainAutoreleasedReturnValue
  10016fd50  mov     x20, x0
  10016fd54  b       loc_10016fdac
loc_10016fd58:
  10016fd58  adrp    x8, #0x10041e000
  10016fd5c  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10016fd60  adrp    x8, #0x10041d000
  10016fd64  nop
  10016fd68  ldr     x1, [x8, #0xaf0]
  10016fd6c  mov     x2, x19
  10016fd70  bl      _objc_msgSend                            ; [TAGTypes objectToString:arg1]
  10016fd74  mov     x29, x29
  10016fd78  bl      _objc_retainAutoreleasedReturnValue
  10016fd7c  mov     x21, x0
  10016fd80  adrp    x8, #0x10041d000
  10016fd84  nop
  10016fd88  ldr     x1, [x8, #0xb18]
  10016fd8c  mov     x0, x20
  10016fd90  mov     x2, x21
  10016fd94  bl      _objc_msgSend                            ; [TAGTypes parseNumber:[TAGTypes objectToString:arg1]]
  10016fd98  mov     x29, x29
  10016fd9c  bl      _objc_retainAutoreleasedReturnValue
  10016fda0  mov     x20, x0
  10016fda4  mov     x0, x21
  10016fda8  bl      _objc_release
loc_10016fdac:
  10016fdac  mov     x0, x19
  10016fdb0  bl      _objc_release
  10016fdb4  mov     x0, x20
  10016fdb8  ldp     x22, x21, [sp], #0x10
  10016fdbc  ldp     x20, x19, [sp], #0x10
  10016fdc0  ldp     x29, x30, [sp], #0x10
  10016fdc4  b       _objc_autoreleaseReturnValue
  10016fdc8  mov     x20, x0
  10016fdcc  b       loc_10016fddc
  10016fdd0  mov     x20, x0
  10016fdd4  mov     x0, x21
  10016fdd8  bl      _objc_release
loc_10016fddc:
  10016fddc  mov     x0, x19
  10016fde0  bl      _objc_release
  10016fde4  mov     x0, x20
  10016fde8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes objectToInt64:]
; address 0x10016fdec  size 296  kind objc
; ======================================================================
  10016fdec  stp     x29, x30, [sp, #-0x10]!
  10016fdf0  mov     x29, sp
  10016fdf4  stp     x20, x19, [sp, #-0x10]!
  10016fdf8  stp     x22, x21, [sp, #-0x10]!
  10016fdfc  mov     x20, x0
  10016fe00  mov     x0, x2
  10016fe04  bl      _objc_retain
  10016fe08  mov     x19, x0
  10016fe0c  adrp    x8, #0x10041d000
  10016fe10  nop
  10016fe14  ldr     x1, [x8, #0xaf8]
  10016fe18  mov     x0, x20
  10016fe1c  mov     x2, x19
  10016fe20  bl      _objc_msgSend                            ; [TAGTypes isInt64ableNumber:arg1]
  10016fe24  cbz     w0, loc_10016fe70                        ; if ([TAGTypes isInt64ableNumber:arg1] == 0)
  10016fe28  adrp    x8, #0x10041d000
  10016fe2c  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  10016fe30  nop
  10016fe34  nop
  10016fe38  ldr     x1, [x8, #0xb00]
  10016fe3c  mov     x0, x20
  10016fe40  mov     x2, x19
  10016fe44  bl      _objc_msgSend                            ; [TAGTypes getInt64:arg1]
  10016fe48  mov     x2, x0
  10016fe4c  adrp    x8, #0x10041c000
  10016fe50  nop
  10016fe54  ldr     x1, [x8, #0x800]
  10016fe58  mov     x0, x21
  10016fe5c  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:[TAGTypes getInt64:arg1]]
  10016fe60  mov     x29, x29
  10016fe64  bl      _objc_retainAutoreleasedReturnValue
  10016fe68  mov     x20, x0
  10016fe6c  b       loc_10016fec4
loc_10016fe70:
  10016fe70  adrp    x8, #0x10041e000
  10016fe74  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10016fe78  adrp    x8, #0x10041d000
  10016fe7c  nop
  10016fe80  ldr     x1, [x8, #0xaf0]
  10016fe84  mov     x2, x19
  10016fe88  bl      _objc_msgSend                            ; [TAGTypes objectToString:arg1]
  10016fe8c  mov     x29, x29
  10016fe90  bl      _objc_retainAutoreleasedReturnValue
  10016fe94  mov     x21, x0
  10016fe98  adrp    x8, #0x10041d000
  10016fe9c  nop
  10016fea0  ldr     x1, [x8, #0xb20]
  10016fea4  mov     x0, x20
  10016fea8  mov     x2, x21
  10016feac  bl      _objc_msgSend                            ; [TAGTypes parseInt64:[TAGTypes objectToString:arg1]]
  10016feb0  mov     x29, x29
  10016feb4  bl      _objc_retainAutoreleasedReturnValue
  10016feb8  mov     x20, x0
  10016febc  mov     x0, x21
  10016fec0  bl      _objc_release
loc_10016fec4:
  10016fec4  mov     x0, x19
  10016fec8  bl      _objc_release
  10016fecc  mov     x0, x20
  10016fed0  bl      _objc_autorelease
  10016fed4  mov     x0, x20
  10016fed8  ldp     x22, x21, [sp], #0x10
  10016fedc  ldp     x20, x19, [sp], #0x10
  10016fee0  ldp     x29, x30, [sp], #0x10
  10016fee4  ret
  10016fee8  mov     x20, x0
  10016feec  b       loc_10016ff04
  10016fef0  mov     x20, x0
  10016fef4  b       loc_10016ff04
  10016fef8  mov     x20, x0
  10016fefc  mov     x0, x21
  10016ff00  bl      _objc_release
loc_10016ff04:
  10016ff04  mov     x0, x19
  10016ff08  bl      _objc_release
  10016ff0c  mov     x0, x20
  10016ff10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes objectToDouble:]
; address 0x10016ff14  size 292  kind objc
; ======================================================================
  10016ff14  stp     x29, x30, [sp, #-0x10]!
  10016ff18  mov     x29, sp
  10016ff1c  stp     x20, x19, [sp, #-0x10]!
  10016ff20  stp     x22, x21, [sp, #-0x10]!
  10016ff24  mov     x20, x0
  10016ff28  mov     x0, x2
  10016ff2c  bl      _objc_retain
  10016ff30  mov     x19, x0
  10016ff34  adrp    x8, #0x10041d000
  10016ff38  nop
  10016ff3c  ldr     x1, [x8, #0xb08]
  10016ff40  mov     x0, x20
  10016ff44  mov     x2, x19
  10016ff48  bl      _objc_msgSend                            ; [TAGTypes isDoubleableNumber:arg1]
  10016ff4c  cbz     w0, loc_10016ff94                        ; if ([TAGTypes isDoubleableNumber:arg1] == 0)
  10016ff50  adrp    x8, #0x10041d000
  10016ff54  ldr     x21, [x8, #0xf68]                        ; class NSNumber
  10016ff58  nop
  10016ff5c  nop
  10016ff60  ldr     x1, [x8, #0xb10]
  10016ff64  mov     x0, x20
  10016ff68  mov     x2, x19
  10016ff6c  bl      _objc_msgSend                            ; [TAGTypes getDouble:arg1]
  10016ff70  adrp    x8, #0x100419000
  10016ff74  nop
  10016ff78  ldr     x1, [x8, #0x60]
  10016ff7c  mov     x0, x21
  10016ff80  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:[TAGTypes getDouble:arg1]]
  10016ff84  mov     x29, x29
  10016ff88  bl      _objc_retainAutoreleasedReturnValue
  10016ff8c  mov     x20, x0
  10016ff90  b       loc_10016ffe8
loc_10016ff94:
  10016ff94  adrp    x8, #0x10041e000
  10016ff98  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10016ff9c  adrp    x8, #0x10041d000
  10016ffa0  nop
  10016ffa4  ldr     x1, [x8, #0xaf0]
  10016ffa8  mov     x2, x19
  10016ffac  bl      _objc_msgSend                            ; [TAGTypes objectToString:arg1]
  10016ffb0  mov     x29, x29
  10016ffb4  bl      _objc_retainAutoreleasedReturnValue
  10016ffb8  mov     x21, x0
  10016ffbc  adrp    x8, #0x10041d000
  10016ffc0  nop
  10016ffc4  ldr     x1, [x8, #0xb28]
  10016ffc8  mov     x0, x20
  10016ffcc  mov     x2, x21
  10016ffd0  bl      _objc_msgSend                            ; [TAGTypes parseDouble:[TAGTypes objectToString:arg1]]
  10016ffd4  mov     x29, x29
  10016ffd8  bl      _objc_retainAutoreleasedReturnValue
  10016ffdc  mov     x20, x0
  10016ffe0  mov     x0, x21
  10016ffe4  bl      _objc_release
loc_10016ffe8:
  10016ffe8  mov     x0, x19
  10016ffec  bl      _objc_release
  10016fff0  mov     x0, x20
  10016fff4  bl      _objc_autorelease
  10016fff8  mov     x0, x20
  10016fffc  ldp     x22, x21, [sp], #0x10
  100170000  ldp     x20, x19, [sp], #0x10
  100170004  ldp     x29, x30, [sp], #0x10
  100170008  ret
  10017000c  mov     x20, x0
  100170010  b       loc_100170028
  100170014  mov     x20, x0
  100170018  b       loc_100170028
  10017001c  mov     x20, x0
  100170020  mov     x0, x21
  100170024  bl      _objc_release
loc_100170028:
  100170028  mov     x0, x19
  10017002c  bl      _objc_release
  100170030  mov     x0, x20
  100170034  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes objectToBoolean:]
; address 0x100170038  size 264  kind objc
; ======================================================================
  100170038  stp     x29, x30, [sp, #-0x10]!
  10017003c  mov     x29, sp
  100170040  stp     x20, x19, [sp, #-0x10]!
  100170044  stp     x22, x21, [sp, #-0x10]!
  100170048  mov     x0, x2
  10017004c  bl      _objc_retain
  100170050  mov     x19, x0
  100170054  adrp    x8, #0x10041e000
  100170058  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  10017005c  adrp    x8, #0x100417000
  100170060  nop
  100170064  ldr     x1, [x8, #0x2e0]
  100170068  bl      _objc_msgSend                            ; [TAGBoolean class]
  10017006c  mov     x2, x0
  100170070  adrp    x8, #0x100417000
  100170074  nop
  100170078  ldr     x1, [x8, #0x3b8]
  10017007c  mov     x0, x19
  100170080  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGBoolean class]]
  100170084  tbz     w0, #0, loc_10017009c                    ; if (!([arg1 isKindOfClass:[TAGBoolean class]] & 1))
  100170088  mov     x0, x19
  10017008c  bl      _objc_retain
  100170090  mov     x21, x0
  100170094  mov     x20, x19
  100170098  b       loc_1001700f8
loc_10017009c:
  10017009c  adrp    x8, #0x10041e000
  1001700a0  ldr     x21, [x8, #0xb58]                        ; class TAGTypes
  1001700a4  adrp    x8, #0x10041d000
  1001700a8  nop
  1001700ac  ldr     x1, [x8, #0xaf0]
  1001700b0  mov     x0, x21
  1001700b4  mov     x2, x19
  1001700b8  bl      _objc_msgSend                            ; [TAGTypes objectToString:arg1]
  1001700bc  mov     x29, x29
  1001700c0  bl      _objc_retainAutoreleasedReturnValue
  1001700c4  mov     x20, x0
  1001700c8  adrp    x8, #0x10041d000
  1001700cc  nop
  1001700d0  ldr     x1, [x8, #0xb30]
  1001700d4  mov     x0, x21
  1001700d8  mov     x2, x20
  1001700dc  bl      _objc_msgSend                            ; [TAGTypes parseBoolean:[TAGTypes objectToString:arg1]]
  1001700e0  mov     x29, x29
  1001700e4  bl      _objc_retainAutoreleasedReturnValue
  1001700e8  mov     x21, x0
  1001700ec  mov     x0, x20
  1001700f0  bl      _objc_release
  1001700f4  mov     x20, x21
loc_1001700f8:
  1001700f8  mov     x0, x19
  1001700fc  bl      _objc_release
  100170100  mov     x0, x21
  100170104  bl      _objc_autorelease
  100170108  mov     x0, x20
  10017010c  ldp     x22, x21, [sp], #0x10
  100170110  ldp     x20, x19, [sp], #0x10
  100170114  ldp     x29, x30, [sp], #0x10
  100170118  ret
  10017011c  mov     x21, x0
  100170120  b       loc_100170130
  100170124  mov     x21, x0
  100170128  mov     x0, x20
  10017012c  bl      _objc_release
loc_100170130:
  100170130  mov     x0, x19
  100170134  bl      _objc_release
  100170138  mov     x0, x21
  10017013c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes valueToString:]
; address 0x100170140  size 132  kind objc
; ======================================================================
  100170140  stp     x29, x30, [sp, #-0x10]!
  100170144  mov     x29, sp
  100170148  stp     x20, x19, [sp, #-0x10]!
  10017014c  mov     x20, x0
  100170150  adrp    x8, #0x10041d000
  100170154  nop
  100170158  ldr     x1, [x8, #0xd30]
  10017015c  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  100170160  mov     x29, x29
  100170164  bl      _objc_retainAutoreleasedReturnValue
  100170168  mov     x19, x0
  10017016c  adrp    x8, #0x10041d000
  100170170  nop
  100170174  ldr     x1, [x8, #0xaf0]
  100170178  mov     x0, x20
  10017017c  mov     x2, x19
  100170180  bl      _objc_msgSend                            ; [TAGTypes objectToString:[TAGTypes valueToObject:arg1]]
  100170184  mov     x29, x29
  100170188  bl      _objc_retainAutoreleasedReturnValue
  10017018c  mov     x20, x0
  100170190  mov     x0, x19
  100170194  bl      _objc_release
  100170198  mov     x0, x20
  10017019c  ldp     x20, x19, [sp], #0x10
  1001701a0  ldp     x29, x30, [sp], #0x10
  1001701a4  b       _objc_autoreleaseReturnValue
  1001701a8  mov     x20, x0
  1001701ac  b       loc_1001701bc
  1001701b0  mov     x20, x0
  1001701b4  mov     x0, x19
  1001701b8  bl      _objc_release
loc_1001701bc:
  1001701bc  mov     x0, x20
  1001701c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes valueToNumber:]
; address 0x1001701c4  size 132  kind objc
; ======================================================================
  1001701c4  stp     x29, x30, [sp, #-0x10]!
  1001701c8  mov     x29, sp
  1001701cc  stp     x20, x19, [sp, #-0x10]!
  1001701d0  mov     x20, x0
  1001701d4  adrp    x8, #0x10041d000
  1001701d8  nop
  1001701dc  ldr     x1, [x8, #0xd30]
  1001701e0  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  1001701e4  mov     x29, x29
  1001701e8  bl      _objc_retainAutoreleasedReturnValue
  1001701ec  mov     x19, x0
  1001701f0  adrp    x8, #0x10041d000
  1001701f4  nop
  1001701f8  ldr     x1, [x8, #0xb38]
  1001701fc  mov     x0, x20
  100170200  mov     x2, x19
  100170204  bl      _objc_msgSend                            ; [TAGTypes objectToNumber:[TAGTypes valueToObject:arg1]]
  100170208  mov     x29, x29
  10017020c  bl      _objc_retainAutoreleasedReturnValue
  100170210  mov     x20, x0
  100170214  mov     x0, x19
  100170218  bl      _objc_release
  10017021c  mov     x0, x20
  100170220  ldp     x20, x19, [sp], #0x10
  100170224  ldp     x29, x30, [sp], #0x10
  100170228  b       _objc_autoreleaseReturnValue
  10017022c  mov     x20, x0
  100170230  b       loc_100170240
  100170234  mov     x20, x0
  100170238  mov     x0, x19
  10017023c  bl      _objc_release
loc_100170240:
  100170240  mov     x0, x20
  100170244  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes valueToInt64:]
; address 0x100170248  size 132  kind objc
; ======================================================================
  100170248  stp     x29, x30, [sp, #-0x10]!
  10017024c  mov     x29, sp
  100170250  stp     x20, x19, [sp, #-0x10]!
  100170254  mov     x20, x0
  100170258  adrp    x8, #0x10041d000
  10017025c  nop
  100170260  ldr     x1, [x8, #0xd30]
  100170264  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  100170268  mov     x29, x29
  10017026c  bl      _objc_retainAutoreleasedReturnValue
  100170270  mov     x19, x0
  100170274  adrp    x8, #0x10041d000
  100170278  nop
  10017027c  ldr     x1, [x8, #0xb40]
  100170280  mov     x0, x20
  100170284  mov     x2, x19
  100170288  bl      _objc_msgSend                            ; [TAGTypes objectToInt64:[TAGTypes valueToObject:arg1]]
  10017028c  mov     x29, x29
  100170290  bl      _objc_retainAutoreleasedReturnValue
  100170294  mov     x20, x0
  100170298  mov     x0, x19
  10017029c  bl      _objc_release
  1001702a0  mov     x0, x20
  1001702a4  ldp     x20, x19, [sp], #0x10
  1001702a8  ldp     x29, x30, [sp], #0x10
  1001702ac  b       _objc_autoreleaseReturnValue
  1001702b0  mov     x20, x0
  1001702b4  b       loc_1001702c4
  1001702b8  mov     x20, x0
  1001702bc  mov     x0, x19
  1001702c0  bl      _objc_release
loc_1001702c4:
  1001702c4  mov     x0, x20
  1001702c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes valueToDouble:]
; address 0x1001702cc  size 132  kind objc
; ======================================================================
  1001702cc  stp     x29, x30, [sp, #-0x10]!
  1001702d0  mov     x29, sp
  1001702d4  stp     x20, x19, [sp, #-0x10]!
  1001702d8  mov     x20, x0
  1001702dc  adrp    x8, #0x10041d000
  1001702e0  nop
  1001702e4  ldr     x1, [x8, #0xd30]
  1001702e8  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  1001702ec  mov     x29, x29
  1001702f0  bl      _objc_retainAutoreleasedReturnValue
  1001702f4  mov     x19, x0
  1001702f8  adrp    x8, #0x10041d000
  1001702fc  nop
  100170300  ldr     x1, [x8, #0xb48]
  100170304  mov     x0, x20
  100170308  mov     x2, x19
  10017030c  bl      _objc_msgSend                            ; [TAGTypes objectToDouble:[TAGTypes valueToObject:arg1]]
  100170310  mov     x29, x29
  100170314  bl      _objc_retainAutoreleasedReturnValue
  100170318  mov     x20, x0
  10017031c  mov     x0, x19
  100170320  bl      _objc_release
  100170324  mov     x0, x20
  100170328  ldp     x20, x19, [sp], #0x10
  10017032c  ldp     x29, x30, [sp], #0x10
  100170330  b       _objc_autoreleaseReturnValue
  100170334  mov     x20, x0
  100170338  b       loc_100170348
  10017033c  mov     x20, x0
  100170340  mov     x0, x19
  100170344  bl      _objc_release
loc_100170348:
  100170348  mov     x0, x20
  10017034c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes valueToBoolean:]
; address 0x100170350  size 132  kind objc
; ======================================================================
  100170350  stp     x29, x30, [sp, #-0x10]!
  100170354  mov     x29, sp
  100170358  stp     x20, x19, [sp, #-0x10]!
  10017035c  mov     x20, x0
  100170360  adrp    x8, #0x10041d000
  100170364  nop
  100170368  ldr     x1, [x8, #0xd30]
  10017036c  bl      _objc_msgSend                            ; [TAGTypes valueToObject:arg1]
  100170370  mov     x29, x29
  100170374  bl      _objc_retainAutoreleasedReturnValue
  100170378  mov     x19, x0
  10017037c  adrp    x8, #0x10041d000
  100170380  nop
  100170384  ldr     x1, [x8, #0xb50]
  100170388  mov     x0, x20
  10017038c  mov     x2, x19
  100170390  bl      _objc_msgSend                            ; [TAGTypes objectToBoolean:[TAGTypes valueToObject:arg1]]
  100170394  mov     x29, x29
  100170398  bl      _objc_retainAutoreleasedReturnValue
  10017039c  mov     x20, x0
  1001703a0  mov     x0, x19
  1001703a4  bl      _objc_release
  1001703a8  mov     x0, x20
  1001703ac  ldp     x20, x19, [sp], #0x10
  1001703b0  ldp     x29, x30, [sp], #0x10
  1001703b4  b       _objc_autoreleaseReturnValue
  1001703b8  mov     x20, x0
  1001703bc  b       loc_1001703cc
  1001703c0  mov     x20, x0
  1001703c4  mov     x0, x19
  1001703c8  bl      _objc_release
loc_1001703cc:
  1001703cc  mov     x0, x20
  1001703d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes objectToValue:]
; address 0x1001703d4  size 2600  kind objc
; ======================================================================
  1001703d4  stp     x29, x30, [sp, #-0x10]!
  1001703d8  mov     x29, sp
  1001703dc  stp     x20, x19, [sp, #-0x10]!
  1001703e0  stp     x22, x21, [sp, #-0x10]!
  1001703e4  stp     x24, x23, [sp, #-0x10]!
  1001703e8  stp     x26, x25, [sp, #-0x10]!
  1001703ec  stp     x28, x27, [sp, #-0x10]!
  1001703f0  sub     sp, sp, #0x200
  1001703f4  str     x0, [sp, #0x70]
  1001703f8  adrp    x28, #0x1003b0000
  1001703fc  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  100170400  ldr     x8, [x28]                                ; x8 = ___stack_chk_guard[+0x0]
  100170404  stur    x8, [x29, #-0x58]
  100170408  mov     x0, x2
  10017040c  bl      _objc_retain
  100170410  mov     x25, x0
  100170414  adrp    x19, #0x10041e000
  100170418  ldr     x0, [x19, #0x7d0]                        ; class TAGPValue
  10017041c  adrp    x8, #0x100416000
  100170420  nop
  100170424  ldr     x1, [x8, #0xac8]
  100170428  bl      _objc_msgSend                            ; [TAGPValue alloc]
  10017042c  adrp    x8, #0x100416000
  100170430  nop
  100170434  ldr     x1, [x8, #0xab8]
  100170438  bl      _objc_msgSend                            ; [[TAGPValue alloc] init]
  10017043c  mov     x27, x0
  100170440  ldr     x0, [x19, #0x7d0]                        ; class TAGPValue
  100170444  adrp    x8, #0x100417000
  100170448  nop
  10017044c  ldr     x22, [x8, #0x2e0]
  100170450  mov     x1, x22
  100170454  bl      _objc_msgSend                            ; [TAGPValue class]
  100170458  mov     x2, x0
  10017045c  adrp    x8, #0x100417000
  100170460  nop
  100170464  ldr     x20, [x8, #0x3b8]
  100170468  mov     x0, x25
  10017046c  mov     x1, x20
  100170470  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGPValue class]]
  100170474  cbz     w0, loc_100170480                        ; if ([arg1 isKindOfClass:[TAGPValue class]] == 0)
  100170478  mov     x0, x25
  10017047c  b       loc_100170b44
loc_100170480:
  100170480  adrp    x19, #0x10041d000
  100170484  ldr     x0, [x19, #0xf78]                        ; class NSString
  100170488  mov     x1, x22
  10017048c  bl      _objc_msgSend                            ; [NSString class]
  100170490  mov     x2, x0
  100170494  mov     x0, x25
  100170498  mov     x1, x20
  10017049c  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSString class]]
  1001704a0  cbz     w0, loc_1001704d8                        ; if ([arg1 isKindOfClass:[NSString class]] == 0)
  1001704a4  adrp    x8, #0x100417000
  1001704a8  nop
  1001704ac  ldr     x1, [x8, #0x9a0]
  1001704b0  mov     x2, #1
  1001704b4  mov     x0, x27
  1001704b8  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:1]
  1001704bc  adrp    x8, #0x10041b000
  1001704c0  nop
  1001704c4  ldr     x1, [x8, #0xfc8]
  1001704c8  mov     x0, x27
  1001704cc  mov     x2, x25
  1001704d0  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setString:arg1]
  1001704d4  b       loc_100170b40
loc_1001704d8:
  1001704d8  adrp    x8, #0x10041d000
  1001704dc  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1001704e0  mov     x1, x22
  1001704e4  bl      _objc_msgSend                            ; [NSArray class]
  1001704e8  mov     x2, x0
  1001704ec  mov     x0, x25
  1001704f0  mov     x1, x20
  1001704f4  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSArray class]]
  1001704f8  cbz     w0, loc_1001706e4                        ; if ([arg1 isKindOfClass:[NSArray class]] == 0)
  1001704fc  mov     x0, x25
  100170500  bl      _objc_retain
  100170504  mov     x20, x0
  100170508  adrp    x8, #0x10041e000
  10017050c  ldr     x19, [x8, #0x768]                        ; class TAGPBMutableArray
  100170510  adrp    x8, #0x100416000
  100170514  nop
  100170518  ldr     x1, [x8, #0xe30]
  10017051c  bl      _objc_msgSend                            ; [arg1 count]
  100170520  mov     x3, x0
  100170524  adrp    x8, #0x10041d000
  100170528  nop
  10017052c  ldr     x1, [x8, #0x9a8]
  100170530  mov     w2, #0
  100170534  mov     x0, x19
  100170538  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]]
  10017053c  mov     x29, x29
  100170540  bl      _objc_retainAutoreleasedReturnValue
  100170544  mov     x23, x0
  100170548  adrp    x8, #0x100417000
  10017054c  nop
  100170550  ldr     x1, [x8, #0x9a0]
  100170554  mov     x2, #2
  100170558  mov     x0, x27
  10017055c  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:2]
  100170560  str     x27, [sp, #0x38]
  100170564  stp     xzr, xzr, [x29, #-0x68]
  100170568  stp     xzr, xzr, [x29, #-0x78]
  10017056c  stp     xzr, xzr, [x29, #-0x88]
  100170570  stp     xzr, xzr, [x29, #-0x98]
  100170574  mov     x0, x20
  100170578  bl      _objc_retain
  10017057c  mov     x19, x0
  100170580  adrp    x8, #0x100416000
  100170584  nop
  100170588  ldr     x1, [x8, #0xe00]
  10017058c  str     x1, [sp, #0x60]
  100170590  sub     x2, x29, #0x98
  100170594  add     x3, sp, #0x138
  100170598  mov     x4, #0x10
  10017059c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x138] count:16]
  1001705a0  mov     x28, x0
  1001705a4  mov     x22, x19
  1001705a8  str     x20, [sp, #0x58]
  1001705ac  str     x25, [sp, #0x30]
  1001705b0  mov     w24, #0
  1001705b4  cbz     x28, loc_1001706b0                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x138] count:16] == 0)
  1001705b8  ldur    x8, [x29, #-0x88]
  1001705bc  adrp    x9, #0x10041d000
  1001705c0  nop
  1001705c4  ldr     x19, [x8]
  1001705c8  ldr     x27, [x9, #0xc30]
  1001705cc  adrp    x8, #0x10041d000
  1001705d0  nop
  1001705d4  adrp    x9, #0x100416000
  1001705d8  add     x9, x9, #0xd90                           ; &@selector(addObject:)
  1001705dc  ldr     x8, [x8, #0x9f0]
  1001705e0  str     x8, [sp, #0x68]
  1001705e4  ldr     x20, [x9]
  1001705e8  adrp    x25, #0x10042d000
  1001705ec  add     x25, x25, #0xf60                         ; &g_10042df60
  1001705f0  sub     x8, x29, #0x98
  1001705f4  str     x8, [sp, #0x50]
  1001705f8  add     x8, sp, #0x138
  1001705fc  str     x8, [sp, #0x48]
loc_100170600:
  100170600  mov     x21, #0
loc_100170604:
  100170604  ldur    x8, [x29, #-0x88]
  100170608  ldr     x8, [x8]
  10017060c  cmp     x8, x19
  100170610  b.eq    loc_10017061c                            ; if (x8 == x19)
  100170614  mov     x0, x22
  100170618  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10017061c:
  10017061c  ldur    x8, [x29, #-0x90]
  100170620  ldr     x2, [x8, x21, lsl #3]
  100170624  ldr     x0, [sp, #0x70]
  100170628  mov     x1, x27
  10017062c  bl      _objc_msgSend                            ; [TAGTypes objectToValue:x2]
  100170630  mov     x29, x29
  100170634  bl      _objc_retainAutoreleasedReturnValue
  100170638  mov     x26, x0
  10017063c  ldr     x8, [x25, #0x38]                         ; load g_10042df98
  100170640  cmp     x26, x8
  100170644  b.eq    loc_100170998                            ; if ([TAGTypes objectToValue:x2] == g_10042df98)
  100170648  and     w8, w24, #0xff
  10017064c  cbnz    w8, loc_100170664                        ; if ((w24 & 255) != 0)
  100170650  mov     x0, x26
  100170654  ldr     x1, [sp, #0x68]
  100170658  bl      _objc_msgSend                            ; [[TAGTypes objectToValue:x2] containsReferences]
  10017065c  mov     x24, x0
  100170660  b       loc_100170668
loc_100170664:
  100170664  mov     w24, #1
loc_100170668:
  100170668  mov     x0, x23
  10017066c  mov     x1, x20
  100170670  mov     x2, x26
  100170674  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]] addObject:[TAGTypes objectToValue:x2]]
  100170678  mov     x0, x26
  10017067c  bl      _objc_release
  100170680  add     x21, x21, #1
  100170684  cmp     x21, x28
  100170688  b.lo    loc_100170604                            ; if ((x21 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x138] count:16])
  10017068c  mov     x4, #0x10
  100170690  mov     x21, x22
  100170694  mov     x0, x21
  100170698  ldr     x1, [sp, #0x60]
  10017069c  ldp     x3, x2, [sp, #0x48]
  1001706a0  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x138] count:16]
  1001706a4  mov     x28, x0
  1001706a8  mov     x22, x21
  1001706ac  cbnz    x28, loc_100170600                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x138] count:16] != 0)
loc_1001706b0:
  1001706b0  mov     x21, x22
  1001706b4  mov     x0, x21
  1001706b8  bl      _objc_release
  1001706bc  adrp    x8, #0x10041d000
  1001706c0  nop
  1001706c4  ldr     x1, [x8, #0x9b0]
  1001706c8  ldp     x25, x27, [sp, #0x30]
  1001706cc  mov     x0, x27
  1001706d0  mov     x2, x23
  1001706d4  ldr     x20, [sp, #0x58]
  1001706d8  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setListItemArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]]]
  1001706dc  mov     w19, #1
  1001706e0  b       loc_1001709ac
loc_1001706e4:
  1001706e4  adrp    x8, #0x10041d000
  1001706e8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1001706ec  mov     x1, x22
  1001706f0  bl      _objc_msgSend                            ; [NSDictionary class]
  1001706f4  mov     x2, x0
  1001706f8  mov     x0, x25
  1001706fc  mov     x1, x20
  100170700  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSDictionary class]]
  100170704  cbz     w0, loc_1001709cc                        ; if ([arg1 isKindOfClass:[NSDictionary class]] == 0)
  100170708  mov     x0, x25
  10017070c  bl      _objc_retain
  100170710  adrp    x23, #0x10041e000
  100170714  ldr     x19, [x23, #0x768]                       ; class TAGPBMutableArray
  100170718  adrp    x8, #0x100416000
  10017071c  nop
  100170720  ldr     x20, [x8, #0xe30]
  100170724  mov     x21, x0
  100170728  mov     x1, x20
  10017072c  bl      _objc_msgSend                            ; [arg1 count]
  100170730  mov     x3, x0
  100170734  adrp    x8, #0x10041d000
  100170738  nop
  10017073c  ldr     x22, [x8, #0x9a8]
  100170740  mov     w2, #0
  100170744  mov     x0, x19
  100170748  mov     x1, x22
  10017074c  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]]
  100170750  mov     x29, x29
  100170754  bl      _objc_retainAutoreleasedReturnValue
  100170758  str     x0, [sp, #0x50]
  10017075c  ldr     x19, [x23, #0x768]                       ; class TAGPBMutableArray
  100170760  mov     x0, x21
  100170764  mov     x1, x20
  100170768  bl      _objc_msgSend                            ; [arg1 count]
  10017076c  mov     x3, x0
  100170770  mov     w2, #0
  100170774  mov     x0, x19
  100170778  mov     x1, x22
  10017077c  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]]
  100170780  mov     x29, x29
  100170784  bl      _objc_retainAutoreleasedReturnValue
  100170788  str     x0, [sp, #0x48]
  10017078c  adrp    x8, #0x100417000
  100170790  nop
  100170794  ldr     x1, [x8, #0x9a0]
  100170798  mov     x2, #3
  10017079c  mov     x0, x27
  1001707a0  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:3]
  1001707a4  stp     xzr, xzr, [sp, #0x128]
  1001707a8  stp     xzr, xzr, [sp, #0x118]
  1001707ac  stp     xzr, xzr, [sp, #0x108]
  1001707b0  stp     xzr, xzr, [sp, #0xf8]
  1001707b4  adrp    x8, #0x100417000
  1001707b8  nop
  1001707bc  ldr     x1, [x8, #0xa18]
  1001707c0  mov     x0, x21
  1001707c4  bl      _objc_msgSend                            ; [arg1 keyEnumerator]
  1001707c8  str     x27, [sp, #0x38]
  1001707cc  mov     x29, x29
  1001707d0  bl      _objc_retainAutoreleasedReturnValue
  1001707d4  str     x0, [sp, #0x58]
  1001707d8  adrp    x8, #0x100416000
  1001707dc  nop
  1001707e0  ldr     x1, [x8, #0xe00]
  1001707e4  str     x1, [sp, #0x28]
  1001707e8  add     x2, sp, #0xf8
  1001707ec  add     x3, sp, #0x78
  1001707f0  mov     x4, #0x10
  1001707f4  bl      _objc_msgSend                            ; [[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16]
  1001707f8  mov     x28, x0
  1001707fc  str     x25, [sp, #0x30]
  100170800  mov     w24, #0
  100170804  cbz     x28, loc_100170ac0                       ; if ([[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16] == 0)
  100170808  ldr     x8, [sp, #0x108]
  10017080c  ldr     x8, [x8]
  100170810  str     x8, [sp, #0x68]
  100170814  adrp    x8, #0x10041d000
  100170818  nop
  10017081c  adrp    x9, #0x100417000
  100170820  nop
  100170824  ldr     x23, [x8, #0xc30]
  100170828  ldr     x8, [x9, #0x40]
  10017082c  str     x8, [sp, #0x60]
  100170830  adrp    x8, #0x10041d000
  100170834  nop
  100170838  adrp    x9, #0x100416000
  10017083c  add     x9, x9, #0xd90                           ; &@selector(addObject:)
  100170840  ldr     x8, [x8, #0x9f0]
  100170844  str     x8, [sp, #0x40]
  100170848  ldr     x27, [x9]
  10017084c  add     x8, sp, #0xf8
  100170850  str     x8, [sp, #0x20]
  100170854  add     x8, sp, #0x78
  100170858  str     x8, [sp, #0x18]
loc_10017085c:
  10017085c  mov     x25, #0
loc_100170860:
  100170860  ldr     x8, [sp, #0x108]
  100170864  ldr     x8, [x8]
  100170868  ldr     x9, [sp, #0x68]
  10017086c  cmp     x8, x9
  100170870  b.eq    loc_10017087c                            ; if (x8 == x9)
  100170874  ldr     x0, [sp, #0x58]
  100170878  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 keyEnumerator])
loc_10017087c:
  10017087c  ldr     x8, [sp, #0x100]
  100170880  ldr     x19, [x8, x25, lsl #3]
  100170884  ldr     x0, [sp, #0x70]
  100170888  mov     x1, x23
  10017088c  mov     x2, x19
  100170890  bl      _objc_msgSend                            ; [TAGTypes objectToValue:x2]
  100170894  mov     x29, x29
  100170898  bl      _objc_retainAutoreleasedReturnValue
  10017089c  mov     x20, x0
  1001708a0  mov     x0, x21
  1001708a4  ldr     x1, [sp, #0x60]
  1001708a8  mov     x2, x19
  1001708ac  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  1001708b0  mov     x29, x29
  1001708b4  bl      _objc_retainAutoreleasedReturnValue
  1001708b8  mov     x19, x0
  1001708bc  ldr     x0, [sp, #0x70]
  1001708c0  mov     x1, x23
  1001708c4  mov     x2, x19
  1001708c8  bl      _objc_msgSend                            ; [TAGTypes objectToValue:[arg1 objectForKey:x2]]
  1001708cc  mov     x29, x29
  1001708d0  bl      _objc_retainAutoreleasedReturnValue
  1001708d4  mov     x22, x0
  1001708d8  mov     x0, x19
  1001708dc  bl      _objc_release
  1001708e0  adrp    x8, #0x10042d000
  1001708e4  add     x8, x8, #0xf60                           ; &g_10042df60
  1001708e8  ldr     x0, [x8, #0x38]                          ; load g_10042df98
  1001708ec  cmp     x20, x0
  1001708f0  ccmp    x22, x0, #4, ne
  1001708f4  b.ne    loc_100170908                            ; if (flags !=)
  1001708f8  bl      _objc_retain
  1001708fc  mov     x26, x0
  100170900  mov     w19, #0
  100170904  b       loc_100170958
loc_100170908:
  100170908  tbnz    w24, #0, loc_10017091c                   ; if ((w24 & 1))
  10017090c  mov     x0, x20
  100170910  ldr     x1, [sp, #0x40]
  100170914  bl      _objc_msgSend                            ; [[TAGTypes objectToValue:x2] containsReferences]
  100170918  tbz     w0, #0, loc_100170924                    ; if (!([[TAGTypes objectToValue:x2] containsReferences] & 1))
loc_10017091c:
  10017091c  mov     w24, #1
  100170920  b       loc_100170934
loc_100170924:
  100170924  mov     x0, x22
  100170928  ldr     x1, [sp, #0x40]
  10017092c  bl      _objc_msgSend                            ; [[TAGTypes objectToValue:[arg1 objectForKey:x2]] containsReferences]
  100170930  mov     x24, x0
loc_100170934:
  100170934  ldr     x0, [sp, #0x50]
  100170938  mov     x1, x27
  10017093c  mov     x2, x20
  100170940  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]] addObject:[TAGTypes objectToValue:x2]]
  100170944  ldr     x0, [sp, #0x48]
  100170948  mov     x1, x27
  10017094c  mov     x2, x22
  100170950  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]] addObject:[TAGTypes objectToValue:[arg1 objectForKey:x2]]]
  100170954  mov     w19, #1
loc_100170958:
  100170958  mov     x0, x22
  10017095c  bl      _objc_release
  100170960  mov     x0, x20
  100170964  bl      _objc_release
  100170968  tbz     w19, #0, loc_100170a44                   ; if (!(one of {0, 1} & 1))
  10017096c  add     x25, x25, #1
  100170970  cmp     x25, x28
  100170974  b.lo    loc_100170860                            ; if ((x25 + 1) <u [[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16])
  100170978  mov     x4, #0x10
  10017097c  ldr     x0, [sp, #0x58]
  100170980  ldp     x2, x1, [sp, #0x20]
  100170984  ldr     x3, [sp, #0x18]
  100170988  bl      _objc_msgSend                            ; [[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16]
  10017098c  mov     x28, x0
  100170990  cbnz    x28, loc_10017085c                       ; if ([[arg1 keyEnumerator] countByEnumeratingWithState:&sp[0xf8] objects:&sp[0x78] count:16] != 0)
  100170994  b       loc_100170ac0
loc_100170998:
  100170998  mov     x21, x22
  10017099c  mov     x0, x21
  1001709a0  bl      _objc_release
  1001709a4  mov     w19, #0
  1001709a8  ldp     x25, x27, [sp, #0x30]
loc_1001709ac:
  1001709ac  adrp    x28, #0x1003b0000
  1001709b0  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  1001709b4  mov     x0, x23
  1001709b8  bl      _objc_release
  1001709bc  mov     x0, x21
  1001709c0  bl      _objc_release
  1001709c4  tbnz    w19, #0, loc_100170b24                   ; if ((one of {0, 1} & 1))
  1001709c8  b       loc_100170b4c
loc_1001709cc:
  1001709cc  adrp    x8, #0x10041d000
  1001709d0  nop
  1001709d4  ldr     x1, [x8, #0xb08]
  1001709d8  ldr     x0, [sp, #0x70]
  1001709dc  mov     x2, x25
  1001709e0  bl      _objc_msgSend                            ; [TAGTypes isDoubleableNumber:arg1]
  1001709e4  cbz     w0, loc_100170a58                        ; if ([TAGTypes isDoubleableNumber:arg1] == 0)
  1001709e8  adrp    x8, #0x100417000
  1001709ec  nop
  1001709f0  ldr     x1, [x8, #0x9a0]
  1001709f4  mov     x2, #1
  1001709f8  mov     x0, x27
  1001709fc  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:1]
  100170a00  adrp    x8, #0x10041a000
  100170a04  nop
  100170a08  ldr     x1, [x8, #0xd20]
  100170a0c  mov     x0, x25
  100170a10  bl      _objc_msgSend                            ; [arg1 stringValue]
  100170a14  mov     x29, x29
  100170a18  bl      _objc_retainAutoreleasedReturnValue
  100170a1c  mov     x19, x0
  100170a20  adrp    x8, #0x10041b000
  100170a24  nop
  100170a28  ldr     x1, [x8, #0xfc8]
  100170a2c  mov     x0, x27
  100170a30  mov     x2, x19
  100170a34  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setString:[arg1 stringValue]]
  100170a38  mov     x0, x19
  100170a3c  bl      _objc_release
  100170a40  b       loc_100170b40
loc_100170a44:
  100170a44  ldr     x0, [sp, #0x58]
  100170a48  bl      _objc_release
  100170a4c  mov     w19, #0
  100170a50  ldp     x25, x27, [sp, #0x30]
  100170a54  b       loc_100170b00
loc_100170a58:
  100170a58  adrp    x8, #0x10041d000
  100170a5c  nop
  100170a60  ldr     x1, [x8, #0xaf8]
  100170a64  ldr     x0, [sp, #0x70]
  100170a68  mov     x2, x25
  100170a6c  bl      _objc_msgSend                            ; [TAGTypes isInt64ableNumber:arg1]
  100170a70  cbz     w0, loc_100170b94                        ; if ([TAGTypes isInt64ableNumber:arg1] == 0)
  100170a74  adrp    x8, #0x100417000
  100170a78  nop
  100170a7c  ldr     x1, [x8, #0x9a0]
  100170a80  mov     x2, #6
  100170a84  mov     x0, x27
  100170a88  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:6]
  100170a8c  adrp    x8, #0x10041d000
  100170a90  nop
  100170a94  ldr     x1, [x8, #0xb00]
  100170a98  ldr     x0, [sp, #0x70]
  100170a9c  mov     x2, x25
  100170aa0  bl      _objc_msgSend                            ; [TAGTypes getInt64:arg1]
  100170aa4  mov     x2, x0
  100170aa8  adrp    x8, #0x10041d000
  100170aac  nop
  100170ab0  ldr     x1, [x8, #0xb58]
  100170ab4  mov     x0, x27
  100170ab8  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setInteger:[TAGTypes getInt64:arg1]]
  100170abc  b       loc_100170b40
loc_100170ac0:
  100170ac0  ldr     x0, [sp, #0x58]
  100170ac4  bl      _objc_release
  100170ac8  adrp    x8, #0x10041d000
  100170acc  nop
  100170ad0  ldr     x1, [x8, #0x9b8]
  100170ad4  ldp     x25, x27, [sp, #0x30]
  100170ad8  mov     x0, x27
  100170adc  ldr     x2, [sp, #0x50]
  100170ae0  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setMapKeyArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]]]
  100170ae4  adrp    x8, #0x10041d000
  100170ae8  nop
  100170aec  ldr     x1, [x8, #0x9c0]
  100170af0  mov     x0, x27
  100170af4  ldr     x2, [sp, #0x48]
  100170af8  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setMapValueArray:[TAGPBMutableArray arrayWithValueType:0 capacity:[arg1 count]]]
  100170afc  mov     w19, #1
loc_100170b00:
  100170b00  ldr     x0, [sp, #0x48]
  100170b04  bl      _objc_release
  100170b08  ldr     x0, [sp, #0x50]
  100170b0c  bl      _objc_release
  100170b10  mov     x0, x21
  100170b14  bl      _objc_release
  100170b18  adrp    x28, #0x1003b0000
  100170b1c  ldr     x28, [x28, #0x1d8]                       ; ___stack_chk_guard
  100170b20  tbz     w19, #0, loc_100170b4c                   ; if (!(one of {0, 1} & 1))
loc_100170b24:
  100170b24  tbz     w24, #0, loc_100170b40                   ; if (!(w24 & 1))
  100170b28  adrp    x8, #0x10041d000
  100170b2c  nop
  100170b30  ldr     x1, [x8, #0x730]
  100170b34  mov     w2, #1
  100170b38  mov     x0, x27
  100170b3c  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setContainsReferences:1]
loc_100170b40:
  100170b40  mov     x0, x27
loc_100170b44:
  100170b44  bl      _objc_retain
  100170b48  mov     x26, x0
loc_100170b4c:
  100170b4c  mov     x0, x27
  100170b50  bl      _objc_release
  100170b54  mov     x0, x25
  100170b58  bl      _objc_release
  100170b5c  ldr     x8, [x28]                                ; x8 = ___stack_chk_guard[+0x0]
  100170b60  ldur    x9, [x29, #-0x58]
  100170b64  sub     x8, x8, x9
  100170b68  cbnz    x8, loc_100170b90                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100170b6c  mov     x0, x26
  100170b70  sub     sp, x29, #0x50
  100170b74  ldp     x28, x27, [sp], #0x10
  100170b78  ldp     x26, x25, [sp], #0x10
  100170b7c  ldp     x24, x23, [sp], #0x10
  100170b80  ldp     x22, x21, [sp], #0x10
  100170b84  ldp     x20, x19, [sp], #0x10
  100170b88  ldp     x29, x30, [sp], #0x10
  100170b8c  b       _objc_autoreleaseReturnValue
loc_100170b90:
  100170b90  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100170b94:
  100170b94  adrp    x8, #0x10041e000
  100170b98  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  100170b9c  mov     x1, x22
  100170ba0  bl      _objc_msgSend                            ; [TAGBoolean class]
  100170ba4  mov     x2, x0
  100170ba8  mov     x0, x25
  100170bac  mov     x1, x20
  100170bb0  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[TAGBoolean class]]
  100170bb4  cbz     w0, loc_100170c00                        ; if ([arg1 isKindOfClass:[TAGBoolean class]] == 0)
  100170bb8  adrp    x8, #0x100417000
  100170bbc  nop
  100170bc0  ldr     x1, [x8, #0x9a0]
  100170bc4  mov     x2, #8
  100170bc8  mov     x0, x27
  100170bcc  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:8]
  100170bd0  adrp    x8, #0x100417000
  100170bd4  nop
  100170bd8  ldr     x1, [x8, #0xd8]
  100170bdc  mov     x0, x25
  100170be0  bl      _objc_msgSend                            ; [arg1 boolValue]
  100170be4  mov     x2, x0
  100170be8  adrp    x8, #0x10041d000
  100170bec  nop
  100170bf0  ldr     x1, [x8, #0xb60]
  100170bf4  mov     x0, x27
  100170bf8  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setBoolean:[arg1 boolValue]]
  100170bfc  b       loc_100170b40
loc_100170c00:
  100170c00  adrp    x8, #0x10041e000
  100170c04  ldr     x20, [x8, #0x538]                        ; class TAGLog
  100170c08  ldr     x23, [x19, #0xf78]                       ; class NSString
  100170c0c  cbz     x25, loc_100170c34                       ; if (arg1 == 0)
  100170c10  mov     x0, x25
  100170c14  mov     x1, x22
  100170c18  bl      _objc_msgSend                            ; [arg1 class]
  100170c1c  bl      _NSStringFromClass                       ; NSStringFromClass([arg1 class])
  100170c20  mov     x29, x29
  100170c24  bl      _objc_retainAutoreleasedReturnValue
  100170c28  mov     x21, x0
  100170c2c  mov     w22, #1
  100170c30  b       loc_100170c40
loc_100170c34:
  100170c34  mov     w22, #0
  100170c38  adrp    x21, #0x1003c8000
  100170c3c  add     x21, x21, #0xe90                         ; @"nil"
loc_100170c40:
  100170c40  adrp    x8, #0x100416000
  100170c44  nop
  100170c48  ldr     x1, [x8, #0xee8]
  100170c4c  str     x21, [sp]
  100170c50  adrp    x2, #0x1003c8000
  100170c54  add     x2, x2, #0xe70                           ; @"Converting to Value from unknown object type: %@"
  100170c58  mov     x0, x23
  100170c5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Converting to Value from unknown object type: %@", sp[0]]
  100170c60  mov     x29, x29
  100170c64  bl      _objc_retainAutoreleasedReturnValue
  100170c68  mov     x19, x0
  100170c6c  adrp    x8, #0x10041b000
  100170c70  nop
  100170c74  ldr     x1, [x8, #0xdd0]
  100170c78  mov     x0, x20
  100170c7c  mov     x2, x19
  100170c80  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Converting to Value from unknown object type: %@", sp[0]]]
  100170c84  mov     x0, x19
  100170c88  bl      _objc_release
  100170c8c  cbz     w22, loc_100170c98                       ; if (one of {0, 1} == 0)
  100170c90  mov     x0, x21
  100170c94  bl      _objc_release
loc_100170c98:
  100170c98  adrp    x8, #0x10042d000
  100170c9c  add     x8, x8, #0xf60                           ; &g_10042df60
  100170ca0  ldr     x0, [x8, #0x38]                          ; load g_10042df98
  100170ca4  b       loc_100170b44
  100170ca8  str     x25, [sp, #0x30]
  100170cac  mov     x24, x0
  100170cb0  b       loc_100170dec
  100170cb4  str     x20, [sp, #0x58]
  100170cb8  stp     x25, x27, [sp, #0x30]
  100170cbc  mov     x24, x0
  100170cc0  b       loc_100170d10
  100170cc4  mov     x22, x19
  100170cc8  str     x20, [sp, #0x58]
  100170ccc  str     x25, [sp, #0x30]
  100170cd0  b       loc_100170cec
  100170cd4  b       loc_100170cec
  100170cd8  mov     x24, x0
  100170cdc  mov     x0, x26
  100170ce0  bl      _objc_release
  100170ce4  b       loc_100170cf0
  100170ce8  mov     x22, x21
loc_100170cec:
  100170cec  mov     x24, x0
loc_100170cf0:
  100170cf0  mov     x0, x22
  100170cf4  bl      _objc_release
  100170cf8  b       loc_100170d08
  100170cfc  str     x20, [sp, #0x58]
  100170d00  stp     x25, x27, [sp, #0x30]
  100170d04  mov     x24, x0
loc_100170d08:
  100170d08  mov     x0, x23
  100170d0c  bl      _objc_release
loc_100170d10:
  100170d10  ldr     x0, [sp, #0x58]
  100170d14  bl      _objc_release
  100170d18  b       loc_100170de4
  100170d1c  stp     x25, x27, [sp, #0x30]
  100170d20  mov     x24, x0
  100170d24  b       loc_100170ddc
  100170d28  stp     x25, x27, [sp, #0x30]
  100170d2c  mov     x24, x0
  100170d30  b       loc_100170da4
  100170d34  str     x25, [sp, #0x30]
  100170d38  b       loc_100170d70
  100170d3c  b       loc_100170d70
  100170d40  mov     x24, x0
  100170d44  b       loc_100170d64
  100170d48  mov     x24, x0
  100170d4c  mov     x0, x19
  100170d50  bl      _objc_release
  100170d54  b       loc_100170d64
  100170d58  mov     x24, x0
  100170d5c  mov     x0, x22
  100170d60  bl      _objc_release
loc_100170d64:
  100170d64  mov     x0, x20
  100170d68  bl      _objc_release
  100170d6c  b       loc_100170d74
loc_100170d70:
  100170d70  mov     x24, x0
loc_100170d74:
  100170d74  ldr     x0, [sp, #0x58]
  100170d78  bl      _objc_release
  100170d7c  b       loc_100170d9c
  100170d80  stp     x25, x27, [sp, #0x30]
  100170d84  mov     x24, x0
  100170d88  mov     x0, x19
  100170d8c  bl      _objc_release
  100170d90  b       loc_100170de4
  100170d94  stp     x25, x27, [sp, #0x30]
  100170d98  mov     x24, x0
loc_100170d9c:
  100170d9c  ldr     x0, [sp, #0x48]
  100170da0  bl      _objc_release
loc_100170da4:
  100170da4  ldr     x0, [sp, #0x50]
  100170da8  bl      _objc_release
  100170dac  b       loc_100170ddc
  100170db0  stp     x25, x27, [sp, #0x30]
  100170db4  mov     x24, x0
  100170db8  b       loc_100170de4
  100170dbc  stp     x25, x27, [sp, #0x30]
  100170dc0  mov     x24, x0
  100170dc4  b       loc_100170dd8
  100170dc8  stp     x25, x27, [sp, #0x30]
  100170dcc  mov     x24, x0
  100170dd0  mov     x0, x19
  100170dd4  bl      _objc_release
loc_100170dd8:
  100170dd8  cbz     w22, loc_100170de4                       ; if (w22 == 0)
loc_100170ddc:
  100170ddc  mov     x0, x21
  100170de0  bl      _objc_release
loc_100170de4:
  100170de4  ldr     x0, [sp, #0x38]
  100170de8  bl      _objc_release
loc_100170dec:
  100170dec  ldr     x0, [sp, #0x30]
  100170df0  bl      _objc_release
  100170df4  mov     x0, x24
  100170df8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes functionIdToValue:]
; address 0x100170dfc  size 184  kind objc
; ======================================================================
  100170dfc  stp     x29, x30, [sp, #-0x10]!
  100170e00  mov     x29, sp
  100170e04  stp     x20, x19, [sp, #-0x10]!
  100170e08  stp     x22, x21, [sp, #-0x10]!
  100170e0c  mov     x0, x2
  100170e10  bl      _objc_retain
  100170e14  mov     x19, x0
  100170e18  adrp    x8, #0x10041e000
  100170e1c  ldr     x0, [x8, #0x7d0]                         ; class TAGPValue
  100170e20  adrp    x8, #0x100416000
  100170e24  nop
  100170e28  ldr     x1, [x8, #0xac8]
  100170e2c  bl      _objc_msgSend                            ; [TAGPValue alloc]
  100170e30  adrp    x8, #0x100416000
  100170e34  nop
  100170e38  ldr     x1, [x8, #0xab8]
  100170e3c  bl      _objc_msgSend                            ; [[TAGPValue alloc] init]
  100170e40  mov     x20, x0
  100170e44  adrp    x8, #0x100417000
  100170e48  nop
  100170e4c  ldr     x1, [x8, #0x9a0]
  100170e50  mov     x2, #5
  100170e54  mov     x0, x20
  100170e58  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:5]
  100170e5c  adrp    x8, #0x10041d000
  100170e60  nop
  100170e64  ldr     x1, [x8, #0xb68]
  100170e68  mov     x0, x20
  100170e6c  mov     x2, x19
  100170e70  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setFunctionId:arg1]
  100170e74  mov     x0, x19
  100170e78  bl      _objc_release
  100170e7c  mov     x0, x20
  100170e80  ldp     x22, x21, [sp], #0x10
  100170e84  ldp     x20, x19, [sp], #0x10
  100170e88  ldp     x29, x30, [sp], #0x10
  100170e8c  b       _objc_autoreleaseReturnValue
  100170e90  mov     x21, x0
  100170e94  b       loc_100170ea4
  100170e98  mov     x21, x0
  100170e9c  mov     x0, x20
  100170ea0  bl      _objc_release
loc_100170ea4:
  100170ea4  mov     x0, x19
  100170ea8  bl      _objc_release
  100170eac  mov     x0, x21
  100170eb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes macroReferenceToValue:]
; address 0x100170eb4  size 52  kind objc
; ======================================================================
  100170eb4  stp     x29, x30, [sp, #-0x10]!
  100170eb8  mov     x29, sp
  100170ebc  adrp    x8, #0x10041e000
  100170ec0  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  100170ec4  adrp    x8, #0x10041d000
  100170ec8  nop
  100170ecc  ldr     x1, [x8, #0xb70]
  100170ed0  mov     x3, #0
  100170ed4  bl      _objc_msgSend                            ; [TAGTypes macroReferenceToValue:arg1 escapings:0]
  100170ed8  mov     x29, x29
  100170edc  bl      _objc_retainAutoreleasedReturnValue
  100170ee0  ldp     x29, x30, [sp], #0x10
  100170ee4  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[TAGTypes macroReferenceToValue:escapings:]
; address 0x100170ee8  size 420  kind objc
; ======================================================================
  100170ee8  stp     x29, x30, [sp, #-0x10]!
  100170eec  mov     x29, sp
  100170ef0  stp     x20, x19, [sp, #-0x10]!
  100170ef4  stp     x22, x21, [sp, #-0x10]!
  100170ef8  stp     x24, x23, [sp, #-0x10]!
  100170efc  mov     x20, x3
  100170f00  mov     x0, x2
  100170f04  bl      _objc_retain
  100170f08  mov     x19, x0
  100170f0c  mov     x0, x20
  100170f10  bl      _objc_retain
  100170f14  mov     x20, x0
  100170f18  adrp    x8, #0x10041e000
  100170f1c  ldr     x0, [x8, #0x7d0]                         ; class TAGPValue
  100170f20  adrp    x8, #0x100416000
  100170f24  nop
  100170f28  ldr     x22, [x8, #0xac8]
  100170f2c  mov     x1, x22
  100170f30  bl      _objc_msgSend                            ; [TAGPValue alloc]
  100170f34  adrp    x8, #0x100416000
  100170f38  nop
  100170f3c  ldr     x1, [x8, #0xab8]
  100170f40  bl      _objc_msgSend                            ; [[TAGPValue alloc] init]
  100170f44  mov     x21, x0
  100170f48  adrp    x8, #0x100417000
  100170f4c  nop
  100170f50  ldr     x1, [x8, #0x9a0]
  100170f54  mov     x2, #4
  100170f58  mov     x0, x21
  100170f5c  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:4]
  100170f60  adrp    x8, #0x10041d000
  100170f64  nop
  100170f68  ldr     x1, [x8, #0x760]
  100170f6c  mov     x0, x21
  100170f70  mov     x2, x19
  100170f74  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setMacroReference:arg1]
  100170f78  adrp    x8, #0x10041d000
  100170f7c  nop
  100170f80  ldr     x1, [x8, #0x730]
  100170f84  mov     w2, #1
  100170f88  mov     x0, x21
  100170f8c  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setContainsReferences:1]
  100170f90  adrp    x8, #0x10041e000
  100170f94  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100170f98  mov     x1, x22
  100170f9c  bl      _objc_msgSend                            ; [TAGPBMutableArray alloc]
  100170fa0  mov     x22, x0
  100170fa4  adrp    x8, #0x10041d000
  100170fa8  nop
  100170fac  ldr     x1, [x8, #0xb78]
  100170fb0  mov     x0, x20
  100170fb4  bl      _objc_msgSend                            ; [arg2 valueType]
  100170fb8  mov     x23, x0
  100170fbc  adrp    x8, #0x100416000
  100170fc0  nop
  100170fc4  ldr     x1, [x8, #0xe30]
  100170fc8  mov     x0, x20
  100170fcc  bl      _objc_msgSend                            ; [arg2 count]
  100170fd0  mov     x3, x0
  100170fd4  adrp    x8, #0x10041c000
  100170fd8  nop
  100170fdc  ldr     x1, [x8, #0x528]
  100170fe0  mov     x0, x22
  100170fe4  mov     x2, x23
  100170fe8  bl      _objc_msgSend                            ; [[TAGPBMutableArray alloc] initWithValueType:[arg2 valueType] capacity:[arg2 count]]
  100170fec  mov     x22, x0
  100170ff0  adrp    x8, #0x10041b000
  100170ff4  nop
  100170ff8  ldr     x1, [x8, #0x1d0]
  100170ffc  mov     x0, x22
  100171000  mov     x2, x20
  100171004  bl      _objc_msgSend                            ; [[[TAGPBMutableArray alloc] initWithValueType:[arg2 valueType] capacity:[arg2 count]] setArray:arg2]
  100171008  adrp    x8, #0x10041d000
  10017100c  nop
  100171010  ldr     x1, [x8, #0x728]
  100171014  mov     x0, x21
  100171018  mov     x2, x22
  10017101c  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setEscapingArray:[[TAGPBMutableArray alloc] initWithValueType:[arg2 valueType] capacity:[arg2 count]]]
  100171020  mov     x0, x22
  100171024  bl      _objc_release
  100171028  mov     x0, x20
  10017102c  bl      _objc_release
  100171030  mov     x0, x19
  100171034  bl      _objc_release
  100171038  mov     x0, x21
  10017103c  ldp     x24, x23, [sp], #0x10
  100171040  ldp     x22, x21, [sp], #0x10
  100171044  ldp     x20, x19, [sp], #0x10
  100171048  ldp     x29, x30, [sp], #0x10
  10017104c  b       _objc_autoreleaseReturnValue
  100171050  mov     x23, x0
  100171054  b       loc_100171074
  100171058  mov     x23, x0
  10017105c  b       loc_10017106c
  100171060  mov     x23, x0
  100171064  mov     x0, x22
  100171068  bl      _objc_release
loc_10017106c:
  10017106c  mov     x0, x21
  100171070  bl      _objc_release
loc_100171074:
  100171074  mov     x0, x20
  100171078  bl      _objc_release
  10017107c  mov     x0, x19
  100171080  bl      _objc_release
  100171084  mov     x0, x23
  100171088  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes templateToValue:]
; address 0x10017108c  size 460  kind objc
; ======================================================================
  10017108c  stp     x29, x30, [sp, #-0x10]!
  100171090  mov     x29, sp
  100171094  stp     x20, x19, [sp, #-0x10]!
  100171098  stp     x22, x21, [sp, #-0x10]!
  10017109c  stp     x24, x23, [sp, #-0x10]!
  1001710a0  stp     x26, x25, [sp, #-0x10]!
  1001710a4  sub     sp, sp, #0x10
  1001710a8  mov     x0, x2
  1001710ac  bl      _objc_retain
  1001710b0  mov     x20, x0
  1001710b4  add     x8, x29, #0x10
  1001710b8  str     x8, [sp, #8]
  1001710bc  adrp    x8, #0x10041e000
  1001710c0  ldr     x0, [x8, #0x7d0]                         ; class TAGPValue
  1001710c4  adrp    x8, #0x100416000
  1001710c8  nop
  1001710cc  ldr     x1, [x8, #0xac8]
  1001710d0  bl      _objc_msgSend                            ; [TAGPValue alloc]
  1001710d4  adrp    x8, #0x100416000
  1001710d8  nop
  1001710dc  ldr     x1, [x8, #0xab8]
  1001710e0  bl      _objc_msgSend                            ; [[TAGPValue alloc] init]
  1001710e4  mov     x19, x0
  1001710e8  adrp    x8, #0x100417000
  1001710ec  nop
  1001710f0  ldr     x1, [x8, #0x9a0]
  1001710f4  mov     x2, #7
  1001710f8  mov     x0, x19
  1001710fc  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setType:7]
  100171100  adrp    x8, #0x10041e000
  100171104  ldr     x0, [x8, #0x768]                         ; class TAGPBMutableArray
  100171108  adrp    x8, #0x10041d000
  10017110c  nop
  100171110  ldr     x1, [x8, #0xf8]
  100171114  mov     x2, x20
  100171118  bl      _objc_msgSend                            ; [TAGPBMutableArray arrayWithObject:arg1]
  10017111c  mov     x29, x29
  100171120  bl      _objc_retainAutoreleasedReturnValue
  100171124  mov     x21, x0
  100171128  adrp    x8, #0x10041d000
  10017112c  nop
  100171130  ldr     x23, [x8, #0x9f0]
  100171134  mov     x0, x20
  100171138  mov     x1, x23
  10017113c  bl      _objc_msgSend                            ; [arg1 containsReferences]
  100171140  mov     x24, x0
  100171144  adrp    x8, #0x100416000
  100171148  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10017114c  ldr     x25, [x8]
loc_100171150:
  100171150  ldr     x8, [sp, #8]
  100171154  add     x9, x8, #8
  100171158  str     x9, [sp, #8]
  10017115c  ldr     x0, [x8]
  100171160  bl      _objc_retain
  100171164  mov     x22, x0
  100171168  mov     x0, x20
  10017116c  bl      _objc_release
  100171170  cbz     x22, loc_1001711b8                       ; if (x22 == 0)
  100171174  mov     x0, x21
  100171178  mov     x1, x25
  10017117c  mov     x2, x22
  100171180  bl      _objc_msgSend                            ; [[TAGPBMutableArray arrayWithObject:arg1] addObject:x2]
  100171184  and     w8, w24, #1
  100171188  mov     w24, #1
  10017118c  mov     x20, x22
  100171190  tbnz    w8, #0, loc_100171150                    ; if (((w24 & 1) & 1))
  100171194  mov     x0, x22
  100171198  mov     x1, x23
  10017119c  bl      _objc_msgSend                            ; [x0 containsReferences]
  1001711a0  mov     x24, x0
  1001711a4  mov     x20, x22
  1001711a8  b       loc_100171150
  1001711ac  mov     x23, x0
  1001711b0  mov     x20, x22
  1001711b4  b       loc_100171238
loc_1001711b8:
  1001711b8  adrp    x8, #0x10041d000
  1001711bc  nop
  1001711c0  ldr     x1, [x8, #0x9e8]
  1001711c4  mov     x20, #0
  1001711c8  mov     x0, x19
  1001711cc  mov     x2, x21
  1001711d0  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setTemplateTokenArray:[TAGPBMutableArray arrayWithObject:arg1]]
  1001711d4  tbz     w24, #0, loc_1001711f4                   ; if (!(w24 & 1))
  1001711d8  adrp    x8, #0x10041d000
  1001711dc  nop
  1001711e0  ldr     x1, [x8, #0x730]
  1001711e4  mov     x20, #0
  1001711e8  mov     w2, #1
  1001711ec  mov     x0, x19
  1001711f0  bl      _objc_msgSend                            ; [[[TAGPValue alloc] init] setContainsReferences:1]
loc_1001711f4:
  1001711f4  mov     x0, x21
  1001711f8  bl      _objc_release
  1001711fc  mov     x0, x22
  100171200  bl      _objc_release
  100171204  mov     x0, x19
  100171208  sub     sp, x29, #0x40
  10017120c  ldp     x26, x25, [sp], #0x10
  100171210  ldp     x24, x23, [sp], #0x10
  100171214  ldp     x22, x21, [sp], #0x10
  100171218  ldp     x20, x19, [sp], #0x10
  10017121c  ldp     x29, x30, [sp], #0x10
  100171220  b       _objc_autoreleaseReturnValue
  100171224  mov     x23, x0
  100171228  b       loc_100171248
  10017122c  mov     x23, x0
  100171230  b       loc_100171240
  100171234  mov     x23, x0
loc_100171238:
  100171238  mov     x0, x21
  10017123c  bl      _objc_release
loc_100171240:
  100171240  mov     x0, x19
  100171244  bl      _objc_release
loc_100171248:
  100171248  mov     x0, x20
  10017124c  bl      _objc_release
  100171250  mov     x0, x23
  100171254  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes isDoubleableNumber:]
; address 0x100171258  size 164  kind objc
; ======================================================================
  100171258  stp     x29, x30, [sp, #-0x10]!
  10017125c  mov     x29, sp
  100171260  stp     x20, x19, [sp, #-0x10]!
  100171264  mov     x0, x2
  100171268  bl      _objc_retain
  10017126c  mov     x19, x0
  100171270  adrp    x8, #0x10041d000
  100171274  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100171278  adrp    x8, #0x100417000
  10017127c  nop
  100171280  ldr     x1, [x8, #0x2e0]
  100171284  bl      _objc_msgSend                            ; [NSNumber class]
  100171288  mov     x2, x0
  10017128c  adrp    x8, #0x100417000
  100171290  nop
  100171294  ldr     x1, [x8, #0x3b8]
  100171298  mov     x0, x19
  10017129c  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  1001712a0  cbz     w0, loc_1001712cc                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  1001712a4  mov     x0, x19
  1001712a8  bl      _CFNumberGetType                         ; CFNumberGetType(arg1)
  1001712ac  sub     x8, x0, #5
  1001712b0  cmp     x8, #0xc
  1001712b4  and     w8, w8, #0xfff
  1001712b8  mov     w9, #0x983
  1001712bc  lsr     w8, w9, w8
  1001712c0  and     w8, w8, #1
  1001712c4  csel    w20, w8, wzr, lo                         ; t1 = ((CFNumberGetType(arg1) - 5) <u 12 ? ((2435 >>> ((CFNumberGetType(arg1) - 5) & 4095)) & 1) : 0)
  1001712c8  b       loc_1001712d0
loc_1001712cc:
  1001712cc  mov     w20, #0
loc_1001712d0:
  1001712d0  mov     x0, x19
  1001712d4  bl      _objc_release
  1001712d8  mov     x0, x20
  1001712dc  ldp     x20, x19, [sp], #0x10
  1001712e0  ldp     x29, x30, [sp], #0x10
  1001712e4  ret
  1001712e8  mov     x20, x0
  1001712ec  mov     x0, x19
  1001712f0  bl      _objc_release
  1001712f4  mov     x0, x20
  1001712f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes getDouble:]
; address 0x1001712fc  size 192  kind objc
; ======================================================================
  1001712fc  stp     x29, x30, [sp, #-0x10]!
  100171300  mov     x29, sp
  100171304  stp     x20, x19, [sp, #-0x10]!
  100171308  sub     sp, sp, #0x10
  10017130c  mov     x0, x2
  100171310  bl      _objc_retain
  100171314  mov     x19, x0
  100171318  adrp    x8, #0x10041d000
  10017131c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100171320  adrp    x8, #0x100417000
  100171324  nop
  100171328  ldr     x1, [x8, #0x2e0]
  10017132c  bl      _objc_msgSend                            ; [NSNumber class]
  100171330  mov     x2, x0
  100171334  adrp    x8, #0x100417000
  100171338  nop
  10017133c  ldr     x1, [x8, #0x3b8]
  100171340  mov     x0, x19
  100171344  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  100171348  cbz     w0, loc_100171364                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  10017134c  adrp    x8, #0x100417000
  100171350  nop
  100171354  ldr     x1, [x8, #0x3d8]
  100171358  mov     x0, x19
  10017135c  bl      _objc_msgSend                            ; [arg1 doubleValue]
  100171360  b       loc_100171388
loc_100171364:
  100171364  adrp    x8, #0x10041e000
  100171368  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10017136c  adrp    x8, #0x10041b000
  100171370  nop
  100171374  ldr     x1, [x8, #0xdd0]
  100171378  adrp    x2, #0x1003c8000
  10017137c  add     x2, x2, #0xeb0                           ; @"getDouble did not receive NSNumber"
  100171380  bl      _objc_msgSend                            ; [TAGLog error:@"getDouble did not receive NSNumber"]
  100171384  movi    v0.16b, #0
loc_100171388:
  100171388  str     q0, [sp]
  10017138c  mov     x0, x19
  100171390  bl      _objc_release
  100171394  ldr     q0, [sp]
  100171398  sub     sp, x29, #0x10
  10017139c  ldp     x20, x19, [sp], #0x10
  1001713a0  ldp     x29, x30, [sp], #0x10
  1001713a4  ret
  1001713a8  mov     x20, x0
  1001713ac  mov     x0, x19
  1001713b0  bl      _objc_release
  1001713b4  mov     x0, x20
  1001713b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes isInt64ableNumber:]
; address 0x1001713bc  size 164  kind objc
; ======================================================================
  1001713bc  stp     x29, x30, [sp, #-0x10]!
  1001713c0  mov     x29, sp
  1001713c4  stp     x20, x19, [sp, #-0x10]!
  1001713c8  mov     x0, x2
  1001713cc  bl      _objc_retain
  1001713d0  mov     x19, x0
  1001713d4  adrp    x8, #0x10041d000
  1001713d8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1001713dc  adrp    x8, #0x100417000
  1001713e0  nop
  1001713e4  ldr     x1, [x8, #0x2e0]
  1001713e8  bl      _objc_msgSend                            ; [NSNumber class]
  1001713ec  mov     x2, x0
  1001713f0  adrp    x8, #0x100417000
  1001713f4  nop
  1001713f8  ldr     x1, [x8, #0x3b8]
  1001713fc  mov     x0, x19
  100171400  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  100171404  cbz     w0, loc_100171430                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  100171408  mov     x0, x19
  10017140c  bl      _CFNumberGetType                         ; CFNumberGetType(arg1)
  100171410  sub     x8, x0, #1
  100171414  cmp     x8, #0xf
  100171418  and     w8, w8, #0x7fff
  10017141c  mov     w9, #0x47cf
  100171420  lsr     w8, w9, w8
  100171424  and     w8, w8, #1
  100171428  csel    w20, w8, wzr, lo                         ; t1 = ((CFNumberGetType(arg1) - 1) <u 15 ? ((0x47cf >>> ((CFNumberGetType(arg1) - 1) & 0x7fff)) & 1) : 0)
  10017142c  b       loc_100171434
loc_100171430:
  100171430  mov     w20, #0
loc_100171434:
  100171434  mov     x0, x19
  100171438  bl      _objc_release
  10017143c  mov     x0, x20
  100171440  ldp     x20, x19, [sp], #0x10
  100171444  ldp     x29, x30, [sp], #0x10
  100171448  ret
  10017144c  mov     x20, x0
  100171450  mov     x0, x19
  100171454  bl      _objc_release
  100171458  mov     x0, x20
  10017145c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes getInt64:]
; address 0x100171460  size 184  kind objc
; ======================================================================
  100171460  stp     x29, x30, [sp, #-0x10]!
  100171464  mov     x29, sp
  100171468  stp     x20, x19, [sp, #-0x10]!
  10017146c  mov     x0, x2
  100171470  bl      _objc_retain
  100171474  mov     x19, x0
  100171478  adrp    x8, #0x10041d000
  10017147c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100171480  adrp    x8, #0x100417000
  100171484  nop
  100171488  ldr     x1, [x8, #0x2e0]
  10017148c  bl      _objc_msgSend                            ; [NSNumber class]
  100171490  mov     x2, x0
  100171494  adrp    x8, #0x100417000
  100171498  nop
  10017149c  ldr     x1, [x8, #0x3b8]
  1001714a0  mov     x0, x19
  1001714a4  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[NSNumber class]]
  1001714a8  cbz     w0, loc_1001714c8                        ; if ([arg1 isKindOfClass:[NSNumber class]] == 0)
  1001714ac  adrp    x8, #0x10041c000
  1001714b0  nop
  1001714b4  ldr     x1, [x8, #0xc70]
  1001714b8  mov     x0, x19
  1001714bc  bl      _objc_msgSend                            ; [arg1 longLongValue]
  1001714c0  mov     x20, x0
  1001714c4  b       loc_1001714ec
loc_1001714c8:
  1001714c8  adrp    x8, #0x10041e000
  1001714cc  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001714d0  adrp    x8, #0x10041b000
  1001714d4  nop
  1001714d8  ldr     x1, [x8, #0xdd0]
  1001714dc  adrp    x2, #0x1003c8000
  1001714e0  add     x2, x2, #0xed0                           ; @"getInt64 did not receive NSNumber"
  1001714e4  bl      _objc_msgSend                            ; [TAGLog error:@"getInt64 did not receive NSNumber"]
  1001714e8  mov     x20, #0
loc_1001714ec:
  1001714ec  mov     x0, x19
  1001714f0  bl      _objc_release
  1001714f4  mov     x0, x20
  1001714f8  ldp     x20, x19, [sp], #0x10
  1001714fc  ldp     x29, x30, [sp], #0x10
  100171500  ret
  100171504  mov     x20, x0
  100171508  mov     x0, x19
  10017150c  bl      _objc_release
  100171510  mov     x0, x20
  100171514  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes parseNumber:]
; address 0x100171518  size 284  kind objc
; ======================================================================
  100171518  stp     x29, x30, [sp, #-0x10]!
  10017151c  mov     x29, sp
  100171520  stp     x20, x19, [sp, #-0x10]!
  100171524  stp     x22, x21, [sp, #-0x10]!
  100171528  sub     sp, sp, #0x10
  10017152c  mov     x20, x0
  100171530  mov     x0, x2
  100171534  bl      _objc_retain
  100171538  mov     x19, x0
  10017153c  adrp    x8, #0x10041d000
  100171540  nop
  100171544  ldr     x1, [x8, #0x438]
  100171548  mov     x0, x20
  10017154c  mov     x2, x19
  100171550  bl      _objc_msgSend                            ; [TAGTypes numberWithString:arg1]
  100171554  mov     x29, x29
  100171558  bl      _objc_retainAutoreleasedReturnValue
  10017155c  mov     x20, x0
  100171560  cbz     x20, loc_10017156c                       ; if ([TAGTypes numberWithString:arg1] == 0)
  100171564  mov     x0, x20
  100171568  b       loc_1001715d0
loc_10017156c:
  10017156c  adrp    x8, #0x10041e000
  100171570  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100171574  adrp    x8, #0x10041d000
  100171578  ldr     x0, [x8, #0xf78]                         ; class NSString
  10017157c  adrp    x8, #0x100416000
  100171580  nop
  100171584  ldr     x1, [x8, #0xee8]
  100171588  str     x19, [sp]
  10017158c  adrp    x2, #0x1003c8000
  100171590  add     x2, x2, #0xef0                           ; @"Failed to convert %@ to a number."
  100171594  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Failed to convert %@ to a number.", arg1]
  100171598  mov     x29, x29
  10017159c  bl      _objc_retainAutoreleasedReturnValue
  1001715a0  mov     x22, x0
  1001715a4  adrp    x8, #0x10041b000
  1001715a8  nop
  1001715ac  ldr     x1, [x8, #0xdd0]
  1001715b0  mov     x0, x21
  1001715b4  mov     x2, x22
  1001715b8  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Failed to convert %@ to a number.", arg1]]
  1001715bc  mov     x0, x22
  1001715c0  bl      _objc_release
  1001715c4  adrp    x8, #0x10042d000
  1001715c8  add     x8, x8, #0xf60                           ; &g_10042df60
  1001715cc  ldr     x0, [x8, #0x18]                          ; load g_10042df78
loc_1001715d0:
  1001715d0  bl      _objc_retain
  1001715d4  mov     x21, x0
  1001715d8  mov     x0, x20
  1001715dc  bl      _objc_release
  1001715e0  mov     x0, x19
  1001715e4  bl      _objc_release
  1001715e8  mov     x0, x21
  1001715ec  sub     sp, x29, #0x20
  1001715f0  ldp     x22, x21, [sp], #0x10
  1001715f4  ldp     x20, x19, [sp], #0x10
  1001715f8  ldp     x29, x30, [sp], #0x10
  1001715fc  b       _objc_autoreleaseReturnValue
  100171600  mov     x21, x0
  100171604  b       loc_100171624
  100171608  mov     x21, x0
  10017160c  b       loc_10017161c
  100171610  mov     x21, x0
  100171614  mov     x0, x22
  100171618  bl      _objc_release
loc_10017161c:
  10017161c  mov     x0, x20
  100171620  bl      _objc_release
loc_100171624:
  100171624  mov     x0, x19
  100171628  bl      _objc_release
  10017162c  mov     x0, x21
  100171630  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes parseInt64:]
; address 0x100171634  size 196  kind objc
; ======================================================================
  100171634  stp     x29, x30, [sp, #-0x10]!
  100171638  mov     x29, sp
  10017163c  stp     x20, x19, [sp, #-0x10]!
  100171640  adrp    x8, #0x10041d000
  100171644  nop
  100171648  ldr     x1, [x8, #0xb18]
  10017164c  bl      _objc_msgSend                            ; [TAGTypes parseNumber:arg1]
  100171650  mov     x29, x29
  100171654  bl      _objc_retainAutoreleasedReturnValue
  100171658  mov     x19, x0
  10017165c  adrp    x8, #0x10042d000
  100171660  add     x8, x8, #0xf60                           ; &g_10042df60
  100171664  ldr     x9, [x8, #0x18]                          ; load g_10042df78
  100171668  cmp     x19, x9
  10017166c  b.eq    loc_1001716b0                            ; if ([TAGTypes parseNumber:arg1] == g_10042df78)
  100171670  adrp    x8, #0x10041d000
  100171674  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100171678  adrp    x8, #0x10041c000
  10017167c  nop
  100171680  ldr     x1, [x8, #0xc70]
  100171684  mov     x0, x19
  100171688  bl      _objc_msgSend                            ; [[TAGTypes parseNumber:arg1] longLongValue]
  10017168c  mov     x2, x0
  100171690  adrp    x8, #0x10041c000
  100171694  nop
  100171698  ldr     x1, [x8, #0x800]
  10017169c  mov     x0, x20
  1001716a0  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:[[TAGTypes parseNumber:arg1] longLongValue]]
  1001716a4  mov     x29, x29
  1001716a8  bl      _objc_retainAutoreleasedReturnValue
  1001716ac  b       loc_1001716b8
loc_1001716b0:
  1001716b0  ldr     x0, [x8, #8]                             ; load g_10042df68
  1001716b4  bl      _objc_retain
loc_1001716b8:
  1001716b8  mov     x20, x0
  1001716bc  mov     x0, x19
  1001716c0  bl      _objc_release
  1001716c4  mov     x0, x20
  1001716c8  bl      _objc_autorelease
  1001716cc  mov     x0, x20
  1001716d0  ldp     x20, x19, [sp], #0x10
  1001716d4  ldp     x29, x30, [sp], #0x10
  1001716d8  ret
  1001716dc  mov     x20, x0
  1001716e0  b       loc_1001716f0
  1001716e4  mov     x20, x0
  1001716e8  mov     x0, x19
  1001716ec  bl      _objc_release
loc_1001716f0:
  1001716f0  mov     x0, x20
  1001716f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes parseDouble:]
; address 0x1001716f8  size 192  kind objc
; ======================================================================
  1001716f8  stp     x29, x30, [sp, #-0x10]!
  1001716fc  mov     x29, sp
  100171700  stp     x20, x19, [sp, #-0x10]!
  100171704  adrp    x8, #0x10041d000
  100171708  nop
  10017170c  ldr     x1, [x8, #0xb18]
  100171710  bl      _objc_msgSend                            ; [TAGTypes parseNumber:arg1]
  100171714  mov     x29, x29
  100171718  bl      _objc_retainAutoreleasedReturnValue
  10017171c  mov     x19, x0
  100171720  adrp    x8, #0x10042d000
  100171724  add     x8, x8, #0xf60                           ; &g_10042df60
  100171728  ldr     x9, [x8, #0x18]                          ; load g_10042df78
  10017172c  cmp     x19, x9
  100171730  b.eq    loc_100171770                            ; if ([TAGTypes parseNumber:arg1] == g_10042df78)
  100171734  adrp    x8, #0x10041d000
  100171738  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  10017173c  adrp    x8, #0x100417000
  100171740  nop
  100171744  ldr     x1, [x8, #0x3d8]
  100171748  mov     x0, x19
  10017174c  bl      _objc_msgSend                            ; [[TAGTypes parseNumber:arg1] doubleValue]
  100171750  adrp    x8, #0x100419000
  100171754  nop
  100171758  ldr     x1, [x8, #0x60]
  10017175c  mov     x0, x20
  100171760  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:[[TAGTypes parseNumber:arg1] doubleValue]]
  100171764  mov     x29, x29
  100171768  bl      _objc_retainAutoreleasedReturnValue
  10017176c  b       loc_100171778
loc_100171770:
  100171770  ldr     x0, [x8, #0x10]                          ; load g_10042df70
  100171774  bl      _objc_retain
loc_100171778:
  100171778  mov     x20, x0
  10017177c  mov     x0, x19
  100171780  bl      _objc_release
  100171784  mov     x0, x20
  100171788  bl      _objc_autorelease
  10017178c  mov     x0, x20
  100171790  ldp     x20, x19, [sp], #0x10
  100171794  ldp     x29, x30, [sp], #0x10
  100171798  ret
  10017179c  mov     x20, x0
  1001717a0  b       loc_1001717b0
  1001717a4  mov     x20, x0
  1001717a8  mov     x0, x19
  1001717ac  bl      _objc_release
loc_1001717b0:
  1001717b0  mov     x0, x20
  1001717b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes parseBoolean:]
; address 0x1001717b8  size 284  kind objc
; ======================================================================
  1001717b8  stp     x29, x30, [sp, #-0x10]!
  1001717bc  mov     x29, sp
  1001717c0  stp     x20, x19, [sp, #-0x10]!
  1001717c4  stp     x22, x21, [sp, #-0x10]!
  1001717c8  sub     sp, sp, #0x10
  1001717cc  mov     x0, x2
  1001717d0  bl      _objc_retain
  1001717d4  mov     x19, x0
  1001717d8  adrp    x8, #0x10041e000
  1001717dc  ldr     x0, [x8, #0xb40]                         ; class TAGBoolean
  1001717e0  adrp    x8, #0x10041d000
  1001717e4  nop
  1001717e8  ldr     x1, [x8, #0xb80]
  1001717ec  mov     x2, x19
  1001717f0  bl      _objc_msgSend                            ; [TAGBoolean booleanWithString:arg1]
  1001717f4  mov     x29, x29
  1001717f8  bl      _objc_retainAutoreleasedReturnValue
  1001717fc  mov     x20, x0
  100171800  cbz     x20, loc_10017180c                       ; if ([TAGBoolean booleanWithString:arg1] == 0)
  100171804  mov     x0, x20
  100171808  b       loc_100171870
loc_10017180c:
  10017180c  adrp    x8, #0x10041e000
  100171810  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100171814  adrp    x8, #0x10041d000
  100171818  ldr     x0, [x8, #0xf78]                         ; class NSString
  10017181c  adrp    x8, #0x100416000
  100171820  nop
  100171824  ldr     x1, [x8, #0xee8]
  100171828  str     x19, [sp]
  10017182c  adrp    x2, #0x1003c8000
  100171830  add     x2, x2, #0xf10                           ; @"Failed to parse an invalid boolean: %@"
  100171834  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Failed to parse an invalid boolean: %@", arg1]
  100171838  mov     x29, x29
  10017183c  bl      _objc_retainAutoreleasedReturnValue
  100171840  mov     x22, x0
  100171844  adrp    x8, #0x10041b000
  100171848  nop
  10017184c  ldr     x1, [x8, #0xdd0]
  100171850  mov     x0, x21
  100171854  mov     x2, x22
  100171858  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Failed to parse an invalid boolean: %@", arg1]]
  10017185c  mov     x0, x22
  100171860  bl      _objc_release
  100171864  adrp    x8, #0x10042d000
  100171868  add     x8, x8, #0xf60                           ; &g_10042df60
  10017186c  ldr     x0, [x8, #0x40]                          ; load g_10042dfa0
loc_100171870:
  100171870  bl      _objc_retain
  100171874  mov     x21, x0
  100171878  mov     x0, x20
  10017187c  bl      _objc_release
  100171880  mov     x0, x19
  100171884  bl      _objc_release
  100171888  mov     x0, x21
  10017188c  sub     sp, x29, #0x20
  100171890  ldp     x22, x21, [sp], #0x10
  100171894  ldp     x20, x19, [sp], #0x10
  100171898  ldp     x29, x30, [sp], #0x10
  10017189c  b       _objc_autoreleaseReturnValue
  1001718a0  mov     x21, x0
  1001718a4  b       loc_1001718c4
  1001718a8  mov     x21, x0
  1001718ac  b       loc_1001718bc
  1001718b0  mov     x21, x0
  1001718b4  mov     x0, x22
  1001718b8  bl      _objc_release
loc_1001718bc:
  1001718bc  mov     x0, x20
  1001718c0  bl      _objc_release
loc_1001718c4:
  1001718c4  mov     x0, x19
  1001718c8  bl      _objc_release
  1001718cc  mov     x0, x21
  1001718d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes numberWithString:]
; address 0x1001718d4  size 428  kind objc
; ======================================================================
  1001718d4  stp     x29, x30, [sp, #-0x10]!
  1001718d8  mov     x29, sp
  1001718dc  stp     x20, x19, [sp, #-0x10]!
  1001718e0  stp     x22, x21, [sp, #-0x10]!
  1001718e4  sub     sp, sp, #0x10
  1001718e8  mov     x0, x2
  1001718ec  bl      _objc_retain
  1001718f0  mov     x19, x0
  1001718f4  adrp    x8, #0x100417000
  1001718f8  nop
  1001718fc  ldr     x21, [x8, #0xc58]
  100171900  mov     x1, x21
  100171904  bl      _objc_msgSend                            ; [arg1 length]
  100171908  cbz     x0, loc_1001719e0                        ; if ([arg1 length] == 0)
  10017190c  adrp    x8, #0x10041e000
  100171910  ldr     x0, [x8, #0x650]                         ; class NSScanner
  100171914  adrp    x8, #0x10041c000
  100171918  nop
  10017191c  ldr     x1, [x8, #0x3f8]
  100171920  mov     x2, x19
  100171924  bl      _objc_msgSend                            ; [NSScanner scannerWithString:arg1]
  100171928  mov     x29, x29
  10017192c  bl      _objc_retainAutoreleasedReturnValue
  100171930  mov     x20, x0
  100171934  adrp    x8, #0x10041d000
  100171938  nop
  10017193c  ldr     x1, [x8, #0xb88]
  100171940  add     x2, sp, #8
  100171944  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:arg1] scanLongLong:&sp[0x8]]
  100171948  cbz     w0, loc_100171978                        ; if ([[NSScanner scannerWithString:arg1] scanLongLong:&sp[0x8]] == 0)
  10017194c  adrp    x8, #0x10041d000
  100171950  nop
  100171954  ldr     x1, [x8, #0xb90]
  100171958  mov     x0, x20
  10017195c  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:arg1] scanLocation]
  100171960  mov     x22, x0
  100171964  mov     x0, x19
  100171968  mov     x1, x21
  10017196c  bl      _objc_msgSend                            ; [arg1 length]
  100171970  cmp     x22, x0
  100171974  b.hs    loc_1001719e8                            ; if ([[NSScanner scannerWithString:arg1] scanLocation] >=u [arg1 length])
loc_100171978:
  100171978  adrp    x8, #0x10041d000
  10017197c  nop
  100171980  ldr     x1, [x8, #0xb98]
  100171984  mov     x2, #0
  100171988  mov     x0, x20
  10017198c  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:arg1] setScanLocation:0]
  100171990  adrp    x8, #0x10041d000
  100171994  nop
  100171998  ldr     x1, [x8, #0xba0]
  10017199c  mov     x2, sp
  1001719a0  mov     x0, x20
  1001719a4  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:arg1] scanDouble:&sp[0x0]]
  1001719a8  cbz     w0, loc_1001719d8                        ; if ([[NSScanner scannerWithString:arg1] scanDouble:&sp[0x0]] == 0)
  1001719ac  adrp    x8, #0x10041d000
  1001719b0  nop
  1001719b4  ldr     x1, [x8, #0xb90]
  1001719b8  mov     x0, x20
  1001719bc  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:arg1] scanLocation]
  1001719c0  mov     x22, x0
  1001719c4  mov     x0, x19
  1001719c8  mov     x1, x21
  1001719cc  bl      _objc_msgSend                            ; [arg1 length]
  1001719d0  cmp     x22, x0
  1001719d4  b.hs    loc_100171a0c                            ; if ([[NSScanner scannerWithString:arg1] scanLocation] >=u [arg1 length])
loc_1001719d8:
  1001719d8  mov     x21, #0
  1001719dc  b       loc_100171a34
loc_1001719e0:
  1001719e0  mov     x21, #0
  1001719e4  b       loc_100171a3c
loc_1001719e8:
  1001719e8  adrp    x8, #0x10041d000
  1001719ec  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1001719f0  ldr     x2, [sp, #8]
  1001719f4  adrp    x8, #0x10041c000
  1001719f8  nop
  1001719fc  ldr     x1, [x8, #0x800]
  100171a00  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:x2]
  100171a04  mov     x29, x29
  100171a08  b       loc_100171a2c
loc_100171a0c:
  100171a0c  adrp    x8, #0x10041d000
  100171a10  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100171a14  ldr     d0, [sp]
  100171a18  adrp    x8, #0x100419000
  100171a1c  nop
  100171a20  ldr     x1, [x8, #0x60]
  100171a24  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:d0]
  100171a28  mov     x29, x29
loc_100171a2c:
  100171a2c  bl      _objc_retainAutoreleasedReturnValue
  100171a30  mov     x21, x0
loc_100171a34:
  100171a34  mov     x0, x20
  100171a38  bl      _objc_release
loc_100171a3c:
  100171a3c  mov     x0, x19
  100171a40  bl      _objc_release
  100171a44  mov     x0, x21
  100171a48  sub     sp, x29, #0x20
  100171a4c  ldp     x22, x21, [sp], #0x10
  100171a50  ldp     x20, x19, [sp], #0x10
  100171a54  ldp     x29, x30, [sp], #0x10
  100171a58  b       _objc_autoreleaseReturnValue
  100171a5c  mov     x21, x0
  100171a60  b       loc_100171a70
  100171a64  mov     x21, x0
  100171a68  mov     x0, x20
  100171a6c  bl      _objc_release
loc_100171a70:
  100171a70  mov     x0, x19
  100171a74  bl      _objc_release
  100171a78  mov     x0, x21
  100171a7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGTypes valueToObject:]
; address 0x100171a80  size 2460  kind objc
; ======================================================================
  100171a80  stp     x29, x30, [sp, #-0x10]!
  100171a84  mov     x29, sp
  100171a88  stp     x20, x19, [sp, #-0x10]!
  100171a8c  stp     x22, x21, [sp, #-0x10]!
  100171a90  stp     x24, x23, [sp, #-0x10]!
  100171a94  stp     x26, x25, [sp, #-0x10]!
  100171a98  stp     x28, x27, [sp, #-0x10]!
  100171a9c  sub     sp, sp, #0x1c0
  100171aa0  mov     x20, x0
  100171aa4  adrp    x26, #0x1003b0000
  100171aa8  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100171aac  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100171ab0  stur    x8, [x29, #-0x58]
  100171ab4  mov     x0, x2
  100171ab8  bl      _objc_retain
  100171abc  mov     x19, x0
  100171ac0  cbz     x19, loc_100171b50                       ; if (arg1 == 0)
  100171ac4  adrp    x8, #0x100417000
  100171ac8  nop
  100171acc  ldr     x21, [x8, #0x9a8]
  100171ad0  mov     x0, x19
  100171ad4  mov     x1, x21
  100171ad8  bl      _objc_msgSend                            ; [arg1 type]
  100171adc  sub     x8, x0, #1
  100171ae0  cmp     x8, #7
  100171ae4  b.ls    loc_100171b94                            ; if (([arg1 type] - 1) <=u 7)
  100171ae8  adrp    x8, #0x10041e000
  100171aec  ldr     x20, [x8, #0x538]                        ; class TAGLog
  100171af0  adrp    x8, #0x10041d000
  100171af4  ldr     x22, [x8, #0xf78]                        ; class NSString
  100171af8  mov     x0, x19
  100171afc  mov     x1, x21
  100171b00  bl      _objc_msgSend                            ; [arg1 type]
  100171b04  adrp    x8, #0x100416000
  100171b08  nop
  100171b0c  ldr     x1, [x8, #0xee8]
  100171b10  str     x0, [sp]
  100171b14  adrp    x2, #0x1003c8000
  100171b18  add     x2, x2, #0xf90                           ; @"Failed to convert a value of type: %ld"
  100171b1c  mov     x0, x22
  100171b20  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Failed to convert a value of type: %ld", [arg1 type]]
  100171b24  mov     x29, x29
  100171b28  bl      _objc_retainAutoreleasedReturnValue
  100171b2c  mov     x21, x0
  100171b30  adrp    x8, #0x10041b000
  100171b34  nop
  100171b38  ldr     x1, [x8, #0xdd0]
  100171b3c  mov     x0, x20
  100171b40  mov     x2, x21
  100171b44  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Failed to convert a value of type: %ld", [arg1 type]]]
loc_100171b48:
  100171b48  mov     x0, x21
  100171b4c  bl      _objc_release
loc_100171b50:
  100171b50  mov     x20, #0
loc_100171b54:
  100171b54  mov     x0, x19
  100171b58  bl      _objc_release
  100171b5c  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100171b60  ldur    x9, [x29, #-0x58]
  100171b64  sub     x8, x8, x9
  100171b68  cbnz    x8, loc_100171b90                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100171b6c  mov     x0, x20
  100171b70  sub     sp, x29, #0x50
  100171b74  ldp     x28, x27, [sp], #0x10
  100171b78  ldp     x26, x25, [sp], #0x10
  100171b7c  ldp     x24, x23, [sp], #0x10
  100171b80  ldp     x22, x21, [sp], #0x10
  100171b84  ldp     x20, x19, [sp], #0x10
  100171b88  ldp     x29, x30, [sp], #0x10
  100171b8c  b       _objc_autoreleaseReturnValue
loc_100171b90:
  100171b90  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100171b94:
  100171b94  adr     x9, #0x1001723fc                         ; 0x1001723fc
  100171b98  nop
  100171b9c  ldrsw   x8, [x9, x8, lsl #2]
  100171ba0  add     x8, x8, x9
  100171ba4  br      x8                                       ; switch (?) { case 0: goto loc_100171ba8; case 1: goto loc_100171bc4; case 2: goto loc_100171d44; case 3: goto loc_100171f94; case 4: goto loc_100171fb8; case 5: goto loc_100171fdc; case 6: goto loc_100172018; case 7: goto loc_1001721c8 }
loc_100171ba8:  ; case 0
  100171ba8  adrp    x8, #0x10041b000
  100171bac  nop
  100171bb0  ldr     x1, [x8, #0x1f0]
  100171bb4  mov     x0, x19
  100171bb8  bl      _objc_msgSend                            ; [arg1 string]
  100171bbc  mov     x29, x29
  100171bc0  b       loc_100172200
loc_100171bc4:  ; case 1
  100171bc4  adrp    x8, #0x10041d000
  100171bc8  ldr     x21, [x8, #0xf28]                        ; class NSMutableArray
  100171bcc  nop
  100171bd0  nop
  100171bd4  ldr     x22, [x8, #0x9a0]
  100171bd8  mov     x0, x19
  100171bdc  mov     x1, x22
  100171be0  bl      _objc_msgSend                            ; [arg1 listItemArray]
  100171be4  mov     x29, x29
  100171be8  bl      _objc_retainAutoreleasedReturnValue
  100171bec  mov     x23, x0
  100171bf0  adrp    x8, #0x100416000
  100171bf4  nop
  100171bf8  ldr     x1, [x8, #0xe30]
  100171bfc  bl      _objc_msgSend                            ; [[arg1 listItemArray] count]
  100171c00  mov     x2, x0
  100171c04  adrp    x8, #0x10041b000
  100171c08  nop
  100171c0c  ldr     x1, [x8, #0x280]
  100171c10  mov     x0, x21
  100171c14  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[arg1 listItemArray] count]]
  100171c18  mov     x29, x29
  100171c1c  bl      _objc_retainAutoreleasedReturnValue
  100171c20  mov     x21, x0
  100171c24  mov     x0, x23
  100171c28  bl      _objc_release
  100171c2c  stp     xzr, xzr, [x29, #-0x68]
  100171c30  stp     xzr, xzr, [x29, #-0x78]
  100171c34  stp     xzr, xzr, [x29, #-0x88]
  100171c38  stp     xzr, xzr, [x29, #-0x98]
  100171c3c  mov     x0, x19
  100171c40  mov     x1, x22
  100171c44  bl      _objc_msgSend                            ; [arg1 listItemArray]
  100171c48  mov     x29, x29
  100171c4c  bl      _objc_retainAutoreleasedReturnValue
  100171c50  mov     x22, x0
  100171c54  adrp    x8, #0x100416000
  100171c58  nop
  100171c5c  ldr     x1, [x8, #0xe00]
  100171c60  str     x1, [sp, #0x30]
  100171c64  sub     x2, x29, #0x98
  100171c68  add     x3, sp, #0xf8
  100171c6c  mov     x4, #0x10
  100171c70  bl      _objc_msgSend                            ; [[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16]
  100171c74  mov     x24, x0
  100171c78  cbz     x24, loc_100171d2c                       ; if ([[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16] == 0)
  100171c7c  ldur    x8, [x29, #-0x88]
  100171c80  ldr     x28, [x8]
  100171c84  adrp    x8, #0x10041d000
  100171c88  nop
  100171c8c  ldr     x25, [x8, #0xd30]
  100171c90  adrp    x8, #0x100416000
  100171c94  nop
  100171c98  ldr     x26, [x8, #0xd90]
  100171c9c  sub     x8, x29, #0x98
  100171ca0  str     x8, [sp, #0x28]
  100171ca4  add     x8, sp, #0xf8
  100171ca8  str     x8, [sp, #0x20]
loc_100171cac:
  100171cac  mov     x23, #0
loc_100171cb0:
  100171cb0  ldur    x8, [x29, #-0x88]
  100171cb4  ldr     x8, [x8]
  100171cb8  cmp     x8, x28
  100171cbc  b.eq    loc_100171cc8                            ; if (x8 == x28)
  100171cc0  mov     x0, x22
  100171cc4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 listItemArray])
loc_100171cc8:
  100171cc8  ldur    x8, [x29, #-0x90]
  100171ccc  ldr     x2, [x8, x23, lsl #3]
  100171cd0  mov     x0, x20
  100171cd4  mov     x1, x25
  100171cd8  bl      _objc_msgSend                            ; [TAGTypes valueToObject:x2]
  100171cdc  mov     x29, x29
  100171ce0  bl      _objc_retainAutoreleasedReturnValue
  100171ce4  mov     x27, x0
  100171ce8  cbz     x27, loc_10017220c                       ; if ([TAGTypes valueToObject:x2] == 0)
  100171cec  mov     x0, x21
  100171cf0  mov     x1, x26
  100171cf4  mov     x2, x27
  100171cf8  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[arg1 listItemArray] count]] addObject:[TAGTypes valueToObject:x2]]
  100171cfc  mov     x0, x27
  100171d00  bl      _objc_release
  100171d04  add     x23, x23, #1
  100171d08  cmp     x23, x24
  100171d0c  b.lo    loc_100171cb0                            ; if ((x23 + 1) <u [[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16])
  100171d10  mov     x4, #0x10
  100171d14  mov     x0, x22
  100171d18  ldp     x2, x1, [sp, #0x28]
  100171d1c  ldr     x3, [sp, #0x20]
  100171d20  bl      _objc_msgSend                            ; [[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16]
  100171d24  mov     x24, x0
  100171d28  cbnz    x24, loc_100171cac                       ; if ([[arg1 listItemArray] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16] != 0)
loc_100171d2c:
  100171d2c  mov     x0, x22
  100171d30  bl      _objc_release
  100171d34  mov     x0, x21
  100171d38  bl      _objc_retain
  100171d3c  mov     x20, x0
  100171d40  b       loc_100172220
loc_100171d44:  ; case 2
  100171d44  adrp    x8, #0x10041d000
  100171d48  nop
  100171d4c  ldr     x21, [x8, #0xa78]
  100171d50  mov     x0, x19
  100171d54  mov     x1, x21
  100171d58  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  100171d5c  mov     x29, x29
  100171d60  bl      _objc_retainAutoreleasedReturnValue
  100171d64  mov     x22, x0
  100171d68  adrp    x8, #0x100416000
  100171d6c  nop
  100171d70  ldr     x28, [x8, #0xe30]
  100171d74  mov     x1, x28
  100171d78  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  100171d7c  mov     x25, x0
  100171d80  adrp    x8, #0x10041d000
  100171d84  nop
  100171d88  ldr     x1, [x8, #0xa70]
  100171d8c  str     x1, [sp, #0x28]
  100171d90  mov     x0, x19
  100171d94  bl      _objc_msgSend                            ; [arg1 mapValueArray]
  100171d98  mov     x29, x29
  100171d9c  bl      _objc_retainAutoreleasedReturnValue
  100171da0  mov     x23, x0
  100171da4  mov     x1, x28
  100171da8  bl      _objc_msgSend                            ; [[arg1 mapValueArray] count]
  100171dac  mov     x24, x0
  100171db0  mov     x0, x23
  100171db4  bl      _objc_release
  100171db8  mov     x0, x22
  100171dbc  bl      _objc_release
  100171dc0  cmp     x25, x24
  100171dc4  b.ne    loc_100172250                            ; if ([[arg1 mapKeyArray] count] != [[arg1 mapValueArray] count])
  100171dc8  adrp    x8, #0x10041d000
  100171dcc  ldr     x25, [x8, #0xf90]                        ; class NSMutableDictionary
  100171dd0  nop
  100171dd4  nop
  100171dd8  ldr     x1, [x8, #0x9a0]
  100171ddc  mov     x0, x19
  100171de0  bl      _objc_msgSend                            ; [arg1 listItemArray]
  100171de4  mov     x29, x29
  100171de8  bl      _objc_retainAutoreleasedReturnValue
  100171dec  mov     x22, x0
  100171df0  mov     x1, x28
  100171df4  bl      _objc_msgSend                            ; [[arg1 listItemArray] count]
  100171df8  mov     x2, x0
  100171dfc  adrp    x8, #0x10041b000
  100171e00  nop
  100171e04  ldr     x1, [x8, #0x828]
  100171e08  mov     x0, x25
  100171e0c  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[arg1 listItemArray] count]]
  100171e10  mov     x29, x29
  100171e14  bl      _objc_retainAutoreleasedReturnValue
  100171e18  str     x0, [sp, #0x20]
  100171e1c  mov     x0, x22
  100171e20  bl      _objc_release
  100171e24  mov     x25, #0
  100171e28  adrp    x8, #0x100416000
  100171e2c  nop
  100171e30  ldr     x8, [x8, #0xc30]
  100171e34  str     x8, [sp, #0x30]
  100171e38  adrp    x8, #0x10041d000
  100171e3c  nop
  100171e40  ldr     x27, [x8, #0xd30]
  100171e44  adrp    x8, #0x100416000
  100171e48  nop
  100171e4c  ldr     x8, [x8, #0xdc8]
  100171e50  str     x8, [sp, #0x18]
  100171e54  b       loc_100171e74
loc_100171e58:
  100171e58  mov     x0, x24
  100171e5c  bl      _objc_release
  100171e60  mov     x0, x22
  100171e64  bl      _objc_release
  100171e68  add     x25, x25, #1
  100171e6c  mov     x28, x21
  100171e70  mov     x21, x26
loc_100171e74:
  100171e74  mov     x0, x19
  100171e78  mov     x1, x21
  100171e7c  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  100171e80  mov     x29, x29
  100171e84  bl      _objc_retainAutoreleasedReturnValue
  100171e88  mov     x22, x0
  100171e8c  mov     x1, x28
  100171e90  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] count]
  100171e94  mov     x23, x0
  100171e98  mov     x0, x22
  100171e9c  bl      _objc_release
  100171ea0  cmp     x25, x23
  100171ea4  b.hs    loc_1001722d0                            ; if (x25 >=u [[arg1 mapKeyArray] count])
  100171ea8  mov     x0, x19
  100171eac  mov     x1, x21
  100171eb0  bl      _objc_msgSend                            ; [arg1 mapKeyArray]
  100171eb4  mov     x26, x21
  100171eb8  mov     x21, x28
  100171ebc  mov     x29, x29
  100171ec0  bl      _objc_retainAutoreleasedReturnValue
  100171ec4  mov     x28, x0
  100171ec8  ldr     x1, [sp, #0x30]
  100171ecc  mov     x2, x25
  100171ed0  bl      _objc_msgSend                            ; [[arg1 mapKeyArray] objectAtIndex:x2]
  100171ed4  mov     x29, x29
  100171ed8  bl      _objc_retainAutoreleasedReturnValue
  100171edc  mov     x24, x0
  100171ee0  mov     x0, x20
  100171ee4  mov     x1, x27
  100171ee8  mov     x2, x24
  100171eec  bl      _objc_msgSend                            ; [TAGTypes valueToObject:[[arg1 mapKeyArray] objectAtIndex:x2]]
  100171ef0  mov     x29, x29
  100171ef4  bl      _objc_retainAutoreleasedReturnValue
  100171ef8  mov     x22, x0
  100171efc  mov     x0, x24
  100171f00  bl      _objc_release
  100171f04  mov     x0, x28
  100171f08  bl      _objc_release
  100171f0c  mov     x0, x19
  100171f10  ldr     x1, [sp, #0x28]
  100171f14  bl      _objc_msgSend                            ; [arg1 mapValueArray]
  100171f18  mov     x29, x29
  100171f1c  bl      _objc_retainAutoreleasedReturnValue
  100171f20  mov     x28, x0
  100171f24  ldr     x1, [sp, #0x30]
  100171f28  mov     x2, x25
  100171f2c  bl      _objc_msgSend                            ; [[arg1 mapValueArray] objectAtIndex:x2]
  100171f30  mov     x29, x29
  100171f34  bl      _objc_retainAutoreleasedReturnValue
  100171f38  mov     x23, x0
  100171f3c  mov     x0, x20
  100171f40  mov     x1, x27
  100171f44  mov     x2, x23
  100171f48  bl      _objc_msgSend                            ; [TAGTypes valueToObject:[[arg1 mapValueArray] objectAtIndex:x2]]
  100171f4c  mov     x29, x29
  100171f50  bl      _objc_retainAutoreleasedReturnValue
  100171f54  mov     x24, x0
  100171f58  mov     x0, x23
  100171f5c  bl      _objc_release
  100171f60  mov     x0, x28
  100171f64  bl      _objc_release
  100171f68  cbz     x22, loc_1001722a8                       ; if ([TAGTypes valueToObject:[[arg1 mapKeyArray] objectAtIndex:x2]] == 0)
  100171f6c  cbz     x24, loc_1001722a8                       ; if ([TAGTypes valueToObject:[[arg1 mapValueArray] objectAtIndex:x2]] == 0)
  100171f70  ldp     x1, x0, [sp, #0x18]
  100171f74  mov     x2, x24
  100171f78  mov     x3, x22
  100171f7c  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[arg1 listItemArray] count]] setObject:[TAGTypes valueToObject:[[arg1 mapValueArray] objectAtIndex:x2]] forKey:[TAGTypes valueToObject:[[arg1 mapKeyArray] objectAtIndex:x2]]]
  100171f80  b       loc_100171e58
  100171f84  mov     x20, x0
  100171f88  mov     x0, x24
  100171f8c  bl      _objc_release
  100171f90  b       loc_10017238c
loc_100171f94:  ; case 3
  100171f94  adrp    x8, #0x10041e000
  100171f98  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100171f9c  adrp    x8, #0x10041b000
  100171fa0  nop
  100171fa4  ldr     x1, [x8, #0xdd0]
  100171fa8  adrp    x2, #0x1003c8000
  100171fac  add     x2, x2, #0xf50                           ; @"Trying to convert a macro reference to object"
  100171fb0  bl      _objc_msgSend                            ; [TAGLog error:@"Trying to convert a macro reference to object"]
  100171fb4  b       loc_100171b50
loc_100171fb8:  ; case 4
  100171fb8  adrp    x8, #0x10041e000
  100171fbc  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100171fc0  adrp    x8, #0x10041b000
  100171fc4  nop
  100171fc8  ldr     x1, [x8, #0xdd0]
  100171fcc  adrp    x2, #0x1003c8000
  100171fd0  add     x2, x2, #0xf70                           ; @"Trying to convert a function ID to object"
  100171fd4  bl      _objc_msgSend                            ; [TAGLog error:@"Trying to convert a function ID to object"]
  100171fd8  b       loc_100171b50
loc_100171fdc:  ; case 5
  100171fdc  adrp    x8, #0x10041d000
  100171fe0  ldr     x20, [x8, #0xf68]                        ; class NSNumber
  100171fe4  nop
  100171fe8  nop
  100171fec  ldr     x1, [x8, #0xba8]
  100171ff0  mov     x0, x19
  100171ff4  bl      _objc_msgSend                            ; [arg1 integer]
  100171ff8  mov     x2, x0
  100171ffc  adrp    x8, #0x10041c000
  100172000  nop
  100172004  ldr     x1, [x8, #0x800]
  100172008  mov     x0, x20
  10017200c  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:[arg1 integer]]
  100172010  mov     x29, x29
  100172014  b       loc_100172200
loc_100172018:  ; case 6
  100172018  adrp    x8, #0x10041d000
  10017201c  ldr     x21, [x8, #0xf28]                        ; class NSMutableArray
  100172020  nop
  100172024  nop
  100172028  ldr     x22, [x8, #0x9e0]
  10017202c  mov     x0, x19
  100172030  mov     x1, x22
  100172034  bl      _objc_msgSend                            ; [arg1 templateTokenArray]
  100172038  mov     x29, x29
  10017203c  bl      _objc_retainAutoreleasedReturnValue
  100172040  mov     x23, x0
  100172044  adrp    x8, #0x100416000
  100172048  nop
  10017204c  ldr     x1, [x8, #0xe30]
  100172050  bl      _objc_msgSend                            ; [[arg1 templateTokenArray] count]
  100172054  mov     x2, x0
  100172058  adrp    x8, #0x10041b000
  10017205c  nop
  100172060  ldr     x1, [x8, #0x280]
  100172064  mov     x0, x21
  100172068  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[arg1 templateTokenArray] count]]
  10017206c  mov     x29, x29
  100172070  bl      _objc_retainAutoreleasedReturnValue
  100172074  mov     x21, x0
  100172078  mov     x0, x23
  10017207c  bl      _objc_release
  100172080  stp     xzr, xzr, [sp, #0xe8]
  100172084  stp     xzr, xzr, [sp, #0xd8]
  100172088  stp     xzr, xzr, [sp, #0xc8]
  10017208c  stp     xzr, xzr, [sp, #0xb8]
  100172090  mov     x0, x19
  100172094  mov     x1, x22
  100172098  bl      _objc_msgSend                            ; [arg1 templateTokenArray]
  10017209c  mov     x29, x29
  1001720a0  bl      _objc_retainAutoreleasedReturnValue
  1001720a4  str     x0, [sp, #0x30]
  1001720a8  adrp    x8, #0x100416000
  1001720ac  nop
  1001720b0  ldr     x1, [x8, #0xe00]
  1001720b4  str     x1, [sp, #0x28]
  1001720b8  add     x2, sp, #0xb8
  1001720bc  add     x3, sp, #0x38
  1001720c0  mov     x4, #0x10
  1001720c4  bl      _objc_msgSend                            ; [[arg1 templateTokenArray] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16]
  1001720c8  mov     x24, x0
  1001720cc  cbz     x24, loc_10017218c                       ; if ([[arg1 templateTokenArray] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16] == 0)
  1001720d0  ldr     x8, [sp, #0xc8]
  1001720d4  ldr     x28, [x8]
  1001720d8  adrp    x8, #0x10041d000
  1001720dc  nop
  1001720e0  adrp    x9, #0x100416000
  1001720e4  add     x9, x9, #0xd90                           ; &@selector(addObject:)
  1001720e8  ldr     x25, [x8, #0xc18]
  1001720ec  ldr     x26, [x9]
  1001720f0  adrp    x23, #0x10042d000
  1001720f4  add     x23, x23, #0xf60                         ; &g_10042df60
  1001720f8  add     x8, sp, #0xb8
  1001720fc  str     x8, [sp, #0x20]
  100172100  add     x8, sp, #0x38
  100172104  str     x8, [sp, #0x18]
loc_100172108:
  100172108  mov     x22, #0
loc_10017210c:
  10017210c  ldr     x8, [sp, #0xc8]
  100172110  ldr     x8, [x8]
  100172114  cmp     x8, x28
  100172118  b.eq    loc_100172124                            ; if (x8 == x28)
  10017211c  ldr     x0, [sp, #0x30]
  100172120  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 templateTokenArray])
loc_100172124:
  100172124  ldr     x8, [sp, #0xc0]
  100172128  ldr     x2, [x8, x22, lsl #3]
  10017212c  mov     x0, x20
  100172130  mov     x1, x25
  100172134  bl      _objc_msgSend                            ; [TAGTypes valueToString:x2]
  100172138  mov     x29, x29
  10017213c  bl      _objc_retainAutoreleasedReturnValue
  100172140  mov     x27, x0
  100172144  ldr     x8, [x23, #0x20]                         ; load g_10042df80
  100172148  cmp     x27, x8
  10017214c  b.eq    loc_100172228                            ; if ([TAGTypes valueToString:x2] == g_10042df80)
  100172150  mov     x0, x21
  100172154  mov     x1, x26
  100172158  mov     x2, x27
  10017215c  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[arg1 templateTokenArray] count]] addObject:[TAGTypes valueToString:x2]]
  100172160  mov     x0, x27
  100172164  bl      _objc_release
  100172168  add     x22, x22, #1
  10017216c  cmp     x22, x24
  100172170  b.lo    loc_10017210c                            ; if ((x22 + 1) <u [[arg1 templateTokenArray] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16])
  100172174  mov     x4, #0x10
  100172178  ldp     x1, x0, [sp, #0x28]
  10017217c  ldp     x3, x2, [sp, #0x18]
  100172180  bl      _objc_msgSend                            ; [[arg1 templateTokenArray] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16]
  100172184  mov     x24, x0
  100172188  cbnz    x24, loc_100172108                       ; if ([[arg1 templateTokenArray] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16] != 0)
loc_10017218c:
  10017218c  ldr     x0, [sp, #0x30]
  100172190  bl      _objc_release
  100172194  adrp    x8, #0x10041c000
  100172198  nop
  10017219c  ldr     x1, [x8, #0x1e8]
  1001721a0  adrp    x2, #0x1003b9000
  1001721a4  add     x2, x2, #0x870                           ; @""
  1001721a8  mov     x0, x21
  1001721ac  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[arg1 templateTokenArray] count]] componentsJoinedByString:@""]
  1001721b0  adrp    x26, #0x1003b0000
  1001721b4  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1001721b8  mov     x29, x29
  1001721bc  bl      _objc_retainAutoreleasedReturnValue
  1001721c0  mov     x20, x0
  1001721c4  b       loc_100172244
loc_1001721c8:  ; case 7
  1001721c8  adrp    x8, #0x10041e000
  1001721cc  ldr     x20, [x8, #0xb40]                        ; class TAGBoolean
  1001721d0  adrp    x8, #0x10041d000
  1001721d4  nop
  1001721d8  ldr     x1, [x8, #0x8e0]
  1001721dc  mov     x0, x19
  1001721e0  bl      _objc_msgSend                            ; [arg1 boolean]
  1001721e4  mov     x2, x0
  1001721e8  adrp    x8, #0x10041d000
  1001721ec  nop
  1001721f0  ldr     x1, [x8, #0xab8]
  1001721f4  mov     x0, x20
  1001721f8  bl      _objc_msgSend                            ; [TAGBoolean booleanWithBool:[arg1 boolean]]
  1001721fc  mov     x29, x29
loc_100172200:
  100172200  bl      _objc_retainAutoreleasedReturnValue
  100172204  mov     x20, x0
  100172208  b       loc_100171b54
loc_10017220c:
  10017220c  mov     x0, x27
  100172210  bl      _objc_release
  100172214  mov     x0, x22
  100172218  bl      _objc_release
  10017221c  mov     x20, #0
loc_100172220:
  100172220  mov     x0, x21
  100172224  b       loc_1001722c0
loc_100172228:
  100172228  mov     x0, x27
  10017222c  bl      _objc_release
  100172230  ldr     x0, [sp, #0x30]
  100172234  bl      _objc_release
  100172238  mov     x20, #0
  10017223c  adrp    x26, #0x1003b0000
  100172240  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
loc_100172244:
  100172244  mov     x0, x21
  100172248  bl      _objc_release
  10017224c  b       loc_100171b54
loc_100172250:
  100172250  adrp    x8, #0x10041e000
  100172254  ldr     x20, [x8, #0x538]                        ; class TAGLog
  100172258  adrp    x8, #0x10041d000
  10017225c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100172260  adrp    x8, #0x100416000
  100172264  nop
  100172268  ldr     x1, [x8, #0xee8]
  10017226c  str     x19, [sp]
  100172270  adrp    x2, #0x1003c8000
  100172274  add     x2, x2, #0xf30                           ; @"Converting an invalid value to object: %@"
  100172278  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Converting an invalid value to object: %@", arg1]
  10017227c  mov     x29, x29
  100172280  bl      _objc_retainAutoreleasedReturnValue
  100172284  mov     x21, x0
  100172288  adrp    x8, #0x10041b000
  10017228c  nop
  100172290  ldr     x1, [x8, #0xdd0]
  100172294  mov     x0, x20
  100172298  mov     x2, x21
  10017229c  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Converting an invalid value to object: %@", arg1]]
  1001722a0  b       loc_100171b48
  1001722a4  b       loc_1001723d8
loc_1001722a8:
  1001722a8  mov     x0, x24
  1001722ac  bl      _objc_release
  1001722b0  mov     x0, x22
  1001722b4  bl      _objc_release
  1001722b8  mov     x20, #0
loc_1001722bc:
  1001722bc  ldr     x0, [sp, #0x20]
loc_1001722c0:
  1001722c0  bl      _objc_release
  1001722c4  adrp    x26, #0x1003b0000
  1001722c8  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1001722cc  b       loc_100171b54
loc_1001722d0:
  1001722d0  ldr     x0, [sp, #0x20]
  1001722d4  bl      _objc_retain
  1001722d8  mov     x20, x0
  1001722dc  b       loc_1001722bc
  1001722e0  b       loc_1001723d8
  1001722e4  b       loc_1001723a0
  1001722e8  b       loc_1001723d8
  1001722ec  b       loc_100172304
  1001722f0  b       loc_100172304
  1001722f4  mov     x20, x0
  1001722f8  mov     x0, x27
  1001722fc  bl      _objc_release
  100172300  b       loc_100172308
loc_100172304:
  100172304  mov     x20, x0
loc_100172308:
  100172308  mov     x0, x22
  10017230c  bl      _objc_release
  100172310  b       loc_1001723dc
  100172314  mov     x20, x0
  100172318  b       loc_100172330
  10017231c  mov     x20, x0
  100172320  mov     x0, x23
  100172324  bl      _objc_release
  100172328  b       loc_100172330
  10017232c  mov     x20, x0
loc_100172330:
  100172330  mov     x0, x22
  100172334  bl      _objc_release
  100172338  b       loc_1001723ec
  10017233c  b       loc_100172368
  100172340  mov     x20, x0
  100172344  b       loc_100172394
  100172348  mov     x20, x0
  10017234c  b       loc_10017235c
  100172350  mov     x20, x0
  100172354  mov     x0, x24
  100172358  bl      _objc_release
loc_10017235c:
  10017235c  mov     x0, x28
  100172360  bl      _objc_release
  100172364  b       loc_100172394
loc_100172368:
  100172368  mov     x20, x0
  10017236c  b       loc_10017238c
  100172370  mov     x20, x0
  100172374  b       loc_100172384
  100172378  mov     x20, x0
  10017237c  mov     x0, x23
  100172380  bl      _objc_release
loc_100172384:
  100172384  mov     x0, x28
  100172388  bl      _objc_release
loc_10017238c:
  10017238c  mov     x0, x22
  100172390  bl      _objc_release
loc_100172394:
  100172394  ldr     x0, [sp, #0x20]
  100172398  bl      _objc_release
  10017239c  b       loc_1001723ec
loc_1001723a0:
  1001723a0  mov     x20, x0
  1001723a4  mov     x0, x23
  1001723a8  bl      _objc_release
  1001723ac  b       loc_1001723ec
  1001723b0  b       loc_1001723c8
  1001723b4  b       loc_1001723c8
  1001723b8  mov     x20, x0
  1001723bc  mov     x0, x27
  1001723c0  bl      _objc_release
  1001723c4  b       loc_1001723cc
loc_1001723c8:
  1001723c8  mov     x20, x0
loc_1001723cc:
  1001723cc  ldr     x0, [sp, #0x30]
  1001723d0  bl      _objc_release
  1001723d4  b       loc_1001723dc
loc_1001723d8:
  1001723d8  mov     x20, x0
loc_1001723dc:
  1001723dc  mov     x0, x21
  1001723e0  bl      _objc_release
  1001723e4  b       loc_1001723ec
  1001723e8  mov     x20, x0
loc_1001723ec:
  1001723ec  mov     x0, x19
  1001723f0  bl      _objc_release
  1001723f4  mov     x0, x20
  1001723f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001723fc  .word   jump table of 100171ba4, case 0 -> loc_100171ba8
  100172400  .word   jump table of 100171ba4, case 1 -> loc_100171bc4
  100172404  .word   jump table of 100171ba4, case 2 -> loc_100171d44
  100172408  .word   jump table of 100171ba4, case 3 -> loc_100171f94
  10017240c  .word   jump table of 100171ba4, case 4 -> loc_100171fb8
  100172410  .word   jump table of 100171ba4, case 5 -> loc_100171fdc
  100172414  .word   jump table of 100171ba4, case 6 -> loc_100172018
  100172418  .word   jump table of 100171ba4, case 7 -> loc_1001721c8
