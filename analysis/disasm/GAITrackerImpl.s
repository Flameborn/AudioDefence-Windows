// unit GAITrackerImpl — 29 functions
//   0x1001172a4     128  -[GAITrackerImpl init]
//   0x100117324     532  -[GAITrackerImpl initWithDispatcher:name:]
//   0x100117538     208  -[GAITrackerImpl dealloc]
//   0x100117608      92  +[GAITrackerImpl trackerWithDispatcher:name:]
//   0x100117664     188  -[GAITrackerImpl shouldRateLimit]
//   0x100117720     116  -[GAITrackerImpl gai_set:value:]
//   0x100117794     168  -[GAITrackerImpl gai_get:]
//   0x10011783c     332  -[GAITrackerImpl gai_set:]
//   0x100117988     964  -[GAITrackerImpl gai_send:]
//   0x100117d4c     100  -[GAITrackerImpl get:]
//   0x100117db0     108  -[GAITrackerImpl set:value:]
//   0x100117e1c     100  -[GAITrackerImpl send:]
//   0x100117e80      16  -[GAITrackerImpl name]
//   0x100117e90      72  -[GAITrackerImpl setAllowIDFACollection:]
//   0x100117ed8      16  -[GAITrackerImpl dispatcher]
//   0x100117ee8      28  -[GAITrackerImpl setDispatcher:]
//   0x100117f04      16  -[GAITrackerImpl trackingCredits]
//   0x100117f14      16  -[GAITrackerImpl setTrackingCredits:]
//   0x100117f24      16  -[GAITrackerImpl lastTrackTime]
//   0x100117f34      16  -[GAITrackerImpl setLastTrackTime:]
//   0x100117f44      16  -[GAITrackerImpl model]
//   0x100117f54      28  -[GAITrackerImpl setModel:]
//   0x100117f70      16  -[GAITrackerImpl allowIDFACollection]
//   0x100117f80      16  -[GAITrackerImpl trackCount]
//   0x100117f90      16  -[GAITrackerImpl setTrackCount:]
//   0x100117fa0      16  -[GAITrackerImpl hitCount]
//   0x100117fb0      16  -[GAITrackerImpl setHitCount:]
//   0x100117fc0      16  -[GAITrackerImpl usageTracker]
//   0x100117fd0      28  -[GAITrackerImpl setUsageTracker:]

