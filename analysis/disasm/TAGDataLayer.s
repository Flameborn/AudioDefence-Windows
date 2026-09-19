// unit TAGDataLayer — 42 functions
//   0x10015aa68      72  +[TAGDataLayer initialize]
//   0x10015aab0     704  -[TAGDataLayer initWithPersistentStore:]
//   0x10015ad70     152  -[TAGDataLayer init]
//   0x10015ae08     184  -[TAGDataLayer loadSavedMaps]
//   0x10015aec0     820  -[TAGDataLayer onKeyValuesLoaded:]
//   0x10015b1f4     156  -[TAGDataLayer pushValue:forKey:]
//   0x10015b290     940  -[TAGDataLayer get:]
//   0x10015b63c     360  -[TAGDataLayer push:]
//   0x10015b7a4     496  -[TAGDataLayer pushWithoutWaitingForSaved:]
//   0x10015b994     528  -[TAGDataLayer processQueuedUpdates]
//   0x10015bba4     308  -[TAGDataLayer savePersistentlyIfNeeded:]
//   0x10015bcd8     324  -[TAGDataLayer clearPersistentKeysWithPrefix:]
//   0x10015be1c     176  -[TAGDataLayer flattenMap:]
//   0x10015becc     920  -[TAGDataLayer flattenMapHelper:keyPrefix:accum:]
//   0x10015c264     208  -[TAGDataLayer getLifetimeValue:]
//   0x10015c334     616  -[TAGDataLayer getLifetimeObject:]
//   0x10015c59c    1124  -[TAGDataLayer parseLifetime:]
//   0x10015ca00     720  -[TAGDataLayer processUpdate:]
//   0x10015ccd0     220  -[TAGDataLayer registerListener:]
//   0x10015cdac     220  -[TAGDataLayer unregisterListener:]
//   0x10015ce88     544  -[TAGDataLayer notifyListeners:]
//   0x10015d0a8    1184  -[TAGDataLayer mergeMap:intoMap:]
//   0x10015d548    1068  -[TAGDataLayer mergeList:intoList:]
//   0x10015d974     668  -[TAGDataLayer expandKey:value:]
//   0x10015dc10      16  -[TAGDataLayer dataLayer]
//   0x10015dc20      16  -[TAGDataLayer listeners]
//   0x10015dc30      12  -[TAGDataLayer setListeners:]
//   0x10015dc3c      16  -[TAGDataLayer model]
//   0x10015dc4c      12  -[TAGDataLayer setModel:]
//   0x10015dc58      16  -[TAGDataLayer pushLock]
//   0x10015dc68      12  -[TAGDataLayer setPushLock:]
//   0x10015dc74      16  -[TAGDataLayer updateQueue]
//   0x10015dc84      12  -[TAGDataLayer setUpdateQueue:]
//   0x10015dc90      16  -[TAGDataLayer pushDepth]
//   0x10015dca0      16  -[TAGDataLayer setPushDepth:]
//   0x10015dcb0      16  -[TAGDataLayer persistentStore]
//   0x10015dcc0      16  -[TAGDataLayer persistentStoreLoadingCondition]
//   0x10015dcd0      20  -[TAGDataLayer persistentStoreLoaded]
//   0x10015dce4      16  -[TAGDataLayer setPersistentStoreLoaded:]
//   0x10015dcf4      16  -[TAGDataLayer lifetimeKeyComponents]
//   0x10015dd04      16  -[TAGDataLayer lifetimePattern]
//   0x10015dd14     204  -[TAGDataLayer .cxx_destruct]

