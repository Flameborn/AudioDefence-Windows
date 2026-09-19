// unit ADInfiniteScrollView — 16 functions
//   0x10009c4b0     868  -[ADInfiniteScrollView awakeFromNib]
//   0x10009c814     176  -[ADInfiniteScrollView scrollViewDidScroll:]
//   0x10009c8c4     100  -[ADInfiniteScrollView scrollViewWillBeginDecelerating:]
//   0x10009c928     268  -[ADInfiniteScrollView adjustOffset]
//   0x10009ca34     284  -[ADInfiniteScrollView sendOffsetToDelegate]
//   0x10009cb50     436  -[ADInfiniteScrollView controlSchemeChanged]
//   0x10009cd04     100  -[ADInfiniteScrollView disableGyro]
//   0x10009cd68     100  -[ADInfiniteScrollView enableGyro]
//   0x10009cdcc     540  -[ADInfiniteScrollView update]
//   0x10009cfe8     352  -[ADInfiniteScrollView tiltDidMoveFromAngle:]
//   0x10009d148     304  -[ADInfiniteScrollView gyroDidMoveFromAngle:]
//   0x10009d278     220  -[ADInfiniteScrollView playerSwiped:]
//   0x10009d354     208  -[ADInfiniteScrollView dealloc]
//   0x10009d424      16  -[ADInfiniteScrollView imageName]
//   0x10009d434      56  -[ADInfiniteScrollView setImageName:]
//   0x10009d46c      64  -[ADInfiniteScrollView .cxx_destruct]

