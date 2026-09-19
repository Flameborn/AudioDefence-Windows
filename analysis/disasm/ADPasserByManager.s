// unit ADPasserByManager — 17 functions
//   0x1000d570c     180  -[ADPasserByManager init]
//   0x1000d57c0     420  -[ADPasserByManager startTimers]
//   0x1000d5964      16  -[ADPasserByManager allPasserBy]
//   0x1000d5974      44  -[ADPasserByManager addPasserBy:]
//   0x1000d59a0      28  -[ADPasserByManager removeAllPassersBy]
//   0x1000d59bc      40  -[ADPasserByManager clean]
//   0x1000d59e4     800  -[ADPasserByManager update:]
//   0x1000d5d04     516  -[ADPasserByManager generateCow]
//   0x1000d5f08     476  -[ADPasserByManager generateCar]
//   0x1000d60e4      92  -[ADPasserByManager randomizeNextCar]
//   0x1000d6140      92  -[ADPasserByManager randomizeNextCow]
//   0x1000d619c     568  -[ADPasserByManager availablePlaylistNameInArray:]
//   0x1000d63d4     272  -[ADPasserByManager addJukebox]
//   0x1000d64e4     276  -[ADPasserByManager addMachine]
//   0x1000d65f8     308  -[ADPasserByManager pause]
//   0x1000d672c     308  -[ADPasserByManager resume]
//   0x1000d6860      20  -[ADPasserByManager .cxx_destruct]

