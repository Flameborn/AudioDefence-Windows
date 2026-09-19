// unit ADChallengeViewController — 19 functions
//   0x1000770bc     180  -[ADChallengeViewController initWithDictionary:]
//   0x100077170     684  -[ADChallengeViewController viewDidLoad]
//   0x10007741c    2512  -[ADChallengeViewController initStarUnlockArea]
//   0x100077dec     624  -[ADChallengeViewController dealloc]
//   0x10007805c      16  -[ADChallengeViewController challengeIcon]
//   0x10007806c      56  -[ADChallengeViewController setChallengeIcon:]
//   0x1000780a4      16  -[ADChallengeViewController challengeDict]
//   0x1000780b4      56  -[ADChallengeViewController setChallengeDict:]
//   0x1000780ec      16  -[ADChallengeViewController starUnlockArea]
//   0x1000780fc      56  -[ADChallengeViewController setStarUnlockArea:]
//   0x100078134      16  -[ADChallengeViewController missionStar]
//   0x100078144      56  -[ADChallengeViewController setMissionStar:]
//   0x10007817c      16  -[ADChallengeViewController accuracyStar]
//   0x10007818c      56  -[ADChallengeViewController setAccuracyStar:]
//   0x1000781c4      16  -[ADChallengeViewController timeStar]
//   0x1000781d4      56  -[ADChallengeViewController setTimeStar:]
//   0x10007820c      16  -[ADChallengeViewController coinsReward]
//   0x10007821c      56  -[ADChallengeViewController setCoinsReward:]
//   0x100078254     184  -[ADChallengeViewController .cxx_destruct]

