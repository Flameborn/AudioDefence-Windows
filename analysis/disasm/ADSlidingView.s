// unit ADSlidingView — 19 functions
//   0x10004f17c      20  -[ADSlidingView awakeFromNib]
//   0x10004f190     832  -[ADSlidingView slide]
//   0x10004f4d0      48  -[ADSlidingView slide]_block_invoke
//   0x10004f500       8  sub_10004f500
//   0x10004f508       8  sub_10004f508
//   0x10004f510     244  -[ADSlidingView slide]_block_invoke_2
//   0x10004f604      36  -[ADSlidingView slide]_block_invoke_2_block_invoke
//   0x10004f628       8  sub_10004f628
//   0x10004f630       8  sub_10004f630
//   0x10004f638       8  sub_10004f638
//   0x10004f640       8  sub_10004f640
//   0x10004f648      16  -[ADSlidingView slideCompletion]
//   0x10004f658      12  -[ADSlidingView setSlideCompletion:]
//   0x10004f664      16  -[ADSlidingView xCenter]
//   0x10004f674      56  -[ADSlidingView setXCenter:]
//   0x10004f6ac      16  -[ADSlidingView yCenter]
//   0x10004f6bc      56  -[ADSlidingView setYCenter:]
//   0x10004f6f4      84  -[ADSlidingView .cxx_destruct]
//   0x10004f748       4  -[ADSlidingView .cxx_construct]

