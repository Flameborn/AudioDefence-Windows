// unit DFAutoScrollTextView — 13 functions
//   0x1000183e0     132  -[DFAutoScrollTextView initWithFrame:]
//   0x100018464     660  -[DFAutoScrollTextView startScrolling]
//   0x1000186f8     120  -[DFAutoScrollTextView stopScrolling]
//   0x100018770     532  -[DFAutoScrollTextView scrollTick]
//   0x100018984      28  -[DFAutoScrollTextView scrollTick]_block_invoke
//   0x1000189a0       8  sub_1000189a0
//   0x1000189a8       8  sub_1000189a8
//   0x1000189b0      36  -[DFAutoScrollTextView setScrolling:]
//   0x1000189d4      64  -[DFAutoScrollTextView isScrolling]
//   0x100018a14      60  -[DFAutoScrollTextView drawRect:]
//   0x100018a50      20  -[DFAutoScrollTextView scrollPointsPerSecond]
//   0x100018a64      20  -[DFAutoScrollTextView setScrollPointsPerSecond:]
//   0x100018a78      16  -[DFAutoScrollTextView scrolling]

; ======================================================================
; -[DFAutoScrollTextView initWithFrame:]
; address 0x1000183e0  size 132  kind objc
; ======================================================================
  1000183e0  stp     x20, x19, [sp, #-0x20]!
  1000183e4  stp     x29, x30, [sp, #0x10]
  1000183e8  add     x29, sp, #0x10
  1000183ec  sub     sp, sp, #0x10
  1000183f0  str     x0, [sp]
  1000183f4  adrp    x8, #0x10041e000
  1000183f8  ldr     x8, [x8, #0xc00]
  1000183fc  str     x8, [sp, #8]
  100018400  adrp    x8, #0x100417000
  100018404  nop
  100018408  ldr     x1, [x8, #0x178]
  10001840c  mov     x19, #0
  100018410  mov     x0, sp
  100018414  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100018418  mov     x20, x0
  10001841c  cbz     x20, loc_10001843c                       ; if (self == 0)
  100018420  mov     x19, x20
  100018424  adrp    x8, #0x100417000
  100018428  nop
  10001842c  ldr     x1, [x8, #0x6c0]
  100018430  fmov    d0, #15.00000000
  100018434  mov     x0, x20
  100018438  bl      _objc_msgSend                            ; [self setScrollPointsPerSecond:15]
loc_10001843c:
  10001843c  mov     x0, x20
  100018440  sub     sp, x29, #0x10
  100018444  ldp     x29, x30, [sp, #0x10]
  100018448  ldp     x20, x19, [sp], #0x20
  10001844c  ret
  100018450  mov     x20, x0
  100018454  mov     x0, x19
  100018458  bl      _objc_release
  10001845c  mov     x0, x20
  100018460  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTextView startScrolling]
; address 0x100018464  size 660  kind objc
; ======================================================================
  100018464  stp     d9, d8, [sp, #-0x40]!
  100018468  stp     x22, x21, [sp, #0x10]
  10001846c  stp     x20, x19, [sp, #0x20]
  100018470  stp     x29, x30, [sp, #0x30]
  100018474  add     x29, sp, #0x30
  100018478  mov     x19, x0
  10001847c  adrp    x8, #0x100417000
  100018480  nop
  100018484  ldr     x1, [x8, #0x6c8]
  100018488  bl      _objc_msgSend                            ; [self stopScrolling]
  10001848c  adrp    x8, #0x100417000
  100018490  nop
  100018494  ldr     x21, [x8, #0x6d0]
  100018498  mov     x0, x19
  10001849c  mov     x1, x21
  1000184a0  bl      _objc_msgSend                            ; [self window]
  1000184a4  mov     x29, x29
  1000184a8  bl      _objc_retainAutoreleasedReturnValue
  1000184ac  mov     x20, x0
  1000184b0  cbz     x20, loc_100018508                       ; if ([self window] == 0)
  1000184b4  mov     x0, x19
  1000184b8  mov     x1, x21
  1000184bc  bl      _objc_msgSend                            ; [self window]
  1000184c0  mov     x29, x29
  1000184c4  bl      _objc_retainAutoreleasedReturnValue
  1000184c8  mov     x21, x0
  1000184cc  adrp    x8, #0x100417000
  1000184d0  nop
  1000184d4  ldr     x1, [x8, #0x6d8]
  1000184d8  bl      _objc_msgSend                            ; [[self window] screen]
  1000184dc  mov     x29, x29
  1000184e0  bl      _objc_retainAutoreleasedReturnValue
  1000184e4  mov     x22, x0
  1000184e8  adrp    x8, #0x100417000
  1000184ec  nop
  1000184f0  ldr     x1, [x8, #0x6e0]
  1000184f4  bl      _objc_msgSend                            ; [[[self window] screen] scale]
  1000184f8  mov     v8.16b, v0.16b
  1000184fc  mov     x0, x22
  100018500  bl      _objc_release
  100018504  b       loc_100018540
loc_100018508:
  100018508  adrp    x8, #0x10041e000
  10001850c  ldr     x0, [x8, #0x28]                          ; class UIScreen
  100018510  adrp    x8, #0x100417000
  100018514  nop
  100018518  ldr     x1, [x8, #0x6e8]
  10001851c  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100018520  mov     x29, x29
  100018524  bl      _objc_retainAutoreleasedReturnValue
  100018528  mov     x21, x0
  10001852c  adrp    x8, #0x100417000
  100018530  nop
  100018534  ldr     x1, [x8, #0x6e0]
  100018538  bl      _objc_msgSend                            ; [[UIScreen mainScreen] scale]
  10001853c  mov     v8.16b, v0.16b
loc_100018540:
  100018540  mov     x0, x21
  100018544  bl      _objc_release
  100018548  mov     x0, x20
  10001854c  bl      _objc_release
  100018550  adrp    x8, #0x100417000
  100018554  nop
  100018558  ldr     x1, [x8, #0x6f0]
  10001855c  mov     x0, x19
  100018560  bl      _objc_msgSend                            ; [self scrollPointsPerSecond]
  100018564  fmul    d0, d8, d0
  100018568  fmov    d1, #1.00000000
  10001856c  adrp    x8, #0x10041e000
  100018570  ldr     x0, [x8, #0x30]                          ; class NSTimer
  100018574  adrp    x8, #0x100416000
  100018578  nop
  10001857c  ldr     x1, [x8, #0xac8]
  100018580  fdiv    d8, d1, d0
  100018584  bl      _objc_msgSend                            ; [NSTimer alloc]
  100018588  mov     x21, x0
  10001858c  adrp    x8, #0x10041e000
  100018590  ldr     x0, [x8, #0x38]                          ; class NSDate
  100018594  adrp    x8, #0x100417000
  100018598  nop
  10001859c  ldr     x1, [x8, #0x6f8]
  1000185a0  adrp    x8, #0x100181000
  1000185a4  ldr     d0, [x8, #0xa28]                         ; d0 = 0.02
  1000185a8  bl      _objc_msgSend                            ; [NSDate dateWithTimeIntervalSinceNow:0.02]
  1000185ac  mov     x29, x29
  1000185b0  bl      _objc_retainAutoreleasedReturnValue
  1000185b4  mov     x20, x0
  1000185b8  adrp    x8, #0x100417000
  1000185bc  nop
  1000185c0  ldr     x4, [x8, #0x700]
  1000185c4  adrp    x8, #0x100417000
  1000185c8  nop
  1000185cc  ldr     x1, [x8, #0x708]
  1000185d0  mov     w6, #1
  1000185d4  mov     x0, x21
  1000185d8  mov     x2, x20
  1000185dc  mov     v0.16b, v8.16b
  1000185e0  mov     x3, x19
  1000185e4  mov     x5, #0
  1000185e8  bl      _objc_msgSend                            ; [[NSTimer alloc] initWithFireDate:[NSDate dateWithTimeIntervalSinceNow:0.02] interval:(1 / (d8 * [self scrollPointsPerSecond])) target:self selector:@selector(scrollTick) userInfo:0 repeats:1]
  1000185ec  mov     x21, x0
  1000185f0  adrp    x8, #0x100417000
  1000185f4  nop
  1000185f8  ldr     x1, [x8, #0x710]
  1000185fc  mov     x0, x19
  100018600  mov     x2, x21
  100018604  bl      _objc_msgSend                            ; [self setAutoScrollTimer:[[NSTimer alloc] initWithFireDate:[NSDate dateWithTimeIntervalSinceNow:0.02] interval:(1 / (d8 * [self scrollPointsPerSecond])) target:self selector:@selector(scrollTick) userInfo:0 repeats:1]]
  100018608  mov     x0, x21
  10001860c  bl      _objc_release
  100018610  mov     x0, x20
  100018614  bl      _objc_release
  100018618  adrp    x8, #0x10041e000
  10001861c  ldr     x0, [x8, #0x40]                          ; class NSRunLoop
  100018620  adrp    x8, #0x100417000
  100018624  nop
  100018628  ldr     x1, [x8, #0x718]
  10001862c  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  100018630  mov     x29, x29
  100018634  bl      _objc_retainAutoreleasedReturnValue
  100018638  mov     x20, x0
  10001863c  adrp    x8, #0x100417000
  100018640  nop
  100018644  ldr     x1, [x8, #0x720]
  100018648  mov     x0, x19
  10001864c  bl      _objc_msgSend                            ; [self autoScrollTimer]
  100018650  mov     x29, x29
  100018654  bl      _objc_retainAutoreleasedReturnValue
  100018658  mov     x21, x0
  10001865c  adrp    x8, #0x1003b0000
  100018660  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  100018664  ldr     x3, [x8]                                 ; x3 = _NSRunLoopCommonModes[+0x0]
  100018668  adrp    x8, #0x100417000
  10001866c  nop
  100018670  ldr     x1, [x8, #0x728]
  100018674  mov     x0, x20
  100018678  mov     x2, x21
  10001867c  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:[self autoScrollTimer] forMode:_NSRunLoopCommonModes[+0x0]]
  100018680  mov     x0, x21
  100018684  bl      _objc_release
  100018688  mov     x0, x20
  10001868c  ldp     x29, x30, [sp, #0x30]
  100018690  ldp     x20, x19, [sp, #0x20]
  100018694  ldp     x22, x21, [sp, #0x10]
  100018698  ldp     d9, d8, [sp], #0x40
  10001869c  b       _objc_release
  1000186a0  mov     x19, x0
  1000186a4  b       loc_1000186e8
  1000186a8  b       loc_1000186dc
  1000186ac  mov     x19, x0
  1000186b0  b       loc_1000186e8
  1000186b4  b       loc_1000186dc
  1000186b8  mov     x19, x0
  1000186bc  b       loc_1000186e8
  1000186c0  b       loc_1000186dc
  1000186c4  mov     x19, x0
  1000186c8  mov     x0, x22
  1000186cc  bl      _objc_release
  1000186d0  b       loc_1000186e0
  1000186d4  mov     x19, x0
  1000186d8  b       loc_1000186e8
loc_1000186dc:
  1000186dc  mov     x19, x0
loc_1000186e0:
  1000186e0  mov     x0, x21
  1000186e4  bl      _objc_release
loc_1000186e8:
  1000186e8  mov     x0, x20
  1000186ec  bl      _objc_release
  1000186f0  mov     x0, x19
  1000186f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTextView stopScrolling]
; address 0x1000186f8  size 120  kind objc
; ======================================================================
  1000186f8  stp     x20, x19, [sp, #-0x20]!
  1000186fc  stp     x29, x30, [sp, #0x10]
  100018700  add     x29, sp, #0x10
  100018704  mov     x19, x0
  100018708  adrp    x8, #0x100417000
  10001870c  nop
  100018710  ldr     x1, [x8, #0x720]
  100018714  bl      _objc_msgSend                            ; [self autoScrollTimer]
  100018718  mov     x29, x29
  10001871c  bl      _objc_retainAutoreleasedReturnValue
  100018720  mov     x20, x0
  100018724  adrp    x8, #0x100417000
  100018728  nop
  10001872c  ldr     x1, [x8, #0x730]
  100018730  bl      _objc_msgSend                            ; [[self autoScrollTimer] invalidate]
  100018734  mov     x0, x20
  100018738  bl      _objc_release
  10001873c  mov     x2, #0
  100018740  adrp    x8, #0x100417000
  100018744  nop
  100018748  ldr     x1, [x8, #0x710]
  10001874c  mov     x0, x19
  100018750  ldp     x29, x30, [sp, #0x10]
  100018754  ldp     x20, x19, [sp], #0x20
  100018758  b       _objc_msgSend                            ; [self setAutoScrollTimer:0]
  10001875c  mov     x19, x0
  100018760  mov     x0, x20
  100018764  bl      _objc_release
  100018768  mov     x0, x19
  10001876c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTextView scrollTick]
; address 0x100018770  size 532  kind objc
; ======================================================================
  100018770  stp     d11, d10, [sp, #-0x40]!
  100018774  stp     d9, d8, [sp, #0x10]
  100018778  stp     x20, x19, [sp, #0x20]
  10001877c  stp     x29, x30, [sp, #0x30]
  100018780  add     x29, sp, #0x30
  100018784  sub     sp, sp, #0x40
  100018788  mov     x19, x0
  10001878c  adrp    x0, #0x1003ba000
  100018790  add     x0, x0, #0x990                           ; @"Tick tock"
  100018794  bl      _NSLog                                   ; NSLog(@"Tick tock", _cmd)
  100018798  adrp    x8, #0x100417000
  10001879c  nop
  1000187a0  ldr     x1, [x8, #0x6d0]
  1000187a4  mov     x0, x19
  1000187a8  bl      _objc_msgSend                            ; [self window]
  1000187ac  mov     x29, x29
  1000187b0  bl      _objc_retainAutoreleasedReturnValue
  1000187b4  mov     x20, x0
  1000187b8  bl      _objc_release
  1000187bc  cbnz    x20, loc_1000187d4                       ; if ([self window] != 0)
  1000187c0  adrp    x8, #0x100417000
  1000187c4  nop
  1000187c8  ldr     x1, [x8, #0x6c8]
  1000187cc  mov     x0, x19
  1000187d0  bl      _objc_msgSend                            ; [self stopScrolling]
loc_1000187d4:
  1000187d4  adrp    x8, #0x100417000
  1000187d8  nop
  1000187dc  ldr     x1, [x8, #0x720]
  1000187e0  mov     x0, x19
  1000187e4  bl      _objc_msgSend                            ; [self autoScrollTimer]
  1000187e8  mov     x29, x29
  1000187ec  bl      _objc_retainAutoreleasedReturnValue
  1000187f0  mov     x20, x0
  1000187f4  adrp    x8, #0x100417000
  1000187f8  nop
  1000187fc  ldr     x1, [x8, #0x738]
  100018800  bl      _objc_msgSend                            ; [[self autoScrollTimer] timeInterval]
  100018804  mov     v8.16b, v0.16b
  100018808  mov     x0, x20
  10001880c  bl      _objc_release
  100018810  adrp    x8, #0x100417000
  100018814  nop
  100018818  ldr     x1, [x8, #0x6f0]
  10001881c  mov     x0, x19
  100018820  bl      _objc_msgSend                            ; [self scrollPointsPerSecond]
  100018824  fmul    d9, d8, d0
  100018828  adrp    x8, #0x100416000
  10001882c  nop
  100018830  ldr     x20, [x8, #0xfb0]
  100018834  mov     x0, x19
  100018838  mov     x1, x20
  10001883c  bl      _objc_msgSend                            ; [self contentOffset]
  100018840  mov     v8.16b, v0.16b
  100018844  mov     x0, x19
  100018848  mov     x1, x20
  10001884c  bl      _objc_msgSend                            ; [self contentOffset]
  100018850  fadd    d10, d9, d1                              ; t1 = (([[self autoScrollTimer] timeInterval] * [self scrollPointsPerSecond]) + [self contentOffset].1)
  100018854  adrp    x8, #0x100417000
  100018858  nop
  10001885c  ldr     x1, [x8, #0x740]
  100018860  mov     x0, x19
  100018864  bl      _objc_msgSend                            ; [self contentSize]
  100018868  mov     v9.16b, v1.16b
  10001886c  adrp    x8, #0x100417000
  100018870  nop
  100018874  ldr     x1, [x8, #0x748]
  100018878  mov     x0, x19
  10001887c  bl      _objc_msgSend                            ; [self bounds]
  100018880  fsub    d0, d9, d3
  100018884  fcmp    d10, d0
  100018888  b.le    loc_1000188b4                            ; if (t1 <= (or unordered) ([self contentSize].1 - [self bounds].3))
  10001888c  adrp    x8, #0x100417000
  100018890  nop
  100018894  ldr     x1, [x8, #0x6c8]
  100018898  mov     x0, x19
  10001889c  sub     sp, x29, #0x30
  1000188a0  ldp     x29, x30, [sp, #0x30]
  1000188a4  ldp     x20, x19, [sp, #0x20]
  1000188a8  ldp     d9, d8, [sp, #0x10]
  1000188ac  ldp     d11, d10, [sp], #0x40
  1000188b0  b       _objc_msgSend                            ; [self stopScrolling]
loc_1000188b4:
  1000188b4  adrp    x8, #0x10041e000
  1000188b8  ldr     x0, [x8, #0x48]                          ; class NSOperationQueue
  1000188bc  adrp    x8, #0x100417000
  1000188c0  nop
  1000188c4  ldr     x1, [x8, #0x750]
  1000188c8  bl      _objc_msgSend                            ; [NSOperationQueue mainQueue]
  1000188cc  mov     x29, x29
  1000188d0  bl      _objc_retainAutoreleasedReturnValue
  1000188d4  mov     x20, x0
  1000188d8  adrp    x8, #0x1003b0000
  1000188dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000188e0  mov     w9, #-0x3e000000
  1000188e4  str     x8, [sp, #8]
  1000188e8  stp     w9, wzr, [sp, #0x10]
  1000188ec  adr     x8, #0x100018984                         ; &-[DFAutoScrollTextView scrollTick]_block_invoke
  1000188f0  nop
  1000188f4  str     x8, [sp, #0x18]
  1000188f8  adrp    x8, #0x1003b0000
  1000188fc  add     x8, x8, #0xfc0                           ; &d_1003b0fc0
  100018900  str     x8, [sp, #0x20]
  100018904  mov     x0, x19
  100018908  bl      _objc_retain
  10001890c  str     x0, [sp, #0x28]
  100018910  stp     d8, d10, [sp, #0x30]
  100018914  adrp    x8, #0x100417000
  100018918  nop
  10001891c  ldr     x1, [x8, #0x760]
  100018920  add     x2, sp, #8
  100018924  mov     x0, x20
  100018928  bl      _objc_msgSend                            ; [[NSOperationQueue mainQueue] addOperationWithBlock:^{-[DFAutoScrollTextView scrollTick]_block_invoke captures +0x20=self, +0x28=[self contentOffset].0, +0x30=t1}]
  10001892c  mov     x0, x20
  100018930  bl      _objc_release
  100018934  ldr     x0, [sp, #0x28]
  100018938  bl      _objc_release
  10001893c  sub     sp, x29, #0x30
  100018940  ldp     x29, x30, [sp, #0x30]
  100018944  ldp     x20, x19, [sp, #0x20]
  100018948  ldp     d9, d8, [sp, #0x10]
  10001894c  ldp     d11, d10, [sp], #0x40
  100018950  ret
  100018954  mov     x19, x0
  100018958  mov     x0, x20
  10001895c  b       loc_100018978
  100018960  mov     x19, x0
  100018964  b       loc_10001897c
  100018968  mov     x19, x0
  10001896c  mov     x0, x20
  100018970  bl      _objc_release
  100018974  ldr     x0, [sp, #0x28]
loc_100018978:
  100018978  bl      _objc_release
loc_10001897c:
  10001897c  mov     x0, x19
  100018980  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTextView scrollTick]_block_invoke
; address 0x100018984  size 28  kind block
; ======================================================================
  100018984  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  100018988  adrp    x9, #0x100417000
  10001898c  nop
  100018990  ldp     d0, d1, [x0, #0x28]
  100018994  ldr     x1, [x9, #0x758]
  100018998  mov     x0, x8
  10001899c  b       _objc_msgSend                            ; [self setContentOffset:{d0, d1}]

; ======================================================================
; sub_1000189a0
; address 0x1000189a0  size 8  kind sub
; ======================================================================
  1000189a0  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000189a4  b       _objc_retain

; ======================================================================
; sub_1000189a8
; address 0x1000189a8  size 8  kind sub
; ======================================================================
  1000189a8  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000189ac  b       _objc_release

; ======================================================================
; -[DFAutoScrollTextView setScrolling:]
; address 0x1000189b0  size 36  kind objc
; ======================================================================
  1000189b0  cbz     w2, loc_1000189c4                        ; if (arg1 == 0)
  1000189b4  adrp    x8, #0x100417000
  1000189b8  nop
  1000189bc  ldr     x1, [x8, #0x768]
  1000189c0  b       _objc_msgSend                            ; [self startScrolling]
loc_1000189c4:
  1000189c4  adrp    x8, #0x100417000
  1000189c8  nop
  1000189cc  ldr     x1, [x8, #0x6c8]
  1000189d0  b       _objc_msgSend                            ; [self stopScrolling]

; ======================================================================
; -[DFAutoScrollTextView isScrolling]
; address 0x1000189d4  size 64  kind objc
; ======================================================================
  1000189d4  stp     x20, x19, [sp, #-0x20]!
  1000189d8  stp     x29, x30, [sp, #0x10]
  1000189dc  add     x29, sp, #0x10
  1000189e0  adrp    x8, #0x100417000
  1000189e4  nop
  1000189e8  ldr     x1, [x8, #0x720]
  1000189ec  bl      _objc_msgSend                            ; [self autoScrollTimer]
  1000189f0  mov     x29, x29
  1000189f4  bl      _objc_retainAutoreleasedReturnValue
  1000189f8  cmp     x0, #0
  1000189fc  cset    w19, ne
  100018a00  bl      _objc_release
  100018a04  mov     x0, x19
  100018a08  ldp     x29, x30, [sp, #0x10]
  100018a0c  ldp     x20, x19, [sp], #0x20
  100018a10  ret

; ======================================================================
; -[DFAutoScrollTextView drawRect:]
; address 0x100018a14  size 60  kind objc
; ======================================================================
  100018a14  stp     x29, x30, [sp, #-0x10]!
  100018a18  mov     x29, sp
  100018a1c  sub     sp, sp, #0x10
  100018a20  str     x0, [sp]
  100018a24  adrp    x8, #0x10041e000
  100018a28  ldr     x8, [x8, #0xc00]
  100018a2c  str     x8, [sp, #8]
  100018a30  adrp    x8, #0x100417000
  100018a34  nop
  100018a38  ldr     x1, [x8, #0x770]
  100018a3c  mov     x0, sp
  100018a40  bl      _objc_msgSendSuper2                      ; [super drawRect:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100018a44  mov     sp, x29
  100018a48  ldp     x29, x30, [sp], #0x10
  100018a4c  ret

; ======================================================================
; -[DFAutoScrollTextView scrollPointsPerSecond]
; address 0x100018a50  size 20  kind objc
; ======================================================================
  100018a50  adrp    x8, #0x10041f000
  100018a54  ldrsw   x8, [x8, #0x600]                         ; ivar offset DFAutoScrollTextView._scrollPointsPerSecond (+0x78)
  100018a58  ldr     x8, [x0, x8]                             ; x8 = self->_scrollPointsPerSecond
  100018a5c  fmov    d0, x8
  100018a60  ret

; ======================================================================
; -[DFAutoScrollTextView setScrollPointsPerSecond:]
; address 0x100018a64  size 20  kind objc
; ======================================================================
  100018a64  fmov    x8, d0
  100018a68  adrp    x9, #0x10041f000
  100018a6c  ldrsw   x9, [x9, #0x600]                         ; ivar offset DFAutoScrollTextView._scrollPointsPerSecond (+0x78)
  100018a70  str     x8, [x0, x9]                             ; self->_scrollPointsPerSecond = arg1
  100018a74  ret

; ======================================================================
; -[DFAutoScrollTextView scrolling]
; address 0x100018a78  size 16  kind objc
; ======================================================================
  100018a78  adrp    x8, #0x10041f000
  100018a7c  ldrsw   x8, [x8, #0x604]                         ; ivar offset DFAutoScrollTextView._scrolling (+0x70)
  100018a80  ldrb    w0, [x0, x8]                             ; w0 = self->_scrolling
  100018a84  ret
