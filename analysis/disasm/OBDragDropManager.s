// unit OBDragDropManager — 46 functions
//   0x10002a178      96  +[OBDragDropManager sharedManager]
//   0x10002a1d8     524  -[OBDragDropManager init]
//   0x10002a3e4     120  -[OBDragDropManager init]_block_invoke
//   0x10002a45c      12  sub_10002a45c
//   0x10002a468       8  sub_10002a468
//   0x10002a470     300  -[OBDragDropManager dealloc]
//   0x10002a59c      88  -[OBDragDropManager transformForOrientation:]
//   0x10002a5f4     276  -[OBDragDropManager handleApplicationOrientationChange:]
//   0x10002a708     716  -[OBDragDropManager prepareOverlayWindowUsingMainWindow:]
//   0x10002a9d4     236  -[OBDragDropManager findDropTargetHandler:]
//   0x10002aac0     156  -[OBDragDropManager findDropZoneHandlerInView:atLocation:]
//   0x10002ab5c     640  -[OBDragDropManager findDropZoneHandlerInWindow:atLocation:]
//   0x10002addc     960  -[OBDragDropManager handleOvumMove:inWindow:atLocation:]
//   0x10002b19c     696  -[OBDragDropManager animateOvumReturningToSource:]
//   0x10002b454      80  -[OBDragDropManager animateOvumReturningToSource:]_block_invoke
//   0x10002b4a4      40  sub_10002b4a4
//   0x10002b4cc      40  sub_10002b4cc
//   0x10002b4f4     108  -[OBDragDropManager animateOvumReturningToSource:]_block_invoke_2
//   0x10002b560       8  sub_10002b560
//   0x10002b568       8  sub_10002b568
//   0x10002b570      80  -[OBDragDropManager animateOvumReturningToSource:]_block_invoke_3
//   0x10002b5c0      40  sub_10002b5c0
//   0x10002b5e8      40  sub_10002b5e8
//   0x10002b610     388  -[OBDragDropManager animateOvumDrop:withAnimation:completion:]
//   0x10002b794      96  -[OBDragDropManager animateOvumDrop:withAnimation:completion:]_block_invoke
//   0x10002b7f4      56  sub_10002b7f4
//   0x10002b82c      48  sub_10002b82c
//   0x10002b85c     136  -[OBDragDropManager createLongPressDragDropGestureRecognizerWithSource:]
//   0x10002b8e4     240  -[OBDragDropManager createDragDropGestureRecognizerWithClass:source:]
//   0x10002b9d4    4724  -[OBDragDropManager handleOvumGesture:]
//   0x10002cc48     132  -[OBDragDropManager handleOvumGesture:]_block_invoke
//   0x10002cccc       8  sub_10002cccc
//   0x10002ccd4       8  sub_10002ccd4
//   0x10002ccdc    2208  -[OBDragDropManager applyRecenteringTo:withRecognizer:]
//   0x10002d57c     368  -[OBDragDropManager ovumRecognizerShouldHandleTouch:]
//   0x10002d6ec     324  -[OBDragDropManager cleanupOvum:]
//   0x10002d830      28  -[OBDragDropManager distanceFrom:to:]
//   0x10002d84c     996  -[OBDragDropManager updateOvum:withZoom:]
//   0x10002dc30      16  -[OBDragDropManager overlayWindow]
//   0x10002dc40      56  -[OBDragDropManager setOverlayWindow:]
//   0x10002dc78      20  -[OBDragDropManager currentLocationInHostWindow]
//   0x10002dc8c      20  -[OBDragDropManager setCurrentLocationInHostWindow:]
//   0x10002dca0      20  -[OBDragDropManager currentLocationInOverlayWindow]
//   0x10002dcb4      20  -[OBDragDropManager setCurrentLocationInOverlayWindow:]
//   0x10002dcc8      20  -[OBDragDropManager .cxx_destruct]
//   0x10002dcdc       4  -[OBDragDropManager .cxx_construct]

