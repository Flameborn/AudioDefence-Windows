// unit ADRouletteView — 25 functions
//   0x10001ad4c      60  -[ADRouletteView initWithFrame:]
//   0x10001ad88     132  -[ADRouletteView awakeFromNib]
//   0x10001ae0c    1332  -[ADRouletteView initItemsWithArray:]
//   0x10001b340      16  -[ADRouletteView update]
//   0x10001b350     420  -[ADRouletteView rotateWheel]
//   0x10001b4f4     648  -[ADRouletteView centerBadRouletteOnClosestItem]
//   0x10001b77c     124  -[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke
//   0x10001b7f8       8  sub_10001b7f8
//   0x10001b800       8  sub_10001b800
//   0x10001b808     104  -[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke_2
//   0x10001b870       8  sub_10001b870
//   0x10001b878       8  sub_10001b878
//   0x10001b880      80  -[ADRouletteView selectedItemDictionary]
//   0x10001b8d0      20  -[ADRouletteView resetSelectedItem]
//   0x10001b8e4     132  -[ADRouletteView launchRoulette]
//   0x10001b968      52  -[ADRouletteView isStopped]
//   0x10001b99c     216  -[ADRouletteView deactivate]
//   0x10001ba74     160  -[ADRouletteView layoutSubviews]
//   0x10001bb14      20  -[ADRouletteView speed]
//   0x10001bb28      20  -[ADRouletteView setSpeed:]
//   0x10001bb3c      20  -[ADRouletteView revert]
//   0x10001bb50      16  -[ADRouletteView setRevert:]
//   0x10001bb60      32  -[ADRouletteView scenarioViewController]
//   0x10001bb80      20  -[ADRouletteView setScenarioViewController:]
//   0x10001bb94      80  -[ADRouletteView .cxx_destruct]

