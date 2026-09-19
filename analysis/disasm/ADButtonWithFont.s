// unit ADButtonWithFont — 17 functions
//   0x100072f40      60  -[ADButtonWithFont initWithFrame:]
//   0x100072f7c     176  -[ADButtonWithFont awakeFromNib]
//   0x10007302c     972  -[ADButtonWithFont makeAccessible]
//   0x1000733f8     384  -[ADButtonWithFont setTitle:forState:]
//   0x100073578     252  -[ADButtonWithFont playSound]
//   0x100073674     112  -[ADButtonWithFont isIphone]
//   0x1000736e4      16  -[ADButtonWithFont fontSize]
//   0x1000736f4      56  -[ADButtonWithFont setFontSize:]
//   0x10007372c      16  -[ADButtonWithFont fontName]
//   0x10007373c      56  -[ADButtonWithFont setFontName:]
//   0x100073774      16  -[ADButtonWithFont glow]
//   0x100073784      56  -[ADButtonWithFont setGlow:]
//   0x1000737bc      16  -[ADButtonWithFont diamonds]
//   0x1000737cc      16  -[ADButtonWithFont setDiamonds:]
//   0x1000737dc      16  -[ADButtonWithFont coins]
//   0x1000737ec      16  -[ADButtonWithFont setCoins:]
//   0x1000737fc     104  -[ADButtonWithFont .cxx_destruct]

