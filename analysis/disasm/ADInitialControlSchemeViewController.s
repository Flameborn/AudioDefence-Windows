// unit ADInitialControlSchemeViewController — 35 functions
//   0x100005fa4     140  -[ADInitialControlSchemeViewController initWithNibName:bundle:]
//   0x100006030    1876  -[ADInitialControlSchemeViewController viewDidLoad]
//   0x100006784      28  -[ADInitialControlSchemeViewController loadView]
//   0x1000067a0      60  -[ADInitialControlSchemeViewController didReceiveMemoryWarning]
//   0x1000067dc     140  -[ADInitialControlSchemeViewController tiltControl:]
//   0x100006868     140  -[ADInitialControlSchemeViewController gyroControl:]
//   0x1000068f4     140  -[ADInitialControlSchemeViewController buttonControl:]
//   0x100006980     160  -[ADInitialControlSchemeViewController goToMainMenu]
//   0x100006a20      16  -[ADInitialControlSchemeViewController swipeDescription]
//   0x100006a30      56  -[ADInitialControlSchemeViewController setSwipeDescription:]
//   0x100006a68      16  -[ADInitialControlSchemeViewController tiltDescription]
//   0x100006a78      56  -[ADInitialControlSchemeViewController setTiltDescription:]
//   0x100006ab0      16  -[ADInitialControlSchemeViewController gyroDescription]
//   0x100006ac0      56  -[ADInitialControlSchemeViewController setGyroDescription:]
//   0x100006af8      16  -[ADInitialControlSchemeViewController descriptionText]
//   0x100006b08      56  -[ADInitialControlSchemeViewController setDescriptionText:]
//   0x100006b40      16  -[ADInitialControlSchemeViewController gyroButton]
//   0x100006b50      56  -[ADInitialControlSchemeViewController setGyroButton:]
//   0x100006b88      16  -[ADInitialControlSchemeViewController gyroTextButton]
//   0x100006b98      56  -[ADInitialControlSchemeViewController setGyroTextButton:]
//   0x100006bd0      16  -[ADInitialControlSchemeViewController tiltButton]
//   0x100006be0      56  -[ADInitialControlSchemeViewController setTiltButton:]
//   0x100006c18      16  -[ADInitialControlSchemeViewController tiltTextButton]
//   0x100006c28      56  -[ADInitialControlSchemeViewController setTiltTextButton:]
//   0x100006c60      16  -[ADInitialControlSchemeViewController swipeButton]
//   0x100006c70      56  -[ADInitialControlSchemeViewController setSwipeButton:]
//   0x100006ca8      16  -[ADInitialControlSchemeViewController swipeTextButton]
//   0x100006cb8      56  -[ADInitialControlSchemeViewController setSwipeTextButton:]
//   0x100006cf0      16  -[ADInitialControlSchemeViewController titleLabel]
//   0x100006d00      56  -[ADInitialControlSchemeViewController setTitleLabel:]
//   0x100006d38      16  -[ADInitialControlSchemeViewController subTitleLabel]
//   0x100006d48      56  -[ADInitialControlSchemeViewController setSubTitleLabel:]
//   0x100006d80      16  -[ADInitialControlSchemeViewController recommededLabel]
//   0x100006d90      56  -[ADInitialControlSchemeViewController setRecommededLabel:]
//   0x100006dc8     284  -[ADInitialControlSchemeViewController .cxx_destruct]