; ======================================================================
; -[ADInfiniteScrollView awakeFromNib]
; address 0x10009c4b0  size 868  kind objc
; ======================================================================
  10009c4b0  stp     d13, d12, [sp, #-0x90]!
  10009c4b4  stp     d11, d10, [sp, #0x10]
  10009c4b8  stp     d9, d8, [sp, #0x20]
  10009c4bc  stp     x28, x27, [sp, #0x30]
  10009c4c0  stp     x26, x25, [sp, #0x40]
  10009c4c4  stp     x24, x23, [sp, #0x50]
  10009c4c8  stp     x22, x21, [sp, #0x60]
  10009c4cc  stp     x20, x19, [sp, #0x70]
  10009c4d0  stp     x29, x30, [sp, #0x80]
  10009c4d4  add     x29, sp, #0x80
  10009c4d8  sub     sp, sp, #0x30
  10009c4dc  mov     x19, x0
  10009c4e0  adrp    x8, #0x10041d000
  10009c4e4  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  10009c4e8  adrp    x8, #0x100416000
  10009c4ec  nop
  10009c4f0  ldr     x1, [x8, #0xac8]
  10009c4f4  str     x1, [sp, #0x28]
  10009c4f8  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10009c4fc  adrp    x8, #0x100416000
  10009c500  nop
  10009c504  ldr     x1, [x8, #0xab8]
  10009c508  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10009c50c  adrp    x8, #0x100420000
  10009c510  ldrsw   x9, [x8, #0x34]                          ; ivar offset ADInfiniteScrollView.images (+0x70)
  10009c514  str     x9, [sp, #8]
  10009c518  ldr     x8, [x19, x9]                            ; x8 = self->images
  10009c51c  str     x0, [x19, x9]                            ; self->images = [[NSMutableArray alloc] init]
  10009c520  mov     x0, x8
  10009c524  bl      _objc_release
  10009c528  mov     w22, #0
  10009c52c  adrp    x8, #0x10041a000
  10009c530  nop
  10009c534  ldr     x8, [x8, #0x1e0]
  10009c538  str     x8, [sp, #0x20]
  10009c53c  adrp    x8, #0x100416000
  10009c540  nop
  10009c544  ldr     x8, [x8, #0xd40]
  10009c548  str     x8, [sp, #0x18]
  10009c54c  adrp    x8, #0x100417000
  10009c550  nop
  10009c554  ldr     x8, [x8, #0x8a0]
  10009c558  str     x8, [sp, #0x10]
  10009c55c  adrp    x8, #0x100416000
  10009c560  nop
  10009c564  ldr     x24, [x8, #0xd90]
  10009c568  adrp    x8, #0x100416000
  10009c56c  nop
  10009c570  ldr     x25, [x8, #0xf20]
  10009c574  adrp    x8, #0x100416000
  10009c578  nop
  10009c57c  ldr     x26, [x8, #0xf38]
  10009c580  adrp    x8, #0x100417000
  10009c584  nop
  10009c588  ldr     x27, [x8, #0x7b8]
  10009c58c  adrp    x8, #0x100420000
  10009c590  ldrsw   x23, [x8, #0x38]                         ; ivar offset ADInfiniteScrollView.imageWidth (+0x78)
  10009c594  fmov    d12, #0.50000000
loc_10009c598:
  10009c598  adrp    x8, #0x10041e000
  10009c59c  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10009c5a0  ldr     x1, [sp, #0x28]
  10009c5a4  bl      _objc_msgSend                            ; [UIImageView alloc]
  10009c5a8  mov     x28, x0
  10009c5ac  adrp    x8, #0x10041d000
  10009c5b0  ldr     x21, [x8, #0xf10]                        ; class UIImage
  10009c5b4  mov     x0, x19
  10009c5b8  ldr     x1, [sp, #0x20]
  10009c5bc  bl      _objc_msgSend                            ; [self imageName]
  10009c5c0  mov     x29, x29
  10009c5c4  bl      _objc_retainAutoreleasedReturnValue
  10009c5c8  mov     x20, x0
  10009c5cc  mov     x0, x21
  10009c5d0  ldr     x1, [sp, #0x18]
  10009c5d4  mov     x2, x20
  10009c5d8  bl      _objc_msgSend                            ; [UIImage imageNamed:[self imageName]]
  10009c5dc  mov     x29, x29
  10009c5e0  bl      _objc_retainAutoreleasedReturnValue
  10009c5e4  mov     x21, x0
  10009c5e8  mov     x0, x28
  10009c5ec  ldr     x1, [sp, #0x10]
  10009c5f0  mov     x2, x21
  10009c5f4  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]]
  10009c5f8  mov     x28, x0
  10009c5fc  mov     x0, x21
  10009c600  bl      _objc_release
  10009c604  mov     x0, x20
  10009c608  bl      _objc_release
  10009c60c  ldr     x8, [sp, #8]
  10009c610  ldr     x0, [x19, x8]                            ; x0 = self->images
  10009c614  mov     x1, x24
  10009c618  mov     x2, x28
  10009c61c  bl      _objc_msgSend                            ; [self->images addObject:[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]]]
  10009c620  mov     x0, x19
  10009c624  mov     x1, x25
  10009c628  mov     x2, x28
  10009c62c  bl      _objc_msgSend                            ; [self addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]]]
  10009c630  mov     x0, x28
  10009c634  mov     x1, x26
  10009c638  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame]
  10009c63c  mov     v8.16b, v2.16b
  10009c640  mov     x0, x19
  10009c644  mov     x1, x26
  10009c648  bl      _objc_msgSend                            ; [self frame]
  10009c64c  mov     v9.16b, v3.16b
  10009c650  mov     x0, x28
  10009c654  mov     x1, x26
  10009c658  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame]
  10009c65c  mov     v11.16b, v3.16b
  10009c660  mov     x0, x28
  10009c664  mov     x1, x26
  10009c668  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame]
  10009c66c  mov     v10.16b, v2.16b
  10009c670  mov     x0, x28
  10009c674  mov     x1, x26
  10009c678  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame]
  10009c67c  scvtf   d0, w22
  10009c680  fmul    d0, d0, d8                               ; t1 = ((float)w22 * [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame].2)
  10009c684  fsub    d1, d9, d11                              ; t2 = ([self frame].3 - [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame].3)
  10009c688  fmul    d1, d1, d12
  10009c68c  mov     x0, x28
  10009c690  mov     x1, x27
  10009c694  mov     v2.16b, v10.16b
  10009c698  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] setFrame:{t1, (t2 * 0.5), [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame].2, [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame].3}]
  10009c69c  mov     x0, x28
  10009c6a0  mov     x1, x26
  10009c6a4  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame]
  10009c6a8  fcvt    s0, d2
  10009c6ac  str     s0, [x19, x23]                           ; self->imageWidth = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[self imageName]]] frame].2
  10009c6b0  mov     x0, x28
  10009c6b4  bl      _objc_release
  10009c6b8  add     w22, w22, #1
  10009c6bc  cmp     w22, #3
  10009c6c0  b.lt    loc_10009c598                            ; if ((w22 + 1) < 3)
  10009c6c4  ldr     s0, [x19, x23]                           ; s0 = self->imageWidth
  10009c6c8  fmov    s1, #3.00000000
  10009c6cc  fmul    s0, s0, s1
  10009c6d0  fcvt    d8, s0
  10009c6d4  adrp    x8, #0x100417000
  10009c6d8  nop
  10009c6dc  ldr     x20, [x8, #0x740]
  10009c6e0  mov     x0, x19
  10009c6e4  mov     x1, x20
  10009c6e8  bl      _objc_msgSend                            ; [self contentSize]
  10009c6ec  adrp    x8, #0x100417000
  10009c6f0  nop
  10009c6f4  ldr     x1, [x8, #0x690]
  10009c6f8  mov     x0, x19
  10009c6fc  mov     v0.16b, v8.16b
  10009c700  bl      _objc_msgSend                            ; [self setContentSize:{(self->imageWidth * 3), [self contentSize].1}]
  10009c704  mov     x0, x19
  10009c708  mov     x1, x20
  10009c70c  bl      _objc_msgSend                            ; [self contentSize]
  10009c710  fmul    d0, d0, d12
  10009c714  adrp    x8, #0x100417000
  10009c718  nop
  10009c71c  ldr     x1, [x8, #0x758]
  10009c720  movi    v1.16b, #0
  10009c724  mov     x0, x19
  10009c728  bl      _objc_msgSend                            ; [self setContentOffset:{([self contentSize].0 * 0.5), 0}]
  10009c72c  adrp    x8, #0x100417000
  10009c730  nop
  10009c734  ldr     x1, [x8, #0x7d8]
  10009c738  mov     x0, x19
  10009c73c  mov     x2, x19
  10009c740  bl      _objc_msgSend                            ; [self setDelegate:self]
  10009c744  adrp    x8, #0x10041a000
  10009c748  nop
  10009c74c  ldr     x1, [x8, #0x1e8]
  10009c750  mov     w2, #0
  10009c754  mov     x0, x19
  10009c758  bl      _objc_msgSend                            ; [self setShowsHorizontalScrollIndicator:0]
  10009c75c  adrp    x8, #0x10041d000
  10009c760  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009c764  adrp    x8, #0x100416000
  10009c768  nop
  10009c76c  ldr     x1, [x8, #0xc00]
  10009c770  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009c774  mov     x29, x29
  10009c778  bl      _objc_retainAutoreleasedReturnValue
  10009c77c  mov     x20, x0
  10009c780  adrp    x8, #0x100417000
  10009c784  nop
  10009c788  ldr     x1, [x8, #0xc80]
  10009c78c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009c790  adrp    x8, #0x100420000
  10009c794  ldrsw   x8, [x8, #0x3c]                          ; ivar offset ADInfiniteScrollView.currentControlScheme (+0x7c)
  10009c798  str     w0, [x19, x8]                            ; self->currentControlScheme = [[ADGameParameters sharedParameters] controlScheme]
  10009c79c  mov     x0, x20
  10009c7a0  bl      _objc_release
  10009c7a4  adrp    x8, #0x10041a000
  10009c7a8  nop
  10009c7ac  ldr     x1, [x8, #0x1f0]
  10009c7b0  mov     x0, x19
  10009c7b4  sub     sp, x29, #0x80
  10009c7b8  ldp     x29, x30, [sp, #0x80]
  10009c7bc  ldp     x20, x19, [sp, #0x70]
  10009c7c0  ldp     x22, x21, [sp, #0x60]
  10009c7c4  ldp     x24, x23, [sp, #0x50]
  10009c7c8  ldp     x26, x25, [sp, #0x40]
  10009c7cc  ldp     x28, x27, [sp, #0x30]
  10009c7d0  ldp     d9, d8, [sp, #0x20]
  10009c7d4  ldp     d11, d10, [sp, #0x10]
  10009c7d8  ldp     d13, d12, [sp], #0x90
  10009c7dc  b       _objc_msgSend                            ; [self controlSchemeChanged]
  10009c7e0  mov     x19, x0
  10009c7e4  mov     x0, x28
  10009c7e8  b       loc_10009c804
loc_10009c7ec:
  10009c7ec  mov     x19, x0
  10009c7f0  b       loc_10009c800
  10009c7f4  mov     x19, x0
  10009c7f8  mov     x0, x21
  10009c7fc  bl      _objc_release
loc_10009c800:
  10009c800  mov     x0, x20
loc_10009c804:
  10009c804  bl      _objc_release
  10009c808  mov     x0, x19
  10009c80c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009c810  b       loc_10009c7ec

; ======================================================================
; -[ADInfiniteScrollView scrollViewDidScroll:]
; address 0x10009c814  size 176  kind objc
; ======================================================================
  10009c814  stp     x22, x21, [sp, #-0x30]!
  10009c818  stp     x20, x19, [sp, #0x10]
  10009c81c  stp     x29, x30, [sp, #0x20]
  10009c820  add     x29, sp, #0x20
  10009c824  mov     x19, x0
  10009c828  adrp    x8, #0x10041d000
  10009c82c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009c830  adrp    x8, #0x100416000
  10009c834  nop
  10009c838  ldr     x1, [x8, #0xc00]
  10009c83c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009c840  mov     x29, x29
  10009c844  bl      _objc_retainAutoreleasedReturnValue
  10009c848  mov     x20, x0
  10009c84c  adrp    x8, #0x100417000
  10009c850  nop
  10009c854  ldr     x1, [x8, #0xc80]
  10009c858  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009c85c  mov     x21, x0
  10009c860  mov     x0, x20
  10009c864  bl      _objc_release
  10009c868  cmp     w21, #1
  10009c86c  b.eq    loc_10009c898                            ; if ([[ADGameParameters sharedParameters] controlScheme] == 1)
  10009c870  adrp    x8, #0x10041a000
  10009c874  nop
  10009c878  ldr     x1, [x8, #0x1f8]
  10009c87c  mov     x0, x19
  10009c880  bl      _objc_msgSend                            ; [self adjustOffset]
  10009c884  adrp    x8, #0x10041a000
  10009c888  nop
  10009c88c  ldr     x1, [x8, #0x200]
  10009c890  mov     x0, x19
  10009c894  bl      _objc_msgSend                            ; [self sendOffsetToDelegate]
loc_10009c898:
  10009c898  ldp     x29, x30, [sp, #0x20]
  10009c89c  ldp     x20, x19, [sp, #0x10]
  10009c8a0  ldp     x22, x21, [sp], #0x30
  10009c8a4  ret
  10009c8a8  mov     x19, x0
  10009c8ac  b       loc_10009c8bc
  10009c8b0  mov     x19, x0
  10009c8b4  mov     x0, x20
  10009c8b8  bl      _objc_release
loc_10009c8bc:
  10009c8bc  mov     x0, x19
  10009c8c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView scrollViewWillBeginDecelerating:]
; address 0x10009c8c4  size 100  kind objc
; ======================================================================
  10009c8c4  stp     x20, x19, [sp, #-0x20]!
  10009c8c8  stp     x29, x30, [sp, #0x10]
  10009c8cc  add     x29, sp, #0x10
  10009c8d0  mov     x0, x2
  10009c8d4  bl      _objc_retain
  10009c8d8  mov     x19, x0
  10009c8dc  adrp    x8, #0x100416000
  10009c8e0  nop
  10009c8e4  ldr     x1, [x8, #0xfb0]
  10009c8e8  bl      _objc_msgSend                            ; [arg1 contentOffset]
  10009c8ec  adrp    x8, #0x100418000
  10009c8f0  nop
  10009c8f4  ldr     x1, [x8, #0x4f8]
  10009c8f8  mov     w2, #1
  10009c8fc  mov     x0, x19
  10009c900  bl      _objc_msgSend                            ; [arg1 setContentOffset:{[arg1 contentOffset].0, [arg1 contentOffset].1} animated:1]
  10009c904  mov     x0, x19
  10009c908  ldp     x29, x30, [sp, #0x10]
  10009c90c  ldp     x20, x19, [sp], #0x20
  10009c910  b       _objc_release
  10009c914  mov     x20, x0
  10009c918  mov     x0, x19
  10009c91c  bl      _objc_release
  10009c920  mov     x0, x20
  10009c924  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView adjustOffset]
; address 0x10009c928  size 268  kind objc
; ======================================================================
  10009c928  stp     d9, d8, [sp, #-0x40]!
  10009c92c  stp     x22, x21, [sp, #0x10]
  10009c930  stp     x20, x19, [sp, #0x20]
  10009c934  stp     x29, x30, [sp, #0x30]
  10009c938  add     x29, sp, #0x30
  10009c93c  mov     x19, x0
  10009c940  adrp    x8, #0x100416000
  10009c944  nop
  10009c948  ldr     x20, [x8, #0xfb0]
  10009c94c  mov     x1, x20
  10009c950  bl      _objc_msgSend                            ; [self contentOffset]
  10009c954  adrp    x8, #0x100420000
  10009c958  ldrsw   x21, [x8, #0x38]                         ; ivar offset ADInfiniteScrollView.imageWidth (+0x78)
  10009c95c  ldr     s1, [x19, x21]                           ; s1 = self->imageWidth
  10009c960  fcvt    d1, s1
  10009c964  fmov    d2, #0.50000000
  10009c968  fmul    d1, d1, d2
  10009c96c  fcmp    d0, d1
  10009c970  b.pl    loc_10009c9b0                            ; if ([self contentOffset].0 >= (or unordered) (self->imageWidth * 0.5))
  10009c974  mov     x0, x19
  10009c978  mov     x1, x20
  10009c97c  bl      _objc_msgSend                            ; [self contentOffset]
  10009c980  ldr     s1, [x19, x21]                           ; s1 = self->imageWidth
  10009c984  fcvt    d1, s1
  10009c988  fadd    d8, d0, d1
  10009c98c  mov     x0, x19
  10009c990  mov     x1, x20
  10009c994  bl      _objc_msgSend                            ; [self contentOffset]
  10009c998  adrp    x8, #0x100417000
  10009c99c  nop
  10009c9a0  ldr     x1, [x8, #0x758]
  10009c9a4  mov     x0, x19
  10009c9a8  mov     v0.16b, v8.16b
  10009c9ac  bl      _objc_msgSend                            ; [self setContentOffset:{([self contentOffset].0 + self->imageWidth), [self contentOffset].1}]
loc_10009c9b0:
  10009c9b0  mov     x0, x19
  10009c9b4  mov     x1, x20
  10009c9b8  bl      _objc_msgSend                            ; [self contentOffset]
  10009c9bc  ldr     s1, [x19, x21]                           ; s1 = self->imageWidth
  10009c9c0  fcvt    d1, s1
  10009c9c4  fmov    d2, #1.50000000
  10009c9c8  fmul    d1, d1, d2
  10009c9cc  fcmp    d0, d1
  10009c9d0  b.le    loc_10009ca20                            ; if ([self contentOffset].0 <= (or unordered) (self->imageWidth * 1.5))
  10009c9d4  mov     x0, x19
  10009c9d8  mov     x1, x20
  10009c9dc  bl      _objc_msgSend                            ; [self contentOffset]
  10009c9e0  ldr     s1, [x19, x21]                           ; s1 = self->imageWidth
  10009c9e4  fcvt    d1, s1
  10009c9e8  fsub    d8, d0, d1
  10009c9ec  mov     x0, x19
  10009c9f0  mov     x1, x20
  10009c9f4  bl      _objc_msgSend                            ; [self contentOffset]
  10009c9f8  adrp    x8, #0x100417000
  10009c9fc  nop
  10009ca00  ldr     x1, [x8, #0x758]
  10009ca04  mov     x0, x19
  10009ca08  mov     v0.16b, v8.16b
  10009ca0c  ldp     x29, x30, [sp, #0x30]
  10009ca10  ldp     x20, x19, [sp, #0x20]
  10009ca14  ldp     x22, x21, [sp, #0x10]
  10009ca18  ldp     d9, d8, [sp], #0x40
  10009ca1c  b       _objc_msgSend                            ; [self setContentOffset:{([self contentOffset].0 - self->imageWidth), [self contentOffset].1}]
loc_10009ca20:
  10009ca20  ldp     x29, x30, [sp, #0x30]
  10009ca24  ldp     x20, x19, [sp, #0x20]
  10009ca28  ldp     x22, x21, [sp, #0x10]
  10009ca2c  ldp     d9, d8, [sp], #0x40
  10009ca30  ret

; ======================================================================
; -[ADInfiniteScrollView sendOffsetToDelegate]
; address 0x10009ca34  size 284  kind objc
; ======================================================================
  10009ca34  stp     d9, d8, [sp, #-0x30]!
  10009ca38  stp     x20, x19, [sp, #0x10]
  10009ca3c  stp     x29, x30, [sp, #0x20]
  10009ca40  add     x29, sp, #0x20
  10009ca44  mov     x19, x0
  10009ca48  adrp    x8, #0x100416000
  10009ca4c  nop
  10009ca50  ldr     x1, [x8, #0xfb0]
  10009ca54  bl      _objc_msgSend                            ; [self contentOffset]
  10009ca58  mov     v8.16b, v0.16b
  10009ca5c  adrp    x8, #0x100420000
  10009ca60  ldrsw   x8, [x8, #0x38]                          ; ivar offset ADInfiniteScrollView.imageWidth (+0x78)
  10009ca64  ldr     s9, [x19, x8]                            ; s9 = self->imageWidth
  10009ca68  adrp    x8, #0x10041d000
  10009ca6c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009ca70  adrp    x8, #0x100416000
  10009ca74  nop
  10009ca78  ldr     x1, [x8, #0xc00]
  10009ca7c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009ca80  mov     x29, x29
  10009ca84  bl      _objc_retainAutoreleasedReturnValue
  10009ca88  mov     x19, x0
  10009ca8c  adrp    x8, #0x100417000
  10009ca90  nop
  10009ca94  ldr     x1, [x8, #0xc80]
  10009ca98  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009ca9c  mov     x20, x0
  10009caa0  fcvtzs  w8, d8
  10009caa4  fcvtzs  w9, s9
  10009caa8  sdiv    w10, w8, w9
  10009caac  msub    w8, w10, w9, w8                          ; t1 = ((int)[self contentOffset].0 - ((int)[self contentOffset].0 / (int)self->imageWidth) * (int)self->imageWidth)
  10009cab0  scvtf   s0, w8
  10009cab4  fdiv    s0, s0, s9
  10009cab8  fmov    s1, #1.00000000
  10009cabc  fsub    s8, s1, s0
  10009cac0  mov     x0, x19
  10009cac4  bl      _objc_release
  10009cac8  cmp     w20, #2
  10009cacc  fmov    d0, #1.00000000
  10009cad0  fmov    d1, #-1.00000000
  10009cad4  fcsel   d9, d1, d0, eq
  10009cad8  adrp    x8, #0x10041d000
  10009cadc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10009cae0  adrp    x8, #0x100417000
  10009cae4  nop
  10009cae8  ldr     x1, [x8, #0x4f0]
  10009caec  bl      _objc_msgSend                            ; [S3DEngine engine]
  10009caf0  mov     x29, x29
  10009caf4  bl      _objc_retainAutoreleasedReturnValue
  10009caf8  mov     x19, x0
  10009cafc  fcvt    d0, s8
  10009cb00  nop
  10009cb04  ldr     d1, #0x100181a48                         ; d1 = 6.28318531
  10009cb08  fmul    d0, d0, d1
  10009cb0c  fmul    d0, d9, d0                               ; t2 = (([[ADGameParameters sharedParameters] controlScheme] == 2 ? -1 : 1) * ((1 - ((float)t1 / self->imageWidth)) * 6.28319))
  10009cb10  fcvt    s0, d0
  10009cb14  adrp    x8, #0x10041a000
  10009cb18  nop
  10009cb1c  ldr     x1, [x8, #0x208]
  10009cb20  bl      _objc_msgSend                            ; [[S3DEngine engine] setHeadOrientation:t2]
  10009cb24  mov     x0, x19
  10009cb28  ldp     x29, x30, [sp, #0x20]
  10009cb2c  ldp     x20, x19, [sp, #0x10]
  10009cb30  ldp     d9, d8, [sp], #0x30
  10009cb34  b       _objc_release
  10009cb38  b       loc_10009cb3c
loc_10009cb3c:
  10009cb3c  mov     x20, x0
  10009cb40  mov     x0, x19
  10009cb44  bl      _objc_release
  10009cb48  mov     x0, x20
  10009cb4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView controlSchemeChanged]
; address 0x10009cb50  size 436  kind objc
; ======================================================================
  10009cb50  stp     x26, x25, [sp, #-0x50]!
  10009cb54  stp     x24, x23, [sp, #0x10]
  10009cb58  stp     x22, x21, [sp, #0x20]
  10009cb5c  stp     x20, x19, [sp, #0x30]
  10009cb60  stp     x29, x30, [sp, #0x40]
  10009cb64  add     x29, sp, #0x40
  10009cb68  mov     x19, x0
  10009cb6c  adrp    x25, #0x10041d000
  10009cb70  ldr     x0, [x25, #0xef0]                        ; class ADGameParameters
  10009cb74  adrp    x8, #0x100416000
  10009cb78  nop
  10009cb7c  ldr     x20, [x8, #0xc00]
  10009cb80  mov     x1, x20
  10009cb84  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009cb88  mov     x29, x29
  10009cb8c  bl      _objc_retainAutoreleasedReturnValue
  10009cb90  mov     x22, x0
  10009cb94  adrp    x8, #0x100417000
  10009cb98  nop
  10009cb9c  ldr     x21, [x8, #0xc80]
  10009cba0  mov     x1, x21
  10009cba4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009cba8  cmp     w0, #1
  10009cbac  b.ne    loc_10009cbbc                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  10009cbb0  mov     x0, x22
  10009cbb4  bl      _objc_release
  10009cbb8  b       loc_10009cbf8
loc_10009cbbc:
  10009cbbc  ldr     x0, [x25, #0xef0]                        ; class ADGameParameters
  10009cbc0  mov     x1, x20
  10009cbc4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009cbc8  mov     x29, x29
  10009cbcc  bl      _objc_retainAutoreleasedReturnValue
  10009cbd0  mov     x23, x0
  10009cbd4  mov     x1, x21
  10009cbd8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009cbdc  mov     x24, x0
  10009cbe0  mov     x0, x23
  10009cbe4  bl      _objc_release
  10009cbe8  mov     x0, x22
  10009cbec  bl      _objc_release
  10009cbf0  cmp     w24, #3
  10009cbf4  b.ne    loc_10009cc5c                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
loc_10009cbf8:
  10009cbf8  adrp    x8, #0x10041a000
  10009cbfc  nop
  10009cc00  ldr     x1, [x8, #0x210]
  10009cc04  mov     x0, x19
  10009cc08  bl      _objc_msgSend                            ; [self enableGyro]
  10009cc0c  adrp    x8, #0x10041e000
  10009cc10  ldr     x0, [x8, #0x210]                         ; class ADMotionManager
  10009cc14  adrp    x8, #0x100416000
  10009cc18  nop
  10009cc1c  ldr     x1, [x8, #0xac0]
  10009cc20  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  10009cc24  mov     x29, x29
  10009cc28  bl      _objc_retainAutoreleasedReturnValue
  10009cc2c  mov     x20, x0
  10009cc30  adrp    x8, #0x10041a000
  10009cc34  nop
  10009cc38  ldr     x1, [x8, #0x218]
  10009cc3c  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] startMotionManager]
  10009cc40  mov     x0, x20
  10009cc44  ldp     x29, x30, [sp, #0x40]
  10009cc48  ldp     x20, x19, [sp, #0x30]
  10009cc4c  ldp     x22, x21, [sp, #0x20]
  10009cc50  ldp     x24, x23, [sp, #0x10]
  10009cc54  ldp     x26, x25, [sp], #0x50
  10009cc58  b       _objc_release
loc_10009cc5c:
  10009cc5c  ldr     x0, [x25, #0xef0]                        ; class ADGameParameters
  10009cc60  mov     x1, x20
  10009cc64  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009cc68  mov     x29, x29
  10009cc6c  bl      _objc_retainAutoreleasedReturnValue
  10009cc70  mov     x20, x0
  10009cc74  mov     x1, x21
  10009cc78  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009cc7c  mov     x21, x0
  10009cc80  mov     x0, x20
  10009cc84  bl      _objc_release
  10009cc88  cmp     w21, #2
  10009cc8c  b.ne    loc_10009ccb8                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  10009cc90  adrp    x8, #0x10041a000
  10009cc94  nop
  10009cc98  ldr     x1, [x8, #0x220]
  10009cc9c  mov     x0, x19
  10009cca0  ldp     x29, x30, [sp, #0x40]
  10009cca4  ldp     x20, x19, [sp, #0x30]
  10009cca8  ldp     x22, x21, [sp, #0x20]
  10009ccac  ldp     x24, x23, [sp, #0x10]
  10009ccb0  ldp     x26, x25, [sp], #0x50
  10009ccb4  b       _objc_msgSend                            ; [self disableGyro]
loc_10009ccb8:
  10009ccb8  ldp     x29, x30, [sp, #0x40]
  10009ccbc  ldp     x20, x19, [sp, #0x30]
  10009ccc0  ldp     x22, x21, [sp, #0x20]
  10009ccc4  ldp     x24, x23, [sp, #0x10]
  10009ccc8  ldp     x26, x25, [sp], #0x50
  10009cccc  ret
  10009ccd0  mov     x19, x0
  10009ccd4  b       loc_10009cce8
  10009ccd8  b       loc_10009ccf0
  10009ccdc  mov     x19, x0
  10009cce0  mov     x0, x23
  10009cce4  bl      _objc_release
loc_10009cce8:
  10009cce8  mov     x0, x22
  10009ccec  b       loc_10009ccf8
loc_10009ccf0:
  10009ccf0  mov     x19, x0
  10009ccf4  mov     x0, x20
loc_10009ccf8:
  10009ccf8  bl      _objc_release
  10009ccfc  mov     x0, x19
  10009cd00  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView disableGyro]
; address 0x10009cd04  size 100  kind objc
; ======================================================================
  10009cd04  stp     x20, x19, [sp, #-0x20]!
  10009cd08  stp     x29, x30, [sp, #0x10]
  10009cd0c  add     x29, sp, #0x10
  10009cd10  adrp    x8, #0x10041e000
  10009cd14  ldr     x0, [x8, #0x210]                         ; class ADMotionManager
  10009cd18  adrp    x8, #0x100416000
  10009cd1c  nop
  10009cd20  ldr     x1, [x8, #0xac0]
  10009cd24  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  10009cd28  mov     x29, x29
  10009cd2c  bl      _objc_retainAutoreleasedReturnValue
  10009cd30  mov     x19, x0
  10009cd34  adrp    x8, #0x10041a000
  10009cd38  nop
  10009cd3c  ldr     x1, [x8, #0x228]
  10009cd40  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] destroyMotionManager]
  10009cd44  mov     x0, x19
  10009cd48  ldp     x29, x30, [sp, #0x10]
  10009cd4c  ldp     x20, x19, [sp], #0x20
  10009cd50  b       _objc_release
  10009cd54  mov     x20, x0
  10009cd58  mov     x0, x19
  10009cd5c  bl      _objc_release
  10009cd60  mov     x0, x20
  10009cd64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView enableGyro]
; address 0x10009cd68  size 100  kind objc
; ======================================================================
  10009cd68  stp     x20, x19, [sp, #-0x20]!
  10009cd6c  stp     x29, x30, [sp, #0x10]
  10009cd70  add     x29, sp, #0x10
  10009cd74  adrp    x8, #0x10041e000
  10009cd78  ldr     x0, [x8, #0x210]                         ; class ADMotionManager
  10009cd7c  adrp    x8, #0x100416000
  10009cd80  nop
  10009cd84  ldr     x1, [x8, #0xac0]
  10009cd88  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  10009cd8c  mov     x29, x29
  10009cd90  bl      _objc_retainAutoreleasedReturnValue
  10009cd94  mov     x19, x0
  10009cd98  adrp    x8, #0x10041a000
  10009cd9c  nop
  10009cda0  ldr     x1, [x8, #0x218]
  10009cda4  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] startMotionManager]
  10009cda8  mov     x0, x19
  10009cdac  ldp     x29, x30, [sp, #0x10]
  10009cdb0  ldp     x20, x19, [sp], #0x20
  10009cdb4  b       _objc_release
  10009cdb8  mov     x20, x0
  10009cdbc  mov     x0, x19
  10009cdc0  bl      _objc_release
  10009cdc4  mov     x0, x20
  10009cdc8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView update]
; address 0x10009cdcc  size 540  kind objc
; ======================================================================
  10009cdcc  stp     x26, x25, [sp, #-0x50]!
  10009cdd0  stp     x24, x23, [sp, #0x10]
  10009cdd4  stp     x22, x21, [sp, #0x20]
  10009cdd8  stp     x20, x19, [sp, #0x30]
  10009cddc  stp     x29, x30, [sp, #0x40]
  10009cde0  add     x29, sp, #0x40
  10009cde4  mov     x19, x0
  10009cde8  adrp    x8, #0x100420000
  10009cdec  ldrsw   x25, [x8, #0x3c]                         ; ivar offset ADInfiniteScrollView.currentControlScheme (+0x7c)
  10009cdf0  ldr     w26, [x19, x25]                          ; w26 = self->currentControlScheme
  10009cdf4  adrp    x24, #0x10041d000
  10009cdf8  ldr     x0, [x24, #0xef0]                        ; class ADGameParameters
  10009cdfc  adrp    x8, #0x100416000
  10009ce00  nop
  10009ce04  ldr     x20, [x8, #0xc00]
  10009ce08  mov     x1, x20
  10009ce0c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009ce10  mov     x29, x29
  10009ce14  bl      _objc_retainAutoreleasedReturnValue
  10009ce18  mov     x22, x0
  10009ce1c  adrp    x8, #0x100417000
  10009ce20  nop
  10009ce24  ldr     x21, [x8, #0xc80]
  10009ce28  mov     x1, x21
  10009ce2c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009ce30  mov     x23, x0
  10009ce34  mov     x0, x22
  10009ce38  bl      _objc_release
  10009ce3c  cmp     w26, w23
  10009ce40  b.eq    loc_10009ce84                            ; if (self->currentControlScheme == [[ADGameParameters sharedParameters] controlScheme])
  10009ce44  ldr     x0, [x24, #0xef0]                        ; class ADGameParameters
  10009ce48  mov     x1, x20
  10009ce4c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009ce50  mov     x29, x29
  10009ce54  bl      _objc_retainAutoreleasedReturnValue
  10009ce58  mov     x22, x0
  10009ce5c  mov     x1, x21
  10009ce60  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009ce64  str     w0, [x19, x25]                           ; self->currentControlScheme = [[ADGameParameters sharedParameters] controlScheme]
  10009ce68  mov     x0, x22
  10009ce6c  bl      _objc_release
  10009ce70  adrp    x8, #0x10041a000
  10009ce74  nop
  10009ce78  ldr     x1, [x8, #0x1f0]
  10009ce7c  mov     x0, x19
  10009ce80  bl      _objc_msgSend                            ; [self controlSchemeChanged]
loc_10009ce84:
  10009ce84  ldr     x0, [x24, #0xef0]                        ; class ADGameParameters
  10009ce88  mov     x1, x20
  10009ce8c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009ce90  mov     x29, x29
  10009ce94  bl      _objc_retainAutoreleasedReturnValue
  10009ce98  mov     x22, x0
  10009ce9c  mov     x1, x21
  10009cea0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009cea4  mov     x23, x0
  10009cea8  mov     x0, x22
  10009ceac  bl      _objc_release
  10009ceb0  cmp     w23, #1
  10009ceb4  b.ne    loc_10009cf08                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  10009ceb8  adrp    x8, #0x10041e000
  10009cebc  ldr     x0, [x8, #0x210]                         ; class ADMotionManager
  10009cec0  adrp    x8, #0x100416000
  10009cec4  nop
  10009cec8  ldr     x1, [x8, #0xac0]
  10009cecc  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  10009ced0  mov     x29, x29
  10009ced4  bl      _objc_retainAutoreleasedReturnValue
  10009ced8  mov     x22, x0
  10009cedc  adrp    x8, #0x10041a000
  10009cee0  nop
  10009cee4  ldr     x1, [x8, #0x230]
  10009cee8  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] lastGyroAngle]
  10009ceec  adrp    x8, #0x10041a000
  10009cef0  nop
  10009cef4  ldr     x1, [x8, #0x238]
  10009cef8  mov     x0, x19
  10009cefc  bl      _objc_msgSend                            ; [self gyroDidMoveFromAngle:[[ADMotionManager sharedInstance] lastGyroAngle]]
  10009cf00  mov     x0, x22
  10009cf04  bl      _objc_release
loc_10009cf08:
  10009cf08  ldr     x0, [x24, #0xef0]                        ; class ADGameParameters
  10009cf0c  mov     x1, x20
  10009cf10  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009cf14  mov     x29, x29
  10009cf18  bl      _objc_retainAutoreleasedReturnValue
  10009cf1c  mov     x20, x0
  10009cf20  mov     x1, x21
  10009cf24  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009cf28  mov     x21, x0
  10009cf2c  mov     x0, x20
  10009cf30  bl      _objc_release
  10009cf34  cmp     w21, #3
  10009cf38  b.ne    loc_10009cfa0                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  10009cf3c  adrp    x8, #0x10041e000
  10009cf40  ldr     x0, [x8, #0x210]                         ; class ADMotionManager
  10009cf44  adrp    x8, #0x100416000
  10009cf48  nop
  10009cf4c  ldr     x1, [x8, #0xac0]
  10009cf50  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  10009cf54  mov     x29, x29
  10009cf58  bl      _objc_retainAutoreleasedReturnValue
  10009cf5c  mov     x20, x0
  10009cf60  adrp    x8, #0x10041a000
  10009cf64  nop
  10009cf68  ldr     x1, [x8, #0x240]
  10009cf6c  bl      _objc_msgSend                            ; [[ADMotionManager sharedInstance] lastTiltAngle]
  10009cf70  adrp    x8, #0x10041a000
  10009cf74  nop
  10009cf78  ldr     x1, [x8, #0x248]
  10009cf7c  mov     x0, x19
  10009cf80  bl      _objc_msgSend                            ; [self tiltDidMoveFromAngle:[[ADMotionManager sharedInstance] lastTiltAngle]]
  10009cf84  mov     x0, x20
  10009cf88  ldp     x29, x30, [sp, #0x40]
  10009cf8c  ldp     x20, x19, [sp, #0x30]
  10009cf90  ldp     x22, x21, [sp, #0x20]
  10009cf94  ldp     x24, x23, [sp, #0x10]
  10009cf98  ldp     x26, x25, [sp], #0x50
  10009cf9c  b       _objc_release
loc_10009cfa0:
  10009cfa0  ldp     x29, x30, [sp, #0x40]
  10009cfa4  ldp     x20, x19, [sp, #0x30]
  10009cfa8  ldp     x22, x21, [sp, #0x20]
  10009cfac  ldp     x24, x23, [sp, #0x10]
  10009cfb0  ldp     x26, x25, [sp], #0x50
  10009cfb4  ret
  10009cfb8  b       loc_10009cfd4
  10009cfbc  b       loc_10009cfd4
  10009cfc0  b       loc_10009cfd4
  10009cfc4  b       loc_10009cfc8
loc_10009cfc8:
  10009cfc8  mov     x19, x0
  10009cfcc  mov     x0, x20
  10009cfd0  b       loc_10009cfdc
loc_10009cfd4:
  10009cfd4  mov     x19, x0
  10009cfd8  mov     x0, x22
loc_10009cfdc:
  10009cfdc  bl      _objc_release
  10009cfe0  mov     x0, x19
  10009cfe4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView tiltDidMoveFromAngle:]
; address 0x10009cfe8  size 352  kind objc
; ======================================================================
  10009cfe8  stp     d9, d8, [sp, #-0x50]!
  10009cfec  stp     x24, x23, [sp, #0x10]
  10009cff0  stp     x22, x21, [sp, #0x20]
  10009cff4  stp     x20, x19, [sp, #0x30]
  10009cff8  stp     x29, x30, [sp, #0x40]
  10009cffc  add     x29, sp, #0x40
  10009d000  mov     v8.16b, v0.16b
  10009d004  mov     x19, x0
  10009d008  adrp    x23, #0x10041d000
  10009d00c  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  10009d010  adrp    x8, #0x100416000
  10009d014  nop
  10009d018  ldr     x20, [x8, #0xc00]
  10009d01c  mov     x1, x20
  10009d020  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009d024  mov     x29, x29
  10009d028  bl      _objc_retainAutoreleasedReturnValue
  10009d02c  mov     x21, x0
  10009d030  adrp    x8, #0x100417000
  10009d034  nop
  10009d038  ldr     x1, [x8, #0xc80]
  10009d03c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009d040  mov     x22, x0
  10009d044  mov     x0, x21
  10009d048  bl      _objc_release
  10009d04c  cmp     w22, #3
  10009d050  b.ne    loc_10009d110                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  10009d054  ldr     x0, [x23, #0xef0]                        ; class ADGameParameters
  10009d058  mov     x1, x20
  10009d05c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009d060  mov     x29, x29
  10009d064  bl      _objc_retainAutoreleasedReturnValue
  10009d068  mov     x20, x0
  10009d06c  adrp    x8, #0x100418000
  10009d070  nop
  10009d074  ldr     x1, [x8, #0xd68]
  10009d078  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] sensivity]
  10009d07c  fmul    s0, s0, s8
  10009d080  fmov    s1, #-15.00000000
  10009d084  fmul    s8, s0, s1
  10009d088  mov     x0, x20
  10009d08c  bl      _objc_release
  10009d090  adrp    x8, #0x100416000
  10009d094  nop
  10009d098  ldr     x20, [x8, #0xfb0]
  10009d09c  mov     x0, x19
  10009d0a0  mov     x1, x20
  10009d0a4  bl      _objc_msgSend                            ; [self contentOffset]
  10009d0a8  fcvt    d1, s8
  10009d0ac  fadd    d8, d1, d0                               ; t1 = ((([[ADGameParameters sharedParameters] sensivity] * arg1) * -15) + [self contentOffset].0)
  10009d0b0  mov     x0, x19
  10009d0b4  mov     x1, x20
  10009d0b8  bl      _objc_msgSend                            ; [self contentOffset]
  10009d0bc  adrp    x8, #0x100417000
  10009d0c0  nop
  10009d0c4  ldr     x1, [x8, #0x758]
  10009d0c8  mov     x0, x19
  10009d0cc  mov     v0.16b, v8.16b
  10009d0d0  bl      _objc_msgSend                            ; [self setContentOffset:{t1, [self contentOffset].1}]
  10009d0d4  adrp    x8, #0x10041a000
  10009d0d8  nop
  10009d0dc  ldr     x1, [x8, #0x1f8]
  10009d0e0  mov     x0, x19
  10009d0e4  bl      _objc_msgSend                            ; [self adjustOffset]
  10009d0e8  adrp    x8, #0x10041a000
  10009d0ec  nop
  10009d0f0  ldr     x1, [x8, #0x200]
  10009d0f4  mov     x0, x19
  10009d0f8  ldp     x29, x30, [sp, #0x40]
  10009d0fc  ldp     x20, x19, [sp, #0x30]
  10009d100  ldp     x22, x21, [sp, #0x20]
  10009d104  ldp     x24, x23, [sp, #0x10]
  10009d108  ldp     d9, d8, [sp], #0x50
  10009d10c  b       _objc_msgSend                            ; [self sendOffsetToDelegate]
loc_10009d110:
  10009d110  ldp     x29, x30, [sp, #0x40]
  10009d114  ldp     x20, x19, [sp, #0x30]
  10009d118  ldp     x22, x21, [sp, #0x20]
  10009d11c  ldp     x24, x23, [sp, #0x10]
  10009d120  ldp     d9, d8, [sp], #0x50
  10009d124  ret
  10009d128  mov     x19, x0
  10009d12c  mov     x0, x21
  10009d130  b       loc_10009d13c
  10009d134  mov     x19, x0
  10009d138  mov     x0, x20
loc_10009d13c:
  10009d13c  bl      _objc_release
  10009d140  mov     x0, x19
  10009d144  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView gyroDidMoveFromAngle:]
; address 0x10009d148  size 304  kind objc
; ======================================================================
  10009d148  stp     d9, d8, [sp, #-0x40]!
  10009d14c  stp     x22, x21, [sp, #0x10]
  10009d150  stp     x20, x19, [sp, #0x20]
  10009d154  stp     x29, x30, [sp, #0x30]
  10009d158  add     x29, sp, #0x30
  10009d15c  mov     v8.16b, v0.16b
  10009d160  mov     x19, x0
  10009d164  adrp    x8, #0x10041d000
  10009d168  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009d16c  adrp    x8, #0x100416000
  10009d170  nop
  10009d174  ldr     x1, [x8, #0xc00]
  10009d178  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009d17c  mov     x29, x29
  10009d180  bl      _objc_retainAutoreleasedReturnValue
  10009d184  mov     x20, x0
  10009d188  adrp    x8, #0x100417000
  10009d18c  nop
  10009d190  ldr     x1, [x8, #0xc80]
  10009d194  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  10009d198  mov     x21, x0
  10009d19c  mov     x0, x20
  10009d1a0  bl      _objc_release
  10009d1a4  cmp     w21, #1
  10009d1a8  b.ne    loc_10009d250                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 1)
  10009d1ac  fcvt    d0, s8
  10009d1b0  nop
  10009d1b4  ldr     d1, #0x100181cf8                         ; d1 = -6.28318531
  10009d1b8  fdiv    d0, d0, d1
  10009d1bc  adrp    x8, #0x100420000
  10009d1c0  ldrsw   x8, [x8, #0x38]                          ; ivar offset ADInfiniteScrollView.imageWidth (+0x78)
  10009d1c4  ldr     s1, [x19, x8]                            ; s1 = self->imageWidth
  10009d1c8  fcvt    d1, s1
  10009d1cc  fmul    d0, d0, d1
  10009d1d0  fcvt    s8, d0
  10009d1d4  adrp    x8, #0x100416000
  10009d1d8  nop
  10009d1dc  ldr     x20, [x8, #0xfb0]
  10009d1e0  mov     x0, x19
  10009d1e4  mov     x1, x20
  10009d1e8  bl      _objc_msgSend                            ; [self contentOffset]
  10009d1ec  fcvt    d1, s8
  10009d1f0  fadd    d8, d0, d1
  10009d1f4  mov     x0, x19
  10009d1f8  mov     x1, x20
  10009d1fc  bl      _objc_msgSend                            ; [self contentOffset]
  10009d200  adrp    x8, #0x100417000
  10009d204  nop
  10009d208  ldr     x1, [x8, #0x758]
  10009d20c  mov     x0, x19
  10009d210  mov     v0.16b, v8.16b
  10009d214  bl      _objc_msgSend                            ; [self setContentOffset:{([self contentOffset].0 + ((arg1 / -6.28319) * self->imageWidth)), [self contentOffset].1}]
  10009d218  adrp    x8, #0x10041a000
  10009d21c  nop
  10009d220  ldr     x1, [x8, #0x1f8]
  10009d224  mov     x0, x19
  10009d228  bl      _objc_msgSend                            ; [self adjustOffset]
  10009d22c  adrp    x8, #0x10041a000
  10009d230  nop
  10009d234  ldr     x1, [x8, #0x200]
  10009d238  mov     x0, x19
  10009d23c  ldp     x29, x30, [sp, #0x30]
  10009d240  ldp     x20, x19, [sp, #0x20]
  10009d244  ldp     x22, x21, [sp, #0x10]
  10009d248  ldp     d9, d8, [sp], #0x40
  10009d24c  b       _objc_msgSend                            ; [self sendOffsetToDelegate]
loc_10009d250:
  10009d250  ldp     x29, x30, [sp, #0x30]
  10009d254  ldp     x20, x19, [sp, #0x20]
  10009d258  ldp     x22, x21, [sp, #0x10]
  10009d25c  ldp     d9, d8, [sp], #0x40
  10009d260  ret
  10009d264  mov     x19, x0
  10009d268  mov     x0, x20
  10009d26c  bl      _objc_release
  10009d270  mov     x0, x19
  10009d274  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInfiniteScrollView playerSwiped:]
; address 0x10009d278  size 220  kind objc
; ======================================================================
  10009d278  stp     d9, d8, [sp, #-0x30]!
  10009d27c  stp     x20, x19, [sp, #0x10]
  10009d280  stp     x29, x30, [sp, #0x20]
  10009d284  add     x29, sp, #0x20
  10009d288  mov     x19, x0
  10009d28c  nop
  10009d290  ldr     s1, #0x100181d00                         ; s1 = 5.68888903
  10009d294  fdiv    s0, s0, s1
  10009d298  fcvt    d0, s0
  10009d29c  nop
  10009d2a0  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  10009d2a4  fmul    d0, d0, d1
  10009d2a8  nop
  10009d2ac  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  10009d2b0  fdiv    d0, d0, d1
  10009d2b4  fcvt    s0, d0
  10009d2b8  fcvt    d0, s0
  10009d2bc  nop
  10009d2c0  ldr     d1, #0x100181a48                         ; d1 = 6.28318531
  10009d2c4  fdiv    d0, d0, d1
  10009d2c8  adrp    x8, #0x100420000
  10009d2cc  ldrsw   x8, [x8, #0x38]                          ; ivar offset ADInfiniteScrollView.imageWidth (+0x78)
  10009d2d0  ldr     s1, [x19, x8]                            ; s1 = self->imageWidth
  10009d2d4  fcvt    d1, s1
  10009d2d8  fmul    d0, d0, d1
  10009d2dc  fcvt    s8, d0
  10009d2e0  adrp    x8, #0x100416000
  10009d2e4  nop
  10009d2e8  ldr     x20, [x8, #0xfb0]
  10009d2ec  mov     x1, x20
  10009d2f0  bl      _objc_msgSend                            ; [self contentOffset]
  10009d2f4  fcvt    d1, s8
  10009d2f8  fadd    d8, d0, d1                               ; t1 = ([self contentOffset].0 + (((((arg1 / 5.68889) * 3.14159) / 180) / 6.28319) * self->imageWidth))
  10009d2fc  mov     x0, x19
  10009d300  mov     x1, x20
  10009d304  bl      _objc_msgSend                            ; [self contentOffset]
  10009d308  adrp    x8, #0x100417000
  10009d30c  nop
  10009d310  ldr     x1, [x8, #0x758]
  10009d314  mov     x0, x19
  10009d318  mov     v0.16b, v8.16b
  10009d31c  bl      _objc_msgSend                            ; [self setContentOffset:{t1, [self contentOffset].1}]
  10009d320  adrp    x8, #0x10041a000
  10009d324  nop
  10009d328  ldr     x1, [x8, #0x1f8]
  10009d32c  mov     x0, x19
  10009d330  bl      _objc_msgSend                            ; [self adjustOffset]
  10009d334  adrp    x8, #0x10041a000
  10009d338  nop
  10009d33c  ldr     x1, [x8, #0x200]
  10009d340  mov     x0, x19
  10009d344  ldp     x29, x30, [sp, #0x20]
  10009d348  ldp     x20, x19, [sp, #0x10]
  10009d34c  ldp     d9, d8, [sp], #0x30
  10009d350  b       _objc_msgSend                            ; [self sendOffsetToDelegate]

; ======================================================================
; -[ADInfiniteScrollView dealloc]
; address 0x10009d354  size 208  kind objc
; ======================================================================
  10009d354  stp     x20, x19, [sp, #-0x20]!
  10009d358  stp     x29, x30, [sp, #0x10]
  10009d35c  add     x29, sp, #0x10
  10009d360  sub     sp, sp, #0x20
  10009d364  mov     x19, x0
  10009d368  adrp    x8, #0x100417000
  10009d36c  nop
  10009d370  ldr     x1, [x8, #0x1c8]
  10009d374  bl      _objc_msgSend                            ; [self subviews]
  10009d378  mov     x29, x29
  10009d37c  bl      _objc_retainAutoreleasedReturnValue
  10009d380  mov     x20, x0
  10009d384  adrp    x8, #0x100417000
  10009d388  nop
  10009d38c  ldr     x2, [x8, #0x1d0]
  10009d390  adrp    x8, #0x100416000
  10009d394  nop
  10009d398  ldr     x1, [x8, #0xe48]
  10009d39c  bl      _objc_msgSend                            ; [[self subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)]
  10009d3a0  mov     x0, x20
  10009d3a4  bl      _objc_release
  10009d3a8  str     x19, [sp, #0x10]
  10009d3ac  adrp    x8, #0x10041e000
  10009d3b0  ldr     x8, [x8, #0xeb8]
  10009d3b4  str     x8, [sp, #0x18]
  10009d3b8  adrp    x8, #0x100416000
  10009d3bc  nop
  10009d3c0  ldr     x1, [x8, #0xfc8]
  10009d3c4  add     x0, sp, #0x10
  10009d3c8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10009d3cc  sub     sp, x29, #0x10
  10009d3d0  ldp     x29, x30, [sp, #0x10]
  10009d3d4  ldp     x20, x19, [sp], #0x20
  10009d3d8  ret
  10009d3dc  mov     x20, x0
  10009d3e0  b       loc_10009d3f4
  10009d3e4  mov     x1, x20
  10009d3e8  mov     x20, x0
  10009d3ec  mov     x0, x1
  10009d3f0  bl      _objc_release
loc_10009d3f4:
  10009d3f4  str     x19, [sp]
  10009d3f8  adrp    x8, #0x10041e000
  10009d3fc  ldr     x8, [x8, #0xeb8]
  10009d400  str     x8, [sp, #8]
  10009d404  adrp    x8, #0x100416000
  10009d408  nop
  10009d40c  ldr     x1, [x8, #0xfc8]
  10009d410  mov     x0, sp
  10009d414  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10009d418  mov     x0, x20
  10009d41c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009d420  bl      sub_10000b760

; ======================================================================
; -[ADInfiniteScrollView imageName]
; address 0x10009d424  size 16  kind objc
; ======================================================================
  10009d424  adrp    x8, #0x100420000
  10009d428  ldrsw   x8, [x8, #0x40]                          ; ivar offset ADInfiniteScrollView._imageName (+0x80)
  10009d42c  ldr     x0, [x0, x8]                             ; x0 = self->_imageName
  10009d430  ret

; ======================================================================
; -[ADInfiniteScrollView setImageName:]
; address 0x10009d434  size 56  kind objc
; ======================================================================
  10009d434  stp     x20, x19, [sp, #-0x20]!
  10009d438  stp     x29, x30, [sp, #0x10]
  10009d43c  add     x29, sp, #0x10
  10009d440  mov     x19, x0
  10009d444  adrp    x8, #0x100420000
  10009d448  ldrsw   x20, [x8, #0x40]                         ; ivar offset ADInfiniteScrollView._imageName (+0x80)
  10009d44c  mov     x0, x2
  10009d450  bl      _objc_retain
  10009d454  ldr     x8, [x19, x20]                           ; x8 = self->_imageName
  10009d458  str     x0, [x19, x20]                           ; self->_imageName = arg1
  10009d45c  mov     x0, x8
  10009d460  ldp     x29, x30, [sp, #0x10]
  10009d464  ldp     x20, x19, [sp], #0x20
  10009d468  b       _objc_release

; ======================================================================
; -[ADInfiniteScrollView .cxx_destruct]
; address 0x10009d46c  size 64  kind objc
; ======================================================================
  10009d46c  stp     x20, x19, [sp, #-0x20]!
  10009d470  stp     x29, x30, [sp, #0x10]
  10009d474  add     x29, sp, #0x10
  10009d478  mov     x19, x0
  10009d47c  adrp    x8, #0x100420000
  10009d480  ldrsw   x8, [x8, #0x40]                          ; ivar offset ADInfiniteScrollView._imageName (+0x80)
  10009d484  add     x0, x19, x8
  10009d488  mov     x1, #0
  10009d48c  bl      _objc_storeStrong
  10009d490  mov     x1, #0
  10009d494  adrp    x8, #0x100420000
  10009d498  ldrsw   x8, [x8, #0x34]                          ; ivar offset ADInfiniteScrollView.images (+0x70)
  10009d49c  add     x0, x19, x8
  10009d4a0  ldp     x29, x30, [sp, #0x10]
  10009d4a4  ldp     x20, x19, [sp], #0x20
  10009d4a8  b       _objc_storeStrong
