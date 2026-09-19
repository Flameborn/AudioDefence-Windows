// unit TAGContainerOpener — 21 functions
//   0x1001521a0     496  -[TAGContainerOpener initWithContainerId:tagManager:timeout:notifier:]
//   0x100152390     100  +[TAGContainerOpener initialize]
//   0x1001523f4       8  +[TAGContainerOpener defaultTimeout]
//   0x1001523fc     404  +[TAGContainerOpener openContainerWithId:tagManager:openType:timeout:]
//   0x100152590     380  +[TAGContainerOpener openContainerWithId:tagManager:openType:timeout:notifier:]
//   0x10015270c    1716  -[TAGContainerOpener openWithRefreshType:]
//   0x100152dc0     736  -[TAGContainerOpener callNotifiers:]
//   0x1001530a0     116  -[TAGContainerOpener handleTimer:]
//   0x100153114      16  -[TAGContainerOpener tagManager]
//   0x100153124      56  -[TAGContainerOpener setTagManager:]
//   0x10015315c      16  -[TAGContainerOpener containerId]
//   0x10015316c      12  -[TAGContainerOpener setContainerId:]
//   0x100153178      16  -[TAGContainerOpener timeout]
//   0x100153188      16  -[TAGContainerOpener setTimeout:]
//   0x100153198      20  -[TAGContainerOpener haveNotified]
//   0x1001531ac      16  -[TAGContainerOpener setHaveNotified:]
//   0x1001531bc      16  -[TAGContainerOpener notifier]
//   0x1001531cc      20  -[TAGContainerOpener setNotifier:]
//   0x1001531e0      16  -[TAGContainerOpener container]
//   0x1001531f0      12  -[TAGContainerOpener setContainer:]
//   0x1001531fc     104  -[TAGContainerOpener .cxx_destruct]

