// unit TAGModel — 10 functions
//   0x1001116ec     784  +[TAGModel entityWithDescription:]
//   0x1001119fc     748  +[TAGModel modelWithDescription:]
//   0x100111ce8    1784  +[TAGModel modelDescription]
//   0x1001123e0    1516  +[TAGModel previousModelDescription]
//   0x1001129cc    1056  +[TAGModel migrateToCurrentVersion:]
//   0x100112dec     616  +[TAGModel coordinatorWithURL:]
//   0x100113054     236  +[TAGModel contextWithURL:]
//   0x100113140     124  +[TAGModel model]
//   0x1001131bc     344  +[TAGModel requestHitsWithLimit:]
//   0x100113314     252  +[TAGModel requestHitsWithLimit:lastDispatchedBefore:]

; ======================================================================
; +[TAGModel entityWithDescription:]
; address 0x1001116ec  size 784  kind objc
; ======================================================================
  1001116ec  stp     x29, x30, [sp, #-0x10]!
  1001116f0  mov     x29, sp
  1001116f4  stp     x20, x19, [sp, #-0x10]!
  1001116f8  stp     x22, x21, [sp, #-0x10]!
  1001116fc  stp     x24, x23, [sp, #-0x10]!
  100111700  stp     x26, x25, [sp, #-0x10]!
  100111704  stp     x28, x27, [sp, #-0x10]!
  100111708  sub     sp, sp, #0x110
  10011170c  adrp    x8, #0x1003b0000
  100111710  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100111714  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100111718  stur    x8, [x29, #-0x58]
  10011171c  mov     x0, x2
  100111720  bl      _objc_retain
  100111724  mov     x19, x0
  100111728  adrp    x8, #0x10041b000
  10011172c  nop
  100111730  ldr     x1, [x8, #0xb70]
  100111734  adrp    x2, #0x1003c4000
  100111738  add     x2, x2, #0xe90                           ; @"properties"
  10011173c  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"properties"]
  100111740  str     x19, [sp, #0x18]
  100111744  mov     x29, x29
  100111748  bl      _objc_retainAutoreleasedReturnValue
  10011174c  mov     x19, x0
  100111750  adrp    x8, #0x10041d000
  100111754  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100111758  adrp    x8, #0x100418000
  10011175c  nop
  100111760  ldr     x1, [x8, #0x50]
  100111764  bl      _objc_msgSend                            ; [NSMutableArray array]
  100111768  mov     x29, x29
  10011176c  bl      _objc_retainAutoreleasedReturnValue
  100111770  str     x0, [sp, #0x40]
  100111774  stp     xzr, xzr, [x29, #-0x68]
  100111778  stp     xzr, xzr, [x29, #-0x78]
  10011177c  stp     xzr, xzr, [x29, #-0x88]
  100111780  stp     xzr, xzr, [x29, #-0x98]
  100111784  mov     x0, x19
  100111788  bl      _objc_retain
  10011178c  str     x0, [sp, #0x38]
  100111790  adrp    x8, #0x100416000
  100111794  nop
  100111798  ldr     x1, [x8, #0xe00]
  10011179c  str     x1, [sp, #0x30]
  1001117a0  sub     x2, x29, #0x98
  1001117a4  add     x3, sp, #0x48
  1001117a8  mov     x4, #0x10
  1001117ac  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  1001117b0  mov     x24, x0
  1001117b4  str     x19, [sp, #0x10]
  1001117b8  cbz     x24, loc_100111890                       ; if ([[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  1001117bc  ldur    x8, [x29, #-0x88]
  1001117c0  ldr     x19, [x8]
  1001117c4  adrp    x8, #0x100416000
  1001117c8  nop
  1001117cc  ldr     x25, [x8, #0xac8]
  1001117d0  adrp    x8, #0x100416000
  1001117d4  nop
  1001117d8  ldr     x26, [x8, #0xab8]
  1001117dc  adrp    x8, #0x100418000
  1001117e0  nop
  1001117e4  ldr     x27, [x8, #0x428]
  1001117e8  adrp    x8, #0x100416000
  1001117ec  nop
  1001117f0  ldr     x28, [x8, #0xd90]
  1001117f4  adrp    x22, #0x10041e000
  1001117f8  sub     x8, x29, #0x98
  1001117fc  str     x8, [sp, #0x28]
  100111800  add     x8, sp, #0x48
  100111804  str     x8, [sp, #0x20]
loc_100111808:
  100111808  mov     x21, #0
loc_10011180c:
  10011180c  ldur    x8, [x29, #-0x88]
  100111810  ldr     x8, [x8]
  100111814  cmp     x8, x19
  100111818  b.eq    loc_100111824                            ; if (x8 == x19)
  10011181c  ldr     x0, [sp, #0x38]
  100111820  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKeyedSubscript:@"properties"])
loc_100111824:
  100111824  ldur    x8, [x29, #-0x90]
  100111828  ldr     x20, [x8, x21, lsl #3]
  10011182c  ldr     x0, [x22, #0x610]                        ; class NSAttributeDescription
  100111830  mov     x1, x25
  100111834  bl      _objc_msgSend                            ; [NSAttributeDescription alloc]
  100111838  mov     x1, x26
  10011183c  bl      _objc_msgSend                            ; [[NSAttributeDescription alloc] init]
  100111840  mov     x23, x0
  100111844  mov     x0, x23
  100111848  mov     x1, x27
  10011184c  mov     x2, x20
  100111850  bl      _objc_msgSend                            ; [[[NSAttributeDescription alloc] init] setValuesForKeysWithDictionary:x2]
  100111854  ldr     x0, [sp, #0x40]
  100111858  mov     x1, x28
  10011185c  mov     x2, x23
  100111860  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[[NSAttributeDescription alloc] init]]
  100111864  mov     x0, x23
  100111868  bl      _objc_release
  10011186c  add     x21, x21, #1
  100111870  cmp     x21, x24
  100111874  b.lo    loc_10011180c                            ; if ((x21 + 1) <u [[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  100111878  mov     x4, #0x10
  10011187c  ldp     x1, x0, [sp, #0x30]
  100111880  ldp     x3, x2, [sp, #0x20]
  100111884  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  100111888  mov     x24, x0
  10011188c  cbnz    x24, loc_100111808                       ; if ([[arg1 objectForKeyedSubscript:@"properties"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_100111890:
  100111890  ldr     x0, [sp, #0x38]
  100111894  bl      _objc_release
  100111898  adrp    x8, #0x10041b000
  10011189c  nop
  1001118a0  ldr     x1, [x8, #0x1d8]
  1001118a4  ldr     x19, [sp, #0x18]
  1001118a8  mov     x0, x19
  1001118ac  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  1001118b0  mov     x20, x0
  1001118b4  adrp    x8, #0x10041b000
  1001118b8  nop
  1001118bc  ldr     x1, [x8, #0xe00]
  1001118c0  adrp    x3, #0x1003c4000
  1001118c4  add     x3, x3, #0xe90                           ; @"properties"
  1001118c8  mov     x0, x20
  1001118cc  ldr     x2, [sp, #0x40]
  1001118d0  bl      _objc_msgSend                            ; [[arg1 mutableCopy] setObject:[NSMutableArray array] forKeyedSubscript:@"properties"]
  1001118d4  adrp    x8, #0x10041e000
  1001118d8  ldr     x0, [x8, #0x500]                         ; class NSEntityDescription
  1001118dc  adrp    x8, #0x100416000
  1001118e0  nop
  1001118e4  ldr     x1, [x8, #0xac8]
  1001118e8  bl      _objc_msgSend                            ; [NSEntityDescription alloc]
  1001118ec  adrp    x8, #0x100416000
  1001118f0  nop
  1001118f4  ldr     x1, [x8, #0xab8]
  1001118f8  bl      _objc_msgSend                            ; [[NSEntityDescription alloc] init]
  1001118fc  mov     x23, x0
  100111900  adrp    x8, #0x100418000
  100111904  nop
  100111908  ldr     x1, [x8, #0x428]
  10011190c  mov     x0, x23
  100111910  mov     x2, x20
  100111914  bl      _objc_msgSend                            ; [[[NSEntityDescription alloc] init] setValuesForKeysWithDictionary:[arg1 mutableCopy]]
  100111918  mov     x0, x20
  10011191c  bl      _objc_release
  100111920  ldr     x0, [sp, #0x40]
  100111924  bl      _objc_release
  100111928  ldr     x0, [sp, #0x38]
  10011192c  bl      _objc_release
  100111930  mov     x0, x19
  100111934  bl      _objc_release
  100111938  adrp    x8, #0x1003b0000
  10011193c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100111940  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100111944  ldur    x9, [x29, #-0x58]
  100111948  sub     x8, x8, x9
  10011194c  cbnz    x8, loc_100111974                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100111950  mov     x0, x23
  100111954  sub     sp, x29, #0x50
  100111958  ldp     x28, x27, [sp], #0x10
  10011195c  ldp     x26, x25, [sp], #0x10
  100111960  ldp     x24, x23, [sp], #0x10
  100111964  ldp     x22, x21, [sp], #0x10
  100111968  ldp     x20, x19, [sp], #0x10
  10011196c  ldp     x29, x30, [sp], #0x10
  100111970  b       _objc_autoreleaseReturnValue
loc_100111974:
  100111974  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100111978:
  100111978  mov     x19, x0
  10011197c  b       loc_10011198c
  100111980  mov     x19, x0
  100111984  mov     x0, x23
  100111988  bl      _objc_release
loc_10011198c:
  10011198c  ldr     x0, [sp, #0x38]
loc_100111990:
  100111990  bl      _objc_release
loc_100111994:
  100111994  ldr     x0, [sp, #0x40]
  100111998  bl      _objc_release
loc_10011199c:
  10011199c  ldr     x0, [sp, #0x10]
  1001119a0  bl      _objc_release
loc_1001119a4:
  1001119a4  ldr     x0, [sp, #0x18]
  1001119a8  bl      _objc_release
  1001119ac  mov     x0, x19
  1001119b0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1001119b4  str     x19, [sp, #0x18]
  1001119b8  mov     x19, x0
  1001119bc  b       loc_1001119a4
  1001119c0  str     x19, [sp, #0x10]
  1001119c4  mov     x19, x0
  1001119c8  b       loc_10011199c
  1001119cc  str     x19, [sp, #0x10]
  1001119d0  b       loc_100111978
  1001119d4  b       loc_100111978
  1001119d8  mov     x19, x0
  1001119dc  b       loc_100111994
  1001119e0  mov     x19, x0
  1001119e4  b       loc_1001119f4
  1001119e8  mov     x19, x0
  1001119ec  mov     x0, x23
  1001119f0  bl      _objc_release
loc_1001119f4:
  1001119f4  mov     x0, x20
  1001119f8  b       loc_100111990

; ======================================================================
; +[TAGModel modelWithDescription:]
; address 0x1001119fc  size 748  kind objc
; ======================================================================
  1001119fc  stp     x29, x30, [sp, #-0x10]!
  100111a00  mov     x29, sp
  100111a04  stp     x20, x19, [sp, #-0x10]!
  100111a08  stp     x22, x21, [sp, #-0x10]!
  100111a0c  stp     x24, x23, [sp, #-0x10]!
  100111a10  stp     x26, x25, [sp, #-0x10]!
  100111a14  stp     x28, x27, [sp, #-0x10]!
  100111a18  sub     sp, sp, #0xf0
  100111a1c  mov     x23, x0
  100111a20  adrp    x8, #0x1003b0000
  100111a24  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100111a28  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100111a2c  stur    x8, [x29, #-0x58]
  100111a30  mov     x0, x2
  100111a34  bl      _objc_retain
  100111a38  mov     x19, x0
  100111a3c  adrp    x8, #0x10041b000
  100111a40  nop
  100111a44  ldr     x1, [x8, #0xb70]
  100111a48  adrp    x2, #0x1003c4000
  100111a4c  add     x2, x2, #0xeb0                           ; @"entities"
  100111a50  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"entities"]
  100111a54  mov     x29, x29
  100111a58  bl      _objc_retainAutoreleasedReturnValue
  100111a5c  mov     x20, x0
  100111a60  adrp    x8, #0x10041d000
  100111a64  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100111a68  adrp    x8, #0x100418000
  100111a6c  nop
  100111a70  ldr     x1, [x8, #0x50]
  100111a74  bl      _objc_msgSend                            ; [NSMutableArray array]
  100111a78  str     x19, [sp, #0x10]
  100111a7c  mov     x29, x29
  100111a80  bl      _objc_retainAutoreleasedReturnValue
  100111a84  mov     x21, x0
  100111a88  stp     xzr, xzr, [x29, #-0x68]
  100111a8c  stp     xzr, xzr, [x29, #-0x78]
  100111a90  stp     xzr, xzr, [x29, #-0x88]
  100111a94  stp     xzr, xzr, [x29, #-0x98]
  100111a98  mov     x0, x20
  100111a9c  bl      _objc_retain
  100111aa0  mov     x22, x0
  100111aa4  adrp    x8, #0x100416000
  100111aa8  nop
  100111aac  ldr     x1, [x8, #0xe00]
  100111ab0  str     x1, [sp, #0x20]
  100111ab4  sub     x2, x29, #0x98
  100111ab8  add     x3, sp, #0x28
  100111abc  mov     x4, #0x10
  100111ac0  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100111ac4  mov     x25, x0
  100111ac8  str     x20, [sp, #8]
  100111acc  cbz     x25, loc_100111b78                       ; if ([[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  100111ad0  ldur    x8, [x29, #-0x88]
  100111ad4  ldr     x24, [x8]
  100111ad8  adrp    x8, #0x10041c000
  100111adc  nop
  100111ae0  ldr     x26, [x8, #0x88]
  100111ae4  adrp    x8, #0x100416000
  100111ae8  nop
  100111aec  ldr     x27, [x8, #0xd90]
  100111af0  sub     x8, x29, #0x98
  100111af4  str     x8, [sp, #0x18]
  100111af8  add     x20, sp, #0x28
loc_100111afc:
  100111afc  mov     x28, #0
loc_100111b00:
  100111b00  ldur    x8, [x29, #-0x88]
  100111b04  ldr     x8, [x8]
  100111b08  cmp     x8, x24
  100111b0c  b.eq    loc_100111b18                            ; if (x8 == x24)
  100111b10  mov     x0, x22
  100111b14  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKeyedSubscript:@"entities"])
loc_100111b18:
  100111b18  ldur    x8, [x29, #-0x90]
  100111b1c  ldr     x2, [x8, x28, lsl #3]
  100111b20  mov     x0, x23
  100111b24  mov     x1, x26
  100111b28  bl      _objc_msgSend                            ; [TAGModel entityWithDescription:x2]
  100111b2c  mov     x29, x29
  100111b30  bl      _objc_retainAutoreleasedReturnValue
  100111b34  mov     x19, x0
  100111b38  mov     x0, x21
  100111b3c  mov     x1, x27
  100111b40  mov     x2, x19
  100111b44  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[TAGModel entityWithDescription:x2]]
  100111b48  mov     x0, x19
  100111b4c  bl      _objc_release
  100111b50  add     x28, x28, #1
  100111b54  cmp     x28, x25
  100111b58  b.lo    loc_100111b00                            ; if ((x28 + 1) <u [[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  100111b5c  mov     x4, #0x10
  100111b60  mov     x0, x22
  100111b64  ldp     x2, x1, [sp, #0x18]
  100111b68  mov     x3, x20
  100111b6c  bl      _objc_msgSend                            ; [[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100111b70  mov     x25, x0
  100111b74  cbnz    x25, loc_100111afc                       ; if ([[arg1 objectForKeyedSubscript:@"entities"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_100111b78:
  100111b78  mov     x0, x22
  100111b7c  bl      _objc_release
  100111b80  adrp    x8, #0x10041b000
  100111b84  nop
  100111b88  ldr     x1, [x8, #0x1d8]
  100111b8c  ldr     x19, [sp, #0x10]
  100111b90  mov     x0, x19
  100111b94  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  100111b98  mov     x23, x0
  100111b9c  adrp    x8, #0x10041b000
  100111ba0  nop
  100111ba4  ldr     x1, [x8, #0xe00]
  100111ba8  adrp    x3, #0x1003c4000
  100111bac  add     x3, x3, #0xeb0                           ; @"entities"
  100111bb0  mov     x0, x23
  100111bb4  mov     x2, x21
  100111bb8  bl      _objc_msgSend                            ; [[arg1 mutableCopy] setObject:[NSMutableArray array] forKeyedSubscript:@"entities"]
  100111bbc  adrp    x8, #0x10041e000
  100111bc0  ldr     x0, [x8, #0x618]                         ; class NSManagedObjectModel
  100111bc4  adrp    x8, #0x100416000
  100111bc8  nop
  100111bcc  ldr     x1, [x8, #0xac8]
  100111bd0  bl      _objc_msgSend                            ; [NSManagedObjectModel alloc]
  100111bd4  adrp    x8, #0x100416000
  100111bd8  nop
  100111bdc  ldr     x1, [x8, #0xab8]
  100111be0  bl      _objc_msgSend                            ; [[NSManagedObjectModel alloc] init]
  100111be4  mov     x24, x0
  100111be8  adrp    x8, #0x100418000
  100111bec  nop
  100111bf0  ldr     x1, [x8, #0x428]
  100111bf4  mov     x0, x24
  100111bf8  mov     x2, x23
  100111bfc  bl      _objc_msgSend                            ; [[[NSManagedObjectModel alloc] init] setValuesForKeysWithDictionary:[arg1 mutableCopy]]
  100111c00  mov     x0, x23
  100111c04  bl      _objc_release
  100111c08  mov     x0, x21
  100111c0c  bl      _objc_release
  100111c10  mov     x0, x22
  100111c14  bl      _objc_release
  100111c18  mov     x0, x19
  100111c1c  bl      _objc_release
  100111c20  adrp    x8, #0x1003b0000
  100111c24  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100111c28  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100111c2c  ldur    x9, [x29, #-0x58]
  100111c30  sub     x8, x8, x9
  100111c34  cbnz    x8, loc_100111c5c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100111c38  mov     x0, x24
  100111c3c  sub     sp, x29, #0x50
  100111c40  ldp     x28, x27, [sp], #0x10
  100111c44  ldp     x26, x25, [sp], #0x10
  100111c48  ldp     x24, x23, [sp], #0x10
  100111c4c  ldp     x22, x21, [sp], #0x10
  100111c50  ldp     x20, x19, [sp], #0x10
  100111c54  ldp     x29, x30, [sp], #0x10
  100111c58  b       _objc_autoreleaseReturnValue
loc_100111c5c:
  100111c5c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100111c60:
  100111c60  mov     x20, x0
  100111c64  b       loc_100111c74
  100111c68  mov     x20, x0
  100111c6c  mov     x0, x19
  100111c70  bl      _objc_release
loc_100111c74:
  100111c74  mov     x0, x22
  100111c78  bl      _objc_release
  100111c7c  ldr     x19, [sp, #0x10]
loc_100111c80:
  100111c80  mov     x0, x21
  100111c84  bl      _objc_release
loc_100111c88:
  100111c88  ldr     x0, [sp, #8]
  100111c8c  bl      _objc_release
loc_100111c90:
  100111c90  mov     x0, x19
  100111c94  bl      _objc_release
  100111c98  mov     x0, x20
  100111c9c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100111ca0  mov     x20, x0
  100111ca4  b       loc_100111c90
  100111ca8  str     x20, [sp, #8]
  100111cac  mov     x20, x0
  100111cb0  b       loc_100111c88
  100111cb4  str     x20, [sp, #8]
  100111cb8  b       loc_100111c60
  100111cbc  b       loc_100111c60
  100111cc0  mov     x20, x0
  100111cc4  b       loc_100111c80
  100111cc8  mov     x20, x0
  100111ccc  b       loc_100111cdc
  100111cd0  mov     x20, x0
  100111cd4  mov     x0, x24
  100111cd8  bl      _objc_release
loc_100111cdc:
  100111cdc  mov     x0, x23
  100111ce0  bl      _objc_release
  100111ce4  b       loc_100111c80

; ======================================================================
; +[TAGModel modelDescription]
; address 0x100111ce8  size 1784  kind objc
; ======================================================================
  100111ce8  stp     x29, x30, [sp, #-0x10]!
  100111cec  mov     x29, sp
  100111cf0  stp     x20, x19, [sp, #-0x10]!
  100111cf4  stp     x22, x21, [sp, #-0x10]!
  100111cf8  stp     x24, x23, [sp, #-0x10]!
  100111cfc  stp     x26, x25, [sp, #-0x10]!
  100111d00  stp     x28, x27, [sp, #-0x10]!
  100111d04  sub     sp, sp, #0x240
  100111d08  adrp    x8, #0x1003b0000
  100111d0c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100111d10  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100111d14  stur    x8, [x29, #-0x58]
  100111d18  adrp    x8, #0x1003c4000
  100111d1c  add     x8, x8, #0xeb0                           ; @"entities"
  100111d20  adrp    x21, #0x1003b9000
  100111d24  add     x21, x21, #0xdb0                         ; @"name"
  100111d28  stur    x8, [x29, #-0x68]
  100111d2c  stur    x21, [x29, #-0xa0]
  100111d30  adrp    x8, #0x1003c4000
  100111d34  add     x8, x8, #0xf0                            ; @"TAGHit"
  100111d38  adrp    x9, #0x1003c4000
  100111d3c  add     x9, x9, #0xed0                           ; @"managedObjectClassName"
  100111d40  stur    x8, [x29, #-0x88]
  100111d44  stur    x9, [x29, #-0x98]
  100111d48  stur    x8, [x29, #-0x80]
  100111d4c  adrp    x8, #0x1003c4000
  100111d50  add     x8, x8, #0xe90                           ; @"properties"
  100111d54  stur    x8, [x29, #-0x90]
  100111d58  str     x21, [sp, #0x188]
  100111d5c  adrp    x8, #0x1003c4000
  100111d60  add     x8, x8, #0x110                           ; @"dispatchURL"
  100111d64  stur    x8, [x29, #-0xe8]
  100111d68  adrp    x22, #0x1003c4000
  100111d6c  add     x22, x22, #0xef0                         ; @"attributeType"
  100111d70  str     x22, [sp, #0x190]
  100111d74  adrp    x19, #0x10041d000
  100111d78  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111d7c  adrp    x8, #0x100416000
  100111d80  nop
  100111d84  ldr     x25, [x8, #0xec0]
  100111d88  mov     w2, #0x2bc
  100111d8c  mov     x1, x25
  100111d90  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  100111d94  mov     x29, x29
  100111d98  bl      _objc_retainAutoreleasedReturnValue
  100111d9c  mov     x20, x0
  100111da0  adrp    x28, #0x1003c4000
  100111da4  add     x28, x28, #0xf10                         ; @"indexed"
  100111da8  stur    x20, [x29, #-0xe0]
  100111dac  str     x28, [sp, #0x198]
  100111db0  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111db4  adrp    x8, #0x100417000
  100111db8  nop
  100111dbc  ldr     x23, [x8, #0xb8]
  100111dc0  mov     w2, #1
  100111dc4  mov     x1, x23
  100111dc8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100111dcc  str     x20, [sp, #0x80]
  100111dd0  bl      _objc_retain
  100111dd4  mov     x26, x0
  100111dd8  stur    x26, [x29, #-0xd8]
  100111ddc  adrp    x24, #0x1003c4000
  100111de0  add     x24, x24, #0xf30                         ; @"optional"
  100111de4  str     x24, [sp, #0x1a0]
  100111de8  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111dec  mov     w2, #0
  100111df0  mov     x1, x23
  100111df4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100111df8  bl      _objc_retain
  100111dfc  str     x0, [sp, #0x78]
  100111e00  stur    x0, [x29, #-0xd0]
  100111e04  adrp    x27, #0x10041d000
  100111e08  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  100111e0c  adrp    x8, #0x100416000
  100111e10  nop
  100111e14  ldr     x20, [x8, #0xcd0]
  100111e18  sub     x2, x29, #0xe8
  100111e1c  add     x3, sp, #0x188
  100111e20  mov     x4, #4
  100111e24  mov     x1, x20
  100111e28  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xe8] forKeys:&sp[0x188] count:4]
  100111e2c  bl      _objc_retain
  100111e30  str     x0, [sp, #0x70]
  100111e34  stur    x0, [x29, #-0xc8]
  100111e38  str     x21, [sp, #0x148]
  100111e3c  adrp    x8, #0x1003c4000
  100111e40  add     x8, x8, #0xdf0                           ; @"timestamp"
  100111e44  str     x8, [sp, #0x168]
  100111e48  str     x22, [sp, #0x150]
  100111e4c  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111e50  mov     w2, #0x384
  100111e54  mov     x1, x25
  100111e58  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  100111e5c  bl      _objc_retain
  100111e60  str     x0, [sp, #0x68]
  100111e64  str     x0, [sp, #0x170]
  100111e68  str     x28, [sp, #0x158]
  100111e6c  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111e70  mov     w2, #1
  100111e74  mov     x1, x23
  100111e78  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100111e7c  bl      _objc_retain
  100111e80  str     x0, [sp, #0x60]
  100111e84  str     x0, [sp, #0x178]
  100111e88  str     x24, [sp, #0x160]
  100111e8c  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111e90  mov     w2, #0
  100111e94  mov     x1, x23
  100111e98  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100111e9c  bl      _objc_retain
  100111ea0  str     x0, [sp, #0x58]
  100111ea4  str     x0, [sp, #0x180]
  100111ea8  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  100111eac  add     x2, sp, #0x168
  100111eb0  add     x3, sp, #0x148
  100111eb4  mov     x4, #4
  100111eb8  mov     x1, x20
  100111ebc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x168] forKeys:&sp[0x148] count:4]
  100111ec0  bl      _objc_retain
  100111ec4  str     x0, [sp, #0x50]
  100111ec8  stur    x0, [x29, #-0xc0]
  100111ecc  str     x21, [sp, #0x108]
  100111ed0  adrp    x8, #0x1003c4000
  100111ed4  add     x8, x8, #0x130                           ; @"dispatchTime"
  100111ed8  str     x8, [sp, #0x128]
  100111edc  str     x22, [sp, #0x110]
  100111ee0  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111ee4  mov     w2, #0x384
  100111ee8  mov     x1, x25
  100111eec  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  100111ef0  bl      _objc_retain
  100111ef4  str     x0, [sp, #0x48]
  100111ef8  str     x0, [sp, #0x130]
  100111efc  str     x28, [sp, #0x118]
  100111f00  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111f04  mov     w2, #1
  100111f08  mov     x1, x23
  100111f0c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100111f10  bl      _objc_retain
  100111f14  str     x0, [sp, #0x40]
  100111f18  str     x0, [sp, #0x138]
  100111f1c  str     x24, [sp, #0x120]
  100111f20  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111f24  mov     w2, #1
  100111f28  mov     x1, x23
  100111f2c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100111f30  bl      _objc_retain
  100111f34  str     x0, [sp, #0x38]
  100111f38  str     x0, [sp, #0x140]
  100111f3c  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  100111f40  add     x2, sp, #0x128
  100111f44  add     x3, sp, #0x108
  100111f48  mov     x4, #4
  100111f4c  mov     x1, x20
  100111f50  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x128] forKeys:&sp[0x108] count:4]
  100111f54  bl      _objc_retain
  100111f58  str     x0, [sp, #0x30]
  100111f5c  stur    x0, [x29, #-0xb8]
  100111f60  str     x21, [sp, #0xc8]
  100111f64  adrp    x8, #0x1003c4000
  100111f68  add     x8, x8, #0x170                           ; @"retryCount"
  100111f6c  str     x8, [sp, #0xe8]
  100111f70  str     x22, [sp, #0xd0]
  100111f74  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111f78  mov     w2, #0x64
  100111f7c  mov     x1, x25
  100111f80  bl      _objc_msgSend                            ; [NSNumber numberWithInt:100]
  100111f84  bl      _objc_retain
  100111f88  str     x0, [sp, #0x28]
  100111f8c  str     x0, [sp, #0xf0]
  100111f90  str     x28, [sp, #0xd8]
  100111f94  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111f98  mov     w2, #0
  100111f9c  mov     x1, x23
  100111fa0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100111fa4  bl      _objc_retain
  100111fa8  str     x0, [sp, #0x20]
  100111fac  str     x0, [sp, #0xf8]
  100111fb0  str     x24, [sp, #0xe0]
  100111fb4  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100111fb8  mov     w2, #1
  100111fbc  mov     x1, x23
  100111fc0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100111fc4  str     x26, [sp, #0x18]
  100111fc8  bl      _objc_retain
  100111fcc  mov     x26, x0
  100111fd0  str     x26, [sp, #0x100]
  100111fd4  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  100111fd8  add     x2, sp, #0xe8
  100111fdc  add     x3, sp, #0xc8
  100111fe0  mov     x4, #4
  100111fe4  mov     x1, x20
  100111fe8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xe8] forKeys:&sp[0xc8] count:4]
  100111fec  bl      _objc_retain
  100111ff0  str     x0, [sp, #0x10]
  100111ff4  stur    x0, [x29, #-0xb0]
  100111ff8  str     x21, [sp, #0x88]
  100111ffc  adrp    x8, #0x1003c4000
  100112000  add     x8, x8, #0x150                           ; @"lastDispatchTime"
  100112004  str     x8, [sp, #0xa8]
  100112008  str     x22, [sp, #0x90]
  10011200c  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100112010  mov     w2, #0x384
  100112014  mov     x1, x25
  100112018  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  10011201c  bl      _objc_retain
  100112020  mov     x25, x0
  100112024  str     x25, [sp, #0xb0]
  100112028  str     x28, [sp, #0x98]
  10011202c  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100112030  mov     w2, #1
  100112034  mov     x1, x23
  100112038  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011203c  bl      _objc_retain
  100112040  mov     x28, x0
  100112044  str     x28, [sp, #0xb8]
  100112048  str     x24, [sp, #0xa0]
  10011204c  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100112050  mov     w2, #1
  100112054  mov     x1, x23
  100112058  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10011205c  str     x26, [sp, #8]
  100112060  bl      _objc_retain
  100112064  mov     x23, x0
  100112068  str     x23, [sp, #0xc0]
  10011206c  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  100112070  add     x2, sp, #0xa8
  100112074  add     x3, sp, #0x88
  100112078  mov     x4, #4
  10011207c  mov     x1, x20
  100112080  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xa8] forKeys:&sp[0x88] count:4]
  100112084  bl      _objc_retain
  100112088  mov     x19, x0
  10011208c  stur    x19, [x29, #-0xa8]
  100112090  adrp    x26, #0x10041d000
  100112094  ldr     x0, [x26, #0xf20]                        ; class NSArray
  100112098  adrp    x8, #0x100417000
  10011209c  nop
  1001120a0  ldr     x24, [x8, #0x3c8]
  1001120a4  sub     x2, x29, #0xc8
  1001120a8  mov     x3, #5
  1001120ac  mov     x1, x24
  1001120b0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0xc8] count:5]
  1001120b4  bl      _objc_retain
  1001120b8  mov     x21, x0
  1001120bc  stur    x21, [x29, #-0x78]
  1001120c0  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  1001120c4  sub     x2, x29, #0x88
  1001120c8  sub     x3, x29, #0xa0
  1001120cc  mov     x4, #3
  1001120d0  mov     x1, x20
  1001120d4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x88] forKeys:&x29[-0xa0] count:3]
  1001120d8  bl      _objc_retain
  1001120dc  mov     x22, x0
  1001120e0  stur    x22, [x29, #-0x70]
  1001120e4  ldr     x0, [x26, #0xf20]                        ; class NSArray
  1001120e8  sub     x2, x29, #0x70
  1001120ec  mov     x3, #1
  1001120f0  mov     x1, x24
  1001120f4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x70] count:1]
  1001120f8  bl      _objc_retain
  1001120fc  mov     x24, x0
  100112100  stur    x24, [x29, #-0x60]
  100112104  ldr     x0, [x27, #0xef8]                        ; class NSDictionary
  100112108  sub     x2, x29, #0x60
  10011210c  sub     x3, x29, #0x68
  100112110  mov     x4, #1
  100112114  mov     x1, x20
  100112118  ldr     x26, [sp, #0x80]
  10011211c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x60] forKeys:&x29[-0x68] count:1]
  100112120  mov     x29, x29
  100112124  bl      _objc_retainAutoreleasedReturnValue
  100112128  mov     x20, x0
  10011212c  mov     x0, x24
  100112130  bl      _objc_release
  100112134  mov     x0, x22
  100112138  bl      _objc_release
  10011213c  mov     x0, x21
  100112140  bl      _objc_release
  100112144  mov     x0, x19
  100112148  bl      _objc_release
  10011214c  mov     x0, x23
  100112150  bl      _objc_release
  100112154  mov     x0, x28
  100112158  bl      _objc_release
  10011215c  mov     x0, x25
  100112160  bl      _objc_release
  100112164  ldr     x0, [sp, #0x10]
  100112168  bl      _objc_release
  10011216c  ldr     x0, [sp, #8]
  100112170  bl      _objc_release
  100112174  ldr     x0, [sp, #0x20]
  100112178  bl      _objc_release
  10011217c  ldr     x0, [sp, #0x28]
  100112180  bl      _objc_release
  100112184  ldr     x0, [sp, #0x30]
  100112188  bl      _objc_release
  10011218c  ldr     x0, [sp, #0x38]
  100112190  bl      _objc_release
  100112194  ldr     x0, [sp, #0x40]
  100112198  bl      _objc_release
  10011219c  ldr     x0, [sp, #0x48]
  1001121a0  bl      _objc_release
  1001121a4  ldr     x0, [sp, #0x50]
  1001121a8  bl      _objc_release
  1001121ac  ldr     x0, [sp, #0x58]
  1001121b0  bl      _objc_release
  1001121b4  ldr     x0, [sp, #0x60]
  1001121b8  bl      _objc_release
  1001121bc  ldr     x0, [sp, #0x68]
  1001121c0  bl      _objc_release
  1001121c4  ldr     x0, [sp, #0x70]
  1001121c8  bl      _objc_release
  1001121cc  ldr     x0, [sp, #0x78]
  1001121d0  bl      _objc_release
  1001121d4  ldr     x0, [sp, #0x18]
  1001121d8  bl      _objc_release
  1001121dc  mov     x0, x26
  1001121e0  bl      _objc_release
  1001121e4  adrp    x8, #0x1003b0000
  1001121e8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1001121ec  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1001121f0  ldur    x9, [x29, #-0x58]
  1001121f4  sub     x8, x8, x9
  1001121f8  cbnz    x8, loc_100112220                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001121fc  mov     x0, x20
  100112200  sub     sp, x29, #0x50
  100112204  ldp     x28, x27, [sp], #0x10
  100112208  ldp     x26, x25, [sp], #0x10
  10011220c  ldp     x24, x23, [sp], #0x10
  100112210  ldp     x22, x21, [sp], #0x10
  100112214  ldp     x20, x19, [sp], #0x10
  100112218  ldp     x29, x30, [sp], #0x10
  10011221c  b       _objc_autoreleaseReturnValue
loc_100112220:
  100112220  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100112224  str     x20, [sp, #0x80]
  100112228  mov     x20, x0
  10011222c  b       loc_1001123d0
  100112230  str     x26, [sp, #0x18]
  100112234  mov     x20, x0
  100112238  b       loc_1001123c8
  10011223c  str     x26, [sp, #0x18]
  100112240  mov     x20, x0
  100112244  b       loc_1001123c0
  100112248  str     x26, [sp, #0x18]
  10011224c  mov     x20, x0
  100112250  b       loc_1001123b8
  100112254  str     x26, [sp, #0x18]
  100112258  mov     x20, x0
  10011225c  b       loc_1001123b0
  100112260  str     x26, [sp, #0x18]
  100112264  mov     x20, x0
  100112268  b       loc_1001123a8
  10011226c  str     x26, [sp, #0x18]
  100112270  mov     x20, x0
  100112274  b       loc_1001123a0
  100112278  str     x26, [sp, #0x18]
  10011227c  mov     x20, x0
  100112280  b       loc_100112398
  100112284  str     x26, [sp, #0x18]
  100112288  mov     x20, x0
  10011228c  b       loc_100112390
  100112290  str     x26, [sp, #0x18]
  100112294  mov     x20, x0
  100112298  b       loc_100112388
  10011229c  str     x26, [sp, #0x18]
  1001122a0  mov     x20, x0
  1001122a4  b       loc_100112380
  1001122a8  str     x26, [sp, #0x18]
  1001122ac  mov     x20, x0
  1001122b0  b       loc_100112378
  1001122b4  str     x26, [sp, #0x18]
  1001122b8  mov     x20, x0
  1001122bc  b       loc_100112370
  1001122c0  str     x26, [sp, #0x18]
  1001122c4  mov     x20, x0
  1001122c8  b       loc_100112368
  1001122cc  str     x26, [sp, #8]
  1001122d0  mov     x20, x0
  1001122d4  b       loc_100112360
  1001122d8  str     x26, [sp, #8]
  1001122dc  mov     x20, x0
  1001122e0  b       loc_100112358
  1001122e4  str     x26, [sp, #8]
  1001122e8  mov     x20, x0
  1001122ec  b       loc_100112350
  1001122f0  str     x26, [sp, #8]
  1001122f4  mov     x20, x0
  1001122f8  b       loc_100112348
  1001122fc  mov     x20, x0
  100112300  b       loc_100112340
  100112304  mov     x20, x0
  100112308  b       loc_100112338
  10011230c  mov     x20, x0
  100112310  b       loc_100112330
  100112314  mov     x20, x0
  100112318  b       loc_100112328
  10011231c  mov     x20, x0
  100112320  mov     x0, x24
  100112324  bl      _objc_release
loc_100112328:
  100112328  mov     x0, x22
  10011232c  bl      _objc_release
loc_100112330:
  100112330  mov     x0, x21
  100112334  bl      _objc_release
loc_100112338:
  100112338  mov     x0, x19
  10011233c  bl      _objc_release
loc_100112340:
  100112340  mov     x0, x23
  100112344  bl      _objc_release
loc_100112348:
  100112348  mov     x0, x28
  10011234c  bl      _objc_release
loc_100112350:
  100112350  mov     x0, x25
  100112354  bl      _objc_release
loc_100112358:
  100112358  ldr     x0, [sp, #0x10]
  10011235c  bl      _objc_release
loc_100112360:
  100112360  ldr     x0, [sp, #8]
  100112364  bl      _objc_release
loc_100112368:
  100112368  ldr     x0, [sp, #0x20]
  10011236c  bl      _objc_release
loc_100112370:
  100112370  ldr     x0, [sp, #0x28]
  100112374  bl      _objc_release
loc_100112378:
  100112378  ldr     x0, [sp, #0x30]
  10011237c  bl      _objc_release
loc_100112380:
  100112380  ldr     x0, [sp, #0x38]
  100112384  bl      _objc_release
loc_100112388:
  100112388  ldr     x0, [sp, #0x40]
  10011238c  bl      _objc_release
loc_100112390:
  100112390  ldr     x0, [sp, #0x48]
  100112394  bl      _objc_release
loc_100112398:
  100112398  ldr     x0, [sp, #0x50]
  10011239c  bl      _objc_release
loc_1001123a0:
  1001123a0  ldr     x0, [sp, #0x58]
  1001123a4  bl      _objc_release
loc_1001123a8:
  1001123a8  ldr     x0, [sp, #0x60]
  1001123ac  bl      _objc_release
loc_1001123b0:
  1001123b0  ldr     x0, [sp, #0x68]
  1001123b4  bl      _objc_release
loc_1001123b8:
  1001123b8  ldr     x0, [sp, #0x70]
  1001123bc  bl      _objc_release
loc_1001123c0:
  1001123c0  ldr     x0, [sp, #0x78]
  1001123c4  bl      _objc_release
loc_1001123c8:
  1001123c8  ldr     x0, [sp, #0x18]
  1001123cc  bl      _objc_release
loc_1001123d0:
  1001123d0  ldr     x0, [sp, #0x80]
  1001123d4  bl      _objc_release
  1001123d8  mov     x0, x20
  1001123dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel previousModelDescription]
; address 0x1001123e0  size 1516  kind objc
; ======================================================================
  1001123e0  stp     x29, x30, [sp, #-0x10]!
  1001123e4  mov     x29, sp
  1001123e8  stp     x20, x19, [sp, #-0x10]!
  1001123ec  stp     x22, x21, [sp, #-0x10]!
  1001123f0  stp     x24, x23, [sp, #-0x10]!
  1001123f4  stp     x26, x25, [sp, #-0x10]!
  1001123f8  stp     x28, x27, [sp, #-0x10]!
  1001123fc  sub     sp, sp, #0x1e0
  100112400  adrp    x8, #0x1003b0000
  100112404  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100112408  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011240c  stur    x8, [x29, #-0x58]
  100112410  adrp    x8, #0x1003c4000
  100112414  add     x8, x8, #0xeb0                           ; @"entities"
  100112418  adrp    x27, #0x1003b9000
  10011241c  add     x27, x27, #0xdb0                         ; @"name"
  100112420  stur    x8, [x29, #-0x68]
  100112424  stur    x27, [x29, #-0xa0]
  100112428  adrp    x8, #0x1003c4000
  10011242c  add     x8, x8, #0xf0                            ; @"TAGHit"
  100112430  adrp    x9, #0x1003c4000
  100112434  add     x9, x9, #0xed0                           ; @"managedObjectClassName"
  100112438  stur    x8, [x29, #-0x88]
  10011243c  stur    x9, [x29, #-0x98]
  100112440  stur    x8, [x29, #-0x80]
  100112444  adrp    x8, #0x1003c4000
  100112448  add     x8, x8, #0xe90                           ; @"properties"
  10011244c  stur    x8, [x29, #-0x90]
  100112450  stur    x27, [x29, #-0x100]
  100112454  adrp    x8, #0x1003c4000
  100112458  add     x8, x8, #0x110                           ; @"dispatchURL"
  10011245c  stur    x8, [x29, #-0xe0]
  100112460  adrp    x28, #0x1003c4000
  100112464  add     x28, x28, #0xef0                         ; @"attributeType"
  100112468  stur    x28, [x29, #-0xf8]
  10011246c  adrp    x25, #0x10041d000
  100112470  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100112474  adrp    x8, #0x100416000
  100112478  nop
  10011247c  ldr     x23, [x8, #0xec0]
  100112480  mov     w2, #0x2bc
  100112484  mov     x1, x23
  100112488  bl      _objc_msgSend                            ; [NSNumber numberWithInt:700]
  10011248c  mov     x29, x29
  100112490  bl      _objc_retainAutoreleasedReturnValue
  100112494  mov     x19, x0
  100112498  adrp    x26, #0x1003c4000
  10011249c  add     x26, x26, #0xf10                         ; @"indexed"
  1001124a0  stur    x19, [x29, #-0xd8]
  1001124a4  stur    x26, [x29, #-0xf0]
  1001124a8  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1001124ac  adrp    x8, #0x100417000
  1001124b0  nop
  1001124b4  ldr     x22, [x8, #0xb8]
  1001124b8  mov     w2, #1
  1001124bc  mov     x1, x22
  1001124c0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1001124c4  str     x19, [sp, #0x68]
  1001124c8  bl      _objc_retain
  1001124cc  mov     x21, x0
  1001124d0  stur    x21, [x29, #-0xd0]
  1001124d4  adrp    x20, #0x1003c4000
  1001124d8  add     x20, x20, #0xf30                         ; @"optional"
  1001124dc  stur    x20, [x29, #-0xe8]
  1001124e0  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1001124e4  mov     w2, #0
  1001124e8  mov     x1, x22
  1001124ec  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1001124f0  bl      _objc_retain
  1001124f4  str     x0, [sp, #0x60]
  1001124f8  stur    x0, [x29, #-0xc8]
  1001124fc  adrp    x24, #0x10041d000
  100112500  ldr     x0, [x24, #0xef8]                        ; class NSDictionary
  100112504  adrp    x8, #0x100416000
  100112508  nop
  10011250c  ldr     x19, [x8, #0xcd0]
  100112510  sub     x2, x29, #0xe0
  100112514  sub     x3, x29, #0x100
  100112518  mov     x4, #4
  10011251c  mov     x1, x19
  100112520  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xe0] forKeys:&x29[-0x100] count:4]
  100112524  bl      _objc_retain
  100112528  str     x0, [sp, #0x58]
  10011252c  stur    x0, [x29, #-0xc0]
  100112530  str     x27, [sp, #0xf0]
  100112534  adrp    x8, #0x1003c4000
  100112538  add     x8, x8, #0xdf0                           ; @"timestamp"
  10011253c  str     x8, [sp, #0x110]
  100112540  str     x28, [sp, #0xf8]
  100112544  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100112548  mov     w2, #0x384
  10011254c  mov     x1, x23
  100112550  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  100112554  bl      _objc_retain
  100112558  str     x0, [sp, #0x50]
  10011255c  str     x0, [sp, #0x118]
  100112560  str     x26, [sp, #0x100]
  100112564  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100112568  mov     w2, #1
  10011256c  mov     x1, x22
  100112570  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100112574  bl      _objc_retain
  100112578  str     x0, [sp, #0x48]
  10011257c  str     x0, [sp, #0x120]
  100112580  str     x20, [sp, #0x108]
  100112584  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100112588  mov     w2, #0
  10011258c  mov     x1, x22
  100112590  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100112594  bl      _objc_retain
  100112598  str     x0, [sp, #0x40]
  10011259c  str     x0, [sp, #0x128]
  1001125a0  ldr     x0, [x24, #0xef8]                        ; class NSDictionary
  1001125a4  add     x2, sp, #0x110
  1001125a8  add     x3, sp, #0xf0
  1001125ac  mov     x4, #4
  1001125b0  mov     x1, x19
  1001125b4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x110] forKeys:&sp[0xf0] count:4]
  1001125b8  bl      _objc_retain
  1001125bc  str     x0, [sp, #0x38]
  1001125c0  stur    x0, [x29, #-0xb8]
  1001125c4  str     x27, [sp, #0xb0]
  1001125c8  adrp    x8, #0x1003c4000
  1001125cc  add     x8, x8, #0x130                           ; @"dispatchTime"
  1001125d0  str     x8, [sp, #0xd0]
  1001125d4  str     x28, [sp, #0xb8]
  1001125d8  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1001125dc  mov     w2, #0x384
  1001125e0  mov     x1, x23
  1001125e4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:900]
  1001125e8  bl      _objc_retain
  1001125ec  str     x0, [sp, #0x30]
  1001125f0  str     x0, [sp, #0xd8]
  1001125f4  str     x26, [sp, #0xc0]
  1001125f8  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1001125fc  mov     w2, #1
  100112600  mov     x1, x22
  100112604  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100112608  bl      _objc_retain
  10011260c  str     x0, [sp, #0x28]
  100112610  str     x0, [sp, #0xe0]
  100112614  str     x20, [sp, #0xc8]
  100112618  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10011261c  mov     w2, #1
  100112620  mov     x1, x22
  100112624  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100112628  str     x21, [sp, #0x20]
  10011262c  bl      _objc_retain
  100112630  mov     x21, x0
  100112634  str     x21, [sp, #0xe8]
  100112638  ldr     x0, [x24, #0xef8]                        ; class NSDictionary
  10011263c  add     x2, sp, #0xd0
  100112640  add     x3, sp, #0xb0
  100112644  mov     x4, #4
  100112648  mov     x1, x19
  10011264c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xd0] forKeys:&sp[0xb0] count:4]
  100112650  bl      _objc_retain
  100112654  str     x0, [sp, #0x18]
  100112658  stur    x0, [x29, #-0xb0]
  10011265c  str     x27, [sp, #0x70]
  100112660  adrp    x8, #0x1003c4000
  100112664  add     x8, x8, #0x170                           ; @"retryCount"
  100112668  str     x8, [sp, #0x90]
  10011266c  str     x28, [sp, #0x78]
  100112670  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100112674  mov     w2, #0x64
  100112678  mov     x1, x23
  10011267c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:100]
  100112680  str     x21, [sp, #0x10]
  100112684  bl      _objc_retain
  100112688  mov     x23, x0
  10011268c  str     x23, [sp, #0x98]
  100112690  str     x26, [sp, #0x80]
  100112694  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100112698  mov     w2, #0
  10011269c  mov     x1, x22
  1001126a0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1001126a4  bl      _objc_retain
  1001126a8  mov     x21, x0
  1001126ac  str     x21, [sp, #0xa0]
  1001126b0  str     x20, [sp, #0x88]
  1001126b4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1001126b8  mov     w2, #1
  1001126bc  mov     x1, x22
  1001126c0  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1001126c4  bl      _objc_retain
  1001126c8  mov     x22, x0
  1001126cc  str     x22, [sp, #0xa8]
  1001126d0  ldr     x0, [x24, #0xef8]                        ; class NSDictionary
  1001126d4  add     x2, sp, #0x90
  1001126d8  add     x3, sp, #0x70
  1001126dc  mov     x4, #4
  1001126e0  mov     x1, x19
  1001126e4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x90] forKeys:&sp[0x70] count:4]
  1001126e8  bl      _objc_retain
  1001126ec  mov     x25, x0
  1001126f0  stur    x25, [x29, #-0xa8]
  1001126f4  adrp    x20, #0x10041d000
  1001126f8  ldr     x0, [x20, #0xf20]                        ; class NSArray
  1001126fc  adrp    x8, #0x100417000
  100112700  nop
  100112704  ldr     x28, [x8, #0x3c8]
  100112708  sub     x2, x29, #0xc0
  10011270c  mov     x3, #4
  100112710  mov     x1, x28
  100112714  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0xc0] count:4]
  100112718  bl      _objc_retain
  10011271c  mov     x26, x0
  100112720  stur    x26, [x29, #-0x78]
  100112724  ldr     x0, [x24, #0xef8]                        ; class NSDictionary
  100112728  sub     x2, x29, #0x88
  10011272c  sub     x3, x29, #0xa0
  100112730  mov     x4, #3
  100112734  mov     x1, x19
  100112738  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x88] forKeys:&x29[-0xa0] count:3]
  10011273c  bl      _objc_retain
  100112740  mov     x27, x0
  100112744  stur    x27, [x29, #-0x70]
  100112748  ldr     x0, [x20, #0xf20]                        ; class NSArray
  10011274c  sub     x2, x29, #0x70
  100112750  mov     x3, #1
  100112754  mov     x1, x28
  100112758  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x70] count:1]
  10011275c  bl      _objc_retain
  100112760  mov     x28, x0
  100112764  stur    x28, [x29, #-0x60]
  100112768  ldr     x0, [x24, #0xef8]                        ; class NSDictionary
  10011276c  sub     x2, x29, #0x60
  100112770  sub     x3, x29, #0x68
  100112774  mov     x4, #1
  100112778  mov     x1, x19
  10011277c  ldr     x20, [sp, #0x68]
  100112780  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x60] forKeys:&x29[-0x68] count:1]
  100112784  mov     x29, x29
  100112788  bl      _objc_retainAutoreleasedReturnValue
  10011278c  mov     x19, x0
  100112790  mov     x0, x28
  100112794  bl      _objc_release
  100112798  mov     x0, x27
  10011279c  bl      _objc_release
  1001127a0  mov     x0, x26
  1001127a4  bl      _objc_release
  1001127a8  mov     x0, x25
  1001127ac  bl      _objc_release
  1001127b0  mov     x0, x22
  1001127b4  bl      _objc_release
  1001127b8  mov     x0, x21
  1001127bc  bl      _objc_release
  1001127c0  mov     x0, x23
  1001127c4  bl      _objc_release
  1001127c8  ldr     x0, [sp, #0x18]
  1001127cc  bl      _objc_release
  1001127d0  ldr     x0, [sp, #0x10]
  1001127d4  bl      _objc_release
  1001127d8  ldr     x0, [sp, #0x28]
  1001127dc  bl      _objc_release
  1001127e0  ldr     x0, [sp, #0x30]
  1001127e4  bl      _objc_release
  1001127e8  ldr     x0, [sp, #0x38]
  1001127ec  bl      _objc_release
  1001127f0  ldr     x0, [sp, #0x40]
  1001127f4  bl      _objc_release
  1001127f8  ldr     x0, [sp, #0x48]
  1001127fc  bl      _objc_release
  100112800  ldr     x0, [sp, #0x50]
  100112804  bl      _objc_release
  100112808  ldr     x0, [sp, #0x58]
  10011280c  bl      _objc_release
  100112810  ldr     x0, [sp, #0x60]
  100112814  bl      _objc_release
  100112818  ldr     x0, [sp, #0x20]
  10011281c  bl      _objc_release
  100112820  mov     x0, x20
  100112824  bl      _objc_release
  100112828  adrp    x8, #0x1003b0000
  10011282c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100112830  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100112834  ldur    x9, [x29, #-0x58]
  100112838  sub     x8, x8, x9
  10011283c  cbnz    x8, loc_100112864                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100112840  mov     x0, x19
  100112844  sub     sp, x29, #0x50
  100112848  ldp     x28, x27, [sp], #0x10
  10011284c  ldp     x26, x25, [sp], #0x10
  100112850  ldp     x24, x23, [sp], #0x10
  100112854  ldp     x22, x21, [sp], #0x10
  100112858  ldp     x20, x19, [sp], #0x10
  10011285c  ldp     x29, x30, [sp], #0x10
  100112860  b       _objc_autoreleaseReturnValue
loc_100112864:
  100112864  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100112868  str     x19, [sp, #0x68]
  10011286c  mov     x19, x0
  100112870  b       loc_1001129bc
  100112874  str     x21, [sp, #0x20]
  100112878  mov     x19, x0
  10011287c  b       loc_1001129b4
  100112880  str     x21, [sp, #0x20]
  100112884  mov     x19, x0
  100112888  b       loc_1001129ac
  10011288c  str     x21, [sp, #0x20]
  100112890  mov     x19, x0
  100112894  b       loc_1001129a4
  100112898  str     x21, [sp, #0x20]
  10011289c  mov     x19, x0
  1001128a0  b       loc_10011299c
  1001128a4  str     x21, [sp, #0x20]
  1001128a8  mov     x19, x0
  1001128ac  b       loc_100112994
  1001128b0  str     x21, [sp, #0x20]
  1001128b4  mov     x19, x0
  1001128b8  b       loc_10011298c
  1001128bc  str     x21, [sp, #0x20]
  1001128c0  mov     x19, x0
  1001128c4  b       loc_100112984
  1001128c8  str     x21, [sp, #0x20]
  1001128cc  mov     x19, x0
  1001128d0  b       loc_10011297c
  1001128d4  str     x21, [sp, #0x20]
  1001128d8  mov     x19, x0
  1001128dc  b       loc_100112974
  1001128e0  str     x21, [sp, #0x10]
  1001128e4  mov     x19, x0
  1001128e8  b       loc_10011296c
  1001128ec  str     x21, [sp, #0x10]
  1001128f0  mov     x19, x0
  1001128f4  b       loc_100112964
  1001128f8  mov     x19, x0
  1001128fc  b       loc_10011295c
  100112900  mov     x19, x0
  100112904  b       loc_100112954
  100112908  mov     x19, x0
  10011290c  b       loc_10011294c
  100112910  mov     x19, x0
  100112914  b       loc_100112944
  100112918  mov     x19, x0
  10011291c  b       loc_10011293c
  100112920  mov     x19, x0
  100112924  b       loc_100112934
  100112928  mov     x19, x0
  10011292c  mov     x0, x28
  100112930  bl      _objc_release
loc_100112934:
  100112934  mov     x0, x27
  100112938  bl      _objc_release
loc_10011293c:
  10011293c  mov     x0, x26
  100112940  bl      _objc_release
loc_100112944:
  100112944  mov     x0, x25
  100112948  bl      _objc_release
loc_10011294c:
  10011294c  mov     x0, x22
  100112950  bl      _objc_release
loc_100112954:
  100112954  mov     x0, x21
  100112958  bl      _objc_release
loc_10011295c:
  10011295c  mov     x0, x23
  100112960  bl      _objc_release
loc_100112964:
  100112964  ldr     x0, [sp, #0x18]
  100112968  bl      _objc_release
loc_10011296c:
  10011296c  ldr     x0, [sp, #0x10]
  100112970  bl      _objc_release
loc_100112974:
  100112974  ldr     x0, [sp, #0x28]
  100112978  bl      _objc_release
loc_10011297c:
  10011297c  ldr     x0, [sp, #0x30]
  100112980  bl      _objc_release
loc_100112984:
  100112984  ldr     x0, [sp, #0x38]
  100112988  bl      _objc_release
loc_10011298c:
  10011298c  ldr     x0, [sp, #0x40]
  100112990  bl      _objc_release
loc_100112994:
  100112994  ldr     x0, [sp, #0x48]
  100112998  bl      _objc_release
loc_10011299c:
  10011299c  ldr     x0, [sp, #0x50]
  1001129a0  bl      _objc_release
loc_1001129a4:
  1001129a4  ldr     x0, [sp, #0x58]
  1001129a8  bl      _objc_release
loc_1001129ac:
  1001129ac  ldr     x0, [sp, #0x60]
  1001129b0  bl      _objc_release
loc_1001129b4:
  1001129b4  ldr     x0, [sp, #0x20]
  1001129b8  bl      _objc_release
loc_1001129bc:
  1001129bc  ldr     x0, [sp, #0x68]
  1001129c0  bl      _objc_release
  1001129c4  mov     x0, x19
  1001129c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel migrateToCurrentVersion:]
; address 0x1001129cc  size 1056  kind objc
; ======================================================================
  1001129cc  stp     x29, x30, [sp, #-0x10]!
  1001129d0  mov     x29, sp
  1001129d4  stp     x20, x19, [sp, #-0x10]!
  1001129d8  stp     x22, x21, [sp, #-0x10]!
  1001129dc  stp     x24, x23, [sp, #-0x10]!
  1001129e0  stp     x26, x25, [sp, #-0x10]!
  1001129e4  stp     x28, x27, [sp, #-0x10]!
  1001129e8  sub     sp, sp, #0x30
  1001129ec  mov     x21, x0
  1001129f0  mov     x0, x2
  1001129f4  bl      _objc_retain
  1001129f8  mov     x19, x0
  1001129fc  adrp    x8, #0x10041b000
  100112a00  nop
  100112a04  ldr     x1, [x8, #0xb90]
  100112a08  mov     x0, x21
  100112a0c  bl      _objc_msgSend                            ; [TAGModel previousModelDescription]
  100112a10  mov     x29, x29
  100112a14  bl      _objc_retainAutoreleasedReturnValue
  100112a18  mov     x22, x0
  100112a1c  adrp    x8, #0x10041c000
  100112a20  nop
  100112a24  ldr     x1, [x8, #0x78]
  100112a28  mov     x0, x21
  100112a2c  mov     x2, x22
  100112a30  bl      _objc_msgSend                            ; [TAGModel modelWithDescription:[TAGModel previousModelDescription]]
  100112a34  mov     x29, x29
  100112a38  bl      _objc_retainAutoreleasedReturnValue
  100112a3c  mov     x20, x0
  100112a40  mov     x0, x22
  100112a44  bl      _objc_release
  100112a48  adrp    x8, #0x100418000
  100112a4c  nop
  100112a50  ldr     x1, [x8, #0x9e8]
  100112a54  mov     x0, x21
  100112a58  bl      _objc_msgSend                            ; [TAGModel model]
  100112a5c  mov     x29, x29
  100112a60  bl      _objc_retainAutoreleasedReturnValue
  100112a64  mov     x21, x0
  100112a68  adrp    x8, #0x10041e000
  100112a6c  ldr     x0, [x8, #0x558]                         ; class NSMappingModel
  100112a70  adrp    x8, #0x10041b000
  100112a74  nop
  100112a78  ldr     x1, [x8, #0xb98]
  100112a7c  mov     x4, #0
  100112a80  mov     x2, x20
  100112a84  mov     x3, x21
  100112a88  bl      _objc_msgSend                            ; [NSMappingModel inferredMappingModelForSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model] error:0]
  100112a8c  mov     x29, x29
  100112a90  bl      _objc_retainAutoreleasedReturnValue
  100112a94  mov     x22, x0
  100112a98  cbz     x22, loc_100112c88                       ; if ([NSMappingModel inferredMappingModelForSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model] error:0] == 0)
  100112a9c  adrp    x8, #0x10041e000
  100112aa0  ldr     x0, [x8, #0x560]                         ; class NSMigrationManager
  100112aa4  adrp    x8, #0x100416000
  100112aa8  nop
  100112aac  ldr     x1, [x8, #0xac8]
  100112ab0  bl      _objc_msgSend                            ; [NSMigrationManager alloc]
  100112ab4  adrp    x8, #0x10041b000
  100112ab8  nop
  100112abc  ldr     x1, [x8, #0xba0]
  100112ac0  mov     x2, x20
  100112ac4  mov     x3, x21
  100112ac8  bl      _objc_msgSend                            ; [[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]
  100112acc  mov     x28, x0
  100112ad0  adrp    x8, #0x10041e000
  100112ad4  ldr     x23, [x8, #0xa0]                         ; class NSURL
  100112ad8  bl      _NSTemporaryDirectory                    ; NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]])
  100112adc  mov     x29, x29
  100112ae0  bl      _objc_retainAutoreleasedReturnValue
  100112ae4  mov     x25, x0
  100112ae8  adrp    x8, #0x10041b000
  100112aec  nop
  100112af0  ldr     x1, [x8, #0xba8]
  100112af4  mov     w3, #1
  100112af8  mov     x0, x23
  100112afc  mov     x2, x25
  100112b00  bl      _objc_msgSend                            ; [NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]) isDirectory:1]
  100112b04  mov     x29, x29
  100112b08  bl      _objc_retainAutoreleasedReturnValue
  100112b0c  mov     x23, x0
  100112b10  str     x23, [sp, #0x28]
  100112b14  mov     x0, x25
  100112b18  bl      _objc_release
  100112b1c  adrp    x8, #0x10041b000
  100112b20  nop
  100112b24  ldr     x1, [x8, #0xbb0]
  100112b28  adrp    x2, #0x1003c4000
  100112b2c  add     x2, x2, #0x190                           ; @"migration-temp.sql"
  100112b30  mov     x0, x23
  100112b34  bl      _objc_msgSend                            ; [[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]) isDirectory:1] URLByAppendingPathComponent:@"migration-temp.sql"]
  100112b38  mov     x29, x29
  100112b3c  bl      _objc_retainAutoreleasedReturnValue
  100112b40  mov     x25, x0
  100112b44  adrp    x24, #0x10041e000
  100112b48  ldr     x0, [x24, #0x4f0]                        ; class NSFileManager
  100112b4c  adrp    x8, #0x10041b000
  100112b50  nop
  100112b54  ldr     x26, [x8, #0x8b0]
  100112b58  mov     x1, x26
  100112b5c  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100112b60  mov     x29, x29
  100112b64  bl      _objc_retainAutoreleasedReturnValue
  100112b68  mov     x23, x0
  100112b6c  adrp    x8, #0x10041b000
  100112b70  nop
  100112b74  ldr     x27, [x8, #0xf90]
  100112b78  mov     x3, #0
  100112b7c  mov     x1, x27
  100112b80  mov     x2, x25
  100112b84  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtURL:[[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]) isDirectory:1] URLByAppendingPathComponent:@"migration-temp.sql"] error:0]
  100112b88  mov     x0, x23
  100112b8c  bl      _objc_release
  100112b90  adrp    x8, #0x1003b0000
  100112b94  ldr     x8, [x8, #0x90]                          ; _NSSQLiteStoreType
  100112b98  ldr     x3, [x8]                                 ; x3 = _NSSQLiteStoreType[+0x0]
  100112b9c  adrp    x8, #0x10041b000
  100112ba0  nop
  100112ba4  ldr     x1, [x8, #0xbb8]
  100112ba8  mov     x4, #0
  100112bac  stp     xzr, xzr, [sp]
  100112bb0  mov     x0, x28
  100112bb4  mov     x2, x19
  100112bb8  mov     x5, x22
  100112bbc  mov     x6, x25
  100112bc0  mov     x7, x3
  100112bc4  bl      _objc_msgSend                            ; [[[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]] migrateStoreFromURL:arg1 type:_NSSQLiteStoreType[+0x0] options:0 withMappingModel:[NSMappingModel inferredMappingModelForSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model] error:0] toDestinationURL:[[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSource…
  100112bc8  cbz     w0, loc_100112c90                        ; if ([[[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]] migrateStoreFromURL:arg1 type:_NSSQLiteStoreType[+0x0] options:0 withMappingModel:[NSMappingModel inferredMappingModelForSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model] error:0] toDestinationURL:[[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSource… == 0)
  100112bcc  ldr     x0, [x24, #0x4f0]                        ; class NSFileManager
  100112bd0  mov     x1, x26
  100112bd4  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100112bd8  str     x28, [sp, #0x18]
  100112bdc  mov     x29, x29
  100112be0  bl      _objc_retainAutoreleasedReturnValue
  100112be4  mov     x2, x19
  100112be8  str     x2, [sp, #0x20]
  100112bec  mov     x28, x0
  100112bf0  mov     x3, #0
  100112bf4  mov     x1, x27
  100112bf8  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtURL:arg1 error:0]
  100112bfc  tbz     w0, #0, loc_100112c98                    ; if (!([[NSFileManager defaultManager] removeItemAtURL:arg1 error:0] & 1))
  100112c00  ldr     x0, [x24, #0x4f0]                        ; class NSFileManager
  100112c04  mov     x1, x26
  100112c08  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100112c0c  mov     x29, x29
  100112c10  bl      _objc_retainAutoreleasedReturnValue
  100112c14  mov     x23, x0
  100112c18  adrp    x8, #0x10041b000
  100112c1c  nop
  100112c20  ldr     x1, [x8, #0xbc0]
  100112c24  mov     x4, #0
  100112c28  mov     x2, x25
  100112c2c  ldr     x3, [sp, #0x20]
  100112c30  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] copyItemAtURL:[[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]) isDirectory:1] URLByAppendingPathComponent:@"migration-temp.sql"] toURL:arg1 error:0]
  100112c34  mov     x19, x0
  100112c38  mov     x0, x23
  100112c3c  bl      _objc_release
  100112c40  mov     x0, x28
  100112c44  bl      _objc_release
  100112c48  cbz     w19, loc_100112ca0                       ; if ([[NSFileManager defaultManager] copyItemAtURL:[[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]) isDirectory:1] URLByAppendingPathComponent:@"migration-temp.sql"] toURL:arg1 error:0] == 0)
  100112c4c  ldr     x0, [x24, #0x4f0]                        ; class NSFileManager
  100112c50  mov     x1, x26
  100112c54  ldp     x28, x19, [sp, #0x18]
  100112c58  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100112c5c  mov     x29, x29
  100112c60  bl      _objc_retainAutoreleasedReturnValue
  100112c64  mov     x23, x0
  100112c68  mov     x3, #0
  100112c6c  mov     x1, x27
  100112c70  mov     x2, x25
  100112c74  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtURL:[[NSURL fileURLWithPath:NSTemporaryDirectory([[NSMigrationManager alloc] initWithSourceModel:[TAGModel modelWithDescription:[TAGModel previousModelDescription]] destinationModel:[TAGModel model]]) isDirectory:1] URLByAppendingPathComponent:@"migration-temp.sql"] error:0]
  100112c78  mov     x26, x0
  100112c7c  mov     x0, x23
  100112c80  bl      _objc_release
  100112c84  b       loc_100112ca8
loc_100112c88:
  100112c88  mov     w26, #0
  100112c8c  b       loc_100112cc0
loc_100112c90:
  100112c90  mov     w26, #0
  100112c94  b       loc_100112ca8
loc_100112c98:
  100112c98  mov     x0, x28
  100112c9c  bl      _objc_release
loc_100112ca0:
  100112ca0  mov     w26, #1
  100112ca4  ldp     x28, x19, [sp, #0x18]
loc_100112ca8:
  100112ca8  mov     x0, x25
  100112cac  bl      _objc_release
  100112cb0  ldr     x0, [sp, #0x28]
  100112cb4  bl      _objc_release
  100112cb8  mov     x0, x28
  100112cbc  bl      _objc_release
loc_100112cc0:
  100112cc0  mov     x0, x22
  100112cc4  bl      _objc_release
  100112cc8  mov     x0, x21
  100112ccc  bl      _objc_release
  100112cd0  mov     x0, x20
  100112cd4  bl      _objc_release
  100112cd8  mov     x0, x19
  100112cdc  bl      _objc_release
  100112ce0  mov     x0, x26
  100112ce4  sub     sp, x29, #0x50
  100112ce8  ldp     x28, x27, [sp], #0x10
  100112cec  ldp     x26, x25, [sp], #0x10
  100112cf0  ldp     x24, x23, [sp], #0x10
  100112cf4  ldp     x22, x21, [sp], #0x10
  100112cf8  ldp     x20, x19, [sp], #0x10
  100112cfc  ldp     x29, x30, [sp], #0x10
  100112d00  ret
  100112d04  str     x19, [sp, #0x20]
  100112d08  mov     x19, x0
  100112d0c  b       loc_100112ddc
  100112d10  str     x19, [sp, #0x20]
  100112d14  mov     x19, x0
  100112d18  mov     x0, x22
  100112d1c  b       loc_100112dd8
  100112d20  str     x19, [sp, #0x20]
  100112d24  mov     x19, x0
  100112d28  b       loc_100112dd4
  100112d2c  str     x19, [sp, #0x20]
  100112d30  mov     x19, x0
  100112d34  b       loc_100112dcc
  100112d38  str     x19, [sp, #0x20]
  100112d3c  mov     x19, x0
  100112d40  b       loc_100112dc4
  100112d44  stp     x28, x19, [sp, #0x18]
  100112d48  mov     x19, x0
  100112d4c  b       loc_100112dbc
  100112d50  stp     x28, x19, [sp, #0x18]
  100112d54  mov     x19, x0
  100112d58  mov     x0, x25
  100112d5c  b       loc_100112db8
  100112d60  stp     x28, x19, [sp, #0x18]
  100112d64  mov     x19, x0
  100112d68  b       loc_100112db4
  100112d6c  stp     x28, x19, [sp, #0x18]
  100112d70  b       loc_100112da0
  100112d74  mov     x19, x0
  100112d78  b       loc_100112d88
  100112d7c  mov     x19, x0
  100112d80  mov     x0, x23
  100112d84  bl      _objc_release
loc_100112d88:
  100112d88  mov     x0, x28
  100112d8c  bl      _objc_release
  100112d90  b       loc_100112dac
  100112d94  stp     x28, x19, [sp, #0x18]
  100112d98  mov     x19, x0
  100112d9c  b       loc_100112dac
loc_100112da0:
  100112da0  mov     x19, x0
  100112da4  mov     x0, x23
  100112da8  bl      _objc_release
loc_100112dac:
  100112dac  mov     x0, x25
  100112db0  bl      _objc_release
loc_100112db4:
  100112db4  ldr     x0, [sp, #0x28]
loc_100112db8:
  100112db8  bl      _objc_release
loc_100112dbc:
  100112dbc  ldr     x0, [sp, #0x18]
  100112dc0  bl      _objc_release
loc_100112dc4:
  100112dc4  mov     x0, x22
  100112dc8  bl      _objc_release
loc_100112dcc:
  100112dcc  mov     x0, x21
  100112dd0  bl      _objc_release
loc_100112dd4:
  100112dd4  mov     x0, x20
loc_100112dd8:
  100112dd8  bl      _objc_release
loc_100112ddc:
  100112ddc  ldr     x0, [sp, #0x20]
  100112de0  bl      _objc_release
  100112de4  mov     x0, x19
  100112de8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel coordinatorWithURL:]
; address 0x100112dec  size 616  kind objc
; ======================================================================
  100112dec  stp     x29, x30, [sp, #-0x10]!
  100112df0  mov     x29, sp
  100112df4  stp     x20, x19, [sp, #-0x10]!
  100112df8  stp     x22, x21, [sp, #-0x10]!
  100112dfc  stp     x24, x23, [sp, #-0x10]!
  100112e00  stp     x26, x25, [sp, #-0x10]!
  100112e04  sub     sp, sp, #0x10
  100112e08  mov     x24, x0
  100112e0c  mov     x0, x2
  100112e10  bl      _objc_retain
  100112e14  mov     x19, x0
  100112e18  adrp    x8, #0x10041e000
  100112e1c  ldr     x0, [x8, #0x5e8]                         ; class NSPersistentStoreCoordinator
  100112e20  adrp    x8, #0x100416000
  100112e24  nop
  100112e28  ldr     x1, [x8, #0xac8]
  100112e2c  bl      _objc_msgSend                            ; [NSPersistentStoreCoordinator alloc]
  100112e30  mov     x20, x0
  100112e34  adrp    x8, #0x100418000
  100112e38  nop
  100112e3c  ldr     x1, [x8, #0x9e8]
  100112e40  mov     x0, x24
  100112e44  bl      _objc_msgSend                            ; [TAGModel model]
  100112e48  mov     x29, x29
  100112e4c  bl      _objc_retainAutoreleasedReturnValue
  100112e50  mov     x21, x0
  100112e54  adrp    x8, #0x10041b000
  100112e58  nop
  100112e5c  ldr     x1, [x8, #0xf80]
  100112e60  mov     x0, x20
  100112e64  mov     x2, x21
  100112e68  bl      _objc_msgSend                            ; [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[TAGModel model]]
  100112e6c  mov     x20, x0
  100112e70  mov     x0, x21
  100112e74  bl      _objc_release
  100112e78  adrp    x8, #0x1003b0000
  100112e7c  ldr     x8, [x8, #0x90]                          ; _NSSQLiteStoreType
  100112e80  ldr     x23, [x8]                                ; x23 = _NSSQLiteStoreType[+0x0]
  100112e84  str     xzr, [sp, #8]
  100112e88  adrp    x8, #0x10041b000
  100112e8c  nop
  100112e90  ldr     x25, [x8, #0xf88]
  100112e94  mov     x3, #0
  100112e98  mov     x5, #0
  100112e9c  add     x6, sp, #8
  100112ea0  mov     x0, x20
  100112ea4  mov     x1, x25
  100112ea8  mov     x2, x23
  100112eac  mov     x4, x19
  100112eb0  bl      _objc_msgSend                            ; [[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[TAGModel model]] addPersistentStoreWithType:_NSSQLiteStoreType[+0x0] configuration:0 URL:arg1 options:0 error:&sp[0x8]]
  100112eb4  mov     x29, x29
  100112eb8  bl      _objc_retainAutoreleasedReturnValue
  100112ebc  mov     x21, x0
  100112ec0  ldr     x0, [sp, #8]
  100112ec4  bl      _objc_retain
  100112ec8  mov     x22, x0
  100112ecc  cbnz    x21, loc_100112fac                       ; if ([[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[TAGModel model]] addPersistentStoreWithType:_NSSQLiteStoreType[+0x0] configuration:0 URL:arg1 options:0 error:&sp[0x8]] != 0)
  100112ed0  cbz     x22, loc_100112f14                       ; if (0 == 0)
  100112ed4  adrp    x8, #0x10041b000
  100112ed8  nop
  100112edc  ldr     x1, [x8, #0xd88]
  100112ee0  mov     x0, x22
  100112ee4  bl      _objc_msgSend                            ; [0 code]
  100112ee8  mov     x8, #0x20000
  100112eec  movk    x8, #0xbd4
  100112ef0  cmp     x0, x8
  100112ef4  b.ne    loc_100112f14                            ; if ([0 code] != 0x20bd4)
  100112ef8  adrp    x8, #0x10041b000
  100112efc  nop
  100112f00  ldr     x1, [x8, #0xbc8]
  100112f04  mov     x0, x24
  100112f08  mov     x2, x19
  100112f0c  bl      _objc_msgSend                            ; [TAGModel migrateToCurrentVersion:arg1]
  100112f10  tbnz    w0, #0, loc_100112f58                    ; if (([TAGModel migrateToCurrentVersion:arg1] & 1))
loc_100112f14:
  100112f14  adrp    x8, #0x10041e000
  100112f18  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  100112f1c  adrp    x8, #0x10041b000
  100112f20  nop
  100112f24  ldr     x1, [x8, #0x8b0]
  100112f28  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  100112f2c  mov     x29, x29
  100112f30  bl      _objc_retainAutoreleasedReturnValue
  100112f34  mov     x24, x0
  100112f38  adrp    x8, #0x10041b000
  100112f3c  nop
  100112f40  ldr     x1, [x8, #0xf90]
  100112f44  mov     x3, #0
  100112f48  mov     x2, x19
  100112f4c  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtURL:arg1 error:0]
  100112f50  mov     x0, x24
  100112f54  bl      _objc_release
loc_100112f58:
  100112f58  str     x22, [sp]
  100112f5c  mov     x3, #0
  100112f60  mov     x5, #0
  100112f64  mov     x6, sp
  100112f68  mov     x0, x20
  100112f6c  mov     x1, x25
  100112f70  mov     x2, x23
  100112f74  mov     x4, x19
  100112f78  bl      _objc_msgSend                            ; [[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[TAGModel model]] addPersistentStoreWithType:_NSSQLiteStoreType[+0x0] configuration:0 URL:arg1 options:0 error:&sp[0x0]]
  100112f7c  mov     x29, x29
  100112f80  bl      _objc_retainAutoreleasedReturnValue
  100112f84  mov     x23, x0
  100112f88  ldr     x0, [sp]
  100112f8c  bl      _objc_retain
  100112f90  mov     x24, x0
  100112f94  mov     x0, x22
  100112f98  bl      _objc_release
  100112f9c  mov     x0, x21
  100112fa0  bl      _objc_release
  100112fa4  mov     x22, x24
  100112fa8  mov     x21, x23
loc_100112fac:
  100112fac  cmp     x21, #0
  100112fb0  csel    x0, x20, xzr, ne                         ; t1 = (x21 != 0 ? [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[TAGModel model]] : 0)
  100112fb4  bl      _objc_retainAutoreleaseReturnValue
  100112fb8  mov     x23, x0
  100112fbc  mov     x0, x21
  100112fc0  bl      _objc_release
  100112fc4  mov     x0, x22
  100112fc8  bl      _objc_release
  100112fcc  mov     x0, x20
  100112fd0  bl      _objc_release
  100112fd4  mov     x0, x19
  100112fd8  bl      _objc_release
  100112fdc  mov     x0, x23
  100112fe0  sub     sp, x29, #0x40
  100112fe4  ldp     x26, x25, [sp], #0x10
  100112fe8  ldp     x24, x23, [sp], #0x10
  100112fec  ldp     x22, x21, [sp], #0x10
  100112ff0  ldp     x20, x19, [sp], #0x10
  100112ff4  ldp     x29, x30, [sp], #0x10
  100112ff8  ret
  100112ffc  mov     x23, x0
  100113000  b       loc_100113044
  100113004  mov     x23, x0
  100113008  mov     x0, x21
  10011300c  b       loc_100113040
  100113010  mov     x23, x0
  100113014  b       loc_10011303c
  100113018  mov     x23, x0
  10011301c  mov     x0, x24
  100113020  bl      _objc_release
  100113024  b       loc_10011302c
  100113028  mov     x23, x0
loc_10011302c:
  10011302c  mov     x0, x21
  100113030  bl      _objc_release
  100113034  mov     x0, x22
  100113038  bl      _objc_release
loc_10011303c:
  10011303c  mov     x0, x20
loc_100113040:
  100113040  bl      _objc_release
loc_100113044:
  100113044  mov     x0, x19
  100113048  bl      _objc_release
  10011304c  mov     x0, x23
  100113050  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel contextWithURL:]
; address 0x100113054  size 236  kind objc
; ======================================================================
  100113054  stp     x29, x30, [sp, #-0x10]!
  100113058  mov     x29, sp
  10011305c  stp     x20, x19, [sp, #-0x10]!
  100113060  stp     x22, x21, [sp, #-0x10]!
  100113064  adrp    x8, #0x10041b000
  100113068  nop
  10011306c  ldr     x1, [x8, #0xbd0]
  100113070  bl      _objc_msgSend                            ; [TAGModel coordinatorWithURL:arg1]
  100113074  mov     x29, x29
  100113078  bl      _objc_retainAutoreleasedReturnValue
  10011307c  mov     x19, x0
  100113080  cbz     x19, loc_100113114                       ; if ([TAGModel coordinatorWithURL:arg1] == 0)
  100113084  adrp    x8, #0x10041e000
  100113088  ldr     x0, [x8, #0x5f0]                         ; class NSManagedObjectContext
  10011308c  adrp    x8, #0x100416000
  100113090  nop
  100113094  ldr     x1, [x8, #0xac8]
  100113098  mov     x21, #0
  10011309c  bl      _objc_msgSend                            ; [NSManagedObjectContext alloc]
  1001130a0  adrp    x8, #0x100416000
  1001130a4  nop
  1001130a8  ldr     x1, [x8, #0xab8]
  1001130ac  mov     x21, #0
  1001130b0  bl      _objc_msgSend                            ; [[NSManagedObjectContext alloc] init]
  1001130b4  mov     x20, x0
  1001130b8  mov     x21, x20
  1001130bc  adrp    x8, #0x10041b000
  1001130c0  nop
  1001130c4  ldr     x1, [x8, #0xfa0]
  1001130c8  mov     x0, x20
  1001130cc  mov     x2, x19
  1001130d0  bl      _objc_msgSend                            ; [[[NSManagedObjectContext alloc] init] setPersistentStoreCoordinator:[TAGModel coordinatorWithURL:arg1]]
  1001130d4  mov     x21, x20
  1001130d8  adrp    x8, #0x1003b0000
  1001130dc  ldr     x8, [x8, #0x68]                          ; _NSOverwriteMergePolicy
  1001130e0  ldr     x2, [x8]                                 ; x2 = _NSOverwriteMergePolicy[+0x0]
  1001130e4  adrp    x8, #0x10041b000
  1001130e8  nop
  1001130ec  ldr     x1, [x8, #0xfa8]
  1001130f0  mov     x0, x20
  1001130f4  bl      _objc_msgSend                            ; [[[NSManagedObjectContext alloc] init] setMergePolicy:_NSOverwriteMergePolicy[+0x0]]
  1001130f8  b       loc_100113118
  1001130fc  mov     x20, x0
  100113100  mov     x0, x19
  100113104  bl      _objc_release
  100113108  mov     x0, x21
  10011310c  bl      _objc_release
  100113110  b       loc_100113138
loc_100113114:
  100113114  mov     x20, #0
loc_100113118:
  100113118  mov     x0, x19
  10011311c  bl      _objc_release
  100113120  mov     x0, x20
  100113124  ldp     x22, x21, [sp], #0x10
  100113128  ldp     x20, x19, [sp], #0x10
  10011312c  ldp     x29, x30, [sp], #0x10
  100113130  b       _objc_autoreleaseReturnValue
  100113134  mov     x20, x0
loc_100113138:
  100113138  mov     x0, x20
  10011313c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel model]
; address 0x100113140  size 124  kind objc
; ======================================================================
  100113140  stp     x29, x30, [sp, #-0x10]!
  100113144  mov     x29, sp
  100113148  stp     x20, x19, [sp, #-0x10]!
  10011314c  mov     x20, x0
  100113150  adrp    x8, #0x10041c000
  100113154  nop
  100113158  ldr     x1, [x8, #0x70]
  10011315c  bl      _objc_msgSend                            ; [TAGModel modelDescription]
  100113160  mov     x29, x29
  100113164  bl      _objc_retainAutoreleasedReturnValue
  100113168  mov     x19, x0
  10011316c  adrp    x8, #0x10041c000
  100113170  nop
  100113174  ldr     x1, [x8, #0x78]
  100113178  mov     x0, x20
  10011317c  mov     x2, x19
  100113180  bl      _objc_msgSend                            ; [TAGModel modelWithDescription:[TAGModel modelDescription]]
  100113184  mov     x29, x29
  100113188  bl      _objc_retainAutoreleasedReturnValue
  10011318c  mov     x20, x0
  100113190  mov     x0, x19
  100113194  bl      _objc_release
  100113198  mov     x0, x20
  10011319c  ldp     x20, x19, [sp], #0x10
  1001131a0  ldp     x29, x30, [sp], #0x10
  1001131a4  b       _objc_autoreleaseReturnValue
  1001131a8  mov     x20, x0
  1001131ac  mov     x0, x19
  1001131b0  bl      _objc_release
  1001131b4  mov     x0, x20
  1001131b8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel requestHitsWithLimit:]
; address 0x1001131bc  size 344  kind objc
; ======================================================================
  1001131bc  stp     x29, x30, [sp, #-0x10]!
  1001131c0  mov     x29, sp
  1001131c4  stp     x20, x19, [sp, #-0x10]!
  1001131c8  stp     x22, x21, [sp, #-0x10]!
  1001131cc  sub     sp, sp, #0x10
  1001131d0  mov     x20, x2
  1001131d4  adrp    x21, #0x1003b0000
  1001131d8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1001131dc  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  1001131e0  str     x8, [sp, #8]
  1001131e4  adrp    x8, #0x10041e000
  1001131e8  ldr     x0, [x8, #0x5c8]                         ; class NSFetchRequest
  1001131ec  adrp    x8, #0x100416000
  1001131f0  nop
  1001131f4  ldr     x1, [x8, #0xac8]
  1001131f8  bl      _objc_msgSend                            ; [NSFetchRequest alloc]
  1001131fc  adrp    x8, #0x10041b000
  100113200  nop
  100113204  ldr     x1, [x8, #0xee8]
  100113208  adrp    x2, #0x1003c4000
  10011320c  add     x2, x2, #0xf0                            ; @"TAGHit"
  100113210  bl      _objc_msgSend                            ; [[NSFetchRequest alloc] initWithEntityName:@"TAGHit"]
  100113214  mov     x19, x0
  100113218  cbz     x20, loc_100113234                       ; if (arg1 == 0)
  10011321c  adrp    x8, #0x10041b000
  100113220  nop
  100113224  ldr     x1, [x8, #0xef8]
  100113228  mov     x0, x19
  10011322c  mov     x2, x20
  100113230  bl      _objc_msgSend                            ; [[[NSFetchRequest alloc] initWithEntityName:@"TAGHit"] setFetchLimit:arg1]
loc_100113234:
  100113234  adrp    x8, #0x10041e000
  100113238  ldr     x0, [x8, #0x5d0]                         ; class NSSortDescriptor
  10011323c  adrp    x8, #0x10041b000
  100113240  nop
  100113244  ldr     x1, [x8, #0xf00]
  100113248  adrp    x2, #0x1003c4000
  10011324c  add     x2, x2, #0xdf0                           ; @"timestamp"
  100113250  mov     w3, #1
  100113254  bl      _objc_msgSend                            ; [NSSortDescriptor sortDescriptorWithKey:@"timestamp" ascending:1]
  100113258  mov     x29, x29
  10011325c  bl      _objc_retainAutoreleasedReturnValue
  100113260  mov     x20, x0
  100113264  str     x20, [sp]
  100113268  adrp    x8, #0x10041d000
  10011326c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100113270  adrp    x8, #0x100417000
  100113274  nop
  100113278  ldr     x1, [x8, #0x3c8]
  10011327c  mov     x2, sp
  100113280  mov     x3, #1
  100113284  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x0] count:1]
  100113288  mov     x2, x0
  10011328c  adrp    x8, #0x10041b000
  100113290  nop
  100113294  ldr     x1, [x8, #0xf08]
  100113298  mov     x0, x19
  10011329c  bl      _objc_msgSend                            ; [[[NSFetchRequest alloc] initWithEntityName:@"TAGHit"] setSortDescriptors:[NSArray arrayWithObjects:&sp[0x0] count:1]]
  1001132a0  adrp    x8, #0x10041b000
  1001132a4  nop
  1001132a8  ldr     x1, [x8, #0xf10]
  1001132ac  mov     w2, #1
  1001132b0  mov     x0, x19
  1001132b4  bl      _objc_msgSend                            ; [[[NSFetchRequest alloc] initWithEntityName:@"TAGHit"] setIncludesPendingChanges:1]
  1001132b8  mov     x0, x20
  1001132bc  bl      _objc_release
  1001132c0  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  1001132c4  ldr     x9, [sp, #8]
  1001132c8  sub     x8, x8, x9
  1001132cc  cbnz    x8, loc_1001132e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001132d0  mov     x0, x19
  1001132d4  sub     sp, x29, #0x20
  1001132d8  ldp     x22, x21, [sp], #0x10
  1001132dc  ldp     x20, x19, [sp], #0x10
  1001132e0  ldp     x29, x30, [sp], #0x10
  1001132e4  b       _objc_autoreleaseReturnValue
loc_1001132e8:
  1001132e8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1001132ec  mov     x21, x0
  1001132f0  b       loc_100113304
  1001132f4  b       loc_1001132f8
loc_1001132f8:
  1001132f8  mov     x21, x0
  1001132fc  mov     x0, x20
  100113300  bl      _objc_release
loc_100113304:
  100113304  mov     x0, x19
  100113308  bl      _objc_release
  10011330c  mov     x0, x21
  100113310  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGModel requestHitsWithLimit:lastDispatchedBefore:]
; address 0x100113314  size 252  kind objc
; ======================================================================
  100113314  stp     x29, x30, [sp, #-0x10]!
  100113318  mov     x29, sp
  10011331c  stp     x20, x19, [sp, #-0x10]!
  100113320  stp     x22, x21, [sp, #-0x10]!
  100113324  sub     sp, sp, #0x20
  100113328  mov     x20, x2
  10011332c  mov     x21, x0
  100113330  mov     x0, x3
  100113334  bl      _objc_retain
  100113338  mov     x19, x0
  10011333c  adrp    x8, #0x10041b000
  100113340  nop
  100113344  ldr     x1, [x8, #0x998]
  100113348  mov     x0, x21
  10011334c  mov     x2, x20
  100113350  bl      _objc_msgSend                            ; [TAGModel requestHitsWithLimit:arg1]
  100113354  mov     x29, x29
  100113358  bl      _objc_retainAutoreleasedReturnValue
  10011335c  mov     x20, x0
  100113360  adrp    x8, #0x10041e000
  100113364  ldr     x0, [x8, #0x510]                         ; class NSPredicate
  100113368  adrp    x8, #0x10041b000
  10011336c  nop
  100113370  ldr     x1, [x8, #0x9d0]
  100113374  adrp    x8, #0x1003c4000
  100113378  add     x8, x8, #0x150                           ; @"lastDispatchTime"
  10011337c  stp     x8, x19, [sp, #8]
  100113380  str     x8, [sp]
  100113384  adrp    x2, #0x1003c4000
  100113388  add     x2, x2, #0x1b0                           ; @"(%K == NIL) OR (%K <= %@)"
  10011338c  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"(%K == NIL) OR (%K <= %@)", @"lastDispatchTime"]
  100113390  mov     x29, x29
  100113394  bl      _objc_retainAutoreleasedReturnValue
  100113398  mov     x21, x0
  10011339c  adrp    x8, #0x10041b000
  1001133a0  nop
  1001133a4  ldr     x1, [x8, #0x9d8]
  1001133a8  mov     x0, x20
  1001133ac  mov     x2, x21
  1001133b0  bl      _objc_msgSend                            ; [[TAGModel requestHitsWithLimit:arg1] setPredicate:[NSPredicate predicateWithFormat:@"(%K == NIL) OR (%K <= %@)", @"lastDispatchTime"]]
  1001133b4  mov     x0, x21
  1001133b8  bl      _objc_release
  1001133bc  mov     x0, x19
  1001133c0  bl      _objc_release
  1001133c4  mov     x0, x20
  1001133c8  sub     sp, x29, #0x20
  1001133cc  ldp     x22, x21, [sp], #0x10
  1001133d0  ldp     x20, x19, [sp], #0x10
  1001133d4  ldp     x29, x30, [sp], #0x10
  1001133d8  b       _objc_autoreleaseReturnValue
  1001133dc  mov     x22, x0
  1001133e0  b       loc_100113400
  1001133e4  mov     x22, x0
  1001133e8  b       loc_1001133f8
  1001133ec  mov     x22, x0
  1001133f0  mov     x0, x21
  1001133f4  bl      _objc_release
loc_1001133f8:
  1001133f8  mov     x0, x20
  1001133fc  bl      _objc_release
loc_100113400:
  100113400  mov     x0, x19
  100113404  bl      _objc_release
  100113408  mov     x0, x22
  10011340c  bl      __Unwind_Resume                          ; Unwind_Resume()