; ======================================================================
; -[ADSlidingView awakeFromNib]
; address 0x10004f17c  size 20  kind objc
; ======================================================================
  10004f17c  adrp    x8, #0x100417000
  10004f180  nop
  10004f184  ldr     x1, [x8, #0x828]
  10004f188  movi    v0.16b, #0
  10004f18c  b       _objc_msgSend                            ; [self setAlpha:0]

; ======================================================================
; -[ADSlidingView slide]
; address 0x10004f190  size 832  kind objc
; ======================================================================
  10004f190  stp     d9, d8, [sp, #-0x50]!
  10004f194  stp     x24, x23, [sp, #0x10]
  10004f198  stp     x22, x21, [sp, #0x20]
  10004f19c  stp     x20, x19, [sp, #0x30]
  10004f1a0  stp     x29, x30, [sp, #0x40]
  10004f1a4  add     x29, sp, #0x40
  10004f1a8  sub     sp, sp, #0x60
  10004f1ac  mov     x19, x0
  10004f1b0  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10004f1b4  tbz     w0, #0, loc_10004f228                    ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  10004f1b8  adrp    x8, #0x100417000
  10004f1bc  nop
  10004f1c0  ldr     x1, [x8, #0x828]
  10004f1c4  fmov    d0, #1.00000000
  10004f1c8  mov     x0, x19
  10004f1cc  bl      _objc_msgSend                            ; [self setAlpha:1]
  10004f1d0  adrp    x8, #0x10041f000
  10004f1d4  ldrsw   x8, [x8, #0xa50]                         ; ivar offset ADSlidingView._slideCompletion (+0x78)
  10004f1d8  ldr     x8, [x19, x8]                            ; x8 = self->_slideCompletion
  10004f1dc  cbz     x8, loc_10004f468                        ; if (self->_slideCompletion == 0)
  10004f1e0  adrp    x8, #0x100418000
  10004f1e4  nop
  10004f1e8  ldr     x1, [x8, #0xc98]
  10004f1ec  mov     x0, x19
  10004f1f0  bl      _objc_msgSend                            ; [self slideCompletion]
  10004f1f4  mov     x29, x29
  10004f1f8  bl      _objc_retainAutoreleasedReturnValue
  10004f1fc  mov     x20, x0
  10004f200  ldr     x8, [x20, #0x10]                         ; x8 = [self slideCompletion][+0x10]
  10004f204  blr     x8                                       ; call [self slideCompletion][+0x10]
  10004f208  mov     x0, x20
  10004f20c  sub     sp, x29, #0x40
  10004f210  ldp     x29, x30, [sp, #0x40]
  10004f214  ldp     x20, x19, [sp, #0x30]
  10004f218  ldp     x22, x21, [sp, #0x20]
  10004f21c  ldp     x24, x23, [sp, #0x10]
  10004f220  ldp     d9, d8, [sp], #0x50
  10004f224  b       _objc_release
loc_10004f228:
  10004f228  adrp    x8, #0x100418000
  10004f22c  nop
  10004f230  ldr     x20, [x8, #0xc88]
  10004f234  mov     x0, x19
  10004f238  mov     x1, x20
  10004f23c  bl      _objc_msgSend                            ; [self xCenter]
  10004f240  mov     x29, x29
  10004f244  bl      _objc_retainAutoreleasedReturnValue
  10004f248  mov     x21, x0
  10004f24c  cbz     x21, loc_10004f27c                       ; if ([self xCenter] == 0)
  10004f250  adrp    x8, #0x100418000
  10004f254  nop
  10004f258  ldr     x1, [x8, #0xc90]
  10004f25c  mov     x0, x19
  10004f260  bl      _objc_msgSend                            ; [self yCenter]
  10004f264  mov     x29, x29
  10004f268  bl      _objc_retainAutoreleasedReturnValue
  10004f26c  cmp     x0, #0
  10004f270  cset    w22, ne
  10004f274  bl      _objc_release
  10004f278  b       loc_10004f280
loc_10004f27c:
  10004f27c  mov     w22, #0
loc_10004f280:
  10004f280  mov     x0, x21
  10004f284  bl      _objc_release
  10004f288  adrp    x8, #0x10041f000
  10004f28c  ldrsw   x23, [x8, #0xa4c]                        ; ivar offset ADSlidingView.originalCenter (+0x68)
  10004f290  cbz     w22, loc_10004f310                       ; if (w22 == 0)
  10004f294  mov     x0, x19
  10004f298  mov     x1, x20
  10004f29c  bl      _objc_msgSend                            ; [self xCenter]
  10004f2a0  mov     x29, x29
  10004f2a4  bl      _objc_retainAutoreleasedReturnValue
  10004f2a8  mov     x20, x0
  10004f2ac  adrp    x8, #0x100417000
  10004f2b0  nop
  10004f2b4  ldr     x21, [x8, #0x48]
  10004f2b8  mov     x1, x21
  10004f2bc  bl      _objc_msgSend                            ; [[self xCenter] floatValue]
  10004f2c0  mov     v8.16b, v0.16b
  10004f2c4  adrp    x8, #0x100418000
  10004f2c8  nop
  10004f2cc  ldr     x1, [x8, #0xc90]
  10004f2d0  mov     x0, x19
  10004f2d4  bl      _objc_msgSend                            ; [self yCenter]
  10004f2d8  mov     x29, x29
  10004f2dc  bl      _objc_retainAutoreleasedReturnValue
  10004f2e0  mov     x22, x0
  10004f2e4  mov     x1, x21
  10004f2e8  bl      _objc_msgSend                            ; [[self yCenter] floatValue]
  10004f2ec  fcvt    d1, s8
  10004f2f0  fcvt    d0, s0
  10004f2f4  add     x8, x19, x23
  10004f2f8  stp     d1, d0, [x8]
  10004f2fc  mov     x0, x22
  10004f300  bl      _objc_release
  10004f304  mov     x0, x20
  10004f308  bl      _objc_release
  10004f30c  b       loc_10004f330
loc_10004f310:
  10004f310  adrp    x8, #0x100417000
  10004f314  nop
  10004f318  ldr     x1, [x8, #0x688]
  10004f31c  mov     x0, x19
  10004f320  bl      _objc_msgSend                            ; [self center]
  10004f324  add     x8, x19, x23
  10004f328  str     d0, [x8]                                 ; self->originalCenter.x = [self center].0
  10004f32c  str     d1, [x8, #8]                             ; self->originalCenter.y = [self center].1
loc_10004f330:
  10004f330  adrp    x8, #0x100417000
  10004f334  nop
  10004f338  ldr     x20, [x8, #0x688]
  10004f33c  mov     x0, x19
  10004f340  mov     x1, x20
  10004f344  bl      _objc_msgSend                            ; [self center]
  10004f348  mov     v8.16b, v0.16b
  10004f34c  mov     x0, x19
  10004f350  mov     x1, x20
  10004f354  bl      _objc_msgSend                            ; [self center]
  10004f358  mov     v9.16b, v1.16b
  10004f35c  adrp    x8, #0x100416000
  10004f360  nop
  10004f364  ldr     x20, [x8, #0xf38]
  10004f368  mov     x0, x19
  10004f36c  mov     x1, x20
  10004f370  bl      _objc_msgSend                            ; [self frame]
  10004f374  fsub    d1, d9, d3
  10004f378  adrp    x8, #0x100417000
  10004f37c  nop
  10004f380  ldr     x1, [x8, #0x1f8]
  10004f384  mov     x0, x19
  10004f388  mov     v0.16b, v8.16b
  10004f38c  bl      _objc_msgSend                            ; [self setCenter:{[self center].0, ([self center].1 - [self frame].3)}]
  10004f390  mov     x0, x19
  10004f394  mov     x1, x20
  10004f398  bl      _objc_msgSend                            ; [self frame]
  10004f39c  adrp    x8, #0x100181000
  10004f3a0  ldr     d0, [x8, #0x9e0]                         ; d0 = 0.1
  10004f3a4  fmul    d8, d3, d0
  10004f3a8  adrp    x8, #0x100417000
  10004f3ac  nop
  10004f3b0  ldr     x1, [x8, #0x828]
  10004f3b4  fmov    d0, #1.00000000
  10004f3b8  mov     x0, x19
  10004f3bc  bl      _objc_msgSend                            ; [self setAlpha:1]
  10004f3c0  adrp    x21, #0x1003b0000
  10004f3c4  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10004f3c8  adrp    x8, #0x10041d000
  10004f3cc  ldr     x20, [x8, #0xf98]                        ; class UIView
  10004f3d0  mov     w22, #-0x3e000000
  10004f3d4  str     x21, [sp, #0x30]
  10004f3d8  stp     w22, wzr, [sp, #0x38]
  10004f3dc  adr     x8, #0x10004f4d0                         ; &-[ADSlidingView slide]_block_invoke
  10004f3e0  nop
  10004f3e4  str     x8, [sp, #0x40]
  10004f3e8  adrp    x8, #0x1003b1000
  10004f3ec  add     x8, x8, #0x900                           ; &d_1003b1900
  10004f3f0  str     x8, [sp, #0x48]
  10004f3f4  mov     x0, x19
  10004f3f8  bl      _objc_retain
  10004f3fc  str     x0, [sp, #0x50]
  10004f400  str     d8, [sp, #0x58]
  10004f404  str     x21, [sp, #8]
  10004f408  stp     w22, wzr, [sp, #0x10]
  10004f40c  adr     x8, #0x10004f510                         ; &-[ADSlidingView slide]_block_invoke_2
  10004f410  nop
  10004f414  str     x8, [sp, #0x18]
  10004f418  adrp    x8, #0x1003b1000
  10004f41c  add     x8, x8, #0x960                           ; &d_1003b1960
  10004f420  str     x8, [sp, #0x20]
  10004f424  bl      _objc_retain
  10004f428  str     x0, [sp, #0x28]
  10004f42c  adrp    x8, #0x100417000
  10004f430  nop
  10004f434  ldr     x1, [x8, #0x8f0]
  10004f438  adrp    x8, #0x100181000
  10004f43c  ldr     d0, [x8, #0xbf0]                         ; d0 = 0.300000012
  10004f440  fmov    d1, #0.50000000
  10004f444  mov     w2, #1
  10004f448  add     x3, sp, #0x30
  10004f44c  add     x4, sp, #8
  10004f450  mov     x0, x20
  10004f454  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.3 delay:0.5 options:1 animations:^{-[ADSlidingView slide]_block_invoke captures +0x20=self, +0x28=([self frame].3 * 0.1)} completion:^{-[ADSlidingView slide]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADSlidingView slide]_block_invoke, +0x40=&d_1003b1900, +0x48=self, +0x50=([self frame].3 * 0.1)}]
  10004f458  ldr     x0, [sp, #0x28]
  10004f45c  bl      _objc_release
  10004f460  ldr     x0, [sp, #0x50]
  10004f464  bl      _objc_release
loc_10004f468:
  10004f468  sub     sp, x29, #0x40
  10004f46c  ldp     x29, x30, [sp, #0x40]
  10004f470  ldp     x20, x19, [sp, #0x30]
  10004f474  ldp     x22, x21, [sp, #0x20]
  10004f478  ldp     x24, x23, [sp, #0x10]
  10004f47c  ldp     d9, d8, [sp], #0x50
  10004f480  ret
  10004f484  mov     x19, x0
  10004f488  b       loc_10004f4c0
  10004f48c  mov     x19, x0
  10004f490  ldr     x0, [sp, #0x28]
  10004f494  bl      _objc_release
  10004f498  ldr     x0, [sp, #0x50]
  10004f49c  b       loc_10004f4c4
  10004f4a0  mov     x19, x0
  10004f4a4  b       loc_10004f4c0
  10004f4a8  mov     x19, x0
  10004f4ac  mov     x0, x21
  10004f4b0  b       loc_10004f4c4
  10004f4b4  mov     x19, x0
  10004f4b8  mov     x0, x22
  10004f4bc  bl      _objc_release
loc_10004f4c0:
  10004f4c0  mov     x0, x20
loc_10004f4c4:
  10004f4c4  bl      _objc_release
  10004f4c8  mov     x0, x19
  10004f4cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSlidingView slide]_block_invoke
; address 0x10004f4d0  size 48  kind block
; ======================================================================
  10004f4d0  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  10004f4d4  adrp    x9, #0x10041f000
  10004f4d8  ldrsw   x9, [x9, #0xa4c]                         ; ivar offset ADSlidingView.originalCenter (+0x68)
  10004f4dc  add     x9, x8, x9
  10004f4e0  ldp     d0, d1, [x9]
  10004f4e4  ldr     d2, [x0, #0x28]                          ; d2 = captured ([self frame].3 * 0.1)
  10004f4e8  adrp    x9, #0x100417000
  10004f4ec  nop
  10004f4f0  fadd    d1, d1, d2
  10004f4f4  ldr     x1, [x9, #0x1f8]
  10004f4f8  mov     x0, x8
  10004f4fc  b       _objc_msgSend                            ; [self setCenter:{self->originalCenter.x, (self->originalCenter.y + ([self frame].3 * 0.1))}]

; ======================================================================
; sub_10004f500
; address 0x10004f500  size 8  kind sub
; ======================================================================
  10004f500  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10004f504  b       _objc_retain

; ======================================================================
; sub_10004f508
; address 0x10004f508  size 8  kind sub
; ======================================================================
  10004f508  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10004f50c  b       _objc_release

; ======================================================================
; -[ADSlidingView slide]_block_invoke_2
; address 0x10004f510  size 244  kind block
; ======================================================================
  10004f510  stp     x20, x19, [sp, #-0x20]!
  10004f514  stp     x29, x30, [sp, #0x10]
  10004f518  add     x29, sp, #0x10
  10004f51c  sub     sp, sp, #0x30
  10004f520  mov     x19, x0
  10004f524  adrp    x8, #0x10041d000
  10004f528  adrp    x9, #0x1003b0000
  10004f52c  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  10004f530  ldr     x20, [x8, #0xf98]                        ; class UIView
  10004f534  str     x9, [sp, #8]
  10004f538  mov     w8, #-0x3e000000
  10004f53c  stp     w8, wzr, [sp, #0x10]
  10004f540  adr     x8, #0x10004f604                         ; &-[ADSlidingView slide]_block_invoke_2_block_invoke
  10004f544  nop
  10004f548  str     x8, [sp, #0x18]
  10004f54c  adrp    x8, #0x1003b1000
  10004f550  add     x8, x8, #0x930                           ; &d_1003b1930
  10004f554  str     x8, [sp, #0x20]
  10004f558  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10004f55c  bl      _objc_retain
  10004f560  str     x0, [sp, #0x28]
  10004f564  adrp    x8, #0x100418000
  10004f568  nop
  10004f56c  ldr     x1, [x8, #0x3b8]
  10004f570  adrp    x8, #0x100181000
  10004f574  ldr     d0, [x8, #0x9e0]                         ; d0 = 0.1
  10004f578  add     x2, sp, #8
  10004f57c  mov     x0, x20
  10004f580  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.1 animations:^{-[ADSlidingView slide]_block_invoke_2_block_invoke captures +0x20=self}]
  10004f584  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10004f588  adrp    x8, #0x10041f000
  10004f58c  ldrsw   x8, [x8, #0xa50]                         ; ivar offset ADSlidingView._slideCompletion (+0x78)
  10004f590  ldr     x8, [x0, x8]                             ; x8 = self->_slideCompletion
  10004f594  cbz     x8, loc_10004f5c4                        ; if (self->_slideCompletion == 0)
  10004f598  adrp    x8, #0x100418000
  10004f59c  nop
  10004f5a0  ldr     x1, [x8, #0xc98]
  10004f5a4  bl      _objc_msgSend                            ; [self slideCompletion]
  10004f5a8  mov     x29, x29
  10004f5ac  bl      _objc_retainAutoreleasedReturnValue
  10004f5b0  mov     x19, x0
  10004f5b4  ldr     x8, [x19, #0x10]                         ; x8 = [self slideCompletion][+0x10]
  10004f5b8  blr     x8                                       ; call [self slideCompletion][+0x10]
  10004f5bc  mov     x0, x19
  10004f5c0  bl      _objc_release
loc_10004f5c4:
  10004f5c4  ldr     x0, [sp, #0x28]
  10004f5c8  bl      _objc_release
  10004f5cc  sub     sp, x29, #0x10
  10004f5d0  ldp     x29, x30, [sp, #0x10]
  10004f5d4  ldp     x20, x19, [sp], #0x20
  10004f5d8  ret
  10004f5dc  mov     x19, x0
  10004f5e0  b       loc_10004f5f4
  10004f5e4  mov     x8, x19
  10004f5e8  mov     x19, x0
  10004f5ec  mov     x0, x8
  10004f5f0  bl      _objc_release
loc_10004f5f4:
  10004f5f4  ldr     x0, [sp, #0x28]
  10004f5f8  bl      _objc_release
  10004f5fc  mov     x0, x19
  10004f600  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSlidingView slide]_block_invoke_2_block_invoke
; address 0x10004f604  size 36  kind block
; ======================================================================
  10004f604  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10004f608  adrp    x8, #0x10041f000
  10004f60c  ldrsw   x8, [x8, #0xa4c]                         ; ivar offset ADSlidingView.originalCenter (+0x68)
  10004f610  add     x8, x0, x8
  10004f614  adrp    x9, #0x100417000
  10004f618  nop
  10004f61c  ldp     d0, d1, [x8]
  10004f620  ldr     x1, [x9, #0x1f8]
  10004f624  b       _objc_msgSend                            ; [self setCenter:{self->originalCenter.x, self->originalCenter.y}]

; ======================================================================
; sub_10004f628
; address 0x10004f628  size 8  kind sub
; ======================================================================
  10004f628  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10004f62c  b       _objc_retain

; ======================================================================
; sub_10004f630
; address 0x10004f630  size 8  kind sub
; ======================================================================
  10004f630  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10004f634  b       _objc_release

; ======================================================================
; sub_10004f638
; address 0x10004f638  size 8  kind sub
; ======================================================================
  10004f638  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10004f63c  b       _objc_retain

; ======================================================================
; sub_10004f640
; address 0x10004f640  size 8  kind sub
; ======================================================================
  10004f640  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10004f644  b       _objc_release

; ======================================================================
; -[ADSlidingView slideCompletion]
; address 0x10004f648  size 16  kind objc
; ======================================================================
  10004f648  mov     w3, #0
  10004f64c  adrp    x8, #0x10041f000
  10004f650  ldrsw   x2, [x8, #0xa50]                         ; ivar offset ADSlidingView._slideCompletion (+0x78)
  10004f654  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[ADSlidingView setSlideCompletion:]
; address 0x10004f658  size 12  kind objc
; ======================================================================
  10004f658  adrp    x8, #0x10041f000
  10004f65c  ldrsw   x3, [x8, #0xa50]                         ; ivar offset ADSlidingView._slideCompletion (+0x78)
  10004f660  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[ADSlidingView xCenter]
; address 0x10004f664  size 16  kind objc
; ======================================================================
  10004f664  adrp    x8, #0x10041f000
  10004f668  ldrsw   x8, [x8, #0xa54]                         ; ivar offset ADSlidingView._xCenter (+0x80)
  10004f66c  ldr     x0, [x0, x8]                             ; x0 = self->_xCenter
  10004f670  ret

; ======================================================================
; -[ADSlidingView setXCenter:]
; address 0x10004f674  size 56  kind objc
; ======================================================================
  10004f674  stp     x20, x19, [sp, #-0x20]!
  10004f678  stp     x29, x30, [sp, #0x10]
  10004f67c  add     x29, sp, #0x10
  10004f680  mov     x19, x0
  10004f684  adrp    x8, #0x10041f000
  10004f688  ldrsw   x20, [x8, #0xa54]                        ; ivar offset ADSlidingView._xCenter (+0x80)
  10004f68c  mov     x0, x2
  10004f690  bl      _objc_retain
  10004f694  ldr     x8, [x19, x20]                           ; x8 = self->_xCenter
  10004f698  str     x0, [x19, x20]                           ; self->_xCenter = arg1
  10004f69c  mov     x0, x8
  10004f6a0  ldp     x29, x30, [sp, #0x10]
  10004f6a4  ldp     x20, x19, [sp], #0x20
  10004f6a8  b       _objc_release

; ======================================================================
; -[ADSlidingView yCenter]
; address 0x10004f6ac  size 16  kind objc
; ======================================================================
  10004f6ac  adrp    x8, #0x10041f000
  10004f6b0  ldrsw   x8, [x8, #0xa58]                         ; ivar offset ADSlidingView._yCenter (+0x88)
  10004f6b4  ldr     x0, [x0, x8]                             ; x0 = self->_yCenter
  10004f6b8  ret

; ======================================================================
; -[ADSlidingView setYCenter:]
; address 0x10004f6bc  size 56  kind objc
; ======================================================================
  10004f6bc  stp     x20, x19, [sp, #-0x20]!
  10004f6c0  stp     x29, x30, [sp, #0x10]
  10004f6c4  add     x29, sp, #0x10
  10004f6c8  mov     x19, x0
  10004f6cc  adrp    x8, #0x10041f000
  10004f6d0  ldrsw   x20, [x8, #0xa58]                        ; ivar offset ADSlidingView._yCenter (+0x88)
  10004f6d4  mov     x0, x2
  10004f6d8  bl      _objc_retain
  10004f6dc  ldr     x8, [x19, x20]                           ; x8 = self->_yCenter
  10004f6e0  str     x0, [x19, x20]                           ; self->_yCenter = arg1
  10004f6e4  mov     x0, x8
  10004f6e8  ldp     x29, x30, [sp, #0x10]
  10004f6ec  ldp     x20, x19, [sp], #0x20
  10004f6f0  b       _objc_release

; ======================================================================
; -[ADSlidingView .cxx_destruct]
; address 0x10004f6f4  size 84  kind objc
; ======================================================================
  10004f6f4  stp     x20, x19, [sp, #-0x20]!
  10004f6f8  stp     x29, x30, [sp, #0x10]
  10004f6fc  add     x29, sp, #0x10
  10004f700  mov     x19, x0
  10004f704  adrp    x8, #0x10041f000
  10004f708  ldrsw   x8, [x8, #0xa58]                         ; ivar offset ADSlidingView._yCenter (+0x88)
  10004f70c  add     x0, x19, x8
  10004f710  mov     x1, #0
  10004f714  bl      _objc_storeStrong
  10004f718  adrp    x8, #0x10041f000
  10004f71c  ldrsw   x8, [x8, #0xa54]                         ; ivar offset ADSlidingView._xCenter (+0x80)
  10004f720  add     x0, x19, x8
  10004f724  mov     x1, #0
  10004f728  bl      _objc_storeStrong
  10004f72c  mov     x1, #0
  10004f730  adrp    x8, #0x10041f000
  10004f734  ldrsw   x8, [x8, #0xa50]                         ; ivar offset ADSlidingView._slideCompletion (+0x78)
  10004f738  add     x0, x19, x8
  10004f73c  ldp     x29, x30, [sp, #0x10]
  10004f740  ldp     x20, x19, [sp], #0x20
  10004f744  b       _objc_storeStrong

; ======================================================================
; -[ADSlidingView .cxx_construct]
; address 0x10004f748  size 4  kind objc
; ======================================================================
  10004f748  ret
