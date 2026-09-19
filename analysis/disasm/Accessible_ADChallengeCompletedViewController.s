// unit Accessible_ADChallengeCompletedViewController — 23 functions
//   0x1000670f0     208  -[Accessible_ADChallengeCompletedViewController initWithDictionary:]
//   0x1000671c0      32  -[Accessible_ADChallengeCompletedViewController tableView:numberOfRowsInSection:]
//   0x1000671e0     140  -[Accessible_ADChallengeCompletedViewController tableView:heightForRowAtIndexPath:]
//   0x10006726c     140  -[Accessible_ADChallengeCompletedViewController tableView:heightForHeaderInSection:]
//   0x1000672f8     252  -[Accessible_ADChallengeCompletedViewController tableView:viewForHeaderInSection:]
//   0x1000673f4     940  -[Accessible_ADChallengeCompletedViewController viewDidLoad]
//   0x1000677a0       8  -[Accessible_ADChallengeCompletedViewController numberOfSectionsInTableView:]
//   0x1000677a8    1124  -[Accessible_ADChallengeCompletedViewController tableView:cellForRowAtIndexPath:]
//   0x100067c0c    1128  -[Accessible_ADChallengeCompletedViewController cellForStatsAtIndex:]
//   0x100068074    3824  -[Accessible_ADChallengeCompletedViewController checkCompletion]
//   0x100068f64     164  -[Accessible_ADChallengeCompletedViewController missionSelectButtonPressed:]
//   0x100069008     300  -[Accessible_ADChallengeCompletedViewController nextMissionButtonPressed:]
//   0x100069134     240  -[Accessible_ADChallengeCompletedViewController retryButtonPressed:]
//   0x100069224     460  -[Accessible_ADChallengeCompletedViewController loadView]
//   0x1000693f0     852  -[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]
//   0x100069744       4  -[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke
//   0x100069748       4  -[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2
//   0x10006974c      40  -[Accessible_ADChallengeCompletedViewController accessibilityPerformMagicTap]
//   0x100069774      16  -[Accessible_ADChallengeCompletedViewController challengeDict]
//   0x100069784      56  -[Accessible_ADChallengeCompletedViewController setChallengeDict:]
//   0x1000697bc      16  -[Accessible_ADChallengeCompletedViewController nextChallengeButton]
//   0x1000697cc      56  -[Accessible_ADChallengeCompletedViewController setNextChallengeButton:]
//   0x100069804     124  -[Accessible_ADChallengeCompletedViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController initWithDictionary:]
; address 0x1000670f0  size 208  kind objc
; ======================================================================
  1000670f0  stp     x22, x21, [sp, #-0x30]!
  1000670f4  stp     x20, x19, [sp, #0x10]
  1000670f8  stp     x29, x30, [sp, #0x20]
  1000670fc  add     x29, sp, #0x20
  100067100  sub     sp, sp, #0x10
  100067104  mov     x20, x0
  100067108  mov     x0, x2
  10006710c  bl      _objc_retain
  100067110  mov     x19, x0
  100067114  str     x20, [sp]
  100067118  adrp    x8, #0x10041e000
  10006711c  ldr     x8, [x8, #0xda0]
  100067120  str     x8, [sp, #8]
  100067124  adrp    x8, #0x100416000
  100067128  nop
  10006712c  ldr     x1, [x8, #0xb40]
  100067130  mov     x20, #0
  100067134  adrp    x2, #0x1003bd000
  100067138  add     x2, x2, #0xb0                            ; @"ADChallengeCompletedViewController"
  10006713c  mov     x0, sp
  100067140  mov     x3, #0
  100067144  bl      _objc_msgSendSuper2                      ; [super initWithNibName:@"ADChallengeCompletedViewController" bundle:0]
  100067148  mov     x21, x0
  10006714c  cbz     x21, loc_100067184                       ; if (self == 0)
  100067150  mov     x20, x21
  100067154  adrp    x8, #0x100417000
  100067158  nop
  10006715c  ldr     x1, [x8, #0x140]
  100067160  mov     x0, x21
  100067164  mov     x2, x19
  100067168  bl      _objc_msgSend                            ; [self setChallengeDict:arg1]
  10006716c  mov     x20, x21
  100067170  adrp    x8, #0x100418000
  100067174  nop
  100067178  ldr     x1, [x8, #0x9c0]
  10006717c  mov     x0, x21
  100067180  bl      _objc_msgSend                            ; [self checkCompletion]
loc_100067184:
  100067184  mov     x0, x19
  100067188  bl      _objc_release
  10006718c  mov     x0, x21
  100067190  sub     sp, x29, #0x20
  100067194  ldp     x29, x30, [sp, #0x20]
  100067198  ldp     x20, x19, [sp, #0x10]
  10006719c  ldp     x22, x21, [sp], #0x30
  1000671a0  ret
  1000671a4  mov     x21, x0
  1000671a8  mov     x0, x19
  1000671ac  bl      _objc_release
  1000671b0  mov     x0, x20
  1000671b4  bl      _objc_release
  1000671b8  mov     x0, x21
  1000671bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController tableView:numberOfRowsInSection:]
; address 0x1000671c0  size 32  kind objc
; ======================================================================
  1000671c0  cmp     x3, #2
  1000671c4  b.hi    loc_1000671d8                            ; if (arg2 >u 2)
  1000671c8  adrp    x8, #0x100181000
  1000671cc  add     x8, x8, #0xc50                           ; tconst_100181c50
  1000671d0  ldr     x0, [x8, x3, lsl #3]
  1000671d4  ret
loc_1000671d8:
  1000671d8  mov     x0, #0
  1000671dc  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController tableView:heightForRowAtIndexPath:]
; address 0x1000671e0  size 140  kind objc
; ======================================================================
  1000671e0  stp     x20, x19, [sp, #-0x20]!
  1000671e4  stp     x29, x30, [sp, #0x10]
  1000671e8  add     x29, sp, #0x10
  1000671ec  adrp    x8, #0x10041d000
  1000671f0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000671f4  adrp    x8, #0x100416000
  1000671f8  nop
  1000671fc  ldr     x1, [x8, #0xc00]
  100067200  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100067204  mov     x29, x29
  100067208  bl      _objc_retainAutoreleasedReturnValue
  10006720c  mov     x19, x0
  100067210  adrp    x8, #0x100416000
  100067214  nop
  100067218  ldr     x1, [x8, #0xd18]
  10006721c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100067220  mov     x20, x0
  100067224  mov     x0, x19
  100067228  bl      _objc_release
  10006722c  cmp     w20, #0
  100067230  adrp    x8, #0x100181000
  100067234  ldr     d0, [x8, #0xb80]                         ; d0 = 80.0
  100067238  nop
  10006723c  ldr     d1, [x8, #0x9d0]                         ; d1 = 50.0
  100067240  fcsel   d0, d1, d0, ne
  100067244  ldp     x29, x30, [sp, #0x10]
  100067248  ldp     x20, x19, [sp], #0x20
  10006724c  ret
  100067250  mov     x20, x0
  100067254  b       loc_100067264
  100067258  mov     x20, x0
  10006725c  mov     x0, x19
  100067260  bl      _objc_release
loc_100067264:
  100067264  mov     x0, x20
  100067268  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController tableView:heightForHeaderInSection:]
; address 0x10006726c  size 140  kind objc
; ======================================================================
  10006726c  stp     x20, x19, [sp, #-0x20]!
  100067270  stp     x29, x30, [sp, #0x10]
  100067274  add     x29, sp, #0x10
  100067278  adrp    x8, #0x10041d000
  10006727c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100067280  adrp    x8, #0x100416000
  100067284  nop
  100067288  ldr     x1, [x8, #0xc00]
  10006728c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100067290  mov     x29, x29
  100067294  bl      _objc_retainAutoreleasedReturnValue
  100067298  mov     x19, x0
  10006729c  adrp    x8, #0x100416000
  1000672a0  nop
  1000672a4  ldr     x1, [x8, #0xd18]
  1000672a8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000672ac  mov     x20, x0
  1000672b0  mov     x0, x19
  1000672b4  bl      _objc_release
  1000672b8  cmp     w20, #0
  1000672bc  adrp    x8, #0x100181000
  1000672c0  ldr     d0, [x8, #0xb88]                         ; d0 = 140.0
  1000672c4  nop
  1000672c8  ldr     d1, [x8, #0xa08]                         ; d1 = 60.0
  1000672cc  fcsel   d0, d1, d0, ne
  1000672d0  ldp     x29, x30, [sp, #0x10]
  1000672d4  ldp     x20, x19, [sp], #0x20
  1000672d8  ret
  1000672dc  mov     x20, x0
  1000672e0  b       loc_1000672f0
  1000672e4  mov     x20, x0
  1000672e8  mov     x0, x19
  1000672ec  bl      _objc_release
loc_1000672f0:
  1000672f0  mov     x0, x20
  1000672f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController tableView:viewForHeaderInSection:]
; address 0x1000672f8  size 252  kind objc
; ======================================================================
  1000672f8  stp     x20, x19, [sp, #-0x20]!
  1000672fc  stp     x29, x30, [sp, #0x10]
  100067300  add     x29, sp, #0x10
  100067304  mov     x20, x3
  100067308  adrp    x8, #0x10041e000
  10006730c  ldr     x0, [x8, #0x168]                         ; class ADAccessibilityTableHeaderLabel
  100067310  adrp    x8, #0x100416000
  100067314  nop
  100067318  ldr     x1, [x8, #0xac8]
  10006731c  bl      _objc_msgSend                            ; [ADAccessibilityTableHeaderLabel alloc]
  100067320  adrp    x8, #0x1003b0000
  100067324  ldr     x8, [x8, #0x10]                          ; _CGRectZero
  100067328  ldp     d0, d1, [x8]
  10006732c  ldp     d2, d3, [x8, #0x10]
  100067330  adrp    x8, #0x100417000
  100067334  nop
  100067338  ldr     x1, [x8, #0x178]
  10006733c  bl      _objc_msgSend                            ; [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  100067340  mov     x19, x0
  100067344  cmp     x20, #2
  100067348  b.eq    loc_100067374                            ; if (arg2 == 2)
  10006734c  cmp     x20, #1
  100067350  b.ne    loc_100067394                            ; if (arg2 != 1)
  100067354  adrp    x8, #0x100416000
  100067358  nop
  10006735c  ldr     x1, [x8, #0xb68]
  100067360  adrp    x2, #0x1003be000
  100067364  add     x2, x2, #0xb50                           ; @"Rewards"
  100067368  mov     x0, x19
  10006736c  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Rewards"]
  100067370  b       loc_1000673c8
loc_100067374:
  100067374  adrp    x8, #0x100416000
  100067378  nop
  10006737c  ldr     x1, [x8, #0xb68]
  100067380  adrp    x2, #0x1003be000
  100067384  add     x2, x2, #0xb70                           ; @"Statistics"
  100067388  mov     x0, x19
  10006738c  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Statistics"]
  100067390  b       loc_1000673c8
loc_100067394:
  100067394  cbnz    x20, loc_1000673c8                       ; if (arg2 != 0)
  100067398  adrp    x8, #0x1003b0000
  10006739c  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  1000673a0  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityScreenChangedNotification[+0x0]
  1000673a4  mov     x1, x19
  1000673a8  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}])
  1000673ac  adrp    x8, #0x100416000
  1000673b0  nop
  1000673b4  ldr     x1, [x8, #0xb68]
  1000673b8  adrp    x2, #0x1003bc000
  1000673bc  add     x2, x2, #0x8f0                           ; @"Stars"
  1000673c0  mov     x0, x19
  1000673c4  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Stars"]
loc_1000673c8:
  1000673c8  mov     x0, x19
  1000673cc  ldp     x29, x30, [sp, #0x10]
  1000673d0  ldp     x20, x19, [sp], #0x20
  1000673d4  b       _objc_autoreleaseReturnValue
  1000673d8  mov     x20, x0
  1000673dc  b       loc_1000673ec
  1000673e0  mov     x20, x0
  1000673e4  mov     x0, x19
  1000673e8  bl      _objc_release
loc_1000673ec:
  1000673ec  mov     x0, x20
  1000673f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController viewDidLoad]
; address 0x1000673f4  size 940  kind objc
; ======================================================================
  1000673f4  stp     x26, x25, [sp, #-0x50]!
  1000673f8  stp     x24, x23, [sp, #0x10]
  1000673fc  stp     x22, x21, [sp, #0x20]
  100067400  stp     x20, x19, [sp, #0x30]
  100067404  stp     x29, x30, [sp, #0x40]
  100067408  add     x29, sp, #0x40
  10006740c  mov     x19, x0
  100067410  adrp    x8, #0x100418000
  100067414  nop
  100067418  ldr     x1, [x8, #0x6f0]
  10006741c  bl      _objc_msgSend                            ; [self loadStatusBar]
  100067420  adrp    x8, #0x100417000
  100067424  nop
  100067428  ldr     x1, [x8, #0x2a8]
  10006742c  mov     x0, x19
  100067430  bl      _objc_msgSend                            ; [self statusBarViewController]
  100067434  mov     x29, x29
  100067438  bl      _objc_retainAutoreleasedReturnValue
  10006743c  mov     x20, x0
  100067440  adrp    x8, #0x100417000
  100067444  nop
  100067448  ldr     x1, [x8, #0x2b0]
  10006744c  mov     w2, #1
  100067450  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  100067454  mov     x0, x20
  100067458  bl      _objc_release
  10006745c  adrp    x25, #0x10041d000
  100067460  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100067464  adrp    x8, #0x100416000
  100067468  nop
  10006746c  ldr     x21, [x8, #0xec8]
  100067470  mov     x1, x21
  100067474  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100067478  mov     x29, x29
  10006747c  bl      _objc_retainAutoreleasedReturnValue
  100067480  mov     x20, x0
  100067484  adrp    x26, #0x10041d000
  100067488  ldr     x0, [x26, #0xfc0]                        ; class ADInGameStats
  10006748c  adrp    x8, #0x100417000
  100067490  nop
  100067494  ldr     x22, [x8, #0x228]
  100067498  mov     x1, x22
  10006749c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000674a0  mov     x29, x29
  1000674a4  bl      _objc_retainAutoreleasedReturnValue
  1000674a8  mov     x23, x0
  1000674ac  adrp    x8, #0x100417000
  1000674b0  nop
  1000674b4  ldr     x1, [x8, #0xdb0]
  1000674b8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  1000674bc  mov     x24, x0
  1000674c0  adrp    x8, #0x100417000
  1000674c4  nop
  1000674c8  ldr     x1, [x8, #0x958]
  1000674cc  mov     x0, x20
  1000674d0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000674d4  add     w2, w0, w24
  1000674d8  adrp    x8, #0x100417000
  1000674dc  nop
  1000674e0  ldr     x1, [x8, #0x90]
  1000674e4  mov     x0, x20
  1000674e8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + [[ADInGameStats singleton] totalCoins])]
  1000674ec  mov     x0, x23
  1000674f0  bl      _objc_release
  1000674f4  mov     x0, x20
  1000674f8  bl      _objc_release
  1000674fc  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100067500  mov     x1, x21
  100067504  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100067508  mov     x29, x29
  10006750c  bl      _objc_retainAutoreleasedReturnValue
  100067510  mov     x20, x0
  100067514  ldr     x0, [x26, #0xfc0]                        ; class ADInGameStats
  100067518  mov     x1, x22
  10006751c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100067520  mov     x29, x29
  100067524  bl      _objc_retainAutoreleasedReturnValue
  100067528  mov     x21, x0
  10006752c  adrp    x8, #0x100417000
  100067530  nop
  100067534  ldr     x1, [x8, #0xdb8]
  100067538  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  10006753c  mov     x22, x0
  100067540  adrp    x8, #0x100417000
  100067544  nop
  100067548  ldr     x1, [x8, #0x960]
  10006754c  mov     x0, x20
  100067550  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100067554  add     w2, w0, w22
  100067558  adrp    x8, #0x100417000
  10006755c  nop
  100067560  ldr     x1, [x8, #0x98]
  100067564  mov     x0, x20
  100067568  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] + [[ADInGameStats singleton] diamondLoot])]
  10006756c  mov     x0, x21
  100067570  bl      _objc_release
  100067574  mov     x0, x20
  100067578  bl      _objc_release
  10006757c  adrp    x8, #0x10041d000
  100067580  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100067584  adrp    x8, #0x100416000
  100067588  nop
  10006758c  ldr     x1, [x8, #0xdf0]
  100067590  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100067594  mov     x29, x29
  100067598  bl      _objc_retainAutoreleasedReturnValue
  10006759c  mov     x20, x0
  1000675a0  adrp    x8, #0x100417000
  1000675a4  nop
  1000675a8  ldr     x1, [x8, #0x150]
  1000675ac  mov     x0, x19
  1000675b0  bl      _objc_msgSend                            ; [self challengeDict]
  1000675b4  mov     x29, x29
  1000675b8  bl      _objc_retainAutoreleasedReturnValue
  1000675bc  mov     x21, x0
  1000675c0  adrp    x8, #0x100417000
  1000675c4  nop
  1000675c8  ldr     x1, [x8, #0x40]
  1000675cc  adrp    x2, #0x1003b9000
  1000675d0  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000675d4  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  1000675d8  mov     x29, x29
  1000675dc  bl      _objc_retainAutoreleasedReturnValue
  1000675e0  mov     x22, x0
  1000675e4  adrp    x8, #0x10041d000
  1000675e8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000675ec  adrp    x8, #0x100416000
  1000675f0  nop
  1000675f4  ldr     x1, [x8, #0xc00]
  1000675f8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000675fc  mov     x29, x29
  100067600  bl      _objc_retainAutoreleasedReturnValue
  100067604  mov     x23, x0
  100067608  adrp    x8, #0x100419000
  10006760c  nop
  100067610  ldr     x1, [x8, #0x520]
  100067614  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastChallengeWorld]
  100067618  mov     x29, x29
  10006761c  bl      _objc_retainAutoreleasedReturnValue
  100067620  mov     x25, x0
  100067624  adrp    x8, #0x100419000
  100067628  nop
  10006762c  ldr     x1, [x8, #0x528]
  100067630  mov     x0, x20
  100067634  mov     x2, x22
  100067638  mov     x3, x25
  10006763c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasChallengeAfter:[[self challengeDict] objectForKey:@"challenge_id"] inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]]
  100067640  mov     x24, x0
  100067644  mov     x0, x25
  100067648  bl      _objc_release
  10006764c  mov     x0, x23
  100067650  bl      _objc_release
  100067654  mov     x0, x22
  100067658  bl      _objc_release
  10006765c  mov     x0, x21
  100067660  bl      _objc_release
  100067664  mov     x0, x20
  100067668  bl      _objc_release
  10006766c  tbz     w24, #0, loc_100067688                   ; if (!([[ADChallengeData sharedChallengeData] hasChallengeAfter:[[self challengeDict] objectForKey:@"challenge_id"] inWorld:[[ADGameParameters sharedParameters] lastChallengeWorld]] & 1))
  100067670  ldp     x29, x30, [sp, #0x40]
  100067674  ldp     x20, x19, [sp, #0x30]
  100067678  ldp     x22, x21, [sp, #0x20]
  10006767c  ldp     x24, x23, [sp, #0x10]
  100067680  ldp     x26, x25, [sp], #0x50
  100067684  ret
loc_100067688:
  100067688  adrp    x8, #0x100419000
  10006768c  nop
  100067690  ldr     x20, [x8, #0x530]
  100067694  mov     x0, x19
  100067698  mov     x1, x20
  10006769c  bl      _objc_msgSend                            ; [self nextChallengeButton]
  1000676a0  mov     x29, x29
  1000676a4  bl      _objc_retainAutoreleasedReturnValue
  1000676a8  mov     x21, x0
  1000676ac  adrp    x8, #0x100417000
  1000676b0  nop
  1000676b4  ldr     x1, [x8, #0x7e8]
  1000676b8  adrp    x2, #0x1003be000
  1000676bc  add     x2, x2, #0xb90                           ; @"next arena"
  1000676c0  bl      _objc_msgSend                            ; [[self nextChallengeButton] setAccessibilityLabel:@"next arena"]
  1000676c4  mov     x0, x21
  1000676c8  bl      _objc_release
  1000676cc  mov     x0, x19
  1000676d0  mov     x1, x20
  1000676d4  bl      _objc_msgSend                            ; [self nextChallengeButton]
  1000676d8  mov     x29, x29
  1000676dc  bl      _objc_retainAutoreleasedReturnValue
  1000676e0  mov     x20, x0
  1000676e4  adrp    x8, #0x100417000
  1000676e8  nop
  1000676ec  ldr     x1, [x8, #0x920]
  1000676f0  mov     x3, #0
  1000676f4  adrp    x2, #0x1003be000
  1000676f8  add     x2, x2, #0xb90                           ; @"next arena"
  1000676fc  bl      _objc_msgSend                            ; [[self nextChallengeButton] setTitle:@"next arena" forState:0]
  100067700  mov     x0, x20
  100067704  ldp     x29, x30, [sp, #0x40]
  100067708  ldp     x20, x19, [sp, #0x30]
  10006770c  ldp     x22, x21, [sp, #0x20]
  100067710  ldp     x24, x23, [sp, #0x10]
  100067714  ldp     x26, x25, [sp], #0x50
  100067718  b       _objc_release
  10006771c  mov     x19, x0
  100067720  mov     x0, x23
  100067724  b       loc_100067778
  100067728  mov     x19, x0
  10006772c  b       loc_100067774
  100067730  b       loc_10006778c
  100067734  b       loc_10006778c
  100067738  b       loc_10006778c
  10006773c  b       loc_10006778c
  100067740  mov     x19, x0
  100067744  b       loc_100067774
  100067748  mov     x19, x0
  10006774c  b       loc_10006776c
  100067750  mov     x19, x0
  100067754  b       loc_100067764
  100067758  mov     x19, x0
  10006775c  mov     x0, x25
  100067760  bl      _objc_release
loc_100067764:
  100067764  mov     x0, x23
  100067768  bl      _objc_release
loc_10006776c:
  10006776c  mov     x0, x22
  100067770  bl      _objc_release
loc_100067774:
  100067774  mov     x0, x21
loc_100067778:
  100067778  bl      _objc_release
  10006777c  b       loc_100067790
  100067780  mov     x19, x0
  100067784  mov     x0, x21
  100067788  b       loc_100067794
loc_10006778c:
  10006778c  mov     x19, x0
loc_100067790:
  100067790  mov     x0, x20
loc_100067794:
  100067794  bl      _objc_release
  100067798  mov     x0, x19
  10006779c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController numberOfSectionsInTableView:]
; address 0x1000677a0  size 8  kind objc
; ======================================================================
  1000677a0  mov     w0, #3
  1000677a4  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController tableView:cellForRowAtIndexPath:]
; address 0x1000677a8  size 1124  kind objc
; ======================================================================
  1000677a8  stp     x26, x25, [sp, #-0x50]!
  1000677ac  stp     x24, x23, [sp, #0x10]
  1000677b0  stp     x22, x21, [sp, #0x20]
  1000677b4  stp     x20, x19, [sp, #0x30]
  1000677b8  stp     x29, x30, [sp, #0x40]
  1000677bc  add     x29, sp, #0x40
  1000677c0  mov     x21, x0
  1000677c4  mov     x0, x3
  1000677c8  bl      _objc_retain
  1000677cc  mov     x19, x0
  1000677d0  adrp    x8, #0x100417000
  1000677d4  nop
  1000677d8  ldr     x1, [x8, #0x348]
  1000677dc  mov     x22, #0
  1000677e0  bl      _objc_msgSend                            ; [arg2 section]
  1000677e4  cbz     w0, loc_100067814                        ; if ([arg2 section] == 0)
  1000677e8  cmp     w0, #1
  1000677ec  b.ne    loc_100067a5c                            ; if ([arg2 section] != 1)
  1000677f0  adrp    x8, #0x100419000
  1000677f4  nop
  1000677f8  ldr     x1, [x8, #0x538]
  1000677fc  mov     x22, #0
  100067800  mov     x0, x21
  100067804  mov     x2, x19
  100067808  bl      _objc_msgSend                            ; [self cellForRewardsAtIndex:arg2]
  10006780c  mov     x29, x29
  100067810  b       loc_100067a84
loc_100067814:
  100067814  adrp    x8, #0x10041e000
  100067818  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10006781c  adrp    x8, #0x100416000
  100067820  nop
  100067824  ldr     x1, [x8, #0xac8]
  100067828  mov     x22, #0
  10006782c  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  100067830  adrp    x8, #0x100417000
  100067834  nop
  100067838  ldr     x1, [x8, #0x3c0]
  10006783c  mov     x22, #0
  100067840  adrp    x3, #0x1003bc000
  100067844  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  100067848  mov     w2, #3
  10006784c  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  100067850  mov     x20, x0
  100067854  mov     x22, x20
  100067858  adrp    x8, #0x100417000
  10006785c  nop
  100067860  ldr     x23, [x8, #0x350]
  100067864  mov     x0, x19
  100067868  mov     x1, x23
  10006786c  bl      _objc_msgSend                            ; [arg2 row]
  100067870  cbnz    x0, loc_1000678fc                        ; if ([arg2 row] != 0)
  100067874  mov     x22, x20
  100067878  adrp    x8, #0x100417000
  10006787c  nop
  100067880  ldr     x1, [x8, #0x320]
  100067884  mov     x0, x20
  100067888  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10006788c  mov     x29, x29
  100067890  bl      _objc_retainAutoreleasedReturnValue
  100067894  mov     x25, x0
  100067898  adrp    x8, #0x100416000
  10006789c  nop
  1000678a0  ldr     x24, [x8, #0xb68]
  1000678a4  adrp    x2, #0x1003bc000
  1000678a8  add     x2, x2, #0xa50                           ; @"Challenge completed star"
  1000678ac  mov     x1, x24
  1000678b0  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Challenge completed star"]
  1000678b4  mov     x22, x20
  1000678b8  mov     x0, x25
  1000678bc  bl      _objc_release
  1000678c0  adrp    x8, #0x100417000
  1000678c4  nop
  1000678c8  ldr     x1, [x8, #0x338]
  1000678cc  mov     x0, x20
  1000678d0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  1000678d4  mov     x29, x29
  1000678d8  bl      _objc_retainAutoreleasedReturnValue
  1000678dc  mov     x22, x0
  1000678e0  adrp    x8, #0x10041f000
  1000678e4  ldrsw   x8, [x8, #0xc4c]                         ; ivar offset Accessible_ADChallengeCompletedViewController.missionStarStatus (+0x148)
  1000678e8  ldr     x2, [x21, x8]                            ; x2 = self->missionStarStatus
  1000678ec  mov     x1, x24
  1000678f0  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:self->missionStarStatus]
  1000678f4  mov     x0, x22
  1000678f8  bl      _objc_release
loc_1000678fc:
  1000678fc  mov     x22, x20
  100067900  mov     x0, x19
  100067904  mov     x1, x23
  100067908  bl      _objc_msgSend                            ; [arg2 row]
  10006790c  cmp     x0, #1
  100067910  b.ne    loc_10006799c                            ; if ([arg2 row] != 1)
  100067914  mov     x22, x20
  100067918  adrp    x8, #0x100417000
  10006791c  nop
  100067920  ldr     x1, [x8, #0x320]
  100067924  mov     x0, x20
  100067928  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10006792c  mov     x29, x29
  100067930  bl      _objc_retainAutoreleasedReturnValue
  100067934  mov     x25, x0
  100067938  adrp    x8, #0x100416000
  10006793c  nop
  100067940  ldr     x24, [x8, #0xb68]
  100067944  adrp    x2, #0x1003bc000
  100067948  add     x2, x2, #0xaf0                           ; @"Accuracy star"
  10006794c  mov     x1, x24
  100067950  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Accuracy star"]
  100067954  mov     x22, x20
  100067958  mov     x0, x25
  10006795c  bl      _objc_release
  100067960  adrp    x8, #0x100417000
  100067964  nop
  100067968  ldr     x1, [x8, #0x338]
  10006796c  mov     x0, x20
  100067970  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  100067974  mov     x29, x29
  100067978  bl      _objc_retainAutoreleasedReturnValue
  10006797c  mov     x22, x0
  100067980  adrp    x8, #0x10041f000
  100067984  ldrsw   x8, [x8, #0xc50]                         ; ivar offset Accessible_ADChallengeCompletedViewController.accuracyStarStatus (+0x140)
  100067988  ldr     x2, [x21, x8]                            ; x2 = self->accuracyStarStatus
  10006798c  mov     x1, x24
  100067990  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:self->accuracyStarStatus]
  100067994  mov     x0, x22
  100067998  bl      _objc_release
loc_10006799c:
  10006799c  mov     x22, x20
  1000679a0  mov     x0, x19
  1000679a4  mov     x1, x23
  1000679a8  bl      _objc_msgSend                            ; [arg2 row]
  1000679ac  cmp     x0, #2
  1000679b0  b.ne    loc_100067a3c                            ; if ([arg2 row] != 2)
  1000679b4  mov     x22, x20
  1000679b8  adrp    x8, #0x100417000
  1000679bc  nop
  1000679c0  ldr     x1, [x8, #0x320]
  1000679c4  mov     x0, x20
  1000679c8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  1000679cc  mov     x29, x29
  1000679d0  bl      _objc_retainAutoreleasedReturnValue
  1000679d4  mov     x24, x0
  1000679d8  adrp    x8, #0x100416000
  1000679dc  nop
  1000679e0  ldr     x23, [x8, #0xb68]
  1000679e4  adrp    x2, #0x1003bc000
  1000679e8  add     x2, x2, #0xb50                           ; @"Time limit star"
  1000679ec  mov     x1, x23
  1000679f0  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Time limit star"]
  1000679f4  mov     x22, x20
  1000679f8  mov     x0, x24
  1000679fc  bl      _objc_release
  100067a00  adrp    x8, #0x100417000
  100067a04  nop
  100067a08  ldr     x1, [x8, #0x338]
  100067a0c  mov     x0, x20
  100067a10  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  100067a14  mov     x29, x29
  100067a18  bl      _objc_retainAutoreleasedReturnValue
  100067a1c  mov     x22, x0
  100067a20  adrp    x8, #0x10041f000
  100067a24  ldrsw   x8, [x8, #0xc54]                         ; ivar offset Accessible_ADChallengeCompletedViewController.timeStarStatus (+0x150)
  100067a28  ldr     x2, [x21, x8]                            ; x2 = self->timeStarStatus
  100067a2c  mov     x1, x23
  100067a30  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:self->timeStarStatus]
  100067a34  mov     x0, x22
  100067a38  bl      _objc_release
loc_100067a3c:
  100067a3c  mov     x22, x20
  100067a40  adrp    x8, #0x100417000
  100067a44  nop
  100067a48  ldr     x1, [x8, #0x3b0]
  100067a4c  mov     x2, #0
  100067a50  mov     x0, x20
  100067a54  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
  100067a58  b       loc_100067b74
loc_100067a5c:
  100067a5c  cmp     w0, #2
  100067a60  b.ne    loc_100067a94                            ; if ([arg2 section] != 2)
  100067a64  adrp    x8, #0x100419000
  100067a68  nop
  100067a6c  ldr     x1, [x8, #0x540]
  100067a70  mov     x22, #0
  100067a74  mov     x0, x21
  100067a78  mov     x2, x19
  100067a7c  bl      _objc_msgSend                            ; [self cellForStatsAtIndex:arg2]
  100067a80  mov     x29, x29
loc_100067a84:
  100067a84  bl      _objc_retainAutoreleasedReturnValue
  100067a88  bl      _objc_retain
  100067a8c  mov     x20, x0
  100067a90  b       loc_100067b7c
loc_100067a94:
  100067a94  adrp    x8, #0x10041e000
  100067a98  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  100067a9c  adrp    x8, #0x100416000
  100067aa0  nop
  100067aa4  ldr     x1, [x8, #0xac8]
  100067aa8  mov     x22, #0
  100067aac  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  100067ab0  adrp    x8, #0x100417000
  100067ab4  nop
  100067ab8  ldr     x1, [x8, #0x3c0]
  100067abc  mov     x22, #0
  100067ac0  adrp    x3, #0x1003bc000
  100067ac4  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  100067ac8  mov     w2, #3
  100067acc  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  100067ad0  mov     x20, x0
  100067ad4  mov     x22, x20
  100067ad8  adrp    x8, #0x100417000
  100067adc  nop
  100067ae0  ldr     x1, [x8, #0x320]
  100067ae4  mov     x0, x20
  100067ae8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  100067aec  mov     x29, x29
  100067af0  bl      _objc_retainAutoreleasedReturnValue
  100067af4  mov     x23, x0
  100067af8  adrp    x8, #0x100416000
  100067afc  nop
  100067b00  ldr     x21, [x8, #0xb68]
  100067b04  adrp    x2, #0x1003bc000
  100067b08  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  100067b0c  mov     x1, x21
  100067b10  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"EMPTY CELL"]
  100067b14  mov     x22, x20
  100067b18  mov     x0, x23
  100067b1c  bl      _objc_release
  100067b20  adrp    x8, #0x100417000
  100067b24  nop
  100067b28  ldr     x1, [x8, #0x338]
  100067b2c  mov     x0, x20
  100067b30  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  100067b34  mov     x29, x29
  100067b38  bl      _objc_retainAutoreleasedReturnValue
  100067b3c  mov     x23, x0
  100067b40  adrp    x2, #0x1003bc000
  100067b44  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  100067b48  mov     x1, x21
  100067b4c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"EMPTY CELL"]
  100067b50  mov     x22, x20
  100067b54  mov     x0, x23
  100067b58  bl      _objc_release
  100067b5c  adrp    x8, #0x100417000
  100067b60  nop
  100067b64  ldr     x1, [x8, #0x3b0]
  100067b68  mov     x2, #0
  100067b6c  mov     x0, x20
  100067b70  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
loc_100067b74:
  100067b74  mov     x0, x20
  100067b78  bl      _objc_retain
loc_100067b7c:
  100067b7c  mov     x0, x20
  100067b80  bl      _objc_release
  100067b84  mov     x0, x19
  100067b88  bl      _objc_release
  100067b8c  mov     x0, x20
  100067b90  ldp     x29, x30, [sp, #0x40]
  100067b94  ldp     x20, x19, [sp, #0x30]
  100067b98  ldp     x22, x21, [sp, #0x20]
  100067b9c  ldp     x24, x23, [sp, #0x10]
  100067ba0  ldp     x26, x25, [sp], #0x50
  100067ba4  b       _objc_autoreleaseReturnValue
  100067ba8  mov     x21, x0
  100067bac  b       loc_100067bf4
  100067bb0  b       loc_100067bd8
  100067bb4  b       loc_100067be4
  100067bb8  mov     x21, x0
  100067bbc  mov     x0, x24
  100067bc0  b       loc_100067bec
  100067bc4  b       loc_100067be4
  100067bc8  b       loc_100067bcc
loc_100067bcc:
  100067bcc  mov     x21, x0
  100067bd0  mov     x0, x23
  100067bd4  b       loc_100067bec
loc_100067bd8:
  100067bd8  mov     x21, x0
  100067bdc  mov     x0, x25
  100067be0  b       loc_100067bec
loc_100067be4:
  100067be4  mov     x21, x0
  100067be8  mov     x0, x22
loc_100067bec:
  100067bec  bl      _objc_release
  100067bf0  mov     x22, x20
loc_100067bf4:
  100067bf4  mov     x0, x22
  100067bf8  bl      _objc_release
  100067bfc  mov     x0, x19
  100067c00  bl      _objc_release
  100067c04  mov     x0, x21
  100067c08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController cellForStatsAtIndex:]
; address 0x100067c0c  size 1128  kind objc
; ======================================================================
  100067c0c  stp     x26, x25, [sp, #-0x50]!
  100067c10  stp     x24, x23, [sp, #0x10]
  100067c14  stp     x22, x21, [sp, #0x20]
  100067c18  stp     x20, x19, [sp, #0x30]
  100067c1c  stp     x29, x30, [sp, #0x40]
  100067c20  add     x29, sp, #0x40
  100067c24  sub     sp, sp, #0x10
  100067c28  mov     x21, x0
  100067c2c  mov     x0, x2
  100067c30  bl      _objc_retain
  100067c34  mov     x19, x0
  100067c38  adrp    x8, #0x10041e000
  100067c3c  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  100067c40  adrp    x8, #0x100416000
  100067c44  nop
  100067c48  ldr     x1, [x8, #0xac8]
  100067c4c  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  100067c50  adrp    x8, #0x100417000
  100067c54  nop
  100067c58  ldr     x1, [x8, #0x3c0]
  100067c5c  adrp    x3, #0x1003bc000
  100067c60  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  100067c64  mov     w2, #3
  100067c68  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  100067c6c  mov     x20, x0
  100067c70  adrp    x8, #0x100417000
  100067c74  nop
  100067c78  ldr     x22, [x8, #0x350]
  100067c7c  mov     x0, x19
  100067c80  mov     x1, x22
  100067c84  bl      _objc_msgSend                            ; [arg1 row]
  100067c88  cbnz    x0, loc_100067d80                        ; if ([arg1 row] != 0)
  100067c8c  adrp    x8, #0x100417000
  100067c90  nop
  100067c94  ldr     x1, [x8, #0x320]
  100067c98  mov     x0, x20
  100067c9c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  100067ca0  mov     x29, x29
  100067ca4  bl      _objc_retainAutoreleasedReturnValue
  100067ca8  mov     x23, x0
  100067cac  adrp    x8, #0x100416000
  100067cb0  nop
  100067cb4  ldr     x24, [x8, #0xb68]
  100067cb8  adrp    x2, #0x1003b9000
  100067cbc  add     x2, x2, #0x950                           ; @"Kills"
  100067cc0  mov     x1, x24
  100067cc4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Kills"]
  100067cc8  mov     x0, x23
  100067ccc  bl      _objc_release
  100067cd0  adrp    x8, #0x100417000
  100067cd4  nop
  100067cd8  ldr     x1, [x8, #0x338]
  100067cdc  mov     x0, x20
  100067ce0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  100067ce4  mov     x29, x29
  100067ce8  bl      _objc_retainAutoreleasedReturnValue
  100067cec  mov     x23, x0
  100067cf0  adrp    x8, #0x10041d000
  100067cf4  ldr     x26, [x8, #0xf78]                        ; class NSString
  100067cf8  nop
  100067cfc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100067d00  adrp    x8, #0x100417000
  100067d04  nop
  100067d08  ldr     x1, [x8, #0x228]
  100067d0c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100067d10  mov     x29, x29
  100067d14  bl      _objc_retainAutoreleasedReturnValue
  100067d18  mov     x25, x0
  100067d1c  adrp    x8, #0x100417000
  100067d20  nop
  100067d24  ldr     x1, [x8, #0xda8]
  100067d28  bl      _objc_msgSend                            ; [[ADInGameStats singleton] numberOfEnemyKills]
  100067d2c  adrp    x8, #0x100416000
  100067d30  nop
  100067d34  ldr     x1, [x8, #0xee8]
  100067d38  str     x0, [sp]
  100067d3c  adrp    x2, #0x1003ba000
  100067d40  add     x2, x2, #0xc50                           ; @"%i"
  100067d44  mov     x0, x26
  100067d48  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] numberOfEnemyKills]]
  100067d4c  mov     x29, x29
  100067d50  bl      _objc_retainAutoreleasedReturnValue
  100067d54  mov     x26, x0
  100067d58  mov     x0, x23
  100067d5c  mov     x1, x24
  100067d60  mov     x2, x26
  100067d64  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] numberOfEnemyKills]]]
  100067d68  mov     x0, x26
  100067d6c  bl      _objc_release
  100067d70  mov     x0, x25
  100067d74  bl      _objc_release
  100067d78  mov     x0, x23
  100067d7c  bl      _objc_release
loc_100067d80:
  100067d80  mov     x0, x19
  100067d84  mov     x1, x22
  100067d88  bl      _objc_msgSend                            ; [arg1 row]
  100067d8c  cmp     x0, #1
  100067d90  b.ne    loc_100067e98                            ; if ([arg1 row] != 1)
  100067d94  adrp    x8, #0x100417000
  100067d98  nop
  100067d9c  ldr     x1, [x8, #0x320]
  100067da0  mov     x0, x20
  100067da4  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  100067da8  mov     x29, x29
  100067dac  bl      _objc_retainAutoreleasedReturnValue
  100067db0  mov     x23, x0
  100067db4  adrp    x8, #0x100416000
  100067db8  nop
  100067dbc  ldr     x24, [x8, #0xb68]
  100067dc0  adrp    x2, #0x1003b9000
  100067dc4  add     x2, x2, #0x990                           ; @"Accuracy"
  100067dc8  mov     x1, x24
  100067dcc  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Accuracy"]
  100067dd0  mov     x0, x23
  100067dd4  bl      _objc_release
  100067dd8  adrp    x8, #0x100417000
  100067ddc  nop
  100067de0  ldr     x1, [x8, #0x338]
  100067de4  mov     x0, x20
  100067de8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  100067dec  mov     x29, x29
  100067df0  bl      _objc_retainAutoreleasedReturnValue
  100067df4  mov     x23, x0
  100067df8  adrp    x8, #0x10041d000
  100067dfc  ldr     x26, [x8, #0xf78]                        ; class NSString
  100067e00  nop
  100067e04  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100067e08  adrp    x8, #0x100417000
  100067e0c  nop
  100067e10  ldr     x1, [x8, #0x228]
  100067e14  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100067e18  mov     x29, x29
  100067e1c  bl      _objc_retainAutoreleasedReturnValue
  100067e20  mov     x25, x0
  100067e24  adrp    x8, #0x100417000
  100067e28  nop
  100067e2c  ldr     x1, [x8, #0xdc8]
  100067e30  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  100067e34  adrp    x8, #0x100181000
  100067e38  ldr     s1, [x8, #0xa10]                         ; s1 = 100.0
  100067e3c  fmul    s0, s0, s1
  100067e40  fcvt    d0, s0
  100067e44  adrp    x8, #0x100416000
  100067e48  nop
  100067e4c  ldr     x1, [x8, #0xee8]
  100067e50  str     d0, [sp]
  100067e54  adrp    x2, #0x1003be000
  100067e58  add     x2, x2, #0xbb0                           ; @"%.2f %%"
  100067e5c  mov     x0, x26
  100067e60  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%.2f %%", ([[ADInGameStats singleton] currentAccuracy] * 100)]
  100067e64  mov     x29, x29
  100067e68  bl      _objc_retainAutoreleasedReturnValue
  100067e6c  mov     x26, x0
  100067e70  mov     x0, x23
  100067e74  mov     x1, x24
  100067e78  mov     x2, x26
  100067e7c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%.2f %%", ([[ADInGameStats singleton] currentAccuracy] * 100)]]
  100067e80  mov     x0, x26
  100067e84  bl      _objc_release
  100067e88  mov     x0, x25
  100067e8c  bl      _objc_release
  100067e90  mov     x0, x23
  100067e94  bl      _objc_release
loc_100067e98:
  100067e98  mov     x0, x19
  100067e9c  mov     x1, x22
  100067ea0  bl      _objc_msgSend                            ; [arg1 row]
  100067ea4  cmp     x0, #2
  100067ea8  b.ne    loc_100067f90                            ; if ([arg1 row] != 2)
  100067eac  adrp    x8, #0x100417000
  100067eb0  nop
  100067eb4  ldr     x1, [x8, #0x320]
  100067eb8  mov     x0, x20
  100067ebc  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  100067ec0  mov     x29, x29
  100067ec4  bl      _objc_retainAutoreleasedReturnValue
  100067ec8  mov     x22, x0
  100067ecc  adrp    x8, #0x100416000
  100067ed0  nop
  100067ed4  ldr     x23, [x8, #0xb68]
  100067ed8  adrp    x2, #0x1003be000
  100067edc  add     x2, x2, #0xbd0                           ; @"Survival time"
  100067ee0  mov     x1, x23
  100067ee4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Survival time"]
  100067ee8  mov     x0, x22
  100067eec  bl      _objc_release
  100067ef0  adrp    x8, #0x100417000
  100067ef4  nop
  100067ef8  ldr     x1, [x8, #0x338]
  100067efc  mov     x0, x20
  100067f00  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  100067f04  mov     x29, x29
  100067f08  bl      _objc_retainAutoreleasedReturnValue
  100067f0c  mov     x22, x0
  100067f10  adrp    x8, #0x10041d000
  100067f14  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100067f18  adrp    x8, #0x100417000
  100067f1c  nop
  100067f20  ldr     x1, [x8, #0x228]
  100067f24  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100067f28  mov     x29, x29
  100067f2c  bl      _objc_retainAutoreleasedReturnValue
  100067f30  mov     x24, x0
  100067f34  adrp    x8, #0x100418000
  100067f38  nop
  100067f3c  ldr     x1, [x8, #0x9a0]
  100067f40  bl      _objc_msgSend                            ; [[ADInGameStats singleton] challengeTimeElapsed]
  100067f44  fcvtzs  w2, d0
  100067f48  adrp    x8, #0x100418000
  100067f4c  nop
  100067f50  ldr     x1, [x8, #0x7a8]
  100067f54  mov     x0, x21
  100067f58  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)[[ADInGameStats singleton] challengeTimeElapsed]]
  100067f5c  mov     x29, x29
  100067f60  bl      _objc_retainAutoreleasedReturnValue
  100067f64  mov     x25, x0
  100067f68  mov     x0, x22
  100067f6c  mov     x1, x23
  100067f70  mov     x2, x25
  100067f74  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[self timeStringFromSeconds:(int)[[ADInGameStats singleton] challengeTimeElapsed]]]
  100067f78  mov     x0, x25
  100067f7c  bl      _objc_release
  100067f80  mov     x0, x24
  100067f84  bl      _objc_release
  100067f88  mov     x0, x22
  100067f8c  bl      _objc_release
loc_100067f90:
  100067f90  adrp    x8, #0x100417000
  100067f94  nop
  100067f98  ldr     x1, [x8, #0x3b0]
  100067f9c  mov     x2, #0
  100067fa0  mov     x0, x20
  100067fa4  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
  100067fa8  mov     x0, x19
  100067fac  bl      _objc_release
  100067fb0  mov     x0, x20
  100067fb4  sub     sp, x29, #0x40
  100067fb8  ldp     x29, x30, [sp, #0x40]
  100067fbc  ldp     x20, x19, [sp, #0x30]
  100067fc0  ldp     x22, x21, [sp, #0x20]
  100067fc4  ldp     x24, x23, [sp, #0x10]
  100067fc8  ldp     x26, x25, [sp], #0x50
  100067fcc  b       _objc_autoreleaseReturnValue
  100067fd0  mov     x21, x0
  100067fd4  b       loc_10006805c
  100067fd8  mov     x21, x0
  100067fdc  b       loc_100068064
  100067fe0  mov     x21, x0
  100067fe4  b       loc_10006804c
  100067fe8  mov     x21, x0
  100067fec  b       loc_100068020
  100067ff0  mov     x21, x0
  100067ff4  b       loc_10006804c
  100067ff8  b       loc_100068038
  100067ffc  b       loc_100068038
  100068000  b       loc_100068040
  100068004  mov     x21, x0
  100068008  b       loc_100068028
  10006800c  mov     x21, x0
  100068010  b       loc_100068028
  100068014  mov     x21, x0
  100068018  mov     x0, x25
  10006801c  bl      _objc_release
loc_100068020:
  100068020  mov     x0, x24
  100068024  bl      _objc_release
loc_100068028:
  100068028  mov     x0, x22
  10006802c  bl      _objc_release
  100068030  b       loc_10006805c
  100068034  b       loc_100068038
loc_100068038:
  100068038  mov     x21, x0
  10006803c  b       loc_100068054
loc_100068040:
  100068040  mov     x21, x0
  100068044  mov     x0, x26
  100068048  bl      _objc_release
loc_10006804c:
  10006804c  mov     x0, x25
  100068050  bl      _objc_release
loc_100068054:
  100068054  mov     x0, x23
  100068058  bl      _objc_release
loc_10006805c:
  10006805c  mov     x0, x20
  100068060  bl      _objc_release
loc_100068064:
  100068064  mov     x0, x19
  100068068  bl      _objc_release
  10006806c  mov     x0, x21
  100068070  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController checkCompletion]
; address 0x100068074  size 3824  kind objc
; ======================================================================
  100068074  stp     d9, d8, [sp, #-0x70]!
  100068078  stp     x28, x27, [sp, #0x10]
  10006807c  stp     x26, x25, [sp, #0x20]
  100068080  stp     x24, x23, [sp, #0x30]
  100068084  stp     x22, x21, [sp, #0x40]
  100068088  stp     x20, x19, [sp, #0x50]
  10006808c  stp     x29, x30, [sp, #0x60]
  100068090  add     x29, sp, #0x60
  100068094  sub     sp, sp, #0x40
  100068098  mov     x19, x0
  10006809c  adrp    x28, #0x10041d000
  1000680a0  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  1000680a4  adrp    x8, #0x100416000
  1000680a8  nop
  1000680ac  ldr     x1, [x8, #0xdf0]
  1000680b0  str     x1, [sp, #0x38]
  1000680b4  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000680b8  mov     x29, x29
  1000680bc  bl      _objc_retainAutoreleasedReturnValue
  1000680c0  mov     x20, x0
  1000680c4  adrp    x8, #0x100417000
  1000680c8  nop
  1000680cc  ldr     x21, [x8, #0x150]
  1000680d0  mov     x0, x19
  1000680d4  mov     x1, x21
  1000680d8  bl      _objc_msgSend                            ; [self challengeDict]
  1000680dc  mov     x29, x29
  1000680e0  bl      _objc_retainAutoreleasedReturnValue
  1000680e4  mov     x23, x0
  1000680e8  adrp    x8, #0x100417000
  1000680ec  nop
  1000680f0  ldr     x22, [x8, #0x40]
  1000680f4  adrp    x2, #0x1003b9000
  1000680f8  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000680fc  mov     x1, x22
  100068100  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100068104  mov     x29, x29
  100068108  bl      _objc_retainAutoreleasedReturnValue
  10006810c  mov     x24, x0
  100068110  adrp    x8, #0x100416000
  100068114  nop
  100068118  ldr     x1, [x8, #0xdf8]
  10006811c  mov     x0, x20
  100068120  mov     x2, x24
  100068124  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  100068128  mov     x25, x0
  10006812c  mov     x0, x24
  100068130  bl      _objc_release
  100068134  mov     x0, x23
  100068138  bl      _objc_release
  10006813c  mov     x0, x20
  100068140  bl      _objc_release
  100068144  tbz     w25, #0, loc_10006816c                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] & 1))
  100068148  adrp    x8, #0x10041f000
  10006814c  ldrsw   x23, [x8, #0xc4c]                        ; ivar offset Accessible_ADChallengeCompletedViewController.missionStarStatus (+0x148)
  100068150  adrp    x20, #0x1003bc000
  100068154  add     x20, x20, #0xa70                         ; @"already unlocked"
  100068158  mov     x0, x20
  10006815c  bl      _objc_retain
  100068160  ldr     x0, [x19, x23]                           ; x0 = self->missionStarStatus
  100068164  str     x20, [x19, x23]                          ; self->missionStarStatus = @"already unlocked"
  100068168  b       loc_1000682f8
loc_10006816c:
  10006816c  adrp    x8, #0x10041d000
  100068170  ldr     x25, [x8, #0xf78]                        ; class NSString
  100068174  mov     x0, x19
  100068178  mov     x1, x21
  10006817c  bl      _objc_msgSend                            ; [self challengeDict]
  100068180  mov     x29, x29
  100068184  bl      _objc_retainAutoreleasedReturnValue
  100068188  mov     x20, x0
  10006818c  adrp    x2, #0x1003bc000
  100068190  add     x2, x2, #0xab0                           ; @"mission_star"
  100068194  mov     x1, x22
  100068198  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"mission_star"]
  10006819c  mov     x29, x29
  1000681a0  bl      _objc_retainAutoreleasedReturnValue
  1000681a4  mov     x24, x0
  1000681a8  adrp    x2, #0x1003bc000
  1000681ac  add     x2, x2, #0xad0                           ; @"reward"
  1000681b0  mov     x1, x22
  1000681b4  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"]
  1000681b8  mov     x29, x29
  1000681bc  bl      _objc_retainAutoreleasedReturnValue
  1000681c0  mov     x26, x0
  1000681c4  adrp    x8, #0x100417000
  1000681c8  nop
  1000681cc  ldr     x23, [x8, #0x110]
  1000681d0  mov     x1, x23
  1000681d4  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] intValue]
  1000681d8  adrp    x8, #0x100416000
  1000681dc  nop
  1000681e0  ldr     x1, [x8, #0xee8]
  1000681e4  str     x0, [sp]
  1000681e8  adrp    x2, #0x1003be000
  1000681ec  add     x2, x2, #0xbf0                           ; @"Reward : %i coins"
  1000681f0  mov     x0, x25
  1000681f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Reward : %i coins", [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] in…]
  1000681f8  mov     x29, x29
  1000681fc  bl      _objc_retainAutoreleasedReturnValue
  100068200  adrp    x8, #0x10041f000
  100068204  ldrsw   x9, [x8, #0xc4c]                         ; ivar offset Accessible_ADChallengeCompletedViewController.missionStarStatus (+0x148)
  100068208  ldr     x8, [x19, x9]                            ; x8 = self->missionStarStatus
  10006820c  str     x0, [x19, x9]                            ; self->missionStarStatus = [NSString stringWithFormat:@"Reward : %i coins", [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] in…]
  100068210  mov     x0, x8
  100068214  bl      _objc_release
  100068218  mov     x0, x26
  10006821c  bl      _objc_release
  100068220  mov     x0, x24
  100068224  bl      _objc_release
  100068228  mov     x0, x20
  10006822c  bl      _objc_release
  100068230  adrp    x8, #0x10041d000
  100068234  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100068238  adrp    x8, #0x100416000
  10006823c  nop
  100068240  ldr     x1, [x8, #0xec8]
  100068244  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100068248  mov     x29, x29
  10006824c  bl      _objc_retainAutoreleasedReturnValue
  100068250  mov     x20, x0
  100068254  mov     x0, x19
  100068258  mov     x1, x21
  10006825c  bl      _objc_msgSend                            ; [self challengeDict]
  100068260  mov     x29, x29
  100068264  bl      _objc_retainAutoreleasedReturnValue
  100068268  mov     x24, x0
  10006826c  adrp    x2, #0x1003bc000
  100068270  add     x2, x2, #0xab0                           ; @"mission_star"
  100068274  mov     x1, x22
  100068278  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"mission_star"]
  10006827c  mov     x29, x29
  100068280  bl      _objc_retainAutoreleasedReturnValue
  100068284  mov     x25, x0
  100068288  adrp    x2, #0x1003bc000
  10006828c  add     x2, x2, #0xad0                           ; @"reward"
  100068290  mov     x1, x22
  100068294  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"]
  100068298  mov     x29, x29
  10006829c  bl      _objc_retainAutoreleasedReturnValue
  1000682a0  mov     x26, x0
  1000682a4  mov     x1, x23
  1000682a8  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] intValue]
  1000682ac  mov     x23, x0
  1000682b0  adrp    x8, #0x100417000
  1000682b4  nop
  1000682b8  ldr     x1, [x8, #0x958]
  1000682bc  mov     x0, x20
  1000682c0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  1000682c4  add     w2, w0, w23                              ; t1 = ([[ADInventory sharedInventory] coins] + [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] intValue])
  1000682c8  adrp    x8, #0x100417000
  1000682cc  nop
  1000682d0  ldr     x1, [x8, #0x90]
  1000682d4  mov     x0, x20
  1000682d8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t1]
  1000682dc  mov     x0, x26
  1000682e0  bl      _objc_release
  1000682e4  mov     x0, x25
  1000682e8  bl      _objc_release
  1000682ec  mov     x0, x24
  1000682f0  bl      _objc_release
  1000682f4  mov     x0, x20
loc_1000682f8:
  1000682f8  bl      _objc_release
  1000682fc  adrp    x8, #0x10041e000
  100068300  ldr     x0, [x8, #8]                             ; class ADTracker
  100068304  adrp    x8, #0x100416000
  100068308  nop
  10006830c  ldr     x24, [x8, #0xac0]
  100068310  mov     x1, x24
  100068314  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100068318  mov     x29, x29
  10006831c  bl      _objc_retainAutoreleasedReturnValue
  100068320  mov     x20, x0
  100068324  adrp    x8, #0x100418000
  100068328  nop
  10006832c  ldr     x1, [x8, #0x9a8]
  100068330  mov     w2, #1
  100068334  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] challengeCompleted:1]
  100068338  mov     x0, x20
  10006833c  bl      _objc_release
  100068340  mov     x0, x19
  100068344  mov     x1, x21
  100068348  bl      _objc_msgSend                            ; [self challengeDict]
  10006834c  mov     x29, x29
  100068350  bl      _objc_retainAutoreleasedReturnValue
  100068354  mov     x20, x0
  100068358  adrp    x2, #0x1003bc000
  10006835c  add     x2, x2, #0xb30                           ; @"accuracy_star"
  100068360  mov     x1, x22
  100068364  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  100068368  mov     x29, x29
  10006836c  bl      _objc_retainAutoreleasedReturnValue
  100068370  mov     x23, x0
  100068374  adrp    x2, #0x1003bc000
  100068378  add     x2, x2, #0x990                           ; @"objective"
  10006837c  mov     x1, x22
  100068380  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]
  100068384  str     x24, [sp, #0x30]
  100068388  mov     x29, x29
  10006838c  bl      _objc_retainAutoreleasedReturnValue
  100068390  mov     x24, x0
  100068394  adrp    x8, #0x100417000
  100068398  nop
  10006839c  ldr     x25, [x8, #0x48]
  1000683a0  mov     x1, x25
  1000683a4  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] floatValue]
  1000683a8  mov     v8.16b, v0.16b
  1000683ac  adrp    x8, #0x10041d000
  1000683b0  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000683b4  adrp    x8, #0x100417000
  1000683b8  nop
  1000683bc  ldr     x26, [x8, #0x228]
  1000683c0  mov     x1, x26
  1000683c4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000683c8  mov     x29, x29
  1000683cc  bl      _objc_retainAutoreleasedReturnValue
  1000683d0  mov     x27, x0
  1000683d4  adrp    x8, #0x100417000
  1000683d8  nop
  1000683dc  ldr     x1, [x8, #0xdc8]
  1000683e0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  1000683e4  adrp    x8, #0x100181000
  1000683e8  ldr     s1, [x8, #0xa10]                         ; s1 = 100.0
  1000683ec  fmul    s9, s0, s1
  1000683f0  mov     x0, x27
  1000683f4  bl      _objc_release
  1000683f8  mov     x0, x24
  1000683fc  bl      _objc_release
  100068400  mov     x0, x23
  100068404  bl      _objc_release
  100068408  mov     x0, x20
  10006840c  bl      _objc_release
  100068410  fcmp    s8, s9
  100068414  b.ls    loc_1000684d8                            ; if ([[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] floatValue] <= ([[ADInGameStats singleton] currentAccuracy] * 100))
  100068418  adrp    x8, #0x10041d000
  10006841c  ldr     x24, [x8, #0xf78]                        ; class NSString
  100068420  mov     x0, x19
  100068424  mov     x1, x21
  100068428  bl      _objc_msgSend                            ; [self challengeDict]
  10006842c  mov     x29, x29
  100068430  bl      _objc_retainAutoreleasedReturnValue
  100068434  mov     x20, x0
  100068438  adrp    x2, #0x1003bc000
  10006843c  add     x2, x2, #0xb30                           ; @"accuracy_star"
  100068440  mov     x1, x22
  100068444  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  100068448  mov     x29, x29
  10006844c  bl      _objc_retainAutoreleasedReturnValue
  100068450  mov     x23, x0
  100068454  adrp    x2, #0x1003bc000
  100068458  add     x2, x2, #0x990                           ; @"objective"
  10006845c  mov     x1, x22
  100068460  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]
  100068464  mov     x29, x29
  100068468  bl      _objc_retainAutoreleasedReturnValue
  10006846c  mov     x27, x0
  100068470  adrp    x8, #0x100417000
  100068474  nop
  100068478  ldr     x1, [x8, #0x110]
  10006847c  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] intValue]
  100068480  adrp    x8, #0x100416000
  100068484  nop
  100068488  ldr     x1, [x8, #0xee8]
  10006848c  str     x0, [sp]
  100068490  adrp    x2, #0x1003be000
  100068494  add     x2, x2, #0xc30                           ; @"objective failed. %i%% accuracy was required"
  100068498  mov     x0, x24
  10006849c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"objective failed. %i%% accuracy was required", [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"…, sp[8]]
  1000684a0  mov     x29, x29
  1000684a4  bl      _objc_retainAutoreleasedReturnValue
  1000684a8  adrp    x8, #0x10041f000
  1000684ac  ldrsw   x9, [x8, #0xc50]                         ; ivar offset Accessible_ADChallengeCompletedViewController.accuracyStarStatus (+0x140)
  1000684b0  ldr     x8, [x19, x9]                            ; x8 = self->accuracyStarStatus
  1000684b4  str     x0, [x19, x9]                            ; self->accuracyStarStatus = [NSString stringWithFormat:@"objective failed. %i%% accuracy was required", [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"…, sp[8]]
  1000684b8  mov     x0, x8
  1000684bc  bl      _objc_release
  1000684c0  mov     x0, x27
  1000684c4  bl      _objc_release
  1000684c8  mov     x0, x23
  1000684cc  bl      _objc_release
  1000684d0  mov     x0, x20
  1000684d4  b       loc_10006857c
loc_1000684d8:
  1000684d8  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  1000684dc  ldr     x1, [sp, #0x38]
  1000684e0  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000684e4  mov     x29, x29
  1000684e8  bl      _objc_retainAutoreleasedReturnValue
  1000684ec  mov     x20, x0
  1000684f0  mov     x0, x19
  1000684f4  mov     x1, x21
  1000684f8  bl      _objc_msgSend                            ; [self challengeDict]
  1000684fc  mov     x29, x29
  100068500  bl      _objc_retainAutoreleasedReturnValue
  100068504  mov     x23, x0
  100068508  adrp    x2, #0x1003b9000
  10006850c  add     x2, x2, #0xef0                           ; @"challenge_id"
  100068510  mov     x1, x22
  100068514  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100068518  mov     x29, x29
  10006851c  bl      _objc_retainAutoreleasedReturnValue
  100068520  mov     x24, x0
  100068524  adrp    x8, #0x100417000
  100068528  nop
  10006852c  ldr     x1, [x8, #0xa08]
  100068530  mov     x0, x20
  100068534  mov     x2, x24
  100068538  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10006853c  mov     x27, x0
  100068540  mov     x0, x24
  100068544  bl      _objc_release
  100068548  mov     x0, x23
  10006854c  bl      _objc_release
  100068550  mov     x0, x20
  100068554  bl      _objc_release
  100068558  tbz     w27, #0, loc_100068588                   ; if (!([[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] & 1))
  10006855c  adrp    x8, #0x10041f000
  100068560  ldrsw   x23, [x8, #0xc50]                        ; ivar offset Accessible_ADChallengeCompletedViewController.accuracyStarStatus (+0x140)
  100068564  adrp    x20, #0x1003bc000
  100068568  add     x20, x20, #0xa70                         ; @"already unlocked"
  10006856c  mov     x0, x20
  100068570  bl      _objc_retain
  100068574  ldr     x0, [x19, x23]                           ; x0 = self->accuracyStarStatus
  100068578  str     x20, [x19, x23]                          ; self->accuracyStarStatus = @"already unlocked"
loc_10006857c:
  10006857c  bl      _objc_release
  100068580  mov     w23, #0
  100068584  b       loc_100068794
loc_100068588:
  100068588  adrp    x8, #0x10041d000
  10006858c  ldr     x27, [x8, #0xf78]                        ; class NSString
  100068590  mov     x0, x19
  100068594  mov     x1, x21
  100068598  bl      _objc_msgSend                            ; [self challengeDict]
  10006859c  mov     x29, x29
  1000685a0  bl      _objc_retainAutoreleasedReturnValue
  1000685a4  str     x0, [sp, #0x20]
  1000685a8  adrp    x2, #0x1003bc000
  1000685ac  add     x2, x2, #0xb30                           ; @"accuracy_star"
  1000685b0  mov     x1, x22
  1000685b4  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  1000685b8  mov     x29, x29
  1000685bc  bl      _objc_retainAutoreleasedReturnValue
  1000685c0  str     x0, [sp, #0x18]
  1000685c4  adrp    x2, #0x1003bc000
  1000685c8  add     x2, x2, #0x990                           ; @"objective"
  1000685cc  mov     x1, x22
  1000685d0  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]
  1000685d4  mov     x29, x29
  1000685d8  bl      _objc_retainAutoreleasedReturnValue
  1000685dc  str     x0, [sp, #0x10]
  1000685e0  adrp    x8, #0x100417000
  1000685e4  nop
  1000685e8  ldr     x1, [x8, #0x110]
  1000685ec  str     x1, [sp, #0x28]
  1000685f0  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] intValue]
  1000685f4  mov     x28, x0
  1000685f8  mov     x0, x19
  1000685fc  mov     x1, x21
  100068600  bl      _objc_msgSend                            ; [self challengeDict]
  100068604  mov     x29, x29
  100068608  bl      _objc_retainAutoreleasedReturnValue
  10006860c  mov     x23, x0
  100068610  adrp    x2, #0x1003bc000
  100068614  add     x2, x2, #0xb30                           ; @"accuracy_star"
  100068618  mov     x1, x22
  10006861c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  100068620  mov     x29, x29
  100068624  bl      _objc_retainAutoreleasedReturnValue
  100068628  mov     x24, x0
  10006862c  adrp    x2, #0x1003bc000
  100068630  add     x2, x2, #0xad0                           ; @"reward"
  100068634  mov     x1, x22
  100068638  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"]
  10006863c  mov     x29, x29
  100068640  bl      _objc_retainAutoreleasedReturnValue
  100068644  mov     x20, x0
  100068648  ldr     x1, [sp, #0x28]
  10006864c  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] intValue]
  100068650  adrp    x8, #0x100416000
  100068654  nop
  100068658  ldr     x1, [x8, #0xee8]
  10006865c  stp     x28, x0, [sp]
  100068660  adrp    x2, #0x1003be000
  100068664  add     x2, x2, #0xc10                           ; @"You beat the %i%% goal -- Reward : %i coins"
  100068668  mov     x0, x27
  10006866c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You beat the %i%% goal -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"…, [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] i…, [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]]
  100068670  mov     x29, x29
  100068674  bl      _objc_retainAutoreleasedReturnValue
  100068678  adrp    x8, #0x10041f000
  10006867c  ldrsw   x9, [x8, #0xc50]                         ; ivar offset Accessible_ADChallengeCompletedViewController.accuracyStarStatus (+0x140)
  100068680  ldr     x8, [x19, x9]                            ; x8 = self->accuracyStarStatus
  100068684  str     x0, [x19, x9]                            ; self->accuracyStarStatus = [NSString stringWithFormat:@"You beat the %i%% goal -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"…, [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] i…, [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]]
  100068688  mov     x0, x8
  10006868c  bl      _objc_release
  100068690  mov     x0, x20
  100068694  bl      _objc_release
  100068698  mov     x0, x24
  10006869c  bl      _objc_release
  1000686a0  mov     x0, x23
  1000686a4  bl      _objc_release
  1000686a8  ldr     x0, [sp, #0x10]
  1000686ac  bl      _objc_release
  1000686b0  ldr     x0, [sp, #0x18]
  1000686b4  bl      _objc_release
  1000686b8  ldr     x0, [sp, #0x20]
  1000686bc  bl      _objc_release
  1000686c0  adrp    x8, #0x10041d000
  1000686c4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000686c8  adrp    x8, #0x100416000
  1000686cc  nop
  1000686d0  ldr     x1, [x8, #0xec8]
  1000686d4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000686d8  mov     x29, x29
  1000686dc  bl      _objc_retainAutoreleasedReturnValue
  1000686e0  mov     x20, x0
  1000686e4  mov     x0, x19
  1000686e8  mov     x1, x21
  1000686ec  bl      _objc_msgSend                            ; [self challengeDict]
  1000686f0  mov     x29, x29
  1000686f4  bl      _objc_retainAutoreleasedReturnValue
  1000686f8  mov     x23, x0
  1000686fc  adrp    x2, #0x1003bc000
  100068700  add     x2, x2, #0xb30                           ; @"accuracy_star"
  100068704  mov     x1, x22
  100068708  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  10006870c  mov     x29, x29
  100068710  bl      _objc_retainAutoreleasedReturnValue
  100068714  mov     x24, x0
  100068718  adrp    x2, #0x1003bc000
  10006871c  add     x2, x2, #0xad0                           ; @"reward"
  100068720  mov     x1, x22
  100068724  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"]
  100068728  mov     x29, x29
  10006872c  bl      _objc_retainAutoreleasedReturnValue
  100068730  mov     x28, x0
  100068734  ldr     x1, [sp, #0x28]
  100068738  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] intValue]
  10006873c  mov     x27, x0
  100068740  adrp    x8, #0x100417000
  100068744  nop
  100068748  ldr     x1, [x8, #0x958]
  10006874c  mov     x0, x20
  100068750  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100068754  add     w2, w0, w27                              ; t2 = ([[ADInventory sharedInventory] coins] + [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] intValue])
  100068758  adrp    x8, #0x100417000
  10006875c  nop
  100068760  ldr     x1, [x8, #0x90]
  100068764  mov     x0, x20
  100068768  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t2]
  10006876c  mov     x0, x28
  100068770  bl      _objc_release
  100068774  mov     x0, x24
  100068778  bl      _objc_release
  10006877c  mov     x0, x23
  100068780  bl      _objc_release
  100068784  mov     x0, x20
  100068788  bl      _objc_release
  10006878c  mov     w23, #1
  100068790  adrp    x28, #0x10041d000
loc_100068794:
  100068794  adrp    x8, #0x10041e000
  100068798  ldr     x0, [x8, #8]                             ; class ADTracker
  10006879c  ldr     x27, [sp, #0x30]
  1000687a0  mov     x1, x27
  1000687a4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000687a8  mov     x29, x29
  1000687ac  bl      _objc_retainAutoreleasedReturnValue
  1000687b0  mov     x20, x0
  1000687b4  adrp    x8, #0x100418000
  1000687b8  nop
  1000687bc  ldr     x1, [x8, #0x9b0]
  1000687c0  mov     w2, #1
  1000687c4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] accuracyObjectiveReached:1]
  1000687c8  str     w23, [sp, #0x28]
  1000687cc  mov     x0, x20
  1000687d0  bl      _objc_release
  1000687d4  mov     x0, x19
  1000687d8  mov     x1, x21
  1000687dc  bl      _objc_msgSend                            ; [self challengeDict]
  1000687e0  mov     x29, x29
  1000687e4  bl      _objc_retainAutoreleasedReturnValue
  1000687e8  mov     x20, x0
  1000687ec  adrp    x2, #0x1003bc000
  1000687f0  add     x2, x2, #0xb90                           ; @"time_limit_star"
  1000687f4  mov     x1, x22
  1000687f8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  1000687fc  mov     x29, x29
  100068800  bl      _objc_retainAutoreleasedReturnValue
  100068804  mov     x23, x0
  100068808  adrp    x2, #0x1003bc000
  10006880c  add     x2, x2, #0x990                           ; @"objective"
  100068810  mov     x1, x22
  100068814  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"]
  100068818  mov     x29, x29
  10006881c  bl      _objc_retainAutoreleasedReturnValue
  100068820  mov     x24, x0
  100068824  mov     x1, x25
  100068828  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] floatValue]
  10006882c  mov     v8.16b, v0.16b
  100068830  adrp    x8, #0x10041d000
  100068834  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100068838  mov     x1, x26
  10006883c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100068840  mov     x29, x29
  100068844  bl      _objc_retainAutoreleasedReturnValue
  100068848  mov     x25, x0
  10006884c  adrp    x8, #0x100418000
  100068850  nop
  100068854  ldr     x1, [x8, #0x9a0]
  100068858  bl      _objc_msgSend                            ; [[ADInGameStats singleton] challengeTimeElapsed]
  10006885c  mov     v9.16b, v0.16b
  100068860  fcvt    d8, s8
  100068864  mov     x0, x25
  100068868  bl      _objc_release
  10006886c  mov     x0, x24
  100068870  bl      _objc_release
  100068874  mov     x0, x23
  100068878  bl      _objc_release
  10006887c  mov     x0, x20
  100068880  bl      _objc_release
  100068884  fcmp    d8, d9
  100068888  b.ge    loc_10006898c                            ; if ([[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] floatValue] >= [[ADInGameStats singleton] challengeTimeElapsed])
  10006888c  adrp    x8, #0x10041d000
  100068890  ldr     x24, [x8, #0xf78]                        ; class NSString
  100068894  mov     x0, x19
  100068898  mov     x1, x21
  10006889c  bl      _objc_msgSend                            ; [self challengeDict]
  1000688a0  mov     x29, x29
  1000688a4  bl      _objc_retainAutoreleasedReturnValue
  1000688a8  mov     x20, x0
  1000688ac  adrp    x2, #0x1003bc000
  1000688b0  add     x2, x2, #0xb90                           ; @"time_limit_star"
  1000688b4  mov     x1, x22
  1000688b8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  1000688bc  mov     x29, x29
  1000688c0  bl      _objc_retainAutoreleasedReturnValue
  1000688c4  mov     x23, x0
  1000688c8  adrp    x2, #0x1003bc000
  1000688cc  add     x2, x2, #0x990                           ; @"objective"
  1000688d0  mov     x1, x22
  1000688d4  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"]
  1000688d8  mov     x29, x29
  1000688dc  bl      _objc_retainAutoreleasedReturnValue
  1000688e0  mov     x25, x0
  1000688e4  adrp    x8, #0x100417000
  1000688e8  nop
  1000688ec  ldr     x1, [x8, #0x110]
  1000688f0  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] intValue]
  1000688f4  adrp    x8, #0x100416000
  1000688f8  nop
  1000688fc  ldr     x1, [x8, #0xee8]
  100068900  str     x0, [sp]
  100068904  adrp    x2, #0x1003be000
  100068908  add     x2, x2, #0xc70                           ; @"objective failed. Time limit was %i seconds"
  10006890c  mov     x0, x24
  100068910  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"objective failed. Time limit was %i seconds", [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objectiv…]
  100068914  mov     x29, x29
  100068918  bl      _objc_retainAutoreleasedReturnValue
  10006891c  adrp    x8, #0x10041f000
  100068920  ldrsw   x9, [x8, #0xc54]                         ; ivar offset Accessible_ADChallengeCompletedViewController.timeStarStatus (+0x150)
  100068924  ldr     x8, [x19, x9]                            ; x8 = self->timeStarStatus
  100068928  str     x0, [x19, x9]                            ; self->timeStarStatus = [NSString stringWithFormat:@"objective failed. Time limit was %i seconds", [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objectiv…]
  10006892c  mov     x0, x8
  100068930  bl      _objc_release
  100068934  mov     x0, x25
  100068938  bl      _objc_release
  10006893c  mov     x0, x23
  100068940  bl      _objc_release
  100068944  mov     x0, x20
  100068948  bl      _objc_release
  10006894c  adrp    x8, #0x10041e000
  100068950  ldr     x0, [x8, #8]                             ; class ADTracker
  100068954  mov     x1, x27
  100068958  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10006895c  mov     x29, x29
  100068960  bl      _objc_retainAutoreleasedReturnValue
  100068964  mov     x20, x0
  100068968  adrp    x8, #0x100418000
  10006896c  nop
  100068970  ldr     x1, [x8, #0x9b8]
  100068974  mov     w2, #0
  100068978  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] timeObjectiveReached:0]
  10006897c  mov     x0, x20
  100068980  bl      _objc_release
  100068984  mov     w20, #0
  100068988  b       loc_100068c84
loc_10006898c:
  10006898c  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  100068990  ldr     x1, [sp, #0x38]
  100068994  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100068998  mov     x29, x29
  10006899c  bl      _objc_retainAutoreleasedReturnValue
  1000689a0  mov     x20, x0
  1000689a4  mov     x0, x19
  1000689a8  mov     x1, x21
  1000689ac  bl      _objc_msgSend                            ; [self challengeDict]
  1000689b0  mov     x29, x29
  1000689b4  bl      _objc_retainAutoreleasedReturnValue
  1000689b8  mov     x23, x0
  1000689bc  adrp    x2, #0x1003b9000
  1000689c0  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000689c4  mov     x1, x22
  1000689c8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  1000689cc  mov     x29, x29
  1000689d0  bl      _objc_retainAutoreleasedReturnValue
  1000689d4  mov     x24, x0
  1000689d8  adrp    x8, #0x100417000
  1000689dc  nop
  1000689e0  ldr     x1, [x8, #0xa10]
  1000689e4  mov     x0, x20
  1000689e8  mov     x2, x24
  1000689ec  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  1000689f0  mov     x25, x0
  1000689f4  mov     x0, x24
  1000689f8  bl      _objc_release
  1000689fc  mov     x0, x23
  100068a00  bl      _objc_release
  100068a04  mov     x0, x20
  100068a08  bl      _objc_release
  100068a0c  tbz     w25, #0, loc_100068a3c                   ; if (!([[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] & 1))
  100068a10  adrp    x8, #0x10041f000
  100068a14  ldrsw   x23, [x8, #0xc54]                        ; ivar offset Accessible_ADChallengeCompletedViewController.timeStarStatus (+0x150)
  100068a18  adrp    x20, #0x1003bc000
  100068a1c  add     x20, x20, #0xa70                         ; @"already unlocked"
  100068a20  mov     x0, x20
  100068a24  bl      _objc_retain
  100068a28  ldr     x0, [x19, x23]                           ; x0 = self->timeStarStatus
  100068a2c  str     x20, [x19, x23]                          ; self->timeStarStatus = @"already unlocked"
  100068a30  bl      _objc_release
  100068a34  mov     w20, #0
  100068a38  b       loc_100068c4c
loc_100068a3c:
  100068a3c  adrp    x8, #0x10041d000
  100068a40  ldr     x27, [x8, #0xf78]                        ; class NSString
  100068a44  mov     x0, x19
  100068a48  mov     x1, x21
  100068a4c  bl      _objc_msgSend                            ; [self challengeDict]
  100068a50  mov     x29, x29
  100068a54  bl      _objc_retainAutoreleasedReturnValue
  100068a58  str     x0, [sp, #0x20]
  100068a5c  adrp    x2, #0x1003bc000
  100068a60  add     x2, x2, #0xb90                           ; @"time_limit_star"
  100068a64  mov     x1, x22
  100068a68  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  100068a6c  mov     x29, x29
  100068a70  bl      _objc_retainAutoreleasedReturnValue
  100068a74  str     x0, [sp, #0x18]
  100068a78  adrp    x2, #0x1003bc000
  100068a7c  add     x2, x2, #0x990                           ; @"objective"
  100068a80  mov     x1, x22
  100068a84  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"]
  100068a88  mov     x29, x29
  100068a8c  bl      _objc_retainAutoreleasedReturnValue
  100068a90  mov     x20, x0
  100068a94  adrp    x8, #0x100417000
  100068a98  nop
  100068a9c  ldr     x26, [x8, #0x110]
  100068aa0  mov     x1, x26
  100068aa4  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] intValue]
  100068aa8  mov     x25, x0
  100068aac  mov     x0, x19
  100068ab0  mov     x1, x21
  100068ab4  bl      _objc_msgSend                            ; [self challengeDict]
  100068ab8  mov     x29, x29
  100068abc  bl      _objc_retainAutoreleasedReturnValue
  100068ac0  mov     x23, x0
  100068ac4  adrp    x2, #0x1003bc000
  100068ac8  add     x2, x2, #0xb90                           ; @"time_limit_star"
  100068acc  mov     x1, x22
  100068ad0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  100068ad4  mov     x29, x29
  100068ad8  bl      _objc_retainAutoreleasedReturnValue
  100068adc  mov     x24, x0
  100068ae0  adrp    x2, #0x1003bc000
  100068ae4  add     x2, x2, #0xad0                           ; @"reward"
  100068ae8  mov     x1, x22
  100068aec  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]
  100068af0  mov     x29, x29
  100068af4  bl      _objc_retainAutoreleasedReturnValue
  100068af8  mov     x28, x0
  100068afc  mov     x1, x26
  100068b00  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"] intValue]
  100068b04  adrp    x8, #0x100416000
  100068b08  nop
  100068b0c  ldr     x1, [x8, #0xee8]
  100068b10  stp     x25, x0, [sp]
  100068b14  adrp    x2, #0x1003be000
  100068b18  add     x2, x2, #0xc50                           ; @"You beat the %i seconds time limit -- Reward : %i coins"
  100068b1c  mov     x0, x27
  100068b20  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You beat the %i seconds time limit -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objectiv…, [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]…]
  100068b24  mov     x29, x29
  100068b28  bl      _objc_retainAutoreleasedReturnValue
  100068b2c  adrp    x8, #0x10041f000
  100068b30  ldrsw   x9, [x8, #0xc54]                         ; ivar offset Accessible_ADChallengeCompletedViewController.timeStarStatus (+0x150)
  100068b34  ldr     x8, [x19, x9]                            ; x8 = self->timeStarStatus
  100068b38  str     x0, [x19, x9]                            ; self->timeStarStatus = [NSString stringWithFormat:@"You beat the %i seconds time limit -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objectiv…, [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]…]
  100068b3c  mov     x0, x8
  100068b40  bl      _objc_release
  100068b44  mov     x0, x28
  100068b48  bl      _objc_release
  100068b4c  mov     x0, x24
  100068b50  bl      _objc_release
  100068b54  mov     x0, x23
  100068b58  bl      _objc_release
  100068b5c  mov     x0, x20
  100068b60  bl      _objc_release
  100068b64  ldr     x0, [sp, #0x18]
  100068b68  bl      _objc_release
  100068b6c  ldr     x0, [sp, #0x20]
  100068b70  bl      _objc_release
  100068b74  adrp    x8, #0x10041d000
  100068b78  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100068b7c  adrp    x8, #0x100416000
  100068b80  nop
  100068b84  ldr     x1, [x8, #0xec8]
  100068b88  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100068b8c  mov     x29, x29
  100068b90  bl      _objc_retainAutoreleasedReturnValue
  100068b94  mov     x20, x0
  100068b98  mov     x0, x19
  100068b9c  mov     x1, x21
  100068ba0  bl      _objc_msgSend                            ; [self challengeDict]
  100068ba4  mov     x29, x29
  100068ba8  bl      _objc_retainAutoreleasedReturnValue
  100068bac  mov     x23, x0
  100068bb0  adrp    x2, #0x1003bc000
  100068bb4  add     x2, x2, #0xb90                           ; @"time_limit_star"
  100068bb8  mov     x1, x22
  100068bbc  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  100068bc0  adrp    x28, #0x10041d000
  100068bc4  ldr     x27, [sp, #0x30]
  100068bc8  mov     x29, x29
  100068bcc  bl      _objc_retainAutoreleasedReturnValue
  100068bd0  mov     x24, x0
  100068bd4  adrp    x2, #0x1003bc000
  100068bd8  add     x2, x2, #0xad0                           ; @"reward"
  100068bdc  mov     x1, x22
  100068be0  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]
  100068be4  mov     x29, x29
  100068be8  bl      _objc_retainAutoreleasedReturnValue
  100068bec  mov     x25, x0
  100068bf0  mov     x1, x26
  100068bf4  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"] intValue]
  100068bf8  mov     x26, x0
  100068bfc  adrp    x8, #0x100417000
  100068c00  nop
  100068c04  ldr     x1, [x8, #0x958]
  100068c08  mov     x0, x20
  100068c0c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  100068c10  add     w2, w0, w26                              ; t3 = ([[ADInventory sharedInventory] coins] + [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"] intValue])
  100068c14  adrp    x8, #0x100417000
  100068c18  nop
  100068c1c  ldr     x1, [x8, #0x90]
  100068c20  mov     x0, x20
  100068c24  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t3]
  100068c28  mov     x0, x25
  100068c2c  bl      _objc_release
  100068c30  mov     x0, x24
  100068c34  bl      _objc_release
  100068c38  mov     x0, x23
  100068c3c  bl      _objc_release
  100068c40  mov     x0, x20
  100068c44  bl      _objc_release
  100068c48  mov     w20, #1
loc_100068c4c:
  100068c4c  adrp    x8, #0x10041e000
  100068c50  ldr     x0, [x8, #8]                             ; class ADTracker
  100068c54  mov     x1, x27
  100068c58  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100068c5c  mov     x29, x29
  100068c60  bl      _objc_retainAutoreleasedReturnValue
  100068c64  mov     x23, x0
  100068c68  adrp    x8, #0x100418000
  100068c6c  nop
  100068c70  ldr     x1, [x8, #0x9b8]
  100068c74  mov     w2, #1
  100068c78  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] timeObjectiveReached:1]
  100068c7c  mov     x0, x23
  100068c80  bl      _objc_release
loc_100068c84:
  100068c84  ldr     x0, [x28, #0xf50]                        ; class ADChallengeData
  100068c88  ldr     x1, [sp, #0x38]
  100068c8c  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100068c90  mov     x29, x29
  100068c94  bl      _objc_retainAutoreleasedReturnValue
  100068c98  mov     x23, x0
  100068c9c  mov     x0, x19
  100068ca0  mov     x1, x21
  100068ca4  bl      _objc_msgSend                            ; [self challengeDict]
  100068ca8  mov     x29, x29
  100068cac  bl      _objc_retainAutoreleasedReturnValue
  100068cb0  mov     x21, x0
  100068cb4  adrp    x2, #0x1003b9000
  100068cb8  add     x2, x2, #0xef0                           ; @"challenge_id"
  100068cbc  mov     x1, x22
  100068cc0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100068cc4  mov     x29, x29
  100068cc8  bl      _objc_retainAutoreleasedReturnValue
  100068ccc  mov     x22, x0
  100068cd0  adrp    x8, #0x100418000
  100068cd4  nop
  100068cd8  ldr     x1, [x8, #0xa20]
  100068cdc  mov     x0, x23
  100068ce0  mov     x2, x22
  100068ce4  ldr     w3, [sp, #0x28]
  100068ce8  mov     x4, x20
  100068cec  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] playerDidCompleteChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"] accuracyUnlocked:one of {0, 1} timeLimitUnlocked:one of {0, 1}]
  100068cf0  mov     x0, x22
  100068cf4  bl      _objc_release
  100068cf8  mov     x0, x21
  100068cfc  bl      _objc_release
  100068d00  mov     x0, x23
  100068d04  bl      _objc_release
  100068d08  adrp    x8, #0x100418000
  100068d0c  nop
  100068d10  ldr     x1, [x8, #0xa28]
  100068d14  mov     x0, x19
  100068d18  sub     sp, x29, #0x60
  100068d1c  ldp     x29, x30, [sp, #0x60]
  100068d20  ldp     x20, x19, [sp, #0x50]
  100068d24  ldp     x22, x21, [sp, #0x40]
  100068d28  ldp     x24, x23, [sp, #0x30]
  100068d2c  ldp     x26, x25, [sp, #0x20]
  100068d30  ldp     x28, x27, [sp, #0x10]
  100068d34  ldp     d9, d8, [sp], #0x70
  100068d38  b       _objc_msgSend                            ; [self reportScoreToGameCenter]
  100068d3c  b       loc_100068f40
  100068d40  b       loc_100068f40
  100068d44  mov     x19, x0
  100068d48  mov     x0, x26
  100068d4c  bl      _objc_release
  100068d50  b       loc_100068e20
  100068d54  b       loc_100068f30
  100068d58  mov     x19, x0
  100068d5c  b       loc_100068f4c
  100068d60  b       loc_100068f40
  100068d64  mov     x19, x0
  100068d68  mov     x0, x26
  100068d6c  b       loc_100068e24
  100068d70  b       loc_100068f30
  100068d74  b       loc_100068f30
  100068d78  mov     x19, x0
  100068d7c  b       loc_100068f4c
  100068d80  mov     x19, x0
  100068d84  mov     x0, x27
  100068d88  bl      _objc_release
  100068d8c  b       loc_100068f44
  100068d90  mov     x19, x0
  100068d94  mov     x0, x27
  100068d98  b       loc_100068f48
  100068d9c  b       loc_100068f30
  100068da0  b       loc_100068f30
  100068da4  mov     x19, x0
  100068da8  b       loc_100068f4c
  100068dac  b       loc_100068df4
  100068db0  mov     x19, x0
  100068db4  mov     x0, x25
  100068db8  b       loc_100068f48
  100068dbc  mov     x19, x0
  100068dc0  b       loc_100068ea0
  100068dc4  mov     x19, x0
  100068dc8  b       loc_100068dd8
  100068dcc  mov     x19, x0
  100068dd0  mov     x0, x22
  100068dd4  bl      _objc_release
loc_100068dd8:
  100068dd8  mov     x0, x21
  100068ddc  bl      _objc_release
  100068de0  b       loc_100068ea0
  100068de4  mov     x19, x0
  100068de8  mov     x0, x28
  100068dec  bl      _objc_release
  100068df0  b       loc_100068f44
loc_100068df4:
  100068df4  mov     x19, x0
  100068df8  mov     x0, x25
  100068dfc  bl      _objc_release
  100068e00  b       loc_100068f44
  100068e04  b       loc_100068f30
  100068e08  mov     x19, x0
  100068e0c  b       loc_100068e28
  100068e10  b       loc_100068f30
  100068e14  mov     x19, x0
  100068e18  b       loc_100068e28
  100068e1c  mov     x19, x0
loc_100068e20:
  100068e20  mov     x0, x25
loc_100068e24:
  100068e24  bl      _objc_release
loc_100068e28:
  100068e28  mov     x0, x24
  100068e2c  b       loc_100068f50
  100068e30  b       loc_100068f30
  100068e34  mov     x19, x0
  100068e38  b       loc_100068f4c
  100068e3c  b       loc_100068f30
  100068e40  mov     x19, x0
  100068e44  b       loc_100068f4c
  100068e48  b       loc_100068f40
  100068e4c  mov     x19, x0
  100068e50  b       loc_100068ed4
  100068e54  mov     x19, x0
  100068e58  mov     x0, x20
  100068e5c  bl      _objc_release
  100068e60  b       loc_100068ec4
  100068e64  b       loc_100068f30
  100068e68  mov     x19, x0
  100068e6c  b       loc_100068f4c
  100068e70  b       loc_100068f30
  100068e74  b       loc_100068f30
  100068e78  mov     x19, x0
  100068e7c  b       loc_100068f4c
  100068e80  b       loc_100068f40
  100068e84  mov     x19, x0
  100068e88  b       loc_100068f18
  100068e8c  mov     x19, x0
  100068e90  mov     x0, x28
  100068e94  bl      _objc_release
  100068e98  b       loc_100068f08
  100068e9c  mov     x19, x0
loc_100068ea0:
  100068ea0  mov     x0, x23
  100068ea4  b       loc_100068f58
  100068ea8  mov     x19, x0
  100068eac  b       loc_100068f28
  100068eb0  mov     x19, x0
  100068eb4  b       loc_100068f20
  100068eb8  mov     x19, x0
  100068ebc  b       loc_100068ecc
  100068ec0  mov     x19, x0
loc_100068ec4:
  100068ec4  mov     x0, x24
  100068ec8  bl      _objc_release
loc_100068ecc:
  100068ecc  mov     x0, x23
  100068ed0  bl      _objc_release
loc_100068ed4:
  100068ed4  ldr     x0, [sp, #0x10]
  100068ed8  b       loc_100068f1c
  100068edc  b       loc_100068f30
  100068ee0  mov     x19, x0
  100068ee4  b       loc_100068f4c
  100068ee8  b       loc_100068f40
  100068eec  mov     x19, x0
  100068ef0  b       loc_100068f28
  100068ef4  mov     x19, x0
  100068ef8  b       loc_100068f20
  100068efc  mov     x19, x0
  100068f00  b       loc_100068f10
  100068f04  mov     x19, x0
loc_100068f08:
  100068f08  mov     x0, x24
  100068f0c  bl      _objc_release
loc_100068f10:
  100068f10  mov     x0, x23
  100068f14  bl      _objc_release
loc_100068f18:
  100068f18  mov     x0, x20
loc_100068f1c:
  100068f1c  bl      _objc_release
loc_100068f20:
  100068f20  ldr     x0, [sp, #0x18]
  100068f24  bl      _objc_release
loc_100068f28:
  100068f28  ldr     x0, [sp, #0x20]
  100068f2c  b       loc_100068f58
loc_100068f30:
  100068f30  mov     x19, x0
  100068f34  b       loc_100068f54
  100068f38  mov     x19, x0
  100068f3c  b       loc_100068f4c
loc_100068f40:
  100068f40  mov     x19, x0
loc_100068f44:
  100068f44  mov     x0, x24
loc_100068f48:
  100068f48  bl      _objc_release
loc_100068f4c:
  100068f4c  mov     x0, x23
loc_100068f50:
  100068f50  bl      _objc_release
loc_100068f54:
  100068f54  mov     x0, x20
loc_100068f58:
  100068f58  bl      _objc_release
  100068f5c  mov     x0, x19
  100068f60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController missionSelectButtonPressed:]
; address 0x100068f64  size 164  kind objc
; ======================================================================
  100068f64  stp     x20, x19, [sp, #-0x20]!
  100068f68  stp     x29, x30, [sp, #0x10]
  100068f6c  add     x29, sp, #0x10
  100068f70  adrp    x8, #0x10041d000
  100068f74  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100068f78  adrp    x8, #0x100416000
  100068f7c  nop
  100068f80  ldr     x1, [x8, #0xb28]
  100068f84  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100068f88  mov     x29, x29
  100068f8c  bl      _objc_retainAutoreleasedReturnValue
  100068f90  mov     x19, x0
  100068f94  adrp    x8, #0x100416000
  100068f98  nop
  100068f9c  ldr     x1, [x8, #0xc18]
  100068fa0  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100068fa4  mov     x29, x29
  100068fa8  bl      _objc_retainAutoreleasedReturnValue
  100068fac  mov     x20, x0
  100068fb0  adrp    x8, #0x100417000
  100068fb4  nop
  100068fb8  ldr     x1, [x8, #0x148]
  100068fbc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeSelector]
  100068fc0  mov     x0, x20
  100068fc4  bl      _objc_release
  100068fc8  mov     x0, x19
  100068fcc  ldp     x29, x30, [sp, #0x10]
  100068fd0  ldp     x20, x19, [sp], #0x20
  100068fd4  b       _objc_release
  100068fd8  mov     x20, x0
  100068fdc  b       loc_100069000
  100068fe0  mov     x20, x0
  100068fe4  b       loc_100068ff8
  100068fe8  mov     x1, x20
  100068fec  mov     x20, x0
  100068ff0  mov     x0, x1
  100068ff4  bl      _objc_release
loc_100068ff8:
  100068ff8  mov     x0, x19
  100068ffc  bl      _objc_release
loc_100069000:
  100069000  mov     x0, x20
  100069004  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController nextMissionButtonPressed:]
; address 0x100069008  size 300  kind objc
; ======================================================================
  100069008  stp     x22, x21, [sp, #-0x30]!
  10006900c  stp     x20, x19, [sp, #0x10]
  100069010  stp     x29, x30, [sp, #0x20]
  100069014  add     x29, sp, #0x20
  100069018  mov     x21, x0
  10006901c  adrp    x8, #0x10041d000
  100069020  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100069024  adrp    x8, #0x100416000
  100069028  nop
  10006902c  ldr     x1, [x8, #0xb28]
  100069030  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100069034  mov     x29, x29
  100069038  bl      _objc_retainAutoreleasedReturnValue
  10006903c  mov     x19, x0
  100069040  adrp    x8, #0x100416000
  100069044  nop
  100069048  ldr     x1, [x8, #0xc18]
  10006904c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100069050  mov     x29, x29
  100069054  bl      _objc_retainAutoreleasedReturnValue
  100069058  mov     x20, x0
  10006905c  adrp    x8, #0x100417000
  100069060  nop
  100069064  ldr     x1, [x8, #0x150]
  100069068  mov     x0, x21
  10006906c  bl      _objc_msgSend                            ; [self challengeDict]
  100069070  mov     x29, x29
  100069074  bl      _objc_retainAutoreleasedReturnValue
  100069078  mov     x21, x0
  10006907c  adrp    x8, #0x100417000
  100069080  nop
  100069084  ldr     x1, [x8, #0x40]
  100069088  adrp    x2, #0x1003b9000
  10006908c  add     x2, x2, #0xef0                           ; @"challenge_id"
  100069090  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100069094  mov     x29, x29
  100069098  bl      _objc_retainAutoreleasedReturnValue
  10006909c  mov     x22, x0
  1000690a0  adrp    x8, #0x100418000
  1000690a4  nop
  1000690a8  ldr     x1, [x8, #0xa80]
  1000690ac  mov     x0, x20
  1000690b0  mov     x2, x22
  1000690b4  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeAfter:[[self challengeDict] objectForKey:@"challenge_id"]]
  1000690b8  mov     x0, x22
  1000690bc  bl      _objc_release
  1000690c0  mov     x0, x21
  1000690c4  bl      _objc_release
  1000690c8  mov     x0, x20
  1000690cc  bl      _objc_release
  1000690d0  mov     x0, x19
  1000690d4  ldp     x29, x30, [sp, #0x20]
  1000690d8  ldp     x20, x19, [sp, #0x10]
  1000690dc  ldp     x22, x21, [sp], #0x30
  1000690e0  b       _objc_release
  1000690e4  mov     x22, x0
  1000690e8  b       loc_10006912c
  1000690ec  mov     x22, x0
  1000690f0  b       loc_100069124
  1000690f4  mov     x22, x0
  1000690f8  b       loc_10006911c
  1000690fc  mov     x22, x0
  100069100  b       loc_100069114
  100069104  mov     x1, x22
  100069108  mov     x22, x0
  10006910c  mov     x0, x1
  100069110  bl      _objc_release
loc_100069114:
  100069114  mov     x0, x21
  100069118  bl      _objc_release
loc_10006911c:
  10006911c  mov     x0, x20
  100069120  bl      _objc_release
loc_100069124:
  100069124  mov     x0, x19
  100069128  bl      _objc_release
loc_10006912c:
  10006912c  mov     x0, x22
  100069130  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController retryButtonPressed:]
; address 0x100069134  size 240  kind objc
; ======================================================================
  100069134  stp     x22, x21, [sp, #-0x30]!
  100069138  stp     x20, x19, [sp, #0x10]
  10006913c  stp     x29, x30, [sp, #0x20]
  100069140  add     x29, sp, #0x20
  100069144  mov     x21, x0
  100069148  adrp    x8, #0x10041d000
  10006914c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100069150  adrp    x8, #0x100416000
  100069154  nop
  100069158  ldr     x1, [x8, #0xb28]
  10006915c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100069160  mov     x29, x29
  100069164  bl      _objc_retainAutoreleasedReturnValue
  100069168  mov     x19, x0
  10006916c  adrp    x8, #0x100416000
  100069170  nop
  100069174  ldr     x1, [x8, #0xc18]
  100069178  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10006917c  mov     x29, x29
  100069180  bl      _objc_retainAutoreleasedReturnValue
  100069184  mov     x20, x0
  100069188  adrp    x8, #0x100417000
  10006918c  nop
  100069190  ldr     x1, [x8, #0x150]
  100069194  mov     x0, x21
  100069198  bl      _objc_msgSend                            ; [self challengeDict]
  10006919c  mov     x29, x29
  1000691a0  bl      _objc_retainAutoreleasedReturnValue
  1000691a4  mov     x21, x0
  1000691a8  adrp    x8, #0x100418000
  1000691ac  nop
  1000691b0  ldr     x1, [x8, #0xa88]
  1000691b4  mov     x0, x20
  1000691b8  mov     x2, x21
  1000691bc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeWithDict:[self challengeDict]]
  1000691c0  mov     x0, x21
  1000691c4  bl      _objc_release
  1000691c8  mov     x0, x20
  1000691cc  bl      _objc_release
  1000691d0  mov     x0, x19
  1000691d4  ldp     x29, x30, [sp, #0x20]
  1000691d8  ldp     x20, x19, [sp, #0x10]
  1000691dc  ldp     x22, x21, [sp], #0x30
  1000691e0  b       _objc_release
  1000691e4  mov     x21, x0
  1000691e8  b       loc_10006921c
  1000691ec  mov     x21, x0
  1000691f0  b       loc_100069214
  1000691f4  mov     x21, x0
  1000691f8  b       loc_10006920c
  1000691fc  mov     x1, x21
  100069200  mov     x21, x0
  100069204  mov     x0, x1
  100069208  bl      _objc_release
loc_10006920c:
  10006920c  mov     x0, x20
  100069210  bl      _objc_release
loc_100069214:
  100069214  mov     x0, x19
  100069218  bl      _objc_release
loc_10006921c:
  10006921c  mov     x0, x21
  100069220  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController loadView]
; address 0x100069224  size 460  kind objc
; ======================================================================
  100069224  stp     x26, x25, [sp, #-0x50]!
  100069228  stp     x24, x23, [sp, #0x10]
  10006922c  stp     x22, x21, [sp, #0x20]
  100069230  stp     x20, x19, [sp, #0x30]
  100069234  stp     x29, x30, [sp, #0x40]
  100069238  add     x29, sp, #0x40
  10006923c  mov     x19, x0
  100069240  adrp    x25, #0x10041e000
  100069244  ldr     x0, [x25, #0x50]                         ; class UIDevice
  100069248  adrp    x8, #0x100417000
  10006924c  nop
  100069250  ldr     x24, [x8, #0x788]
  100069254  mov     x1, x24
  100069258  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  10006925c  mov     x29, x29
  100069260  bl      _objc_retainAutoreleasedReturnValue
  100069264  mov     x20, x0
  100069268  adrp    x8, #0x100418000
  10006926c  nop
  100069270  ldr     x22, [x8, #0x9e8]
  100069274  mov     x1, x22
  100069278  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  10006927c  mov     x29, x29
  100069280  bl      _objc_retainAutoreleasedReturnValue
  100069284  mov     x21, x0
  100069288  adrp    x8, #0x100416000
  10006928c  nop
  100069290  ldr     x23, [x8, #0xf58]
  100069294  adrp    x2, #0x1003bd000
  100069298  add     x2, x2, #0x30                            ; @"iPhone"
  10006929c  mov     x1, x23
  1000692a0  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000692a4  tbz     w0, #0, loc_1000692b0                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  1000692a8  mov     w22, #1
  1000692ac  b       loc_100069300
loc_1000692b0:
  1000692b0  ldr     x0, [x25, #0x50]                         ; class UIDevice
  1000692b4  mov     x1, x24
  1000692b8  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000692bc  mov     x29, x29
  1000692c0  bl      _objc_retainAutoreleasedReturnValue
  1000692c4  mov     x24, x0
  1000692c8  mov     x1, x22
  1000692cc  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000692d0  mov     x29, x29
  1000692d4  bl      _objc_retainAutoreleasedReturnValue
  1000692d8  mov     x25, x0
  1000692dc  adrp    x2, #0x1003bd000
  1000692e0  add     x2, x2, #0x50                            ; @"iPod touch"
  1000692e4  mov     x1, x23
  1000692e8  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  1000692ec  mov     x22, x0
  1000692f0  mov     x0, x25
  1000692f4  bl      _objc_release
  1000692f8  mov     x0, x24
  1000692fc  bl      _objc_release
loc_100069300:
  100069300  mov     x0, x21
  100069304  bl      _objc_release
  100069308  mov     x0, x20
  10006930c  bl      _objc_release
  100069310  adrp    x8, #0x10041d000
  100069314  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100069318  adrp    x8, #0x100416000
  10006931c  nop
  100069320  ldr     x1, [x8, #0xb58]
  100069324  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100069328  mov     x29, x29
  10006932c  bl      _objc_retainAutoreleasedReturnValue
  100069330  mov     x20, x0
  100069334  adrp    x8, #0x100418000
  100069338  add     x8, x8, #0x9f8                           ; &@selector(loadNibNamed:owner:options:)
  10006933c  ldr     x1, [x8]
  100069340  cbz     w22, loc_100069364                       ; if (w22 == 0)
  100069344  mov     x4, #0
  100069348  adrp    x2, #0x1003be000
  10006934c  add     x2, x2, #0xc90                           ; @"Accessible_ADChallengeCompletedViewController"
  100069350  mov     x0, x20
  100069354  mov     x3, x19
  100069358  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"Accessible_ADChallengeCompletedViewController" owner:self options:0]
  10006935c  mov     x29, x29
  100069360  b       loc_100069380
loc_100069364:
  100069364  mov     x4, #0
  100069368  adrp    x2, #0x1003be000
  10006936c  add     x2, x2, #0xcb0                           ; @"Accessible_ADChallengeCompletedViewController_iPad"
  100069370  mov     x0, x20
  100069374  mov     x3, x19
  100069378  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"Accessible_ADChallengeCompletedViewController_iPad" owner:self options:0]
  10006937c  mov     x29, x29
loc_100069380:
  100069380  bl      _objc_retainAutoreleasedReturnValue
  100069384  bl      _objc_release
  100069388  mov     x0, x20
  10006938c  ldp     x29, x30, [sp, #0x40]
  100069390  ldp     x20, x19, [sp, #0x30]
  100069394  ldp     x22, x21, [sp, #0x20]
  100069398  ldp     x24, x23, [sp, #0x10]
  10006939c  ldp     x26, x25, [sp], #0x50
  1000693a0  b       _objc_release
  1000693a4  mov     x19, x0
  1000693a8  b       loc_1000693cc
  1000693ac  b       loc_1000693dc
  1000693b0  mov     x19, x0
  1000693b4  b       loc_1000693c4
  1000693b8  mov     x19, x0
  1000693bc  mov     x0, x25
  1000693c0  bl      _objc_release
loc_1000693c4:
  1000693c4  mov     x0, x24
  1000693c8  bl      _objc_release
loc_1000693cc:
  1000693cc  mov     x0, x21
  1000693d0  bl      _objc_release
  1000693d4  b       loc_1000693e0
  1000693d8  b       loc_1000693dc
loc_1000693dc:
  1000693dc  mov     x19, x0
loc_1000693e0:
  1000693e0  mov     x0, x20
  1000693e4  bl      _objc_release
  1000693e8  mov     x0, x19
  1000693ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]
; address 0x1000693f0  size 852  kind objc
; ======================================================================
  1000693f0  stp     x26, x25, [sp, #-0x50]!
  1000693f4  stp     x24, x23, [sp, #0x10]
  1000693f8  stp     x22, x21, [sp, #0x20]
  1000693fc  stp     x20, x19, [sp, #0x30]
  100069400  stp     x29, x30, [sp, #0x40]
  100069404  add     x29, sp, #0x40
  100069408  sub     sp, sp, #0x20
  10006940c  adrp    x23, #0x1003b0000
  100069410  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  100069414  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  100069418  str     x23, [sp, #0x18]
  10006941c  adrp    x8, #0x10041e000
  100069420  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100069424  adrp    x8, #0x100417000
  100069428  nop
  10006942c  ldr     x1, [x8, #0x788]
  100069430  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100069434  mov     x29, x29
  100069438  bl      _objc_retainAutoreleasedReturnValue
  10006943c  mov     x19, x0
  100069440  adrp    x8, #0x100418000
  100069444  nop
  100069448  ldr     x1, [x8, #0xa90]
  10006944c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  100069450  mov     x29, x29
  100069454  bl      _objc_retainAutoreleasedReturnValue
  100069458  mov     x21, x0
  10006945c  adrp    x8, #0x100418000
  100069460  nop
  100069464  ldr     x1, [x8, #0xa98]
  100069468  adrp    x2, #0x1003bd000
  10006946c  add     x2, x2, #0xf0                            ; @"7.0.0"
  100069470  mov     w3, #0x40
  100069474  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64]
  100069478  mov     x20, x0
  10006947c  mov     x0, x21
  100069480  bl      _objc_release
  100069484  mov     x0, x19
  100069488  bl      _objc_release
  10006948c  cmn     x20, #1
  100069490  b.eq    loc_1000696c0                            ; if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64] == -1)
  100069494  adrp    x24, #0x10041e000
  100069498  ldr     x0, [x24, #0x1a8]                        ; class GKLocalPlayer
  10006949c  adrp    x8, #0x100418000
  1000694a0  nop
  1000694a4  ldr     x19, [x8, #0xaa0]
  1000694a8  mov     x1, x19
  1000694ac  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  1000694b0  mov     x29, x29
  1000694b4  bl      _objc_retainAutoreleasedReturnValue
  1000694b8  mov     x21, x0
  1000694bc  adrp    x8, #0x100418000
  1000694c0  nop
  1000694c4  ldr     x20, [x8, #0xaa8]
  1000694c8  mov     x1, x20
  1000694cc  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] isAuthenticated]
  1000694d0  mov     x22, x0
  1000694d4  mov     x0, x21
  1000694d8  bl      _objc_release
  1000694dc  cbz     w22, loc_1000695b8                       ; if ([[GKLocalPlayer localPlayer] isAuthenticated] == 0)
  1000694e0  adrp    x25, #0x10041e000
  1000694e4  ldr     x0, [x25, #0x1b0]                        ; class GKScore
  1000694e8  adrp    x8, #0x100416000
  1000694ec  nop
  1000694f0  ldr     x1, [x8, #0xac8]
  1000694f4  bl      _objc_msgSend                            ; [GKScore alloc]
  1000694f8  adrp    x8, #0x100418000
  1000694fc  nop
  100069500  ldr     x1, [x8, #0xab0]
  100069504  adrp    x2, #0x1003bd000
  100069508  add     x2, x2, #0x110                           ; @"TotalStarsUnlocked"
  10006950c  bl      _objc_msgSend                            ; [[GKScore alloc] initWithLeaderboardIdentifier:@"TotalStarsUnlocked"]
  100069510  mov     x21, x0
  100069514  adrp    x8, #0x10041d000
  100069518  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10006951c  adrp    x8, #0x100416000
  100069520  nop
  100069524  ldr     x1, [x8, #0xdf0]
  100069528  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10006952c  mov     x29, x29
  100069530  bl      _objc_retainAutoreleasedReturnValue
  100069534  mov     x22, x0
  100069538  adrp    x8, #0x100418000
  10006953c  nop
  100069540  ldr     x1, [x8, #0xab8]
  100069544  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] computeTotalChallengesWon]
  100069548  mov     x2, x0
  10006954c  adrp    x8, #0x100418000
  100069550  nop
  100069554  ldr     x1, [x8, #0x658]
  100069558  mov     x0, x21
  10006955c  bl      _objc_msgSend                            ; [[[GKScore alloc] initWithLeaderboardIdentifier:@"TotalStarsUnlocked"] setValue:[[ADChallengeData sharedChallengeData] computeTotalChallengesWon]]
  100069560  mov     x0, x22
  100069564  bl      _objc_release
  100069568  ldr     x22, [x25, #0x1b0]                       ; class GKScore
  10006956c  str     x21, [sp, #0x10]
  100069570  adrp    x8, #0x10041d000
  100069574  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100069578  adrp    x8, #0x100417000
  10006957c  nop
  100069580  ldr     x1, [x8, #0x3c8]
  100069584  add     x2, sp, #0x10
  100069588  mov     w3, #1
  10006958c  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:1]
  100069590  mov     x2, x0
  100069594  adrp    x8, #0x100418000
  100069598  nop
  10006959c  ldr     x1, [x8, #0xac0]
  1000695a0  adrp    x3, #0x1003b1000
  1000695a4  add     x3, x3, #0xdb0                           ; ^{-[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke}
  1000695a8  mov     x0, x22
  1000695ac  bl      _objc_msgSend                            ; [GKScore reportScores:[NSArray arrayWithObjects:&sp[0x10] count:1] withCompletionHandler:^{-[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke}]
  1000695b0  mov     x0, x21
  1000695b4  bl      _objc_release
loc_1000695b8:
  1000695b8  ldr     x0, [x24, #0x1a8]                        ; class GKLocalPlayer
  1000695bc  mov     x1, x19
  1000695c0  bl      _objc_msgSend                            ; [GKLocalPlayer localPlayer]
  1000695c4  mov     x29, x29
  1000695c8  bl      _objc_retainAutoreleasedReturnValue
  1000695cc  mov     x19, x0
  1000695d0  mov     x1, x20
  1000695d4  bl      _objc_msgSend                            ; [[GKLocalPlayer localPlayer] isAuthenticated]
  1000695d8  mov     x20, x0
  1000695dc  mov     x0, x19
  1000695e0  bl      _objc_release
  1000695e4  cbz     w20, loc_1000696c0                       ; if ([[GKLocalPlayer localPlayer] isAuthenticated] == 0)
  1000695e8  adrp    x20, #0x10041e000
  1000695ec  ldr     x0, [x20, #0x1b0]                        ; class GKScore
  1000695f0  adrp    x8, #0x100416000
  1000695f4  nop
  1000695f8  ldr     x1, [x8, #0xac8]
  1000695fc  bl      _objc_msgSend                            ; [GKScore alloc]
  100069600  adrp    x8, #0x100418000
  100069604  nop
  100069608  ldr     x1, [x8, #0xab0]
  10006960c  adrp    x2, #0x1003bd000
  100069610  add     x2, x2, #0x130                           ; @"TotalZombiesKilled"
  100069614  bl      _objc_msgSend                            ; [[GKScore alloc] initWithLeaderboardIdentifier:@"TotalZombiesKilled"]
  100069618  mov     x19, x0
  10006961c  adrp    x8, #0x10041d000
  100069620  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  100069624  adrp    x8, #0x100416000
  100069628  nop
  10006962c  ldr     x1, [x8, #0xe10]
  100069630  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100069634  mov     x29, x29
  100069638  bl      _objc_retainAutoreleasedReturnValue
  10006963c  mov     x21, x0
  100069640  adrp    x8, #0x100418000
  100069644  nop
  100069648  ldr     x1, [x8, #0xac8]
  10006964c  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] computeTotalEnemyKillCount]
  100069650  mov     x2, x0
  100069654  adrp    x8, #0x100418000
  100069658  nop
  10006965c  ldr     x1, [x8, #0x658]
  100069660  mov     x0, x19
  100069664  bl      _objc_msgSend                            ; [[[GKScore alloc] initWithLeaderboardIdentifier:@"TotalZombiesKilled"] setValue:[[ADPersistentStats persistentStats] computeTotalEnemyKillCount]]
  100069668  mov     x0, x21
  10006966c  bl      _objc_release
  100069670  ldr     x20, [x20, #0x1b0]                       ; class GKScore
  100069674  str     x19, [sp, #8]
  100069678  adrp    x8, #0x10041d000
  10006967c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100069680  adrp    x8, #0x100417000
  100069684  nop
  100069688  ldr     x1, [x8, #0x3c8]
  10006968c  add     x2, sp, #8
  100069690  mov     w3, #1
  100069694  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:1]
  100069698  mov     x2, x0
  10006969c  adrp    x8, #0x100418000
  1000696a0  nop
  1000696a4  ldr     x1, [x8, #0xac0]
  1000696a8  adrp    x3, #0x1003b1000
  1000696ac  add     x3, x3, #0xdf0                           ; ^{-[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2}
  1000696b0  mov     x0, x20
  1000696b4  bl      _objc_msgSend                            ; [GKScore reportScores:[NSArray arrayWithObjects:&sp[0x8] count:1] withCompletionHandler:^{-[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2}]
  1000696b8  mov     x0, x19
  1000696bc  bl      _objc_release
loc_1000696c0:
  1000696c0  ldr     x8, [sp, #0x18]
  1000696c4  sub     x8, x23, x8
  1000696c8  cbnz    x8, loc_1000696e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000696cc  sub     sp, x29, #0x40
  1000696d0  ldp     x29, x30, [sp, #0x40]
  1000696d4  ldp     x20, x19, [sp, #0x30]
  1000696d8  ldp     x22, x21, [sp, #0x20]
  1000696dc  ldp     x24, x23, [sp, #0x10]
  1000696e0  ldp     x26, x25, [sp], #0x50
  1000696e4  ret
loc_1000696e8:
  1000696e8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000696ec  b       loc_100069730
  1000696f0  b       loc_100069710
  1000696f4  b       loc_100069724
  1000696f8  mov     x20, x0
  1000696fc  mov     x0, x22
  100069700  bl      _objc_release
  100069704  b       loc_100069728
  100069708  b       loc_100069724
  10006970c  b       loc_100069730
loc_100069710:
  100069710  mov     x20, x0
  100069714  mov     x0, x21
  100069718  bl      _objc_release
  10006971c  b       loc_100069734
  100069720  b       loc_100069730
loc_100069724:
  100069724  mov     x20, x0
loc_100069728:
  100069728  mov     x0, x21
  10006972c  b       loc_100069738
loc_100069730:
  100069730  mov     x20, x0
loc_100069734:
  100069734  mov     x0, x19
loc_100069738:
  100069738  bl      _objc_release
  10006973c  mov     x0, x20
  100069740  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke
; address 0x100069744  size 4  kind block
; ======================================================================
  100069744  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController reportScoreToGameCenter]_block_invoke_2
; address 0x100069748  size 4  kind block
; ======================================================================
  100069748  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController accessibilityPerformMagicTap]
; address 0x10006974c  size 40  kind objc
; ======================================================================
  10006974c  stp     x29, x30, [sp, #-0x10]!
  100069750  mov     x29, sp
  100069754  adrp    x8, #0x100419000
  100069758  nop
  10006975c  ldr     x1, [x8, #0x548]
  100069760  mov     x2, #0
  100069764  bl      _objc_msgSend                            ; [self nextMissionButtonPressed:0]
  100069768  mov     w0, #1
  10006976c  ldp     x29, x30, [sp], #0x10
  100069770  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController challengeDict]
; address 0x100069774  size 16  kind objc
; ======================================================================
  100069774  adrp    x8, #0x10041f000
  100069778  ldrsw   x8, [x8, #0xc58]                         ; ivar offset Accessible_ADChallengeCompletedViewController._challengeDict (+0x158)
  10006977c  ldr     x0, [x0, x8]                             ; x0 = self->_challengeDict
  100069780  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController setChallengeDict:]
; address 0x100069784  size 56  kind objc
; ======================================================================
  100069784  stp     x20, x19, [sp, #-0x20]!
  100069788  stp     x29, x30, [sp, #0x10]
  10006978c  add     x29, sp, #0x10
  100069790  mov     x19, x0
  100069794  adrp    x8, #0x10041f000
  100069798  ldrsw   x20, [x8, #0xc58]                        ; ivar offset Accessible_ADChallengeCompletedViewController._challengeDict (+0x158)
  10006979c  mov     x0, x2
  1000697a0  bl      _objc_retain
  1000697a4  ldr     x8, [x19, x20]                           ; x8 = self->_challengeDict
  1000697a8  str     x0, [x19, x20]                           ; self->_challengeDict = arg1
  1000697ac  mov     x0, x8
  1000697b0  ldp     x29, x30, [sp, #0x10]
  1000697b4  ldp     x20, x19, [sp], #0x20
  1000697b8  b       _objc_release

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController nextChallengeButton]
; address 0x1000697bc  size 16  kind objc
; ======================================================================
  1000697bc  adrp    x8, #0x10041f000
  1000697c0  ldrsw   x8, [x8, #0xc5c]                         ; ivar offset Accessible_ADChallengeCompletedViewController._nextChallengeButton (+0x160)
  1000697c4  ldr     x0, [x0, x8]                             ; x0 = self->_nextChallengeButton
  1000697c8  ret

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController setNextChallengeButton:]
; address 0x1000697cc  size 56  kind objc
; ======================================================================
  1000697cc  stp     x20, x19, [sp, #-0x20]!
  1000697d0  stp     x29, x30, [sp, #0x10]
  1000697d4  add     x29, sp, #0x10
  1000697d8  mov     x19, x0
  1000697dc  adrp    x8, #0x10041f000
  1000697e0  ldrsw   x20, [x8, #0xc5c]                        ; ivar offset Accessible_ADChallengeCompletedViewController._nextChallengeButton (+0x160)
  1000697e4  mov     x0, x2
  1000697e8  bl      _objc_retain
  1000697ec  ldr     x8, [x19, x20]                           ; x8 = self->_nextChallengeButton
  1000697f0  str     x0, [x19, x20]                           ; self->_nextChallengeButton = arg1
  1000697f4  mov     x0, x8
  1000697f8  ldp     x29, x30, [sp, #0x10]
  1000697fc  ldp     x20, x19, [sp], #0x20
  100069800  b       _objc_release

; ======================================================================
; -[Accessible_ADChallengeCompletedViewController .cxx_destruct]
; address 0x100069804  size 124  kind objc
; ======================================================================
  100069804  stp     x20, x19, [sp, #-0x20]!
  100069808  stp     x29, x30, [sp, #0x10]
  10006980c  add     x29, sp, #0x10
  100069810  mov     x19, x0
  100069814  adrp    x8, #0x10041f000
  100069818  ldrsw   x8, [x8, #0xc5c]                         ; ivar offset Accessible_ADChallengeCompletedViewController._nextChallengeButton (+0x160)
  10006981c  add     x0, x19, x8
  100069820  mov     x1, #0
  100069824  bl      _objc_storeStrong
  100069828  adrp    x8, #0x10041f000
  10006982c  ldrsw   x8, [x8, #0xc58]                         ; ivar offset Accessible_ADChallengeCompletedViewController._challengeDict (+0x158)
  100069830  add     x0, x19, x8
  100069834  mov     x1, #0
  100069838  bl      _objc_storeStrong
  10006983c  adrp    x8, #0x10041f000
  100069840  ldrsw   x8, [x8, #0xc54]                         ; ivar offset Accessible_ADChallengeCompletedViewController.timeStarStatus (+0x150)
  100069844  add     x0, x19, x8
  100069848  mov     x1, #0
  10006984c  bl      _objc_storeStrong
  100069850  adrp    x8, #0x10041f000
  100069854  ldrsw   x8, [x8, #0xc4c]                         ; ivar offset Accessible_ADChallengeCompletedViewController.missionStarStatus (+0x148)
  100069858  add     x0, x19, x8
  10006985c  mov     x1, #0
  100069860  bl      _objc_storeStrong
  100069864  mov     x1, #0
  100069868  adrp    x8, #0x10041f000
  10006986c  ldrsw   x8, [x8, #0xc50]                         ; ivar offset Accessible_ADChallengeCompletedViewController.accuracyStarStatus (+0x140)
  100069870  add     x0, x19, x8
  100069874  ldp     x29, x30, [sp, #0x10]
  100069878  ldp     x20, x19, [sp], #0x20
  10006987c  b       _objc_storeStrong
