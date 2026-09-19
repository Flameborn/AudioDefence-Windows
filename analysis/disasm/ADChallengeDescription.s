// unit ADChallengeDescription — 9 functions
//   0x10009110c      60  -[ADChallengeDescription initWithFrame:]
//   0x100091148      92  -[ADChallengeDescription awakeFromNib]
//   0x1000911a4      92  -[ADChallengeDescription didMoveToSuperview]
//   0x100091200     828  -[ADChallengeDescription updateLayout]
//   0x10009153c     360  -[ADChallengeDescription setText:]
//   0x1000916a4     112  -[ADChallengeDescription isIphone]
//   0x100091714      16  -[ADChallengeDescription fontSize]
//   0x100091724      56  -[ADChallengeDescription setFontSize:]
//   0x10009175c      20  -[ADChallengeDescription .cxx_destruct]

; ======================================================================
; -[ADChallengeDescription initWithFrame:]
; address 0x10009110c  size 60  kind objc
; ======================================================================
  10009110c  stp     x29, x30, [sp, #-0x10]!
  100091110  mov     x29, sp
  100091114  sub     sp, sp, #0x10
  100091118  str     x0, [sp]
  10009111c  adrp    x8, #0x10041e000
  100091120  ldr     x8, [x8, #0xe88]
  100091124  str     x8, [sp, #8]
  100091128  adrp    x8, #0x100417000
  10009112c  nop
  100091130  ldr     x1, [x8, #0x178]
  100091134  mov     x0, sp
  100091138  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10009113c  mov     sp, x29
  100091140  ldp     x29, x30, [sp], #0x10
  100091144  ret

; ======================================================================
; -[ADChallengeDescription awakeFromNib]
; address 0x100091148  size 92  kind objc
; ======================================================================
  100091148  stp     x20, x19, [sp, #-0x20]!
  10009114c  stp     x29, x30, [sp, #0x10]
  100091150  add     x29, sp, #0x10
  100091154  sub     sp, sp, #0x10
  100091158  mov     x19, x0
  10009115c  str     x19, [sp]
  100091160  adrp    x8, #0x10041e000
  100091164  ldr     x8, [x8, #0xe88]
  100091168  str     x8, [sp, #8]
  10009116c  adrp    x8, #0x100418000
  100091170  nop
  100091174  ldr     x1, [x8, #0xe68]
  100091178  mov     x0, sp
  10009117c  bl      _objc_msgSendSuper2                      ; [super awakeFromNib]
  100091180  adrp    x8, #0x100419000
  100091184  nop
  100091188  ldr     x1, [x8, #0xfc0]
  10009118c  mov     x0, x19
  100091190  bl      _objc_msgSend                            ; [self updateLayout]
  100091194  sub     sp, x29, #0x10
  100091198  ldp     x29, x30, [sp, #0x10]
  10009119c  ldp     x20, x19, [sp], #0x20
  1000911a0  ret

; ======================================================================
; -[ADChallengeDescription didMoveToSuperview]
; address 0x1000911a4  size 92  kind objc
; ======================================================================
  1000911a4  stp     x20, x19, [sp, #-0x20]!
  1000911a8  stp     x29, x30, [sp, #0x10]
  1000911ac  add     x29, sp, #0x10
  1000911b0  sub     sp, sp, #0x10
  1000911b4  mov     x19, x0
  1000911b8  str     x19, [sp]
  1000911bc  adrp    x8, #0x10041e000
  1000911c0  ldr     x8, [x8, #0xe88]
  1000911c4  str     x8, [sp, #8]
  1000911c8  adrp    x8, #0x100419000
  1000911cc  nop
  1000911d0  ldr     x1, [x8, #0xed8]
  1000911d4  mov     x0, sp
  1000911d8  bl      _objc_msgSendSuper2                      ; [super didMoveToSuperview]
  1000911dc  adrp    x8, #0x100419000
  1000911e0  nop
  1000911e4  ldr     x1, [x8, #0xfc0]
  1000911e8  mov     x0, x19
  1000911ec  bl      _objc_msgSend                            ; [self updateLayout]
  1000911f0  sub     sp, x29, #0x10
  1000911f4  ldp     x29, x30, [sp, #0x10]
  1000911f8  ldp     x20, x19, [sp], #0x20
  1000911fc  ret

; ======================================================================
; -[ADChallengeDescription updateLayout]
; address 0x100091200  size 828  kind objc
; ======================================================================
  100091200  stp     x24, x23, [sp, #-0x40]!
  100091204  stp     x22, x21, [sp, #0x10]
  100091208  stp     x20, x19, [sp, #0x20]
  10009120c  stp     x29, x30, [sp, #0x30]
  100091210  add     x29, sp, #0x30
  100091214  mov     x19, x0
  100091218  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10009121c  cbz     w0, loc_100091344                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100091220  adrp    x8, #0x10041d000
  100091224  ldr     x20, [x8, #0xf08]                        ; class UIFont
  100091228  adrp    x8, #0x100416000
  10009122c  nop
  100091230  ldr     x1, [x8, #0xd18]
  100091234  mov     x0, x19
  100091238  bl      _objc_msgSend                            ; [self isIphone]
  10009123c  cmp     w0, #0
  100091240  fmov    d0, #22.00000000
  100091244  fmov    d1, #18.00000000
  100091248  fcsel   d0, d1, d0, ne
  10009124c  adrp    x8, #0x100416000
  100091250  nop
  100091254  ldr     x1, [x8, #0xd20]
  100091258  adrp    x2, #0x1003bc000
  10009125c  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  100091260  mov     x0, x20
  100091264  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([self isIphone] != 0 ? 18 : 22)]
  100091268  mov     x29, x29
  10009126c  bl      _objc_retainAutoreleasedReturnValue
  100091270  mov     x20, x0
  100091274  adrp    x8, #0x100416000
  100091278  nop
  10009127c  ldr     x1, [x8, #0xd28]
  100091280  mov     x0, x19
  100091284  mov     x2, x20
  100091288  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([self isIphone] != 0 ? 18 : 22)]]
  10009128c  adrp    x8, #0x100419000
  100091290  nop
  100091294  ldr     x1, [x8, #0xfc8]
  100091298  mov     w2, #1
  10009129c  mov     x0, x19
  1000912a0  bl      _objc_msgSend                            ; [self setEditable:1]
  1000912a4  adrp    x8, #0x100418000
  1000912a8  nop
  1000912ac  ldr     x1, [x8, #0x230]
  1000912b0  mov     w2, #1
  1000912b4  mov     x0, x19
  1000912b8  bl      _objc_msgSend                            ; [self setTextAlignment:1]
  1000912bc  adrp    x22, #0x10041d000
  1000912c0  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  1000912c4  adrp    x8, #0x100417000
  1000912c8  nop
  1000912cc  ldr     x1, [x8, #0x328]
  1000912d0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000912d4  mov     x29, x29
  1000912d8  bl      _objc_retainAutoreleasedReturnValue
  1000912dc  mov     x21, x0
  1000912e0  adrp    x8, #0x100417000
  1000912e4  nop
  1000912e8  ldr     x1, [x8, #0x330]
  1000912ec  mov     x0, x19
  1000912f0  mov     x2, x21
  1000912f4  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  1000912f8  mov     x0, x21
  1000912fc  bl      _objc_release
  100091300  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  100091304  adrp    x8, #0x100417000
  100091308  nop
  10009130c  ldr     x1, [x8, #0x340]
  100091310  bl      _objc_msgSend                            ; [UIColor clearColor]
  100091314  mov     x29, x29
  100091318  bl      _objc_retainAutoreleasedReturnValue
  10009131c  mov     x21, x0
  100091320  adrp    x8, #0x100417000
  100091324  nop
  100091328  ldr     x1, [x8, #0x188]
  10009132c  mov     x0, x19
  100091330  mov     x2, x21
  100091334  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  100091338  mov     x0, x21
  10009133c  bl      _objc_release
  100091340  b       loc_1000914dc
loc_100091344:
  100091344  adrp    x8, #0x100419000
  100091348  nop
  10009134c  ldr     x20, [x8, #0xfd0]
  100091350  mov     x0, x19
  100091354  mov     x1, x20
  100091358  bl      _objc_msgSend                            ; [self fontSize]
  10009135c  mov     x29, x29
  100091360  bl      _objc_retainAutoreleasedReturnValue
  100091364  mov     x21, x0
  100091368  bl      _objc_release
  10009136c  cbz     x21, loc_1000913a8                       ; if ([self fontSize] == 0)
  100091370  mov     x0, x19
  100091374  mov     x1, x20
  100091378  bl      _objc_msgSend                            ; [self fontSize]
  10009137c  mov     x29, x29
  100091380  bl      _objc_retainAutoreleasedReturnValue
  100091384  mov     x20, x0
  100091388  adrp    x8, #0x100417000
  10009138c  nop
  100091390  ldr     x1, [x8, #0x110]
  100091394  bl      _objc_msgSend                            ; [[self fontSize] intValue]
  100091398  mov     x21, x0
  10009139c  mov     x0, x20
  1000913a0  bl      _objc_release
  1000913a4  b       loc_1000913cc
loc_1000913a8:
  1000913a8  adrp    x8, #0x100416000
  1000913ac  nop
  1000913b0  ldr     x1, [x8, #0xd18]
  1000913b4  mov     x0, x19
  1000913b8  bl      _objc_msgSend                            ; [self isIphone]
  1000913bc  cmp     w0, #0
  1000913c0  mov     w8, #0x14
  1000913c4  mov     w9, #0xf
  1000913c8  csel    w21, w9, w8, ne
loc_1000913cc:
  1000913cc  adrp    x8, #0x10041d000
  1000913d0  ldr     x0, [x8, #0xf08]                         ; class UIFont
  1000913d4  scvtf   d0, w21
  1000913d8  adrp    x8, #0x100416000
  1000913dc  nop
  1000913e0  ldr     x1, [x8, #0xd20]
  1000913e4  adrp    x2, #0x1003ba000
  1000913e8  add     x2, x2, #0xf10                           ; @"Chainprinter"
  1000913ec  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Chainprinter" size:(float)w21]
  1000913f0  mov     x29, x29
  1000913f4  bl      _objc_retainAutoreleasedReturnValue
  1000913f8  mov     x20, x0
  1000913fc  adrp    x8, #0x100416000
  100091400  nop
  100091404  ldr     x1, [x8, #0xd28]
  100091408  mov     x0, x19
  10009140c  mov     x2, x20
  100091410  bl      _objc_msgSend                            ; [self setFont:[UIFont fontWithName:@"Chainprinter" size:(float)w21]]
  100091414  adrp    x8, #0x100419000
  100091418  nop
  10009141c  ldr     x21, [x8, #0xfc8]
  100091420  mov     w2, #1
  100091424  mov     x0, x19
  100091428  mov     x1, x21
  10009142c  bl      _objc_msgSend                            ; [self setEditable:1]
  100091430  adrp    x8, #0x100418000
  100091434  nop
  100091438  ldr     x1, [x8, #0x230]
  10009143c  mov     w2, #1
  100091440  mov     x0, x19
  100091444  bl      _objc_msgSend                            ; [self setTextAlignment:1]
  100091448  adrp    x23, #0x10041d000
  10009144c  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  100091450  adrp    x8, #0x100417000
  100091454  nop
  100091458  ldr     x1, [x8, #0x328]
  10009145c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100091460  mov     x29, x29
  100091464  bl      _objc_retainAutoreleasedReturnValue
  100091468  mov     x22, x0
  10009146c  adrp    x8, #0x100417000
  100091470  nop
  100091474  ldr     x1, [x8, #0x330]
  100091478  mov     x0, x19
  10009147c  mov     x2, x22
  100091480  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  100091484  mov     x0, x22
  100091488  bl      _objc_release
  10009148c  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  100091490  adrp    x8, #0x100417000
  100091494  nop
  100091498  ldr     x1, [x8, #0x340]
  10009149c  bl      _objc_msgSend                            ; [UIColor clearColor]
  1000914a0  mov     x29, x29
  1000914a4  bl      _objc_retainAutoreleasedReturnValue
  1000914a8  mov     x22, x0
  1000914ac  adrp    x8, #0x100417000
  1000914b0  nop
  1000914b4  ldr     x1, [x8, #0x188]
  1000914b8  mov     x0, x19
  1000914bc  mov     x2, x22
  1000914c0  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  1000914c4  mov     x0, x22
  1000914c8  bl      _objc_release
  1000914cc  mov     w2, #0
  1000914d0  mov     x0, x19
  1000914d4  mov     x1, x21
  1000914d8  bl      _objc_msgSend                            ; [self setEditable:0]
loc_1000914dc:
  1000914dc  mov     x0, x20
  1000914e0  ldp     x29, x30, [sp, #0x30]
  1000914e4  ldp     x20, x19, [sp, #0x20]
  1000914e8  ldp     x22, x21, [sp, #0x10]
  1000914ec  ldp     x24, x23, [sp], #0x40
  1000914f0  b       _objc_release
  1000914f4  mov     x19, x0
  1000914f8  b       loc_100091524
  1000914fc  mov     x19, x0
  100091500  b       loc_100091524
  100091504  b       loc_100091508
loc_100091508:
  100091508  mov     x19, x0
  10009150c  mov     x0, x21
  100091510  b       loc_100091520
  100091514  b       loc_100091518
loc_100091518:
  100091518  mov     x19, x0
  10009151c  mov     x0, x22
loc_100091520:
  100091520  bl      _objc_release
loc_100091524:
  100091524  mov     x0, x20
  100091528  bl      _objc_release
  10009152c  mov     x0, x19
  100091530  bl      __Unwind_Resume                          ; Unwind_Resume()
  100091534  mov     x19, x0
  100091538  b       loc_100091524

; ======================================================================
; -[ADChallengeDescription setText:]
; address 0x10009153c  size 360  kind objc
; ======================================================================
  10009153c  stp     x24, x23, [sp, #-0x40]!
  100091540  stp     x22, x21, [sp, #0x10]
  100091544  stp     x20, x19, [sp, #0x20]
  100091548  stp     x29, x30, [sp, #0x30]
  10009154c  add     x29, sp, #0x30
  100091550  sub     sp, sp, #0x10
  100091554  mov     x20, x0
  100091558  mov     x0, x2
  10009155c  bl      _objc_retain
  100091560  mov     x19, x0
  100091564  str     x20, [sp]
  100091568  adrp    x8, #0x10041e000
  10009156c  ldr     x8, [x8, #0xe88]
  100091570  str     x8, [sp, #8]
  100091574  adrp    x8, #0x100416000
  100091578  nop
  10009157c  ldr     x1, [x8, #0xb68]
  100091580  mov     x0, sp
  100091584  mov     x2, x19
  100091588  bl      _objc_msgSendSuper2                      ; [super setText:arg1]
  10009158c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100091590  tbnz    w0, #0, loc_10009165c                    ; if ((UIAccessibilityIsVoiceOverRunning() & 1))
  100091594  adrp    x8, #0x100419000
  100091598  nop
  10009159c  ldr     x21, [x8, #0xfc8]
  1000915a0  mov     w2, #1
  1000915a4  mov     x0, x20
  1000915a8  mov     x1, x21
  1000915ac  bl      _objc_msgSend                            ; [self setEditable:1]
  1000915b0  adrp    x8, #0x100418000
  1000915b4  nop
  1000915b8  ldr     x1, [x8, #0x230]
  1000915bc  mov     w2, #1
  1000915c0  mov     x0, x20
  1000915c4  bl      _objc_msgSend                            ; [self setTextAlignment:1]
  1000915c8  adrp    x23, #0x10041d000
  1000915cc  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  1000915d0  adrp    x8, #0x100417000
  1000915d4  nop
  1000915d8  ldr     x1, [x8, #0x328]
  1000915dc  bl      _objc_msgSend                            ; [UIColor whiteColor]
  1000915e0  mov     x29, x29
  1000915e4  bl      _objc_retainAutoreleasedReturnValue
  1000915e8  mov     x22, x0
  1000915ec  adrp    x8, #0x100417000
  1000915f0  nop
  1000915f4  ldr     x1, [x8, #0x330]
  1000915f8  mov     x0, x20
  1000915fc  mov     x2, x22
  100091600  bl      _objc_msgSend                            ; [self setTextColor:[UIColor whiteColor]]
  100091604  mov     x0, x22
  100091608  bl      _objc_release
  10009160c  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  100091610  adrp    x8, #0x100417000
  100091614  nop
  100091618  ldr     x1, [x8, #0x340]
  10009161c  bl      _objc_msgSend                            ; [UIColor clearColor]
  100091620  mov     x29, x29
  100091624  bl      _objc_retainAutoreleasedReturnValue
  100091628  mov     x22, x0
  10009162c  adrp    x8, #0x100417000
  100091630  nop
  100091634  ldr     x1, [x8, #0x188]
  100091638  mov     x0, x20
  10009163c  mov     x2, x22
  100091640  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  100091644  mov     x0, x22
  100091648  bl      _objc_release
  10009164c  mov     w2, #0
  100091650  mov     x0, x20
  100091654  mov     x1, x21
  100091658  bl      _objc_msgSend                            ; [self setEditable:0]
loc_10009165c:
  10009165c  mov     x0, x19
  100091660  bl      _objc_release
  100091664  sub     sp, x29, #0x30
  100091668  ldp     x29, x30, [sp, #0x30]
  10009166c  ldp     x20, x19, [sp, #0x20]
  100091670  ldp     x22, x21, [sp, #0x10]
  100091674  ldp     x24, x23, [sp], #0x40
  100091678  ret
  10009167c  mov     x20, x0
  100091680  b       loc_100091694
  100091684  b       loc_100091688
loc_100091688:
  100091688  mov     x20, x0
  10009168c  mov     x0, x22
  100091690  bl      _objc_release
loc_100091694:
  100091694  mov     x0, x19
  100091698  bl      _objc_release
  10009169c  mov     x0, x20
  1000916a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeDescription isIphone]
; address 0x1000916a4  size 112  kind objc
; ======================================================================
  1000916a4  stp     x20, x19, [sp, #-0x20]!
  1000916a8  stp     x29, x30, [sp, #0x10]
  1000916ac  add     x29, sp, #0x10
  1000916b0  adrp    x8, #0x10041d000
  1000916b4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000916b8  adrp    x8, #0x100416000
  1000916bc  nop
  1000916c0  ldr     x1, [x8, #0xc00]
  1000916c4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000916c8  mov     x29, x29
  1000916cc  bl      _objc_retainAutoreleasedReturnValue
  1000916d0  mov     x19, x0
  1000916d4  adrp    x8, #0x100416000
  1000916d8  nop
  1000916dc  ldr     x1, [x8, #0xd18]
  1000916e0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000916e4  mov     x20, x0
  1000916e8  mov     x0, x19
  1000916ec  bl      _objc_release
  1000916f0  mov     x0, x20
  1000916f4  ldp     x29, x30, [sp, #0x10]
  1000916f8  ldp     x20, x19, [sp], #0x20
  1000916fc  ret
  100091700  mov     x20, x0
  100091704  mov     x0, x19
  100091708  bl      _objc_release
  10009170c  mov     x0, x20
  100091710  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeDescription fontSize]
; address 0x100091714  size 16  kind objc
; ======================================================================
  100091714  adrp    x8, #0x10041f000
  100091718  ldrsw   x8, [x8, #0xf64]                         ; ivar offset ADChallengeDescription._fontSize (+0x70)
  10009171c  ldr     x0, [x0, x8]                             ; x0 = self->_fontSize
  100091720  ret

; ======================================================================
; -[ADChallengeDescription setFontSize:]
; address 0x100091724  size 56  kind objc
; ======================================================================
  100091724  stp     x20, x19, [sp, #-0x20]!
  100091728  stp     x29, x30, [sp, #0x10]
  10009172c  add     x29, sp, #0x10
  100091730  mov     x19, x0
  100091734  adrp    x8, #0x10041f000
  100091738  ldrsw   x20, [x8, #0xf64]                        ; ivar offset ADChallengeDescription._fontSize (+0x70)
  10009173c  mov     x0, x2
  100091740  bl      _objc_retain
  100091744  ldr     x8, [x19, x20]                           ; x8 = self->_fontSize
  100091748  str     x0, [x19, x20]                           ; self->_fontSize = arg1
  10009174c  mov     x0, x8
  100091750  ldp     x29, x30, [sp, #0x10]
  100091754  ldp     x20, x19, [sp], #0x20
  100091758  b       _objc_release

; ======================================================================
; -[ADChallengeDescription .cxx_destruct]
; address 0x10009175c  size 20  kind objc
; ======================================================================
  10009175c  mov     x1, #0
  100091760  adrp    x8, #0x10041f000
  100091764  ldrsw   x8, [x8, #0xf64]                         ; ivar offset ADChallengeDescription._fontSize (+0x70)
  100091768  add     x0, x0, x8
  10009176c  b       _objc_storeStrong