; ======================================================================
; +[TAGDataLayer initialize]
; address 0x10015aa68  size 72  kind objc
; ======================================================================
  10015aa68  stp     x29, x30, [sp, #-0x10]!
  10015aa6c  mov     x29, sp
  10015aa70  adrp    x8, #0x10041e000
  10015aa74  ldr     x0, [x8, #0x100]                         ; class NSObject
  10015aa78  adrp    x8, #0x100416000
  10015aa7c  nop
  10015aa80  ldr     x1, [x8, #0xac8]
  10015aa84  bl      _objc_msgSend                            ; [NSObject alloc]
  10015aa88  adrp    x8, #0x100416000
  10015aa8c  nop
  10015aa90  ldr     x1, [x8, #0xab8]
  10015aa94  bl      _objc_msgSend                            ; [[NSObject alloc] init]
  10015aa98  adrp    x9, #0x10042d000
  10015aa9c  ldr     x8, [x9, #0x920]                         ; load g_10042d920
  10015aaa0  str     x0, [x9, #0x920]                         ; store g_10042d920 = [[NSObject alloc] init]
  10015aaa4  mov     x0, x8
  10015aaa8  ldp     x29, x30, [sp], #0x10
  10015aaac  b       _objc_release

; ======================================================================
; -[TAGDataLayer initWithPersistentStore:]
; address 0x10015aab0  size 704  kind objc
; ======================================================================
  10015aab0  stp     x29, x30, [sp, #-0x10]!
  10015aab4  mov     x29, sp
  10015aab8  stp     x20, x19, [sp, #-0x10]!
  10015aabc  stp     x22, x21, [sp, #-0x10]!
  10015aac0  stp     x24, x23, [sp, #-0x10]!
  10015aac4  sub     sp, sp, #0x20
  10015aac8  mov     x22, x2
  10015aacc  mov     x20, x0
  10015aad0  mov     x0, x22
  10015aad4  bl      _objc_retain
  10015aad8  mov     x19, x0
  10015aadc  str     x20, [sp, #0x10]
  10015aae0  adrp    x8, #0x10041f000
  10015aae4  ldr     x8, [x8, #0x288]
  10015aae8  str     x8, [sp, #0x18]
  10015aaec  adrp    x8, #0x100416000
  10015aaf0  nop
  10015aaf4  ldr     x21, [x8, #0xab8]
  10015aaf8  mov     x24, #0
  10015aafc  add     x0, sp, #0x10
  10015ab00  mov     x1, x21
  10015ab04  bl      _objc_msgSendSuper2                      ; [super init]
  10015ab08  mov     x20, x0
  10015ab0c  cbz     x20, loc_10015ad1c                       ; if (self == 0)
  10015ab10  mov     x24, x20
  10015ab14  adrp    x8, #0x10041e000
  10015ab18  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  10015ab1c  adrp    x8, #0x100418000
  10015ab20  nop
  10015ab24  ldr     x1, [x8, #0x360]
  10015ab28  bl      _objc_msgSend                            ; [NSMutableSet set]
  10015ab2c  mov     x24, x20
  10015ab30  mov     x29, x29
  10015ab34  bl      _objc_retainAutoreleasedReturnValue
  10015ab38  adrp    x8, #0x100420000
  10015ab3c  ldrsw   x9, [x8, #0xb00]                         ; ivar offset TAGDataLayer._listeners (+0x18)
  10015ab40  ldr     x8, [x20, x9]                            ; x8 = self->_listeners
  10015ab44  str     x0, [x20, x9]                            ; self->_listeners = [NSMutableSet set]
  10015ab48  mov     x0, x8
  10015ab4c  bl      _objc_release
  10015ab50  adrp    x8, #0x10041d000
  10015ab54  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10015ab58  adrp    x8, #0x10041b000
  10015ab5c  nop
  10015ab60  ldr     x1, [x8, #0xf20]
  10015ab64  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10015ab68  mov     x24, x20
  10015ab6c  mov     x29, x29
  10015ab70  bl      _objc_retainAutoreleasedReturnValue
  10015ab74  adrp    x8, #0x100420000
  10015ab78  ldrsw   x9, [x8, #0xb04]                         ; ivar offset TAGDataLayer._model (+0x20)
  10015ab7c  ldr     x8, [x20, x9]                            ; x8 = self->_model
  10015ab80  str     x0, [x20, x9]                            ; self->_model = [NSMutableDictionary dictionary]
  10015ab84  mov     x0, x8
  10015ab88  bl      _objc_release
  10015ab8c  adrp    x8, #0x10041d000
  10015ab90  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015ab94  adrp    x8, #0x100418000
  10015ab98  nop
  10015ab9c  ldr     x1, [x8, #0x50]
  10015aba0  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015aba4  mov     x24, x20
  10015aba8  mov     x29, x29
  10015abac  bl      _objc_retainAutoreleasedReturnValue
  10015abb0  adrp    x8, #0x100420000
  10015abb4  ldrsw   x9, [x8, #0xb08]                         ; ivar offset TAGDataLayer._updateQueue (+0x30)
  10015abb8  ldr     x8, [x20, x9]                            ; x8 = self->_updateQueue
  10015abbc  str     x0, [x20, x9]                            ; self->_updateQueue = [NSMutableArray array]
  10015abc0  mov     x0, x8
  10015abc4  bl      _objc_release
  10015abc8  adrp    x8, #0x10041e000
  10015abcc  ldr     x0, [x8, #0x938]                         ; class NSRecursiveLock
  10015abd0  adrp    x8, #0x100416000
  10015abd4  nop
  10015abd8  ldr     x23, [x8, #0xac8]
  10015abdc  mov     x1, x23
  10015abe0  bl      _objc_msgSend                            ; [NSRecursiveLock alloc]
  10015abe4  mov     x24, x20
  10015abe8  mov     x1, x21
  10015abec  bl      _objc_msgSend                            ; [[NSRecursiveLock alloc] init]
  10015abf0  mov     x24, x20
  10015abf4  adrp    x8, #0x100420000
  10015abf8  ldrsw   x9, [x8, #0xb0c]                         ; ivar offset TAGDataLayer._pushLock (+0x28)
  10015abfc  ldr     x8, [x20, x9]                            ; x8 = self->_pushLock
  10015ac00  str     x0, [x20, x9]                            ; self->_pushLock = [[NSRecursiveLock alloc] init]
  10015ac04  mov     x0, x8
  10015ac08  bl      _objc_release
  10015ac0c  adrp    x8, #0x100420000
  10015ac10  ldrsw   x8, [x8, #0xb10]                         ; ivar offset TAGDataLayer._persistentStore (+0x40)
  10015ac14  add     x0, x20, x8
  10015ac18  mov     x1, x22
  10015ac1c  bl      _objc_storeStrong
  10015ac20  adrp    x8, #0x10041e000
  10015ac24  ldr     x0, [x8, #0x940]                         ; class NSCondition
  10015ac28  mov     x1, x23
  10015ac2c  bl      _objc_msgSend                            ; [NSCondition alloc]
  10015ac30  mov     x24, x20
  10015ac34  mov     x1, x21
  10015ac38  bl      _objc_msgSend                            ; [[NSCondition alloc] init]
  10015ac3c  mov     x24, x20
  10015ac40  adrp    x8, #0x100420000
  10015ac44  ldrsw   x9, [x8, #0xb14]                         ; ivar offset TAGDataLayer._persistentStoreLoadingCondition (+0x48)
  10015ac48  ldr     x8, [x20, x9]                            ; x8 = self->_persistentStoreLoadingCondition
  10015ac4c  str     x0, [x20, x9]                            ; self->_persistentStoreLoadingCondition = [[NSCondition alloc] init]
  10015ac50  mov     x0, x8
  10015ac54  bl      _objc_release
  10015ac58  adrp    x8, #0x100420000
  10015ac5c  ldrsw   x8, [x8, #0xb18]                         ; ivar offset TAGDataLayer._persistentStoreLoaded (+0x8)
  10015ac60  strb    wzr, [x20, x8]                           ; self->_persistentStoreLoaded = 0
  10015ac64  adrp    x8, #0x100419000
  10015ac68  nop
  10015ac6c  ldr     x1, [x8, #0x188]
  10015ac70  adrp    x0, #0x1003c8000
  10015ac74  add     x0, x0, #0x270                           ; @"gtm.lifetime"
  10015ac78  adrp    x2, #0x1003be000
  10015ac7c  add     x2, x2, #0x9f0                           ; @"."
  10015ac80  bl      _objc_msgSend                            ; [@"gtm.lifetime" componentsSeparatedByString:@"."]
  10015ac84  mov     x29, x29
  10015ac88  bl      _objc_retainAutoreleasedReturnValue
  10015ac8c  adrp    x8, #0x100420000
  10015ac90  ldrsw   x9, [x8, #0xb1c]                         ; ivar offset TAGDataLayer._lifetimeKeyComponents (+0x50)
  10015ac94  ldr     x8, [x20, x9]                            ; x8 = self->_lifetimeKeyComponents
  10015ac98  str     x0, [x20, x9]                            ; self->_lifetimeKeyComponents = [@"gtm.lifetime" componentsSeparatedByString:@"."]
  10015ac9c  mov     x0, x8
  10015aca0  bl      _objc_release
  10015aca4  adrp    x8, #0x10041e000
  10015aca8  ldr     x0, [x8, #0x948]                         ; class NSRegularExpression
  10015acac  str     xzr, [sp, #8]
  10015acb0  adrp    x8, #0x10041d000
  10015acb4  nop
  10015acb8  ldr     x1, [x8, #0x330]
  10015acbc  mov     x21, #0
  10015acc0  mov     x3, #0
  10015acc4  adrp    x2, #0x1003c8000
  10015acc8  add     x2, x2, #0x290                           ; @"^(\d+)\s*([smhd]?)$"
  10015accc  add     x4, sp, #8
  10015acd0  bl      _objc_msgSend                            ; [NSRegularExpression regularExpressionWithPattern:@"^(\d+)\s*([smhd]?)$" options:0 error:&sp[0x8]]
  10015acd4  mov     x29, x29
  10015acd8  bl      _objc_retainAutoreleasedReturnValue
  10015acdc  mov     x22, x0
  10015ace0  ldr     x0, [sp, #8]
  10015ace4  bl      _objc_retain
  10015ace8  mov     x21, x0
  10015acec  adrp    x8, #0x100420000
  10015acf0  ldrsw   x8, [x8, #0xb20]                         ; ivar offset TAGDataLayer._lifetimePattern (+0x58)
  10015acf4  ldr     x0, [x20, x8]                            ; x0 = self->_lifetimePattern
  10015acf8  str     x22, [x20, x8]                           ; self->_lifetimePattern = [NSRegularExpression regularExpressionWithPattern:@"^(\d+)\s*([smhd]?)$" options:0 error:&sp[0x8]]
  10015acfc  bl      _objc_release
  10015ad00  adrp    x8, #0x10041d000
  10015ad04  nop
  10015ad08  ldr     x1, [x8, #0x338]
  10015ad0c  mov     x0, x20
  10015ad10  bl      _objc_msgSend                            ; [self loadSavedMaps]
  10015ad14  mov     x0, x21
  10015ad18  bl      _objc_release
loc_10015ad1c:
  10015ad1c  mov     x0, x19
  10015ad20  bl      _objc_release
  10015ad24  mov     x0, x20
  10015ad28  sub     sp, x29, #0x30
  10015ad2c  ldp     x24, x23, [sp], #0x10
  10015ad30  ldp     x22, x21, [sp], #0x10
  10015ad34  ldp     x20, x19, [sp], #0x10
  10015ad38  ldp     x29, x30, [sp], #0x10
  10015ad3c  ret
  10015ad40  mov     x22, x0
  10015ad44  b       loc_10015ad58
  10015ad48  mov     x22, x0
  10015ad4c  mov     x0, x21
  10015ad50  bl      _objc_release
  10015ad54  mov     x24, x20
loc_10015ad58:
  10015ad58  mov     x0, x19
  10015ad5c  bl      _objc_release
  10015ad60  mov     x0, x24
  10015ad64  bl      _objc_release
  10015ad68  mov     x0, x22
  10015ad6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer init]
; address 0x10015ad70  size 152  kind objc
; ======================================================================
  10015ad70  stp     x29, x30, [sp, #-0x10]!
  10015ad74  mov     x29, sp
  10015ad78  stp     x20, x19, [sp, #-0x10]!
  10015ad7c  stp     x22, x21, [sp, #-0x10]!
  10015ad80  mov     x19, x0
  10015ad84  adrp    x8, #0x10041e000
  10015ad88  ldr     x0, [x8, #0x950]                         ; class TAGNoopDataLayerPersistentStore
  10015ad8c  adrp    x8, #0x100416000
  10015ad90  nop
  10015ad94  ldr     x1, [x8, #0xac8]
  10015ad98  bl      _objc_msgSend                            ; [TAGNoopDataLayerPersistentStore alloc]
  10015ad9c  adrp    x8, #0x100416000
  10015ada0  nop
  10015ada4  ldr     x1, [x8, #0xab8]
  10015ada8  bl      _objc_msgSend                            ; [[TAGNoopDataLayerPersistentStore alloc] init]
  10015adac  mov     x20, x0
  10015adb0  adrp    x8, #0x10041d000
  10015adb4  nop
  10015adb8  ldr     x1, [x8, #0x158]
  10015adbc  mov     x0, x19
  10015adc0  mov     x2, x20
  10015adc4  bl      _objc_msgSend                            ; [self initWithPersistentStore:[[TAGNoopDataLayerPersistentStore alloc] init]]
  10015adc8  mov     x19, x0
  10015adcc  mov     x0, x20
  10015add0  bl      _objc_release
  10015add4  mov     x0, x19
  10015add8  ldp     x22, x21, [sp], #0x10
  10015addc  ldp     x20, x19, [sp], #0x10
  10015ade0  ldp     x29, x30, [sp], #0x10
  10015ade4  ret
  10015ade8  mov     x21, x0
  10015adec  mov     x0, x19
  10015adf0  b       loc_10015adfc
  10015adf4  mov     x21, x0
  10015adf8  mov     x0, x20
loc_10015adfc:
  10015adfc  bl      _objc_release
  10015ae00  mov     x0, x21
  10015ae04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer loadSavedMaps]
; address 0x10015ae08  size 184  kind objc
; ======================================================================
  10015ae08  stp     x29, x30, [sp, #-0x10]!
  10015ae0c  mov     x29, sp
  10015ae10  stp     x20, x19, [sp, #-0x10]!
  10015ae14  stp     x22, x21, [sp, #-0x10]!
  10015ae18  mov     x20, x0
  10015ae1c  adrp    x8, #0x10041d000
  10015ae20  nop
  10015ae24  ldr     x1, [x8, #0x340]
  10015ae28  bl      _objc_msgSend                            ; [self persistentStore]
  10015ae2c  mov     x29, x29
  10015ae30  bl      _objc_retainAutoreleasedReturnValue
  10015ae34  mov     x19, x0
  10015ae38  adrp    x8, #0x10041e000
  10015ae3c  ldr     x0, [x8, #0x958]                         ; class TAGDataLayerCallback
  10015ae40  adrp    x8, #0x100416000
  10015ae44  nop
  10015ae48  ldr     x1, [x8, #0xac8]
  10015ae4c  bl      _objc_msgSend                            ; [TAGDataLayerCallback alloc]
  10015ae50  adrp    x8, #0x10041d000
  10015ae54  nop
  10015ae58  ldr     x1, [x8, #0x348]
  10015ae5c  mov     x2, x20
  10015ae60  bl      _objc_msgSend                            ; [[TAGDataLayerCallback alloc] initWithDataLayer:self]
  10015ae64  mov     x20, x0
  10015ae68  adrp    x8, #0x10041d000
  10015ae6c  nop
  10015ae70  ldr     x1, [x8, #0x350]
  10015ae74  mov     x0, x19
  10015ae78  mov     x2, x20
  10015ae7c  bl      _objc_msgSend                            ; [[self persistentStore] loadSaved:[[TAGDataLayerCallback alloc] initWithDataLayer:self]]
  10015ae80  mov     x0, x20
  10015ae84  bl      _objc_release
  10015ae88  mov     x0, x19
  10015ae8c  ldp     x22, x21, [sp], #0x10
  10015ae90  ldp     x20, x19, [sp], #0x10
  10015ae94  ldp     x29, x30, [sp], #0x10
  10015ae98  b       _objc_release
  10015ae9c  mov     x21, x0
  10015aea0  b       loc_10015aeb0
  10015aea4  mov     x21, x0
  10015aea8  mov     x0, x20
  10015aeac  bl      _objc_release
loc_10015aeb0:
  10015aeb0  mov     x0, x19
  10015aeb4  bl      _objc_release
  10015aeb8  mov     x0, x21
  10015aebc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer onKeyValuesLoaded:]
; address 0x10015aec0  size 820  kind objc
; ======================================================================
  10015aec0  stp     x29, x30, [sp, #-0x10]!
  10015aec4  mov     x29, sp
  10015aec8  stp     x20, x19, [sp, #-0x10]!
  10015aecc  stp     x22, x21, [sp, #-0x10]!
  10015aed0  stp     x24, x23, [sp, #-0x10]!
  10015aed4  stp     x26, x25, [sp, #-0x10]!
  10015aed8  stp     x28, x27, [sp, #-0x10]!
  10015aedc  sub     sp, sp, #0x100
  10015aee0  mov     x20, x0
  10015aee4  adrp    x8, #0x1003b0000
  10015aee8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015aeec  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015aef0  stur    x8, [x29, #-0x58]
  10015aef4  mov     x0, x2
  10015aef8  bl      _objc_retain
  10015aefc  stp     xzr, xzr, [x29, #-0x68]
  10015af00  stp     xzr, xzr, [x29, #-0x78]
  10015af04  stp     xzr, xzr, [x29, #-0x88]
  10015af08  stp     xzr, xzr, [x29, #-0x98]
  10015af0c  bl      _objc_retain
  10015af10  mov     x19, x0
  10015af14  str     x19, [sp, #0x20]
  10015af18  adrp    x8, #0x100416000
  10015af1c  nop
  10015af20  ldr     x1, [x8, #0xe00]
  10015af24  str     x1, [sp, #0x18]
  10015af28  sub     x2, x29, #0x98
  10015af2c  add     x3, sp, #0x38
  10015af30  mov     x4, #0x10
  10015af34  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10015af38  mov     x22, x0
  10015af3c  cbz     x22, loc_10015b064                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10015af40  ldur    x8, [x29, #-0x88]
  10015af44  ldr     x8, [x8]
  10015af48  str     x8, [sp, #0x30]
  10015af4c  adrp    x8, #0x100419000
  10015af50  nop
  10015af54  ldr     x8, [x8, #0x3e8]
  10015af58  str     x8, [sp, #0x28]
  10015af5c  adrp    x8, #0x100418000
  10015af60  nop
  10015af64  ldr     x24, [x8, #0x800]
  10015af68  adrp    x8, #0x10041d000
  10015af6c  nop
  10015af70  ldr     x25, [x8, #0x358]
  10015af74  adrp    x8, #0x10041d000
  10015af78  nop
  10015af7c  ldr     x26, [x8, #0x360]
  10015af80  sub     x8, x29, #0x98
  10015af84  str     x8, [sp, #0x10]
  10015af88  add     x8, sp, #0x38
  10015af8c  str     x8, [sp, #8]
loc_10015af90:
  10015af90  mov     x23, #0
loc_10015af94:
  10015af94  ldur    x8, [x29, #-0x88]
  10015af98  ldr     x8, [x8]
  10015af9c  ldr     x9, [sp, #0x30]
  10015afa0  cmp     x8, x9
  10015afa4  b.eq    loc_10015afb0                            ; if (x8 == x9)
  10015afa8  ldr     x0, [sp, #0x20]
  10015afac  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10015afb0:
  10015afb0  ldur    x8, [x29, #-0x90]
  10015afb4  ldr     x0, [x8, x23, lsl #3]
  10015afb8  bl      _objc_retain
  10015afbc  mov     x21, x0
  10015afc0  ldr     x1, [sp, #0x28]
  10015afc4  bl      _objc_msgSend                            ; [x0 key]
  10015afc8  mov     x29, x29
  10015afcc  bl      _objc_retainAutoreleasedReturnValue
  10015afd0  mov     x27, x0
  10015afd4  mov     x0, x21
  10015afd8  mov     x1, x24
  10015afdc  bl      _objc_msgSend                            ; [x0 value]
  10015afe0  mov     x29, x29
  10015afe4  bl      _objc_retainAutoreleasedReturnValue
  10015afe8  mov     x28, x0
  10015afec  mov     x0, x20
  10015aff0  mov     x1, x25
  10015aff4  mov     x2, x27
  10015aff8  mov     x3, x28
  10015affc  bl      _objc_msgSend                            ; [self expandKey:[x0 key] value:[x0 value]]
  10015b000  mov     x29, x29
  10015b004  bl      _objc_retainAutoreleasedReturnValue
  10015b008  mov     x19, x0
  10015b00c  mov     x0, x20
  10015b010  mov     x1, x26
  10015b014  mov     x2, x19
  10015b018  bl      _objc_msgSend                            ; [self pushWithoutWaitingForSaved:[self expandKey:[x0 key] value:[x0 value]]]
  10015b01c  mov     x0, x19
  10015b020  bl      _objc_release
  10015b024  mov     x0, x28
  10015b028  bl      _objc_release
  10015b02c  mov     x0, x27
  10015b030  bl      _objc_release
  10015b034  mov     x0, x21
  10015b038  bl      _objc_release
  10015b03c  add     x23, x23, #1
  10015b040  cmp     x23, x22
  10015b044  b.lo    loc_10015af94                            ; if ((x23 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  10015b048  mov     x4, #0x10
  10015b04c  ldp     x1, x19, [sp, #0x18]
  10015b050  mov     x0, x19
  10015b054  ldp     x3, x2, [sp, #8]
  10015b058  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10015b05c  mov     x22, x0
  10015b060  cbnz    x22, loc_10015af90                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10015b064:
  10015b064  mov     x0, x19
  10015b068  bl      _objc_release
  10015b06c  adrp    x8, #0x10041d000
  10015b070  nop
  10015b074  ldr     x21, [x8, #0x368]
  10015b078  mov     x0, x20
  10015b07c  mov     x1, x21
  10015b080  bl      _objc_msgSend                            ; [self persistentStoreLoadingCondition]
  10015b084  mov     x29, x29
  10015b088  bl      _objc_retainAutoreleasedReturnValue
  10015b08c  mov     x22, x0
  10015b090  adrp    x8, #0x10041d000
  10015b094  nop
  10015b098  ldr     x1, [x8, #0x370]
  10015b09c  bl      _objc_msgSend                            ; [[self persistentStoreLoadingCondition] lock]
  10015b0a0  mov     x0, x22
  10015b0a4  bl      _objc_release
  10015b0a8  adrp    x8, #0x10041d000
  10015b0ac  nop
  10015b0b0  ldr     x1, [x8, #0x378]
  10015b0b4  mov     w2, #1
  10015b0b8  mov     x0, x20
  10015b0bc  bl      _objc_msgSend                            ; [self setPersistentStoreLoaded:1]
  10015b0c0  mov     x0, x20
  10015b0c4  mov     x1, x21
  10015b0c8  bl      _objc_msgSend                            ; [self persistentStoreLoadingCondition]
  10015b0cc  mov     x29, x29
  10015b0d0  bl      _objc_retainAutoreleasedReturnValue
  10015b0d4  mov     x22, x0
  10015b0d8  adrp    x8, #0x10041d000
  10015b0dc  nop
  10015b0e0  ldr     x1, [x8, #0x380]
  10015b0e4  bl      _objc_msgSend                            ; [[self persistentStoreLoadingCondition] broadcast]
  10015b0e8  mov     x0, x22
  10015b0ec  bl      _objc_release
  10015b0f0  mov     x0, x20
  10015b0f4  mov     x1, x21
  10015b0f8  bl      _objc_msgSend                            ; [self persistentStoreLoadingCondition]
  10015b0fc  mov     x29, x29
  10015b100  bl      _objc_retainAutoreleasedReturnValue
  10015b104  mov     x21, x0
  10015b108  adrp    x8, #0x10041d000
  10015b10c  nop
  10015b110  ldr     x1, [x8, #0x388]
  10015b114  bl      _objc_msgSend                            ; [[self persistentStoreLoadingCondition] unlock]
  10015b118  mov     x0, x21
  10015b11c  bl      _objc_release
  10015b120  mov     x0, x19
  10015b124  bl      _objc_release
  10015b128  adrp    x8, #0x1003b0000
  10015b12c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015b130  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015b134  ldur    x9, [x29, #-0x58]
  10015b138  sub     x8, x8, x9
  10015b13c  cbnz    x8, loc_10015b160                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015b140  sub     sp, x29, #0x50
  10015b144  ldp     x28, x27, [sp], #0x10
  10015b148  ldp     x26, x25, [sp], #0x10
  10015b14c  ldp     x24, x23, [sp], #0x10
  10015b150  ldp     x22, x21, [sp], #0x10
  10015b154  ldp     x20, x19, [sp], #0x10
  10015b158  ldp     x29, x30, [sp], #0x10
  10015b15c  ret
loc_10015b160:
  10015b160  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015b164  mov     x20, x0
  10015b168  b       loc_10015b198
  10015b16c  mov     x20, x0
  10015b170  b       loc_10015b190
  10015b174  mov     x20, x0
  10015b178  b       loc_10015b188
  10015b17c  mov     x20, x0
  10015b180  mov     x0, x19
  10015b184  bl      _objc_release
loc_10015b188:
  10015b188  mov     x0, x28
  10015b18c  bl      _objc_release
loc_10015b190:
  10015b190  mov     x0, x27
  10015b194  bl      _objc_release
loc_10015b198:
  10015b198  mov     x0, x21
  10015b19c  bl      _objc_release
loc_10015b1a0:
  10015b1a0  ldr     x19, [sp, #0x20]
  10015b1a4  mov     x0, x19
loc_10015b1a8:
  10015b1a8  bl      _objc_release
loc_10015b1ac:
  10015b1ac  mov     x0, x19
  10015b1b0  bl      _objc_release
  10015b1b4  mov     x0, x20
  10015b1b8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015b1bc  b       loc_10015b1c8
  10015b1c0  str     x19, [sp, #0x20]
  10015b1c4  b       loc_10015b1c8
loc_10015b1c8:
  10015b1c8  mov     x20, x0
  10015b1cc  b       loc_10015b1a0
  10015b1d0  b       loc_10015b1d4
loc_10015b1d4:
  10015b1d4  mov     x20, x0
  10015b1d8  mov     x0, x22
  10015b1dc  b       loc_10015b1a8
  10015b1e0  mov     x20, x0
  10015b1e4  b       loc_10015b1ac
  10015b1e8  mov     x20, x0
  10015b1ec  mov     x0, x21
  10015b1f0  b       loc_10015b1a8

; ======================================================================
; -[TAGDataLayer pushValue:forKey:]
; address 0x10015b1f4  size 156  kind objc
; ======================================================================
  10015b1f4  stp     x29, x30, [sp, #-0x10]!
  10015b1f8  mov     x29, sp
  10015b1fc  stp     x20, x19, [sp, #-0x10]!
  10015b200  stp     x22, x21, [sp, #-0x10]!
  10015b204  mov     x21, x3
  10015b208  mov     x19, x0
  10015b20c  mov     x0, x2
  10015b210  bl      _objc_retain
  10015b214  mov     x20, x0
  10015b218  adrp    x8, #0x10041d000
  10015b21c  nop
  10015b220  ldr     x1, [x8, #0x358]
  10015b224  mov     x0, x19
  10015b228  mov     x2, x21
  10015b22c  mov     x3, x20
  10015b230  bl      _objc_msgSend                            ; [self expandKey:arg2 value:arg1]
  10015b234  mov     x21, x0
  10015b238  mov     x0, x20
  10015b23c  bl      _objc_release
  10015b240  mov     x0, x21
  10015b244  bl      _objc_retainAutoreleasedReturnValue
  10015b248  mov     x20, x0
  10015b24c  adrp    x8, #0x10041b000
  10015b250  nop
  10015b254  ldr     x1, [x8, #0x330]
  10015b258  mov     x0, x19
  10015b25c  mov     x2, x20
  10015b260  bl      _objc_msgSend                            ; [self push:[self expandKey:arg2 value:arg1]]
  10015b264  mov     x0, x20
  10015b268  ldp     x22, x21, [sp], #0x10
  10015b26c  ldp     x20, x19, [sp], #0x10
  10015b270  ldp     x29, x30, [sp], #0x10
  10015b274  b       _objc_release
  10015b278  b       loc_10015b27c
loc_10015b27c:
  10015b27c  mov     x19, x0
  10015b280  mov     x0, x20
  10015b284  bl      _objc_release
  10015b288  mov     x0, x19
  10015b28c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer get:]
; address 0x10015b290  size 940  kind objc
; ======================================================================
  10015b290  stp     x29, x30, [sp, #-0x10]!
  10015b294  mov     x29, sp
  10015b298  stp     x20, x19, [sp, #-0x10]!
  10015b29c  stp     x22, x21, [sp, #-0x10]!
  10015b2a0  stp     x24, x23, [sp, #-0x10]!
  10015b2a4  stp     x26, x25, [sp, #-0x10]!
  10015b2a8  stp     x28, x27, [sp, #-0x10]!
  10015b2ac  sub     sp, sp, #0x110
  10015b2b0  mov     x19, x0
  10015b2b4  adrp    x8, #0x1003b0000
  10015b2b8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015b2bc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015b2c0  stur    x8, [x29, #-0x58]
  10015b2c4  mov     x0, x2
  10015b2c8  bl      _objc_retain
  10015b2cc  mov     x21, x0
  10015b2d0  str     x21, [sp, #0x28]
  10015b2d4  adrp    x8, #0x100418000
  10015b2d8  nop
  10015b2dc  ldr     x20, [x8, #0x9e8]
  10015b2e0  mov     x0, x19
  10015b2e4  mov     x1, x20
  10015b2e8  bl      _objc_msgSend                            ; [self model]
  10015b2ec  mov     x29, x29
  10015b2f0  bl      _objc_retainAutoreleasedReturnValue
  10015b2f4  mov     x23, x0
  10015b2f8  str     x23, [sp, #0x20]
  10015b2fc  bl      _objc_sync_enter                         ; objc_sync_enter([self model])
  10015b300  mov     x0, x19
  10015b304  mov     x1, x20
  10015b308  bl      _objc_msgSend                            ; [self model]
  10015b30c  mov     x29, x29
  10015b310  bl      _objc_retainAutoreleasedReturnValue
  10015b314  mov     x22, x0
  10015b318  adrp    x8, #0x100419000
  10015b31c  nop
  10015b320  ldr     x1, [x8, #0x188]
  10015b324  adrp    x2, #0x1003be000
  10015b328  add     x2, x2, #0x9f0                           ; @"."
  10015b32c  mov     x0, x21
  10015b330  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"."]
  10015b334  mov     x29, x29
  10015b338  bl      _objc_retainAutoreleasedReturnValue
  10015b33c  stp     xzr, xzr, [x29, #-0x68]
  10015b340  stp     xzr, xzr, [x29, #-0x78]
  10015b344  stp     xzr, xzr, [x29, #-0x88]
  10015b348  stp     xzr, xzr, [x29, #-0x98]
  10015b34c  bl      _objc_retain
  10015b350  mov     x20, x0
  10015b354  str     x20, [sp, #0x30]
  10015b358  adrp    x8, #0x100416000
  10015b35c  nop
  10015b360  ldr     x1, [x8, #0xe00]
  10015b364  str     x1, [sp, #0x18]
  10015b368  sub     x2, x29, #0x98
  10015b36c  add     x3, sp, #0x48
  10015b370  mov     x4, #0x10
  10015b374  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"."] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10015b378  mov     x24, x0
  10015b37c  cbz     x24, loc_10015b500                       ; if ([[arg1 componentsSeparatedByString:@"."] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10015b380  ldur    x8, [x29, #-0x88]
  10015b384  ldr     x8, [x8]
  10015b388  str     x8, [sp, #0x40]
  10015b38c  adrp    x8, #0x100417000
  10015b390  nop
  10015b394  adrp    x9, #0x100417000
  10015b398  nop
  10015b39c  ldr     x26, [x8, #0x2e0]
  10015b3a0  ldr     x27, [x9, #0x3b8]
  10015b3a4  adrp    x8, #0x100417000
  10015b3a8  nop
  10015b3ac  adrp    x9, #0x100418000
  10015b3b0  add     x9, x9, #0x468                           ; &@selector(null)
  10015b3b4  ldr     x28, [x8, #0x40]
  10015b3b8  ldr     x19, [x9]
  10015b3bc  sub     x8, x29, #0x98
  10015b3c0  str     x8, [sp, #0x10]
  10015b3c4  add     x8, sp, #0x48
  10015b3c8  str     x8, [sp, #8]
  10015b3cc  str     x8, [sp, #0x38]
loc_10015b3d0:
  10015b3d0  mov     x25, #0
loc_10015b3d4:
  10015b3d4  ldur    x8, [x29, #-0x88]
  10015b3d8  ldr     x8, [x8]
  10015b3dc  ldr     x9, [sp, #0x40]
  10015b3e0  cmp     x8, x9
  10015b3e4  b.eq    loc_10015b3f0                            ; if (x8 == x9)
  10015b3e8  ldr     x0, [sp, #0x30]
  10015b3ec  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 componentsSeparatedByString:@"."])
loc_10015b3f0:
  10015b3f0  ldur    x8, [x29, #-0x90]
  10015b3f4  ldr     x23, [x8, x25, lsl #3]
  10015b3f8  adrp    x8, #0x10041d000
  10015b3fc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10015b400  mov     x1, x26
  10015b404  bl      _objc_msgSend                            ; [NSDictionary class]
  10015b408  mov     x2, x0
  10015b40c  mov     x0, x22
  10015b410  mov     x1, x27
  10015b414  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  10015b418  tbz     w0, #0, loc_10015b51c                    ; if (!([x0 isKindOfClass:[NSDictionary class]] & 1))
  10015b41c  mov     x0, x22
  10015b420  bl      _objc_retain
  10015b424  mov     x20, x0
  10015b428  mov     x1, x28
  10015b42c  mov     x2, x23
  10015b430  bl      _objc_msgSend                            ; [x0 objectForKey:x2]
  10015b434  mov     x29, x29
  10015b438  bl      _objc_retainAutoreleasedReturnValue
  10015b43c  mov     x23, x0
  10015b440  adrp    x8, #0x10041e000
  10015b444  ldr     x0, [x8, #0x140]                         ; class NSNull
  10015b448  mov     x1, x19
  10015b44c  bl      _objc_msgSend                            ; [NSNull null]
  10015b450  mov     x29, x29
  10015b454  bl      _objc_retainAutoreleasedReturnValue
  10015b458  mov     x22, x0
  10015b45c  bl      _objc_release
  10015b460  cmp     x23, x22
  10015b464  b.ne    loc_10015b490                            ; if ([x0 objectForKey:x2] != [NSNull null])
  10015b468  adrp    x8, #0x10041e000
  10015b46c  ldr     x0, [x8, #0x140]                         ; class NSNull
  10015b470  mov     x1, x19
  10015b474  bl      _objc_msgSend                            ; [NSNull null]
  10015b478  mov     x29, x29
  10015b47c  bl      _objc_retainAutoreleasedReturnValue
  10015b480  str     x0, [sp, #0x38]
  10015b484  mov     w21, #0
  10015b488  mov     x22, x20
  10015b48c  b       loc_10015b4bc
loc_10015b490:
  10015b490  cbnz    x23, loc_10015b4a4                       ; if ([x0 objectForKey:x2] != 0)
  10015b494  mov     w21, #0
  10015b498  str     xzr, [sp, #0x38]
  10015b49c  mov     x22, x20
  10015b4a0  b       loc_10015b4bc
loc_10015b4a4:
  10015b4a4  mov     x0, x23
  10015b4a8  bl      _objc_retain
  10015b4ac  mov     x22, x0
  10015b4b0  mov     x0, x20
  10015b4b4  bl      _objc_release
  10015b4b8  mov     w21, #1
loc_10015b4bc:
  10015b4bc  mov     x0, x23
  10015b4c0  bl      _objc_release
  10015b4c4  mov     x0, x20
  10015b4c8  bl      _objc_release
  10015b4cc  cbz     w21, loc_10015b528                       ; if (one of {0, 1} == 0)
  10015b4d0  add     x25, x25, #1
  10015b4d4  cmp     x25, x24
  10015b4d8  b.lo    loc_10015b3d4                            ; if ((x25 + 1) <u [[arg1 componentsSeparatedByString:@"."] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10015b4dc  mov     x4, #0x10
  10015b4e0  ldr     x20, [sp, #0x30]
  10015b4e4  mov     x0, x20
  10015b4e8  ldp     x2, x1, [sp, #0x10]
  10015b4ec  ldr     x3, [sp, #8]
  10015b4f0  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"."] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10015b4f4  mov     x24, x0
  10015b4f8  ldp     x23, x21, [sp, #0x20]
  10015b4fc  cbnz    x24, loc_10015b3d0                       ; if ([[arg1 componentsSeparatedByString:@"."] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10015b500:
  10015b500  mov     x0, x20
  10015b504  bl      _objc_release
  10015b508  mov     x0, x22
  10015b50c  bl      _objc_retain
  10015b510  mov     x22, x0
  10015b514  mov     x24, x22
  10015b518  b       loc_10015b538
loc_10015b51c:
  10015b51c  mov     x24, #0
  10015b520  ldr     x20, [sp, #0x30]
  10015b524  b       loc_10015b52c
loc_10015b528:
  10015b528  ldp     x20, x24, [sp, #0x30]
loc_10015b52c:
  10015b52c  mov     x0, x20
  10015b530  bl      _objc_release
  10015b534  ldp     x23, x21, [sp, #0x20]
loc_10015b538:
  10015b538  adrp    x19, #0x1003b0000
  10015b53c  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10015b540  mov     x0, x20
  10015b544  bl      _objc_release
  10015b548  mov     x0, x22
  10015b54c  bl      _objc_release
  10015b550  mov     x0, x23
  10015b554  bl      _objc_sync_exit                          ; objc_sync_exit([self model])
  10015b558  mov     x0, x23
  10015b55c  bl      _objc_release
  10015b560  mov     x0, x21
  10015b564  bl      _objc_release
  10015b568  ldr     x8, [x19]                                ; x8 = ___stack_chk_guard[+0x0]
  10015b56c  ldur    x9, [x29, #-0x58]
  10015b570  sub     x8, x8, x9
  10015b574  cbnz    x8, loc_10015b59c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015b578  mov     x0, x24
  10015b57c  sub     sp, x29, #0x50
  10015b580  ldp     x28, x27, [sp], #0x10
  10015b584  ldp     x26, x25, [sp], #0x10
  10015b588  ldp     x24, x23, [sp], #0x10
  10015b58c  ldp     x22, x21, [sp], #0x10
  10015b590  ldp     x20, x19, [sp], #0x10
  10015b594  ldp     x29, x30, [sp], #0x10
  10015b598  b       _objc_autoreleaseReturnValue
loc_10015b59c:
  10015b59c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015b5a0  str     x21, [sp, #0x28]
  10015b5a4  mov     x19, x0
  10015b5a8  b       loc_10015b62c
  10015b5ac  stp     x23, x21, [sp, #0x20]
  10015b5b0  mov     x19, x0
  10015b5b4  b       loc_10015b618
  10015b5b8  stp     x23, x21, [sp, #0x20]
  10015b5bc  mov     x19, x0
  10015b5c0  b       loc_10015b610
  10015b5c4  str     x20, [sp, #0x30]
  10015b5c8  stp     x23, x21, [sp, #0x20]
  10015b5cc  b       loc_10015b5f8
  10015b5d0  b       loc_10015b5f8
  10015b5d4  mov     x19, x0
  10015b5d8  b       loc_10015b5e8
  10015b5dc  mov     x19, x0
  10015b5e0  mov     x0, x23
  10015b5e4  bl      _objc_release
loc_10015b5e8:
  10015b5e8  mov     x0, x20
  10015b5ec  bl      _objc_release
  10015b5f0  mov     x22, x20
  10015b5f4  b       loc_10015b5fc
loc_10015b5f8:
  10015b5f8  mov     x19, x0
loc_10015b5fc:
  10015b5fc  ldr     x20, [sp, #0x30]
  10015b600  mov     x0, x20
  10015b604  bl      _objc_release
  10015b608  mov     x0, x20
  10015b60c  bl      _objc_release
loc_10015b610:
  10015b610  mov     x0, x22
  10015b614  bl      _objc_release
loc_10015b618:
  10015b618  ldr     x20, [sp, #0x20]
  10015b61c  mov     x0, x20
  10015b620  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015b624  mov     x0, x20
  10015b628  bl      _objc_release
loc_10015b62c:
  10015b62c  ldr     x0, [sp, #0x28]
  10015b630  bl      _objc_release
  10015b634  mov     x0, x19
  10015b638  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer push:]
; address 0x10015b63c  size 360  kind objc
; ======================================================================
  10015b63c  stp     x29, x30, [sp, #-0x10]!
  10015b640  mov     x29, sp
  10015b644  stp     x20, x19, [sp, #-0x10]!
  10015b648  stp     x22, x21, [sp, #-0x10]!
  10015b64c  stp     x24, x23, [sp, #-0x10]!
  10015b650  mov     x20, x0
  10015b654  mov     x0, x2
  10015b658  bl      _objc_retain
  10015b65c  mov     x19, x0
  10015b660  adrp    x8, #0x10041d000
  10015b664  nop
  10015b668  ldr     x21, [x8, #0x390]
  10015b66c  mov     x0, x20
  10015b670  mov     x1, x21
  10015b674  bl      _objc_msgSend                            ; [self persistentStoreLoaded]
  10015b678  tbnz    w0, #0, loc_10015b740                    ; if (([self persistentStoreLoaded] & 1))
  10015b67c  adrp    x8, #0x10041d000
  10015b680  nop
  10015b684  ldr     x22, [x8, #0x368]
  10015b688  mov     x0, x20
  10015b68c  mov     x1, x22
  10015b690  bl      _objc_msgSend                            ; [self persistentStoreLoadingCondition]
  10015b694  mov     x29, x29
  10015b698  bl      _objc_retainAutoreleasedReturnValue
  10015b69c  mov     x23, x0
  10015b6a0  adrp    x8, #0x10041d000
  10015b6a4  nop
  10015b6a8  ldr     x1, [x8, #0x370]
  10015b6ac  bl      _objc_msgSend                            ; [[self persistentStoreLoadingCondition] lock]
  10015b6b0  mov     x0, x23
  10015b6b4  bl      _objc_release
  10015b6b8  adrp    x8, #0x10041d000
  10015b6bc  add     x8, x8, #0x398                           ; &@selector(wait)
  10015b6c0  ldr     x23, [x8]
  10015b6c4  b       loc_10015b6d0
loc_10015b6c8:
  10015b6c8  mov     x0, x24
  10015b6cc  bl      _objc_release
loc_10015b6d0:
  10015b6d0  mov     x0, x20
  10015b6d4  mov     x1, x21
  10015b6d8  bl      _objc_msgSend                            ; [self persistentStoreLoaded]
  10015b6dc  tbnz    w0, #0, loc_10015b710                    ; if (([self persistentStoreLoaded] & 1))
  10015b6e0  mov     x0, x20
  10015b6e4  mov     x1, x22
  10015b6e8  bl      _objc_msgSend                            ; [self persistentStoreLoadingCondition]
  10015b6ec  mov     x29, x29
  10015b6f0  bl      _objc_retainAutoreleasedReturnValue
  10015b6f4  mov     x24, x0
  10015b6f8  mov     x1, x23
  10015b6fc  bl      _objc_msgSend                            ; [[self persistentStoreLoadingCondition] wait]
  10015b700  b       loc_10015b6c8
  10015b704  mov     x20, x0
  10015b708  mov     x0, x24
  10015b70c  b       loc_10015b788
loc_10015b710:
  10015b710  mov     x0, x20
  10015b714  mov     x1, x22
  10015b718  bl      _objc_msgSend                            ; [self persistentStoreLoadingCondition]
  10015b71c  mov     x29, x29
  10015b720  bl      _objc_retainAutoreleasedReturnValue
  10015b724  mov     x21, x0
  10015b728  adrp    x8, #0x10041d000
  10015b72c  nop
  10015b730  ldr     x1, [x8, #0x388]
  10015b734  bl      _objc_msgSend                            ; [[self persistentStoreLoadingCondition] unlock]
  10015b738  mov     x0, x21
  10015b73c  bl      _objc_release
loc_10015b740:
  10015b740  adrp    x8, #0x10041d000
  10015b744  nop
  10015b748  ldr     x1, [x8, #0x360]
  10015b74c  mov     x0, x20
  10015b750  mov     x2, x19
  10015b754  bl      _objc_msgSend                            ; [self pushWithoutWaitingForSaved:arg1]
  10015b758  mov     x0, x19
  10015b75c  ldp     x24, x23, [sp], #0x10
  10015b760  ldp     x22, x21, [sp], #0x10
  10015b764  ldp     x20, x19, [sp], #0x10
  10015b768  ldp     x29, x30, [sp], #0x10
  10015b76c  b       _objc_release
  10015b770  mov     x20, x0
  10015b774  mov     x0, x23
  10015b778  b       loc_10015b788
  10015b77c  b       loc_10015b790
  10015b780  mov     x20, x0
  10015b784  mov     x0, x21
loc_10015b788:
  10015b788  bl      _objc_release
  10015b78c  b       loc_10015b794
loc_10015b790:
  10015b790  mov     x20, x0
loc_10015b794:
  10015b794  mov     x0, x19
  10015b798  bl      _objc_release
  10015b79c  mov     x0, x20
  10015b7a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer pushWithoutWaitingForSaved:]
; address 0x10015b7a4  size 496  kind objc
; ======================================================================
  10015b7a4  stp     x29, x30, [sp, #-0x10]!
  10015b7a8  mov     x29, sp
  10015b7ac  stp     x20, x19, [sp, #-0x10]!
  10015b7b0  stp     x22, x21, [sp, #-0x10]!
  10015b7b4  stp     x24, x23, [sp, #-0x10]!
  10015b7b8  mov     x20, x0
  10015b7bc  mov     x0, x2
  10015b7c0  bl      _objc_retain
  10015b7c4  mov     x19, x0
  10015b7c8  adrp    x8, #0x10041d000
  10015b7cc  nop
  10015b7d0  ldr     x21, [x8, #0x3a0]
  10015b7d4  mov     x0, x20
  10015b7d8  mov     x1, x21
  10015b7dc  bl      _objc_msgSend                            ; [self pushLock]
  10015b7e0  mov     x29, x29
  10015b7e4  bl      _objc_retainAutoreleasedReturnValue
  10015b7e8  mov     x22, x0
  10015b7ec  adrp    x8, #0x10041d000
  10015b7f0  nop
  10015b7f4  ldr     x1, [x8, #0x370]
  10015b7f8  bl      _objc_msgSend                            ; [[self pushLock] lock]
  10015b7fc  mov     x0, x22
  10015b800  bl      _objc_release
  10015b804  adrp    x8, #0x10041d000
  10015b808  nop
  10015b80c  ldr     x1, [x8, #0x3a8]
  10015b810  mov     x0, x20
  10015b814  bl      _objc_msgSend                            ; [self updateQueue]
  10015b818  mov     x29, x29
  10015b81c  bl      _objc_retainAutoreleasedReturnValue
  10015b820  mov     x22, x0
  10015b824  adrp    x8, #0x10041b000
  10015b828  nop
  10015b82c  ldr     x1, [x8, #0x1e8]
  10015b830  mov     x3, #0
  10015b834  mov     x2, x19
  10015b838  bl      _objc_msgSend                            ; [[self updateQueue] insertObject:arg1 atIndex:0]
  10015b83c  mov     x0, x22
  10015b840  bl      _objc_release
  10015b844  adrp    x8, #0x10041d000
  10015b848  nop
  10015b84c  ldr     x1, [x8, #0x3b0]
  10015b850  mov     x0, x20
  10015b854  bl      _objc_msgSend                            ; [self pushDepth]
  10015b858  mov     x22, x0
  10015b85c  add     x2, x22, #1
  10015b860  adrp    x8, #0x10041d000
  10015b864  nop
  10015b868  ldr     x1, [x8, #0x3b8]
  10015b86c  mov     x0, x20
  10015b870  bl      _objc_msgSend                            ; [self setPushDepth:([self pushDepth] + 1)]
  10015b874  cbnz    x22, loc_10015b88c                       ; if ([self pushDepth] != 0)
  10015b878  adrp    x8, #0x10041d000
  10015b87c  nop
  10015b880  ldr     x1, [x8, #0x3c0]
  10015b884  mov     x0, x20
  10015b888  bl      _objc_msgSend                            ; [self processQueuedUpdates]
loc_10015b88c:
  10015b88c  adrp    x8, #0x10041d000
  10015b890  nop
  10015b894  ldr     x1, [x8, #0x3c8]
  10015b898  mov     x0, x20
  10015b89c  mov     x2, x19
  10015b8a0  bl      _objc_msgSend                            ; [self savePersistentlyIfNeeded:arg1]
  10015b8a4  mov     w22, #0
loc_10015b8a8:
  10015b8a8  adrp    x8, #0x10041d000
  10015b8ac  nop
  10015b8b0  ldr     x1, [x8, #0x3b0]
  10015b8b4  mov     x0, x20
  10015b8b8  bl      _objc_msgSend                            ; [self pushDepth]
  10015b8bc  sub     x2, x0, #1
  10015b8c0  adrp    x8, #0x10041d000
  10015b8c4  nop
  10015b8c8  ldr     x1, [x8, #0x3b8]
  10015b8cc  mov     x0, x20
  10015b8d0  bl      _objc_msgSend                            ; [self setPushDepth:([self pushDepth] - 1)]
  10015b8d4  mov     x0, x20
  10015b8d8  mov     x1, x21
  10015b8dc  bl      _objc_msgSend                            ; [self pushLock]
  10015b8e0  mov     x29, x29
  10015b8e4  bl      _objc_retainAutoreleasedReturnValue
  10015b8e8  mov     x20, x0
  10015b8ec  adrp    x8, #0x10041d000
  10015b8f0  nop
  10015b8f4  ldr     x1, [x8, #0x388]
  10015b8f8  bl      _objc_msgSend                            ; [[self pushLock] unlock]
  10015b8fc  mov     x0, x20
  10015b900  bl      _objc_release
  10015b904  cbnz    w22, loc_10015b96c                       ; if (0 != 0)
loc_10015b908:
  10015b908  mov     x0, x19
  10015b90c  ldp     x24, x23, [sp], #0x10
  10015b910  ldp     x22, x21, [sp], #0x10
  10015b914  ldp     x20, x19, [sp], #0x10
  10015b918  ldp     x29, x30, [sp], #0x10
  10015b91c  b       _objc_release
  10015b920  mov     x21, x0
  10015b924  b       loc_10015b980
  10015b928  mov     x21, x0
  10015b92c  mov     x0, x22
  10015b930  bl      _objc_release
  10015b934  b       loc_10015b980
  10015b938  mov     x23, x0
  10015b93c  mov     x0, x22
  10015b940  bl      _objc_release
  10015b944  b       loc_10015b94c
  10015b948  mov     x23, x0
loc_10015b94c:
  10015b94c  mov     x0, x23
  10015b950  bl      _objc_begin_catch                        ; objc_begin_catch()
  10015b954  mov     w22, #1
  10015b958  b       loc_10015b8a8
  10015b95c  mov     x21, x0
  10015b960  mov     x0, x20
  10015b964  bl      _objc_release
  10015b968  b       loc_10015b978
loc_10015b96c:
  10015b96c  bl      _objc_exception_rethrow                  ; objc_exception_rethrow()
  10015b970  b       loc_10015b908
  10015b974  mov     x21, x0
loc_10015b978:
  10015b978  cbz     w22, loc_10015b980                       ; if (w22 == 0)
  10015b97c  bl      _objc_end_catch                          ; objc_end_catch()
loc_10015b980:
  10015b980  mov     x0, x19
  10015b984  bl      _objc_release
  10015b988  mov     x0, x21
  10015b98c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015b990  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; -[TAGDataLayer processQueuedUpdates]
; address 0x10015b994  size 528  kind objc
; ======================================================================
  10015b994  stp     x29, x30, [sp, #-0x10]!
  10015b998  mov     x29, sp
  10015b99c  stp     x20, x19, [sp, #-0x10]!
  10015b9a0  stp     x22, x21, [sp, #-0x10]!
  10015b9a4  stp     x24, x23, [sp, #-0x10]!
  10015b9a8  stp     x26, x25, [sp, #-0x10]!
  10015b9ac  stp     x28, x27, [sp, #-0x10]!
  10015b9b0  mov     x20, x0
  10015b9b4  mov     w27, #0
  10015b9b8  adrp    x8, #0x10041d000
  10015b9bc  nop
  10015b9c0  ldr     x21, [x8, #0x3a8]
  10015b9c4  adrp    x8, #0x100416000
  10015b9c8  nop
  10015b9cc  ldr     x22, [x8, #0xe30]
  10015b9d0  adrp    x8, #0x100417000
  10015b9d4  nop
  10015b9d8  ldr     x23, [x8, #0xa30]
  10015b9dc  adrp    x8, #0x10041b000
  10015b9e0  nop
  10015b9e4  ldr     x24, [x8, #0x1f8]
  10015b9e8  adrp    x8, #0x10041d000
  10015b9ec  add     x8, x8, #0x3d0                           ; &@selector(processUpdate:)
  10015b9f0  ldr     x25, [x8]
  10015b9f4  b       loc_10015ba00
loc_10015b9f8:
  10015b9f8  mov     x0, x19
  10015b9fc  bl      _objc_release
loc_10015ba00:
  10015ba00  mov     x0, x20
  10015ba04  mov     x1, x21
  10015ba08  bl      _objc_msgSend                            ; [self updateQueue]
  10015ba0c  mov     x29, x29
  10015ba10  bl      _objc_retainAutoreleasedReturnValue
  10015ba14  mov     x19, x0
  10015ba18  mov     x1, x22
  10015ba1c  bl      _objc_msgSend                            ; [[self updateQueue] count]
  10015ba20  mov     x26, x0
  10015ba24  mov     x0, x19
  10015ba28  bl      _objc_release
  10015ba2c  cbz     x26, loc_10015bb34                       ; if ([[self updateQueue] count] == 0)
  10015ba30  mov     x0, x20
  10015ba34  mov     x1, x21
  10015ba38  bl      _objc_msgSend                            ; [self updateQueue]
  10015ba3c  mov     x29, x29
  10015ba40  bl      _objc_retainAutoreleasedReturnValue
  10015ba44  mov     x26, x0
  10015ba48  mov     x1, x23
  10015ba4c  bl      _objc_msgSend                            ; [[self updateQueue] lastObject]
  10015ba50  mov     x29, x29
  10015ba54  bl      _objc_retainAutoreleasedReturnValue
  10015ba58  mov     x19, x0
  10015ba5c  mov     x0, x26
  10015ba60  bl      _objc_release
  10015ba64  mov     x0, x20
  10015ba68  mov     x1, x21
  10015ba6c  bl      _objc_msgSend                            ; [self updateQueue]
  10015ba70  mov     x29, x29
  10015ba74  bl      _objc_retainAutoreleasedReturnValue
  10015ba78  mov     x26, x0
  10015ba7c  mov     x1, x24
  10015ba80  bl      _objc_msgSend                            ; [[self updateQueue] removeLastObject]
  10015ba84  mov     x0, x26
  10015ba88  bl      _objc_release
  10015ba8c  mov     x0, x20
  10015ba90  mov     x1, x25
  10015ba94  mov     x2, x19
  10015ba98  bl      _objc_msgSend                            ; [self processUpdate:[[self updateQueue] lastObject]]
  10015ba9c  add     w27, w27, #1
  10015baa0  cmp     w27, #0x1f5
  10015baa4  b.lt    loc_10015b9f8                            ; if ((w27 + 1) < 501)
  10015baa8  mov     x0, x20
  10015baac  mov     x1, x21
  10015bab0  bl      _objc_msgSend                            ; [self updateQueue]
  10015bab4  mov     x29, x29
  10015bab8  bl      _objc_retainAutoreleasedReturnValue
  10015babc  mov     x21, x0
  10015bac0  adrp    x8, #0x100417000
  10015bac4  nop
  10015bac8  ldr     x8, [x8, #0x1b8]
  10015bacc  mov     x1, x8
  10015bad0  bl      _objc_msgSend                            ; [[self updateQueue] removeAllObjects]
  10015bad4  mov     x0, x21
  10015bad8  bl      _objc_release
  10015badc  adrp    x20, #0x1003c8000
  10015bae0  add     x20, x20, #0x2b0                         ; @"Seems like an infinite loop of pushing to the data layer?"
  10015bae4  mov     x0, x20
  10015bae8  bl      _objc_retain
  10015baec  adrp    x8, #0x10041d000
  10015baf0  ldr     x8, [x8, #0xfc8]                         ; class NSException
  10015baf4  adrp    x9, #0x10041b000
  10015baf8  nop
  10015bafc  ldr     x9, [x9, #0x380]
  10015bb00  mov     x4, #0
  10015bb04  adrp    x10, #0x1003c8000
  10015bb08  add     x10, x10, #0x2d0                         ; @"TAGListenerPushLoop"
  10015bb0c  mov     x0, x8
  10015bb10  mov     x1, x9
  10015bb14  mov     x2, x10
  10015bb18  mov     x3, x20
  10015bb1c  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"TAGListenerPushLoop" reason:@"Seems like an infinite loop of pushing to the data layer?" userInfo:0]
  10015bb20  mov     x29, x29
  10015bb24  bl      _objc_retainAutoreleasedReturnValue
  10015bb28  bl      _objc_autorelease
  10015bb2c  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"TAGListenerPushLoop" reason:@"Seems like an infinite loop of pushing to the data layer?" userInfo:0])
  10015bb30  b       loc_10015bb6c
loc_10015bb34:
  10015bb34  ldp     x28, x27, [sp], #0x10
  10015bb38  ldp     x26, x25, [sp], #0x10
  10015bb3c  ldp     x24, x23, [sp], #0x10
  10015bb40  ldp     x22, x21, [sp], #0x10
  10015bb44  ldp     x20, x19, [sp], #0x10
  10015bb48  ldp     x29, x30, [sp], #0x10
  10015bb4c  ret
  10015bb50  mov     x20, x0
  10015bb54  mov     x0, x26
  10015bb58  b       loc_10015bb98
  10015bb5c  mov     x20, x0
  10015bb60  mov     x0, x26
  10015bb64  b       loc_10015bb90
  10015bb68  b       loc_10015bb6c
loc_10015bb6c:
  10015bb6c  mov     x20, x0
  10015bb70  b       loc_10015bb94
  10015bb74  mov     x20, x0
  10015bb78  mov     x0, x21
  10015bb7c  b       loc_10015bb90
  10015bb80  mov     x20, x0
  10015bb84  adrp    x8, #0x1003c8000
  10015bb88  add     x8, x8, #0x2b0                           ; @"Seems like an infinite loop of pushing to the data layer?"
  10015bb8c  mov     x0, x8
loc_10015bb90:
  10015bb90  bl      _objc_release
loc_10015bb94:
  10015bb94  mov     x0, x19
loc_10015bb98:
  10015bb98  bl      _objc_release
  10015bb9c  mov     x0, x20
  10015bba0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer savePersistentlyIfNeeded:]
; address 0x10015bba4  size 308  kind objc
; ======================================================================
  10015bba4  stp     x29, x30, [sp, #-0x10]!
  10015bba8  mov     x29, sp
  10015bbac  stp     x20, x19, [sp, #-0x10]!
  10015bbb0  stp     x22, x21, [sp, #-0x10]!
  10015bbb4  stp     x24, x23, [sp, #-0x10]!
  10015bbb8  mov     x22, x0
  10015bbbc  mov     x0, x2
  10015bbc0  bl      _objc_retain
  10015bbc4  mov     x19, x0
  10015bbc8  adrp    x8, #0x10041d000
  10015bbcc  nop
  10015bbd0  ldr     x1, [x8, #0x3d8]
  10015bbd4  mov     x0, x22
  10015bbd8  mov     x2, x19
  10015bbdc  bl      _objc_msgSend                            ; [self getLifetimeValue:arg1]
  10015bbe0  mov     x29, x29
  10015bbe4  bl      _objc_retainAutoreleasedReturnValue
  10015bbe8  mov     x20, x0
  10015bbec  cbz     x20, loc_10015bc74                       ; if ([self getLifetimeValue:arg1] == 0)
  10015bbf0  adrp    x8, #0x10041d000
  10015bbf4  nop
  10015bbf8  ldr     x1, [x8, #0x3e0]
  10015bbfc  mov     x0, x22
  10015bc00  mov     x2, x19
  10015bc04  bl      _objc_msgSend                            ; [self flattenMap:arg1]
  10015bc08  mov     x29, x29
  10015bc0c  bl      _objc_retainAutoreleasedReturnValue
  10015bc10  mov     x21, x0
  10015bc14  adrp    x8, #0x10041d000
  10015bc18  nop
  10015bc1c  ldr     x1, [x8, #0x340]
  10015bc20  mov     x0, x22
  10015bc24  bl      _objc_msgSend                            ; [self persistentStore]
  10015bc28  mov     x29, x29
  10015bc2c  bl      _objc_retainAutoreleasedReturnValue
  10015bc30  mov     x22, x0
  10015bc34  adrp    x8, #0x10041c000
  10015bc38  nop
  10015bc3c  ldr     x1, [x8, #0xc70]
  10015bc40  mov     x0, x20
  10015bc44  bl      _objc_msgSend                            ; [[self getLifetimeValue:arg1] longLongValue]
  10015bc48  mov     x3, x0
  10015bc4c  adrp    x8, #0x10041d000
  10015bc50  nop
  10015bc54  ldr     x1, [x8, #0x3e8]
  10015bc58  mov     x0, x22
  10015bc5c  mov     x2, x21
  10015bc60  bl      _objc_msgSend                            ; [[self persistentStore] saveKeyValues:[self flattenMap:arg1] lifetimeInMillis:[[self getLifetimeValue:arg1] longLongValue]]
  10015bc64  mov     x0, x22
  10015bc68  bl      _objc_release
  10015bc6c  mov     x0, x21
  10015bc70  bl      _objc_release
loc_10015bc74:
  10015bc74  mov     x0, x20
  10015bc78  bl      _objc_release
  10015bc7c  mov     x0, x19
  10015bc80  ldp     x24, x23, [sp], #0x10
  10015bc84  ldp     x22, x21, [sp], #0x10
  10015bc88  ldp     x20, x19, [sp], #0x10
  10015bc8c  ldp     x29, x30, [sp], #0x10
  10015bc90  b       _objc_release
  10015bc94  mov     x23, x0
  10015bc98  b       loc_10015bcc8
  10015bc9c  mov     x23, x0
  10015bca0  b       loc_10015bcc0
  10015bca4  mov     x23, x0
  10015bca8  b       loc_10015bcb8
  10015bcac  mov     x23, x0
  10015bcb0  mov     x0, x22
  10015bcb4  bl      _objc_release
loc_10015bcb8:
  10015bcb8  mov     x0, x21
  10015bcbc  bl      _objc_release
loc_10015bcc0:
  10015bcc0  mov     x0, x20
  10015bcc4  bl      _objc_release
loc_10015bcc8:
  10015bcc8  mov     x0, x19
  10015bccc  bl      _objc_release
  10015bcd0  mov     x0, x23
  10015bcd4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer clearPersistentKeysWithPrefix:]
; address 0x10015bcd8  size 324  kind objc
; ======================================================================
  10015bcd8  stp     x29, x30, [sp, #-0x10]!
  10015bcdc  mov     x29, sp
  10015bce0  stp     x20, x19, [sp, #-0x10]!
  10015bce4  stp     x22, x21, [sp, #-0x10]!
  10015bce8  sub     sp, sp, #0x20
  10015bcec  mov     x20, x0
  10015bcf0  adrp    x22, #0x1003b0000
  10015bcf4  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10015bcf8  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  10015bcfc  str     x8, [sp, #0x18]
  10015bd00  mov     x0, x2
  10015bd04  bl      _objc_retain
  10015bd08  mov     x19, x0
  10015bd0c  str     x19, [sp, #8]
  10015bd10  adrp    x8, #0x10041e000
  10015bd14  ldr     x0, [x8, #0x140]                         ; class NSNull
  10015bd18  adrp    x8, #0x100418000
  10015bd1c  nop
  10015bd20  ldr     x1, [x8, #0x468]
  10015bd24  bl      _objc_msgSend                            ; [NSNull null]
  10015bd28  mov     x29, x29
  10015bd2c  bl      _objc_retainAutoreleasedReturnValue
  10015bd30  mov     x21, x0
  10015bd34  str     x21, [sp, #0x10]
  10015bd38  adrp    x8, #0x10041d000
  10015bd3c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10015bd40  adrp    x8, #0x100416000
  10015bd44  nop
  10015bd48  ldr     x1, [x8, #0xcd0]
  10015bd4c  add     x2, sp, #0x10
  10015bd50  add     x3, sp, #8
  10015bd54  mov     x4, #1
  10015bd58  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]
  10015bd5c  mov     x2, x0
  10015bd60  adrp    x8, #0x10041b000
  10015bd64  nop
  10015bd68  ldr     x1, [x8, #0x330]
  10015bd6c  mov     x0, x20
  10015bd70  bl      _objc_msgSend                            ; [self push:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x8] count:1]]
  10015bd74  mov     x0, x21
  10015bd78  bl      _objc_release
  10015bd7c  adrp    x8, #0x10041d000
  10015bd80  nop
  10015bd84  ldr     x1, [x8, #0x340]
  10015bd88  mov     x0, x20
  10015bd8c  bl      _objc_msgSend                            ; [self persistentStore]
  10015bd90  mov     x29, x29
  10015bd94  bl      _objc_retainAutoreleasedReturnValue
  10015bd98  mov     x20, x0
  10015bd9c  adrp    x8, #0x10041d000
  10015bda0  nop
  10015bda4  ldr     x1, [x8, #0x3f0]
  10015bda8  mov     x2, x19
  10015bdac  bl      _objc_msgSend                            ; [[self persistentStore] clearKeysWithPrefix:arg1]
  10015bdb0  mov     x0, x20
  10015bdb4  bl      _objc_release
  10015bdb8  mov     x0, x19
  10015bdbc  bl      _objc_release
  10015bdc0  ldr     x8, [x22]                                ; x8 = ___stack_chk_guard[+0x0]
  10015bdc4  ldr     x9, [sp, #0x18]
  10015bdc8  sub     x8, x8, x9
  10015bdcc  cbnz    x8, loc_10015bde4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015bdd0  sub     sp, x29, #0x20
  10015bdd4  ldp     x22, x21, [sp], #0x10
  10015bdd8  ldp     x20, x19, [sp], #0x10
  10015bddc  ldp     x29, x30, [sp], #0x10
  10015bde0  ret
loc_10015bde4:
  10015bde4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015bde8  b       loc_10015bdec
loc_10015bdec:
  10015bdec  mov     x22, x0
  10015bdf0  mov     x0, x21
  10015bdf4  b       loc_10015be08
  10015bdf8  mov     x22, x0
  10015bdfc  b       loc_10015be0c
  10015be00  mov     x22, x0
  10015be04  mov     x0, x20
loc_10015be08:
  10015be08  bl      _objc_release
loc_10015be0c:
  10015be0c  mov     x0, x19
  10015be10  bl      _objc_release
  10015be14  mov     x0, x22
  10015be18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer flattenMap:]
; address 0x10015be1c  size 176  kind objc
; ======================================================================
  10015be1c  stp     x29, x30, [sp, #-0x10]!
  10015be20  mov     x29, sp
  10015be24  stp     x20, x19, [sp, #-0x10]!
  10015be28  stp     x22, x21, [sp, #-0x10]!
  10015be2c  mov     x20, x0
  10015be30  mov     x0, x2
  10015be34  bl      _objc_retain
  10015be38  mov     x19, x0
  10015be3c  adrp    x8, #0x10041d000
  10015be40  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015be44  adrp    x8, #0x100418000
  10015be48  nop
  10015be4c  ldr     x1, [x8, #0x50]
  10015be50  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015be54  mov     x29, x29
  10015be58  bl      _objc_retainAutoreleasedReturnValue
  10015be5c  mov     x21, x0
  10015be60  adrp    x8, #0x10041d000
  10015be64  nop
  10015be68  ldr     x1, [x8, #0x3f8]
  10015be6c  adrp    x3, #0x1003b9000
  10015be70  add     x3, x3, #0x870                           ; @""
  10015be74  mov     x0, x20
  10015be78  mov     x2, x19
  10015be7c  mov     x4, x21
  10015be80  bl      _objc_msgSend                            ; [self flattenMapHelper:arg1 keyPrefix:@"" accum:[NSMutableArray array]]
  10015be84  mov     x0, x19
  10015be88  bl      _objc_release
  10015be8c  mov     x0, x21
  10015be90  bl      _objc_autoreleaseReturnValue
  10015be94  mov     x0, x21
  10015be98  ldp     x22, x21, [sp], #0x10
  10015be9c  ldp     x20, x19, [sp], #0x10
  10015bea0  ldp     x29, x30, [sp], #0x10
  10015bea4  ret
  10015bea8  mov     x20, x0
  10015beac  b       loc_10015bebc
  10015beb0  mov     x20, x0
  10015beb4  mov     x0, x21
  10015beb8  bl      _objc_release
loc_10015bebc:
  10015bebc  mov     x0, x19
  10015bec0  bl      _objc_release
  10015bec4  mov     x0, x20
  10015bec8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer flattenMapHelper:keyPrefix:accum:]
; address 0x10015becc  size 920  kind objc
; ======================================================================
  10015becc  stp     x29, x30, [sp, #-0x10]!
  10015bed0  mov     x29, sp
  10015bed4  stp     x20, x19, [sp, #-0x10]!
  10015bed8  stp     x22, x21, [sp, #-0x10]!
  10015bedc  stp     x24, x23, [sp, #-0x10]!
  10015bee0  stp     x26, x25, [sp, #-0x10]!
  10015bee4  stp     x28, x27, [sp, #-0x10]!
  10015bee8  sub     sp, sp, #0x140
  10015beec  mov     x20, x4
  10015bef0  mov     x19, x3
  10015bef4  str     x0, [sp, #0x58]
  10015bef8  adrp    x8, #0x1003b0000
  10015befc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015bf00  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015bf04  stur    x8, [x29, #-0x58]
  10015bf08  mov     x0, x2
  10015bf0c  bl      _objc_retain
  10015bf10  mov     x21, x0
  10015bf14  mov     x0, x19
  10015bf18  bl      _objc_retain
  10015bf1c  mov     x22, x0
  10015bf20  mov     x0, x20
  10015bf24  bl      _objc_retain
  10015bf28  str     x0, [sp, #0x60]
  10015bf2c  adrp    x8, #0x100417000
  10015bf30  nop
  10015bf34  ldr     x1, [x8, #0xc58]
  10015bf38  mov     x0, x22
  10015bf3c  bl      _objc_msgSend                            ; [arg2 length]
  10015bf40  cbz     x0, loc_10015bf78                        ; if ([arg2 length] == 0)
  10015bf44  adrp    x8, #0x10041a000
  10015bf48  nop
  10015bf4c  ldr     x1, [x8, #0x620]
  10015bf50  adrp    x2, #0x1003be000
  10015bf54  add     x2, x2, #0x9f0                           ; @"."
  10015bf58  mov     x0, x22
  10015bf5c  bl      _objc_msgSend                            ; [arg2 stringByAppendingString:@"."]
  10015bf60  mov     x29, x29
  10015bf64  bl      _objc_retainAutoreleasedReturnValue
  10015bf68  mov     x20, x0
  10015bf6c  mov     x0, x22
  10015bf70  bl      _objc_release
  10015bf74  mov     x22, x20
loc_10015bf78:
  10015bf78  stp     xzr, xzr, [x29, #-0x68]
  10015bf7c  stp     xzr, xzr, [x29, #-0x78]
  10015bf80  stp     xzr, xzr, [x29, #-0x88]
  10015bf84  stp     xzr, xzr, [x29, #-0x98]
  10015bf88  mov     x0, x21
  10015bf8c  bl      _objc_retain
  10015bf90  mov     x23, x0
  10015bf94  adrp    x8, #0x100416000
  10015bf98  nop
  10015bf9c  ldr     x1, [x8, #0xe00]
  10015bfa0  str     x1, [sp, #0x28]
  10015bfa4  sub     x2, x29, #0x98
  10015bfa8  add     x3, sp, #0x78
  10015bfac  mov     x4, #0x10
  10015bfb0  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16]
  10015bfb4  mov     x25, x0
  10015bfb8  cbz     x25, loc_10015c190                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16] == 0)
  10015bfbc  str     x21, [sp, #0x10]
  10015bfc0  ldur    x8, [x29, #-0x88]
  10015bfc4  adrp    x9, #0x10041a000
  10015bfc8  nop
  10015bfcc  adrp    x10, #0x100417000
  10015bfd0  add     x10, x10, #0x40                          ; &@selector(objectForKey:)
  10015bfd4  adrp    x11, #0x100417000
  10015bfd8  add     x11, x11, #0x2e0                         ; &@selector(class)
  10015bfdc  ldr     x9, [x9, #0x620]
  10015bfe0  str     x9, [sp, #0x68]
  10015bfe4  ldr     x27, [x10]
  10015bfe8  ldr     x28, [x11]
  10015bfec  ldr     x8, [x8]
  10015bff0  str     x8, [sp, #0x70]
  10015bff4  adrp    x8, #0x100417000
  10015bff8  nop
  10015bffc  ldr     x20, [x8, #0x3b8]
  10015c000  adrp    x8, #0x10041d000
  10015c004  nop
  10015c008  ldr     x8, [x8, #0x3f8]
  10015c00c  str     x8, [sp, #0x50]
  10015c010  adrp    x8, #0x100416000
  10015c014  nop
  10015c018  ldr     x8, [x8, #0xf58]
  10015c01c  str     x8, [sp, #0x48]
  10015c020  adrp    x8, #0x100416000
  10015c024  nop
  10015c028  ldr     x8, [x8, #0xac8]
  10015c02c  str     x8, [sp, #0x40]
  10015c030  adrp    x8, #0x10041d000
  10015c034  nop
  10015c038  ldr     x8, [x8, #0x510]
  10015c03c  str     x8, [sp, #0x38]
  10015c040  adrp    x8, #0x100416000
  10015c044  nop
  10015c048  sub     x9, x29, #0x98
  10015c04c  str     x9, [sp, #0x20]
  10015c050  add     x9, sp, #0x78
  10015c054  str     x9, [sp, #0x18]
  10015c058  ldr     x8, [x8, #0xd90]
  10015c05c  str     x8, [sp, #0x30]
loc_10015c060:
  10015c060  mov     x19, #0
loc_10015c064:
  10015c064  ldur    x8, [x29, #-0x88]
  10015c068  ldr     x8, [x8]
  10015c06c  ldr     x9, [sp, #0x70]
  10015c070  cmp     x8, x9
  10015c074  b.eq    loc_10015c080                            ; if (x8 == x9)
  10015c078  mov     x0, x23
  10015c07c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10015c080:
  10015c080  ldur    x8, [x29, #-0x90]
  10015c084  ldr     x24, [x8, x19, lsl #3]
  10015c088  mov     x0, x22
  10015c08c  ldr     x1, [sp, #0x68]
  10015c090  mov     x2, x24
  10015c094  bl      _objc_msgSend                            ; [x0 stringByAppendingString:x2]
  10015c098  mov     x29, x29
  10015c09c  bl      _objc_retainAutoreleasedReturnValue
  10015c0a0  mov     x21, x0
  10015c0a4  mov     x0, x23
  10015c0a8  mov     x1, x27
  10015c0ac  mov     x2, x24
  10015c0b0  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10015c0b4  mov     x26, x22
  10015c0b8  mov     x29, x29
  10015c0bc  bl      _objc_retainAutoreleasedReturnValue
  10015c0c0  mov     x24, x0
  10015c0c4  adrp    x8, #0x10041d000
  10015c0c8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10015c0cc  mov     x1, x28
  10015c0d0  bl      _objc_msgSend                            ; [NSDictionary class]
  10015c0d4  mov     x2, x0
  10015c0d8  mov     x0, x24
  10015c0dc  mov     x1, x20
  10015c0e0  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] isKindOfClass:[NSDictionary class]]
  10015c0e4  cbz     w0, loc_10015c100                        ; if ([[arg1 objectForKey:x2] isKindOfClass:[NSDictionary class]] == 0)
  10015c0e8  ldp     x1, x0, [sp, #0x50]
  10015c0ec  mov     x2, x24
  10015c0f0  mov     x3, x21
  10015c0f4  ldr     x4, [sp, #0x60]
  10015c0f8  bl      _objc_msgSend                            ; [self flattenMapHelper:[arg1 objectForKey:x2] keyPrefix:[x0 stringByAppendingString:x2] accum:arg3]
  10015c0fc  b       loc_10015c154
loc_10015c100:
  10015c100  adrp    x0, #0x1003c8000
  10015c104  add     x0, x0, #0x270                           ; @"gtm.lifetime"
  10015c108  ldr     x1, [sp, #0x48]
  10015c10c  mov     x2, x21
  10015c110  bl      _objc_msgSend                            ; [@"gtm.lifetime" isEqualToString:[x0 stringByAppendingString:x2]]
  10015c114  tbnz    w0, #0, loc_10015c154                    ; if (([@"gtm.lifetime" isEqualToString:[x0 stringByAppendingString:x2]] & 1))
  10015c118  adrp    x8, #0x10041e000
  10015c11c  ldr     x0, [x8, #0x960]                         ; class TAGKeyValue
  10015c120  ldr     x1, [sp, #0x40]
  10015c124  bl      _objc_msgSend                            ; [TAGKeyValue alloc]
  10015c128  ldr     x1, [sp, #0x38]
  10015c12c  mov     x2, x21
  10015c130  mov     x3, x24
  10015c134  bl      _objc_msgSend                            ; [[TAGKeyValue alloc] initWithKey:[x0 stringByAppendingString:x2] value:[arg1 objectForKey:x2]]
  10015c138  mov     x22, x0
  10015c13c  ldr     x0, [sp, #0x60]
  10015c140  ldr     x1, [sp, #0x30]
  10015c144  mov     x2, x22
  10015c148  bl      _objc_msgSend                            ; [arg3 addObject:[[TAGKeyValue alloc] initWithKey:[x0 stringByAppendingString:x2] value:[arg1 objectForKey:x2]]]
  10015c14c  mov     x0, x22
  10015c150  bl      _objc_release
loc_10015c154:
  10015c154  mov     x0, x24
  10015c158  bl      _objc_release
  10015c15c  mov     x0, x21
  10015c160  bl      _objc_release
  10015c164  add     x19, x19, #1
  10015c168  cmp     x19, x25
  10015c16c  mov     x22, x26
  10015c170  b.lo    loc_10015c064                            ; if ((x19 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16])
  10015c174  mov     x4, #0x10
  10015c178  mov     x0, x23
  10015c17c  ldp     x2, x1, [sp, #0x20]
  10015c180  ldr     x3, [sp, #0x18]
  10015c184  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16]
  10015c188  mov     x25, x0
  10015c18c  cbnz    x25, loc_10015c060                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x78] count:16] != 0)
loc_10015c190:
  10015c190  mov     x0, x23
  10015c194  bl      _objc_release
  10015c198  ldr     x0, [sp, #0x60]
  10015c19c  bl      _objc_release
  10015c1a0  mov     x0, x22
  10015c1a4  bl      _objc_release
  10015c1a8  mov     x0, x23
  10015c1ac  bl      _objc_release
  10015c1b0  adrp    x8, #0x1003b0000
  10015c1b4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015c1b8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015c1bc  ldur    x9, [x29, #-0x58]
  10015c1c0  sub     x8, x8, x9
  10015c1c4  cbnz    x8, loc_10015c1e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015c1c8  sub     sp, x29, #0x50
  10015c1cc  ldp     x28, x27, [sp], #0x10
  10015c1d0  ldp     x26, x25, [sp], #0x10
  10015c1d4  ldp     x24, x23, [sp], #0x10
  10015c1d8  ldp     x22, x21, [sp], #0x10
  10015c1dc  ldp     x20, x19, [sp], #0x10
  10015c1e0  ldp     x29, x30, [sp], #0x10
  10015c1e4  ret
loc_10015c1e8:
  10015c1e8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015c1ec  mov     x20, x0
loc_10015c1f0:
  10015c1f0  mov     x0, x24
  10015c1f4  bl      _objc_release
  10015c1f8  mov     x22, x26
  10015c1fc  b       loc_10015c20c
loc_10015c200:
  10015c200  mov     x20, x0
  10015c204  b       loc_10015c214
  10015c208  mov     x20, x0
loc_10015c20c:
  10015c20c  mov     x0, x21
  10015c210  bl      _objc_release
loc_10015c214:
  10015c214  ldr     x21, [sp, #0x10]
  10015c218  mov     x0, x23
  10015c21c  bl      _objc_release
loc_10015c220:
  10015c220  ldr     x0, [sp, #0x60]
  10015c224  bl      _objc_release
  10015c228  mov     x0, x22
  10015c22c  bl      _objc_release
  10015c230  mov     x0, x21
  10015c234  bl      _objc_release
  10015c238  mov     x0, x20
  10015c23c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015c240  mov     x20, x0
  10015c244  mov     x0, x22
  10015c248  bl      _objc_release
  10015c24c  b       loc_10015c1f0
  10015c250  mov     x20, x0
  10015c254  b       loc_10015c220
  10015c258  str     x21, [sp, #0x10]
  10015c25c  b       loc_10015c200
  10015c260  b       loc_10015c200

; ======================================================================
; -[TAGDataLayer getLifetimeValue:]
; address 0x10015c264  size 208  kind objc
; ======================================================================
  10015c264  stp     x29, x30, [sp, #-0x10]!
  10015c268  mov     x29, sp
  10015c26c  stp     x20, x19, [sp, #-0x10]!
  10015c270  stp     x22, x21, [sp, #-0x10]!
  10015c274  mov     x20, x0
  10015c278  adrp    x8, #0x10041d000
  10015c27c  nop
  10015c280  ldr     x1, [x8, #0x400]
  10015c284  bl      _objc_msgSend                            ; [self getLifetimeObject:arg1]
  10015c288  mov     x29, x29
  10015c28c  bl      _objc_retainAutoreleasedReturnValue
  10015c290  mov     x19, x0
  10015c294  cbz     x19, loc_10015c2e8                       ; if ([self getLifetimeObject:arg1] == 0)
  10015c298  adrp    x8, #0x100418000
  10015c29c  nop
  10015c2a0  ldr     x1, [x8, #0x648]
  10015c2a4  mov     x0, x19
  10015c2a8  bl      _objc_msgSend                            ; [[self getLifetimeObject:arg1] description]
  10015c2ac  mov     x29, x29
  10015c2b0  bl      _objc_retainAutoreleasedReturnValue
  10015c2b4  mov     x21, x0
  10015c2b8  adrp    x8, #0x10041d000
  10015c2bc  nop
  10015c2c0  ldr     x1, [x8, #0x408]
  10015c2c4  mov     x0, x20
  10015c2c8  mov     x2, x21
  10015c2cc  bl      _objc_msgSend                            ; [self parseLifetime:[[self getLifetimeObject:arg1] description]]
  10015c2d0  mov     x29, x29
  10015c2d4  bl      _objc_retainAutoreleasedReturnValue
  10015c2d8  mov     x20, x0
  10015c2dc  mov     x0, x21
  10015c2e0  bl      _objc_release
  10015c2e4  b       loc_10015c2ec
loc_10015c2e8:
  10015c2e8  mov     x20, #0
loc_10015c2ec:
  10015c2ec  mov     x0, x19
  10015c2f0  bl      _objc_release
  10015c2f4  mov     x0, x20
  10015c2f8  ldp     x22, x21, [sp], #0x10
  10015c2fc  ldp     x20, x19, [sp], #0x10
  10015c300  ldp     x29, x30, [sp], #0x10
  10015c304  b       _objc_autoreleaseReturnValue
  10015c308  mov     x20, x0
  10015c30c  b       loc_10015c32c
  10015c310  mov     x20, x0
  10015c314  b       loc_10015c324
  10015c318  mov     x20, x0
  10015c31c  mov     x0, x21
  10015c320  bl      _objc_release
loc_10015c324:
  10015c324  mov     x0, x19
  10015c328  bl      _objc_release
loc_10015c32c:
  10015c32c  mov     x0, x20
  10015c330  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer getLifetimeObject:]
; address 0x10015c334  size 616  kind objc
; ======================================================================
  10015c334  stp     x29, x30, [sp, #-0x10]!
  10015c338  mov     x29, sp
  10015c33c  stp     x20, x19, [sp, #-0x10]!
  10015c340  stp     x22, x21, [sp, #-0x10]!
  10015c344  stp     x24, x23, [sp, #-0x10]!
  10015c348  stp     x26, x25, [sp, #-0x10]!
  10015c34c  stp     x28, x27, [sp, #-0x10]!
  10015c350  sub     sp, sp, #0x100
  10015c354  mov     x20, x0
  10015c358  adrp    x8, #0x1003b0000
  10015c35c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015c360  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015c364  stur    x8, [x29, #-0x58]
  10015c368  mov     x0, x2
  10015c36c  bl      _objc_retain
  10015c370  bl      _objc_retain
  10015c374  mov     x27, x0
  10015c378  str     x27, [sp, #0x28]
  10015c37c  stp     xzr, xzr, [x29, #-0x68]
  10015c380  stp     xzr, xzr, [x29, #-0x78]
  10015c384  stp     xzr, xzr, [x29, #-0x88]
  10015c388  stp     xzr, xzr, [x29, #-0x98]
  10015c38c  adrp    x8, #0x10041d000
  10015c390  nop
  10015c394  ldr     x1, [x8, #0x410]
  10015c398  mov     x0, x20
  10015c39c  bl      _objc_msgSend                            ; [self lifetimeKeyComponents]
  10015c3a0  mov     x29, x29
  10015c3a4  bl      _objc_retainAutoreleasedReturnValue
  10015c3a8  str     x0, [sp, #0x30]
  10015c3ac  adrp    x8, #0x100416000
  10015c3b0  nop
  10015c3b4  ldr     x1, [x8, #0xe00]
  10015c3b8  str     x1, [sp, #0x20]
  10015c3bc  sub     x2, x29, #0x98
  10015c3c0  add     x3, sp, #0x38
  10015c3c4  mov     x4, #0x10
  10015c3c8  bl      _objc_msgSend                            ; [[self lifetimeKeyComponents] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10015c3cc  mov     x23, x0
  10015c3d0  mov     x21, x27
  10015c3d4  cbz     x23, loc_10015c4c0                       ; if ([[self lifetimeKeyComponents] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] == 0)
  10015c3d8  ldur    x8, [x29, #-0x88]
  10015c3dc  adrp    x9, #0x100417000
  10015c3e0  nop
  10015c3e4  ldr     x19, [x8]
  10015c3e8  ldr     x24, [x9, #0x2e0]
  10015c3ec  adrp    x8, #0x100417000
  10015c3f0  nop
  10015c3f4  adrp    x9, #0x100417000
  10015c3f8  add     x9, x9, #0x40                            ; &@selector(objectForKey:)
  10015c3fc  ldr     x25, [x8, #0x3b8]
  10015c400  ldr     x26, [x9]
  10015c404  adrp    x22, #0x10041d000
  10015c408  sub     x8, x29, #0x98
  10015c40c  str     x8, [sp, #0x18]
  10015c410  add     x8, sp, #0x38
  10015c414  str     x8, [sp, #0x10]
  10015c418  mov     x21, x27
loc_10015c41c:
  10015c41c  mov     x20, #0
loc_10015c420:
  10015c420  ldur    x8, [x29, #-0x88]
  10015c424  ldr     x8, [x8]
  10015c428  cmp     x8, x19
  10015c42c  b.eq    loc_10015c438                            ; if (x8 == x19)
  10015c430  ldr     x0, [sp, #0x30]
  10015c434  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self lifetimeKeyComponents])
loc_10015c438:
  10015c438  ldur    x8, [x29, #-0x90]
  10015c43c  ldr     x27, [x8, x20, lsl #3]
  10015c440  ldr     x0, [x22, #0xef8]                        ; class NSDictionary
  10015c444  mov     x1, x24
  10015c448  bl      _objc_msgSend                            ; [NSDictionary class]
  10015c44c  mov     x2, x0
  10015c450  mov     x0, x21
  10015c454  mov     x1, x25
  10015c458  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  10015c45c  tbz     w0, #0, loc_10015c4dc                    ; if (!([x0 isKindOfClass:[NSDictionary class]] & 1))
  10015c460  mov     x0, x21
  10015c464  bl      _objc_retain
  10015c468  mov     x28, x0
  10015c46c  mov     x1, x26
  10015c470  mov     x2, x27
  10015c474  bl      _objc_msgSend                            ; [x0 objectForKey:x2]
  10015c478  mov     x29, x29
  10015c47c  bl      _objc_retainAutoreleasedReturnValue
  10015c480  mov     x21, x0
  10015c484  mov     x0, x28
  10015c488  bl      _objc_release
  10015c48c  mov     x0, x28
  10015c490  bl      _objc_release
  10015c494  add     x20, x20, #1
  10015c498  cmp     x20, x23
  10015c49c  b.lo    loc_10015c420                            ; if ((x20 + 1) <u [[self lifetimeKeyComponents] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16])
  10015c4a0  mov     x4, #0x10
  10015c4a4  ldr     x0, [sp, #0x30]
  10015c4a8  ldp     x2, x1, [sp, #0x18]
  10015c4ac  ldr     x3, [sp, #0x10]
  10015c4b0  bl      _objc_msgSend                            ; [[self lifetimeKeyComponents] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16]
  10015c4b4  mov     x23, x0
  10015c4b8  ldr     x27, [sp, #0x28]
  10015c4bc  cbnz    x23, loc_10015c41c                       ; if ([[self lifetimeKeyComponents] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x38] count:16] != 0)
loc_10015c4c0:
  10015c4c0  ldr     x0, [sp, #0x30]
  10015c4c4  bl      _objc_release
  10015c4c8  mov     x0, x21
  10015c4cc  bl      _objc_retain
  10015c4d0  mov     x21, x0
  10015c4d4  mov     x20, x21
  10015c4d8  b       loc_10015c4ec
loc_10015c4dc:
  10015c4dc  ldr     x0, [sp, #0x30]
  10015c4e0  bl      _objc_release
  10015c4e4  mov     x20, #0
  10015c4e8  ldr     x27, [sp, #0x28]
loc_10015c4ec:
  10015c4ec  adrp    x19, #0x1003b0000
  10015c4f0  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10015c4f4  mov     x0, x21
  10015c4f8  bl      _objc_release
  10015c4fc  mov     x0, x27
  10015c500  bl      _objc_release
  10015c504  ldr     x8, [x19]                                ; x8 = ___stack_chk_guard[+0x0]
  10015c508  ldur    x9, [x29, #-0x58]
  10015c50c  sub     x8, x8, x9
  10015c510  cbnz    x8, loc_10015c538                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015c514  mov     x0, x20
  10015c518  sub     sp, x29, #0x50
  10015c51c  ldp     x28, x27, [sp], #0x10
  10015c520  ldp     x26, x25, [sp], #0x10
  10015c524  ldp     x24, x23, [sp], #0x10
  10015c528  ldp     x22, x21, [sp], #0x10
  10015c52c  ldp     x20, x19, [sp], #0x10
  10015c530  ldp     x29, x30, [sp], #0x10
  10015c534  b       _objc_autoreleaseReturnValue
loc_10015c538:
  10015c538  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015c53c  mov     x19, x0
  10015c540  mov     x21, x27
  10015c544  str     x27, [sp, #0x28]
  10015c548  b       loc_10015c584
  10015c54c  mov     x19, x0
  10015c550  mov     x21, x27
  10015c554  str     x27, [sp, #0x28]
  10015c558  b       loc_10015c57c
  10015c55c  mov     x19, x0
  10015c560  b       loc_10015c57c
  10015c564  mov     x19, x0
  10015c568  mov     x0, x28
  10015c56c  bl      _objc_release
  10015c570  mov     x21, x28
  10015c574  b       loc_10015c57c
  10015c578  mov     x19, x0
loc_10015c57c:
  10015c57c  ldr     x0, [sp, #0x30]
  10015c580  bl      _objc_release
loc_10015c584:
  10015c584  mov     x0, x21
  10015c588  bl      _objc_release
  10015c58c  ldr     x0, [sp, #0x28]
  10015c590  bl      _objc_release
  10015c594  mov     x0, x19
  10015c598  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer parseLifetime:]
; address 0x10015c59c  size 1124  kind objc
; ======================================================================
  10015c59c  stp     x29, x30, [sp, #-0x10]!
  10015c5a0  mov     x29, sp
  10015c5a4  stp     x20, x19, [sp, #-0x10]!
  10015c5a8  stp     x22, x21, [sp, #-0x10]!
  10015c5ac  stp     x24, x23, [sp, #-0x10]!
  10015c5b0  stp     x26, x25, [sp, #-0x10]!
  10015c5b4  mov     x21, x0
  10015c5b8  mov     x0, x2
  10015c5bc  bl      _objc_retain
  10015c5c0  mov     x19, x0
  10015c5c4  adrp    x8, #0x100417000
  10015c5c8  nop
  10015c5cc  ldr     x22, [x8, #0xc58]
  10015c5d0  mov     x1, x22
  10015c5d4  bl      _objc_msgSend                            ; [arg1 length]
  10015c5d8  mov     x20, x0
  10015c5dc  adrp    x8, #0x10041d000
  10015c5e0  nop
  10015c5e4  ldr     x1, [x8, #0x418]
  10015c5e8  mov     x0, x21
  10015c5ec  bl      _objc_msgSend                            ; [self lifetimePattern]
  10015c5f0  mov     x29, x29
  10015c5f4  bl      _objc_retainAutoreleasedReturnValue
  10015c5f8  mov     x21, x0
  10015c5fc  adrp    x8, #0x10041d000
  10015c600  nop
  10015c604  ldr     x1, [x8, #0x420]
  10015c608  mov     x3, #0
  10015c60c  mov     x4, #0
  10015c610  mov     x2, x19
  10015c614  mov     x5, x20
  10015c618  bl      _objc_msgSend                            ; [[self lifetimePattern] firstMatchInString:arg1 options:0 range:0]
  10015c61c  mov     x29, x29
  10015c620  bl      _objc_retainAutoreleasedReturnValue
  10015c624  mov     x20, x0
  10015c628  mov     x0, x21
  10015c62c  bl      _objc_release
  10015c630  adrp    x8, #0x100419000
  10015c634  nop
  10015c638  ldr     x1, [x8, #0x380]
  10015c63c  mov     x0, x20
  10015c640  bl      _objc_msgSend                            ; [[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] range]
  10015c644  mov     x8, #0x7fffffffffffffff
  10015c648  cmp     x0, x8
  10015c64c  b.eq    loc_10015c66c                            ; if (x0 == 0x7fffffffffffffff)
  10015c650  adrp    x8, #0x10041d000
  10015c654  nop
  10015c658  ldr     x1, [x8, #0x428]
  10015c65c  mov     x0, x20
  10015c660  bl      _objc_msgSend                            ; [[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] numberOfRanges]
  10015c664  cmp     x0, #2
  10015c668  b.hi    loc_10015c6c4                            ; if ([[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] numberOfRanges] >u 2)
loc_10015c66c:
  10015c66c  adrp    x8, #0x10041e000
  10015c670  ldr     x21, [x8, #0x538]                        ; class TAGLog
  10015c674  adrp    x8, #0x10041a000
  10015c678  nop
  10015c67c  ldr     x1, [x8, #0x620]
  10015c680  adrp    x0, #0x1003c8000
  10015c684  add     x0, x0, #0x2f0                           ; @"unknown lifetime: "
  10015c688  mov     x2, x19
  10015c68c  bl      _objc_msgSend                            ; [@"unknown lifetime: " stringByAppendingString:arg1]
  10015c690  mov     x29, x29
  10015c694  bl      _objc_retainAutoreleasedReturnValue
  10015c698  mov     x22, x0
  10015c69c  adrp    x8, #0x10041b000
  10015c6a0  nop
  10015c6a4  ldr     x1, [x8, #0xea0]
  10015c6a8  mov     x0, x21
  10015c6ac  mov     x2, x22
  10015c6b0  bl      _objc_msgSend                            ; [TAGLog info:[@"unknown lifetime: " stringByAppendingString:arg1]]
  10015c6b4  mov     x0, x22
  10015c6b8  bl      _objc_release
  10015c6bc  mov     x22, #0
  10015c6c0  b       loc_10015c950
loc_10015c6c4:
  10015c6c4  adrp    x8, #0x10041d000
  10015c6c8  nop
  10015c6cc  ldr     x23, [x8, #0x430]
  10015c6d0  mov     x2, #1
  10015c6d4  mov     x0, x20
  10015c6d8  mov     x1, x23
  10015c6dc  bl      _objc_msgSend                            ; [[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]
  10015c6e0  mov     x2, x0
  10015c6e4  mov     x3, x1
  10015c6e8  adrp    x8, #0x10041e000
  10015c6ec  ldr     x21, [x8, #0xb58]                        ; class TAGTypes
  10015c6f0  adrp    x8, #0x10041b000
  10015c6f4  nop
  10015c6f8  ldr     x25, [x8, #0x390]
  10015c6fc  mov     x0, x19
  10015c700  mov     x1, x25
  10015c704  bl      _objc_msgSend                            ; [arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]]
  10015c708  mov     x29, x29
  10015c70c  bl      _objc_retainAutoreleasedReturnValue
  10015c710  mov     x24, x0
  10015c714  adrp    x8, #0x10041d000
  10015c718  nop
  10015c71c  ldr     x1, [x8, #0x438]
  10015c720  mov     x0, x21
  10015c724  mov     x2, x24
  10015c728  bl      _objc_msgSend                            ; [TAGTypes numberWithString:[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]]]
  10015c72c  mov     x29, x29
  10015c730  bl      _objc_retainAutoreleasedReturnValue
  10015c734  mov     x21, x0
  10015c738  mov     x0, x24
  10015c73c  bl      _objc_release
  10015c740  cbz     x21, loc_10015c7ec                       ; if ([TAGTypes numberWithString:[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]]] == 0)
  10015c744  adrp    x8, #0x10041c000
  10015c748  nop
  10015c74c  ldr     x24, [x8, #0xc70]
  10015c750  mov     x0, x21
  10015c754  mov     x1, x24
  10015c758  bl      _objc_msgSend                            ; [[TAGTypes numberWithString:[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]]] longLongValue]
  10015c75c  cmp     x0, #0
  10015c760  b.le    loc_10015c83c                            ; if ([[TAGTypes numberWithString:[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0]… <= 0)
  10015c764  mov     x0, x21
  10015c768  mov     x1, x24
  10015c76c  bl      _objc_msgSend                            ; [[TAGTypes numberWithString:[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]]] longLongValue]
  10015c770  mov     x24, x0
  10015c774  mov     x2, #2
  10015c778  mov     x0, x20
  10015c77c  mov     x1, x23
  10015c780  bl      _objc_msgSend                            ; [[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]
  10015c784  mov     x2, x0
  10015c788  mov     x3, x1
  10015c78c  mov     x0, x19
  10015c790  mov     x1, x25
  10015c794  bl      _objc_msgSend                            ; [arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]]
  10015c798  mov     x29, x29
  10015c79c  bl      _objc_retainAutoreleasedReturnValue
  10015c7a0  mov     x23, x0
  10015c7a4  mov     x1, x22
  10015c7a8  bl      _objc_msgSend                            ; [[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] length]
  10015c7ac  cbz     x0, loc_10015c8c0                        ; if ([[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] length] == 0)
  10015c7b0  adrp    x8, #0x10041b000
  10015c7b4  nop
  10015c7b8  ldr     x1, [x8, #0x2c0]
  10015c7bc  mov     x2, #0
  10015c7c0  mov     x0, x23
  10015c7c4  bl      _objc_msgSend                            ; [[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] characterAtIndex:0]
  10015c7c8  cmp     w0, #0x72
  10015c7cc  b.gt    loc_10015c894                            ; if ([[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] character… > 114)
  10015c7d0  cmp     w0, #0x64
  10015c7d4  b.eq    loc_10015c8a4                            ; if ([[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] character… == 100)
  10015c7d8  cmp     w0, #0x68
  10015c7dc  b.ne    loc_10015c8b0                            ; if ([[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] character… != 104)
  10015c7e0  mov     x8, #0x360000
  10015c7e4  movk    x8, #0xee80
  10015c7e8  b       loc_10015c8bc
loc_10015c7ec:
  10015c7ec  adrp    x8, #0x10041e000
  10015c7f0  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10015c7f4  adrp    x8, #0x10041a000
  10015c7f8  nop
  10015c7fc  ldr     x1, [x8, #0x620]
  10015c800  adrp    x0, #0x1003c8000
  10015c804  add     x0, x0, #0x310                           ; @"illegal number in lifetime value: "
  10015c808  mov     x2, x19
  10015c80c  bl      _objc_msgSend                            ; [@"illegal number in lifetime value: " stringByAppendingString:arg1]
  10015c810  mov     x29, x29
  10015c814  bl      _objc_retainAutoreleasedReturnValue
  10015c818  mov     x23, x0
  10015c81c  adrp    x8, #0x10041b000
  10015c820  nop
  10015c824  ldr     x1, [x8, #0xe90]
  10015c828  mov     x0, x22
  10015c82c  mov     x2, x23
  10015c830  bl      _objc_msgSend                            ; [TAGLog warning:[@"illegal number in lifetime value: " stringByAppendingString:arg1]]
  10015c834  b       loc_10015c884
  10015c838  b       loc_10015c9c4
loc_10015c83c:
  10015c83c  adrp    x8, #0x10041e000
  10015c840  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10015c844  adrp    x8, #0x10041a000
  10015c848  nop
  10015c84c  ldr     x1, [x8, #0x620]
  10015c850  adrp    x0, #0x1003c8000
  10015c854  add     x0, x0, #0x330                           ; @"non-positive lifetime: "
  10015c858  mov     x2, x19
  10015c85c  bl      _objc_msgSend                            ; [@"non-positive lifetime: " stringByAppendingString:arg1]
  10015c860  mov     x29, x29
  10015c864  bl      _objc_retainAutoreleasedReturnValue
  10015c868  mov     x23, x0
  10015c86c  adrp    x8, #0x10041b000
  10015c870  nop
  10015c874  ldr     x1, [x8, #0xe90]
  10015c878  mov     x0, x22
  10015c87c  mov     x2, x23
  10015c880  bl      _objc_msgSend                            ; [TAGLog warning:[@"non-positive lifetime: " stringByAppendingString:arg1]]
loc_10015c884:
  10015c884  mov     x0, x23
  10015c888  bl      _objc_release
  10015c88c  mov     x22, #0
  10015c890  b       loc_10015c948
loc_10015c894:
  10015c894  cmp     w0, #0x73
  10015c898  b.ne    loc_10015c8ec                            ; if ([[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] character… != 115)
  10015c89c  mov     x8, #0x3e8
  10015c8a0  b       loc_10015c8bc
loc_10015c8a4:
  10015c8a4  mov     x8, #0x5260000
  10015c8a8  movk    x8, #0x5c00
  10015c8ac  b       loc_10015c8bc
loc_10015c8b0:
  10015c8b0  cmp     w0, #0x6d
  10015c8b4  b.ne    loc_10015c8ec                            ; if ([[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:2]] character… != 109)
  10015c8b8  mov     x8, #0xea60
loc_10015c8bc:
  10015c8bc  mul     x24, x24, x8                             ; t1 = ([[TAGTypes numberWithString:[arg1 substringWithRange:[[[self lifetimePattern] firstMatchInString:arg1 options:0 range:0] rangeAtIndex:1]]] longLongValue] * one of {1000, 0xea60, 0x36ee80, 0x5265c00})
loc_10015c8c0:
  10015c8c0  adrp    x8, #0x10041d000
  10015c8c4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10015c8c8  adrp    x8, #0x10041c000
  10015c8cc  nop
  10015c8d0  ldr     x1, [x8, #0x800]
  10015c8d4  mov     x2, x24
  10015c8d8  bl      _objc_msgSend                            ; [NSNumber numberWithLongLong:x2]
  10015c8dc  mov     x29, x29
  10015c8e0  bl      _objc_retainAutoreleasedReturnValue
  10015c8e4  mov     x22, x0
  10015c8e8  b       loc_10015c940
loc_10015c8ec:
  10015c8ec  adrp    x8, #0x10041e000
  10015c8f0  ldr     x22, [x8, #0x538]                        ; class TAGLog
  10015c8f4  adrp    x8, #0x10041a000
  10015c8f8  nop
  10015c8fc  ldr     x1, [x8, #0x620]
  10015c900  adrp    x0, #0x1003c8000
  10015c904  add     x0, x0, #0x350                           ; @"unkown units in lifetime: "
  10015c908  mov     x2, x19
  10015c90c  bl      _objc_msgSend                            ; [@"unkown units in lifetime: " stringByAppendingString:arg1]
  10015c910  mov     x29, x29
  10015c914  bl      _objc_retainAutoreleasedReturnValue
  10015c918  mov     x24, x0
  10015c91c  adrp    x8, #0x10041b000
  10015c920  nop
  10015c924  ldr     x1, [x8, #0xe90]
  10015c928  mov     x0, x22
  10015c92c  mov     x2, x24
  10015c930  bl      _objc_msgSend                            ; [TAGLog warning:[@"unkown units in lifetime: " stringByAppendingString:arg1]]
  10015c934  mov     x0, x24
  10015c938  bl      _objc_release
  10015c93c  mov     x22, #0
loc_10015c940:
  10015c940  mov     x0, x23
  10015c944  bl      _objc_release
loc_10015c948:
  10015c948  mov     x0, x21
  10015c94c  bl      _objc_release
loc_10015c950:
  10015c950  mov     x0, x20
  10015c954  bl      _objc_release
  10015c958  mov     x0, x19
  10015c95c  bl      _objc_release
  10015c960  mov     x0, x22
  10015c964  ldp     x26, x25, [sp], #0x10
  10015c968  ldp     x24, x23, [sp], #0x10
  10015c96c  ldp     x22, x21, [sp], #0x10
  10015c970  ldp     x20, x19, [sp], #0x10
  10015c974  ldp     x29, x30, [sp], #0x10
  10015c978  b       _objc_autoreleaseReturnValue
  10015c97c  mov     x25, x0
  10015c980  b       loc_10015c9f0
  10015c984  mov     x25, x0
  10015c988  mov     x0, x21
  10015c98c  b       loc_10015c9ec
  10015c990  mov     x25, x0
  10015c994  mov     x0, x22
  10015c998  bl      _objc_release
  10015c99c  b       loc_10015c9e8
  10015c9a0  mov     x25, x0
  10015c9a4  b       loc_10015c9e8
  10015c9a8  mov     x25, x0
  10015c9ac  mov     x0, x24
  10015c9b0  bl      _objc_release
  10015c9b4  b       loc_10015c9e8
  10015c9b8  mov     x25, x0
  10015c9bc  b       loc_10015c9e0
  10015c9c0  b       loc_10015c9c4
loc_10015c9c4:
  10015c9c4  mov     x25, x0
  10015c9c8  b       loc_10015c9d8
  10015c9cc  mov     x25, x0
  10015c9d0  mov     x0, x24
  10015c9d4  bl      _objc_release
loc_10015c9d8:
  10015c9d8  mov     x0, x23
  10015c9dc  bl      _objc_release
loc_10015c9e0:
  10015c9e0  mov     x0, x21
  10015c9e4  bl      _objc_release
loc_10015c9e8:
  10015c9e8  mov     x0, x20
loc_10015c9ec:
  10015c9ec  bl      _objc_release
loc_10015c9f0:
  10015c9f0  mov     x0, x19
  10015c9f4  bl      _objc_release
  10015c9f8  mov     x0, x25
  10015c9fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer processUpdate:]
; address 0x10015ca00  size 720  kind objc
; ======================================================================
  10015ca00  stp     x29, x30, [sp, #-0x10]!
  10015ca04  mov     x29, sp
  10015ca08  stp     x20, x19, [sp, #-0x10]!
  10015ca0c  stp     x22, x21, [sp, #-0x10]!
  10015ca10  stp     x24, x23, [sp, #-0x10]!
  10015ca14  stp     x26, x25, [sp, #-0x10]!
  10015ca18  stp     x28, x27, [sp, #-0x10]!
  10015ca1c  sub     sp, sp, #0x110
  10015ca20  mov     x21, x0
  10015ca24  adrp    x8, #0x1003b0000
  10015ca28  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015ca2c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015ca30  stur    x8, [x29, #-0x58]
  10015ca34  mov     x0, x2
  10015ca38  bl      _objc_retain
  10015ca3c  mov     x22, x0
  10015ca40  adrp    x8, #0x100418000
  10015ca44  nop
  10015ca48  ldr     x1, [x8, #0x9e8]
  10015ca4c  str     x1, [sp, #0x40]
  10015ca50  mov     x0, x21
  10015ca54  bl      _objc_msgSend                            ; [self model]
  10015ca58  mov     x29, x29
  10015ca5c  bl      _objc_retainAutoreleasedReturnValue
  10015ca60  mov     x19, x0
  10015ca64  bl      _objc_sync_enter                         ; objc_sync_enter([self model])
  10015ca68  stp     xzr, xzr, [x29, #-0x68]
  10015ca6c  stp     xzr, xzr, [x29, #-0x78]
  10015ca70  stp     xzr, xzr, [x29, #-0x88]
  10015ca74  stp     xzr, xzr, [x29, #-0x98]
  10015ca78  adrp    x8, #0x100417000
  10015ca7c  nop
  10015ca80  ldr     x1, [x8, #0x248]
  10015ca84  mov     x0, x22
  10015ca88  bl      _objc_msgSend                            ; [arg1 allKeys]
  10015ca8c  str     x19, [sp, #0x10]
  10015ca90  mov     x29, x29
  10015ca94  bl      _objc_retainAutoreleasedReturnValue
  10015ca98  str     x0, [sp, #0x30]
  10015ca9c  adrp    x8, #0x100416000
  10015caa0  nop
  10015caa4  ldr     x1, [x8, #0xe00]
  10015caa8  str     x1, [sp, #0x28]
  10015caac  sub     x2, x29, #0x98
  10015cab0  add     x3, sp, #0x48
  10015cab4  mov     x4, #0x10
  10015cab8  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10015cabc  mov     x25, x0
  10015cac0  cbz     x25, loc_10015cbd8                       ; if ([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10015cac4  ldur    x8, [x29, #-0x88]
  10015cac8  ldr     x8, [x8]
  10015cacc  str     x8, [sp, #0x38]
  10015cad0  adrp    x8, #0x100417000
  10015cad4  nop
  10015cad8  ldr     x26, [x8, #0x40]
  10015cadc  adrp    x8, #0x10041d000
  10015cae0  nop
  10015cae4  ldr     x27, [x8, #0x358]
  10015cae8  adrp    x8, #0x10041d000
  10015caec  nop
  10015caf0  ldr     x28, [x8, #0x440]
  10015caf4  sub     x8, x29, #0x98
  10015caf8  str     x8, [sp, #0x20]
  10015cafc  add     x8, sp, #0x48
  10015cb00  str     x8, [sp, #0x18]
loc_10015cb04:
  10015cb04  mov     x23, #0
loc_10015cb08:
  10015cb08  ldur    x8, [x29, #-0x88]
  10015cb0c  ldr     x8, [x8]
  10015cb10  ldr     x9, [sp, #0x38]
  10015cb14  cmp     x8, x9
  10015cb18  b.eq    loc_10015cb24                            ; if (x8 == x9)
  10015cb1c  ldr     x0, [sp, #0x30]
  10015cb20  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 allKeys])
loc_10015cb24:
  10015cb24  ldur    x8, [x29, #-0x90]
  10015cb28  ldr     x24, [x8, x23, lsl #3]
  10015cb2c  mov     x0, x22
  10015cb30  mov     x1, x26
  10015cb34  mov     x2, x24
  10015cb38  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10015cb3c  mov     x29, x29
  10015cb40  bl      _objc_retainAutoreleasedReturnValue
  10015cb44  mov     x20, x0
  10015cb48  mov     x0, x21
  10015cb4c  mov     x1, x27
  10015cb50  mov     x2, x24
  10015cb54  mov     x3, x20
  10015cb58  bl      _objc_msgSend                            ; [self expandKey:x2 value:[arg1 objectForKey:x2]]
  10015cb5c  mov     x29, x29
  10015cb60  bl      _objc_retainAutoreleasedReturnValue
  10015cb64  mov     x24, x0
  10015cb68  mov     x0, x21
  10015cb6c  ldr     x1, [sp, #0x40]
  10015cb70  bl      _objc_msgSend                            ; [self model]
  10015cb74  mov     x19, x22
  10015cb78  mov     x29, x29
  10015cb7c  bl      _objc_retainAutoreleasedReturnValue
  10015cb80  mov     x22, x0
  10015cb84  mov     x0, x21
  10015cb88  mov     x1, x28
  10015cb8c  mov     x2, x24
  10015cb90  mov     x3, x22
  10015cb94  bl      _objc_msgSend                            ; [self mergeMap:[self expandKey:x2 value:[arg1 objectForKey:x2]] intoMap:[self model]]
  10015cb98  mov     x0, x22
  10015cb9c  bl      _objc_release
  10015cba0  mov     x0, x24
  10015cba4  bl      _objc_release
  10015cba8  mov     x0, x20
  10015cbac  bl      _objc_release
  10015cbb0  add     x23, x23, #1
  10015cbb4  cmp     x23, x25
  10015cbb8  mov     x22, x19
  10015cbbc  b.lo    loc_10015cb08                            ; if ((x23 + 1) <u [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10015cbc0  mov     x4, #0x10
  10015cbc4  ldp     x1, x0, [sp, #0x28]
  10015cbc8  ldp     x3, x2, [sp, #0x18]
  10015cbcc  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10015cbd0  mov     x25, x0
  10015cbd4  cbnz    x25, loc_10015cb04                       ; if ([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10015cbd8:
  10015cbd8  ldr     x0, [sp, #0x30]
  10015cbdc  bl      _objc_release
  10015cbe0  ldr     x19, [sp, #0x10]
  10015cbe4  mov     x0, x19
  10015cbe8  bl      _objc_sync_exit                          ; objc_sync_exit([self model])
  10015cbec  mov     x0, x19
  10015cbf0  bl      _objc_release
  10015cbf4  adrp    x8, #0x10041d000
  10015cbf8  nop
  10015cbfc  ldr     x1, [x8, #0x448]
  10015cc00  mov     x0, x21
  10015cc04  mov     x2, x22
  10015cc08  bl      _objc_msgSend                            ; [self notifyListeners:arg1]
  10015cc0c  adrp    x19, #0x1003b0000
  10015cc10  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10015cc14  mov     x0, x22
  10015cc18  bl      _objc_release
  10015cc1c  ldr     x8, [x19]                                ; x8 = ___stack_chk_guard[+0x0]
  10015cc20  ldur    x9, [x29, #-0x58]
  10015cc24  sub     x8, x8, x9
  10015cc28  cbnz    x8, loc_10015cc4c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015cc2c  sub     sp, x29, #0x50
  10015cc30  ldp     x28, x27, [sp], #0x10
  10015cc34  ldp     x26, x25, [sp], #0x10
  10015cc38  ldp     x24, x23, [sp], #0x10
  10015cc3c  ldp     x22, x21, [sp], #0x10
  10015cc40  ldp     x20, x19, [sp], #0x10
  10015cc44  ldp     x29, x30, [sp], #0x10
  10015cc48  ret
loc_10015cc4c:
  10015cc4c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10015cc50:
  10015cc50  mov     x21, x0
  10015cc54  b       loc_10015cc8c
  10015cc58  mov     x21, x0
  10015cc5c  b       loc_10015cc84
  10015cc60  mov     x19, x22
  10015cc64  mov     x21, x0
  10015cc68  b       loc_10015cc78
  10015cc6c  mov     x21, x0
  10015cc70  mov     x0, x22
  10015cc74  bl      _objc_release
loc_10015cc78:
  10015cc78  mov     x0, x24
  10015cc7c  bl      _objc_release
  10015cc80  mov     x22, x19
loc_10015cc84:
  10015cc84  mov     x0, x20
  10015cc88  bl      _objc_release
loc_10015cc8c:
  10015cc8c  ldr     x19, [sp, #0x10]
  10015cc90  ldr     x0, [sp, #0x30]
  10015cc94  bl      _objc_release
loc_10015cc98:
  10015cc98  mov     x0, x19
  10015cc9c  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015cca0  mov     x0, x19
  10015cca4  bl      _objc_release
loc_10015cca8:
  10015cca8  mov     x0, x22
  10015ccac  bl      _objc_release
  10015ccb0  mov     x0, x21
  10015ccb4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015ccb8  mov     x21, x0
  10015ccbc  b       loc_10015cc98
  10015ccc0  b       loc_10015cc50
  10015ccc4  b       loc_10015cc50
  10015ccc8  mov     x21, x0
  10015cccc  b       loc_10015cca8

; ======================================================================
; -[TAGDataLayer registerListener:]
; address 0x10015ccd0  size 220  kind objc
; ======================================================================
  10015ccd0  stp     x29, x30, [sp, #-0x10]!
  10015ccd4  mov     x29, sp
  10015ccd8  stp     x20, x19, [sp, #-0x10]!
  10015ccdc  stp     x22, x21, [sp, #-0x10]!
  10015cce0  mov     x21, x0
  10015cce4  mov     x0, x2
  10015cce8  bl      _objc_retain
  10015ccec  mov     x19, x0
  10015ccf0  adrp    x8, #0x10041d000
  10015ccf4  nop
  10015ccf8  ldr     x22, [x8, #0x450]
  10015ccfc  mov     x0, x21
  10015cd00  mov     x1, x22
  10015cd04  bl      _objc_msgSend                            ; [self listeners]
  10015cd08  mov     x29, x29
  10015cd0c  bl      _objc_retainAutoreleasedReturnValue
  10015cd10  mov     x20, x0
  10015cd14  bl      _objc_sync_enter                         ; objc_sync_enter([self listeners])
  10015cd18  mov     x0, x21
  10015cd1c  mov     x1, x22
  10015cd20  bl      _objc_msgSend                            ; [self listeners]
  10015cd24  mov     x29, x29
  10015cd28  bl      _objc_retainAutoreleasedReturnValue
  10015cd2c  mov     x21, x0
  10015cd30  adrp    x8, #0x100416000
  10015cd34  nop
  10015cd38  ldr     x1, [x8, #0xd90]
  10015cd3c  mov     x2, x19
  10015cd40  bl      _objc_msgSend                            ; [[self listeners] addObject:arg1]
  10015cd44  mov     x0, x21
  10015cd48  bl      _objc_release
  10015cd4c  mov     x0, x20
  10015cd50  bl      _objc_sync_exit                          ; objc_sync_exit([self listeners])
  10015cd54  mov     x0, x20
  10015cd58  bl      _objc_release
  10015cd5c  mov     x0, x19
  10015cd60  ldp     x22, x21, [sp], #0x10
  10015cd64  ldp     x20, x19, [sp], #0x10
  10015cd68  ldp     x29, x30, [sp], #0x10
  10015cd6c  b       _objc_release
  10015cd70  mov     x22, x0
  10015cd74  b       loc_10015cd9c
  10015cd78  mov     x22, x0
  10015cd7c  b       loc_10015cd8c
  10015cd80  mov     x22, x0
  10015cd84  mov     x0, x21
  10015cd88  bl      _objc_release
loc_10015cd8c:
  10015cd8c  mov     x0, x20
  10015cd90  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015cd94  mov     x0, x20
  10015cd98  bl      _objc_release
loc_10015cd9c:
  10015cd9c  mov     x0, x19
  10015cda0  bl      _objc_release
  10015cda4  mov     x0, x22
  10015cda8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer unregisterListener:]
; address 0x10015cdac  size 220  kind objc
; ======================================================================
  10015cdac  stp     x29, x30, [sp, #-0x10]!
  10015cdb0  mov     x29, sp
  10015cdb4  stp     x20, x19, [sp, #-0x10]!
  10015cdb8  stp     x22, x21, [sp, #-0x10]!
  10015cdbc  mov     x21, x0
  10015cdc0  mov     x0, x2
  10015cdc4  bl      _objc_retain
  10015cdc8  mov     x19, x0
  10015cdcc  adrp    x8, #0x10041d000
  10015cdd0  nop
  10015cdd4  ldr     x22, [x8, #0x450]
  10015cdd8  mov     x0, x21
  10015cddc  mov     x1, x22
  10015cde0  bl      _objc_msgSend                            ; [self listeners]
  10015cde4  mov     x29, x29
  10015cde8  bl      _objc_retainAutoreleasedReturnValue
  10015cdec  mov     x20, x0
  10015cdf0  bl      _objc_sync_enter                         ; objc_sync_enter([self listeners])
  10015cdf4  mov     x0, x21
  10015cdf8  mov     x1, x22
  10015cdfc  bl      _objc_msgSend                            ; [self listeners]
  10015ce00  mov     x29, x29
  10015ce04  bl      _objc_retainAutoreleasedReturnValue
  10015ce08  mov     x21, x0
  10015ce0c  adrp    x8, #0x100416000
  10015ce10  nop
  10015ce14  ldr     x1, [x8, #0xe20]
  10015ce18  mov     x2, x19
  10015ce1c  bl      _objc_msgSend                            ; [[self listeners] removeObject:arg1]
  10015ce20  mov     x0, x21
  10015ce24  bl      _objc_release
  10015ce28  mov     x0, x20
  10015ce2c  bl      _objc_sync_exit                          ; objc_sync_exit([self listeners])
  10015ce30  mov     x0, x20
  10015ce34  bl      _objc_release
  10015ce38  mov     x0, x19
  10015ce3c  ldp     x22, x21, [sp], #0x10
  10015ce40  ldp     x20, x19, [sp], #0x10
  10015ce44  ldp     x29, x30, [sp], #0x10
  10015ce48  b       _objc_release
  10015ce4c  mov     x22, x0
  10015ce50  b       loc_10015ce78
  10015ce54  mov     x22, x0
  10015ce58  b       loc_10015ce68
  10015ce5c  mov     x22, x0
  10015ce60  mov     x0, x21
  10015ce64  bl      _objc_release
loc_10015ce68:
  10015ce68  mov     x0, x20
  10015ce6c  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015ce70  mov     x0, x20
  10015ce74  bl      _objc_release
loc_10015ce78:
  10015ce78  mov     x0, x19
  10015ce7c  bl      _objc_release
  10015ce80  mov     x0, x22
  10015ce84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer notifyListeners:]
; address 0x10015ce88  size 544  kind objc
; ======================================================================
  10015ce88  stp     x29, x30, [sp, #-0x10]!
  10015ce8c  mov     x29, sp
  10015ce90  stp     x20, x19, [sp, #-0x10]!
  10015ce94  stp     x22, x21, [sp, #-0x10]!
  10015ce98  stp     x24, x23, [sp, #-0x10]!
  10015ce9c  stp     x26, x25, [sp, #-0x10]!
  10015cea0  stp     x28, x27, [sp, #-0x10]!
  10015cea4  sub     sp, sp, #0xd0
  10015cea8  mov     x21, x0
  10015ceac  adrp    x26, #0x1003b0000
  10015ceb0  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10015ceb4  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10015ceb8  stur    x8, [x29, #-0x58]
  10015cebc  mov     x0, x2
  10015cec0  bl      _objc_retain
  10015cec4  mov     x19, x0
  10015cec8  adrp    x8, #0x10041d000
  10015cecc  nop
  10015ced0  ldr     x22, [x8, #0x450]
  10015ced4  mov     x0, x21
  10015ced8  mov     x1, x22
  10015cedc  bl      _objc_msgSend                            ; [self listeners]
  10015cee0  mov     x29, x29
  10015cee4  bl      _objc_retainAutoreleasedReturnValue
  10015cee8  mov     x20, x0
  10015ceec  bl      _objc_sync_enter                         ; objc_sync_enter([self listeners])
  10015cef0  adrp    x8, #0x10041e000
  10015cef4  ldr     x23, [x8, #0x550]                        ; class NSSet
  10015cef8  mov     x0, x21
  10015cefc  mov     x1, x22
  10015cf00  bl      _objc_msgSend                            ; [self listeners]
  10015cf04  mov     x29, x29
  10015cf08  bl      _objc_retainAutoreleasedReturnValue
  10015cf0c  mov     x22, x0
  10015cf10  adrp    x8, #0x10041d000
  10015cf14  nop
  10015cf18  ldr     x1, [x8, #0x458]
  10015cf1c  mov     x0, x23
  10015cf20  mov     x2, x22
  10015cf24  bl      _objc_msgSend                            ; [NSSet setWithSet:[self listeners]]
  10015cf28  mov     x29, x29
  10015cf2c  bl      _objc_retainAutoreleasedReturnValue
  10015cf30  mov     x21, x0
  10015cf34  mov     x0, x22
  10015cf38  bl      _objc_release
  10015cf3c  mov     x0, x20
  10015cf40  bl      _objc_sync_exit                          ; objc_sync_exit([self listeners])
  10015cf44  mov     x0, x20
  10015cf48  bl      _objc_release
  10015cf4c  stp     xzr, xzr, [sp, #0xb8]
  10015cf50  stp     xzr, xzr, [sp, #0xa8]
  10015cf54  stp     xzr, xzr, [sp, #0x98]
  10015cf58  stp     xzr, xzr, [sp, #0x88]
  10015cf5c  mov     x0, x21
  10015cf60  bl      _objc_retain
  10015cf64  mov     x20, x0
  10015cf68  adrp    x8, #0x100416000
  10015cf6c  nop
  10015cf70  ldr     x21, [x8, #0xe00]
  10015cf74  add     x2, sp, #0x88
  10015cf78  add     x3, sp, #8
  10015cf7c  mov     x4, #0x10
  10015cf80  mov     x1, x21
  10015cf84  bl      _objc_msgSend                            ; [[NSSet setWithSet:[self listeners]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10015cf88  mov     x22, x0
  10015cf8c  cbz     x22, loc_10015d008                       ; if ([[NSSet setWithSet:[self listeners]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  10015cf90  ldr     x8, [sp, #0x98]
  10015cf94  ldr     x27, [x8]
  10015cf98  adrp    x8, #0x10041d000
  10015cf9c  add     x8, x8, #0x460                           ; &@selector(changed:)
  10015cfa0  ldr     x23, [x8]
  10015cfa4  add     x24, sp, #0x88
  10015cfa8  add     x25, sp, #8
loc_10015cfac:
  10015cfac  mov     x28, #0
loc_10015cfb0:
  10015cfb0  ldr     x8, [sp, #0x98]
  10015cfb4  ldr     x8, [x8]
  10015cfb8  cmp     x8, x27
  10015cfbc  b.eq    loc_10015cfc8                            ; if (x8 == x27)
  10015cfc0  mov     x0, x20
  10015cfc4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSSet setWithSet:[self listeners]])
loc_10015cfc8:
  10015cfc8  ldr     x8, [sp, #0x90]
  10015cfcc  ldr     x0, [x8, x28, lsl #3]
  10015cfd0  mov     x1, x23
  10015cfd4  mov     x2, x19
  10015cfd8  bl      _objc_msgSend                            ; [x0 changed:arg1]
  10015cfdc  add     x28, x28, #1
  10015cfe0  cmp     x28, x22
  10015cfe4  b.lo    loc_10015cfb0                            ; if ((x28 + 1) <u [[NSSet setWithSet:[self listeners]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  10015cfe8  mov     x4, #0x10
  10015cfec  mov     x0, x20
  10015cff0  mov     x1, x21
  10015cff4  mov     x2, x24
  10015cff8  mov     x3, x25
  10015cffc  bl      _objc_msgSend                            ; [[NSSet setWithSet:[self listeners]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  10015d000  mov     x22, x0
  10015d004  cbnz    x22, loc_10015cfac                       ; if ([[NSSet setWithSet:[self listeners]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
loc_10015d008:
  10015d008  mov     x0, x20
  10015d00c  bl      _objc_release
  10015d010  mov     x0, x20
  10015d014  bl      _objc_release
  10015d018  mov     x0, x19
  10015d01c  bl      _objc_release
  10015d020  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  10015d024  ldur    x9, [x29, #-0x58]
  10015d028  sub     x8, x8, x9
  10015d02c  cbnz    x8, loc_10015d050                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015d030  sub     sp, x29, #0x50
  10015d034  ldp     x28, x27, [sp], #0x10
  10015d038  ldp     x26, x25, [sp], #0x10
  10015d03c  ldp     x24, x23, [sp], #0x10
  10015d040  ldp     x22, x21, [sp], #0x10
  10015d044  ldp     x20, x19, [sp], #0x10
  10015d048  ldp     x29, x30, [sp], #0x10
  10015d04c  ret
loc_10015d050:
  10015d050  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10015d054:
  10015d054  mov     x21, x0
  10015d058  mov     x0, x20
  10015d05c  bl      _objc_release
loc_10015d060:
  10015d060  mov     x0, x20
  10015d064  bl      _objc_release
loc_10015d068:
  10015d068  mov     x0, x19
  10015d06c  bl      _objc_release
  10015d070  mov     x0, x21
  10015d074  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015d078  mov     x21, x0
  10015d07c  b       loc_10015d068
  10015d080  mov     x21, x0
  10015d084  b       loc_10015d094
  10015d088  mov     x21, x0
  10015d08c  mov     x0, x22
  10015d090  bl      _objc_release
loc_10015d094:
  10015d094  mov     x0, x20
  10015d098  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015d09c  b       loc_10015d060
  10015d0a0  b       loc_10015d054
  10015d0a4  b       loc_10015d054

; ======================================================================
; -[TAGDataLayer mergeMap:intoMap:]
; address 0x10015d0a8  size 1184  kind objc
; ======================================================================
  10015d0a8  stp     x29, x30, [sp, #-0x10]!
  10015d0ac  mov     x29, sp
  10015d0b0  stp     x20, x19, [sp, #-0x10]!
  10015d0b4  stp     x22, x21, [sp, #-0x10]!
  10015d0b8  stp     x24, x23, [sp, #-0x10]!
  10015d0bc  stp     x26, x25, [sp, #-0x10]!
  10015d0c0  stp     x28, x27, [sp, #-0x10]!
  10015d0c4  sub     sp, sp, #0x130
  10015d0c8  mov     x20, x3
  10015d0cc  str     x0, [sp, #0x50]
  10015d0d0  adrp    x8, #0x1003b0000
  10015d0d4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015d0d8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015d0dc  stur    x8, [x29, #-0x58]
  10015d0e0  mov     x0, x2
  10015d0e4  bl      _objc_retain
  10015d0e8  mov     x19, x0
  10015d0ec  str     x19, [sp, #0x60]
  10015d0f0  mov     x0, x20
  10015d0f4  bl      _objc_retain
  10015d0f8  mov     x20, x0
  10015d0fc  stp     xzr, xzr, [x29, #-0x68]
  10015d100  stp     xzr, xzr, [x29, #-0x78]
  10015d104  stp     xzr, xzr, [x29, #-0x88]
  10015d108  stp     xzr, xzr, [x29, #-0x98]
  10015d10c  adrp    x8, #0x100417000
  10015d110  nop
  10015d114  ldr     x1, [x8, #0x248]
  10015d118  mov     x0, x19
  10015d11c  bl      _objc_msgSend                            ; [arg1 allKeys]
  10015d120  mov     x29, x29
  10015d124  bl      _objc_retainAutoreleasedReturnValue
  10015d128  str     x0, [sp, #0x40]
  10015d12c  adrp    x8, #0x100416000
  10015d130  nop
  10015d134  ldr     x1, [x8, #0xe00]
  10015d138  str     x1, [sp, #0x18]
  10015d13c  sub     x2, x29, #0x98
  10015d140  add     x3, sp, #0x68
  10015d144  mov     x4, #0x10
  10015d148  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  10015d14c  mov     x25, x0
  10015d150  cbz     x25, loc_10015d45c                       ; if ([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] == 0)
  10015d154  adrp    x8, #0x100417000
  10015d158  nop
  10015d15c  ldur    x9, [x29, #-0x88]
  10015d160  adrp    x10, #0x100417000
  10015d164  add     x10, x10, #0x2e0                         ; &@selector(class)
  10015d168  ldr     x26, [x8, #0x40]
  10015d16c  ldr     x27, [x10]
  10015d170  ldr     x8, [x9]
  10015d174  str     x8, [sp, #0x58]
  10015d178  adrp    x8, #0x100417000
  10015d17c  nop
  10015d180  ldr     x28, [x8, #0x3b8]
  10015d184  adrp    x8, #0x10041d000
  10015d188  nop
  10015d18c  ldr     x8, [x8, #0x468]
  10015d190  str     x8, [sp, #0x38]
  10015d194  adrp    x8, #0x100418000
  10015d198  nop
  10015d19c  ldr     x8, [x8, #0x50]
  10015d1a0  str     x8, [sp, #0x30]
  10015d1a4  adrp    x8, #0x100416000
  10015d1a8  nop
  10015d1ac  ldr     x8, [x8, #0xdc8]
  10015d1b0  str     x8, [sp, #0x48]
  10015d1b4  adrp    x8, #0x10041d000
  10015d1b8  nop
  10015d1bc  ldr     x8, [x8, #0x440]
  10015d1c0  str     x8, [sp, #0x28]
  10015d1c4  adrp    x8, #0x10041b000
  10015d1c8  nop
  10015d1cc  ldr     x8, [x8, #0xf20]
  10015d1d0  str     x8, [sp, #0x20]
  10015d1d4  sub     x8, x29, #0x98
  10015d1d8  str     x8, [sp, #0x10]
  10015d1dc  add     x8, sp, #0x68
  10015d1e0  str     x8, [sp, #8]
loc_10015d1e4:
  10015d1e4  mov     x19, #0
loc_10015d1e8:
  10015d1e8  ldur    x8, [x29, #-0x88]
  10015d1ec  ldr     x8, [x8]
  10015d1f0  ldr     x9, [sp, #0x58]
  10015d1f4  cmp     x8, x9
  10015d1f8  b.eq    loc_10015d204                            ; if (x8 == x9)
  10015d1fc  ldr     x0, [sp, #0x40]
  10015d200  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 allKeys])
loc_10015d204:
  10015d204  ldur    x8, [x29, #-0x90]
  10015d208  ldr     x0, [x8, x19, lsl #3]
  10015d20c  bl      _objc_retain
  10015d210  mov     x24, x0
  10015d214  ldr     x0, [sp, #0x60]
  10015d218  mov     x1, x26
  10015d21c  mov     x2, x24
  10015d220  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10015d224  mov     x29, x29
  10015d228  bl      _objc_retainAutoreleasedReturnValue
  10015d22c  mov     x21, x0
  10015d230  adrp    x8, #0x10041d000
  10015d234  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10015d238  mov     x1, x27
  10015d23c  bl      _objc_msgSend                            ; [NSArray class]
  10015d240  mov     x2, x0
  10015d244  mov     x0, x21
  10015d248  mov     x1, x28
  10015d24c  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] isKindOfClass:[NSArray class]]
  10015d250  cbz     w0, loc_10015d318                        ; if ([[arg1 objectForKey:x2] isKindOfClass:[NSArray class]] == 0)
  10015d254  mov     x0, x20
  10015d258  mov     x1, x26
  10015d25c  mov     x2, x24
  10015d260  bl      _objc_msgSend                            ; [arg2 objectForKey:x2]
  10015d264  mov     x29, x29
  10015d268  bl      _objc_retainAutoreleasedReturnValue
  10015d26c  mov     x23, x0
  10015d270  adrp    x8, #0x10041d000
  10015d274  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015d278  mov     x1, x27
  10015d27c  bl      _objc_msgSend                            ; [NSMutableArray class]
  10015d280  mov     x2, x0
  10015d284  mov     x0, x23
  10015d288  mov     x1, x28
  10015d28c  bl      _objc_msgSend                            ; [[arg2 objectForKey:x2] isKindOfClass:[NSMutableArray class]]
  10015d290  mov     x22, x0
  10015d294  mov     x0, x23
  10015d298  bl      _objc_release
  10015d29c  tbnz    w22, #0, loc_10015d2d8                   ; if (([[arg2 objectForKey:x2] isKindOfClass:[NSMutableArray class]] & 1))
  10015d2a0  adrp    x8, #0x10041d000
  10015d2a4  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015d2a8  ldr     x1, [sp, #0x30]
  10015d2ac  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015d2b0  mov     x29, x29
  10015d2b4  bl      _objc_retainAutoreleasedReturnValue
  10015d2b8  mov     x23, x0
  10015d2bc  mov     x0, x20
  10015d2c0  ldr     x1, [sp, #0x48]
  10015d2c4  mov     x2, x23
  10015d2c8  mov     x3, x24
  10015d2cc  bl      _objc_msgSend                            ; [arg2 setObject:[NSMutableArray array] forKey:x3]
  10015d2d0  mov     x0, x23
  10015d2d4  bl      _objc_release
loc_10015d2d8:
  10015d2d8  mov     x0, x21
  10015d2dc  bl      _objc_retain
  10015d2e0  mov     x23, x0
  10015d2e4  mov     x0, x20
  10015d2e8  mov     x1, x26
  10015d2ec  mov     x2, x24
  10015d2f0  bl      _objc_msgSend                            ; [arg2 objectForKey:x2]
  10015d2f4  mov     x29, x29
  10015d2f8  bl      _objc_retainAutoreleasedReturnValue
  10015d2fc  mov     x22, x0
  10015d300  ldr     x0, [sp, #0x50]
  10015d304  ldr     x1, [sp, #0x38]
  10015d308  mov     x2, x23
  10015d30c  mov     x3, x22
  10015d310  bl      _objc_msgSend                            ; [self mergeList:[arg1 objectForKey:x2] intoList:[arg2 objectForKey:x2]]
  10015d314  b       loc_10015d3fc
loc_10015d318:
  10015d318  adrp    x8, #0x10041d000
  10015d31c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10015d320  mov     x1, x27
  10015d324  bl      _objc_msgSend                            ; [NSDictionary class]
  10015d328  mov     x2, x0
  10015d32c  mov     x0, x21
  10015d330  mov     x1, x28
  10015d334  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] isKindOfClass:[NSDictionary class]]
  10015d338  cbz     w0, loc_10015d410                        ; if ([[arg1 objectForKey:x2] isKindOfClass:[NSDictionary class]] == 0)
  10015d33c  mov     x0, x20
  10015d340  mov     x1, x26
  10015d344  mov     x2, x24
  10015d348  bl      _objc_msgSend                            ; [arg2 objectForKey:x2]
  10015d34c  mov     x29, x29
  10015d350  bl      _objc_retainAutoreleasedReturnValue
  10015d354  mov     x23, x0
  10015d358  adrp    x8, #0x10041d000
  10015d35c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10015d360  mov     x1, x27
  10015d364  bl      _objc_msgSend                            ; [NSMutableDictionary class]
  10015d368  mov     x2, x0
  10015d36c  mov     x0, x23
  10015d370  mov     x1, x28
  10015d374  bl      _objc_msgSend                            ; [[arg2 objectForKey:x2] isKindOfClass:[NSMutableDictionary class]]
  10015d378  mov     x22, x0
  10015d37c  mov     x0, x23
  10015d380  bl      _objc_release
  10015d384  tbnz    w22, #0, loc_10015d3c0                   ; if (([[arg2 objectForKey:x2] isKindOfClass:[NSMutableDictionary class]] & 1))
  10015d388  adrp    x8, #0x10041d000
  10015d38c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10015d390  ldr     x1, [sp, #0x20]
  10015d394  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10015d398  mov     x29, x29
  10015d39c  bl      _objc_retainAutoreleasedReturnValue
  10015d3a0  mov     x22, x0
  10015d3a4  mov     x0, x20
  10015d3a8  ldr     x1, [sp, #0x48]
  10015d3ac  mov     x2, x22
  10015d3b0  mov     x3, x24
  10015d3b4  bl      _objc_msgSend                            ; [arg2 setObject:[NSMutableDictionary dictionary] forKey:x3]
  10015d3b8  mov     x0, x22
  10015d3bc  bl      _objc_release
loc_10015d3c0:
  10015d3c0  mov     x0, x21
  10015d3c4  bl      _objc_retain
  10015d3c8  mov     x23, x0
  10015d3cc  mov     x0, x20
  10015d3d0  mov     x1, x26
  10015d3d4  mov     x2, x24
  10015d3d8  bl      _objc_msgSend                            ; [arg2 objectForKey:x2]
  10015d3dc  mov     x29, x29
  10015d3e0  bl      _objc_retainAutoreleasedReturnValue
  10015d3e4  mov     x22, x0
  10015d3e8  ldr     x0, [sp, #0x50]
  10015d3ec  ldr     x1, [sp, #0x28]
  10015d3f0  mov     x2, x23
  10015d3f4  mov     x3, x22
  10015d3f8  bl      _objc_msgSend                            ; [self mergeMap:[arg1 objectForKey:x2] intoMap:[arg2 objectForKey:x2]]
loc_10015d3fc:
  10015d3fc  mov     x0, x22
  10015d400  bl      _objc_release
  10015d404  mov     x0, x23
  10015d408  bl      _objc_release
  10015d40c  b       loc_10015d424
loc_10015d410:
  10015d410  mov     x0, x20
  10015d414  ldr     x1, [sp, #0x48]
  10015d418  mov     x2, x21
  10015d41c  mov     x3, x24
  10015d420  bl      _objc_msgSend                            ; [arg2 setObject:[arg1 objectForKey:x2] forKey:x3]
loc_10015d424:
  10015d424  mov     x0, x21
  10015d428  bl      _objc_release
  10015d42c  mov     x0, x24
  10015d430  bl      _objc_release
  10015d434  add     x19, x19, #1
  10015d438  cmp     x19, x25
  10015d43c  b.lo    loc_10015d1e8                            ; if ((x19 + 1) <u [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16])
  10015d440  mov     x4, #0x10
  10015d444  ldr     x0, [sp, #0x40]
  10015d448  ldp     x2, x1, [sp, #0x10]
  10015d44c  ldr     x3, [sp, #8]
  10015d450  bl      _objc_msgSend                            ; [[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16]
  10015d454  mov     x25, x0
  10015d458  cbnz    x25, loc_10015d1e4                       ; if ([[arg1 allKeys] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x68] count:16] != 0)
loc_10015d45c:
  10015d45c  ldr     x0, [sp, #0x40]
  10015d460  bl      _objc_release
  10015d464  mov     x0, x20
  10015d468  bl      _objc_release
  10015d46c  ldr     x0, [sp, #0x60]
  10015d470  bl      _objc_release
  10015d474  adrp    x8, #0x1003b0000
  10015d478  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10015d47c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10015d480  ldur    x9, [x29, #-0x58]
  10015d484  sub     x8, x8, x9
  10015d488  cbnz    x8, loc_10015d4ac                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10015d48c  sub     sp, x29, #0x50
  10015d490  ldp     x28, x27, [sp], #0x10
  10015d494  ldp     x26, x25, [sp], #0x10
  10015d498  ldp     x24, x23, [sp], #0x10
  10015d49c  ldp     x22, x21, [sp], #0x10
  10015d4a0  ldp     x20, x19, [sp], #0x10
  10015d4a4  ldp     x29, x30, [sp], #0x10
  10015d4a8  ret
loc_10015d4ac:
  10015d4ac  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10015d4b0  mov     x25, x0
  10015d4b4  b       loc_10015d4f4
  10015d4b8  mov     x25, x0
  10015d4bc  b       loc_10015d4fc
  10015d4c0  b       loc_10015d4d8
  10015d4c4  b       loc_10015d540
  10015d4c8  b       loc_10015d4d8
  10015d4cc  b       loc_10015d4e0
  10015d4d0  b       loc_10015d4d8
  10015d4d4  b       loc_10015d4d8
loc_10015d4d8:
  10015d4d8  mov     x25, x0
  10015d4dc  b       loc_10015d4ec
loc_10015d4e0:
  10015d4e0  mov     x25, x0
  10015d4e4  mov     x0, x22
  10015d4e8  bl      _objc_release
loc_10015d4ec:
  10015d4ec  mov     x0, x23
  10015d4f0  bl      _objc_release
loc_10015d4f4:
  10015d4f4  mov     x0, x21
  10015d4f8  bl      _objc_release
loc_10015d4fc:
  10015d4fc  mov     x0, x24
  10015d500  bl      _objc_release
loc_10015d504:
  10015d504  ldr     x0, [sp, #0x40]
  10015d508  bl      _objc_release
loc_10015d50c:
  10015d50c  mov     x0, x20
  10015d510  bl      _objc_release
  10015d514  ldr     x0, [sp, #0x60]
  10015d518  bl      _objc_release
  10015d51c  mov     x0, x25
  10015d520  bl      __Unwind_Resume                          ; Unwind_Resume()
  10015d524  mov     x25, x0
  10015d528  b       loc_10015d50c
  10015d52c  b       loc_10015d540
  10015d530  mov     x25, x0
  10015d534  mov     x0, x22
  10015d538  bl      _objc_release
  10015d53c  b       loc_10015d4f4
loc_10015d540:
  10015d540  mov     x25, x0
  10015d544  b       loc_10015d504

; ======================================================================
; -[TAGDataLayer mergeList:intoList:]
; address 0x10015d548  size 1068  kind objc
; ======================================================================
  10015d548  stp     x29, x30, [sp, #-0x10]!
  10015d54c  mov     x29, sp
  10015d550  stp     x20, x19, [sp, #-0x10]!
  10015d554  stp     x22, x21, [sp, #-0x10]!
  10015d558  stp     x24, x23, [sp, #-0x10]!
  10015d55c  stp     x26, x25, [sp, #-0x10]!
  10015d560  stp     x28, x27, [sp, #-0x10]!
  10015d564  sub     sp, sp, #0x30
  10015d568  mov     x20, x3
  10015d56c  str     x0, [sp, #0x28]
  10015d570  mov     x0, x2
  10015d574  bl      _objc_retain
  10015d578  mov     x19, x0
  10015d57c  mov     x0, x20
  10015d580  bl      _objc_retain
  10015d584  mov     x20, x0
  10015d588  adrp    x8, #0x100416000
  10015d58c  nop
  10015d590  adrp    x9, #0x100418000
  10015d594  add     x9, x9, #0x468                           ; &@selector(null)
  10015d598  ldr     x22, [x8, #0xe30]
  10015d59c  ldr     x23, [x9]
  10015d5a0  adrp    x8, #0x100416000
  10015d5a4  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10015d5a8  ldr     x24, [x8]
  10015d5ac  adrp    x25, #0x10041e000
  10015d5b0  b       loc_10015d5bc
loc_10015d5b4:
  10015d5b4  mov     x0, x21
  10015d5b8  bl      _objc_release
loc_10015d5bc:
  10015d5bc  mov     x0, x20
  10015d5c0  mov     x1, x22
  10015d5c4  bl      _objc_msgSend                            ; [arg2 count]
  10015d5c8  mov     x21, x0
  10015d5cc  mov     x0, x19
  10015d5d0  mov     x1, x22
  10015d5d4  bl      _objc_msgSend                            ; [arg1 count]
  10015d5d8  cmp     x21, x0
  10015d5dc  b.hs    loc_10015d618                            ; if ([arg2 count] >=u [arg1 count])
  10015d5e0  ldr     x0, [x25, #0x140]                        ; class NSNull
  10015d5e4  mov     x1, x23
  10015d5e8  bl      _objc_msgSend                            ; [NSNull null]
  10015d5ec  mov     x29, x29
  10015d5f0  bl      _objc_retainAutoreleasedReturnValue
  10015d5f4  mov     x21, x0
  10015d5f8  mov     x0, x20
  10015d5fc  mov     x1, x24
  10015d600  mov     x2, x21
  10015d604  bl      _objc_msgSend                            ; [arg2 addObject:[NSNull null]]
  10015d608  b       loc_10015d5b4
  10015d60c  mov     x22, x0
  10015d610  mov     x0, x21
  10015d614  b       loc_10015d958
loc_10015d618:
  10015d618  mov     x24, #0
  10015d61c  adrp    x8, #0x100416000
  10015d620  nop
  10015d624  adrp    x9, #0x100417000
  10015d628  add     x9, x9, #0x2e0                           ; &@selector(class)
  10015d62c  ldr     x25, [x8, #0xc30]
  10015d630  ldr     x26, [x9]
  10015d634  adrp    x8, #0x100417000
  10015d638  nop
  10015d63c  ldr     x27, [x8, #0x3b8]
  10015d640  adrp    x8, #0x10041d000
  10015d644  nop
  10015d648  ldr     x8, [x8, #0x468]
  10015d64c  str     x8, [sp, #0x20]
  10015d650  adrp    x8, #0x100418000
  10015d654  nop
  10015d658  ldr     x8, [x8, #0x50]
  10015d65c  str     x8, [sp, #0x10]
  10015d660  adrp    x8, #0x100419000
  10015d664  nop
  10015d668  ldr     x8, [x8, #0x880]
  10015d66c  str     x8, [sp, #0x18]
  10015d670  adrp    x8, #0x10041d000
  10015d674  nop
  10015d678  ldr     x8, [x8, #0x440]
  10015d67c  str     x8, [sp, #8]
  10015d680  adrp    x8, #0x10041b000
  10015d684  nop
  10015d688  ldr     x8, [x8, #0xf20]
  10015d68c  str     x8, [sp]
  10015d690  b       loc_10015d6a0
loc_10015d694:
  10015d694  mov     x0, x23
  10015d698  bl      _objc_release
  10015d69c  add     x24, x24, #1
loc_10015d6a0:
  10015d6a0  mov     x0, x19
  10015d6a4  mov     x1, x22
  10015d6a8  bl      _objc_msgSend                            ; [arg1 count]
  10015d6ac  cmp     x24, x0
  10015d6b0  b.hs    loc_10015d8dc                            ; if (x24 >=u [arg1 count])
  10015d6b4  mov     x0, x19
  10015d6b8  mov     x1, x25
  10015d6bc  mov     x2, x24
  10015d6c0  bl      _objc_msgSend                            ; [arg1 objectAtIndex:x2]
  10015d6c4  mov     x29, x29
  10015d6c8  bl      _objc_retainAutoreleasedReturnValue
  10015d6cc  mov     x23, x0
  10015d6d0  adrp    x8, #0x10041d000
  10015d6d4  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10015d6d8  mov     x1, x26
  10015d6dc  bl      _objc_msgSend                            ; [NSArray class]
  10015d6e0  mov     x2, x0
  10015d6e4  mov     x0, x23
  10015d6e8  mov     x1, x27
  10015d6ec  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:x2] isKindOfClass:[NSArray class]]
  10015d6f0  cbz     w0, loc_10015d7b4                        ; if ([[arg1 objectAtIndex:x2] isKindOfClass:[NSArray class]] == 0)
  10015d6f4  mov     x0, x20
  10015d6f8  mov     x1, x25
  10015d6fc  mov     x2, x24
  10015d700  bl      _objc_msgSend                            ; [arg2 objectAtIndex:x2]
  10015d704  mov     x29, x29
  10015d708  bl      _objc_retainAutoreleasedReturnValue
  10015d70c  mov     x28, x0
  10015d710  adrp    x8, #0x10041d000
  10015d714  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015d718  mov     x1, x26
  10015d71c  bl      _objc_msgSend                            ; [NSMutableArray class]
  10015d720  mov     x2, x0
  10015d724  mov     x0, x28
  10015d728  mov     x1, x27
  10015d72c  bl      _objc_msgSend                            ; [[arg2 objectAtIndex:x2] isKindOfClass:[NSMutableArray class]]
  10015d730  mov     x21, x0
  10015d734  mov     x0, x28
  10015d738  bl      _objc_release
  10015d73c  tbnz    w21, #0, loc_10015d778                   ; if (([[arg2 objectAtIndex:x2] isKindOfClass:[NSMutableArray class]] & 1))
  10015d740  adrp    x8, #0x10041d000
  10015d744  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10015d748  ldr     x1, [sp, #0x10]
  10015d74c  bl      _objc_msgSend                            ; [NSMutableArray array]
  10015d750  mov     x29, x29
  10015d754  bl      _objc_retainAutoreleasedReturnValue
  10015d758  mov     x28, x0
  10015d75c  mov     x0, x20
  10015d760  ldr     x1, [sp, #0x18]
  10015d764  mov     x2, x28
  10015d768  mov     x3, x24
  10015d76c  bl      _objc_msgSend                            ; [arg2 setObject:[NSMutableArray array] atIndexedSubscript:x3]
  10015d770  mov     x0, x28
  10015d774  bl      _objc_release
loc_10015d778:
  10015d778  mov     x0, x23
  10015d77c  bl      _objc_retain
  10015d780  mov     x28, x0
  10015d784  mov     x0, x20
  10015d788  mov     x1, x25
  10015d78c  mov     x2, x24
  10015d790  bl      _objc_msgSend                            ; [arg2 objectAtIndex:x2]
  10015d794  mov     x29, x29
  10015d798  bl      _objc_retainAutoreleasedReturnValue
  10015d79c  mov     x21, x0
  10015d7a0  ldp     x1, x0, [sp, #0x20]
  10015d7a4  mov     x2, x28
  10015d7a8  mov     x3, x21
  10015d7ac  bl      _objc_msgSend                            ; [self mergeList:[arg1 objectAtIndex:x2] intoList:[arg2 objectAtIndex:x2]]
  10015d7b0  b       loc_10015d898
loc_10015d7b4:
  10015d7b4  adrp    x8, #0x10041d000
  10015d7b8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10015d7bc  mov     x1, x26
  10015d7c0  bl      _objc_msgSend                            ; [NSDictionary class]
  10015d7c4  mov     x2, x0
  10015d7c8  mov     x0, x23
  10015d7cc  mov     x1, x27
  10015d7d0  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:x2] isKindOfClass:[NSDictionary class]]
  10015d7d4  cbz     w0, loc_10015d8ac                        ; if ([[arg1 objectAtIndex:x2] isKindOfClass:[NSDictionary class]] == 0)
  10015d7d8  mov     x0, x20
  10015d7dc  mov     x1, x25
  10015d7e0  mov     x2, x24
  10015d7e4  bl      _objc_msgSend                            ; [arg2 objectAtIndex:x2]
  10015d7e8  mov     x29, x29
  10015d7ec  bl      _objc_retainAutoreleasedReturnValue
  10015d7f0  mov     x28, x0
  10015d7f4  adrp    x8, #0x10041d000
  10015d7f8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10015d7fc  mov     x1, x26
  10015d800  bl      _objc_msgSend                            ; [NSMutableDictionary class]
  10015d804  mov     x2, x0
  10015d808  mov     x0, x28
  10015d80c  mov     x1, x27
  10015d810  bl      _objc_msgSend                            ; [[arg2 objectAtIndex:x2] isKindOfClass:[NSMutableDictionary class]]
  10015d814  mov     x21, x0
  10015d818  mov     x0, x28
  10015d81c  bl      _objc_release
  10015d820  tbnz    w21, #0, loc_10015d85c                   ; if (([[arg2 objectAtIndex:x2] isKindOfClass:[NSMutableDictionary class]] & 1))
  10015d824  adrp    x8, #0x10041d000
  10015d828  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10015d82c  ldr     x1, [sp]
  10015d830  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10015d834  mov     x29, x29
  10015d838  bl      _objc_retainAutoreleasedReturnValue
  10015d83c  mov     x21, x0
  10015d840  mov     x0, x20
  10015d844  ldr     x1, [sp, #0x18]
  10015d848  mov     x2, x21
  10015d84c  mov     x3, x24
  10015d850  bl      _objc_msgSend                            ; [arg2 setObject:[NSMutableDictionary dictionary] atIndexedSubscript:x3]
  10015d854  mov     x0, x21
  10015d858  bl      _objc_release
loc_10015d85c:
  10015d85c  mov     x0, x23
  10015d860  bl      _objc_retain
  10015d864  mov     x28, x0
  10015d868  mov     x0, x20
  10015d86c  mov     x1, x25
  10015d870  mov     x2, x24
  10015d874  bl      _objc_msgSend                            ; [arg2 objectAtIndex:x2]
  10015d878  mov     x29, x29
  10015d87c  bl      _objc_retainAutoreleasedReturnValue
  10015d880  mov     x21, x0
  10015d884  ldr     x0, [sp, #0x28]
  10015d888  ldr     x1, [sp, #8]
  10015d88c  mov     x2, x28
  10015d890  mov     x3, x21
  10015d894  bl      _objc_msgSend                            ; [self mergeMap:[arg1 objectAtIndex:x2] intoMap:[arg2 objectAtIndex:x2]]
loc_10015d898:
  10015d898  mov     x0, x21
  10015d89c  bl      _objc_release
  10015d8a0  mov     x0, x28
  10015d8a4  bl      _objc_release
  10015d8a8  b       loc_10015d694
loc_10015d8ac:
  10015d8ac  adrp    x8, #0x10042d000
  10015d8b0  ldr     x8, [x8, #0x920]                         ; load g_10042d920
  10015d8b4  cmp     x23, x8
  10015d8b8  b.eq    loc_10015d694                            ; if ([arg1 objectAtIndex:x2] == g_10042d920)
  10015d8bc  mov     x0, x20
  10015d8c0  ldr     x1, [sp, #0x18]
  10015d8c4  mov     x2, x23
  10015d8c8  mov     x3, x24
  10015d8cc  bl      _objc_msgSend                            ; [arg2 setObject:[arg1 objectAtIndex:x2] atIndexedSubscript:x3]
  10015d8d0  b       loc_10015d694
  10015d8d4  mov     x22, x0
  10015d8d8  b       loc_10015d954
loc_10015d8dc:
  10015d8dc  mov     x0, x20
  10015d8e0  bl      _objc_release
  10015d8e4  mov     x0, x19
  10015d8e8  sub     sp, x29, #0x50
  10015d8ec  ldp     x28, x27, [sp], #0x10
  10015d8f0  ldp     x26, x25, [sp], #0x10
  10015d8f4  ldp     x24, x23, [sp], #0x10
  10015d8f8  ldp     x22, x21, [sp], #0x10
  10015d8fc  ldp     x20, x19, [sp], #0x10
  10015d900  ldp     x29, x30, [sp], #0x10
  10015d904  b       _objc_release
  10015d908  b       loc_10015d90c
loc_10015d90c:
  10015d90c  mov     x22, x0
  10015d910  b       loc_10015d95c
  10015d914  b       loc_10015d938
  10015d918  b       loc_10015d938
  10015d91c  b       loc_10015d938
  10015d920  b       loc_10015d940
  10015d924  b       loc_10015d938
  10015d928  mov     x22, x0
  10015d92c  mov     x0, x21
  10015d930  bl      _objc_release
  10015d934  b       loc_10015d954
loc_10015d938:
  10015d938  mov     x22, x0
  10015d93c  b       loc_10015d94c
loc_10015d940:
  10015d940  mov     x22, x0
  10015d944  mov     x0, x21
  10015d948  bl      _objc_release
loc_10015d94c:
  10015d94c  mov     x0, x28
  10015d950  bl      _objc_release
loc_10015d954:
  10015d954  mov     x0, x23
loc_10015d958:
  10015d958  bl      _objc_release
loc_10015d95c:
  10015d95c  mov     x0, x20
  10015d960  bl      _objc_release
  10015d964  mov     x0, x19
  10015d968  bl      _objc_release
  10015d96c  mov     x0, x22
  10015d970  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer expandKey:value:]
; address 0x10015d974  size 668  kind objc
; ======================================================================
  10015d974  stp     x29, x30, [sp, #-0x10]!
  10015d978  mov     x29, sp
  10015d97c  stp     x20, x19, [sp, #-0x10]!
  10015d980  stp     x22, x21, [sp, #-0x10]!
  10015d984  stp     x24, x23, [sp, #-0x10]!
  10015d988  stp     x26, x25, [sp, #-0x10]!
  10015d98c  stp     x28, x27, [sp, #-0x10]!
  10015d990  sub     sp, sp, #0x20
  10015d994  mov     x19, x3
  10015d998  mov     x0, x2
  10015d99c  bl      _objc_retain
  10015d9a0  mov     x20, x0
  10015d9a4  mov     x0, x19
  10015d9a8  bl      _objc_retain
  10015d9ac  mov     x19, x0
  10015d9b0  adrp    x21, #0x10041d000
  10015d9b4  ldr     x0, [x21, #0xf90]                        ; class NSMutableDictionary
  10015d9b8  adrp    x8, #0x10041b000
  10015d9bc  nop
  10015d9c0  ldr     x1, [x8, #0x828]
  10015d9c4  mov     x2, #1
  10015d9c8  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:1]
  10015d9cc  mov     x29, x29
  10015d9d0  bl      _objc_retainAutoreleasedReturnValue
  10015d9d4  bl      _objc_retain
  10015d9d8  mov     x23, x0
  10015d9dc  adrp    x8, #0x100418000
  10015d9e0  nop
  10015d9e4  ldr     x1, [x8, #0x648]
  10015d9e8  mov     x0, x20
  10015d9ec  bl      _objc_msgSend                            ; [arg1 description]
  10015d9f0  stp     x20, x19, [sp, #0x10]
  10015d9f4  mov     x29, x29
  10015d9f8  bl      _objc_retainAutoreleasedReturnValue
  10015d9fc  mov     x19, x0
  10015da00  adrp    x8, #0x100419000
  10015da04  nop
  10015da08  ldr     x1, [x8, #0x188]
  10015da0c  adrp    x2, #0x1003be000
  10015da10  add     x2, x2, #0x9f0                           ; @"."
  10015da14  bl      _objc_msgSend                            ; [[arg1 description] componentsSeparatedByString:@"."]
  10015da18  mov     x29, x29
  10015da1c  bl      _objc_retainAutoreleasedReturnValue
  10015da20  mov     x22, x0
  10015da24  mov     x0, x19
  10015da28  bl      _objc_release
  10015da2c  mov     x27, #0
  10015da30  adrp    x8, #0x100416000
  10015da34  nop
  10015da38  ldr     x26, [x8, #0xe30]
  10015da3c  adrp    x8, #0x10041b000
  10015da40  nop
  10015da44  adrp    x9, #0x100416000
  10015da48  add     x9, x9, #0xc30                           ; &@selector(objectAtIndex:)
  10015da4c  ldr     x28, [x8, #0xf20]
  10015da50  ldr     x25, [x9]
  10015da54  adrp    x8, #0x100416000
  10015da58  add     x8, x8, #0xdc8                           ; &@selector(setObject:forKey:)
  10015da5c  ldr     x24, [x8]
  10015da60  str     x23, [sp, #8]
  10015da64  b       loc_10015da80
loc_10015da68:
  10015da68  mov     x0, x20
  10015da6c  bl      _objc_release
  10015da70  mov     x0, x23
  10015da74  bl      _objc_release
  10015da78  add     x27, x27, #1
  10015da7c  mov     x23, x19
loc_10015da80:
  10015da80  mov     x0, x22
  10015da84  mov     x1, x26
  10015da88  bl      _objc_msgSend                            ; [[[arg1 description] componentsSeparatedByString:@"."] count]
  10015da8c  sub     x8, x0, #1
  10015da90  cmp     x27, x8
  10015da94  b.hs    loc_10015daf4                            ; if (x27 >=u ([[[arg1 description] componentsSeparatedByString:@"."] count] - 1))
  10015da98  ldr     x0, [x21, #0xf90]                        ; class NSMutableDictionary
  10015da9c  mov     x1, x28
  10015daa0  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10015daa4  mov     x29, x29
  10015daa8  bl      _objc_retainAutoreleasedReturnValue
  10015daac  mov     x19, x0
  10015dab0  mov     x0, x22
  10015dab4  mov     x1, x25
  10015dab8  mov     x2, x27
  10015dabc  bl      _objc_msgSend                            ; [[[arg1 description] componentsSeparatedByString:@"."] objectAtIndex:x2]
  10015dac0  mov     x29, x29
  10015dac4  bl      _objc_retainAutoreleasedReturnValue
  10015dac8  mov     x20, x0
  10015dacc  mov     x0, x23
  10015dad0  mov     x1, x24
  10015dad4  mov     x2, x19
  10015dad8  mov     x3, x20
  10015dadc  bl      _objc_msgSend                            ; [x0 setObject:[NSMutableDictionary dictionary] forKey:[[[arg1 description] componentsSeparatedByString:@"."] objectAtIndex:x2]]
  10015dae0  b       loc_10015da68
  10015dae4  mov     x21, x0
  10015dae8  mov     x0, x20
  10015daec  bl      _objc_release
  10015daf0  b       loc_10015dbd8
loc_10015daf4:
  10015daf4  mov     x0, x22
  10015daf8  mov     x1, x26
  10015dafc  bl      _objc_msgSend                            ; [[[arg1 description] componentsSeparatedByString:@"."] count]
  10015db00  sub     x2, x0, #1
  10015db04  mov     x0, x22
  10015db08  mov     x1, x25
  10015db0c  bl      _objc_msgSend                            ; [[[arg1 description] componentsSeparatedByString:@"."] objectAtIndex:([[[arg1 description] componentsSeparatedByString:@"."] count] - 1)]
  10015db10  mov     x29, x29
  10015db14  bl      _objc_retainAutoreleasedReturnValue
  10015db18  mov     x19, x0
  10015db1c  mov     x0, x23
  10015db20  mov     x1, x24
  10015db24  ldr     x20, [sp, #0x18]
  10015db28  mov     x2, x20
  10015db2c  mov     x3, x19
  10015db30  bl      _objc_msgSend                            ; [x0 setObject:arg2 forKey:[[[arg1 description] componentsSeparatedByString:@"."] objectAtIndex:([[[arg1 description] componentsSeparatedByString:@"."] count] - 1)]]
  10015db34  mov     x0, x19
  10015db38  bl      _objc_release
  10015db3c  ldr     x0, [sp, #8]
  10015db40  bl      _objc_retainAutoreleaseReturnValue
  10015db44  mov     x19, x0
  10015db48  mov     x0, x22
  10015db4c  bl      _objc_release
  10015db50  mov     x0, x23
  10015db54  bl      _objc_release
  10015db58  mov     x0, x19
  10015db5c  bl      _objc_release
  10015db60  mov     x0, x20
  10015db64  bl      _objc_release
  10015db68  ldr     x0, [sp, #0x10]
  10015db6c  bl      _objc_release
  10015db70  mov     x0, x19
  10015db74  sub     sp, x29, #0x50
  10015db78  ldp     x28, x27, [sp], #0x10
  10015db7c  ldp     x26, x25, [sp], #0x10
  10015db80  ldp     x24, x23, [sp], #0x10
  10015db84  ldp     x22, x21, [sp], #0x10
  10015db88  ldp     x20, x19, [sp], #0x10
  10015db8c  ldp     x29, x30, [sp], #0x10
  10015db90  ret
  10015db94  stp     x20, x19, [sp, #0x10]
  10015db98  mov     x21, x0
  10015db9c  b       loc_10015dbf8
  10015dba0  stp     x20, x19, [sp, #0x10]
  10015dba4  mov     x21, x0
  10015dba8  b       loc_10015dbb8
  10015dbac  mov     x21, x0
  10015dbb0  mov     x0, x19
  10015dbb4  bl      _objc_release
loc_10015dbb8:
  10015dbb8  mov     x8, x23
  10015dbbc  str     x8, [sp, #8]
  10015dbc0  b       loc_10015dbe8
  10015dbc4  b       loc_10015dbcc
  10015dbc8  b       loc_10015dbd4
loc_10015dbcc:
  10015dbcc  mov     x21, x0
  10015dbd0  b       loc_10015dbe0
loc_10015dbd4:
  10015dbd4  mov     x21, x0
loc_10015dbd8:
  10015dbd8  mov     x0, x19
  10015dbdc  bl      _objc_release
loc_10015dbe0:
  10015dbe0  mov     x0, x22
  10015dbe4  bl      _objc_release
loc_10015dbe8:
  10015dbe8  mov     x0, x23
  10015dbec  bl      _objc_release
  10015dbf0  ldr     x0, [sp, #8]
  10015dbf4  bl      _objc_release
loc_10015dbf8:
  10015dbf8  ldr     x0, [sp, #0x18]
  10015dbfc  bl      _objc_release
  10015dc00  ldr     x0, [sp, #0x10]
  10015dc04  bl      _objc_release
  10015dc08  mov     x0, x21
  10015dc0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataLayer dataLayer]
; address 0x10015dc10  size 16  kind objc
; ======================================================================
  10015dc10  adrp    x8, #0x100420000
  10015dc14  ldrsw   x8, [x8, #0xb24]                         ; ivar offset TAGDataLayer._dataLayer (+0x10)
  10015dc18  ldr     x0, [x0, x8]                             ; x0 = self->_dataLayer
  10015dc1c  ret

; ======================================================================
; -[TAGDataLayer listeners]
; address 0x10015dc20  size 16  kind objc
; ======================================================================
  10015dc20  adrp    x8, #0x100420000
  10015dc24  ldrsw   x2, [x8, #0xb00]                         ; ivar offset TAGDataLayer._listeners (+0x18)
  10015dc28  mov     w3, #1
  10015dc2c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer setListeners:]
; address 0x10015dc30  size 12  kind objc
; ======================================================================
  10015dc30  adrp    x8, #0x100420000
  10015dc34  ldrsw   x3, [x8, #0xb00]                         ; ivar offset TAGDataLayer._listeners (+0x18)
  10015dc38  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGDataLayer model]
; address 0x10015dc3c  size 16  kind objc
; ======================================================================
  10015dc3c  adrp    x8, #0x100420000
  10015dc40  ldrsw   x2, [x8, #0xb04]                         ; ivar offset TAGDataLayer._model (+0x20)
  10015dc44  mov     w3, #1
  10015dc48  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer setModel:]
; address 0x10015dc4c  size 12  kind objc
; ======================================================================
  10015dc4c  adrp    x8, #0x100420000
  10015dc50  ldrsw   x3, [x8, #0xb04]                         ; ivar offset TAGDataLayer._model (+0x20)
  10015dc54  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGDataLayer pushLock]
; address 0x10015dc58  size 16  kind objc
; ======================================================================
  10015dc58  adrp    x8, #0x100420000
  10015dc5c  ldrsw   x2, [x8, #0xb0c]                         ; ivar offset TAGDataLayer._pushLock (+0x28)
  10015dc60  mov     w3, #1
  10015dc64  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer setPushLock:]
; address 0x10015dc68  size 12  kind objc
; ======================================================================
  10015dc68  adrp    x8, #0x100420000
  10015dc6c  ldrsw   x3, [x8, #0xb0c]                         ; ivar offset TAGDataLayer._pushLock (+0x28)
  10015dc70  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGDataLayer updateQueue]
; address 0x10015dc74  size 16  kind objc
; ======================================================================
  10015dc74  adrp    x8, #0x100420000
  10015dc78  ldrsw   x2, [x8, #0xb08]                         ; ivar offset TAGDataLayer._updateQueue (+0x30)
  10015dc7c  mov     w3, #1
  10015dc80  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer setUpdateQueue:]
; address 0x10015dc84  size 12  kind objc
; ======================================================================
  10015dc84  adrp    x8, #0x100420000
  10015dc88  ldrsw   x3, [x8, #0xb08]                         ; ivar offset TAGDataLayer._updateQueue (+0x30)
  10015dc8c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGDataLayer pushDepth]
; address 0x10015dc90  size 16  kind objc
; ======================================================================
  10015dc90  adrp    x8, #0x100420000
  10015dc94  ldrsw   x8, [x8, #0xb28]                         ; ivar offset TAGDataLayer._pushDepth (+0x38)
  10015dc98  ldr     x0, [x0, x8]                             ; x0 = self->_pushDepth
  10015dc9c  ret

; ======================================================================
; -[TAGDataLayer setPushDepth:]
; address 0x10015dca0  size 16  kind objc
; ======================================================================
  10015dca0  adrp    x8, #0x100420000
  10015dca4  ldrsw   x8, [x8, #0xb28]                         ; ivar offset TAGDataLayer._pushDepth (+0x38)
  10015dca8  str     x2, [x0, x8]                             ; self->_pushDepth = arg1
  10015dcac  ret

; ======================================================================
; -[TAGDataLayer persistentStore]
; address 0x10015dcb0  size 16  kind objc
; ======================================================================
  10015dcb0  adrp    x8, #0x100420000
  10015dcb4  ldrsw   x2, [x8, #0xb10]                         ; ivar offset TAGDataLayer._persistentStore (+0x40)
  10015dcb8  mov     w3, #1
  10015dcbc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer persistentStoreLoadingCondition]
; address 0x10015dcc0  size 16  kind objc
; ======================================================================
  10015dcc0  adrp    x8, #0x100420000
  10015dcc4  ldrsw   x2, [x8, #0xb14]                         ; ivar offset TAGDataLayer._persistentStoreLoadingCondition (+0x48)
  10015dcc8  mov     w3, #1
  10015dccc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer persistentStoreLoaded]
; address 0x10015dcd0  size 20  kind objc
; ======================================================================
  10015dcd0  adrp    x8, #0x100420000
  10015dcd4  ldrsw   x8, [x8, #0xb18]                         ; ivar offset TAGDataLayer._persistentStoreLoaded (+0x8)
  10015dcd8  ldrb    w8, [x0, x8]                             ; w8 = self->_persistentStoreLoaded
  10015dcdc  and     w0, w8, #1
  10015dce0  ret

; ======================================================================
; -[TAGDataLayer setPersistentStoreLoaded:]
; address 0x10015dce4  size 16  kind objc
; ======================================================================
  10015dce4  adrp    x8, #0x100420000
  10015dce8  ldrsw   x8, [x8, #0xb18]                         ; ivar offset TAGDataLayer._persistentStoreLoaded (+0x8)
  10015dcec  strb    w2, [x0, x8]                             ; self->_persistentStoreLoaded = arg1
  10015dcf0  ret

; ======================================================================
; -[TAGDataLayer lifetimeKeyComponents]
; address 0x10015dcf4  size 16  kind objc
; ======================================================================
  10015dcf4  adrp    x8, #0x100420000
  10015dcf8  ldrsw   x2, [x8, #0xb1c]                         ; ivar offset TAGDataLayer._lifetimeKeyComponents (+0x50)
  10015dcfc  mov     w3, #1
  10015dd00  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer lifetimePattern]
; address 0x10015dd04  size 16  kind objc
; ======================================================================
  10015dd04  adrp    x8, #0x100420000
  10015dd08  ldrsw   x2, [x8, #0xb20]                         ; ivar offset TAGDataLayer._lifetimePattern (+0x58)
  10015dd0c  mov     w3, #1
  10015dd10  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGDataLayer .cxx_destruct]
; address 0x10015dd14  size 204  kind objc
; ======================================================================
  10015dd14  stp     x29, x30, [sp, #-0x10]!
  10015dd18  mov     x29, sp
  10015dd1c  stp     x20, x19, [sp, #-0x10]!
  10015dd20  mov     x19, x0
  10015dd24  adrp    x8, #0x100420000
  10015dd28  ldrsw   x8, [x8, #0xb20]                         ; ivar offset TAGDataLayer._lifetimePattern (+0x58)
  10015dd2c  add     x0, x19, x8
  10015dd30  mov     x1, #0
  10015dd34  bl      _objc_storeStrong
  10015dd38  adrp    x8, #0x100420000
  10015dd3c  ldrsw   x8, [x8, #0xb1c]                         ; ivar offset TAGDataLayer._lifetimeKeyComponents (+0x50)
  10015dd40  add     x0, x19, x8
  10015dd44  mov     x1, #0
  10015dd48  bl      _objc_storeStrong
  10015dd4c  adrp    x8, #0x100420000
  10015dd50  ldrsw   x8, [x8, #0xb14]                         ; ivar offset TAGDataLayer._persistentStoreLoadingCondition (+0x48)
  10015dd54  add     x0, x19, x8
  10015dd58  mov     x1, #0
  10015dd5c  bl      _objc_storeStrong
  10015dd60  adrp    x8, #0x100420000
  10015dd64  ldrsw   x8, [x8, #0xb10]                         ; ivar offset TAGDataLayer._persistentStore (+0x40)
  10015dd68  add     x0, x19, x8
  10015dd6c  mov     x1, #0
  10015dd70  bl      _objc_storeStrong
  10015dd74  adrp    x8, #0x100420000
  10015dd78  ldrsw   x8, [x8, #0xb08]                         ; ivar offset TAGDataLayer._updateQueue (+0x30)
  10015dd7c  add     x0, x19, x8
  10015dd80  mov     x1, #0
  10015dd84  bl      _objc_storeStrong
  10015dd88  adrp    x8, #0x100420000
  10015dd8c  ldrsw   x8, [x8, #0xb0c]                         ; ivar offset TAGDataLayer._pushLock (+0x28)
  10015dd90  add     x0, x19, x8
  10015dd94  mov     x1, #0
  10015dd98  bl      _objc_storeStrong
  10015dd9c  adrp    x8, #0x100420000
  10015dda0  ldrsw   x8, [x8, #0xb04]                         ; ivar offset TAGDataLayer._model (+0x20)
  10015dda4  add     x0, x19, x8
  10015dda8  mov     x1, #0
  10015ddac  bl      _objc_storeStrong
  10015ddb0  adrp    x8, #0x100420000
  10015ddb4  ldrsw   x8, [x8, #0xb00]                         ; ivar offset TAGDataLayer._listeners (+0x18)
  10015ddb8  add     x0, x19, x8
  10015ddbc  mov     x1, #0
  10015ddc0  bl      _objc_storeStrong
  10015ddc4  mov     x1, #0
  10015ddc8  adrp    x8, #0x100420000
  10015ddcc  ldrsw   x8, [x8, #0xb24]                         ; ivar offset TAGDataLayer._dataLayer (+0x10)
  10015ddd0  add     x0, x19, x8
  10015ddd4  ldp     x20, x19, [sp], #0x10
  10015ddd8  ldp     x29, x30, [sp], #0x10
  10015dddc  b       _objc_storeStrong
