// unit ADStatsPortalViewController — 16 functions
//   0x1000c9010     772  -[ADStatsPortalViewController viewDidLoad]
//   0x1000c9314     472  -[ADStatsPortalViewController loadView]
//   0x1000c94ec      60  -[ADStatsPortalViewController didReceiveMemoryWarning]
//   0x1000c9528     104  -[ADStatsPortalViewController backButtonPressed]
//   0x1000c9590       4  -[ADStatsPortalViewController backButtonPressed]_block_invoke
//   0x1000c9594     252  -[ADStatsPortalViewController playSound]
//   0x1000c9690     444  -[ADStatsPortalViewController buttonPressed:]
//   0x1000c984c      16  -[ADStatsPortalViewController zombipedia]
//   0x1000c985c      56  -[ADStatsPortalViewController setZombipedia:]
//   0x1000c9894      16  -[ADStatsPortalViewController stats]
//   0x1000c98a4      56  -[ADStatsPortalViewController setStats:]
//   0x1000c98dc      16  -[ADStatsPortalViewController moreGames]
//   0x1000c98ec      56  -[ADStatsPortalViewController setMoreGames:]
//   0x1000c9924      16  -[ADStatsPortalViewController credits]
//   0x1000c9934      56  -[ADStatsPortalViewController setCredits:]
//   0x1000c996c     104  -[ADStatsPortalViewController .cxx_destruct]

