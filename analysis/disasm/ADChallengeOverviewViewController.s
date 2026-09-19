// unit ADChallengeOverviewViewController — 13 functions
//   0x1000d8178     208  -[ADChallengeOverviewViewController initWithDictionary:]
//   0x1000d8248    1088  -[ADChallengeOverviewViewController viewDidLoad]
//   0x1000d8688     740  -[ADChallengeOverviewViewController loadView]
//   0x1000d896c     476  -[ADChallengeOverviewViewController loadEquipment]
//   0x1000d8b48     256  -[ADChallengeOverviewViewController playButtonPressed:]
//   0x1000d8c48     104  -[ADChallengeOverviewViewController missionsButtonPressed:]
//   0x1000d8cb0     160  -[ADChallengeOverviewViewController backButtonPressed]
//   0x1000d8d50     252  -[ADChallengeOverviewViewController playButtonSound]
//   0x1000d8e4c      16  -[ADChallengeOverviewViewController challengeEquipement]
//   0x1000d8e5c      56  -[ADChallengeOverviewViewController setChallengeEquipement:]
//   0x1000d8e94      32  -[ADChallengeOverviewViewController challengeObjective]
//   0x1000d8eb4      20  -[ADChallengeOverviewViewController setChallengeObjective:]
//   0x1000d8ec8     100  -[ADChallengeOverviewViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeOverviewViewController initWithDictionary:]
; address 0x1000d8178  size 208  kind objc
; ======================================================================
  1000d8178  stp     x22, x21, [sp, #-0x30]!
  1000d817c  stp     x20, x19, [sp, #0x10]
  1000d8180  stp     x29, x30, [sp, #0x20]
  1000d8184  add     x29, sp, #0x20
  1000d8188  sub     sp, sp, #0x10
  1000d818c  mov     x20, x0
  1000d8190  mov     x0, x2
  1000d8194  bl      _objc_retain
  1000d8198  mov     x19, x0
  1000d819c  str     x20, [sp]
  1000d81a0  adrp    x8, #0x10041f000
  1000d81a4  ldr     x8, [x8, #8]
  1000d81a8  str     x8, [sp, #8]
  1000d81ac  adrp    x8, #0x100416000
  1000d81b0  nop
  1000d81b4  ldr     x1, [x8, #0xb40]
  1000d81b8  mov     x20, #0
  1000d81bc  mov     x0, sp
  1000d81c0  mov     x2, #0
  1000d81c4  mov     x3, #0
  1000d81c8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000d81cc  mov     x21, x0
  1000d81d0  cbz     x21, loc_1000d820c                       ; if (self == 0)
  1000d81d4  mov     x20, x21
  1000d81d8  adrp    x8, #0x100417000
  1000d81dc  nop
  1000d81e0  ldr     x1, [x8, #0x140]
  1000d81e4  mov     x0, x21
  1000d81e8  mov     x2, x19
  1000d81ec  bl      _objc_msgSend                            ; [self setChallengeDict:arg1]
  1000d81f0  mov     x20, x21
  1000d81f4  adrp    x8, #0x10041a000
  1000d81f8  nop
  1000d81fc  ldr     x1, [x8, #0xeb8]
  1000d8200  mov     w2, #1
  1000d8204  mov     x0, x21
  1000d8208  bl      _objc_msgSend                            ; [self setIgnoreRewards:1]
loc_1000d820c:
  1000d820c  mov     x0, x19
  1000d8210  bl      _objc_release
  1000d8214  mov     x0, x21
  1000d8218  sub     sp, x29, #0x20
  1000d821c  ldp     x29, x30, [sp, #0x20]
  1000d8220  ldp     x20, x19, [sp, #0x10]
  1000d8224  ldp     x22, x21, [sp], #0x30
  1000d8228  ret
  1000d822c  mov     x21, x0
  1000d8230  mov     x0, x19
  1000d8234  bl      _objc_release
  1000d8238  mov     x0, x20
  1000d823c  bl      _objc_release
  1000d8240  mov     x0, x21
  1000d8244  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController viewDidLoad]
; address 0x1000d8248  size 1088  kind objc
; ======================================================================
  1000d8248  stp     x24, x23, [sp, #-0x40]!
  1000d824c  stp     x22, x21, [sp, #0x10]
  1000d8250  stp     x20, x19, [sp, #0x20]
  1000d8254  stp     x29, x30, [sp, #0x30]
  1000d8258  add     x29, sp, #0x30
  1000d825c  sub     sp, sp, #0x10
  1000d8260  mov     x19, x0
  1000d8264  str     x19, [sp]
  1000d8268  adrp    x8, #0x10041f000
  1000d826c  ldr     x8, [x8, #8]
  1000d8270  str     x8, [sp, #8]
  1000d8274  adrp    x8, #0x100416000
  1000d8278  nop
  1000d827c  ldr     x1, [x8, #0xb48]
  1000d8280  mov     x0, sp
  1000d8284  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000d8288  adrp    x8, #0x100417000
  1000d828c  nop
  1000d8290  ldr     x20, [x8, #0x2a8]
  1000d8294  mov     x0, x19
  1000d8298  mov     x1, x20
  1000d829c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d82a0  mov     x29, x29
  1000d82a4  bl      _objc_retainAutoreleasedReturnValue
  1000d82a8  mov     x21, x0
  1000d82ac  adrp    x8, #0x100417000
  1000d82b0  nop
  1000d82b4  ldr     x1, [x8, #0x2b0]
  1000d82b8  mov     w2, #1
  1000d82bc  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  1000d82c0  mov     x0, x21
  1000d82c4  bl      _objc_release
  1000d82c8  mov     x0, x19
  1000d82cc  mov     x1, x20
  1000d82d0  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d82d4  mov     x29, x29
  1000d82d8  bl      _objc_retainAutoreleasedReturnValue
  1000d82dc  mov     x21, x0
  1000d82e0  adrp    x8, #0x100417000
  1000d82e4  nop
  1000d82e8  ldr     x1, [x8, #0x2b8]
  1000d82ec  mov     w2, #0
  1000d82f0  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000d82f4  mov     x0, x21
  1000d82f8  bl      _objc_release
  1000d82fc  mov     x0, x19
  1000d8300  mov     x1, x20
  1000d8304  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d8308  mov     x29, x29
  1000d830c  bl      _objc_retainAutoreleasedReturnValue
  1000d8310  mov     x21, x0
  1000d8314  adrp    x8, #0x100417000
  1000d8318  nop
  1000d831c  ldr     x1, [x8, #0x2c0]
  1000d8320  mov     w2, #0
  1000d8324  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  1000d8328  mov     x0, x21
  1000d832c  bl      _objc_release
  1000d8330  mov     x0, x19
  1000d8334  mov     x1, x20
  1000d8338  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d833c  mov     x29, x29
  1000d8340  bl      _objc_retainAutoreleasedReturnValue
  1000d8344  mov     x21, x0
  1000d8348  adrp    x8, #0x100418000
  1000d834c  nop
  1000d8350  ldr     x1, [x8, #0x390]
  1000d8354  mov     w2, #0
  1000d8358  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryLoadoutEnabled:0]
  1000d835c  mov     x0, x21
  1000d8360  bl      _objc_release
  1000d8364  mov     x0, x19
  1000d8368  mov     x1, x20
  1000d836c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d8370  mov     x29, x29
  1000d8374  bl      _objc_retainAutoreleasedReturnValue
  1000d8378  mov     x21, x0
  1000d837c  adrp    x8, #0x100417000
  1000d8380  nop
  1000d8384  ldr     x1, [x8, #0x7d8]
  1000d8388  mov     x2, x19
  1000d838c  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  1000d8390  mov     x0, x21
  1000d8394  bl      _objc_release
  1000d8398  adrp    x8, #0x100418000
  1000d839c  nop
  1000d83a0  ldr     x1, [x8, #0x848]
  1000d83a4  mov     x0, x19
  1000d83a8  bl      _objc_msgSend                            ; [self challengeTitle]
  1000d83ac  mov     x29, x29
  1000d83b0  bl      _objc_retainAutoreleasedReturnValue
  1000d83b4  mov     x21, x0
  1000d83b8  adrp    x8, #0x100416000
  1000d83bc  nop
  1000d83c0  ldr     x1, [x8, #0xb88]
  1000d83c4  bl      _objc_msgSend                            ; [[self challengeTitle] setupAsTitle]
  1000d83c8  mov     x0, x21
  1000d83cc  bl      _objc_release
  1000d83d0  adrp    x8, #0x10041a000
  1000d83d4  nop
  1000d83d8  ldr     x21, [x8, #0xec0]
  1000d83dc  mov     x0, x19
  1000d83e0  mov     x1, x21
  1000d83e4  bl      _objc_msgSend                            ; [self challengeObjective]
  1000d83e8  mov     x29, x29
  1000d83ec  bl      _objc_retainAutoreleasedReturnValue
  1000d83f0  mov     x22, x0
  1000d83f4  adrp    x8, #0x100416000
  1000d83f8  nop
  1000d83fc  ldr     x1, [x8, #0xeb8]
  1000d8400  bl      _objc_msgSend                            ; [[self challengeObjective] setupAsInfo]
  1000d8404  mov     x0, x22
  1000d8408  bl      _objc_release
  1000d840c  mov     x0, x19
  1000d8410  mov     x1, x21
  1000d8414  bl      _objc_msgSend                            ; [self challengeObjective]
  1000d8418  mov     x29, x29
  1000d841c  bl      _objc_retainAutoreleasedReturnValue
  1000d8420  mov     x22, x0
  1000d8424  adrp    x8, #0x10041d000
  1000d8428  ldr     x24, [x8, #0xf08]                        ; class UIFont
  1000d842c  nop
  1000d8430  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000d8434  adrp    x8, #0x100416000
  1000d8438  nop
  1000d843c  ldr     x1, [x8, #0xc00]
  1000d8440  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000d8444  mov     x29, x29
  1000d8448  bl      _objc_retainAutoreleasedReturnValue
  1000d844c  mov     x23, x0
  1000d8450  adrp    x8, #0x100416000
  1000d8454  nop
  1000d8458  ldr     x1, [x8, #0xd18]
  1000d845c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000d8460  cmp     w0, #0
  1000d8464  fmov    d0, #20.00000000
  1000d8468  fmov    d1, #9.00000000
  1000d846c  fcsel   d0, d1, d0, ne
  1000d8470  adrp    x8, #0x100416000
  1000d8474  nop
  1000d8478  ldr     x1, [x8, #0xd20]
  1000d847c  adrp    x2, #0x1003ba000
  1000d8480  add     x2, x2, #0xf10                           ; @"Chainprinter"
  1000d8484  mov     x0, x24
  1000d8488  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 9 : 20)]
  1000d848c  mov     x29, x29
  1000d8490  bl      _objc_retainAutoreleasedReturnValue
  1000d8494  mov     x24, x0
  1000d8498  adrp    x8, #0x100416000
  1000d849c  nop
  1000d84a0  ldr     x1, [x8, #0xd28]
  1000d84a4  mov     x0, x22
  1000d84a8  mov     x2, x24
  1000d84ac  bl      _objc_msgSend                            ; [[self challengeObjective] setFont:[UIFont fontWithName:@"Chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 9 : 20)]]
  1000d84b0  mov     x0, x24
  1000d84b4  bl      _objc_release
  1000d84b8  mov     x0, x23
  1000d84bc  bl      _objc_release
  1000d84c0  mov     x0, x22
  1000d84c4  bl      _objc_release
  1000d84c8  adrp    x8, #0x100418000
  1000d84cc  nop
  1000d84d0  ldr     x1, [x8, #0x388]
  1000d84d4  mov     x0, x19
  1000d84d8  bl      _objc_msgSend                            ; [self loadMissionOverlay]
  1000d84dc  mov     x0, x19
  1000d84e0  mov     x1, x20
  1000d84e4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000d84e8  mov     x29, x29
  1000d84ec  bl      _objc_retainAutoreleasedReturnValue
  1000d84f0  mov     x20, x0
  1000d84f4  adrp    x8, #0x100417000
  1000d84f8  nop
  1000d84fc  ldr     x1, [x8, #0x2c8]
  1000d8500  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000d8504  mov     x29, x29
  1000d8508  bl      _objc_retainAutoreleasedReturnValue
  1000d850c  mov     x23, x0
  1000d8510  adrp    x8, #0x100416000
  1000d8514  nop
  1000d8518  ldr     x22, [x8, #0xb68]
  1000d851c  adrp    x2, #0x1003bd000
  1000d8520  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  1000d8524  mov     x1, x22
  1000d8528  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"CHALLENGE"]
  1000d852c  mov     x0, x23
  1000d8530  bl      _objc_release
  1000d8534  mov     x0, x20
  1000d8538  bl      _objc_release
  1000d853c  mov     x0, x19
  1000d8540  mov     x1, x21
  1000d8544  bl      _objc_msgSend                            ; [self challengeObjective]
  1000d8548  mov     x29, x29
  1000d854c  bl      _objc_retainAutoreleasedReturnValue
  1000d8550  mov     x20, x0
  1000d8554  adrp    x8, #0x100417000
  1000d8558  nop
  1000d855c  ldr     x1, [x8, #0x150]
  1000d8560  mov     x0, x19
  1000d8564  bl      _objc_msgSend                            ; [self challengeDict]
  1000d8568  mov     x29, x29
  1000d856c  bl      _objc_retainAutoreleasedReturnValue
  1000d8570  mov     x21, x0
  1000d8574  adrp    x8, #0x100417000
  1000d8578  nop
  1000d857c  ldr     x1, [x8, #0x40]
  1000d8580  adrp    x2, #0x1003bc000
  1000d8584  add     x2, x2, #0x990                           ; @"objective"
  1000d8588  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"objective"]
  1000d858c  mov     x29, x29
  1000d8590  bl      _objc_retainAutoreleasedReturnValue
  1000d8594  mov     x23, x0
  1000d8598  mov     x0, x20
  1000d859c  mov     x1, x22
  1000d85a0  mov     x2, x23
  1000d85a4  bl      _objc_msgSend                            ; [[self challengeObjective] setText:[[self challengeDict] objectForKey:@"objective"]]
  1000d85a8  mov     x0, x23
  1000d85ac  bl      _objc_release
  1000d85b0  mov     x0, x21
  1000d85b4  bl      _objc_release
  1000d85b8  mov     x0, x20
  1000d85bc  bl      _objc_release
  1000d85c0  adrp    x8, #0x10041a000
  1000d85c4  nop
  1000d85c8  ldr     x1, [x8, #0xec8]
  1000d85cc  mov     x0, x19
  1000d85d0  bl      _objc_msgSend                            ; [self loadEquipment]
  1000d85d4  sub     sp, x29, #0x30
  1000d85d8  ldp     x29, x30, [sp, #0x30]
  1000d85dc  ldp     x20, x19, [sp, #0x20]
  1000d85e0  ldp     x22, x21, [sp, #0x10]
  1000d85e4  ldp     x24, x23, [sp], #0x40
  1000d85e8  ret
  1000d85ec  mov     x19, x0
  1000d85f0  b       loc_1000d8630
  1000d85f4  b       loc_1000d8608
  1000d85f8  b       loc_1000d8608
  1000d85fc  b       loc_1000d8608
  1000d8600  b       loc_1000d8608
  1000d8604  b       loc_1000d8608
loc_1000d8608:
  1000d8608  mov     x19, x0
  1000d860c  mov     x0, x21
  1000d8610  b       loc_1000d867c
  1000d8614  mov     x19, x0
  1000d8618  b       loc_1000d8638
  1000d861c  mov     x19, x0
  1000d8620  b       loc_1000d8638
  1000d8624  mov     x19, x0
  1000d8628  mov     x0, x24
  1000d862c  bl      _objc_release
loc_1000d8630:
  1000d8630  mov     x0, x23
  1000d8634  bl      _objc_release
loc_1000d8638:
  1000d8638  mov     x0, x22
  1000d863c  b       loc_1000d867c
  1000d8640  mov     x19, x0
  1000d8644  b       loc_1000d8678
  1000d8648  mov     x19, x0
  1000d864c  mov     x0, x23
  1000d8650  b       loc_1000d8674
  1000d8654  mov     x19, x0
  1000d8658  b       loc_1000d8678
  1000d865c  mov     x19, x0
  1000d8660  b       loc_1000d8670
  1000d8664  mov     x19, x0
  1000d8668  mov     x0, x23
  1000d866c  bl      _objc_release
loc_1000d8670:
  1000d8670  mov     x0, x21
loc_1000d8674:
  1000d8674  bl      _objc_release
loc_1000d8678:
  1000d8678  mov     x0, x20
loc_1000d867c:
  1000d867c  bl      _objc_release
  1000d8680  mov     x0, x19
  1000d8684  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController loadView]
; address 0x1000d8688  size 740  kind objc
; ======================================================================
  1000d8688  stp     x28, x27, [sp, #-0x60]!
  1000d868c  stp     x26, x25, [sp, #0x10]
  1000d8690  stp     x24, x23, [sp, #0x20]
  1000d8694  stp     x22, x21, [sp, #0x30]
  1000d8698  stp     x20, x19, [sp, #0x40]
  1000d869c  stp     x29, x30, [sp, #0x50]
  1000d86a0  add     x29, sp, #0x50
  1000d86a4  sub     sp, sp, #0x90
  1000d86a8  mov     x26, x0
  1000d86ac  adrp    x21, #0x1003b0000
  1000d86b0  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  1000d86b4  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  1000d86b8  stur    x21, [x29, #-0x58]
  1000d86bc  adrp    x8, #0x1003c2000
  1000d86c0  add     x8, x8, #0x710                           ; @"challengeEquipement"
  1000d86c4  str     x8, [sp, #8]
  1000d86c8  adrp    x28, #0x10041d000
  1000d86cc  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d86d0  adrp    x8, #0x100416000
  1000d86d4  nop
  1000d86d8  ldr     x24, [x8, #0xec0]
  1000d86dc  mov     w2, #1
  1000d86e0  mov     x1, x24
  1000d86e4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000d86e8  mov     x29, x29
  1000d86ec  bl      _objc_retainAutoreleasedReturnValue
  1000d86f0  str     x0, [sp]
  1000d86f4  str     x0, [sp, #0x48]
  1000d86f8  adrp    x8, #0x1003c2000
  1000d86fc  add     x8, x8, #0x730                           ; @"challengeObjective"
  1000d8700  str     x8, [sp, #0x10]
  1000d8704  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d8708  mov     w2, #2
  1000d870c  mov     x1, x24
  1000d8710  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000d8714  bl      _objc_retain
  1000d8718  mov     x20, x0
  1000d871c  str     x20, [sp, #0x50]
  1000d8720  adrp    x8, #0x1003c2000
  1000d8724  add     x8, x8, #0x750                           ; @"starUnlockArea"
  1000d8728  str     x8, [sp, #0x18]
  1000d872c  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d8730  mov     w2, #3
  1000d8734  mov     x1, x24
  1000d8738  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000d873c  bl      _objc_retain
  1000d8740  mov     x22, x0
  1000d8744  str     x22, [sp, #0x58]
  1000d8748  adrp    x8, #0x1003c2000
  1000d874c  add     x8, x8, #0x770                           ; @"challengeTitle"
  1000d8750  str     x8, [sp, #0x20]
  1000d8754  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d8758  mov     w2, #4
  1000d875c  mov     x1, x24
  1000d8760  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000d8764  bl      _objc_retain
  1000d8768  mov     x23, x0
  1000d876c  str     x23, [sp, #0x60]
  1000d8770  adrp    x8, #0x1003c2000
  1000d8774  add     x8, x8, #0x790                           ; @"missionsButton"
  1000d8778  str     x8, [sp, #0x28]
  1000d877c  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d8780  mov     w2, #5
  1000d8784  mov     x1, x24
  1000d8788  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  1000d878c  bl      _objc_retain
  1000d8790  mov     x25, x0
  1000d8794  str     x25, [sp, #0x68]
  1000d8798  adrp    x8, #0x1003c2000
  1000d879c  add     x8, x8, #0x7b0                           ; @"starPlaceholder1"
  1000d87a0  str     x8, [sp, #0x30]
  1000d87a4  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d87a8  mov     w2, #6
  1000d87ac  mov     x1, x24
  1000d87b0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  1000d87b4  mov     x19, x26
  1000d87b8  bl      _objc_retain
  1000d87bc  mov     x26, x0
  1000d87c0  str     x26, [sp, #0x70]
  1000d87c4  adrp    x8, #0x1003c2000
  1000d87c8  add     x8, x8, #0x7d0                           ; @"starPlaceholder2"
  1000d87cc  str     x8, [sp, #0x38]
  1000d87d0  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d87d4  mov     w2, #7
  1000d87d8  mov     x1, x24
  1000d87dc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000d87e0  bl      _objc_retain
  1000d87e4  mov     x27, x0
  1000d87e8  str     x27, [sp, #0x78]
  1000d87ec  adrp    x8, #0x1003c2000
  1000d87f0  add     x8, x8, #0x7f0                           ; @"starPlaceholder3"
  1000d87f4  str     x8, [sp, #0x40]
  1000d87f8  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  1000d87fc  mov     w2, #8
  1000d8800  mov     x1, x24
  1000d8804  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  1000d8808  bl      _objc_retain
  1000d880c  mov     x28, x0
  1000d8810  str     x28, [sp, #0x80]
  1000d8814  adrp    x8, #0x10041d000
  1000d8818  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000d881c  adrp    x8, #0x100416000
  1000d8820  nop
  1000d8824  ldr     x1, [x8, #0xcd0]
  1000d8828  add     x2, sp, #0x48
  1000d882c  add     x3, sp, #8
  1000d8830  mov     w4, #8
  1000d8834  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x48] forKeys:&sp[0x8] count:8]
  1000d8838  mov     x29, x29
  1000d883c  bl      _objc_retainAutoreleasedReturnValue
  1000d8840  mov     x24, x0
  1000d8844  mov     x0, x28
  1000d8848  bl      _objc_release
  1000d884c  mov     x0, x27
  1000d8850  bl      _objc_release
  1000d8854  mov     x0, x26
  1000d8858  bl      _objc_release
  1000d885c  mov     x0, x25
  1000d8860  bl      _objc_release
  1000d8864  mov     x0, x23
  1000d8868  bl      _objc_release
  1000d886c  mov     x0, x22
  1000d8870  bl      _objc_release
  1000d8874  mov     x0, x20
  1000d8878  bl      _objc_release
  1000d887c  ldr     x0, [sp]
  1000d8880  bl      _objc_release
  1000d8884  adrp    x8, #0x100416000
  1000d8888  nop
  1000d888c  ldr     x1, [x8, #0xbf0]
  1000d8890  adrp    x2, #0x1003c2000
  1000d8894  add     x2, x2, #0x810                           ; @"ADChallengeOverviewViewController"
  1000d8898  mov     x0, x19
  1000d889c  mov     x3, x24
  1000d88a0  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADChallengeOverviewViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x48] forKeys:&sp[0x8] count:8]]
  1000d88a4  mov     x0, x24
  1000d88a8  bl      _objc_release
  1000d88ac  ldur    x8, [x29, #-0x58]
  1000d88b0  sub     x8, x21, x8
  1000d88b4  cbnz    x8, loc_1000d88d8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d88b8  sub     sp, x29, #0x50
  1000d88bc  ldp     x29, x30, [sp, #0x50]
  1000d88c0  ldp     x20, x19, [sp, #0x40]
  1000d88c4  ldp     x22, x21, [sp, #0x30]
  1000d88c8  ldp     x24, x23, [sp, #0x20]
  1000d88cc  ldp     x26, x25, [sp, #0x10]
  1000d88d0  ldp     x28, x27, [sp], #0x60
  1000d88d4  ret
loc_1000d88d8:
  1000d88d8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000d88dc  mov     x21, x0
  1000d88e0  b       loc_1000d8950
  1000d88e4  mov     x21, x0
  1000d88e8  b       loc_1000d8948
  1000d88ec  mov     x21, x0
  1000d88f0  b       loc_1000d8940
  1000d88f4  mov     x21, x0
  1000d88f8  b       loc_1000d8938
  1000d88fc  mov     x21, x0
  1000d8900  b       loc_1000d8930
  1000d8904  mov     x21, x0
  1000d8908  b       loc_1000d8928
  1000d890c  mov     x21, x0
  1000d8910  b       loc_1000d8920
  1000d8914  mov     x21, x0
  1000d8918  mov     x0, x28
  1000d891c  bl      _objc_release
loc_1000d8920:
  1000d8920  mov     x0, x27
  1000d8924  bl      _objc_release
loc_1000d8928:
  1000d8928  mov     x0, x26
  1000d892c  bl      _objc_release
loc_1000d8930:
  1000d8930  mov     x0, x25
  1000d8934  bl      _objc_release
loc_1000d8938:
  1000d8938  mov     x0, x23
  1000d893c  bl      _objc_release
loc_1000d8940:
  1000d8940  mov     x0, x22
  1000d8944  bl      _objc_release
loc_1000d8948:
  1000d8948  mov     x0, x20
  1000d894c  bl      _objc_release
loc_1000d8950:
  1000d8950  ldr     x0, [sp]
loc_1000d8954:
  1000d8954  bl      _objc_release
  1000d8958  mov     x0, x21
  1000d895c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d8960  mov     x21, x0
  1000d8964  mov     x0, x24
  1000d8968  b       loc_1000d8954

; ======================================================================
; -[ADChallengeOverviewViewController loadEquipment]
; address 0x1000d896c  size 476  kind objc
; ======================================================================
  1000d896c  stp     x24, x23, [sp, #-0x40]!
  1000d8970  stp     x22, x21, [sp, #0x10]
  1000d8974  stp     x20, x19, [sp, #0x20]
  1000d8978  stp     x29, x30, [sp, #0x30]
  1000d897c  add     x29, sp, #0x30
  1000d8980  mov     x19, x0
  1000d8984  adrp    x8, #0x10041e000
  1000d8988  ldr     x0, [x8, #0x458]                         ; class ADInventoryViewController
  1000d898c  adrp    x8, #0x100416000
  1000d8990  nop
  1000d8994  ldr     x1, [x8, #0xac8]
  1000d8998  bl      _objc_msgSend                            ; [ADInventoryViewController alloc]
  1000d899c  mov     x21, x0
  1000d89a0  adrp    x8, #0x100417000
  1000d89a4  nop
  1000d89a8  ldr     x1, [x8, #0x150]
  1000d89ac  mov     x0, x19
  1000d89b0  bl      _objc_msgSend                            ; [self challengeDict]
  1000d89b4  mov     x29, x29
  1000d89b8  bl      _objc_retainAutoreleasedReturnValue
  1000d89bc  mov     x20, x0
  1000d89c0  adrp    x8, #0x100417000
  1000d89c4  nop
  1000d89c8  ldr     x1, [x8, #0x40]
  1000d89cc  adrp    x2, #0x1003b9000
  1000d89d0  add     x2, x2, #0xf70                           ; @"weapons"
  1000d89d4  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"weapons"]
  1000d89d8  mov     x29, x29
  1000d89dc  bl      _objc_retainAutoreleasedReturnValue
  1000d89e0  mov     x22, x0
  1000d89e4  adrp    x8, #0x10041a000
  1000d89e8  nop
  1000d89ec  ldr     x1, [x8, #0xed0]
  1000d89f0  mov     x0, x21
  1000d89f4  mov     x2, x22
  1000d89f8  bl      _objc_msgSend                            ; [[ADInventoryViewController alloc] initWithChallengeArray:[[self challengeDict] objectForKey:@"weapons"]]
  1000d89fc  adrp    x8, #0x100420000
  1000d8a00  ldrsw   x23, [x8, #0x4b8]                        ; ivar offset ADChallengeOverviewViewController.equipement (+0x148)
  1000d8a04  ldr     x8, [x19, x23]                           ; x8 = self->equipement
  1000d8a08  str     x0, [x19, x23]                           ; self->equipement = [[ADInventoryViewController alloc] initWithChallengeArray:[[self challengeDict] objectForKey:@"weapons"]]
  1000d8a0c  mov     x0, x8
  1000d8a10  bl      _objc_release
  1000d8a14  mov     x0, x22
  1000d8a18  bl      _objc_release
  1000d8a1c  mov     x0, x20
  1000d8a20  bl      _objc_release
  1000d8a24  adrp    x8, #0x100416000
  1000d8a28  nop
  1000d8a2c  ldr     x21, [x8, #0xf18]
  1000d8a30  mov     x0, x19
  1000d8a34  mov     x1, x21
  1000d8a38  bl      _objc_msgSend                            ; [self view]
  1000d8a3c  mov     x29, x29
  1000d8a40  bl      _objc_retainAutoreleasedReturnValue
  1000d8a44  mov     x20, x0
  1000d8a48  ldr     x0, [x19, x23]                           ; x0 = self->equipement
  1000d8a4c  mov     x1, x21
  1000d8a50  bl      _objc_msgSend                            ; [self->equipement view]
  1000d8a54  mov     x29, x29
  1000d8a58  bl      _objc_retainAutoreleasedReturnValue
  1000d8a5c  mov     x22, x0
  1000d8a60  adrp    x8, #0x100416000
  1000d8a64  nop
  1000d8a68  ldr     x1, [x8, #0xf20]
  1000d8a6c  mov     x0, x20
  1000d8a70  mov     x2, x22
  1000d8a74  bl      _objc_msgSend                            ; [[self view] addSubview:[self->equipement view]]
  1000d8a78  mov     x0, x22
  1000d8a7c  bl      _objc_release
  1000d8a80  mov     x0, x20
  1000d8a84  bl      _objc_release
  1000d8a88  ldr     x0, [x19, x23]                           ; x0 = self->equipement
  1000d8a8c  mov     x1, x21
  1000d8a90  bl      _objc_msgSend                            ; [self->equipement view]
  1000d8a94  mov     x29, x29
  1000d8a98  bl      _objc_retainAutoreleasedReturnValue
  1000d8a9c  mov     x20, x0
  1000d8aa0  adrp    x8, #0x10041a000
  1000d8aa4  nop
  1000d8aa8  ldr     x1, [x8, #0xed8]
  1000d8aac  mov     x0, x19
  1000d8ab0  bl      _objc_msgSend                            ; [self challengeEquipement]
  1000d8ab4  mov     x29, x29
  1000d8ab8  bl      _objc_retainAutoreleasedReturnValue
  1000d8abc  mov     x21, x0
  1000d8ac0  adrp    x8, #0x100417000
  1000d8ac4  nop
  1000d8ac8  ldr     x1, [x8, #0x688]
  1000d8acc  bl      _objc_msgSend                            ; [[self challengeEquipement] center]
  1000d8ad0  adrp    x8, #0x100417000
  1000d8ad4  nop
  1000d8ad8  ldr     x1, [x8, #0x1f8]
  1000d8adc  mov     x0, x20
  1000d8ae0  bl      _objc_msgSend                            ; [[self->equipement view] setCenter:{[[self challengeEquipement] center].0, [[self challengeEquipement] center].1}]
  1000d8ae4  mov     x0, x21
  1000d8ae8  bl      _objc_release
  1000d8aec  mov     x0, x20
  1000d8af0  ldp     x29, x30, [sp, #0x30]
  1000d8af4  ldp     x20, x19, [sp, #0x20]
  1000d8af8  ldp     x22, x21, [sp, #0x10]
  1000d8afc  ldp     x24, x23, [sp], #0x40
  1000d8b00  b       _objc_release
  1000d8b04  mov     x19, x0
  1000d8b08  mov     x0, x21
  1000d8b0c  b       loc_1000d8b2c
  1000d8b10  mov     x19, x0
  1000d8b14  b       loc_1000d8b38
  1000d8b18  b       loc_1000d8b24
  1000d8b1c  mov     x19, x0
  1000d8b20  b       loc_1000d8b38
loc_1000d8b24:
  1000d8b24  mov     x19, x0
  1000d8b28  mov     x0, x22
loc_1000d8b2c:
  1000d8b2c  bl      _objc_release
  1000d8b30  b       loc_1000d8b38
  1000d8b34  mov     x19, x0
loc_1000d8b38:
  1000d8b38  mov     x0, x20
  1000d8b3c  bl      _objc_release
  1000d8b40  mov     x0, x19
  1000d8b44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController playButtonPressed:]
; address 0x1000d8b48  size 256  kind objc
; ======================================================================
  1000d8b48  stp     x22, x21, [sp, #-0x30]!
  1000d8b4c  stp     x20, x19, [sp, #0x10]
  1000d8b50  stp     x29, x30, [sp, #0x20]
  1000d8b54  add     x29, sp, #0x20
  1000d8b58  mov     x20, x0
  1000d8b5c  adrp    x8, #0x100418000
  1000d8b60  nop
  1000d8b64  ldr     x1, [x8, #0xa78]
  1000d8b68  bl      _objc_msgSend                            ; [self playButtonSound]
  1000d8b6c  adrp    x8, #0x10041d000
  1000d8b70  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000d8b74  adrp    x8, #0x100416000
  1000d8b78  nop
  1000d8b7c  ldr     x1, [x8, #0xb28]
  1000d8b80  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000d8b84  mov     x29, x29
  1000d8b88  bl      _objc_retainAutoreleasedReturnValue
  1000d8b8c  mov     x19, x0
  1000d8b90  adrp    x8, #0x100416000
  1000d8b94  nop
  1000d8b98  ldr     x1, [x8, #0xc18]
  1000d8b9c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000d8ba0  mov     x29, x29
  1000d8ba4  bl      _objc_retainAutoreleasedReturnValue
  1000d8ba8  mov     x21, x0
  1000d8bac  adrp    x8, #0x100417000
  1000d8bb0  nop
  1000d8bb4  ldr     x1, [x8, #0x150]
  1000d8bb8  mov     x0, x20
  1000d8bbc  bl      _objc_msgSend                            ; [self challengeDict]
  1000d8bc0  mov     x29, x29
  1000d8bc4  bl      _objc_retainAutoreleasedReturnValue
  1000d8bc8  mov     x20, x0
  1000d8bcc  adrp    x8, #0x100418000
  1000d8bd0  nop
  1000d8bd4  ldr     x1, [x8, #0xa88]
  1000d8bd8  mov     x0, x21
  1000d8bdc  mov     x2, x20
  1000d8be0  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeWithDict:[self challengeDict]]
  1000d8be4  mov     x0, x20
  1000d8be8  bl      _objc_release
  1000d8bec  mov     x0, x21
  1000d8bf0  bl      _objc_release
  1000d8bf4  mov     x0, x19
  1000d8bf8  ldp     x29, x30, [sp, #0x20]
  1000d8bfc  ldp     x20, x19, [sp, #0x10]
  1000d8c00  ldp     x22, x21, [sp], #0x30
  1000d8c04  b       _objc_release
  1000d8c08  mov     x20, x0
  1000d8c0c  b       loc_1000d8c40
  1000d8c10  mov     x20, x0
  1000d8c14  b       loc_1000d8c38
  1000d8c18  mov     x20, x0
  1000d8c1c  b       loc_1000d8c30
  1000d8c20  mov     x1, x20
  1000d8c24  mov     x20, x0
  1000d8c28  mov     x0, x1
  1000d8c2c  bl      _objc_release
loc_1000d8c30:
  1000d8c30  mov     x0, x21
  1000d8c34  bl      _objc_release
loc_1000d8c38:
  1000d8c38  mov     x0, x19
  1000d8c3c  bl      _objc_release
loc_1000d8c40:
  1000d8c40  mov     x0, x20
  1000d8c44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController missionsButtonPressed:]
; address 0x1000d8c48  size 104  kind objc
; ======================================================================
  1000d8c48  stp     x20, x19, [sp, #-0x20]!
  1000d8c4c  stp     x29, x30, [sp, #0x10]
  1000d8c50  add     x29, sp, #0x10
  1000d8c54  adrp    x8, #0x100417000
  1000d8c58  nop
  1000d8c5c  ldr     x1, [x8, #0x7a8]
  1000d8c60  bl      _objc_msgSend                            ; [self missionTopbarViewController]
  1000d8c64  mov     x29, x29
  1000d8c68  bl      _objc_retainAutoreleasedReturnValue
  1000d8c6c  mov     x19, x0
  1000d8c70  adrp    x8, #0x100417000
  1000d8c74  nop
  1000d8c78  ldr     x1, [x8, #0x838]
  1000d8c7c  mov     x2, #0
  1000d8c80  bl      _objc_msgSend                            ; [[self missionTopbarViewController] missionButtonPressed:0]
  1000d8c84  mov     x0, x19
  1000d8c88  ldp     x29, x30, [sp, #0x10]
  1000d8c8c  ldp     x20, x19, [sp], #0x20
  1000d8c90  b       _objc_release
  1000d8c94  mov     x20, x0
  1000d8c98  b       loc_1000d8ca8
  1000d8c9c  mov     x20, x0
  1000d8ca0  mov     x0, x19
  1000d8ca4  bl      _objc_release
loc_1000d8ca8:
  1000d8ca8  mov     x0, x20
  1000d8cac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController backButtonPressed]
; address 0x1000d8cb0  size 160  kind objc
; ======================================================================
  1000d8cb0  stp     x22, x21, [sp, #-0x30]!
  1000d8cb4  stp     x20, x19, [sp, #0x10]
  1000d8cb8  stp     x29, x30, [sp, #0x20]
  1000d8cbc  add     x29, sp, #0x20
  1000d8cc0  adrp    x8, #0x10041d000
  1000d8cc4  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000d8cc8  adrp    x8, #0x100416000
  1000d8ccc  nop
  1000d8cd0  ldr     x1, [x8, #0xb28]
  1000d8cd4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000d8cd8  mov     x29, x29
  1000d8cdc  bl      _objc_retainAutoreleasedReturnValue
  1000d8ce0  mov     x19, x0
  1000d8ce4  adrp    x8, #0x100416000
  1000d8ce8  nop
  1000d8cec  ldr     x1, [x8, #0xc18]
  1000d8cf0  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000d8cf4  mov     x29, x29
  1000d8cf8  bl      _objc_retainAutoreleasedReturnValue
  1000d8cfc  mov     x20, x0
  1000d8d00  adrp    x8, #0x100417000
  1000d8d04  nop
  1000d8d08  ldr     x1, [x8, #0x148]
  1000d8d0c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToChallengeSelector]
  1000d8d10  mov     x0, x20
  1000d8d14  bl      _objc_release
  1000d8d18  mov     x0, x19
  1000d8d1c  ldp     x29, x30, [sp, #0x20]
  1000d8d20  ldp     x20, x19, [sp, #0x10]
  1000d8d24  ldp     x22, x21, [sp], #0x30
  1000d8d28  b       _objc_release
  1000d8d2c  mov     x21, x0
  1000d8d30  b       loc_1000d8d40
  1000d8d34  mov     x21, x0
  1000d8d38  mov     x0, x20
  1000d8d3c  bl      _objc_release
loc_1000d8d40:
  1000d8d40  mov     x0, x19
  1000d8d44  bl      _objc_release
  1000d8d48  mov     x0, x21
  1000d8d4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController playButtonSound]
; address 0x1000d8d50  size 252  kind objc
; ======================================================================
  1000d8d50  stp     x22, x21, [sp, #-0x30]!
  1000d8d54  stp     x20, x19, [sp, #0x10]
  1000d8d58  stp     x29, x30, [sp, #0x20]
  1000d8d5c  add     x29, sp, #0x20
  1000d8d60  adrp    x8, #0x10041d000
  1000d8d64  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000d8d68  adrp    x8, #0x100417000
  1000d8d6c  nop
  1000d8d70  ldr     x1, [x8, #0x4f0]
  1000d8d74  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000d8d78  mov     x29, x29
  1000d8d7c  bl      _objc_retainAutoreleasedReturnValue
  1000d8d80  mov     x19, x0
  1000d8d84  adrp    x8, #0x100417000
  1000d8d88  nop
  1000d8d8c  ldr     x1, [x8, #0x4f8]
  1000d8d90  adrp    x2, #0x1003ba000
  1000d8d94  add     x2, x2, #0xcb0                           ; @"buttons"
  1000d8d98  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  1000d8d9c  mov     x29, x29
  1000d8da0  bl      _objc_retainAutoreleasedReturnValue
  1000d8da4  mov     x21, x0
  1000d8da8  adrp    x8, #0x100417000
  1000d8dac  nop
  1000d8db0  ldr     x1, [x8, #0x990]
  1000d8db4  adrp    x2, #0x1003be000
  1000d8db8  add     x2, x2, #0xff0                           ; @"start_level_button"
  1000d8dbc  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_level_button"]
  1000d8dc0  mov     x29, x29
  1000d8dc4  bl      _objc_retainAutoreleasedReturnValue
  1000d8dc8  mov     x20, x0
  1000d8dcc  mov     x0, x21
  1000d8dd0  bl      _objc_release
  1000d8dd4  mov     x0, x19
  1000d8dd8  bl      _objc_release
  1000d8ddc  adrp    x8, #0x100416000
  1000d8de0  nop
  1000d8de4  ldr     x1, [x8, #0xcb0]
  1000d8de8  fmov    s0, #3.00000000
  1000d8dec  mov     x0, x20
  1000d8df0  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_level_button"] setGain:3]
  1000d8df4  adrp    x8, #0x100417000
  1000d8df8  nop
  1000d8dfc  ldr     x1, [x8, #0x600]
  1000d8e00  mov     x0, x20
  1000d8e04  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"start_level_button"] play]
  1000d8e08  mov     x0, x20
  1000d8e0c  ldp     x29, x30, [sp, #0x20]
  1000d8e10  ldp     x20, x19, [sp, #0x10]
  1000d8e14  ldp     x22, x21, [sp], #0x30
  1000d8e18  b       _objc_release
  1000d8e1c  mov     x22, x0
  1000d8e20  mov     x0, x20
  1000d8e24  b       loc_1000d8e40
  1000d8e28  mov     x22, x0
  1000d8e2c  b       loc_1000d8e3c
  1000d8e30  mov     x22, x0
  1000d8e34  mov     x0, x21
  1000d8e38  bl      _objc_release
loc_1000d8e3c:
  1000d8e3c  mov     x0, x19
loc_1000d8e40:
  1000d8e40  bl      _objc_release
  1000d8e44  mov     x0, x22
  1000d8e48  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeOverviewViewController challengeEquipement]
; address 0x1000d8e4c  size 16  kind objc
; ======================================================================
  1000d8e4c  adrp    x8, #0x100420000
  1000d8e50  ldrsw   x8, [x8, #0x4bc]                         ; ivar offset ADChallengeOverviewViewController._challengeEquipement (+0x150)
  1000d8e54  ldr     x0, [x0, x8]                             ; x0 = self->_challengeEquipement
  1000d8e58  ret

; ======================================================================
; -[ADChallengeOverviewViewController setChallengeEquipement:]
; address 0x1000d8e5c  size 56  kind objc
; ======================================================================
  1000d8e5c  stp     x20, x19, [sp, #-0x20]!
  1000d8e60  stp     x29, x30, [sp, #0x10]
  1000d8e64  add     x29, sp, #0x10
  1000d8e68  mov     x19, x0
  1000d8e6c  adrp    x8, #0x100420000
  1000d8e70  ldrsw   x20, [x8, #0x4bc]                        ; ivar offset ADChallengeOverviewViewController._challengeEquipement (+0x150)
  1000d8e74  mov     x0, x2
  1000d8e78  bl      _objc_retain
  1000d8e7c  ldr     x8, [x19, x20]                           ; x8 = self->_challengeEquipement
  1000d8e80  str     x0, [x19, x20]                           ; self->_challengeEquipement = arg1
  1000d8e84  mov     x0, x8
  1000d8e88  ldp     x29, x30, [sp, #0x10]
  1000d8e8c  ldp     x20, x19, [sp], #0x20
  1000d8e90  b       _objc_release

; ======================================================================
; -[ADChallengeOverviewViewController challengeObjective]
; address 0x1000d8e94  size 32  kind objc
; ======================================================================
  1000d8e94  stp     x29, x30, [sp, #-0x10]!
  1000d8e98  mov     x29, sp
  1000d8e9c  adrp    x8, #0x100420000
  1000d8ea0  ldrsw   x8, [x8, #0x4c0]                         ; ivar offset ADChallengeOverviewViewController._challengeObjective (+0x158)
  1000d8ea4  add     x0, x0, x8
  1000d8ea8  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000d8eac  ldp     x29, x30, [sp], #0x10
  1000d8eb0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADChallengeOverviewViewController setChallengeObjective:]
; address 0x1000d8eb4  size 20  kind objc
; ======================================================================
  1000d8eb4  adrp    x8, #0x100420000
  1000d8eb8  ldrsw   x8, [x8, #0x4c0]                         ; ivar offset ADChallengeOverviewViewController._challengeObjective (+0x158)
  1000d8ebc  add     x0, x0, x8
  1000d8ec0  mov     x1, x2
  1000d8ec4  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADChallengeOverviewViewController .cxx_destruct]
; address 0x1000d8ec8  size 100  kind objc
; ======================================================================
  1000d8ec8  stp     x20, x19, [sp, #-0x20]!
  1000d8ecc  stp     x29, x30, [sp, #0x10]
  1000d8ed0  add     x29, sp, #0x10
  1000d8ed4  mov     x19, x0
  1000d8ed8  adrp    x8, #0x100420000
  1000d8edc  ldrsw   x8, [x8, #0x4c0]                         ; ivar offset ADChallengeOverviewViewController._challengeObjective (+0x158)
  1000d8ee0  add     x0, x19, x8
  1000d8ee4  bl      _objc_destroyWeak
  1000d8ee8  adrp    x8, #0x100420000
  1000d8eec  ldrsw   x8, [x8, #0x4bc]                         ; ivar offset ADChallengeOverviewViewController._challengeEquipement (+0x150)
  1000d8ef0  add     x0, x19, x8
  1000d8ef4  mov     x1, #0
  1000d8ef8  bl      _objc_storeStrong
  1000d8efc  adrp    x8, #0x100420000
  1000d8f00  ldrsw   x8, [x8, #0x4b8]                         ; ivar offset ADChallengeOverviewViewController.equipement (+0x148)
  1000d8f04  add     x0, x19, x8
  1000d8f08  mov     x1, #0
  1000d8f0c  bl      _objc_storeStrong
  1000d8f10  mov     x1, #0
  1000d8f14  adrp    x8, #0x100420000
  1000d8f18  ldrsw   x8, [x8, #0x4c4]                         ; ivar offset ADChallengeOverviewViewController.stars (+0x140)
  1000d8f1c  add     x0, x19, x8
  1000d8f20  ldp     x29, x30, [sp, #0x10]
  1000d8f24  ldp     x20, x19, [sp], #0x20
  1000d8f28  b       _objc_storeStrong
