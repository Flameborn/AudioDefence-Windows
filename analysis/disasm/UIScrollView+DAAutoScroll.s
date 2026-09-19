// unit UIScrollView+DAAutoScroll — 12 functions
//   0x1000bd38c     444  -[UIScrollView(DAAutoScroll) startScrolling]
//   0x1000bd548     120  -[UIScrollView(DAAutoScroll) stopScrolling]
//   0x1000bd5c0     480  -[UIScrollView(DAAutoScroll) scrollTick]
//   0x1000bd7a0      28  -[UIScrollView(DAAutoScroll) scrollTick]_block_invoke
//   0x1000bd7bc       8  sub_1000bd7bc
//   0x1000bd7c4       8  sub_1000bd7c4
//   0x1000bd7cc      36  -[UIScrollView(DAAutoScroll) setScrolling:]
//   0x1000bd7f0      64  -[UIScrollView(DAAutoScroll) isScrolling]
//   0x1000bd830     124  -[UIScrollView(DAAutoScroll) scrollPointsPerSecond]
//   0x1000bd8ac     180  -[UIScrollView(DAAutoScroll) setScrollPointsPerSecond:]
//   0x1000bd960      16  -[UIScrollView(DAAutoScroll) autoScrollTimer]
//   0x1000bd970     148  -[UIScrollView(DAAutoScroll) setAutoScrollTimer:]