; ======================================================================
; -[ADButtonWithFont initWithFrame:]
; address 0x100072f40  size 60  kind objc
; ======================================================================
  100072f40  stp     x29, x30, [sp, #-0x10]!
  100072f44  mov     x29, sp
  100072f48  sub     sp, sp, #0x10
  100072f4c  str     x0, [sp]
  100072f50  adrp    x8, #0x10041e000
  100072f54  ldr     x8, [x8, #0xde8]
  100072f58  str     x8, [sp, #8]
  100072f5c  adrp    x8, #0x100417000
  100072f60  nop
  100072f64  ldr     x1, [x8, #0x178]
  100072f68  mov     x0, sp
  100072f6c  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100072f70  mov     sp, x29
  100072f74  ldp     x29, x30, [sp], #0x10
  100072f78  ret

; ======================================================================
; -[ADButtonWithFont awakeFromNib]
; address 0x100072f7c  size 176  kind objc
; ======================================================================
  100072f7c  stp     x20, x19, [sp, #-0x20]!
  100072f80  stp     x29, x30, [sp, #0x10]
  100072f84  add     x29, sp, #0x10
  100072f88  sub     sp, sp, #0x10
  100072f8c  mov     x19, x0
  100072f90  str     x19, [sp]
  100072f94  adrp    x8, #0x10041e000
  100072f98  ldr     x8, [x8, #0xde8]
  100072f9c  str     x8, [sp, #8]
  100072fa0  adrp    x8, #0x100418000
  100072fa4  nop
  100072fa8  ldr     x1, [x8, #0xe68]
  100072fac  mov     x0, sp
  100072fb0  bl      _objc_msgSendSuper2                      ; [super awakeFromNib]
  100072fb4  adrp    x8, #0x100419000
  100072fb8  nop
  100072fbc  ldr     x1, [x8, #0x7f0]
  100072fc0  mov     x2, #0
  100072fc4  mov     x0, x19
  100072fc8  bl      _objc_msgSend                            ; [self setContentHorizontalAlignment:0]
  100072fcc  adrp    x8, #0x100418000
  100072fd0  nop
  100072fd4  ldr     x3, [x8, #0x600]
  100072fd8  adrp    x8, #0x100417000
  100072fdc  nop
  100072fe0  ldr     x1, [x8, #0x7d0]
  100072fe4  mov     w4, #0x40
  100072fe8  mov     x0, x19
  100072fec  mov     x2, x19
  100072ff0  bl      _objc_msgSend                            ; [self addTarget:self action:@selector(playSound) forControlEvents:64]
  100072ff4  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100072ff8  cbz     w0, loc_100073008                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100072ffc  adrp    x8, #0x100419000
  100073000  add     x8, x8, #0x7f8                           ; &@selector(makeAccessible)
  100073004  b       loc_100073010
loc_100073008:
  100073008  adrp    x8, #0x100416000
  10007300c  add     x8, x8, #0xba0                           ; &@selector(setupAsMain)
loc_100073010:
  100073010  ldr     x1, [x8]                                 ; x1 = one of selectors {makeAccessible, setupAsMain}
  100073014  mov     x0, x19
  100073018  bl      _objc_msgSend                            ; [self makeAccessible | setupAsMain]
  10007301c  sub     sp, x29, #0x10
  100073020  ldp     x29, x30, [sp, #0x10]
  100073024  ldp     x20, x19, [sp], #0x20
  100073028  ret

; ======================================================================
; -[ADButtonWithFont makeAccessible]
; address 0x10007302c  size 972  kind objc
; ======================================================================
  10007302c  stp     x26, x25, [sp, #-0x50]!
  100073030  stp     x24, x23, [sp, #0x10]
  100073034  stp     x22, x21, [sp, #0x20]
  100073038  stp     x20, x19, [sp, #0x30]
  10007303c  stp     x29, x30, [sp, #0x40]
  100073040  add     x29, sp, #0x40
  100073044  mov     x19, x0
  100073048  adrp    x26, #0x10041d000
  10007304c  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  100073050  adrp    x8, #0x100417000
  100073054  nop
  100073058  ldr     x1, [x8, #0x180]
  10007305c  bl      _objc_msgSend                            ; [UIColor blackColor]
  100073060  mov     x29, x29
  100073064  bl      _objc_retainAutoreleasedReturnValue
  100073068  mov     x20, x0
  10007306c  adrp    x8, #0x100417000
  100073070  nop
  100073074  ldr     x1, [x8, #0x188]
  100073078  mov     x0, x19
  10007307c  mov     x2, x20
  100073080  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor blackColor]]
  100073084  mov     x0, x20
  100073088  bl      _objc_release
  10007308c  adrp    x8, #0x100416000
  100073090  nop
  100073094  ldr     x20, [x8, #0xce8]
  100073098  mov     x2, #0
  10007309c  mov     x3, #0
  1000730a0  mov     x0, x19
  1000730a4  mov     x1, x20
  1000730a8  bl      _objc_msgSend                            ; [self setImage:0 forState:0]
  1000730ac  mov     w3, #4
  1000730b0  mov     x0, x19
  1000730b4  mov     x1, x20
  1000730b8  mov     x2, #0
  1000730bc  bl      _objc_msgSend                            ; [self setImage:0 forState:4]
  1000730c0  adrp    x8, #0x100419000
  1000730c4  nop
  1000730c8  ldr     x20, [x8, #0x800]
  1000730cc  mov     w3, #4
  1000730d0  mov     x0, x19
  1000730d4  mov     x1, x20
  1000730d8  mov     x2, #0
  1000730dc  bl      _objc_msgSend                            ; [self setBackgroundImage:0 forState:4]
  1000730e0  mov     x2, #0
  1000730e4  mov     x3, #0
  1000730e8  mov     x0, x19
  1000730ec  mov     x1, x20
  1000730f0  bl      _objc_msgSend                            ; [self setBackgroundImage:0 forState:0]
  1000730f4  adrp    x8, #0x100419000
  1000730f8  nop
  1000730fc  ldr     x1, [x8, #0x808]
  100073100  mov     x0, x19
  100073104  bl      _objc_msgSend                            ; [self accessibilityLabel]
  100073108  mov     x29, x29
  10007310c  bl      _objc_retainAutoreleasedReturnValue
  100073110  mov     x20, x0
  100073114  adrp    x8, #0x100417000
  100073118  nop
  10007311c  ldr     x1, [x8, #0x920]
  100073120  mov     x3, #0
  100073124  mov     x0, x19
  100073128  mov     x2, x20
  10007312c  bl      _objc_msgSend                            ; [self setTitle:[self accessibilityLabel] forState:0]
  100073130  mov     x0, x20
  100073134  bl      _objc_release
  100073138  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  10007313c  adrp    x8, #0x100417000
  100073140  nop
  100073144  ldr     x20, [x8, #0x328]
  100073148  mov     x1, x20
  10007314c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100073150  mov     x29, x29
  100073154  bl      _objc_retainAutoreleasedReturnValue
  100073158  mov     x21, x0
  10007315c  adrp    x8, #0x100418000
  100073160  nop
  100073164  ldr     x1, [x8, #0x5f0]
  100073168  mov     x3, #0
  10007316c  mov     x0, x19
  100073170  mov     x2, x21
  100073174  bl      _objc_msgSend                            ; [self setTitleColor:[UIColor whiteColor] forState:0]
  100073178  mov     x0, x21
  10007317c  bl      _objc_release
  100073180  adrp    x8, #0x100416000
  100073184  nop
  100073188  ldr     x21, [x8, #0xb80]
  10007318c  mov     x0, x19
  100073190  mov     x1, x21
  100073194  bl      _objc_msgSend                            ; [self titleLabel]
  100073198  mov     x29, x29
  10007319c  bl      _objc_retainAutoreleasedReturnValue
  1000731a0  mov     x22, x0
  1000731a4  adrp    x8, #0x10041d000
  1000731a8  ldr     x25, [x8, #0xf08]                        ; class UIFont
  1000731ac  mov     x0, x19
  1000731b0  mov     x1, x21
  1000731b4  bl      _objc_msgSend                            ; [self titleLabel]
  1000731b8  mov     x29, x29
  1000731bc  bl      _objc_retainAutoreleasedReturnValue
  1000731c0  mov     x23, x0
  1000731c4  adrp    x8, #0x100416000
  1000731c8  nop
  1000731cc  ldr     x1, [x8, #0xcc8]
  1000731d0  bl      _objc_msgSend                            ; [[self titleLabel] font]
  1000731d4  mov     x29, x29
  1000731d8  bl      _objc_retainAutoreleasedReturnValue
  1000731dc  mov     x24, x0
  1000731e0  adrp    x8, #0x100419000
  1000731e4  nop
  1000731e8  ldr     x1, [x8, #0x810]
  1000731ec  bl      _objc_msgSend                            ; [[[self titleLabel] font] pointSize]
  1000731f0  adrp    x8, #0x100416000
  1000731f4  nop
  1000731f8  ldr     x1, [x8, #0xd20]
  1000731fc  adrp    x2, #0x1003bc000
  100073200  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  100073204  mov     x0, x25
  100073208  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:[[[self titleLabel] font] pointSize]]
  10007320c  mov     x29, x29
  100073210  bl      _objc_retainAutoreleasedReturnValue
  100073214  mov     x25, x0
  100073218  adrp    x8, #0x100416000
  10007321c  nop
  100073220  ldr     x1, [x8, #0xd28]
  100073224  mov     x0, x22
  100073228  mov     x2, x25
  10007322c  bl      _objc_msgSend                            ; [[self titleLabel] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:[[[self titleLabel] font] pointSize]]]
  100073230  mov     x0, x25
  100073234  bl      _objc_release
  100073238  mov     x0, x24
  10007323c  bl      _objc_release
  100073240  mov     x0, x23
  100073244  bl      _objc_release
  100073248  mov     x0, x22
  10007324c  bl      _objc_release
  100073250  mov     x0, x19
  100073254  mov     x1, x21
  100073258  bl      _objc_msgSend                            ; [self titleLabel]
  10007325c  mov     x29, x29
  100073260  bl      _objc_retainAutoreleasedReturnValue
  100073264  mov     x22, x0
  100073268  adrp    x8, #0x100419000
  10007326c  nop
  100073270  ldr     x1, [x8, #0x818]
  100073274  mov     x2, #0
  100073278  bl      _objc_msgSend                            ; [[self titleLabel] setLineBreakMode:0]
  10007327c  mov     x0, x22
  100073280  bl      _objc_release
  100073284  mov     x0, x19
  100073288  mov     x1, x21
  10007328c  bl      _objc_msgSend                            ; [self titleLabel]
  100073290  mov     x29, x29
  100073294  bl      _objc_retainAutoreleasedReturnValue
  100073298  mov     x21, x0
  10007329c  adrp    x8, #0x100418000
  1000732a0  nop
  1000732a4  ldr     x1, [x8, #0x230]
  1000732a8  mov     w2, #1
  1000732ac  bl      _objc_msgSend                            ; [[self titleLabel] setTextAlignment:1]
  1000732b0  mov     x0, x21
  1000732b4  bl      _objc_release
  1000732b8  adrp    x8, #0x100417000
  1000732bc  nop
  1000732c0  ldr     x21, [x8, #0x8f8]
  1000732c4  mov     x0, x19
  1000732c8  mov     x1, x21
  1000732cc  bl      _objc_msgSend                            ; [self layer]
  1000732d0  mov     x29, x29
  1000732d4  bl      _objc_retainAutoreleasedReturnValue
  1000732d8  mov     x22, x0
  1000732dc  adrp    x8, #0x100419000
  1000732e0  nop
  1000732e4  ldr     x1, [x8, #0x6f0]
  1000732e8  fmov    d0, #3.00000000
  1000732ec  bl      _objc_msgSend                            ; [[self layer] setBorderWidth:3]
  1000732f0  mov     x0, x22
  1000732f4  bl      _objc_release
  1000732f8  mov     x0, x19
  1000732fc  mov     x1, x21
  100073300  bl      _objc_msgSend                            ; [self layer]
  100073304  mov     x29, x29
  100073308  bl      _objc_retainAutoreleasedReturnValue
  10007330c  mov     x21, x0
  100073310  ldr     x0, [x26, #0xfa0]                        ; class UIColor
  100073314  mov     x1, x20
  100073318  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10007331c  mov     x29, x29
  100073320  bl      _objc_retainAutoreleasedReturnValue
  100073324  bl      _objc_retainAutorelease
  100073328  mov     x20, x0
  10007332c  adrp    x8, #0x100418000
  100073330  nop
  100073334  ldr     x1, [x8, #0x2b8]
  100073338  bl      _objc_msgSend                            ; [[UIColor whiteColor] CGColor]
  10007333c  mov     x2, x0
  100073340  adrp    x8, #0x100419000
  100073344  nop
  100073348  ldr     x1, [x8, #0x6e8]
  10007334c  mov     x0, x21
  100073350  bl      _objc_msgSend                            ; [[self layer] setBorderColor:[[UIColor whiteColor] CGColor]]
  100073354  mov     x0, x20
  100073358  bl      _objc_release
  10007335c  mov     x0, x21
  100073360  ldp     x29, x30, [sp, #0x40]
  100073364  ldp     x20, x19, [sp, #0x30]
  100073368  ldp     x22, x21, [sp, #0x20]
  10007336c  ldp     x24, x23, [sp, #0x10]
  100073370  ldp     x26, x25, [sp], #0x50
  100073374  b       _objc_release
  100073378  mov     x19, x0
  10007337c  b       loc_1000733bc
  100073380  mov     x19, x0
  100073384  mov     x0, x20
  100073388  bl      _objc_release
  10007338c  b       loc_1000733e8
  100073390  b       loc_100073394
loc_100073394:
  100073394  mov     x19, x0
  100073398  mov     x0, x20
  10007339c  b       loc_1000733ec
  1000733a0  b       loc_1000733e4
  1000733a4  b       loc_1000733d8
  1000733a8  mov     x19, x0
  1000733ac  b       loc_1000733c4
  1000733b0  mov     x19, x0
  1000733b4  mov     x0, x25
  1000733b8  bl      _objc_release
loc_1000733bc:
  1000733bc  mov     x0, x24
  1000733c0  bl      _objc_release
loc_1000733c4:
  1000733c4  mov     x0, x23
  1000733c8  bl      _objc_release
  1000733cc  b       loc_1000733dc
  1000733d0  b       loc_1000733d8
  1000733d4  b       loc_1000733e4
loc_1000733d8:
  1000733d8  mov     x19, x0
loc_1000733dc:
  1000733dc  mov     x0, x22
  1000733e0  b       loc_1000733ec
loc_1000733e4:
  1000733e4  mov     x19, x0
loc_1000733e8:
  1000733e8  mov     x0, x21
loc_1000733ec:
  1000733ec  bl      _objc_release
  1000733f0  mov     x0, x19
  1000733f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont setTitle:forState:]
; address 0x1000733f8  size 384  kind objc
; ======================================================================
  1000733f8  stp     x22, x21, [sp, #-0x30]!
  1000733fc  stp     x20, x19, [sp, #0x10]
  100073400  stp     x29, x30, [sp, #0x20]
  100073404  add     x29, sp, #0x20
  100073408  sub     sp, sp, #0x20
  10007340c  mov     x21, x3
  100073410  mov     x20, x0
  100073414  mov     x0, x2
  100073418  bl      _objc_retain
  10007341c  adrp    x8, #0x10041f000
  100073420  ldrsw   x22, [x8, #0xd28]                        ; ivar offset ADButtonWithFont.wantedTitle (+0x90)
  100073424  bl      _objc_retain
  100073428  mov     x19, x0
  10007342c  ldr     x0, [x20, x22]                           ; x0 = self->wantedTitle
  100073430  str     x19, [x20, x22]                          ; self->wantedTitle = arg1
  100073434  bl      _objc_release
  100073438  str     x20, [sp, #0x10]
  10007343c  adrp    x8, #0x10041e000
  100073440  ldr     x8, [x8, #0xde8]
  100073444  str     x8, [sp, #0x18]
  100073448  adrp    x8, #0x100417000
  10007344c  nop
  100073450  ldr     x1, [x8, #0x920]
  100073454  add     x0, sp, #0x10
  100073458  mov     x2, x19
  10007345c  mov     x3, x21
  100073460  bl      _objc_msgSendSuper2                      ; [super setTitle:arg1 forState:arg2]
  100073464  adrp    x8, #0x100417000
  100073468  nop
  10007346c  ldr     x1, [x8, #0x958]
  100073470  mov     x0, x20
  100073474  bl      _objc_msgSend                            ; [self coins]
  100073478  cbz     w0, loc_1000734cc                        ; if ([self coins] == 0)
  10007347c  adrp    x8, #0x10041d000
  100073480  ldr     x0, [x8, #0xf78]                         ; class NSString
  100073484  adrp    x8, #0x100416000
  100073488  nop
  10007348c  ldr     x1, [x8, #0xee8]
  100073490  str     x19, [sp]
  100073494  adrp    x2, #0x1003bf000
  100073498  add     x2, x2, #0x30                            ; @"%@ coins"
  10007349c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ coins", arg1]
  1000734a0  mov     x29, x29
  1000734a4  bl      _objc_retainAutoreleasedReturnValue
  1000734a8  mov     x21, x0
  1000734ac  adrp    x8, #0x100417000
  1000734b0  nop
  1000734b4  ldr     x1, [x8, #0x7e8]
  1000734b8  mov     x0, x20
  1000734bc  mov     x2, x21
  1000734c0  bl      _objc_msgSend                            ; [self setAccessibilityLabel:[NSString stringWithFormat:@"%@ coins", arg1]]
  1000734c4  mov     x0, x21
  1000734c8  bl      _objc_release
loc_1000734cc:
  1000734cc  adrp    x8, #0x100417000
  1000734d0  nop
  1000734d4  ldr     x1, [x8, #0x960]
  1000734d8  mov     x0, x20
  1000734dc  bl      _objc_msgSend                            ; [self diamonds]
  1000734e0  cbz     w0, loc_100073534                        ; if ([self diamonds] == 0)
  1000734e4  adrp    x8, #0x10041d000
  1000734e8  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000734ec  adrp    x8, #0x100416000
  1000734f0  nop
  1000734f4  ldr     x1, [x8, #0xee8]
  1000734f8  str     x19, [sp]
  1000734fc  adrp    x2, #0x1003bf000
  100073500  add     x2, x2, #0x50                            ; @"%@ diamonds"
  100073504  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@ diamonds", arg1]
  100073508  mov     x29, x29
  10007350c  bl      _objc_retainAutoreleasedReturnValue
  100073510  mov     x21, x0
  100073514  adrp    x8, #0x100417000
  100073518  nop
  10007351c  ldr     x1, [x8, #0x7e8]
  100073520  mov     x0, x20
  100073524  mov     x2, x21
  100073528  bl      _objc_msgSend                            ; [self setAccessibilityLabel:[NSString stringWithFormat:@"%@ diamonds", arg1]]
  10007352c  mov     x0, x21
  100073530  bl      _objc_release
loc_100073534:
  100073534  mov     x0, x19
  100073538  bl      _objc_release
  10007353c  sub     sp, x29, #0x20
  100073540  ldp     x29, x30, [sp, #0x20]
  100073544  ldp     x20, x19, [sp, #0x10]
  100073548  ldp     x22, x21, [sp], #0x30
  10007354c  ret
  100073550  mov     x20, x0
  100073554  b       loc_100073568
  100073558  b       loc_10007355c
loc_10007355c:
  10007355c  mov     x20, x0
  100073560  mov     x0, x21
  100073564  bl      _objc_release
loc_100073568:
  100073568  mov     x0, x19
  10007356c  bl      _objc_release
  100073570  mov     x0, x20
  100073574  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont playSound]
; address 0x100073578  size 252  kind objc
; ======================================================================
  100073578  stp     x22, x21, [sp, #-0x30]!
  10007357c  stp     x20, x19, [sp, #0x10]
  100073580  stp     x29, x30, [sp, #0x20]
  100073584  add     x29, sp, #0x20
  100073588  adrp    x8, #0x10041d000
  10007358c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100073590  adrp    x8, #0x100417000
  100073594  nop
  100073598  ldr     x1, [x8, #0x4f0]
  10007359c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000735a0  mov     x29, x29
  1000735a4  bl      _objc_retainAutoreleasedReturnValue
  1000735a8  mov     x19, x0
  1000735ac  adrp    x8, #0x100417000
  1000735b0  nop
  1000735b4  ldr     x1, [x8, #0x4f8]
  1000735b8  adrp    x2, #0x1003ba000
  1000735bc  add     x2, x2, #0xcb0                           ; @"buttons"
  1000735c0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"buttons"]
  1000735c4  mov     x29, x29
  1000735c8  bl      _objc_retainAutoreleasedReturnValue
  1000735cc  mov     x21, x0
  1000735d0  adrp    x8, #0x100417000
  1000735d4  nop
  1000735d8  ldr     x1, [x8, #0x990]
  1000735dc  adrp    x2, #0x1003ba000
  1000735e0  add     x2, x2, #0xcd0                           ; @"click_button"
  1000735e4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"]
  1000735e8  mov     x29, x29
  1000735ec  bl      _objc_retainAutoreleasedReturnValue
  1000735f0  mov     x20, x0
  1000735f4  mov     x0, x21
  1000735f8  bl      _objc_release
  1000735fc  mov     x0, x19
  100073600  bl      _objc_release
  100073604  adrp    x8, #0x100416000
  100073608  nop
  10007360c  ldr     x1, [x8, #0xcb0]
  100073610  fmov    s0, #3.00000000
  100073614  mov     x0, x20
  100073618  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] setGain:3]
  10007361c  adrp    x8, #0x100417000
  100073620  nop
  100073624  ldr     x1, [x8, #0x600]
  100073628  mov     x0, x20
  10007362c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"buttons"] S3DSound:@"click_button"] play]
  100073630  mov     x0, x20
  100073634  ldp     x29, x30, [sp, #0x20]
  100073638  ldp     x20, x19, [sp, #0x10]
  10007363c  ldp     x22, x21, [sp], #0x30
  100073640  b       _objc_release
  100073644  mov     x22, x0
  100073648  mov     x0, x20
  10007364c  b       loc_100073668
  100073650  mov     x22, x0
  100073654  b       loc_100073664
  100073658  mov     x22, x0
  10007365c  mov     x0, x21
  100073660  bl      _objc_release
loc_100073664:
  100073664  mov     x0, x19
loc_100073668:
  100073668  bl      _objc_release
  10007366c  mov     x0, x22
  100073670  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont isIphone]
; address 0x100073674  size 112  kind objc
; ======================================================================
  100073674  stp     x20, x19, [sp, #-0x20]!
  100073678  stp     x29, x30, [sp, #0x10]
  10007367c  add     x29, sp, #0x10
  100073680  adrp    x8, #0x10041d000
  100073684  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100073688  adrp    x8, #0x100416000
  10007368c  nop
  100073690  ldr     x1, [x8, #0xc00]
  100073694  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100073698  mov     x29, x29
  10007369c  bl      _objc_retainAutoreleasedReturnValue
  1000736a0  mov     x19, x0
  1000736a4  adrp    x8, #0x100416000
  1000736a8  nop
  1000736ac  ldr     x1, [x8, #0xd18]
  1000736b0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  1000736b4  mov     x20, x0
  1000736b8  mov     x0, x19
  1000736bc  bl      _objc_release
  1000736c0  mov     x0, x20
  1000736c4  ldp     x29, x30, [sp, #0x10]
  1000736c8  ldp     x20, x19, [sp], #0x20
  1000736cc  ret
  1000736d0  mov     x20, x0
  1000736d4  mov     x0, x19
  1000736d8  bl      _objc_release
  1000736dc  mov     x0, x20
  1000736e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADButtonWithFont fontSize]
; address 0x1000736e4  size 16  kind objc
; ======================================================================
  1000736e4  adrp    x8, #0x10041f000
  1000736e8  ldrsw   x8, [x8, #0xd2c]                         ; ivar offset ADButtonWithFont._fontSize (+0xa0)
  1000736ec  ldr     x0, [x0, x8]                             ; x0 = self->_fontSize
  1000736f0  ret

; ======================================================================
; -[ADButtonWithFont setFontSize:]
; address 0x1000736f4  size 56  kind objc
; ======================================================================
  1000736f4  stp     x20, x19, [sp, #-0x20]!
  1000736f8  stp     x29, x30, [sp, #0x10]
  1000736fc  add     x29, sp, #0x10
  100073700  mov     x19, x0
  100073704  adrp    x8, #0x10041f000
  100073708  ldrsw   x20, [x8, #0xd2c]                        ; ivar offset ADButtonWithFont._fontSize (+0xa0)
  10007370c  mov     x0, x2
  100073710  bl      _objc_retain
  100073714  ldr     x8, [x19, x20]                           ; x8 = self->_fontSize
  100073718  str     x0, [x19, x20]                           ; self->_fontSize = arg1
  10007371c  mov     x0, x8
  100073720  ldp     x29, x30, [sp, #0x10]
  100073724  ldp     x20, x19, [sp], #0x20
  100073728  b       _objc_release

; ======================================================================
; -[ADButtonWithFont fontName]
; address 0x10007372c  size 16  kind objc
; ======================================================================
  10007372c  adrp    x8, #0x10041f000
  100073730  ldrsw   x8, [x8, #0xd30]                         ; ivar offset ADButtonWithFont._fontName (+0xa8)
  100073734  ldr     x0, [x0, x8]                             ; x0 = self->_fontName
  100073738  ret

; ======================================================================
; -[ADButtonWithFont setFontName:]
; address 0x10007373c  size 56  kind objc
; ======================================================================
  10007373c  stp     x20, x19, [sp, #-0x20]!
  100073740  stp     x29, x30, [sp, #0x10]
  100073744  add     x29, sp, #0x10
  100073748  mov     x19, x0
  10007374c  adrp    x8, #0x10041f000
  100073750  ldrsw   x20, [x8, #0xd30]                        ; ivar offset ADButtonWithFont._fontName (+0xa8)
  100073754  mov     x0, x2
  100073758  bl      _objc_retain
  10007375c  ldr     x8, [x19, x20]                           ; x8 = self->_fontName
  100073760  str     x0, [x19, x20]                           ; self->_fontName = arg1
  100073764  mov     x0, x8
  100073768  ldp     x29, x30, [sp, #0x10]
  10007376c  ldp     x20, x19, [sp], #0x20
  100073770  b       _objc_release

; ======================================================================
; -[ADButtonWithFont glow]
; address 0x100073774  size 16  kind objc
; ======================================================================
  100073774  adrp    x8, #0x10041f000
  100073778  ldrsw   x8, [x8, #0xd34]                         ; ivar offset ADButtonWithFont._glow (+0xb0)
  10007377c  ldr     x0, [x0, x8]                             ; x0 = self->_glow
  100073780  ret

; ======================================================================
; -[ADButtonWithFont setGlow:]
; address 0x100073784  size 56  kind objc
; ======================================================================
  100073784  stp     x20, x19, [sp, #-0x20]!
  100073788  stp     x29, x30, [sp, #0x10]
  10007378c  add     x29, sp, #0x10
  100073790  mov     x19, x0
  100073794  adrp    x8, #0x10041f000
  100073798  ldrsw   x20, [x8, #0xd34]                        ; ivar offset ADButtonWithFont._glow (+0xb0)
  10007379c  mov     x0, x2
  1000737a0  bl      _objc_retain
  1000737a4  ldr     x8, [x19, x20]                           ; x8 = self->_glow
  1000737a8  str     x0, [x19, x20]                           ; self->_glow = arg1
  1000737ac  mov     x0, x8
  1000737b0  ldp     x29, x30, [sp, #0x10]
  1000737b4  ldp     x20, x19, [sp], #0x20
  1000737b8  b       _objc_release

; ======================================================================
; -[ADButtonWithFont diamonds]
; address 0x1000737bc  size 16  kind objc
; ======================================================================
  1000737bc  adrp    x8, #0x10041f000
  1000737c0  ldrsw   x8, [x8, #0xd38]                         ; ivar offset ADButtonWithFont._diamonds (+0x98)
  1000737c4  ldr     w0, [x0, x8]                             ; w0 = self->_diamonds
  1000737c8  ret

; ======================================================================
; -[ADButtonWithFont setDiamonds:]
; address 0x1000737cc  size 16  kind objc
; ======================================================================
  1000737cc  adrp    x8, #0x10041f000
  1000737d0  ldrsw   x8, [x8, #0xd38]                         ; ivar offset ADButtonWithFont._diamonds (+0x98)
  1000737d4  str     w2, [x0, x8]                             ; self->_diamonds = arg1
  1000737d8  ret

; ======================================================================
; -[ADButtonWithFont coins]
; address 0x1000737dc  size 16  kind objc
; ======================================================================
  1000737dc  adrp    x8, #0x10041f000
  1000737e0  ldrsw   x8, [x8, #0xd3c]                         ; ivar offset ADButtonWithFont._coins (+0x9c)
  1000737e4  ldr     w0, [x0, x8]                             ; w0 = self->_coins
  1000737e8  ret

; ======================================================================
; -[ADButtonWithFont setCoins:]
; address 0x1000737ec  size 16  kind objc
; ======================================================================
  1000737ec  adrp    x8, #0x10041f000
  1000737f0  ldrsw   x8, [x8, #0xd3c]                         ; ivar offset ADButtonWithFont._coins (+0x9c)
  1000737f4  str     w2, [x0, x8]                             ; self->_coins = arg1
  1000737f8  ret

; ======================================================================
; -[ADButtonWithFont .cxx_destruct]
; address 0x1000737fc  size 104  kind objc
; ======================================================================
  1000737fc  stp     x20, x19, [sp, #-0x20]!
  100073800  stp     x29, x30, [sp, #0x10]
  100073804  add     x29, sp, #0x10
  100073808  mov     x19, x0
  10007380c  adrp    x8, #0x10041f000
  100073810  ldrsw   x8, [x8, #0xd34]                         ; ivar offset ADButtonWithFont._glow (+0xb0)
  100073814  add     x0, x19, x8
  100073818  mov     x1, #0
  10007381c  bl      _objc_storeStrong
  100073820  adrp    x8, #0x10041f000
  100073824  ldrsw   x8, [x8, #0xd30]                         ; ivar offset ADButtonWithFont._fontName (+0xa8)
  100073828  add     x0, x19, x8
  10007382c  mov     x1, #0
  100073830  bl      _objc_storeStrong
  100073834  adrp    x8, #0x10041f000
  100073838  ldrsw   x8, [x8, #0xd2c]                         ; ivar offset ADButtonWithFont._fontSize (+0xa0)
  10007383c  add     x0, x19, x8
  100073840  mov     x1, #0
  100073844  bl      _objc_storeStrong
  100073848  mov     x1, #0
  10007384c  adrp    x8, #0x10041f000
  100073850  ldrsw   x8, [x8, #0xd28]                         ; ivar offset ADButtonWithFont.wantedTitle (+0x90)
  100073854  add     x0, x19, x8
  100073858  ldp     x29, x30, [sp, #0x10]
  10007385c  ldp     x20, x19, [sp], #0x20
  100073860  b       _objc_storeStrong
