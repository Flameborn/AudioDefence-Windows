// unit GAIReachabilityChecker — 22 functions
//   0x1001203c8      16  -[GAIReachabilityChecker reachabilityApi]
//   0x1001203d8     244  -[GAIReachabilityChecker setReachabilityApi:]
//   0x1001204cc      24  -[GAIReachabilityChecker isActive]
//   0x1001204e4     276  -[GAIReachabilityChecker setDelegate:]
//   0x1001205f8     128  -[GAIReachabilityChecker init]
//   0x100120678     420  -[GAIReachabilityChecker initWithDelegate:withHost:]
//   0x10012081c     116  -[GAIReachabilityChecker dealloc]
//   0x100120890     272  -[GAIReachabilityChecker start]
//   0x1001209a0      28  -[GAIReachabilityChecker start]_block_invoke
//   0x1001209bc     140  -[GAIReachabilityChecker stop]
//   0x100120a48      60  -[GAIReachabilityChecker statusForFlags:]
//   0x100120a84     324  -[GAIReachabilityChecker reachabilityFlagsChanged:]
//   0x100120bc8      16  -[GAIReachabilityChecker reachability]
//   0x100120bd8      16  -[GAIReachabilityChecker setReachability:]
//   0x100120be8      16  -[GAIReachabilityChecker reachabilityStatus]
//   0x100120bf8      16  -[GAIReachabilityChecker setReachabilityStatus:]
//   0x100120c08      16  -[GAIReachabilityChecker host]
//   0x100120c18      28  -[GAIReachabilityChecker setHost:]
//   0x100120c34      16  -[GAIReachabilityChecker delegate]
//   0x100120c44      64  sub_100120c44
//   0x100120c84     956  sub_100120c84
//   0x100121040      56  sub_100121040