; ======================================================================
; -[ADRouletteView initWithFrame:]
; address 0x10001ad4c  size 60  kind objc
; ======================================================================
  10001ad4c  stp     x29, x30, [sp, #-0x10]!
  10001ad50  mov     x29, sp
  10001ad54  sub     sp, sp, #0x10
  10001ad58  str     x0, [sp]
  10001ad5c  adrp    x8, #0x10041e000
  10001ad60  ldr     x8, [x8, #0xc18]
  10001ad64  str     x8, [sp, #8]
  10001ad68  adrp    x8, #0x100417000
  10001ad6c  nop
  10001ad70  ldr     x1, [x8, #0x178]
  10001ad74  mov     x0, sp
  10001ad78  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10001ad7c  mov     sp, x29
  10001ad80  ldp     x29, x30, [sp], #0x10
  10001ad84  ret

; ======================================================================
; -[ADRouletteView awakeFromNib]
; address 0x10001ad88  size 132  kind objc
; ======================================================================
  10001ad88  stp     x20, x19, [sp, #-0x20]!
  10001ad8c  stp     x29, x30, [sp, #0x10]
  10001ad90  add     x29, sp, #0x10
  10001ad94  mov     x19, x0
  10001ad98  adrp    x8, #0x10041e000
  10001ad9c  ldr     x0, [x8, #0x30]                          ; class NSTimer
  10001ada0  adrp    x8, #0x100417000
  10001ada4  nop
  10001ada8  ldr     x3, [x8, #0x888]
  10001adac  adrp    x8, #0x100417000
  10001adb0  nop
  10001adb4  ldr     x1, [x8, #0x890]
  10001adb8  adrp    x8, #0x100181000
  10001adbc  ldr     d0, [x8, #0xa30]                         ; d0 = 0.0166666667
  10001adc0  mov     w5, #1
  10001adc4  mov     x2, x19
  10001adc8  mov     x4, #0
  10001adcc  bl      _objc_msgSend                            ; [NSTimer scheduledTimerWithTimeInterval:0.0166667 target:self selector:@selector(update) userInfo:0 repeats:1]
  10001add0  mov     x29, x29
  10001add4  bl      _objc_retainAutoreleasedReturnValue
  10001add8  adrp    x8, #0x10041f000
  10001addc  ldrsw   x9, [x8, #0x624]                         ; ivar offset ADRouletteView.rouletteTimer (+0x70)
  10001ade0  ldr     x8, [x19, x9]                            ; x8 = self->rouletteTimer
  10001ade4  str     x0, [x19, x9]                            ; self->rouletteTimer = [NSTimer scheduledTimerWithTimeInterval:0.0166667 target:self selector:@selector(update) userInfo:0 repeats:1]
  10001ade8  mov     x0, x8
  10001adec  bl      _objc_release
  10001adf0  adrp    x8, #0x100417000
  10001adf4  nop
  10001adf8  ldr     x1, [x8, #0x898]
  10001adfc  mov     x0, x19
  10001ae00  ldp     x29, x30, [sp, #0x10]
  10001ae04  ldp     x20, x19, [sp], #0x20
  10001ae08  b       _objc_msgSend                            ; [self resetSelectedItem]

; ======================================================================
; -[ADRouletteView initItemsWithArray:]
; address 0x10001ae0c  size 1332  kind objc
; ======================================================================
  10001ae0c  stp     d15, d14, [sp, #-0xa0]!
  10001ae10  stp     d13, d12, [sp, #0x10]
  10001ae14  stp     d11, d10, [sp, #0x20]
  10001ae18  stp     d9, d8, [sp, #0x30]
  10001ae1c  stp     x28, x27, [sp, #0x40]
  10001ae20  stp     x26, x25, [sp, #0x50]
  10001ae24  stp     x24, x23, [sp, #0x60]
  10001ae28  stp     x22, x21, [sp, #0x70]
  10001ae2c  stp     x20, x19, [sp, #0x80]
  10001ae30  stp     x29, x30, [sp, #0x90]
  10001ae34  add     x29, sp, #0x90
  10001ae38  sub     sp, sp, #0x1e0
  10001ae3c  mov     x20, x0
  10001ae40  adrp    x8, #0x1003b0000
  10001ae44  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001ae48  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10001ae4c  stur    x8, [x29, #-0x98]
  10001ae50  mov     x0, x2
  10001ae54  bl      _objc_retain
  10001ae58  mov     x22, x0
  10001ae5c  adrp    x8, #0x10041d000
  10001ae60  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10001ae64  adrp    x8, #0x100416000
  10001ae68  nop
  10001ae6c  ldr     x1, [x8, #0xc00]
  10001ae70  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10001ae74  mov     x29, x29
  10001ae78  bl      _objc_retainAutoreleasedReturnValue
  10001ae7c  mov     x19, x0
  10001ae80  adrp    x8, #0x100416000
  10001ae84  nop
  10001ae88  ldr     x1, [x8, #0xd18]
  10001ae8c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10001ae90  str     w0, [sp, #0x8c]
  10001ae94  mov     x0, x19
  10001ae98  bl      _objc_release
  10001ae9c  adrp    x8, #0x100416000
  10001aea0  nop
  10001aea4  ldr     x1, [x8, #0xe30]
  10001aea8  mov     x0, x22
  10001aeac  bl      _objc_msgSend                            ; [arg1 count]
  10001aeb0  adrp    x8, #0x10041f000
  10001aeb4  ldrsw   x8, [x8, #0x628]                         ; ivar offset ADRouletteView.numberOfItems (+0x84)
  10001aeb8  str     x8, [sp, #0x80]
  10001aebc  str     w0, [x20, x8]                            ; self->numberOfItems = [arg1 count]
  10001aec0  adrp    x8, #0x10041f000
  10001aec4  ldrsw   x21, [x8, #0x62c]                        ; ivar offset ADRouletteView.rouletteItems (+0x78)
  10001aec8  mov     x0, x22
  10001aecc  str     x22, [sp, #0x10]
  10001aed0  bl      _objc_retain
  10001aed4  mov     x19, x0
  10001aed8  ldr     x0, [x20, x21]                           ; x0 = self->rouletteItems
  10001aedc  str     x19, [x20, x21]                          ; self->rouletteItems = arg1
  10001aee0  bl      _objc_release
  10001aee4  stp     xzr, xzr, [sp, #0x148]
  10001aee8  stp     xzr, xzr, [sp, #0x138]
  10001aeec  stp     xzr, xzr, [sp, #0x128]
  10001aef0  stp     xzr, xzr, [sp, #0x118]
  10001aef4  mov     x0, x19
  10001aef8  bl      _objc_retain
  10001aefc  str     x0, [sp, #0x28]
  10001af00  adrp    x8, #0x100416000
  10001af04  nop
  10001af08  ldr     x1, [x8, #0xe00]
  10001af0c  str     x1, [sp, #0x18]
  10001af10  add     x2, sp, #0x118
  10001af14  add     x3, sp, #0x158
  10001af18  mov     w4, #0x10
  10001af1c  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x118] objects:&sp[0x158] count:16]
  10001af20  cbz     x0, loc_10001b278                        ; if ([arg1 countByEnumeratingWithState:&sp[0x118] objects:&sp[0x158] count:16] == 0)
  10001af24  ldr     x8, [sp, #0x128]
  10001af28  adrp    x9, #0x100416000
  10001af2c  nop
  10001af30  adrp    x10, #0x100417000
  10001af34  nop
  10001af38  adrp    x11, #0x100416000
  10001af3c  nop
  10001af40  adrp    x12, #0x100417000
  10001af44  nop
  10001af48  adrp    x13, #0x100181000
  10001af4c  ldr     s0, [x13, #0xa80]                        ; s0 = 420.0
  10001af50  nop
  10001af54  ldr     s1, [x13, #0xa84]                        ; s1 = 132.0
  10001af58  ldr     x9, [x9, #0xac8]
  10001af5c  str     x9, [sp, #0x70]
  10001af60  adrp    x9, #0x100417000
  10001af64  nop
  10001af68  adrp    x13, #0x100417000
  10001af6c  add     x13, x13, #0x8a8                         ; &@selector(setTransform:)
  10001af70  ldr     x10, [x10, #0x40]
  10001af74  str     x10, [sp, #0x68]
  10001af78  ldr     x10, [x11, #0xd40]
  10001af7c  str     x10, [sp, #0x60]
  10001af80  adrp    x10, #0x100417000
  10001af84  nop
  10001af88  adrp    x11, #0x100416000
  10001af8c  add     x11, x11, #0xf38                         ; &@selector(frame)
  10001af90  adrp    x14, #0x100417000
  10001af94  add     x14, x14, #0x1f8                         ; &@selector(setCenter:)
  10001af98  adrp    x15, #0x100417000
  10001af9c  add     x15, x15, #0x8b8                         ; &@selector(setContentMode:)
  10001afa0  ldr     x12, [x12, #0x8a0]
  10001afa4  str     x12, [sp, #0x58]
  10001afa8  ldr     x9, [x9, #0x7b8]
  10001afac  str     x9, [sp, #0x50]
  10001afb0  adrp    x9, #0x100416000
  10001afb4  add     x9, x9, #0xf20                           ; &@selector(addSubview:)
  10001afb8  ldr     w12, [sp, #0x8c]
  10001afbc  cmp     w12, #0
  10001afc0  ldr     x12, [x13]
  10001afc4  str     x12, [sp, #0x40]
  10001afc8  ldr     x21, [x10, #0x8b0]
  10001afcc  ldr     x22, [x11]
  10001afd0  ldr     x10, [x14]
  10001afd4  str     x10, [sp, #0x38]
  10001afd8  ldr     x26, [x15]
  10001afdc  ldr     x27, [x9]
  10001afe0  ldr     x8, [x8]
  10001afe4  str     x8, [sp, #0x78]
  10001afe8  fcsel   s0, s1, s0, ne
  10001afec  str     s0, [sp, #0xa8]
  10001aff0  fneg    s0, s0
  10001aff4  str     s0, [sp, #0xac]
  10001aff8  adrp    x8, #0x100181000
  10001affc  ldr     d0, [x8, #0xa40]                         ; d0 = 43.0
  10001b000  str     d0, [sp, #0x20]
  10001b004  nop
  10001b008  ldr     d0, [x8, #0x9e8]                         ; d0 = 3.14159265
  10001b00c  str     d0, [sp, #0x48]
  10001b010  fmov    d14, #0.50000000
  10001b014  adrp    x8, #0x100181000
  10001b018  ldr     d0, [x8, #0xa48]                         ; d0 = 6.28318531
  10001b01c  str     d0, [sp, #0x30]
  10001b020  nop
  10001b024  movi    v0.16b, #0
  10001b028  str     q0, [sp, #0x90]
  10001b02c  ldr     d15, [x8, #0xa38]                        ; d15 = 110.0
loc_10001b030:
  10001b030  mov     x23, #0
loc_10001b034:
  10001b034  mov     x25, x0
  10001b038  ldr     x8, [sp, #0x128]
  10001b03c  ldr     x8, [x8]
  10001b040  ldr     x9, [sp, #0x78]
  10001b044  cmp     x8, x9
  10001b048  b.eq    loc_10001b054                            ; if (x8 == x9)
  10001b04c  ldr     x0, [sp, #0x28]
  10001b050  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_10001b054:
  10001b054  ldr     x8, [sp, #0x120]
  10001b058  ldr     x19, [x8, x23, lsl #3]
  10001b05c  adrp    x8, #0x10041e000
  10001b060  ldr     x0, [x8, #0x90]                          ; class UIImageView
  10001b064  ldr     x1, [sp, #0x70]
  10001b068  bl      _objc_msgSend                            ; [UIImageView alloc]
  10001b06c  mov     x28, x0
  10001b070  adrp    x8, #0x10041d000
  10001b074  ldr     x24, [x8, #0xf10]                        ; class UIImage
  10001b078  mov     x0, x19
  10001b07c  ldr     x1, [sp, #0x68]
  10001b080  adrp    x2, #0x1003ba000
  10001b084  add     x2, x2, #0xb10                           ; @"icon"
  10001b088  bl      _objc_msgSend                            ; [x0 objectForKey:@"icon"]
  10001b08c  mov     x29, x29
  10001b090  bl      _objc_retainAutoreleasedReturnValue
  10001b094  mov     x19, x0
  10001b098  mov     x0, x24
  10001b09c  ldr     x1, [sp, #0x60]
  10001b0a0  mov     x2, x19
  10001b0a4  bl      _objc_msgSend                            ; [UIImage imageNamed:[x0 objectForKey:@"icon"]]
  10001b0a8  mov     x29, x29
  10001b0ac  bl      _objc_retainAutoreleasedReturnValue
  10001b0b0  mov     x24, x0
  10001b0b4  mov     x0, x28
  10001b0b8  ldr     x1, [sp, #0x58]
  10001b0bc  mov     x2, x24
  10001b0c0  bl      _objc_msgSend                            ; [[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]]
  10001b0c4  mov     x28, x0
  10001b0c8  mov     x0, x24
  10001b0cc  bl      _objc_release
  10001b0d0  mov     x0, x19
  10001b0d4  bl      _objc_release
  10001b0d8  ldr     w8, [sp, #0x8c]
  10001b0dc  cbz     w8, loc_10001b100                        ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  10001b0e0  movi    v0.16b, #0
  10001b0e4  movi    v1.16b, #0
  10001b0e8  mov     x0, x28
  10001b0ec  ldr     x1, [sp, #0x50]
  10001b0f0  ldr     d2, [sp, #0x20]
  10001b0f4  mov     v3.16b, v2.16b
  10001b0f8  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]] setFrame:{0, 0, 43, 43}]
  10001b0fc  b       loc_10001b11c
loc_10001b100:
  10001b100  movi    v0.16b, #0
  10001b104  movi    v1.16b, #0
  10001b108  mov     x0, x28
  10001b10c  ldr     x1, [sp, #0x50]
  10001b110  mov     v2.16b, v15.16b
  10001b114  mov     v3.16b, v2.16b
  10001b118  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]] setFrame:{0, 0, 110, 110}]
loc_10001b11c:
  10001b11c  ldr     q0, [sp, #0x90]
  10001b120  fcvt    d10, s0
  10001b124  ldr     d0, [sp, #0x48]
  10001b128  fsub    d0, d0, d10
  10001b12c  add     x8, sp, #0xe8
  10001b130  bl      _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation()
  10001b134  add     x19, sp, #9
  10001b138  ldur    q0, [x19, #0xff]
  10001b13c  str     q0, [sp, #0xd0]
  10001b140  ldur    q0, [sp, #0xf8]
  10001b144  str     q0, [sp, #0xc0]
  10001b148  ldur    q0, [sp, #0xe8]
  10001b14c  str     q0, [sp, #0xb0]
  10001b150  add     x2, sp, #0xb0
  10001b154  mov     x0, x28
  10001b158  ldr     x1, [sp, #0x40]
  10001b15c  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]] setTransform:&sp[0xb0]]
  10001b160  mov     v0.16b, v10.16b
  10001b164  bl      _cos                                     ; cos()
  10001b168  mov     v11.16b, v0.16b
  10001b16c  mov     x0, x20
  10001b170  mov     x1, x21
  10001b174  bl      _objc_msgSend                            ; [self revert]
  10001b178  mov     x19, x0
  10001b17c  mov     v0.16b, v10.16b
  10001b180  bl      _sin                                     ; sin()
  10001b184  mov     v12.16b, v0.16b
  10001b188  cmp     w19, #0
  10001b18c  ldp     s1, s0, [sp, #0xa8]
  10001b190  fcsel   s8, s1, s0, ne                           ; t1 = ([self revert] != 0 ? ([[ADGameParameters sharedParameters] isIphone] != 0 ? 132 : 420) : -([[ADGameParameters sharedParameters] isIphone] != 0 ? 132 : 420))
  10001b194  mov     x0, x20
  10001b198  mov     x1, x21
  10001b19c  bl      _objc_msgSend                            ; [self revert]
  10001b1a0  cmp     w0, #0
  10001b1a4  ldp     s1, s0, [sp, #0xa8]
  10001b1a8  fcsel   s9, s0, s1, ne                           ; t2 = ([self revert] != 0 ? -([[ADGameParameters sharedParameters] isIphone] != 0 ? 132 : 420) : ([[ADGameParameters sharedParameters] isIphone] != 0 ? 132 : 420))
  10001b1ac  mov     x0, x20
  10001b1b0  mov     x1, x22
  10001b1b4  bl      _objc_msgSend                            ; [self frame]
  10001b1b8  mov     v13.16b, v2.16b
  10001b1bc  mov     x0, x20
  10001b1c0  mov     x1, x22
  10001b1c4  bl      _objc_msgSend                            ; [self frame]
  10001b1c8  fcvt    d0, s8
  10001b1cc  fmul    d0, d12, d0
  10001b1d0  fcvt    s1, d0
  10001b1d4  fcvt    d0, s9
  10001b1d8  fmul    d2, d13, d14
  10001b1dc  fmul    d0, d11, d0
  10001b1e0  fcvt    s0, d0
  10001b1e4  fcvt    d0, s0
  10001b1e8  fadd    d0, d0, d2
  10001b1ec  fmul    d2, d3, d14
  10001b1f0  fcvt    d1, s1
  10001b1f4  fadd    d1, d1, d2
  10001b1f8  mov     x0, x28
  10001b1fc  ldr     x1, [sp, #0x38]
  10001b200  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]] setCenter:{((cos() * t2) + ([self frame].2 * 0.5)), ((sin() * t1) + ([self frame].3 * 0.5))}]
  10001b204  mov     w2, #1
  10001b208  mov     x0, x28
  10001b20c  mov     x1, x26
  10001b210  bl      _objc_msgSend                            ; [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]] setContentMode:1]
  10001b214  ldr     x8, [sp, #0x80]
  10001b218  ldr     w19, [x20, x8]                           ; w19 = self->numberOfItems
  10001b21c  mov     x0, x20
  10001b220  mov     x1, x27
  10001b224  mov     x2, x28
  10001b228  bl      _objc_msgSend                            ; [self addSubview:[[UIImageView alloc] initWithImage:[UIImage imageNamed:[x0 objectForKey:@"icon"]]]]
  10001b22c  scvtf   d0, w19
  10001b230  ldr     d1, [sp, #0x30]
  10001b234  fdiv    d0, d1, d0
  10001b238  fadd    d0, d10, d0
  10001b23c  fcvt    s0, d0
  10001b240  str     q0, [sp, #0x90]
  10001b244  mov     x0, x28
  10001b248  bl      _objc_release
  10001b24c  add     x23, x23, #1
  10001b250  mov     x0, x25
  10001b254  cmp     x23, x0
  10001b258  b.lo    loc_10001b034                            ; if ((x23 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x118] objects:&sp[0x158] count:16])
  10001b25c  add     x2, sp, #0x118
  10001b260  add     x3, sp, #0x158
  10001b264  mov     w4, #0x10
  10001b268  ldr     x0, [sp, #0x28]
  10001b26c  ldr     x1, [sp, #0x18]
  10001b270  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x118] objects:&sp[0x158] count:16]
  10001b274  cbnz    x0, loc_10001b030                        ; if ([arg1 countByEnumeratingWithState:&sp[0x118] objects:&sp[0x158] count:16] != 0)
loc_10001b278:
  10001b278  ldr     x19, [sp, #0x28]
  10001b27c  mov     x0, x19
  10001b280  bl      _objc_release
  10001b284  mov     x0, x19
  10001b288  bl      _objc_release
  10001b28c  ldur    x8, [x29, #-0x98]
  10001b290  adrp    x9, #0x1003b0000
  10001b294  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10001b298  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10001b29c  sub     x8, x9, x8
  10001b2a0  cbnz    x8, loc_10001b2d4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001b2a4  sub     sp, x29, #0x90
  10001b2a8  ldp     x29, x30, [sp, #0x90]
  10001b2ac  ldp     x20, x19, [sp, #0x80]
  10001b2b0  ldp     x22, x21, [sp, #0x70]
  10001b2b4  ldp     x24, x23, [sp, #0x60]
  10001b2b8  ldp     x26, x25, [sp, #0x50]
  10001b2bc  ldp     x28, x27, [sp, #0x40]
  10001b2c0  ldp     d9, d8, [sp, #0x30]
  10001b2c4  ldp     d11, d10, [sp, #0x20]
  10001b2c8  ldp     d13, d12, [sp, #0x10]
  10001b2cc  ldp     d15, d14, [sp], #0xa0
  10001b2d0  ret
loc_10001b2d4:
  10001b2d4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10001b2d8  mov     x20, x0
  10001b2dc  mov     x0, x28
  10001b2e0  b       loc_10001b304
loc_10001b2e4:
  10001b2e4  mov     x20, x0
  10001b2e8  b       loc_10001b308
  10001b2ec  mov     x20, x0
  10001b2f0  b       loc_10001b300
  10001b2f4  mov     x20, x0
  10001b2f8  mov     x0, x24
  10001b2fc  bl      _objc_release
loc_10001b300:
  10001b300  mov     x0, x19
loc_10001b304:
  10001b304  bl      _objc_release
loc_10001b308:
  10001b308  ldr     x22, [sp, #0x10]
  10001b30c  ldr     x0, [sp, #0x28]
loc_10001b310:
  10001b310  bl      _objc_release
loc_10001b314:
  10001b314  mov     x0, x22
  10001b318  bl      _objc_release
  10001b31c  mov     x0, x20
  10001b320  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001b324  b       loc_10001b2e4
  10001b328  mov     x20, x0
  10001b32c  b       loc_10001b314
  10001b330  mov     x20, x0
  10001b334  mov     x0, x19
  10001b338  b       loc_10001b310
  10001b33c  b       loc_10001b2e4

; ======================================================================
; -[ADRouletteView update]
; address 0x10001b340  size 16  kind objc
; ======================================================================
  10001b340  adrp    x8, #0x100417000
  10001b344  nop
  10001b348  ldr     x1, [x8, #0x8c0]
  10001b34c  b       _objc_msgSend                            ; [self rotateWheel]

; ======================================================================
; -[ADRouletteView rotateWheel]
; address 0x10001b350  size 420  kind objc
; ======================================================================
  10001b350  stp     d9, d8, [sp, #-0x30]!
  10001b354  stp     x20, x19, [sp, #0x10]
  10001b358  stp     x29, x30, [sp, #0x20]
  10001b35c  add     x29, sp, #0x20
  10001b360  sub     sp, sp, #0x90
  10001b364  mov     x19, x0
  10001b368  adrp    x8, #0x10041f000
  10001b36c  ldrsw   x8, [x8, #0x630]                         ; ivar offset ADRouletteView.launched (+0x80)
  10001b370  ldrb    w8, [x19, x8]                            ; w8 = self->launched
  10001b374  cbz     w8, loc_10001b4e0                        ; if (self->launched == 0)
  10001b378  adrp    x8, #0x100417000
  10001b37c  nop
  10001b380  ldr     x20, [x8, #0x18]
  10001b384  mov     x0, x19
  10001b388  mov     x1, x20
  10001b38c  bl      _objc_msgSend                            ; [self speed]
  10001b390  fcvt    d0, s0
  10001b394  adrp    x8, #0x100181000
  10001b398  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  10001b39c  fcmp    d0, d1
  10001b3a0  b.le    loc_10001b3c4                            ; if ([self speed] <= (or unordered) 0.1)
  10001b3a4  cbz     x19, loc_10001b3e8                       ; if (self == 0)
  10001b3a8  adrp    x8, #0x100417000
  10001b3ac  nop
  10001b3b0  ldr     x1, [x8, #0x8c8]
  10001b3b4  add     x8, sp, #0x30
  10001b3b8  mov     x0, x19
  10001b3bc  bl      _objc_msgSend                            ; [self transform]
  10001b3c0  b       loc_10001b3f4
loc_10001b3c4:
  10001b3c4  adrp    x8, #0x100417000
  10001b3c8  nop
  10001b3cc  ldr     x1, [x8, #0x8d8]
  10001b3d0  mov     x0, x19
  10001b3d4  sub     sp, x29, #0x20
  10001b3d8  ldp     x29, x30, [sp, #0x20]
  10001b3dc  ldp     x20, x19, [sp, #0x10]
  10001b3e0  ldp     d9, d8, [sp], #0x30
  10001b3e4  b       _objc_msgSend                            ; [self centerBadRouletteOnClosestItem]
loc_10001b3e8:
  10001b3e8  stp     xzr, xzr, [sp, #0x50]
  10001b3ec  stp     xzr, xzr, [sp, #0x40]
  10001b3f0  stp     xzr, xzr, [sp, #0x30]
loc_10001b3f4:
  10001b3f4  mov     x0, x19
  10001b3f8  mov     x1, x20
  10001b3fc  bl      _objc_msgSend                            ; [self speed]
  10001b400  fcvt    d0, s0
  10001b404  adrp    x8, #0x100181000
  10001b408  ldr     d1, [x8, #0x9e8]                         ; d1 = 3.14159265
  10001b40c  fmul    d0, d0, d1
  10001b410  nop
  10001b414  ldr     d1, [x8, #0x9f0]                         ; d1 = 180.0
  10001b418  fdiv    d0, d0, d1
  10001b41c  sub     x8, x29, #0x50
  10001b420  add     x0, sp, #0x30
  10001b424  bl      _CGAffineTransformRotate                 ; CGAffineTransformRotate(&sp[0x30])
  10001b428  ldur    q0, [x29, #-0x30]
  10001b42c  str     q0, [sp, #0x20]
  10001b430  ldur    q0, [x29, #-0x40]
  10001b434  str     q0, [sp, #0x10]
  10001b438  ldur    q0, [x29, #-0x50]
  10001b43c  str     q0, [sp]
  10001b440  adrp    x8, #0x100417000
  10001b444  nop
  10001b448  ldr     x1, [x8, #0x8a8]
  10001b44c  mov     x2, sp
  10001b450  mov     x0, x19
  10001b454  bl      _objc_msgSend                            ; [self setTransform:&sp[0x0]]
  10001b458  mov     x0, x19
  10001b45c  mov     x1, x20
  10001b460  bl      _objc_msgSend                            ; [self speed]
  10001b464  mov     v9.16b, v0.16b
  10001b468  mov     x0, x19
  10001b46c  mov     x1, x20
  10001b470  bl      _objc_msgSend                            ; [self speed]
  10001b474  mov     v8.16b, v0.16b
  10001b478  fmov    s0, #10.00000000
  10001b47c  fcmp    s9, s0
  10001b480  b.le    loc_10001b494                            ; if ([self speed] <= (or unordered) 10)
  10001b484  fcvt    d0, s8
  10001b488  adrp    x8, #0x100181000
  10001b48c  ldr     d1, [x8, #0xa60]                         ; d1 = 0.94
  10001b490  b       loc_10001b4c4
loc_10001b494:
  10001b494  mov     x0, x19
  10001b498  mov     x1, x20
  10001b49c  bl      _objc_msgSend                            ; [self speed]
  10001b4a0  fcvt    d0, s0
  10001b4a4  fmov    s1, #5.00000000
  10001b4a8  fcmp    s8, s1
  10001b4ac  b.le    loc_10001b4bc                            ; if ([self speed] <= (or unordered) 5)
  10001b4b0  adrp    x8, #0x100181000
  10001b4b4  ldr     d1, [x8, #0xa58]                         ; d1 = 0.95
  10001b4b8  b       loc_10001b4c4
loc_10001b4bc:
  10001b4bc  adrp    x8, #0x100181000
  10001b4c0  ldr     d1, [x8, #0xa50]                         ; d1 = 0.97
loc_10001b4c4:
  10001b4c4  fmul    d0, d0, d1
  10001b4c8  fcvt    s0, d0
  10001b4cc  adrp    x8, #0x100417000
  10001b4d0  nop
  10001b4d4  ldr     x1, [x8, #0x8d0]
  10001b4d8  mov     x0, x19
  10001b4dc  bl      _objc_msgSend                            ; [self setSpeed:([self speed] * d1)]
loc_10001b4e0:
  10001b4e0  sub     sp, x29, #0x20
  10001b4e4  ldp     x29, x30, [sp, #0x20]
  10001b4e8  ldp     x20, x19, [sp, #0x10]
  10001b4ec  ldp     d9, d8, [sp], #0x30
  10001b4f0  ret

; ======================================================================
; -[ADRouletteView centerBadRouletteOnClosestItem]
; address 0x10001b4f4  size 648  kind objc
; ======================================================================
  10001b4f4  stp     d9, d8, [sp, #-0x40]!
  10001b4f8  stp     x22, x21, [sp, #0x10]
  10001b4fc  stp     x20, x19, [sp, #0x20]
  10001b500  stp     x29, x30, [sp, #0x30]
  10001b504  add     x29, sp, #0x30
  10001b508  sub     sp, sp, #0xc0
  10001b50c  mov     x19, x0
  10001b510  adrp    x8, #0x10041f000
  10001b514  ldrsw   x8, [x8, #0x634]                         ; ivar offset ADRouletteView.adjusted (+0x81)
  10001b518  ldrb    w9, [x19, x8]                            ; w9 = self->adjusted
  10001b51c  cbnz    w9, loc_10001b748                        ; if (self->adjusted != 0)
  10001b520  mov     w9, #1
  10001b524  strb    w9, [x19, x8]                            ; self->adjusted = 1
  10001b528  adrp    x8, #0x100417000
  10001b52c  nop
  10001b530  ldr     x1, [x8, #0x8d0]
  10001b534  movi    v0.16b, #0
  10001b538  mov     x0, x19
  10001b53c  bl      _objc_msgSend                            ; [self setSpeed:0]
  10001b540  adrp    x8, #0x100417000
  10001b544  nop
  10001b548  ldr     x20, [x8, #0x8c8]
  10001b54c  sub     x8, x29, #0x60
  10001b550  mov     x0, x19
  10001b554  mov     x1, x20
  10001b558  bl      _objc_msgSend                            ; [self transform]
  10001b55c  ldur    d0, [x29, #-0x58]
  10001b560  fcvt    s8, d0
  10001b564  add     x8, sp, #0x60
  10001b568  mov     x0, x19
  10001b56c  mov     x1, x20
  10001b570  bl      _objc_msgSend                            ; [self transform]
  10001b574  ldr     d0, [sp, #0x60]
  10001b578  fcvt    s1, d0
  10001b57c  mov     v0.16b, v8.16b
  10001b580  bl      _atan2f                                  ; atan2f()
  10001b584  movi    v17.16b, #0
  10001b588  adrp    x8, #0x10041f000
  10001b58c  ldrsw   x8, [x8, #0x628]                         ; ivar offset ADRouletteView.numberOfItems (+0x84)
  10001b590  ldr     w9, [x19, x8]                            ; w9 = self->numberOfItems
  10001b594  cmp     w9, #0
  10001b598  cinc    w10, w9, lt
  10001b59c  and     w10, w10, #0xfffffffe
  10001b5a0  sub     w10, w9, w10                             ; t1 = (self->numberOfItems - ((self->numberOfItems < 0 ? self->numberOfItems + 1 : self->numberOfItems) & 0xfffffffe))
  10001b5a4  cmp     w10, #1
  10001b5a8  b.ne    loc_10001b5d8                            ; if (t1 != 1)
  10001b5ac  scvtf   d1, w9
  10001b5b0  adrp    x10, #0x100181000
  10001b5b4  ldr     d2, [x10, #0xa70]                        ; d2 = 360.0
  10001b5b8  fdiv    d1, d2, d1
  10001b5bc  fmov    d2, #0.50000000
  10001b5c0  fmul    d1, d1, d2
  10001b5c4  fcvt    s17, d1
  10001b5c8  nop
  10001b5cc  ldr     s1, [x10, #0xa88]                        ; s1 = 360.0
  10001b5d0  fcmp    s17, s1
  10001b5d4  b.pl    loc_10001b650                            ; if (((360 / (float)self->numberOfItems) * 0.5) >= (or unordered) 360)
loc_10001b5d8:
  10001b5d8  fcvt    d0, s0
  10001b5dc  adrp    x10, #0x100181000
  10001b5e0  ldr     d1, [x10, #0xa68]                        ; d1 = 57.2957795
  10001b5e4  fmul    d0, d0, d1
  10001b5e8  fcvt    s0, d0
  10001b5ec  scvtf   d1, w9
  10001b5f0  nop
  10001b5f4  ldr     d2, [x10, #0xa70]                        ; d2 = 360.0
  10001b5f8  fdiv    d1, d2, d1
  10001b5fc  adrp    x10, #0x100181000
  10001b600  ldr     s2, [x10, #0xa88]                        ; s2 = 360.0
  10001b604  mov     v3.16b, v2.16b
loc_10001b608:
  10001b608  fsub    s4, s17, s0
  10001b60c  fabs    s5, s4
  10001b610  fabs    s6, s3
  10001b614  fcmp    s5, s6
  10001b618  fcsel   s5, s17, s8, mi
  10001b61c  fcsel   s3, s4, s3, mi
  10001b620  fneg    s4, s17
  10001b624  fsub    s6, s4, s0
  10001b628  fabs    s7, s6
  10001b62c  fabs    s16, s3
  10001b630  fcmp    s7, s16
  10001b634  fcsel   s8, s4, s5, mi                           ; t2 = (fabs((-s17 - (atan2f() * 57.2958))) < fabs((fabs((s17 - (atan2f() * 57.2958))) < fabs(s3) ? (s17 - (atan2f() * 57.2958)) : s3)) ? -s17 : (fabs((s17 - (atan2f() * 57.2958))) < fabs(s3) ? s17 : s8))
  10001b638  fcsel   s3, s6, s3, mi                           ; t3 = (fabs((-s17 - (atan2f() * 57.2958))) < fabs((fabs((s17 - (atan2f() * 57.2958))) < fabs(s3) ? (s17 - (atan2f() * 57.2958)) : s3)) ? (-s17 - (atan2f() * 57.2958)) : (fabs((s17 - (atan2f() * 57.2958))) < fabs(s3) ? (s17 - (atan2f() * 57.2958)) : s3))
  10001b63c  fcvt    d4, s17
  10001b640  fadd    d4, d4, d1
  10001b644  fcvt    s17, d4
  10001b648  fcmp    s17, s2
  10001b64c  b.mi    loc_10001b608                            ; if ((d4 + (360 / (float)self->numberOfItems)) < 360)
loc_10001b650:
  10001b650  adrp    x10, #0x100181000
  10001b654  ldr     s0, [x10, #0xa8c]                        ; s0 = -180.0
  10001b658  fadd    s0, s8, s0
  10001b65c  mov     w10, #0x168
  10001b660  sdiv    w9, w10, w9
  10001b664  scvtf   s1, w9
  10001b668  fdiv    s0, s0, s1
  10001b66c  fcvtzs  w9, s0
  10001b670  adrp    x10, #0x10041f000
  10001b674  ldrsw   x10, [x10, #0x638]                       ; ivar offset ADRouletteView.selectedItemIndex (+0x88)
  10001b678  str     w9, [x19, x10]                           ; self->selectedItemIndex = (int)((s8 + -180) / (float)(360 / self->numberOfItems))
  10001b67c  tbz     w9, 0x1f, loc_10001b68c                  ; if ((int)((s8 + -180) / (float)(360 / self->numberOfItems)) >= 0)
  10001b680  ldr     w8, [x19, x8]                            ; w8 = self->numberOfItems
  10001b684  add     w8, w8, w9
  10001b688  str     w8, [x19, x10]                           ; self->selectedItemIndex = (self->numberOfItems + (int)((s8 + -180) / (float)(360 / self->numberOfItems)))
loc_10001b68c:
  10001b68c  fcvt    d0, s8
  10001b690  str     d0, [sp]
  10001b694  adrp    x0, #0x1003ba000
  10001b698  add     x0, x0, #0xb30                           ; @"wanted angle : %f"
  10001b69c  bl      _NSLog                                   ; NSLog(@"wanted angle : %f", sp[0])
  10001b6a0  adrp    x21, #0x1003b0000
  10001b6a4  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  10001b6a8  adrp    x8, #0x10041d000
  10001b6ac  ldr     x20, [x8, #0xf98]                        ; class UIView
  10001b6b0  mov     w22, #-0x3e000000
  10001b6b4  adr     x8, #0x10001b77c                         ; &-[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke
  10001b6b8  nop
  10001b6bc  str     x21, [sp, #0x30]
  10001b6c0  stp     w22, wzr, [sp, #0x38]
  10001b6c4  str     x8, [sp, #0x40]
  10001b6c8  adrp    x8, #0x1003b1000
  10001b6cc  add     x8, x8, #0xe0                            ; &d_1003b10e0
  10001b6d0  str     x8, [sp, #0x48]
  10001b6d4  str     s8, [sp, #0x58]
  10001b6d8  mov     x0, x19
  10001b6dc  bl      _objc_retain
  10001b6e0  str     x0, [sp, #0x50]
  10001b6e4  str     x21, [sp, #8]
  10001b6e8  stp     w22, wzr, [sp, #0x10]
  10001b6ec  adr     x8, #0x10001b808                         ; &-[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke_2
  10001b6f0  nop
  10001b6f4  str     x8, [sp, #0x18]
  10001b6f8  adrp    x8, #0x1003b1000
  10001b6fc  add     x8, x8, #0x110                           ; &d_1003b1110
  10001b700  str     x8, [sp, #0x20]
  10001b704  bl      _objc_retain
  10001b708  str     x0, [sp, #0x28]
  10001b70c  adrp    x8, #0x100417000
  10001b710  nop
  10001b714  ldr     x1, [x8, #0x8f0]
  10001b718  adrp    x8, #0x100181000
  10001b71c  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  10001b720  movi    v1.16b, #0
  10001b724  add     x3, sp, #0x30
  10001b728  add     x4, sp, #8
  10001b72c  mov     x0, x20
  10001b730  mov     x2, #0
  10001b734  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{-[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke captures +0x20=self} completion:^{-[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADRouletteView centerBadRouletteOnClo…, +0x40=&d_1003b10e0, +0x48=self}]
  10001b738  ldr     x0, [sp, #0x28]
  10001b73c  bl      _objc_release
  10001b740  ldr     x0, [sp, #0x50]
  10001b744  bl      _objc_release
loc_10001b748:
  10001b748  sub     sp, x29, #0x30
  10001b74c  ldp     x29, x30, [sp, #0x30]
  10001b750  ldp     x20, x19, [sp, #0x20]
  10001b754  ldp     x22, x21, [sp, #0x10]
  10001b758  ldp     d9, d8, [sp], #0x40
  10001b75c  ret
  10001b760  mov     x19, x0
  10001b764  ldr     x0, [sp, #0x28]
  10001b768  bl      _objc_release
  10001b76c  ldr     x0, [sp, #0x50]
  10001b770  bl      _objc_release
  10001b774  mov     x0, x19
  10001b778  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke
; address 0x10001b77c  size 124  kind block
; ======================================================================
  10001b77c  stp     x20, x19, [sp, #-0x20]!
  10001b780  stp     x29, x30, [sp, #0x10]
  10001b784  add     x29, sp, #0x10
  10001b788  sub     sp, sp, #0x60
  10001b78c  mov     x19, x0
  10001b790  ldr     s0, [x19, #0x28]                         ; s0 = block[+0x28]
  10001b794  fcvt    d0, s0
  10001b798  adrp    x8, #0x100181000
  10001b79c  ldr     d1, [x8, #0x9e8]                         ; d1 = 3.14159265
  10001b7a0  fmul    d0, d0, d1
  10001b7a4  nop
  10001b7a8  ldr     d1, [x8, #0x9f0]                         ; d1 = 180.0
  10001b7ac  fdiv    d0, d0, d1
  10001b7b0  add     x8, sp, #0x30
  10001b7b4  bl      _CGAffineTransformMakeRotation           ; CGAffineTransformMakeRotation(block, blockarg1, blockarg2, blockarg3)
  10001b7b8  ldr     x0, [x19, #0x20]                         ; x0 = captured self
  10001b7bc  ldr     q0, [sp, #0x50]
  10001b7c0  str     q0, [sp, #0x20]
  10001b7c4  ldr     q0, [sp, #0x40]
  10001b7c8  str     q0, [sp, #0x10]
  10001b7cc  ldr     q0, [sp, #0x30]
  10001b7d0  str     q0, [sp]
  10001b7d4  adrp    x8, #0x100417000
  10001b7d8  nop
  10001b7dc  ldr     x1, [x8, #0x8a8]
  10001b7e0  mov     x2, sp
  10001b7e4  bl      _objc_msgSend                            ; [self setTransform:&sp[0x0]]
  10001b7e8  sub     sp, x29, #0x10
  10001b7ec  ldp     x29, x30, [sp, #0x10]
  10001b7f0  ldp     x20, x19, [sp], #0x20
  10001b7f4  ret

; ======================================================================
; sub_10001b7f8
; address 0x10001b7f8  size 8  kind sub
; ======================================================================
  10001b7f8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001b7fc  b       _objc_retain

; ======================================================================
; sub_10001b800
; address 0x10001b800  size 8  kind sub
; ======================================================================
  10001b800  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001b804  b       _objc_release

; ======================================================================
; -[ADRouletteView centerBadRouletteOnClosestItem]_block_invoke_2
; address 0x10001b808  size 104  kind block
; ======================================================================
  10001b808  stp     x20, x19, [sp, #-0x20]!
  10001b80c  stp     x29, x30, [sp, #0x10]
  10001b810  add     x29, sp, #0x10
  10001b814  mov     x20, x0
  10001b818  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10001b81c  adrp    x8, #0x100417000
  10001b820  nop
  10001b824  ldr     x1, [x8, #0x8e0]
  10001b828  bl      _objc_msgSend                            ; [self scenarioViewController]
  10001b82c  mov     x29, x29
  10001b830  bl      _objc_retainAutoreleasedReturnValue
  10001b834  mov     x19, x0
  10001b838  ldr     x2, [x20, #0x20]                         ; x2 = captured self
  10001b83c  adrp    x8, #0x100417000
  10001b840  nop
  10001b844  ldr     x1, [x8, #0x8e8]
  10001b848  bl      _objc_msgSend                            ; [[self scenarioViewController] rouletteDidStop:self]
  10001b84c  mov     x0, x19
  10001b850  ldp     x29, x30, [sp, #0x10]
  10001b854  ldp     x20, x19, [sp], #0x20
  10001b858  b       _objc_release
  10001b85c  mov     x20, x0
  10001b860  mov     x0, x19
  10001b864  bl      _objc_release
  10001b868  mov     x0, x20
  10001b86c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10001b870
; address 0x10001b870  size 8  kind sub
; ======================================================================
  10001b870  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10001b874  b       _objc_retain

; ======================================================================
; sub_10001b878
; address 0x10001b878  size 8  kind sub
; ======================================================================
  10001b878  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10001b87c  b       _objc_release

; ======================================================================
; -[ADRouletteView selectedItemDictionary]
; address 0x10001b880  size 80  kind objc
; ======================================================================
  10001b880  stp     x29, x30, [sp, #-0x10]!
  10001b884  mov     x29, sp
  10001b888  adrp    x8, #0x10041f000
  10001b88c  ldrsw   x8, [x8, #0x638]                         ; ivar offset ADRouletteView.selectedItemIndex (+0x88)
  10001b890  ldrsw   x2, [x0, x8]                             ; x2 = self->selectedItemIndex
  10001b894  cmn     w2, #1
  10001b898  b.eq    loc_10001b8c4                            ; if (self->selectedItemIndex == -1)
  10001b89c  adrp    x8, #0x10041f000
  10001b8a0  ldrsw   x8, [x8, #0x62c]                         ; ivar offset ADRouletteView.rouletteItems (+0x78)
  10001b8a4  ldr     x0, [x0, x8]                             ; x0 = self->rouletteItems
  10001b8a8  adrp    x8, #0x100416000
  10001b8ac  nop
  10001b8b0  ldr     x1, [x8, #0xc30]
  10001b8b4  bl      _objc_msgSend                            ; [self->rouletteItems objectAtIndex:self->selectedItemIndex]
  10001b8b8  mov     x29, x29
  10001b8bc  bl      _objc_retainAutoreleasedReturnValue
  10001b8c0  b       loc_10001b8c8
loc_10001b8c4:
  10001b8c4  mov     x0, #0
loc_10001b8c8:
  10001b8c8  ldp     x29, x30, [sp], #0x10
  10001b8cc  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADRouletteView resetSelectedItem]
; address 0x10001b8d0  size 20  kind objc
; ======================================================================
  10001b8d0  adrp    x8, #0x10041f000
  10001b8d4  ldrsw   x8, [x8, #0x638]                         ; ivar offset ADRouletteView.selectedItemIndex (+0x88)
  10001b8d8  mov     w9, #-1
  10001b8dc  str     w9, [x0, x8]                             ; self->selectedItemIndex = 0xffffffff
  10001b8e0  ret

; ======================================================================
; -[ADRouletteView launchRoulette]
; address 0x10001b8e4  size 132  kind objc
; ======================================================================
  10001b8e4  stp     x20, x19, [sp, #-0x20]!
  10001b8e8  stp     x29, x30, [sp, #0x10]
  10001b8ec  add     x29, sp, #0x10
  10001b8f0  mov     x19, x0
  10001b8f4  adrp    x8, #0x10041f000
  10001b8f8  ldrsw   x8, [x8, #0x634]                         ; ivar offset ADRouletteView.adjusted (+0x81)
  10001b8fc  strb    wzr, [x19, x8]                           ; self->adjusted = 0
  10001b900  adrp    x8, #0x10041f000
  10001b904  ldrsw   x8, [x8, #0x630]                         ; ivar offset ADRouletteView.launched (+0x80)
  10001b908  mov     w9, #1
  10001b90c  strb    w9, [x19, x8]                            ; self->launched = 1
  10001b910  bl      _arc4random                              ; arc4random()
  10001b914  ubfx    x8, x0, #0, #0x20
  10001b918  mov     w9, #0x51eb0000
  10001b91c  movk    w9, #0x851f
  10001b920  mul     x8, x8, x9
  10001b924  lsr     x8, x8, #0x26
  10001b928  mov     w9, #0xc8
  10001b92c  msub    w8, w8, w9, w0
  10001b930  add     w8, w8, #0x64
  10001b934  ucvtf   s0, w8
  10001b938  adrp    x8, #0x100417000
  10001b93c  nop
  10001b940  ldr     x1, [x8, #0x8d0]
  10001b944  mov     x0, x19
  10001b948  bl      _objc_msgSend                            ; [self setSpeed:(float)((arc4random() - ((x8 * 0x51eb851f) >>> 38) * 200) + 100)]
  10001b94c  adrp    x8, #0x100417000
  10001b950  nop
  10001b954  ldr     x1, [x8, #0x898]
  10001b958  mov     x0, x19
  10001b95c  ldp     x29, x30, [sp, #0x10]
  10001b960  ldp     x20, x19, [sp], #0x20
  10001b964  b       _objc_msgSend                            ; [self resetSelectedItem]

; ======================================================================
; -[ADRouletteView isStopped]
; address 0x10001b968  size 52  kind objc
; ======================================================================
  10001b968  mov     x8, x0
  10001b96c  adrp    x9, #0x10041f000
  10001b970  ldrsw   x9, [x9, #0x630]                         ; ivar offset ADRouletteView.launched (+0x80)
  10001b974  ldrb    w9, [x8, x9]                             ; w9 = self->launched
  10001b978  cmp     w9, #0
  10001b97c  cset    w0, eq
  10001b980  cbz     w9, loc_10001b998                        ; if (self->launched == 0)
  10001b984  adrp    x9, #0x10041f000
  10001b988  ldrsw   x9, [x9, #0x634]                         ; ivar offset ADRouletteView.adjusted (+0x81)
  10001b98c  ldrb    w8, [x8, x9]                             ; w8 = self->adjusted
  10001b990  cbz     w8, loc_10001b998                        ; if (self->adjusted == 0)
  10001b994  mov     w0, #1
loc_10001b998:
  10001b998  ret

; ======================================================================
; -[ADRouletteView deactivate]
; address 0x10001b99c  size 216  kind objc
; ======================================================================
  10001b99c  stp     x20, x19, [sp, #-0x20]!
  10001b9a0  stp     x29, x30, [sp, #0x10]
  10001b9a4  add     x29, sp, #0x10
  10001b9a8  mov     x19, x0
  10001b9ac  adrp    x8, #0x100417000
  10001b9b0  nop
  10001b9b4  ldr     x1, [x8, #0x8f8]
  10001b9b8  bl      _objc_msgSend                            ; [self layer]
  10001b9bc  mov     x29, x29
  10001b9c0  bl      _objc_retainAutoreleasedReturnValue
  10001b9c4  mov     x20, x0
  10001b9c8  adrp    x8, #0x100417000
  10001b9cc  nop
  10001b9d0  ldr     x1, [x8, #0x900]
  10001b9d4  bl      _objc_msgSend                            ; [[self layer] removeAllAnimations]
  10001b9d8  mov     x0, x20
  10001b9dc  bl      _objc_release
  10001b9e0  adrp    x8, #0x100417000
  10001b9e4  nop
  10001b9e8  ldr     x1, [x8, #0x1c8]
  10001b9ec  mov     x0, x19
  10001b9f0  bl      _objc_msgSend                            ; [self subviews]
  10001b9f4  mov     x29, x29
  10001b9f8  bl      _objc_retainAutoreleasedReturnValue
  10001b9fc  mov     x20, x0
  10001ba00  adrp    x8, #0x100417000
  10001ba04  nop
  10001ba08  ldr     x2, [x8, #0x1d0]
  10001ba0c  adrp    x8, #0x100416000
  10001ba10  nop
  10001ba14  ldr     x1, [x8, #0xe48]
  10001ba18  bl      _objc_msgSend                            ; [[self subviews] makeObjectsPerformSelector:@selector(removeFromSuperview)]
  10001ba1c  mov     x0, x20
  10001ba20  bl      _objc_release
  10001ba24  adrp    x8, #0x10041f000
  10001ba28  ldrsw   x8, [x8, #0x62c]                         ; ivar offset ADRouletteView.rouletteItems (+0x78)
  10001ba2c  ldr     x0, [x19, x8]                            ; x0 = self->rouletteItems
  10001ba30  str     xzr, [x19, x8]                           ; self->rouletteItems = 0
  10001ba34  bl      _objc_release
  10001ba38  adrp    x8, #0x10041f000
  10001ba3c  ldrsw   x8, [x8, #0x624]                         ; ivar offset ADRouletteView.rouletteTimer (+0x70)
  10001ba40  ldr     x0, [x19, x8]                            ; x0 = self->rouletteTimer
  10001ba44  adrp    x8, #0x100417000
  10001ba48  nop
  10001ba4c  ldr     x1, [x8, #0x730]
  10001ba50  ldp     x29, x30, [sp, #0x10]
  10001ba54  ldp     x20, x19, [sp], #0x20
  10001ba58  b       _objc_msgSend                            ; [self->rouletteTimer invalidate]
  10001ba5c  b       loc_10001ba60
loc_10001ba60:
  10001ba60  mov     x19, x0
  10001ba64  mov     x0, x20
  10001ba68  bl      _objc_release
  10001ba6c  mov     x0, x19
  10001ba70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADRouletteView layoutSubviews]
; address 0x10001ba74  size 160  kind objc
; ======================================================================
  10001ba74  stp     x20, x19, [sp, #-0x20]!
  10001ba78  stp     x29, x30, [sp, #0x10]
  10001ba7c  add     x29, sp, #0x10
  10001ba80  sub     sp, sp, #0x10
  10001ba84  mov     x19, x0
  10001ba88  str     x19, [sp]
  10001ba8c  adrp    x8, #0x10041e000
  10001ba90  ldr     x8, [x8, #0xc18]
  10001ba94  str     x8, [sp, #8]
  10001ba98  adrp    x8, #0x100417000
  10001ba9c  nop
  10001baa0  ldr     x1, [x8, #0x908]
  10001baa4  mov     x0, sp
  10001baa8  bl      _objc_msgSendSuper2                      ; [super layoutSubviews]
  10001baac  adrp    x20, #0x10042d000
  10001bab0  add     x20, x20, #0x970                         ; &g_10042d970
  10001bab4  ldp     d0, d1, [x20]
  10001bab8  adrp    x8, #0x1003b0000
  10001babc  ldr     x8, [x8, #8]                             ; _CGPointZero
  10001bac0  ldp     d2, d3, [x8]
  10001bac4  fcmp    d0, d2
  10001bac8  fccmp   d1, d3, #0, eq
  10001bacc  b.ne    loc_10001baf0                            ; if (flags !=)
  10001bad0  adrp    x8, #0x100417000
  10001bad4  nop
  10001bad8  ldr     x1, [x8, #0x688]
  10001badc  mov     x0, x19
  10001bae0  bl      _objc_msgSend                            ; [self center]
  10001bae4  str     d0, [x20]                                ; store g_10042d970 = [self center].0
  10001bae8  str     d1, [x20, #8]                            ; store g_10042d978 = [self center].1
  10001baec  b       loc_10001bb04
loc_10001baf0:
  10001baf0  adrp    x8, #0x100417000
  10001baf4  nop
  10001baf8  ldr     x1, [x8, #0x1f8]
  10001bafc  mov     x0, x19
  10001bb00  bl      _objc_msgSend                            ; [self setCenter:{d0, d1}]
loc_10001bb04:
  10001bb04  sub     sp, x29, #0x10
  10001bb08  ldp     x29, x30, [sp, #0x10]
  10001bb0c  ldp     x20, x19, [sp], #0x20
  10001bb10  ret

; ======================================================================
; -[ADRouletteView speed]
; address 0x10001bb14  size 20  kind objc
; ======================================================================
  10001bb14  adrp    x8, #0x10041f000
  10001bb18  ldrsw   x8, [x8, #0x63c]                         ; ivar offset ADRouletteView._speed (+0x90)
  10001bb1c  ldr     w8, [x0, x8]                             ; w8 = self->_speed
  10001bb20  fmov    s0, w8
  10001bb24  ret

; ======================================================================
; -[ADRouletteView setSpeed:]
; address 0x10001bb28  size 20  kind objc
; ======================================================================
  10001bb28  fmov    w8, s0
  10001bb2c  adrp    x9, #0x10041f000
  10001bb30  ldrsw   x9, [x9, #0x63c]                         ; ivar offset ADRouletteView._speed (+0x90)
  10001bb34  str     w8, [x0, x9]                             ; self->_speed = arg1
  10001bb38  ret

; ======================================================================
; -[ADRouletteView revert]
; address 0x10001bb3c  size 20  kind objc
; ======================================================================
  10001bb3c  adrp    x8, #0x10041f000
  10001bb40  ldrsw   x8, [x8, #0x640]                         ; ivar offset ADRouletteView._revert (+0x8c)
  10001bb44  ldrb    w8, [x0, x8]                             ; w8 = self->_revert
  10001bb48  and     w0, w8, #1
  10001bb4c  ret

; ======================================================================
; -[ADRouletteView setRevert:]
; address 0x10001bb50  size 16  kind objc
; ======================================================================
  10001bb50  adrp    x8, #0x10041f000
  10001bb54  ldrsw   x8, [x8, #0x640]                         ; ivar offset ADRouletteView._revert (+0x8c)
  10001bb58  strb    w2, [x0, x8]                             ; self->_revert = arg1
  10001bb5c  ret

; ======================================================================
; -[ADRouletteView scenarioViewController]
; address 0x10001bb60  size 32  kind objc
; ======================================================================
  10001bb60  stp     x29, x30, [sp, #-0x10]!
  10001bb64  mov     x29, sp
  10001bb68  adrp    x8, #0x10041f000
  10001bb6c  ldrsw   x8, [x8, #0x644]                         ; ivar offset ADRouletteView._scenarioViewController (+0x98)
  10001bb70  add     x0, x0, x8
  10001bb74  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10001bb78  ldp     x29, x30, [sp], #0x10
  10001bb7c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADRouletteView setScenarioViewController:]
; address 0x10001bb80  size 20  kind objc
; ======================================================================
  10001bb80  adrp    x8, #0x10041f000
  10001bb84  ldrsw   x8, [x8, #0x644]                         ; ivar offset ADRouletteView._scenarioViewController (+0x98)
  10001bb88  add     x0, x0, x8
  10001bb8c  mov     x1, x2
  10001bb90  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADRouletteView .cxx_destruct]
; address 0x10001bb94  size 80  kind objc
; ======================================================================
  10001bb94  stp     x20, x19, [sp, #-0x20]!
  10001bb98  stp     x29, x30, [sp, #0x10]
  10001bb9c  add     x29, sp, #0x10
  10001bba0  mov     x19, x0
  10001bba4  adrp    x8, #0x10041f000
  10001bba8  ldrsw   x8, [x8, #0x644]                         ; ivar offset ADRouletteView._scenarioViewController (+0x98)
  10001bbac  add     x0, x19, x8
  10001bbb0  bl      _objc_destroyWeak
  10001bbb4  adrp    x8, #0x10041f000
  10001bbb8  ldrsw   x8, [x8, #0x62c]                         ; ivar offset ADRouletteView.rouletteItems (+0x78)
  10001bbbc  add     x0, x19, x8
  10001bbc0  mov     x1, #0
  10001bbc4  bl      _objc_storeStrong
  10001bbc8  mov     x1, #0
  10001bbcc  adrp    x8, #0x10041f000
  10001bbd0  ldrsw   x8, [x8, #0x624]                         ; ivar offset ADRouletteView.rouletteTimer (+0x70)
  10001bbd4  add     x0, x19, x8
  10001bbd8  ldp     x29, x30, [sp, #0x10]
  10001bbdc  ldp     x20, x19, [sp], #0x20
  10001bbe0  b       _objc_storeStrong