; ======================================================================
; -[ADPasserByManager init]
; address 0x1000d570c  size 180  kind objc
; ======================================================================
  1000d570c  stp     x22, x21, [sp, #-0x30]!
  1000d5710  stp     x20, x19, [sp, #0x10]
  1000d5714  stp     x29, x30, [sp, #0x20]
  1000d5718  add     x29, sp, #0x20
  1000d571c  sub     sp, sp, #0x10
  1000d5720  str     x0, [sp]
  1000d5724  adrp    x8, #0x10041e000
  1000d5728  ldr     x8, [x8, #0xfd8]
  1000d572c  str     x8, [sp, #8]
  1000d5730  adrp    x8, #0x100416000
  1000d5734  nop
  1000d5738  ldr     x20, [x8, #0xab8]
  1000d573c  mov     x21, #0
  1000d5740  mov     x0, sp
  1000d5744  mov     x1, x20
  1000d5748  bl      _objc_msgSendSuper2                      ; [super init]
  1000d574c  mov     x19, x0
  1000d5750  cbz     x19, loc_1000d5794                       ; if (self == 0)
  1000d5754  mov     x21, x19
  1000d5758  adrp    x8, #0x10041d000
  1000d575c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000d5760  adrp    x8, #0x100416000
  1000d5764  nop
  1000d5768  ldr     x1, [x8, #0xac8]
  1000d576c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000d5770  mov     x21, x19
  1000d5774  mov     x1, x20
  1000d5778  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000d577c  adrp    x8, #0x100420000
  1000d5780  ldrsw   x9, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d5784  ldr     x8, [x19, x9]                            ; x8 = self->passersBy
  1000d5788  str     x0, [x19, x9]                            ; self->passersBy = [[NSMutableArray alloc] init]
  1000d578c  mov     x0, x8
  1000d5790  bl      _objc_release
loc_1000d5794:
  1000d5794  mov     x0, x19
  1000d5798  sub     sp, x29, #0x20
  1000d579c  ldp     x29, x30, [sp, #0x20]
  1000d57a0  ldp     x20, x19, [sp, #0x10]
  1000d57a4  ldp     x22, x21, [sp], #0x30
  1000d57a8  ret
  1000d57ac  mov     x19, x0
  1000d57b0  mov     x0, x21
  1000d57b4  bl      _objc_release
  1000d57b8  mov     x0, x19
  1000d57bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPasserByManager startTimers]
; address 0x1000d57c0  size 420  kind objc
; ======================================================================
  1000d57c0  stp     x24, x23, [sp, #-0x40]!
  1000d57c4  stp     x22, x21, [sp, #0x10]
  1000d57c8  stp     x20, x19, [sp, #0x20]
  1000d57cc  stp     x29, x30, [sp, #0x30]
  1000d57d0  add     x29, sp, #0x30
  1000d57d4  mov     x19, x0
  1000d57d8  adrp    x23, #0x10041e000
  1000d57dc  ldr     x0, [x23]                                ; class ADGameModifiers
  1000d57e0  adrp    x8, #0x100417000
  1000d57e4  nop
  1000d57e8  ldr     x20, [x8, #0x510]
  1000d57ec  mov     x1, x20
  1000d57f0  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d57f4  mov     x29, x29
  1000d57f8  bl      _objc_retainAutoreleasedReturnValue
  1000d57fc  mov     x21, x0
  1000d5800  adrp    x8, #0x10041a000
  1000d5804  nop
  1000d5808  ldr     x1, [x8, #0xe10]
  1000d580c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] cows]
  1000d5810  mov     x22, x0
  1000d5814  mov     x0, x21
  1000d5818  bl      _objc_release
  1000d581c  cbz     w22, loc_1000d5834                       ; if ([[ADGameModifiers sharedModifiers] cows] == 0)
  1000d5820  adrp    x8, #0x10041a000
  1000d5824  nop
  1000d5828  ldr     x1, [x8, #0xe18]
  1000d582c  mov     x0, x19
  1000d5830  bl      _objc_msgSend                            ; [self randomizeNextCow]
loc_1000d5834:
  1000d5834  ldr     x0, [x23]                                ; class ADGameModifiers
  1000d5838  mov     x1, x20
  1000d583c  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d5840  mov     x29, x29
  1000d5844  bl      _objc_retainAutoreleasedReturnValue
  1000d5848  mov     x21, x0
  1000d584c  adrp    x8, #0x10041a000
  1000d5850  nop
  1000d5854  ldr     x1, [x8, #0xe20]
  1000d5858  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] cars]
  1000d585c  mov     x22, x0
  1000d5860  mov     x0, x21
  1000d5864  bl      _objc_release
  1000d5868  cbz     w22, loc_1000d5880                       ; if ([[ADGameModifiers sharedModifiers] cars] == 0)
  1000d586c  adrp    x8, #0x10041a000
  1000d5870  nop
  1000d5874  ldr     x1, [x8, #0xe28]
  1000d5878  mov     x0, x19
  1000d587c  bl      _objc_msgSend                            ; [self randomizeNextCar]
loc_1000d5880:
  1000d5880  ldr     x0, [x23]                                ; class ADGameModifiers
  1000d5884  mov     x1, x20
  1000d5888  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d588c  mov     x29, x29
  1000d5890  bl      _objc_retainAutoreleasedReturnValue
  1000d5894  mov     x21, x0
  1000d5898  adrp    x8, #0x10041a000
  1000d589c  nop
  1000d58a0  ldr     x1, [x8, #0xe30]
  1000d58a4  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] jukebox]
  1000d58a8  mov     x22, x0
  1000d58ac  mov     x0, x21
  1000d58b0  bl      _objc_release
  1000d58b4  cbz     w22, loc_1000d58cc                       ; if ([[ADGameModifiers sharedModifiers] jukebox] == 0)
  1000d58b8  adrp    x8, #0x10041a000
  1000d58bc  nop
  1000d58c0  ldr     x1, [x8, #0xe38]
  1000d58c4  mov     x0, x19
  1000d58c8  bl      _objc_msgSend                            ; [self addJukebox]
loc_1000d58cc:
  1000d58cc  ldr     x0, [x23]                                ; class ADGameModifiers
  1000d58d0  mov     x1, x20
  1000d58d4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d58d8  mov     x29, x29
  1000d58dc  bl      _objc_retainAutoreleasedReturnValue
  1000d58e0  mov     x20, x0
  1000d58e4  adrp    x8, #0x10041a000
  1000d58e8  nop
  1000d58ec  ldr     x1, [x8, #0xe40]
  1000d58f0  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] machine]
  1000d58f4  mov     x21, x0
  1000d58f8  mov     x0, x20
  1000d58fc  bl      _objc_release
  1000d5900  cbz     w21, loc_1000d5928                       ; if ([[ADGameModifiers sharedModifiers] machine] == 0)
  1000d5904  adrp    x8, #0x10041a000
  1000d5908  nop
  1000d590c  ldr     x1, [x8, #0xe48]
  1000d5910  mov     x0, x19
  1000d5914  ldp     x29, x30, [sp, #0x30]
  1000d5918  ldp     x20, x19, [sp, #0x20]
  1000d591c  ldp     x22, x21, [sp, #0x10]
  1000d5920  ldp     x24, x23, [sp], #0x40
  1000d5924  b       _objc_msgSend                            ; [self addMachine]
loc_1000d5928:
  1000d5928  ldp     x29, x30, [sp, #0x30]
  1000d592c  ldp     x20, x19, [sp, #0x20]
  1000d5930  ldp     x22, x21, [sp, #0x10]
  1000d5934  ldp     x24, x23, [sp], #0x40
  1000d5938  ret
  1000d593c  b       loc_1000d5944
  1000d5940  b       loc_1000d5944
loc_1000d5944:
  1000d5944  mov     x19, x0
  1000d5948  mov     x0, x21
  1000d594c  b       loc_1000d5958
  1000d5950  mov     x19, x0
  1000d5954  mov     x0, x20
loc_1000d5958:
  1000d5958  bl      _objc_release
  1000d595c  mov     x0, x19
  1000d5960  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPasserByManager allPasserBy]
; address 0x1000d5964  size 16  kind objc
; ======================================================================
  1000d5964  adrp    x8, #0x100420000
  1000d5968  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d596c  ldr     x0, [x0, x8]                             ; x0 = self->passersBy
  1000d5970  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADPasserByManager addPasserBy:]
; address 0x1000d5974  size 44  kind objc
; ======================================================================
  1000d5974  stp     x29, x30, [sp, #-0x10]!
  1000d5978  mov     x29, sp
  1000d597c  adrp    x8, #0x100420000
  1000d5980  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d5984  ldr     x0, [x0, x8]                             ; x0 = self->passersBy
  1000d5988  adrp    x8, #0x100416000
  1000d598c  nop
  1000d5990  ldr     x1, [x8, #0xd90]
  1000d5994  bl      _objc_msgSend                            ; [self->passersBy addObject:arg1]
  1000d5998  ldp     x29, x30, [sp], #0x10
  1000d599c  ret

; ======================================================================
; -[ADPasserByManager removeAllPassersBy]
; address 0x1000d59a0  size 28  kind objc
; ======================================================================
  1000d59a0  adrp    x8, #0x100420000
  1000d59a4  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d59a8  ldr     x0, [x0, x8]                             ; x0 = self->passersBy
  1000d59ac  adrp    x8, #0x100417000
  1000d59b0  nop
  1000d59b4  ldr     x1, [x8, #0x1b8]
  1000d59b8  b       _objc_msgSend                            ; [self->passersBy removeAllObjects]

; ======================================================================
; -[ADPasserByManager clean]
; address 0x1000d59bc  size 40  kind objc
; ======================================================================
  1000d59bc  adrp    x8, #0x100420000
  1000d59c0  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d59c4  ldr     x0, [x0, x8]                             ; x0 = self->passersBy
  1000d59c8  adrp    x8, #0x100417000
  1000d59cc  nop
  1000d59d0  ldr     x2, [x8]
  1000d59d4  adrp    x8, #0x100416000
  1000d59d8  nop
  1000d59dc  ldr     x1, [x8, #0xe48]
  1000d59e0  b       _objc_msgSend                            ; [self->passersBy makeObjectsPerformSelector:@selector(deactivatePlaylist)]

; ======================================================================
; -[ADPasserByManager update:]
; address 0x1000d59e4  size 800  kind objc
; ======================================================================
  1000d59e4  stp     d9, d8, [sp, #-0x70]!
  1000d59e8  stp     x28, x27, [sp, #0x10]
  1000d59ec  stp     x26, x25, [sp, #0x20]
  1000d59f0  stp     x24, x23, [sp, #0x30]
  1000d59f4  stp     x22, x21, [sp, #0x40]
  1000d59f8  stp     x20, x19, [sp, #0x50]
  1000d59fc  stp     x29, x30, [sp, #0x60]
  1000d5a00  add     x29, sp, #0x60
  1000d5a04  sub     sp, sp, #0xd0
  1000d5a08  mov     v8.16b, v0.16b
  1000d5a0c  mov     x19, x0
  1000d5a10  adrp    x24, #0x1003b0000
  1000d5a14  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000d5a18  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000d5a1c  stur    x24, [x29, #-0x68]
  1000d5a20  stp     xzr, xzr, [sp, #0x38]
  1000d5a24  stp     xzr, xzr, [sp, #0x28]
  1000d5a28  stp     xzr, xzr, [sp, #0x18]
  1000d5a2c  stp     xzr, xzr, [sp, #8]
  1000d5a30  adrp    x8, #0x100420000
  1000d5a34  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d5a38  ldr     x0, [x19, x8]                            ; x0 = self->passersBy
  1000d5a3c  bl      _objc_retain
  1000d5a40  mov     x20, x0
  1000d5a44  adrp    x8, #0x100416000
  1000d5a48  nop
  1000d5a4c  ldr     x21, [x8, #0xe00]
  1000d5a50  add     x2, sp, #8
  1000d5a54  add     x3, sp, #0x48
  1000d5a58  mov     w4, #0x10
  1000d5a5c  mov     x1, x21
  1000d5a60  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d5a64  mov     x22, x0
  1000d5a68  cbz     x22, loc_1000d5adc                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000d5a6c  ldr     x8, [sp, #0x18]
  1000d5a70  ldr     x25, [x8]
  1000d5a74  adrp    x8, #0x100419000
  1000d5a78  add     x8, x8, #0x68                            ; &@selector(update:)
  1000d5a7c  ldr     x23, [x8]
loc_1000d5a80:
  1000d5a80  mov     x26, #0
loc_1000d5a84:
  1000d5a84  ldr     x8, [sp, #0x18]
  1000d5a88  ldr     x8, [x8]
  1000d5a8c  cmp     x8, x25
  1000d5a90  b.eq    loc_1000d5a9c                            ; if (x8 == x25)
  1000d5a94  mov     x0, x20
  1000d5a98  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->passersBy)
loc_1000d5a9c:
  1000d5a9c  ldr     x8, [sp, #0x10]
  1000d5aa0  ldr     x0, [x8, x26, lsl #3]
  1000d5aa4  mov     x1, x23
  1000d5aa8  mov     v0.16b, v8.16b
  1000d5aac  bl      _objc_msgSend                            ; [x0 update:arg1]
  1000d5ab0  add     x26, x26, #1
  1000d5ab4  cmp     x26, x22
  1000d5ab8  b.lo    loc_1000d5a84                            ; if ((x26 + 1) <u [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000d5abc  add     x2, sp, #8
  1000d5ac0  add     x3, sp, #0x48
  1000d5ac4  mov     w4, #0x10
  1000d5ac8  mov     x0, x20
  1000d5acc  mov     x1, x21
  1000d5ad0  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d5ad4  mov     x22, x0
  1000d5ad8  cbnz    x22, loc_1000d5a80                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000d5adc:
  1000d5adc  mov     x0, x20
  1000d5ae0  bl      _objc_release
  1000d5ae4  adrp    x25, #0x10041e000
  1000d5ae8  ldr     x0, [x25, #0x98]                         ; class ADBrickManager
  1000d5aec  adrp    x8, #0x100417000
  1000d5af0  nop
  1000d5af4  ldr     x20, [x8, #0xaa8]
  1000d5af8  mov     x1, x20
  1000d5afc  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d5b00  mov     x29, x29
  1000d5b04  bl      _objc_retainAutoreleasedReturnValue
  1000d5b08  mov     x21, x0
  1000d5b0c  adrp    x8, #0x100419000
  1000d5b10  nop
  1000d5b14  ldr     x1, [x8, #0x348]
  1000d5b18  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] mode]
  1000d5b1c  mov     x22, x0
  1000d5b20  mov     x0, x21
  1000d5b24  bl      _objc_release
  1000d5b28  cmp     w22, #1
  1000d5b2c  b.ne    loc_1000d5c90                            ; if ([[ADBrickManager sharedBrickManager] mode] != 1)
  1000d5b30  adrp    x26, #0x10041e000
  1000d5b34  ldr     x0, [x26]                                ; class ADGameModifiers
  1000d5b38  adrp    x8, #0x100417000
  1000d5b3c  nop
  1000d5b40  ldr     x21, [x8, #0x510]
  1000d5b44  mov     x1, x21
  1000d5b48  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d5b4c  mov     x29, x29
  1000d5b50  bl      _objc_retainAutoreleasedReturnValue
  1000d5b54  mov     x22, x0
  1000d5b58  adrp    x8, #0x10041a000
  1000d5b5c  nop
  1000d5b60  ldr     x1, [x8, #0xe10]
  1000d5b64  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] cows]
  1000d5b68  mov     x23, x0
  1000d5b6c  mov     x0, x22
  1000d5b70  bl      _objc_release
  1000d5b74  cbz     w23, loc_1000d5be8                       ; if ([[ADGameModifiers sharedModifiers] cows] == 0)
  1000d5b78  adrp    x8, #0x100420000
  1000d5b7c  ldrsw   x27, [x8, #0x460]                        ; ivar offset ADPasserByManager.nextCow (+0x10)
  1000d5b80  ldr     s0, [x19, x27]                           ; s0 = self->nextCow
  1000d5b84  fcmp    s0, #0.0
  1000d5b88  b.pl    loc_1000d5ba4                            ; if (self->nextCow >= (or unordered) 0.0)
  1000d5b8c  adrp    x8, #0x10041a000
  1000d5b90  nop
  1000d5b94  ldr     x1, [x8, #0xe50]
  1000d5b98  mov     x0, x19
  1000d5b9c  bl      _objc_msgSend                            ; [self generateCow]
  1000d5ba0  b       loc_1000d5be8
loc_1000d5ba4:
  1000d5ba4  ldr     x0, [x25, #0x98]                         ; class ADBrickManager
  1000d5ba8  mov     x1, x20
  1000d5bac  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d5bb0  mov     x29, x29
  1000d5bb4  bl      _objc_retainAutoreleasedReturnValue
  1000d5bb8  mov     x22, x0
  1000d5bbc  adrp    x8, #0x100418000
  1000d5bc0  nop
  1000d5bc4  ldr     x1, [x8, #0xb58]
  1000d5bc8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000d5bcc  mov     x23, x0
  1000d5bd0  mov     x0, x22
  1000d5bd4  bl      _objc_release
  1000d5bd8  tbnz    w23, #0, loc_1000d5be8                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  1000d5bdc  ldr     s0, [x19, x27]                           ; s0 = self->nextCow
  1000d5be0  fsub    s0, s0, s8
  1000d5be4  str     s0, [x19, x27]                           ; self->nextCow = (self->nextCow - arg1)
loc_1000d5be8:
  1000d5be8  ldr     x0, [x26]                                ; class ADGameModifiers
  1000d5bec  mov     x1, x21
  1000d5bf0  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d5bf4  mov     x29, x29
  1000d5bf8  bl      _objc_retainAutoreleasedReturnValue
  1000d5bfc  mov     x21, x0
  1000d5c00  adrp    x8, #0x10041a000
  1000d5c04  nop
  1000d5c08  ldr     x1, [x8, #0xe20]
  1000d5c0c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] cars]
  1000d5c10  mov     x22, x0
  1000d5c14  mov     x0, x21
  1000d5c18  bl      _objc_release
  1000d5c1c  cbz     w22, loc_1000d5c90                       ; if ([[ADGameModifiers sharedModifiers] cars] == 0)
  1000d5c20  adrp    x8, #0x100420000
  1000d5c24  ldrsw   x22, [x8, #0x464]                        ; ivar offset ADPasserByManager.nextCar (+0x14)
  1000d5c28  ldr     s0, [x19, x22]                           ; s0 = self->nextCar
  1000d5c2c  fcmp    s0, #0.0
  1000d5c30  b.pl    loc_1000d5c4c                            ; if (self->nextCar >= (or unordered) 0.0)
  1000d5c34  adrp    x8, #0x10041a000
  1000d5c38  nop
  1000d5c3c  ldr     x1, [x8, #0xe58]
  1000d5c40  mov     x0, x19
  1000d5c44  bl      _objc_msgSend                            ; [self generateCar]
  1000d5c48  b       loc_1000d5c90
loc_1000d5c4c:
  1000d5c4c  ldr     x0, [x25, #0x98]                         ; class ADBrickManager
  1000d5c50  mov     x1, x20
  1000d5c54  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d5c58  mov     x29, x29
  1000d5c5c  bl      _objc_retainAutoreleasedReturnValue
  1000d5c60  mov     x20, x0
  1000d5c64  adrp    x8, #0x100418000
  1000d5c68  nop
  1000d5c6c  ldr     x1, [x8, #0xb58]
  1000d5c70  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000d5c74  mov     x21, x0
  1000d5c78  mov     x0, x20
  1000d5c7c  bl      _objc_release
  1000d5c80  tbnz    w21, #0, loc_1000d5c90                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  1000d5c84  ldr     s0, [x19, x22]                           ; s0 = self->nextCar
  1000d5c88  fsub    s0, s0, s8
  1000d5c8c  str     s0, [x19, x22]                           ; self->nextCar = (self->nextCar - arg1)
loc_1000d5c90:
  1000d5c90  ldur    x8, [x29, #-0x68]
  1000d5c94  sub     x8, x24, x8
  1000d5c98  cbnz    x8, loc_1000d5cc0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d5c9c  sub     sp, x29, #0x60
  1000d5ca0  ldp     x29, x30, [sp, #0x60]
  1000d5ca4  ldp     x20, x19, [sp, #0x50]
  1000d5ca8  ldp     x22, x21, [sp, #0x40]
  1000d5cac  ldp     x24, x23, [sp, #0x30]
  1000d5cb0  ldp     x26, x25, [sp, #0x20]
  1000d5cb4  ldp     x28, x27, [sp, #0x10]
  1000d5cb8  ldp     d9, d8, [sp], #0x70
  1000d5cbc  ret
loc_1000d5cc0:
  1000d5cc0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000d5cc4:
  1000d5cc4  mov     x19, x0
  1000d5cc8  mov     x0, x20
loc_1000d5ccc:
  1000d5ccc  bl      _objc_release
  1000d5cd0  mov     x0, x19
  1000d5cd4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d5cd8  b       loc_1000d5cc4
  1000d5cdc  b       loc_1000d5cc4
  1000d5ce0  b       loc_1000d5ce8
  1000d5ce4  b       loc_1000d5cf4
loc_1000d5ce8:
  1000d5ce8  mov     x19, x0
  1000d5cec  mov     x0, x21
  1000d5cf0  b       loc_1000d5ccc
loc_1000d5cf4:
  1000d5cf4  mov     x19, x0
  1000d5cf8  mov     x0, x22
  1000d5cfc  b       loc_1000d5ccc
  1000d5d00  b       loc_1000d5cc4

; ======================================================================
; -[ADPasserByManager generateCow]
; address 0x1000d5d04  size 516  kind objc
; ======================================================================
  1000d5d04  stp     x24, x23, [sp, #-0x40]!
  1000d5d08  stp     x22, x21, [sp, #0x10]
  1000d5d0c  stp     x20, x19, [sp, #0x20]
  1000d5d10  stp     x29, x30, [sp, #0x30]
  1000d5d14  add     x29, sp, #0x30
  1000d5d18  sub     sp, sp, #0x10
  1000d5d1c  mov     x20, x0
  1000d5d20  adrp    x8, #0x10041d000
  1000d5d24  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000d5d28  adrp    x8, #0x100416000
  1000d5d2c  nop
  1000d5d30  ldr     x22, [x8, #0xac8]
  1000d5d34  mov     x1, x22
  1000d5d38  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000d5d3c  adrp    x8, #0x100419000
  1000d5d40  nop
  1000d5d44  ldr     x1, [x8, #0x2b0]
  1000d5d48  adrp    x8, #0x1003c2000
  1000d5d4c  add     x8, x8, #0x670                           ; @"Cow2"
  1000d5d50  stp     x8, xzr, [sp]
  1000d5d54  adrp    x2, #0x1003c2000
  1000d5d58  add     x2, x2, #0x650                           ; @"Cow"
  1000d5d5c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]
  1000d5d60  mov     x19, x0
  1000d5d64  adrp    x8, #0x10041a000
  1000d5d68  nop
  1000d5d6c  ldr     x1, [x8, #0xe60]
  1000d5d70  mov     x0, x20
  1000d5d74  mov     x2, x19
  1000d5d78  bl      _objc_msgSend                            ; [self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]
  1000d5d7c  mov     x29, x29
  1000d5d80  bl      _objc_retainAutoreleasedReturnValue
  1000d5d84  mov     x21, x0
  1000d5d88  cbz     x21, loc_1000d5ea0                       ; if ([self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]] == 0)
  1000d5d8c  adrp    x8, #0x10041e000
  1000d5d90  ldr     x0, [x8, #0x3b8]                         ; class ADPasserBy
  1000d5d94  mov     x1, x22
  1000d5d98  bl      _objc_msgSend                            ; [ADPasserBy alloc]
  1000d5d9c  adrp    x8, #0x100418000
  1000d5da0  nop
  1000d5da4  ldr     x1, [x8, #0xb70]
  1000d5da8  mov     x2, x21
  1000d5dac  bl      _objc_msgSend                            ; [[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]]
  1000d5db0  mov     x22, x0
  1000d5db4  adrp    x8, #0x100419000
  1000d5db8  nop
  1000d5dbc  ldr     x1, [x8, #0xc70]
  1000d5dc0  mov     x0, x22
  1000d5dc4  bl      _objc_msgSend                            ; [[[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]] initSounds]
  1000d5dc8  adrp    x8, #0x10041a000
  1000d5dcc  nop
  1000d5dd0  ldr     x1, [x8, #0xe68]
  1000d5dd4  mov     x0, x22
  1000d5dd8  bl      _objc_msgSend                            ; [[[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]] setRandomPosition]
  1000d5ddc  adrp    x8, #0x100420000
  1000d5de0  ldrsw   x23, [x8, #0x45c]                        ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d5de4  ldr     x0, [x20, x23]                           ; x0 = self->passersBy
  1000d5de8  adrp    x8, #0x100416000
  1000d5dec  nop
  1000d5df0  ldr     x1, [x8, #0xe30]
  1000d5df4  bl      _objc_msgSend                            ; [self->passersBy count]
  1000d5df8  mov     w8, #0x30000
  1000d5dfc  movk    w8, #0xd41
  1000d5e00  add     w2, w0, w8
  1000d5e04  adrp    x8, #0x100417000
  1000d5e08  nop
  1000d5e0c  ldr     x1, [x8, #0x670]
  1000d5e10  mov     x0, x22
  1000d5e14  bl      _objc_msgSend                            ; [[[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]] setTag:([self->passersBy count] + 0x30d41)]
  1000d5e18  adrp    x8, #0x100416000
  1000d5e1c  nop
  1000d5e20  ldr     x1, [x8, #0xfd8]
  1000d5e24  mov     x0, x22
  1000d5e28  bl      _objc_msgSend                            ; [[[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]] spawn]
  1000d5e2c  ldr     x0, [x20, x23]                           ; x0 = self->passersBy
  1000d5e30  adrp    x8, #0x100416000
  1000d5e34  nop
  1000d5e38  ldr     x1, [x8, #0xd90]
  1000d5e3c  mov     x2, x22
  1000d5e40  bl      _objc_msgSend                            ; [self->passersBy addObject:[[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]]]
  1000d5e44  adrp    x8, #0x10041e000
  1000d5e48  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000d5e4c  adrp    x8, #0x100417000
  1000d5e50  nop
  1000d5e54  ldr     x1, [x8, #0xaa8]
  1000d5e58  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d5e5c  mov     x29, x29
  1000d5e60  bl      _objc_retainAutoreleasedReturnValue
  1000d5e64  mov     x23, x0
  1000d5e68  adrp    x8, #0x100418000
  1000d5e6c  nop
  1000d5e70  ldr     x1, [x8, #0xba0]
  1000d5e74  mov     x2, x22
  1000d5e78  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] addPasserBy:[[ADPasserBy alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Cow", @"Cow2", nil]]]]
  1000d5e7c  mov     x0, x23
  1000d5e80  bl      _objc_release
  1000d5e84  adrp    x8, #0x10041a000
  1000d5e88  nop
  1000d5e8c  ldr     x1, [x8, #0xe18]
  1000d5e90  mov     x0, x20
  1000d5e94  bl      _objc_msgSend                            ; [self randomizeNextCow]
  1000d5e98  mov     x0, x22
  1000d5e9c  bl      _objc_release
loc_1000d5ea0:
  1000d5ea0  mov     x0, x21
  1000d5ea4  bl      _objc_release
  1000d5ea8  mov     x0, x19
  1000d5eac  sub     sp, x29, #0x30
  1000d5eb0  ldp     x29, x30, [sp, #0x30]
  1000d5eb4  ldp     x20, x19, [sp, #0x20]
  1000d5eb8  ldp     x22, x21, [sp, #0x10]
  1000d5ebc  ldp     x24, x23, [sp], #0x40
  1000d5ec0  b       _objc_release
  1000d5ec4  mov     x20, x0
loc_1000d5ec8:
  1000d5ec8  mov     x0, x22
  1000d5ecc  bl      _objc_release
  1000d5ed0  b       loc_1000d5ed8
  1000d5ed4  mov     x20, x0
loc_1000d5ed8:
  1000d5ed8  mov     x0, x21
  1000d5edc  bl      _objc_release
loc_1000d5ee0:
  1000d5ee0  mov     x0, x19
  1000d5ee4  bl      _objc_release
  1000d5ee8  mov     x0, x20
  1000d5eec  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d5ef0  mov     x20, x0
  1000d5ef4  b       loc_1000d5ee0
  1000d5ef8  mov     x20, x0
  1000d5efc  mov     x0, x23
  1000d5f00  bl      _objc_release
  1000d5f04  b       loc_1000d5ec8

; ======================================================================
; -[ADPasserByManager generateCar]
; address 0x1000d5f08  size 476  kind objc
; ======================================================================
  1000d5f08  stp     x24, x23, [sp, #-0x40]!
  1000d5f0c  stp     x22, x21, [sp, #0x10]
  1000d5f10  stp     x20, x19, [sp, #0x20]
  1000d5f14  stp     x29, x30, [sp, #0x30]
  1000d5f18  add     x29, sp, #0x30
  1000d5f1c  sub     sp, sp, #0x20
  1000d5f20  mov     x20, x0
  1000d5f24  adrp    x8, #0x10041d000
  1000d5f28  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000d5f2c  adrp    x8, #0x100416000
  1000d5f30  nop
  1000d5f34  ldr     x22, [x8, #0xac8]
  1000d5f38  mov     x1, x22
  1000d5f3c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000d5f40  adrp    x8, #0x100419000
  1000d5f44  nop
  1000d5f48  ldr     x1, [x8, #0x2b0]
  1000d5f4c  adrp    x8, #0x1003c0000
  1000d5f50  add     x8, x8, #0x830                           ; @"Car3"
  1000d5f54  adrp    x9, #0x1003c0000
  1000d5f58  add     x9, x9, #0x810                           ; @"Car2"
  1000d5f5c  stp     x8, xzr, [sp, #8]
  1000d5f60  str     x9, [sp]
  1000d5f64  adrp    x2, #0x1003c0000
  1000d5f68  add     x2, x2, #0x7f0                           ; @"Car"
  1000d5f6c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]
  1000d5f70  mov     x19, x0
  1000d5f74  adrp    x8, #0x10041a000
  1000d5f78  nop
  1000d5f7c  ldr     x1, [x8, #0xe60]
  1000d5f80  mov     x0, x20
  1000d5f84  mov     x2, x19
  1000d5f88  bl      _objc_msgSend                            ; [self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]
  1000d5f8c  mov     x29, x29
  1000d5f90  bl      _objc_retainAutoreleasedReturnValue
  1000d5f94  mov     x21, x0
  1000d5f98  cbz     x21, loc_1000d608c                       ; if ([self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]] == 0)
  1000d5f9c  adrp    x8, #0x10041e000
  1000d5fa0  ldr     x0, [x8, #0x3a8]                         ; class ADCarAlarm
  1000d5fa4  mov     x1, x22
  1000d5fa8  bl      _objc_msgSend                            ; [ADCarAlarm alloc]
  1000d5fac  adrp    x8, #0x100418000
  1000d5fb0  nop
  1000d5fb4  ldr     x1, [x8, #0xb70]
  1000d5fb8  mov     x2, x21
  1000d5fbc  bl      _objc_msgSend                            ; [[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]]
  1000d5fc0  mov     x22, x0
  1000d5fc4  adrp    x8, #0x100419000
  1000d5fc8  nop
  1000d5fcc  ldr     x1, [x8, #0xc70]
  1000d5fd0  mov     x0, x22
  1000d5fd4  bl      _objc_msgSend                            ; [[[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]] initSounds]
  1000d5fd8  adrp    x8, #0x100418000
  1000d5fdc  nop
  1000d5fe0  ldr     x1, [x8, #0xb88]
  1000d5fe4  mov     w2, #6
  1000d5fe8  mov     x0, x22
  1000d5fec  bl      _objc_msgSend                            ; [[[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]] setRandomPositionAtDistance:6]
  1000d5ff0  adrp    x8, #0x100420000
  1000d5ff4  ldrsw   x23, [x8, #0x45c]                        ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d5ff8  ldr     x0, [x20, x23]                           ; x0 = self->passersBy
  1000d5ffc  adrp    x8, #0x100416000
  1000d6000  nop
  1000d6004  ldr     x1, [x8, #0xe30]
  1000d6008  bl      _objc_msgSend                            ; [self->passersBy count]
  1000d600c  mov     w8, #0x30000
  1000d6010  movk    w8, #0xd41
  1000d6014  add     w2, w0, w8
  1000d6018  adrp    x8, #0x100417000
  1000d601c  nop
  1000d6020  ldr     x1, [x8, #0x670]
  1000d6024  mov     x0, x22
  1000d6028  bl      _objc_msgSend                            ; [[[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]] setTag:([self->passersBy count] + 0x30d41)]
  1000d602c  adrp    x8, #0x100416000
  1000d6030  nop
  1000d6034  ldr     x1, [x8, #0xfd8]
  1000d6038  mov     x0, x22
  1000d603c  bl      _objc_msgSend                            ; [[[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]] spawn]
  1000d6040  ldr     x0, [x20, x23]                           ; x0 = self->passersBy
  1000d6044  adrp    x8, #0x100416000
  1000d6048  nop
  1000d604c  ldr     x1, [x8, #0xd90]
  1000d6050  mov     x2, x22
  1000d6054  bl      _objc_msgSend                            ; [self->passersBy addObject:[[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]]]
  1000d6058  adrp    x8, #0x100418000
  1000d605c  nop
  1000d6060  ldr     x1, [x8, #0xba0]
  1000d6064  mov     x0, x20
  1000d6068  mov     x2, x22
  1000d606c  bl      _objc_msgSend                            ; [self addPasserBy:[[ADCarAlarm alloc] initWithName:[self availablePlaylistNameInArray:[[NSMutableArray alloc] initWithObjects:@"Car", @"Car2", @"Car3", nil]]]]
  1000d6070  adrp    x8, #0x10041a000
  1000d6074  nop
  1000d6078  ldr     x1, [x8, #0xe28]
  1000d607c  mov     x0, x20
  1000d6080  bl      _objc_msgSend                            ; [self randomizeNextCar]
  1000d6084  mov     x0, x22
  1000d6088  bl      _objc_release
loc_1000d608c:
  1000d608c  mov     x0, x21
  1000d6090  bl      _objc_release
  1000d6094  mov     x0, x19
  1000d6098  sub     sp, x29, #0x30
  1000d609c  ldp     x29, x30, [sp, #0x30]
  1000d60a0  ldp     x20, x19, [sp, #0x20]
  1000d60a4  ldp     x22, x21, [sp, #0x10]
  1000d60a8  ldp     x24, x23, [sp], #0x40
  1000d60ac  b       _objc_release
  1000d60b0  mov     x20, x0
  1000d60b4  mov     x0, x22
  1000d60b8  bl      _objc_release
  1000d60bc  b       loc_1000d60c4
  1000d60c0  mov     x20, x0
loc_1000d60c4:
  1000d60c4  mov     x0, x21
  1000d60c8  bl      _objc_release
loc_1000d60cc:
  1000d60cc  mov     x0, x19
  1000d60d0  bl      _objc_release
  1000d60d4  mov     x0, x20
  1000d60d8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d60dc  mov     x20, x0
  1000d60e0  b       loc_1000d60cc

; ======================================================================
; -[ADPasserByManager randomizeNextCar]
; address 0x1000d60e4  size 92  kind objc
; ======================================================================
  1000d60e4  stp     x20, x19, [sp, #-0x20]!
  1000d60e8  stp     x29, x30, [sp, #0x10]
  1000d60ec  add     x29, sp, #0x10
  1000d60f0  mov     x19, x0
  1000d60f4  bl      _rand                                    ; rand()
  1000d60f8  sxtw    x8, w0
  1000d60fc  mov     x9, #-0x49f40001
  1000d6100  movk    x9, #0x60b7
  1000d6104  mul     x8, x8, x9
  1000d6108  lsr     x8, x8, #0x20
  1000d610c  add     w8, w8, w0
  1000d6110  asr     w9, w8, #5
  1000d6114  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 5) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  1000d6118  mov     w9, #0x2d
  1000d611c  msub    w8, w8, w9, w0
  1000d6120  add     w8, w8, #0x19
  1000d6124  scvtf   s0, w8
  1000d6128  adrp    x8, #0x100420000
  1000d612c  ldrsw   x8, [x8, #0x464]                         ; ivar offset ADPasserByManager.nextCar (+0x14)
  1000d6130  str     s0, [x19, x8]                            ; self->nextCar = (float)((rand() - t1 * 45) + 25)
  1000d6134  ldp     x29, x30, [sp, #0x10]
  1000d6138  ldp     x20, x19, [sp], #0x20
  1000d613c  ret

; ======================================================================
; -[ADPasserByManager randomizeNextCow]
; address 0x1000d6140  size 92  kind objc
; ======================================================================
  1000d6140  stp     x20, x19, [sp, #-0x20]!
  1000d6144  stp     x29, x30, [sp, #0x10]
  1000d6148  add     x29, sp, #0x10
  1000d614c  mov     x19, x0
  1000d6150  bl      _rand                                    ; rand()
  1000d6154  sxtw    x8, w0
  1000d6158  mov     x9, #-0x15f10001
  1000d615c  movk    x9, #0xa0eb
  1000d6160  mul     x8, x8, x9
  1000d6164  lsr     x8, x8, #0x20
  1000d6168  add     w8, w8, w0
  1000d616c  asr     w9, w8, #5
  1000d6170  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffea0ea0eb) >>> 32) + rand()) >> 5) + ((((rand() * 0xffffffffea0ea0eb) >>> 32) + rand()) >>> 31))
  1000d6174  mov     w9, #0x23
  1000d6178  msub    w8, w8, w9, w0
  1000d617c  add     w8, w8, #0xf
  1000d6180  scvtf   s0, w8
  1000d6184  adrp    x8, #0x100420000
  1000d6188  ldrsw   x8, [x8, #0x460]                         ; ivar offset ADPasserByManager.nextCow (+0x10)
  1000d618c  str     s0, [x19, x8]                            ; self->nextCow = (float)((rand() - t1 * 35) + 15)
  1000d6190  ldp     x29, x30, [sp, #0x10]
  1000d6194  ldp     x20, x19, [sp], #0x20
  1000d6198  ret

; ======================================================================
; -[ADPasserByManager availablePlaylistNameInArray:]
; address 0x1000d619c  size 568  kind objc
; ======================================================================
  1000d619c  stp     x28, x27, [sp, #-0x60]!
  1000d61a0  stp     x26, x25, [sp, #0x10]
  1000d61a4  stp     x24, x23, [sp, #0x20]
  1000d61a8  stp     x22, x21, [sp, #0x30]
  1000d61ac  stp     x20, x19, [sp, #0x40]
  1000d61b0  stp     x29, x30, [sp, #0x50]
  1000d61b4  add     x29, sp, #0x50
  1000d61b8  sub     sp, sp, #0xd0
  1000d61bc  mov     x20, x0
  1000d61c0  adrp    x8, #0x1003b0000
  1000d61c4  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000d61c8  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000d61cc  stur    x8, [x29, #-0x58]
  1000d61d0  mov     x0, x2
  1000d61d4  bl      _objc_retain
  1000d61d8  mov     x19, x0
  1000d61dc  stp     xzr, xzr, [sp, #0x38]
  1000d61e0  stp     xzr, xzr, [sp, #0x28]
  1000d61e4  stp     xzr, xzr, [sp, #0x18]
  1000d61e8  stp     xzr, xzr, [sp, #8]
  1000d61ec  adrp    x8, #0x100420000
  1000d61f0  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d61f4  ldr     x0, [x20, x8]                            ; x0 = self->passersBy
  1000d61f8  bl      _objc_retain
  1000d61fc  mov     x20, x0
  1000d6200  adrp    x8, #0x100416000
  1000d6204  nop
  1000d6208  ldr     x21, [x8, #0xe00]
  1000d620c  add     x2, sp, #8
  1000d6210  add     x3, sp, #0x48
  1000d6214  mov     w4, #0x10
  1000d6218  mov     x1, x21
  1000d621c  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d6220  mov     x22, x0
  1000d6224  cbz     x22, loc_1000d62e4                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000d6228  ldr     x8, [sp, #0x18]
  1000d622c  ldr     x28, [x8]
  1000d6230  adrp    x8, #0x100419000
  1000d6234  nop
  1000d6238  ldr     x23, [x8, #0x578]
  1000d623c  adrp    x8, #0x100419000
  1000d6240  nop
  1000d6244  ldr     x24, [x8, #0x218]
  1000d6248  adrp    x8, #0x100416000
  1000d624c  add     x8, x8, #0xe20                           ; &@selector(removeObject:)
  1000d6250  ldr     x25, [x8]
loc_1000d6254:
  1000d6254  mov     x27, #0
loc_1000d6258:
  1000d6258  ldr     x8, [sp, #0x18]
  1000d625c  ldr     x8, [x8]
  1000d6260  cmp     x8, x28
  1000d6264  b.eq    loc_1000d6270                            ; if (x8 == x28)
  1000d6268  mov     x0, x20
  1000d626c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->passersBy)
loc_1000d6270:
  1000d6270  ldr     x8, [sp, #0x10]
  1000d6274  ldr     x26, [x8, x27, lsl #3]
  1000d6278  mov     x0, x26
  1000d627c  mov     x1, x23
  1000d6280  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000d6284  cbz     w0, loc_1000d62b8                        ; if ([x0 canBeShotAt] == 0)
  1000d6288  mov     x0, x26
  1000d628c  mov     x1, x24
  1000d6290  bl      _objc_msgSend                            ; [x0 soundsPrefix]
  1000d6294  mov     x29, x29
  1000d6298  bl      _objc_retainAutoreleasedReturnValue
  1000d629c  mov     x26, x0
  1000d62a0  mov     x0, x19
  1000d62a4  mov     x1, x25
  1000d62a8  mov     x2, x26
  1000d62ac  bl      _objc_msgSend                            ; [arg1 removeObject:[x0 soundsPrefix]]
  1000d62b0  mov     x0, x26
  1000d62b4  bl      _objc_release
loc_1000d62b8:
  1000d62b8  add     x27, x27, #1
  1000d62bc  cmp     x27, x22
  1000d62c0  b.lo    loc_1000d6258                            ; if ((x27 + 1) <u [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000d62c4  add     x2, sp, #8
  1000d62c8  add     x3, sp, #0x48
  1000d62cc  mov     w4, #0x10
  1000d62d0  mov     x0, x20
  1000d62d4  mov     x1, x21
  1000d62d8  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d62dc  mov     x22, x0
  1000d62e0  cbnz    x22, loc_1000d6254                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000d62e4:
  1000d62e4  mov     x0, x20
  1000d62e8  bl      _objc_release
  1000d62ec  adrp    x8, #0x100416000
  1000d62f0  nop
  1000d62f4  ldr     x20, [x8, #0xe30]
  1000d62f8  mov     x0, x19
  1000d62fc  mov     x1, x20
  1000d6300  bl      _objc_msgSend                            ; [arg1 count]
  1000d6304  cbz     x0, loc_1000d634c                        ; if ([arg1 count] == 0)
  1000d6308  bl      _rand                                    ; rand()
  1000d630c  mov     x21, x0
  1000d6310  mov     x0, x19
  1000d6314  mov     x1, x20
  1000d6318  bl      _objc_msgSend                            ; [arg1 count]
  1000d631c  sxtw    x8, w21
  1000d6320  udiv    x9, x8, x0
  1000d6324  msub    x2, x9, x0, x8
  1000d6328  adrp    x8, #0x100416000
  1000d632c  nop
  1000d6330  ldr     x1, [x8, #0xc30]
  1000d6334  mov     x0, x19
  1000d6338  bl      _objc_msgSend                            ; [arg1 objectAtIndex:(rand() - (rand() / [arg1 count]) * [arg1 count])]
  1000d633c  mov     x29, x29
  1000d6340  bl      _objc_retainAutoreleasedReturnValue
  1000d6344  mov     x20, x0
  1000d6348  b       loc_1000d6350
loc_1000d634c:
  1000d634c  mov     x20, #0
loc_1000d6350:
  1000d6350  mov     x0, x19
  1000d6354  bl      _objc_release
  1000d6358  ldur    x8, [x29, #-0x58]
  1000d635c  adrp    x9, #0x1003b0000
  1000d6360  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000d6364  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000d6368  sub     x8, x9, x8
  1000d636c  cbnz    x8, loc_1000d6394                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d6370  mov     x0, x20
  1000d6374  sub     sp, x29, #0x50
  1000d6378  ldp     x29, x30, [sp, #0x50]
  1000d637c  ldp     x20, x19, [sp, #0x40]
  1000d6380  ldp     x22, x21, [sp, #0x30]
  1000d6384  ldp     x24, x23, [sp, #0x20]
  1000d6388  ldp     x26, x25, [sp, #0x10]
  1000d638c  ldp     x28, x27, [sp], #0x60
  1000d6390  b       _objc_autoreleaseReturnValue
loc_1000d6394:
  1000d6394  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000d6398:
  1000d6398  mov     x21, x0
  1000d639c  b       loc_1000d63ac
  1000d63a0  mov     x21, x0
  1000d63a4  mov     x0, x26
  1000d63a8  bl      _objc_release
loc_1000d63ac:
  1000d63ac  mov     x0, x20
  1000d63b0  bl      _objc_release
loc_1000d63b4:
  1000d63b4  mov     x0, x19
  1000d63b8  bl      _objc_release
  1000d63bc  mov     x0, x21
  1000d63c0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d63c4  b       loc_1000d6398
  1000d63c8  mov     x21, x0
  1000d63cc  b       loc_1000d63b4
  1000d63d0  b       loc_1000d6398

; ======================================================================
; -[ADPasserByManager addJukebox]
; address 0x1000d63d4  size 272  kind objc
; ======================================================================
  1000d63d4  stp     x20, x19, [sp, #-0x20]!
  1000d63d8  stp     x29, x30, [sp, #0x10]
  1000d63dc  add     x29, sp, #0x10
  1000d63e0  mov     x19, x0
  1000d63e4  adrp    x8, #0x10041e000
  1000d63e8  ldr     x0, [x8, #0x3a0]                         ; class ADJukeBox
  1000d63ec  adrp    x8, #0x100416000
  1000d63f0  nop
  1000d63f4  ldr     x1, [x8, #0xac8]
  1000d63f8  bl      _objc_msgSend                            ; [ADJukeBox alloc]
  1000d63fc  adrp    x8, #0x100418000
  1000d6400  nop
  1000d6404  ldr     x1, [x8, #0xb70]
  1000d6408  adrp    x2, #0x1003c0000
  1000d640c  add     x2, x2, #0x7d0                           ; @"Jukebox"
  1000d6410  bl      _objc_msgSend                            ; [[ADJukeBox alloc] initWithName:@"Jukebox"]
  1000d6414  mov     x20, x0
  1000d6418  adrp    x8, #0x100419000
  1000d641c  nop
  1000d6420  ldr     x1, [x8, #0xc70]
  1000d6424  bl      _objc_msgSend                            ; [[[ADJukeBox alloc] initWithName:@"Jukebox"] initSounds]
  1000d6428  adrp    x8, #0x10041a000
  1000d642c  nop
  1000d6430  ldr     x1, [x8, #0xe68]
  1000d6434  mov     x0, x20
  1000d6438  bl      _objc_msgSend                            ; [[[ADJukeBox alloc] initWithName:@"Jukebox"] setRandomPosition]
  1000d643c  adrp    x8, #0x100416000
  1000d6440  nop
  1000d6444  ldr     x1, [x8, #0xc78]
  1000d6448  mov     w2, #0
  1000d644c  mov     x0, x20
  1000d6450  bl      _objc_msgSend                            ; [[[ADJukeBox alloc] initWithName:@"Jukebox"] setState:0]
  1000d6454  adrp    x8, #0x100418000
  1000d6458  nop
  1000d645c  ldr     x1, [x8, #0xb98]
  1000d6460  fmov    s0, #2.00000000
  1000d6464  mov     x0, x20
  1000d6468  bl      _objc_msgSend                            ; [[[ADJukeBox alloc] initWithName:@"Jukebox"] setSpawn_time:2]
  1000d646c  adrp    x8, #0x100420000
  1000d6470  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d6474  ldr     x0, [x19, x8]                            ; x0 = self->passersBy
  1000d6478  adrp    x8, #0x100416000
  1000d647c  nop
  1000d6480  ldr     x1, [x8, #0xe30]
  1000d6484  bl      _objc_msgSend                            ; [self->passersBy count]
  1000d6488  mov     w8, #0x30000
  1000d648c  movk    w8, #0xd40
  1000d6490  add     w2, w0, w8
  1000d6494  adrp    x8, #0x100417000
  1000d6498  nop
  1000d649c  ldr     x1, [x8, #0x670]
  1000d64a0  mov     x0, x20
  1000d64a4  bl      _objc_msgSend                            ; [[[ADJukeBox alloc] initWithName:@"Jukebox"] setTag:([self->passersBy count] + 0x30d40)]
  1000d64a8  adrp    x8, #0x100418000
  1000d64ac  nop
  1000d64b0  ldr     x1, [x8, #0xba0]
  1000d64b4  mov     x0, x19
  1000d64b8  mov     x2, x20
  1000d64bc  bl      _objc_msgSend                            ; [self addPasserBy:[[ADJukeBox alloc] initWithName:@"Jukebox"]]
  1000d64c0  mov     x0, x20
  1000d64c4  ldp     x29, x30, [sp, #0x10]
  1000d64c8  ldp     x20, x19, [sp], #0x20
  1000d64cc  b       _objc_release
  1000d64d0  mov     x19, x0
  1000d64d4  mov     x0, x20
  1000d64d8  bl      _objc_release
  1000d64dc  mov     x0, x19
  1000d64e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPasserByManager addMachine]
; address 0x1000d64e4  size 276  kind objc
; ======================================================================
  1000d64e4  stp     x20, x19, [sp, #-0x20]!
  1000d64e8  stp     x29, x30, [sp, #0x10]
  1000d64ec  add     x29, sp, #0x10
  1000d64f0  mov     x19, x0
  1000d64f4  adrp    x8, #0x10041e000
  1000d64f8  ldr     x0, [x8, #0x3b0]                         ; class ADMachine
  1000d64fc  adrp    x8, #0x100416000
  1000d6500  nop
  1000d6504  ldr     x1, [x8, #0xac8]
  1000d6508  bl      _objc_msgSend                            ; [ADMachine alloc]
  1000d650c  adrp    x8, #0x100418000
  1000d6510  nop
  1000d6514  ldr     x1, [x8, #0xb70]
  1000d6518  adrp    x2, #0x1003c0000
  1000d651c  add     x2, x2, #0x850                           ; @"Machine"
  1000d6520  bl      _objc_msgSend                            ; [[ADMachine alloc] initWithName:@"Machine"]
  1000d6524  mov     x20, x0
  1000d6528  adrp    x8, #0x100419000
  1000d652c  nop
  1000d6530  ldr     x1, [x8, #0xc70]
  1000d6534  bl      _objc_msgSend                            ; [[[ADMachine alloc] initWithName:@"Machine"] initSounds]
  1000d6538  adrp    x8, #0x100418000
  1000d653c  nop
  1000d6540  ldr     x1, [x8, #0xb88]
  1000d6544  mov     w2, #6
  1000d6548  mov     x0, x20
  1000d654c  bl      _objc_msgSend                            ; [[[ADMachine alloc] initWithName:@"Machine"] setRandomPositionAtDistance:6]
  1000d6550  adrp    x8, #0x100416000
  1000d6554  nop
  1000d6558  ldr     x1, [x8, #0xc78]
  1000d655c  mov     w2, #0
  1000d6560  mov     x0, x20
  1000d6564  bl      _objc_msgSend                            ; [[[ADMachine alloc] initWithName:@"Machine"] setState:0]
  1000d6568  adrp    x8, #0x100418000
  1000d656c  nop
  1000d6570  ldr     x1, [x8, #0xb98]
  1000d6574  fmov    s0, #2.00000000
  1000d6578  mov     x0, x20
  1000d657c  bl      _objc_msgSend                            ; [[[ADMachine alloc] initWithName:@"Machine"] setSpawn_time:2]
  1000d6580  adrp    x8, #0x100420000
  1000d6584  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d6588  ldr     x0, [x19, x8]                            ; x0 = self->passersBy
  1000d658c  adrp    x8, #0x100416000
  1000d6590  nop
  1000d6594  ldr     x1, [x8, #0xe30]
  1000d6598  bl      _objc_msgSend                            ; [self->passersBy count]
  1000d659c  mov     w8, #0x30000
  1000d65a0  movk    w8, #0xd40
  1000d65a4  add     w2, w0, w8
  1000d65a8  adrp    x8, #0x100417000
  1000d65ac  nop
  1000d65b0  ldr     x1, [x8, #0x670]
  1000d65b4  mov     x0, x20
  1000d65b8  bl      _objc_msgSend                            ; [[[ADMachine alloc] initWithName:@"Machine"] setTag:([self->passersBy count] + 0x30d40)]
  1000d65bc  adrp    x8, #0x100418000
  1000d65c0  nop
  1000d65c4  ldr     x1, [x8, #0xba0]
  1000d65c8  mov     x0, x19
  1000d65cc  mov     x2, x20
  1000d65d0  bl      _objc_msgSend                            ; [self addPasserBy:[[ADMachine alloc] initWithName:@"Machine"]]
  1000d65d4  mov     x0, x20
  1000d65d8  ldp     x29, x30, [sp, #0x10]
  1000d65dc  ldp     x20, x19, [sp], #0x20
  1000d65e0  b       _objc_release
  1000d65e4  mov     x19, x0
  1000d65e8  mov     x0, x20
  1000d65ec  bl      _objc_release
  1000d65f0  mov     x0, x19
  1000d65f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPasserByManager pause]
; address 0x1000d65f8  size 308  kind objc
; ======================================================================
  1000d65f8  stp     x26, x25, [sp, #-0x50]!
  1000d65fc  stp     x24, x23, [sp, #0x10]
  1000d6600  stp     x22, x21, [sp, #0x20]
  1000d6604  stp     x20, x19, [sp, #0x30]
  1000d6608  stp     x29, x30, [sp, #0x40]
  1000d660c  add     x29, sp, #0x40
  1000d6610  sub     sp, sp, #0xd0
  1000d6614  adrp    x23, #0x1003b0000
  1000d6618  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000d661c  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000d6620  stur    x23, [x29, #-0x48]
  1000d6624  stp     xzr, xzr, [sp, #0x38]
  1000d6628  stp     xzr, xzr, [sp, #0x28]
  1000d662c  stp     xzr, xzr, [sp, #0x18]
  1000d6630  stp     xzr, xzr, [sp, #8]
  1000d6634  adrp    x8, #0x100420000
  1000d6638  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d663c  ldr     x0, [x0, x8]                             ; x0 = self->passersBy
  1000d6640  bl      _objc_retain
  1000d6644  mov     x19, x0
  1000d6648  adrp    x8, #0x100416000
  1000d664c  nop
  1000d6650  ldr     x20, [x8, #0xe00]
  1000d6654  add     x2, sp, #8
  1000d6658  add     x3, sp, #0x48
  1000d665c  mov     w4, #0x10
  1000d6660  mov     x1, x20
  1000d6664  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d6668  mov     x21, x0
  1000d666c  cbz     x21, loc_1000d66dc                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000d6670  ldr     x8, [sp, #0x18]
  1000d6674  ldr     x24, [x8]
  1000d6678  adrp    x8, #0x100419000
  1000d667c  add     x8, x8, #0x110                           ; &@selector(pause)
  1000d6680  ldr     x22, [x8]
loc_1000d6684:
  1000d6684  mov     x25, #0
loc_1000d6688:
  1000d6688  ldr     x8, [sp, #0x18]
  1000d668c  ldr     x8, [x8]
  1000d6690  cmp     x8, x24
  1000d6694  b.eq    loc_1000d66a0                            ; if (x8 == x24)
  1000d6698  mov     x0, x19
  1000d669c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->passersBy)
loc_1000d66a0:
  1000d66a0  ldr     x8, [sp, #0x10]
  1000d66a4  ldr     x0, [x8, x25, lsl #3]
  1000d66a8  mov     x1, x22
  1000d66ac  bl      _objc_msgSend                            ; [x0 pause]
  1000d66b0  add     x25, x25, #1
  1000d66b4  cmp     x25, x21
  1000d66b8  b.lo    loc_1000d6688                            ; if ((x25 + 1) <u [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000d66bc  add     x2, sp, #8
  1000d66c0  add     x3, sp, #0x48
  1000d66c4  mov     w4, #0x10
  1000d66c8  mov     x0, x19
  1000d66cc  mov     x1, x20
  1000d66d0  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d66d4  mov     x21, x0
  1000d66d8  cbnz    x21, loc_1000d6684                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000d66dc:
  1000d66dc  mov     x0, x19
  1000d66e0  bl      _objc_release
  1000d66e4  ldur    x8, [x29, #-0x48]
  1000d66e8  sub     x8, x23, x8
  1000d66ec  cbnz    x8, loc_1000d670c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d66f0  sub     sp, x29, #0x40
  1000d66f4  ldp     x29, x30, [sp, #0x40]
  1000d66f8  ldp     x20, x19, [sp, #0x30]
  1000d66fc  ldp     x22, x21, [sp, #0x20]
  1000d6700  ldp     x24, x23, [sp, #0x10]
  1000d6704  ldp     x26, x25, [sp], #0x50
  1000d6708  ret
loc_1000d670c:
  1000d670c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000d6710:
  1000d6710  mov     x20, x0
  1000d6714  mov     x0, x19
  1000d6718  bl      _objc_release
  1000d671c  mov     x0, x20
  1000d6720  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d6724  b       loc_1000d6710
  1000d6728  b       loc_1000d6710

; ======================================================================
; -[ADPasserByManager resume]
; address 0x1000d672c  size 308  kind objc
; ======================================================================
  1000d672c  stp     x26, x25, [sp, #-0x50]!
  1000d6730  stp     x24, x23, [sp, #0x10]
  1000d6734  stp     x22, x21, [sp, #0x20]
  1000d6738  stp     x20, x19, [sp, #0x30]
  1000d673c  stp     x29, x30, [sp, #0x40]
  1000d6740  add     x29, sp, #0x40
  1000d6744  sub     sp, sp, #0xd0
  1000d6748  adrp    x23, #0x1003b0000
  1000d674c  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000d6750  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000d6754  stur    x23, [x29, #-0x48]
  1000d6758  stp     xzr, xzr, [sp, #0x38]
  1000d675c  stp     xzr, xzr, [sp, #0x28]
  1000d6760  stp     xzr, xzr, [sp, #0x18]
  1000d6764  stp     xzr, xzr, [sp, #8]
  1000d6768  adrp    x8, #0x100420000
  1000d676c  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d6770  ldr     x0, [x0, x8]                             ; x0 = self->passersBy
  1000d6774  bl      _objc_retain
  1000d6778  mov     x19, x0
  1000d677c  adrp    x8, #0x100416000
  1000d6780  nop
  1000d6784  ldr     x20, [x8, #0xe00]
  1000d6788  add     x2, sp, #8
  1000d678c  add     x3, sp, #0x48
  1000d6790  mov     w4, #0x10
  1000d6794  mov     x1, x20
  1000d6798  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d679c  mov     x21, x0
  1000d67a0  cbz     x21, loc_1000d6810                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000d67a4  ldr     x8, [sp, #0x18]
  1000d67a8  ldr     x24, [x8]
  1000d67ac  adrp    x8, #0x100419000
  1000d67b0  add     x8, x8, #0x128                           ; &@selector(resume)
  1000d67b4  ldr     x22, [x8]
loc_1000d67b8:
  1000d67b8  mov     x25, #0
loc_1000d67bc:
  1000d67bc  ldr     x8, [sp, #0x18]
  1000d67c0  ldr     x8, [x8]
  1000d67c4  cmp     x8, x24
  1000d67c8  b.eq    loc_1000d67d4                            ; if (x8 == x24)
  1000d67cc  mov     x0, x19
  1000d67d0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->passersBy)
loc_1000d67d4:
  1000d67d4  ldr     x8, [sp, #0x10]
  1000d67d8  ldr     x0, [x8, x25, lsl #3]
  1000d67dc  mov     x1, x22
  1000d67e0  bl      _objc_msgSend                            ; [x0 resume]
  1000d67e4  add     x25, x25, #1
  1000d67e8  cmp     x25, x21
  1000d67ec  b.lo    loc_1000d67bc                            ; if ((x25 + 1) <u [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000d67f0  add     x2, sp, #8
  1000d67f4  add     x3, sp, #0x48
  1000d67f8  mov     w4, #0x10
  1000d67fc  mov     x0, x19
  1000d6800  mov     x1, x20
  1000d6804  bl      _objc_msgSend                            ; [self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000d6808  mov     x21, x0
  1000d680c  cbnz    x21, loc_1000d67b8                       ; if ([self->passersBy countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000d6810:
  1000d6810  mov     x0, x19
  1000d6814  bl      _objc_release
  1000d6818  ldur    x8, [x29, #-0x48]
  1000d681c  sub     x8, x23, x8
  1000d6820  cbnz    x8, loc_1000d6840                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000d6824  sub     sp, x29, #0x40
  1000d6828  ldp     x29, x30, [sp, #0x40]
  1000d682c  ldp     x20, x19, [sp, #0x30]
  1000d6830  ldp     x22, x21, [sp, #0x20]
  1000d6834  ldp     x24, x23, [sp, #0x10]
  1000d6838  ldp     x26, x25, [sp], #0x50
  1000d683c  ret
loc_1000d6840:
  1000d6840  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000d6844:
  1000d6844  mov     x20, x0
  1000d6848  mov     x0, x19
  1000d684c  bl      _objc_release
  1000d6850  mov     x0, x20
  1000d6854  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000d6858  b       loc_1000d6844
  1000d685c  b       loc_1000d6844

; ======================================================================
; -[ADPasserByManager .cxx_destruct]
; address 0x1000d6860  size 20  kind objc
; ======================================================================
  1000d6860  mov     x1, #0
  1000d6864  adrp    x8, #0x100420000
  1000d6868  ldrsw   x8, [x8, #0x45c]                         ; ivar offset ADPasserByManager.passersBy (+0x8)
  1000d686c  add     x0, x0, x8
  1000d6870  b       _objc_storeStrong