; ======================================================================
; -[TAGContainerOpener initWithContainerId:tagManager:timeout:notifier:]
; address 0x1001521a0  size 496  kind objc
; ======================================================================
  1001521a0  stp     x29, x30, [sp, #-0x10]!
  1001521a4  mov     x29, sp
  1001521a8  stp     x20, x19, [sp, #-0x10]!
  1001521ac  stp     x22, x21, [sp, #-0x10]!
  1001521b0  stp     x24, x23, [sp, #-0x10]!
  1001521b4  stp     x26, x25, [sp, #-0x10]!
  1001521b8  sub     sp, sp, #0x20
  1001521bc  mov     x22, x5
  1001521c0  mov     x24, x4
  1001521c4  mov     x20, x3
  1001521c8  mov     x23, x0
  1001521cc  mov     x0, x2
  1001521d0  bl      _objc_retain
  1001521d4  mov     x19, x0
  1001521d8  mov     x0, x20
  1001521dc  bl      _objc_retain
  1001521e0  mov     x20, x0
  1001521e4  mov     x0, x22
  1001521e8  bl      _objc_retain
  1001521ec  mov     x21, x0
  1001521f0  str     x23, [sp, #0x10]
  1001521f4  adrp    x8, #0x10041f000
  1001521f8  ldr     x8, [x8, #0x230]
  1001521fc  str     x8, [sp, #0x18]
  100152200  adrp    x8, #0x100416000
  100152204  nop
  100152208  ldr     x1, [x8, #0xab8]
  10015220c  mov     x25, #0
  100152210  add     x0, sp, #0x10
  100152214  bl      _objc_msgSendSuper2                      ; [super init]
  100152218  mov     x23, x0
  10015221c  cbz     x23, loc_100152318                       ; if (self == 0)
  100152220  mov     x25, x23
  100152224  adrp    x8, #0x100419000
  100152228  nop
  10015222c  ldr     x1, [x8, #0xc08]
  100152230  mov     x0, x19
  100152234  bl      _objc_msgSend                            ; [arg1 copy]
  100152238  adrp    x8, #0x100420000
  10015223c  ldrsw   x9, [x8, #0xa70]                         ; ivar offset TAGContainerOpener._containerId (+0x18)
  100152240  ldr     x8, [x23, x9]                            ; x8 = self->_containerId
  100152244  str     x0, [x23, x9]                            ; self->_containerId = [arg1 copy]
  100152248  mov     x0, x8
  10015224c  bl      _objc_release
  100152250  adrp    x8, #0x100420000
  100152254  ldrsw   x25, [x8, #0xa74]                        ; ivar offset TAGContainerOpener._tagManager (+0x10)
  100152258  mov     x0, x20
  10015225c  bl      _objc_retain
  100152260  ldr     x8, [x23, x25]                           ; x8 = self->_tagManager
  100152264  str     x0, [x23, x25]                           ; self->_tagManager = arg2
  100152268  mov     x0, x8
  10015226c  bl      _objc_release
  100152270  cbz     x24, loc_1001522f4                       ; if (arg3 == 0)
  100152274  ldr     d0, [x24]                                ; d0 = arg3[+0x0]
  100152278  adrp    x8, #0x100420000
  10015227c  ldrsw   x8, [x8, #0xa78]                         ; ivar offset TAGContainerOpener._timeout (+0x20)
  100152280  str     d0, [x23, x8]                            ; self->_timeout = arg3[+0x0]
  100152284  adrp    x8, #0x100181000
  100152288  ldr     d1, [x8, #0xbb8]                         ; d1 = 100.0
  10015228c  fcmp    d0, d1
  100152290  b.lt    loc_100152304                            ; if (arg3[+0x0] < (or unordered) 100)
  100152294  mov     x25, x23
  100152298  adrp    x8, #0x10041e000
  10015229c  ldr     x24, [x8, #0x538]                        ; class TAGLog
  1001522a0  adrp    x8, #0x10041d000
  1001522a4  ldr     x0, [x8, #0xf78]                         ; class NSString
  1001522a8  adrp    x8, #0x100416000
  1001522ac  nop
  1001522b0  ldr     x1, [x8, #0xee8]
  1001522b4  str     d0, [sp]
  1001522b8  adrp    x2, #0x1003c7000
  1001522bc  add     x2, x2, #0x9f0                           ; @"Excessive timeout detected (%f). Timeout should be in seconds."
  1001522c0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Excessive timeout detected (%f). Timeout should be in seconds.", arg3[+0x0]]
  1001522c4  mov     x29, x29
  1001522c8  bl      _objc_retainAutoreleasedReturnValue
  1001522cc  mov     x25, x0
  1001522d0  adrp    x8, #0x10041b000
  1001522d4  nop
  1001522d8  ldr     x1, [x8, #0xe90]
  1001522dc  mov     x0, x24
  1001522e0  mov     x2, x25
  1001522e4  bl      _objc_msgSend                            ; [TAGLog warning:[NSString stringWithFormat:@"Excessive timeout detected (%f). Timeout should be in seconds.", arg3[+0x0]]]
  1001522e8  mov     x0, x25
  1001522ec  bl      _objc_release
  1001522f0  b       loc_100152304
loc_1001522f4:
  1001522f4  adrp    x8, #0x100420000
  1001522f8  ldrsw   x8, [x8, #0xa78]                         ; ivar offset TAGContainerOpener._timeout (+0x20)
  1001522fc  mov     x9, #0x4000000000000000
  100152300  str     x9, [x23, x8]                            ; self->_timeout = 0x4000000000000000
loc_100152304:
  100152304  adrp    x8, #0x100420000
  100152308  ldrsw   x8, [x8, #0xa7c]                         ; ivar offset TAGContainerOpener._notifier (+0x28)
  10015230c  add     x0, x23, x8
  100152310  mov     x1, x22
  100152314  bl      _objc_storeStrong
loc_100152318:
  100152318  mov     x0, x21
  10015231c  bl      _objc_release
  100152320  mov     x0, x20
  100152324  bl      _objc_release
  100152328  mov     x0, x19
  10015232c  bl      _objc_release
  100152330  mov     x0, x23
  100152334  sub     sp, x29, #0x40
  100152338  ldp     x26, x25, [sp], #0x10
  10015233c  ldp     x24, x23, [sp], #0x10
  100152340  ldp     x22, x21, [sp], #0x10
  100152344  ldp     x20, x19, [sp], #0x10
  100152348  ldp     x29, x30, [sp], #0x10
  10015234c  ret
  100152350  mov     x22, x0
  100152354  b       loc_100152368
  100152358  mov     x22, x0
  10015235c  mov     x0, x25
  100152360  bl      _objc_release
  100152364  mov     x25, x23
loc_100152368:
  100152368  mov     x0, x21
  10015236c  bl      _objc_release
  100152370  mov     x0, x20
  100152374  bl      _objc_release
  100152378  mov     x0, x19
  10015237c  bl      _objc_release
  100152380  mov     x0, x25
  100152384  bl      _objc_release
  100152388  mov     x0, x22
  10015238c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGContainerOpener initialize]
; address 0x100152390  size 100  kind objc
; ======================================================================
  100152390  stp     x29, x30, [sp, #-0x10]!
  100152394  mov     x29, sp
  100152398  stp     x20, x19, [sp, #-0x10]!
  10015239c  adrp    x19, #0x10042d000
  1001523a0  ldr     x8, [x19, #0xf18]                        ; load g_10042df18
  1001523a4  cbz     x8, loc_1001523b4                        ; if (g_10042df18 == 0)
  1001523a8  ldp     x20, x19, [sp], #0x10
  1001523ac  ldp     x29, x30, [sp], #0x10
  1001523b0  ret
loc_1001523b4:
  1001523b4  adrp    x8, #0x10041d000
  1001523b8  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1001523bc  adrp    x8, #0x100416000
  1001523c0  nop
  1001523c4  ldr     x1, [x8, #0xac8]
  1001523c8  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1001523cc  adrp    x8, #0x100416000
  1001523d0  nop
  1001523d4  ldr     x1, [x8, #0xab8]
  1001523d8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1001523dc  ldr     x8, [x19, #0xf18]                        ; load g_10042df18
  1001523e0  str     x0, [x19, #0xf18]                        ; store g_10042df18 = [[NSMutableDictionary alloc] init]
  1001523e4  mov     x0, x8
  1001523e8  ldp     x20, x19, [sp], #0x10
  1001523ec  ldp     x29, x30, [sp], #0x10
  1001523f0  b       _objc_release

; ======================================================================
; +[TAGContainerOpener defaultTimeout]
; address 0x1001523f4  size 8  kind objc
; ======================================================================
  1001523f4  fmov    d0, #2.00000000
  1001523f8  ret

; ======================================================================
; +[TAGContainerOpener openContainerWithId:tagManager:openType:timeout:]
; address 0x1001523fc  size 404  kind objc
; ======================================================================
  1001523fc  stp     x29, x30, [sp, #-0x10]!
  100152400  mov     x29, sp
  100152404  stp     x20, x19, [sp, #-0x10]!
  100152408  stp     x22, x21, [sp, #-0x10]!
  10015240c  stp     x24, x23, [sp, #-0x10]!
  100152410  stp     x26, x25, [sp, #-0x10]!
  100152414  mov     x21, x5
  100152418  mov     x23, x4
  10015241c  mov     x20, x3
  100152420  mov     x24, x0
  100152424  mov     x0, x2
  100152428  bl      _objc_retain
  10015242c  mov     x19, x0
  100152430  mov     x0, x20
  100152434  bl      _objc_retain
  100152438  mov     x20, x0
  10015243c  cbz     x19, loc_1001524e0                       ; if (arg1 == 0)
  100152440  cbz     x20, loc_100152504                       ; if (arg2 == 0)
  100152444  adrp    x8, #0x10041e000
  100152448  ldr     x0, [x8, #0x8a8]                         ; class TAGContainerFutureImpl
  10015244c  adrp    x8, #0x100416000
  100152450  nop
  100152454  ldr     x25, [x8, #0xac8]
  100152458  mov     x1, x25
  10015245c  bl      _objc_msgSend                            ; [TAGContainerFutureImpl alloc]
  100152460  adrp    x8, #0x100416000
  100152464  nop
  100152468  ldr     x26, [x8, #0xab8]
  10015246c  mov     x1, x26
  100152470  bl      _objc_msgSend                            ; [[TAGContainerFutureImpl alloc] init]
  100152474  mov     x22, x0
  100152478  adrp    x8, #0x10041e000
  10015247c  ldr     x0, [x8, #0x8b0]                         ; class TAGFutureNotifier
  100152480  mov     x1, x25
  100152484  bl      _objc_msgSend                            ; [TAGFutureNotifier alloc]
  100152488  mov     x1, x26
  10015248c  bl      _objc_msgSend                            ; [[TAGFutureNotifier alloc] init]
  100152490  mov     x25, x0
  100152494  adrp    x8, #0x10041d000
  100152498  nop
  10015249c  ldr     x1, [x8, #0xc8]
  1001524a0  mov     x0, x25
  1001524a4  mov     x2, x22
  1001524a8  bl      _objc_msgSend                            ; [[[TAGFutureNotifier alloc] init] setFuture:[[TAGContainerFutureImpl alloc] init]]
  1001524ac  adrp    x8, #0x10041d000
  1001524b0  nop
  1001524b4  ldr     x1, [x8, #0xd0]
  1001524b8  mov     x0, x24
  1001524bc  mov     x2, x19
  1001524c0  mov     x3, x20
  1001524c4  mov     x4, x23
  1001524c8  mov     x5, x21
  1001524cc  mov     x6, x25
  1001524d0  bl      _objc_msgSend                            ; [TAGContainerOpener openContainerWithId:arg1 tagManager:arg2 openType:arg3 timeout:arg4 notifier:[[TAGFutureNotifier alloc] init]]
  1001524d4  mov     x0, x25
  1001524d8  bl      _objc_release
  1001524dc  b       loc_100152528
loc_1001524e0:
  1001524e0  adrp    x8, #0x10041e000
  1001524e4  ldr     x0, [x8, #0x538]                         ; class TAGLog
  1001524e8  adrp    x8, #0x10041b000
  1001524ec  nop
  1001524f0  ldr     x1, [x8, #0xdd0]
  1001524f4  adrp    x2, #0x1003c7000
  1001524f8  add     x2, x2, #0xa10                           ; @"containerId must be non-nil"
  1001524fc  bl      _objc_msgSend                            ; [TAGLog error:@"containerId must be non-nil"]
  100152500  b       loc_100152524
loc_100152504:
  100152504  adrp    x8, #0x10041e000
  100152508  ldr     x0, [x8, #0x538]                         ; class TAGLog
  10015250c  adrp    x8, #0x10041b000
  100152510  nop
  100152514  ldr     x1, [x8, #0xdd0]
  100152518  adrp    x2, #0x1003c7000
  10015251c  add     x2, x2, #0xa30                           ; @"tagManager must be non-nil"
  100152520  bl      _objc_msgSend                            ; [TAGLog error:@"tagManager must be non-nil"]
loc_100152524:
  100152524  mov     x22, #0
loc_100152528:
  100152528  mov     x0, x20
  10015252c  bl      _objc_release
  100152530  mov     x0, x19
  100152534  bl      _objc_release
  100152538  mov     x0, x22
  10015253c  ldp     x26, x25, [sp], #0x10
  100152540  ldp     x24, x23, [sp], #0x10
  100152544  ldp     x22, x21, [sp], #0x10
  100152548  ldp     x20, x19, [sp], #0x10
  10015254c  ldp     x29, x30, [sp], #0x10
  100152550  b       _objc_autoreleaseReturnValue
  100152554  mov     x21, x0
  100152558  b       loc_100152568
  10015255c  mov     x21, x0
  100152560  mov     x0, x25
  100152564  bl      _objc_release
loc_100152568:
  100152568  mov     x0, x22
  10015256c  bl      _objc_release
  100152570  b       loc_100152578
  100152574  mov     x21, x0
loc_100152578:
  100152578  mov     x0, x20
  10015257c  bl      _objc_release
  100152580  mov     x0, x19
  100152584  bl      _objc_release
  100152588  mov     x0, x21
  10015258c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[TAGContainerOpener openContainerWithId:tagManager:openType:timeout:notifier:]
; address 0x100152590  size 380  kind objc
; ======================================================================
  100152590  stp     x29, x30, [sp, #-0x10]!
  100152594  mov     x29, sp
  100152598  stp     x20, x19, [sp, #-0x10]!
  10015259c  stp     x22, x21, [sp, #-0x10]!
  1001525a0  stp     x24, x23, [sp, #-0x10]!
  1001525a4  mov     x21, x6
  1001525a8  mov     x23, x5
  1001525ac  mov     x22, x4
  1001525b0  mov     x20, x3
  1001525b4  mov     x0, x2
  1001525b8  bl      _objc_retain
  1001525bc  mov     x19, x0
  1001525c0  mov     x0, x20
  1001525c4  bl      _objc_retain
  1001525c8  mov     x20, x0
  1001525cc  mov     x0, x21
  1001525d0  bl      _objc_retain
  1001525d4  mov     x21, x0
  1001525d8  cbz     x19, loc_100152648                       ; if (arg1 == 0)
  1001525dc  cbz     x20, loc_10015266c                       ; if (arg2 == 0)
  1001525e0  cbz     x21, loc_100152690                       ; if (arg5 == 0)
  1001525e4  adrp    x8, #0x10041e000
  1001525e8  ldr     x0, [x8, #0x8b8]                         ; class TAGContainerOpener
  1001525ec  adrp    x8, #0x100416000
  1001525f0  nop
  1001525f4  ldr     x1, [x8, #0xac8]
  1001525f8  bl      _objc_msgSend                            ; [TAGContainerOpener alloc]
  1001525fc  adrp    x8, #0x10041d000
  100152600  nop
  100152604  ldr     x1, [x8, #0xd8]
  100152608  mov     x2, x19
  10015260c  mov     x3, x20
  100152610  mov     x4, x23
  100152614  mov     x5, x21
  100152618  bl      _objc_msgSend                            ; [[TAGContainerOpener alloc] initWithContainerId:arg1 tagManager:arg2 timeout:arg4 notifier:arg5]
  10015261c  mov     x23, x0
  100152620  cmp     w22, #0
  100152624  cset    w2, ne
  100152628  adrp    x8, #0x10041d000
  10015262c  nop
  100152630  ldr     x1, [x8, #0xe0]
  100152634  mov     x0, x23
  100152638  bl      _objc_msgSend                            ; [[[TAGContainerOpener alloc] initWithContainerId:arg1 tagManager:arg2 timeout:arg4 notifier:arg5] openWithRefreshType:(arg3 != 0)]
  10015263c  mov     x0, x23
  100152640  bl      _objc_release
  100152644  b       loc_1001526b0
loc_100152648:
  100152648  adrp    x8, #0x10041e000
  10015264c  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100152650  adrp    x8, #0x10041b000
  100152654  nop
  100152658  ldr     x1, [x8, #0xdd0]
  10015265c  adrp    x2, #0x1003c7000
  100152660  add     x2, x2, #0xa10                           ; @"containerId must be non-nil"
  100152664  bl      _objc_msgSend                            ; [TAGLog error:@"containerId must be non-nil"]
  100152668  b       loc_1001526b0
loc_10015266c:
  10015266c  adrp    x8, #0x10041e000
  100152670  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100152674  adrp    x8, #0x10041b000
  100152678  nop
  10015267c  ldr     x1, [x8, #0xdd0]
  100152680  adrp    x2, #0x1003c7000
  100152684  add     x2, x2, #0xa30                           ; @"tagManager must be non-nil"
  100152688  bl      _objc_msgSend                            ; [TAGLog error:@"tagManager must be non-nil"]
  10015268c  b       loc_1001526b0
loc_100152690:
  100152690  adrp    x8, #0x10041e000
  100152694  ldr     x0, [x8, #0x538]                         ; class TAGLog
  100152698  adrp    x8, #0x10041b000
  10015269c  nop
  1001526a0  ldr     x1, [x8, #0xdd0]
  1001526a4  adrp    x2, #0x1003c7000
  1001526a8  add     x2, x2, #0xa50                           ; @"notifier must be non-nil"
  1001526ac  bl      _objc_msgSend                            ; [TAGLog error:@"notifier must be non-nil"]
loc_1001526b0:
  1001526b0  mov     x0, x21
  1001526b4  bl      _objc_release
  1001526b8  mov     x0, x20
  1001526bc  bl      _objc_release
  1001526c0  mov     x0, x19
  1001526c4  ldp     x24, x23, [sp], #0x10
  1001526c8  ldp     x22, x21, [sp], #0x10
  1001526cc  ldp     x20, x19, [sp], #0x10
  1001526d0  ldp     x29, x30, [sp], #0x10
  1001526d4  b       _objc_release
  1001526d8  mov     x22, x0
  1001526dc  mov     x0, x23
  1001526e0  bl      _objc_release
  1001526e4  b       loc_1001526ec
  1001526e8  mov     x22, x0
loc_1001526ec:
  1001526ec  mov     x0, x21
  1001526f0  bl      _objc_release
  1001526f4  mov     x0, x20
  1001526f8  bl      _objc_release
  1001526fc  mov     x0, x19
  100152700  bl      _objc_release
  100152704  mov     x0, x22
  100152708  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainerOpener openWithRefreshType:]
; address 0x10015270c  size 1716  kind objc
; ======================================================================
  10015270c  stp     x29, x30, [sp, #-0x10]!
  100152710  mov     x29, sp
  100152714  stp     x20, x19, [sp, #-0x10]!
  100152718  stp     x22, x21, [sp, #-0x10]!
  10015271c  stp     x24, x23, [sp, #-0x10]!
  100152720  stp     x26, x25, [sp, #-0x10]!
  100152724  stp     x28, x27, [sp, #-0x10]!
  100152728  stp     d9, d8, [sp, #-0x10]!
  10015272c  sub     sp, sp, #0x20
  100152730  mov     x28, x2
  100152734  mov     x19, x0
  100152738  adrp    x8, #0x10041e000
  10015273c  ldr     x0, [x8, #0x38]                          ; class NSDate
  100152740  adrp    x8, #0x100418000
  100152744  nop
  100152748  ldr     x21, [x8, #0x158]
  10015274c  mov     x1, x21
  100152750  bl      _objc_msgSend                            ; [NSDate date]
  100152754  mov     x29, x29
  100152758  bl      _objc_retainAutoreleasedReturnValue
  10015275c  mov     x20, x0
  100152760  adrp    x8, #0x10041d000
  100152764  nop
  100152768  ldr     x22, [x8, #0x5c8]
  10015276c  mov     x1, x22
  100152770  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSince1970]
  100152774  mov     v8.16b, v0.16b
  100152778  stp     x22, x21, [sp, #0x10]
  10015277c  mov     x0, x20
  100152780  bl      _objc_release
  100152784  adrp    x22, #0x10042d000
  100152788  ldr     x0, [x22, #0xf18]                        ; load g_10042df18
  10015278c  bl      _objc_retain
  100152790  mov     x20, x0
  100152794  bl      _objc_sync_enter                         ; objc_sync_enter(g_10042df18)
  100152798  adrp    x8, #0x10041c000
  10015279c  nop
  1001527a0  ldr     x26, [x8, #0xfa0]
  1001527a4  mov     x0, x19
  1001527a8  mov     x1, x26
  1001527ac  bl      _objc_msgSend                            ; [self tagManager]
  1001527b0  mov     x29, x29
  1001527b4  bl      _objc_retainAutoreleasedReturnValue
  1001527b8  mov     x23, x0
  1001527bc  adrp    x8, #0x10041d000
  1001527c0  nop
  1001527c4  ldr     x24, [x8, #0x1c0]
  1001527c8  mov     x0, x19
  1001527cc  mov     x1, x24
  1001527d0  bl      _objc_msgSend                            ; [self containerId]
  1001527d4  mov     x29, x29
  1001527d8  bl      _objc_retainAutoreleasedReturnValue
  1001527dc  mov     x25, x0
  1001527e0  adrp    x8, #0x10041d000
  1001527e4  nop
  1001527e8  ldr     x1, [x8, #0xe8]
  1001527ec  mov     x0, x23
  1001527f0  mov     x2, x25
  1001527f4  bl      _objc_msgSend                            ; [[self tagManager] getContainerById:[self containerId]]
  1001527f8  mov     x29, x29
  1001527fc  bl      _objc_retainAutoreleasedReturnValue
  100152800  mov     x21, x0
  100152804  adrp    x8, #0x10041d000
  100152808  nop
  10015280c  ldr     x27, [x8, #0xc0]
  100152810  mov     x0, x19
  100152814  mov     x1, x27
  100152818  mov     x2, x21
  10015281c  bl      _objc_msgSend                            ; [self setContainer:[[self tagManager] getContainerById:[self containerId]]]
  100152820  mov     x0, x21
  100152824  bl      _objc_release
  100152828  mov     x0, x25
  10015282c  bl      _objc_release
  100152830  mov     x0, x23
  100152834  bl      _objc_release
  100152838  adrp    x8, #0x10041c000
  10015283c  nop
  100152840  ldr     x23, [x8, #0xde0]
  100152844  mov     x0, x19
  100152848  mov     x1, x23
  10015284c  bl      _objc_msgSend                            ; [self container]
  100152850  mov     x29, x29
  100152854  bl      _objc_retainAutoreleasedReturnValue
  100152858  mov     x21, x0
  10015285c  bl      _objc_release
  100152860  cbz     x21, loc_10015291c                       ; if ([self container] == 0)
  100152864  ldr     x21, [x22, #0xf18]                       ; load g_10042df18
  100152868  mov     x0, x19
  10015286c  mov     x1, x24
  100152870  bl      _objc_msgSend                            ; [self containerId]
  100152874  mov     x29, x29
  100152878  bl      _objc_retainAutoreleasedReturnValue
  10015287c  mov     x25, x0
  100152880  adrp    x8, #0x100417000
  100152884  nop
  100152888  ldr     x1, [x8, #0x40]
  10015288c  mov     x0, x21
  100152890  mov     x2, x25
  100152894  bl      _objc_msgSend                            ; [g_10042df18 objectForKey:[self containerId]]
  100152898  mov     x29, x29
  10015289c  bl      _objc_retainAutoreleasedReturnValue
  1001528a0  mov     x24, x0
  1001528a4  mov     x0, x25
  1001528a8  bl      _objc_release
  1001528ac  cbz     x24, loc_100152a34                       ; if ([g_10042df18 objectForKey:[self containerId]] == 0)
  1001528b0  adrp    x8, #0x10041d000
  1001528b4  nop
  1001528b8  ldr     x1, [x8, #0xf0]
  1001528bc  mov     x0, x19
  1001528c0  bl      _objc_msgSend                            ; [self notifier]
  1001528c4  mov     x29, x29
  1001528c8  bl      _objc_retainAutoreleasedReturnValue
  1001528cc  mov     x21, x0
  1001528d0  adrp    x8, #0x100416000
  1001528d4  nop
  1001528d8  ldr     x1, [x8, #0xd90]
  1001528dc  mov     x0, x24
  1001528e0  mov     x2, x21
  1001528e4  bl      _objc_msgSend                            ; [[g_10042df18 objectForKey:[self containerId]] addObject:[self notifier]]
  1001528e8  mov     x0, x21
  1001528ec  bl      _objc_release
  1001528f0  adrp    x8, #0x10041d000
  1001528f4  nop
  1001528f8  ldr     x1, [x8, #0x100]
  1001528fc  mov     x2, #0
  100152900  mov     x0, x19
  100152904  bl      _objc_msgSend                            ; [self setNotifier:0]
  100152908  mov     x0, x24
  10015290c  bl      _objc_release
  100152910  mov     w21, #0
  100152914  mov     w22, #1
  100152918  b       loc_100152b14
loc_10015291c:
  10015291c  adrp    x8, #0x10041d000
  100152920  ldr     x21, [x8, #0xf28]                        ; class NSMutableArray
  100152924  nop
  100152928  nop
  10015292c  ldr     x1, [x8, #0xf0]
  100152930  mov     x0, x19
  100152934  bl      _objc_msgSend                            ; [self notifier]
  100152938  str     x23, [sp, #8]
  10015293c  mov     x29, x29
  100152940  bl      _objc_retainAutoreleasedReturnValue
  100152944  mov     x25, x0
  100152948  adrp    x8, #0x10041d000
  10015294c  nop
  100152950  ldr     x1, [x8, #0xf8]
  100152954  mov     x0, x21
  100152958  mov     x2, x25
  10015295c  bl      _objc_msgSend                            ; [NSMutableArray arrayWithObject:[self notifier]]
  100152960  mov     x29, x29
  100152964  bl      _objc_retainAutoreleasedReturnValue
  100152968  mov     x23, x0
  10015296c  mov     x0, x25
  100152970  bl      _objc_release
  100152974  adrp    x8, #0x10041d000
  100152978  nop
  10015297c  ldr     x1, [x8, #0x100]
  100152980  mov     x2, #0
  100152984  mov     x0, x19
  100152988  bl      _objc_msgSend                            ; [self setNotifier:0]
  10015298c  ldr     x21, [x22, #0xf18]                       ; load g_10042df18
  100152990  mov     x0, x19
  100152994  mov     x1, x24
  100152998  bl      _objc_msgSend                            ; [self containerId]
  10015299c  mov     x29, x29
  1001529a0  bl      _objc_retainAutoreleasedReturnValue
  1001529a4  mov     x25, x0
  1001529a8  adrp    x8, #0x100416000
  1001529ac  nop
  1001529b0  ldr     x1, [x8, #0xdc8]
  1001529b4  mov     x0, x21
  1001529b8  mov     x22, x23
  1001529bc  mov     x2, x22
  1001529c0  mov     x3, x25
  1001529c4  bl      _objc_msgSend                            ; [g_10042df18 setObject:[NSMutableArray arrayWithObject:[self notifier]] forKey:[self containerId]]
  1001529c8  mov     x0, x25
  1001529cc  bl      _objc_release
  1001529d0  cbz     w28, loc_100152a40                       ; if (arg1 == 0)
  1001529d4  adrp    x8, #0x10041e000
  1001529d8  ldr     x0, [x8, #0x8c8]                         ; class TAGWaitForFresh
  1001529dc  adrp    x8, #0x100416000
  1001529e0  nop
  1001529e4  ldr     x1, [x8, #0xac8]
  1001529e8  mov     x28, #0
  1001529ec  bl      _objc_msgSend                            ; [TAGWaitForFresh alloc]
  1001529f0  mov     x25, x0
  1001529f4  adrp    x8, #0x10041e000
  1001529f8  ldr     x0, [x8, #0x860]                         ; class TAGContainer
  1001529fc  adrp    x8, #0x10041c000
  100152a00  nop
  100152a04  ldr     x1, [x8, #0xe90]
  100152a08  mov     x28, #0
  100152a0c  bl      _objc_msgSend                            ; [TAGContainer refreshPeriodOnSuccess]
  100152a10  fsub    d0, d8, d0
  100152a14  adrp    x8, #0x10041d000
  100152a18  nop
  100152a1c  ldr     x1, [x8, #0x110]
  100152a20  mov     x28, #0
  100152a24  mov     x0, x25
  100152a28  mov     x2, x19
  100152a2c  bl      _objc_msgSend                            ; [[TAGWaitForFresh alloc] initWithContainerOpener:self oldestTimeToBeFresh:([[NSDate date] timeIntervalSince1970] - [TAGContainer refreshPeriodOnSuccess])]
  100152a30  b       loc_100152a74
loc_100152a34:
  100152a34  mov     w22, #0
  100152a38  mov     w21, #1
  100152a3c  b       loc_100152b14
loc_100152a40:
  100152a40  adrp    x8, #0x10041e000
  100152a44  ldr     x0, [x8, #0x8c0]                         ; class TAGWaitForNonDefaultRefresh
  100152a48  adrp    x8, #0x100416000
  100152a4c  nop
  100152a50  ldr     x1, [x8, #0xac8]
  100152a54  mov     x28, #0
  100152a58  bl      _objc_msgSend                            ; [TAGWaitForNonDefaultRefresh alloc]
  100152a5c  adrp    x8, #0x10041d000
  100152a60  nop
  100152a64  ldr     x1, [x8, #0x108]
  100152a68  mov     x28, #0
  100152a6c  mov     x2, x19
  100152a70  bl      _objc_msgSend                            ; [[TAGWaitForNonDefaultRefresh alloc] initWithContainerOpener:self]
loc_100152a74:
  100152a74  mov     x28, x0
  100152a78  mov     x0, x19
  100152a7c  mov     x1, x26
  100152a80  bl      _objc_msgSend                            ; [self tagManager]
  100152a84  mov     x29, x29
  100152a88  bl      _objc_retainAutoreleasedReturnValue
  100152a8c  mov     x26, x0
  100152a90  mov     x0, x19
  100152a94  mov     x1, x24
  100152a98  bl      _objc_msgSend                            ; [self containerId]
  100152a9c  mov     x29, x29
  100152aa0  bl      _objc_retainAutoreleasedReturnValue
  100152aa4  mov     x24, x0
  100152aa8  adrp    x8, #0x10041d000
  100152aac  nop
  100152ab0  ldr     x1, [x8, #0x118]
  100152ab4  mov     x0, x26
  100152ab8  mov     x2, x24
  100152abc  mov     x3, x28
  100152ac0  bl      _objc_msgSend                            ; [[self tagManager] openContainerById:[self containerId] callback:x3]
  100152ac4  ldr     x23, [sp, #8]
  100152ac8  mov     x29, x29
  100152acc  bl      _objc_retainAutoreleasedReturnValue
  100152ad0  mov     x21, x0
  100152ad4  mov     x0, x19
  100152ad8  mov     x1, x27
  100152adc  mov     x2, x21
  100152ae0  bl      _objc_msgSend                            ; [self setContainer:[[self tagManager] openContainerById:[self containerId] callback:x3]]
  100152ae4  mov     x0, x21
  100152ae8  bl      _objc_release
  100152aec  mov     x0, x24
  100152af0  bl      _objc_release
  100152af4  mov     x0, x26
  100152af8  bl      _objc_release
  100152afc  mov     x0, x28
  100152b00  bl      _objc_release
  100152b04  mov     x0, x22
  100152b08  bl      _objc_release
  100152b0c  mov     w21, #0
  100152b10  mov     w22, #0
loc_100152b14:
  100152b14  mov     x0, x20
  100152b18  bl      _objc_sync_exit                          ; objc_sync_exit(g_10042df18)
  100152b1c  mov     x0, x20
  100152b20  bl      _objc_release
  100152b24  tbz     w22, #0, loc_100152b4c                   ; if (!(one of {0, 1} & 1))
  100152b28  sub     sp, x29, #0x60
  100152b2c  ldp     d9, d8, [sp], #0x10
  100152b30  ldp     x28, x27, [sp], #0x10
  100152b34  ldp     x26, x25, [sp], #0x10
  100152b38  ldp     x24, x23, [sp], #0x10
  100152b3c  ldp     x22, x21, [sp], #0x10
  100152b40  ldp     x20, x19, [sp], #0x10
  100152b44  ldp     x29, x30, [sp], #0x10
  100152b48  ret
loc_100152b4c:
  100152b4c  cbz     w21, loc_100152be8                       ; if (one of {0, 1} == 0)
  100152b50  adrp    x8, #0x10041d000
  100152b54  nop
  100152b58  ldr     x1, [x8, #0xf0]
  100152b5c  mov     x0, x19
  100152b60  bl      _objc_msgSend                            ; [self notifier]
  100152b64  mov     x29, x29
  100152b68  bl      _objc_retainAutoreleasedReturnValue
  100152b6c  mov     x20, x0
  100152b70  mov     x0, x19
  100152b74  mov     x1, x23
  100152b78  bl      _objc_msgSend                            ; [self container]
  100152b7c  mov     x29, x29
  100152b80  bl      _objc_retainAutoreleasedReturnValue
  100152b84  mov     x21, x0
  100152b88  adrp    x8, #0x10041d000
  100152b8c  nop
  100152b90  ldr     x1, [x8, #0x120]
  100152b94  mov     x0, x20
  100152b98  mov     x2, x21
  100152b9c  bl      _objc_msgSend                            ; [[self notifier] containerAvailable:[self container]]
  100152ba0  mov     x0, x21
  100152ba4  bl      _objc_release
  100152ba8  mov     x0, x20
  100152bac  bl      _objc_release
  100152bb0  mov     x2, #0
  100152bb4  adrp    x8, #0x10041d000
  100152bb8  nop
  100152bbc  ldr     x1, [x8, #0x100]
  100152bc0  mov     x0, x19
  100152bc4  sub     sp, x29, #0x60
  100152bc8  ldp     d9, d8, [sp], #0x10
  100152bcc  ldp     x28, x27, [sp], #0x10
  100152bd0  ldp     x26, x25, [sp], #0x10
  100152bd4  ldp     x24, x23, [sp], #0x10
  100152bd8  ldp     x22, x21, [sp], #0x10
  100152bdc  ldp     x20, x19, [sp], #0x10
  100152be0  ldp     x29, x30, [sp], #0x10
  100152be4  b       _objc_msgSend                            ; [self setNotifier:0]
loc_100152be8:
  100152be8  adrp    x8, #0x10041d000
  100152bec  nop
  100152bf0  ldr     x1, [x8, #0x128]
  100152bf4  mov     x0, x19
  100152bf8  bl      _objc_msgSend                            ; [self timeout]
  100152bfc  mov     v9.16b, v0.16b
  100152c00  adrp    x8, #0x10041e000
  100152c04  ldr     x0, [x8, #0x38]                          ; class NSDate
  100152c08  ldr     x1, [sp, #0x18]
  100152c0c  bl      _objc_msgSend                            ; [NSDate date]
  100152c10  mov     x29, x29
  100152c14  bl      _objc_retainAutoreleasedReturnValue
  100152c18  mov     x20, x0
  100152c1c  ldr     x1, [sp, #0x10]
  100152c20  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSince1970]
  100152c24  fsub    d0, d0, d8
  100152c28  fsub    d8, d9, d0                               ; t1 = ([self timeout] - ([[NSDate date] timeIntervalSince1970] - [[NSDate date] timeIntervalSince1970]))
  100152c2c  mov     x0, x20
  100152c30  bl      _objc_release
  100152c34  adrp    x8, #0x10041e000
  100152c38  ldr     x21, [x8, #0x30]                         ; class NSTimer
  100152c3c  adrp    x8, #0x10041d000
  100152c40  nop
  100152c44  ldr     x22, [x8, #0x130]
  100152c48  mov     x0, x19
  100152c4c  mov     x1, x23
  100152c50  bl      _objc_msgSend                            ; [self container]
  100152c54  mov     x29, x29
  100152c58  bl      _objc_retainAutoreleasedReturnValue
  100152c5c  mov     x20, x0
  100152c60  adrp    x8, #0x100417000
  100152c64  nop
  100152c68  ldr     x1, [x8, #0x890]
  100152c6c  mov     w5, #0
  100152c70  mov     x0, x21
  100152c74  mov     v0.16b, v8.16b
  100152c78  mov     x2, x19
  100152c7c  mov     x3, x22
  100152c80  mov     x4, x20
  100152c84  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:t1 target:self selector:@selector(handleTimer:) userInfo:[self container] repeats:0]
  100152c88  mov     x29, x29
  100152c8c  bl      _objc_retainAutoreleasedReturnValue
  100152c90  bl      _objc_release
  100152c94  mov     x0, x20
  100152c98  sub     sp, x29, #0x60
  100152c9c  ldp     d9, d8, [sp], #0x10
  100152ca0  ldp     x28, x27, [sp], #0x10
  100152ca4  ldp     x26, x25, [sp], #0x10
  100152ca8  ldp     x24, x23, [sp], #0x10
  100152cac  ldp     x22, x21, [sp], #0x10
  100152cb0  ldp     x20, x19, [sp], #0x10
  100152cb4  ldp     x29, x30, [sp], #0x10
  100152cb8  b       _objc_release
  100152cbc  b       loc_100152dac
  100152cc0  mov     x19, x0
  100152cc4  b       loc_100152d80
  100152cc8  mov     x19, x0
  100152ccc  b       loc_100152d2c
  100152cd0  mov     x19, x0
  100152cd4  mov     x0, x21
  100152cd8  bl      _objc_release
  100152cdc  b       loc_100152d2c
  100152ce0  b       loc_100152d0c
  100152ce4  mov     x19, x0
  100152ce8  mov     x0, x21
  100152cec  bl      _objc_release
  100152cf0  b       loc_100152cf8
  100152cf4  mov     x19, x0
loc_100152cf8:
  100152cf8  mov     x0, x24
  100152cfc  bl      _objc_release
  100152d00  b       loc_100152d88
  100152d04  mov     x19, x0
  100152d08  b       loc_100152d88
loc_100152d0c:
  100152d0c  mov     x19, x0
  100152d10  mov     x0, x25
  100152d14  bl      _objc_release
  100152d18  b       loc_100152d88
  100152d1c  mov     x19, x0
  100152d20  b       loc_100152d80
  100152d24  mov     x23, x22
  100152d28  mov     x19, x0
loc_100152d2c:
  100152d2c  mov     x0, x25
  100152d30  b       loc_100152d7c
  100152d34  mov     x23, x22
  100152d38  mov     x19, x0
  100152d3c  b       loc_100152d78
  100152d40  mov     x23, x22
  100152d44  mov     x19, x0
  100152d48  b       loc_100152d70
  100152d4c  mov     x23, x22
  100152d50  mov     x19, x0
  100152d54  b       loc_100152d68
  100152d58  mov     x23, x22
  100152d5c  mov     x19, x0
  100152d60  mov     x0, x21
  100152d64  bl      _objc_release
loc_100152d68:
  100152d68  mov     x0, x24
  100152d6c  bl      _objc_release
loc_100152d70:
  100152d70  mov     x0, x26
  100152d74  bl      _objc_release
loc_100152d78:
  100152d78  mov     x0, x28
loc_100152d7c:
  100152d7c  bl      _objc_release
loc_100152d80:
  100152d80  mov     x0, x23
  100152d84  bl      _objc_release
loc_100152d88:
  100152d88  mov     x0, x20
  100152d8c  bl      _objc_sync_exit                          ; objc_sync_exit()
  100152d90  b       loc_100152db0
  100152d94  b       loc_100152dac
  100152d98  mov     x19, x0
  100152d9c  mov     x0, x21
  100152da0  bl      _objc_release
  100152da4  b       loc_100152db0
  100152da8  b       loc_100152dac
loc_100152dac:
  100152dac  mov     x19, x0
loc_100152db0:
  100152db0  mov     x0, x20
  100152db4  bl      _objc_release
  100152db8  mov     x0, x19
  100152dbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainerOpener callNotifiers:]
; address 0x100152dc0  size 736  kind objc
; ======================================================================
  100152dc0  stp     x29, x30, [sp, #-0x10]!
  100152dc4  mov     x29, sp
  100152dc8  stp     x20, x19, [sp, #-0x10]!
  100152dcc  stp     x22, x21, [sp, #-0x10]!
  100152dd0  stp     x24, x23, [sp, #-0x10]!
  100152dd4  stp     x26, x25, [sp, #-0x10]!
  100152dd8  stp     x28, x27, [sp, #-0x10]!
  100152ddc  sub     sp, sp, #0xd0
  100152de0  mov     x20, x0
  100152de4  adrp    x21, #0x1003b0000
  100152de8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  100152dec  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100152df0  stur    x8, [x29, #-0x58]
  100152df4  mov     x0, x2
  100152df8  bl      _objc_retain
  100152dfc  mov     x19, x0
  100152e00  mov     x0, x20
  100152e04  bl      _objc_retain
  100152e08  mov     x22, x0
  100152e0c  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100152e10  adrp    x8, #0x10041d000
  100152e14  nop
  100152e18  ldr     x1, [x8, #0x138]
  100152e1c  mov     x0, x22
  100152e20  bl      _objc_msgSend                            ; [self haveNotified]
  100152e24  tbz     w0, #0, loc_100152e3c                    ; if (!([self haveNotified] & 1))
  100152e28  mov     x0, x22
  100152e2c  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100152e30  mov     x0, x22
  100152e34  bl      _objc_release
  100152e38  b       loc_100152ff0
loc_100152e3c:
  100152e3c  adrp    x8, #0x10041d000
  100152e40  nop
  100152e44  ldr     x1, [x8, #0x140]
  100152e48  mov     w2, #1
  100152e4c  mov     x0, x22
  100152e50  bl      _objc_msgSend                            ; [self setHaveNotified:1]
  100152e54  mov     x0, x22
  100152e58  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100152e5c  mov     x0, x22
  100152e60  bl      _objc_release
  100152e64  adrp    x26, #0x10042d000
  100152e68  ldr     x0, [x26, #0xf18]                        ; load g_10042df18
  100152e6c  bl      _objc_retain
  100152e70  mov     x21, x0
  100152e74  bl      _objc_sync_enter                         ; objc_sync_enter(g_10042df18)
  100152e78  ldr     x25, [x26, #0xf18]                       ; load g_10042df18
  100152e7c  adrp    x8, #0x10041d000
  100152e80  nop
  100152e84  ldr     x23, [x8, #0x1c0]
  100152e88  mov     x20, #0
  100152e8c  mov     x0, x22
  100152e90  mov     x1, x23
  100152e94  bl      _objc_msgSend                            ; [self containerId]
  100152e98  mov     x29, x29
  100152e9c  bl      _objc_retainAutoreleasedReturnValue
  100152ea0  mov     x24, x0
  100152ea4  adrp    x8, #0x100417000
  100152ea8  nop
  100152eac  ldr     x1, [x8, #0x40]
  100152eb0  mov     x0, x25
  100152eb4  mov     x2, x24
  100152eb8  bl      _objc_msgSend                            ; [g_10042df18 objectForKey:[self containerId]]
  100152ebc  mov     x29, x29
  100152ec0  bl      _objc_retainAutoreleasedReturnValue
  100152ec4  mov     x20, x0
  100152ec8  mov     x0, x24
  100152ecc  bl      _objc_release
  100152ed0  ldr     x24, [x26, #0xf18]                       ; load g_10042df18
  100152ed4  mov     x0, x22
  100152ed8  mov     x1, x23
  100152edc  bl      _objc_msgSend                            ; [self containerId]
  100152ee0  mov     x29, x29
  100152ee4  bl      _objc_retainAutoreleasedReturnValue
  100152ee8  mov     x22, x0
  100152eec  adrp    x8, #0x10041b000
  100152ef0  nop
  100152ef4  ldr     x1, [x8, #0x1e0]
  100152ef8  mov     x0, x24
  100152efc  mov     x2, x22
  100152f00  bl      _objc_msgSend                            ; [g_10042df18 removeObjectForKey:[self containerId]]
  100152f04  mov     x0, x22
  100152f08  bl      _objc_release
  100152f0c  mov     x0, x21
  100152f10  bl      _objc_sync_exit                          ; objc_sync_exit(g_10042df18)
  100152f14  mov     x0, x21
  100152f18  bl      _objc_release
  100152f1c  stp     xzr, xzr, [sp, #0xb8]
  100152f20  stp     xzr, xzr, [sp, #0xa8]
  100152f24  stp     xzr, xzr, [sp, #0x98]
  100152f28  stp     xzr, xzr, [sp, #0x88]
  100152f2c  mov     x0, x20
  100152f30  bl      _objc_retain
  100152f34  mov     x21, x0
  100152f38  adrp    x8, #0x100416000
  100152f3c  nop
  100152f40  ldr     x22, [x8, #0xe00]
  100152f44  add     x2, sp, #0x88
  100152f48  add     x3, sp, #8
  100152f4c  mov     x4, #0x10
  100152f50  mov     x1, x22
  100152f54  bl      _objc_msgSend                            ; [[g_10042df18 objectForKey:[self containerId]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100152f58  mov     x23, x0
  100152f5c  cbz     x23, loc_100152fd8                       ; if ([[g_10042df18 objectForKey:[self containerId]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] == 0)
  100152f60  ldr     x8, [sp, #0x98]
  100152f64  ldr     x28, [x8]
  100152f68  adrp    x8, #0x10041d000
  100152f6c  add     x8, x8, #0x120                           ; &@selector(containerAvailable:)
  100152f70  ldr     x24, [x8]
  100152f74  add     x25, sp, #0x88
  100152f78  add     x26, sp, #8
loc_100152f7c:
  100152f7c  mov     x27, #0
loc_100152f80:
  100152f80  ldr     x8, [sp, #0x98]
  100152f84  ldr     x8, [x8]
  100152f88  cmp     x8, x28
  100152f8c  b.eq    loc_100152f98                            ; if (x8 == x28)
  100152f90  mov     x0, x21
  100152f94  bl      _objc_enumerationMutation                ; objc_enumerationMutation([g_10042df18 objectForKey:[self containerId]])
loc_100152f98:
  100152f98  ldr     x8, [sp, #0x90]
  100152f9c  ldr     x0, [x8, x27, lsl #3]
  100152fa0  mov     x1, x24
  100152fa4  mov     x2, x19
  100152fa8  bl      _objc_msgSend                            ; [x0 containerAvailable:arg1]
  100152fac  add     x27, x27, #1
  100152fb0  cmp     x27, x23
  100152fb4  b.lo    loc_100152f80                            ; if ((x27 + 1) <u [[g_10042df18 objectForKey:[self containerId]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16])
  100152fb8  mov     x4, #0x10
  100152fbc  mov     x0, x21
  100152fc0  mov     x1, x22
  100152fc4  mov     x2, x25
  100152fc8  mov     x3, x26
  100152fcc  bl      _objc_msgSend                            ; [[g_10042df18 objectForKey:[self containerId]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16]
  100152fd0  mov     x23, x0
  100152fd4  cbnz    x23, loc_100152f7c                       ; if ([[g_10042df18 objectForKey:[self containerId]] countByEnumeratingWithState:&sp[0x88] objects:&sp[0x8] count:16] != 0)
loc_100152fd8:
  100152fd8  mov     x0, x21
  100152fdc  bl      _objc_release
  100152fe0  mov     x0, x21
  100152fe4  bl      _objc_release
  100152fe8  adrp    x21, #0x1003b0000
  100152fec  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
loc_100152ff0:
  100152ff0  mov     x0, x19
  100152ff4  bl      _objc_release
  100152ff8  ldr     x8, [x21]                                ; x8 = ___stack_chk_guard[+0x0]
  100152ffc  ldur    x9, [x29, #-0x58]
  100153000  sub     x8, x8, x9
  100153004  cbnz    x8, loc_100153028                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100153008  sub     sp, x29, #0x50
  10015300c  ldp     x28, x27, [sp], #0x10
  100153010  ldp     x26, x25, [sp], #0x10
  100153014  ldp     x24, x23, [sp], #0x10
  100153018  ldp     x22, x21, [sp], #0x10
  10015301c  ldp     x20, x19, [sp], #0x10
  100153020  ldp     x29, x30, [sp], #0x10
  100153024  ret
loc_100153028:
  100153028  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10015302c:
  10015302c  mov     x23, x0
loc_100153030:
  100153030  mov     x0, x21
  100153034  bl      _objc_release
  100153038  mov     x0, x20
loc_10015303c:
  10015303c  bl      _objc_release
  100153040  mov     x0, x19
  100153044  bl      _objc_release
  100153048  mov     x0, x23
  10015304c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100153050  mov     x23, x0
  100153054  mov     x0, x22
  100153058  bl      _objc_sync_exit                          ; objc_sync_exit()
  10015305c  mov     x0, x22
  100153060  b       loc_10015303c
  100153064  mov     x23, x0
  100153068  mov     x0, x24
  10015306c  bl      _objc_release
  100153070  mov     x20, #0
  100153074  b       loc_10015308c
  100153078  mov     x23, x0
  10015307c  b       loc_10015308c
  100153080  mov     x23, x0
  100153084  mov     x0, x22
  100153088  bl      _objc_release
loc_10015308c:
  10015308c  mov     x0, x21
  100153090  bl      _objc_sync_exit                          ; objc_sync_exit()
  100153094  b       loc_100153030
  100153098  b       loc_10015302c
  10015309c  b       loc_10015302c

; ======================================================================
; -[TAGContainerOpener handleTimer:]
; address 0x1001530a0  size 116  kind objc
; ======================================================================
  1001530a0  stp     x29, x30, [sp, #-0x10]!
  1001530a4  mov     x29, sp
  1001530a8  stp     x20, x19, [sp, #-0x10]!
  1001530ac  mov     x19, x0
  1001530b0  adrp    x8, #0x100418000
  1001530b4  nop
  1001530b8  ldr     x1, [x8, #0xea8]
  1001530bc  mov     x0, x2
  1001530c0  bl      _objc_msgSend                            ; [arg1 userInfo]
  1001530c4  mov     x29, x29
  1001530c8  bl      _objc_retainAutoreleasedReturnValue
  1001530cc  mov     x20, x0
  1001530d0  adrp    x8, #0x10041d000
  1001530d4  nop
  1001530d8  ldr     x1, [x8, #0x98]
  1001530dc  mov     x0, x19
  1001530e0  mov     x2, x20
  1001530e4  bl      _objc_msgSend                            ; [self callNotifiers:[arg1 userInfo]]
  1001530e8  mov     x0, x20
  1001530ec  ldp     x20, x19, [sp], #0x10
  1001530f0  ldp     x29, x30, [sp], #0x10
  1001530f4  b       _objc_release
  1001530f8  mov     x19, x0
  1001530fc  b       loc_10015310c
  100153100  mov     x19, x0
  100153104  mov     x0, x20
  100153108  bl      _objc_release
loc_10015310c:
  10015310c  mov     x0, x19
  100153110  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGContainerOpener tagManager]
; address 0x100153114  size 16  kind objc
; ======================================================================
  100153114  adrp    x8, #0x100420000
  100153118  ldrsw   x8, [x8, #0xa74]                         ; ivar offset TAGContainerOpener._tagManager (+0x10)
  10015311c  ldr     x0, [x0, x8]                             ; x0 = self->_tagManager
  100153120  ret

; ======================================================================
; -[TAGContainerOpener setTagManager:]
; address 0x100153124  size 56  kind objc
; ======================================================================
  100153124  stp     x29, x30, [sp, #-0x10]!
  100153128  mov     x29, sp
  10015312c  stp     x20, x19, [sp, #-0x10]!
  100153130  mov     x19, x0
  100153134  adrp    x8, #0x100420000
  100153138  ldrsw   x20, [x8, #0xa74]                        ; ivar offset TAGContainerOpener._tagManager (+0x10)
  10015313c  mov     x0, x2
  100153140  bl      _objc_retain
  100153144  ldr     x8, [x19, x20]                           ; x8 = self->_tagManager
  100153148  str     x0, [x19, x20]                           ; self->_tagManager = arg1
  10015314c  mov     x0, x8
  100153150  ldp     x20, x19, [sp], #0x10
  100153154  ldp     x29, x30, [sp], #0x10
  100153158  b       _objc_release

; ======================================================================
; -[TAGContainerOpener containerId]
; address 0x10015315c  size 16  kind objc
; ======================================================================
  10015315c  mov     w3, #0
  100153160  adrp    x8, #0x100420000
  100153164  ldrsw   x2, [x8, #0xa70]                         ; ivar offset TAGContainerOpener._containerId (+0x18)
  100153168  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[TAGContainerOpener setContainerId:]
; address 0x10015316c  size 12  kind objc
; ======================================================================
  10015316c  adrp    x8, #0x100420000
  100153170  ldrsw   x3, [x8, #0xa70]                         ; ivar offset TAGContainerOpener._containerId (+0x18)
  100153174  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainerOpener timeout]
; address 0x100153178  size 16  kind objc
; ======================================================================
  100153178  adrp    x8, #0x100420000
  10015317c  ldrsw   x8, [x8, #0xa78]                         ; ivar offset TAGContainerOpener._timeout (+0x20)
  100153180  ldr     d0, [x0, x8]                             ; d0 = self->_timeout
  100153184  ret

; ======================================================================
; -[TAGContainerOpener setTimeout:]
; address 0x100153188  size 16  kind objc
; ======================================================================
  100153188  adrp    x8, #0x100420000
  10015318c  ldrsw   x8, [x8, #0xa78]                         ; ivar offset TAGContainerOpener._timeout (+0x20)
  100153190  str     d0, [x0, x8]                             ; self->_timeout = arg1
  100153194  ret

; ======================================================================
; -[TAGContainerOpener haveNotified]
; address 0x100153198  size 20  kind objc
; ======================================================================
  100153198  adrp    x8, #0x100420000
  10015319c  ldrsw   x8, [x8, #0xa80]                         ; ivar offset TAGContainerOpener._haveNotified (+0x8)
  1001531a0  ldrb    w8, [x0, x8]                             ; w8 = self->_haveNotified
  1001531a4  and     w0, w8, #1
  1001531a8  ret

; ======================================================================
; -[TAGContainerOpener setHaveNotified:]
; address 0x1001531ac  size 16  kind objc
; ======================================================================
  1001531ac  adrp    x8, #0x100420000
  1001531b0  ldrsw   x8, [x8, #0xa80]                         ; ivar offset TAGContainerOpener._haveNotified (+0x8)
  1001531b4  strb    w2, [x0, x8]                             ; self->_haveNotified = arg1
  1001531b8  ret

; ======================================================================
; -[TAGContainerOpener notifier]
; address 0x1001531bc  size 16  kind objc
; ======================================================================
  1001531bc  adrp    x8, #0x100420000
  1001531c0  ldrsw   x8, [x8, #0xa7c]                         ; ivar offset TAGContainerOpener._notifier (+0x28)
  1001531c4  ldr     x0, [x0, x8]                             ; x0 = self->_notifier
  1001531c8  ret

; ======================================================================
; -[TAGContainerOpener setNotifier:]
; address 0x1001531cc  size 20  kind objc
; ======================================================================
  1001531cc  adrp    x8, #0x100420000
  1001531d0  ldrsw   x8, [x8, #0xa7c]                         ; ivar offset TAGContainerOpener._notifier (+0x28)
  1001531d4  add     x0, x0, x8
  1001531d8  mov     x1, x2
  1001531dc  b       _objc_storeStrong

; ======================================================================
; -[TAGContainerOpener container]
; address 0x1001531e0  size 16  kind objc
; ======================================================================
  1001531e0  adrp    x8, #0x100420000
  1001531e4  ldrsw   x2, [x8, #0xa84]                         ; ivar offset TAGContainerOpener._container (+0x30)
  1001531e8  mov     w3, #1
  1001531ec  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[TAGContainerOpener setContainer:]
; address 0x1001531f0  size 12  kind objc
; ======================================================================
  1001531f0  adrp    x8, #0x100420000
  1001531f4  ldrsw   x3, [x8, #0xa84]                         ; ivar offset TAGContainerOpener._container (+0x30)
  1001531f8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[TAGContainerOpener .cxx_destruct]
; address 0x1001531fc  size 104  kind objc
; ======================================================================
  1001531fc  stp     x29, x30, [sp, #-0x10]!
  100153200  mov     x29, sp
  100153204  stp     x20, x19, [sp, #-0x10]!
  100153208  mov     x19, x0
  10015320c  adrp    x8, #0x100420000
  100153210  ldrsw   x8, [x8, #0xa84]                         ; ivar offset TAGContainerOpener._container (+0x30)
  100153214  add     x0, x19, x8
  100153218  mov     x1, #0
  10015321c  bl      _objc_storeStrong
  100153220  adrp    x8, #0x100420000
  100153224  ldrsw   x8, [x8, #0xa7c]                         ; ivar offset TAGContainerOpener._notifier (+0x28)
  100153228  add     x0, x19, x8
  10015322c  mov     x1, #0
  100153230  bl      _objc_storeStrong
  100153234  adrp    x8, #0x100420000
  100153238  ldrsw   x8, [x8, #0xa70]                         ; ivar offset TAGContainerOpener._containerId (+0x18)
  10015323c  add     x0, x19, x8
  100153240  mov     x1, #0
  100153244  bl      _objc_storeStrong
  100153248  mov     x1, #0
  10015324c  adrp    x8, #0x100420000
  100153250  ldrsw   x8, [x8, #0xa74]                         ; ivar offset TAGContainerOpener._tagManager (+0x10)
  100153254  add     x0, x19, x8
  100153258  ldp     x20, x19, [sp], #0x10
  10015325c  ldp     x29, x30, [sp], #0x10
  100153260  b       _objc_storeStrong