; ======================================================================
; -[ADStatsPortalViewController viewDidLoad]
; address 0x1000c9010  size 772  kind objc
; ======================================================================
  1000c9010  stp     x22, x21, [sp, #-0x30]!
  1000c9014  stp     x20, x19, [sp, #0x10]
  1000c9018  stp     x29, x30, [sp, #0x20]
  1000c901c  add     x29, sp, #0x20
  1000c9020  sub     sp, sp, #0x10
  1000c9024  mov     x19, x0
  1000c9028  str     x19, [sp]
  1000c902c  adrp    x8, #0x10041e000
  1000c9030  ldr     x8, [x8, #0xfb0]
  1000c9034  str     x8, [sp, #8]
  1000c9038  adrp    x8, #0x100416000
  1000c903c  nop
  1000c9040  ldr     x1, [x8, #0xb48]
  1000c9044  mov     x0, sp
  1000c9048  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000c904c  adrp    x8, #0x100417000
  1000c9050  nop
  1000c9054  ldr     x20, [x8, #0x2a8]
  1000c9058  mov     x0, x19
  1000c905c  mov     x1, x20
  1000c9060  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9064  mov     x29, x29
  1000c9068  bl      _objc_retainAutoreleasedReturnValue
  1000c906c  mov     x21, x0
  1000c9070  adrp    x8, #0x100417000
  1000c9074  nop
  1000c9078  ldr     x1, [x8, #0x2b0]
  1000c907c  mov     w2, #0
  1000c9080  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:0]
  1000c9084  mov     x0, x21
  1000c9088  bl      _objc_release
  1000c908c  mov     x0, x19
  1000c9090  mov     x1, x20
  1000c9094  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9098  mov     x29, x29
  1000c909c  bl      _objc_retainAutoreleasedReturnValue
  1000c90a0  mov     x21, x0
  1000c90a4  adrp    x8, #0x100417000
  1000c90a8  nop
  1000c90ac  ldr     x1, [x8, #0x2b8]
  1000c90b0  mov     w2, #0
  1000c90b4  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  1000c90b8  mov     x0, x21
  1000c90bc  bl      _objc_release
  1000c90c0  mov     x0, x19
  1000c90c4  mov     x1, x20
  1000c90c8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c90cc  mov     x29, x29
  1000c90d0  bl      _objc_retainAutoreleasedReturnValue
  1000c90d4  mov     x21, x0
  1000c90d8  adrp    x8, #0x100417000
  1000c90dc  nop
  1000c90e0  ldr     x1, [x8, #0x2c0]
  1000c90e4  mov     w2, #0
  1000c90e8  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:0]
  1000c90ec  mov     x0, x21
  1000c90f0  bl      _objc_release
  1000c90f4  mov     x0, x19
  1000c90f8  mov     x1, x20
  1000c90fc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9100  mov     x29, x29
  1000c9104  bl      _objc_retainAutoreleasedReturnValue
  1000c9108  mov     x21, x0
  1000c910c  adrp    x8, #0x100417000
  1000c9110  nop
  1000c9114  ldr     x1, [x8, #0x7c8]
  1000c9118  bl      _objc_msgSend                            ; [[self statusBarViewController] backButton]
  1000c911c  mov     x29, x29
  1000c9120  bl      _objc_retainAutoreleasedReturnValue
  1000c9124  mov     x22, x0
  1000c9128  adrp    x8, #0x100417000
  1000c912c  nop
  1000c9130  ldr     x1, [x8, #0x920]
  1000c9134  mov     x3, #0
  1000c9138  adrp    x2, #0x1003bc000
  1000c913c  add     x2, x2, #0xff0                           ; @"Main Menu"
  1000c9140  bl      _objc_msgSend                            ; [[[self statusBarViewController] backButton] setTitle:@"Main Menu" forState:0]
  1000c9144  mov     x0, x22
  1000c9148  bl      _objc_release
  1000c914c  mov     x0, x21
  1000c9150  bl      _objc_release
  1000c9154  mov     x0, x19
  1000c9158  mov     x1, x20
  1000c915c  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000c9160  mov     x29, x29
  1000c9164  bl      _objc_retainAutoreleasedReturnValue
  1000c9168  mov     x19, x0
  1000c916c  adrp    x8, #0x100417000
  1000c9170  nop
  1000c9174  ldr     x1, [x8, #0x2c8]
  1000c9178  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  1000c917c  mov     x29, x29
  1000c9180  bl      _objc_retainAutoreleasedReturnValue
  1000c9184  mov     x21, x0
  1000c9188  adrp    x8, #0x100416000
  1000c918c  nop
  1000c9190  ldr     x1, [x8, #0xb68]
  1000c9194  adrp    x2, #0x1003be000
  1000c9198  add     x2, x2, #0x810                           ; @"AUDIO DEFENCE"
  1000c919c  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"AUDIO DEFENCE"]
  1000c91a0  mov     x0, x21
  1000c91a4  bl      _objc_release
  1000c91a8  mov     x0, x19
  1000c91ac  bl      _objc_release
  1000c91b0  adrp    x8, #0x10041d000
  1000c91b4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000c91b8  adrp    x8, #0x100416000
  1000c91bc  nop
  1000c91c0  ldr     x1, [x8, #0xac0]
  1000c91c4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000c91c8  mov     x29, x29
  1000c91cc  bl      _objc_retainAutoreleasedReturnValue
  1000c91d0  mov     x21, x0
  1000c91d4  adrp    x8, #0x100417000
  1000c91d8  nop
  1000c91dc  ldr     x1, [x8, #0x2f8]
  1000c91e0  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000c91e4  mov     x29, x29
  1000c91e8  bl      _objc_retainAutoreleasedReturnValue
  1000c91ec  mov     x19, x0
  1000c91f0  mov     x0, x21
  1000c91f4  bl      _objc_release
  1000c91f8  adrp    x8, #0x1003b8000
  1000c91fc  add     x8, x8, #0x3b0                           ; &d_1003b83b0
  1000c9200  ldr     x2, [x8]                                 ; [&d_1003b83b0] -> @"&cd"
  1000c9204  adrp    x8, #0x100417000
  1000c9208  nop
  1000c920c  ldr     x1, [x8, #0x300]
  1000c9210  adrp    x3, #0x1003c2000
  1000c9214  add     x3, x3, #0x230                           ; @"Stats Portal"
  1000c9218  mov     x0, x19
  1000c921c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&cd" value:@"Stats Portal"]
  1000c9220  adrp    x8, #0x10041d000
  1000c9224  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000c9228  adrp    x8, #0x100417000
  1000c922c  nop
  1000c9230  ldr     x1, [x8, #0x308]
  1000c9234  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createAppView]
  1000c9238  mov     x29, x29
  1000c923c  bl      _objc_retainAutoreleasedReturnValue
  1000c9240  mov     x21, x0
  1000c9244  adrp    x8, #0x100417000
  1000c9248  nop
  1000c924c  ldr     x1, [x8, #0x310]
  1000c9250  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createAppView] build]
  1000c9254  mov     x29, x29
  1000c9258  bl      _objc_retainAutoreleasedReturnValue
  1000c925c  mov     x22, x0
  1000c9260  adrp    x8, #0x100417000
  1000c9264  nop
  1000c9268  ldr     x1, [x8, #0x318]
  1000c926c  mov     x0, x19
  1000c9270  mov     x2, x22
  1000c9274  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createAppView] build]]
  1000c9278  mov     x0, x22
  1000c927c  bl      _objc_release
  1000c9280  mov     x0, x21
  1000c9284  bl      _objc_release
  1000c9288  mov     x0, x19
  1000c928c  bl      _objc_release
  1000c9290  sub     sp, x29, #0x20
  1000c9294  ldp     x29, x30, [sp, #0x20]
  1000c9298  ldp     x20, x19, [sp, #0x10]
  1000c929c  ldp     x22, x21, [sp], #0x30
  1000c92a0  ret
  1000c92a4  mov     x20, x0
  1000c92a8  b       loc_1000c9304
  1000c92ac  b       loc_1000c92dc
  1000c92b0  b       loc_1000c92dc
  1000c92b4  b       loc_1000c92dc
  1000c92b8  b       loc_1000c92dc
  1000c92bc  mov     x20, x0
  1000c92c0  mov     x0, x22
  1000c92c4  bl      _objc_release
  1000c92c8  b       loc_1000c92e0
  1000c92cc  mov     x20, x0
  1000c92d0  b       loc_1000c9304
  1000c92d4  mov     x20, x0
  1000c92d8  b       loc_1000c92fc
loc_1000c92dc:
  1000c92dc  mov     x20, x0
loc_1000c92e0:
  1000c92e0  mov     x0, x21
  1000c92e4  b       loc_1000c9308
  1000c92e8  mov     x20, x0
  1000c92ec  b       loc_1000c92fc
  1000c92f0  mov     x20, x0
  1000c92f4  mov     x0, x22
  1000c92f8  bl      _objc_release
loc_1000c92fc:
  1000c92fc  mov     x0, x21
  1000c9300  bl      _objc_release
loc_1000c9304:
  1000c9304  mov     x0, x19
loc_1000c9308:
  1000c9308  bl      _objc_release
  1000c930c  mov     x0, x20
  1000c9310  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsPortalViewController loadView]
; address 0x1000c9314  size 472  kind objc
; ======================================================================
  1000c9314  stp     x26, x25, [sp, #-0x50]!
  1000c9318  stp     x24, x23, [sp, #0x10]
  1000c931c  stp     x22, x21, [sp, #0x20]
  1000c9320  stp     x20, x19, [sp, #0x30]
  1000c9324  stp     x29, x30, [sp, #0x40]
  1000c9328  add     x29, sp, #0x40
  1000c932c  sub     sp, sp, #0x50
  1000c9330  mov     x20, x0
  1000c9334  adrp    x25, #0x1003b0000
  1000c9338  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000c933c  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000c9340  str     x25, [sp, #0x48]
  1000c9344  adrp    x8, #0x1003c2000
  1000c9348  add     x8, x8, #0x250                           ; @"zombipedia"
  1000c934c  str     x8, [sp, #8]
  1000c9350  adrp    x24, #0x10041d000
  1000c9354  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c9358  adrp    x8, #0x100416000
  1000c935c  nop
  1000c9360  ldr     x23, [x8, #0xec0]
  1000c9364  mov     w2, #1
  1000c9368  mov     x1, x23
  1000c936c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000c9370  mov     x29, x29
  1000c9374  bl      _objc_retainAutoreleasedReturnValue
  1000c9378  mov     x19, x0
  1000c937c  str     x19, [sp, #0x28]
  1000c9380  adrp    x8, #0x1003c2000
  1000c9384  add     x8, x8, #0x270                           ; @"stats"
  1000c9388  str     x8, [sp, #0x10]
  1000c938c  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c9390  mov     w2, #2
  1000c9394  mov     x1, x23
  1000c9398  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000c939c  bl      _objc_retain
  1000c93a0  mov     x21, x0
  1000c93a4  str     x21, [sp, #0x30]
  1000c93a8  adrp    x8, #0x1003c2000
  1000c93ac  add     x8, x8, #0x290                           ; @"moreGames"
  1000c93b0  str     x8, [sp, #0x18]
  1000c93b4  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c93b8  mov     w2, #3
  1000c93bc  mov     x1, x23
  1000c93c0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000c93c4  bl      _objc_retain
  1000c93c8  mov     x22, x0
  1000c93cc  str     x22, [sp, #0x38]
  1000c93d0  adrp    x8, #0x1003c2000
  1000c93d4  add     x8, x8, #0x2b0                           ; @"credits"
  1000c93d8  str     x8, [sp, #0x20]
  1000c93dc  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  1000c93e0  mov     w2, #4
  1000c93e4  mov     x1, x23
  1000c93e8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000c93ec  bl      _objc_retain
  1000c93f0  mov     x23, x0
  1000c93f4  str     x23, [sp, #0x40]
  1000c93f8  adrp    x8, #0x10041d000
  1000c93fc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c9400  adrp    x8, #0x100416000
  1000c9404  nop
  1000c9408  ldr     x1, [x8, #0xcd0]
  1000c940c  add     x2, sp, #0x28
  1000c9410  add     x3, sp, #8
  1000c9414  mov     w4, #4
  1000c9418  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x28] forKeys:&sp[0x8] count:4]
  1000c941c  mov     x29, x29
  1000c9420  bl      _objc_retainAutoreleasedReturnValue
  1000c9424  mov     x24, x0
  1000c9428  mov     x0, x23
  1000c942c  bl      _objc_release
  1000c9430  mov     x0, x22
  1000c9434  bl      _objc_release
  1000c9438  mov     x0, x21
  1000c943c  bl      _objc_release
  1000c9440  mov     x0, x19
  1000c9444  bl      _objc_release
  1000c9448  adrp    x8, #0x100416000
  1000c944c  nop
  1000c9450  ldr     x1, [x8, #0xbf0]
  1000c9454  adrp    x2, #0x1003be000
  1000c9458  add     x2, x2, #0x9d0                           ; @"ADStatsPortalViewController"
  1000c945c  mov     x0, x20
  1000c9460  mov     x3, x24
  1000c9464  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADStatsPortalViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x28] forKeys:&sp[0x8] count:4]]
  1000c9468  mov     x0, x24
  1000c946c  bl      _objc_release
  1000c9470  ldr     x8, [sp, #0x48]
  1000c9474  sub     x8, x25, x8
  1000c9478  cbnz    x8, loc_1000c9498                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c947c  sub     sp, x29, #0x40
  1000c9480  ldp     x29, x30, [sp, #0x40]
  1000c9484  ldp     x20, x19, [sp, #0x30]
  1000c9488  ldp     x22, x21, [sp, #0x20]
  1000c948c  ldp     x24, x23, [sp, #0x10]
  1000c9490  ldp     x26, x25, [sp], #0x50
  1000c9494  ret
loc_1000c9498:
  1000c9498  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c949c  mov     x20, x0
  1000c94a0  b       loc_1000c94d0
  1000c94a4  mov     x20, x0
  1000c94a8  b       loc_1000c94c8
  1000c94ac  mov     x20, x0
  1000c94b0  b       loc_1000c94c0
  1000c94b4  mov     x20, x0
  1000c94b8  mov     x0, x23
  1000c94bc  bl      _objc_release
loc_1000c94c0:
  1000c94c0  mov     x0, x22
  1000c94c4  bl      _objc_release
loc_1000c94c8:
  1000c94c8  mov     x0, x21
  1000c94cc  bl      _objc_release
loc_1000c94d0:
  1000c94d0  mov     x0, x19
  1000c94d4  b       loc_1000c94e0
  1000c94d8  mov     x20, x0
  1000c94dc  mov     x0, x24
loc_1000c94e0:
  1000c94e0  bl      _objc_release
  1000c94e4  mov     x0, x20
  1000c94e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsPortalViewController didReceiveMemoryWarning]
; address 0x1000c94ec  size 60  kind objc
; ======================================================================
  1000c94ec  stp     x29, x30, [sp, #-0x10]!
  1000c94f0  mov     x29, sp
  1000c94f4  sub     sp, sp, #0x10
  1000c94f8  str     x0, [sp]
  1000c94fc  adrp    x8, #0x10041e000
  1000c9500  ldr     x8, [x8, #0xfb0]
  1000c9504  str     x8, [sp, #8]
  1000c9508  adrp    x8, #0x100416000
  1000c950c  nop
  1000c9510  ldr     x1, [x8, #0xbf8]
  1000c9514  mov     x0, sp
  1000c9518  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000c951c  mov     sp, x29
  1000c9520  ldp     x29, x30, [sp], #0x10
  1000c9524  ret

; ======================================================================
; -[ADStatsPortalViewController backButtonPressed]
; address 0x1000c9528  size 104  kind objc
; ======================================================================
  1000c9528  stp     x20, x19, [sp, #-0x20]!
  1000c952c  stp     x29, x30, [sp, #0x10]
  1000c9530  add     x29, sp, #0x10
  1000c9534  sub     sp, sp, #0x10
  1000c9538  mov     x19, x0
  1000c953c  str     x19, [sp]
  1000c9540  adrp    x8, #0x10041e000
  1000c9544  ldr     x8, [x8, #0xfb0]
  1000c9548  str     x8, [sp, #8]
  1000c954c  adrp    x8, #0x100417000
  1000c9550  nop
  1000c9554  ldr     x1, [x8, #0x410]
  1000c9558  mov     x0, sp
  1000c955c  bl      _objc_msgSendSuper2                      ; [super backButtonPressed]
  1000c9560  adrp    x8, #0x100417000
  1000c9564  nop
  1000c9568  ldr     x1, [x8, #0x420]
  1000c956c  mov     w2, #0
  1000c9570  adrp    x3, #0x1003b2000
  1000c9574  add     x3, x3, #0x7a0                           ; ^{-[ADStatsPortalViewController backButtonPressed]_block_invoke}
  1000c9578  mov     x0, x19
  1000c957c  bl      _objc_msgSend                            ; [self dismissViewControllerAnimated:0 completion:^{-[ADStatsPortalViewController backButtonPressed]_block_invoke}]
  1000c9580  sub     sp, x29, #0x10
  1000c9584  ldp     x29, x30, [sp, #0x10]
  1000c9588  ldp     x20, x19, [sp], #0x20
  1000c958c  ret

; ======================================================================
; -[ADStatsPortalViewController backButtonPressed]_block_invoke
; address 0x1000c9590  size 4  kind block
; ======================================================================
  1000c9590  ret

; ======================================================================
; -[ADStatsPortalViewController playSound]
; address 0x1000c9594  size 252  kind objc
; ======================================================================
  1000c9594  stp     x22, x21, [sp, #-0x30]!
  1000c9598  stp     x20, x19, [sp, #0x10]
  1000c959c  stp     x29, x30, [sp, #0x20]
  1000c95a0  add     x29, sp, #0x20
  1000c95a4  adrp    x8, #0x10041d000
  1000c95a8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c95ac  adrp    x8, #0x100417000
  1000c95b0  nop
  1000c95b4  ldr     x1, [x8, #0x4f0]
  1000c95b8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c95bc  mov     x29, x29
  1000c95c0  bl      _objc_retainAutoreleasedReturnValue
  1000c95c4  mov     x19, x0
  1000c95c8  adrp    x8, #0x100417000
  1000c95cc  nop
  1000c95d0  ldr     x1, [x8, #0x4f8]
  1000c95d4  adrp    x2, #0x1003ba000
  1000c95d8  add     x2, x2, #0xcb0                           ; @"buttons"
  1000c95dc  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  1000c95e0  mov     x29, x29
  1000c95e4  bl      _objc_retainAutoreleasedReturnValue
  1000c95e8  mov     x21, x0
  1000c95ec  adrp    x8, #0x100417000
  1000c95f0  nop
  1000c95f4  ldr     x1, [x8, #0x990]
  1000c95f8  adrp    x2, #0x1003ba000
  1000c95fc  add     x2, x2, #0xcd0                           ; @"click_button"
  1000c9600  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  1000c9604  mov     x29, x29
  1000c9608  bl      _objc_retainAutoreleasedReturnValue
  1000c960c  mov     x20, x0
  1000c9610  mov     x0, x21
  1000c9614  bl      _objc_release
  1000c9618  mov     x0, x19
  1000c961c  bl      _objc_release
  1000c9620  adrp    x8, #0x100416000
  1000c9624  nop
  1000c9628  ldr     x1, [x8, #0xcb0]
  1000c962c  fmov    s0, #3.00000000
  1000c9630  mov     x0, x20
  1000c9634  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  1000c9638  adrp    x8, #0x100417000
  1000c963c  nop
  1000c9640  ldr     x1, [x8, #0x600]
  1000c9644  mov     x0, x20
  1000c9648  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  1000c964c  mov     x0, x20
  1000c9650  ldp     x29, x30, [sp, #0x20]
  1000c9654  ldp     x20, x19, [sp, #0x10]
  1000c9658  ldp     x22, x21, [sp], #0x30
  1000c965c  b       _objc_release
  1000c9660  mov     x22, x0
  1000c9664  mov     x0, x20
  1000c9668  b       loc_1000c9684
  1000c966c  mov     x22, x0
  1000c9670  b       loc_1000c9680
  1000c9674  mov     x22, x0
  1000c9678  mov     x0, x21
  1000c967c  bl      _objc_release
loc_1000c9680:
  1000c9680  mov     x0, x19
loc_1000c9684:
  1000c9684  bl      _objc_release
  1000c9688  mov     x0, x22
  1000c968c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStatsPortalViewController buttonPressed:]
; address 0x1000c9690  size 444  kind objc
; ======================================================================
  1000c9690  stp     x20, x19, [sp, #-0x20]!
  1000c9694  stp     x29, x30, [sp, #0x10]
  1000c9698  add     x29, sp, #0x10
  1000c969c  mov     x19, x0
  1000c96a0  adrp    x8, #0x100417000
  1000c96a4  nop
  1000c96a8  ldr     x1, [x8, #0x6b0]
  1000c96ac  mov     x0, x2
  1000c96b0  bl      _objc_msgSend                            ; [arg1 tag]
  1000c96b4  sub     x8, x0, #1
  1000c96b8  cmp     x8, #3
  1000c96bc  b.ls    loc_1000c96c8                            ; if (([arg1 tag] - 1) <=u 3)
  1000c96c0  mov     x20, #0
  1000c96c4  b       loc_1000c97dc
loc_1000c96c8:
  1000c96c8  adr     x9, #0x1000c983c                         ; 0x1000c983c
  1000c96cc  nop
  1000c96d0  ldrsw   x8, [x9, x8, lsl #2]
  1000c96d4  add     x8, x8, x9
  1000c96d8  br      x8                                       ; switch (?) { case 0: goto loc_1000c96dc; case 1: goto loc_1000c971c; case 2: goto loc_1000c975c; case 3: goto loc_1000c979c }
loc_1000c96dc:  ; case 0
  1000c96dc  adrp    x8, #0x10041e000
  1000c96e0  ldr     x0, [x8, #0x438]                         ; class ADEncyclopediaViewController
  1000c96e4  adrp    x8, #0x100416000
  1000c96e8  nop
  1000c96ec  ldr     x1, [x8, #0xac8]
  1000c96f0  mov     x20, #0
  1000c96f4  bl      _objc_msgSend                            ; [ADEncyclopediaViewController alloc]
  1000c96f8  adrp    x8, #0x100416000
  1000c96fc  nop
  1000c9700  ldr     x1, [x8, #0xb40]
  1000c9704  mov     x20, #0
  1000c9708  mov     x3, #0
  1000c970c  adrp    x2, #0x1003bf000
  1000c9710  add     x2, x2, #0x430                           ; @"ADEncyclopediaViewController"
  1000c9714  bl      _objc_msgSend                            ; [[ADEncyclopediaViewController alloc] initWithNibName:@"ADEncyclopediaViewController" bundle:0]
  1000c9718  b       loc_1000c97d8
loc_1000c971c:  ; case 1
  1000c971c  adrp    x8, #0x10041e000
  1000c9720  ldr     x0, [x8, #0x440]                         ; class ADStatsViewController
  1000c9724  adrp    x8, #0x100416000
  1000c9728  nop
  1000c972c  ldr     x1, [x8, #0xac8]
  1000c9730  mov     x20, #0
  1000c9734  bl      _objc_msgSend                            ; [ADStatsViewController alloc]
  1000c9738  adrp    x8, #0x100416000
  1000c973c  nop
  1000c9740  ldr     x1, [x8, #0xb40]
  1000c9744  mov     x20, #0
  1000c9748  mov     x3, #0
  1000c974c  adrp    x2, #0x1003c2000
  1000c9750  add     x2, x2, #0x2d0                           ; @"ADStatsViewController"
  1000c9754  bl      _objc_msgSend                            ; [[ADStatsViewController alloc] initWithNibName:@"ADStatsViewController" bundle:0]
  1000c9758  b       loc_1000c97d8
loc_1000c975c:  ; case 2
  1000c975c  adrp    x8, #0x10041e000
  1000c9760  ldr     x0, [x8, #0xa8]                          ; class ADMoreGamesViewController
  1000c9764  adrp    x8, #0x100416000
  1000c9768  nop
  1000c976c  ldr     x1, [x8, #0xac8]
  1000c9770  mov     x20, #0
  1000c9774  bl      _objc_msgSend                            ; [ADMoreGamesViewController alloc]
  1000c9778  adrp    x8, #0x100416000
  1000c977c  nop
  1000c9780  ldr     x1, [x8, #0xb40]
  1000c9784  mov     x20, #0
  1000c9788  mov     x3, #0
  1000c978c  adrp    x2, #0x1003bb000
  1000c9790  add     x2, x2, #0x210                           ; @"ADMoreGamesViewController"
  1000c9794  bl      _objc_msgSend                            ; [[ADMoreGamesViewController alloc] initWithNibName:@"ADMoreGamesViewController" bundle:0]
  1000c9798  b       loc_1000c97d8
loc_1000c979c:  ; case 3
  1000c979c  adrp    x8, #0x10041e000
  1000c97a0  ldr     x0, [x8, #0x448]                         ; class ADAboutCreditsViewController
  1000c97a4  adrp    x8, #0x100416000
  1000c97a8  nop
  1000c97ac  ldr     x1, [x8, #0xac8]
  1000c97b0  mov     x20, #0
  1000c97b4  bl      _objc_msgSend                            ; [ADAboutCreditsViewController alloc]
  1000c97b8  adrp    x8, #0x100416000
  1000c97bc  nop
  1000c97c0  ldr     x1, [x8, #0xb40]
  1000c97c4  mov     x20, #0
  1000c97c8  mov     x3, #0
  1000c97cc  adrp    x2, #0x1003ba000
  1000c97d0  add     x2, x2, #0xf70                           ; @"ADAboutCreditsViewController"
  1000c97d4  bl      _objc_msgSend                            ; [[ADAboutCreditsViewController alloc] initWithNibName:@"ADAboutCreditsViewController" bundle:0]
loc_1000c97d8:
  1000c97d8  mov     x20, x0
loc_1000c97dc:
  1000c97dc  adrp    x8, #0x100418000
  1000c97e0  nop
  1000c97e4  ldr     x1, [x8, #0x600]
  1000c97e8  mov     x0, x19
  1000c97ec  bl      _objc_msgSend                            ; [self playSound]
  1000c97f0  adrp    x8, #0x100417000
  1000c97f4  nop
  1000c97f8  ldr     x1, [x8, #0x208]
  1000c97fc  mov     w3, #0
  1000c9800  mov     x4, #0
  1000c9804  mov     x0, x19
  1000c9808  mov     x2, x20
  1000c980c  bl      _objc_msgSend                            ; [self presentViewController:x2 animated:0 completion:0]
  1000c9810  mov     x0, x20
  1000c9814  ldp     x29, x30, [sp, #0x10]
  1000c9818  ldp     x20, x19, [sp], #0x20
  1000c981c  b       _objc_release
  1000c9820  mov     x19, x0
  1000c9824  mov     x0, x20
  1000c9828  bl      _objc_release
  1000c982c  b       loc_1000c9834
  1000c9830  mov     x19, x0
loc_1000c9834:
  1000c9834  mov     x0, x19
  1000c9838  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c983c  .word   jump table of 1000c96d8, case 0 -> loc_1000c96dc
  1000c9840  .word   jump table of 1000c96d8, case 1 -> loc_1000c971c
  1000c9844  .word   jump table of 1000c96d8, case 2 -> loc_1000c975c
  1000c9848  .word   jump table of 1000c96d8, case 3 -> loc_1000c979c

; ======================================================================
; -[ADStatsPortalViewController zombipedia]
; address 0x1000c984c  size 16  kind objc
; ======================================================================
  1000c984c  adrp    x8, #0x100420000
  1000c9850  ldrsw   x8, [x8, #0x3f0]                         ; ivar offset ADStatsPortalViewController._zombipedia (+0x140)
  1000c9854  ldr     x0, [x0, x8]                             ; x0 = self->_zombipedia
  1000c9858  ret

; ======================================================================
; -[ADStatsPortalViewController setZombipedia:]
; address 0x1000c985c  size 56  kind objc
; ======================================================================
  1000c985c  stp     x20, x19, [sp, #-0x20]!
  1000c9860  stp     x29, x30, [sp, #0x10]
  1000c9864  add     x29, sp, #0x10
  1000c9868  mov     x19, x0
  1000c986c  adrp    x8, #0x100420000
  1000c9870  ldrsw   x20, [x8, #0x3f0]                        ; ivar offset ADStatsPortalViewController._zombipedia (+0x140)
  1000c9874  mov     x0, x2
  1000c9878  bl      _objc_retain
  1000c987c  ldr     x8, [x19, x20]                           ; x8 = self->_zombipedia
  1000c9880  str     x0, [x19, x20]                           ; self->_zombipedia = arg1
  1000c9884  mov     x0, x8
  1000c9888  ldp     x29, x30, [sp, #0x10]
  1000c988c  ldp     x20, x19, [sp], #0x20
  1000c9890  b       _objc_release

; ======================================================================
; -[ADStatsPortalViewController stats]
; address 0x1000c9894  size 16  kind objc
; ======================================================================
  1000c9894  adrp    x8, #0x100420000
  1000c9898  ldrsw   x8, [x8, #0x3f4]                         ; ivar offset ADStatsPortalViewController._stats (+0x148)
  1000c989c  ldr     x0, [x0, x8]                             ; x0 = self->_stats
  1000c98a0  ret

; ======================================================================
; -[ADStatsPortalViewController setStats:]
; address 0x1000c98a4  size 56  kind objc
; ======================================================================
  1000c98a4  stp     x20, x19, [sp, #-0x20]!
  1000c98a8  stp     x29, x30, [sp, #0x10]
  1000c98ac  add     x29, sp, #0x10
  1000c98b0  mov     x19, x0
  1000c98b4  adrp    x8, #0x100420000
  1000c98b8  ldrsw   x20, [x8, #0x3f4]                        ; ivar offset ADStatsPortalViewController._stats (+0x148)
  1000c98bc  mov     x0, x2
  1000c98c0  bl      _objc_retain
  1000c98c4  ldr     x8, [x19, x20]                           ; x8 = self->_stats
  1000c98c8  str     x0, [x19, x20]                           ; self->_stats = arg1
  1000c98cc  mov     x0, x8
  1000c98d0  ldp     x29, x30, [sp, #0x10]
  1000c98d4  ldp     x20, x19, [sp], #0x20
  1000c98d8  b       _objc_release

; ======================================================================
; -[ADStatsPortalViewController moreGames]
; address 0x1000c98dc  size 16  kind objc
; ======================================================================
  1000c98dc  adrp    x8, #0x100420000
  1000c98e0  ldrsw   x8, [x8, #0x3f8]                         ; ivar offset ADStatsPortalViewController._moreGames (+0x150)
  1000c98e4  ldr     x0, [x0, x8]                             ; x0 = self->_moreGames
  1000c98e8  ret

; ======================================================================
; -[ADStatsPortalViewController setMoreGames:]
; address 0x1000c98ec  size 56  kind objc
; ======================================================================
  1000c98ec  stp     x20, x19, [sp, #-0x20]!
  1000c98f0  stp     x29, x30, [sp, #0x10]
  1000c98f4  add     x29, sp, #0x10
  1000c98f8  mov     x19, x0
  1000c98fc  adrp    x8, #0x100420000
  1000c9900  ldrsw   x20, [x8, #0x3f8]                        ; ivar offset ADStatsPortalViewController._moreGames (+0x150)
  1000c9904  mov     x0, x2
  1000c9908  bl      _objc_retain
  1000c990c  ldr     x8, [x19, x20]                           ; x8 = self->_moreGames
  1000c9910  str     x0, [x19, x20]                           ; self->_moreGames = arg1
  1000c9914  mov     x0, x8
  1000c9918  ldp     x29, x30, [sp, #0x10]
  1000c991c  ldp     x20, x19, [sp], #0x20
  1000c9920  b       _objc_release

; ======================================================================
; -[ADStatsPortalViewController credits]
; address 0x1000c9924  size 16  kind objc
; ======================================================================
  1000c9924  adrp    x8, #0x100420000
  1000c9928  ldrsw   x8, [x8, #0x3fc]                         ; ivar offset ADStatsPortalViewController._credits (+0x158)
  1000c992c  ldr     x0, [x0, x8]                             ; x0 = self->_credits
  1000c9930  ret

; ======================================================================
; -[ADStatsPortalViewController setCredits:]
; address 0x1000c9934  size 56  kind objc
; ======================================================================
  1000c9934  stp     x20, x19, [sp, #-0x20]!
  1000c9938  stp     x29, x30, [sp, #0x10]
  1000c993c  add     x29, sp, #0x10
  1000c9940  mov     x19, x0
  1000c9944  adrp    x8, #0x100420000
  1000c9948  ldrsw   x20, [x8, #0x3fc]                        ; ivar offset ADStatsPortalViewController._credits (+0x158)
  1000c994c  mov     x0, x2
  1000c9950  bl      _objc_retain
  1000c9954  ldr     x8, [x19, x20]                           ; x8 = self->_credits
  1000c9958  str     x0, [x19, x20]                           ; self->_credits = arg1
  1000c995c  mov     x0, x8
  1000c9960  ldp     x29, x30, [sp, #0x10]
  1000c9964  ldp     x20, x19, [sp], #0x20
  1000c9968  b       _objc_release

; ======================================================================
; -[ADStatsPortalViewController .cxx_destruct]
; address 0x1000c996c  size 104  kind objc
; ======================================================================
  1000c996c  stp     x20, x19, [sp, #-0x20]!
  1000c9970  stp     x29, x30, [sp, #0x10]
  1000c9974  add     x29, sp, #0x10
  1000c9978  mov     x19, x0
  1000c997c  adrp    x8, #0x100420000
  1000c9980  ldrsw   x8, [x8, #0x3fc]                         ; ivar offset ADStatsPortalViewController._credits (+0x158)
  1000c9984  add     x0, x19, x8
  1000c9988  mov     x1, #0
  1000c998c  bl      _objc_storeStrong
  1000c9990  adrp    x8, #0x100420000
  1000c9994  ldrsw   x8, [x8, #0x3f8]                         ; ivar offset ADStatsPortalViewController._moreGames (+0x150)
  1000c9998  add     x0, x19, x8
  1000c999c  mov     x1, #0
  1000c99a0  bl      _objc_storeStrong
  1000c99a4  adrp    x8, #0x100420000
  1000c99a8  ldrsw   x8, [x8, #0x3f4]                         ; ivar offset ADStatsPortalViewController._stats (+0x148)
  1000c99ac  add     x0, x19, x8
  1000c99b0  mov     x1, #0
  1000c99b4  bl      _objc_storeStrong
  1000c99b8  mov     x1, #0
  1000c99bc  adrp    x8, #0x100420000
  1000c99c0  ldrsw   x8, [x8, #0x3f0]                         ; ivar offset ADStatsPortalViewController._zombipedia (+0x140)
  1000c99c4  add     x0, x19, x8
  1000c99c8  ldp     x29, x30, [sp, #0x10]
  1000c99cc  ldp     x20, x19, [sp], #0x20
  1000c99d0  b       _objc_storeStrong
