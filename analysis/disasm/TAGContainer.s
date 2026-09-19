// unit TAGContainer — 66 functions
//   0x10014e9e0     544  -[TAGContainer initWithId:tagManager:resourceStorage:]
//   0x10014ec00     232  -[TAGContainer initWithId:tagManager:]
//   0x10014ece8      12  +[TAGContainer refreshPeriodOnSuccess]
//   0x10014ecf4      12  +[TAGContainer refreshPeriodOnFailure]
//   0x10014ed00      12  +[TAGContainer minimumRefreshPeriod]
//   0x10014ed0c      12  +[TAGContainer minimumRefreshPeriodInBurstMode]
//   0x10014ed18       8  +[TAGContainer maximumTokenCount]
//   0x10014ed20     796  -[TAGContainer booleanForKey:]
//   0x10014f03c     804  -[TAGContainer doubleForKey:]
//   0x10014f360     800  -[TAGContainer int64ForKey:]
//   0x10014f680     668  -[TAGContainer stringForKey:]
//   0x10014f91c     580  -[TAGContainer refresh]
//   0x10014fb60     736  -[TAGContainer close]
//   0x10014fe40      40  -[TAGContainer isDefault]
//   0x10014fe68     240  -[TAGContainer registerFunctionCallTagHandler:forTag:]
//   0x10014ff58     240  -[TAGContainer registerFunctionCallMacroHandler:forMacro:]
//   0x100150048     216  -[TAGContainer functionCallTagHandlerForTag:]
//   0x100150120     216  -[TAGContainer functionCallMacroHandlerForMacro:]
//   0x1001501f8     148  -[TAGContainer evaluateTags:]
//   0x10015028c     232  -[TAGContainer loadWithCallback:]
//   0x100150374    1280  -[TAGContainer loadWithCallback:resourceLoaderScheduler:]
//   0x100150874     320  -[TAGContainer loadAfterDelay:]
//   0x1001509b4     172  -[TAGContainer setCtfeUrlPathAndQuery:]
//   0x100150a60     548  -[TAGContainer saveResourceToDisk:]
//   0x100150c84     452  -[TAGContainer setupEvaluatorsWithResource:]
//   0x100150e48     148  -[TAGContainer setSupplementals:]
//   0x100150edc     504  -[TAGContainer setupEvaluatorsWithExpandedResource:]
//   0x1001510d4     128  -[TAGContainer currentTimeInMilliseconds]
//   0x100151154     664  -[TAGContainer createInitialContainer]
//   0x1001513ec      96  -[TAGContainer ctfeServerAddress]
//   0x10015144c     228  -[TAGContainer setCtfeServerAddress:]
//   0x100151530     108  -[TAGContainer isDefaultContainerRefreshMode]
//   0x10015159c     320  -[TAGContainer useAvailableTokenWithCurrentTime:]
//   0x1001516dc      16  -[TAGContainer containerId]
//   0x1001516ec      20  -[TAGContainer lastRefreshTime]
//   0x100151700      20  -[TAGContainer setLastRefreshTime:]
//   0x100151714      16  -[TAGContainer resourceStorage]
//   0x100151724      12  -[TAGContainer setResourceStorage:]
//   0x100151730      16  -[TAGContainer tagManager]
//   0x100151740      12  -[TAGContainer setTagManager:]
//   0x10015174c      16  -[TAGContainer ctfeUrlPathAndQuery]
//   0x10015175c      16  -[TAGContainer numTokens]
//   0x10015176c      16  -[TAGContainer setNumTokens:]
//   0x10015177c      16  -[TAGContainer lastLoadedSupplementedResource]
//   0x10015178c      12  -[TAGContainer setLastLoadedSupplementedResource:]
//   0x100151798      16  -[TAGContainer networkLoadCallback]
//   0x1001517a8      12  -[TAGContainer setNetworkLoadCallback:]
//   0x1001517b4      16  -[TAGContainer diskLoadCallback]
//   0x1001517c4      12  -[TAGContainer setDiskLoadCallback:]
//   0x1001517d0      16  -[TAGContainer networkLoadScheduler]
//   0x1001517e0      12  -[TAGContainer setNetworkLoadScheduler:]
//   0x1001517ec      16  -[TAGContainer runtime]
//   0x1001517fc      12  -[TAGContainer setRuntime:]
//   0x100151808      16  -[TAGContainer functionCallTagHandlers]
//   0x100151818      12  -[TAGContainer setFunctionCallTagHandlers:]
//   0x100151824      16  -[TAGContainer functionCallMacroHandlers]
//   0x100151834      12  -[TAGContainer setFunctionCallMacroHandlers:]
//   0x100151840      20  -[TAGContainer diskLoadFinished]
//   0x100151854      16  -[TAGContainer setDiskLoadFinished:]
//   0x100151864      16  -[TAGContainer resourceVersion]
//   0x100151874      12  -[TAGContainer setResourceVersion:]
//   0x100151880      16  -[TAGContainer resourceFormatVersion]
//   0x100151890      16  -[TAGContainer setResourceFormatVersion:]
//   0x1001518a0      20  -[TAGContainer lastRefreshMethodCalledTime]
//   0x1001518b4      20  -[TAGContainer setLastRefreshMethodCalledTime:]
//   0x1001518c8     284  -[TAGContainer .cxx_destruct]