; ======================================================================
; -[ADChallengeViewController initWithDictionary:]
; address 0x1000770bc  size 180  kind objc
; ======================================================================
  1000770bc  stp     x22, x21, [sp, #-0x30]!
  1000770c0  stp     x20, x19, [sp, #0x10]
  1000770c4  stp     x29, x30, [sp, #0x20]
  1000770c8  add     x29, sp, #0x20
  1000770cc  sub     sp, sp, #0x10
  1000770d0  mov     x20, x0
  1000770d4  mov     x0, x2
  1000770d8  bl      _objc_retain
  1000770dc  mov     x19, x0
  1000770e0  str     x20, [sp]
  1000770e4  adrp    x8, #0x10041e000
  1000770e8  ldr     x8, [x8, #0xdf8]
  1000770ec  str     x8, [sp, #8]
  1000770f0  adrp    x8, #0x100416000
  1000770f4  nop
  1000770f8  ldr     x1, [x8, #0xb40]
  1000770fc  mov     x20, #0
  100077100  mov     x0, sp
  100077104  mov     x2, #0
  100077108  mov     x3, #0
  10007710c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  100077110  mov     x21, x0
  100077114  cbz     x21, loc_100077134                       ; if (self == 0)
  100077118  mov     x20, x21
  10007711c  adrp    x8, #0x100417000
  100077120  nop
  100077124  ldr     x1, [x8, #0x140]
  100077128  mov     x0, x21
  10007712c  mov     x2, x19
  100077130  bl      _objc_msgSend                            ; [self setChallengeDict:arg1]
loc_100077134:
  100077134  mov     x0, x19
  100077138  bl      _objc_release
  10007713c  mov     x0, x21
  100077140  sub     sp, x29, #0x20
  100077144  ldp     x29, x30, [sp, #0x20]
  100077148  ldp     x20, x19, [sp, #0x10]
  10007714c  ldp     x22, x21, [sp], #0x30
  100077150  ret
  100077154  mov     x21, x0
  100077158  mov     x0, x19
  10007715c  bl      _objc_release
  100077160  mov     x0, x20
  100077164  bl      _objc_release
  100077168  mov     x0, x21
  10007716c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeViewController viewDidLoad]
; address 0x100077170  size 684  kind objc
; ======================================================================
  100077170  stp     x24, x23, [sp, #-0x40]!
  100077174  stp     x22, x21, [sp, #0x10]
  100077178  stp     x20, x19, [sp, #0x20]
  10007717c  stp     x29, x30, [sp, #0x30]
  100077180  add     x29, sp, #0x30
  100077184  sub     sp, sp, #0x10
  100077188  mov     x19, x0
  10007718c  str     x19, [sp]
  100077190  adrp    x8, #0x10041e000
  100077194  ldr     x8, [x8, #0xdf8]
  100077198  str     x8, [sp, #8]
  10007719c  adrp    x8, #0x100416000
  1000771a0  nop
  1000771a4  ldr     x1, [x8, #0xb48]
  1000771a8  mov     x0, sp
  1000771ac  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000771b0  adrp    x8, #0x100418000
  1000771b4  nop
  1000771b8  ldr     x1, [x8, #0x848]
  1000771bc  mov     x0, x19
  1000771c0  bl      _objc_msgSend                            ; [self challengeTitle]
  1000771c4  mov     x29, x29
  1000771c8  bl      _objc_retainAutoreleasedReturnValue
  1000771cc  mov     x20, x0
  1000771d0  adrp    x8, #0x100417000
  1000771d4  nop
  1000771d8  ldr     x21, [x8, #0x150]
  1000771dc  mov     x0, x19
  1000771e0  mov     x1, x21
  1000771e4  bl      _objc_msgSend                            ; [self challengeDict]
  1000771e8  mov     x29, x29
  1000771ec  bl      _objc_retainAutoreleasedReturnValue
  1000771f0  mov     x23, x0
  1000771f4  adrp    x8, #0x100417000
  1000771f8  nop
  1000771fc  ldr     x22, [x8, #0x40]
  100077200  adrp    x2, #0x1003bc000
  100077204  add     x2, x2, #0x950                           ; @"title"
  100077208  mov     x1, x22
  10007720c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"title"]
  100077210  mov     x29, x29
  100077214  bl      _objc_retainAutoreleasedReturnValue
  100077218  mov     x24, x0
  10007721c  adrp    x8, #0x100416000
  100077220  nop
  100077224  ldr     x1, [x8, #0xb68]
  100077228  mov     x0, x20
  10007722c  mov     x2, x24
  100077230  bl      _objc_msgSend                            ; [[self challengeTitle] setText:[[self challengeDict] objectForKey:@"title"]]
  100077234  mov     x0, x24
  100077238  bl      _objc_release
  10007723c  mov     x0, x23
  100077240  bl      _objc_release
  100077244  mov     x0, x20
  100077248  bl      _objc_release
  10007724c  adrp    x8, #0x100419000
  100077250  nop
  100077254  ldr     x1, [x8, #0x948]
  100077258  mov     x0, x19
  10007725c  bl      _objc_msgSend                            ; [self challengeIcon]
  100077260  mov     x29, x29
  100077264  bl      _objc_retainAutoreleasedReturnValue
  100077268  mov     x20, x0
  10007726c  adrp    x8, #0x10041d000
  100077270  ldr     x23, [x8, #0xf10]                        ; class UIImage
  100077274  mov     x0, x19
  100077278  mov     x1, x21
  10007727c  bl      _objc_msgSend                            ; [self challengeDict]
  100077280  mov     x29, x29
  100077284  bl      _objc_retainAutoreleasedReturnValue
  100077288  mov     x21, x0
  10007728c  adrp    x2, #0x1003ba000
  100077290  add     x2, x2, #0xb10                           ; @"icon"
  100077294  mov     x1, x22
  100077298  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"icon"]
  10007729c  mov     x29, x29
  1000772a0  bl      _objc_retainAutoreleasedReturnValue
  1000772a4  mov     x22, x0
  1000772a8  adrp    x8, #0x100416000
  1000772ac  nop
  1000772b0  ldr     x1, [x8, #0xd40]
  1000772b4  mov     x0, x23
  1000772b8  mov     x2, x22
  1000772bc  bl      _objc_msgSend                            ; [UIImage imageNamed:[[self challengeDict] objectForKey:@"icon"]]
  1000772c0  mov     x29, x29
  1000772c4  bl      _objc_retainAutoreleasedReturnValue
  1000772c8  mov     x23, x0
  1000772cc  adrp    x8, #0x100416000
  1000772d0  nop
  1000772d4  ldr     x1, [x8, #0xef0]
  1000772d8  mov     x0, x20
  1000772dc  mov     x2, x23
  1000772e0  bl      _objc_msgSend                            ; [[self challengeIcon] setImage:[UIImage imageNamed:[[self challengeDict] objectForKey:@"icon"]]]
  1000772e4  mov     x0, x23
  1000772e8  bl      _objc_release
  1000772ec  mov     x0, x22
  1000772f0  bl      _objc_release
  1000772f4  mov     x0, x21
  1000772f8  bl      _objc_release
  1000772fc  mov     x0, x20
  100077300  bl      _objc_release
  100077304  adrp    x8, #0x100419000
  100077308  nop
  10007730c  ldr     x1, [x8, #0x950]
  100077310  mov     x0, x19
  100077314  bl      _objc_msgSend                            ; [self initStarUnlockArea]
  100077318  adrp    x8, #0x100417000
  10007731c  nop
  100077320  ldr     x20, [x8, #0x2a8]
  100077324  mov     x0, x19
  100077328  mov     x1, x20
  10007732c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100077330  mov     x29, x29
  100077334  bl      _objc_retainAutoreleasedReturnValue
  100077338  mov     x21, x0
  10007733c  adrp    x8, #0x100418000
  100077340  nop
  100077344  ldr     x1, [x8, #0x390]
  100077348  mov     w2, #0
  10007734c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryLoadoutEnabled:0]
  100077350  mov     x0, x21
  100077354  bl      _objc_release
  100077358  mov     x0, x19
  10007735c  mov     x1, x20
  100077360  bl      _objc_msgSend                            ; [self statusBarViewController]
  100077364  mov     x29, x29
  100077368  bl      _objc_retainAutoreleasedReturnValue
  10007736c  mov     x20, x0
  100077370  adrp    x8, #0x100417000
  100077374  nop
  100077378  ldr     x1, [x8, #0x7d8]
  10007737c  mov     x2, x19
  100077380  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  100077384  mov     x0, x20
  100077388  bl      _objc_release
  10007738c  sub     sp, x29, #0x30
  100077390  ldp     x29, x30, [sp, #0x30]
  100077394  ldp     x20, x19, [sp, #0x20]
  100077398  ldp     x22, x21, [sp, #0x10]
  10007739c  ldp     x24, x23, [sp], #0x40
  1000773a0  ret
  1000773a4  b       loc_100077408
  1000773a8  mov     x19, x0
  1000773ac  b       loc_1000773bc
  1000773b0  mov     x19, x0
  1000773b4  mov     x0, x24
  1000773b8  bl      _objc_release
loc_1000773bc:
  1000773bc  mov     x0, x23
  1000773c0  bl      _objc_release
  1000773c4  b       loc_10007740c
  1000773c8  b       loc_100077408
  1000773cc  mov     x19, x0
  1000773d0  b       loc_1000773f0
  1000773d4  mov     x19, x0
  1000773d8  b       loc_1000773e8
  1000773dc  mov     x19, x0
  1000773e0  mov     x0, x23
  1000773e4  bl      _objc_release
loc_1000773e8:
  1000773e8  mov     x0, x22
  1000773ec  bl      _objc_release
loc_1000773f0:
  1000773f0  mov     x0, x21
  1000773f4  bl      _objc_release
  1000773f8  b       loc_10007740c
  1000773fc  mov     x19, x0
  100077400  mov     x0, x21
  100077404  b       loc_100077410
loc_100077408:
  100077408  mov     x19, x0
loc_10007740c:
  10007740c  mov     x0, x20
loc_100077410:
  100077410  bl      _objc_release
  100077414  mov     x0, x19
  100077418  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeViewController initStarUnlockArea]
; address 0x10007741c  size 2512  kind objc
; ======================================================================
  10007741c  stp     x28, x27, [sp, #-0x60]!
  100077420  stp     x26, x25, [sp, #0x10]
  100077424  stp     x24, x23, [sp, #0x20]
  100077428  stp     x22, x21, [sp, #0x30]
  10007742c  stp     x20, x19, [sp, #0x40]
  100077430  stp     x29, x30, [sp, #0x50]
  100077434  add     x29, sp, #0x50
  100077438  sub     sp, sp, #0x40
  10007743c  mov     x19, x0
  100077440  adrp    x8, #0x10041e000
  100077444  ldr     x0, [x8, #0x2a0]                         ; class ADChallengeCompletedViewController
  100077448  adrp    x8, #0x100417000
  10007744c  nop
  100077450  ldr     x1, [x8, #0x2e0]
  100077454  bl      _objc_msgSend                            ; [ADChallengeCompletedViewController class]
  100077458  mov     x2, x0
  10007745c  adrp    x8, #0x100417000
  100077460  nop
  100077464  ldr     x1, [x8, #0x3b8]
  100077468  mov     x0, x19
  10007746c  bl      _objc_msgSend                            ; [self isKindOfClass:[ADChallengeCompletedViewController class]]
  100077470  mov     x28, x0
  100077474  adrp    x8, #0x10041e000
  100077478  ldr     x0, [x8, #0x2a8]                         ; class ADStarUnlockViewController
  10007747c  adrp    x8, #0x100416000
  100077480  nop
  100077484  ldr     x27, [x8, #0xac8]
  100077488  mov     x1, x27
  10007748c  bl      _objc_msgSend                            ; [ADStarUnlockViewController alloc]
  100077490  mov     x23, x0
  100077494  adrp    x8, #0x100417000
  100077498  nop
  10007749c  ldr     x26, [x8, #0x150]
  1000774a0  mov     x0, x19
  1000774a4  mov     x1, x26
  1000774a8  bl      _objc_msgSend                            ; [self challengeDict]
  1000774ac  mov     x29, x29
  1000774b0  bl      _objc_retainAutoreleasedReturnValue
  1000774b4  mov     x20, x0
  1000774b8  adrp    x8, #0x100417000
  1000774bc  nop
  1000774c0  ldr     x25, [x8, #0x40]
  1000774c4  adrp    x2, #0x1003bc000
  1000774c8  add     x2, x2, #0xab0                           ; @"mission_star"
  1000774cc  mov     x1, x25
  1000774d0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"mission_star"]
  1000774d4  mov     x29, x29
  1000774d8  bl      _objc_retainAutoreleasedReturnValue
  1000774dc  mov     x22, x0
  1000774e0  mov     x0, x19
  1000774e4  mov     x1, x26
  1000774e8  bl      _objc_msgSend                            ; [self challengeDict]
  1000774ec  mov     x29, x29
  1000774f0  bl      _objc_retainAutoreleasedReturnValue
  1000774f4  mov     x21, x0
  1000774f8  adrp    x2, #0x1003b9000
  1000774fc  add     x2, x2, #0xef0                           ; @"challenge_id"
  100077500  mov     x1, x25
  100077504  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100077508  mov     x29, x29
  10007750c  bl      _objc_retainAutoreleasedReturnValue
  100077510  mov     x24, x0
  100077514  adrp    x8, #0x100419000
  100077518  nop
  10007751c  ldr     x1, [x8, #0x958]
  100077520  str     x1, [sp, #0x38]
  100077524  mov     w2, #1
  100077528  mov     x0, x23
  10007752c  mov     x3, x22
  100077530  mov     x4, x24
  100077534  mov     x5, x28
  100077538  bl      _objc_msgSend                            ; [[ADStarUnlockViewController alloc] initWithtype:1 dictionary:[[self challengeDict] objectForKey:@"mission_star"] challenge_id:[[self challengeDict] objectForKey:@"challenge_id"] orientation:[self isKindOfClass:[ADChallengeCompletedViewController class]]]
  10007753c  mov     x23, x0
  100077540  adrp    x8, #0x100419000
  100077544  nop
  100077548  ldr     x1, [x8, #0x960]
  10007754c  mov     x0, x19
  100077550  mov     x2, x23
  100077554  bl      _objc_msgSend                            ; [self setMissionStar:[[ADStarUnlockViewController alloc] initWithtype:1 dictionary:[[self challengeDict] objectForKey:@"mission_star"] challenge_id:[[self challengeDict] objectForKey:@"challenge_id"] orientation:[self isKindOfClass:[ADChallengeCompletedViewController class]]]]
  100077558  mov     x0, x23
  10007755c  bl      _objc_release
  100077560  mov     x0, x24
  100077564  bl      _objc_release
  100077568  mov     x0, x21
  10007756c  bl      _objc_release
  100077570  mov     x0, x22
  100077574  bl      _objc_release
  100077578  mov     x0, x20
  10007757c  bl      _objc_release
  100077580  adrp    x8, #0x100419000
  100077584  nop
  100077588  ldr     x1, [x8, #0x968]
  10007758c  str     x1, [sp, #0x30]
  100077590  mov     x0, x19
  100077594  bl      _objc_msgSend                            ; [self starUnlockArea]
  100077598  mov     x29, x29
  10007759c  bl      _objc_retainAutoreleasedReturnValue
  1000775a0  mov     x21, x0
  1000775a4  adrp    x8, #0x100418000
  1000775a8  nop
  1000775ac  ldr     x1, [x8, #0xa60]
  1000775b0  str     x1, [sp, #0x18]
  1000775b4  mov     x0, x19
  1000775b8  bl      _objc_msgSend                            ; [self missionStar]
  1000775bc  mov     x29, x29
  1000775c0  bl      _objc_retainAutoreleasedReturnValue
  1000775c4  mov     x20, x0
  1000775c8  adrp    x8, #0x100416000
  1000775cc  nop
  1000775d0  ldr     x1, [x8, #0xf18]
  1000775d4  str     x1, [sp, #0x28]
  1000775d8  bl      _objc_msgSend                            ; [[self missionStar] view]
  1000775dc  mov     x29, x29
  1000775e0  bl      _objc_retainAutoreleasedReturnValue
  1000775e4  mov     x23, x0
  1000775e8  adrp    x8, #0x100416000
  1000775ec  nop
  1000775f0  ldr     x1, [x8, #0xf20]
  1000775f4  str     x1, [sp, #0x20]
  1000775f8  mov     x0, x21
  1000775fc  mov     x2, x23
  100077600  bl      _objc_msgSend                            ; [[self starUnlockArea] addSubview:[[self missionStar] view]]
  100077604  mov     x0, x23
  100077608  bl      _objc_release
  10007760c  mov     x0, x20
  100077610  bl      _objc_release
  100077614  mov     x0, x21
  100077618  bl      _objc_release
  10007761c  adrp    x8, #0x10041e000
  100077620  ldr     x0, [x8, #0x2a8]                         ; class ADStarUnlockViewController
  100077624  mov     x1, x27
  100077628  bl      _objc_msgSend                            ; [ADStarUnlockViewController alloc]
  10007762c  mov     x20, x0
  100077630  mov     x0, x19
  100077634  mov     x1, x26
  100077638  bl      _objc_msgSend                            ; [self challengeDict]
  10007763c  mov     x29, x29
  100077640  bl      _objc_retainAutoreleasedReturnValue
  100077644  mov     x24, x0
  100077648  adrp    x2, #0x1003bc000
  10007764c  add     x2, x2, #0xb90                           ; @"time_limit_star"
  100077650  mov     x1, x25
  100077654  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  100077658  mov     x22, x28
  10007765c  mov     x29, x29
  100077660  bl      _objc_retainAutoreleasedReturnValue
  100077664  mov     x23, x0
  100077668  mov     x0, x19
  10007766c  mov     x1, x26
  100077670  bl      _objc_msgSend                            ; [self challengeDict]
  100077674  mov     x28, x27
  100077678  mov     x29, x29
  10007767c  bl      _objc_retainAutoreleasedReturnValue
  100077680  mov     x21, x0
  100077684  adrp    x2, #0x1003b9000
  100077688  add     x2, x2, #0xef0                           ; @"challenge_id"
  10007768c  mov     x1, x25
  100077690  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  100077694  mov     x29, x29
  100077698  bl      _objc_retainAutoreleasedReturnValue
  10007769c  mov     x27, x0
  1000776a0  mov     w2, #2
  1000776a4  mov     x0, x20
  1000776a8  ldr     x1, [sp, #0x38]
  1000776ac  mov     x3, x23
  1000776b0  mov     x4, x27
  1000776b4  mov     x5, x22
  1000776b8  bl      _objc_msgSend                            ; [[ADStarUnlockViewController alloc] initWithtype:2 dictionary:[[self challengeDict] objectForKey:@"time_limit_star"] challenge_id:[[self challengeDict] objectForKey:@"challenge_id"] orientation:[self isKindOfClass:[ADChallengeCompletedViewController class]]]
  1000776bc  mov     x20, x0
  1000776c0  adrp    x8, #0x100419000
  1000776c4  nop
  1000776c8  ldr     x1, [x8, #0x970]
  1000776cc  mov     x0, x19
  1000776d0  mov     x2, x20
  1000776d4  bl      _objc_msgSend                            ; [self setTimeStar:[[ADStarUnlockViewController alloc] initWithtype:2 dictionary:[[self challengeDict] objectForKey:@"time_limit_star"] challenge_id:[[self challengeDict] objectForKey:@"challenge_id"] orientation:[self isKindOfClass:[ADChallengeCompletedViewController class]]]]
  1000776d8  mov     x0, x20
  1000776dc  bl      _objc_release
  1000776e0  mov     x0, x27
  1000776e4  bl      _objc_release
  1000776e8  mov     x0, x21
  1000776ec  bl      _objc_release
  1000776f0  mov     x0, x23
  1000776f4  bl      _objc_release
  1000776f8  mov     x0, x24
  1000776fc  bl      _objc_release
  100077700  mov     x0, x19
  100077704  ldr     x1, [sp, #0x30]
  100077708  bl      _objc_msgSend                            ; [self starUnlockArea]
  10007770c  mov     x29, x29
  100077710  bl      _objc_retainAutoreleasedReturnValue
  100077714  mov     x21, x0
  100077718  adrp    x8, #0x100418000
  10007771c  nop
  100077720  ldr     x24, [x8, #0xa38]
  100077724  mov     x0, x19
  100077728  mov     x1, x24
  10007772c  bl      _objc_msgSend                            ; [self timeStar]
  100077730  mov     x29, x29
  100077734  bl      _objc_retainAutoreleasedReturnValue
  100077738  mov     x20, x0
  10007773c  ldr     x1, [sp, #0x28]
  100077740  bl      _objc_msgSend                            ; [[self timeStar] view]
  100077744  mov     x27, x28
  100077748  mov     x29, x29
  10007774c  bl      _objc_retainAutoreleasedReturnValue
  100077750  mov     x23, x0
  100077754  mov     x0, x21
  100077758  ldr     x1, [sp, #0x20]
  10007775c  mov     x2, x23
  100077760  bl      _objc_msgSend                            ; [[self starUnlockArea] addSubview:[[self timeStar] view]]
  100077764  mov     x0, x23
  100077768  bl      _objc_release
  10007776c  mov     x0, x20
  100077770  bl      _objc_release
  100077774  mov     x0, x21
  100077778  bl      _objc_release
  10007777c  adrp    x8, #0x10041e000
  100077780  ldr     x0, [x8, #0x2a8]                         ; class ADStarUnlockViewController
  100077784  mov     x1, x27
  100077788  bl      _objc_msgSend                            ; [ADStarUnlockViewController alloc]
  10007778c  mov     x20, x0
  100077790  mov     x0, x19
  100077794  mov     x1, x26
  100077798  bl      _objc_msgSend                            ; [self challengeDict]
  10007779c  mov     x29, x29
  1000777a0  bl      _objc_retainAutoreleasedReturnValue
  1000777a4  mov     x23, x0
  1000777a8  adrp    x2, #0x1003bc000
  1000777ac  add     x2, x2, #0xb30                           ; @"accuracy_star"
  1000777b0  mov     x1, x25
  1000777b4  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  1000777b8  mov     x29, x29
  1000777bc  bl      _objc_retainAutoreleasedReturnValue
  1000777c0  mov     x21, x0
  1000777c4  mov     x0, x19
  1000777c8  mov     x1, x26
  1000777cc  bl      _objc_msgSend                            ; [self challengeDict]
  1000777d0  mov     x29, x29
  1000777d4  bl      _objc_retainAutoreleasedReturnValue
  1000777d8  mov     x26, x0
  1000777dc  adrp    x2, #0x1003b9000
  1000777e0  add     x2, x2, #0xef0                           ; @"challenge_id"
  1000777e4  mov     x1, x25
  1000777e8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  1000777ec  mov     x29, x29
  1000777f0  bl      _objc_retainAutoreleasedReturnValue
  1000777f4  mov     x25, x0
  1000777f8  mov     w2, #3
  1000777fc  mov     x0, x20
  100077800  ldr     x1, [sp, #0x38]
  100077804  mov     x3, x21
  100077808  mov     x4, x25
  10007780c  mov     x5, x22
  100077810  bl      _objc_msgSend                            ; [[ADStarUnlockViewController alloc] initWithtype:3 dictionary:[[self challengeDict] objectForKey:@"accuracy_star"] challenge_id:[[self challengeDict] objectForKey:@"challenge_id"] orientation:[self isKindOfClass:[ADChallengeCompletedViewController class]]]
  100077814  mov     x20, x0
  100077818  adrp    x8, #0x100419000
  10007781c  nop
  100077820  ldr     x1, [x8, #0x978]
  100077824  mov     x0, x19
  100077828  mov     x2, x20
  10007782c  bl      _objc_msgSend                            ; [self setAccuracyStar:[[ADStarUnlockViewController alloc] initWithtype:3 dictionary:[[self challengeDict] objectForKey:@"accuracy_star"] challenge_id:[[self challengeDict] objectForKey:@"challenge_id"] orientation:[self isKindOfClass:[ADChallengeCompletedViewController class]]]]
  100077830  mov     x0, x20
  100077834  bl      _objc_release
  100077838  mov     x0, x25
  10007783c  bl      _objc_release
  100077840  mov     x0, x26
  100077844  bl      _objc_release
  100077848  mov     x0, x21
  10007784c  bl      _objc_release
  100077850  mov     x0, x23
  100077854  bl      _objc_release
  100077858  mov     x0, x19
  10007785c  ldr     x1, [sp, #0x30]
  100077860  bl      _objc_msgSend                            ; [self starUnlockArea]
  100077864  mov     x29, x29
  100077868  bl      _objc_retainAutoreleasedReturnValue
  10007786c  mov     x21, x0
  100077870  adrp    x8, #0x100418000
  100077874  nop
  100077878  ldr     x23, [x8, #0xa58]
  10007787c  mov     x0, x19
  100077880  mov     x1, x23
  100077884  bl      _objc_msgSend                            ; [self accuracyStar]
  100077888  mov     x29, x29
  10007788c  bl      _objc_retainAutoreleasedReturnValue
  100077890  mov     x20, x0
  100077894  ldr     x28, [sp, #0x28]
  100077898  mov     x1, x28
  10007789c  bl      _objc_msgSend                            ; [[self accuracyStar] view]
  1000778a0  mov     x29, x29
  1000778a4  bl      _objc_retainAutoreleasedReturnValue
  1000778a8  mov     x25, x0
  1000778ac  mov     x0, x21
  1000778b0  ldr     x1, [sp, #0x20]
  1000778b4  mov     x2, x25
  1000778b8  bl      _objc_msgSend                            ; [[self starUnlockArea] addSubview:[[self accuracyStar] view]]
  1000778bc  mov     x0, x25
  1000778c0  bl      _objc_release
  1000778c4  mov     x0, x20
  1000778c8  bl      _objc_release
  1000778cc  mov     x0, x21
  1000778d0  bl      _objc_release
  1000778d4  adrp    x8, #0x10041d000
  1000778d8  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000778dc  mov     x1, x27
  1000778e0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000778e4  mov     x22, x0
  1000778e8  mov     x0, x19
  1000778ec  ldr     x26, [sp, #0x18]
  1000778f0  mov     x1, x26
  1000778f4  bl      _objc_msgSend                            ; [self missionStar]
  1000778f8  mov     x29, x29
  1000778fc  bl      _objc_retainAutoreleasedReturnValue
  100077900  mov     x21, x0
  100077904  mov     x0, x19
  100077908  mov     x1, x23
  10007790c  bl      _objc_msgSend                            ; [self accuracyStar]
  100077910  mov     x29, x29
  100077914  bl      _objc_retainAutoreleasedReturnValue
  100077918  mov     x20, x0
  10007791c  mov     x0, x19
  100077920  mov     x1, x24
  100077924  bl      _objc_msgSend                            ; [self timeStar]
  100077928  mov     x29, x29
  10007792c  bl      _objc_retainAutoreleasedReturnValue
  100077930  mov     x25, x0
  100077934  adrp    x8, #0x100419000
  100077938  nop
  10007793c  ldr     x1, [x8, #0x2b0]
  100077940  stp     x25, xzr, [sp, #8]
  100077944  str     x20, [sp]
  100077948  mov     x0, x22
  10007794c  mov     x2, x21
  100077950  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithObjects:[self missionStar], [self accuracyStar], [self timeStar], nil]
  100077954  adrp    x8, #0x10041f000
  100077958  ldrsw   x9, [x8, #0xd7c]                         ; ivar offset ADChallengeViewController.stars (+0x140)
  10007795c  ldr     x8, [x19, x9]                            ; x8 = self->stars
  100077960  str     x0, [x19, x9]                            ; self->stars = [[NSMutableArray alloc] initWithObjects:[self missionStar], [self accuracyStar], [self timeStar], nil]
  100077964  mov     x0, x8
  100077968  bl      _objc_release
  10007796c  mov     x0, x25
  100077970  bl      _objc_release
  100077974  mov     x0, x20
  100077978  bl      _objc_release
  10007797c  mov     x0, x21
  100077980  bl      _objc_release
  100077984  mov     x0, x19
  100077988  mov     x1, x26
  10007798c  bl      _objc_msgSend                            ; [self missionStar]
  100077990  mov     x29, x29
  100077994  bl      _objc_retainAutoreleasedReturnValue
  100077998  mov     x26, x0
  10007799c  mov     x1, x28
  1000779a0  bl      _objc_msgSend                            ; [[self missionStar] view]
  1000779a4  mov     x29, x29
  1000779a8  bl      _objc_retainAutoreleasedReturnValue
  1000779ac  mov     x27, x0
  1000779b0  adrp    x8, #0x100419000
  1000779b4  nop
  1000779b8  ldr     x21, [x8, #0x980]
  1000779bc  mov     x0, x19
  1000779c0  mov     x1, x21
  1000779c4  bl      _objc_msgSend                            ; [self starPlaceholder1]
  1000779c8  mov     x29, x29
  1000779cc  bl      _objc_retainAutoreleasedReturnValue
  1000779d0  mov     x20, x0
  1000779d4  adrp    x8, #0x100416000
  1000779d8  nop
  1000779dc  ldr     x22, [x8, #0xf38]
  1000779e0  mov     x1, x22
  1000779e4  bl      _objc_msgSend                            ; [[self starPlaceholder1] frame]
  1000779e8  adrp    x8, #0x100417000
  1000779ec  nop
  1000779f0  ldr     x25, [x8, #0x7b8]
  1000779f4  mov     x0, x27
  1000779f8  mov     x1, x25
  1000779fc  bl      _objc_msgSend                            ; [[[self missionStar] view] setFrame:{[[self starPlaceholder1] frame].0, [[self starPlaceholder1] frame].1, [[self starPlaceholder1] frame].2, [[self starPlaceholder1] frame].3}]
  100077a00  mov     x0, x20
  100077a04  bl      _objc_release
  100077a08  mov     x0, x27
  100077a0c  bl      _objc_release
  100077a10  mov     x0, x26
  100077a14  bl      _objc_release
  100077a18  mov     x0, x19
  100077a1c  mov     x1, x24
  100077a20  bl      _objc_msgSend                            ; [self timeStar]
  100077a24  mov     x29, x29
  100077a28  bl      _objc_retainAutoreleasedReturnValue
  100077a2c  mov     x26, x0
  100077a30  mov     x1, x28
  100077a34  bl      _objc_msgSend                            ; [[self timeStar] view]
  100077a38  mov     x29, x29
  100077a3c  bl      _objc_retainAutoreleasedReturnValue
  100077a40  mov     x20, x0
  100077a44  adrp    x8, #0x100419000
  100077a48  nop
  100077a4c  ldr     x24, [x8, #0x988]
  100077a50  mov     x0, x19
  100077a54  mov     x1, x24
  100077a58  bl      _objc_msgSend                            ; [self starPlaceholder2]
  100077a5c  mov     x29, x29
  100077a60  bl      _objc_retainAutoreleasedReturnValue
  100077a64  mov     x27, x0
  100077a68  mov     x1, x22
  100077a6c  bl      _objc_msgSend                            ; [[self starPlaceholder2] frame]
  100077a70  mov     x0, x20
  100077a74  mov     x1, x25
  100077a78  bl      _objc_msgSend                            ; [[[self timeStar] view] setFrame:{[[self starPlaceholder2] frame].0, [[self starPlaceholder2] frame].1, [[self starPlaceholder2] frame].2, [[self starPlaceholder2] frame].3}]
  100077a7c  mov     x0, x27
  100077a80  bl      _objc_release
  100077a84  mov     x0, x20
  100077a88  bl      _objc_release
  100077a8c  mov     x0, x26
  100077a90  bl      _objc_release
  100077a94  mov     x0, x19
  100077a98  mov     x1, x23
  100077a9c  bl      _objc_msgSend                            ; [self accuracyStar]
  100077aa0  mov     x29, x29
  100077aa4  bl      _objc_retainAutoreleasedReturnValue
  100077aa8  mov     x26, x0
  100077aac  mov     x1, x28
  100077ab0  bl      _objc_msgSend                            ; [[self accuracyStar] view]
  100077ab4  mov     x29, x29
  100077ab8  bl      _objc_retainAutoreleasedReturnValue
  100077abc  mov     x20, x0
  100077ac0  adrp    x8, #0x100419000
  100077ac4  nop
  100077ac8  ldr     x23, [x8, #0x990]
  100077acc  mov     x0, x19
  100077ad0  mov     x1, x23
  100077ad4  bl      _objc_msgSend                            ; [self starPlaceholder3]
  100077ad8  mov     x29, x29
  100077adc  bl      _objc_retainAutoreleasedReturnValue
  100077ae0  mov     x27, x0
  100077ae4  mov     x1, x22
  100077ae8  bl      _objc_msgSend                            ; [[self starPlaceholder3] frame]
  100077aec  mov     x0, x20
  100077af0  mov     x1, x25
  100077af4  bl      _objc_msgSend                            ; [[[self accuracyStar] view] setFrame:{[[self starPlaceholder3] frame].0, [[self starPlaceholder3] frame].1, [[self starPlaceholder3] frame].2, [[self starPlaceholder3] frame].3}]
  100077af8  mov     x0, x27
  100077afc  bl      _objc_release
  100077b00  mov     x0, x20
  100077b04  bl      _objc_release
  100077b08  mov     x0, x26
  100077b0c  bl      _objc_release
  100077b10  mov     x0, x19
  100077b14  mov     x1, x21
  100077b18  bl      _objc_msgSend                            ; [self starPlaceholder1]
  100077b1c  mov     x29, x29
  100077b20  bl      _objc_retainAutoreleasedReturnValue
  100077b24  mov     x21, x0
  100077b28  adrp    x8, #0x100417000
  100077b2c  nop
  100077b30  ldr     x20, [x8, #0x1d0]
  100077b34  mov     x1, x20
  100077b38  bl      _objc_msgSend                            ; [[self starPlaceholder1] removeFromSuperview]
  100077b3c  mov     x0, x21
  100077b40  bl      _objc_release
  100077b44  mov     x0, x19
  100077b48  mov     x1, x24
  100077b4c  bl      _objc_msgSend                            ; [self starPlaceholder2]
  100077b50  mov     x29, x29
  100077b54  bl      _objc_retainAutoreleasedReturnValue
  100077b58  mov     x21, x0
  100077b5c  mov     x1, x20
  100077b60  bl      _objc_msgSend                            ; [[self starPlaceholder2] removeFromSuperview]
  100077b64  mov     x0, x21
  100077b68  bl      _objc_release
  100077b6c  mov     x0, x19
  100077b70  mov     x1, x23
  100077b74  bl      _objc_msgSend                            ; [self starPlaceholder3]
  100077b78  mov     x29, x29
  100077b7c  bl      _objc_retainAutoreleasedReturnValue
  100077b80  mov     x21, x0
  100077b84  mov     x1, x20
  100077b88  bl      _objc_msgSend                            ; [[self starPlaceholder3] removeFromSuperview]
  100077b8c  mov     x0, x21
  100077b90  bl      _objc_release
  100077b94  adrp    x8, #0x100419000
  100077b98  nop
  100077b9c  ldr     x1, [x8, #0x998]
  100077ba0  mov     x2, #0
  100077ba4  mov     x0, x19
  100077ba8  bl      _objc_msgSend                            ; [self setStarPlaceholder1:0]
  100077bac  adrp    x8, #0x100419000
  100077bb0  nop
  100077bb4  ldr     x1, [x8, #0x9a0]
  100077bb8  mov     x2, #0
  100077bbc  mov     x0, x19
  100077bc0  bl      _objc_msgSend                            ; [self setStarPlaceholder2:0]
  100077bc4  adrp    x8, #0x100419000
  100077bc8  nop
  100077bcc  ldr     x1, [x8, #0x9a8]
  100077bd0  mov     x2, #0
  100077bd4  mov     x0, x19
  100077bd8  bl      _objc_msgSend                            ; [self setStarPlaceholder3:0]
  100077bdc  mov     x0, x19
  100077be0  mov     x1, x28
  100077be4  bl      _objc_msgSend                            ; [self view]
  100077be8  mov     x29, x29
  100077bec  bl      _objc_retainAutoreleasedReturnValue
  100077bf0  mov     x20, x0
  100077bf4  adrp    x8, #0x100418000
  100077bf8  nop
  100077bfc  ldr     x1, [x8, #0x640]
  100077c00  bl      _objc_msgSend                            ; [[self view] layoutIfNeeded]
  100077c04  mov     x0, x20
  100077c08  sub     sp, x29, #0x50
  100077c0c  ldp     x29, x30, [sp, #0x50]
  100077c10  ldp     x20, x19, [sp, #0x40]
  100077c14  ldp     x22, x21, [sp, #0x30]
  100077c18  ldp     x24, x23, [sp, #0x20]
  100077c1c  ldp     x26, x25, [sp, #0x10]
  100077c20  ldp     x28, x27, [sp], #0x60
  100077c24  b       _objc_release
  100077c28  mov     x19, x0
  100077c2c  mov     x0, x20
  100077c30  bl      _objc_release
  100077c34  b       loc_100077d90
  100077c38  b       loc_100077c3c
loc_100077c3c:
  100077c3c  mov     x19, x0
  100077c40  mov     x0, x27
  100077c44  bl      _objc_release
  100077c48  b       loc_100077db4
  100077c4c  b       loc_100077dd8
  100077c50  mov     x19, x0
  100077c54  b       loc_100077c84
  100077c58  mov     x19, x0
  100077c5c  b       loc_100077c7c
  100077c60  mov     x19, x0
  100077c64  b       loc_100077c74
  100077c68  mov     x19, x0
  100077c6c  mov     x0, x23
  100077c70  bl      _objc_release
loc_100077c74:
  100077c74  mov     x0, x24
  100077c78  bl      _objc_release
loc_100077c7c:
  100077c7c  mov     x0, x21
  100077c80  bl      _objc_release
loc_100077c84:
  100077c84  mov     x0, x22
  100077c88  bl      _objc_release
  100077c8c  b       loc_100077ddc
  100077c90  b       loc_100077dcc
  100077c94  mov     x19, x0
  100077c98  b       loc_100077d78
  100077c9c  b       loc_100077cf8
  100077ca0  mov     x19, x0
  100077ca4  b       loc_100077ce4
  100077ca8  mov     x19, x0
  100077cac  b       loc_100077cdc
  100077cb0  mov     x19, x0
  100077cb4  b       loc_100077cd4
  100077cb8  mov     x19, x0
  100077cbc  b       loc_100077ccc
  100077cc0  mov     x19, x0
  100077cc4  mov     x0, x20
  100077cc8  bl      _objc_release
loc_100077ccc:
  100077ccc  mov     x0, x27
  100077cd0  bl      _objc_release
loc_100077cd4:
  100077cd4  mov     x0, x21
  100077cd8  bl      _objc_release
loc_100077cdc:
  100077cdc  mov     x0, x23
  100077ce0  bl      _objc_release
loc_100077ce4:
  100077ce4  mov     x0, x24
  100077ce8  b       loc_100077de0
  100077cec  b       loc_100077dcc
  100077cf0  mov     x19, x0
  100077cf4  b       loc_100077d78
loc_100077cf8:
  100077cf8  mov     x19, x0
  100077cfc  mov     x0, x23
  100077d00  b       loc_100077d74
  100077d04  mov     x19, x0
  100077d08  b       loc_100077d48
  100077d0c  mov     x19, x0
  100077d10  b       loc_100077d40
  100077d14  mov     x19, x0
  100077d18  b       loc_100077d38
  100077d1c  mov     x19, x0
  100077d20  b       loc_100077d30
  100077d24  mov     x19, x0
  100077d28  mov     x0, x20
  100077d2c  bl      _objc_release
loc_100077d30:
  100077d30  mov     x0, x25
  100077d34  bl      _objc_release
loc_100077d38:
  100077d38  mov     x0, x26
  100077d3c  bl      _objc_release
loc_100077d40:
  100077d40  mov     x0, x21
  100077d44  bl      _objc_release
loc_100077d48:
  100077d48  mov     x0, x23
  100077d4c  b       loc_100077de0
  100077d50  b       loc_100077dcc
  100077d54  mov     x19, x0
  100077d58  b       loc_100077d78
  100077d5c  b       loc_100077d6c
  100077d60  b       loc_100077dcc
  100077d64  mov     x19, x0
  100077d68  b       loc_100077d78
loc_100077d6c:
  100077d6c  mov     x19, x0
  100077d70  mov     x0, x25
loc_100077d74:
  100077d74  bl      _objc_release
loc_100077d78:
  100077d78  mov     x0, x20
  100077d7c  bl      _objc_release
  100077d80  b       loc_100077dd0
  100077d84  mov     x19, x0
  100077d88  b       loc_100077dbc
  100077d8c  mov     x19, x0
loc_100077d90:
  100077d90  mov     x0, x27
  100077d94  b       loc_100077db8
  100077d98  mov     x19, x0
  100077d9c  b       loc_100077dbc
  100077da0  mov     x19, x0
  100077da4  b       loc_100077db4
  100077da8  mov     x19, x0
  100077dac  b       loc_100077dbc
  100077db0  mov     x19, x0
loc_100077db4:
  100077db4  mov     x0, x20
loc_100077db8:
  100077db8  bl      _objc_release
loc_100077dbc:
  100077dbc  mov     x0, x26
  100077dc0  b       loc_100077de0
  100077dc4  b       loc_100077dcc
  100077dc8  b       loc_100077dcc
loc_100077dcc:
  100077dcc  mov     x19, x0
loc_100077dd0:
  100077dd0  mov     x0, x21
  100077dd4  b       loc_100077de0
loc_100077dd8:
  100077dd8  mov     x19, x0
loc_100077ddc:
  100077ddc  mov     x0, x20
loc_100077de0:
  100077de0  bl      _objc_release
  100077de4  mov     x0, x19
  100077de8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeViewController dealloc]
; address 0x100077dec  size 624  kind objc
; ======================================================================
  100077dec  stp     x28, x27, [sp, #-0x60]!
  100077df0  stp     x26, x25, [sp, #0x10]
  100077df4  stp     x24, x23, [sp, #0x20]
  100077df8  stp     x22, x21, [sp, #0x30]
  100077dfc  stp     x20, x19, [sp, #0x40]
  100077e00  stp     x29, x30, [sp, #0x50]
  100077e04  add     x29, sp, #0x50
  100077e08  sub     sp, sp, #0x20
  100077e0c  mov     x19, x0
  100077e10  mov     x22, #0
  100077e14  adrp    x8, #0x100419000
  100077e18  nop
  100077e1c  ldr     x21, [x8, #0x968]
  100077e20  adrp    x8, #0x100417000
  100077e24  nop
  100077e28  ldr     x23, [x8, #0x1c8]
  100077e2c  adrp    x8, #0x100416000
  100077e30  nop
  100077e34  ldr     x24, [x8, #0xe30]
  100077e38  adrp    x8, #0x100416000
  100077e3c  nop
  100077e40  ldr     x25, [x8, #0xc30]
  100077e44  adrp    x8, #0x100417000
  100077e48  add     x8, x8, #0x1d0                           ; &@selector(removeFromSuperview)
  100077e4c  ldr     x20, [x8]
  100077e50  b       loc_100077e60
loc_100077e54:
  100077e54  mov     x0, x28
  100077e58  bl      _objc_release
  100077e5c  add     x22, x22, #1
loc_100077e60:
  100077e60  mov     x0, x19
  100077e64  mov     x1, x21
  100077e68  bl      _objc_msgSend                            ; [self starUnlockArea]
  100077e6c  mov     x29, x29
  100077e70  bl      _objc_retainAutoreleasedReturnValue
  100077e74  mov     x26, x0
  100077e78  mov     x1, x23
  100077e7c  bl      _objc_msgSend                            ; [[self starUnlockArea] subviews]
  100077e80  mov     x29, x29
  100077e84  bl      _objc_retainAutoreleasedReturnValue
  100077e88  mov     x27, x0
  100077e8c  mov     x1, x24
  100077e90  bl      _objc_msgSend                            ; [[[self starUnlockArea] subviews] count]
  100077e94  mov     x28, x0
  100077e98  mov     x0, x27
  100077e9c  bl      _objc_release
  100077ea0  mov     x0, x26
  100077ea4  bl      _objc_release
  100077ea8  cmp     x22, x28
  100077eac  b.hs    loc_100077f20                            ; if (x22 >=u [[[self starUnlockArea] subviews] count])
  100077eb0  mov     x0, x19
  100077eb4  mov     x1, x21
  100077eb8  bl      _objc_msgSend                            ; [self starUnlockArea]
  100077ebc  mov     x29, x29
  100077ec0  bl      _objc_retainAutoreleasedReturnValue
  100077ec4  mov     x26, x0
  100077ec8  mov     x1, x23
  100077ecc  bl      _objc_msgSend                            ; [[self starUnlockArea] subviews]
  100077ed0  mov     x29, x29
  100077ed4  bl      _objc_retainAutoreleasedReturnValue
  100077ed8  mov     x27, x0
  100077edc  mov     x1, x25
  100077ee0  mov     x2, x22
  100077ee4  bl      _objc_msgSend                            ; [[[self starUnlockArea] subviews] objectAtIndex:x2]
  100077ee8  mov     x29, x29
  100077eec  bl      _objc_retainAutoreleasedReturnValue
  100077ef0  mov     x28, x0
  100077ef4  mov     x0, x27
  100077ef8  bl      _objc_release
  100077efc  mov     x0, x26
  100077f00  bl      _objc_release
  100077f04  mov     x0, x28
  100077f08  mov     x1, x20
  100077f0c  bl      _objc_msgSend                            ; [[[[self starUnlockArea] subviews] objectAtIndex:x2] removeFromSuperview]
  100077f10  b       loc_100077e54
  100077f14  mov     x20, x0
  100077f18  mov     x0, x28
  100077f1c  b       loc_100078018
loc_100077f20:
  100077f20  mov     x0, x19
  100077f24  mov     x1, x21
  100077f28  bl      _objc_msgSend                            ; [self starUnlockArea]
  100077f2c  mov     x29, x29
  100077f30  bl      _objc_retainAutoreleasedReturnValue
  100077f34  mov     x21, x0
  100077f38  mov     x1, x20
  100077f3c  bl      _objc_msgSend                            ; [[self starUnlockArea] removeFromSuperview]
  100077f40  mov     x0, x21
  100077f44  bl      _objc_release
  100077f48  adrp    x8, #0x100419000
  100077f4c  nop
  100077f50  ldr     x1, [x8, #0x9b0]
  100077f54  mov     x2, #0
  100077f58  mov     x0, x19
  100077f5c  bl      _objc_msgSend                            ; [self setStarUnlockArea:0]
  100077f60  adrp    x8, #0x100419000
  100077f64  nop
  100077f68  ldr     x1, [x8, #0x998]
  100077f6c  mov     x2, #0
  100077f70  mov     x0, x19
  100077f74  bl      _objc_msgSend                            ; [self setStarPlaceholder1:0]
  100077f78  adrp    x8, #0x100419000
  100077f7c  nop
  100077f80  ldr     x1, [x8, #0x9a0]
  100077f84  mov     x2, #0
  100077f88  mov     x0, x19
  100077f8c  bl      _objc_msgSend                            ; [self setStarPlaceholder2:0]
  100077f90  adrp    x8, #0x100419000
  100077f94  nop
  100077f98  ldr     x1, [x8, #0x9a8]
  100077f9c  mov     x2, #0
  100077fa0  mov     x0, x19
  100077fa4  bl      _objc_msgSend                            ; [self setStarPlaceholder3:0]
  100077fa8  str     x19, [sp, #0x10]
  100077fac  adrp    x8, #0x10041e000
  100077fb0  ldr     x8, [x8, #0xdf8]
  100077fb4  str     x8, [sp, #0x18]
  100077fb8  adrp    x8, #0x100416000
  100077fbc  nop
  100077fc0  ldr     x1, [x8, #0xfc8]
  100077fc4  add     x0, sp, #0x10
  100077fc8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100077fcc  sub     sp, x29, #0x50
  100077fd0  ldp     x29, x30, [sp, #0x50]
  100077fd4  ldp     x20, x19, [sp, #0x40]
  100077fd8  ldp     x22, x21, [sp, #0x30]
  100077fdc  ldp     x24, x23, [sp, #0x20]
  100077fe0  ldp     x26, x25, [sp, #0x10]
  100077fe4  ldp     x28, x27, [sp], #0x60
  100077fe8  ret
loc_100077fec:
  100077fec  mov     x20, x0
  100077ff0  b       loc_10007801c
  100077ff4  mov     x20, x0
  100077ff8  b       loc_100078014
  100077ffc  b       loc_100078008
  100078000  mov     x20, x0
  100078004  b       loc_100078014
loc_100078008:
  100078008  mov     x20, x0
  10007800c  mov     x0, x27
  100078010  bl      _objc_release
loc_100078014:
  100078014  mov     x0, x26
loc_100078018:
  100078018  bl      _objc_release
loc_10007801c:
  10007801c  str     x19, [sp]
  100078020  adrp    x8, #0x10041e000
  100078024  ldr     x8, [x8, #0xdf8]
  100078028  str     x8, [sp, #8]
  10007802c  adrp    x8, #0x100416000
  100078030  nop
  100078034  ldr     x1, [x8, #0xfc8]
  100078038  mov     x0, sp
  10007803c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100078040  mov     x0, x20
  100078044  bl      __Unwind_Resume                          ; Unwind_Resume()
  100078048  bl      sub_10000b760
  10007804c  b       loc_100077fec
  100078050  mov     x20, x0
  100078054  mov     x0, x21
  100078058  b       loc_100078018

; ======================================================================
; -[ADChallengeViewController challengeIcon]
; address 0x10007805c  size 16  kind objc
; ======================================================================
  10007805c  adrp    x8, #0x10041f000
  100078060  ldrsw   x8, [x8, #0xd80]                         ; ivar offset ADChallengeViewController._challengeIcon (+0x148)
  100078064  ldr     x0, [x0, x8]                             ; x0 = self->_challengeIcon
  100078068  ret

; ======================================================================
; -[ADChallengeViewController setChallengeIcon:]
; address 0x10007806c  size 56  kind objc
; ======================================================================
  10007806c  stp     x20, x19, [sp, #-0x20]!
  100078070  stp     x29, x30, [sp, #0x10]
  100078074  add     x29, sp, #0x10
  100078078  mov     x19, x0
  10007807c  adrp    x8, #0x10041f000
  100078080  ldrsw   x20, [x8, #0xd80]                        ; ivar offset ADChallengeViewController._challengeIcon (+0x148)
  100078084  mov     x0, x2
  100078088  bl      _objc_retain
  10007808c  ldr     x8, [x19, x20]                           ; x8 = self->_challengeIcon
  100078090  str     x0, [x19, x20]                           ; self->_challengeIcon = arg1
  100078094  mov     x0, x8
  100078098  ldp     x29, x30, [sp, #0x10]
  10007809c  ldp     x20, x19, [sp], #0x20
  1000780a0  b       _objc_release

; ======================================================================
; -[ADChallengeViewController challengeDict]
; address 0x1000780a4  size 16  kind objc
; ======================================================================
  1000780a4  adrp    x8, #0x10041f000
  1000780a8  ldrsw   x8, [x8, #0xd84]                         ; ivar offset ADChallengeViewController._challengeDict (+0x150)
  1000780ac  ldr     x0, [x0, x8]                             ; x0 = self->_challengeDict
  1000780b0  ret

; ======================================================================
; -[ADChallengeViewController setChallengeDict:]
; address 0x1000780b4  size 56  kind objc
; ======================================================================
  1000780b4  stp     x20, x19, [sp, #-0x20]!
  1000780b8  stp     x29, x30, [sp, #0x10]
  1000780bc  add     x29, sp, #0x10
  1000780c0  mov     x19, x0
  1000780c4  adrp    x8, #0x10041f000
  1000780c8  ldrsw   x20, [x8, #0xd84]                        ; ivar offset ADChallengeViewController._challengeDict (+0x150)
  1000780cc  mov     x0, x2
  1000780d0  bl      _objc_retain
  1000780d4  ldr     x8, [x19, x20]                           ; x8 = self->_challengeDict
  1000780d8  str     x0, [x19, x20]                           ; self->_challengeDict = arg1
  1000780dc  mov     x0, x8
  1000780e0  ldp     x29, x30, [sp, #0x10]
  1000780e4  ldp     x20, x19, [sp], #0x20
  1000780e8  b       _objc_release

; ======================================================================
; -[ADChallengeViewController starUnlockArea]
; address 0x1000780ec  size 16  kind objc
; ======================================================================
  1000780ec  adrp    x8, #0x10041f000
  1000780f0  ldrsw   x8, [x8, #0xd88]                         ; ivar offset ADChallengeViewController._starUnlockArea (+0x158)
  1000780f4  ldr     x0, [x0, x8]                             ; x0 = self->_starUnlockArea
  1000780f8  ret

; ======================================================================
; -[ADChallengeViewController setStarUnlockArea:]
; address 0x1000780fc  size 56  kind objc
; ======================================================================
  1000780fc  stp     x20, x19, [sp, #-0x20]!
  100078100  stp     x29, x30, [sp, #0x10]
  100078104  add     x29, sp, #0x10
  100078108  mov     x19, x0
  10007810c  adrp    x8, #0x10041f000
  100078110  ldrsw   x20, [x8, #0xd88]                        ; ivar offset ADChallengeViewController._starUnlockArea (+0x158)
  100078114  mov     x0, x2
  100078118  bl      _objc_retain
  10007811c  ldr     x8, [x19, x20]                           ; x8 = self->_starUnlockArea
  100078120  str     x0, [x19, x20]                           ; self->_starUnlockArea = arg1
  100078124  mov     x0, x8
  100078128  ldp     x29, x30, [sp, #0x10]
  10007812c  ldp     x20, x19, [sp], #0x20
  100078130  b       _objc_release

; ======================================================================
; -[ADChallengeViewController missionStar]
; address 0x100078134  size 16  kind objc
; ======================================================================
  100078134  adrp    x8, #0x10041f000
  100078138  ldrsw   x8, [x8, #0xd8c]                         ; ivar offset ADChallengeViewController._missionStar (+0x160)
  10007813c  ldr     x0, [x0, x8]                             ; x0 = self->_missionStar
  100078140  ret

; ======================================================================
; -[ADChallengeViewController setMissionStar:]
; address 0x100078144  size 56  kind objc
; ======================================================================
  100078144  stp     x20, x19, [sp, #-0x20]!
  100078148  stp     x29, x30, [sp, #0x10]
  10007814c  add     x29, sp, #0x10
  100078150  mov     x19, x0
  100078154  adrp    x8, #0x10041f000
  100078158  ldrsw   x20, [x8, #0xd8c]                        ; ivar offset ADChallengeViewController._missionStar (+0x160)
  10007815c  mov     x0, x2
  100078160  bl      _objc_retain
  100078164  ldr     x8, [x19, x20]                           ; x8 = self->_missionStar
  100078168  str     x0, [x19, x20]                           ; self->_missionStar = arg1
  10007816c  mov     x0, x8
  100078170  ldp     x29, x30, [sp, #0x10]
  100078174  ldp     x20, x19, [sp], #0x20
  100078178  b       _objc_release

; ======================================================================
; -[ADChallengeViewController accuracyStar]
; address 0x10007817c  size 16  kind objc
; ======================================================================
  10007817c  adrp    x8, #0x10041f000
  100078180  ldrsw   x8, [x8, #0xd90]                         ; ivar offset ADChallengeViewController._accuracyStar (+0x168)
  100078184  ldr     x0, [x0, x8]                             ; x0 = self->_accuracyStar
  100078188  ret

; ======================================================================
; -[ADChallengeViewController setAccuracyStar:]
; address 0x10007818c  size 56  kind objc
; ======================================================================
  10007818c  stp     x20, x19, [sp, #-0x20]!
  100078190  stp     x29, x30, [sp, #0x10]
  100078194  add     x29, sp, #0x10
  100078198  mov     x19, x0
  10007819c  adrp    x8, #0x10041f000
  1000781a0  ldrsw   x20, [x8, #0xd90]                        ; ivar offset ADChallengeViewController._accuracyStar (+0x168)
  1000781a4  mov     x0, x2
  1000781a8  bl      _objc_retain
  1000781ac  ldr     x8, [x19, x20]                           ; x8 = self->_accuracyStar
  1000781b0  str     x0, [x19, x20]                           ; self->_accuracyStar = arg1
  1000781b4  mov     x0, x8
  1000781b8  ldp     x29, x30, [sp, #0x10]
  1000781bc  ldp     x20, x19, [sp], #0x20
  1000781c0  b       _objc_release

; ======================================================================
; -[ADChallengeViewController timeStar]
; address 0x1000781c4  size 16  kind objc
; ======================================================================
  1000781c4  adrp    x8, #0x10041f000
  1000781c8  ldrsw   x8, [x8, #0xd94]                         ; ivar offset ADChallengeViewController._timeStar (+0x170)
  1000781cc  ldr     x0, [x0, x8]                             ; x0 = self->_timeStar
  1000781d0  ret

; ======================================================================
; -[ADChallengeViewController setTimeStar:]
; address 0x1000781d4  size 56  kind objc
; ======================================================================
  1000781d4  stp     x20, x19, [sp, #-0x20]!
  1000781d8  stp     x29, x30, [sp, #0x10]
  1000781dc  add     x29, sp, #0x10
  1000781e0  mov     x19, x0
  1000781e4  adrp    x8, #0x10041f000
  1000781e8  ldrsw   x20, [x8, #0xd94]                        ; ivar offset ADChallengeViewController._timeStar (+0x170)
  1000781ec  mov     x0, x2
  1000781f0  bl      _objc_retain
  1000781f4  ldr     x8, [x19, x20]                           ; x8 = self->_timeStar
  1000781f8  str     x0, [x19, x20]                           ; self->_timeStar = arg1
  1000781fc  mov     x0, x8
  100078200  ldp     x29, x30, [sp, #0x10]
  100078204  ldp     x20, x19, [sp], #0x20
  100078208  b       _objc_release

; ======================================================================
; -[ADChallengeViewController coinsReward]
; address 0x10007820c  size 16  kind objc
; ======================================================================
  10007820c  adrp    x8, #0x10041f000
  100078210  ldrsw   x8, [x8, #0xd98]                         ; ivar offset ADChallengeViewController._coinsReward (+0x178)
  100078214  ldr     x0, [x0, x8]                             ; x0 = self->_coinsReward
  100078218  ret

; ======================================================================
; -[ADChallengeViewController setCoinsReward:]
; address 0x10007821c  size 56  kind objc
; ======================================================================
  10007821c  stp     x20, x19, [sp, #-0x20]!
  100078220  stp     x29, x30, [sp, #0x10]
  100078224  add     x29, sp, #0x10
  100078228  mov     x19, x0
  10007822c  adrp    x8, #0x10041f000
  100078230  ldrsw   x20, [x8, #0xd98]                        ; ivar offset ADChallengeViewController._coinsReward (+0x178)
  100078234  mov     x0, x2
  100078238  bl      _objc_retain
  10007823c  ldr     x8, [x19, x20]                           ; x8 = self->_coinsReward
  100078240  str     x0, [x19, x20]                           ; self->_coinsReward = arg1
  100078244  mov     x0, x8
  100078248  ldp     x29, x30, [sp, #0x10]
  10007824c  ldp     x20, x19, [sp], #0x20
  100078250  b       _objc_release

; ======================================================================
; -[ADChallengeViewController .cxx_destruct]
; address 0x100078254  size 184  kind objc
; ======================================================================
  100078254  stp     x20, x19, [sp, #-0x20]!
  100078258  stp     x29, x30, [sp, #0x10]
  10007825c  add     x29, sp, #0x10
  100078260  mov     x19, x0
  100078264  adrp    x8, #0x10041f000
  100078268  ldrsw   x8, [x8, #0xd98]                         ; ivar offset ADChallengeViewController._coinsReward (+0x178)
  10007826c  add     x0, x19, x8
  100078270  mov     x1, #0
  100078274  bl      _objc_storeStrong
  100078278  adrp    x8, #0x10041f000
  10007827c  ldrsw   x8, [x8, #0xd94]                         ; ivar offset ADChallengeViewController._timeStar (+0x170)
  100078280  add     x0, x19, x8
  100078284  mov     x1, #0
  100078288  bl      _objc_storeStrong
  10007828c  adrp    x8, #0x10041f000
  100078290  ldrsw   x8, [x8, #0xd90]                         ; ivar offset ADChallengeViewController._accuracyStar (+0x168)
  100078294  add     x0, x19, x8
  100078298  mov     x1, #0
  10007829c  bl      _objc_storeStrong
  1000782a0  adrp    x8, #0x10041f000
  1000782a4  ldrsw   x8, [x8, #0xd8c]                         ; ivar offset ADChallengeViewController._missionStar (+0x160)
  1000782a8  add     x0, x19, x8
  1000782ac  mov     x1, #0
  1000782b0  bl      _objc_storeStrong
  1000782b4  adrp    x8, #0x10041f000
  1000782b8  ldrsw   x8, [x8, #0xd88]                         ; ivar offset ADChallengeViewController._starUnlockArea (+0x158)
  1000782bc  add     x0, x19, x8
  1000782c0  mov     x1, #0
  1000782c4  bl      _objc_storeStrong
  1000782c8  adrp    x8, #0x10041f000
  1000782cc  ldrsw   x8, [x8, #0xd84]                         ; ivar offset ADChallengeViewController._challengeDict (+0x150)
  1000782d0  add     x0, x19, x8
  1000782d4  mov     x1, #0
  1000782d8  bl      _objc_storeStrong
  1000782dc  adrp    x8, #0x10041f000
  1000782e0  ldrsw   x8, [x8, #0xd80]                         ; ivar offset ADChallengeViewController._challengeIcon (+0x148)
  1000782e4  add     x0, x19, x8
  1000782e8  mov     x1, #0
  1000782ec  bl      _objc_storeStrong
  1000782f0  mov     x1, #0
  1000782f4  adrp    x8, #0x10041f000
  1000782f8  ldrsw   x8, [x8, #0xd7c]                         ; ivar offset ADChallengeViewController.stars (+0x140)
  1000782fc  add     x0, x19, x8
  100078300  ldp     x29, x30, [sp, #0x10]
  100078304  ldp     x20, x19, [sp], #0x20
  100078308  b       _objc_storeStrong
