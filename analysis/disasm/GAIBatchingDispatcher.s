// unit GAIBatchingDispatcher — 69 functions
//   0x100126dd0     112  -[GAIBatchingDispatcher setTimer:]
//   0x100126e40      44  -[GAIBatchingDispatcher setDispatchInterval:]
//   0x100126e6c      44  -[GAIBatchingDispatcher setHostReachable:]
//   0x100126e98      44  -[GAIBatchingDispatcher setHasHits:]
//   0x100126ec4      24  -[GAIBatchingDispatcher reachability:statusChanged:]
//   0x100126edc     284  -[GAIBatchingDispatcher observeValueForKeyPath:ofObject:change:context:]
//   0x100126ff8     652  -[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]
//   0x100127284     448  -[GAIBatchingDispatcher didSendHits:sendMore:]
//   0x100127444     116  -[GAIBatchingDispatcher init]
//   0x1001274b8     696  -[GAIBatchingDispatcher initWithDataStore:]
//   0x100127770     276  -[GAIBatchingDispatcher dealloc]
//   0x100127884     112  -[GAIBatchingDispatcher cancelPerformRequests]
//   0x1001278f4     516  -[GAIBatchingDispatcher batchByTimeGap:maxHits:]
//   0x100127af8     380  -[GAIBatchingDispatcher batchBySessionSplit:maxHits:]
//   0x100127c74    1984  -[GAIBatchingDispatcher hitsForDispatch]
//   0x100128434     192  -[GAIBatchingDispatcher hitsForDispatch]_block_invoke
//   0x1001284f4    1180  -[GAIBatchingDispatcher nextPendingHits]
//   0x100128990     520  -[GAIBatchingDispatcher persist:]
//   0x100128b98     808  -[GAIBatchingDispatcher deleteHits:]
//   0x100128ec0     720  -[GAIBatchingDispatcher deleteAllHits]
//   0x100129190      92  -[GAIBatchingDispatcher clientId]
//   0x1001291ec      20  -[GAIBatchingDispatcher dispatch]
//   0x100129200    1916  -[GAIBatchingDispatcher dispatchWithCompletionHandler:]
//   0x10012997c     116  -[GAIBatchingDispatcher dispatchWithCompletionHandler:]_block_invoke
//   0x1001299f0      60  sub_1001299f0
//   0x100129a2c      48  sub_100129a2c
//   0x100129a5c     640  -[GAIBatchingDispatcher buildPayload:]
//   0x100129cdc     180  -[GAIBatchingDispatcher queueModel:]
//   0x100129d90     628  -[GAIBatchingDispatcher queueDispatch:]
//   0x10012a004     132  +[GAIBatchingDispatcher dispatcher]
//   0x10012a088      32  +[GAIBatchingDispatcher thread]
//   0x10012a0a8     228  -[GAIBatchingDispatcher rescheduleIfNeeded:withObject:andWait:]
//   0x10012a18c     112  -[GAIBatchingDispatcher initialDispatch]
//   0x10012a1fc     152  -[GAIBatchingDispatcher cancelDispatch]
//   0x10012a294      76  -[GAIBatchingDispatcher canDispatch]
//   0x10012a2e0      80  -[GAIBatchingDispatcher canScheduleDispatch]
//   0x10012a330      76  -[GAIBatchingDispatcher timerFired]
//   0x10012a37c     232  -[GAIBatchingDispatcher rescheduleDispatch]
//   0x10012a464      16  -[GAIBatchingDispatcher optOut]
//   0x10012a474      16  -[GAIBatchingDispatcher batchingStrategy]
//   0x10012a484      16  -[GAIBatchingDispatcher setBatchingStrategy:]
//   0x10012a494      16  -[GAIBatchingDispatcher compressionStrategy]
//   0x10012a4a4      16  -[GAIBatchingDispatcher setCompressionStrategy:]
//   0x10012a4b4      16  -[GAIBatchingDispatcher dispatchInterval]
//   0x10012a4c4      16  -[GAIBatchingDispatcher dataStore]
//   0x10012a4d4      56  -[GAIBatchingDispatcher setDataStore:]
//   0x10012a50c      16  -[GAIBatchingDispatcher requestBuilder]
//   0x10012a51c      16  -[GAIBatchingDispatcher urlConnectionClass]
//   0x10012a52c      20  -[GAIBatchingDispatcher setUrlConnectionClass:]
//   0x10012a540      16  -[GAIBatchingDispatcher maxHitsPerDispatch]
//   0x10012a550      16  -[GAIBatchingDispatcher setMaxHitsPerDispatch:]
//   0x10012a560      16  -[GAIBatchingDispatcher maxHitAge]
//   0x10012a570      16  -[GAIBatchingDispatcher setMaxHitAge:]
//   0x10012a580      16  -[GAIBatchingDispatcher maxBodySize]
//   0x10012a590      16  -[GAIBatchingDispatcher setMaxBodySize:]
//   0x10012a5a0      16  -[GAIBatchingDispatcher maxHitSize]
//   0x10012a5b0      16  -[GAIBatchingDispatcher setMaxHitSize:]
//   0x10012a5c0      16  -[GAIBatchingDispatcher reachability]
//   0x10012a5d0      56  -[GAIBatchingDispatcher setReachability:]
//   0x10012a608      16  -[GAIBatchingDispatcher hasHits]
//   0x10012a618      16  -[GAIBatchingDispatcher hostReachable]
//   0x10012a628      16  -[GAIBatchingDispatcher httpURL]
//   0x10012a638      56  -[GAIBatchingDispatcher setHttpURL:]
//   0x10012a670      16  -[GAIBatchingDispatcher httpsURL]
//   0x10012a680      56  -[GAIBatchingDispatcher setHttpsURL:]
//   0x10012a6b8      16  -[GAIBatchingDispatcher connection]
//   0x10012a6c8      20  -[GAIBatchingDispatcher setConnection:]
//   0x10012a6dc      16  -[GAIBatchingDispatcher timer]
//   0x10012a6ec     184  -[GAIBatchingDispatcher .cxx_destruct]