; ======================================================================
; +[OBDragDropManager sharedManager]
; address 0x10002a178  size 96  kind objc
; ======================================================================
  10002a178  stp     x20, x19, [sp, #-0x20]!
  10002a17c  stp     x29, x30, [sp, #0x10]
  10002a180  add     x29, sp, #0x10
  10002a184  adrp    x19, #0x10042d000
  10002a188  ldr     x0, [x19, #0x9a8]                        ; load g_10042d9a8
  10002a18c  cbnz    x0, loc_10002a1cc                        ; if (g_10042d9a8 != 0)
  10002a190  adrp    x8, #0x10041e000
  10002a194  ldr     x0, [x8, #0x10]                          ; class OBDragDropManager
  10002a198  adrp    x8, #0x100416000
  10002a19c  nop
  10002a1a0  ldr     x1, [x8, #0xac8]
  10002a1a4  bl      _objc_msgSend                            ; [OBDragDropManager alloc]
  10002a1a8  adrp    x8, #0x100416000
  10002a1ac  nop
  10002a1b0  ldr     x1, [x8, #0xab8]
  10002a1b4  bl      _objc_msgSend                            ; [[OBDragDropManager alloc] init]
  10002a1b8  ldr     x8, [x19, #0x9a8]                        ; load g_10042d9a8
  10002a1bc  str     x0, [x19, #0x9a8]                        ; store g_10042d9a8 = [[OBDragDropManager alloc] init]
  10002a1c0  mov     x0, x8
  10002a1c4  bl      _objc_release
  10002a1c8  ldr     x0, [x19, #0x9a8]                        ; load g_10042d9a8
loc_10002a1cc:
  10002a1cc  ldp     x29, x30, [sp, #0x10]
  10002a1d0  ldp     x20, x19, [sp], #0x20
  10002a1d4  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[OBDragDropManager init]
; address 0x10002a1d8  size 524  kind objc
; ======================================================================
  10002a1d8  stp     x26, x25, [sp, #-0x50]!
  10002a1dc  stp     x24, x23, [sp, #0x10]
  10002a1e0  stp     x22, x21, [sp, #0x20]
  10002a1e4  stp     x20, x19, [sp, #0x30]
  10002a1e8  stp     x29, x30, [sp, #0x40]
  10002a1ec  add     x29, sp, #0x40
  10002a1f0  sub     sp, sp, #0x40
  10002a1f4  str     x0, [sp, #0x30]
  10002a1f8  adrp    x8, #0x10041e000
  10002a1fc  ldr     x8, [x8, #0xc70]
  10002a200  str     x8, [sp, #0x38]
  10002a204  adrp    x8, #0x100416000
  10002a208  nop
  10002a20c  ldr     x1, [x8, #0xab8]
  10002a210  add     x0, sp, #0x30
  10002a214  bl      _objc_msgSendSuper2                      ; [super init]
  10002a218  mov     x19, x0
  10002a21c  cbz     x19, loc_10002a350                       ; if (self == 0)
  10002a220  add     x0, sp, #0x28
  10002a224  mov     x1, x19
  10002a228  bl      _objc_initWeak                           ; objc_initWeak(&sp[0x28], self)
  10002a22c  adrp    x8, #0x10041d000
  10002a230  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10002a234  adrp    x8, #0x100416000
  10002a238  nop
  10002a23c  ldr     x1, [x8, #0xe88]
  10002a240  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10002a244  mov     x29, x29
  10002a248  bl      _objc_retainAutoreleasedReturnValue
  10002a24c  mov     x20, x0
  10002a250  adrp    x8, #0x10041d000
  10002a254  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10002a258  adrp    x8, #0x100416000
  10002a25c  nop
  10002a260  ldr     x1, [x8, #0xb28]
  10002a264  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10002a268  mov     x8, sp
  10002a26c  add     x21, x8, #0x20
  10002a270  mov     x29, x29
  10002a274  bl      _objc_retainAutoreleasedReturnValue
  10002a278  mov     x22, x0
  10002a27c  adrp    x8, #0x10041e000
  10002a280  ldr     x0, [x8, #0x48]                          ; class NSOperationQueue
  10002a284  adrp    x8, #0x100417000
  10002a288  nop
  10002a28c  ldr     x1, [x8, #0x750]
  10002a290  bl      _objc_msgSend                            ; [NSOperationQueue mainQueue]
  10002a294  adrp    x8, #0x1003b0000
  10002a298  ldr     x8, [x8, #0xd0]                          ; _UIApplicationDidChangeStatusBarOrientationNotification
  10002a29c  ldr     x24, [x8]                                ; x24 = _UIApplicationDidChangeStatusBarOrientationNotification[+0x0]
  10002a2a0  mov     x29, x29
  10002a2a4  bl      _objc_retainAutoreleasedReturnValue
  10002a2a8  mov     x23, x0
  10002a2ac  adrp    x8, #0x1003b0000
  10002a2b0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10002a2b4  mov     w9, #-0x3e000000
  10002a2b8  str     x8, [sp]
  10002a2bc  stp     w9, wzr, [sp, #8]
  10002a2c0  adr     x8, #0x10002a3e4                         ; &-[OBDragDropManager init]_block_invoke
  10002a2c4  nop
  10002a2c8  str     x8, [sp, #0x10]
  10002a2cc  adrp    x8, #0x1003b1000
  10002a2d0  add     x8, x8, #0x2d0                           ; &d_1003b12d0
  10002a2d4  str     x8, [sp, #0x18]
  10002a2d8  add     x0, sp, #0x28
  10002a2dc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(&sp[0x28])
  10002a2e0  mov     x25, x0
  10002a2e4  mov     x0, x21
  10002a2e8  mov     x1, x25
  10002a2ec  bl      _objc_initWeak                           ; objc_initWeak((&sp[0x0] + 32), objc_loadWeakRetained(&sp[0x28]))
  10002a2f0  mov     x0, x25
  10002a2f4  bl      _objc_release
  10002a2f8  adrp    x8, #0x100417000
  10002a2fc  nop
  10002a300  ldr     x1, [x8, #0xdf0]
  10002a304  mov     x5, sp
  10002a308  mov     x0, x20
  10002a30c  mov     x2, x24
  10002a310  mov     x3, x22
  10002a314  mov     x4, x23
  10002a318  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserverForName:_UIApplicationDidChangeStatusBarOrientationNotification[+0x0] object:[UIApplication sharedApplication] queue:[NSOperationQueue mainQueue] usingBlock:^{-[OBDragDropManager init]_block_invoke captures +0x30=self, +0x38=OBDragDropManager}]
  10002a31c  mov     x29, x29
  10002a320  bl      _objc_retainAutoreleasedReturnValue
  10002a324  bl      _objc_release
  10002a328  mov     x0, x23
  10002a32c  bl      _objc_release
  10002a330  mov     x0, x22
  10002a334  bl      _objc_release
  10002a338  mov     x0, x20
  10002a33c  bl      _objc_release
  10002a340  mov     x0, x21
  10002a344  bl      _objc_destroyWeak
  10002a348  add     x0, sp, #0x28
  10002a34c  bl      _objc_destroyWeak
loc_10002a350:
  10002a350  mov     x0, x19
  10002a354  sub     sp, x29, #0x40
  10002a358  ldp     x29, x30, [sp, #0x40]
  10002a35c  ldp     x20, x19, [sp, #0x30]
  10002a360  ldp     x22, x21, [sp, #0x20]
  10002a364  ldp     x24, x23, [sp, #0x10]
  10002a368  ldp     x26, x25, [sp], #0x50
  10002a36c  ret
  10002a370  mov     x23, x0
  10002a374  b       loc_10002a3dc
  10002a378  mov     x23, x0
  10002a37c  b       loc_10002a3cc
  10002a380  mov     x23, x0
  10002a384  mov     x0, x20
  10002a388  bl      _objc_release
  10002a38c  b       loc_10002a3cc
  10002a390  mov     x23, x0
  10002a394  mov     w24, #0
  10002a398  b       loc_10002a3b0
  10002a39c  mov     x1, x23
  10002a3a0  mov     x23, x0
  10002a3a4  mov     x0, x1
  10002a3a8  bl      _objc_release
  10002a3ac  mov     w24, #1
loc_10002a3b0:
  10002a3b0  mov     x0, x22
  10002a3b4  bl      _objc_release
  10002a3b8  mov     x0, x20
  10002a3bc  bl      _objc_release
  10002a3c0  cbz     w24, loc_10002a3cc                       ; if (w24 == 0)
  10002a3c4  mov     x0, x21
  10002a3c8  bl      _objc_destroyWeak
loc_10002a3cc:
  10002a3cc  add     x0, sp, #0x28
  10002a3d0  bl      _objc_destroyWeak
  10002a3d4  mov     x0, x19
  10002a3d8  bl      _objc_release
loc_10002a3dc:
  10002a3dc  mov     x0, x23
  10002a3e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager init]_block_invoke
; address 0x10002a3e4  size 120  kind block
; ======================================================================
  10002a3e4  stp     x22, x21, [sp, #-0x30]!
  10002a3e8  stp     x20, x19, [sp, #0x10]
  10002a3ec  stp     x29, x30, [sp, #0x20]
  10002a3f0  add     x29, sp, #0x20
  10002a3f4  add     x19, x0, #0x20
  10002a3f8  mov     x0, x1
  10002a3fc  bl      _objc_retain
  10002a400  mov     x20, x0
  10002a404  mov     x0, x19
  10002a408  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained((block + 32))
  10002a40c  mov     x19, x0
  10002a410  adrp    x8, #0x100417000
  10002a414  nop
  10002a418  ldr     x1, [x8, #0xde8]
  10002a41c  mov     x2, x20
  10002a420  bl      _objc_msgSend                            ; [objc_loadWeakRetained((block + 32)) handleApplicationOrientationChange:blockarg1]
  10002a424  mov     x0, x20
  10002a428  bl      _objc_release
  10002a42c  mov     x0, x19
  10002a430  ldp     x29, x30, [sp, #0x20]
  10002a434  ldp     x20, x19, [sp, #0x10]
  10002a438  ldp     x22, x21, [sp], #0x30
  10002a43c  b       _objc_release
  10002a440  mov     x21, x0
  10002a444  mov     x0, x20
  10002a448  bl      _objc_release
  10002a44c  mov     x0, x19
  10002a450  bl      _objc_release
  10002a454  mov     x0, x21
  10002a458  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10002a45c
; address 0x10002a45c  size 12  kind sub
; ======================================================================
  10002a45c  add     x1, x1, #0x20
  10002a460  add     x0, x0, #0x20
  10002a464  b       _objc_copyWeak                           ; objc_copyWeak((a0 + 32), (a1 + 32), a2, a3)

; ======================================================================
; sub_10002a468
; address 0x10002a468  size 8  kind sub
; ======================================================================
  10002a468  add     x0, x0, #0x20
  10002a46c  b       _objc_destroyWeak

; ======================================================================
; -[OBDragDropManager dealloc]
; address 0x10002a470  size 300  kind objc
; ======================================================================
  10002a470  stp     x22, x21, [sp, #-0x30]!
  10002a474  stp     x20, x19, [sp, #0x10]
  10002a478  stp     x29, x30, [sp, #0x20]
  10002a47c  add     x29, sp, #0x20
  10002a480  sub     sp, sp, #0x20
  10002a484  mov     x19, x0
  10002a488  adrp    x8, #0x10041d000
  10002a48c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10002a490  adrp    x8, #0x100416000
  10002a494  nop
  10002a498  ldr     x1, [x8, #0xe88]
  10002a49c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10002a4a0  mov     x29, x29
  10002a4a4  bl      _objc_retainAutoreleasedReturnValue
  10002a4a8  mov     x20, x0
  10002a4ac  adrp    x8, #0x10041d000
  10002a4b0  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10002a4b4  adrp    x8, #0x100416000
  10002a4b8  nop
  10002a4bc  ldr     x1, [x8, #0xb28]
  10002a4c0  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10002a4c4  adrp    x8, #0x1003b0000
  10002a4c8  ldr     x8, [x8, #0xd0]                          ; _UIApplicationDidChangeStatusBarOrientationNotification
  10002a4cc  ldr     x22, [x8]                                ; x22 = _UIApplicationDidChangeStatusBarOrientationNotification[+0x0]
  10002a4d0  mov     x29, x29
  10002a4d4  bl      _objc_retainAutoreleasedReturnValue
  10002a4d8  mov     x21, x0
  10002a4dc  adrp    x8, #0x100416000
  10002a4e0  nop
  10002a4e4  ldr     x1, [x8, #0xfc0]
  10002a4e8  mov     x0, x20
  10002a4ec  mov     x2, x19
  10002a4f0  mov     x3, x22
  10002a4f4  mov     x4, x21
  10002a4f8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self name:_UIApplicationDidChangeStatusBarOrientationNotification[+0x0] object:[UIApplication sharedApplication]]
  10002a4fc  mov     x0, x21
  10002a500  bl      _objc_release
  10002a504  mov     x0, x20
  10002a508  bl      _objc_release
  10002a50c  str     x19, [sp, #0x10]
  10002a510  adrp    x8, #0x10041e000
  10002a514  ldr     x8, [x8, #0xc70]
  10002a518  str     x8, [sp, #0x18]
  10002a51c  adrp    x8, #0x100416000
  10002a520  nop
  10002a524  ldr     x1, [x8, #0xfc8]
  10002a528  add     x0, sp, #0x10
  10002a52c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10002a530  sub     sp, x29, #0x20
  10002a534  ldp     x29, x30, [sp, #0x20]
  10002a538  ldp     x20, x19, [sp, #0x10]
  10002a53c  ldp     x22, x21, [sp], #0x30
  10002a540  ret
  10002a544  mov     x21, x0
  10002a548  b       loc_10002a56c
  10002a54c  mov     x21, x0
  10002a550  b       loc_10002a564
  10002a554  mov     x1, x21
  10002a558  mov     x21, x0
  10002a55c  mov     x0, x1
  10002a560  bl      _objc_release
loc_10002a564:
  10002a564  mov     x0, x20
  10002a568  bl      _objc_release
loc_10002a56c:
  10002a56c  str     x19, [sp]
  10002a570  adrp    x8, #0x10041e000
  10002a574  ldr     x8, [x8, #0xc70]
  10002a578  str     x8, [sp, #8]
  10002a57c  adrp    x8, #0x100416000
  10002a580  nop
  10002a584  ldr     x1, [x8, #0xfc8]
  10002a588  mov     x0, sp
  10002a58c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10002a590  mov     x0, x21
  10002a594  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002a598  bl      sub_10000b760

; ======================================================================
; -[OBDragDropManager transformForOrientation:]
; address 0x10002a59c  size 88  kind objc
; ======================================================================
  10002a59c  cmp     x2, #2
  10002a5a0  b.eq    loc_10002a5b8                            ; if (arg1 == 2)
  10002a5a4  cmp     x2, #3
  10002a5a8  b.ne    loc_10002a5c4                            ; if (arg1 != 3)
  10002a5ac  adrp    x9, #0x100181000
  10002a5b0  ldr     d0, [x9, #0xac8]                         ; d0 = 1.57079633
  10002a5b4  b       _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation(self, _cmd, arg1)
loc_10002a5b8:
  10002a5b8  adrp    x9, #0x100181000
  10002a5bc  ldr     d0, [x9, #0x9e8]                         ; d0 = 3.14159265
  10002a5c0  b       _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation(self, _cmd, arg1)
loc_10002a5c4:
  10002a5c4  cmp     x2, #4
  10002a5c8  b.ne    loc_10002a5d8                            ; if (arg1 != 4)
  10002a5cc  adrp    x9, #0x100181000
  10002a5d0  ldr     d0, [x9, #0xad0]                         ; d0 = -1.57079633
  10002a5d4  b       _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation(self, _cmd, arg1)
loc_10002a5d8:
  10002a5d8  adrp    x9, #0x1003b0000
  10002a5dc  ldr     x9, [x9]                                 ; _CGAffineTransformIdentity
  10002a5e0  ldr     q0, [x9, #0x20]                          ; q0 = _CGAffineTransformIdentity[+0x20]
  10002a5e4  str     q0, [x8, #0x20]
  10002a5e8  ldp     q0, q1, [x9]
  10002a5ec  stp     q0, q1, [x8]
  10002a5f0  ret

; ======================================================================
; -[OBDragDropManager handleApplicationOrientationChange:]
; address 0x10002a5f4  size 276  kind objc
; ======================================================================
  10002a5f4  stp     x22, x21, [sp, #-0x30]!
  10002a5f8  stp     x20, x19, [sp, #0x10]
  10002a5fc  stp     x29, x30, [sp, #0x20]
  10002a600  add     x29, sp, #0x20
  10002a604  sub     sp, sp, #0x60
  10002a608  mov     x19, x0
  10002a60c  adrp    x8, #0x10041d000
  10002a610  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10002a614  adrp    x8, #0x100416000
  10002a618  nop
  10002a61c  ldr     x1, [x8, #0xb28]
  10002a620  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10002a624  mov     x29, x29
  10002a628  bl      _objc_retainAutoreleasedReturnValue
  10002a62c  mov     x20, x0
  10002a630  adrp    x8, #0x100416000
  10002a634  nop
  10002a638  ldr     x1, [x8, #0xb30]
  10002a63c  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] statusBarOrientation]
  10002a640  mov     x21, x0
  10002a644  mov     x0, x20
  10002a648  bl      _objc_release
  10002a64c  adrp    x8, #0x100417000
  10002a650  nop
  10002a654  ldr     x1, [x8, #0xdf8]
  10002a658  mov     x0, x19
  10002a65c  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a660  mov     x29, x29
  10002a664  bl      _objc_retainAutoreleasedReturnValue
  10002a668  mov     x20, x0
  10002a66c  cbz     x19, loc_10002a694                       ; if (self == 0)
  10002a670  adrp    x8, #0x100417000
  10002a674  nop
  10002a678  ldr     x1, [x8, #0xe00]
  10002a67c  add     x8, sp, #0x30
  10002a680  mov     x0, x19
  10002a684  mov     x2, x21
  10002a688  bl      _objc_msgSend                            ; [self transformForOrientation:[[UIApplication sharedApplication] statusBarOrientation]]
  10002a68c  add     x8, sp, #0x30
  10002a690  b       loc_10002a6a4
loc_10002a694:
  10002a694  stp     xzr, xzr, [sp, #0x50]
  10002a698  add     x8, sp, #0x30
  10002a69c  stp     xzr, xzr, [sp, #0x40]
  10002a6a0  stp     xzr, xzr, [sp, #0x30]
loc_10002a6a4:
  10002a6a4  ldr     q0, [x8, #0x20]
  10002a6a8  str     q0, [sp, #0x20]
  10002a6ac  ldp     q0, q1, [x8]
  10002a6b0  stp     q0, q1, [sp]
  10002a6b4  adrp    x8, #0x100417000
  10002a6b8  nop
  10002a6bc  ldr     x1, [x8, #0x8a8]
  10002a6c0  mov     x2, sp
  10002a6c4  mov     x0, x20
  10002a6c8  bl      _objc_msgSend                            ; [[self overlayWindow] setTransform:&sp[0x0]]
  10002a6cc  mov     x0, x20
  10002a6d0  bl      _objc_release
  10002a6d4  sub     sp, x29, #0x20
  10002a6d8  ldp     x29, x30, [sp, #0x20]
  10002a6dc  ldp     x20, x19, [sp, #0x10]
  10002a6e0  ldp     x22, x21, [sp], #0x30
  10002a6e4  ret
  10002a6e8  mov     x19, x0
  10002a6ec  b       loc_10002a700
  10002a6f0  b       loc_10002a6f4
loc_10002a6f4:
  10002a6f4  mov     x19, x0
  10002a6f8  mov     x0, x20
  10002a6fc  bl      _objc_release
loc_10002a700:
  10002a700  mov     x0, x19
  10002a704  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager prepareOverlayWindowUsingMainWindow:]
; address 0x10002a708  size 716  kind objc
; ======================================================================
  10002a708  stp     x22, x21, [sp, #-0x30]!
  10002a70c  stp     x20, x19, [sp, #0x10]
  10002a710  stp     x29, x30, [sp, #0x20]
  10002a714  add     x29, sp, #0x20
  10002a718  sub     sp, sp, #0x60
  10002a71c  mov     x20, x0
  10002a720  mov     x0, x2
  10002a724  bl      _objc_retain
  10002a728  mov     x19, x0
  10002a72c  adrp    x8, #0x100417000
  10002a730  nop
  10002a734  ldr     x21, [x8, #0xdf8]
  10002a738  mov     x0, x20
  10002a73c  mov     x1, x21
  10002a740  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a744  mov     x29, x29
  10002a748  bl      _objc_retainAutoreleasedReturnValue
  10002a74c  mov     x22, x0
  10002a750  bl      _objc_release
  10002a754  cbz     x22, loc_10002a7a0                       ; if ([self overlayWindow] == 0)
  10002a758  mov     x0, x20
  10002a75c  mov     x1, x21
  10002a760  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a764  mov     x29, x29
  10002a768  bl      _objc_retainAutoreleasedReturnValue
  10002a76c  mov     x22, x0
  10002a770  adrp    x8, #0x100417000
  10002a774  nop
  10002a778  ldr     x1, [x8, #0x1d0]
  10002a77c  bl      _objc_msgSend                            ; [[self overlayWindow] removeFromSuperview]
  10002a780  mov     x0, x22
  10002a784  bl      _objc_release
  10002a788  adrp    x8, #0x100417000
  10002a78c  nop
  10002a790  ldr     x1, [x8, #0xe08]
  10002a794  mov     x2, #0
  10002a798  mov     x0, x20
  10002a79c  bl      _objc_msgSend                            ; [self setOverlayWindow:0]
loc_10002a7a0:
  10002a7a0  adrp    x8, #0x10041e000
  10002a7a4  ldr     x0, [x8, #0xe0]                          ; class UIWindow
  10002a7a8  adrp    x8, #0x100416000
  10002a7ac  nop
  10002a7b0  ldr     x1, [x8, #0xac8]
  10002a7b4  bl      _objc_msgSend                            ; [UIWindow alloc]
  10002a7b8  mov     x22, x0
  10002a7bc  adrp    x8, #0x100416000
  10002a7c0  nop
  10002a7c4  ldr     x1, [x8, #0xf38]
  10002a7c8  mov     x0, x19
  10002a7cc  bl      _objc_msgSend                            ; [arg1 frame]
  10002a7d0  adrp    x8, #0x100417000
  10002a7d4  nop
  10002a7d8  ldr     x1, [x8, #0x178]
  10002a7dc  mov     x0, x22
  10002a7e0  bl      _objc_msgSend                            ; [[UIWindow alloc] initWithFrame:{[arg1 frame].0, [arg1 frame].1, [arg1 frame].2, [arg1 frame].3}]
  10002a7e4  mov     x22, x0
  10002a7e8  adrp    x8, #0x100417000
  10002a7ec  nop
  10002a7f0  ldr     x1, [x8, #0xe08]
  10002a7f4  mov     x0, x20
  10002a7f8  mov     x2, x22
  10002a7fc  bl      _objc_msgSend                            ; [self setOverlayWindow:[[UIWindow alloc] initWithFrame:{[arg1 frame].0, [arg1 frame].1, [arg1 frame].2, [arg1 frame].3}]]
  10002a800  mov     x0, x22
  10002a804  bl      _objc_release
  10002a808  mov     x0, x20
  10002a80c  mov     x1, x21
  10002a810  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a814  mov     x29, x29
  10002a818  bl      _objc_retainAutoreleasedReturnValue
  10002a81c  mov     x22, x0
  10002a820  adrp    x8, #0x1003b0000
  10002a824  ldr     x8, [x8, #0x108]                         ; _UIWindowLevelAlert
  10002a828  ldr     d0, [x8]                                 ; d0 = _UIWindowLevelAlert[+0x0]
  10002a82c  adrp    x8, #0x100417000
  10002a830  nop
  10002a834  ldr     x1, [x8, #0xe10]
  10002a838  bl      _objc_msgSend                            ; [[self overlayWindow] setWindowLevel:x2]
  10002a83c  mov     x0, x22
  10002a840  bl      _objc_release
  10002a844  mov     x0, x20
  10002a848  mov     x1, x21
  10002a84c  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a850  mov     x29, x29
  10002a854  bl      _objc_retainAutoreleasedReturnValue
  10002a858  mov     x22, x0
  10002a85c  adrp    x8, #0x100416000
  10002a860  nop
  10002a864  ldr     x1, [x8, #0xba8]
  10002a868  mov     w2, #1
  10002a86c  bl      _objc_msgSend                            ; [[self overlayWindow] setHidden:1]
  10002a870  mov     x0, x22
  10002a874  bl      _objc_release
  10002a878  mov     x0, x20
  10002a87c  mov     x1, x21
  10002a880  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a884  mov     x29, x29
  10002a888  bl      _objc_retainAutoreleasedReturnValue
  10002a88c  mov     x22, x0
  10002a890  adrp    x8, #0x100417000
  10002a894  nop
  10002a898  ldr     x1, [x8, #0x998]
  10002a89c  mov     w2, #0
  10002a8a0  bl      _objc_msgSend                            ; [[self overlayWindow] setUserInteractionEnabled:0]
  10002a8a4  mov     x0, x22
  10002a8a8  bl      _objc_release
  10002a8ac  mov     x0, x20
  10002a8b0  mov     x1, x21
  10002a8b4  bl      _objc_msgSend                            ; [self overlayWindow]
  10002a8b8  mov     x29, x29
  10002a8bc  bl      _objc_retainAutoreleasedReturnValue
  10002a8c0  mov     x21, x0
  10002a8c4  adrp    x8, #0x10041d000
  10002a8c8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10002a8cc  adrp    x8, #0x100416000
  10002a8d0  nop
  10002a8d4  ldr     x1, [x8, #0xb28]
  10002a8d8  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10002a8dc  mov     x29, x29
  10002a8e0  bl      _objc_retainAutoreleasedReturnValue
  10002a8e4  mov     x22, x0
  10002a8e8  adrp    x8, #0x100416000
  10002a8ec  nop
  10002a8f0  ldr     x1, [x8, #0xb30]
  10002a8f4  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] statusBarOrientation]
  10002a8f8  mov     x2, x0
  10002a8fc  cbz     x20, loc_10002a920                       ; if (self == 0)
  10002a900  adrp    x8, #0x100417000
  10002a904  nop
  10002a908  ldr     x1, [x8, #0xe00]
  10002a90c  add     x8, sp, #0x30
  10002a910  mov     x0, x20
  10002a914  bl      _objc_msgSend                            ; [self transformForOrientation:[[UIApplication sharedApplication] statusBarOrientation]]
  10002a918  add     x8, sp, #0x30
  10002a91c  b       loc_10002a930
loc_10002a920:
  10002a920  stp     xzr, xzr, [sp, #0x50]
  10002a924  add     x8, sp, #0x30
  10002a928  stp     xzr, xzr, [sp, #0x40]
  10002a92c  stp     xzr, xzr, [sp, #0x30]
loc_10002a930:
  10002a930  ldr     q0, [x8, #0x20]
  10002a934  str     q0, [sp, #0x20]
  10002a938  ldp     q0, q1, [x8]
  10002a93c  stp     q0, q1, [sp]
  10002a940  adrp    x8, #0x100417000
  10002a944  nop
  10002a948  ldr     x1, [x8, #0x8a8]
  10002a94c  mov     x2, sp
  10002a950  mov     x0, x21
  10002a954  bl      _objc_msgSend                            ; [[self overlayWindow] setTransform:&sp[0x0]]
  10002a958  mov     x0, x22
  10002a95c  bl      _objc_release
  10002a960  mov     x0, x21
  10002a964  bl      _objc_release
  10002a968  mov     x0, x19
  10002a96c  bl      _objc_release
  10002a970  sub     sp, x29, #0x20
  10002a974  ldp     x29, x30, [sp, #0x20]
  10002a978  ldp     x20, x19, [sp, #0x10]
  10002a97c  ldp     x22, x21, [sp], #0x30
  10002a980  ret
  10002a984  mov     x20, x0
  10002a988  b       loc_10002a9c4
  10002a98c  mov     x20, x0
  10002a990  mov     x0, x22
  10002a994  bl      _objc_release
  10002a998  b       loc_10002a9b0
  10002a99c  b       loc_10002a9b8
  10002a9a0  b       loc_10002a9b8
  10002a9a4  b       loc_10002a9b8
  10002a9a8  b       loc_10002a9b8
  10002a9ac  mov     x20, x0
loc_10002a9b0:
  10002a9b0  mov     x0, x21
  10002a9b4  b       loc_10002a9c0
loc_10002a9b8:
  10002a9b8  mov     x20, x0
  10002a9bc  mov     x0, x22
loc_10002a9c0:
  10002a9c0  bl      _objc_release
loc_10002a9c4:
  10002a9c4  mov     x0, x19
  10002a9c8  bl      _objc_release
  10002a9cc  mov     x0, x20
  10002a9d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager findDropTargetHandler:]
; address 0x10002a9d4  size 236  kind objc
; ======================================================================
  10002a9d4  stp     x22, x21, [sp, #-0x30]!
  10002a9d8  stp     x20, x19, [sp, #0x10]
  10002a9dc  stp     x29, x30, [sp, #0x20]
  10002a9e0  add     x29, sp, #0x20
  10002a9e4  mov     x20, x0
  10002a9e8  mov     x0, x2
  10002a9ec  bl      _objc_retain
  10002a9f0  mov     x19, x0
  10002a9f4  adrp    x8, #0x100417000
  10002a9f8  nop
  10002a9fc  ldr     x1, [x8, #0xe18]
  10002aa00  bl      _objc_msgSend                            ; [arg1 dropZoneHandler]
  10002aa04  mov     x29, x29
  10002aa08  bl      _objc_retainAutoreleasedReturnValue
  10002aa0c  mov     x21, x0
  10002aa10  bl      _objc_release
  10002aa14  cbz     x21, loc_10002aa28                       ; if ([arg1 dropZoneHandler] == 0)
  10002aa18  mov     x0, x19
  10002aa1c  bl      _objc_retain
  10002aa20  mov     x20, x0
  10002aa24  b       loc_10002aa80
loc_10002aa28:
  10002aa28  adrp    x8, #0x100417000
  10002aa2c  nop
  10002aa30  ldr     x1, [x8, #0x818]
  10002aa34  mov     x0, x19
  10002aa38  bl      _objc_msgSend                            ; [arg1 superview]
  10002aa3c  mov     x29, x29
  10002aa40  bl      _objc_retainAutoreleasedReturnValue
  10002aa44  mov     x21, x0
  10002aa48  cbz     x21, loc_10002aa74                       ; if ([arg1 superview] == 0)
  10002aa4c  adrp    x8, #0x100417000
  10002aa50  nop
  10002aa54  ldr     x1, [x8, #0xe20]
  10002aa58  mov     x0, x20
  10002aa5c  mov     x2, x21
  10002aa60  bl      _objc_msgSend                            ; [self findDropTargetHandler:[arg1 superview]]
  10002aa64  mov     x29, x29
  10002aa68  bl      _objc_retainAutoreleasedReturnValue
  10002aa6c  mov     x20, x0
  10002aa70  b       loc_10002aa78
loc_10002aa74:
  10002aa74  mov     x20, #0
loc_10002aa78:
  10002aa78  mov     x0, x21
  10002aa7c  bl      _objc_release
loc_10002aa80:
  10002aa80  mov     x0, x19
  10002aa84  bl      _objc_release
  10002aa88  mov     x0, x20
  10002aa8c  ldp     x29, x30, [sp, #0x20]
  10002aa90  ldp     x20, x19, [sp, #0x10]
  10002aa94  ldp     x22, x21, [sp], #0x30
  10002aa98  b       _objc_autoreleaseReturnValue
  10002aa9c  mov     x20, x0
loc_10002aaa0:
  10002aaa0  mov     x0, x19
  10002aaa4  bl      _objc_release
  10002aaa8  mov     x0, x20
  10002aaac  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002aab0  mov     x20, x0
  10002aab4  mov     x0, x21
  10002aab8  bl      _objc_release
  10002aabc  b       loc_10002aaa0

; ======================================================================
; -[OBDragDropManager findDropZoneHandlerInView:atLocation:]
; address 0x10002aac0  size 156  kind objc
; ======================================================================
  10002aac0  stp     x20, x19, [sp, #-0x20]!
  10002aac4  stp     x29, x30, [sp, #0x10]
  10002aac8  add     x29, sp, #0x10
  10002aacc  mov     x8, x2
  10002aad0  mov     x20, x0
  10002aad4  adrp    x9, #0x100417000
  10002aad8  nop
  10002aadc  ldr     x1, [x9, #0xe28]
  10002aae0  mov     x2, #0
  10002aae4  mov     x0, x8
  10002aae8  bl      _objc_msgSend                            ; [arg1 hitTest:{arg2.0, arg2.1} withEvent:0]
  10002aaec  mov     x29, x29
  10002aaf0  bl      _objc_retainAutoreleasedReturnValue
  10002aaf4  mov     x19, x0
  10002aaf8  cbz     x19, loc_10002ab24                       ; if ([arg1 hitTest:{arg2.0, arg2.1} withEvent:0] == 0)
  10002aafc  adrp    x8, #0x100417000
  10002ab00  nop
  10002ab04  ldr     x1, [x8, #0xe20]
  10002ab08  mov     x0, x20
  10002ab0c  mov     x2, x19
  10002ab10  bl      _objc_msgSend                            ; [self findDropTargetHandler:[arg1 hitTest:{arg2.0, arg2.1} withEvent:0]]
  10002ab14  mov     x29, x29
  10002ab18  bl      _objc_retainAutoreleasedReturnValue
  10002ab1c  mov     x20, x0
  10002ab20  b       loc_10002ab28
loc_10002ab24:
  10002ab24  mov     x20, #0
loc_10002ab28:
  10002ab28  mov     x0, x19
  10002ab2c  bl      _objc_release
  10002ab30  mov     x0, x20
  10002ab34  ldp     x29, x30, [sp, #0x10]
  10002ab38  ldp     x20, x19, [sp], #0x20
  10002ab3c  b       _objc_autoreleaseReturnValue
  10002ab40  mov     x20, x0
  10002ab44  b       loc_10002ab54
  10002ab48  mov     x20, x0
  10002ab4c  mov     x0, x19
  10002ab50  bl      _objc_release
loc_10002ab54:
  10002ab54  mov     x0, x20
  10002ab58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager findDropZoneHandlerInWindow:atLocation:]
; address 0x10002ab5c  size 640  kind objc
; ======================================================================
  10002ab5c  stp     d9, d8, [sp, #-0x70]!
  10002ab60  stp     x28, x27, [sp, #0x10]
  10002ab64  stp     x26, x25, [sp, #0x20]
  10002ab68  stp     x24, x23, [sp, #0x30]
  10002ab6c  stp     x22, x21, [sp, #0x40]
  10002ab70  stp     x20, x19, [sp, #0x50]
  10002ab74  stp     x29, x30, [sp, #0x60]
  10002ab78  add     x29, sp, #0x60
  10002ab7c  mov     v8.16b, v1.16b
  10002ab80  mov     v9.16b, v0.16b
  10002ab84  mov     x22, x0
  10002ab88  mov     x0, x2
  10002ab8c  bl      _objc_retain
  10002ab90  mov     x19, x0
  10002ab94  adrp    x8, #0x100417000
  10002ab98  nop
  10002ab9c  ldr     x1, [x8, #0xe28]
  10002aba0  mov     x2, #0
  10002aba4  mov     v0.16b, v9.16b
  10002aba8  mov     v1.16b, v8.16b
  10002abac  bl      _objc_msgSend                            ; [arg1 hitTest:{arg2.0, arg2.1} withEvent:0]
  10002abb0  mov     x29, x29
  10002abb4  bl      _objc_retainAutoreleasedReturnValue
  10002abb8  mov     x20, x0
  10002abbc  adrp    x8, #0x100417000
  10002abc0  nop
  10002abc4  ldr     x1, [x8, #0xe20]
  10002abc8  mov     x0, x22
  10002abcc  mov     x2, x20
  10002abd0  bl      _objc_msgSend                            ; [self findDropTargetHandler:[arg1 hitTest:{arg2.0, arg2.1} withEvent:0]]
  10002abd4  mov     x29, x29
  10002abd8  bl      _objc_retainAutoreleasedReturnValue
  10002abdc  mov     x21, x0
  10002abe0  cbz     x21, loc_10002abec                       ; if ([self findDropTargetHandler:[arg1 hitTest:{arg2.0, arg2.1} withEvent:0]] == 0)
  10002abe4  mov     x0, x21
  10002abe8  b       loc_10002ad20
loc_10002abec:
  10002abec  adrp    x8, #0x100417000
  10002abf0  nop
  10002abf4  ldr     x24, [x8, #0xe30]
  10002abf8  mov     x0, x19
  10002abfc  mov     x1, x24
  10002ac00  bl      _objc_msgSend                            ; [arg1 rootViewController]
  10002ac04  mov     x29, x29
  10002ac08  bl      _objc_retainAutoreleasedReturnValue
  10002ac0c  mov     x23, x0
  10002ac10  cbz     x23, loc_10002ad10                       ; if ([arg1 rootViewController] == 0)
  10002ac14  mov     x0, x19
  10002ac18  mov     x1, x24
  10002ac1c  bl      _objc_msgSend                            ; [arg1 rootViewController]
  10002ac20  mov     x29, x29
  10002ac24  bl      _objc_retainAutoreleasedReturnValue
  10002ac28  mov     x26, x0
  10002ac2c  adrp    x8, #0x100416000
  10002ac30  nop
  10002ac34  ldr     x25, [x8, #0xf18]
  10002ac38  mov     x1, x25
  10002ac3c  bl      _objc_msgSend                            ; [[arg1 rootViewController] view]
  10002ac40  mov     x29, x29
  10002ac44  bl      _objc_retainAutoreleasedReturnValue
  10002ac48  mov     x27, x0
  10002ac4c  adrp    x8, #0x100417000
  10002ac50  nop
  10002ac54  ldr     x1, [x8, #0xe38]
  10002ac58  mov     x0, x20
  10002ac5c  mov     x2, x27
  10002ac60  bl      _objc_msgSend                            ; [[arg1 hitTest:{arg2.0, arg2.1} withEvent:0] hasParentView:[[arg1 rootViewController] view]]
  10002ac64  mov     x28, x0
  10002ac68  mov     x0, x27
  10002ac6c  bl      _objc_release
  10002ac70  mov     x0, x26
  10002ac74  bl      _objc_release
  10002ac78  mov     x0, x23
  10002ac7c  bl      _objc_release
  10002ac80  tbnz    w28, #0, loc_10002ad18                   ; if (([[arg1 hitTest:{arg2.0, arg2.1} withEvent:0] hasParentView:[[arg1 rootViewController] view]] & 1))
  10002ac84  mov     x0, x19
  10002ac88  mov     x1, x24
  10002ac8c  bl      _objc_msgSend                            ; [arg1 rootViewController]
  10002ac90  mov     x29, x29
  10002ac94  bl      _objc_retainAutoreleasedReturnValue
  10002ac98  mov     x24, x0
  10002ac9c  mov     x1, x25
  10002aca0  bl      _objc_msgSend                            ; [[arg1 rootViewController] view]
  10002aca4  mov     x29, x29
  10002aca8  bl      _objc_retainAutoreleasedReturnValue
  10002acac  mov     x23, x0
  10002acb0  mov     x0, x24
  10002acb4  bl      _objc_release
  10002acb8  adrp    x8, #0x100417000
  10002acbc  nop
  10002acc0  ldr     x1, [x8, #0xe40]
  10002acc4  mov     x0, x23
  10002acc8  mov     v0.16b, v9.16b
  10002accc  mov     v1.16b, v8.16b
  10002acd0  mov     x2, x19
  10002acd4  bl      _objc_msgSend                            ; [[[arg1 rootViewController] view] convertPoint:{arg2.0, arg2.1} fromView:arg1]
  10002acd8  adrp    x8, #0x100417000
  10002acdc  nop
  10002ace0  ldr     x1, [x8, #0xe48]
  10002ace4  mov     x0, x22
  10002ace8  mov     x2, x23
  10002acec  bl      _objc_msgSend                            ; [self findDropZoneHandlerInView:[[arg1 rootViewController] view] atLocation:{[[[arg1 rootViewController] view] convertPoint:{arg2.0, arg2.1} fromView:arg1].0, [[[arg1 rootViewController] view] convertPoint:{arg2.0, arg2.1} fromView:arg1].1}]
  10002acf0  mov     x29, x29
  10002acf4  bl      _objc_retainAutoreleasedReturnValue
  10002acf8  mov     x22, x0
  10002acfc  mov     x0, x21
  10002ad00  bl      _objc_release
  10002ad04  mov     x0, x23
  10002ad08  bl      _objc_release
  10002ad0c  b       loc_10002ad1c
loc_10002ad10:
  10002ad10  mov     x0, x23
  10002ad14  bl      _objc_release
loc_10002ad18:
  10002ad18  mov     x22, #0
loc_10002ad1c:
  10002ad1c  mov     x0, x22
loc_10002ad20:
  10002ad20  bl      _objc_retain
  10002ad24  mov     x21, x0
  10002ad28  bl      _objc_release
  10002ad2c  mov     x0, x20
  10002ad30  bl      _objc_release
  10002ad34  mov     x0, x19
  10002ad38  bl      _objc_release
  10002ad3c  mov     x0, x21
  10002ad40  ldp     x29, x30, [sp, #0x60]
  10002ad44  ldp     x20, x19, [sp, #0x50]
  10002ad48  ldp     x22, x21, [sp, #0x40]
  10002ad4c  ldp     x24, x23, [sp, #0x30]
  10002ad50  ldp     x26, x25, [sp, #0x20]
  10002ad54  ldp     x28, x27, [sp, #0x10]
  10002ad58  ldp     d9, d8, [sp], #0x70
  10002ad5c  b       _objc_autoreleaseReturnValue
  10002ad60  mov     x22, x0
  10002ad64  b       loc_10002adbc
  10002ad68  mov     x22, x0
  10002ad6c  b       loc_10002adb4
  10002ad70  mov     x22, x0
  10002ad74  b       loc_10002adac
  10002ad78  mov     x22, x0
  10002ad7c  b       loc_10002ada4
  10002ad80  mov     x22, x0
  10002ad84  b       loc_10002ad94
  10002ad88  mov     x22, x0
  10002ad8c  mov     x0, x27
  10002ad90  bl      _objc_release
loc_10002ad94:
  10002ad94  mov     x0, x26
  10002ad98  bl      _objc_release
  10002ad9c  b       loc_10002ada4
  10002ada0  mov     x22, x0
loc_10002ada4:
  10002ada4  mov     x0, x23
  10002ada8  bl      _objc_release
loc_10002adac:
  10002adac  mov     x0, x21
  10002adb0  bl      _objc_release
loc_10002adb4:
  10002adb4  mov     x0, x20
  10002adb8  bl      _objc_release
loc_10002adbc:
  10002adbc  mov     x0, x19
  10002adc0  bl      _objc_release
  10002adc4  mov     x0, x22
  10002adc8  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002adcc  mov     x22, x0
  10002add0  mov     x0, x24
  10002add4  bl      _objc_release
  10002add8  b       loc_10002adac

; ======================================================================
; -[OBDragDropManager handleOvumMove:inWindow:atLocation:]
; address 0x10002addc  size 960  kind objc
; ======================================================================
  10002addc  stp     d11, d10, [sp, #-0x60]!
  10002ade0  stp     d9, d8, [sp, #0x10]
  10002ade4  stp     x24, x23, [sp, #0x20]
  10002ade8  stp     x22, x21, [sp, #0x30]
  10002adec  stp     x20, x19, [sp, #0x40]
  10002adf0  stp     x29, x30, [sp, #0x50]
  10002adf4  add     x29, sp, #0x50
  10002adf8  mov     v10.16b, v1.16b
  10002adfc  mov     v11.16b, v0.16b
  10002ae00  mov     x20, x3
  10002ae04  mov     x21, x0
  10002ae08  mov     x0, x2
  10002ae0c  bl      _objc_retain
  10002ae10  mov     x19, x0
  10002ae14  mov     x0, x20
  10002ae18  bl      _objc_retain
  10002ae1c  mov     x20, x0
  10002ae20  adrp    x8, #0x100417000
  10002ae24  nop
  10002ae28  ldr     x1, [x8, #0xe50]
  10002ae2c  mov     x0, x21
  10002ae30  mov     x2, x20
  10002ae34  mov     v0.16b, v11.16b
  10002ae38  mov     v1.16b, v10.16b
  10002ae3c  bl      _objc_msgSend                            ; [self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]
  10002ae40  mov     x29, x29
  10002ae44  bl      _objc_retainAutoreleasedReturnValue
  10002ae48  mov     x21, x0
  10002ae4c  adrp    x8, #0x100417000
  10002ae50  nop
  10002ae54  ldr     x23, [x8, #0xe58]
  10002ae58  mov     x0, x20
  10002ae5c  mov     x1, x23
  10002ae60  mov     v0.16b, v11.16b
  10002ae64  mov     v1.16b, v10.16b
  10002ae68  mov     x2, x21
  10002ae6c  bl      _objc_msgSend                            ; [arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]]
  10002ae70  mov     v9.16b, v0.16b
  10002ae74  mov     v8.16b, v1.16b
  10002ae78  adrp    x8, #0x100417000
  10002ae7c  nop
  10002ae80  ldr     x22, [x8, #0xe60]
  10002ae84  mov     x0, x19
  10002ae88  mov     x1, x22
  10002ae8c  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002ae90  mov     x29, x29
  10002ae94  bl      _objc_retainAutoreleasedReturnValue
  10002ae98  mov     x24, x0
  10002ae9c  bl      _objc_release
  10002aea0  cmp     x24, x21
  10002aea4  b.eq    loc_10002b060                            ; if ([arg1 currentDropHandlingView] == [self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}])
  10002aea8  mov     x0, x19
  10002aeac  mov     x1, x22
  10002aeb0  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002aeb4  mov     x29, x29
  10002aeb8  bl      _objc_retainAutoreleasedReturnValue
  10002aebc  mov     x24, x0
  10002aec0  bl      _objc_release
  10002aec4  cbz     x24, loc_10002afa8                       ; if ([arg1 currentDropHandlingView] == 0)
  10002aec8  mov     x0, x19
  10002aecc  mov     x1, x22
  10002aed0  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002aed4  mov     x29, x29
  10002aed8  bl      _objc_retainAutoreleasedReturnValue
  10002aedc  mov     x24, x0
  10002aee0  mov     x0, x20
  10002aee4  mov     x1, x23
  10002aee8  mov     v0.16b, v11.16b
  10002aeec  mov     v1.16b, v10.16b
  10002aef0  mov     x2, x24
  10002aef4  bl      _objc_msgSend                            ; [arg2 convertPoint:{arg3.0, arg3.1} toView:[arg1 currentDropHandlingView]]
  10002aef8  mov     v10.16b, v0.16b
  10002aefc  mov     v11.16b, v1.16b
  10002af00  mov     x0, x24
  10002af04  bl      _objc_release
  10002af08  mov     x0, x19
  10002af0c  mov     x1, x22
  10002af10  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002af14  mov     x29, x29
  10002af18  bl      _objc_retainAutoreleasedReturnValue
  10002af1c  mov     x24, x0
  10002af20  adrp    x8, #0x100417000
  10002af24  nop
  10002af28  ldr     x1, [x8, #0xe18]
  10002af2c  bl      _objc_msgSend                            ; [[arg1 currentDropHandlingView] dropZoneHandler]
  10002af30  mov     x29, x29
  10002af34  bl      _objc_retainAutoreleasedReturnValue
  10002af38  mov     x23, x0
  10002af3c  mov     x0, x24
  10002af40  bl      _objc_release
  10002af44  mov     x0, x19
  10002af48  mov     x1, x22
  10002af4c  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002af50  mov     x29, x29
  10002af54  bl      _objc_retainAutoreleasedReturnValue
  10002af58  mov     x24, x0
  10002af5c  adrp    x8, #0x100417000
  10002af60  nop
  10002af64  ldr     x1, [x8, #0xe68]
  10002af68  mov     x0, x23
  10002af6c  mov     x2, x19
  10002af70  mov     x3, x24
  10002af74  mov     v0.16b, v10.16b
  10002af78  mov     v1.16b, v11.16b
  10002af7c  bl      _objc_msgSend                            ; [[[arg1 currentDropHandlingView] dropZoneHandler] ovumExited:arg1 inView:[arg1 currentDropHandlingView] atLocation:{[arg2 convertPoint:{arg3.0, arg3.1} toView:[arg1 currentDropHandlingView]].0, [arg2 convertPoint:{arg3.0, arg3.1} toView:[arg1 currentDropHandlingView]].1}]
  10002af80  mov     x0, x24
  10002af84  bl      _objc_release
  10002af88  adrp    x8, #0x100417000
  10002af8c  nop
  10002af90  ldr     x1, [x8, #0xe70]
  10002af94  mov     x2, #0
  10002af98  mov     x0, x19
  10002af9c  bl      _objc_msgSend                            ; [arg1 setDropAction:0]
  10002afa0  mov     x0, x23
  10002afa4  bl      _objc_release
loc_10002afa8:
  10002afa8  adrp    x8, #0x100417000
  10002afac  nop
  10002afb0  ldr     x1, [x8, #0xe78]
  10002afb4  mov     x0, x19
  10002afb8  mov     x2, x21
  10002afbc  bl      _objc_msgSend                            ; [arg1 setCurrentDropHandlingView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]]
  10002afc0  mov     x0, x19
  10002afc4  mov     x1, x22
  10002afc8  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002afcc  mov     x29, x29
  10002afd0  bl      _objc_retainAutoreleasedReturnValue
  10002afd4  mov     x23, x0
  10002afd8  bl      _objc_release
  10002afdc  cbz     x23, loc_10002b100                       ; if ([arg1 currentDropHandlingView] == 0)
  10002afe0  mov     x0, x19
  10002afe4  mov     x1, x22
  10002afe8  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002afec  mov     x29, x29
  10002aff0  bl      _objc_retainAutoreleasedReturnValue
  10002aff4  mov     x24, x0
  10002aff8  adrp    x8, #0x100417000
  10002affc  nop
  10002b000  ldr     x1, [x8, #0xe18]
  10002b004  bl      _objc_msgSend                            ; [[arg1 currentDropHandlingView] dropZoneHandler]
  10002b008  mov     x29, x29
  10002b00c  bl      _objc_retainAutoreleasedReturnValue
  10002b010  mov     x23, x0
  10002b014  mov     x0, x24
  10002b018  bl      _objc_release
  10002b01c  adrp    x8, #0x100417000
  10002b020  nop
  10002b024  ldr     x1, [x8, #0xe80]
  10002b028  mov     x0, x23
  10002b02c  mov     x2, x19
  10002b030  mov     x3, x21
  10002b034  mov     v0.16b, v9.16b
  10002b038  mov     v1.16b, v8.16b
  10002b03c  bl      _objc_msgSend                            ; [[[arg1 currentDropHandlingView] dropZoneHandler] ovumEntered:arg1 inView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}] atLocation:{[arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].0, [arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].1}]
  10002b040  mov     x2, x0
  10002b044  adrp    x8, #0x100417000
  10002b048  nop
  10002b04c  ldr     x1, [x8, #0xe70]
  10002b050  mov     x0, x19
  10002b054  bl      _objc_msgSend                            ; [arg1 setDropAction:[[[arg1 currentDropHandlingView] dropZoneHandler] ovumEntered:arg1 inView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}] atLocation:{[arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].0, [arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].1}]]
  10002b058  b       loc_10002b0f8
  10002b05c  b       loc_10002b144
loc_10002b060:
  10002b060  mov     x0, x19
  10002b064  mov     x1, x22
  10002b068  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002b06c  mov     x29, x29
  10002b070  bl      _objc_retainAutoreleasedReturnValue
  10002b074  mov     x24, x0
  10002b078  adrp    x8, #0x100417000
  10002b07c  nop
  10002b080  ldr     x1, [x8, #0xe18]
  10002b084  bl      _objc_msgSend                            ; [[arg1 currentDropHandlingView] dropZoneHandler]
  10002b088  mov     x29, x29
  10002b08c  bl      _objc_retainAutoreleasedReturnValue
  10002b090  mov     x23, x0
  10002b094  mov     x0, x24
  10002b098  bl      _objc_release
  10002b09c  adrp    x8, #0x100417000
  10002b0a0  nop
  10002b0a4  ldr     x22, [x8, #0xe88]
  10002b0a8  adrp    x8, #0x100417000
  10002b0ac  nop
  10002b0b0  ldr     x1, [x8, #0xe90]
  10002b0b4  mov     x0, x23
  10002b0b8  mov     x2, x22
  10002b0bc  bl      _objc_msgSend                            ; [[[arg1 currentDropHandlingView] dropZoneHandler] respondsToSelector:@selector(ovumMoved:inView:atLocation:)]
  10002b0c0  cbz     w0, loc_10002b0f8                        ; if ([[[arg1 currentDropHandlingView] dropZoneHandler] respondsToSelector:@selector(ovumMoved:inView:atLocation:)] == 0)
  10002b0c4  mov     x0, x23
  10002b0c8  mov     x1, x22
  10002b0cc  mov     x2, x19
  10002b0d0  mov     x3, x21
  10002b0d4  mov     v0.16b, v9.16b
  10002b0d8  mov     v1.16b, v8.16b
  10002b0dc  bl      _objc_msgSend                            ; [[[arg1 currentDropHandlingView] dropZoneHandler] ovumMoved:arg1 inView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}] atLocation:{[arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].0, [arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].1}]
  10002b0e0  mov     x2, x0
  10002b0e4  adrp    x8, #0x100417000
  10002b0e8  nop
  10002b0ec  ldr     x1, [x8, #0xe70]
  10002b0f0  mov     x0, x19
  10002b0f4  bl      _objc_msgSend                            ; [arg1 setDropAction:[[[arg1 currentDropHandlingView] dropZoneHandler] ovumMoved:arg1 inView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}] atLocation:{[arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].0, [arg2 convertPoint:{arg3.0, arg3.1} toView:[self findDropZoneHandlerInWindow:arg2 atLocation:{arg3.0, arg3.1}]].1}]]
loc_10002b0f8:
  10002b0f8  mov     x0, x23
  10002b0fc  bl      _objc_release
loc_10002b100:
  10002b100  mov     x0, x21
  10002b104  bl      _objc_release
  10002b108  mov     x0, x20
  10002b10c  bl      _objc_release
  10002b110  mov     x0, x19
  10002b114  ldp     x29, x30, [sp, #0x50]
  10002b118  ldp     x20, x19, [sp, #0x40]
  10002b11c  ldp     x22, x21, [sp, #0x30]
  10002b120  ldp     x24, x23, [sp, #0x20]
  10002b124  ldp     d9, d8, [sp, #0x10]
  10002b128  ldp     d11, d10, [sp], #0x60
  10002b12c  b       _objc_release
  10002b130  mov     x22, x0
  10002b134  b       loc_10002b17c
  10002b138  mov     x22, x0
  10002b13c  b       loc_10002b184
  10002b140  b       loc_10002b144
loc_10002b144:
  10002b144  mov     x22, x0
loc_10002b148:
  10002b148  mov     x0, x23
  10002b14c  bl      _objc_release
  10002b150  b       loc_10002b17c
  10002b154  b       loc_10002b170
  10002b158  b       loc_10002b170
  10002b15c  mov     x22, x0
  10002b160  mov     x0, x24
  10002b164  bl      _objc_release
  10002b168  b       loc_10002b148
  10002b16c  b       loc_10002b170
loc_10002b170:
  10002b170  mov     x22, x0
  10002b174  mov     x0, x24
  10002b178  bl      _objc_release
loc_10002b17c:
  10002b17c  mov     x0, x21
  10002b180  bl      _objc_release
loc_10002b184:
  10002b184  mov     x0, x20
  10002b188  bl      _objc_release
  10002b18c  mov     x0, x19
  10002b190  bl      _objc_release
  10002b194  mov     x0, x22
  10002b198  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager animateOvumReturningToSource:]
; address 0x10002b19c  size 696  kind objc
; ======================================================================
  10002b19c  stp     d9, d8, [sp, #-0x60]!
  10002b1a0  stp     x26, x25, [sp, #0x10]
  10002b1a4  stp     x24, x23, [sp, #0x20]
  10002b1a8  stp     x22, x21, [sp, #0x30]
  10002b1ac  stp     x20, x19, [sp, #0x40]
  10002b1b0  stp     x29, x30, [sp, #0x50]
  10002b1b4  add     x29, sp, #0x50
  10002b1b8  sub     sp, sp, #0xa0
  10002b1bc  mov     x20, x0
  10002b1c0  mov     x0, x2
  10002b1c4  bl      _objc_retain
  10002b1c8  mov     x19, x0
  10002b1cc  adrp    x8, #0x100417000
  10002b1d0  nop
  10002b1d4  ldr     x23, [x8, #0xe98]
  10002b1d8  mov     x1, x23
  10002b1dc  bl      _objc_msgSend                            ; [arg1 source]
  10002b1e0  mov     x29, x29
  10002b1e4  bl      _objc_retainAutoreleasedReturnValue
  10002b1e8  mov     x22, x0
  10002b1ec  adrp    x8, #0x100417000
  10002b1f0  nop
  10002b1f4  ldr     x21, [x8, #0xea0]
  10002b1f8  adrp    x8, #0x100417000
  10002b1fc  nop
  10002b200  ldr     x1, [x8, #0xe90]
  10002b204  mov     x2, x21
  10002b208  bl      _objc_msgSend                            ; [[arg1 source] respondsToSelector:@selector(handleReturningToSourceAnimationForOvum:completion:)]
  10002b20c  mov     x24, x0
  10002b210  mov     w25, #-0x3e000000
  10002b214  mov     x0, x22
  10002b218  bl      _objc_release
  10002b21c  cbz     w24, loc_10002b2d0                       ; if ([[arg1 source] respondsToSelector:@selector(handleReturningToSourceAnimationForOvum:completion:)] == 0)
  10002b220  adrp    x8, #0x100417000
  10002b224  nop
  10002b228  ldr     x1, [x8, #0xea8]
  10002b22c  mov     x0, x19
  10002b230  bl      _objc_msgSend                            ; [arg1 dragView]
  10002b234  mov     x29, x29
  10002b238  bl      _objc_retainAutoreleasedReturnValue
  10002b23c  mov     x22, x0
  10002b240  mov     x0, x19
  10002b244  mov     x1, x23
  10002b248  bl      _objc_msgSend                            ; [arg1 source]
  10002b24c  mov     x29, x29
  10002b250  bl      _objc_retainAutoreleasedReturnValue
  10002b254  mov     x23, x0
  10002b258  adrp    x8, #0x1003b0000
  10002b25c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10002b260  str     x8, [sp, #0x70]
  10002b264  stp     w25, wzr, [sp, #0x78]
  10002b268  adr     x8, #0x10002b454                         ; &-[OBDragDropManager animateOvumReturningToSource:]_block_invoke
  10002b26c  nop
  10002b270  str     x8, [sp, #0x80]
  10002b274  adrp    x8, #0x1003b1000
  10002b278  add     x8, x8, #0x300                           ; &d_1003b1300
  10002b27c  str     x8, [sp, #0x88]
  10002b280  mov     x0, x22
  10002b284  bl      _objc_retain
  10002b288  mov     x24, x0
  10002b28c  str     x24, [sp, #0x90]
  10002b290  mov     x0, x20
  10002b294  bl      _objc_retain
  10002b298  str     x0, [sp, #0x98]
  10002b29c  add     x3, sp, #0x70
  10002b2a0  mov     x0, x23
  10002b2a4  mov     x1, x21
  10002b2a8  mov     x2, x19
  10002b2ac  bl      _objc_msgSend                            ; [[arg1 source] handleReturningToSourceAnimationForOvum:arg1 completion:^{-[OBDragDropManager animateOvumReturningToSource:]_block_invoke captures +0x20=[arg1 dragView], +0x28=self}]
  10002b2b0  mov     x0, x23
  10002b2b4  bl      _objc_release
  10002b2b8  ldr     x0, [sp, #0x98]
  10002b2bc  bl      _objc_release
  10002b2c0  ldr     x0, [sp, #0x90]
  10002b2c4  bl      _objc_release
  10002b2c8  mov     x0, x24
  10002b2cc  b       loc_10002b3b4
loc_10002b2d0:
  10002b2d0  adrp    x8, #0x100417000
  10002b2d4  nop
  10002b2d8  ldr     x1, [x8, #0xeb0]
  10002b2dc  mov     x0, x19
  10002b2e0  bl      _objc_msgSend                            ; [arg1 dragViewInitialCenter]
  10002b2e4  mov     v8.16b, v0.16b
  10002b2e8  mov     v9.16b, v1.16b
  10002b2ec  adrp    x8, #0x100417000
  10002b2f0  nop
  10002b2f4  ldr     x1, [x8, #0xea8]
  10002b2f8  mov     x0, x19
  10002b2fc  bl      _objc_msgSend                            ; [arg1 dragView]
  10002b300  bl      _objc_retain
  10002b304  adrp    x21, #0x1003b0000
  10002b308  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10002b30c  adrp    x8, #0x10041d000
  10002b310  ldr     x22, [x8, #0xf98]                        ; class UIView
  10002b314  str     x21, [sp, #0x38]
  10002b318  stp     w25, wzr, [sp, #0x40]
  10002b31c  adr     x8, #0x10002b4f4                         ; &-[OBDragDropManager animateOvumReturningToSource:]_block_invoke_2
  10002b320  nop
  10002b324  str     x8, [sp, #0x48]
  10002b328  adrp    x8, #0x1003b1000
  10002b32c  add     x8, x8, #0x330                           ; &d_1003b1330
  10002b330  str     x8, [sp, #0x50]
  10002b334  bl      _objc_retain
  10002b338  str     x0, [sp, #0x58]
  10002b33c  stp     d8, d9, [sp, #0x60]
  10002b340  str     x21, [sp, #8]
  10002b344  stp     w25, wzr, [sp, #0x10]
  10002b348  adr     x8, #0x10002b570                         ; &-[OBDragDropManager animateOvumReturningToSource:]_block_invoke_3
  10002b34c  nop
  10002b350  str     x8, [sp, #0x18]
  10002b354  adrp    x8, #0x1003b1000
  10002b358  add     x8, x8, #0x360                           ; &d_1003b1360
  10002b35c  str     x8, [sp, #0x20]
  10002b360  bl      _objc_retain
  10002b364  mov     x21, x0
  10002b368  str     x21, [sp, #0x28]
  10002b36c  mov     x0, x20
  10002b370  bl      _objc_retain
  10002b374  str     x0, [sp, #0x30]
  10002b378  adrp    x8, #0x100417000
  10002b37c  nop
  10002b380  ldr     x1, [x8, #0x880]
  10002b384  fmov    d0, #0.25000000
  10002b388  add     x2, sp, #0x38
  10002b38c  add     x3, sp, #8
  10002b390  mov     x0, x22
  10002b394  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.25 animations:^{-[OBDragDropManager animateOvumReturningToSource:]_block_invoke_2 captures +0x20=[arg1 dragView], +0x28=[arg1 dragViewInitialCenter].0, +0x30=[arg1 dragViewInitialCenter].1} completion:^{-[OBDragDropManager animateOvumReturningToSource:]_block_invoke_3 captures +0x20=[arg1 dragView], +0x28=self, +0x30=__NSConcreteStackBlock, +0x38=0xc2000000, +0x40=&-[OBDragDropManager animateOvumReturnin…, +0x48=&d_1003b1330, +0x50=[arg1 dragView], +0x58=[arg1 dragV…
  10002b398  ldr     x0, [sp, #0x30]
  10002b39c  bl      _objc_release
  10002b3a0  ldr     x0, [sp, #0x28]
  10002b3a4  bl      _objc_release
  10002b3a8  ldr     x0, [sp, #0x58]
  10002b3ac  bl      _objc_release
  10002b3b0  mov     x0, x21
loc_10002b3b4:
  10002b3b4  bl      _objc_release
  10002b3b8  mov     x0, x19
  10002b3bc  bl      _objc_release
  10002b3c0  sub     sp, x29, #0x50
  10002b3c4  ldp     x29, x30, [sp, #0x50]
  10002b3c8  ldp     x20, x19, [sp, #0x40]
  10002b3cc  ldp     x22, x21, [sp, #0x30]
  10002b3d0  ldp     x24, x23, [sp, #0x20]
  10002b3d4  ldp     x26, x25, [sp, #0x10]
  10002b3d8  ldp     d9, d8, [sp], #0x60
  10002b3dc  ret
  10002b3e0  mov     x20, x0
  10002b3e4  b       loc_10002b444
  10002b3e8  mov     x20, x0
  10002b3ec  b       loc_10002b414
  10002b3f0  mov     x20, x0
  10002b3f4  b       loc_10002b414
  10002b3f8  mov     x20, x0
  10002b3fc  mov     x0, x23
  10002b400  bl      _objc_release
  10002b404  ldr     x0, [sp, #0x98]
  10002b408  bl      _objc_release
  10002b40c  ldr     x0, [sp, #0x90]
  10002b410  bl      _objc_release
loc_10002b414:
  10002b414  mov     x0, x22
  10002b418  bl      _objc_release
  10002b41c  b       loc_10002b444
  10002b420  mov     x20, x0
  10002b424  ldr     x0, [sp, #0x30]
  10002b428  bl      _objc_release
  10002b42c  ldr     x0, [sp, #0x28]
  10002b430  bl      _objc_release
  10002b434  ldr     x0, [sp, #0x58]
  10002b438  bl      _objc_release
  10002b43c  mov     x0, x21
  10002b440  bl      _objc_release
loc_10002b444:
  10002b444  mov     x0, x19
  10002b448  bl      _objc_release
  10002b44c  mov     x0, x20
  10002b450  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager animateOvumReturningToSource:]_block_invoke
; address 0x10002b454  size 80  kind block
; ======================================================================
  10002b454  stp     x20, x19, [sp, #-0x20]!
  10002b458  stp     x29, x30, [sp, #0x10]
  10002b45c  add     x29, sp, #0x10
  10002b460  mov     x19, x0
  10002b464  ldr     x0, [x19, #0x20]                         ; x0 = captured [arg1 dragView]
  10002b468  adrp    x8, #0x100417000
  10002b46c  nop
  10002b470  ldr     x1, [x8, #0x1d0]
  10002b474  bl      _objc_msgSend                            ; [[arg1 dragView] removeFromSuperview]
  10002b478  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  10002b47c  adrp    x9, #0x10041f000
  10002b480  ldrsw   x9, [x9, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002b484  ldr     x0, [x8, x9]                             ; x0 = self->overlayWindow
  10002b488  adrp    x8, #0x100416000
  10002b48c  nop
  10002b490  ldr     x1, [x8, #0xba8]
  10002b494  mov     w2, #1
  10002b498  ldp     x29, x30, [sp, #0x10]
  10002b49c  ldp     x20, x19, [sp], #0x20
  10002b4a0  b       _objc_msgSend                            ; [self->overlayWindow setHidden:1]

; ======================================================================
; sub_10002b4a4
; address 0x10002b4a4  size 40  kind sub
; ======================================================================
  10002b4a4  stp     x20, x19, [sp, #-0x20]!
  10002b4a8  stp     x29, x30, [sp, #0x10]
  10002b4ac  add     x29, sp, #0x10
  10002b4b0  mov     x19, x1
  10002b4b4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10002b4b8  bl      _objc_retain
  10002b4bc  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10002b4c0  ldp     x29, x30, [sp, #0x10]
  10002b4c4  ldp     x20, x19, [sp], #0x20
  10002b4c8  b       _objc_retain

; ======================================================================
; sub_10002b4cc
; address 0x10002b4cc  size 40  kind sub
; ======================================================================
  10002b4cc  stp     x20, x19, [sp, #-0x20]!
  10002b4d0  stp     x29, x30, [sp, #0x10]
  10002b4d4  add     x29, sp, #0x10
  10002b4d8  mov     x19, x0
  10002b4dc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10002b4e0  bl      _objc_release
  10002b4e4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10002b4e8  ldp     x29, x30, [sp, #0x10]
  10002b4ec  ldp     x20, x19, [sp], #0x20
  10002b4f0  b       _objc_release

; ======================================================================
; -[OBDragDropManager animateOvumReturningToSource:]_block_invoke_2
; address 0x10002b4f4  size 108  kind block
; ======================================================================
  10002b4f4  stp     x20, x19, [sp, #-0x20]!
  10002b4f8  stp     x29, x30, [sp, #0x10]
  10002b4fc  add     x29, sp, #0x10
  10002b500  sub     sp, sp, #0x30
  10002b504  mov     x19, x0
  10002b508  ldr     x0, [x19, #0x20]                         ; x0 = captured [arg1 dragView]
  10002b50c  ldp     d0, d1, [x19, #0x28]
  10002b510  adrp    x8, #0x100417000
  10002b514  nop
  10002b518  ldr     x1, [x8, #0x1f8]
  10002b51c  bl      _objc_msgSend                            ; [[arg1 dragView] setCenter:{d0, d1}]
  10002b520  ldr     x0, [x19, #0x20]                         ; x0 = captured [arg1 dragView]
  10002b524  adrp    x8, #0x1003b0000
  10002b528  ldr     x8, [x8]                                 ; _CGAffineTransformIdentity
  10002b52c  ldr     q0, [x8, #0x20]                          ; q0 = _CGAffineTransformIdentity[+0x20]
  10002b530  str     q0, [sp, #0x20]
  10002b534  ldp     q0, q1, [x8]
  10002b538  stp     q0, q1, [sp]
  10002b53c  adrp    x8, #0x100417000
  10002b540  nop
  10002b544  ldr     x1, [x8, #0x8a8]
  10002b548  mov     x2, sp
  10002b54c  bl      _objc_msgSend                            ; [[arg1 dragView] setTransform:&sp[0x0]]
  10002b550  sub     sp, x29, #0x10
  10002b554  ldp     x29, x30, [sp, #0x10]
  10002b558  ldp     x20, x19, [sp], #0x20
  10002b55c  ret

; ======================================================================
; sub_10002b560
; address 0x10002b560  size 8  kind sub
; ======================================================================
  10002b560  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10002b564  b       _objc_retain

; ======================================================================
; sub_10002b568
; address 0x10002b568  size 8  kind sub
; ======================================================================
  10002b568  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10002b56c  b       _objc_release

; ======================================================================
; -[OBDragDropManager animateOvumReturningToSource:]_block_invoke_3
; address 0x10002b570  size 80  kind block
; ======================================================================
  10002b570  stp     x20, x19, [sp, #-0x20]!
  10002b574  stp     x29, x30, [sp, #0x10]
  10002b578  add     x29, sp, #0x10
  10002b57c  mov     x19, x0
  10002b580  ldr     x0, [x19, #0x20]                         ; x0 = captured [arg1 dragView]
  10002b584  adrp    x8, #0x100417000
  10002b588  nop
  10002b58c  ldr     x1, [x8, #0x1d0]
  10002b590  bl      _objc_msgSend                            ; [[arg1 dragView] removeFromSuperview]
  10002b594  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  10002b598  adrp    x9, #0x10041f000
  10002b59c  ldrsw   x9, [x9, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002b5a0  ldr     x0, [x8, x9]                             ; x0 = self->overlayWindow
  10002b5a4  adrp    x8, #0x100416000
  10002b5a8  nop
  10002b5ac  ldr     x1, [x8, #0xba8]
  10002b5b0  mov     w2, #1
  10002b5b4  ldp     x29, x30, [sp, #0x10]
  10002b5b8  ldp     x20, x19, [sp], #0x20
  10002b5bc  b       _objc_msgSend                            ; [self->overlayWindow setHidden:1]

; ======================================================================
; sub_10002b5c0
; address 0x10002b5c0  size 40  kind sub
; ======================================================================
  10002b5c0  stp     x20, x19, [sp, #-0x20]!
  10002b5c4  stp     x29, x30, [sp, #0x10]
  10002b5c8  add     x29, sp, #0x10
  10002b5cc  mov     x19, x1
  10002b5d0  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10002b5d4  bl      _objc_retain
  10002b5d8  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10002b5dc  ldp     x29, x30, [sp, #0x10]
  10002b5e0  ldp     x20, x19, [sp], #0x20
  10002b5e4  b       _objc_retain

; ======================================================================
; sub_10002b5e8
; address 0x10002b5e8  size 40  kind sub
; ======================================================================
  10002b5e8  stp     x20, x19, [sp, #-0x20]!
  10002b5ec  stp     x29, x30, [sp, #0x10]
  10002b5f0  add     x29, sp, #0x10
  10002b5f4  mov     x19, x0
  10002b5f8  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10002b5fc  bl      _objc_release
  10002b600  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10002b604  ldp     x29, x30, [sp, #0x10]
  10002b608  ldp     x20, x19, [sp], #0x20
  10002b60c  b       _objc_release

; ======================================================================
; -[OBDragDropManager animateOvumDrop:withAnimation:completion:]
; address 0x10002b610  size 388  kind objc
; ======================================================================
  10002b610  stp     x24, x23, [sp, #-0x40]!
  10002b614  stp     x22, x21, [sp, #0x10]
  10002b618  stp     x20, x19, [sp, #0x20]
  10002b61c  stp     x29, x30, [sp, #0x30]
  10002b620  add     x29, sp, #0x30
  10002b624  sub     sp, sp, #0x40
  10002b628  mov     x21, x4
  10002b62c  mov     x20, x3
  10002b630  mov     x22, x0
  10002b634  mov     x0, x2
  10002b638  bl      _objc_retain
  10002b63c  mov     x19, x0
  10002b640  mov     x0, x20
  10002b644  bl      _objc_retain
  10002b648  mov     x20, x0
  10002b64c  mov     x0, x21
  10002b650  bl      _objc_retain
  10002b654  mov     x21, x0
  10002b658  cbz     x20, loc_10002b718                       ; if (arg2 == 0)
  10002b65c  adrp    x8, #0x100417000
  10002b660  nop
  10002b664  ldr     x1, [x8, #0xea8]
  10002b668  mov     x0, x19
  10002b66c  bl      _objc_msgSend                            ; [arg1 dragView]
  10002b670  mov     x29, x29
  10002b674  bl      _objc_retainAutoreleasedReturnValue
  10002b678  mov     x23, x0
  10002b67c  adrp    x8, #0x1003b0000
  10002b680  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10002b684  adrp    x9, #0x10041d000
  10002b688  ldr     x24, [x9, #0xf98]                        ; class UIView
  10002b68c  mov     w9, #-0x3e000000
  10002b690  str     x8, [sp, #8]
  10002b694  stp     w9, wzr, [sp, #0x10]
  10002b698  adr     x8, #0x10002b794                         ; &-[OBDragDropManager animateOvumDrop:withAnimation:completion:]_block_invoke
  10002b69c  nop
  10002b6a0  str     x8, [sp, #0x18]
  10002b6a4  adrp    x8, #0x1003b1000
  10002b6a8  add     x8, x8, #0x390                           ; &d_1003b1390
  10002b6ac  str     x8, [sp, #0x20]
  10002b6b0  mov     x0, x21
  10002b6b4  bl      _objc_retain
  10002b6b8  str     x0, [sp, #0x28]
  10002b6bc  mov     x0, x23
  10002b6c0  bl      _objc_retain
  10002b6c4  mov     x23, x0
  10002b6c8  str     x23, [sp, #0x30]
  10002b6cc  mov     x0, x22
  10002b6d0  bl      _objc_retain
  10002b6d4  str     x0, [sp, #0x38]
  10002b6d8  adrp    x8, #0x100417000
  10002b6dc  nop
  10002b6e0  ldr     x1, [x8, #0x880]
  10002b6e4  fmov    d0, #0.25000000
  10002b6e8  add     x3, sp, #8
  10002b6ec  mov     x0, x24
  10002b6f0  mov     x2, x20
  10002b6f4  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.25 animations:arg2 completion:^{-[OBDragDropManager animateOvumDrop:withAnimation:completion:]_block_invoke captures +0x20=arg3, +0x28=[arg1 dragView], +0x30=self}]
  10002b6f8  ldr     x0, [sp, #0x38]
  10002b6fc  bl      _objc_release
  10002b700  ldr     x0, [sp, #0x30]
  10002b704  bl      _objc_release
  10002b708  ldr     x0, [sp, #0x28]
  10002b70c  bl      _objc_release
  10002b710  mov     x0, x23
  10002b714  bl      _objc_release
loc_10002b718:
  10002b718  mov     x0, x21
  10002b71c  bl      _objc_release
  10002b720  mov     x0, x20
  10002b724  bl      _objc_release
  10002b728  mov     x0, x19
  10002b72c  bl      _objc_release
  10002b730  sub     sp, x29, #0x30
  10002b734  ldp     x29, x30, [sp, #0x30]
  10002b738  ldp     x20, x19, [sp, #0x20]
  10002b73c  ldp     x22, x21, [sp, #0x10]
  10002b740  ldp     x24, x23, [sp], #0x40
  10002b744  ret
  10002b748  mov     x22, x0
  10002b74c  b       loc_10002b774
  10002b750  mov     x22, x0
  10002b754  ldr     x0, [sp, #0x38]
  10002b758  bl      _objc_release
  10002b75c  ldr     x0, [sp, #0x30]
  10002b760  bl      _objc_release
  10002b764  ldr     x0, [sp, #0x28]
  10002b768  bl      _objc_release
  10002b76c  mov     x0, x23
  10002b770  bl      _objc_release
loc_10002b774:
  10002b774  mov     x0, x21
  10002b778  bl      _objc_release
  10002b77c  mov     x0, x20
  10002b780  bl      _objc_release
  10002b784  mov     x0, x19
  10002b788  bl      _objc_release
  10002b78c  mov     x0, x22
  10002b790  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager animateOvumDrop:withAnimation:completion:]_block_invoke
; address 0x10002b794  size 96  kind block
; ======================================================================
  10002b794  stp     x20, x19, [sp, #-0x20]!
  10002b798  stp     x29, x30, [sp, #0x10]
  10002b79c  add     x29, sp, #0x10
  10002b7a0  mov     x19, x0
  10002b7a4  ldr     x0, [x19, #0x20]                         ; x0 = captured arg3
  10002b7a8  cbz     x0, loc_10002b7b4                        ; if (arg3 == 0)
  10002b7ac  ldr     x8, [x0, #0x10]                          ; x8 = arg3[+0x10]
  10002b7b0  blr     x8                                       ; call arg3[+0x10]
loc_10002b7b4:
  10002b7b4  ldr     x0, [x19, #0x28]                         ; x0 = captured [arg1 dragView]
  10002b7b8  adrp    x8, #0x100417000
  10002b7bc  nop
  10002b7c0  ldr     x1, [x8, #0x1d0]
  10002b7c4  bl      _objc_msgSend                            ; [[arg1 dragView] removeFromSuperview]
  10002b7c8  ldr     x8, [x19, #0x30]                         ; x8 = captured self
  10002b7cc  adrp    x9, #0x10041f000
  10002b7d0  ldrsw   x9, [x9, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002b7d4  ldr     x0, [x8, x9]                             ; x0 = self->overlayWindow
  10002b7d8  adrp    x8, #0x100416000
  10002b7dc  nop
  10002b7e0  ldr     x1, [x8, #0xba8]
  10002b7e4  mov     w2, #1
  10002b7e8  ldp     x29, x30, [sp, #0x10]
  10002b7ec  ldp     x20, x19, [sp], #0x20
  10002b7f0  b       _objc_msgSend                            ; [self->overlayWindow setHidden:1]

; ======================================================================
; sub_10002b7f4
; address 0x10002b7f4  size 56  kind sub
; ======================================================================
  10002b7f4  stp     x20, x19, [sp, #-0x20]!
  10002b7f8  stp     x29, x30, [sp, #0x10]
  10002b7fc  add     x29, sp, #0x10
  10002b800  mov     x19, x1
  10002b804  add     x0, x0, #0x20
  10002b808  ldr     x1, [x19, #0x20]                         ; x1 = a1[+0x20]
  10002b80c  mov     w2, #7
  10002b810  bl      __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 7, a3)
  10002b814  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10002b818  bl      _objc_retain
  10002b81c  ldr     x0, [x19, #0x30]                         ; x0 = a1[+0x30]
  10002b820  ldp     x29, x30, [sp, #0x10]
  10002b824  ldp     x20, x19, [sp], #0x20
  10002b828  b       _objc_retain

; ======================================================================
; sub_10002b82c
; address 0x10002b82c  size 48  kind sub
; ======================================================================
  10002b82c  stp     x20, x19, [sp, #-0x20]!
  10002b830  stp     x29, x30, [sp, #0x10]
  10002b834  add     x29, sp, #0x10
  10002b838  mov     x19, x0
  10002b83c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10002b840  bl      _objc_release
  10002b844  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10002b848  bl      _objc_release
  10002b84c  ldr     x0, [x19, #0x30]                         ; x0 = a0[+0x30]
  10002b850  ldp     x29, x30, [sp, #0x10]
  10002b854  ldp     x20, x19, [sp], #0x20
  10002b858  b       _objc_release

; ======================================================================
; -[OBDragDropManager createLongPressDragDropGestureRecognizerWithSource:]
; address 0x10002b85c  size 136  kind objc
; ======================================================================
  10002b85c  stp     x20, x19, [sp, #-0x20]!
  10002b860  stp     x29, x30, [sp, #0x10]
  10002b864  add     x29, sp, #0x10
  10002b868  mov     x20, x0
  10002b86c  mov     x0, x2
  10002b870  bl      _objc_retain
  10002b874  mov     x19, x0
  10002b878  adrp    x8, #0x10041e000
  10002b87c  ldr     x0, [x8, #0xe8]                          ; class OBLongPressDragDropGestureRecognizer
  10002b880  adrp    x8, #0x100417000
  10002b884  nop
  10002b888  ldr     x1, [x8, #0x2e0]
  10002b88c  bl      _objc_msgSend                            ; [OBLongPressDragDropGestureRecognizer class]
  10002b890  mov     x2, x0
  10002b894  adrp    x8, #0x100417000
  10002b898  nop
  10002b89c  ldr     x1, [x8, #0xeb8]
  10002b8a0  mov     x0, x20
  10002b8a4  mov     x3, x19
  10002b8a8  bl      _objc_msgSend                            ; [self createDragDropGestureRecognizerWithClass:[OBLongPressDragDropGestureRecognizer class] source:arg1]
  10002b8ac  mov     x29, x29
  10002b8b0  bl      _objc_retainAutoreleasedReturnValue
  10002b8b4  mov     x20, x0
  10002b8b8  mov     x0, x19
  10002b8bc  bl      _objc_release
  10002b8c0  mov     x0, x20
  10002b8c4  ldp     x29, x30, [sp, #0x10]
  10002b8c8  ldp     x20, x19, [sp], #0x20
  10002b8cc  b       _objc_autoreleaseReturnValue
  10002b8d0  mov     x20, x0
  10002b8d4  mov     x0, x19
  10002b8d8  bl      _objc_release
  10002b8dc  mov     x0, x20
  10002b8e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager createDragDropGestureRecognizerWithClass:source:]
; address 0x10002b8e4  size 240  kind objc
; ======================================================================
  10002b8e4  stp     x22, x21, [sp, #-0x30]!
  10002b8e8  stp     x20, x19, [sp, #0x10]
  10002b8ec  stp     x29, x30, [sp, #0x20]
  10002b8f0  add     x29, sp, #0x20
  10002b8f4  mov     x21, x2
  10002b8f8  mov     x20, x0
  10002b8fc  mov     x0, x3
  10002b900  bl      _objc_retain
  10002b904  mov     x19, x0
  10002b908  adrp    x8, #0x10041e000
  10002b90c  ldr     x0, [x8, #0xf0]                          ; class UIGestureRecognizer
  10002b910  adrp    x8, #0x100417000
  10002b914  nop
  10002b918  ldr     x1, [x8, #0x2e0]
  10002b91c  bl      _objc_msgSend                            ; [UIGestureRecognizer class]
  10002b920  mov     x2, x0
  10002b924  adrp    x8, #0x100417000
  10002b928  nop
  10002b92c  ldr     x1, [x8, #0xec0]
  10002b930  mov     x0, x21
  10002b934  bl      _objc_msgSend                            ; [arg1 isSubclassOfClass:[UIGestureRecognizer class]]
  10002b938  cbz     w0, loc_10002b9a0                        ; if ([arg1 isSubclassOfClass:[UIGestureRecognizer class]] == 0)
  10002b93c  adrp    x8, #0x100416000
  10002b940  nop
  10002b944  ldr     x1, [x8, #0xac8]
  10002b948  mov     x0, x21
  10002b94c  bl      _objc_msgSend                            ; [arg1 alloc]
  10002b950  adrp    x8, #0x100417000
  10002b954  nop
  10002b958  ldr     x3, [x8, #0xec8]
  10002b95c  adrp    x8, #0x100417000
  10002b960  nop
  10002b964  ldr     x1, [x8, #0x638]
  10002b968  mov     x2, x20
  10002b96c  bl      _objc_msgSend                            ; [[arg1 alloc] initWithTarget:self action:@selector(handleOvumGesture:)]
  10002b970  mov     x20, x0
  10002b974  adrp    x8, #0x100417000
  10002b978  nop
  10002b97c  ldr     x1, [x8, #0xed0]
  10002b980  mov     x0, x20
  10002b984  mov     x2, x19
  10002b988  bl      _objc_msgSend                            ; [[[arg1 alloc] initWithTarget:self action:@selector(handleOvumGesture:)] setOvumSource:arg2]
  10002b98c  b       loc_10002b9a4
  10002b990  mov     x21, x0
  10002b994  mov     x0, x20
  10002b998  bl      _objc_release
  10002b99c  b       loc_10002b9c4
loc_10002b9a0:
  10002b9a0  mov     x20, #0
loc_10002b9a4:
  10002b9a4  mov     x0, x19
  10002b9a8  bl      _objc_release
  10002b9ac  mov     x0, x20
  10002b9b0  ldp     x29, x30, [sp, #0x20]
  10002b9b4  ldp     x20, x19, [sp, #0x10]
  10002b9b8  ldp     x22, x21, [sp], #0x30
  10002b9bc  b       _objc_autoreleaseReturnValue
  10002b9c0  mov     x21, x0
loc_10002b9c4:
  10002b9c4  mov     x0, x19
  10002b9c8  bl      _objc_release
  10002b9cc  mov     x0, x21
  10002b9d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager handleOvumGesture:]
; address 0x10002b9d4  size 4724  kind objc
; ======================================================================
  10002b9d4  stp     d15, d14, [sp, #-0xa0]!
  10002b9d8  stp     d13, d12, [sp, #0x10]
  10002b9dc  stp     d11, d10, [sp, #0x20]
  10002b9e0  stp     d9, d8, [sp, #0x30]
  10002b9e4  stp     x28, x27, [sp, #0x40]
  10002b9e8  stp     x26, x25, [sp, #0x50]
  10002b9ec  stp     x24, x23, [sp, #0x60]
  10002b9f0  stp     x22, x21, [sp, #0x70]
  10002b9f4  stp     x20, x19, [sp, #0x80]
  10002b9f8  stp     x29, x30, [sp, #0x90]
  10002b9fc  add     x29, sp, #0x90
  10002ba00  sub     sp, sp, #0x60
  10002ba04  mov     x21, x0
  10002ba08  mov     x0, x2
  10002ba0c  bl      _objc_retain
  10002ba10  mov     x19, x0
  10002ba14  adrp    x8, #0x100417000
  10002ba18  nop
  10002ba1c  ldr     x1, [x8, #0xed8]
  10002ba20  mov     x0, x21
  10002ba24  mov     x2, x19
  10002ba28  bl      _objc_msgSend                            ; [self ovumRecognizerShouldHandleTouch:arg1]
  10002ba2c  tbz     w0, #0, loc_10002c9dc                    ; if (!([self ovumRecognizerShouldHandleTouch:arg1] & 1))
  10002ba30  adrp    x8, #0x100416000
  10002ba34  nop
  10002ba38  ldr     x28, [x8, #0xf18]
  10002ba3c  mov     x0, x19
  10002ba40  mov     x1, x28
  10002ba44  bl      _objc_msgSend                            ; [arg1 view]
  10002ba48  mov     x29, x29
  10002ba4c  bl      _objc_retainAutoreleasedReturnValue
  10002ba50  mov     x20, x0
  10002ba54  adrp    x8, #0x100417000
  10002ba58  nop
  10002ba5c  ldr     x27, [x8, #0x6d0]
  10002ba60  mov     x1, x27
  10002ba64  bl      _objc_msgSend                            ; [[arg1 view] window]
  10002ba68  mov     x29, x29
  10002ba6c  bl      _objc_retainAutoreleasedReturnValue
  10002ba70  mov     x23, x0
  10002ba74  mov     x0, x20
  10002ba78  bl      _objc_release
  10002ba7c  adrp    x8, #0x100417000
  10002ba80  nop
  10002ba84  ldr     x20, [x8, #0xee0]
  10002ba88  mov     x0, x19
  10002ba8c  mov     x1, x20
  10002ba90  mov     x2, x23
  10002ba94  bl      _objc_msgSend                            ; [arg1 locationInView:[[arg1 view] window]]
  10002ba98  mov     v9.16b, v0.16b
  10002ba9c  mov     v8.16b, v1.16b
  10002baa0  adrp    x8, #0x10041f000
  10002baa4  ldrsw   x26, [x8, #0x760]                        ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002baa8  ldr     x2, [x21, x26]                           ; x2 = self->overlayWindow
  10002baac  mov     x0, x19
  10002bab0  mov     x1, x20
  10002bab4  bl      _objc_msgSend                            ; [arg1 locationInView:self->overlayWindow]
  10002bab8  mov     v11.16b, v0.16b
  10002babc  mov     v10.16b, v1.16b
  10002bac0  adrp    x8, #0x10041f000
  10002bac4  adrp    x9, #0x10041f000
  10002bac8  ldrsw   x8, [x8, #0x764]                         ; ivar offset OBDragDropManager.currentLocationInHostWindow (+0x50)
  10002bacc  ldrsw   x9, [x9, #0x768]                         ; ivar offset OBDragDropManager.currentLocationInOverlayWindow (+0x60)
  10002bad0  add     x8, x21, x8
  10002bad4  stp     d9, d8, [x8]
  10002bad8  add     x8, x21, x9
  10002badc  stp     d11, d10, [x8]
  10002bae0  adrp    x8, #0x100416000
  10002bae4  nop
  10002bae8  ldr     x22, [x8, #0xc60]
  10002baec  mov     x0, x19
  10002baf0  mov     x1, x22
  10002baf4  bl      _objc_msgSend                            ; [arg1 state]
  10002baf8  cmp     x0, #1
  10002bafc  b.ne    loc_10002bc9c                            ; if ([arg1 state] != 1)
  10002bb00  mov     x0, x19
  10002bb04  mov     x1, x28
  10002bb08  bl      _objc_msgSend                            ; [arg1 view]
  10002bb0c  str     x23, [sp, #0x30]
  10002bb10  mov     x29, x29
  10002bb14  bl      _objc_retainAutoreleasedReturnValue
  10002bb18  mov     x20, x0
  10002bb1c  adrp    x8, #0x100417000
  10002bb20  nop
  10002bb24  ldr     x1, [x8, #0xee8]
  10002bb28  mov     x0, x19
  10002bb2c  bl      _objc_msgSend                            ; [arg1 ovumSource]
  10002bb30  mov     x29, x29
  10002bb34  bl      _objc_retainAutoreleasedReturnValue
  10002bb38  mov     x23, x0
  10002bb3c  adrp    x8, #0x100417000
  10002bb40  nop
  10002bb44  ldr     x1, [x8, #0xef0]
  10002bb48  mov     x25, #0
  10002bb4c  mov     x2, x20
  10002bb50  str     x20, [sp, #0x28]
  10002bb54  bl      _objc_msgSend                            ; [[arg1 ovumSource] createOvumFromView:[arg1 view]]
  10002bb58  mov     x29, x29
  10002bb5c  bl      _objc_retainAutoreleasedReturnValue
  10002bb60  mov     x20, x0
  10002bb64  adrp    x8, #0x100417000
  10002bb68  nop
  10002bb6c  ldr     x1, [x8, #0xef8]
  10002bb70  mov     x0, x19
  10002bb74  mov     x2, x20
  10002bb78  bl      _objc_msgSend                            ; [arg1 setOvum:[[arg1 ovumSource] createOvumFromView:[arg1 view]]]
  10002bb7c  mov     x0, x20
  10002bb80  bl      _objc_release
  10002bb84  adrp    x8, #0x100417000
  10002bb88  nop
  10002bb8c  ldr     x24, [x8, #0xf00]
  10002bb90  mov     x25, #0
  10002bb94  mov     x0, x19
  10002bb98  mov     x1, x24
  10002bb9c  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bba0  mov     x29, x29
  10002bba4  bl      _objc_retainAutoreleasedReturnValue
  10002bba8  mov     x20, x0
  10002bbac  bl      _objc_release
  10002bbb0  cbz     x20, loc_10002bf94                       ; if ([arg1 ovum] == 0)
  10002bbb4  mov     x25, #0
  10002bbb8  mov     x0, x19
  10002bbbc  mov     x1, x24
  10002bbc0  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bbc4  mov     x29, x29
  10002bbc8  bl      _objc_retainAutoreleasedReturnValue
  10002bbcc  mov     x20, x0
  10002bbd0  adrp    x8, #0x100417000
  10002bbd4  nop
  10002bbd8  ldr     x1, [x8, #0xde0]
  10002bbdc  mov     x2, x23
  10002bbe0  bl      _objc_msgSend                            ; [[arg1 ovum] setSource:[arg1 ovumSource]]
  10002bbe4  mov     x0, x20
  10002bbe8  bl      _objc_release
  10002bbec  mov     x25, #0
  10002bbf0  mov     x0, x19
  10002bbf4  mov     x1, x24
  10002bbf8  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bbfc  mov     x29, x29
  10002bc00  bl      _objc_retainAutoreleasedReturnValue
  10002bc04  mov     x20, x0
  10002bc08  adrp    x8, #0x100417000
  10002bc0c  nop
  10002bc10  ldr     x1, [x8, #0xe78]
  10002bc14  ldr     x2, [sp, #0x28]
  10002bc18  bl      _objc_msgSend                            ; [[arg1 ovum] setCurrentDropHandlingView:[arg1 view]]
  10002bc1c  mov     x0, x20
  10002bc20  bl      _objc_release
  10002bc24  adrp    x8, #0x100417000
  10002bc28  nop
  10002bc2c  ldr     x20, [x8, #0xf08]
  10002bc30  adrp    x8, #0x100417000
  10002bc34  nop
  10002bc38  ldr     x1, [x8, #0xe90]
  10002bc3c  str     x1, [sp, #0x20]
  10002bc40  mov     x25, #0
  10002bc44  mov     x0, x23
  10002bc48  mov     x2, x20
  10002bc4c  bl      _objc_msgSend                            ; [[arg1 ovumSource] respondsToSelector:@selector(createDragRepresentationOfSourceView:inWindow:)]
  10002bc50  cbz     w0, loc_10002c1b4                        ; if ([[arg1 ovumSource] respondsToSelector:@selector(createDragRepresentationOfSourceView:inWindow:)] == 0)
  10002bc54  mov     x25, #0
  10002bc58  mov     x0, x19
  10002bc5c  mov     x1, x28
  10002bc60  bl      _objc_msgSend                            ; [arg1 view]
  10002bc64  mov     x29, x29
  10002bc68  bl      _objc_retainAutoreleasedReturnValue
  10002bc6c  mov     x22, x0
  10002bc70  ldr     x3, [x21, x26]                           ; x3 = self->overlayWindow
  10002bc74  mov     x0, x23
  10002bc78  mov     x1, x20
  10002bc7c  mov     x2, x22
  10002bc80  bl      _objc_msgSend                            ; [[arg1 ovumSource] createDragRepresentationOfSourceView:[arg1 view] inWindow:self->overlayWindow]
  10002bc84  mov     x29, x29
  10002bc88  bl      _objc_retainAutoreleasedReturnValue
  10002bc8c  mov     x25, x0
  10002bc90  mov     x0, x22
  10002bc94  bl      _objc_release
  10002bc98  b       loc_10002c32c
loc_10002bc9c:
  10002bc9c  mov     x0, x19
  10002bca0  mov     x1, x22
  10002bca4  bl      _objc_msgSend                            ; [arg1 state]
  10002bca8  cmp     x0, #2
  10002bcac  b.ne    loc_10002bd4c                            ; if ([arg1 state] != 2)
  10002bcb0  adrp    x8, #0x100417000
  10002bcb4  nop
  10002bcb8  ldr     x1, [x8, #0xf00]
  10002bcbc  mov     x0, x19
  10002bcc0  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bcc4  mov     x29, x29
  10002bcc8  bl      _objc_retainAutoreleasedReturnValue
  10002bccc  mov     x22, x0
  10002bcd0  adrp    x8, #0x100417000
  10002bcd4  nop
  10002bcd8  ldr     x1, [x8, #0xea8]
  10002bcdc  bl      _objc_msgSend                            ; [[arg1 ovum] dragView]
  10002bce0  mov     x29, x29
  10002bce4  bl      _objc_retainAutoreleasedReturnValue
  10002bce8  mov     x20, x0
  10002bcec  adrp    x8, #0x100417000
  10002bcf0  nop
  10002bcf4  ldr     x1, [x8, #0xfa0]
  10002bcf8  mov     x0, x21
  10002bcfc  mov     v0.16b, v11.16b
  10002bd00  mov     v1.16b, v10.16b
  10002bd04  mov     x2, x19
  10002bd08  bl      _objc_msgSend                            ; [self applyRecenteringTo:{[arg1 locationInView:self->overlayWindow].0, [arg1 locationInView:self->overlayWindow].1} withRecognizer:arg1]
  10002bd0c  adrp    x8, #0x100417000
  10002bd10  nop
  10002bd14  ldr     x1, [x8, #0x1f8]
  10002bd18  mov     x0, x20
  10002bd1c  bl      _objc_msgSend                            ; [[[arg1 ovum] dragView] setCenter:{[self applyRecenteringTo:{[arg1 locationInView:self->overlayWindow].0, [arg1 locationInView:self->overlayWindow].1} withRecognizer:arg1].0, [self applyRecenteringTo:{[arg1 locationInView:self->overlayWindow].0, [arg1 locationInView:self->overlayWindow].1} withRecognizer:arg1].1}]
  10002bd20  adrp    x8, #0x100417000
  10002bd24  nop
  10002bd28  ldr     x1, [x8, #0xfa8]
  10002bd2c  mov     x0, x21
  10002bd30  mov     x2, x22
  10002bd34  mov     x3, x23
  10002bd38  mov     v0.16b, v9.16b
  10002bd3c  mov     v1.16b, v8.16b
  10002bd40  bl      _objc_msgSend                            ; [self handleOvumMove:[arg1 ovum] inWindow:[[arg1 view] window] atLocation:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1}]
  10002bd44  mov     x0, x20
  10002bd48  b       loc_10002c9c8
loc_10002bd4c:
  10002bd4c  mov     x0, x19
  10002bd50  mov     x1, x22
  10002bd54  bl      _objc_msgSend                            ; [arg1 state]
  10002bd58  str     x23, [sp, #0x30]
  10002bd5c  cmp     x0, #3
  10002bd60  b.ne    loc_10002bf9c                            ; if ([arg1 state] != 3)
  10002bd64  adrp    x8, #0x100417000
  10002bd68  nop
  10002bd6c  ldr     x24, [x8, #0xf00]
  10002bd70  mov     x0, x19
  10002bd74  mov     x1, x24
  10002bd78  ldr     x23, [sp, #0x30]
  10002bd7c  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bd80  mov     x29, x29
  10002bd84  bl      _objc_retainAutoreleasedReturnValue
  10002bd88  mov     x20, x0
  10002bd8c  adrp    x8, #0x100417000
  10002bd90  nop
  10002bd94  ldr     x25, [x8, #0xe60]
  10002bd98  mov     x1, x25
  10002bd9c  bl      _objc_msgSend                            ; [[arg1 ovum] currentDropHandlingView]
  10002bda0  mov     x29, x29
  10002bda4  bl      _objc_retainAutoreleasedReturnValue
  10002bda8  mov     x23, x0
  10002bdac  bl      _objc_release
  10002bdb0  mov     x0, x20
  10002bdb4  bl      _objc_release
  10002bdb8  cbz     x23, loc_10002bf9c                       ; if ([[arg1 ovum] currentDropHandlingView] == 0)
  10002bdbc  mov     x0, x19
  10002bdc0  mov     x1, x24
  10002bdc4  ldr     x23, [sp, #0x30]
  10002bdc8  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bdcc  mov     x29, x29
  10002bdd0  bl      _objc_retainAutoreleasedReturnValue
  10002bdd4  mov     x22, x0
  10002bdd8  adrp    x8, #0x100417000
  10002bddc  nop
  10002bde0  ldr     x1, [x8, #0xfa8]
  10002bde4  mov     x0, x21
  10002bde8  mov     x2, x22
  10002bdec  mov     x3, x23
  10002bdf0  mov     v0.16b, v9.16b
  10002bdf4  mov     v1.16b, v8.16b
  10002bdf8  bl      _objc_msgSend                            ; [self handleOvumMove:[arg1 ovum] inWindow:[[arg1 view] window] atLocation:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1}]
  10002bdfc  mov     x0, x19
  10002be00  mov     x1, x24
  10002be04  bl      _objc_msgSend                            ; [arg1 ovum]
  10002be08  mov     x29, x29
  10002be0c  bl      _objc_retainAutoreleasedReturnValue
  10002be10  mov     x20, x0
  10002be14  mov     x1, x25
  10002be18  bl      _objc_msgSend                            ; [[arg1 ovum] currentDropHandlingView]
  10002be1c  mov     x29, x29
  10002be20  bl      _objc_retainAutoreleasedReturnValue
  10002be24  mov     x26, x0
  10002be28  adrp    x8, #0x100417000
  10002be2c  nop
  10002be30  ldr     x1, [x8, #0xe18]
  10002be34  bl      _objc_msgSend                            ; [[[arg1 ovum] currentDropHandlingView] dropZoneHandler]
  10002be38  mov     x29, x29
  10002be3c  bl      _objc_retainAutoreleasedReturnValue
  10002be40  mov     x27, x0
  10002be44  mov     x0, x26
  10002be48  bl      _objc_release
  10002be4c  mov     x0, x20
  10002be50  bl      _objc_release
  10002be54  adrp    x8, #0x100417000
  10002be58  nop
  10002be5c  ldr     x26, [x8, #0xfb0]
  10002be60  mov     x0, x22
  10002be64  mov     x1, x26
  10002be68  bl      _objc_msgSend                            ; [[arg1 ovum] dropAction]
  10002be6c  cbz     x0, loc_10002c760                        ; if ([[arg1 ovum] dropAction] == 0)
  10002be70  cbz     x27, loc_10002c760                       ; if ([[[arg1 ovum] currentDropHandlingView] dropZoneHandler] == 0)
  10002be74  adrp    x8, #0x100417000
  10002be78  nop
  10002be7c  ldr     x1, [x8, #0xe50]
  10002be80  mov     x0, x21
  10002be84  mov     x2, x23
  10002be88  mov     v0.16b, v9.16b
  10002be8c  mov     v1.16b, v8.16b
  10002be90  bl      _objc_msgSend                            ; [self findDropZoneHandlerInWindow:[[arg1 view] window] atLocation:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1}]
  10002be94  str     x27, [sp, #0x28]
  10002be98  mov     x29, x29
  10002be9c  bl      _objc_retainAutoreleasedReturnValue
  10002bea0  mov     x9, x0
  10002bea4  str     x9, [sp, #0x20]
  10002bea8  adrp    x8, #0x100417000
  10002beac  nop
  10002beb0  ldr     x1, [x8, #0xe58]
  10002beb4  mov     x0, x23
  10002beb8  mov     v0.16b, v9.16b
  10002bebc  mov     v1.16b, v8.16b
  10002bec0  mov     x2, x9
  10002bec4  bl      _objc_msgSend                            ; [[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[self findDropZoneHandlerInWindow:[[arg1 view] window] atLocation:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1}]]
  10002bec8  mov     v8.16b, v0.16b
  10002becc  mov     v9.16b, v1.16b
  10002bed0  adrp    x8, #0x100417000
  10002bed4  nop
  10002bed8  ldr     x1, [x8, #0xfa0]
  10002bedc  mov     x0, x21
  10002bee0  mov     v0.16b, v11.16b
  10002bee4  mov     v1.16b, v10.16b
  10002bee8  mov     x2, x19
  10002beec  bl      _objc_msgSend                            ; [self applyRecenteringTo:{[arg1 locationInView:self->overlayWindow].0, [arg1 locationInView:self->overlayWindow].1} withRecognizer:arg1]
  10002bef0  mov     v10.16b, v0.16b
  10002bef4  mov     v11.16b, v1.16b
  10002bef8  adrp    x8, #0x100417000
  10002befc  nop
  10002bf00  ldr     x1, [x8, #0xea8]
  10002bf04  mov     x0, x22
  10002bf08  bl      _objc_msgSend                            ; [[arg1 ovum] dragView]
  10002bf0c  bl      _objc_retain
  10002bf10  mov     x27, x0
  10002bf14  adrp    x8, #0x100417000
  10002bf18  nop
  10002bf1c  ldr     x1, [x8, #0x1f8]
  10002bf20  mov     v0.16b, v10.16b
  10002bf24  mov     v1.16b, v11.16b
  10002bf28  bl      _objc_msgSend                            ; [[[arg1 ovum] dragView] setCenter:{[self applyRecenteringTo:{[arg1 locationInView:self->overlayWindow].0, [arg1 locationInView:self->overlayWindow].1} withRecognizer:arg1].0, [self applyRecenteringTo:{[arg1 locationInView:self->overlayWindow].0, [arg1 locationInView:self->overlayWindow].1} withRecognizer:arg1].1}]
  10002bf2c  adrp    x8, #0x100417000
  10002bf30  nop
  10002bf34  ldr     x1, [x8, #0xfb8]
  10002bf38  ldp     x3, x0, [sp, #0x20]
  10002bf3c  mov     x2, x22
  10002bf40  mov     v0.16b, v8.16b
  10002bf44  mov     v1.16b, v9.16b
  10002bf48  bl      _objc_msgSend                            ; [[[[arg1 ovum] currentDropHandlingView] dropZoneHandler] ovumDropped:[arg1 ovum] inView:[self findDropZoneHandlerInWindow:[[arg1 view] window] atLocation:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1}] atLocation:{[[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[self findDropZoneHandlerInWindow:[[arg1 view] window] atLocation:{[arg1 locationInView:[[arg1 view] wind…
  10002bf4c  adrp    x8, #0x100417000
  10002bf50  nop
  10002bf54  ldr     x20, [x8, #0xfc0]
  10002bf58  adrp    x8, #0x100417000
  10002bf5c  nop
  10002bf60  ldr     x28, [x8, #0xe90]
  10002bf64  ldr     x0, [sp, #0x28]
  10002bf68  mov     x1, x28
  10002bf6c  mov     x2, x20
  10002bf70  bl      _objc_msgSend                            ; [[[[arg1 ovum] currentDropHandlingView] dropZoneHandler] respondsToSelector:@selector(handleDropAnimationForOvum:withDragView:dragDropManager:)]
  10002bf74  cbz     w0, loc_10002c7d8                        ; if ([[[[arg1 ovum] currentDropHandlingView] dropZoneHandler] respondsToSelector:@selector(handleDropAnimationForOvum:withDragView:dragDropManager:)] == 0)
  10002bf78  ldr     x0, [sp, #0x28]
  10002bf7c  mov     x1, x20
  10002bf80  mov     x2, x22
  10002bf84  mov     x3, x27
  10002bf88  mov     x4, x21
  10002bf8c  bl      _objc_msgSend                            ; [[[[arg1 ovum] currentDropHandlingView] dropZoneHandler] handleDropAnimationForOvum:[arg1 ovum] withDragView:[[arg1 ovum] dragView] dragDropManager:self]
  10002bf90  b       loc_10002c838
loc_10002bf94:
  10002bf94  mov     x0, x23
  10002bf98  b       loc_10002c74c
loc_10002bf9c:
  10002bf9c  mov     x0, x19
  10002bfa0  mov     x1, x22
  10002bfa4  ldr     x23, [sp, #0x30]
  10002bfa8  bl      _objc_msgSend                            ; [arg1 state]
  10002bfac  cmp     x0, #4
  10002bfb0  b.eq    loc_10002bfc8                            ; if ([arg1 state] == 4)
  10002bfb4  mov     x0, x19
  10002bfb8  mov     x1, x22
  10002bfbc  bl      _objc_msgSend                            ; [arg1 state]
  10002bfc0  cmp     x0, #3
  10002bfc4  b.ne    loc_10002c9d4                            ; if ([arg1 state] != 3)
loc_10002bfc8:
  10002bfc8  adrp    x8, #0x100417000
  10002bfcc  nop
  10002bfd0  ldr     x25, [x8, #0xf00]
  10002bfd4  mov     x0, x19
  10002bfd8  mov     x1, x25
  10002bfdc  bl      _objc_msgSend                            ; [arg1 ovum]
  10002bfe0  mov     x29, x29
  10002bfe4  bl      _objc_retainAutoreleasedReturnValue
  10002bfe8  mov     x22, x0
  10002bfec  adrp    x8, #0x100417000
  10002bff0  nop
  10002bff4  ldr     x1, [x8, #0xfb0]
  10002bff8  bl      _objc_msgSend                            ; [[arg1 ovum] dropAction]
  10002bffc  cbz     x0, loc_10002c018                        ; if ([[arg1 ovum] dropAction] == 0)
  10002c000  adrp    x8, #0x100417000
  10002c004  nop
  10002c008  ldr     x1, [x8, #0xe70]
  10002c00c  mov     x2, #0
  10002c010  mov     x0, x22
  10002c014  bl      _objc_msgSend                            ; [[arg1 ovum] setDropAction:0]
loc_10002c018:
  10002c018  adrp    x8, #0x100417000
  10002c01c  nop
  10002c020  ldr     x1, [x8, #0xe60]
  10002c024  mov     x0, x22
  10002c028  bl      _objc_msgSend                            ; [[arg1 ovum] currentDropHandlingView]
  10002c02c  mov     x29, x29
  10002c030  bl      _objc_retainAutoreleasedReturnValue
  10002c034  mov     x23, x0
  10002c038  adrp    x8, #0x100417000
  10002c03c  nop
  10002c040  ldr     x1, [x8, #0xe58]
  10002c044  ldr     x0, [sp, #0x30]
  10002c048  mov     v0.16b, v9.16b
  10002c04c  mov     v1.16b, v8.16b
  10002c050  mov     x2, x23
  10002c054  bl      _objc_msgSend                            ; [[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[[arg1 ovum] currentDropHandlingView]]
  10002c058  mov     v8.16b, v0.16b
  10002c05c  mov     v9.16b, v1.16b
  10002c060  adrp    x8, #0x100417000
  10002c064  nop
  10002c068  ldr     x1, [x8, #0xe18]
  10002c06c  mov     x0, x23
  10002c070  bl      _objc_msgSend                            ; [[[arg1 ovum] currentDropHandlingView] dropZoneHandler]
  10002c074  bl      _objc_retain
  10002c078  mov     x24, x0
  10002c07c  adrp    x8, #0x100417000
  10002c080  nop
  10002c084  ldr     x1, [x8, #0xe68]
  10002c088  mov     x2, x22
  10002c08c  mov     x3, x23
  10002c090  mov     v0.16b, v8.16b
  10002c094  mov     v1.16b, v9.16b
  10002c098  bl      _objc_msgSend                            ; [[[[arg1 ovum] currentDropHandlingView] dropZoneHandler] ovumExited:[arg1 ovum] inView:[[arg1 ovum] currentDropHandlingView] atLocation:{[[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[[arg1 ovum] currentDropHandlingView]].0, [[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[[arg1 ovum] currentDropHandlingView]].1}]
  10002c09c  adrp    x8, #0x100417000
  10002c0a0  nop
  10002c0a4  ldr     x1, [x8, #0xfd8]
  10002c0a8  mov     x0, x21
  10002c0ac  mov     x2, x22
  10002c0b0  bl      _objc_msgSend                            ; [self animateOvumReturningToSource:[arg1 ovum]]
  10002c0b4  adrp    x8, #0x100417000
  10002c0b8  nop
  10002c0bc  ldr     x1, [x8, #0xfe0]
  10002c0c0  mov     x0, x21
  10002c0c4  mov     x2, x22
  10002c0c8  bl      _objc_msgSend                            ; [self cleanupOvum:[arg1 ovum]]
  10002c0cc  adrp    x8, #0x10041d000
  10002c0d0  ldr     x26, [x8, #0xef8]                        ; class NSDictionary
  10002c0d4  mov     x0, x19
  10002c0d8  mov     x1, x25
  10002c0dc  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c0e0  mov     x29, x29
  10002c0e4  bl      _objc_retainAutoreleasedReturnValue
  10002c0e8  mov     x20, x0
  10002c0ec  adrp    x8, #0x100417000
  10002c0f0  nop
  10002c0f4  ldr     x1, [x8, #0xf90]
  10002c0f8  adrp    x8, #0x1003bb000
  10002c0fc  add     x8, x8, #0xeb0                           ; @"recognizer"
  10002c100  stp     x8, xzr, [sp, #0x10]
  10002c104  adrp    x8, #0x1003bb000
  10002c108  add     x8, x8, #0xe90                           ; @"ovum"
  10002c10c  stp     x8, x19, [sp]
  10002c110  mov     x0, x26
  10002c114  mov     x2, x20
  10002c118  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:[arg1 ovum], @"ovum", arg1, @"recognizer", nil]
  10002c11c  mov     x29, x29
  10002c120  bl      _objc_retainAutoreleasedReturnValue
  10002c124  mov     x25, x0
  10002c128  mov     x0, x20
  10002c12c  bl      _objc_release
  10002c130  adrp    x8, #0x10041d000
  10002c134  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10002c138  adrp    x8, #0x100416000
  10002c13c  nop
  10002c140  ldr     x1, [x8, #0xe88]
  10002c144  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10002c148  mov     x29, x29
  10002c14c  bl      _objc_retainAutoreleasedReturnValue
  10002c150  mov     x20, x0
  10002c154  adrp    x8, #0x100417000
  10002c158  nop
  10002c15c  ldr     x1, [x8, #0xf98]
  10002c160  adrp    x2, #0x1003bb000
  10002c164  add     x2, x2, #0xef0                           ; @"OBDragDropManagerDidEndDrag"
  10002c168  mov     x3, x21
  10002c16c  mov     x4, x25
  10002c170  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"OBDragDropManagerDidEndDrag" object:self userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[arg1 ovum], @"ovum", arg1, @"recognizer", nil]]
  10002c174  mov     x0, x20
  10002c178  bl      _objc_release
  10002c17c  adrp    x8, #0x100417000
  10002c180  nop
  10002c184  ldr     x1, [x8, #0xef8]
  10002c188  mov     x2, #0
  10002c18c  mov     x0, x19
  10002c190  bl      _objc_msgSend                            ; [arg1 setOvum:0]
  10002c194  mov     x0, x25
  10002c198  bl      _objc_release
  10002c19c  mov     x0, x24
  10002c1a0  bl      _objc_release
  10002c1a4  mov     x0, x23
  10002c1a8  bl      _objc_release
  10002c1ac  mov     x0, x22
  10002c1b0  b       loc_10002c754
loc_10002c1b4:
  10002c1b4  adrp    x8, #0x100417000
  10002c1b8  nop
  10002c1bc  ldr     x1, [x8, #0x748]
  10002c1c0  mov     x25, #0
  10002c1c4  ldr     x0, [sp, #0x28]
  10002c1c8  bl      _objc_msgSend                            ; [[arg1 view] bounds]
  10002c1cc  mov     v12.16b, v0.16b
  10002c1d0  mov     v13.16b, v1.16b
  10002c1d4  mov     v14.16b, v2.16b
  10002c1d8  mov     v15.16b, v3.16b
  10002c1dc  mov     x25, #0
  10002c1e0  ldr     x0, [sp, #0x28]
  10002c1e4  mov     x1, x27
  10002c1e8  bl      _objc_msgSend                            ; [[arg1 view] window]
  10002c1ec  mov     x2, x0
  10002c1f0  adrp    x8, #0x100417000
  10002c1f4  nop
  10002c1f8  ldr     x1, [x8, #0xf10]
  10002c1fc  ldr     x22, [sp, #0x28]
  10002c200  mov     x0, x22
  10002c204  mov     v0.16b, v12.16b
  10002c208  mov     v1.16b, v13.16b
  10002c20c  mov     v2.16b, v14.16b
  10002c210  mov     v3.16b, v15.16b
  10002c214  bl      _objc_msgSend                            ; [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]]
  10002c218  mov     v12.16b, v0.16b
  10002c21c  mov     v13.16b, v1.16b
  10002c220  mov     v14.16b, v2.16b
  10002c224  mov     v15.16b, v3.16b
  10002c228  ldr     x20, [x21, x26]                          ; x20 = self->overlayWindow
  10002c22c  mov     x25, #0
  10002c230  mov     x0, x22
  10002c234  mov     x1, x27
  10002c238  bl      _objc_msgSend                            ; [[arg1 view] window]
  10002c23c  mov     x2, x0
  10002c240  adrp    x8, #0x100417000
  10002c244  nop
  10002c248  ldr     x1, [x8, #0xf18]
  10002c24c  mov     x0, x20
  10002c250  mov     v0.16b, v12.16b
  10002c254  mov     v1.16b, v13.16b
  10002c258  mov     v2.16b, v14.16b
  10002c25c  mov     v3.16b, v15.16b
  10002c260  bl      _objc_msgSend                            ; [self->overlayWindow convertRect:{[[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].0, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].1, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].2, [[ar…
  10002c264  mov     v12.16b, v0.16b
  10002c268  mov     v13.16b, v1.16b
  10002c26c  mov     v14.16b, v2.16b
  10002c270  mov     v15.16b, v3.16b
  10002c274  adrp    x8, #0x10041d000
  10002c278  ldr     x0, [x8, #0xf98]                         ; class UIView
  10002c27c  adrp    x8, #0x100416000
  10002c280  nop
  10002c284  ldr     x1, [x8, #0xac8]
  10002c288  mov     x25, #0
  10002c28c  bl      _objc_msgSend                            ; [UIView alloc]
  10002c290  adrp    x8, #0x100417000
  10002c294  nop
  10002c298  ldr     x1, [x8, #0x178]
  10002c29c  mov     x25, #0
  10002c2a0  mov     v0.16b, v12.16b
  10002c2a4  mov     v1.16b, v13.16b
  10002c2a8  mov     v2.16b, v14.16b
  10002c2ac  mov     v3.16b, v15.16b
  10002c2b0  bl      _objc_msgSend                            ; [[UIView alloc] initWithFrame:{[self->overlayWindow convertRect:{[[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].0, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].1, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toVie…
  10002c2b4  mov     x20, x0
  10002c2b8  mov     x25, x20
  10002c2bc  adrp    x8, #0x100417000
  10002c2c0  nop
  10002c2c4  ldr     x1, [x8, #0xf20]
  10002c2c8  mov     w2, #0
  10002c2cc  mov     x0, x20
  10002c2d0  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{[self->overlayWindow convertRect:{[[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].0, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].1, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toVi…
  10002c2d4  mov     x25, x20
  10002c2d8  adrp    x8, #0x10041d000
  10002c2dc  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  10002c2e0  adrp    x8, #0x100417000
  10002c2e4  nop
  10002c2e8  ldr     x1, [x8, #0xf28]
  10002c2ec  adrp    x8, #0x100181000
  10002c2f0  ldr     d1, [x8, #0xad8]                         ; d1 = 0.33
  10002c2f4  fmov    d0, #1.00000000
  10002c2f8  bl      _objc_msgSend                            ; [UIColor colorWithWhite:1 alpha:0.33]
  10002c2fc  mov     x29, x29
  10002c300  bl      _objc_retainAutoreleasedReturnValue
  10002c304  mov     x22, x0
  10002c308  adrp    x8, #0x100417000
  10002c30c  nop
  10002c310  ldr     x1, [x8, #0x188]
  10002c314  mov     x0, x20
  10002c318  mov     x2, x22
  10002c31c  bl      _objc_msgSend                            ; [[[UIView alloc] initWithFrame:{[self->overlayWindow convertRect:{[[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].0, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toView:[[arg1 view] window]].1, [[arg1 view] convertRect:{[[arg1 view] bounds].0, [[arg1 view] bounds].1, [[arg1 view] bounds].2, [[arg1 view] bounds].3} toVi…
  10002c320  mov     x0, x22
  10002c324  bl      _objc_release
  10002c328  mov     x25, x20
loc_10002c32c:
  10002c32c  ldr     x0, [x21, x26]                           ; x0 = self->overlayWindow
  10002c330  adrp    x8, #0x100416000
  10002c334  nop
  10002c338  ldr     x1, [x8, #0xba8]
  10002c33c  mov     w2, #0
  10002c340  bl      _objc_msgSend                            ; [self->overlayWindow setHidden:0]
  10002c344  ldr     x0, [x21, x26]                           ; x0 = self->overlayWindow
  10002c348  adrp    x8, #0x100416000
  10002c34c  nop
  10002c350  ldr     x1, [x8, #0xf20]
  10002c354  mov     x2, x25
  10002c358  bl      _objc_msgSend                            ; [self->overlayWindow addSubview:x2]
  10002c35c  mov     x0, x19
  10002c360  mov     x1, x24
  10002c364  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c368  mov     x29, x29
  10002c36c  bl      _objc_retainAutoreleasedReturnValue
  10002c370  mov     x20, x0
  10002c374  adrp    x8, #0x100417000
  10002c378  nop
  10002c37c  ldr     x1, [x8, #0xf30]
  10002c380  mov     x2, x25
  10002c384  bl      _objc_msgSend                            ; [[arg1 ovum] setDragView:x2]
  10002c388  mov     x0, x20
  10002c38c  bl      _objc_release
  10002c390  mov     x0, x19
  10002c394  mov     x1, x24
  10002c398  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c39c  mov     x29, x29
  10002c3a0  bl      _objc_retainAutoreleasedReturnValue
  10002c3a4  mov     x20, x0
  10002c3a8  adrp    x8, #0x100417000
  10002c3ac  nop
  10002c3b0  ldr     x27, [x8, #0x688]
  10002c3b4  mov     x0, x25
  10002c3b8  mov     x1, x27
  10002c3bc  bl      _objc_msgSend                            ; [x0 center]
  10002c3c0  adrp    x8, #0x100417000
  10002c3c4  nop
  10002c3c8  ldr     x1, [x8, #0xf38]
  10002c3cc  mov     x0, x20
  10002c3d0  bl      _objc_msgSend                            ; [[arg1 ovum] setDragViewInitialCenter:{[x0 center].0, [x0 center].1}]
  10002c3d4  mov     x0, x20
  10002c3d8  bl      _objc_release
  10002c3dc  mov     x0, x19
  10002c3e0  mov     x1, x24
  10002c3e4  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c3e8  mov     x29, x29
  10002c3ec  bl      _objc_retainAutoreleasedReturnValue
  10002c3f0  mov     x20, x0
  10002c3f4  adrp    x8, #0x100417000
  10002c3f8  nop
  10002c3fc  ldr     x28, [x8, #0xf40]
  10002c400  mov     x1, x28
  10002c404  bl      _objc_msgSend                            ; [[arg1 ovum] isCentered]
  10002c408  mov     x22, x0
  10002c40c  mov     x0, x20
  10002c410  bl      _objc_release
  10002c414  tbnz    w22, #0, loc_10002c45c                   ; if (([[arg1 ovum] isCentered] & 1))
  10002c418  mov     x0, x25
  10002c41c  mov     x1, x27
  10002c420  bl      _objc_msgSend                            ; [x0 center]
  10002c424  mov     v12.16b, v0.16b
  10002c428  mov     x0, x25
  10002c42c  mov     x1, x27
  10002c430  bl      _objc_msgSend                            ; [x0 center]
  10002c434  mov     v13.16b, v1.16b
  10002c438  mov     x0, x19
  10002c43c  mov     x1, x24
  10002c440  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c444  fsub    d0, d11, d12
  10002c448  fsub    d1, d10, d13
  10002c44c  adrp    x8, #0x100417000
  10002c450  nop
  10002c454  ldr     x1, [x8, #0xf48]
  10002c458  bl      _objc_msgSend                            ; [[arg1 ovum] setOffsetOvumAndTouch:{([arg1 locationInView:self->overlayWindow].0 - [x0 center].0), ([arg1 locationInView:self->overlayWindow].1 - [x0 center].1)}]
loc_10002c45c:
  10002c45c  mov     x0, x19
  10002c460  mov     x1, x24
  10002c464  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c468  mov     x29, x29
  10002c46c  bl      _objc_retainAutoreleasedReturnValue
  10002c470  mov     x20, x0
  10002c474  adrp    x8, #0x100417000
  10002c478  nop
  10002c47c  ldr     x1, [x8, #0xf50]
  10002c480  bl      _objc_msgSend                            ; [[arg1 ovum] shouldScale]
  10002c484  mov     x22, x0
  10002c488  mov     x0, x20
  10002c48c  bl      _objc_release
  10002c490  cbz     w22, loc_10002c584                       ; if ([[arg1 ovum] shouldScale] == 0)
  10002c494  mov     x0, x19
  10002c498  mov     x1, x24
  10002c49c  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c4a0  mov     x29, x29
  10002c4a4  bl      _objc_retainAutoreleasedReturnValue
  10002c4a8  mov     x20, x0
  10002c4ac  adrp    x8, #0x100417000
  10002c4b0  nop
  10002c4b4  ldr     x1, [x8, #0xf58]
  10002c4b8  movi    v0.16b, #0
  10002c4bc  movi    v1.16b, #0
  10002c4c0  bl      _objc_msgSend                            ; [[arg1 ovum] setShiftPinchCentroid:{0, 0}]
  10002c4c4  mov     x0, x20
  10002c4c8  bl      _objc_release
  10002c4cc  adrp    x8, #0x10041f000
  10002c4d0  ldrsw   x8, [x8, #0x76c]                         ; ivar offset OBDragDropManager.prevPinchCentroid (+0x10)
  10002c4d4  add     x8, x21, x8
  10002c4d8  stp     d11, d10, [x8]
  10002c4dc  adrp    x8, #0x100417000
  10002c4e0  nop
  10002c4e4  ldr     x20, [x8, #0xf60]
  10002c4e8  mov     x0, x19
  10002c4ec  mov     x1, x20
  10002c4f0  bl      _objc_msgSend                            ; [arg1 numberOfTouches]
  10002c4f4  adrp    x8, #0x10041f000
  10002c4f8  ldrsw   x8, [x8, #0x770]                         ; ivar offset OBDragDropManager.prevNumberOfTouches (+0x8)
  10002c4fc  str     x0, [x21, x8]                            ; self->prevNumberOfTouches = [arg1 numberOfTouches]
  10002c500  adrp    x8, #0x100416000
  10002c504  nop
  10002c508  ldr     x1, [x8, #0xf38]
  10002c50c  mov     x0, x25
  10002c510  bl      _objc_msgSend                            ; [x0 frame]
  10002c514  adrp    x8, #0x10041f000
  10002c518  ldrsw   x8, [x8, #0x774]                         ; ivar offset OBDragDropManager.initialFrame (+0x28)
  10002c51c  add     x8, x21, x8
  10002c520  stp     d0, d1, [x8]
  10002c524  stp     d2, d3, [x8, #0x10]
  10002c528  mov     x0, x19
  10002c52c  mov     x1, x20
  10002c530  bl      _objc_msgSend                            ; [arg1 numberOfTouches]
  10002c534  cbz     x0, loc_10002c584                        ; if ([arg1 numberOfTouches] == 0)
  10002c538  adrp    x8, #0x100417000
  10002c53c  nop
  10002c540  ldr     x1, [x8, #0xf68]
  10002c544  mov     x2, #0
  10002c548  mov     x0, x19
  10002c54c  ldr     x3, [sp, #0x30]
  10002c550  bl      _objc_msgSend                            ; [arg1 locationOfTouch:0 inView:[[arg1 view] window]]
  10002c554  mov     v2.16b, v0.16b
  10002c558  mov     v3.16b, v1.16b
  10002c55c  adrp    x8, #0x100417000
  10002c560  nop
  10002c564  ldr     x1, [x8, #0xf70]
  10002c568  mov     x0, x21
  10002c56c  mov     v0.16b, v9.16b
  10002c570  mov     v1.16b, v8.16b
  10002c574  bl      _objc_msgSend                            ; [self distanceFrom:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} to:{[arg1 locationOfTouch:0 inView:[[arg1 view] window]].0, [arg1 locationOfTouch:0 inView:[[arg1 view] window]].1}]
  10002c578  adrp    x8, #0x10041f000
  10002c57c  ldrsw   x8, [x8, #0x778]                         ; ivar offset OBDragDropManager.initialDistance (+0x20)
  10002c580  str     d0, [x21, x8]                            ; self->initialDistance = [self distanceFrom:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} to:{[arg1 locationOfTouch:0 inView:[[arg1 view] window]].0, [arg1 locationOfTouch:0 inView:[[arg1 view] window]].1}]
loc_10002c584:
  10002c584  mov     x0, x19
  10002c588  mov     x1, x24
  10002c58c  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c590  mov     x29, x29
  10002c594  bl      _objc_retainAutoreleasedReturnValue
  10002c598  mov     x20, x0
  10002c59c  adrp    x8, #0x100417000
  10002c5a0  nop
  10002c5a4  ldr     x1, [x8, #0xf78]
  10002c5a8  fmov    d0, #1.00000000
  10002c5ac  bl      _objc_msgSend                            ; [[arg1 ovum] setScale:1]
  10002c5b0  mov     x0, x20
  10002c5b4  bl      _objc_release
  10002c5b8  adrp    x8, #0x100417000
  10002c5bc  nop
  10002c5c0  ldr     x20, [x8, #0xf80]
  10002c5c4  mov     x0, x23
  10002c5c8  ldr     x1, [sp, #0x20]
  10002c5cc  mov     x2, x20
  10002c5d0  bl      _objc_msgSend                            ; [[arg1 ovumSource] respondsToSelector:@selector(dragViewWillAppear:inWindow:atLocation:)]
  10002c5d4  cbz     w0, loc_10002c638                        ; if ([[arg1 ovumSource] respondsToSelector:@selector(dragViewWillAppear:inWindow:atLocation:)] == 0)
  10002c5d8  ldr     x26, [x21, x26]                          ; x26 = self->overlayWindow
  10002c5dc  mov     x0, x19
  10002c5e0  mov     x1, x24
  10002c5e4  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c5e8  mov     x29, x29
  10002c5ec  bl      _objc_retainAutoreleasedReturnValue
  10002c5f0  mov     x22, x0
  10002c5f4  mov     x1, x28
  10002c5f8  bl      _objc_msgSend                            ; [[arg1 ovum] isCentered]
  10002c5fc  tbnz    w0, #0, loc_10002c614                    ; if (([[arg1 ovum] isCentered] & 1))
  10002c600  mov     x0, x25
  10002c604  mov     x1, x27
  10002c608  bl      _objc_msgSend                            ; [x0 center]
  10002c60c  mov     v11.16b, v0.16b
  10002c610  mov     v10.16b, v1.16b
loc_10002c614:
  10002c614  mov     x0, x23
  10002c618  mov     x1, x20
  10002c61c  mov     x2, x25
  10002c620  mov     x3, x26
  10002c624  mov     v0.16b, v11.16b
  10002c628  mov     v1.16b, v10.16b
  10002c62c  bl      _objc_msgSend                            ; [[arg1 ovumSource] dragViewWillAppear:x2 inWindow:self->overlayWindow atLocation:{d0, d1}]
  10002c630  mov     x0, x22
  10002c634  bl      _objc_release
loc_10002c638:
  10002c638  adrp    x8, #0x100417000
  10002c63c  nop
  10002c640  ldr     x20, [x8, #0xf88]
  10002c644  mov     x0, x23
  10002c648  ldr     x1, [sp, #0x20]
  10002c64c  mov     x2, x20
  10002c650  bl      _objc_msgSend                            ; [[arg1 ovumSource] respondsToSelector:@selector(ovumDragWillBegin:)]
  10002c654  cbz     w0, loc_10002c688                        ; if ([[arg1 ovumSource] respondsToSelector:@selector(ovumDragWillBegin:)] == 0)
  10002c658  mov     x0, x19
  10002c65c  mov     x1, x24
  10002c660  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c664  mov     x29, x29
  10002c668  bl      _objc_retainAutoreleasedReturnValue
  10002c66c  mov     x22, x0
  10002c670  mov     x0, x23
  10002c674  mov     x1, x20
  10002c678  mov     x2, x22
  10002c67c  bl      _objc_msgSend                            ; [[arg1 ovumSource] ovumDragWillBegin:[arg1 ovum]]
  10002c680  mov     x0, x22
  10002c684  bl      _objc_release
loc_10002c688:
  10002c688  adrp    x8, #0x10041d000
  10002c68c  ldr     x20, [x8, #0xef8]                        ; class NSDictionary
  10002c690  mov     x0, x19
  10002c694  mov     x1, x24
  10002c698  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c69c  mov     x29, x29
  10002c6a0  bl      _objc_retainAutoreleasedReturnValue
  10002c6a4  mov     x22, x0
  10002c6a8  adrp    x8, #0x100417000
  10002c6ac  nop
  10002c6b0  ldr     x1, [x8, #0xf90]
  10002c6b4  adrp    x8, #0x1003bb000
  10002c6b8  add     x8, x8, #0xeb0                           ; @"recognizer"
  10002c6bc  stp     x8, xzr, [sp, #0x10]
  10002c6c0  adrp    x8, #0x1003bb000
  10002c6c4  add     x8, x8, #0xe90                           ; @"ovum"
  10002c6c8  stp     x8, x19, [sp]
  10002c6cc  mov     x0, x20
  10002c6d0  mov     x2, x22
  10002c6d4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:[arg1 ovum], @"ovum", arg1, @"recognizer", nil]
  10002c6d8  mov     x29, x29
  10002c6dc  bl      _objc_retainAutoreleasedReturnValue
  10002c6e0  mov     x20, x0
  10002c6e4  mov     x0, x22
  10002c6e8  bl      _objc_release
  10002c6ec  adrp    x8, #0x10041d000
  10002c6f0  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10002c6f4  adrp    x8, #0x100416000
  10002c6f8  nop
  10002c6fc  ldr     x1, [x8, #0xe88]
  10002c700  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10002c704  mov     x29, x29
  10002c708  bl      _objc_retainAutoreleasedReturnValue
  10002c70c  mov     x22, x0
  10002c710  adrp    x8, #0x100417000
  10002c714  nop
  10002c718  ldr     x1, [x8, #0xf98]
  10002c71c  adrp    x2, #0x1003bb000
  10002c720  add     x2, x2, #0xed0                           ; @"OBDragDropManagerWillBeginDrag"
  10002c724  mov     x3, x21
  10002c728  mov     x4, x20
  10002c72c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"OBDragDropManagerWillBeginDrag" object:self userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[arg1 ovum], @"ovum", arg1, @"recognizer", nil]]
  10002c730  mov     x0, x22
  10002c734  bl      _objc_release
  10002c738  mov     x0, x20
  10002c73c  bl      _objc_release
  10002c740  mov     x0, x23
  10002c744  bl      _objc_release
  10002c748  mov     x0, x25
loc_10002c74c:
  10002c74c  bl      _objc_release
  10002c750  ldr     x0, [sp, #0x28]
loc_10002c754:
  10002c754  bl      _objc_release
  10002c758  ldr     x23, [sp, #0x30]
  10002c75c  b       loc_10002c9d4
loc_10002c760:
  10002c760  mov     x0, x22
  10002c764  mov     x1, x25
  10002c768  bl      _objc_msgSend                            ; [[arg1 ovum] currentDropHandlingView]
  10002c76c  mov     x29, x29
  10002c770  bl      _objc_retainAutoreleasedReturnValue
  10002c774  mov     x20, x0
  10002c778  adrp    x8, #0x100417000
  10002c77c  nop
  10002c780  ldr     x1, [x8, #0xe58]
  10002c784  mov     x0, x23
  10002c788  mov     v0.16b, v9.16b
  10002c78c  mov     v1.16b, v8.16b
  10002c790  mov     x2, x20
  10002c794  bl      _objc_msgSend                            ; [[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[[arg1 ovum] currentDropHandlingView]]
  10002c798  adrp    x8, #0x100417000
  10002c79c  nop
  10002c7a0  ldr     x1, [x8, #0xe68]
  10002c7a4  mov     x0, x27
  10002c7a8  mov     x2, x22
  10002c7ac  mov     x3, x20
  10002c7b0  bl      _objc_msgSend                            ; [[[[arg1 ovum] currentDropHandlingView] dropZoneHandler] ovumExited:[arg1 ovum] inView:[[arg1 ovum] currentDropHandlingView] atLocation:{[[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[[arg1 ovum] currentDropHandlingView]].0, [[[arg1 view] window] convertPoint:{[arg1 locationInView:[[arg1 view] window]].0, [arg1 locationInView:[[arg1 view] window]].1} toView:[[arg1 ovum] currentDropHandlingView]].1}]
  10002c7b4  adrp    x8, #0x100417000
  10002c7b8  nop
  10002c7bc  ldr     x1, [x8, #0xfd8]
  10002c7c0  mov     x0, x21
  10002c7c4  mov     x2, x22
  10002c7c8  bl      _objc_msgSend                            ; [self animateOvumReturningToSource:[arg1 ovum]]
  10002c7cc  mov     x0, x20
  10002c7d0  bl      _objc_release
  10002c7d4  b       loc_10002c8dc
loc_10002c7d8:
  10002c7d8  adrp    x8, #0x1003b0000
  10002c7dc  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10002c7e0  mov     w9, #-0x3e000000
  10002c7e4  str     x8, [sp, #0x38]
  10002c7e8  stp     w9, wzr, [sp, #0x40]
  10002c7ec  adr     x8, #0x10002cc48                         ; &-[OBDragDropManager handleOvumGesture:]_block_invoke
  10002c7f0  nop
  10002c7f4  str     x8, [sp, #0x48]
  10002c7f8  adrp    x8, #0x1003b1000
  10002c7fc  add     x8, x8, #0x3c0                           ; &d_1003b13c0
  10002c800  str     x8, [sp, #0x50]
  10002c804  mov     x0, x27
  10002c808  bl      _objc_retain
  10002c80c  str     x0, [sp, #0x58]
  10002c810  adrp    x8, #0x100417000
  10002c814  nop
  10002c818  ldr     x1, [x8, #0xfc8]
  10002c81c  add     x3, sp, #0x38
  10002c820  mov     x0, x21
  10002c824  mov     x2, x22
  10002c828  mov     x4, #0
  10002c82c  bl      _objc_msgSend                            ; [self animateOvumDrop:[arg1 ovum] withAnimation:^{-[OBDragDropManager handleOvumGesture:]_block_invoke captures +0x20=[[arg1 ovum] dragView]} completion:0]
  10002c830  ldr     x0, [sp, #0x58]
  10002c834  bl      _objc_release
loc_10002c838:
  10002c838  adrp    x8, #0x100417000
  10002c83c  nop
  10002c840  ldr     x25, [x8, #0xe98]
  10002c844  mov     x0, x22
  10002c848  mov     x1, x25
  10002c84c  bl      _objc_msgSend                            ; [[arg1 ovum] source]
  10002c850  mov     x29, x29
  10002c854  bl      _objc_retainAutoreleasedReturnValue
  10002c858  mov     x23, x0
  10002c85c  adrp    x8, #0x100417000
  10002c860  nop
  10002c864  ldr     x20, [x8, #0xfd0]
  10002c868  mov     x1, x28
  10002c86c  mov     x2, x20
  10002c870  bl      _objc_msgSend                            ; [[[arg1 ovum] source] respondsToSelector:@selector(ovumWasDropped:withDropAction:)]
  10002c874  mov     x28, x0
  10002c878  mov     x0, x23
  10002c87c  bl      _objc_release
  10002c880  ldr     x23, [sp, #0x30]
  10002c884  cbz     w28, loc_10002c8c8                       ; if ([[[arg1 ovum] source] respondsToSelector:@selector(ovumWasDropped:withDropAction:)] == 0)
  10002c888  mov     x0, x22
  10002c88c  mov     x1, x25
  10002c890  bl      _objc_msgSend                            ; [[arg1 ovum] source]
  10002c894  mov     x29, x29
  10002c898  bl      _objc_retainAutoreleasedReturnValue
  10002c89c  mov     x25, x0
  10002c8a0  mov     x0, x22
  10002c8a4  mov     x1, x26
  10002c8a8  bl      _objc_msgSend                            ; [[arg1 ovum] dropAction]
  10002c8ac  mov     x3, x0
  10002c8b0  mov     x0, x25
  10002c8b4  mov     x1, x20
  10002c8b8  mov     x2, x22
  10002c8bc  bl      _objc_msgSend                            ; [[[arg1 ovum] source] ovumWasDropped:[arg1 ovum] withDropAction:[[arg1 ovum] dropAction]]
  10002c8c0  mov     x0, x25
  10002c8c4  bl      _objc_release
loc_10002c8c8:
  10002c8c8  mov     x0, x27
  10002c8cc  bl      _objc_release
  10002c8d0  ldr     x0, [sp, #0x20]
  10002c8d4  bl      _objc_release
  10002c8d8  ldr     x27, [sp, #0x28]
loc_10002c8dc:
  10002c8dc  adrp    x8, #0x100417000
  10002c8e0  nop
  10002c8e4  ldr     x1, [x8, #0xfe0]
  10002c8e8  mov     x0, x21
  10002c8ec  mov     x2, x22
  10002c8f0  bl      _objc_msgSend                            ; [self cleanupOvum:[arg1 ovum]]
  10002c8f4  adrp    x8, #0x10041d000
  10002c8f8  ldr     x25, [x8, #0xef8]                        ; class NSDictionary
  10002c8fc  mov     x0, x19
  10002c900  mov     x1, x24
  10002c904  bl      _objc_msgSend                            ; [arg1 ovum]
  10002c908  mov     x29, x29
  10002c90c  bl      _objc_retainAutoreleasedReturnValue
  10002c910  mov     x20, x0
  10002c914  adrp    x8, #0x100417000
  10002c918  nop
  10002c91c  ldr     x1, [x8, #0xf90]
  10002c920  adrp    x8, #0x1003bb000
  10002c924  add     x8, x8, #0xeb0                           ; @"recognizer"
  10002c928  stp     x8, xzr, [sp, #0x10]
  10002c92c  adrp    x8, #0x1003bb000
  10002c930  add     x8, x8, #0xe90                           ; @"ovum"
  10002c934  stp     x8, x19, [sp]
  10002c938  mov     x0, x25
  10002c93c  mov     x2, x20
  10002c940  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:[arg1 ovum], @"ovum", arg1, @"recognizer", nil]
  10002c944  mov     x29, x29
  10002c948  bl      _objc_retainAutoreleasedReturnValue
  10002c94c  mov     x24, x0
  10002c950  mov     x0, x20
  10002c954  bl      _objc_release
  10002c958  adrp    x8, #0x10041d000
  10002c95c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10002c960  adrp    x8, #0x100416000
  10002c964  nop
  10002c968  ldr     x1, [x8, #0xe88]
  10002c96c  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10002c970  mov     x29, x29
  10002c974  bl      _objc_retainAutoreleasedReturnValue
  10002c978  mov     x20, x0
  10002c97c  adrp    x8, #0x100417000
  10002c980  nop
  10002c984  ldr     x1, [x8, #0xf98]
  10002c988  adrp    x2, #0x1003bb000
  10002c98c  add     x2, x2, #0xef0                           ; @"OBDragDropManagerDidEndDrag"
  10002c990  mov     x3, x21
  10002c994  mov     x4, x24
  10002c998  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"OBDragDropManagerDidEndDrag" object:self userInfo:[NSDictionary dictionaryWithObjectsAndKeys:[arg1 ovum], @"ovum", arg1, @"recognizer", nil]]
  10002c99c  mov     x0, x20
  10002c9a0  bl      _objc_release
  10002c9a4  adrp    x8, #0x100417000
  10002c9a8  nop
  10002c9ac  ldr     x1, [x8, #0xef8]
  10002c9b0  mov     x2, #0
  10002c9b4  mov     x0, x19
  10002c9b8  bl      _objc_msgSend                            ; [arg1 setOvum:0]
  10002c9bc  mov     x0, x24
  10002c9c0  bl      _objc_release
  10002c9c4  mov     x0, x27
loc_10002c9c8:
  10002c9c8  bl      _objc_release
  10002c9cc  mov     x0, x22
  10002c9d0  bl      _objc_release
loc_10002c9d4:
  10002c9d4  mov     x0, x23
  10002c9d8  bl      _objc_release
loc_10002c9dc:
  10002c9dc  mov     x0, x19
  10002c9e0  bl      _objc_release
  10002c9e4  sub     sp, x29, #0x90
  10002c9e8  ldp     x29, x30, [sp, #0x90]
  10002c9ec  ldp     x20, x19, [sp, #0x80]
  10002c9f0  ldp     x22, x21, [sp, #0x70]
  10002c9f4  ldp     x24, x23, [sp, #0x60]
  10002c9f8  ldp     x26, x25, [sp, #0x50]
  10002c9fc  ldp     x28, x27, [sp, #0x40]
  10002ca00  ldp     d9, d8, [sp, #0x30]
  10002ca04  ldp     d11, d10, [sp, #0x20]
  10002ca08  ldp     d13, d12, [sp, #0x10]
  10002ca0c  ldp     d15, d14, [sp], #0xa0
  10002ca10  ret
loc_10002ca14:
  10002ca14  mov     x21, x0
  10002ca18  b       loc_10002cb38
  10002ca1c  str     x23, [sp, #0x30]
  10002ca20  mov     x21, x0
  10002ca24  b       loc_10002cc00
  10002ca28  mov     x21, x0
  10002ca2c  b       loc_10002cc08
  10002ca30  mov     x21, x0
  10002ca34  mov     x0, x20
  10002ca38  b       loc_10002cc04
  10002ca3c  str     x23, [sp, #0x30]
loc_10002ca40:
  10002ca40  mov     x21, x0
loc_10002ca44:
  10002ca44  mov     x0, x20
  10002ca48  b       loc_10002cbf4
  10002ca4c  b       loc_10002cb20
  10002ca50  mov     x21, x0
  10002ca54  b       loc_10002cb80
  10002ca58  str     x20, [sp, #0x28]
  10002ca5c  mov     x21, x0
  10002ca60  b       loc_10002cb48
  10002ca64  b       loc_10002ca78
  10002ca68  b       loc_10002cb2c
  10002ca6c  mov     x21, x0
  10002ca70  b       loc_10002cbf8
  10002ca74  b       loc_10002ca78
loc_10002ca78:
  10002ca78  mov     x21, x0
loc_10002ca7c:
  10002ca7c  mov     x0, x20
  10002ca80  b       loc_10002cb3c
  10002ca84  stp     x27, x23, [sp, #0x28]
  10002ca88  mov     x21, x0
  10002ca8c  b       loc_10002cbf0
  10002ca90  b       loc_10002cb20
  10002ca94  b       loc_10002cb20
  10002ca98  b       loc_10002cb20
  10002ca9c  b       loc_10002cb20
  10002caa0  b       loc_10002cb2c
  10002caa4  b       loc_10002cb20
  10002caa8  mov     x21, x0
  10002caac  mov     x0, x22
  10002cab0  bl      _objc_release
  10002cab4  b       loc_10002cb24
  10002cab8  mov     x21, x0
  10002cabc  b       loc_10002cb88
  10002cac0  mov     x21, x0
  10002cac4  b       loc_10002cb78
  10002cac8  str     x23, [sp, #0x30]
  10002cacc  mov     x21, x0
  10002cad0  b       loc_10002cbf8
  10002cad4  str     x23, [sp, #0x30]
  10002cad8  mov     x21, x0
loc_10002cadc:
  10002cadc  mov     x0, x27
  10002cae0  bl      _objc_release
  10002cae4  b       loc_10002cba4
  10002cae8  mov     x21, x0
  10002caec  mov     x0, x22
  10002caf0  b       loc_10002cb3c
  10002caf4  mov     x21, x0
  10002caf8  b       loc_10002cbf8
  10002cafc  mov     x21, x0
  10002cb00  b       loc_10002cb40
  10002cb04  mov     x21, x0
  10002cb08  b       loc_10002cb40
  10002cb0c  mov     x21, x0
  10002cb10  mov     x0, x22
  10002cb14  bl      _objc_release
  10002cb18  b       loc_10002ca7c
  10002cb1c  b       loc_10002ca14
loc_10002cb20:
  10002cb20  mov     x21, x0
loc_10002cb24:
  10002cb24  mov     x0, x20
  10002cb28  b       loc_10002cb34
loc_10002cb2c:
  10002cb2c  mov     x21, x0
  10002cb30  mov     x0, x22
loc_10002cb34:
  10002cb34  bl      _objc_release
loc_10002cb38:
  10002cb38  mov     x0, x25
loc_10002cb3c:
  10002cb3c  bl      _objc_release
loc_10002cb40:
  10002cb40  mov     x0, x23
  10002cb44  bl      _objc_release
loc_10002cb48:
  10002cb48  ldr     x0, [sp, #0x28]
  10002cb4c  bl      _objc_release
  10002cb50  b       loc_10002cc00
  10002cb54  stp     x27, x23, [sp, #0x28]
  10002cb58  mov     x21, x0
  10002cb5c  b       loc_10002cbe8
  10002cb60  mov     x21, x0
  10002cb64  mov     x0, x20
  10002cb68  b       loc_10002cb7c
  10002cb6c  mov     x21, x0
  10002cb70  mov     x0, x20
  10002cb74  bl      _objc_release
loc_10002cb78:
  10002cb78  mov     x0, x25
loc_10002cb7c:
  10002cb7c  bl      _objc_release
loc_10002cb80:
  10002cb80  mov     x0, x24
  10002cb84  bl      _objc_release
loc_10002cb88:
  10002cb88  mov     x0, x23
  10002cb8c  b       loc_10002cbf4
  10002cb90  mov     x21, x0
  10002cb94  mov     x0, x20
  10002cb98  bl      _objc_release
  10002cb9c  b       loc_10002cc00
  10002cba0  mov     x21, x0
loc_10002cba4:
  10002cba4  ldr     x0, [sp, #0x20]
  10002cba8  b       loc_10002cbec
  10002cbac  str     x27, [sp, #0x28]
  10002cbb0  b       loc_10002cbcc
  10002cbb4  b       loc_10002ca40
  10002cbb8  mov     x21, x0
  10002cbbc  mov     x0, x26
  10002cbc0  bl      _objc_release
  10002cbc4  b       loc_10002ca44
  10002cbc8  stp     x27, x23, [sp, #0x28]
loc_10002cbcc:
  10002cbcc  mov     x21, x0
  10002cbd0  mov     x0, x20
  10002cbd4  b       loc_10002cbec
  10002cbd8  stp     x27, x23, [sp, #0x28]
  10002cbdc  mov     x21, x0
  10002cbe0  mov     x0, x20
  10002cbe4  bl      _objc_release
loc_10002cbe8:
  10002cbe8  mov     x0, x24
loc_10002cbec:
  10002cbec  bl      _objc_release
loc_10002cbf0:
  10002cbf0  ldr     x0, [sp, #0x28]
loc_10002cbf4:
  10002cbf4  bl      _objc_release
loc_10002cbf8:
  10002cbf8  mov     x0, x22
  10002cbfc  bl      _objc_release
loc_10002cc00:
  10002cc00  ldr     x0, [sp, #0x30]
loc_10002cc04:
  10002cc04  bl      _objc_release
loc_10002cc08:
  10002cc08  mov     x0, x19
  10002cc0c  bl      _objc_release
  10002cc10  mov     x0, x21
  10002cc14  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002cc18  mov     x21, x0
  10002cc1c  mov     x0, x23
  10002cc20  bl      _objc_release
  10002cc24  b       loc_10002cadc
  10002cc28  mov     x21, x0
  10002cc2c  mov     x0, x25
  10002cc30  bl      _objc_release
  10002cc34  b       loc_10002cadc
  10002cc38  mov     x21, x0
  10002cc3c  ldr     x0, [sp, #0x58]
  10002cc40  bl      _objc_release
  10002cc44  b       loc_10002cadc

; ======================================================================
; -[OBDragDropManager handleOvumGesture:]_block_invoke
; address 0x10002cc48  size 132  kind block
; ======================================================================
  10002cc48  stp     x20, x19, [sp, #-0x20]!
  10002cc4c  stp     x29, x30, [sp, #0x10]
  10002cc50  add     x29, sp, #0x10
  10002cc54  sub     sp, sp, #0x60
  10002cc58  mov     x19, x0
  10002cc5c  ldr     x20, [x19, #0x20]                        ; x20 = captured [[arg1 ovum] dragView]
  10002cc60  adrp    x8, #0x100181000
  10002cc64  ldr     d0, [x8, #0xae0]                         ; d0 = 0.01
  10002cc68  add     x8, sp, #0x30
  10002cc6c  mov     v1.16b, v0.16b
  10002cc70  bl      _CGAffineTransformMakeScale              ; CGAffineTransformMakeScale(block, blockarg1, blockarg2, blockarg3)
  10002cc74  ldr     q0, [sp, #0x50]
  10002cc78  str     q0, [sp, #0x20]
  10002cc7c  ldr     q0, [sp, #0x40]
  10002cc80  str     q0, [sp, #0x10]
  10002cc84  ldr     q0, [sp, #0x30]
  10002cc88  str     q0, [sp]
  10002cc8c  adrp    x8, #0x100417000
  10002cc90  nop
  10002cc94  ldr     x1, [x8, #0x8a8]
  10002cc98  mov     x2, sp
  10002cc9c  mov     x0, x20
  10002cca0  bl      _objc_msgSend                            ; [[[arg1 ovum] dragView] setTransform:&sp[0x0]]
  10002cca4  ldr     x0, [x19, #0x20]                         ; x0 = captured [[arg1 ovum] dragView]
  10002cca8  adrp    x8, #0x100417000
  10002ccac  nop
  10002ccb0  ldr     x1, [x8, #0x828]
  10002ccb4  movi    v0.16b, #0
  10002ccb8  bl      _objc_msgSend                            ; [[[arg1 ovum] dragView] setAlpha:0]
  10002ccbc  sub     sp, x29, #0x10
  10002ccc0  ldp     x29, x30, [sp, #0x10]
  10002ccc4  ldp     x20, x19, [sp], #0x20
  10002ccc8  ret

; ======================================================================
; sub_10002cccc
; address 0x10002cccc  size 8  kind sub
; ======================================================================
  10002cccc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10002ccd0  b       _objc_retain

; ======================================================================
; sub_10002ccd4
; address 0x10002ccd4  size 8  kind sub
; ======================================================================
  10002ccd4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10002ccd8  b       _objc_release

; ======================================================================
; -[OBDragDropManager applyRecenteringTo:withRecognizer:]
; address 0x10002ccdc  size 2208  kind objc
; ======================================================================
  10002ccdc  stp     d15, d14, [sp, #-0xa0]!
  10002cce0  stp     d13, d12, [sp, #0x10]
  10002cce4  stp     d11, d10, [sp, #0x20]
  10002cce8  stp     d9, d8, [sp, #0x30]
  10002ccec  stp     x28, x27, [sp, #0x40]
  10002ccf0  stp     x26, x25, [sp, #0x50]
  10002ccf4  stp     x24, x23, [sp, #0x60]
  10002ccf8  stp     x22, x21, [sp, #0x70]
  10002ccfc  stp     x20, x19, [sp, #0x80]
  10002cd00  stp     x29, x30, [sp, #0x90]
  10002cd04  add     x29, sp, #0x90
  10002cd08  sub     sp, sp, #0xf0
  10002cd0c  mov     v10.16b, v1.16b
  10002cd10  mov     v11.16b, v0.16b
  10002cd14  mov     x22, x0
  10002cd18  mov     x0, x2
  10002cd1c  bl      _objc_retain
  10002cd20  mov     x19, x0
  10002cd24  adrp    x8, #0x100417000
  10002cd28  nop
  10002cd2c  ldr     x21, [x8, #0xf00]
  10002cd30  mov     x1, x21
  10002cd34  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cd38  mov     x29, x29
  10002cd3c  bl      _objc_retainAutoreleasedReturnValue
  10002cd40  mov     x20, x0
  10002cd44  adrp    x8, #0x100417000
  10002cd48  nop
  10002cd4c  ldr     x1, [x8, #0xea8]
  10002cd50  bl      _objc_msgSend                            ; [[arg2 ovum] dragView]
  10002cd54  mov     x29, x29
  10002cd58  bl      _objc_retainAutoreleasedReturnValue
  10002cd5c  mov     x26, x0
  10002cd60  mov     x0, x20
  10002cd64  bl      _objc_release
  10002cd68  mov     x0, x19
  10002cd6c  mov     x1, x21
  10002cd70  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cd74  mov     x29, x29
  10002cd78  bl      _objc_retainAutoreleasedReturnValue
  10002cd7c  mov     x20, x0
  10002cd80  adrp    x8, #0x100417000
  10002cd84  nop
  10002cd88  ldr     x1, [x8, #0xf40]
  10002cd8c  bl      _objc_msgSend                            ; [[arg2 ovum] isCentered]
  10002cd90  mov     x23, x0
  10002cd94  mov     x0, x20
  10002cd98  bl      _objc_release
  10002cd9c  mov     v15.16b, v11.16b
  10002cda0  mov     v9.16b, v10.16b
  10002cda4  tbnz    w23, #0, loc_10002ce7c                   ; if (([[arg2 ovum] isCentered] & 1))
  10002cda8  mov     x0, x19
  10002cdac  mov     x1, x21
  10002cdb0  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cdb4  mov     x29, x29
  10002cdb8  bl      _objc_retainAutoreleasedReturnValue
  10002cdbc  mov     x24, x0
  10002cdc0  adrp    x8, #0x100417000
  10002cdc4  nop
  10002cdc8  ldr     x23, [x8, #0xfe8]
  10002cdcc  mov     x1, x23
  10002cdd0  bl      _objc_msgSend                            ; [[arg2 ovum] offsetOvumAndTouch]
  10002cdd4  mov     v8.16b, v0.16b
  10002cdd8  mov     x0, x19
  10002cddc  mov     x1, x21
  10002cde0  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cde4  mov     x29, x29
  10002cde8  bl      _objc_retainAutoreleasedReturnValue
  10002cdec  mov     x20, x0
  10002cdf0  adrp    x8, #0x100417000
  10002cdf4  nop
  10002cdf8  ldr     x25, [x8, #0x6e0]
  10002cdfc  mov     x1, x25
  10002ce00  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002ce04  mov     v9.16b, v0.16b
  10002ce08  mov     x0, x20
  10002ce0c  bl      _objc_release
  10002ce10  mov     x0, x24
  10002ce14  bl      _objc_release
  10002ce18  mov     x0, x19
  10002ce1c  mov     x1, x21
  10002ce20  bl      _objc_msgSend                            ; [arg2 ovum]
  10002ce24  mov     x29, x29
  10002ce28  bl      _objc_retainAutoreleasedReturnValue
  10002ce2c  mov     x24, x0
  10002ce30  mov     x1, x23
  10002ce34  bl      _objc_msgSend                            ; [[arg2 ovum] offsetOvumAndTouch]
  10002ce38  mov     v12.16b, v1.16b
  10002ce3c  mov     x0, x19
  10002ce40  mov     x1, x21
  10002ce44  bl      _objc_msgSend                            ; [arg2 ovum]
  10002ce48  mov     x29, x29
  10002ce4c  bl      _objc_retainAutoreleasedReturnValue
  10002ce50  mov     x20, x0
  10002ce54  mov     x1, x25
  10002ce58  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002ce5c  fmul    d1, d8, d9
  10002ce60  fsub    d15, d11, d1
  10002ce64  fmul    d0, d12, d0
  10002ce68  fsub    d9, d10, d0
  10002ce6c  mov     x0, x20
  10002ce70  bl      _objc_release
  10002ce74  mov     x0, x24
  10002ce78  bl      _objc_release
loc_10002ce7c:
  10002ce7c  mov     x0, x19
  10002ce80  mov     x1, x21
  10002ce84  bl      _objc_msgSend                            ; [arg2 ovum]
  10002ce88  mov     x29, x29
  10002ce8c  bl      _objc_retainAutoreleasedReturnValue
  10002ce90  mov     x20, x0
  10002ce94  adrp    x8, #0x100417000
  10002ce98  nop
  10002ce9c  ldr     x1, [x8, #0xf50]
  10002cea0  bl      _objc_msgSend                            ; [[arg2 ovum] shouldScale]
  10002cea4  mov     x23, x0
  10002cea8  mov     x0, x20
  10002ceac  bl      _objc_release
  10002ceb0  cbz     w23, loc_10002d40c                       ; if ([[arg2 ovum] shouldScale] == 0)
  10002ceb4  adrp    x8, #0x100417000
  10002ceb8  nop
  10002cebc  ldr     x1, [x8, #0xf60]
  10002cec0  mov     x0, x19
  10002cec4  bl      _objc_msgSend                            ; [arg2 numberOfTouches]
  10002cec8  mov     x23, x0
  10002cecc  adrp    x8, #0x10041f000
  10002ced0  ldrsw   x25, [x8, #0x770]                        ; ivar offset OBDragDropManager.prevNumberOfTouches (+0x8)
  10002ced4  ldr     x8, [x22, x25]                           ; x8 = self->prevNumberOfTouches
  10002ced8  cmp     x8, x23
  10002cedc  b.eq    loc_10002d198                            ; if (self->prevNumberOfTouches == [arg2 numberOfTouches])
  10002cee0  mov     x0, x19
  10002cee4  mov     x1, x21
  10002cee8  bl      _objc_msgSend                            ; [arg2 ovum]
  10002ceec  str     x26, [sp, #0x28]
  10002cef0  mov     x29, x29
  10002cef4  bl      _objc_retainAutoreleasedReturnValue
  10002cef8  mov     x20, x0
  10002cefc  adrp    x8, #0x10041f000
  10002cf00  ldrsw   x28, [x8, #0x76c]                        ; ivar offset OBDragDropManager.prevPinchCentroid (+0x10)
  10002cf04  ldr     d8, [x22, x28]                           ; d8 = self->prevPinchCentroid.x
  10002cf08  mov     x0, x19
  10002cf0c  mov     x1, x21
  10002cf10  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cf14  str     d15, [sp, #0x18]
  10002cf18  str     x20, [sp, #0x20]
  10002cf1c  mov     x29, x29
  10002cf20  bl      _objc_retainAutoreleasedReturnValue
  10002cf24  mov     x26, x0
  10002cf28  adrp    x8, #0x100417000
  10002cf2c  nop
  10002cf30  ldr     x20, [x8, #0xff0]
  10002cf34  mov     x1, x20
  10002cf38  bl      _objc_msgSend                            ; [[arg2 ovum] shiftPinchCentroid]
  10002cf3c  mov     v12.16b, v0.16b
  10002cf40  mov     x0, x19
  10002cf44  mov     x1, x21
  10002cf48  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cf4c  mov     x29, x29
  10002cf50  bl      _objc_retainAutoreleasedReturnValue
  10002cf54  mov     x27, x0
  10002cf58  adrp    x8, #0x100417000
  10002cf5c  nop
  10002cf60  ldr     x24, [x8, #0x6e0]
  10002cf64  mov     x1, x24
  10002cf68  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002cf6c  mov     v13.16b, v0.16b
  10002cf70  add     x8, x28, x22
  10002cf74  ldr     d15, [x8, #8]                            ; d15 = self->prevPinchCentroid.y
  10002cf78  mov     x0, x19
  10002cf7c  mov     x1, x21
  10002cf80  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cf84  str     x25, [sp, #0x10]
  10002cf88  mov     x29, x29
  10002cf8c  bl      _objc_retainAutoreleasedReturnValue
  10002cf90  mov     x28, x0
  10002cf94  mov     x1, x20
  10002cf98  bl      _objc_msgSend                            ; [[arg2 ovum] shiftPinchCentroid]
  10002cf9c  mov     v14.16b, v1.16b
  10002cfa0  mov     x0, x19
  10002cfa4  mov     x1, x21
  10002cfa8  bl      _objc_msgSend                            ; [arg2 ovum]
  10002cfac  mov     x29, x29
  10002cfb0  bl      _objc_retainAutoreleasedReturnValue
  10002cfb4  mov     x20, x0
  10002cfb8  mov     x1, x24
  10002cfbc  ldr     x25, [sp, #0x20]
  10002cfc0  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002cfc4  fsub    d1, d8, d11
  10002cfc8  fmul    d2, d12, d13
  10002cfcc  fadd    d2, d1, d2                               ; t1 = ((self->prevPinchCentroid.x - arg1.0) + ([[arg2 ovum] shiftPinchCentroid].0 * [[arg2 ovum] scale]))
  10002cfd0  fsub    d1, d15, d10
  10002cfd4  fmul    d0, d14, d0
  10002cfd8  fadd    d1, d1, d0                               ; t2 = ((self->prevPinchCentroid.y - arg1.1) + ([[arg2 ovum] shiftPinchCentroid].1 * [[arg2 ovum] scale]))
  10002cfdc  adrp    x8, #0x100417000
  10002cfe0  nop
  10002cfe4  ldr     x1, [x8, #0xf58]
  10002cfe8  mov     x0, x25
  10002cfec  mov     v0.16b, v2.16b
  10002cff0  bl      _objc_msgSend                            ; [[arg2 ovum] setShiftPinchCentroid:{t1, t2}]
  10002cff4  mov     x0, x20
  10002cff8  bl      _objc_release
  10002cffc  mov     x0, x28
  10002d000  bl      _objc_release
  10002d004  mov     x0, x27
  10002d008  bl      _objc_release
  10002d00c  mov     x0, x26
  10002d010  bl      _objc_release
  10002d014  mov     x0, x25
  10002d018  bl      _objc_release
  10002d01c  mov     x0, x19
  10002d020  mov     x1, x21
  10002d024  ldr     x26, [sp, #0x28]
  10002d028  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d02c  ldr     x25, [sp, #0x10]
  10002d030  ldr     d15, [sp, #0x18]
  10002d034  mov     x29, x29
  10002d038  bl      _objc_retainAutoreleasedReturnValue
  10002d03c  str     x0, [sp, #0x20]
  10002d040  mov     x0, x19
  10002d044  mov     x1, x21
  10002d048  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d04c  mov     x29, x29
  10002d050  bl      _objc_retainAutoreleasedReturnValue
  10002d054  mov     x26, x0
  10002d058  adrp    x8, #0x100417000
  10002d05c  nop
  10002d060  ldr     x20, [x8, #0xfe8]
  10002d064  mov     x1, x20
  10002d068  bl      _objc_msgSend                            ; [[arg2 ovum] offsetOvumAndTouch]
  10002d06c  mov     v12.16b, v0.16b
  10002d070  mov     x0, x19
  10002d074  mov     x1, x21
  10002d078  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d07c  mov     x29, x29
  10002d080  bl      _objc_retainAutoreleasedReturnValue
  10002d084  mov     x27, x0
  10002d088  mov     x1, x24
  10002d08c  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002d090  mov     v13.16b, v0.16b
  10002d094  mov     x0, x19
  10002d098  mov     x1, x21
  10002d09c  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d0a0  mov     x29, x29
  10002d0a4  bl      _objc_retainAutoreleasedReturnValue
  10002d0a8  mov     x28, x0
  10002d0ac  mov     x1, x20
  10002d0b0  bl      _objc_msgSend                            ; [[arg2 ovum] offsetOvumAndTouch]
  10002d0b4  mov     v14.16b, v1.16b
  10002d0b8  mov     x0, x19
  10002d0bc  mov     x1, x21
  10002d0c0  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d0c4  mov     x29, x29
  10002d0c8  bl      _objc_retainAutoreleasedReturnValue
  10002d0cc  mov     x20, x0
  10002d0d0  mov     x1, x24
  10002d0d4  ldr     x24, [sp, #0x20]
  10002d0d8  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002d0dc  fmul    d2, d12, d13
  10002d0e0  fmul    d1, d14, d0
  10002d0e4  adrp    x8, #0x100417000
  10002d0e8  nop
  10002d0ec  ldr     x1, [x8, #0xf48]
  10002d0f0  mov     x0, x24
  10002d0f4  mov     v0.16b, v2.16b
  10002d0f8  bl      _objc_msgSend                            ; [[arg2 ovum] setOffsetOvumAndTouch:{([[arg2 ovum] offsetOvumAndTouch].0 * [[arg2 ovum] scale]), ([[arg2 ovum] offsetOvumAndTouch].1 * [[arg2 ovum] scale])}]
  10002d0fc  mov     x0, x20
  10002d100  bl      _objc_release
  10002d104  mov     x0, x28
  10002d108  bl      _objc_release
  10002d10c  mov     x0, x27
  10002d110  bl      _objc_release
  10002d114  mov     x0, x26
  10002d118  bl      _objc_release
  10002d11c  mov     x0, x24
  10002d120  bl      _objc_release
  10002d124  cmp     x23, #1
  10002d128  ldr     x26, [sp, #0x28]
  10002d12c  b.ne    loc_10002d198                            ; if ([arg2 numberOfTouches] != 1)
  10002d130  adrp    x8, #0x10041f000
  10002d134  ldrsw   x8, [x8, #0x778]                         ; ivar offset OBDragDropManager.initialDistance (+0x20)
  10002d138  str     xzr, [x22, x8]                           ; self->initialDistance = 0
  10002d13c  adrp    x8, #0x100416000
  10002d140  nop
  10002d144  ldr     x1, [x8, #0xf38]
  10002d148  mov     x0, x26
  10002d14c  bl      _objc_msgSend                            ; [[[arg2 ovum] dragView] frame]
  10002d150  adrp    x8, #0x10041f000
  10002d154  ldrsw   x8, [x8, #0x774]                         ; ivar offset OBDragDropManager.initialFrame (+0x28)
  10002d158  add     x8, x22, x8
  10002d15c  stp     d0, d1, [x8]
  10002d160  stp     d2, d3, [x8, #0x10]
  10002d164  mov     x0, x19
  10002d168  mov     x1, x21
  10002d16c  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d170  mov     x29, x29
  10002d174  bl      _objc_retainAutoreleasedReturnValue
  10002d178  mov     x20, x0
  10002d17c  adrp    x8, #0x100417000
  10002d180  nop
  10002d184  ldr     x1, [x8, #0xf78]
  10002d188  fmov    d0, #1.00000000
  10002d18c  bl      _objc_msgSend                            ; [[arg2 ovum] setScale:1]
  10002d190  mov     x0, x20
  10002d194  bl      _objc_release
loc_10002d198:
  10002d198  adrp    x8, #0x10041f000
  10002d19c  ldrsw   x8, [x8, #0x76c]                         ; ivar offset OBDragDropManager.prevPinchCentroid (+0x10)
  10002d1a0  add     x8, x22, x8
  10002d1a4  stp     d11, d10, [x8]
  10002d1a8  str     x23, [x22, x25]                          ; self->prevNumberOfTouches = [arg2 numberOfTouches]
  10002d1ac  cmp     x23, #2
  10002d1b0  b.lo    loc_10002d338                            ; if ([arg2 numberOfTouches] <u 2)
  10002d1b4  adrp    x8, #0x10041f000
  10002d1b8  ldrsw   x8, [x8, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002d1bc  ldr     x3, [x22, x8]                            ; x3 = self->overlayWindow
  10002d1c0  adrp    x8, #0x100417000
  10002d1c4  nop
  10002d1c8  ldr     x1, [x8, #0xf68]
  10002d1cc  mov     x2, #0
  10002d1d0  mov     x0, x19
  10002d1d4  bl      _objc_msgSend                            ; [arg2 locationOfTouch:0 inView:self->overlayWindow]
  10002d1d8  mov     v2.16b, v0.16b
  10002d1dc  mov     v3.16b, v1.16b
  10002d1e0  adrp    x8, #0x100417000
  10002d1e4  nop
  10002d1e8  ldr     x1, [x8, #0xf70]
  10002d1ec  mov     x0, x22
  10002d1f0  mov     v0.16b, v11.16b
  10002d1f4  mov     v1.16b, v10.16b
  10002d1f8  bl      _objc_msgSend                            ; [self distanceFrom:{arg1.0, arg1.1} to:{[arg2 locationOfTouch:0 inView:self->overlayWindow].0, [arg2 locationOfTouch:0 inView:self->overlayWindow].1}]
  10002d1fc  mov     v10.16b, v0.16b
  10002d200  adrp    x8, #0x10041f000
  10002d204  ldrsw   x8, [x8, #0x778]                         ; ivar offset OBDragDropManager.initialDistance (+0x20)
  10002d208  ldr     d11, [x22, x8]                           ; d11 = self->initialDistance
  10002d20c  fcmp    d11, #0.0
  10002d210  b.ne    loc_10002d21c                            ; if (self->initialDistance != 0.0)
  10002d214  str     d10, [x22, x8]                           ; self->initialDistance = [self distanceFrom:{arg1.0, arg1.1} to:{[arg2 locationOfTouch:0 inView:self->overlayWindow].0, [arg2 locationOfTouch:0 inView:self->overlayWindow].1}]
  10002d218  mov     v11.16b, v10.16b
loc_10002d21c:
  10002d21c  mov     x0, x19
  10002d220  mov     x1, x21
  10002d224  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d228  adrp    x8, #0x100417000
  10002d22c  nop
  10002d230  ldr     x1, [x8, #0xf78]
  10002d234  fdiv    d0, d10, d11                             ; t3 = ([self distanceFrom:{arg1.0, arg1.1} to:{[arg2 locationOfTouch:0 inView:self->overlayWindow].0, [arg2 locationOfTouch:0 inView:self->overlayWindow].1}] / d11)
  10002d238  bl      _objc_msgSend                            ; [[arg2 ovum] setScale:t3]
  10002d23c  adrp    x8, #0x1003b0000
  10002d240  ldr     x8, [x8]                                 ; _CGAffineTransformIdentity
  10002d244  ldp     q0, q2, [x8]
  10002d248  ldr     q1, [x8, #0x20]                          ; q1 = _CGAffineTransformIdentity[+0x20]
  10002d24c  ldr     q3, [x8, #0x20]                          ; q3 = _CGAffineTransformIdentity[+0x20]
  10002d250  str     q3, [sp, #0xe0]
  10002d254  ldp     q3, q4, [x8]
  10002d258  stp     q0, q4, [sp, #0xc0]
  10002d25c  stp     q2, q1, [sp, #0x70]
  10002d260  str     q3, [sp, #0x60]
  10002d264  mov     x0, x19
  10002d268  mov     x1, x21
  10002d26c  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d270  mov     x29, x29
  10002d274  bl      _objc_retainAutoreleasedReturnValue
  10002d278  mov     x23, x0
  10002d27c  adrp    x8, #0x100417000
  10002d280  nop
  10002d284  ldr     x24, [x8, #0x6e0]
  10002d288  mov     x1, x24
  10002d28c  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002d290  mov     v10.16b, v0.16b
  10002d294  mov     x0, x19
  10002d298  mov     x1, x21
  10002d29c  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d2a0  mov     x29, x29
  10002d2a4  bl      _objc_retainAutoreleasedReturnValue
  10002d2a8  mov     x20, x0
  10002d2ac  mov     x1, x24
  10002d2b0  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002d2b4  mov     v1.16b, v0.16b
  10002d2b8  add     x8, sp, #0x90
  10002d2bc  add     x0, sp, #0x60
  10002d2c0  mov     v0.16b, v10.16b
  10002d2c4  bl      _CGAffineTransformScale                  ; CGAffineTransformScale(&sp[0x60])
  10002d2c8  ldr     q0, [sp, #0xb0]
  10002d2cc  str     q0, [sp, #0xe0]
  10002d2d0  ldr     q0, [sp, #0xa0]
  10002d2d4  str     q0, [sp, #0xd0]
  10002d2d8  ldr     q0, [sp, #0x90]
  10002d2dc  str     q0, [sp, #0xc0]
  10002d2e0  mov     x0, x20
  10002d2e4  bl      _objc_release
  10002d2e8  mov     x0, x23
  10002d2ec  bl      _objc_release
  10002d2f0  adrp    x8, #0x10041f000
  10002d2f4  ldrsw   x8, [x8, #0x774]                         ; ivar offset OBDragDropManager.initialFrame (+0x28)
  10002d2f8  add     x8, x22, x8
  10002d2fc  ldp     d0, d1, [x8]
  10002d300  ldp     d2, d3, [x8, #0x10]
  10002d304  ldr     q4, [sp, #0xe0]
  10002d308  str     q4, [sp, #0x50]
  10002d30c  ldr     q4, [sp, #0xd0]
  10002d310  str     q4, [sp, #0x40]
  10002d314  ldr     q4, [sp, #0xc0]
  10002d318  str     q4, [sp, #0x30]
  10002d31c  add     x0, sp, #0x30
  10002d320  bl      _CGRectApplyAffineTransform              ; CGRectApplyAffineTransform(&sp[0x30])
  10002d324  adrp    x8, #0x100417000
  10002d328  nop
  10002d32c  ldr     x1, [x8, #0x7b8]
  10002d330  mov     x0, x26
  10002d334  bl      _objc_msgSend                            ; [[[arg2 ovum] dragView] setFrame:{d0, d1, d2, d3}]
loc_10002d338:
  10002d338  mov     x0, x19
  10002d33c  mov     x1, x21
  10002d340  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d344  mov     x29, x29
  10002d348  bl      _objc_retainAutoreleasedReturnValue
  10002d34c  mov     x23, x0
  10002d350  adrp    x8, #0x100417000
  10002d354  nop
  10002d358  ldr     x22, [x8, #0xff0]
  10002d35c  mov     x1, x22
  10002d360  bl      _objc_msgSend                            ; [[arg2 ovum] shiftPinchCentroid]
  10002d364  mov     v10.16b, v0.16b
  10002d368  mov     x0, x19
  10002d36c  mov     x1, x21
  10002d370  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d374  mov     x29, x29
  10002d378  bl      _objc_retainAutoreleasedReturnValue
  10002d37c  mov     x20, x0
  10002d380  adrp    x8, #0x100417000
  10002d384  nop
  10002d388  ldr     x24, [x8, #0x6e0]
  10002d38c  mov     x1, x24
  10002d390  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002d394  mov     v11.16b, v0.16b
  10002d398  mov     x0, x20
  10002d39c  bl      _objc_release
  10002d3a0  mov     x0, x23
  10002d3a4  bl      _objc_release
  10002d3a8  mov     x0, x19
  10002d3ac  mov     x1, x21
  10002d3b0  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d3b4  mov     x29, x29
  10002d3b8  bl      _objc_retainAutoreleasedReturnValue
  10002d3bc  mov     x23, x0
  10002d3c0  mov     x1, x22
  10002d3c4  bl      _objc_msgSend                            ; [[arg2 ovum] shiftPinchCentroid]
  10002d3c8  mov     v12.16b, v1.16b
  10002d3cc  mov     x0, x19
  10002d3d0  mov     x1, x21
  10002d3d4  bl      _objc_msgSend                            ; [arg2 ovum]
  10002d3d8  mov     x29, x29
  10002d3dc  bl      _objc_retainAutoreleasedReturnValue
  10002d3e0  mov     x20, x0
  10002d3e4  mov     x1, x24
  10002d3e8  bl      _objc_msgSend                            ; [[arg2 ovum] scale]
  10002d3ec  fmul    d1, d10, d11
  10002d3f0  fadd    d15, d15, d1
  10002d3f4  fmul    d0, d12, d0
  10002d3f8  fadd    d9, d9, d0
  10002d3fc  mov     x0, x20
  10002d400  bl      _objc_release
  10002d404  mov     x0, x23
  10002d408  bl      _objc_release
loc_10002d40c:
  10002d40c  mov     x0, x26
  10002d410  bl      _objc_release
  10002d414  mov     x0, x19
  10002d418  bl      _objc_release
  10002d41c  mov     v0.16b, v15.16b
  10002d420  mov     v1.16b, v9.16b
  10002d424  sub     sp, x29, #0x90
  10002d428  ldp     x29, x30, [sp, #0x90]
  10002d42c  ldp     x20, x19, [sp, #0x80]
  10002d430  ldp     x22, x21, [sp, #0x70]
  10002d434  ldp     x24, x23, [sp, #0x60]
  10002d438  ldp     x26, x25, [sp, #0x50]
  10002d43c  ldp     x28, x27, [sp, #0x40]
  10002d440  ldp     d9, d8, [sp, #0x30]
  10002d444  ldp     d11, d10, [sp, #0x20]
  10002d448  ldp     d13, d12, [sp, #0x10]
  10002d44c  ldp     d15, d14, [sp], #0xa0
  10002d450  ret
loc_10002d454:
  10002d454  str     x26, [sp, #0x28]
  10002d458  mov     x21, x0
  10002d45c  b       loc_10002d548
  10002d460  mov     x21, x0
  10002d464  b       loc_10002d550
  10002d468  mov     x21, x0
  10002d46c  mov     x0, x20
  10002d470  b       loc_10002d54c
  10002d474  b       loc_10002d488
  10002d478  b       loc_10002d47c
loc_10002d47c:
  10002d47c  str     x26, [sp, #0x28]
  10002d480  mov     x21, x0
  10002d484  b       loc_10002d4b4
loc_10002d488:
  10002d488  str     x26, [sp, #0x28]
loc_10002d48c:
  10002d48c  mov     x21, x0
  10002d490  mov     x0, x20
  10002d494  b       loc_10002d544
  10002d498  b       loc_10002d51c
  10002d49c  b       loc_10002d51c
  10002d4a0  b       loc_10002d4a4
loc_10002d4a4:
  10002d4a4  str     x26, [sp, #0x28]
  10002d4a8  mov     x21, x0
  10002d4ac  mov     x0, x20
  10002d4b0  bl      _objc_release
loc_10002d4b4:
  10002d4b4  mov     x0, x24
  10002d4b8  b       loc_10002d544
  10002d4bc  mov     x21, x0
  10002d4c0  b       loc_10002d50c
  10002d4c4  mov     x21, x0
  10002d4c8  b       loc_10002d504
  10002d4cc  mov     x21, x0
  10002d4d0  b       loc_10002d4fc
  10002d4d4  b       loc_10002d4f0
  10002d4d8  mov     x21, x0
  10002d4dc  b       loc_10002d50c
  10002d4e0  mov     x21, x0
  10002d4e4  b       loc_10002d504
  10002d4e8  mov     x21, x0
  10002d4ec  b       loc_10002d4fc
loc_10002d4f0:
  10002d4f0  mov     x21, x0
  10002d4f4  mov     x0, x20
  10002d4f8  bl      _objc_release
loc_10002d4fc:
  10002d4fc  mov     x0, x28
  10002d500  bl      _objc_release
loc_10002d504:
  10002d504  mov     x0, x27
  10002d508  bl      _objc_release
loc_10002d50c:
  10002d50c  mov     x0, x26
  10002d510  bl      _objc_release
loc_10002d514:
  10002d514  ldr     x0, [sp, #0x20]
  10002d518  b       loc_10002d544
loc_10002d51c:
  10002d51c  str     x26, [sp, #0x28]
  10002d520  mov     x21, x0
  10002d524  b       loc_10002d540
  10002d528  b       loc_10002d530
  10002d52c  b       loc_10002d530
loc_10002d530:
  10002d530  str     x26, [sp, #0x28]
  10002d534  mov     x21, x0
  10002d538  mov     x0, x20
  10002d53c  bl      _objc_release
loc_10002d540:
  10002d540  mov     x0, x23
loc_10002d544:
  10002d544  bl      _objc_release
loc_10002d548:
  10002d548  ldr     x0, [sp, #0x28]
loc_10002d54c:
  10002d54c  bl      _objc_release
loc_10002d550:
  10002d550  mov     x0, x19
  10002d554  bl      _objc_release
  10002d558  mov     x0, x21
  10002d55c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10002d560  str     x20, [sp, #0x20]
  10002d564  mov     x21, x0
  10002d568  b       loc_10002d514
  10002d56c  mov     x21, x0
  10002d570  b       loc_10002d514
  10002d574  b       loc_10002d454
  10002d578  b       loc_10002d48c

; ======================================================================
; -[OBDragDropManager ovumRecognizerShouldHandleTouch:]
; address 0x10002d57c  size 368  kind objc
; ======================================================================
  10002d57c  stp     x22, x21, [sp, #-0x30]!
  10002d580  stp     x20, x19, [sp, #0x10]
  10002d584  stp     x29, x30, [sp, #0x20]
  10002d588  add     x29, sp, #0x20
  10002d58c  mov     x0, x2
  10002d590  bl      _objc_retain
  10002d594  mov     x19, x0
  10002d598  adrp    x8, #0x100416000
  10002d59c  nop
  10002d5a0  ldr     x1, [x8, #0xc60]
  10002d5a4  bl      _objc_msgSend                            ; [arg1 state]
  10002d5a8  cmp     x0, #1
  10002d5ac  b.ne    loc_10002d63c                            ; if ([arg1 state] != 1)
  10002d5b0  adrp    x8, #0x100417000
  10002d5b4  nop
  10002d5b8  ldr     x1, [x8, #0xee8]
  10002d5bc  mov     x0, x19
  10002d5c0  bl      _objc_msgSend                            ; [arg1 ovumSource]
  10002d5c4  mov     x29, x29
  10002d5c8  bl      _objc_retainAutoreleasedReturnValue
  10002d5cc  mov     x20, x0
  10002d5d0  adrp    x8, #0x100417000
  10002d5d4  nop
  10002d5d8  ldr     x21, [x8, #0xff8]
  10002d5dc  adrp    x8, #0x100417000
  10002d5e0  nop
  10002d5e4  ldr     x1, [x8, #0xe90]
  10002d5e8  mov     x2, x21
  10002d5ec  bl      _objc_msgSend                            ; [[arg1 ovumSource] respondsToSelector:@selector(shouldCreateOvumFromView:)]
  10002d5f0  cbz     w0, loc_10002d634                        ; if ([[arg1 ovumSource] respondsToSelector:@selector(shouldCreateOvumFromView:)] == 0)
  10002d5f4  adrp    x8, #0x100416000
  10002d5f8  nop
  10002d5fc  ldr     x1, [x8, #0xf18]
  10002d600  mov     x0, x19
  10002d604  bl      _objc_msgSend                            ; [arg1 view]
  10002d608  mov     x29, x29
  10002d60c  bl      _objc_retainAutoreleasedReturnValue
  10002d610  mov     x22, x0
  10002d614  mov     x0, x20
  10002d618  mov     x1, x21
  10002d61c  mov     x2, x22
  10002d620  bl      _objc_msgSend                            ; [[arg1 ovumSource] shouldCreateOvumFromView:[arg1 view]]
  10002d624  mov     x21, x0
  10002d628  mov     x0, x22
  10002d62c  bl      _objc_release
  10002d630  tbz     w21, #0, loc_10002d664                   ; if (!([[arg1 ovumSource] shouldCreateOvumFromView:[arg1 view]] & 1))
loc_10002d634:
  10002d634  mov     w21, #1
  10002d638  b       loc_10002d694
loc_10002d63c:
  10002d63c  adrp    x8, #0x100417000
  10002d640  nop
  10002d644  ldr     x1, [x8, #0xf00]
  10002d648  mov     x0, x19
  10002d64c  bl      _objc_msgSend                            ; [arg1 ovum]
  10002d650  mov     x29, x29
  10002d654  bl      _objc_retainAutoreleasedReturnValue
  10002d658  cmp     x0, #0
  10002d65c  cset    w21, ne
  10002d660  b       loc_10002d698
loc_10002d664:
  10002d664  adrp    x8, #0x100417000
  10002d668  nop
  10002d66c  ldr     x21, [x8, #0x878]
  10002d670  mov     w2, #0
  10002d674  mov     x0, x19
  10002d678  mov     x1, x21
  10002d67c  bl      _objc_msgSend                            ; [arg1 setEnabled:0]
  10002d680  mov     w2, #1
  10002d684  mov     x0, x19
  10002d688  mov     x1, x21
  10002d68c  bl      _objc_msgSend                            ; [arg1 setEnabled:1]
  10002d690  mov     w21, #0
loc_10002d694:
  10002d694  mov     x0, x20
loc_10002d698:
  10002d698  bl      _objc_release
  10002d69c  mov     x0, x19
  10002d6a0  bl      _objc_release
  10002d6a4  mov     x0, x21
  10002d6a8  ldp     x29, x30, [sp, #0x20]
  10002d6ac  ldp     x20, x19, [sp, #0x10]
  10002d6b0  ldp     x22, x21, [sp], #0x30
  10002d6b4  ret
  10002d6b8  mov     x21, x0
  10002d6bc  b       loc_10002d6dc
  10002d6c0  mov     x21, x0
  10002d6c4  b       loc_10002d6d4
  10002d6c8  mov     x21, x0
  10002d6cc  mov     x0, x22
  10002d6d0  bl      _objc_release
loc_10002d6d4:
  10002d6d4  mov     x0, x20
  10002d6d8  bl      _objc_release
loc_10002d6dc:
  10002d6dc  mov     x0, x19
  10002d6e0  bl      _objc_release
  10002d6e4  mov     x0, x21
  10002d6e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager cleanupOvum:]
; address 0x10002d6ec  size 324  kind objc
; ======================================================================
  10002d6ec  stp     x24, x23, [sp, #-0x40]!
  10002d6f0  stp     x22, x21, [sp, #0x10]
  10002d6f4  stp     x20, x19, [sp, #0x20]
  10002d6f8  stp     x29, x30, [sp, #0x30]
  10002d6fc  add     x29, sp, #0x30
  10002d700  mov     x0, x2
  10002d704  bl      _objc_retain
  10002d708  mov     x19, x0
  10002d70c  adrp    x8, #0x100417000
  10002d710  nop
  10002d714  ldr     x20, [x8, #0xe98]
  10002d718  mov     x1, x20
  10002d71c  bl      _objc_msgSend                            ; [arg1 source]
  10002d720  mov     x29, x29
  10002d724  bl      _objc_retainAutoreleasedReturnValue
  10002d728  mov     x21, x0
  10002d72c  bl      _objc_release
  10002d730  cbz     x21, loc_10002d7c0                       ; if ([arg1 source] == 0)
  10002d734  mov     x0, x19
  10002d738  mov     x1, x20
  10002d73c  bl      _objc_msgSend                            ; [arg1 source]
  10002d740  mov     x29, x29
  10002d744  bl      _objc_retainAutoreleasedReturnValue
  10002d748  mov     x22, x0
  10002d74c  adrp    x8, #0x100418000
  10002d750  nop
  10002d754  ldr     x21, [x8]
  10002d758  adrp    x8, #0x100417000
  10002d75c  nop
  10002d760  ldr     x1, [x8, #0xe90]
  10002d764  mov     x2, x21
  10002d768  bl      _objc_msgSend                            ; [[arg1 source] respondsToSelector:@selector(ovumDragEnded:)]
  10002d76c  mov     x23, x0
  10002d770  mov     x0, x22
  10002d774  bl      _objc_release
  10002d778  cbz     w23, loc_10002d7a8                       ; if ([[arg1 source] respondsToSelector:@selector(ovumDragEnded:)] == 0)
  10002d77c  mov     x0, x19
  10002d780  mov     x1, x20
  10002d784  bl      _objc_msgSend                            ; [arg1 source]
  10002d788  mov     x29, x29
  10002d78c  bl      _objc_retainAutoreleasedReturnValue
  10002d790  mov     x22, x0
  10002d794  mov     x1, x21
  10002d798  mov     x2, x19
  10002d79c  bl      _objc_msgSend                            ; [[arg1 source] ovumDragEnded:arg1]
  10002d7a0  mov     x0, x22
  10002d7a4  bl      _objc_release
loc_10002d7a8:
  10002d7a8  adrp    x8, #0x100417000
  10002d7ac  nop
  10002d7b0  ldr     x1, [x8, #0xde0]
  10002d7b4  mov     x2, #0
  10002d7b8  mov     x0, x19
  10002d7bc  bl      _objc_msgSend                            ; [arg1 setSource:0]
loc_10002d7c0:
  10002d7c0  adrp    x8, #0x100417000
  10002d7c4  nop
  10002d7c8  ldr     x1, [x8, #0xf30]
  10002d7cc  mov     x2, #0
  10002d7d0  mov     x0, x19
  10002d7d4  bl      _objc_msgSend                            ; [arg1 setDragView:0]
  10002d7d8  adrp    x8, #0x100417000
  10002d7dc  nop
  10002d7e0  ldr     x1, [x8, #0xe78]
  10002d7e4  mov     x2, #0
  10002d7e8  mov     x0, x19
  10002d7ec  bl      _objc_msgSend                            ; [arg1 setCurrentDropHandlingView:0]
  10002d7f0  mov     x0, x19
  10002d7f4  ldp     x29, x30, [sp, #0x30]
  10002d7f8  ldp     x20, x19, [sp, #0x20]
  10002d7fc  ldp     x22, x21, [sp, #0x10]
  10002d800  ldp     x24, x23, [sp], #0x40
  10002d804  b       _objc_release
  10002d808  mov     x20, x0
  10002d80c  b       loc_10002d820
  10002d810  b       loc_10002d814
loc_10002d814:
  10002d814  mov     x20, x0
  10002d818  mov     x0, x22
  10002d81c  bl      _objc_release
loc_10002d820:
  10002d820  mov     x0, x19
  10002d824  bl      _objc_release
  10002d828  mov     x0, x20
  10002d82c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager distanceFrom:to:]
; address 0x10002d830  size 28  kind objc
; ======================================================================
  10002d830  fsub    d0, d2, d0
  10002d834  fsub    d1, d3, d1
  10002d838  fmul    d0, d0, d0
  10002d83c  fmul    d1, d1, d1
  10002d840  fadd    d0, d0, d1
  10002d844  fsqrt   d0, d0
  10002d848  ret

; ======================================================================
; -[OBDragDropManager updateOvum:withZoom:]
; address 0x10002d84c  size 996  kind objc
; ======================================================================
  10002d84c  stp     d13, d12, [sp, #-0x80]!
  10002d850  stp     d11, d10, [sp, #0x10]
  10002d854  stp     d9, d8, [sp, #0x20]
  10002d858  stp     x26, x25, [sp, #0x30]
  10002d85c  stp     x24, x23, [sp, #0x40]
  10002d860  stp     x22, x21, [sp, #0x50]
  10002d864  stp     x20, x19, [sp, #0x60]
  10002d868  stp     x29, x30, [sp, #0x70]
  10002d86c  add     x29, sp, #0x70
  10002d870  mov     v8.16b, v0.16b
  10002d874  mov     x20, x0
  10002d878  mov     x0, x2
  10002d87c  bl      _objc_retain
  10002d880  mov     x19, x0
  10002d884  cbz     x19, loc_10002dba4                       ; if (arg1 == 0)
  10002d888  adrp    x8, #0x100417000
  10002d88c  nop
  10002d890  ldr     x22, [x8, #0xf40]
  10002d894  mov     x0, x19
  10002d898  mov     x1, x22
  10002d89c  bl      _objc_msgSend                            ; [arg1 isCentered]
  10002d8a0  tbnz    w0, #0, loc_10002d8d4                    ; if (([arg1 isCentered] & 1))
  10002d8a4  adrp    x8, #0x100417000
  10002d8a8  nop
  10002d8ac  ldr     x1, [x8, #0xfe8]
  10002d8b0  mov     x0, x19
  10002d8b4  bl      _objc_msgSend                            ; [arg1 offsetOvumAndTouch]
  10002d8b8  fmul    d0, d0, d8
  10002d8bc  fmul    d1, d1, d8
  10002d8c0  adrp    x8, #0x100417000
  10002d8c4  nop
  10002d8c8  ldr     x1, [x8, #0xf48]
  10002d8cc  mov     x0, x19
  10002d8d0  bl      _objc_msgSend                            ; [arg1 setOffsetOvumAndTouch:{([arg1 offsetOvumAndTouch].0 * arg2), ([arg1 offsetOvumAndTouch].1 * arg2)}]
loc_10002d8d4:
  10002d8d4  adrp    x8, #0x100417000
  10002d8d8  nop
  10002d8dc  ldr     x21, [x8, #0xf50]
  10002d8e0  mov     x0, x19
  10002d8e4  mov     x1, x21
  10002d8e8  bl      _objc_msgSend                            ; [arg1 shouldScale]
  10002d8ec  cbz     w0, loc_10002d920                        ; if ([arg1 shouldScale] == 0)
  10002d8f0  adrp    x8, #0x100417000
  10002d8f4  nop
  10002d8f8  ldr     x1, [x8, #0xff0]
  10002d8fc  mov     x0, x19
  10002d900  bl      _objc_msgSend                            ; [arg1 shiftPinchCentroid]
  10002d904  fmul    d0, d0, d8
  10002d908  fmul    d1, d1, d8
  10002d90c  adrp    x8, #0x100417000
  10002d910  nop
  10002d914  ldr     x1, [x8, #0xf58]
  10002d918  mov     x0, x19
  10002d91c  bl      _objc_msgSend                            ; [arg1 setShiftPinchCentroid:{([arg1 shiftPinchCentroid].0 * arg2), ([arg1 shiftPinchCentroid].1 * arg2)}]
loc_10002d920:
  10002d920  adrp    x8, #0x10041f000
  10002d924  ldrsw   x26, [x8, #0x768]                        ; ivar offset OBDragDropManager.currentLocationInOverlayWindow (+0x60)
  10002d928  add     x8, x20, x26
  10002d92c  ldp     d13, d12, [x8]
  10002d930  mov     x0, x19
  10002d934  mov     x1, x22
  10002d938  bl      _objc_msgSend                            ; [arg1 isCentered]
  10002d93c  tbnz    w0, #0, loc_10002d9a4                    ; if (([arg1 isCentered] & 1))
  10002d940  adrp    x8, #0x100417000
  10002d944  nop
  10002d948  ldr     x22, [x8, #0xfe8]
  10002d94c  mov     x0, x19
  10002d950  mov     x1, x22
  10002d954  bl      _objc_msgSend                            ; [arg1 offsetOvumAndTouch]
  10002d958  mov     v9.16b, v0.16b
  10002d95c  adrp    x8, #0x100417000
  10002d960  nop
  10002d964  ldr     x23, [x8, #0x6e0]
  10002d968  mov     x0, x19
  10002d96c  mov     x1, x23
  10002d970  bl      _objc_msgSend                            ; [arg1 scale]
  10002d974  mov     v10.16b, v0.16b
  10002d978  mov     x0, x19
  10002d97c  mov     x1, x22
  10002d980  bl      _objc_msgSend                            ; [arg1 offsetOvumAndTouch]
  10002d984  mov     v11.16b, v1.16b
  10002d988  mov     x0, x19
  10002d98c  mov     x1, x23
  10002d990  bl      _objc_msgSend                            ; [arg1 scale]
  10002d994  fmul    d1, d9, d10
  10002d998  fsub    d13, d13, d1
  10002d99c  fmul    d0, d11, d0
  10002d9a0  fsub    d12, d12, d0
loc_10002d9a4:
  10002d9a4  mov     x0, x19
  10002d9a8  mov     x1, x21
  10002d9ac  bl      _objc_msgSend                            ; [arg1 shouldScale]
  10002d9b0  cbz     w0, loc_10002da18                        ; if ([arg1 shouldScale] == 0)
  10002d9b4  adrp    x8, #0x100417000
  10002d9b8  nop
  10002d9bc  ldr     x21, [x8, #0xff0]
  10002d9c0  mov     x0, x19
  10002d9c4  mov     x1, x21
  10002d9c8  bl      _objc_msgSend                            ; [arg1 shiftPinchCentroid]
  10002d9cc  mov     v9.16b, v0.16b
  10002d9d0  adrp    x8, #0x100417000
  10002d9d4  nop
  10002d9d8  ldr     x22, [x8, #0x6e0]
  10002d9dc  mov     x0, x19
  10002d9e0  mov     x1, x22
  10002d9e4  bl      _objc_msgSend                            ; [arg1 scale]
  10002d9e8  mov     v10.16b, v0.16b
  10002d9ec  mov     x0, x19
  10002d9f0  mov     x1, x21
  10002d9f4  bl      _objc_msgSend                            ; [arg1 shiftPinchCentroid]
  10002d9f8  mov     v11.16b, v1.16b
  10002d9fc  mov     x0, x19
  10002da00  mov     x1, x22
  10002da04  bl      _objc_msgSend                            ; [arg1 scale]
  10002da08  fmul    d1, d9, d10
  10002da0c  fadd    d13, d13, d1
  10002da10  fmul    d0, d11, d0
  10002da14  fadd    d12, d12, d0
loc_10002da18:
  10002da18  adrp    x8, #0x100417000
  10002da1c  nop
  10002da20  ldr     x1, [x8, #0xea8]
  10002da24  mov     x0, x19
  10002da28  bl      _objc_msgSend                            ; [arg1 dragView]
  10002da2c  mov     x29, x29
  10002da30  bl      _objc_retainAutoreleasedReturnValue
  10002da34  mov     x21, x0
  10002da38  adrp    x8, #0x100416000
  10002da3c  nop
  10002da40  ldr     x1, [x8, #0xf38]
  10002da44  bl      _objc_msgSend                            ; [[arg1 dragView] frame]
  10002da48  fmul    d3, d3, d8
  10002da4c  fmul    d2, d2, d8
  10002da50  fmov    d1, #0.50000000
  10002da54  fmul    d0, d2, d1
  10002da58  fsub    d0, d13, d0
  10002da5c  fmul    d1, d3, d1
  10002da60  fsub    d1, d12, d1
  10002da64  adrp    x8, #0x100417000
  10002da68  nop
  10002da6c  ldr     x1, [x8, #0x7b8]
  10002da70  mov     x0, x21
  10002da74  bl      _objc_msgSend                            ; [[arg1 dragView] setFrame:{(d13 - (([[arg1 dragView] frame].2 * arg2) * 0.5)), (d12 - (([[arg1 dragView] frame].3 * arg2) * 0.5)), ([[arg1 dragView] frame].2 * arg2), ([[arg1 dragView] frame].3 * arg2)}]
  10002da78  adrp    x8, #0x100417000
  10002da7c  nop
  10002da80  ldr     x23, [x8, #0xe60]
  10002da84  mov     x0, x19
  10002da88  mov     x1, x23
  10002da8c  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002da90  mov     x29, x29
  10002da94  bl      _objc_retainAutoreleasedReturnValue
  10002da98  mov     x24, x0
  10002da9c  adrp    x8, #0x100417000
  10002daa0  nop
  10002daa4  ldr     x1, [x8, #0xe18]
  10002daa8  bl      _objc_msgSend                            ; [[arg1 currentDropHandlingView] dropZoneHandler]
  10002daac  mov     x29, x29
  10002dab0  bl      _objc_retainAutoreleasedReturnValue
  10002dab4  mov     x22, x0
  10002dab8  mov     x0, x24
  10002dabc  bl      _objc_release
  10002dac0  adrp    x8, #0x100417000
  10002dac4  nop
  10002dac8  ldr     x24, [x8, #0xe88]
  10002dacc  adrp    x8, #0x100417000
  10002dad0  nop
  10002dad4  ldr     x1, [x8, #0xe90]
  10002dad8  mov     x0, x22
  10002dadc  mov     x2, x24
  10002dae0  bl      _objc_msgSend                            ; [[[arg1 currentDropHandlingView] dropZoneHandler] respondsToSelector:@selector(ovumMoved:inView:atLocation:)]
  10002dae4  cbz     w0, loc_10002db94                        ; if ([[[arg1 currentDropHandlingView] dropZoneHandler] respondsToSelector:@selector(ovumMoved:inView:atLocation:)] == 0)
  10002dae8  adrp    x8, #0x10041f000
  10002daec  ldrsw   x8, [x8, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002daf0  ldr     x25, [x20, x8]                           ; x25 = self->overlayWindow
  10002daf4  add     x8, x20, x26
  10002daf8  ldp     d8, d9, [x8]
  10002dafc  mov     x0, x19
  10002db00  mov     x1, x23
  10002db04  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002db08  mov     x29, x29
  10002db0c  bl      _objc_retainAutoreleasedReturnValue
  10002db10  mov     x20, x0
  10002db14  adrp    x8, #0x100417000
  10002db18  nop
  10002db1c  ldr     x1, [x8, #0xe58]
  10002db20  mov     x0, x25
  10002db24  mov     v0.16b, v8.16b
  10002db28  mov     v1.16b, v9.16b
  10002db2c  mov     x2, x20
  10002db30  bl      _objc_msgSend                            ; [self->overlayWindow convertPoint:{self->currentLocationInOverlayWindow.x, self->currentLocationInOverlayWindow.y} toView:[arg1 currentDropHandlingView]]
  10002db34  mov     v8.16b, v0.16b
  10002db38  mov     v9.16b, v1.16b
  10002db3c  mov     x0, x20
  10002db40  bl      _objc_release
  10002db44  mov     x0, x19
  10002db48  mov     x1, x23
  10002db4c  bl      _objc_msgSend                            ; [arg1 currentDropHandlingView]
  10002db50  bl      _objc_retain
  10002db54  mov     x23, x0
  10002db58  mov     x0, x22
  10002db5c  mov     x1, x24
  10002db60  mov     x2, x19
  10002db64  mov     x3, x23
  10002db68  mov     v0.16b, v8.16b
  10002db6c  mov     v1.16b, v9.16b
  10002db70  bl      _objc_msgSend                            ; [[[arg1 currentDropHandlingView] dropZoneHandler] ovumMoved:arg1 inView:[arg1 currentDropHandlingView] atLocation:{[self->overlayWindow convertPoint:{self->currentLocationInOverlayWindow.x, self->currentLocationInOverlayWindow.y} toView:[arg1 currentDropHandlingView]].0, [self->overlayWindow convertPoint:{self->currentLocationInOverlayWindow.x, self->currentLocationInOverlayWindow.y} toView:[arg1 currentDropHandlingView]].1}]
  10002db74  mov     x2, x0
  10002db78  adrp    x8, #0x100417000
  10002db7c  nop
  10002db80  ldr     x1, [x8, #0xe70]
  10002db84  mov     x0, x19
  10002db88  bl      _objc_msgSend                            ; [arg1 setDropAction:[[[arg1 currentDropHandlingView] dropZoneHandler] ovumMoved:arg1 inView:[arg1 currentDropHandlingView] atLocation:{[self->overlayWindow convertPoint:{self->currentLocationInOverlayWindow.x, self->currentLocationInOverlayWindow.y} toView:[arg1 currentDropHandlingView]].0, [self->overlayWindow convertPoint:{self->currentLocationInOverlayWindow.x, self->currentLocationInOverlayWindow.y} toView:[arg1 currentDropHandlingView]].1}]]
  10002db8c  mov     x0, x23
  10002db90  bl      _objc_release
loc_10002db94:
  10002db94  mov     x0, x22
  10002db98  bl      _objc_release
  10002db9c  mov     x0, x21
  10002dba0  bl      _objc_release
loc_10002dba4:
  10002dba4  mov     x0, x19
  10002dba8  ldp     x29, x30, [sp, #0x70]
  10002dbac  ldp     x20, x19, [sp, #0x60]
  10002dbb0  ldp     x22, x21, [sp, #0x50]
  10002dbb4  ldp     x24, x23, [sp, #0x40]
  10002dbb8  ldp     x26, x25, [sp, #0x30]
  10002dbbc  ldp     d9, d8, [sp, #0x20]
  10002dbc0  ldp     d11, d10, [sp, #0x10]
  10002dbc4  ldp     d13, d12, [sp], #0x80
  10002dbc8  b       _objc_release
  10002dbcc  mov     x20, x0
  10002dbd0  b       loc_10002dc20
  10002dbd4  mov     x20, x0
  10002dbd8  b       loc_10002dc18
  10002dbdc  mov     x20, x0
  10002dbe0  b       loc_10002dc10
  10002dbe4  mov     x20, x0
  10002dbe8  mov     x0, x24
  10002dbec  b       loc_10002dc14
  10002dbf0  mov     x20, x0
  10002dbf4  mov     x0, x23
  10002dbf8  bl      _objc_release
  10002dbfc  b       loc_10002dc10
  10002dc00  mov     x1, x20
  10002dc04  mov     x20, x0
  10002dc08  mov     x0, x1
  10002dc0c  bl      _objc_release
loc_10002dc10:
  10002dc10  mov     x0, x22
loc_10002dc14:
  10002dc14  bl      _objc_release
loc_10002dc18:
  10002dc18  mov     x0, x21
  10002dc1c  bl      _objc_release
loc_10002dc20:
  10002dc20  mov     x0, x19
  10002dc24  bl      _objc_release
  10002dc28  mov     x0, x20
  10002dc2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[OBDragDropManager overlayWindow]
; address 0x10002dc30  size 16  kind objc
; ======================================================================
  10002dc30  adrp    x8, #0x10041f000
  10002dc34  ldrsw   x8, [x8, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002dc38  ldr     x0, [x0, x8]                             ; x0 = self->overlayWindow
  10002dc3c  ret

; ======================================================================
; -[OBDragDropManager setOverlayWindow:]
; address 0x10002dc40  size 56  kind objc
; ======================================================================
  10002dc40  stp     x20, x19, [sp, #-0x20]!
  10002dc44  stp     x29, x30, [sp, #0x10]
  10002dc48  add     x29, sp, #0x10
  10002dc4c  mov     x19, x0
  10002dc50  adrp    x8, #0x10041f000
  10002dc54  ldrsw   x20, [x8, #0x760]                        ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002dc58  mov     x0, x2
  10002dc5c  bl      _objc_retain
  10002dc60  ldr     x8, [x19, x20]                           ; x8 = self->overlayWindow
  10002dc64  str     x0, [x19, x20]                           ; self->overlayWindow = arg1
  10002dc68  mov     x0, x8
  10002dc6c  ldp     x29, x30, [sp, #0x10]
  10002dc70  ldp     x20, x19, [sp], #0x20
  10002dc74  b       _objc_release

; ======================================================================
; -[OBDragDropManager currentLocationInHostWindow]
; address 0x10002dc78  size 20  kind objc
; ======================================================================
  10002dc78  adrp    x8, #0x10041f000
  10002dc7c  ldrsw   x8, [x8, #0x764]                         ; ivar offset OBDragDropManager.currentLocationInHostWindow (+0x50)
  10002dc80  add     x8, x0, x8
  10002dc84  ldp     d0, d1, [x8]
  10002dc88  ret

; ======================================================================
; -[OBDragDropManager setCurrentLocationInHostWindow:]
; address 0x10002dc8c  size 20  kind objc
; ======================================================================
  10002dc8c  adrp    x8, #0x10041f000
  10002dc90  ldrsw   x8, [x8, #0x764]                         ; ivar offset OBDragDropManager.currentLocationInHostWindow (+0x50)
  10002dc94  add     x8, x0, x8
  10002dc98  stp     d0, d1, [x8]
  10002dc9c  ret

; ======================================================================
; -[OBDragDropManager currentLocationInOverlayWindow]
; address 0x10002dca0  size 20  kind objc
; ======================================================================
  10002dca0  adrp    x8, #0x10041f000
  10002dca4  ldrsw   x8, [x8, #0x768]                         ; ivar offset OBDragDropManager.currentLocationInOverlayWindow (+0x60)
  10002dca8  add     x8, x0, x8
  10002dcac  ldp     d0, d1, [x8]
  10002dcb0  ret

; ======================================================================
; -[OBDragDropManager setCurrentLocationInOverlayWindow:]
; address 0x10002dcb4  size 20  kind objc
; ======================================================================
  10002dcb4  adrp    x8, #0x10041f000
  10002dcb8  ldrsw   x8, [x8, #0x768]                         ; ivar offset OBDragDropManager.currentLocationInOverlayWindow (+0x60)
  10002dcbc  add     x8, x0, x8
  10002dcc0  stp     d0, d1, [x8]
  10002dcc4  ret

; ======================================================================
; -[OBDragDropManager .cxx_destruct]
; address 0x10002dcc8  size 20  kind objc
; ======================================================================
  10002dcc8  mov     x1, #0
  10002dccc  adrp    x8, #0x10041f000
  10002dcd0  ldrsw   x8, [x8, #0x760]                         ; ivar offset OBDragDropManager.overlayWindow (+0x48)
  10002dcd4  add     x0, x0, x8
  10002dcd8  b       _objc_storeStrong

; ======================================================================
; -[OBDragDropManager .cxx_construct]
; address 0x10002dcdc  size 4  kind objc
; ======================================================================
  10002dcdc  ret
