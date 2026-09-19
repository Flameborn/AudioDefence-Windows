// unit TAGDataProvider — 42 functions
//   0x10010d1bc     224  -[TAGDataProvider updateFailedHits:]
//   0x10010d29c     552  -[TAGDataProvider updateFailedHits:]_block_invoke
//   0x10010d4c4      40  sub_10010d4c4
//   0x10010d4ec      40  sub_10010d4ec
//   0x10010d514     232  -[TAGDataProvider addHitWithURLString:]
//   0x10010d5fc     352  -[TAGDataProvider addHitWithURLString:]_block_invoke
//   0x10010d75c      40  sub_10010d75c
//   0x10010d784      40  sub_10010d784
//   0x10010d7ac     236  -[TAGDataProvider fetchHitsWithLimit:completion:]
//   0x10010d898     380  -[TAGDataProvider fetchHitsWithLimit:completion:]_block_invoke
//   0x10010da14      52  sub_10010da14
//   0x10010da48      40  sub_10010da48
//   0x10010da70     236  -[TAGDataProvider fetchNotRecentlyAttemptedHitsWithLimit:completion:]
//   0x10010db5c     464  -[TAGDataProvider fetchNotRecentlyAttemptedHitsWithLimit:completion:]_block_invoke
//   0x10010dd2c      52  sub_10010dd2c
//   0x10010dd60      40  sub_10010dd60
//   0x10010dd88     232  -[TAGDataProvider deleteHits:]
//   0x10010de70     468  -[TAGDataProvider deleteHits:]_block_invoke
//   0x10010e044      40  sub_10010e044
//   0x10010e06c      40  sub_10010e06c
//   0x10010e094     152  -[TAGDataProvider onExit:]
//   0x10010e12c      64  -[TAGDataProvider onExit:]_block_invoke
//   0x10010e16c       8  sub_10010e16c
//   0x10010e174       8  sub_10010e174
//   0x10010e17c     508  -[TAGDataProvider context:deleteRequest:error:]
//   0x10010e378     708  -[TAGDataProvider deleteExcessHits:]
//   0x10010e63c     176  -[TAGDataProvider context:hitCount:]
//   0x10010e6ec     432  -[TAGDataProvider save]
//   0x10010e89c     488  -[TAGDataProvider init]
//   0x10010ea84     236  -[TAGDataProvider init]_block_invoke
//   0x10010eb70       8  sub_10010eb70
//   0x10010eb78       8  sub_10010eb78
//   0x10010eb80     220  -[TAGDataProvider dealloc]
//   0x10010ec5c      16  -[TAGDataProvider hasHits]
//   0x10010ec6c      16  -[TAGDataProvider setHasHits:]
//   0x10010ec7c      16  -[TAGDataProvider maxHitCount]
//   0x10010ec8c      16  -[TAGDataProvider setMaxHitCount:]
//   0x10010ec9c      16  -[TAGDataProvider maxHitAge]
//   0x10010ecac      16  -[TAGDataProvider setMaxHitAge:]
//   0x10010ecbc      16  -[TAGDataProvider context]
//   0x10010eccc      56  -[TAGDataProvider setContext:]
//   0x10010ed04      20  -[TAGDataProvider .cxx_destruct]