; ======================================================================
; -[GAIBatchingDispatcher setTimer:]
; address 0x100126dd0  size 112  kind objc
; ======================================================================
  100126dd0  stp     x29, x30, [sp, #-0x10]!
  100126dd4  mov     x29, sp
  100126dd8  stp     x20, x19, [sp, #-0x10]!
  100126ddc  stp     x22, x21, [sp, #-0x10]!
  100126de0  mov     x20, x0
  100126de4  mov     x0, x2
  100126de8  bl      _objc_retain
  100126dec  mov     x19, x0
  100126df0  adrp    x8, #0x100420000
  100126df4  ldrsw   x21, [x8, #0x8b4]                        ; ivar offset GAIBatchingDispatcher._timer (+0x80)
  100126df8  ldr     x0, [x20, x21]                           ; x0 = self->_timer
  100126dfc  cmp     x0, x19
  100126e00  b.eq    loc_100126e2c                            ; if (self->_timer == arg1)
  100126e04  adrp    x8, #0x100417000
  100126e08  nop
  100126e0c  ldr     x1, [x8, #0x730]
  100126e10  bl      _objc_msgSend                            ; [self->_timer invalidate]
  100126e14  mov     x0, x19
  100126e18  bl      _objc_retain
  100126e1c  ldr     x8, [x20, x21]                           ; x8 = self->_timer
  100126e20  str     x0, [x20, x21]                           ; self->_timer = arg1
  100126e24  mov     x0, x8
  100126e28  bl      _objc_release
loc_100126e2c:
  100126e2c  mov     x0, x19
  100126e30  ldp     x22, x21, [sp], #0x10
  100126e34  ldp     x20, x19, [sp], #0x10
  100126e38  ldp     x29, x30, [sp], #0x10
  100126e3c  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher setDispatchInterval:]
; address 0x100126e40  size 44  kind objc
; ======================================================================
  100126e40  adrp    x8, #0x100420000
  100126e44  ldrsw   x8, [x8, #0x8b8]                         ; ivar offset GAIBatchingDispatcher._dispatchInterval (+0x20)
  100126e48  ldr     d1, [x0, x8]                             ; d1 = self->_dispatchInterval
  100126e4c  fcmp    d1, d0
  100126e50  b.eq    loc_100126e68                            ; if (self->_dispatchInterval == arg1)
  100126e54  str     d0, [x0, x8]                             ; self->_dispatchInterval = arg1
  100126e58  adrp    x8, #0x10041b000
  100126e5c  nop
  100126e60  ldr     x1, [x8, #0xb80]
  100126e64  b       _objc_msgSend                            ; [self rescheduleDispatch]
loc_100126e68:
  100126e68  ret

; ======================================================================
; -[GAIBatchingDispatcher setHostReachable:]
; address 0x100126e6c  size 44  kind objc
; ======================================================================
  100126e6c  adrp    x8, #0x100420000
  100126e70  ldrsw   x8, [x8, #0x8bc]                         ; ivar offset GAIBatchingDispatcher._hostReachable (+0xa)
  100126e74  ldrb    w9, [x0, x8]                             ; w9 = self->_hostReachable
  100126e78  cmp     w9, w2
  100126e7c  b.ne    loc_100126e84                            ; if (self->_hostReachable != arg1)
  100126e80  ret
loc_100126e84:
  100126e84  strb    w2, [x0, x8]                             ; self->_hostReachable = arg1
  100126e88  adrp    x8, #0x10041b000
  100126e8c  nop
  100126e90  ldr     x1, [x8, #0xb80]
  100126e94  b       _objc_msgSend                            ; [self rescheduleDispatch]

; ======================================================================
; -[GAIBatchingDispatcher setHasHits:]
; address 0x100126e98  size 44  kind objc
; ======================================================================
  100126e98  adrp    x8, #0x100420000
  100126e9c  ldrsw   x8, [x8, #0x8c0]                         ; ivar offset GAIBatchingDispatcher._hasHits (+0x9)
  100126ea0  ldrb    w9, [x0, x8]                             ; w9 = self->_hasHits
  100126ea4  cmp     w9, w2
  100126ea8  b.ne    loc_100126eb0                            ; if (self->_hasHits != arg1)
  100126eac  ret
loc_100126eb0:
  100126eb0  strb    w2, [x0, x8]                             ; self->_hasHits = arg1
  100126eb4  adrp    x8, #0x10041b000
  100126eb8  nop
  100126ebc  ldr     x1, [x8, #0xb80]
  100126ec0  b       _objc_msgSend                            ; [self rescheduleDispatch]

; ======================================================================
; -[GAIBatchingDispatcher reachability:statusChanged:]
; address 0x100126ec4  size 24  kind objc
; ======================================================================
  100126ec4  cmp     w3, #1
  100126ec8  cset    w2, ne
  100126ecc  adrp    x8, #0x10041c000
  100126ed0  nop
  100126ed4  ldr     x1, [x8, #0x2e0]
  100126ed8  b       _objc_msgSend                            ; [self setHostReachable:(arg2 != 1)]

; ======================================================================
; -[GAIBatchingDispatcher observeValueForKeyPath:ofObject:change:context:]
; address 0x100126edc  size 284  kind objc
; ======================================================================
  100126edc  stp     x29, x30, [sp, #-0x10]!
  100126ee0  mov     x29, sp
  100126ee4  stp     x20, x19, [sp, #-0x10]!
  100126ee8  stp     x22, x21, [sp, #-0x10]!
  100126eec  stp     x24, x23, [sp, #-0x10]!
  100126ef0  sub     sp, sp, #0x10
  100126ef4  mov     x23, x5
  100126ef8  mov     x22, x4
  100126efc  mov     x20, x3
  100126f00  mov     x21, x0
  100126f04  mov     x0, x2
  100126f08  bl      _objc_retain
  100126f0c  mov     x19, x0
  100126f10  mov     x0, x20
  100126f14  bl      _objc_retain
  100126f18  mov     x20, x0
  100126f1c  adrp    x8, #0x1003b8000
  100126f20  add     x8, x8, #0x5b0                           ; &d_1003b85b0
  100126f24  cmp     x23, x8
  100126f28  b.eq    loc_100126f64                            ; if (arg4 == &d_1003b85b0)
  100126f2c  str     x21, [sp]
  100126f30  adrp    x8, #0x10041f000
  100126f34  ldr     x8, [x8, #0x148]
  100126f38  str     x8, [sp, #8]
  100126f3c  adrp    x8, #0x10041b000
  100126f40  nop
  100126f44  ldr     x1, [x8, #0xb88]
  100126f48  mov     x0, sp
  100126f4c  mov     x2, x19
  100126f50  mov     x3, x20
  100126f54  mov     x4, x22
  100126f58  mov     x5, x23
  100126f5c  bl      _objc_msgSendSuper2                      ; [super observeValueForKeyPath:arg1 ofObject:arg2 change:arg3 context:arg4]
  100126f60  b       loc_100126fd0
loc_100126f64:
  100126f64  adrp    x8, #0x1003b0000
  100126f68  ldr     x8, [x8, #0x48]                          ; _NSKeyValueChangeNewKey
  100126f6c  ldr     x2, [x8]                                 ; x2 = _NSKeyValueChangeNewKey[+0x0]
  100126f70  adrp    x8, #0x10041b000
  100126f74  nop
  100126f78  ldr     x1, [x8, #0xb70]
  100126f7c  mov     x0, x22
  100126f80  bl      _objc_msgSend                            ; [arg3 objectForKeyedSubscript:_NSKeyValueChangeNewKey[+0x0]]
  100126f84  mov     x29, x29
  100126f88  bl      _objc_retainAutoreleasedReturnValue
  100126f8c  mov     x22, x0
  100126f90  adrp    x8, #0x100417000
  100126f94  nop
  100126f98  ldr     x1, [x8, #0xd8]
  100126f9c  bl      _objc_msgSend                            ; [[arg3 objectForKeyedSubscript:_NSKeyValueChangeNewKey[+0x0]] boolValue]
  100126fa0  adrp    x8, #0x100420000
  100126fa4  ldrsw   x23, [x8, #0x8c4]                        ; ivar offset GAIBatchingDispatcher._optOut (+0x8)
  100126fa8  strb    w0, [x21, x23]                           ; self->_optOut = [[arg3 objectForKeyedSubscript:_NSKeyValueChangeNewKey[+0x0]] boolValue]
  100126fac  mov     x0, x22
  100126fb0  bl      _objc_release
  100126fb4  ldrb    w8, [x21, x23]                           ; w8 = self->_optOut
  100126fb8  cbz     w8, loc_100126fd0                        ; if (self->_optOut == 0)
  100126fbc  adrp    x8, #0x10041c000
  100126fc0  nop
  100126fc4  ldr     x1, [x8, #0x2e8]
  100126fc8  mov     x0, x21
  100126fcc  bl      _objc_msgSend                            ; [self deleteAllHits]
loc_100126fd0:
  100126fd0  mov     x0, x20
  100126fd4  bl      _objc_release
  100126fd8  mov     x0, x19
  100126fdc  bl      _objc_release
  100126fe0  sub     sp, x29, #0x30
  100126fe4  ldp     x24, x23, [sp], #0x10
  100126fe8  ldp     x22, x21, [sp], #0x10
  100126fec  ldp     x20, x19, [sp], #0x10
  100126ff0  ldp     x29, x30, [sp], #0x10
  100126ff4  ret

; ======================================================================
; -[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]
; address 0x100126ff8  size 652  kind objc
; ======================================================================
  100126ff8  stp     x29, x30, [sp, #-0x10]!
  100126ffc  mov     x29, sp
  100127000  stp     x20, x19, [sp, #-0x10]!
  100127004  stp     x22, x21, [sp, #-0x10]!
  100127008  stp     x24, x23, [sp, #-0x10]!
  10012700c  stp     x26, x25, [sp, #-0x10]!
  100127010  stp     x28, x27, [sp, #-0x10]!
  100127014  sub     sp, sp, #0x30
  100127018  mov     x22, x6
  10012701c  mov     x21, x5
  100127020  mov     x20, x3
  100127024  mov     x23, x0
  100127028  mov     x0, x2
  10012702c  bl      _objc_retain
  100127030  mov     x19, x0
  100127034  mov     x0, x20
  100127038  bl      _objc_retain
  10012703c  mov     x20, x0
  100127040  mov     x0, x21
  100127044  bl      _objc_retain
  100127048  mov     x21, x0
  10012704c  mov     x0, x22
  100127050  bl      _objc_retain
  100127054  mov     x22, x0
  100127058  cbz     x20, loc_1001270cc                       ; if (arg2 == 0)
  10012705c  adrp    x8, #0x10041e000
  100127060  ldr     x0, [x8, #0x630]                         ; class NSHTTPURLResponse
  100127064  adrp    x8, #0x100417000
  100127068  nop
  10012706c  ldr     x1, [x8, #0x2e0]
  100127070  bl      _objc_msgSend                            ; [NSHTTPURLResponse class]
  100127074  mov     x2, x0
  100127078  adrp    x8, #0x100417000
  10012707c  nop
  100127080  ldr     x1, [x8, #0x3b8]
  100127084  mov     x0, x20
  100127088  bl      _objc_msgSend                            ; [arg2 isKindOfClass:[NSHTTPURLResponse class]]
  10012708c  cbz     w0, loc_1001270cc                        ; if ([arg2 isKindOfClass:[NSHTTPURLResponse class]] == 0)
  100127090  adrp    x8, #0x10041b000
  100127094  nop
  100127098  ldr     x1, [x8, #0xb00]
  10012709c  mov     x0, x20
  1001270a0  bl      _objc_msgSend                            ; [arg2 statusCode]
  1001270a4  mov     x25, x0
  1001270a8  cmp     x22, #0
  1001270ac  cset    w3, eq
  1001270b0  adrp    x8, #0x10041c000
  1001270b4  nop
  1001270b8  ldr     x1, [x8, #0x2f0]
  1001270bc  mov     x0, x23
  1001270c0  mov     x2, x19
  1001270c4  bl      _objc_msgSend                            ; [self didSendHits:arg1 sendMore:(arg5 == 0)]
  1001270c8  b       loc_1001270e4
loc_1001270cc:
  1001270cc  adrp    x8, #0x100420000
  1001270d0  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  1001270d4  ldr     x0, [x23, x8]                            ; x0 = self->_connection
  1001270d8  str     xzr, [x23, x8]                           ; self->_connection = 0
  1001270dc  bl      _objc_release
  1001270e0  mov     x25, #-1
loc_1001270e4:
  1001270e4  adrp    x8, #0x10041d000
  1001270e8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001270ec  adrp    x8, #0x10041b000
  1001270f0  nop
  1001270f4  ldr     x1, [x8, #0xdc8]
  1001270f8  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001270fc  mov     x29, x29
  100127100  bl      _objc_retainAutoreleasedReturnValue
  100127104  mov     x23, x0
  100127108  adrp    x8, #0x10041d000
  10012710c  ldr     x26, [x8, #0xf78]                        ; class NSString
  100127110  adrp    x8, #0x1003b7000
  100127114  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100127118  ldr     x27, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10012711c  adrp    x8, #0x1003b7000
  100127120  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100127124  ldr     x28, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100127128  adrp    x8, #0x10041b000
  10012712c  nop
  100127130  ldr     x1, [x8, #0x580]
  100127134  adrp    x0, #0x1003c6000
  100127138  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10012713c  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100127140  mov     x29, x29
  100127144  bl      _objc_retainAutoreleasedReturnValue
  100127148  mov     x24, x0
  10012714c  adrp    x8, #0x100416000
  100127150  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  100127154  ldr     x1, [x8]
  100127158  cbz     x21, loc_1001271d0                       ; if (arg4 == 0)
  10012715c  mov     x8, #0x9c
  100127160  adrp    x9, #0x100391000
  100127164  add     x9, x9, #0x6ac                           ; "-[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]"
  100127168  stp     x8, x21, [sp, #0x20]
  10012716c  stp     x9, x24, [sp, #0x10]
  100127170  stp     x27, x28, [sp]
  100127174  adrp    x2, #0x1003c5000
  100127178  add     x2, x2, #0xff0                           ; @"%@ %@ %s (%@:%d): Dispatch error: %@"
  10012717c  mov     x0, x26
  100127180  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Dispatch error: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 156, arg4]
  100127184  mov     x29, x29
  100127188  bl      _objc_retainAutoreleasedReturnValue
  10012718c  mov     x25, x0
  100127190  adrp    x8, #0x10041b000
  100127194  nop
  100127198  ldr     x1, [x8, #0xea0]
  10012719c  mov     x0, x23
  1001271a0  mov     x2, x25
  1001271a4  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Dispatch error: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 156, arg4]]
  1001271a8  mov     x0, x25
  1001271ac  bl      _objc_release
  1001271b0  mov     x0, x24
  1001271b4  bl      _objc_release
  1001271b8  mov     x0, x23
  1001271bc  bl      _objc_release
  1001271c0  cbz     x22, loc_100127248                       ; if (arg5 == 0)
  1001271c4  ldr     x8, [x22, #0x10]                         ; x8 = arg5[+0x10]
  1001271c8  mov     x1, #2
  1001271cc  b       loc_100127240
loc_1001271d0:
  1001271d0  mov     x8, #0xa1
  1001271d4  adrp    x9, #0x100391000
  1001271d8  add     x9, x9, #0x6ac                           ; "-[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]"
  1001271dc  stp     x8, x25, [sp, #0x20]
  1001271e0  stp     x9, x24, [sp, #0x10]
  1001271e4  stp     x27, x28, [sp]
  1001271e8  adrp    x2, #0x1003c6000
  1001271ec  add     x2, x2, #0x30                            ; @"%@ %@ %s (%@:%d): Hit(s) dispatched: HTTP status %ld"
  1001271f0  mov     x0, x26
  1001271f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Hit(s) dispatched: HTTP status %ld", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 161, sp[40]]
  1001271f8  mov     x29, x29
  1001271fc  bl      _objc_retainAutoreleasedReturnValue
  100127200  mov     x25, x0
  100127204  adrp    x8, #0x10041b000
  100127208  nop
  10012720c  ldr     x1, [x8, #0xea0]
  100127210  mov     x0, x23
  100127214  mov     x2, x25
  100127218  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Hit(s) dispatched: HTTP status %ld", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher didSendHits:response:data:error:completionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 161, sp[40]]]
  10012721c  mov     x0, x25
  100127220  bl      _objc_release
  100127224  mov     x0, x24
  100127228  bl      _objc_release
  10012722c  mov     x0, x23
  100127230  bl      _objc_release
  100127234  cbz     x22, loc_100127248                       ; if (arg5 == 0)
  100127238  ldr     x8, [x22, #0x10]                         ; x8 = arg5[+0x10]
  10012723c  mov     x1, #1
loc_100127240:
  100127240  mov     x0, x22
  100127244  blr     x8                                       ; call arg5[+0x10]
loc_100127248:
  100127248  mov     x0, x22
  10012724c  bl      _objc_release
  100127250  mov     x0, x21
  100127254  bl      _objc_release
  100127258  mov     x0, x20
  10012725c  bl      _objc_release
  100127260  mov     x0, x19
  100127264  sub     sp, x29, #0x50
  100127268  ldp     x28, x27, [sp], #0x10
  10012726c  ldp     x26, x25, [sp], #0x10
  100127270  ldp     x24, x23, [sp], #0x10
  100127274  ldp     x22, x21, [sp], #0x10
  100127278  ldp     x20, x19, [sp], #0x10
  10012727c  ldp     x29, x30, [sp], #0x10
  100127280  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher didSendHits:sendMore:]
; address 0x100127284  size 448  kind objc
; ======================================================================
  100127284  stp     x29, x30, [sp, #-0x10]!
  100127288  mov     x29, sp
  10012728c  stp     x20, x19, [sp, #-0x10]!
  100127290  stp     x22, x21, [sp, #-0x10]!
  100127294  stp     x24, x23, [sp, #-0x10]!
  100127298  stp     x26, x25, [sp, #-0x10]!
  10012729c  sub     sp, sp, #0x30
  1001272a0  mov     x21, x3
  1001272a4  mov     x22, x1
  1001272a8  mov     x20, x0
  1001272ac  mov     x0, x2
  1001272b0  bl      _objc_retain
  1001272b4  mov     x19, x0
  1001272b8  adrp    x8, #0x10041c000
  1001272bc  nop
  1001272c0  ldr     x1, [x8, #0x2f8]
  1001272c4  mov     w4, #0
  1001272c8  mov     x0, x20
  1001272cc  mov     x2, x22
  1001272d0  mov     x3, x19
  1001272d4  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0]
  1001272d8  tbnz    w0, #0, loc_100127424                    ; if (([self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0] & 1))
  1001272dc  adrp    x8, #0x10041b000
  1001272e0  nop
  1001272e4  ldr     x1, [x8, #0xb10]
  1001272e8  mov     x0, x20
  1001272ec  mov     x2, x19
  1001272f0  bl      _objc_msgSend                            ; [self deleteHits:arg1]
  1001272f4  adrp    x8, #0x100420000
  1001272f8  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  1001272fc  ldr     x0, [x20, x8]                            ; x0 = self->_connection
  100127300  str     xzr, [x20, x8]                           ; self->_connection = 0
  100127304  bl      _objc_release
  100127308  adrp    x8, #0x10041d000
  10012730c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100127310  adrp    x8, #0x10041b000
  100127314  nop
  100127318  ldr     x1, [x8, #0xdc8]
  10012731c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100127320  mov     x29, x29
  100127324  bl      _objc_retainAutoreleasedReturnValue
  100127328  mov     x22, x0
  10012732c  adrp    x8, #0x10041d000
  100127330  ldr     x23, [x8, #0xf78]                        ; class NSString
  100127334  adrp    x8, #0x1003b7000
  100127338  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10012733c  ldr     x25, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100127340  adrp    x8, #0x1003b7000
  100127344  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100127348  ldr     x26, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  10012734c  adrp    x8, #0x10041b000
  100127350  nop
  100127354  ldr     x1, [x8, #0x580]
  100127358  adrp    x0, #0x1003c6000
  10012735c  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100127360  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100127364  mov     x29, x29
  100127368  bl      _objc_retainAutoreleasedReturnValue
  10012736c  mov     x24, x0
  100127370  adrp    x8, #0x100416000
  100127374  nop
  100127378  ldr     x1, [x8, #0xe30]
  10012737c  mov     x0, x19
  100127380  bl      _objc_msgSend                            ; [arg1 count]
  100127384  adrp    x8, #0x100416000
  100127388  nop
  10012738c  ldr     x1, [x8, #0xee8]
  100127390  mov     x8, #0xae
  100127394  adrp    x9, #0x100391000
  100127398  add     x9, x9, #0x808                           ; "-[GAIBatchingDispatcher didSendHits:sendMore:]"
  10012739c  stp     x8, x0, [sp, #0x20]
  1001273a0  stp     x9, x24, [sp, #0x10]
  1001273a4  stp     x25, x26, [sp]
  1001273a8  adrp    x2, #0x1003c6000
  1001273ac  add     x2, x2, #0x50                            ; @"%@ %@ %s (%@:%d): %lu hit(s) sent"
  1001273b0  mov     x0, x23
  1001273b4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): %lu hit(s) sent", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher didSendHits:sendMore:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 174, [arg1 count]]
  1001273b8  mov     x29, x29
  1001273bc  bl      _objc_retainAutoreleasedReturnValue
  1001273c0  mov     x23, x0
  1001273c4  adrp    x8, #0x10041b000
  1001273c8  nop
  1001273cc  ldr     x1, [x8, #0xea0]
  1001273d0  mov     x0, x22
  1001273d4  mov     x2, x23
  1001273d8  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): %lu hit(s) sent", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher didSendHits:sendMore:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 174, [arg1 count]]]
  1001273dc  mov     x0, x23
  1001273e0  bl      _objc_release
  1001273e4  mov     x0, x24
  1001273e8  bl      _objc_release
  1001273ec  mov     x0, x22
  1001273f0  bl      _objc_release
  1001273f4  adrp    x8, #0x10041b000
  1001273f8  nop
  1001273fc  ldr     x1, [x8, #0xa88]
  100127400  mov     x0, x20
  100127404  bl      _objc_msgSend                            ; [self canDispatch]
  100127408  cbz     w0, loc_100127424                        ; if ([self canDispatch] == 0)
  10012740c  cbz     w21, loc_100127424                       ; if (arg2 == 0)
  100127410  adrp    x8, #0x10041b000
  100127414  nop
  100127418  ldr     x1, [x8, #0xac0]
  10012741c  mov     x0, x20
  100127420  bl      _objc_msgSend                            ; [self dispatch]
loc_100127424:
  100127424  mov     x0, x19
  100127428  sub     sp, x29, #0x40
  10012742c  ldp     x26, x25, [sp], #0x10
  100127430  ldp     x24, x23, [sp], #0x10
  100127434  ldp     x22, x21, [sp], #0x10
  100127438  ldp     x20, x19, [sp], #0x10
  10012743c  ldp     x29, x30, [sp], #0x10
  100127440  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher init]
; address 0x100127444  size 116  kind objc
; ======================================================================
  100127444  stp     x29, x30, [sp, #-0x10]!
  100127448  mov     x29, sp
  10012744c  stp     x20, x19, [sp, #-0x10]!
  100127450  sub     sp, sp, #0x10
  100127454  mov     x19, x1
  100127458  str     x0, [sp]
  10012745c  adrp    x8, #0x10041f000
  100127460  ldr     x8, [x8, #0x148]
  100127464  str     x8, [sp, #8]
  100127468  adrp    x8, #0x100416000
  10012746c  nop
  100127470  ldr     x1, [x8, #0xab8]
  100127474  mov     x0, sp
  100127478  bl      _objc_msgSendSuper2                      ; [super init]
  10012747c  mov     x20, x0
  100127480  cbz     x20, loc_10012749c                       ; if (self == 0)
  100127484  adrp    x8, #0x10041b000
  100127488  nop
  10012748c  ldr     x1, [x8, #0xd68]
  100127490  mov     x0, x20
  100127494  mov     x2, x19
  100127498  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
loc_10012749c:
  10012749c  mov     x0, x20
  1001274a0  bl      _objc_release
  1001274a4  mov     x0, #0
  1001274a8  sub     sp, x29, #0x10
  1001274ac  ldp     x20, x19, [sp], #0x10
  1001274b0  ldp     x29, x30, [sp], #0x10
  1001274b4  ret

; ======================================================================
; -[GAIBatchingDispatcher initWithDataStore:]
; address 0x1001274b8  size 696  kind objc
; ======================================================================
  1001274b8  stp     x29, x30, [sp, #-0x10]!
  1001274bc  mov     x29, sp
  1001274c0  stp     x20, x19, [sp, #-0x10]!
  1001274c4  stp     x22, x21, [sp, #-0x10]!
  1001274c8  stp     x24, x23, [sp, #-0x10]!
  1001274cc  sub     sp, sp, #0x10
  1001274d0  mov     x20, x0
  1001274d4  mov     x0, x2
  1001274d8  bl      _objc_retain
  1001274dc  mov     x19, x0
  1001274e0  str     x20, [sp]
  1001274e4  adrp    x8, #0x10041f000
  1001274e8  ldr     x8, [x8, #0x148]
  1001274ec  str     x8, [sp, #8]
  1001274f0  adrp    x8, #0x100416000
  1001274f4  nop
  1001274f8  ldr     x21, [x8, #0xab8]
  1001274fc  mov     x0, sp
  100127500  mov     x1, x21
  100127504  bl      _objc_msgSendSuper2                      ; [super init]
  100127508  mov     x20, x0
  10012750c  cbz     x20, loc_1001276f8                       ; if (self == 0)
  100127510  adrp    x8, #0x100420000
  100127514  ldrsw   x22, [x8, #0x8cc]                        ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  100127518  mov     x0, x19
  10012751c  bl      _objc_retain
  100127520  ldr     x8, [x20, x22]                           ; x8 = self->_dataStore
  100127524  str     x0, [x20, x22]                           ; self->_dataStore = arg1
  100127528  mov     x0, x8
  10012752c  bl      _objc_release
  100127530  adrp    x8, #0x1003b8000
  100127534  add     x8, x8, #0x1e0                           ; &d_1003b81e0
  100127538  ldr     x0, [x8]                                 ; [&d_1003b81e0] -> @"https://ssl.google-analytics.com/collect"
  10012753c  adrp    x8, #0x100420000
  100127540  ldrsw   x23, [x8, #0x8d0]                        ; ivar offset GAIBatchingDispatcher._httpsURL (+0x70)
  100127544  bl      _objc_retain
  100127548  mov     x22, x0
  10012754c  ldr     x0, [x20, x23]                           ; x0 = self->_httpsURL
  100127550  str     x22, [x20, x23]                          ; self->_httpsURL = @"https://ssl.google-analytics.com/collect"
  100127554  bl      _objc_release
  100127558  adrp    x8, #0x1003b8000
  10012755c  add     x8, x8, #0x1e8                           ; &d_1003b81e8
  100127560  ldr     x0, [x8]                                 ; [&d_1003b81e8] -> @"http://www.google-analytics.com/collect"
  100127564  adrp    x8, #0x100420000
  100127568  ldrsw   x23, [x8, #0x8d4]                        ; ivar offset GAIBatchingDispatcher._httpURL (+0x68)
  10012756c  bl      _objc_retain
  100127570  ldr     x8, [x20, x23]                           ; x8 = self->_httpURL
  100127574  str     x0, [x20, x23]                           ; self->_httpURL = @"http://www.google-analytics.com/collect"
  100127578  mov     x0, x8
  10012757c  bl      _objc_release
  100127580  adrp    x8, #0x100420000
  100127584  ldrsw   x8, [x8, #0x8b8]                         ; ivar offset GAIBatchingDispatcher._dispatchInterval (+0x20)
  100127588  mov     x9, #0x405e000000000000
  10012758c  str     x9, [x20, x8]                            ; self->_dispatchInterval = 0x405e000000000000
  100127590  adrp    x8, #0x10041e000
  100127594  ldr     x0, [x8, #0x640]                         ; class GAIRequestBuilder
  100127598  adrp    x8, #0x100416000
  10012759c  nop
  1001275a0  ldr     x23, [x8, #0xac8]
  1001275a4  mov     x1, x23
  1001275a8  bl      _objc_msgSend                            ; [GAIRequestBuilder alloc]
  1001275ac  mov     x1, x21
  1001275b0  bl      _objc_msgSend                            ; [[GAIRequestBuilder alloc] init]
  1001275b4  adrp    x8, #0x100420000
  1001275b8  ldrsw   x9, [x8, #0x8d8]                         ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  1001275bc  ldr     x8, [x20, x9]                            ; x8 = self->_requestBuilder
  1001275c0  str     x0, [x20, x9]                            ; self->_requestBuilder = [[GAIRequestBuilder alloc] init]
  1001275c4  mov     x0, x8
  1001275c8  bl      _objc_release
  1001275cc  adrp    x8, #0x100420000
  1001275d0  ldrsw   x8, [x8, #0x8dc]                         ; ivar offset GAIBatchingDispatcher._maxHitsPerDispatch (+0x40)
  1001275d4  mov     x9, #0x14
  1001275d8  str     x9, [x20, x8]                            ; self->_maxHitsPerDispatch = 20
  1001275dc  adrp    x8, #0x100420000
  1001275e0  ldrsw   x8, [x8, #0x8e0]                         ; ivar offset GAIBatchingDispatcher._maxHitAge (+0x48)
  1001275e4  mov     x9, #0x4143000000000000
  1001275e8  movk    x9, #0xc680, lsl #32                     ; 0x4143c68000000000 (as double 2592000.0)
  1001275ec  str     x9, [x20, x8]                            ; self->_maxHitAge = 0x4143c68000000000
  1001275f0  adrp    x8, #0x1002fa000
  1001275f4  add     x8, x8, #0xa40                           ; tconst_1002faa40
  1001275f8  ldr     x8, [x8]                                 ; [tconst_1002faa40] -> 0x2000
  1001275fc  adrp    x9, #0x100420000
  100127600  ldrsw   x9, [x9, #0x8e4]                         ; ivar offset GAIBatchingDispatcher._maxBodySize (+0x50)
  100127604  str     x8, [x20, x9]                            ; self->_maxBodySize = 0x2000
  100127608  adrp    x8, #0x1002fa000
  10012760c  add     x8, x8, #0xa38                           ; tconst_1002faa38
  100127610  ldr     x8, [x8]                                 ; [tconst_1002faa38] -> 0x2000
  100127614  adrp    x9, #0x100420000
  100127618  ldrsw   x9, [x9, #0x8e8]                         ; ivar offset GAIBatchingDispatcher._maxHitSize (+0x58)
  10012761c  str     x8, [x20, x9]                            ; self->_maxHitSize = 0x2000
  100127620  adrp    x8, #0x100420000
  100127624  ldrsw   x8, [x8, #0x8bc]                         ; ivar offset GAIBatchingDispatcher._hostReachable (+0xa)
  100127628  mov     w9, #1
  10012762c  strb    w9, [x20, x8]                            ; self->_hostReachable = 1
  100127630  adrp    x8, #0x100420000
  100127634  ldrsw   x8, [x8, #0x8c0]                         ; ivar offset GAIBatchingDispatcher._hasHits (+0x9)
  100127638  strb    w9, [x20, x8]                            ; self->_hasHits = 1
  10012763c  adrp    x8, #0x10041e000
  100127640  ldr     x0, [x8, #0xa0]                          ; class NSURL
  100127644  adrp    x8, #0x10041a000
  100127648  nop
  10012764c  ldr     x1, [x8, #0x628]
  100127650  mov     x2, x22
  100127654  bl      _objc_msgSend                            ; [NSURL URLWithString:@"https://ssl.google-analytics.com/collect"]
  100127658  mov     x29, x29
  10012765c  bl      _objc_retainAutoreleasedReturnValue
  100127660  mov     x21, x0
  100127664  adrp    x8, #0x10041c000
  100127668  nop
  10012766c  ldr     x1, [x8, #0x300]
  100127670  bl      _objc_msgSend                            ; [[NSURL URLWithString:@"https://ssl.google-analytics.com/collect"] host]
  100127674  mov     x29, x29
  100127678  bl      _objc_retainAutoreleasedReturnValue
  10012767c  mov     x22, x0
  100127680  mov     x0, x21
  100127684  bl      _objc_release
  100127688  adrp    x8, #0x10041e000
  10012768c  ldr     x0, [x8, #0x648]                         ; class GAIReachabilityChecker
  100127690  mov     x1, x23
  100127694  bl      _objc_msgSend                            ; [GAIReachabilityChecker alloc]
  100127698  adrp    x8, #0x10041c000
  10012769c  nop
  1001276a0  ldr     x1, [x8, #0x308]
  1001276a4  mov     x2, x20
  1001276a8  mov     x3, x22
  1001276ac  bl      _objc_msgSend                            ; [[GAIReachabilityChecker alloc] initWithDelegate:self withHost:[[NSURL URLWithString:@"https://ssl.google-analytics.com/collect"] host]]
  1001276b0  adrp    x8, #0x100420000
  1001276b4  ldrsw   x21, [x8, #0x8ec]                        ; ivar offset GAIBatchingDispatcher._reachability (+0x60)
  1001276b8  ldr     x8, [x20, x21]                           ; x8 = self->_reachability
  1001276bc  str     x0, [x20, x21]                           ; self->_reachability = [[GAIReachabilityChecker alloc] initWithDelegate:self withHost:[[NSURL URLWithString:@"https://ssl.google-analytics.com/collect"] host]]
  1001276c0  mov     x0, x8
  1001276c4  bl      _objc_release
  1001276c8  ldr     x0, [x20, x21]                           ; x0 = self->_reachability
  1001276cc  adrp    x8, #0x10041b000
  1001276d0  nop
  1001276d4  ldr     x1, [x8, #0xc38]
  1001276d8  bl      _objc_msgSend                            ; [self->_reachability start]
  1001276dc  adrp    x8, #0x10041b000
  1001276e0  nop
  1001276e4  ldr     x1, [x8, #0xa68]
  1001276e8  mov     x0, x20
  1001276ec  bl      _objc_msgSend                            ; [self initialDispatch]
  1001276f0  mov     x0, x22
  1001276f4  bl      _objc_release
loc_1001276f8:
  1001276f8  adrp    x8, #0x10041d000
  1001276fc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100127700  adrp    x8, #0x100416000
  100127704  nop
  100127708  ldr     x1, [x8, #0xac0]
  10012770c  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100127710  mov     x29, x29
  100127714  bl      _objc_retainAutoreleasedReturnValue
  100127718  mov     x21, x0
  10012771c  adrp    x8, #0x100418000
  100127720  nop
  100127724  ldr     x1, [x8, #0x2e8]
  100127728  adrp    x3, #0x1003c6000
  10012772c  add     x3, x3, #0x630                           ; @"optOut"
  100127730  adrp    x5, #0x1003b8000
  100127734  add     x5, x5, #0x5b0                           ; &d_1003b85b0
  100127738  mov     x4, #1
  10012773c  mov     x2, x20
  100127740  bl      _objc_msgSend                            ; [[GAI sharedInstance] addObserver:self forKeyPath:@"optOut" options:1 context:&d_1003b85b0]
  100127744  mov     x0, x21
  100127748  bl      _objc_release
  10012774c  mov     x0, x19
  100127750  bl      _objc_release
  100127754  mov     x0, x20
  100127758  sub     sp, x29, #0x30
  10012775c  ldp     x24, x23, [sp], #0x10
  100127760  ldp     x22, x21, [sp], #0x10
  100127764  ldp     x20, x19, [sp], #0x10
  100127768  ldp     x29, x30, [sp], #0x10
  10012776c  ret

; ======================================================================
; -[GAIBatchingDispatcher dealloc]
; address 0x100127770  size 276  kind objc
; ======================================================================
  100127770  stp     x29, x30, [sp, #-0x10]!
  100127774  mov     x29, sp
  100127778  stp     x20, x19, [sp, #-0x10]!
  10012777c  sub     sp, sp, #0x10
  100127780  mov     x19, x0
  100127784  adrp    x8, #0x100420000
  100127788  ldrsw   x8, [x8, #0x8b4]                         ; ivar offset GAIBatchingDispatcher._timer (+0x80)
  10012778c  ldr     x0, [x19, x8]                            ; x0 = self->_timer
  100127790  adrp    x8, #0x100417000
  100127794  nop
  100127798  ldr     x1, [x8, #0x730]
  10012779c  bl      _objc_msgSend                            ; [self->_timer invalidate]
  1001277a0  adrp    x8, #0x100420000
  1001277a4  ldrsw   x8, [x8, #0x8ec]                         ; ivar offset GAIBatchingDispatcher._reachability (+0x60)
  1001277a8  ldr     x0, [x19, x8]                            ; x0 = self->_reachability
  1001277ac  adrp    x8, #0x100417000
  1001277b0  nop
  1001277b4  ldr     x1, [x8, #0x568]
  1001277b8  bl      _objc_msgSend                            ; [self->_reachability stop]
  1001277bc  adrp    x8, #0x100420000
  1001277c0  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  1001277c4  ldr     x0, [x19, x8]                            ; x0 = self->_connection
  1001277c8  adrp    x8, #0x10041b000
  1001277cc  nop
  1001277d0  ldr     x1, [x8, #0xc40]
  1001277d4  bl      _objc_msgSend                            ; [self->_connection cancel]
  1001277d8  adrp    x8, #0x10041d000
  1001277dc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001277e0  adrp    x8, #0x100416000
  1001277e4  nop
  1001277e8  ldr     x1, [x8, #0xac0]
  1001277ec  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1001277f0  mov     x29, x29
  1001277f4  bl      _objc_retainAutoreleasedReturnValue
  1001277f8  mov     x20, x0
  1001277fc  adrp    x8, #0x10041c000
  100127800  nop
  100127804  ldr     x1, [x8, #0x310]
  100127808  adrp    x3, #0x1003c6000
  10012780c  add     x3, x3, #0x630                           ; @"optOut"
  100127810  adrp    x4, #0x1003b8000
  100127814  add     x4, x4, #0x5b0                           ; &d_1003b85b0
  100127818  mov     x2, x19
  10012781c  bl      _objc_msgSend                            ; [[GAI sharedInstance] removeObserver:self forKeyPath:@"optOut" context:&d_1003b85b0]
  100127820  mov     x0, x20
  100127824  bl      _objc_release
  100127828  adrp    x8, #0x10041c000
  10012782c  nop
  100127830  ldr     x1, [x8, #0x318]
  100127834  mov     x0, x19
  100127838  bl      _objc_msgSend                            ; [self cancelDispatch]
  10012783c  adrp    x8, #0x10041c000
  100127840  nop
  100127844  ldr     x1, [x8, #0x320]
  100127848  mov     x0, x19
  10012784c  bl      _objc_msgSend                            ; [self cancelPerformRequests]
  100127850  str     x19, [sp]
  100127854  adrp    x8, #0x10041f000
  100127858  ldr     x8, [x8, #0x148]
  10012785c  str     x8, [sp, #8]
  100127860  adrp    x8, #0x100416000
  100127864  nop
  100127868  ldr     x1, [x8, #0xfc8]
  10012786c  mov     x0, sp
  100127870  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100127874  sub     sp, x29, #0x10
  100127878  ldp     x20, x19, [sp], #0x10
  10012787c  ldp     x29, x30, [sp], #0x10
  100127880  ret

; ======================================================================
; -[GAIBatchingDispatcher cancelPerformRequests]
; address 0x100127884  size 112  kind objc
; ======================================================================
  100127884  stp     x29, x30, [sp, #-0x10]!
  100127888  mov     x29, sp
  10012788c  stp     x20, x19, [sp, #-0x10]!
  100127890  mov     x8, x1
  100127894  mov     x19, x0
  100127898  adrp    x9, #0x10041c000
  10012789c  nop
  1001278a0  ldr     x1, [x9, #0x2f8]
  1001278a4  mov     w4, #1
  1001278a8  mov     x2, x8
  1001278ac  mov     x3, #0
  1001278b0  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:0 andWait:1]
  1001278b4  tbz     w0, #0, loc_1001278c4                    ; if (!([self rescheduleIfNeeded:_cmd withObject:0 andWait:1] & 1))
  1001278b8  ldp     x20, x19, [sp], #0x10
  1001278bc  ldp     x29, x30, [sp], #0x10
  1001278c0  ret
loc_1001278c4:
  1001278c4  adrp    x8, #0x100417000
  1001278c8  nop
  1001278cc  ldr     x1, [x8, #0x2e0]
  1001278d0  mov     x0, x19
  1001278d4  bl      _objc_msgSend                            ; [self class]
  1001278d8  adrp    x8, #0x100418000
  1001278dc  nop
  1001278e0  ldr     x1, [x8, #0x1d8]
  1001278e4  mov     x2, x19
  1001278e8  ldp     x20, x19, [sp], #0x10
  1001278ec  ldp     x29, x30, [sp], #0x10
  1001278f0  b       _objc_msgSend                            ; [[self class] cancelPreviousPerformRequestsWithTarget:self]

; ======================================================================
; -[GAIBatchingDispatcher batchByTimeGap:maxHits:]
; address 0x1001278f4  size 516  kind objc
; ======================================================================
  1001278f4  stp     x29, x30, [sp, #-0x10]!
  1001278f8  mov     x29, sp
  1001278fc  stp     x20, x19, [sp, #-0x10]!
  100127900  stp     x22, x21, [sp, #-0x10]!
  100127904  stp     x24, x23, [sp, #-0x10]!
  100127908  stp     x26, x25, [sp, #-0x10]!
  10012790c  stp     x28, x27, [sp, #-0x10]!
  100127910  stp     d9, d8, [sp, #-0x10]!
  100127914  sub     sp, sp, #0x20
  100127918  mov     x20, x3
  10012791c  mov     x0, x2
  100127920  bl      _objc_retain
  100127924  mov     x19, x0
  100127928  adrp    x8, #0x100416000
  10012792c  nop
  100127930  ldr     x21, [x8, #0xe30]
  100127934  mov     x1, x21
  100127938  bl      _objc_msgSend                            ; [arg1 count]
  10012793c  cmp     x0, x20
  100127940  b.hs    loc_100127954                            ; if ([arg1 count] >=u arg2)
  100127944  mov     x0, x19
  100127948  mov     x1, x21
  10012794c  bl      _objc_msgSend                            ; [arg1 count]
  100127950  mov     x20, x0
loc_100127954:
  100127954  cbz     x20, loc_100127aac                       ; if (x20 == 0)
  100127958  adrp    x8, #0x10041b000
  10012795c  nop
  100127960  ldr     x21, [x8, #0xf28]
  100127964  mov     x2, #0
  100127968  mov     x0, x19
  10012796c  mov     x1, x21
  100127970  bl      _objc_msgSend                            ; [arg1 objectAtIndexedSubscript:0]
  100127974  mov     x29, x29
  100127978  bl      _objc_retainAutoreleasedReturnValue
  10012797c  mov     x24, x0
  100127980  cmp     x20, #2
  100127984  b.lo    loc_100127ab4                            ; if (x20 <u 2)
  100127988  str     xzr, [sp, #8]
  10012798c  adrp    x8, #0x1003b8000
  100127990  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  100127994  ldr     x23, [x8]                                ; [&d_1003b81f8] -> @"timestamp"
  100127998  adrp    x8, #0x10041b000
  10012799c  nop
  1001279a0  ldr     x25, [x8, #0xb70]
  1001279a4  adrp    x8, #0x100419000
  1001279a8  nop
  1001279ac  ldr     x8, [x8, #0x4e8]
  1001279b0  str     x8, [sp, #0x10]
  1001279b4  adrp    x8, #0x100418000
  1001279b8  nop
  1001279bc  ldr     x8, [x8, #0x160]
  1001279c0  str     x8, [sp]
  1001279c4  mov     x28, #1
  1001279c8  adrp    x8, #0x100181000
  1001279cc  ldr     d8, [x8, #0xca8]                         ; d8 = 1000.0
  1001279d0  str     x20, [sp, #0x18]
  1001279d4  mov     x27, x24
loc_1001279d8:
  1001279d8  mov     x0, x19
  1001279dc  mov     x1, x21
  1001279e0  mov     x2, x28
  1001279e4  bl      _objc_msgSend                            ; [arg1 objectAtIndexedSubscript:x2]
  1001279e8  mov     x29, x29
  1001279ec  bl      _objc_retainAutoreleasedReturnValue
  1001279f0  mov     x24, x0
  1001279f4  mov     x0, x27
  1001279f8  mov     x1, x25
  1001279fc  mov     x2, x23
  100127a00  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"timestamp"]
  100127a04  mov     x29, x29
  100127a08  bl      _objc_retainAutoreleasedReturnValue
  100127a0c  mov     x26, x0
  100127a10  mov     x0, x24
  100127a14  mov     x1, x25
  100127a18  mov     x2, x23
  100127a1c  bl      _objc_msgSend                            ; [[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"timestamp"]
  100127a20  mov     x29, x29
  100127a24  bl      _objc_retainAutoreleasedReturnValue
  100127a28  mov     x22, x0
  100127a2c  cbz     x26, loc_100127a80                       ; if ([x0 objectForKeyedSubscript:@"timestamp"] == 0)
  100127a30  cbz     x22, loc_100127a80                       ; if ([[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"timestamp"] == 0)
  100127a34  mov     x0, x22
  100127a38  ldr     x1, [sp, #0x10]
  100127a3c  mov     x2, x26
  100127a40  bl      _objc_msgSend                            ; [[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"timestamp"] compare:[x0 objectForKeyedSubscript:@"timestamp"]]
  100127a44  cmn     x0, #1
  100127a48  b.eq    loc_100127a80                            ; if ([[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"timestamp"] compare:[x0 objectForKeyedSubscript:@"timesta… == -1)
  100127a4c  mov     x0, x22
  100127a50  ldr     x1, [sp]
  100127a54  mov     x2, x26
  100127a58  bl      _objc_msgSend                            ; [[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"timestamp"] timeIntervalSinceDate:[x0 objectForKeyedSubscript:@"timestamp"]]
  100127a5c  fmul    d0, d0, d8                               ; t1 = ([[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"timestamp"] timeIntervalSinceDate:[x0 objectForKeyedSubscript:@"timestamp"]] * 1000)
  100127a60  fcvtzu  x8, d0
  100127a64  ldr     x10, [sp, #8]
  100127a68  cmp     x8, x10
  100127a6c  ldr     x9, [sp, #0x18]
  100127a70  csel    x9, x9, x28, lo
  100127a74  str     x9, [sp, #0x18]
  100127a78  csel    x10, x10, x8, lo
  100127a7c  str     x10, [sp, #8]
loc_100127a80:
  100127a80  mov     x0, x27
  100127a84  bl      _objc_release
  100127a88  mov     x0, x22
  100127a8c  bl      _objc_release
  100127a90  mov     x0, x26
  100127a94  bl      _objc_release
  100127a98  add     x28, x28, #1
  100127a9c  cmp     x20, x28
  100127aa0  mov     x27, x24
  100127aa4  b.ne    loc_1001279d8                            ; if (x20 != (x28 + 1))
  100127aa8  b       loc_100127abc
loc_100127aac:
  100127aac  mov     x20, #0
  100127ab0  b       loc_100127ac8
loc_100127ab4:
  100127ab4  mov     x8, #1
  100127ab8  str     x8, [sp, #0x18]
loc_100127abc:
  100127abc  mov     x0, x24
  100127ac0  bl      _objc_release
  100127ac4  ldr     x20, [sp, #0x18]
loc_100127ac8:
  100127ac8  mov     x0, x19
  100127acc  bl      _objc_release
  100127ad0  mov     x0, x20
  100127ad4  sub     sp, x29, #0x60
  100127ad8  ldp     d9, d8, [sp], #0x10
  100127adc  ldp     x28, x27, [sp], #0x10
  100127ae0  ldp     x26, x25, [sp], #0x10
  100127ae4  ldp     x24, x23, [sp], #0x10
  100127ae8  ldp     x22, x21, [sp], #0x10
  100127aec  ldp     x20, x19, [sp], #0x10
  100127af0  ldp     x29, x30, [sp], #0x10
  100127af4  ret

; ======================================================================
; -[GAIBatchingDispatcher batchBySessionSplit:maxHits:]
; address 0x100127af8  size 380  kind objc
; ======================================================================
  100127af8  stp     x29, x30, [sp, #-0x10]!
  100127afc  mov     x29, sp
  100127b00  stp     x20, x19, [sp, #-0x10]!
  100127b04  stp     x22, x21, [sp, #-0x10]!
  100127b08  stp     x24, x23, [sp, #-0x10]!
  100127b0c  stp     x26, x25, [sp, #-0x10]!
  100127b10  stp     x28, x27, [sp, #-0x10]!
  100127b14  sub     sp, sp, #0x30
  100127b18  mov     x19, x3
  100127b1c  str     x2, [sp, #0x28]
  100127b20  adrp    x8, #0x10041b000
  100127b24  nop
  100127b28  ldr     x8, [x8, #0xf28]
  100127b2c  str     x8, [sp, #0x20]
  100127b30  adrp    x8, #0x1003b8000
  100127b34  add     x8, x8, #0x398                           ; &d_1003b8398
  100127b38  ldr     x22, [x8]                                ; [&d_1003b8398] -> @"&sc"
  100127b3c  adrp    x8, #0x1003b8000
  100127b40  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  100127b44  ldr     x23, [x8]                                ; [&d_1003b81f0] -> @"parameters"
  100127b48  adrp    x8, #0x10041b000
  100127b4c  nop
  100127b50  ldr     x24, [x8, #0xb70]
  100127b54  adrp    x8, #0x1003b8000
  100127b58  add     x8, x8, #0x1d0                           ; &d_1003b81d0
  100127b5c  ldr     x8, [x8]                                 ; [&d_1003b81d0] -> @"start"
  100127b60  str     x8, [sp, #0x18]
  100127b64  adrp    x8, #0x100416000
  100127b68  nop
  100127b6c  ldr     x21, [x8, #0xf58]
  100127b70  adrp    x8, #0x1003b8000
  100127b74  add     x8, x8, #0x1d8                           ; &d_1003b81d8
  100127b78  ldr     x8, [x8]                                 ; [&d_1003b81d8] -> @"end"
  100127b7c  sub     x27, x19, #1
  100127b80  stp     x8, x19, [sp, #8]
loc_100127b84:
  100127b84  subs    x20, x27, #1
  100127b88  b.lt    loc_100127c50                            ; if (x27 < 1)
  100127b8c  sub     x19, x19, #1
  100127b90  ldp     x1, x0, [sp, #0x20]
  100127b94  mov     x2, x27
  100127b98  bl      _objc_msgSend                            ; [arg1 objectAtIndexedSubscript:x2]
  100127b9c  mov     x29, x29
  100127ba0  bl      _objc_retainAutoreleasedReturnValue
  100127ba4  mov     x28, x0
  100127ba8  mov     x1, x24
  100127bac  mov     x2, x23
  100127bb0  bl      _objc_msgSend                            ; [[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"]
  100127bb4  mov     x29, x29
  100127bb8  bl      _objc_retainAutoreleasedReturnValue
  100127bbc  mov     x26, x0
  100127bc0  mov     x1, x24
  100127bc4  mov     x2, x22
  100127bc8  bl      _objc_msgSend                            ; [[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"&sc"]
  100127bcc  mov     x29, x29
  100127bd0  bl      _objc_retainAutoreleasedReturnValue
  100127bd4  mov     x25, x0
  100127bd8  mov     x0, x26
  100127bdc  bl      _objc_release
  100127be0  cbz     x25, loc_100127c34                       ; if ([[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"&sc"] == 0)
  100127be4  mov     x0, x25
  100127be8  mov     x26, x21
  100127bec  mov     x1, x26
  100127bf0  ldr     x2, [sp, #0x18]
  100127bf4  bl      _objc_msgSend                            ; [[[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"&sc"] isEqualToString:@"start"]
  100127bf8  tbz     w0, #0, loc_100127c0c                    ; if (!([[[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"&sc"] isEqualToString:@"start"] & 1))
  100127bfc  mov     x21, x26
  100127c00  mov     w26, #1
  100127c04  str     x19, [sp, #0x10]
  100127c08  b       loc_100127c38
loc_100127c0c:
  100127c0c  mov     x0, x25
  100127c10  mov     x1, x26
  100127c14  mov     x21, x26
  100127c18  ldr     x2, [sp, #8]
  100127c1c  bl      _objc_msgSend                            ; [[[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"&sc"] isEqualToString:@"end"]
  100127c20  tbz     w0, #0, loc_100127c34                    ; if (!([[[[arg1 objectAtIndexedSubscript:x2] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"&sc"] isEqualToString:@"end"] & 1))
  100127c24  add     x8, x27, #1
  100127c28  str     x8, [sp, #0x10]
  100127c2c  mov     w26, #1
  100127c30  b       loc_100127c38
loc_100127c34:
  100127c34  mov     w26, #0
loc_100127c38:
  100127c38  mov     x0, x25
  100127c3c  bl      _objc_release
  100127c40  mov     x0, x28
  100127c44  bl      _objc_release
  100127c48  mov     x27, x20
  100127c4c  cbz     w26, loc_100127b84                       ; if (one of {0, 1} == 0)
loc_100127c50:
  100127c50  ldr     x0, [sp, #0x10]
  100127c54  sub     sp, x29, #0x50
  100127c58  ldp     x28, x27, [sp], #0x10
  100127c5c  ldp     x26, x25, [sp], #0x10
  100127c60  ldp     x24, x23, [sp], #0x10
  100127c64  ldp     x22, x21, [sp], #0x10
  100127c68  ldp     x20, x19, [sp], #0x10
  100127c6c  ldp     x29, x30, [sp], #0x10
  100127c70  ret

; ======================================================================
; -[GAIBatchingDispatcher hitsForDispatch]
; address 0x100127c74  size 1984  kind objc
; ======================================================================
  100127c74  stp     x29, x30, [sp, #-0x10]!
  100127c78  mov     x29, sp
  100127c7c  stp     x20, x19, [sp, #-0x10]!
  100127c80  stp     x22, x21, [sp, #-0x10]!
  100127c84  stp     x24, x23, [sp, #-0x10]!
  100127c88  stp     x26, x25, [sp, #-0x10]!
  100127c8c  stp     x28, x27, [sp, #-0x10]!
  100127c90  sub     sp, sp, #0x1a0
  100127c94  mov     x19, x0
  100127c98  adrp    x24, #0x1003b0000
  100127c9c  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100127ca0  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  100127ca4  stur    x8, [x29, #-0x58]
  100127ca8  adrp    x8, #0x10041c000
  100127cac  nop
  100127cb0  ldr     x1, [x8, #0x328]
  100127cb4  bl      _objc_msgSend                            ; [self nextPendingHits]
  100127cb8  mov     x29, x29
  100127cbc  bl      _objc_retainAutoreleasedReturnValue
  100127cc0  mov     x25, x0
  100127cc4  adrp    x8, #0x100416000
  100127cc8  nop
  100127ccc  ldr     x22, [x8, #0xe30]
  100127cd0  mov     x1, x22
  100127cd4  bl      _objc_msgSend                            ; [[self nextPendingHits] count]
  100127cd8  cbz     x0, loc_100127fec                        ; if ([[self nextPendingHits] count] == 0)
  100127cdc  adrp    x8, #0x10041b000
  100127ce0  nop
  100127ce4  ldr     x20, [x8, #0xf28]
  100127ce8  mov     x2, #0
  100127cec  mov     x0, x25
  100127cf0  mov     x1, x20
  100127cf4  bl      _objc_msgSend                            ; [[self nextPendingHits] objectAtIndexedSubscript:0]
  100127cf8  mov     x29, x29
  100127cfc  bl      _objc_retainAutoreleasedReturnValue
  100127d00  mov     x26, x0
  100127d04  adrp    x8, #0x10041c000
  100127d08  nop
  100127d0c  ldr     x1, [x8, #0x330]
  100127d10  mov     x0, x19
  100127d14  bl      _objc_msgSend                            ; [self batchingStrategy]
  100127d18  cbz     x0, loc_1001280f4                        ; if ([self batchingStrategy] == 0)
  100127d1c  str     x20, [sp, #0x40]
  100127d20  mov     x21, x19
  100127d24  adrp    x8, #0x1003b8000
  100127d28  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  100127d2c  ldr     x2, [x8]                                 ; [&d_1003b81f0] -> @"parameters"
  100127d30  adrp    x8, #0x10041b000
  100127d34  nop
  100127d38  ldr     x19, [x8, #0xb70]
  100127d3c  mov     x0, x26
  100127d40  mov     x1, x19
  100127d44  bl      _objc_msgSend                            ; [[[self nextPendingHits] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"]
  100127d48  mov     x29, x29
  100127d4c  bl      _objc_retainAutoreleasedReturnValue
  100127d50  mov     x20, x0
  100127d54  adrp    x8, #0x1003b8000
  100127d58  add     x8, x8, #0x518                           ; &d_1003b8518
  100127d5c  ldr     x2, [x8]                                 ; [&d_1003b8518] -> @"useSecure"
  100127d60  mov     x1, x19
  100127d64  bl      _objc_msgSend                            ; [[[[self nextPendingHits] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"]
  100127d68  mov     x29, x29
  100127d6c  bl      _objc_retainAutoreleasedReturnValue
  100127d70  mov     x19, x0
  100127d74  adrp    x8, #0x100416000
  100127d78  nop
  100127d7c  ldr     x1, [x8, #0xf58]
  100127d80  adrp    x2, #0x1003bb000
  100127d84  add     x2, x2, #0xe30                           ; @"0"
  100127d88  bl      _objc_msgSend                            ; [[[[[self nextPendingHits] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"] isEqualToString:@"0"]
  100127d8c  mov     x23, x0
  100127d90  mov     x0, x19
  100127d94  bl      _objc_release
  100127d98  mov     x0, x20
  100127d9c  bl      _objc_release
  100127da0  adrp    x8, #0x10041e000
  100127da4  adrp    x9, #0x1003b0000
  100127da8  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  100127dac  mov     w10, #-0x40000000
  100127db0  adr     x11, #0x100128434                        ; &-[GAIBatchingDispatcher hitsForDispatch]_block_invoke
  100127db4  nop
  100127db8  adrp    x12, #0x1003b8000
  100127dbc  add     x12, x12, #0x5c0                         ; &d_1003b85c0
  100127dc0  ldr     x0, [x8, #0x510]                         ; class NSPredicate
  100127dc4  stur    x9, [x29, #-0x90]
  100127dc8  stp     w10, wzr, [x29, #-0x88]
  100127dcc  stp     x11, x12, [x29, #-0x80]
  100127dd0  sturb   w23, [x29, #-0x70]
  100127dd4  adrp    x8, #0x10041c000
  100127dd8  nop
  100127ddc  ldr     x1, [x8, #0x338]
  100127de0  sub     x2, x29, #0x90
  100127de4  bl      _objc_msgSend                            ; [NSPredicate predicateWithBlock:^{-[GAIBatchingDispatcher hitsForDispatch]_block_invoke captures +0x20=[[[[[self nextPendingHits] objectAtIndex…, +0x38=___stack_chk_guard[+0x0]}]
  100127de8  mov     x29, x29
  100127dec  bl      _objc_retainAutoreleasedReturnValue
  100127df0  mov     x9, x0
  100127df4  str     x9, [sp, #0x48]
  100127df8  adrp    x8, #0x10041c000
  100127dfc  nop
  100127e00  ldr     x1, [x8, #0x340]
  100127e04  mov     x0, x25
  100127e08  mov     x2, x9
  100127e0c  bl      _objc_msgSend                            ; [[self nextPendingHits] filterUsingPredicate:[NSPredicate predicateWithBlock:^{-[GAIBatchingDispatcher hitsForDispatch]_block_invoke captures +0x20=[[[[[self nextPendingHits] objectAtIndex…, +0x38=___stack_chk_guard[+0x0]}]]
  100127e10  adrp    x8, #0x10041d000
  100127e14  ldr     x19, [x8, #0xf28]                        ; class NSMutableArray
  100127e18  mov     x0, x25
  100127e1c  mov     x1, x22
  100127e20  bl      _objc_msgSend                            ; [[self nextPendingHits] count]
  100127e24  mov     x2, x0
  100127e28  adrp    x8, #0x10041b000
  100127e2c  nop
  100127e30  ldr     x1, [x8, #0x280]
  100127e34  mov     x0, x19
  100127e38  bl      _objc_msgSend                            ; [NSMutableArray arrayWithCapacity:[[self nextPendingHits] count]]
  100127e3c  mov     x29, x29
  100127e40  bl      _objc_retainAutoreleasedReturnValue
  100127e44  str     x0, [sp, #0x98]
  100127e48  stp     xzr, xzr, [x29, #-0xa0]
  100127e4c  stp     xzr, xzr, [x29, #-0xb0]
  100127e50  stp     xzr, xzr, [x29, #-0xc0]
  100127e54  stp     xzr, xzr, [x29, #-0xd0]
  100127e58  mov     x0, x25
  100127e5c  str     x25, [sp, #0x50]
  100127e60  bl      _objc_retain
  100127e64  str     x0, [sp, #0x68]
  100127e68  adrp    x8, #0x100416000
  100127e6c  nop
  100127e70  ldr     x1, [x8, #0xe00]
  100127e74  str     x1, [sp, #0x60]
  100127e78  sub     x2, x29, #0xd0
  100127e7c  add     x3, sp, #0xa0
  100127e80  mov     x4, #0x10
  100127e84  bl      _objc_msgSend                            ; [[self nextPendingHits] countByEnumeratingWithState:&x29[-0xd0] objects:&sp[0xa0] count:16]
  100127e88  mov     x20, x0
  100127e8c  cbz     x20, loc_100128130                       ; if ([[self nextPendingHits] countByEnumeratingWithState:&x29[-0xd0] objects:&sp[0xa0] count:16] == 0)
  100127e90  str     x22, [sp, #0x58]
  100127e94  mov     x27, #0
  100127e98  mov     x28, #0
  100127e9c  ldur    x8, [x29, #-0xc0]
  100127ea0  ldr     x8, [x8]
  100127ea4  str     x8, [sp, #0x90]
  100127ea8  adrp    x8, #0x100420000
  100127eac  ldrsw   x8, [x8, #0x8d8]                         ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  100127eb0  str     x8, [sp, #0x88]
  100127eb4  adrp    x8, #0x10041c000
  100127eb8  nop
  100127ebc  ldr     x8, [x8, #0x348]
  100127ec0  str     x8, [sp, #0x80]
  100127ec4  adrp    x8, #0x100417000
  100127ec8  nop
  100127ecc  ldr     x8, [x8, #0xc58]
  100127ed0  str     x8, [sp, #0x78]
  100127ed4  adrp    x8, #0x100417000
  100127ed8  nop
  100127edc  ldr     x8, [x8, #0xd80]
  100127ee0  str     x8, [sp, #0x70]
  100127ee4  adrp    x8, #0x100416000
  100127ee8  nop
  100127eec  ldr     x23, [x8, #0xd90]
  100127ef0  adrp    x8, #0x10041c000
  100127ef4  add     x8, x8, #0x350                           ; &@selector(maxBodySize)
  100127ef8  ldr     x22, [x8]
  100127efc  mov     x24, x26
loc_100127f00:
  100127f00  mov     x19, #0
loc_100127f04:
  100127f04  ldur    x8, [x29, #-0xc0]
  100127f08  ldr     x8, [x8]
  100127f0c  ldr     x9, [sp, #0x90]
  100127f10  cmp     x8, x9
  100127f14  b.eq    loc_100127f20                            ; if (x8 == x9)
  100127f18  ldr     x0, [sp, #0x68]
  100127f1c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self nextPendingHits])
loc_100127f20:
  100127f20  ldur    x8, [x29, #-0xc8]
  100127f24  ldr     x0, [x8, x19, lsl #3]
  100127f28  bl      _objc_retain
  100127f2c  mov     x26, x0
  100127f30  mov     x0, x24
  100127f34  bl      _objc_release
  100127f38  ldp     x1, x8, [sp, #0x80]
  100127f3c  ldr     x0, [x21, x8]                            ; x0 = self->_requestBuilder
  100127f40  mov     x2, x26
  100127f44  bl      _objc_msgSend                            ; [self->_requestBuilder parametersForHit:x2]
  100127f48  mov     x29, x29
  100127f4c  bl      _objc_retainAutoreleasedReturnValue
  100127f50  mov     x24, x0
  100127f54  ldr     x1, [sp, #0x78]
  100127f58  bl      _objc_msgSend                            ; [[self->_requestBuilder parametersForHit:x2] length]
  100127f5c  add     x28, x0, x28
  100127f60  adrp    x8, #0x10041d000
  100127f64  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100127f68  ldr     x1, [sp, #0x70]
  100127f6c  mov     x2, x28
  100127f70  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:([[self->_requestBuilder parametersForHit:x2] length] + x28)]
  100127f74  mov     x29, x29
  100127f78  bl      _objc_retainAutoreleasedReturnValue
  100127f7c  mov     x25, x0
  100127f80  ldr     x0, [sp, #0x98]
  100127f84  mov     x1, x23
  100127f88  mov     x2, x25
  100127f8c  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[self nextPendingHits] count]] addObject:[NSNumber numberWithUnsignedInteger:([[self->_requestBuilder parametersForHit:x2] length] + x28)]]
  100127f90  mov     x0, x25
  100127f94  bl      _objc_release
  100127f98  mov     x0, x21
  100127f9c  mov     x1, x22
  100127fa0  bl      _objc_msgSend                            ; [self maxBodySize]
  100127fa4  cmp     x28, x0
  100127fa8  cset    w8, ls
  100127fac  add     x27, x27, w8, uxtw                       ; t1 = (x27 + (([[self->_requestBuilder parametersForHit:x2] length] + x28) <=u [self maxBodySize]))
  100127fb0  mov     x0, x24
  100127fb4  bl      _objc_release
  100127fb8  add     x19, x19, #1
  100127fbc  cmp     x19, x20
  100127fc0  mov     x24, x26
  100127fc4  b.lo    loc_100127f04                            ; if ((x19 + 1) <u [[self nextPendingHits] countByEnumeratingWithState:&x29[-0xd0] objects:&sp[0xa0] count:16])
  100127fc8  sub     x2, x29, #0xd0
  100127fcc  add     x3, sp, #0xa0
  100127fd0  mov     x4, #0x10
  100127fd4  ldp     x1, x0, [sp, #0x60]
  100127fd8  bl      _objc_msgSend                            ; [[self nextPendingHits] countByEnumeratingWithState:&x29[-0xd0] objects:&sp[0xa0] count:16]
  100127fdc  mov     x20, x0
  100127fe0  mov     x24, x26
  100127fe4  cbnz    x20, loc_100127f00                       ; if ([[self nextPendingHits] countByEnumeratingWithState:&x29[-0xd0] objects:&sp[0xa0] count:16] != 0)
  100127fe8  b       loc_10012813c
loc_100127fec:
  100127fec  adrp    x8, #0x10041d000
  100127ff0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100127ff4  adrp    x8, #0x10041b000
  100127ff8  nop
  100127ffc  ldr     x1, [x8, #0xdc8]
  100128000  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100128004  mov     x29, x29
  100128008  bl      _objc_retainAutoreleasedReturnValue
  10012800c  mov     x19, x0
  100128010  adrp    x8, #0x10041d000
  100128014  ldr     x20, [x8, #0xf78]                        ; class NSString
  100128018  adrp    x8, #0x1003b7000
  10012801c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100128020  ldr     x22, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100128024  adrp    x8, #0x1003b7000
  100128028  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10012802c  ldr     x23, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100128030  adrp    x8, #0x10041b000
  100128034  nop
  100128038  ldr     x1, [x8, #0x580]
  10012803c  adrp    x0, #0x1003c6000
  100128040  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100128044  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100128048  mov     x29, x29
  10012804c  bl      _objc_retainAutoreleasedReturnValue
  100128050  mov     x21, x0
  100128054  adrp    x8, #0x100416000
  100128058  nop
  10012805c  ldr     x1, [x8, #0xee8]
  100128060  mov     x8, #0x120
  100128064  adrp    x9, #0x100391000
  100128068  add     x9, x9, #0x85a                           ; "-[GAIBatchingDispatcher hitsForDispatch]"
  10012806c  stp     x21, x8, [sp, #0x18]
  100128070  stp     x23, x9, [sp, #8]
  100128074  str     x22, [sp]
  100128078  adrp    x2, #0x1003c6000
  10012807c  add     x2, x2, #0x70                            ; @"%@ %@ %s (%@:%d): No pending hits."
  100128080  mov     x0, x20
  100128084  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): No pending hits.", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher hitsForDispatch]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 288]
  100128088  mov     x29, x29
  10012808c  bl      _objc_retainAutoreleasedReturnValue
  100128090  mov     x20, x0
  100128094  adrp    x8, #0x10041b000
  100128098  nop
  10012809c  ldr     x1, [x8, #0xea0]
  1001280a0  mov     x0, x19
  1001280a4  mov     x2, x20
  1001280a8  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): No pending hits.", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher hitsForDispatch]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 288]]
  1001280ac  mov     x0, x20
  1001280b0  bl      _objc_release
  1001280b4  mov     x0, x21
  1001280b8  bl      _objc_release
  1001280bc  mov     x0, x19
  1001280c0  bl      _objc_release
  1001280c4  adrp    x8, #0x10041d000
  1001280c8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1001280cc  adrp    x8, #0x100417000
  1001280d0  nop
  1001280d4  ldr     x1, [x8, #0x3c8]
  1001280d8  mov     x3, #0
  1001280dc  sub     x2, x29, #0x60
  1001280e0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x60] count:0]
  1001280e4  mov     x29, x29
  1001280e8  bl      _objc_retainAutoreleasedReturnValue
  1001280ec  mov     x19, x0
  1001280f0  b       loc_1001283e0
loc_1001280f4:
  1001280f4  stur    x26, [x29, #-0x68]
  1001280f8  adrp    x8, #0x10041d000
  1001280fc  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100128100  adrp    x8, #0x100417000
  100128104  nop
  100128108  ldr     x1, [x8, #0x3c8]
  10012810c  sub     x2, x29, #0x68
  100128110  mov     x3, #1
  100128114  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&x29[-0x68] count:1]
  100128118  mov     x29, x29
  10012811c  bl      _objc_retainAutoreleasedReturnValue
  100128120  mov     x19, x0
  100128124  mov     x0, x26
  100128128  bl      _objc_release
  10012812c  b       loc_1001283e0
loc_100128130:
  100128130  str     x22, [sp, #0x58]
  100128134  mov     x27, #0
  100128138  mov     x28, #0
loc_10012813c:
  10012813c  mov     x0, x26
  100128140  bl      _objc_release
  100128144  ldr     x25, [sp, #0x68]
  100128148  mov     x0, x25
  10012814c  bl      _objc_release
  100128150  adrp    x8, #0x10041c000
  100128154  nop
  100128158  ldr     x19, [x8, #0x350]
  10012815c  mov     x20, x21
  100128160  mov     x0, x20
  100128164  mov     x1, x19
  100128168  bl      _objc_msgSend                            ; [self maxBodySize]
  10012816c  cmp     x28, x0
  100128170  b.ls    loc_100128390                            ; if (x28 <=u [self maxBodySize])
  100128174  adrp    x8, #0x100420000
  100128178  ldrsw   x22, [x8, #0x8f0]                        ; ivar offset GAIBatchingDispatcher._batchingStrategy (+0x10)
  10012817c  ldr     x8, [x20, x22]                           ; x8 = self->_batchingStrategy
  100128180  sub     x8, x8, #1
  100128184  cmp     x8, #4
  100128188  b.ls    loc_1001282b8                            ; if ((self->_batchingStrategy - 1) <=u 4)
  10012818c  adrp    x8, #0x10041d000
  100128190  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100128194  adrp    x8, #0x10041b000
  100128198  nop
  10012819c  ldr     x1, [x8, #0xdc8]
  1001281a0  bl      _objc_msgSend                            ; [GAI sharedLogger]
  1001281a4  mov     x29, x29
  1001281a8  bl      _objc_retainAutoreleasedReturnValue
  1001281ac  mov     x19, x0
  1001281b0  adrp    x8, #0x10041d000
  1001281b4  mov     x26, x20
  1001281b8  ldr     x20, [x8, #0xf78]                        ; class NSString
  1001281bc  adrp    x8, #0x1003b7000
  1001281c0  add     x8, x8, #0xd70                           ; &d_1003b7d70
  1001281c4  ldr     x23, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  1001281c8  adrp    x8, #0x1003b7000
  1001281cc  add     x8, x8, #0xd78                           ; &d_1003b7d78
  1001281d0  ldr     x24, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  1001281d4  adrp    x8, #0x10041b000
  1001281d8  nop
  1001281dc  ldr     x1, [x8, #0x580]
  1001281e0  adrp    x0, #0x1003c6000
  1001281e4  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001281e8  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001281ec  mov     x29, x29
  1001281f0  bl      _objc_retainAutoreleasedReturnValue
  1001281f4  mov     x21, x0
  1001281f8  ldr     x8, [x26, x22]                           ; x8 = self->_batchingStrategy
  1001281fc  adrp    x9, #0x100416000
  100128200  nop
  100128204  ldr     x1, [x9, #0xee8]
  100128208  str     x8, [sp, #0x28]
  10012820c  mov     x8, #0x171
  100128210  adrp    x9, #0x100391000
  100128214  add     x9, x9, #0x85a                           ; "-[GAIBatchingDispatcher hitsForDispatch]"
  100128218  stp     x21, x8, [sp, #0x18]
  10012821c  stp     x24, x9, [sp, #8]
  100128220  str     x23, [sp]
  100128224  adrp    x2, #0x1003c6000
  100128228  add     x2, x2, #0x90                            ; @"%@ %@ %s (%@:%d): unexpected batch strategy: %lu"
  10012822c  mov     x0, x20
  100128230  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): unexpected batch strategy: %lu", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher hitsForDispatch]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 369, self->_batchingStrategy]
  100128234  mov     x29, x29
  100128238  bl      _objc_retainAutoreleasedReturnValue
  10012823c  mov     x20, x0
  100128240  adrp    x8, #0x10041b000
  100128244  nop
  100128248  ldr     x1, [x8, #0xdd0]
  10012824c  mov     x0, x19
  100128250  mov     x2, x20
  100128254  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): unexpected batch strategy: %lu", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher hitsForDispatch]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 369, self->_batchingStrategy]]
  100128258  mov     x0, x20
  10012825c  bl      _objc_release
  100128260  mov     x0, x21
  100128264  bl      _objc_release
  100128268  mov     x0, x19
  10012826c  bl      _objc_release
  100128270  mov     x0, x25
  100128274  ldr     x19, [sp, #0x58]
  100128278  mov     x1, x19
  10012827c  bl      _objc_msgSend                            ; [[self nextPendingHits] count]
  100128280  cmp     x0, #2
  100128284  b.lo    loc_1001282b0                            ; if ([[self nextPendingHits] count] <u 2)
  100128288  mov     x0, x25
  10012828c  mov     x1, x19
  100128290  bl      _objc_msgSend                            ; [[self nextPendingHits] count]
  100128294  sub     x3, x0, #1
  100128298  adrp    x8, #0x10041c000
  10012829c  nop
  1001282a0  ldr     x1, [x8, #0x368]
  1001282a4  mov     x2, #1
  1001282a8  mov     x0, x25
  1001282ac  bl      _objc_msgSend                            ; [[self nextPendingHits] removeObjectsInRange:1]
loc_1001282b0:
  1001282b0  mov     x27, #0
  1001282b4  b       loc_100128390
loc_1001282b8:
  1001282b8  adr     x9, #0x100128420                         ; 0x100128420
  1001282bc  nop
  1001282c0  ldrsw   x8, [x9, x8, lsl #2]
  1001282c4  add     x8, x8, x9
  1001282c8  br      x8                                       ; switch (?) { case 0: goto loc_100128390; case 1: goto loc_1001282cc; case 2: goto loc_1001282d8; case 3: goto loc_100128354; case 4: goto loc_100128370 }
loc_1001282cc:  ; case 1
  1001282cc  adrp    x8, #0x10041c000
  1001282d0  add     x8, x8, #0x358                           ; &@selector(batchByTimeGap:maxHits:)
  1001282d4  b       loc_100128378
loc_1001282d8:  ; case 2
  1001282d8  mov     x0, x20
  1001282dc  mov     x1, x19
  1001282e0  bl      _objc_msgSend                            ; [self maxBodySize]
  1001282e4  cmp     x28, x0, lsl #1
  1001282e8  b.hs    loc_100128390                            ; if (x28 >=u ([self maxBodySize] << 1))
  1001282ec  ldr     x0, [sp, #0x98]
  1001282f0  ldr     x1, [sp, #0x58]
  1001282f4  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[self nextPendingHits] count]] count]
  1001282f8  adrp    x8, #0x100417000
  1001282fc  add     x8, x8, #0x110                           ; &@selector(intValue)
  100128300  ldr     x19, [x8]
  100128304  lsr     x21, x28, #1
  100128308  sub     x22, x0, #1
loc_10012830c:
  10012830c  mov     x27, x22
  100128310  subs    x22, x27, #1
  100128314  b.lt    loc_100128390                            ; if (x27 < 1)
  100128318  ldr     x0, [sp, #0x98]
  10012831c  ldr     x1, [sp, #0x40]
  100128320  mov     x2, x27
  100128324  bl      _objc_msgSend                            ; [[NSMutableArray arrayWithCapacity:[[self nextPendingHits] count]] objectAtIndexedSubscript:x2]
  100128328  mov     x29, x29
  10012832c  bl      _objc_retainAutoreleasedReturnValue
  100128330  mov     x20, x0
  100128334  mov     x1, x19
  100128338  bl      _objc_msgSend                            ; [[[NSMutableArray arrayWithCapacity:[[self nextPendingHits] count]] objectAtIndexedSubscript:x2] intValue]
  10012833c  sxtw    x23, w0
  100128340  mov     x0, x20
  100128344  bl      _objc_release
  100128348  cmp     x23, x21
  10012834c  b.hi    loc_10012830c                            ; if ([[[NSMutableArray arrayWithCapacity:[[self nextPendingHits] count]] objectAtIndexedSubscript:x2] intValue] >u (x28 >>> 1))
  100128350  b       loc_100128390
loc_100128354:  ; case 3
  100128354  mov     x0, x25
  100128358  ldr     x1, [sp, #0x58]
  10012835c  bl      _objc_msgSend                            ; [[self nextPendingHits] count]
  100128360  lsr     x8, x0, #1
  100128364  cmp     x27, x0, lsr #1
  100128368  csel    x27, x8, x27, hi                         ; t2 = (x27 >u ([[self nextPendingHits] count] >>> 1) ? ([[self nextPendingHits] count] >>> 1) : x27)
  10012836c  b       loc_100128390
loc_100128370:  ; case 4
  100128370  adrp    x8, #0x10041c000
  100128374  add     x8, x8, #0x360                           ; &@selector(batchBySessionSplit:maxHits:)
loc_100128378:
  100128378  ldr     x1, [x8]                                 ; x1 = one of selectors {batchBySessionSplit:maxHits:, batchByTimeGap:maxHits:}
  10012837c  mov     x0, x20
  100128380  mov     x2, x25
  100128384  mov     x3, x27
  100128388  bl      _objc_msgSend                            ; [self batchBySessionSplit:[self nextPendingHits] maxHits:x3  | batchByTimeGap:x4 maxHits:x5]
  10012838c  mov     x27, x0
loc_100128390:  ; case 0
  100128390  mov     x0, x25
  100128394  ldr     x1, [sp, #0x58]
  100128398  bl      _objc_msgSend                            ; [[self nextPendingHits] count]
  10012839c  sub     x3, x0, x27
  1001283a0  adrp    x8, #0x10041c000
  1001283a4  nop
  1001283a8  ldr     x1, [x8, #0x368]
  1001283ac  mov     x0, x25
  1001283b0  mov     x2, x27
  1001283b4  bl      _objc_msgSend                            ; [[self nextPendingHits] removeObjectsInRange:x2]
  1001283b8  mov     x0, x25
  1001283bc  bl      _objc_retain
  1001283c0  mov     x19, x0
  1001283c4  ldr     x0, [sp, #0x98]
  1001283c8  bl      _objc_release
  1001283cc  ldr     x0, [sp, #0x48]
  1001283d0  bl      _objc_release
  1001283d4  adrp    x24, #0x1003b0000
  1001283d8  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1001283dc  ldr     x25, [sp, #0x50]
loc_1001283e0:
  1001283e0  mov     x0, x25
  1001283e4  bl      _objc_release
  1001283e8  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  1001283ec  ldur    x9, [x29, #-0x58]
  1001283f0  sub     x8, x8, x9
  1001283f4  cbnz    x8, loc_10012841c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1001283f8  mov     x0, x19
  1001283fc  sub     sp, x29, #0x50
  100128400  ldp     x28, x27, [sp], #0x10
  100128404  ldp     x26, x25, [sp], #0x10
  100128408  ldp     x24, x23, [sp], #0x10
  10012840c  ldp     x22, x21, [sp], #0x10
  100128410  ldp     x20, x19, [sp], #0x10
  100128414  ldp     x29, x30, [sp], #0x10
  100128418  b       _objc_autoreleaseReturnValue
loc_10012841c:
  10012841c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100128420  .word   jump table of 1001282c8, case 0 -> loc_100128390
  100128424  .word   jump table of 1001282c8, case 1 -> loc_1001282cc
  100128428  .word   jump table of 1001282c8, case 2 -> loc_1001282d8
  10012842c  .word   jump table of 1001282c8, case 3 -> loc_100128354
  100128430  .word   jump table of 1001282c8, case 4 -> loc_100128370

; ======================================================================
; -[GAIBatchingDispatcher hitsForDispatch]_block_invoke
; address 0x100128434  size 192  kind block
; ======================================================================
  100128434  stp     x29, x30, [sp, #-0x10]!
  100128438  mov     x29, sp
  10012843c  stp     x20, x19, [sp, #-0x10]!
  100128440  stp     x22, x21, [sp, #-0x10]!
  100128444  mov     x19, x0
  100128448  mov     x0, x1
  10012844c  bl      _objc_retain
  100128450  mov     x20, x0
  100128454  ldrb    w22, [x19, #0x20]                        ; w22 = captured [[[[[self nextPendingHits] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"…
  100128458  adrp    x8, #0x1003b8000
  10012845c  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  100128460  ldr     x2, [x8]                                 ; [&d_1003b81f0] -> @"parameters"
  100128464  adrp    x8, #0x10041b000
  100128468  nop
  10012846c  ldr     x19, [x8, #0xb70]
  100128470  mov     x1, x19
  100128474  bl      _objc_msgSend                            ; [blockarg1 objectForKeyedSubscript:@"parameters"]
  100128478  mov     x21, x0
  10012847c  mov     x0, x20
  100128480  bl      _objc_release
  100128484  mov     x0, x21
  100128488  bl      _objc_retainAutoreleasedReturnValue
  10012848c  mov     x20, x0
  100128490  adrp    x8, #0x1003b8000
  100128494  add     x8, x8, #0x518                           ; &d_1003b8518
  100128498  ldr     x2, [x8]                                 ; [&d_1003b8518] -> @"useSecure"
  10012849c  mov     x1, x19
  1001284a0  bl      _objc_msgSend                            ; [[blockarg1 objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"]
  1001284a4  mov     x29, x29
  1001284a8  bl      _objc_retainAutoreleasedReturnValue
  1001284ac  mov     x19, x0
  1001284b0  adrp    x8, #0x100416000
  1001284b4  nop
  1001284b8  ldr     x1, [x8, #0xf58]
  1001284bc  adrp    x2, #0x1003bb000
  1001284c0  add     x2, x2, #0xe30                           ; @"0"
  1001284c4  bl      _objc_msgSend                            ; [[[blockarg1 objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"] isEqualToString:@"0"]
  1001284c8  cmp     w22, w0
  1001284cc  cset    w21, eq                                  ; t1 = ([[[[[self nextPendingHits] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"… == [[[blockarg1 objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"] isEqualToString:@"0"])
  1001284d0  mov     x0, x19
  1001284d4  bl      _objc_release
  1001284d8  mov     x0, x20
  1001284dc  bl      _objc_release
  1001284e0  mov     x0, x21
  1001284e4  ldp     x22, x21, [sp], #0x10
  1001284e8  ldp     x20, x19, [sp], #0x10
  1001284ec  ldp     x29, x30, [sp], #0x10
  1001284f0  ret

; ======================================================================
; -[GAIBatchingDispatcher nextPendingHits]
; address 0x1001284f4  size 1180  kind objc
; ======================================================================
  1001284f4  stp     x29, x30, [sp, #-0x10]!
  1001284f8  mov     x29, sp
  1001284fc  stp     x20, x19, [sp, #-0x10]!
  100128500  stp     x22, x21, [sp, #-0x10]!
  100128504  stp     x24, x23, [sp, #-0x10]!
  100128508  stp     x26, x25, [sp, #-0x10]!
  10012850c  stp     x28, x27, [sp, #-0x10]!
  100128510  sub     sp, sp, #0x1c0
  100128514  mov     x21, x0
  100128518  str     x21, [sp, #0x98]
  10012851c  adrp    x8, #0x1003b0000
  100128520  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100128524  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100128528  stur    x8, [x29, #-0x58]
  10012852c  adrp    x8, #0x10041d000
  100128530  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100128534  adrp    x8, #0x100418000
  100128538  nop
  10012853c  ldr     x1, [x8, #0x50]
  100128540  str     x1, [sp, #0x90]
  100128544  bl      _objc_msgSend                            ; [NSMutableArray array]
  100128548  mov     x29, x29
  10012854c  bl      _objc_retainAutoreleasedReturnValue
  100128550  str     x0, [sp, #0x78]
  100128554  adrp    x8, #0x10041e000
  100128558  ldr     x0, [x8, #0x38]                          ; class NSDate
  10012855c  adrp    x8, #0x100418000
  100128560  nop
  100128564  ldr     x1, [x8, #0x158]
  100128568  bl      _objc_msgSend                            ; [NSDate date]
  10012856c  mov     x29, x29
  100128570  bl      _objc_retainAutoreleasedReturnValue
  100128574  mov     x19, x0
  100128578  adrp    x8, #0x100420000
  10012857c  ldrsw   x8, [x8, #0x8e0]                         ; ivar offset GAIBatchingDispatcher._maxHitAge (+0x48)
  100128580  ldr     d0, [x21, x8]                            ; d0 = self->_maxHitAge
  100128584  fneg    d0, d0
  100128588  adrp    x8, #0x10041c000
  10012858c  nop
  100128590  ldr     x1, [x8, #0x370]
  100128594  bl      _objc_msgSend                            ; [[NSDate date] dateByAddingTimeInterval:x2]
  100128598  mov     x29, x29
  10012859c  bl      _objc_retainAutoreleasedReturnValue
  1001285a0  str     x0, [sp, #0xe8]
  1001285a4  mov     x0, x19
  1001285a8  bl      _objc_release
  1001285ac  str     wzr, [sp, #0xbc]
  1001285b0  adrp    x8, #0x1003b7000
  1001285b4  add     x8, x8, #0xd70                           ; &d_1003b7d70
  1001285b8  adrp    x9, #0x100420000
  1001285bc  adrp    x10, #0x10041b000
  1001285c0  nop
  1001285c4  adrp    x11, #0x100416000
  1001285c8  nop
  1001285cc  adrp    x12, #0x1003b7000
  1001285d0  add     x12, x12, #0xd78                         ; &d_1003b7d78
  1001285d4  adrp    x13, #0x10041b000
  1001285d8  nop
  1001285dc  adrp    x14, #0x100420000
  1001285e0  ldrsw   x22, [x9, #0x8cc]                        ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  1001285e4  str     x22, [sp, #0x88]
  1001285e8  adrp    x9, #0x10041b000
  1001285ec  nop
  1001285f0  adrp    x15, #0x100416000
  1001285f4  add     x15, x15, #0xee8                         ; &@selector(stringWithFormat:)
  1001285f8  ldrsw   x27, [x14, #0x8dc]                       ; ivar offset GAIBatchingDispatcher._maxHitsPerDispatch (+0x40)
  1001285fc  str     x27, [sp, #0x80]
  100128600  ldr     x10, [x10, #0xf48]
  100128604  str     x10, [sp, #0xb0]
  100128608  adrp    x10, #0x10041b000
  10012860c  nop
  100128610  adrp    x14, #0x100416000
  100128614  add     x14, x14, #0xe00                         ; &@selector(countByEnumeratingWithState:objects:count:)
  100128618  ldr     x11, [x11, #0xe30]
  10012861c  str     x11, [sp, #0xc0]
  100128620  ldr     x11, [x13, #0xdc8]
  100128624  str     x11, [sp, #0x70]
  100128628  adrp    x11, #0x10041b000
  10012862c  nop
  100128630  adrp    x13, #0x10041a000
  100128634  add     x13, x13, #0xb28                         ; &@selector(addObjectsFromArray:)
  100128638  ldr     x9, [x9, #0x580]
  10012863c  str     x9, [sp, #0x68]
  100128640  ldr     x9, [x15]
  100128644  str     x9, [sp, #0x60]
  100128648  ldr     x8, [x8]                                 ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10012864c  str     x8, [sp, #0x58]
  100128650  ldr     x8, [x12]                                ; [&d_1003b7d78] -> @"3.09"
  100128654  str     x8, [sp, #0x50]
  100128658  adrp    x8, #0x10041b000
  10012865c  nop
  100128660  ldr     x9, [x10, #0xdd0]
  100128664  str     x9, [sp, #0x48]
  100128668  ldr     x9, [x14]
  10012866c  str     x9, [sp, #0xd0]
  100128670  adrp    x9, #0x100419000
  100128674  add     x9, x9, #0x4e8                           ; &@selector(compare:)
  100128678  adrp    x10, #0x100416000
  10012867c  add     x10, x10, #0xd90                         ; &@selector(addObject:)
  100128680  ldr     x11, [x11, #0xb10]
  100128684  str     x11, [sp, #0x40]
  100128688  ldr     x11, [x13]
  10012868c  str     x11, [sp, #0x38]
  100128690  sub     x11, x29, #0x60
  100128694  str     x11, [sp, #0xa8]
  100128698  adrp    x11, #0x1003b8000
  10012869c  add     x11, x11, #0x1f8                         ; &d_1003b81f8
  1001286a0  ldr     x11, [x11]                               ; [&d_1003b81f8] -> @"timestamp"
  1001286a4  str     x11, [sp, #0xe0]
  1001286a8  ldr     x25, [x8, #0xb70]
  1001286ac  ldr     x26, [x9]
  1001286b0  ldr     x8, [x10]
  1001286b4  str     x8, [sp, #0xd8]
loc_1001286b8:
  1001286b8  ldr     x0, [x21, x22]                           ; x0 = self->_dataStore
  1001286bc  ldr     x2, [x21, x27]                           ; x2 = self->_maxHitsPerDispatch
  1001286c0  stur    xzr, [x29, #-0x60]
  1001286c4  ldp     x3, x1, [sp, #0xa8]
  1001286c8  bl      _objc_msgSend                            ; [self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]]
  1001286cc  mov     x29, x29
  1001286d0  bl      _objc_retainAutoreleasedReturnValue
  1001286d4  mov     x24, x0
  1001286d8  ldur    x0, [x29, #-0x60]
  1001286dc  bl      _objc_retain
  1001286e0  str     x0, [sp, #0xc8]
  1001286e4  mov     x0, x24
  1001286e8  ldr     x1, [sp, #0xc0]
  1001286ec  bl      _objc_msgSend                            ; [[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] count]
  1001286f0  cbnz    x0, loc_1001287bc                        ; if ([[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] count] != 0)
  1001286f4  cbnz    x24, loc_1001287b4                       ; if ([self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] != 0)
  1001286f8  adrp    x8, #0x10041d000
  1001286fc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100128700  ldr     x1, [sp, #0x70]
  100128704  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100128708  mov     x29, x29
  10012870c  bl      _objc_retainAutoreleasedReturnValue
  100128710  mov     x19, x0
  100128714  adrp    x8, #0x10041d000
  100128718  ldr     x23, [x8, #0xf78]                        ; class NSString
  10012871c  adrp    x0, #0x1003c6000
  100128720  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100128724  ldr     x1, [sp, #0x68]
  100128728  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10012872c  mov     x29, x29
  100128730  bl      _objc_retainAutoreleasedReturnValue
  100128734  mov     x20, x24
  100128738  mov     x24, x0
  10012873c  ldr     x8, [sp, #0xc8]
  100128740  str     x8, [sp, #0x28]
  100128744  mov     x8, #0x191
  100128748  stp     x24, x8, [sp, #0x18]
  10012874c  adrp    x8, #0x100391000
  100128750  add     x8, x8, #0x900                           ; "-[GAIBatchingDispatcher nextPendingHits]"
  100128754  str     x8, [sp, #0x10]
  100128758  ldr     x8, [sp, #0x50]
  10012875c  str     x8, [sp, #8]
  100128760  ldr     x8, [sp, #0x58]
  100128764  str     x8, [sp]
  100128768  mov     x0, x23
  10012876c  ldr     x1, [sp, #0x60]
  100128770  adrp    x2, #0x1003c6000
  100128774  add     x2, x2, #0xb0                            ; @"%@ %@ %s (%@:%d): Failed to load pending hits: %@"
  100128778  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to load pending hits: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher nextPendingHits]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 401, 0]
  10012877c  mov     x29, x29
  100128780  bl      _objc_retainAutoreleasedReturnValue
  100128784  mov     x23, x0
  100128788  mov     x0, x19
  10012878c  ldr     x1, [sp, #0x48]
  100128790  mov     x2, x23
  100128794  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to load pending hits: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher nextPendingHits]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 401, 0]]
  100128798  mov     x0, x23
  10012879c  bl      _objc_release
  1001287a0  mov     x0, x24
  1001287a4  mov     x24, x20
  1001287a8  bl      _objc_release
  1001287ac  mov     x0, x19
  1001287b0  bl      _objc_release
loc_1001287b4:
  1001287b4  mov     w19, #1
  1001287b8  b       loc_100128928
loc_1001287bc:
  1001287bc  adrp    x8, #0x10041d000
  1001287c0  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1001287c4  ldr     x1, [sp, #0x90]
  1001287c8  bl      _objc_msgSend                            ; [NSMutableArray array]
  1001287cc  mov     x29, x29
  1001287d0  bl      _objc_retainAutoreleasedReturnValue
  1001287d4  mov     x28, x0
  1001287d8  stp     xzr, xzr, [x29, #-0x70]
  1001287dc  stp     xzr, xzr, [x29, #-0x80]
  1001287e0  stp     xzr, xzr, [x29, #-0x90]
  1001287e4  stp     xzr, xzr, [x29, #-0xa0]
  1001287e8  mov     x0, x24
  1001287ec  str     x24, [sp, #0xa0]
  1001287f0  bl      _objc_retain
  1001287f4  mov     x19, x0
  1001287f8  sub     x2, x29, #0xa0
  1001287fc  add     x3, sp, #0xf0
  100128800  mov     x4, #0x10
  100128804  ldr     x1, [sp, #0xd0]
  100128808  bl      _objc_msgSend                            ; [[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] countByEnumeratingWithState:&x29[-0xa0] objects:&sp[0xf0] count:16]
  10012880c  mov     x27, x0
  100128810  cbz     x27, loc_1001288bc                       ; if ([[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] countByEnumeratingWithState:&x29[-0xa0] objects:&sp[0xf0] count:16] == 0)
  100128814  ldur    x8, [x29, #-0x90]
  100128818  ldr     x22, [x8]
loc_10012881c:
  10012881c  mov     x24, #0
loc_100128820:
  100128820  ldur    x8, [x29, #-0x90]
  100128824  ldr     x8, [x8]
  100128828  cmp     x8, x22
  10012882c  b.eq    loc_100128838                            ; if (x8 == x22)
  100128830  mov     x0, x19
  100128834  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]])
loc_100128838:
  100128838  ldur    x8, [x29, #-0x98]
  10012883c  ldr     x23, [x8, x24, lsl #3]
  100128840  mov     x0, x23
  100128844  mov     x1, x25
  100128848  ldr     x2, [sp, #0xe0]
  10012884c  bl      _objc_msgSend                            ; [x0 objectForKeyedSubscript:@"timestamp"]
  100128850  mov     x29, x29
  100128854  bl      _objc_retainAutoreleasedReturnValue
  100128858  mov     x21, x0
  10012885c  ldr     x0, [sp, #0xe8]
  100128860  mov     x1, x26
  100128864  mov     x2, x21
  100128868  bl      _objc_msgSend                            ; [[[NSDate date] dateByAddingTimeInterval:x2] compare:[x0 objectForKeyedSubscript:@"timestamp"]]
  10012886c  mov     x20, x0
  100128870  mov     x0, x21
  100128874  bl      _objc_release
  100128878  cmn     x20, #1
  10012887c  b.eq    loc_100128890                            ; if ([[[NSDate date] dateByAddingTimeInterval:x2] compare:[x0 objectForKeyedSubscript:@"timestamp"]] == -1)
  100128880  mov     x0, x28
  100128884  ldr     x1, [sp, #0xd8]
  100128888  mov     x2, x23
  10012888c  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:x2]
loc_100128890:
  100128890  add     x24, x24, #1
  100128894  cmp     x24, x27
  100128898  b.lo    loc_100128820                            ; if ((x24 + 1) <u [[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] countByEnumeratingWithState:&x29[-0xa…)
  10012889c  sub     x2, x29, #0xa0
  1001288a0  add     x3, sp, #0xf0
  1001288a4  mov     x4, #0x10
  1001288a8  mov     x0, x19
  1001288ac  ldr     x1, [sp, #0xd0]
  1001288b0  bl      _objc_msgSend                            ; [[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] countByEnumeratingWithState:&x29[-0xa0] objects:&sp[0xf0] count:16]
  1001288b4  mov     x27, x0
  1001288b8  cbnz    x27, loc_10012881c                       ; if ([[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]] countByEnumeratingWithState:&x29[-0xa0] objects:&sp[0xf0] count:16] != 0)
loc_1001288bc:
  1001288bc  mov     x0, x19
  1001288c0  bl      _objc_release
  1001288c4  mov     x20, x28
  1001288c8  mov     x0, x20
  1001288cc  ldr     x1, [sp, #0xc0]
  1001288d0  bl      _objc_msgSend                            ; [[NSMutableArray array] count]
  1001288d4  cmp     x0, #0
  1001288d8  cset    w8, ne
  1001288dc  str     w8, [sp, #0xbc]
  1001288e0  cbz     x0, loc_1001288fc                        ; if ([[NSMutableArray array] count] == 0)
  1001288e4  ldr     x21, [sp, #0x98]
  1001288e8  mov     x0, x21
  1001288ec  ldr     x1, [sp, #0x40]
  1001288f0  mov     x2, x20
  1001288f4  bl      _objc_msgSend                            ; [self deleteHits:[NSMutableArray array]]
  1001288f8  b       loc_100128910
loc_1001288fc:
  1001288fc  ldr     x0, [sp, #0x78]
  100128900  ldr     x1, [sp, #0x38]
  100128904  mov     x2, x19
  100128908  bl      _objc_msgSend                            ; [[NSMutableArray array] addObjectsFromArray:[self->_dataStore fetchHitsWithLimit:self->_maxHitsPerDispatch error:&x29[-0x60]]]
  10012890c  ldr     x21, [sp, #0x98]
loc_100128910:
  100128910  ldr     x22, [sp, #0x88]
  100128914  ldr     x24, [sp, #0xa0]
  100128918  mov     x0, x20
  10012891c  bl      _objc_release
  100128920  mov     w19, #0
  100128924  ldr     x27, [sp, #0x80]
loc_100128928:
  100128928  mov     x0, x24
  10012892c  bl      _objc_release
  100128930  ldr     x0, [sp, #0xc8]
  100128934  bl      _objc_release
  100128938  tbnz    w19, #0, loc_100128948                   ; if ((one of {0, 1} & 1))
  10012893c  ldr     w8, [sp, #0xbc]
  100128940  eor     w8, w8, #1
  100128944  tbz     w8, #0, loc_1001286b8                    ; if (!((w8 ^ 1) & 1))
loc_100128948:
  100128948  ldr     x0, [sp, #0xe8]
  10012894c  bl      _objc_release
  100128950  adrp    x8, #0x1003b0000
  100128954  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100128958  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10012895c  ldur    x9, [x29, #-0x58]
  100128960  sub     x8, x8, x9
  100128964  cbnz    x8, loc_10012898c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100128968  ldr     x0, [sp, #0x78]
  10012896c  sub     sp, x29, #0x50
  100128970  ldp     x28, x27, [sp], #0x10
  100128974  ldp     x26, x25, [sp], #0x10
  100128978  ldp     x24, x23, [sp], #0x10
  10012897c  ldp     x22, x21, [sp], #0x10
  100128980  ldp     x20, x19, [sp], #0x10
  100128984  ldp     x29, x30, [sp], #0x10
  100128988  b       _objc_autoreleaseReturnValue
loc_10012898c:
  10012898c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAIBatchingDispatcher persist:]
; address 0x100128990  size 520  kind objc
; ======================================================================
  100128990  stp     x29, x30, [sp, #-0x10]!
  100128994  mov     x29, sp
  100128998  stp     x20, x19, [sp, #-0x10]!
  10012899c  stp     x22, x21, [sp, #-0x10]!
  1001289a0  stp     x24, x23, [sp, #-0x10]!
  1001289a4  stp     x26, x25, [sp, #-0x10]!
  1001289a8  stp     x28, x27, [sp, #-0x10]!
  1001289ac  sub     sp, sp, #0x40
  1001289b0  mov     x21, x1
  1001289b4  mov     x20, x0
  1001289b8  mov     x0, x2
  1001289bc  bl      _objc_retain
  1001289c0  mov     x19, x0
  1001289c4  adrp    x8, #0x10041c000
  1001289c8  nop
  1001289cc  ldr     x1, [x8, #0x2f8]
  1001289d0  mov     w4, #0
  1001289d4  mov     x0, x20
  1001289d8  mov     x2, x21
  1001289dc  mov     x3, x19
  1001289e0  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0]
  1001289e4  tbnz    w0, #0, loc_100128b70                    ; if (([self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0] & 1))
  1001289e8  adrp    x8, #0x100420000
  1001289ec  ldrsw   x21, [x8, #0x8cc]                        ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  1001289f0  ldr     x0, [x20, x21]                           ; x0 = self->_dataStore
  1001289f4  adrp    x8, #0x10041c000
  1001289f8  nop
  1001289fc  ldr     x1, [x8, #0x378]
  100128a00  mov     x2, x19
  100128a04  bl      _objc_msgSend                            ; [self->_dataStore addHit:arg1]
  100128a08  ldr     x0, [x20, x21]                           ; x0 = self->_dataStore
  100128a0c  str     xzr, [sp, #0x38]
  100128a10  adrp    x8, #0x10041b000
  100128a14  nop
  100128a18  ldr     x1, [x8, #0xa10]
  100128a1c  add     x2, sp, #0x38
  100128a20  bl      _objc_msgSend                            ; [self->_dataStore save:&sp[0x38]]
  100128a24  mov     x25, x0
  100128a28  ldr     x0, [sp, #0x38]
  100128a2c  bl      _objc_retain
  100128a30  mov     x21, x0
  100128a34  adrp    x8, #0x10041d000
  100128a38  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100128a3c  adrp    x8, #0x10041b000
  100128a40  nop
  100128a44  ldr     x1, [x8, #0xdc8]
  100128a48  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100128a4c  mov     x29, x29
  100128a50  bl      _objc_retainAutoreleasedReturnValue
  100128a54  mov     x22, x0
  100128a58  adrp    x8, #0x10041d000
  100128a5c  ldr     x24, [x8, #0xf78]                        ; class NSString
  100128a60  adrp    x8, #0x1003b7000
  100128a64  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100128a68  ldr     x26, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100128a6c  adrp    x8, #0x1003b7000
  100128a70  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100128a74  ldr     x27, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100128a78  adrp    x8, #0x10041b000
  100128a7c  nop
  100128a80  ldr     x1, [x8, #0x580]
  100128a84  adrp    x0, #0x1003c6000
  100128a88  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100128a8c  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100128a90  mov     x29, x29
  100128a94  bl      _objc_retainAutoreleasedReturnValue
  100128a98  mov     x23, x0
  100128a9c  adrp    x8, #0x100416000
  100128aa0  add     x8, x8, #0xee8                           ; &@selector(stringWithFormat:)
  100128aa4  ldr     x1, [x8]
  100128aa8  tbz     w25, #0, loc_100128aec                   ; if (!([self->_dataStore save:&sp[0x38]] & 1))
  100128aac  mov     x8, #0x1af
  100128ab0  adrp    x9, #0x100391000
  100128ab4  add     x9, x9, #0x952                           ; "-[GAIBatchingDispatcher persist:]"
  100128ab8  stp     x8, x19, [sp, #0x20]
  100128abc  stp     x9, x23, [sp, #0x10]
  100128ac0  stp     x26, x27, [sp]
  100128ac4  adrp    x2, #0x1003c6000
  100128ac8  add     x2, x2, #0xf0                            ; @"%@ %@ %s (%@:%d): Saved hit: %@"
  100128acc  mov     x0, x24
  100128ad0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Saved hit: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher persist:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 431, arg1]
  100128ad4  mov     x29, x29
  100128ad8  bl      _objc_retainAutoreleasedReturnValue
  100128adc  mov     x24, x0
  100128ae0  adrp    x8, #0x10041b000
  100128ae4  add     x8, x8, #0xb08                           ; &@selector(verbose:)
  100128ae8  b       loc_100128b28
loc_100128aec:
  100128aec  mov     x8, #0x1ad
  100128af0  adrp    x9, #0x100391000
  100128af4  add     x9, x9, #0x952                           ; "-[GAIBatchingDispatcher persist:]"
  100128af8  stp     x8, x21, [sp, #0x20]
  100128afc  stp     x9, x23, [sp, #0x10]
  100128b00  stp     x26, x27, [sp]
  100128b04  adrp    x2, #0x1003c6000
  100128b08  add     x2, x2, #0xd0                            ; @"%@ %@ %s (%@:%d): Failed to save hit: %@"
  100128b0c  mov     x0, x24
  100128b10  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to save hit: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher persist:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 429, 0]
  100128b14  mov     x29, x29
  100128b18  bl      _objc_retainAutoreleasedReturnValue
  100128b1c  mov     x24, x0
  100128b20  adrp    x8, #0x10041b000
  100128b24  add     x8, x8, #0xdd0                           ; &@selector(error:)
loc_100128b28:
  100128b28  ldr     x1, [x8]                                 ; x1 = one of selectors {error:, verbose:}
  100128b2c  mov     x0, x22
  100128b30  mov     x2, x24
  100128b34  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:x2  | verbose:x3]
  100128b38  mov     x0, x24
  100128b3c  bl      _objc_release
  100128b40  mov     x0, x23
  100128b44  bl      _objc_release
  100128b48  mov     x0, x22
  100128b4c  bl      _objc_release
  100128b50  adrp    x8, #0x10041b000
  100128b54  nop
  100128b58  ldr     x1, [x8, #0x9a8]
  100128b5c  mov     w2, #1
  100128b60  mov     x0, x20
  100128b64  bl      _objc_msgSend                            ; [self setHasHits:1]
  100128b68  mov     x0, x21
  100128b6c  bl      _objc_release
loc_100128b70:
  100128b70  mov     x0, x19
  100128b74  bl      _objc_release
  100128b78  sub     sp, x29, #0x50
  100128b7c  ldp     x28, x27, [sp], #0x10
  100128b80  ldp     x26, x25, [sp], #0x10
  100128b84  ldp     x24, x23, [sp], #0x10
  100128b88  ldp     x22, x21, [sp], #0x10
  100128b8c  ldp     x20, x19, [sp], #0x10
  100128b90  ldp     x29, x30, [sp], #0x10
  100128b94  ret

; ======================================================================
; -[GAIBatchingDispatcher deleteHits:]
; address 0x100128b98  size 808  kind objc
; ======================================================================
  100128b98  stp     x29, x30, [sp, #-0x10]!
  100128b9c  mov     x29, sp
  100128ba0  stp     x20, x19, [sp, #-0x10]!
  100128ba4  stp     x22, x21, [sp, #-0x10]!
  100128ba8  stp     x24, x23, [sp, #-0x10]!
  100128bac  stp     x26, x25, [sp, #-0x10]!
  100128bb0  stp     x28, x27, [sp, #-0x10]!
  100128bb4  sub     sp, sp, #0x60
  100128bb8  mov     x19, x2
  100128bbc  mov     x22, x0
  100128bc0  adrp    x8, #0x10041b000
  100128bc4  nop
  100128bc8  ldr     x23, [x8, #0xe70]
  100128bcc  mov     x0, x19
  100128bd0  bl      _objc_retain
  100128bd4  mov     x20, x0
  100128bd8  mov     x0, x22
  100128bdc  mov     x1, x23
  100128be0  bl      _objc_msgSend                            ; [self dataStore]
  100128be4  mov     x29, x29
  100128be8  bl      _objc_retainAutoreleasedReturnValue
  100128bec  mov     x21, x0
  100128bf0  adrp    x8, #0x1003b8000
  100128bf4  add     x8, x8, #0x200                           ; &d_1003b8200
  100128bf8  ldr     x2, [x8]                                 ; [&d_1003b8200] -> @"objectID"
  100128bfc  adrp    x8, #0x100416000
  100128c00  nop
  100128c04  ldr     x1, [x8, #0xda0]
  100128c08  mov     x0, x19
  100128c0c  bl      _objc_msgSend                            ; [arg1 valueForKey:@"objectID"]
  100128c10  mov     x19, x0
  100128c14  mov     x0, x20
  100128c18  bl      _objc_release
  100128c1c  mov     x0, x19
  100128c20  bl      _objc_retainAutoreleasedReturnValue
  100128c24  mov     x19, x0
  100128c28  str     xzr, [sp, #0x58]
  100128c2c  adrp    x8, #0x10041b000
  100128c30  nop
  100128c34  ldr     x1, [x8, #0xf50]
  100128c38  add     x3, sp, #0x58
  100128c3c  mov     x0, x21
  100128c40  mov     x2, x19
  100128c44  bl      _objc_msgSend                            ; [[self dataStore] deleteHitsWithIds:[arg1 valueForKey:@"objectID"] error:&sp[0x58]]
  100128c48  ldr     x0, [sp, #0x58]
  100128c4c  bl      _objc_retain
  100128c50  mov     x24, x0
  100128c54  mov     x0, x19
  100128c58  bl      _objc_release
  100128c5c  mov     x0, x21
  100128c60  bl      _objc_release
  100128c64  adrp    x8, #0x100420000
  100128c68  ldrsw   x8, [x8, #0x8cc]                         ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  100128c6c  ldr     x0, [x22, x8]                            ; x0 = self->_dataStore
  100128c70  adrp    x8, #0x10041b000
  100128c74  nop
  100128c78  ldr     x1, [x8, #0xf40]
  100128c7c  mov     x2, #0
  100128c80  bl      _objc_msgSend                            ; [self->_dataStore hitCount:0]
  100128c84  cmp     x0, #0
  100128c88  cset    w2, ne
  100128c8c  adrp    x8, #0x10041b000
  100128c90  nop
  100128c94  ldr     x1, [x8, #0x9a8]
  100128c98  mov     x0, x22
  100128c9c  bl      _objc_msgSend                            ; [self setHasHits:([self->_dataStore hitCount:0] != 0)]
  100128ca0  adrp    x8, #0x10041d000
  100128ca4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100128ca8  adrp    x8, #0x10041b000
  100128cac  nop
  100128cb0  ldr     x1, [x8, #0xdc8]
  100128cb4  str     x1, [sp, #0x38]
  100128cb8  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100128cbc  mov     x29, x29
  100128cc0  bl      _objc_retainAutoreleasedReturnValue
  100128cc4  mov     x25, x0
  100128cc8  adrp    x8, #0x10041d000
  100128ccc  ldr     x26, [x8, #0xf78]                        ; class NSString
  100128cd0  adrp    x8, #0x1003b7000
  100128cd4  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100128cd8  ldr     x28, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100128cdc  str     x28, [sp, #0x48]
  100128ce0  adrp    x8, #0x1003b7000
  100128ce4  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100128ce8  ldr     x19, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100128cec  str     x19, [sp, #0x40]
  100128cf0  adrp    x8, #0x10041b000
  100128cf4  nop
  100128cf8  ldr     x21, [x8, #0x580]
  100128cfc  adrp    x0, #0x1003c6000
  100128d00  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100128d04  mov     x1, x21
  100128d08  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100128d0c  mov     x29, x29
  100128d10  bl      _objc_retainAutoreleasedReturnValue
  100128d14  mov     x27, x0
  100128d18  adrp    x8, #0x100416000
  100128d1c  nop
  100128d20  ldr     x20, [x8, #0xee8]
  100128d24  mov     x8, #0x1bb
  100128d28  adrp    x9, #0x100391000
  100128d2c  add     x9, x9, #0x9c5                           ; "-[GAIBatchingDispatcher deleteHits:]"
  100128d30  stp     x27, x8, [sp, #0x18]
  100128d34  stp     x19, x9, [sp, #8]
  100128d38  str     x28, [sp]
  100128d3c  adrp    x2, #0x1003c6000
  100128d40  add     x2, x2, #0x110                           ; @"%@ %@ %s (%@:%d): hit(s) Successfully dispatched"
  100128d44  mov     x0, x26
  100128d48  mov     x1, x20
  100128d4c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): hit(s) Successfully dispatched", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteHits:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 443]
  100128d50  mov     x29, x29
  100128d54  bl      _objc_retainAutoreleasedReturnValue
  100128d58  mov     x26, x0
  100128d5c  adrp    x8, #0x10041b000
  100128d60  nop
  100128d64  ldr     x1, [x8, #0xea0]
  100128d68  mov     x0, x25
  100128d6c  mov     x2, x26
  100128d70  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): hit(s) Successfully dispatched", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteHits:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 443]]
  100128d74  mov     x0, x26
  100128d78  bl      _objc_release
  100128d7c  mov     x0, x27
  100128d80  bl      _objc_release
  100128d84  mov     x0, x25
  100128d88  bl      _objc_release
  100128d8c  mov     x0, x22
  100128d90  mov     x1, x23
  100128d94  bl      _objc_msgSend                            ; [self dataStore]
  100128d98  mov     x29, x29
  100128d9c  bl      _objc_retainAutoreleasedReturnValue
  100128da0  mov     x23, x0
  100128da4  str     x24, [sp, #0x50]
  100128da8  adrp    x8, #0x10041b000
  100128dac  nop
  100128db0  ldr     x1, [x8, #0xa10]
  100128db4  add     x2, sp, #0x50
  100128db8  bl      _objc_msgSend                            ; [[self dataStore] save:&sp[0x50]]
  100128dbc  mov     x25, x0
  100128dc0  ldr     x0, [sp, #0x50]
  100128dc4  bl      _objc_retain
  100128dc8  mov     x22, x0
  100128dcc  mov     x0, x24
  100128dd0  bl      _objc_release
  100128dd4  mov     x0, x23
  100128dd8  tbnz    w25, #0, loc_100128e94                   ; if (([[self dataStore] save:&sp[0x50]] & 1))
  100128ddc  bl      _objc_release
  100128de0  cbz     x22, loc_100128e98                       ; if (0 == 0)
  100128de4  adrp    x8, #0x10041d000
  100128de8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100128dec  ldr     x1, [sp, #0x38]
  100128df0  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100128df4  mov     x29, x29
  100128df8  bl      _objc_retainAutoreleasedReturnValue
  100128dfc  mov     x19, x0
  100128e00  adrp    x8, #0x10041d000
  100128e04  ldr     x23, [x8, #0xf78]                        ; class NSString
  100128e08  adrp    x0, #0x1003c6000
  100128e0c  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100128e10  mov     x1, x21
  100128e14  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100128e18  mov     x29, x29
  100128e1c  bl      _objc_retainAutoreleasedReturnValue
  100128e20  mov     x21, x0
  100128e24  mov     x8, #0x1bd
  100128e28  stp     x8, x22, [sp, #0x20]
  100128e2c  adrp    x8, #0x100391000
  100128e30  add     x8, x8, #0x9c5                           ; "-[GAIBatchingDispatcher deleteHits:]"
  100128e34  stp     x8, x21, [sp, #0x10]
  100128e38  ldr     x8, [sp, #0x40]
  100128e3c  str     x8, [sp, #8]
  100128e40  ldr     x8, [sp, #0x48]
  100128e44  str     x8, [sp]
  100128e48  adrp    x2, #0x1003c6000
  100128e4c  add     x2, x2, #0x130                           ; @"%@ %@ %s (%@:%d): Unable to save after deleting hit(s): %@"
  100128e50  mov     x0, x23
  100128e54  mov     x1, x20
  100128e58  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Unable to save after deleting hit(s): %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteHits:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 445, 0]
  100128e5c  mov     x29, x29
  100128e60  bl      _objc_retainAutoreleasedReturnValue
  100128e64  mov     x20, x0
  100128e68  adrp    x8, #0x10041b000
  100128e6c  nop
  100128e70  ldr     x1, [x8, #0xdd0]
  100128e74  mov     x0, x19
  100128e78  mov     x2, x20
  100128e7c  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Unable to save after deleting hit(s): %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteHits:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 445, 0]]
  100128e80  mov     x0, x20
  100128e84  bl      _objc_release
  100128e88  mov     x0, x21
  100128e8c  bl      _objc_release
  100128e90  mov     x0, x19
loc_100128e94:
  100128e94  bl      _objc_release
loc_100128e98:
  100128e98  mov     x0, x22
  100128e9c  bl      _objc_release
  100128ea0  sub     sp, x29, #0x50
  100128ea4  ldp     x28, x27, [sp], #0x10
  100128ea8  ldp     x26, x25, [sp], #0x10
  100128eac  ldp     x24, x23, [sp], #0x10
  100128eb0  ldp     x22, x21, [sp], #0x10
  100128eb4  ldp     x20, x19, [sp], #0x10
  100128eb8  ldp     x29, x30, [sp], #0x10
  100128ebc  ret

; ======================================================================
; -[GAIBatchingDispatcher deleteAllHits]
; address 0x100128ec0  size 720  kind objc
; ======================================================================
  100128ec0  stp     x29, x30, [sp, #-0x10]!
  100128ec4  mov     x29, sp
  100128ec8  stp     x20, x19, [sp, #-0x10]!
  100128ecc  stp     x22, x21, [sp, #-0x10]!
  100128ed0  stp     x24, x23, [sp, #-0x10]!
  100128ed4  stp     x26, x25, [sp, #-0x10]!
  100128ed8  sub     sp, sp, #0x50
  100128edc  mov     x8, x1
  100128ee0  mov     x19, x0
  100128ee4  adrp    x9, #0x10041c000
  100128ee8  nop
  100128eec  ldr     x1, [x9, #0x2f8]
  100128ef0  mov     x3, #0
  100128ef4  mov     w4, #0
  100128ef8  mov     x2, x8
  100128efc  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:0 andWait:0]
  100128f00  tbnz    w0, #0, loc_100129174                    ; if (([self rescheduleIfNeeded:_cmd withObject:0 andWait:0] & 1))
  100128f04  adrp    x8, #0x10041b000
  100128f08  nop
  100128f0c  ldr     x1, [x8, #0xe70]
  100128f10  mov     x0, x19
  100128f14  bl      _objc_msgSend                            ; [self dataStore]
  100128f18  mov     x29, x29
  100128f1c  bl      _objc_retainAutoreleasedReturnValue
  100128f20  mov     x20, x0
  100128f24  str     xzr, [sp, #0x48]
  100128f28  adrp    x8, #0x10041c000
  100128f2c  nop
  100128f30  ldr     x1, [x8, #0x380]
  100128f34  add     x2, sp, #0x48
  100128f38  bl      _objc_msgSend                            ; [[self dataStore] deleteAllHits:&sp[0x48]]
  100128f3c  mov     x21, x0
  100128f40  ldr     x0, [sp, #0x48]
  100128f44  bl      _objc_retain
  100128f48  mov     x22, x0
  100128f4c  tbnz    w21, #0, loc_100129028                   ; if (([[self dataStore] deleteAllHits:&sp[0x48]] & 1))
  100128f50  adrp    x8, #0x10041d000
  100128f54  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100128f58  adrp    x8, #0x10041b000
  100128f5c  nop
  100128f60  ldr     x1, [x8, #0xdc8]
  100128f64  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100128f68  mov     x29, x29
  100128f6c  bl      _objc_retainAutoreleasedReturnValue
  100128f70  mov     x21, x0
  100128f74  adrp    x8, #0x10041d000
  100128f78  ldr     x23, [x8, #0xf78]                        ; class NSString
  100128f7c  adrp    x8, #0x1003b7000
  100128f80  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100128f84  ldr     x25, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100128f88  adrp    x8, #0x1003b7000
  100128f8c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100128f90  ldr     x26, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100128f94  adrp    x8, #0x10041b000
  100128f98  nop
  100128f9c  ldr     x1, [x8, #0x580]
  100128fa0  adrp    x0, #0x1003c6000
  100128fa4  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100128fa8  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100128fac  mov     x29, x29
  100128fb0  bl      _objc_retainAutoreleasedReturnValue
  100128fb4  mov     x24, x0
  100128fb8  adrp    x8, #0x100416000
  100128fbc  nop
  100128fc0  ldr     x1, [x8, #0xee8]
  100128fc4  mov     x8, #0x1c7
  100128fc8  adrp    x9, #0x100391000
  100128fcc  add     x9, x9, #0xa61                           ; "-[GAIBatchingDispatcher deleteAllHits]"
  100128fd0  stp     x8, x22, [sp, #0x20]
  100128fd4  stp     x9, x24, [sp, #0x10]
  100128fd8  stp     x25, x26, [sp]
  100128fdc  adrp    x2, #0x1003c6000
  100128fe0  add     x2, x2, #0x150                           ; @"%@ %@ %s (%@:%d): Failed to delete all hits for opt-out: %@"
  100128fe4  mov     x0, x23
  100128fe8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to delete all hits for opt-out: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteAllHits]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 455, 0]
  100128fec  mov     x29, x29
  100128ff0  bl      _objc_retainAutoreleasedReturnValue
  100128ff4  mov     x23, x0
  100128ff8  adrp    x8, #0x10041b000
  100128ffc  nop
  100129000  ldr     x1, [x8, #0xdd0]
  100129004  mov     x0, x21
  100129008  mov     x2, x23
  10012900c  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to delete all hits for opt-out: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteAllHits]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 455, 0]]
  100129010  mov     x0, x23
  100129014  bl      _objc_release
  100129018  mov     x0, x24
  10012901c  bl      _objc_release
  100129020  mov     x0, x21
  100129024  bl      _objc_release
loc_100129028:
  100129028  str     x22, [sp, #0x40]
  10012902c  adrp    x8, #0x10041b000
  100129030  nop
  100129034  ldr     x1, [x8, #0xa10]
  100129038  add     x2, sp, #0x40
  10012903c  mov     x0, x20
  100129040  bl      _objc_msgSend                            ; [[self dataStore] save:&sp[0x40]]
  100129044  mov     x23, x0
  100129048  ldr     x0, [sp, #0x40]
  10012904c  bl      _objc_retain
  100129050  mov     x21, x0
  100129054  mov     x0, x22
  100129058  bl      _objc_release
  10012905c  cbz     x21, loc_10012914c                       ; if (0 == 0)
  100129060  eor     w8, w23, #1
  100129064  cbz     w8, loc_10012914c                        ; if (([[self dataStore] save:&sp[0x40]] ^ 1) == 0)
  100129068  adrp    x8, #0x10041d000
  10012906c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100129070  adrp    x8, #0x10041b000
  100129074  nop
  100129078  ldr     x1, [x8, #0xdc8]
  10012907c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100129080  mov     x29, x29
  100129084  bl      _objc_retainAutoreleasedReturnValue
  100129088  mov     x22, x0
  10012908c  adrp    x8, #0x10041d000
  100129090  ldr     x23, [x8, #0xf78]                        ; class NSString
  100129094  adrp    x8, #0x1003b7000
  100129098  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10012909c  ldr     x25, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  1001290a0  adrp    x8, #0x1003b7000
  1001290a4  add     x8, x8, #0xd78                           ; &d_1003b7d78
  1001290a8  ldr     x26, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  1001290ac  adrp    x8, #0x10041b000
  1001290b0  nop
  1001290b4  ldr     x1, [x8, #0x580]
  1001290b8  adrp    x0, #0x1003c6000
  1001290bc  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001290c0  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001290c4  mov     x29, x29
  1001290c8  bl      _objc_retainAutoreleasedReturnValue
  1001290cc  mov     x24, x0
  1001290d0  adrp    x8, #0x100416000
  1001290d4  nop
  1001290d8  ldr     x1, [x8, #0xee8]
  1001290dc  adrp    x8, #0x1003c6000
  1001290e0  add     x8, x8, #0x190                           ; @"and deleting pending hits"
  1001290e4  adrp    x9, #0x100391000
  1001290e8  add     x9, x9, #0xa61                           ; "-[GAIBatchingDispatcher deleteAllHits]"
  1001290ec  mov     x10, #0x1cb
  1001290f0  stp     x8, x21, [sp, #0x28]
  1001290f4  stp     x24, x10, [sp, #0x18]
  1001290f8  stp     x26, x9, [sp, #8]
  1001290fc  adrp    x2, #0x1003c6000
  100129100  add     x2, x2, #0x170                           ; @"%@ %@ %s (%@:%d): Failed to save after updating opt-out property %@: %@"
  100129104  str     x25, [sp]
  100129108  mov     x0, x23
  10012910c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to save after updating opt-out property %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteAllHits]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 459, @"and deleting pending hits", 0]
  100129110  mov     x29, x29
  100129114  bl      _objc_retainAutoreleasedReturnValue
  100129118  mov     x23, x0
  10012911c  adrp    x8, #0x10041b000
  100129120  nop
  100129124  ldr     x1, [x8, #0xdd0]
  100129128  mov     x0, x22
  10012912c  mov     x2, x23
  100129130  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to save after updating opt-out property %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher deleteAllHits]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 459, @"and deleting pending hits", 0]]
  100129134  mov     x0, x23
  100129138  bl      _objc_release
  10012913c  mov     x0, x24
  100129140  bl      _objc_release
  100129144  mov     x0, x22
  100129148  bl      _objc_release
loc_10012914c:
  10012914c  adrp    x8, #0x10041b000
  100129150  nop
  100129154  ldr     x1, [x8, #0x9a8]
  100129158  mov     w2, #0
  10012915c  mov     x0, x19
  100129160  bl      _objc_msgSend                            ; [self setHasHits:0]
  100129164  mov     x0, x21
  100129168  bl      _objc_release
  10012916c  mov     x0, x20
  100129170  bl      _objc_release
loc_100129174:
  100129174  sub     sp, x29, #0x40
  100129178  ldp     x26, x25, [sp], #0x10
  10012917c  ldp     x24, x23, [sp], #0x10
  100129180  ldp     x22, x21, [sp], #0x10
  100129184  ldp     x20, x19, [sp], #0x10
  100129188  ldp     x29, x30, [sp], #0x10
  10012918c  ret

; ======================================================================
; -[GAIBatchingDispatcher clientId]
; address 0x100129190  size 92  kind objc
; ======================================================================
  100129190  stp     x29, x30, [sp, #-0x10]!
  100129194  mov     x29, sp
  100129198  stp     x20, x19, [sp, #-0x10]!
  10012919c  adrp    x8, #0x10041b000
  1001291a0  nop
  1001291a4  ldr     x1, [x8, #0xe70]
  1001291a8  bl      _objc_msgSend                            ; [self dataStore]
  1001291ac  mov     x29, x29
  1001291b0  bl      _objc_retainAutoreleasedReturnValue
  1001291b4  mov     x19, x0
  1001291b8  adrp    x8, #0x10041b000
  1001291bc  nop
  1001291c0  ldr     x1, [x8, #0xdb0]
  1001291c4  bl      _objc_msgSend                            ; [[self dataStore] clientId]
  1001291c8  mov     x29, x29
  1001291cc  bl      _objc_retainAutoreleasedReturnValue
  1001291d0  mov     x20, x0
  1001291d4  mov     x0, x19
  1001291d8  bl      _objc_release
  1001291dc  mov     x0, x20
  1001291e0  ldp     x20, x19, [sp], #0x10
  1001291e4  ldp     x29, x30, [sp], #0x10
  1001291e8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[GAIBatchingDispatcher dispatch]
; address 0x1001291ec  size 20  kind objc
; ======================================================================
  1001291ec  mov     x2, #0
  1001291f0  adrp    x8, #0x10041b000
  1001291f4  nop
  1001291f8  ldr     x1, [x8, #0xe10]
  1001291fc  b       _objc_msgSend                            ; [self dispatchWithCompletionHandler:0]

; ======================================================================
; -[GAIBatchingDispatcher dispatchWithCompletionHandler:]
; address 0x100129200  size 1916  kind objc
; ======================================================================
  100129200  stp     x29, x30, [sp, #-0x10]!
  100129204  mov     x29, sp
  100129208  stp     x20, x19, [sp, #-0x10]!
  10012920c  stp     x22, x21, [sp, #-0x10]!
  100129210  stp     x24, x23, [sp, #-0x10]!
  100129214  stp     x26, x25, [sp, #-0x10]!
  100129218  stp     x28, x27, [sp, #-0x10]!
  10012921c  sub     sp, sp, #0xb0
  100129220  mov     x20, x1
  100129224  mov     x21, x0
  100129228  mov     x0, x2
  10012922c  bl      _objc_retain
  100129230  mov     x19, x0
  100129234  bl      _objc_retainBlock
  100129238  mov     x22, x0
  10012923c  adrp    x8, #0x10041c000
  100129240  nop
  100129244  ldr     x1, [x8, #0x2f8]
  100129248  mov     w4, #0
  10012924c  mov     x0, x21
  100129250  mov     x2, x20
  100129254  mov     x3, x22
  100129258  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0]
  10012925c  mov     x20, x0
  100129260  mov     x0, x22
  100129264  bl      _objc_release
  100129268  tbnz    w20, #0, loc_100129924                   ; if (([self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0] & 1))
  10012926c  adrp    x8, #0x10041b000
  100129270  nop
  100129274  ldr     x1, [x8, #0xa88]
  100129278  mov     x0, x21
  10012927c  bl      _objc_msgSend                            ; [self canDispatch]
  100129280  tbz     w0, #0, loc_10012948c                    ; if (!([self canDispatch] & 1))
  100129284  adrp    x8, #0x10041c000
  100129288  nop
  10012928c  ldr     x1, [x8, #0x388]
  100129290  mov     x0, x21
  100129294  bl      _objc_msgSend                            ; [self hitsForDispatch]
  100129298  mov     x29, x29
  10012929c  bl      _objc_retainAutoreleasedReturnValue
  1001292a0  mov     x20, x0
  1001292a4  adrp    x8, #0x100416000
  1001292a8  nop
  1001292ac  ldr     x26, [x8, #0xe30]
  1001292b0  mov     x1, x26
  1001292b4  bl      _objc_msgSend                            ; [[self hitsForDispatch] count]
  1001292b8  cbz     x0, loc_1001294a4                        ; if ([[self hitsForDispatch] count] == 0)
  1001292bc  adrp    x8, #0x100420000
  1001292c0  ldrsw   x9, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  1001292c4  ldr     x8, [x21, x9]                            ; x8 = self->_connection
  1001292c8  cbnz    x8, loc_1001294bc                        ; if (self->_connection != 0)
  1001292cc  str     x9, [sp, #0x50]
  1001292d0  adrp    x8, #0x10041d000
  1001292d4  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1001292d8  adrp    x8, #0x100416000
  1001292dc  nop
  1001292e0  ldr     x1, [x8, #0xe88]
  1001292e4  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1001292e8  mov     x29, x29
  1001292ec  bl      _objc_retainAutoreleasedReturnValue
  1001292f0  mov     x22, x0
  1001292f4  adrp    x8, #0x10041a000
  1001292f8  nop
  1001292fc  ldr     x1, [x8, #0x40]
  100129300  adrp    x2, #0x1003c5000
  100129304  add     x2, x2, #0xfd0                           ; @"GAIWillDispatchNotification"
  100129308  mov     x3, x21
  10012930c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"GAIWillDispatchNotification" object:self]
  100129310  mov     x0, x22
  100129314  bl      _objc_release
  100129318  adrp    x8, #0x10041b000
  10012931c  nop
  100129320  ldr     x1, [x8, #0xf28]
  100129324  mov     x2, #0
  100129328  mov     x0, x20
  10012932c  bl      _objc_msgSend                            ; [[self hitsForDispatch] objectAtIndexedSubscript:0]
  100129330  mov     x29, x29
  100129334  bl      _objc_retainAutoreleasedReturnValue
  100129338  mov     x25, x0
  10012933c  adrp    x8, #0x1003b8000
  100129340  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  100129344  ldr     x2, [x8]                                 ; [&d_1003b81f0] -> @"parameters"
  100129348  adrp    x8, #0x10041b000
  10012934c  nop
  100129350  ldr     x22, [x8, #0xb70]
  100129354  mov     x1, x22
  100129358  bl      _objc_msgSend                            ; [[[self hitsForDispatch] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"]
  10012935c  mov     x29, x29
  100129360  bl      _objc_retainAutoreleasedReturnValue
  100129364  mov     x24, x0
  100129368  adrp    x8, #0x1003b8000
  10012936c  add     x8, x8, #0x518                           ; &d_1003b8518
  100129370  ldr     x2, [x8]                                 ; [&d_1003b8518] -> @"useSecure"
  100129374  mov     x1, x22
  100129378  bl      _objc_msgSend                            ; [[[[self hitsForDispatch] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"]
  10012937c  mov     x29, x29
  100129380  bl      _objc_retainAutoreleasedReturnValue
  100129384  mov     x28, x0
  100129388  mov     x0, x24
  10012938c  bl      _objc_release
  100129390  adrp    x8, #0x10041d000
  100129394  ldr     x0, [x8, #0xf78]                         ; class NSString
  100129398  adrp    x8, #0x100417000
  10012939c  nop
  1001293a0  ldr     x1, [x8, #0x2e0]
  1001293a4  bl      _objc_msgSend                            ; [NSString class]
  1001293a8  mov     x2, x0
  1001293ac  adrp    x8, #0x100417000
  1001293b0  nop
  1001293b4  ldr     x1, [x8, #0x3b8]
  1001293b8  mov     x0, x28
  1001293bc  bl      _objc_msgSend                            ; [[[[[self hitsForDispatch] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"] isKindOfClass:[NSString class]]
  1001293c0  adrp    x22, #0x100420000
  1001293c4  add     x22, x22, #0x8d0                         ; 0x1004208d0
  1001293c8  cbz     w0, loc_1001293f8                        ; if ([[[[[self hitsForDispatch] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"] isKindOfClass:[NSString class]] == 0)
  1001293cc  adrp    x8, #0x100416000
  1001293d0  nop
  1001293d4  ldr     x1, [x8, #0xf58]
  1001293d8  adrp    x2, #0x1003bb000
  1001293dc  add     x2, x2, #0xe30                           ; @"0"
  1001293e0  mov     x0, x28
  1001293e4  bl      _objc_msgSend                            ; [[[[[self hitsForDispatch] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"useSecure"] isEqualToString:@"0"]
  1001293e8  adrp    x8, #0x100420000
  1001293ec  add     x8, x8, #0x8d4                           ; 0x1004208d4
  1001293f0  cmp     w0, #0
  1001293f4  csel    x22, x8, x22, ne                         ; t1 = ([[[[[self hitsForDispatch] objectAtIndexedSubscript:0] objectForKeyedSubscript:@"parameters"] objectForKeyedSubscript:@"… != 0 ? 0x1004208d4 : 0x1004208d0)
loc_1001293f8:
  1001293f8  ldrsw   x8, [x22]
  1001293fc  ldr     x0, [x21, x8]
  100129400  bl      _objc_retain
  100129404  mov     x24, x0
  100129408  adrp    x8, #0x10041c000
  10012940c  nop
  100129410  ldr     x1, [x8, #0x390]
  100129414  mov     x0, x21
  100129418  mov     x2, x20
  10012941c  bl      _objc_msgSend                            ; [self buildPayload:[self hitsForDispatch]]
  100129420  mov     x29, x29
  100129424  bl      _objc_retainAutoreleasedReturnValue
  100129428  mov     x22, x0
  10012942c  adrp    x8, #0x10041c000
  100129430  nop
  100129434  ldr     x27, [x8, #0x350]
  100129438  mov     x0, x21
  10012943c  mov     x1, x27
  100129440  bl      _objc_msgSend                            ; [self maxBodySize]
  100129444  cbz     x0, loc_1001294d4                        ; if ([self maxBodySize] == 0)
  100129448  adrp    x8, #0x10041c000
  10012944c  nop
  100129450  ldr     x1, [x8, #0x598]
  100129454  mov     x2, #4
  100129458  mov     x0, x22
  10012945c  bl      _objc_msgSend                            ; [[self buildPayload:[self hitsForDispatch]] lengthOfBytesUsingEncoding:4]
  100129460  mov     x23, x22
  100129464  mov     x22, x0
  100129468  mov     x0, x21
  10012946c  mov     x1, x27
  100129470  bl      _objc_msgSend                            ; [self maxBodySize]
  100129474  cmp     x22, x0
  100129478  mov     x22, x23
  10012947c  b.ls    loc_1001294d4                            ; if ([[self buildPayload:[self hitsForDispatch]] lengthOfBytesUsingEncoding:4] <=u [self maxBodySize])
  100129480  stp     x24, x22, [sp, #0x58]
  100129484  stp     x28, x25, [sp, #0x68]
  100129488  b       loc_1001295d8
loc_10012948c:
  10012948c  cbz     x19, loc_100129924                       ; if (arg1 == 0)
  100129490  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  100129494  mov     x1, #0
  100129498  mov     x0, x19
  10012949c  blr     x8                                       ; call arg1[+0x10]
  1001294a0  b       loc_100129924
loc_1001294a4:
  1001294a4  adrp    x8, #0x10041b000
  1001294a8  nop
  1001294ac  ldr     x1, [x8, #0x9a8]
  1001294b0  mov     w2, #0
  1001294b4  mov     x0, x21
  1001294b8  bl      _objc_msgSend                            ; [self setHasHits:0]
loc_1001294bc:
  1001294bc  cbz     x19, loc_10012991c                       ; if (arg1 == 0)
  1001294c0  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  1001294c4  mov     x1, #0
  1001294c8  mov     x0, x19
  1001294cc  blr     x8                                       ; call arg1[+0x10]
  1001294d0  b       loc_10012991c
loc_1001294d4:
  1001294d4  mov     x0, x20
  1001294d8  mov     x1, x26
  1001294dc  bl      _objc_msgSend                            ; [[self hitsForDispatch] count]
  1001294e0  cmp     x0, #1
  1001294e4  b.ne    loc_100129524                            ; if ([[self hitsForDispatch] count] != 1)
  1001294e8  adrp    x8, #0x10041c000
  1001294ec  nop
  1001294f0  ldr     x1, [x8, #0x598]
  1001294f4  mov     x2, #4
  1001294f8  mov     x0, x22
  1001294fc  bl      _objc_msgSend                            ; [[self buildPayload:[self hitsForDispatch]] lengthOfBytesUsingEncoding:4]
  100129500  adrp    x8, #0x1002fa000
  100129504  add     x8, x8, #0xa30                           ; tconst_1002faa30
  100129508  ldr     x8, [x8]                                 ; [tconst_1002faa30] -> 0x7d0
  10012950c  cmp     x0, x8
  100129510  b.hs    loc_100129524                            ; if ([[self buildPayload:[self hitsForDispatch]] lengthOfBytesUsingEncoding:4] >=u 0x7d0)
  100129514  adrp    x8, #0x100420000
  100129518  ldrsw   x8, [x8, #0x8f4]                         ; ivar offset GAIBatchingDispatcher._compressionStrategy (+0x18)
  10012951c  ldr     x8, [x21, x8]                            ; x8 = self->_compressionStrategy
  100129520  cbz     x8, loc_10012994c                        ; if (self->_compressionStrategy == 0)
loc_100129524:
  100129524  stp     x28, x25, [sp, #0x68]
  100129528  adrp    x8, #0x100420000
  10012952c  ldrsw   x8, [x8, #0x8d8]                         ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  100129530  ldr     x0, [x21, x8]                            ; x0 = self->_requestBuilder
  100129534  adrp    x8, #0x100420000
  100129538  ldrsw   x8, [x8, #0x8f4]                         ; ivar offset GAIBatchingDispatcher._compressionStrategy (+0x18)
  10012953c  ldr     x4, [x21, x8]                            ; x4 = self->_compressionStrategy
  100129540  adrp    x8, #0x10041c000
  100129544  nop
  100129548  ldr     x1, [x8, #0x3a0]
  10012954c  mov     x2, x24
  100129550  mov     x3, x22
  100129554  bl      _objc_msgSend                            ; [self->_requestBuilder requestPostUrl:x2 payload:[self buildPayload:[self hitsForDispatch]] compression:self->_compressionStrategy]
  100129558  mov     x29, x29
loc_10012955c:
  10012955c  bl      _objc_retainAutoreleasedReturnValue
  100129560  mov     x23, x0
  100129564  str     x22, [sp, #0x60]
  100129568  cbz     x23, loc_1001295d4                       ; if (x23 == 0)
  10012956c  str     x24, [sp, #0x58]
  100129570  mov     x0, x21
  100129574  mov     x1, x27
  100129578  bl      _objc_msgSend                            ; [self maxBodySize]
  10012957c  cbz     x0, loc_1001295e4                        ; if ([self maxBodySize] == 0)
  100129580  adrp    x8, #0x10041c000
  100129584  nop
  100129588  ldr     x1, [x8, #0x3a8]
  10012958c  mov     x0, x23
  100129590  bl      _objc_msgSend                            ; [x0 HTTPBody]
  100129594  mov     x29, x29
  100129598  bl      _objc_retainAutoreleasedReturnValue
  10012959c  mov     x22, x0
  1001295a0  adrp    x8, #0x100417000
  1001295a4  nop
  1001295a8  ldr     x1, [x8, #0xc58]
  1001295ac  bl      _objc_msgSend                            ; [[x0 HTTPBody] length]
  1001295b0  mov     x28, x0
  1001295b4  mov     x0, x21
  1001295b8  mov     x1, x27
  1001295bc  bl      _objc_msgSend                            ; [self maxBodySize]
  1001295c0  cmp     x28, x0
  1001295c4  cset    w25, hi
  1001295c8  mov     x0, x22
  1001295cc  bl      _objc_release
  1001295d0  b       loc_1001295e8
loc_1001295d4:
  1001295d4  str     x24, [sp, #0x58]
loc_1001295d8:
  1001295d8  mov     x23, #0
  1001295dc  mov     w25, #1
  1001295e0  b       loc_1001295e8
loc_1001295e4:
  1001295e4  mov     w25, #0
loc_1001295e8:
  1001295e8  adrp    x8, #0x10041d000
  1001295ec  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001295f0  adrp    x8, #0x10041b000
  1001295f4  nop
  1001295f8  ldr     x1, [x8, #0xdc8]
  1001295fc  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100129600  mov     x29, x29
  100129604  bl      _objc_retainAutoreleasedReturnValue
  100129608  mov     x27, x0
  10012960c  adrp    x8, #0x10041d000
  100129610  ldr     x22, [x8, #0xf78]                        ; class NSString
  100129614  adrp    x8, #0x1003b7000
  100129618  add     x8, x8, #0xd70                           ; &d_1003b7d70
  10012961c  ldr     x26, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100129620  adrp    x8, #0x1003b7000
  100129624  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100129628  ldr     x24, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  10012962c  adrp    x8, #0x10041b000
  100129630  nop
  100129634  ldr     x1, [x8, #0x580]
  100129638  adrp    x0, #0x1003c6000
  10012963c  add     x0, x0, #0x10                            ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100129640  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100129644  mov     x29, x29
  100129648  bl      _objc_retainAutoreleasedReturnValue
  10012964c  mov     x28, x0
  100129650  tbz     w25, #0, loc_1001296f8                   ; if (!(w25 & 1))
  100129654  mov     x25, x23
  100129658  adrp    x8, #0x100416000
  10012965c  nop
  100129660  ldr     x1, [x8, #0xee8]
  100129664  mov     x8, #0x20b
  100129668  adrp    x9, #0x100391000
  10012966c  add     x9, x9, #0xb23                           ; "-[GAIBatchingDispatcher dispatchWithCompletionHandler:]"
  100129670  stp     x28, x8, [sp, #0x18]
  100129674  stp     x24, x9, [sp, #8]
  100129678  str     x26, [sp]
  10012967c  adrp    x2, #0x1003c6000
  100129680  add     x2, x2, #0x1b0                           ; @"%@ %@ %s (%@:%d): Failed to generate request for hit(s)."
  100129684  mov     x0, x22
  100129688  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to generate request for hit(s).", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher dispatchWithCompletionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 523]
  10012968c  mov     x29, x29
  100129690  bl      _objc_retainAutoreleasedReturnValue
  100129694  mov     x22, x0
  100129698  adrp    x8, #0x10041b000
  10012969c  nop
  1001296a0  ldr     x1, [x8, #0xdd0]
  1001296a4  mov     x0, x27
  1001296a8  mov     x2, x22
  1001296ac  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Failed to generate request for hit(s).", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher dispatchWithCompletionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 523]]
  1001296b0  mov     x0, x22
  1001296b4  bl      _objc_release
  1001296b8  mov     x0, x28
  1001296bc  bl      _objc_release
  1001296c0  mov     x0, x27
  1001296c4  bl      _objc_release
  1001296c8  adrp    x8, #0x10041b000
  1001296cc  nop
  1001296d0  ldr     x1, [x8, #0xb10]
  1001296d4  mov     x0, x21
  1001296d8  mov     x2, x20
  1001296dc  bl      _objc_msgSend                            ; [self deleteHits:[self hitsForDispatch]]
  1001296e0  cbz     x19, loc_1001298d0                       ; if (arg1 == 0)
  1001296e4  ldr     x8, [x19, #0x10]                         ; x8 = arg1[+0x10]
  1001296e8  mov     x1, #1
  1001296ec  mov     x0, x19
  1001296f0  blr     x8                                       ; call arg1[+0x10]
  1001296f4  b       loc_1001298e8
loc_1001296f8:
  1001296f8  adrp    x8, #0x10041c000
  1001296fc  nop
  100129700  ldr     x1, [x8, #0x3b0]
  100129704  mov     x0, x23
  100129708  bl      _objc_msgSend                            ; [x0 HTTPMethod]
  10012970c  mov     x29, x29
  100129710  bl      _objc_retainAutoreleasedReturnValue
  100129714  str     x22, [sp, #0x40]
  100129718  mov     x22, x0
  10012971c  str     x22, [sp, #0x38]
  100129720  adrp    x8, #0x10041c000
  100129724  nop
  100129728  ldr     x1, [x8, #0x3b8]
  10012972c  mov     x0, x23
  100129730  bl      _objc_msgSend                            ; [x0 URL]
  100129734  mov     x29, x29
  100129738  bl      _objc_retainAutoreleasedReturnValue
  10012973c  str     x27, [sp, #0x48]
  100129740  mov     x27, x0
  100129744  adrp    x8, #0x10041c000
  100129748  nop
  10012974c  ldr     x1, [x8, #0x3c0]
  100129750  bl      _objc_msgSend                            ; [[x0 URL] absoluteString]
  100129754  mov     x29, x29
  100129758  bl      _objc_retainAutoreleasedReturnValue
  10012975c  mov     x25, x0
  100129760  adrp    x8, #0x100416000
  100129764  nop
  100129768  ldr     x1, [x8, #0xee8]
  10012976c  stp     x22, x25, [sp, #0x28]
  100129770  mov     x8, #0x218
  100129774  adrp    x9, #0x100391000
  100129778  add     x9, x9, #0xb23                           ; "-[GAIBatchingDispatcher dispatchWithCompletionHandler:]"
  10012977c  stp     x28, x8, [sp, #0x18]
  100129780  stp     x24, x9, [sp, #8]
  100129784  mov     x24, x23
  100129788  adrp    x2, #0x1003c6000
  10012978c  add     x2, x2, #0x1d0                           ; @"%@ %@ %s (%@:%d): Sending hit(s) %@: %@"
  100129790  str     x26, [sp]
  100129794  ldr     x0, [sp, #0x40]
  100129798  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Sending hit(s) %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher dispatchWithCompletionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 536, [x0 HTTPMethod], [[x0 URL] absoluteString]]
  10012979c  mov     x29, x29
  1001297a0  bl      _objc_retainAutoreleasedReturnValue
  1001297a4  mov     x22, x0
  1001297a8  adrp    x8, #0x10041b000
  1001297ac  nop
  1001297b0  ldr     x1, [x8, #0xb08]
  1001297b4  ldr     x23, [sp, #0x48]
  1001297b8  mov     x0, x23
  1001297bc  mov     x2, x22
  1001297c0  bl      _objc_msgSend                            ; [[GAI sharedLogger] verbose:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Sending hit(s) %@: %@", @"GoogleAnalytics", @"3.09", "-[GAIBatchingDispatcher dispatchWithCompletionHandler:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 536, [x0 HTTPMethod], [[x0 URL] absoluteString]]]
  1001297c4  mov     x0, x22
  1001297c8  bl      _objc_release
  1001297cc  mov     x0, x25
  1001297d0  bl      _objc_release
  1001297d4  mov     x0, x27
  1001297d8  bl      _objc_release
  1001297dc  ldr     x0, [sp, #0x38]
  1001297e0  bl      _objc_release
  1001297e4  mov     x0, x28
  1001297e8  bl      _objc_release
  1001297ec  mov     x0, x23
  1001297f0  bl      _objc_release
  1001297f4  adrp    x8, #0x1003b0000
  1001297f8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1001297fc  mov     w9, #-0x3e000000
  100129800  str     x8, [sp, #0x78]
  100129804  stp     w9, wzr, [sp, #0x80]
  100129808  adr     x8, #0x10012997c                         ; &-[GAIBatchingDispatcher dispatchWithCompletionHandler:]_block_invoke
  10012980c  nop
  100129810  str     x8, [sp, #0x88]
  100129814  adrp    x8, #0x1003b8000
  100129818  add     x8, x8, #0x5e0                           ; &d_1003b85e0
  10012981c  str     x8, [sp, #0x90]
  100129820  mov     x0, x21
  100129824  bl      _objc_retain
  100129828  mov     x21, x0
  10012982c  str     x21, [sp, #0x98]
  100129830  mov     x0, x20
  100129834  bl      _objc_retain
  100129838  str     x0, [sp, #0xa0]
  10012983c  mov     x0, x19
  100129840  bl      _objc_retain
  100129844  str     x0, [sp, #0xa8]
  100129848  add     x0, sp, #0x78
  10012984c  bl      _objc_retainBlock
  100129850  mov     x22, x0
  100129854  adrp    x8, #0x100420000
  100129858  ldrsw   x8, [x8, #0x8f8]                         ; ivar offset GAIBatchingDispatcher._urlConnectionClass (+0x38)
  10012985c  ldr     x0, [x21, x8]                            ; x0 = self->_urlConnectionClass
  100129860  adrp    x8, #0x100416000
  100129864  nop
  100129868  ldr     x1, [x8, #0xac8]
  10012986c  bl      _objc_msgSend                            ; [self->_urlConnectionClass alloc]
  100129870  adrp    x8, #0x10041c000
  100129874  nop
  100129878  ldr     x1, [x8, #0x3d0]
  10012987c  adrp    x3, #0x1003b0000
  100129880  ldr     x3, [x3, #0x1e8]                         ; __dispatch_main_q
  100129884  mov     x2, x24
  100129888  mov     x4, x22
  10012988c  bl      _objc_msgSend                            ; [[self->_urlConnectionClass alloc] initWithRequest:x2 completionQueue:__dispatch_main_q completionHandler:^{-[GAIBatchingDispatcher dispatchWithCompletionHandler:]_block_invoke captures +0x20=self, +0x28=[self hitsForDispatch], +0x30=arg1}]
  100129890  ldr     x9, [sp, #0x50]
  100129894  ldr     x8, [x21, x9]                            ; x8 = self->_connection
  100129898  str     x0, [x21, x9]                            ; self->_connection = [[self->_urlConnectionClass alloc] initWithRequest:x2 completionQueue:__dispatch_main_q completionHandler:^{-[GAIBatchingDispatcher dispatchWithCompletionHandler:]_block_invoke captures +0x20=self, +0x28=[self hitsForDispatch], +0x30=arg1}]
  10012989c  mov     x0, x8
  1001298a0  bl      _objc_release
  1001298a4  mov     x0, x22
  1001298a8  bl      _objc_release
  1001298ac  ldr     x0, [sp, #0xa8]
  1001298b0  bl      _objc_release
  1001298b4  ldr     x0, [sp, #0xa0]
  1001298b8  bl      _objc_release
  1001298bc  ldr     x0, [sp, #0x98]
  1001298c0  bl      _objc_release
  1001298c4  ldp     x22, x21, [sp, #0x68]
  1001298c8  ldr     x23, [sp, #0x58]
  1001298cc  b       loc_1001298f4
loc_1001298d0:
  1001298d0  adrp    x8, #0x10041b000
  1001298d4  nop
  1001298d8  ldr     x1, [x8, #0xe10]
  1001298dc  mov     x2, #0
  1001298e0  mov     x0, x21
  1001298e4  bl      _objc_msgSend                            ; [self dispatchWithCompletionHandler:0]
loc_1001298e8:
  1001298e8  ldp     x22, x21, [sp, #0x68]
  1001298ec  ldr     x23, [sp, #0x58]
  1001298f0  mov     x24, x25
loc_1001298f4:
  1001298f4  ldr     x0, [sp, #0x60]
  1001298f8  bl      _objc_release
  1001298fc  mov     x0, x23
  100129900  bl      _objc_release
  100129904  mov     x0, x24
  100129908  bl      _objc_release
  10012990c  mov     x0, x22
  100129910  bl      _objc_release
  100129914  mov     x0, x21
  100129918  bl      _objc_release
loc_10012991c:
  10012991c  mov     x0, x20
  100129920  bl      _objc_release
loc_100129924:
  100129924  mov     x0, x19
  100129928  bl      _objc_release
  10012992c  sub     sp, x29, #0x50
  100129930  ldp     x28, x27, [sp], #0x10
  100129934  ldp     x26, x25, [sp], #0x10
  100129938  ldp     x24, x23, [sp], #0x10
  10012993c  ldp     x22, x21, [sp], #0x10
  100129940  ldp     x20, x19, [sp], #0x10
  100129944  ldp     x29, x30, [sp], #0x10
  100129948  ret
loc_10012994c:
  10012994c  stp     x28, x25, [sp, #0x68]
  100129950  adrp    x8, #0x100420000
  100129954  ldrsw   x8, [x8, #0x8d8]                         ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  100129958  ldr     x0, [x21, x8]                            ; x0 = self->_requestBuilder
  10012995c  adrp    x8, #0x10041c000
  100129960  nop
  100129964  ldr     x1, [x8, #0x398]
  100129968  mov     x2, x24
  10012996c  mov     x3, x22
  100129970  bl      _objc_msgSend                            ; [self->_requestBuilder requestGetUrl:x2 payload:[self buildPayload:[self hitsForDispatch]]]
  100129974  mov     x29, x29
  100129978  b       loc_10012955c

; ======================================================================
; -[GAIBatchingDispatcher dispatchWithCompletionHandler:]_block_invoke
; address 0x10012997c  size 116  kind block
; ======================================================================
  10012997c  stp     x29, x30, [sp, #-0x10]!
  100129980  mov     x29, sp
  100129984  stp     x20, x19, [sp, #-0x10]!
  100129988  stp     x22, x21, [sp, #-0x10]!
  10012998c  mov     x19, x3
  100129990  mov     x20, x2
  100129994  mov     x21, x0
  100129998  mov     x0, x1
  10012999c  bl      _objc_retain
  1001299a0  mov     x22, x0
  1001299a4  mov     x0, x20
  1001299a8  bl      _objc_retain
  1001299ac  mov     x20, x0
  1001299b0  ldp     x0, x2, [x21, #0x20]
  1001299b4  ldr     x6, [x21, #0x30]                         ; x6 = captured arg1
  1001299b8  adrp    x8, #0x10041c000
  1001299bc  nop
  1001299c0  ldr     x1, [x8, #0x3c8]
  1001299c4  mov     x3, x22
  1001299c8  mov     x4, x20
  1001299cc  mov     x5, x19
  1001299d0  bl      _objc_msgSend                            ; [x0 didSendHits:x2 response:blockarg1 data:blockarg2 error:blockarg3 completionHandler:arg1]
  1001299d4  mov     x0, x20
  1001299d8  bl      _objc_release
  1001299dc  mov     x0, x22
  1001299e0  ldp     x22, x21, [sp], #0x10
  1001299e4  ldp     x20, x19, [sp], #0x10
  1001299e8  ldp     x29, x30, [sp], #0x10
  1001299ec  b       _objc_release

; ======================================================================
; sub_1001299f0
; address 0x1001299f0  size 60  kind sub
; ======================================================================
  1001299f0  stp     x29, x30, [sp, #-0x10]!
  1001299f4  mov     x29, sp
  1001299f8  stp     x20, x19, [sp, #-0x10]!
  1001299fc  mov     x19, x1
  100129a00  mov     x20, x0
  100129a04  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  100129a08  bl      _objc_retain
  100129a0c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  100129a10  bl      _objc_retain
  100129a14  add     x0, x20, #0x30
  100129a18  ldr     x1, [x19, #0x30]                         ; x1 = a1[+0x30]
  100129a1c  mov     w2, #7
  100129a20  ldp     x20, x19, [sp], #0x10
  100129a24  ldp     x29, x30, [sp], #0x10
  100129a28  b       __Block_object_assign                    ; Block_object_assign((a0 + 48), a1[+0x30], 7)

; ======================================================================
; sub_100129a2c
; address 0x100129a2c  size 48  kind sub
; ======================================================================
  100129a2c  stp     x29, x30, [sp, #-0x10]!
  100129a30  mov     x29, sp
  100129a34  stp     x20, x19, [sp, #-0x10]!
  100129a38  mov     x19, x0
  100129a3c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  100129a40  bl      _objc_release
  100129a44  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  100129a48  bl      _objc_release
  100129a4c  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  100129a50  ldp     x20, x19, [sp], #0x10
  100129a54  ldp     x29, x30, [sp], #0x10
  100129a58  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher buildPayload:]
; address 0x100129a5c  size 640  kind objc
; ======================================================================
  100129a5c  stp     x29, x30, [sp, #-0x10]!
  100129a60  mov     x29, sp
  100129a64  stp     x20, x19, [sp, #-0x10]!
  100129a68  stp     x22, x21, [sp, #-0x10]!
  100129a6c  stp     x24, x23, [sp, #-0x10]!
  100129a70  stp     x26, x25, [sp, #-0x10]!
  100129a74  stp     x28, x27, [sp, #-0x10]!
  100129a78  sub     sp, sp, #0x110
  100129a7c  mov     x19, x0
  100129a80  adrp    x8, #0x1003b0000
  100129a84  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100129a88  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100129a8c  stur    x8, [x29, #-0x58]
  100129a90  mov     x0, x2
  100129a94  bl      _objc_retain
  100129a98  mov     x20, x0
  100129a9c  adrp    x8, #0x10041d000
  100129aa0  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100129aa4  adrp    x8, #0x100418000
  100129aa8  nop
  100129aac  ldr     x1, [x8, #0x50]
  100129ab0  bl      _objc_msgSend                            ; [NSMutableArray array]
  100129ab4  mov     x29, x29
  100129ab8  bl      _objc_retainAutoreleasedReturnValue
  100129abc  str     x0, [sp, #0x30]
  100129ac0  stp     xzr, xzr, [x29, #-0x68]
  100129ac4  stp     xzr, xzr, [x29, #-0x78]
  100129ac8  stp     xzr, xzr, [x29, #-0x88]
  100129acc  stp     xzr, xzr, [x29, #-0x98]
  100129ad0  mov     x0, x20
  100129ad4  bl      _objc_retain
  100129ad8  str     x0, [sp, #0x38]
  100129adc  adrp    x8, #0x100416000
  100129ae0  nop
  100129ae4  ldr     x1, [x8, #0xe00]
  100129ae8  str     x1, [sp, #0x18]
  100129aec  sub     x2, x29, #0x98
  100129af0  add     x3, sp, #0x48
  100129af4  mov     x4, #0x10
  100129af8  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  100129afc  mov     x23, x0
  100129b00  cbz     x23, loc_100129c54                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  100129b04  ldur    x8, [x29, #-0x88]
  100129b08  ldr     x21, [x8]
  100129b0c  adrp    x8, #0x100420000
  100129b10  ldrsw   x28, [x8, #0x8d8]                        ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  100129b14  adrp    x8, #0x10041b000
  100129b18  nop
  100129b1c  ldr     x24, [x8, #0x1d8]
  100129b20  adrp    x8, #0x10041c000
  100129b24  nop
  100129b28  ldr     x25, [x8, #0x348]
  100129b2c  adrp    x8, #0x100417000
  100129b30  nop
  100129b34  ldr     x26, [x8, #0xc58]
  100129b38  adrp    x8, #0x10041c000
  100129b3c  nop
  100129b40  ldr     x8, [x8, #0x3d8]
  100129b44  str     x8, [sp, #0x40]
  100129b48  adrp    x8, #0x100416000
  100129b4c  nop
  100129b50  ldr     x8, [x8, #0xd90]
  100129b54  str     x8, [sp, #0x28]
  100129b58  adrp    x8, #0x10041c000
  100129b5c  nop
  100129b60  ldr     x8, [x8, #0x598]
  100129b64  str     x8, [sp, #0x20]
  100129b68  sub     x8, x29, #0x98
  100129b6c  str     x8, [sp, #0x10]
  100129b70  add     x8, sp, #0x48
  100129b74  str     x8, [sp, #8]
loc_100129b78:
  100129b78  mov     x27, #0
loc_100129b7c:
  100129b7c  ldur    x8, [x29, #-0x88]
  100129b80  ldr     x8, [x8]
  100129b84  cmp     x8, x21
  100129b88  b.eq    loc_100129b94                            ; if (x8 == x21)
  100129b8c  ldr     x0, [sp, #0x38]
  100129b90  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_100129b94:
  100129b94  ldur    x8, [x29, #-0x90]
  100129b98  ldr     x0, [x8, x27, lsl #3]
  100129b9c  ldr     x20, [x19, x28]                          ; x20 = self->_requestBuilder
  100129ba0  mov     x1, x24
  100129ba4  bl      _objc_msgSend                            ; [x0 mutableCopy]
  100129ba8  mov     x22, x0
  100129bac  mov     x0, x20
  100129bb0  mov     x1, x25
  100129bb4  mov     x2, x22
  100129bb8  bl      _objc_msgSend                            ; [self->_requestBuilder parametersForHit:[x0 mutableCopy]]
  100129bbc  mov     x29, x29
  100129bc0  bl      _objc_retainAutoreleasedReturnValue
  100129bc4  mov     x20, x0
  100129bc8  mov     x0, x22
  100129bcc  bl      _objc_release
  100129bd0  mov     x0, x20
  100129bd4  mov     x1, x26
  100129bd8  bl      _objc_msgSend                            ; [[self->_requestBuilder parametersForHit:[x0 mutableCopy]] length]
  100129bdc  cbz     x0, loc_100129c24                        ; if ([[self->_requestBuilder parametersForHit:[x0 mutableCopy]] length] == 0)
  100129be0  mov     x0, x19
  100129be4  ldr     x1, [sp, #0x40]
  100129be8  bl      _objc_msgSend                            ; [self maxHitSize]
  100129bec  cbz     x0, loc_100129c18                        ; if ([self maxHitSize] == 0)
  100129bf0  mov     x2, #4
  100129bf4  mov     x0, x20
  100129bf8  ldr     x1, [sp, #0x20]
  100129bfc  bl      _objc_msgSend                            ; [[self->_requestBuilder parametersForHit:[x0 mutableCopy]] lengthOfBytesUsingEncoding:4]
  100129c00  mov     x22, x0
  100129c04  mov     x0, x19
  100129c08  ldr     x1, [sp, #0x40]
  100129c0c  bl      _objc_msgSend                            ; [self maxHitSize]
  100129c10  cmp     x22, x0
  100129c14  b.hi    loc_100129c24                            ; if ([[self->_requestBuilder parametersForHit:[x0 mutableCopy]] lengthOfBytesUsingEncoding:4] >u [self maxHitSize])
loc_100129c18:
  100129c18  ldp     x1, x0, [sp, #0x28]
  100129c1c  mov     x2, x20
  100129c20  bl      _objc_msgSend                            ; [[NSMutableArray array] addObject:[self->_requestBuilder parametersForHit:[x0 mutableCopy]]]
loc_100129c24:
  100129c24  mov     x0, x20
  100129c28  bl      _objc_release
  100129c2c  add     x27, x27, #1
  100129c30  cmp     x27, x23
  100129c34  b.lo    loc_100129b7c                            ; if ((x27 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  100129c38  mov     x4, #0x10
  100129c3c  ldr     x0, [sp, #0x38]
  100129c40  ldp     x2, x1, [sp, #0x10]
  100129c44  ldr     x3, [sp, #8]
  100129c48  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  100129c4c  mov     x23, x0
  100129c50  cbnz    x23, loc_100129b78                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_100129c54:
  100129c54  ldr     x21, [sp, #0x38]
  100129c58  mov     x0, x21
  100129c5c  bl      _objc_release
  100129c60  adrp    x8, #0x10041c000
  100129c64  nop
  100129c68  ldr     x1, [x8, #0x1e8]
  100129c6c  adrp    x2, #0x1003c7000
  100129c70  add     x2, x2, #0x510                           ; @"%@\n"
  100129c74  ldr     x20, [sp, #0x30]
  100129c78  mov     x0, x20
  100129c7c  bl      _objc_msgSend                            ; [[NSMutableArray array] componentsJoinedByString:@"%@\n"]
  100129c80  mov     x29, x29
  100129c84  bl      _objc_retainAutoreleasedReturnValue
  100129c88  mov     x19, x0
  100129c8c  mov     x0, x20
  100129c90  bl      _objc_release
  100129c94  mov     x0, x21
  100129c98  bl      _objc_release
  100129c9c  adrp    x8, #0x1003b0000
  100129ca0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100129ca4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100129ca8  ldur    x9, [x29, #-0x58]
  100129cac  sub     x8, x8, x9
  100129cb0  cbnz    x8, loc_100129cd8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100129cb4  mov     x0, x19
  100129cb8  sub     sp, x29, #0x50
  100129cbc  ldp     x28, x27, [sp], #0x10
  100129cc0  ldp     x26, x25, [sp], #0x10
  100129cc4  ldp     x24, x23, [sp], #0x10
  100129cc8  ldp     x22, x21, [sp], #0x10
  100129ccc  ldp     x20, x19, [sp], #0x10
  100129cd0  ldp     x29, x30, [sp], #0x10
  100129cd4  b       _objc_autoreleaseReturnValue
loc_100129cd8:
  100129cd8  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; -[GAIBatchingDispatcher queueModel:]
; address 0x100129cdc  size 180  kind objc
; ======================================================================
  100129cdc  stp     x29, x30, [sp, #-0x10]!
  100129ce0  mov     x29, sp
  100129ce4  stp     x20, x19, [sp, #-0x10]!
  100129ce8  stp     x22, x21, [sp, #-0x10]!
  100129cec  mov     x21, x1
  100129cf0  mov     x20, x0
  100129cf4  mov     x0, x2
  100129cf8  bl      _objc_retain
  100129cfc  mov     x19, x0
  100129d00  adrp    x8, #0x10041c000
  100129d04  nop
  100129d08  ldr     x1, [x8, #0x3e0]
  100129d0c  mov     x0, x20
  100129d10  bl      _objc_msgSend                            ; [self optOut]
  100129d14  tbnz    w0, #0, loc_100129d7c                    ; if (([self optOut] & 1))
  100129d18  adrp    x8, #0x10041c000
  100129d1c  nop
  100129d20  ldr     x1, [x8, #0x2f8]
  100129d24  mov     w4, #0
  100129d28  mov     x0, x20
  100129d2c  mov     x2, x21
  100129d30  mov     x3, x19
  100129d34  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0]
  100129d38  tbnz    w0, #0, loc_100129d7c                    ; if (([self rescheduleIfNeeded:_cmd withObject:arg1 andWait:0] & 1))
  100129d3c  adrp    x8, #0x10041c000
  100129d40  nop
  100129d44  ldr     x1, [x8, #0x3e8]
  100129d48  mov     x0, x19
  100129d4c  bl      _objc_msgSend                            ; [arg1 buildDictionary]
  100129d50  mov     x29, x29
  100129d54  bl      _objc_retainAutoreleasedReturnValue
  100129d58  mov     x21, x0
  100129d5c  adrp    x8, #0x10041c000
  100129d60  nop
  100129d64  ldr     x1, [x8, #0x3f0]
  100129d68  mov     x0, x20
  100129d6c  mov     x2, x21
  100129d70  bl      _objc_msgSend                            ; [self queueDispatch:[arg1 buildDictionary]]
  100129d74  mov     x0, x21
  100129d78  bl      _objc_release
loc_100129d7c:
  100129d7c  mov     x0, x19
  100129d80  ldp     x22, x21, [sp], #0x10
  100129d84  ldp     x20, x19, [sp], #0x10
  100129d88  ldp     x29, x30, [sp], #0x10
  100129d8c  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher queueDispatch:]
; address 0x100129d90  size 628  kind objc
; ======================================================================
  100129d90  stp     x29, x30, [sp, #-0x10]!
  100129d94  mov     x29, sp
  100129d98  stp     x20, x19, [sp, #-0x10]!
  100129d9c  stp     x22, x21, [sp, #-0x10]!
  100129da0  stp     x24, x23, [sp, #-0x10]!
  100129da4  stp     x26, x25, [sp, #-0x10]!
  100129da8  sub     sp, sp, #0x30
  100129dac  mov     x20, x0
  100129db0  adrp    x26, #0x1003b0000
  100129db4  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100129db8  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100129dbc  str     x8, [sp, #0x28]
  100129dc0  mov     x0, x2
  100129dc4  bl      _objc_retain
  100129dc8  mov     x19, x0
  100129dcc  adrp    x8, #0x10041c000
  100129dd0  nop
  100129dd4  ldr     x1, [x8, #0x3e0]
  100129dd8  mov     x0, x20
  100129ddc  bl      _objc_msgSend                            ; [self optOut]
  100129de0  tbnz    w0, #0, loc_100129fc4                    ; if (([self optOut] & 1))
  100129de4  adrp    x8, #0x1003b8000
  100129de8  add     x8, x8, #0x380                           ; &d_1003b8380
  100129dec  ldr     x2, [x8]                                 ; [&d_1003b8380] -> @"&cid"
  100129df0  adrp    x8, #0x10041b000
  100129df4  nop
  100129df8  ldr     x22, [x8, #0xb70]
  100129dfc  mov     x0, x19
  100129e00  mov     x1, x22
  100129e04  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"&cid"]
  100129e08  mov     x29, x29
  100129e0c  bl      _objc_retainAutoreleasedReturnValue
  100129e10  mov     x21, x0
  100129e14  adrp    x8, #0x1003b8000
  100129e18  add     x8, x8, #0x4e0                           ; &d_1003b84e0
  100129e1c  ldr     x2, [x8]                                 ; [&d_1003b84e0] -> @"&sf"
  100129e20  mov     x0, x19
  100129e24  mov     x1, x22
  100129e28  bl      _objc_msgSend                            ; [arg1 objectForKeyedSubscript:@"&sf"]
  100129e2c  mov     x29, x29
  100129e30  bl      _objc_retainAutoreleasedReturnValue
  100129e34  mov     x22, x0
  100129e38  cbz     x22, loc_100129ef0                       ; if ([arg1 objectForKeyedSubscript:@"&sf"] == 0)
  100129e3c  adrp    x8, #0x10041e000
  100129e40  ldr     x0, [x8, #0x650]                         ; class NSScanner
  100129e44  adrp    x8, #0x10041c000
  100129e48  nop
  100129e4c  ldr     x1, [x8, #0x3f8]
  100129e50  mov     x2, x22
  100129e54  bl      _objc_msgSend                            ; [NSScanner scannerWithString:[arg1 objectForKeyedSubscript:@"&sf"]]
  100129e58  mov     x29, x29
  100129e5c  bl      _objc_retainAutoreleasedReturnValue
  100129e60  mov     x23, x0
  100129e64  adrp    x8, #0x10041c000
  100129e68  nop
  100129e6c  ldr     x1, [x8, #0x400]
  100129e70  add     x2, sp, #0x24
  100129e74  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:[arg1 objectForKeyedSubscript:@"&sf"]] scanFloat:&sp[0x24]]
  100129e78  cbz     w0, loc_100129ee8                        ; if ([[NSScanner scannerWithString:[arg1 objectForKeyedSubscript:@"&sf"]] scanFloat:&sp[0x24]] == 0)
  100129e7c  adrp    x8, #0x10041c000
  100129e80  nop
  100129e84  ldr     x1, [x8, #0x408]
  100129e88  mov     x0, x23
  100129e8c  bl      _objc_msgSend                            ; [[NSScanner scannerWithString:[arg1 objectForKeyedSubscript:@"&sf"]] isAtEnd]
  100129e90  cbz     w0, loc_100129ee8                        ; if ([[NSScanner scannerWithString:[arg1 objectForKeyedSubscript:@"&sf"]] isAtEnd] == 0)
  100129e94  adrp    x8, #0x10041e000
  100129e98  ldr     x0, [x8, #0x600]                         ; class GAIHitUtil
  100129e9c  adrp    x8, #0x10041c000
  100129ea0  nop
  100129ea4  ldr     x1, [x8, #0x410]
  100129ea8  mov     x2, x21
  100129eac  bl      _objc_msgSend                            ; [GAIHitUtil gaHash:[arg1 objectForKeyedSubscript:@"&cid"]]
  100129eb0  ubfx    x8, x0, #0, #0x20
  100129eb4  mov     x9, #0xd1b70000
  100129eb8  movk    x9, #0x1759
  100129ebc  mul     x8, x8, x9
  100129ec0  lsr     x8, x8, #0x2d
  100129ec4  mov     w9, #0x2710
  100129ec8  msub    w8, w8, w9, w0                           ; t1 = ([GAIHitUtil gaHash:[arg1 objectForKeyedSubscript:@"&cid"]] - ((x8 * 0xd1b71759) >>> 45) * 0x2710)
  100129ecc  ucvtf   s0, w8
  100129ed0  ldr     s1, [sp, #0x24]
  100129ed4  adrp    x8, #0x100181000
  100129ed8  ldr     s2, [x8, #0xa10]                         ; s2 = 100.0
  100129edc  fmul    s1, s1, s2
  100129ee0  fcmp    s0, s1
  100129ee4  b.ge    loc_100129ffc                            ; if ((float)t1 >= (s1 * 100))
loc_100129ee8:
  100129ee8  mov     x0, x23
  100129eec  bl      _objc_release
loc_100129ef0:
  100129ef0  adrp    x8, #0x1003b8000
  100129ef4  add     x8, x8, #0x1f8                           ; &d_1003b81f8
  100129ef8  ldr     x8, [x8]                                 ; [&d_1003b81f8] -> @"timestamp"
  100129efc  str     x8, [sp]
  100129f00  adrp    x8, #0x10041e000
  100129f04  ldr     x0, [x8, #0x38]                          ; class NSDate
  100129f08  adrp    x8, #0x100418000
  100129f0c  nop
  100129f10  ldr     x1, [x8, #0x158]
  100129f14  bl      _objc_msgSend                            ; [NSDate date]
  100129f18  mov     x29, x29
  100129f1c  bl      _objc_retainAutoreleasedReturnValue
  100129f20  mov     x23, x0
  100129f24  adrp    x8, #0x1003b8000
  100129f28  add     x8, x8, #0x1f0                           ; &d_1003b81f0
  100129f2c  str     x23, [sp, #0x10]
  100129f30  ldr     x8, [x8]                                 ; [&d_1003b81f0] -> @"parameters"
  100129f34  str     x8, [sp, #8]
  100129f38  adrp    x8, #0x100419000
  100129f3c  nop
  100129f40  ldr     x1, [x8, #0xc08]
  100129f44  mov     x0, x19
  100129f48  bl      _objc_msgSend                            ; [arg1 copy]
  100129f4c  mov     x24, x0
  100129f50  str     x24, [sp, #0x18]
  100129f54  adrp    x8, #0x10041d000
  100129f58  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100129f5c  adrp    x8, #0x100416000
  100129f60  nop
  100129f64  ldr     x1, [x8, #0xcd0]
  100129f68  add     x2, sp, #0x10
  100129f6c  mov     x3, sp
  100129f70  mov     x4, #2
  100129f74  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x0] count:2]
  100129f78  mov     x29, x29
  100129f7c  bl      _objc_retainAutoreleasedReturnValue
  100129f80  mov     x25, x0
  100129f84  mov     x0, x24
  100129f88  bl      _objc_release
  100129f8c  mov     x0, x23
  100129f90  bl      _objc_release
  100129f94  adrp    x8, #0x10041c000
  100129f98  nop
  100129f9c  ldr     x1, [x8, #0x418]
  100129fa0  mov     x0, x20
  100129fa4  mov     x2, x25
  100129fa8  bl      _objc_msgSend                            ; [self persist:[NSDictionary dictionaryWithObjects:&sp[0x10] forKeys:&sp[0x0] count:2]]
  100129fac  mov     x0, x25
loc_100129fb0:
  100129fb0  bl      _objc_release
  100129fb4  mov     x0, x22
  100129fb8  bl      _objc_release
  100129fbc  mov     x0, x21
  100129fc0  bl      _objc_release
loc_100129fc4:
  100129fc4  mov     x0, x19
  100129fc8  bl      _objc_release
  100129fcc  ldr     x8, [x26]                                ; x8 = ___stack_chk_guard[+0x0]
  100129fd0  ldr     x9, [sp, #0x28]
  100129fd4  sub     x8, x8, x9
  100129fd8  cbnz    x8, loc_100129ff8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100129fdc  sub     sp, x29, #0x40
  100129fe0  ldp     x26, x25, [sp], #0x10
  100129fe4  ldp     x24, x23, [sp], #0x10
  100129fe8  ldp     x22, x21, [sp], #0x10
  100129fec  ldp     x20, x19, [sp], #0x10
  100129ff0  ldp     x29, x30, [sp], #0x10
  100129ff4  ret
loc_100129ff8:
  100129ff8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100129ffc:
  100129ffc  mov     x0, x23
  10012a000  b       loc_100129fb0

; ======================================================================
; +[GAIBatchingDispatcher dispatcher]
; address 0x10012a004  size 132  kind objc
; ======================================================================
  10012a004  stp     x29, x30, [sp, #-0x10]!
  10012a008  mov     x29, sp
  10012a00c  stp     x20, x19, [sp, #-0x10]!
  10012a010  adrp    x8, #0x10041e000
  10012a014  ldr     x0, [x8, #0x5b8]                         ; class GAIDataStore
  10012a018  adrp    x8, #0x10041b000
  10012a01c  nop
  10012a020  ldr     x1, [x8, #0xe70]
  10012a024  bl      _objc_msgSend                            ; [GAIDataStore dataStore]
  10012a028  mov     x29, x29
  10012a02c  bl      _objc_retainAutoreleasedReturnValue
  10012a030  mov     x19, x0
  10012a034  cbz     x19, loc_10012a06c                       ; if ([GAIDataStore dataStore] == 0)
  10012a038  adrp    x8, #0x10041e000
  10012a03c  ldr     x0, [x8, #0x590]                         ; class GAIBatchingDispatcher
  10012a040  adrp    x8, #0x100416000
  10012a044  nop
  10012a048  ldr     x1, [x8, #0xac8]
  10012a04c  bl      _objc_msgSend                            ; [GAIBatchingDispatcher alloc]
  10012a050  adrp    x8, #0x10041b000
  10012a054  nop
  10012a058  ldr     x1, [x8, #0xe78]
  10012a05c  mov     x2, x19
  10012a060  bl      _objc_msgSend                            ; [[GAIBatchingDispatcher alloc] initWithDataStore:[GAIDataStore dataStore]]
  10012a064  mov     x20, x0
  10012a068  b       loc_10012a070
loc_10012a06c:
  10012a06c  mov     x20, #0
loc_10012a070:
  10012a070  mov     x0, x19
  10012a074  bl      _objc_release
  10012a078  mov     x0, x20
  10012a07c  ldp     x20, x19, [sp], #0x10
  10012a080  ldp     x29, x30, [sp], #0x10
  10012a084  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[GAIBatchingDispatcher thread]
; address 0x10012a088  size 32  kind objc
; ======================================================================
  10012a088  adrp    x8, #0x10041d000
  10012a08c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10012a090  adrp    x8, #0x100416000
  10012a094  nop
  10012a098  ldr     x1, [x8, #0xda0]
  10012a09c  adrp    x2, #0x1003c4000
  10012a0a0  add     x2, x2, #0xb90                           ; @"thread"
  10012a0a4  b       _objc_msgSend                            ; [GAI valueForKey:@"thread"]

; ======================================================================
; -[GAIBatchingDispatcher rescheduleIfNeeded:withObject:andWait:]
; address 0x10012a0a8  size 228  kind objc
; ======================================================================
  10012a0a8  stp     x29, x30, [sp, #-0x10]!
  10012a0ac  mov     x29, sp
  10012a0b0  stp     x20, x19, [sp, #-0x10]!
  10012a0b4  stp     x22, x21, [sp, #-0x10]!
  10012a0b8  stp     x24, x23, [sp, #-0x10]!
  10012a0bc  mov     x20, x4
  10012a0c0  mov     x21, x2
  10012a0c4  mov     x22, x0
  10012a0c8  mov     x0, x3
  10012a0cc  bl      _objc_retain
  10012a0d0  mov     x19, x0
  10012a0d4  adrp    x8, #0x100417000
  10012a0d8  nop
  10012a0dc  ldr     x1, [x8, #0x2e0]
  10012a0e0  mov     x0, x22
  10012a0e4  bl      _objc_msgSend                            ; [self class]
  10012a0e8  adrp    x8, #0x10041b000
  10012a0ec  nop
  10012a0f0  ldr     x1, [x8, #0xe50]
  10012a0f4  bl      _objc_msgSend                            ; [[self class] thread]
  10012a0f8  mov     x29, x29
  10012a0fc  bl      _objc_retainAutoreleasedReturnValue
  10012a100  mov     x23, x0
  10012a104  adrp    x8, #0x10041e000
  10012a108  ldr     x0, [x8, #0x108]                         ; class NSThread
  10012a10c  adrp    x8, #0x10041b000
  10012a110  nop
  10012a114  ldr     x1, [x8, #0xf60]
  10012a118  bl      _objc_msgSend                            ; [NSThread currentThread]
  10012a11c  mov     x29, x29
  10012a120  bl      _objc_retainAutoreleasedReturnValue
  10012a124  mov     x24, x0
  10012a128  bl      _objc_release
  10012a12c  cmp     x23, x24
  10012a130  b.eq    loc_10012a160                            ; if ([[self class] thread] == [NSThread currentThread])
  10012a134  adrp    x8, #0x10041b000
  10012a138  nop
  10012a13c  ldr     x1, [x8, #0xe58]
  10012a140  mov     x0, x22
  10012a144  mov     x2, x21
  10012a148  mov     x3, x23
  10012a14c  mov     x4, x19
  10012a150  mov     x5, x20
  10012a154  bl      _objc_msgSend                            ; [self performSelector:arg1 onThread:[[self class] thread] withObject:arg2 waitUntilDone:arg3]
  10012a158  mov     w20, #1
  10012a15c  b       loc_10012a164
loc_10012a160:
  10012a160  mov     w20, #0
loc_10012a164:
  10012a164  mov     x0, x23
  10012a168  bl      _objc_release
  10012a16c  mov     x0, x19
  10012a170  bl      _objc_release
  10012a174  mov     x0, x20
  10012a178  ldp     x24, x23, [sp], #0x10
  10012a17c  ldp     x22, x21, [sp], #0x10
  10012a180  ldp     x20, x19, [sp], #0x10
  10012a184  ldp     x29, x30, [sp], #0x10
  10012a188  ret

; ======================================================================
; -[GAIBatchingDispatcher initialDispatch]
; address 0x10012a18c  size 112  kind objc
; ======================================================================
  10012a18c  stp     x29, x30, [sp, #-0x10]!
  10012a190  mov     x29, sp
  10012a194  stp     x20, x19, [sp, #-0x10]!
  10012a198  mov     x8, x1
  10012a19c  mov     x19, x0
  10012a1a0  adrp    x9, #0x10041c000
  10012a1a4  nop
  10012a1a8  ldr     x1, [x9, #0x2f8]
  10012a1ac  mov     x3, #0
  10012a1b0  mov     w4, #0
  10012a1b4  mov     x2, x8
  10012a1b8  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:0 andWait:0]
  10012a1bc  tbz     w0, #0, loc_10012a1cc                    ; if (!([self rescheduleIfNeeded:_cmd withObject:0 andWait:0] & 1))
  10012a1c0  ldp     x20, x19, [sp], #0x10
  10012a1c4  ldp     x29, x30, [sp], #0x10
  10012a1c8  ret
loc_10012a1cc:
  10012a1cc  mov     x3, #0
  10012a1d0  adrp    x8, #0x10041b000
  10012a1d4  nop
  10012a1d8  ldr     x2, [x8, #0xa70]
  10012a1dc  adrp    x8, #0x100418000
  10012a1e0  nop
  10012a1e4  ldr     x1, [x8, #0x188]
  10012a1e8  fmov    d0, #1.00000000
  10012a1ec  mov     x0, x19
  10012a1f0  ldp     x20, x19, [sp], #0x10
  10012a1f4  ldp     x29, x30, [sp], #0x10
  10012a1f8  b       _objc_msgSend                            ; [self performSelector:@selector(timerFired) withObject:0 afterDelay:1]

; ======================================================================
; -[GAIBatchingDispatcher cancelDispatch]
; address 0x10012a1fc  size 152  kind objc
; ======================================================================
  10012a1fc  stp     x29, x30, [sp, #-0x10]!
  10012a200  mov     x29, sp
  10012a204  stp     x20, x19, [sp, #-0x10]!
  10012a208  mov     x8, x1
  10012a20c  mov     x19, x0
  10012a210  adrp    x9, #0x10041c000
  10012a214  nop
  10012a218  ldr     x1, [x9, #0x2f8]
  10012a21c  mov     w4, #1
  10012a220  mov     x2, x8
  10012a224  mov     x3, #0
  10012a228  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:0 andWait:1]
  10012a22c  tbz     w0, #0, loc_10012a23c                    ; if (!([self rescheduleIfNeeded:_cmd withObject:0 andWait:1] & 1))
  10012a230  ldp     x20, x19, [sp], #0x10
  10012a234  ldp     x29, x30, [sp], #0x10
  10012a238  ret
loc_10012a23c:
  10012a23c  adrp    x8, #0x100417000
  10012a240  nop
  10012a244  ldr     x1, [x8, #0x2e0]
  10012a248  mov     x0, x19
  10012a24c  bl      _objc_msgSend                            ; [self class]
  10012a250  adrp    x8, #0x10041b000
  10012a254  nop
  10012a258  ldr     x3, [x8, #0xa70]
  10012a25c  adrp    x8, #0x100419000
  10012a260  nop
  10012a264  ldr     x1, [x8, #0xc10]
  10012a268  mov     x4, #0
  10012a26c  mov     x2, x19
  10012a270  bl      _objc_msgSend                            ; [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(timerFired) object:0]
  10012a274  mov     x2, #0
  10012a278  adrp    x8, #0x10041b000
  10012a27c  nop
  10012a280  ldr     x1, [x8, #0xad0]
  10012a284  mov     x0, x19
  10012a288  ldp     x20, x19, [sp], #0x10
  10012a28c  ldp     x29, x30, [sp], #0x10
  10012a290  b       _objc_msgSend                            ; [self setTimer:0]

; ======================================================================
; -[GAIBatchingDispatcher canDispatch]
; address 0x10012a294  size 76  kind objc
; ======================================================================
  10012a294  stp     x29, x30, [sp, #-0x10]!
  10012a298  mov     x29, sp
  10012a29c  stp     x20, x19, [sp, #-0x10]!
  10012a2a0  mov     x19, x0
  10012a2a4  adrp    x8, #0x10041c000
  10012a2a8  nop
  10012a2ac  ldr     x1, [x8, #0x420]
  10012a2b0  bl      _objc_msgSend                            ; [self hostReachable]
  10012a2b4  cbz     w0, loc_10012a2d0                        ; if ([self hostReachable] == 0)
  10012a2b8  adrp    x8, #0x10041b000
  10012a2bc  nop
  10012a2c0  ldr     x1, [x8, #0xaa8]
  10012a2c4  mov     x0, x19
  10012a2c8  bl      _objc_msgSend                            ; [self hasHits]
  10012a2cc  b       loc_10012a2d4
loc_10012a2d0:
  10012a2d0  mov     w0, #0
loc_10012a2d4:
  10012a2d4  ldp     x20, x19, [sp], #0x10
  10012a2d8  ldp     x29, x30, [sp], #0x10
  10012a2dc  ret

; ======================================================================
; -[GAIBatchingDispatcher canScheduleDispatch]
; address 0x10012a2e0  size 80  kind objc
; ======================================================================
  10012a2e0  stp     x29, x30, [sp, #-0x10]!
  10012a2e4  mov     x29, sp
  10012a2e8  stp     x20, x19, [sp, #-0x10]!
  10012a2ec  mov     x19, x0
  10012a2f0  adrp    x8, #0x10041b000
  10012a2f4  nop
  10012a2f8  ldr     x1, [x8, #0xa80]
  10012a2fc  bl      _objc_msgSend                            ; [self dispatchInterval]
  10012a300  fcmp    d0, #0.0
  10012a304  b.le    loc_10012a320                            ; if ([self dispatchInterval] <= (or unordered) 0.0)
  10012a308  adrp    x8, #0x10041b000
  10012a30c  nop
  10012a310  ldr     x1, [x8, #0xa88]
  10012a314  mov     x0, x19
  10012a318  bl      _objc_msgSend                            ; [self canDispatch]
  10012a31c  b       loc_10012a324
loc_10012a320:
  10012a320  mov     w0, #0
loc_10012a324:
  10012a324  ldp     x20, x19, [sp], #0x10
  10012a328  ldp     x29, x30, [sp], #0x10
  10012a32c  ret

; ======================================================================
; -[GAIBatchingDispatcher timerFired]
; address 0x10012a330  size 76  kind objc
; ======================================================================
  10012a330  stp     x29, x30, [sp, #-0x10]!
  10012a334  mov     x29, sp
  10012a338  stp     x20, x19, [sp, #-0x10]!
  10012a33c  mov     x19, x0
  10012a340  adrp    x8, #0x10041b000
  10012a344  nop
  10012a348  ldr     x1, [x8, #0xab0]
  10012a34c  bl      _objc_msgSend                            ; [self canScheduleDispatch]
  10012a350  cbz     w0, loc_10012a370                        ; if ([self canScheduleDispatch] == 0)
  10012a354  adrp    x8, #0x10041b000
  10012a358  nop
  10012a35c  ldr     x1, [x8, #0xac0]
  10012a360  mov     x0, x19
  10012a364  ldp     x20, x19, [sp], #0x10
  10012a368  ldp     x29, x30, [sp], #0x10
  10012a36c  b       _objc_msgSend                            ; [self dispatch]
loc_10012a370:
  10012a370  ldp     x20, x19, [sp], #0x10
  10012a374  ldp     x29, x30, [sp], #0x10
  10012a378  ret

; ======================================================================
; -[GAIBatchingDispatcher rescheduleDispatch]
; address 0x10012a37c  size 232  kind objc
; ======================================================================
  10012a37c  stp     x29, x30, [sp, #-0x10]!
  10012a380  mov     x29, sp
  10012a384  stp     x20, x19, [sp, #-0x10]!
  10012a388  mov     x8, x1
  10012a38c  mov     x19, x0
  10012a390  adrp    x9, #0x10041c000
  10012a394  nop
  10012a398  ldr     x1, [x9, #0x2f8]
  10012a39c  mov     x3, #0
  10012a3a0  mov     w4, #0
  10012a3a4  mov     x2, x8
  10012a3a8  bl      _objc_msgSend                            ; [self rescheduleIfNeeded:_cmd withObject:0 andWait:0]
  10012a3ac  tbnz    w0, #0, loc_10012a458                    ; if (([self rescheduleIfNeeded:_cmd withObject:0 andWait:0] & 1))
  10012a3b0  adrp    x8, #0x10041c000
  10012a3b4  nop
  10012a3b8  ldr     x1, [x8, #0x318]
  10012a3bc  mov     x0, x19
  10012a3c0  bl      _objc_msgSend                            ; [self cancelDispatch]
  10012a3c4  adrp    x8, #0x10041b000
  10012a3c8  nop
  10012a3cc  ldr     x1, [x8, #0xab0]
  10012a3d0  mov     x0, x19
  10012a3d4  bl      _objc_msgSend                            ; [self canScheduleDispatch]
  10012a3d8  cbz     w0, loc_10012a458                        ; if ([self canScheduleDispatch] == 0)
  10012a3dc  adrp    x8, #0x10041e000
  10012a3e0  ldr     x20, [x8, #0x30]                         ; class NSTimer
  10012a3e4  adrp    x8, #0x10041b000
  10012a3e8  nop
  10012a3ec  ldr     x1, [x8, #0xa80]
  10012a3f0  mov     x0, x19
  10012a3f4  bl      _objc_msgSend                            ; [self dispatchInterval]
  10012a3f8  adrp    x8, #0x10041b000
  10012a3fc  nop
  10012a400  ldr     x3, [x8, #0xa70]
  10012a404  adrp    x8, #0x100417000
  10012a408  nop
  10012a40c  ldr     x1, [x8, #0x890]
  10012a410  mov     w5, #1
  10012a414  mov     x0, x20
  10012a418  mov     x2, x19
  10012a41c  mov     x4, #0
  10012a420  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:[self dispatchInterval] target:self selector:@selector(timerFired) userInfo:0 repeats:1]
  10012a424  mov     x29, x29
  10012a428  bl      _objc_retainAutoreleasedReturnValue
  10012a42c  mov     x20, x0
  10012a430  adrp    x8, #0x10041b000
  10012a434  nop
  10012a438  ldr     x1, [x8, #0xad0]
  10012a43c  mov     x0, x19
  10012a440  mov     x2, x20
  10012a444  bl      _objc_msgSend                            ; [self setTimer:[NSTimer scheduledTimerWithTimeInterval:[self dispatchInterval] target:self selector:@selector(timerFired) userInfo:0 repeats:1]]
  10012a448  mov     x0, x20
  10012a44c  ldp     x20, x19, [sp], #0x10
  10012a450  ldp     x29, x30, [sp], #0x10
  10012a454  b       _objc_release
loc_10012a458:
  10012a458  ldp     x20, x19, [sp], #0x10
  10012a45c  ldp     x29, x30, [sp], #0x10
  10012a460  ret

; ======================================================================
; -[GAIBatchingDispatcher optOut]
; address 0x10012a464  size 16  kind objc
; ======================================================================
  10012a464  adrp    x8, #0x100420000
  10012a468  ldrsw   x8, [x8, #0x8c4]                         ; ivar offset GAIBatchingDispatcher._optOut (+0x8)
  10012a46c  ldrb    w0, [x0, x8]                             ; w0 = self->_optOut
  10012a470  ret

; ======================================================================
; -[GAIBatchingDispatcher batchingStrategy]
; address 0x10012a474  size 16  kind objc
; ======================================================================
  10012a474  adrp    x8, #0x100420000
  10012a478  ldrsw   x8, [x8, #0x8f0]                         ; ivar offset GAIBatchingDispatcher._batchingStrategy (+0x10)
  10012a47c  ldr     x0, [x0, x8]                             ; x0 = self->_batchingStrategy
  10012a480  ret

; ======================================================================
; -[GAIBatchingDispatcher setBatchingStrategy:]
; address 0x10012a484  size 16  kind objc
; ======================================================================
  10012a484  adrp    x8, #0x100420000
  10012a488  ldrsw   x8, [x8, #0x8f0]                         ; ivar offset GAIBatchingDispatcher._batchingStrategy (+0x10)
  10012a48c  str     x2, [x0, x8]                             ; self->_batchingStrategy = arg1
  10012a490  ret

; ======================================================================
; -[GAIBatchingDispatcher compressionStrategy]
; address 0x10012a494  size 16  kind objc
; ======================================================================
  10012a494  adrp    x8, #0x100420000
  10012a498  ldrsw   x8, [x8, #0x8f4]                         ; ivar offset GAIBatchingDispatcher._compressionStrategy (+0x18)
  10012a49c  ldr     x0, [x0, x8]                             ; x0 = self->_compressionStrategy
  10012a4a0  ret

; ======================================================================
; -[GAIBatchingDispatcher setCompressionStrategy:]
; address 0x10012a4a4  size 16  kind objc
; ======================================================================
  10012a4a4  adrp    x8, #0x100420000
  10012a4a8  ldrsw   x8, [x8, #0x8f4]                         ; ivar offset GAIBatchingDispatcher._compressionStrategy (+0x18)
  10012a4ac  str     x2, [x0, x8]                             ; self->_compressionStrategy = arg1
  10012a4b0  ret

; ======================================================================
; -[GAIBatchingDispatcher dispatchInterval]
; address 0x10012a4b4  size 16  kind objc
; ======================================================================
  10012a4b4  adrp    x8, #0x100420000
  10012a4b8  ldrsw   x8, [x8, #0x8b8]                         ; ivar offset GAIBatchingDispatcher._dispatchInterval (+0x20)
  10012a4bc  ldr     d0, [x0, x8]                             ; d0 = self->_dispatchInterval
  10012a4c0  ret

; ======================================================================
; -[GAIBatchingDispatcher dataStore]
; address 0x10012a4c4  size 16  kind objc
; ======================================================================
  10012a4c4  adrp    x8, #0x100420000
  10012a4c8  ldrsw   x8, [x8, #0x8cc]                         ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  10012a4cc  ldr     x0, [x0, x8]                             ; x0 = self->_dataStore
  10012a4d0  ret

; ======================================================================
; -[GAIBatchingDispatcher setDataStore:]
; address 0x10012a4d4  size 56  kind objc
; ======================================================================
  10012a4d4  stp     x29, x30, [sp, #-0x10]!
  10012a4d8  mov     x29, sp
  10012a4dc  stp     x20, x19, [sp, #-0x10]!
  10012a4e0  mov     x19, x0
  10012a4e4  adrp    x8, #0x100420000
  10012a4e8  ldrsw   x20, [x8, #0x8cc]                        ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  10012a4ec  mov     x0, x2
  10012a4f0  bl      _objc_retain
  10012a4f4  ldr     x8, [x19, x20]                           ; x8 = self->_dataStore
  10012a4f8  str     x0, [x19, x20]                           ; self->_dataStore = arg1
  10012a4fc  mov     x0, x8
  10012a500  ldp     x20, x19, [sp], #0x10
  10012a504  ldp     x29, x30, [sp], #0x10
  10012a508  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher requestBuilder]
; address 0x10012a50c  size 16  kind objc
; ======================================================================
  10012a50c  adrp    x8, #0x100420000
  10012a510  ldrsw   x8, [x8, #0x8d8]                         ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  10012a514  ldr     x0, [x0, x8]                             ; x0 = self->_requestBuilder
  10012a518  ret

; ======================================================================
; -[GAIBatchingDispatcher urlConnectionClass]
; address 0x10012a51c  size 16  kind objc
; ======================================================================
  10012a51c  adrp    x8, #0x100420000
  10012a520  ldrsw   x8, [x8, #0x8f8]                         ; ivar offset GAIBatchingDispatcher._urlConnectionClass (+0x38)
  10012a524  ldr     x0, [x0, x8]                             ; x0 = self->_urlConnectionClass
  10012a528  ret

; ======================================================================
; -[GAIBatchingDispatcher setUrlConnectionClass:]
; address 0x10012a52c  size 20  kind objc
; ======================================================================
  10012a52c  adrp    x8, #0x100420000
  10012a530  ldrsw   x8, [x8, #0x8f8]                         ; ivar offset GAIBatchingDispatcher._urlConnectionClass (+0x38)
  10012a534  add     x0, x0, x8
  10012a538  mov     x1, x2
  10012a53c  b       _objc_storeStrong

; ======================================================================
; -[GAIBatchingDispatcher maxHitsPerDispatch]
; address 0x10012a540  size 16  kind objc
; ======================================================================
  10012a540  adrp    x8, #0x100420000
  10012a544  ldrsw   x8, [x8, #0x8dc]                         ; ivar offset GAIBatchingDispatcher._maxHitsPerDispatch (+0x40)
  10012a548  ldr     x0, [x0, x8]                             ; x0 = self->_maxHitsPerDispatch
  10012a54c  ret

; ======================================================================
; -[GAIBatchingDispatcher setMaxHitsPerDispatch:]
; address 0x10012a550  size 16  kind objc
; ======================================================================
  10012a550  adrp    x8, #0x100420000
  10012a554  ldrsw   x8, [x8, #0x8dc]                         ; ivar offset GAIBatchingDispatcher._maxHitsPerDispatch (+0x40)
  10012a558  str     x2, [x0, x8]                             ; self->_maxHitsPerDispatch = arg1
  10012a55c  ret

; ======================================================================
; -[GAIBatchingDispatcher maxHitAge]
; address 0x10012a560  size 16  kind objc
; ======================================================================
  10012a560  adrp    x8, #0x100420000
  10012a564  ldrsw   x8, [x8, #0x8e0]                         ; ivar offset GAIBatchingDispatcher._maxHitAge (+0x48)
  10012a568  ldr     d0, [x0, x8]                             ; d0 = self->_maxHitAge
  10012a56c  ret

; ======================================================================
; -[GAIBatchingDispatcher setMaxHitAge:]
; address 0x10012a570  size 16  kind objc
; ======================================================================
  10012a570  adrp    x8, #0x100420000
  10012a574  ldrsw   x8, [x8, #0x8e0]                         ; ivar offset GAIBatchingDispatcher._maxHitAge (+0x48)
  10012a578  str     d0, [x0, x8]                             ; self->_maxHitAge = arg1
  10012a57c  ret

; ======================================================================
; -[GAIBatchingDispatcher maxBodySize]
; address 0x10012a580  size 16  kind objc
; ======================================================================
  10012a580  adrp    x8, #0x100420000
  10012a584  ldrsw   x8, [x8, #0x8e4]                         ; ivar offset GAIBatchingDispatcher._maxBodySize (+0x50)
  10012a588  ldr     x0, [x0, x8]                             ; x0 = self->_maxBodySize
  10012a58c  ret

; ======================================================================
; -[GAIBatchingDispatcher setMaxBodySize:]
; address 0x10012a590  size 16  kind objc
; ======================================================================
  10012a590  adrp    x8, #0x100420000
  10012a594  ldrsw   x8, [x8, #0x8e4]                         ; ivar offset GAIBatchingDispatcher._maxBodySize (+0x50)
  10012a598  str     x2, [x0, x8]                             ; self->_maxBodySize = arg1
  10012a59c  ret

; ======================================================================
; -[GAIBatchingDispatcher maxHitSize]
; address 0x10012a5a0  size 16  kind objc
; ======================================================================
  10012a5a0  adrp    x8, #0x100420000
  10012a5a4  ldrsw   x8, [x8, #0x8e8]                         ; ivar offset GAIBatchingDispatcher._maxHitSize (+0x58)
  10012a5a8  ldr     x0, [x0, x8]                             ; x0 = self->_maxHitSize
  10012a5ac  ret

; ======================================================================
; -[GAIBatchingDispatcher setMaxHitSize:]
; address 0x10012a5b0  size 16  kind objc
; ======================================================================
  10012a5b0  adrp    x8, #0x100420000
  10012a5b4  ldrsw   x8, [x8, #0x8e8]                         ; ivar offset GAIBatchingDispatcher._maxHitSize (+0x58)
  10012a5b8  str     x2, [x0, x8]                             ; self->_maxHitSize = arg1
  10012a5bc  ret

; ======================================================================
; -[GAIBatchingDispatcher reachability]
; address 0x10012a5c0  size 16  kind objc
; ======================================================================
  10012a5c0  adrp    x8, #0x100420000
  10012a5c4  ldrsw   x8, [x8, #0x8ec]                         ; ivar offset GAIBatchingDispatcher._reachability (+0x60)
  10012a5c8  ldr     x0, [x0, x8]                             ; x0 = self->_reachability
  10012a5cc  ret

; ======================================================================
; -[GAIBatchingDispatcher setReachability:]
; address 0x10012a5d0  size 56  kind objc
; ======================================================================
  10012a5d0  stp     x29, x30, [sp, #-0x10]!
  10012a5d4  mov     x29, sp
  10012a5d8  stp     x20, x19, [sp, #-0x10]!
  10012a5dc  mov     x19, x0
  10012a5e0  adrp    x8, #0x100420000
  10012a5e4  ldrsw   x20, [x8, #0x8ec]                        ; ivar offset GAIBatchingDispatcher._reachability (+0x60)
  10012a5e8  mov     x0, x2
  10012a5ec  bl      _objc_retain
  10012a5f0  ldr     x8, [x19, x20]                           ; x8 = self->_reachability
  10012a5f4  str     x0, [x19, x20]                           ; self->_reachability = arg1
  10012a5f8  mov     x0, x8
  10012a5fc  ldp     x20, x19, [sp], #0x10
  10012a600  ldp     x29, x30, [sp], #0x10
  10012a604  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher hasHits]
; address 0x10012a608  size 16  kind objc
; ======================================================================
  10012a608  adrp    x8, #0x100420000
  10012a60c  ldrsw   x8, [x8, #0x8c0]                         ; ivar offset GAIBatchingDispatcher._hasHits (+0x9)
  10012a610  ldrb    w0, [x0, x8]                             ; w0 = self->_hasHits
  10012a614  ret

; ======================================================================
; -[GAIBatchingDispatcher hostReachable]
; address 0x10012a618  size 16  kind objc
; ======================================================================
  10012a618  adrp    x8, #0x100420000
  10012a61c  ldrsw   x8, [x8, #0x8bc]                         ; ivar offset GAIBatchingDispatcher._hostReachable (+0xa)
  10012a620  ldrb    w0, [x0, x8]                             ; w0 = self->_hostReachable
  10012a624  ret

; ======================================================================
; -[GAIBatchingDispatcher httpURL]
; address 0x10012a628  size 16  kind objc
; ======================================================================
  10012a628  adrp    x8, #0x100420000
  10012a62c  ldrsw   x8, [x8, #0x8d4]                         ; ivar offset GAIBatchingDispatcher._httpURL (+0x68)
  10012a630  ldr     x0, [x0, x8]                             ; x0 = self->_httpURL
  10012a634  ret

; ======================================================================
; -[GAIBatchingDispatcher setHttpURL:]
; address 0x10012a638  size 56  kind objc
; ======================================================================
  10012a638  stp     x29, x30, [sp, #-0x10]!
  10012a63c  mov     x29, sp
  10012a640  stp     x20, x19, [sp, #-0x10]!
  10012a644  mov     x19, x0
  10012a648  adrp    x8, #0x100420000
  10012a64c  ldrsw   x20, [x8, #0x8d4]                        ; ivar offset GAIBatchingDispatcher._httpURL (+0x68)
  10012a650  mov     x0, x2
  10012a654  bl      _objc_retain
  10012a658  ldr     x8, [x19, x20]                           ; x8 = self->_httpURL
  10012a65c  str     x0, [x19, x20]                           ; self->_httpURL = arg1
  10012a660  mov     x0, x8
  10012a664  ldp     x20, x19, [sp], #0x10
  10012a668  ldp     x29, x30, [sp], #0x10
  10012a66c  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher httpsURL]
; address 0x10012a670  size 16  kind objc
; ======================================================================
  10012a670  adrp    x8, #0x100420000
  10012a674  ldrsw   x8, [x8, #0x8d0]                         ; ivar offset GAIBatchingDispatcher._httpsURL (+0x70)
  10012a678  ldr     x0, [x0, x8]                             ; x0 = self->_httpsURL
  10012a67c  ret

; ======================================================================
; -[GAIBatchingDispatcher setHttpsURL:]
; address 0x10012a680  size 56  kind objc
; ======================================================================
  10012a680  stp     x29, x30, [sp, #-0x10]!
  10012a684  mov     x29, sp
  10012a688  stp     x20, x19, [sp, #-0x10]!
  10012a68c  mov     x19, x0
  10012a690  adrp    x8, #0x100420000
  10012a694  ldrsw   x20, [x8, #0x8d0]                        ; ivar offset GAIBatchingDispatcher._httpsURL (+0x70)
  10012a698  mov     x0, x2
  10012a69c  bl      _objc_retain
  10012a6a0  ldr     x8, [x19, x20]                           ; x8 = self->_httpsURL
  10012a6a4  str     x0, [x19, x20]                           ; self->_httpsURL = arg1
  10012a6a8  mov     x0, x8
  10012a6ac  ldp     x20, x19, [sp], #0x10
  10012a6b0  ldp     x29, x30, [sp], #0x10
  10012a6b4  b       _objc_release

; ======================================================================
; -[GAIBatchingDispatcher connection]
; address 0x10012a6b8  size 16  kind objc
; ======================================================================
  10012a6b8  adrp    x8, #0x100420000
  10012a6bc  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  10012a6c0  ldr     x0, [x0, x8]                             ; x0 = self->_connection
  10012a6c4  ret

; ======================================================================
; -[GAIBatchingDispatcher setConnection:]
; address 0x10012a6c8  size 20  kind objc
; ======================================================================
  10012a6c8  adrp    x8, #0x100420000
  10012a6cc  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  10012a6d0  add     x0, x0, x8
  10012a6d4  mov     x1, x2
  10012a6d8  b       _objc_storeStrong

; ======================================================================
; -[GAIBatchingDispatcher timer]
; address 0x10012a6dc  size 16  kind objc
; ======================================================================
  10012a6dc  adrp    x8, #0x100420000
  10012a6e0  ldrsw   x8, [x8, #0x8b4]                         ; ivar offset GAIBatchingDispatcher._timer (+0x80)
  10012a6e4  ldr     x0, [x0, x8]                             ; x0 = self->_timer
  10012a6e8  ret

; ======================================================================
; -[GAIBatchingDispatcher .cxx_destruct]
; address 0x10012a6ec  size 184  kind objc
; ======================================================================
  10012a6ec  stp     x29, x30, [sp, #-0x10]!
  10012a6f0  mov     x29, sp
  10012a6f4  stp     x20, x19, [sp, #-0x10]!
  10012a6f8  mov     x19, x0
  10012a6fc  adrp    x8, #0x100420000
  10012a700  ldrsw   x8, [x8, #0x8b4]                         ; ivar offset GAIBatchingDispatcher._timer (+0x80)
  10012a704  add     x0, x19, x8
  10012a708  mov     x1, #0
  10012a70c  bl      _objc_storeStrong
  10012a710  adrp    x8, #0x100420000
  10012a714  ldrsw   x8, [x8, #0x8c8]                         ; ivar offset GAIBatchingDispatcher._connection (+0x78)
  10012a718  add     x0, x19, x8
  10012a71c  mov     x1, #0
  10012a720  bl      _objc_storeStrong
  10012a724  adrp    x8, #0x100420000
  10012a728  ldrsw   x8, [x8, #0x8d0]                         ; ivar offset GAIBatchingDispatcher._httpsURL (+0x70)
  10012a72c  add     x0, x19, x8
  10012a730  mov     x1, #0
  10012a734  bl      _objc_storeStrong
  10012a738  adrp    x8, #0x100420000
  10012a73c  ldrsw   x8, [x8, #0x8d4]                         ; ivar offset GAIBatchingDispatcher._httpURL (+0x68)
  10012a740  add     x0, x19, x8
  10012a744  mov     x1, #0
  10012a748  bl      _objc_storeStrong
  10012a74c  adrp    x8, #0x100420000
  10012a750  ldrsw   x8, [x8, #0x8ec]                         ; ivar offset GAIBatchingDispatcher._reachability (+0x60)
  10012a754  add     x0, x19, x8
  10012a758  mov     x1, #0
  10012a75c  bl      _objc_storeStrong
  10012a760  adrp    x8, #0x100420000
  10012a764  ldrsw   x8, [x8, #0x8f8]                         ; ivar offset GAIBatchingDispatcher._urlConnectionClass (+0x38)
  10012a768  add     x0, x19, x8
  10012a76c  mov     x1, #0
  10012a770  bl      _objc_storeStrong
  10012a774  adrp    x8, #0x100420000
  10012a778  ldrsw   x8, [x8, #0x8d8]                         ; ivar offset GAIBatchingDispatcher._requestBuilder (+0x30)
  10012a77c  add     x0, x19, x8
  10012a780  mov     x1, #0
  10012a784  bl      _objc_storeStrong
  10012a788  mov     x1, #0
  10012a78c  adrp    x8, #0x100420000
  10012a790  ldrsw   x8, [x8, #0x8cc]                         ; ivar offset GAIBatchingDispatcher._dataStore (+0x28)
  10012a794  add     x0, x19, x8
  10012a798  ldp     x20, x19, [sp], #0x10
  10012a79c  ldp     x29, x30, [sp], #0x10
  10012a7a0  b       _objc_storeStrong
