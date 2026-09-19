// unit Accessible_ADChallengeSelectorViewController — 16 functions
//   0x100053f18     644  -[Accessible_ADChallengeSelectorViewController initWithNibName:bundle:loadChallenge:worldName:]
//   0x10005419c     360  -[Accessible_ADChallengeSelectorViewController viewDidLoad]
//   0x100054304     244  -[Accessible_ADChallengeSelectorViewController viewDidLoad]_block_invoke
//   0x1000543f8       8  sub_1000543f8
//   0x100054400       8  sub_100054400
//   0x100054408      60  -[Accessible_ADChallengeSelectorViewController didReceiveMemoryWarning]
//   0x100054444     140  -[Accessible_ADChallengeSelectorViewController tableView:heightForRowAtIndexPath:]
//   0x1000544d0     136  -[Accessible_ADChallengeSelectorViewController tableView:numberOfRowsInSection:]
//   0x100054558      24  -[Accessible_ADChallengeSelectorViewController numberOfSectionsInTableView:]
//   0x100054570    1008  -[Accessible_ADChallengeSelectorViewController tableView:cellForRowAtIndexPath:]
//   0x100054960    1580  -[Accessible_ADChallengeSelectorViewController statusForChallengeWithDict:]
//   0x100054f8c    1364  -[Accessible_ADChallengeSelectorViewController tableView:didSelectRowAtIndexPath:]
//   0x1000554e0      92  -[Accessible_ADChallengeSelectorViewController viewWillLayoutSubviews]
//   0x10005553c      16  -[Accessible_ADChallengeSelectorViewController tableView]
//   0x10005554c      56  -[Accessible_ADChallengeSelectorViewController setTableView:]
//   0x100055584      64  -[Accessible_ADChallengeSelectorViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController initWithNibName:bundle:loadChallenge:worldName:]
; address 0x100053f18  size 644  kind objc
; ======================================================================
  100053f18  stp     x28, x27, [sp, #-0x60]!
  100053f1c  stp     x26, x25, [sp, #0x10]
  100053f20  stp     x24, x23, [sp, #0x20]
  100053f24  stp     x22, x21, [sp, #0x30]
  100053f28  stp     x20, x19, [sp, #0x40]
  100053f2c  stp     x29, x30, [sp, #0x50]
  100053f30  add     x29, sp, #0x50
  100053f34  sub     sp, sp, #0x20
  100053f38  mov     x22, x5
  100053f3c  mov     x21, x4
  100053f40  mov     x20, x3
  100053f44  mov     x23, x0
  100053f48  mov     x0, x2
  100053f4c  bl      _objc_retain
  100053f50  mov     x19, x0
  100053f54  mov     x0, x20
  100053f58  bl      _objc_retain
  100053f5c  mov     x20, x0
  100053f60  mov     x0, x21
  100053f64  bl      _objc_retain
  100053f68  mov     x21, x0
  100053f6c  mov     x0, x22
  100053f70  bl      _objc_retain
  100053f74  mov     x22, x0
  100053f78  str     x23, [sp, #0x10]
  100053f7c  adrp    x8, #0x10041e000
  100053f80  ldr     x8, [x8, #0xd60]
  100053f84  str     x8, [sp, #0x18]
  100053f88  adrp    x8, #0x100416000
  100053f8c  nop
  100053f90  ldr     x1, [x8, #0xb40]
  100053f94  mov     x24, #0
  100053f98  add     x0, sp, #0x10
  100053f9c  mov     x2, x19
  100053fa0  mov     x3, x20
  100053fa4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100053fa8  mov     x23, x0
  100053fac  cbz     x23, loc_1000540cc                       ; if (self == 0)
  100053fb0  mov     x24, x23
  100053fb4  adrp    x8, #0x10041f000
  100053fb8  ldrsw   x25, [x8, #0xae0]                        ; ivar offset Accessible_ADChallengeSelectorViewController.challengeToLoad (+0x140)
  100053fbc  mov     x0, x21
  100053fc0  bl      _objc_retain
  100053fc4  ldr     x8, [x23, x25]                           ; x8 = self->challengeToLoad
  100053fc8  str     x0, [x23, x25]                           ; self->challengeToLoad = arg3
  100053fcc  mov     x0, x8
  100053fd0  bl      _objc_release
  100053fd4  adrp    x8, #0x10041d000
  100053fd8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100053fdc  adrp    x8, #0x100416000
  100053fe0  nop
  100053fe4  ldr     x1, [x8, #0xb58]
  100053fe8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100053fec  mov     x29, x29
  100053ff0  bl      _objc_retainAutoreleasedReturnValue
  100053ff4  mov     x25, x0
  100053ff8  adrp    x8, #0x100416000
  100053ffc  nop
  100054000  ldr     x1, [x8, #0xd60]
  100054004  adrp    x2, #0x1003ba000
  100054008  add     x2, x2, #0xe30                           ; @"challenges_index"
  10005400c  adrp    x3, #0x1003b9000
  100054010  add     x3, x3, #0xa70                           ; @"plist"
  100054014  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  100054018  mov     x29, x29
  10005401c  bl      _objc_retainAutoreleasedReturnValue
  100054020  mov     x24, x0
  100054024  mov     x0, x25
  100054028  bl      _objc_release
  10005402c  adrp    x8, #0x10041d000
  100054030  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100054034  adrp    x8, #0x100417000
  100054038  nop
  10005403c  ldr     x1, [x8, #0x258]
  100054040  mov     x2, x24
  100054044  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  100054048  mov     x29, x29
  10005404c  bl      _objc_retainAutoreleasedReturnValue
  100054050  mov     x25, x0
  100054054  adrp    x8, #0x100417000
  100054058  nop
  10005405c  ldr     x27, [x8, #0x40]
  100054060  mov     x1, x27
  100054064  mov     x2, x22
  100054068  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg4]
  10005406c  mov     x29, x29
  100054070  bl      _objc_retainAutoreleasedReturnValue
  100054074  mov     x26, x0
  100054078  adrp    x2, #0x1003ba000
  10005407c  add     x2, x2, #0xe50                           ; @"challenges"
  100054080  mov     x1, x27
  100054084  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg4] objectForKey:@"challenges"]
  100054088  mov     x29, x29
  10005408c  bl      _objc_retainAutoreleasedReturnValue
  100054090  mov     x27, x0
  100054094  adrp    x8, #0x100418000
  100054098  nop
  10005409c  ldr     x1, [x8, #0xe20]
  1000540a0  mov     x0, x23
  1000540a4  mov     x2, x27
  1000540a8  bl      _objc_msgSend                            ; [self setChallengeFiles:[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg4] objectForKey:@"challenges"]]
  1000540ac  mov     x0, x27
  1000540b0  bl      _objc_release
  1000540b4  mov     x0, x26
  1000540b8  bl      _objc_release
  1000540bc  mov     x0, x25
  1000540c0  bl      _objc_release
  1000540c4  mov     x0, x24
  1000540c8  bl      _objc_release
loc_1000540cc:
  1000540cc  mov     x0, x22
  1000540d0  bl      _objc_release
  1000540d4  mov     x0, x21
  1000540d8  bl      _objc_release
  1000540dc  mov     x0, x20
  1000540e0  bl      _objc_release
  1000540e4  mov     x0, x19
  1000540e8  bl      _objc_release
  1000540ec  mov     x0, x23
  1000540f0  sub     sp, x29, #0x50
  1000540f4  ldp     x29, x30, [sp, #0x50]
  1000540f8  ldp     x20, x19, [sp, #0x40]
  1000540fc  ldp     x22, x21, [sp, #0x30]
  100054100  ldp     x24, x23, [sp, #0x20]
  100054104  ldp     x26, x25, [sp, #0x10]
  100054108  ldp     x28, x27, [sp], #0x60
  10005410c  ret
  100054110  mov     x26, x0
  100054114  b       loc_10005416c
  100054118  mov     x26, x0
  10005411c  mov     x0, x25
  100054120  b       loc_100054164
  100054124  mov     x26, x0
  100054128  b       loc_100054160
  10005412c  mov     x26, x0
  100054130  b       loc_100054158
  100054134  str     x26, [sp, #8]
  100054138  mov     x26, x0
  10005413c  b       loc_100054150
  100054140  str     x26, [sp, #8]
  100054144  mov     x26, x0
  100054148  mov     x0, x27
  10005414c  bl      _objc_release
loc_100054150:
  100054150  ldr     x0, [sp, #8]
  100054154  bl      _objc_release
loc_100054158:
  100054158  mov     x0, x25
  10005415c  bl      _objc_release
loc_100054160:
  100054160  mov     x0, x24
loc_100054164:
  100054164  bl      _objc_release
  100054168  mov     x24, x23
loc_10005416c:
  10005416c  mov     x0, x22
  100054170  bl      _objc_release
  100054174  mov     x0, x21
  100054178  bl      _objc_release
  10005417c  mov     x0, x20
  100054180  bl      _objc_release
  100054184  mov     x0, x19
  100054188  bl      _objc_release
  10005418c  mov     x0, x24
  100054190  bl      _objc_release
  100054194  mov     x0, x26
  100054198  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController viewDidLoad]
; address 0x10005419c  size 360  kind objc
; ======================================================================
  10005419c  stp     x22, x21, [sp, #-0x30]!
  1000541a0  stp     x20, x19, [sp, #0x10]
  1000541a4  stp     x29, x30, [sp, #0x20]
  1000541a8  add     x29, sp, #0x20
  1000541ac  sub     sp, sp, #0x40
  1000541b0  mov     x19, x0
  1000541b4  str     x19, [sp, #0x30]
  1000541b8  adrp    x8, #0x10041e000
  1000541bc  ldr     x8, [x8, #0xd60]
  1000541c0  str     x8, [sp, #0x38]
  1000541c4  adrp    x8, #0x100416000
  1000541c8  nop
  1000541cc  ldr     x1, [x8, #0xb48]
  1000541d0  add     x0, sp, #0x30
  1000541d4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000541d8  adrp    x8, #0x10041f000
  1000541dc  ldrsw   x22, [x8, #0xae0]                        ; ivar offset Accessible_ADChallengeSelectorViewController.challengeToLoad (+0x140)
  1000541e0  ldr     x8, [x19, x22]                           ; x8 = self->challengeToLoad
  1000541e4  cbz     x8, loc_100054250                        ; if (self->challengeToLoad == 0)
  1000541e8  mov     w1, #0xbeb0000
  1000541ec  movk    w1, #0xc200
  1000541f0  mov     x0, #0
  1000541f4  bl      _dispatch_time                           ; dispatch_time(0, 0xbebc200)
  1000541f8  mov     x20, x0
  1000541fc  adrp    x8, #0x1003b0000
  100054200  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100054204  mov     w9, #-0x3e000000
  100054208  str     x8, [sp, #8]
  10005420c  stp     w9, wzr, [sp, #0x10]
  100054210  adr     x8, #0x100054304                         ; &-[Accessible_ADChallengeSelectorViewController viewDidLoad]_block_invoke
  100054214  nop
  100054218  str     x8, [sp, #0x18]
  10005421c  adrp    x8, #0x1003b1000
  100054220  add     x8, x8, #0x9f0                           ; &d_1003b19f0
  100054224  str     x8, [sp, #0x20]
  100054228  mov     x0, x19
  10005422c  bl      _objc_retain
  100054230  str     x0, [sp, #0x28]
  100054234  adrp    x1, #0x1003b0000
  100054238  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10005423c  add     x2, sp, #8
  100054240  mov     x0, x20
  100054244  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0xbebc200), __dispatch_main_q, ^{-[Accessible_ADChallengeSelectorViewController viewDidLoad]_block_invoke captures +0x20=self, +0x28=self, +0x30=Accessible_ADChallengeSelectorViewContro…})
  100054248  ldr     x0, [sp, #0x28]
  10005424c  bl      _objc_release
loc_100054250:
  100054250  adrp    x8, #0x100417000
  100054254  nop
  100054258  ldr     x20, [x8, #0x2a8]
  10005425c  mov     x0, x19
  100054260  mov     x1, x20
  100054264  bl      _objc_msgSend                            ; [self statusBarViewController]
  100054268  mov     x29, x29
  10005426c  bl      _objc_retainAutoreleasedReturnValue
  100054270  mov     x21, x0
  100054274  adrp    x8, #0x100417000
  100054278  nop
  10005427c  ldr     x1, [x8, #0x2b0]
  100054280  mov     w2, #0
  100054284  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  100054288  mov     x0, x21
  10005428c  bl      _objc_release
  100054290  mov     x0, x19
  100054294  mov     x1, x20
  100054298  bl      _objc_msgSend                            ; [self statusBarViewController]
  10005429c  mov     x29, x29
  1000542a0  bl      _objc_retainAutoreleasedReturnValue
  1000542a4  mov     x20, x0
  1000542a8  adrp    x8, #0x100417000
  1000542ac  nop
  1000542b0  ldr     x1, [x8, #0x2b8]
  1000542b4  mov     w2, #0
  1000542b8  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000542bc  mov     x0, x20
  1000542c0  bl      _objc_release
  1000542c4  ldr     x8, [x19, x22]                           ; x8 = self->challengeToLoad
  1000542c8  cbnz    x8, loc_1000542d0                        ; if (self->challengeToLoad != 0)
  1000542cc  str     xzr, [x19, x22]                          ; self->challengeToLoad = 0
loc_1000542d0:
  1000542d0  sub     sp, x29, #0x20
  1000542d4  ldp     x29, x30, [sp, #0x20]
  1000542d8  ldp     x20, x19, [sp, #0x10]
  1000542dc  ldp     x22, x21, [sp], #0x30
  1000542e0  ret
  1000542e4  mov     x19, x0
  1000542e8  mov     x0, x21
  1000542ec  b       loc_1000542f8
  1000542f0  mov     x19, x0
  1000542f4  mov     x0, x20
loc_1000542f8:
  1000542f8  bl      _objc_release
  1000542fc  mov     x0, x19
  100054300  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController viewDidLoad]_block_invoke
; address 0x100054304  size 244  kind block
; ======================================================================
  100054304  stp     x22, x21, [sp, #-0x30]!
  100054308  stp     x20, x19, [sp, #0x10]
  10005430c  stp     x29, x30, [sp, #0x20]
  100054310  add     x29, sp, #0x20
  100054314  mov     x21, x0
  100054318  adrp    x8, #0x10041d000
  10005431c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100054320  adrp    x8, #0x100416000
  100054324  nop
  100054328  ldr     x1, [x8, #0xb28]
  10005432c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100054330  mov     x29, x29
  100054334  bl      _objc_retainAutoreleasedReturnValue
  100054338  mov     x19, x0
  10005433c  adrp    x8, #0x100416000
  100054340  nop
  100054344  ldr     x1, [x8, #0xc18]
  100054348  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10005434c  mov     x29, x29
  100054350  bl      _objc_retainAutoreleasedReturnValue
  100054354  mov     x20, x0
  100054358  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  10005435c  adrp    x8, #0x10041f000
  100054360  ldrsw   x8, [x8, #0xae0]                         ; ivar offset Accessible_ADChallengeSelectorViewController.challengeToLoad (+0x140)
  100054364  ldr     x2, [x0, x8]                             ; x2 = self->challengeToLoad
  100054368  adrp    x8, #0x100417000
  10005436c  nop
  100054370  ldr     x1, [x8, #0xa00]
  100054374  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:self->challengeToLoad]
  100054378  mov     x29, x29
  10005437c  bl      _objc_retainAutoreleasedReturnValue
  100054380  mov     x21, x0
  100054384  adrp    x8, #0x100418000
  100054388  nop
  10005438c  ldr     x1, [x8, #0xe28]
  100054390  mov     x0, x20
  100054394  mov     x2, x21
  100054398  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToAccessibleChallengeOverviewWithDictionary:[self dictionaryForChallengeWithName:self->challengeToLoad]]
  10005439c  mov     x0, x21
  1000543a0  bl      _objc_release
  1000543a4  mov     x0, x20
  1000543a8  bl      _objc_release
  1000543ac  mov     x0, x19
  1000543b0  ldp     x29, x30, [sp, #0x20]
  1000543b4  ldp     x20, x19, [sp, #0x10]
  1000543b8  ldp     x22, x21, [sp], #0x30
  1000543bc  b       _objc_release
  1000543c0  mov     x21, x0
  1000543c4  b       loc_1000543e8
  1000543c8  mov     x21, x0
  1000543cc  b       loc_1000543e0
  1000543d0  mov     x1, x21
  1000543d4  mov     x21, x0
  1000543d8  mov     x0, x1
  1000543dc  bl      _objc_release
loc_1000543e0:
  1000543e0  mov     x0, x20
  1000543e4  bl      _objc_release
loc_1000543e8:
  1000543e8  mov     x0, x19
  1000543ec  bl      _objc_release
  1000543f0  mov     x0, x21
  1000543f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000543f8
; address 0x1000543f8  size 8  kind sub
; ======================================================================
  1000543f8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000543fc  b       _objc_retain

; ======================================================================
; sub_100054400
; address 0x100054400  size 8  kind sub
; ======================================================================
  100054400  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100054404  b       _objc_release

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController didReceiveMemoryWarning]
; address 0x100054408  size 60  kind objc
; ======================================================================
  100054408  stp     x29, x30, [sp, #-0x10]!
  10005440c  mov     x29, sp
  100054410  sub     sp, sp, #0x10
  100054414  str     x0, [sp]
  100054418  adrp    x8, #0x10041e000
  10005441c  ldr     x8, [x8, #0xd60]
  100054420  str     x8, [sp, #8]
  100054424  adrp    x8, #0x100416000
  100054428  nop
  10005442c  ldr     x1, [x8, #0xbf8]
  100054430  mov     x0, sp
  100054434  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100054438  mov     sp, x29
  10005443c  ldp     x29, x30, [sp], #0x10
  100054440  ret

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController tableView:heightForRowAtIndexPath:]
; address 0x100054444  size 140  kind objc
; ======================================================================
  100054444  stp     x20, x19, [sp, #-0x20]!
  100054448  stp     x29, x30, [sp, #0x10]
  10005444c  add     x29, sp, #0x10
  100054450  adrp    x8, #0x10041d000
  100054454  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100054458  adrp    x8, #0x100416000
  10005445c  nop
  100054460  ldr     x1, [x8, #0xc00]
  100054464  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100054468  mov     x29, x29
  10005446c  bl      _objc_retainAutoreleasedReturnValue
  100054470  mov     x19, x0
  100054474  adrp    x8, #0x100416000
  100054478  nop
  10005447c  ldr     x1, [x8, #0xd18]
  100054480  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100054484  mov     x20, x0
  100054488  mov     x0, x19
  10005448c  bl      _objc_release
  100054490  cmp     w20, #0
  100054494  adrp    x8, #0x100181000
  100054498  ldr     d0, [x8, #0xa08]                         ; d0 = 60.0
  10005449c  nop
  1000544a0  ldr     d1, [x8, #0x9f8]                         ; d1 = 40.0
  1000544a4  fcsel   d0, d1, d0, ne
  1000544a8  ldp     x29, x30, [sp, #0x10]
  1000544ac  ldp     x20, x19, [sp], #0x20
  1000544b0  ret
  1000544b4  mov     x20, x0
  1000544b8  b       loc_1000544c8
  1000544bc  mov     x20, x0
  1000544c0  mov     x0, x19
  1000544c4  bl      _objc_release
loc_1000544c8:
  1000544c8  mov     x0, x20
  1000544cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController tableView:numberOfRowsInSection:]
; address 0x1000544d0  size 136  kind objc
; ======================================================================
  1000544d0  stp     x20, x19, [sp, #-0x20]!
  1000544d4  stp     x29, x30, [sp, #0x10]
  1000544d8  add     x29, sp, #0x10
  1000544dc  adrp    x8, #0x10041f000
  1000544e0  ldrsw   x8, [x8, #0xae0]                         ; ivar offset Accessible_ADChallengeSelectorViewController.challengeToLoad (+0x140)
  1000544e4  ldr     x8, [x0, x8]                             ; x8 = self->challengeToLoad
  1000544e8  cbz     x8, loc_1000544f4                        ; if (self->challengeToLoad == 0)
  1000544ec  mov     x20, #0
  1000544f0  b       loc_10005452c
loc_1000544f4:
  1000544f4  adrp    x8, #0x100418000
  1000544f8  nop
  1000544fc  ldr     x1, [x8, #0xe30]
  100054500  bl      _objc_msgSend                            ; [self challengeFiles]
  100054504  mov     x29, x29
  100054508  bl      _objc_retainAutoreleasedReturnValue
  10005450c  mov     x19, x0
  100054510  adrp    x8, #0x100416000
  100054514  nop
  100054518  ldr     x1, [x8, #0xe30]
  10005451c  bl      _objc_msgSend                            ; [[self challengeFiles] count]
  100054520  mov     x20, x0
  100054524  mov     x0, x19
  100054528  bl      _objc_release
loc_10005452c:
  10005452c  mov     x0, x20
  100054530  ldp     x29, x30, [sp, #0x10]
  100054534  ldp     x20, x19, [sp], #0x20
  100054538  ret
  10005453c  mov     x20, x0
  100054540  b       loc_100054550
  100054544  mov     x20, x0
  100054548  mov     x0, x19
  10005454c  bl      _objc_release
loc_100054550:
  100054550  mov     x0, x20
  100054554  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController numberOfSectionsInTableView:]
; address 0x100054558  size 24  kind objc
; ======================================================================
  100054558  adrp    x8, #0x10041f000
  10005455c  ldrsw   x8, [x8, #0xae0]                         ; ivar offset Accessible_ADChallengeSelectorViewController.challengeToLoad (+0x140)
  100054560  ldr     x8, [x0, x8]                             ; x8 = self->challengeToLoad
  100054564  cmp     x8, #0
  100054568  cset    w0, eq
  10005456c  ret

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController tableView:cellForRowAtIndexPath:]
; address 0x100054570  size 1008  kind objc
; ======================================================================
  100054570  stp     x26, x25, [sp, #-0x50]!
  100054574  stp     x24, x23, [sp, #0x10]
  100054578  stp     x22, x21, [sp, #0x20]
  10005457c  stp     x20, x19, [sp, #0x30]
  100054580  stp     x29, x30, [sp, #0x40]
  100054584  add     x29, sp, #0x40
  100054588  mov     x19, x3
  10005458c  mov     x21, x2
  100054590  mov     x23, x0
  100054594  mov     x0, x21
  100054598  bl      _objc_retain
  10005459c  mov     x20, x0
  1000545a0  mov     x0, x19
  1000545a4  bl      _objc_retain
  1000545a8  mov     x19, x0
  1000545ac  adrp    x8, #0x100417000
  1000545b0  nop
  1000545b4  ldr     x1, [x8, #0x390]
  1000545b8  adrp    x2, #0x1003bd000
  1000545bc  add     x2, x2, #0x1d0                           ; @"AccessibleAllLevelsCell"
  1000545c0  mov     x0, x21
  1000545c4  bl      _objc_msgSend                            ; [arg1 dequeueReusableCellWithIdentifier:@"AccessibleAllLevelsCell"]
  1000545c8  mov     x21, x0
  1000545cc  mov     x0, x20
  1000545d0  bl      _objc_release
  1000545d4  mov     x0, x21
  1000545d8  bl      _objc_retainAutoreleasedReturnValue
  1000545dc  mov     x20, x0
  1000545e0  cbnz    x20, loc_10005461c                       ; if ([arg1 dequeueReusableCellWithIdentifier:@"AccessibleAllLevelsCell"] != 0)
  1000545e4  adrp    x8, #0x10041e000
  1000545e8  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  1000545ec  adrp    x8, #0x100416000
  1000545f0  nop
  1000545f4  ldr     x1, [x8, #0xac8]
  1000545f8  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  1000545fc  adrp    x8, #0x100417000
  100054600  nop
  100054604  ldr     x1, [x8, #0x3c0]
  100054608  adrp    x3, #0x1003bd000
  10005460c  add     x3, x3, #0x1d0                           ; @"AccessibleAllLevelsCell"
  100054610  mov     w2, #3
  100054614  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleAllLevelsCell"]
  100054618  mov     x20, x0
loc_10005461c:
  10005461c  adrp    x8, #0x100418000
  100054620  nop
  100054624  ldr     x1, [x8, #0xe30]
  100054628  mov     x0, x23
  10005462c  bl      _objc_msgSend                            ; [self challengeFiles]
  100054630  mov     x29, x29
  100054634  bl      _objc_retainAutoreleasedReturnValue
  100054638  mov     x22, x0
  10005463c  adrp    x8, #0x100417000
  100054640  nop
  100054644  ldr     x1, [x8, #0x350]
  100054648  mov     x0, x19
  10005464c  bl      _objc_msgSend                            ; [arg2 row]
  100054650  mov     x2, x0
  100054654  adrp    x8, #0x100416000
  100054658  nop
  10005465c  ldr     x1, [x8, #0xc30]
  100054660  mov     x0, x22
  100054664  bl      _objc_msgSend                            ; [[self challengeFiles] objectAtIndex:[arg2 row]]
  100054668  mov     x29, x29
  10005466c  bl      _objc_retainAutoreleasedReturnValue
  100054670  mov     x21, x0
  100054674  mov     x0, x22
  100054678  bl      _objc_release
  10005467c  adrp    x8, #0x100417000
  100054680  nop
  100054684  ldr     x1, [x8, #0xa00]
  100054688  mov     x0, x23
  10005468c  mov     x2, x21
  100054690  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]]
  100054694  mov     x29, x29
  100054698  bl      _objc_retainAutoreleasedReturnValue
  10005469c  mov     x22, x0
  1000546a0  adrp    x8, #0x100417000
  1000546a4  nop
  1000546a8  ldr     x1, [x8, #0x320]
  1000546ac  mov     x0, x20
  1000546b0  bl      _objc_msgSend                            ; [x0 textLabel]
  1000546b4  mov     x29, x29
  1000546b8  bl      _objc_retainAutoreleasedReturnValue
  1000546bc  mov     x24, x0
  1000546c0  adrp    x8, #0x100417000
  1000546c4  nop
  1000546c8  ldr     x1, [x8, #0x40]
  1000546cc  adrp    x2, #0x1003bc000
  1000546d0  add     x2, x2, #0x950                           ; @"title"
  1000546d4  mov     x0, x22
  1000546d8  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"title"]
  1000546dc  mov     x29, x29
  1000546e0  bl      _objc_retainAutoreleasedReturnValue
  1000546e4  mov     x26, x0
  1000546e8  adrp    x8, #0x100416000
  1000546ec  nop
  1000546f0  ldr     x25, [x8, #0xb68]
  1000546f4  mov     x0, x24
  1000546f8  mov     x1, x25
  1000546fc  mov     x2, x26
  100054700  bl      _objc_msgSend                            ; [[x0 textLabel] setText:[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"title"]]
  100054704  mov     x0, x26
  100054708  bl      _objc_release
  10005470c  mov     x0, x24
  100054710  bl      _objc_release
  100054714  adrp    x8, #0x100417000
  100054718  nop
  10005471c  ldr     x24, [x8, #0x338]
  100054720  mov     x0, x20
  100054724  mov     x1, x24
  100054728  bl      _objc_msgSend                            ; [x0 detailTextLabel]
  10005472c  mov     x29, x29
  100054730  bl      _objc_retainAutoreleasedReturnValue
  100054734  mov     x26, x0
  100054738  adrp    x8, #0x100418000
  10005473c  nop
  100054740  ldr     x1, [x8, #0xe38]
  100054744  mov     x0, x23
  100054748  mov     x2, x22
  10005474c  bl      _objc_msgSend                            ; [self statusForChallengeWithDict:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]]]
  100054750  mov     x29, x29
  100054754  bl      _objc_retainAutoreleasedReturnValue
  100054758  mov     x23, x0
  10005475c  mov     x0, x26
  100054760  mov     x1, x25
  100054764  mov     x2, x23
  100054768  bl      _objc_msgSend                            ; [[x0 detailTextLabel] setText:[self statusForChallengeWithDict:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]]]]
  10005476c  mov     x0, x23
  100054770  bl      _objc_release
  100054774  mov     x0, x26
  100054778  bl      _objc_release
  10005477c  mov     x0, x20
  100054780  mov     x1, x24
  100054784  bl      _objc_msgSend                            ; [x0 detailTextLabel]
  100054788  mov     x29, x29
  10005478c  bl      _objc_retainAutoreleasedReturnValue
  100054790  mov     x25, x0
  100054794  adrp    x8, #0x100418000
  100054798  nop
  10005479c  ldr     x1, [x8, #0x290]
  1000547a0  bl      _objc_msgSend                            ; [[x0 detailTextLabel] text]
  1000547a4  mov     x29, x29
  1000547a8  bl      _objc_retainAutoreleasedReturnValue
  1000547ac  mov     x26, x0
  1000547b0  adrp    x8, #0x100416000
  1000547b4  nop
  1000547b8  ldr     x1, [x8, #0xf58]
  1000547bc  adrp    x2, #0x1003bd000
  1000547c0  add     x2, x2, #0x9b0                           ; @"locked"
  1000547c4  bl      _objc_msgSend                            ; [[[x0 detailTextLabel] text] isEqualToString:@"locked"]
  1000547c8  mov     x23, x0
  1000547cc  mov     x0, x26
  1000547d0  bl      _objc_release
  1000547d4  mov     x0, x25
  1000547d8  bl      _objc_release
  1000547dc  tbz     w23, #0, loc_100054848                   ; if (!([[[x0 detailTextLabel] text] isEqualToString:@"locked"] & 1))
  1000547e0  mov     x0, x20
  1000547e4  mov     x1, x24
  1000547e8  bl      _objc_msgSend                            ; [x0 detailTextLabel]
  1000547ec  mov     x29, x29
  1000547f0  bl      _objc_retainAutoreleasedReturnValue
  1000547f4  mov     x24, x0
  1000547f8  adrp    x8, #0x10041d000
  1000547fc  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100054800  adrp    x8, #0x100418000
  100054804  nop
  100054808  ldr     x1, [x8, #0xe40]
  10005480c  bl      _objc_msgSend                            ; [UIColor redColor]
  100054810  mov     x29, x29
  100054814  bl      _objc_retainAutoreleasedReturnValue
  100054818  mov     x25, x0
  10005481c  adrp    x8, #0x100418000
  100054820  nop
  100054824  ldr     x1, [x8, #0xe48]
  100054828  mov     x0, x24
  10005482c  mov     x2, x25
  100054830  bl      _objc_msgSend                            ; [[x0 detailTextLabel] setHighlightedTextColor:[UIColor redColor]]
  100054834  mov     x0, x25
  100054838  bl      _objc_release
  10005483c  mov     x0, x24
  100054840  bl      _objc_release
  100054844  b       loc_100054864
loc_100054848:
  100054848  adrp    x8, #0x100416000
  10005484c  nop
  100054850  ldr     x1, [x8, #0xbd0]
  100054854  adrp    x2, #0x1003bd000
  100054858  add     x2, x2, #0x9d0                           ; @"double tap to play this challenge"
  10005485c  mov     x0, x20
  100054860  bl      _objc_msgSend                            ; [x0 setAccessibilityHint:@"double tap to play this challenge"]
loc_100054864:
  100054864  mov     x0, x22
  100054868  bl      _objc_release
  10005486c  mov     x0, x21
  100054870  bl      _objc_release
  100054874  mov     x0, x19
  100054878  bl      _objc_release
  10005487c  mov     x0, x20
  100054880  ldp     x29, x30, [sp, #0x40]
  100054884  ldp     x20, x19, [sp, #0x30]
  100054888  ldp     x22, x21, [sp, #0x20]
  10005488c  ldp     x24, x23, [sp, #0x10]
  100054890  ldp     x26, x25, [sp], #0x50
  100054894  b       _objc_autoreleaseReturnValue
  100054898  mov     x23, x0
  10005489c  b       loc_100054938
  1000548a0  mov     x23, x0
  1000548a4  mov     x0, x22
  1000548a8  b       loc_100054944
  1000548ac  mov     x23, x0
  1000548b0  b       loc_100054948
  1000548b4  mov     x23, x0
  1000548b8  b       loc_100054948
  1000548bc  mov     x23, x0
  1000548c0  b       loc_100054940
  1000548c4  mov     x23, x0
  1000548c8  b       loc_100054930
  1000548cc  mov     x23, x0
  1000548d0  mov     x0, x26
  1000548d4  b       loc_10005492c
  1000548d8  mov     x23, x0
  1000548dc  b       loc_1000548f0
  1000548e0  mov     x1, x23
  1000548e4  mov     x23, x0
  1000548e8  mov     x0, x1
  1000548ec  bl      _objc_release
loc_1000548f0:
  1000548f0  mov     x0, x26
  1000548f4  bl      _objc_release
  1000548f8  b       loc_100054938
  1000548fc  mov     x23, x0
  100054900  b       loc_100054910
  100054904  mov     x23, x0
  100054908  mov     x0, x26
  10005490c  bl      _objc_release
loc_100054910:
  100054910  mov     x0, x25
  100054914  bl      _objc_release
  100054918  b       loc_100054938
  10005491c  mov     x23, x0
  100054920  b       loc_100054930
  100054924  mov     x23, x0
  100054928  mov     x0, x25
loc_10005492c:
  10005492c  bl      _objc_release
loc_100054930:
  100054930  mov     x0, x24
  100054934  bl      _objc_release
loc_100054938:
  100054938  mov     x0, x22
  10005493c  bl      _objc_release
loc_100054940:
  100054940  mov     x0, x21
loc_100054944:
  100054944  bl      _objc_release
loc_100054948:
  100054948  mov     x0, x20
  10005494c  bl      _objc_release
  100054950  mov     x0, x19
  100054954  bl      _objc_release
  100054958  mov     x0, x23
  10005495c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController statusForChallengeWithDict:]
; address 0x100054960  size 1580  kind objc
; ======================================================================
  100054960  stp     x28, x27, [sp, #-0x60]!
  100054964  stp     x26, x25, [sp, #0x10]
  100054968  stp     x24, x23, [sp, #0x20]
  10005496c  stp     x22, x21, [sp, #0x30]
  100054970  stp     x20, x19, [sp, #0x40]
  100054974  stp     x29, x30, [sp, #0x50]
  100054978  add     x29, sp, #0x50
  10005497c  sub     sp, sp, #0x1c0
  100054980  adrp    x8, #0x1003b0000
  100054984  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100054988  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10005498c  stur    x8, [x29, #-0x58]
  100054990  mov     x0, x2
  100054994  bl      _objc_retain
  100054998  mov     x26, x0
  10005499c  stp     xzr, xzr, [sp, #0xa8]
  1000549a0  stp     xzr, xzr, [sp, #0x98]
  1000549a4  stp     xzr, xzr, [sp, #0x88]
  1000549a8  stp     xzr, xzr, [sp, #0x78]
  1000549ac  adrp    x8, #0x100417000
  1000549b0  nop
  1000549b4  ldr     x1, [x8, #0x40]
  1000549b8  str     x1, [sp, #0x30]
  1000549bc  adrp    x2, #0x1003b9000
  1000549c0  add     x2, x2, #0xf70                           ; @"weapons"
  1000549c4  bl      _objc_msgSend                            ; [arg1 objectForKey:@"weapons"]
  1000549c8  str     x26, [sp, #0x20]
  1000549cc  mov     x29, x29
  1000549d0  bl      _objc_retainAutoreleasedReturnValue
  1000549d4  str     x0, [sp, #0x28]
  1000549d8  adrp    x8, #0x100416000
  1000549dc  nop
  1000549e0  ldr     x1, [x8, #0xe00]
  1000549e4  str     x1, [sp, #0x18]
  1000549e8  add     x2, sp, #0x78
  1000549ec  sub     x3, x29, #0xd8
  1000549f0  mov     w4, #0x10
  1000549f4  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16]
  1000549f8  mov     x23, x0
  1000549fc  cbz     x23, loc_100054ad8                       ; if ([[arg1 objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16] == 0)
  100054a00  ldr     x8, [sp, #0x88]
  100054a04  ldr     x21, [x8]
  100054a08  adrp    x8, #0x100416000
  100054a0c  nop
  100054a10  ldr     x24, [x8, #0xec8]
  100054a14  adrp    x8, #0x100417000
  100054a18  add     x8, x8, #0x1d8                           ; &@selector(hasUnlockedWeaponWithName:)
  100054a1c  ldr     x25, [x8]
  100054a20  adrp    x26, #0x1003b9000
  100054a24  add     x26, x26, #0xdb0                         ; @"name"
loc_100054a28:
  100054a28  mov     x20, #0
loc_100054a2c:
  100054a2c  ldr     x8, [sp, #0x88]
  100054a30  ldr     x8, [x8]
  100054a34  cmp     x8, x21
  100054a38  b.eq    loc_100054a44                            ; if (x8 == x21)
  100054a3c  ldr     x0, [sp, #0x28]
  100054a40  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKey:@"weapons"])
loc_100054a44:
  100054a44  ldr     x8, [sp, #0x80]
  100054a48  ldr     x27, [x8, x20, lsl #3]
  100054a4c  adrp    x8, #0x10041d000
  100054a50  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100054a54  mov     x1, x24
  100054a58  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100054a5c  mov     x29, x29
  100054a60  bl      _objc_retainAutoreleasedReturnValue
  100054a64  mov     x28, x0
  100054a68  mov     x0, x27
  100054a6c  ldr     x1, [sp, #0x30]
  100054a70  mov     x2, x26
  100054a74  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100054a78  mov     x29, x29
  100054a7c  bl      _objc_retainAutoreleasedReturnValue
  100054a80  mov     x19, x0
  100054a84  mov     x0, x28
  100054a88  mov     x1, x25
  100054a8c  mov     x2, x19
  100054a90  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  100054a94  mov     x22, x0
  100054a98  mov     x0, x19
  100054a9c  bl      _objc_release
  100054aa0  mov     x0, x28
  100054aa4  bl      _objc_release
  100054aa8  tbz     w22, #0, loc_100054d84                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] & 1))
  100054aac  add     x20, x20, #1
  100054ab0  cmp     x20, x23
  100054ab4  b.lo    loc_100054a2c                            ; if ((x20 + 1) <u [[arg1 objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16])
  100054ab8  add     x2, sp, #0x78
  100054abc  sub     x3, x29, #0xd8
  100054ac0  mov     w4, #0x10
  100054ac4  ldr     x0, [sp, #0x28]
  100054ac8  ldr     x1, [sp, #0x18]
  100054acc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16]
  100054ad0  mov     x23, x0
  100054ad4  cbnz    x23, loc_100054a28                       ; if ([[arg1 objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16] != 0)
loc_100054ad8:
  100054ad8  ldr     x0, [sp, #0x28]
  100054adc  bl      _objc_release
  100054ae0  stp     xzr, xzr, [sp, #0x68]
  100054ae4  stp     xzr, xzr, [sp, #0x58]
  100054ae8  stp     xzr, xzr, [sp, #0x48]
  100054aec  stp     xzr, xzr, [sp, #0x38]
  100054af0  adrp    x2, #0x1003ba000
  100054af4  add     x2, x2, #0xe90                           ; @"challenges_requirement"
  100054af8  ldr     x26, [sp, #0x20]
  100054afc  mov     x0, x26
  100054b00  ldr     x1, [sp, #0x30]
  100054b04  bl      _objc_msgSend                            ; [arg1 objectForKey:@"challenges_requirement"]
  100054b08  mov     x29, x29
  100054b0c  bl      _objc_retainAutoreleasedReturnValue
  100054b10  mov     x21, x0
  100054b14  add     x2, sp, #0x38
  100054b18  add     x3, sp, #0xb8
  100054b1c  mov     w4, #0x10
  100054b20  ldr     x1, [sp, #0x18]
  100054b24  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16]
  100054b28  mov     x23, x0
  100054b2c  cbz     x23, loc_100054bd8                       ; if ([[arg1 objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16] == 0)
  100054b30  ldr     x8, [sp, #0x48]
  100054b34  adrp    x9, #0x100416000
  100054b38  add     x9, x9, #0xdf0                           ; &@selector(sharedChallengeData)
  100054b3c  ldr     x20, [x8]
  100054b40  ldr     x24, [x9]
  100054b44  adrp    x8, #0x100416000
  100054b48  add     x8, x8, #0xdf8                           ; &@selector(hasCompletedChallengeWithName:)
  100054b4c  ldr     x25, [x8]
  100054b50  adrp    x27, #0x10041d000
loc_100054b54:
  100054b54  mov     x28, #0
loc_100054b58:
  100054b58  ldr     x8, [sp, #0x48]
  100054b5c  ldr     x8, [x8]
  100054b60  cmp     x8, x20
  100054b64  b.eq    loc_100054b70                            ; if (x8 == x20)
  100054b68  mov     x0, x21
  100054b6c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKey:@"challenges_requirement"])
loc_100054b70:
  100054b70  ldr     x8, [sp, #0x40]
  100054b74  ldr     x26, [x8, x28, lsl #3]
  100054b78  ldr     x0, [x27, #0xf50]                        ; class ADChallengeData
  100054b7c  mov     x1, x24
  100054b80  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100054b84  mov     x29, x29
  100054b88  bl      _objc_retainAutoreleasedReturnValue
  100054b8c  mov     x19, x0
  100054b90  mov     x1, x25
  100054b94  mov     x2, x26
  100054b98  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2]
  100054b9c  mov     x22, x0
  100054ba0  mov     x0, x19
  100054ba4  bl      _objc_release
  100054ba8  tbz     w22, #0, loc_100054e48                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2] & 1))
  100054bac  add     x28, x28, #1
  100054bb0  cmp     x28, x23
  100054bb4  b.lo    loc_100054b58                            ; if ((x28 + 1) <u [[arg1 objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16])
  100054bb8  add     x2, sp, #0x38
  100054bbc  add     x3, sp, #0xb8
  100054bc0  mov     w4, #0x10
  100054bc4  mov     x0, x21
  100054bc8  ldr     x1, [sp, #0x18]
  100054bcc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16]
  100054bd0  mov     x23, x0
  100054bd4  cbnz    x23, loc_100054b54                       ; if ([[arg1 objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16] != 0)
loc_100054bd8:
  100054bd8  mov     x0, x21
  100054bdc  bl      _objc_release
  100054be0  adrp    x25, #0x10041d000
  100054be4  ldr     x0, [x25, #0xf50]                        ; class ADChallengeData
  100054be8  adrp    x8, #0x100416000
  100054bec  nop
  100054bf0  ldr     x21, [x8, #0xdf0]
  100054bf4  mov     x1, x21
  100054bf8  ldr     x26, [sp, #0x20]
  100054bfc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100054c00  mov     x29, x29
  100054c04  bl      _objc_retainAutoreleasedReturnValue
  100054c08  mov     x23, x0
  100054c0c  adrp    x2, #0x1003b9000
  100054c10  add     x2, x2, #0xef0                           ; @"challenge_id"
  100054c14  mov     x0, x26
  100054c18  ldr     x1, [sp, #0x30]
  100054c1c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"challenge_id"]
  100054c20  mov     x29, x29
  100054c24  bl      _objc_retainAutoreleasedReturnValue
  100054c28  mov     x24, x0
  100054c2c  adrp    x8, #0x100416000
  100054c30  nop
  100054c34  ldr     x1, [x8, #0xdf8]
  100054c38  mov     x0, x23
  100054c3c  mov     x2, x24
  100054c40  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[arg1 objectForKey:@"challenge_id"]]
  100054c44  mov     x22, x0
  100054c48  mov     x0, x24
  100054c4c  bl      _objc_release
  100054c50  mov     x0, x23
  100054c54  bl      _objc_release
  100054c58  ldr     x0, [x25, #0xf50]                        ; class ADChallengeData
  100054c5c  mov     x1, x21
  100054c60  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100054c64  mov     x29, x29
  100054c68  bl      _objc_retainAutoreleasedReturnValue
  100054c6c  mov     x23, x0
  100054c70  adrp    x2, #0x1003b9000
  100054c74  add     x2, x2, #0xef0                           ; @"challenge_id"
  100054c78  mov     x0, x26
  100054c7c  ldr     x1, [sp, #0x30]
  100054c80  bl      _objc_msgSend                            ; [arg1 objectForKey:@"challenge_id"]
  100054c84  mov     x29, x29
  100054c88  bl      _objc_retainAutoreleasedReturnValue
  100054c8c  mov     x24, x0
  100054c90  adrp    x8, #0x100417000
  100054c94  nop
  100054c98  ldr     x1, [x8, #0xa08]
  100054c9c  mov     x0, x23
  100054ca0  mov     x2, x24
  100054ca4  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[arg1 objectForKey:@"challenge_id"]]
  100054ca8  mov     x19, x0
  100054cac  mov     x0, x24
  100054cb0  bl      _objc_release
  100054cb4  mov     x0, x23
  100054cb8  bl      _objc_release
  100054cbc  cmp     w22, #0
  100054cc0  mov     w8, #1
  100054cc4  cinc    w8, w8, ne                               ; t1 = ([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[arg1 objectForKey:@"challenge_id"]] != 0 ? 1 + 1 : 1)
  100054cc8  cmp     w19, #0
  100054ccc  csel    w20, w8, w22, ne                         ; t2 = ([[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[arg1 objectForKey:@"challenge_id"]] != 0 ? t1 : [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[arg1 objectForKey:@"challenge_id"]])
  100054cd0  ldr     x0, [x25, #0xf50]                        ; class ADChallengeData
  100054cd4  mov     x1, x21
  100054cd8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100054cdc  mov     x29, x29
  100054ce0  bl      _objc_retainAutoreleasedReturnValue
  100054ce4  mov     x21, x0
  100054ce8  adrp    x2, #0x1003b9000
  100054cec  add     x2, x2, #0xef0                           ; @"challenge_id"
  100054cf0  mov     x0, x26
  100054cf4  ldr     x1, [sp, #0x30]
  100054cf8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"challenge_id"]
  100054cfc  mov     x29, x29
  100054d00  bl      _objc_retainAutoreleasedReturnValue
  100054d04  mov     x22, x0
  100054d08  adrp    x8, #0x100417000
  100054d0c  nop
  100054d10  ldr     x1, [x8, #0xa10]
  100054d14  mov     x0, x21
  100054d18  mov     x2, x22
  100054d1c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[arg1 objectForKey:@"challenge_id"]]
  100054d20  mov     x19, x0
  100054d24  mov     x0, x22
  100054d28  bl      _objc_release
  100054d2c  mov     x0, x21
  100054d30  bl      _objc_release
  100054d34  add     w8, w19, w20                             ; t3 = ([[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[arg1 objectForKey:@"challenge_id"]] + t2)
  100054d38  adrp    x9, #0x10041d000
  100054d3c  adrp    x10, #0x1003b9000
  100054d40  add     x10, x10, #0x870                         ; @""
  100054d44  adrp    x11, #0x1003bc000
  100054d48  add     x11, x11, #0x530                         ; @"s"
  100054d4c  ldr     x0, [x9, #0xf78]                         ; class NSString
  100054d50  cmp     w8, #1
  100054d54  csel    x9, x11, x10, gt
  100054d58  adrp    x10, #0x100416000
  100054d5c  nop
  100054d60  ldr     x1, [x10, #0xee8]
  100054d64  stp     x8, x9, [sp]
  100054d68  adrp    x2, #0x1003bd000
  100054d6c  add     x2, x2, #0xa10                           ; @"%i star%@ unlocked"
  100054d70  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i star%@ unlocked", t3, (t3 > 1 ? @"s" : @"")]
  100054d74  mov     x29, x29
  100054d78  bl      _objc_retainAutoreleasedReturnValue
  100054d7c  mov     x20, x0
  100054d80  b       loc_100054e64
loc_100054d84:
  100054d84  adrp    x8, #0x10041d000
  100054d88  ldr     x23, [x8, #0xf78]                        ; class NSString
  100054d8c  nop
  100054d90  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100054d94  adrp    x8, #0x100417000
  100054d98  nop
  100054d9c  ldr     x1, [x8, #0xa0]
  100054da0  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100054da4  mov     x29, x29
  100054da8  bl      _objc_retainAutoreleasedReturnValue
  100054dac  mov     x22, x0
  100054db0  adrp    x2, #0x1003b9000
  100054db4  add     x2, x2, #0xdb0                           ; @"name"
  100054db8  mov     x0, x27
  100054dbc  ldr     x1, [sp, #0x30]
  100054dc0  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100054dc4  mov     x29, x29
  100054dc8  bl      _objc_retainAutoreleasedReturnValue
  100054dcc  mov     x24, x0
  100054dd0  adrp    x8, #0x100417000
  100054dd4  nop
  100054dd8  ldr     x1, [x8, #0x1f0]
  100054ddc  mov     x0, x22
  100054de0  mov     x2, x24
  100054de4  ldr     x26, [sp, #0x20]
  100054de8  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[x0 objectForKey:@"name"]]
  100054dec  mov     x29, x29
  100054df0  bl      _objc_retainAutoreleasedReturnValue
  100054df4  mov     x25, x0
  100054df8  adrp    x8, #0x100416000
  100054dfc  nop
  100054e00  ldr     x1, [x8, #0xee8]
  100054e04  str     x25, [sp]
  100054e08  adrp    x2, #0x1003bd000
  100054e0c  add     x2, x2, #0x9f0                           ; @"%@ required, double tap to go to armory"
  100054e10  mov     x0, x23
  100054e14  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ required, double tap to go to armory", [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[x0 objectForK…]
  100054e18  mov     x29, x29
  100054e1c  bl      _objc_retainAutoreleasedReturnValue
  100054e20  mov     x20, x0
  100054e24  mov     x0, x25
  100054e28  bl      _objc_release
  100054e2c  mov     x0, x24
  100054e30  bl      _objc_release
  100054e34  mov     x0, x22
  100054e38  bl      _objc_release
  100054e3c  ldr     x0, [sp, #0x28]
  100054e40  bl      _objc_release
  100054e44  b       loc_100054e64
loc_100054e48:
  100054e48  adrp    x20, #0x1003bd000
  100054e4c  add     x20, x20, #0x9b0                         ; @"locked"
  100054e50  mov     x0, x20
  100054e54  bl      _objc_retain
  100054e58  mov     x0, x21
  100054e5c  bl      _objc_release
  100054e60  ldr     x26, [sp, #0x20]
loc_100054e64:
  100054e64  adrp    x19, #0x1003b0000
  100054e68  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  100054e6c  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100054e70  mov     x0, x26
  100054e74  bl      _objc_release
  100054e78  ldur    x8, [x29, #-0x58]
  100054e7c  sub     x8, x19, x8
  100054e80  cbnz    x8, loc_100054ea8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100054e84  mov     x0, x20
  100054e88  sub     sp, x29, #0x50
  100054e8c  ldp     x29, x30, [sp, #0x50]
  100054e90  ldp     x20, x19, [sp, #0x40]
  100054e94  ldp     x22, x21, [sp, #0x30]
  100054e98  ldp     x24, x23, [sp, #0x20]
  100054e9c  ldp     x26, x25, [sp, #0x10]
  100054ea0  ldp     x28, x27, [sp], #0x60
  100054ea4  b       _objc_autoreleaseReturnValue
loc_100054ea8:
  100054ea8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100054eac:
  100054eac  mov     x20, x0
  100054eb0  b       loc_100054ed0
  100054eb4  mov     x20, x0
  100054eb8  b       loc_100054ec8
  100054ebc  mov     x20, x0
  100054ec0  mov     x0, x19
  100054ec4  bl      _objc_release
loc_100054ec8:
  100054ec8  mov     x0, x28
loc_100054ecc:
  100054ecc  bl      _objc_release
loc_100054ed0:
  100054ed0  ldr     x0, [sp, #0x28]
  100054ed4  bl      _objc_release
  100054ed8  b       loc_100054ef8
loc_100054edc:
  100054edc  mov     x20, x0
  100054ee0  b       loc_100054ef0
  100054ee4  mov     x20, x0
  100054ee8  mov     x0, x19
loc_100054eec:
  100054eec  bl      _objc_release
loc_100054ef0:
  100054ef0  mov     x0, x21
  100054ef4  bl      _objc_release
loc_100054ef8:
  100054ef8  ldr     x0, [sp, #0x20]
  100054efc  bl      _objc_release
  100054f00  mov     x0, x20
  100054f04  bl      __Unwind_Resume                          ; Unwind_Resume()
  100054f08  str     x26, [sp, #0x20]
  100054f0c  mov     x20, x0
  100054f10  b       loc_100054ef8
  100054f14  b       loc_100054eac
  100054f18  mov     x20, x0
  100054f1c  b       loc_100054f3c
  100054f20  mov     x20, x0
  100054f24  b       loc_100054f34
  100054f28  mov     x20, x0
  100054f2c  mov     x0, x25
  100054f30  bl      _objc_release
loc_100054f34:
  100054f34  mov     x0, x24
  100054f38  bl      _objc_release
loc_100054f3c:
  100054f3c  mov     x0, x22
  100054f40  b       loc_100054ecc
  100054f44  b       loc_100054eac
  100054f48  b       loc_100054edc
  100054f4c  b       loc_100054edc
  100054f50  mov     x20, x0
  100054f54  b       loc_100054f70
  100054f58  b       loc_100054f64
  100054f5c  mov     x20, x0
  100054f60  b       loc_100054f70
loc_100054f64:
  100054f64  mov     x20, x0
  100054f68  mov     x0, x24
  100054f6c  bl      _objc_release
loc_100054f70:
  100054f70  mov     x0, x23
  100054f74  bl      _objc_release
  100054f78  b       loc_100054ef8
  100054f7c  b       loc_100054edc
  100054f80  mov     x20, x0
  100054f84  mov     x0, x22
  100054f88  b       loc_100054eec

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController tableView:didSelectRowAtIndexPath:]
; address 0x100054f8c  size 1364  kind objc
; ======================================================================
  100054f8c  stp     x28, x27, [sp, #-0x60]!
  100054f90  stp     x26, x25, [sp, #0x10]
  100054f94  stp     x24, x23, [sp, #0x20]
  100054f98  stp     x22, x21, [sp, #0x30]
  100054f9c  stp     x20, x19, [sp, #0x40]
  100054fa0  stp     x29, x30, [sp, #0x50]
  100054fa4  add     x29, sp, #0x50
  100054fa8  sub     sp, sp, #0x1c0
  100054fac  mov     x21, x0
  100054fb0  adrp    x8, #0x1003b0000
  100054fb4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100054fb8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100054fbc  stur    x8, [x29, #-0x58]
  100054fc0  mov     x0, x3
  100054fc4  bl      _objc_retain
  100054fc8  mov     x20, x0
  100054fcc  adrp    x8, #0x100418000
  100054fd0  nop
  100054fd4  ldr     x1, [x8, #0xe30]
  100054fd8  mov     x0, x21
  100054fdc  bl      _objc_msgSend                            ; [self challengeFiles]
  100054fe0  mov     x29, x29
  100054fe4  bl      _objc_retainAutoreleasedReturnValue
  100054fe8  mov     x19, x0
  100054fec  adrp    x8, #0x100417000
  100054ff0  nop
  100054ff4  ldr     x1, [x8, #0x350]
  100054ff8  mov     x0, x20
  100054ffc  bl      _objc_msgSend                            ; [arg2 row]
  100055000  mov     x2, x0
  100055004  adrp    x8, #0x100416000
  100055008  nop
  10005500c  ldr     x1, [x8, #0xc30]
  100055010  mov     x0, x19
  100055014  bl      _objc_msgSend                            ; [[self challengeFiles] objectAtIndex:[arg2 row]]
  100055018  str     x20, [sp, #0x18]
  10005501c  mov     x29, x29
  100055020  bl      _objc_retainAutoreleasedReturnValue
  100055024  mov     x20, x0
  100055028  str     x20, [sp, #0x10]
  10005502c  mov     x0, x19
  100055030  bl      _objc_release
  100055034  adrp    x8, #0x100417000
  100055038  nop
  10005503c  ldr     x1, [x8, #0xa00]
  100055040  mov     x0, x21
  100055044  mov     x2, x20
  100055048  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]]
  10005504c  mov     x29, x29
  100055050  bl      _objc_retainAutoreleasedReturnValue
  100055054  mov     x28, x0
  100055058  stp     xzr, xzr, [sp, #0xa8]
  10005505c  stp     xzr, xzr, [sp, #0x98]
  100055060  stp     xzr, xzr, [sp, #0x88]
  100055064  stp     xzr, xzr, [sp, #0x78]
  100055068  adrp    x8, #0x100417000
  10005506c  nop
  100055070  ldr     x25, [x8, #0x40]
  100055074  adrp    x2, #0x1003b9000
  100055078  add     x2, x2, #0xf70                           ; @"weapons"
  10005507c  mov     x1, x25
  100055080  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"]
  100055084  str     x21, [sp, #8]
  100055088  str     x28, [sp, #0x20]
  10005508c  mov     x29, x29
  100055090  bl      _objc_retainAutoreleasedReturnValue
  100055094  str     x0, [sp, #0x30]
  100055098  adrp    x8, #0x100416000
  10005509c  nop
  1000550a0  ldr     x1, [x8, #0xe00]
  1000550a4  str     x1, [sp, #0x28]
  1000550a8  add     x2, sp, #0x78
  1000550ac  sub     x3, x29, #0xd8
  1000550b0  mov     w4, #0x10
  1000550b4  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16]
  1000550b8  mov     x26, x0
  1000550bc  cbz     x26, loc_100055194                       ; if ([[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16] == 0)
  1000550c0  ldr     x8, [sp, #0x88]
  1000550c4  ldr     x22, [x8]
  1000550c8  adrp    x8, #0x100416000
  1000550cc  nop
  1000550d0  ldr     x27, [x8, #0xec8]
  1000550d4  adrp    x8, #0x100417000
  1000550d8  add     x8, x8, #0x1d8                           ; &@selector(hasUnlockedWeaponWithName:)
  1000550dc  ldr     x28, [x8]
  1000550e0  adrp    x19, #0x1003b9000
  1000550e4  add     x19, x19, #0xdb0                         ; @"name"
loc_1000550e8:
  1000550e8  mov     x24, #0
loc_1000550ec:
  1000550ec  ldr     x8, [sp, #0x88]
  1000550f0  ldr     x8, [x8]
  1000550f4  cmp     x8, x22
  1000550f8  b.eq    loc_100055104                            ; if (x8 == x22)
  1000550fc  ldr     x0, [sp, #0x30]
  100055100  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"])
loc_100055104:
  100055104  ldr     x8, [sp, #0x80]
  100055108  ldr     x21, [x8, x24, lsl #3]
  10005510c  adrp    x8, #0x10041d000
  100055110  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100055114  mov     x1, x27
  100055118  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10005511c  mov     x29, x29
  100055120  bl      _objc_retainAutoreleasedReturnValue
  100055124  mov     x20, x0
  100055128  mov     x0, x21
  10005512c  mov     x1, x25
  100055130  mov     x2, x19
  100055134  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100055138  mov     x29, x29
  10005513c  bl      _objc_retainAutoreleasedReturnValue
  100055140  mov     x21, x0
  100055144  mov     x0, x20
  100055148  mov     x1, x28
  10005514c  mov     x2, x21
  100055150  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  100055154  mov     x23, x0
  100055158  mov     x0, x21
  10005515c  bl      _objc_release
  100055160  mov     x0, x20
  100055164  bl      _objc_release
  100055168  tbz     w23, #0, loc_100055314                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] & 1))
  10005516c  add     x24, x24, #1
  100055170  cmp     x24, x26
  100055174  b.lo    loc_1000550ec                            ; if ((x24 + 1) <u [[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"] countB…)
  100055178  add     x2, sp, #0x78
  10005517c  sub     x3, x29, #0xd8
  100055180  mov     w4, #0x10
  100055184  ldp     x1, x0, [sp, #0x28]
  100055188  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16]
  10005518c  mov     x26, x0
  100055190  cbnz    x26, loc_1000550e8                       ; if ([[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16] != 0)
loc_100055194:
  100055194  ldr     x0, [sp, #0x30]
  100055198  bl      _objc_release
  10005519c  stp     xzr, xzr, [sp, #0x68]
  1000551a0  stp     xzr, xzr, [sp, #0x58]
  1000551a4  stp     xzr, xzr, [sp, #0x48]
  1000551a8  stp     xzr, xzr, [sp, #0x38]
  1000551ac  adrp    x2, #0x1003ba000
  1000551b0  add     x2, x2, #0xe90                           ; @"challenges_requirement"
  1000551b4  ldr     x28, [sp, #0x20]
  1000551b8  mov     x0, x28
  1000551bc  mov     x1, x25
  1000551c0  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requirement"]
  1000551c4  mov     x29, x29
  1000551c8  bl      _objc_retainAutoreleasedReturnValue
  1000551cc  mov     x22, x0
  1000551d0  add     x2, sp, #0x38
  1000551d4  add     x3, sp, #0xb8
  1000551d8  mov     w4, #0x10
  1000551dc  ldr     x1, [sp, #0x28]
  1000551e0  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16]
  1000551e4  mov     x19, x0
  1000551e8  cbz     x19, loc_100055294                       ; if ([[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16] == 0)
  1000551ec  ldr     x8, [sp, #0x48]
  1000551f0  adrp    x9, #0x100416000
  1000551f4  add     x9, x9, #0xdf0                           ; &@selector(sharedChallengeData)
  1000551f8  ldr     x23, [x8]
  1000551fc  ldr     x24, [x9]
  100055200  adrp    x8, #0x100416000
  100055204  add     x8, x8, #0xdf8                           ; &@selector(hasCompletedChallengeWithName:)
  100055208  ldr     x25, [x8]
  10005520c  adrp    x26, #0x10041d000
loc_100055210:
  100055210  mov     x27, #0
loc_100055214:
  100055214  ldr     x8, [sp, #0x48]
  100055218  ldr     x8, [x8]
  10005521c  cmp     x8, x23
  100055220  b.eq    loc_10005522c                            ; if (x8 == x23)
  100055224  mov     x0, x22
  100055228  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requirement"])
loc_10005522c:
  10005522c  ldr     x8, [sp, #0x40]
  100055230  ldr     x20, [x8, x27, lsl #3]
  100055234  ldr     x0, [x26, #0xf50]                        ; class ADChallengeData
  100055238  mov     x1, x24
  10005523c  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100055240  mov     x29, x29
  100055244  bl      _objc_retainAutoreleasedReturnValue
  100055248  mov     x21, x0
  10005524c  mov     x1, x25
  100055250  mov     x2, x20
  100055254  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2]
  100055258  mov     x20, x0
  10005525c  mov     x0, x21
  100055260  bl      _objc_release
  100055264  tbz     w20, #0, loc_1000553a0                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2] & 1))
  100055268  add     x27, x27, #1
  10005526c  cmp     x27, x19
  100055270  b.lo    loc_100055214                            ; if ((x27 + 1) <u [[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requi…)
  100055274  add     x2, sp, #0x38
  100055278  add     x3, sp, #0xb8
  10005527c  mov     w4, #0x10
  100055280  mov     x0, x22
  100055284  ldr     x1, [sp, #0x28]
  100055288  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16]
  10005528c  mov     x19, x0
  100055290  cbnz    x19, loc_100055210                       ; if ([[[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16] != 0)
loc_100055294:
  100055294  mov     x0, x22
  100055298  bl      _objc_release
  10005529c  adrp    x8, #0x10041d000
  1000552a0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000552a4  adrp    x8, #0x100416000
  1000552a8  nop
  1000552ac  ldr     x1, [x8, #0xb28]
  1000552b0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000552b4  mov     x29, x29
  1000552b8  bl      _objc_retainAutoreleasedReturnValue
  1000552bc  mov     x19, x0
  1000552c0  adrp    x8, #0x100416000
  1000552c4  nop
  1000552c8  ldr     x1, [x8, #0xc18]
  1000552cc  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000552d0  adrp    x22, #0x1003b0000
  1000552d4  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000552d8  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000552dc  mov     x29, x29
  1000552e0  bl      _objc_retainAutoreleasedReturnValue
  1000552e4  mov     x20, x0
  1000552e8  adrp    x8, #0x100418000
  1000552ec  nop
  1000552f0  ldr     x1, [x8, #0xe28]
  1000552f4  mov     x2, x28
  1000552f8  ldr     x21, [sp, #0x18]
  1000552fc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToAccessibleChallengeOverviewWithDictionary:[self dictionaryForChallengeWithName:[[self challengeFiles] objectAtIndex:[arg2 row]]]]
  100055300  mov     x0, x20
  100055304  bl      _objc_release
  100055308  mov     x0, x19
  10005530c  bl      _objc_release
  100055310  b       loc_1000553b8
loc_100055314:
  100055314  adrp    x8, #0x10041d000
  100055318  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10005531c  adrp    x8, #0x100416000
  100055320  nop
  100055324  ldr     x1, [x8, #0xb28]
  100055328  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10005532c  mov     x29, x29
  100055330  bl      _objc_retainAutoreleasedReturnValue
  100055334  mov     x19, x0
  100055338  adrp    x8, #0x100416000
  10005533c  nop
  100055340  ldr     x1, [x8, #0xc18]
  100055344  ldr     x28, [sp, #0x20]
  100055348  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10005534c  ldr     x21, [sp, #8]
  100055350  mov     x29, x29
  100055354  bl      _objc_retainAutoreleasedReturnValue
  100055358  mov     x20, x0
  10005535c  adrp    x8, #0x100417000
  100055360  nop
  100055364  ldr     x1, [x8, #0x988]
  100055368  mov     w3, #0
  10005536c  mov     x2, x21
  100055370  ldr     x21, [sp, #0x18]
  100055374  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToArmoryFromVC:self EnableLoadOut:0]
  100055378  adrp    x22, #0x1003b0000
  10005537c  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  100055380  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  100055384  mov     x0, x20
  100055388  bl      _objc_release
  10005538c  mov     x0, x19
  100055390  bl      _objc_release
  100055394  ldr     x0, [sp, #0x30]
  100055398  bl      _objc_release
  10005539c  b       loc_1000553b8
loc_1000553a0:
  1000553a0  mov     x0, x22
  1000553a4  bl      _objc_release
  1000553a8  ldr     x21, [sp, #0x18]
  1000553ac  adrp    x22, #0x1003b0000
  1000553b0  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000553b4  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
loc_1000553b8:
  1000553b8  mov     x0, x28
  1000553bc  bl      _objc_release
  1000553c0  ldr     x0, [sp, #0x10]
  1000553c4  bl      _objc_release
  1000553c8  mov     x0, x21
  1000553cc  bl      _objc_release
  1000553d0  ldur    x8, [x29, #-0x58]
  1000553d4  sub     x8, x22, x8
  1000553d8  cbnz    x8, loc_1000553fc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000553dc  sub     sp, x29, #0x50
  1000553e0  ldp     x29, x30, [sp, #0x50]
  1000553e4  ldp     x20, x19, [sp, #0x40]
  1000553e8  ldp     x22, x21, [sp, #0x30]
  1000553ec  ldp     x24, x23, [sp, #0x20]
  1000553f0  ldp     x26, x25, [sp, #0x10]
  1000553f4  ldp     x28, x27, [sp], #0x60
  1000553f8  ret
loc_1000553fc:
  1000553fc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100055400:
  100055400  mov     x23, x0
  100055404  b       loc_100055424
  100055408  mov     x23, x0
  10005540c  b       loc_10005541c
  100055410  mov     x23, x0
  100055414  mov     x0, x21
  100055418  bl      _objc_release
loc_10005541c:
  10005541c  mov     x0, x20
loc_100055420:
  100055420  bl      _objc_release
loc_100055424:
  100055424  ldr     x0, [sp, #0x30]
  100055428  b       loc_100055444
loc_10005542c:
  10005542c  mov     x23, x0
  100055430  b       loc_100055440
  100055434  mov     x23, x0
  100055438  mov     x0, x21
  10005543c  bl      _objc_release
loc_100055440:
  100055440  mov     x0, x22
loc_100055444:
  100055444  bl      _objc_release
loc_100055448:
  100055448  ldr     x0, [sp, #0x20]
  10005544c  bl      _objc_release
loc_100055450:
  100055450  ldr     x0, [sp, #0x10]
loc_100055454:
  100055454  bl      _objc_release
loc_100055458:
  100055458  ldr     x0, [sp, #0x18]
  10005545c  bl      _objc_release
  100055460  mov     x0, x23
  100055464  bl      __Unwind_Resume                          ; Unwind_Resume()
  100055468  str     x20, [sp, #0x18]
  10005546c  mov     x23, x0
  100055470  mov     x0, x19
  100055474  b       loc_100055454
  100055478  b       loc_100055400
  10005547c  str     x28, [sp, #0x20]
  100055480  mov     x23, x0
  100055484  b       loc_100055448
  100055488  str     x20, [sp, #0x18]
  10005548c  mov     x23, x0
  100055490  b       loc_100055458
  100055494  mov     x23, x0
  100055498  b       loc_100055450
  10005549c  mov     x23, x0
  1000554a0  b       loc_1000554b0
  1000554a4  mov     x23, x0
  1000554a8  mov     x0, x20
  1000554ac  bl      _objc_release
loc_1000554b0:
  1000554b0  mov     x0, x19
  1000554b4  b       loc_100055420
  1000554b8  b       loc_100055400
  1000554bc  b       loc_10005542c
  1000554c0  b       loc_10005542c
  1000554c4  mov     x23, x0
  1000554c8  b       loc_1000554d8
  1000554cc  mov     x23, x0
  1000554d0  mov     x0, x20
  1000554d4  bl      _objc_release
loc_1000554d8:
  1000554d8  mov     x0, x19
  1000554dc  b       loc_100055444

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController viewWillLayoutSubviews]
; address 0x1000554e0  size 92  kind objc
; ======================================================================
  1000554e0  stp     x20, x19, [sp, #-0x20]!
  1000554e4  stp     x29, x30, [sp, #0x10]
  1000554e8  add     x29, sp, #0x10
  1000554ec  adrp    x8, #0x100417000
  1000554f0  nop
  1000554f4  ldr     x1, [x8, #0x2d0]
  1000554f8  bl      _objc_msgSend                            ; [self tableView]
  1000554fc  mov     x29, x29
  100055500  bl      _objc_retainAutoreleasedReturnValue
  100055504  mov     x19, x0
  100055508  adrp    x8, #0x100417000
  10005550c  nop
  100055510  ldr     x1, [x8, #0xb18]
  100055514  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  100055518  mov     x0, x19
  10005551c  ldp     x29, x30, [sp, #0x10]
  100055520  ldp     x20, x19, [sp], #0x20
  100055524  b       _objc_release
  100055528  mov     x20, x0
  10005552c  mov     x0, x19
  100055530  bl      _objc_release
  100055534  mov     x0, x20
  100055538  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController tableView]
; address 0x10005553c  size 16  kind objc
; ======================================================================
  10005553c  adrp    x8, #0x10041f000
  100055540  ldrsw   x8, [x8, #0xae4]                         ; ivar offset Accessible_ADChallengeSelectorViewController._tableView (+0x148)
  100055544  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  100055548  ret

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController setTableView:]
; address 0x10005554c  size 56  kind objc
; ======================================================================
  10005554c  stp     x20, x19, [sp, #-0x20]!
  100055550  stp     x29, x30, [sp, #0x10]
  100055554  add     x29, sp, #0x10
  100055558  mov     x19, x0
  10005555c  adrp    x8, #0x10041f000
  100055560  ldrsw   x20, [x8, #0xae4]                        ; ivar offset Accessible_ADChallengeSelectorViewController._tableView (+0x148)
  100055564  mov     x0, x2
  100055568  bl      _objc_retain
  10005556c  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  100055570  str     x0, [x19, x20]                           ; self->_tableView = arg1
  100055574  mov     x0, x8
  100055578  ldp     x29, x30, [sp, #0x10]
  10005557c  ldp     x20, x19, [sp], #0x20
  100055580  b       _objc_release

; ======================================================================
; -[Accessible_ADChallengeSelectorViewController .cxx_destruct]
; address 0x100055584  size 64  kind objc
; ======================================================================
  100055584  stp     x20, x19, [sp, #-0x20]!
  100055588  stp     x29, x30, [sp, #0x10]
  10005558c  add     x29, sp, #0x10
  100055590  mov     x19, x0
  100055594  adrp    x8, #0x10041f000
  100055598  ldrsw   x8, [x8, #0xae4]                         ; ivar offset Accessible_ADChallengeSelectorViewController._tableView (+0x148)
  10005559c  add     x0, x19, x8
  1000555a0  mov     x1, #0
  1000555a4  bl      _objc_storeStrong
  1000555a8  mov     x1, #0
  1000555ac  adrp    x8, #0x10041f000
  1000555b0  ldrsw   x8, [x8, #0xae0]                         ; ivar offset Accessible_ADChallengeSelectorViewController.challengeToLoad (+0x140)
  1000555b4  add     x0, x19, x8
  1000555b8  ldp     x29, x30, [sp, #0x10]
  1000555bc  ldp     x20, x19, [sp], #0x20
  1000555c0  b       _objc_storeStrong