; ======================================================================
; -[TAGDataProvider updateFailedHits:]
; address 0x10010d1bc  size 224  kind objc
; ======================================================================
  10010d1bc  stp     x29, x30, [sp, #-0x10]!
  10010d1c0  mov     x29, sp
  10010d1c4  stp     x20, x19, [sp, #-0x10]!
  10010d1c8  stp     x22, x21, [sp, #-0x10]!
  10010d1cc  sub     sp, sp, #0x30
  10010d1d0  mov     x20, x0
  10010d1d4  mov     x0, x2
  10010d1d8  bl      _objc_retain
  10010d1dc  adrp    x8, #0x1003b0000
  10010d1e0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010d1e4  adrp    x9, #0x10041e000
  10010d1e8  ldr     x21, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010d1ec  mov     w9, #-0x3e000000
  10010d1f0  str     x8, [sp]
  10010d1f4  stp     w9, wzr, [sp, #8]
  10010d1f8  adr     x8, #0x10010d29c                         ; &-[TAGDataProvider updateFailedHits:]_block_invoke
  10010d1fc  nop
  10010d200  str     x8, [sp, #0x10]
  10010d204  adrp    x8, #0x1003b7000
  10010d208  add     x8, x8, #0x8d0                           ; &d_1003b78d0
  10010d20c  str     x8, [sp, #0x18]
  10010d210  bl      _objc_retain
  10010d214  mov     x19, x0
  10010d218  str     x19, [sp, #0x20]
  10010d21c  mov     x0, x20
  10010d220  bl      _objc_retain
  10010d224  str     x0, [sp, #0x28]
  10010d228  adrp    x8, #0x10041b000
  10010d22c  nop
  10010d230  ldr     x1, [x8, #0x970]
  10010d234  mov     w3, #0
  10010d238  mov     x2, sp
  10010d23c  mov     x0, x21
  10010d240  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider updateFailedHits:]_block_invoke captures +0x20=arg1, +0x28=self} wait:0]
  10010d244  ldr     x0, [sp, #0x28]
  10010d248  bl      _objc_release
  10010d24c  ldr     x0, [sp, #0x20]
  10010d250  bl      _objc_release
  10010d254  mov     x0, x19
  10010d258  bl      _objc_release
  10010d25c  sub     sp, x29, #0x20
  10010d260  ldp     x22, x21, [sp], #0x10
  10010d264  ldp     x20, x19, [sp], #0x10
  10010d268  ldp     x29, x30, [sp], #0x10
  10010d26c  ret
  10010d270  mov     x20, x0
  10010d274  ldr     x8, [sp, #0x28]
  10010d278  mov     x0, x8
  10010d27c  bl      _objc_release
  10010d280  ldr     x8, [sp, #0x20]
  10010d284  mov     x0, x8
  10010d288  bl      _objc_release
  10010d28c  mov     x0, x19
  10010d290  bl      _objc_release
  10010d294  mov     x0, x20
  10010d298  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider updateFailedHits:]_block_invoke
; address 0x10010d29c  size 552  kind block
; ======================================================================
  10010d29c  stp     x29, x30, [sp, #-0x10]!
  10010d2a0  mov     x29, sp
  10010d2a4  stp     x20, x19, [sp, #-0x10]!
  10010d2a8  stp     x22, x21, [sp, #-0x10]!
  10010d2ac  stp     x24, x23, [sp, #-0x10]!
  10010d2b0  stp     x26, x25, [sp, #-0x10]!
  10010d2b4  stp     x28, x27, [sp, #-0x10]!
  10010d2b8  sub     sp, sp, #0xf0
  10010d2bc  mov     x22, x0
  10010d2c0  str     x22, [sp, #0x18]
  10010d2c4  adrp    x8, #0x1003b0000
  10010d2c8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10010d2cc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10010d2d0  stur    x8, [x29, #-0x58]
  10010d2d4  adrp    x8, #0x10041e000
  10010d2d8  ldr     x0, [x8, #0x38]                          ; class NSDate
  10010d2dc  adrp    x8, #0x100418000
  10010d2e0  nop
  10010d2e4  ldr     x1, [x8, #0x158]
  10010d2e8  bl      _objc_msgSend                            ; [NSDate date]
  10010d2ec  mov     x29, x29
  10010d2f0  bl      _objc_retainAutoreleasedReturnValue
  10010d2f4  mov     x19, x0
  10010d2f8  stp     xzr, xzr, [x29, #-0x68]
  10010d2fc  stp     xzr, xzr, [x29, #-0x78]
  10010d300  stp     xzr, xzr, [x29, #-0x88]
  10010d304  stp     xzr, xzr, [x29, #-0x98]
  10010d308  ldr     x0, [x22, #0x20]                         ; x0 = captured arg1
  10010d30c  bl      _objc_retain
  10010d310  mov     x21, x0
  10010d314  adrp    x8, #0x100416000
  10010d318  nop
  10010d31c  ldr     x1, [x8, #0xe00]
  10010d320  str     x1, [sp, #0x20]
  10010d324  sub     x2, x29, #0x98
  10010d328  add     x3, sp, #0x28
  10010d32c  mov     x4, #0x10
  10010d330  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10010d334  mov     x23, x0
  10010d338  cbz     x23, loc_10010d408                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] == 0)
  10010d33c  ldur    x8, [x29, #-0x88]
  10010d340  ldr     x20, [x8]
  10010d344  adrp    x8, #0x10041b000
  10010d348  nop
  10010d34c  ldr     x24, [x8, #0x950]
  10010d350  adrp    x8, #0x10041b000
  10010d354  nop
  10010d358  ldr     x25, [x8, #0x958]
  10010d35c  adrp    x8, #0x10041b000
  10010d360  nop
  10010d364  ldr     x26, [x8, #0x960]
  10010d368  sub     x8, x29, #0x98
  10010d36c  str     x8, [sp, #0x10]
  10010d370  add     x8, sp, #0x28
  10010d374  str     x8, [sp, #8]
loc_10010d378:
  10010d378  mov     x22, #0
loc_10010d37c:
  10010d37c  ldur    x8, [x29, #-0x88]
  10010d380  ldr     x8, [x8]
  10010d384  cmp     x8, x20
  10010d388  b.eq    loc_10010d394                            ; if (x8 == x20)
  10010d38c  mov     x0, x21
  10010d390  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10010d394:
  10010d394  ldur    x8, [x29, #-0x90]
  10010d398  ldr     x27, [x8, x22, lsl #3]
  10010d39c  mov     x0, x27
  10010d3a0  mov     x1, x24
  10010d3a4  bl      _objc_msgSend                            ; [x0 dispatchTime]
  10010d3a8  mov     x29, x29
  10010d3ac  bl      _objc_retainAutoreleasedReturnValue
  10010d3b0  mov     x28, x0
  10010d3b4  bl      _objc_release
  10010d3b8  cbnz    x28, loc_10010d3cc                       ; if ([x0 dispatchTime] != 0)
  10010d3bc  mov     x0, x27
  10010d3c0  mov     x1, x25
  10010d3c4  mov     x2, x19
  10010d3c8  bl      _objc_msgSend                            ; [x0 setDispatchTime:[NSDate date]]
loc_10010d3cc:
  10010d3cc  mov     x0, x27
  10010d3d0  mov     x1, x26
  10010d3d4  mov     x2, x19
  10010d3d8  bl      _objc_msgSend                            ; [x0 setLastDispatchTime:[NSDate date]]
  10010d3dc  add     x22, x22, #1
  10010d3e0  cmp     x22, x23
  10010d3e4  b.lo    loc_10010d37c                            ; if ((x22 + 1) <u [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16])
  10010d3e8  mov     x4, #0x10
  10010d3ec  mov     x0, x21
  10010d3f0  ldr     x1, [sp, #0x20]
  10010d3f4  ldp     x3, x2, [sp, #8]
  10010d3f8  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16]
  10010d3fc  mov     x23, x0
  10010d400  ldr     x22, [sp, #0x18]
  10010d404  cbnz    x23, loc_10010d378                       ; if ([arg1 countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x28] count:16] != 0)
loc_10010d408:
  10010d408  mov     x0, x21
  10010d40c  bl      _objc_release
  10010d410  ldr     x0, [x22, #0x28]                         ; x0 = captured self
  10010d414  adrp    x8, #0x10041b000
  10010d418  nop
  10010d41c  ldr     x1, [x8, #0x968]
  10010d420  adrp    x20, #0x1003b0000
  10010d424  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  10010d428  bl      _objc_msgSend                            ; [self save]
  10010d42c  mov     x0, x19
  10010d430  bl      _objc_release
  10010d434  b       loc_10010d46c
loc_10010d438:
  10010d438  mov     x22, x1
  10010d43c  mov     x20, x0
  10010d440  mov     x0, x21
  10010d444  bl      _objc_release
loc_10010d448:
  10010d448  mov     x0, x19
  10010d44c  bl      _objc_release
loc_10010d450:
  10010d450  mov     x0, x20
  10010d454  cmp     w22, #1
  10010d458  b.ne    loc_10010d4c0                            ; if (w22 != 1)
  10010d45c  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010d460  bl      _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
  10010d464  adrp    x20, #0x1003b0000
  10010d468  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
loc_10010d46c:
  10010d46c  ldr     x8, [x20]                                ; x8 = ___stack_chk_guard[+0x0]
  10010d470  ldur    x9, [x29, #-0x58]
  10010d474  sub     x8, x8, x9
  10010d478  cbnz    x8, loc_10010d49c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10010d47c  sub     sp, x29, #0x50
  10010d480  ldp     x28, x27, [sp], #0x10
  10010d484  ldp     x26, x25, [sp], #0x10
  10010d488  ldp     x24, x23, [sp], #0x10
  10010d48c  ldp     x22, x21, [sp], #0x10
  10010d490  ldp     x20, x19, [sp], #0x10
  10010d494  ldp     x29, x30, [sp], #0x10
  10010d498  ret
loc_10010d49c:
  10010d49c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10010d4a0  b       loc_10010d438
  10010d4a4  mov     x22, x1
  10010d4a8  mov     x20, x0
  10010d4ac  b       loc_10010d450
  10010d4b0  b       loc_10010d438
  10010d4b4  mov     x22, x1
  10010d4b8  mov     x20, x0
  10010d4bc  b       loc_10010d448
loc_10010d4c0:
  10010d4c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010d4c4
; address 0x10010d4c4  size 40  kind sub
; ======================================================================
  10010d4c4  stp     x29, x30, [sp, #-0x10]!
  10010d4c8  mov     x29, sp
  10010d4cc  stp     x20, x19, [sp, #-0x10]!
  10010d4d0  mov     x19, x1
  10010d4d4  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10010d4d8  bl      _objc_retain
  10010d4dc  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10010d4e0  ldp     x20, x19, [sp], #0x10
  10010d4e4  ldp     x29, x30, [sp], #0x10
  10010d4e8  b       _objc_retain

; ======================================================================
; sub_10010d4ec
; address 0x10010d4ec  size 40  kind sub
; ======================================================================
  10010d4ec  stp     x29, x30, [sp, #-0x10]!
  10010d4f0  mov     x29, sp
  10010d4f4  stp     x20, x19, [sp, #-0x10]!
  10010d4f8  mov     x19, x0
  10010d4fc  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10010d500  bl      _objc_release
  10010d504  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10010d508  ldp     x20, x19, [sp], #0x10
  10010d50c  ldp     x29, x30, [sp], #0x10
  10010d510  b       _objc_release

; ======================================================================
; -[TAGDataProvider addHitWithURLString:]
; address 0x10010d514  size 232  kind objc
; ======================================================================
  10010d514  stp     x29, x30, [sp, #-0x10]!
  10010d518  mov     x29, sp
  10010d51c  stp     x20, x19, [sp, #-0x10]!
  10010d520  stp     x22, x21, [sp, #-0x10]!
  10010d524  sub     sp, sp, #0x30
  10010d528  mov     x19, x0
  10010d52c  mov     x0, x2
  10010d530  bl      _objc_retain
  10010d534  mov     x20, x0
  10010d538  adrp    x8, #0x1003b0000
  10010d53c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010d540  adrp    x9, #0x10041e000
  10010d544  ldr     x21, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010d548  mov     w9, #-0x3e000000
  10010d54c  str     x8, [sp]
  10010d550  stp     w9, wzr, [sp, #8]
  10010d554  adr     x8, #0x10010d5fc                         ; &-[TAGDataProvider addHitWithURLString:]_block_invoke
  10010d558  nop
  10010d55c  str     x8, [sp, #0x10]
  10010d560  adrp    x8, #0x1003b7000
  10010d564  add     x8, x8, #0x900                           ; &d_1003b7900
  10010d568  str     x8, [sp, #0x18]
  10010d56c  mov     x0, x19
  10010d570  bl      _objc_retain
  10010d574  stp     x0, x20, [sp, #0x20]
  10010d578  adrp    x8, #0x10041b000
  10010d57c  nop
  10010d580  ldr     x22, [x8, #0x970]
  10010d584  mov     x0, x20
  10010d588  bl      _objc_retain
  10010d58c  mov     x19, x0
  10010d590  mov     w3, #0
  10010d594  mov     x2, sp
  10010d598  mov     x0, x21
  10010d59c  mov     x1, x22
  10010d5a0  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider addHitWithURLString:]_block_invoke captures +0x20=self, +0x28=arg1} wait:0]
  10010d5a4  ldr     x0, [sp, #0x28]
  10010d5a8  bl      _objc_release
  10010d5ac  ldr     x0, [sp, #0x20]
  10010d5b0  bl      _objc_release
  10010d5b4  mov     x0, x19
  10010d5b8  bl      _objc_release
  10010d5bc  sub     sp, x29, #0x20
  10010d5c0  ldp     x22, x21, [sp], #0x10
  10010d5c4  ldp     x20, x19, [sp], #0x10
  10010d5c8  ldp     x29, x30, [sp], #0x10
  10010d5cc  ret
  10010d5d0  mov     x20, x0
  10010d5d4  ldr     x8, [sp, #0x28]
  10010d5d8  mov     x0, x8
  10010d5dc  bl      _objc_release
  10010d5e0  ldr     x8, [sp, #0x20]
  10010d5e4  mov     x0, x8
  10010d5e8  bl      _objc_release
  10010d5ec  mov     x0, x19
  10010d5f0  bl      _objc_release
  10010d5f4  mov     x0, x20
  10010d5f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider addHitWithURLString:]_block_invoke
; address 0x10010d5fc  size 352  kind block
; ======================================================================
  10010d5fc  stp     x29, x30, [sp, #-0x10]!
  10010d600  mov     x29, sp
  10010d604  stp     x20, x19, [sp, #-0x10]!
  10010d608  stp     x22, x21, [sp, #-0x10]!
  10010d60c  mov     x19, x0
  10010d610  adrp    x8, #0x10041e000
  10010d614  ldr     x20, [x8, #0x500]                        ; class NSEntityDescription
  10010d618  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010d61c  adrp    x8, #0x10041b000
  10010d620  nop
  10010d624  ldr     x1, [x8, #0x978]
  10010d628  bl      _objc_msgSend                            ; [self context]
  10010d62c  adrp    x8, #0x1003b7000
  10010d630  add     x8, x8, #0xbf0                           ; &d_1003b7bf0
  10010d634  ldr     x22, [x8]                                ; [&d_1003b7bf0] -> @"TAGHit"
  10010d638  mov     x29, x29
  10010d63c  bl      _objc_retainAutoreleasedReturnValue
  10010d640  mov     x21, x0
  10010d644  adrp    x8, #0x10041b000
  10010d648  nop
  10010d64c  ldr     x1, [x8, #0x980]
  10010d650  mov     x0, x20
  10010d654  mov     x2, x22
  10010d658  mov     x3, x21
  10010d65c  bl      _objc_msgSend                            ; [NSEntityDescription insertNewObjectForEntityForName:@"TAGHit" inManagedObjectContext:[self context]]
  10010d660  mov     x29, x29
  10010d664  bl      _objc_retainAutoreleasedReturnValue
  10010d668  mov     x20, x0
  10010d66c  mov     x0, x21
  10010d670  bl      _objc_release
  10010d674  ldr     x2, [x19, #0x28]                         ; x2 = captured arg1
  10010d678  adrp    x8, #0x10041b000
  10010d67c  nop
  10010d680  ldr     x1, [x8, #0x988]
  10010d684  mov     x0, x20
  10010d688  bl      _objc_msgSend                            ; [[NSEntityDescription insertNewObjectForEntityForName:@"TAGHit" inManagedObjectContext:[self context]] setDispatchURL:arg1]
  10010d68c  adrp    x8, #0x10041e000
  10010d690  ldr     x0, [x8, #0x38]                          ; class NSDate
  10010d694  adrp    x8, #0x100418000
  10010d698  nop
  10010d69c  ldr     x1, [x8, #0x158]
  10010d6a0  bl      _objc_msgSend                            ; [NSDate date]
  10010d6a4  mov     x29, x29
  10010d6a8  bl      _objc_retainAutoreleasedReturnValue
  10010d6ac  mov     x21, x0
  10010d6b0  adrp    x8, #0x10041b000
  10010d6b4  nop
  10010d6b8  ldr     x1, [x8, #0x990]
  10010d6bc  mov     x0, x20
  10010d6c0  mov     x2, x21
  10010d6c4  bl      _objc_msgSend                            ; [[NSEntityDescription insertNewObjectForEntityForName:@"TAGHit" inManagedObjectContext:[self context]] setTimestamp:[NSDate date]]
  10010d6c8  mov     x0, x21
  10010d6cc  bl      _objc_release
  10010d6d0  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010d6d4  adrp    x8, #0x10041b000
  10010d6d8  nop
  10010d6dc  ldr     x1, [x8, #0x968]
  10010d6e0  bl      _objc_msgSend                            ; [self save]
  10010d6e4  mov     x0, x20
  10010d6e8  ldp     x22, x21, [sp], #0x10
  10010d6ec  ldp     x20, x19, [sp], #0x10
  10010d6f0  ldp     x29, x30, [sp], #0x10
  10010d6f4  b       _objc_release
  10010d6f8  mov     x22, x1
  10010d6fc  mov     x19, x0
  10010d700  b       loc_10010d738
  10010d704  mov     x22, x1
  10010d708  mov     x19, x0
  10010d70c  mov     x0, x21
  10010d710  b       loc_10010d734
  10010d714  mov     x22, x1
  10010d718  mov     x19, x0
  10010d71c  mov     x0, x21
  10010d720  bl      _objc_release
  10010d724  b       loc_10010d730
  10010d728  mov     x22, x1
  10010d72c  mov     x19, x0
loc_10010d730:
  10010d730  mov     x0, x20
loc_10010d734:
  10010d734  bl      _objc_release
loc_10010d738:
  10010d738  mov     x0, x19
  10010d73c  cmp     w22, #1
  10010d740  b.ne    loc_10010d758                            ; if (w22 != 1)
  10010d744  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010d748  ldp     x22, x21, [sp], #0x10
  10010d74c  ldp     x20, x19, [sp], #0x10
  10010d750  ldp     x29, x30, [sp], #0x10
  10010d754  b       _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
loc_10010d758:
  10010d758  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010d75c
; address 0x10010d75c  size 40  kind sub
; ======================================================================
  10010d75c  stp     x29, x30, [sp, #-0x10]!
  10010d760  mov     x29, sp
  10010d764  stp     x20, x19, [sp, #-0x10]!
  10010d768  mov     x19, x1
  10010d76c  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10010d770  bl      _objc_retain
  10010d774  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10010d778  ldp     x20, x19, [sp], #0x10
  10010d77c  ldp     x29, x30, [sp], #0x10
  10010d780  b       _objc_retain

; ======================================================================
; sub_10010d784
; address 0x10010d784  size 40  kind sub
; ======================================================================
  10010d784  stp     x29, x30, [sp, #-0x10]!
  10010d788  mov     x29, sp
  10010d78c  stp     x20, x19, [sp, #-0x10]!
  10010d790  mov     x19, x0
  10010d794  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10010d798  bl      _objc_release
  10010d79c  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10010d7a0  ldp     x20, x19, [sp], #0x10
  10010d7a4  ldp     x29, x30, [sp], #0x10
  10010d7a8  b       _objc_release

; ======================================================================
; -[TAGDataProvider fetchHitsWithLimit:completion:]
; address 0x10010d7ac  size 236  kind objc
; ======================================================================
  10010d7ac  stp     x29, x30, [sp, #-0x10]!
  10010d7b0  mov     x29, sp
  10010d7b4  stp     x20, x19, [sp, #-0x10]!
  10010d7b8  stp     x22, x21, [sp, #-0x10]!
  10010d7bc  sub     sp, sp, #0x40
  10010d7c0  mov     x19, x2
  10010d7c4  mov     x20, x0
  10010d7c8  mov     x0, x3
  10010d7cc  bl      _objc_retain
  10010d7d0  mov     x21, x0
  10010d7d4  adrp    x8, #0x1003b0000
  10010d7d8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010d7dc  adrp    x9, #0x10041e000
  10010d7e0  ldr     x22, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010d7e4  mov     w9, #-0x3e000000
  10010d7e8  adr     x10, #0x10010d898                        ; &-[TAGDataProvider fetchHitsWithLimit:completion:]_block_invoke
  10010d7ec  nop
  10010d7f0  str     x8, [sp, #8]
  10010d7f4  stp     w9, wzr, [sp, #0x10]
  10010d7f8  adrp    x8, #0x1003b7000
  10010d7fc  add     x8, x8, #0x930                           ; &d_1003b7930
  10010d800  stp     x10, x8, [sp, #0x18]
  10010d804  str     x19, [sp, #0x38]
  10010d808  mov     x0, x20
  10010d80c  bl      _objc_retain
  10010d810  stp     x0, x21, [sp, #0x28]
  10010d814  adrp    x8, #0x10041b000
  10010d818  nop
  10010d81c  ldr     x20, [x8, #0x970]
  10010d820  mov     x0, x21
  10010d824  bl      _objc_retain
  10010d828  mov     x19, x0
  10010d82c  mov     w3, #0
  10010d830  add     x2, sp, #8
  10010d834  mov     x0, x22
  10010d838  mov     x1, x20
  10010d83c  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider fetchHitsWithLimit:completion:]_block_invoke captures +0x20=self, +0x28=arg2, +0x30=arg1} wait:0]
  10010d840  ldr     x0, [sp, #0x30]
  10010d844  bl      _objc_release
  10010d848  ldr     x0, [sp, #0x28]
  10010d84c  bl      _objc_release
  10010d850  mov     x0, x19
  10010d854  bl      _objc_release
  10010d858  sub     sp, x29, #0x20
  10010d85c  ldp     x22, x21, [sp], #0x10
  10010d860  ldp     x20, x19, [sp], #0x10
  10010d864  ldp     x29, x30, [sp], #0x10
  10010d868  ret
  10010d86c  mov     x20, x0
  10010d870  ldr     x8, [sp, #0x30]
  10010d874  mov     x0, x8
  10010d878  bl      _objc_release
  10010d87c  ldr     x8, [sp, #0x28]
  10010d880  mov     x0, x8
  10010d884  bl      _objc_release
  10010d888  mov     x0, x19
  10010d88c  bl      _objc_release
  10010d890  mov     x0, x20
  10010d894  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider fetchHitsWithLimit:completion:]_block_invoke
; address 0x10010d898  size 380  kind block
; ======================================================================
  10010d898  stp     x29, x30, [sp, #-0x10]!
  10010d89c  mov     x29, sp
  10010d8a0  stp     x20, x19, [sp, #-0x10]!
  10010d8a4  stp     x22, x21, [sp, #-0x10]!
  10010d8a8  stp     x24, x23, [sp, #-0x10]!
  10010d8ac  sub     sp, sp, #0x10
  10010d8b0  mov     x21, x0
  10010d8b4  adrp    x8, #0x10041e000
  10010d8b8  ldr     x0, [x8, #0x508]                         ; class TAGModel
  10010d8bc  ldr     x2, [x21, #0x30]                         ; x2 = captured arg1
  10010d8c0  adrp    x8, #0x10041b000
  10010d8c4  nop
  10010d8c8  ldr     x1, [x8, #0x998]
  10010d8cc  bl      _objc_msgSend                            ; [TAGModel requestHitsWithLimit:arg1]
  10010d8d0  mov     x29, x29
  10010d8d4  bl      _objc_retainAutoreleasedReturnValue
  10010d8d8  mov     x19, x0
  10010d8dc  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  10010d8e0  adrp    x8, #0x10041b000
  10010d8e4  nop
  10010d8e8  ldr     x1, [x8, #0x978]
  10010d8ec  bl      _objc_msgSend                            ; [self context]
  10010d8f0  mov     x29, x29
  10010d8f4  bl      _objc_retainAutoreleasedReturnValue
  10010d8f8  mov     x20, x0
  10010d8fc  str     xzr, [sp, #8]
  10010d900  adrp    x8, #0x10041b000
  10010d904  nop
  10010d908  ldr     x1, [x8, #0x9a0]
  10010d90c  add     x3, sp, #8
  10010d910  mov     x2, x19
  10010d914  bl      _objc_msgSend                            ; [[self context] executeFetchRequest:[TAGModel requestHitsWithLimit:arg1] error:&sp[0x8]]
  10010d918  mov     x29, x29
  10010d91c  bl      _objc_retainAutoreleasedReturnValue
  10010d920  mov     x23, x0
  10010d924  ldr     x0, [sp, #8]
  10010d928  bl      _objc_retain
  10010d92c  mov     x22, x0
  10010d930  ldr     x24, [x21, #0x20]                        ; x24 = captured self
  10010d934  adrp    x8, #0x100416000
  10010d938  nop
  10010d93c  ldr     x1, [x8, #0xe30]
  10010d940  mov     x0, x23
  10010d944  bl      _objc_msgSend                            ; [[[self context] executeFetchRequest:[TAGModel requestHitsWithLimit:arg1] error:&sp[0x8]] count]
  10010d948  cmp     x0, #0
  10010d94c  cset    w2, ne                                   ; t1 = ([[[self context] executeFetchRequest:[TAGModel requestHitsWithLimit:arg1] error:&sp[0x8]] count] != 0)
  10010d950  adrp    x8, #0x10041b000
  10010d954  nop
  10010d958  ldr     x1, [x8, #0x9a8]
  10010d95c  mov     x0, x24
  10010d960  bl      _objc_msgSend                            ; [self setHasHits:t1]
  10010d964  ldr     x0, [x21, #0x28]                         ; x0 = captured arg2
  10010d968  ldr     x8, [x0, #0x10]                          ; x8 = arg2[+0x10]
  10010d96c  mov     x1, x23
  10010d970  blr     x8                                       ; call arg2[+0x10]
  10010d974  mov     x0, x23
  10010d978  bl      _objc_release
  10010d97c  mov     x0, x20
  10010d980  bl      _objc_release
  10010d984  mov     x0, x19
  10010d988  bl      _objc_release
  10010d98c  mov     x0, x22
  10010d990  bl      _objc_release
loc_10010d994:
  10010d994  sub     sp, x29, #0x30
  10010d998  ldp     x24, x23, [sp], #0x10
  10010d99c  ldp     x22, x21, [sp], #0x10
  10010d9a0  ldp     x20, x19, [sp], #0x10
  10010d9a4  ldp     x29, x30, [sp], #0x10
  10010d9a8  ret
  10010d9ac  mov     x24, x1
  10010d9b0  mov     x21, x0
  10010d9b4  b       loc_10010d9f8
  10010d9b8  mov     x24, x1
  10010d9bc  mov     x21, x0
  10010d9c0  b       loc_10010d9f0
  10010d9c4  mov     x24, x1
  10010d9c8  mov     x21, x0
  10010d9cc  b       loc_10010d9e8
  10010d9d0  mov     x24, x1
  10010d9d4  mov     x21, x0
  10010d9d8  mov     x0, x23
  10010d9dc  bl      _objc_release
  10010d9e0  mov     x0, x22
  10010d9e4  bl      _objc_release
loc_10010d9e8:
  10010d9e8  mov     x0, x20
  10010d9ec  bl      _objc_release
loc_10010d9f0:
  10010d9f0  mov     x0, x19
  10010d9f4  bl      _objc_release
loc_10010d9f8:
  10010d9f8  mov     x0, x21
  10010d9fc  cmp     w24, #1
  10010da00  b.ne    loc_10010da10                            ; if (w24 != 1)
  10010da04  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010da08  bl      _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
  10010da0c  b       loc_10010d994
loc_10010da10:
  10010da10  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010da14
; address 0x10010da14  size 52  kind sub
; ======================================================================
  10010da14  stp     x29, x30, [sp, #-0x10]!
  10010da18  mov     x29, sp
  10010da1c  stp     x20, x19, [sp, #-0x10]!
  10010da20  mov     x19, x1
  10010da24  mov     x20, x0
  10010da28  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10010da2c  bl      _objc_retain
  10010da30  add     x0, x20, #0x28
  10010da34  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  10010da38  mov     w2, #7
  10010da3c  ldp     x20, x19, [sp], #0x10
  10010da40  ldp     x29, x30, [sp], #0x10
  10010da44  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_10010da48
; address 0x10010da48  size 40  kind sub
; ======================================================================
  10010da48  stp     x29, x30, [sp, #-0x10]!
  10010da4c  mov     x29, sp
  10010da50  stp     x20, x19, [sp, #-0x10]!
  10010da54  mov     x19, x0
  10010da58  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10010da5c  bl      _objc_release
  10010da60  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10010da64  ldp     x20, x19, [sp], #0x10
  10010da68  ldp     x29, x30, [sp], #0x10
  10010da6c  b       _objc_release

; ======================================================================
; -[TAGDataProvider fetchNotRecentlyAttemptedHitsWithLimit:completion:]
; address 0x10010da70  size 236  kind objc
; ======================================================================
  10010da70  stp     x29, x30, [sp, #-0x10]!
  10010da74  mov     x29, sp
  10010da78  stp     x20, x19, [sp, #-0x10]!
  10010da7c  stp     x22, x21, [sp, #-0x10]!
  10010da80  sub     sp, sp, #0x40
  10010da84  mov     x19, x2
  10010da88  mov     x20, x0
  10010da8c  mov     x0, x3
  10010da90  bl      _objc_retain
  10010da94  mov     x21, x0
  10010da98  adrp    x8, #0x1003b0000
  10010da9c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010daa0  adrp    x9, #0x10041e000
  10010daa4  ldr     x22, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010daa8  mov     w9, #-0x3e000000
  10010daac  adr     x10, #0x10010db5c                        ; &-[TAGDataProvider fetchNotRecentlyAttemptedHitsWithLimit:completion:]_block_invoke
  10010dab0  nop
  10010dab4  str     x8, [sp, #8]
  10010dab8  stp     w9, wzr, [sp, #0x10]
  10010dabc  adrp    x8, #0x1003b7000
  10010dac0  add     x8, x8, #0x960                           ; &d_1003b7960
  10010dac4  stp     x10, x8, [sp, #0x18]
  10010dac8  str     x19, [sp, #0x38]
  10010dacc  mov     x0, x20
  10010dad0  bl      _objc_retain
  10010dad4  stp     x0, x21, [sp, #0x28]
  10010dad8  adrp    x8, #0x10041b000
  10010dadc  nop
  10010dae0  ldr     x20, [x8, #0x970]
  10010dae4  mov     x0, x21
  10010dae8  bl      _objc_retain
  10010daec  mov     x19, x0
  10010daf0  mov     w3, #0
  10010daf4  add     x2, sp, #8
  10010daf8  mov     x0, x22
  10010dafc  mov     x1, x20
  10010db00  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider fetchNotRecentlyAttemptedHitsWithLimit:completion:]_block_invoke captures +0x20=self, +0x28=arg2, +0x30=arg1} wait:0]
  10010db04  ldr     x0, [sp, #0x30]
  10010db08  bl      _objc_release
  10010db0c  ldr     x0, [sp, #0x28]
  10010db10  bl      _objc_release
  10010db14  mov     x0, x19
  10010db18  bl      _objc_release
  10010db1c  sub     sp, x29, #0x20
  10010db20  ldp     x22, x21, [sp], #0x10
  10010db24  ldp     x20, x19, [sp], #0x10
  10010db28  ldp     x29, x30, [sp], #0x10
  10010db2c  ret
  10010db30  mov     x20, x0
  10010db34  ldr     x8, [sp, #0x30]
  10010db38  mov     x0, x8
  10010db3c  bl      _objc_release
  10010db40  ldr     x8, [sp, #0x28]
  10010db44  mov     x0, x8
  10010db48  bl      _objc_release
  10010db4c  mov     x0, x19
  10010db50  bl      _objc_release
  10010db54  mov     x0, x20
  10010db58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider fetchNotRecentlyAttemptedHitsWithLimit:completion:]_block_invoke
; address 0x10010db5c  size 464  kind block
; ======================================================================
  10010db5c  stp     x29, x30, [sp, #-0x10]!
  10010db60  mov     x29, sp
  10010db64  stp     x20, x19, [sp, #-0x10]!
  10010db68  stp     x22, x21, [sp, #-0x10]!
  10010db6c  stp     x24, x23, [sp, #-0x10]!
  10010db70  stp     x26, x25, [sp, #-0x10]!
  10010db74  sub     sp, sp, #0x10
  10010db78  mov     x21, x0
  10010db7c  adrp    x8, #0x10041e000
  10010db80  ldr     x0, [x8, #0x38]                          ; class NSDate
  10010db84  adrp    x8, #0x100417000
  10010db88  nop
  10010db8c  ldr     x1, [x8, #0x6f8]
  10010db90  adrp    x8, #0x1002fa000
  10010db94  ldr     d0, [x8, #0xa18]                         ; d0 = -120.0
  10010db98  bl      _objc_msgSend                            ; [NSDate dateWithTimeIntervalSinceNow:-120]
  10010db9c  mov     x29, x29
  10010dba0  bl      _objc_retainAutoreleasedReturnValue
  10010dba4  mov     x19, x0
  10010dba8  adrp    x8, #0x10041e000
  10010dbac  ldr     x0, [x8, #0x508]                         ; class TAGModel
  10010dbb0  ldr     x2, [x21, #0x30]                         ; x2 = captured arg1
  10010dbb4  adrp    x8, #0x10041b000
  10010dbb8  nop
  10010dbbc  ldr     x1, [x8, #0x9b0]
  10010dbc0  mov     x3, x19
  10010dbc4  bl      _objc_msgSend                            ; [TAGModel requestHitsWithLimit:arg1 lastDispatchedBefore:[NSDate dateWithTimeIntervalSinceNow:-120]]
  10010dbc8  mov     x29, x29
  10010dbcc  bl      _objc_retainAutoreleasedReturnValue
  10010dbd0  mov     x20, x0
  10010dbd4  ldr     x0, [x21, #0x20]                         ; x0 = captured self
  10010dbd8  adrp    x8, #0x10041b000
  10010dbdc  nop
  10010dbe0  ldr     x1, [x8, #0x978]
  10010dbe4  bl      _objc_msgSend                            ; [self context]
  10010dbe8  mov     x29, x29
  10010dbec  bl      _objc_retainAutoreleasedReturnValue
  10010dbf0  mov     x22, x0
  10010dbf4  str     xzr, [sp, #8]
  10010dbf8  adrp    x8, #0x10041b000
  10010dbfc  nop
  10010dc00  ldr     x1, [x8, #0x9a0]
  10010dc04  add     x3, sp, #8
  10010dc08  mov     x2, x20
  10010dc0c  bl      _objc_msgSend                            ; [[self context] executeFetchRequest:[TAGModel requestHitsWithLimit:arg1 lastDispatchedBefore:[NSDate dateWithTimeIntervalSinceNow:-120]] error:&sp[0x8]]
  10010dc10  mov     x29, x29
  10010dc14  bl      _objc_retainAutoreleasedReturnValue
  10010dc18  mov     x24, x0
  10010dc1c  ldr     x0, [sp, #8]
  10010dc20  bl      _objc_retain
  10010dc24  mov     x23, x0
  10010dc28  ldr     x25, [x21, #0x20]                        ; x25 = captured self
  10010dc2c  adrp    x8, #0x100416000
  10010dc30  nop
  10010dc34  ldr     x1, [x8, #0xe30]
  10010dc38  mov     x0, x24
  10010dc3c  bl      _objc_msgSend                            ; [[[self context] executeFetchRequest:[TAGModel requestHitsWithLimit:arg1 lastDispatchedBefore:[NSDate dateWithTimeIntervalSinceNow:-120]] error:&sp[0x8]] count]
  10010dc40  cmp     x0, #0
  10010dc44  cset    w2, ne                                   ; t1 = ([[[self context] executeFetchRequest:[TAGModel requestHitsWithLimit:arg1 lastDispatchedBefore:[NSDate dateWithTimeInterv… != 0)
  10010dc48  adrp    x8, #0x10041b000
  10010dc4c  nop
  10010dc50  ldr     x1, [x8, #0x9a8]
  10010dc54  mov     x0, x25
  10010dc58  bl      _objc_msgSend                            ; [self setHasHits:t1]
  10010dc5c  ldr     x0, [x21, #0x28]                         ; x0 = captured arg2
  10010dc60  ldr     x8, [x0, #0x10]                          ; x8 = arg2[+0x10]
  10010dc64  mov     x1, x24
  10010dc68  blr     x8                                       ; call arg2[+0x10]
  10010dc6c  mov     x0, x24
  10010dc70  bl      _objc_release
  10010dc74  mov     x0, x22
  10010dc78  bl      _objc_release
  10010dc7c  mov     x0, x20
  10010dc80  bl      _objc_release
  10010dc84  mov     x0, x19
  10010dc88  bl      _objc_release
  10010dc8c  mov     x0, x23
  10010dc90  bl      _objc_release
loc_10010dc94:
  10010dc94  sub     sp, x29, #0x40
  10010dc98  ldp     x26, x25, [sp], #0x10
  10010dc9c  ldp     x24, x23, [sp], #0x10
  10010dca0  ldp     x22, x21, [sp], #0x10
  10010dca4  ldp     x20, x19, [sp], #0x10
  10010dca8  ldp     x29, x30, [sp], #0x10
  10010dcac  ret
  10010dcb0  mov     x25, x1
  10010dcb4  mov     x21, x0
  10010dcb8  b       loc_10010dd10
  10010dcbc  mov     x25, x1
  10010dcc0  mov     x21, x0
  10010dcc4  b       loc_10010dd08
  10010dcc8  mov     x25, x1
  10010dccc  mov     x21, x0
  10010dcd0  b       loc_10010dd00
  10010dcd4  mov     x25, x1
  10010dcd8  mov     x21, x0
  10010dcdc  b       loc_10010dcf8
  10010dce0  mov     x25, x1
  10010dce4  mov     x21, x0
  10010dce8  mov     x0, x24
  10010dcec  bl      _objc_release
  10010dcf0  mov     x0, x23
  10010dcf4  bl      _objc_release
loc_10010dcf8:
  10010dcf8  mov     x0, x22
  10010dcfc  bl      _objc_release
loc_10010dd00:
  10010dd00  mov     x0, x20
  10010dd04  bl      _objc_release
loc_10010dd08:
  10010dd08  mov     x0, x19
  10010dd0c  bl      _objc_release
loc_10010dd10:
  10010dd10  mov     x0, x21
  10010dd14  cmp     w25, #1
  10010dd18  b.ne    loc_10010dd28                            ; if (w25 != 1)
  10010dd1c  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010dd20  bl      _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
  10010dd24  b       loc_10010dc94
loc_10010dd28:
  10010dd28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010dd2c
; address 0x10010dd2c  size 52  kind sub
; ======================================================================
  10010dd2c  stp     x29, x30, [sp, #-0x10]!
  10010dd30  mov     x29, sp
  10010dd34  stp     x20, x19, [sp, #-0x10]!
  10010dd38  mov     x19, x1
  10010dd3c  mov     x20, x0
  10010dd40  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10010dd44  bl      _objc_retain
  10010dd48  add     x0, x20, #0x28
  10010dd4c  ldr     x1, [x19, #0x28]                         ; x1 = a1[+0x28]
  10010dd50  mov     w2, #7
  10010dd54  ldp     x20, x19, [sp], #0x10
  10010dd58  ldp     x29, x30, [sp], #0x10
  10010dd5c  b       __Block_object_assign                    ; Block_object_assign((a0 + 40), a1[+0x28], 7)

; ======================================================================
; sub_10010dd60
; address 0x10010dd60  size 40  kind sub
; ======================================================================
  10010dd60  stp     x29, x30, [sp, #-0x10]!
  10010dd64  mov     x29, sp
  10010dd68  stp     x20, x19, [sp, #-0x10]!
  10010dd6c  mov     x19, x0
  10010dd70  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10010dd74  bl      _objc_release
  10010dd78  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10010dd7c  ldp     x20, x19, [sp], #0x10
  10010dd80  ldp     x29, x30, [sp], #0x10
  10010dd84  b       _objc_release

; ======================================================================
; -[TAGDataProvider deleteHits:]
; address 0x10010dd88  size 232  kind objc
; ======================================================================
  10010dd88  stp     x29, x30, [sp, #-0x10]!
  10010dd8c  mov     x29, sp
  10010dd90  stp     x20, x19, [sp, #-0x10]!
  10010dd94  stp     x22, x21, [sp, #-0x10]!
  10010dd98  sub     sp, sp, #0x30
  10010dd9c  mov     x19, x0
  10010dda0  mov     x0, x2
  10010dda4  bl      _objc_retain
  10010dda8  mov     x20, x0
  10010ddac  adrp    x8, #0x1003b0000
  10010ddb0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010ddb4  adrp    x9, #0x10041e000
  10010ddb8  ldr     x21, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010ddbc  mov     w9, #-0x3e000000
  10010ddc0  str     x8, [sp]
  10010ddc4  stp     w9, wzr, [sp, #8]
  10010ddc8  adr     x8, #0x10010de70                         ; &-[TAGDataProvider deleteHits:]_block_invoke
  10010ddcc  nop
  10010ddd0  str     x8, [sp, #0x10]
  10010ddd4  adrp    x8, #0x1003b7000
  10010ddd8  add     x8, x8, #0x990                           ; &d_1003b7990
  10010dddc  str     x8, [sp, #0x18]
  10010dde0  mov     x0, x19
  10010dde4  bl      _objc_retain
  10010dde8  stp     x0, x20, [sp, #0x20]
  10010ddec  adrp    x8, #0x10041b000
  10010ddf0  nop
  10010ddf4  ldr     x22, [x8, #0x970]
  10010ddf8  mov     x0, x20
  10010ddfc  bl      _objc_retain
  10010de00  mov     x19, x0
  10010de04  mov     w3, #0
  10010de08  mov     x2, sp
  10010de0c  mov     x0, x21
  10010de10  mov     x1, x22
  10010de14  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider deleteHits:]_block_invoke captures +0x20=self, +0x28=arg1} wait:0]
  10010de18  ldr     x0, [sp, #0x28]
  10010de1c  bl      _objc_release
  10010de20  ldr     x0, [sp, #0x20]
  10010de24  bl      _objc_release
  10010de28  mov     x0, x19
  10010de2c  bl      _objc_release
  10010de30  sub     sp, x29, #0x20
  10010de34  ldp     x22, x21, [sp], #0x10
  10010de38  ldp     x20, x19, [sp], #0x10
  10010de3c  ldp     x29, x30, [sp], #0x10
  10010de40  ret
  10010de44  mov     x20, x0
  10010de48  ldr     x8, [sp, #0x28]
  10010de4c  mov     x0, x8
  10010de50  bl      _objc_release
  10010de54  ldr     x8, [sp, #0x20]
  10010de58  mov     x0, x8
  10010de5c  bl      _objc_release
  10010de60  mov     x0, x19
  10010de64  bl      _objc_release
  10010de68  mov     x0, x20
  10010de6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider deleteHits:]_block_invoke
; address 0x10010de70  size 468  kind block
; ======================================================================
  10010de70  stp     x29, x30, [sp, #-0x10]!
  10010de74  mov     x29, sp
  10010de78  stp     x20, x19, [sp, #-0x10]!
  10010de7c  stp     x22, x21, [sp, #-0x10]!
  10010de80  stp     x24, x23, [sp, #-0x10]!
  10010de84  stp     x26, x25, [sp, #-0x10]!
  10010de88  stp     x28, x27, [sp, #-0x10]!
  10010de8c  sub     sp, sp, #0xe0
  10010de90  mov     x20, x0
  10010de94  adrp    x27, #0x1003b0000
  10010de98  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  10010de9c  ldr     x8, [x27]                                ; x8 = ___stack_chk_guard[+0x0]
  10010dea0  stur    x8, [x29, #-0x58]
  10010dea4  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10010dea8  adrp    x8, #0x10041b000
  10010deac  nop
  10010deb0  ldr     x1, [x8, #0x978]
  10010deb4  bl      _objc_msgSend                            ; [self context]
  10010deb8  mov     x29, x29
  10010debc  bl      _objc_retainAutoreleasedReturnValue
  10010dec0  mov     x19, x0
  10010dec4  stp     xzr, xzr, [sp, #0xc8]
  10010dec8  stp     xzr, xzr, [sp, #0xb8]
  10010decc  stp     xzr, xzr, [sp, #0xa8]
  10010ded0  stp     xzr, xzr, [sp, #0x98]
  10010ded4  ldr     x0, [x20, #0x28]                         ; x0 = captured arg1
  10010ded8  bl      _objc_retain
  10010dedc  mov     x21, x0
  10010dee0  adrp    x8, #0x100416000
  10010dee4  nop
  10010dee8  ldr     x22, [x8, #0xe00]
  10010deec  add     x2, sp, #0x98
  10010def0  add     x3, sp, #0x18
  10010def4  mov     x4, #0x10
  10010def8  mov     x1, x22
  10010defc  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10010df00  mov     x23, x0
  10010df04  cbz     x23, loc_10010df8c                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  10010df08  ldr     x8, [sp, #0xa8]
  10010df0c  ldr     x28, [x8]
  10010df10  adrp    x8, #0x10041b000
  10010df14  nop
  10010df18  ldr     x24, [x8, #0x9b8]
  10010df1c  add     x8, sp, #0x98
  10010df20  str     x8, [sp, #0x10]
  10010df24  add     x26, sp, #0x18
loc_10010df28:
  10010df28  mov     x25, x27
  10010df2c  mov     x27, #0
loc_10010df30:
  10010df30  ldr     x8, [sp, #0xa8]
  10010df34  ldr     x8, [x8]
  10010df38  cmp     x8, x28
  10010df3c  b.eq    loc_10010df48                            ; if (x8 == x28)
  10010df40  mov     x0, x21
  10010df44  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10010df48:
  10010df48  ldr     x8, [sp, #0xa0]
  10010df4c  ldr     x2, [x8, x27, lsl #3]
  10010df50  mov     x0, x19
  10010df54  mov     x1, x24
  10010df58  bl      _objc_msgSend                            ; [[self context] deleteObject:x2]
  10010df5c  add     x27, x27, #1
  10010df60  cmp     x27, x23
  10010df64  b.lo    loc_10010df30                            ; if ((x27 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  10010df68  mov     x4, #0x10
  10010df6c  mov     x0, x21
  10010df70  mov     x1, x22
  10010df74  ldr     x2, [sp, #0x10]
  10010df78  mov     x3, x26
  10010df7c  mov     x27, x25
  10010df80  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10010df84  mov     x23, x0
  10010df88  cbnz    x23, loc_10010df28                       ; if ([arg1 countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10010df8c:
  10010df8c  mov     x0, x21
  10010df90  bl      _objc_release
  10010df94  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10010df98  adrp    x8, #0x10041b000
  10010df9c  nop
  10010dfa0  ldr     x1, [x8, #0x968]
  10010dfa4  bl      _objc_msgSend                            ; [self save]
  10010dfa8  mov     x0, x19
  10010dfac  bl      _objc_release
  10010dfb0  b       loc_10010dfe4
  10010dfb4  mov     x22, x1
  10010dfb8  mov     x20, x0
  10010dfbc  mov     x27, x25
loc_10010dfc0:
  10010dfc0  mov     x0, x21
  10010dfc4  bl      _objc_release
loc_10010dfc8:
  10010dfc8  mov     x0, x19
  10010dfcc  bl      _objc_release
loc_10010dfd0:
  10010dfd0  mov     x0, x20
  10010dfd4  cmp     w22, #1
  10010dfd8  b.ne    loc_10010e040                            ; if (w22 != 1)
  10010dfdc  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010dfe0  bl      _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
loc_10010dfe4:
  10010dfe4  ldr     x8, [x27]                                ; x8 = ___stack_chk_guard[+0x0]
  10010dfe8  ldur    x9, [x29, #-0x58]
  10010dfec  sub     x8, x8, x9
  10010dff0  cbnz    x8, loc_10010e014                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10010dff4  sub     sp, x29, #0x50
  10010dff8  ldp     x28, x27, [sp], #0x10
  10010dffc  ldp     x26, x25, [sp], #0x10
  10010e000  ldp     x24, x23, [sp], #0x10
  10010e004  ldp     x22, x21, [sp], #0x10
  10010e008  ldp     x20, x19, [sp], #0x10
  10010e00c  ldp     x29, x30, [sp], #0x10
  10010e010  ret
loc_10010e014:
  10010e014  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10010e018:
  10010e018  mov     x22, x1
  10010e01c  mov     x20, x0
  10010e020  b       loc_10010dfc0
  10010e024  mov     x22, x1
  10010e028  mov     x20, x0
  10010e02c  b       loc_10010dfd0
  10010e030  b       loc_10010e018
  10010e034  mov     x22, x1
  10010e038  mov     x20, x0
  10010e03c  b       loc_10010dfc8
loc_10010e040:
  10010e040  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010e044
; address 0x10010e044  size 40  kind sub
; ======================================================================
  10010e044  stp     x29, x30, [sp, #-0x10]!
  10010e048  mov     x29, sp
  10010e04c  stp     x20, x19, [sp, #-0x10]!
  10010e050  mov     x19, x1
  10010e054  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10010e058  bl      _objc_retain
  10010e05c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10010e060  ldp     x20, x19, [sp], #0x10
  10010e064  ldp     x29, x30, [sp], #0x10
  10010e068  b       _objc_retain

; ======================================================================
; sub_10010e06c
; address 0x10010e06c  size 40  kind sub
; ======================================================================
  10010e06c  stp     x29, x30, [sp, #-0x10]!
  10010e070  mov     x29, sp
  10010e074  stp     x20, x19, [sp, #-0x10]!
  10010e078  mov     x19, x0
  10010e07c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10010e080  bl      _objc_release
  10010e084  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10010e088  ldp     x20, x19, [sp], #0x10
  10010e08c  ldp     x29, x30, [sp], #0x10
  10010e090  b       _objc_release

; ======================================================================
; -[TAGDataProvider onExit:]
; address 0x10010e094  size 152  kind objc
; ======================================================================
  10010e094  stp     x29, x30, [sp, #-0x10]!
  10010e098  mov     x29, sp
  10010e09c  stp     x20, x19, [sp, #-0x10]!
  10010e0a0  sub     sp, sp, #0x30
  10010e0a4  adrp    x8, #0x1003b0000
  10010e0a8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010e0ac  adrp    x9, #0x10041e000
  10010e0b0  ldr     x19, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010e0b4  str     x8, [sp, #8]
  10010e0b8  mov     w8, #-0x3e000000
  10010e0bc  stp     w8, wzr, [sp, #0x10]
  10010e0c0  adr     x8, #0x10010e12c                         ; &-[TAGDataProvider onExit:]_block_invoke
  10010e0c4  nop
  10010e0c8  str     x8, [sp, #0x18]
  10010e0cc  adrp    x8, #0x1003b7000
  10010e0d0  add     x8, x8, #0x9c0                           ; &d_1003b79c0
  10010e0d4  str     x8, [sp, #0x20]
  10010e0d8  bl      _objc_retain
  10010e0dc  str     x0, [sp, #0x28]
  10010e0e0  adrp    x8, #0x10041b000
  10010e0e4  nop
  10010e0e8  ldr     x1, [x8, #0x970]
  10010e0ec  add     x2, sp, #8
  10010e0f0  mov     w3, #1
  10010e0f4  mov     x0, x19
  10010e0f8  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider onExit:]_block_invoke captures +0x20=self} wait:1]
  10010e0fc  ldr     x0, [sp, #0x28]
  10010e100  bl      _objc_release
  10010e104  sub     sp, x29, #0x10
  10010e108  ldp     x20, x19, [sp], #0x10
  10010e10c  ldp     x29, x30, [sp], #0x10
  10010e110  ret
  10010e114  mov     x19, x0
  10010e118  ldr     x8, [sp, #0x28]
  10010e11c  mov     x0, x8
  10010e120  bl      _objc_release
  10010e124  mov     x0, x19
  10010e128  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider onExit:]_block_invoke
; address 0x10010e12c  size 64  kind block
; ======================================================================
  10010e12c  stp     x29, x30, [sp, #-0x10]!
  10010e130  mov     x29, sp
  10010e134  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10010e138  adrp    x8, #0x10041b000
  10010e13c  nop
  10010e140  ldr     x1, [x8, #0x968]
  10010e144  bl      _objc_msgSend                            ; [self save]
  10010e148  ldp     x29, x30, [sp], #0x10
  10010e14c  ret
  10010e150  mov     x8, x1
  10010e154  cmp     w8, #1
  10010e158  b.ne    loc_10010e168                            ; if (w8 != 1)
  10010e15c  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010e160  ldp     x29, x30, [sp], #0x10
  10010e164  b       _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
loc_10010e168:
  10010e168  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010e16c
; address 0x10010e16c  size 8  kind sub
; ======================================================================
  10010e16c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10010e170  b       _objc_retain

; ======================================================================
; sub_10010e174
; address 0x10010e174  size 8  kind sub
; ======================================================================
  10010e174  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10010e178  b       _objc_release

; ======================================================================
; -[TAGDataProvider context:deleteRequest:error:]
; address 0x10010e17c  size 508  kind objc
; ======================================================================
  10010e17c  stp     x29, x30, [sp, #-0x10]!
  10010e180  mov     x29, sp
  10010e184  stp     x20, x19, [sp, #-0x10]!
  10010e188  stp     x22, x21, [sp, #-0x10]!
  10010e18c  stp     x24, x23, [sp, #-0x10]!
  10010e190  stp     x26, x25, [sp, #-0x10]!
  10010e194  stp     x28, x27, [sp, #-0x10]!
  10010e198  sub     sp, sp, #0xe0
  10010e19c  mov     x21, x4
  10010e1a0  mov     x20, x3
  10010e1a4  adrp    x8, #0x1003b0000
  10010e1a8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10010e1ac  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10010e1b0  stur    x8, [x29, #-0x58]
  10010e1b4  mov     x0, x2
  10010e1b8  bl      _objc_retain
  10010e1bc  mov     x19, x0
  10010e1c0  mov     x0, x20
  10010e1c4  bl      _objc_retain
  10010e1c8  mov     x20, x0
  10010e1cc  adrp    x8, #0x10041b000
  10010e1d0  nop
  10010e1d4  ldr     x1, [x8, #0x9c0]
  10010e1d8  mov     w2, #0
  10010e1dc  bl      _objc_msgSend                            ; [arg2 setIncludesPropertyValues:0]
  10010e1e0  adrp    x8, #0x10041b000
  10010e1e4  nop
  10010e1e8  ldr     x1, [x8, #0x9a0]
  10010e1ec  mov     x0, x19
  10010e1f0  mov     x2, x20
  10010e1f4  mov     x3, x21
  10010e1f8  bl      _objc_msgSend                            ; [arg1 executeFetchRequest:arg2 error:arg3]
  10010e1fc  str     x20, [sp, #0x10]
  10010e200  mov     x29, x29
  10010e204  bl      _objc_retainAutoreleasedReturnValue
  10010e208  stp     xzr, xzr, [sp, #0xc8]
  10010e20c  stp     xzr, xzr, [sp, #0xb8]
  10010e210  stp     xzr, xzr, [sp, #0xa8]
  10010e214  stp     xzr, xzr, [sp, #0x98]
  10010e218  bl      _objc_retain
  10010e21c  mov     x22, x0
  10010e220  adrp    x8, #0x100416000
  10010e224  nop
  10010e228  ldr     x23, [x8, #0xe00]
  10010e22c  add     x2, sp, #0x98
  10010e230  add     x3, sp, #0x18
  10010e234  mov     x4, #0x10
  10010e238  mov     x1, x23
  10010e23c  bl      _objc_msgSend                            ; [[arg1 executeFetchRequest:arg2 error:arg3] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10010e240  mov     x24, x0
  10010e244  cbz     x24, loc_10010e2c0                       ; if ([[arg1 executeFetchRequest:arg2 error:arg3] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] == 0)
  10010e248  ldr     x8, [sp, #0xa8]
  10010e24c  ldr     x28, [x8]
  10010e250  adrp    x8, #0x10041b000
  10010e254  add     x8, x8, #0x9b8                           ; &@selector(deleteObject:)
  10010e258  ldr     x25, [x8]
  10010e25c  add     x26, sp, #0x98
  10010e260  add     x27, sp, #0x18
loc_10010e264:
  10010e264  mov     x20, #0
loc_10010e268:
  10010e268  ldr     x8, [sp, #0xa8]
  10010e26c  ldr     x8, [x8]
  10010e270  cmp     x8, x28
  10010e274  b.eq    loc_10010e280                            ; if (x8 == x28)
  10010e278  mov     x0, x22
  10010e27c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 executeFetchRequest:arg2 error:arg3])
loc_10010e280:
  10010e280  ldr     x8, [sp, #0xa0]
  10010e284  ldr     x2, [x8, x20, lsl #3]
  10010e288  mov     x0, x19
  10010e28c  mov     x1, x25
  10010e290  bl      _objc_msgSend                            ; [arg1 deleteObject:x2]
  10010e294  add     x20, x20, #1
  10010e298  cmp     x20, x24
  10010e29c  b.lo    loc_10010e268                            ; if ((x20 + 1) <u [[arg1 executeFetchRequest:arg2 error:arg3] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16])
  10010e2a0  mov     x4, #0x10
  10010e2a4  mov     x0, x22
  10010e2a8  mov     x1, x23
  10010e2ac  mov     x2, x26
  10010e2b0  mov     x3, x27
  10010e2b4  bl      _objc_msgSend                            ; [[arg1 executeFetchRequest:arg2 error:arg3] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16]
  10010e2b8  mov     x24, x0
  10010e2bc  cbnz    x24, loc_10010e264                       ; if ([[arg1 executeFetchRequest:arg2 error:arg3] countByEnumeratingWithState:&sp[0x98] objects:&sp[0x18] count:16] != 0)
loc_10010e2c0:
  10010e2c0  mov     x0, x22
  10010e2c4  bl      _objc_release
  10010e2c8  cbz     x21, loc_10010e2dc                       ; if (arg3 == 0)
  10010e2cc  ldr     x8, [x21]                                ; x8 = arg3[+0x0]
  10010e2d0  cmp     x8, #0
  10010e2d4  cset    w20, eq
  10010e2d8  b       loc_10010e2e0
loc_10010e2dc:
  10010e2dc  mov     w20, #0
loc_10010e2e0:
  10010e2e0  mov     x0, x22
  10010e2e4  bl      _objc_release
  10010e2e8  ldr     x0, [sp, #0x10]
  10010e2ec  bl      _objc_release
  10010e2f0  mov     x0, x19
  10010e2f4  bl      _objc_release
  10010e2f8  adrp    x8, #0x1003b0000
  10010e2fc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10010e300  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10010e304  ldur    x9, [x29, #-0x58]
  10010e308  sub     x8, x8, x9
  10010e30c  cbnz    x8, loc_10010e334                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10010e310  and     w0, w20, #1
  10010e314  sub     sp, x29, #0x50
  10010e318  ldp     x28, x27, [sp], #0x10
  10010e31c  ldp     x26, x25, [sp], #0x10
  10010e320  ldp     x24, x23, [sp], #0x10
  10010e324  ldp     x22, x21, [sp], #0x10
  10010e328  ldp     x20, x19, [sp], #0x10
  10010e32c  ldp     x29, x30, [sp], #0x10
  10010e330  ret
loc_10010e334:
  10010e334  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10010e338:
  10010e338  mov     x21, x0
  10010e33c  mov     x0, x22
  10010e340  bl      _objc_release
  10010e344  mov     x0, x22
  10010e348  bl      _objc_release
  10010e34c  ldr     x20, [sp, #0x10]
loc_10010e350:
  10010e350  mov     x0, x20
  10010e354  bl      _objc_release
  10010e358  mov     x0, x19
  10010e35c  bl      _objc_release
  10010e360  mov     x0, x21
  10010e364  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010e368  mov     x21, x0
  10010e36c  b       loc_10010e350
  10010e370  b       loc_10010e338
  10010e374  b       loc_10010e338

; ======================================================================
; -[TAGDataProvider deleteExcessHits:]
; address 0x10010e378  size 708  kind objc
; ======================================================================
  10010e378  stp     x29, x30, [sp, #-0x10]!
  10010e37c  mov     x29, sp
  10010e380  stp     x20, x19, [sp, #-0x10]!
  10010e384  stp     x22, x21, [sp, #-0x10]!
  10010e388  stp     x24, x23, [sp, #-0x10]!
  10010e38c  stp     x26, x25, [sp, #-0x10]!
  10010e390  sub     sp, sp, #0x10
  10010e394  mov     x20, x2
  10010e398  mov     x21, x0
  10010e39c  adrp    x8, #0x10041b000
  10010e3a0  nop
  10010e3a4  ldr     x22, [x8, #0x978]
  10010e3a8  mov     x1, x22
  10010e3ac  bl      _objc_msgSend                            ; [self context]
  10010e3b0  mov     x29, x29
  10010e3b4  bl      _objc_retainAutoreleasedReturnValue
  10010e3b8  mov     x19, x0
  10010e3bc  adrp    x8, #0x10041b000
  10010e3c0  nop
  10010e3c4  ldr     x24, [x8, #0x9c8]
  10010e3c8  mov     x0, x21
  10010e3cc  mov     x1, x24
  10010e3d0  bl      _objc_msgSend                            ; [self maxHitAge]
  10010e3d4  fcmp    d0, #0.0
  10010e3d8  b.eq    loc_10010e4cc                            ; if ([self maxHitAge] == 0.0)
  10010e3dc  adrp    x8, #0x10041e000
  10010e3e0  ldr     x0, [x8, #0x508]                         ; class TAGModel
  10010e3e4  adrp    x8, #0x10041b000
  10010e3e8  nop
  10010e3ec  ldr     x1, [x8, #0x998]
  10010e3f0  mov     x2, #0
  10010e3f4  bl      _objc_msgSend                            ; [TAGModel requestHitsWithLimit:0]
  10010e3f8  mov     x29, x29
  10010e3fc  bl      _objc_retainAutoreleasedReturnValue
  10010e400  mov     x23, x0
  10010e404  adrp    x8, #0x10041e000
  10010e408  ldr     x25, [x8, #0x510]                        ; class NSPredicate
  10010e40c  nop
  10010e410  ldr     x26, [x8, #0x38]                         ; class NSDate
  10010e414  mov     x0, x21
  10010e418  mov     x1, x24
  10010e41c  bl      _objc_msgSend                            ; [self maxHitAge]
  10010e420  fneg    d0, d0
  10010e424  adrp    x8, #0x100417000
  10010e428  nop
  10010e42c  ldr     x1, [x8, #0x6f8]
  10010e430  mov     x0, x26
  10010e434  bl      _objc_msgSend                            ; [NSDate dateWithTimeIntervalSinceNow:-[self maxHitAge]]
  10010e438  adrp    x8, #0x1003b7000
  10010e43c  add     x8, x8, #0xbf8                           ; &d_1003b7bf8
  10010e440  ldr     x26, [x8]                                ; [&d_1003b7bf8] -> @"timestamp"
  10010e444  mov     x29, x29
  10010e448  bl      _objc_retainAutoreleasedReturnValue
  10010e44c  mov     x24, x0
  10010e450  adrp    x8, #0x10041b000
  10010e454  nop
  10010e458  ldr     x1, [x8, #0x9d0]
  10010e45c  stp     x26, x24, [sp]
  10010e460  adrp    x2, #0x1003c3000
  10010e464  add     x2, x2, #0xeb0                           ; @"%K <= %@"
  10010e468  mov     x0, x25
  10010e46c  bl      _objc_msgSend                            ; [NSPredicate predicateWithFormat:@"%K <= %@", @"timestamp"]
  10010e470  mov     x29, x29
  10010e474  bl      _objc_retainAutoreleasedReturnValue
  10010e478  mov     x25, x0
  10010e47c  adrp    x8, #0x10041b000
  10010e480  nop
  10010e484  ldr     x1, [x8, #0x9d8]
  10010e488  mov     x0, x23
  10010e48c  mov     x2, x25
  10010e490  bl      _objc_msgSend                            ; [[TAGModel requestHitsWithLimit:0] setPredicate:[NSPredicate predicateWithFormat:@"%K <= %@", @"timestamp"]]
  10010e494  mov     x0, x25
  10010e498  bl      _objc_release
  10010e49c  mov     x0, x24
  10010e4a0  bl      _objc_release
  10010e4a4  adrp    x8, #0x10041b000
  10010e4a8  nop
  10010e4ac  ldr     x1, [x8, #0x9e0]
  10010e4b0  mov     x0, x21
  10010e4b4  mov     x2, x19
  10010e4b8  mov     x3, x23
  10010e4bc  mov     x4, x20
  10010e4c0  bl      _objc_msgSend                            ; [self context:[self context] deleteRequest:[TAGModel requestHitsWithLimit:0] error:arg1]
  10010e4c4  mov     x0, x23
  10010e4c8  bl      _objc_release
loc_10010e4cc:
  10010e4cc  adrp    x8, #0x10041b000
  10010e4d0  nop
  10010e4d4  ldr     x23, [x8, #0x9e8]
  10010e4d8  mov     x0, x21
  10010e4dc  mov     x1, x23
  10010e4e0  bl      _objc_msgSend                            ; [self maxHitCount]
  10010e4e4  cbz     x0, loc_10010e598                        ; if ([self maxHitCount] == 0)
  10010e4e8  mov     x0, x21
  10010e4ec  mov     x1, x22
  10010e4f0  bl      _objc_msgSend                            ; [self context]
  10010e4f4  mov     x29, x29
  10010e4f8  bl      _objc_retainAutoreleasedReturnValue
  10010e4fc  mov     x24, x0
  10010e500  adrp    x8, #0x10041b000
  10010e504  nop
  10010e508  ldr     x1, [x8, #0x9f0]
  10010e50c  mov     x0, x21
  10010e510  mov     x2, x24
  10010e514  mov     x3, x20
  10010e518  bl      _objc_msgSend                            ; [self context:[self context] hitCount:arg1]
  10010e51c  mov     x22, x0
  10010e520  mov     x0, x24
  10010e524  bl      _objc_release
  10010e528  mov     x0, x21
  10010e52c  mov     x1, x23
  10010e530  bl      _objc_msgSend                            ; [self maxHitCount]
  10010e534  cmp     x22, x0
  10010e538  b.ls    loc_10010e598                            ; if ([self context:[self context] hitCount:arg1] <=u [self maxHitCount])
  10010e53c  mov     x0, x21
  10010e540  mov     x1, x23
  10010e544  bl      _objc_msgSend                            ; [self maxHitCount]
  10010e548  sub     x2, x22, x0
  10010e54c  adrp    x8, #0x10041e000
  10010e550  ldr     x0, [x8, #0x508]                         ; class TAGModel
  10010e554  adrp    x8, #0x10041b000
  10010e558  nop
  10010e55c  ldr     x1, [x8, #0x998]
  10010e560  bl      _objc_msgSend                            ; [TAGModel requestHitsWithLimit:([self context:[self context] hitCount:arg1] - [self maxHitCount])]
  10010e564  mov     x29, x29
  10010e568  bl      _objc_retainAutoreleasedReturnValue
  10010e56c  mov     x22, x0
  10010e570  adrp    x8, #0x10041b000
  10010e574  nop
  10010e578  ldr     x1, [x8, #0x9e0]
  10010e57c  mov     x0, x21
  10010e580  mov     x2, x19
  10010e584  mov     x3, x22
  10010e588  mov     x4, x20
  10010e58c  bl      _objc_msgSend                            ; [self context:[self context] deleteRequest:[TAGModel requestHitsWithLimit:([self context:[self context] hitCount:arg1] - [self maxHitCount])] error:arg1]
  10010e590  mov     x0, x22
  10010e594  bl      _objc_release
loc_10010e598:
  10010e598  cbz     x20, loc_10010e5ac                       ; if (arg1 == 0)
  10010e59c  ldr     x8, [x20]                                ; x8 = arg1[+0x0]
  10010e5a0  cmp     x8, #0
  10010e5a4  cset    w20, eq
  10010e5a8  b       loc_10010e5b0
loc_10010e5ac:
  10010e5ac  mov     w20, #0
loc_10010e5b0:
  10010e5b0  mov     x0, x19
  10010e5b4  bl      _objc_release
  10010e5b8  and     w0, w20, #1
  10010e5bc  sub     sp, x29, #0x40
  10010e5c0  ldp     x26, x25, [sp], #0x10
  10010e5c4  ldp     x24, x23, [sp], #0x10
  10010e5c8  ldp     x22, x21, [sp], #0x10
  10010e5cc  ldp     x20, x19, [sp], #0x10
  10010e5d0  ldp     x29, x30, [sp], #0x10
  10010e5d4  ret
  10010e5d8  mov     x20, x0
  10010e5dc  b       loc_10010e5ec
  10010e5e0  mov     x20, x0
  10010e5e4  mov     x0, x25
  10010e5e8  bl      _objc_release
loc_10010e5ec:
  10010e5ec  mov     x0, x24
  10010e5f0  bl      _objc_release
  10010e5f4  b       loc_10010e5fc
  10010e5f8  mov     x20, x0
loc_10010e5fc:
  10010e5fc  mov     x0, x23
  10010e600  bl      _objc_release
  10010e604  b       loc_10010e62c
  10010e608  mov     x20, x0
  10010e60c  mov     x0, x24
  10010e610  bl      _objc_release
  10010e614  b       loc_10010e62c
  10010e618  mov     x20, x0
  10010e61c  b       loc_10010e62c
  10010e620  mov     x20, x0
  10010e624  mov     x0, x22
  10010e628  bl      _objc_release
loc_10010e62c:
  10010e62c  mov     x0, x19
  10010e630  bl      _objc_release
  10010e634  mov     x0, x20
  10010e638  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider context:hitCount:]
; address 0x10010e63c  size 176  kind objc
; ======================================================================
  10010e63c  stp     x29, x30, [sp, #-0x10]!
  10010e640  mov     x29, sp
  10010e644  stp     x20, x19, [sp, #-0x10]!
  10010e648  stp     x22, x21, [sp, #-0x10]!
  10010e64c  mov     x20, x3
  10010e650  mov     x0, x2
  10010e654  bl      _objc_retain
  10010e658  mov     x19, x0
  10010e65c  adrp    x8, #0x10041e000
  10010e660  ldr     x0, [x8, #0x508]                         ; class TAGModel
  10010e664  adrp    x8, #0x10041b000
  10010e668  nop
  10010e66c  ldr     x1, [x8, #0x998]
  10010e670  mov     x2, #0
  10010e674  bl      _objc_msgSend                            ; [TAGModel requestHitsWithLimit:0]
  10010e678  mov     x29, x29
  10010e67c  bl      _objc_retainAutoreleasedReturnValue
  10010e680  mov     x21, x0
  10010e684  adrp    x8, #0x10041b000
  10010e688  nop
  10010e68c  ldr     x1, [x8, #0x9f8]
  10010e690  mov     x0, x19
  10010e694  mov     x2, x21
  10010e698  mov     x3, x20
  10010e69c  bl      _objc_msgSend                            ; [arg1 countForFetchRequest:[TAGModel requestHitsWithLimit:0] error:arg2]
  10010e6a0  mov     x20, x0
  10010e6a4  mov     x0, x21
  10010e6a8  bl      _objc_release
  10010e6ac  mov     x0, x19
  10010e6b0  bl      _objc_release
  10010e6b4  mov     x0, x20
  10010e6b8  ldp     x22, x21, [sp], #0x10
  10010e6bc  ldp     x20, x19, [sp], #0x10
  10010e6c0  ldp     x29, x30, [sp], #0x10
  10010e6c4  ret
  10010e6c8  mov     x20, x0
  10010e6cc  b       loc_10010e6dc
  10010e6d0  mov     x20, x0
  10010e6d4  mov     x0, x21
  10010e6d8  bl      _objc_release
loc_10010e6dc:
  10010e6dc  mov     x0, x19
  10010e6e0  bl      _objc_release
  10010e6e4  mov     x0, x20
  10010e6e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider save]
; address 0x10010e6ec  size 432  kind objc
; ======================================================================
  10010e6ec  stp     x29, x30, [sp, #-0x10]!
  10010e6f0  mov     x29, sp
  10010e6f4  stp     x20, x19, [sp, #-0x10]!
  10010e6f8  stp     x22, x21, [sp, #-0x10]!
  10010e6fc  stp     x24, x23, [sp, #-0x10]!
  10010e700  sub     sp, sp, #0x20
  10010e704  mov     x19, x0
  10010e708  adrp    x8, #0x10041b000
  10010e70c  nop
  10010e710  ldr     x20, [x8, #0x978]
  10010e714  mov     x1, x20
  10010e718  bl      _objc_msgSend                            ; [self context]
  10010e71c  mov     x29, x29
  10010e720  bl      _objc_retainAutoreleasedReturnValue
  10010e724  mov     x21, x0
  10010e728  adrp    x8, #0x10041b000
  10010e72c  nop
  10010e730  ldr     x1, [x8, #0xa00]
  10010e734  bl      _objc_msgSend                            ; [[self context] hasChanges]
  10010e738  mov     x22, x0
  10010e73c  mov     x0, x21
  10010e740  bl      _objc_release
  10010e744  cbz     w22, loc_10010e844                       ; if ([[self context] hasChanges] == 0)
  10010e748  str     xzr, [sp, #0x18]
  10010e74c  adrp    x8, #0x10041b000
  10010e750  nop
  10010e754  ldr     x1, [x8, #0xa08]
  10010e758  mov     x21, #0
  10010e75c  add     x2, sp, #0x18
  10010e760  mov     x0, x19
  10010e764  bl      _objc_msgSend                            ; [self deleteExcessHits:&sp[0x18]]
  10010e768  ldr     x0, [sp, #0x18]
  10010e76c  bl      _objc_retain
  10010e770  mov     x21, x0
  10010e774  mov     x0, x19
  10010e778  mov     x1, x20
  10010e77c  bl      _objc_msgSend                            ; [self context]
  10010e780  mov     x29, x29
  10010e784  bl      _objc_retainAutoreleasedReturnValue
  10010e788  mov     x23, x0
  10010e78c  str     x21, [sp, #0x10]
  10010e790  adrp    x8, #0x10041b000
  10010e794  nop
  10010e798  ldr     x1, [x8, #0xa10]
  10010e79c  add     x2, sp, #0x10
  10010e7a0  bl      _objc_msgSend                            ; [[self context] save:&sp[0x10]]
  10010e7a4  ldr     x0, [sp, #0x10]
  10010e7a8  bl      _objc_retain
  10010e7ac  mov     x22, x0
  10010e7b0  mov     x0, x21
  10010e7b4  bl      _objc_release
  10010e7b8  mov     x0, x23
  10010e7bc  bl      _objc_release
  10010e7c0  mov     x21, x22
  10010e7c4  mov     x0, x19
  10010e7c8  mov     x1, x20
  10010e7cc  bl      _objc_msgSend                            ; [self context]
  10010e7d0  mov     x29, x29
  10010e7d4  bl      _objc_retainAutoreleasedReturnValue
  10010e7d8  mov     x20, x0
  10010e7dc  str     x22, [sp, #8]
  10010e7e0  adrp    x8, #0x10041b000
  10010e7e4  nop
  10010e7e8  ldr     x1, [x8, #0x9f0]
  10010e7ec  add     x3, sp, #8
  10010e7f0  mov     x0, x19
  10010e7f4  mov     x2, x20
  10010e7f8  bl      _objc_msgSend                            ; [self context:[self context] hitCount:&sp[0x8]]
  10010e7fc  mov     x23, x0
  10010e800  ldr     x0, [sp, #8]
  10010e804  bl      _objc_retain
  10010e808  mov     x21, x0
  10010e80c  mov     x0, x22
  10010e810  bl      _objc_release
  10010e814  cmp     x23, #0
  10010e818  cset    w2, ne
  10010e81c  adrp    x8, #0x10041b000
  10010e820  nop
  10010e824  ldr     x1, [x8, #0x9a8]
  10010e828  mov     x22, x21
  10010e82c  mov     x0, x19
  10010e830  bl      _objc_msgSend                            ; [self setHasHits:([self context:[self context] hitCount:&sp[0x8]] != 0)]
  10010e834  mov     x0, x20
  10010e838  bl      _objc_release
  10010e83c  mov     x0, x21
  10010e840  bl      _objc_release
loc_10010e844:
  10010e844  sub     sp, x29, #0x30
  10010e848  ldp     x24, x23, [sp], #0x10
  10010e84c  ldp     x22, x21, [sp], #0x10
  10010e850  ldp     x20, x19, [sp], #0x10
  10010e854  ldp     x29, x30, [sp], #0x10
  10010e858  ret
  10010e85c  mov     x19, x0
  10010e860  b       loc_10010e88c
  10010e864  mov     x19, x0
  10010e868  mov     x0, x23
  10010e86c  bl      _objc_release
  10010e870  b       loc_10010e88c
  10010e874  mov     x19, x0
  10010e878  b       loc_10010e88c
  10010e87c  mov     x19, x0
  10010e880  mov     x0, x20
  10010e884  bl      _objc_release
  10010e888  mov     x21, x22
loc_10010e88c:
  10010e88c  mov     x0, x21
  10010e890  bl      _objc_release
  10010e894  mov     x0, x19
  10010e898  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider init]
; address 0x10010e89c  size 488  kind objc
; ======================================================================
  10010e89c  stp     x29, x30, [sp, #-0x10]!
  10010e8a0  mov     x29, sp
  10010e8a4  stp     x20, x19, [sp, #-0x10]!
  10010e8a8  stp     x22, x21, [sp, #-0x10]!
  10010e8ac  stp     x24, x23, [sp, #-0x10]!
  10010e8b0  stp     x26, x25, [sp, #-0x10]!
  10010e8b4  sub     sp, sp, #0x40
  10010e8b8  str     x0, [sp, #0x30]
  10010e8bc  adrp    x8, #0x10041f000
  10010e8c0  ldr     x8, [x8, #0x88]
  10010e8c4  str     x8, [sp, #0x38]
  10010e8c8  adrp    x8, #0x100416000
  10010e8cc  nop
  10010e8d0  ldr     x1, [x8, #0xab8]
  10010e8d4  mov     x24, #0
  10010e8d8  add     x0, sp, #0x30
  10010e8dc  bl      _objc_msgSendSuper2                      ; [super init]
  10010e8e0  mov     x19, x0
  10010e8e4  cbz     x19, loc_10010ea20                       ; if (self == 0)
  10010e8e8  mov     x24, x19
  10010e8ec  adrp    x8, #0x100420000
  10010e8f0  ldrsw   x8, [x8, #0x734]                         ; ivar offset TAGDataProvider._maxHitCount (+0x10)
  10010e8f4  mov     x9, #0x7d0
  10010e8f8  str     x9, [x19, x8]                            ; self->_maxHitCount = 2000
  10010e8fc  adrp    x8, #0x100420000
  10010e900  ldrsw   x8, [x8, #0x738]                         ; ivar offset TAGDataProvider._maxHitAge (+0x18)
  10010e904  mov     x9, #0x4143000000000000
  10010e908  movk    x9, #0xc680, lsl #32                     ; 0x4143c68000000000 (as double 2592000.0)
  10010e90c  str     x9, [x19, x8]                            ; self->_maxHitAge = 0x4143c68000000000
  10010e910  adrp    x25, #0x10041d000
  10010e914  ldr     x0, [x25, #0xf60]                        ; class NSNotificationCenter
  10010e918  adrp    x8, #0x100416000
  10010e91c  nop
  10010e920  ldr     x21, [x8, #0xe88]
  10010e924  mov     x1, x21
  10010e928  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10010e92c  mov     x29, x29
  10010e930  bl      _objc_retainAutoreleasedReturnValue
  10010e934  mov     x23, x0
  10010e938  adrp    x8, #0x10041b000
  10010e93c  nop
  10010e940  ldr     x20, [x8, #0xa18]
  10010e944  adrp    x8, #0x1003b0000
  10010e948  ldr     x8, [x8, #0xf0]                          ; _UIApplicationWillResignActiveNotification
  10010e94c  ldr     x4, [x8]                                 ; x4 = _UIApplicationWillResignActiveNotification[+0x0]
  10010e950  adrp    x8, #0x100416000
  10010e954  nop
  10010e958  ldr     x22, [x8, #0xe98]
  10010e95c  mov     x5, #0
  10010e960  mov     x1, x22
  10010e964  mov     x2, x19
  10010e968  mov     x3, x20
  10010e96c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onExit:) name:_UIApplicationWillResignActiveNotification[+0x0] object:0]
  10010e970  mov     x24, x19
  10010e974  mov     x0, x23
  10010e978  bl      _objc_release
  10010e97c  ldr     x0, [x25, #0xf60]                        ; class NSNotificationCenter
  10010e980  mov     x1, x21
  10010e984  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10010e988  mov     x29, x29
  10010e98c  bl      _objc_retainAutoreleasedReturnValue
  10010e990  mov     x21, x0
  10010e994  adrp    x8, #0x1003b0000
  10010e998  ldr     x8, [x8, #0xf8]                          ; _UIApplicationWillTerminateNotification
  10010e99c  ldr     x4, [x8]                                 ; x4 = _UIApplicationWillTerminateNotification[+0x0]
  10010e9a0  mov     x5, #0
  10010e9a4  mov     x1, x22
  10010e9a8  mov     x2, x19
  10010e9ac  mov     x3, x20
  10010e9b0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onExit:) name:_UIApplicationWillTerminateNotification[+0x0] object:0]
  10010e9b4  mov     x0, x21
  10010e9b8  bl      _objc_release
  10010e9bc  adrp    x8, #0x1003b0000
  10010e9c0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10010e9c4  adrp    x9, #0x10041e000
  10010e9c8  ldr     x20, [x9, #0x4f8]                        ; class TAGDispatchUtil
  10010e9cc  mov     w9, #-0x3e000000
  10010e9d0  str     x8, [sp, #8]
  10010e9d4  stp     w9, wzr, [sp, #0x10]
  10010e9d8  adr     x8, #0x10010ea84                         ; &-[TAGDataProvider init]_block_invoke
  10010e9dc  nop
  10010e9e0  str     x8, [sp, #0x18]
  10010e9e4  adrp    x8, #0x1003b7000
  10010e9e8  add     x8, x8, #0x9f0                           ; &d_1003b79f0
  10010e9ec  str     x8, [sp, #0x20]
  10010e9f0  mov     x0, x19
  10010e9f4  bl      _objc_retain
  10010e9f8  str     x19, [sp, #0x28]
  10010e9fc  adrp    x8, #0x10041b000
  10010ea00  nop
  10010ea04  ldr     x1, [x8, #0x970]
  10010ea08  mov     w3, #0
  10010ea0c  add     x2, sp, #8
  10010ea10  mov     x0, x20
  10010ea14  bl      _objc_msgSend                            ; [TAGDispatchUtil background:^{-[TAGDataProvider init]_block_invoke captures +0x20=self, +0x28=self, +0x30=TAGDataProvider} wait:0]
  10010ea18  ldr     x0, [sp, #0x28]
  10010ea1c  bl      _objc_release
loc_10010ea20:
  10010ea20  mov     x0, x19
  10010ea24  sub     sp, x29, #0x40
  10010ea28  ldp     x26, x25, [sp], #0x10
  10010ea2c  ldp     x24, x23, [sp], #0x10
  10010ea30  ldp     x22, x21, [sp], #0x10
  10010ea34  ldp     x20, x19, [sp], #0x10
  10010ea38  ldp     x29, x30, [sp], #0x10
  10010ea3c  ret
  10010ea40  mov     x20, x0
  10010ea44  mov     x0, x23
  10010ea48  b       loc_10010ea6c
  10010ea4c  mov     x20, x0
  10010ea50  b       loc_10010ea74
  10010ea54  mov     x20, x0
  10010ea58  mov     x0, x21
  10010ea5c  b       loc_10010ea6c
  10010ea60  mov     x20, x0
  10010ea64  ldr     x8, [sp, #0x28]
  10010ea68  mov     x0, x8
loc_10010ea6c:
  10010ea6c  bl      _objc_release
  10010ea70  mov     x24, x19
loc_10010ea74:
  10010ea74  mov     x0, x24
  10010ea78  bl      _objc_release
  10010ea7c  mov     x0, x20
  10010ea80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDataProvider init]_block_invoke
; address 0x10010ea84  size 236  kind block
; ======================================================================
  10010ea84  stp     x29, x30, [sp, #-0x10]!
  10010ea88  mov     x29, sp
  10010ea8c  stp     x20, x19, [sp, #-0x10]!
  10010ea90  stp     x22, x21, [sp, #-0x10]!
  10010ea94  mov     x19, x0
  10010ea98  adrp    x8, #0x10041e000
  10010ea9c  ldr     x0, [x8, #0x4f8]                         ; class TAGDispatchUtil
  10010eaa0  adrp    x8, #0x10041b000
  10010eaa4  nop
  10010eaa8  ldr     x1, [x8, #0xa20]
  10010eaac  adrp    x2, #0x1003c3000
  10010eab0  add     x2, x2, #0xe90                           ; @"GTM.sql"
  10010eab4  bl      _objc_msgSend                            ; [TAGDispatchUtil databaseFullURL:@"GTM.sql"]
  10010eab8  mov     x29, x29
  10010eabc  bl      _objc_retainAutoreleasedReturnValue
  10010eac0  mov     x20, x0
  10010eac4  adrp    x8, #0x10041e000
  10010eac8  ldr     x0, [x8, #0x508]                         ; class TAGModel
  10010eacc  adrp    x8, #0x10041b000
  10010ead0  nop
  10010ead4  ldr     x1, [x8, #0xa28]
  10010ead8  mov     x2, x20
  10010eadc  bl      _objc_msgSend                            ; [TAGModel contextWithURL:[TAGDispatchUtil databaseFullURL:@"GTM.sql"]]
  10010eae0  mov     x29, x29
  10010eae4  bl      _objc_retainAutoreleasedReturnValue
  10010eae8  ldr     x9, [x19, #0x20]                         ; x9 = captured self
  10010eaec  adrp    x8, #0x100420000
  10010eaf0  ldrsw   x10, [x8, #0x73c]                        ; ivar offset TAGDataProvider._context (+0x20)
  10010eaf4  ldr     x8, [x9, x10]                            ; x8 = self->_context
  10010eaf8  str     x0, [x9, x10]                            ; self->_context = [TAGModel contextWithURL:[TAGDispatchUtil databaseFullURL:@"GTM.sql"]]
  10010eafc  mov     x0, x8
  10010eb00  bl      _objc_release
  10010eb04  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10010eb08  adrp    x8, #0x10041b000
  10010eb0c  nop
  10010eb10  ldr     x1, [x8, #0x9a8]
  10010eb14  mov     w2, #1
  10010eb18  bl      _objc_msgSend                            ; [self setHasHits:1]
  10010eb1c  mov     x0, x20
  10010eb20  ldp     x22, x21, [sp], #0x10
  10010eb24  ldp     x20, x19, [sp], #0x10
  10010eb28  ldp     x29, x30, [sp], #0x10
  10010eb2c  b       _objc_release
  10010eb30  mov     x21, x1
  10010eb34  mov     x19, x0
  10010eb38  b       loc_10010eb4c
  10010eb3c  mov     x21, x1
  10010eb40  mov     x19, x0
  10010eb44  mov     x0, x20
  10010eb48  bl      _objc_release
loc_10010eb4c:
  10010eb4c  mov     x0, x19
  10010eb50  cmp     w21, #1
  10010eb54  b.ne    loc_10010eb6c                            ; if (w21 != 1)
  10010eb58  bl      _objc_begin_catch                        ; objc_begin_catch()
  10010eb5c  ldp     x22, x21, [sp], #0x10
  10010eb60  ldp     x20, x19, [sp], #0x10
  10010eb64  ldp     x29, x30, [sp], #0x10
  10010eb68  b       _objc_end_catch                          ; objc_end_catch(objc_begin_catch())
loc_10010eb6c:
  10010eb6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10010eb70
; address 0x10010eb70  size 8  kind sub
; ======================================================================
  10010eb70  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10010eb74  b       _objc_retain

; ======================================================================
; sub_10010eb78
; address 0x10010eb78  size 8  kind sub
; ======================================================================
  10010eb78  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10010eb7c  b       _objc_release

; ======================================================================
; -[TAGDataProvider dealloc]
; address 0x10010eb80  size 220  kind objc
; ======================================================================
  10010eb80  stp     x29, x30, [sp, #-0x10]!
  10010eb84  mov     x29, sp
  10010eb88  stp     x20, x19, [sp, #-0x10]!
  10010eb8c  stp     x22, x21, [sp, #-0x10]!
  10010eb90  sub     sp, sp, #0x20
  10010eb94  mov     x19, x0
  10010eb98  adrp    x8, #0x10041d000
  10010eb9c  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10010eba0  adrp    x8, #0x100416000
  10010eba4  nop
  10010eba8  ldr     x1, [x8, #0xe88]
  10010ebac  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10010ebb0  mov     x29, x29
  10010ebb4  bl      _objc_retainAutoreleasedReturnValue
  10010ebb8  mov     x20, x0
  10010ebbc  adrp    x8, #0x100418000
  10010ebc0  nop
  10010ebc4  ldr     x1, [x8, #0x328]
  10010ebc8  mov     x2, x19
  10010ebcc  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  10010ebd0  mov     x0, x20
  10010ebd4  bl      _objc_release
  10010ebd8  str     x19, [sp, #0x10]
  10010ebdc  adrp    x8, #0x10041f000
  10010ebe0  ldr     x8, [x8, #0x88]
  10010ebe4  str     x8, [sp, #0x18]
  10010ebe8  adrp    x8, #0x100416000
  10010ebec  nop
  10010ebf0  ldr     x1, [x8, #0xfc8]
  10010ebf4  add     x0, sp, #0x10
  10010ebf8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10010ebfc  sub     sp, x29, #0x20
  10010ec00  ldp     x22, x21, [sp], #0x10
  10010ec04  ldp     x20, x19, [sp], #0x10
  10010ec08  ldp     x29, x30, [sp], #0x10
  10010ec0c  ret
  10010ec10  mov     x21, x0
  10010ec14  b       loc_10010ec24
  10010ec18  mov     x21, x0
  10010ec1c  mov     x0, x20
  10010ec20  bl      _objc_release
loc_10010ec24:
  10010ec24  str     x19, [sp]
  10010ec28  adrp    x8, #0x10041f000
  10010ec2c  ldr     x8, [x8, #0x88]
  10010ec30  str     x8, [sp, #8]
  10010ec34  adrp    x8, #0x100416000
  10010ec38  nop
  10010ec3c  ldr     x8, [x8, #0xfc8]
  10010ec40  mov     x9, sp
  10010ec44  mov     x0, x9
  10010ec48  mov     x1, x8
  10010ec4c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  10010ec50  mov     x0, x21
  10010ec54  bl      __Unwind_Resume                          ; Unwind_Resume()
  10010ec58  bl      _objc_terminate                          ; objc_terminate()

; ======================================================================
; -[TAGDataProvider hasHits]
; address 0x10010ec5c  size 16  kind objc
; ======================================================================
  10010ec5c  adrp    x8, #0x100420000
  10010ec60  ldrsw   x8, [x8, #0x740]                         ; ivar offset TAGDataProvider._hasHits (+0x8)
  10010ec64  ldrb    w0, [x0, x8]                             ; w0 = self->_hasHits
  10010ec68  ret

; ======================================================================
; -[TAGDataProvider setHasHits:]
; address 0x10010ec6c  size 16  kind objc
; ======================================================================
  10010ec6c  adrp    x8, #0x100420000
  10010ec70  ldrsw   x8, [x8, #0x740]                         ; ivar offset TAGDataProvider._hasHits (+0x8)
  10010ec74  strb    w2, [x0, x8]                             ; self->_hasHits = arg1
  10010ec78  ret

; ======================================================================
; -[TAGDataProvider maxHitCount]
; address 0x10010ec7c  size 16  kind objc
; ======================================================================
  10010ec7c  adrp    x8, #0x100420000
  10010ec80  ldrsw   x8, [x8, #0x734]                         ; ivar offset TAGDataProvider._maxHitCount (+0x10)
  10010ec84  ldr     x0, [x0, x8]                             ; x0 = self->_maxHitCount
  10010ec88  ret

; ======================================================================
; -[TAGDataProvider setMaxHitCount:]
; address 0x10010ec8c  size 16  kind objc
; ======================================================================
  10010ec8c  adrp    x8, #0x100420000
  10010ec90  ldrsw   x8, [x8, #0x734]                         ; ivar offset TAGDataProvider._maxHitCount (+0x10)
  10010ec94  str     x2, [x0, x8]                             ; self->_maxHitCount = arg1
  10010ec98  ret

; ======================================================================
; -[TAGDataProvider maxHitAge]
; address 0x10010ec9c  size 16  kind objc
; ======================================================================
  10010ec9c  adrp    x8, #0x100420000
  10010eca0  ldrsw   x8, [x8, #0x738]                         ; ivar offset TAGDataProvider._maxHitAge (+0x18)
  10010eca4  ldr     d0, [x0, x8]                             ; d0 = self->_maxHitAge
  10010eca8  ret

; ======================================================================
; -[TAGDataProvider setMaxHitAge:]
; address 0x10010ecac  size 16  kind objc
; ======================================================================
  10010ecac  adrp    x8, #0x100420000
  10010ecb0  ldrsw   x8, [x8, #0x738]                         ; ivar offset TAGDataProvider._maxHitAge (+0x18)
  10010ecb4  str     d0, [x0, x8]                             ; self->_maxHitAge = arg1
  10010ecb8  ret

; ======================================================================
; -[TAGDataProvider context]
; address 0x10010ecbc  size 16  kind objc
; ======================================================================
  10010ecbc  adrp    x8, #0x100420000
  10010ecc0  ldrsw   x8, [x8, #0x73c]                         ; ivar offset TAGDataProvider._context (+0x20)
  10010ecc4  ldr     x0, [x0, x8]                             ; x0 = self->_context
  10010ecc8  ret

; ======================================================================
; -[TAGDataProvider setContext:]
; address 0x10010eccc  size 56  kind objc
; ======================================================================
  10010eccc  stp     x29, x30, [sp, #-0x10]!
  10010ecd0  mov     x29, sp
  10010ecd4  stp     x20, x19, [sp, #-0x10]!
  10010ecd8  mov     x19, x0
  10010ecdc  adrp    x8, #0x100420000
  10010ece0  ldrsw   x20, [x8, #0x73c]                        ; ivar offset TAGDataProvider._context (+0x20)
  10010ece4  mov     x0, x2
  10010ece8  bl      _objc_retain
  10010ecec  ldr     x8, [x19, x20]                           ; x8 = self->_context
  10010ecf0  str     x0, [x19, x20]                           ; self->_context = arg1
  10010ecf4  mov     x0, x8
  10010ecf8  ldp     x20, x19, [sp], #0x10
  10010ecfc  ldp     x29, x30, [sp], #0x10
  10010ed00  b       _objc_release

; ======================================================================
; -[TAGDataProvider .cxx_destruct]
; address 0x10010ed04  size 20  kind objc
; ======================================================================
  10010ed04  mov     x1, #0
  10010ed08  adrp    x8, #0x100420000
  10010ed0c  ldrsw   x8, [x8, #0x73c]                         ; ivar offset TAGDataProvider._context (+0x20)
  10010ed10  add     x0, x0, x8
  10010ed14  b       _objc_storeStrong