; ======================================================================
; -[GAIReachabilityChecker reachabilityApi]
; address 0x1001203c8  size 16  kind objc
; ======================================================================
  1001203c8  adrp    x8, #0x100420000
  1001203cc  ldrsw   x8, [x8, #0x874]                         ; ivar offset GAIReachabilityChecker.reachabilityApi_ (+0x10)
  1001203d0  ldr     x0, [x0, x8]                             ; x0 = self->reachabilityApi_
  1001203d4  ret

; ======================================================================
; -[GAIReachabilityChecker setReachabilityApi:]
; address 0x1001203d8  size 244  kind objc
; ======================================================================
  1001203d8  stp     x29, x30, [sp, #-0x10]!
  1001203dc  mov     x29, sp
  1001203e0  stp     x20, x19, [sp, #-0x10]!
  1001203e4  stp     x22, x21, [sp, #-0x10]!
  1001203e8  sub     sp, sp, #0x30
  1001203ec  adrp    x8, #0x100420000
  1001203f0  ldrsw   x8, [x8, #0x878]                         ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  1001203f4  ldr     x8, [x0, x8]                             ; x8 = self->reachability_
  1001203f8  cbz     x8, loc_1001204ac                        ; if (self->reachability_ == 0)
  1001203fc  adrp    x8, #0x10041d000
  100120400  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100120404  adrp    x8, #0x10041b000
  100120408  nop
  10012040c  ldr     x1, [x8, #0xdc8]
  100120410  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120414  mov     x19, x0
  100120418  adrp    x8, #0x10041d000
  10012041c  ldr     x20, [x8, #0xf78]                        ; class NSString
  100120420  adrp    x8, #0x1003b7000
  100120424  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100120428  ldr     x21, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  10012042c  adrp    x8, #0x1003b7000
  100120430  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100120434  ldr     x22, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100120438  adrp    x8, #0x10041b000
  10012043c  nop
  100120440  ldr     x1, [x8, #0x580]
  100120444  adrp    x0, #0x1003c5000
  100120448  add     x0, x0, #0x470                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  10012044c  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100120450  adrp    x8, #0x100416000
  100120454  nop
  100120458  ldr     x1, [x8, #0xee8]
  10012045c  mov     x8, #0x2e
  100120460  adrp    x9, #0x100390000
  100120464  add     x9, x9, #0xbf5                           ; "-[GAIReachabilityChecker setReachabilityApi:]"
  100120468  stp     x0, x8, [sp, #0x18]
  10012046c  stp     x22, x9, [sp, #8]
  100120470  str     x21, [sp]
  100120474  adrp    x2, #0x1003c5000
  100120478  add     x2, x2, #0x450                           ; @"%@ %@ %s (%@:%d): Cannot change reachability API while reachability running; call stop fir…"
  10012047c  mov     x0, x20
  100120480  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Cannot change reachability API while reachability running; call stop fir…", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker setReachabilityApi:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 46]
  100120484  mov     x2, x0
  100120488  adrp    x8, #0x10041b000
  10012048c  nop
  100120490  ldr     x1, [x8, #0xdd0]
  100120494  mov     x0, x19
  100120498  sub     sp, x29, #0x20
  10012049c  ldp     x22, x21, [sp], #0x10
  1001204a0  ldp     x20, x19, [sp], #0x10
  1001204a4  ldp     x29, x30, [sp], #0x10
  1001204a8  b       _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Cannot change reachability API while reachability running; call stop fir…", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker setReachabilityApi:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 46]]
loc_1001204ac:
  1001204ac  adrp    x8, #0x100420000
  1001204b0  ldrsw   x8, [x8, #0x874]                         ; ivar offset GAIReachabilityChecker.reachabilityApi_ (+0x10)
  1001204b4  str     x2, [x0, x8]                             ; self->reachabilityApi_ = arg1
  1001204b8  sub     sp, x29, #0x20
  1001204bc  ldp     x22, x21, [sp], #0x10
  1001204c0  ldp     x20, x19, [sp], #0x10
  1001204c4  ldp     x29, x30, [sp], #0x10
  1001204c8  ret

; ======================================================================
; -[GAIReachabilityChecker isActive]
; address 0x1001204cc  size 24  kind objc
; ======================================================================
  1001204cc  adrp    x8, #0x100420000
  1001204d0  ldrsw   x8, [x8, #0x878]                         ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  1001204d4  ldr     x8, [x0, x8]                             ; x8 = self->reachability_
  1001204d8  cmp     x8, #0
  1001204dc  cset    w0, ne
  1001204e0  ret

; ======================================================================
; -[GAIReachabilityChecker setDelegate:]
; address 0x1001204e4  size 276  kind objc
; ======================================================================
  1001204e4  stp     x29, x30, [sp, #-0x10]!
  1001204e8  mov     x29, sp
  1001204ec  stp     x20, x19, [sp, #-0x10]!
  1001204f0  stp     x22, x21, [sp, #-0x10]!
  1001204f4  sub     sp, sp, #0x30
  1001204f8  mov     x19, x2
  1001204fc  mov     x20, x0
  100120500  cbz     x19, loc_100120528                       ; if (arg1 == 0)
  100120504  adrp    x8, #0x10041d000
  100120508  nop
  10012050c  ldr     x2, [x8, #0xec8]                         ; [0x10041dec8] -> &d_100429348
  100120510  adrp    x8, #0x10041b000
  100120514  nop
  100120518  ldr     x1, [x8, #0x920]
  10012051c  mov     x0, x19
  100120520  bl      _objc_msgSend                            ; [arg1 conformsToProtocol:&d_100429348]
  100120524  tbz     w0, #0, loc_100120548                    ; if (!([arg1 conformsToProtocol:&d_100429348] & 1))
loc_100120528:
  100120528  adrp    x8, #0x100420000
  10012052c  ldrsw   x8, [x8, #0x87c]                         ; ivar offset GAIReachabilityChecker.delegate_ (+0x28)
  100120530  str     x19, [x20, x8]                           ; self->delegate_ = arg1
  100120534  sub     sp, x29, #0x20
  100120538  ldp     x22, x21, [sp], #0x10
  10012053c  ldp     x20, x19, [sp], #0x10
  100120540  ldp     x29, x30, [sp], #0x10
  100120544  ret
loc_100120548:
  100120548  adrp    x8, #0x10041d000
  10012054c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100120550  adrp    x8, #0x10041b000
  100120554  nop
  100120558  ldr     x1, [x8, #0xdc8]
  10012055c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120560  mov     x19, x0
  100120564  adrp    x8, #0x10041d000
  100120568  ldr     x20, [x8, #0xf78]                        ; class NSString
  10012056c  adrp    x8, #0x1003b7000
  100120570  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100120574  ldr     x21, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100120578  adrp    x8, #0x1003b7000
  10012057c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100120580  ldr     x22, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100120584  adrp    x8, #0x10041b000
  100120588  nop
  10012058c  ldr     x1, [x8, #0x580]
  100120590  adrp    x0, #0x1003c5000
  100120594  add     x0, x0, #0x470                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100120598  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10012059c  adrp    x8, #0x100416000
  1001205a0  nop
  1001205a4  ldr     x1, [x8, #0xee8]
  1001205a8  mov     x8, #0x3f
  1001205ac  adrp    x9, #0x100390000
  1001205b0  add     x9, x9, #0xd25                           ; "-[GAIReachabilityChecker setDelegate:]"
  1001205b4  stp     x0, x8, [sp, #0x18]
  1001205b8  stp     x22, x9, [sp, #8]
  1001205bc  str     x21, [sp]
  1001205c0  adrp    x2, #0x1003c5000
  1001205c4  add     x2, x2, #0x490                           ; @"%@ %@ %s (%@:%d): Cannot set delegate that doesn't conform to protocol."
  1001205c8  mov     x0, x20
  1001205cc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Cannot set delegate that doesn't conform to protocol.", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker setDelegate:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 63]
  1001205d0  mov     x2, x0
  1001205d4  adrp    x8, #0x10041b000
  1001205d8  nop
  1001205dc  ldr     x1, [x8, #0xdd0]
  1001205e0  mov     x0, x19
  1001205e4  sub     sp, x29, #0x20
  1001205e8  ldp     x22, x21, [sp], #0x10
  1001205ec  ldp     x20, x19, [sp], #0x10
  1001205f0  ldp     x29, x30, [sp], #0x10
  1001205f4  b       _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Cannot set delegate that doesn't conform to protocol.", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker setDelegate:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 63]]

; ======================================================================
; -[GAIReachabilityChecker init]
; address 0x1001205f8  size 128  kind objc
; ======================================================================
  1001205f8  stp     x29, x30, [sp, #-0x10]!
  1001205fc  mov     x29, sp
  100120600  stp     x20, x19, [sp, #-0x10]!
  100120604  sub     sp, sp, #0x10
  100120608  mov     x19, x1
  10012060c  str     x0, [sp]
  100120610  adrp    x8, #0x10041f000
  100120614  ldr     x8, [x8, #0x118]
  100120618  str     x8, [sp, #8]
  10012061c  adrp    x8, #0x100416000
  100120620  nop
  100120624  ldr     x1, [x8, #0xab8]
  100120628  mov     x0, sp
  10012062c  bl      _objc_msgSendSuper2                      ; [super init]
  100120630  mov     x20, x0
  100120634  cbz     x20, loc_100120664                       ; if (self == 0)
  100120638  adrp    x8, #0x10041b000
  10012063c  nop
  100120640  ldr     x1, [x8, #0xd68]
  100120644  mov     x0, x20
  100120648  mov     x2, x19
  10012064c  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  100120650  adrp    x8, #0x10041b000
  100120654  nop
  100120658  ldr     x1, [x8, #0xd70]
  10012065c  mov     x0, x20
  100120660  bl      _objc_msgSend                            ; [self release]
loc_100120664:
  100120664  mov     x0, #0
  100120668  sub     sp, x29, #0x10
  10012066c  ldp     x20, x19, [sp], #0x10
  100120670  ldp     x29, x30, [sp], #0x10
  100120674  ret

; ======================================================================
; -[GAIReachabilityChecker initWithDelegate:withHost:]
; address 0x100120678  size 420  kind objc
; ======================================================================
  100120678  stp     x29, x30, [sp, #-0x10]!
  10012067c  mov     x29, sp
  100120680  stp     x20, x19, [sp, #-0x10]!
  100120684  stp     x22, x21, [sp, #-0x10]!
  100120688  stp     x24, x23, [sp, #-0x10]!
  10012068c  sub     sp, sp, #0x40
  100120690  mov     x21, x3
  100120694  mov     x20, x2
  100120698  str     x0, [sp, #0x30]
  10012069c  adrp    x8, #0x10041f000
  1001206a0  ldr     x8, [x8, #0x118]
  1001206a4  str     x8, [sp, #0x38]
  1001206a8  adrp    x8, #0x100416000
  1001206ac  nop
  1001206b0  ldr     x1, [x8, #0xab8]
  1001206b4  add     x0, sp, #0x30
  1001206b8  bl      _objc_msgSendSuper2                      ; [super init]
  1001206bc  mov     x19, x0
  1001206c0  cbz     x21, loc_100120748                       ; if (arg2 == 0)
  1001206c4  adrp    x8, #0x100417000
  1001206c8  nop
  1001206cc  ldr     x1, [x8, #0xc58]
  1001206d0  mov     x0, x21
  1001206d4  bl      _objc_msgSend                            ; [arg2 length]
  1001206d8  cbz     x0, loc_100120748                        ; if ([arg2 length] == 0)
  1001206dc  cbz     x19, loc_1001207fc                       ; if (self == 0)
  1001206e0  adrp    x8, #0x100420000
  1001206e4  adrp    x9, #0x1003b8000
  1001206e8  add     x9, x9, #0x340                           ; &d_1003b8340
  1001206ec  ldrsw   x8, [x8, #0x874]                         ; ivar offset GAIReachabilityChecker.reachabilityApi_ (+0x10)
  1001206f0  str     x9, [x19, x8]                            ; self->reachabilityApi_ = &d_1003b8340
  1001206f4  adrp    x8, #0x100420000
  1001206f8  ldrsw   x8, [x8, #0x880]                         ; ivar offset GAIReachabilityChecker.reachabilityStatus_ (+0x8)
  1001206fc  str     wzr, [x19, x8]                           ; self->reachabilityStatus_ = 0
  100120700  adrp    x8, #0x100419000
  100120704  nop
  100120708  ldr     x1, [x8, #0xc08]
  10012070c  mov     x0, x21
  100120710  bl      _objc_msgSend                            ; [arg2 copy]
  100120714  adrp    x8, #0x100420000
  100120718  ldrsw   x8, [x8, #0x884]                         ; ivar offset GAIReachabilityChecker.host_ (+0x20)
  10012071c  str     x0, [x19, x8]                            ; self->host_ = [arg2 copy]
  100120720  adrp    x8, #0x100420000
  100120724  ldrsw   x8, [x8, #0x878]                         ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  100120728  str     xzr, [x19, x8]                           ; self->reachability_ = 0
  10012072c  adrp    x8, #0x100417000
  100120730  nop
  100120734  ldr     x1, [x8, #0x7d8]
  100120738  mov     x0, x19
  10012073c  mov     x2, x20
  100120740  bl      _objc_msgSend                            ; [self setDelegate:arg1]
  100120744  b       loc_100120800
loc_100120748:
  100120748  adrp    x8, #0x10041d000
  10012074c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100120750  adrp    x8, #0x10041b000
  100120754  nop
  100120758  ldr     x1, [x8, #0xdc8]
  10012075c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120760  mov     x20, x0
  100120764  adrp    x8, #0x10041d000
  100120768  ldr     x21, [x8, #0xf78]                        ; class NSString
  10012076c  adrp    x8, #0x1003b7000
  100120770  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100120774  ldr     x22, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100120778  adrp    x8, #0x1003b7000
  10012077c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100120780  ldr     x23, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100120784  adrp    x8, #0x10041b000
  100120788  nop
  10012078c  ldr     x1, [x8, #0x580]
  100120790  adrp    x0, #0x1003c5000
  100120794  add     x0, x0, #0x470                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100120798  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  10012079c  adrp    x8, #0x100416000
  1001207a0  nop
  1001207a4  ldr     x1, [x8, #0xee8]
  1001207a8  mov     x8, #0x4d
  1001207ac  adrp    x9, #0x100390000
  1001207b0  add     x9, x9, #0xd76                           ; "-[GAIReachabilityChecker initWithDelegate:withHost:]"
  1001207b4  stp     x0, x8, [sp, #0x18]
  1001207b8  stp     x23, x9, [sp, #8]
  1001207bc  str     x22, [sp]
  1001207c0  adrp    x2, #0x1003c5000
  1001207c4  add     x2, x2, #0x4b0                           ; @"%@ %@ %s (%@:%d): Invalid host specified."
  1001207c8  mov     x0, x21
  1001207cc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Invalid host specified.", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker initWithDelegate:withHost:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 77]
  1001207d0  mov     x2, x0
  1001207d4  adrp    x8, #0x10041b000
  1001207d8  nop
  1001207dc  ldr     x1, [x8, #0xdd0]
  1001207e0  mov     x0, x20
  1001207e4  bl      _objc_msgSend                            ; [[GAI sharedLogger] error:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Invalid host specified.", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker initWithDelegate:withHost:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 77]]
  1001207e8  adrp    x8, #0x10041b000
  1001207ec  nop
  1001207f0  ldr     x1, [x8, #0xd70]
  1001207f4  mov     x0, x19
  1001207f8  bl      _objc_msgSend                            ; [self release]
loc_1001207fc:
  1001207fc  mov     x19, #0
loc_100120800:
  100120800  mov     x0, x19
  100120804  sub     sp, x29, #0x30
  100120808  ldp     x24, x23, [sp], #0x10
  10012080c  ldp     x22, x21, [sp], #0x10
  100120810  ldp     x20, x19, [sp], #0x10
  100120814  ldp     x29, x30, [sp], #0x10
  100120818  ret

; ======================================================================
; -[GAIReachabilityChecker dealloc]
; address 0x10012081c  size 116  kind objc
; ======================================================================
  10012081c  stp     x29, x30, [sp, #-0x10]!
  100120820  mov     x29, sp
  100120824  stp     x20, x19, [sp, #-0x10]!
  100120828  sub     sp, sp, #0x10
  10012082c  mov     x19, x0
  100120830  adrp    x8, #0x100417000
  100120834  nop
  100120838  ldr     x1, [x8, #0x568]
  10012083c  bl      _objc_msgSend                            ; [self stop]
  100120840  adrp    x8, #0x100420000
  100120844  ldrsw   x8, [x8, #0x884]                         ; ivar offset GAIReachabilityChecker.host_ (+0x20)
  100120848  ldr     x0, [x19, x8]                            ; x0 = self->host_
  10012084c  adrp    x8, #0x10041b000
  100120850  nop
  100120854  ldr     x1, [x8, #0xd70]
  100120858  bl      _objc_msgSend                            ; [self->host_ release]
  10012085c  str     x19, [sp]
  100120860  adrp    x8, #0x10041f000
  100120864  ldr     x8, [x8, #0x118]
  100120868  str     x8, [sp, #8]
  10012086c  adrp    x8, #0x100416000
  100120870  nop
  100120874  ldr     x1, [x8, #0xfc8]
  100120878  mov     x0, sp
  10012087c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100120880  sub     sp, x29, #0x10
  100120884  ldp     x20, x19, [sp], #0x10
  100120888  ldp     x29, x30, [sp], #0x10
  10012088c  ret

; ======================================================================
; -[GAIReachabilityChecker start]
; address 0x100120890  size 272  kind objc
; ======================================================================
  100120890  stp     x29, x30, [sp, #-0x10]!
  100120894  mov     x29, sp
  100120898  stp     x20, x19, [sp, #-0x10]!
  10012089c  stp     x22, x21, [sp, #-0x10]!
  1001208a0  stp     x24, x23, [sp, #-0x10]!
  1001208a4  sub     sp, sp, #0x30
  1001208a8  mov     x19, x0
  1001208ac  adrp    x23, #0x100420000
  1001208b0  ldrsw   x21, [x23, #0x878]                       ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  1001208b4  ldr     x8, [x19, x21]                           ; x8 = self->reachability_
  1001208b8  cbnz    x8, loc_100120960                        ; if (self->reachability_ != 0)
  1001208bc  adrp    x8, #0x100420000
  1001208c0  ldrsw   x22, [x8, #0x874]                        ; ivar offset GAIReachabilityChecker.reachabilityApi_ (+0x10)
  1001208c4  ldr     x8, [x19, x22]                           ; x8 = self->reachabilityApi_
  1001208c8  ldr     x24, [x8]                                ; x24 = self->reachabilityApi_[+0x0]
  1001208cc  adrp    x8, #0x1003b0000
  1001208d0  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  1001208d4  ldr     x20, [x8]                                ; x20 = _kCFAllocatorDefault[+0x0]
  1001208d8  adrp    x8, #0x100420000
  1001208dc  ldrsw   x8, [x8, #0x884]                         ; ivar offset GAIReachabilityChecker.host_ (+0x20)
  1001208e0  ldr     x0, [x19, x8]                            ; x0 = self->host_
  1001208e4  adrp    x8, #0x10041a000
  1001208e8  nop
  1001208ec  ldr     x1, [x8, #0x18]
  1001208f0  bl      _objc_msgSend                            ; [self->host_ UTF8String]
  1001208f4  mov     x1, x0
  1001208f8  mov     x0, x20
  1001208fc  blr     x24                                      ; call self->reachabilityApi_[+0x0]
  100120900  ldrsw   x8, [x23, #0x878]                        ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  100120904  str     x0, [x19, x8]                            ; self->reachability_ = self->reachabilityApi_[+0x0](…)
  100120908  cbz     x0, loc_100120998                        ; if (self->reachabilityApi_[+0x0](…) == 0)
  10012090c  stp     xzr, x19, [sp, #8]
  100120910  stp     xzr, xzr, [sp, #0x20]
  100120914  str     xzr, [sp, #0x18]
  100120918  ldr     x8, [x19, x22]                           ; x8 = self->reachabilityApi_
  10012091c  ldr     x8, [x8, #8]                             ; x8 = self->reachabilityApi_[+0x8]
  100120920  adr     x1, #0x1001209a0                         ; &-[GAIReachabilityChecker start]_block_invoke
  100120924  nop
  100120928  add     x2, sp, #8
  10012092c  blr     x8                                       ; call self->reachabilityApi_[+0x8]
  100120930  cbz     w0, loc_10012097c                        ; if (self->reachabilityApi_[+0x8](…) == 0)
  100120934  ldr     x8, [x19, x22]                           ; x8 = self->reachabilityApi_
  100120938  ldr     x23, [x8, #0x10]                         ; x23 = self->reachabilityApi_[+0x10]
  10012093c  ldr     x20, [x19, x21]                          ; x20 = self->reachability_
  100120940  bl      _CFRunLoopGetMain                        ; CFRunLoopGetMain(self->reachabilityApi_[+0x8](…))
  100120944  mov     x1, x0
  100120948  adrp    x8, #0x1003b0000
  10012094c  ldr     x8, [x8, #0x218]                         ; _kCFRunLoopCommonModes
  100120950  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopCommonModes[+0x0]
  100120954  mov     x0, x20
  100120958  blr     x23                                      ; call self->reachabilityApi_[+0x10]
  10012095c  cbz     w0, loc_10012097c                        ; if (self->reachabilityApi_[+0x10](…) == 0)
loc_100120960:
  100120960  mov     w0, #1
loc_100120964:
  100120964  sub     sp, x29, #0x30
  100120968  ldp     x24, x23, [sp], #0x10
  10012096c  ldp     x22, x21, [sp], #0x10
  100120970  ldp     x20, x19, [sp], #0x10
  100120974  ldp     x29, x30, [sp], #0x10
  100120978  ret
loc_10012097c:
  10012097c  ldr     x8, [x19, x22]                           ; x8 = self->reachabilityApi_
  100120980  ldr     x8, [x8, #0x20]                          ; x8 = self->reachabilityApi_[+0x20]
  100120984  ldr     x0, [x19, x21]                           ; x0 = self->reachability_
  100120988  blr     x8                                       ; call self->reachabilityApi_[+0x20]
  10012098c  mov     w0, #0
  100120990  str     xzr, [x19, x21]                          ; self->reachability_ = 0
  100120994  b       loc_100120964
loc_100120998:
  100120998  mov     w0, #0
  10012099c  b       loc_100120964

; ======================================================================
; -[GAIReachabilityChecker start]_block_invoke
; address 0x1001209a0  size 28  kind block
; ======================================================================
  1001209a0  mov     x8, x1
  1001209a4  adrp    x9, #0x10041c000
  1001209a8  nop
  1001209ac  ldr     x1, [x9, #0x180]
  1001209b0  mov     x0, x2
  1001209b4  mov     x2, x8
  1001209b8  b       _objc_msgSend                            ; [blockarg2 reachabilityFlagsChanged:blockarg1]

; ======================================================================
; -[GAIReachabilityChecker stop]
; address 0x1001209bc  size 140  kind objc
; ======================================================================
  1001209bc  stp     x29, x30, [sp, #-0x10]!
  1001209c0  mov     x29, sp
  1001209c4  stp     x20, x19, [sp, #-0x10]!
  1001209c8  stp     x22, x21, [sp, #-0x10]!
  1001209cc  stp     x24, x23, [sp, #-0x10]!
  1001209d0  mov     x19, x0
  1001209d4  adrp    x8, #0x100420000
  1001209d8  ldrsw   x21, [x8, #0x878]                        ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  1001209dc  ldr     x8, [x19, x21]                           ; x8 = self->reachability_
  1001209e0  cbz     x8, loc_100120a34                        ; if (self->reachability_ == 0)
  1001209e4  adrp    x8, #0x100420000
  1001209e8  ldrsw   x8, [x8, #0x880]                         ; ivar offset GAIReachabilityChecker.reachabilityStatus_ (+0x8)
  1001209ec  str     wzr, [x19, x8]                           ; self->reachabilityStatus_ = 0
  1001209f0  adrp    x8, #0x100420000
  1001209f4  ldrsw   x22, [x8, #0x874]                        ; ivar offset GAIReachabilityChecker.reachabilityApi_ (+0x10)
  1001209f8  ldr     x8, [x19, x22]                           ; x8 = self->reachabilityApi_
  1001209fc  ldr     x23, [x8, #0x18]                         ; x23 = self->reachabilityApi_[+0x18]
  100120a00  ldr     x20, [x19, x21]                          ; x20 = self->reachability_
  100120a04  bl      _CFRunLoopGetMain                        ; CFRunLoopGetMain(self, _cmd)
  100120a08  mov     x1, x0
  100120a0c  adrp    x8, #0x1003b0000
  100120a10  ldr     x8, [x8, #0x218]                         ; _kCFRunLoopCommonModes
  100120a14  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopCommonModes[+0x0]
  100120a18  mov     x0, x20
  100120a1c  blr     x23                                      ; call self->reachabilityApi_[+0x18]
  100120a20  ldr     x8, [x19, x22]                           ; x8 = self->reachabilityApi_
  100120a24  ldr     x8, [x8, #0x20]                          ; x8 = self->reachabilityApi_[+0x20]
  100120a28  ldr     x0, [x19, x21]                           ; x0 = self->reachability_
  100120a2c  blr     x8                                       ; call self->reachabilityApi_[+0x20]
  100120a30  str     xzr, [x19, x21]                          ; self->reachability_ = 0
loc_100120a34:
  100120a34  ldp     x24, x23, [sp], #0x10
  100120a38  ldp     x22, x21, [sp], #0x10
  100120a3c  ldp     x20, x19, [sp], #0x10
  100120a40  ldp     x29, x30, [sp], #0x10
  100120a44  ret

; ======================================================================
; -[GAIReachabilityChecker statusForFlags:]
; address 0x100120a48  size 60  kind objc
; ======================================================================
  100120a48  mov     w8, #1
  100120a4c  mov     w9, #0x28
  100120a50  and     w9, w2, w9
  100120a54  tst     w2, #0x10
  100120a58  mov     w10, #1
  100120a5c  mov     w11, #2
  100120a60  bfxil   w11, w2, #0x12, #1
  100120a64  csel    w12, w10, w11, ne
  100120a68  cmp     w9, #0
  100120a6c  csel    w9, w10, w12, eq
  100120a70  tst     x2, #4
  100120a74  csel    w9, w9, w11, ne
  100120a78  tst     x2, #2
  100120a7c  csel    w0, w8, w9, eq                           ; t1 = ((arg1 & 2) == 0 ? 1 : ((arg1 & 4) != 0 ? ((arg1 & 40) == 0 ? 1 : ((arg1 & 16) != 0 ? 1 : w11)) : w11))
  100120a80  ret

; ======================================================================
; -[GAIReachabilityChecker reachabilityFlagsChanged:]
; address 0x100120a84  size 324  kind objc
; ======================================================================
  100120a84  stp     x29, x30, [sp, #-0x10]!
  100120a88  mov     x29, sp
  100120a8c  stp     x20, x19, [sp, #-0x10]!
  100120a90  stp     x22, x21, [sp, #-0x10]!
  100120a94  stp     x24, x23, [sp, #-0x10]!
  100120a98  sub     sp, sp, #0x30
  100120a9c  mov     x20, x2
  100120aa0  mov     x19, x0
  100120aa4  adrp    x8, #0x10041d000
  100120aa8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100120aac  adrp    x8, #0x10041b000
  100120ab0  nop
  100120ab4  ldr     x1, [x8, #0xdc8]
  100120ab8  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120abc  mov     x21, x0
  100120ac0  adrp    x8, #0x10041d000
  100120ac4  ldr     x22, [x8, #0xf78]                        ; class NSString
  100120ac8  adrp    x8, #0x1003b7000
  100120acc  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100120ad0  ldr     x23, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100120ad4  adrp    x8, #0x1003b7000
  100120ad8  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100120adc  ldr     x24, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100120ae0  adrp    x8, #0x10041b000
  100120ae4  nop
  100120ae8  ldr     x1, [x8, #0x580]
  100120aec  adrp    x0, #0x1003c5000
  100120af0  add     x0, x0, #0x470                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100120af4  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100120af8  adrp    x8, #0x100416000
  100120afc  nop
  100120b00  ldr     x1, [x8, #0xee8]
  100120b04  mov     x8, #0x9f
  100120b08  adrp    x9, #0x100390000
  100120b0c  add     x9, x9, #0xdde                           ; "-[GAIReachabilityChecker reachabilityFlagsChanged:]"
  100120b10  stp     x8, x20, [sp, #0x20]
  100120b14  stp     x9, x0, [sp, #0x10]
  100120b18  stp     x23, x24, [sp]
  100120b1c  adrp    x2, #0x1003c5000
  100120b20  add     x2, x2, #0x4d0                           ; @"%@ %@ %s (%@:%d): Reachability flags update: %#08X"
  100120b24  mov     x0, x22
  100120b28  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Reachability flags update: %#08X", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker reachabilityFlagsChanged:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 159, arg1]
  100120b2c  mov     x2, x0
  100120b30  adrp    x8, #0x10041b000
  100120b34  nop
  100120b38  ldr     x1, [x8, #0xea0]
  100120b3c  mov     x0, x21
  100120b40  bl      _objc_msgSend                            ; [[GAI sharedLogger] info:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Reachability flags update: %#08X", @"GoogleAnalytics", @"3.09", "-[GAIReachabilityChecker reachabilityFlagsChanged:]", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 159, arg1]]
  100120b44  adrp    x8, #0x10041c000
  100120b48  nop
  100120b4c  ldr     x1, [x8, #0x170]
  100120b50  mov     x0, x19
  100120b54  mov     x2, x20
  100120b58  bl      _objc_msgSend                            ; [self statusForFlags:arg1]
  100120b5c  mov     x8, x0
  100120b60  adrp    x9, #0x100420000
  100120b64  ldrsw   x9, [x9, #0x880]                         ; ivar offset GAIReachabilityChecker.reachabilityStatus_ (+0x8)
  100120b68  ldr     w10, [x19, x9]                           ; w10 = self->reachabilityStatus_
  100120b6c  cmp     w10, w8
  100120b70  b.ne    loc_100120b8c                            ; if (self->reachabilityStatus_ != [self statusForFlags:arg1])
  100120b74  sub     sp, x29, #0x30
  100120b78  ldp     x24, x23, [sp], #0x10
  100120b7c  ldp     x22, x21, [sp], #0x10
  100120b80  ldp     x20, x19, [sp], #0x10
  100120b84  ldp     x29, x30, [sp], #0x10
  100120b88  ret
loc_100120b8c:
  100120b8c  str     w8, [x19, x9]                            ; self->reachabilityStatus_ = [self statusForFlags:arg1]
  100120b90  adrp    x9, #0x100420000
  100120b94  ldrsw   x9, [x9, #0x87c]                         ; ivar offset GAIReachabilityChecker.delegate_ (+0x28)
  100120b98  adrp    x10, #0x10041c000
  100120b9c  nop
  100120ba0  ldr     x0, [x19, x9]                            ; x0 = self->delegate_
  100120ba4  ldr     x1, [x10, #0x178]
  100120ba8  mov     x2, x19
  100120bac  mov     x3, x8
  100120bb0  sub     sp, x29, #0x30
  100120bb4  ldp     x24, x23, [sp], #0x10
  100120bb8  ldp     x22, x21, [sp], #0x10
  100120bbc  ldp     x20, x19, [sp], #0x10
  100120bc0  ldp     x29, x30, [sp], #0x10
  100120bc4  b       _objc_msgSend                            ; [self->delegate_ reachability:self statusChanged:[self statusForFlags:arg1]]

; ======================================================================
; -[GAIReachabilityChecker reachability]
; address 0x100120bc8  size 16  kind objc
; ======================================================================
  100120bc8  adrp    x8, #0x100420000
  100120bcc  ldrsw   x8, [x8, #0x878]                         ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  100120bd0  ldr     x0, [x0, x8]                             ; x0 = self->reachability_
  100120bd4  ret

; ======================================================================
; -[GAIReachabilityChecker setReachability:]
; address 0x100120bd8  size 16  kind objc
; ======================================================================
  100120bd8  adrp    x8, #0x100420000
  100120bdc  ldrsw   x8, [x8, #0x878]                         ; ivar offset GAIReachabilityChecker.reachability_ (+0x18)
  100120be0  str     x2, [x0, x8]                             ; self->reachability_ = arg1
  100120be4  ret

; ======================================================================
; -[GAIReachabilityChecker reachabilityStatus]
; address 0x100120be8  size 16  kind objc
; ======================================================================
  100120be8  adrp    x8, #0x100420000
  100120bec  ldrsw   x8, [x8, #0x880]                         ; ivar offset GAIReachabilityChecker.reachabilityStatus_ (+0x8)
  100120bf0  ldr     w0, [x0, x8]                             ; w0 = self->reachabilityStatus_
  100120bf4  ret

; ======================================================================
; -[GAIReachabilityChecker setReachabilityStatus:]
; address 0x100120bf8  size 16  kind objc
; ======================================================================
  100120bf8  adrp    x8, #0x100420000
  100120bfc  ldrsw   x8, [x8, #0x880]                         ; ivar offset GAIReachabilityChecker.reachabilityStatus_ (+0x8)
  100120c00  str     w2, [x0, x8]                             ; self->reachabilityStatus_ = arg1
  100120c04  ret

; ======================================================================
; -[GAIReachabilityChecker host]
; address 0x100120c08  size 16  kind objc
; ======================================================================
  100120c08  mov     w3, #0
  100120c0c  adrp    x8, #0x100420000
  100120c10  ldrsw   x2, [x8, #0x884]                         ; ivar offset GAIReachabilityChecker.host_ (+0x20)
  100120c14  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[GAIReachabilityChecker setHost:]
; address 0x100120c18  size 28  kind objc
; ======================================================================
  100120c18  mov     x8, x2
  100120c1c  adrp    x9, #0x100420000
  100120c20  ldrsw   x2, [x9, #0x884]                         ; ivar offset GAIReachabilityChecker.host_ (+0x20)
  100120c24  mov     w5, #1
  100120c28  mov     x3, x8
  100120c2c  mov     w4, #0
  100120c30  b       _objc_setProperty                        ; objc_setProperty(self, _cmd, x2, arg1)

; ======================================================================
; -[GAIReachabilityChecker delegate]
; address 0x100120c34  size 16  kind objc
; ======================================================================
  100120c34  adrp    x8, #0x100420000
  100120c38  ldrsw   x8, [x8, #0x87c]                         ; ivar offset GAIReachabilityChecker.delegate_ (+0x28)
  100120c3c  ldr     x0, [x0, x8]                             ; x0 = self->delegate_
  100120c40  ret

; ======================================================================
; sub_100120c44
; address 0x100120c44  size 64  kind sub
; ======================================================================
  100120c44  stp     x29, x30, [sp, #-0x10]!
  100120c48  mov     x29, sp
  100120c4c  bl      _NSGetUncaughtExceptionHandler           ; NSGetUncaughtExceptionHandler(a0, a1, a2, a3)
  100120c50  adr     x8, #0x100120c84                         ; &sub_100120c84
  100120c54  nop
  100120c58  cmp     x0, x8
  100120c5c  b.eq    loc_100120c7c                            ; if (NSGetUncaughtExceptionHandler(a0, a1, a2, a3) == &sub_100120c84)
  100120c60  adrp    x8, #0x10042d000
  100120c64  add     x8, x8, #0xc80                           ; &g_10042dc80
  100120c68  str     x0, [x8, #8]                             ; store g_10042dc88 = NSGetUncaughtExceptionHandler(a0, a1, a2, a3)
  100120c6c  adr     x0, #0x100120c84                         ; &sub_100120c84
  100120c70  nop
  100120c74  ldp     x29, x30, [sp], #0x10
  100120c78  b       _NSSetUncaughtExceptionHandler           ; NSSetUncaughtExceptionHandler(&sub_100120c84)
loc_100120c7c:
  100120c7c  ldp     x29, x30, [sp], #0x10
  100120c80  ret

; ======================================================================
; sub_100120c84
; address 0x100120c84  size 956  kind sub
; ======================================================================
  100120c84  stp     x29, x30, [sp, #-0x10]!
  100120c88  mov     x29, sp
  100120c8c  stp     x20, x19, [sp, #-0x10]!
  100120c90  stp     x22, x21, [sp, #-0x10]!
  100120c94  stp     x24, x23, [sp, #-0x10]!
  100120c98  stp     x26, x25, [sp, #-0x10]!
  100120c9c  stp     x28, x27, [sp, #-0x10]!
  100120ca0  stp     d9, d8, [sp, #-0x10]!
  100120ca4  sub     sp, sp, #0x100
  100120ca8  mov     x19, x0
  100120cac  adrp    x24, #0x1003b0000
  100120cb0  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100120cb4  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  100120cb8  stur    x8, [x29, #-0x68]
  100120cbc  adrp    x2, #0x10042d000
  100120cc0  add     x2, x2, #0xc80                           ; &g_10042dc80
  100120cc4  mov     w1, #1
  100120cc8  mov     w0, #0
  100120ccc  bl      _OSAtomicCompareAndSwap32Barrier         ; OSAtomicCompareAndSwap32Barrier(0, 1, &g_10042dc80, a3)
  100120cd0  tbz     w0, #0, loc_100120f68                    ; if (!(OSAtomicCompareAndSwap32Barrier(0, 1, &g_10042dc80, a3) & 1))
  100120cd4  cbz     x19, loc_100121008                       ; if (a0 == 0)
  100120cd8  adrp    x20, #0x10041d000
  100120cdc  ldr     x0, [x20, #0xfe0]                        ; class GAI
  100120ce0  adrp    x8, #0x10041b000
  100120ce4  nop
  100120ce8  ldr     x1, [x8, #0xdc8]
  100120cec  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120cf0  mov     x21, x0
  100120cf4  adrp    x8, #0x10041d000
  100120cf8  ldr     x22, [x8, #0xf78]                        ; class NSString
  100120cfc  adrp    x8, #0x1003b7000
  100120d00  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100120d04  ldr     x23, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100120d08  adrp    x8, #0x1003b7000
  100120d0c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100120d10  ldr     x24, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100120d14  adrp    x8, #0x10041b000
  100120d18  nop
  100120d1c  ldr     x1, [x8, #0x580]
  100120d20  adrp    x0, #0x1003c5000
  100120d24  add     x0, x0, #0x510                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100120d28  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100120d2c  adrp    x8, #0x100416000
  100120d30  nop
  100120d34  ldr     x1, [x8, #0xee8]
  100120d38  mov     x8, #0x31
  100120d3c  adrp    x9, #0x100390000
  100120d40  add     x9, x9, #0xf2b                           ; "void GAIUncaughtExceptionHandler(NSException *)"
  100120d44  stp     x8, x19, [sp, #0x20]
  100120d48  stp     x9, x0, [sp, #0x10]
  100120d4c  stp     x23, x24, [sp]
  100120d50  adrp    x2, #0x1003c5000
  100120d54  add     x2, x2, #0x530                           ; @"%@ %@ %s (%@:%d): Uncaught exception: %@"
  100120d58  mov     x0, x22
  100120d5c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Uncaught exception: %@", @"GoogleAnalytics", @"3.09", "void GAIUncaughtExceptionHandler(NSException *)", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 49, a0]
  100120d60  mov     x2, x0
  100120d64  adrp    x8, #0x10041b000
  100120d68  nop
  100120d6c  ldr     x1, [x8, #0xe90]
  100120d70  mov     x0, x21
  100120d74  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Uncaught exception: %@", @"GoogleAnalytics", @"3.09", "void GAIUncaughtExceptionHandler(NSException *)", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 49, a0]]
  100120d78  adrp    x8, #0x10041e000
  100120d7c  ldr     x0, [x8, #0x580]                         ; class GAIExceptionParser
  100120d80  adrp    x8, #0x10041b000
  100120d84  nop
  100120d88  ldr     x1, [x8, #0xd78]
  100120d8c  mov     x3, #0x96
  100120d90  mov     x2, x19
  100120d94  bl      _objc_msgSend                            ; [GAIExceptionParser exceptionDescription:a0 withMaxLength:150]
  100120d98  mov     x21, x0
  100120d9c  adrp    x8, #0x10041d000
  100120da0  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100120da4  nop
  100120da8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100120dac  adrp    x8, #0x100417000
  100120db0  nop
  100120db4  ldr     x1, [x8, #0xb8]
  100120db8  mov     w2, #1
  100120dbc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100120dc0  mov     x3, x0
  100120dc4  adrp    x8, #0x10041c000
  100120dc8  nop
  100120dcc  ldr     x1, [x8, #0x250]
  100120dd0  mov     x0, x22
  100120dd4  mov     x2, x21
  100120dd8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder gai_exceptionWithDescription:[GAIExceptionParser exceptionDescription:a0 withMaxLength:150] withFatal:[NSNumber numberWithBool:1]]
  100120ddc  adrp    x8, #0x100417000
  100120de0  nop
  100120de4  ldr     x1, [x8, #0x310]
  100120de8  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder gai_exceptionWithDescription:[GAIExceptionParser exceptionDescription:a0 withMaxLength:150] withFatal:[NSNumber numberWithBool:1]] build]
  100120dec  mov     x21, x0
  100120df0  ldr     x0, [x20, #0xfe0]                        ; class GAI
  100120df4  adrp    x8, #0x100416000
  100120df8  nop
  100120dfc  ldr     x22, [x8, #0xac0]
  100120e00  mov     x1, x22
  100120e04  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100120e08  adrp    x8, #0x100417000
  100120e0c  nop
  100120e10  ldr     x1, [x8, #0x2f8]
  100120e14  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100120e18  adrp    x8, #0x10041b000
  100120e1c  nop
  100120e20  ldr     x1, [x8, #0xed8]
  100120e24  mov     x2, x21
  100120e28  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] gai_send:[[GAIDictionaryBuilder gai_exceptionWithDescription:[GAIExceptionParser exceptionDescription:a0 withMaxLength:150] withFatal:[NSNumber numberWithBool:1]] build]]
  100120e2c  ldr     x0, [x20, #0xfe0]                        ; class GAI
  100120e30  mov     x1, x22
  100120e34  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100120e38  adrp    x8, #0x10041b000
  100120e3c  nop
  100120e40  ldr     x1, [x8, #0xac0]
  100120e44  bl      _objc_msgSend                            ; [[GAI sharedInstance] dispatch]
  100120e48  bl      _CFRunLoopGetCurrent                     ; CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])
  100120e4c  bl      _CFRunLoopCopyAllModes                   ; CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch]))
  100120e50  mov     x21, x0
  100120e54  adrp    x28, #0x10041e000
  100120e58  ldr     x0, [x28, #0x38]                         ; class NSDate
  100120e5c  adrp    x8, #0x100419000
  100120e60  nop
  100120e64  ldr     x22, [x8, #0xb40]
  100120e68  mov     x1, x22
  100120e6c  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  100120e70  fmov    d1, #5.00000000
  100120e74  adrp    x8, #0x100416000
  100120e78  nop
  100120e7c  fadd    d9, d0, d1
  100120e80  ldr     x23, [x8, #0xe00]
  100120e84  sub     x24, x29, #0xa8
  100120e88  add     x25, sp, #0x38
  100120e8c  adrp    x8, #0x100181000
  100120e90  ldr     d8, [x8, #0xae0]                         ; d8 = 0.01
loc_100120e94:
  100120e94  stp     xzr, xzr, [x29, #-0x78]
  100120e98  stp     xzr, xzr, [x29, #-0x88]
  100120e9c  stp     xzr, xzr, [x29, #-0x98]
  100120ea0  stp     xzr, xzr, [x29, #-0xa8]
  100120ea4  mov     x4, #0x10
  100120ea8  mov     x0, x21
  100120eac  mov     x1, x23
  100120eb0  mov     x2, x24
  100120eb4  mov     x3, x25
  100120eb8  bl      _objc_msgSend                            ; [CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])) countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x38] count:16]
  100120ebc  mov     x26, x0
  100120ec0  cbz     x26, loc_100120f28                       ; if ([CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])) countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x38] count:16] == 0)
  100120ec4  ldur    x8, [x29, #-0x98]
  100120ec8  ldr     x20, [x8]
loc_100120ecc:
  100120ecc  mov     x27, #0
loc_100120ed0:
  100120ed0  ldur    x8, [x29, #-0x98]
  100120ed4  ldr     x8, [x8]
  100120ed8  cmp     x8, x20
  100120edc  b.eq    loc_100120ee8                            ; if (x8 == x20)
  100120ee0  mov     x0, x21
  100120ee4  bl      _objc_enumerationMutation                ; objc_enumerationMutation(CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])))
loc_100120ee8:
  100120ee8  ldur    x8, [x29, #-0xa0]
  100120eec  ldr     x0, [x8, x27, lsl #3]
  100120ef0  mov     w1, #0
  100120ef4  mov     v0.16b, v8.16b
  100120ef8  bl      _CFRunLoopRunInMode                      ; CFRunLoopRunInMode(x0, 0)
  100120efc  add     x27, x27, #1
  100120f00  cmp     x27, x26
  100120f04  b.lo    loc_100120ed0                            ; if ((x27 + 1) <u [CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])) countByEnumeratingWithState:&x29[-0xa8] obj…)
  100120f08  mov     x4, #0x10
  100120f0c  mov     x0, x21
  100120f10  mov     x1, x23
  100120f14  mov     x2, x24
  100120f18  mov     x3, x25
  100120f1c  bl      _objc_msgSend                            ; [CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])) countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x38] count:16]
  100120f20  mov     x26, x0
  100120f24  cbnz    x26, loc_100120ecc                       ; if ([CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])) countByEnumeratingWithState:&x29[-0xa8] objects:&sp[0x38] count:16] != 0)
loc_100120f28:
  100120f28  ldr     x0, [x28, #0x38]                         ; class NSDate
  100120f2c  mov     x1, x22
  100120f30  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  100120f34  fcmp    d0, d9
  100120f38  b.mi    loc_100120e94                            ; if ([NSDate timeIntervalSinceReferenceDate] < ([NSDate timeIntervalSinceReferenceDate] + 5))
  100120f3c  mov     x0, x21
  100120f40  bl      _CFRelease                               ; CFRelease(CFRunLoopCopyAllModes(CFRunLoopGetCurrent([[GAI sharedInstance] dispatch])))
  100120f44  adrp    x8, #0x10042d000
  100120f48  add     x8, x8, #0xc80                           ; &g_10042dc80
  100120f4c  ldr     x8, [x8, #8]                             ; load g_10042dc88
  100120f50  adrp    x24, #0x1003b0000
  100120f54  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100120f58  cbz     x8, loc_100121008                        ; if (g_10042dc88 == 0)
  100120f5c  mov     x0, x19
  100120f60  blr     x8                                       ; call g_10042dc88
  100120f64  b       loc_100121008
loc_100120f68:
  100120f68  adrp    x8, #0x10041d000
  100120f6c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100120f70  adrp    x8, #0x10041b000
  100120f74  nop
  100120f78  ldr     x1, [x8, #0xdc8]
  100120f7c  bl      _objc_msgSend                            ; [GAI sharedLogger]
  100120f80  mov     x20, x0
  100120f84  adrp    x8, #0x10041d000
  100120f88  ldr     x21, [x8, #0xf78]                        ; class NSString
  100120f8c  adrp    x8, #0x1003b7000
  100120f90  add     x8, x8, #0xd70                           ; &d_1003b7d70
  100120f94  ldr     x22, [x8]                                ; [&d_1003b7d70] -> @"GoogleAnalytics"
  100120f98  adrp    x8, #0x1003b7000
  100120f9c  add     x8, x8, #0xd78                           ; &d_1003b7d78
  100120fa0  ldr     x23, [x8]                                ; [&d_1003b7d78] -> @"3.09"
  100120fa4  adrp    x8, #0x10041b000
  100120fa8  nop
  100120fac  ldr     x1, [x8, #0x580]
  100120fb0  adrp    x0, #0x1003c5000
  100120fb4  add     x0, x0, #0x510                           ; @"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…"
  100120fb8  bl      _objc_msgSend                            ; [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branches/tagmanager…" lastPathComponent]
  100120fbc  adrp    x8, #0x100416000
  100120fc0  nop
  100120fc4  ldr     x1, [x8, #0xee8]
  100120fc8  mov     x8, #0x2d
  100120fcc  adrp    x9, #0x100390000
  100120fd0  add     x9, x9, #0xf2b                           ; "void GAIUncaughtExceptionHandler(NSException *)"
  100120fd4  stp     x8, x19, [sp, #0x20]
  100120fd8  stp     x9, x0, [sp, #0x10]
  100120fdc  stp     x22, x23, [sp]
  100120fe0  adrp    x2, #0x1003c5000
  100120fe4  add     x2, x2, #0x4f0                           ; @"%@ %@ %s (%@:%d): Bailing on multiple uncaught exceptions: %@"
  100120fe8  mov     x0, x21
  100120fec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ %@ %s (%@:%d): Bailing on multiple uncaught exceptions: %@", @"GoogleAnalytics", @"3.09", "void GAIUncaughtExceptionHandler(NSException *)", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 45, a0]
  100120ff0  mov     x2, x0
  100120ff4  adrp    x8, #0x10041b000
  100120ff8  nop
  100120ffc  ldr     x1, [x8, #0xe90]
  100121000  mov     x0, x20
  100121004  bl      _objc_msgSend                            ; [[GAI sharedLogger] warning:[NSString stringWithFormat:@"%@ %@ %s (%@:%d): Bailing on multiple uncaught exceptions: %@", @"GoogleAnalytics", @"3.09", "void GAIUncaughtExceptionHandler(NSException *)", [@"/Volumes/BuildData/pulse-data/agents/wpyo25.hot/recipes/526991262/base/branch…, 45, a0]]
loc_100121008:
  100121008  ldr     x8, [x24]                                ; x8 = ___stack_chk_guard[+0x0]
  10012100c  ldur    x9, [x29, #-0x68]
  100121010  sub     x8, x8, x9
  100121014  cbnz    x8, loc_10012103c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100121018  sub     sp, x29, #0x60
  10012101c  ldp     d9, d8, [sp], #0x10
  100121020  ldp     x28, x27, [sp], #0x10
  100121024  ldp     x26, x25, [sp], #0x10
  100121028  ldp     x24, x23, [sp], #0x10
  10012102c  ldp     x22, x21, [sp], #0x10
  100121030  ldp     x20, x19, [sp], #0x10
  100121034  ldp     x29, x30, [sp], #0x10
  100121038  ret
loc_10012103c:
  10012103c  bl      ___stack_chk_fail                        ; stack_chk_fail()

; ======================================================================
; sub_100121040
; address 0x100121040  size 56  kind sub
; ======================================================================
  100121040  stp     x29, x30, [sp, #-0x10]!
  100121044  mov     x29, sp
  100121048  bl      _NSGetUncaughtExceptionHandler           ; NSGetUncaughtExceptionHandler(a0, a1, a2, a3)
  10012104c  adr     x8, #0x100120c84                         ; &sub_100120c84
  100121050  nop
  100121054  cmp     x0, x8
  100121058  b.eq    loc_100121064                            ; if (NSGetUncaughtExceptionHandler(a0, a1, a2, a3) == &sub_100120c84)
  10012105c  ldp     x29, x30, [sp], #0x10
  100121060  ret
loc_100121064:
  100121064  adrp    x8, #0x10042d000
  100121068  add     x8, x8, #0xc80                           ; &g_10042dc80
  10012106c  ldr     x0, [x8, #8]                             ; load g_10042dc88
  100121070  ldp     x29, x30, [sp], #0x10
  100121074  b       _NSSetUncaughtExceptionHandler           ; NSSetUncaughtExceptionHandler(g_10042dc88)