; ======================================================================
; -[TAGContainer initWithId:tagManager:resourceStorage:]
; address 0x10014e9e0  size 544  kind objc
; ======================================================================
  10014e9e0  stp     x29, x30, [sp, #-0x10]!
  10014e9e4  mov     x29, sp
  10014e9e8  stp     x20, x19, [sp, #-0x10]!
  10014e9ec  stp     x22, x21, [sp, #-0x10]!
  10014e9f0  stp     x24, x23, [sp, #-0x10]!
  10014e9f4  stp     x26, x25, [sp, #-0x10]!
  10014e9f8  sub     sp, sp, #0x10
  10014e9fc  mov     x23, x4
  10014ea00  mov     x20, x3
  10014ea04  mov     x22, x0
  10014ea08  mov     x0, x2
  10014ea0c  bl      _objc_retain
  10014ea10  mov     x19, x0
  10014ea14  mov     x0, x20
  10014ea18  bl      _objc_retain
  10014ea1c  mov     x20, x0
  10014ea20  mov     x0, x23
  10014ea24  bl      _objc_retain
  10014ea28  mov     x21, x0
  10014ea2c  str     x22, [sp]
  10014ea30  adrp    x8, #0x10041f000
  10014ea34  ldr     x8, [x8, #0x218]
  10014ea38  str     x8, [sp, #8]
  10014ea3c  adrp    x8, #0x100416000
  10014ea40  nop
  10014ea44  ldr     x24, [x8, #0xab8]
  10014ea48  mov     x25, #0
  10014ea4c  mov     x0, sp
  10014ea50  mov     x1, x24
  10014ea54  bl      _objc_msgSendSuper2                      ; [super init]
  10014ea58  mov     x22, x0
  10014ea5c  cbz     x22, loc_10014eb9c                       ; if (self == 0)
  10014ea60  mov     x25, x22
  10014ea64  adrp    x8, #0x100419000
  10014ea68  nop
  10014ea6c  ldr     x1, [x8, #0xc08]
  10014ea70  mov     x0, x19
  10014ea74  bl      _objc_msgSend                            ; [arg1 copy]
  10014ea78  mov     x25, x22
  10014ea7c  adrp    x8, #0x100420000
  10014ea80  ldrsw   x9, [x8, #0xa14]                         ; ivar offset TAGContainer._containerId (+0x18)
  10014ea84  ldr     x8, [x22, x9]                            ; x8 = self->_containerId
  10014ea88  str     x0, [x22, x9]                            ; self->_containerId = [arg1 copy]
  10014ea8c  mov     x0, x8
  10014ea90  bl      _objc_release
  10014ea94  adrp    x8, #0x100420000
  10014ea98  ldrsw   x26, [x8, #0xa18]                        ; ivar offset TAGContainer._tagManager (+0x30)
  10014ea9c  mov     x0, x20
  10014eaa0  bl      _objc_retain
  10014eaa4  ldr     x8, [x22, x26]                           ; x8 = self->_tagManager
  10014eaa8  str     x0, [x22, x26]                           ; self->_tagManager = arg2
  10014eaac  mov     x0, x8
  10014eab0  bl      _objc_release
  10014eab4  adrp    x8, #0x10041e000
  10014eab8  ldr     x0, [x8, #0x848]                         ; class TAGPSupplementedResource
  10014eabc  adrp    x8, #0x100416000
  10014eac0  nop
  10014eac4  ldr     x1, [x8, #0xac8]
  10014eac8  bl      _objc_msgSend                            ; [TAGPSupplementedResource alloc]
  10014eacc  mov     x25, x22
  10014ead0  mov     x1, x24
  10014ead4  bl      _objc_msgSend                            ; [[TAGPSupplementedResource alloc] init]
  10014ead8  mov     x25, x22
  10014eadc  adrp    x8, #0x100420000
  10014eae0  ldrsw   x9, [x8, #0xa1c]                         ; ivar offset TAGContainer._lastLoadedSupplementedResource (+0x48)
  10014eae4  ldr     x8, [x22, x9]                            ; x8 = self->_lastLoadedSupplementedResource
  10014eae8  str     x0, [x22, x9]                            ; self->_lastLoadedSupplementedResource = [[TAGPSupplementedResource alloc] init]
  10014eaec  mov     x0, x8
  10014eaf0  bl      _objc_release
  10014eaf4  adrp    x8, #0x100420000
  10014eaf8  ldrsw   x8, [x8, #0xa20]                         ; ivar offset TAGContainer._resourceStorage (+0x28)
  10014eafc  add     x0, x22, x8
  10014eb00  mov     x1, x23
  10014eb04  bl      _objc_storeStrong
  10014eb08  adrp    x8, #0x100420000
  10014eb0c  ldrsw   x8, [x8, #0xa24]                         ; ivar offset TAGContainer._numTokens (+0x40)
  10014eb10  mov     x9, #0x1e
  10014eb14  str     x9, [x22, x8]                            ; self->_numTokens = 30
  10014eb18  adrp    x24, #0x10041d000
  10014eb1c  ldr     x0, [x24, #0xf90]                        ; class NSMutableDictionary
  10014eb20  adrp    x8, #0x10041b000
  10014eb24  nop
  10014eb28  ldr     x23, [x8, #0xf20]
  10014eb2c  mov     x1, x23
  10014eb30  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10014eb34  mov     x25, x22
  10014eb38  mov     x29, x29
  10014eb3c  bl      _objc_retainAutoreleasedReturnValue
  10014eb40  adrp    x8, #0x100420000
  10014eb44  ldrsw   x9, [x8, #0xa28]                         ; ivar offset TAGContainer._functionCallMacroHandlers (+0x78)
  10014eb48  ldr     x8, [x22, x9]                            ; x8 = self->_functionCallMacroHandlers
  10014eb4c  str     x0, [x22, x9]                            ; self->_functionCallMacroHandlers = [NSMutableDictionary dictionary]
  10014eb50  mov     x0, x8
  10014eb54  bl      _objc_release
  10014eb58  ldr     x0, [x24, #0xf90]                        ; class NSMutableDictionary
  10014eb5c  mov     x1, x23
  10014eb60  bl      _objc_msgSend                            ; [NSMutableDictionary dictionary]
  10014eb64  mov     x25, x22
  10014eb68  mov     x29, x29
  10014eb6c  bl      _objc_retainAutoreleasedReturnValue
  10014eb70  adrp    x8, #0x100420000
  10014eb74  ldrsw   x9, [x8, #0xa2c]                         ; ivar offset TAGContainer._functionCallTagHandlers (+0x70)
  10014eb78  ldr     x8, [x22, x9]                            ; x8 = self->_functionCallTagHandlers
  10014eb7c  str     x0, [x22, x9]                            ; self->_functionCallTagHandlers = [NSMutableDictionary dictionary]
  10014eb80  mov     x0, x8
  10014eb84  bl      _objc_release
  10014eb88  adrp    x8, #0x10041c000
  10014eb8c  nop
  10014eb90  ldr     x1, [x8, #0xef8]
  10014eb94  mov     x0, x22
  10014eb98  bl      _objc_msgSend                            ; [self createInitialContainer]
loc_10014eb9c:
  10014eb9c  mov     x0, x21
  10014eba0  bl      _objc_release
  10014eba4  mov     x0, x20
  10014eba8  bl      _objc_release
  10014ebac  mov     x0, x19
  10014ebb0  bl      _objc_release
  10014ebb4  mov     x0, x22
  10014ebb8  sub     sp, x29, #0x40
  10014ebbc  ldp     x26, x25, [sp], #0x10
  10014ebc0  ldp     x24, x23, [sp], #0x10
  10014ebc4  ldp     x22, x21, [sp], #0x10
  10014ebc8  ldp     x20, x19, [sp], #0x10
  10014ebcc  ldp     x29, x30, [sp], #0x10
  10014ebd0  ret
  10014ebd4  mov     x22, x0
  10014ebd8  mov     x0, x21
  10014ebdc  bl      _objc_release
  10014ebe0  mov     x0, x20
  10014ebe4  bl      _objc_release
  10014ebe8  mov     x0, x19
  10014ebec  bl      _objc_release
  10014ebf0  mov     x0, x25
  10014ebf4  bl      _objc_release
  10014ebf8  mov     x0, x22
  10014ebfc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer initWithId:tagManager:]
; address 0x10014ec00  size 232  kind objc
; ======================================================================
  10014ec00  stp     x29, x30, [sp, #-0x10]!
  10014ec04  mov     x29, sp
  10014ec08  stp     x20, x19, [sp, #-0x10]!
  10014ec0c  stp     x22, x21, [sp, #-0x10]!
  10014ec10  stp     x24, x23, [sp, #-0x10]!
  10014ec14  mov     x20, x3
  10014ec18  mov     x21, x0
  10014ec1c  mov     x0, x2
  10014ec20  bl      _objc_retain
  10014ec24  mov     x19, x0
  10014ec28  mov     x0, x20
  10014ec2c  bl      _objc_retain
  10014ec30  mov     x20, x0
  10014ec34  adrp    x8, #0x10041e000
  10014ec38  ldr     x0, [x8, #0x868]                         ; class TAGResourceStorageImpl
  10014ec3c  adrp    x8, #0x100416000
  10014ec40  nop
  10014ec44  ldr     x1, [x8, #0xac8]
  10014ec48  bl      _objc_msgSend                            ; [TAGResourceStorageImpl alloc]
  10014ec4c  adrp    x8, #0x10041c000
  10014ec50  nop
  10014ec54  ldr     x1, [x8, #0xf00]
  10014ec58  mov     x2, x19
  10014ec5c  bl      _objc_msgSend                            ; [[TAGResourceStorageImpl alloc] initWithContainerId:arg1]
  10014ec60  mov     x22, x0
  10014ec64  adrp    x8, #0x10041c000
  10014ec68  nop
  10014ec6c  ldr     x1, [x8, #0xf08]
  10014ec70  mov     x0, x21
  10014ec74  mov     x2, x19
  10014ec78  mov     x3, x20
  10014ec7c  mov     x4, x22
  10014ec80  bl      _objc_msgSend                            ; [self initWithId:arg1 tagManager:arg2 resourceStorage:[[TAGResourceStorageImpl alloc] initWithContainerId:arg1]]
  10014ec84  mov     x21, x0
  10014ec88  mov     x0, x22
  10014ec8c  bl      _objc_release
  10014ec90  mov     x0, x20
  10014ec94  bl      _objc_release
  10014ec98  mov     x0, x19
  10014ec9c  bl      _objc_release
  10014eca0  mov     x0, x21
  10014eca4  ldp     x24, x23, [sp], #0x10
  10014eca8  ldp     x22, x21, [sp], #0x10
  10014ecac  ldp     x20, x19, [sp], #0x10
  10014ecb0  ldp     x29, x30, [sp], #0x10
  10014ecb4  ret
  10014ecb8  mov     x23, x0
  10014ecbc  mov     x0, x21
  10014ecc0  b       loc_10014eccc
  10014ecc4  mov     x23, x0
  10014ecc8  mov     x0, x22
loc_10014eccc:
  10014eccc  bl      _objc_release
  10014ecd0  mov     x0, x20
  10014ecd4  bl      _objc_release
  10014ecd8  mov     x0, x19
  10014ecdc  bl      _objc_release
  10014ece0  mov     x0, x23
  10014ece4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGContainer refreshPeriodOnSuccess]
; address 0x10014ece8  size 12  kind objc
; ======================================================================
  10014ece8  adrp    x8, #0x1002fa000
  10014ecec  ldr     d0, [x8, #0xb38]                         ; d0 = 43200000.0
  10014ecf0  ret

; ======================================================================
; +[TAGContainer refreshPeriodOnFailure]
; address 0x10014ecf4  size 12  kind objc
; ======================================================================
  10014ecf4  adrp    x8, #0x1002fa000
  10014ecf8  ldr     d0, [x8, #0xb40]                         ; d0 = 3600000.0
  10014ecfc  ret

; ======================================================================
; +[TAGContainer minimumRefreshPeriod]
; address 0x10014ed00  size 12  kind objc
; ======================================================================
  10014ed00  adrp    x8, #0x1002fa000
  10014ed04  ldr     d0, [x8, #0xb48]                         ; d0 = 900000.0
  10014ed08  ret

; ======================================================================
; +[TAGContainer minimumRefreshPeriodInBurstMode]
; address 0x10014ed0c  size 12  kind objc
; ======================================================================
  10014ed0c  adrp    x8, #0x1002fa000
  10014ed10  ldr     d0, [x8, #0xb50]                         ; d0 = 5000.0
  10014ed14  ret

; ======================================================================
; +[TAGContainer maximumTokenCount]
; address 0x10014ed18  size 8  kind objc
; ======================================================================
  10014ed18  mov     w0, #0x1e
  10014ed1c  ret

; ======================================================================
; -[TAGContainer booleanForKey:]
; address 0x10014ed20  size 796  kind objc
; ======================================================================
  10014ed20  stp     x29, x30, [sp, #-0x10]!
  10014ed24  mov     x29, sp
  10014ed28  stp     x20, x19, [sp, #-0x10]!
  10014ed2c  stp     x22, x21, [sp, #-0x10]!
  10014ed30  stp     x24, x23, [sp, #-0x10]!
  10014ed34  stp     x26, x25, [sp, #-0x10]!
  10014ed38  sub     sp, sp, #0x20
  10014ed3c  mov     x20, x0
  10014ed40  mov     x0, x2
  10014ed44  bl      _objc_retain
  10014ed48  mov     x19, x0
  10014ed4c  adrp    x8, #0x10041d000
  10014ed50  nop
  10014ed54  ldr     x1, [x8, #0xc60]
  10014ed58  mov     x0, x20
  10014ed5c  bl      _objc_msgSend                            ; [self runtime]
  10014ed60  mov     x29, x29
  10014ed64  bl      _objc_retainAutoreleasedReturnValue
  10014ed68  mov     x20, x0
  10014ed6c  cbz     x20, loc_10014ee04                       ; if ([self runtime] == 0)
  10014ed70  adrp    x8, #0x10041e000
  10014ed74  ldr     x23, [x8, #0xb58]                        ; class TAGTypes
  10014ed78  adrp    x8, #0x10041c000
  10014ed7c  nop
  10014ed80  ldr     x1, [x8, #0xf18]
  10014ed84  mov     x0, x20
  10014ed88  mov     x2, x19
  10014ed8c  bl      _objc_msgSend                            ; [[self runtime] evaluateMacroReference:arg1]
  10014ed90  mov     x29, x29
  10014ed94  bl      _objc_retainAutoreleasedReturnValue
  10014ed98  mov     x21, x0
  10014ed9c  adrp    x8, #0x100418000
  10014eda0  nop
  10014eda4  ldr     x1, [x8, #0x800]
  10014eda8  bl      _objc_msgSend                            ; [[[self runtime] evaluateMacroReference:arg1] value]
  10014edac  mov     x29, x29
  10014edb0  bl      _objc_retainAutoreleasedReturnValue
  10014edb4  mov     x22, x0
  10014edb8  adrp    x8, #0x10041d000
  10014edbc  nop
  10014edc0  ldr     x1, [x8, #0xc38]
  10014edc4  mov     x0, x23
  10014edc8  mov     x2, x22
  10014edcc  bl      _objc_msgSend                            ; [TAGTypes valueToBoolean:[[[self runtime] evaluateMacroReference:arg1] value]]
  10014edd0  mov     x29, x29
  10014edd4  bl      _objc_retainAutoreleasedReturnValue
  10014edd8  mov     x24, x0
  10014eddc  adrp    x8, #0x100417000
  10014ede0  nop
  10014ede4  ldr     x1, [x8, #0xd8]
  10014ede8  bl      _objc_msgSend                            ; [[TAGTypes valueToBoolean:[[[self runtime] evaluateMacroReference:arg1] value]] boolValue]
  10014edec  mov     x23, x0
  10014edf0  mov     x0, x24
  10014edf4  bl      _objc_release
  10014edf8  mov     x0, x22
  10014edfc  bl      _objc_release
  10014ee00  b       loc_10014ee5c
loc_10014ee04:
  10014ee04  adrp    x8, #0x10041e000
  10014ee08  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014ee0c  adrp    x8, #0x10041b000
  10014ee10  nop
  10014ee14  ldr     x1, [x8, #0xdd0]
  10014ee18  adrp    x2, #0x1003c7000
  10014ee1c  add     x2, x2, #0x730                           ; @"booleanForKey called for closed container"
  10014ee20  bl      _objc_msgSend                            ; [TAGLog error:@"booleanForKey called for closed container"]
  10014ee24  adrp    x8, #0x10041e000
  10014ee28  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10014ee2c  adrp    x8, #0x10041c000
  10014ee30  nop
  10014ee34  ldr     x1, [x8, #0xf10]
  10014ee38  bl      _objc_msgSend                            ; [TAGTypes defaultBoolean]
  10014ee3c  mov     x29, x29
  10014ee40  bl      _objc_retainAutoreleasedReturnValue
  10014ee44  mov     x21, x0
  10014ee48  adrp    x8, #0x100417000
  10014ee4c  nop
  10014ee50  ldr     x1, [x8, #0xd8]
  10014ee54  bl      _objc_msgSend                            ; [[TAGTypes defaultBoolean] boolValue]
  10014ee58  mov     x23, x0
loc_10014ee5c:
  10014ee5c  mov     x0, x21
  10014ee60  bl      _objc_release
  10014ee64  mov     x0, x20
  10014ee68  bl      _objc_release
loc_10014ee6c:
  10014ee6c  mov     x0, x19
  10014ee70  bl      _objc_release
  10014ee74  mov     x0, x23
  10014ee78  sub     sp, x29, #0x40
  10014ee7c  ldp     x26, x25, [sp], #0x10
  10014ee80  ldp     x24, x23, [sp], #0x10
  10014ee84  ldp     x22, x21, [sp], #0x10
  10014ee88  ldp     x20, x19, [sp], #0x10
  10014ee8c  ldp     x29, x30, [sp], #0x10
  10014ee90  ret
  10014ee94  mov     x25, x1
  10014ee98  mov     x23, x0
  10014ee9c  b       loc_10014eef0
  10014eea0  b       loc_10014eed8
  10014eea4  mov     x25, x1
  10014eea8  mov     x23, x0
  10014eeac  b       loc_10014eec0
  10014eeb0  mov     x25, x1
  10014eeb4  mov     x23, x0
  10014eeb8  mov     x0, x24
  10014eebc  bl      _objc_release
loc_10014eec0:
  10014eec0  mov     x0, x22
  10014eec4  bl      _objc_release
  10014eec8  b       loc_10014eee0
  10014eecc  mov     x25, x1
  10014eed0  mov     x23, x0
  10014eed4  b       loc_10014eee8
loc_10014eed8:
  10014eed8  mov     x25, x1
  10014eedc  mov     x23, x0
loc_10014eee0:
  10014eee0  mov     x0, x21
  10014eee4  bl      _objc_release
loc_10014eee8:
  10014eee8  mov     x0, x20
  10014eeec  bl      _objc_release
loc_10014eef0:
  10014eef0  cmp     w25, #1
  10014eef4  b.ne    loc_10014f02c                            ; if (w25 != 1)
  10014eef8  mov     x0, x23
  10014eefc  bl      _objc_begin_catch                        ; objc_begin_catch()
  10014ef00  adrp    x8, #0x10041d000
  10014ef04  ldr     x20, [x8, #0xf78]                        ; class NSString
  10014ef08  adrp    x8, #0x10041c000
  10014ef0c  nop
  10014ef10  ldr     x8, [x8, #0xf20]
  10014ef14  mov     x1, x8
  10014ef18  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10014ef1c  mov     x29, x29
  10014ef20  bl      _objc_retainAutoreleasedReturnValue
  10014ef24  mov     x21, x0
  10014ef28  adrp    x8, #0x100416000
  10014ef2c  nop
  10014ef30  ldr     x8, [x8, #0xee8]
  10014ef34  adrp    x9, #0x1003c7000
  10014ef38  add     x9, x9, #0x770                           ; @" Returning default value."
  10014ef3c  adrp    x10, #0x1003c7000
  10014ef40  add     x10, x10, #0x750                         ; @"Calling booleanForKey threw an exception: "
  10014ef44  stp     x21, x9, [sp, #8]
  10014ef48  str     x10, [sp]
  10014ef4c  adrp    x9, #0x1003c6000
  10014ef50  add     x9, x9, #0xc30                           ; @"%@%@%@"
  10014ef54  mov     x0, x20
  10014ef58  mov     x1, x8
  10014ef5c  mov     x2, x9
  10014ef60  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@%@", @"Calling booleanForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]
  10014ef64  mov     x29, x29
  10014ef68  bl      _objc_retainAutoreleasedReturnValue
  10014ef6c  mov     x20, x0
  10014ef70  mov     x0, x21
  10014ef74  bl      _objc_release
  10014ef78  adrp    x8, #0x10041e000
  10014ef7c  ldr     x8, [x8, #0x538]                         ; class TAGLog
  10014ef80  adrp    x9, #0x10041b000
  10014ef84  nop
  10014ef88  ldr     x9, [x9, #0xdd0]
  10014ef8c  mov     x0, x8
  10014ef90  mov     x1, x9
  10014ef94  mov     x2, x20
  10014ef98  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"%@%@%@", @"Calling booleanForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]]
  10014ef9c  adrp    x8, #0x10041e000
  10014efa0  ldr     x8, [x8, #0xb58]                         ; class TAGTypes
  10014efa4  adrp    x9, #0x10041c000
  10014efa8  nop
  10014efac  ldr     x9, [x9, #0xf10]
  10014efb0  mov     x0, x8
  10014efb4  mov     x1, x9
  10014efb8  bl      _objc_msgSend                            ; [TAGTypes defaultBoolean]
  10014efbc  mov     x29, x29
  10014efc0  bl      _objc_retainAutoreleasedReturnValue
  10014efc4  mov     x21, x0
  10014efc8  adrp    x8, #0x100417000
  10014efcc  nop
  10014efd0  ldr     x8, [x8, #0xd8]
  10014efd4  mov     x1, x8
  10014efd8  bl      _objc_msgSend                            ; [[TAGTypes defaultBoolean] boolValue]
  10014efdc  mov     x23, x0
  10014efe0  mov     x0, x21
  10014efe4  bl      _objc_release
  10014efe8  mov     x0, x20
  10014efec  bl      _objc_release
  10014eff0  bl      _objc_end_catch                          ; objc_end_catch()
  10014eff4  b       loc_10014ee6c
  10014eff8  mov     x23, x0
  10014effc  b       loc_10014f028
  10014f000  mov     x23, x0
  10014f004  mov     x0, x21
  10014f008  b       loc_10014f024
  10014f00c  mov     x23, x0
  10014f010  b       loc_10014f020
  10014f014  mov     x23, x0
  10014f018  mov     x0, x21
  10014f01c  bl      _objc_release
loc_10014f020:
  10014f020  mov     x0, x20
loc_10014f024:
  10014f024  bl      _objc_release
loc_10014f028:
  10014f028  bl      _objc_end_catch                          ; objc_end_catch()
loc_10014f02c:
  10014f02c  mov     x0, x19
  10014f030  bl      _objc_release
  10014f034  mov     x0, x23
  10014f038  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer doubleForKey:]
; address 0x10014f03c  size 804  kind objc
; ======================================================================
  10014f03c  stp     x29, x30, [sp, #-0x10]!
  10014f040  mov     x29, sp
  10014f044  stp     x20, x19, [sp, #-0x10]!
  10014f048  stp     x22, x21, [sp, #-0x10]!
  10014f04c  stp     x24, x23, [sp, #-0x10]!
  10014f050  stp     x26, x25, [sp, #-0x10]!
  10014f054  stp     d9, d8, [sp, #-0x10]!
  10014f058  sub     sp, sp, #0x20
  10014f05c  mov     x20, x0
  10014f060  mov     x0, x2
  10014f064  bl      _objc_retain
  10014f068  mov     x19, x0
  10014f06c  adrp    x8, #0x10041d000
  10014f070  nop
  10014f074  ldr     x1, [x8, #0xc60]
  10014f078  mov     x0, x20
  10014f07c  bl      _objc_msgSend                            ; [self runtime]
  10014f080  mov     x29, x29
  10014f084  bl      _objc_retainAutoreleasedReturnValue
  10014f088  mov     x20, x0
  10014f08c  cbz     x20, loc_10014f124                       ; if ([self runtime] == 0)
  10014f090  adrp    x8, #0x10041e000
  10014f094  ldr     x23, [x8, #0xb58]                        ; class TAGTypes
  10014f098  adrp    x8, #0x10041c000
  10014f09c  nop
  10014f0a0  ldr     x1, [x8, #0xf18]
  10014f0a4  mov     x0, x20
  10014f0a8  mov     x2, x19
  10014f0ac  bl      _objc_msgSend                            ; [[self runtime] evaluateMacroReference:arg1]
  10014f0b0  mov     x29, x29
  10014f0b4  bl      _objc_retainAutoreleasedReturnValue
  10014f0b8  mov     x21, x0
  10014f0bc  adrp    x8, #0x100418000
  10014f0c0  nop
  10014f0c4  ldr     x1, [x8, #0x800]
  10014f0c8  bl      _objc_msgSend                            ; [[[self runtime] evaluateMacroReference:arg1] value]
  10014f0cc  mov     x29, x29
  10014f0d0  bl      _objc_retainAutoreleasedReturnValue
  10014f0d4  mov     x22, x0
  10014f0d8  adrp    x8, #0x10041c000
  10014f0dc  nop
  10014f0e0  ldr     x1, [x8, #0xf30]
  10014f0e4  mov     x0, x23
  10014f0e8  mov     x2, x22
  10014f0ec  bl      _objc_msgSend                            ; [TAGTypes valueToDouble:[[[self runtime] evaluateMacroReference:arg1] value]]
  10014f0f0  mov     x29, x29
  10014f0f4  bl      _objc_retainAutoreleasedReturnValue
  10014f0f8  mov     x23, x0
  10014f0fc  adrp    x8, #0x100417000
  10014f100  nop
  10014f104  ldr     x1, [x8, #0x3d8]
  10014f108  bl      _objc_msgSend                            ; [[TAGTypes valueToDouble:[[[self runtime] evaluateMacroReference:arg1] value]] doubleValue]
  10014f10c  mov     v8.16b, v0.16b
  10014f110  mov     x0, x23
  10014f114  bl      _objc_release
  10014f118  mov     x0, x22
  10014f11c  bl      _objc_release
  10014f120  b       loc_10014f17c
loc_10014f124:
  10014f124  adrp    x8, #0x10041e000
  10014f128  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014f12c  adrp    x8, #0x10041b000
  10014f130  nop
  10014f134  ldr     x1, [x8, #0xdd0]
  10014f138  adrp    x2, #0x1003c7000
  10014f13c  add     x2, x2, #0x790                           ; @"doubleForKey called for closed container"
  10014f140  bl      _objc_msgSend                            ; [TAGLog error:@"doubleForKey called for closed container"]
  10014f144  adrp    x8, #0x10041e000
  10014f148  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10014f14c  adrp    x8, #0x10041c000
  10014f150  nop
  10014f154  ldr     x1, [x8, #0xf28]
  10014f158  bl      _objc_msgSend                            ; [TAGTypes defaultDouble]
  10014f15c  mov     x29, x29
  10014f160  bl      _objc_retainAutoreleasedReturnValue
  10014f164  mov     x21, x0
  10014f168  adrp    x8, #0x100417000
  10014f16c  nop
  10014f170  ldr     x1, [x8, #0x3d8]
  10014f174  bl      _objc_msgSend                            ; [[TAGTypes defaultDouble] doubleValue]
  10014f178  mov     v8.16b, v0.16b
loc_10014f17c:
  10014f17c  mov     x0, x21
  10014f180  bl      _objc_release
  10014f184  mov     x0, x20
  10014f188  bl      _objc_release
loc_10014f18c:
  10014f18c  mov     x0, x19
  10014f190  bl      _objc_release
  10014f194  mov     v0.16b, v8.16b
  10014f198  sub     sp, x29, #0x50
  10014f19c  ldp     d9, d8, [sp], #0x10
  10014f1a0  ldp     x26, x25, [sp], #0x10
  10014f1a4  ldp     x24, x23, [sp], #0x10
  10014f1a8  ldp     x22, x21, [sp], #0x10
  10014f1ac  ldp     x20, x19, [sp], #0x10
  10014f1b0  ldp     x29, x30, [sp], #0x10
  10014f1b4  ret
  10014f1b8  mov     x25, x1
  10014f1bc  mov     x24, x0
  10014f1c0  b       loc_10014f214
  10014f1c4  b       loc_10014f1fc
  10014f1c8  mov     x25, x1
  10014f1cc  mov     x24, x0
  10014f1d0  b       loc_10014f1e4
  10014f1d4  mov     x25, x1
  10014f1d8  mov     x24, x0
  10014f1dc  mov     x0, x23
  10014f1e0  bl      _objc_release
loc_10014f1e4:
  10014f1e4  mov     x0, x22
  10014f1e8  bl      _objc_release
  10014f1ec  b       loc_10014f204
  10014f1f0  mov     x25, x1
  10014f1f4  mov     x24, x0
  10014f1f8  b       loc_10014f20c
loc_10014f1fc:
  10014f1fc  mov     x25, x1
  10014f200  mov     x24, x0
loc_10014f204:
  10014f204  mov     x0, x21
  10014f208  bl      _objc_release
loc_10014f20c:
  10014f20c  mov     x0, x20
  10014f210  bl      _objc_release
loc_10014f214:
  10014f214  cmp     w25, #1
  10014f218  b.ne    loc_10014f350                            ; if (w25 != 1)
  10014f21c  mov     x0, x24
  10014f220  bl      _objc_begin_catch                        ; objc_begin_catch()
  10014f224  adrp    x8, #0x10041d000
  10014f228  ldr     x20, [x8, #0xf78]                        ; class NSString
  10014f22c  adrp    x8, #0x10041c000
  10014f230  nop
  10014f234  ldr     x8, [x8, #0xf20]
  10014f238  mov     x1, x8
  10014f23c  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10014f240  mov     x29, x29
  10014f244  bl      _objc_retainAutoreleasedReturnValue
  10014f248  mov     x21, x0
  10014f24c  adrp    x8, #0x100416000
  10014f250  nop
  10014f254  ldr     x8, [x8, #0xee8]
  10014f258  adrp    x9, #0x1003c7000
  10014f25c  add     x9, x9, #0x770                           ; @" Returning default value."
  10014f260  adrp    x10, #0x1003c7000
  10014f264  add     x10, x10, #0x7b0                         ; @"Calling doubleForKey threw an exception: "
  10014f268  stp     x21, x9, [sp, #8]
  10014f26c  str     x10, [sp]
  10014f270  adrp    x9, #0x1003c6000
  10014f274  add     x9, x9, #0xc30                           ; @"%@%@%@"
  10014f278  mov     x0, x20
  10014f27c  mov     x1, x8
  10014f280  mov     x2, x9
  10014f284  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@%@", @"Calling doubleForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]
  10014f288  mov     x29, x29
  10014f28c  bl      _objc_retainAutoreleasedReturnValue
  10014f290  mov     x20, x0
  10014f294  mov     x0, x21
  10014f298  bl      _objc_release
  10014f29c  adrp    x8, #0x10041e000
  10014f2a0  ldr     x8, [x8, #0x538]                         ; class TAGLog
  10014f2a4  adrp    x9, #0x10041b000
  10014f2a8  nop
  10014f2ac  ldr     x9, [x9, #0xdd0]
  10014f2b0  mov     x0, x8
  10014f2b4  mov     x1, x9
  10014f2b8  mov     x2, x20
  10014f2bc  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"%@%@%@", @"Calling doubleForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]]
  10014f2c0  adrp    x8, #0x10041e000
  10014f2c4  ldr     x8, [x8, #0xb58]                         ; class TAGTypes
  10014f2c8  adrp    x9, #0x10041c000
  10014f2cc  nop
  10014f2d0  ldr     x9, [x9, #0xf28]
  10014f2d4  mov     x0, x8
  10014f2d8  mov     x1, x9
  10014f2dc  bl      _objc_msgSend                            ; [TAGTypes defaultDouble]
  10014f2e0  mov     x29, x29
  10014f2e4  bl      _objc_retainAutoreleasedReturnValue
  10014f2e8  mov     x21, x0
  10014f2ec  adrp    x8, #0x100417000
  10014f2f0  nop
  10014f2f4  ldr     x8, [x8, #0x3d8]
  10014f2f8  mov     x1, x8
  10014f2fc  bl      _objc_msgSend                            ; [[TAGTypes defaultDouble] doubleValue]
  10014f300  mov     v8.16b, v0.16b
  10014f304  mov     x0, x21
  10014f308  bl      _objc_release
  10014f30c  mov     x0, x20
  10014f310  bl      _objc_release
  10014f314  bl      _objc_end_catch                          ; objc_end_catch()
  10014f318  b       loc_10014f18c
  10014f31c  mov     x24, x0
  10014f320  b       loc_10014f34c
  10014f324  mov     x24, x0
  10014f328  mov     x0, x21
  10014f32c  b       loc_10014f348
  10014f330  mov     x24, x0
  10014f334  b       loc_10014f344
  10014f338  mov     x24, x0
  10014f33c  mov     x0, x21
  10014f340  bl      _objc_release
loc_10014f344:
  10014f344  mov     x0, x20
loc_10014f348:
  10014f348  bl      _objc_release
loc_10014f34c:
  10014f34c  bl      _objc_end_catch                          ; objc_end_catch()
loc_10014f350:
  10014f350  mov     x0, x19
  10014f354  bl      _objc_release
  10014f358  mov     x0, x24
  10014f35c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer int64ForKey:]
; address 0x10014f360  size 800  kind objc
; ======================================================================
  10014f360  stp     x29, x30, [sp, #-0x10]!
  10014f364  mov     x29, sp
  10014f368  stp     x20, x19, [sp, #-0x10]!
  10014f36c  stp     x22, x21, [sp, #-0x10]!
  10014f370  stp     x24, x23, [sp, #-0x10]!
  10014f374  stp     x26, x25, [sp, #-0x10]!
  10014f378  sub     sp, sp, #0x20
  10014f37c  mov     x20, x0
  10014f380  mov     x0, x2
  10014f384  bl      _objc_retain
  10014f388  mov     x19, x0
  10014f38c  adrp    x8, #0x10041d000
  10014f390  nop
  10014f394  ldr     x1, [x8, #0xc60]
  10014f398  mov     x0, x20
  10014f39c  bl      _objc_msgSend                            ; [self runtime]
  10014f3a0  mov     x29, x29
  10014f3a4  bl      _objc_retainAutoreleasedReturnValue
  10014f3a8  mov     x20, x0
  10014f3ac  cbz     x20, loc_10014f444                       ; if ([self runtime] == 0)
  10014f3b0  adrp    x8, #0x10041e000
  10014f3b4  ldr     x23, [x8, #0xb58]                        ; class TAGTypes
  10014f3b8  adrp    x8, #0x10041c000
  10014f3bc  nop
  10014f3c0  ldr     x1, [x8, #0xf18]
  10014f3c4  mov     x0, x20
  10014f3c8  mov     x2, x19
  10014f3cc  bl      _objc_msgSend                            ; [[self runtime] evaluateMacroReference:arg1]
  10014f3d0  mov     x29, x29
  10014f3d4  bl      _objc_retainAutoreleasedReturnValue
  10014f3d8  mov     x21, x0
  10014f3dc  adrp    x8, #0x100418000
  10014f3e0  nop
  10014f3e4  ldr     x1, [x8, #0x800]
  10014f3e8  bl      _objc_msgSend                            ; [[[self runtime] evaluateMacroReference:arg1] value]
  10014f3ec  mov     x29, x29
  10014f3f0  bl      _objc_retainAutoreleasedReturnValue
  10014f3f4  mov     x22, x0
  10014f3f8  adrp    x8, #0x10041c000
  10014f3fc  nop
  10014f400  ldr     x1, [x8, #0xf40]
  10014f404  mov     x0, x23
  10014f408  mov     x2, x22
  10014f40c  bl      _objc_msgSend                            ; [TAGTypes valueToInt64:[[[self runtime] evaluateMacroReference:arg1] value]]
  10014f410  mov     x29, x29
  10014f414  bl      _objc_retainAutoreleasedReturnValue
  10014f418  mov     x24, x0
  10014f41c  adrp    x8, #0x10041c000
  10014f420  nop
  10014f424  ldr     x1, [x8, #0xc70]
  10014f428  bl      _objc_msgSend                            ; [[TAGTypes valueToInt64:[[[self runtime] evaluateMacroReference:arg1] value]] longLongValue]
  10014f42c  mov     x23, x0
  10014f430  mov     x0, x24
  10014f434  bl      _objc_release
  10014f438  mov     x0, x22
  10014f43c  bl      _objc_release
  10014f440  b       loc_10014f49c
loc_10014f444:
  10014f444  adrp    x8, #0x10041e000
  10014f448  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014f44c  adrp    x8, #0x10041b000
  10014f450  nop
  10014f454  ldr     x1, [x8, #0xdd0]
  10014f458  adrp    x2, #0x1003c7000
  10014f45c  add     x2, x2, #0x7d0                           ; @"int64ForKey called for closed container"
  10014f460  bl      _objc_msgSend                            ; [TAGLog error:@"int64ForKey called for closed container"]
  10014f464  adrp    x8, #0x10041e000
  10014f468  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10014f46c  adrp    x8, #0x10041c000
  10014f470  nop
  10014f474  ldr     x1, [x8, #0xf38]
  10014f478  bl      _objc_msgSend                            ; [TAGTypes defaultInt64]
  10014f47c  mov     x29, x29
  10014f480  bl      _objc_retainAutoreleasedReturnValue
  10014f484  mov     x21, x0
  10014f488  adrp    x8, #0x100417000
  10014f48c  nop
  10014f490  ldr     x1, [x8, #0x110]
  10014f494  bl      _objc_msgSend                            ; [[TAGTypes defaultInt64] intValue]
  10014f498  sxtw    x23, w0
loc_10014f49c:
  10014f49c  mov     x0, x21
  10014f4a0  bl      _objc_release
  10014f4a4  mov     x0, x20
  10014f4a8  bl      _objc_release
loc_10014f4ac:
  10014f4ac  mov     x0, x19
  10014f4b0  bl      _objc_release
  10014f4b4  mov     x0, x23
  10014f4b8  sub     sp, x29, #0x40
  10014f4bc  ldp     x26, x25, [sp], #0x10
  10014f4c0  ldp     x24, x23, [sp], #0x10
  10014f4c4  ldp     x22, x21, [sp], #0x10
  10014f4c8  ldp     x20, x19, [sp], #0x10
  10014f4cc  ldp     x29, x30, [sp], #0x10
  10014f4d0  ret
  10014f4d4  mov     x25, x1
  10014f4d8  mov     x23, x0
  10014f4dc  b       loc_10014f530
  10014f4e0  b       loc_10014f518
  10014f4e4  mov     x25, x1
  10014f4e8  mov     x23, x0
  10014f4ec  b       loc_10014f500
  10014f4f0  mov     x25, x1
  10014f4f4  mov     x23, x0
  10014f4f8  mov     x0, x24
  10014f4fc  bl      _objc_release
loc_10014f500:
  10014f500  mov     x0, x22
  10014f504  bl      _objc_release
  10014f508  b       loc_10014f520
  10014f50c  mov     x25, x1
  10014f510  mov     x23, x0
  10014f514  b       loc_10014f528
loc_10014f518:
  10014f518  mov     x25, x1
  10014f51c  mov     x23, x0
loc_10014f520:
  10014f520  mov     x0, x21
  10014f524  bl      _objc_release
loc_10014f528:
  10014f528  mov     x0, x20
  10014f52c  bl      _objc_release
loc_10014f530:
  10014f530  cmp     w25, #1
  10014f534  b.ne    loc_10014f670                            ; if (w25 != 1)
  10014f538  mov     x0, x23
  10014f53c  bl      _objc_begin_catch                        ; objc_begin_catch()
  10014f540  adrp    x8, #0x10041d000
  10014f544  ldr     x20, [x8, #0xf78]                        ; class NSString
  10014f548  adrp    x8, #0x10041c000
  10014f54c  nop
  10014f550  ldr     x8, [x8, #0xf20]
  10014f554  mov     x1, x8
  10014f558  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10014f55c  mov     x29, x29
  10014f560  bl      _objc_retainAutoreleasedReturnValue
  10014f564  mov     x21, x0
  10014f568  adrp    x8, #0x100416000
  10014f56c  nop
  10014f570  ldr     x8, [x8, #0xee8]
  10014f574  adrp    x9, #0x1003c7000
  10014f578  add     x9, x9, #0x770                           ; @" Returning default value."
  10014f57c  adrp    x10, #0x1003c7000
  10014f580  add     x10, x10, #0x7f0                         ; @"Calling int64ForKey threw an exception: "
  10014f584  stp     x21, x9, [sp, #8]
  10014f588  str     x10, [sp]
  10014f58c  adrp    x9, #0x1003c6000
  10014f590  add     x9, x9, #0xc30                           ; @"%@%@%@"
  10014f594  mov     x0, x20
  10014f598  mov     x1, x8
  10014f59c  mov     x2, x9
  10014f5a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@%@", @"Calling int64ForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]
  10014f5a4  mov     x29, x29
  10014f5a8  bl      _objc_retainAutoreleasedReturnValue
  10014f5ac  mov     x20, x0
  10014f5b0  mov     x0, x21
  10014f5b4  bl      _objc_release
  10014f5b8  adrp    x8, #0x10041e000
  10014f5bc  ldr     x8, [x8, #0x538]                         ; class TAGLog
  10014f5c0  adrp    x9, #0x10041b000
  10014f5c4  nop
  10014f5c8  ldr     x9, [x9, #0xdd0]
  10014f5cc  mov     x0, x8
  10014f5d0  mov     x1, x9
  10014f5d4  mov     x2, x20
  10014f5d8  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"%@%@%@", @"Calling int64ForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]]
  10014f5dc  adrp    x8, #0x10041e000
  10014f5e0  ldr     x8, [x8, #0xb58]                         ; class TAGTypes
  10014f5e4  adrp    x9, #0x10041c000
  10014f5e8  nop
  10014f5ec  ldr     x9, [x9, #0xf38]
  10014f5f0  mov     x0, x8
  10014f5f4  mov     x1, x9
  10014f5f8  bl      _objc_msgSend                            ; [TAGTypes defaultInt64]
  10014f5fc  mov     x29, x29
  10014f600  bl      _objc_retainAutoreleasedReturnValue
  10014f604  mov     x21, x0
  10014f608  adrp    x8, #0x100417000
  10014f60c  nop
  10014f610  ldr     x8, [x8, #0x110]
  10014f614  mov     x1, x8
  10014f618  bl      _objc_msgSend                            ; [[TAGTypes defaultInt64] intValue]
  10014f61c  mov     x8, x0
  10014f620  sxtw    x23, w8
  10014f624  mov     x0, x21
  10014f628  bl      _objc_release
  10014f62c  mov     x0, x20
  10014f630  bl      _objc_release
  10014f634  bl      _objc_end_catch                          ; objc_end_catch()
  10014f638  b       loc_10014f4ac
  10014f63c  mov     x23, x0
  10014f640  b       loc_10014f66c
  10014f644  mov     x23, x0
  10014f648  mov     x0, x21
  10014f64c  b       loc_10014f668
  10014f650  mov     x23, x0
  10014f654  b       loc_10014f664
  10014f658  mov     x23, x0
  10014f65c  mov     x0, x21
  10014f660  bl      _objc_release
loc_10014f664:
  10014f664  mov     x0, x20
loc_10014f668:
  10014f668  bl      _objc_release
loc_10014f66c:
  10014f66c  bl      _objc_end_catch                          ; objc_end_catch()
loc_10014f670:
  10014f670  mov     x0, x19
  10014f674  bl      _objc_release
  10014f678  mov     x0, x23
  10014f67c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer stringForKey:]
; address 0x10014f680  size 668  kind objc
; ======================================================================
  10014f680  stp     x29, x30, [sp, #-0x10]!
  10014f684  mov     x29, sp
  10014f688  stp     x20, x19, [sp, #-0x10]!
  10014f68c  stp     x22, x21, [sp, #-0x10]!
  10014f690  stp     x24, x23, [sp, #-0x10]!
  10014f694  sub     sp, sp, #0x20
  10014f698  mov     x20, x0
  10014f69c  mov     x0, x2
  10014f6a0  bl      _objc_retain
  10014f6a4  mov     x19, x0
  10014f6a8  adrp    x8, #0x10041d000
  10014f6ac  nop
  10014f6b0  ldr     x1, [x8, #0xc60]
  10014f6b4  mov     x0, x20
  10014f6b8  bl      _objc_msgSend                            ; [self runtime]
  10014f6bc  mov     x29, x29
  10014f6c0  bl      _objc_retainAutoreleasedReturnValue
  10014f6c4  mov     x20, x0
  10014f6c8  cbz     x20, loc_10014f74c                       ; if ([self runtime] == 0)
  10014f6cc  adrp    x8, #0x10041e000
  10014f6d0  ldr     x22, [x8, #0xb58]                        ; class TAGTypes
  10014f6d4  adrp    x8, #0x10041c000
  10014f6d8  nop
  10014f6dc  ldr     x1, [x8, #0xf18]
  10014f6e0  mov     x0, x20
  10014f6e4  mov     x2, x19
  10014f6e8  bl      _objc_msgSend                            ; [[self runtime] evaluateMacroReference:arg1]
  10014f6ec  mov     x29, x29
  10014f6f0  bl      _objc_retainAutoreleasedReturnValue
  10014f6f4  mov     x21, x0
  10014f6f8  adrp    x8, #0x100418000
  10014f6fc  nop
  10014f700  ldr     x1, [x8, #0x800]
  10014f704  bl      _objc_msgSend                            ; [[[self runtime] evaluateMacroReference:arg1] value]
  10014f708  mov     x29, x29
  10014f70c  bl      _objc_retainAutoreleasedReturnValue
  10014f710  mov     x23, x0
  10014f714  adrp    x8, #0x10041d000
  10014f718  nop
  10014f71c  ldr     x1, [x8, #0xc18]
  10014f720  mov     x0, x22
  10014f724  mov     x2, x23
  10014f728  bl      _objc_msgSend                            ; [TAGTypes valueToString:[[[self runtime] evaluateMacroReference:arg1] value]]
  10014f72c  mov     x29, x29
  10014f730  bl      _objc_retainAutoreleasedReturnValue
  10014f734  mov     x22, x0
  10014f738  mov     x0, x23
  10014f73c  bl      _objc_release
  10014f740  mov     x0, x21
  10014f744  bl      _objc_release
  10014f748  b       loc_10014f790
loc_10014f74c:
  10014f74c  adrp    x8, #0x10041e000
  10014f750  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014f754  adrp    x8, #0x10041b000
  10014f758  nop
  10014f75c  ldr     x1, [x8, #0xdd0]
  10014f760  adrp    x2, #0x1003c7000
  10014f764  add     x2, x2, #0x810                           ; @"stringForKey called for closed container"
  10014f768  bl      _objc_msgSend                            ; [TAGLog error:@"stringForKey called for closed container"]
  10014f76c  adrp    x8, #0x10041e000
  10014f770  ldr     x0, [x8, #0xb58]                         ; class TAGTypes
  10014f774  adrp    x8, #0x10041c000
  10014f778  nop
  10014f77c  ldr     x1, [x8, #0xdf8]
  10014f780  bl      _objc_msgSend                            ; [TAGTypes defaultString]
  10014f784  mov     x29, x29
  10014f788  bl      _objc_retainAutoreleasedReturnValue
  10014f78c  mov     x22, x0
loc_10014f790:
  10014f790  mov     x0, x20
  10014f794  bl      _objc_release
loc_10014f798:
  10014f798  mov     x0, x19
  10014f79c  bl      _objc_release
  10014f7a0  mov     x0, x22
  10014f7a4  sub     sp, x29, #0x30
  10014f7a8  ldp     x24, x23, [sp], #0x10
  10014f7ac  ldp     x22, x21, [sp], #0x10
  10014f7b0  ldp     x20, x19, [sp], #0x10
  10014f7b4  ldp     x29, x30, [sp], #0x10
  10014f7b8  b       _objc_autoreleaseReturnValue
  10014f7bc  mov     x24, x1
  10014f7c0  mov     x22, x0
  10014f7c4  b       loc_10014f800
  10014f7c8  mov     x24, x1
  10014f7cc  mov     x22, x0
  10014f7d0  b       loc_10014f7e4
  10014f7d4  mov     x24, x1
  10014f7d8  mov     x22, x0
  10014f7dc  mov     x0, x23
  10014f7e0  bl      _objc_release
loc_10014f7e4:
  10014f7e4  mov     x0, x21
  10014f7e8  bl      _objc_release
  10014f7ec  b       loc_10014f7f8
  10014f7f0  mov     x24, x1
  10014f7f4  mov     x22, x0
loc_10014f7f8:
  10014f7f8  mov     x0, x20
  10014f7fc  bl      _objc_release
loc_10014f800:
  10014f800  cmp     w24, #1
  10014f804  b.ne    loc_10014f90c                            ; if (w24 != 1)
  10014f808  mov     x0, x22
  10014f80c  bl      _objc_begin_catch                        ; objc_begin_catch()
  10014f810  adrp    x8, #0x10041d000
  10014f814  ldr     x20, [x8, #0xf78]                        ; class NSString
  10014f818  adrp    x8, #0x10041c000
  10014f81c  nop
  10014f820  ldr     x8, [x8, #0xf20]
  10014f824  mov     x1, x8
  10014f828  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10014f82c  mov     x29, x29
  10014f830  bl      _objc_retainAutoreleasedReturnValue
  10014f834  mov     x21, x0
  10014f838  adrp    x8, #0x100416000
  10014f83c  nop
  10014f840  ldr     x8, [x8, #0xee8]
  10014f844  adrp    x9, #0x1003c7000
  10014f848  add     x9, x9, #0x770                           ; @" Returning default value."
  10014f84c  adrp    x10, #0x1003c7000
  10014f850  add     x10, x10, #0x830                         ; @"Calling stringForKey threw an exception: "
  10014f854  stp     x21, x9, [sp, #8]
  10014f858  str     x10, [sp]
  10014f85c  adrp    x9, #0x1003c6000
  10014f860  add     x9, x9, #0xc30                           ; @"%@%@%@"
  10014f864  mov     x0, x20
  10014f868  mov     x1, x8
  10014f86c  mov     x2, x9
  10014f870  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%@%@", @"Calling stringForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]
  10014f874  mov     x29, x29
  10014f878  bl      _objc_retainAutoreleasedReturnValue
  10014f87c  mov     x20, x0
  10014f880  mov     x0, x21
  10014f884  bl      _objc_release
  10014f888  adrp    x8, #0x10041e000
  10014f88c  ldr     x8, [x8, #0x538]                         ; class TAGLog
  10014f890  adrp    x9, #0x10041b000
  10014f894  nop
  10014f898  ldr     x9, [x9, #0xdd0]
  10014f89c  mov     x0, x8
  10014f8a0  mov     x1, x9
  10014f8a4  mov     x2, x20
  10014f8a8  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"%@%@%@", @"Calling stringForKey threw an exception: ", [objc_begin_catch() reason], @" Returning default value."]]
  10014f8ac  adrp    x8, #0x10041e000
  10014f8b0  ldr     x8, [x8, #0xb58]                         ; class TAGTypes
  10014f8b4  adrp    x9, #0x10041c000
  10014f8b8  nop
  10014f8bc  ldr     x9, [x9, #0xdf8]
  10014f8c0  mov     x0, x8
  10014f8c4  mov     x1, x9
  10014f8c8  bl      _objc_msgSend                            ; [TAGTypes defaultString]
  10014f8cc  mov     x29, x29
  10014f8d0  bl      _objc_retainAutoreleasedReturnValue
  10014f8d4  mov     x22, x0
  10014f8d8  mov     x0, x20
  10014f8dc  bl      _objc_release
  10014f8e0  bl      _objc_end_catch                          ; objc_end_catch()
  10014f8e4  b       loc_10014f798
  10014f8e8  mov     x22, x0
  10014f8ec  b       loc_10014f908
  10014f8f0  mov     x22, x0
  10014f8f4  mov     x0, x21
  10014f8f8  b       loc_10014f904
  10014f8fc  mov     x22, x0
  10014f900  mov     x0, x20
loc_10014f904:
  10014f904  bl      _objc_release
loc_10014f908:
  10014f908  bl      _objc_end_catch                          ; objc_end_catch()
loc_10014f90c:
  10014f90c  mov     x0, x19
  10014f910  bl      _objc_release
  10014f914  mov     x0, x22
  10014f918  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer refresh]
; address 0x10014f91c  size 580  kind objc
; ======================================================================
  10014f91c  stp     x29, x30, [sp, #-0x10]!
  10014f920  mov     x29, sp
  10014f924  stp     x20, x19, [sp, #-0x10]!
  10014f928  stp     x22, x21, [sp, #-0x10]!
  10014f92c  stp     d9, d8, [sp, #-0x10]!
  10014f930  bl      _objc_retain
  10014f934  mov     x19, x0
  10014f938  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10014f93c  adrp    x8, #0x10041d000
  10014f940  nop
  10014f944  ldr     x1, [x8, #0xc60]
  10014f948  mov     x0, x19
  10014f94c  bl      _objc_msgSend                            ; [self runtime]
  10014f950  mov     x29, x29
  10014f954  bl      _objc_retainAutoreleasedReturnValue
  10014f958  mov     x20, x0
  10014f95c  bl      _objc_release
  10014f960  cbz     x20, loc_10014f9a0                       ; if ([self runtime] == 0)
  10014f964  adrp    x8, #0x10041c000
  10014f968  nop
  10014f96c  ldr     x1, [x8, #0xf48]
  10014f970  mov     x0, x19
  10014f974  bl      _objc_msgSend                            ; [self isDefaultContainerRefreshMode]
  10014f978  cbz     w0, loc_10014f9c4                        ; if ([self isDefaultContainerRefreshMode] == 0)
  10014f97c  adrp    x8, #0x10041e000
  10014f980  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014f984  adrp    x8, #0x10041b000
  10014f988  nop
  10014f98c  ldr     x1, [x8, #0xe90]
  10014f990  adrp    x2, #0x1003c7000
  10014f994  add     x2, x2, #0x870                           ; @"Container is in DEFAULT_CONTAINER mode. Refresh request is ignored."
  10014f998  bl      _objc_msgSend                            ; [TAGLog warning:@"Container is in DEFAULT_CONTAINER mode. Refresh request is ignored."]
  10014f99c  b       loc_10014fa5c
loc_10014f9a0:
  10014f9a0  adrp    x8, #0x10041e000
  10014f9a4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10014f9a8  adrp    x8, #0x10041b000
  10014f9ac  nop
  10014f9b0  ldr     x1, [x8, #0xe90]
  10014f9b4  adrp    x2, #0x1003c7000
  10014f9b8  add     x2, x2, #0x850                           ; @"refresh called for closed container"
  10014f9bc  bl      _objc_msgSend                            ; [TAGLog warning:@"refresh called for closed container"]
  10014f9c0  b       loc_10014fa5c
loc_10014f9c4:
  10014f9c4  adrp    x8, #0x10041d000
  10014f9c8  nop
  10014f9cc  ldr     x1, [x8, #0x4c8]
  10014f9d0  mov     x0, x19
  10014f9d4  bl      _objc_msgSend                            ; [self currentTimeInMilliseconds]
  10014f9d8  mov     v8.16b, v0.16b
  10014f9dc  adrp    x8, #0x10041c000
  10014f9e0  nop
  10014f9e4  ldr     x1, [x8, #0xf50]
  10014f9e8  mov     x0, x19
  10014f9ec  mov     v0.16b, v8.16b
  10014f9f0  bl      _objc_msgSend                            ; [self useAvailableTokenWithCurrentTime:[self currentTimeInMilliseconds]]
  10014f9f4  mov     x8, x0
  10014f9f8  adrp    x9, #0x10041e000
  10014f9fc  ldr     x0, [x9, #0x538]                         ; class TAGLog
  10014fa00  adrp    x9, #0x10041b000
  10014fa04  add     x9, x9, #0xb08                           ; &@selector(verbose:)
  10014fa08  ldr     x1, [x9]
  10014fa0c  cbz     w8, loc_10014fa50                        ; if ([self useAvailableTokenWithCurrentTime:[self currentTimeInMilliseconds]] == 0)
  10014fa10  adrp    x2, #0x1003c7000
  10014fa14  add     x2, x2, #0x890                           ; @"Container refresh requested."
  10014fa18  bl      _objc_msgSend                            ; [TAGLog verbose:@"Container refresh requested."]
  10014fa1c  adrp    x8, #0x10041c000
  10014fa20  nop
  10014fa24  ldr     x1, [x8, #0xea0]
  10014fa28  movi    v0.16b, #0
  10014fa2c  mov     x0, x19
  10014fa30  bl      _objc_msgSend                            ; [self loadAfterDelay:0]
  10014fa34  adrp    x8, #0x10041c000
  10014fa38  nop
  10014fa3c  ldr     x1, [x8, #0xf58]
  10014fa40  mov     x0, x19
  10014fa44  mov     v0.16b, v8.16b
  10014fa48  bl      _objc_msgSend                            ; [self setLastRefreshMethodCalledTime:[self currentTimeInMilliseconds]]
  10014fa4c  b       loc_10014fa5c
loc_10014fa50:
  10014fa50  adrp    x2, #0x1003c7000
  10014fa54  add     x2, x2, #0x8b0                           ; @"Container refresh was called too often. Ignored."
  10014fa58  bl      _objc_msgSend                            ; [TAGLog verbose:@"Container refresh was called too often. Ignored."]
loc_10014fa5c:
  10014fa5c  mov     x0, x19
  10014fa60  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10014fa64  mov     x0, x19
  10014fa68  ldp     d9, d8, [sp], #0x10
  10014fa6c  ldp     x22, x21, [sp], #0x10
  10014fa70  ldp     x20, x19, [sp], #0x10
  10014fa74  ldp     x29, x30, [sp], #0x10
  10014fa78  b       _objc_release
  10014fa7c  mov     x8, x1
  10014fa80  mov     x21, x0
  10014fa84  cmp     w8, #1
  10014fa88  b.ne    loc_10014fb48                            ; if (w8 != 1)
  10014fa8c  mov     x0, x21
  10014fa90  bl      _objc_begin_catch                        ; objc_begin_catch()
  10014fa94  adrp    x8, #0x10041e000
  10014fa98  ldr     x21, [x8, #0x538]                        ; class TAGLog
  10014fa9c  adrp    x8, #0x10041c000
  10014faa0  nop
  10014faa4  ldr     x8, [x8, #0xf20]
  10014faa8  mov     x1, x8
  10014faac  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10014fab0  mov     x29, x29
  10014fab4  bl      _objc_retainAutoreleasedReturnValue
  10014fab8  mov     x20, x0
  10014fabc  adrp    x8, #0x10041a000
  10014fac0  nop
  10014fac4  ldr     x8, [x8, #0x620]
  10014fac8  adrp    x9, #0x1003c7000
  10014facc  add     x9, x9, #0x8d0                           ; @"Calling refresh threw an exception: "
  10014fad0  mov     x0, x9
  10014fad4  mov     x1, x8
  10014fad8  mov     x2, x20
  10014fadc  bl      _objc_msgSend                            ; [@"Calling refresh threw an exception: " stringByAppendingString:[objc_begin_catch() reason]]
  10014fae0  mov     x29, x29
  10014fae4  bl      _objc_retainAutoreleasedReturnValue
  10014fae8  mov     x22, x0
  10014faec  adrp    x8, #0x10041b000
  10014faf0  nop
  10014faf4  ldr     x8, [x8, #0xdd0]
  10014faf8  mov     x0, x21
  10014fafc  mov     x1, x8
  10014fb00  mov     x2, x22
  10014fb04  bl      _objc_msgSend                            ; [TAGLog error:[@"Calling refresh threw an exception: " stringByAppendingString:[objc_begin_catch() reason]]]
  10014fb08  mov     x0, x22
  10014fb0c  bl      _objc_release
  10014fb10  mov     x0, x20
  10014fb14  bl      _objc_release
  10014fb18  bl      _objc_end_catch                          ; objc_end_catch()
  10014fb1c  b       loc_10014fa5c
  10014fb20  mov     x21, x0
  10014fb24  b       loc_10014fb44
  10014fb28  mov     x21, x0
  10014fb2c  b       loc_10014fb3c
  10014fb30  mov     x21, x0
  10014fb34  mov     x0, x22
  10014fb38  bl      _objc_release
loc_10014fb3c:
  10014fb3c  mov     x0, x20
  10014fb40  bl      _objc_release
loc_10014fb44:
  10014fb44  bl      _objc_end_catch                          ; objc_end_catch()
loc_10014fb48:
  10014fb48  mov     x0, x19
  10014fb4c  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014fb50  mov     x0, x19
  10014fb54  bl      _objc_release
  10014fb58  mov     x0, x21
  10014fb5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer close]
; address 0x10014fb60  size 736  kind objc
; ======================================================================
  10014fb60  stp     x29, x30, [sp, #-0x10]!
  10014fb64  mov     x29, sp
  10014fb68  stp     x20, x19, [sp, #-0x10]!
  10014fb6c  stp     x22, x21, [sp, #-0x10]!
  10014fb70  stp     x24, x23, [sp, #-0x10]!
  10014fb74  bl      _objc_retain
  10014fb78  mov     x19, x0
  10014fb7c  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10014fb80  adrp    x8, #0x10041c000
  10014fb84  nop
  10014fb88  ldr     x1, [x8, #0xf60]
  10014fb8c  mov     x0, x19
  10014fb90  bl      _objc_msgSend                            ; [self networkLoadScheduler]
  10014fb94  mov     x29, x29
  10014fb98  bl      _objc_retainAutoreleasedReturnValue
  10014fb9c  mov     x21, x0
  10014fba0  adrp    x8, #0x10041c000
  10014fba4  nop
  10014fba8  ldr     x20, [x8, #0x5b0]
  10014fbac  mov     x1, x20
  10014fbb0  bl      _objc_msgSend                            ; [[self networkLoadScheduler] close]
  10014fbb4  mov     x0, x21
  10014fbb8  bl      _objc_release
  10014fbbc  adrp    x8, #0x10041c000
  10014fbc0  nop
  10014fbc4  ldr     x1, [x8, #0xf68]
  10014fbc8  mov     x2, #0
  10014fbcc  mov     x0, x19
  10014fbd0  bl      _objc_msgSend                            ; [self setNetworkLoadScheduler:0]
  10014fbd4  adrp    x8, #0x10041c000
  10014fbd8  nop
  10014fbdc  ldr     x1, [x8, #0xf70]
  10014fbe0  mov     x2, #0
  10014fbe4  mov     x0, x19
  10014fbe8  bl      _objc_msgSend                            ; [self setResourceStorage:0]
  10014fbec  adrp    x8, #0x10041c000
  10014fbf0  nop
  10014fbf4  ldr     x1, [x8, #0xf78]
  10014fbf8  mov     x0, x19
  10014fbfc  bl      _objc_msgSend                            ; [self diskLoadCallback]
  10014fc00  mov     x29, x29
  10014fc04  bl      _objc_retainAutoreleasedReturnValue
  10014fc08  mov     x21, x0
  10014fc0c  mov     x1, x20
  10014fc10  bl      _objc_msgSend                            ; [[self diskLoadCallback] close]
  10014fc14  mov     x0, x21
  10014fc18  bl      _objc_release
  10014fc1c  adrp    x8, #0x10041c000
  10014fc20  nop
  10014fc24  ldr     x1, [x8, #0xf80]
  10014fc28  mov     x2, #0
  10014fc2c  mov     x0, x19
  10014fc30  bl      _objc_msgSend                            ; [self setDiskLoadCallback:0]
  10014fc34  adrp    x8, #0x10041c000
  10014fc38  nop
  10014fc3c  ldr     x1, [x8, #0xf88]
  10014fc40  mov     x0, x19
  10014fc44  bl      _objc_msgSend                            ; [self networkLoadCallback]
  10014fc48  mov     x29, x29
  10014fc4c  bl      _objc_retainAutoreleasedReturnValue
  10014fc50  mov     x21, x0
  10014fc54  mov     x1, x20
  10014fc58  bl      _objc_msgSend                            ; [[self networkLoadCallback] close]
  10014fc5c  mov     x0, x21
  10014fc60  bl      _objc_release
  10014fc64  adrp    x8, #0x10041c000
  10014fc68  nop
  10014fc6c  ldr     x1, [x8, #0xf90]
  10014fc70  mov     x2, #0
  10014fc74  mov     x0, x19
  10014fc78  bl      _objc_msgSend                            ; [self setNetworkLoadCallback:0]
  10014fc7c  adrp    x8, #0x10041c000
  10014fc80  nop
  10014fc84  ldr     x1, [x8, #0xf98]
  10014fc88  mov     x2, #0
  10014fc8c  mov     x0, x19
  10014fc90  bl      _objc_msgSend                            ; [self setRuntime:0]
  10014fc94  adrp    x8, #0x10041c000
  10014fc98  nop
  10014fc9c  ldr     x1, [x8, #0xfa0]
  10014fca0  mov     x0, x19
  10014fca4  bl      _objc_msgSend                            ; [self tagManager]
  10014fca8  mov     x29, x29
  10014fcac  bl      _objc_retainAutoreleasedReturnValue
  10014fcb0  mov     x20, x0
  10014fcb4  adrp    x8, #0x10041d000
  10014fcb8  nop
  10014fcbc  ldr     x1, [x8, #0x1c0]
  10014fcc0  mov     x0, x19
  10014fcc4  bl      _objc_msgSend                            ; [self containerId]
  10014fcc8  mov     x29, x29
  10014fccc  bl      _objc_retainAutoreleasedReturnValue
  10014fcd0  mov     x21, x0
  10014fcd4  adrp    x8, #0x10041c000
  10014fcd8  nop
  10014fcdc  ldr     x1, [x8, #0xfa8]
  10014fce0  mov     x0, x20
  10014fce4  mov     x2, x21
  10014fce8  bl      _objc_msgSend                            ; [[self tagManager] removeContainerById:[self containerId]]
  10014fcec  mov     x0, x21
  10014fcf0  bl      _objc_release
  10014fcf4  mov     x0, x20
  10014fcf8  bl      _objc_release
loc_10014fcfc:
  10014fcfc  mov     x0, x19
  10014fd00  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10014fd04  mov     x0, x19
  10014fd08  ldp     x24, x23, [sp], #0x10
  10014fd0c  ldp     x22, x21, [sp], #0x10
  10014fd10  ldp     x20, x19, [sp], #0x10
  10014fd14  ldp     x29, x30, [sp], #0x10
  10014fd18  b       _objc_release
  10014fd1c  b       loc_10014fd24
  10014fd20  b       loc_10014fd24
loc_10014fd24:
  10014fd24  mov     x23, x1
  10014fd28  mov     x22, x0
  10014fd2c  mov     x0, x21
  10014fd30  b       loc_10014fd60
  10014fd34  mov     x23, x1
  10014fd38  mov     x22, x0
  10014fd3c  b       loc_10014fd64
  10014fd40  mov     x23, x1
  10014fd44  mov     x22, x0
  10014fd48  b       loc_10014fd5c
  10014fd4c  mov     x23, x1
  10014fd50  mov     x22, x0
  10014fd54  mov     x0, x21
  10014fd58  bl      _objc_release
loc_10014fd5c:
  10014fd5c  mov     x0, x20
loc_10014fd60:
  10014fd60  bl      _objc_release
loc_10014fd64:
  10014fd64  cmp     w23, #1
  10014fd68  b.ne    loc_10014fe28                            ; if (w23 != 1)
  10014fd6c  mov     x0, x22
  10014fd70  bl      _objc_begin_catch                        ; objc_begin_catch()
  10014fd74  adrp    x8, #0x10041e000
  10014fd78  ldr     x21, [x8, #0x538]                        ; class TAGLog
  10014fd7c  adrp    x8, #0x10041c000
  10014fd80  nop
  10014fd84  ldr     x8, [x8, #0xf20]
  10014fd88  mov     x1, x8
  10014fd8c  bl      _objc_msgSend                            ; [objc_begin_catch() reason]
  10014fd90  mov     x29, x29
  10014fd94  bl      _objc_retainAutoreleasedReturnValue
  10014fd98  mov     x20, x0
  10014fd9c  adrp    x8, #0x10041a000
  10014fda0  nop
  10014fda4  ldr     x8, [x8, #0x620]
  10014fda8  adrp    x9, #0x1003c7000
  10014fdac  add     x9, x9, #0x8f0                           ; @"Calling close threw an exception: "
  10014fdb0  mov     x0, x9
  10014fdb4  mov     x1, x8
  10014fdb8  mov     x2, x20
  10014fdbc  bl      _objc_msgSend                            ; [@"Calling close threw an exception: " stringByAppendingString:[objc_begin_catch() reason]]
  10014fdc0  mov     x29, x29
  10014fdc4  bl      _objc_retainAutoreleasedReturnValue
  10014fdc8  mov     x23, x0
  10014fdcc  adrp    x8, #0x10041b000
  10014fdd0  nop
  10014fdd4  ldr     x8, [x8, #0xdd0]
  10014fdd8  mov     x0, x21
  10014fddc  mov     x1, x8
  10014fde0  mov     x2, x23
  10014fde4  bl      _objc_msgSend                            ; [TAGLog error:[@"Calling close threw an exception: " stringByAppendingString:[objc_begin_catch() reason]]]
  10014fde8  mov     x0, x23
  10014fdec  bl      _objc_release
  10014fdf0  mov     x0, x20
  10014fdf4  bl      _objc_release
  10014fdf8  bl      _objc_end_catch                          ; objc_end_catch()
  10014fdfc  b       loc_10014fcfc
  10014fe00  mov     x22, x0
  10014fe04  b       loc_10014fe24
  10014fe08  mov     x22, x0
  10014fe0c  b       loc_10014fe1c
  10014fe10  mov     x22, x0
  10014fe14  mov     x0, x23
  10014fe18  bl      _objc_release
loc_10014fe1c:
  10014fe1c  mov     x0, x20
  10014fe20  bl      _objc_release
loc_10014fe24:
  10014fe24  bl      _objc_end_catch                          ; objc_end_catch()
loc_10014fe28:
  10014fe28  mov     x0, x19
  10014fe2c  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014fe30  mov     x0, x19
  10014fe34  bl      _objc_release
  10014fe38  mov     x0, x22
  10014fe3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer isDefault]
; address 0x10014fe40  size 40  kind objc
; ======================================================================
  10014fe40  stp     x29, x30, [sp, #-0x10]!
  10014fe44  mov     x29, sp
  10014fe48  adrp    x8, #0x10041c000
  10014fe4c  nop
  10014fe50  ldr     x1, [x8, #0xe98]
  10014fe54  bl      _objc_msgSend                            ; [self lastRefreshTime]
  10014fe58  fcmp    d0, #0.0
  10014fe5c  cset    w0, eq
  10014fe60  ldp     x29, x30, [sp], #0x10
  10014fe64  ret

; ======================================================================
; -[TAGContainer registerFunctionCallTagHandler:forTag:]
; address 0x10014fe68  size 240  kind objc
; ======================================================================
  10014fe68  stp     x29, x30, [sp, #-0x10]!
  10014fe6c  mov     x29, sp
  10014fe70  stp     x20, x19, [sp, #-0x10]!
  10014fe74  stp     x22, x21, [sp, #-0x10]!
  10014fe78  stp     x24, x23, [sp, #-0x10]!
  10014fe7c  mov     x20, x3
  10014fe80  mov     x21, x0
  10014fe84  mov     x0, x2
  10014fe88  bl      _objc_retain
  10014fe8c  mov     x19, x0
  10014fe90  mov     x0, x20
  10014fe94  bl      _objc_retain
  10014fe98  mov     x20, x0
  10014fe9c  mov     x0, x21
  10014fea0  bl      _objc_retain
  10014fea4  mov     x21, x0
  10014fea8  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10014feac  adrp    x8, #0x10041c000
  10014feb0  nop
  10014feb4  ldr     x1, [x8, #0xfb0]
  10014feb8  mov     x0, x21
  10014febc  bl      _objc_msgSend                            ; [self functionCallTagHandlers]
  10014fec0  mov     x29, x29
  10014fec4  bl      _objc_retainAutoreleasedReturnValue
  10014fec8  mov     x22, x0
  10014fecc  adrp    x8, #0x100416000
  10014fed0  nop
  10014fed4  ldr     x1, [x8, #0xdc8]
  10014fed8  mov     x2, x19
  10014fedc  mov     x3, x20
  10014fee0  bl      _objc_msgSend                            ; [[self functionCallTagHandlers] setObject:arg1 forKey:arg2]
  10014fee4  mov     x0, x22
  10014fee8  bl      _objc_release
  10014feec  mov     x0, x21
  10014fef0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10014fef4  mov     x0, x21
  10014fef8  bl      _objc_release
  10014fefc  mov     x0, x20
  10014ff00  bl      _objc_release
  10014ff04  mov     x0, x19
  10014ff08  ldp     x24, x23, [sp], #0x10
  10014ff0c  ldp     x22, x21, [sp], #0x10
  10014ff10  ldp     x20, x19, [sp], #0x10
  10014ff14  ldp     x29, x30, [sp], #0x10
  10014ff18  b       _objc_release
  10014ff1c  mov     x23, x0
  10014ff20  b       loc_10014ff30
  10014ff24  mov     x23, x0
  10014ff28  mov     x0, x22
  10014ff2c  bl      _objc_release
loc_10014ff30:
  10014ff30  mov     x0, x21
  10014ff34  bl      _objc_sync_exit                          ; objc_sync_exit()
  10014ff38  mov     x0, x21
  10014ff3c  bl      _objc_release
  10014ff40  mov     x0, x20
  10014ff44  bl      _objc_release
  10014ff48  mov     x0, x19
  10014ff4c  bl      _objc_release
  10014ff50  mov     x0, x23
  10014ff54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer registerFunctionCallMacroHandler:forMacro:]
; address 0x10014ff58  size 240  kind objc
; ======================================================================
  10014ff58  stp     x29, x30, [sp, #-0x10]!
  10014ff5c  mov     x29, sp
  10014ff60  stp     x20, x19, [sp, #-0x10]!
  10014ff64  stp     x22, x21, [sp, #-0x10]!
  10014ff68  stp     x24, x23, [sp, #-0x10]!
  10014ff6c  mov     x20, x3
  10014ff70  mov     x21, x0
  10014ff74  mov     x0, x2
  10014ff78  bl      _objc_retain
  10014ff7c  mov     x19, x0
  10014ff80  mov     x0, x20
  10014ff84  bl      _objc_retain
  10014ff88  mov     x20, x0
  10014ff8c  mov     x0, x21
  10014ff90  bl      _objc_retain
  10014ff94  mov     x21, x0
  10014ff98  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10014ff9c  adrp    x8, #0x10041c000
  10014ffa0  nop
  10014ffa4  ldr     x1, [x8, #0xfb8]
  10014ffa8  mov     x0, x21
  10014ffac  bl      _objc_msgSend                            ; [self functionCallMacroHandlers]
  10014ffb0  mov     x29, x29
  10014ffb4  bl      _objc_retainAutoreleasedReturnValue
  10014ffb8  mov     x22, x0
  10014ffbc  adrp    x8, #0x100416000
  10014ffc0  nop
  10014ffc4  ldr     x1, [x8, #0xdc8]
  10014ffc8  mov     x2, x19
  10014ffcc  mov     x3, x20
  10014ffd0  bl      _objc_msgSend                            ; [[self functionCallMacroHandlers] setObject:arg1 forKey:arg2]
  10014ffd4  mov     x0, x22
  10014ffd8  bl      _objc_release
  10014ffdc  mov     x0, x21
  10014ffe0  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10014ffe4  mov     x0, x21
  10014ffe8  bl      _objc_release
  10014ffec  mov     x0, x20
  10014fff0  bl      _objc_release
  10014fff4  mov     x0, x19
  10014fff8  ldp     x24, x23, [sp], #0x10
  10014fffc  ldp     x22, x21, [sp], #0x10
  100150000  ldp     x20, x19, [sp], #0x10
  100150004  ldp     x29, x30, [sp], #0x10
  100150008  b       _objc_release
  10015000c  mov     x23, x0
  100150010  b       loc_100150020
  100150014  mov     x23, x0
  100150018  mov     x0, x22
  10015001c  bl      _objc_release
loc_100150020:
  100150020  mov     x0, x21
  100150024  bl      _objc_sync_exit                          ; objc_sync_exit()
  100150028  mov     x0, x21
  10015002c  bl      _objc_release
  100150030  mov     x0, x20
  100150034  bl      _objc_release
  100150038  mov     x0, x19
  10015003c  bl      _objc_release
  100150040  mov     x0, x23
  100150044  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer functionCallTagHandlerForTag:]
; address 0x100150048  size 216  kind objc
; ======================================================================
  100150048  stp     x29, x30, [sp, #-0x10]!
  10015004c  mov     x29, sp
  100150050  stp     x20, x19, [sp, #-0x10]!
  100150054  stp     x22, x21, [sp, #-0x10]!
  100150058  mov     x20, x0
  10015005c  mov     x0, x2
  100150060  bl      _objc_retain
  100150064  mov     x19, x0
  100150068  mov     x0, x20
  10015006c  bl      _objc_retain
  100150070  mov     x20, x0
  100150074  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100150078  adrp    x8, #0x10041c000
  10015007c  nop
  100150080  ldr     x1, [x8, #0xfb0]
  100150084  mov     x0, x20
  100150088  bl      _objc_msgSend                            ; [self functionCallTagHandlers]
  10015008c  mov     x29, x29
  100150090  bl      _objc_retainAutoreleasedReturnValue
  100150094  mov     x21, x0
  100150098  adrp    x8, #0x100417000
  10015009c  nop
  1001500a0  ldr     x1, [x8, #0x40]
  1001500a4  mov     x2, x19
  1001500a8  bl      _objc_msgSend                            ; [[self functionCallTagHandlers] objectForKey:arg1]
  1001500ac  mov     x29, x29
  1001500b0  bl      _objc_retainAutoreleasedReturnValue
  1001500b4  mov     x22, x0
  1001500b8  mov     x0, x21
  1001500bc  bl      _objc_release
  1001500c0  mov     x0, x20
  1001500c4  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  1001500c8  mov     x0, x20
  1001500cc  bl      _objc_release
  1001500d0  mov     x0, x19
  1001500d4  bl      _objc_release
  1001500d8  mov     x0, x22
  1001500dc  ldp     x22, x21, [sp], #0x10
  1001500e0  ldp     x20, x19, [sp], #0x10
  1001500e4  ldp     x29, x30, [sp], #0x10
  1001500e8  b       _objc_autoreleaseReturnValue
  1001500ec  mov     x22, x0
  1001500f0  b       loc_100150100
  1001500f4  mov     x22, x0
  1001500f8  mov     x0, x21
  1001500fc  bl      _objc_release
loc_100150100:
  100150100  mov     x0, x20
  100150104  bl      _objc_sync_exit                          ; objc_sync_exit()
  100150108  mov     x0, x20
  10015010c  bl      _objc_release
  100150110  mov     x0, x19
  100150114  bl      _objc_release
  100150118  mov     x0, x22
  10015011c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer functionCallMacroHandlerForMacro:]
; address 0x100150120  size 216  kind objc
; ======================================================================
  100150120  stp     x29, x30, [sp, #-0x10]!
  100150124  mov     x29, sp
  100150128  stp     x20, x19, [sp, #-0x10]!
  10015012c  stp     x22, x21, [sp, #-0x10]!
  100150130  mov     x20, x0
  100150134  mov     x0, x2
  100150138  bl      _objc_retain
  10015013c  mov     x19, x0
  100150140  mov     x0, x20
  100150144  bl      _objc_retain
  100150148  mov     x20, x0
  10015014c  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100150150  adrp    x8, #0x10041c000
  100150154  nop
  100150158  ldr     x1, [x8, #0xfb8]
  10015015c  mov     x0, x20
  100150160  bl      _objc_msgSend                            ; [self functionCallMacroHandlers]
  100150164  mov     x29, x29
  100150168  bl      _objc_retainAutoreleasedReturnValue
  10015016c  mov     x21, x0
  100150170  adrp    x8, #0x100417000
  100150174  nop
  100150178  ldr     x1, [x8, #0x40]
  10015017c  mov     x2, x19
  100150180  bl      _objc_msgSend                            ; [[self functionCallMacroHandlers] objectForKey:arg1]
  100150184  mov     x29, x29
  100150188  bl      _objc_retainAutoreleasedReturnValue
  10015018c  mov     x22, x0
  100150190  mov     x0, x21
  100150194  bl      _objc_release
  100150198  mov     x0, x20
  10015019c  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  1001501a0  mov     x0, x20
  1001501a4  bl      _objc_release
  1001501a8  mov     x0, x19
  1001501ac  bl      _objc_release
  1001501b0  mov     x0, x22
  1001501b4  ldp     x22, x21, [sp], #0x10
  1001501b8  ldp     x20, x19, [sp], #0x10
  1001501bc  ldp     x29, x30, [sp], #0x10
  1001501c0  b       _objc_autoreleaseReturnValue
  1001501c4  mov     x22, x0
  1001501c8  b       loc_1001501d8
  1001501cc  mov     x22, x0
  1001501d0  mov     x0, x21
  1001501d4  bl      _objc_release
loc_1001501d8:
  1001501d8  mov     x0, x20
  1001501dc  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001501e0  mov     x0, x20
  1001501e4  bl      _objc_release
  1001501e8  mov     x0, x19
  1001501ec  bl      _objc_release
  1001501f0  mov     x0, x22
  1001501f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer evaluateTags:]
; address 0x1001501f8  size 148  kind objc
; ======================================================================
  1001501f8  stp     x29, x30, [sp, #-0x10]!
  1001501fc  mov     x29, sp
  100150200  stp     x20, x19, [sp, #-0x10]!
  100150204  stp     x22, x21, [sp, #-0x10]!
  100150208  mov     x20, x0
  10015020c  mov     x0, x2
  100150210  bl      _objc_retain
  100150214  mov     x19, x0
  100150218  adrp    x8, #0x10041d000
  10015021c  nop
  100150220  ldr     x1, [x8, #0xc60]
  100150224  mov     x0, x20
  100150228  bl      _objc_msgSend                            ; [self runtime]
  10015022c  mov     x29, x29
  100150230  bl      _objc_retainAutoreleasedReturnValue
  100150234  mov     x20, x0
  100150238  adrp    x8, #0x10041c000
  10015023c  nop
  100150240  ldr     x1, [x8, #0xfc0]
  100150244  mov     x2, x19
  100150248  bl      _objc_msgSend                            ; [[self runtime] evaluateTags:arg1]
  10015024c  mov     x0, x20
  100150250  bl      _objc_release
  100150254  mov     x0, x19
  100150258  ldp     x22, x21, [sp], #0x10
  10015025c  ldp     x20, x19, [sp], #0x10
  100150260  ldp     x29, x30, [sp], #0x10
  100150264  b       _objc_release
  100150268  mov     x21, x0
  10015026c  b       loc_10015027c
  100150270  mov     x21, x0
  100150274  mov     x0, x20
  100150278  bl      _objc_release
loc_10015027c:
  10015027c  mov     x0, x19
  100150280  bl      _objc_release
  100150284  mov     x0, x21
  100150288  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer loadWithCallback:]
; address 0x10015028c  size 232  kind objc
; ======================================================================
  10015028c  stp     x29, x30, [sp, #-0x10]!
  100150290  mov     x29, sp
  100150294  stp     x20, x19, [sp, #-0x10]!
  100150298  stp     x22, x21, [sp, #-0x10]!
  10015029c  mov     x20, x0
  1001502a0  mov     x0, x2
  1001502a4  bl      _objc_retain
  1001502a8  mov     x19, x0
  1001502ac  adrp    x8, #0x10041e000
  1001502b0  ldr     x0, [x8, #0x870]                         ; class TAGResourceLoaderScheduler
  1001502b4  adrp    x8, #0x100416000
  1001502b8  nop
  1001502bc  ldr     x1, [x8, #0xac8]
  1001502c0  bl      _objc_msgSend                            ; [TAGResourceLoaderScheduler alloc]
  1001502c4  mov     x21, x0
  1001502c8  adrp    x8, #0x10041d000
  1001502cc  nop
  1001502d0  ldr     x1, [x8, #0x1c0]
  1001502d4  mov     x0, x20
  1001502d8  bl      _objc_msgSend                            ; [self containerId]
  1001502dc  mov     x29, x29
  1001502e0  bl      _objc_retainAutoreleasedReturnValue
  1001502e4  mov     x22, x0
  1001502e8  adrp    x8, #0x10041c000
  1001502ec  nop
  1001502f0  ldr     x1, [x8, #0xf00]
  1001502f4  mov     x0, x21
  1001502f8  mov     x2, x22
  1001502fc  bl      _objc_msgSend                            ; [[TAGResourceLoaderScheduler alloc] initWithContainerId:[self containerId]]
  100150300  mov     x21, x0
  100150304  mov     x0, x22
  100150308  bl      _objc_release
  10015030c  adrp    x8, #0x10041c000
  100150310  nop
  100150314  ldr     x1, [x8, #0xfc8]
  100150318  mov     x0, x20
  10015031c  mov     x2, x19
  100150320  mov     x3, x21
  100150324  bl      _objc_msgSend                            ; [self loadWithCallback:arg1 resourceLoaderScheduler:[[TAGResourceLoaderScheduler alloc] initWithContainerId:[self containerId]]]
  100150328  mov     x0, x21
  10015032c  bl      _objc_release
  100150330  mov     x0, x19
  100150334  ldp     x22, x21, [sp], #0x10
  100150338  ldp     x20, x19, [sp], #0x10
  10015033c  ldp     x29, x30, [sp], #0x10
  100150340  b       _objc_release
  100150344  mov     x20, x0
  100150348  b       loc_100150364
  10015034c  mov     x20, x0
  100150350  mov     x0, x22
  100150354  b       loc_100150360
  100150358  mov     x20, x0
  10015035c  mov     x0, x21
loc_100150360:
  100150360  bl      _objc_release
loc_100150364:
  100150364  mov     x0, x19
  100150368  bl      _objc_release
  10015036c  mov     x0, x20
  100150370  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer loadWithCallback:resourceLoaderScheduler:]
; address 0x100150374  size 1280  kind objc
; ======================================================================
  100150374  stp     x29, x30, [sp, #-0x10]!
  100150378  mov     x29, sp
  10015037c  stp     x20, x19, [sp, #-0x10]!
  100150380  stp     x22, x21, [sp, #-0x10]!
  100150384  stp     x24, x23, [sp, #-0x10]!
  100150388  stp     x26, x25, [sp, #-0x10]!
  10015038c  stp     x28, x27, [sp, #-0x10]!
  100150390  mov     x20, x3
  100150394  mov     x21, x0
  100150398  mov     x0, x2
  10015039c  bl      _objc_retain
  1001503a0  mov     x19, x0
  1001503a4  mov     x0, x20
  1001503a8  bl      _objc_retain
  1001503ac  mov     x20, x0
  1001503b0  mov     x0, x21
  1001503b4  bl      _objc_retain
  1001503b8  mov     x21, x0
  1001503bc  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  1001503c0  adrp    x8, #0x10041c000
  1001503c4  nop
  1001503c8  ldr     x25, [x8, #0xf78]
  1001503cc  mov     x0, x21
  1001503d0  mov     x1, x25
  1001503d4  bl      _objc_msgSend                            ; [self diskLoadCallback]
  1001503d8  mov     x29, x29
  1001503dc  bl      _objc_retainAutoreleasedReturnValue
  1001503e0  mov     x22, x0
  1001503e4  bl      _objc_release
  1001503e8  cbnz    x22, loc_100150734                       ; if ([self diskLoadCallback] != 0)
  1001503ec  adrp    x8, #0x10041e000
  1001503f0  ldr     x0, [x8, #0x878]                         ; class TAGDiskLoadCallback
  1001503f4  adrp    x8, #0x100416000
  1001503f8  nop
  1001503fc  ldr     x23, [x8, #0xac8]
  100150400  mov     x1, x23
  100150404  bl      _objc_msgSend                            ; [TAGDiskLoadCallback alloc]
  100150408  adrp    x8, #0x10041c000
  10015040c  nop
  100150410  ldr     x24, [x8, #0xfd0]
  100150414  mov     x1, x24
  100150418  mov     x2, x19
  10015041c  mov     x3, x21
  100150420  bl      _objc_msgSend                            ; [[TAGDiskLoadCallback alloc] initWithCallback:arg1 container:self]
  100150424  mov     x22, x0
  100150428  adrp    x8, #0x10041c000
  10015042c  nop
  100150430  ldr     x1, [x8, #0xf80]
  100150434  mov     x0, x21
  100150438  mov     x2, x22
  10015043c  bl      _objc_msgSend                            ; [self setDiskLoadCallback:[[TAGDiskLoadCallback alloc] initWithCallback:arg1 container:self]]
  100150440  mov     x0, x22
  100150444  bl      _objc_release
  100150448  adrp    x8, #0x10041c000
  10015044c  nop
  100150450  ldr     x1, [x8, #0xf48]
  100150454  mov     x0, x21
  100150458  bl      _objc_msgSend                            ; [self isDefaultContainerRefreshMode]
  10015045c  cbz     w0, loc_100150484                        ; if ([self isDefaultContainerRefreshMode] == 0)
  100150460  adrp    x8, #0x10041e000
  100150464  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100150468  adrp    x8, #0x10041b000
  10015046c  nop
  100150470  ldr     x1, [x8, #0xea0]
  100150474  adrp    x2, #0x1003c7000
  100150478  add     x2, x2, #0x950                           ; @"Container is in DEFAULT_CONTAINER mode. Use default container."
  10015047c  bl      _objc_msgSend                            ; [TAGLog info:@"Container is in DEFAULT_CONTAINER mode. Use default container."]
  100150480  b       loc_1001506fc
loc_100150484:
  100150484  adrp    x8, #0x10041c000
  100150488  nop
  10015048c  ldr     x22, [x8, #0xfd8]
  100150490  mov     x0, x21
  100150494  mov     x1, x22
  100150498  bl      _objc_msgSend                            ; [self resourceStorage]
  10015049c  mov     x29, x29
  1001504a0  bl      _objc_retainAutoreleasedReturnValue
  1001504a4  mov     x26, x0
  1001504a8  mov     x0, x21
  1001504ac  mov     x1, x25
  1001504b0  bl      _objc_msgSend                            ; [self diskLoadCallback]
  1001504b4  mov     x29, x29
  1001504b8  bl      _objc_retainAutoreleasedReturnValue
  1001504bc  mov     x27, x0
  1001504c0  adrp    x8, #0x10041c000
  1001504c4  nop
  1001504c8  ldr     x25, [x8, #0xfe0]
  1001504cc  mov     x0, x26
  1001504d0  mov     x1, x25
  1001504d4  mov     x2, x27
  1001504d8  bl      _objc_msgSend                            ; [[self resourceStorage] setLoadCallback:[self diskLoadCallback]]
  1001504dc  mov     x0, x27
  1001504e0  bl      _objc_release
  1001504e4  mov     x0, x26
  1001504e8  bl      _objc_release
  1001504ec  adrp    x8, #0x10041e000
  1001504f0  ldr     x0, [x8, #0x880]                         ; class TAGNetworkLoadCallback
  1001504f4  mov     x1, x23
  1001504f8  bl      _objc_msgSend                            ; [TAGNetworkLoadCallback alloc]
  1001504fc  mov     x1, x24
  100150500  mov     x2, x19
  100150504  mov     x3, x21
  100150508  bl      _objc_msgSend                            ; [[TAGNetworkLoadCallback alloc] initWithCallback:arg1 container:self]
  10015050c  mov     x23, x0
  100150510  adrp    x8, #0x10041c000
  100150514  nop
  100150518  ldr     x1, [x8, #0xf90]
  10015051c  mov     x0, x21
  100150520  mov     x2, x23
  100150524  bl      _objc_msgSend                            ; [self setNetworkLoadCallback:[[TAGNetworkLoadCallback alloc] initWithCallback:arg1 container:self]]
  100150528  mov     x0, x23
  10015052c  bl      _objc_release
  100150530  adrp    x8, #0x10041c000
  100150534  nop
  100150538  ldr     x1, [x8, #0xf88]
  10015053c  mov     x0, x21
  100150540  bl      _objc_msgSend                            ; [self networkLoadCallback]
  100150544  mov     x29, x29
  100150548  bl      _objc_retainAutoreleasedReturnValue
  10015054c  mov     x23, x0
  100150550  mov     x0, x20
  100150554  mov     x1, x25
  100150558  mov     x2, x23
  10015055c  bl      _objc_msgSend                            ; [arg2 setLoadCallback:[self networkLoadCallback]]
  100150560  mov     x0, x23
  100150564  bl      _objc_release
  100150568  adrp    x27, #0x10041e000
  10015056c  ldr     x0, [x27, #0x8f8]                        ; class TAGPreviewManager
  100150570  adrp    x8, #0x10041b000
  100150574  nop
  100150578  ldr     x23, [x8, #0xd30]
  10015057c  mov     x1, x23
  100150580  bl      _objc_msgSend                            ; [TAGPreviewManager instance]
  100150584  mov     x29, x29
  100150588  bl      _objc_retainAutoreleasedReturnValue
  10015058c  mov     x24, x0
  100150590  adrp    x8, #0x10041d000
  100150594  nop
  100150598  ldr     x1, [x8, #0x1c0]
  10015059c  mov     x0, x21
  1001505a0  bl      _objc_msgSend                            ; [self containerId]
  1001505a4  mov     x29, x29
  1001505a8  bl      _objc_retainAutoreleasedReturnValue
  1001505ac  mov     x25, x0
  1001505b0  adrp    x8, #0x10041c000
  1001505b4  nop
  1001505b8  ldr     x1, [x8, #0xee0]
  1001505bc  mov     x0, x24
  1001505c0  mov     x2, x25
  1001505c4  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] isPreviewingContainer:[self containerId]]
  1001505c8  mov     x26, x0
  1001505cc  mov     x0, x25
  1001505d0  bl      _objc_release
  1001505d4  mov     x0, x24
  1001505d8  bl      _objc_release
  1001505dc  cbz     w26, loc_100150650                       ; if ([[TAGPreviewManager instance] isPreviewingContainer:[self containerId]] == 0)
  1001505e0  ldr     x0, [x27, #0x8f8]                        ; class TAGPreviewManager
  1001505e4  mov     x1, x23
  1001505e8  bl      _objc_msgSend                            ; [TAGPreviewManager instance]
  1001505ec  mov     x29, x29
  1001505f0  bl      _objc_retainAutoreleasedReturnValue
  1001505f4  mov     x24, x0
  1001505f8  adrp    x8, #0x10041c000
  1001505fc  nop
  100150600  ldr     x1, [x8, #0xfe8]
  100150604  bl      _objc_msgSend                            ; [[TAGPreviewManager instance] ctfeUrlPath]
  100150608  mov     x29, x29
  10015060c  bl      _objc_retainAutoreleasedReturnValue
  100150610  mov     x23, x0
  100150614  mov     x0, x24
  100150618  bl      _objc_release
  10015061c  adrp    x8, #0x10041c000
  100150620  nop
  100150624  ldr     x24, [x8, #0xff0]
  100150628  mov     x0, x21
  10015062c  mov     x1, x24
  100150630  mov     x2, x23
  100150634  bl      _objc_msgSend                            ; [self setCtfeUrlPathAndQuery:[[TAGPreviewManager instance] ctfeUrlPath]]
  100150638  mov     x0, x20
  10015063c  mov     x1, x24
  100150640  mov     x2, x23
  100150644  bl      _objc_msgSend                            ; [arg2 setCtfeUrlPathAndQuery:[[TAGPreviewManager instance] ctfeUrlPath]]
  100150648  mov     x0, x23
  10015064c  bl      _objc_release
loc_100150650:
  100150650  adrp    x8, #0x10041c000
  100150654  nop
  100150658  ldr     x23, [x8, #0xff8]
  10015065c  mov     x0, x21
  100150660  mov     x1, x23
  100150664  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100150668  mov     x29, x29
  10015066c  bl      _objc_retainAutoreleasedReturnValue
  100150670  mov     x24, x0
  100150674  bl      _objc_release
  100150678  cbz     x24, loc_1001506b4                       ; if ([self ctfeServerAddress] == 0)
  10015067c  mov     x0, x21
  100150680  mov     x1, x23
  100150684  bl      _objc_msgSend                            ; [self ctfeServerAddress]
  100150688  mov     x29, x29
  10015068c  bl      _objc_retainAutoreleasedReturnValue
  100150690  mov     x23, x0
  100150694  adrp    x8, #0x10041d000
  100150698  nop
  10015069c  ldr     x1, [x8]
  1001506a0  mov     x0, x20
  1001506a4  mov     x2, x23
  1001506a8  bl      _objc_msgSend                            ; [arg2 setCtfeServerAddress:[self ctfeServerAddress]]
  1001506ac  mov     x0, x23
  1001506b0  bl      _objc_release
loc_1001506b4:
  1001506b4  adrp    x8, #0x10041c000
  1001506b8  nop
  1001506bc  ldr     x1, [x8, #0xf68]
  1001506c0  mov     x0, x21
  1001506c4  mov     x2, x20
  1001506c8  bl      _objc_msgSend                            ; [self setNetworkLoadScheduler:arg2]
  1001506cc  mov     x0, x21
  1001506d0  mov     x1, x22
  1001506d4  bl      _objc_msgSend                            ; [self resourceStorage]
  1001506d8  mov     x29, x29
  1001506dc  bl      _objc_retainAutoreleasedReturnValue
  1001506e0  mov     x22, x0
  1001506e4  adrp    x8, #0x10041d000
  1001506e8  nop
  1001506ec  ldr     x1, [x8, #8]
  1001506f0  bl      _objc_msgSend                            ; [[self resourceStorage] loadResourceFromDiskInBackground]
  1001506f4  mov     x0, x22
  1001506f8  bl      _objc_release
loc_1001506fc:
  1001506fc  mov     x0, x21
  100150700  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100150704  mov     x0, x21
  100150708  bl      _objc_release
  10015070c  mov     x0, x20
  100150710  bl      _objc_release
  100150714  mov     x0, x19
  100150718  ldp     x28, x27, [sp], #0x10
  10015071c  ldp     x26, x25, [sp], #0x10
  100150720  ldp     x24, x23, [sp], #0x10
  100150724  ldp     x22, x21, [sp], #0x10
  100150728  ldp     x20, x19, [sp], #0x10
  10015072c  ldp     x29, x30, [sp], #0x10
  100150730  b       _objc_release
loc_100150734:
  100150734  adrp    x8, #0x10041d000
  100150738  nop
  10015073c  ldr     x8, [x8, #0x1c0]
  100150740  mov     x0, x21
  100150744  mov     x1, x8
  100150748  bl      _objc_msgSend                            ; [self containerId]
  10015074c  mov     x29, x29
  100150750  bl      _objc_retainAutoreleasedReturnValue
  100150754  mov     x23, x0
  100150758  adrp    x8, #0x10041a000
  10015075c  nop
  100150760  ldr     x8, [x8, #0x620]
  100150764  adrp    x9, #0x1003c7000
  100150768  add     x9, x9, #0x910                           ; @"Container already loaded: container Id:"
  10015076c  mov     x0, x9
  100150770  mov     x1, x8
  100150774  mov     x2, x23
  100150778  bl      _objc_msgSend                            ; [@"Container already loaded: container Id:" stringByAppendingString:[self containerId]]
  10015077c  mov     x29, x29
  100150780  bl      _objc_retainAutoreleasedReturnValue
  100150784  mov     x22, x0
  100150788  mov     x0, x23
  10015078c  bl      _objc_release
  100150790  adrp    x8, #0x10041d000
  100150794  ldr     x8, [x8, #0xfc8]                         ; class NSException
  100150798  adrp    x9, #0x10041b000
  10015079c  nop
  1001507a0  ldr     x9, [x9, #0x380]
  1001507a4  mov     x4, #0
  1001507a8  adrp    x10, #0x1003c7000
  1001507ac  add     x10, x10, #0x930                         ; @"ContainerAlreadyLoadedException"
  1001507b0  mov     x0, x8
  1001507b4  mov     x1, x9
  1001507b8  mov     x2, x10
  1001507bc  mov     x3, x22
  1001507c0  bl      _objc_msgSend                            ; [NSException exceptionWithName:@"ContainerAlreadyLoadedException" reason:[@"Container already loaded: container Id:" stringByAppendingString:[self containerId]] userInfo:0]
  1001507c4  mov     x29, x29
  1001507c8  bl      _objc_retainAutoreleasedReturnValue
  1001507cc  bl      _objc_autorelease
  1001507d0  bl      _objc_exception_throw                    ; objc_exception_throw([NSException exceptionWithName:@"ContainerAlreadyLoadedException" reason:[@"Container already loaded: container Id:" stringByAppendingString:[self containerId]] userInfo:0])
  1001507d4  mov     x28, x0
  1001507d8  b       loc_10015084c
  1001507dc  b       loc_100150840
  1001507e0  mov     x28, x0
  1001507e4  b       loc_1001507f4
  1001507e8  mov     x28, x0
  1001507ec  mov     x0, x27
  1001507f0  bl      _objc_release
loc_1001507f4:
  1001507f4  mov     x0, x26
  1001507f8  b       loc_100150848
  1001507fc  b       loc_100150834
  100150800  b       loc_100150834
  100150804  mov     x28, x0
  100150808  b       loc_100150820
  10015080c  mov     x28, x0
  100150810  mov     x0, x25
  100150814  bl      _objc_release
  100150818  b       loc_100150820
  10015081c  mov     x28, x0
loc_100150820:
  100150820  mov     x0, x24
  100150824  b       loc_100150848
  100150828  b       loc_100150834
  10015082c  b       loc_100150834
  100150830  b       loc_100150840
loc_100150834:
  100150834  mov     x28, x0
  100150838  mov     x0, x23
  10015083c  b       loc_100150848
loc_100150840:
  100150840  mov     x28, x0
  100150844  mov     x0, x22
loc_100150848:
  100150848  bl      _objc_release
loc_10015084c:
  10015084c  mov     x0, x21
  100150850  bl      _objc_sync_exit                          ; objc_sync_exit()
  100150854  mov     x0, x21
  100150858  bl      _objc_release
  10015085c  mov     x0, x20
  100150860  bl      _objc_release
  100150864  mov     x0, x19
  100150868  bl      _objc_release
  10015086c  mov     x0, x28
  100150870  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer loadAfterDelay:]
; address 0x100150874  size 320  kind objc
; ======================================================================
  100150874  stp     x29, x30, [sp, #-0x10]!
  100150878  mov     x29, sp
  10015087c  stp     x20, x19, [sp, #-0x10]!
  100150880  stp     x22, x21, [sp, #-0x10]!
  100150884  stp     x24, x23, [sp, #-0x10]!
  100150888  stp     d9, d8, [sp, #-0x10]!
  10015088c  mov     v8.16b, v0.16b
  100150890  bl      _objc_retain
  100150894  mov     x19, x0
  100150898  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10015089c  adrp    x8, #0x10041c000
  1001508a0  nop
  1001508a4  ldr     x1, [x8, #0xf48]
  1001508a8  mov     x0, x19
  1001508ac  bl      _objc_msgSend                            ; [self isDefaultContainerRefreshMode]
  1001508b0  tbnz    w0, #0, loc_100150944                    ; if (([self isDefaultContainerRefreshMode] & 1))
  1001508b4  adrp    x8, #0x10041c000
  1001508b8  nop
  1001508bc  ldr     x1, [x8, #0xf60]
  1001508c0  mov     x0, x19
  1001508c4  bl      _objc_msgSend                            ; [self networkLoadScheduler]
  1001508c8  mov     x29, x29
  1001508cc  bl      _objc_retainAutoreleasedReturnValue
  1001508d0  mov     x20, x0
  1001508d4  adrp    x8, #0x10041c000
  1001508d8  nop
  1001508dc  ldr     x1, [x8, #0xe48]
  1001508e0  mov     x0, x19
  1001508e4  bl      _objc_msgSend                            ; [self lastLoadedSupplementedResource]
  1001508e8  mov     x29, x29
  1001508ec  bl      _objc_retainAutoreleasedReturnValue
  1001508f0  mov     x21, x0
  1001508f4  adrp    x8, #0x10041c000
  1001508f8  nop
  1001508fc  ldr     x1, [x8, #0xed8]
  100150900  bl      _objc_msgSend                            ; [[self lastLoadedSupplementedResource] fingerprint]
  100150904  mov     x29, x29
  100150908  bl      _objc_retainAutoreleasedReturnValue
  10015090c  mov     x22, x0
  100150910  adrp    x8, #0x10041d000
  100150914  nop
  100150918  ldr     x1, [x8, #0x10]
  10015091c  mov     x0, x20
  100150920  mov     v0.16b, v8.16b
  100150924  mov     x2, x22
  100150928  bl      _objc_msgSend                            ; [[self networkLoadScheduler] loadAfterDelay:arg1 withPreviousVersion:[[self lastLoadedSupplementedResource] fingerprint]]
  10015092c  mov     x0, x22
  100150930  bl      _objc_release
  100150934  mov     x0, x21
  100150938  bl      _objc_release
  10015093c  mov     x0, x20
  100150940  bl      _objc_release
loc_100150944:
  100150944  mov     x0, x19
  100150948  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  10015094c  mov     x0, x19
  100150950  ldp     d9, d8, [sp], #0x10
  100150954  ldp     x24, x23, [sp], #0x10
  100150958  ldp     x22, x21, [sp], #0x10
  10015095c  ldp     x20, x19, [sp], #0x10
  100150960  ldp     x29, x30, [sp], #0x10
  100150964  b       _objc_release
  100150968  mov     x23, x0
  10015096c  b       loc_10015099c
  100150970  mov     x23, x0
  100150974  b       loc_100150994
  100150978  mov     x23, x0
  10015097c  b       loc_10015098c
  100150980  mov     x23, x0
  100150984  mov     x0, x22
  100150988  bl      _objc_release
loc_10015098c:
  10015098c  mov     x0, x21
  100150990  bl      _objc_release
loc_100150994:
  100150994  mov     x0, x20
  100150998  bl      _objc_release
loc_10015099c:
  10015099c  mov     x0, x19
  1001509a0  bl      _objc_sync_exit                          ; objc_sync_exit()
  1001509a4  mov     x0, x19
  1001509a8  bl      _objc_release
  1001509ac  mov     x0, x23
  1001509b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer setCtfeUrlPathAndQuery:]
; address 0x1001509b4  size 172  kind objc
; ======================================================================
  1001509b4  stp     x29, x30, [sp, #-0x10]!
  1001509b8  mov     x29, sp
  1001509bc  stp     x20, x19, [sp, #-0x10]!
  1001509c0  stp     x22, x21, [sp, #-0x10]!
  1001509c4  mov     x20, x0
  1001509c8  mov     x0, x2
  1001509cc  bl      _objc_retain
  1001509d0  adrp    x8, #0x100420000
  1001509d4  ldrsw   x21, [x8, #0xa30]                        ; ivar offset TAGContainer._ctfeUrlPathAndQuery (+0x38)
  1001509d8  bl      _objc_retain
  1001509dc  mov     x19, x0
  1001509e0  ldr     x0, [x20, x21]                           ; x0 = self->_ctfeUrlPathAndQuery
  1001509e4  str     x19, [x20, x21]                          ; self->_ctfeUrlPathAndQuery = arg1
  1001509e8  bl      _objc_release
  1001509ec  adrp    x8, #0x10041c000
  1001509f0  nop
  1001509f4  ldr     x1, [x8, #0xf60]
  1001509f8  mov     x0, x20
  1001509fc  bl      _objc_msgSend                            ; [self networkLoadScheduler]
  100150a00  mov     x29, x29
  100150a04  bl      _objc_retainAutoreleasedReturnValue
  100150a08  mov     x20, x0
  100150a0c  adrp    x8, #0x10041c000
  100150a10  nop
  100150a14  ldr     x1, [x8, #0xff0]
  100150a18  mov     x2, x19
  100150a1c  bl      _objc_msgSend                            ; [[self networkLoadScheduler] setCtfeUrlPathAndQuery:arg1]
  100150a20  mov     x0, x20
  100150a24  bl      _objc_release
  100150a28  mov     x0, x19
  100150a2c  ldp     x22, x21, [sp], #0x10
  100150a30  ldp     x20, x19, [sp], #0x10
  100150a34  ldp     x29, x30, [sp], #0x10
  100150a38  b       _objc_release
  100150a3c  mov     x21, x0
  100150a40  b       loc_100150a50
  100150a44  mov     x21, x0
  100150a48  mov     x0, x20
  100150a4c  bl      _objc_release
loc_100150a50:
  100150a50  mov     x0, x19
  100150a54  bl      _objc_release
  100150a58  mov     x0, x21
  100150a5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer saveResourceToDisk:]
; address 0x100150a60  size 548  kind objc
; ======================================================================
  100150a60  stp     x29, x30, [sp, #-0x10]!
  100150a64  mov     x29, sp
  100150a68  stp     x20, x19, [sp, #-0x10]!
  100150a6c  stp     x22, x21, [sp, #-0x10]!
  100150a70  stp     x24, x23, [sp, #-0x10]!
  100150a74  stp     x26, x25, [sp, #-0x10]!
  100150a78  sub     sp, sp, #0x10
  100150a7c  mov     x20, x0
  100150a80  mov     x0, x2
  100150a84  bl      _objc_retain
  100150a88  mov     x19, x0
  100150a8c  mov     x0, x20
  100150a90  bl      _objc_retain
  100150a94  mov     x20, x0
  100150a98  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100150a9c  adrp    x8, #0x10041d000
  100150aa0  ldr     x21, [x8, #0xf78]                        ; class NSString
  100150aa4  adrp    x8, #0x10041c000
  100150aa8  nop
  100150aac  ldr     x23, [x8, #0xe98]
  100150ab0  mov     x0, x20
  100150ab4  mov     x1, x23
  100150ab8  bl      _objc_msgSend                            ; [self lastRefreshTime]
  100150abc  adrp    x8, #0x100416000
  100150ac0  nop
  100150ac4  ldr     x1, [x8, #0xee8]
  100150ac8  str     d0, [sp]
  100150acc  adrp    x2, #0x1003c7000
  100150ad0  add     x2, x2, #0x970                           ; @"Saving resource to disk with timestamp of %f"
  100150ad4  mov     x0, x21
  100150ad8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Saving resource to disk with timestamp of %f", [self lastRefreshTime]]
  100150adc  mov     x29, x29
  100150ae0  bl      _objc_retainAutoreleasedReturnValue
  100150ae4  mov     x21, x0
  100150ae8  adrp    x8, #0x10041e000
  100150aec  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100150af0  adrp    x8, #0x10041b000
  100150af4  nop
  100150af8  ldr     x1, [x8, #0xb08]
  100150afc  mov     x2, x21
  100150b00  bl      _objc_msgSend                            ; [TAGLog verbose:[NSString stringWithFormat:@"Saving resource to disk with timestamp of %f", [self lastRefreshTime]]]
  100150b04  adrp    x8, #0x10041e000
  100150b08  ldr     x0, [x8, #0x850]                         ; class TAGPResourceWithMetadata
  100150b0c  adrp    x8, #0x100416000
  100150b10  nop
  100150b14  ldr     x24, [x8, #0xac8]
  100150b18  mov     x1, x24
  100150b1c  bl      _objc_msgSend                            ; [TAGPResourceWithMetadata alloc]
  100150b20  adrp    x8, #0x100416000
  100150b24  nop
  100150b28  ldr     x25, [x8, #0xab8]
  100150b2c  mov     x1, x25
  100150b30  bl      _objc_msgSend                            ; [[TAGPResourceWithMetadata alloc] init]
  100150b34  mov     x22, x0
  100150b38  mov     x0, x20
  100150b3c  mov     x1, x23
  100150b40  bl      _objc_msgSend                            ; [self lastRefreshTime]
  100150b44  fcvtzs  x2, d0
  100150b48  adrp    x8, #0x10041d000
  100150b4c  nop
  100150b50  ldr     x1, [x8, #0x18]
  100150b54  mov     x0, x22
  100150b58  bl      _objc_msgSend                            ; [[[TAGPResourceWithMetadata alloc] init] setTimeStamp:(int)[self lastRefreshTime]]
  100150b5c  adrp    x8, #0x10041e000
  100150b60  ldr     x0, [x8, #0x818]                         ; class TAGPResource
  100150b64  mov     x1, x24
  100150b68  bl      _objc_msgSend                            ; [TAGPResource alloc]
  100150b6c  mov     x1, x25
  100150b70  bl      _objc_msgSend                            ; [[TAGPResource alloc] init]
  100150b74  mov     x23, x0
  100150b78  adrp    x8, #0x10041c000
  100150b7c  nop
  100150b80  ldr     x1, [x8, #0xe50]
  100150b84  mov     x0, x22
  100150b88  mov     x2, x23
  100150b8c  bl      _objc_msgSend                            ; [[[TAGPResourceWithMetadata alloc] init] setResource:[[TAGPResource alloc] init]]
  100150b90  mov     x0, x23
  100150b94  bl      _objc_release
  100150b98  adrp    x8, #0x10041d000
  100150b9c  nop
  100150ba0  ldr     x1, [x8, #0x20]
  100150ba4  mov     x0, x22
  100150ba8  mov     x2, x19
  100150bac  bl      _objc_msgSend                            ; [[[TAGPResourceWithMetadata alloc] init] setSupplementedResource:arg1]
  100150bb0  adrp    x8, #0x10041c000
  100150bb4  nop
  100150bb8  ldr     x1, [x8, #0xfd8]
  100150bbc  mov     x0, x20
  100150bc0  bl      _objc_msgSend                            ; [self resourceStorage]
  100150bc4  mov     x29, x29
  100150bc8  bl      _objc_retainAutoreleasedReturnValue
  100150bcc  mov     x23, x0
  100150bd0  adrp    x8, #0x10041d000
  100150bd4  nop
  100150bd8  ldr     x1, [x8, #0x28]
  100150bdc  mov     x2, x22
  100150be0  bl      _objc_msgSend                            ; [[self resourceStorage] saveResourceToDiskInBackground:[[TAGPResourceWithMetadata alloc] init]]
  100150be4  mov     x0, x23
  100150be8  bl      _objc_release
  100150bec  mov     x0, x22
  100150bf0  bl      _objc_release
  100150bf4  mov     x0, x21
  100150bf8  bl      _objc_release
  100150bfc  mov     x0, x20
  100150c00  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100150c04  mov     x0, x20
  100150c08  bl      _objc_release
  100150c0c  mov     x0, x19
  100150c10  sub     sp, x29, #0x40
  100150c14  ldp     x26, x25, [sp], #0x10
  100150c18  ldp     x24, x23, [sp], #0x10
  100150c1c  ldp     x22, x21, [sp], #0x10
  100150c20  ldp     x20, x19, [sp], #0x10
  100150c24  ldp     x29, x30, [sp], #0x10
  100150c28  b       _objc_release
  100150c2c  mov     x24, x0
  100150c30  b       loc_100150c64
  100150c34  mov     x24, x0
  100150c38  b       loc_100150c5c
  100150c3c  b       loc_100150c48
  100150c40  mov     x24, x0
  100150c44  b       loc_100150c54
loc_100150c48:
  100150c48  mov     x24, x0
  100150c4c  mov     x0, x23
  100150c50  bl      _objc_release
loc_100150c54:
  100150c54  mov     x0, x22
  100150c58  bl      _objc_release
loc_100150c5c:
  100150c5c  mov     x0, x21
  100150c60  bl      _objc_release
loc_100150c64:
  100150c64  mov     x0, x20
  100150c68  bl      _objc_sync_exit                          ; objc_sync_exit()
  100150c6c  mov     x0, x20
  100150c70  bl      _objc_release
  100150c74  mov     x0, x19
  100150c78  bl      _objc_release
  100150c7c  mov     x0, x24
  100150c80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer setupEvaluatorsWithResource:]
; address 0x100150c84  size 452  kind objc
; ======================================================================
  100150c84  stp     x29, x30, [sp, #-0x10]!
  100150c88  mov     x29, sp
  100150c8c  stp     x20, x19, [sp, #-0x10]!
  100150c90  stp     x22, x21, [sp, #-0x10]!
  100150c94  sub     sp, sp, #0x10
  100150c98  mov     x20, x0
  100150c9c  mov     x0, x2
  100150ca0  bl      _objc_retain
  100150ca4  mov     x19, x0
  100150ca8  adrp    x8, #0x10041e000
  100150cac  ldr     x0, [x8, #0x888]                         ; class TAGResourceUtil
  100150cb0  adrp    x8, #0x10041d000
  100150cb4  nop
  100150cb8  ldr     x1, [x8, #0x30]
  100150cbc  mov     x2, x19
  100150cc0  bl      _objc_msgSend                            ; [TAGResourceUtil expandResource:arg1]
  100150cc4  mov     x29, x29
  100150cc8  bl      _objc_retainAutoreleasedReturnValue
  100150ccc  mov     x21, x0
  100150cd0  adrp    x8, #0x10041d000
  100150cd4  nop
  100150cd8  ldr     x1, [x8, #0x38]
  100150cdc  mov     x0, x20
  100150ce0  mov     x2, x21
  100150ce4  bl      _objc_msgSend                            ; [self setupEvaluatorsWithExpandedResource:[TAGResourceUtil expandResource:arg1]]
loc_100150ce8:
  100150ce8  mov     x0, x21
  100150cec  bl      _objc_release
  100150cf0  mov     x0, x19
  100150cf4  sub     sp, x29, #0x20
  100150cf8  ldp     x22, x21, [sp], #0x10
  100150cfc  ldp     x20, x19, [sp], #0x10
  100150d00  ldp     x29, x30, [sp], #0x10
  100150d04  b       _objc_release
  100150d08  mov     x8, x1
  100150d0c  mov     x22, x0
  100150d10  cmp     w8, #1
  100150d14  b.ne    loc_100150e38                            ; if (w8 != 1)
  100150d18  mov     x0, x22
  100150d1c  bl      _objc_begin_catch                        ; objc_begin_catch()
  100150d20  mov     x29, x29
  100150d24  bl      _objc_retainAutoreleasedReturnValue
  100150d28  mov     x20, x0
  100150d2c  adrp    x8, #0x100417000
  100150d30  nop
  100150d34  ldr     x8, [x8, #0x450]
  100150d38  mov     x1, x8
  100150d3c  bl      _objc_msgSend                            ; [objc_begin_catch() name]
  100150d40  mov     x29, x29
  100150d44  bl      _objc_retainAutoreleasedReturnValue
  100150d48  mov     x21, x0
  100150d4c  adrp    x8, #0x100416000
  100150d50  nop
  100150d54  ldr     x8, [x8, #0xf58]
  100150d58  adrp    x9, #0x1003c7000
  100150d5c  add     x9, x9, #0x990                           ; @"InvalidResourceException"
  100150d60  mov     x1, x8
  100150d64  mov     x2, x9
  100150d68  bl      _objc_msgSend                            ; [[objc_begin_catch() name] isEqualToString:@"InvalidResourceException"]
  100150d6c  mov     x22, x0
  100150d70  mov     x0, x21
  100150d74  bl      _objc_release
  100150d78  cbz     w22, loc_100150e0c                       ; if ([[objc_begin_catch() name] isEqualToString:@"InvalidResourceException"] == 0)
  100150d7c  adrp    x8, #0x10041d000
  100150d80  ldr     x8, [x8, #0xf78]                         ; class NSString
  100150d84  adrp    x9, #0x100416000
  100150d88  nop
  100150d8c  ldr     x9, [x9, #0xee8]
  100150d90  stp     x19, x20, [sp]
  100150d94  adrp    x10, #0x1003c7000
  100150d98  add     x10, x10, #0x9b0                         ; @"Not loading resource: %@ because it is invalid: %@"
  100150d9c  mov     x0, x8
  100150da0  mov     x1, x9
  100150da4  mov     x2, x10
  100150da8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Not loading resource: %@ because it is invalid: %@", sp[0], objc_begin_catch()]
  100150dac  mov     x29, x29
  100150db0  bl      _objc_retainAutoreleasedReturnValue
  100150db4  mov     x21, x0
  100150db8  adrp    x8, #0x10041e000
  100150dbc  ldr     x8, [x8, #0x538]                         ; class TAGLog
  100150dc0  adrp    x9, #0x10041b000
  100150dc4  nop
  100150dc8  ldr     x9, [x9, #0xdd0]
  100150dcc  mov     x0, x8
  100150dd0  mov     x1, x9
  100150dd4  mov     x2, x21
  100150dd8  bl      _objc_msgSend                            ; [TAGLog error:[NSString stringWithFormat:@"Not loading resource: %@ because it is invalid: %@", sp[0], objc_begin_catch()]]
  100150ddc  mov     x0, x21
  100150de0  bl      _objc_release
  100150de4  mov     x0, x20
  100150de8  bl      _objc_release
  100150dec  bl      _objc_end_catch                          ; objc_end_catch()
  100150df0  mov     x21, #0
  100150df4  b       loc_100150ce8
  100150df8  mov     x22, x0
  100150dfc  mov     x0, x21
  100150e00  bl      _objc_release
  100150e04  b       loc_100150e38
  100150e08  b       loc_100150e20
loc_100150e0c:
  100150e0c  mov     x0, x20
  100150e10  bl      _objc_retainAutorelease
  100150e14  bl      _objc_exception_throw                    ; objc_exception_throw()
  100150e18  mov     x22, x0
  100150e1c  b       loc_100150e2c
loc_100150e20:
  100150e20  mov     x22, x0
  100150e24  mov     x0, x21
  100150e28  bl      _objc_release
loc_100150e2c:
  100150e2c  mov     x0, x20
  100150e30  bl      _objc_release
  100150e34  bl      _objc_end_catch                          ; objc_end_catch()
loc_100150e38:
  100150e38  mov     x0, x19
  100150e3c  bl      _objc_release
  100150e40  mov     x0, x22
  100150e44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer setSupplementals:]
; address 0x100150e48  size 148  kind objc
; ======================================================================
  100150e48  stp     x29, x30, [sp, #-0x10]!
  100150e4c  mov     x29, sp
  100150e50  stp     x20, x19, [sp, #-0x10]!
  100150e54  stp     x22, x21, [sp, #-0x10]!
  100150e58  mov     x20, x0
  100150e5c  mov     x0, x2
  100150e60  bl      _objc_retain
  100150e64  mov     x19, x0
  100150e68  adrp    x8, #0x10041d000
  100150e6c  nop
  100150e70  ldr     x1, [x8, #0xc60]
  100150e74  mov     x0, x20
  100150e78  bl      _objc_msgSend                            ; [self runtime]
  100150e7c  mov     x29, x29
  100150e80  bl      _objc_retainAutoreleasedReturnValue
  100150e84  mov     x20, x0
  100150e88  adrp    x8, #0x10041c000
  100150e8c  nop
  100150e90  ldr     x1, [x8, #0xe78]
  100150e94  mov     x2, x19
  100150e98  bl      _objc_msgSend                            ; [[self runtime] setSupplementals:arg1]
  100150e9c  mov     x0, x20
  100150ea0  bl      _objc_release
  100150ea4  mov     x0, x19
  100150ea8  ldp     x22, x21, [sp], #0x10
  100150eac  ldp     x20, x19, [sp], #0x10
  100150eb0  ldp     x29, x30, [sp], #0x10
  100150eb4  b       _objc_release
  100150eb8  mov     x21, x0
  100150ebc  b       loc_100150ecc
  100150ec0  mov     x21, x0
  100150ec4  mov     x0, x20
  100150ec8  bl      _objc_release
loc_100150ecc:
  100150ecc  mov     x0, x19
  100150ed0  bl      _objc_release
  100150ed4  mov     x0, x21
  100150ed8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer setupEvaluatorsWithExpandedResource:]
; address 0x100150edc  size 504  kind objc
; ======================================================================
  100150edc  stp     x29, x30, [sp, #-0x10]!
  100150ee0  mov     x29, sp
  100150ee4  stp     x20, x19, [sp, #-0x10]!
  100150ee8  stp     x22, x21, [sp, #-0x10]!
  100150eec  stp     x24, x23, [sp, #-0x10]!
  100150ef0  stp     x26, x25, [sp, #-0x10]!
  100150ef4  mov     x21, x0
  100150ef8  mov     x0, x2
  100150efc  bl      _objc_retain
  100150f00  mov     x19, x0
  100150f04  adrp    x8, #0x10041d000
  100150f08  nop
  100150f0c  ldr     x1, [x8, #0xc08]
  100150f10  bl      _objc_msgSend                            ; [arg1 version]
  100150f14  mov     x29, x29
  100150f18  bl      _objc_retainAutoreleasedReturnValue
  100150f1c  mov     x20, x0
  100150f20  adrp    x8, #0x10041d000
  100150f24  nop
  100150f28  ldr     x1, [x8, #0x40]
  100150f2c  mov     x0, x21
  100150f30  mov     x2, x20
  100150f34  bl      _objc_msgSend                            ; [self setResourceVersion:[arg1 version]]
  100150f38  mov     x0, x20
  100150f3c  bl      _objc_release
  100150f40  adrp    x8, #0x10041e000
  100150f44  ldr     x0, [x8, #0x890]                         ; class TAGFunctionCallMacroHandlerAdapter
  100150f48  adrp    x8, #0x100416000
  100150f4c  nop
  100150f50  ldr     x22, [x8, #0xac8]
  100150f54  mov     x1, x22
  100150f58  bl      _objc_msgSend                            ; [TAGFunctionCallMacroHandlerAdapter alloc]
  100150f5c  adrp    x8, #0x10041d000
  100150f60  nop
  100150f64  ldr     x23, [x8, #0x48]
  100150f68  mov     x1, x23
  100150f6c  mov     x2, x21
  100150f70  bl      _objc_msgSend                            ; [[TAGFunctionCallMacroHandlerAdapter alloc] initWithContainer:self]
  100150f74  mov     x20, x0
  100150f78  adrp    x8, #0x10041e000
  100150f7c  ldr     x0, [x8, #0x898]                         ; class TAGFunctionCallTagHandlerAdapter
  100150f80  mov     x1, x22
  100150f84  bl      _objc_msgSend                            ; [TAGFunctionCallTagHandlerAdapter alloc]
  100150f88  mov     x1, x23
  100150f8c  mov     x2, x21
  100150f90  bl      _objc_msgSend                            ; [[TAGFunctionCallTagHandlerAdapter alloc] initWithContainer:self]
  100150f94  mov     x22, x0
  100150f98  adrp    x8, #0x10041e000
  100150f9c  ldr     x25, [x8, #0x8a0]                        ; class TAGRuntime
  100150fa0  adrp    x8, #0x10041c000
  100150fa4  nop
  100150fa8  ldr     x1, [x8, #0xfa0]
  100150fac  mov     x0, x21
  100150fb0  bl      _objc_msgSend                            ; [self tagManager]
  100150fb4  mov     x29, x29
  100150fb8  bl      _objc_retainAutoreleasedReturnValue
  100150fbc  mov     x23, x0
  100150fc0  adrp    x8, #0x10041d000
  100150fc4  nop
  100150fc8  ldr     x1, [x8, #0xc20]
  100150fcc  bl      _objc_msgSend                            ; [[self tagManager] dataLayer]
  100150fd0  mov     x29, x29
  100150fd4  bl      _objc_retainAutoreleasedReturnValue
  100150fd8  mov     x24, x0
  100150fdc  adrp    x8, #0x10041d000
  100150fe0  nop
  100150fe4  ldr     x1, [x8, #0x50]
  100150fe8  mov     x0, x25
  100150fec  mov     x2, x19
  100150ff0  mov     x3, x24
  100150ff4  mov     x4, x20
  100150ff8  mov     x5, x22
  100150ffc  bl      _objc_msgSend                            ; [TAGRuntime runtimeWithResource:arg1 dataLayer:[[self tagManager] dataLayer] functionCallMacroEvaluator:[[TAGFunctionCallMacroHandlerAdapter alloc] initWithContainer:self] functionCallTagEvaluator:[[TAGFunctionCallTagHandlerAdapter alloc] initWithContainer:self]]
  100151000  mov     x29, x29
  100151004  bl      _objc_retainAutoreleasedReturnValue
  100151008  mov     x25, x0
  10015100c  adrp    x8, #0x10041c000
  100151010  nop
  100151014  ldr     x1, [x8, #0xf98]
  100151018  mov     x0, x21
  10015101c  mov     x2, x25
  100151020  bl      _objc_msgSend                            ; [self setRuntime:[TAGRuntime runtimeWithResource:arg1 dataLayer:[[self tagManager] dataLayer] functionCallMacroEvaluator:[[TAGFunctionCallMacroHandlerAdapter alloc] initWithContainer:self] functionCallTagEvaluator:[[TAGFunctionCallTagHandlerAdapter alloc] initWithContainer:self]]]
  100151024  mov     x0, x25
  100151028  bl      _objc_release
  10015102c  mov     x0, x24
  100151030  bl      _objc_release
  100151034  mov     x0, x23
  100151038  bl      _objc_release
  10015103c  mov     x0, x22
  100151040  bl      _objc_release
  100151044  mov     x0, x20
  100151048  bl      _objc_release
  10015104c  mov     x0, x19
  100151050  ldp     x26, x25, [sp], #0x10
  100151054  ldp     x24, x23, [sp], #0x10
  100151058  ldp     x22, x21, [sp], #0x10
  10015105c  ldp     x20, x19, [sp], #0x10
  100151060  ldp     x29, x30, [sp], #0x10
  100151064  b       _objc_release
  100151068  mov     x21, x0
  10015106c  b       loc_1001510bc
  100151070  mov     x21, x0
  100151074  b       loc_1001510c4
  100151078  mov     x21, x0
  10015107c  b       loc_1001510bc
  100151080  mov     x21, x0
  100151084  b       loc_1001510b4
  100151088  mov     x21, x0
  10015108c  b       loc_1001510ac
  100151090  mov     x21, x0
  100151094  b       loc_1001510a4
  100151098  mov     x21, x0
  10015109c  mov     x0, x25
  1001510a0  bl      _objc_release
loc_1001510a4:
  1001510a4  mov     x0, x24
  1001510a8  bl      _objc_release
loc_1001510ac:
  1001510ac  mov     x0, x23
  1001510b0  bl      _objc_release
loc_1001510b4:
  1001510b4  mov     x0, x22
  1001510b8  bl      _objc_release
loc_1001510bc:
  1001510bc  mov     x0, x20
  1001510c0  bl      _objc_release
loc_1001510c4:
  1001510c4  mov     x0, x19
  1001510c8  bl      _objc_release
  1001510cc  mov     x0, x21
  1001510d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer currentTimeInMilliseconds]
; address 0x1001510d4  size 128  kind objc
; ======================================================================
  1001510d4  stp     x29, x30, [sp, #-0x10]!
  1001510d8  mov     x29, sp
  1001510dc  stp     x20, x19, [sp, #-0x10]!
  1001510e0  stp     d9, d8, [sp, #-0x10]!
  1001510e4  adrp    x8, #0x10041e000
  1001510e8  ldr     x0, [x8, #0x38]                          ; class NSDate
  1001510ec  adrp    x8, #0x100418000
  1001510f0  nop
  1001510f4  ldr     x1, [x8, #0x158]
  1001510f8  bl      _objc_msgSend                            ; [NSDate date]
  1001510fc  mov     x29, x29
  100151100  bl      _objc_retainAutoreleasedReturnValue
  100151104  mov     x19, x0
  100151108  adrp    x8, #0x10041d000
  10015110c  nop
  100151110  ldr     x1, [x8, #0x5c8]
  100151114  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSince1970]
  100151118  nop
  10015111c  ldr     d1, #0x100181ca8                         ; d1 = 1000.0
  100151120  fmul    d8, d0, d1
  100151124  mov     x0, x19
  100151128  bl      _objc_release
  10015112c  mov     v0.16b, v8.16b
  100151130  ldp     d9, d8, [sp], #0x10
  100151134  ldp     x20, x19, [sp], #0x10
  100151138  ldp     x29, x30, [sp], #0x10
  10015113c  ret
  100151140  mov     x20, x0
  100151144  mov     x0, x19
  100151148  bl      _objc_release
  10015114c  mov     x0, x20
  100151150  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer createInitialContainer]
; address 0x100151154  size 664  kind objc
; ======================================================================
  100151154  stp     x29, x30, [sp, #-0x10]!
  100151158  mov     x29, sp
  10015115c  stp     x20, x19, [sp, #-0x10]!
  100151160  stp     x22, x21, [sp, #-0x10]!
  100151164  stp     x24, x23, [sp, #-0x10]!
  100151168  mov     x21, x0
  10015116c  adrp    x8, #0x10041d000
  100151170  nop
  100151174  ldr     x1, [x8, #0x1c0]
  100151178  bl      _objc_msgSend                            ; [self containerId]
  10015117c  mov     x29, x29
  100151180  bl      _objc_retainAutoreleasedReturnValue
  100151184  mov     x19, x0
  100151188  adrp    x8, #0x10041c000
  10015118c  nop
  100151190  ldr     x22, [x8, #0xfd8]
  100151194  mov     x0, x21
  100151198  mov     x1, x22
  10015119c  bl      _objc_msgSend                            ; [self resourceStorage]
  1001511a0  mov     x29, x29
  1001511a4  bl      _objc_retainAutoreleasedReturnValue
  1001511a8  mov     x23, x0
  1001511ac  adrp    x8, #0x10041d000
  1001511b0  nop
  1001511b4  ldr     x1, [x8, #0x58]
  1001511b8  mov     x2, x19
  1001511bc  bl      _objc_msgSend                            ; [[self resourceStorage] loadResourceFromContainerFile:[self containerId]]
  1001511c0  mov     x29, x29
  1001511c4  bl      _objc_retainAutoreleasedReturnValue
  1001511c8  mov     x20, x0
  1001511cc  mov     x0, x23
  1001511d0  bl      _objc_release
  1001511d4  cbz     x20, loc_1001511f4                       ; if ([[self resourceStorage] loadResourceFromContainerFile:[self containerId]] == 0)
  1001511d8  adrp    x8, #0x10041c000
  1001511dc  nop
  1001511e0  ldr     x1, [x8, #0xe68]
  1001511e4  mov     x0, x21
  1001511e8  mov     x2, x20
  1001511ec  bl      _objc_msgSend                            ; [self setupEvaluatorsWithResource:[[self resourceStorage] loadResourceFromContainerFile:[self containerId]]]
  1001511f0  b       loc_100151364
loc_1001511f4:
  1001511f4  mov     x0, x21
  1001511f8  mov     x1, x22
  1001511fc  bl      _objc_msgSend                            ; [self resourceStorage]
  100151200  mov     x29, x29
  100151204  bl      _objc_retainAutoreleasedReturnValue
  100151208  mov     x24, x0
  10015120c  adrp    x8, #0x10041d000
  100151210  nop
  100151214  ldr     x1, [x8, #0x60]
  100151218  mov     x2, x19
  10015121c  bl      _objc_msgSend                            ; [[self resourceStorage] loadExpandedResourceFromPlistFile:[self containerId]]
  100151220  mov     x29, x29
  100151224  bl      _objc_retainAutoreleasedReturnValue
  100151228  mov     x23, x0
  10015122c  mov     x0, x24
  100151230  bl      _objc_release
  100151234  cbz     x23, loc_100151258                       ; if ([[self resourceStorage] loadExpandedResourceFromPlistFile:[self containerId]] == 0)
  100151238  adrp    x8, #0x10041d000
  10015123c  nop
  100151240  ldr     x1, [x8, #0x38]
  100151244  mov     x24, x23
  100151248  mov     x0, x21
  10015124c  mov     x2, x23
  100151250  bl      _objc_msgSend                            ; [self setupEvaluatorsWithExpandedResource:[[self resourceStorage] loadExpandedResourceFromPlistFile:[self containerId]]]
  100151254  b       loc_10015135c
loc_100151258:
  100151258  mov     x24, #0
  10015125c  mov     x0, x21
  100151260  mov     x1, x22
  100151264  bl      _objc_msgSend                            ; [self resourceStorage]
  100151268  mov     x29, x29
  10015126c  bl      _objc_retainAutoreleasedReturnValue
  100151270  mov     x22, x0
  100151274  adrp    x8, #0x10041d000
  100151278  nop
  10015127c  ldr     x1, [x8, #0x68]
  100151280  mov     x2, x19
  100151284  bl      _objc_msgSend                            ; [[self resourceStorage] loadExpandedResourceFromJsonFile:[self containerId]]
  100151288  mov     x29, x29
  10015128c  bl      _objc_retainAutoreleasedReturnValue
  100151290  mov     x24, x0
  100151294  mov     x0, x23
  100151298  bl      _objc_release
  10015129c  mov     x0, x22
  1001512a0  bl      _objc_release
  1001512a4  cbz     x24, loc_1001512c8                       ; if ([[self resourceStorage] loadExpandedResourceFromJsonFile:[self containerId]] == 0)
  1001512a8  adrp    x8, #0x10041d000
  1001512ac  nop
  1001512b0  ldr     x1, [x8, #0x38]
  1001512b4  mov     x0, x21
  1001512b8  mov     x2, x24
  1001512bc  bl      _objc_msgSend                            ; [self setupEvaluatorsWithExpandedResource:[[self resourceStorage] loadExpandedResourceFromJsonFile:[self containerId]]]
  1001512c0  mov     x23, x24
  1001512c4  b       loc_10015135c
loc_1001512c8:
  1001512c8  adrp    x8, #0x10041e000
  1001512cc  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001512d0  adrp    x8, #0x10041b000
  1001512d4  nop
  1001512d8  ldr     x1, [x8, #0xdd0]
  1001512dc  mov     x24, #0
  1001512e0  adrp    x2, #0x1003c7000
  1001512e4  add     x2, x2, #0x9d0                           ; @"No default container found; creating an empty container."
  1001512e8  bl      _objc_msgSend                            ; [TAGLog error:@"No default container found; creating an empty container."]
  1001512ec  adrp    x8, #0x10041e000
  1001512f0  ldr     x0, [x8, #0xb28]                         ; class TAGExpandedResource
  1001512f4  adrp    x8, #0x10041c000
  1001512f8  nop
  1001512fc  ldr     x1, [x8, #0xbb0]
  100151300  mov     x24, #0
  100151304  bl      _objc_msgSend                            ; [TAGExpandedResource builder]
  100151308  mov     x29, x29
  10015130c  bl      _objc_retainAutoreleasedReturnValue
  100151310  mov     x22, x0
  100151314  adrp    x8, #0x100417000
  100151318  nop
  10015131c  ldr     x1, [x8, #0x310]
  100151320  bl      _objc_msgSend                            ; [[TAGExpandedResource builder] build]
  100151324  mov     x29, x29
  100151328  bl      _objc_retainAutoreleasedReturnValue
  10015132c  mov     x23, x0
  100151330  adrp    x8, #0x10041d000
  100151334  nop
  100151338  ldr     x1, [x8, #0x38]
  10015133c  mov     x0, x21
  100151340  mov     x2, x23
  100151344  bl      _objc_msgSend                            ; [self setupEvaluatorsWithExpandedResource:[[TAGExpandedResource builder] build]]
  100151348  mov     x0, x23
  10015134c  bl      _objc_release
  100151350  mov     x0, x22
  100151354  bl      _objc_release
  100151358  mov     x23, #0
loc_10015135c:
  10015135c  mov     x0, x23
  100151360  bl      _objc_release
loc_100151364:
  100151364  mov     x0, x20
  100151368  bl      _objc_release
  10015136c  mov     x0, x19
  100151370  ldp     x24, x23, [sp], #0x10
  100151374  ldp     x22, x21, [sp], #0x10
  100151378  ldp     x20, x19, [sp], #0x10
  10015137c  ldp     x29, x30, [sp], #0x10
  100151380  b       _objc_release
  100151384  mov     x21, x0
  100151388  b       loc_1001513dc
  10015138c  mov     x21, x0
  100151390  mov     x0, x23
  100151394  b       loc_1001513d8
  100151398  mov     x21, x0
  10015139c  b       loc_1001513d4
  1001513a0  b       loc_1001513ac
  1001513a4  mov     x21, x0
  1001513a8  b       loc_1001513cc
loc_1001513ac:
  1001513ac  mov     x21, x0
  1001513b0  mov     x0, x24
  1001513b4  b       loc_1001513d0
  1001513b8  mov     x21, x0
  1001513bc  b       loc_1001513cc
  1001513c0  mov     x21, x0
  1001513c4  mov     x0, x23
  1001513c8  bl      _objc_release
loc_1001513cc:
  1001513cc  mov     x0, x22
loc_1001513d0:
  1001513d0  bl      _objc_release
loc_1001513d4:
  1001513d4  mov     x0, x20
loc_1001513d8:
  1001513d8  bl      _objc_release
loc_1001513dc:
  1001513dc  mov     x0, x19
  1001513e0  bl      _objc_release
  1001513e4  mov     x0, x21
  1001513e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer ctfeServerAddress]
; address 0x1001513ec  size 96  kind objc
; ======================================================================
  1001513ec  stp     x29, x30, [sp, #-0x10]!
  1001513f0  mov     x29, sp
  1001513f4  stp     x20, x19, [sp, #-0x10]!
  1001513f8  stp     x22, x21, [sp, #-0x10]!
  1001513fc  mov     x19, x0
  100151400  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd)
  100151404  adrp    x8, #0x100420000
  100151408  ldrsw   x8, [x8, #0xa34]                         ; ivar offset TAGContainer._ctfeServerAddress (+0x8)
  10015140c  ldr     x20, [x19, x8]                           ; x20 = self->_ctfeServerAddress
  100151410  mov     x0, x19
  100151414  bl      _objc_retain
  100151418  mov     x21, x0
  10015141c  mov     x0, x20
  100151420  bl      _objc_retainAutoreleaseReturnValue
  100151424  mov     x20, x0
  100151428  mov     x0, x19
  10015142c  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100151430  mov     x0, x21
  100151434  bl      _objc_release
  100151438  mov     x0, x20
  10015143c  ldp     x22, x21, [sp], #0x10
  100151440  ldp     x20, x19, [sp], #0x10
  100151444  ldp     x29, x30, [sp], #0x10
  100151448  ret

; ======================================================================
; -[TAGContainer setCtfeServerAddress:]
; address 0x10015144c  size 228  kind objc
; ======================================================================
  10015144c  stp     x29, x30, [sp, #-0x10]!
  100151450  mov     x29, sp
  100151454  stp     x20, x19, [sp, #-0x10]!
  100151458  stp     x22, x21, [sp, #-0x10]!
  10015145c  mov     x19, x0
  100151460  mov     x0, x2
  100151464  bl      _objc_retain
  100151468  mov     x20, x0
  10015146c  mov     x0, x19
  100151470  bl      _objc_retain
  100151474  mov     x19, x0
  100151478  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  10015147c  adrp    x8, #0x100420000
  100151480  ldrsw   x21, [x8, #0xa34]                        ; ivar offset TAGContainer._ctfeServerAddress (+0x8)
  100151484  mov     x0, x20
  100151488  bl      _objc_retain
  10015148c  mov     x20, x0
  100151490  ldr     x0, [x19, x21]                           ; x0 = self->_ctfeServerAddress
  100151494  str     x20, [x19, x21]                          ; self->_ctfeServerAddress = arg1
  100151498  bl      _objc_release
  10015149c  adrp    x8, #0x10041c000
  1001514a0  nop
  1001514a4  ldr     x1, [x8, #0xf60]
  1001514a8  mov     x0, x19
  1001514ac  bl      _objc_msgSend                            ; [self networkLoadScheduler]
  1001514b0  mov     x29, x29
  1001514b4  bl      _objc_retainAutoreleasedReturnValue
  1001514b8  mov     x21, x0
  1001514bc  adrp    x8, #0x10041d000
  1001514c0  nop
  1001514c4  ldr     x1, [x8]
  1001514c8  mov     x2, x20
  1001514cc  bl      _objc_msgSend                            ; [[self networkLoadScheduler] setCtfeServerAddress:arg1]
  1001514d0  mov     x0, x21
  1001514d4  bl      _objc_release
  1001514d8  mov     x0, x19
  1001514dc  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  1001514e0  mov     x0, x19
  1001514e4  bl      _objc_release
  1001514e8  mov     x0, x20
  1001514ec  ldp     x22, x21, [sp], #0x10
  1001514f0  ldp     x20, x19, [sp], #0x10
  1001514f4  ldp     x29, x30, [sp], #0x10
  1001514f8  b       _objc_release
  1001514fc  mov     x22, x0
  100151500  b       loc_100151510
  100151504  mov     x22, x0
  100151508  mov     x0, x21
  10015150c  bl      _objc_release
loc_100151510:
  100151510  mov     x0, x19
  100151514  bl      _objc_sync_exit                          ; objc_sync_exit()
  100151518  mov     x0, x19
  10015151c  bl      _objc_release
  100151520  mov     x0, x20
  100151524  bl      _objc_release
  100151528  mov     x0, x22
  10015152c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer isDefaultContainerRefreshMode]
; address 0x100151530  size 108  kind objc
; ======================================================================
  100151530  stp     x29, x30, [sp, #-0x10]!
  100151534  mov     x29, sp
  100151538  stp     x20, x19, [sp, #-0x10]!
  10015153c  adrp    x8, #0x10041c000
  100151540  nop
  100151544  ldr     x1, [x8, #0xfa0]
  100151548  bl      _objc_msgSend                            ; [self tagManager]
  10015154c  mov     x29, x29
  100151550  bl      _objc_retainAutoreleasedReturnValue
  100151554  mov     x19, x0
  100151558  adrp    x8, #0x10041d000
  10015155c  nop
  100151560  ldr     x1, [x8, #0x70]
  100151564  bl      _objc_msgSend                            ; [[self tagManager] refreshMode]
  100151568  cmp     w0, #1
  10015156c  cset    w20, eq
  100151570  mov     x0, x19
  100151574  bl      _objc_release
  100151578  mov     x0, x20
  10015157c  ldp     x20, x19, [sp], #0x10
  100151580  ldp     x29, x30, [sp], #0x10
  100151584  ret
  100151588  mov     x20, x0
  10015158c  mov     x0, x19
  100151590  bl      _objc_release
  100151594  mov     x0, x20
  100151598  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainer useAvailableTokenWithCurrentTime:]
; address 0x10015159c  size 320  kind objc
; ======================================================================
  10015159c  stp     x29, x30, [sp, #-0x10]!
  1001515a0  mov     x29, sp
  1001515a4  stp     x20, x19, [sp, #-0x10]!
  1001515a8  stp     x22, x21, [sp, #-0x10]!
  1001515ac  stp     d9, d8, [sp, #-0x10]!
  1001515b0  mov     v8.16b, v0.16b
  1001515b4  mov     x19, x0
  1001515b8  adrp    x8, #0x10041d000
  1001515bc  nop
  1001515c0  ldr     x20, [x8, #0x78]
  1001515c4  mov     x1, x20
  1001515c8  bl      _objc_msgSend                            ; [self lastRefreshMethodCalledTime]
  1001515cc  fcmp    d0, #0.0
  1001515d0  b.ne    loc_100151608                            ; if ([self lastRefreshMethodCalledTime] != 0.0)
  1001515d4  adrp    x8, #0x10041d000
  1001515d8  add     x8, x8, #0x80                            ; &@selector(numTokens)
  1001515dc  ldr     x1, [x8]
  1001515e0  mov     x0, x19
loc_1001515e4:
  1001515e4  bl      _objc_msgSend                            ; [self numTokens]
  1001515e8  sub     x2, x0, #1
  1001515ec  adrp    x8, #0x10041d000
  1001515f0  nop
  1001515f4  ldr     x1, [x8, #0x88]
  1001515f8  mov     x0, x19
  1001515fc  bl      _objc_msgSend                            ; [self setNumTokens:([self numTokens] - 1)]
  100151600  mov     w0, #1
  100151604  b       loc_1001516c8
loc_100151608:
  100151608  mov     x0, x19
  10015160c  mov     x1, x20
  100151610  bl      _objc_msgSend                            ; [self lastRefreshMethodCalledTime]
  100151614  fsub    d8, d8, d0
  100151618  adrp    x8, #0x1002fa000
  10015161c  ldr     d0, [x8, #0xb50]                         ; d0 = 5000.0
  100151620  fcmp    d8, d0
  100151624  b.mi    loc_1001516c4                            ; if ((arg1 - [self lastRefreshMethodCalledTime]) < 5000)
  100151628  adrp    x8, #0x10041d000
  10015162c  nop
  100151630  ldr     x20, [x8, #0x80]
  100151634  mov     x0, x19
  100151638  mov     x1, x20
  10015163c  bl      _objc_msgSend                            ; [self numTokens]
  100151640  cmp     x0, #0x1d
  100151644  b.hi    loc_1001516a8                            ; if ([self numTokens] >u 29)
  100151648  adrp    x8, #0x1002fa000
  10015164c  ldr     d0, [x8, #0xb48]                         ; d0 = 900000.0
  100151650  fdiv    d0, d8, d0
  100151654  frintx  d1, d0
  100151658  frintm  d0, d0
  10015165c  fcvtzs  w21, d0
  100151660  mov     x0, x19
  100151664  mov     x1, x20
  100151668  bl      _objc_msgSend                            ; [self numTokens]
  10015166c  add     x8, x0, w21, sxtw
  100151670  cmp     x8, #0x1e
  100151674  b.ls    loc_100151680                            ; if (([self numTokens] + (int)floor(((arg1 - [self lastRefreshMethodCalledTime]) / 900000))) <=u 30)
  100151678  mov     x2, #0x1e
  10015167c  b       loc_100151694
loc_100151680:
  100151680  sxtw    x21, w21
  100151684  mov     x0, x19
  100151688  mov     x1, x20
  10015168c  bl      _objc_msgSend                            ; [self numTokens]
  100151690  add     x2, x0, x21
loc_100151694:
  100151694  adrp    x8, #0x10041d000
  100151698  nop
  10015169c  ldr     x1, [x8, #0x88]
  1001516a0  mov     x0, x19
  1001516a4  bl      _objc_msgSend                            ; [self setNumTokens:x2]
loc_1001516a8:
  1001516a8  mov     x0, x19
  1001516ac  mov     x1, x20
  1001516b0  bl      _objc_msgSend                            ; [self numTokens]
  1001516b4  cbz     x0, loc_1001516c4                        ; if ([self numTokens] == 0)
  1001516b8  mov     x0, x19
  1001516bc  mov     x1, x20
  1001516c0  b       loc_1001515e4
loc_1001516c4:
  1001516c4  mov     w0, #0
loc_1001516c8:
  1001516c8  ldp     d9, d8, [sp], #0x10
  1001516cc  ldp     x22, x21, [sp], #0x10
  1001516d0  ldp     x20, x19, [sp], #0x10
  1001516d4  ldp     x29, x30, [sp], #0x10
  1001516d8  ret

; ======================================================================
; -[TAGContainer containerId]
; address 0x1001516dc  size 16  kind objc
; ======================================================================
  1001516dc  mov     w3, #0
  1001516e0  adrp    x8, #0x100420000
  1001516e4  ldrsw   x2, [x8, #0xa14]                         ; ivar offset TAGContainer._containerId (+0x18)
  1001516e8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGContainer lastRefreshTime]
; address 0x1001516ec  size 20  kind objc
; ======================================================================
  1001516ec  adrp    x8, #0x100420000
  1001516f0  ldrsw   x8, [x8, #0xa38]                         ; ivar offset TAGContainer._lastRefreshTime (+0x20)
  1001516f4  ldr     x8, [x0, x8]                             ; x8 = self->_lastRefreshTime
  1001516f8  fmov    d0, x8
  1001516fc  ret

; ======================================================================
; -[TAGContainer setLastRefreshTime:]
; address 0x100151700  size 20  kind objc
; ======================================================================
  100151700  fmov    x8, d0
  100151704  adrp    x9, #0x100420000
  100151708  ldrsw   x9, [x9, #0xa38]                         ; ivar offset TAGContainer._lastRefreshTime (+0x20)
  10015170c  str     x8, [x0, x9]                             ; self->_lastRefreshTime = arg1
  100151710  ret

; ======================================================================
; -[TAGContainer resourceStorage]
; address 0x100151714  size 16  kind objc
; ======================================================================
  100151714  adrp    x8, #0x100420000
  100151718  ldrsw   x2, [x8, #0xa20]                         ; ivar offset TAGContainer._resourceStorage (+0x28)
  10015171c  mov     w3, #1
  100151720  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setResourceStorage:]
; address 0x100151724  size 12  kind objc
; ======================================================================
  100151724  adrp    x8, #0x100420000
  100151728  ldrsw   x3, [x8, #0xa20]                         ; ivar offset TAGContainer._resourceStorage (+0x28)
  10015172c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer tagManager]
; address 0x100151730  size 16  kind objc
; ======================================================================
  100151730  adrp    x8, #0x100420000
  100151734  ldrsw   x2, [x8, #0xa18]                         ; ivar offset TAGContainer._tagManager (+0x30)
  100151738  mov     w3, #1
  10015173c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setTagManager:]
; address 0x100151740  size 12  kind objc
; ======================================================================
  100151740  adrp    x8, #0x100420000
  100151744  ldrsw   x3, [x8, #0xa18]                         ; ivar offset TAGContainer._tagManager (+0x30)
  100151748  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer ctfeUrlPathAndQuery]
; address 0x10015174c  size 16  kind objc
; ======================================================================
  10015174c  mov     w3, #0
  100151750  adrp    x8, #0x100420000
  100151754  ldrsw   x2, [x8, #0xa30]                         ; ivar offset TAGContainer._ctfeUrlPathAndQuery (+0x38)
  100151758  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGContainer numTokens]
; address 0x10015175c  size 16  kind objc
; ======================================================================
  10015175c  adrp    x8, #0x100420000
  100151760  ldrsw   x8, [x8, #0xa24]                         ; ivar offset TAGContainer._numTokens (+0x40)
  100151764  ldr     x0, [x0, x8]                             ; x0 = self->_numTokens
  100151768  ret

; ======================================================================
; -[TAGContainer setNumTokens:]
; address 0x10015176c  size 16  kind objc
; ======================================================================
  10015176c  adrp    x8, #0x100420000
  100151770  ldrsw   x8, [x8, #0xa24]                         ; ivar offset TAGContainer._numTokens (+0x40)
  100151774  str     x2, [x0, x8]                             ; self->_numTokens = arg1
  100151778  ret

; ======================================================================
; -[TAGContainer lastLoadedSupplementedResource]
; address 0x10015177c  size 16  kind objc
; ======================================================================
  10015177c  adrp    x8, #0x100420000
  100151780  ldrsw   x2, [x8, #0xa1c]                         ; ivar offset TAGContainer._lastLoadedSupplementedResource (+0x48)
  100151784  mov     w3, #1
  100151788  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setLastLoadedSupplementedResource:]
; address 0x10015178c  size 12  kind objc
; ======================================================================
  10015178c  adrp    x8, #0x100420000
  100151790  ldrsw   x3, [x8, #0xa1c]                         ; ivar offset TAGContainer._lastLoadedSupplementedResource (+0x48)
  100151794  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer networkLoadCallback]
; address 0x100151798  size 16  kind objc
; ======================================================================
  100151798  adrp    x8, #0x100420000
  10015179c  ldrsw   x2, [x8, #0xa3c]                         ; ivar offset TAGContainer._networkLoadCallback (+0x50)
  1001517a0  mov     w3, #1
  1001517a4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setNetworkLoadCallback:]
; address 0x1001517a8  size 12  kind objc
; ======================================================================
  1001517a8  adrp    x8, #0x100420000
  1001517ac  ldrsw   x3, [x8, #0xa3c]                         ; ivar offset TAGContainer._networkLoadCallback (+0x50)
  1001517b0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer diskLoadCallback]
; address 0x1001517b4  size 16  kind objc
; ======================================================================
  1001517b4  adrp    x8, #0x100420000
  1001517b8  ldrsw   x2, [x8, #0xa40]                         ; ivar offset TAGContainer._diskLoadCallback (+0x58)
  1001517bc  mov     w3, #1
  1001517c0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setDiskLoadCallback:]
; address 0x1001517c4  size 12  kind objc
; ======================================================================
  1001517c4  adrp    x8, #0x100420000
  1001517c8  ldrsw   x3, [x8, #0xa40]                         ; ivar offset TAGContainer._diskLoadCallback (+0x58)
  1001517cc  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer networkLoadScheduler]
; address 0x1001517d0  size 16  kind objc
; ======================================================================
  1001517d0  adrp    x8, #0x100420000
  1001517d4  ldrsw   x2, [x8, #0xa44]                         ; ivar offset TAGContainer._networkLoadScheduler (+0x60)
  1001517d8  mov     w3, #1
  1001517dc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setNetworkLoadScheduler:]
; address 0x1001517e0  size 12  kind objc
; ======================================================================
  1001517e0  adrp    x8, #0x100420000
  1001517e4  ldrsw   x3, [x8, #0xa44]                         ; ivar offset TAGContainer._networkLoadScheduler (+0x60)
  1001517e8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer runtime]
; address 0x1001517ec  size 16  kind objc
; ======================================================================
  1001517ec  adrp    x8, #0x100420000
  1001517f0  ldrsw   x2, [x8, #0xa48]                         ; ivar offset TAGContainer._runtime (+0x68)
  1001517f4  mov     w3, #1
  1001517f8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setRuntime:]
; address 0x1001517fc  size 12  kind objc
; ======================================================================
  1001517fc  adrp    x8, #0x100420000
  100151800  ldrsw   x3, [x8, #0xa48]                         ; ivar offset TAGContainer._runtime (+0x68)
  100151804  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer functionCallTagHandlers]
; address 0x100151808  size 16  kind objc
; ======================================================================
  100151808  adrp    x8, #0x100420000
  10015180c  ldrsw   x2, [x8, #0xa2c]                         ; ivar offset TAGContainer._functionCallTagHandlers (+0x70)
  100151810  mov     w3, #1
  100151814  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setFunctionCallTagHandlers:]
; address 0x100151818  size 12  kind objc
; ======================================================================
  100151818  adrp    x8, #0x100420000
  10015181c  ldrsw   x3, [x8, #0xa2c]                         ; ivar offset TAGContainer._functionCallTagHandlers (+0x70)
  100151820  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer functionCallMacroHandlers]
; address 0x100151824  size 16  kind objc
; ======================================================================
  100151824  adrp    x8, #0x100420000
  100151828  ldrsw   x2, [x8, #0xa28]                         ; ivar offset TAGContainer._functionCallMacroHandlers (+0x78)
  10015182c  mov     w3, #1
  100151830  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setFunctionCallMacroHandlers:]
; address 0x100151834  size 12  kind objc
; ======================================================================
  100151834  adrp    x8, #0x100420000
  100151838  ldrsw   x3, [x8, #0xa28]                         ; ivar offset TAGContainer._functionCallMacroHandlers (+0x78)
  10015183c  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer diskLoadFinished]
; address 0x100151840  size 20  kind objc
; ======================================================================
  100151840  adrp    x8, #0x100420000
  100151844  ldrsw   x8, [x8, #0xa4c]                         ; ivar offset TAGContainer._diskLoadFinished (+0x10)
  100151848  ldrb    w8, [x0, x8]                             ; w8 = self->_diskLoadFinished
  10015184c  and     w0, w8, #1
  100151850  ret

; ======================================================================
; -[TAGContainer setDiskLoadFinished:]
; address 0x100151854  size 16  kind objc
; ======================================================================
  100151854  adrp    x8, #0x100420000
  100151858  ldrsw   x8, [x8, #0xa4c]                         ; ivar offset TAGContainer._diskLoadFinished (+0x10)
  10015185c  strb    w2, [x0, x8]                             ; self->_diskLoadFinished = arg1
  100151860  ret

; ======================================================================
; -[TAGContainer resourceVersion]
; address 0x100151864  size 16  kind objc
; ======================================================================
  100151864  adrp    x8, #0x100420000
  100151868  ldrsw   x2, [x8, #0xa50]                         ; ivar offset TAGContainer._resourceVersion (+0x80)
  10015186c  mov     w3, #1
  100151870  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainer setResourceVersion:]
; address 0x100151874  size 12  kind objc
; ======================================================================
  100151874  adrp    x8, #0x100420000
  100151878  ldrsw   x3, [x8, #0xa50]                         ; ivar offset TAGContainer._resourceVersion (+0x80)
  10015187c  b       _objc_setProperty_atomic_copy            ; objc_setProperty_atomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainer resourceFormatVersion]
; address 0x100151880  size 16  kind objc
; ======================================================================
  100151880  adrp    x8, #0x100420000
  100151884  ldrsw   x8, [x8, #0xa54]                         ; ivar offset TAGContainer._resourceFormatVersion (+0x14)
  100151888  ldr     w0, [x0, x8]                             ; w0 = self->_resourceFormatVersion
  10015188c  ret

; ======================================================================
; -[TAGContainer setResourceFormatVersion:]
; address 0x100151890  size 16  kind objc
; ======================================================================
  100151890  adrp    x8, #0x100420000
  100151894  ldrsw   x8, [x8, #0xa54]                         ; ivar offset TAGContainer._resourceFormatVersion (+0x14)
  100151898  str     w2, [x0, x8]                             ; self->_resourceFormatVersion = arg1
  10015189c  ret

; ======================================================================
; -[TAGContainer lastRefreshMethodCalledTime]
; address 0x1001518a0  size 20  kind objc
; ======================================================================
  1001518a0  adrp    x8, #0x100420000
  1001518a4  ldrsw   x8, [x8, #0xa58]                         ; ivar offset TAGContainer._lastRefreshMethodCalledTime (+0x88)
  1001518a8  ldr     x8, [x0, x8]                             ; x8 = self->_lastRefreshMethodCalledTime
  1001518ac  fmov    d0, x8
  1001518b0  ret

; ======================================================================
; -[TAGContainer setLastRefreshMethodCalledTime:]
; address 0x1001518b4  size 20  kind objc
; ======================================================================
  1001518b4  fmov    x8, d0
  1001518b8  adrp    x9, #0x100420000
  1001518bc  ldrsw   x9, [x9, #0xa58]                         ; ivar offset TAGContainer._lastRefreshMethodCalledTime (+0x88)
  1001518c0  str     x8, [x0, x9]                             ; self->_lastRefreshMethodCalledTime = arg1
  1001518c4  ret

; ======================================================================
; -[TAGContainer .cxx_destruct]
; address 0x1001518c8  size 284  kind objc
; ======================================================================
  1001518c8  stp     x29, x30, [sp, #-0x10]!
  1001518cc  mov     x29, sp
  1001518d0  stp     x20, x19, [sp, #-0x10]!
  1001518d4  mov     x19, x0
  1001518d8  adrp    x8, #0x100420000
  1001518dc  ldrsw   x8, [x8, #0xa50]                         ; ivar offset TAGContainer._resourceVersion (+0x80)
  1001518e0  add     x0, x19, x8
  1001518e4  mov     x1, #0
  1001518e8  bl      _objc_storeStrong
  1001518ec  adrp    x8, #0x100420000
  1001518f0  ldrsw   x8, [x8, #0xa28]                         ; ivar offset TAGContainer._functionCallMacroHandlers (+0x78)
  1001518f4  add     x0, x19, x8
  1001518f8  mov     x1, #0
  1001518fc  bl      _objc_storeStrong
  100151900  adrp    x8, #0x100420000
  100151904  ldrsw   x8, [x8, #0xa2c]                         ; ivar offset TAGContainer._functionCallTagHandlers (+0x70)
  100151908  add     x0, x19, x8
  10015190c  mov     x1, #0
  100151910  bl      _objc_storeStrong
  100151914  adrp    x8, #0x100420000
  100151918  ldrsw   x8, [x8, #0xa48]                         ; ivar offset TAGContainer._runtime (+0x68)
  10015191c  add     x0, x19, x8
  100151920  mov     x1, #0
  100151924  bl      _objc_storeStrong
  100151928  adrp    x8, #0x100420000
  10015192c  ldrsw   x8, [x8, #0xa44]                         ; ivar offset TAGContainer._networkLoadScheduler (+0x60)
  100151930  add     x0, x19, x8
  100151934  mov     x1, #0
  100151938  bl      _objc_storeStrong
  10015193c  adrp    x8, #0x100420000
  100151940  ldrsw   x8, [x8, #0xa40]                         ; ivar offset TAGContainer._diskLoadCallback (+0x58)
  100151944  add     x0, x19, x8
  100151948  mov     x1, #0
  10015194c  bl      _objc_storeStrong
  100151950  adrp    x8, #0x100420000
  100151954  ldrsw   x8, [x8, #0xa3c]                         ; ivar offset TAGContainer._networkLoadCallback (+0x50)
  100151958  add     x0, x19, x8
  10015195c  mov     x1, #0
  100151960  bl      _objc_storeStrong
  100151964  adrp    x8, #0x100420000
  100151968  ldrsw   x8, [x8, #0xa1c]                         ; ivar offset TAGContainer._lastLoadedSupplementedResource (+0x48)
  10015196c  add     x0, x19, x8
  100151970  mov     x1, #0
  100151974  bl      _objc_storeStrong
  100151978  adrp    x8, #0x100420000
  10015197c  ldrsw   x8, [x8, #0xa30]                         ; ivar offset TAGContainer._ctfeUrlPathAndQuery (+0x38)
  100151980  add     x0, x19, x8
  100151984  mov     x1, #0
  100151988  bl      _objc_storeStrong
  10015198c  adrp    x8, #0x100420000
  100151990  ldrsw   x8, [x8, #0xa18]                         ; ivar offset TAGContainer._tagManager (+0x30)
  100151994  add     x0, x19, x8
  100151998  mov     x1, #0
  10015199c  bl      _objc_storeStrong
  1001519a0  adrp    x8, #0x100420000
  1001519a4  ldrsw   x8, [x8, #0xa20]                         ; ivar offset TAGContainer._resourceStorage (+0x28)
  1001519a8  add     x0, x19, x8
  1001519ac  mov     x1, #0
  1001519b0  bl      _objc_storeStrong
  1001519b4  adrp    x8, #0x100420000
  1001519b8  ldrsw   x8, [x8, #0xa14]                         ; ivar offset TAGContainer._containerId (+0x18)
  1001519bc  add     x0, x19, x8
  1001519c0  mov     x1, #0
  1001519c4  bl      _objc_storeStrong
  1001519c8  mov     x1, #0
  1001519cc  adrp    x8, #0x100420000
  1001519d0  ldrsw   x8, [x8, #0xa34]                         ; ivar offset TAGContainer._ctfeServerAddress (+0x8)
  1001519d4  add     x0, x19, x8
  1001519d8  ldp     x20, x19, [sp], #0x10
  1001519dc  ldp     x29, x30, [sp], #0x10
  1001519e0  b       _objc_storeStrong