; ======================================================================
; -[UIScrollView(DAAutoScroll) startScrolling]
; address 0x1000bd38c  size 444  kind objc
; ======================================================================
  1000bd38c  stp     d9, d8, [sp, #-0x40]!
  1000bd390  stp     x22, x21, [sp, #0x10]
  1000bd394  stp     x20, x19, [sp, #0x20]
  1000bd398  stp     x29, x30, [sp, #0x30]
  1000bd39c  add     x29, sp, #0x30
  1000bd3a0  mov     x19, x0
  1000bd3a4  adrp    x8, #0x100417000
  1000bd3a8  nop
  1000bd3ac  ldr     x1, [x8, #0x6c8]
  1000bd3b0  bl      _objc_msgSend                            ; [self stopScrolling]
  1000bd3b4  adrp    x8, #0x100417000
  1000bd3b8  nop
  1000bd3bc  ldr     x21, [x8, #0x6d0]
  1000bd3c0  mov     x0, x19
  1000bd3c4  mov     x1, x21
  1000bd3c8  bl      _objc_msgSend                            ; [self window]
  1000bd3cc  mov     x29, x29
  1000bd3d0  bl      _objc_retainAutoreleasedReturnValue
  1000bd3d4  mov     x20, x0
  1000bd3d8  cbz     x20, loc_1000bd430                       ; if ([self window] == 0)
  1000bd3dc  mov     x0, x19
  1000bd3e0  mov     x1, x21
  1000bd3e4  bl      _objc_msgSend                            ; [self window]
  1000bd3e8  mov     x29, x29
  1000bd3ec  bl      _objc_retainAutoreleasedReturnValue
  1000bd3f0  mov     x21, x0
  1000bd3f4  adrp    x8, #0x100417000
  1000bd3f8  nop
  1000bd3fc  ldr     x1, [x8, #0x6d8]
  1000bd400  bl      _objc_msgSend                            ; [[self window] screen]
  1000bd404  mov     x29, x29
  1000bd408  bl      _objc_retainAutoreleasedReturnValue
  1000bd40c  mov     x22, x0
  1000bd410  adrp    x8, #0x100417000
  1000bd414  nop
  1000bd418  ldr     x1, [x8, #0x6e0]
  1000bd41c  bl      _objc_msgSend                            ; [[[self window] screen] scale]
  1000bd420  mov     v8.16b, v0.16b
  1000bd424  mov     x0, x22
  1000bd428  bl      _objc_release
  1000bd42c  b       loc_1000bd468
loc_1000bd430:
  1000bd430  adrp    x8, #0x10041e000
  1000bd434  ldr     x0, [x8, #0x28]                          ; class UIScreen
  1000bd438  adrp    x8, #0x100417000
  1000bd43c  nop
  1000bd440  ldr     x1, [x8, #0x6e8]
  1000bd444  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  1000bd448  mov     x29, x29
  1000bd44c  bl      _objc_retainAutoreleasedReturnValue
  1000bd450  mov     x21, x0
  1000bd454  adrp    x8, #0x100417000
  1000bd458  nop
  1000bd45c  ldr     x1, [x8, #0x6e0]
  1000bd460  bl      _objc_msgSend                            ; [[UIScreen mainScreen] scale]
  1000bd464  mov     v8.16b, v0.16b
loc_1000bd468:
  1000bd468  mov     x0, x21
  1000bd46c  bl      _objc_release
  1000bd470  mov     x0, x20
  1000bd474  bl      _objc_release
  1000bd478  adrp    x8, #0x100417000
  1000bd47c  nop
  1000bd480  ldr     x1, [x8, #0x6f0]
  1000bd484  mov     x0, x19
  1000bd488  bl      _objc_msgSend                            ; [self scrollPointsPerSecond]
  1000bd48c  fmul    d0, d8, d0
  1000bd490  fmov    d1, #1.00000000
  1000bd494  adrp    x8, #0x10041e000
  1000bd498  adrp    x9, #0x100417000
  1000bd49c  nop
  1000bd4a0  ldr     x0, [x8, #0x30]                          ; class NSTimer
  1000bd4a4  ldr     x3, [x9, #0x700]
  1000bd4a8  adrp    x8, #0x100417000
  1000bd4ac  nop
  1000bd4b0  ldr     x1, [x8, #0x890]
  1000bd4b4  fdiv    d0, d1, d0
  1000bd4b8  mov     w5, #1
  1000bd4bc  mov     x2, x19
  1000bd4c0  mov     x4, #0
  1000bd4c4  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:(1 / (d8 * [self scrollPointsPerSecond])) target:self selector:@selector(scrollTick) userInfo:0 repeats:1]
  1000bd4c8  mov     x29, x29
  1000bd4cc  bl      _objc_retainAutoreleasedReturnValue
  1000bd4d0  mov     x20, x0
  1000bd4d4  adrp    x8, #0x100417000
  1000bd4d8  nop
  1000bd4dc  ldr     x1, [x8, #0x710]
  1000bd4e0  mov     x0, x19
  1000bd4e4  mov     x2, x20
  1000bd4e8  bl      _objc_msgSend                            ; [self setAutoScrollTimer:[NSTimer scheduledTimerWithTimeInterval:(1 / (d8 * [self scrollPointsPerSecond])) target:self selector:@selector(scrollTick) userInfo:0 repeats:1]]
  1000bd4ec  mov     x0, x20
  1000bd4f0  ldp     x29, x30, [sp, #0x30]
  1000bd4f4  ldp     x20, x19, [sp, #0x20]
  1000bd4f8  ldp     x22, x21, [sp, #0x10]
  1000bd4fc  ldp     d9, d8, [sp], #0x40
  1000bd500  b       _objc_release
  1000bd504  b       loc_1000bd524
  1000bd508  b       loc_1000bd524
  1000bd50c  mov     x19, x0
  1000bd510  b       loc_1000bd530
  1000bd514  mov     x19, x0
  1000bd518  mov     x0, x22
  1000bd51c  bl      _objc_release
  1000bd520  b       loc_1000bd530
loc_1000bd524:
  1000bd524  mov     x19, x0
  1000bd528  b       loc_1000bd538
  1000bd52c  mov     x19, x0
loc_1000bd530:
  1000bd530  mov     x0, x21
  1000bd534  bl      _objc_release
loc_1000bd538:
  1000bd538  mov     x0, x20
  1000bd53c  bl      _objc_release
  1000bd540  mov     x0, x19
  1000bd544  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIScrollView(DAAutoScroll) stopScrolling]
; address 0x1000bd548  size 120  kind objc
; ======================================================================
  1000bd548  stp     x20, x19, [sp, #-0x20]!
  1000bd54c  stp     x29, x30, [sp, #0x10]
  1000bd550  add     x29, sp, #0x10
  1000bd554  mov     x19, x0
  1000bd558  adrp    x8, #0x100417000
  1000bd55c  nop
  1000bd560  ldr     x1, [x8, #0x720]
  1000bd564  bl      _objc_msgSend                            ; [self autoScrollTimer]
  1000bd568  mov     x29, x29
  1000bd56c  bl      _objc_retainAutoreleasedReturnValue
  1000bd570  mov     x20, x0
  1000bd574  adrp    x8, #0x100417000
  1000bd578  nop
  1000bd57c  ldr     x1, [x8, #0x730]
  1000bd580  bl      _objc_msgSend                            ; [[self autoScrollTimer] invalidate]
  1000bd584  mov     x0, x20
  1000bd588  bl      _objc_release
  1000bd58c  mov     x2, #0
  1000bd590  adrp    x8, #0x100417000
  1000bd594  nop
  1000bd598  ldr     x1, [x8, #0x710]
  1000bd59c  mov     x0, x19
  1000bd5a0  ldp     x29, x30, [sp, #0x10]
  1000bd5a4  ldp     x20, x19, [sp], #0x20
  1000bd5a8  b       _objc_msgSend                            ; [self setAutoScrollTimer:0]
  1000bd5ac  mov     x19, x0
  1000bd5b0  mov     x0, x20
  1000bd5b4  bl      _objc_release
  1000bd5b8  mov     x0, x19
  1000bd5bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIScrollView(DAAutoScroll) scrollTick]
; address 0x1000bd5c0  size 480  kind objc
; ======================================================================
  1000bd5c0  stp     d11, d10, [sp, #-0x40]!
  1000bd5c4  stp     d9, d8, [sp, #0x10]
  1000bd5c8  stp     x20, x19, [sp, #0x20]
  1000bd5cc  stp     x29, x30, [sp, #0x30]
  1000bd5d0  add     x29, sp, #0x30
  1000bd5d4  sub     sp, sp, #0x40
  1000bd5d8  mov     x19, x0
  1000bd5dc  adrp    x8, #0x100417000
  1000bd5e0  nop
  1000bd5e4  ldr     x1, [x8, #0x6d0]
  1000bd5e8  bl      _objc_msgSend                            ; [self window]
  1000bd5ec  mov     x29, x29
  1000bd5f0  bl      _objc_retainAutoreleasedReturnValue
  1000bd5f4  mov     x20, x0
  1000bd5f8  bl      _objc_release
  1000bd5fc  cbnz    x20, loc_1000bd614                       ; if ([self window] != 0)
  1000bd600  adrp    x8, #0x100417000
  1000bd604  nop
  1000bd608  ldr     x1, [x8, #0x6c8]
  1000bd60c  mov     x0, x19
  1000bd610  bl      _objc_msgSend                            ; [self stopScrolling]
loc_1000bd614:
  1000bd614  adrp    x8, #0x100417000
  1000bd618  nop
  1000bd61c  ldr     x1, [x8, #0x720]
  1000bd620  mov     x0, x19
  1000bd624  bl      _objc_msgSend                            ; [self autoScrollTimer]
  1000bd628  mov     x29, x29
  1000bd62c  bl      _objc_retainAutoreleasedReturnValue
  1000bd630  mov     x20, x0
  1000bd634  adrp    x8, #0x100417000
  1000bd638  nop
  1000bd63c  ldr     x1, [x8, #0x738]
  1000bd640  bl      _objc_msgSend                            ; [[self autoScrollTimer] timeInterval]
  1000bd644  mov     v8.16b, v0.16b
  1000bd648  mov     x0, x20
  1000bd64c  bl      _objc_release
  1000bd650  adrp    x8, #0x100417000
  1000bd654  nop
  1000bd658  ldr     x1, [x8, #0x6f0]
  1000bd65c  mov     x0, x19
  1000bd660  bl      _objc_msgSend                            ; [self scrollPointsPerSecond]
  1000bd664  fmul    d10, d8, d0
  1000bd668  adrp    x8, #0x100416000
  1000bd66c  nop
  1000bd670  ldr     x20, [x8, #0xfb0]
  1000bd674  mov     x0, x19
  1000bd678  mov     x1, x20
  1000bd67c  bl      _objc_msgSend                            ; [self contentOffset]
  1000bd680  mov     v9.16b, v0.16b
  1000bd684  mov     x0, x19
  1000bd688  mov     x1, x20
  1000bd68c  bl      _objc_msgSend                            ; [self contentOffset]
  1000bd690  fadd    d11, d10, d1                             ; t1 = (([[self autoScrollTimer] timeInterval] * [self scrollPointsPerSecond]) + [self contentOffset].1)
  1000bd694  adrp    x8, #0x100417000
  1000bd698  nop
  1000bd69c  ldr     x1, [x8, #0x740]
  1000bd6a0  mov     x0, x19
  1000bd6a4  bl      _objc_msgSend                            ; [self contentSize]
  1000bd6a8  mov     v10.16b, v1.16b
  1000bd6ac  adrp    x8, #0x100417000
  1000bd6b0  nop
  1000bd6b4  ldr     x1, [x8, #0x748]
  1000bd6b8  mov     x0, x19
  1000bd6bc  bl      _objc_msgSend                            ; [self bounds]
  1000bd6c0  fsub    d0, d10, d3
  1000bd6c4  fcmp    d11, d0
  1000bd6c8  b.le    loc_1000bd6f4                            ; if (t1 <= (or unordered) ([self contentSize].1 - [self bounds].3))
  1000bd6cc  adrp    x8, #0x100417000
  1000bd6d0  nop
  1000bd6d4  ldr     x1, [x8, #0x6c8]
  1000bd6d8  mov     x0, x19
  1000bd6dc  sub     sp, x29, #0x30
  1000bd6e0  ldp     x29, x30, [sp, #0x30]
  1000bd6e4  ldp     x20, x19, [sp, #0x20]
  1000bd6e8  ldp     d9, d8, [sp, #0x10]
  1000bd6ec  ldp     d11, d10, [sp], #0x40
  1000bd6f0  b       _objc_msgSend                            ; [self stopScrolling]
loc_1000bd6f4:
  1000bd6f4  adrp    x8, #0x1003b0000
  1000bd6f8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000bd6fc  adrp    x9, #0x10041d000
  1000bd700  ldr     x20, [x9, #0xf98]                        ; class UIView
  1000bd704  mov     w9, #-0x3e000000
  1000bd708  str     x8, [sp, #8]
  1000bd70c  stp     w9, wzr, [sp, #0x10]
  1000bd710  adr     x8, #0x1000bd7a0                         ; &-[UIScrollView(DAAutoScroll) scrollTick]_block_invoke
  1000bd714  nop
  1000bd718  str     x8, [sp, #0x18]
  1000bd71c  adrp    x8, #0x1003b2000
  1000bd720  add     x8, x8, #0x620                           ; &d_1003b2620
  1000bd724  str     x8, [sp, #0x20]
  1000bd728  mov     x0, x19
  1000bd72c  bl      _objc_retain
  1000bd730  str     x0, [sp, #0x28]
  1000bd734  stp     d9, d11, [sp, #0x30]
  1000bd738  adrp    x8, #0x100417000
  1000bd73c  nop
  1000bd740  ldr     x1, [x8, #0x8f0]
  1000bd744  movi    v1.16b, #0
  1000bd748  mov     w2, #2
  1000bd74c  add     x3, sp, #8
  1000bd750  mov     x0, x20
  1000bd754  mov     v0.16b, v8.16b
  1000bd758  mov     x4, #0
  1000bd75c  bl      _objc_msgSend                            ; [UIView animateWithDuration:[[self autoScrollTimer] timeInterval] delay:0 options:2 animations:^{-[UIScrollView(DAAutoScroll) scrollTick]_block_invoke captures +0x20=self, +0x28=[self contentOffset].0, +0x30=t1} completion:0]
  1000bd760  ldr     x0, [sp, #0x28]
  1000bd764  bl      _objc_release
  1000bd768  sub     sp, x29, #0x30
  1000bd76c  ldp     x29, x30, [sp, #0x30]
  1000bd770  ldp     x20, x19, [sp, #0x20]
  1000bd774  ldp     d9, d8, [sp, #0x10]
  1000bd778  ldp     d11, d10, [sp], #0x40
  1000bd77c  ret
  1000bd780  mov     x19, x0
  1000bd784  mov     x0, x20
  1000bd788  b       loc_1000bd794
  1000bd78c  mov     x19, x0
  1000bd790  ldr     x0, [sp, #0x28]
loc_1000bd794:
  1000bd794  bl      _objc_release
  1000bd798  mov     x0, x19
  1000bd79c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIScrollView(DAAutoScroll) scrollTick]_block_invoke
; address 0x1000bd7a0  size 28  kind block
; ======================================================================
  1000bd7a0  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  1000bd7a4  adrp    x9, #0x100417000
  1000bd7a8  nop
  1000bd7ac  ldp     d0, d1, [x0, #0x28]
  1000bd7b0  ldr     x1, [x9, #0x758]
  1000bd7b4  mov     x0, x8
  1000bd7b8  b       _objc_msgSend                            ; [self setContentOffset:{d0, d1}]

; ======================================================================
; sub_1000bd7bc
; address 0x1000bd7bc  size 8  kind sub
; ======================================================================
  1000bd7bc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000bd7c0  b       _objc_retain

; ======================================================================
; sub_1000bd7c4
; address 0x1000bd7c4  size 8  kind sub
; ======================================================================
  1000bd7c4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000bd7c8  b       _objc_release

; ======================================================================
; -[UIScrollView(DAAutoScroll) setScrolling:]
; address 0x1000bd7cc  size 36  kind objc
; ======================================================================
  1000bd7cc  cbz     w2, loc_1000bd7e0                        ; if (arg1 == 0)
  1000bd7d0  adrp    x8, #0x100417000
  1000bd7d4  nop
  1000bd7d8  ldr     x1, [x8, #0x768]
  1000bd7dc  b       _objc_msgSend                            ; [self startScrolling]
loc_1000bd7e0:
  1000bd7e0  adrp    x8, #0x100417000
  1000bd7e4  nop
  1000bd7e8  ldr     x1, [x8, #0x6c8]
  1000bd7ec  b       _objc_msgSend                            ; [self stopScrolling]

; ======================================================================
; -[UIScrollView(DAAutoScroll) isScrolling]
; address 0x1000bd7f0  size 64  kind objc
; ======================================================================
  1000bd7f0  stp     x20, x19, [sp, #-0x20]!
  1000bd7f4  stp     x29, x30, [sp, #0x10]
  1000bd7f8  add     x29, sp, #0x10
  1000bd7fc  adrp    x8, #0x100417000
  1000bd800  nop
  1000bd804  ldr     x1, [x8, #0x720]
  1000bd808  bl      _objc_msgSend                            ; [self autoScrollTimer]
  1000bd80c  mov     x29, x29
  1000bd810  bl      _objc_retainAutoreleasedReturnValue
  1000bd814  cmp     x0, #0
  1000bd818  cset    w19, ne
  1000bd81c  bl      _objc_release
  1000bd820  mov     x0, x19
  1000bd824  ldp     x29, x30, [sp, #0x10]
  1000bd828  ldp     x20, x19, [sp], #0x20
  1000bd82c  ret

; ======================================================================
; -[UIScrollView(DAAutoScroll) scrollPointsPerSecond]
; address 0x1000bd830  size 124  kind objc
; ======================================================================
  1000bd830  stp     d9, d8, [sp, #-0x30]!
  1000bd834  stp     x20, x19, [sp, #0x10]
  1000bd838  stp     x29, x30, [sp, #0x20]
  1000bd83c  add     x29, sp, #0x20
  1000bd840  adrp    x1, #0x10042d000
  1000bd844  add     x1, x1, #0xa48                           ; &g_10042da48
  1000bd848  bl      _objc_getAssociatedObject                ; objc_getAssociatedObject(self, &g_10042da48)
  1000bd84c  mov     x29, x29
  1000bd850  bl      _objc_retainAutoreleasedReturnValue
  1000bd854  mov     x19, x0
  1000bd858  cbz     x19, loc_1000bd878                       ; if (objc_getAssociatedObject(self, &g_10042da48) == 0)
  1000bd85c  adrp    x8, #0x100417000
  1000bd860  nop
  1000bd864  ldr     x1, [x8, #0x48]
  1000bd868  mov     x0, x19
  1000bd86c  bl      _objc_msgSend                            ; [objc_getAssociatedObject(self, &g_10042da48) floatValue]
  1000bd870  fcvt    d8, s0
  1000bd874  b       loc_1000bd87c
loc_1000bd878:
  1000bd878  fmov    d8, #15.00000000
loc_1000bd87c:
  1000bd87c  mov     x0, x19
  1000bd880  bl      _objc_release
  1000bd884  mov     v0.16b, v8.16b
  1000bd888  ldp     x29, x30, [sp, #0x20]
  1000bd88c  ldp     x20, x19, [sp, #0x10]
  1000bd890  ldp     d9, d8, [sp], #0x30
  1000bd894  ret
  1000bd898  mov     x20, x0
  1000bd89c  mov     x0, x19
  1000bd8a0  bl      _objc_release
  1000bd8a4  mov     x0, x20
  1000bd8a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIScrollView(DAAutoScroll) setScrollPointsPerSecond:]
; address 0x1000bd8ac  size 180  kind objc
; ======================================================================
  1000bd8ac  stp     d9, d8, [sp, #-0x30]!
  1000bd8b0  stp     x20, x19, [sp, #0x10]
  1000bd8b4  stp     x29, x30, [sp, #0x20]
  1000bd8b8  add     x29, sp, #0x20
  1000bd8bc  mov     v8.16b, v0.16b
  1000bd8c0  mov     x19, x0
  1000bd8c4  adrp    x8, #0x10041a000
  1000bd8c8  nop
  1000bd8cc  ldr     x1, [x8, #0x968]
  1000bd8d0  adrp    x2, #0x1003c1000
  1000bd8d4  add     x2, x2, #0xcd0                           ; @"scrollPointsPerSecond"
  1000bd8d8  bl      _objc_msgSend                            ; [self willChangeValueForKey:@"scrollPointsPerSecond"]
  1000bd8dc  adrp    x8, #0x10041d000
  1000bd8e0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000bd8e4  fcvt    s0, d8
  1000bd8e8  adrp    x8, #0x100418000
  1000bd8ec  nop
  1000bd8f0  ldr     x1, [x8, #0x310]
  1000bd8f4  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:arg1]
  1000bd8f8  mov     x29, x29
  1000bd8fc  bl      _objc_retainAutoreleasedReturnValue
  1000bd900  mov     x20, x0
  1000bd904  adrp    x1, #0x10042d000
  1000bd908  add     x1, x1, #0xa48                           ; &g_10042da48
  1000bd90c  mov     w3, #1
  1000bd910  mov     x0, x19
  1000bd914  mov     x2, x20
  1000bd918  bl      _objc_setAssociatedObject                ; objc_setAssociatedObject(self, &g_10042da48, [NSNumber numberWithFloat:arg1], 1)
  1000bd91c  mov     x0, x20
  1000bd920  bl      _objc_release
  1000bd924  adrp    x8, #0x10041a000
  1000bd928  nop
  1000bd92c  ldr     x1, [x8, #0x970]
  1000bd930  adrp    x2, #0x1003c1000
  1000bd934  add     x2, x2, #0xcd0                           ; @"scrollPointsPerSecond"
  1000bd938  mov     x0, x19
  1000bd93c  ldp     x29, x30, [sp, #0x20]
  1000bd940  ldp     x20, x19, [sp, #0x10]
  1000bd944  ldp     d9, d8, [sp], #0x30
  1000bd948  b       _objc_msgSend                            ; [self didChangeValueForKey:@"scrollPointsPerSecond"]
  1000bd94c  mov     x19, x0
  1000bd950  mov     x0, x20
  1000bd954  bl      _objc_release
  1000bd958  mov     x0, x19
  1000bd95c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[UIScrollView(DAAutoScroll) autoScrollTimer]
; address 0x1000bd960  size 16  kind objc
; ======================================================================
  1000bd960  adrp    x8, #0x10042d000
  1000bd964  add     x8, x8, #0xa48                           ; &g_10042da48
  1000bd968  add     x1, x8, #1                               ; &g_10042da49
  1000bd96c  b       _objc_getAssociatedObject                ; objc_getAssociatedObject(self, &g_10042da49)

; ======================================================================
; -[UIScrollView(DAAutoScroll) setAutoScrollTimer:]
; address 0x1000bd970  size 148  kind objc
; ======================================================================
  1000bd970  stp     x20, x19, [sp, #-0x20]!
  1000bd974  stp     x29, x30, [sp, #0x10]
  1000bd978  add     x29, sp, #0x10
  1000bd97c  mov     x20, x0
  1000bd980  mov     x0, x2
  1000bd984  bl      _objc_retain
  1000bd988  mov     x19, x0
  1000bd98c  adrp    x8, #0x10041a000
  1000bd990  nop
  1000bd994  ldr     x1, [x8, #0x968]
  1000bd998  adrp    x2, #0x1003c1000
  1000bd99c  add     x2, x2, #0xcf0                           ; @"autoScrollTimer"
  1000bd9a0  mov     x0, x20
  1000bd9a4  bl      _objc_msgSend                            ; [self willChangeValueForKey:@"autoScrollTimer"]
  1000bd9a8  mov     x3, #0
  1000bd9ac  adrp    x8, #0x10042d000
  1000bd9b0  add     x8, x8, #0xa48                           ; &g_10042da48
  1000bd9b4  add     x1, x8, #1                               ; &g_10042da49
  1000bd9b8  mov     x0, x20
  1000bd9bc  mov     x2, x19
  1000bd9c0  bl      _objc_setAssociatedObject                ; objc_setAssociatedObject(self, &g_10042da49, arg1, 0)
  1000bd9c4  adrp    x8, #0x10041a000
  1000bd9c8  nop
  1000bd9cc  ldr     x1, [x8, #0x970]
  1000bd9d0  adrp    x2, #0x1003c1000
  1000bd9d4  add     x2, x2, #0xcf0                           ; @"autoScrollTimer"
  1000bd9d8  mov     x0, x20
  1000bd9dc  bl      _objc_msgSend                            ; [self didChangeValueForKey:@"autoScrollTimer"]
  1000bd9e0  mov     x0, x19
  1000bd9e4  ldp     x29, x30, [sp, #0x10]
  1000bd9e8  ldp     x20, x19, [sp], #0x20
  1000bd9ec  b       _objc_release
  1000bd9f0  mov     x20, x0
  1000bd9f4  mov     x0, x19
  1000bd9f8  bl      _objc_release
  1000bd9fc  mov     x0, x20
  1000bda00  bl      __Unwind_Resume                          ; Unwind_Resume()