; ======================================================================
; -[ADInitialControlSchemeViewController initWithNibName:bundle:]
; address 0x100005fa4  size 140  kind objc
; ======================================================================
  100005fa4  stp     x22, x21, [sp, #-0x30]!
  100005fa8  stp     x20, x19, [sp, #0x10]
  100005fac  stp     x29, x30, [sp, #0x20]
  100005fb0  add     x29, sp, #0x20
  100005fb4  sub     sp, sp, #0x10
  100005fb8  mov     x20, x3
  100005fbc  mov     x21, x0
  100005fc0  mov     x0, x2
  100005fc4  bl      _objc_retain
  100005fc8  mov     x19, x0
  100005fcc  str     x21, [sp]
  100005fd0  adrp    x8, #0x10041e000
  100005fd4  ldr     x8, [x8, #0xbc0]
  100005fd8  str     x8, [sp, #8]
  100005fdc  adrp    x8, #0x100416000
  100005fe0  nop
  100005fe4  ldr     x1, [x8, #0xb40]
  100005fe8  mov     x0, sp
  100005fec  mov     x2, x19
  100005ff0  mov     x3, x20
  100005ff4  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100005ff8  mov     x20, x0
  100005ffc  mov     x0, x19
  100006000  bl      _objc_release
  100006004  mov     x0, x20
  100006008  sub     sp, x29, #0x20
  10000600c  ldp     x29, x30, [sp, #0x20]
  100006010  ldp     x20, x19, [sp, #0x10]
  100006014  ldp     x22, x21, [sp], #0x30
  100006018  ret
  10000601c  mov     x20, x0
  100006020  mov     x0, x19
  100006024  bl      _objc_release
  100006028  mov     x0, x20
  10000602c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInitialControlSchemeViewController viewDidLoad]
; address 0x100006030  size 1876  kind objc
; ======================================================================
  100006030  stp     x28, x27, [sp, #-0x60]!
  100006034  stp     x26, x25, [sp, #0x10]
  100006038  stp     x24, x23, [sp, #0x20]
  10000603c  stp     x22, x21, [sp, #0x30]
  100006040  stp     x20, x19, [sp, #0x40]
  100006044  stp     x29, x30, [sp, #0x50]
  100006048  add     x29, sp, #0x50
  10000604c  sub     sp, sp, #0x20
  100006050  mov     x19, x0
  100006054  str     x19, [sp, #0x10]
  100006058  adrp    x8, #0x10041e000
  10000605c  ldr     x8, [x8, #0xbc0]
  100006060  str     x8, [sp, #0x18]
  100006064  adrp    x8, #0x100416000
  100006068  nop
  10000606c  ldr     x1, [x8, #0xb48]
  100006070  add     x0, sp, #0x10
  100006074  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100006078  adrp    x8, #0x100416000
  10000607c  nop
  100006080  ldr     x23, [x8, #0xb50]
  100006084  mov     x0, x19
  100006088  mov     x1, x23
  10000608c  bl      _objc_msgSend                            ; [self swipeDescription]
  100006090  mov     x29, x29
  100006094  bl      _objc_retainAutoreleasedReturnValue
  100006098  mov     x24, x0
  10000609c  adrp    x28, #0x10041d000
  1000060a0  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  1000060a4  adrp    x8, #0x100416000
  1000060a8  nop
  1000060ac  ldr     x21, [x8, #0xb58]
  1000060b0  mov     x1, x21
  1000060b4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000060b8  mov     x29, x29
  1000060bc  bl      _objc_retainAutoreleasedReturnValue
  1000060c0  mov     x25, x0
  1000060c4  adrp    x8, #0x100416000
  1000060c8  nop
  1000060cc  ldr     x20, [x8, #0xb60]
  1000060d0  mov     x4, #0
  1000060d4  adrp    x2, #0x1003b9000
  1000060d8  add     x2, x2, #0x850                           ; @"SWIPE_DESCRIPTION"
  1000060dc  adrp    x3, #0x1003b9000
  1000060e0  add     x3, x3, #0x870                           ; @""
  1000060e4  mov     x1, x20
  1000060e8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]
  1000060ec  mov     x29, x29
  1000060f0  bl      _objc_retainAutoreleasedReturnValue
  1000060f4  mov     x26, x0
  1000060f8  adrp    x8, #0x100416000
  1000060fc  nop
  100006100  ldr     x1, [x8, #0xb68]
  100006104  str     x1, [sp, #8]
  100006108  mov     x0, x24
  10000610c  mov     x2, x26
  100006110  bl      _objc_msgSend                            ; [[self swipeDescription] setText:[[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]]
  100006114  mov     x0, x26
  100006118  bl      _objc_release
  10000611c  mov     x0, x25
  100006120  bl      _objc_release
  100006124  mov     x0, x24
  100006128  bl      _objc_release
  10000612c  adrp    x8, #0x100416000
  100006130  nop
  100006134  ldr     x24, [x8, #0xb70]
  100006138  mov     x0, x19
  10000613c  mov     x1, x24
  100006140  bl      _objc_msgSend                            ; [self tiltDescription]
  100006144  mov     x29, x29
  100006148  bl      _objc_retainAutoreleasedReturnValue
  10000614c  mov     x25, x0
  100006150  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  100006154  mov     x1, x21
  100006158  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10000615c  mov     x29, x29
  100006160  bl      _objc_retainAutoreleasedReturnValue
  100006164  mov     x26, x0
  100006168  mov     x4, #0
  10000616c  adrp    x2, #0x1003b9000
  100006170  add     x2, x2, #0x890                           ; @"TILT_DESCRIPTION"
  100006174  adrp    x3, #0x1003b9000
  100006178  add     x3, x3, #0x870                           ; @""
  10000617c  mov     x1, x20
  100006180  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]
  100006184  mov     x29, x29
  100006188  bl      _objc_retainAutoreleasedReturnValue
  10000618c  mov     x27, x0
  100006190  mov     x0, x25
  100006194  ldr     x1, [sp, #8]
  100006198  mov     x2, x27
  10000619c  bl      _objc_msgSend                            ; [[self tiltDescription] setText:[[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]]
  1000061a0  mov     x0, x27
  1000061a4  bl      _objc_release
  1000061a8  mov     x0, x26
  1000061ac  bl      _objc_release
  1000061b0  mov     x0, x25
  1000061b4  bl      _objc_release
  1000061b8  adrp    x8, #0x100416000
  1000061bc  nop
  1000061c0  ldr     x25, [x8, #0xb78]
  1000061c4  mov     x0, x19
  1000061c8  mov     x1, x25
  1000061cc  bl      _objc_msgSend                            ; [self gyroDescription]
  1000061d0  mov     x29, x29
  1000061d4  bl      _objc_retainAutoreleasedReturnValue
  1000061d8  mov     x26, x0
  1000061dc  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  1000061e0  mov     x1, x21
  1000061e4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000061e8  mov     x22, x28
  1000061ec  mov     x29, x29
  1000061f0  bl      _objc_retainAutoreleasedReturnValue
  1000061f4  mov     x27, x0
  1000061f8  mov     x4, #0
  1000061fc  adrp    x2, #0x1003b9000
  100006200  add     x2, x2, #0x8b0                           ; @"GYRO_DESCRIPTION"
  100006204  adrp    x3, #0x1003b9000
  100006208  add     x3, x3, #0x870                           ; @""
  10000620c  mov     x1, x20
  100006210  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]
  100006214  mov     x29, x29
  100006218  bl      _objc_retainAutoreleasedReturnValue
  10000621c  mov     x28, x0
  100006220  mov     x0, x26
  100006224  ldr     x1, [sp, #8]
  100006228  mov     x2, x28
  10000622c  bl      _objc_msgSend                            ; [[self gyroDescription] setText:[[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]]
  100006230  mov     x0, x28
  100006234  bl      _objc_release
  100006238  mov     x0, x27
  10000623c  bl      _objc_release
  100006240  mov     x0, x26
  100006244  bl      _objc_release
  100006248  adrp    x8, #0x100416000
  10000624c  nop
  100006250  ldr     x1, [x8, #0xb80]
  100006254  mov     x0, x19
  100006258  bl      _objc_msgSend                            ; [self titleLabel]
  10000625c  mov     x29, x29
  100006260  bl      _objc_retainAutoreleasedReturnValue
  100006264  mov     x27, x0
  100006268  adrp    x8, #0x100416000
  10000626c  nop
  100006270  ldr     x26, [x8, #0xb88]
  100006274  mov     x1, x26
  100006278  bl      _objc_msgSend                            ; [[self titleLabel] setupAsTitle]
  10000627c  mov     x0, x27
  100006280  bl      _objc_release
  100006284  adrp    x8, #0x100416000
  100006288  nop
  10000628c  ldr     x1, [x8, #0xb90]
  100006290  mov     x0, x19
  100006294  bl      _objc_msgSend                            ; [self subTitleLabel]
  100006298  mov     x29, x29
  10000629c  bl      _objc_retainAutoreleasedReturnValue
  1000062a0  mov     x27, x0
  1000062a4  mov     x1, x26
  1000062a8  bl      _objc_msgSend                            ; [[self subTitleLabel] setupAsTitle]
  1000062ac  mov     x28, x22
  1000062b0  mov     x0, x27
  1000062b4  bl      _objc_release
  1000062b8  adrp    x8, #0x100416000
  1000062bc  nop
  1000062c0  ldr     x1, [x8, #0xb98]
  1000062c4  mov     x0, x19
  1000062c8  bl      _objc_msgSend                            ; [self recommededLabel]
  1000062cc  mov     x29, x29
  1000062d0  bl      _objc_retainAutoreleasedReturnValue
  1000062d4  mov     x26, x0
  1000062d8  adrp    x8, #0x100416000
  1000062dc  nop
  1000062e0  ldr     x1, [x8, #0xba0]
  1000062e4  bl      _objc_msgSend                            ; [[self recommededLabel] setupAsMain]
  1000062e8  mov     x0, x26
  1000062ec  bl      _objc_release
  1000062f0  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  1000062f4  cbz     w0, loc_1000065c8                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  1000062f8  mov     x0, x19
  1000062fc  mov     x1, x23
  100006300  bl      _objc_msgSend                            ; [self swipeDescription]
  100006304  mov     x29, x29
  100006308  bl      _objc_retainAutoreleasedReturnValue
  10000630c  mov     x26, x0
  100006310  adrp    x8, #0x100416000
  100006314  nop
  100006318  ldr     x23, [x8, #0xba8]
  10000631c  mov     w2, #1
  100006320  mov     x1, x23
  100006324  bl      _objc_msgSend                            ; [[self swipeDescription] setHidden:1]
  100006328  mov     x0, x26
  10000632c  bl      _objc_release
  100006330  mov     x0, x19
  100006334  mov     x1, x24
  100006338  bl      _objc_msgSend                            ; [self tiltDescription]
  10000633c  mov     x29, x29
  100006340  bl      _objc_retainAutoreleasedReturnValue
  100006344  mov     x24, x0
  100006348  mov     w2, #1
  10000634c  mov     x1, x23
  100006350  bl      _objc_msgSend                            ; [[self tiltDescription] setHidden:1]
  100006354  mov     x0, x24
  100006358  bl      _objc_release
  10000635c  mov     x0, x19
  100006360  mov     x1, x25
  100006364  bl      _objc_msgSend                            ; [self gyroDescription]
  100006368  mov     x29, x29
  10000636c  bl      _objc_retainAutoreleasedReturnValue
  100006370  mov     x24, x0
  100006374  mov     w2, #1
  100006378  mov     x1, x23
  10000637c  bl      _objc_msgSend                            ; [[self gyroDescription] setHidden:1]
  100006380  mov     x0, x24
  100006384  bl      _objc_release
  100006388  adrp    x8, #0x100416000
  10000638c  nop
  100006390  ldr     x1, [x8, #0xbb0]
  100006394  mov     x0, x19
  100006398  bl      _objc_msgSend                            ; [self gyroTextButton]
  10000639c  mov     x29, x29
  1000063a0  bl      _objc_retainAutoreleasedReturnValue
  1000063a4  mov     x24, x0
  1000063a8  mov     w2, #1
  1000063ac  mov     x1, x23
  1000063b0  bl      _objc_msgSend                            ; [[self gyroTextButton] setHidden:1]
  1000063b4  mov     x0, x24
  1000063b8  bl      _objc_release
  1000063bc  adrp    x8, #0x100416000
  1000063c0  nop
  1000063c4  ldr     x1, [x8, #0xbb8]
  1000063c8  mov     x0, x19
  1000063cc  bl      _objc_msgSend                            ; [self tiltTextButton]
  1000063d0  mov     x29, x29
  1000063d4  bl      _objc_retainAutoreleasedReturnValue
  1000063d8  mov     x24, x0
  1000063dc  mov     w2, #1
  1000063e0  mov     x1, x23
  1000063e4  bl      _objc_msgSend                            ; [[self tiltTextButton] setHidden:1]
  1000063e8  mov     x0, x24
  1000063ec  bl      _objc_release
  1000063f0  adrp    x8, #0x100416000
  1000063f4  nop
  1000063f8  ldr     x1, [x8, #0xbc0]
  1000063fc  mov     x0, x19
  100006400  bl      _objc_msgSend                            ; [self swipeTextButton]
  100006404  mov     x29, x29
  100006408  bl      _objc_retainAutoreleasedReturnValue
  10000640c  mov     x24, x0
  100006410  mov     w2, #1
  100006414  mov     x1, x23
  100006418  bl      _objc_msgSend                            ; [[self swipeTextButton] setHidden:1]
  10000641c  mov     x0, x24
  100006420  bl      _objc_release
  100006424  adrp    x8, #0x100416000
  100006428  nop
  10000642c  ldr     x1, [x8, #0xbc8]
  100006430  mov     x0, x19
  100006434  bl      _objc_msgSend                            ; [self gyroButton]
  100006438  mov     x29, x29
  10000643c  bl      _objc_retainAutoreleasedReturnValue
  100006440  mov     x24, x0
  100006444  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  100006448  mov     x1, x21
  10000644c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100006450  mov     x29, x29
  100006454  bl      _objc_retainAutoreleasedReturnValue
  100006458  mov     x25, x0
  10000645c  mov     x4, #0
  100006460  adrp    x2, #0x1003b9000
  100006464  add     x2, x2, #0x8b0                           ; @"GYRO_DESCRIPTION"
  100006468  adrp    x3, #0x1003b9000
  10000646c  add     x3, x3, #0x870                           ; @""
  100006470  mov     x1, x20
  100006474  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]
  100006478  mov     x29, x29
  10000647c  bl      _objc_retainAutoreleasedReturnValue
  100006480  mov     x26, x0
  100006484  adrp    x8, #0x100416000
  100006488  nop
  10000648c  ldr     x23, [x8, #0xbd0]
  100006490  mov     x0, x24
  100006494  mov     x1, x23
  100006498  mov     x2, x26
  10000649c  bl      _objc_msgSend                            ; [[self gyroButton] setAccessibilityHint:[[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]]
  1000064a0  mov     x0, x26
  1000064a4  bl      _objc_release
  1000064a8  mov     x0, x25
  1000064ac  bl      _objc_release
  1000064b0  mov     x0, x24
  1000064b4  bl      _objc_release
  1000064b8  adrp    x8, #0x100416000
  1000064bc  nop
  1000064c0  ldr     x1, [x8, #0xbd8]
  1000064c4  mov     x0, x19
  1000064c8  bl      _objc_msgSend                            ; [self swipeButton]
  1000064cc  mov     x29, x29
  1000064d0  bl      _objc_retainAutoreleasedReturnValue
  1000064d4  mov     x24, x0
  1000064d8  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  1000064dc  mov     x1, x21
  1000064e0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000064e4  mov     x29, x29
  1000064e8  bl      _objc_retainAutoreleasedReturnValue
  1000064ec  mov     x25, x0
  1000064f0  mov     x4, #0
  1000064f4  adrp    x2, #0x1003b9000
  1000064f8  add     x2, x2, #0x850                           ; @"SWIPE_DESCRIPTION"
  1000064fc  adrp    x3, #0x1003b9000
  100006500  add     x3, x3, #0x870                           ; @""
  100006504  mov     x1, x20
  100006508  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]
  10000650c  mov     x29, x29
  100006510  bl      _objc_retainAutoreleasedReturnValue
  100006514  mov     x26, x0
  100006518  mov     x0, x24
  10000651c  mov     x1, x23
  100006520  mov     x2, x26
  100006524  bl      _objc_msgSend                            ; [[self swipeButton] setAccessibilityHint:[[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]]
  100006528  mov     x0, x26
  10000652c  bl      _objc_release
  100006530  mov     x0, x25
  100006534  bl      _objc_release
  100006538  mov     x0, x24
  10000653c  bl      _objc_release
  100006540  adrp    x8, #0x100416000
  100006544  nop
  100006548  ldr     x1, [x8, #0xbe0]
  10000654c  mov     x0, x19
  100006550  bl      _objc_msgSend                            ; [self tiltButton]
  100006554  mov     x29, x29
  100006558  bl      _objc_retainAutoreleasedReturnValue
  10000655c  mov     x24, x0
  100006560  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  100006564  mov     x1, x21
  100006568  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10000656c  mov     x29, x29
  100006570  bl      _objc_retainAutoreleasedReturnValue
  100006574  mov     x25, x0
  100006578  mov     x4, #0
  10000657c  adrp    x2, #0x1003b9000
  100006580  add     x2, x2, #0x890                           ; @"TILT_DESCRIPTION"
  100006584  adrp    x3, #0x1003b9000
  100006588  add     x3, x3, #0x870                           ; @""
  10000658c  mov     x1, x20
  100006590  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]
  100006594  mov     x29, x29
  100006598  bl      _objc_retainAutoreleasedReturnValue
  10000659c  mov     x26, x0
  1000065a0  mov     x0, x24
  1000065a4  mov     x1, x23
  1000065a8  mov     x2, x26
  1000065ac  bl      _objc_msgSend                            ; [[self tiltButton] setAccessibilityHint:[[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]]
  1000065b0  mov     x0, x26
  1000065b4  bl      _objc_release
  1000065b8  mov     x0, x25
  1000065bc  bl      _objc_release
  1000065c0  mov     x0, x24
  1000065c4  bl      _objc_release
loc_1000065c8:
  1000065c8  adrp    x8, #0x100416000
  1000065cc  nop
  1000065d0  ldr     x1, [x8, #0xbe8]
  1000065d4  mov     x0, x19
  1000065d8  bl      _objc_msgSend                            ; [self descriptionText]
  1000065dc  mov     x29, x29
  1000065e0  bl      _objc_retainAutoreleasedReturnValue
  1000065e4  mov     x23, x0
  1000065e8  ldr     x0, [x28, #0xee8]                        ; class NSBundle
  1000065ec  mov     x1, x21
  1000065f0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000065f4  mov     x29, x29
  1000065f8  bl      _objc_retainAutoreleasedReturnValue
  1000065fc  mov     x21, x0
  100006600  mov     x4, #0
  100006604  adrp    x2, #0x1003b9000
  100006608  add     x2, x2, #0x8d0                           ; @"INITIAL_PAGE_TEXT"
  10000660c  adrp    x3, #0x1003b9000
  100006610  add     x3, x3, #0x870                           ; @""
  100006614  mov     x1, x20
  100006618  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"INITIAL_PAGE_TEXT" value:@"" table:0]
  10000661c  mov     x29, x29
  100006620  bl      _objc_retainAutoreleasedReturnValue
  100006624  mov     x20, x0
  100006628  mov     x0, x23
  10000662c  ldr     x1, [sp, #8]
  100006630  mov     x2, x20
  100006634  bl      _objc_msgSend                            ; [[self descriptionText] setText:[[NSBundle mainBundle] localizedStringForKey:@"INITIAL_PAGE_TEXT" value:@"" table:0]]
  100006638  mov     x0, x20
  10000663c  bl      _objc_release
  100006640  mov     x0, x21
  100006644  bl      _objc_release
  100006648  mov     x0, x23
  10000664c  bl      _objc_release
  100006650  sub     sp, x29, #0x50
  100006654  ldp     x29, x30, [sp, #0x50]
  100006658  ldp     x20, x19, [sp, #0x40]
  10000665c  ldp     x22, x21, [sp, #0x30]
  100006660  ldp     x24, x23, [sp, #0x20]
  100006664  ldp     x26, x25, [sp, #0x10]
  100006668  ldp     x28, x27, [sp], #0x60
  10000666c  ret
  100006670  b       loc_100006750
  100006674  mov     x19, x0
  100006678  b       loc_10000676c
  10000667c  b       loc_100006760
  100006680  mov     x19, x0
  100006684  b       loc_1000066a4
  100006688  mov     x19, x0
  10000668c  b       loc_10000669c
  100006690  mov     x19, x0
  100006694  mov     x0, x27
  100006698  bl      _objc_release
loc_10000669c:
  10000669c  mov     x0, x26
  1000066a0  bl      _objc_release
loc_1000066a4:
  1000066a4  mov     x0, x25
  1000066a8  b       loc_100006778
  1000066ac  b       loc_100006710
  1000066b0  mov     x19, x0
  1000066b4  b       loc_1000066c4
  1000066b8  mov     x19, x0
  1000066bc  mov     x0, x28
  1000066c0  bl      _objc_release
loc_1000066c4:
  1000066c4  mov     x0, x27
  1000066c8  bl      _objc_release
  1000066cc  b       loc_100006714
  1000066d0  b       loc_1000066d4
loc_1000066d4:
  1000066d4  mov     x19, x0
  1000066d8  mov     x0, x27
  1000066dc  b       loc_100006778
  1000066e0  b       loc_100006710
  1000066e4  mov     x19, x0
  1000066e8  b       loc_100006708
  1000066ec  mov     x19, x0
  1000066f0  b       loc_100006700
  1000066f4  mov     x19, x0
  1000066f8  mov     x0, x20
  1000066fc  bl      _objc_release
loc_100006700:
  100006700  mov     x0, x21
  100006704  bl      _objc_release
loc_100006708:
  100006708  mov     x0, x23
  10000670c  b       loc_100006778
loc_100006710:
  100006710  mov     x19, x0
loc_100006714:
  100006714  mov     x0, x26
  100006718  b       loc_100006778
  10000671c  b       loc_100006750
  100006720  b       loc_100006750
  100006724  b       loc_100006750
  100006728  b       loc_100006750
  10000672c  b       loc_100006750
  100006730  b       loc_100006750
  100006734  mov     x19, x0
  100006738  b       loc_10000676c
  10000673c  b       loc_100006760
  100006740  b       loc_100006750
  100006744  mov     x19, x0
  100006748  b       loc_10000676c
  10000674c  b       loc_100006760
loc_100006750:
  100006750  mov     x19, x0
  100006754  b       loc_100006774
  100006758  mov     x19, x0
  10000675c  b       loc_10000676c
loc_100006760:
  100006760  mov     x19, x0
  100006764  mov     x0, x26
  100006768  bl      _objc_release
loc_10000676c:
  10000676c  mov     x0, x25
  100006770  bl      _objc_release
loc_100006774:
  100006774  mov     x0, x24
loc_100006778:
  100006778  bl      _objc_release
  10000677c  mov     x0, x19
  100006780  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInitialControlSchemeViewController loadView]
; address 0x100006784  size 28  kind objc
; ======================================================================
  100006784  mov     x3, #0
  100006788  adrp    x8, #0x100416000
  10000678c  nop
  100006790  ldr     x1, [x8, #0xbf0]
  100006794  adrp    x2, #0x1003b9000
  100006798  add     x2, x2, #0x8f0                           ; @"ADInitialControlSchemeViewController"
  10000679c  b       _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADInitialControlSchemeViewController" WithTagDictionary:0]

; ======================================================================
; -[ADInitialControlSchemeViewController didReceiveMemoryWarning]
; address 0x1000067a0  size 60  kind objc
; ======================================================================
  1000067a0  stp     x29, x30, [sp, #-0x10]!
  1000067a4  mov     x29, sp
  1000067a8  sub     sp, sp, #0x10
  1000067ac  str     x0, [sp]
  1000067b0  adrp    x8, #0x10041e000
  1000067b4  ldr     x8, [x8, #0xbc0]
  1000067b8  str     x8, [sp, #8]
  1000067bc  adrp    x8, #0x100416000
  1000067c0  nop
  1000067c4  ldr     x1, [x8, #0xbf8]
  1000067c8  mov     x0, sp
  1000067cc  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  1000067d0  mov     sp, x29
  1000067d4  ldp     x29, x30, [sp], #0x10
  1000067d8  ret

; ======================================================================
; -[ADInitialControlSchemeViewController tiltControl:]
; address 0x1000067dc  size 140  kind objc
; ======================================================================
  1000067dc  stp     x20, x19, [sp, #-0x20]!
  1000067e0  stp     x29, x30, [sp, #0x10]
  1000067e4  add     x29, sp, #0x10
  1000067e8  mov     x19, x0
  1000067ec  adrp    x8, #0x10041d000
  1000067f0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000067f4  adrp    x8, #0x100416000
  1000067f8  nop
  1000067fc  ldr     x1, [x8, #0xc00]
  100006800  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100006804  mov     x29, x29
  100006808  bl      _objc_retainAutoreleasedReturnValue
  10000680c  mov     x20, x0
  100006810  adrp    x8, #0x100416000
  100006814  nop
  100006818  ldr     x1, [x8, #0xc08]
  10000681c  mov     w2, #3
  100006820  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:3]
  100006824  mov     x0, x20
  100006828  bl      _objc_release
  10000682c  adrp    x8, #0x100416000
  100006830  nop
  100006834  ldr     x1, [x8, #0xc10]
  100006838  mov     x0, x19
  10000683c  bl      _objc_msgSend                            ; [self goToMainMenu]
  100006840  ldp     x29, x30, [sp, #0x10]
  100006844  ldp     x20, x19, [sp], #0x20
  100006848  ret
  10000684c  mov     x19, x0
  100006850  b       loc_100006860
  100006854  mov     x19, x0
  100006858  mov     x0, x20
  10000685c  bl      _objc_release
loc_100006860:
  100006860  mov     x0, x19
  100006864  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInitialControlSchemeViewController gyroControl:]
; address 0x100006868  size 140  kind objc
; ======================================================================
  100006868  stp     x20, x19, [sp, #-0x20]!
  10000686c  stp     x29, x30, [sp, #0x10]
  100006870  add     x29, sp, #0x10
  100006874  mov     x19, x0
  100006878  adrp    x8, #0x10041d000
  10000687c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100006880  adrp    x8, #0x100416000
  100006884  nop
  100006888  ldr     x1, [x8, #0xc00]
  10000688c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100006890  mov     x29, x29
  100006894  bl      _objc_retainAutoreleasedReturnValue
  100006898  mov     x20, x0
  10000689c  adrp    x8, #0x100416000
  1000068a0  nop
  1000068a4  ldr     x1, [x8, #0xc08]
  1000068a8  mov     w2, #1
  1000068ac  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:1]
  1000068b0  mov     x0, x20
  1000068b4  bl      _objc_release
  1000068b8  adrp    x8, #0x100416000
  1000068bc  nop
  1000068c0  ldr     x1, [x8, #0xc10]
  1000068c4  mov     x0, x19
  1000068c8  bl      _objc_msgSend                            ; [self goToMainMenu]
  1000068cc  ldp     x29, x30, [sp, #0x10]
  1000068d0  ldp     x20, x19, [sp], #0x20
  1000068d4  ret
  1000068d8  mov     x19, x0
  1000068dc  b       loc_1000068ec
  1000068e0  mov     x19, x0
  1000068e4  mov     x0, x20
  1000068e8  bl      _objc_release
loc_1000068ec:
  1000068ec  mov     x0, x19
  1000068f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInitialControlSchemeViewController buttonControl:]
; address 0x1000068f4  size 140  kind objc
; ======================================================================
  1000068f4  stp     x20, x19, [sp, #-0x20]!
  1000068f8  stp     x29, x30, [sp, #0x10]
  1000068fc  add     x29, sp, #0x10
  100006900  mov     x19, x0
  100006904  adrp    x8, #0x10041d000
  100006908  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10000690c  adrp    x8, #0x100416000
  100006910  nop
  100006914  ldr     x1, [x8, #0xc00]
  100006918  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10000691c  mov     x29, x29
  100006920  bl      _objc_retainAutoreleasedReturnValue
  100006924  mov     x20, x0
  100006928  adrp    x8, #0x100416000
  10000692c  nop
  100006930  ldr     x1, [x8, #0xc08]
  100006934  mov     w2, #2
  100006938  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:2]
  10000693c  mov     x0, x20
  100006940  bl      _objc_release
  100006944  adrp    x8, #0x100416000
  100006948  nop
  10000694c  ldr     x1, [x8, #0xc10]
  100006950  mov     x0, x19
  100006954  bl      _objc_msgSend                            ; [self goToMainMenu]
  100006958  ldp     x29, x30, [sp, #0x10]
  10000695c  ldp     x20, x19, [sp], #0x20
  100006960  ret
  100006964  mov     x19, x0
  100006968  b       loc_100006978
  10000696c  mov     x19, x0
  100006970  mov     x0, x20
  100006974  bl      _objc_release
loc_100006978:
  100006978  mov     x0, x19
  10000697c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInitialControlSchemeViewController goToMainMenu]
; address 0x100006980  size 160  kind objc
; ======================================================================
  100006980  stp     x22, x21, [sp, #-0x30]!
  100006984  stp     x20, x19, [sp, #0x10]
  100006988  stp     x29, x30, [sp, #0x20]
  10000698c  add     x29, sp, #0x20
  100006990  adrp    x8, #0x10041d000
  100006994  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100006998  adrp    x8, #0x100416000
  10000699c  nop
  1000069a0  ldr     x1, [x8, #0xb28]
  1000069a4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000069a8  mov     x29, x29
  1000069ac  bl      _objc_retainAutoreleasedReturnValue
  1000069b0  mov     x19, x0
  1000069b4  adrp    x8, #0x100416000
  1000069b8  nop
  1000069bc  ldr     x1, [x8, #0xc18]
  1000069c0  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000069c4  mov     x29, x29
  1000069c8  bl      _objc_retainAutoreleasedReturnValue
  1000069cc  mov     x20, x0
  1000069d0  adrp    x8, #0x100416000
  1000069d4  nop
  1000069d8  ldr     x1, [x8, #0xc20]
  1000069dc  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToOpener]
  1000069e0  mov     x0, x20
  1000069e4  bl      _objc_release
  1000069e8  mov     x0, x19
  1000069ec  ldp     x29, x30, [sp, #0x20]
  1000069f0  ldp     x20, x19, [sp, #0x10]
  1000069f4  ldp     x22, x21, [sp], #0x30
  1000069f8  b       _objc_release
  1000069fc  mov     x21, x0
  100006a00  b       loc_100006a10
  100006a04  mov     x21, x0
  100006a08  mov     x0, x20
  100006a0c  bl      _objc_release
loc_100006a10:
  100006a10  mov     x0, x19
  100006a14  bl      _objc_release
  100006a18  mov     x0, x21
  100006a1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInitialControlSchemeViewController swipeDescription]
; address 0x100006a20  size 16  kind objc
; ======================================================================
  100006a20  adrp    x8, #0x10041f000
  100006a24  ldrsw   x8, [x8, #0x474]                         ; ivar offset ADInitialControlSchemeViewController._swipeDescription (+0x140)
  100006a28  ldr     x0, [x0, x8]                             ; x0 = self->_swipeDescription
  100006a2c  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setSwipeDescription:]
; address 0x100006a30  size 56  kind objc
; ======================================================================
  100006a30  stp     x20, x19, [sp, #-0x20]!
  100006a34  stp     x29, x30, [sp, #0x10]
  100006a38  add     x29, sp, #0x10
  100006a3c  mov     x19, x0
  100006a40  adrp    x8, #0x10041f000
  100006a44  ldrsw   x20, [x8, #0x474]                        ; ivar offset ADInitialControlSchemeViewController._swipeDescription (+0x140)
  100006a48  mov     x0, x2
  100006a4c  bl      _objc_retain
  100006a50  ldr     x8, [x19, x20]                           ; x8 = self->_swipeDescription
  100006a54  str     x0, [x19, x20]                           ; self->_swipeDescription = arg1
  100006a58  mov     x0, x8
  100006a5c  ldp     x29, x30, [sp, #0x10]
  100006a60  ldp     x20, x19, [sp], #0x20
  100006a64  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController tiltDescription]
; address 0x100006a68  size 16  kind objc
; ======================================================================
  100006a68  adrp    x8, #0x10041f000
  100006a6c  ldrsw   x8, [x8, #0x478]                         ; ivar offset ADInitialControlSchemeViewController._tiltDescription (+0x148)
  100006a70  ldr     x0, [x0, x8]                             ; x0 = self->_tiltDescription
  100006a74  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setTiltDescription:]
; address 0x100006a78  size 56  kind objc
; ======================================================================
  100006a78  stp     x20, x19, [sp, #-0x20]!
  100006a7c  stp     x29, x30, [sp, #0x10]
  100006a80  add     x29, sp, #0x10
  100006a84  mov     x19, x0
  100006a88  adrp    x8, #0x10041f000
  100006a8c  ldrsw   x20, [x8, #0x478]                        ; ivar offset ADInitialControlSchemeViewController._tiltDescription (+0x148)
  100006a90  mov     x0, x2
  100006a94  bl      _objc_retain
  100006a98  ldr     x8, [x19, x20]                           ; x8 = self->_tiltDescription
  100006a9c  str     x0, [x19, x20]                           ; self->_tiltDescription = arg1
  100006aa0  mov     x0, x8
  100006aa4  ldp     x29, x30, [sp, #0x10]
  100006aa8  ldp     x20, x19, [sp], #0x20
  100006aac  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController gyroDescription]
; address 0x100006ab0  size 16  kind objc
; ======================================================================
  100006ab0  adrp    x8, #0x10041f000
  100006ab4  ldrsw   x8, [x8, #0x47c]                         ; ivar offset ADInitialControlSchemeViewController._gyroDescription (+0x150)
  100006ab8  ldr     x0, [x0, x8]                             ; x0 = self->_gyroDescription
  100006abc  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setGyroDescription:]
; address 0x100006ac0  size 56  kind objc
; ======================================================================
  100006ac0  stp     x20, x19, [sp, #-0x20]!
  100006ac4  stp     x29, x30, [sp, #0x10]
  100006ac8  add     x29, sp, #0x10
  100006acc  mov     x19, x0
  100006ad0  adrp    x8, #0x10041f000
  100006ad4  ldrsw   x20, [x8, #0x47c]                        ; ivar offset ADInitialControlSchemeViewController._gyroDescription (+0x150)
  100006ad8  mov     x0, x2
  100006adc  bl      _objc_retain
  100006ae0  ldr     x8, [x19, x20]                           ; x8 = self->_gyroDescription
  100006ae4  str     x0, [x19, x20]                           ; self->_gyroDescription = arg1
  100006ae8  mov     x0, x8
  100006aec  ldp     x29, x30, [sp, #0x10]
  100006af0  ldp     x20, x19, [sp], #0x20
  100006af4  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController descriptionText]
; address 0x100006af8  size 16  kind objc
; ======================================================================
  100006af8  adrp    x8, #0x10041f000
  100006afc  ldrsw   x8, [x8, #0x480]                         ; ivar offset ADInitialControlSchemeViewController._descriptionText (+0x158)
  100006b00  ldr     x0, [x0, x8]                             ; x0 = self->_descriptionText
  100006b04  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setDescriptionText:]
; address 0x100006b08  size 56  kind objc
; ======================================================================
  100006b08  stp     x20, x19, [sp, #-0x20]!
  100006b0c  stp     x29, x30, [sp, #0x10]
  100006b10  add     x29, sp, #0x10
  100006b14  mov     x19, x0
  100006b18  adrp    x8, #0x10041f000
  100006b1c  ldrsw   x20, [x8, #0x480]                        ; ivar offset ADInitialControlSchemeViewController._descriptionText (+0x158)
  100006b20  mov     x0, x2
  100006b24  bl      _objc_retain
  100006b28  ldr     x8, [x19, x20]                           ; x8 = self->_descriptionText
  100006b2c  str     x0, [x19, x20]                           ; self->_descriptionText = arg1
  100006b30  mov     x0, x8
  100006b34  ldp     x29, x30, [sp, #0x10]
  100006b38  ldp     x20, x19, [sp], #0x20
  100006b3c  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController gyroButton]
; address 0x100006b40  size 16  kind objc
; ======================================================================
  100006b40  adrp    x8, #0x10041f000
  100006b44  ldrsw   x8, [x8, #0x484]                         ; ivar offset ADInitialControlSchemeViewController._gyroButton (+0x160)
  100006b48  ldr     x0, [x0, x8]                             ; x0 = self->_gyroButton
  100006b4c  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setGyroButton:]
; address 0x100006b50  size 56  kind objc
; ======================================================================
  100006b50  stp     x20, x19, [sp, #-0x20]!
  100006b54  stp     x29, x30, [sp, #0x10]
  100006b58  add     x29, sp, #0x10
  100006b5c  mov     x19, x0
  100006b60  adrp    x8, #0x10041f000
  100006b64  ldrsw   x20, [x8, #0x484]                        ; ivar offset ADInitialControlSchemeViewController._gyroButton (+0x160)
  100006b68  mov     x0, x2
  100006b6c  bl      _objc_retain
  100006b70  ldr     x8, [x19, x20]                           ; x8 = self->_gyroButton
  100006b74  str     x0, [x19, x20]                           ; self->_gyroButton = arg1
  100006b78  mov     x0, x8
  100006b7c  ldp     x29, x30, [sp, #0x10]
  100006b80  ldp     x20, x19, [sp], #0x20
  100006b84  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController gyroTextButton]
; address 0x100006b88  size 16  kind objc
; ======================================================================
  100006b88  adrp    x8, #0x10041f000
  100006b8c  ldrsw   x8, [x8, #0x488]                         ; ivar offset ADInitialControlSchemeViewController._gyroTextButton (+0x168)
  100006b90  ldr     x0, [x0, x8]                             ; x0 = self->_gyroTextButton
  100006b94  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setGyroTextButton:]
; address 0x100006b98  size 56  kind objc
; ======================================================================
  100006b98  stp     x20, x19, [sp, #-0x20]!
  100006b9c  stp     x29, x30, [sp, #0x10]
  100006ba0  add     x29, sp, #0x10
  100006ba4  mov     x19, x0
  100006ba8  adrp    x8, #0x10041f000
  100006bac  ldrsw   x20, [x8, #0x488]                        ; ivar offset ADInitialControlSchemeViewController._gyroTextButton (+0x168)
  100006bb0  mov     x0, x2
  100006bb4  bl      _objc_retain
  100006bb8  ldr     x8, [x19, x20]                           ; x8 = self->_gyroTextButton
  100006bbc  str     x0, [x19, x20]                           ; self->_gyroTextButton = arg1
  100006bc0  mov     x0, x8
  100006bc4  ldp     x29, x30, [sp, #0x10]
  100006bc8  ldp     x20, x19, [sp], #0x20
  100006bcc  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController tiltButton]
; address 0x100006bd0  size 16  kind objc
; ======================================================================
  100006bd0  adrp    x8, #0x10041f000
  100006bd4  ldrsw   x8, [x8, #0x48c]                         ; ivar offset ADInitialControlSchemeViewController._tiltButton (+0x170)
  100006bd8  ldr     x0, [x0, x8]                             ; x0 = self->_tiltButton
  100006bdc  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setTiltButton:]
; address 0x100006be0  size 56  kind objc
; ======================================================================
  100006be0  stp     x20, x19, [sp, #-0x20]!
  100006be4  stp     x29, x30, [sp, #0x10]
  100006be8  add     x29, sp, #0x10
  100006bec  mov     x19, x0
  100006bf0  adrp    x8, #0x10041f000
  100006bf4  ldrsw   x20, [x8, #0x48c]                        ; ivar offset ADInitialControlSchemeViewController._tiltButton (+0x170)
  100006bf8  mov     x0, x2
  100006bfc  bl      _objc_retain
  100006c00  ldr     x8, [x19, x20]                           ; x8 = self->_tiltButton
  100006c04  str     x0, [x19, x20]                           ; self->_tiltButton = arg1
  100006c08  mov     x0, x8
  100006c0c  ldp     x29, x30, [sp, #0x10]
  100006c10  ldp     x20, x19, [sp], #0x20
  100006c14  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController tiltTextButton]
; address 0x100006c18  size 16  kind objc
; ======================================================================
  100006c18  adrp    x8, #0x10041f000
  100006c1c  ldrsw   x8, [x8, #0x490]                         ; ivar offset ADInitialControlSchemeViewController._tiltTextButton (+0x178)
  100006c20  ldr     x0, [x0, x8]                             ; x0 = self->_tiltTextButton
  100006c24  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setTiltTextButton:]
; address 0x100006c28  size 56  kind objc
; ======================================================================
  100006c28  stp     x20, x19, [sp, #-0x20]!
  100006c2c  stp     x29, x30, [sp, #0x10]
  100006c30  add     x29, sp, #0x10
  100006c34  mov     x19, x0
  100006c38  adrp    x8, #0x10041f000
  100006c3c  ldrsw   x20, [x8, #0x490]                        ; ivar offset ADInitialControlSchemeViewController._tiltTextButton (+0x178)
  100006c40  mov     x0, x2
  100006c44  bl      _objc_retain
  100006c48  ldr     x8, [x19, x20]                           ; x8 = self->_tiltTextButton
  100006c4c  str     x0, [x19, x20]                           ; self->_tiltTextButton = arg1
  100006c50  mov     x0, x8
  100006c54  ldp     x29, x30, [sp, #0x10]
  100006c58  ldp     x20, x19, [sp], #0x20
  100006c5c  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController swipeButton]
; address 0x100006c60  size 16  kind objc
; ======================================================================
  100006c60  adrp    x8, #0x10041f000
  100006c64  ldrsw   x8, [x8, #0x494]                         ; ivar offset ADInitialControlSchemeViewController._swipeButton (+0x180)
  100006c68  ldr     x0, [x0, x8]                             ; x0 = self->_swipeButton
  100006c6c  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setSwipeButton:]
; address 0x100006c70  size 56  kind objc
; ======================================================================
  100006c70  stp     x20, x19, [sp, #-0x20]!
  100006c74  stp     x29, x30, [sp, #0x10]
  100006c78  add     x29, sp, #0x10
  100006c7c  mov     x19, x0
  100006c80  adrp    x8, #0x10041f000
  100006c84  ldrsw   x20, [x8, #0x494]                        ; ivar offset ADInitialControlSchemeViewController._swipeButton (+0x180)
  100006c88  mov     x0, x2
  100006c8c  bl      _objc_retain
  100006c90  ldr     x8, [x19, x20]                           ; x8 = self->_swipeButton
  100006c94  str     x0, [x19, x20]                           ; self->_swipeButton = arg1
  100006c98  mov     x0, x8
  100006c9c  ldp     x29, x30, [sp, #0x10]
  100006ca0  ldp     x20, x19, [sp], #0x20
  100006ca4  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController swipeTextButton]
; address 0x100006ca8  size 16  kind objc
; ======================================================================
  100006ca8  adrp    x8, #0x10041f000
  100006cac  ldrsw   x8, [x8, #0x498]                         ; ivar offset ADInitialControlSchemeViewController._swipeTextButton (+0x188)
  100006cb0  ldr     x0, [x0, x8]                             ; x0 = self->_swipeTextButton
  100006cb4  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setSwipeTextButton:]
; address 0x100006cb8  size 56  kind objc
; ======================================================================
  100006cb8  stp     x20, x19, [sp, #-0x20]!
  100006cbc  stp     x29, x30, [sp, #0x10]
  100006cc0  add     x29, sp, #0x10
  100006cc4  mov     x19, x0
  100006cc8  adrp    x8, #0x10041f000
  100006ccc  ldrsw   x20, [x8, #0x498]                        ; ivar offset ADInitialControlSchemeViewController._swipeTextButton (+0x188)
  100006cd0  mov     x0, x2
  100006cd4  bl      _objc_retain
  100006cd8  ldr     x8, [x19, x20]                           ; x8 = self->_swipeTextButton
  100006cdc  str     x0, [x19, x20]                           ; self->_swipeTextButton = arg1
  100006ce0  mov     x0, x8
  100006ce4  ldp     x29, x30, [sp, #0x10]
  100006ce8  ldp     x20, x19, [sp], #0x20
  100006cec  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController titleLabel]
; address 0x100006cf0  size 16  kind objc
; ======================================================================
  100006cf0  adrp    x8, #0x10041f000
  100006cf4  ldrsw   x8, [x8, #0x49c]                         ; ivar offset ADInitialControlSchemeViewController._titleLabel (+0x190)
  100006cf8  ldr     x0, [x0, x8]                             ; x0 = self->_titleLabel
  100006cfc  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setTitleLabel:]
; address 0x100006d00  size 56  kind objc
; ======================================================================
  100006d00  stp     x20, x19, [sp, #-0x20]!
  100006d04  stp     x29, x30, [sp, #0x10]
  100006d08  add     x29, sp, #0x10
  100006d0c  mov     x19, x0
  100006d10  adrp    x8, #0x10041f000
  100006d14  ldrsw   x20, [x8, #0x49c]                        ; ivar offset ADInitialControlSchemeViewController._titleLabel (+0x190)
  100006d18  mov     x0, x2
  100006d1c  bl      _objc_retain
  100006d20  ldr     x8, [x19, x20]                           ; x8 = self->_titleLabel
  100006d24  str     x0, [x19, x20]                           ; self->_titleLabel = arg1
  100006d28  mov     x0, x8
  100006d2c  ldp     x29, x30, [sp, #0x10]
  100006d30  ldp     x20, x19, [sp], #0x20
  100006d34  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController subTitleLabel]
; address 0x100006d38  size 16  kind objc
; ======================================================================
  100006d38  adrp    x8, #0x10041f000
  100006d3c  ldrsw   x8, [x8, #0x4a0]                         ; ivar offset ADInitialControlSchemeViewController._subTitleLabel (+0x198)
  100006d40  ldr     x0, [x0, x8]                             ; x0 = self->_subTitleLabel
  100006d44  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setSubTitleLabel:]
; address 0x100006d48  size 56  kind objc
; ======================================================================
  100006d48  stp     x20, x19, [sp, #-0x20]!
  100006d4c  stp     x29, x30, [sp, #0x10]
  100006d50  add     x29, sp, #0x10
  100006d54  mov     x19, x0
  100006d58  adrp    x8, #0x10041f000
  100006d5c  ldrsw   x20, [x8, #0x4a0]                        ; ivar offset ADInitialControlSchemeViewController._subTitleLabel (+0x198)
  100006d60  mov     x0, x2
  100006d64  bl      _objc_retain
  100006d68  ldr     x8, [x19, x20]                           ; x8 = self->_subTitleLabel
  100006d6c  str     x0, [x19, x20]                           ; self->_subTitleLabel = arg1
  100006d70  mov     x0, x8
  100006d74  ldp     x29, x30, [sp, #0x10]
  100006d78  ldp     x20, x19, [sp], #0x20
  100006d7c  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController recommededLabel]
; address 0x100006d80  size 16  kind objc
; ======================================================================
  100006d80  adrp    x8, #0x10041f000
  100006d84  ldrsw   x8, [x8, #0x4a4]                         ; ivar offset ADInitialControlSchemeViewController._recommededLabel (+0x1a0)
  100006d88  ldr     x0, [x0, x8]                             ; x0 = self->_recommededLabel
  100006d8c  ret

; ======================================================================
; -[ADInitialControlSchemeViewController setRecommededLabel:]
; address 0x100006d90  size 56  kind objc
; ======================================================================
  100006d90  stp     x20, x19, [sp, #-0x20]!
  100006d94  stp     x29, x30, [sp, #0x10]
  100006d98  add     x29, sp, #0x10
  100006d9c  mov     x19, x0
  100006da0  adrp    x8, #0x10041f000
  100006da4  ldrsw   x20, [x8, #0x4a4]                        ; ivar offset ADInitialControlSchemeViewController._recommededLabel (+0x1a0)
  100006da8  mov     x0, x2
  100006dac  bl      _objc_retain
  100006db0  ldr     x8, [x19, x20]                           ; x8 = self->_recommededLabel
  100006db4  str     x0, [x19, x20]                           ; self->_recommededLabel = arg1
  100006db8  mov     x0, x8
  100006dbc  ldp     x29, x30, [sp, #0x10]
  100006dc0  ldp     x20, x19, [sp], #0x20
  100006dc4  b       _objc_release

; ======================================================================
; -[ADInitialControlSchemeViewController .cxx_destruct]
; address 0x100006dc8  size 284  kind objc
; ======================================================================
  100006dc8  stp     x20, x19, [sp, #-0x20]!
  100006dcc  stp     x29, x30, [sp, #0x10]
  100006dd0  add     x29, sp, #0x10
  100006dd4  mov     x19, x0
  100006dd8  adrp    x8, #0x10041f000
  100006ddc  ldrsw   x8, [x8, #0x4a4]                         ; ivar offset ADInitialControlSchemeViewController._recommededLabel (+0x1a0)
  100006de0  add     x0, x19, x8
  100006de4  mov     x1, #0
  100006de8  bl      _objc_storeStrong
  100006dec  adrp    x8, #0x10041f000
  100006df0  ldrsw   x8, [x8, #0x4a0]                         ; ivar offset ADInitialControlSchemeViewController._subTitleLabel (+0x198)
  100006df4  add     x0, x19, x8
  100006df8  mov     x1, #0
  100006dfc  bl      _objc_storeStrong
  100006e00  adrp    x8, #0x10041f000
  100006e04  ldrsw   x8, [x8, #0x49c]                         ; ivar offset ADInitialControlSchemeViewController._titleLabel (+0x190)
  100006e08  add     x0, x19, x8
  100006e0c  mov     x1, #0
  100006e10  bl      _objc_storeStrong
  100006e14  adrp    x8, #0x10041f000
  100006e18  ldrsw   x8, [x8, #0x498]                         ; ivar offset ADInitialControlSchemeViewController._swipeTextButton (+0x188)
  100006e1c  add     x0, x19, x8
  100006e20  mov     x1, #0
  100006e24  bl      _objc_storeStrong
  100006e28  adrp    x8, #0x10041f000
  100006e2c  ldrsw   x8, [x8, #0x494]                         ; ivar offset ADInitialControlSchemeViewController._swipeButton (+0x180)
  100006e30  add     x0, x19, x8
  100006e34  mov     x1, #0
  100006e38  bl      _objc_storeStrong
  100006e3c  adrp    x8, #0x10041f000
  100006e40  ldrsw   x8, [x8, #0x490]                         ; ivar offset ADInitialControlSchemeViewController._tiltTextButton (+0x178)
  100006e44  add     x0, x19, x8
  100006e48  mov     x1, #0
  100006e4c  bl      _objc_storeStrong
  100006e50  adrp    x8, #0x10041f000
  100006e54  ldrsw   x8, [x8, #0x48c]                         ; ivar offset ADInitialControlSchemeViewController._tiltButton (+0x170)
  100006e58  add     x0, x19, x8
  100006e5c  mov     x1, #0
  100006e60  bl      _objc_storeStrong
  100006e64  adrp    x8, #0x10041f000
  100006e68  ldrsw   x8, [x8, #0x488]                         ; ivar offset ADInitialControlSchemeViewController._gyroTextButton (+0x168)
  100006e6c  add     x0, x19, x8
  100006e70  mov     x1, #0
  100006e74  bl      _objc_storeStrong
  100006e78  adrp    x8, #0x10041f000
  100006e7c  ldrsw   x8, [x8, #0x484]                         ; ivar offset ADInitialControlSchemeViewController._gyroButton (+0x160)
  100006e80  add     x0, x19, x8
  100006e84  mov     x1, #0
  100006e88  bl      _objc_storeStrong
  100006e8c  adrp    x8, #0x10041f000
  100006e90  ldrsw   x8, [x8, #0x480]                         ; ivar offset ADInitialControlSchemeViewController._descriptionText (+0x158)
  100006e94  add     x0, x19, x8
  100006e98  mov     x1, #0
  100006e9c  bl      _objc_storeStrong
  100006ea0  adrp    x8, #0x10041f000
  100006ea4  ldrsw   x8, [x8, #0x47c]                         ; ivar offset ADInitialControlSchemeViewController._gyroDescription (+0x150)
  100006ea8  add     x0, x19, x8
  100006eac  mov     x1, #0
  100006eb0  bl      _objc_storeStrong
  100006eb4  adrp    x8, #0x10041f000
  100006eb8  ldrsw   x8, [x8, #0x478]                         ; ivar offset ADInitialControlSchemeViewController._tiltDescription (+0x148)
  100006ebc  add     x0, x19, x8
  100006ec0  mov     x1, #0
  100006ec4  bl      _objc_storeStrong
  100006ec8  mov     x1, #0
  100006ecc  adrp    x8, #0x10041f000
  100006ed0  ldrsw   x8, [x8, #0x474]                         ; ivar offset ADInitialControlSchemeViewController._swipeDescription (+0x140)
  100006ed4  add     x0, x19, x8
  100006ed8  ldp     x29, x30, [sp, #0x10]
  100006edc  ldp     x20, x19, [sp], #0x20
  100006ee0  b       _objc_storeStrong
