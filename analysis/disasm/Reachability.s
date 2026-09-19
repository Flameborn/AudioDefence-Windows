// unit Reachability — 13 functions
//   0x1000924c0     196  +[Reachability reachabilityWithHostName:]
//   0x100092584     128  +[Reachability reachabilityWithAddress:]
//   0x100092604     104  +[Reachability reachabilityForInternetConnection]
//   0x10009266c     132  +[Reachability reachabilityForLocalWiFi]
//   0x1000926f0     128  -[Reachability startNotifier]
//   0x100092770     156  -[Reachability startNotifier]_block_invoke
//   0x10009280c      76  -[Reachability stopNotifier]
//   0x100092858     160  -[Reachability dealloc]
//   0x1000928f8      60  -[Reachability localWiFiStatusForFlags:]
//   0x100092934     168  sub_100092934
//   0x1000929dc     104  -[Reachability networkStatusForFlags:]
//   0x100092a44      64  -[Reachability connectionRequired]
//   0x100092a84     120  -[Reachability currentReachabilityStatus]

; ======================================================================
; +[Reachability reachabilityWithHostName:]
; address 0x1000924c0  size 196  kind objc
; ======================================================================
  1000924c0  stp     x22, x21, [sp, #-0x30]!
  1000924c4  stp     x20, x19, [sp, #0x10]
  1000924c8  stp     x29, x30, [sp, #0x20]
  1000924cc  add     x29, sp, #0x20
  1000924d0  mov     x20, x0
  1000924d4  mov     x0, x2
  1000924d8  bl      _objc_retain
  1000924dc  bl      _objc_retainAutorelease
  1000924e0  mov     x19, x0
  1000924e4  adrp    x8, #0x10041a000
  1000924e8  nop
  1000924ec  ldr     x1, [x8, #0x18]
  1000924f0  bl      _objc_msgSend                            ; [arg1 UTF8String]
  1000924f4  mov     x1, x0
  1000924f8  mov     x0, #0
  1000924fc  bl      _SCNetworkReachabilityCreateWithName     ; SCNetworkReachabilityCreateWithName(0, [arg1 UTF8String])
  100092500  mov     x21, x0
  100092504  cbz     x21, loc_100092550                       ; if (SCNetworkReachabilityCreateWithName(0, [arg1 UTF8String]) == 0)
  100092508  adrp    x8, #0x100416000
  10009250c  nop
  100092510  ldr     x1, [x8, #0xac8]
  100092514  mov     x0, x20
  100092518  bl      _objc_msgSend                            ; [Reachability alloc]
  10009251c  adrp    x8, #0x100416000
  100092520  nop
  100092524  ldr     x1, [x8, #0xab8]
  100092528  bl      _objc_msgSend                            ; [[Reachability alloc] init]
  10009252c  mov     x20, x0
  100092530  cbz     x20, loc_100092554                       ; if ([[Reachability alloc] init] == 0)
  100092534  adrp    x8, #0x10041f000
  100092538  ldrsw   x8, [x8, #0xf80]                         ; ivar offset Reachability._reachabilityRef (+0x10)
  10009253c  str     x21, [x20, x8]                           ; [[Reachability alloc] init]->_reachabilityRef = SCNetworkReachabilityCreateWithName(0, [arg1 UTF8String])
  100092540  adrp    x8, #0x10041f000
  100092544  ldrsw   x8, [x8, #0xf84]                         ; ivar offset Reachability._alwaysReturnLocalWiFiStatus (+0x8)
  100092548  strb    wzr, [x20, x8]                           ; [[Reachability alloc] init]->_alwaysReturnLocalWiFiStatus = 0
  10009254c  b       loc_100092554
loc_100092550:
  100092550  mov     x20, #0
loc_100092554:
  100092554  mov     x0, x19
  100092558  bl      _objc_release
  10009255c  mov     x0, x20
  100092560  ldp     x29, x30, [sp, #0x20]
  100092564  ldp     x20, x19, [sp, #0x10]
  100092568  ldp     x22, x21, [sp], #0x30
  10009256c  b       _objc_autoreleaseReturnValue
  100092570  mov     x20, x0
  100092574  mov     x0, x19
  100092578  bl      _objc_release
  10009257c  mov     x0, x20
  100092580  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[Reachability reachabilityWithAddress:]
; address 0x100092584  size 128  kind objc
; ======================================================================
  100092584  stp     x20, x19, [sp, #-0x20]!
  100092588  stp     x29, x30, [sp, #0x10]
  10009258c  add     x29, sp, #0x10
  100092590  mov     x20, x0
  100092594  adrp    x8, #0x1003b0000
  100092598  ldr     x8, [x8, #0x1f0]                         ; _kCFAllocatorDefault
  10009259c  ldr     x0, [x8]                                 ; x0 = _kCFAllocatorDefault[+0x0]
  1000925a0  mov     x1, x2
  1000925a4  bl      _SCNetworkReachabilityCreateWithAddress  ; SCNetworkReachabilityCreateWithAddress(_kCFAllocatorDefault[+0x0], arg1, arg1)
  1000925a8  mov     x19, x0
  1000925ac  cbz     x19, loc_1000925f4                       ; if (SCNetworkReachabilityCreateWithAddress(_kCFAllocatorDefault[+0x0], arg1, arg1) == 0)
  1000925b0  adrp    x8, #0x100416000
  1000925b4  nop
  1000925b8  ldr     x1, [x8, #0xac8]
  1000925bc  mov     x0, x20
  1000925c0  bl      _objc_msgSend                            ; [Reachability alloc]
  1000925c4  adrp    x8, #0x100416000
  1000925c8  nop
  1000925cc  ldr     x1, [x8, #0xab8]
  1000925d0  bl      _objc_msgSend                            ; [[Reachability alloc] init]
  1000925d4  cbz     x0, loc_1000925f8                        ; if ([[Reachability alloc] init] == 0)
  1000925d8  adrp    x8, #0x10041f000
  1000925dc  ldrsw   x8, [x8, #0xf80]                         ; ivar offset Reachability._reachabilityRef (+0x10)
  1000925e0  str     x19, [x0, x8]                            ; [[Reachability alloc] init]->_reachabilityRef = SCNetworkReachabilityCreateWithAddress(_kCFAllocatorDefault[+0x0], arg1, arg1)
  1000925e4  adrp    x8, #0x10041f000
  1000925e8  ldrsw   x8, [x8, #0xf84]                         ; ivar offset Reachability._alwaysReturnLocalWiFiStatus (+0x8)
  1000925ec  strb    wzr, [x0, x8]                            ; [[Reachability alloc] init]->_alwaysReturnLocalWiFiStatus = 0
  1000925f0  b       loc_1000925f8
loc_1000925f4:
  1000925f4  mov     x0, #0
loc_1000925f8:
  1000925f8  ldp     x29, x30, [sp, #0x10]
  1000925fc  ldp     x20, x19, [sp], #0x20
  100092600  b       _objc_autoreleaseReturnValue

; ======================================================================
; +[Reachability reachabilityForInternetConnection]
; address 0x100092604  size 104  kind objc
; ======================================================================
  100092604  stp     x20, x19, [sp, #-0x20]!
  100092608  stp     x29, x30, [sp, #0x10]
  10009260c  add     x29, sp, #0x10
  100092610  sub     sp, sp, #0x20
  100092614  adrp    x19, #0x1003b0000
  100092618  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10009261c  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100092620  str     x19, [sp, #0x18]
  100092624  stp     xzr, xzr, [sp, #8]
  100092628  mov     w8, #0x10
  10009262c  strb    w8, [sp, #8]
  100092630  mov     w8, #2
  100092634  strb    w8, [sp, #9]
  100092638  adrp    x8, #0x10041a000
  10009263c  nop
  100092640  ldr     x1, [x8, #0x20]
  100092644  add     x2, sp, #8
  100092648  bl      _objc_msgSend                            ; [Reachability reachabilityWithAddress:&sp[0x8]]
  10009264c  ldr     x8, [sp, #0x18]
  100092650  sub     x8, x19, x8
  100092654  cbnz    x8, loc_100092668                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100092658  sub     sp, x29, #0x10
  10009265c  ldp     x29, x30, [sp, #0x10]
  100092660  ldp     x20, x19, [sp], #0x20
  100092664  ret
loc_100092668:
  100092668  bl      ___stack_chk_fail                        ; stack_chk_fail([Reachability reachabilityWithAddress:&sp[0x8]])

; ======================================================================
; +[Reachability reachabilityForLocalWiFi]
; address 0x10009266c  size 132  kind objc
; ======================================================================
  10009266c  stp     x20, x19, [sp, #-0x20]!
  100092670  stp     x29, x30, [sp, #0x10]
  100092674  add     x29, sp, #0x10
  100092678  sub     sp, sp, #0x20
  10009267c  adrp    x19, #0x1003b0000
  100092680  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  100092684  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100092688  str     x19, [sp, #0x18]
  10009268c  stp     xzr, xzr, [sp, #8]
  100092690  mov     w8, #0x10
  100092694  strb    w8, [sp, #8]
  100092698  mov     w8, #2
  10009269c  strb    w8, [sp, #9]
  1000926a0  mov     w8, #0xfea9
  1000926a4  str     w8, [sp, #0xc]
  1000926a8  adrp    x8, #0x10041a000
  1000926ac  nop
  1000926b0  ldr     x1, [x8, #0x20]
  1000926b4  add     x2, sp, #8
  1000926b8  bl      _objc_msgSend                            ; [Reachability reachabilityWithAddress:&sp[0x8]]
  1000926bc  cbz     x0, loc_1000926d0                        ; if ([Reachability reachabilityWithAddress:&sp[0x8]] == 0)
  1000926c0  adrp    x8, #0x10041f000
  1000926c4  ldrsw   x8, [x8, #0xf84]                         ; ivar offset Reachability._alwaysReturnLocalWiFiStatus (+0x8)
  1000926c8  mov     w9, #1
  1000926cc  strb    w9, [x0, x8]                             ; [Reachability reachabilityWithAddress:&sp[0x8]]->_alwaysReturnLocalWiFiStatus = 1
loc_1000926d0:
  1000926d0  ldr     x8, [sp, #0x18]
  1000926d4  sub     x8, x19, x8
  1000926d8  cbnz    x8, loc_1000926ec                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000926dc  sub     sp, x29, #0x10
  1000926e0  ldp     x29, x30, [sp, #0x10]
  1000926e4  ldp     x20, x19, [sp], #0x20
  1000926e8  ret
loc_1000926ec:
  1000926ec  bl      ___stack_chk_fail                        ; stack_chk_fail([Reachability reachabilityWithAddress:&sp[0x8]])

; ======================================================================
; -[Reachability startNotifier]
; address 0x1000926f0  size 128  kind objc
; ======================================================================
  1000926f0  stp     x20, x19, [sp, #-0x20]!
  1000926f4  stp     x29, x30, [sp, #0x10]
  1000926f8  add     x29, sp, #0x10
  1000926fc  sub     sp, sp, #0x30
  100092700  mov     x19, x0
  100092704  stp     xzr, x19, [sp, #8]
  100092708  stp     xzr, xzr, [sp, #0x20]
  10009270c  str     xzr, [sp, #0x18]
  100092710  adrp    x8, #0x10041f000
  100092714  ldrsw   x20, [x8, #0xf80]                        ; ivar offset Reachability._reachabilityRef (+0x10)
  100092718  ldr     x0, [x19, x20]                           ; x0 = self->_reachabilityRef
  10009271c  adr     x1, #0x100092770                         ; &-[Reachability startNotifier]_block_invoke
  100092720  nop
  100092724  add     x2, sp, #8
  100092728  bl      _SCNetworkReachabilitySetCallback        ; SCNetworkReachabilitySetCallback(self->_reachabilityRef, &-[Reachability startNotifier]_block_invoke, &sp[0x8])
  10009272c  cbz     w0, loc_10009275c                        ; if (SCNetworkReachabilitySetCallback(self->_reachabilityRef, &-[Reachability startNotifier]_block_invoke, &sp[0x8]) == 0)
  100092730  ldr     x19, [x19, x20]                          ; x19 = self->_reachabilityRef
  100092734  bl      _CFRunLoopGetCurrent                     ; CFRunLoopGetCurrent(SCNetworkReachabilitySetCallback(self->_reachabilityRef, &-[Reachability startNotifier]_block_invoke, &sp[0x8]))
  100092738  mov     x1, x0
  10009273c  adrp    x8, #0x1003b0000
  100092740  ldr     x8, [x8, #0x220]                         ; _kCFRunLoopDefaultMode
  100092744  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopDefaultMode[+0x0]
  100092748  mov     x0, x19
  10009274c  bl      _SCNetworkReachabilityScheduleWithRunLoop ; SCNetworkReachabilityScheduleWithRunLoop(self->_reachabilityRef, CFRunLoopGetCurrent(SCNetworkReachabilitySetCallback(self->_reachabilityRef, &-[Reachability startNotifier]_block_invoke, &sp[0x8])), _kCFRunLoopDefaultMode[+0x0])
  100092750  cmp     w0, #0
  100092754  cset    w0, ne                                   ; t1 = (SCNetworkReachabilityScheduleWithRunLoop(self->_reachabilityRef, CFRunLoopGetCurrent(SCNetworkReachabilitySetCallback(se… != 0)
  100092758  b       loc_100092760
loc_10009275c:
  10009275c  mov     w0, #0
loc_100092760:
  100092760  sub     sp, x29, #0x10
  100092764  ldp     x29, x30, [sp, #0x10]
  100092768  ldp     x20, x19, [sp], #0x20
  10009276c  ret

; ======================================================================
; -[Reachability startNotifier]_block_invoke
; address 0x100092770  size 156  kind block
; ======================================================================
  100092770  stp     x22, x21, [sp, #-0x30]!
  100092774  stp     x20, x19, [sp, #0x10]
  100092778  stp     x29, x30, [sp, #0x20]
  10009277c  add     x29, sp, #0x20
  100092780  mov     x0, x2
  100092784  bl      _objc_retain
  100092788  mov     x19, x0
  10009278c  adrp    x8, #0x10041d000
  100092790  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  100092794  adrp    x8, #0x100416000
  100092798  nop
  10009279c  ldr     x1, [x8, #0xe88]
  1000927a0  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000927a4  mov     x29, x29
  1000927a8  bl      _objc_retainAutoreleasedReturnValue
  1000927ac  mov     x20, x0
  1000927b0  adrp    x8, #0x100428000
  1000927b4  ldr     x2, [x8, #0xe00]                         ; load g_100428e00
  1000927b8  adrp    x8, #0x10041a000
  1000927bc  nop
  1000927c0  ldr     x1, [x8, #0x40]
  1000927c4  mov     x3, x19
  1000927c8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:g_100428e00 object:blockarg2]
  1000927cc  mov     x0, x20
  1000927d0  bl      _objc_release
  1000927d4  mov     x0, x19
  1000927d8  ldp     x29, x30, [sp, #0x20]
  1000927dc  ldp     x20, x19, [sp, #0x10]
  1000927e0  ldp     x22, x21, [sp], #0x30
  1000927e4  b       _objc_release
  1000927e8  mov     x21, x0
  1000927ec  b       loc_1000927fc
  1000927f0  mov     x21, x0
  1000927f4  mov     x0, x20
  1000927f8  bl      _objc_release
loc_1000927fc:
  1000927fc  mov     x0, x19
  100092800  bl      _objc_release
  100092804  mov     x0, x21
  100092808  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Reachability stopNotifier]
; address 0x10009280c  size 76  kind objc
; ======================================================================
  10009280c  stp     x20, x19, [sp, #-0x20]!
  100092810  stp     x29, x30, [sp, #0x10]
  100092814  add     x29, sp, #0x10
  100092818  adrp    x8, #0x10041f000
  10009281c  ldrsw   x8, [x8, #0xf80]                         ; ivar offset Reachability._reachabilityRef (+0x10)
  100092820  ldr     x19, [x0, x8]                            ; x19 = self->_reachabilityRef
  100092824  cbz     x19, loc_10009284c                       ; if (self->_reachabilityRef == 0)
  100092828  bl      _CFRunLoopGetCurrent                     ; CFRunLoopGetCurrent(self, _cmd)
  10009282c  mov     x1, x0
  100092830  adrp    x8, #0x1003b0000
  100092834  ldr     x8, [x8, #0x220]                         ; _kCFRunLoopDefaultMode
  100092838  ldr     x2, [x8]                                 ; x2 = _kCFRunLoopDefaultMode[+0x0]
  10009283c  mov     x0, x19
  100092840  ldp     x29, x30, [sp, #0x10]
  100092844  ldp     x20, x19, [sp], #0x20
  100092848  b       _SCNetworkReachabilityUnscheduleFromRunLoop ; SCNetworkReachabilityUnscheduleFromRunLoop(self->_reachabilityRef, CFRunLoopGetCurrent(self, _cmd), _kCFRunLoopDefaultMode[+0x0])
loc_10009284c:
  10009284c  ldp     x29, x30, [sp, #0x10]
  100092850  ldp     x20, x19, [sp], #0x20
  100092854  ret

; ======================================================================
; -[Reachability dealloc]
; address 0x100092858  size 160  kind objc
; ======================================================================
  100092858  stp     x20, x19, [sp, #-0x20]!
  10009285c  stp     x29, x30, [sp, #0x10]
  100092860  add     x29, sp, #0x10
  100092864  sub     sp, sp, #0x20
  100092868  mov     x19, x0
  10009286c  adrp    x8, #0x10041a000
  100092870  nop
  100092874  ldr     x1, [x8, #0x28]
  100092878  bl      _objc_msgSend                            ; [self stopNotifier]
  10009287c  adrp    x8, #0x10041f000
  100092880  ldrsw   x8, [x8, #0xf80]                         ; ivar offset Reachability._reachabilityRef (+0x10)
  100092884  ldr     x0, [x19, x8]                            ; x0 = self->_reachabilityRef
  100092888  cbz     x0, loc_100092890                        ; if (self->_reachabilityRef == 0)
  10009288c  bl      _CFRelease                               ; CFRelease(self->_reachabilityRef)
loc_100092890:
  100092890  str     x19, [sp, #0x10]
  100092894  adrp    x8, #0x10041e000
  100092898  ldr     x8, [x8, #0xe98]
  10009289c  str     x8, [sp, #0x18]
  1000928a0  adrp    x8, #0x100416000
  1000928a4  nop
  1000928a8  ldr     x1, [x8, #0xfc8]
  1000928ac  add     x0, sp, #0x10
  1000928b0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000928b4  sub     sp, x29, #0x10
  1000928b8  ldp     x29, x30, [sp, #0x10]
  1000928bc  ldp     x20, x19, [sp], #0x20
  1000928c0  ret
  1000928c4  mov     x20, x0
  1000928c8  str     x19, [sp]
  1000928cc  adrp    x8, #0x10041e000
  1000928d0  ldr     x8, [x8, #0xe98]
  1000928d4  str     x8, [sp, #8]
  1000928d8  adrp    x8, #0x100416000
  1000928dc  nop
  1000928e0  ldr     x1, [x8, #0xfc8]
  1000928e4  mov     x0, sp
  1000928e8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000928ec  mov     x0, x20
  1000928f0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000928f4  bl      sub_10000b760

; ======================================================================
; -[Reachability localWiFiStatusForFlags:]
; address 0x1000928f8  size 60  kind objc
; ======================================================================
  1000928f8  stp     x20, x19, [sp, #-0x20]!
  1000928fc  stp     x29, x30, [sp, #0x10]
  100092900  add     x29, sp, #0x10
  100092904  mov     x19, x2
  100092908  adrp    x1, #0x100384000
  10009290c  add     x1, x1, #0x18d                           ; "localWiFiStatusForFlags"
  100092910  mov     x0, x19
  100092914  bl      sub_100092934                            ; sub_100092934(arg1, "localWiFiStatusForFlags", arg1)
  100092918  and     w8, w19, #0x20002
  10009291c  mov     w9, #0x20002
  100092920  cmp     w8, w9
  100092924  cset    w0, eq
  100092928  ldp     x29, x30, [sp, #0x10]
  10009292c  ldp     x20, x19, [sp], #0x20
  100092930  ret

; ======================================================================
; sub_100092934
; address 0x100092934  size 168  kind sub
; ======================================================================
  100092934  stp     x29, x30, [sp, #-0x10]!
  100092938  mov     x29, sp
  10009293c  sub     sp, sp, #0x50
  100092940  tst     w0, #0x40000
  100092944  mov     w8, #0x2d
  100092948  mov     w9, #0x57
  10009294c  csel    w9, w9, w8, ne
  100092950  tst     w0, #2
  100092954  mov     w10, #0x52
  100092958  csel    w10, w10, w8, ne
  10009295c  tst     w0, #1
  100092960  mov     w11, #0x74
  100092964  csel    w11, w11, w8, ne
  100092968  tst     w0, #4
  10009296c  mov     w12, #0x63
  100092970  csel    w12, w12, w8, ne
  100092974  tst     w0, #8
  100092978  mov     w13, #0x43
  10009297c  csel    w13, w13, w8, ne
  100092980  tst     w0, #0x10
  100092984  mov     w14, #0x69
  100092988  csel    w14, w14, w8, ne
  10009298c  tst     w0, #0x20
  100092990  mov     w15, #0x44
  100092994  csel    w15, w15, w8, ne
  100092998  tst     w0, #0x10000
  10009299c  mov     w16, #0x6c
  1000929a0  csel    w16, w16, w8, ne
  1000929a4  tst     w0, #0x20000
  1000929a8  mov     w17, #0x64
  1000929ac  csel    w8, w17, w8, ne
  1000929b0  stp     x8, x1, [sp, #0x40]
  1000929b4  stp     x15, x16, [sp, #0x30]
  1000929b8  stp     x13, x14, [sp, #0x20]
  1000929bc  stp     x11, x12, [sp, #0x10]
  1000929c0  stp     x9, x10, [sp]
  1000929c4  adrp    x0, #0x1003bf000
  1000929c8  add     x0, x0, #0xeb0                           ; @"Reachability Flag Status: %c%c %c%c%c%c%c%c%c %s\n"
  1000929cc  bl      _NSLog                                   ; NSLog(@"Reachability Flag Status: %c%c %c%c%c%c%c%c%c %s\n", a1, a2, a3, ((a0 & 0x40000) != 0 ? 87 : 45), ((a0 & 2) != 0 ? 82 : 45), ((a0 & 1) != 0 ? 116 : 45), ((a0 & 4) != 0 ? 99 : 45), ((a0 & 8) != 0 ? 67 : 45), ((a0 & 16) != 0 ? 105 : 45), ((a0 & 32) != 0 ? 68 : 45), ((a0 & 0x10000) != 0 ? 108 : 45), ((a0 & 0x20000) != 0 ? 100 : 45), a1)
  1000929d0  mov     sp, x29
  1000929d4  ldp     x29, x30, [sp], #0x10
  1000929d8  ret

; ======================================================================
; -[Reachability networkStatusForFlags:]
; address 0x1000929dc  size 104  kind objc
; ======================================================================
  1000929dc  stp     x20, x19, [sp, #-0x20]!
  1000929e0  stp     x29, x30, [sp, #0x10]
  1000929e4  add     x29, sp, #0x10
  1000929e8  mov     x19, x2
  1000929ec  adrp    x1, #0x100384000
  1000929f0  add     x1, x1, #0x1a5                           ; "networkStatusForFlags"
  1000929f4  mov     x0, x19
  1000929f8  bl      sub_100092934                            ; sub_100092934(arg1, "networkStatusForFlags", arg1)
  1000929fc  mov     x8, #0
  100092a00  mov     w9, #1
  100092a04  bic     w10, w9, w19, lsr #2
  100092a08  mov     w11, #0x28
  100092a0c  tst     w19, w11
  100092a10  cset    w11, ne
  100092a14  tst     w19, #0x10
  100092a18  cset    w12, eq
  100092a1c  tst     w11, w12
  100092a20  csel    x9, x9, x10, ne
  100092a24  tst     w19, #0x40000
  100092a28  mov     w10, #2
  100092a2c  csel    x9, x9, x10, eq                          ; t1 = ((arg1 & 0x40000) == 0 ? ((((arg1 & 40) != 0) & ((arg1 & 16) == 0)) != 0 ? 1 : (1 &~ (arg1 >>> 2))) : 2)
  100092a30  tst     w19, #2
  100092a34  csel    x0, x8, x9, eq
  100092a38  ldp     x29, x30, [sp, #0x10]
  100092a3c  ldp     x20, x19, [sp], #0x20
  100092a40  ret

; ======================================================================
; -[Reachability connectionRequired]
; address 0x100092a44  size 64  kind objc
; ======================================================================
  100092a44  stp     x29, x30, [sp, #-0x10]!
  100092a48  mov     x29, sp
  100092a4c  sub     sp, sp, #0x10
  100092a50  adrp    x8, #0x10041f000
  100092a54  ldrsw   x8, [x8, #0xf80]                         ; ivar offset Reachability._reachabilityRef (+0x10)
  100092a58  ldr     x0, [x0, x8]                             ; x0 = self->_reachabilityRef
  100092a5c  sub     x1, x29, #4
  100092a60  bl      _SCNetworkReachabilityGetFlags           ; SCNetworkReachabilityGetFlags(self->_reachabilityRef, &x29[-0x4])
  100092a64  cbz     w0, loc_100092a74                        ; if (SCNetworkReachabilityGetFlags(self->_reachabilityRef, &x29[-0x4]) == 0)
  100092a68  ldurb   w8, [x29, #-4]
  100092a6c  ubfx    w0, w8, #2, #1
  100092a70  b       loc_100092a78
loc_100092a74:
  100092a74  mov     w0, #0
loc_100092a78:
  100092a78  mov     sp, x29
  100092a7c  ldp     x29, x30, [sp], #0x10
  100092a80  ret

; ======================================================================
; -[Reachability currentReachabilityStatus]
; address 0x100092a84  size 120  kind objc
; ======================================================================
  100092a84  stp     x20, x19, [sp, #-0x20]!
  100092a88  stp     x29, x30, [sp, #0x10]
  100092a8c  add     x29, sp, #0x10
  100092a90  sub     sp, sp, #0x10
  100092a94  mov     x19, x0
  100092a98  adrp    x8, #0x10041f000
  100092a9c  ldrsw   x8, [x8, #0xf80]                         ; ivar offset Reachability._reachabilityRef (+0x10)
  100092aa0  ldr     x0, [x19, x8]                            ; x0 = self->_reachabilityRef
  100092aa4  add     x1, sp, #0xc
  100092aa8  bl      _SCNetworkReachabilityGetFlags           ; SCNetworkReachabilityGetFlags(self->_reachabilityRef, &sp[0xc])
  100092aac  cbz     w0, loc_100092ad0                        ; if (SCNetworkReachabilityGetFlags(self->_reachabilityRef, &sp[0xc]) == 0)
  100092ab0  adrp    x8, #0x10041f000
  100092ab4  ldrsw   x8, [x8, #0xf84]                         ; ivar offset Reachability._alwaysReturnLocalWiFiStatus (+0x8)
  100092ab8  ldrb    w8, [x19, x8]                            ; w8 = self->_alwaysReturnLocalWiFiStatus
  100092abc  ldr     w2, [sp, #0xc]
  100092ac0  cbz     w8, loc_100092ad8                        ; if (self->_alwaysReturnLocalWiFiStatus == 0)
  100092ac4  adrp    x8, #0x10041a000
  100092ac8  add     x8, x8, #0x30                            ; &@selector(localWiFiStatusForFlags:)
  100092acc  b       loc_100092ae0
loc_100092ad0:
  100092ad0  mov     x0, #0
  100092ad4  b       loc_100092aec
loc_100092ad8:
  100092ad8  adrp    x8, #0x10041a000
  100092adc  add     x8, x8, #0x38                            ; &@selector(networkStatusForFlags:)
loc_100092ae0:
  100092ae0  ldr     x1, [x8]                                 ; x1 = one of selectors {localWiFiStatusForFlags:, networkStatusForFlags:}
  100092ae4  mov     x0, x19
  100092ae8  bl      _objc_msgSend                            ; [self localWiFiStatusForFlags:x2  | networkStatusForFlags:x3]
loc_100092aec:
  100092aec  sub     sp, x29, #0x10
  100092af0  ldp     x29, x30, [sp, #0x10]
  100092af4  ldp     x20, x19, [sp], #0x20
  100092af8  ret
