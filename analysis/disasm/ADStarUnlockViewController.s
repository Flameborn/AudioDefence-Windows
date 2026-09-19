// unit ADStarUnlockViewController — 33 functions
//   0x1000bdcfc     276  -[ADStarUnlockViewController initWithtype:dictionary:challenge_id:orientation:]
//   0x1000bde10     920  -[ADStarUnlockViewController loadView]
//   0x1000be1a8     520  -[ADStarUnlockViewController setUpOutlets]
//   0x1000be3b0     228  -[ADStarUnlockViewController viewDidLoad]
//   0x1000be494    1392  -[ADStarUnlockViewController initStarContent]
//   0x1000bea04     348  -[ADStarUnlockViewController setRewardToCompleted]
//   0x1000beb60     264  -[ADStarUnlockViewController unlockStar]
//   0x1000bec68     300  -[ADStarUnlockViewController glow]
//   0x1000bed94     100  -[ADStarUnlockViewController glow]_block_invoke
//   0x1000bedf8       8  sub_1000bedf8
//   0x1000bee00       8  sub_1000bee00
//   0x1000bee08     100  -[ADStarUnlockViewController glow]_block_invoke_2
//   0x1000bee6c       8  sub_1000bee6c
//   0x1000bee74       8  sub_1000bee74
//   0x1000bee7c     412  -[ADStarUnlockViewController showReward]
//   0x1000bf018     124  -[ADStarUnlockViewController rewardValue]
//   0x1000bf094     224  -[ADStarUnlockViewController timeStringFromSeconds:]
//   0x1000bf174      60  -[ADStarUnlockViewController didReceiveMemoryWarning]
//   0x1000bf1b0      16  -[ADStarUnlockViewController starDescription]
//   0x1000bf1c0      56  -[ADStarUnlockViewController setStarDescription:]
//   0x1000bf1f8      16  -[ADStarUnlockViewController starImage]
//   0x1000bf208      56  -[ADStarUnlockViewController setStarImage:]
//   0x1000bf240      16  -[ADStarUnlockViewController lockedDescription]
//   0x1000bf250      56  -[ADStarUnlockViewController setLockedDescription:]
//   0x1000bf288      16  -[ADStarUnlockViewController blurImage]
//   0x1000bf298      56  -[ADStarUnlockViewController setBlurImage:]
//   0x1000bf2d0      16  -[ADStarUnlockViewController rewardLabel]
//   0x1000bf2e0      56  -[ADStarUnlockViewController setRewardLabel:]
//   0x1000bf318      16  -[ADStarUnlockViewController coinsImage]
//   0x1000bf328      56  -[ADStarUnlockViewController setCoinsImage:]
//   0x1000bf360      16  -[ADStarUnlockViewController completedImage]
//   0x1000bf370      56  -[ADStarUnlockViewController setCompletedImage:]
//   0x1000bf3a8     204  -[ADStarUnlockViewController .cxx_destruct]

