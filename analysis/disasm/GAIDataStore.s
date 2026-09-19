// unit GAIDataStore — 108 functions
//   0x100117fec     112  -[GAIDataStore requestEntityName:]
//   0x10011805c     292  -[GAIDataStore requestHitsWithLimit:]
//   0x100118180     232  -[GAIDataStore requestPropertyWithName:]
//   0x100118268     972  -[GAIDataStore oldHitDescription:]
//   0x100118634     196  +[GAIDataStore databaseFullPath:]
//   0x1001186f8     108  +[GAIDataStore databaseFullURL:]
//   0x100118764     508  -[GAIDataStore deleteExcessHits:]
//   0x100118960     212  -[GAIDataStore context:hitCount:]
//   0x100118a34     140  -[GAIDataStore context:hitCount:]_block_invoke
//   0x100118ac0      40  sub_100118ac0
//   0x100118ae8      40  sub_100118ae8
//   0x100118b10     232  -[GAIDataStore context:removeStaleHits:]
//   0x100118bf8     612  -[GAIDataStore context:removeStaleHits:]_block_invoke
//   0x100118e5c      40  sub_100118e5c
//   0x100118e84      40  sub_100118e84
//   0x100118eac      32  +[GAIDataStore thread]
//   0x100118ecc     252  -[GAIDataStore gai_performBlockHelper:]
//   0x100118fc8    1036  -[GAIDataStore performBlockAndWait:withError:]
//   0x1001193d4     868  -[GAIDataStore coordinatorWithModel:URL:]
//   0x100119738     228  -[GAIDataStore contextWithModel:URL:]
//   0x10011981c     572  -[GAIDataStore setProperty:numberValue:withError:]
//   0x100119a58     572  -[GAIDataStore setProperty:stringValue:withError:]
//   0x100119c94     156  -[GAIDataStore lastChangeTimeStamp]
//   0x100119d30      20  -[GAIDataStore lastChangeTimeStamp]_block_invoke
//   0x100119d44       8  sub_100119d44
//   0x100119d4c       8  sub_100119d4c
//   0x100119d54     220  -[GAIDataStore setLastChangeTimeStamp:]
//   0x100119e30      60  -[GAIDataStore setLastChangeTimeStamp:]_block_invoke
//   0x100119e6c      40  sub_100119e6c
//   0x100119e94      40  sub_100119e94
//   0x100119ebc     156  -[GAIDataStore idfaChangeCount]
//   0x100119f58      20  -[GAIDataStore idfaChangeCount]_block_invoke
//   0x100119f6c       8  sub_100119f6c
//   0x100119f74       8  sub_100119f74
//   0x100119f7c     220  -[GAIDataStore setIdfaChangeCount:]
//   0x10011a058      60  -[GAIDataStore setIdfaChangeCount:]_block_invoke
//   0x10011a094      40  sub_10011a094
//   0x10011a0bc      40  sub_10011a0bc
//   0x10011a0e4     156  -[GAIDataStore hashedIdfa]
//   0x10011a180      20  -[GAIDataStore hashedIdfa]_block_invoke
//   0x10011a194       8  sub_10011a194
//   0x10011a19c       8  sub_10011a19c
//   0x10011a1a4     236  -[GAIDataStore setHashedIdfa:]
//   0x10011a290      60  -[GAIDataStore setHashedIdfa:]_block_invoke
//   0x10011a2cc      40  sub_10011a2cc
//   0x10011a2f4      40  sub_10011a2f4
//   0x10011a31c     160  -[GAIDataStore clientId]
//   0x10011a3bc      20  -[GAIDataStore clientId]_block_invoke
//   0x10011a3d0       8  sub_10011a3d0
//   0x10011a3d8       8  sub_10011a3d8
//   0x10011a3e0     132  -[GAIDataStore fetchClientId]
//   0x10011a464     280  -[GAIDataStore fetchClientId]_block_invoke
//   0x10011a57c       8  sub_10011a57c
//   0x10011a584       8  sub_10011a584
//   0x10011a58c     220  -[GAIDataStore setClientId:]
//   0x10011a668      60  -[GAIDataStore setClientId:]_block_invoke
//   0x10011a6a4      40  sub_10011a6a4
//   0x10011a6cc      40  sub_10011a6cc
//   0x10011a6f4     164  -[GAIDataStore hitCount:]
//   0x10011a798     280  -[GAIDataStore hitCount:]_block_invoke
//   0x10011a8b0       8  sub_10011a8b0
//   0x10011a8b8       8  sub_10011a8b8
//   0x10011a8c0     168  -[GAIDataStore addHit:]
//   0x10011a968     432  -[GAIDataStore addHit:]_block_invoke
//   0x10011ab18      40  sub_10011ab18
//   0x10011ab40      40  sub_10011ab40
//   0x10011ab68     140  -[GAIDataStore fetchHitsWithLimit:error:]
//   0x10011abf4     724  -[GAIDataStore fetchHitsWithLimit:error:]_block_invoke
//   0x10011aec8     244  -[GAIDataStore fetchHitsWithLimit:error:]_block_invoke_block_invoke
//   0x10011afbc       8  sub_10011afbc
//   0x10011afc4       8  sub_10011afc4
//   0x10011afcc       8  sub_10011afcc
//   0x10011afd4       8  sub_10011afd4
//   0x10011afdc     232  -[GAIDataStore deleteHitsWithIds:error:]
//   0x10011b0c4     460  -[GAIDataStore deleteHitsWithIds:error:]_block_invoke
//   0x10011b290      40  sub_10011b290
//   0x10011b2b8      40  sub_10011b2b8
//   0x10011b2e0     164  -[GAIDataStore deleteAllHits:]
//   0x10011b384     824  -[GAIDataStore deleteAllHits:]_block_invoke
//   0x10011b6bc       8  sub_10011b6bc
//   0x10011b6c4       8  sub_10011b6c4
//   0x10011b6cc     164  -[GAIDataStore save:]
//   0x10011b770     392  -[GAIDataStore save:]_block_invoke
//   0x10011b8f8       8  sub_10011b8f8
//   0x10011b900       8  sub_10011b900
//   0x10011b908     384  -[GAIDataStore init]
//   0x10011ba88    1312  -[GAIDataStore setUpCoreData]
//   0x10011bfa8     280  -[GAIDataStore setUpCoreData]_block_invoke
//   0x10011c0c0       8  sub_10011c0c0
//   0x10011c0c8       8  sub_10011c0c8
//   0x10011c0d0     320  -[GAIDataStore setUpCoreData]_block_invoke_2
//   0x10011c210       8  sub_10011c210
//   0x10011c218       8  sub_10011c218
//   0x10011c220     320  -[GAIDataStore setUpCoreData]_block_invoke_3
//   0x10011c360       8  sub_10011c360
//   0x10011c368       8  sub_10011c368
//   0x10011c370      20  -[GAIDataStore onExit:]
//   0x10011c384     136  -[GAIDataStore dealloc]
//   0x10011c40c      48  +[GAIDataStore dataStore]
//   0x10011c43c      16  -[GAIDataStore maxHitCount]
//   0x10011c44c      16  -[GAIDataStore setMaxHitCount:]
//   0x10011c45c      16  -[GAIDataStore oldContext]
//   0x10011c46c      56  -[GAIDataStore setOldContext:]
//   0x10011c4a4      16  -[GAIDataStore context]
//   0x10011c4b4      56  -[GAIDataStore setContext:]
//   0x10011c4ec      16  -[GAIDataStore currentContext]
//   0x10011c4fc      56  -[GAIDataStore setCurrentContext:]
//   0x10011c534     164  -[GAIDataStore .cxx_destruct]