; ======================================================================
; -[GAITrackerImpl init]
; address 0x1001172a4  size 128  kind objc
; ======================================================================
  1001172a4  stp     x29, x30, [sp, #-0x10]!
  1001172a8  mov     x29, sp
  1001172ac  stp     x20, x19, [sp, #-0x10]!
  1001172b0  sub     sp, sp, #0x10
  1001172b4  mov     x19, x1
  1001172b8  str     x0, [sp]
  1001172bc  adrp    x8, #0x10041f000
  1001172c0  ldr     x8, [x8, #0xd0]
  1001172c4  str     x8, [sp, #8]
  1001172c8  adrp    x8, #0x100416000
  1001172cc  nop
  1001172d0  ldr     x1, [x8, #0xab8]
  1001172d4  mov     x0, sp
  1001172d8  bl      _objc_msgSendSuper2                      ; [super init]
  1001172dc  mov     x20, x0
  1001172e0  cbz     x20, loc_100117310                       ; if (self == 0)
  1001172e4  adrp    x8, #0x10041b000
  1001172e8  nop
  1001172ec  ldr     x1, [x8, #0xd68]
  1001172f0  mov     x0, x20
  1001172f4  mov     x2, x19
  1001172f8  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  1001172fc  adrp    x8, #0x10041b000
  100117300  nop
  100117304  ldr     x1, [x8, #0xd70]
  100117308  mov     x0, x20
  10011730c  bl      _objc_msgSend                            ; [self release]
loc_100117310:
  100117310  mov     x0, #0
  100117314  sub     sp, x29, #0x10
  100117318  ldp     x20, x19, [sp], #0x10
  10011731c  ldp     x29, x30, [sp], #0x10
  100117320  ret

; ======================================================================
; -[GAITrackerImpl initWithDispatcher:name:]
; address 0x100117324  size 532  kind objc
; ======================================================================
  100117324  stp     x29, x30, [sp, #-0x10]!
  100117328  mov     x29, sp
  10011732c  stp     x20, x19, [sp, #-0x10]!
  100117330  stp     x22, x21, [sp, #-0x10]!
  100117334  stp     x24, x23, [sp, #-0x10]!
  100117338  sub     sp, sp, #0x40
  10011733c  mov     x21, x3
  100117340  mov     x20, x2
  100117344  mov     x19, x0
  100117348  cbz     x20, loc_100117464                       ; if (arg1 == 0)
  10011734c  str     x19, [sp, #0x30]
  100117350  adrp    x8, #0x10041f000
  100117354  ldr     x8, [x8, #0xd0]
  100117358  str     x8, [sp, #0x38]
  10011735c  adrp    x8, #0x100416000
  100117360  nop
  100117364  ldr     x22, [x8, #0xab8]
  100117368  add     x0, sp, #0x30
  10011736c  mov     x1, x22
  100117370  bl      _objc_msgSendSuper2                      ; [super init]
  100117374  mov     x19, x0
  100117378  cbz     x19, loc_100117518                       ; if (self == 0)
  10011737c  adrp    x8, #0x10041e000
  100117380  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100117384  adrp    x8, #0x100416000
  100117388  nop
  10011738c  ldr     x23, [x8, #0xac8]
  100117390  mov     x1, x23
  100117394  bl      _objc_msgSend                            ; [GAIUsageTracker alloc]
  100117398  mov     x1, x22
  10011739c  bl      _objc_msgSend                            ; [[GAIUsageTracker alloc] init]
  1001173a0  adrp    x8, #0x100420000
  1001173a4  ldrsw   x8, [x8, #0x808]                         ; ivar offset GAITrackerImpl._usageTracker (+0x48)
  1001173a8  str     x0, [x19, x8]                            ; self->_usageTracker = [[GAIUsageTracker alloc] init]
  1001173ac  adrp    x8, #0x10041b000
  1001173b0  nop
  1001173b4  ldr     x1, [x8, #0xdb8]
  1001173b8  mov     x0, x20
  1001173bc  bl      _objc_msgSend                            ; [arg1 retain]
  1001173c0  adrp    x8, #0x100420000
  1001173c4  ldrsw   x8, [x8, #0x80c]                         ; ivar offset GAITrackerImpl.dispatcher_ (+0x10)
  1001173c8  str     x0, [x19, x8]                            ; self->dispatcher_ = [arg1 retain]
  1001173cc  adrp    x8, #0x100419000
  1001173d0  nop
  1001173d4  ldr     x1, [x8, #0xc08]
  1001173d8  mov     x0, x21
  1001173dc  bl      _objc_msgSend                            ; [arg2 copy]
  1001173e0  adrp    x8, #0x100420000
  1001173e4  ldrsw   x8, [x8, #0x810]                         ; ivar offset GAITrackerImpl.name_ (+0x28)
  1001173e8  str     x0, [x19, x8]                            ; self->name_ = [arg2 copy]
  1001173ec  adrp    x8, #0x10041e000
  1001173f0  ldr     x0, [x8, #0x5c0]                         ; class GAITrackerModel
  1001173f4  mov     x1, x23
  1001173f8  bl      _objc_msgSend                            ; [GAITrackerModel alloc]
  1001173fc  mov     x21, x0
  100117400  adrp    x8, #0x10041b000
  100117404  nop
  100117408  ldr     x1, [x8, #0xe70]
  10011740c  mov     x0, x20
  100117410  bl      _objc_msgSend                            ; [arg1 dataStore]
  100117414  mov     x2, x0
  100117418  adrp    x8, #0x10041b000
  10011741c  nop
  100117420  ldr     x1, [x8, #0xe78]
  100117424  mov     x0, x21
  100117428  bl      _objc_msgSend                            ; [[GAITrackerModel alloc] initWithDataStore:[arg1 dataStore]]
  10011742c  adrp    x8, #0x100420000
  100117430  adrp    x9, #0x100420000
  100117434  adrp    x10, #0x100420000
  100117438  ldrsw   x8, [x8, #0x814]                         ; ivar offset GAITrackerImpl.model_ (+0x30)
  10011743c  ldrsw   x9, [x9, #0x818]                         ; ivar offset GAITrackerImpl.allowIDFACollection_ (+0x8)
  100117440  str     x0, [x19, x8]                            ; self->model_ = [[GAITrackerModel alloc] initWithDataStore:[arg1 dataStore]]
  100117444  strb    wzr, [x19, x9]                           ; self->allowIDFACollection_ = 0
  100117448  ldrsw   x8, [x10, #0x81c]                        ; ivar offset GAITrackerImpl.trackingCredits_ (+0x18)
  10011744c  mov     x9, #0x404e000000000000
  100117450  str     x9, [x19, x8]                            ; self->trackingCredits_ = 0x404e000000000000
  100117454  adrp    x8, #0x100420000
  100117458  ldrsw   x8, [x8, #0x820]                         ; ivar offset GAITrackerImpl.lastTrackTime_ (+0x20)
  10011745c  str     xzr, [x19, x8]                           ; self->lastTrackTime_ = 0
  100117460  b       loc_10011751c
loc_100117464:
  100117464  adrp    x8, #0x10041d000
  100117468  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10011746c  adrp    x8, #0x10041b000
  100117470  nop
  100117474  ldr     x1, [x8, #0xdc8]
  100117478  bl      _objc_msgSend                            ; [GAI sharedLogger]
  10011747c  mov     x20, x0
  100117480  adrp    x8, #0x10041d000
  100117484  ldr     x21, [x8, #0xf78]                        ; class NSString
  100117488  adrp    x8, #0x1003b7000
  10011748c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100117490  ldr     x22, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100117494  adrp    x8, #0x1003b7000
  100117498  add     x8, x8, #0xd78                           ; &d_1003b7d78
  10011749c  ldr     x23, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  1001174a0  adrp    x8, #0x10041b000
  1001174a4  nop
  1001174a8  ldr     x1, [x8, #0x580]
  1001174ac  adrp    x0, #0x1003c4000
  1001174b0  add     x0, x0, #0xa50                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  1001174b4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  1001174b8  adrp    x8, #0x100416000
  1001174bc  nop
  1001174c0  ldr     x1, [x8, #0xee8]
  1001174c4  mov     x8, #0x42
  1001174c8  adrp    x9, #0x10038f000
  1001174cc  add     x9, x9, #0xf38                           ; "-[GAITrackerImpl initWithDispatcher:name:]"
  1001174d0  stp     x0, x8, [sp, #0x18]
  1001174d4  stp     x23, x9, [sp, #8]
  1001174d8  str     x22, [sp]
  1001174dc  adrp    x2, #0x1003c4000
  1001174e0  add     x2, x2, #0xa30                           ; @"%@ %@ %s (%@:%d): initialization failed: dispatcher is required."
  1001174e4  mov     x0, x21
  1001174e8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): initialization failed: dispatcher is required.", @"GoogleAnalytics", @"3.09", "-[GAITrackerImpl initWithDispatcher:name:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 66]
  1001174ec  mov     x2, x0
  1001174f0  adrp    x8, #0x10041b000
  1001174f4  nop
  1001174f8  ldr     x1, [x8, #0xdd0]
  1001174fc  mov     x0, x20
  100117500  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): initialization failed: dispatcher is required.", @"GoogleAnalytics", @"3.09", "-[GAITrackerImpl initWithDispatcher:name:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 66]]
  100117504  adrp    x8, #0x10041b000
  100117508  nop
  10011750c  ldr     x1, [x8, #0xd70]
  100117510  mov     x0, x19
  100117514  bl      _objc_msgSend                            ; [self release]
loc_100117518:
  100117518  mov     x19, #0
loc_10011751c:
  10011751c  mov     x0, x19
  100117520  sub     sp, x29, #0x30
  100117524  ldp     x24, x23, [sp], #0x10
  100117528  ldp     x22, x21, [sp], #0x10
  10011752c  ldp     x20, x19, [sp], #0x10
  100117530  ldp     x29, x30, [sp], #0x10
  100117534  ret

; ======================================================================
; -[GAITrackerImpl dealloc]
; address 0x100117538  size 208  kind objc
; ======================================================================
  100117538  stp     x29, x30, [sp, #-0x10]!
  10011753c  mov     x29, sp
  100117540  stp     x20, x19, [sp, #-0x10]!
  100117544  sub     sp, sp, #0x10
  100117548  mov     x19, x0
  10011754c  adrp    x8, #0x10041d000
  100117550  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100117554  adrp    x8, #0x100416000
  100117558  nop
  10011755c  ldr     x1, [x8, #0xe88]
  100117560  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  100117564  adrp    x8, #0x100418000
  100117568  nop
  10011756c  ldr     x1, [x8, #0x328]
  100117570  mov     x2, x19
  100117574  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  100117578  adrp    x8, #0x100420000
  10011757c  ldrsw   x8, [x8, #0x814]                         ; ivar offset GAITrackerImpl.model_ (+0x30)
  100117580  ldr     x0, [x19, x8]                            ; x0 = self->model_
  100117584  adrp    x8, #0x10041b000
  100117588  nop
  10011758c  ldr     x20, [x8, #0xd70]
  100117590  mov     x1, x20
  100117594  bl      _objc_msgSend                            ; [self->model_ release]
  100117598  adrp    x8, #0x100420000
  10011759c  ldrsw   x8, [x8, #0x80c]                         ; ivar offset GAITrackerImpl.dispatcher_ (+0x10)
  1001175a0  ldr     x0, [x19, x8]                            ; x0 = self->dispatcher_
  1001175a4  mov     x1, x20
  1001175a8  bl      _objc_msgSend                            ; [self->dispatcher_ release]
  1001175ac  adrp    x8, #0x100420000
  1001175b0  ldrsw   x8, [x8, #0x810]                         ; ivar offset GAITrackerImpl.name_ (+0x28)
  1001175b4  ldr     x0, [x19, x8]                            ; x0 = self->name_
  1001175b8  mov     x1, x20
  1001175bc  bl      _objc_msgSend                            ; [self->name_ release]
  1001175c0  adrp    x8, #0x100420000
  1001175c4  ldrsw   x8, [x8, #0x808]                         ; ivar offset GAITrackerImpl._usageTracker (+0x48)
  1001175c8  ldr     x0, [x19, x8]                            ; x0 = self->_usageTracker
  1001175cc  mov     x1, x20
  1001175d0  bl      _objc_msgSend                            ; [self->_usageTracker release]
  1001175d4  str     x19, [sp]
  1001175d8  adrp    x8, #0x10041f000
  1001175dc  ldr     x8, [x8, #0xd0]
  1001175e0  str     x8, [sp, #8]
  1001175e4  adrp    x8, #0x100416000
  1001175e8  nop
  1001175ec  ldr     x1, [x8, #0xfc8]
  1001175f0  mov     x0, sp
  1001175f4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1001175f8  sub     sp, x29, #0x10
  1001175fc  ldp     x20, x19, [sp], #0x10
  100117600  ldp     x29, x30, [sp], #0x10
  100117604  ret

; ======================================================================
; +[GAITrackerImpl trackerWithDispatcher:name:]
; address 0x100117608  size 92  kind objc
; ======================================================================
  100117608  stp     x29, x30, [sp, #-0x10]!
  10011760c  mov     x29, sp
  100117610  stp     x20, x19, [sp, #-0x10]!
  100117614  mov     x19, x3
  100117618  mov     x20, x2
  10011761c  adrp    x8, #0x10041e000
  100117620  ldr     x0, [x8, #0x5a0]                         ; class GAITrackerImpl
  100117624  adrp    x8, #0x100416000
  100117628  nop
  10011762c  ldr     x1, [x8, #0xac8]
  100117630  bl      _objc_msgSend                            ; [GAITrackerImpl alloc]
  100117634  adrp    x8, #0x10041b000
  100117638  nop
  10011763c  ldr     x1, [x8, #0xe80]
  100117640  mov     x2, x20
  100117644  mov     x3, x19
  100117648  bl      _objc_msgSend                            ; [[GAITrackerImpl alloc] initWithDispatcher:arg1 name:arg2]
  10011764c  adrp    x8, #0x10041b000
  100117650  nop
  100117654  ldr     x1, [x8, #0xe88]
  100117658  ldp     x20, x19, [sp], #0x10
  10011765c  ldp     x29, x30, [sp], #0x10
  100117660  b       _objc_msgSend                            ; [[[GAITrackerImpl alloc] initWithDispatcher:arg1 name:arg2] autorelease]

; ======================================================================
; -[GAITrackerImpl shouldRateLimit]
; address 0x100117664  size 188  kind objc
; ======================================================================
  100117664  stp     x29, x30, [sp, #-0x10]!
  100117668  mov     x29, sp
  10011766c  stp     x20, x19, [sp, #-0x10]!
  100117670  mov     x19, x0
  100117674  adrp    x8, #0x10041e000
  100117678  ldr     x0, [x8, #0x38]                          ; class NSDate
  10011767c  adrp    x8, #0x100419000
  100117680  nop
  100117684  ldr     x1, [x8, #0xb40]
  100117688  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  10011768c  adrp    x8, #0x100420000
  100117690  ldrsw   x9, [x8, #0x820]                         ; ivar offset GAITrackerImpl.lastTrackTime_ (+0x20)
  100117694  ldr     d1, [x19, x9]                            ; d1 = self->lastTrackTime_
  100117698  nop
  10011769c  ldrsw   x8, [x8, #0x81c]                         ; ivar offset GAITrackerImpl.trackingCredits_ (+0x18)
  1001176a0  fcmp    d1, #0.0
  1001176a4  b.eq    loc_1001176e8                            ; if (self->lastTrackTime_ == 0.0)
  1001176a8  ldr     d2, [x19, x8]                            ; d2 = self->trackingCredits_
  1001176ac  adrp    x10, #0x100181000
  1001176b0  ldr     d3, [x10, #0xa08]                        ; d3 = 60.0
  1001176b4  fcmp    d2, d3
  1001176b8  b.pl    loc_1001176e8                            ; if (self->trackingCredits_ >= (or unordered) 60)
  1001176bc  fsub    d1, d0, d1
  1001176c0  fcmp    d1, #0.0
  1001176c4  b.le    loc_1001176e8                            ; if (([NSDate timeIntervalSinceReferenceDate] - self->lastTrackTime_) <= (or unordered) 0.0)
  1001176c8  fmov    d4, #0.50000000
  1001176cc  fmul    d1, d1, d4
  1001176d0  fadd    d1, d1, d2                               ; t1 = ((([NSDate timeIntervalSinceReferenceDate] - self->lastTrackTime_) * 0.5) + self->trackingCredits_)
  1001176d4  str     d1, [x19, x8]                            ; self->trackingCredits_ = t1
  1001176d8  fcmp    d1, d3
  1001176dc  b.le    loc_1001176e8                            ; if (t1 <= (or unordered) 60)
  1001176e0  mov     x10, #0x404e000000000000
  1001176e4  str     x10, [x19, x8]                           ; self->trackingCredits_ = 0x404e000000000000
loc_1001176e8:
  1001176e8  str     d0, [x19, x9]                            ; self->lastTrackTime_ = [NSDate timeIntervalSinceReferenceDate]
  1001176ec  ldr     d0, [x19, x8]                            ; d0 = self->trackingCredits_
  1001176f0  fmov    d1, #1.00000000
  1001176f4  fcmp    d0, d1
  1001176f8  b.ge    loc_100117704                            ; if (self->trackingCredits_ >= 1)
  1001176fc  mov     w0, #1
  100117700  b       loc_100117714
loc_100117704:
  100117704  mov     w0, #0
  100117708  fmov    d1, #-1.00000000
  10011770c  fadd    d0, d0, d1
  100117710  str     d0, [x19, x8]                            ; self->trackingCredits_ = (self->trackingCredits_ + -1)
loc_100117714:
  100117714  ldp     x20, x19, [sp], #0x10
  100117718  ldp     x29, x30, [sp], #0x10
  10011771c  ret

; ======================================================================
; -[GAITrackerImpl gai_set:value:]
; address 0x100117720  size 116  kind objc
; ======================================================================
  100117720  stp     x29, x30, [sp, #-0x10]!
  100117724  mov     x29, sp
  100117728  stp     x20, x19, [sp, #-0x10]!
  10011772c  stp     x22, x21, [sp, #-0x10]!
  100117730  mov     x21, x3
  100117734  mov     x20, x2
  100117738  mov     x19, x0
  10011773c  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1, arg2)
  100117740  adrp    x8, #0x100418000
  100117744  nop
  100117748  ldr     x1, [x8, #0x9e8]
  10011774c  mov     x0, x19
  100117750  bl      _objc_msgSend                            ; [self model]
  100117754  adrp    x8, #0x100418000
  100117758  nop
  10011775c  ldr     x1, [x8, #0x318]
  100117760  mov     x2, x21
  100117764  mov     x3, x20
  100117768  bl      _objc_msgSend                            ; [[self model] setValue:arg2 forKey:arg1]
  10011776c  mov     x0, x19
  100117770  ldp     x22, x21, [sp], #0x10
  100117774  ldp     x20, x19, [sp], #0x10
  100117778  ldp     x29, x30, [sp], #0x10
  10011777c  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100117780  mov     x20, x0
  100117784  mov     x0, x19
  100117788  bl      _objc_sync_exit                          ; objc_sync_exit()
  10011778c  mov     x0, x20
  100117790  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAITrackerImpl gai_get:]
; address 0x100117794  size 168  kind objc
; ======================================================================
  100117794  stp     x29, x30, [sp, #-0x10]!
  100117798  mov     x29, sp
  10011779c  stp     x20, x19, [sp, #-0x10]!
  1001177a0  mov     x20, x2
  1001177a4  mov     x19, x0
  1001177a8  bl      _objc_sync_enter                         ; objc_sync_enter(self, _cmd, arg1)
  1001177ac  adrp    x8, #0x100418000
  1001177b0  nop
  1001177b4  ldr     x1, [x8, #0x9e8]
  1001177b8  mov     x0, x19
  1001177bc  bl      _objc_msgSend                            ; [self model]
  1001177c0  adrp    x8, #0x10041b000
  1001177c4  nop
  1001177c8  ldr     x1, [x8, #0xb70]
  1001177cc  mov     x2, x20
  1001177d0  bl      _objc_msgSend                            ; [[self model] objectForKeyedSubscript:arg1]
  1001177d4  mov     x20, x0
  1001177d8  adrp    x8, #0x10041d000
  1001177dc  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001177e0  adrp    x8, #0x100417000
  1001177e4  nop
  1001177e8  ldr     x1, [x8, #0x2e0]
  1001177ec  bl      _objc_msgSend                            ; [NSString class]
  1001177f0  mov     x2, x0
  1001177f4  adrp    x8, #0x100417000
  1001177f8  nop
  1001177fc  ldr     x1, [x8, #0x3b8]
  100117800  mov     x0, x20
  100117804  bl      _objc_msgSend                            ; [[[self model] objectForKeyedSubscript:arg1] isKindOfClass:[NSString class]]
  100117808  cbnz    w0, loc_100117810                        ; if ([[[self model] objectForKeyedSubscript:arg1] isKindOfClass:[NSString class]] != 0)
  10011780c  mov     x20, #0
loc_100117810:
  100117810  mov     x0, x19
  100117814  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100117818  mov     x0, x20
  10011781c  ldp     x20, x19, [sp], #0x10
  100117820  ldp     x29, x30, [sp], #0x10
  100117824  ret
  100117828  mov     x20, x0
  10011782c  mov     x0, x19
  100117830  bl      _objc_sync_exit                          ; objc_sync_exit()
  100117834  mov     x0, x20
  100117838  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAITrackerImpl gai_set:]
; address 0x10011783c  size 332  kind objc
; ======================================================================
  10011783c  stp     x29, x30, [sp, #-0x10]!
  100117840  mov     x29, sp
  100117844  stp     x20, x19, [sp, #-0x10]!
  100117848  stp     x22, x21, [sp, #-0x10]!
  10011784c  stp     x24, x23, [sp, #-0x10]!
  100117850  stp     x26, x25, [sp, #-0x10]!
  100117854  stp     x28, x27, [sp, #-0x10]!
  100117858  sub     sp, sp, #0xe0
  10011785c  mov     x19, x2
  100117860  mov     x20, x0
  100117864  adrp    x8, #0x1003b0000
  100117868  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011786c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100117870  stur    x8, [x29, #-0x58]
  100117874  stp     xzr, xzr, [sp, #0xc8]
  100117878  stp     xzr, xzr, [sp, #0xb8]
  10011787c  stp     xzr, xzr, [sp, #0xa8]
  100117880  stp     xzr, xzr, [sp, #0x98]
  100117884  adrp    x8, #0x100416000
  100117888  nop
  10011788c  ldr     x1, [x8, #0xe00]
  100117890  str     x1, [sp, #0x10]
  100117894  add     x2, sp, #0x98
  100117898  add     x3, sp, #0x18
  10011789c  mov     x4, #0x10
  1001178a0  mov     x0, x19
  1001178a4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  1001178a8  mov     x23, x0
  1001178ac  cbz     x23, loc_10011794c                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  1001178b0  ldr     x8, [sp, #0xa8]
  1001178b4  ldr     x28, [x8]
  1001178b8  adrp    x8, #0x100417000
  1001178bc  nop
  1001178c0  ldr     x22, [x8, #0x40]
  1001178c4  adrp    x8, #0x10041b000
  1001178c8  add     x8, x8, #0xdf8                           ; &@selector(gai_set:value:)
  1001178cc  ldr     x24, [x8]
  1001178d0  add     x25, sp, #0x98
  1001178d4  add     x26, sp, #0x18
loc_1001178d8:
  1001178d8  mov     x21, #0
loc_1001178dc:
  1001178dc  ldr     x8, [sp, #0xa8]
  1001178e0  ldr     x8, [x8]
  1001178e4  cmp     x8, x28
  1001178e8  b.eq    loc_1001178f4                            ; if (x8 == x28)
  1001178ec  mov     x0, x19
  1001178f0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1001178f4:
  1001178f4  ldr     x8, [sp, #0xa0]
  1001178f8  ldr     x27, [x8, x21, lsl #3]
  1001178fc  mov     x0, x19
  100117900  mov     x1, x22
  100117904  mov     x2, x27
  100117908  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10011790c  mov     x3, x0
  100117910  mov     x0, x20
  100117914  mov     x1, x24
  100117918  mov     x2, x27
  10011791c  bl      _objc_msgSend                            ; [self gai_set:x2 value:[arg1 objectForKey:x2]]
  100117920  add     x21, x21, #1
  100117924  cmp     x21, x23
  100117928  b.lo    loc_1001178dc                            ; if ((x21 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  10011792c  mov     x4, #0x10
  100117930  mov     x0, x19
  100117934  ldr     x1, [sp, #0x10]
  100117938  mov     x2, x25
  10011793c  mov     x3, x26
  100117940  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  100117944  mov     x23, x0
  100117948  cbnz    x23, loc_1001178d8                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10011794c:
  10011794c  adrp    x8, #0x1003b0000
  100117950  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100117954  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100117958  ldur    x9, [x29, #-0x58]
  10011795c  sub     x8, x8, x9
  100117960  cbnz    x8, loc_100117984                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100117964  sub     sp, x29, #0x50
  100117968  ldp     x28, x27, [sp], #0x10
  10011796c  ldp     x26, x25, [sp], #0x10
  100117970  ldp     x24, x23, [sp], #0x10
  100117974  ldp     x22, x21, [sp], #0x10
  100117978  ldp     x20, x19, [sp], #0x10
  10011797c  ldp     x29, x30, [sp], #0x10
  100117980  ret
loc_100117984:
  100117984  bl      ___stack_chk_fail                        ; stack_chk_fail([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])

; ======================================================================
; -[GAITrackerImpl gai_send:]
; address 0x100117988  size 964  kind objc
; ======================================================================
  100117988  stp     x29, x30, [sp, #-0x10]!
  10011798c  mov     x29, sp
  100117990  stp     x20, x19, [sp, #-0x10]!
  100117994  stp     x22, x21, [sp, #-0x10]!
  100117998  stp     x24, x23, [sp, #-0x10]!
  10011799c  stp     x26, x25, [sp, #-0x10]!
  1001179a0  sub     sp, sp, #0x30
  1001179a4  mov     x20, x2
  1001179a8  mov     x19, x0
  1001179ac  adrp    x8, #0x1003b8000
  1001179b0  add     x8, x8, #0x368                           ; &d_1003b8368
  1001179b4  ldr     x22, [x8]                                ; [&d_1003b8368] -> @"&t"
  1001179b8  adrp    x8, #0x100417000
  1001179bc  nop
  1001179c0  ldr     x1, [x8, #0x40]
  1001179c4  mov     x0, x20
  1001179c8  mov     x2, x22
  1001179cc  bl      _objc_msgSend                            ; [arg1 objectForKey:@"&t"]
  1001179d0  mov     x21, x0
  1001179d4  adrp    x8, #0x100417000
  1001179d8  nop
  1001179dc  ldr     x1, [x8, #0xc58]
  1001179e0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"&t"] length]
  1001179e4  cbnz    x0, loc_100117a88                        ; if ([[arg1 objectForKey:@"&t"] length] != 0)
  1001179e8  adrp    x8, #0x10041d000
  1001179ec  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1001179f0  adrp    x8, #0x10041b000
  1001179f4  nop
  1001179f8  ldr     x1, [x8, #0xdc8]
  1001179fc  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100117a00  mov     x23, x0
  100117a04  adrp    x8, #0x10041d000
  100117a08  ldr     x24, [x8, #0xf78]                        ; class NSString
  100117a0c  adrp    x8, #0x1003b7000
  100117a10  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100117a14  ldr     x25, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100117a18  adrp    x8, #0x1003b7000
  100117a1c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100117a20  ldr     x26, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100117a24  adrp    x8, #0x10041b000
  100117a28  nop
  100117a2c  ldr     x1, [x8, #0x580]
  100117a30  adrp    x0, #0x1003c4000
  100117a34  add     x0, x0, #0xa50                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100117a38  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100117a3c  adrp    x8, #0x100416000
  100117a40  nop
  100117a44  ldr     x1, [x8, #0xee8]
  100117a48  mov     x8, #0x91
  100117a4c  adrp    x9, #0x100390000
  100117a50  add     x9, x9, #0x40                            ; "-[GAITrackerImpl gai_send:]"
  100117a54  stp     x0, x8, [sp, #0x18]
  100117a58  stp     x26, x9, [sp, #8]
  100117a5c  str     x25, [sp]
  100117a60  adrp    x2, #0x1003c4000
  100117a64  add     x2, x2, #0xa70                           ; @"%@ %@ %s (%@:%d): Bad or missing hit type."
  100117a68  mov     x0, x24
  100117a6c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Bad or missing hit type.", @"GoogleAnalytics", @"3.09", "-[GAITrackerImpl gai_send:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 145]
  100117a70  mov     x2, x0
  100117a74  adrp    x8, #0x10041b000
  100117a78  nop
  100117a7c  ldr     x1, [x8, #0xe90]
  100117a80  mov     x0, x23
  100117a84  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Bad or missing hit type.", @"GoogleAnalytics", @"3.09", "-[GAITrackerImpl gai_send:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 145]]
loc_100117a88:
  100117a88  mov     x0, x19
  100117a8c  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100117a90  adrp    x8, #0x1003b8000
  100117a94  add     x8, x8, #0x548                           ; &d_1003b8548
  100117a98  ldr     x2, [x8]                                 ; [&d_1003b8548] -> @"transaction"
  100117a9c  adrp    x8, #0x100416000
  100117aa0  nop
  100117aa4  ldr     x23, [x8, #0xf58]
  100117aa8  mov     x0, x21
  100117aac  mov     x1, x23
  100117ab0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"&t"] isEqualToString:@"transaction"]
  100117ab4  tbnz    w0, #0, loc_100117b90                    ; if (([[arg1 objectForKey:@"&t"] isEqualToString:@"transaction"] & 1))
  100117ab8  adrp    x8, #0x1003b8000
  100117abc  add     x8, x8, #0x550                           ; &d_1003b8550
  100117ac0  ldr     x2, [x8]                                 ; [&d_1003b8550] -> @"item"
  100117ac4  mov     x0, x21
  100117ac8  mov     x1, x23
  100117acc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"&t"] isEqualToString:@"item"]
  100117ad0  tbnz    w0, #0, loc_100117b90                    ; if (([[arg1 objectForKey:@"&t"] isEqualToString:@"item"] & 1))
  100117ad4  adrp    x8, #0x10041b000
  100117ad8  nop
  100117adc  ldr     x1, [x8, #0xe98]
  100117ae0  mov     x0, x19
  100117ae4  bl      _objc_msgSend                            ; [self shouldRateLimit]
  100117ae8  cbz     w0, loc_100117b90                        ; if ([self shouldRateLimit] == 0)
  100117aec  adrp    x8, #0x10041d000
  100117af0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100117af4  adrp    x8, #0x10041b000
  100117af8  nop
  100117afc  ldr     x1, [x8, #0xdc8]
  100117b00  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100117b04  mov     x20, x0
  100117b08  adrp    x8, #0x10041d000
  100117b0c  ldr     x21, [x8, #0xf78]                        ; class NSString
  100117b10  adrp    x8, #0x10041b000
  100117b14  nop
  100117b18  ldr     x1, [x8, #0x580]
  100117b1c  adrp    x0, #0x1003c4000
  100117b20  add     x0, x0, #0xa50                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100117b24  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100117b28  adrp    x8, #0x1003b7000
  100117b2c  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100117b30  ldr     x8, [x8]                                 ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100117b34  adrp    x9, #0x1003b7000
  100117b38  add     x9, x9, #0xd78                           ; &d_1003b7d78
  100117b3c  ldr     x9, [x9]                                 ; [&d_1003b7d78] -> @"3.09"
  100117b40  adrp    x10, #0x100416000
  100117b44  nop
  100117b48  ldr     x1, [x10, #0xee8]
  100117b4c  mov     x10, #0x97
  100117b50  adrp    x11, #0x100390000
  100117b54  add     x11, x11, #0x40                          ; "-[GAITrackerImpl gai_send:]"
  100117b58  stp     x0, x10, [sp, #0x18]
  100117b5c  stp     x9, x11, [sp, #8]
  100117b60  str     x8, [sp]
  100117b64  adrp    x2, #0x1003c4000
  100117b68  add     x2, x2, #0xa90                           ; @"%@ %@ %s (%@:%d): Excessive tracking detected and throttled."
  100117b6c  mov     x0, x21
  100117b70  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Excessive tracking detected and throttled.", @"GoogleAnalytics", @"3.09", "-[GAITrackerImpl gai_send:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 151]
  100117b74  mov     x2, x0
  100117b78  adrp    x8, #0x10041b000
  100117b7c  nop
  100117b80  ldr     x1, [x8, #0xea0]
  100117b84  mov     x0, x20
  100117b88  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Excessive tracking detected and throttled.", @"GoogleAnalytics", @"3.09", "-[GAITrackerImpl gai_send:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 151]]
  100117b8c  b       loc_100117d18
loc_100117b90:
  100117b90  cbnz    x21, loc_100117bc4                       ; if ([arg1 objectForKey:@"&t"] != 0)
  100117b94  adrp    x8, #0x100418000
  100117b98  nop
  100117b9c  ldr     x1, [x8, #0x9e8]
  100117ba0  mov     x0, x19
  100117ba4  bl      _objc_msgSend                            ; [self model]
  100117ba8  adrp    x8, #0x10041b000
  100117bac  nop
  100117bb0  ldr     x1, [x8, #0xb70]
  100117bb4  mov     x2, x22
  100117bb8  bl      _objc_msgSend                            ; [[self model] objectForKeyedSubscript:@"&t"]
  100117bbc  mov     x21, x0
  100117bc0  cbz     x21, loc_100117c3c                       ; if ([[self model] objectForKeyedSubscript:@"&t"] == 0)
loc_100117bc4:
  100117bc4  adrp    x8, #0x10041d000
  100117bc8  ldr     x0, [x8, #0xf78]                         ; class NSString
  100117bcc  adrp    x8, #0x100417000
  100117bd0  nop
  100117bd4  ldr     x1, [x8, #0x2e0]
  100117bd8  bl      _objc_msgSend                            ; [NSString class]
  100117bdc  mov     x2, x0
  100117be0  adrp    x8, #0x100417000
  100117be4  nop
  100117be8  ldr     x1, [x8, #0x3b8]
  100117bec  mov     x0, x21
  100117bf0  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSString class]]
  100117bf4  cbz     w0, loc_100117c60                        ; if ([x0 isKindOfClass:[NSString class]] == 0)
  100117bf8  adrp    x8, #0x1003b8000
  100117bfc  add     x8, x8, #0x528                           ; &d_1003b8528
  100117c00  ldr     x2, [x8]                                 ; [&d_1003b8528] -> @"appview"
  100117c04  adrp    x8, #0x100419000
  100117c08  nop
  100117c0c  ldr     x22, [x8, #0x4e8]
  100117c10  mov     x0, x21
  100117c14  mov     x1, x22
  100117c18  bl      _objc_msgSend                            ; [x0 compare:@"appview"]
  100117c1c  cbz     x0, loc_100117c3c                        ; if ([x0 compare:@"appview"] == 0)
  100117c20  adrp    x8, #0x1003b8000
  100117c24  add     x8, x8, #0x530                           ; &d_1003b8530
  100117c28  ldr     x2, [x8]                                 ; [&d_1003b8530] -> @"screenview"
  100117c2c  mov     x0, x21
  100117c30  mov     x1, x22
  100117c34  bl      _objc_msgSend                            ; [x0 compare:@"screenview"]
  100117c38  cbnz    x0, loc_100117c60                        ; if ([x0 compare:@"screenview"] != 0)
loc_100117c3c:
  100117c3c  adrp    x8, #0x100418000
  100117c40  nop
  100117c44  ldr     x1, [x8, #0x9e8]
  100117c48  mov     x0, x19
  100117c4c  bl      _objc_msgSend                            ; [self model]
  100117c50  adrp    x8, #0x10041b000
  100117c54  nop
  100117c58  ldr     x1, [x8, #0xea8]
  100117c5c  bl      _objc_msgSend                            ; [[self model] willSendScreenView]
loc_100117c60:
  100117c60  adrp    x8, #0x100418000
  100117c64  nop
  100117c68  ldr     x21, [x8, #0x9e8]
  100117c6c  mov     x0, x19
  100117c70  mov     x1, x21
  100117c74  bl      _objc_msgSend                            ; [self model]
  100117c78  mov     x22, x0
  100117c7c  adrp    x8, #0x10041e000
  100117c80  ldr     x0, [x8, #0x588]                         ; class GAIUsageTracker
  100117c84  adrp    x8, #0x10041b000
  100117c88  nop
  100117c8c  ldr     x1, [x8, #0xeb0]
  100117c90  bl      _objc_msgSend                            ; [GAIUsageTracker getUsageSequence]
  100117c94  mov     x2, x0
  100117c98  adrp    x8, #0x1003b8000
  100117c9c  add     x8, x8, #0x508                           ; &d_1003b8508
  100117ca0  ldr     x3, [x8]                                 ; [&d_1003b8508] -> @"&_u"
  100117ca4  adrp    x8, #0x10041b000
  100117ca8  nop
  100117cac  ldr     x1, [x8, #0xe00]
  100117cb0  mov     x0, x22
  100117cb4  bl      _objc_msgSend                            ; [[self model] setObject:[GAIUsageTracker getUsageSequence] forKeyedSubscript:@"&_u"]
  100117cb8  adrp    x8, #0x10041b000
  100117cbc  nop
  100117cc0  ldr     x1, [x8, #0x5d0]
  100117cc4  mov     x0, x19
  100117cc8  bl      _objc_msgSend                            ; [self dispatcher]
  100117ccc  mov     x22, x0
  100117cd0  mov     x0, x19
  100117cd4  mov     x1, x21
  100117cd8  bl      _objc_msgSend                            ; [self model]
  100117cdc  adrp    x8, #0x10041b000
  100117ce0  nop
  100117ce4  ldr     x1, [x8, #0xeb8]
  100117ce8  mov     x2, x20
  100117cec  bl      _objc_msgSend                            ; [[self model] copyWithOverride:arg1]
  100117cf0  adrp    x8, #0x10041b000
  100117cf4  nop
  100117cf8  ldr     x1, [x8, #0xe88]
  100117cfc  bl      _objc_msgSend                            ; [[[self model] copyWithOverride:arg1] autorelease]
  100117d00  mov     x2, x0
  100117d04  adrp    x8, #0x10041b000
  100117d08  nop
  100117d0c  ldr     x1, [x8, #0xec0]
  100117d10  mov     x0, x22
  100117d14  bl      _objc_msgSend                            ; [[self dispatcher] queueModel:[[[self model] copyWithOverride:arg1] autorelease]]
loc_100117d18:
  100117d18  mov     x0, x19
  100117d1c  sub     sp, x29, #0x40
  100117d20  ldp     x26, x25, [sp], #0x10
  100117d24  ldp     x24, x23, [sp], #0x10
  100117d28  ldp     x22, x21, [sp], #0x10
  100117d2c  ldp     x20, x19, [sp], #0x10
  100117d30  ldp     x29, x30, [sp], #0x10
  100117d34  b       _objc_sync_exit                          ; objc_sync_exit(self)
  100117d38  mov     x20, x0
  100117d3c  mov     x0, x19
  100117d40  bl      _objc_sync_exit                          ; objc_sync_exit()
  100117d44  mov     x0, x20
  100117d48  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[GAITrackerImpl get:]
; address 0x100117d4c  size 100  kind objc
; ======================================================================
  100117d4c  stp     x29, x30, [sp, #-0x10]!
  100117d50  mov     x29, sp
  100117d54  stp     x20, x19, [sp, #-0x10]!
  100117d58  stp     x22, x21, [sp, #-0x10]!
  100117d5c  mov     x19, x2
  100117d60  mov     x20, x1
  100117d64  mov     x21, x0
  100117d68  adrp    x8, #0x10041b000
  100117d6c  nop
  100117d70  ldr     x1, [x8, #0xec8]
  100117d74  bl      _objc_msgSend                            ; [self usageTracker]
  100117d78  adrp    x8, #0x10041b000
  100117d7c  nop
  100117d80  ldr     x1, [x8, #0xda8]
  100117d84  mov     x2, x20
  100117d88  bl      _objc_msgSend                            ; [[self usageTracker] trackAction:_cmd]
  100117d8c  adrp    x8, #0x10041b000
  100117d90  nop
  100117d94  ldr     x1, [x8, #0xed0]
  100117d98  mov     x0, x21
  100117d9c  mov     x2, x19
  100117da0  ldp     x22, x21, [sp], #0x10
  100117da4  ldp     x20, x19, [sp], #0x10
  100117da8  ldp     x29, x30, [sp], #0x10
  100117dac  b       _objc_msgSend                            ; [self gai_get:arg1]

; ======================================================================
; -[GAITrackerImpl set:value:]
; address 0x100117db0  size 108  kind objc
; ======================================================================
  100117db0  stp     x29, x30, [sp, #-0x10]!
  100117db4  mov     x29, sp
  100117db8  stp     x20, x19, [sp, #-0x10]!
  100117dbc  stp     x22, x21, [sp, #-0x10]!
  100117dc0  mov     x19, x3
  100117dc4  mov     x20, x2
  100117dc8  mov     x21, x1
  100117dcc  mov     x22, x0
  100117dd0  adrp    x8, #0x10041b000
  100117dd4  nop
  100117dd8  ldr     x1, [x8, #0xec8]
  100117ddc  bl      _objc_msgSend                            ; [self usageTracker]
  100117de0  adrp    x8, #0x10041b000
  100117de4  nop
  100117de8  ldr     x1, [x8, #0xda8]
  100117dec  mov     x2, x21
  100117df0  bl      _objc_msgSend                            ; [[self usageTracker] trackAction:_cmd]
  100117df4  adrp    x8, #0x10041b000
  100117df8  nop
  100117dfc  ldr     x1, [x8, #0xdf8]
  100117e00  mov     x0, x22
  100117e04  mov     x2, x20
  100117e08  mov     x3, x19
  100117e0c  ldp     x22, x21, [sp], #0x10
  100117e10  ldp     x20, x19, [sp], #0x10
  100117e14  ldp     x29, x30, [sp], #0x10
  100117e18  b       _objc_msgSend                            ; [self gai_set:arg1 value:arg2]

; ======================================================================
; -[GAITrackerImpl send:]
; address 0x100117e1c  size 100  kind objc
; ======================================================================
  100117e1c  stp     x29, x30, [sp, #-0x10]!
  100117e20  mov     x29, sp
  100117e24  stp     x20, x19, [sp, #-0x10]!
  100117e28  stp     x22, x21, [sp, #-0x10]!
  100117e2c  mov     x19, x2
  100117e30  mov     x20, x1
  100117e34  mov     x21, x0
  100117e38  adrp    x8, #0x10041b000
  100117e3c  nop
  100117e40  ldr     x1, [x8, #0xec8]
  100117e44  bl      _objc_msgSend                            ; [self usageTracker]
  100117e48  adrp    x8, #0x10041b000
  100117e4c  nop
  100117e50  ldr     x1, [x8, #0xda8]
  100117e54  mov     x2, x20
  100117e58  bl      _objc_msgSend                            ; [[self usageTracker] trackAction:_cmd]
  100117e5c  adrp    x8, #0x10041b000
  100117e60  nop
  100117e64  ldr     x1, [x8, #0xed8]
  100117e68  mov     x0, x21
  100117e6c  mov     x2, x19
  100117e70  ldp     x22, x21, [sp], #0x10
  100117e74  ldp     x20, x19, [sp], #0x10
  100117e78  ldp     x29, x30, [sp], #0x10
  100117e7c  b       _objc_msgSend                            ; [self gai_send:arg1]

; ======================================================================
; -[GAITrackerImpl name]
; address 0x100117e80  size 16  kind objc
; ======================================================================
  100117e80  adrp    x8, #0x100420000
  100117e84  ldrsw   x8, [x8, #0x810]                         ; ivar offset GAITrackerImpl.name_ (+0x28)
  100117e88  ldr     x0, [x0, x8]                             ; x0 = self->name_
  100117e8c  ret

; ======================================================================
; -[GAITrackerImpl setAllowIDFACollection:]
; address 0x100117e90  size 72  kind objc
; ======================================================================
  100117e90  stp     x29, x30, [sp, #-0x10]!
  100117e94  mov     x29, sp
  100117e98  stp     x20, x19, [sp, #-0x10]!
  100117e9c  mov     x19, x2
  100117ea0  adrp    x8, #0x100420000
  100117ea4  ldrsw   x8, [x8, #0x818]                         ; ivar offset GAITrackerImpl.allowIDFACollection_ (+0x8)
  100117ea8  strb    w19, [x0, x8]                            ; self->allowIDFACollection_ = arg1
  100117eac  adrp    x8, #0x100418000
  100117eb0  nop
  100117eb4  ldr     x1, [x8, #0x9e8]
  100117eb8  bl      _objc_msgSend                            ; [self model]
  100117ebc  adrp    x8, #0x10041b000
  100117ec0  nop
  100117ec4  ldr     x1, [x8, #0xee0]
  100117ec8  mov     x2, x19
  100117ecc  ldp     x20, x19, [sp], #0x10
  100117ed0  ldp     x29, x30, [sp], #0x10
  100117ed4  b       _objc_msgSend                            ; [[self model] setAllowIDFACollection:arg1]

; ======================================================================
; -[GAITrackerImpl dispatcher]
; address 0x100117ed8  size 16  kind objc
; ======================================================================
  100117ed8  adrp    x8, #0x100420000
  100117edc  ldrsw   x8, [x8, #0x80c]                         ; ivar offset GAITrackerImpl.dispatcher_ (+0x10)
  100117ee0  ldr     x0, [x0, x8]                             ; x0 = self->dispatcher_
  100117ee4  ret

; ======================================================================
; -[GAITrackerImpl setDispatcher:]
; address 0x100117ee8  size 28  kind objc
; ======================================================================
  100117ee8  mov     x8, x2
  100117eec  mov     w4, #0
  100117ef0  mov     w5, #0
  100117ef4  adrp    x9, #0x100420000
  100117ef8  ldrsw   x2, [x9, #0x80c]                         ; ivar offset GAITrackerImpl.dispatcher_ (+0x10)
  100117efc  mov     x3, x8
  100117f00  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAITrackerImpl trackingCredits]
; address 0x100117f04  size 16  kind objc
; ======================================================================
  100117f04  adrp    x8, #0x100420000
  100117f08  ldrsw   x8, [x8, #0x81c]                         ; ivar offset GAITrackerImpl.trackingCredits_ (+0x18)
  100117f0c  ldr     d0, [x0, x8]                             ; d0 = self->trackingCredits_
  100117f10  ret

; ======================================================================
; -[GAITrackerImpl setTrackingCredits:]
; address 0x100117f14  size 16  kind objc
; ======================================================================
  100117f14  adrp    x8, #0x100420000
  100117f18  ldrsw   x8, [x8, #0x81c]                         ; ivar offset GAITrackerImpl.trackingCredits_ (+0x18)
  100117f1c  str     d0, [x0, x8]                             ; self->trackingCredits_ = arg1
  100117f20  ret

; ======================================================================
; -[GAITrackerImpl lastTrackTime]
; address 0x100117f24  size 16  kind objc
; ======================================================================
  100117f24  adrp    x8, #0x100420000
  100117f28  ldrsw   x8, [x8, #0x820]                         ; ivar offset GAITrackerImpl.lastTrackTime_ (+0x20)
  100117f2c  ldr     d0, [x0, x8]                             ; d0 = self->lastTrackTime_
  100117f30  ret

; ======================================================================
; -[GAITrackerImpl setLastTrackTime:]
; address 0x100117f34  size 16  kind objc
; ======================================================================
  100117f34  adrp    x8, #0x100420000
  100117f38  ldrsw   x8, [x8, #0x820]                         ; ivar offset GAITrackerImpl.lastTrackTime_ (+0x20)
  100117f3c  str     d0, [x0, x8]                             ; self->lastTrackTime_ = arg1
  100117f40  ret

; ======================================================================
; -[GAITrackerImpl model]
; address 0x100117f44  size 16  kind objc
; ======================================================================
  100117f44  adrp    x8, #0x100420000
  100117f48  ldrsw   x8, [x8, #0x814]                         ; ivar offset GAITrackerImpl.model_ (+0x30)
  100117f4c  ldr     x0, [x0, x8]                             ; x0 = self->model_
  100117f50  ret

; ======================================================================
; -[GAITrackerImpl setModel:]
; address 0x100117f54  size 28  kind objc
; ======================================================================
  100117f54  mov     x8, x2
  100117f58  mov     w4, #0
  100117f5c  mov     w5, #0
  100117f60  adrp    x9, #0x100420000
  100117f64  ldrsw   x2, [x9, #0x814]                         ; ivar offset GAITrackerImpl.model_ (+0x30)
  100117f68  mov     x3, x8
  100117f6c  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAITrackerImpl allowIDFACollection]
; address 0x100117f70  size 16  kind objc
; ======================================================================
  100117f70  adrp    x8, #0x100420000
  100117f74  ldrsw   x8, [x8, #0x818]                         ; ivar offset GAITrackerImpl.allowIDFACollection_ (+0x8)
  100117f78  ldrb    w0, [x0, x8]                             ; w0 = self->allowIDFACollection_
  100117f7c  ret

; ======================================================================
; -[GAITrackerImpl trackCount]
; address 0x100117f80  size 16  kind objc
; ======================================================================
  100117f80  adrp    x8, #0x100420000
  100117f84  ldrsw   x8, [x8, #0x824]                         ; ivar offset GAITrackerImpl._trackCount (+0x38)
  100117f88  ldr     x0, [x0, x8]                             ; x0 = self->_trackCount
  100117f8c  ret

; ======================================================================
; -[GAITrackerImpl setTrackCount:]
; address 0x100117f90  size 16  kind objc
; ======================================================================
  100117f90  adrp    x8, #0x100420000
  100117f94  ldrsw   x8, [x8, #0x824]                         ; ivar offset GAITrackerImpl._trackCount (+0x38)
  100117f98  str     x2, [x0, x8]                             ; self->_trackCount = arg1
  100117f9c  ret

; ======================================================================
; -[GAITrackerImpl hitCount]
; address 0x100117fa0  size 16  kind objc
; ======================================================================
  100117fa0  adrp    x8, #0x100420000
  100117fa4  ldrsw   x8, [x8, #0x828]                         ; ivar offset GAITrackerImpl._hitCount (+0x40)
  100117fa8  ldr     x0, [x0, x8]                             ; x0 = self->_hitCount
  100117fac  ret

; ======================================================================
; -[GAITrackerImpl setHitCount:]
; address 0x100117fb0  size 16  kind objc
; ======================================================================
  100117fb0  adrp    x8, #0x100420000
  100117fb4  ldrsw   x8, [x8, #0x828]                         ; ivar offset GAITrackerImpl._hitCount (+0x40)
  100117fb8  str     x2, [x0, x8]                             ; self->_hitCount = arg1
  100117fbc  ret

; ======================================================================
; -[GAITrackerImpl usageTracker]
; address 0x100117fc0  size 16  kind objc
; ======================================================================
  100117fc0  adrp    x8, #0x100420000
  100117fc4  ldrsw   x8, [x8, #0x808]                         ; ivar offset GAITrackerImpl._usageTracker (+0x48)
  100117fc8  ldr     x0, [x0, x8]                             ; x0 = self->_usageTracker
  100117fcc  ret

; ======================================================================
; -[GAITrackerImpl setUsageTracker:]
; address 0x100117fd0  size 28  kind objc
; ======================================================================
  100117fd0  mov     x8, x2
  100117fd4  mov     w4, #0
  100117fd8  mov     w5, #0
  100117fdc  adrp    x9, #0x100420000
  100117fe0  ldrsw   x2, [x9, #0x808]                         ; ivar offset GAITrackerImpl._usageTracker (+0x48)
  100117fe4  mov     x3, x8
  100117fe8  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)