; ======================================================================
; -[ADStarUnlockViewController initWithtype:dictionary:challenge_id:orientation:]
; address 0x1000bdcfc  size 276  kind objc
; ======================================================================
  1000bdcfc  stp     x24, x23, [sp, #-0x40]!
  1000bdd00  stp     x22, x21, [sp, #0x10]
  1000bdd04  stp     x20, x19, [sp, #0x20]
  1000bdd08  stp     x29, x30, [sp, #0x30]
  1000bdd0c  add     x29, sp, #0x30
  1000bdd10  sub     sp, sp, #0x10
  1000bdd14  mov     x20, x5
  1000bdd18  mov     x22, x4
  1000bdd1c  mov     x21, x2
  1000bdd20  mov     x23, x0
  1000bdd24  mov     x0, x3
  1000bdd28  bl      _objc_retain
  1000bdd2c  mov     x19, x0
  1000bdd30  mov     x0, x22
  1000bdd34  bl      _objc_retain
  1000bdd38  mov     x22, x0
  1000bdd3c  str     x23, [sp]
  1000bdd40  adrp    x8, #0x10041e000
  1000bdd44  ldr     x8, [x8, #0xf88]
  1000bdd48  str     x8, [sp, #8]
  1000bdd4c  adrp    x8, #0x100416000
  1000bdd50  nop
  1000bdd54  ldr     x1, [x8, #0xb40]
  1000bdd58  mov     x0, sp
  1000bdd5c  mov     x2, #0
  1000bdd60  mov     x3, #0
  1000bdd64  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000bdd68  mov     x23, x0
  1000bdd6c  cbz     x23, loc_1000bddc8                       ; if (self == 0)
  1000bdd70  adrp    x8, #0x100420000
  1000bdd74  ldrsw   x24, [x8, #0x300]                        ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000bdd78  mov     x0, x19
  1000bdd7c  bl      _objc_retain
  1000bdd80  ldr     x8, [x23, x24]                           ; x8 = self->starDictionary
  1000bdd84  str     x0, [x23, x24]                           ; self->starDictionary = arg2
  1000bdd88  mov     x0, x8
  1000bdd8c  bl      _objc_release
  1000bdd90  adrp    x8, #0x100420000
  1000bdd94  ldrsw   x24, [x8, #0x304]                        ; ivar offset ADStarUnlockViewController.challenge_id (+0x150)
  1000bdd98  mov     x0, x22
  1000bdd9c  bl      _objc_retain
  1000bdda0  ldr     x8, [x23, x24]                           ; x8 = self->challenge_id
  1000bdda4  str     x0, [x23, x24]                           ; self->challenge_id = arg3
  1000bdda8  mov     x0, x8
  1000bddac  bl      _objc_release
  1000bddb0  adrp    x8, #0x100420000
  1000bddb4  ldrsw   x8, [x8, #0x308]                         ; ivar offset ADStarUnlockViewController.type (+0x148)
  1000bddb8  str     w21, [x23, x8]                           ; self->type = arg1
  1000bddbc  adrp    x8, #0x100420000
  1000bddc0  ldrsw   x8, [x8, #0x30c]                         ; ivar offset ADStarUnlockViewController.horzVert (+0x158)
  1000bddc4  str     x20, [x23, x8]                           ; self->horzVert = arg4
loc_1000bddc8:
  1000bddc8  mov     x0, x22
  1000bddcc  bl      _objc_release
  1000bddd0  mov     x0, x19
  1000bddd4  bl      _objc_release
  1000bddd8  mov     x0, x23
  1000bdddc  sub     sp, x29, #0x30
  1000bdde0  ldp     x29, x30, [sp, #0x30]
  1000bdde4  ldp     x20, x19, [sp, #0x20]
  1000bdde8  ldp     x22, x21, [sp, #0x10]
  1000bddec  ldp     x24, x23, [sp], #0x40
  1000bddf0  ret
  1000bddf4  mov     x20, x0
  1000bddf8  mov     x0, x22
  1000bddfc  bl      _objc_release
  1000bde00  mov     x0, x19
  1000bde04  bl      _objc_release
  1000bde08  mov     x0, x20
  1000bde0c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController loadView]
; address 0x1000bde10  size 920  kind objc
; ======================================================================
  1000bde10  stp     x28, x27, [sp, #-0x60]!
  1000bde14  stp     x26, x25, [sp, #0x10]
  1000bde18  stp     x24, x23, [sp, #0x20]
  1000bde1c  stp     x22, x21, [sp, #0x30]
  1000bde20  stp     x20, x19, [sp, #0x40]
  1000bde24  stp     x29, x30, [sp, #0x50]
  1000bde28  add     x29, sp, #0x50
  1000bde2c  sub     sp, sp, #0x190
  1000bde30  mov     x19, x0
  1000bde34  adrp    x26, #0x1003b0000
  1000bde38  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000bde3c  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000bde40  stur    x26, [x29, #-0x58]
  1000bde44  adrp    x8, #0x10041d000
  1000bde48  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000bde4c  adrp    x8, #0x100416000
  1000bde50  nop
  1000bde54  ldr     x1, [x8, #0xc00]
  1000bde58  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000bde5c  mov     x29, x29
  1000bde60  bl      _objc_retainAutoreleasedReturnValue
  1000bde64  mov     x20, x0
  1000bde68  adrp    x8, #0x100416000
  1000bde6c  nop
  1000bde70  ldr     x1, [x8, #0xd18]
  1000bde74  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000bde78  mov     x21, x0
  1000bde7c  mov     x0, x20
  1000bde80  bl      _objc_release
  1000bde84  adrp    x8, #0x10041d000
  1000bde88  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000bde8c  adrp    x8, #0x100416000
  1000bde90  add     x8, x8, #0xb58                           ; &@selector(mainBundle)
  1000bde94  ldr     x1, [x8]
  1000bde98  cbz     w21, loc_1000bdfd8                       ; if ([[ADGameParameters sharedParameters] isIphone] == 0)
  1000bde9c  mov     x20, #0
  1000bdea0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000bdea4  mov     x29, x29
  1000bdea8  bl      _objc_retainAutoreleasedReturnValue
  1000bdeac  mov     x21, x0
  1000bdeb0  adrp    x8, #0x100418000
  1000bdeb4  nop
  1000bdeb8  ldr     x1, [x8, #0x9f8]
  1000bdebc  mov     x4, #0
  1000bdec0  adrp    x2, #0x1003c1000
  1000bdec4  add     x2, x2, #0xd10                           ; @"ADStarUnlockViewController"
  1000bdec8  mov     x3, x19
  1000bdecc  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0]
  1000bded0  mov     x29, x29
  1000bded4  bl      _objc_retainAutoreleasedReturnValue
  1000bded8  mov     x20, x0
  1000bdedc  mov     x0, x21
  1000bdee0  bl      _objc_release
  1000bdee4  adrp    x8, #0x100420000
  1000bdee8  ldrsw   x8, [x8, #0x30c]                         ; ivar offset ADStarUnlockViewController.horzVert (+0x158)
  1000bdeec  ldr     x8, [x19, x8]                            ; x8 = self->horzVert
  1000bdef0  cbnz    x8, loc_1000be028                        ; if (self->horzVert != 0)
  1000bdef4  stp     xzr, xzr, [sp, #0x78]
  1000bdef8  stp     xzr, xzr, [sp, #0x68]
  1000bdefc  stp     xzr, xzr, [sp, #0x58]
  1000bdf00  stp     xzr, xzr, [sp, #0x48]
  1000bdf04  mov     x0, x20
  1000bdf08  bl      _objc_retain
  1000bdf0c  mov     x20, x0
  1000bdf10  adrp    x8, #0x100416000
  1000bdf14  nop
  1000bdf18  ldr     x21, [x8, #0xe00]
  1000bdf1c  add     x2, sp, #0x48
  1000bdf20  sub     x3, x29, #0xd8
  1000bdf24  mov     w4, #0x10
  1000bdf28  mov     x1, x21
  1000bdf2c  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16]
  1000bdf30  mov     x22, x0
  1000bdf34  cbz     x22, loc_1000bdfcc                       ; if ([[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16] == 0)
  1000bdf38  ldr     x8, [sp, #0x58]
  1000bdf3c  ldr     x27, [x8]
  1000bdf40  adrp    x8, #0x100417000
  1000bdf44  nop
  1000bdf48  ldr     x23, [x8, #0x6b0]
  1000bdf4c  adrp    x8, #0x100419000
  1000bdf50  add     x8, x8, #0x798                           ; &@selector(setView:)
  1000bdf54  ldr     x24, [x8]
loc_1000bdf58:
  1000bdf58  mov     x28, #0
loc_1000bdf5c:
  1000bdf5c  ldr     x8, [sp, #0x58]
  1000bdf60  ldr     x8, [x8]
  1000bdf64  cmp     x8, x27
  1000bdf68  b.eq    loc_1000bdf74                            ; if (x8 == x27)
  1000bdf6c  mov     x0, x20
  1000bdf70  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0])
loc_1000bdf74:
  1000bdf74  ldr     x8, [sp, #0x50]
  1000bdf78  ldr     x25, [x8, x28, lsl #3]
  1000bdf7c  mov     x0, x25
  1000bdf80  mov     x1, x23
  1000bdf84  bl      _objc_msgSend                            ; [x0 tag]
  1000bdf88  cmp     x0, #0xadd
  1000bdf8c  b.ne    loc_1000bdfa0                            ; if ([x0 tag] != 2781)
  1000bdf90  mov     x0, x19
  1000bdf94  mov     x1, x24
  1000bdf98  mov     x2, x25
  1000bdf9c  bl      _objc_msgSend                            ; [self setView:x2]
loc_1000bdfa0:
  1000bdfa0  add     x28, x28, #1
  1000bdfa4  cmp     x28, x22
  1000bdfa8  b.lo    loc_1000bdf5c                            ; if ((x28 + 1) <u [[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp…)
  1000bdfac  add     x2, sp, #0x48
  1000bdfb0  sub     x3, x29, #0xd8
  1000bdfb4  mov     w4, #0x10
  1000bdfb8  mov     x0, x20
  1000bdfbc  mov     x1, x21
  1000bdfc0  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16]
  1000bdfc4  mov     x22, x0
  1000bdfc8  cbnz    x22, loc_1000bdf58                       ; if ([[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16] != 0)
loc_1000bdfcc:
  1000bdfcc  mov     x0, x20
  1000bdfd0  bl      _objc_release
  1000bdfd4  b       loc_1000be124
loc_1000bdfd8:
  1000bdfd8  mov     x20, #0
  1000bdfdc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000bdfe0  mov     x29, x29
  1000bdfe4  bl      _objc_retainAutoreleasedReturnValue
  1000bdfe8  mov     x20, x0
  1000bdfec  adrp    x8, #0x100418000
  1000bdff0  nop
  1000bdff4  ldr     x1, [x8, #0x9f8]
  1000bdff8  mov     x4, #0
  1000bdffc  adrp    x2, #0x1003c1000
  1000be000  add     x2, x2, #0xd30                           ; @"ADStarUnlockViewController_iPad"
  1000be004  mov     x3, x19
  1000be008  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController_iPad" owner:self options:0]
  1000be00c  mov     x29, x29
  1000be010  bl      _objc_retainAutoreleasedReturnValue
  1000be014  bl      _objc_release
  1000be018  mov     x0, x20
  1000be01c  bl      _objc_release
  1000be020  mov     x20, #0
  1000be024  b       loc_1000be124
loc_1000be028:
  1000be028  cmp     x8, #1
  1000be02c  b.ne    loc_1000be124                            ; if (self->horzVert != 1)
  1000be030  stp     xzr, xzr, [sp, #0x38]
  1000be034  stp     xzr, xzr, [sp, #0x28]
  1000be038  stp     xzr, xzr, [sp, #0x18]
  1000be03c  stp     xzr, xzr, [sp, #8]
  1000be040  mov     x0, x20
  1000be044  bl      _objc_retain
  1000be048  mov     x20, x0
  1000be04c  adrp    x8, #0x100416000
  1000be050  nop
  1000be054  ldr     x21, [x8, #0xe00]
  1000be058  add     x2, sp, #8
  1000be05c  add     x3, sp, #0x88
  1000be060  mov     w4, #0x10
  1000be064  mov     x1, x21
  1000be068  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000be06c  mov     x22, x0
  1000be070  cbz     x22, loc_1000be108                       ; if ([[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] == 0)
  1000be074  ldr     x8, [sp, #0x18]
  1000be078  ldr     x27, [x8]
  1000be07c  adrp    x8, #0x100417000
  1000be080  nop
  1000be084  ldr     x23, [x8, #0x6b0]
  1000be088  adrp    x8, #0x100419000
  1000be08c  add     x8, x8, #0x798                           ; &@selector(setView:)
  1000be090  ldr     x24, [x8]
loc_1000be094:
  1000be094  mov     x28, #0
loc_1000be098:
  1000be098  ldr     x8, [sp, #0x18]
  1000be09c  ldr     x8, [x8]
  1000be0a0  cmp     x8, x27
  1000be0a4  b.eq    loc_1000be0b0                            ; if (x8 == x27)
  1000be0a8  mov     x0, x20
  1000be0ac  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0])
loc_1000be0b0:
  1000be0b0  ldr     x8, [sp, #0x10]
  1000be0b4  ldr     x25, [x8, x28, lsl #3]
  1000be0b8  mov     x0, x25
  1000be0bc  mov     x1, x23
  1000be0c0  bl      _objc_msgSend                            ; [x0 tag]
  1000be0c4  cmp     x0, #0xade
  1000be0c8  b.ne    loc_1000be0dc                            ; if ([x0 tag] != 2782)
  1000be0cc  mov     x0, x19
  1000be0d0  mov     x1, x24
  1000be0d4  mov     x2, x25
  1000be0d8  bl      _objc_msgSend                            ; [self setView:x2]
loc_1000be0dc:
  1000be0dc  add     x28, x28, #1
  1000be0e0  cmp     x28, x22
  1000be0e4  b.lo    loc_1000be098                            ; if ((x28 + 1) <u [[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp…)
  1000be0e8  add     x2, sp, #8
  1000be0ec  add     x3, sp, #0x88
  1000be0f0  mov     w4, #0x10
  1000be0f4  mov     x0, x20
  1000be0f8  mov     x1, x21
  1000be0fc  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000be100  mov     x22, x0
  1000be104  cbnz    x22, loc_1000be094                       ; if ([[[NSBundle mainBundle] loadNibNamed:@"ADStarUnlockViewController" owner:self options:0] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] != 0)
loc_1000be108:
  1000be108  mov     x0, x20
  1000be10c  bl      _objc_release
  1000be110  adrp    x8, #0x10041a000
  1000be114  nop
  1000be118  ldr     x1, [x8, #0x978]
  1000be11c  mov     x0, x19
  1000be120  bl      _objc_msgSend                            ; [self setUpOutlets]
loc_1000be124:
  1000be124  mov     x0, x20
  1000be128  bl      _objc_release
  1000be12c  ldur    x8, [x29, #-0x58]
  1000be130  sub     x8, x26, x8
  1000be134  cbnz    x8, loc_1000be158                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000be138  sub     sp, x29, #0x50
  1000be13c  ldp     x29, x30, [sp, #0x50]
  1000be140  ldp     x20, x19, [sp, #0x40]
  1000be144  ldp     x22, x21, [sp, #0x30]
  1000be148  ldp     x24, x23, [sp, #0x20]
  1000be14c  ldp     x26, x25, [sp, #0x10]
  1000be150  ldp     x28, x27, [sp], #0x60
  1000be154  ret
loc_1000be158:
  1000be158  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000be15c  b       loc_1000be160
loc_1000be160:
  1000be160  mov     x19, x0
  1000be164  mov     x0, x20
  1000be168  bl      _objc_release
loc_1000be16c:
  1000be16c  mov     x0, x20
loc_1000be170:
  1000be170  bl      _objc_release
  1000be174  mov     x0, x19
  1000be178  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000be17c  b       loc_1000be160
  1000be180  b       loc_1000be160
  1000be184  b       loc_1000be198
  1000be188  b       loc_1000be198
  1000be18c  mov     x19, x0
  1000be190  mov     x0, x21
  1000be194  b       loc_1000be170
loc_1000be198:
  1000be198  mov     x19, x0
  1000be19c  b       loc_1000be16c
  1000be1a0  b       loc_1000be160
  1000be1a4  b       loc_1000be160

; ======================================================================
; -[ADStarUnlockViewController setUpOutlets]
; address 0x1000be1a8  size 520  kind objc
; ======================================================================
  1000be1a8  stp     x24, x23, [sp, #-0x40]!
  1000be1ac  stp     x22, x21, [sp, #0x10]
  1000be1b0  stp     x20, x19, [sp, #0x20]
  1000be1b4  stp     x29, x30, [sp, #0x30]
  1000be1b8  add     x29, sp, #0x30
  1000be1bc  mov     x19, x0
  1000be1c0  adrp    x8, #0x100416000
  1000be1c4  nop
  1000be1c8  ldr     x21, [x8, #0xf18]
  1000be1cc  mov     x1, x21
  1000be1d0  bl      _objc_msgSend                            ; [self view]
  1000be1d4  mov     x29, x29
  1000be1d8  bl      _objc_retainAutoreleasedReturnValue
  1000be1dc  mov     x23, x0
  1000be1e0  adrp    x8, #0x100417000
  1000be1e4  nop
  1000be1e8  ldr     x20, [x8, #0xd08]
  1000be1ec  mov     w2, #1
  1000be1f0  mov     x1, x20
  1000be1f4  bl      _objc_msgSend                            ; [[self view] viewWithTag:1]
  1000be1f8  mov     x29, x29
  1000be1fc  bl      _objc_retainAutoreleasedReturnValue
  1000be200  mov     x24, x0
  1000be204  adrp    x8, #0x100418000
  1000be208  nop
  1000be20c  ldr     x22, [x8, #0xdc0]
  1000be210  adrp    x3, #0x1003c1000
  1000be214  add     x3, x3, #0xd50                           ; @"rewardLabel"
  1000be218  mov     x0, x19
  1000be21c  mov     x1, x22
  1000be220  mov     x2, x24
  1000be224  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:1] forKeyPath:@"rewardLabel"]
  1000be228  mov     x0, x24
  1000be22c  bl      _objc_release
  1000be230  mov     x0, x23
  1000be234  bl      _objc_release
  1000be238  mov     x0, x19
  1000be23c  mov     x1, x21
  1000be240  bl      _objc_msgSend                            ; [self view]
  1000be244  mov     x29, x29
  1000be248  bl      _objc_retainAutoreleasedReturnValue
  1000be24c  mov     x23, x0
  1000be250  mov     w2, #2
  1000be254  mov     x1, x20
  1000be258  bl      _objc_msgSend                            ; [[self view] viewWithTag:2]
  1000be25c  mov     x29, x29
  1000be260  bl      _objc_retainAutoreleasedReturnValue
  1000be264  mov     x24, x0
  1000be268  adrp    x3, #0x1003c1000
  1000be26c  add     x3, x3, #0xd70                           ; @"lockedDescription"
  1000be270  mov     x0, x19
  1000be274  mov     x1, x22
  1000be278  mov     x2, x24
  1000be27c  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:2] forKeyPath:@"lockedDescription"]
  1000be280  mov     x0, x24
  1000be284  bl      _objc_release
  1000be288  mov     x0, x23
  1000be28c  bl      _objc_release
  1000be290  mov     x0, x19
  1000be294  mov     x1, x21
  1000be298  bl      _objc_msgSend                            ; [self view]
  1000be29c  mov     x29, x29
  1000be2a0  bl      _objc_retainAutoreleasedReturnValue
  1000be2a4  mov     x23, x0
  1000be2a8  mov     w2, #3
  1000be2ac  mov     x1, x20
  1000be2b0  bl      _objc_msgSend                            ; [[self view] viewWithTag:3]
  1000be2b4  mov     x29, x29
  1000be2b8  bl      _objc_retainAutoreleasedReturnValue
  1000be2bc  mov     x24, x0
  1000be2c0  adrp    x3, #0x1003c1000
  1000be2c4  add     x3, x3, #0xd90                           ; @"starImage"
  1000be2c8  mov     x0, x19
  1000be2cc  mov     x1, x22
  1000be2d0  mov     x2, x24
  1000be2d4  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:3] forKeyPath:@"starImage"]
  1000be2d8  mov     x0, x24
  1000be2dc  bl      _objc_release
  1000be2e0  mov     x0, x23
  1000be2e4  bl      _objc_release
  1000be2e8  mov     x0, x19
  1000be2ec  mov     x1, x21
  1000be2f0  bl      _objc_msgSend                            ; [self view]
  1000be2f4  mov     x29, x29
  1000be2f8  bl      _objc_retainAutoreleasedReturnValue
  1000be2fc  mov     x21, x0
  1000be300  mov     w2, #4
  1000be304  mov     x1, x20
  1000be308  bl      _objc_msgSend                            ; [[self view] viewWithTag:4]
  1000be30c  mov     x29, x29
  1000be310  bl      _objc_retainAutoreleasedReturnValue
  1000be314  mov     x20, x0
  1000be318  adrp    x8, #0x100418000
  1000be31c  nop
  1000be320  ldr     x1, [x8, #0x318]
  1000be324  adrp    x3, #0x1003c1000
  1000be328  add     x3, x3, #0xdb0                           ; @"completedImage"
  1000be32c  mov     x0, x19
  1000be330  mov     x2, x20
  1000be334  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:4] forKey:@"completedImage"]
  1000be338  mov     x0, x20
  1000be33c  bl      _objc_release
  1000be340  mov     x0, x21
  1000be344  ldp     x29, x30, [sp, #0x30]
  1000be348  ldp     x20, x19, [sp, #0x20]
  1000be34c  ldp     x22, x21, [sp, #0x10]
  1000be350  ldp     x24, x23, [sp], #0x40
  1000be354  b       _objc_release
  1000be358  mov     x19, x0
  1000be35c  b       loc_1000be384
  1000be360  b       loc_1000be378
  1000be364  mov     x19, x0
  1000be368  b       loc_1000be384
  1000be36c  b       loc_1000be378
  1000be370  mov     x19, x0
  1000be374  b       loc_1000be384
loc_1000be378:
  1000be378  mov     x19, x0
  1000be37c  mov     x0, x24
  1000be380  bl      _objc_release
loc_1000be384:
  1000be384  mov     x0, x23
  1000be388  b       loc_1000be3a4
  1000be38c  mov     x19, x0
  1000be390  b       loc_1000be3a0
  1000be394  mov     x19, x0
  1000be398  mov     x0, x20
  1000be39c  bl      _objc_release
loc_1000be3a0:
  1000be3a0  mov     x0, x21
loc_1000be3a4:
  1000be3a4  bl      _objc_release
  1000be3a8  mov     x0, x19
  1000be3ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController viewDidLoad]
; address 0x1000be3b0  size 228  kind objc
; ======================================================================
  1000be3b0  stp     x20, x19, [sp, #-0x20]!
  1000be3b4  stp     x29, x30, [sp, #0x10]
  1000be3b8  add     x29, sp, #0x10
  1000be3bc  sub     sp, sp, #0x10
  1000be3c0  mov     x19, x0
  1000be3c4  str     x19, [sp]
  1000be3c8  adrp    x8, #0x10041e000
  1000be3cc  ldr     x8, [x8, #0xf88]
  1000be3d0  str     x8, [sp, #8]
  1000be3d4  adrp    x8, #0x100416000
  1000be3d8  nop
  1000be3dc  ldr     x1, [x8, #0xb48]
  1000be3e0  mov     x0, sp
  1000be3e4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000be3e8  adrp    x8, #0x10041a000
  1000be3ec  nop
  1000be3f0  ldr     x1, [x8, #0x980]
  1000be3f4  mov     x0, x19
  1000be3f8  bl      _objc_msgSend                            ; [self lockedDescription]
  1000be3fc  mov     x29, x29
  1000be400  bl      _objc_retainAutoreleasedReturnValue
  1000be404  mov     x20, x0
  1000be408  adrp    x8, #0x100416000
  1000be40c  nop
  1000be410  ldr     x1, [x8, #0xeb8]
  1000be414  bl      _objc_msgSend                            ; [[self lockedDescription] setupAsInfo]
  1000be418  mov     x0, x20
  1000be41c  bl      _objc_release
  1000be420  adrp    x8, #0x100418000
  1000be424  nop
  1000be428  ldr     x1, [x8, #0x678]
  1000be42c  mov     x0, x19
  1000be430  bl      _objc_msgSend                            ; [self rewardLabel]
  1000be434  mov     x29, x29
  1000be438  bl      _objc_retainAutoreleasedReturnValue
  1000be43c  mov     x20, x0
  1000be440  adrp    x8, #0x100416000
  1000be444  nop
  1000be448  ldr     x1, [x8, #0xba0]
  1000be44c  bl      _objc_msgSend                            ; [[self rewardLabel] setupAsMain]
  1000be450  mov     x0, x20
  1000be454  bl      _objc_release
  1000be458  adrp    x8, #0x10041a000
  1000be45c  nop
  1000be460  ldr     x1, [x8, #0x988]
  1000be464  mov     x0, x19
  1000be468  bl      _objc_msgSend                            ; [self initStarContent]
  1000be46c  sub     sp, x29, #0x10
  1000be470  ldp     x29, x30, [sp, #0x10]
  1000be474  ldp     x20, x19, [sp], #0x20
  1000be478  ret
  1000be47c  b       loc_1000be480
loc_1000be480:
  1000be480  mov     x19, x0
  1000be484  mov     x0, x20
  1000be488  bl      _objc_release
  1000be48c  mov     x0, x19
  1000be490  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController initStarContent]
; address 0x1000be494  size 1392  kind objc
; ======================================================================
  1000be494  stp     x26, x25, [sp, #-0x50]!
  1000be498  stp     x24, x23, [sp, #0x10]
  1000be49c  stp     x22, x21, [sp, #0x20]
  1000be4a0  stp     x20, x19, [sp, #0x30]
  1000be4a4  stp     x29, x30, [sp, #0x40]
  1000be4a8  add     x29, sp, #0x40
  1000be4ac  sub     sp, sp, #0x10
  1000be4b0  mov     x19, x0
  1000be4b4  adrp    x8, #0x100418000
  1000be4b8  nop
  1000be4bc  ldr     x1, [x8, #0x678]
  1000be4c0  bl      _objc_msgSend                            ; [self rewardLabel]
  1000be4c4  mov     x29, x29
  1000be4c8  bl      _objc_retainAutoreleasedReturnValue
  1000be4cc  mov     x21, x0
  1000be4d0  adrp    x8, #0x100416000
  1000be4d4  nop
  1000be4d8  ldr     x20, [x8, #0xba8]
  1000be4dc  mov     w2, #0
  1000be4e0  mov     x1, x20
  1000be4e4  bl      _objc_msgSend                            ; [[self rewardLabel] setHidden:0]
  1000be4e8  mov     x0, x21
  1000be4ec  bl      _objc_release
  1000be4f0  adrp    x8, #0x100418000
  1000be4f4  nop
  1000be4f8  ldr     x21, [x8, #0x688]
  1000be4fc  mov     x0, x19
  1000be500  mov     x1, x21
  1000be504  bl      _objc_msgSend                            ; [self starImage]
  1000be508  mov     x29, x29
  1000be50c  bl      _objc_retainAutoreleasedReturnValue
  1000be510  mov     x22, x0
  1000be514  mov     w2, #1
  1000be518  mov     x1, x20
  1000be51c  bl      _objc_msgSend                            ; [[self starImage] setHidden:1]
  1000be520  mov     x0, x22
  1000be524  bl      _objc_release
  1000be528  adrp    x8, #0x10041a000
  1000be52c  nop
  1000be530  ldr     x22, [x8, #0x990]
  1000be534  mov     x0, x19
  1000be538  mov     x1, x22
  1000be53c  bl      _objc_msgSend                            ; [self completedImage]
  1000be540  mov     x29, x29
  1000be544  bl      _objc_retainAutoreleasedReturnValue
  1000be548  mov     x23, x0
  1000be54c  mov     w2, #1
  1000be550  mov     x1, x20
  1000be554  bl      _objc_msgSend                            ; [[self completedImage] setHidden:1]
  1000be558  mov     x0, x23
  1000be55c  bl      _objc_release
  1000be560  mov     x0, x19
  1000be564  mov     x1, x22
  1000be568  bl      _objc_msgSend                            ; [self completedImage]
  1000be56c  mov     x29, x29
  1000be570  bl      _objc_retainAutoreleasedReturnValue
  1000be574  mov     x22, x0
  1000be578  adrp    x8, #0x100417000
  1000be57c  nop
  1000be580  ldr     x1, [x8, #0x828]
  1000be584  movi    v0.16b, #0
  1000be588  bl      _objc_msgSend                            ; [[self completedImage] setAlpha:0]
  1000be58c  mov     x0, x22
  1000be590  bl      _objc_release
  1000be594  adrp    x8, #0x100420000
  1000be598  ldrsw   x8, [x8, #0x308]                         ; ivar offset ADStarUnlockViewController.type (+0x148)
  1000be59c  ldr     w8, [x19, x8]                            ; w8 = self->type
  1000be5a0  cmp     w8, #1
  1000be5a4  b.eq    loc_1000be71c                            ; if (self->type == 1)
  1000be5a8  cmp     w8, #2
  1000be5ac  b.ne    loc_1000be7d8                            ; if (self->type != 2)
  1000be5b0  adrp    x8, #0x10041a000
  1000be5b4  nop
  1000be5b8  ldr     x1, [x8, #0x980]
  1000be5bc  mov     x0, x19
  1000be5c0  bl      _objc_msgSend                            ; [self lockedDescription]
  1000be5c4  mov     x29, x29
  1000be5c8  bl      _objc_retainAutoreleasedReturnValue
  1000be5cc  mov     x22, x0
  1000be5d0  adrp    x8, #0x10041d000
  1000be5d4  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000be5d8  adrp    x8, #0x100420000
  1000be5dc  ldrsw   x8, [x8, #0x300]                         ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000be5e0  ldr     x0, [x19, x8]                            ; x0 = self->starDictionary
  1000be5e4  adrp    x8, #0x100417000
  1000be5e8  nop
  1000be5ec  ldr     x1, [x8, #0x40]
  1000be5f0  adrp    x2, #0x1003bc000
  1000be5f4  add     x2, x2, #0x990                           ; @"objective"
  1000be5f8  bl      _objc_msgSend                            ; [self->starDictionary objectForKey:@"objective"]
  1000be5fc  mov     x29, x29
  1000be600  bl      _objc_retainAutoreleasedReturnValue
  1000be604  mov     x23, x0
  1000be608  adrp    x8, #0x100417000
  1000be60c  nop
  1000be610  ldr     x1, [x8, #0xb0]
  1000be614  bl      _objc_msgSend                            ; [[self->starDictionary objectForKey:@"objective"] integerValue]
  1000be618  mov     x2, x0
  1000be61c  adrp    x8, #0x100418000
  1000be620  nop
  1000be624  ldr     x1, [x8, #0x7a8]
  1000be628  mov     x0, x19
  1000be62c  bl      _objc_msgSend                            ; [self timeStringFromSeconds:[[self->starDictionary objectForKey:@"objective"] integerValue]]
  1000be630  mov     x29, x29
  1000be634  bl      _objc_retainAutoreleasedReturnValue
  1000be638  mov     x25, x0
  1000be63c  adrp    x8, #0x100416000
  1000be640  nop
  1000be644  ldr     x1, [x8, #0xee8]
  1000be648  str     x25, [sp]
  1000be64c  adrp    x2, #0x1003c1000
  1000be650  add     x2, x2, #0xdf0                           ; @"TIME GOAL: %@"
  1000be654  mov     x0, x24
  1000be658  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"TIME GOAL: %@", [self timeStringFromSeconds:[[self->starDictionary objectForKey:@"objective"] in…]
  1000be65c  mov     x29, x29
  1000be660  bl      _objc_retainAutoreleasedReturnValue
  1000be664  mov     x24, x0
  1000be668  adrp    x8, #0x100416000
  1000be66c  nop
  1000be670  ldr     x1, [x8, #0xb68]
  1000be674  mov     x0, x22
  1000be678  mov     x2, x24
  1000be67c  bl      _objc_msgSend                            ; [[self lockedDescription] setText:[NSString stringWithFormat:@"TIME GOAL: %@", [self timeStringFromSeconds:[[self->starDictionary objectForKey:@"objective"] in…]]
  1000be680  mov     x0, x24
  1000be684  bl      _objc_release
  1000be688  mov     x0, x25
  1000be68c  bl      _objc_release
  1000be690  mov     x0, x23
  1000be694  bl      _objc_release
  1000be698  mov     x0, x22
  1000be69c  bl      _objc_release
  1000be6a0  adrp    x8, #0x10041d000
  1000be6a4  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000be6a8  adrp    x8, #0x100416000
  1000be6ac  nop
  1000be6b0  ldr     x1, [x8, #0xdf0]
  1000be6b4  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000be6b8  mov     x29, x29
  1000be6bc  bl      _objc_retainAutoreleasedReturnValue
  1000be6c0  mov     x22, x0
  1000be6c4  adrp    x8, #0x100420000
  1000be6c8  ldrsw   x8, [x8, #0x304]                         ; ivar offset ADStarUnlockViewController.challenge_id (+0x150)
  1000be6cc  ldr     x2, [x19, x8]                            ; x2 = self->challenge_id
  1000be6d0  adrp    x8, #0x100417000
  1000be6d4  nop
  1000be6d8  ldr     x1, [x8, #0xa10]
  1000be6dc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:self->challenge_id]
  1000be6e0  mov     x23, x0
  1000be6e4  mov     x0, x22
  1000be6e8  bl      _objc_release
  1000be6ec  cbnz    w23, loc_1000be8f4                       ; if ([[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:self->challenge_id] != 0)
  1000be6f0  mov     x0, x19
  1000be6f4  mov     x1, x21
  1000be6f8  bl      _objc_msgSend                            ; [self starImage]
  1000be6fc  mov     x29, x29
  1000be700  bl      _objc_retainAutoreleasedReturnValue
  1000be704  mov     x21, x0
  1000be708  mov     w2, #1
  1000be70c  mov     x1, x20
  1000be710  bl      _objc_msgSend                            ; [[self starImage] setHidden:1]
  1000be714  b       loc_1000be940
  1000be718  b       loc_1000be974
loc_1000be71c:
  1000be71c  adrp    x8, #0x10041a000
  1000be720  nop
  1000be724  ldr     x1, [x8, #0x980]
  1000be728  mov     x0, x19
  1000be72c  bl      _objc_msgSend                            ; [self lockedDescription]
  1000be730  mov     x29, x29
  1000be734  bl      _objc_retainAutoreleasedReturnValue
  1000be738  mov     x22, x0
  1000be73c  adrp    x8, #0x100416000
  1000be740  nop
  1000be744  ldr     x1, [x8, #0xb68]
  1000be748  adrp    x2, #0x1003c1000
  1000be74c  add     x2, x2, #0xe10                           ; @"SURVIVE!"
  1000be750  bl      _objc_msgSend                            ; [[self lockedDescription] setText:@"SURVIVE!"]
  1000be754  mov     x0, x22
  1000be758  bl      _objc_release
  1000be75c  adrp    x8, #0x10041d000
  1000be760  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000be764  adrp    x8, #0x100416000
  1000be768  nop
  1000be76c  ldr     x1, [x8, #0xdf0]
  1000be770  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000be774  mov     x29, x29
  1000be778  bl      _objc_retainAutoreleasedReturnValue
  1000be77c  mov     x22, x0
  1000be780  adrp    x8, #0x100420000
  1000be784  ldrsw   x8, [x8, #0x304]                         ; ivar offset ADStarUnlockViewController.challenge_id (+0x150)
  1000be788  ldr     x2, [x19, x8]                            ; x2 = self->challenge_id
  1000be78c  adrp    x8, #0x100416000
  1000be790  nop
  1000be794  ldr     x1, [x8, #0xdf8]
  1000be798  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:self->challenge_id]
  1000be79c  mov     x23, x0
  1000be7a0  mov     x0, x22
  1000be7a4  bl      _objc_release
  1000be7a8  cbnz    w23, loc_1000be8f4                       ; if ([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:self->challenge_id] != 0)
  1000be7ac  mov     x0, x19
  1000be7b0  mov     x1, x21
  1000be7b4  bl      _objc_msgSend                            ; [self starImage]
  1000be7b8  mov     x29, x29
  1000be7bc  bl      _objc_retainAutoreleasedReturnValue
  1000be7c0  mov     x21, x0
  1000be7c4  mov     w2, #1
  1000be7c8  mov     x1, x20
  1000be7cc  bl      _objc_msgSend                            ; [[self starImage] setHidden:1]
  1000be7d0  b       loc_1000be940
  1000be7d4  b       loc_1000be974
loc_1000be7d8:
  1000be7d8  cmp     w8, #3
  1000be7dc  b.ne    loc_1000be900                            ; if (self->type != 3)
  1000be7e0  adrp    x8, #0x10041a000
  1000be7e4  nop
  1000be7e8  ldr     x1, [x8, #0x980]
  1000be7ec  mov     x0, x19
  1000be7f0  bl      _objc_msgSend                            ; [self lockedDescription]
  1000be7f4  mov     x29, x29
  1000be7f8  bl      _objc_retainAutoreleasedReturnValue
  1000be7fc  mov     x22, x0
  1000be800  adrp    x8, #0x10041d000
  1000be804  ldr     x24, [x8, #0xf78]                        ; class NSString
  1000be808  adrp    x8, #0x100420000
  1000be80c  ldrsw   x8, [x8, #0x300]                         ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000be810  ldr     x0, [x19, x8]                            ; x0 = self->starDictionary
  1000be814  adrp    x8, #0x100417000
  1000be818  nop
  1000be81c  ldr     x1, [x8, #0x40]
  1000be820  adrp    x2, #0x1003bc000
  1000be824  add     x2, x2, #0x990                           ; @"objective"
  1000be828  bl      _objc_msgSend                            ; [self->starDictionary objectForKey:@"objective"]
  1000be82c  mov     x29, x29
  1000be830  bl      _objc_retainAutoreleasedReturnValue
  1000be834  mov     x23, x0
  1000be838  adrp    x8, #0x100417000
  1000be83c  nop
  1000be840  ldr     x1, [x8, #0xb0]
  1000be844  bl      _objc_msgSend                            ; [[self->starDictionary objectForKey:@"objective"] integerValue]
  1000be848  adrp    x8, #0x100416000
  1000be84c  nop
  1000be850  ldr     x1, [x8, #0xee8]
  1000be854  str     x0, [sp]
  1000be858  adrp    x2, #0x1003c1000
  1000be85c  add     x2, x2, #0xdd0                           ; @"ACCURACY GOAL: %i%%"
  1000be860  mov     x0, x24
  1000be864  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"ACCURACY GOAL: %i%%", [[self->starDictionary objectForKey:@"objective"] integerValue]]
  1000be868  mov     x29, x29
  1000be86c  bl      _objc_retainAutoreleasedReturnValue
  1000be870  mov     x24, x0
  1000be874  adrp    x8, #0x100416000
  1000be878  nop
  1000be87c  ldr     x1, [x8, #0xb68]
  1000be880  mov     x0, x22
  1000be884  mov     x2, x24
  1000be888  bl      _objc_msgSend                            ; [[self lockedDescription] setText:[NSString stringWithFormat:@"ACCURACY GOAL: %i%%", [[self->starDictionary objectForKey:@"objective"] integerValue]]]
  1000be88c  mov     x0, x24
  1000be890  bl      _objc_release
  1000be894  mov     x0, x23
  1000be898  bl      _objc_release
  1000be89c  mov     x0, x22
  1000be8a0  bl      _objc_release
  1000be8a4  adrp    x8, #0x10041d000
  1000be8a8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000be8ac  adrp    x8, #0x100416000
  1000be8b0  nop
  1000be8b4  ldr     x1, [x8, #0xdf0]
  1000be8b8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000be8bc  mov     x29, x29
  1000be8c0  bl      _objc_retainAutoreleasedReturnValue
  1000be8c4  mov     x22, x0
  1000be8c8  adrp    x8, #0x100420000
  1000be8cc  ldrsw   x8, [x8, #0x304]                         ; ivar offset ADStarUnlockViewController.challenge_id (+0x150)
  1000be8d0  ldr     x2, [x19, x8]                            ; x2 = self->challenge_id
  1000be8d4  adrp    x8, #0x100417000
  1000be8d8  nop
  1000be8dc  ldr     x1, [x8, #0xa08]
  1000be8e0  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:self->challenge_id]
  1000be8e4  mov     x23, x0
  1000be8e8  mov     x0, x22
  1000be8ec  bl      _objc_release
  1000be8f0  cbz     w23, loc_1000be91c                       ; if ([[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:self->challenge_id] == 0)
loc_1000be8f4:
  1000be8f4  adrp    x8, #0x100418000
  1000be8f8  add     x8, x8, #0xa50                           ; &@selector(unlockStar)
  1000be8fc  b       loc_1000be950
loc_1000be900:
  1000be900  sub     sp, x29, #0x40
  1000be904  ldp     x29, x30, [sp, #0x40]
  1000be908  ldp     x20, x19, [sp, #0x30]
  1000be90c  ldp     x22, x21, [sp, #0x20]
  1000be910  ldp     x24, x23, [sp, #0x10]
  1000be914  ldp     x26, x25, [sp], #0x50
  1000be918  ret
loc_1000be91c:
  1000be91c  mov     x0, x19
  1000be920  mov     x1, x21
  1000be924  bl      _objc_msgSend                            ; [self starImage]
  1000be928  mov     x29, x29
  1000be92c  bl      _objc_retainAutoreleasedReturnValue
  1000be930  mov     x21, x0
  1000be934  mov     w2, #1
  1000be938  mov     x1, x20
  1000be93c  bl      _objc_msgSend                            ; [[self starImage] setHidden:1]
loc_1000be940:
  1000be940  mov     x0, x21
  1000be944  bl      _objc_release
  1000be948  adrp    x8, #0x10041a000
  1000be94c  add     x8, x8, #0x998                           ; &@selector(showReward)
loc_1000be950:
  1000be950  ldr     x1, [x8]                                 ; x1 = one of selectors {showReward, unlockStar}
  1000be954  mov     x0, x19
  1000be958  sub     sp, x29, #0x40
  1000be95c  ldp     x29, x30, [sp, #0x40]
  1000be960  ldp     x20, x19, [sp, #0x30]
  1000be964  ldp     x22, x21, [sp, #0x20]
  1000be968  ldp     x24, x23, [sp, #0x10]
  1000be96c  ldp     x26, x25, [sp], #0x50
  1000be970  b       _objc_msgSend                            ; [self showReward | unlockStar]
loc_1000be974:
  1000be974  mov     x19, x0
  1000be978  mov     x0, x21
  1000be97c  b       loc_1000be9f4
  1000be980  b       loc_1000be9ec
  1000be984  mov     x19, x0
  1000be988  mov     x0, x23
  1000be98c  b       loc_1000be9f4
  1000be990  b       loc_1000be9ec
  1000be994  mov     x19, x0
  1000be998  b       loc_1000be9e0
  1000be99c  b       loc_1000be9ec
  1000be9a0  mov     x19, x0
  1000be9a4  b       loc_1000be9b4
  1000be9a8  mov     x19, x0
  1000be9ac  mov     x0, x24
  1000be9b0  bl      _objc_release
loc_1000be9b4:
  1000be9b4  mov     x0, x25
  1000be9b8  b       loc_1000be9dc
  1000be9bc  b       loc_1000be9ec
  1000be9c0  b       loc_1000be9ec
  1000be9c4  mov     x19, x0
  1000be9c8  b       loc_1000be9e0
  1000be9cc  b       loc_1000be9ec
  1000be9d0  b       loc_1000be9ec
  1000be9d4  mov     x19, x0
  1000be9d8  mov     x0, x24
loc_1000be9dc:
  1000be9dc  bl      _objc_release
loc_1000be9e0:
  1000be9e0  mov     x0, x23
  1000be9e4  bl      _objc_release
  1000be9e8  b       loc_1000be9f0
loc_1000be9ec:
  1000be9ec  mov     x19, x0
loc_1000be9f0:
  1000be9f0  mov     x0, x22
loc_1000be9f4:
  1000be9f4  bl      _objc_release
  1000be9f8  mov     x0, x19
  1000be9fc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000bea00  b       loc_1000be974

; ======================================================================
; -[ADStarUnlockViewController setRewardToCompleted]
; address 0x1000bea04  size 348  kind objc
; ======================================================================
  1000bea04  stp     x22, x21, [sp, #-0x30]!
  1000bea08  stp     x20, x19, [sp, #0x10]
  1000bea0c  stp     x29, x30, [sp, #0x20]
  1000bea10  add     x29, sp, #0x20
  1000bea14  sub     sp, sp, #0x10
  1000bea18  mov     x20, x0
  1000bea1c  adrp    x8, #0x100418000
  1000bea20  nop
  1000bea24  ldr     x1, [x8, #0x678]
  1000bea28  bl      _objc_msgSend                            ; [self rewardLabel]
  1000bea2c  mov     x29, x29
  1000bea30  bl      _objc_retainAutoreleasedReturnValue
  1000bea34  mov     x19, x0
  1000bea38  adrp    x8, #0x10041d000
  1000bea3c  ldr     x22, [x8, #0xf78]                        ; class NSString
  1000bea40  adrp    x8, #0x100420000
  1000bea44  ldrsw   x8, [x8, #0x300]                         ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000bea48  ldr     x0, [x20, x8]                            ; x0 = self->starDictionary
  1000bea4c  adrp    x8, #0x100417000
  1000bea50  nop
  1000bea54  ldr     x1, [x8, #0x40]
  1000bea58  adrp    x2, #0x1003bc000
  1000bea5c  add     x2, x2, #0xad0                           ; @"reward"
  1000bea60  bl      _objc_msgSend                            ; [self->starDictionary objectForKey:@"reward"]
  1000bea64  mov     x29, x29
  1000bea68  bl      _objc_retainAutoreleasedReturnValue
  1000bea6c  mov     x21, x0
  1000bea70  adrp    x8, #0x100417000
  1000bea74  nop
  1000bea78  ldr     x1, [x8, #0x110]
  1000bea7c  bl      _objc_msgSend                            ; [[self->starDictionary objectForKey:@"reward"] intValue]
  1000bea80  adrp    x8, #0x100416000
  1000bea84  nop
  1000bea88  ldr     x1, [x8, #0xee8]
  1000bea8c  str     x0, [sp]
  1000bea90  adrp    x2, #0x1003ba000
  1000bea94  add     x2, x2, #0xc50                           ; @"%i"
  1000bea98  mov     x0, x22
  1000bea9c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[self->starDictionary objectForKey:@"reward"] intValue]]
  1000beaa0  mov     x29, x29
  1000beaa4  bl      _objc_retainAutoreleasedReturnValue
  1000beaa8  mov     x22, x0
  1000beaac  adrp    x8, #0x100416000
  1000beab0  nop
  1000beab4  ldr     x1, [x8, #0xb68]
  1000beab8  mov     x0, x19
  1000beabc  mov     x2, x22
  1000beac0  bl      _objc_msgSend                            ; [[self rewardLabel] setText:[NSString stringWithFormat:@"%i", [[self->starDictionary objectForKey:@"reward"] intValue]]]
  1000beac4  mov     x0, x22
  1000beac8  bl      _objc_release
  1000beacc  mov     x0, x21
  1000bead0  bl      _objc_release
  1000bead4  mov     x0, x19
  1000bead8  bl      _objc_release
  1000beadc  adrp    x8, #0x10041a000
  1000beae0  nop
  1000beae4  ldr     x1, [x8, #0x9a0]
  1000beae8  mov     x0, x20
  1000beaec  bl      _objc_msgSend                            ; [self coinsImage]
  1000beaf0  mov     x29, x29
  1000beaf4  bl      _objc_retainAutoreleasedReturnValue
  1000beaf8  mov     x19, x0
  1000beafc  adrp    x8, #0x100416000
  1000beb00  nop
  1000beb04  ldr     x1, [x8, #0xba8]
  1000beb08  mov     w2, #1
  1000beb0c  bl      _objc_msgSend                            ; [[self coinsImage] setHidden:1]
  1000beb10  mov     x0, x19
  1000beb14  sub     sp, x29, #0x20
  1000beb18  ldp     x29, x30, [sp, #0x20]
  1000beb1c  ldp     x20, x19, [sp, #0x10]
  1000beb20  ldp     x22, x21, [sp], #0x30
  1000beb24  b       _objc_release
  1000beb28  mov     x20, x0
  1000beb2c  b       loc_1000beb40
  1000beb30  b       loc_1000beb4c
  1000beb34  mov     x20, x0
  1000beb38  mov     x0, x22
  1000beb3c  bl      _objc_release
loc_1000beb40:
  1000beb40  mov     x0, x21
  1000beb44  bl      _objc_release
  1000beb48  b       loc_1000beb50
loc_1000beb4c:
  1000beb4c  mov     x20, x0
loc_1000beb50:
  1000beb50  mov     x0, x19
  1000beb54  bl      _objc_release
  1000beb58  mov     x0, x20
  1000beb5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController unlockStar]
; address 0x1000beb60  size 264  kind objc
; ======================================================================
  1000beb60  stp     x22, x21, [sp, #-0x30]!
  1000beb64  stp     x20, x19, [sp, #0x10]
  1000beb68  stp     x29, x30, [sp, #0x20]
  1000beb6c  add     x29, sp, #0x20
  1000beb70  mov     x19, x0
  1000beb74  adrp    x8, #0x100418000
  1000beb78  nop
  1000beb7c  ldr     x1, [x8, #0x688]
  1000beb80  bl      _objc_msgSend                            ; [self starImage]
  1000beb84  mov     x29, x29
  1000beb88  bl      _objc_retainAutoreleasedReturnValue
  1000beb8c  mov     x21, x0
  1000beb90  adrp    x8, #0x100416000
  1000beb94  nop
  1000beb98  ldr     x20, [x8, #0xba8]
  1000beb9c  mov     w2, #0
  1000beba0  mov     x1, x20
  1000beba4  bl      _objc_msgSend                            ; [[self starImage] setHidden:0]
  1000beba8  mov     x0, x21
  1000bebac  bl      _objc_release
  1000bebb0  adrp    x8, #0x10041a000
  1000bebb4  nop
  1000bebb8  ldr     x21, [x8, #0x990]
  1000bebbc  mov     x0, x19
  1000bebc0  mov     x1, x21
  1000bebc4  bl      _objc_msgSend                            ; [self completedImage]
  1000bebc8  mov     x29, x29
  1000bebcc  bl      _objc_retainAutoreleasedReturnValue
  1000bebd0  mov     x22, x0
  1000bebd4  mov     w2, #0
  1000bebd8  mov     x1, x20
  1000bebdc  bl      _objc_msgSend                            ; [[self completedImage] setHidden:0]
  1000bebe0  mov     x0, x22
  1000bebe4  bl      _objc_release
  1000bebe8  mov     x0, x19
  1000bebec  mov     x1, x21
  1000bebf0  bl      _objc_msgSend                            ; [self completedImage]
  1000bebf4  mov     x29, x29
  1000bebf8  bl      _objc_retainAutoreleasedReturnValue
  1000bebfc  mov     x20, x0
  1000bec00  adrp    x8, #0x100417000
  1000bec04  nop
  1000bec08  ldr     x1, [x8, #0x828]
  1000bec0c  fmov    d0, #1.00000000
  1000bec10  bl      _objc_msgSend                            ; [[self completedImage] setAlpha:1]
  1000bec14  mov     x0, x20
  1000bec18  bl      _objc_release
  1000bec1c  adrp    x8, #0x10041a000
  1000bec20  nop
  1000bec24  ldr     x1, [x8, #0x9a8]
  1000bec28  mov     x0, x19
  1000bec2c  ldp     x29, x30, [sp, #0x20]
  1000bec30  ldp     x20, x19, [sp, #0x10]
  1000bec34  ldp     x22, x21, [sp], #0x30
  1000bec38  b       _objc_msgSend                            ; [self setRewardToCompleted]
  1000bec3c  mov     x19, x0
  1000bec40  mov     x0, x21
  1000bec44  b       loc_1000bec5c
  1000bec48  mov     x19, x0
  1000bec4c  mov     x0, x22
  1000bec50  b       loc_1000bec5c
  1000bec54  mov     x19, x0
  1000bec58  mov     x0, x20
loc_1000bec5c:
  1000bec5c  bl      _objc_release
  1000bec60  mov     x0, x19
  1000bec64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController glow]
; address 0x1000bec68  size 300  kind objc
; ======================================================================
  1000bec68  stp     x22, x21, [sp, #-0x30]!
  1000bec6c  stp     x20, x19, [sp, #0x10]
  1000bec70  stp     x29, x30, [sp, #0x20]
  1000bec74  add     x29, sp, #0x20
  1000bec78  sub     sp, sp, #0x50
  1000bec7c  mov     x19, x0
  1000bec80  adrp    x8, #0x10041a000
  1000bec84  nop
  1000bec88  ldr     x1, [x8, #0x990]
  1000bec8c  bl      _objc_msgSend                            ; [self completedImage]
  1000bec90  mov     x29, x29
  1000bec94  bl      _objc_retainAutoreleasedReturnValue
  1000bec98  mov     x20, x0
  1000bec9c  adrp    x8, #0x100416000
  1000beca0  nop
  1000beca4  ldr     x1, [x8, #0xba8]
  1000beca8  mov     w2, #0
  1000becac  bl      _objc_msgSend                            ; [[self completedImage] setHidden:0]
  1000becb0  mov     x0, x20
  1000becb4  bl      _objc_release
  1000becb8  adrp    x21, #0x1003b0000
  1000becbc  ldr     x21, [x21, #0x118]                       ; __NSConcreteStackBlock
  1000becc0  adrp    x8, #0x10041d000
  1000becc4  ldr     x20, [x8, #0xf98]                        ; class UIView
  1000becc8  mov     w22, #-0x3e000000
  1000beccc  str     x21, [sp, #0x28]
  1000becd0  stp     w22, wzr, [sp, #0x30]
  1000becd4  adr     x8, #0x1000bed94                         ; &-[ADStarUnlockViewController glow]_block_invoke
  1000becd8  nop
  1000becdc  str     x8, [sp, #0x38]
  1000bece0  adrp    x8, #0x1003b2000
  1000bece4  add     x8, x8, #0x650                           ; &d_1003b2650
  1000bece8  str     x8, [sp, #0x40]
  1000becec  mov     x0, x19
  1000becf0  bl      _objc_retain
  1000becf4  str     x0, [sp, #0x48]
  1000becf8  str     x21, [sp]
  1000becfc  stp     w22, wzr, [sp, #8]
  1000bed00  adr     x8, #0x1000bee08                         ; &-[ADStarUnlockViewController glow]_block_invoke_2
  1000bed04  nop
  1000bed08  str     x8, [sp, #0x10]
  1000bed0c  adrp    x8, #0x1003b2000
  1000bed10  add     x8, x8, #0x680                           ; &d_1003b2680
  1000bed14  str     x8, [sp, #0x18]
  1000bed18  bl      _objc_retain
  1000bed1c  str     x0, [sp, #0x20]
  1000bed20  adrp    x8, #0x100417000
  1000bed24  nop
  1000bed28  ldr     x1, [x8, #0x8f0]
  1000bed2c  fmov    d0, #0.50000000
  1000bed30  movi    v1.16b, #0
  1000bed34  add     x3, sp, #0x28
  1000bed38  mov     x4, sp
  1000bed3c  mov     x0, x20
  1000bed40  mov     x2, #0
  1000bed44  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 delay:0 options:0 animations:^{-[ADStarUnlockViewController glow]_block_invoke captures +0x20=self} completion:^{-[ADStarUnlockViewController glow]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADStarUnlockViewController glow]_bloc…, +0x40=&d_1003b2650, +0x48=self}]
  1000bed48  ldr     x0, [sp, #0x20]
  1000bed4c  bl      _objc_release
  1000bed50  ldr     x0, [sp, #0x48]
  1000bed54  bl      _objc_release
  1000bed58  sub     sp, x29, #0x20
  1000bed5c  ldp     x29, x30, [sp, #0x20]
  1000bed60  ldp     x20, x19, [sp, #0x10]
  1000bed64  ldp     x22, x21, [sp], #0x30
  1000bed68  ret
  1000bed6c  mov     x19, x0
  1000bed70  mov     x0, x20
  1000bed74  b       loc_1000bed88
  1000bed78  mov     x19, x0
  1000bed7c  ldr     x0, [sp, #0x20]
  1000bed80  bl      _objc_release
  1000bed84  ldr     x0, [sp, #0x48]
loc_1000bed88:
  1000bed88  bl      _objc_release
  1000bed8c  mov     x0, x19
  1000bed90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController glow]_block_invoke
; address 0x1000bed94  size 100  kind block
; ======================================================================
  1000bed94  stp     x20, x19, [sp, #-0x20]!
  1000bed98  stp     x29, x30, [sp, #0x10]
  1000bed9c  add     x29, sp, #0x10
  1000beda0  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000beda4  adrp    x8, #0x10041a000
  1000beda8  nop
  1000bedac  ldr     x1, [x8, #0x990]
  1000bedb0  bl      _objc_msgSend                            ; [self completedImage]
  1000bedb4  mov     x29, x29
  1000bedb8  bl      _objc_retainAutoreleasedReturnValue
  1000bedbc  mov     x19, x0
  1000bedc0  adrp    x8, #0x100417000
  1000bedc4  nop
  1000bedc8  ldr     x1, [x8, #0x828]
  1000bedcc  fmov    d0, #1.00000000
  1000bedd0  bl      _objc_msgSend                            ; [[self completedImage] setAlpha:1]
  1000bedd4  mov     x0, x19
  1000bedd8  ldp     x29, x30, [sp, #0x10]
  1000beddc  ldp     x20, x19, [sp], #0x20
  1000bede0  b       _objc_release
  1000bede4  mov     x20, x0
  1000bede8  mov     x0, x19
  1000bedec  bl      _objc_release
  1000bedf0  mov     x0, x20
  1000bedf4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000bedf8
; address 0x1000bedf8  size 8  kind sub
; ======================================================================
  1000bedf8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000bedfc  b       _objc_retain

; ======================================================================
; sub_1000bee00
; address 0x1000bee00  size 8  kind sub
; ======================================================================
  1000bee00  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000bee04  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController glow]_block_invoke_2
; address 0x1000bee08  size 100  kind block
; ======================================================================
  1000bee08  stp     x20, x19, [sp, #-0x20]!
  1000bee0c  stp     x29, x30, [sp, #0x10]
  1000bee10  add     x29, sp, #0x10
  1000bee14  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000bee18  adrp    x8, #0x100418000
  1000bee1c  nop
  1000bee20  ldr     x1, [x8, #0x688]
  1000bee24  bl      _objc_msgSend                            ; [self starImage]
  1000bee28  mov     x29, x29
  1000bee2c  bl      _objc_retainAutoreleasedReturnValue
  1000bee30  mov     x19, x0
  1000bee34  adrp    x8, #0x100416000
  1000bee38  nop
  1000bee3c  ldr     x1, [x8, #0xba8]
  1000bee40  mov     w2, #0
  1000bee44  bl      _objc_msgSend                            ; [[self starImage] setHidden:0]
  1000bee48  mov     x0, x19
  1000bee4c  ldp     x29, x30, [sp, #0x10]
  1000bee50  ldp     x20, x19, [sp], #0x20
  1000bee54  b       _objc_release
  1000bee58  mov     x20, x0
  1000bee5c  mov     x0, x19
  1000bee60  bl      _objc_release
  1000bee64  mov     x0, x20
  1000bee68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000bee6c
; address 0x1000bee6c  size 8  kind sub
; ======================================================================
  1000bee6c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000bee70  b       _objc_retain

; ======================================================================
; sub_1000bee74
; address 0x1000bee74  size 8  kind sub
; ======================================================================
  1000bee74  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000bee78  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController showReward]
; address 0x1000bee7c  size 412  kind objc
; ======================================================================
  1000bee7c  stp     x22, x21, [sp, #-0x30]!
  1000bee80  stp     x20, x19, [sp, #0x10]
  1000bee84  stp     x29, x30, [sp, #0x20]
  1000bee88  add     x29, sp, #0x20
  1000bee8c  sub     sp, sp, #0x10
  1000bee90  mov     x20, x0
  1000bee94  adrp    x8, #0x100418000
  1000bee98  nop
  1000bee9c  ldr     x19, [x8, #0x678]
  1000beea0  mov     x1, x19
  1000beea4  bl      _objc_msgSend                            ; [self rewardLabel]
  1000beea8  mov     x29, x29
  1000beeac  bl      _objc_retainAutoreleasedReturnValue
  1000beeb0  mov     x22, x0
  1000beeb4  adrp    x8, #0x100416000
  1000beeb8  nop
  1000beebc  ldr     x21, [x8, #0xba8]
  1000beec0  mov     w2, #0
  1000beec4  mov     x1, x21
  1000beec8  bl      _objc_msgSend                            ; [[self rewardLabel] setHidden:0]
  1000beecc  mov     x0, x22
  1000beed0  bl      _objc_release
  1000beed4  adrp    x8, #0x10041a000
  1000beed8  nop
  1000beedc  ldr     x1, [x8, #0x9a0]
  1000beee0  mov     x0, x20
  1000beee4  bl      _objc_msgSend                            ; [self coinsImage]
  1000beee8  mov     x29, x29
  1000beeec  bl      _objc_retainAutoreleasedReturnValue
  1000beef0  mov     x22, x0
  1000beef4  mov     w2, #0
  1000beef8  mov     x1, x21
  1000beefc  bl      _objc_msgSend                            ; [[self coinsImage] setHidden:0]
  1000bef00  mov     x0, x22
  1000bef04  bl      _objc_release
  1000bef08  mov     x0, x20
  1000bef0c  mov     x1, x19
  1000bef10  bl      _objc_msgSend                            ; [self rewardLabel]
  1000bef14  mov     x29, x29
  1000bef18  bl      _objc_retainAutoreleasedReturnValue
  1000bef1c  mov     x19, x0
  1000bef20  adrp    x8, #0x10041d000
  1000bef24  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000bef28  adrp    x8, #0x100420000
  1000bef2c  ldrsw   x8, [x8, #0x300]                         ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000bef30  ldr     x0, [x20, x8]                            ; x0 = self->starDictionary
  1000bef34  adrp    x8, #0x100417000
  1000bef38  nop
  1000bef3c  ldr     x1, [x8, #0x40]
  1000bef40  adrp    x2, #0x1003bc000
  1000bef44  add     x2, x2, #0xad0                           ; @"reward"
  1000bef48  bl      _objc_msgSend                            ; [self->starDictionary objectForKey:@"reward"]
  1000bef4c  mov     x29, x29
  1000bef50  bl      _objc_retainAutoreleasedReturnValue
  1000bef54  mov     x20, x0
  1000bef58  adrp    x8, #0x100417000
  1000bef5c  nop
  1000bef60  ldr     x1, [x8, #0x110]
  1000bef64  bl      _objc_msgSend                            ; [[self->starDictionary objectForKey:@"reward"] intValue]
  1000bef68  adrp    x8, #0x100416000
  1000bef6c  nop
  1000bef70  ldr     x1, [x8, #0xee8]
  1000bef74  str     x0, [sp]
  1000bef78  adrp    x2, #0x1003ba000
  1000bef7c  add     x2, x2, #0xc50                           ; @"%i"
  1000bef80  mov     x0, x21
  1000bef84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[self->starDictionary objectForKey:@"reward"] intValue]]
  1000bef88  mov     x29, x29
  1000bef8c  bl      _objc_retainAutoreleasedReturnValue
  1000bef90  mov     x22, x0
  1000bef94  adrp    x8, #0x100416000
  1000bef98  nop
  1000bef9c  ldr     x1, [x8, #0xb68]
  1000befa0  mov     x0, x19
  1000befa4  mov     x2, x22
  1000befa8  bl      _objc_msgSend                            ; [[self rewardLabel] setText:[NSString stringWithFormat:@"%i", [[self->starDictionary objectForKey:@"reward"] intValue]]]
  1000befac  mov     x0, x22
  1000befb0  bl      _objc_release
  1000befb4  mov     x0, x20
  1000befb8  bl      _objc_release
  1000befbc  mov     x0, x19
  1000befc0  sub     sp, x29, #0x20
  1000befc4  ldp     x29, x30, [sp, #0x20]
  1000befc8  ldp     x20, x19, [sp, #0x10]
  1000befcc  ldp     x22, x21, [sp], #0x30
  1000befd0  b       _objc_release
  1000befd4  mov     x21, x0
  1000befd8  b       loc_1000bf000
  1000befdc  b       loc_1000befe0
loc_1000befe0:
  1000befe0  mov     x21, x0
  1000befe4  mov     x0, x22
  1000befe8  b       loc_1000bf00c
  1000befec  mov     x21, x0
  1000beff0  b       loc_1000bf008
  1000beff4  mov     x21, x0
  1000beff8  mov     x0, x22
  1000beffc  bl      _objc_release
loc_1000bf000:
  1000bf000  mov     x0, x20
  1000bf004  bl      _objc_release
loc_1000bf008:
  1000bf008  mov     x0, x19
loc_1000bf00c:
  1000bf00c  bl      _objc_release
  1000bf010  mov     x0, x21
  1000bf014  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController rewardValue]
; address 0x1000bf018  size 124  kind objc
; ======================================================================
  1000bf018  stp     x20, x19, [sp, #-0x20]!
  1000bf01c  stp     x29, x30, [sp, #0x10]
  1000bf020  add     x29, sp, #0x10
  1000bf024  adrp    x8, #0x100420000
  1000bf028  ldrsw   x8, [x8, #0x300]                         ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000bf02c  ldr     x0, [x0, x8]                             ; x0 = self->starDictionary
  1000bf030  adrp    x8, #0x100417000
  1000bf034  nop
  1000bf038  ldr     x1, [x8, #0x40]
  1000bf03c  adrp    x2, #0x1003bc000
  1000bf040  add     x2, x2, #0xad0                           ; @"reward"
  1000bf044  bl      _objc_msgSend                            ; [self->starDictionary objectForKey:@"reward"]
  1000bf048  mov     x29, x29
  1000bf04c  bl      _objc_retainAutoreleasedReturnValue
  1000bf050  mov     x19, x0
  1000bf054  adrp    x8, #0x100417000
  1000bf058  nop
  1000bf05c  ldr     x1, [x8, #0x110]
  1000bf060  bl      _objc_msgSend                            ; [[self->starDictionary objectForKey:@"reward"] intValue]
  1000bf064  mov     x20, x0
  1000bf068  mov     x0, x19
  1000bf06c  bl      _objc_release
  1000bf070  mov     x0, x20
  1000bf074  ldp     x29, x30, [sp, #0x10]
  1000bf078  ldp     x20, x19, [sp], #0x20
  1000bf07c  ret
  1000bf080  mov     x20, x0
  1000bf084  mov     x0, x19
  1000bf088  bl      _objc_release
  1000bf08c  mov     x0, x20
  1000bf090  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController timeStringFromSeconds:]
; address 0x1000bf094  size 224  kind objc
; ======================================================================
  1000bf094  stp     x22, x21, [sp, #-0x30]!
  1000bf098  stp     x20, x19, [sp, #0x10]
  1000bf09c  stp     x29, x30, [sp, #0x20]
  1000bf0a0  add     x29, sp, #0x20
  1000bf0a4  sub     sp, sp, #0x10
  1000bf0a8  sxtw    x8, w2
  1000bf0ac  mov     x9, #-0x77770001
  1000bf0b0  movk    x9, #0x8889
  1000bf0b4  mul     x8, x8, x9
  1000bf0b8  lsr     x8, x8, #0x20
  1000bf0bc  add     w8, w8, w2
  1000bf0c0  asr     w9, w8, #5
  1000bf0c4  add     w21, w9, w8, lsr #31                     ; t1 = (((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >> 5) + ((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >>> 31))
  1000bf0c8  mov     w8, #0x3c
  1000bf0cc  msub    w8, w21, w8, w2
  1000bf0d0  adrp    x22, #0x10041d000
  1000bf0d4  adrp    x9, #0x1003b9000
  1000bf0d8  add     x9, x9, #0x870                           ; @""
  1000bf0dc  adrp    x10, #0x1003bb000
  1000bf0e0  add     x10, x10, #0xe30                         ; @"0"
  1000bf0e4  ldr     x0, [x22, #0xf78]                        ; class NSString
  1000bf0e8  cmp     w8, #0xa
  1000bf0ec  csel    x9, x10, x9, lt
  1000bf0f0  adrp    x10, #0x100416000
  1000bf0f4  nop
  1000bf0f8  ldr     x20, [x10, #0xee8]
  1000bf0fc  stp     x9, x8, [sp]
  1000bf100  adrp    x2, #0x1003bc000
  1000bf104  add     x2, x2, #0xd30                           ; @"%@%i"
  1000bf108  mov     x1, x20
  1000bf10c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 - t1 * 60)]
  1000bf110  mov     x29, x29
  1000bf114  bl      _objc_retainAutoreleasedReturnValue
  1000bf118  mov     x19, x0
  1000bf11c  ldr     x0, [x22, #0xf78]                        ; class NSString
  1000bf120  stp     x21, x19, [sp]
  1000bf124  adrp    x2, #0x1003bc000
  1000bf128  add     x2, x2, #0xd50                           ; @"%i:%@"
  1000bf12c  mov     x1, x20
  1000bf130  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i:%@", t1, [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 …]
  1000bf134  mov     x29, x29
  1000bf138  bl      _objc_retainAutoreleasedReturnValue
  1000bf13c  mov     x20, x0
  1000bf140  mov     x0, x19
  1000bf144  bl      _objc_release
  1000bf148  mov     x0, x20
  1000bf14c  sub     sp, x29, #0x20
  1000bf150  ldp     x29, x30, [sp, #0x20]
  1000bf154  ldp     x20, x19, [sp, #0x10]
  1000bf158  ldp     x22, x21, [sp], #0x30
  1000bf15c  b       _objc_autoreleaseReturnValue
  1000bf160  mov     x20, x0
  1000bf164  mov     x0, x19
  1000bf168  bl      _objc_release
  1000bf16c  mov     x0, x20
  1000bf170  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADStarUnlockViewController didReceiveMemoryWarning]
; address 0x1000bf174  size 60  kind objc
; ======================================================================
  1000bf174  stp     x29, x30, [sp, #-0x10]!
  1000bf178  mov     x29, sp
  1000bf17c  sub     sp, sp, #0x10
  1000bf180  str     x0, [sp]
  1000bf184  adrp    x8, #0x10041e000
  1000bf188  ldr     x8, [x8, #0xf88]
  1000bf18c  str     x8, [sp, #8]
  1000bf190  adrp    x8, #0x100416000
  1000bf194  nop
  1000bf198  ldr     x1, [x8, #0xbf8]
  1000bf19c  mov     x0, sp
  1000bf1a0  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000bf1a4  mov     sp, x29
  1000bf1a8  ldp     x29, x30, [sp], #0x10
  1000bf1ac  ret

; ======================================================================
; -[ADStarUnlockViewController starDescription]
; address 0x1000bf1b0  size 16  kind objc
; ======================================================================
  1000bf1b0  adrp    x8, #0x100420000
  1000bf1b4  ldrsw   x8, [x8, #0x310]                         ; ivar offset ADStarUnlockViewController._starDescription (+0x160)
  1000bf1b8  ldr     x0, [x0, x8]                             ; x0 = self->_starDescription
  1000bf1bc  ret

; ======================================================================
; -[ADStarUnlockViewController setStarDescription:]
; address 0x1000bf1c0  size 56  kind objc
; ======================================================================
  1000bf1c0  stp     x20, x19, [sp, #-0x20]!
  1000bf1c4  stp     x29, x30, [sp, #0x10]
  1000bf1c8  add     x29, sp, #0x10
  1000bf1cc  mov     x19, x0
  1000bf1d0  adrp    x8, #0x100420000
  1000bf1d4  ldrsw   x20, [x8, #0x310]                        ; ivar offset ADStarUnlockViewController._starDescription (+0x160)
  1000bf1d8  mov     x0, x2
  1000bf1dc  bl      _objc_retain
  1000bf1e0  ldr     x8, [x19, x20]                           ; x8 = self->_starDescription
  1000bf1e4  str     x0, [x19, x20]                           ; self->_starDescription = arg1
  1000bf1e8  mov     x0, x8
  1000bf1ec  ldp     x29, x30, [sp, #0x10]
  1000bf1f0  ldp     x20, x19, [sp], #0x20
  1000bf1f4  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController starImage]
; address 0x1000bf1f8  size 16  kind objc
; ======================================================================
  1000bf1f8  adrp    x8, #0x100420000
  1000bf1fc  ldrsw   x8, [x8, #0x314]                         ; ivar offset ADStarUnlockViewController._starImage (+0x168)
  1000bf200  ldr     x0, [x0, x8]                             ; x0 = self->_starImage
  1000bf204  ret

; ======================================================================
; -[ADStarUnlockViewController setStarImage:]
; address 0x1000bf208  size 56  kind objc
; ======================================================================
  1000bf208  stp     x20, x19, [sp, #-0x20]!
  1000bf20c  stp     x29, x30, [sp, #0x10]
  1000bf210  add     x29, sp, #0x10
  1000bf214  mov     x19, x0
  1000bf218  adrp    x8, #0x100420000
  1000bf21c  ldrsw   x20, [x8, #0x314]                        ; ivar offset ADStarUnlockViewController._starImage (+0x168)
  1000bf220  mov     x0, x2
  1000bf224  bl      _objc_retain
  1000bf228  ldr     x8, [x19, x20]                           ; x8 = self->_starImage
  1000bf22c  str     x0, [x19, x20]                           ; self->_starImage = arg1
  1000bf230  mov     x0, x8
  1000bf234  ldp     x29, x30, [sp, #0x10]
  1000bf238  ldp     x20, x19, [sp], #0x20
  1000bf23c  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController lockedDescription]
; address 0x1000bf240  size 16  kind objc
; ======================================================================
  1000bf240  adrp    x8, #0x100420000
  1000bf244  ldrsw   x8, [x8, #0x318]                         ; ivar offset ADStarUnlockViewController._lockedDescription (+0x170)
  1000bf248  ldr     x0, [x0, x8]                             ; x0 = self->_lockedDescription
  1000bf24c  ret

; ======================================================================
; -[ADStarUnlockViewController setLockedDescription:]
; address 0x1000bf250  size 56  kind objc
; ======================================================================
  1000bf250  stp     x20, x19, [sp, #-0x20]!
  1000bf254  stp     x29, x30, [sp, #0x10]
  1000bf258  add     x29, sp, #0x10
  1000bf25c  mov     x19, x0
  1000bf260  adrp    x8, #0x100420000
  1000bf264  ldrsw   x20, [x8, #0x318]                        ; ivar offset ADStarUnlockViewController._lockedDescription (+0x170)
  1000bf268  mov     x0, x2
  1000bf26c  bl      _objc_retain
  1000bf270  ldr     x8, [x19, x20]                           ; x8 = self->_lockedDescription
  1000bf274  str     x0, [x19, x20]                           ; self->_lockedDescription = arg1
  1000bf278  mov     x0, x8
  1000bf27c  ldp     x29, x30, [sp, #0x10]
  1000bf280  ldp     x20, x19, [sp], #0x20
  1000bf284  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController blurImage]
; address 0x1000bf288  size 16  kind objc
; ======================================================================
  1000bf288  adrp    x8, #0x100420000
  1000bf28c  ldrsw   x8, [x8, #0x31c]                         ; ivar offset ADStarUnlockViewController._blurImage (+0x178)
  1000bf290  ldr     x0, [x0, x8]                             ; x0 = self->_blurImage
  1000bf294  ret

; ======================================================================
; -[ADStarUnlockViewController setBlurImage:]
; address 0x1000bf298  size 56  kind objc
; ======================================================================
  1000bf298  stp     x20, x19, [sp, #-0x20]!
  1000bf29c  stp     x29, x30, [sp, #0x10]
  1000bf2a0  add     x29, sp, #0x10
  1000bf2a4  mov     x19, x0
  1000bf2a8  adrp    x8, #0x100420000
  1000bf2ac  ldrsw   x20, [x8, #0x31c]                        ; ivar offset ADStarUnlockViewController._blurImage (+0x178)
  1000bf2b0  mov     x0, x2
  1000bf2b4  bl      _objc_retain
  1000bf2b8  ldr     x8, [x19, x20]                           ; x8 = self->_blurImage
  1000bf2bc  str     x0, [x19, x20]                           ; self->_blurImage = arg1
  1000bf2c0  mov     x0, x8
  1000bf2c4  ldp     x29, x30, [sp, #0x10]
  1000bf2c8  ldp     x20, x19, [sp], #0x20
  1000bf2cc  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController rewardLabel]
; address 0x1000bf2d0  size 16  kind objc
; ======================================================================
  1000bf2d0  adrp    x8, #0x100420000
  1000bf2d4  ldrsw   x8, [x8, #0x320]                         ; ivar offset ADStarUnlockViewController._rewardLabel (+0x180)
  1000bf2d8  ldr     x0, [x0, x8]                             ; x0 = self->_rewardLabel
  1000bf2dc  ret

; ======================================================================
; -[ADStarUnlockViewController setRewardLabel:]
; address 0x1000bf2e0  size 56  kind objc
; ======================================================================
  1000bf2e0  stp     x20, x19, [sp, #-0x20]!
  1000bf2e4  stp     x29, x30, [sp, #0x10]
  1000bf2e8  add     x29, sp, #0x10
  1000bf2ec  mov     x19, x0
  1000bf2f0  adrp    x8, #0x100420000
  1000bf2f4  ldrsw   x20, [x8, #0x320]                        ; ivar offset ADStarUnlockViewController._rewardLabel (+0x180)
  1000bf2f8  mov     x0, x2
  1000bf2fc  bl      _objc_retain
  1000bf300  ldr     x8, [x19, x20]                           ; x8 = self->_rewardLabel
  1000bf304  str     x0, [x19, x20]                           ; self->_rewardLabel = arg1
  1000bf308  mov     x0, x8
  1000bf30c  ldp     x29, x30, [sp, #0x10]
  1000bf310  ldp     x20, x19, [sp], #0x20
  1000bf314  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController coinsImage]
; address 0x1000bf318  size 16  kind objc
; ======================================================================
  1000bf318  adrp    x8, #0x100420000
  1000bf31c  ldrsw   x8, [x8, #0x324]                         ; ivar offset ADStarUnlockViewController._coinsImage (+0x188)
  1000bf320  ldr     x0, [x0, x8]                             ; x0 = self->_coinsImage
  1000bf324  ret

; ======================================================================
; -[ADStarUnlockViewController setCoinsImage:]
; address 0x1000bf328  size 56  kind objc
; ======================================================================
  1000bf328  stp     x20, x19, [sp, #-0x20]!
  1000bf32c  stp     x29, x30, [sp, #0x10]
  1000bf330  add     x29, sp, #0x10
  1000bf334  mov     x19, x0
  1000bf338  adrp    x8, #0x100420000
  1000bf33c  ldrsw   x20, [x8, #0x324]                        ; ivar offset ADStarUnlockViewController._coinsImage (+0x188)
  1000bf340  mov     x0, x2
  1000bf344  bl      _objc_retain
  1000bf348  ldr     x8, [x19, x20]                           ; x8 = self->_coinsImage
  1000bf34c  str     x0, [x19, x20]                           ; self->_coinsImage = arg1
  1000bf350  mov     x0, x8
  1000bf354  ldp     x29, x30, [sp, #0x10]
  1000bf358  ldp     x20, x19, [sp], #0x20
  1000bf35c  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController completedImage]
; address 0x1000bf360  size 16  kind objc
; ======================================================================
  1000bf360  adrp    x8, #0x100420000
  1000bf364  ldrsw   x8, [x8, #0x328]                         ; ivar offset ADStarUnlockViewController._completedImage (+0x190)
  1000bf368  ldr     x0, [x0, x8]                             ; x0 = self->_completedImage
  1000bf36c  ret

; ======================================================================
; -[ADStarUnlockViewController setCompletedImage:]
; address 0x1000bf370  size 56  kind objc
; ======================================================================
  1000bf370  stp     x20, x19, [sp, #-0x20]!
  1000bf374  stp     x29, x30, [sp, #0x10]
  1000bf378  add     x29, sp, #0x10
  1000bf37c  mov     x19, x0
  1000bf380  adrp    x8, #0x100420000
  1000bf384  ldrsw   x20, [x8, #0x328]                        ; ivar offset ADStarUnlockViewController._completedImage (+0x190)
  1000bf388  mov     x0, x2
  1000bf38c  bl      _objc_retain
  1000bf390  ldr     x8, [x19, x20]                           ; x8 = self->_completedImage
  1000bf394  str     x0, [x19, x20]                           ; self->_completedImage = arg1
  1000bf398  mov     x0, x8
  1000bf39c  ldp     x29, x30, [sp, #0x10]
  1000bf3a0  ldp     x20, x19, [sp], #0x20
  1000bf3a4  b       _objc_release

; ======================================================================
; -[ADStarUnlockViewController .cxx_destruct]
; address 0x1000bf3a8  size 204  kind objc
; ======================================================================
  1000bf3a8  stp     x20, x19, [sp, #-0x20]!
  1000bf3ac  stp     x29, x30, [sp, #0x10]
  1000bf3b0  add     x29, sp, #0x10
  1000bf3b4  mov     x19, x0
  1000bf3b8  adrp    x8, #0x100420000
  1000bf3bc  ldrsw   x8, [x8, #0x328]                         ; ivar offset ADStarUnlockViewController._completedImage (+0x190)
  1000bf3c0  add     x0, x19, x8
  1000bf3c4  mov     x1, #0
  1000bf3c8  bl      _objc_storeStrong
  1000bf3cc  adrp    x8, #0x100420000
  1000bf3d0  ldrsw   x8, [x8, #0x324]                         ; ivar offset ADStarUnlockViewController._coinsImage (+0x188)
  1000bf3d4  add     x0, x19, x8
  1000bf3d8  mov     x1, #0
  1000bf3dc  bl      _objc_storeStrong
  1000bf3e0  adrp    x8, #0x100420000
  1000bf3e4  ldrsw   x8, [x8, #0x320]                         ; ivar offset ADStarUnlockViewController._rewardLabel (+0x180)
  1000bf3e8  add     x0, x19, x8
  1000bf3ec  mov     x1, #0
  1000bf3f0  bl      _objc_storeStrong
  1000bf3f4  adrp    x8, #0x100420000
  1000bf3f8  ldrsw   x8, [x8, #0x31c]                         ; ivar offset ADStarUnlockViewController._blurImage (+0x178)
  1000bf3fc  add     x0, x19, x8
  1000bf400  mov     x1, #0
  1000bf404  bl      _objc_storeStrong
  1000bf408  adrp    x8, #0x100420000
  1000bf40c  ldrsw   x8, [x8, #0x318]                         ; ivar offset ADStarUnlockViewController._lockedDescription (+0x170)
  1000bf410  add     x0, x19, x8
  1000bf414  mov     x1, #0
  1000bf418  bl      _objc_storeStrong
  1000bf41c  adrp    x8, #0x100420000
  1000bf420  ldrsw   x8, [x8, #0x314]                         ; ivar offset ADStarUnlockViewController._starImage (+0x168)
  1000bf424  add     x0, x19, x8
  1000bf428  mov     x1, #0
  1000bf42c  bl      _objc_storeStrong
  1000bf430  adrp    x8, #0x100420000
  1000bf434  ldrsw   x8, [x8, #0x310]                         ; ivar offset ADStarUnlockViewController._starDescription (+0x160)
  1000bf438  add     x0, x19, x8
  1000bf43c  mov     x1, #0
  1000bf440  bl      _objc_storeStrong
  1000bf444  adrp    x8, #0x100420000
  1000bf448  ldrsw   x8, [x8, #0x304]                         ; ivar offset ADStarUnlockViewController.challenge_id (+0x150)
  1000bf44c  add     x0, x19, x8
  1000bf450  mov     x1, #0
  1000bf454  bl      _objc_storeStrong
  1000bf458  mov     x1, #0
  1000bf45c  adrp    x8, #0x100420000
  1000bf460  ldrsw   x8, [x8, #0x300]                         ; ivar offset ADStarUnlockViewController.starDictionary (+0x140)
  1000bf464  add     x0, x19, x8
  1000bf468  ldp     x29, x30, [sp, #0x10]
  1000bf46c  ldp     x20, x19, [sp], #0x20
  1000bf470  b       _objc_storeStrong
