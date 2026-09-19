// unit ADControlSchemeViewController — 66 functions
//   0x10004fadc     140  -[ADControlSchemeViewController initWithNibName:bundle:]
//   0x10004fb68    3484  -[ADControlSchemeViewController viewDidLoad]
//   0x100050904    3132  -[ADControlSchemeViewController loadView]
//   0x100051540     140  -[ADControlSchemeViewController loadView]_block_invoke
//   0x1000515cc       8  sub_1000515cc
//   0x1000515d4       8  sub_1000515d4
//   0x1000515dc     208  -[ADControlSchemeViewController loadView]_block_invoke_2
//   0x1000516ac       8  sub_1000516ac
//   0x1000516b4       8  sub_1000516b4
//   0x1000516bc     236  -[ADControlSchemeViewController setAllTabButtons:]
//   0x1000517a8     236  -[ADControlSchemeViewController setAllAimingButton:]
//   0x100051894     236  -[ADControlSchemeViewController selectAllTabButtons:]
//   0x100051980     236  -[ADControlSchemeViewController selectAllAimingButton:]
//   0x100051a6c     212  -[ADControlSchemeViewController aimingTabButtonPressed]
//   0x100051b40     280  -[ADControlSchemeViewController controlTabButtonPressed]
//   0x100051c58     280  -[ADControlSchemeViewController soundTabButtonPressed]
//   0x100051d70     696  -[ADControlSchemeViewController showOrHideSensivity]
//   0x100052028     524  -[ADControlSchemeViewController gyroButtonTouched]
//   0x100052234     620  -[ADControlSchemeViewController tiltButtonTouched]
//   0x1000524a0     620  -[ADControlSchemeViewController swipeButtonTouched]
//   0x10005270c     168  -[ADControlSchemeViewController sensivityValueChanged:]
//   0x1000527b4     644  -[ADControlSchemeViewController buttonsButtonTouched]
//   0x100052a38     644  -[ADControlSchemeViewController gestureButtonTouched]
//   0x100052cbc     196  -[ADControlSchemeViewController volumeSliderValueChanged:]
//   0x100052d80     200  -[ADControlSchemeViewController announcerValueChanged:]
//   0x100052e48     240  -[ADControlSchemeViewController TestHeadphonesButtonPressed:]
//   0x100052f38      60  -[ADControlSchemeViewController didReceiveMemoryWarning]
//   0x100052f74      16  -[ADControlSchemeViewController announcerSwitch]
//   0x100052f84      56  -[ADControlSchemeViewController setAnnouncerSwitch:]
//   0x100052fbc      16  -[ADControlSchemeViewController gyroButton]
//   0x100052fcc      56  -[ADControlSchemeViewController setGyroButton:]
//   0x100053004      16  -[ADControlSchemeViewController swipeButton]
//   0x100053014      56  -[ADControlSchemeViewController setSwipeButton:]
//   0x10005304c      16  -[ADControlSchemeViewController tiltButton]
//   0x10005305c      56  -[ADControlSchemeViewController setTiltButton:]
//   0x100053094      16  -[ADControlSchemeViewController sensivityLabel]
//   0x1000530a4      56  -[ADControlSchemeViewController setSensivityLabel:]
//   0x1000530dc      16  -[ADControlSchemeViewController sensivitySlider]
//   0x1000530ec      56  -[ADControlSchemeViewController setSensivitySlider:]
//   0x100053124      16  -[ADControlSchemeViewController sensitivitySliderBack]
//   0x100053134      56  -[ADControlSchemeViewController setSensitivitySliderBack:]
//   0x10005316c      16  -[ADControlSchemeViewController aimingButton]
//   0x10005317c      56  -[ADControlSchemeViewController setAimingButton:]
//   0x1000531b4      16  -[ADControlSchemeViewController controlsButton]
//   0x1000531c4      56  -[ADControlSchemeViewController setControlsButton:]
//   0x1000531fc      16  -[ADControlSchemeViewController soundButton]
//   0x10005320c      56  -[ADControlSchemeViewController setSoundButton:]
//   0x100053244      16  -[ADControlSchemeViewController buttonsButton]
//   0x100053254      56  -[ADControlSchemeViewController setButtonsButton:]
//   0x10005328c      16  -[ADControlSchemeViewController gestureButton]
//   0x10005329c      56  -[ADControlSchemeViewController setGestureButton:]
//   0x1000532d4      16  -[ADControlSchemeViewController volumeSlider]
//   0x1000532e4      56  -[ADControlSchemeViewController setVolumeSlider:]
//   0x10005331c      16  -[ADControlSchemeViewController contentScrollView]
//   0x10005332c      56  -[ADControlSchemeViewController setContentScrollView:]
//   0x100053364      16  -[ADControlSchemeViewController contentView]
//   0x100053374      56  -[ADControlSchemeViewController setContentView:]
//   0x1000533ac      16  -[ADControlSchemeViewController aimingText]
//   0x1000533bc      56  -[ADControlSchemeViewController setAimingText:]
//   0x1000533f4      16  -[ADControlSchemeViewController controlsText]
//   0x100053404      56  -[ADControlSchemeViewController setControlsText:]
//   0x10005343c      16  -[ADControlSchemeViewController announcerLabel]
//   0x10005344c      56  -[ADControlSchemeViewController setAnnouncerLabel:]
//   0x100053484      16  -[ADControlSchemeViewController volumeText]
//   0x100053494      56  -[ADControlSchemeViewController setVolumeText:]
//   0x1000534cc     404  -[ADControlSchemeViewController .cxx_destruct]

