// unit TAGDataLayerPersistentStoreImpl — 52 functions
//   0x10015e5ac     164  -[TAGDataLayerPersistentStoreImpl init]
//   0x10015e650     296  -[TAGDataLayerPersistentStoreImpl initWithDatabaseName:maxNumStoredItems:operationQueue:]
//   0x10015e778     148  -[TAGDataLayerPersistentStoreImpl dealloc]
//   0x10015e80c     348  -[TAGDataLayerPersistentStoreImpl saveKeyValues:lifetimeInMillis:]
//   0x10015e968      28  -[TAGDataLayerPersistentStoreImpl saveKeyValues:lifetimeInMillis:]_block_invoke
//   0x10015e984      40  sub_10015e984
//   0x10015e9ac      40  sub_10015e9ac
//   0x10015e9d4     276  -[TAGDataLayerPersistentStoreImpl loadSaved:]
//   0x10015eae8     104  -[TAGDataLayerPersistentStoreImpl loadSaved:]_block_invoke
//   0x10015eb50      40  sub_10015eb50
//   0x10015eb78      40  sub_10015eb78
//   0x10015eba0     276  -[TAGDataLayerPersistentStoreImpl clearKeysWithPrefix:]
//   0x10015ecb4      24  -[TAGDataLayerPersistentStoreImpl clearKeysWithPrefix:]_block_invoke
//   0x10015eccc      40  sub_10015eccc
//   0x10015ecf4      40  sub_10015ecf4
//   0x10015ed1c     288  -[TAGDataLayerPersistentStoreImpl loadSingleThreaded]
//   0x10015ee3c     260  -[TAGDataLayerPersistentStoreImpl saveSingleThreaded:lifetimeInMillis:]
//   0x10015ef40     580  -[TAGDataLayerPersistentStoreImpl clearKeysWithPrefixSingleThreaded:]
//   0x10015f184     724  -[TAGDataLayerPersistentStoreImpl unserializeValues:]
//   0x10015f458     724  -[TAGDataLayerPersistentStoreImpl serializeValues:]
//   0x10015f72c      48  -[TAGDataLayerPersistentStoreImpl unserialize:]
//   0x10015f75c      48  -[TAGDataLayerPersistentStoreImpl serialize:]
//   0x10015f78c     512  -[TAGDataLayerPersistentStoreImpl loadSerialized]
//   0x10015f98c     908  -[TAGDataLayerPersistentStoreImpl writeEntriesToDatabase:expireTime:]
//   0x10015fd18     328  -[TAGDataLayerPersistentStoreImpl makeRoomForEntries:]
//   0x10015fe60     784  -[TAGDataLayerPersistentStoreImpl deleteEntries:]
//   0x100160170     376  -[TAGDataLayerPersistentStoreImpl peekEntryIds:]
//   0x1001602e8     264  -[TAGDataLayerPersistentStoreImpl numStoredEntries]
//   0x1001603f0     192  -[TAGDataLayerPersistentStoreImpl questionMarks:]
//   0x1001604b0     252  -[TAGDataLayerPersistentStoreImpl deleteEntriesOlderThan:]
//   0x1001605ac     404  -[TAGDataLayerPersistentStoreImpl tablePresent:]
//   0x100160740     364  -[TAGDataLayerPersistentStoreImpl prepareSql:description:]
//   0x1001608ac    1748  -[TAGDataLayerPersistentStoreImpl openDatabaseAndInitStatements]
//   0x100160f80     376  -[TAGDataLayerPersistentStoreImpl closeDatabase]
//   0x1001610f8     128  -[TAGDataLayerPersistentStoreImpl currentTimeInMilliseconds]
//   0x100161178      16  -[TAGDataLayerPersistentStoreImpl databaseName]
//   0x100161188      16  -[TAGDataLayerPersistentStoreImpl maxNumStoredItems]
//   0x100161198      16  -[TAGDataLayerPersistentStoreImpl setMaxNumStoredItems:]
//   0x1001611a8      16  -[TAGDataLayerPersistentStoreImpl operationQueue]
//   0x1001611b8      16  -[TAGDataLayerPersistentStoreImpl database]
//   0x1001611c8      16  -[TAGDataLayerPersistentStoreImpl setDatabase:]
//   0x1001611d8      16  -[TAGDataLayerPersistentStoreImpl insertAnEntryStmt]
//   0x1001611e8      16  -[TAGDataLayerPersistentStoreImpl setInsertAnEntryStmt:]
//   0x1001611f8      16  -[TAGDataLayerPersistentStoreImpl queryNumberEntriesStmt]
//   0x100161208      16  -[TAGDataLayerPersistentStoreImpl setQueryNumberEntriesStmt:]
//   0x100161218      16  -[TAGDataLayerPersistentStoreImpl queryAllEntriesStmt]
//   0x100161228      16  -[TAGDataLayerPersistentStoreImpl setQueryAllEntriesStmt:]
//   0x100161238      16  -[TAGDataLayerPersistentStoreImpl queryEntryIdsStmt]
//   0x100161248      16  -[TAGDataLayerPersistentStoreImpl setQueryEntryIdsStmt:]
//   0x100161258      16  -[TAGDataLayerPersistentStoreImpl deleteOlderThanStmt]
//   0x100161268      16  -[TAGDataLayerPersistentStoreImpl setDeleteOlderThanStmt:]
//   0x100161278      64  -[TAGDataLayerPersistentStoreImpl .cxx_destruct]

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl init]
; address 0x10015e5ac  size 164  kind objc
; ======================================================================
  10015e5ac  stp     x29, x30, [sp, #-0x10]!
  10015e5b0  mov     x29, sp
  10015e5b4  stp     x20, x19, [sp, #-0x10]!
  10015e5b8  stp     x22, x21, [sp, #-0x10]!
  10015e5bc  mov     x19, x0
  10015e5c0  adrp    x8, #0x10041e000
  10015e5c4  ldr     x0, [x8, #0x48]                          ; class NSOperationQueue
  10015e5c8  adrp    x8, #0x100416000
  10015e5cc  nop
  10015e5d0  ldr     x1, [x8, #0xac8]
  10015e5d4  bl      _objc_msgSend                            ; [NSOperationQueue alloc]
  10015e5d8  adrp    x8, #0x100416000
  10015e5dc  nop
  10015e5e0  ldr     x1, [x8, #0xab8]
  10015e5e4  bl      _objc_msgSend                            ; [[NSOperationQueue alloc] init]
  10015e5e8  mov     x20, x0
  10015e5ec  adrp    x8, #0x10041d000
  10015e5f0  nop
  10015e5f4  ldr     x1, [x8, #0x480]
  10015e5f8  adrp    x2, #0x1003c8000
  10015e5fc  add     x2, x2, #0x390                           ; @"google_tagmanager.db"
  10015e600  mov     w3, #0x7d0
  10015e604  mov     x0, x19
  10015e608  mov     x4, x20
  10015e60c  bl      _objc_msgSend                            ; [self initWithDatabaseName:@"google_tagmanager.db" maxNumStoredItems:2000 operationQueue:[[NSOperationQueue alloc] init]]
  10015e610  mov     x19, x0
  10015e614  mov     x0, x20
  10015e618  bl      _objc_release
  10015e61c  mov     x0, x19
  10015e620  ldp     x22, x21, [sp], #0x10
  10015e624  ldp     x20, x19, [sp], #0x10
  10015e628  ldp     x29, x30, [sp], #0x10
  10015e62c  ret
  10015e630  mov     x21, x0
  10015e634  mov     x0, x19
  10015e638  b       loc_10015e644
  10015e63c  mov     x21, x0
  10015e640  mov     x0, x20
loc_10015e644:
  10015e644  bl      _objc_release
  10015e648  mov     x0, x21
  10015e64c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl initWithDatabaseName:maxNumStoredItems:operationQueue:]
; address 0x10015e650  size 296  kind objc
; ======================================================================
  10015e650  stp     x29, x30, [sp, #-0x10]!
  10015e654  mov     x29, sp
  10015e658  stp     x20, x19, [sp, #-0x10]!
  10015e65c  stp     x22, x21, [sp, #-0x10]!
  10015e660  stp     x24, x23, [sp, #-0x10]!
  10015e664  sub     sp, sp, #0x10
  10015e668  mov     x20, x4
  10015e66c  mov     x22, x3
  10015e670  mov     x21, x0
  10015e674  mov     x0, x2
  10015e678  bl      _objc_retain
  10015e67c  mov     x19, x0
  10015e680  mov     x0, x20
  10015e684  bl      _objc_retain
  10015e688  mov     x20, x0
  10015e68c  str     x21, [sp]
  10015e690  adrp    x8, #0x10041f000
  10015e694  ldr     x8, [x8, #0x2a0]
  10015e698  str     x8, [sp, #8]
  10015e69c  adrp    x8, #0x100416000
  10015e6a0  nop
  10015e6a4  ldr     x1, [x8, #0xab8]
  10015e6a8  mov     x23, #0
  10015e6ac  mov     x0, sp
  10015e6b0  bl      _objc_msgSendSuper2                      ; [super init]
  10015e6b4  mov     x21, x0
  10015e6b8  cbz     x21, loc_10015e728                       ; if (self == 0)
  10015e6bc  mov     x23, x21
  10015e6c0  adrp    x8, #0x100420000
  10015e6c4  ldrsw   x24, [x8, #0xb3c]                        ; ivar offset TAGDataLayerPersistentStoreImpl._databaseName (+0x8)
  10015e6c8  mov     x0, x19
  10015e6cc  bl      _objc_retain
  10015e6d0  ldr     x8, [x21, x24]                           ; x8 = self->_databaseName
  10015e6d4  str     x0, [x21, x24]                           ; self->_databaseName = arg1
  10015e6d8  mov     x0, x8
  10015e6dc  bl      _objc_release
  10015e6e0  ubfx    x8, x22, #0, #0x20
  10015e6e4  adrp    x9, #0x100420000
  10015e6e8  ldrsw   x9, [x9, #0xb40]                         ; ivar offset TAGDataLayerPersistentStoreImpl._maxNumStoredItems (+0x10)
  10015e6ec  str     x8, [x21, x9]                            ; self->_maxNumStoredItems = x8
  10015e6f0  adrp    x8, #0x100420000
  10015e6f4  ldrsw   x22, [x8, #0xb44]                        ; ivar offset TAGDataLayerPersistentStoreImpl._operationQueue (+0x18)
  10015e6f8  mov     x0, x20
  10015e6fc  bl      _objc_retain
  10015e700  ldr     x8, [x21, x22]                           ; x8 = self->_operationQueue
  10015e704  str     x0, [x21, x22]                           ; self->_operationQueue = arg3
  10015e708  mov     x0, x8
  10015e70c  bl      _objc_release
  10015e710  ldr     x0, [x21, x22]                           ; x0 = self->_operationQueue
  10015e714  adrp    x8, #0x10041b000
  10015e718  nop
  10015e71c  ldr     x1, [x8, #0xc98]
  10015e720  mov     x2, #1
  10015e724  bl      _objc_msgSend                            ; [self->_operationQueue setMaxConcurrentOperationCount:1]
loc_10015e728:
  10015e728  mov     x0, x20
  10015e72c  bl      _objc_release
  10015e730  mov     x0, x19
  10015e734  bl      _objc_release
  10015e738  mov     x0, x21
  10015e73c  sub     sp, x29, #0x30
  10015e740  ldp     x24, x23, [sp], #0x10
  10015e744  ldp     x22, x21, [sp], #0x10
  10015e748  ldp     x20, x19, [sp], #0x10
  10015e74c  ldp     x29, x30, [sp], #0x10
  10015e750  ret
  10015e754  mov     x21, x0
  10015e758  mov     x0, x20
  10015e75c  bl      _objc_release
  10015e760  mov     x0, x19
  10015e764  bl      _objc_release
  10015e768  mov     x0, x23
  10015e76c  bl      _objc_release
  10015e770  mov     x0, x21
  10015e774  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl dealloc]
; address 0x10015e778  size 148  kind objc
; ======================================================================
  10015e778  stp     x29, x30, [sp, #-0x10]!
  10015e77c  mov     x29, sp
  10015e780  stp     x20, x19, [sp, #-0x10]!
  10015e784  sub     sp, sp, #0x20
  10015e788  mov     x19, x0
  10015e78c  adrp    x8, #0x10041d000
  10015e790  nop
  10015e794  ldr     x1, [x8, #0x488]
  10015e798  bl      _objc_msgSend                            ; [self closeDatabase]
  10015e79c  str     x19, [sp, #0x10]
  10015e7a0  adrp    x8, #0x10041f000
  10015e7a4  ldr     x8, [x8, #0x2a0]
  10015e7a8  str     x8, [sp, #0x18]
  10015e7ac  adrp    x8, #0x100416000
  10015e7b0  nop
  10015e7b4  ldr     x1, [x8, #0xfc8]
  10015e7b8  add     x0, sp, #0x10
  10015e7bc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10015e7c0  sub     sp, x29, #0x10
  10015e7c4  ldp     x20, x19, [sp], #0x10
  10015e7c8  ldp     x29, x30, [sp], #0x10
  10015e7cc  ret
  10015e7d0  mov     x20, x0
  10015e7d4  str     x19, [sp]
  10015e7d8  adrp    x8, #0x10041f000
  10015e7dc  ldr     x8, [x8, #0x2a0]
  10015e7e0  str     x8, [sp, #8]
  10015e7e4  adrp    x8, #0x100416000
  10015e7e8  nop
  10015e7ec  ldr     x8, [x8, #0xfc8]
  10015e7f0  mov     x9, sp
  10015e7f4  mov     x0, x9
  10015e7f8  mov     x1, x8
  10015e7fc  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10015e800  mov     x0, x20
  10015e804  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015e808  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl saveKeyValues:lifetimeInMillis:]
; address 0x10015e80c  size 348  kind objc
; ======================================================================
  10015e80c  stp     x29, x30, [sp, #-0x10]!
  10015e810  mov     x29, sp
  10015e814  stp     x20, x19, [sp, #-0x10]!
  10015e818  stp     x22, x21, [sp, #-0x10]!
  10015e81c  stp     x24, x23, [sp, #-0x10]!
  10015e820  sub     sp, sp, #0x40
  10015e824  mov     x21, x3
  10015e828  mov     x22, x0
  10015e82c  mov     x0, x2
  10015e830  bl      _objc_retain
  10015e834  mov     x19, x0
  10015e838  adrp    x8, #0x10041d000
  10015e83c  nop
  10015e840  ldr     x1, [x8, #0x490]
  10015e844  mov     x0, x22
  10015e848  mov     x2, x19
  10015e84c  bl      _objc_msgSend                            ; [self serializeValues:arg1]
  10015e850  mov     x29, x29
  10015e854  bl      _objc_retainAutoreleasedReturnValue
  10015e858  mov     x20, x0
  10015e85c  adrp    x8, #0x10041d000
  10015e860  nop
  10015e864  ldr     x1, [x8, #0x498]
  10015e868  mov     x0, x22
  10015e86c  bl      _objc_msgSend                            ; [self operationQueue]
  10015e870  mov     x29, x29
  10015e874  bl      _objc_retainAutoreleasedReturnValue
  10015e878  mov     x23, x0
  10015e87c  adrp    x8, #0x1003b0000
  10015e880  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10015e884  mov     w9, #-0x3e000000
  10015e888  str     x8, [sp, #8]
  10015e88c  stp     w9, wzr, [sp, #0x10]
  10015e890  adr     x8, #0x10015e968                         ; &-[TAGDataLayerPersistentStoreImpl saveKeyValues:lifetimeInMillis:]_block_invoke
  10015e894  nop
  10015e898  str     x8, [sp, #0x18]
  10015e89c  adrp    x8, #0x1003b9000
  10015e8a0  add     x8, x8, #0x790                           ; &d_1003b9790
  10015e8a4  str     x8, [sp, #0x20]
  10015e8a8  mov     x0, x22
  10015e8ac  bl      _objc_retain
  10015e8b0  str     x0, [sp, #0x28]
  10015e8b4  mov     x0, x20
  10015e8b8  bl      _objc_retain
  10015e8bc  mov     x22, x0
  10015e8c0  stp     x22, x21, [sp, #0x30]
  10015e8c4  adrp    x8, #0x100417000
  10015e8c8  nop
  10015e8cc  ldr     x1, [x8, #0x760]
  10015e8d0  add     x2, sp, #8
  10015e8d4  mov     x0, x23
  10015e8d8  bl      _objc_msgSend                            ; [[self operationQueue] addOperationWithBlock:^{-[TAGDataLayerPersistentStoreImpl saveKeyValues:lifetimeInMillis:]_block_invoke captures +0x20=self, +0x28=[self serializeValues:arg1], +0x30=arg2}]
  10015e8dc  mov     x0, x23
  10015e8e0  bl      _objc_release
  10015e8e4  ldr     x0, [sp, #0x30]
  10015e8e8  bl      _objc_release
  10015e8ec  ldr     x0, [sp, #0x28]
  10015e8f0  bl      _objc_release
  10015e8f4  mov     x0, x22
  10015e8f8  bl      _objc_release
  10015e8fc  mov     x0, x19
  10015e900  bl      _objc_release
  10015e904  sub     sp, x29, #0x30
  10015e908  ldp     x24, x23, [sp], #0x10
  10015e90c  ldp     x22, x21, [sp], #0x10
  10015e910  ldp     x20, x19, [sp], #0x10
  10015e914  ldp     x29, x30, [sp], #0x10
  10015e918  ret
  10015e91c  mov     x21, x0
  10015e920  b       loc_10015e958
  10015e924  mov     x21, x0
  10015e928  b       loc_10015e950
  10015e92c  mov     x21, x0
  10015e930  mov     x0, x23
  10015e934  bl      _objc_release
  10015e938  ldr     x8, [sp, #0x30]
  10015e93c  mov     x0, x8
  10015e940  bl      _objc_release
  10015e944  ldr     x8, [sp, #0x28]
  10015e948  mov     x0, x8
  10015e94c  bl      _objc_release
loc_10015e950:
  10015e950  mov     x0, x20
  10015e954  bl      _objc_release
loc_10015e958:
  10015e958  mov     x0, x19
  10015e95c  bl      _objc_release
  10015e960  mov     x0, x21
  10015e964  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl saveKeyValues:lifetimeInMillis:]_block_invoke
; address 0x10015e968  size 28  kind block
; ======================================================================
  10015e968  ldp     x8, x2, [x0, #0x20]
  10015e96c  adrp    x9, #0x10041d000
  10015e970  nop
  10015e974  ldr     x3, [x0, #0x30]                          ; x3 = captured arg2
  10015e978  ldr     x1, [x9, #0x4a0]
  10015e97c  mov     x0, x8
  10015e980  b       _objc_msgSend                            ; [x0 saveSingleThreaded:x2 lifetimeInMillis:arg2]

; ======================================================================
; sub_10015e984
; address 0x10015e984  size 40  kind sub
; ======================================================================
  10015e984  stp     x29, x30, [sp, #-0x10]!
  10015e988  mov     x29, sp
  10015e98c  stp     x20, x19, [sp, #-0x10]!
  10015e990  mov     x19, x1
  10015e994  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10015e998  bl      _objc_retain
  10015e99c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10015e9a0  ldp     x20, x19, [sp], #0x10
  10015e9a4  ldp     x29, x30, [sp], #0x10
  10015e9a8  b       _objc_retain

; ======================================================================
; sub_10015e9ac
; address 0x10015e9ac  size 40  kind sub
; ======================================================================
  10015e9ac  stp     x29, x30, [sp, #-0x10]!
  10015e9b0  mov     x29, sp
  10015e9b4  stp     x20, x19, [sp, #-0x10]!
  10015e9b8  mov     x19, x0
  10015e9bc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10015e9c0  bl      _objc_release
  10015e9c4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10015e9c8  ldp     x20, x19, [sp], #0x10
  10015e9cc  ldp     x29, x30, [sp], #0x10
  10015e9d0  b       _objc_release

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl loadSaved:]
; address 0x10015e9d4  size 276  kind objc
; ======================================================================
  10015e9d4  stp     x29, x30, [sp, #-0x10]!
  10015e9d8  mov     x29, sp
  10015e9dc  stp     x20, x19, [sp, #-0x10]!
  10015e9e0  stp     x22, x21, [sp, #-0x10]!
  10015e9e4  sub     sp, sp, #0x30
  10015e9e8  mov     x21, x0
  10015e9ec  mov     x0, x2
  10015e9f0  bl      _objc_retain
  10015e9f4  mov     x19, x0
  10015e9f8  adrp    x8, #0x10041d000
  10015e9fc  nop
  10015ea00  ldr     x1, [x8, #0x498]
  10015ea04  mov     x0, x21
  10015ea08  bl      _objc_msgSend                            ; [self operationQueue]
  10015ea0c  mov     x29, x29
  10015ea10  bl      _objc_retainAutoreleasedReturnValue
  10015ea14  mov     x20, x0
  10015ea18  adrp    x8, #0x1003b0000
  10015ea1c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10015ea20  mov     w9, #-0x3e000000
  10015ea24  str     x8, [sp]
  10015ea28  stp     w9, wzr, [sp, #8]
  10015ea2c  adr     x8, #0x10015eae8                         ; &-[TAGDataLayerPersistentStoreImpl loadSaved:]_block_invoke
  10015ea30  nop
  10015ea34  str     x8, [sp, #0x10]
  10015ea38  adrp    x8, #0x1003b9000
  10015ea3c  add     x8, x8, #0x7c0                           ; &d_1003b97c0
  10015ea40  str     x8, [sp, #0x18]
  10015ea44  mov     x0, x19
  10015ea48  bl      _objc_retain
  10015ea4c  mov     x22, x0
  10015ea50  str     x22, [sp, #0x20]
  10015ea54  mov     x0, x21
  10015ea58  bl      _objc_retain
  10015ea5c  str     x0, [sp, #0x28]
  10015ea60  adrp    x8, #0x100417000
  10015ea64  nop
  10015ea68  ldr     x1, [x8, #0x760]
  10015ea6c  mov     x2, sp
  10015ea70  mov     x0, x20
  10015ea74  bl      _objc_msgSend                            ; [[self operationQueue] addOperationWithBlock:^{-[TAGDataLayerPersistentStoreImpl loadSaved:]_block_invoke captures +0x20=arg1, +0x28=self}]
  10015ea78  mov     x0, x20
  10015ea7c  bl      _objc_release
  10015ea80  ldr     x0, [sp, #0x28]
  10015ea84  bl      _objc_release
  10015ea88  ldr     x0, [sp, #0x20]
  10015ea8c  bl      _objc_release
  10015ea90  mov     x0, x22
  10015ea94  bl      _objc_release
  10015ea98  sub     sp, x29, #0x20
  10015ea9c  ldp     x22, x21, [sp], #0x10
  10015eaa0  ldp     x20, x19, [sp], #0x10
  10015eaa4  ldp     x29, x30, [sp], #0x10
  10015eaa8  ret
  10015eaac  mov     x21, x0
  10015eab0  b       loc_10015ead8
  10015eab4  mov     x21, x0
  10015eab8  mov     x0, x20
  10015eabc  bl      _objc_release
  10015eac0  ldr     x8, [sp, #0x28]
  10015eac4  mov     x0, x8
  10015eac8  bl      _objc_release
  10015eacc  ldr     x8, [sp, #0x20]
  10015ead0  mov     x0, x8
  10015ead4  bl      _objc_release
loc_10015ead8:
  10015ead8  mov     x0, x19
  10015eadc  bl      _objc_release
  10015eae0  mov     x0, x21
  10015eae4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl loadSaved:]_block_invoke
; address 0x10015eae8  size 104  kind block
; ======================================================================
  10015eae8  stp     x29, x30, [sp, #-0x10]!
  10015eaec  mov     x29, sp
  10015eaf0  stp     x20, x19, [sp, #-0x10]!
  10015eaf4  ldp     x20, x0, [x0, #0x20]
  10015eaf8  adrp    x8, #0x10041d000
  10015eafc  nop
  10015eb00  ldr     x1, [x8, #0x4a8]
  10015eb04  bl      _objc_msgSend                            ; [x0 loadSingleThreaded]
  10015eb08  mov     x29, x29
  10015eb0c  bl      _objc_retainAutoreleasedReturnValue
  10015eb10  mov     x19, x0
  10015eb14  adrp    x8, #0x10041d000
  10015eb18  nop
  10015eb1c  ldr     x1, [x8, #0x4b0]
  10015eb20  mov     x0, x20
  10015eb24  mov     x2, x19
  10015eb28  bl      _objc_msgSend                            ; [x0 onKeyValuesLoaded:[x0 loadSingleThreaded]]
  10015eb2c  mov     x0, x19
  10015eb30  ldp     x20, x19, [sp], #0x10
  10015eb34  ldp     x29, x30, [sp], #0x10
  10015eb38  b       _objc_release
  10015eb3c  mov     x20, x0
  10015eb40  mov     x0, x19
  10015eb44  bl      _objc_release
  10015eb48  mov     x0, x20
  10015eb4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10015eb50
; address 0x10015eb50  size 40  kind sub
; ======================================================================
  10015eb50  stp     x29, x30, [sp, #-0x10]!
  10015eb54  mov     x29, sp
  10015eb58  stp     x20, x19, [sp, #-0x10]!
  10015eb5c  mov     x19, x1
  10015eb60  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10015eb64  bl      _objc_retain
  10015eb68  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10015eb6c  ldp     x20, x19, [sp], #0x10
  10015eb70  ldp     x29, x30, [sp], #0x10
  10015eb74  b       _objc_retain

; ======================================================================
; sub_10015eb78
; address 0x10015eb78  size 40  kind sub
; ======================================================================
  10015eb78  stp     x29, x30, [sp, #-0x10]!
  10015eb7c  mov     x29, sp
  10015eb80  stp     x20, x19, [sp, #-0x10]!
  10015eb84  mov     x19, x0
  10015eb88  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10015eb8c  bl      _objc_release
  10015eb90  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10015eb94  ldp     x20, x19, [sp], #0x10
  10015eb98  ldp     x29, x30, [sp], #0x10
  10015eb9c  b       _objc_release

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl clearKeysWithPrefix:]
; address 0x10015eba0  size 276  kind objc
; ======================================================================
  10015eba0  stp     x29, x30, [sp, #-0x10]!
  10015eba4  mov     x29, sp
  10015eba8  stp     x20, x19, [sp, #-0x10]!
  10015ebac  stp     x22, x21, [sp, #-0x10]!
  10015ebb0  sub     sp, sp, #0x30
  10015ebb4  mov     x21, x0
  10015ebb8  mov     x0, x2
  10015ebbc  bl      _objc_retain
  10015ebc0  mov     x19, x0
  10015ebc4  adrp    x8, #0x10041d000
  10015ebc8  nop
  10015ebcc  ldr     x1, [x8, #0x498]
  10015ebd0  mov     x0, x21
  10015ebd4  bl      _objc_msgSend                            ; [self operationQueue]
  10015ebd8  mov     x29, x29
  10015ebdc  bl      _objc_retainAutoreleasedReturnValue
  10015ebe0  mov     x20, x0
  10015ebe4  adrp    x8, #0x1003b0000
  10015ebe8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10015ebec  mov     w9, #-0x3e000000
  10015ebf0  str     x8, [sp]
  10015ebf4  stp     w9, wzr, [sp, #8]
  10015ebf8  adr     x8, #0x10015ecb4                         ; &-[TAGDataLayerPersistentStoreImpl clearKeysWithPrefix:]_block_invoke
  10015ebfc  nop
  10015ec00  str     x8, [sp, #0x10]
  10015ec04  adrp    x8, #0x1003b9000
  10015ec08  add     x8, x8, #0x7f0                           ; &d_1003b97f0
  10015ec0c  str     x8, [sp, #0x18]
  10015ec10  mov     x0, x21
  10015ec14  bl      _objc_retain
  10015ec18  str     x0, [sp, #0x20]
  10015ec1c  mov     x0, x19
  10015ec20  bl      _objc_retain
  10015ec24  mov     x21, x0
  10015ec28  str     x21, [sp, #0x28]
  10015ec2c  adrp    x8, #0x100417000
  10015ec30  nop
  10015ec34  ldr     x1, [x8, #0x760]
  10015ec38  mov     x2, sp
  10015ec3c  mov     x0, x20
  10015ec40  bl      _objc_msgSend                            ; [[self operationQueue] addOperationWithBlock:^{-[TAGDataLayerPersistentStoreImpl clearKeysWithPrefix:]_block_invoke captures +0x20=self, +0x28=arg1}]
  10015ec44  mov     x0, x20
  10015ec48  bl      _objc_release
  10015ec4c  ldr     x0, [sp, #0x28]
  10015ec50  bl      _objc_release
  10015ec54  ldr     x0, [sp, #0x20]
  10015ec58  bl      _objc_release
  10015ec5c  mov     x0, x21
  10015ec60  bl      _objc_release
  10015ec64  sub     sp, x29, #0x20
  10015ec68  ldp     x22, x21, [sp], #0x10
  10015ec6c  ldp     x20, x19, [sp], #0x10
  10015ec70  ldp     x29, x30, [sp], #0x10
  10015ec74  ret
  10015ec78  mov     x21, x0
  10015ec7c  b       loc_10015eca4
  10015ec80  mov     x21, x0
  10015ec84  mov     x0, x20
  10015ec88  bl      _objc_release
  10015ec8c  ldr     x8, [sp, #0x28]
  10015ec90  mov     x0, x8
  10015ec94  bl      _objc_release
  10015ec98  ldr     x8, [sp, #0x20]
  10015ec9c  mov     x0, x8
  10015eca0  bl      _objc_release
loc_10015eca4:
  10015eca4  mov     x0, x19
  10015eca8  bl      _objc_release
  10015ecac  mov     x0, x21
  10015ecb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl clearKeysWithPrefix:]_block_invoke
; address 0x10015ecb4  size 24  kind block
; ======================================================================
  10015ecb4  ldp     x8, x2, [x0, #0x20]
  10015ecb8  adrp    x9, #0x10041d000
  10015ecbc  nop
  10015ecc0  ldr     x1, [x9, #0x4b8]
  10015ecc4  mov     x0, x8
  10015ecc8  b       _objc_msgSend                            ; [x0 clearKeysWithPrefixSingleThreaded:x2]

; ======================================================================
; sub_10015eccc
; address 0x10015eccc  size 40  kind sub
; ======================================================================
  10015eccc  stp     x29, x30, [sp, #-0x10]!
  10015ecd0  mov     x29, sp
  10015ecd4  stp     x20, x19, [sp, #-0x10]!
  10015ecd8  mov     x19, x1
  10015ecdc  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10015ece0  bl      _objc_retain
  10015ece4  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10015ece8  ldp     x20, x19, [sp], #0x10
  10015ecec  ldp     x29, x30, [sp], #0x10
  10015ecf0  b       _objc_retain

; ======================================================================
; sub_10015ecf4
; address 0x10015ecf4  size 40  kind sub
; ======================================================================
  10015ecf4  stp     x29, x30, [sp, #-0x10]!
  10015ecf8  mov     x29, sp
  10015ecfc  stp     x20, x19, [sp, #-0x10]!
  10015ed00  mov     x19, x0
  10015ed04  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10015ed08  bl      _objc_release
  10015ed0c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10015ed10  ldp     x20, x19, [sp], #0x10
  10015ed14  ldp     x29, x30, [sp], #0x10
  10015ed18  b       _objc_release

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl loadSingleThreaded]
; address 0x10015ed1c  size 288  kind objc
; ======================================================================
  10015ed1c  stp     x29, x30, [sp, #-0x10]!
  10015ed20  mov     x29, sp
  10015ed24  stp     x20, x19, [sp, #-0x10]!
  10015ed28  stp     x22, x21, [sp, #-0x10]!
  10015ed2c  sub     sp, sp, #0x10
  10015ed30  mov     x19, x0
  10015ed34  adrp    x8, #0x10041d000
  10015ed38  nop
  10015ed3c  ldr     x1, [x8, #0x4c0]
  10015ed40  bl      _objc_msgSend                            ; [self openDatabaseAndInitStatements]
  10015ed44  tbz     w0, #0, loc_10015ede4                    ; if (!([self openDatabaseAndInitStatements] & 1))
  10015ed48  adrp    x8, #0x10041d000
  10015ed4c  nop
  10015ed50  ldr     x1, [x8, #0x4c8]
  10015ed54  mov     x0, x19
  10015ed58  bl      _objc_msgSend                            ; [self currentTimeInMilliseconds]
  10015ed5c  fcvtzu  x2, d0
  10015ed60  adrp    x8, #0x10041d000
  10015ed64  nop
  10015ed68  ldr     x1, [x8, #0x4d0]
  10015ed6c  mov     x0, x19
  10015ed70  bl      _objc_msgSend                            ; [self deleteEntriesOlderThan:(uint)[self currentTimeInMilliseconds]]
  10015ed74  adrp    x8, #0x10041d000
  10015ed78  nop
  10015ed7c  ldr     x1, [x8, #0x4d8]
  10015ed80  mov     x0, x19
  10015ed84  bl      _objc_msgSend                            ; [self loadSerialized]
  10015ed88  mov     x29, x29
  10015ed8c  bl      _objc_retainAutoreleasedReturnValue
  10015ed90  mov     x20, x0
  10015ed94  adrp    x8, #0x10041d000
  10015ed98  nop
  10015ed9c  ldr     x1, [x8, #0x4e0]
  10015eda0  mov     x0, x19
  10015eda4  mov     x2, x20
  10015eda8  bl      _objc_msgSend                            ; [self unserializeValues:[self loadSerialized]]
  10015edac  mov     x29, x29
  10015edb0  bl      _objc_retainAutoreleasedReturnValue
  10015edb4  mov     x21, x0
  10015edb8  mov     x0, x20
  10015edbc  bl      _objc_release
  10015edc0  adrp    x8, #0x10041d000
  10015edc4  nop
  10015edc8  ldr     x1, [x8, #0x488]
  10015edcc  mov     x0, x19
  10015edd0  bl      _objc_msgSend                            ; [self closeDatabase]
  10015edd4  b       loc_10015ee10
  10015edd8  mov     x19, x0
  10015eddc  mov     x0, x21
  10015ede0  b       loc_10015ee30
loc_10015ede4:
  10015ede4  adrp    x8, #0x10041d000
  10015ede8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10015edec  adrp    x8, #0x100417000
  10015edf0  nop
  10015edf4  ldr     x1, [x8, #0x3c8]
  10015edf8  mov     x3, #0
  10015edfc  add     x2, sp, #8
  10015ee00  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:0]
  10015ee04  mov     x29, x29
  10015ee08  bl      _objc_retainAutoreleasedReturnValue
  10015ee0c  mov     x21, x0
loc_10015ee10:
  10015ee10  mov     x0, x21
  10015ee14  sub     sp, x29, #0x20
  10015ee18  ldp     x22, x21, [sp], #0x10
  10015ee1c  ldp     x20, x19, [sp], #0x10
  10015ee20  ldp     x29, x30, [sp], #0x10
  10015ee24  b       _objc_autoreleaseReturnValue
  10015ee28  mov     x19, x0
  10015ee2c  mov     x0, x20
loc_10015ee30:
  10015ee30  bl      _objc_release
  10015ee34  mov     x0, x19
  10015ee38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl saveSingleThreaded:lifetimeInMillis:]
; address 0x10015ee3c  size 260  kind objc
; ======================================================================
  10015ee3c  stp     x29, x30, [sp, #-0x10]!
  10015ee40  mov     x29, sp
  10015ee44  stp     x20, x19, [sp, #-0x10]!
  10015ee48  stp     x22, x21, [sp, #-0x10]!
  10015ee4c  mov     x21, x3
  10015ee50  mov     x20, x0
  10015ee54  mov     x0, x2
  10015ee58  bl      _objc_retain
  10015ee5c  mov     x19, x0
  10015ee60  adrp    x8, #0x10041d000
  10015ee64  nop
  10015ee68  ldr     x1, [x8, #0x4c0]
  10015ee6c  mov     x0, x20
  10015ee70  bl      _objc_msgSend                            ; [self openDatabaseAndInitStatements]
  10015ee74  tbz     w0, #0, loc_10015ef18                    ; if (!([self openDatabaseAndInitStatements] & 1))
  10015ee78  adrp    x8, #0x10041d000
  10015ee7c  nop
  10015ee80  ldr     x22, [x8, #0x4c8]
  10015ee84  mov     x0, x20
  10015ee88  mov     x1, x22
  10015ee8c  bl      _objc_msgSend                            ; [self currentTimeInMilliseconds]
  10015ee90  fcvtzu  x2, d0
  10015ee94  adrp    x8, #0x10041d000
  10015ee98  nop
  10015ee9c  ldr     x1, [x8, #0x4d0]
  10015eea0  mov     x0, x20
  10015eea4  bl      _objc_msgSend                            ; [self deleteEntriesOlderThan:(uint)[self currentTimeInMilliseconds]]
  10015eea8  adrp    x8, #0x100416000
  10015eeac  nop
  10015eeb0  ldr     x1, [x8, #0xe30]
  10015eeb4  mov     x0, x19
  10015eeb8  bl      _objc_msgSend                            ; [arg1 count]
  10015eebc  mov     x2, x0
  10015eec0  adrp    x8, #0x10041d000
  10015eec4  nop
  10015eec8  ldr     x1, [x8, #0x4e8]
  10015eecc  mov     x0, x20
  10015eed0  bl      _objc_msgSend                            ; [self makeRoomForEntries:[arg1 count]]
  10015eed4  mov     x0, x20
  10015eed8  mov     x1, x22
  10015eedc  bl      _objc_msgSend                            ; [self currentTimeInMilliseconds]
  10015eee0  ucvtf   d1, x21
  10015eee4  fadd    d0, d1, d0
  10015eee8  fcvtzu  x3, d0
  10015eeec  adrp    x8, #0x10041d000
  10015eef0  nop
  10015eef4  ldr     x1, [x8, #0x4f0]
  10015eef8  mov     x0, x20
  10015eefc  mov     x2, x19
  10015ef00  bl      _objc_msgSend                            ; [self writeEntriesToDatabase:arg1 expireTime:(uint)((float)arg2 + [self currentTimeInMilliseconds])]
  10015ef04  adrp    x8, #0x10041d000
  10015ef08  nop
  10015ef0c  ldr     x1, [x8, #0x488]
  10015ef10  mov     x0, x20
  10015ef14  bl      _objc_msgSend                            ; [self closeDatabase]
loc_10015ef18:
  10015ef18  mov     x0, x19
  10015ef1c  ldp     x22, x21, [sp], #0x10
  10015ef20  ldp     x20, x19, [sp], #0x10
  10015ef24  ldp     x29, x30, [sp], #0x10
  10015ef28  b       _objc_release
  10015ef2c  mov     x20, x0
  10015ef30  mov     x0, x19
  10015ef34  bl      _objc_release
  10015ef38  mov     x0, x20
  10015ef3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl clearKeysWithPrefixSingleThreaded:]
; address 0x10015ef40  size 580  kind objc
; ======================================================================
  10015ef40  stp     x29, x30, [sp, #-0x10]!
  10015ef44  mov     x29, sp
  10015ef48  stp     x20, x19, [sp, #-0x10]!
  10015ef4c  stp     x22, x21, [sp, #-0x10]!
  10015ef50  stp     x24, x23, [sp, #-0x10]!
  10015ef54  stp     x26, x25, [sp, #-0x10]!
  10015ef58  stp     x28, x27, [sp, #-0x10]!
  10015ef5c  sub     sp, sp, #0x20
  10015ef60  mov     x20, x0
  10015ef64  mov     x0, x2
  10015ef68  bl      _objc_retain
  10015ef6c  mov     x19, x0
  10015ef70  adrp    x8, #0x10041d000
  10015ef74  nop
  10015ef78  ldr     x1, [x8, #0x4c0]
  10015ef7c  mov     x0, x20
  10015ef80  bl      _objc_msgSend                            ; [self openDatabaseAndInitStatements]
  10015ef84  tbz     w0, #0, loc_10015f11c                    ; if (!([self openDatabaseAndInitStatements] & 1))
  10015ef88  adrp    x27, #0x10041d000
  10015ef8c  ldr     x0, [x27, #0xf78]                        ; class NSString
  10015ef90  adrp    x8, #0x100416000
  10015ef94  nop
  10015ef98  ldr     x23, [x8, #0xee8]
  10015ef9c  adrp    x8, #0x1003c8000
  10015efa0  add     x8, x8, #0x3d0                           ; @"key"
  10015efa4  adrp    x9, #0x1003c8000
  10015efa8  add     x9, x9, #0x3b0                           ; @"datalayer"
  10015efac  stp     x8, x8, [sp, #8]
  10015efb0  str     x9, [sp]
  10015efb4  adrp    x2, #0x1003c8000
  10015efb8  add     x2, x2, #0x450                           ; @"DELETE from %@ WHERE %@ = ? or %@ like ?;"
  10015efbc  mov     x1, x23
  10015efc0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"key", @"key"]
  10015efc4  mov     x29, x29
  10015efc8  bl      _objc_retainAutoreleasedReturnValue
  10015efcc  mov     x21, x0
  10015efd0  adrp    x8, #0x10041d000
  10015efd4  nop
  10015efd8  ldr     x1, [x8, #0x4f8]
  10015efdc  adrp    x3, #0x1003c8000
  10015efe0  add     x3, x3, #0x470                           ; @"delete entries with key prefix"
  10015efe4  mov     x0, x20
  10015efe8  mov     x2, x21
  10015efec  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"key", @"key"] description:@"delete entries with key prefix"]
  10015eff0  mov     x24, x0
  10015eff4  ldr     x0, [x27, #0xf78]                        ; class NSString
  10015eff8  str     x19, [sp]
  10015effc  adrp    x2, #0x1003c8000
  10015f000  add     x2, x2, #0x490                           ; @"%@.%%"
  10015f004  mov     x1, x23
  10015f008  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@.%%", arg1]
  10015f00c  mov     x29, x29
  10015f010  bl      _objc_retainAutoreleasedReturnValue
  10015f014  mov     x22, x0
  10015f018  mov     x0, x19
  10015f01c  bl      _objc_retainAutorelease
  10015f020  adrp    x8, #0x10041a000
  10015f024  nop
  10015f028  ldr     x26, [x8, #0x18]
  10015f02c  mov     x1, x26
  10015f030  bl      _objc_msgSend                            ; [arg1 UTF8String]
  10015f034  mov     x2, x0
  10015f038  mov     w1, #1
  10015f03c  mov     w3, #-1
  10015f040  mov     x0, x24
  10015f044  mov     x4, #0
  10015f048  bl      _sqlite3_bind_text                       ; sqlite3_bind_text([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"key", @"key"] description:@"delete entries with key prefix"], 1, [arg1 UTF8String], 0xffffffff)
  10015f04c  mov     x0, x22
  10015f050  bl      _objc_retainAutorelease
  10015f054  mov     x25, x0
  10015f058  mov     x1, x26
  10015f05c  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%@.%%", arg1] UTF8String]
  10015f060  mov     x2, x0
  10015f064  mov     w1, #2
  10015f068  mov     w3, #-1
  10015f06c  mov     x0, x24
  10015f070  mov     x4, #0
  10015f074  bl      _sqlite3_bind_text                       ; sqlite3_bind_text([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"key", @"key"] description:@"delete entries with key prefix"], 2, [[NSString stringWithFormat:@"%@.%%", arg1] UTF8String], 0xffffffff)
  10015f078  mov     x0, x24
  10015f07c  bl      _sqlite3_step                            ; sqlite3_step([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"key", @"key"] description:@"delete entries with key prefix"])
  10015f080  cmp     w0, #1
  10015f084  b.ne    loc_10015f0f0                            ; if (sqlite3_step([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"k… != 1)
  10015f088  adrp    x8, #0x10041e000
  10015f08c  ldr     x26, [x8, #0x538]                        ; class TAGLog
  10015f090  ldr     x27, [x27, #0xf78]                       ; class NSString
  10015f094  adrp    x8, #0x10041d000
  10015f098  nop
  10015f09c  ldr     x1, [x8, #0x500]
  10015f0a0  mov     x0, x20
  10015f0a4  bl      _objc_msgSend                            ; [self database]
  10015f0a8  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  10015f0ac  str     x0, [sp]
  10015f0b0  adrp    x2, #0x1003c8000
  10015f0b4  add     x2, x2, #0x4b0                           ; @"Error: Failed to delete entries from database: %s"
  10015f0b8  mov     x0, x27
  10015f0bc  mov     x1, x23
  10015f0c0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error: Failed to delete entries from database: %s", sqlite3_errmsg([self database])]
  10015f0c4  mov     x29, x29
  10015f0c8  bl      _objc_retainAutoreleasedReturnValue
  10015f0cc  mov     x23, x0
  10015f0d0  adrp    x8, #0x10041b000
  10015f0d4  nop
  10015f0d8  ldr     x1, [x8, #0xdd0]
  10015f0dc  mov     x0, x26
  10015f0e0  mov     x2, x23
  10015f0e4  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error: Failed to delete entries from database: %s", sqlite3_errmsg([self database])]]
  10015f0e8  mov     x0, x23
  10015f0ec  bl      _objc_release
loc_10015f0f0:
  10015f0f0  mov     x0, x24
  10015f0f4  bl      _sqlite3_finalize                        ; sqlite3_finalize([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ = ? or %@ like ?;", @"datalayer", @"key", @"key"] description:@"delete entries with key prefix"])
  10015f0f8  adrp    x8, #0x10041d000
  10015f0fc  nop
  10015f100  ldr     x1, [x8, #0x488]
  10015f104  mov     x0, x20
  10015f108  bl      _objc_msgSend                            ; [self closeDatabase]
  10015f10c  mov     x0, x25
  10015f110  bl      _objc_release
  10015f114  mov     x0, x21
  10015f118  bl      _objc_release
loc_10015f11c:
  10015f11c  mov     x0, x19
  10015f120  sub     sp, x29, #0x50
  10015f124  ldp     x28, x27, [sp], #0x10
  10015f128  ldp     x26, x25, [sp], #0x10
  10015f12c  ldp     x24, x23, [sp], #0x10
  10015f130  ldp     x22, x21, [sp], #0x10
  10015f134  ldp     x20, x19, [sp], #0x10
  10015f138  ldp     x29, x30, [sp], #0x10
  10015f13c  b       _objc_release
  10015f140  mov     x20, x0
  10015f144  b       loc_10015f174
  10015f148  mov     x20, x0
  10015f14c  b       loc_10015f16c
  10015f150  mov     x20, x0
  10015f154  mov     x0, x23
  10015f158  bl      _objc_release
  10015f15c  b       loc_10015f164
  10015f160  mov     x20, x0
loc_10015f164:
  10015f164  mov     x0, x22
  10015f168  bl      _objc_release
loc_10015f16c:
  10015f16c  mov     x0, x21
  10015f170  bl      _objc_release
loc_10015f174:
  10015f174  mov     x0, x19
  10015f178  bl      _objc_release
  10015f17c  mov     x0, x20
  10015f180  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl unserializeValues:]
; address 0x10015f184  size 724  kind objc
; ======================================================================
  10015f184  stp     x29, x30, [sp, #-0x10]!
  10015f188  mov     x29, sp
  10015f18c  stp     x20, x19, [sp, #-0x10]!
  10015f190  stp     x22, x21, [sp, #-0x10]!
  10015f194  stp     x24, x23, [sp, #-0x10]!
  10015f198  stp     x26, x25, [sp, #-0x10]!
  10015f19c  stp     x28, x27, [sp, #-0x10]!
  10015f1a0  sub     sp, sp, #0x120
  10015f1a4  str     x0, [sp, #0x48]
  10015f1a8  adrp    x8, #0x1003b0000
  10015f1ac  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015f1b0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015f1b4  stur    x8, [x29, #-0x58]
  10015f1b8  mov     x0, x2
  10015f1bc  bl      _objc_retain
  10015f1c0  mov     x19, x0
  10015f1c4  adrp    x8, #0x10041d000
  10015f1c8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015f1cc  adrp    x8, #0x100418000
  10015f1d0  nop
  10015f1d4  ldr     x1, [x8, #0x50]
  10015f1d8  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015f1dc  mov     x29, x29
  10015f1e0  bl      _objc_retainAutoreleasedReturnValue
  10015f1e4  str     x0, [sp, #0x50]
  10015f1e8  stp     xzr, xzr, [x29, #-0x68]
  10015f1ec  stp     xzr, xzr, [x29, #-0x78]
  10015f1f0  stp     xzr, xzr, [x29, #-0x88]
  10015f1f4  stp     xzr, xzr, [x29, #-0x98]
  10015f1f8  mov     x0, x19
  10015f1fc  bl      _objc_retain
  10015f200  str     x0, [sp, #0x30]
  10015f204  adrp    x8, #0x100416000
  10015f208  nop
  10015f20c  ldr     x1, [x8, #0xe00]
  10015f210  str     x1, [sp, #0x28]
  10015f214  sub     x2, x29, #0x98
  10015f218  add     x3, sp, #0x58
  10015f21c  mov     x4, #0x10
  10015f220  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10015f224  mov     x24, x0
  10015f228  str     x19, [sp, #0x10]
  10015f22c  cbz     x24, loc_10015f38c                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] == 0)
  10015f230  ldur    x8, [x29, #-0x88]
  10015f234  ldr     x8, [x8]
  10015f238  str     x8, [sp, #0x40]
  10015f23c  adrp    x8, #0x10041d000
  10015f240  nop
  10015f244  ldr     x8, [x8, #0x470]
  10015f248  str     x8, [sp, #0x38]
  10015f24c  adrp    x8, #0x10041d000
  10015f250  nop
  10015f254  ldr     x26, [x8, #0x508]
  10015f258  adrp    x8, #0x100416000
  10015f25c  nop
  10015f260  ldr     x27, [x8, #0xac8]
  10015f264  adrp    x8, #0x100419000
  10015f268  nop
  10015f26c  ldr     x28, [x8, #0x3e8]
  10015f270  adrp    x8, #0x10041d000
  10015f274  nop
  10015f278  ldr     x19, [x8, #0x510]
  10015f27c  adrp    x8, #0x100416000
  10015f280  nop
  10015f284  ldr     x23, [x8, #0xd90]
  10015f288  sub     x8, x29, #0x98
  10015f28c  str     x8, [sp, #0x20]
  10015f290  add     x8, sp, #0x58
  10015f294  str     x8, [sp, #0x18]
loc_10015f298:
  10015f298  mov     x25, #0
loc_10015f29c:
  10015f29c  ldur    x8, [x29, #-0x88]
  10015f2a0  ldr     x8, [x8]
  10015f2a4  ldr     x9, [sp, #0x40]
  10015f2a8  cmp     x8, x9
  10015f2ac  b.eq    loc_10015f2b8                            ; if (x8 == x9)
  10015f2b0  ldr     x0, [sp, #0x30]
  10015f2b4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10015f2b8:
  10015f2b8  ldur    x8, [x29, #-0x90]
  10015f2bc  ldr     x20, [x8, x25, lsl #3]
  10015f2c0  mov     x0, x20
  10015f2c4  ldr     x1, [sp, #0x38]
  10015f2c8  bl      _objc_msgSend                            ; [x0 serialized]
  10015f2cc  mov     x29, x29
  10015f2d0  bl      _objc_retainAutoreleasedReturnValue
  10015f2d4  mov     x22, x0
  10015f2d8  ldr     x0, [sp, #0x48]
  10015f2dc  mov     x1, x26
  10015f2e0  mov     x2, x22
  10015f2e4  bl      _objc_msgSend                            ; [self unserialize:[x0 serialized]]
  10015f2e8  mov     x29, x29
  10015f2ec  bl      _objc_retainAutoreleasedReturnValue
  10015f2f0  mov     x21, x0
  10015f2f4  mov     x0, x22
  10015f2f8  bl      _objc_release
  10015f2fc  adrp    x8, #0x10041e000
  10015f300  ldr     x0, [x8, #0x960]                         ; class TAGKeyValue
  10015f304  mov     x1, x27
  10015f308  bl      _objc_msgSend                            ; [TAGKeyValue alloc]
  10015f30c  mov     x22, x0
  10015f310  mov     x0, x20
  10015f314  mov     x1, x28
  10015f318  bl      _objc_msgSend                            ; [x0 key]
  10015f31c  mov     x29, x29
  10015f320  bl      _objc_retainAutoreleasedReturnValue
  10015f324  mov     x20, x0
  10015f328  mov     x0, x22
  10015f32c  mov     x1, x19
  10015f330  mov     x2, x20
  10015f334  mov     x3, x21
  10015f338  bl      _objc_msgSend                            ; [[TAGKeyValue alloc] initWithKey:[x0 key] value:[self unserialize:[x0 serialized]]]
  10015f33c  mov     x22, x0
  10015f340  ldr     x0, [sp, #0x50]
  10015f344  mov     x1, x23
  10015f348  mov     x2, x22
  10015f34c  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[[TAGKeyValue alloc] initWithKey:[x0 key] value:[self unserialize:[x0 serialized]]]]
  10015f350  mov     x0, x22
  10015f354  bl      _objc_release
  10015f358  mov     x0, x20
  10015f35c  bl      _objc_release
  10015f360  mov     x0, x21
  10015f364  bl      _objc_release
  10015f368  add     x25, x25, #1
  10015f36c  cmp     x25, x24
  10015f370  b.lo    loc_10015f29c                            ; if ((x25 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16])
  10015f374  mov     x4, #0x10
  10015f378  ldp     x1, x0, [sp, #0x28]
  10015f37c  ldp     x3, x2, [sp, #0x18]
  10015f380  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10015f384  mov     x24, x0
  10015f388  cbnz    x24, loc_10015f298                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] != 0)
loc_10015f38c:
  10015f38c  ldr     x19, [sp, #0x30]
  10015f390  mov     x0, x19
  10015f394  bl      _objc_release
  10015f398  mov     x0, x19
  10015f39c  bl      _objc_release
  10015f3a0  adrp    x8, #0x1003b0000
  10015f3a4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015f3a8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015f3ac  ldur    x9, [x29, #-0x58]
  10015f3b0  sub     x8, x8, x9
  10015f3b4  cbnz    x8, loc_10015f3dc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015f3b8  ldr     x0, [sp, #0x50]
  10015f3bc  sub     sp, x29, #0x50
  10015f3c0  ldp     x28, x27, [sp], #0x10
  10015f3c4  ldp     x26, x25, [sp], #0x10
  10015f3c8  ldp     x24, x23, [sp], #0x10
  10015f3cc  ldp     x22, x21, [sp], #0x10
  10015f3d0  ldp     x20, x19, [sp], #0x10
  10015f3d4  ldp     x29, x30, [sp], #0x10
  10015f3d8  b       _objc_autoreleaseReturnValue
loc_10015f3dc:
  10015f3dc  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015f3e0  mov     x19, x0
  10015f3e4  b       loc_10015f418
loc_10015f3e8:
  10015f3e8  mov     x19, x0
  10015f3ec  b       loc_10015f420
  10015f3f0  mov     x19, x0
  10015f3f4  mov     x0, x22
  10015f3f8  b       loc_10015f41c
  10015f3fc  mov     x19, x0
  10015f400  b       loc_10015f410
  10015f404  mov     x19, x0
  10015f408  mov     x0, x22
  10015f40c  bl      _objc_release
loc_10015f410:
  10015f410  mov     x0, x20
  10015f414  bl      _objc_release
loc_10015f418:
  10015f418  mov     x0, x21
loc_10015f41c:
  10015f41c  bl      _objc_release
loc_10015f420:
  10015f420  ldr     x0, [sp, #0x30]
  10015f424  bl      _objc_release
  10015f428  ldr     x0, [sp, #0x50]
  10015f42c  bl      _objc_release
loc_10015f430:
  10015f430  ldr     x0, [sp, #0x10]
  10015f434  bl      _objc_release
  10015f438  mov     x0, x19
  10015f43c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015f440  str     x19, [sp, #0x10]
  10015f444  mov     x19, x0
  10015f448  b       loc_10015f430
  10015f44c  str     x19, [sp, #0x10]
  10015f450  b       loc_10015f3e8
  10015f454  b       loc_10015f3e8

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl serializeValues:]
; address 0x10015f458  size 724  kind objc
; ======================================================================
  10015f458  stp     x29, x30, [sp, #-0x10]!
  10015f45c  mov     x29, sp
  10015f460  stp     x20, x19, [sp, #-0x10]!
  10015f464  stp     x22, x21, [sp, #-0x10]!
  10015f468  stp     x24, x23, [sp, #-0x10]!
  10015f46c  stp     x26, x25, [sp, #-0x10]!
  10015f470  stp     x28, x27, [sp, #-0x10]!
  10015f474  sub     sp, sp, #0x120
  10015f478  str     x0, [sp, #0x48]
  10015f47c  adrp    x8, #0x1003b0000
  10015f480  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015f484  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015f488  stur    x8, [x29, #-0x58]
  10015f48c  mov     x0, x2
  10015f490  bl      _objc_retain
  10015f494  mov     x19, x0
  10015f498  adrp    x8, #0x10041d000
  10015f49c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015f4a0  adrp    x8, #0x100418000
  10015f4a4  nop
  10015f4a8  ldr     x1, [x8, #0x50]
  10015f4ac  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015f4b0  mov     x29, x29
  10015f4b4  bl      _objc_retainAutoreleasedReturnValue
  10015f4b8  str     x0, [sp, #0x50]
  10015f4bc  stp     xzr, xzr, [x29, #-0x68]
  10015f4c0  stp     xzr, xzr, [x29, #-0x78]
  10015f4c4  stp     xzr, xzr, [x29, #-0x88]
  10015f4c8  stp     xzr, xzr, [x29, #-0x98]
  10015f4cc  mov     x0, x19
  10015f4d0  bl      _objc_retain
  10015f4d4  str     x0, [sp, #0x30]
  10015f4d8  adrp    x8, #0x100416000
  10015f4dc  nop
  10015f4e0  ldr     x1, [x8, #0xe00]
  10015f4e4  str     x1, [sp, #0x28]
  10015f4e8  sub     x2, x29, #0x98
  10015f4ec  add     x3, sp, #0x58
  10015f4f0  mov     x4, #0x10
  10015f4f4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10015f4f8  mov     x24, x0
  10015f4fc  str     x19, [sp, #0x10]
  10015f500  cbz     x24, loc_10015f660                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] == 0)
  10015f504  ldur    x8, [x29, #-0x88]
  10015f508  ldr     x8, [x8]
  10015f50c  str     x8, [sp, #0x40]
  10015f510  adrp    x8, #0x100418000
  10015f514  nop
  10015f518  ldr     x8, [x8, #0x800]
  10015f51c  str     x8, [sp, #0x38]
  10015f520  adrp    x8, #0x10041d000
  10015f524  nop
  10015f528  ldr     x26, [x8, #0x518]
  10015f52c  adrp    x8, #0x100416000
  10015f530  nop
  10015f534  ldr     x27, [x8, #0xac8]
  10015f538  adrp    x8, #0x100419000
  10015f53c  nop
  10015f540  ldr     x28, [x8, #0x3e8]
  10015f544  adrp    x8, #0x10041d000
  10015f548  nop
  10015f54c  ldr     x19, [x8, #0x520]
  10015f550  adrp    x8, #0x100416000
  10015f554  nop
  10015f558  ldr     x23, [x8, #0xd90]
  10015f55c  sub     x8, x29, #0x98
  10015f560  str     x8, [sp, #0x20]
  10015f564  add     x8, sp, #0x58
  10015f568  str     x8, [sp, #0x18]
loc_10015f56c:
  10015f56c  mov     x25, #0
loc_10015f570:
  10015f570  ldur    x8, [x29, #-0x88]
  10015f574  ldr     x8, [x8]
  10015f578  ldr     x9, [sp, #0x40]
  10015f57c  cmp     x8, x9
  10015f580  b.eq    loc_10015f58c                            ; if (x8 == x9)
  10015f584  ldr     x0, [sp, #0x30]
  10015f588  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10015f58c:
  10015f58c  ldur    x8, [x29, #-0x90]
  10015f590  ldr     x20, [x8, x25, lsl #3]
  10015f594  mov     x0, x20
  10015f598  ldr     x1, [sp, #0x38]
  10015f59c  bl      _objc_msgSend                            ; [x0 value]
  10015f5a0  mov     x29, x29
  10015f5a4  bl      _objc_retainAutoreleasedReturnValue
  10015f5a8  mov     x22, x0
  10015f5ac  ldr     x0, [sp, #0x48]
  10015f5b0  mov     x1, x26
  10015f5b4  mov     x2, x22
  10015f5b8  bl      _objc_msgSend                            ; [self serialize:[x0 value]]
  10015f5bc  mov     x29, x29
  10015f5c0  bl      _objc_retainAutoreleasedReturnValue
  10015f5c4  mov     x21, x0
  10015f5c8  mov     x0, x22
  10015f5cc  bl      _objc_release
  10015f5d0  adrp    x8, #0x10041e000
  10015f5d4  ldr     x0, [x8, #0x968]                         ; class TAGKeyAndSerialized
  10015f5d8  mov     x1, x27
  10015f5dc  bl      _objc_msgSend                            ; [TAGKeyAndSerialized alloc]
  10015f5e0  mov     x22, x0
  10015f5e4  mov     x0, x20
  10015f5e8  mov     x1, x28
  10015f5ec  bl      _objc_msgSend                            ; [x0 key]
  10015f5f0  mov     x29, x29
  10015f5f4  bl      _objc_retainAutoreleasedReturnValue
  10015f5f8  mov     x20, x0
  10015f5fc  mov     x0, x22
  10015f600  mov     x1, x19
  10015f604  mov     x2, x20
  10015f608  mov     x3, x21
  10015f60c  bl      _objc_msgSend                            ; [[TAGKeyAndSerialized alloc] initWithKey:[x0 key] serialized:[self serialize:[x0 value]]]
  10015f610  mov     x22, x0
  10015f614  ldr     x0, [sp, #0x50]
  10015f618  mov     x1, x23
  10015f61c  mov     x2, x22
  10015f620  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[[TAGKeyAndSerialized alloc] initWithKey:[x0 key] serialized:[self serialize:[x0 value]]]]
  10015f624  mov     x0, x22
  10015f628  bl      _objc_release
  10015f62c  mov     x0, x20
  10015f630  bl      _objc_release
  10015f634  mov     x0, x21
  10015f638  bl      _objc_release
  10015f63c  add     x25, x25, #1
  10015f640  cmp     x25, x24
  10015f644  b.lo    loc_10015f570                            ; if ((x25 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16])
  10015f648  mov     x4, #0x10
  10015f64c  ldp     x1, x0, [sp, #0x28]
  10015f650  ldp     x3, x2, [sp, #0x18]
  10015f654  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16]
  10015f658  mov     x24, x0
  10015f65c  cbnz    x24, loc_10015f56c                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x58] count:16] != 0)
loc_10015f660:
  10015f660  ldr     x19, [sp, #0x30]
  10015f664  mov     x0, x19
  10015f668  bl      _objc_release
  10015f66c  mov     x0, x19
  10015f670  bl      _objc_release
  10015f674  adrp    x8, #0x1003b0000
  10015f678  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015f67c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015f680  ldur    x9, [x29, #-0x58]
  10015f684  sub     x8, x8, x9
  10015f688  cbnz    x8, loc_10015f6b0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015f68c  ldr     x0, [sp, #0x50]
  10015f690  sub     sp, x29, #0x50
  10015f694  ldp     x28, x27, [sp], #0x10
  10015f698  ldp     x26, x25, [sp], #0x10
  10015f69c  ldp     x24, x23, [sp], #0x10
  10015f6a0  ldp     x22, x21, [sp], #0x10
  10015f6a4  ldp     x20, x19, [sp], #0x10
  10015f6a8  ldp     x29, x30, [sp], #0x10
  10015f6ac  b       _objc_autoreleaseReturnValue
loc_10015f6b0:
  10015f6b0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015f6b4  mov     x19, x0
  10015f6b8  b       loc_10015f6ec
loc_10015f6bc:
  10015f6bc  mov     x19, x0
  10015f6c0  b       loc_10015f6f4
  10015f6c4  mov     x19, x0
  10015f6c8  mov     x0, x22
  10015f6cc  b       loc_10015f6f0
  10015f6d0  mov     x19, x0
  10015f6d4  b       loc_10015f6e4
  10015f6d8  mov     x19, x0
  10015f6dc  mov     x0, x22
  10015f6e0  bl      _objc_release
loc_10015f6e4:
  10015f6e4  mov     x0, x20
  10015f6e8  bl      _objc_release
loc_10015f6ec:
  10015f6ec  mov     x0, x21
loc_10015f6f0:
  10015f6f0  bl      _objc_release
loc_10015f6f4:
  10015f6f4  ldr     x0, [sp, #0x30]
  10015f6f8  bl      _objc_release
  10015f6fc  ldr     x0, [sp, #0x50]
  10015f700  bl      _objc_release
loc_10015f704:
  10015f704  ldr     x0, [sp, #0x10]
  10015f708  bl      _objc_release
  10015f70c  mov     x0, x19
  10015f710  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015f714  str     x19, [sp, #0x10]
  10015f718  mov     x19, x0
  10015f71c  b       loc_10015f704
  10015f720  str     x19, [sp, #0x10]
  10015f724  b       loc_10015f6bc
  10015f728  b       loc_10015f6bc

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl unserialize:]
; address 0x10015f72c  size 48  kind objc
; ======================================================================
  10015f72c  stp     x29, x30, [sp, #-0x10]!
  10015f730  mov     x29, sp
  10015f734  adrp    x8, #0x10041d000
  10015f738  ldr     x0, [x8, #0xf48]                         ; class NSKeyedUnarchiver
  10015f73c  adrp    x8, #0x100416000
  10015f740  nop
  10015f744  ldr     x1, [x8, #0xde0]
  10015f748  bl      _objc_msgSend                            ; [NSKeyedUnarchiver unarchiveObjectWithData:arg1]
  10015f74c  mov     x29, x29
  10015f750  bl      _objc_retainAutoreleasedReturnValue
  10015f754  ldp     x29, x30, [sp], #0x10
  10015f758  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl serialize:]
; address 0x10015f75c  size 48  kind objc
; ======================================================================
  10015f75c  stp     x29, x30, [sp, #-0x10]!
  10015f760  mov     x29, sp
  10015f764  adrp    x8, #0x10041d000
  10015f768  ldr     x0, [x8, #0xf40]                         ; class NSKeyedArchiver
  10015f76c  adrp    x8, #0x100416000
  10015f770  nop
  10015f774  ldr     x1, [x8, #0xdc0]
  10015f778  bl      _objc_msgSend                            ; [NSKeyedArchiver archivedDataWithRootObject:arg1]
  10015f77c  mov     x29, x29
  10015f780  bl      _objc_retainAutoreleasedReturnValue
  10015f784  ldp     x29, x30, [sp], #0x10
  10015f788  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl loadSerialized]
; address 0x10015f78c  size 512  kind objc
; ======================================================================
  10015f78c  stp     x29, x30, [sp, #-0x10]!
  10015f790  mov     x29, sp
  10015f794  stp     x20, x19, [sp, #-0x10]!
  10015f798  stp     x22, x21, [sp, #-0x10]!
  10015f79c  stp     x24, x23, [sp, #-0x10]!
  10015f7a0  stp     x26, x25, [sp, #-0x10]!
  10015f7a4  stp     x28, x27, [sp, #-0x10]!
  10015f7a8  sub     sp, sp, #0x10
  10015f7ac  mov     x20, x0
  10015f7b0  adrp    x8, #0x10041d000
  10015f7b4  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015f7b8  adrp    x8, #0x100418000
  10015f7bc  nop
  10015f7c0  ldr     x1, [x8, #0x50]
  10015f7c4  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015f7c8  mov     x29, x29
  10015f7cc  bl      _objc_retainAutoreleasedReturnValue
  10015f7d0  str     x0, [sp, #8]
  10015f7d4  adrp    x8, #0x10041d000
  10015f7d8  nop
  10015f7dc  ldr     x21, [x8, #0x528]
  10015f7e0  adrp    x8, #0x10041c000
  10015f7e4  nop
  10015f7e8  ldr     x22, [x8, #0x478]
  10015f7ec  adrp    x8, #0x10041d000
  10015f7f0  nop
  10015f7f4  ldr     x23, [x8, #0x530]
  10015f7f8  adrp    x8, #0x100416000
  10015f7fc  nop
  10015f800  ldr     x24, [x8, #0xac8]
  10015f804  adrp    x8, #0x10041d000
  10015f808  nop
  10015f80c  ldr     x25, [x8, #0x520]
  10015f810  adrp    x8, #0x100416000
  10015f814  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10015f818  ldr     x26, [x8]
  10015f81c  b       loc_10015f838
loc_10015f820:
  10015f820  mov     x0, x19
  10015f824  bl      _objc_release
  10015f828  mov     x0, x28
  10015f82c  bl      _objc_release
  10015f830  mov     x0, x27
  10015f834  bl      _objc_release
loc_10015f838:
  10015f838  mov     x0, x20
  10015f83c  mov     x1, x21
  10015f840  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  10015f844  bl      _sqlite3_step                            ; sqlite3_step([self queryAllEntriesStmt])
  10015f848  cmp     w0, #0x64
  10015f84c  b.ne    loc_10015f920                            ; if (sqlite3_step([self queryAllEntriesStmt]) != 100)
  10015f850  mov     x0, x20
  10015f854  mov     x1, x21
  10015f858  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  10015f85c  mov     w1, #0
  10015f860  bl      _sqlite3_column_text                     ; sqlite3_column_text([self queryAllEntriesStmt], 0)
  10015f864  mov     x2, x0
  10015f868  adrp    x8, #0x10041d000
  10015f86c  ldr     x0, [x8, #0xf78]                         ; class NSString
  10015f870  mov     x1, x22
  10015f874  bl      _objc_msgSend                            ; [NSString stringWithUTF8String:sqlite3_column_text([self queryAllEntriesStmt], 0)]
  10015f878  mov     x29, x29
  10015f87c  bl      _objc_retainAutoreleasedReturnValue
  10015f880  mov     x27, x0
  10015f884  mov     x0, x20
  10015f888  mov     x1, x21
  10015f88c  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  10015f890  mov     w1, #1
  10015f894  bl      _sqlite3_column_blob                     ; sqlite3_column_blob([self queryAllEntriesStmt], 1)
  10015f898  mov     x28, x0
  10015f89c  mov     x0, x20
  10015f8a0  mov     x1, x21
  10015f8a4  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  10015f8a8  mov     w1, #1
  10015f8ac  bl      _sqlite3_column_bytes                    ; sqlite3_column_bytes([self queryAllEntriesStmt], 1)
  10015f8b0  adrp    x8, #0x10041e000
  10015f8b4  ldr     x8, [x8, #0x770]                         ; class NSData
  10015f8b8  sxtw    x3, w0
  10015f8bc  mov     x0, x8
  10015f8c0  mov     x1, x23
  10015f8c4  mov     x2, x28
  10015f8c8  bl      _objc_msgSend                            ; [NSData dataWithBytes:sqlite3_column_blob([self queryAllEntriesStmt], 1) length:sqlite3_column_bytes([self queryAllEntriesStmt], 1)]
  10015f8cc  mov     x29, x29
  10015f8d0  bl      _objc_retainAutoreleasedReturnValue
  10015f8d4  mov     x28, x0
  10015f8d8  adrp    x8, #0x10041e000
  10015f8dc  ldr     x0, [x8, #0x968]                         ; class TAGKeyAndSerialized
  10015f8e0  mov     x1, x24
  10015f8e4  bl      _objc_msgSend                            ; [TAGKeyAndSerialized alloc]
  10015f8e8  mov     x1, x25
  10015f8ec  mov     x2, x27
  10015f8f0  mov     x3, x28
  10015f8f4  bl      _objc_msgSend                            ; [[TAGKeyAndSerialized alloc] initWithKey:[NSString stringWithUTF8String:sqlite3_column_text([self queryAllEntriesStmt], 0)] serialized:[NSData dataWithBytes:sqlite3_column_blob([self queryAllEntriesStmt], 1) length:sqlite3_column_bytes([self queryAllEntriesStmt], 1)]]
  10015f8f8  mov     x19, x0
  10015f8fc  ldr     x0, [sp, #8]
  10015f900  mov     x1, x26
  10015f904  mov     x2, x19
  10015f908  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[[TAGKeyAndSerialized alloc] initWithKey:[NSString stringWithUTF8String:sqlite3_column_text([self queryAllEntriesStmt], 0)] serialized:[NSData dataWithBytes:sqlite3_column_blob([self queryAllEntriesStmt], 1) length:sqlite3_column_bytes([self queryAllEntriesStmt], 1)]]]
  10015f90c  b       loc_10015f820
  10015f910  mov     x20, x0
  10015f914  mov     x0, x19
  10015f918  bl      _objc_release
  10015f91c  b       loc_10015f964
loc_10015f920:
  10015f920  mov     x0, x20
  10015f924  mov     x1, x21
  10015f928  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  10015f92c  bl      _sqlite3_reset                           ; sqlite3_reset([self queryAllEntriesStmt])
  10015f930  ldr     x0, [sp, #8]
  10015f934  sub     sp, x29, #0x50
  10015f938  ldp     x28, x27, [sp], #0x10
  10015f93c  ldp     x26, x25, [sp], #0x10
  10015f940  ldp     x24, x23, [sp], #0x10
  10015f944  ldp     x22, x21, [sp], #0x10
  10015f948  ldp     x20, x19, [sp], #0x10
  10015f94c  ldp     x29, x30, [sp], #0x10
  10015f950  b       _objc_autoreleaseReturnValue
  10015f954  b       loc_10015f978
  10015f958  mov     x20, x0
  10015f95c  b       loc_10015f96c
  10015f960  mov     x20, x0
loc_10015f964:
  10015f964  mov     x0, x28
  10015f968  bl      _objc_release
loc_10015f96c:
  10015f96c  mov     x0, x27
  10015f970  bl      _objc_release
  10015f974  b       loc_10015f97c
loc_10015f978:
  10015f978  mov     x20, x0
loc_10015f97c:
  10015f97c  ldr     x0, [sp, #8]
  10015f980  bl      _objc_release
  10015f984  mov     x0, x20
  10015f988  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl writeEntriesToDatabase:expireTime:]
; address 0x10015f98c  size 908  kind objc
; ======================================================================
  10015f98c  stp     x29, x30, [sp, #-0x10]!
  10015f990  mov     x29, sp
  10015f994  stp     x20, x19, [sp, #-0x10]!
  10015f998  stp     x22, x21, [sp, #-0x10]!
  10015f99c  stp     x24, x23, [sp, #-0x10]!
  10015f9a0  stp     x26, x25, [sp, #-0x10]!
  10015f9a4  stp     x28, x27, [sp, #-0x10]!
  10015f9a8  sub     sp, sp, #0x140
  10015f9ac  str     x3, [sp, #0x70]
  10015f9b0  mov     x21, x0
  10015f9b4  adrp    x8, #0x1003b0000
  10015f9b8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015f9bc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015f9c0  stur    x8, [x29, #-0x58]
  10015f9c4  mov     x0, x2
  10015f9c8  bl      _objc_retain
  10015f9cc  stp     xzr, xzr, [x29, #-0x68]
  10015f9d0  stp     xzr, xzr, [x29, #-0x78]
  10015f9d4  stp     xzr, xzr, [x29, #-0x88]
  10015f9d8  stp     xzr, xzr, [x29, #-0x98]
  10015f9dc  bl      _objc_retain
  10015f9e0  str     x0, [sp, #0x48]
  10015f9e4  adrp    x8, #0x100416000
  10015f9e8  nop
  10015f9ec  ldr     x1, [x8, #0xe00]
  10015f9f0  str     x1, [sp, #0x28]
  10015f9f4  sub     x2, x29, #0x98
  10015f9f8  add     x3, sp, #0x78
  10015f9fc  mov     x4, #0x10
  10015fa00  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16]
  10015fa04  mov     x23, x0
  10015fa08  cbz     x23, loc_10015fc6c                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16] == 0)
  10015fa0c  ldur    x8, [x29, #-0x88]
  10015fa10  adrp    x9, #0x10041d000
  10015fa14  nop
  10015fa18  adrp    x10, #0x100419000
  10015fa1c  add     x10, x10, #0x3e8                         ; &@selector(key)
  10015fa20  adrp    x11, #0x10041a000
  10015fa24  add     x11, x11, #0x18                          ; &@selector(UTF8String)
  10015fa28  ldr     x24, [x9, #0x538]
  10015fa2c  ldr     x9, [x10]
  10015fa30  str     x9, [sp, #0x60]
  10015fa34  ldr     x9, [x11]
  10015fa38  str     x9, [sp, #0x58]
  10015fa3c  ldr     x8, [x8]
  10015fa40  str     x8, [sp, #0x68]
  10015fa44  adrp    x8, #0x10041d000
  10015fa48  nop
  10015fa4c  ldr     x27, [x8, #0x470]
  10015fa50  adrp    x8, #0x10041c000
  10015fa54  nop
  10015fa58  ldr     x8, [x8, #0x490]
  10015fa5c  str     x8, [sp, #0x50]
  10015fa60  adrp    x8, #0x100417000
  10015fa64  nop
  10015fa68  ldr     x22, [x8, #0xc58]
  10015fa6c  adrp    x8, #0x10041d000
  10015fa70  nop
  10015fa74  ldr     x8, [x8, #0x500]
  10015fa78  str     x8, [sp, #0x40]
  10015fa7c  adrp    x8, #0x100416000
  10015fa80  nop
  10015fa84  ldr     x8, [x8, #0xee8]
  10015fa88  str     x8, [sp, #0x38]
  10015fa8c  adrp    x8, #0x10041b000
  10015fa90  nop
  10015fa94  sub     x9, x29, #0x98
  10015fa98  str     x9, [sp, #0x20]
  10015fa9c  add     x9, sp, #0x78
  10015faa0  str     x9, [sp, #0x18]
  10015faa4  ldr     x8, [x8, #0xdd0]
  10015faa8  str     x8, [sp, #0x30]
loc_10015faac:
  10015faac  mov     x28, #0
loc_10015fab0:
  10015fab0  ldur    x8, [x29, #-0x88]
  10015fab4  ldr     x8, [x8]
  10015fab8  ldr     x9, [sp, #0x68]
  10015fabc  cmp     x8, x9
  10015fac0  b.eq    loc_10015facc                            ; if (x8 == x9)
  10015fac4  ldr     x0, [sp, #0x48]
  10015fac8  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10015facc:
  10015facc  ldur    x8, [x29, #-0x90]
  10015fad0  ldr     x19, [x8, x28, lsl #3]
  10015fad4  mov     x0, x21
  10015fad8  mov     x1, x24
  10015fadc  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  10015fae0  mov     x20, x0
  10015fae4  mov     x0, x19
  10015fae8  ldr     x1, [sp, #0x60]
  10015faec  bl      _objc_msgSend                            ; [x0 key]
  10015faf0  mov     x29, x29
  10015faf4  bl      _objc_retainAutoreleasedReturnValue
  10015faf8  bl      _objc_retainAutorelease
  10015fafc  mov     x25, x0
  10015fb00  ldr     x1, [sp, #0x58]
  10015fb04  bl      _objc_msgSend                            ; [[x0 key] UTF8String]
  10015fb08  mov     x2, x0
  10015fb0c  mov     w1, #1
  10015fb10  mov     w3, #-1
  10015fb14  mov     x0, x20
  10015fb18  mov     x4, #0
  10015fb1c  bl      _sqlite3_bind_text                       ; sqlite3_bind_text([self insertAnEntryStmt], 1, [[x0 key] UTF8String], 0xffffffff)
  10015fb20  mov     x0, x25
  10015fb24  bl      _objc_release
  10015fb28  mov     x0, x21
  10015fb2c  mov     x1, x24
  10015fb30  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  10015fb34  mov     x25, x0
  10015fb38  mov     x0, x19
  10015fb3c  mov     x1, x27
  10015fb40  bl      _objc_msgSend                            ; [x0 serialized]
  10015fb44  mov     x29, x29
  10015fb48  bl      _objc_retainAutoreleasedReturnValue
  10015fb4c  bl      _objc_retainAutorelease
  10015fb50  mov     x20, x0
  10015fb54  ldr     x1, [sp, #0x50]
  10015fb58  bl      _objc_msgSend                            ; [[x0 serialized] bytes]
  10015fb5c  mov     x26, x0
  10015fb60  mov     x0, x19
  10015fb64  mov     x1, x27
  10015fb68  bl      _objc_msgSend                            ; [x0 serialized]
  10015fb6c  mov     x29, x29
  10015fb70  bl      _objc_retainAutoreleasedReturnValue
  10015fb74  mov     x19, x0
  10015fb78  mov     x1, x22
  10015fb7c  bl      _objc_msgSend                            ; [[x0 serialized] length]
  10015fb80  mov     x3, x0
  10015fb84  mov     w1, #2
  10015fb88  mov     x0, x25
  10015fb8c  mov     x2, x26
  10015fb90  mov     x4, #0
  10015fb94  bl      _sqlite3_bind_blob                       ; sqlite3_bind_blob([self insertAnEntryStmt], 2, [[x0 serialized] bytes], [[x0 serialized] length])
  10015fb98  mov     x0, x19
  10015fb9c  bl      _objc_release
  10015fba0  mov     x0, x20
  10015fba4  bl      _objc_release
  10015fba8  mov     x0, x21
  10015fbac  mov     x1, x24
  10015fbb0  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  10015fbb4  mov     w1, #3
  10015fbb8  ldr     x2, [sp, #0x70]
  10015fbbc  bl      _sqlite3_bind_int64                      ; sqlite3_bind_int64([self insertAnEntryStmt], 3, arg2)
  10015fbc0  mov     x0, x21
  10015fbc4  mov     x1, x24
  10015fbc8  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  10015fbcc  bl      _sqlite3_step                            ; sqlite3_step([self insertAnEntryStmt])
  10015fbd0  cmp     w0, #0x65
  10015fbd4  b.eq    loc_10015fc34                            ; if (sqlite3_step([self insertAnEntryStmt]) == 101)
  10015fbd8  adrp    x8, #0x10041e000
  10015fbdc  ldr     x19, [x8, #0x538]                        ; class TAGLog
  10015fbe0  adrp    x8, #0x10041d000
  10015fbe4  ldr     x20, [x8, #0xf78]                        ; class NSString
  10015fbe8  mov     x0, x21
  10015fbec  ldr     x1, [sp, #0x40]
  10015fbf0  bl      _objc_msgSend                            ; [self database]
  10015fbf4  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  10015fbf8  str     x0, [sp]
  10015fbfc  mov     x0, x20
  10015fc00  ldr     x1, [sp, #0x38]
  10015fc04  adrp    x2, #0x1003c8000
  10015fc08  add     x2, x2, #0x4d0                           ; @"Failed to insert data: %s"
  10015fc0c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Failed to insert data: %s", sqlite3_errmsg([self database])]
  10015fc10  mov     x29, x29
  10015fc14  bl      _objc_retainAutoreleasedReturnValue
  10015fc18  mov     x20, x0
  10015fc1c  mov     x0, x19
  10015fc20  ldr     x1, [sp, #0x30]
  10015fc24  mov     x2, x20
  10015fc28  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Failed to insert data: %s", sqlite3_errmsg([self database])]]
  10015fc2c  mov     x0, x20
  10015fc30  bl      _objc_release
loc_10015fc34:
  10015fc34  mov     x0, x21
  10015fc38  mov     x1, x24
  10015fc3c  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  10015fc40  bl      _sqlite3_reset                           ; sqlite3_reset([self insertAnEntryStmt])
  10015fc44  add     x28, x28, #1
  10015fc48  cmp     x28, x23
  10015fc4c  b.lo    loc_10015fab0                            ; if ((x28 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16])
  10015fc50  mov     x4, #0x10
  10015fc54  ldr     x0, [sp, #0x48]
  10015fc58  ldp     x2, x1, [sp, #0x20]
  10015fc5c  ldr     x3, [sp, #0x18]
  10015fc60  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16]
  10015fc64  mov     x23, x0
  10015fc68  cbnz    x23, loc_10015faac                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16] != 0)
loc_10015fc6c:
  10015fc6c  ldr     x19, [sp, #0x48]
  10015fc70  mov     x0, x19
  10015fc74  bl      _objc_release
  10015fc78  mov     x0, x19
  10015fc7c  bl      _objc_release
  10015fc80  adrp    x8, #0x1003b0000
  10015fc84  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015fc88  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015fc8c  ldur    x9, [x29, #-0x58]
  10015fc90  sub     x8, x8, x9
  10015fc94  cbnz    x8, loc_10015fcb8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015fc98  sub     sp, x29, #0x50
  10015fc9c  ldp     x28, x27, [sp], #0x10
  10015fca0  ldp     x26, x25, [sp], #0x10
  10015fca4  ldp     x24, x23, [sp], #0x10
  10015fca8  ldp     x22, x21, [sp], #0x10
  10015fcac  ldp     x20, x19, [sp], #0x10
  10015fcb0  ldp     x29, x30, [sp], #0x10
  10015fcb4  ret
loc_10015fcb8:
  10015fcb8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10015fcbc:
  10015fcbc  mov     x21, x0
  10015fcc0  b       loc_10015fcf4
  10015fcc4  mov     x21, x0
  10015fcc8  mov     x0, x25
  10015fccc  b       loc_10015fcf0
  10015fcd0  mov     x21, x0
  10015fcd4  b       loc_10015fcec
  10015fcd8  mov     x21, x0
  10015fcdc  mov     x0, x19
  10015fce0  bl      _objc_release
  10015fce4  b       loc_10015fcec
  10015fce8  mov     x21, x0
loc_10015fcec:
  10015fcec  mov     x0, x20
loc_10015fcf0:
  10015fcf0  bl      _objc_release
loc_10015fcf4:
  10015fcf4  ldr     x19, [sp, #0x48]
  10015fcf8  mov     x0, x19
  10015fcfc  bl      _objc_release
  10015fd00  mov     x0, x19
  10015fd04  bl      _objc_release
  10015fd08  mov     x0, x21
  10015fd0c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015fd10  b       loc_10015fcbc
  10015fd14  b       loc_10015fcbc

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl makeRoomForEntries:]
; address 0x10015fd18  size 328  kind objc
; ======================================================================
  10015fd18  stp     x29, x30, [sp, #-0x10]!
  10015fd1c  mov     x29, sp
  10015fd20  stp     x20, x19, [sp, #-0x10]!
  10015fd24  stp     x22, x21, [sp, #-0x10]!
  10015fd28  sub     sp, sp, #0x10
  10015fd2c  mov     x20, x2
  10015fd30  mov     x19, x0
  10015fd34  adrp    x8, #0x10041d000
  10015fd38  nop
  10015fd3c  ldr     x1, [x8, #0x540]
  10015fd40  bl      _objc_msgSend                            ; [self numStoredEntries]
  10015fd44  mov     x21, x0
  10015fd48  adrp    x8, #0x10041d000
  10015fd4c  nop
  10015fd50  ldr     x1, [x8, #0x548]
  10015fd54  mov     x0, x19
  10015fd58  bl      _objc_msgSend                            ; [self maxNumStoredItems]
  10015fd5c  sub     x8, x21, x0
  10015fd60  add     x2, x8, x20
  10015fd64  cmp     x2, #1
  10015fd68  b.lt    loc_10015fe28                            ; if ((([self numStoredEntries] - [self maxNumStoredItems]) + arg1) < 1)
  10015fd6c  adrp    x8, #0x10041d000
  10015fd70  nop
  10015fd74  ldr     x1, [x8, #0x550]
  10015fd78  mov     x0, x19
  10015fd7c  bl      _objc_msgSend                            ; [self peekEntryIds:(([self numStoredEntries] - [self maxNumStoredItems]) + arg1)]
  10015fd80  mov     x29, x29
  10015fd84  bl      _objc_retainAutoreleasedReturnValue
  10015fd88  mov     x20, x0
  10015fd8c  adrp    x8, #0x10041e000
  10015fd90  ldr     x21, [x8, #0x538]                        ; class TAGLog
  10015fd94  adrp    x8, #0x10041d000
  10015fd98  ldr     x22, [x8, #0xf78]                        ; class NSString
  10015fd9c  adrp    x8, #0x100416000
  10015fda0  nop
  10015fda4  ldr     x1, [x8, #0xe30]
  10015fda8  bl      _objc_msgSend                            ; [[self peekEntryIds:(([self numStoredEntries] - [self maxNumStoredItems]) + arg1)] count]
  10015fdac  adrp    x8, #0x100416000
  10015fdb0  nop
  10015fdb4  ldr     x1, [x8, #0xee8]
  10015fdb8  str     x0, [sp]
  10015fdbc  adrp    x2, #0x1003c8000
  10015fdc0  add     x2, x2, #0x4f0                           ; @"DataLayer store full, deleting %lu entries to make room."
  10015fdc4  mov     x0, x22
  10015fdc8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"DataLayer store full, deleting %lu entries to make room.", [[self peekEntryIds:(([self numStoredEntries] - [self maxNumStoredItems]) + arg1…]
  10015fdcc  mov     x29, x29
  10015fdd0  bl      _objc_retainAutoreleasedReturnValue
  10015fdd4  mov     x22, x0
  10015fdd8  adrp    x8, #0x10041b000
  10015fddc  nop
  10015fde0  ldr     x1, [x8, #0xea0]
  10015fde4  mov     x0, x21
  10015fde8  mov     x2, x22
  10015fdec  bl      _objc_msgSend                            ; [TAGLog info:[NSString stringWithFormat:@"DataLayer store full, deleting %lu entries to make room.", [[self peekEntryIds:(([self numStoredEntries] - [self maxNumStoredItems]) + arg1…]]
  10015fdf0  mov     x0, x22
  10015fdf4  bl      _objc_release
  10015fdf8  adrp    x8, #0x10041d000
  10015fdfc  nop
  10015fe00  ldr     x1, [x8, #0x558]
  10015fe04  mov     x0, x19
  10015fe08  mov     x2, x20
  10015fe0c  bl      _objc_msgSend                            ; [self deleteEntries:[self peekEntryIds:(([self numStoredEntries] - [self maxNumStoredItems]) + arg1)]]
  10015fe10  mov     x0, x20
  10015fe14  sub     sp, x29, #0x20
  10015fe18  ldp     x22, x21, [sp], #0x10
  10015fe1c  ldp     x20, x19, [sp], #0x10
  10015fe20  ldp     x29, x30, [sp], #0x10
  10015fe24  b       _objc_release
loc_10015fe28:
  10015fe28  sub     sp, x29, #0x20
  10015fe2c  ldp     x22, x21, [sp], #0x10
  10015fe30  ldp     x20, x19, [sp], #0x10
  10015fe34  ldp     x29, x30, [sp], #0x10
  10015fe38  ret
  10015fe3c  mov     x19, x0
  10015fe40  mov     x0, x22
  10015fe44  bl      _objc_release
  10015fe48  b       loc_10015fe50
  10015fe4c  mov     x19, x0
loc_10015fe50:
  10015fe50  mov     x0, x20
  10015fe54  bl      _objc_release
  10015fe58  mov     x0, x19
  10015fe5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl deleteEntries:]
; address 0x10015fe60  size 784  kind objc
; ======================================================================
  10015fe60  stp     x29, x30, [sp, #-0x10]!
  10015fe64  mov     x29, sp
  10015fe68  stp     x20, x19, [sp, #-0x10]!
  10015fe6c  stp     x22, x21, [sp, #-0x10]!
  10015fe70  stp     x24, x23, [sp, #-0x10]!
  10015fe74  stp     x26, x25, [sp, #-0x10]!
  10015fe78  stp     x28, x27, [sp, #-0x10]!
  10015fe7c  sub     sp, sp, #0x110
  10015fe80  mov     x21, x0
  10015fe84  adrp    x22, #0x1003b0000
  10015fe88  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10015fe8c  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  10015fe90  stur    x8, [x29, #-0x58]
  10015fe94  mov     x0, x2
  10015fe98  bl      _objc_retain
  10015fe9c  mov     x20, x0
  10015fea0  adrp    x8, #0x10041d000
  10015fea4  ldr     x19, [x8, #0xf78]                        ; class NSString
  10015fea8  adrp    x8, #0x100416000
  10015feac  nop
  10015feb0  ldr     x1, [x8, #0xe30]
  10015feb4  bl      _objc_msgSend                            ; [arg1 count]
  10015feb8  mov     x2, x0
  10015febc  adrp    x8, #0x10041d000
  10015fec0  nop
  10015fec4  ldr     x1, [x8, #0x560]
  10015fec8  mov     x0, x21
  10015fecc  bl      _objc_msgSend                            ; [self questionMarks:[arg1 count]]
  10015fed0  mov     x29, x29
  10015fed4  bl      _objc_retainAutoreleasedReturnValue
  10015fed8  mov     x23, x0
  10015fedc  adrp    x8, #0x100416000
  10015fee0  nop
  10015fee4  ldr     x24, [x8, #0xee8]
  10015fee8  adrp    x8, #0x1003c8000
  10015feec  add     x8, x8, #0x410                           ; @"ID"
  10015fef0  adrp    x9, #0x1003c8000
  10015fef4  add     x9, x9, #0x3b0                           ; @"datalayer"
  10015fef8  stp     x8, x23, [sp, #8]
  10015fefc  str     x9, [sp]
  10015ff00  adrp    x2, #0x1003c8000
  10015ff04  add     x2, x2, #0x510                           ; @"DELETE from %@ WHERE %@ IN (%@);"
  10015ff08  mov     x0, x19
  10015ff0c  mov     x1, x24
  10015ff10  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self questionMarks:[arg1 count]]]
  10015ff14  mov     x29, x29
  10015ff18  bl      _objc_retainAutoreleasedReturnValue
  10015ff1c  mov     x25, x0
  10015ff20  mov     x0, x23
  10015ff24  bl      _objc_release
  10015ff28  adrp    x8, #0x10041d000
  10015ff2c  nop
  10015ff30  ldr     x1, [x8, #0x4f8]
  10015ff34  adrp    x3, #0x1003c8000
  10015ff38  add     x3, x3, #0x530                           ; @"delete old Entries"
  10015ff3c  mov     x0, x21
  10015ff40  mov     x2, x25
  10015ff44  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self questionMarks:[arg1 count]]] description:@"delete old Entries"]
  10015ff48  mov     x23, x0
  10015ff4c  cbz     x23, loc_1001600cc                       ; if ([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self questionMarks:[arg1 count]]] description:@"delete old Entries"] == 0)
  10015ff50  stp     x24, x21, [sp, #0x28]
  10015ff54  str     x25, [sp, #0x38]
  10015ff58  stp     xzr, xzr, [x29, #-0x68]
  10015ff5c  stp     xzr, xzr, [x29, #-0x78]
  10015ff60  stp     xzr, xzr, [x29, #-0x88]
  10015ff64  stp     xzr, xzr, [x29, #-0x98]
  10015ff68  mov     x0, x20
  10015ff6c  str     x20, [sp, #0x40]
  10015ff70  bl      _objc_retain
  10015ff74  mov     x24, x0
  10015ff78  adrp    x8, #0x100416000
  10015ff7c  nop
  10015ff80  ldr     x25, [x8, #0xe00]
  10015ff84  sub     x2, x29, #0x98
  10015ff88  add     x3, sp, #0x48
  10015ff8c  mov     x4, #0x10
  10015ff90  mov     x1, x25
  10015ff94  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10015ff98  mov     x26, x0
  10015ff9c  cbz     x26, loc_100160030                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10015ffa0  ldur    x8, [x29, #-0x88]
  10015ffa4  ldr     x22, [x8]
  10015ffa8  adrp    x8, #0x100417000
  10015ffac  nop
  10015ffb0  ldr     x27, [x8, #0x110]
  10015ffb4  mov     w8, #1
  10015ffb8  sub     x28, x29, #0x98
  10015ffbc  add     x19, sp, #0x48
loc_10015ffc0:
  10015ffc0  mov     x20, #0
  10015ffc4  ubfx    x21, x8, #0, #0x20
loc_10015ffc8:
  10015ffc8  ldur    x8, [x29, #-0x88]
  10015ffcc  ldr     x8, [x8]
  10015ffd0  cmp     x8, x22
  10015ffd4  b.eq    loc_10015ffe0                            ; if (x8 == x22)
  10015ffd8  mov     x0, x24
  10015ffdc  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10015ffe0:
  10015ffe0  ldur    x8, [x29, #-0x90]
  10015ffe4  ldr     x0, [x8, x20, lsl #3]
  10015ffe8  mov     x1, x27
  10015ffec  bl      _objc_msgSend                            ; [x0 intValue]
  10015fff0  mov     x2, x0
  10015fff4  add     x1, x21, x20
  10015fff8  mov     x0, x23
  10015fffc  bl      _sqlite3_bind_int                        ; sqlite3_bind_int([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self questionMarks:[arg1 count]]] description:@"delete old Entries"], (x21 + x20), [x0 intValue])
  100160000  add     x20, x20, #1
  100160004  cmp     x20, x26
  100160008  b.lo    loc_10015ffc8                            ; if ((x20 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10016000c  mov     x4, #0x10
  100160010  mov     x0, x24
  100160014  mov     x1, x25
  100160018  mov     x2, x28
  10016001c  mov     x3, x19
  100160020  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  100160024  mov     x26, x0
  100160028  add     x8, x21, x20
  10016002c  cbnz    x26, loc_10015ffc0                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_100160030:
  100160030  mov     x0, x24
  100160034  bl      _objc_release
  100160038  mov     x0, x23
  10016003c  ldp     x25, x20, [sp, #0x38]
  100160040  bl      _sqlite3_step                            ; sqlite3_step([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self questionMarks:[arg1 count]]] description:@"delete old Entries"])
  100160044  adrp    x22, #0x1003b0000
  100160048  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10016004c  ldp     x21, x9, [sp, #0x28]
  100160050  adrp    x10, #0x10041d000
  100160054  cmp     w0, #1
  100160058  b.ne    loc_1001600c4                            ; if (sqlite3_step([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self… != 1)
  10016005c  adrp    x8, #0x10041e000
  100160060  ldr     x19, [x8, #0x538]                        ; class TAGLog
  100160064  ldr     x24, [x10, #0xf78]                       ; class NSString
  100160068  adrp    x8, #0x10041d000
  10016006c  nop
  100160070  ldr     x1, [x8, #0x500]
  100160074  mov     x0, x9
  100160078  bl      _objc_msgSend                            ; [self database]
  10016007c  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  100160080  str     x0, [sp]
  100160084  adrp    x2, #0x1003c8000
  100160088  add     x2, x2, #0x4b0                           ; @"Error: Failed to delete entries from database: %s"
  10016008c  mov     x0, x24
  100160090  mov     x1, x21
  100160094  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error: Failed to delete entries from database: %s", sqlite3_errmsg([self database])]
  100160098  mov     x29, x29
  10016009c  bl      _objc_retainAutoreleasedReturnValue
  1001600a0  mov     x21, x0
  1001600a4  adrp    x8, #0x10041b000
  1001600a8  nop
  1001600ac  ldr     x1, [x8, #0xdd0]
  1001600b0  mov     x0, x19
  1001600b4  mov     x2, x21
  1001600b8  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error: Failed to delete entries from database: %s", sqlite3_errmsg([self database])]]
  1001600bc  mov     x0, x21
  1001600c0  bl      _objc_release
loc_1001600c4:
  1001600c4  mov     x0, x23
  1001600c8  bl      _sqlite3_finalize                        ; sqlite3_finalize([self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ IN (%@);", @"datalayer", @"ID", [self questionMarks:[arg1 count]]] description:@"delete old Entries"])
loc_1001600cc:
  1001600cc  mov     x0, x25
  1001600d0  bl      _objc_release
  1001600d4  mov     x0, x20
  1001600d8  bl      _objc_release
  1001600dc  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  1001600e0  ldur    x9, [x29, #-0x58]
  1001600e4  sub     x8, x8, x9
  1001600e8  cbnz    x8, loc_10016010c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001600ec  sub     sp, x29, #0x50
  1001600f0  ldp     x28, x27, [sp], #0x10
  1001600f4  ldp     x26, x25, [sp], #0x10
  1001600f8  ldp     x24, x23, [sp], #0x10
  1001600fc  ldp     x22, x21, [sp], #0x10
  100160100  ldp     x20, x19, [sp], #0x10
  100160104  ldp     x29, x30, [sp], #0x10
  100160108  ret
loc_10016010c:
  10016010c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100160110:
  100160110  mov     x19, x0
  100160114  ldr     x20, [sp, #0x40]
  100160118  mov     x0, x24
  10016011c  bl      _objc_release
  100160120  ldr     x25, [sp, #0x38]
loc_100160124:
  100160124  mov     x0, x25
loc_100160128:
  100160128  bl      _objc_release
loc_10016012c:
  10016012c  mov     x0, x20
  100160130  bl      _objc_release
  100160134  mov     x0, x19
  100160138  bl      __Unwind_Resume                          ; Unwind_Resume()
  10016013c  mov     x19, x0
  100160140  b       loc_10016012c
  100160144  mov     x19, x0
  100160148  mov     x0, x23
  10016014c  b       loc_100160128
  100160150  b       loc_100160110
  100160154  b       loc_100160110
  100160158  mov     x19, x0
  10016015c  mov     x0, x21
  100160160  bl      _objc_release
  100160164  b       loc_100160124
  100160168  mov     x19, x0
  10016016c  b       loc_100160124

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl peekEntryIds:]
; address 0x100160170  size 376  kind objc
; ======================================================================
  100160170  stp     x29, x30, [sp, #-0x10]!
  100160174  mov     x29, sp
  100160178  stp     x20, x19, [sp, #-0x10]!
  10016017c  stp     x22, x21, [sp, #-0x10]!
  100160180  stp     x24, x23, [sp, #-0x10]!
  100160184  stp     x26, x25, [sp, #-0x10]!
  100160188  mov     x22, x2
  10016018c  mov     x20, x0
  100160190  adrp    x8, #0x10041d000
  100160194  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100160198  adrp    x8, #0x100418000
  10016019c  nop
  1001601a0  ldr     x1, [x8, #0x50]
  1001601a4  bl      _objc_msgSend                            ; [NSMutableArray array]
  1001601a8  mov     x29, x29
  1001601ac  bl      _objc_retainAutoreleasedReturnValue
  1001601b0  mov     x19, x0
  1001601b4  cbz     x22, loc_100160294                       ; if (arg1 == 0)
  1001601b8  adrp    x8, #0x10041d000
  1001601bc  nop
  1001601c0  ldr     x21, [x8, #0x568]
  1001601c4  mov     x0, x20
  1001601c8  mov     x1, x21
  1001601cc  bl      _objc_msgSend                            ; [self queryEntryIdsStmt]
  1001601d0  mov     w1, #1
  1001601d4  mov     x2, x22
  1001601d8  bl      _sqlite3_bind_int64                      ; sqlite3_bind_int64([self queryEntryIdsStmt], 1, arg1)
  1001601dc  adrp    x8, #0x100416000
  1001601e0  nop
  1001601e4  adrp    x9, #0x10041d000
  1001601e8  add     x9, x9, #0x570                           ; &@selector(initWithLongLong:)
  1001601ec  ldr     x22, [x8, #0xac8]
  1001601f0  ldr     x23, [x9]
  1001601f4  adrp    x8, #0x100416000
  1001601f8  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  1001601fc  ldr     x24, [x8]
  100160200  adrp    x26, #0x10041d000
  100160204  b       loc_100160210
loc_100160208:
  100160208  mov     x0, x25
  10016020c  bl      _objc_release
loc_100160210:
  100160210  mov     x0, x20
  100160214  mov     x1, x21
  100160218  bl      _objc_msgSend                            ; [self queryEntryIdsStmt]
  10016021c  bl      _sqlite3_step                            ; sqlite3_step([self queryEntryIdsStmt])
  100160220  cmp     w0, #0x64
  100160224  b.ne    loc_100160280                            ; if (sqlite3_step([self queryEntryIdsStmt]) != 100)
  100160228  mov     x0, x20
  10016022c  mov     x1, x21
  100160230  bl      _objc_msgSend                            ; [self queryEntryIdsStmt]
  100160234  mov     w1, #0
  100160238  bl      _sqlite3_column_int64                    ; sqlite3_column_int64([self queryEntryIdsStmt], 0)
  10016023c  mov     x25, x0
  100160240  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  100160244  mov     x1, x22
  100160248  bl      _objc_msgSend                            ; [NSNumber alloc]
  10016024c  mov     x1, x23
  100160250  mov     x2, x25
  100160254  bl      _objc_msgSend                            ; [[NSNumber alloc] initWithLongLong:sqlite3_column_int64([self queryEntryIdsStmt], 0)]
  100160258  mov     x25, x0
  10016025c  mov     x0, x19
  100160260  mov     x1, x24
  100160264  mov     x2, x25
  100160268  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[[NSNumber alloc] initWithLongLong:sqlite3_column_int64([self queryEntryIdsStmt], 0)]]
  10016026c  b       loc_100160208
  100160270  mov     x20, x0
  100160274  mov     x0, x25
  100160278  bl      _objc_release
  10016027c  b       loc_1001602d8
loc_100160280:
  100160280  mov     x0, x20
  100160284  mov     x1, x21
  100160288  bl      _objc_msgSend                            ; [self queryEntryIdsStmt]
  10016028c  bl      _sqlite3_reset                           ; sqlite3_reset([self queryEntryIdsStmt])
  100160290  b       loc_1001602b4
loc_100160294:
  100160294  adrp    x8, #0x10041e000
  100160298  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10016029c  adrp    x8, #0x10041b000
  1001602a0  nop
  1001602a4  ldr     x1, [x8, #0xe90]
  1001602a8  adrp    x2, #0x1003c8000
  1001602ac  add     x2, x2, #0x550                           ; @"Invalid maxEntries specified. Skipping."
  1001602b0  bl      _objc_msgSend                            ; [TAGLog warning:@"Invalid maxEntries specified. Skipping."]
loc_1001602b4:
  1001602b4  mov     x0, x19
  1001602b8  ldp     x26, x25, [sp], #0x10
  1001602bc  ldp     x24, x23, [sp], #0x10
  1001602c0  ldp     x22, x21, [sp], #0x10
  1001602c4  ldp     x20, x19, [sp], #0x10
  1001602c8  ldp     x29, x30, [sp], #0x10
  1001602cc  b       _objc_autoreleaseReturnValue
  1001602d0  b       loc_1001602d4
loc_1001602d4:
  1001602d4  mov     x20, x0
loc_1001602d8:
  1001602d8  mov     x0, x19
  1001602dc  bl      _objc_release
  1001602e0  mov     x0, x20
  1001602e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl numStoredEntries]
; address 0x1001602e8  size 264  kind objc
; ======================================================================
  1001602e8  stp     x29, x30, [sp, #-0x10]!
  1001602ec  mov     x29, sp
  1001602f0  stp     x20, x19, [sp, #-0x10]!
  1001602f4  stp     x22, x21, [sp, #-0x10]!
  1001602f8  sub     sp, sp, #0x10
  1001602fc  mov     x19, x0
  100160300  adrp    x8, #0x10041d000
  100160304  nop
  100160308  ldr     x20, [x8, #0x578]
  10016030c  mov     x1, x20
  100160310  bl      _objc_msgSend                            ; [self queryNumberEntriesStmt]
  100160314  bl      _sqlite3_step                            ; sqlite3_step([self queryNumberEntriesStmt])
  100160318  cmp     w0, #1
  10016031c  b.ne    loc_10016039c                            ; if (sqlite3_step([self queryNumberEntriesStmt]) != 1)
  100160320  adrp    x8, #0x10041e000
  100160324  ldr     x20, [x8, #0x538]                        ; class TAGLog
  100160328  adrp    x8, #0x10041d000
  10016032c  ldr     x21, [x8, #0xf78]                        ; class NSString
  100160330  nop
  100160334  nop
  100160338  ldr     x1, [x8, #0x500]
  10016033c  mov     x0, x19
  100160340  bl      _objc_msgSend                            ; [self database]
  100160344  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  100160348  adrp    x8, #0x100416000
  10016034c  nop
  100160350  ldr     x1, [x8, #0xee8]
  100160354  str     x0, [sp]
  100160358  adrp    x2, #0x1003c8000
  10016035c  add     x2, x2, #0x570                           ; @"Error: Failed to retrieve number of entries from database: %s"
  100160360  mov     x0, x21
  100160364  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error: Failed to retrieve number of entries from database: %s", sqlite3_errmsg([self database])]
  100160368  mov     x29, x29
  10016036c  bl      _objc_retainAutoreleasedReturnValue
  100160370  mov     x19, x0
  100160374  adrp    x8, #0x10041b000
  100160378  nop
  10016037c  ldr     x1, [x8, #0xdd0]
  100160380  mov     x0, x20
  100160384  mov     x2, x19
  100160388  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error: Failed to retrieve number of entries from database: %s", sqlite3_errmsg([self database])]]
  10016038c  mov     x0, x19
  100160390  bl      _objc_release
  100160394  mov     x0, #0
  100160398  b       loc_1001603c8
loc_10016039c:
  10016039c  mov     x0, x19
  1001603a0  mov     x1, x20
  1001603a4  bl      _objc_msgSend                            ; [self queryNumberEntriesStmt]
  1001603a8  mov     w1, #0
  1001603ac  bl      _sqlite3_column_int64                    ; sqlite3_column_int64([self queryNumberEntriesStmt], 0)
  1001603b0  mov     x21, x0
  1001603b4  mov     x0, x19
  1001603b8  mov     x1, x20
  1001603bc  bl      _objc_msgSend                            ; [self queryNumberEntriesStmt]
  1001603c0  bl      _sqlite3_reset                           ; sqlite3_reset([self queryNumberEntriesStmt])
  1001603c4  mov     x0, x21
loc_1001603c8:
  1001603c8  sub     sp, x29, #0x20
  1001603cc  ldp     x22, x21, [sp], #0x10
  1001603d0  ldp     x20, x19, [sp], #0x10
  1001603d4  ldp     x29, x30, [sp], #0x10
  1001603d8  ret
  1001603dc  mov     x20, x0
  1001603e0  mov     x0, x19
  1001603e4  bl      _objc_release
  1001603e8  mov     x0, x20
  1001603ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl questionMarks:]
; address 0x1001603f0  size 192  kind objc
; ======================================================================
  1001603f0  stp     x29, x30, [sp, #-0x10]!
  1001603f4  mov     x29, sp
  1001603f8  stp     x20, x19, [sp, #-0x10]!
  1001603fc  stp     x22, x21, [sp, #-0x10]!
  100160400  stp     x24, x23, [sp, #-0x10]!
  100160404  mov     x21, x2
  100160408  adrp    x8, #0x10041e000
  10016040c  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  100160410  adrp    x8, #0x10041b000
  100160414  nop
  100160418  ldr     x1, [x8, #0x1f0]
  10016041c  bl      _objc_msgSend                            ; [NSMutableString string]
  100160420  mov     x29, x29
  100160424  bl      _objc_retainAutoreleasedReturnValue
  100160428  mov     x19, x0
  10016042c  cbz     x21, loc_100160480                       ; if (arg1 == 0)
  100160430  adrp    x8, #0x10041a000
  100160434  nop
  100160438  ldr     x20, [x8, #0x950]
  10016043c  adrp    x2, #0x1003c5000
  100160440  add     x2, x2, #0x1b0                           ; @"?"
  100160444  mov     x0, x19
  100160448  mov     x1, x20
  10016044c  bl      _objc_msgSend                            ; [[NSMutableString string] appendString:@"?"]
  100160450  sub     x22, x21, #1
  100160454  cbz     x22, loc_100160480                       ; if ((arg1 - 1) == 0)
  100160458  mov     x23, #0
  10016045c  adrp    x21, #0x1003c8000
  100160460  add     x21, x21, #0x590                         ; @", ?"
loc_100160464:
  100160464  mov     x0, x19
  100160468  mov     x1, x20
  10016046c  mov     x2, x21
  100160470  bl      _objc_msgSend                            ; [[NSMutableString string] appendString:@", ?"]
  100160474  add     x23, x23, #1
  100160478  cmp     x23, x22
  10016047c  b.lo    loc_100160464                            ; if ((x23 + 1) <u (arg1 - 1))
loc_100160480:
  100160480  mov     x0, x19
  100160484  ldp     x24, x23, [sp], #0x10
  100160488  ldp     x22, x21, [sp], #0x10
  10016048c  ldp     x20, x19, [sp], #0x10
  100160490  ldp     x29, x30, [sp], #0x10
  100160494  b       _objc_autoreleaseReturnValue
  100160498  b       loc_10016049c
loc_10016049c:
  10016049c  mov     x20, x0
  1001604a0  mov     x0, x19
  1001604a4  bl      _objc_release
  1001604a8  mov     x0, x20
  1001604ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl deleteEntriesOlderThan:]
; address 0x1001604b0  size 252  kind objc
; ======================================================================
  1001604b0  stp     x29, x30, [sp, #-0x10]!
  1001604b4  mov     x29, sp
  1001604b8  stp     x20, x19, [sp, #-0x10]!
  1001604bc  stp     x22, x21, [sp, #-0x10]!
  1001604c0  sub     sp, sp, #0x10
  1001604c4  mov     x21, x2
  1001604c8  mov     x19, x0
  1001604cc  adrp    x8, #0x10041d000
  1001604d0  nop
  1001604d4  ldr     x20, [x8, #0x580]
  1001604d8  mov     x1, x20
  1001604dc  bl      _objc_msgSend                            ; [self deleteOlderThanStmt]
  1001604e0  mov     w1, #1
  1001604e4  mov     x2, x21
  1001604e8  bl      _sqlite3_bind_int64                      ; sqlite3_bind_int64([self deleteOlderThanStmt], 1, arg1)
  1001604ec  mov     x0, x19
  1001604f0  mov     x1, x20
  1001604f4  bl      _objc_msgSend                            ; [self deleteOlderThanStmt]
  1001604f8  bl      _sqlite3_step                            ; sqlite3_step([self deleteOlderThanStmt])
  1001604fc  cmp     w0, #0x65
  100160500  b.eq    loc_100160578                            ; if (sqlite3_step([self deleteOlderThanStmt]) == 101)
  100160504  adrp    x8, #0x10041e000
  100160508  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10016050c  adrp    x8, #0x10041d000
  100160510  ldr     x21, [x8, #0xf78]                        ; class NSString
  100160514  nop
  100160518  nop
  10016051c  ldr     x1, [x8, #0x500]
  100160520  mov     x0, x19
  100160524  bl      _objc_msgSend                            ; [self database]
  100160528  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  10016052c  adrp    x8, #0x100416000
  100160530  nop
  100160534  ldr     x1, [x8, #0xee8]
  100160538  str     x0, [sp]
  10016053c  adrp    x2, #0x1003c8000
  100160540  add     x2, x2, #0x5b0                           ; @"Error: Failed to delete older entries: %s"
  100160544  mov     x0, x21
  100160548  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error: Failed to delete older entries: %s", sqlite3_errmsg([self database])]
  10016054c  mov     x29, x29
  100160550  bl      _objc_retainAutoreleasedReturnValue
  100160554  mov     x21, x0
  100160558  adrp    x8, #0x10041b000
  10016055c  nop
  100160560  ldr     x1, [x8, #0xdd0]
  100160564  mov     x0, x22
  100160568  mov     x2, x21
  10016056c  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error: Failed to delete older entries: %s", sqlite3_errmsg([self database])]]
  100160570  mov     x0, x21
  100160574  bl      _objc_release
loc_100160578:
  100160578  mov     x0, x19
  10016057c  mov     x1, x20
  100160580  bl      _objc_msgSend                            ; [self deleteOlderThanStmt]
  100160584  sub     sp, x29, #0x20
  100160588  ldp     x22, x21, [sp], #0x10
  10016058c  ldp     x20, x19, [sp], #0x10
  100160590  ldp     x29, x30, [sp], #0x10
  100160594  b       _sqlite3_reset                           ; sqlite3_reset([self deleteOlderThanStmt])
  100160598  mov     x19, x0
  10016059c  mov     x0, x21
  1001605a0  bl      _objc_release
  1001605a4  mov     x0, x19
  1001605a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl tablePresent:]
; address 0x1001605ac  size 404  kind objc
; ======================================================================
  1001605ac  stp     x29, x30, [sp, #-0x10]!
  1001605b0  mov     x29, sp
  1001605b4  stp     x20, x19, [sp, #-0x10]!
  1001605b8  stp     x22, x21, [sp, #-0x10]!
  1001605bc  stp     x24, x23, [sp, #-0x10]!
  1001605c0  stp     x26, x25, [sp, #-0x10]!
  1001605c4  sub     sp, sp, #0x10
  1001605c8  mov     x22, x0
  1001605cc  mov     x0, x2
  1001605d0  bl      _objc_retain
  1001605d4  mov     x19, x0
  1001605d8  adrp    x8, #0x10041d000
  1001605dc  nop
  1001605e0  ldr     x23, [x8, #0x500]
  1001605e4  mov     x0, x22
  1001605e8  mov     x1, x23
  1001605ec  bl      _objc_msgSend                            ; [self database]
  1001605f0  cbz     x0, loc_100160670                        ; if ([self database] == 0)
  1001605f4  adrp    x25, #0x10041d000
  1001605f8  ldr     x0, [x25, #0xf78]                        ; class NSString
  1001605fc  adrp    x8, #0x100416000
  100160600  nop
  100160604  ldr     x21, [x8, #0xee8]
  100160608  str     x19, [sp]
  10016060c  adrp    x2, #0x1003c8000
  100160610  add     x2, x2, #0x5d0                           ; @"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'"
  100160614  mov     x1, x21
  100160618  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'", arg1]
  10016061c  mov     x29, x29
  100160620  bl      _objc_retainAutoreleasedReturnValue
  100160624  mov     x20, x0
  100160628  adrp    x8, #0x10041d000
  10016062c  nop
  100160630  ldr     x1, [x8, #0x4f8]
  100160634  adrp    x3, #0x1003c8000
  100160638  add     x3, x3, #0x5f0                           ; @"table exists"
  10016063c  mov     x0, x22
  100160640  mov     x2, x20
  100160644  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'", arg1] description:@"table exists"]
  100160648  mov     x24, x0
  10016064c  cbz     x24, loc_100160678                       ; if ([self prepareSql:[NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'", arg1] description:@"table exists"] == 0)
  100160650  mov     x0, x24
  100160654  bl      _sqlite3_step                            ; sqlite3_step([self prepareSql:[NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'", arg1] description:@"table exists"])
  100160658  mov     x21, x0
  10016065c  mov     x0, x24
  100160660  bl      _sqlite3_finalize                        ; sqlite3_finalize([self prepareSql:[NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%@'", arg1] description:@"table exists"])
  100160664  cmp     w21, #0x64
  100160668  cset    w21, eq                                  ; t1 = (sqlite3_step([self prepareSql:[NSString stringWithFormat:@"SELECT name FROM sqlite_master WHERE type='table' AND name='%… == 100)
  10016066c  b       loc_1001606dc
loc_100160670:
  100160670  mov     w21, #0
  100160674  b       loc_1001606e4
loc_100160678:
  100160678  adrp    x8, #0x10041e000
  10016067c  ldr     x24, [x8, #0x538]                        ; class TAGLog
  100160680  ldr     x25, [x25, #0xf78]                       ; class NSString
  100160684  mov     x0, x22
  100160688  mov     x1, x23
  10016068c  bl      _objc_msgSend                            ; [self database]
  100160690  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  100160694  str     x0, [sp]
  100160698  adrp    x2, #0x1003c8000
  10016069c  add     x2, x2, #0x610                           ; @"Error: Failed to prepare table exists stmt: %s"
  1001606a0  mov     x0, x25
  1001606a4  mov     x1, x21
  1001606a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error: Failed to prepare table exists stmt: %s", sqlite3_errmsg([self database])]
  1001606ac  mov     x29, x29
  1001606b0  bl      _objc_retainAutoreleasedReturnValue
  1001606b4  mov     x21, x0
  1001606b8  adrp    x8, #0x10041b000
  1001606bc  nop
  1001606c0  ldr     x1, [x8, #0xdd0]
  1001606c4  mov     x0, x24
  1001606c8  mov     x2, x21
  1001606cc  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error: Failed to prepare table exists stmt: %s", sqlite3_errmsg([self database])]]
  1001606d0  mov     x0, x21
  1001606d4  bl      _objc_release
  1001606d8  mov     w21, #0
loc_1001606dc:
  1001606dc  mov     x0, x20
  1001606e0  bl      _objc_release
loc_1001606e4:
  1001606e4  mov     x0, x19
  1001606e8  bl      _objc_release
  1001606ec  and     w0, w21, #1
  1001606f0  sub     sp, x29, #0x40
  1001606f4  ldp     x26, x25, [sp], #0x10
  1001606f8  ldp     x24, x23, [sp], #0x10
  1001606fc  ldp     x22, x21, [sp], #0x10
  100160700  ldp     x20, x19, [sp], #0x10
  100160704  ldp     x29, x30, [sp], #0x10
  100160708  ret
  10016070c  mov     x22, x0
  100160710  b       loc_100160730
  100160714  mov     x22, x0
  100160718  b       loc_100160728
  10016071c  mov     x22, x0
  100160720  mov     x0, x21
  100160724  bl      _objc_release
loc_100160728:
  100160728  mov     x0, x20
  10016072c  bl      _objc_release
loc_100160730:
  100160730  mov     x0, x19
  100160734  bl      _objc_release
  100160738  mov     x0, x22
  10016073c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl prepareSql:description:]
; address 0x100160740  size 364  kind objc
; ======================================================================
  100160740  stp     x29, x30, [sp, #-0x10]!
  100160744  mov     x29, sp
  100160748  stp     x20, x19, [sp, #-0x10]!
  10016074c  stp     x22, x21, [sp, #-0x10]!
  100160750  stp     x24, x23, [sp, #-0x10]!
  100160754  sub     sp, sp, #0x20
  100160758  mov     x20, x3
  10016075c  mov     x21, x0
  100160760  mov     x0, x2
  100160764  bl      _objc_retain
  100160768  mov     x19, x0
  10016076c  mov     x0, x20
  100160770  bl      _objc_retain
  100160774  mov     x20, x0
  100160778  adrp    x8, #0x10041d000
  10016077c  nop
  100160780  ldr     x22, [x8, #0x500]
  100160784  mov     x0, x21
  100160788  mov     x1, x22
  10016078c  bl      _objc_msgSend                            ; [self database]
  100160790  cbz     x0, loc_100160848                        ; if ([self database] == 0)
  100160794  str     xzr, [sp, #0x18]
  100160798  mov     x0, x21
  10016079c  mov     x1, x22
  1001607a0  bl      _objc_msgSend                            ; [self database]
  1001607a4  mov     x23, x0
  1001607a8  mov     x0, x19
  1001607ac  bl      _objc_retainAutorelease
  1001607b0  adrp    x8, #0x10041a000
  1001607b4  nop
  1001607b8  ldr     x1, [x8, #0x18]
  1001607bc  bl      _objc_msgSend                            ; [arg1 UTF8String]
  1001607c0  mov     x1, x0
  1001607c4  add     x3, sp, #0x18
  1001607c8  mov     w2, #-1
  1001607cc  mov     x0, x23
  1001607d0  mov     x4, #0
  1001607d4  bl      _sqlite3_prepare_v2                      ; sqlite3_prepare_v2([self database], [arg1 UTF8String], 0xffffffff, &sp[0x18])
  1001607d8  cbz     w0, loc_100160850                        ; if (sqlite3_prepare_v2([self database], [arg1 UTF8String], 0xffffffff, &sp[0x18]) == 0)
  1001607dc  adrp    x8, #0x10041e000
  1001607e0  ldr     x23, [x8, #0x538]                        ; class TAGLog
  1001607e4  adrp    x8, #0x10041d000
  1001607e8  ldr     x24, [x8, #0xf78]                        ; class NSString
  1001607ec  mov     x0, x21
  1001607f0  mov     x1, x22
  1001607f4  bl      _objc_msgSend                            ; [self database]
  1001607f8  bl      _sqlite3_errcode                         ; sqlite3_errcode([self database])
  1001607fc  adrp    x8, #0x100416000
  100160800  nop
  100160804  ldr     x1, [x8, #0xee8]
  100160808  stp     x20, x0, [sp]
  10016080c  adrp    x2, #0x1003c8000
  100160810  add     x2, x2, #0x630                           ; @"Error: Failed to prepare %@ statement: %d"
  100160814  mov     x0, x24
  100160818  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error: Failed to prepare %@ statement: %d", arg2, sqlite3_errcode([self database])]
  10016081c  mov     x29, x29
  100160820  bl      _objc_retainAutoreleasedReturnValue
  100160824  mov     x21, x0
  100160828  adrp    x8, #0x10041b000
  10016082c  nop
  100160830  ldr     x1, [x8, #0xdd0]
  100160834  mov     x0, x23
  100160838  mov     x2, x21
  10016083c  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error: Failed to prepare %@ statement: %d", arg2, sqlite3_errcode([self database])]]
  100160840  mov     x0, x21
  100160844  bl      _objc_release
loc_100160848:
  100160848  mov     x21, #0
  10016084c  b       loc_100160854
loc_100160850:
  100160850  ldr     x21, [sp, #0x18]
loc_100160854:
  100160854  mov     x0, x20
  100160858  bl      _objc_release
  10016085c  mov     x0, x19
  100160860  bl      _objc_release
  100160864  mov     x0, x21
  100160868  sub     sp, x29, #0x30
  10016086c  ldp     x24, x23, [sp], #0x10
  100160870  ldp     x22, x21, [sp], #0x10
  100160874  ldp     x20, x19, [sp], #0x10
  100160878  ldp     x29, x30, [sp], #0x10
  10016087c  ret
  100160880  mov     x22, x0
  100160884  b       loc_100160894
  100160888  mov     x22, x0
  10016088c  mov     x0, x21
  100160890  bl      _objc_release
loc_100160894:
  100160894  mov     x0, x20
  100160898  bl      _objc_release
  10016089c  mov     x0, x19
  1001608a0  bl      _objc_release
  1001608a4  mov     x0, x22
  1001608a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl openDatabaseAndInitStatements]
; address 0x1001608ac  size 1748  kind objc
; ======================================================================
  1001608ac  stp     x29, x30, [sp, #-0x10]!
  1001608b0  mov     x29, sp
  1001608b4  stp     x20, x19, [sp, #-0x10]!
  1001608b8  stp     x22, x21, [sp, #-0x10]!
  1001608bc  stp     x24, x23, [sp, #-0x10]!
  1001608c0  stp     x26, x25, [sp, #-0x10]!
  1001608c4  stp     x28, x27, [sp, #-0x10]!
  1001608c8  sub     sp, sp, #0x50
  1001608cc  mov     x21, x0
  1001608d0  adrp    x8, #0x10041d000
  1001608d4  nop
  1001608d8  ldr     x22, [x8, #0x500]
  1001608dc  mov     x1, x22
  1001608e0  bl      _objc_msgSend                            ; [self database]
  1001608e4  cbz     x0, loc_1001608f0                        ; if ([self database] == 0)
  1001608e8  mov     w21, #1
  1001608ec  b       loc_100160e30
loc_1001608f0:
  1001608f0  mov     x0, #5
  1001608f4  mov     x1, #1
  1001608f8  mov     w2, #1
  1001608fc  bl      _NSSearchPathForDirectoriesInDomains     ; NSSearchPathForDirectoriesInDomains(5, 1, 1)
  100160900  mov     x29, x29
  100160904  bl      _objc_retainAutoreleasedReturnValue
  100160908  mov     x19, x0
  10016090c  adrp    x8, #0x100416000
  100160910  nop
  100160914  ldr     x1, [x8, #0xe30]
  100160918  mov     x20, #0
  10016091c  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) count]
  100160920  cbz     x0, loc_1001609f4                        ; if ([NSSearchPathForDirectoriesInDomains(5, 1, 1) count] == 0)
  100160924  adrp    x8, #0x100416000
  100160928  nop
  10016092c  ldr     x1, [x8, #0xc30]
  100160930  mov     x20, #0
  100160934  mov     x2, #0
  100160938  mov     x0, x19
  10016093c  bl      _objc_msgSend                            ; [NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0]
  100160940  mov     x29, x29
  100160944  bl      _objc_retainAutoreleasedReturnValue
  100160948  mov     x20, x0
  10016094c  adrp    x8, #0x10041d000
  100160950  nop
  100160954  ldr     x1, [x8, #0x588]
  100160958  mov     x0, x21
  10016095c  bl      _objc_msgSend                            ; [self databaseName]
  100160960  mov     x29, x29
  100160964  bl      _objc_retainAutoreleasedReturnValue
  100160968  mov     x23, x0
  10016096c  adrp    x8, #0x10041b000
  100160970  nop
  100160974  ldr     x1, [x8, #0xf30]
  100160978  mov     x0, x20
  10016097c  mov     x2, x23
  100160980  bl      _objc_msgSend                            ; [[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:[self databaseName]]
  100160984  mov     x29, x29
  100160988  bl      _objc_retainAutoreleasedReturnValue
  10016098c  mov     x24, x0
  100160990  mov     x0, x23
  100160994  bl      _objc_release
  100160998  mov     x0, x20
  10016099c  bl      _objc_release
  1001609a0  mov     x0, x24
  1001609a4  bl      _objc_retainAutorelease
  1001609a8  mov     x20, x0
  1001609ac  adrp    x8, #0x10041a000
  1001609b0  nop
  1001609b4  ldr     x1, [x8, #0x18]
  1001609b8  bl      _objc_msgSend                            ; [[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:[self databaseName]] UTF8String]
  1001609bc  adrp    x8, #0x100420000
  1001609c0  ldrsw   x8, [x8, #0xb48]                         ; ivar offset TAGDataLayerPersistentStoreImpl._database (+0x20)
  1001609c4  add     x1, x21, x8
  1001609c8  bl      _sqlite3_open                            ; sqlite3_open([[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:[self databaseName]] UTF8String], x1)
  1001609cc  cbz     w0, loc_100160a00                        ; if (sqlite3_open([[[NSSearchPathForDirectoriesInDomains(5, 1, 1) objectAtIndex:0] stringByAppendingPathComponent:[self databaseName]] UTF8String], x1) == 0)
  1001609d0  adrp    x8, #0x10041e000
  1001609d4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001609d8  adrp    x8, #0x10041b000
  1001609dc  nop
  1001609e0  ldr     x1, [x8, #0xdd0]
  1001609e4  adrp    x2, #0x1003c8000
  1001609e8  add     x2, x2, #0x650                           ; @"Unable to open GTM database"
  1001609ec  bl      _objc_msgSend                            ; [TAGLog error:@"Unable to open GTM database"]
  1001609f0  b       loc_1001609f8
loc_1001609f4:
  1001609f4  mov     x20, #0
loc_1001609f8:
  1001609f8  mov     w21, #0
  1001609fc  b       loc_100160e20
loc_100160a00:
  100160a00  adrp    x8, #0x10041d000
  100160a04  nop
  100160a08  ldr     x1, [x8, #0x590]
  100160a0c  adrp    x2, #0x1003c8000
  100160a10  add     x2, x2, #0x3b0                           ; @"datalayer"
  100160a14  mov     x0, x21
  100160a18  bl      _objc_msgSend                            ; [self tablePresent:@"datalayer"]
  100160a1c  tbnz    w0, #0, loc_100160ad8                    ; if (([self tablePresent:@"datalayer"] & 1))
  100160a20  adrp    x28, #0x10041d000
  100160a24  ldr     x0, [x28, #0xf78]                        ; class NSString
  100160a28  adrp    x8, #0x100416000
  100160a2c  nop
  100160a30  ldr     x24, [x8, #0xee8]
  100160a34  adrp    x8, #0x1003c8000
  100160a38  add     x8, x8, #0x3f0                           ; @"expires"
  100160a3c  adrp    x9, #0x1003ba000
  100160a40  add     x9, x9, #0x1b0                           ; @"value"
  100160a44  adrp    x10, #0x1003c8000
  100160a48  add     x10, x10, #0x3d0                         ; @"key"
  100160a4c  adrp    x11, #0x1003c8000
  100160a50  add     x11, x11, #0x410                         ; @"ID"
  100160a54  stp     x9, x8, [sp, #0x18]
  100160a58  stp     x11, x10, [sp, #8]
  100160a5c  adrp    x8, #0x1003c8000
  100160a60  add     x8, x8, #0x3b0                           ; @"datalayer"
  100160a64  str     x8, [sp]
  100160a68  adrp    x2, #0x1003c8000
  100160a6c  add     x2, x2, #0x670                           ; @"CREATE TABLE IF NOT EXISTS %@ ( '%@' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%@' STRI…"
  100160a70  mov     x1, x24
  100160a74  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ ( '%@' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%@' STRI…", @"datalayer", @"ID", @"key", @"value", @"expires"]
  100160a78  mov     x29, x29
  100160a7c  bl      _objc_retainAutoreleasedReturnValue
  100160a80  mov     x23, x0
  100160a84  adrp    x8, #0x10041d000
  100160a88  nop
  100160a8c  ldr     x1, [x8, #0x4f8]
  100160a90  adrp    x3, #0x1003c8000
  100160a94  add     x3, x3, #0x690                           ; @"create maps table"
  100160a98  mov     x0, x21
  100160a9c  mov     x2, x23
  100160aa0  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ ( '%@' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%@' STRI…", @"datalayer", @"ID", @"key", @"value", @"expires"] description:@"create maps table"]
  100160aa4  mov     x25, x0
  100160aa8  cbz     x25, loc_100160abc                       ; if ([self prepareSql:[NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ ( '%@' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%@' STRI…", @"datalayer", @"ID", @"key", @"value", @"expires"] description:@"create maps table"] == 0)
  100160aac  mov     x0, x25
  100160ab0  bl      _sqlite3_step                            ; sqlite3_step([self prepareSql:[NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ ( '%@' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%@' STRI…", @"datalayer", @"ID", @"key", @"value", @"expires"] description:@"create maps table"])
  100160ab4  mov     x26, x0
  100160ab8  b       loc_100160ac0
loc_100160abc:
  100160abc  mov     w26, #1
loc_100160ac0:
  100160ac0  mov     x0, x25
  100160ac4  bl      _sqlite3_finalize                        ; sqlite3_finalize([self prepareSql:[NSString stringWithFormat:@"CREATE TABLE IF NOT EXISTS %@ ( '%@' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%@' STRI…", @"datalayer", @"ID", @"key", @"value", @"expires"] description:@"create maps table"])
  100160ac8  cmp     w26, #0x65
  100160acc  b.ne    loc_100160e54                            ; if (w26 != 101)
  100160ad0  mov     x0, x23
  100160ad4  bl      _objc_release
loc_100160ad8:
  100160ad8  adrp    x26, #0x10041d000
  100160adc  ldr     x0, [x26, #0xf78]                        ; class NSString
  100160ae0  adrp    x8, #0x100416000
  100160ae4  nop
  100160ae8  ldr     x25, [x8, #0xee8]
  100160aec  adrp    x8, #0x1003c8000
  100160af0  add     x8, x8, #0x3b0                           ; @"datalayer"
  100160af4  str     x8, [sp]
  100160af8  adrp    x2, #0x1003c8000
  100160afc  add     x2, x2, #0x6d0                           ; @"SELECT COUNT(*) FROM %@"
  100160b00  mov     x1, x25
  100160b04  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"SELECT COUNT(*) FROM %@", @"datalayer"]
  100160b08  mov     x29, x29
  100160b0c  bl      _objc_retainAutoreleasedReturnValue
  100160b10  mov     x9, x0
  100160b14  str     x9, [sp, #0x48]
  100160b18  adrp    x8, #0x10041d000
  100160b1c  nop
  100160b20  ldr     x23, [x8, #0x4f8]
  100160b24  adrp    x3, #0x1003c8000
  100160b28  add     x3, x3, #0x6f0                           ; @"query number of stored entries"
  100160b2c  mov     x0, x21
  100160b30  mov     x1, x23
  100160b34  mov     x2, x9
  100160b38  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"SELECT COUNT(*) FROM %@", @"datalayer"] description:@"query number of stored entries"]
  100160b3c  mov     x2, x0
  100160b40  adrp    x8, #0x10041d000
  100160b44  nop
  100160b48  ldr     x1, [x8, #0x598]
  100160b4c  mov     x0, x21
  100160b50  bl      _objc_msgSend                            ; [self setQueryNumberEntriesStmt:[self prepareSql:[NSString stringWithFormat:@"SELECT COUNT(*) FROM %@", @"datalayer"] description:@"query number of stored entries"]]
  100160b54  ldr     x0, [x26, #0xf78]                        ; class NSString
  100160b58  adrp    x24, #0x1003c8000
  100160b5c  add     x24, x24, #0x3f0                         ; @"expires"
  100160b60  adrp    x8, #0x1003c8000
  100160b64  add     x8, x8, #0x3b0                           ; @"datalayer"
  100160b68  stp     x8, x24, [sp]
  100160b6c  adrp    x2, #0x1003c8000
  100160b70  add     x2, x2, #0x710                           ; @"DELETE from %@ WHERE %@ <= ?;"
  100160b74  mov     x1, x25
  100160b78  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"DELETE from %@ WHERE %@ <= ?;", @"datalayer", @"expires"]
  100160b7c  mov     x29, x29
  100160b80  bl      _objc_retainAutoreleasedReturnValue
  100160b84  mov     x8, x0
  100160b88  str     x8, [sp, #0x40]
  100160b8c  adrp    x3, #0x1003c8000
  100160b90  add     x3, x3, #0x530                           ; @"delete old Entries"
  100160b94  mov     x0, x21
  100160b98  mov     x1, x23
  100160b9c  mov     x2, x8
  100160ba0  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ <= ?;", @"datalayer", @"expires"] description:@"delete old Entries"]
  100160ba4  mov     x2, x0
  100160ba8  adrp    x8, #0x10041d000
  100160bac  nop
  100160bb0  ldr     x1, [x8, #0x5a0]
  100160bb4  mov     x0, x21
  100160bb8  bl      _objc_msgSend                            ; [self setDeleteOlderThanStmt:[self prepareSql:[NSString stringWithFormat:@"DELETE from %@ WHERE %@ <= ?;", @"datalayer", @"expires"] description:@"delete old Entries"]]
  100160bbc  ldr     x0, [x26, #0xf78]                        ; class NSString
  100160bc0  str     x24, [sp, #0x18]
  100160bc4  adrp    x24, #0x1003ba000
  100160bc8  add     x24, x24, #0x1b0                         ; @"value"
  100160bcc  adrp    x27, #0x1003c8000
  100160bd0  add     x27, x27, #0x3d0                         ; @"key"
  100160bd4  stp     x27, x24, [sp, #8]
  100160bd8  adrp    x8, #0x1003c8000
  100160bdc  add     x8, x8, #0x3b0                           ; @"datalayer"
  100160be0  str     x8, [sp]
  100160be4  adrp    x2, #0x1003c8000
  100160be8  add     x2, x2, #0x730                           ; @"INSERT INTO %@ (%@, %@, %@) VALUES (?, ?, ?)"
  100160bec  mov     x1, x25
  100160bf0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"INSERT INTO %@ (%@, %@, %@) VALUES (?, ?, ?)", @"datalayer", @"key", @"value", @"expires"]
  100160bf4  mov     x29, x29
  100160bf8  bl      _objc_retainAutoreleasedReturnValue
  100160bfc  mov     x8, x0
  100160c00  str     x8, [sp, #0x38]
  100160c04  adrp    x3, #0x1003c8000
  100160c08  add     x3, x3, #0x750                           ; @"insert an entry"
  100160c0c  mov     x0, x21
  100160c10  mov     x1, x23
  100160c14  mov     x2, x8
  100160c18  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"INSERT INTO %@ (%@, %@, %@) VALUES (?, ?, ?)", @"datalayer", @"key", @"value", @"expires"] description:@"insert an entry"]
  100160c1c  mov     x2, x0
  100160c20  adrp    x8, #0x10041d000
  100160c24  nop
  100160c28  ldr     x1, [x8, #0x5a8]
  100160c2c  mov     x0, x21
  100160c30  bl      _objc_msgSend                            ; [self setInsertAnEntryStmt:[self prepareSql:[NSString stringWithFormat:@"INSERT INTO %@ (%@, %@, %@) VALUES (?, ?, ?)", @"datalayer", @"key", @"value", @"expires"] description:@"insert an entry"]]
  100160c34  ldr     x0, [x26, #0xf78]                        ; class NSString
  100160c38  adrp    x28, #0x1003c8000
  100160c3c  add     x28, x28, #0x410                         ; @"ID"
  100160c40  adrp    x8, #0x1003c8000
  100160c44  add     x8, x8, #0x3b0                           ; @"datalayer"
  100160c48  stp     x8, x28, [sp, #8]
  100160c4c  str     x28, [sp]
  100160c50  adrp    x2, #0x1003c8000
  100160c54  add     x2, x2, #0x770                           ; @"SELECT %@ FROM %@ ORDER BY %@ ASC Limit ?"
  100160c58  mov     x1, x25
  100160c5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"SELECT %@ FROM %@ ORDER BY %@ ASC Limit ?", @"ID", @"datalayer", @"ID"]
  100160c60  mov     x29, x29
  100160c64  bl      _objc_retainAutoreleasedReturnValue
  100160c68  mov     x8, x0
  100160c6c  str     x8, [sp, #0x30]
  100160c70  adrp    x3, #0x1003c8000
  100160c74  add     x3, x3, #0x790                           ; @"fetch entryIds"
  100160c78  mov     x0, x21
  100160c7c  mov     x1, x23
  100160c80  mov     x2, x8
  100160c84  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"SELECT %@ FROM %@ ORDER BY %@ ASC Limit ?", @"ID", @"datalayer", @"ID"] description:@"fetch entryIds"]
  100160c88  mov     x2, x0
  100160c8c  adrp    x8, #0x10041d000
  100160c90  nop
  100160c94  ldr     x1, [x8, #0x5b0]
  100160c98  mov     x0, x21
  100160c9c  bl      _objc_msgSend                            ; [self setQueryEntryIdsStmt:[self prepareSql:[NSString stringWithFormat:@"SELECT %@ FROM %@ ORDER BY %@ ASC Limit ?", @"ID", @"datalayer", @"ID"] description:@"fetch entryIds"]]
  100160ca0  ldr     x0, [x26, #0xf78]                        ; class NSString
  100160ca4  adrp    x8, #0x1003c8000
  100160ca8  add     x8, x8, #0x3b0                           ; @"datalayer"
  100160cac  stp     x8, x28, [sp, #0x10]
  100160cb0  stp     x27, x24, [sp]
  100160cb4  adrp    x2, #0x1003c8000
  100160cb8  add     x2, x2, #0x7b0                           ; @"SELECT %@, %@ FROM %@ ORDER BY %@"
  100160cbc  mov     x1, x25
  100160cc0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"SELECT %@, %@ FROM %@ ORDER BY %@", @"key", @"value", @"datalayer", @"ID"]
  100160cc4  mov     x29, x29
  100160cc8  bl      _objc_retainAutoreleasedReturnValue
  100160ccc  mov     x27, x0
  100160cd0  adrp    x3, #0x1003c8000
  100160cd4  add     x3, x3, #0x7d0                           ; @"query data"
  100160cd8  mov     x0, x21
  100160cdc  mov     x1, x23
  100160ce0  mov     x2, x27
  100160ce4  bl      _objc_msgSend                            ; [self prepareSql:[NSString stringWithFormat:@"SELECT %@, %@ FROM %@ ORDER BY %@", @"key", @"value", @"datalayer", @"ID"] description:@"query data"]
  100160ce8  mov     x2, x0
  100160cec  adrp    x8, #0x10041d000
  100160cf0  nop
  100160cf4  ldr     x1, [x8, #0x5b8]
  100160cf8  mov     x0, x21
  100160cfc  bl      _objc_msgSend                            ; [self setQueryAllEntriesStmt:[self prepareSql:[NSString stringWithFormat:@"SELECT %@, %@ FROM %@ ORDER BY %@", @"key", @"value", @"datalayer", @"ID"] description:@"query data"]]
  100160d00  adrp    x8, #0x10041d000
  100160d04  nop
  100160d08  ldr     x1, [x8, #0x578]
  100160d0c  mov     x0, x21
  100160d10  bl      _objc_msgSend                            ; [self queryNumberEntriesStmt]
  100160d14  cbz     x0, loc_100160d80                        ; if ([self queryNumberEntriesStmt] == 0)
  100160d18  adrp    x8, #0x10041d000
  100160d1c  nop
  100160d20  ldr     x1, [x8, #0x580]
  100160d24  mov     x0, x21
  100160d28  bl      _objc_msgSend                            ; [self deleteOlderThanStmt]
  100160d2c  cbz     x0, loc_100160d80                        ; if ([self deleteOlderThanStmt] == 0)
  100160d30  adrp    x8, #0x10041d000
  100160d34  nop
  100160d38  ldr     x1, [x8, #0x538]
  100160d3c  mov     x0, x21
  100160d40  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  100160d44  cbz     x0, loc_100160d80                        ; if ([self insertAnEntryStmt] == 0)
  100160d48  adrp    x8, #0x10041d000
  100160d4c  nop
  100160d50  ldr     x1, [x8, #0x568]
  100160d54  mov     x0, x21
  100160d58  bl      _objc_msgSend                            ; [self queryEntryIdsStmt]
  100160d5c  cbz     x0, loc_100160d80                        ; if ([self queryEntryIdsStmt] == 0)
  100160d60  adrp    x8, #0x10041d000
  100160d64  nop
  100160d68  ldr     x1, [x8, #0x528]
  100160d6c  mov     x0, x21
  100160d70  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  100160d74  cbz     x0, loc_100160d80                        ; if ([self queryAllEntriesStmt] == 0)
  100160d78  mov     w21, #1
  100160d7c  b       loc_100160df8
loc_100160d80:
  100160d80  adrp    x8, #0x10041e000
  100160d84  ldr     x23, [x8, #0x538]                        ; class TAGLog
  100160d88  ldr     x24, [x26, #0xf78]                       ; class NSString
  100160d8c  mov     x0, x21
  100160d90  mov     x1, x22
  100160d94  bl      _objc_msgSend                            ; [self database]
  100160d98  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  100160d9c  str     x0, [sp]
  100160da0  adrp    x2, #0x1003c8000
  100160da4  add     x2, x2, #0x6b0                           ; @"Error initializing GTM database: %s"
  100160da8  mov     x0, x24
  100160dac  mov     x1, x25
  100160db0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error initializing GTM database: %s", sqlite3_errmsg([self database])]
  100160db4  mov     x29, x29
  100160db8  bl      _objc_retainAutoreleasedReturnValue
  100160dbc  mov     x22, x0
  100160dc0  adrp    x8, #0x10041b000
  100160dc4  nop
  100160dc8  ldr     x1, [x8, #0xdd0]
  100160dcc  mov     x0, x23
  100160dd0  mov     x2, x22
  100160dd4  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error initializing GTM database: %s", sqlite3_errmsg([self database])]]
  100160dd8  mov     x0, x22
  100160ddc  bl      _objc_release
  100160de0  adrp    x8, #0x10041d000
  100160de4  nop
  100160de8  ldr     x1, [x8, #0x488]
  100160dec  mov     x0, x21
  100160df0  bl      _objc_msgSend                            ; [self closeDatabase]
  100160df4  mov     w21, #0
loc_100160df8:
  100160df8  mov     x0, x27
  100160dfc  bl      _objc_release
  100160e00  ldr     x0, [sp, #0x30]
  100160e04  bl      _objc_release
  100160e08  ldr     x0, [sp, #0x38]
  100160e0c  bl      _objc_release
  100160e10  ldr     x0, [sp, #0x40]
  100160e14  bl      _objc_release
  100160e18  ldr     x0, [sp, #0x48]
  100160e1c  bl      _objc_release
loc_100160e20:
  100160e20  mov     x0, x19
  100160e24  bl      _objc_release
  100160e28  mov     x0, x20
  100160e2c  bl      _objc_release
loc_100160e30:
  100160e30  mov     x0, x21
  100160e34  sub     sp, x29, #0x50
  100160e38  ldp     x28, x27, [sp], #0x10
  100160e3c  ldp     x26, x25, [sp], #0x10
  100160e40  ldp     x24, x23, [sp], #0x10
  100160e44  ldp     x22, x21, [sp], #0x10
  100160e48  ldp     x20, x19, [sp], #0x10
  100160e4c  ldp     x29, x30, [sp], #0x10
  100160e50  ret
loc_100160e54:
  100160e54  adrp    x8, #0x10041e000
  100160e58  ldr     x25, [x8, #0x538]                        ; class TAGLog
  100160e5c  ldr     x26, [x28, #0xf78]                       ; class NSString
  100160e60  mov     x0, x21
  100160e64  mov     x1, x22
  100160e68  bl      _objc_msgSend                            ; [self database]
  100160e6c  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  100160e70  str     x0, [sp]
  100160e74  adrp    x2, #0x1003c8000
  100160e78  add     x2, x2, #0x6b0                           ; @"Error initializing GTM database: %s"
  100160e7c  mov     x0, x26
  100160e80  mov     x1, x24
  100160e84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Error initializing GTM database: %s", sqlite3_errmsg([self database])]
  100160e88  mov     x29, x29
  100160e8c  bl      _objc_retainAutoreleasedReturnValue
  100160e90  mov     x22, x0
  100160e94  adrp    x8, #0x10041b000
  100160e98  nop
  100160e9c  ldr     x1, [x8, #0xdd0]
  100160ea0  mov     x0, x25
  100160ea4  mov     x2, x22
  100160ea8  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Error initializing GTM database: %s", sqlite3_errmsg([self database])]]
  100160eac  mov     x0, x22
  100160eb0  bl      _objc_release
  100160eb4  adrp    x8, #0x10041d000
  100160eb8  nop
  100160ebc  ldr     x1, [x8, #0x488]
  100160ec0  mov     x0, x21
  100160ec4  bl      _objc_msgSend                            ; [self closeDatabase]
  100160ec8  mov     x0, x23
  100160ecc  bl      _objc_release
  100160ed0  b       loc_1001609f8
  100160ed4  mov     x21, x0
  100160ed8  b       loc_100160f78
  100160edc  mov     x21, x0
  100160ee0  b       loc_100160f68
  100160ee4  b       loc_100160f5c
  100160ee8  mov     x21, x0
  100160eec  b       loc_100160f68
  100160ef0  mov     x21, x0
  100160ef4  b       loc_100160f44
  100160ef8  mov     x21, x0
  100160efc  b       loc_100160f3c
  100160f00  mov     x21, x0
  100160f04  b       loc_100160f34
  100160f08  mov     x21, x0
  100160f0c  b       loc_100160f2c
  100160f10  mov     x21, x0
  100160f14  mov     x0, x22
  100160f18  bl      _objc_release
  100160f1c  b       loc_100160f24
  100160f20  mov     x21, x0
loc_100160f24:
  100160f24  mov     x0, x27
  100160f28  bl      _objc_release
loc_100160f2c:
  100160f2c  ldr     x0, [sp, #0x30]
  100160f30  bl      _objc_release
loc_100160f34:
  100160f34  ldr     x0, [sp, #0x38]
  100160f38  bl      _objc_release
loc_100160f3c:
  100160f3c  ldr     x0, [sp, #0x40]
  100160f40  bl      _objc_release
loc_100160f44:
  100160f44  ldr     x0, [sp, #0x48]
  100160f48  b       loc_100160f64
  100160f4c  mov     x21, x0
  100160f50  mov     x0, x22
  100160f54  bl      _objc_release
  100160f58  b       loc_100160f60
loc_100160f5c:
  100160f5c  mov     x21, x0
loc_100160f60:
  100160f60  mov     x0, x23
loc_100160f64:
  100160f64  bl      _objc_release
loc_100160f68:
  100160f68  mov     x0, x20
  100160f6c  bl      _objc_release
  100160f70  mov     x0, x19
  100160f74  bl      _objc_release
loc_100160f78:
  100160f78  mov     x0, x21
  100160f7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl closeDatabase]
; address 0x100160f80  size 376  kind objc
; ======================================================================
  100160f80  stp     x29, x30, [sp, #-0x10]!
  100160f84  mov     x29, sp
  100160f88  stp     x20, x19, [sp, #-0x10]!
  100160f8c  stp     x22, x21, [sp, #-0x10]!
  100160f90  sub     sp, sp, #0x10
  100160f94  mov     x19, x0
  100160f98  adrp    x8, #0x10041d000
  100160f9c  nop
  100160fa0  ldr     x20, [x8, #0x500]
  100160fa4  mov     x1, x20
  100160fa8  bl      _objc_msgSend                            ; [self database]
  100160fac  cbz     x0, loc_1001610d0                        ; if ([self database] == 0)
  100160fb0  adrp    x8, #0x10041d000
  100160fb4  nop
  100160fb8  ldr     x1, [x8, #0x580]
  100160fbc  mov     x0, x19
  100160fc0  bl      _objc_msgSend                            ; [self deleteOlderThanStmt]
  100160fc4  bl      _sqlite3_finalize                        ; sqlite3_finalize([self deleteOlderThanStmt])
  100160fc8  adrp    x8, #0x10041d000
  100160fcc  nop
  100160fd0  ldr     x1, [x8, #0x538]
  100160fd4  mov     x0, x19
  100160fd8  bl      _objc_msgSend                            ; [self insertAnEntryStmt]
  100160fdc  bl      _sqlite3_finalize                        ; sqlite3_finalize([self insertAnEntryStmt])
  100160fe0  adrp    x8, #0x10041d000
  100160fe4  nop
  100160fe8  ldr     x1, [x8, #0x578]
  100160fec  mov     x0, x19
  100160ff0  bl      _objc_msgSend                            ; [self queryNumberEntriesStmt]
  100160ff4  bl      _sqlite3_finalize                        ; sqlite3_finalize([self queryNumberEntriesStmt])
  100160ff8  adrp    x8, #0x10041d000
  100160ffc  nop
  100161000  ldr     x1, [x8, #0x568]
  100161004  mov     x0, x19
  100161008  bl      _objc_msgSend                            ; [self queryEntryIdsStmt]
  10016100c  bl      _sqlite3_finalize                        ; sqlite3_finalize([self queryEntryIdsStmt])
  100161010  adrp    x8, #0x10041d000
  100161014  nop
  100161018  ldr     x1, [x8, #0x528]
  10016101c  mov     x0, x19
  100161020  bl      _objc_msgSend                            ; [self queryAllEntriesStmt]
  100161024  bl      _sqlite3_finalize                        ; sqlite3_finalize([self queryAllEntriesStmt])
  100161028  mov     x0, x19
  10016102c  mov     x1, x20
  100161030  bl      _objc_msgSend                            ; [self database]
  100161034  bl      _sqlite3_close                           ; sqlite3_close([self database])
  100161038  cbz     w0, loc_1001610a8                        ; if (sqlite3_close([self database]) == 0)
  10016103c  adrp    x8, #0x10041e000
  100161040  ldr     x21, [x8, #0x538]                        ; class TAGLog
  100161044  adrp    x8, #0x10041d000
  100161048  ldr     x22, [x8, #0xf78]                        ; class NSString
  10016104c  mov     x0, x19
  100161050  mov     x1, x20
  100161054  bl      _objc_msgSend                            ; [self database]
  100161058  bl      _sqlite3_errmsg                          ; sqlite3_errmsg([self database])
  10016105c  adrp    x8, #0x100416000
  100161060  nop
  100161064  ldr     x1, [x8, #0xee8]
  100161068  str     x0, [sp]
  10016106c  adrp    x2, #0x1003c8000
  100161070  add     x2, x2, #0x7f0                           ; @"Failed to close database: %s"
  100161074  mov     x0, x22
  100161078  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Failed to close database: %s", sqlite3_errmsg([self database])]
  10016107c  mov     x29, x29
  100161080  bl      _objc_retainAutoreleasedReturnValue
  100161084  mov     x20, x0
  100161088  adrp    x8, #0x10041b000
  10016108c  nop
  100161090  ldr     x1, [x8, #0xdd0]
  100161094  mov     x0, x21
  100161098  mov     x2, x20
  10016109c  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Failed to close database: %s", sqlite3_errmsg([self database])]]
  1001610a0  mov     x0, x20
  1001610a4  bl      _objc_release
loc_1001610a8:
  1001610a8  mov     x2, #0
  1001610ac  adrp    x8, #0x10041d000
  1001610b0  nop
  1001610b4  ldr     x1, [x8, #0x5c0]
  1001610b8  mov     x0, x19
  1001610bc  sub     sp, x29, #0x20
  1001610c0  ldp     x22, x21, [sp], #0x10
  1001610c4  ldp     x20, x19, [sp], #0x10
  1001610c8  ldp     x29, x30, [sp], #0x10
  1001610cc  b       _objc_msgSend                            ; [self setDatabase:0]
loc_1001610d0:
  1001610d0  sub     sp, x29, #0x20
  1001610d4  ldp     x22, x21, [sp], #0x10
  1001610d8  ldp     x20, x19, [sp], #0x10
  1001610dc  ldp     x29, x30, [sp], #0x10
  1001610e0  ret
  1001610e4  mov     x19, x0
  1001610e8  mov     x0, x20
  1001610ec  bl      _objc_release
  1001610f0  mov     x0, x19
  1001610f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl currentTimeInMilliseconds]
; address 0x1001610f8  size 128  kind objc
; ======================================================================
  1001610f8  stp     x29, x30, [sp, #-0x10]!
  1001610fc  mov     x29, sp
  100161100  stp     x20, x19, [sp, #-0x10]!
  100161104  stp     d9, d8, [sp, #-0x10]!
  100161108  adrp    x8, #0x10041e000
  10016110c  ldr     x0, [x8, #0x38]                          ; class NSDate
  100161110  adrp    x8, #0x100418000
  100161114  nop
  100161118  ldr     x1, [x8, #0x158]
  10016111c  bl      _objc_msgSend                            ; [NSDate date]
  100161120  mov     x29, x29
  100161124  bl      _objc_retainAutoreleasedReturnValue
  100161128  mov     x19, x0
  10016112c  adrp    x8, #0x10041d000
  100161130  nop
  100161134  ldr     x1, [x8, #0x5c8]
  100161138  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSince1970]
  10016113c  nop
  100161140  ldr     d1, #0x100181ca8                         ; d1 = 1000.0
  100161144  fmul    d8, d0, d1
  100161148  mov     x0, x19
  10016114c  bl      _objc_release
  100161150  mov     v0.16b, v8.16b
  100161154  ldp     d9, d8, [sp], #0x10
  100161158  ldp     x20, x19, [sp], #0x10
  10016115c  ldp     x29, x30, [sp], #0x10
  100161160  ret
  100161164  mov     x20, x0
  100161168  mov     x0, x19
  10016116c  bl      _objc_release
  100161170  mov     x0, x20
  100161174  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl databaseName]
; address 0x100161178  size 16  kind objc
; ======================================================================
  100161178  adrp    x8, #0x100420000
  10016117c  ldrsw   x2, [x8, #0xb3c]                         ; ivar offset TAGDataLayerPersistentStoreImpl._databaseName (+0x8)
  100161180  mov     w3, #1
  100161184  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl maxNumStoredItems]
; address 0x100161188  size 16  kind objc
; ======================================================================
  100161188  adrp    x8, #0x100420000
  10016118c  ldrsw   x8, [x8, #0xb40]                         ; ivar offset TAGDataLayerPersistentStoreImpl._maxNumStoredItems (+0x10)
  100161190  ldr     x0, [x0, x8]                             ; x0 = self->_maxNumStoredItems
  100161194  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setMaxNumStoredItems:]
; address 0x100161198  size 16  kind objc
; ======================================================================
  100161198  adrp    x8, #0x100420000
  10016119c  ldrsw   x8, [x8, #0xb40]                         ; ivar offset TAGDataLayerPersistentStoreImpl._maxNumStoredItems (+0x10)
  1001611a0  str     x2, [x0, x8]                             ; self->_maxNumStoredItems = arg1
  1001611a4  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl operationQueue]
; address 0x1001611a8  size 16  kind objc
; ======================================================================
  1001611a8  adrp    x8, #0x100420000
  1001611ac  ldrsw   x2, [x8, #0xb44]                         ; ivar offset TAGDataLayerPersistentStoreImpl._operationQueue (+0x18)
  1001611b0  mov     w3, #1
  1001611b4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl database]
; address 0x1001611b8  size 16  kind objc
; ======================================================================
  1001611b8  adrp    x8, #0x100420000
  1001611bc  ldrsw   x8, [x8, #0xb48]                         ; ivar offset TAGDataLayerPersistentStoreImpl._database (+0x20)
  1001611c0  ldr     x0, [x0, x8]                             ; x0 = self->_database
  1001611c4  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setDatabase:]
; address 0x1001611c8  size 16  kind objc
; ======================================================================
  1001611c8  adrp    x8, #0x100420000
  1001611cc  ldrsw   x8, [x8, #0xb48]                         ; ivar offset TAGDataLayerPersistentStoreImpl._database (+0x20)
  1001611d0  str     x2, [x0, x8]                             ; self->_database = arg1
  1001611d4  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl insertAnEntryStmt]
; address 0x1001611d8  size 16  kind objc
; ======================================================================
  1001611d8  adrp    x8, #0x100420000
  1001611dc  ldrsw   x8, [x8, #0xb4c]                         ; ivar offset TAGDataLayerPersistentStoreImpl._insertAnEntryStmt (+0x28)
  1001611e0  ldr     x0, [x0, x8]                             ; x0 = self->_insertAnEntryStmt
  1001611e4  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setInsertAnEntryStmt:]
; address 0x1001611e8  size 16  kind objc
; ======================================================================
  1001611e8  adrp    x8, #0x100420000
  1001611ec  ldrsw   x8, [x8, #0xb4c]                         ; ivar offset TAGDataLayerPersistentStoreImpl._insertAnEntryStmt (+0x28)
  1001611f0  str     x2, [x0, x8]                             ; self->_insertAnEntryStmt = arg1
  1001611f4  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl queryNumberEntriesStmt]
; address 0x1001611f8  size 16  kind objc
; ======================================================================
  1001611f8  adrp    x8, #0x100420000
  1001611fc  ldrsw   x8, [x8, #0xb50]                         ; ivar offset TAGDataLayerPersistentStoreImpl._queryNumberEntriesStmt (+0x30)
  100161200  ldr     x0, [x0, x8]                             ; x0 = self->_queryNumberEntriesStmt
  100161204  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setQueryNumberEntriesStmt:]
; address 0x100161208  size 16  kind objc
; ======================================================================
  100161208  adrp    x8, #0x100420000
  10016120c  ldrsw   x8, [x8, #0xb50]                         ; ivar offset TAGDataLayerPersistentStoreImpl._queryNumberEntriesStmt (+0x30)
  100161210  str     x2, [x0, x8]                             ; self->_queryNumberEntriesStmt = arg1
  100161214  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl queryAllEntriesStmt]
; address 0x100161218  size 16  kind objc
; ======================================================================
  100161218  adrp    x8, #0x100420000
  10016121c  ldrsw   x8, [x8, #0xb54]                         ; ivar offset TAGDataLayerPersistentStoreImpl._queryAllEntriesStmt (+0x38)
  100161220  ldr     x0, [x0, x8]                             ; x0 = self->_queryAllEntriesStmt
  100161224  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setQueryAllEntriesStmt:]
; address 0x100161228  size 16  kind objc
; ======================================================================
  100161228  adrp    x8, #0x100420000
  10016122c  ldrsw   x8, [x8, #0xb54]                         ; ivar offset TAGDataLayerPersistentStoreImpl._queryAllEntriesStmt (+0x38)
  100161230  str     x2, [x0, x8]                             ; self->_queryAllEntriesStmt = arg1
  100161234  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl queryEntryIdsStmt]
; address 0x100161238  size 16  kind objc
; ======================================================================
  100161238  adrp    x8, #0x100420000
  10016123c  ldrsw   x8, [x8, #0xb58]                         ; ivar offset TAGDataLayerPersistentStoreImpl._queryEntryIdsStmt (+0x40)
  100161240  ldr     x0, [x0, x8]                             ; x0 = self->_queryEntryIdsStmt
  100161244  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setQueryEntryIdsStmt:]
; address 0x100161248  size 16  kind objc
; ======================================================================
  100161248  adrp    x8, #0x100420000
  10016124c  ldrsw   x8, [x8, #0xb58]                         ; ivar offset TAGDataLayerPersistentStoreImpl._queryEntryIdsStmt (+0x40)
  100161250  str     x2, [x0, x8]                             ; self->_queryEntryIdsStmt = arg1
  100161254  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl deleteOlderThanStmt]
; address 0x100161258  size 16  kind objc
; ======================================================================
  100161258  adrp    x8, #0x100420000
  10016125c  ldrsw   x8, [x8, #0xb5c]                         ; ivar offset TAGDataLayerPersistentStoreImpl._deleteOlderThanStmt (+0x48)
  100161260  ldr     x0, [x0, x8]                             ; x0 = self->_deleteOlderThanStmt
  100161264  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl setDeleteOlderThanStmt:]
; address 0x100161268  size 16  kind objc
; ======================================================================
  100161268  adrp    x8, #0x100420000
  10016126c  ldrsw   x8, [x8, #0xb5c]                         ; ivar offset TAGDataLayerPersistentStoreImpl._deleteOlderThanStmt (+0x48)
  100161270  str     x2, [x0, x8]                             ; self->_deleteOlderThanStmt = arg1
  100161274  ret

; ======================================================================
; -[TAGDataLayerPersistentStoreImpl .cxx_destruct]
; address 0x100161278  size 64  kind objc
; ======================================================================
  100161278  stp     x29, x30, [sp, #-0x10]!
  10016127c  mov     x29, sp
  100161280  stp     x20, x19, [sp, #-0x10]!
  100161284  mov     x19, x0
  100161288  adrp    x8, #0x100420000
  10016128c  ldrsw   x8, [x8, #0xb44]                         ; ivar offset TAGDataLayerPersistentStoreImpl._operationQueue (+0x18)
  100161290  add     x0, x19, x8
  100161294  mov     x1, #0
  100161298  bl      _objc_storeStrong
  10016129c  mov     x1, #0
  1001612a0  adrp    x8, #0x100420000
  1001612a4  ldrsw   x8, [x8, #0xb3c]                         ; ivar offset TAGDataLayerPersistentStoreImpl._databaseName (+0x8)
  1001612a8  add     x0, x19, x8
  1001612ac  ldp     x20, x19, [sp], #0x10
  1001612b0  ldp     x29, x30, [sp], #0x10
  1001612b4  b       _objc_storeStrong