; ======================================================================
; -[GAIDataStore requestEntityName:]
; address 0x100117fec  size 112  kind objc
; ======================================================================
  100117fec  stp     x29, x30, [sp, #-0x10]!
  100117ff0  mov     x29, sp
  100117ff4  stp     x20, x19, [sp, #-0x10]!
  100117ff8  stp     x22, x21, [sp, #-0x10]!
  100117ffc  adrp    x8, #0x10041e000
  100118000  ldr     x19, [x8, #0x5c8]                        ; class NSFetchRequest
  100118004  adrp    x8, #0x100416000
  100118008  nop
  10011800c  ldr     x20, [x8, #0xac8]
  100118010  mov     x0, x2
  100118014  bl      _objc_retain
  100118018  mov     x21, x0
  10011801c  mov     x0, x19
  100118020  mov     x1, x20
  100118024  bl      _objc_msgSend                            ; [NSFetchRequest alloc]
  100118028  adrp    x8, #0x10041b000
  10011802c  nop
  100118030  ldr     x1, [x8, #0xee8]
  100118034  mov     x2, x21
  100118038  bl      _objc_msgSend                            ; [[NSFetchRequest alloc] initWithEntityName:arg1]
  10011803c  mov     x19, x0
  100118040  mov     x0, x21
  100118044  bl      _objc_release
  100118048  mov     x0, x19
  10011804c  ldp     x22, x21, [sp], #0x10
  100118050  ldp     x20, x19, [sp], #0x10
  100118054  ldp     x29, x30, [sp], #0x10
  100118058  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore requestHitsWithLimit:]
; address 0x10011805c  size 292  kind objc
; ======================================================================
  10011805c  stp     x29, x30, [sp, #-0x10]!
  100118060  mov     x29, sp
  100118064  stp     x20, x19, [sp, #-0x10]!
  100118068  stp     x22, x21, [sp, #-0x10]!
  10011806c  sub     sp, sp, #0x10
  100118070  mov     x20, x2
  100118074  adrp    x21, #0x1003b0000
  100118078  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10011807c  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100118080  str     x8, [sp, #8]
  100118084  adrp    x8, #0x10041b000
  100118088  nop
  10011808c  ldr     x1, [x8, #0xef0]
  100118090  adrp    x2, #0x1003c4000
  100118094  add     x2, x2, #0xab0                           ; @"GAIHit"
  100118098  bl      _objc_msgSend                            ; [self requestEntityName:@"GAIHit"]
  10011809c  mov     x29, x29
  1001180a0  bl      _objc_retainAutoreleasedReturnValue
  1001180a4  mov     x19, x0
  1001180a8  cbz     x20, loc_1001180c4                       ; if (arg1 == 0)
  1001180ac  adrp    x8, #0x10041b000
  1001180b0  nop
  1001180b4  ldr     x1, [x8, #0xef8]
  1001180b8  mov     x0, x19
  1001180bc  mov     x2, x20
  1001180c0  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIHit"] setFetchLimit:arg1]
loc_1001180c4:
  1001180c4  adrp    x8, #0x10041e000
  1001180c8  ldr     x0, [x8, #0x5d0]                         ; class NSSortDescriptor
  1001180cc  adrp    x8, #0x1003b8000
  1001180d0  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  1001180d4  ldr     x2, [x8]                                 ; [&d_1003b81f8] -> @"timestamp"
  1001180d8  adrp    x8, #0x10041b000
  1001180dc  nop
  1001180e0  ldr     x1, [x8, #0xf00]
  1001180e4  mov     w3, #1
  1001180e8  bl      _objc_msgSend                            ; [NSSortDescriptor sortDescriptorWithKey:@"timestamp" ascending:1]
  1001180ec  mov     x29, x29
  1001180f0  bl      _objc_retainAutoreleasedReturnValue
  1001180f4  mov     x20, x0
  1001180f8  str     x20, [sp]
  1001180fc  adrp    x8, #0x10041d000
  100118100  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100118104  adrp    x8, #0x100417000
  100118108  nop
  10011810c  ldr     x1, [x8, #0x3c8]
  100118110  mov     x2, sp
  100118114  mov     x3, #1
  100118118  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x0] count:1]
  10011811c  mov     x2, x0
  100118120  adrp    x8, #0x10041b000
  100118124  nop
  100118128  ldr     x1, [x8, #0xf08]
  10011812c  mov     x0, x19
  100118130  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIHit"] setSortDescriptors:[NSArray arrayWithObjects:&sp[0x0] count:1]]
  100118134  adrp    x8, #0x10041b000
  100118138  nop
  10011813c  ldr     x1, [x8, #0xf10]
  100118140  mov     w2, #1
  100118144  mov     x0, x19
  100118148  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIHit"] setIncludesPendingChanges:1]
  10011814c  mov     x0, x20
  100118150  bl      _objc_release
  100118154  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100118158  ldr     x9, [sp, #8]
  10011815c  sub     x8, x8, x9
  100118160  cbnz    x8, loc_10011817c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100118164  mov     x0, x19
  100118168  sub     sp, x29, #0x20
  10011816c  ldp     x22, x21, [sp], #0x10
  100118170  ldp     x20, x19, [sp], #0x10
  100118174  ldp     x29, x30, [sp], #0x10
  100118178  b       _objc_autoreleaseReturnValue
loc_10011817c:
  10011817c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAIDataStore requestPropertyWithName:]
; address 0x100118180  size 232  kind objc
; ======================================================================
  100118180  stp     x29, x30, [sp, #-0x10]!
  100118184  mov     x29, sp
  100118188  stp     x20, x19, [sp, #-0x10]!
  10011818c  stp     x22, x21, [sp, #-0x10]!
  100118190  sub     sp, sp, #0x10
  100118194  mov     x19, x0
  100118198  adrp    x8, #0x10041b000
  10011819c  nop
  1001181a0  ldr     x20, [x8, #0xef0]
  1001181a4  mov     x0, x2
  1001181a8  bl      _objc_retain
  1001181ac  mov     x21, x0
  1001181b0  adrp    x2, #0x1003c4000
  1001181b4  add     x2, x2, #0xad0                           ; @"GAIProperty"
  1001181b8  mov     x0, x19
  1001181bc  mov     x1, x20
  1001181c0  bl      _objc_msgSend                            ; [self requestEntityName:@"GAIProperty"]
  1001181c4  mov     x29, x29
  1001181c8  bl      _objc_retainAutoreleasedReturnValue
  1001181cc  mov     x19, x0
  1001181d0  adrp    x8, #0x10041e000
  1001181d4  ldr     x0, [x8, #0x510]                         ; class NSPredicate
  1001181d8  adrp    x8, #0x1003b8000
  1001181dc  add     x8, x8, #0x220                           ; &d_1003b8220
  1001181e0  ldr     x8, [x8]                                 ; [&d_1003b8220] -> @"name"
  1001181e4  adrp    x9, #0x10041b000
  1001181e8  nop
  1001181ec  ldr     x1, [x9, #0x9d0]
  1001181f0  stp     x8, x21, [sp]
  1001181f4  adrp    x2, #0x1003c4000
  1001181f8  add     x2, x2, #0xaf0                           ; @"%K == %@"
  1001181fc  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"%K == %@", @"name"]
  100118200  mov     x20, x0
  100118204  mov     x0, x21
  100118208  bl      _objc_release
  10011820c  mov     x0, x20
  100118210  bl      _objc_retainAutoreleasedReturnValue
  100118214  mov     x20, x0
  100118218  adrp    x8, #0x10041b000
  10011821c  nop
  100118220  ldr     x1, [x8, #0x9d8]
  100118224  mov     x0, x19
  100118228  mov     x2, x20
  10011822c  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIProperty"] setPredicate:[NSPredicate predicateWithFormat:@"%K == %@", @"name"]]
  100118230  mov     x0, x20
  100118234  bl      _objc_release
  100118238  adrp    x8, #0x10041b000
  10011823c  nop
  100118240  ldr     x1, [x8, #0xef8]
  100118244  mov     x2, #1
  100118248  mov     x0, x19
  10011824c  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIProperty"] setFetchLimit:1]
  100118250  mov     x0, x19
  100118254  sub     sp, x29, #0x20
  100118258  ldp     x22, x21, [sp], #0x10
  10011825c  ldp     x20, x19, [sp], #0x10
  100118260  ldp     x29, x30, [sp], #0x10
  100118264  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore oldHitDescription:]
; address 0x100118268  size 972  kind objc
; ======================================================================
  100118268  stp     x29, x30, [sp, #-0x10]!
  10011826c  mov     x29, sp
  100118270  stp     x20, x19, [sp, #-0x10]!
  100118274  stp     x22, x21, [sp, #-0x10]!
  100118278  stp     x24, x23, [sp, #-0x10]!
  10011827c  stp     x26, x25, [sp, #-0x10]!
  100118280  stp     x28, x27, [sp, #-0x10]!
  100118284  sub     sp, sp, #0x130
  100118288  adrp    x8, #0x1003b0000
  10011828c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100118290  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100118294  stur    x8, [x29, #-0x58]
  100118298  mov     x0, x2
  10011829c  bl      _objc_retain
  1001182a0  mov     x20, x0
  1001182a4  str     x20, [sp, #0x20]
  1001182a8  adrp    x8, #0x1003b8000
  1001182ac  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  1001182b0  adrp    x9, #0x1003b8000
  1001182b4  add     x9, x9, #0x208                           ; &d_1003b8208
  1001182b8  adrp    x10, #0x1003b8000
  1001182bc  add     x10, x10, #0x200                         ; &d_1003b8200
  1001182c0  adrp    x11, #0x1003b8000
  1001182c4  add     x11, x11, #0x218                         ; &d_1003b8218
  1001182c8  ldr     x8, [x8]                                 ; [&d_1003b81f8] -> @"timestamp"
  1001182cc  ldr     x12, [x9]                                ; [&d_1003b8208] -> @"dispatchUrl"
  1001182d0  str     x12, [sp, #0x10]
  1001182d4  ldr     x9, [x10]                                ; [&d_1003b8200] -> @"objectID"
  1001182d8  ldr     x19, [x11]                               ; [&d_1003b8218] -> @"parametersData"
  1001182dc  stp     x8, x12, [x29, #-0x78]
  1001182e0  stp     x9, x19, [x29, #-0x68]
  1001182e4  adrp    x8, #0x10041d000
  1001182e8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1001182ec  adrp    x8, #0x100417000
  1001182f0  nop
  1001182f4  ldr     x1, [x8, #0x3c8]
  1001182f8  sub     x2, x29, #0x78
  1001182fc  mov     x3, #4
  100118300  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x78] count:4]
  100118304  mov     x2, x0
  100118308  adrp    x8, #0x10041b000
  10011830c  nop
  100118310  ldr     x1, [x8, #0xf18]
  100118314  mov     x0, x20
  100118318  bl      _objc_msgSend                            ; [arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]]
  10011831c  mov     x29, x29
  100118320  bl      _objc_retainAutoreleasedReturnValue
  100118324  mov     x20, x0
  100118328  adrp    x8, #0x10041b000
  10011832c  nop
  100118330  ldr     x1, [x8, #0x1d8]
  100118334  bl      _objc_msgSend                            ; [[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy]
  100118338  mov     x21, x0
  10011833c  str     x21, [sp, #0x18]
  100118340  mov     x0, x20
  100118344  bl      _objc_release
  100118348  adrp    x8, #0x10041d000
  10011834c  ldr     x20, [x8, #0xf48]                        ; class NSKeyedUnarchiver
  100118350  adrp    x8, #0x10041b000
  100118354  nop
  100118358  ldr     x24, [x8, #0xb70]
  10011835c  mov     x0, x21
  100118360  mov     x1, x24
  100118364  mov     x2, x19
  100118368  bl      _objc_msgSend                            ; [[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]
  10011836c  mov     x29, x29
  100118370  bl      _objc_retainAutoreleasedReturnValue
  100118374  mov     x19, x0
  100118378  adrp    x8, #0x100416000
  10011837c  nop
  100118380  ldr     x1, [x8, #0xde0]
  100118384  mov     x0, x20
  100118388  mov     x2, x19
  10011838c  bl      _objc_msgSend                            ; [NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]]
  100118390  mov     x29, x29
  100118394  bl      _objc_retainAutoreleasedReturnValue
  100118398  mov     x20, x0
  10011839c  mov     x0, x19
  1001183a0  bl      _objc_release
  1001183a4  adrp    x8, #0x10041d000
  1001183a8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001183ac  adrp    x8, #0x10041b000
  1001183b0  nop
  1001183b4  ldr     x1, [x8, #0xf20]
  1001183b8  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  1001183bc  mov     x29, x29
  1001183c0  bl      _objc_retainAutoreleasedReturnValue
  1001183c4  str     x0, [sp, #0x40]
  1001183c8  stp     xzr, xzr, [x29, #-0x88]
  1001183cc  stp     xzr, xzr, [x29, #-0x98]
  1001183d0  stp     xzr, xzr, [x29, #-0xa8]
  1001183d4  stp     xzr, xzr, [x29, #-0xb8]
  1001183d8  mov     x0, x20
  1001183dc  bl      _objc_retain
  1001183e0  mov     x23, x0
  1001183e4  adrp    x8, #0x100416000
  1001183e8  nop
  1001183ec  ldr     x1, [x8, #0xe00]
  1001183f0  str     x1, [sp, #0x38]
  1001183f4  sub     x2, x29, #0xb8
  1001183f8  add     x3, sp, #0x48
  1001183fc  mov     x4, #0x10
  100118400  bl      _objc_msgSend                            ; [[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]] countByEnumeratingWithState:&x29[-0xb8] objects:&sp[0x48] count:16]
  100118404  mov     x26, x0
  100118408  cbz     x26, loc_1001184ec                       ; if ([[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]] countByEnumeratingWithState:&x29[-0xb8] objects:&sp[0x48] count:16] == 0)
  10011840c  ldur    x8, [x29, #-0xa8]
  100118410  ldr     x20, [x8]
  100118414  adrp    x8, #0x10041a000
  100118418  nop
  10011841c  adrp    x9, #0x10041b000
  100118420  add     x9, x9, #0xe00                           ; &@selector(setObject:forKeyedSubscript:)
  100118424  ldr     x27, [x8, #0x620]
  100118428  ldr     x28, [x9]
  10011842c  adrp    x19, #0x1003c4000
  100118430  add     x19, x19, #0xb10                         ; @"&"
  100118434  sub     x8, x29, #0xb8
  100118438  str     x8, [sp, #0x30]
  10011843c  add     x8, sp, #0x48
  100118440  str     x8, [sp, #0x28]
loc_100118444:
  100118444  mov     x22, #0
loc_100118448:
  100118448  ldur    x8, [x29, #-0xa8]
  10011844c  ldr     x8, [x8]
  100118450  cmp     x8, x20
  100118454  b.eq    loc_100118460                            ; if (x8 == x20)
  100118458  mov     x0, x23
  10011845c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]])
loc_100118460:
  100118460  ldur    x8, [x29, #-0xb0]
  100118464  ldr     x25, [x8, x22, lsl #3]
  100118468  mov     x0, x19
  10011846c  mov     x1, x27
  100118470  mov     x2, x25
  100118474  bl      _objc_msgSend                            ; [@"&" stringByAppendingString:x2]
  100118478  mov     x29, x29
  10011847c  bl      _objc_retainAutoreleasedReturnValue
  100118480  mov     x21, x0
  100118484  mov     x0, x23
  100118488  mov     x1, x24
  10011848c  mov     x2, x25
  100118490  bl      _objc_msgSend                            ; [[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]] objectForKeyedSubscript:x2]
  100118494  mov     x29, x29
  100118498  bl      _objc_retainAutoreleasedReturnValue
  10011849c  mov     x25, x0
  1001184a0  ldr     x0, [sp, #0x40]
  1001184a4  mov     x1, x28
  1001184a8  mov     x2, x25
  1001184ac  mov     x3, x21
  1001184b0  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]] objectForKeyedSubscript:x2] forKeyedSubscript:[@"&" stringByAppendingString:x2]]
  1001184b4  mov     x0, x25
  1001184b8  bl      _objc_release
  1001184bc  mov     x0, x21
  1001184c0  bl      _objc_release
  1001184c4  add     x22, x22, #1
  1001184c8  cmp     x22, x26
  1001184cc  b.lo    loc_100118448                            ; if ((x22 + 1) <u [[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] co…)
  1001184d0  mov     x4, #0x10
  1001184d4  mov     x0, x23
  1001184d8  ldp     x2, x1, [sp, #0x30]
  1001184dc  ldr     x3, [sp, #0x28]
  1001184e0  bl      _objc_msgSend                            ; [[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]] countByEnumeratingWithState:&x29[-0xb8] objects:&sp[0x48] count:16]
  1001184e4  mov     x26, x0
  1001184e8  cbnz    x26, loc_100118444                       ; if ([[NSKeyedUnarchiver unarchiveObjectWithData:[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"parametersData"]] countByEnumeratingWithState:&x29[-0xb8] objects:&sp[0x48] count:16] != 0)
loc_1001184ec:
  1001184ec  mov     x0, x23
  1001184f0  bl      _objc_release
  1001184f4  ldp     x2, x25, [sp, #0x10]
  1001184f8  mov     x0, x25
  1001184fc  mov     x1, x24
  100118500  bl      _objc_msgSend                            ; [[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"dispatchUrl"]
  100118504  mov     x29, x29
  100118508  bl      _objc_retainAutoreleasedReturnValue
  10011850c  mov     x19, x0
  100118510  adrp    x8, #0x10041a000
  100118514  nop
  100118518  ldr     x1, [x8, #0x2d0]
  10011851c  adrp    x2, #0x1003c4000
  100118520  add     x2, x2, #0xb30                           ; @"http:"
  100118524  bl      _objc_msgSend                            ; [[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"dispatchUrl"] hasPrefix:@"http:"]
  100118528  mov     x20, x0
  10011852c  mov     x0, x19
  100118530  bl      _objc_release
  100118534  cbz     w20, loc_100118560                       ; if ([[[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] objectForKeyedSubscript:@"dispatchUrl"] hasPrefix:@"http:"] == 0)
  100118538  adrp    x8, #0x1003b8000
  10011853c  add     x8, x8, #0x518                           ; &d_1003b8518
  100118540  ldr     x3, [x8]                                 ; [&d_1003b8518] -> @"useSecure"
  100118544  adrp    x8, #0x10041b000
  100118548  nop
  10011854c  ldr     x1, [x8, #0xe00]
  100118550  adrp    x2, #0x1003bb000
  100118554  add     x2, x2, #0xe30                           ; @"0"
  100118558  ldr     x0, [sp, #0x40]
  10011855c  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:@"0" forKeyedSubscript:@"useSecure"]
loc_100118560:
  100118560  adrp    x8, #0x1003b8000
  100118564  add     x8, x8, #0x210                           ; &d_1003b8210
  100118568  ldr     x19, [x8]                                ; [&d_1003b8210] -> @"gaiVersion"
  10011856c  adrp    x8, #0x100416000
  100118570  nop
  100118574  ldr     x1, [x8, #0xda0]
  100118578  ldr     x22, [sp, #0x20]
  10011857c  mov     x0, x22
  100118580  mov     x2, x19
  100118584  bl      _objc_msgSend                            ; [arg1 valueForKey:@"gaiVersion"]
  100118588  mov     x29, x29
  10011858c  bl      _objc_retainAutoreleasedReturnValue
  100118590  mov     x20, x0
  100118594  adrp    x8, #0x10041b000
  100118598  nop
  10011859c  ldr     x21, [x8, #0xe00]
  1001185a0  ldr     x24, [sp, #0x40]
  1001185a4  mov     x0, x24
  1001185a8  mov     x1, x21
  1001185ac  mov     x2, x20
  1001185b0  mov     x3, x19
  1001185b4  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionary] setObject:[arg1 valueForKey:@"gaiVersion"] forKeyedSubscript:@"gaiVersion"]
  1001185b8  mov     x0, x20
  1001185bc  bl      _objc_release
  1001185c0  adrp    x8, #0x1003b8000
  1001185c4  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  1001185c8  ldr     x3, [x8]                                 ; [&d_1003b81f0] -> @"parameters"
  1001185cc  mov     x0, x25
  1001185d0  mov     x1, x21
  1001185d4  mov     x2, x24
  1001185d8  bl      _objc_msgSend                            ; [[[arg1 dictionaryWithValuesForKeys:[NSArray arrayWithObjects:&x29[-0x78] count:4]] mutableCopy] setObject:[NSMutableDictionary dictionary] forKeyedSubscript:@"parameters"]
  1001185dc  mov     x0, x24
  1001185e0  bl      _objc_release
  1001185e4  mov     x0, x23
  1001185e8  bl      _objc_release
  1001185ec  mov     x0, x22
  1001185f0  bl      _objc_release
  1001185f4  adrp    x8, #0x1003b0000
  1001185f8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1001185fc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100118600  ldur    x9, [x29, #-0x58]
  100118604  sub     x8, x8, x9
  100118608  cbnz    x8, loc_100118630                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011860c  mov     x0, x25
  100118610  sub     sp, x29, #0x50
  100118614  ldp     x28, x27, [sp], #0x10
  100118618  ldp     x26, x25, [sp], #0x10
  10011861c  ldp     x24, x23, [sp], #0x10
  100118620  ldp     x22, x21, [sp], #0x10
  100118624  ldp     x20, x19, [sp], #0x10
  100118628  ldp     x29, x30, [sp], #0x10
  10011862c  b       _objc_autoreleaseReturnValue
loc_100118630:
  100118630  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; +[GAIDataStore databaseFullPath:]
; address 0x100118634  size 196  kind objc
; ======================================================================
  100118634  stp     x29, x30, [sp, #-0x10]!
  100118638  mov     x29, sp
  10011863c  stp     x20, x19, [sp, #-0x10]!
  100118640  stp     x22, x21, [sp, #-0x10]!
  100118644  mov     x0, x2
  100118648  bl      _objc_retain
  10011864c  mov     x19, x0
  100118650  mov     x0, #5
  100118654  mov     x1, #1
  100118658  mov     w2, #1
  10011865c  bl      _NSSearchPathForDirectoriesInDomains     ; NSSearchPathForDirectoriesInDomains(5, 1, 1)
  100118660  mov     x29, x29
  100118664  bl      _objc_retainAutoreleasedReturnValue
  100118668  mov     x20, x0
  10011866c  adrp    x8, #0x100416000
  100118670  nop
  100118674  ldr     x1, [x8, #0xe30]
  100118678  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) count]
  10011867c  cbz     x0, loc_1001186d0                        ; if ([NSSearchPathForDirectoriesInDomains(5, 1, 1) count] == 0)
  100118680  adrp    x8, #0x10041b000
  100118684  nop
  100118688  ldr     x1, [x8, #0xf28]
  10011868c  mov     x2, #0
  100118690  mov     x0, x20
  100118694  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndexedSubscript:0]
  100118698  mov     x29, x29
  10011869c  bl      _objc_retainAutoreleasedReturnValue
  1001186a0  mov     x22, x0
  1001186a4  adrp    x8, #0x10041b000
  1001186a8  nop
  1001186ac  ldr     x1, [x8, #0xf30]
  1001186b0  mov     x2, x19
  1001186b4  bl      _objc_msgSend                            ; [[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndexedSubscript:0] stringByAppendingPathComponent:arg1]
  1001186b8  mov     x29, x29
  1001186bc  bl      _objc_retainAutoreleasedReturnValue
  1001186c0  mov     x21, x0
  1001186c4  mov     x0, x22
  1001186c8  bl      _objc_release
  1001186cc  b       loc_1001186d4
loc_1001186d0:
  1001186d0  mov     x21, #0
loc_1001186d4:
  1001186d4  mov     x0, x20
  1001186d8  bl      _objc_release
  1001186dc  mov     x0, x19
  1001186e0  bl      _objc_release
  1001186e4  mov     x0, x21
  1001186e8  ldp     x22, x21, [sp], #0x10
  1001186ec  ldp     x20, x19, [sp], #0x10
  1001186f0  ldp     x29, x30, [sp], #0x10
  1001186f4  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIDataStore databaseFullURL:]
; address 0x1001186f8  size 108  kind objc
; ======================================================================
  1001186f8  stp     x29, x30, [sp, #-0x10]!
  1001186fc  mov     x29, sp
  100118700  stp     x20, x19, [sp, #-0x10]!
  100118704  adrp    x8, #0x10041e000
  100118708  ldr     x19, [x8, #0xa0]                         ; class NSURL
  10011870c  adrp    x8, #0x10041b000
  100118710  nop
  100118714  ldr     x1, [x8, #0xe60]
  100118718  bl      _objc_msgSend                            ; [GAIDataStore databaseFullPath:arg1]
  10011871c  mov     x29, x29
  100118720  bl      _objc_retainAutoreleasedReturnValue
  100118724  mov     x20, x0
  100118728  adrp    x8, #0x10041b000
  10011872c  nop
  100118730  ldr     x1, [x8, #0xf38]
  100118734  mov     x0, x19
  100118738  mov     x2, x20
  10011873c  bl      _objc_msgSend                            ; [NSURL fileURLWithPath:[GAIDataStore databaseFullPath:arg1]]
  100118740  mov     x29, x29
  100118744  bl      _objc_retainAutoreleasedReturnValue
  100118748  mov     x19, x0
  10011874c  mov     x0, x20
  100118750  bl      _objc_release
  100118754  mov     x0, x19
  100118758  ldp     x20, x19, [sp], #0x10
  10011875c  ldp     x29, x30, [sp], #0x10
  100118760  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore deleteExcessHits:]
; address 0x100118764  size 508  kind objc
; ======================================================================
  100118764  stp     x29, x30, [sp, #-0x10]!
  100118768  mov     x29, sp
  10011876c  stp     x20, x19, [sp, #-0x10]!
  100118770  stp     x22, x21, [sp, #-0x10]!
  100118774  stp     x24, x23, [sp, #-0x10]!
  100118778  stp     x26, x25, [sp, #-0x10]!
  10011877c  stp     x28, x27, [sp, #-0x10]!
  100118780  sub     sp, sp, #0x30
  100118784  mov     x19, x2
  100118788  mov     x20, x0
  10011878c  adrp    x8, #0x10041b000
  100118790  nop
  100118794  ldr     x21, [x8, #0x9e8]
  100118798  mov     x1, x21
  10011879c  bl      _objc_msgSend                            ; [self maxHitCount]
  1001187a0  cbz     x0, loc_100118934                        ; if ([self maxHitCount] == 0)
  1001187a4  adrp    x8, #0x10041b000
  1001187a8  nop
  1001187ac  ldr     x1, [x8, #0xf40]
  1001187b0  mov     x0, x20
  1001187b4  mov     x2, x19
  1001187b8  bl      _objc_msgSend                            ; [self hitCount:arg1]
  1001187bc  mov     x22, x0
  1001187c0  mov     x0, x20
  1001187c4  mov     x1, x21
  1001187c8  bl      _objc_msgSend                            ; [self maxHitCount]
  1001187cc  cmp     x22, x0
  1001187d0  b.ls    loc_100118934                            ; if ([self hitCount:arg1] <=u [self maxHitCount])
  1001187d4  adrp    x8, #0x10041d000
  1001187d8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001187dc  adrp    x8, #0x10041b000
  1001187e0  nop
  1001187e4  ldr     x1, [x8, #0xdc8]
  1001187e8  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001187ec  mov     x29, x29
  1001187f0  bl      _objc_retainAutoreleasedReturnValue
  1001187f4  mov     x23, x0
  1001187f8  adrp    x8, #0x10041d000
  1001187fc  ldr     x24, [x8, #0xf78]                        ; class NSString
  100118800  adrp    x8, #0x1003b7000
  100118804  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100118808  ldr     x26, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10011880c  adrp    x8, #0x1003b7000
  100118810  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100118814  ldr     x27, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100118818  adrp    x8, #0x10041b000
  10011881c  nop
  100118820  ldr     x1, [x8, #0x580]
  100118824  adrp    x0, #0x1003c4000
  100118828  add     x0, x0, #0xb70                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10011882c  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100118830  mov     x29, x29
  100118834  bl      _objc_retainAutoreleasedReturnValue
  100118838  mov     x25, x0
  10011883c  adrp    x8, #0x100416000
  100118840  nop
  100118844  ldr     x1, [x8, #0xee8]
  100118848  mov     x8, #0x7d
  10011884c  adrp    x9, #0x100390000
  100118850  add     x9, x9, #0x23a                           ; "-[GAIDataStore deleteExcessHits:]"
  100118854  stp     x25, x8, [sp, #0x18]
  100118858  stp     x27, x9, [sp, #8]
  10011885c  str     x26, [sp]
  100118860  adrp    x2, #0x1003c4000
  100118864  add     x2, x2, #0xb50                           ; @"%@ %@ %s (%@:%d): Deleting excess hits."
  100118868  mov     x0, x24
  10011886c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Deleting excess hits.", @"GoogleAnalytics", @"3.09", "-[GAIDataStore deleteExcessHits:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 125]
  100118870  mov     x29, x29
  100118874  bl      _objc_retainAutoreleasedReturnValue
  100118878  mov     x24, x0
  10011887c  adrp    x8, #0x10041b000
  100118880  nop
  100118884  ldr     x1, [x8, #0xb08]
  100118888  mov     x0, x23
  10011888c  mov     x2, x24
  100118890  bl      _objc_msgSend                            ; [[GAI sharedLogger] verbose:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Deleting excess hits.", @"GoogleAnalytics", @"3.09", "-[GAIDataStore deleteExcessHits:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 125]]
  100118894  mov     x0, x24
  100118898  bl      _objc_release
  10011889c  mov     x0, x25
  1001188a0  bl      _objc_release
  1001188a4  mov     x0, x23
  1001188a8  bl      _objc_release
  1001188ac  mov     x0, x20
  1001188b0  mov     x1, x21
  1001188b4  bl      _objc_msgSend                            ; [self maxHitCount]
  1001188b8  sub     x2, x22, x0
  1001188bc  adrp    x8, #0x10041b000
  1001188c0  nop
  1001188c4  ldr     x1, [x8, #0xf48]
  1001188c8  mov     x0, x20
  1001188cc  mov     x3, x19
  1001188d0  bl      _objc_msgSend                            ; [self fetchHitsWithLimit:([self hitCount:arg1] - [self maxHitCount]) error:arg1]
  1001188d4  mov     x29, x29
  1001188d8  bl      _objc_retainAutoreleasedReturnValue
  1001188dc  mov     x21, x0
  1001188e0  adrp    x8, #0x1003b8000
  1001188e4  add     x8, x8, #0x200                           ; &d_1003b8200
  1001188e8  ldr     x2, [x8]                                 ; [&d_1003b8200] -> @"objectID"
  1001188ec  adrp    x8, #0x100416000
  1001188f0  nop
  1001188f4  ldr     x1, [x8, #0xda0]
  1001188f8  bl      _objc_msgSend                            ; [[self fetchHitsWithLimit:([self hitCount:arg1] - [self maxHitCount]) error:arg1] valueForKey:@"objectID"]
  1001188fc  mov     x29, x29
  100118900  bl      _objc_retainAutoreleasedReturnValue
  100118904  mov     x22, x0
  100118908  mov     x0, x21
  10011890c  bl      _objc_release
  100118910  adrp    x8, #0x10041b000
  100118914  nop
  100118918  ldr     x1, [x8, #0xf50]
  10011891c  mov     x0, x20
  100118920  mov     x2, x22
  100118924  mov     x3, x19
  100118928  bl      _objc_msgSend                            ; [self deleteHitsWithIds:[[self fetchHitsWithLimit:([self hitCount:arg1] - [self maxHitCount]) error:arg1] valueForKey:@"objectID"] error:arg1]
  10011892c  mov     x0, x22
  100118930  bl      _objc_release
loc_100118934:
  100118934  ldr     x8, [x19]                                ; x8 = arg1[+0x0]
  100118938  cmp     x8, #0
  10011893c  cset    w0, eq
  100118940  sub     sp, x29, #0x50
  100118944  ldp     x28, x27, [sp], #0x10
  100118948  ldp     x26, x25, [sp], #0x10
  10011894c  ldp     x24, x23, [sp], #0x10
  100118950  ldp     x22, x21, [sp], #0x10
  100118954  ldp     x20, x19, [sp], #0x10
  100118958  ldp     x29, x30, [sp], #0x10
  10011895c  ret

; ======================================================================
; -[GAIDataStore context:hitCount:]
; address 0x100118960  size 212  kind objc
; ======================================================================
  100118960  stp     x29, x30, [sp, #-0x10]!
  100118964  mov     x29, sp
  100118968  stp     x20, x19, [sp, #-0x10]!
  10011896c  stp     x22, x21, [sp, #-0x10]!
  100118970  sub     sp, sp, #0x30
  100118974  mov     x19, x3
  100118978  mov     x20, x0
  10011897c  mov     x0, x2
  100118980  bl      _objc_retain
  100118984  adrp    x8, #0x1003b0000
  100118988  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011898c  mov     w9, #-0x3e000000
  100118990  adr     x10, #0x100118a34                        ; &-[GAIDataStore context:hitCount:]_block_invoke
  100118994  nop
  100118998  str     x8, [sp]
  10011899c  stp     w9, wzr, [sp, #8]
  1001189a0  adrp    x8, #0x1003b7000
  1001189a4  add     x8, x8, #0xdc0                           ; &d_1003b7dc0
  1001189a8  stp     x10, x8, [sp, #0x10]
  1001189ac  str     x0, [sp, #0x20]
  1001189b0  bl      _objc_retain
  1001189b4  mov     x21, x0
  1001189b8  mov     x0, x20
  1001189bc  bl      _objc_retain
  1001189c0  str     x0, [sp, #0x28]
  1001189c4  adrp    x8, #0x10041b000
  1001189c8  nop
  1001189cc  ldr     x1, [x8, #0xf58]
  1001189d0  mov     x2, sp
  1001189d4  mov     x3, x19
  1001189d8  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore context:hitCount:]_block_invoke captures +0x20=arg1, +0x28=self} withError:arg2]
  1001189dc  mov     x29, x29
  1001189e0  bl      _objc_retainAutoreleasedReturnValue
  1001189e4  mov     x19, x0
  1001189e8  adrp    x8, #0x100417000
  1001189ec  nop
  1001189f0  ldr     x1, [x8, #0xb0]
  1001189f4  bl      _objc_msgSend                            ; [[self performBlockAndWait:^{-[GAIDataStore context:hitCount:]_block_invoke captures +0x20=arg1, +0x28=self} withError:arg2] integerValue]
  1001189f8  mov     x20, x0
  1001189fc  mov     x0, x19
  100118a00  bl      _objc_release
  100118a04  ldr     x0, [sp, #0x28]
  100118a08  bl      _objc_release
  100118a0c  ldr     x0, [sp, #0x20]
  100118a10  bl      _objc_release
  100118a14  mov     x0, x21
  100118a18  bl      _objc_release
  100118a1c  mov     x0, x20
  100118a20  sub     sp, x29, #0x20
  100118a24  ldp     x22, x21, [sp], #0x10
  100118a28  ldp     x20, x19, [sp], #0x10
  100118a2c  ldp     x29, x30, [sp], #0x10
  100118a30  ret

; ======================================================================
; -[GAIDataStore context:hitCount:]_block_invoke
; address 0x100118a34  size 140  kind block
; ======================================================================
  100118a34  stp     x29, x30, [sp, #-0x10]!
  100118a38  mov     x29, sp
  100118a3c  stp     x20, x19, [sp, #-0x10]!
  100118a40  stp     x22, x21, [sp, #-0x10]!
  100118a44  mov     x19, x1
  100118a48  ldp     x20, x0, [x0, #0x20]
  100118a4c  adrp    x8, #0x10041b000
  100118a50  nop
  100118a54  ldr     x1, [x8, #0xef0]
  100118a58  adrp    x2, #0x1003c4000
  100118a5c  add     x2, x2, #0xab0                           ; @"GAIHit"
  100118a60  bl      _objc_msgSend                            ; [x0 requestEntityName:@"GAIHit"]
  100118a64  mov     x29, x29
  100118a68  bl      _objc_retainAutoreleasedReturnValue
  100118a6c  mov     x21, x0
  100118a70  adrp    x8, #0x10041b000
  100118a74  nop
  100118a78  ldr     x1, [x8, #0x9f8]
  100118a7c  mov     x0, x20
  100118a80  mov     x2, x21
  100118a84  mov     x3, x19
  100118a88  bl      _objc_msgSend                            ; [x0 countForFetchRequest:[x0 requestEntityName:@"GAIHit"] error:blockarg1]
  100118a8c  mov     x19, x0
  100118a90  mov     x0, x21
  100118a94  bl      _objc_release
  100118a98  adrp    x8, #0x10041d000
  100118a9c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100118aa0  adrp    x8, #0x100417000
  100118aa4  nop
  100118aa8  ldr     x1, [x8, #0xe8]
  100118aac  mov     x2, x19
  100118ab0  ldp     x22, x21, [sp], #0x10
  100118ab4  ldp     x20, x19, [sp], #0x10
  100118ab8  ldp     x29, x30, [sp], #0x10
  100118abc  b       _objc_msgSend                            ; [NSNumber numberWithInteger:[x0 countForFetchRequest:[x0 requestEntityName:@"GAIHit"] error:blockarg1]]

; ======================================================================
; sub_100118ac0
; address 0x100118ac0  size 40  kind sub
; ======================================================================
  100118ac0  stp     x29, x30, [sp, #-0x10]!
  100118ac4  mov     x29, sp
  100118ac8  stp     x20, x19, [sp, #-0x10]!
  100118acc  mov     x19, x1
  100118ad0  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100118ad4  bl      _objc_retain
  100118ad8  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100118adc  ldp     x20, x19, [sp], #0x10
  100118ae0  ldp     x29, x30, [sp], #0x10
  100118ae4  b       _objc_retain

; ======================================================================
; sub_100118ae8
; address 0x100118ae8  size 40  kind sub
; ======================================================================
  100118ae8  stp     x29, x30, [sp, #-0x10]!
  100118aec  mov     x29, sp
  100118af0  stp     x20, x19, [sp, #-0x10]!
  100118af4  mov     x19, x0
  100118af8  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100118afc  bl      _objc_release
  100118b00  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100118b04  ldp     x20, x19, [sp], #0x10
  100118b08  ldp     x29, x30, [sp], #0x10
  100118b0c  b       _objc_release

; ======================================================================
; -[GAIDataStore context:removeStaleHits:]
; address 0x100118b10  size 232  kind objc
; ======================================================================
  100118b10  stp     x29, x30, [sp, #-0x10]!
  100118b14  mov     x29, sp
  100118b18  stp     x20, x19, [sp, #-0x10]!
  100118b1c  stp     x22, x21, [sp, #-0x10]!
  100118b20  sub     sp, sp, #0x30
  100118b24  mov     x19, x3
  100118b28  mov     x20, x0
  100118b2c  mov     x0, x2
  100118b30  bl      _objc_retain
  100118b34  mov     x21, x0
  100118b38  adrp    x8, #0x1003b0000
  100118b3c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100118b40  mov     w9, #-0x3e000000
  100118b44  str     x8, [sp]
  100118b48  stp     w9, wzr, [sp, #8]
  100118b4c  adr     x8, #0x100118bf8                         ; &-[GAIDataStore context:removeStaleHits:]_block_invoke
  100118b50  nop
  100118b54  str     x8, [sp, #0x10]
  100118b58  adrp    x8, #0x1003b7000
  100118b5c  add     x8, x8, #0xdf0                           ; &d_1003b7df0
  100118b60  str     x8, [sp, #0x18]
  100118b64  mov     x0, x20
  100118b68  bl      _objc_retain
  100118b6c  mov     x20, x0
  100118b70  stp     x20, x21, [sp, #0x20]
  100118b74  adrp    x8, #0x10041b000
  100118b78  nop
  100118b7c  ldr     x22, [x8, #0xf58]
  100118b80  mov     x0, x21
  100118b84  bl      _objc_retain
  100118b88  mov     x21, x0
  100118b8c  mov     x2, sp
  100118b90  mov     x0, x20
  100118b94  mov     x1, x22
  100118b98  mov     x3, x19
  100118b9c  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore context:removeStaleHits:]_block_invoke captures +0x20=self, +0x28=arg1} withError:arg2]
  100118ba0  mov     x29, x29
  100118ba4  bl      _objc_retainAutoreleasedReturnValue
  100118ba8  mov     x19, x0
  100118bac  adrp    x8, #0x100417000
  100118bb0  nop
  100118bb4  ldr     x1, [x8, #0xd8]
  100118bb8  bl      _objc_msgSend                            ; [[self performBlockAndWait:^{-[GAIDataStore context:removeStaleHits:]_block_invoke captures +0x20=self, +0x28=arg1} withError:arg2] boolValue]
  100118bbc  mov     x20, x0
  100118bc0  mov     x0, x19
  100118bc4  bl      _objc_release
  100118bc8  ldr     x0, [sp, #0x28]
  100118bcc  bl      _objc_release
  100118bd0  ldr     x0, [sp, #0x20]
  100118bd4  bl      _objc_release
  100118bd8  mov     x0, x21
  100118bdc  bl      _objc_release
  100118be0  mov     x0, x20
  100118be4  sub     sp, x29, #0x20
  100118be8  ldp     x22, x21, [sp], #0x10
  100118bec  ldp     x20, x19, [sp], #0x10
  100118bf0  ldp     x29, x30, [sp], #0x10
  100118bf4  ret

; ======================================================================
; -[GAIDataStore context:removeStaleHits:]_block_invoke
; address 0x100118bf8  size 612  kind block
; ======================================================================
  100118bf8  stp     x29, x30, [sp, #-0x10]!
  100118bfc  mov     x29, sp
  100118c00  stp     x20, x19, [sp, #-0x10]!
  100118c04  stp     x22, x21, [sp, #-0x10]!
  100118c08  stp     x24, x23, [sp, #-0x10]!
  100118c0c  stp     x26, x25, [sp, #-0x10]!
  100118c10  stp     x28, x27, [sp, #-0x10]!
  100118c14  sub     sp, sp, #0xf0
  100118c18  mov     x20, x1
  100118c1c  mov     x21, x0
  100118c20  adrp    x8, #0x1003b0000
  100118c24  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100118c28  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100118c2c  stur    x8, [x29, #-0x58]
  100118c30  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  100118c34  adrp    x8, #0x10041b000
  100118c38  nop
  100118c3c  ldr     x1, [x8, #0x998]
  100118c40  mov     x2, #0
  100118c44  bl      _objc_msgSend                            ; [self requestHitsWithLimit:0]
  100118c48  mov     x29, x29
  100118c4c  bl      _objc_retainAutoreleasedReturnValue
  100118c50  mov     x24, x0
  100118c54  str     x24, [sp, #0x20]
  100118c58  adrp    x8, #0x10041e000
  100118c5c  ldr     x22, [x8, #0x510]                        ; class NSPredicate
  100118c60  adrp    x8, #0x1003b8000
  100118c64  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  100118c68  ldr     x19, [x8]                                ; [&d_1003b81f8] -> @"timestamp"
  100118c6c  adrp    x8, #0x10041e000
  100118c70  ldr     x0, [x8, #0x38]                          ; class NSDate
  100118c74  adrp    x8, #0x100417000
  100118c78  nop
  100118c7c  ldr     x1, [x8, #0x6f8]
  100118c80  adrp    x8, #0x1002fa000
  100118c84  ldr     d0, [x8, #0xa28]                         ; d0 = -2592000.0
  100118c88  bl      _objc_msgSend                            ; [NSDate dateWithTimeIntervalSinceNow:-2.592e+06]
  100118c8c  mov     x29, x29
  100118c90  bl      _objc_retainAutoreleasedReturnValue
  100118c94  mov     x23, x0
  100118c98  adrp    x8, #0x10041b000
  100118c9c  nop
  100118ca0  ldr     x1, [x8, #0x9d0]
  100118ca4  stp     x19, x23, [sp]
  100118ca8  adrp    x2, #0x1003c3000
  100118cac  add     x2, x2, #0xeb0                           ; @"%K <= %@"
  100118cb0  mov     x0, x22
  100118cb4  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"%K <= %@", @"timestamp"]
  100118cb8  mov     x29, x29
  100118cbc  bl      _objc_retainAutoreleasedReturnValue
  100118cc0  mov     x22, x0
  100118cc4  adrp    x8, #0x10041b000
  100118cc8  nop
  100118ccc  ldr     x1, [x8, #0x9d8]
  100118cd0  mov     x0, x24
  100118cd4  mov     x2, x22
  100118cd8  bl      _objc_msgSend                            ; [[self requestHitsWithLimit:0] setPredicate:[NSPredicate predicateWithFormat:@"%K <= %@", @"timestamp"]]
  100118cdc  mov     x0, x22
  100118ce0  bl      _objc_release
  100118ce4  mov     x0, x23
  100118ce8  bl      _objc_release
  100118cec  ldr     x0, [x21, #0x28]                         ; x0 = captured arg1
  100118cf0  adrp    x8, #0x10041b000
  100118cf4  nop
  100118cf8  ldr     x1, [x8, #0x9a0]
  100118cfc  mov     x2, x24
  100118d00  mov     x3, x20
  100118d04  bl      _objc_msgSend                            ; [arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1]
  100118d08  mov     x29, x29
  100118d0c  bl      _objc_retainAutoreleasedReturnValue
  100118d10  mov     x22, x0
  100118d14  stp     xzr, xzr, [x29, #-0x68]
  100118d18  stp     xzr, xzr, [x29, #-0x78]
  100118d1c  stp     xzr, xzr, [x29, #-0x88]
  100118d20  stp     xzr, xzr, [x29, #-0x98]
  100118d24  adrp    x8, #0x100416000
  100118d28  nop
  100118d2c  ldr     x23, [x8, #0xe00]
  100118d30  sub     x2, x29, #0x98
  100118d34  add     x3, sp, #0x28
  100118d38  mov     x4, #0x10
  100118d3c  mov     x1, x23
  100118d40  bl      _objc_msgSend                            ; [[arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100118d44  mov     x25, x0
  100118d48  cbz     x25, loc_100118dc4                       ; if ([[arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  100118d4c  ldur    x8, [x29, #-0x88]
  100118d50  ldr     x28, [x8]
  100118d54  adrp    x8, #0x10041b000
  100118d58  add     x8, x8, #0x9b8                           ; &@selector(deleteObject:)
  100118d5c  ldr     x24, [x8]
  100118d60  sub     x26, x29, #0x98
  100118d64  add     x27, sp, #0x28
loc_100118d68:
  100118d68  mov     x19, #0
loc_100118d6c:
  100118d6c  ldur    x8, [x29, #-0x88]
  100118d70  ldr     x8, [x8]
  100118d74  cmp     x8, x28
  100118d78  b.eq    loc_100118d84                            ; if (x8 == x28)
  100118d7c  mov     x0, x22
  100118d80  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1])
loc_100118d84:
  100118d84  ldur    x8, [x29, #-0x90]
  100118d88  ldr     x2, [x8, x19, lsl #3]
  100118d8c  ldr     x0, [x21, #0x28]                         ; x0 = captured arg1
  100118d90  mov     x1, x24
  100118d94  bl      _objc_msgSend                            ; [arg1 deleteObject:x2]
  100118d98  add     x19, x19, #1
  100118d9c  cmp     x19, x25
  100118da0  b.lo    loc_100118d6c                            ; if ((x19 + 1) <u [[arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] object…)
  100118da4  mov     x4, #0x10
  100118da8  mov     x0, x22
  100118dac  mov     x1, x23
  100118db0  mov     x2, x26
  100118db4  mov     x3, x27
  100118db8  bl      _objc_msgSend                            ; [[arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  100118dbc  mov     x25, x0
  100118dc0  cbnz    x25, loc_100118d68                       ; if ([[arg1 executeFetchRequest:[self requestHitsWithLimit:0] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_100118dc4:
  100118dc4  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  100118dc8  adrp    x8, #0x10041b000
  100118dcc  nop
  100118dd0  ldr     x1, [x8, #0xa10]
  100118dd4  mov     x2, x20
  100118dd8  bl      _objc_msgSend                            ; [self save:blockarg1]
  100118ddc  adrp    x8, #0x10041d000
  100118de0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100118de4  ldr     x8, [x20]                                ; x8 = blockarg1[+0x0]
  100118de8  cmp     x8, #0
  100118dec  cset    w2, eq
  100118df0  adrp    x8, #0x100416000
  100118df4  nop
  100118df8  ldr     x1, [x8, #0xec0]
  100118dfc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:(blockarg1[+0x0] == 0)]
  100118e00  mov     x29, x29
  100118e04  bl      _objc_retainAutoreleasedReturnValue
  100118e08  mov     x20, x0
  100118e0c  mov     x0, x22
  100118e10  bl      _objc_release
  100118e14  ldr     x0, [sp, #0x20]
  100118e18  bl      _objc_release
  100118e1c  adrp    x8, #0x1003b0000
  100118e20  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100118e24  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100118e28  ldur    x9, [x29, #-0x58]
  100118e2c  sub     x8, x8, x9
  100118e30  cbnz    x8, loc_100118e58                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100118e34  mov     x0, x20
  100118e38  sub     sp, x29, #0x50
  100118e3c  ldp     x28, x27, [sp], #0x10
  100118e40  ldp     x26, x25, [sp], #0x10
  100118e44  ldp     x24, x23, [sp], #0x10
  100118e48  ldp     x22, x21, [sp], #0x10
  100118e4c  ldp     x20, x19, [sp], #0x10
  100118e50  ldp     x29, x30, [sp], #0x10
  100118e54  b       _objc_autoreleaseReturnValue
loc_100118e58:
  100118e58  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_100118e5c
; address 0x100118e5c  size 40  kind sub
; ======================================================================
  100118e5c  stp     x29, x30, [sp, #-0x10]!
  100118e60  mov     x29, sp
  100118e64  stp     x20, x19, [sp, #-0x10]!
  100118e68  mov     x19, x1
  100118e6c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100118e70  bl      _objc_retain
  100118e74  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100118e78  ldp     x20, x19, [sp], #0x10
  100118e7c  ldp     x29, x30, [sp], #0x10
  100118e80  b       _objc_retain

; ======================================================================
; sub_100118e84
; address 0x100118e84  size 40  kind sub
; ======================================================================
  100118e84  stp     x29, x30, [sp, #-0x10]!
  100118e88  mov     x29, sp
  100118e8c  stp     x20, x19, [sp, #-0x10]!
  100118e90  mov     x19, x0
  100118e94  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100118e98  bl      _objc_release
  100118e9c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100118ea0  ldp     x20, x19, [sp], #0x10
  100118ea4  ldp     x29, x30, [sp], #0x10
  100118ea8  b       _objc_release

; ======================================================================
; +[GAIDataStore thread]
; address 0x100118eac  size 32  kind objc
; ======================================================================
  100118eac  adrp    x8, #0x10041d000
  100118eb0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100118eb4  adrp    x8, #0x100416000
  100118eb8  nop
  100118ebc  ldr     x1, [x8, #0xda0]
  100118ec0  adrp    x2, #0x1003c4000
  100118ec4  add     x2, x2, #0xb90                           ; @"thread"
  100118ec8  b       _objc_msgSend                            ; [GAI valueForKey:@"thread"]

; ======================================================================
; -[GAIDataStore gai_performBlockHelper:]
; address 0x100118ecc  size 252  kind objc
; ======================================================================
  100118ecc  stp     x29, x30, [sp, #-0x10]!
  100118ed0  mov     x29, sp
  100118ed4  stp     x20, x19, [sp, #-0x10]!
  100118ed8  stp     x22, x21, [sp, #-0x10]!
  100118edc  sub     sp, sp, #0x10
  100118ee0  mov     x20, x0
  100118ee4  mov     x0, x2
  100118ee8  bl      _objc_retain
  100118eec  mov     x19, x0
  100118ef0  adrp    x8, #0x10041b000
  100118ef4  nop
  100118ef8  ldr     x1, [x8, #0xb70]
  100118efc  adrp    x2, #0x1003c4000
  100118f00  add     x2, x2, #0xbb0                           ; @"block"
  100118f04  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"block"]
  100118f08  mov     x29, x29
  100118f0c  bl      _objc_retainAutoreleasedReturnValue
  100118f10  mov     x22, x0
  100118f14  str     xzr, [sp, #8]
  100118f18  adrp    x8, #0x10041b000
  100118f1c  nop
  100118f20  ldr     x1, [x8, #0xf58]
  100118f24  add     x3, sp, #8
  100118f28  mov     x0, x20
  100118f2c  mov     x2, x22
  100118f30  bl      _objc_msgSend                            ; [self performBlockAndWait:[arg1 objectForKeyedSubscript:@"block"] withError:&sp[0x8]]
  100118f34  mov     x29, x29
  100118f38  bl      _objc_retainAutoreleasedReturnValue
  100118f3c  mov     x20, x0
  100118f40  ldr     x0, [sp, #8]
  100118f44  bl      _objc_retain
  100118f48  mov     x21, x0
  100118f4c  mov     x0, x22
  100118f50  bl      _objc_release
  100118f54  cbz     x20, loc_100118f78                       ; if ([self performBlockAndWait:[arg1 objectForKeyedSubscript:@"block"] withError:&sp[0x8]] == 0)
  100118f58  adrp    x8, #0x10041b000
  100118f5c  nop
  100118f60  ldr     x1, [x8, #0xe00]
  100118f64  adrp    x3, #0x1003c4000
  100118f68  add     x3, x3, #0xbd0                           ; @"result"
  100118f6c  mov     x0, x19
  100118f70  mov     x2, x20
  100118f74  bl      _objc_msgSend                            ; [arg1 setObject:[self performBlockAndWait:[arg1 objectForKeyedSubscript:@"block"] withError:&sp[0x8]] forKeyedSubscript:@"result"]
loc_100118f78:
  100118f78  cbz     x21, loc_100118f9c                       ; if (0 == 0)
  100118f7c  adrp    x8, #0x10041b000
  100118f80  nop
  100118f84  ldr     x1, [x8, #0xe00]
  100118f88  adrp    x3, #0x1003c4000
  100118f8c  add     x3, x3, #0xbf0                           ; @"error"
  100118f90  mov     x0, x19
  100118f94  mov     x2, x21
  100118f98  bl      _objc_msgSend                            ; [arg1 setObject:0 forKeyedSubscript:@"error"]
loc_100118f9c:
  100118f9c  mov     x0, x20
  100118fa0  bl      _objc_release
  100118fa4  mov     x0, x21
  100118fa8  bl      _objc_release
  100118fac  mov     x0, x19
  100118fb0  bl      _objc_release
  100118fb4  sub     sp, x29, #0x20
  100118fb8  ldp     x22, x21, [sp], #0x10
  100118fbc  ldp     x20, x19, [sp], #0x10
  100118fc0  ldp     x29, x30, [sp], #0x10
  100118fc4  ret

; ======================================================================
; -[GAIDataStore performBlockAndWait:withError:]
; address 0x100118fc8  size 1036  kind objc
; ======================================================================
  100118fc8  stp     x29, x30, [sp, #-0x10]!
  100118fcc  mov     x29, sp
  100118fd0  stp     x20, x19, [sp, #-0x10]!
  100118fd4  stp     x22, x21, [sp, #-0x10]!
  100118fd8  stp     x24, x23, [sp, #-0x10]!
  100118fdc  stp     x26, x25, [sp, #-0x10]!
  100118fe0  stp     x28, x27, [sp, #-0x10]!
  100118fe4  sub     sp, sp, #0x50
  100118fe8  mov     x21, x3
  100118fec  mov     x22, x0
  100118ff0  adrp    x26, #0x1003b0000
  100118ff4  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100118ff8  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100118ffc  str     x8, [sp, #0x48]
  100119000  mov     x0, x2
  100119004  bl      _objc_retain
  100119008  mov     x19, x0
  10011900c  adrp    x8, #0x100417000
  100119010  nop
  100119014  ldr     x1, [x8, #0x2e0]
  100119018  mov     x0, x22
  10011901c  bl      _objc_msgSend                            ; [self class]
  100119020  adrp    x8, #0x10041b000
  100119024  nop
  100119028  ldr     x1, [x8, #0xe50]
  10011902c  bl      _objc_msgSend                            ; [[self class] thread]
  100119030  mov     x29, x29
  100119034  bl      _objc_retainAutoreleasedReturnValue
  100119038  mov     x20, x0
  10011903c  adrp    x8, #0x10041e000
  100119040  ldr     x0, [x8, #0x108]                         ; class NSThread
  100119044  adrp    x8, #0x10041b000
  100119048  nop
  10011904c  ldr     x1, [x8, #0xf60]
  100119050  bl      _objc_msgSend                            ; [NSThread currentThread]
  100119054  mov     x29, x29
  100119058  bl      _objc_retainAutoreleasedReturnValue
  10011905c  mov     x23, x0
  100119060  bl      _objc_release
  100119064  cmp     x23, x20
  100119068  b.eq    loc_10011913c                            ; if ([NSThread currentThread] == [[self class] thread])
  10011906c  adrp    x8, #0x10041d000
  100119070  ldr     x23, [x8, #0xf90]                        ; class NSMutableDictionary
  100119074  mov     x0, x19
  100119078  bl      _objc_retainBlock
  10011907c  mov     x24, x0
  100119080  adrp    x8, #0x100417000
  100119084  nop
  100119088  ldr     x1, [x8, #0xf90]
  10011908c  adrp    x8, #0x1003c4000
  100119090  add     x8, x8, #0xbb0                           ; @"block"
  100119094  stp     x8, xzr, [sp]
  100119098  mov     x0, x23
  10011909c  mov     x2, x24
  1001190a0  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithObjectsAndKeys:arg1, @"block", nil]
  1001190a4  mov     x29, x29
  1001190a8  bl      _objc_retainAutoreleasedReturnValue
  1001190ac  mov     x25, x0
  1001190b0  mov     x0, x24
  1001190b4  bl      _objc_release
  1001190b8  adrp    x8, #0x10041b000
  1001190bc  nop
  1001190c0  ldr     x2, [x8, #0xf68]
  1001190c4  adrp    x8, #0x10041b000
  1001190c8  nop
  1001190cc  ldr     x1, [x8, #0xe58]
  1001190d0  mov     w5, #1
  1001190d4  mov     x0, x22
  1001190d8  mov     x3, x20
  1001190dc  mov     x4, x25
  1001190e0  bl      _objc_msgSend                            ; [self performSelector:@selector(gai_performBlockHelper:) onThread:[[self class] thread] withObject:[NSMutableDictionary dictionaryWithObjectsAndKeys:arg1, @"block", nil] waitUntilDone:1]
  1001190e4  adrp    x8, #0x10041b000
  1001190e8  nop
  1001190ec  ldr     x23, [x8, #0xb70]
  1001190f0  adrp    x2, #0x1003c4000
  1001190f4  add     x2, x2, #0xbf0                           ; @"error"
  1001190f8  mov     x0, x25
  1001190fc  mov     x1, x23
  100119100  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithObjectsAndKeys:arg1, @"block", nil] objectForKeyedSubscript:@"error"]
  100119104  mov     x29, x29
  100119108  bl      _objc_retainAutoreleasedReturnValue
  10011910c  mov     x22, x0
  100119110  adrp    x2, #0x1003c4000
  100119114  add     x2, x2, #0xbd0                           ; @"result"
  100119118  mov     x0, x25
  10011911c  mov     x1, x23
  100119120  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithObjectsAndKeys:arg1, @"block", nil] objectForKeyedSubscript:@"result"]
  100119124  mov     x29, x29
  100119128  bl      _objc_retainAutoreleasedReturnValue
  10011912c  mov     x23, x0
  100119130  mov     x0, x25
  100119134  bl      _objc_release
  100119138  b       loc_100119184
loc_10011913c:
  10011913c  adrp    x8, #0x100420000
  100119140  ldrsw   x8, [x8, #0x82c]                         ; ivar offset GAIDataStore._currentContext (+0x48)
  100119144  ldr     x8, [x22, x8]                            ; x8 = self->_currentContext
  100119148  cbz     x8, loc_10011917c                        ; if (self->_currentContext == 0)
  10011914c  str     xzr, [sp, #0x40]
  100119150  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  100119154  add     x1, sp, #0x40
  100119158  mov     x0, x19
  10011915c  blr     x8                                       ; call arg1[+0x10]
  100119160  mov     x29, x29
  100119164  bl      _objc_retainAutoreleasedReturnValue
  100119168  mov     x23, x0
  10011916c  ldr     x0, [sp, #0x40]
  100119170  bl      _objc_retain
  100119174  mov     x22, x0
  100119178  b       loc_100119184
loc_10011917c:
  10011917c  mov     x22, #0
loc_100119180:
  100119180  mov     x23, #0
loc_100119184:
  100119184  cbz     x21, loc_100119198                       ; if (arg2 == 0)
  100119188  mov     x0, x22
  10011918c  bl      _objc_retainAutorelease
  100119190  str     x0, [x21]                                ; arg2[+0x0] = x0
  100119194  b       loc_100119274
loc_100119198:
  100119198  cbz     x22, loc_100119274                       ; if (x22 == 0)
  10011919c  adrp    x8, #0x10041d000
  1001191a0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001191a4  adrp    x8, #0x10041b000
  1001191a8  nop
  1001191ac  ldr     x1, [x8, #0xdc8]
  1001191b0  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001191b4  mov     x29, x29
  1001191b8  bl      _objc_retainAutoreleasedReturnValue
  1001191bc  mov     x21, x0
  1001191c0  adrp    x8, #0x10041d000
  1001191c4  ldr     x24, [x8, #0xf78]                        ; class NSString
  1001191c8  adrp    x8, #0x1003b7000
  1001191cc  add     x8, x8, #0xd70                           ; &d_1003b7d70
  1001191d0  ldr     x27, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  1001191d4  adrp    x8, #0x1003b7000
  1001191d8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  1001191dc  ldr     x28, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  1001191e0  adrp    x8, #0x10041b000
  1001191e4  nop
  1001191e8  ldr     x1, [x8, #0x580]
  1001191ec  adrp    x0, #0x1003c4000
  1001191f0  add     x0, x0, #0xb70                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001191f4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001191f8  mov     x29, x29
  1001191fc  bl      _objc_retainAutoreleasedReturnValue
  100119200  mov     x25, x0
  100119204  adrp    x8, #0x100416000
  100119208  nop
  10011920c  ldr     x1, [x8, #0xee8]
  100119210  mov     x8, #0xd5
  100119214  adrp    x9, #0x100390000
  100119218  add     x9, x9, #0x35a                           ; "-[GAIDataStore performBlockAndWait:withError:]"
  10011921c  stp     x8, x22, [sp, #0x20]
  100119220  stp     x9, x25, [sp, #0x10]
  100119224  stp     x27, x28, [sp]
  100119228  adrp    x2, #0x1003c4000
  10011922c  add     x2, x2, #0xc30                           ; @"%@ %@ %s (%@:%d): Datastore error: %@"
  100119230  mov     x0, x24
  100119234  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Datastore error: %@", @"GoogleAnalytics", @"3.09", "-[GAIDataStore performBlockAndWait:withError:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 213, sp[40]]
  100119238  mov     x29, x29
  10011923c  bl      _objc_retainAutoreleasedReturnValue
  100119240  mov     x24, x0
  100119244  adrp    x8, #0x10041b000
  100119248  nop
  10011924c  ldr     x1, [x8, #0xdd0]
  100119250  mov     x0, x21
  100119254  mov     x2, x24
  100119258  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Datastore error: %@", @"GoogleAnalytics", @"3.09", "-[GAIDataStore performBlockAndWait:withError:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 213, sp[40]]]
  10011925c  mov     x0, x24
  100119260  bl      _objc_release
  100119264  mov     x0, x25
  100119268  bl      _objc_release
  10011926c  mov     x0, x21
  100119270  bl      _objc_release
loc_100119274:
  100119274  mov     x0, x20
  100119278  bl      _objc_release
  10011927c  mov     x0, x22
  100119280  bl      _objc_release
  100119284  mov     x0, x19
  100119288  bl      _objc_release
  10011928c  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100119290  ldr     x9, [sp, #0x48]
  100119294  sub     x8, x8, x9
  100119298  cbnz    x8, loc_1001192c0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011929c  mov     x0, x23
  1001192a0  sub     sp, x29, #0x50
  1001192a4  ldp     x28, x27, [sp], #0x10
  1001192a8  ldp     x26, x25, [sp], #0x10
  1001192ac  ldp     x24, x23, [sp], #0x10
  1001192b0  ldp     x22, x21, [sp], #0x10
  1001192b4  ldp     x20, x19, [sp], #0x10
  1001192b8  ldp     x29, x30, [sp], #0x10
  1001192bc  b       _objc_autoreleaseReturnValue
loc_1001192c0:
  1001192c0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1001192c4  mov     x8, x1
  1001192c8  mov     x22, x0
  1001192cc  cmp     w8, #1
  1001192d0  b.ne    loc_1001193cc                            ; if (w8 != 1)
  1001192d4  mov     x0, x22
  1001192d8  bl      _objc_begin_catch                        ; objc_begin_catch()
  1001192dc  mov     x29, x29
  1001192e0  bl      _objc_retainAutoreleasedReturnValue
  1001192e4  mov     x23, x0
  1001192e8  adrp    x8, #0x10041e000
  1001192ec  ldr     x8, [x8, #0x5d8]                         ; class GAIUtil
  1001192f0  adrp    x9, #0x10041b000
  1001192f4  nop
  1001192f8  ldr     x9, [x9, #0xf70]
  1001192fc  mov     x0, x8
  100119300  mov     x1, x9
  100119304  mov     x2, x23
  100119308  bl      _objc_msgSend                            ; [GAIUtil descriptionFromException:objc_begin_catch()]
  10011930c  mov     x29, x29
  100119310  bl      _objc_retainAutoreleasedReturnValue
  100119314  mov     x24, x0
  100119318  adrp    x8, #0x10041e000
  10011931c  ldr     x22, [x8, #0x5e0]                        ; class NSError
  100119320  adrp    x8, #0x1003c4000
  100119324  add     x8, x8, #0xc10                           ; @"exception"
  100119328  stp     x8, x24, [sp, #0x30]
  10011932c  adrp    x8, #0x10041d000
  100119330  ldr     x8, [x8, #0xef8]                         ; class NSDictionary
  100119334  adrp    x9, #0x100416000
  100119338  nop
  10011933c  ldr     x9, [x9, #0xcd0]
  100119340  add     x10, sp, #0x38
  100119344  add     x11, sp, #0x30
  100119348  mov     x4, #1
  10011934c  mov     x0, x8
  100119350  mov     x1, x9
  100119354  mov     x2, x10
  100119358  mov     x3, x11
  10011935c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x30] count:1]
  100119360  adrp    x8, #0x1003b0000
  100119364  ldr     x8, [x8, #0x88]                          ; _NSSQLiteErrorDomain
  100119368  ldr     x27, [x8]                                ; x27 = _NSSQLiteErrorDomain[+0x0]
  10011936c  bl      _objc_retain
  100119370  mov     x25, x0
  100119374  adrp    x8, #0x10041b000
  100119378  nop
  10011937c  ldr     x8, [x8, #0xf78]
  100119380  mov     x3, #-1
  100119384  mov     x0, x22
  100119388  mov     x1, x8
  10011938c  mov     x2, x27
  100119390  mov     x4, x25
  100119394  bl      _objc_msgSend                            ; [NSError errorWithDomain:_NSSQLiteErrorDomain[+0x0] code:-1 userInfo:[NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x30] count:1]]
  100119398  mov     x29, x29
  10011939c  bl      _objc_retainAutoreleasedReturnValue
  1001193a0  mov     x22, x0
  1001193a4  mov     x0, x25
  1001193a8  bl      _objc_release
  1001193ac  mov     x0, x24
  1001193b0  bl      _objc_release
  1001193b4  mov     x0, x23
  1001193b8  bl      _objc_release
  1001193bc  bl      _objc_end_catch                          ; objc_end_catch()
  1001193c0  b       loc_100119180
  1001193c4  mov     x22, x0
  1001193c8  bl      _objc_end_catch                          ; objc_end_catch()
loc_1001193cc:
  1001193cc  mov     x0, x22
  1001193d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAIDataStore coordinatorWithModel:URL:]
; address 0x1001193d4  size 868  kind objc
; ======================================================================
  1001193d4  stp     x29, x30, [sp, #-0x10]!
  1001193d8  mov     x29, sp
  1001193dc  stp     x20, x19, [sp, #-0x10]!
  1001193e0  stp     x22, x21, [sp, #-0x10]!
  1001193e4  stp     x24, x23, [sp, #-0x10]!
  1001193e8  stp     x26, x25, [sp, #-0x10]!
  1001193ec  stp     x28, x27, [sp, #-0x10]!
  1001193f0  sub     sp, sp, #0x50
  1001193f4  mov     x19, x3
  1001193f8  mov     x0, x2
  1001193fc  bl      _objc_retain
  100119400  mov     x21, x0
  100119404  mov     x0, x19
  100119408  bl      _objc_retain
  10011940c  mov     x19, x0
  100119410  adrp    x8, #0x10041e000
  100119414  ldr     x0, [x8, #0x5e8]                         ; class NSPersistentStoreCoordinator
  100119418  adrp    x8, #0x100416000
  10011941c  nop
  100119420  ldr     x1, [x8, #0xac8]
  100119424  bl      _objc_msgSend                            ; [NSPersistentStoreCoordinator alloc]
  100119428  adrp    x8, #0x10041b000
  10011942c  nop
  100119430  ldr     x1, [x8, #0xf80]
  100119434  mov     x2, x21
  100119438  bl      _objc_msgSend                            ; [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:arg1]
  10011943c  mov     x27, x0
  100119440  mov     x0, x21
  100119444  bl      _objc_release
  100119448  adrp    x8, #0x1003b0000
  10011944c  ldr     x8, [x8, #0x90]                          ; _NSSQLiteStoreType
  100119450  ldr     x23, [x8]                                ; x23 = _NSSQLiteStoreType[+0x0]
  100119454  str     xzr, [sp, #0x48]
  100119458  adrp    x8, #0x10041b000
  10011945c  nop
  100119460  ldr     x24, [x8, #0xf88]
  100119464  mov     x3, #0
  100119468  mov     x5, #0
  10011946c  add     x6, sp, #0x48
  100119470  mov     x0, x27
  100119474  mov     x1, x24
  100119478  mov     x2, x23
  10011947c  mov     x4, x19
  100119480  bl      _objc_msgSend                            ; [[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:arg1] addPersistentStoreWithType:_NSSQLiteStoreType[+0x0] configuration:0 URL:arg2 options:0 error:&sp[0x48]]
  100119484  mov     x29, x29
  100119488  bl      _objc_retainAutoreleasedReturnValue
  10011948c  mov     x21, x0
  100119490  ldr     x0, [sp, #0x48]
  100119494  bl      _objc_retain
  100119498  mov     x22, x0
  10011949c  cbnz    x21, loc_10011961c                       ; if ([[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:arg1] addPersistentStoreWithType:_NSSQLiteStoreType[+0x0] configuration:0 URL:arg2 options:0 error:&sp[0x48]] != 0)
  1001194a0  adrp    x8, #0x10041e000
  1001194a4  ldr     x0, [x8, #0x4f0]                         ; class NSFileManager
  1001194a8  adrp    x8, #0x10041b000
  1001194ac  nop
  1001194b0  ldr     x1, [x8, #0x8b0]
  1001194b4  bl      _objc_msgSend                            ; [NSFileManager defaultManager]
  1001194b8  mov     x29, x29
  1001194bc  bl      _objc_retainAutoreleasedReturnValue
  1001194c0  mov     x25, x0
  1001194c4  adrp    x8, #0x10041b000
  1001194c8  nop
  1001194cc  ldr     x1, [x8, #0xf90]
  1001194d0  mov     x3, #0
  1001194d4  mov     x2, x19
  1001194d8  bl      _objc_msgSend                            ; [[NSFileManager defaultManager] removeItemAtURL:arg2 error:0]
  1001194dc  mov     x0, x25
  1001194e0  bl      _objc_release
  1001194e4  adrp    x8, #0x10041d000
  1001194e8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001194ec  adrp    x8, #0x10041b000
  1001194f0  nop
  1001194f4  ldr     x1, [x8, #0xdc8]
  1001194f8  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001194fc  mov     x29, x29
  100119500  bl      _objc_retainAutoreleasedReturnValue
  100119504  mov     x25, x0
  100119508  adrp    x8, #0x10041d000
  10011950c  ldr     x26, [x8, #0xf78]                        ; class NSString
  100119510  adrp    x8, #0x1003b7000
  100119514  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100119518  ldr     x28, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10011951c  adrp    x8, #0x1003b7000
  100119520  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100119524  ldr     x20, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100119528  adrp    x8, #0x10041b000
  10011952c  nop
  100119530  ldr     x1, [x8, #0x580]
  100119534  adrp    x0, #0x1003c4000
  100119538  add     x0, x0, #0xb70                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10011953c  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100119540  mov     x29, x29
  100119544  bl      _objc_retainAutoreleasedReturnValue
  100119548  str     x27, [sp, #0x38]
  10011954c  mov     x27, x0
  100119550  adrp    x8, #0x100416000
  100119554  nop
  100119558  ldr     x1, [x8, #0xee8]
  10011955c  stp     x19, x22, [sp, #0x28]
  100119560  mov     x8, #0xe9
  100119564  adrp    x9, #0x100390000
  100119568  add     x9, x9, #0x3be                           ; "-[GAIDataStore coordinatorWithModel:URL:]"
  10011956c  stp     x27, x8, [sp, #0x18]
  100119570  stp     x20, x9, [sp, #8]
  100119574  adrp    x2, #0x1003c4000
  100119578  add     x2, x2, #0xc50                           ; @"%@ %@ %s (%@:%d): Corrupted database with URL %@: %@"
  10011957c  str     x28, [sp]
  100119580  mov     x0, x26
  100119584  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Corrupted database with URL %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIDataStore coordinatorWithModel:URL:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 233, arg2, 0]
  100119588  mov     x29, x29
  10011958c  bl      _objc_retainAutoreleasedReturnValue
  100119590  mov     x26, x0
  100119594  adrp    x8, #0x10041b000
  100119598  nop
  10011959c  ldr     x1, [x8, #0xe90]
  1001195a0  mov     x0, x25
  1001195a4  mov     x2, x26
  1001195a8  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Corrupted database with URL %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIDataStore coordinatorWithModel:URL:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 233, arg2, 0]]
  1001195ac  mov     x0, x26
  1001195b0  bl      _objc_release
  1001195b4  mov     x0, x27
  1001195b8  ldr     x27, [sp, #0x38]
  1001195bc  bl      _objc_release
  1001195c0  mov     x0, x25
  1001195c4  bl      _objc_release
  1001195c8  str     x22, [sp, #0x40]
  1001195cc  mov     x3, #0
  1001195d0  mov     x5, #0
  1001195d4  add     x6, sp, #0x40
  1001195d8  mov     x0, x27
  1001195dc  mov     x1, x24
  1001195e0  mov     x2, x23
  1001195e4  mov     x4, x19
  1001195e8  bl      _objc_msgSend                            ; [[[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:arg1] addPersistentStoreWithType:_NSSQLiteStoreType[+0x0] configuration:0 URL:arg2 options:0 error:&sp[0x40]]
  1001195ec  mov     x29, x29
  1001195f0  bl      _objc_retainAutoreleasedReturnValue
  1001195f4  mov     x23, x0
  1001195f8  ldr     x0, [sp, #0x40]
  1001195fc  bl      _objc_retain
  100119600  mov     x24, x0
  100119604  mov     x0, x22
  100119608  bl      _objc_release
  10011960c  mov     x0, x21
  100119610  bl      _objc_release
  100119614  mov     x21, x23
  100119618  mov     x22, x24
loc_10011961c:
  10011961c  cbnz    x21, loc_1001196fc                       ; if (x21 != 0)
  100119620  adrp    x8, #0x10041d000
  100119624  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100119628  adrp    x8, #0x10041b000
  10011962c  nop
  100119630  ldr     x1, [x8, #0xdc8]
  100119634  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100119638  mov     x29, x29
  10011963c  bl      _objc_retainAutoreleasedReturnValue
  100119640  mov     x23, x0
  100119644  adrp    x8, #0x10041d000
  100119648  ldr     x24, [x8, #0xf78]                        ; class NSString
  10011964c  adrp    x8, #0x1003b7000
  100119650  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100119654  ldr     x20, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100119658  adrp    x8, #0x1003b7000
  10011965c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100119660  ldr     x26, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100119664  adrp    x8, #0x10041b000
  100119668  nop
  10011966c  ldr     x1, [x8, #0x580]
  100119670  adrp    x0, #0x1003c4000
  100119674  add     x0, x0, #0xb70                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100119678  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10011967c  mov     x29, x29
  100119680  bl      _objc_retainAutoreleasedReturnValue
  100119684  mov     x25, x0
  100119688  adrp    x8, #0x100416000
  10011968c  nop
  100119690  ldr     x1, [x8, #0xee8]
  100119694  stp     x19, x22, [sp, #0x28]
  100119698  mov     x8, #0xf1
  10011969c  adrp    x9, #0x100390000
  1001196a0  add     x9, x9, #0x3be                           ; "-[GAIDataStore coordinatorWithModel:URL:]"
  1001196a4  stp     x25, x8, [sp, #0x18]
  1001196a8  stp     x26, x9, [sp, #8]
  1001196ac  adrp    x2, #0x1003c4000
  1001196b0  add     x2, x2, #0xc70                           ; @"%@ %@ %s (%@:%d): Error creating database with URL %@: %@"
  1001196b4  str     x20, [sp]
  1001196b8  mov     x0, x24
  1001196bc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Error creating database with URL %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIDataStore coordinatorWithModel:URL:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 241, arg2, 0]
  1001196c0  mov     x29, x29
  1001196c4  bl      _objc_retainAutoreleasedReturnValue
  1001196c8  mov     x24, x0
  1001196cc  adrp    x8, #0x10041b000
  1001196d0  nop
  1001196d4  ldr     x1, [x8, #0xdd0]
  1001196d8  mov     x0, x23
  1001196dc  mov     x2, x24
  1001196e0  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Error creating database with URL %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIDataStore coordinatorWithModel:URL:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 241, arg2, 0]]
  1001196e4  mov     x0, x24
  1001196e8  bl      _objc_release
  1001196ec  mov     x0, x25
  1001196f0  bl      _objc_release
  1001196f4  mov     x0, x23
  1001196f8  bl      _objc_release
loc_1001196fc:
  1001196fc  mov     x0, x21
  100119700  bl      _objc_release
  100119704  mov     x0, x22
  100119708  bl      _objc_release
  10011970c  mov     x0, x19
  100119710  bl      _objc_release
  100119714  mov     x0, x27
  100119718  sub     sp, x29, #0x50
  10011971c  ldp     x28, x27, [sp], #0x10
  100119720  ldp     x26, x25, [sp], #0x10
  100119724  ldp     x24, x23, [sp], #0x10
  100119728  ldp     x22, x21, [sp], #0x10
  10011972c  ldp     x20, x19, [sp], #0x10
  100119730  ldp     x29, x30, [sp], #0x10
  100119734  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore contextWithModel:URL:]
; address 0x100119738  size 228  kind objc
; ======================================================================
  100119738  stp     x29, x30, [sp, #-0x10]!
  10011973c  mov     x29, sp
  100119740  stp     x20, x19, [sp, #-0x10]!
  100119744  stp     x22, x21, [sp, #-0x10]!
  100119748  mov     x19, x3
  10011974c  mov     x20, x2
  100119750  mov     x21, x0
  100119754  mov     x0, x20
  100119758  bl      _objc_retain
  10011975c  mov     x22, x0
  100119760  adrp    x8, #0x10041b000
  100119764  nop
  100119768  ldr     x1, [x8, #0xf98]
  10011976c  mov     x0, x21
  100119770  mov     x2, x20
  100119774  mov     x3, x19
  100119778  bl      _objc_msgSend                            ; [self coordinatorWithModel:arg1 URL:arg2]
  10011977c  mov     x19, x0
  100119780  mov     x0, x22
  100119784  bl      _objc_release
  100119788  mov     x0, x19
  10011978c  bl      _objc_retainAutoreleasedReturnValue
  100119790  mov     x19, x0
  100119794  cbz     x19, loc_1001197dc                       ; if ([self coordinatorWithModel:arg1 URL:arg2] == 0)
  100119798  adrp    x8, #0x10041e000
  10011979c  ldr     x0, [x8, #0x5f0]                         ; class NSManagedObjectContext
  1001197a0  adrp    x8, #0x100416000
  1001197a4  nop
  1001197a8  ldr     x1, [x8, #0xac8]
  1001197ac  bl      _objc_msgSend                            ; [NSManagedObjectContext alloc]
  1001197b0  adrp    x8, #0x100416000
  1001197b4  nop
  1001197b8  ldr     x1, [x8, #0xab8]
  1001197bc  bl      _objc_msgSend                            ; [[NSManagedObjectContext alloc] init]
  1001197c0  mov     x20, x0
  1001197c4  adrp    x8, #0x10041b000
  1001197c8  nop
  1001197cc  ldr     x1, [x8, #0xfa0]
  1001197d0  mov     x2, x19
  1001197d4  bl      _objc_msgSend                            ; [[[NSManagedObjectContext alloc] init] setPersistentStoreCoordinator:[self coordinatorWithModel:arg1 URL:arg2]]
  1001197d8  b       loc_1001197e0
loc_1001197dc:
  1001197dc  mov     x20, #0
loc_1001197e0:
  1001197e0  adrp    x8, #0x1003b0000
  1001197e4  ldr     x8, [x8, #0x68]                          ; _NSOverwriteMergePolicy
  1001197e8  ldr     x2, [x8]                                 ; x2 = _NSOverwriteMergePolicy[+0x0]
  1001197ec  adrp    x8, #0x10041b000
  1001197f0  nop
  1001197f4  ldr     x1, [x8, #0xfa8]
  1001197f8  mov     x0, x20
  1001197fc  bl      _objc_msgSend                            ; [x0 setMergePolicy:_NSOverwriteMergePolicy[+0x0]]
  100119800  mov     x0, x19
  100119804  bl      _objc_release
  100119808  mov     x0, x20
  10011980c  ldp     x22, x21, [sp], #0x10
  100119810  ldp     x20, x19, [sp], #0x10
  100119814  ldp     x29, x30, [sp], #0x10
  100119818  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore setProperty:numberValue:withError:]
; address 0x10011981c  size 572  kind objc
; ======================================================================
  10011981c  stp     x29, x30, [sp, #-0x10]!
  100119820  mov     x29, sp
  100119824  stp     x20, x19, [sp, #-0x10]!
  100119828  stp     x22, x21, [sp, #-0x10]!
  10011982c  stp     x24, x23, [sp, #-0x10]!
  100119830  stp     x26, x25, [sp, #-0x10]!
  100119834  sub     sp, sp, #0x30
  100119838  mov     x20, x4
  10011983c  mov     x21, x3
  100119840  mov     x23, x0
  100119844  adrp    x26, #0x1003b0000
  100119848  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10011984c  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100119850  str     x8, [sp, #0x28]
  100119854  mov     x0, x2
  100119858  bl      _objc_retain
  10011985c  mov     x19, x0
  100119860  adrp    x8, #0x10041b000
  100119864  nop
  100119868  ldr     x24, [x8, #0xfb0]
  10011986c  mov     x0, x21
  100119870  bl      _objc_retain
  100119874  mov     x22, x0
  100119878  mov     x0, x23
  10011987c  mov     x1, x24
  100119880  bl      _objc_msgSend                            ; [self oldContext]
  100119884  mov     x29, x29
  100119888  bl      _objc_retainAutoreleasedReturnValue
  10011988c  mov     x21, x0
  100119890  adrp    x8, #0x10041b000
  100119894  nop
  100119898  ldr     x1, [x8, #0xfb8]
  10011989c  mov     x0, x23
  1001198a0  mov     x2, x19
  1001198a4  bl      _objc_msgSend                            ; [self requestPropertyWithName:arg1]
  1001198a8  mov     x29, x29
  1001198ac  bl      _objc_retainAutoreleasedReturnValue
  1001198b0  mov     x23, x0
  1001198b4  adrp    x8, #0x10041b000
  1001198b8  nop
  1001198bc  ldr     x1, [x8, #0x9a0]
  1001198c0  mov     x3, #0
  1001198c4  mov     x0, x21
  1001198c8  mov     x2, x23
  1001198cc  bl      _objc_msgSend                            ; [[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0]
  1001198d0  mov     x29, x29
  1001198d4  bl      _objc_retainAutoreleasedReturnValue
  1001198d8  mov     x24, x0
  1001198dc  adrp    x8, #0x100416000
  1001198e0  nop
  1001198e4  ldr     x1, [x8, #0xe30]
  1001198e8  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0] count]
  1001198ec  cbz     x0, loc_100119918                        ; if ([[[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0] count] == 0)
  1001198f0  adrp    x8, #0x10041b000
  1001198f4  nop
  1001198f8  ldr     x1, [x8, #0xf28]
  1001198fc  mov     x2, #0
  100119900  mov     x0, x24
  100119904  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0] objectAtIndexedSubscript:0]
  100119908  mov     x29, x29
  10011990c  bl      _objc_retainAutoreleasedReturnValue
  100119910  mov     x25, x0
  100119914  b       loc_1001199b8
loc_100119918:
  100119918  adrp    x8, #0x10041e000
  10011991c  ldr     x0, [x8, #0x500]                         ; class NSEntityDescription
  100119920  adrp    x8, #0x10041b000
  100119924  nop
  100119928  ldr     x1, [x8, #0x980]
  10011992c  adrp    x2, #0x1003c4000
  100119930  add     x2, x2, #0xad0                           ; @"GAIProperty"
  100119934  mov     x3, x21
  100119938  bl      _objc_msgSend                            ; [NSEntityDescription insertNewObjectForEntityForName:@"GAIProperty" inManagedObjectContext:[self oldContext]]
  10011993c  mov     x29, x29
  100119940  bl      _objc_retainAutoreleasedReturnValue
  100119944  mov     x25, x0
  100119948  adrp    x8, #0x1003b8000
  10011994c  add     x8, x8, #0x220                           ; &d_1003b8220
  100119950  str     x19, [sp, #0x18]
  100119954  adrp    x9, #0x1003b8000
  100119958  add     x9, x9, #0x210                           ; &d_1003b8210
  10011995c  ldr     x8, [x8]                                 ; [&d_1003b8220] -> @"name"
  100119960  str     x8, [sp, #8]
  100119964  adrp    x8, #0x1003b7000
  100119968  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10011996c  ldr     x9, [x9]                                 ; [&d_1003b8210] -> @"gaiVersion"
  100119970  ldr     x8, [x8]                                 ; [&d_1003b7d78] -> @"3.09"
  100119974  str     x9, [sp, #0x10]
  100119978  str     x8, [sp, #0x20]
  10011997c  adrp    x8, #0x10041d000
  100119980  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100119984  adrp    x8, #0x100416000
  100119988  nop
  10011998c  ldr     x1, [x8, #0xcd0]
  100119990  add     x2, sp, #0x18
  100119994  add     x3, sp, #8
  100119998  mov     x4, #2
  10011999c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]
  1001199a0  mov     x2, x0
  1001199a4  adrp    x8, #0x100418000
  1001199a8  nop
  1001199ac  ldr     x1, [x8, #0x428]
  1001199b0  mov     x0, x25
  1001199b4  bl      _objc_msgSend                            ; [[NSEntityDescription insertNewObjectForEntityForName:@"GAIProperty" inManagedObjectContext:[self oldContext]] setValuesForKeysWithDictionary:[NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]]
loc_1001199b8:
  1001199b8  adrp    x8, #0x10041b000
  1001199bc  nop
  1001199c0  ldr     x1, [x8, #0xfc0]
  1001199c4  mov     x0, x25
  1001199c8  mov     x2, x22
  1001199cc  bl      _objc_msgSend                            ; [x0 setNumber:arg2]
  1001199d0  mov     x0, x22
  1001199d4  bl      _objc_release
  1001199d8  adrp    x8, #0x10041b000
  1001199dc  nop
  1001199e0  ldr     x1, [x8, #0xa10]
  1001199e4  mov     x0, x21
  1001199e8  mov     x2, x20
  1001199ec  bl      _objc_msgSend                            ; [[self oldContext] save:arg3]
  1001199f0  ldr     x8, [x20]                                ; x8 = arg3[+0x0]
  1001199f4  cmp     x8, #0
  1001199f8  cset    w20, ne
  1001199fc  mov     x0, x24
  100119a00  bl      _objc_release
  100119a04  mov     x0, x23
  100119a08  bl      _objc_release
  100119a0c  mov     x0, x25
  100119a10  bl      _objc_release
  100119a14  mov     x0, x21
  100119a18  bl      _objc_release
  100119a1c  mov     x0, x19
  100119a20  bl      _objc_release
  100119a24  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100119a28  ldr     x9, [sp, #0x28]
  100119a2c  sub     x8, x8, x9
  100119a30  cbnz    x8, loc_100119a54                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100119a34  mov     x0, x20
  100119a38  sub     sp, x29, #0x40
  100119a3c  ldp     x26, x25, [sp], #0x10
  100119a40  ldp     x24, x23, [sp], #0x10
  100119a44  ldp     x22, x21, [sp], #0x10
  100119a48  ldp     x20, x19, [sp], #0x10
  100119a4c  ldp     x29, x30, [sp], #0x10
  100119a50  ret
loc_100119a54:
  100119a54  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAIDataStore setProperty:stringValue:withError:]
; address 0x100119a58  size 572  kind objc
; ======================================================================
  100119a58  stp     x29, x30, [sp, #-0x10]!
  100119a5c  mov     x29, sp
  100119a60  stp     x20, x19, [sp, #-0x10]!
  100119a64  stp     x22, x21, [sp, #-0x10]!
  100119a68  stp     x24, x23, [sp, #-0x10]!
  100119a6c  stp     x26, x25, [sp, #-0x10]!
  100119a70  sub     sp, sp, #0x30
  100119a74  mov     x20, x4
  100119a78  mov     x21, x3
  100119a7c  mov     x23, x0
  100119a80  adrp    x26, #0x1003b0000
  100119a84  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100119a88  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100119a8c  str     x8, [sp, #0x28]
  100119a90  mov     x0, x2
  100119a94  bl      _objc_retain
  100119a98  mov     x19, x0
  100119a9c  adrp    x8, #0x10041b000
  100119aa0  nop
  100119aa4  ldr     x24, [x8, #0xfb0]
  100119aa8  mov     x0, x21
  100119aac  bl      _objc_retain
  100119ab0  mov     x22, x0
  100119ab4  mov     x0, x23
  100119ab8  mov     x1, x24
  100119abc  bl      _objc_msgSend                            ; [self oldContext]
  100119ac0  mov     x29, x29
  100119ac4  bl      _objc_retainAutoreleasedReturnValue
  100119ac8  mov     x21, x0
  100119acc  adrp    x8, #0x10041b000
  100119ad0  nop
  100119ad4  ldr     x1, [x8, #0xfb8]
  100119ad8  mov     x0, x23
  100119adc  mov     x2, x19
  100119ae0  bl      _objc_msgSend                            ; [self requestPropertyWithName:arg1]
  100119ae4  mov     x29, x29
  100119ae8  bl      _objc_retainAutoreleasedReturnValue
  100119aec  mov     x23, x0
  100119af0  adrp    x8, #0x10041b000
  100119af4  nop
  100119af8  ldr     x1, [x8, #0x9a0]
  100119afc  mov     x3, #0
  100119b00  mov     x0, x21
  100119b04  mov     x2, x23
  100119b08  bl      _objc_msgSend                            ; [[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0]
  100119b0c  mov     x29, x29
  100119b10  bl      _objc_retainAutoreleasedReturnValue
  100119b14  mov     x24, x0
  100119b18  adrp    x8, #0x100416000
  100119b1c  nop
  100119b20  ldr     x1, [x8, #0xe30]
  100119b24  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0] count]
  100119b28  cbz     x0, loc_100119b54                        ; if ([[[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0] count] == 0)
  100119b2c  adrp    x8, #0x10041b000
  100119b30  nop
  100119b34  ldr     x1, [x8, #0xf28]
  100119b38  mov     x2, #0
  100119b3c  mov     x0, x24
  100119b40  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:arg1] error:0] objectAtIndexedSubscript:0]
  100119b44  mov     x29, x29
  100119b48  bl      _objc_retainAutoreleasedReturnValue
  100119b4c  mov     x25, x0
  100119b50  b       loc_100119bf4
loc_100119b54:
  100119b54  adrp    x8, #0x10041e000
  100119b58  ldr     x0, [x8, #0x500]                         ; class NSEntityDescription
  100119b5c  adrp    x8, #0x10041b000
  100119b60  nop
  100119b64  ldr     x1, [x8, #0x980]
  100119b68  adrp    x2, #0x1003c4000
  100119b6c  add     x2, x2, #0xad0                           ; @"GAIProperty"
  100119b70  mov     x3, x21
  100119b74  bl      _objc_msgSend                            ; [NSEntityDescription insertNewObjectForEntityForName:@"GAIProperty" inManagedObjectContext:[self oldContext]]
  100119b78  mov     x29, x29
  100119b7c  bl      _objc_retainAutoreleasedReturnValue
  100119b80  mov     x25, x0
  100119b84  adrp    x8, #0x1003b8000
  100119b88  add     x8, x8, #0x220                           ; &d_1003b8220
  100119b8c  str     x19, [sp, #0x18]
  100119b90  adrp    x9, #0x1003b8000
  100119b94  add     x9, x9, #0x210                           ; &d_1003b8210
  100119b98  ldr     x8, [x8]                                 ; [&d_1003b8220] -> @"name"
  100119b9c  str     x8, [sp, #8]
  100119ba0  adrp    x8, #0x1003b7000
  100119ba4  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100119ba8  ldr     x9, [x9]                                 ; [&d_1003b8210] -> @"gaiVersion"
  100119bac  ldr     x8, [x8]                                 ; [&d_1003b7d78] -> @"3.09"
  100119bb0  str     x9, [sp, #0x10]
  100119bb4  str     x8, [sp, #0x20]
  100119bb8  adrp    x8, #0x10041d000
  100119bbc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100119bc0  adrp    x8, #0x100416000
  100119bc4  nop
  100119bc8  ldr     x1, [x8, #0xcd0]
  100119bcc  add     x2, sp, #0x18
  100119bd0  add     x3, sp, #8
  100119bd4  mov     x4, #2
  100119bd8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]
  100119bdc  mov     x2, x0
  100119be0  adrp    x8, #0x100418000
  100119be4  nop
  100119be8  ldr     x1, [x8, #0x428]
  100119bec  mov     x0, x25
  100119bf0  bl      _objc_msgSend                            ; [[NSEntityDescription insertNewObjectForEntityForName:@"GAIProperty" inManagedObjectContext:[self oldContext]] setValuesForKeysWithDictionary:[NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]]
loc_100119bf4:
  100119bf4  adrp    x8, #0x10041b000
  100119bf8  nop
  100119bfc  ldr     x1, [x8, #0xfc8]
  100119c00  mov     x0, x25
  100119c04  mov     x2, x22
  100119c08  bl      _objc_msgSend                            ; [x0 setString:arg2]
  100119c0c  mov     x0, x22
  100119c10  bl      _objc_release
  100119c14  adrp    x8, #0x10041b000
  100119c18  nop
  100119c1c  ldr     x1, [x8, #0xa10]
  100119c20  mov     x0, x21
  100119c24  mov     x2, x20
  100119c28  bl      _objc_msgSend                            ; [[self oldContext] save:arg3]
  100119c2c  ldr     x8, [x20]                                ; x8 = arg3[+0x0]
  100119c30  cmp     x8, #0
  100119c34  cset    w20, ne
  100119c38  mov     x0, x24
  100119c3c  bl      _objc_release
  100119c40  mov     x0, x23
  100119c44  bl      _objc_release
  100119c48  mov     x0, x25
  100119c4c  bl      _objc_release
  100119c50  mov     x0, x21
  100119c54  bl      _objc_release
  100119c58  mov     x0, x19
  100119c5c  bl      _objc_release
  100119c60  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100119c64  ldr     x9, [sp, #0x28]
  100119c68  sub     x8, x8, x9
  100119c6c  cbnz    x8, loc_100119c90                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100119c70  mov     x0, x20
  100119c74  sub     sp, x29, #0x40
  100119c78  ldp     x26, x25, [sp], #0x10
  100119c7c  ldp     x24, x23, [sp], #0x10
  100119c80  ldp     x22, x21, [sp], #0x10
  100119c84  ldp     x20, x19, [sp], #0x10
  100119c88  ldp     x29, x30, [sp], #0x10
  100119c8c  ret
loc_100119c90:
  100119c90  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAIDataStore lastChangeTimeStamp]
; address 0x100119c94  size 156  kind objc
; ======================================================================
  100119c94  stp     x29, x30, [sp, #-0x10]!
  100119c98  mov     x29, sp
  100119c9c  stp     x20, x19, [sp, #-0x10]!
  100119ca0  sub     sp, sp, #0x30
  100119ca4  adrp    x8, #0x1003b0000
  100119ca8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100119cac  mov     w9, #-0x3e000000
  100119cb0  str     x8, [sp, #8]
  100119cb4  stp     w9, wzr, [sp, #0x10]
  100119cb8  adr     x8, #0x100119d30                         ; &-[GAIDataStore lastChangeTimeStamp]_block_invoke
  100119cbc  nop
  100119cc0  str     x8, [sp, #0x18]
  100119cc4  adrp    x8, #0x1003b7000
  100119cc8  add     x8, x8, #0xe20                           ; &d_1003b7e20
  100119ccc  str     x8, [sp, #0x20]
  100119cd0  bl      _objc_retain
  100119cd4  mov     x19, x0
  100119cd8  str     x19, [sp, #0x28]
  100119cdc  adrp    x8, #0x10041b000
  100119ce0  nop
  100119ce4  ldr     x1, [x8, #0xf58]
  100119ce8  mov     x3, #0
  100119cec  add     x2, sp, #8
  100119cf0  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore lastChangeTimeStamp]_block_invoke captures +0x20=self} withError:0]
  100119cf4  mov     x29, x29
  100119cf8  bl      _objc_retainAutoreleasedReturnValue
  100119cfc  bl      _objc_release
  100119d00  adrp    x8, #0x100420000
  100119d04  ldrsw   x8, [x8, #0x830]                         ; ivar offset GAIDataStore._lastChangeTimeStamp (+0x20)
  100119d08  ldr     x0, [x19, x8]                            ; x0 = self->_lastChangeTimeStamp
  100119d0c  bl      _objc_retainAutoreleaseReturnValue
  100119d10  mov     x19, x0
  100119d14  ldr     x0, [sp, #0x28]
  100119d18  bl      _objc_release
  100119d1c  mov     x0, x19
  100119d20  sub     sp, x29, #0x10
  100119d24  ldp     x20, x19, [sp], #0x10
  100119d28  ldp     x29, x30, [sp], #0x10
  100119d2c  ret

; ======================================================================
; -[GAIDataStore lastChangeTimeStamp]_block_invoke
; address 0x100119d30  size 20  kind block
; ======================================================================
  100119d30  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  100119d34  adrp    x9, #0x100420000
  100119d38  ldrsw   x9, [x9, #0x830]                         ; ivar offset GAIDataStore._lastChangeTimeStamp (+0x20)
  100119d3c  ldr     x0, [x8, x9]                             ; x0 = self->_lastChangeTimeStamp
  100119d40  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; sub_100119d44
; address 0x100119d44  size 8  kind sub
; ======================================================================
  100119d44  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100119d48  b       _objc_retain

; ======================================================================
; sub_100119d4c
; address 0x100119d4c  size 8  kind sub
; ======================================================================
  100119d4c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100119d50  b       _objc_release

; ======================================================================
; -[GAIDataStore setLastChangeTimeStamp:]
; address 0x100119d54  size 220  kind objc
; ======================================================================
  100119d54  stp     x29, x30, [sp, #-0x10]!
  100119d58  mov     x29, sp
  100119d5c  stp     x20, x19, [sp, #-0x10]!
  100119d60  stp     x22, x21, [sp, #-0x10]!
  100119d64  sub     sp, sp, #0x30
  100119d68  mov     x19, x0
  100119d6c  mov     x0, x2
  100119d70  bl      _objc_retain
  100119d74  adrp    x8, #0x100420000
  100119d78  ldrsw   x21, [x8, #0x830]                        ; ivar offset GAIDataStore._lastChangeTimeStamp (+0x20)
  100119d7c  bl      _objc_retain
  100119d80  mov     x20, x0
  100119d84  ldr     x0, [x19, x21]                           ; x0 = self->_lastChangeTimeStamp
  100119d88  str     x20, [x19, x21]                          ; self->_lastChangeTimeStamp = arg1
  100119d8c  bl      _objc_release
  100119d90  adrp    x8, #0x1003b0000
  100119d94  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100119d98  mov     w9, #-0x3e000000
  100119d9c  str     x8, [sp]
  100119da0  stp     w9, wzr, [sp, #8]
  100119da4  adr     x8, #0x100119e30                         ; &-[GAIDataStore setLastChangeTimeStamp:]_block_invoke
  100119da8  nop
  100119dac  str     x8, [sp, #0x10]
  100119db0  adrp    x8, #0x1003b7000
  100119db4  add     x8, x8, #0xe50                           ; &d_1003b7e50
  100119db8  str     x8, [sp, #0x18]
  100119dbc  mov     x0, x19
  100119dc0  bl      _objc_retain
  100119dc4  mov     x19, x0
  100119dc8  stp     x19, x20, [sp, #0x20]
  100119dcc  adrp    x8, #0x10041b000
  100119dd0  nop
  100119dd4  ldr     x21, [x8, #0xf58]
  100119dd8  mov     x0, x20
  100119ddc  bl      _objc_retain
  100119de0  mov     x20, x0
  100119de4  mov     x3, #0
  100119de8  mov     x2, sp
  100119dec  mov     x0, x19
  100119df0  mov     x1, x21
  100119df4  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setLastChangeTimeStamp:]_block_invoke captures +0x20=self, +0x28=arg1} withError:0]
  100119df8  mov     x29, x29
  100119dfc  bl      _objc_retainAutoreleasedReturnValue
  100119e00  bl      _objc_release
  100119e04  ldr     x0, [sp, #0x28]
  100119e08  bl      _objc_release
  100119e0c  ldr     x0, [sp, #0x20]
  100119e10  bl      _objc_release
  100119e14  mov     x0, x20
  100119e18  bl      _objc_release
  100119e1c  sub     sp, x29, #0x20
  100119e20  ldp     x22, x21, [sp], #0x10
  100119e24  ldp     x20, x19, [sp], #0x10
  100119e28  ldp     x29, x30, [sp], #0x10
  100119e2c  ret

; ======================================================================
; -[GAIDataStore setLastChangeTimeStamp:]_block_invoke
; address 0x100119e30  size 60  kind block
; ======================================================================
  100119e30  stp     x29, x30, [sp, #-0x10]!
  100119e34  mov     x29, sp
  100119e38  mov     x8, x1
  100119e3c  ldp     x9, x3, [x0, #0x20]
  100119e40  adrp    x10, #0x10041b000
  100119e44  nop
  100119e48  ldr     x1, [x10, #0xfd0]
  100119e4c  adrp    x2, #0x1003c4000
  100119e50  add     x2, x2, #0xcd0                           ; @"changeTS"
  100119e54  mov     x0, x9
  100119e58  mov     x4, x8
  100119e5c  bl      _objc_msgSend                            ; [x0 setProperty:@"changeTS" numberValue:x3 withError:blockarg1]
  100119e60  mov     x0, #0
  100119e64  ldp     x29, x30, [sp], #0x10
  100119e68  ret

; ======================================================================
; sub_100119e6c
; address 0x100119e6c  size 40  kind sub
; ======================================================================
  100119e6c  stp     x29, x30, [sp, #-0x10]!
  100119e70  mov     x29, sp
  100119e74  stp     x20, x19, [sp, #-0x10]!
  100119e78  mov     x19, x1
  100119e7c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100119e80  bl      _objc_retain
  100119e84  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100119e88  ldp     x20, x19, [sp], #0x10
  100119e8c  ldp     x29, x30, [sp], #0x10
  100119e90  b       _objc_retain

; ======================================================================
; sub_100119e94
; address 0x100119e94  size 40  kind sub
; ======================================================================
  100119e94  stp     x29, x30, [sp, #-0x10]!
  100119e98  mov     x29, sp
  100119e9c  stp     x20, x19, [sp, #-0x10]!
  100119ea0  mov     x19, x0
  100119ea4  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100119ea8  bl      _objc_release
  100119eac  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100119eb0  ldp     x20, x19, [sp], #0x10
  100119eb4  ldp     x29, x30, [sp], #0x10
  100119eb8  b       _objc_release

; ======================================================================
; -[GAIDataStore idfaChangeCount]
; address 0x100119ebc  size 156  kind objc
; ======================================================================
  100119ebc  stp     x29, x30, [sp, #-0x10]!
  100119ec0  mov     x29, sp
  100119ec4  stp     x20, x19, [sp, #-0x10]!
  100119ec8  sub     sp, sp, #0x30
  100119ecc  adrp    x8, #0x1003b0000
  100119ed0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100119ed4  mov     w9, #-0x3e000000
  100119ed8  str     x8, [sp, #8]
  100119edc  stp     w9, wzr, [sp, #0x10]
  100119ee0  adr     x8, #0x100119f58                         ; &-[GAIDataStore idfaChangeCount]_block_invoke
  100119ee4  nop
  100119ee8  str     x8, [sp, #0x18]
  100119eec  adrp    x8, #0x1003b7000
  100119ef0  add     x8, x8, #0xe80                           ; &d_1003b7e80
  100119ef4  str     x8, [sp, #0x20]
  100119ef8  bl      _objc_retain
  100119efc  mov     x19, x0
  100119f00  str     x19, [sp, #0x28]
  100119f04  adrp    x8, #0x10041b000
  100119f08  nop
  100119f0c  ldr     x1, [x8, #0xf58]
  100119f10  mov     x3, #0
  100119f14  add     x2, sp, #8
  100119f18  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore idfaChangeCount]_block_invoke captures +0x20=self} withError:0]
  100119f1c  mov     x29, x29
  100119f20  bl      _objc_retainAutoreleasedReturnValue
  100119f24  bl      _objc_release
  100119f28  adrp    x8, #0x100420000
  100119f2c  ldrsw   x8, [x8, #0x834]                         ; ivar offset GAIDataStore._idfaChangeCount (+0x28)
  100119f30  ldr     x0, [x19, x8]                            ; x0 = self->_idfaChangeCount
  100119f34  bl      _objc_retainAutoreleaseReturnValue
  100119f38  mov     x19, x0
  100119f3c  ldr     x0, [sp, #0x28]
  100119f40  bl      _objc_release
  100119f44  mov     x0, x19
  100119f48  sub     sp, x29, #0x10
  100119f4c  ldp     x20, x19, [sp], #0x10
  100119f50  ldp     x29, x30, [sp], #0x10
  100119f54  ret

; ======================================================================
; -[GAIDataStore idfaChangeCount]_block_invoke
; address 0x100119f58  size 20  kind block
; ======================================================================
  100119f58  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  100119f5c  adrp    x9, #0x100420000
  100119f60  ldrsw   x9, [x9, #0x834]                         ; ivar offset GAIDataStore._idfaChangeCount (+0x28)
  100119f64  ldr     x0, [x8, x9]                             ; x0 = self->_idfaChangeCount
  100119f68  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; sub_100119f6c
; address 0x100119f6c  size 8  kind sub
; ======================================================================
  100119f6c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100119f70  b       _objc_retain

; ======================================================================
; sub_100119f74
; address 0x100119f74  size 8  kind sub
; ======================================================================
  100119f74  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100119f78  b       _objc_release

; ======================================================================
; -[GAIDataStore setIdfaChangeCount:]
; address 0x100119f7c  size 220  kind objc
; ======================================================================
  100119f7c  stp     x29, x30, [sp, #-0x10]!
  100119f80  mov     x29, sp
  100119f84  stp     x20, x19, [sp, #-0x10]!
  100119f88  stp     x22, x21, [sp, #-0x10]!
  100119f8c  sub     sp, sp, #0x30
  100119f90  mov     x19, x0
  100119f94  mov     x0, x2
  100119f98  bl      _objc_retain
  100119f9c  adrp    x8, #0x100420000
  100119fa0  ldrsw   x21, [x8, #0x834]                        ; ivar offset GAIDataStore._idfaChangeCount (+0x28)
  100119fa4  bl      _objc_retain
  100119fa8  mov     x20, x0
  100119fac  ldr     x0, [x19, x21]                           ; x0 = self->_idfaChangeCount
  100119fb0  str     x20, [x19, x21]                          ; self->_idfaChangeCount = arg1
  100119fb4  bl      _objc_release
  100119fb8  adrp    x8, #0x1003b0000
  100119fbc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100119fc0  mov     w9, #-0x3e000000
  100119fc4  str     x8, [sp]
  100119fc8  stp     w9, wzr, [sp, #8]
  100119fcc  adr     x8, #0x10011a058                         ; &-[GAIDataStore setIdfaChangeCount:]_block_invoke
  100119fd0  nop
  100119fd4  str     x8, [sp, #0x10]
  100119fd8  adrp    x8, #0x1003b7000
  100119fdc  add     x8, x8, #0xeb0                           ; &d_1003b7eb0
  100119fe0  str     x8, [sp, #0x18]
  100119fe4  mov     x0, x19
  100119fe8  bl      _objc_retain
  100119fec  mov     x19, x0
  100119ff0  stp     x19, x20, [sp, #0x20]
  100119ff4  adrp    x8, #0x10041b000
  100119ff8  nop
  100119ffc  ldr     x21, [x8, #0xf58]
  10011a000  mov     x0, x20
  10011a004  bl      _objc_retain
  10011a008  mov     x20, x0
  10011a00c  mov     x3, #0
  10011a010  mov     x2, sp
  10011a014  mov     x0, x19
  10011a018  mov     x1, x21
  10011a01c  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setIdfaChangeCount:]_block_invoke captures +0x20=self, +0x28=arg1} withError:0]
  10011a020  mov     x29, x29
  10011a024  bl      _objc_retainAutoreleasedReturnValue
  10011a028  bl      _objc_release
  10011a02c  ldr     x0, [sp, #0x28]
  10011a030  bl      _objc_release
  10011a034  ldr     x0, [sp, #0x20]
  10011a038  bl      _objc_release
  10011a03c  mov     x0, x20
  10011a040  bl      _objc_release
  10011a044  sub     sp, x29, #0x20
  10011a048  ldp     x22, x21, [sp], #0x10
  10011a04c  ldp     x20, x19, [sp], #0x10
  10011a050  ldp     x29, x30, [sp], #0x10
  10011a054  ret

; ======================================================================
; -[GAIDataStore setIdfaChangeCount:]_block_invoke
; address 0x10011a058  size 60  kind block
; ======================================================================
  10011a058  stp     x29, x30, [sp, #-0x10]!
  10011a05c  mov     x29, sp
  10011a060  mov     x8, x1
  10011a064  ldp     x9, x3, [x0, #0x20]
  10011a068  adrp    x10, #0x10041b000
  10011a06c  nop
  10011a070  ldr     x1, [x10, #0xfd0]
  10011a074  adrp    x2, #0x1003c4000
  10011a078  add     x2, x2, #0xcf0                           ; @"numChanges"
  10011a07c  mov     x0, x9
  10011a080  mov     x4, x8
  10011a084  bl      _objc_msgSend                            ; [x0 setProperty:@"numChanges" numberValue:x3 withError:blockarg1]
  10011a088  mov     x0, #0
  10011a08c  ldp     x29, x30, [sp], #0x10
  10011a090  ret

; ======================================================================
; sub_10011a094
; address 0x10011a094  size 40  kind sub
; ======================================================================
  10011a094  stp     x29, x30, [sp, #-0x10]!
  10011a098  mov     x29, sp
  10011a09c  stp     x20, x19, [sp, #-0x10]!
  10011a0a0  mov     x19, x1
  10011a0a4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10011a0a8  bl      _objc_retain
  10011a0ac  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10011a0b0  ldp     x20, x19, [sp], #0x10
  10011a0b4  ldp     x29, x30, [sp], #0x10
  10011a0b8  b       _objc_retain

; ======================================================================
; sub_10011a0bc
; address 0x10011a0bc  size 40  kind sub
; ======================================================================
  10011a0bc  stp     x29, x30, [sp, #-0x10]!
  10011a0c0  mov     x29, sp
  10011a0c4  stp     x20, x19, [sp, #-0x10]!
  10011a0c8  mov     x19, x0
  10011a0cc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10011a0d0  bl      _objc_release
  10011a0d4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011a0d8  ldp     x20, x19, [sp], #0x10
  10011a0dc  ldp     x29, x30, [sp], #0x10
  10011a0e0  b       _objc_release

; ======================================================================
; -[GAIDataStore hashedIdfa]
; address 0x10011a0e4  size 156  kind objc
; ======================================================================
  10011a0e4  stp     x29, x30, [sp, #-0x10]!
  10011a0e8  mov     x29, sp
  10011a0ec  stp     x20, x19, [sp, #-0x10]!
  10011a0f0  sub     sp, sp, #0x30
  10011a0f4  adrp    x8, #0x1003b0000
  10011a0f8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a0fc  mov     w9, #-0x3e000000
  10011a100  str     x8, [sp, #8]
  10011a104  stp     w9, wzr, [sp, #0x10]
  10011a108  adr     x8, #0x10011a180                         ; &-[GAIDataStore hashedIdfa]_block_invoke
  10011a10c  nop
  10011a110  str     x8, [sp, #0x18]
  10011a114  adrp    x8, #0x1003b7000
  10011a118  add     x8, x8, #0xee0                           ; &d_1003b7ee0
  10011a11c  str     x8, [sp, #0x20]
  10011a120  bl      _objc_retain
  10011a124  mov     x19, x0
  10011a128  str     x19, [sp, #0x28]
  10011a12c  adrp    x8, #0x10041b000
  10011a130  nop
  10011a134  ldr     x1, [x8, #0xf58]
  10011a138  mov     x3, #0
  10011a13c  add     x2, sp, #8
  10011a140  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore hashedIdfa]_block_invoke captures +0x20=self} withError:0]
  10011a144  mov     x29, x29
  10011a148  bl      _objc_retainAutoreleasedReturnValue
  10011a14c  bl      _objc_release
  10011a150  adrp    x8, #0x100420000
  10011a154  ldrsw   x8, [x8, #0x838]                         ; ivar offset GAIDataStore._hashedIdfa (+0x18)
  10011a158  ldr     x0, [x19, x8]                            ; x0 = self->_hashedIdfa
  10011a15c  bl      _objc_retainAutoreleaseReturnValue
  10011a160  mov     x19, x0
  10011a164  ldr     x0, [sp, #0x28]
  10011a168  bl      _objc_release
  10011a16c  mov     x0, x19
  10011a170  sub     sp, x29, #0x10
  10011a174  ldp     x20, x19, [sp], #0x10
  10011a178  ldp     x29, x30, [sp], #0x10
  10011a17c  ret

; ======================================================================
; -[GAIDataStore hashedIdfa]_block_invoke
; address 0x10011a180  size 20  kind block
; ======================================================================
  10011a180  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  10011a184  adrp    x9, #0x100420000
  10011a188  ldrsw   x9, [x9, #0x838]                         ; ivar offset GAIDataStore._hashedIdfa (+0x18)
  10011a18c  ldr     x0, [x8, x9]                             ; x0 = self->_hashedIdfa
  10011a190  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; sub_10011a194
; address 0x10011a194  size 8  kind sub
; ======================================================================
  10011a194  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011a198  b       _objc_retain

; ======================================================================
; sub_10011a19c
; address 0x10011a19c  size 8  kind sub
; ======================================================================
  10011a19c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011a1a0  b       _objc_release

; ======================================================================
; -[GAIDataStore setHashedIdfa:]
; address 0x10011a1a4  size 236  kind objc
; ======================================================================
  10011a1a4  stp     x29, x30, [sp, #-0x10]!
  10011a1a8  mov     x29, sp
  10011a1ac  stp     x20, x19, [sp, #-0x10]!
  10011a1b0  stp     x22, x21, [sp, #-0x10]!
  10011a1b4  sub     sp, sp, #0x30
  10011a1b8  mov     x19, x0
  10011a1bc  mov     x0, x2
  10011a1c0  bl      _objc_retain
  10011a1c4  mov     x20, x0
  10011a1c8  adrp    x8, #0x100419000
  10011a1cc  nop
  10011a1d0  ldr     x1, [x8, #0xc08]
  10011a1d4  bl      _objc_msgSend                            ; [arg1 copy]
  10011a1d8  adrp    x8, #0x100420000
  10011a1dc  ldrsw   x9, [x8, #0x838]                         ; ivar offset GAIDataStore._hashedIdfa (+0x18)
  10011a1e0  ldr     x8, [x19, x9]                            ; x8 = self->_hashedIdfa
  10011a1e4  str     x0, [x19, x9]                            ; self->_hashedIdfa = [arg1 copy]
  10011a1e8  mov     x0, x8
  10011a1ec  bl      _objc_release
  10011a1f0  adrp    x8, #0x1003b0000
  10011a1f4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a1f8  mov     w9, #-0x3e000000
  10011a1fc  str     x8, [sp]
  10011a200  stp     w9, wzr, [sp, #8]
  10011a204  adr     x8, #0x10011a290                         ; &-[GAIDataStore setHashedIdfa:]_block_invoke
  10011a208  nop
  10011a20c  str     x8, [sp, #0x10]
  10011a210  adrp    x8, #0x1003b7000
  10011a214  add     x8, x8, #0xf10                           ; &d_1003b7f10
  10011a218  str     x8, [sp, #0x18]
  10011a21c  mov     x0, x19
  10011a220  bl      _objc_retain
  10011a224  mov     x19, x0
  10011a228  stp     x19, x20, [sp, #0x20]
  10011a22c  adrp    x8, #0x10041b000
  10011a230  nop
  10011a234  ldr     x21, [x8, #0xf58]
  10011a238  mov     x0, x20
  10011a23c  bl      _objc_retain
  10011a240  mov     x20, x0
  10011a244  mov     x3, #0
  10011a248  mov     x2, sp
  10011a24c  mov     x0, x19
  10011a250  mov     x1, x21
  10011a254  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setHashedIdfa:]_block_invoke captures +0x20=self, +0x28=arg1} withError:0]
  10011a258  mov     x29, x29
  10011a25c  bl      _objc_retainAutoreleasedReturnValue
  10011a260  bl      _objc_release
  10011a264  ldr     x0, [sp, #0x28]
  10011a268  bl      _objc_release
  10011a26c  ldr     x0, [sp, #0x20]
  10011a270  bl      _objc_release
  10011a274  mov     x0, x20
  10011a278  bl      _objc_release
  10011a27c  sub     sp, x29, #0x20
  10011a280  ldp     x22, x21, [sp], #0x10
  10011a284  ldp     x20, x19, [sp], #0x10
  10011a288  ldp     x29, x30, [sp], #0x10
  10011a28c  ret

; ======================================================================
; -[GAIDataStore setHashedIdfa:]_block_invoke
; address 0x10011a290  size 60  kind block
; ======================================================================
  10011a290  stp     x29, x30, [sp, #-0x10]!
  10011a294  mov     x29, sp
  10011a298  mov     x8, x1
  10011a29c  ldp     x9, x3, [x0, #0x20]
  10011a2a0  adrp    x10, #0x10041b000
  10011a2a4  nop
  10011a2a8  ldr     x1, [x10, #0xfd8]
  10011a2ac  adrp    x2, #0x1003c4000
  10011a2b0  add     x2, x2, #0xcb0                           ; @"idfa"
  10011a2b4  mov     x0, x9
  10011a2b8  mov     x4, x8
  10011a2bc  bl      _objc_msgSend                            ; [x0 setProperty:@"idfa" stringValue:x3 withError:blockarg1]
  10011a2c0  mov     x0, #0
  10011a2c4  ldp     x29, x30, [sp], #0x10
  10011a2c8  ret

; ======================================================================
; sub_10011a2cc
; address 0x10011a2cc  size 40  kind sub
; ======================================================================
  10011a2cc  stp     x29, x30, [sp, #-0x10]!
  10011a2d0  mov     x29, sp
  10011a2d4  stp     x20, x19, [sp, #-0x10]!
  10011a2d8  mov     x19, x1
  10011a2dc  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10011a2e0  bl      _objc_retain
  10011a2e4  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10011a2e8  ldp     x20, x19, [sp], #0x10
  10011a2ec  ldp     x29, x30, [sp], #0x10
  10011a2f0  b       _objc_retain

; ======================================================================
; sub_10011a2f4
; address 0x10011a2f4  size 40  kind sub
; ======================================================================
  10011a2f4  stp     x29, x30, [sp, #-0x10]!
  10011a2f8  mov     x29, sp
  10011a2fc  stp     x20, x19, [sp, #-0x10]!
  10011a300  mov     x19, x0
  10011a304  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10011a308  bl      _objc_release
  10011a30c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011a310  ldp     x20, x19, [sp], #0x10
  10011a314  ldp     x29, x30, [sp], #0x10
  10011a318  b       _objc_release

; ======================================================================
; -[GAIDataStore clientId]
; address 0x10011a31c  size 160  kind objc
; ======================================================================
  10011a31c  stp     x29, x30, [sp, #-0x10]!
  10011a320  mov     x29, sp
  10011a324  stp     x20, x19, [sp, #-0x10]!
  10011a328  sub     sp, sp, #0x30
  10011a32c  adrp    x20, #0x100420000
  10011a330  ldrsw   x8, [x20, #0x83c]                        ; ivar offset GAIDataStore._clientId (+0x10)
  10011a334  ldr     x8, [x0, x8]                             ; x8 = self->_clientId
  10011a338  cbnz    x8, loc_10011a3a8                        ; if (self->_clientId != 0)
  10011a33c  adrp    x8, #0x1003b0000
  10011a340  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a344  mov     w9, #-0x3e000000
  10011a348  str     x8, [sp, #8]
  10011a34c  stp     w9, wzr, [sp, #0x10]
  10011a350  adr     x8, #0x10011a3bc                         ; &-[GAIDataStore clientId]_block_invoke
  10011a354  nop
  10011a358  str     x8, [sp, #0x18]
  10011a35c  adrp    x8, #0x1003b7000
  10011a360  add     x8, x8, #0xf40                           ; &d_1003b7f40
  10011a364  str     x8, [sp, #0x20]
  10011a368  bl      _objc_retain
  10011a36c  mov     x19, x0
  10011a370  str     x19, [sp, #0x28]
  10011a374  adrp    x8, #0x10041b000
  10011a378  nop
  10011a37c  ldr     x1, [x8, #0xf58]
  10011a380  mov     x3, #0
  10011a384  add     x2, sp, #8
  10011a388  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore clientId]_block_invoke captures +0x20=self} withError:0]
  10011a38c  mov     x29, x29
  10011a390  bl      _objc_retainAutoreleasedReturnValue
  10011a394  bl      _objc_release
  10011a398  ldr     x0, [sp, #0x28]
  10011a39c  bl      _objc_release
  10011a3a0  ldrsw   x8, [x20, #0x83c]                        ; ivar offset GAIDataStore._clientId (+0x10)
  10011a3a4  ldr     x8, [x19, x8]                            ; x8 = self->_clientId
loc_10011a3a8:
  10011a3a8  mov     x0, x8
  10011a3ac  sub     sp, x29, #0x10
  10011a3b0  ldp     x20, x19, [sp], #0x10
  10011a3b4  ldp     x29, x30, [sp], #0x10
  10011a3b8  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[GAIDataStore clientId]_block_invoke
; address 0x10011a3bc  size 20  kind block
; ======================================================================
  10011a3bc  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  10011a3c0  adrp    x9, #0x100420000
  10011a3c4  ldrsw   x9, [x9, #0x83c]                         ; ivar offset GAIDataStore._clientId (+0x10)
  10011a3c8  ldr     x0, [x8, x9]                             ; x0 = self->_clientId
  10011a3cc  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; sub_10011a3d0
; address 0x10011a3d0  size 8  kind sub
; ======================================================================
  10011a3d0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011a3d4  b       _objc_retain

; ======================================================================
; sub_10011a3d8
; address 0x10011a3d8  size 8  kind sub
; ======================================================================
  10011a3d8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011a3dc  b       _objc_release

; ======================================================================
; -[GAIDataStore fetchClientId]
; address 0x10011a3e0  size 132  kind objc
; ======================================================================
  10011a3e0  stp     x29, x30, [sp, #-0x10]!
  10011a3e4  mov     x29, sp
  10011a3e8  stp     x20, x19, [sp, #-0x10]!
  10011a3ec  sub     sp, sp, #0x30
  10011a3f0  adrp    x8, #0x1003b0000
  10011a3f4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a3f8  mov     w9, #-0x3e000000
  10011a3fc  str     x8, [sp, #8]
  10011a400  stp     w9, wzr, [sp, #0x10]
  10011a404  adr     x8, #0x10011a464                         ; &-[GAIDataStore fetchClientId]_block_invoke
  10011a408  nop
  10011a40c  str     x8, [sp, #0x18]
  10011a410  adrp    x8, #0x1003b7000
  10011a414  add     x8, x8, #0xf70                           ; &d_1003b7f70
  10011a418  str     x8, [sp, #0x20]
  10011a41c  bl      _objc_retain
  10011a420  str     x0, [sp, #0x28]
  10011a424  adrp    x8, #0x10041b000
  10011a428  nop
  10011a42c  ldr     x1, [x8, #0xf58]
  10011a430  mov     x3, #0
  10011a434  add     x2, sp, #8
  10011a438  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore fetchClientId]_block_invoke captures +0x20=self} withError:0]
  10011a43c  mov     x29, x29
  10011a440  bl      _objc_retainAutoreleasedReturnValue
  10011a444  mov     x19, x0
  10011a448  ldr     x0, [sp, #0x28]
  10011a44c  bl      _objc_release
  10011a450  mov     x0, x19
  10011a454  sub     sp, x29, #0x10
  10011a458  ldp     x20, x19, [sp], #0x10
  10011a45c  ldp     x29, x30, [sp], #0x10
  10011a460  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore fetchClientId]_block_invoke
; address 0x10011a464  size 280  kind block
; ======================================================================
  10011a464  stp     x29, x30, [sp, #-0x10]!
  10011a468  mov     x29, sp
  10011a46c  stp     x20, x19, [sp, #-0x10]!
  10011a470  stp     x22, x21, [sp, #-0x10]!
  10011a474  stp     x24, x23, [sp, #-0x10]!
  10011a478  mov     x20, x0
  10011a47c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011a480  adrp    x8, #0x10041b000
  10011a484  nop
  10011a488  ldr     x1, [x8, #0xfb0]
  10011a48c  bl      _objc_msgSend                            ; [self oldContext]
  10011a490  mov     x29, x29
  10011a494  bl      _objc_retainAutoreleasedReturnValue
  10011a498  mov     x19, x0
  10011a49c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011a4a0  adrp    x8, #0x10041b000
  10011a4a4  nop
  10011a4a8  ldr     x1, [x8, #0xfb8]
  10011a4ac  adrp    x2, #0x1003c4000
  10011a4b0  add     x2, x2, #0xc90                           ; @"ClientId"
  10011a4b4  bl      _objc_msgSend                            ; [self requestPropertyWithName:@"ClientId"]
  10011a4b8  mov     x29, x29
  10011a4bc  bl      _objc_retainAutoreleasedReturnValue
  10011a4c0  mov     x20, x0
  10011a4c4  adrp    x8, #0x10041b000
  10011a4c8  nop
  10011a4cc  ldr     x1, [x8, #0x9a0]
  10011a4d0  mov     x3, #0
  10011a4d4  mov     x0, x19
  10011a4d8  mov     x2, x20
  10011a4dc  bl      _objc_msgSend                            ; [[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"ClientId"] error:0]
  10011a4e0  mov     x29, x29
  10011a4e4  bl      _objc_retainAutoreleasedReturnValue
  10011a4e8  mov     x21, x0
  10011a4ec  adrp    x8, #0x100416000
  10011a4f0  nop
  10011a4f4  ldr     x1, [x8, #0xe30]
  10011a4f8  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"ClientId"] error:0] count]
  10011a4fc  mov     x22, #0
  10011a500  cbz     x0, loc_10011a54c                        ; if ([[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"ClientId"] error:0] count] == 0)
  10011a504  adrp    x8, #0x10041b000
  10011a508  nop
  10011a50c  ldr     x1, [x8, #0xf28]
  10011a510  mov     x2, #0
  10011a514  mov     x0, x21
  10011a518  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"ClientId"] error:0] objectAtIndexedSubscript:0]
  10011a51c  mov     x29, x29
  10011a520  bl      _objc_retainAutoreleasedReturnValue
  10011a524  mov     x23, x0
  10011a528  adrp    x8, #0x10041b000
  10011a52c  nop
  10011a530  ldr     x1, [x8, #0x1f0]
  10011a534  bl      _objc_msgSend                            ; [[[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"ClientId"] error:0] objectAtIndexedSubscript:0] string]
  10011a538  mov     x29, x29
  10011a53c  bl      _objc_retainAutoreleasedReturnValue
  10011a540  mov     x22, x0
  10011a544  mov     x0, x23
  10011a548  bl      _objc_release
loc_10011a54c:
  10011a54c  mov     x0, x21
  10011a550  bl      _objc_release
  10011a554  mov     x0, x20
  10011a558  bl      _objc_release
  10011a55c  mov     x0, x19
  10011a560  bl      _objc_release
  10011a564  mov     x0, x22
  10011a568  ldp     x24, x23, [sp], #0x10
  10011a56c  ldp     x22, x21, [sp], #0x10
  10011a570  ldp     x20, x19, [sp], #0x10
  10011a574  ldp     x29, x30, [sp], #0x10
  10011a578  b       _objc_autoreleaseReturnValue

; ======================================================================
; sub_10011a57c
; address 0x10011a57c  size 8  kind sub
; ======================================================================
  10011a57c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011a580  b       _objc_retain

; ======================================================================
; sub_10011a584
; address 0x10011a584  size 8  kind sub
; ======================================================================
  10011a584  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011a588  b       _objc_release

; ======================================================================
; -[GAIDataStore setClientId:]
; address 0x10011a58c  size 220  kind objc
; ======================================================================
  10011a58c  stp     x29, x30, [sp, #-0x10]!
  10011a590  mov     x29, sp
  10011a594  stp     x20, x19, [sp, #-0x10]!
  10011a598  stp     x22, x21, [sp, #-0x10]!
  10011a59c  sub     sp, sp, #0x30
  10011a5a0  mov     x19, x0
  10011a5a4  mov     x0, x2
  10011a5a8  bl      _objc_retain
  10011a5ac  adrp    x8, #0x100420000
  10011a5b0  ldrsw   x21, [x8, #0x83c]                        ; ivar offset GAIDataStore._clientId (+0x10)
  10011a5b4  bl      _objc_retain
  10011a5b8  mov     x20, x0
  10011a5bc  ldr     x0, [x19, x21]                           ; x0 = self->_clientId
  10011a5c0  str     x20, [x19, x21]                          ; self->_clientId = arg1
  10011a5c4  bl      _objc_release
  10011a5c8  adrp    x8, #0x1003b0000
  10011a5cc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a5d0  mov     w9, #-0x3e000000
  10011a5d4  str     x8, [sp]
  10011a5d8  stp     w9, wzr, [sp, #8]
  10011a5dc  adr     x8, #0x10011a668                         ; &-[GAIDataStore setClientId:]_block_invoke
  10011a5e0  nop
  10011a5e4  str     x8, [sp, #0x10]
  10011a5e8  adrp    x8, #0x1003b7000
  10011a5ec  add     x8, x8, #0xfa0                           ; &d_1003b7fa0
  10011a5f0  str     x8, [sp, #0x18]
  10011a5f4  mov     x0, x19
  10011a5f8  bl      _objc_retain
  10011a5fc  mov     x19, x0
  10011a600  stp     x19, x20, [sp, #0x20]
  10011a604  adrp    x8, #0x10041b000
  10011a608  nop
  10011a60c  ldr     x21, [x8, #0xf58]
  10011a610  mov     x0, x20
  10011a614  bl      _objc_retain
  10011a618  mov     x20, x0
  10011a61c  mov     x3, #0
  10011a620  mov     x2, sp
  10011a624  mov     x0, x19
  10011a628  mov     x1, x21
  10011a62c  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setClientId:]_block_invoke captures +0x20=self, +0x28=arg1} withError:0]
  10011a630  mov     x29, x29
  10011a634  bl      _objc_retainAutoreleasedReturnValue
  10011a638  bl      _objc_release
  10011a63c  ldr     x0, [sp, #0x28]
  10011a640  bl      _objc_release
  10011a644  ldr     x0, [sp, #0x20]
  10011a648  bl      _objc_release
  10011a64c  mov     x0, x20
  10011a650  bl      _objc_release
  10011a654  sub     sp, x29, #0x20
  10011a658  ldp     x22, x21, [sp], #0x10
  10011a65c  ldp     x20, x19, [sp], #0x10
  10011a660  ldp     x29, x30, [sp], #0x10
  10011a664  ret

; ======================================================================
; -[GAIDataStore setClientId:]_block_invoke
; address 0x10011a668  size 60  kind block
; ======================================================================
  10011a668  stp     x29, x30, [sp, #-0x10]!
  10011a66c  mov     x29, sp
  10011a670  mov     x8, x1
  10011a674  ldp     x9, x3, [x0, #0x20]
  10011a678  adrp    x10, #0x10041b000
  10011a67c  nop
  10011a680  ldr     x1, [x10, #0xfd8]
  10011a684  adrp    x2, #0x1003c4000
  10011a688  add     x2, x2, #0xc90                           ; @"ClientId"
  10011a68c  mov     x0, x9
  10011a690  mov     x4, x8
  10011a694  bl      _objc_msgSend                            ; [x0 setProperty:@"ClientId" stringValue:x3 withError:blockarg1]
  10011a698  mov     x0, #0
  10011a69c  ldp     x29, x30, [sp], #0x10
  10011a6a0  ret

; ======================================================================
; sub_10011a6a4
; address 0x10011a6a4  size 40  kind sub
; ======================================================================
  10011a6a4  stp     x29, x30, [sp, #-0x10]!
  10011a6a8  mov     x29, sp
  10011a6ac  stp     x20, x19, [sp, #-0x10]!
  10011a6b0  mov     x19, x1
  10011a6b4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10011a6b8  bl      _objc_retain
  10011a6bc  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10011a6c0  ldp     x20, x19, [sp], #0x10
  10011a6c4  ldp     x29, x30, [sp], #0x10
  10011a6c8  b       _objc_retain

; ======================================================================
; sub_10011a6cc
; address 0x10011a6cc  size 40  kind sub
; ======================================================================
  10011a6cc  stp     x29, x30, [sp, #-0x10]!
  10011a6d0  mov     x29, sp
  10011a6d4  stp     x20, x19, [sp, #-0x10]!
  10011a6d8  mov     x19, x0
  10011a6dc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10011a6e0  bl      _objc_release
  10011a6e4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011a6e8  ldp     x20, x19, [sp], #0x10
  10011a6ec  ldp     x29, x30, [sp], #0x10
  10011a6f0  b       _objc_release

; ======================================================================
; -[GAIDataStore hitCount:]
; address 0x10011a6f4  size 164  kind objc
; ======================================================================
  10011a6f4  stp     x29, x30, [sp, #-0x10]!
  10011a6f8  mov     x29, sp
  10011a6fc  stp     x20, x19, [sp, #-0x10]!
  10011a700  sub     sp, sp, #0x30
  10011a704  mov     x19, x2
  10011a708  adrp    x8, #0x1003b0000
  10011a70c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a710  str     x8, [sp, #8]
  10011a714  mov     w8, #-0x3e000000
  10011a718  stp     w8, wzr, [sp, #0x10]
  10011a71c  adr     x8, #0x10011a798                         ; &-[GAIDataStore hitCount:]_block_invoke
  10011a720  nop
  10011a724  str     x8, [sp, #0x18]
  10011a728  adrp    x8, #0x1003b7000
  10011a72c  add     x8, x8, #0xfd0                           ; &d_1003b7fd0
  10011a730  str     x8, [sp, #0x20]
  10011a734  bl      _objc_retain
  10011a738  str     x0, [sp, #0x28]
  10011a73c  adrp    x8, #0x10041b000
  10011a740  nop
  10011a744  ldr     x1, [x8, #0xf58]
  10011a748  add     x2, sp, #8
  10011a74c  mov     x3, x19
  10011a750  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore hitCount:]_block_invoke captures +0x20=self} withError:arg1]
  10011a754  mov     x29, x29
  10011a758  bl      _objc_retainAutoreleasedReturnValue
  10011a75c  mov     x19, x0
  10011a760  adrp    x8, #0x100417000
  10011a764  nop
  10011a768  ldr     x1, [x8, #0xb0]
  10011a76c  bl      _objc_msgSend                            ; [[self performBlockAndWait:^{-[GAIDataStore hitCount:]_block_invoke captures +0x20=self} withError:arg1] integerValue]
  10011a770  mov     x20, x0
  10011a774  mov     x0, x19
  10011a778  bl      _objc_release
  10011a77c  ldr     x0, [sp, #0x28]
  10011a780  bl      _objc_release
  10011a784  mov     x0, x20
  10011a788  sub     sp, x29, #0x10
  10011a78c  ldp     x20, x19, [sp], #0x10
  10011a790  ldp     x29, x30, [sp], #0x10
  10011a794  ret

; ======================================================================
; -[GAIDataStore hitCount:]_block_invoke
; address 0x10011a798  size 280  kind block
; ======================================================================
  10011a798  stp     x29, x30, [sp, #-0x10]!
  10011a79c  mov     x29, sp
  10011a7a0  stp     x20, x19, [sp, #-0x10]!
  10011a7a4  stp     x22, x21, [sp, #-0x10]!
  10011a7a8  stp     x24, x23, [sp, #-0x10]!
  10011a7ac  sub     sp, sp, #0x10
  10011a7b0  mov     x19, x1
  10011a7b4  mov     x23, x0
  10011a7b8  ldr     x0, [x23, #0x20]                         ; x0 = captured self
  10011a7bc  adrp    x8, #0x100420000
  10011a7c0  ldrsw   x24, [x8, #0x840]                        ; ivar offset GAIDataStore._context (+0x40)
  10011a7c4  ldr     x2, [x0, x24]                            ; x2 = self->_context
  10011a7c8  str     xzr, [sp, #8]
  10011a7cc  adrp    x8, #0x10041b000
  10011a7d0  nop
  10011a7d4  ldr     x22, [x8, #0x9f0]
  10011a7d8  add     x3, sp, #8
  10011a7dc  mov     x1, x22
  10011a7e0  bl      _objc_msgSend                            ; [self context:self->_context hitCount:&sp[0x8]]
  10011a7e4  mov     x20, x0
  10011a7e8  ldr     x0, [sp, #8]
  10011a7ec  bl      _objc_retain
  10011a7f0  mov     x21, x0
  10011a7f4  cbnz    x21, loc_10011a84c                       ; if (0 != 0)
  10011a7f8  ldr     x0, [x23, #0x20]                         ; x0 = captured self
  10011a7fc  ldr     x8, [x0, x24]                            ; x8 = self->_context
  10011a800  adrp    x9, #0x100420000
  10011a804  ldrsw   x9, [x9, #0x82c]                         ; ivar offset GAIDataStore._currentContext (+0x48)
  10011a808  ldr     x2, [x0, x9]                             ; x2 = self->_currentContext
  10011a80c  cmp     x8, x2
  10011a810  b.eq    loc_10011a848                            ; if (self->_context == self->_currentContext)
  10011a814  str     xzr, [sp]
  10011a818  mov     x3, sp
  10011a81c  mov     x1, x22
  10011a820  bl      _objc_msgSend                            ; [self context:self->_currentContext hitCount:&sp[0x0]]
  10011a824  mov     x22, x0
  10011a828  ldr     x0, [sp]
  10011a82c  bl      _objc_retain
  10011a830  mov     x23, x0
  10011a834  mov     x0, x21
  10011a838  bl      _objc_release
  10011a83c  add     x20, x22, x20                            ; t1 = ([self context:self->_currentContext hitCount:&sp[0x0]] + [self context:self->_context hitCount:&sp[0x8]])
  10011a840  mov     x21, x23
  10011a844  b       loc_10011a84c
loc_10011a848:
  10011a848  mov     x21, #0
loc_10011a84c:
  10011a84c  cbz     x19, loc_10011a85c                       ; if (blockarg1 == 0)
  10011a850  mov     x0, x21
  10011a854  bl      _objc_retainAutorelease
  10011a858  str     x0, [x19]                                ; blockarg1[+0x0] = 0
loc_10011a85c:
  10011a85c  adrp    x8, #0x10041d000
  10011a860  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011a864  cmp     x21, #0
  10011a868  mov     x8, #-1
  10011a86c  csel    x2, x8, x20, ne
  10011a870  adrp    x8, #0x10041b000
  10011a874  nop
  10011a878  ldr     x1, [x8, #0xfe0]
  10011a87c  bl      _objc_msgSend                            ; [NSNumber numberWithLong:(0 != 0 ? -1 : x20)]
  10011a880  mov     x29, x29
  10011a884  bl      _objc_retainAutoreleasedReturnValue
  10011a888  mov     x19, x0
  10011a88c  mov     x0, x21
  10011a890  bl      _objc_release
  10011a894  mov     x0, x19
  10011a898  sub     sp, x29, #0x30
  10011a89c  ldp     x24, x23, [sp], #0x10
  10011a8a0  ldp     x22, x21, [sp], #0x10
  10011a8a4  ldp     x20, x19, [sp], #0x10
  10011a8a8  ldp     x29, x30, [sp], #0x10
  10011a8ac  b       _objc_autoreleaseReturnValue

; ======================================================================
; sub_10011a8b0
; address 0x10011a8b0  size 8  kind sub
; ======================================================================
  10011a8b0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011a8b4  b       _objc_retain

; ======================================================================
; sub_10011a8b8
; address 0x10011a8b8  size 8  kind sub
; ======================================================================
  10011a8b8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011a8bc  b       _objc_release

; ======================================================================
; -[GAIDataStore addHit:]
; address 0x10011a8c0  size 168  kind objc
; ======================================================================
  10011a8c0  stp     x29, x30, [sp, #-0x10]!
  10011a8c4  mov     x29, sp
  10011a8c8  stp     x20, x19, [sp, #-0x10]!
  10011a8cc  sub     sp, sp, #0x30
  10011a8d0  mov     x19, x0
  10011a8d4  mov     x0, x2
  10011a8d8  bl      _objc_retain
  10011a8dc  adrp    x8, #0x1003b0000
  10011a8e0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011a8e4  mov     w9, #-0x3e000000
  10011a8e8  adr     x10, #0x10011a968                        ; &-[GAIDataStore addHit:]_block_invoke
  10011a8ec  nop
  10011a8f0  str     x8, [sp]
  10011a8f4  stp     w9, wzr, [sp, #8]
  10011a8f8  adrp    x8, #0x1003b8000
  10011a8fc  add     x8, x8, #0                               ; &d_1003b8000
  10011a900  stp     x10, x8, [sp, #0x10]
  10011a904  str     x0, [sp, #0x20]
  10011a908  bl      _objc_retain
  10011a90c  mov     x20, x0
  10011a910  mov     x0, x19
  10011a914  bl      _objc_retain
  10011a918  str     x0, [sp, #0x28]
  10011a91c  adrp    x8, #0x10041b000
  10011a920  nop
  10011a924  ldr     x1, [x8, #0xf58]
  10011a928  mov     x3, #0
  10011a92c  mov     x2, sp
  10011a930  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore addHit:]_block_invoke captures +0x20=arg1, +0x28=self} withError:0]
  10011a934  mov     x29, x29
  10011a938  bl      _objc_retainAutoreleasedReturnValue
  10011a93c  bl      _objc_release
  10011a940  ldr     x0, [sp, #0x28]
  10011a944  bl      _objc_release
  10011a948  ldr     x0, [sp, #0x20]
  10011a94c  bl      _objc_release
  10011a950  mov     x0, x20
  10011a954  bl      _objc_release
  10011a958  sub     sp, x29, #0x10
  10011a95c  ldp     x20, x19, [sp], #0x10
  10011a960  ldp     x29, x30, [sp], #0x10
  10011a964  ret

; ======================================================================
; -[GAIDataStore addHit:]_block_invoke
; address 0x10011a968  size 432  kind block
; ======================================================================
  10011a968  stp     x29, x30, [sp, #-0x10]!
  10011a96c  mov     x29, sp
  10011a970  stp     x20, x19, [sp, #-0x10]!
  10011a974  stp     x22, x21, [sp, #-0x10]!
  10011a978  stp     x24, x23, [sp, #-0x10]!
  10011a97c  sub     sp, sp, #0x10
  10011a980  mov     x19, x1
  10011a984  mov     x21, x0
  10011a988  adrp    x24, #0x1003b0000
  10011a98c  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10011a990  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10011a994  str     x8, [sp, #8]
  10011a998  ldr     x0, [x21, #0x20]                         ; x0 = captured arg1
  10011a99c  adrp    x8, #0x10041b000
  10011a9a0  nop
  10011a9a4  ldr     x1, [x8, #0x1d8]
  10011a9a8  bl      _objc_msgSend                            ; [arg1 mutableCopy]
  10011a9ac  mov     x20, x0
  10011a9b0  adrp    x8, #0x1003b8000
  10011a9b4  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  10011a9b8  ldr     x22, [x8]                                ; [&d_1003b81f8] -> @"timestamp"
  10011a9bc  adrp    x8, #0x10041b000
  10011a9c0  nop
  10011a9c4  ldr     x1, [x8, #0xb70]
  10011a9c8  mov     x2, x22
  10011a9cc  bl      _objc_msgSend                            ; [[arg1 mutableCopy] objectForKeyedSubscript:@"timestamp"]
  10011a9d0  mov     x29, x29
  10011a9d4  bl      _objc_retainAutoreleasedReturnValue
  10011a9d8  mov     x23, x0
  10011a9dc  bl      _objc_release
  10011a9e0  cbnz    x23, loc_10011aa2c                       ; if ([[arg1 mutableCopy] objectForKeyedSubscript:@"timestamp"] != 0)
  10011a9e4  adrp    x8, #0x10041e000
  10011a9e8  ldr     x0, [x8, #0x38]                          ; class NSDate
  10011a9ec  adrp    x8, #0x100418000
  10011a9f0  nop
  10011a9f4  ldr     x1, [x8, #0x158]
  10011a9f8  bl      _objc_msgSend                            ; [NSDate date]
  10011a9fc  mov     x29, x29
  10011aa00  bl      _objc_retainAutoreleasedReturnValue
  10011aa04  mov     x23, x0
  10011aa08  adrp    x8, #0x10041b000
  10011aa0c  nop
  10011aa10  ldr     x1, [x8, #0xe00]
  10011aa14  mov     x0, x20
  10011aa18  mov     x2, x23
  10011aa1c  mov     x3, x22
  10011aa20  bl      _objc_msgSend                            ; [[arg1 mutableCopy] setObject:[NSDate date] forKeyedSubscript:@"timestamp"]
  10011aa24  mov     x0, x23
  10011aa28  bl      _objc_release
loc_10011aa2c:
  10011aa2c  ldr     x0, [x21, #0x28]                         ; x0 = captured self
  10011aa30  adrp    x8, #0x10041b000
  10011aa34  nop
  10011aa38  ldr     x1, [x8, #0x978]
  10011aa3c  bl      _objc_msgSend                            ; [self context]
  10011aa40  mov     x29, x29
  10011aa44  bl      _objc_retainAutoreleasedReturnValue
  10011aa48  mov     x21, x0
  10011aa4c  adrp    x8, #0x10041e000
  10011aa50  ldr     x0, [x8, #0x500]                         ; class NSEntityDescription
  10011aa54  adrp    x8, #0x10041b000
  10011aa58  nop
  10011aa5c  ldr     x1, [x8, #0x980]
  10011aa60  adrp    x2, #0x1003c4000
  10011aa64  add     x2, x2, #0xab0                           ; @"GAIHit"
  10011aa68  mov     x3, x21
  10011aa6c  bl      _objc_msgSend                            ; [NSEntityDescription insertNewObjectForEntityForName:@"GAIHit" inManagedObjectContext:[self context]]
  10011aa70  mov     x29, x29
  10011aa74  bl      _objc_retainAutoreleasedReturnValue
  10011aa78  mov     x22, x0
  10011aa7c  adrp    x8, #0x100418000
  10011aa80  nop
  10011aa84  ldr     x1, [x8, #0x428]
  10011aa88  mov     x2, x20
  10011aa8c  bl      _objc_msgSend                            ; [[NSEntityDescription insertNewObjectForEntityForName:@"GAIHit" inManagedObjectContext:[self context]] setValuesForKeysWithDictionary:[arg1 mutableCopy]]
  10011aa90  str     x22, [sp]
  10011aa94  adrp    x8, #0x10041d000
  10011aa98  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10011aa9c  adrp    x8, #0x100417000
  10011aaa0  nop
  10011aaa4  ldr     x1, [x8, #0x3c8]
  10011aaa8  mov     x2, sp
  10011aaac  mov     x3, #1
  10011aab0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x0] count:1]
  10011aab4  mov     x2, x0
  10011aab8  adrp    x8, #0x10041b000
  10011aabc  nop
  10011aac0  ldr     x1, [x8, #0xfe8]
  10011aac4  mov     x0, x21
  10011aac8  mov     x3, x19
  10011aacc  bl      _objc_msgSend                            ; [[self context] obtainPermanentIDsForObjects:[NSArray arrayWithObjects:&sp[0x0] count:1] error:blockarg1]
  10011aad0  mov     x0, x22
  10011aad4  bl      _objc_release
  10011aad8  mov     x0, x21
  10011aadc  bl      _objc_release
  10011aae0  mov     x0, x20
  10011aae4  bl      _objc_release
  10011aae8  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10011aaec  ldr     x9, [sp, #8]
  10011aaf0  sub     x8, x8, x9
  10011aaf4  cbnz    x8, loc_10011ab14                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011aaf8  mov     x0, #0
  10011aafc  sub     sp, x29, #0x30
  10011ab00  ldp     x24, x23, [sp], #0x10
  10011ab04  ldp     x22, x21, [sp], #0x10
  10011ab08  ldp     x20, x19, [sp], #0x10
  10011ab0c  ldp     x29, x30, [sp], #0x10
  10011ab10  ret
loc_10011ab14:
  10011ab14  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_10011ab18
; address 0x10011ab18  size 40  kind sub
; ======================================================================
  10011ab18  stp     x29, x30, [sp, #-0x10]!
  10011ab1c  mov     x29, sp
  10011ab20  stp     x20, x19, [sp, #-0x10]!
  10011ab24  mov     x19, x1
  10011ab28  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10011ab2c  bl      _objc_retain
  10011ab30  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10011ab34  ldp     x20, x19, [sp], #0x10
  10011ab38  ldp     x29, x30, [sp], #0x10
  10011ab3c  b       _objc_retain

; ======================================================================
; sub_10011ab40
; address 0x10011ab40  size 40  kind sub
; ======================================================================
  10011ab40  stp     x29, x30, [sp, #-0x10]!
  10011ab44  mov     x29, sp
  10011ab48  stp     x20, x19, [sp, #-0x10]!
  10011ab4c  mov     x19, x0
  10011ab50  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10011ab54  bl      _objc_release
  10011ab58  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011ab5c  ldp     x20, x19, [sp], #0x10
  10011ab60  ldp     x29, x30, [sp], #0x10
  10011ab64  b       _objc_release

; ======================================================================
; -[GAIDataStore fetchHitsWithLimit:error:]
; address 0x10011ab68  size 140  kind objc
; ======================================================================
  10011ab68  stp     x29, x30, [sp, #-0x10]!
  10011ab6c  mov     x29, sp
  10011ab70  stp     x20, x19, [sp, #-0x10]!
  10011ab74  sub     sp, sp, #0x30
  10011ab78  mov     x19, x3
  10011ab7c  mov     x20, x2
  10011ab80  adrp    x8, #0x1003b0000
  10011ab84  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011ab88  str     x8, [sp]
  10011ab8c  mov     w8, #-0x3e000000
  10011ab90  stp     w8, wzr, [sp, #8]
  10011ab94  adr     x8, #0x10011abf4                         ; &-[GAIDataStore fetchHitsWithLimit:error:]_block_invoke
  10011ab98  nop
  10011ab9c  str     x8, [sp, #0x10]
  10011aba0  adrp    x8, #0x1003b8000
  10011aba4  add     x8, x8, #0x60                            ; &d_1003b8060
  10011aba8  str     x8, [sp, #0x18]
  10011abac  bl      _objc_retain
  10011abb0  stp     x0, x20, [sp, #0x20]
  10011abb4  adrp    x8, #0x10041b000
  10011abb8  nop
  10011abbc  ldr     x1, [x8, #0xf58]
  10011abc0  mov     x2, sp
  10011abc4  mov     x3, x19
  10011abc8  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore fetchHitsWithLimit:error:]_block_invoke captures +0x20=self, +0x28=arg1} withError:arg2]
  10011abcc  mov     x29, x29
  10011abd0  bl      _objc_retainAutoreleasedReturnValue
  10011abd4  mov     x19, x0
  10011abd8  ldr     x0, [sp, #0x20]
  10011abdc  bl      _objc_release
  10011abe0  mov     x0, x19
  10011abe4  sub     sp, x29, #0x10
  10011abe8  ldp     x20, x19, [sp], #0x10
  10011abec  ldp     x29, x30, [sp], #0x10
  10011abf0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore fetchHitsWithLimit:error:]_block_invoke
; address 0x10011abf4  size 724  kind block
; ======================================================================
  10011abf4  stp     x29, x30, [sp, #-0x10]!
  10011abf8  mov     x29, sp
  10011abfc  stp     x20, x19, [sp, #-0x10]!
  10011ac00  stp     x22, x21, [sp, #-0x10]!
  10011ac04  stp     x24, x23, [sp, #-0x10]!
  10011ac08  stp     x26, x25, [sp, #-0x10]!
  10011ac0c  stp     x28, x27, [sp, #-0x10]!
  10011ac10  sub     sp, sp, #0x120
  10011ac14  mov     x21, x1
  10011ac18  mov     x28, x0
  10011ac1c  adrp    x8, #0x1003b0000
  10011ac20  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011ac24  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011ac28  adrp    x9, #0x1003b0000
  10011ac2c  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  10011ac30  stur    x8, [x29, #-0x58]
  10011ac34  stur    x9, [x29, #-0x80]
  10011ac38  mov     w8, #-0x3e000000
  10011ac3c  stp     w8, wzr, [x29, #-0x78]
  10011ac40  adr     x8, #0x10011aec8                         ; &-[GAIDataStore fetchHitsWithLimit:error:]_block_invoke_block_invoke
  10011ac44  nop
  10011ac48  stur    x8, [x29, #-0x70]
  10011ac4c  adrp    x8, #0x1003b8000
  10011ac50  add     x8, x8, #0x30                            ; &d_1003b8030
  10011ac54  stur    x8, [x29, #-0x68]
  10011ac58  ldr     x0, [x28, #0x20]                         ; x0 = captured self
  10011ac5c  bl      _objc_retain
  10011ac60  stur    x0, [x29, #-0x60]
  10011ac64  adrp    x8, #0x10042d000
  10011ac68  add     x8, x8, #0xc68                           ; &g_10042dc68
  10011ac6c  ldr     x8, [x8, #8]                             ; load g_10042dc70
  10011ac70  cmn     x8, #1
  10011ac74  b.ne    loc_10011aeac                            ; if (g_10042dc70 != -1)
loc_10011ac78:
  10011ac78  adrp    x8, #0x10041c000
  10011ac7c  nop
  10011ac80  ldr     x1, [x8]
  10011ac84  bl      _objc_msgSend                            ; [self currentContext]
  10011ac88  mov     x29, x29
  10011ac8c  bl      _objc_retainAutoreleasedReturnValue
  10011ac90  mov     x20, x0
  10011ac94  ldp     x0, x2, [x28, #0x20]
  10011ac98  adrp    x8, #0x10041b000
  10011ac9c  nop
  10011aca0  ldr     x1, [x8, #0x998]
  10011aca4  bl      _objc_msgSend                            ; [x0 requestHitsWithLimit:x2]
  10011aca8  mov     x29, x29
  10011acac  bl      _objc_retainAutoreleasedReturnValue
  10011acb0  mov     x22, x0
  10011acb4  adrp    x8, #0x10041b000
  10011acb8  nop
  10011acbc  ldr     x1, [x8, #0x9a0]
  10011acc0  mov     x0, x20
  10011acc4  mov     x2, x22
  10011acc8  mov     x3, x21
  10011accc  bl      _objc_msgSend                            ; [[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1]
  10011acd0  mov     x29, x29
  10011acd4  bl      _objc_retainAutoreleasedReturnValue
  10011acd8  mov     x24, x0
  10011acdc  mov     x0, x22
  10011ace0  bl      _objc_release
  10011ace4  adrp    x8, #0x10041d000
  10011ace8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10011acec  adrp    x8, #0x100418000
  10011acf0  nop
  10011acf4  ldr     x1, [x8, #0x50]
  10011acf8  bl      _objc_msgSend                            ; [NSMutableArray array]
  10011acfc  mov     x29, x29
  10011ad00  bl      _objc_retainAutoreleasedReturnValue
  10011ad04  mov     x21, x0
  10011ad08  stp     xzr, xzr, [sp, #0xe0]
  10011ad0c  stp     xzr, xzr, [sp, #0xd0]
  10011ad10  stp     xzr, xzr, [sp, #0xc0]
  10011ad14  stp     xzr, xzr, [sp, #0xb0]
  10011ad18  mov     x0, x24
  10011ad1c  bl      _objc_retain
  10011ad20  str     x0, [sp, #0x28]
  10011ad24  adrp    x8, #0x100416000
  10011ad28  nop
  10011ad2c  ldr     x1, [x8, #0xe00]
  10011ad30  str     x1, [sp, #0x18]
  10011ad34  add     x2, sp, #0xb0
  10011ad38  add     x3, sp, #0x30
  10011ad3c  mov     x4, #0x10
  10011ad40  bl      _objc_msgSend                            ; [[[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1] countByEnumeratingWithState:&sp[0xb0] objects:&sp[0x30] count:16]
  10011ad44  mov     x24, x0
  10011ad48  cbz     x24, loc_10011ae48                       ; if ([[[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1] countByEnumeratingWithState:&sp[0xb0] objects:&sp[0x30] count:16] == 0)
  10011ad4c  ldr     x8, [sp, #0xc0]
  10011ad50  ldr     x23, [x8]
  10011ad54  adrp    x8, #0x100420000
  10011ad58  ldrsw   x22, [x8, #0x840]                        ; ivar offset GAIDataStore._context (+0x40)
  10011ad5c  adrp    x8, #0x10041b000
  10011ad60  nop
  10011ad64  ldr     x8, [x8, #0xf18]
  10011ad68  str     x8, [sp, #0x20]
  10011ad6c  adrp    x8, #0x100416000
  10011ad70  nop
  10011ad74  ldr     x26, [x8, #0xd90]
  10011ad78  adrp    x8, #0x10041c000
  10011ad7c  nop
  10011ad80  ldr     x27, [x8, #8]
  10011ad84  add     x8, sp, #0xb0
  10011ad88  str     x8, [sp, #0x10]
  10011ad8c  add     x8, sp, #0x30
  10011ad90  str     x8, [sp, #8]
loc_10011ad94:
  10011ad94  mov     x19, #0
loc_10011ad98:
  10011ad98  ldr     x8, [sp, #0xc0]
  10011ad9c  ldr     x8, [x8]
  10011ada0  cmp     x8, x23
  10011ada4  b.eq    loc_10011adb0                            ; if (x8 == x23)
  10011ada8  ldr     x0, [sp, #0x28]
  10011adac  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1])
loc_10011adb0:
  10011adb0  ldr     x8, [sp, #0xb8]
  10011adb4  ldr     x2, [x8, x19, lsl #3]
  10011adb8  ldr     x0, [x28, #0x20]                         ; x0 = captured self
  10011adbc  mov     x25, x28
  10011adc0  ldr     x8, [x0, x22]                            ; x8 = self->_context
  10011adc4  cmp     x8, x20
  10011adc8  b.ne    loc_10011adf0                            ; if (self->_context != [self currentContext])
  10011adcc  adrp    x8, #0x10042d000
  10011add0  nop
  10011add4  ldr     x8, [x8, #0xc68]                         ; load g_10042dc68
  10011add8  mov     x0, x2
  10011addc  ldr     x1, [sp, #0x20]
  10011ade0  mov     x2, x8
  10011ade4  bl      _objc_msgSend                            ; [x0 dictionaryWithValuesForKeys:g_10042dc68]
  10011ade8  mov     x29, x29
  10011adec  b       loc_10011adfc
loc_10011adf0:
  10011adf0  mov     x1, x27
  10011adf4  bl      _objc_msgSend                            ; [self oldHitDescription:x2]
  10011adf8  mov     x29, x29
loc_10011adfc:
  10011adfc  bl      _objc_retainAutoreleasedReturnValue
  10011ae00  mov     x28, x0
  10011ae04  mov     x0, x21
  10011ae08  mov     x1, x26
  10011ae0c  mov     x2, x28
  10011ae10  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:x2]
  10011ae14  mov     x0, x28
  10011ae18  bl      _objc_release
  10011ae1c  add     x19, x19, #1
  10011ae20  cmp     x19, x24
  10011ae24  mov     x28, x25
  10011ae28  b.lo    loc_10011ad98                            ; if ((x19 + 1) <u [[[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1] countByEnumeratingWithState:&s…)
  10011ae2c  mov     x4, #0x10
  10011ae30  ldr     x0, [sp, #0x28]
  10011ae34  ldp     x2, x1, [sp, #0x10]
  10011ae38  ldr     x3, [sp, #8]
  10011ae3c  bl      _objc_msgSend                            ; [[[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1] countByEnumeratingWithState:&sp[0xb0] objects:&sp[0x30] count:16]
  10011ae40  mov     x24, x0
  10011ae44  cbnz    x24, loc_10011ad94                       ; if ([[[self currentContext] executeFetchRequest:[x0 requestHitsWithLimit:x2] error:blockarg1] countByEnumeratingWithState:&sp[0xb0] objects:&sp[0x30] count:16] != 0)
loc_10011ae48:
  10011ae48  ldr     x19, [sp, #0x28]
  10011ae4c  mov     x0, x19
  10011ae50  bl      _objc_release
  10011ae54  mov     x0, x19
  10011ae58  bl      _objc_release
  10011ae5c  mov     x0, x20
  10011ae60  bl      _objc_release
  10011ae64  ldur    x0, [x29, #-0x60]
  10011ae68  bl      _objc_release
  10011ae6c  adrp    x8, #0x1003b0000
  10011ae70  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011ae74  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011ae78  ldur    x9, [x29, #-0x58]
  10011ae7c  sub     x8, x8, x9
  10011ae80  cbnz    x8, loc_10011aea8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011ae84  mov     x0, x21
  10011ae88  sub     sp, x29, #0x50
  10011ae8c  ldp     x28, x27, [sp], #0x10
  10011ae90  ldp     x26, x25, [sp], #0x10
  10011ae94  ldp     x24, x23, [sp], #0x10
  10011ae98  ldp     x22, x21, [sp], #0x10
  10011ae9c  ldp     x20, x19, [sp], #0x10
  10011aea0  ldp     x29, x30, [sp], #0x10
  10011aea4  b       _objc_autoreleaseReturnValue
loc_10011aea8:
  10011aea8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10011aeac:
  10011aeac  adrp    x8, #0x10042d000
  10011aeb0  add     x8, x8, #0xc68                           ; &g_10042dc68
  10011aeb4  add     x0, x8, #8                               ; &g_10042dc70
  10011aeb8  sub     x1, x29, #0x80
  10011aebc  bl      _dispatch_once                           ; dispatch_once(&g_10042dc70, ^{-[GAIDataStore fetchHitsWithLimit:error:]_block_invoke_block_invoke captures +0x20=self, +0x28=___stack_chk_guard[+0x0]})
  10011aec0  ldr     x0, [x28, #0x20]                         ; x0 = captured self
  10011aec4  b       loc_10011ac78

; ======================================================================
; -[GAIDataStore fetchHitsWithLimit:error:]_block_invoke_block_invoke
; address 0x10011aec8  size 244  kind block
; ======================================================================
  10011aec8  stp     x29, x30, [sp, #-0x10]!
  10011aecc  mov     x29, sp
  10011aed0  stp     x20, x19, [sp, #-0x10]!
  10011aed4  stp     x22, x21, [sp, #-0x10]!
  10011aed8  adrp    x8, #0x10041e000
  10011aedc  ldr     x8, [x8, #0x500]                         ; class NSEntityDescription
  10011aee0  ldr     x9, [x0, #0x20]                          ; x9 = captured self
  10011aee4  adrp    x10, #0x100420000
  10011aee8  ldrsw   x10, [x10, #0x840]                       ; ivar offset GAIDataStore._context (+0x40)
  10011aeec  ldr     x3, [x9, x10]                            ; x3 = self->_context
  10011aef0  adrp    x9, #0x10041b000
  10011aef4  nop
  10011aef8  ldr     x1, [x9, #0xff0]
  10011aefc  adrp    x2, #0x1003c4000
  10011af00  add     x2, x2, #0xab0                           ; @"GAIHit"
  10011af04  mov     x0, x8
  10011af08  bl      _objc_msgSend                            ; [NSEntityDescription entityForName:@"GAIHit" inManagedObjectContext:self->_context]
  10011af0c  mov     x29, x29
  10011af10  bl      _objc_retainAutoreleasedReturnValue
  10011af14  mov     x19, x0
  10011af18  adrp    x8, #0x10041b000
  10011af1c  nop
  10011af20  ldr     x1, [x8, #0x2f0]
  10011af24  bl      _objc_msgSend                            ; [[NSEntityDescription entityForName:@"GAIHit" inManagedObjectContext:self->_context] properties]
  10011af28  mov     x29, x29
  10011af2c  bl      _objc_retainAutoreleasedReturnValue
  10011af30  mov     x20, x0
  10011af34  adrp    x8, #0x1003b8000
  10011af38  add     x8, x8, #0x220                           ; &d_1003b8220
  10011af3c  ldr     x2, [x8]                                 ; [&d_1003b8220] -> @"name"
  10011af40  adrp    x8, #0x100416000
  10011af44  nop
  10011af48  ldr     x1, [x8, #0xda0]
  10011af4c  bl      _objc_msgSend                            ; [[[NSEntityDescription entityForName:@"GAIHit" inManagedObjectContext:self->_context] properties] valueForKey:@"name"]
  10011af50  mov     x29, x29
  10011af54  bl      _objc_retainAutoreleasedReturnValue
  10011af58  mov     x21, x0
  10011af5c  adrp    x8, #0x1003b8000
  10011af60  add     x8, x8, #0x200                           ; &d_1003b8200
  10011af64  ldr     x2, [x8]                                 ; [&d_1003b8200] -> @"objectID"
  10011af68  adrp    x8, #0x10041b000
  10011af6c  nop
  10011af70  ldr     x1, [x8, #0xff8]
  10011af74  bl      _objc_msgSend                            ; [[[[NSEntityDescription entityForName:@"GAIHit" inManagedObjectContext:self->_context] properties] valueForKey:@"name"] arrayByAddingObject:@"objectID"]
  10011af78  mov     x29, x29
  10011af7c  bl      _objc_retainAutoreleasedReturnValue
  10011af80  adrp    x9, #0x10042d000
  10011af84  add     x9, x9, #0xc68                           ; &g_10042dc68
  10011af88  ldr     x8, [x9]                                 ; load g_10042dc68
  10011af8c  str     x0, [x9]                                 ; store g_10042dc68 = [[[[NSEntityDescription entityForName:@"GAIHit" inManagedObjectContext:self->_context] properties] valueForKey:@"name"] arrayByAddingObject:@"objectID"]
  10011af90  mov     x0, x8
  10011af94  bl      _objc_release
  10011af98  mov     x0, x21
  10011af9c  bl      _objc_release
  10011afa0  mov     x0, x20
  10011afa4  bl      _objc_release
  10011afa8  mov     x0, x19
  10011afac  ldp     x22, x21, [sp], #0x10
  10011afb0  ldp     x20, x19, [sp], #0x10
  10011afb4  ldp     x29, x30, [sp], #0x10
  10011afb8  b       _objc_release

; ======================================================================
; sub_10011afbc
; address 0x10011afbc  size 8  kind sub
; ======================================================================
  10011afbc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011afc0  b       _objc_retain

; ======================================================================
; sub_10011afc4
; address 0x10011afc4  size 8  kind sub
; ======================================================================
  10011afc4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011afc8  b       _objc_release

; ======================================================================
; sub_10011afcc
; address 0x10011afcc  size 8  kind sub
; ======================================================================
  10011afcc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011afd0  b       _objc_retain

; ======================================================================
; sub_10011afd4
; address 0x10011afd4  size 8  kind sub
; ======================================================================
  10011afd4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011afd8  b       _objc_release

; ======================================================================
; -[GAIDataStore deleteHitsWithIds:error:]
; address 0x10011afdc  size 232  kind objc
; ======================================================================
  10011afdc  stp     x29, x30, [sp, #-0x10]!
  10011afe0  mov     x29, sp
  10011afe4  stp     x20, x19, [sp, #-0x10]!
  10011afe8  stp     x22, x21, [sp, #-0x10]!
  10011afec  sub     sp, sp, #0x30
  10011aff0  mov     x19, x3
  10011aff4  mov     x20, x0
  10011aff8  mov     x0, x2
  10011affc  bl      _objc_retain
  10011b000  mov     x21, x0
  10011b004  adrp    x8, #0x1003b0000
  10011b008  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011b00c  mov     w9, #-0x3e000000
  10011b010  str     x8, [sp]
  10011b014  stp     w9, wzr, [sp, #8]
  10011b018  adr     x8, #0x10011b0c4                         ; &-[GAIDataStore deleteHitsWithIds:error:]_block_invoke
  10011b01c  nop
  10011b020  str     x8, [sp, #0x10]
  10011b024  adrp    x8, #0x1003b8000
  10011b028  add     x8, x8, #0x90                            ; &d_1003b8090
  10011b02c  str     x8, [sp, #0x18]
  10011b030  mov     x0, x20
  10011b034  bl      _objc_retain
  10011b038  mov     x20, x0
  10011b03c  stp     x20, x21, [sp, #0x20]
  10011b040  adrp    x8, #0x10041b000
  10011b044  nop
  10011b048  ldr     x22, [x8, #0xf58]
  10011b04c  mov     x0, x21
  10011b050  bl      _objc_retain
  10011b054  mov     x21, x0
  10011b058  mov     x2, sp
  10011b05c  mov     x0, x20
  10011b060  mov     x1, x22
  10011b064  mov     x3, x19
  10011b068  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore deleteHitsWithIds:error:]_block_invoke captures +0x20=self, +0x28=arg1} withError:arg2]
  10011b06c  mov     x29, x29
  10011b070  bl      _objc_retainAutoreleasedReturnValue
  10011b074  mov     x19, x0
  10011b078  adrp    x8, #0x100417000
  10011b07c  nop
  10011b080  ldr     x1, [x8, #0xd8]
  10011b084  bl      _objc_msgSend                            ; [[self performBlockAndWait:^{-[GAIDataStore deleteHitsWithIds:error:]_block_invoke captures +0x20=self, +0x28=arg1} withError:arg2] boolValue]
  10011b088  mov     x20, x0
  10011b08c  mov     x0, x19
  10011b090  bl      _objc_release
  10011b094  ldr     x0, [sp, #0x28]
  10011b098  bl      _objc_release
  10011b09c  ldr     x0, [sp, #0x20]
  10011b0a0  bl      _objc_release
  10011b0a4  mov     x0, x21
  10011b0a8  bl      _objc_release
  10011b0ac  mov     x0, x20
  10011b0b0  sub     sp, x29, #0x20
  10011b0b4  ldp     x22, x21, [sp], #0x10
  10011b0b8  ldp     x20, x19, [sp], #0x10
  10011b0bc  ldp     x29, x30, [sp], #0x10
  10011b0c0  ret

; ======================================================================
; -[GAIDataStore deleteHitsWithIds:error:]_block_invoke
; address 0x10011b0c4  size 460  kind block
; ======================================================================
  10011b0c4  stp     x29, x30, [sp, #-0x10]!
  10011b0c8  mov     x29, sp
  10011b0cc  stp     x20, x19, [sp, #-0x10]!
  10011b0d0  stp     x22, x21, [sp, #-0x10]!
  10011b0d4  stp     x24, x23, [sp, #-0x10]!
  10011b0d8  stp     x26, x25, [sp, #-0x10]!
  10011b0dc  stp     x28, x27, [sp, #-0x10]!
  10011b0e0  sub     sp, sp, #0xe0
  10011b0e4  mov     x20, x1
  10011b0e8  mov     x21, x0
  10011b0ec  adrp    x8, #0x1003b0000
  10011b0f0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011b0f4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011b0f8  stur    x8, [x29, #-0x58]
  10011b0fc  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  10011b100  adrp    x8, #0x10041c000
  10011b104  nop
  10011b108  ldr     x1, [x8]
  10011b10c  bl      _objc_msgSend                            ; [self currentContext]
  10011b110  mov     x29, x29
  10011b114  bl      _objc_retainAutoreleasedReturnValue
  10011b118  mov     x19, x0
  10011b11c  stp     xzr, xzr, [sp, #0xc8]
  10011b120  stp     xzr, xzr, [sp, #0xb8]
  10011b124  stp     xzr, xzr, [sp, #0xa8]
  10011b128  stp     xzr, xzr, [sp, #0x98]
  10011b12c  ldr     x0, [x21, #0x28]                         ; x0 = captured arg1
  10011b130  bl      _objc_retain
  10011b134  mov     x21, x0
  10011b138  adrp    x8, #0x100416000
  10011b13c  nop
  10011b140  ldr     x1, [x8, #0xe00]
  10011b144  str     x1, [sp, #0x10]
  10011b148  add     x2, sp, #0x98
  10011b14c  add     x3, sp, #0x18
  10011b150  mov     x4, #0x10
  10011b154  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10011b158  mov     x24, x0
  10011b15c  cbz     x24, loc_10011b210                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  10011b160  ldr     x8, [sp, #0xa8]
  10011b164  ldr     x22, [x8]
  10011b168  adrp    x8, #0x10041c000
  10011b16c  nop
  10011b170  ldr     x23, [x8, #0x10]
  10011b174  adrp    x8, #0x10041b000
  10011b178  nop
  10011b17c  ldr     x25, [x8, #0x9b8]
  10011b180  add     x8, sp, #0x98
  10011b184  str     x8, [sp, #8]
  10011b188  add     x27, sp, #0x18
loc_10011b18c:
  10011b18c  mov     x26, #0
loc_10011b190:
  10011b190  ldr     x8, [sp, #0xa8]
  10011b194  ldr     x8, [x8]
  10011b198  cmp     x8, x22
  10011b19c  b.eq    loc_10011b1a8                            ; if (x8 == x22)
  10011b1a0  mov     x0, x21
  10011b1a4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10011b1a8:
  10011b1a8  ldr     x8, [sp, #0xa0]
  10011b1ac  ldr     x2, [x8, x26, lsl #3]
  10011b1b0  mov     x0, x19
  10011b1b4  mov     x1, x23
  10011b1b8  mov     x3, x20
  10011b1bc  bl      _objc_msgSend                            ; [[self currentContext] existingObjectWithID:x2 error:blockarg1]
  10011b1c0  mov     x29, x29
  10011b1c4  bl      _objc_retainAutoreleasedReturnValue
  10011b1c8  mov     x28, x0
  10011b1cc  cbz     x28, loc_10011b1e0                       ; if ([[self currentContext] existingObjectWithID:x2 error:blockarg1] == 0)
  10011b1d0  mov     x0, x19
  10011b1d4  mov     x1, x25
  10011b1d8  mov     x2, x28
  10011b1dc  bl      _objc_msgSend                            ; [[self currentContext] deleteObject:[[self currentContext] existingObjectWithID:x2 error:blockarg1]]
loc_10011b1e0:
  10011b1e0  mov     x0, x28
  10011b1e4  bl      _objc_release
  10011b1e8  add     x26, x26, #1
  10011b1ec  cmp     x26, x24
  10011b1f0  b.lo    loc_10011b190                            ; if ((x26 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  10011b1f4  mov     x4, #0x10
  10011b1f8  mov     x0, x21
  10011b1fc  ldp     x2, x1, [sp, #8]
  10011b200  mov     x3, x27
  10011b204  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10011b208  mov     x24, x0
  10011b20c  cbnz    x24, loc_10011b18c                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10011b210:
  10011b210  mov     x0, x21
  10011b214  bl      _objc_release
  10011b218  adrp    x8, #0x10041d000
  10011b21c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011b220  ldr     x8, [x20]                                ; x8 = blockarg1[+0x0]
  10011b224  cmp     x8, #0
  10011b228  cset    w2, eq
  10011b22c  adrp    x8, #0x100416000
  10011b230  nop
  10011b234  ldr     x1, [x8, #0xec0]
  10011b238  bl      _objc_msgSend                            ; [NSNumber numberWithInt:(blockarg1[+0x0] == 0)]
  10011b23c  mov     x29, x29
  10011b240  bl      _objc_retainAutoreleasedReturnValue
  10011b244  mov     x20, x0
  10011b248  mov     x0, x19
  10011b24c  bl      _objc_release
  10011b250  adrp    x8, #0x1003b0000
  10011b254  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011b258  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011b25c  ldur    x9, [x29, #-0x58]
  10011b260  sub     x8, x8, x9
  10011b264  cbnz    x8, loc_10011b28c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011b268  mov     x0, x20
  10011b26c  sub     sp, x29, #0x50
  10011b270  ldp     x28, x27, [sp], #0x10
  10011b274  ldp     x26, x25, [sp], #0x10
  10011b278  ldp     x24, x23, [sp], #0x10
  10011b27c  ldp     x22, x21, [sp], #0x10
  10011b280  ldp     x20, x19, [sp], #0x10
  10011b284  ldp     x29, x30, [sp], #0x10
  10011b288  b       _objc_autoreleaseReturnValue
loc_10011b28c:
  10011b28c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_10011b290
; address 0x10011b290  size 40  kind sub
; ======================================================================
  10011b290  stp     x29, x30, [sp, #-0x10]!
  10011b294  mov     x29, sp
  10011b298  stp     x20, x19, [sp, #-0x10]!
  10011b29c  mov     x19, x1
  10011b2a0  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10011b2a4  bl      _objc_retain
  10011b2a8  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10011b2ac  ldp     x20, x19, [sp], #0x10
  10011b2b0  ldp     x29, x30, [sp], #0x10
  10011b2b4  b       _objc_retain

; ======================================================================
; sub_10011b2b8
; address 0x10011b2b8  size 40  kind sub
; ======================================================================
  10011b2b8  stp     x29, x30, [sp, #-0x10]!
  10011b2bc  mov     x29, sp
  10011b2c0  stp     x20, x19, [sp, #-0x10]!
  10011b2c4  mov     x19, x0
  10011b2c8  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10011b2cc  bl      _objc_release
  10011b2d0  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10011b2d4  ldp     x20, x19, [sp], #0x10
  10011b2d8  ldp     x29, x30, [sp], #0x10
  10011b2dc  b       _objc_release

; ======================================================================
; -[GAIDataStore deleteAllHits:]
; address 0x10011b2e0  size 164  kind objc
; ======================================================================
  10011b2e0  stp     x29, x30, [sp, #-0x10]!
  10011b2e4  mov     x29, sp
  10011b2e8  stp     x20, x19, [sp, #-0x10]!
  10011b2ec  sub     sp, sp, #0x30
  10011b2f0  mov     x19, x2
  10011b2f4  adrp    x8, #0x1003b0000
  10011b2f8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011b2fc  str     x8, [sp, #8]
  10011b300  mov     w8, #-0x3e000000
  10011b304  stp     w8, wzr, [sp, #0x10]
  10011b308  adr     x8, #0x10011b384                         ; &-[GAIDataStore deleteAllHits:]_block_invoke
  10011b30c  nop
  10011b310  str     x8, [sp, #0x18]
  10011b314  adrp    x8, #0x1003b8000
  10011b318  add     x8, x8, #0xc0                            ; &d_1003b80c0
  10011b31c  str     x8, [sp, #0x20]
  10011b320  bl      _objc_retain
  10011b324  str     x0, [sp, #0x28]
  10011b328  adrp    x8, #0x10041b000
  10011b32c  nop
  10011b330  ldr     x1, [x8, #0xf58]
  10011b334  add     x2, sp, #8
  10011b338  mov     x3, x19
  10011b33c  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore deleteAllHits:]_block_invoke captures +0x20=self} withError:arg1]
  10011b340  mov     x29, x29
  10011b344  bl      _objc_retainAutoreleasedReturnValue
  10011b348  mov     x19, x0
  10011b34c  adrp    x8, #0x100417000
  10011b350  nop
  10011b354  ldr     x1, [x8, #0xd8]
  10011b358  bl      _objc_msgSend                            ; [[self performBlockAndWait:^{-[GAIDataStore deleteAllHits:]_block_invoke captures +0x20=self} withError:arg1] boolValue]
  10011b35c  mov     x20, x0
  10011b360  mov     x0, x19
  10011b364  bl      _objc_release
  10011b368  ldr     x0, [sp, #0x28]
  10011b36c  bl      _objc_release
  10011b370  mov     x0, x20
  10011b374  sub     sp, x29, #0x10
  10011b378  ldp     x20, x19, [sp], #0x10
  10011b37c  ldp     x29, x30, [sp], #0x10
  10011b380  ret

; ======================================================================
; -[GAIDataStore deleteAllHits:]_block_invoke
; address 0x10011b384  size 824  kind block
; ======================================================================
  10011b384  stp     x29, x30, [sp, #-0x10]!
  10011b388  mov     x29, sp
  10011b38c  stp     x20, x19, [sp, #-0x10]!
  10011b390  stp     x22, x21, [sp, #-0x10]!
  10011b394  stp     x24, x23, [sp, #-0x10]!
  10011b398  stp     x26, x25, [sp, #-0x10]!
  10011b39c  stp     x28, x27, [sp, #-0x10]!
  10011b3a0  sub     sp, sp, #0x1c0
  10011b3a4  mov     x20, x1
  10011b3a8  stp     x0, x20, [sp, #0x28]
  10011b3ac  adrp    x8, #0x1003b0000
  10011b3b0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011b3b4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011b3b8  stur    x8, [x29, #-0x58]
  10011b3bc  ldr     x19, [x0, #0x20]                         ; x19 = captured self
  10011b3c0  adrp    x8, #0x100420000
  10011b3c4  ldrsw   x8, [x8, #0x844]                         ; ivar offset GAIDataStore._oldContext (+0x38)
  10011b3c8  ldr     x0, [x19, x8]                            ; x0 = self->_oldContext
  10011b3cc  bl      _objc_retain
  10011b3d0  mov     x28, x0
  10011b3d4  adrp    x8, #0x10041b000
  10011b3d8  nop
  10011b3dc  ldr     x1, [x8, #0xef0]
  10011b3e0  str     x1, [sp, #0x18]
  10011b3e4  adrp    x2, #0x1003c4000
  10011b3e8  add     x2, x2, #0xab0                           ; @"GAIHit"
  10011b3ec  mov     x0, x19
  10011b3f0  bl      _objc_msgSend                            ; [self requestEntityName:@"GAIHit"]
  10011b3f4  mov     x29, x29
  10011b3f8  bl      _objc_retainAutoreleasedReturnValue
  10011b3fc  mov     x26, x0
  10011b400  adrp    x8, #0x10041b000
  10011b404  nop
  10011b408  ldr     x1, [x8, #0x9c0]
  10011b40c  str     x1, [sp, #0x20]
  10011b410  mov     w2, #0
  10011b414  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIHit"] setIncludesPropertyValues:0]
  10011b418  adrp    x8, #0x10041b000
  10011b41c  nop
  10011b420  ldr     x1, [x8, #0x9a0]
  10011b424  str     x1, [sp, #0x10]
  10011b428  mov     x0, x28
  10011b42c  mov     x2, x26
  10011b430  mov     x3, x20
  10011b434  bl      _objc_msgSend                            ; [self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1]
  10011b438  mov     x29, x29
  10011b43c  bl      _objc_retainAutoreleasedReturnValue
  10011b440  mov     x27, x0
  10011b444  stp     xzr, xzr, [x29, #-0x68]
  10011b448  stp     xzr, xzr, [x29, #-0x78]
  10011b44c  stp     xzr, xzr, [x29, #-0x88]
  10011b450  stp     xzr, xzr, [x29, #-0x98]
  10011b454  adrp    x8, #0x100416000
  10011b458  nop
  10011b45c  ldr     x20, [x8, #0xe00]
  10011b460  sub     x2, x29, #0x98
  10011b464  add     x3, sp, #0xf8
  10011b468  mov     x4, #0x10
  10011b46c  mov     x1, x20
  10011b470  bl      _objc_msgSend                            ; [[self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16]
  10011b474  mov     x19, x0
  10011b478  cbz     x19, loc_10011b4f4                       ; if ([[self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16] == 0)
  10011b47c  ldur    x8, [x29, #-0x88]
  10011b480  ldr     x25, [x8]
  10011b484  adrp    x8, #0x10041b000
  10011b488  add     x8, x8, #0x9b8                           ; &@selector(deleteObject:)
  10011b48c  ldr     x21, [x8]
  10011b490  sub     x23, x29, #0x98
  10011b494  add     x24, sp, #0xf8
loc_10011b498:
  10011b498  mov     x22, #0
loc_10011b49c:
  10011b49c  ldur    x8, [x29, #-0x88]
  10011b4a0  ldr     x8, [x8]
  10011b4a4  cmp     x8, x25
  10011b4a8  b.eq    loc_10011b4b4                            ; if (x8 == x25)
  10011b4ac  mov     x0, x27
  10011b4b0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1])
loc_10011b4b4:
  10011b4b4  ldur    x8, [x29, #-0x90]
  10011b4b8  ldr     x2, [x8, x22, lsl #3]
  10011b4bc  mov     x0, x28
  10011b4c0  mov     x1, x21
  10011b4c4  bl      _objc_msgSend                            ; [self->_oldContext deleteObject:x2]
  10011b4c8  add     x22, x22, #1
  10011b4cc  cmp     x22, x19
  10011b4d0  b.lo    loc_10011b49c                            ; if ((x22 + 1) <u [[self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:…)
  10011b4d4  mov     x4, #0x10
  10011b4d8  mov     x0, x27
  10011b4dc  mov     x1, x20
  10011b4e0  mov     x2, x23
  10011b4e4  mov     x3, x24
  10011b4e8  bl      _objc_msgSend                            ; [[self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16]
  10011b4ec  mov     x19, x0
  10011b4f0  cbnz    x19, loc_10011b498                       ; if ([[self->_oldContext executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0xf8] count:16] != 0)
loc_10011b4f4:
  10011b4f4  ldr     x19, [sp, #0x28]
  10011b4f8  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  10011b4fc  adrp    x9, #0x100420000
  10011b500  ldrsw   x9, [x9, #0x840]                         ; ivar offset GAIDataStore._context (+0x40)
  10011b504  ldr     x0, [x8, x9]                             ; x0 = self->_context
  10011b508  bl      _objc_retain
  10011b50c  mov     x21, x0
  10011b510  mov     x0, x28
  10011b514  bl      _objc_release
  10011b518  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10011b51c  adrp    x2, #0x1003c4000
  10011b520  add     x2, x2, #0xab0                           ; @"GAIHit"
  10011b524  ldr     x1, [sp, #0x18]
  10011b528  bl      _objc_msgSend                            ; [self requestEntityName:@"GAIHit"]
  10011b52c  mov     x29, x29
  10011b530  bl      _objc_retainAutoreleasedReturnValue
  10011b534  mov     x22, x0
  10011b538  mov     x0, x26
  10011b53c  bl      _objc_release
  10011b540  mov     w2, #0
  10011b544  mov     x0, x22
  10011b548  ldr     x1, [sp, #0x20]
  10011b54c  bl      _objc_msgSend                            ; [[self requestEntityName:@"GAIHit"] setIncludesPropertyValues:0]
  10011b550  mov     x0, x21
  10011b554  ldr     x1, [sp, #0x10]
  10011b558  mov     x2, x22
  10011b55c  ldr     x3, [sp, #0x30]
  10011b560  bl      _objc_msgSend                            ; [self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1]
  10011b564  mov     x29, x29
  10011b568  bl      _objc_retainAutoreleasedReturnValue
  10011b56c  mov     x19, x0
  10011b570  mov     x0, x27
  10011b574  bl      _objc_release
  10011b578  stp     xzr, xzr, [sp, #0xe8]
  10011b57c  stp     xzr, xzr, [sp, #0xd8]
  10011b580  stp     xzr, xzr, [sp, #0xc8]
  10011b584  stp     xzr, xzr, [sp, #0xb8]
  10011b588  mov     x0, x19
  10011b58c  bl      _objc_retain
  10011b590  mov     x23, x0
  10011b594  add     x2, sp, #0xb8
  10011b598  add     x3, sp, #0x38
  10011b59c  mov     x4, #0x10
  10011b5a0  mov     x1, x20
  10011b5a4  bl      _objc_msgSend                            ; [[self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16]
  10011b5a8  mov     x19, x0
  10011b5ac  cbz     x19, loc_10011b628                       ; if ([[self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16] == 0)
  10011b5b0  ldr     x8, [sp, #0xc8]
  10011b5b4  ldr     x27, [x8]
  10011b5b8  adrp    x8, #0x10041b000
  10011b5bc  add     x8, x8, #0x9b8                           ; &@selector(deleteObject:)
  10011b5c0  ldr     x24, [x8]
  10011b5c4  add     x25, sp, #0xb8
  10011b5c8  add     x26, sp, #0x38
loc_10011b5cc:
  10011b5cc  mov     x28, #0
loc_10011b5d0:
  10011b5d0  ldr     x8, [sp, #0xc8]
  10011b5d4  ldr     x8, [x8]
  10011b5d8  cmp     x8, x27
  10011b5dc  b.eq    loc_10011b5e8                            ; if (x8 == x27)
  10011b5e0  mov     x0, x23
  10011b5e4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1])
loc_10011b5e8:
  10011b5e8  ldr     x8, [sp, #0xc0]
  10011b5ec  ldr     x2, [x8, x28, lsl #3]
  10011b5f0  mov     x0, x21
  10011b5f4  mov     x1, x24
  10011b5f8  bl      _objc_msgSend                            ; [self->_context deleteObject:x2]
  10011b5fc  add     x28, x28, #1
  10011b600  cmp     x28, x19
  10011b604  b.lo    loc_10011b5d0                            ; if ((x28 + 1) <u [[self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&sp…)
  10011b608  mov     x4, #0x10
  10011b60c  mov     x0, x23
  10011b610  mov     x1, x20
  10011b614  mov     x2, x25
  10011b618  mov     x3, x26
  10011b61c  bl      _objc_msgSend                            ; [[self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16]
  10011b620  mov     x19, x0
  10011b624  cbnz    x19, loc_10011b5cc                       ; if ([[self->_context executeFetchRequest:[self requestEntityName:@"GAIHit"] error:blockarg1] countByEnumeratingWithState:&sp[0xb8] objects:&sp[0x38] count:16] != 0)
loc_10011b628:
  10011b628  mov     x0, x23
  10011b62c  bl      _objc_release
  10011b630  adrp    x8, #0x10041d000
  10011b634  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011b638  ldr     x8, [sp, #0x30]
  10011b63c  ldr     x8, [x8]                                 ; x8 = blockarg1[+0x0]
  10011b640  cmp     x8, #0
  10011b644  cset    w2, eq
  10011b648  adrp    x8, #0x100416000
  10011b64c  nop
  10011b650  ldr     x1, [x8, #0xec0]
  10011b654  bl      _objc_msgSend                            ; [NSNumber numberWithInt:(blockarg1[+0x0] == 0)]
  10011b658  mov     x29, x29
  10011b65c  bl      _objc_retainAutoreleasedReturnValue
  10011b660  mov     x19, x0
  10011b664  mov     x0, x23
  10011b668  bl      _objc_release
  10011b66c  mov     x0, x22
  10011b670  bl      _objc_release
  10011b674  mov     x0, x21
  10011b678  bl      _objc_release
  10011b67c  adrp    x8, #0x1003b0000
  10011b680  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011b684  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011b688  ldur    x9, [x29, #-0x58]
  10011b68c  sub     x8, x8, x9
  10011b690  cbnz    x8, loc_10011b6b8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011b694  mov     x0, x19
  10011b698  sub     sp, x29, #0x50
  10011b69c  ldp     x28, x27, [sp], #0x10
  10011b6a0  ldp     x26, x25, [sp], #0x10
  10011b6a4  ldp     x24, x23, [sp], #0x10
  10011b6a8  ldp     x22, x21, [sp], #0x10
  10011b6ac  ldp     x20, x19, [sp], #0x10
  10011b6b0  ldp     x29, x30, [sp], #0x10
  10011b6b4  b       _objc_autoreleaseReturnValue
loc_10011b6b8:
  10011b6b8  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_10011b6bc
; address 0x10011b6bc  size 8  kind sub
; ======================================================================
  10011b6bc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011b6c0  b       _objc_retain

; ======================================================================
; sub_10011b6c4
; address 0x10011b6c4  size 8  kind sub
; ======================================================================
  10011b6c4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011b6c8  b       _objc_release

; ======================================================================
; -[GAIDataStore save:]
; address 0x10011b6cc  size 164  kind objc
; ======================================================================
  10011b6cc  stp     x29, x30, [sp, #-0x10]!
  10011b6d0  mov     x29, sp
  10011b6d4  stp     x20, x19, [sp, #-0x10]!
  10011b6d8  sub     sp, sp, #0x30
  10011b6dc  mov     x19, x2
  10011b6e0  adrp    x8, #0x1003b0000
  10011b6e4  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10011b6e8  str     x8, [sp, #8]
  10011b6ec  mov     w8, #-0x3e000000
  10011b6f0  stp     w8, wzr, [sp, #0x10]
  10011b6f4  adr     x8, #0x10011b770                         ; &-[GAIDataStore save:]_block_invoke
  10011b6f8  nop
  10011b6fc  str     x8, [sp, #0x18]
  10011b700  adrp    x8, #0x1003b8000
  10011b704  add     x8, x8, #0xf0                            ; &d_1003b80f0
  10011b708  str     x8, [sp, #0x20]
  10011b70c  bl      _objc_retain
  10011b710  str     x0, [sp, #0x28]
  10011b714  adrp    x8, #0x10041b000
  10011b718  nop
  10011b71c  ldr     x1, [x8, #0xf58]
  10011b720  add     x2, sp, #8
  10011b724  mov     x3, x19
  10011b728  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore save:]_block_invoke captures +0x20=self} withError:arg1]
  10011b72c  mov     x29, x29
  10011b730  bl      _objc_retainAutoreleasedReturnValue
  10011b734  mov     x19, x0
  10011b738  adrp    x8, #0x100417000
  10011b73c  nop
  10011b740  ldr     x1, [x8, #0xd8]
  10011b744  bl      _objc_msgSend                            ; [[self performBlockAndWait:^{-[GAIDataStore save:]_block_invoke captures +0x20=self} withError:arg1] boolValue]
  10011b748  mov     x20, x0
  10011b74c  mov     x0, x19
  10011b750  bl      _objc_release
  10011b754  ldr     x0, [sp, #0x28]
  10011b758  bl      _objc_release
  10011b75c  mov     x0, x20
  10011b760  sub     sp, x29, #0x10
  10011b764  ldp     x20, x19, [sp], #0x10
  10011b768  ldp     x29, x30, [sp], #0x10
  10011b76c  ret

; ======================================================================
; -[GAIDataStore save:]_block_invoke
; address 0x10011b770  size 392  kind block
; ======================================================================
  10011b770  stp     x29, x30, [sp, #-0x10]!
  10011b774  mov     x29, sp
  10011b778  stp     x20, x19, [sp, #-0x10]!
  10011b77c  stp     x22, x21, [sp, #-0x10]!
  10011b780  stp     x24, x23, [sp, #-0x10]!
  10011b784  mov     x20, x1
  10011b788  mov     x22, x0
  10011b78c  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  10011b790  adrp    x8, #0x10041b000
  10011b794  nop
  10011b798  ldr     x1, [x8, #0x978]
  10011b79c  bl      _objc_msgSend                            ; [self context]
  10011b7a0  mov     x29, x29
  10011b7a4  bl      _objc_retainAutoreleasedReturnValue
  10011b7a8  mov     x19, x0
  10011b7ac  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  10011b7b0  adrp    x8, #0x10041b000
  10011b7b4  nop
  10011b7b8  ldr     x1, [x8, #0xfb0]
  10011b7bc  bl      _objc_msgSend                            ; [self oldContext]
  10011b7c0  mov     x29, x29
  10011b7c4  bl      _objc_retainAutoreleasedReturnValue
  10011b7c8  mov     x21, x0
  10011b7cc  adrp    x8, #0x10041b000
  10011b7d0  nop
  10011b7d4  ldr     x23, [x8, #0xa00]
  10011b7d8  mov     x0, x19
  10011b7dc  mov     x1, x23
  10011b7e0  bl      _objc_msgSend                            ; [[self context] hasChanges]
  10011b7e4  tbnz    w0, #0, loc_10011b7f8                    ; if (([[self context] hasChanges] & 1))
  10011b7e8  mov     x0, x21
  10011b7ec  mov     x1, x23
  10011b7f0  bl      _objc_msgSend                            ; [[self oldContext] hasChanges]
  10011b7f4  cbz     w0, loc_10011b8a0                        ; if ([[self oldContext] hasChanges] == 0)
loc_10011b7f8:
  10011b7f8  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  10011b7fc  adrp    x8, #0x10041b000
  10011b800  nop
  10011b804  ldr     x1, [x8, #0xa08]
  10011b808  mov     x2, x20
  10011b80c  bl      _objc_msgSend                            ; [self deleteExcessHits:blockarg1]
  10011b810  adrp    x8, #0x10041b000
  10011b814  nop
  10011b818  ldr     x23, [x8, #0xa10]
  10011b81c  mov     x0, x19
  10011b820  mov     x1, x23
  10011b824  mov     x2, x20
  10011b828  bl      _objc_msgSend                            ; [[self context] save:blockarg1]
  10011b82c  mov     x0, x21
  10011b830  mov     x1, x23
  10011b834  mov     x2, x20
  10011b838  bl      _objc_msgSend                            ; [[self oldContext] save:blockarg1]
  10011b83c  ldr     x0, [x22, #0x20]                         ; x0 = captured self
  10011b840  adrp    x8, #0x100420000
  10011b844  ldrsw   x23, [x8, #0x82c]                        ; ivar offset GAIDataStore._currentContext (+0x48)
  10011b848  ldr     x8, [x0, x23]                            ; x8 = self->_currentContext
  10011b84c  adrp    x9, #0x100420000
  10011b850  ldrsw   x24, [x9, #0x840]                        ; ivar offset GAIDataStore._context (+0x40)
  10011b854  ldr     x9, [x0, x24]                            ; x9 = self->_context
  10011b858  cmp     x8, x9
  10011b85c  b.eq    loc_10011b8a0                            ; if (self->_currentContext == self->_context)
  10011b860  adrp    x8, #0x100420000
  10011b864  ldrsw   x8, [x8, #0x844]                         ; ivar offset GAIDataStore._oldContext (+0x38)
  10011b868  ldr     x2, [x0, x8]                             ; x2 = self->_oldContext
  10011b86c  adrp    x8, #0x10041b000
  10011b870  nop
  10011b874  ldr     x1, [x8, #0x9f0]
  10011b878  mov     x3, x20
  10011b87c  bl      _objc_msgSend                            ; [self context:self->_oldContext hitCount:blockarg1]
  10011b880  cbnz    x0, loc_10011b8a0                        ; if ([self context:self->_oldContext hitCount:blockarg1] != 0)
  10011b884  ldr     x22, [x22, #0x20]                        ; x22 = captured self
  10011b888  ldr     x0, [x22, x24]                           ; x0 = self->_context
  10011b88c  bl      _objc_retain
  10011b890  ldr     x8, [x22, x23]                           ; x8 = self->_currentContext
  10011b894  str     x0, [x22, x23]                           ; self->_currentContext = self->_context
  10011b898  mov     x0, x8
  10011b89c  bl      _objc_release
loc_10011b8a0:
  10011b8a0  adrp    x8, #0x10041d000
  10011b8a4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011b8a8  ldr     x8, [x20]                                ; x8 = blockarg1[+0x0]
  10011b8ac  cmp     x8, #0
  10011b8b0  cset    w2, eq
  10011b8b4  adrp    x8, #0x100416000
  10011b8b8  nop
  10011b8bc  ldr     x1, [x8, #0xec0]
  10011b8c0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:(blockarg1[+0x0] == 0)]
  10011b8c4  mov     x29, x29
  10011b8c8  bl      _objc_retainAutoreleasedReturnValue
  10011b8cc  mov     x20, x0
  10011b8d0  mov     x0, x21
  10011b8d4  bl      _objc_release
  10011b8d8  mov     x0, x19
  10011b8dc  bl      _objc_release
  10011b8e0  mov     x0, x20
  10011b8e4  ldp     x24, x23, [sp], #0x10
  10011b8e8  ldp     x22, x21, [sp], #0x10
  10011b8ec  ldp     x20, x19, [sp], #0x10
  10011b8f0  ldp     x29, x30, [sp], #0x10
  10011b8f4  b       _objc_autoreleaseReturnValue

; ======================================================================
; sub_10011b8f8
; address 0x10011b8f8  size 8  kind sub
; ======================================================================
  10011b8f8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011b8fc  b       _objc_retain

; ======================================================================
; sub_10011b900
; address 0x10011b900  size 8  kind sub
; ======================================================================
  10011b900  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011b904  b       _objc_release

; ======================================================================
; -[GAIDataStore init]
; address 0x10011b908  size 384  kind objc
; ======================================================================
  10011b908  stp     x29, x30, [sp, #-0x10]!
  10011b90c  mov     x29, sp
  10011b910  stp     x20, x19, [sp, #-0x10]!
  10011b914  stp     x22, x21, [sp, #-0x10]!
  10011b918  stp     x24, x23, [sp, #-0x10]!
  10011b91c  sub     sp, sp, #0x10
  10011b920  str     x0, [sp]
  10011b924  adrp    x8, #0x10041f000
  10011b928  ldr     x8, [x8, #0xd8]
  10011b92c  str     x8, [sp, #8]
  10011b930  adrp    x8, #0x100416000
  10011b934  nop
  10011b938  ldr     x1, [x8, #0xab8]
  10011b93c  mov     x0, sp
  10011b940  bl      _objc_msgSendSuper2                      ; [super init]
  10011b944  mov     x19, x0
  10011b948  cbz     x19, loc_10011ba6c                       ; if (self == 0)
  10011b94c  adrp    x24, #0x10041d000
  10011b950  ldr     x0, [x24, #0xf60]                        ; class NSNotificationCenter
  10011b954  adrp    x8, #0x100416000
  10011b958  nop
  10011b95c  ldr     x20, [x8, #0xe88]
  10011b960  mov     x1, x20
  10011b964  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10011b968  mov     x29, x29
  10011b96c  bl      _objc_retainAutoreleasedReturnValue
  10011b970  mov     x21, x0
  10011b974  adrp    x8, #0x10041b000
  10011b978  nop
  10011b97c  ldr     x22, [x8, #0xa18]
  10011b980  adrp    x8, #0x1003b0000
  10011b984  ldr     x8, [x8, #0xf0]                          ; _UIApplicationWillResignActiveNotification
  10011b988  ldr     x4, [x8]                                 ; x4 = _UIApplicationWillResignActiveNotification[+0x0]
  10011b98c  adrp    x8, #0x100416000
  10011b990  nop
  10011b994  ldr     x23, [x8, #0xe98]
  10011b998  mov     x5, #0
  10011b99c  mov     x1, x23
  10011b9a0  mov     x2, x19
  10011b9a4  mov     x3, x22
  10011b9a8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onExit:) name:_UIApplicationWillResignActiveNotification[+0x0] object:0]
  10011b9ac  mov     x0, x21
  10011b9b0  bl      _objc_release
  10011b9b4  ldr     x0, [x24, #0xf60]                        ; class NSNotificationCenter
  10011b9b8  mov     x1, x20
  10011b9bc  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10011b9c0  mov     x29, x29
  10011b9c4  bl      _objc_retainAutoreleasedReturnValue
  10011b9c8  mov     x20, x0
  10011b9cc  adrp    x8, #0x1003b0000
  10011b9d0  ldr     x8, [x8, #0xf8]                          ; _UIApplicationWillTerminateNotification
  10011b9d4  ldr     x4, [x8]                                 ; x4 = _UIApplicationWillTerminateNotification[+0x0]
  10011b9d8  mov     x5, #0
  10011b9dc  mov     x1, x23
  10011b9e0  mov     x2, x19
  10011b9e4  mov     x3, x22
  10011b9e8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onExit:) name:_UIApplicationWillTerminateNotification[+0x0] object:0]
  10011b9ec  mov     x0, x20
  10011b9f0  bl      _objc_release
  10011b9f4  adrp    x8, #0x100420000
  10011b9f8  mov     x9, #0x7d0
  10011b9fc  ldrsw   x8, [x8, #0x848]                         ; ivar offset GAIDataStore._maxHitCount (+0x30)
  10011ba00  str     x9, [x19, x8]                            ; self->_maxHitCount = 2000
  10011ba04  adrp    x8, #0x10041c000
  10011ba08  nop
  10011ba0c  ldr     x20, [x8, #0x18]
  10011ba10  adrp    x8, #0x100417000
  10011ba14  nop
  10011ba18  ldr     x1, [x8, #0x2e0]
  10011ba1c  mov     x0, x19
  10011ba20  bl      _objc_msgSend                            ; [self class]
  10011ba24  adrp    x8, #0x10041b000
  10011ba28  nop
  10011ba2c  ldr     x1, [x8, #0xe50]
  10011ba30  bl      _objc_msgSend                            ; [[self class] thread]
  10011ba34  mov     x29, x29
  10011ba38  bl      _objc_retainAutoreleasedReturnValue
  10011ba3c  mov     x21, x0
  10011ba40  adrp    x8, #0x10041b000
  10011ba44  nop
  10011ba48  ldr     x1, [x8, #0xe58]
  10011ba4c  mov     x4, #0
  10011ba50  mov     w5, #0
  10011ba54  mov     x0, x19
  10011ba58  mov     x2, x20
  10011ba5c  mov     x3, x21
  10011ba60  bl      _objc_msgSend                            ; [self performSelector:@selector(setUpCoreData) onThread:[[self class] thread] withObject:0 waitUntilDone:0]
  10011ba64  mov     x0, x21
  10011ba68  bl      _objc_release
loc_10011ba6c:
  10011ba6c  mov     x0, x19
  10011ba70  sub     sp, x29, #0x30
  10011ba74  ldp     x24, x23, [sp], #0x10
  10011ba78  ldp     x22, x21, [sp], #0x10
  10011ba7c  ldp     x20, x19, [sp], #0x10
  10011ba80  ldp     x29, x30, [sp], #0x10
  10011ba84  ret

; ======================================================================
; -[GAIDataStore setUpCoreData]
; address 0x10011ba88  size 1312  kind objc
; ======================================================================
  10011ba88  stp     x29, x30, [sp, #-0x10]!
  10011ba8c  mov     x29, sp
  10011ba90  stp     x20, x19, [sp, #-0x10]!
  10011ba94  stp     x22, x21, [sp, #-0x10]!
  10011ba98  stp     x24, x23, [sp, #-0x10]!
  10011ba9c  stp     x26, x25, [sp, #-0x10]!
  10011baa0  stp     x28, x27, [sp, #-0x10]!
  10011baa4  sub     sp, sp, #0xb0
  10011baa8  mov     x22, x0
  10011baac  adrp    x8, #0x100420000
  10011bab0  ldrsw   x24, [x8, #0x84c]                        ; ivar offset GAIDataStore._setUpCoreData (+0x8)
  10011bab4  ldrb    w8, [x22, x24]                           ; w8 = self->_setUpCoreData
  10011bab8  cbnz    w8, loc_10011bf80                        ; if (self->_setUpCoreData != 0)
  10011babc  adrp    x8, #0x100417000
  10011bac0  nop
  10011bac4  ldr     x20, [x8, #0x2e0]
  10011bac8  mov     x0, x22
  10011bacc  mov     x1, x20
  10011bad0  bl      _objc_msgSend                            ; [self class]
  10011bad4  adrp    x8, #0x10041b000
  10011bad8  nop
  10011badc  ldr     x21, [x8, #0xa20]
  10011bae0  adrp    x2, #0x1003c4000
  10011bae4  add     x2, x2, #0x9f0                           ; @"googleanalytics-v2.sql"
  10011bae8  mov     x1, x21
  10011baec  bl      _objc_msgSend                            ; [[self class] databaseFullURL:@"googleanalytics-v2.sql"]
  10011baf0  mov     x29, x29
  10011baf4  bl      _objc_retainAutoreleasedReturnValue
  10011baf8  mov     x19, x0
  10011bafc  mov     x0, x22
  10011bb00  mov     x1, x20
  10011bb04  bl      _objc_msgSend                            ; [self class]
  10011bb08  adrp    x2, #0x1003c4000
  10011bb0c  add     x2, x2, #0xa10                           ; @"googleanalytics-v3.sql"
  10011bb10  mov     x1, x21
  10011bb14  bl      _objc_msgSend                            ; [[self class] databaseFullURL:@"googleanalytics-v3.sql"]
  10011bb18  mov     x29, x29
  10011bb1c  bl      _objc_retainAutoreleasedReturnValue
  10011bb20  mov     x20, x0
  10011bb24  adrp    x27, #0x10041e000
  10011bb28  ldr     x0, [x27, #0x5f8]                        ; class GAICoreDataUtil
  10011bb2c  adrp    x8, #0x10041c000
  10011bb30  nop
  10011bb34  ldr     x1, [x8, #0x20]
  10011bb38  bl      _objc_msgSend                            ; [GAICoreDataUtil oldModel]
  10011bb3c  mov     x29, x29
  10011bb40  bl      _objc_retainAutoreleasedReturnValue
  10011bb44  mov     x21, x0
  10011bb48  adrp    x8, #0x10041c000
  10011bb4c  nop
  10011bb50  ldr     x23, [x8, #0x28]
  10011bb54  mov     x0, x22
  10011bb58  mov     x1, x23
  10011bb5c  mov     x2, x21
  10011bb60  mov     x3, x19
  10011bb64  bl      _objc_msgSend                            ; [self contextWithModel:[GAICoreDataUtil oldModel] URL:[[self class] databaseFullURL:@"googleanalytics-v2.sql"]]
  10011bb68  mov     x29, x29
  10011bb6c  bl      _objc_retainAutoreleasedReturnValue
  10011bb70  adrp    x8, #0x100420000
  10011bb74  ldrsw   x25, [x8, #0x844]                        ; ivar offset GAIDataStore._oldContext (+0x38)
  10011bb78  ldr     x8, [x22, x25]                           ; x8 = self->_oldContext
  10011bb7c  str     x0, [x22, x25]                           ; self->_oldContext = [self contextWithModel:[GAICoreDataUtil oldModel] URL:[[self class] databaseFullURL:@"googleanalytics-v2.sql"]]
  10011bb80  mov     x0, x8
  10011bb84  bl      _objc_release
  10011bb88  mov     x0, x21
  10011bb8c  bl      _objc_release
  10011bb90  ldr     x0, [x27, #0x5f8]                        ; class GAICoreDataUtil
  10011bb94  adrp    x8, #0x100418000
  10011bb98  nop
  10011bb9c  ldr     x1, [x8, #0x9e8]
  10011bba0  bl      _objc_msgSend                            ; [GAICoreDataUtil model]
  10011bba4  mov     x29, x29
  10011bba8  bl      _objc_retainAutoreleasedReturnValue
  10011bbac  mov     x21, x0
  10011bbb0  mov     x0, x22
  10011bbb4  mov     x1, x23
  10011bbb8  mov     x2, x21
  10011bbbc  mov     x3, x20
  10011bbc0  bl      _objc_msgSend                            ; [self contextWithModel:[GAICoreDataUtil model] URL:[[self class] databaseFullURL:@"googleanalytics-v3.sql"]]
  10011bbc4  mov     x29, x29
  10011bbc8  bl      _objc_retainAutoreleasedReturnValue
  10011bbcc  adrp    x8, #0x100420000
  10011bbd0  ldrsw   x27, [x8, #0x840]                        ; ivar offset GAIDataStore._context (+0x40)
  10011bbd4  ldr     x8, [x22, x27]                           ; x8 = self->_context
  10011bbd8  str     x0, [x22, x27]                           ; self->_context = [self contextWithModel:[GAICoreDataUtil model] URL:[[self class] databaseFullURL:@"googleanalytics-v3.sql"]]
  10011bbdc  mov     x0, x8
  10011bbe0  bl      _objc_release
  10011bbe4  mov     x0, x21
  10011bbe8  bl      _objc_release
  10011bbec  ldr     x0, [x22, x27]                           ; x0 = self->_context
  10011bbf0  adrp    x8, #0x100420000
  10011bbf4  ldrsw   x28, [x8, #0x82c]                        ; ivar offset GAIDataStore._currentContext (+0x48)
  10011bbf8  bl      _objc_retain
  10011bbfc  ldr     x8, [x22, x28]                           ; x8 = self->_currentContext
  10011bc00  str     x0, [x22, x28]                           ; self->_currentContext = self->_context
  10011bc04  mov     x0, x8
  10011bc08  bl      _objc_release
  10011bc0c  ldr     x2, [x22, x25]                           ; x2 = self->_oldContext
  10011bc10  stur    xzr, [x29, #-0x58]
  10011bc14  adrp    x8, #0x10041b000
  10011bc18  nop
  10011bc1c  ldr     x1, [x8, #0x9f0]
  10011bc20  sub     x3, x29, #0x58
  10011bc24  mov     x0, x22
  10011bc28  bl      _objc_msgSend                            ; [self context:self->_oldContext hitCount:&x29[-0x58]]
  10011bc2c  mov     x23, x0
  10011bc30  ldur    x0, [x29, #-0x58]
  10011bc34  bl      _objc_retain
  10011bc38  mov     x21, x0
  10011bc3c  cbz     x23, loc_10011bc90                       ; if ([self context:self->_oldContext hitCount:&x29[-0x58]] == 0)
  10011bc40  ldr     x0, [x22, x25]                           ; x0 = self->_oldContext
  10011bc44  bl      _objc_retain
  10011bc48  ldr     x8, [x22, x28]                           ; x8 = self->_currentContext
  10011bc4c  str     x0, [x22, x28]                           ; self->_currentContext = self->_oldContext
  10011bc50  mov     x0, x8
  10011bc54  bl      _objc_release
  10011bc58  ldr     x2, [x22, x25]                           ; x2 = self->_oldContext
  10011bc5c  stur    x21, [x29, #-0x60]
  10011bc60  adrp    x8, #0x10041c000
  10011bc64  nop
  10011bc68  ldr     x1, [x8, #0x30]
  10011bc6c  sub     x3, x29, #0x60
  10011bc70  mov     x0, x22
  10011bc74  bl      _objc_msgSend                            ; [self context:self->_oldContext removeStaleHits:&x29[-0x60]]
  10011bc78  ldur    x0, [x29, #-0x60]
  10011bc7c  bl      _objc_retain
  10011bc80  mov     x23, x0
  10011bc84  mov     x0, x21
  10011bc88  bl      _objc_release
  10011bc8c  mov     x21, x23
loc_10011bc90:
  10011bc90  adrp    x8, #0x10041c000
  10011bc94  nop
  10011bc98  ldr     x1, [x8, #0x38]
  10011bc9c  mov     x0, x22
  10011bca0  bl      _objc_msgSend                            ; [self fetchClientId]
  10011bca4  mov     x29, x29
  10011bca8  bl      _objc_retainAutoreleasedReturnValue
  10011bcac  mov     x23, x0
  10011bcb0  adrp    x8, #0x100420000
  10011bcb4  ldrsw   x28, [x8, #0x83c]                        ; ivar offset GAIDataStore._clientId (+0x10)
  10011bcb8  ldr     x0, [x22, x28]                           ; x0 = self->_clientId
  10011bcbc  str     x23, [x22, x28]                          ; self->_clientId = [self fetchClientId]
  10011bcc0  bl      _objc_release
  10011bcc4  cbnz    x23, loc_10011bd10                       ; if ([self fetchClientId] != 0)
  10011bcc8  adrp    x8, #0x10041e000
  10011bccc  ldr     x0, [x8, #0x600]                         ; class GAIHitUtil
  10011bcd0  adrp    x8, #0x10041c000
  10011bcd4  nop
  10011bcd8  ldr     x1, [x8, #0x40]
  10011bcdc  bl      _objc_msgSend                            ; [GAIHitUtil generateClientId]
  10011bce0  mov     x29, x29
  10011bce4  bl      _objc_retainAutoreleasedReturnValue
  10011bce8  ldr     x8, [x22, x28]                           ; x8 = self->_clientId
  10011bcec  str     x0, [x22, x28]                           ; self->_clientId = [GAIHitUtil generateClientId]
  10011bcf0  mov     x0, x8
  10011bcf4  bl      _objc_release
  10011bcf8  ldr     x2, [x22, x28]                           ; x2 = self->_clientId
  10011bcfc  adrp    x8, #0x10041c000
  10011bd00  nop
  10011bd04  ldr     x1, [x8, #0x48]
  10011bd08  mov     x0, x22
  10011bd0c  bl      _objc_msgSend                            ; [self setClientId:self->_clientId]
loc_10011bd10:
  10011bd10  adrp    x28, #0x1003b0000
  10011bd14  ldr     x28, [x28, #0x118]                       ; __NSConcreteStackBlock
  10011bd18  mov     w26, #-0x3e000000
  10011bd1c  str     x28, [sp, #0x78]
  10011bd20  stp     w26, wzr, [sp, #0x80]
  10011bd24  adr     x8, #0x10011bfa8                         ; &-[GAIDataStore setUpCoreData]_block_invoke
  10011bd28  nop
  10011bd2c  str     x8, [sp, #0x88]
  10011bd30  adrp    x8, #0x1003b8000
  10011bd34  add     x8, x8, #0x120                           ; &d_1003b8120
  10011bd38  str     x8, [sp, #0x90]
  10011bd3c  mov     x0, x22
  10011bd40  bl      _objc_retain
  10011bd44  mov     x22, x0
  10011bd48  str     x22, [sp, #0x98]
  10011bd4c  adrp    x8, #0x10041b000
  10011bd50  nop
  10011bd54  ldr     x23, [x8, #0xf58]
  10011bd58  mov     x3, #0
  10011bd5c  add     x2, sp, #0x78
  10011bd60  mov     x1, x23
  10011bd64  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setUpCoreData]_block_invoke captures +0x20=self} withError:0]
  10011bd68  mov     x29, x29
  10011bd6c  bl      _objc_retainAutoreleasedReturnValue
  10011bd70  adrp    x8, #0x100420000
  10011bd74  ldrsw   x9, [x8, #0x838]                         ; ivar offset GAIDataStore._hashedIdfa (+0x18)
  10011bd78  ldr     x8, [x22, x9]                            ; x8 = self->_hashedIdfa
  10011bd7c  str     x0, [x22, x9]                            ; self->_hashedIdfa = [self performBlockAndWait:^{-[GAIDataStore setUpCoreData]_block_invoke captures +0x20=self} withError:0]
  10011bd80  mov     x0, x8
  10011bd84  bl      _objc_release
  10011bd88  str     x28, [sp, #0x50]
  10011bd8c  stp     w26, wzr, [sp, #0x58]
  10011bd90  adr     x8, #0x10011c0d0                         ; &-[GAIDataStore setUpCoreData]_block_invoke_2
  10011bd94  nop
  10011bd98  str     x8, [sp, #0x60]
  10011bd9c  adrp    x8, #0x1003b8000
  10011bda0  add     x8, x8, #0x150                           ; &d_1003b8150
  10011bda4  str     x8, [sp, #0x68]
  10011bda8  mov     x0, x22
  10011bdac  bl      _objc_retain
  10011bdb0  mov     x22, x0
  10011bdb4  str     x22, [sp, #0x70]
  10011bdb8  mov     x3, #0
  10011bdbc  add     x2, sp, #0x50
  10011bdc0  mov     x1, x23
  10011bdc4  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setUpCoreData]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[GAIDataStore setUpCoreData]_block_inv…, +0x40=&d_1003b8120, +0x48=self} withError:0]
  10011bdc8  mov     x29, x29
  10011bdcc  bl      _objc_retainAutoreleasedReturnValue
  10011bdd0  adrp    x8, #0x100420000
  10011bdd4  ldrsw   x9, [x8, #0x834]                         ; ivar offset GAIDataStore._idfaChangeCount (+0x28)
  10011bdd8  ldr     x8, [x22, x9]                            ; x8 = self->_idfaChangeCount
  10011bddc  str     x0, [x22, x9]                            ; self->_idfaChangeCount = [self performBlockAndWait:^{-[GAIDataStore setUpCoreData]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[GAIDataStore setUpCoreData]_block_inv…, +0x40=&d_1003b8120, +0x48=self} withError:0]
  10011bde0  mov     x0, x8
  10011bde4  bl      _objc_release
  10011bde8  str     x28, [sp, #0x28]
  10011bdec  stp     w26, wzr, [sp, #0x30]
  10011bdf0  adr     x8, #0x10011c220                         ; &-[GAIDataStore setUpCoreData]_block_invoke_3
  10011bdf4  nop
  10011bdf8  str     x8, [sp, #0x38]
  10011bdfc  adrp    x8, #0x1003b8000
  10011be00  add     x8, x8, #0x180                           ; &d_1003b8180
  10011be04  str     x8, [sp, #0x40]
  10011be08  mov     x0, x22
  10011be0c  bl      _objc_retain
  10011be10  mov     x22, x0
  10011be14  str     x22, [sp, #0x48]
  10011be18  mov     x3, #0
  10011be1c  add     x2, sp, #0x28
  10011be20  mov     x1, x23
  10011be24  bl      _objc_msgSend                            ; [self performBlockAndWait:^{-[GAIDataStore setUpCoreData]_block_invoke_3 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[GAIDataStore setUpCoreData]_block_inv…, +0x40=&d_1003b8150, +0x48=self, +0x50=__NSConcreteStackBlock, +0x58=0xc2000000, +0x60=&-[GAIDataStore setUpCoreData]_block_inv…, +0x68=&d_1003b8120, +0x70=self} withError:0]
  10011be28  mov     x29, x29
  10011be2c  bl      _objc_retainAutoreleasedReturnValue
  10011be30  adrp    x8, #0x100420000
  10011be34  ldrsw   x9, [x8, #0x830]                         ; ivar offset GAIDataStore._lastChangeTimeStamp (+0x20)
  10011be38  ldr     x8, [x22, x9]                            ; x8 = self->_lastChangeTimeStamp
  10011be3c  str     x0, [x22, x9]                            ; self->_lastChangeTimeStamp = [self performBlockAndWait:^{-[GAIDataStore setUpCoreData]_block_invoke_3 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[GAIDataStore setUpCoreData]_block_inv…, +0x40=&d_1003b8150, +0x48=self, +0x50=__NSConcreteStackBlock, +0x58=0xc2000000, +0x60=&-[GAIDataStore setUpCoreData]_block_inv…, +0x68=&d_1003b8120, +0x70=self} withError:0]
  10011be40  mov     x0, x8
  10011be44  bl      _objc_release
  10011be48  ldr     x8, [x22, x27]                           ; x8 = self->_context
  10011be4c  cbz     x8, loc_10011be68                        ; if (self->_context == 0)
  10011be50  ldr     x8, [x22, x25]                           ; x8 = self->_oldContext
  10011be54  cmp     x8, #0
  10011be58  cset    w9, ne
  10011be5c  strb    w9, [x22, x24]                           ; self->_setUpCoreData = (self->_oldContext != 0)
  10011be60  cbnz    x8, loc_10011bf44                        ; if (self->_oldContext != 0)
  10011be64  b       loc_10011be6c
loc_10011be68:
  10011be68  strb    wzr, [x22, x24]                          ; self->_setUpCoreData = 0
loc_10011be6c:
  10011be6c  adrp    x8, #0x10041d000
  10011be70  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10011be74  adrp    x8, #0x10041b000
  10011be78  nop
  10011be7c  ldr     x1, [x8, #0xdc8]
  10011be80  bl      _objc_msgSend                            ; [GAI sharedLogger]
  10011be84  mov     x29, x29
  10011be88  bl      _objc_retainAutoreleasedReturnValue
  10011be8c  mov     x23, x0
  10011be90  adrp    x8, #0x10041d000
  10011be94  ldr     x24, [x8, #0xf78]                        ; class NSString
  10011be98  adrp    x8, #0x1003b7000
  10011be9c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10011bea0  ldr     x26, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10011bea4  adrp    x8, #0x1003b7000
  10011bea8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10011beac  ldr     x27, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  10011beb0  adrp    x8, #0x10041b000
  10011beb4  nop
  10011beb8  ldr     x1, [x8, #0x580]
  10011bebc  adrp    x0, #0x1003c4000
  10011bec0  add     x0, x0, #0xb70                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10011bec4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10011bec8  mov     x29, x29
  10011becc  bl      _objc_retainAutoreleasedReturnValue
  10011bed0  mov     x25, x0
  10011bed4  adrp    x8, #0x100416000
  10011bed8  nop
  10011bedc  ldr     x1, [x8, #0xee8]
  10011bee0  mov     x8, #0x22f
  10011bee4  adrp    x9, #0x100390000
  10011bee8  add     x9, x9, #0x474                           ; "-[GAIDataStore setUpCoreData]"
  10011beec  stp     x25, x8, [sp, #0x18]
  10011bef0  stp     x27, x9, [sp, #8]
  10011bef4  str     x26, [sp]
  10011bef8  adrp    x2, #0x1003c4000
  10011befc  add     x2, x2, #0xd10                           ; @"%@ %@ %s (%@:%d): Can not setup Core Data stack"
  10011bf00  mov     x0, x24
  10011bf04  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Can not setup Core Data stack", @"GoogleAnalytics", @"3.09", "-[GAIDataStore setUpCoreData]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 559]
  10011bf08  mov     x29, x29
  10011bf0c  bl      _objc_retainAutoreleasedReturnValue
  10011bf10  mov     x24, x0
  10011bf14  adrp    x8, #0x10041b000
  10011bf18  nop
  10011bf1c  ldr     x1, [x8, #0xdd0]
  10011bf20  mov     x0, x23
  10011bf24  mov     x2, x24
  10011bf28  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Can not setup Core Data stack", @"GoogleAnalytics", @"3.09", "-[GAIDataStore setUpCoreData]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 559]]
  10011bf2c  mov     x0, x24
  10011bf30  bl      _objc_release
  10011bf34  mov     x0, x25
  10011bf38  bl      _objc_release
  10011bf3c  mov     x0, x23
  10011bf40  bl      _objc_release
loc_10011bf44:
  10011bf44  ldr     x0, [sp, #0x48]
  10011bf48  bl      _objc_release
  10011bf4c  ldr     x0, [sp, #0x70]
  10011bf50  bl      _objc_release
  10011bf54  ldr     x0, [sp, #0x98]
  10011bf58  bl      _objc_release
  10011bf5c  mov     x0, x20
  10011bf60  bl      _objc_release
  10011bf64  mov     x0, x19
  10011bf68  bl      _objc_release
  10011bf6c  mov     x0, x21
  10011bf70  bl      _objc_release
  10011bf74  adrp    x8, #0x100420000
  10011bf78  ldrsw   x8, [x8, #0x84c]                         ; ivar offset GAIDataStore._setUpCoreData (+0x8)
  10011bf7c  ldrb    w8, [x22, x8]                            ; w8 = self->_setUpCoreData
loc_10011bf80:
  10011bf80  cmp     w8, #0
  10011bf84  cset    w0, ne
  10011bf88  sub     sp, x29, #0x50
  10011bf8c  ldp     x28, x27, [sp], #0x10
  10011bf90  ldp     x26, x25, [sp], #0x10
  10011bf94  ldp     x24, x23, [sp], #0x10
  10011bf98  ldp     x22, x21, [sp], #0x10
  10011bf9c  ldp     x20, x19, [sp], #0x10
  10011bfa0  ldp     x29, x30, [sp], #0x10
  10011bfa4  ret

; ======================================================================
; -[GAIDataStore setUpCoreData]_block_invoke
; address 0x10011bfa8  size 280  kind block
; ======================================================================
  10011bfa8  stp     x29, x30, [sp, #-0x10]!
  10011bfac  mov     x29, sp
  10011bfb0  stp     x20, x19, [sp, #-0x10]!
  10011bfb4  stp     x22, x21, [sp, #-0x10]!
  10011bfb8  stp     x24, x23, [sp, #-0x10]!
  10011bfbc  mov     x20, x0
  10011bfc0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011bfc4  adrp    x8, #0x10041b000
  10011bfc8  nop
  10011bfcc  ldr     x1, [x8, #0xfb0]
  10011bfd0  bl      _objc_msgSend                            ; [self oldContext]
  10011bfd4  mov     x29, x29
  10011bfd8  bl      _objc_retainAutoreleasedReturnValue
  10011bfdc  mov     x19, x0
  10011bfe0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011bfe4  adrp    x8, #0x10041b000
  10011bfe8  nop
  10011bfec  ldr     x1, [x8, #0xfb8]
  10011bff0  adrp    x2, #0x1003c4000
  10011bff4  add     x2, x2, #0xcb0                           ; @"idfa"
  10011bff8  bl      _objc_msgSend                            ; [self requestPropertyWithName:@"idfa"]
  10011bffc  mov     x29, x29
  10011c000  bl      _objc_retainAutoreleasedReturnValue
  10011c004  mov     x20, x0
  10011c008  adrp    x8, #0x10041b000
  10011c00c  nop
  10011c010  ldr     x1, [x8, #0x9a0]
  10011c014  mov     x3, #0
  10011c018  mov     x0, x19
  10011c01c  mov     x2, x20
  10011c020  bl      _objc_msgSend                            ; [[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"idfa"] error:0]
  10011c024  mov     x29, x29
  10011c028  bl      _objc_retainAutoreleasedReturnValue
  10011c02c  mov     x21, x0
  10011c030  adrp    x8, #0x100416000
  10011c034  nop
  10011c038  ldr     x1, [x8, #0xe30]
  10011c03c  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"idfa"] error:0] count]
  10011c040  mov     x22, #0
  10011c044  cbz     x0, loc_10011c090                        ; if ([[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"idfa"] error:0] count] == 0)
  10011c048  adrp    x8, #0x10041b000
  10011c04c  nop
  10011c050  ldr     x1, [x8, #0xf28]
  10011c054  mov     x2, #0
  10011c058  mov     x0, x21
  10011c05c  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"idfa"] error:0] objectAtIndexedSubscript:0]
  10011c060  mov     x29, x29
  10011c064  bl      _objc_retainAutoreleasedReturnValue
  10011c068  mov     x23, x0
  10011c06c  adrp    x8, #0x10041b000
  10011c070  nop
  10011c074  ldr     x1, [x8, #0x1f0]
  10011c078  bl      _objc_msgSend                            ; [[[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"idfa"] error:0] objectAtIndexedSubscript:0] string]
  10011c07c  mov     x29, x29
  10011c080  bl      _objc_retainAutoreleasedReturnValue
  10011c084  mov     x22, x0
  10011c088  mov     x0, x23
  10011c08c  bl      _objc_release
loc_10011c090:
  10011c090  mov     x0, x21
  10011c094  bl      _objc_release
  10011c098  mov     x0, x20
  10011c09c  bl      _objc_release
  10011c0a0  mov     x0, x19
  10011c0a4  bl      _objc_release
  10011c0a8  mov     x0, x22
  10011c0ac  ldp     x24, x23, [sp], #0x10
  10011c0b0  ldp     x22, x21, [sp], #0x10
  10011c0b4  ldp     x20, x19, [sp], #0x10
  10011c0b8  ldp     x29, x30, [sp], #0x10
  10011c0bc  b       _objc_autoreleaseReturnValue

; ======================================================================
; sub_10011c0c0
; address 0x10011c0c0  size 8  kind sub
; ======================================================================
  10011c0c0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011c0c4  b       _objc_retain

; ======================================================================
; sub_10011c0c8
; address 0x10011c0c8  size 8  kind sub
; ======================================================================
  10011c0c8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011c0cc  b       _objc_release

; ======================================================================
; -[GAIDataStore setUpCoreData]_block_invoke_2
; address 0x10011c0d0  size 320  kind block
; ======================================================================
  10011c0d0  stp     x29, x30, [sp, #-0x10]!
  10011c0d4  mov     x29, sp
  10011c0d8  stp     x20, x19, [sp, #-0x10]!
  10011c0dc  stp     x22, x21, [sp, #-0x10]!
  10011c0e0  stp     x24, x23, [sp, #-0x10]!
  10011c0e4  mov     x20, x0
  10011c0e8  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011c0ec  adrp    x8, #0x10041b000
  10011c0f0  nop
  10011c0f4  ldr     x1, [x8, #0xfb0]
  10011c0f8  bl      _objc_msgSend                            ; [self oldContext]
  10011c0fc  mov     x29, x29
  10011c100  bl      _objc_retainAutoreleasedReturnValue
  10011c104  mov     x19, x0
  10011c108  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011c10c  adrp    x8, #0x10041b000
  10011c110  nop
  10011c114  ldr     x1, [x8, #0xfb8]
  10011c118  adrp    x2, #0x1003c4000
  10011c11c  add     x2, x2, #0xcf0                           ; @"numChanges"
  10011c120  bl      _objc_msgSend                            ; [self requestPropertyWithName:@"numChanges"]
  10011c124  mov     x29, x29
  10011c128  bl      _objc_retainAutoreleasedReturnValue
  10011c12c  mov     x20, x0
  10011c130  adrp    x8, #0x10041b000
  10011c134  nop
  10011c138  ldr     x1, [x8, #0x9a0]
  10011c13c  mov     x3, #0
  10011c140  mov     x0, x19
  10011c144  mov     x2, x20
  10011c148  bl      _objc_msgSend                            ; [[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"numChanges"] error:0]
  10011c14c  mov     x29, x29
  10011c150  bl      _objc_retainAutoreleasedReturnValue
  10011c154  mov     x21, x0
  10011c158  adrp    x8, #0x100416000
  10011c15c  nop
  10011c160  ldr     x1, [x8, #0xe30]
  10011c164  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"numChanges"] error:0] count]
  10011c168  cbz     x0, loc_10011c1b8                        ; if ([[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"numChanges"] error:0] count] == 0)
  10011c16c  adrp    x8, #0x10041b000
  10011c170  nop
  10011c174  ldr     x1, [x8, #0xf28]
  10011c178  mov     x2, #0
  10011c17c  mov     x0, x21
  10011c180  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"numChanges"] error:0] objectAtIndexedSubscript:0]
  10011c184  mov     x29, x29
  10011c188  bl      _objc_retainAutoreleasedReturnValue
  10011c18c  mov     x23, x0
  10011c190  adrp    x8, #0x10041c000
  10011c194  nop
  10011c198  ldr     x1, [x8, #0x50]
  10011c19c  bl      _objc_msgSend                            ; [[[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"numChanges"] error:0] objectAtIndexedSubscript:0] number]
  10011c1a0  mov     x29, x29
  10011c1a4  bl      _objc_retainAutoreleasedReturnValue
  10011c1a8  mov     x22, x0
  10011c1ac  mov     x0, x23
  10011c1b0  bl      _objc_release
  10011c1b4  b       loc_10011c1e0
loc_10011c1b8:
  10011c1b8  adrp    x8, #0x10041d000
  10011c1bc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011c1c0  adrp    x8, #0x100416000
  10011c1c4  nop
  10011c1c8  ldr     x1, [x8, #0xec0]
  10011c1cc  mov     w2, #0
  10011c1d0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  10011c1d4  mov     x29, x29
  10011c1d8  bl      _objc_retainAutoreleasedReturnValue
  10011c1dc  mov     x22, x0
loc_10011c1e0:
  10011c1e0  mov     x0, x21
  10011c1e4  bl      _objc_release
  10011c1e8  mov     x0, x20
  10011c1ec  bl      _objc_release
  10011c1f0  mov     x0, x19
  10011c1f4  bl      _objc_release
  10011c1f8  mov     x0, x22
  10011c1fc  ldp     x24, x23, [sp], #0x10
  10011c200  ldp     x22, x21, [sp], #0x10
  10011c204  ldp     x20, x19, [sp], #0x10
  10011c208  ldp     x29, x30, [sp], #0x10
  10011c20c  b       _objc_autoreleaseReturnValue

; ======================================================================
; sub_10011c210
; address 0x10011c210  size 8  kind sub
; ======================================================================
  10011c210  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011c214  b       _objc_retain

; ======================================================================
; sub_10011c218
; address 0x10011c218  size 8  kind sub
; ======================================================================
  10011c218  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011c21c  b       _objc_release

; ======================================================================
; -[GAIDataStore setUpCoreData]_block_invoke_3
; address 0x10011c220  size 320  kind block
; ======================================================================
  10011c220  stp     x29, x30, [sp, #-0x10]!
  10011c224  mov     x29, sp
  10011c228  stp     x20, x19, [sp, #-0x10]!
  10011c22c  stp     x22, x21, [sp, #-0x10]!
  10011c230  stp     x24, x23, [sp, #-0x10]!
  10011c234  mov     x20, x0
  10011c238  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011c23c  adrp    x8, #0x10041b000
  10011c240  nop
  10011c244  ldr     x1, [x8, #0xfb0]
  10011c248  bl      _objc_msgSend                            ; [self oldContext]
  10011c24c  mov     x29, x29
  10011c250  bl      _objc_retainAutoreleasedReturnValue
  10011c254  mov     x19, x0
  10011c258  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10011c25c  adrp    x8, #0x10041b000
  10011c260  nop
  10011c264  ldr     x1, [x8, #0xfb8]
  10011c268  adrp    x2, #0x1003c4000
  10011c26c  add     x2, x2, #0xcd0                           ; @"changeTS"
  10011c270  bl      _objc_msgSend                            ; [self requestPropertyWithName:@"changeTS"]
  10011c274  mov     x29, x29
  10011c278  bl      _objc_retainAutoreleasedReturnValue
  10011c27c  mov     x20, x0
  10011c280  adrp    x8, #0x10041b000
  10011c284  nop
  10011c288  ldr     x1, [x8, #0x9a0]
  10011c28c  mov     x3, #0
  10011c290  mov     x0, x19
  10011c294  mov     x2, x20
  10011c298  bl      _objc_msgSend                            ; [[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"changeTS"] error:0]
  10011c29c  mov     x29, x29
  10011c2a0  bl      _objc_retainAutoreleasedReturnValue
  10011c2a4  mov     x21, x0
  10011c2a8  adrp    x8, #0x100416000
  10011c2ac  nop
  10011c2b0  ldr     x1, [x8, #0xe30]
  10011c2b4  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"changeTS"] error:0] count]
  10011c2b8  cbz     x0, loc_10011c308                        ; if ([[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"changeTS"] error:0] count] == 0)
  10011c2bc  adrp    x8, #0x10041b000
  10011c2c0  nop
  10011c2c4  ldr     x1, [x8, #0xf28]
  10011c2c8  mov     x2, #0
  10011c2cc  mov     x0, x21
  10011c2d0  bl      _objc_msgSend                            ; [[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"changeTS"] error:0] objectAtIndexedSubscript:0]
  10011c2d4  mov     x29, x29
  10011c2d8  bl      _objc_retainAutoreleasedReturnValue
  10011c2dc  mov     x23, x0
  10011c2e0  adrp    x8, #0x10041c000
  10011c2e4  nop
  10011c2e8  ldr     x1, [x8, #0x50]
  10011c2ec  bl      _objc_msgSend                            ; [[[[self oldContext] executeFetchRequest:[self requestPropertyWithName:@"changeTS"] error:0] objectAtIndexedSubscript:0] number]
  10011c2f0  mov     x29, x29
  10011c2f4  bl      _objc_retainAutoreleasedReturnValue
  10011c2f8  mov     x22, x0
  10011c2fc  mov     x0, x23
  10011c300  bl      _objc_release
  10011c304  b       loc_10011c330
loc_10011c308:
  10011c308  adrp    x8, #0x10041d000
  10011c30c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10011c310  adrp    x8, #0x100416000
  10011c314  nop
  10011c318  ldr     x1, [x8, #0xec0]
  10011c31c  mov     w2, #0
  10011c320  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  10011c324  mov     x29, x29
  10011c328  bl      _objc_retainAutoreleasedReturnValue
  10011c32c  mov     x22, x0
loc_10011c330:
  10011c330  mov     x0, x21
  10011c334  bl      _objc_release
  10011c338  mov     x0, x20
  10011c33c  bl      _objc_release
  10011c340  mov     x0, x19
  10011c344  bl      _objc_release
  10011c348  mov     x0, x22
  10011c34c  ldp     x24, x23, [sp], #0x10
  10011c350  ldp     x22, x21, [sp], #0x10
  10011c354  ldp     x20, x19, [sp], #0x10
  10011c358  ldp     x29, x30, [sp], #0x10
  10011c35c  b       _objc_autoreleaseReturnValue

; ======================================================================
; sub_10011c360
; address 0x10011c360  size 8  kind sub
; ======================================================================
  10011c360  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10011c364  b       _objc_retain

; ======================================================================
; sub_10011c368
; address 0x10011c368  size 8  kind sub
; ======================================================================
  10011c368  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10011c36c  b       _objc_release

; ======================================================================
; -[GAIDataStore onExit:]
; address 0x10011c370  size 20  kind objc
; ======================================================================
  10011c370  mov     x2, #0
  10011c374  adrp    x8, #0x10041b000
  10011c378  nop
  10011c37c  ldr     x1, [x8, #0xa10]
  10011c380  b       _objc_msgSend                            ; [self save:0]

; ======================================================================
; -[GAIDataStore dealloc]
; address 0x10011c384  size 136  kind objc
; ======================================================================
  10011c384  stp     x29, x30, [sp, #-0x10]!
  10011c388  mov     x29, sp
  10011c38c  stp     x20, x19, [sp, #-0x10]!
  10011c390  sub     sp, sp, #0x10
  10011c394  mov     x19, x0
  10011c398  adrp    x8, #0x10041d000
  10011c39c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10011c3a0  adrp    x8, #0x100416000
  10011c3a4  nop
  10011c3a8  ldr     x1, [x8, #0xe88]
  10011c3ac  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10011c3b0  mov     x29, x29
  10011c3b4  bl      _objc_retainAutoreleasedReturnValue
  10011c3b8  mov     x20, x0
  10011c3bc  adrp    x8, #0x100418000
  10011c3c0  nop
  10011c3c4  ldr     x1, [x8, #0x328]
  10011c3c8  mov     x2, x19
  10011c3cc  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  10011c3d0  mov     x0, x20
  10011c3d4  bl      _objc_release
  10011c3d8  str     x19, [sp]
  10011c3dc  adrp    x8, #0x10041f000
  10011c3e0  ldr     x8, [x8, #0xd8]
  10011c3e4  str     x8, [sp, #8]
  10011c3e8  adrp    x8, #0x100416000
  10011c3ec  nop
  10011c3f0  ldr     x1, [x8, #0xfc8]
  10011c3f4  mov     x0, sp
  10011c3f8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10011c3fc  sub     sp, x29, #0x10
  10011c400  ldp     x20, x19, [sp], #0x10
  10011c404  ldp     x29, x30, [sp], #0x10
  10011c408  ret

; ======================================================================
; +[GAIDataStore dataStore]
; address 0x10011c40c  size 48  kind objc
; ======================================================================
  10011c40c  stp     x29, x30, [sp, #-0x10]!
  10011c410  mov     x29, sp
  10011c414  adrp    x8, #0x100416000
  10011c418  nop
  10011c41c  ldr     x1, [x8, #0xac8]
  10011c420  bl      _objc_msgSend                            ; [GAIDataStore alloc]
  10011c424  adrp    x8, #0x100416000
  10011c428  nop
  10011c42c  ldr     x1, [x8, #0xab8]
  10011c430  bl      _objc_msgSend                            ; [[GAIDataStore alloc] init]
  10011c434  ldp     x29, x30, [sp], #0x10
  10011c438  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIDataStore maxHitCount]
; address 0x10011c43c  size 16  kind objc
; ======================================================================
  10011c43c  adrp    x8, #0x100420000
  10011c440  ldrsw   x8, [x8, #0x848]                         ; ivar offset GAIDataStore._maxHitCount (+0x30)
  10011c444  ldr     x0, [x0, x8]                             ; x0 = self->_maxHitCount
  10011c448  ret

; ======================================================================
; -[GAIDataStore setMaxHitCount:]
; address 0x10011c44c  size 16  kind objc
; ======================================================================
  10011c44c  adrp    x8, #0x100420000
  10011c450  ldrsw   x8, [x8, #0x848]                         ; ivar offset GAIDataStore._maxHitCount (+0x30)
  10011c454  str     x2, [x0, x8]                             ; self->_maxHitCount = arg1
  10011c458  ret

; ======================================================================
; -[GAIDataStore oldContext]
; address 0x10011c45c  size 16  kind objc
; ======================================================================
  10011c45c  adrp    x8, #0x100420000
  10011c460  ldrsw   x8, [x8, #0x844]                         ; ivar offset GAIDataStore._oldContext (+0x38)
  10011c464  ldr     x0, [x0, x8]                             ; x0 = self->_oldContext
  10011c468  ret

; ======================================================================
; -[GAIDataStore setOldContext:]
; address 0x10011c46c  size 56  kind objc
; ======================================================================
  10011c46c  stp     x29, x30, [sp, #-0x10]!
  10011c470  mov     x29, sp
  10011c474  stp     x20, x19, [sp, #-0x10]!
  10011c478  mov     x19, x0
  10011c47c  adrp    x8, #0x100420000
  10011c480  ldrsw   x20, [x8, #0x844]                        ; ivar offset GAIDataStore._oldContext (+0x38)
  10011c484  mov     x0, x2
  10011c488  bl      _objc_retain
  10011c48c  ldr     x8, [x19, x20]                           ; x8 = self->_oldContext
  10011c490  str     x0, [x19, x20]                           ; self->_oldContext = arg1
  10011c494  mov     x0, x8
  10011c498  ldp     x20, x19, [sp], #0x10
  10011c49c  ldp     x29, x30, [sp], #0x10
  10011c4a0  b       _objc_release

; ======================================================================
; -[GAIDataStore context]
; address 0x10011c4a4  size 16  kind objc
; ======================================================================
  10011c4a4  adrp    x8, #0x100420000
  10011c4a8  ldrsw   x8, [x8, #0x840]                         ; ivar offset GAIDataStore._context (+0x40)
  10011c4ac  ldr     x0, [x0, x8]                             ; x0 = self->_context
  10011c4b0  ret

; ======================================================================
; -[GAIDataStore setContext:]
; address 0x10011c4b4  size 56  kind objc
; ======================================================================
  10011c4b4  stp     x29, x30, [sp, #-0x10]!
  10011c4b8  mov     x29, sp
  10011c4bc  stp     x20, x19, [sp, #-0x10]!
  10011c4c0  mov     x19, x0
  10011c4c4  adrp    x8, #0x100420000
  10011c4c8  ldrsw   x20, [x8, #0x840]                        ; ivar offset GAIDataStore._context (+0x40)
  10011c4cc  mov     x0, x2
  10011c4d0  bl      _objc_retain
  10011c4d4  ldr     x8, [x19, x20]                           ; x8 = self->_context
  10011c4d8  str     x0, [x19, x20]                           ; self->_context = arg1
  10011c4dc  mov     x0, x8
  10011c4e0  ldp     x20, x19, [sp], #0x10
  10011c4e4  ldp     x29, x30, [sp], #0x10
  10011c4e8  b       _objc_release

; ======================================================================
; -[GAIDataStore currentContext]
; address 0x10011c4ec  size 16  kind objc
; ======================================================================
  10011c4ec  adrp    x8, #0x100420000
  10011c4f0  ldrsw   x8, [x8, #0x82c]                         ; ivar offset GAIDataStore._currentContext (+0x48)
  10011c4f4  ldr     x0, [x0, x8]                             ; x0 = self->_currentContext
  10011c4f8  ret

; ======================================================================
; -[GAIDataStore setCurrentContext:]
; address 0x10011c4fc  size 56  kind objc
; ======================================================================
  10011c4fc  stp     x29, x30, [sp, #-0x10]!
  10011c500  mov     x29, sp
  10011c504  stp     x20, x19, [sp, #-0x10]!
  10011c508  mov     x19, x0
  10011c50c  adrp    x8, #0x100420000
  10011c510  ldrsw   x20, [x8, #0x82c]                        ; ivar offset GAIDataStore._currentContext (+0x48)
  10011c514  mov     x0, x2
  10011c518  bl      _objc_retain
  10011c51c  ldr     x8, [x19, x20]                           ; x8 = self->_currentContext
  10011c520  str     x0, [x19, x20]                           ; self->_currentContext = arg1
  10011c524  mov     x0, x8
  10011c528  ldp     x20, x19, [sp], #0x10
  10011c52c  ldp     x29, x30, [sp], #0x10
  10011c530  b       _objc_release

; ======================================================================
; -[GAIDataStore .cxx_destruct]
; address 0x10011c534  size 164  kind objc
; ======================================================================
  10011c534  stp     x29, x30, [sp, #-0x10]!
  10011c538  mov     x29, sp
  10011c53c  stp     x20, x19, [sp, #-0x10]!
  10011c540  mov     x19, x0
  10011c544  adrp    x8, #0x100420000
  10011c548  ldrsw   x8, [x8, #0x82c]                         ; ivar offset GAIDataStore._currentContext (+0x48)
  10011c54c  add     x0, x19, x8
  10011c550  mov     x1, #0
  10011c554  bl      _objc_storeStrong
  10011c558  adrp    x8, #0x100420000
  10011c55c  ldrsw   x8, [x8, #0x840]                         ; ivar offset GAIDataStore._context (+0x40)
  10011c560  add     x0, x19, x8
  10011c564  mov     x1, #0
  10011c568  bl      _objc_storeStrong
  10011c56c  adrp    x8, #0x100420000
  10011c570  ldrsw   x8, [x8, #0x844]                         ; ivar offset GAIDataStore._oldContext (+0x38)
  10011c574  add     x0, x19, x8
  10011c578  mov     x1, #0
  10011c57c  bl      _objc_storeStrong
  10011c580  adrp    x8, #0x100420000
  10011c584  ldrsw   x8, [x8, #0x834]                         ; ivar offset GAIDataStore._idfaChangeCount (+0x28)
  10011c588  add     x0, x19, x8
  10011c58c  mov     x1, #0
  10011c590  bl      _objc_storeStrong
  10011c594  adrp    x8, #0x100420000
  10011c598  ldrsw   x8, [x8, #0x830]                         ; ivar offset GAIDataStore._lastChangeTimeStamp (+0x20)
  10011c59c  add     x0, x19, x8
  10011c5a0  mov     x1, #0
  10011c5a4  bl      _objc_storeStrong
  10011c5a8  adrp    x8, #0x100420000
  10011c5ac  ldrsw   x8, [x8, #0x838]                         ; ivar offset GAIDataStore._hashedIdfa (+0x18)
  10011c5b0  add     x0, x19, x8
  10011c5b4  mov     x1, #0
  10011c5b8  bl      _objc_storeStrong
  10011c5bc  mov     x1, #0
  10011c5c0  adrp    x8, #0x100420000
  10011c5c4  ldrsw   x8, [x8, #0x83c]                         ; ivar offset GAIDataStore._clientId (+0x10)
  10011c5c8  add     x0, x19, x8
  10011c5cc  ldp     x20, x19, [sp], #0x10
  10011c5d0  ldp     x29, x30, [sp], #0x10
  10011c5d4  b       _objc_storeStrong