; ======================================================================
; -[ADControlSchemeViewController initWithNibName:bundle:]
; address 0x10004fadc  size 140  kind objc
; ======================================================================
  10004fadc  stp     x22, x21, [sp, #-0x30]!
  10004fae0  stp     x20, x19, [sp, #0x10]
  10004fae4  stp     x29, x30, [sp, #0x20]
  10004fae8  add     x29, sp, #0x20
  10004faec  sub     sp, sp, #0x10
  10004faf0  mov     x20, x3
  10004faf4  mov     x21, x0
  10004faf8  mov     x0, x2
  10004fafc  bl      _objc_retain
  10004fb00  mov     x19, x0
  10004fb04  str     x21, [sp]
  10004fb08  adrp    x8, #0x10041e000
  10004fb0c  ldr     x8, [x8, #0xd50]
  10004fb10  str     x8, [sp, #8]
  10004fb14  adrp    x8, #0x100416000
  10004fb18  nop
  10004fb1c  ldr     x1, [x8, #0xb40]
  10004fb20  mov     x0, sp
  10004fb24  mov     x2, x19
  10004fb28  mov     x3, x20
  10004fb2c  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10004fb30  mov     x20, x0
  10004fb34  mov     x0, x19
  10004fb38  bl      _objc_release
  10004fb3c  mov     x0, x20
  10004fb40  sub     sp, x29, #0x20
  10004fb44  ldp     x29, x30, [sp, #0x20]
  10004fb48  ldp     x20, x19, [sp, #0x10]
  10004fb4c  ldp     x22, x21, [sp], #0x30
  10004fb50  ret
  10004fb54  mov     x20, x0
  10004fb58  mov     x0, x19
  10004fb5c  bl      _objc_release
  10004fb60  mov     x0, x20
  10004fb64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController viewDidLoad]
; address 0x10004fb68  size 3484  kind objc
; ======================================================================
  10004fb68  stp     x28, x27, [sp, #-0x60]!
  10004fb6c  stp     x26, x25, [sp, #0x10]
  10004fb70  stp     x24, x23, [sp, #0x20]
  10004fb74  stp     x22, x21, [sp, #0x30]
  10004fb78  stp     x20, x19, [sp, #0x40]
  10004fb7c  stp     x29, x30, [sp, #0x50]
  10004fb80  add     x29, sp, #0x50
  10004fb84  sub     sp, sp, #0x20
  10004fb88  mov     x19, x0
  10004fb8c  str     x19, [sp, #0x10]
  10004fb90  adrp    x8, #0x10041e000
  10004fb94  ldr     x8, [x8, #0xd50]
  10004fb98  str     x8, [sp, #0x18]
  10004fb9c  adrp    x8, #0x100416000
  10004fba0  nop
  10004fba4  ldr     x1, [x8, #0xb48]
  10004fba8  add     x0, sp, #0x10
  10004fbac  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10004fbb0  adrp    x8, #0x100418000
  10004fbb4  nop
  10004fbb8  ldr     x1, [x8, #0xcc8]
  10004fbbc  mov     w2, #1
  10004fbc0  mov     x0, x19
  10004fbc4  bl      _objc_msgSend                            ; [self setAllTabButtons:1]
  10004fbc8  adrp    x8, #0x100418000
  10004fbcc  nop
  10004fbd0  ldr     x1, [x8, #0xcd0]
  10004fbd4  mov     w2, #1
  10004fbd8  mov     x0, x19
  10004fbdc  bl      _objc_msgSend                            ; [self setAllAimingButton:1]
  10004fbe0  adrp    x8, #0x100418000
  10004fbe4  nop
  10004fbe8  ldr     x1, [x8, #0xcd8]
  10004fbec  mov     w2, #0
  10004fbf0  mov     x0, x19
  10004fbf4  bl      _objc_msgSend                            ; [self selectAllTabButtons:0]
  10004fbf8  adrp    x8, #0x100418000
  10004fbfc  nop
  10004fc00  ldr     x1, [x8, #0xce0]
  10004fc04  mov     w2, #0
  10004fc08  mov     x0, x19
  10004fc0c  bl      _objc_msgSend                            ; [self selectAllAimingButton:0]
  10004fc10  adrp    x8, #0x100418000
  10004fc14  nop
  10004fc18  ldr     x1, [x8, #0xce8]
  10004fc1c  mov     x0, x19
  10004fc20  bl      _objc_msgSend                            ; [self aimingButton]
  10004fc24  mov     x29, x29
  10004fc28  bl      _objc_retainAutoreleasedReturnValue
  10004fc2c  mov     x22, x0
  10004fc30  adrp    x8, #0x100418000
  10004fc34  nop
  10004fc38  ldr     x21, [x8, #0xcf0]
  10004fc3c  adrp    x8, #0x100417000
  10004fc40  nop
  10004fc44  ldr     x20, [x8, #0x7d0]
  10004fc48  mov     w4, #0x40
  10004fc4c  mov     x1, x20
  10004fc50  mov     x2, x19
  10004fc54  mov     x3, x21
  10004fc58  bl      _objc_msgSend                            ; [[self aimingButton] addTarget:self action:@selector(aimingTabButtonPressed) forControlEvents:64]
  10004fc5c  mov     x0, x22
  10004fc60  bl      _objc_release
  10004fc64  adrp    x8, #0x100418000
  10004fc68  nop
  10004fc6c  ldr     x1, [x8, #0xcf8]
  10004fc70  mov     x0, x19
  10004fc74  bl      _objc_msgSend                            ; [self controlsButton]
  10004fc78  mov     x29, x29
  10004fc7c  bl      _objc_retainAutoreleasedReturnValue
  10004fc80  mov     x22, x0
  10004fc84  adrp    x8, #0x100418000
  10004fc88  nop
  10004fc8c  ldr     x3, [x8, #0xd00]
  10004fc90  mov     w4, #0x40
  10004fc94  mov     x1, x20
  10004fc98  mov     x2, x19
  10004fc9c  bl      _objc_msgSend                            ; [[self controlsButton] addTarget:self action:@selector(controlTabButtonPressed) forControlEvents:64]
  10004fca0  mov     x0, x22
  10004fca4  bl      _objc_release
  10004fca8  adrp    x8, #0x100418000
  10004fcac  nop
  10004fcb0  ldr     x1, [x8, #0xd08]
  10004fcb4  mov     x0, x19
  10004fcb8  bl      _objc_msgSend                            ; [self soundButton]
  10004fcbc  mov     x29, x29
  10004fcc0  bl      _objc_retainAutoreleasedReturnValue
  10004fcc4  mov     x22, x0
  10004fcc8  adrp    x8, #0x100418000
  10004fccc  nop
  10004fcd0  ldr     x3, [x8, #0xd10]
  10004fcd4  mov     w4, #0x40
  10004fcd8  mov     x1, x20
  10004fcdc  mov     x2, x19
  10004fce0  bl      _objc_msgSend                            ; [[self soundButton] addTarget:self action:@selector(soundTabButtonPressed) forControlEvents:64]
  10004fce4  mov     x0, x22
  10004fce8  bl      _objc_release
  10004fcec  mov     x0, x19
  10004fcf0  mov     x1, x21
  10004fcf4  bl      _objc_msgSend                            ; [self aimingTabButtonPressed]
  10004fcf8  adrp    x8, #0x100416000
  10004fcfc  nop
  10004fd00  ldr     x24, [x8, #0xbc8]
  10004fd04  mov     x0, x19
  10004fd08  mov     x1, x24
  10004fd0c  bl      _objc_msgSend                            ; [self gyroButton]
  10004fd10  mov     x29, x29
  10004fd14  bl      _objc_retainAutoreleasedReturnValue
  10004fd18  mov     x21, x0
  10004fd1c  adrp    x8, #0x100418000
  10004fd20  nop
  10004fd24  ldr     x3, [x8, #0xd18]
  10004fd28  mov     w4, #0x40
  10004fd2c  mov     x1, x20
  10004fd30  mov     x2, x19
  10004fd34  bl      _objc_msgSend                            ; [[self gyroButton] addTarget:self action:@selector(gyroButtonTouched) forControlEvents:64]
  10004fd38  mov     x0, x21
  10004fd3c  bl      _objc_release
  10004fd40  adrp    x8, #0x100416000
  10004fd44  nop
  10004fd48  ldr     x25, [x8, #0xbd8]
  10004fd4c  mov     x0, x19
  10004fd50  mov     x1, x25
  10004fd54  bl      _objc_msgSend                            ; [self swipeButton]
  10004fd58  mov     x29, x29
  10004fd5c  bl      _objc_retainAutoreleasedReturnValue
  10004fd60  mov     x21, x0
  10004fd64  adrp    x8, #0x100418000
  10004fd68  nop
  10004fd6c  ldr     x3, [x8, #0xd20]
  10004fd70  mov     w4, #0x40
  10004fd74  mov     x1, x20
  10004fd78  mov     x2, x19
  10004fd7c  bl      _objc_msgSend                            ; [[self swipeButton] addTarget:self action:@selector(swipeButtonTouched) forControlEvents:64]
  10004fd80  mov     x0, x21
  10004fd84  bl      _objc_release
  10004fd88  adrp    x8, #0x100416000
  10004fd8c  nop
  10004fd90  ldr     x26, [x8, #0xbe0]
  10004fd94  mov     x0, x19
  10004fd98  mov     x1, x26
  10004fd9c  bl      _objc_msgSend                            ; [self tiltButton]
  10004fda0  mov     x29, x29
  10004fda4  bl      _objc_retainAutoreleasedReturnValue
  10004fda8  mov     x21, x0
  10004fdac  adrp    x8, #0x100418000
  10004fdb0  nop
  10004fdb4  ldr     x3, [x8, #0xd28]
  10004fdb8  mov     w4, #0x40
  10004fdbc  mov     x1, x20
  10004fdc0  mov     x2, x19
  10004fdc4  bl      _objc_msgSend                            ; [[self tiltButton] addTarget:self action:@selector(tiltButtonTouched) forControlEvents:64]
  10004fdc8  mov     x0, x21
  10004fdcc  bl      _objc_release
  10004fdd0  adrp    x8, #0x100418000
  10004fdd4  nop
  10004fdd8  ldr     x22, [x8, #0xd30]
  10004fddc  mov     x0, x19
  10004fde0  mov     x1, x22
  10004fde4  bl      _objc_msgSend                            ; [self buttonsButton]
  10004fde8  mov     x29, x29
  10004fdec  bl      _objc_retainAutoreleasedReturnValue
  10004fdf0  mov     x21, x0
  10004fdf4  adrp    x8, #0x100418000
  10004fdf8  nop
  10004fdfc  ldr     x3, [x8, #0xd38]
  10004fe00  mov     w4, #0x40
  10004fe04  mov     x1, x20
  10004fe08  mov     x2, x19
  10004fe0c  bl      _objc_msgSend                            ; [[self buttonsButton] addTarget:self action:@selector(buttonsButtonTouched) forControlEvents:64]
  10004fe10  mov     x0, x21
  10004fe14  bl      _objc_release
  10004fe18  adrp    x8, #0x100418000
  10004fe1c  nop
  10004fe20  ldr     x23, [x8, #0xd40]
  10004fe24  mov     x0, x19
  10004fe28  mov     x1, x23
  10004fe2c  bl      _objc_msgSend                            ; [self gestureButton]
  10004fe30  mov     x29, x29
  10004fe34  bl      _objc_retainAutoreleasedReturnValue
  10004fe38  mov     x21, x0
  10004fe3c  adrp    x8, #0x100418000
  10004fe40  nop
  10004fe44  ldr     x3, [x8, #0xd48]
  10004fe48  mov     w4, #0x40
  10004fe4c  mov     x1, x20
  10004fe50  mov     x2, x19
  10004fe54  bl      _objc_msgSend                            ; [[self gestureButton] addTarget:self action:@selector(gestureButtonTouched) forControlEvents:64]
  10004fe58  mov     x0, x21
  10004fe5c  bl      _objc_release
  10004fe60  adrp    x8, #0x100418000
  10004fe64  nop
  10004fe68  ldr     x20, [x8, #0xd50]
  10004fe6c  mov     x0, x19
  10004fe70  mov     x1, x20
  10004fe74  bl      _objc_msgSend                            ; [self sensivityLabel]
  10004fe78  mov     x29, x29
  10004fe7c  bl      _objc_retainAutoreleasedReturnValue
  10004fe80  mov     x21, x0
  10004fe84  adrp    x8, #0x100416000
  10004fe88  nop
  10004fe8c  ldr     x1, [x8, #0xb88]
  10004fe90  bl      _objc_msgSend                            ; [[self sensivityLabel] setupAsTitle]
  10004fe94  mov     x0, x21
  10004fe98  bl      _objc_release
  10004fe9c  mov     x0, x19
  10004fea0  mov     x1, x20
  10004fea4  bl      _objc_msgSend                            ; [self sensivityLabel]
  10004fea8  mov     x29, x29
  10004feac  bl      _objc_retainAutoreleasedReturnValue
  10004feb0  mov     x21, x0
  10004feb4  adrp    x8, #0x100416000
  10004feb8  nop
  10004febc  ldr     x20, [x8, #0xba0]
  10004fec0  mov     x1, x20
  10004fec4  bl      _objc_msgSend                            ; [[self sensivityLabel] setupAsMain]
  10004fec8  mov     x0, x21
  10004fecc  bl      _objc_release
  10004fed0  adrp    x8, #0x100418000
  10004fed4  nop
  10004fed8  ldr     x1, [x8, #0xd58]
  10004fedc  mov     x0, x19
  10004fee0  bl      _objc_msgSend                            ; [self announcerLabel]
  10004fee4  mov     x29, x29
  10004fee8  bl      _objc_retainAutoreleasedReturnValue
  10004feec  mov     x21, x0
  10004fef0  mov     x1, x20
  10004fef4  bl      _objc_msgSend                            ; [[self announcerLabel] setupAsMain]
  10004fef8  str     x22, [sp]
  10004fefc  mov     x0, x21
  10004ff00  bl      _objc_release
  10004ff04  adrp    x8, #0x100418000
  10004ff08  nop
  10004ff0c  ldr     x1, [x8, #0xd60]
  10004ff10  mov     x0, x19
  10004ff14  bl      _objc_msgSend                            ; [self sensivitySlider]
  10004ff18  mov     x29, x29
  10004ff1c  bl      _objc_retainAutoreleasedReturnValue
  10004ff20  mov     x27, x0
  10004ff24  adrp    x22, #0x10041d000
  10004ff28  ldr     x0, [x22, #0xef0]                        ; class ADGameParameters
  10004ff2c  adrp    x8, #0x100416000
  10004ff30  nop
  10004ff34  ldr     x20, [x8, #0xc00]
  10004ff38  mov     x1, x20
  10004ff3c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004ff40  mov     x29, x29
  10004ff44  bl      _objc_retainAutoreleasedReturnValue
  10004ff48  mov     x28, x0
  10004ff4c  adrp    x8, #0x100418000
  10004ff50  nop
  10004ff54  ldr     x1, [x8, #0xd68]
  10004ff58  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] sensivity]
  10004ff5c  adrp    x8, #0x100418000
  10004ff60  nop
  10004ff64  ldr     x1, [x8, #0x658]
  10004ff68  str     x1, [sp, #8]
  10004ff6c  mov     x0, x27
  10004ff70  bl      _objc_msgSend                            ; [[self sensivitySlider] setValue:x2]
  10004ff74  mov     x0, x28
  10004ff78  bl      _objc_release
  10004ff7c  mov     x0, x27
  10004ff80  bl      _objc_release
  10004ff84  adrp    x8, #0x100418000
  10004ff88  nop
  10004ff8c  ldr     x28, [x8, #0x838]
  10004ff90  mov     x0, x19
  10004ff94  mov     x1, x28
  10004ff98  bl      _objc_msgSend                            ; [self contentScrollView]
  10004ff9c  mov     x29, x29
  10004ffa0  bl      _objc_retainAutoreleasedReturnValue
  10004ffa4  mov     x27, x0
  10004ffa8  adrp    x8, #0x100418000
  10004ffac  nop
  10004ffb0  ldr     x1, [x8, #0x760]
  10004ffb4  mov     x0, x19
  10004ffb8  bl      _objc_msgSend                            ; [self contentView]
  10004ffbc  mov     x29, x29
  10004ffc0  bl      _objc_retainAutoreleasedReturnValue
  10004ffc4  mov     x21, x0
  10004ffc8  adrp    x8, #0x100416000
  10004ffcc  nop
  10004ffd0  ldr     x1, [x8, #0xf20]
  10004ffd4  mov     x0, x27
  10004ffd8  mov     x2, x21
  10004ffdc  bl      _objc_msgSend                            ; [[self contentScrollView] addSubview:[self contentView]]
  10004ffe0  mov     x0, x21
  10004ffe4  bl      _objc_release
  10004ffe8  mov     x0, x27
  10004ffec  bl      _objc_release
  10004fff0  mov     x0, x19
  10004fff4  mov     x1, x28
  10004fff8  bl      _objc_msgSend                            ; [self contentScrollView]
  10004fffc  mov     x29, x29
  100050000  bl      _objc_retainAutoreleasedReturnValue
  100050004  mov     x27, x0
  100050008  adrp    x8, #0x100417000
  10005000c  nop
  100050010  ldr     x1, [x8, #0x758]
  100050014  movi    v0.16b, #0
  100050018  movi    v1.16b, #0
  10005001c  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{0, 0}]
  100050020  mov     x0, x27
  100050024  bl      _objc_release
  100050028  mov     x28, x22
  10005002c  ldr     x0, [x28, #0xef0]                        ; class ADGameParameters
  100050030  mov     x1, x20
  100050034  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100050038  mov     x29, x29
  10005003c  bl      _objc_retainAutoreleasedReturnValue
  100050040  mov     x21, x0
  100050044  adrp    x8, #0x100417000
  100050048  nop
  10005004c  ldr     x1, [x8, #0xc80]
  100050050  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  100050054  mov     x27, x0
  100050058  mov     x0, x21
  10005005c  bl      _objc_release
  100050060  cmp     w27, #1
  100050064  b.eq    loc_100050138                            ; if ([[ADGameParameters sharedParameters] controlScheme] == 1)
  100050068  cmp     w27, #2
  10005006c  b.ne    loc_100050200                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  100050070  mov     x0, x19
  100050074  mov     x1, x25
  100050078  bl      _objc_msgSend                            ; [self swipeButton]
  10005007c  mov     x29, x29
  100050080  bl      _objc_retainAutoreleasedReturnValue
  100050084  mov     x24, x0
  100050088  adrp    x8, #0x100418000
  10005008c  nop
  100050090  ldr     x1, [x8, #0xd70]
  100050094  mov     w2, #1
  100050098  bl      _objc_msgSend                            ; [[self swipeButton] setSelected:1]
  10005009c  mov     x0, x24
  1000500a0  bl      _objc_release
  1000500a4  adrp    x8, #0x100418000
  1000500a8  nop
  1000500ac  ldr     x1, [x8, #0xd78]
  1000500b0  mov     x0, x19
  1000500b4  bl      _objc_msgSend                            ; [self aimingText]
  1000500b8  mov     x29, x29
  1000500bc  bl      _objc_retainAutoreleasedReturnValue
  1000500c0  mov     x24, x0
  1000500c4  adrp    x8, #0x10041d000
  1000500c8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000500cc  adrp    x8, #0x100416000
  1000500d0  nop
  1000500d4  ldr     x1, [x8, #0xb58]
  1000500d8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000500dc  mov     x29, x29
  1000500e0  bl      _objc_retainAutoreleasedReturnValue
  1000500e4  mov     x25, x0
  1000500e8  adrp    x8, #0x100416000
  1000500ec  nop
  1000500f0  ldr     x1, [x8, #0xb60]
  1000500f4  mov     x4, #0
  1000500f8  adrp    x2, #0x1003b9000
  1000500fc  add     x2, x2, #0x850                           ; @"SWIPE_DESCRIPTION"
  100050100  adrp    x3, #0x1003b9000
  100050104  add     x3, x3, #0x870                           ; @""
  100050108  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]
  10005010c  mov     x29, x29
  100050110  bl      _objc_retainAutoreleasedReturnValue
  100050114  mov     x21, x0
  100050118  adrp    x8, #0x100416000
  10005011c  nop
  100050120  ldr     x1, [x8, #0xb68]
  100050124  mov     x0, x24
  100050128  mov     x2, x21
  10005012c  bl      _objc_msgSend                            ; [[self aimingText] setText:[[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]]
  100050130  b       loc_1000502c8
  100050134  b       loc_1000508e8
loc_100050138:
  100050138  mov     x0, x19
  10005013c  mov     x1, x24
  100050140  bl      _objc_msgSend                            ; [self gyroButton]
  100050144  mov     x29, x29
  100050148  bl      _objc_retainAutoreleasedReturnValue
  10005014c  mov     x24, x0
  100050150  adrp    x8, #0x100418000
  100050154  nop
  100050158  ldr     x1, [x8, #0xd70]
  10005015c  mov     w2, #1
  100050160  bl      _objc_msgSend                            ; [[self gyroButton] setSelected:1]
  100050164  mov     x0, x24
  100050168  bl      _objc_release
  10005016c  adrp    x8, #0x100418000
  100050170  nop
  100050174  ldr     x1, [x8, #0xd78]
  100050178  mov     x0, x19
  10005017c  bl      _objc_msgSend                            ; [self aimingText]
  100050180  mov     x29, x29
  100050184  bl      _objc_retainAutoreleasedReturnValue
  100050188  mov     x24, x0
  10005018c  adrp    x8, #0x10041d000
  100050190  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100050194  adrp    x8, #0x100416000
  100050198  nop
  10005019c  ldr     x1, [x8, #0xb58]
  1000501a0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000501a4  mov     x29, x29
  1000501a8  bl      _objc_retainAutoreleasedReturnValue
  1000501ac  mov     x25, x0
  1000501b0  adrp    x8, #0x100416000
  1000501b4  nop
  1000501b8  ldr     x1, [x8, #0xb60]
  1000501bc  mov     x4, #0
  1000501c0  adrp    x2, #0x1003b9000
  1000501c4  add     x2, x2, #0x8b0                           ; @"GYRO_DESCRIPTION"
  1000501c8  adrp    x3, #0x1003b9000
  1000501cc  add     x3, x3, #0x870                           ; @""
  1000501d0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]
  1000501d4  mov     x29, x29
  1000501d8  bl      _objc_retainAutoreleasedReturnValue
  1000501dc  mov     x21, x0
  1000501e0  adrp    x8, #0x100416000
  1000501e4  nop
  1000501e8  ldr     x1, [x8, #0xb68]
  1000501ec  mov     x0, x24
  1000501f0  mov     x2, x21
  1000501f4  bl      _objc_msgSend                            ; [[self aimingText] setText:[[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]]
  1000501f8  b       loc_1000502c8
  1000501fc  b       loc_1000508e8
loc_100050200:
  100050200  cmp     w27, #3
  100050204  b.ne    loc_1000502e0                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  100050208  mov     x0, x19
  10005020c  mov     x1, x26
  100050210  bl      _objc_msgSend                            ; [self tiltButton]
  100050214  mov     x29, x29
  100050218  bl      _objc_retainAutoreleasedReturnValue
  10005021c  mov     x24, x0
  100050220  adrp    x8, #0x100418000
  100050224  nop
  100050228  ldr     x1, [x8, #0xd70]
  10005022c  mov     w2, #1
  100050230  bl      _objc_msgSend                            ; [[self tiltButton] setSelected:1]
  100050234  mov     x0, x24
  100050238  bl      _objc_release
  10005023c  adrp    x8, #0x100418000
  100050240  nop
  100050244  ldr     x1, [x8, #0xd78]
  100050248  mov     x0, x19
  10005024c  bl      _objc_msgSend                            ; [self aimingText]
  100050250  mov     x29, x29
  100050254  bl      _objc_retainAutoreleasedReturnValue
  100050258  mov     x24, x0
  10005025c  adrp    x8, #0x10041d000
  100050260  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100050264  adrp    x8, #0x100416000
  100050268  nop
  10005026c  ldr     x1, [x8, #0xb58]
  100050270  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100050274  mov     x29, x29
  100050278  bl      _objc_retainAutoreleasedReturnValue
  10005027c  mov     x25, x0
  100050280  adrp    x8, #0x100416000
  100050284  nop
  100050288  ldr     x1, [x8, #0xb60]
  10005028c  mov     x4, #0
  100050290  adrp    x2, #0x1003b9000
  100050294  add     x2, x2, #0x890                           ; @"TILT_DESCRIPTION"
  100050298  adrp    x3, #0x1003b9000
  10005029c  add     x3, x3, #0x870                           ; @""
  1000502a0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]
  1000502a4  mov     x29, x29
  1000502a8  bl      _objc_retainAutoreleasedReturnValue
  1000502ac  mov     x21, x0
  1000502b0  adrp    x8, #0x100416000
  1000502b4  nop
  1000502b8  ldr     x1, [x8, #0xb68]
  1000502bc  mov     x0, x24
  1000502c0  mov     x2, x21
  1000502c4  bl      _objc_msgSend                            ; [[self aimingText] setText:[[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]]
loc_1000502c8:
  1000502c8  mov     x0, x21
  1000502cc  bl      _objc_release
  1000502d0  mov     x0, x25
  1000502d4  bl      _objc_release
  1000502d8  mov     x0, x24
  1000502dc  bl      _objc_release
loc_1000502e0:
  1000502e0  adrp    x8, #0x100418000
  1000502e4  nop
  1000502e8  ldr     x1, [x8, #0xd78]
  1000502ec  mov     x0, x19
  1000502f0  bl      _objc_msgSend                            ; [self aimingText]
  1000502f4  mov     x29, x29
  1000502f8  bl      _objc_retainAutoreleasedReturnValue
  1000502fc  mov     x26, x0
  100050300  adrp    x27, #0x10041d000
  100050304  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  100050308  adrp    x8, #0x100417000
  10005030c  nop
  100050310  ldr     x24, [x8, #0x328]
  100050314  mov     x1, x24
  100050318  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10005031c  mov     x29, x29
  100050320  bl      _objc_retainAutoreleasedReturnValue
  100050324  mov     x21, x0
  100050328  adrp    x8, #0x100417000
  10005032c  nop
  100050330  ldr     x25, [x8, #0x330]
  100050334  mov     x0, x26
  100050338  mov     x1, x25
  10005033c  mov     x2, x21
  100050340  bl      _objc_msgSend                            ; [[self aimingText] setTextColor:[UIColor whiteColor]]
  100050344  mov     x0, x21
  100050348  bl      _objc_release
  10005034c  mov     x0, x26
  100050350  bl      _objc_release
  100050354  ldr     x0, [x28, #0xef0]                        ; class ADGameParameters
  100050358  mov     x1, x20
  10005035c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100050360  mov     x29, x29
  100050364  bl      _objc_retainAutoreleasedReturnValue
  100050368  mov     x26, x0
  10005036c  adrp    x8, #0x100417000
  100050370  nop
  100050374  ldr     x1, [x8, #0xc90]
  100050378  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] buttonMode]
  10005037c  mov     x21, x0
  100050380  mov     x0, x26
  100050384  bl      _objc_release
  100050388  mov     x0, x19
  10005038c  cbz     w21, loc_100050454                       ; if ([[ADGameParameters sharedParameters] buttonMode] == 0)
  100050390  ldr     x1, [sp]
  100050394  bl      _objc_msgSend                            ; [self buttonsButton]
  100050398  mov     x29, x29
  10005039c  bl      _objc_retainAutoreleasedReturnValue
  1000503a0  mov     x22, x0
  1000503a4  adrp    x8, #0x100418000
  1000503a8  nop
  1000503ac  ldr     x1, [x8, #0xd70]
  1000503b0  mov     w2, #1
  1000503b4  bl      _objc_msgSend                            ; [[self buttonsButton] setSelected:1]
  1000503b8  mov     x0, x22
  1000503bc  bl      _objc_release
  1000503c0  adrp    x8, #0x100418000
  1000503c4  nop
  1000503c8  ldr     x1, [x8, #0xd80]
  1000503cc  mov     x0, x19
  1000503d0  bl      _objc_msgSend                            ; [self controlsText]
  1000503d4  mov     x29, x29
  1000503d8  bl      _objc_retainAutoreleasedReturnValue
  1000503dc  mov     x22, x0
  1000503e0  adrp    x8, #0x10041d000
  1000503e4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000503e8  adrp    x8, #0x100416000
  1000503ec  nop
  1000503f0  ldr     x1, [x8, #0xb58]
  1000503f4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000503f8  mov     x29, x29
  1000503fc  bl      _objc_retainAutoreleasedReturnValue
  100050400  mov     x23, x0
  100050404  adrp    x8, #0x100416000
  100050408  nop
  10005040c  ldr     x1, [x8, #0xb60]
  100050410  mov     x4, #0
  100050414  adrp    x2, #0x1003bd000
  100050418  add     x2, x2, #0x590                           ; @"BUTTON_MODE"
  10005041c  adrp    x3, #0x1003b9000
  100050420  add     x3, x3, #0x870                           ; @""
  100050424  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"BUTTON_MODE" value:@"" table:0]
  100050428  mov     x29, x29
  10005042c  bl      _objc_retainAutoreleasedReturnValue
  100050430  mov     x21, x0
  100050434  adrp    x8, #0x100416000
  100050438  nop
  10005043c  ldr     x1, [x8, #0xb68]
  100050440  mov     x0, x22
  100050444  mov     x2, x21
  100050448  bl      _objc_msgSend                            ; [[self controlsText] setText:[[NSBundle mainBundle] localizedStringForKey:@"BUTTON_MODE" value:@"" table:0]]
  10005044c  b       loc_100050510
  100050450  b       loc_100050890
loc_100050454:
  100050454  mov     x1, x23
  100050458  bl      _objc_msgSend                            ; [self gestureButton]
  10005045c  mov     x29, x29
  100050460  bl      _objc_retainAutoreleasedReturnValue
  100050464  mov     x22, x0
  100050468  adrp    x8, #0x100418000
  10005046c  nop
  100050470  ldr     x1, [x8, #0xd70]
  100050474  mov     w2, #1
  100050478  bl      _objc_msgSend                            ; [[self gestureButton] setSelected:1]
  10005047c  mov     x0, x22
  100050480  bl      _objc_release
  100050484  adrp    x8, #0x100418000
  100050488  nop
  10005048c  ldr     x1, [x8, #0xd80]
  100050490  mov     x0, x19
  100050494  bl      _objc_msgSend                            ; [self controlsText]
  100050498  mov     x29, x29
  10005049c  bl      _objc_retainAutoreleasedReturnValue
  1000504a0  mov     x22, x0
  1000504a4  adrp    x8, #0x10041d000
  1000504a8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000504ac  adrp    x8, #0x100416000
  1000504b0  nop
  1000504b4  ldr     x1, [x8, #0xb58]
  1000504b8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000504bc  mov     x29, x29
  1000504c0  bl      _objc_retainAutoreleasedReturnValue
  1000504c4  mov     x23, x0
  1000504c8  adrp    x8, #0x100416000
  1000504cc  nop
  1000504d0  ldr     x1, [x8, #0xb60]
  1000504d4  mov     x4, #0
  1000504d8  adrp    x2, #0x1003bd000
  1000504dc  add     x2, x2, #0x5b0                           ; @"GESTURE_MODE"
  1000504e0  adrp    x3, #0x1003b9000
  1000504e4  add     x3, x3, #0x870                           ; @""
  1000504e8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GESTURE_MODE" value:@"" table:0]
  1000504ec  mov     x29, x29
  1000504f0  bl      _objc_retainAutoreleasedReturnValue
  1000504f4  mov     x21, x0
  1000504f8  adrp    x8, #0x100416000
  1000504fc  nop
  100050500  ldr     x1, [x8, #0xb68]
  100050504  mov     x0, x22
  100050508  mov     x2, x21
  10005050c  bl      _objc_msgSend                            ; [[self controlsText] setText:[[NSBundle mainBundle] localizedStringForKey:@"GESTURE_MODE" value:@"" table:0]]
loc_100050510:
  100050510  mov     x0, x21
  100050514  bl      _objc_release
  100050518  mov     x0, x23
  10005051c  bl      _objc_release
  100050520  mov     x0, x22
  100050524  bl      _objc_release
  100050528  adrp    x8, #0x100418000
  10005052c  nop
  100050530  ldr     x1, [x8, #0xd80]
  100050534  mov     x0, x19
  100050538  bl      _objc_msgSend                            ; [self controlsText]
  10005053c  mov     x29, x29
  100050540  bl      _objc_retainAutoreleasedReturnValue
  100050544  mov     x22, x0
  100050548  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10005054c  mov     x1, x24
  100050550  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100050554  mov     x29, x29
  100050558  bl      _objc_retainAutoreleasedReturnValue
  10005055c  mov     x21, x0
  100050560  mov     x0, x22
  100050564  mov     x1, x25
  100050568  mov     x2, x21
  10005056c  bl      _objc_msgSend                            ; [[self controlsText] setTextColor:[UIColor whiteColor]]
  100050570  mov     x0, x21
  100050574  bl      _objc_release
  100050578  mov     x0, x22
  10005057c  bl      _objc_release
  100050580  adrp    x8, #0x100418000
  100050584  nop
  100050588  ldr     x23, [x8, #0xd88]
  10005058c  mov     x0, x19
  100050590  mov     x1, x23
  100050594  bl      _objc_msgSend                            ; [self volumeText]
  100050598  mov     x29, x29
  10005059c  bl      _objc_retainAutoreleasedReturnValue
  1000505a0  mov     x22, x0
  1000505a4  adrp    x8, #0x10041d000
  1000505a8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000505ac  adrp    x8, #0x100416000
  1000505b0  nop
  1000505b4  ldr     x1, [x8, #0xb58]
  1000505b8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000505bc  mov     x29, x29
  1000505c0  bl      _objc_retainAutoreleasedReturnValue
  1000505c4  mov     x26, x0
  1000505c8  adrp    x8, #0x100416000
  1000505cc  nop
  1000505d0  ldr     x1, [x8, #0xb60]
  1000505d4  mov     x4, #0
  1000505d8  adrp    x2, #0x1003bd000
  1000505dc  add     x2, x2, #0x5d0                           ; @"VOLUME_WARNING"
  1000505e0  adrp    x3, #0x1003b9000
  1000505e4  add     x3, x3, #0x870                           ; @""
  1000505e8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"VOLUME_WARNING" value:@"" table:0]
  1000505ec  mov     x29, x29
  1000505f0  bl      _objc_retainAutoreleasedReturnValue
  1000505f4  mov     x21, x0
  1000505f8  adrp    x8, #0x100416000
  1000505fc  nop
  100050600  ldr     x1, [x8, #0xb68]
  100050604  mov     x0, x22
  100050608  mov     x2, x21
  10005060c  bl      _objc_msgSend                            ; [[self volumeText] setText:[[NSBundle mainBundle] localizedStringForKey:@"VOLUME_WARNING" value:@"" table:0]]
  100050610  mov     x0, x21
  100050614  bl      _objc_release
  100050618  mov     x0, x26
  10005061c  bl      _objc_release
  100050620  mov     x0, x22
  100050624  bl      _objc_release
  100050628  mov     x0, x19
  10005062c  mov     x1, x23
  100050630  bl      _objc_msgSend                            ; [self volumeText]
  100050634  mov     x29, x29
  100050638  bl      _objc_retainAutoreleasedReturnValue
  10005063c  mov     x22, x0
  100050640  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  100050644  mov     x1, x24
  100050648  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10005064c  mov     x29, x29
  100050650  bl      _objc_retainAutoreleasedReturnValue
  100050654  mov     x21, x0
  100050658  mov     x0, x22
  10005065c  mov     x1, x25
  100050660  mov     x2, x21
  100050664  bl      _objc_msgSend                            ; [[self volumeText] setTextColor:[UIColor whiteColor]]
  100050668  mov     x0, x21
  10005066c  bl      _objc_release
  100050670  mov     x0, x22
  100050674  bl      _objc_release
  100050678  adrp    x8, #0x100418000
  10005067c  nop
  100050680  ldr     x1, [x8, #0xd90]
  100050684  mov     x0, x19
  100050688  bl      _objc_msgSend                            ; [self volumeSlider]
  10005068c  mov     x29, x29
  100050690  bl      _objc_retainAutoreleasedReturnValue
  100050694  mov     x22, x0
  100050698  ldr     x0, [x28, #0xef0]                        ; class ADGameParameters
  10005069c  mov     x1, x20
  1000506a0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000506a4  mov     x29, x29
  1000506a8  bl      _objc_retainAutoreleasedReturnValue
  1000506ac  mov     x23, x0
  1000506b0  adrp    x8, #0x100418000
  1000506b4  nop
  1000506b8  ldr     x1, [x8, #0xd98]
  1000506bc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastMasterGain]
  1000506c0  mov     x0, x22
  1000506c4  ldr     x1, [sp, #8]
  1000506c8  bl      _objc_msgSend                            ; [[self volumeSlider] setValue:x2]
  1000506cc  mov     x0, x23
  1000506d0  bl      _objc_release
  1000506d4  mov     x0, x22
  1000506d8  bl      _objc_release
  1000506dc  adrp    x8, #0x100418000
  1000506e0  nop
  1000506e4  ldr     x1, [x8, #0xda0]
  1000506e8  mov     x0, x19
  1000506ec  bl      _objc_msgSend                            ; [self announcerSwitch]
  1000506f0  mov     x29, x29
  1000506f4  bl      _objc_retainAutoreleasedReturnValue
  1000506f8  mov     x21, x0
  1000506fc  ldr     x0, [x28, #0xef0]                        ; class ADGameParameters
  100050700  mov     x1, x20
  100050704  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100050708  mov     x29, x29
  10005070c  bl      _objc_retainAutoreleasedReturnValue
  100050710  mov     x20, x0
  100050714  adrp    x8, #0x100417000
  100050718  nop
  10005071c  ldr     x1, [x8, #0x5f8]
  100050720  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  100050724  mov     x2, x0
  100050728  adrp    x8, #0x100418000
  10005072c  nop
  100050730  ldr     x1, [x8, #0xda8]
  100050734  mov     x0, x21
  100050738  bl      _objc_msgSend                            ; [[self announcerSwitch] setOn:[[ADGameParameters sharedParameters] lastAnnouncerValue]]
  10005073c  mov     x0, x20
  100050740  bl      _objc_release
  100050744  mov     x0, x21
  100050748  bl      _objc_release
  10005074c  adrp    x8, #0x100418000
  100050750  nop
  100050754  ldr     x1, [x8, #0xdb0]
  100050758  mov     x0, x19
  10005075c  bl      _objc_msgSend                            ; [self showOrHideSensivity]
  100050760  sub     sp, x29, #0x50
  100050764  ldp     x29, x30, [sp, #0x50]
  100050768  ldp     x20, x19, [sp, #0x40]
  10005076c  ldp     x22, x21, [sp, #0x30]
  100050770  ldp     x24, x23, [sp, #0x20]
  100050774  ldp     x26, x25, [sp, #0x10]
  100050778  ldp     x28, x27, [sp], #0x60
  10005077c  ret
  100050780  mov     x19, x0
  100050784  mov     x0, x28
  100050788  b       loc_1000507e8
  10005078c  mov     x19, x0
  100050790  b       loc_10005089c
  100050794  mov     x19, x0
  100050798  mov     x0, x20
  10005079c  bl      _objc_release
  1000507a0  b       loc_100050864
  1000507a4  b       loc_100050880
  1000507a8  b       loc_100050880
  1000507ac  b       loc_100050880
  1000507b0  b       loc_100050860
  1000507b4  b       loc_100050860
  1000507b8  b       loc_100050860
  1000507bc  b       loc_100050860
  1000507c0  b       loc_100050860
  1000507c4  b       loc_100050860
  1000507c8  b       loc_100050860
  1000507cc  b       loc_100050860
  1000507d0  mov     x19, x0
  1000507d4  b       loc_1000507f4
  1000507d8  mov     x19, x0
  1000507dc  b       loc_1000507f4
  1000507e0  mov     x19, x0
  1000507e4  mov     x0, x21
loc_1000507e8:
  1000507e8  bl      _objc_release
  1000507ec  b       loc_1000507f4
  1000507f0  mov     x19, x0
loc_1000507f4:
  1000507f4  mov     x0, x27
  1000507f8  b       loc_1000508a8
  1000507fc  b       loc_100050860
  100050800  mov     x19, x0
  100050804  b       loc_10005081c
  100050808  mov     x19, x0
  10005080c  mov     x0, x21
  100050810  bl      _objc_release
  100050814  b       loc_10005081c
  100050818  mov     x19, x0
loc_10005081c:
  10005081c  mov     x0, x26
  100050820  b       loc_1000508a8
  100050824  b       loc_100050880
  100050828  b       loc_100050850
  10005082c  b       loc_100050880
  100050830  mov     x19, x0
  100050834  b       loc_100050844
  100050838  mov     x19, x0
  10005083c  mov     x0, x21
  100050840  bl      _objc_release
loc_100050844:
  100050844  mov     x0, x26
  100050848  b       loc_1000508a0
  10005084c  b       loc_100050880
loc_100050850:
  100050850  mov     x19, x0
  100050854  mov     x0, x21
  100050858  b       loc_1000508a0
  10005085c  b       loc_100050880
loc_100050860:
  100050860  mov     x19, x0
loc_100050864:
  100050864  mov     x0, x21
  100050868  b       loc_1000508a8
  10005086c  b       loc_100050880
  100050870  b       loc_100050880
  100050874  mov     x19, x0
  100050878  b       loc_10005089c
  10005087c  b       loc_100050880
loc_100050880:
  100050880  mov     x19, x0
  100050884  b       loc_1000508a4
  100050888  mov     x19, x0
  10005088c  b       loc_10005089c
loc_100050890:
  100050890  mov     x19, x0
  100050894  mov     x0, x21
  100050898  bl      _objc_release
loc_10005089c:
  10005089c  mov     x0, x23
loc_1000508a0:
  1000508a0  bl      _objc_release
loc_1000508a4:
  1000508a4  mov     x0, x22
loc_1000508a8:
  1000508a8  bl      _objc_release
  1000508ac  mov     x0, x19
  1000508b0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000508b4  b       loc_1000508d8
  1000508b8  b       loc_1000508d8
  1000508bc  mov     x19, x0
  1000508c0  b       loc_1000508f4
  1000508c4  b       loc_1000508d8
  1000508c8  b       loc_1000508d8
  1000508cc  mov     x19, x0
  1000508d0  b       loc_1000508f4
  1000508d4  b       loc_1000508d8
loc_1000508d8:
  1000508d8  mov     x19, x0
  1000508dc  b       loc_1000508fc
  1000508e0  mov     x19, x0
  1000508e4  b       loc_1000508f4
loc_1000508e8:
  1000508e8  mov     x19, x0
  1000508ec  mov     x0, x21
  1000508f0  bl      _objc_release
loc_1000508f4:
  1000508f4  mov     x0, x25
  1000508f8  bl      _objc_release
loc_1000508fc:
  1000508fc  mov     x0, x24
  100050900  b       loc_1000508a8

; ======================================================================
; -[ADControlSchemeViewController loadView]
; address 0x100050904  size 3132  kind objc
; ======================================================================
  100050904  stp     d9, d8, [sp, #-0x70]!
  100050908  stp     x28, x27, [sp, #0x10]
  10005090c  stp     x26, x25, [sp, #0x20]
  100050910  stp     x24, x23, [sp, #0x30]
  100050914  stp     x22, x21, [sp, #0x40]
  100050918  stp     x20, x19, [sp, #0x50]
  10005091c  stp     x29, x30, [sp, #0x60]
  100050920  add     x29, sp, #0x60
  100050924  sub     sp, sp, #0x230
  100050928  mov     x20, x0
  10005092c  adrp    x27, #0x1003b0000
  100050930  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  100050934  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  100050938  stur    x27, [x29, #-0x68]
  10005093c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100050940  cbz     w0, loc_10005096c                        ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100050944  str     x20, [sp, #0xd8]
  100050948  adrp    x8, #0x10041e000
  10005094c  ldr     x8, [x8, #0xd50]
  100050950  str     x8, [sp, #0xe0]
  100050954  adrp    x8, #0x100418000
  100050958  nop
  10005095c  ldr     x1, [x8, #0xdb8]
  100050960  add     x0, sp, #0xd8
  100050964  bl      _objc_msgSendSuper2                      ; [super loadView]
  100050968  b       loc_100051290
loc_10005096c:
  10005096c  adrp    x25, #0x10041e000
  100050970  ldr     x0, [x25, #0x50]                         ; class UIDevice
  100050974  adrp    x8, #0x100417000
  100050978  nop
  10005097c  ldr     x24, [x8, #0x788]
  100050980  mov     x1, x24
  100050984  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100050988  mov     x29, x29
  10005098c  bl      _objc_retainAutoreleasedReturnValue
  100050990  mov     x19, x0
  100050994  adrp    x8, #0x100418000
  100050998  nop
  10005099c  ldr     x22, [x8, #0x9e8]
  1000509a0  mov     x1, x22
  1000509a4  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000509a8  mov     x29, x29
  1000509ac  bl      _objc_retainAutoreleasedReturnValue
  1000509b0  mov     x21, x0
  1000509b4  adrp    x8, #0x100416000
  1000509b8  nop
  1000509bc  ldr     x23, [x8, #0xf58]
  1000509c0  adrp    x2, #0x1003bd000
  1000509c4  add     x2, x2, #0x30                            ; @"iPhone"
  1000509c8  mov     x1, x23
  1000509cc  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  1000509d0  tbz     w0, #0, loc_1000509dc                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  1000509d4  mov     w22, #1
  1000509d8  b       loc_100050a2c
loc_1000509dc:
  1000509dc  ldr     x0, [x25, #0x50]                         ; class UIDevice
  1000509e0  mov     x1, x24
  1000509e4  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  1000509e8  mov     x29, x29
  1000509ec  bl      _objc_retainAutoreleasedReturnValue
  1000509f0  mov     x24, x0
  1000509f4  mov     x1, x22
  1000509f8  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  1000509fc  mov     x29, x29
  100050a00  bl      _objc_retainAutoreleasedReturnValue
  100050a04  mov     x25, x0
  100050a08  adrp    x2, #0x1003bd000
  100050a0c  add     x2, x2, #0x50                            ; @"iPod touch"
  100050a10  mov     x1, x23
  100050a14  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  100050a18  mov     x22, x0
  100050a1c  mov     x0, x25
  100050a20  bl      _objc_release
  100050a24  mov     x0, x24
  100050a28  bl      _objc_release
loc_100050a2c:
  100050a2c  mov     x0, x21
  100050a30  bl      _objc_release
  100050a34  mov     x0, x19
  100050a38  bl      _objc_release
  100050a3c  adrp    x8, #0x10041d000
  100050a40  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100050a44  adrp    x8, #0x100416000
  100050a48  nop
  100050a4c  ldr     x1, [x8, #0xb58]
  100050a50  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100050a54  mov     x29, x29
  100050a58  bl      _objc_retainAutoreleasedReturnValue
  100050a5c  mov     x19, x0
  100050a60  adrp    x8, #0x100418000
  100050a64  add     x8, x8, #0x9f8                           ; &@selector(loadNibNamed:owner:options:)
  100050a68  ldr     x1, [x8]
  100050a6c  cbz     w22, loc_100050b44                       ; if (w22 == 0)
  100050a70  mov     x4, #0
  100050a74  adrp    x2, #0x1003bd000
  100050a78  add     x2, x2, #0x5f0                           ; @"ADControlSchemeViewController"
  100050a7c  mov     x0, x19
  100050a80  mov     x3, x20
  100050a84  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADControlSchemeViewController" owner:self options:0]
  100050a88  mov     x29, x29
  100050a8c  bl      _objc_retainAutoreleasedReturnValue
  100050a90  mov     x26, x0
  100050a94  mov     x0, x19
  100050a98  bl      _objc_release
  100050a9c  adrp    x25, #0x10041e000
  100050aa0  ldr     x0, [x25, #0x28]                         ; class UIScreen
  100050aa4  adrp    x8, #0x100417000
  100050aa8  nop
  100050aac  ldr     x21, [x8, #0x6e8]
  100050ab0  mov     x1, x21
  100050ab4  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100050ab8  mov     x29, x29
  100050abc  bl      _objc_retainAutoreleasedReturnValue
  100050ac0  mov     x19, x0
  100050ac4  adrp    x8, #0x100418000
  100050ac8  nop
  100050acc  ldr     x22, [x8, #0x9f0]
  100050ad0  adrp    x8, #0x100417000
  100050ad4  nop
  100050ad8  ldr     x1, [x8, #0xe90]
  100050adc  mov     x2, x22
  100050ae0  bl      _objc_msgSend                            ; [[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]
  100050ae4  mov     x8, x0
  100050ae8  mov     w24, #-0x3e000000
  100050aec  ldr     x0, [x25, #0x28]                         ; class UIScreen
  100050af0  cbz     w8, loc_100050b9c                        ; if ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] == 0)
  100050af4  mov     x1, x21
  100050af8  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100050afc  mov     x29, x29
  100050b00  bl      _objc_retainAutoreleasedReturnValue
  100050b04  mov     x23, x0
  100050b08  mov     x1, x22
  100050b0c  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  100050b10  adrp    x8, #0x100181000
  100050b14  ldr     d0, [x8, #0xbd0]                         ; d0 = -1704.0
  100050b18  fadd    d0, d3, d0
  100050b1c  fabs    d0, d0
  100050b20  nop
  100050b24  ldr     d8, [x8, #0xbc8]                         ; d8 = 2.22044605e-16
  100050b28  fcmp    d0, d8
  100050b2c  b.pl    loc_100050bf4                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1704)) >= (or unordered) 2.22045e-16)
  100050b30  mov     x0, x23
  100050b34  bl      _objc_release
  100050b38  mov     x0, x19
  100050b3c  bl      _objc_release
  100050b40  b       loc_100050c44
loc_100050b44:
  100050b44  mov     x4, #0
  100050b48  adrp    x2, #0x1003bd000
  100050b4c  add     x2, x2, #0x850                           ; @"ADControlSchemeViewController_iPad"
  100050b50  mov     x0, x19
  100050b54  mov     x3, x20
  100050b58  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"ADControlSchemeViewController_iPad" owner:self options:0]
  100050b5c  mov     x29, x29
  100050b60  bl      _objc_retainAutoreleasedReturnValue
  100050b64  bl      _objc_release
  100050b68  ldur    x8, [x29, #-0x68]
  100050b6c  sub     x8, x27, x8
  100050b70  cbnz    x8, loc_1000512c0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100050b74  mov     x0, x19
  100050b78  sub     sp, x29, #0x60
  100050b7c  ldp     x29, x30, [sp, #0x60]
  100050b80  ldp     x20, x19, [sp, #0x50]
  100050b84  ldp     x22, x21, [sp, #0x40]
  100050b88  ldp     x24, x23, [sp, #0x30]
  100050b8c  ldp     x26, x25, [sp, #0x20]
  100050b90  ldp     x28, x27, [sp, #0x10]
  100050b94  ldp     d9, d8, [sp], #0x70
  100050b98  b       _objc_release
loc_100050b9c:
  100050b9c  mov     x1, x21
  100050ba0  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100050ba4  mov     x29, x29
  100050ba8  bl      _objc_retainAutoreleasedReturnValue
  100050bac  mov     x21, x0
  100050bb0  adrp    x8, #0x100417000
  100050bb4  nop
  100050bb8  ldr     x1, [x8, #0x748]
  100050bbc  bl      _objc_msgSend                            ; [[UIScreen mainScreen] bounds]
  100050bc0  adrp    x8, #0x100181000
  100050bc4  ldr     d0, [x8, #0xbc0]                         ; d0 = -568.0
  100050bc8  fadd    d0, d3, d0
  100050bcc  fabs    d8, d0
  100050bd0  mov     x0, x21
  100050bd4  bl      _objc_release
  100050bd8  mov     x0, x19
  100050bdc  bl      _objc_release
  100050be0  adrp    x8, #0x100181000
  100050be4  ldr     d0, [x8, #0xbc8]                         ; d0 = 2.22044605e-16
  100050be8  fcmp    d8, d0
  100050bec  b.mi    loc_100050c44                            ; if (fabs(([[UIScreen mainScreen] bounds].3 + -568)) < 2.22045e-16)
  100050bf0  b       loc_100050c9c
loc_100050bf4:
  100050bf4  ldr     x0, [x25, #0x28]                         ; class UIScreen
  100050bf8  mov     x1, x21
  100050bfc  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100050c00  mov     x29, x29
  100050c04  bl      _objc_retainAutoreleasedReturnValue
  100050c08  mov     x21, x0
  100050c0c  mov     x1, x22
  100050c10  bl      _objc_msgSend                            ; [[UIScreen mainScreen] nativeBounds]
  100050c14  adrp    x8, #0x100181000
  100050c18  ldr     d0, [x8, #0xbd8]                         ; d0 = -1136.0
  100050c1c  fadd    d0, d3, d0
  100050c20  fabs    d9, d0
  100050c24  mov     x0, x21
  100050c28  bl      _objc_release
  100050c2c  mov     x0, x23
  100050c30  bl      _objc_release
  100050c34  mov     x0, x19
  100050c38  bl      _objc_release
  100050c3c  fcmp    d9, d8
  100050c40  b.pl    loc_100050c9c                            ; if (fabs(([[UIScreen mainScreen] nativeBounds].3 + -1136)) >= (or unordered) 2.22045e-16)
loc_100050c44:
  100050c44  adrp    x8, #0x1003b0000
  100050c48  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100050c4c  str     x8, [sp, #0xb0]
  100050c50  stp     w24, wzr, [sp, #0xb8]
  100050c54  adr     x8, #0x100051540                         ; &-[ADControlSchemeViewController loadView]_block_invoke
  100050c58  nop
  100050c5c  str     x8, [sp, #0xc0]
  100050c60  adrp    x8, #0x1003b1000
  100050c64  add     x8, x8, #0x990                           ; &d_1003b1990
  100050c68  str     x8, [sp, #0xc8]
  100050c6c  mov     x0, x20
  100050c70  bl      _objc_retain
  100050c74  str     x0, [sp, #0xd0]
  100050c78  adrp    x8, #0x100418000
  100050c7c  nop
  100050c80  ldr     x1, [x8, #0x5a0]
  100050c84  add     x2, sp, #0xb0
  100050c88  mov     x0, x26
  100050c8c  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:@"ADControlSchemeViewController" owner:self options:0] enumerateObjectsUsingBlock:^{-[ADControlSchemeViewController loadView]_block_invoke captures +0x20=self}]
  100050c90  ldr     x0, [sp, #0xd0]
  100050c94  bl      _objc_release
  100050c98  b       loc_100051288
loc_100050c9c:
  100050c9c  adrp    x8, #0x1003b0000
  100050ca0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100050ca4  str     x8, [sp, #0x88]
  100050ca8  stp     w24, wzr, [sp, #0x90]
  100050cac  adr     x8, #0x1000515dc                         ; &-[ADControlSchemeViewController loadView]_block_invoke_2
  100050cb0  nop
  100050cb4  str     x8, [sp, #0x98]
  100050cb8  adrp    x8, #0x1003b1000
  100050cbc  add     x8, x8, #0x9c0                           ; &d_1003b19c0
  100050cc0  str     x8, [sp, #0xa0]
  100050cc4  mov     x0, x20
  100050cc8  bl      _objc_retain
  100050ccc  mov     x20, x0
  100050cd0  str     x20, [sp, #0xa8]
  100050cd4  adrp    x8, #0x100418000
  100050cd8  nop
  100050cdc  ldr     x1, [x8, #0x5a0]
  100050ce0  add     x2, sp, #0x88
  100050ce4  mov     x0, x26
  100050ce8  bl      _objc_msgSend                            ; [[[NSBundle mainBundle] loadNibNamed:@"ADControlSchemeViewController" owner:self options:0] enumerateObjectsUsingBlock:^{-[ADControlSchemeViewController loadView]_block_invoke_2 captures +0x20=self}]
  100050cec  adrp    x8, #0x100416000
  100050cf0  nop
  100050cf4  ldr     x19, [x8, #0xf18]
  100050cf8  mov     x0, x20
  100050cfc  mov     x1, x19
  100050d00  bl      _objc_msgSend                            ; [self view]
  100050d04  mov     x29, x29
  100050d08  bl      _objc_retainAutoreleasedReturnValue
  100050d0c  mov     x23, x0
  100050d10  adrp    x8, #0x100417000
  100050d14  nop
  100050d18  ldr     x1, [x8, #0xd08]
  100050d1c  str     x1, [sp, #0x40]
  100050d20  mov     w2, #8
  100050d24  bl      _objc_msgSend                            ; [[self view] viewWithTag:8]
  100050d28  mov     x29, x29
  100050d2c  bl      _objc_retainAutoreleasedReturnValue
  100050d30  mov     x21, x0
  100050d34  adrp    x8, #0x100418000
  100050d38  nop
  100050d3c  ldr     x1, [x8, #0xdc0]
  100050d40  str     x1, [sp, #0x38]
  100050d44  adrp    x3, #0x1003bd000
  100050d48  add     x3, x3, #0x650                           ; @"contentScrollView"
  100050d4c  mov     x0, x20
  100050d50  mov     x2, x21
  100050d54  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:8] forKeyPath:@"contentScrollView"]
  100050d58  mov     x0, x21
  100050d5c  bl      _objc_release
  100050d60  mov     x0, x23
  100050d64  bl      _objc_release
  100050d68  mov     x0, x20
  100050d6c  mov     x1, x19
  100050d70  bl      _objc_msgSend                            ; [self view]
  100050d74  mov     x29, x29
  100050d78  bl      _objc_retainAutoreleasedReturnValue
  100050d7c  mov     x23, x0
  100050d80  mov     w2, #1
  100050d84  ldr     x1, [sp, #0x40]
  100050d88  bl      _objc_msgSend                            ; [[self view] viewWithTag:1]
  100050d8c  mov     x29, x29
  100050d90  bl      _objc_retainAutoreleasedReturnValue
  100050d94  mov     x21, x0
  100050d98  adrp    x3, #0x1003bd000
  100050d9c  add     x3, x3, #0x670                           ; @"aimingButton"
  100050da0  mov     x0, x20
  100050da4  ldr     x1, [sp, #0x38]
  100050da8  mov     x2, x21
  100050dac  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:1] forKeyPath:@"aimingButton"]
  100050db0  mov     x0, x21
  100050db4  bl      _objc_release
  100050db8  mov     x0, x23
  100050dbc  bl      _objc_release
  100050dc0  mov     x0, x20
  100050dc4  mov     x1, x19
  100050dc8  bl      _objc_msgSend                            ; [self view]
  100050dcc  mov     x29, x29
  100050dd0  bl      _objc_retainAutoreleasedReturnValue
  100050dd4  mov     x23, x0
  100050dd8  mov     w2, #0xa
  100050ddc  ldr     x1, [sp, #0x40]
  100050de0  bl      _objc_msgSend                            ; [[self view] viewWithTag:10]
  100050de4  mov     x29, x29
  100050de8  bl      _objc_retainAutoreleasedReturnValue
  100050dec  mov     x21, x0
  100050df0  adrp    x3, #0x1003bd000
  100050df4  add     x3, x3, #0x690                           ; @"controlsButton"
  100050df8  mov     x0, x20
  100050dfc  ldr     x1, [sp, #0x38]
  100050e00  mov     x2, x21
  100050e04  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:10] forKeyPath:@"controlsButton"]
  100050e08  mov     x0, x21
  100050e0c  bl      _objc_release
  100050e10  mov     x0, x23
  100050e14  bl      _objc_release
  100050e18  mov     x0, x20
  100050e1c  mov     x1, x19
  100050e20  bl      _objc_msgSend                            ; [self view]
  100050e24  mov     x29, x29
  100050e28  bl      _objc_retainAutoreleasedReturnValue
  100050e2c  mov     x19, x0
  100050e30  mov     w2, #0x12
  100050e34  ldr     x1, [sp, #0x40]
  100050e38  bl      _objc_msgSend                            ; [[self view] viewWithTag:18]
  100050e3c  mov     x29, x29
  100050e40  bl      _objc_retainAutoreleasedReturnValue
  100050e44  mov     x21, x0
  100050e48  adrp    x3, #0x1003bd000
  100050e4c  add     x3, x3, #0x6b0                           ; @"soundButton"
  100050e50  mov     x0, x20
  100050e54  ldr     x1, [sp, #0x38]
  100050e58  mov     x2, x21
  100050e5c  bl      _objc_msgSend                            ; [self setValue:[[self view] viewWithTag:18] forKeyPath:@"soundButton"]
  100050e60  mov     x0, x21
  100050e64  bl      _objc_release
  100050e68  mov     x0, x19
  100050e6c  bl      _objc_release
  100050e70  adrp    x8, #0x1003bd000
  100050e74  add     x8, x8, #0x6d0                           ; @"aimingText"
  100050e78  str     x8, [sp, #0x168]
  100050e7c  adrp    x21, #0x10041d000
  100050e80  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050e84  adrp    x8, #0x100416000
  100050e88  nop
  100050e8c  ldr     x19, [x8, #0xec0]
  100050e90  mov     w2, #2
  100050e94  mov     x1, x19
  100050e98  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100050e9c  mov     x29, x29
  100050ea0  bl      _objc_retainAutoreleasedReturnValue
  100050ea4  mov     x27, x0
  100050ea8  stur    x27, [x29, #-0xc8]
  100050eac  adrp    x8, #0x1003bd000
  100050eb0  add     x8, x8, #0x6f0                           ; @"announcerSwitch"
  100050eb4  str     x8, [sp, #0x170]
  100050eb8  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050ebc  mov     w2, #4
  100050ec0  mov     x1, x19
  100050ec4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  100050ec8  bl      _objc_retain
  100050ecc  mov     x22, x0
  100050ed0  stur    x22, [x29, #-0xc0]
  100050ed4  adrp    x8, #0x1003bd000
  100050ed8  add     x8, x8, #0x710                           ; @"buttonsButton"
  100050edc  str     x8, [sp, #0x178]
  100050ee0  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050ee4  mov     w2, #7
  100050ee8  mov     x1, x19
  100050eec  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  100050ef0  bl      _objc_retain
  100050ef4  mov     x24, x0
  100050ef8  stur    x24, [x29, #-0xb8]
  100050efc  adrp    x8, #0x1003bd000
  100050f00  add     x8, x8, #0x730                           ; @"controlsText"
  100050f04  str     x8, [sp, #0x180]
  100050f08  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050f0c  mov     w2, #0xb
  100050f10  mov     x1, x19
  100050f14  bl      _objc_msgSend                            ; [NSNumber numberWithInt:11]
  100050f18  bl      _objc_retain
  100050f1c  mov     x25, x0
  100050f20  stur    x25, [x29, #-0xb0]
  100050f24  adrp    x8, #0x1003bd000
  100050f28  add     x8, x8, #0x750                           ; @"gestureButton"
  100050f2c  str     x8, [sp, #0x188]
  100050f30  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050f34  mov     w2, #0xc
  100050f38  mov     x1, x19
  100050f3c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:12]
  100050f40  bl      _objc_retain
  100050f44  mov     x23, x0
  100050f48  stur    x23, [x29, #-0xa8]
  100050f4c  adrp    x8, #0x1003bd000
  100050f50  add     x8, x8, #0x770                           ; @"gyroButton"
  100050f54  str     x8, [sp, #0x190]
  100050f58  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050f5c  mov     w2, #0xd
  100050f60  mov     x1, x19
  100050f64  bl      _objc_msgSend                            ; [NSNumber numberWithInt:13]
  100050f68  str     x23, [sp, #0x10]
  100050f6c  bl      _objc_retain
  100050f70  mov     x28, x0
  100050f74  stur    x28, [x29, #-0xa0]
  100050f78  adrp    x8, #0x1003bd000
  100050f7c  add     x8, x8, #0x790                           ; @"sensitivitySliderBack"
  100050f80  str     x8, [sp, #0x198]
  100050f84  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050f88  mov     w2, #0xf
  100050f8c  mov     x1, x19
  100050f90  bl      _objc_msgSend                            ; [NSNumber numberWithInt:15]
  100050f94  bl      _objc_retain
  100050f98  mov     x23, x0
  100050f9c  stur    x23, [x29, #-0x98]
  100050fa0  adrp    x8, #0x1003bd000
  100050fa4  add     x8, x8, #0x7b0                           ; @"sensivityLabel"
  100050fa8  str     x8, [sp, #0x1a0]
  100050fac  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050fb0  mov     w2, #0x10
  100050fb4  mov     x1, x19
  100050fb8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:16]
  100050fbc  stp     x25, x24, [sp, #0x20]
  100050fc0  bl      _objc_retain
  100050fc4  mov     x24, x0
  100050fc8  stur    x24, [x29, #-0x90]
  100050fcc  adrp    x8, #0x1003bd000
  100050fd0  add     x8, x8, #0x7d0                           ; @"sensivitySlider"
  100050fd4  str     x8, [sp, #0x1a8]
  100050fd8  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100050fdc  mov     w2, #0x11
  100050fe0  mov     x1, x19
  100050fe4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:17]
  100050fe8  bl      _objc_retain
  100050fec  mov     x25, x0
  100050ff0  stur    x25, [x29, #-0x88]
  100050ff4  adrp    x8, #0x1003bd000
  100050ff8  add     x8, x8, #0x7f0                           ; @"swipeButton"
  100050ffc  str     x8, [sp, #0x1b0]
  100051000  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100051004  mov     w2, #0x13
  100051008  mov     x1, x19
  10005100c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:19]
  100051010  str     x27, [sp, #0x30]
  100051014  str     x26, [sp, #0x18]
  100051018  bl      _objc_retain
  10005101c  mov     x26, x0
  100051020  stur    x26, [x29, #-0x80]
  100051024  adrp    x8, #0x1003bd000
  100051028  add     x8, x8, #0x810                           ; @"tiltButton"
  10005102c  str     x8, [sp, #0x1b8]
  100051030  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  100051034  mov     w2, #0x14
  100051038  mov     x1, x19
  10005103c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:20]
  100051040  bl      _objc_retain
  100051044  mov     x27, x0
  100051048  stur    x27, [x29, #-0x78]
  10005104c  adrp    x8, #0x1003bd000
  100051050  add     x8, x8, #0x830                           ; @"volumeText"
  100051054  str     x8, [sp, #0x1c0]
  100051058  ldr     x0, [x21, #0xf68]                        ; class NSNumber
  10005105c  mov     w2, #0x15
  100051060  mov     x1, x19
  100051064  bl      _objc_msgSend                            ; [NSNumber numberWithInt:21]
  100051068  bl      _objc_retain
  10005106c  mov     x19, x0
  100051070  stur    x19, [x29, #-0x70]
  100051074  adrp    x8, #0x10041d000
  100051078  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10005107c  adrp    x8, #0x100416000
  100051080  nop
  100051084  ldr     x1, [x8, #0xcd0]
  100051088  sub     x2, x29, #0xc8
  10005108c  add     x3, sp, #0x168
  100051090  mov     w4, #0xc
  100051094  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12]
  100051098  mov     x29, x29
  10005109c  bl      _objc_retainAutoreleasedReturnValue
  1000510a0  mov     x21, x0
  1000510a4  mov     x0, x19
  1000510a8  bl      _objc_release
  1000510ac  mov     x0, x27
  1000510b0  bl      _objc_release
  1000510b4  mov     x0, x26
  1000510b8  bl      _objc_release
  1000510bc  mov     x0, x25
  1000510c0  bl      _objc_release
  1000510c4  mov     x0, x24
  1000510c8  bl      _objc_release
  1000510cc  mov     x0, x23
  1000510d0  bl      _objc_release
  1000510d4  mov     x0, x28
  1000510d8  bl      _objc_release
  1000510dc  ldr     x0, [sp, #0x10]
  1000510e0  bl      _objc_release
  1000510e4  ldr     x0, [sp, #0x20]
  1000510e8  bl      _objc_release
  1000510ec  ldr     x0, [sp, #0x28]
  1000510f0  bl      _objc_release
  1000510f4  mov     x0, x22
  1000510f8  bl      _objc_release
  1000510fc  ldr     x0, [sp, #0x30]
  100051100  bl      _objc_release
  100051104  stp     xzr, xzr, [sp, #0x78]
  100051108  stp     xzr, xzr, [sp, #0x68]
  10005110c  stp     xzr, xzr, [sp, #0x58]
  100051110  stp     xzr, xzr, [sp, #0x48]
  100051114  mov     x0, x21
  100051118  bl      _objc_retain
  10005111c  mov     x19, x0
  100051120  adrp    x8, #0x100416000
  100051124  nop
  100051128  ldr     x1, [x8, #0xe00]
  10005112c  str     x1, [sp, #0x20]
  100051130  add     x2, sp, #0x48
  100051134  add     x3, sp, #0xe8
  100051138  mov     w4, #0x10
  10005113c  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] countByEnumeratingWithState:&sp[0x48] objects:&sp[0xe8] count:16]
  100051140  mov     x24, x0
  100051144  mov     x21, x20
  100051148  cbz     x24, loc_100051260                       ; if ([[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] countByEnumeratingWithState:&sp[0x48] objects:&sp[0xe8] count:16] == 0)
  10005114c  ldr     x8, [sp, #0x58]
  100051150  ldr     x8, [x8]
  100051154  str     x8, [sp, #0x30]
  100051158  adrp    x8, #0x100418000
  10005115c  nop
  100051160  ldr     x8, [x8, #0x760]
  100051164  str     x8, [sp, #0x28]
  100051168  adrp    x8, #0x100417000
  10005116c  nop
  100051170  ldr     x26, [x8, #0x40]
  100051174  adrp    x8, #0x100417000
  100051178  add     x8, x8, #0xb0                            ; &@selector(integerValue)
  10005117c  ldr     x27, [x8]
loc_100051180:
  100051180  mov     x20, #0
loc_100051184:
  100051184  ldr     x8, [sp, #0x58]
  100051188  ldr     x8, [x8]
  10005118c  ldr     x9, [sp, #0x30]
  100051190  cmp     x8, x9
  100051194  b.eq    loc_1000511a0                            ; if (x8 == x9)
  100051198  mov     x0, x19
  10005119c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12])
loc_1000511a0:
  1000511a0  ldr     x8, [sp, #0x50]
  1000511a4  ldr     x28, [x8, x20, lsl #3]
  1000511a8  mov     x0, x21
  1000511ac  ldr     x1, [sp, #0x28]
  1000511b0  bl      _objc_msgSend                            ; [self contentView]
  1000511b4  mov     x25, x21
  1000511b8  mov     x29, x29
  1000511bc  bl      _objc_retainAutoreleasedReturnValue
  1000511c0  mov     x23, x0
  1000511c4  mov     x0, x19
  1000511c8  mov     x1, x26
  1000511cc  mov     x2, x28
  1000511d0  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] objectForKey:x2]
  1000511d4  mov     x29, x29
  1000511d8  bl      _objc_retainAutoreleasedReturnValue
  1000511dc  mov     x21, x0
  1000511e0  mov     x1, x27
  1000511e4  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] objectForKey:x2] integerValue]
  1000511e8  mov     x2, x0
  1000511ec  mov     x0, x23
  1000511f0  ldr     x1, [sp, #0x40]
  1000511f4  bl      _objc_msgSend                            ; [[self contentView] viewWithTag:[[[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] objectForKey:x2] integerValue]]
  1000511f8  mov     x29, x29
  1000511fc  bl      _objc_retainAutoreleasedReturnValue
  100051200  mov     x22, x0
  100051204  mov     x0, x21
  100051208  bl      _objc_release
  10005120c  mov     x0, x23
  100051210  bl      _objc_release
  100051214  mov     x21, x25
  100051218  mov     x0, x21
  10005121c  ldr     x1, [sp, #0x38]
  100051220  mov     x2, x22
  100051224  mov     x3, x28
  100051228  bl      _objc_msgSend                            ; [self setValue:[[self contentView] viewWithTag:[[[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] objectForKey:x2] integerValue]] forKeyPath:x3]
  10005122c  mov     x0, x22
  100051230  bl      _objc_release
  100051234  add     x20, x20, #1
  100051238  cmp     x20, x24
  10005123c  b.lo    loc_100051184                            ; if ((x20 + 1) <u [[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] countByEnumeratingWithState:&sp[0x48] obje…)
  100051240  add     x2, sp, #0x48
  100051244  add     x3, sp, #0xe8
  100051248  mov     w4, #0x10
  10005124c  mov     x0, x19
  100051250  ldr     x1, [sp, #0x20]
  100051254  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] countByEnumeratingWithState:&sp[0x48] objects:&sp[0xe8] count:16]
  100051258  mov     x24, x0
  10005125c  cbnz    x24, loc_100051180                       ; if ([[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&sp[0x168] count:12] countByEnumeratingWithState:&sp[0x48] objects:&sp[0xe8] count:16] != 0)
loc_100051260:
  100051260  mov     x0, x19
  100051264  bl      _objc_release
  100051268  mov     x0, x19
  10005126c  bl      _objc_release
  100051270  ldr     x0, [sp, #0xa8]
  100051274  bl      _objc_release
  100051278  ldr     x26, [sp, #0x18]
  10005127c  adrp    x27, #0x1003b0000
  100051280  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  100051284  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
loc_100051288:
  100051288  mov     x0, x26
  10005128c  bl      _objc_release
loc_100051290:
  100051290  ldur    x8, [x29, #-0x68]
  100051294  sub     x8, x27, x8
  100051298  cbnz    x8, loc_1000512c0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10005129c  sub     sp, x29, #0x60
  1000512a0  ldp     x29, x30, [sp, #0x60]
  1000512a4  ldp     x20, x19, [sp, #0x50]
  1000512a8  ldp     x22, x21, [sp, #0x40]
  1000512ac  ldp     x24, x23, [sp, #0x30]
  1000512b0  ldp     x26, x25, [sp, #0x20]
  1000512b4  ldp     x28, x27, [sp, #0x10]
  1000512b8  ldp     d9, d8, [sp], #0x70
  1000512bc  ret
loc_1000512c0:
  1000512c0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000512c4  mov     x20, x0
  1000512c8  mov     x0, x21
  1000512cc  bl      _objc_release
  1000512d0  b       loc_1000512e0
loc_1000512d4:
  1000512d4  mov     x20, x0
  1000512d8  b       loc_1000512fc
  1000512dc  mov     x20, x0
loc_1000512e0:
  1000512e0  ldr     x26, [sp, #0x18]
  1000512e4  mov     x0, x23
  1000512e8  bl      _objc_release
  1000512ec  b       loc_100051300
  1000512f0  mov     x20, x0
  1000512f4  mov     x0, x22
  1000512f8  bl      _objc_release
loc_1000512fc:
  1000512fc  ldr     x26, [sp, #0x18]
loc_100051300:
  100051300  mov     x0, x19
loc_100051304:
  100051304  bl      _objc_release
loc_100051308:
  100051308  mov     x0, x19
loc_10005130c:
  10005130c  bl      _objc_release
loc_100051310:
  100051310  ldr     x0, [sp, #0xa8]
  100051314  bl      _objc_release
loc_100051318:
  100051318  mov     x0, x26
loc_10005131c:
  10005131c  bl      _objc_release
  100051320  mov     x0, x20
  100051324  bl      __Unwind_Resume                          ; Unwind_Resume()
  100051328  b       loc_1000512d4
  10005132c  mov     x20, x0
  100051330  b       loc_100051364
  100051334  mov     x20, x0
  100051338  b       loc_100051310
  10005133c  b       loc_10005137c
  100051340  mov     x20, x0
  100051344  b       loc_100051534
  100051348  mov     x20, x0
  10005134c  b       loc_10005135c
  100051350  mov     x20, x0
  100051354  mov     x0, x25
  100051358  bl      _objc_release
loc_10005135c:
  10005135c  mov     x0, x24
  100051360  bl      _objc_release
loc_100051364:
  100051364  mov     x0, x21
  100051368  bl      _objc_release
  10005136c  b       loc_100051380
  100051370  b       loc_10005137c
  100051374  mov     x20, x0
  100051378  b       loc_100051318
loc_10005137c:
  10005137c  mov     x20, x0
loc_100051380:
  100051380  mov     x0, x19
  100051384  b       loc_10005131c
  100051388  mov     x20, x0
  10005138c  b       loc_10005152c
  100051390  mov     x20, x0
  100051394  ldr     x0, [sp, #0xd0]
  100051398  bl      _objc_release
  10005139c  b       loc_100051318
  1000513a0  mov     x20, x0
  1000513a4  b       loc_100051534
  1000513a8  mov     x20, x0
  1000513ac  mov     x0, x21
  1000513b0  b       loc_100051530
  1000513b4  mov     x20, x0
  1000513b8  b       loc_1000513e0
  1000513bc  b       loc_1000513d4
  1000513c0  mov     x20, x0
  1000513c4  b       loc_1000513e0
  1000513c8  b       loc_1000513d4
  1000513cc  mov     x20, x0
  1000513d0  b       loc_1000513e0
loc_1000513d4:
  1000513d4  mov     x20, x0
  1000513d8  mov     x0, x21
  1000513dc  bl      _objc_release
loc_1000513e0:
  1000513e0  mov     x0, x23
  1000513e4  b       loc_10005130c
  1000513e8  mov     x20, x0
  1000513ec  b       loc_100051308
  1000513f0  mov     x20, x0
  1000513f4  mov     x0, x21
  1000513f8  b       loc_100051304
  1000513fc  str     x27, [sp, #0x30]
  100051400  str     x26, [sp, #0x18]
  100051404  mov     x20, x0
  100051408  b       loc_10005150c
  10005140c  str     x27, [sp, #0x30]
  100051410  str     x26, [sp, #0x18]
  100051414  mov     x20, x0
  100051418  b       loc_100051504
  10005141c  stp     x24, x27, [sp, #0x28]
  100051420  str     x26, [sp, #0x18]
  100051424  mov     x20, x0
  100051428  b       loc_1000514fc
  10005142c  stp     x25, x24, [sp, #0x20]
  100051430  str     x27, [sp, #0x30]
  100051434  str     x26, [sp, #0x18]
  100051438  mov     x20, x0
  10005143c  b       loc_1000514f4
  100051440  str     x23, [sp, #0x10]
  100051444  stp     x25, x24, [sp, #0x20]
  100051448  str     x27, [sp, #0x30]
  10005144c  str     x26, [sp, #0x18]
  100051450  mov     x20, x0
  100051454  b       loc_1000514ec
  100051458  stp     x25, x24, [sp, #0x20]
  10005145c  str     x27, [sp, #0x30]
  100051460  str     x26, [sp, #0x18]
  100051464  mov     x20, x0
  100051468  b       loc_1000514e4
  10005146c  stp     x25, x24, [sp, #0x20]
  100051470  str     x27, [sp, #0x30]
  100051474  str     x26, [sp, #0x18]
  100051478  mov     x20, x0
  10005147c  b       loc_1000514dc
  100051480  str     x27, [sp, #0x30]
  100051484  str     x26, [sp, #0x18]
  100051488  mov     x20, x0
  10005148c  b       loc_1000514d4
  100051490  str     x27, [sp, #0x30]
  100051494  str     x26, [sp, #0x18]
  100051498  mov     x20, x0
  10005149c  b       loc_1000514cc
  1000514a0  mov     x20, x0
  1000514a4  b       loc_1000514c4
  1000514a8  mov     x20, x0
  1000514ac  b       loc_1000514bc
  1000514b0  mov     x20, x0
  1000514b4  mov     x0, x19
  1000514b8  bl      _objc_release
loc_1000514bc:
  1000514bc  mov     x0, x27
  1000514c0  bl      _objc_release
loc_1000514c4:
  1000514c4  mov     x0, x26
  1000514c8  bl      _objc_release
loc_1000514cc:
  1000514cc  mov     x0, x25
  1000514d0  bl      _objc_release
loc_1000514d4:
  1000514d4  mov     x0, x24
  1000514d8  bl      _objc_release
loc_1000514dc:
  1000514dc  mov     x0, x23
  1000514e0  bl      _objc_release
loc_1000514e4:
  1000514e4  mov     x0, x28
  1000514e8  bl      _objc_release
loc_1000514ec:
  1000514ec  ldr     x0, [sp, #0x10]
  1000514f0  bl      _objc_release
loc_1000514f4:
  1000514f4  ldr     x0, [sp, #0x20]
  1000514f8  bl      _objc_release
loc_1000514fc:
  1000514fc  ldr     x0, [sp, #0x28]
  100051500  bl      _objc_release
loc_100051504:
  100051504  mov     x0, x22
  100051508  bl      _objc_release
loc_10005150c:
  10005150c  ldr     x0, [sp, #0x30]
  100051510  bl      _objc_release
  100051514  ldr     x26, [sp, #0x18]
  100051518  b       loc_100051310
  10005151c  b       loc_1000512d4
  100051520  mov     x20, x0
  100051524  mov     x0, x21
  100051528  bl      _objc_release
loc_10005152c:
  10005152c  mov     x0, x23
loc_100051530:
  100051530  bl      _objc_release
loc_100051534:
  100051534  mov     x0, x19
  100051538  bl      _objc_release
  10005153c  b       loc_100051318

; ======================================================================
; -[ADControlSchemeViewController loadView]_block_invoke
; address 0x100051540  size 140  kind block
; ======================================================================
  100051540  stp     x20, x19, [sp, #-0x20]!
  100051544  stp     x29, x30, [sp, #0x10]
  100051548  add     x29, sp, #0x10
  10005154c  mov     x20, x0
  100051550  mov     x0, x1
  100051554  bl      _objc_retain
  100051558  bl      _objc_retain
  10005155c  mov     x19, x0
  100051560  adrp    x8, #0x100417000
  100051564  nop
  100051568  ldr     x1, [x8, #0x6b0]
  10005156c  bl      _objc_msgSend                            ; [blockarg1 tag]
  100051570  cmp     x0, #0xadd
  100051574  b.ne    loc_100051598                            ; if ([blockarg1 tag] != 2781)
  100051578  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10005157c  adrp    x8, #0x100418000
  100051580  nop
  100051584  ldr     x1, [x8, #0xdc0]
  100051588  adrp    x3, #0x1003bd000
  10005158c  add     x3, x3, #0x610                           ; @"view"
  100051590  mov     x2, x19
  100051594  bl      _objc_msgSend                            ; [self setValue:blockarg1 forKeyPath:@"view"]
loc_100051598:
  100051598  mov     x0, x19
  10005159c  bl      _objc_release
  1000515a0  mov     x0, x19
  1000515a4  ldp     x29, x30, [sp, #0x10]
  1000515a8  ldp     x20, x19, [sp], #0x20
  1000515ac  b       _objc_release
  1000515b0  mov     x20, x0
  1000515b4  mov     x0, x19
  1000515b8  bl      _objc_release
  1000515bc  mov     x0, x19
  1000515c0  bl      _objc_release
  1000515c4  mov     x0, x20
  1000515c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000515cc
; address 0x1000515cc  size 8  kind sub
; ======================================================================
  1000515cc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000515d0  b       _objc_retain

; ======================================================================
; sub_1000515d4
; address 0x1000515d4  size 8  kind sub
; ======================================================================
  1000515d4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000515d8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController loadView]_block_invoke_2
; address 0x1000515dc  size 208  kind block
; ======================================================================
  1000515dc  stp     x22, x21, [sp, #-0x30]!
  1000515e0  stp     x20, x19, [sp, #0x10]
  1000515e4  stp     x29, x30, [sp, #0x20]
  1000515e8  add     x29, sp, #0x20
  1000515ec  mov     x20, x0
  1000515f0  mov     x0, x1
  1000515f4  bl      _objc_retain
  1000515f8  bl      _objc_retain
  1000515fc  mov     x19, x0
  100051600  adrp    x8, #0x100417000
  100051604  nop
  100051608  ldr     x21, [x8, #0x6b0]
  10005160c  mov     x1, x21
  100051610  bl      _objc_msgSend                            ; [blockarg1 tag]
  100051614  cmp     x0, #0xade
  100051618  b.ne    loc_100051640                            ; if ([blockarg1 tag] != 2782)
  10005161c  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100051620  adrp    x8, #0x100418000
  100051624  nop
  100051628  ldr     x1, [x8, #0xdc0]
  10005162c  adrp    x3, #0x1003bd000
  100051630  add     x3, x3, #0x610                           ; @"view"
  100051634  mov     x2, x19
  100051638  bl      _objc_msgSend                            ; [self setValue:blockarg1 forKeyPath:@"view"]
  10005163c  b       loc_100051674
loc_100051640:
  100051640  mov     x0, x19
  100051644  mov     x1, x21
  100051648  bl      _objc_msgSend                            ; [blockarg1 tag]
  10005164c  cmp     x0, #0xbb9
  100051650  b.ne    loc_100051674                            ; if ([blockarg1 tag] != 3001)
  100051654  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100051658  adrp    x8, #0x100418000
  10005165c  nop
  100051660  ldr     x1, [x8, #0xdc0]
  100051664  adrp    x3, #0x1003bd000
  100051668  add     x3, x3, #0x630                           ; @"contentView"
  10005166c  mov     x2, x19
  100051670  bl      _objc_msgSend                            ; [self setValue:blockarg1 forKeyPath:@"contentView"]
loc_100051674:
  100051674  mov     x0, x19
  100051678  bl      _objc_release
  10005167c  mov     x0, x19
  100051680  ldp     x29, x30, [sp, #0x20]
  100051684  ldp     x20, x19, [sp, #0x10]
  100051688  ldp     x22, x21, [sp], #0x30
  10005168c  b       _objc_release
  100051690  mov     x20, x0
  100051694  mov     x0, x19
  100051698  bl      _objc_release
  10005169c  mov     x0, x19
  1000516a0  bl      _objc_release
  1000516a4  mov     x0, x20
  1000516a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000516ac
; address 0x1000516ac  size 8  kind sub
; ======================================================================
  1000516ac  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000516b0  b       _objc_retain

; ======================================================================
; sub_1000516b4
; address 0x1000516b4  size 8  kind sub
; ======================================================================
  1000516b4  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000516b8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController setAllTabButtons:]
; address 0x1000516bc  size 236  kind objc
; ======================================================================
  1000516bc  stp     x22, x21, [sp, #-0x30]!
  1000516c0  stp     x20, x19, [sp, #0x10]
  1000516c4  stp     x29, x30, [sp, #0x20]
  1000516c8  add     x29, sp, #0x20
  1000516cc  mov     x19, x2
  1000516d0  mov     x20, x0
  1000516d4  adrp    x8, #0x100418000
  1000516d8  nop
  1000516dc  ldr     x1, [x8, #0xce8]
  1000516e0  bl      _objc_msgSend                            ; [self aimingButton]
  1000516e4  mov     x29, x29
  1000516e8  bl      _objc_retainAutoreleasedReturnValue
  1000516ec  mov     x22, x0
  1000516f0  adrp    x8, #0x100417000
  1000516f4  nop
  1000516f8  ldr     x21, [x8, #0x878]
  1000516fc  mov     x1, x21
  100051700  mov     x2, x19
  100051704  bl      _objc_msgSend                            ; [[self aimingButton] setEnabled:arg1]
  100051708  mov     x0, x22
  10005170c  bl      _objc_release
  100051710  adrp    x8, #0x100418000
  100051714  nop
  100051718  ldr     x1, [x8, #0xcf8]
  10005171c  mov     x0, x20
  100051720  bl      _objc_msgSend                            ; [self controlsButton]
  100051724  mov     x29, x29
  100051728  bl      _objc_retainAutoreleasedReturnValue
  10005172c  mov     x22, x0
  100051730  mov     x1, x21
  100051734  mov     x2, x19
  100051738  bl      _objc_msgSend                            ; [[self controlsButton] setEnabled:arg1]
  10005173c  mov     x0, x22
  100051740  bl      _objc_release
  100051744  adrp    x8, #0x100418000
  100051748  nop
  10005174c  ldr     x1, [x8, #0xd08]
  100051750  mov     x0, x20
  100051754  bl      _objc_msgSend                            ; [self soundButton]
  100051758  mov     x29, x29
  10005175c  bl      _objc_retainAutoreleasedReturnValue
  100051760  mov     x20, x0
  100051764  mov     x1, x21
  100051768  mov     x2, x19
  10005176c  bl      _objc_msgSend                            ; [[self soundButton] setEnabled:arg1]
  100051770  mov     x0, x20
  100051774  ldp     x29, x30, [sp, #0x20]
  100051778  ldp     x20, x19, [sp, #0x10]
  10005177c  ldp     x22, x21, [sp], #0x30
  100051780  b       _objc_release
  100051784  b       loc_100051788
loc_100051788:
  100051788  mov     x19, x0
  10005178c  mov     x0, x22
  100051790  b       loc_10005179c
  100051794  mov     x19, x0
  100051798  mov     x0, x20
loc_10005179c:
  10005179c  bl      _objc_release
  1000517a0  mov     x0, x19
  1000517a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController setAllAimingButton:]
; address 0x1000517a8  size 236  kind objc
; ======================================================================
  1000517a8  stp     x22, x21, [sp, #-0x30]!
  1000517ac  stp     x20, x19, [sp, #0x10]
  1000517b0  stp     x29, x30, [sp, #0x20]
  1000517b4  add     x29, sp, #0x20
  1000517b8  mov     x19, x2
  1000517bc  mov     x20, x0
  1000517c0  adrp    x8, #0x100416000
  1000517c4  nop
  1000517c8  ldr     x1, [x8, #0xbc8]
  1000517cc  bl      _objc_msgSend                            ; [self gyroButton]
  1000517d0  mov     x29, x29
  1000517d4  bl      _objc_retainAutoreleasedReturnValue
  1000517d8  mov     x22, x0
  1000517dc  adrp    x8, #0x100417000
  1000517e0  nop
  1000517e4  ldr     x21, [x8, #0x878]
  1000517e8  mov     x1, x21
  1000517ec  mov     x2, x19
  1000517f0  bl      _objc_msgSend                            ; [[self gyroButton] setEnabled:arg1]
  1000517f4  mov     x0, x22
  1000517f8  bl      _objc_release
  1000517fc  adrp    x8, #0x100416000
  100051800  nop
  100051804  ldr     x1, [x8, #0xbd8]
  100051808  mov     x0, x20
  10005180c  bl      _objc_msgSend                            ; [self swipeButton]
  100051810  mov     x29, x29
  100051814  bl      _objc_retainAutoreleasedReturnValue
  100051818  mov     x22, x0
  10005181c  mov     x1, x21
  100051820  mov     x2, x19
  100051824  bl      _objc_msgSend                            ; [[self swipeButton] setEnabled:arg1]
  100051828  mov     x0, x22
  10005182c  bl      _objc_release
  100051830  adrp    x8, #0x100416000
  100051834  nop
  100051838  ldr     x1, [x8, #0xbe0]
  10005183c  mov     x0, x20
  100051840  bl      _objc_msgSend                            ; [self tiltButton]
  100051844  mov     x29, x29
  100051848  bl      _objc_retainAutoreleasedReturnValue
  10005184c  mov     x20, x0
  100051850  mov     x1, x21
  100051854  mov     x2, x19
  100051858  bl      _objc_msgSend                            ; [[self tiltButton] setEnabled:arg1]
  10005185c  mov     x0, x20
  100051860  ldp     x29, x30, [sp, #0x20]
  100051864  ldp     x20, x19, [sp, #0x10]
  100051868  ldp     x22, x21, [sp], #0x30
  10005186c  b       _objc_release
  100051870  b       loc_100051874
loc_100051874:
  100051874  mov     x19, x0
  100051878  mov     x0, x22
  10005187c  b       loc_100051888
  100051880  mov     x19, x0
  100051884  mov     x0, x20
loc_100051888:
  100051888  bl      _objc_release
  10005188c  mov     x0, x19
  100051890  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController selectAllTabButtons:]
; address 0x100051894  size 236  kind objc
; ======================================================================
  100051894  stp     x22, x21, [sp, #-0x30]!
  100051898  stp     x20, x19, [sp, #0x10]
  10005189c  stp     x29, x30, [sp, #0x20]
  1000518a0  add     x29, sp, #0x20
  1000518a4  mov     x19, x2
  1000518a8  mov     x20, x0
  1000518ac  adrp    x8, #0x100418000
  1000518b0  nop
  1000518b4  ldr     x1, [x8, #0xce8]
  1000518b8  bl      _objc_msgSend                            ; [self aimingButton]
  1000518bc  mov     x29, x29
  1000518c0  bl      _objc_retainAutoreleasedReturnValue
  1000518c4  mov     x22, x0
  1000518c8  adrp    x8, #0x100418000
  1000518cc  nop
  1000518d0  ldr     x21, [x8, #0xd70]
  1000518d4  mov     x1, x21
  1000518d8  mov     x2, x19
  1000518dc  bl      _objc_msgSend                            ; [[self aimingButton] setSelected:arg1]
  1000518e0  mov     x0, x22
  1000518e4  bl      _objc_release
  1000518e8  adrp    x8, #0x100418000
  1000518ec  nop
  1000518f0  ldr     x1, [x8, #0xcf8]
  1000518f4  mov     x0, x20
  1000518f8  bl      _objc_msgSend                            ; [self controlsButton]
  1000518fc  mov     x29, x29
  100051900  bl      _objc_retainAutoreleasedReturnValue
  100051904  mov     x22, x0
  100051908  mov     x1, x21
  10005190c  mov     x2, x19
  100051910  bl      _objc_msgSend                            ; [[self controlsButton] setSelected:arg1]
  100051914  mov     x0, x22
  100051918  bl      _objc_release
  10005191c  adrp    x8, #0x100418000
  100051920  nop
  100051924  ldr     x1, [x8, #0xd08]
  100051928  mov     x0, x20
  10005192c  bl      _objc_msgSend                            ; [self soundButton]
  100051930  mov     x29, x29
  100051934  bl      _objc_retainAutoreleasedReturnValue
  100051938  mov     x20, x0
  10005193c  mov     x1, x21
  100051940  mov     x2, x19
  100051944  bl      _objc_msgSend                            ; [[self soundButton] setSelected:arg1]
  100051948  mov     x0, x20
  10005194c  ldp     x29, x30, [sp, #0x20]
  100051950  ldp     x20, x19, [sp, #0x10]
  100051954  ldp     x22, x21, [sp], #0x30
  100051958  b       _objc_release
  10005195c  b       loc_100051960
loc_100051960:
  100051960  mov     x19, x0
  100051964  mov     x0, x22
  100051968  b       loc_100051974
  10005196c  mov     x19, x0
  100051970  mov     x0, x20
loc_100051974:
  100051974  bl      _objc_release
  100051978  mov     x0, x19
  10005197c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController selectAllAimingButton:]
; address 0x100051980  size 236  kind objc
; ======================================================================
  100051980  stp     x22, x21, [sp, #-0x30]!
  100051984  stp     x20, x19, [sp, #0x10]
  100051988  stp     x29, x30, [sp, #0x20]
  10005198c  add     x29, sp, #0x20
  100051990  mov     x19, x2
  100051994  mov     x20, x0
  100051998  adrp    x8, #0x100416000
  10005199c  nop
  1000519a0  ldr     x1, [x8, #0xbc8]
  1000519a4  bl      _objc_msgSend                            ; [self gyroButton]
  1000519a8  mov     x29, x29
  1000519ac  bl      _objc_retainAutoreleasedReturnValue
  1000519b0  mov     x22, x0
  1000519b4  adrp    x8, #0x100418000
  1000519b8  nop
  1000519bc  ldr     x21, [x8, #0xd70]
  1000519c0  mov     x1, x21
  1000519c4  mov     x2, x19
  1000519c8  bl      _objc_msgSend                            ; [[self gyroButton] setSelected:arg1]
  1000519cc  mov     x0, x22
  1000519d0  bl      _objc_release
  1000519d4  adrp    x8, #0x100416000
  1000519d8  nop
  1000519dc  ldr     x1, [x8, #0xbd8]
  1000519e0  mov     x0, x20
  1000519e4  bl      _objc_msgSend                            ; [self swipeButton]
  1000519e8  mov     x29, x29
  1000519ec  bl      _objc_retainAutoreleasedReturnValue
  1000519f0  mov     x22, x0
  1000519f4  mov     x1, x21
  1000519f8  mov     x2, x19
  1000519fc  bl      _objc_msgSend                            ; [[self swipeButton] setSelected:arg1]
  100051a00  mov     x0, x22
  100051a04  bl      _objc_release
  100051a08  adrp    x8, #0x100416000
  100051a0c  nop
  100051a10  ldr     x1, [x8, #0xbe0]
  100051a14  mov     x0, x20
  100051a18  bl      _objc_msgSend                            ; [self tiltButton]
  100051a1c  mov     x29, x29
  100051a20  bl      _objc_retainAutoreleasedReturnValue
  100051a24  mov     x20, x0
  100051a28  mov     x1, x21
  100051a2c  mov     x2, x19
  100051a30  bl      _objc_msgSend                            ; [[self tiltButton] setSelected:arg1]
  100051a34  mov     x0, x20
  100051a38  ldp     x29, x30, [sp, #0x20]
  100051a3c  ldp     x20, x19, [sp, #0x10]
  100051a40  ldp     x22, x21, [sp], #0x30
  100051a44  b       _objc_release
  100051a48  b       loc_100051a4c
loc_100051a4c:
  100051a4c  mov     x19, x0
  100051a50  mov     x0, x22
  100051a54  b       loc_100051a60
  100051a58  mov     x19, x0
  100051a5c  mov     x0, x20
loc_100051a60:
  100051a60  bl      _objc_release
  100051a64  mov     x0, x19
  100051a68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController aimingTabButtonPressed]
; address 0x100051a6c  size 212  kind objc
; ======================================================================
  100051a6c  stp     x22, x21, [sp, #-0x30]!
  100051a70  stp     x20, x19, [sp, #0x10]
  100051a74  stp     x29, x30, [sp, #0x20]
  100051a78  add     x29, sp, #0x20
  100051a7c  mov     x19, x0
  100051a80  adrp    x8, #0x100418000
  100051a84  nop
  100051a88  ldr     x1, [x8, #0xcd8]
  100051a8c  mov     w2, #0
  100051a90  bl      _objc_msgSend                            ; [self selectAllTabButtons:0]
  100051a94  adrp    x8, #0x100418000
  100051a98  nop
  100051a9c  ldr     x1, [x8, #0xce8]
  100051aa0  mov     x0, x19
  100051aa4  bl      _objc_msgSend                            ; [self aimingButton]
  100051aa8  mov     x29, x29
  100051aac  bl      _objc_retainAutoreleasedReturnValue
  100051ab0  mov     x20, x0
  100051ab4  adrp    x8, #0x100418000
  100051ab8  nop
  100051abc  ldr     x1, [x8, #0xd70]
  100051ac0  mov     w2, #1
  100051ac4  bl      _objc_msgSend                            ; [[self aimingButton] setSelected:1]
  100051ac8  mov     x0, x20
  100051acc  bl      _objc_release
  100051ad0  adrp    x8, #0x100418000
  100051ad4  nop
  100051ad8  ldr     x1, [x8, #0x838]
  100051adc  mov     x0, x19
  100051ae0  bl      _objc_msgSend                            ; [self contentScrollView]
  100051ae4  mov     x29, x29
  100051ae8  bl      _objc_retainAutoreleasedReturnValue
  100051aec  mov     x19, x0
  100051af0  adrp    x8, #0x100418000
  100051af4  nop
  100051af8  ldr     x1, [x8, #0x4f8]
  100051afc  movi    v0.16b, #0
  100051b00  movi    v1.16b, #0
  100051b04  mov     w2, #1
  100051b08  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{0, 0} animated:1]
  100051b0c  mov     x0, x19
  100051b10  ldp     x29, x30, [sp, #0x20]
  100051b14  ldp     x20, x19, [sp, #0x10]
  100051b18  ldp     x22, x21, [sp], #0x30
  100051b1c  b       _objc_release
  100051b20  mov     x21, x0
  100051b24  mov     x0, x20
  100051b28  b       loc_100051b34
  100051b2c  mov     x21, x0
  100051b30  mov     x0, x19
loc_100051b34:
  100051b34  bl      _objc_release
  100051b38  mov     x0, x21
  100051b3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController controlTabButtonPressed]
; address 0x100051b40  size 280  kind objc
; ======================================================================
  100051b40  stp     x22, x21, [sp, #-0x30]!
  100051b44  stp     x20, x19, [sp, #0x10]
  100051b48  stp     x29, x30, [sp, #0x20]
  100051b4c  add     x29, sp, #0x20
  100051b50  mov     x20, x0
  100051b54  adrp    x8, #0x100418000
  100051b58  nop
  100051b5c  ldr     x1, [x8, #0xcd8]
  100051b60  mov     w2, #0
  100051b64  bl      _objc_msgSend                            ; [self selectAllTabButtons:0]
  100051b68  adrp    x8, #0x100418000
  100051b6c  nop
  100051b70  ldr     x1, [x8, #0xcf8]
  100051b74  mov     x0, x20
  100051b78  bl      _objc_msgSend                            ; [self controlsButton]
  100051b7c  mov     x29, x29
  100051b80  bl      _objc_retainAutoreleasedReturnValue
  100051b84  mov     x19, x0
  100051b88  adrp    x8, #0x100418000
  100051b8c  nop
  100051b90  ldr     x1, [x8, #0xd70]
  100051b94  mov     w2, #1
  100051b98  bl      _objc_msgSend                            ; [[self controlsButton] setSelected:1]
  100051b9c  mov     x0, x19
  100051ba0  bl      _objc_release
  100051ba4  adrp    x8, #0x100418000
  100051ba8  nop
  100051bac  ldr     x21, [x8, #0x838]
  100051bb0  mov     x0, x20
  100051bb4  mov     x1, x21
  100051bb8  bl      _objc_msgSend                            ; [self contentScrollView]
  100051bbc  mov     x29, x29
  100051bc0  bl      _objc_retainAutoreleasedReturnValue
  100051bc4  mov     x19, x0
  100051bc8  mov     x0, x20
  100051bcc  mov     x1, x21
  100051bd0  bl      _objc_msgSend                            ; [self contentScrollView]
  100051bd4  mov     x29, x29
  100051bd8  bl      _objc_retainAutoreleasedReturnValue
  100051bdc  mov     x20, x0
  100051be0  adrp    x8, #0x100416000
  100051be4  nop
  100051be8  ldr     x1, [x8, #0xf38]
  100051bec  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  100051bf0  adrp    x8, #0x100418000
  100051bf4  nop
  100051bf8  ldr     x1, [x8, #0x4f8]
  100051bfc  movi    v1.16b, #0
  100051c00  mov     w2, #1
  100051c04  mov     x0, x19
  100051c08  mov     v0.16b, v2.16b
  100051c0c  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{[[self contentScrollView] frame].2, 0} animated:1]
  100051c10  mov     x0, x20
  100051c14  bl      _objc_release
  100051c18  mov     x0, x19
  100051c1c  ldp     x29, x30, [sp, #0x20]
  100051c20  ldp     x20, x19, [sp, #0x10]
  100051c24  ldp     x22, x21, [sp], #0x30
  100051c28  b       _objc_release
  100051c2c  mov     x21, x0
  100051c30  mov     x0, x20
  100051c34  bl      _objc_release
  100051c38  b       loc_100051c48
  100051c3c  mov     x21, x0
  100051c40  b       loc_100051c48
  100051c44  mov     x21, x0
loc_100051c48:
  100051c48  mov     x0, x19
  100051c4c  bl      _objc_release
  100051c50  mov     x0, x21
  100051c54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController soundTabButtonPressed]
; address 0x100051c58  size 280  kind objc
; ======================================================================
  100051c58  stp     x22, x21, [sp, #-0x30]!
  100051c5c  stp     x20, x19, [sp, #0x10]
  100051c60  stp     x29, x30, [sp, #0x20]
  100051c64  add     x29, sp, #0x20
  100051c68  mov     x20, x0
  100051c6c  adrp    x8, #0x100418000
  100051c70  nop
  100051c74  ldr     x1, [x8, #0xcd8]
  100051c78  mov     w2, #0
  100051c7c  bl      _objc_msgSend                            ; [self selectAllTabButtons:0]
  100051c80  adrp    x8, #0x100418000
  100051c84  nop
  100051c88  ldr     x1, [x8, #0xd08]
  100051c8c  mov     x0, x20
  100051c90  bl      _objc_msgSend                            ; [self soundButton]
  100051c94  mov     x29, x29
  100051c98  bl      _objc_retainAutoreleasedReturnValue
  100051c9c  mov     x19, x0
  100051ca0  adrp    x8, #0x100418000
  100051ca4  nop
  100051ca8  ldr     x1, [x8, #0xd70]
  100051cac  mov     w2, #1
  100051cb0  bl      _objc_msgSend                            ; [[self soundButton] setSelected:1]
  100051cb4  mov     x0, x19
  100051cb8  bl      _objc_release
  100051cbc  adrp    x8, #0x100418000
  100051cc0  nop
  100051cc4  ldr     x21, [x8, #0x838]
  100051cc8  mov     x0, x20
  100051ccc  mov     x1, x21
  100051cd0  bl      _objc_msgSend                            ; [self contentScrollView]
  100051cd4  mov     x29, x29
  100051cd8  bl      _objc_retainAutoreleasedReturnValue
  100051cdc  mov     x19, x0
  100051ce0  mov     x0, x20
  100051ce4  mov     x1, x21
  100051ce8  bl      _objc_msgSend                            ; [self contentScrollView]
  100051cec  mov     x29, x29
  100051cf0  bl      _objc_retainAutoreleasedReturnValue
  100051cf4  mov     x20, x0
  100051cf8  adrp    x8, #0x100416000
  100051cfc  nop
  100051d00  ldr     x1, [x8, #0xf38]
  100051d04  bl      _objc_msgSend                            ; [[self contentScrollView] frame]
  100051d08  fadd    d0, d2, d2
  100051d0c  adrp    x8, #0x100418000
  100051d10  nop
  100051d14  ldr     x1, [x8, #0x4f8]
  100051d18  movi    v1.16b, #0
  100051d1c  mov     w2, #1
  100051d20  mov     x0, x19
  100051d24  bl      _objc_msgSend                            ; [[self contentScrollView] setContentOffset:{([[self contentScrollView] frame].2 + [[self contentScrollView] frame].2), 0} animated:1]
  100051d28  mov     x0, x20
  100051d2c  bl      _objc_release
  100051d30  mov     x0, x19
  100051d34  ldp     x29, x30, [sp, #0x20]
  100051d38  ldp     x20, x19, [sp, #0x10]
  100051d3c  ldp     x22, x21, [sp], #0x30
  100051d40  b       _objc_release
  100051d44  mov     x21, x0
  100051d48  mov     x0, x20
  100051d4c  bl      _objc_release
  100051d50  b       loc_100051d60
  100051d54  mov     x21, x0
  100051d58  b       loc_100051d60
  100051d5c  mov     x21, x0
loc_100051d60:
  100051d60  mov     x0, x19
  100051d64  bl      _objc_release
  100051d68  mov     x0, x21
  100051d6c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController showOrHideSensivity]
; address 0x100051d70  size 696  kind objc
; ======================================================================
  100051d70  stp     x22, x21, [sp, #-0x30]!
  100051d74  stp     x20, x19, [sp, #0x10]
  100051d78  stp     x29, x30, [sp, #0x20]
  100051d7c  add     x29, sp, #0x20
  100051d80  mov     x19, x0
  100051d84  adrp    x8, #0x10041d000
  100051d88  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100051d8c  adrp    x8, #0x100416000
  100051d90  nop
  100051d94  ldr     x1, [x8, #0xc00]
  100051d98  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100051d9c  mov     x29, x29
  100051da0  bl      _objc_retainAutoreleasedReturnValue
  100051da4  mov     x20, x0
  100051da8  adrp    x8, #0x100417000
  100051dac  nop
  100051db0  ldr     x1, [x8, #0xc80]
  100051db4  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] controlScheme]
  100051db8  mov     x21, x0
  100051dbc  mov     x0, x20
  100051dc0  bl      _objc_release
  100051dc4  cmp     w21, #1
  100051dc8  b.eq    loc_100051e7c                            ; if ([[ADGameParameters sharedParameters] controlScheme] == 1)
  100051dcc  cmp     w21, #2
  100051dd0  b.ne    loc_100051f24                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 2)
  100051dd4  adrp    x8, #0x100418000
  100051dd8  nop
  100051ddc  ldr     x1, [x8, #0xd50]
  100051de0  mov     x0, x19
  100051de4  bl      _objc_msgSend                            ; [self sensivityLabel]
  100051de8  mov     x29, x29
  100051dec  bl      _objc_retainAutoreleasedReturnValue
  100051df0  mov     x21, x0
  100051df4  adrp    x8, #0x100416000
  100051df8  nop
  100051dfc  ldr     x20, [x8, #0xba8]
  100051e00  mov     w2, #0
  100051e04  mov     x1, x20
  100051e08  bl      _objc_msgSend                            ; [[self sensivityLabel] setHidden:0]
  100051e0c  mov     x0, x21
  100051e10  bl      _objc_release
  100051e14  adrp    x8, #0x100418000
  100051e18  nop
  100051e1c  ldr     x1, [x8, #0xd60]
  100051e20  mov     x0, x19
  100051e24  bl      _objc_msgSend                            ; [self sensivitySlider]
  100051e28  mov     x29, x29
  100051e2c  bl      _objc_retainAutoreleasedReturnValue
  100051e30  mov     x21, x0
  100051e34  mov     w2, #0
  100051e38  mov     x1, x20
  100051e3c  bl      _objc_msgSend                            ; [[self sensivitySlider] setHidden:0]
  100051e40  mov     x0, x21
  100051e44  bl      _objc_release
  100051e48  adrp    x8, #0x100418000
  100051e4c  nop
  100051e50  ldr     x1, [x8, #0xdc8]
  100051e54  mov     x0, x19
  100051e58  bl      _objc_msgSend                            ; [self sensitivitySliderBack]
  100051e5c  mov     x29, x29
  100051e60  bl      _objc_retainAutoreleasedReturnValue
  100051e64  mov     x21, x0
  100051e68  mov     w2, #0
  100051e6c  mov     x1, x20
  100051e70  bl      _objc_msgSend                            ; [[self sensitivitySliderBack] setHidden:0]
  100051e74  b       loc_100051fcc
  100051e78  b       loc_100052014
loc_100051e7c:
  100051e7c  adrp    x8, #0x100418000
  100051e80  nop
  100051e84  ldr     x1, [x8, #0xd50]
  100051e88  mov     x0, x19
  100051e8c  bl      _objc_msgSend                            ; [self sensivityLabel]
  100051e90  mov     x29, x29
  100051e94  bl      _objc_retainAutoreleasedReturnValue
  100051e98  mov     x21, x0
  100051e9c  adrp    x8, #0x100416000
  100051ea0  nop
  100051ea4  ldr     x20, [x8, #0xba8]
  100051ea8  mov     w2, #1
  100051eac  mov     x1, x20
  100051eb0  bl      _objc_msgSend                            ; [[self sensivityLabel] setHidden:1]
  100051eb4  mov     x0, x21
  100051eb8  bl      _objc_release
  100051ebc  adrp    x8, #0x100418000
  100051ec0  nop
  100051ec4  ldr     x1, [x8, #0xd60]
  100051ec8  mov     x0, x19
  100051ecc  bl      _objc_msgSend                            ; [self sensivitySlider]
  100051ed0  mov     x29, x29
  100051ed4  bl      _objc_retainAutoreleasedReturnValue
  100051ed8  mov     x21, x0
  100051edc  mov     w2, #1
  100051ee0  mov     x1, x20
  100051ee4  bl      _objc_msgSend                            ; [[self sensivitySlider] setHidden:1]
  100051ee8  mov     x0, x21
  100051eec  bl      _objc_release
  100051ef0  adrp    x8, #0x100418000
  100051ef4  nop
  100051ef8  ldr     x1, [x8, #0xdc8]
  100051efc  mov     x0, x19
  100051f00  bl      _objc_msgSend                            ; [self sensitivitySliderBack]
  100051f04  mov     x29, x29
  100051f08  bl      _objc_retainAutoreleasedReturnValue
  100051f0c  mov     x21, x0
  100051f10  mov     w2, #1
  100051f14  mov     x1, x20
  100051f18  bl      _objc_msgSend                            ; [[self sensitivitySliderBack] setHidden:1]
  100051f1c  b       loc_100051fcc
  100051f20  b       loc_100052014
loc_100051f24:
  100051f24  cmp     w21, #3
  100051f28  b.ne    loc_100051fe0                            ; if ([[ADGameParameters sharedParameters] controlScheme] != 3)
  100051f2c  adrp    x8, #0x100418000
  100051f30  nop
  100051f34  ldr     x1, [x8, #0xd50]
  100051f38  mov     x0, x19
  100051f3c  bl      _objc_msgSend                            ; [self sensivityLabel]
  100051f40  mov     x29, x29
  100051f44  bl      _objc_retainAutoreleasedReturnValue
  100051f48  mov     x21, x0
  100051f4c  adrp    x8, #0x100416000
  100051f50  nop
  100051f54  ldr     x20, [x8, #0xba8]
  100051f58  mov     w2, #0
  100051f5c  mov     x1, x20
  100051f60  bl      _objc_msgSend                            ; [[self sensivityLabel] setHidden:0]
  100051f64  mov     x0, x21
  100051f68  bl      _objc_release
  100051f6c  adrp    x8, #0x100418000
  100051f70  nop
  100051f74  ldr     x1, [x8, #0xd60]
  100051f78  mov     x0, x19
  100051f7c  bl      _objc_msgSend                            ; [self sensivitySlider]
  100051f80  mov     x29, x29
  100051f84  bl      _objc_retainAutoreleasedReturnValue
  100051f88  mov     x21, x0
  100051f8c  mov     w2, #0
  100051f90  mov     x1, x20
  100051f94  bl      _objc_msgSend                            ; [[self sensivitySlider] setHidden:0]
  100051f98  mov     x0, x21
  100051f9c  bl      _objc_release
  100051fa0  adrp    x8, #0x100418000
  100051fa4  nop
  100051fa8  ldr     x1, [x8, #0xdc8]
  100051fac  mov     x0, x19
  100051fb0  bl      _objc_msgSend                            ; [self sensitivitySliderBack]
  100051fb4  mov     x29, x29
  100051fb8  bl      _objc_retainAutoreleasedReturnValue
  100051fbc  mov     x21, x0
  100051fc0  mov     w2, #0
  100051fc4  mov     x1, x20
  100051fc8  bl      _objc_msgSend                            ; [[self sensitivitySliderBack] setHidden:0]
loc_100051fcc:
  100051fcc  mov     x0, x21
  100051fd0  ldp     x29, x30, [sp, #0x20]
  100051fd4  ldp     x20, x19, [sp, #0x10]
  100051fd8  ldp     x22, x21, [sp], #0x30
  100051fdc  b       _objc_release
loc_100051fe0:
  100051fe0  ldp     x29, x30, [sp, #0x20]
  100051fe4  ldp     x20, x19, [sp, #0x10]
  100051fe8  ldp     x22, x21, [sp], #0x30
  100051fec  ret
  100051ff0  mov     x19, x0
  100051ff4  mov     x0, x20
  100051ff8  b       loc_10005201c
  100051ffc  b       loc_100052014
  100052000  b       loc_100052014
  100052004  b       loc_100052014
  100052008  b       loc_100052014
  10005200c  b       loc_100052014
  100052010  b       loc_100052014
loc_100052014:
  100052014  mov     x19, x0
  100052018  mov     x0, x21
loc_10005201c:
  10005201c  bl      _objc_release
  100052020  mov     x0, x19
  100052024  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController gyroButtonTouched]
; address 0x100052028  size 524  kind objc
; ======================================================================
  100052028  stp     x22, x21, [sp, #-0x30]!
  10005202c  stp     x20, x19, [sp, #0x10]
  100052030  stp     x29, x30, [sp, #0x20]
  100052034  add     x29, sp, #0x20
  100052038  mov     x19, x0
  10005203c  adrp    x8, #0x100418000
  100052040  nop
  100052044  ldr     x20, [x8, #0xdb0]
  100052048  mov     x1, x20
  10005204c  bl      _objc_msgSend                            ; [self showOrHideSensivity]
  100052050  adrp    x8, #0x100418000
  100052054  nop
  100052058  ldr     x1, [x8, #0xce0]
  10005205c  mov     w2, #0
  100052060  mov     x0, x19
  100052064  bl      _objc_msgSend                            ; [self selectAllAimingButton:0]
  100052068  adrp    x8, #0x100416000
  10005206c  nop
  100052070  ldr     x1, [x8, #0xbc8]
  100052074  mov     x0, x19
  100052078  bl      _objc_msgSend                            ; [self gyroButton]
  10005207c  mov     x29, x29
  100052080  bl      _objc_retainAutoreleasedReturnValue
  100052084  mov     x21, x0
  100052088  adrp    x8, #0x100418000
  10005208c  nop
  100052090  ldr     x1, [x8, #0xd70]
  100052094  mov     w2, #1
  100052098  bl      _objc_msgSend                            ; [[self gyroButton] setSelected:1]
  10005209c  mov     x0, x21
  1000520a0  bl      _objc_release
  1000520a4  adrp    x8, #0x10041d000
  1000520a8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000520ac  adrp    x8, #0x100416000
  1000520b0  nop
  1000520b4  ldr     x1, [x8, #0xc00]
  1000520b8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000520bc  mov     x29, x29
  1000520c0  bl      _objc_retainAutoreleasedReturnValue
  1000520c4  mov     x21, x0
  1000520c8  adrp    x8, #0x100416000
  1000520cc  nop
  1000520d0  ldr     x1, [x8, #0xc08]
  1000520d4  mov     w2, #1
  1000520d8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:1]
  1000520dc  mov     x0, x21
  1000520e0  bl      _objc_release
  1000520e4  adrp    x8, #0x10041e000
  1000520e8  ldr     x0, [x8, #8]                             ; class ADTracker
  1000520ec  adrp    x8, #0x100416000
  1000520f0  nop
  1000520f4  ldr     x1, [x8, #0xac0]
  1000520f8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000520fc  mov     x29, x29
  100052100  bl      _objc_retainAutoreleasedReturnValue
  100052104  mov     x21, x0
  100052108  adrp    x8, #0x100418000
  10005210c  nop
  100052110  ldr     x1, [x8, #0xdd0]
  100052114  adrp    x2, #0x1003bd000
  100052118  add     x2, x2, #0x870                           ; @"gyro"
  10005211c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"gyro"]
  100052120  mov     x0, x21
  100052124  bl      _objc_release
  100052128  mov     x0, x19
  10005212c  mov     x1, x20
  100052130  bl      _objc_msgSend                            ; [self showOrHideSensivity]
  100052134  adrp    x8, #0x100418000
  100052138  nop
  10005213c  ldr     x1, [x8, #0xd78]
  100052140  mov     x0, x19
  100052144  bl      _objc_msgSend                            ; [self aimingText]
  100052148  mov     x29, x29
  10005214c  bl      _objc_retainAutoreleasedReturnValue
  100052150  mov     x19, x0
  100052154  adrp    x8, #0x10041d000
  100052158  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10005215c  adrp    x8, #0x100416000
  100052160  nop
  100052164  ldr     x1, [x8, #0xb58]
  100052168  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10005216c  mov     x29, x29
  100052170  bl      _objc_retainAutoreleasedReturnValue
  100052174  mov     x20, x0
  100052178  adrp    x8, #0x100416000
  10005217c  nop
  100052180  ldr     x1, [x8, #0xb60]
  100052184  mov     x4, #0
  100052188  adrp    x2, #0x1003b9000
  10005218c  add     x2, x2, #0x8b0                           ; @"GYRO_DESCRIPTION"
  100052190  adrp    x3, #0x1003b9000
  100052194  add     x3, x3, #0x870                           ; @""
  100052198  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]
  10005219c  mov     x29, x29
  1000521a0  bl      _objc_retainAutoreleasedReturnValue
  1000521a4  mov     x21, x0
  1000521a8  adrp    x8, #0x100416000
  1000521ac  nop
  1000521b0  ldr     x1, [x8, #0xb68]
  1000521b4  mov     x0, x19
  1000521b8  mov     x2, x21
  1000521bc  bl      _objc_msgSend                            ; [[self aimingText] setText:[[NSBundle mainBundle] localizedStringForKey:@"GYRO_DESCRIPTION" value:@"" table:0]]
  1000521c0  mov     x0, x21
  1000521c4  bl      _objc_release
  1000521c8  mov     x0, x20
  1000521cc  bl      _objc_release
  1000521d0  mov     x0, x19
  1000521d4  ldp     x29, x30, [sp, #0x20]
  1000521d8  ldp     x20, x19, [sp, #0x10]
  1000521dc  ldp     x22, x21, [sp], #0x30
  1000521e0  b       _objc_release
  1000521e4  b       loc_1000521ec
  1000521e8  b       loc_1000521ec
loc_1000521ec:
  1000521ec  mov     x1, x21
  1000521f0  mov     x21, x0
  1000521f4  mov     x0, x1
  1000521f8  b       loc_100052228
  1000521fc  mov     x21, x0
  100052200  b       loc_100052224
  100052204  mov     x21, x0
  100052208  b       loc_10005221c
  10005220c  mov     x1, x21
  100052210  mov     x21, x0
  100052214  mov     x0, x1
  100052218  bl      _objc_release
loc_10005221c:
  10005221c  mov     x0, x20
  100052220  bl      _objc_release
loc_100052224:
  100052224  mov     x0, x19
loc_100052228:
  100052228  bl      _objc_release
  10005222c  mov     x0, x21
  100052230  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController tiltButtonTouched]
; address 0x100052234  size 620  kind objc
; ======================================================================
  100052234  stp     x24, x23, [sp, #-0x40]!
  100052238  stp     x22, x21, [sp, #0x10]
  10005223c  stp     x20, x19, [sp, #0x20]
  100052240  stp     x29, x30, [sp, #0x30]
  100052244  add     x29, sp, #0x30
  100052248  mov     x19, x0
  10005224c  adrp    x8, #0x100418000
  100052250  nop
  100052254  ldr     x1, [x8, #0xce0]
  100052258  mov     w2, #0
  10005225c  bl      _objc_msgSend                            ; [self selectAllAimingButton:0]
  100052260  adrp    x8, #0x100416000
  100052264  nop
  100052268  ldr     x1, [x8, #0xbe0]
  10005226c  mov     x0, x19
  100052270  bl      _objc_msgSend                            ; [self tiltButton]
  100052274  mov     x29, x29
  100052278  bl      _objc_retainAutoreleasedReturnValue
  10005227c  mov     x20, x0
  100052280  adrp    x8, #0x100418000
  100052284  nop
  100052288  ldr     x1, [x8, #0xd70]
  10005228c  mov     w2, #1
  100052290  bl      _objc_msgSend                            ; [[self tiltButton] setSelected:1]
  100052294  mov     x0, x20
  100052298  bl      _objc_release
  10005229c  adrp    x8, #0x10041d000
  1000522a0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000522a4  adrp    x8, #0x100416000
  1000522a8  nop
  1000522ac  ldr     x1, [x8, #0xc00]
  1000522b0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000522b4  mov     x29, x29
  1000522b8  bl      _objc_retainAutoreleasedReturnValue
  1000522bc  mov     x20, x0
  1000522c0  adrp    x8, #0x100416000
  1000522c4  nop
  1000522c8  ldr     x1, [x8, #0xc08]
  1000522cc  mov     w2, #3
  1000522d0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:3]
  1000522d4  mov     x0, x20
  1000522d8  bl      _objc_release
  1000522dc  adrp    x8, #0x10041e000
  1000522e0  ldr     x0, [x8, #8]                             ; class ADTracker
  1000522e4  adrp    x8, #0x100416000
  1000522e8  nop
  1000522ec  ldr     x1, [x8, #0xac0]
  1000522f0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000522f4  mov     x29, x29
  1000522f8  bl      _objc_retainAutoreleasedReturnValue
  1000522fc  mov     x20, x0
  100052300  adrp    x8, #0x100418000
  100052304  nop
  100052308  ldr     x1, [x8, #0xdd0]
  10005230c  adrp    x2, #0x1003bd000
  100052310  add     x2, x2, #0x890                           ; @"tilt"
  100052314  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"tilt"]
  100052318  mov     x0, x20
  10005231c  bl      _objc_release
  100052320  adrp    x8, #0x100418000
  100052324  nop
  100052328  ldr     x1, [x8, #0xdb0]
  10005232c  mov     x0, x19
  100052330  bl      _objc_msgSend                            ; [self showOrHideSensivity]
  100052334  adrp    x8, #0x100418000
  100052338  nop
  10005233c  ldr     x21, [x8, #0xd78]
  100052340  mov     x0, x19
  100052344  mov     x1, x21
  100052348  bl      _objc_msgSend                            ; [self aimingText]
  10005234c  mov     x29, x29
  100052350  bl      _objc_retainAutoreleasedReturnValue
  100052354  mov     x20, x0
  100052358  adrp    x8, #0x10041d000
  10005235c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100052360  adrp    x8, #0x100416000
  100052364  nop
  100052368  ldr     x1, [x8, #0xb58]
  10005236c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100052370  mov     x29, x29
  100052374  bl      _objc_retainAutoreleasedReturnValue
  100052378  mov     x22, x0
  10005237c  adrp    x8, #0x100416000
  100052380  nop
  100052384  ldr     x1, [x8, #0xb60]
  100052388  mov     x4, #0
  10005238c  adrp    x2, #0x1003b9000
  100052390  add     x2, x2, #0x890                           ; @"TILT_DESCRIPTION"
  100052394  adrp    x3, #0x1003b9000
  100052398  add     x3, x3, #0x870                           ; @""
  10005239c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]
  1000523a0  mov     x29, x29
  1000523a4  bl      _objc_retainAutoreleasedReturnValue
  1000523a8  mov     x23, x0
  1000523ac  adrp    x8, #0x100416000
  1000523b0  nop
  1000523b4  ldr     x1, [x8, #0xb68]
  1000523b8  mov     x0, x20
  1000523bc  mov     x2, x23
  1000523c0  bl      _objc_msgSend                            ; [[self aimingText] setText:[[NSBundle mainBundle] localizedStringForKey:@"TILT_DESCRIPTION" value:@"" table:0]]
  1000523c4  mov     x0, x23
  1000523c8  bl      _objc_release
  1000523cc  mov     x0, x22
  1000523d0  bl      _objc_release
  1000523d4  mov     x0, x20
  1000523d8  bl      _objc_release
  1000523dc  mov     x0, x19
  1000523e0  mov     x1, x21
  1000523e4  bl      _objc_msgSend                            ; [self aimingText]
  1000523e8  mov     x29, x29
  1000523ec  bl      _objc_retainAutoreleasedReturnValue
  1000523f0  mov     x20, x0
  1000523f4  adrp    x8, #0x10041d000
  1000523f8  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  1000523fc  adrp    x8, #0x100417000
  100052400  nop
  100052404  ldr     x1, [x8, #0x328]
  100052408  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10005240c  mov     x29, x29
  100052410  bl      _objc_retainAutoreleasedReturnValue
  100052414  mov     x21, x0
  100052418  adrp    x8, #0x100417000
  10005241c  nop
  100052420  ldr     x1, [x8, #0x330]
  100052424  mov     x0, x20
  100052428  mov     x2, x21
  10005242c  bl      _objc_msgSend                            ; [[self aimingText] setTextColor:[UIColor whiteColor]]
  100052430  mov     x0, x21
  100052434  bl      _objc_release
  100052438  mov     x0, x20
  10005243c  ldp     x29, x30, [sp, #0x30]
  100052440  ldp     x20, x19, [sp, #0x20]
  100052444  ldp     x22, x21, [sp, #0x10]
  100052448  ldp     x24, x23, [sp], #0x40
  10005244c  b       _objc_release
  100052450  b       loc_10005247c
  100052454  b       loc_10005247c
  100052458  b       loc_10005247c
  10005245c  b       loc_10005247c
  100052460  mov     x19, x0
  100052464  b       loc_100052474
  100052468  mov     x19, x0
  10005246c  mov     x0, x23
  100052470  bl      _objc_release
loc_100052474:
  100052474  mov     x0, x22
  100052478  b       loc_10005248c
loc_10005247c:
  10005247c  mov     x19, x0
  100052480  b       loc_100052490
  100052484  mov     x19, x0
  100052488  mov     x0, x21
loc_10005248c:
  10005248c  bl      _objc_release
loc_100052490:
  100052490  mov     x0, x20
  100052494  bl      _objc_release
  100052498  mov     x0, x19
  10005249c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController swipeButtonTouched]
; address 0x1000524a0  size 620  kind objc
; ======================================================================
  1000524a0  stp     x24, x23, [sp, #-0x40]!
  1000524a4  stp     x22, x21, [sp, #0x10]
  1000524a8  stp     x20, x19, [sp, #0x20]
  1000524ac  stp     x29, x30, [sp, #0x30]
  1000524b0  add     x29, sp, #0x30
  1000524b4  mov     x19, x0
  1000524b8  adrp    x8, #0x100418000
  1000524bc  nop
  1000524c0  ldr     x1, [x8, #0xce0]
  1000524c4  mov     w2, #0
  1000524c8  bl      _objc_msgSend                            ; [self selectAllAimingButton:0]
  1000524cc  adrp    x8, #0x100416000
  1000524d0  nop
  1000524d4  ldr     x1, [x8, #0xbd8]
  1000524d8  mov     x0, x19
  1000524dc  bl      _objc_msgSend                            ; [self swipeButton]
  1000524e0  mov     x29, x29
  1000524e4  bl      _objc_retainAutoreleasedReturnValue
  1000524e8  mov     x20, x0
  1000524ec  adrp    x8, #0x100418000
  1000524f0  nop
  1000524f4  ldr     x1, [x8, #0xd70]
  1000524f8  mov     w2, #1
  1000524fc  bl      _objc_msgSend                            ; [[self swipeButton] setSelected:1]
  100052500  mov     x0, x20
  100052504  bl      _objc_release
  100052508  adrp    x8, #0x10041d000
  10005250c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100052510  adrp    x8, #0x100416000
  100052514  nop
  100052518  ldr     x1, [x8, #0xc00]
  10005251c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100052520  mov     x29, x29
  100052524  bl      _objc_retainAutoreleasedReturnValue
  100052528  mov     x20, x0
  10005252c  adrp    x8, #0x100416000
  100052530  nop
  100052534  ldr     x1, [x8, #0xc08]
  100052538  mov     w2, #2
  10005253c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setControlScheme:2]
  100052540  mov     x0, x20
  100052544  bl      _objc_release
  100052548  adrp    x8, #0x10041e000
  10005254c  ldr     x0, [x8, #8]                             ; class ADTracker
  100052550  adrp    x8, #0x100416000
  100052554  nop
  100052558  ldr     x1, [x8, #0xac0]
  10005255c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100052560  mov     x29, x29
  100052564  bl      _objc_retainAutoreleasedReturnValue
  100052568  mov     x20, x0
  10005256c  adrp    x8, #0x100418000
  100052570  nop
  100052574  ldr     x1, [x8, #0xdd0]
  100052578  adrp    x2, #0x1003bd000
  10005257c  add     x2, x2, #0x8b0                           ; @"swipe"
  100052580  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setControlMode:@"swipe"]
  100052584  mov     x0, x20
  100052588  bl      _objc_release
  10005258c  adrp    x8, #0x100418000
  100052590  nop
  100052594  ldr     x1, [x8, #0xdb0]
  100052598  mov     x0, x19
  10005259c  bl      _objc_msgSend                            ; [self showOrHideSensivity]
  1000525a0  adrp    x8, #0x100418000
  1000525a4  nop
  1000525a8  ldr     x21, [x8, #0xd78]
  1000525ac  mov     x0, x19
  1000525b0  mov     x1, x21
  1000525b4  bl      _objc_msgSend                            ; [self aimingText]
  1000525b8  mov     x29, x29
  1000525bc  bl      _objc_retainAutoreleasedReturnValue
  1000525c0  mov     x20, x0
  1000525c4  adrp    x8, #0x10041d000
  1000525c8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000525cc  adrp    x8, #0x100416000
  1000525d0  nop
  1000525d4  ldr     x1, [x8, #0xb58]
  1000525d8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000525dc  mov     x29, x29
  1000525e0  bl      _objc_retainAutoreleasedReturnValue
  1000525e4  mov     x22, x0
  1000525e8  adrp    x8, #0x100416000
  1000525ec  nop
  1000525f0  ldr     x1, [x8, #0xb60]
  1000525f4  mov     x4, #0
  1000525f8  adrp    x2, #0x1003b9000
  1000525fc  add     x2, x2, #0x850                           ; @"SWIPE_DESCRIPTION"
  100052600  adrp    x3, #0x1003b9000
  100052604  add     x3, x3, #0x870                           ; @""
  100052608  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]
  10005260c  mov     x29, x29
  100052610  bl      _objc_retainAutoreleasedReturnValue
  100052614  mov     x23, x0
  100052618  adrp    x8, #0x100416000
  10005261c  nop
  100052620  ldr     x1, [x8, #0xb68]
  100052624  mov     x0, x20
  100052628  mov     x2, x23
  10005262c  bl      _objc_msgSend                            ; [[self aimingText] setText:[[NSBundle mainBundle] localizedStringForKey:@"SWIPE_DESCRIPTION" value:@"" table:0]]
  100052630  mov     x0, x23
  100052634  bl      _objc_release
  100052638  mov     x0, x22
  10005263c  bl      _objc_release
  100052640  mov     x0, x20
  100052644  bl      _objc_release
  100052648  mov     x0, x19
  10005264c  mov     x1, x21
  100052650  bl      _objc_msgSend                            ; [self aimingText]
  100052654  mov     x29, x29
  100052658  bl      _objc_retainAutoreleasedReturnValue
  10005265c  mov     x20, x0
  100052660  adrp    x8, #0x10041d000
  100052664  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100052668  adrp    x8, #0x100417000
  10005266c  nop
  100052670  ldr     x1, [x8, #0x328]
  100052674  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100052678  mov     x29, x29
  10005267c  bl      _objc_retainAutoreleasedReturnValue
  100052680  mov     x21, x0
  100052684  adrp    x8, #0x100417000
  100052688  nop
  10005268c  ldr     x1, [x8, #0x330]
  100052690  mov     x0, x20
  100052694  mov     x2, x21
  100052698  bl      _objc_msgSend                            ; [[self aimingText] setTextColor:[UIColor whiteColor]]
  10005269c  mov     x0, x21
  1000526a0  bl      _objc_release
  1000526a4  mov     x0, x20
  1000526a8  ldp     x29, x30, [sp, #0x30]
  1000526ac  ldp     x20, x19, [sp, #0x20]
  1000526b0  ldp     x22, x21, [sp, #0x10]
  1000526b4  ldp     x24, x23, [sp], #0x40
  1000526b8  b       _objc_release
  1000526bc  b       loc_1000526e8
  1000526c0  b       loc_1000526e8
  1000526c4  b       loc_1000526e8
  1000526c8  b       loc_1000526e8
  1000526cc  mov     x19, x0
  1000526d0  b       loc_1000526e0
  1000526d4  mov     x19, x0
  1000526d8  mov     x0, x23
  1000526dc  bl      _objc_release
loc_1000526e0:
  1000526e0  mov     x0, x22
  1000526e4  b       loc_1000526f8
loc_1000526e8:
  1000526e8  mov     x19, x0
  1000526ec  b       loc_1000526fc
  1000526f0  mov     x19, x0
  1000526f4  mov     x0, x21
loc_1000526f8:
  1000526f8  bl      _objc_release
loc_1000526fc:
  1000526fc  mov     x0, x20
  100052700  bl      _objc_release
  100052704  mov     x0, x19
  100052708  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController sensivityValueChanged:]
; address 0x10005270c  size 168  kind objc
; ======================================================================
  10005270c  stp     x22, x21, [sp, #-0x30]!
  100052710  stp     x20, x19, [sp, #0x10]
  100052714  stp     x29, x30, [sp, #0x20]
  100052718  add     x29, sp, #0x20
  10005271c  mov     x0, x2
  100052720  bl      _objc_retain
  100052724  mov     x19, x0
  100052728  adrp    x8, #0x10041d000
  10005272c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100052730  adrp    x8, #0x100416000
  100052734  nop
  100052738  ldr     x1, [x8, #0xc00]
  10005273c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100052740  mov     x29, x29
  100052744  bl      _objc_retainAutoreleasedReturnValue
  100052748  mov     x20, x0
  10005274c  adrp    x8, #0x100418000
  100052750  nop
  100052754  ldr     x1, [x8, #0x800]
  100052758  mov     x0, x19
  10005275c  bl      _objc_msgSend                            ; [arg1 value]
  100052760  adrp    x8, #0x100418000
  100052764  nop
  100052768  ldr     x1, [x8, #0xdd8]
  10005276c  mov     x0, x20
  100052770  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setSensivity:d0]
  100052774  mov     x0, x20
  100052778  bl      _objc_release
  10005277c  mov     x0, x19
  100052780  ldp     x29, x30, [sp, #0x20]
  100052784  ldp     x20, x19, [sp, #0x10]
  100052788  ldp     x22, x21, [sp], #0x30
  10005278c  b       _objc_release
  100052790  mov     x21, x0
  100052794  mov     x0, x20
  100052798  bl      _objc_release
  10005279c  b       loc_1000527a4
  1000527a0  mov     x21, x0
loc_1000527a4:
  1000527a4  mov     x0, x19
  1000527a8  bl      _objc_release
  1000527ac  mov     x0, x21
  1000527b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController buttonsButtonTouched]
; address 0x1000527b4  size 644  kind objc
; ======================================================================
  1000527b4  stp     x24, x23, [sp, #-0x40]!
  1000527b8  stp     x22, x21, [sp, #0x10]
  1000527bc  stp     x20, x19, [sp, #0x20]
  1000527c0  stp     x29, x30, [sp, #0x30]
  1000527c4  add     x29, sp, #0x30
  1000527c8  mov     x19, x0
  1000527cc  adrp    x8, #0x100418000
  1000527d0  nop
  1000527d4  ldr     x1, [x8, #0xd30]
  1000527d8  bl      _objc_msgSend                            ; [self buttonsButton]
  1000527dc  mov     x29, x29
  1000527e0  bl      _objc_retainAutoreleasedReturnValue
  1000527e4  mov     x21, x0
  1000527e8  adrp    x8, #0x100418000
  1000527ec  nop
  1000527f0  ldr     x20, [x8, #0xd70]
  1000527f4  mov     w2, #1
  1000527f8  mov     x1, x20
  1000527fc  bl      _objc_msgSend                            ; [[self buttonsButton] setSelected:1]
  100052800  mov     x0, x21
  100052804  bl      _objc_release
  100052808  adrp    x8, #0x100418000
  10005280c  nop
  100052810  ldr     x1, [x8, #0xd40]
  100052814  mov     x0, x19
  100052818  bl      _objc_msgSend                            ; [self gestureButton]
  10005281c  mov     x29, x29
  100052820  bl      _objc_retainAutoreleasedReturnValue
  100052824  mov     x21, x0
  100052828  mov     w2, #0
  10005282c  mov     x1, x20
  100052830  bl      _objc_msgSend                            ; [[self gestureButton] setSelected:0]
  100052834  mov     x0, x21
  100052838  bl      _objc_release
  10005283c  adrp    x8, #0x10041d000
  100052840  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100052844  adrp    x8, #0x100416000
  100052848  nop
  10005284c  ldr     x1, [x8, #0xc00]
  100052850  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100052854  mov     x29, x29
  100052858  bl      _objc_retainAutoreleasedReturnValue
  10005285c  mov     x21, x0
  100052860  adrp    x8, #0x100418000
  100052864  nop
  100052868  ldr     x20, [x8, #0xde0]
  10005286c  mov     w2, #1
  100052870  mov     x1, x20
  100052874  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setButtonMode:1]
  100052878  mov     x0, x21
  10005287c  bl      _objc_release
  100052880  adrp    x8, #0x10041e000
  100052884  ldr     x0, [x8, #8]                             ; class ADTracker
  100052888  adrp    x8, #0x100416000
  10005288c  nop
  100052890  ldr     x1, [x8, #0xac0]
  100052894  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100052898  mov     x29, x29
  10005289c  bl      _objc_retainAutoreleasedReturnValue
  1000528a0  mov     x21, x0
  1000528a4  adrp    x2, #0x1003bd000
  1000528a8  add     x2, x2, #0x8d0                           ; @"button"
  1000528ac  mov     x1, x20
  1000528b0  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setButtonMode:@"button"]
  1000528b4  mov     x0, x21
  1000528b8  bl      _objc_release
  1000528bc  adrp    x8, #0x100418000
  1000528c0  nop
  1000528c4  ldr     x21, [x8, #0xd80]
  1000528c8  mov     x0, x19
  1000528cc  mov     x1, x21
  1000528d0  bl      _objc_msgSend                            ; [self controlsText]
  1000528d4  mov     x29, x29
  1000528d8  bl      _objc_retainAutoreleasedReturnValue
  1000528dc  mov     x20, x0
  1000528e0  adrp    x8, #0x10041d000
  1000528e4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000528e8  adrp    x8, #0x100416000
  1000528ec  nop
  1000528f0  ldr     x1, [x8, #0xb58]
  1000528f4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000528f8  mov     x29, x29
  1000528fc  bl      _objc_retainAutoreleasedReturnValue
  100052900  mov     x22, x0
  100052904  adrp    x8, #0x100416000
  100052908  nop
  10005290c  ldr     x1, [x8, #0xb60]
  100052910  mov     x4, #0
  100052914  adrp    x2, #0x1003bd000
  100052918  add     x2, x2, #0x590                           ; @"BUTTON_MODE"
  10005291c  adrp    x3, #0x1003b9000
  100052920  add     x3, x3, #0x870                           ; @""
  100052924  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"BUTTON_MODE" value:@"" table:0]
  100052928  mov     x29, x29
  10005292c  bl      _objc_retainAutoreleasedReturnValue
  100052930  mov     x23, x0
  100052934  adrp    x8, #0x100416000
  100052938  nop
  10005293c  ldr     x1, [x8, #0xb68]
  100052940  mov     x0, x20
  100052944  mov     x2, x23
  100052948  bl      _objc_msgSend                            ; [[self controlsText] setText:[[NSBundle mainBundle] localizedStringForKey:@"BUTTON_MODE" value:@"" table:0]]
  10005294c  mov     x0, x23
  100052950  bl      _objc_release
  100052954  mov     x0, x22
  100052958  bl      _objc_release
  10005295c  mov     x0, x20
  100052960  bl      _objc_release
  100052964  mov     x0, x19
  100052968  mov     x1, x21
  10005296c  bl      _objc_msgSend                            ; [self controlsText]
  100052970  mov     x29, x29
  100052974  bl      _objc_retainAutoreleasedReturnValue
  100052978  mov     x20, x0
  10005297c  adrp    x8, #0x10041d000
  100052980  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100052984  adrp    x8, #0x100417000
  100052988  nop
  10005298c  ldr     x1, [x8, #0x328]
  100052990  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100052994  mov     x29, x29
  100052998  bl      _objc_retainAutoreleasedReturnValue
  10005299c  mov     x21, x0
  1000529a0  adrp    x8, #0x100417000
  1000529a4  nop
  1000529a8  ldr     x1, [x8, #0x330]
  1000529ac  mov     x0, x20
  1000529b0  mov     x2, x21
  1000529b4  bl      _objc_msgSend                            ; [[self controlsText] setTextColor:[UIColor whiteColor]]
  1000529b8  mov     x0, x21
  1000529bc  bl      _objc_release
  1000529c0  mov     x0, x20
  1000529c4  ldp     x29, x30, [sp, #0x30]
  1000529c8  ldp     x20, x19, [sp, #0x20]
  1000529cc  ldp     x22, x21, [sp, #0x10]
  1000529d0  ldp     x24, x23, [sp], #0x40
  1000529d4  b       _objc_release
  1000529d8  b       loc_1000529e4
  1000529dc  b       loc_1000529e4
  1000529e0  b       loc_1000529e4
loc_1000529e4:
  1000529e4  mov     x19, x0
  1000529e8  mov     x0, x21
  1000529ec  b       loc_100052a2c
  1000529f0  mov     x19, x0
  1000529f4  b       loc_100052a28
  1000529f8  mov     x19, x0
  1000529fc  b       loc_100052a0c
  100052a00  mov     x19, x0
  100052a04  mov     x0, x23
  100052a08  bl      _objc_release
loc_100052a0c:
  100052a0c  mov     x0, x22
  100052a10  b       loc_100052a24
  100052a14  mov     x19, x0
  100052a18  b       loc_100052a28
  100052a1c  mov     x19, x0
  100052a20  mov     x0, x21
loc_100052a24:
  100052a24  bl      _objc_release
loc_100052a28:
  100052a28  mov     x0, x20
loc_100052a2c:
  100052a2c  bl      _objc_release
  100052a30  mov     x0, x19
  100052a34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController gestureButtonTouched]
; address 0x100052a38  size 644  kind objc
; ======================================================================
  100052a38  stp     x24, x23, [sp, #-0x40]!
  100052a3c  stp     x22, x21, [sp, #0x10]
  100052a40  stp     x20, x19, [sp, #0x20]
  100052a44  stp     x29, x30, [sp, #0x30]
  100052a48  add     x29, sp, #0x30
  100052a4c  mov     x19, x0
  100052a50  adrp    x8, #0x100418000
  100052a54  nop
  100052a58  ldr     x1, [x8, #0xd30]
  100052a5c  bl      _objc_msgSend                            ; [self buttonsButton]
  100052a60  mov     x29, x29
  100052a64  bl      _objc_retainAutoreleasedReturnValue
  100052a68  mov     x21, x0
  100052a6c  adrp    x8, #0x100418000
  100052a70  nop
  100052a74  ldr     x20, [x8, #0xd70]
  100052a78  mov     w2, #0
  100052a7c  mov     x1, x20
  100052a80  bl      _objc_msgSend                            ; [[self buttonsButton] setSelected:0]
  100052a84  mov     x0, x21
  100052a88  bl      _objc_release
  100052a8c  adrp    x8, #0x100418000
  100052a90  nop
  100052a94  ldr     x1, [x8, #0xd40]
  100052a98  mov     x0, x19
  100052a9c  bl      _objc_msgSend                            ; [self gestureButton]
  100052aa0  mov     x29, x29
  100052aa4  bl      _objc_retainAutoreleasedReturnValue
  100052aa8  mov     x21, x0
  100052aac  mov     w2, #1
  100052ab0  mov     x1, x20
  100052ab4  bl      _objc_msgSend                            ; [[self gestureButton] setSelected:1]
  100052ab8  mov     x0, x21
  100052abc  bl      _objc_release
  100052ac0  adrp    x8, #0x10041d000
  100052ac4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100052ac8  adrp    x8, #0x100416000
  100052acc  nop
  100052ad0  ldr     x1, [x8, #0xc00]
  100052ad4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100052ad8  mov     x29, x29
  100052adc  bl      _objc_retainAutoreleasedReturnValue
  100052ae0  mov     x21, x0
  100052ae4  adrp    x8, #0x100418000
  100052ae8  nop
  100052aec  ldr     x20, [x8, #0xde0]
  100052af0  mov     w2, #0
  100052af4  mov     x1, x20
  100052af8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setButtonMode:0]
  100052afc  mov     x0, x21
  100052b00  bl      _objc_release
  100052b04  adrp    x8, #0x10041e000
  100052b08  ldr     x0, [x8, #8]                             ; class ADTracker
  100052b0c  adrp    x8, #0x100416000
  100052b10  nop
  100052b14  ldr     x1, [x8, #0xac0]
  100052b18  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100052b1c  mov     x29, x29
  100052b20  bl      _objc_retainAutoreleasedReturnValue
  100052b24  mov     x21, x0
  100052b28  adrp    x2, #0x1003bd000
  100052b2c  add     x2, x2, #0x8f0                           ; @"gesture"
  100052b30  mov     x1, x20
  100052b34  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setButtonMode:@"gesture"]
  100052b38  mov     x0, x21
  100052b3c  bl      _objc_release
  100052b40  adrp    x8, #0x100418000
  100052b44  nop
  100052b48  ldr     x21, [x8, #0xd80]
  100052b4c  mov     x0, x19
  100052b50  mov     x1, x21
  100052b54  bl      _objc_msgSend                            ; [self controlsText]
  100052b58  mov     x29, x29
  100052b5c  bl      _objc_retainAutoreleasedReturnValue
  100052b60  mov     x20, x0
  100052b64  adrp    x8, #0x10041d000
  100052b68  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100052b6c  adrp    x8, #0x100416000
  100052b70  nop
  100052b74  ldr     x1, [x8, #0xb58]
  100052b78  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100052b7c  mov     x29, x29
  100052b80  bl      _objc_retainAutoreleasedReturnValue
  100052b84  mov     x22, x0
  100052b88  adrp    x8, #0x100416000
  100052b8c  nop
  100052b90  ldr     x1, [x8, #0xb60]
  100052b94  mov     x4, #0
  100052b98  adrp    x2, #0x1003bd000
  100052b9c  add     x2, x2, #0x5b0                           ; @"GESTURE_MODE"
  100052ba0  adrp    x3, #0x1003b9000
  100052ba4  add     x3, x3, #0x870                           ; @""
  100052ba8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"GESTURE_MODE" value:@"" table:0]
  100052bac  mov     x29, x29
  100052bb0  bl      _objc_retainAutoreleasedReturnValue
  100052bb4  mov     x23, x0
  100052bb8  adrp    x8, #0x100416000
  100052bbc  nop
  100052bc0  ldr     x1, [x8, #0xb68]
  100052bc4  mov     x0, x20
  100052bc8  mov     x2, x23
  100052bcc  bl      _objc_msgSend                            ; [[self controlsText] setText:[[NSBundle mainBundle] localizedStringForKey:@"GESTURE_MODE" value:@"" table:0]]
  100052bd0  mov     x0, x23
  100052bd4  bl      _objc_release
  100052bd8  mov     x0, x22
  100052bdc  bl      _objc_release
  100052be0  mov     x0, x20
  100052be4  bl      _objc_release
  100052be8  mov     x0, x19
  100052bec  mov     x1, x21
  100052bf0  bl      _objc_msgSend                            ; [self controlsText]
  100052bf4  mov     x29, x29
  100052bf8  bl      _objc_retainAutoreleasedReturnValue
  100052bfc  mov     x20, x0
  100052c00  adrp    x8, #0x10041d000
  100052c04  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100052c08  adrp    x8, #0x100417000
  100052c0c  nop
  100052c10  ldr     x1, [x8, #0x328]
  100052c14  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100052c18  mov     x29, x29
  100052c1c  bl      _objc_retainAutoreleasedReturnValue
  100052c20  mov     x21, x0
  100052c24  adrp    x8, #0x100417000
  100052c28  nop
  100052c2c  ldr     x1, [x8, #0x330]
  100052c30  mov     x0, x20
  100052c34  mov     x2, x21
  100052c38  bl      _objc_msgSend                            ; [[self controlsText] setTextColor:[UIColor whiteColor]]
  100052c3c  mov     x0, x21
  100052c40  bl      _objc_release
  100052c44  mov     x0, x20
  100052c48  ldp     x29, x30, [sp, #0x30]
  100052c4c  ldp     x20, x19, [sp, #0x20]
  100052c50  ldp     x22, x21, [sp, #0x10]
  100052c54  ldp     x24, x23, [sp], #0x40
  100052c58  b       _objc_release
  100052c5c  b       loc_100052c68
  100052c60  b       loc_100052c68
  100052c64  b       loc_100052c68
loc_100052c68:
  100052c68  mov     x19, x0
  100052c6c  mov     x0, x21
  100052c70  b       loc_100052cb0
  100052c74  mov     x19, x0
  100052c78  b       loc_100052cac
  100052c7c  mov     x19, x0
  100052c80  b       loc_100052c90
  100052c84  mov     x19, x0
  100052c88  mov     x0, x23
  100052c8c  bl      _objc_release
loc_100052c90:
  100052c90  mov     x0, x22
  100052c94  b       loc_100052ca8
  100052c98  mov     x19, x0
  100052c9c  b       loc_100052cac
  100052ca0  mov     x19, x0
  100052ca4  mov     x0, x21
loc_100052ca8:
  100052ca8  bl      _objc_release
loc_100052cac:
  100052cac  mov     x0, x20
loc_100052cb0:
  100052cb0  bl      _objc_release
  100052cb4  mov     x0, x19
  100052cb8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController volumeSliderValueChanged:]
; address 0x100052cbc  size 196  kind objc
; ======================================================================
  100052cbc  stp     x22, x21, [sp, #-0x30]!
  100052cc0  stp     x20, x19, [sp, #0x10]
  100052cc4  stp     x29, x30, [sp, #0x20]
  100052cc8  add     x29, sp, #0x20
  100052ccc  mov     x20, x0
  100052cd0  adrp    x8, #0x10041d000
  100052cd4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100052cd8  adrp    x8, #0x100416000
  100052cdc  nop
  100052ce0  ldr     x1, [x8, #0xc00]
  100052ce4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100052ce8  mov     x29, x29
  100052cec  bl      _objc_retainAutoreleasedReturnValue
  100052cf0  mov     x19, x0
  100052cf4  adrp    x8, #0x100418000
  100052cf8  nop
  100052cfc  ldr     x1, [x8, #0xd90]
  100052d00  mov     x0, x20
  100052d04  bl      _objc_msgSend                            ; [self volumeSlider]
  100052d08  mov     x29, x29
  100052d0c  bl      _objc_retainAutoreleasedReturnValue
  100052d10  mov     x20, x0
  100052d14  adrp    x8, #0x100418000
  100052d18  nop
  100052d1c  ldr     x1, [x8, #0x800]
  100052d20  bl      _objc_msgSend                            ; [[self volumeSlider] value]
  100052d24  adrp    x8, #0x100418000
  100052d28  nop
  100052d2c  ldr     x1, [x8, #0xde8]
  100052d30  mov     x0, x19
  100052d34  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setMasterGain:d0]
  100052d38  mov     x0, x20
  100052d3c  bl      _objc_release
  100052d40  mov     x0, x19
  100052d44  ldp     x29, x30, [sp, #0x20]
  100052d48  ldp     x20, x19, [sp, #0x10]
  100052d4c  ldp     x22, x21, [sp], #0x30
  100052d50  b       _objc_release
  100052d54  mov     x21, x0
  100052d58  mov     x0, x20
  100052d5c  bl      _objc_release
  100052d60  b       loc_100052d70
  100052d64  mov     x21, x0
  100052d68  b       loc_100052d78
  100052d6c  mov     x21, x0
loc_100052d70:
  100052d70  mov     x0, x19
  100052d74  bl      _objc_release
loc_100052d78:
  100052d78  mov     x0, x21
  100052d7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController announcerValueChanged:]
; address 0x100052d80  size 200  kind objc
; ======================================================================
  100052d80  stp     x22, x21, [sp, #-0x30]!
  100052d84  stp     x20, x19, [sp, #0x10]
  100052d88  stp     x29, x30, [sp, #0x20]
  100052d8c  add     x29, sp, #0x20
  100052d90  mov     x20, x0
  100052d94  adrp    x8, #0x10041d000
  100052d98  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100052d9c  adrp    x8, #0x100416000
  100052da0  nop
  100052da4  ldr     x1, [x8, #0xc00]
  100052da8  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100052dac  mov     x29, x29
  100052db0  bl      _objc_retainAutoreleasedReturnValue
  100052db4  mov     x19, x0
  100052db8  adrp    x8, #0x100418000
  100052dbc  nop
  100052dc0  ldr     x1, [x8, #0xda0]
  100052dc4  mov     x0, x20
  100052dc8  bl      _objc_msgSend                            ; [self announcerSwitch]
  100052dcc  mov     x29, x29
  100052dd0  bl      _objc_retainAutoreleasedReturnValue
  100052dd4  mov     x20, x0
  100052dd8  adrp    x8, #0x100418000
  100052ddc  nop
  100052de0  ldr     x1, [x8, #0xdf0]
  100052de4  bl      _objc_msgSend                            ; [[self announcerSwitch] isOn]
  100052de8  mov     x2, x0
  100052dec  adrp    x8, #0x100418000
  100052df0  nop
  100052df4  ldr     x1, [x8, #0xdf8]
  100052df8  mov     x0, x19
  100052dfc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] setAnnouncer:[[self announcerSwitch] isOn]]
  100052e00  mov     x0, x20
  100052e04  bl      _objc_release
  100052e08  mov     x0, x19
  100052e0c  ldp     x29, x30, [sp, #0x20]
  100052e10  ldp     x20, x19, [sp, #0x10]
  100052e14  ldp     x22, x21, [sp], #0x30
  100052e18  b       _objc_release
  100052e1c  mov     x21, x0
  100052e20  mov     x0, x20
  100052e24  bl      _objc_release
  100052e28  b       loc_100052e38
  100052e2c  mov     x21, x0
  100052e30  b       loc_100052e40
  100052e34  mov     x21, x0
loc_100052e38:
  100052e38  mov     x0, x19
  100052e3c  bl      _objc_release
loc_100052e40:
  100052e40  mov     x0, x21
  100052e44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController TestHeadphonesButtonPressed:]
; address 0x100052e48  size 240  kind objc
; ======================================================================
  100052e48  stp     x22, x21, [sp, #-0x30]!
  100052e4c  stp     x20, x19, [sp, #0x10]
  100052e50  stp     x29, x30, [sp, #0x20]
  100052e54  add     x29, sp, #0x20
  100052e58  adrp    x8, #0x10041d000
  100052e5c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100052e60  adrp    x8, #0x100417000
  100052e64  nop
  100052e68  ldr     x1, [x8, #0x4f0]
  100052e6c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100052e70  mov     x29, x29
  100052e74  bl      _objc_retainAutoreleasedReturnValue
  100052e78  mov     x19, x0
  100052e7c  adrp    x8, #0x100417000
  100052e80  nop
  100052e84  ldr     x1, [x8, #0x4f8]
  100052e88  adrp    x2, #0x1003bd000
  100052e8c  add     x2, x2, #0x910                           ; @"headphonesTest"
  100052e90  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"headphonesTest"]
  100052e94  mov     x29, x29
  100052e98  bl      _objc_retainAutoreleasedReturnValue
  100052e9c  mov     x20, x0
  100052ea0  adrp    x8, #0x100417000
  100052ea4  nop
  100052ea8  ldr     x1, [x8, #0x990]
  100052eac  adrp    x2, #0x1003bd000
  100052eb0  add     x2, x2, #0x930                           ; @"HeadphonesTest"
  100052eb4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"headphonesTest"] S3DSound:@"HeadphonesTest"]
  100052eb8  mov     x29, x29
  100052ebc  bl      _objc_retainAutoreleasedReturnValue
  100052ec0  mov     x21, x0
  100052ec4  mov     x0, x20
  100052ec8  bl      _objc_release
  100052ecc  mov     x0, x19
  100052ed0  bl      _objc_release
  100052ed4  adrp    x8, #0x100417000
  100052ed8  nop
  100052edc  ldr     x1, [x8, #0x600]
  100052ee0  mov     x0, x21
  100052ee4  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"headphonesTest"] S3DSound:@"HeadphonesTest"] play]
  100052ee8  mov     x0, x21
  100052eec  ldp     x29, x30, [sp, #0x20]
  100052ef0  ldp     x20, x19, [sp, #0x10]
  100052ef4  ldp     x22, x21, [sp], #0x30
  100052ef8  b       _objc_release
  100052efc  mov     x20, x0
  100052f00  b       loc_100052f30
  100052f04  mov     x20, x0
  100052f08  b       loc_100052f1c
  100052f0c  mov     x1, x20
  100052f10  mov     x20, x0
  100052f14  mov     x0, x1
  100052f18  bl      _objc_release
loc_100052f1c:
  100052f1c  mov     x0, x19
  100052f20  b       loc_100052f2c
  100052f24  mov     x20, x0
  100052f28  mov     x0, x21
loc_100052f2c:
  100052f2c  bl      _objc_release
loc_100052f30:
  100052f30  mov     x0, x20
  100052f34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADControlSchemeViewController didReceiveMemoryWarning]
; address 0x100052f38  size 60  kind objc
; ======================================================================
  100052f38  stp     x29, x30, [sp, #-0x10]!
  100052f3c  mov     x29, sp
  100052f40  sub     sp, sp, #0x10
  100052f44  str     x0, [sp]
  100052f48  adrp    x8, #0x10041e000
  100052f4c  ldr     x8, [x8, #0xd50]
  100052f50  str     x8, [sp, #8]
  100052f54  adrp    x8, #0x100416000
  100052f58  nop
  100052f5c  ldr     x1, [x8, #0xbf8]
  100052f60  mov     x0, sp
  100052f64  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100052f68  mov     sp, x29
  100052f6c  ldp     x29, x30, [sp], #0x10
  100052f70  ret

; ======================================================================
; -[ADControlSchemeViewController announcerSwitch]
; address 0x100052f74  size 16  kind objc
; ======================================================================
  100052f74  adrp    x8, #0x10041f000
  100052f78  ldrsw   x8, [x8, #0xa60]                         ; ivar offset ADControlSchemeViewController._announcerSwitch (+0x140)
  100052f7c  ldr     x0, [x0, x8]                             ; x0 = self->_announcerSwitch
  100052f80  ret

; ======================================================================
; -[ADControlSchemeViewController setAnnouncerSwitch:]
; address 0x100052f84  size 56  kind objc
; ======================================================================
  100052f84  stp     x20, x19, [sp, #-0x20]!
  100052f88  stp     x29, x30, [sp, #0x10]
  100052f8c  add     x29, sp, #0x10
  100052f90  mov     x19, x0
  100052f94  adrp    x8, #0x10041f000
  100052f98  ldrsw   x20, [x8, #0xa60]                        ; ivar offset ADControlSchemeViewController._announcerSwitch (+0x140)
  100052f9c  mov     x0, x2
  100052fa0  bl      _objc_retain
  100052fa4  ldr     x8, [x19, x20]                           ; x8 = self->_announcerSwitch
  100052fa8  str     x0, [x19, x20]                           ; self->_announcerSwitch = arg1
  100052fac  mov     x0, x8
  100052fb0  ldp     x29, x30, [sp, #0x10]
  100052fb4  ldp     x20, x19, [sp], #0x20
  100052fb8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController gyroButton]
; address 0x100052fbc  size 16  kind objc
; ======================================================================
  100052fbc  adrp    x8, #0x10041f000
  100052fc0  ldrsw   x8, [x8, #0xa64]                         ; ivar offset ADControlSchemeViewController._gyroButton (+0x148)
  100052fc4  ldr     x0, [x0, x8]                             ; x0 = self->_gyroButton
  100052fc8  ret

; ======================================================================
; -[ADControlSchemeViewController setGyroButton:]
; address 0x100052fcc  size 56  kind objc
; ======================================================================
  100052fcc  stp     x20, x19, [sp, #-0x20]!
  100052fd0  stp     x29, x30, [sp, #0x10]
  100052fd4  add     x29, sp, #0x10
  100052fd8  mov     x19, x0
  100052fdc  adrp    x8, #0x10041f000
  100052fe0  ldrsw   x20, [x8, #0xa64]                        ; ivar offset ADControlSchemeViewController._gyroButton (+0x148)
  100052fe4  mov     x0, x2
  100052fe8  bl      _objc_retain
  100052fec  ldr     x8, [x19, x20]                           ; x8 = self->_gyroButton
  100052ff0  str     x0, [x19, x20]                           ; self->_gyroButton = arg1
  100052ff4  mov     x0, x8
  100052ff8  ldp     x29, x30, [sp, #0x10]
  100052ffc  ldp     x20, x19, [sp], #0x20
  100053000  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController swipeButton]
; address 0x100053004  size 16  kind objc
; ======================================================================
  100053004  adrp    x8, #0x10041f000
  100053008  ldrsw   x8, [x8, #0xa68]                         ; ivar offset ADControlSchemeViewController._swipeButton (+0x150)
  10005300c  ldr     x0, [x0, x8]                             ; x0 = self->_swipeButton
  100053010  ret

; ======================================================================
; -[ADControlSchemeViewController setSwipeButton:]
; address 0x100053014  size 56  kind objc
; ======================================================================
  100053014  stp     x20, x19, [sp, #-0x20]!
  100053018  stp     x29, x30, [sp, #0x10]
  10005301c  add     x29, sp, #0x10
  100053020  mov     x19, x0
  100053024  adrp    x8, #0x10041f000
  100053028  ldrsw   x20, [x8, #0xa68]                        ; ivar offset ADControlSchemeViewController._swipeButton (+0x150)
  10005302c  mov     x0, x2
  100053030  bl      _objc_retain
  100053034  ldr     x8, [x19, x20]                           ; x8 = self->_swipeButton
  100053038  str     x0, [x19, x20]                           ; self->_swipeButton = arg1
  10005303c  mov     x0, x8
  100053040  ldp     x29, x30, [sp, #0x10]
  100053044  ldp     x20, x19, [sp], #0x20
  100053048  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController tiltButton]
; address 0x10005304c  size 16  kind objc
; ======================================================================
  10005304c  adrp    x8, #0x10041f000
  100053050  ldrsw   x8, [x8, #0xa6c]                         ; ivar offset ADControlSchemeViewController._tiltButton (+0x158)
  100053054  ldr     x0, [x0, x8]                             ; x0 = self->_tiltButton
  100053058  ret

; ======================================================================
; -[ADControlSchemeViewController setTiltButton:]
; address 0x10005305c  size 56  kind objc
; ======================================================================
  10005305c  stp     x20, x19, [sp, #-0x20]!
  100053060  stp     x29, x30, [sp, #0x10]
  100053064  add     x29, sp, #0x10
  100053068  mov     x19, x0
  10005306c  adrp    x8, #0x10041f000
  100053070  ldrsw   x20, [x8, #0xa6c]                        ; ivar offset ADControlSchemeViewController._tiltButton (+0x158)
  100053074  mov     x0, x2
  100053078  bl      _objc_retain
  10005307c  ldr     x8, [x19, x20]                           ; x8 = self->_tiltButton
  100053080  str     x0, [x19, x20]                           ; self->_tiltButton = arg1
  100053084  mov     x0, x8
  100053088  ldp     x29, x30, [sp, #0x10]
  10005308c  ldp     x20, x19, [sp], #0x20
  100053090  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController sensivityLabel]
; address 0x100053094  size 16  kind objc
; ======================================================================
  100053094  adrp    x8, #0x10041f000
  100053098  ldrsw   x8, [x8, #0xa70]                         ; ivar offset ADControlSchemeViewController._sensivityLabel (+0x160)
  10005309c  ldr     x0, [x0, x8]                             ; x0 = self->_sensivityLabel
  1000530a0  ret

; ======================================================================
; -[ADControlSchemeViewController setSensivityLabel:]
; address 0x1000530a4  size 56  kind objc
; ======================================================================
  1000530a4  stp     x20, x19, [sp, #-0x20]!
  1000530a8  stp     x29, x30, [sp, #0x10]
  1000530ac  add     x29, sp, #0x10
  1000530b0  mov     x19, x0
  1000530b4  adrp    x8, #0x10041f000
  1000530b8  ldrsw   x20, [x8, #0xa70]                        ; ivar offset ADControlSchemeViewController._sensivityLabel (+0x160)
  1000530bc  mov     x0, x2
  1000530c0  bl      _objc_retain
  1000530c4  ldr     x8, [x19, x20]                           ; x8 = self->_sensivityLabel
  1000530c8  str     x0, [x19, x20]                           ; self->_sensivityLabel = arg1
  1000530cc  mov     x0, x8
  1000530d0  ldp     x29, x30, [sp, #0x10]
  1000530d4  ldp     x20, x19, [sp], #0x20
  1000530d8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController sensivitySlider]
; address 0x1000530dc  size 16  kind objc
; ======================================================================
  1000530dc  adrp    x8, #0x10041f000
  1000530e0  ldrsw   x8, [x8, #0xa74]                         ; ivar offset ADControlSchemeViewController._sensivitySlider (+0x168)
  1000530e4  ldr     x0, [x0, x8]                             ; x0 = self->_sensivitySlider
  1000530e8  ret

; ======================================================================
; -[ADControlSchemeViewController setSensivitySlider:]
; address 0x1000530ec  size 56  kind objc
; ======================================================================
  1000530ec  stp     x20, x19, [sp, #-0x20]!
  1000530f0  stp     x29, x30, [sp, #0x10]
  1000530f4  add     x29, sp, #0x10
  1000530f8  mov     x19, x0
  1000530fc  adrp    x8, #0x10041f000
  100053100  ldrsw   x20, [x8, #0xa74]                        ; ivar offset ADControlSchemeViewController._sensivitySlider (+0x168)
  100053104  mov     x0, x2
  100053108  bl      _objc_retain
  10005310c  ldr     x8, [x19, x20]                           ; x8 = self->_sensivitySlider
  100053110  str     x0, [x19, x20]                           ; self->_sensivitySlider = arg1
  100053114  mov     x0, x8
  100053118  ldp     x29, x30, [sp, #0x10]
  10005311c  ldp     x20, x19, [sp], #0x20
  100053120  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController sensitivitySliderBack]
; address 0x100053124  size 16  kind objc
; ======================================================================
  100053124  adrp    x8, #0x10041f000
  100053128  ldrsw   x8, [x8, #0xa78]                         ; ivar offset ADControlSchemeViewController._sensitivitySliderBack (+0x170)
  10005312c  ldr     x0, [x0, x8]                             ; x0 = self->_sensitivitySliderBack
  100053130  ret

; ======================================================================
; -[ADControlSchemeViewController setSensitivitySliderBack:]
; address 0x100053134  size 56  kind objc
; ======================================================================
  100053134  stp     x20, x19, [sp, #-0x20]!
  100053138  stp     x29, x30, [sp, #0x10]
  10005313c  add     x29, sp, #0x10
  100053140  mov     x19, x0
  100053144  adrp    x8, #0x10041f000
  100053148  ldrsw   x20, [x8, #0xa78]                        ; ivar offset ADControlSchemeViewController._sensitivitySliderBack (+0x170)
  10005314c  mov     x0, x2
  100053150  bl      _objc_retain
  100053154  ldr     x8, [x19, x20]                           ; x8 = self->_sensitivitySliderBack
  100053158  str     x0, [x19, x20]                           ; self->_sensitivitySliderBack = arg1
  10005315c  mov     x0, x8
  100053160  ldp     x29, x30, [sp, #0x10]
  100053164  ldp     x20, x19, [sp], #0x20
  100053168  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController aimingButton]
; address 0x10005316c  size 16  kind objc
; ======================================================================
  10005316c  adrp    x8, #0x10041f000
  100053170  ldrsw   x8, [x8, #0xa7c]                         ; ivar offset ADControlSchemeViewController._aimingButton (+0x178)
  100053174  ldr     x0, [x0, x8]                             ; x0 = self->_aimingButton
  100053178  ret

; ======================================================================
; -[ADControlSchemeViewController setAimingButton:]
; address 0x10005317c  size 56  kind objc
; ======================================================================
  10005317c  stp     x20, x19, [sp, #-0x20]!
  100053180  stp     x29, x30, [sp, #0x10]
  100053184  add     x29, sp, #0x10
  100053188  mov     x19, x0
  10005318c  adrp    x8, #0x10041f000
  100053190  ldrsw   x20, [x8, #0xa7c]                        ; ivar offset ADControlSchemeViewController._aimingButton (+0x178)
  100053194  mov     x0, x2
  100053198  bl      _objc_retain
  10005319c  ldr     x8, [x19, x20]                           ; x8 = self->_aimingButton
  1000531a0  str     x0, [x19, x20]                           ; self->_aimingButton = arg1
  1000531a4  mov     x0, x8
  1000531a8  ldp     x29, x30, [sp, #0x10]
  1000531ac  ldp     x20, x19, [sp], #0x20
  1000531b0  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController controlsButton]
; address 0x1000531b4  size 16  kind objc
; ======================================================================
  1000531b4  adrp    x8, #0x10041f000
  1000531b8  ldrsw   x8, [x8, #0xa80]                         ; ivar offset ADControlSchemeViewController._controlsButton (+0x180)
  1000531bc  ldr     x0, [x0, x8]                             ; x0 = self->_controlsButton
  1000531c0  ret

; ======================================================================
; -[ADControlSchemeViewController setControlsButton:]
; address 0x1000531c4  size 56  kind objc
; ======================================================================
  1000531c4  stp     x20, x19, [sp, #-0x20]!
  1000531c8  stp     x29, x30, [sp, #0x10]
  1000531cc  add     x29, sp, #0x10
  1000531d0  mov     x19, x0
  1000531d4  adrp    x8, #0x10041f000
  1000531d8  ldrsw   x20, [x8, #0xa80]                        ; ivar offset ADControlSchemeViewController._controlsButton (+0x180)
  1000531dc  mov     x0, x2
  1000531e0  bl      _objc_retain
  1000531e4  ldr     x8, [x19, x20]                           ; x8 = self->_controlsButton
  1000531e8  str     x0, [x19, x20]                           ; self->_controlsButton = arg1
  1000531ec  mov     x0, x8
  1000531f0  ldp     x29, x30, [sp, #0x10]
  1000531f4  ldp     x20, x19, [sp], #0x20
  1000531f8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController soundButton]
; address 0x1000531fc  size 16  kind objc
; ======================================================================
  1000531fc  adrp    x8, #0x10041f000
  100053200  ldrsw   x8, [x8, #0xa84]                         ; ivar offset ADControlSchemeViewController._soundButton (+0x188)
  100053204  ldr     x0, [x0, x8]                             ; x0 = self->_soundButton
  100053208  ret

; ======================================================================
; -[ADControlSchemeViewController setSoundButton:]
; address 0x10005320c  size 56  kind objc
; ======================================================================
  10005320c  stp     x20, x19, [sp, #-0x20]!
  100053210  stp     x29, x30, [sp, #0x10]
  100053214  add     x29, sp, #0x10
  100053218  mov     x19, x0
  10005321c  adrp    x8, #0x10041f000
  100053220  ldrsw   x20, [x8, #0xa84]                        ; ivar offset ADControlSchemeViewController._soundButton (+0x188)
  100053224  mov     x0, x2
  100053228  bl      _objc_retain
  10005322c  ldr     x8, [x19, x20]                           ; x8 = self->_soundButton
  100053230  str     x0, [x19, x20]                           ; self->_soundButton = arg1
  100053234  mov     x0, x8
  100053238  ldp     x29, x30, [sp, #0x10]
  10005323c  ldp     x20, x19, [sp], #0x20
  100053240  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController buttonsButton]
; address 0x100053244  size 16  kind objc
; ======================================================================
  100053244  adrp    x8, #0x10041f000
  100053248  ldrsw   x8, [x8, #0xa88]                         ; ivar offset ADControlSchemeViewController._buttonsButton (+0x190)
  10005324c  ldr     x0, [x0, x8]                             ; x0 = self->_buttonsButton
  100053250  ret

; ======================================================================
; -[ADControlSchemeViewController setButtonsButton:]
; address 0x100053254  size 56  kind objc
; ======================================================================
  100053254  stp     x20, x19, [sp, #-0x20]!
  100053258  stp     x29, x30, [sp, #0x10]
  10005325c  add     x29, sp, #0x10
  100053260  mov     x19, x0
  100053264  adrp    x8, #0x10041f000
  100053268  ldrsw   x20, [x8, #0xa88]                        ; ivar offset ADControlSchemeViewController._buttonsButton (+0x190)
  10005326c  mov     x0, x2
  100053270  bl      _objc_retain
  100053274  ldr     x8, [x19, x20]                           ; x8 = self->_buttonsButton
  100053278  str     x0, [x19, x20]                           ; self->_buttonsButton = arg1
  10005327c  mov     x0, x8
  100053280  ldp     x29, x30, [sp, #0x10]
  100053284  ldp     x20, x19, [sp], #0x20
  100053288  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController gestureButton]
; address 0x10005328c  size 16  kind objc
; ======================================================================
  10005328c  adrp    x8, #0x10041f000
  100053290  ldrsw   x8, [x8, #0xa8c]                         ; ivar offset ADControlSchemeViewController._gestureButton (+0x198)
  100053294  ldr     x0, [x0, x8]                             ; x0 = self->_gestureButton
  100053298  ret

; ======================================================================
; -[ADControlSchemeViewController setGestureButton:]
; address 0x10005329c  size 56  kind objc
; ======================================================================
  10005329c  stp     x20, x19, [sp, #-0x20]!
  1000532a0  stp     x29, x30, [sp, #0x10]
  1000532a4  add     x29, sp, #0x10
  1000532a8  mov     x19, x0
  1000532ac  adrp    x8, #0x10041f000
  1000532b0  ldrsw   x20, [x8, #0xa8c]                        ; ivar offset ADControlSchemeViewController._gestureButton (+0x198)
  1000532b4  mov     x0, x2
  1000532b8  bl      _objc_retain
  1000532bc  ldr     x8, [x19, x20]                           ; x8 = self->_gestureButton
  1000532c0  str     x0, [x19, x20]                           ; self->_gestureButton = arg1
  1000532c4  mov     x0, x8
  1000532c8  ldp     x29, x30, [sp, #0x10]
  1000532cc  ldp     x20, x19, [sp], #0x20
  1000532d0  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController volumeSlider]
; address 0x1000532d4  size 16  kind objc
; ======================================================================
  1000532d4  adrp    x8, #0x10041f000
  1000532d8  ldrsw   x8, [x8, #0xa90]                         ; ivar offset ADControlSchemeViewController._volumeSlider (+0x1a0)
  1000532dc  ldr     x0, [x0, x8]                             ; x0 = self->_volumeSlider
  1000532e0  ret

; ======================================================================
; -[ADControlSchemeViewController setVolumeSlider:]
; address 0x1000532e4  size 56  kind objc
; ======================================================================
  1000532e4  stp     x20, x19, [sp, #-0x20]!
  1000532e8  stp     x29, x30, [sp, #0x10]
  1000532ec  add     x29, sp, #0x10
  1000532f0  mov     x19, x0
  1000532f4  adrp    x8, #0x10041f000
  1000532f8  ldrsw   x20, [x8, #0xa90]                        ; ivar offset ADControlSchemeViewController._volumeSlider (+0x1a0)
  1000532fc  mov     x0, x2
  100053300  bl      _objc_retain
  100053304  ldr     x8, [x19, x20]                           ; x8 = self->_volumeSlider
  100053308  str     x0, [x19, x20]                           ; self->_volumeSlider = arg1
  10005330c  mov     x0, x8
  100053310  ldp     x29, x30, [sp, #0x10]
  100053314  ldp     x20, x19, [sp], #0x20
  100053318  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController contentScrollView]
; address 0x10005331c  size 16  kind objc
; ======================================================================
  10005331c  adrp    x8, #0x10041f000
  100053320  ldrsw   x8, [x8, #0xa94]                         ; ivar offset ADControlSchemeViewController._contentScrollView (+0x1a8)
  100053324  ldr     x0, [x0, x8]                             ; x0 = self->_contentScrollView
  100053328  ret

; ======================================================================
; -[ADControlSchemeViewController setContentScrollView:]
; address 0x10005332c  size 56  kind objc
; ======================================================================
  10005332c  stp     x20, x19, [sp, #-0x20]!
  100053330  stp     x29, x30, [sp, #0x10]
  100053334  add     x29, sp, #0x10
  100053338  mov     x19, x0
  10005333c  adrp    x8, #0x10041f000
  100053340  ldrsw   x20, [x8, #0xa94]                        ; ivar offset ADControlSchemeViewController._contentScrollView (+0x1a8)
  100053344  mov     x0, x2
  100053348  bl      _objc_retain
  10005334c  ldr     x8, [x19, x20]                           ; x8 = self->_contentScrollView
  100053350  str     x0, [x19, x20]                           ; self->_contentScrollView = arg1
  100053354  mov     x0, x8
  100053358  ldp     x29, x30, [sp, #0x10]
  10005335c  ldp     x20, x19, [sp], #0x20
  100053360  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController contentView]
; address 0x100053364  size 16  kind objc
; ======================================================================
  100053364  adrp    x8, #0x10041f000
  100053368  ldrsw   x8, [x8, #0xa98]                         ; ivar offset ADControlSchemeViewController._contentView (+0x1b0)
  10005336c  ldr     x0, [x0, x8]                             ; x0 = self->_contentView
  100053370  ret

; ======================================================================
; -[ADControlSchemeViewController setContentView:]
; address 0x100053374  size 56  kind objc
; ======================================================================
  100053374  stp     x20, x19, [sp, #-0x20]!
  100053378  stp     x29, x30, [sp, #0x10]
  10005337c  add     x29, sp, #0x10
  100053380  mov     x19, x0
  100053384  adrp    x8, #0x10041f000
  100053388  ldrsw   x20, [x8, #0xa98]                        ; ivar offset ADControlSchemeViewController._contentView (+0x1b0)
  10005338c  mov     x0, x2
  100053390  bl      _objc_retain
  100053394  ldr     x8, [x19, x20]                           ; x8 = self->_contentView
  100053398  str     x0, [x19, x20]                           ; self->_contentView = arg1
  10005339c  mov     x0, x8
  1000533a0  ldp     x29, x30, [sp, #0x10]
  1000533a4  ldp     x20, x19, [sp], #0x20
  1000533a8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController aimingText]
; address 0x1000533ac  size 16  kind objc
; ======================================================================
  1000533ac  adrp    x8, #0x10041f000
  1000533b0  ldrsw   x8, [x8, #0xa9c]                         ; ivar offset ADControlSchemeViewController._aimingText (+0x1b8)
  1000533b4  ldr     x0, [x0, x8]                             ; x0 = self->_aimingText
  1000533b8  ret

; ======================================================================
; -[ADControlSchemeViewController setAimingText:]
; address 0x1000533bc  size 56  kind objc
; ======================================================================
  1000533bc  stp     x20, x19, [sp, #-0x20]!
  1000533c0  stp     x29, x30, [sp, #0x10]
  1000533c4  add     x29, sp, #0x10
  1000533c8  mov     x19, x0
  1000533cc  adrp    x8, #0x10041f000
  1000533d0  ldrsw   x20, [x8, #0xa9c]                        ; ivar offset ADControlSchemeViewController._aimingText (+0x1b8)
  1000533d4  mov     x0, x2
  1000533d8  bl      _objc_retain
  1000533dc  ldr     x8, [x19, x20]                           ; x8 = self->_aimingText
  1000533e0  str     x0, [x19, x20]                           ; self->_aimingText = arg1
  1000533e4  mov     x0, x8
  1000533e8  ldp     x29, x30, [sp, #0x10]
  1000533ec  ldp     x20, x19, [sp], #0x20
  1000533f0  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController controlsText]
; address 0x1000533f4  size 16  kind objc
; ======================================================================
  1000533f4  adrp    x8, #0x10041f000
  1000533f8  ldrsw   x8, [x8, #0xaa0]                         ; ivar offset ADControlSchemeViewController._controlsText (+0x1c0)
  1000533fc  ldr     x0, [x0, x8]                             ; x0 = self->_controlsText
  100053400  ret

; ======================================================================
; -[ADControlSchemeViewController setControlsText:]
; address 0x100053404  size 56  kind objc
; ======================================================================
  100053404  stp     x20, x19, [sp, #-0x20]!
  100053408  stp     x29, x30, [sp, #0x10]
  10005340c  add     x29, sp, #0x10
  100053410  mov     x19, x0
  100053414  adrp    x8, #0x10041f000
  100053418  ldrsw   x20, [x8, #0xaa0]                        ; ivar offset ADControlSchemeViewController._controlsText (+0x1c0)
  10005341c  mov     x0, x2
  100053420  bl      _objc_retain
  100053424  ldr     x8, [x19, x20]                           ; x8 = self->_controlsText
  100053428  str     x0, [x19, x20]                           ; self->_controlsText = arg1
  10005342c  mov     x0, x8
  100053430  ldp     x29, x30, [sp, #0x10]
  100053434  ldp     x20, x19, [sp], #0x20
  100053438  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController announcerLabel]
; address 0x10005343c  size 16  kind objc
; ======================================================================
  10005343c  adrp    x8, #0x10041f000
  100053440  ldrsw   x8, [x8, #0xaa4]                         ; ivar offset ADControlSchemeViewController._announcerLabel (+0x1c8)
  100053444  ldr     x0, [x0, x8]                             ; x0 = self->_announcerLabel
  100053448  ret

; ======================================================================
; -[ADControlSchemeViewController setAnnouncerLabel:]
; address 0x10005344c  size 56  kind objc
; ======================================================================
  10005344c  stp     x20, x19, [sp, #-0x20]!
  100053450  stp     x29, x30, [sp, #0x10]
  100053454  add     x29, sp, #0x10
  100053458  mov     x19, x0
  10005345c  adrp    x8, #0x10041f000
  100053460  ldrsw   x20, [x8, #0xaa4]                        ; ivar offset ADControlSchemeViewController._announcerLabel (+0x1c8)
  100053464  mov     x0, x2
  100053468  bl      _objc_retain
  10005346c  ldr     x8, [x19, x20]                           ; x8 = self->_announcerLabel
  100053470  str     x0, [x19, x20]                           ; self->_announcerLabel = arg1
  100053474  mov     x0, x8
  100053478  ldp     x29, x30, [sp, #0x10]
  10005347c  ldp     x20, x19, [sp], #0x20
  100053480  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController volumeText]
; address 0x100053484  size 16  kind objc
; ======================================================================
  100053484  adrp    x8, #0x10041f000
  100053488  ldrsw   x8, [x8, #0xaa8]                         ; ivar offset ADControlSchemeViewController._volumeText (+0x1d0)
  10005348c  ldr     x0, [x0, x8]                             ; x0 = self->_volumeText
  100053490  ret

; ======================================================================
; -[ADControlSchemeViewController setVolumeText:]
; address 0x100053494  size 56  kind objc
; ======================================================================
  100053494  stp     x20, x19, [sp, #-0x20]!
  100053498  stp     x29, x30, [sp, #0x10]
  10005349c  add     x29, sp, #0x10
  1000534a0  mov     x19, x0
  1000534a4  adrp    x8, #0x10041f000
  1000534a8  ldrsw   x20, [x8, #0xaa8]                        ; ivar offset ADControlSchemeViewController._volumeText (+0x1d0)
  1000534ac  mov     x0, x2
  1000534b0  bl      _objc_retain
  1000534b4  ldr     x8, [x19, x20]                           ; x8 = self->_volumeText
  1000534b8  str     x0, [x19, x20]                           ; self->_volumeText = arg1
  1000534bc  mov     x0, x8
  1000534c0  ldp     x29, x30, [sp, #0x10]
  1000534c4  ldp     x20, x19, [sp], #0x20
  1000534c8  b       _objc_release

; ======================================================================
; -[ADControlSchemeViewController .cxx_destruct]
; address 0x1000534cc  size 404  kind objc
; ======================================================================
  1000534cc  stp     x20, x19, [sp, #-0x20]!
  1000534d0  stp     x29, x30, [sp, #0x10]
  1000534d4  add     x29, sp, #0x10
  1000534d8  mov     x19, x0
  1000534dc  adrp    x8, #0x10041f000
  1000534e0  ldrsw   x8, [x8, #0xaa8]                         ; ivar offset ADControlSchemeViewController._volumeText (+0x1d0)
  1000534e4  add     x0, x19, x8
  1000534e8  mov     x1, #0
  1000534ec  bl      _objc_storeStrong
  1000534f0  adrp    x8, #0x10041f000
  1000534f4  ldrsw   x8, [x8, #0xaa4]                         ; ivar offset ADControlSchemeViewController._announcerLabel (+0x1c8)
  1000534f8  add     x0, x19, x8
  1000534fc  mov     x1, #0
  100053500  bl      _objc_storeStrong
  100053504  adrp    x8, #0x10041f000
  100053508  ldrsw   x8, [x8, #0xaa0]                         ; ivar offset ADControlSchemeViewController._controlsText (+0x1c0)
  10005350c  add     x0, x19, x8
  100053510  mov     x1, #0
  100053514  bl      _objc_storeStrong
  100053518  adrp    x8, #0x10041f000
  10005351c  ldrsw   x8, [x8, #0xa9c]                         ; ivar offset ADControlSchemeViewController._aimingText (+0x1b8)
  100053520  add     x0, x19, x8
  100053524  mov     x1, #0
  100053528  bl      _objc_storeStrong
  10005352c  adrp    x8, #0x10041f000
  100053530  ldrsw   x8, [x8, #0xa98]                         ; ivar offset ADControlSchemeViewController._contentView (+0x1b0)
  100053534  add     x0, x19, x8
  100053538  mov     x1, #0
  10005353c  bl      _objc_storeStrong
  100053540  adrp    x8, #0x10041f000
  100053544  ldrsw   x8, [x8, #0xa94]                         ; ivar offset ADControlSchemeViewController._contentScrollView (+0x1a8)
  100053548  add     x0, x19, x8
  10005354c  mov     x1, #0
  100053550  bl      _objc_storeStrong
  100053554  adrp    x8, #0x10041f000
  100053558  ldrsw   x8, [x8, #0xa90]                         ; ivar offset ADControlSchemeViewController._volumeSlider (+0x1a0)
  10005355c  add     x0, x19, x8
  100053560  mov     x1, #0
  100053564  bl      _objc_storeStrong
  100053568  adrp    x8, #0x10041f000
  10005356c  ldrsw   x8, [x8, #0xa8c]                         ; ivar offset ADControlSchemeViewController._gestureButton (+0x198)
  100053570  add     x0, x19, x8
  100053574  mov     x1, #0
  100053578  bl      _objc_storeStrong
  10005357c  adrp    x8, #0x10041f000
  100053580  ldrsw   x8, [x8, #0xa88]                         ; ivar offset ADControlSchemeViewController._buttonsButton (+0x190)
  100053584  add     x0, x19, x8
  100053588  mov     x1, #0
  10005358c  bl      _objc_storeStrong
  100053590  adrp    x8, #0x10041f000
  100053594  ldrsw   x8, [x8, #0xa84]                         ; ivar offset ADControlSchemeViewController._soundButton (+0x188)
  100053598  add     x0, x19, x8
  10005359c  mov     x1, #0
  1000535a0  bl      _objc_storeStrong
  1000535a4  adrp    x8, #0x10041f000
  1000535a8  ldrsw   x8, [x8, #0xa80]                         ; ivar offset ADControlSchemeViewController._controlsButton (+0x180)
  1000535ac  add     x0, x19, x8
  1000535b0  mov     x1, #0
  1000535b4  bl      _objc_storeStrong
  1000535b8  adrp    x8, #0x10041f000
  1000535bc  ldrsw   x8, [x8, #0xa7c]                         ; ivar offset ADControlSchemeViewController._aimingButton (+0x178)
  1000535c0  add     x0, x19, x8
  1000535c4  mov     x1, #0
  1000535c8  bl      _objc_storeStrong
  1000535cc  adrp    x8, #0x10041f000
  1000535d0  ldrsw   x8, [x8, #0xa78]                         ; ivar offset ADControlSchemeViewController._sensitivitySliderBack (+0x170)
  1000535d4  add     x0, x19, x8
  1000535d8  mov     x1, #0
  1000535dc  bl      _objc_storeStrong
  1000535e0  adrp    x8, #0x10041f000
  1000535e4  ldrsw   x8, [x8, #0xa74]                         ; ivar offset ADControlSchemeViewController._sensivitySlider (+0x168)
  1000535e8  add     x0, x19, x8
  1000535ec  mov     x1, #0
  1000535f0  bl      _objc_storeStrong
  1000535f4  adrp    x8, #0x10041f000
  1000535f8  ldrsw   x8, [x8, #0xa70]                         ; ivar offset ADControlSchemeViewController._sensivityLabel (+0x160)
  1000535fc  add     x0, x19, x8
  100053600  mov     x1, #0
  100053604  bl      _objc_storeStrong
  100053608  adrp    x8, #0x10041f000
  10005360c  ldrsw   x8, [x8, #0xa6c]                         ; ivar offset ADControlSchemeViewController._tiltButton (+0x158)
  100053610  add     x0, x19, x8
  100053614  mov     x1, #0
  100053618  bl      _objc_storeStrong
  10005361c  adrp    x8, #0x10041f000
  100053620  ldrsw   x8, [x8, #0xa68]                         ; ivar offset ADControlSchemeViewController._swipeButton (+0x150)
  100053624  add     x0, x19, x8
  100053628  mov     x1, #0
  10005362c  bl      _objc_storeStrong
  100053630  adrp    x8, #0x10041f000
  100053634  ldrsw   x8, [x8, #0xa64]                         ; ivar offset ADControlSchemeViewController._gyroButton (+0x148)
  100053638  add     x0, x19, x8
  10005363c  mov     x1, #0
  100053640  bl      _objc_storeStrong
  100053644  mov     x1, #0
  100053648  adrp    x8, #0x10041f000
  10005364c  ldrsw   x8, [x8, #0xa60]                         ; ivar offset ADControlSchemeViewController._announcerSwitch (+0x140)
  100053650  add     x0, x19, x8
  100053654  ldp     x29, x30, [sp, #0x10]
  100053658  ldp     x20, x19, [sp], #0x20
  10005365c  b       _objc_storeStrong
