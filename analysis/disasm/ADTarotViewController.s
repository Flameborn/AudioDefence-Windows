// unit ADTarotViewController — 30 functions
//   0x10003461c    2152  -[ADTarotViewController viewDidLoad]
//   0x100034e84     484  -[ADTarotViewController viewDidLoad]_block_invoke
//   0x100035068     100  -[ADTarotViewController viewDidLoad]_block_invoke_block_invoke
//   0x1000350cc     232  -[ADTarotViewController viewDidLoad]_block_invoke_block_invoke_2
//   0x1000351b4       8  sub_1000351b4
//   0x1000351bc       8  sub_1000351bc
//   0x1000351c4     400  -[ADTarotViewController loadView]
//   0x100035354      60  -[ADTarotViewController viewDidAppear:]
//   0x100035390    1552  -[ADTarotViewController loadCardWithNumber:]
//   0x1000359a0     152  -[ADTarotViewController loadCardWithNumber:]_block_invoke
//   0x100035a38       8  sub_100035a38
//   0x100035a40       8  sub_100035a40
//   0x100035a48      20  -[ADTarotViewController rerollCardWithNumber:]
//   0x100035a5c     840  -[ADTarotViewController applyAllModifiers]
//   0x100035da4     636  -[ADTarotViewController applyModifier:]
//   0x100036020     408  -[ADTarotViewController playButtonPressed:]
//   0x1000361b8     104  -[ADTarotViewController showMissionsOverlay:]
//   0x100036220     712  -[ADTarotViewController recordCardReloadWithNumber:]
//   0x1000364e8     176  -[ADTarotViewController backButtonPressed]
//   0x100036598     156  -[ADTarotViewController dealloc]
//   0x100036634      40  -[ADTarotViewController accessibilityPerformMagicTap]
//   0x10003665c      16  -[ADTarotViewController playButton]
//   0x10003666c      56  -[ADTarotViewController setPlayButton:]
//   0x1000366a4      16  -[ADTarotViewController missionButton]
//   0x1000366b4      56  -[ADTarotViewController setMissionButton:]
//   0x1000366ec      16  -[ADTarotViewController infoText]
//   0x1000366fc      56  -[ADTarotViewController setInfoText:]
//   0x100036734      16  -[ADTarotViewController cardContainer]
//   0x100036744      56  -[ADTarotViewController setCardContainer:]
//   0x10003677c     144  -[ADTarotViewController .cxx_destruct]

; ======================================================================
; -[ADTarotViewController viewDidLoad]
; address 0x10003461c  size 2152  kind objc
; ======================================================================
  10003461c  stp     x26, x25, [sp, #-0x50]!
  100034620  stp     x24, x23, [sp, #0x10]
  100034624  stp     x22, x21, [sp, #0x20]
  100034628  stp     x20, x19, [sp, #0x30]
  10003462c  stp     x29, x30, [sp, #0x40]
  100034630  add     x29, sp, #0x40
  100034634  sub     sp, sp, #0x40
  100034638  mov     x19, x0
  10003463c  str     x19, [sp, #0x30]
  100034640  adrp    x8, #0x10041e000
  100034644  ldr     x8, [x8, #0xc90]
  100034648  str     x8, [sp, #0x38]
  10003464c  adrp    x8, #0x100416000
  100034650  nop
  100034654  ldr     x1, [x8, #0xb48]
  100034658  add     x0, sp, #0x30
  10003465c  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  100034660  adrp    x8, #0x100418000
  100034664  nop
  100034668  ldr     x1, [x8, #0x388]
  10003466c  mov     x0, x19
  100034670  bl      _objc_msgSend                            ; [self loadMissionOverlay]
  100034674  adrp    x8, #0x100417000
  100034678  nop
  10003467c  ldr     x20, [x8, #0x2a8]
  100034680  mov     x0, x19
  100034684  mov     x1, x20
  100034688  bl      _objc_msgSend                            ; [self statusBarViewController]
  10003468c  mov     x29, x29
  100034690  bl      _objc_retainAutoreleasedReturnValue
  100034694  mov     x21, x0
  100034698  adrp    x8, #0x100417000
  10003469c  nop
  1000346a0  ldr     x1, [x8, #0x2b0]
  1000346a4  mov     w2, #1
  1000346a8  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  1000346ac  mov     x0, x21
  1000346b0  bl      _objc_release
  1000346b4  mov     x0, x19
  1000346b8  mov     x1, x20
  1000346bc  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000346c0  mov     x29, x29
  1000346c4  bl      _objc_retainAutoreleasedReturnValue
  1000346c8  mov     x22, x0
  1000346cc  adrp    x8, #0x100417000
  1000346d0  nop
  1000346d4  ldr     x1, [x8, #0x1b0]
  1000346d8  bl      _objc_msgSend                            ; [[self statusBarViewController] armoryButton]
  1000346dc  mov     x29, x29
  1000346e0  bl      _objc_retainAutoreleasedReturnValue
  1000346e4  mov     x23, x0
  1000346e8  adrp    x8, #0x100417000
  1000346ec  nop
  1000346f0  ldr     x21, [x8, #0x828]
  1000346f4  movi    v0.16b, #0
  1000346f8  mov     x1, x21
  1000346fc  bl      _objc_msgSend                            ; [[[self statusBarViewController] armoryButton] setAlpha:0]
  100034700  mov     x0, x23
  100034704  bl      _objc_release
  100034708  mov     x0, x22
  10003470c  bl      _objc_release
  100034710  mov     x0, x19
  100034714  mov     x1, x20
  100034718  bl      _objc_msgSend                            ; [self statusBarViewController]
  10003471c  mov     x29, x29
  100034720  bl      _objc_retainAutoreleasedReturnValue
  100034724  mov     x22, x0
  100034728  adrp    x8, #0x100417000
  10003472c  nop
  100034730  ldr     x1, [x8, #0x2b8]
  100034734  mov     w2, #1
  100034738  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:1]
  10003473c  mov     x0, x22
  100034740  bl      _objc_release
  100034744  mov     x0, x19
  100034748  mov     x1, x20
  10003474c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100034750  mov     x29, x29
  100034754  bl      _objc_retainAutoreleasedReturnValue
  100034758  mov     x22, x0
  10003475c  adrp    x8, #0x100417000
  100034760  nop
  100034764  ldr     x1, [x8, #0x2c0]
  100034768  mov     w2, #1
  10003476c  bl      _objc_msgSend                            ; [[self statusBarViewController] setDiamonsdsVisibility:1]
  100034770  mov     x0, x22
  100034774  bl      _objc_release
  100034778  mov     x0, x19
  10003477c  mov     x1, x20
  100034780  bl      _objc_msgSend                            ; [self statusBarViewController]
  100034784  mov     x29, x29
  100034788  bl      _objc_retainAutoreleasedReturnValue
  10003478c  mov     x22, x0
  100034790  adrp    x8, #0x100418000
  100034794  nop
  100034798  ldr     x1, [x8, #0x390]
  10003479c  mov     w2, #0
  1000347a0  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryLoadoutEnabled:0]
  1000347a4  mov     x0, x22
  1000347a8  bl      _objc_release
  1000347ac  mov     x0, x19
  1000347b0  mov     x1, x20
  1000347b4  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000347b8  mov     x29, x29
  1000347bc  bl      _objc_retainAutoreleasedReturnValue
  1000347c0  mov     x22, x0
  1000347c4  adrp    x8, #0x100417000
  1000347c8  nop
  1000347cc  ldr     x1, [x8, #0x7d8]
  1000347d0  mov     x2, x19
  1000347d4  bl      _objc_msgSend                            ; [[self statusBarViewController] setDelegate:self]
  1000347d8  mov     x0, x22
  1000347dc  bl      _objc_release
  1000347e0  mov     x0, x19
  1000347e4  mov     x1, x20
  1000347e8  bl      _objc_msgSend                            ; [self statusBarViewController]
  1000347ec  mov     x29, x29
  1000347f0  bl      _objc_retainAutoreleasedReturnValue
  1000347f4  mov     x22, x0
  1000347f8  adrp    x8, #0x100417000
  1000347fc  nop
  100034800  ldr     x1, [x8, #0x2c8]
  100034804  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100034808  mov     x29, x29
  10003480c  bl      _objc_retainAutoreleasedReturnValue
  100034810  mov     x24, x0
  100034814  adrp    x8, #0x100416000
  100034818  nop
  10003481c  ldr     x23, [x8, #0xb68]
  100034820  adrp    x2, #0x1003bc000
  100034824  add     x2, x2, #0x270                           ; @"Dr Bastard's Tarot"
  100034828  mov     x1, x23
  10003482c  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"Dr Bastard's Tarot"]
  100034830  mov     x0, x24
  100034834  bl      _objc_release
  100034838  mov     x0, x22
  10003483c  bl      _objc_release
  100034840  adrp    x8, #0x10041d000
  100034844  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100034848  adrp    x8, #0x100417000
  10003484c  nop
  100034850  ldr     x1, [x8, #0x4f0]
  100034854  bl      _objc_msgSend                            ; [S3DEngine engine]
  100034858  mov     x29, x29
  10003485c  bl      _objc_retainAutoreleasedReturnValue
  100034860  mov     x22, x0
  100034864  adrp    x8, #0x100417000
  100034868  nop
  10003486c  ldr     x1, [x8, #0x4f8]
  100034870  adrp    x2, #0x1003bc000
  100034874  add     x2, x2, #0x290                           ; @"tarot"
  100034878  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tarot"]
  10003487c  mov     x29, x29
  100034880  bl      _objc_retainAutoreleasedReturnValue
  100034884  adrp    x8, #0x10041f000
  100034888  ldrsw   x24, [x8, #0x834]                        ; ivar offset ADTarotViewController.tarotPlaylist (+0x148)
  10003488c  ldr     x8, [x19, x24]                           ; x8 = self->tarotPlaylist
  100034890  str     x0, [x19, x24]                           ; self->tarotPlaylist = [[S3DEngine engine] playListWithName:@"tarot"]
  100034894  mov     x0, x8
  100034898  bl      _objc_release
  10003489c  mov     x0, x22
  1000348a0  bl      _objc_release
  1000348a4  ldr     x0, [x19, x24]                           ; x0 = self->tarotPlaylist
  1000348a8  adrp    x8, #0x100417000
  1000348ac  nop
  1000348b0  ldr     x1, [x8, #0x508]
  1000348b4  bl      _objc_msgSend                            ; [self->tarotPlaylist activate]
  1000348b8  adrp    x8, #0x10041d000
  1000348bc  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000348c0  adrp    x8, #0x100416000
  1000348c4  nop
  1000348c8  ldr     x1, [x8, #0xd98]
  1000348cc  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000348d0  mov     x29, x29
  1000348d4  bl      _objc_retainAutoreleasedReturnValue
  1000348d8  mov     x22, x0
  1000348dc  adrp    x8, #0x100417000
  1000348e0  nop
  1000348e4  ldr     x1, [x8, #0x40]
  1000348e8  adrp    x2, #0x1003bc000
  1000348ec  add     x2, x2, #0x2b0                           ; @"tarotCard1"
  1000348f0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:@"tarotCard1"]
  1000348f4  mov     x29, x29
  1000348f8  bl      _objc_retainAutoreleasedReturnValue
  1000348fc  mov     x25, x0
  100034900  bl      _objc_release
  100034904  mov     x0, x22
  100034908  bl      _objc_release
  10003490c  adrp    x8, #0x100418000
  100034910  nop
  100034914  ldr     x22, [x8, #0x398]
  100034918  mov     x0, x19
  10003491c  mov     x1, x22
  100034920  bl      _objc_msgSend                            ; [self infoText]
  100034924  mov     x29, x29
  100034928  bl      _objc_retainAutoreleasedReturnValue
  10003492c  mov     x24, x0
  100034930  adrp    x8, #0x10041d000
  100034934  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100034938  adrp    x8, #0x100416000
  10003493c  add     x8, x8, #0xb58                           ; &@selector(mainBundle)
  100034940  ldr     x1, [x8]
  100034944  cbz     x25, loc_1000349a0                       ; if ([[NSUserDefaults standardUserDefaults] objectForKey:@"tarotCard1"] == 0)
  100034948  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10003494c  mov     x29, x29
  100034950  bl      _objc_retainAutoreleasedReturnValue
  100034954  mov     x25, x0
  100034958  adrp    x8, #0x100416000
  10003495c  nop
  100034960  ldr     x1, [x8, #0xb60]
  100034964  mov     x4, #0
  100034968  adrp    x2, #0x1003bc000
  10003496c  add     x2, x2, #0x2d0                           ; @"TAROT_NO_RELOAD"
  100034970  adrp    x3, #0x1003b9000
  100034974  add     x3, x3, #0x870                           ; @""
  100034978  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TAROT_NO_RELOAD" value:@"" table:0]
  10003497c  mov     x29, x29
  100034980  bl      _objc_retainAutoreleasedReturnValue
  100034984  mov     x26, x0
  100034988  mov     x0, x24
  10003498c  mov     x1, x23
  100034990  mov     x2, x26
  100034994  bl      _objc_msgSend                            ; [[self infoText] setText:[[NSBundle mainBundle] localizedStringForKey:@"TAROT_NO_RELOAD" value:@"" table:0]]
  100034998  b       loc_1000349f0
  10003499c  b       loc_100034e60
loc_1000349a0:
  1000349a0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000349a4  mov     x29, x29
  1000349a8  bl      _objc_retainAutoreleasedReturnValue
  1000349ac  mov     x25, x0
  1000349b0  adrp    x8, #0x100416000
  1000349b4  nop
  1000349b8  ldr     x1, [x8, #0xb60]
  1000349bc  mov     x4, #0
  1000349c0  adrp    x2, #0x1003bc000
  1000349c4  add     x2, x2, #0x2f0                           ; @"TAROT_INFO"
  1000349c8  adrp    x3, #0x1003b9000
  1000349cc  add     x3, x3, #0x870                           ; @""
  1000349d0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TAROT_INFO" value:@"" table:0]
  1000349d4  mov     x29, x29
  1000349d8  bl      _objc_retainAutoreleasedReturnValue
  1000349dc  mov     x26, x0
  1000349e0  mov     x0, x24
  1000349e4  mov     x1, x23
  1000349e8  mov     x2, x26
  1000349ec  bl      _objc_msgSend                            ; [[self infoText] setText:[[NSBundle mainBundle] localizedStringForKey:@"TAROT_INFO" value:@"" table:0]]
loc_1000349f0:
  1000349f0  mov     x0, x26
  1000349f4  bl      _objc_release
  1000349f8  mov     x0, x25
  1000349fc  bl      _objc_release
  100034a00  mov     x0, x24
  100034a04  bl      _objc_release
  100034a08  mov     x0, x19
  100034a0c  mov     x1, x22
  100034a10  bl      _objc_msgSend                            ; [self infoText]
  100034a14  mov     x29, x29
  100034a18  bl      _objc_retainAutoreleasedReturnValue
  100034a1c  mov     x23, x0
  100034a20  adrp    x8, #0x10041d000
  100034a24  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100034a28  adrp    x8, #0x100417000
  100034a2c  nop
  100034a30  ldr     x1, [x8, #0x328]
  100034a34  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100034a38  mov     x29, x29
  100034a3c  bl      _objc_retainAutoreleasedReturnValue
  100034a40  mov     x24, x0
  100034a44  adrp    x8, #0x100417000
  100034a48  nop
  100034a4c  ldr     x1, [x8, #0x330]
  100034a50  mov     x0, x23
  100034a54  mov     x2, x24
  100034a58  bl      _objc_msgSend                            ; [[self infoText] setTextColor:[UIColor whiteColor]]
  100034a5c  mov     x0, x24
  100034a60  bl      _objc_release
  100034a64  mov     x0, x23
  100034a68  bl      _objc_release
  100034a6c  mov     x0, x19
  100034a70  mov     x1, x22
  100034a74  bl      _objc_msgSend                            ; [self infoText]
  100034a78  mov     x29, x29
  100034a7c  bl      _objc_retainAutoreleasedReturnValue
  100034a80  mov     x23, x0
  100034a84  adrp    x8, #0x10041d000
  100034a88  ldr     x25, [x8, #0xf08]                        ; class UIFont
  100034a8c  nop
  100034a90  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100034a94  adrp    x8, #0x100416000
  100034a98  nop
  100034a9c  ldr     x1, [x8, #0xc00]
  100034aa0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100034aa4  mov     x29, x29
  100034aa8  bl      _objc_retainAutoreleasedReturnValue
  100034aac  mov     x24, x0
  100034ab0  adrp    x8, #0x100416000
  100034ab4  nop
  100034ab8  ldr     x1, [x8, #0xd18]
  100034abc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100034ac0  cmp     w0, #0
  100034ac4  fmov    d0, #17.00000000
  100034ac8  fmov    d1, #12.00000000
  100034acc  fcsel   d0, d1, d0, ne
  100034ad0  adrp    x8, #0x100416000
  100034ad4  nop
  100034ad8  ldr     x1, [x8, #0xd20]
  100034adc  adrp    x2, #0x1003bc000
  100034ae0  add     x2, x2, #0x310                           ; @"chainprinter"
  100034ae4  mov     x0, x25
  100034ae8  bl      _objc_msgSend                            ; [UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 17)]
  100034aec  mov     x29, x29
  100034af0  bl      _objc_retainAutoreleasedReturnValue
  100034af4  mov     x25, x0
  100034af8  adrp    x8, #0x100416000
  100034afc  nop
  100034b00  ldr     x1, [x8, #0xd28]
  100034b04  mov     x0, x23
  100034b08  mov     x2, x25
  100034b0c  bl      _objc_msgSend                            ; [[self infoText] setFont:[UIFont fontWithName:@"chainprinter" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 17)]]
  100034b10  mov     x0, x25
  100034b14  bl      _objc_release
  100034b18  mov     x0, x24
  100034b1c  bl      _objc_release
  100034b20  mov     x0, x23
  100034b24  bl      _objc_release
  100034b28  mov     x0, x19
  100034b2c  mov     x1, x22
  100034b30  bl      _objc_msgSend                            ; [self infoText]
  100034b34  mov     x29, x29
  100034b38  bl      _objc_retainAutoreleasedReturnValue
  100034b3c  mov     x22, x0
  100034b40  adrp    x8, #0x100418000
  100034b44  nop
  100034b48  ldr     x1, [x8, #0x230]
  100034b4c  mov     w2, #1
  100034b50  bl      _objc_msgSend                            ; [[self infoText] setTextAlignment:1]
  100034b54  mov     x0, x22
  100034b58  bl      _objc_release
  100034b5c  adrp    x8, #0x10041d000
  100034b60  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100034b64  adrp    x8, #0x100416000
  100034b68  nop
  100034b6c  ldr     x1, [x8, #0xac8]
  100034b70  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100034b74  adrp    x8, #0x100416000
  100034b78  nop
  100034b7c  ldr     x1, [x8, #0xab8]
  100034b80  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100034b84  adrp    x8, #0x10041f000
  100034b88  ldrsw   x9, [x8, #0x838]                         ; ivar offset ADTarotViewController.tarotCards (+0x140)
  100034b8c  ldr     x8, [x19, x9]                            ; x8 = self->tarotCards
  100034b90  str     x0, [x19, x9]                            ; self->tarotCards = [[NSMutableArray alloc] init]
  100034b94  mov     x0, x8
  100034b98  bl      _objc_release
  100034b9c  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  100034ba0  mov     x24, x0
  100034ba4  adrp    x8, #0x100418000
  100034ba8  nop
  100034bac  ldr     x22, [x8, #0x3a0]
  100034bb0  mov     x0, x19
  100034bb4  mov     x1, x22
  100034bb8  bl      _objc_msgSend                            ; [self playButton]
  100034bbc  mov     x29, x29
  100034bc0  bl      _objc_retainAutoreleasedReturnValue
  100034bc4  mov     x23, x0
  100034bc8  cbz     w24, loc_100034c80                       ; if (UIAccessibilityIsVoiceOverRunning() == 0)
  100034bcc  fmov    d0, #1.00000000
  100034bd0  mov     x0, x23
  100034bd4  mov     x1, x21
  100034bd8  bl      _objc_msgSend                            ; [[self playButton] setAlpha:1]
  100034bdc  mov     x0, x23
  100034be0  bl      _objc_release
  100034be4  adrp    x8, #0x100417000
  100034be8  nop
  100034bec  ldr     x23, [x8, #0x830]
  100034bf0  mov     x0, x19
  100034bf4  mov     x1, x23
  100034bf8  bl      _objc_msgSend                            ; [self missionButton]
  100034bfc  mov     x29, x29
  100034c00  bl      _objc_retainAutoreleasedReturnValue
  100034c04  mov     x24, x0
  100034c08  fmov    d0, #1.00000000
  100034c0c  mov     x1, x21
  100034c10  bl      _objc_msgSend                            ; [[self missionButton] setAlpha:1]
  100034c14  mov     x0, x24
  100034c18  bl      _objc_release
  100034c1c  mov     x0, x19
  100034c20  mov     x1, x22
  100034c24  bl      _objc_msgSend                            ; [self playButton]
  100034c28  mov     x29, x29
  100034c2c  bl      _objc_retainAutoreleasedReturnValue
  100034c30  mov     x22, x0
  100034c34  adrp    x8, #0x100417000
  100034c38  nop
  100034c3c  ldr     x21, [x8, #0x998]
  100034c40  mov     w2, #1
  100034c44  mov     x1, x21
  100034c48  bl      _objc_msgSend                            ; [[self playButton] setUserInteractionEnabled:1]
  100034c4c  mov     x0, x22
  100034c50  bl      _objc_release
  100034c54  mov     x0, x19
  100034c58  mov     x1, x23
  100034c5c  bl      _objc_msgSend                            ; [self missionButton]
  100034c60  mov     x29, x29
  100034c64  bl      _objc_retainAutoreleasedReturnValue
  100034c68  mov     x22, x0
  100034c6c  mov     w2, #1
  100034c70  mov     x1, x21
  100034c74  bl      _objc_msgSend                            ; [[self missionButton] setUserInteractionEnabled:1]
  100034c78  mov     x0, x22
  100034c7c  b       loc_100034c9c
loc_100034c80:
  100034c80  adrp    x8, #0x100417000
  100034c84  nop
  100034c88  ldr     x1, [x8, #0x998]
  100034c8c  mov     w2, #0
  100034c90  mov     x0, x23
  100034c94  bl      _objc_msgSend                            ; [[self playButton] setUserInteractionEnabled:0]
  100034c98  mov     x0, x23
loc_100034c9c:
  100034c9c  bl      _objc_release
  100034ca0  mov     x0, x19
  100034ca4  mov     x1, x20
  100034ca8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100034cac  mov     x29, x29
  100034cb0  bl      _objc_retainAutoreleasedReturnValue
  100034cb4  mov     x20, x0
  100034cb8  adrp    x8, #0x100418000
  100034cbc  nop
  100034cc0  ldr     x1, [x8, #0x3a8]
  100034cc4  bl      _objc_msgSend                            ; [[self statusBarViewController] deactivateButtons]
  100034cc8  mov     x0, x20
  100034ccc  bl      _objc_release
  100034cd0  mov     w20, #0
  100034cd4  adrp    x8, #0x10041f000
  100034cd8  ldrsw   x22, [x8, #0x83c]                        ; ivar offset ADTarotViewController.cardsToLoad (+0x154)
  100034cdc  mov     w8, #2
  100034ce0  str     w8, [x19, x22]                           ; self->cardsToLoad = 2
  100034ce4  adrp    x8, #0x100418000
  100034ce8  add     x8, x8, #0x3b0                           ; &@selector(loadCardWithNumber:)
  100034cec  ldr     x21, [x8]
loc_100034cf0:
  100034cf0  add     w20, w20, #1
  100034cf4  mov     x0, x19
  100034cf8  mov     x1, x21
  100034cfc  mov     x2, x20
  100034d00  bl      _objc_msgSend                            ; [self loadCardWithNumber:(w20 + 1)]
  100034d04  ldr     w8, [x19, x22]                           ; w8 = self->cardsToLoad
  100034d08  cmp     w20, w8
  100034d0c  b.lt    loc_100034cf0                            ; if ((w20 + 1) < self->cardsToLoad)
  100034d10  mov     w1, #-0x76e90000
  100034d14  movk    w1, #0x3700
  100034d18  mov     x0, #0
  100034d1c  bl      _dispatch_time                           ; dispatch_time(0, 0x89173700)
  100034d20  mov     x20, x0
  100034d24  adrp    x8, #0x1003b0000
  100034d28  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100034d2c  mov     w9, #-0x3e000000
  100034d30  str     x8, [sp]
  100034d34  stp     w9, wzr, [sp, #8]
  100034d38  adr     x8, #0x100034e84                         ; &-[ADTarotViewController viewDidLoad]_block_invoke
  100034d3c  nop
  100034d40  str     x8, [sp, #0x10]
  100034d44  adrp    x8, #0x1003b1000
  100034d48  add     x8, x8, #0x4d0                           ; &d_1003b14d0
  100034d4c  str     x8, [sp, #0x18]
  100034d50  mov     x0, x19
  100034d54  bl      _objc_retain
  100034d58  stp     x0, x0, [sp, #0x20]
  100034d5c  adrp    x1, #0x1003b0000
  100034d60  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  100034d64  mov     x2, sp
  100034d68  mov     x0, x20
  100034d6c  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x89173700), __dispatch_main_q, ^{-[ADTarotViewController viewDidLoad]_block_invoke captures +0x20=self, +0x28=self, +0x30=self, +0x38=ADTarotViewController})
  100034d70  ldr     x0, [sp, #0x20]
  100034d74  bl      _objc_release
  100034d78  sub     sp, x29, #0x40
  100034d7c  ldp     x29, x30, [sp, #0x40]
  100034d80  ldp     x20, x19, [sp, #0x30]
  100034d84  ldp     x22, x21, [sp, #0x20]
  100034d88  ldp     x24, x23, [sp, #0x10]
  100034d8c  ldp     x26, x25, [sp], #0x50
  100034d90  ret
  100034d94  b       loc_100034de4
  100034d98  mov     x19, x0
  100034d9c  mov     x0, x21
  100034da0  b       loc_100034e78
  100034da4  b       loc_100034e38
  100034da8  mov     x19, x0
  100034dac  mov     x0, x23
  100034db0  b       loc_100034dd0
  100034db4  b       loc_100034e38
  100034db8  b       loc_100034e38
  100034dbc  b       loc_100034e38
  100034dc0  b       loc_100034e38
  100034dc4  b       loc_100034e38
  100034dc8  mov     x19, x0
  100034dcc  mov     x0, x24
loc_100034dd0:
  100034dd0  bl      _objc_release
  100034dd4  b       loc_100034e3c
  100034dd8  b       loc_100034e38
  100034ddc  b       loc_100034e38
  100034de0  b       loc_100034e44
loc_100034de4:
  100034de4  mov     x19, x0
  100034de8  b       loc_100034dfc
  100034dec  b       loc_100034e44
  100034df0  mov     x19, x0
  100034df4  mov     x0, x25
  100034df8  bl      _objc_release
loc_100034dfc:
  100034dfc  mov     x0, x24
  100034e00  bl      _objc_release
  100034e04  b       loc_100034e48
  100034e08  b       loc_100034e38
  100034e0c  mov     x19, x0
  100034e10  mov     x0, x20
  100034e14  b       loc_100034e78
  100034e18  mov     x19, x0
  100034e1c  b       loc_100034e74
  100034e20  mov     x19, x0
  100034e24  b       loc_100034e6c
  100034e28  b       loc_100034e44
  100034e2c  mov     x19, x0
  100034e30  b       loc_100034e74
  100034e34  b       loc_100034e38
loc_100034e38:
  100034e38  mov     x19, x0
loc_100034e3c:
  100034e3c  mov     x0, x22
  100034e40  b       loc_100034e78
loc_100034e44:
  100034e44  mov     x19, x0
loc_100034e48:
  100034e48  mov     x0, x23
  100034e4c  b       loc_100034e78
  100034e50  mov     x19, x0
  100034e54  b       loc_100034e74
  100034e58  mov     x19, x0
  100034e5c  b       loc_100034e6c
loc_100034e60:
  100034e60  mov     x19, x0
  100034e64  mov     x0, x26
  100034e68  bl      _objc_release
loc_100034e6c:
  100034e6c  mov     x0, x25
  100034e70  bl      _objc_release
loc_100034e74:
  100034e74  mov     x0, x24
loc_100034e78:
  100034e78  bl      _objc_release
  100034e7c  mov     x0, x19
  100034e80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController viewDidLoad]_block_invoke
; address 0x100034e84  size 484  kind block
; ======================================================================
  100034e84  stp     x24, x23, [sp, #-0x40]!
  100034e88  stp     x22, x21, [sp, #0x10]
  100034e8c  stp     x20, x19, [sp, #0x20]
  100034e90  stp     x29, x30, [sp, #0x30]
  100034e94  add     x29, sp, #0x30
  100034e98  sub     sp, sp, #0x50
  100034e9c  mov     x19, x0
  100034ea0  ldr     x8, [x19, #0x20]                         ; x8 = captured self
  100034ea4  adrp    x9, #0x10041f000
  100034ea8  ldrsw   x9, [x9, #0x840]                         ; ivar offset ADTarotViewController.backbuttonpressed (+0x150)
  100034eac  ldrb    w8, [x8, x9]                             ; w8 = self->backbuttonpressed
  100034eb0  cbnz    w8, loc_100035028                        ; if (self->backbuttonpressed != 0)
  100034eb4  adrp    x21, #0x10041d000
  100034eb8  ldr     x0, [x21, #0xf98]                        ; class UIView
  100034ebc  adrp    x22, #0x1003b0000
  100034ec0  ldr     x22, [x22, #0x118]                       ; __NSConcreteStackBlock
  100034ec4  str     x22, [sp, #0x28]
  100034ec8  mov     w23, #-0x40000000
  100034ecc  stp     w23, wzr, [sp, #0x30]
  100034ed0  adr     x8, #0x100035068                         ; &-[ADTarotViewController viewDidLoad]_block_invoke_block_invoke
  100034ed4  nop
  100034ed8  str     x8, [sp, #0x38]
  100034edc  adrp    x8, #0x1003b1000
  100034ee0  add     x8, x8, #0x490                           ; &d_1003b1490
  100034ee4  str     x8, [sp, #0x40]
  100034ee8  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  100034eec  str     x8, [sp, #0x48]
  100034ef0  adrp    x8, #0x100418000
  100034ef4  nop
  100034ef8  ldr     x20, [x8, #0x3b8]
  100034efc  fmov    d0, #0.50000000
  100034f00  add     x2, sp, #0x28
  100034f04  mov     x1, x20
  100034f08  bl      _objc_msgSend                            ; [UIView animateWithDuration:0.5 animations:^{-[ADTarotViewController viewDidLoad]_block_invoke_block_invoke captures +0x20=self}]
  100034f0c  ldr     x0, [x21, #0xf98]                        ; class UIView
  100034f10  str     x22, [sp]
  100034f14  stp     w23, wzr, [sp, #8]
  100034f18  adr     x8, #0x1000350cc                         ; &-[ADTarotViewController viewDidLoad]_block_invoke_block_invoke_2
  100034f1c  nop
  100034f20  str     x8, [sp, #0x10]
  100034f24  adrp    x8, #0x1003b1000
  100034f28  add     x8, x8, #0x4b0                           ; &d_1003b14b0
  100034f2c  str     x8, [sp, #0x18]
  100034f30  ldr     x8, [x19, #0x28]                         ; x8 = captured self
  100034f34  str     x8, [sp, #0x20]
  100034f38  fmov    d0, #1.00000000
  100034f3c  mov     x2, sp
  100034f40  mov     x1, x20
  100034f44  bl      _objc_msgSend                            ; [UIView animateWithDuration:1 animations:^{-[ADTarotViewController viewDidLoad]_block_invoke_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc0000000, +0x38=&-[ADTarotViewController viewDidLoad]_bl…, +0x40=&d_1003b1490, +0x48=self}]
  100034f48  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100034f4c  adrp    x8, #0x100417000
  100034f50  nop
  100034f54  ldr     x20, [x8, #0x2a8]
  100034f58  mov     x1, x20
  100034f5c  bl      _objc_msgSend                            ; [self statusBarViewController]
  100034f60  mov     x29, x29
  100034f64  bl      _objc_retainAutoreleasedReturnValue
  100034f68  mov     x21, x0
  100034f6c  adrp    x8, #0x100418000
  100034f70  nop
  100034f74  ldr     x1, [x8, #0x3c0]
  100034f78  bl      _objc_msgSend                            ; [[self statusBarViewController] activateButtons]
  100034f7c  mov     x0, x21
  100034f80  bl      _objc_release
  100034f84  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100034f88  adrp    x8, #0x100418000
  100034f8c  nop
  100034f90  ldr     x1, [x8, #0x3a0]
  100034f94  bl      _objc_msgSend                            ; [self playButton]
  100034f98  mov     x29, x29
  100034f9c  bl      _objc_retainAutoreleasedReturnValue
  100034fa0  mov     x21, x0
  100034fa4  adrp    x8, #0x100417000
  100034fa8  nop
  100034fac  ldr     x1, [x8, #0x998]
  100034fb0  mov     w2, #1
  100034fb4  bl      _objc_msgSend                            ; [[self playButton] setUserInteractionEnabled:1]
  100034fb8  mov     x0, x21
  100034fbc  bl      _objc_release
  100034fc0  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100034fc4  mov     x1, x20
  100034fc8  bl      _objc_msgSend                            ; [self statusBarViewController]
  100034fcc  mov     x29, x29
  100034fd0  bl      _objc_retainAutoreleasedReturnValue
  100034fd4  mov     x21, x0
  100034fd8  adrp    x8, #0x100418000
  100034fdc  nop
  100034fe0  ldr     x1, [x8, #0x390]
  100034fe4  mov     w2, #1
  100034fe8  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryLoadoutEnabled:1]
  100034fec  mov     x0, x21
  100034ff0  bl      _objc_release
  100034ff4  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100034ff8  mov     x1, x20
  100034ffc  bl      _objc_msgSend                            ; [self statusBarViewController]
  100035000  mov     x29, x29
  100035004  bl      _objc_retainAutoreleasedReturnValue
  100035008  mov     x20, x0
  10003500c  adrp    x8, #0x100417000
  100035010  nop
  100035014  ldr     x1, [x8, #0x2b0]
  100035018  mov     w2, #1
  10003501c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  100035020  mov     x0, x20
  100035024  bl      _objc_release
loc_100035028:
  100035028  sub     sp, x29, #0x30
  10003502c  ldp     x29, x30, [sp, #0x30]
  100035030  ldp     x20, x19, [sp, #0x20]
  100035034  ldp     x22, x21, [sp, #0x10]
  100035038  ldp     x24, x23, [sp], #0x40
  10003503c  ret
  100035040  b       loc_100035048
  100035044  b       loc_100035048
loc_100035048:
  100035048  mov     x19, x0
  10003504c  mov     x0, x21
  100035050  b       loc_10003505c
  100035054  mov     x19, x0
  100035058  mov     x0, x20
loc_10003505c:
  10003505c  bl      _objc_release
  100035060  mov     x0, x19
  100035064  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController viewDidLoad]_block_invoke_block_invoke
; address 0x100035068  size 100  kind block
; ======================================================================
  100035068  stp     x20, x19, [sp, #-0x20]!
  10003506c  stp     x29, x30, [sp, #0x10]
  100035070  add     x29, sp, #0x10
  100035074  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  100035078  adrp    x8, #0x100418000
  10003507c  nop
  100035080  ldr     x1, [x8, #0x3a0]
  100035084  bl      _objc_msgSend                            ; [self playButton]
  100035088  mov     x29, x29
  10003508c  bl      _objc_retainAutoreleasedReturnValue
  100035090  mov     x19, x0
  100035094  adrp    x8, #0x100417000
  100035098  nop
  10003509c  ldr     x1, [x8, #0x828]
  1000350a0  fmov    d0, #1.00000000
  1000350a4  bl      _objc_msgSend                            ; [[self playButton] setAlpha:1]
  1000350a8  mov     x0, x19
  1000350ac  ldp     x29, x30, [sp, #0x10]
  1000350b0  ldp     x20, x19, [sp], #0x20
  1000350b4  b       _objc_release
  1000350b8  mov     x20, x0
  1000350bc  mov     x0, x19
  1000350c0  bl      _objc_release
  1000350c4  mov     x0, x20
  1000350c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController viewDidLoad]_block_invoke_block_invoke_2
; address 0x1000350cc  size 232  kind block
; ======================================================================
  1000350cc  stp     x22, x21, [sp, #-0x30]!
  1000350d0  stp     x20, x19, [sp, #0x10]
  1000350d4  stp     x29, x30, [sp, #0x20]
  1000350d8  add     x29, sp, #0x20
  1000350dc  mov     x20, x0
  1000350e0  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  1000350e4  adrp    x8, #0x100417000
  1000350e8  nop
  1000350ec  ldr     x1, [x8, #0x830]
  1000350f0  bl      _objc_msgSend                            ; [self missionButton]
  1000350f4  mov     x29, x29
  1000350f8  bl      _objc_retainAutoreleasedReturnValue
  1000350fc  mov     x21, x0
  100035100  adrp    x8, #0x100417000
  100035104  nop
  100035108  ldr     x19, [x8, #0x828]
  10003510c  fmov    d0, #1.00000000
  100035110  mov     x1, x19
  100035114  bl      _objc_msgSend                            ; [[self missionButton] setAlpha:1]
  100035118  mov     x0, x21
  10003511c  bl      _objc_release
  100035120  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  100035124  adrp    x8, #0x100417000
  100035128  nop
  10003512c  ldr     x1, [x8, #0x2a8]
  100035130  bl      _objc_msgSend                            ; [self statusBarViewController]
  100035134  mov     x29, x29
  100035138  bl      _objc_retainAutoreleasedReturnValue
  10003513c  mov     x20, x0
  100035140  adrp    x8, #0x100417000
  100035144  nop
  100035148  ldr     x1, [x8, #0x1b0]
  10003514c  bl      _objc_msgSend                            ; [[self statusBarViewController] armoryButton]
  100035150  mov     x29, x29
  100035154  bl      _objc_retainAutoreleasedReturnValue
  100035158  mov     x21, x0
  10003515c  fmov    d0, #1.00000000
  100035160  mov     x1, x19
  100035164  bl      _objc_msgSend                            ; [[[self statusBarViewController] armoryButton] setAlpha:1]
  100035168  mov     x0, x21
  10003516c  bl      _objc_release
  100035170  mov     x0, x20
  100035174  ldp     x29, x30, [sp, #0x20]
  100035178  ldp     x20, x19, [sp, #0x10]
  10003517c  ldp     x22, x21, [sp], #0x30
  100035180  b       _objc_release
  100035184  mov     x19, x0
  100035188  mov     x0, x21
  10003518c  b       loc_1000351a8
  100035190  mov     x19, x0
  100035194  b       loc_1000351a4
  100035198  mov     x19, x0
  10003519c  mov     x0, x21
  1000351a0  bl      _objc_release
loc_1000351a4:
  1000351a4  mov     x0, x20
loc_1000351a8:
  1000351a8  bl      _objc_release
  1000351ac  mov     x0, x19
  1000351b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000351b4
; address 0x1000351b4  size 8  kind sub
; ======================================================================
  1000351b4  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000351b8  b       _objc_retain

; ======================================================================
; sub_1000351bc
; address 0x1000351bc  size 8  kind sub
; ======================================================================
  1000351bc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000351c0  b       _objc_release

; ======================================================================
; -[ADTarotViewController loadView]
; address 0x1000351c4  size 400  kind objc
; ======================================================================
  1000351c4  stp     x24, x23, [sp, #-0x40]!
  1000351c8  stp     x22, x21, [sp, #0x10]
  1000351cc  stp     x20, x19, [sp, #0x20]
  1000351d0  stp     x29, x30, [sp, #0x30]
  1000351d4  add     x29, sp, #0x30
  1000351d8  sub     sp, sp, #0x40
  1000351dc  mov     x20, x0
  1000351e0  adrp    x24, #0x1003b0000
  1000351e4  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000351e8  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000351ec  str     x24, [sp, #0x38]
  1000351f0  adrp    x8, #0x1003bc000
  1000351f4  add     x8, x8, #0x330                           ; @"cardContainer"
  1000351f8  str     x8, [sp, #8]
  1000351fc  adrp    x23, #0x10041d000
  100035200  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100035204  adrp    x8, #0x100416000
  100035208  nop
  10003520c  ldr     x22, [x8, #0xec0]
  100035210  mov     w2, #1
  100035214  mov     x1, x22
  100035218  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10003521c  mov     x29, x29
  100035220  bl      _objc_retainAutoreleasedReturnValue
  100035224  mov     x19, x0
  100035228  str     x19, [sp, #0x20]
  10003522c  adrp    x8, #0x1003bc000
  100035230  add     x8, x8, #0x350                           ; @"infoText"
  100035234  str     x8, [sp, #0x10]
  100035238  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  10003523c  mov     w2, #2
  100035240  mov     x1, x22
  100035244  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100035248  bl      _objc_retain
  10003524c  mov     x21, x0
  100035250  str     x21, [sp, #0x28]
  100035254  adrp    x8, #0x1003bc000
  100035258  add     x8, x8, #0x370                           ; @"playButton"
  10003525c  str     x8, [sp, #0x18]
  100035260  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100035264  mov     w2, #3
  100035268  mov     x1, x22
  10003526c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100035270  bl      _objc_retain
  100035274  mov     x22, x0
  100035278  str     x22, [sp, #0x30]
  10003527c  adrp    x8, #0x10041d000
  100035280  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100035284  adrp    x8, #0x100416000
  100035288  nop
  10003528c  ldr     x1, [x8, #0xcd0]
  100035290  add     x2, sp, #0x20
  100035294  add     x3, sp, #8
  100035298  mov     w4, #3
  10003529c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]
  1000352a0  mov     x29, x29
  1000352a4  bl      _objc_retainAutoreleasedReturnValue
  1000352a8  mov     x23, x0
  1000352ac  mov     x0, x22
  1000352b0  bl      _objc_release
  1000352b4  mov     x0, x21
  1000352b8  bl      _objc_release
  1000352bc  mov     x0, x19
  1000352c0  bl      _objc_release
  1000352c4  adrp    x8, #0x100416000
  1000352c8  nop
  1000352cc  ldr     x1, [x8, #0xbf0]
  1000352d0  adrp    x2, #0x1003bc000
  1000352d4  add     x2, x2, #0x390                           ; @"ADTarotViewController"
  1000352d8  mov     x0, x20
  1000352dc  mov     x3, x23
  1000352e0  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADTarotViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x20] forKeys:&sp[0x8] count:3]]
  1000352e4  mov     x0, x23
  1000352e8  bl      _objc_release
  1000352ec  ldr     x8, [sp, #0x38]
  1000352f0  sub     x8, x24, x8
  1000352f4  cbnz    x8, loc_100035310                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000352f8  sub     sp, x29, #0x30
  1000352fc  ldp     x29, x30, [sp, #0x30]
  100035300  ldp     x20, x19, [sp, #0x20]
  100035304  ldp     x22, x21, [sp, #0x10]
  100035308  ldp     x24, x23, [sp], #0x40
  10003530c  ret
loc_100035310:
  100035310  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100035314  mov     x20, x0
  100035318  b       loc_100035338
  10003531c  mov     x20, x0
  100035320  b       loc_100035330
  100035324  mov     x20, x0
  100035328  mov     x0, x22
  10003532c  bl      _objc_release
loc_100035330:
  100035330  mov     x0, x21
  100035334  bl      _objc_release
loc_100035338:
  100035338  mov     x0, x19
  10003533c  b       loc_100035348
  100035340  mov     x20, x0
  100035344  mov     x0, x23
loc_100035348:
  100035348  bl      _objc_release
  10003534c  mov     x0, x20
  100035350  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController viewDidAppear:]
; address 0x100035354  size 60  kind objc
; ======================================================================
  100035354  stp     x29, x30, [sp, #-0x10]!
  100035358  mov     x29, sp
  10003535c  sub     sp, sp, #0x10
  100035360  str     x0, [sp]
  100035364  adrp    x8, #0x10041e000
  100035368  ldr     x8, [x8, #0xc90]
  10003536c  str     x8, [sp, #8]
  100035370  adrp    x8, #0x100417000
  100035374  nop
  100035378  ldr     x1, [x8, #0x938]
  10003537c  mov     x0, sp
  100035380  bl      _objc_msgSendSuper2                      ; [super viewDidAppear:arg1]
  100035384  mov     sp, x29
  100035388  ldp     x29, x30, [sp], #0x10
  10003538c  ret

; ======================================================================
; -[ADTarotViewController loadCardWithNumber:]
; address 0x100035390  size 1552  kind objc
; ======================================================================
  100035390  stp     d11, d10, [sp, #-0x80]!
  100035394  stp     d9, d8, [sp, #0x10]
  100035398  stp     x28, x27, [sp, #0x20]
  10003539c  stp     x26, x25, [sp, #0x30]
  1000353a0  stp     x24, x23, [sp, #0x40]
  1000353a4  stp     x22, x21, [sp, #0x50]
  1000353a8  stp     x20, x19, [sp, #0x60]
  1000353ac  stp     x29, x30, [sp, #0x70]
  1000353b0  add     x29, sp, #0x70
  1000353b4  sub     sp, sp, #0x40
  1000353b8  mov     x19, x2
  1000353bc  mov     x20, x0
  1000353c0  adrp    x27, #0x10041d000
  1000353c4  ldr     x0, [x27, #0xf38]                        ; class NSUserDefaults
  1000353c8  adrp    x8, #0x100416000
  1000353cc  nop
  1000353d0  ldr     x22, [x8, #0xd98]
  1000353d4  mov     x21, #0
  1000353d8  mov     x1, x22
  1000353dc  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000353e0  mov     x29, x29
  1000353e4  bl      _objc_retainAutoreleasedReturnValue
  1000353e8  mov     x21, x0
  1000353ec  adrp    x28, #0x10041d000
  1000353f0  ldr     x0, [x28, #0xf78]                        ; class NSString
  1000353f4  adrp    x8, #0x100416000
  1000353f8  nop
  1000353fc  ldr     x23, [x8, #0xee8]
  100035400  str     x19, [sp]
  100035404  adrp    x2, #0x1003bc000
  100035408  add     x2, x2, #0x3b0                           ; @"tarotCard%i"
  10003540c  mov     x1, x23
  100035410  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"tarotCard%i", arg1]
  100035414  mov     x29, x29
  100035418  bl      _objc_retainAutoreleasedReturnValue
  10003541c  mov     x25, x0
  100035420  adrp    x8, #0x100417000
  100035424  nop
  100035428  ldr     x24, [x8, #0x40]
  10003542c  mov     x0, x21
  100035430  mov     x1, x24
  100035434  mov     x2, x25
  100035438  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"tarotCard%i", arg1]]
  10003543c  mov     x29, x29
  100035440  bl      _objc_retainAutoreleasedReturnValue
  100035444  mov     x26, x0
  100035448  bl      _objc_release
  10003544c  mov     x0, x25
  100035450  bl      _objc_release
  100035454  mov     x0, x21
  100035458  bl      _objc_release
  10003545c  adrp    x8, #0x10041e000
  100035460  ldr     x0, [x8, #0x138]                         ; class ADTarotCardViewController
  100035464  adrp    x8, #0x100416000
  100035468  add     x8, x8, #0xac8                           ; &@selector(alloc)
  10003546c  ldr     x1, [x8]
  100035470  cbz     x26, loc_100035518                       ; if ([[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"tarotCard%i", arg1]] == 0)
  100035474  mov     x21, #0
  100035478  bl      _objc_msgSend                            ; [ADTarotCardViewController alloc]
  10003547c  mov     x25, x0
  100035480  ldr     x0, [x27, #0xf38]                        ; class NSUserDefaults
  100035484  mov     x21, #0
  100035488  mov     x1, x22
  10003548c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100035490  mov     x29, x29
  100035494  bl      _objc_retainAutoreleasedReturnValue
  100035498  mov     x22, x0
  10003549c  ldr     x0, [x28, #0xf78]                        ; class NSString
  1000354a0  str     x19, [sp]
  1000354a4  adrp    x2, #0x1003bc000
  1000354a8  add     x2, x2, #0x3b0                           ; @"tarotCard%i"
  1000354ac  mov     x1, x23
  1000354b0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"tarotCard%i", arg1]
  1000354b4  mov     x29, x29
  1000354b8  bl      _objc_retainAutoreleasedReturnValue
  1000354bc  mov     x23, x0
  1000354c0  mov     x0, x22
  1000354c4  mov     x1, x24
  1000354c8  mov     x2, x23
  1000354cc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"tarotCard%i", arg1]]
  1000354d0  mov     x29, x29
  1000354d4  bl      _objc_retainAutoreleasedReturnValue
  1000354d8  mov     x24, x0
  1000354dc  adrp    x8, #0x100418000
  1000354e0  nop
  1000354e4  ldr     x1, [x8, #0x3c8]
  1000354e8  mov     x0, x25
  1000354ec  mov     x2, x19
  1000354f0  mov     x3, x24
  1000354f4  bl      _objc_msgSend                            ; [[ADTarotCardViewController alloc] initWithCardLevel:arg1 modifier:[[NSUserDefaults standardUserDefaults] objectForKey:[NSString stringWithFormat:@"tarotCard%i", arg1]]]
  1000354f8  mov     x21, x0
  1000354fc  mov     x0, x24
  100035500  bl      _objc_release
  100035504  mov     x0, x23
  100035508  bl      _objc_release
  10003550c  mov     x0, x22
  100035510  bl      _objc_release
  100035514  b       loc_10003560c
loc_100035518:
  100035518  mov     x21, #0
  10003551c  bl      _objc_msgSend                            ; [ADTarotCardViewController alloc]
  100035520  adrp    x8, #0x100418000
  100035524  nop
  100035528  ldr     x1, [x8, #0x3c8]
  10003552c  mov     x21, #0
  100035530  mov     x3, #0
  100035534  mov     x2, x19
  100035538  bl      _objc_msgSend                            ; [[ADTarotCardViewController alloc] initWithCardLevel:arg1 modifier:0]
  10003553c  mov     x24, x0
  100035540  mov     x21, x24
  100035544  ldr     x0, [x27, #0xf38]                        ; class NSUserDefaults
  100035548  mov     x1, x22
  10003554c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100035550  mov     x29, x29
  100035554  bl      _objc_retainAutoreleasedReturnValue
  100035558  mov     x25, x0
  10003555c  adrp    x8, #0x100418000
  100035560  nop
  100035564  ldr     x1, [x8, #0x3d0]
  100035568  mov     x0, x24
  10003556c  bl      _objc_msgSend                            ; [[[ADTarotCardViewController alloc] initWithCardLevel:arg1 modifier:0] modifierName]
  100035570  mov     x29, x29
  100035574  bl      _objc_retainAutoreleasedReturnValue
  100035578  mov     x26, x0
  10003557c  ldr     x0, [x28, #0xf78]                        ; class NSString
  100035580  str     x19, [sp]
  100035584  adrp    x2, #0x1003bc000
  100035588  add     x2, x2, #0x3b0                           ; @"tarotCard%i"
  10003558c  mov     x1, x23
  100035590  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"tarotCard%i", arg1]
  100035594  mov     x29, x29
  100035598  bl      _objc_retainAutoreleasedReturnValue
  10003559c  mov     x23, x0
  1000355a0  adrp    x8, #0x100418000
  1000355a4  nop
  1000355a8  ldr     x1, [x8, #0x318]
  1000355ac  mov     x0, x25
  1000355b0  mov     x2, x26
  1000355b4  mov     x3, x23
  1000355b8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setValue:[[[ADTarotCardViewController alloc] initWithCardLevel:arg1 modifier:0] modifierName] forKey:[NSString stringWithFormat:@"tarotCard%i", arg1]]
  1000355bc  mov     x21, x24
  1000355c0  mov     x0, x23
  1000355c4  bl      _objc_release
  1000355c8  mov     x0, x26
  1000355cc  bl      _objc_release
  1000355d0  mov     x0, x25
  1000355d4  bl      _objc_release
  1000355d8  ldr     x0, [x27, #0xf38]                        ; class NSUserDefaults
  1000355dc  mov     x1, x22
  1000355e0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000355e4  mov     x29, x29
  1000355e8  bl      _objc_retainAutoreleasedReturnValue
  1000355ec  mov     x21, x0
  1000355f0  adrp    x8, #0x100416000
  1000355f4  nop
  1000355f8  ldr     x1, [x8, #0xdd8]
  1000355fc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100035600  mov     x0, x21
  100035604  bl      _objc_release
  100035608  mov     x21, x24
loc_10003560c:
  10003560c  adrp    x8, #0x100418000
  100035610  nop
  100035614  ldr     x1, [x8, #0x3d8]
  100035618  mov     x0, x21
  10003561c  mov     x2, x20
  100035620  bl      _objc_msgSend                            ; [x0 setTarotViewController:self]
  100035624  adrp    x8, #0x10041f000
  100035628  ldrsw   x8, [x8, #0x838]                         ; ivar offset ADTarotViewController.tarotCards (+0x140)
  10003562c  ldr     x0, [x20, x8]                            ; x0 = self->tarotCards
  100035630  adrp    x8, #0x100416000
  100035634  nop
  100035638  ldr     x1, [x8, #0xd90]
  10003563c  mov     x2, x21
  100035640  bl      _objc_msgSend                            ; [self->tarotCards addObject:x2]
  100035644  adrp    x8, #0x100418000
  100035648  nop
  10003564c  ldr     x22, [x8, #0x3e0]
  100035650  mov     x0, x20
  100035654  mov     x1, x22
  100035658  bl      _objc_msgSend                            ; [self cardContainer]
  10003565c  mov     x29, x29
  100035660  bl      _objc_retainAutoreleasedReturnValue
  100035664  mov     x24, x0
  100035668  adrp    x8, #0x100416000
  10003566c  nop
  100035670  ldr     x23, [x8, #0xf38]
  100035674  mov     x1, x23
  100035678  bl      _objc_msgSend                            ; [[self cardContainer] frame]
  10003567c  mov     v8.16b, v2.16b
  100035680  adrp    x8, #0x100416000
  100035684  nop
  100035688  ldr     x25, [x8, #0xf18]
  10003568c  mov     x0, x21
  100035690  mov     x1, x25
  100035694  bl      _objc_msgSend                            ; [x0 view]
  100035698  mov     x29, x29
  10003569c  bl      _objc_retainAutoreleasedReturnValue
  1000356a0  mov     x26, x0
  1000356a4  mov     x1, x23
  1000356a8  bl      _objc_msgSend                            ; [[x0 view] frame]
  1000356ac  mov     v9.16b, v2.16b
  1000356b0  adrp    x8, #0x10041f000
  1000356b4  ldrsw   x28, [x8, #0x83c]                        ; ivar offset ADTarotViewController.cardsToLoad (+0x154)
  1000356b8  ldr     w27, [x20, x28]                          ; w27 = self->cardsToLoad
  1000356bc  mov     x0, x26
  1000356c0  bl      _objc_release
  1000356c4  mov     x0, x24
  1000356c8  bl      _objc_release
  1000356cc  ldr     w28, [x20, x28]                          ; w28 = self->cardsToLoad
  1000356d0  mov     x0, x20
  1000356d4  mov     x1, x22
  1000356d8  bl      _objc_msgSend                            ; [self cardContainer]
  1000356dc  mov     x29, x29
  1000356e0  bl      _objc_retainAutoreleasedReturnValue
  1000356e4  mov     x24, x0
  1000356e8  mov     x0, x21
  1000356ec  mov     x1, x25
  1000356f0  bl      _objc_msgSend                            ; [x0 view]
  1000356f4  mov     x29, x29
  1000356f8  bl      _objc_retainAutoreleasedReturnValue
  1000356fc  mov     x26, x0
  100035700  adrp    x8, #0x100416000
  100035704  nop
  100035708  ldr     x1, [x8, #0xf20]
  10003570c  mov     x0, x24
  100035710  mov     x2, x26
  100035714  bl      _objc_msgSend                            ; [[self cardContainer] addSubview:[x0 view]]
  100035718  mov     x0, x26
  10003571c  bl      _objc_release
  100035720  mov     x0, x24
  100035724  bl      _objc_release
  100035728  mov     x0, x21
  10003572c  mov     x1, x25
  100035730  bl      _objc_msgSend                            ; [x0 view]
  100035734  mov     x29, x29
  100035738  bl      _objc_retainAutoreleasedReturnValue
  10003573c  mov     x24, x0
  100035740  mov     x0, x21
  100035744  mov     x1, x25
  100035748  bl      _objc_msgSend                            ; [x0 view]
  10003574c  mov     x29, x29
  100035750  bl      _objc_retainAutoreleasedReturnValue
  100035754  mov     x26, x0
  100035758  mov     x1, x23
  10003575c  bl      _objc_msgSend                            ; [[x0 view] frame]
  100035760  mov     v10.16b, v2.16b
  100035764  mov     x0, x21
  100035768  mov     x1, x25
  10003576c  bl      _objc_msgSend                            ; [x0 view]
  100035770  mov     x29, x29
  100035774  bl      _objc_retainAutoreleasedReturnValue
  100035778  mov     x25, x0
  10003577c  mov     x1, x23
  100035780  bl      _objc_msgSend                            ; [[x0 view] frame]
  100035784  mov     v11.16b, v2.16b
  100035788  mov     x0, x20
  10003578c  mov     x1, x22
  100035790  bl      _objc_msgSend                            ; [self cardContainer]
  100035794  mov     x29, x29
  100035798  bl      _objc_retainAutoreleasedReturnValue
  10003579c  mov     x20, x0
  1000357a0  mov     x1, x23
  1000357a4  bl      _objc_msgSend                            ; [[self cardContainer] frame]
  1000357a8  scvtf   d0, w27
  1000357ac  fmul    d0, d9, d0
  1000357b0  fsub    d0, d8, d0
  1000357b4  add     w8, w28, #1
  1000357b8  scvtf   s1, w8
  1000357bc  fcvt    s0, d0
  1000357c0  fdiv    s0, s0, s1                               ; t1 = (([[self cardContainer] frame].2 - ([[x0 view] frame].2 * (float)self->cardsToLoad)) / (float)(self->cardsToLoad + 1))
  1000357c4  fcvt    d0, s0
  1000357c8  fmov    d1, #0.50000000
  1000357cc  fmul    d2, d10, d1
  1000357d0  fadd    d2, d0, d2
  1000357d4  fadd    d0, d0, d11
  1000357d8  sub     w8, w19, #1
  1000357dc  scvtf   d4, w8
  1000357e0  fmul    d0, d4, d0
  1000357e4  fadd    d0, d2, d0
  1000357e8  fmul    d1, d3, d1
  1000357ec  fmov    d2, #-10.00000000
  1000357f0  fadd    d1, d1, d2
  1000357f4  adrp    x8, #0x100417000
  1000357f8  nop
  1000357fc  ldr     x1, [x8, #0x1f8]
  100035800  mov     x0, x24
  100035804  bl      _objc_msgSend                            ; [[x0 view] setCenter:{((t1 + ([[x0 view] frame].2 * 0.5)) + ((float)(arg1 - 1) * (t1 + [[x0 view] frame].2))), (([[self cardContainer] frame].3 * 0.5) + -10)}]
  100035808  mov     x0, x20
  10003580c  bl      _objc_release
  100035810  mov     x0, x25
  100035814  bl      _objc_release
  100035818  mov     x0, x26
  10003581c  bl      _objc_release
  100035820  mov     x0, x24
  100035824  bl      _objc_release
  100035828  adrp    x8, #0x1003b0000
  10003582c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100035830  sxtw    x20, w19
  100035834  mov     w9, #-0x3e000000
  100035838  adr     x10, #0x1000359a0                        ; &-[ADTarotViewController loadCardWithNumber:]_block_invoke
  10003583c  nop
  100035840  str     x8, [sp, #0x10]
  100035844  stp     w9, wzr, [sp, #0x18]
  100035848  adrp    x8, #0x1003b1000
  10003584c  add     x8, x8, #0x500                           ; &d_1003b1500
  100035850  stp     x10, x8, [sp, #0x20]
  100035854  str     x21, [sp, #0x30]
  100035858  str     w19, [sp, #0x38]
  10003585c  mov     x0, x21
  100035860  bl      _objc_retain
  100035864  mov     x19, x0
  100035868  adrp    x1, #0x1003b0000
  10003586c  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  100035870  add     x2, sp, #0x10
  100035874  mov     x0, x20
  100035878  bl      _dispatch_after                          ; dispatch_after(arg1, __dispatch_main_q, ^{-[ADTarotViewController loadCardWithNumber:]_block_invoke captures +0x28=arg1})
  10003587c  ldr     x0, [sp, #0x30]
  100035880  bl      _objc_release
  100035884  mov     x0, x19
  100035888  bl      _objc_release
  10003588c  sub     sp, x29, #0x70
  100035890  ldp     x29, x30, [sp, #0x70]
  100035894  ldp     x20, x19, [sp, #0x60]
  100035898  ldp     x22, x21, [sp, #0x50]
  10003589c  ldp     x24, x23, [sp, #0x40]
  1000358a0  ldp     x26, x25, [sp, #0x30]
  1000358a4  ldp     x28, x27, [sp, #0x20]
  1000358a8  ldp     d9, d8, [sp, #0x10]
  1000358ac  ldp     d11, d10, [sp], #0x80
  1000358b0  ret
  1000358b4  mov     x19, x0
  1000358b8  b       loc_10003591c
  1000358bc  mov     x19, x0
  1000358c0  b       loc_100035914
  1000358c4  b       loc_100035908
  1000358c8  mov     x19, x0
  1000358cc  b       loc_1000358dc
  1000358d0  mov     x19, x0
  1000358d4  mov     x0, x20
  1000358d8  bl      _objc_release
loc_1000358dc:
  1000358dc  mov     x0, x25
  1000358e0  bl      _objc_release
  1000358e4  b       loc_10003590c
  1000358e8  mov     x19, x0
  1000358ec  b       loc_10003591c
  1000358f0  mov     x19, x0
  1000358f4  mov     x0, x25
  1000358f8  b       loc_100035918
  1000358fc  b       loc_100035908
  100035900  mov     x19, x0
  100035904  b       loc_100035914
loc_100035908:
  100035908  mov     x19, x0
loc_10003590c:
  10003590c  mov     x0, x26
  100035910  bl      _objc_release
loc_100035914:
  100035914  mov     x0, x24
loc_100035918:
  100035918  bl      _objc_release
loc_10003591c:
  10003591c  mov     x0, x21
loc_100035920:
  100035920  bl      _objc_release
  100035924  mov     x0, x19
  100035928  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003592c  mov     x19, x0
  100035930  b       loc_100035914
  100035934  mov     x19, x0
  100035938  b       loc_100035958
  10003593c  mov     x19, x0
  100035940  b       loc_100035950
  100035944  mov     x19, x0
  100035948  mov     x0, x24
  10003594c  bl      _objc_release
loc_100035950:
  100035950  mov     x0, x23
  100035954  bl      _objc_release
loc_100035958:
  100035958  mov     x0, x22
  10003595c  b       loc_100035920
  100035960  mov     x19, x0
  100035964  b       loc_100035984
  100035968  mov     x19, x0
  10003596c  b       loc_10003597c
  100035970  mov     x19, x0
  100035974  mov     x0, x23
  100035978  bl      _objc_release
loc_10003597c:
  10003597c  mov     x0, x26
  100035980  bl      _objc_release
loc_100035984:
  100035984  mov     x0, x25
  100035988  b       loc_100035994
  10003598c  mov     x19, x0
  100035990  mov     x0, x21
loc_100035994:
  100035994  bl      _objc_release
  100035998  mov     x0, x24
  10003599c  b       loc_100035920

; ======================================================================
; -[ADTarotViewController loadCardWithNumber:]_block_invoke
; address 0x1000359a0  size 152  kind block
; ======================================================================
  1000359a0  stp     x22, x21, [sp, #-0x30]!
  1000359a4  stp     x20, x19, [sp, #0x10]
  1000359a8  stp     x29, x30, [sp, #0x20]
  1000359ac  add     x29, sp, #0x20
  1000359b0  mov     x20, x0
  1000359b4  ldr     x21, [x20, #0x20]                        ; x21 = block[+0x20]
  1000359b8  adrp    x8, #0x100418000
  1000359bc  nop
  1000359c0  ldr     x22, [x8, #0x3e8]
  1000359c4  adrp    x8, #0x10041d000
  1000359c8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000359cc  adrp    x8, #0x100417000
  1000359d0  nop
  1000359d4  ldr     x1, [x8, #0xb8]
  1000359d8  mov     w2, #0
  1000359dc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000359e0  mov     x29, x29
  1000359e4  bl      _objc_retainAutoreleasedReturnValue
  1000359e8  mov     x19, x0
  1000359ec  ldr     w8, [x20, #0x28]                         ; w8 = captured arg1
  1000359f0  scvtf   d0, w8
  1000359f4  adrp    x8, #0x100418000
  1000359f8  nop
  1000359fc  ldr     x1, [x8, #0x188]
  100035a00  mov     x0, x21
  100035a04  mov     x2, x22
  100035a08  mov     x3, x19
  100035a0c  bl      _objc_msgSend                            ; [block[+0x20] performSelector:@selector(flipCard:) withObject:[NSNumber numberWithBool:0] afterDelay:(float)arg1]
  100035a10  mov     x0, x19
  100035a14  ldp     x29, x30, [sp, #0x20]
  100035a18  ldp     x20, x19, [sp, #0x10]
  100035a1c  ldp     x22, x21, [sp], #0x30
  100035a20  b       _objc_release
  100035a24  mov     x20, x0
  100035a28  mov     x0, x19
  100035a2c  bl      _objc_release
  100035a30  mov     x0, x20
  100035a34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100035a38
; address 0x100035a38  size 8  kind sub
; ======================================================================
  100035a38  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100035a3c  b       _objc_retain

; ======================================================================
; sub_100035a40
; address 0x100035a40  size 8  kind sub
; ======================================================================
  100035a40  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100035a44  b       _objc_release

; ======================================================================
; -[ADTarotViewController rerollCardWithNumber:]
; address 0x100035a48  size 20  kind objc
; ======================================================================
  100035a48  sxtw    x2, w2
  100035a4c  adrp    x8, #0x100418000
  100035a50  nop
  100035a54  ldr     x1, [x8, #0x3f0]
  100035a58  b       _objc_msgSend                            ; [self recordCardReloadWithNumber:arg1]

; ======================================================================
; -[ADTarotViewController applyAllModifiers]
; address 0x100035a5c  size 840  kind objc
; ======================================================================
  100035a5c  stp     x28, x27, [sp, #-0x60]!
  100035a60  stp     x26, x25, [sp, #0x10]
  100035a64  stp     x24, x23, [sp, #0x20]
  100035a68  stp     x22, x21, [sp, #0x30]
  100035a6c  stp     x20, x19, [sp, #0x40]
  100035a70  stp     x29, x30, [sp, #0x50]
  100035a74  add     x29, sp, #0x50
  100035a78  sub     sp, sp, #0xf0
  100035a7c  mov     x20, x0
  100035a80  str     x20, [sp, #0x18]
  100035a84  adrp    x8, #0x1003b0000
  100035a88  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100035a8c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100035a90  stur    x8, [x29, #-0x58]
  100035a94  adrp    x8, #0x10041d000
  100035a98  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100035a9c  adrp    x8, #0x100416000
  100035aa0  nop
  100035aa4  ldr     x1, [x8, #0xac8]
  100035aa8  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100035aac  adrp    x8, #0x100416000
  100035ab0  nop
  100035ab4  ldr     x1, [x8, #0xab8]
  100035ab8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100035abc  mov     x19, x0
  100035ac0  stp     xzr, xzr, [sp, #0x58]
  100035ac4  stp     xzr, xzr, [sp, #0x48]
  100035ac8  stp     xzr, xzr, [sp, #0x38]
  100035acc  stp     xzr, xzr, [sp, #0x28]
  100035ad0  adrp    x8, #0x10041f000
  100035ad4  ldrsw   x8, [x8, #0x838]                         ; ivar offset ADTarotViewController.tarotCards (+0x140)
  100035ad8  ldr     x0, [x20, x8]                            ; x0 = self->tarotCards
  100035adc  bl      _objc_retain
  100035ae0  str     x0, [sp, #0x10]
  100035ae4  adrp    x8, #0x100416000
  100035ae8  nop
  100035aec  ldr     x1, [x8, #0xe00]
  100035af0  str     x1, [sp, #8]
  100035af4  add     x2, sp, #0x28
  100035af8  add     x3, sp, #0x68
  100035afc  mov     w4, #0x10
  100035b00  bl      _objc_msgSend                            ; [self->tarotCards countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100035b04  mov     x23, x0
  100035b08  str     x19, [sp, #0x20]
  100035b0c  cbz     x23, loc_100035c88                       ; if ([self->tarotCards countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  100035b10  ldr     x8, [sp, #0x38]
  100035b14  ldr     x19, [x8]
  100035b18  adrp    x8, #0x100418000
  100035b1c  nop
  100035b20  adrp    x9, #0x100418000
  100035b24  nop
  100035b28  ldr     x24, [x8, #0x3d0]
  100035b2c  ldr     x25, [x9, #0x3f8]
  100035b30  adrp    x8, #0x100418000
  100035b34  nop
  100035b38  adrp    x9, #0x100417000
  100035b3c  add     x9, x9, #0xb8                            ; &@selector(numberWithBool:)
  100035b40  ldr     x26, [x8, #0x400]
  100035b44  ldr     x27, [x9]
  100035b48  adrp    x8, #0x100418000
  100035b4c  add     x8, x8, #0x318                           ; &@selector(setValue:forKey:)
  100035b50  ldr     x28, [x8]
loc_100035b54:
  100035b54  mov     x21, #0
loc_100035b58:
  100035b58  ldr     x8, [sp, #0x38]
  100035b5c  ldr     x8, [x8]
  100035b60  cmp     x8, x19
  100035b64  b.eq    loc_100035b70                            ; if (x8 == x19)
  100035b68  ldr     x0, [sp, #0x10]
  100035b6c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->tarotCards)
loc_100035b70:
  100035b70  ldr     x8, [sp, #0x30]
  100035b74  ldr     x22, [x8, x21, lsl #3]
  100035b78  mov     x0, x22
  100035b7c  mov     x1, x24
  100035b80  bl      _objc_msgSend                            ; [x0 modifierName]
  100035b84  mov     x29, x29
  100035b88  bl      _objc_retainAutoreleasedReturnValue
  100035b8c  mov     x20, x0
  100035b90  ldr     x0, [sp, #0x18]
  100035b94  mov     x1, x25
  100035b98  mov     x2, x20
  100035b9c  bl      _objc_msgSend                            ; [self applyModifier:[x0 modifierName]]
  100035ba0  mov     x0, x20
  100035ba4  bl      _objc_release
  100035ba8  mov     x0, x22
  100035bac  mov     x1, x26
  100035bb0  bl      _objc_msgSend                            ; [x0 isGood]
  100035bb4  mov     x8, x0
  100035bb8  adrp    x9, #0x10041d000
  100035bbc  ldr     x0, [x9, #0xf68]                         ; class NSNumber
  100035bc0  cbz     w8, loc_100035c0c                        ; if ([x0 isGood] == 0)
  100035bc4  mov     w2, #1
  100035bc8  mov     x1, x27
  100035bcc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100035bd0  mov     x29, x29
  100035bd4  bl      _objc_retainAutoreleasedReturnValue
  100035bd8  mov     x20, x0
  100035bdc  mov     x0, x22
  100035be0  mov     x1, x24
  100035be4  bl      _objc_msgSend                            ; [x0 modifierName]
  100035be8  mov     x29, x29
  100035bec  bl      _objc_retainAutoreleasedReturnValue
  100035bf0  mov     x22, x0
  100035bf4  ldr     x0, [sp, #0x20]
  100035bf8  mov     x1, x28
  100035bfc  mov     x2, x20
  100035c00  mov     x3, x22
  100035c04  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithBool:1] forKey:[x0 modifierName]]
  100035c08  b       loc_100035c50
loc_100035c0c:
  100035c0c  mov     w2, #0
  100035c10  mov     x1, x27
  100035c14  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100035c18  mov     x29, x29
  100035c1c  bl      _objc_retainAutoreleasedReturnValue
  100035c20  mov     x20, x0
  100035c24  mov     x0, x22
  100035c28  mov     x1, x24
  100035c2c  bl      _objc_msgSend                            ; [x0 modifierName]
  100035c30  mov     x29, x29
  100035c34  bl      _objc_retainAutoreleasedReturnValue
  100035c38  mov     x22, x0
  100035c3c  ldr     x0, [sp, #0x20]
  100035c40  mov     x1, x28
  100035c44  mov     x2, x20
  100035c48  mov     x3, x22
  100035c4c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithBool:0] forKey:[x0 modifierName]]
loc_100035c50:
  100035c50  mov     x0, x22
  100035c54  bl      _objc_release
  100035c58  mov     x0, x20
  100035c5c  bl      _objc_release
  100035c60  add     x21, x21, #1
  100035c64  cmp     x21, x23
  100035c68  b.lo    loc_100035b58                            ; if ((x21 + 1) <u [self->tarotCards countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  100035c6c  add     x2, sp, #0x28
  100035c70  add     x3, sp, #0x68
  100035c74  mov     w4, #0x10
  100035c78  ldp     x1, x0, [sp, #8]
  100035c7c  bl      _objc_msgSend                            ; [self->tarotCards countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100035c80  mov     x23, x0
  100035c84  cbnz    x23, loc_100035b54                       ; if ([self->tarotCards countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_100035c88:
  100035c88  ldr     x0, [sp, #0x10]
  100035c8c  bl      _objc_release
  100035c90  adrp    x19, #0x10041e000
  100035c94  ldr     x0, [x19, #8]                            ; class ADTracker
  100035c98  adrp    x8, #0x100418000
  100035c9c  nop
  100035ca0  ldr     x1, [x8, #0x408]
  100035ca4  bl      _objc_msgSend                            ; [ADTracker initGamePlayTracker]
  100035ca8  ldr     x0, [x19, #8]                            ; class ADTracker
  100035cac  adrp    x8, #0x100416000
  100035cb0  nop
  100035cb4  ldr     x1, [x8, #0xac0]
  100035cb8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100035cbc  mov     x29, x29
  100035cc0  bl      _objc_retainAutoreleasedReturnValue
  100035cc4  mov     x20, x0
  100035cc8  adrp    x8, #0x100418000
  100035ccc  nop
  100035cd0  ldr     x1, [x8, #0x410]
  100035cd4  ldr     x19, [sp, #0x20]
  100035cd8  mov     x2, x19
  100035cdc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setModifierDimensions:[[NSMutableDictionary alloc] init]]
  100035ce0  mov     x0, x20
  100035ce4  bl      _objc_release
  100035ce8  mov     x0, x19
  100035cec  bl      _objc_release
  100035cf0  ldur    x8, [x29, #-0x58]
  100035cf4  adrp    x9, #0x1003b0000
  100035cf8  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100035cfc  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100035d00  sub     x8, x9, x8
  100035d04  cbnz    x8, loc_100035d28                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100035d08  sub     sp, x29, #0x50
  100035d0c  ldp     x29, x30, [sp, #0x50]
  100035d10  ldp     x20, x19, [sp, #0x40]
  100035d14  ldp     x22, x21, [sp, #0x30]
  100035d18  ldp     x24, x23, [sp, #0x20]
  100035d1c  ldp     x26, x25, [sp, #0x10]
  100035d20  ldp     x28, x27, [sp], #0x60
  100035d24  ret
loc_100035d28:
  100035d28  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100035d2c:
  100035d2c  mov     x21, x0
  100035d30  b       loc_100035d64
  100035d34  mov     x21, x0
  100035d38  b       loc_100035d5c
  100035d3c  mov     x21, x0
  100035d40  b       loc_100035d5c
  100035d44  b       loc_100035d50
  100035d48  mov     x21, x0
  100035d4c  b       loc_100035d5c
loc_100035d50:
  100035d50  mov     x21, x0
  100035d54  mov     x0, x22
  100035d58  bl      _objc_release
loc_100035d5c:
  100035d5c  mov     x0, x20
  100035d60  bl      _objc_release
loc_100035d64:
  100035d64  ldr     x19, [sp, #0x20]
loc_100035d68:
  100035d68  ldr     x0, [sp, #0x10]
loc_100035d6c:
  100035d6c  bl      _objc_release
loc_100035d70:
  100035d70  mov     x0, x19
  100035d74  bl      _objc_release
  100035d78  mov     x0, x21
  100035d7c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100035d80  b       loc_100035d2c
  100035d84  mov     x21, x0
  100035d88  ldr     x19, [sp, #0x20]
  100035d8c  b       loc_100035d70
  100035d90  mov     x21, x0
  100035d94  b       loc_100035d68
  100035d98  mov     x21, x0
  100035d9c  mov     x0, x20
  100035da0  b       loc_100035d6c

; ======================================================================
; -[ADTarotViewController applyModifier:]
; address 0x100035da4  size 636  kind objc
; ======================================================================
  100035da4  stp     x26, x25, [sp, #-0x50]!
  100035da8  stp     x24, x23, [sp, #0x10]
  100035dac  stp     x22, x21, [sp, #0x20]
  100035db0  stp     x20, x19, [sp, #0x30]
  100035db4  stp     x29, x30, [sp, #0x40]
  100035db8  add     x29, sp, #0x40
  100035dbc  sub     sp, sp, #0x10
  100035dc0  mov     x0, x2
  100035dc4  bl      _objc_retain
  100035dc8  mov     x19, x0
  100035dcc  adrp    x8, #0x10041d000
  100035dd0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100035dd4  adrp    x8, #0x100416000
  100035dd8  nop
  100035ddc  ldr     x1, [x8, #0xac8]
  100035de0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100035de4  adrp    x8, #0x100416000
  100035de8  nop
  100035dec  ldr     x1, [x8, #0xab8]
  100035df0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100035df4  mov     x20, x0
  100035df8  adrp    x8, #0x100418000
  100035dfc  nop
  100035e00  ldr     x1, [x8, #0x418]
  100035e04  mov     w2, #1
  100035e08  mov     x0, x19
  100035e0c  bl      _objc_msgSend                            ; [arg1 substringToIndex:1]
  100035e10  mov     x29, x29
  100035e14  bl      _objc_retainAutoreleasedReturnValue
  100035e18  mov     x22, x0
  100035e1c  adrp    x8, #0x100417000
  100035e20  nop
  100035e24  ldr     x1, [x8, #0x50]
  100035e28  bl      _objc_msgSend                            ; [[arg1 substringToIndex:1] uppercaseString]
  100035e2c  mov     x29, x29
  100035e30  bl      _objc_retainAutoreleasedReturnValue
  100035e34  mov     x23, x0
  100035e38  adrp    x8, #0x100418000
  100035e3c  nop
  100035e40  ldr     x1, [x8, #0x420]
  100035e44  mov     x2, #0
  100035e48  mov     w3, #1
  100035e4c  mov     x0, x19
  100035e50  mov     x4, x23
  100035e54  bl      _objc_msgSend                            ; [arg1 stringByReplacingCharactersInRange:0 withString:1]
  100035e58  mov     x29, x29
  100035e5c  bl      _objc_retainAutoreleasedReturnValue
  100035e60  mov     x21, x0
  100035e64  mov     x0, x23
  100035e68  bl      _objc_release
  100035e6c  mov     x0, x22
  100035e70  bl      _objc_release
  100035e74  adrp    x8, #0x10041d000
  100035e78  ldr     x0, [x8, #0xf78]                         ; class NSString
  100035e7c  adrp    x8, #0x100416000
  100035e80  nop
  100035e84  ldr     x1, [x8, #0xee8]
  100035e88  str     x21, [sp]
  100035e8c  adrp    x2, #0x1003bc000
  100035e90  add     x2, x2, #0x3d0                           ; @"set%@:"
  100035e94  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]]
  100035e98  mov     x22, x21
  100035e9c  mov     x29, x29
  100035ea0  bl      _objc_retainAutoreleasedReturnValue
  100035ea4  mov     x21, x0
  100035ea8  mov     x0, x22
  100035eac  bl      _objc_release
  100035eb0  mov     x0, x21
  100035eb4  bl      _NSSelectorFromString                    ; NSSelectorFromString([NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]])
  100035eb8  mov     x23, x0
  100035ebc  adrp    x25, #0x10041e000
  100035ec0  ldr     x0, [x25]                                ; class ADGameModifiers
  100035ec4  adrp    x8, #0x100417000
  100035ec8  nop
  100035ecc  ldr     x22, [x8, #0x510]
  100035ed0  mov     x1, x22
  100035ed4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100035ed8  mov     x29, x29
  100035edc  bl      _objc_retainAutoreleasedReturnValue
  100035ee0  mov     x24, x0
  100035ee4  adrp    x8, #0x100417000
  100035ee8  nop
  100035eec  ldr     x1, [x8, #0xe90]
  100035ef0  mov     x2, x23
  100035ef4  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] respondsToSelector:NSSelectorFromString([NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]])]
  100035ef8  mov     x23, x0
  100035efc  mov     x0, x24
  100035f00  bl      _objc_release
  100035f04  cbz     w23, loc_100035f54                       ; if ([[ADGameModifiers sharedModifiers] respondsToSelector:NSSelectorFromString([NSString stringWithFormat:@"set%@:", [arg1 stringByReplacingCharactersInRange:0 withString:1]])] == 0)
  100035f08  adrp    x8, #0x10041d000
  100035f0c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100035f10  adrp    x8, #0x100417000
  100035f14  nop
  100035f18  ldr     x1, [x8, #0xb8]
  100035f1c  mov     w2, #1
  100035f20  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100035f24  mov     x29, x29
  100035f28  bl      _objc_retainAutoreleasedReturnValue
  100035f2c  mov     x23, x0
  100035f30  adrp    x8, #0x100416000
  100035f34  nop
  100035f38  ldr     x1, [x8, #0xdc8]
  100035f3c  mov     x0, x20
  100035f40  mov     x2, x23
  100035f44  mov     x3, x19
  100035f48  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[NSNumber numberWithBool:1] forKey:arg1]
  100035f4c  mov     x0, x23
  100035f50  bl      _objc_release
loc_100035f54:
  100035f54  ldr     x0, [x25]                                ; class ADGameModifiers
  100035f58  mov     x1, x22
  100035f5c  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100035f60  mov     x29, x29
  100035f64  bl      _objc_retainAutoreleasedReturnValue
  100035f68  mov     x23, x0
  100035f6c  adrp    x8, #0x100418000
  100035f70  nop
  100035f74  ldr     x1, [x8, #0x428]
  100035f78  mov     x2, x20
  100035f7c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] setValuesForKeysWithDictionary:[[NSMutableDictionary alloc] init]]
  100035f80  mov     x0, x23
  100035f84  bl      _objc_release
  100035f88  mov     x0, x21
  100035f8c  bl      _objc_release
  100035f90  mov     x0, x20
  100035f94  bl      _objc_release
  100035f98  mov     x0, x19
  100035f9c  sub     sp, x29, #0x40
  100035fa0  ldp     x29, x30, [sp, #0x40]
  100035fa4  ldp     x20, x19, [sp, #0x30]
  100035fa8  ldp     x22, x21, [sp, #0x20]
  100035fac  ldp     x24, x23, [sp, #0x10]
  100035fb0  ldp     x26, x25, [sp], #0x50
  100035fb4  b       _objc_release
  100035fb8  mov     x22, x0
  100035fbc  b       loc_100036000
  100035fc0  mov     x22, x0
  100035fc4  b       loc_100036010
  100035fc8  mov     x22, x0
  100035fcc  b       loc_100036008
  100035fd0  mov     x21, x22
  100035fd4  mov     x22, x0
  100035fd8  b       loc_100036000
  100035fdc  mov     x21, x22
  100035fe0  b       loc_100035ff4
  100035fe4  mov     x22, x0
  100035fe8  mov     x0, x24
  100035fec  b       loc_100035ffc
  100035ff0  b       loc_100035ff4
loc_100035ff4:
  100035ff4  mov     x22, x0
  100035ff8  mov     x0, x23
loc_100035ffc:
  100035ffc  bl      _objc_release
loc_100036000:
  100036000  mov     x0, x21
  100036004  bl      _objc_release
loc_100036008:
  100036008  mov     x0, x20
  10003600c  bl      _objc_release
loc_100036010:
  100036010  mov     x0, x19
  100036014  bl      _objc_release
  100036018  mov     x0, x22
  10003601c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController playButtonPressed:]
; address 0x100036020  size 408  kind objc
; ======================================================================
  100036020  stp     x22, x21, [sp, #-0x30]!
  100036024  stp     x20, x19, [sp, #0x10]
  100036028  stp     x29, x30, [sp, #0x20]
  10003602c  add     x29, sp, #0x20
  100036030  mov     x19, x0
  100036034  adrp    x8, #0x10041e000
  100036038  ldr     x0, [x8]                                 ; class ADGameModifiers
  10003603c  adrp    x8, #0x100417000
  100036040  nop
  100036044  ldr     x1, [x8, #0x510]
  100036048  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10003604c  mov     x29, x29
  100036050  bl      _objc_retainAutoreleasedReturnValue
  100036054  mov     x20, x0
  100036058  adrp    x8, #0x100418000
  10003605c  nop
  100036060  ldr     x1, [x8, #0x430]
  100036064  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] resetModifiers]
  100036068  mov     x0, x20
  10003606c  bl      _objc_release
  100036070  adrp    x8, #0x100418000
  100036074  nop
  100036078  ldr     x1, [x8, #0x438]
  10003607c  mov     x0, x19
  100036080  bl      _objc_msgSend                            ; [self applyAllModifiers]
  100036084  adrp    x8, #0x10041d000
  100036088  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10003608c  adrp    x8, #0x100416000
  100036090  nop
  100036094  ldr     x1, [x8, #0xac0]
  100036098  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10003609c  mov     x29, x29
  1000360a0  bl      _objc_retainAutoreleasedReturnValue
  1000360a4  mov     x20, x0
  1000360a8  adrp    x8, #0x100417000
  1000360ac  nop
  1000360b0  ldr     x1, [x8, #0x2f8]
  1000360b4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000360b8  mov     x29, x29
  1000360bc  bl      _objc_retainAutoreleasedReturnValue
  1000360c0  mov     x19, x0
  1000360c4  mov     x0, x20
  1000360c8  bl      _objc_release
  1000360cc  adrp    x8, #0x1003b8000
  1000360d0  add     x8, x8, #0x398                           ; &d_1003b8398
  1000360d4  ldr     x2, [x8]                                 ; [&d_1003b8398] -> @"&sc"
  1000360d8  adrp    x8, #0x100417000
  1000360dc  nop
  1000360e0  ldr     x1, [x8, #0x300]
  1000360e4  adrp    x3, #0x1003bc000
  1000360e8  add     x3, x3, #0x3f0                           ; @"start"
  1000360ec  mov     x0, x19
  1000360f0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] set:@"&sc" value:@"start"]
  1000360f4  adrp    x8, #0x10041d000
  1000360f8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000360fc  adrp    x8, #0x100416000
  100036100  nop
  100036104  ldr     x1, [x8, #0xb28]
  100036108  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10003610c  mov     x29, x29
  100036110  bl      _objc_retainAutoreleasedReturnValue
  100036114  mov     x20, x0
  100036118  adrp    x8, #0x100416000
  10003611c  nop
  100036120  ldr     x1, [x8, #0xc18]
  100036124  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  100036128  mov     x29, x29
  10003612c  bl      _objc_retainAutoreleasedReturnValue
  100036130  mov     x21, x0
  100036134  adrp    x8, #0x100418000
  100036138  nop
  10003613c  ldr     x1, [x8, #0x440]
  100036140  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToGameplay]
  100036144  mov     x0, x21
  100036148  bl      _objc_release
  10003614c  mov     x0, x20
  100036150  bl      _objc_release
  100036154  mov     x0, x19
  100036158  ldp     x29, x30, [sp, #0x20]
  10003615c  ldp     x20, x19, [sp, #0x10]
  100036160  ldp     x22, x21, [sp], #0x30
  100036164  b       _objc_release
  100036168  mov     x21, x0
  10003616c  b       loc_1000361b0
  100036170  mov     x21, x0
  100036174  b       loc_1000361a8
  100036178  b       loc_10003617c
loc_10003617c:
  10003617c  mov     x21, x0
  100036180  mov     x0, x20
  100036184  b       loc_1000361ac
  100036188  mov     x21, x0
  10003618c  b       loc_1000361a0
  100036190  mov     x1, x21
  100036194  mov     x21, x0
  100036198  mov     x0, x1
  10003619c  bl      _objc_release
loc_1000361a0:
  1000361a0  mov     x0, x20
  1000361a4  bl      _objc_release
loc_1000361a8:
  1000361a8  mov     x0, x19
loc_1000361ac:
  1000361ac  bl      _objc_release
loc_1000361b0:
  1000361b0  mov     x0, x21
  1000361b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController showMissionsOverlay:]
; address 0x1000361b8  size 104  kind objc
; ======================================================================
  1000361b8  stp     x20, x19, [sp, #-0x20]!
  1000361bc  stp     x29, x30, [sp, #0x10]
  1000361c0  add     x29, sp, #0x10
  1000361c4  adrp    x8, #0x100417000
  1000361c8  nop
  1000361cc  ldr     x1, [x8, #0x7a8]
  1000361d0  bl      _objc_msgSend                            ; [self missionTopbarViewController]
  1000361d4  mov     x29, x29
  1000361d8  bl      _objc_retainAutoreleasedReturnValue
  1000361dc  mov     x19, x0
  1000361e0  adrp    x8, #0x100417000
  1000361e4  nop
  1000361e8  ldr     x1, [x8, #0x838]
  1000361ec  mov     x2, #0
  1000361f0  bl      _objc_msgSend                            ; [[self missionTopbarViewController] missionButtonPressed:0]
  1000361f4  mov     x0, x19
  1000361f8  ldp     x29, x30, [sp, #0x10]
  1000361fc  ldp     x20, x19, [sp], #0x20
  100036200  b       _objc_release
  100036204  mov     x20, x0
  100036208  b       loc_100036218
  10003620c  mov     x20, x0
  100036210  mov     x0, x19
  100036214  bl      _objc_release
loc_100036218:
  100036218  mov     x0, x20
  10003621c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController recordCardReloadWithNumber:]
; address 0x100036220  size 712  kind objc
; ======================================================================
  100036220  stp     x28, x27, [sp, #-0x60]!
  100036224  stp     x26, x25, [sp, #0x10]
  100036228  stp     x24, x23, [sp, #0x20]
  10003622c  stp     x22, x21, [sp, #0x30]
  100036230  stp     x20, x19, [sp, #0x40]
  100036234  stp     x29, x30, [sp, #0x50]
  100036238  add     x29, sp, #0x50
  10003623c  sub     sp, sp, #0xd0
  100036240  mov     x21, x2
  100036244  adrp    x26, #0x1003b0000
  100036248  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10003624c  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  100036250  stur    x26, [x29, #-0x58]
  100036254  stp     xzr, xzr, [sp, #0x38]
  100036258  stp     xzr, xzr, [sp, #0x28]
  10003625c  stp     xzr, xzr, [sp, #0x18]
  100036260  stp     xzr, xzr, [sp, #8]
  100036264  adrp    x8, #0x10041f000
  100036268  ldrsw   x8, [x8, #0x838]                         ; ivar offset ADTarotViewController.tarotCards (+0x140)
  10003626c  ldr     x0, [x0, x8]                             ; x0 = self->tarotCards
  100036270  bl      _objc_retain
  100036274  mov     x20, x0
  100036278  adrp    x8, #0x100416000
  10003627c  nop
  100036280  ldr     x22, [x8, #0xe00]
  100036284  add     x2, sp, #8
  100036288  add     x3, sp, #0x48
  10003628c  mov     w4, #0x10
  100036290  mov     x1, x22
  100036294  bl      _objc_msgSend                            ; [self->tarotCards countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100036298  mov     x23, x0
  10003629c  mov     x19, #0
  1000362a0  cbz     x23, loc_100036338                       ; if ([self->tarotCards countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000362a4  ldr     x8, [sp, #0x18]
  1000362a8  ldr     x27, [x8]
  1000362ac  adrp    x8, #0x100418000
  1000362b0  add     x8, x8, #0x448                           ; &@selector(cardLevel)
  1000362b4  ldr     x24, [x8]
loc_1000362b8:
  1000362b8  mov     x28, #0
loc_1000362bc:
  1000362bc  ldr     x8, [sp, #0x18]
  1000362c0  ldr     x8, [x8]
  1000362c4  cmp     x8, x27
  1000362c8  b.eq    loc_1000362d4                            ; if (x8 == x27)
  1000362cc  mov     x0, x20
  1000362d0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->tarotCards)
loc_1000362d4:
  1000362d4  ldr     x8, [sp, #0x10]
  1000362d8  ldr     x25, [x8, x28, lsl #3]
  1000362dc  mov     x0, x25
  1000362e0  mov     x1, x24
  1000362e4  bl      _objc_msgSend                            ; [x0 cardLevel]
  1000362e8  sxtw    x8, w0
  1000362ec  cmp     x8, x21
  1000362f0  b.ne    loc_10003630c                            ; if ([x0 cardLevel] != arg1)
  1000362f4  mov     x0, x25
  1000362f8  bl      _objc_retain
  1000362fc  mov     x25, x0
  100036300  mov     x0, x19
  100036304  bl      _objc_release
  100036308  mov     x19, x25
loc_10003630c:
  10003630c  add     x28, x28, #1
  100036310  cmp     x28, x23
  100036314  b.lo    loc_1000362bc                            ; if ((x28 + 1) <u [self->tarotCards countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100036318  add     x2, sp, #8
  10003631c  add     x3, sp, #0x48
  100036320  mov     w4, #0x10
  100036324  mov     x0, x20
  100036328  mov     x1, x22
  10003632c  bl      _objc_msgSend                            ; [self->tarotCards countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100036330  mov     x23, x0
  100036334  cbnz    x23, loc_1000362b8                       ; if ([self->tarotCards countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100036338:
  100036338  mov     x0, x20
  10003633c  bl      _objc_release
  100036340  adrp    x8, #0x100418000
  100036344  nop
  100036348  ldr     x1, [x8, #0x400]
  10003634c  mov     x0, x19
  100036350  bl      _objc_msgSend                            ; [x0 isGood]
  100036354  adrp    x8, #0x1003bc000
  100036358  add     x8, x8, #0x430                           ; @"was bad"
  10003635c  adrp    x9, #0x1003bc000
  100036360  add     x9, x9, #0x410                           ; @"was good"
  100036364  cmp     w0, #0
  100036368  csel    x21, x9, x8, ne
  10003636c  adrp    x8, #0x10041d000
  100036370  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100036374  adrp    x8, #0x100416000
  100036378  nop
  10003637c  ldr     x1, [x8, #0xac0]
  100036380  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100036384  mov     x29, x29
  100036388  bl      _objc_retainAutoreleasedReturnValue
  10003638c  mov     x22, x0
  100036390  adrp    x8, #0x100417000
  100036394  nop
  100036398  ldr     x1, [x8, #0x2f8]
  10003639c  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000363a0  mov     x29, x29
  1000363a4  bl      _objc_retainAutoreleasedReturnValue
  1000363a8  mov     x20, x0
  1000363ac  mov     x0, x22
  1000363b0  bl      _objc_release
  1000363b4  adrp    x8, #0x10041d000
  1000363b8  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000363bc  adrp    x8, #0x100417000
  1000363c0  nop
  1000363c4  ldr     x1, [x8, #0xd60]
  1000363c8  mov     x5, #0
  1000363cc  adrp    x2, #0x1003bc000
  1000363d0  add     x2, x2, #0x450                           ; @"Tarot card event"
  1000363d4  adrp    x3, #0x1003bc000
  1000363d8  add     x3, x3, #0x470                           ; @"tarot card reloaded"
  1000363dc  mov     x4, x21
  1000363e0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Tarot card event" action:@"tarot card reloaded" label:([x0 isGood] != 0 ? @"was good" : @"was bad") value:0]
  1000363e4  mov     x29, x29
  1000363e8  bl      _objc_retainAutoreleasedReturnValue
  1000363ec  mov     x22, x0
  1000363f0  adrp    x8, #0x100417000
  1000363f4  nop
  1000363f8  ldr     x1, [x8, #0x310]
  1000363fc  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Tarot card event" action:@"tarot card reloaded" label:([x0 isGood] != 0 ? @"was good" : @"was bad") value:0] build]
  100036400  mov     x29, x29
  100036404  bl      _objc_retainAutoreleasedReturnValue
  100036408  mov     x23, x0
  10003640c  adrp    x8, #0x100417000
  100036410  nop
  100036414  ldr     x1, [x8, #0x318]
  100036418  mov     x0, x20
  10003641c  mov     x2, x23
  100036420  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Tarot card event" action:@"tarot card reloaded" label:([x0 isGood] != 0 ? @"was good" : @"was bad") value:0] build]]
  100036424  mov     x0, x23
  100036428  bl      _objc_release
  10003642c  mov     x0, x22
  100036430  bl      _objc_release
  100036434  mov     x0, x20
  100036438  bl      _objc_release
  10003643c  mov     x0, x19
  100036440  bl      _objc_release
  100036444  ldur    x8, [x29, #-0x58]
  100036448  sub     x8, x26, x8
  10003644c  cbnz    x8, loc_100036470                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100036450  sub     sp, x29, #0x50
  100036454  ldp     x29, x30, [sp, #0x50]
  100036458  ldp     x20, x19, [sp, #0x40]
  10003645c  ldp     x22, x21, [sp, #0x30]
  100036460  ldp     x24, x23, [sp, #0x20]
  100036464  ldp     x26, x25, [sp, #0x10]
  100036468  ldp     x28, x27, [sp], #0x60
  10003646c  ret
loc_100036470:
  100036470  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100036474  mov     x21, x0
loc_100036478:
  100036478  mov     x0, x20
loc_10003647c:
  10003647c  bl      _objc_release
loc_100036480:
  100036480  mov     x0, x19
  100036484  bl      _objc_release
  100036488  mov     x0, x21
  10003648c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100036490  mov     x21, x0
  100036494  b       loc_100036478
  100036498  mov     x21, x0
  10003649c  mov     x19, #0
  1000364a0  b       loc_100036478
  1000364a4  mov     x21, x0
  1000364a8  b       loc_100036480
  1000364ac  mov     x21, x0
  1000364b0  b       loc_100036480
  1000364b4  mov     x21, x0
  1000364b8  mov     x0, x22
  1000364bc  b       loc_10003647c
  1000364c0  mov     x21, x0
  1000364c4  b       loc_100036478
  1000364c8  mov     x21, x0
  1000364cc  b       loc_1000364dc
  1000364d0  mov     x21, x0
  1000364d4  mov     x0, x23
  1000364d8  bl      _objc_release
loc_1000364dc:
  1000364dc  mov     x0, x22
  1000364e0  bl      _objc_release
  1000364e4  b       loc_100036478

; ======================================================================
; -[ADTarotViewController backButtonPressed]
; address 0x1000364e8  size 176  kind objc
; ======================================================================
  1000364e8  stp     x22, x21, [sp, #-0x30]!
  1000364ec  stp     x20, x19, [sp, #0x10]
  1000364f0  stp     x29, x30, [sp, #0x20]
  1000364f4  add     x29, sp, #0x20
  1000364f8  adrp    x8, #0x10041f000
  1000364fc  ldrsw   x8, [x8, #0x840]                         ; ivar offset ADTarotViewController.backbuttonpressed (+0x150)
  100036500  mov     w9, #1
  100036504  strb    w9, [x0, x8]                             ; self->backbuttonpressed = 1
  100036508  adrp    x8, #0x10041d000
  10003650c  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100036510  adrp    x8, #0x100416000
  100036514  nop
  100036518  ldr     x1, [x8, #0xb28]
  10003651c  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100036520  mov     x29, x29
  100036524  bl      _objc_retainAutoreleasedReturnValue
  100036528  mov     x19, x0
  10003652c  adrp    x8, #0x100416000
  100036530  nop
  100036534  ldr     x1, [x8, #0xc18]
  100036538  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10003653c  mov     x29, x29
  100036540  bl      _objc_retainAutoreleasedReturnValue
  100036544  mov     x20, x0
  100036548  adrp    x8, #0x100418000
  10003654c  nop
  100036550  ldr     x1, [x8, #0x450]
  100036554  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToPlayMenu]
  100036558  mov     x0, x20
  10003655c  bl      _objc_release
  100036560  mov     x0, x19
  100036564  ldp     x29, x30, [sp, #0x20]
  100036568  ldp     x20, x19, [sp, #0x10]
  10003656c  ldp     x22, x21, [sp], #0x30
  100036570  b       _objc_release
  100036574  mov     x21, x0
  100036578  b       loc_100036588
  10003657c  mov     x21, x0
  100036580  mov     x0, x20
  100036584  bl      _objc_release
loc_100036588:
  100036588  mov     x0, x19
  10003658c  bl      _objc_release
  100036590  mov     x0, x21
  100036594  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTarotViewController dealloc]
; address 0x100036598  size 156  kind objc
; ======================================================================
  100036598  stp     x20, x19, [sp, #-0x20]!
  10003659c  stp     x29, x30, [sp, #0x10]
  1000365a0  add     x29, sp, #0x10
  1000365a4  sub     sp, sp, #0x20
  1000365a8  mov     x19, x0
  1000365ac  adrp    x8, #0x10041f000
  1000365b0  ldrsw   x8, [x8, #0x834]                         ; ivar offset ADTarotViewController.tarotPlaylist (+0x148)
  1000365b4  ldr     x0, [x19, x8]                            ; x0 = self->tarotPlaylist
  1000365b8  adrp    x8, #0x100417000
  1000365bc  nop
  1000365c0  ldr     x1, [x8, #0x618]
  1000365c4  bl      _objc_msgSend                            ; [self->tarotPlaylist deactivate]
  1000365c8  str     x19, [sp, #0x10]
  1000365cc  adrp    x8, #0x10041e000
  1000365d0  ldr     x8, [x8, #0xc90]
  1000365d4  str     x8, [sp, #0x18]
  1000365d8  adrp    x8, #0x100416000
  1000365dc  nop
  1000365e0  ldr     x1, [x8, #0xfc8]
  1000365e4  add     x0, sp, #0x10
  1000365e8  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000365ec  sub     sp, x29, #0x10
  1000365f0  ldp     x29, x30, [sp, #0x10]
  1000365f4  ldp     x20, x19, [sp], #0x20
  1000365f8  ret
  1000365fc  mov     x8, x19
  100036600  mov     x19, x0
  100036604  str     x8, [sp]
  100036608  adrp    x8, #0x10041e000
  10003660c  ldr     x8, [x8, #0xc90]
  100036610  str     x8, [sp, #8]
  100036614  adrp    x8, #0x100416000
  100036618  nop
  10003661c  ldr     x1, [x8, #0xfc8]
  100036620  mov     x0, sp
  100036624  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100036628  mov     x0, x19
  10003662c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100036630  bl      sub_10000b760

; ======================================================================
; -[ADTarotViewController accessibilityPerformMagicTap]
; address 0x100036634  size 40  kind objc
; ======================================================================
  100036634  stp     x29, x30, [sp, #-0x10]!
  100036638  mov     x29, sp
  10003663c  adrp    x8, #0x100418000
  100036640  nop
  100036644  ldr     x1, [x8, #0x458]
  100036648  mov     x2, #0
  10003664c  bl      _objc_msgSend                            ; [self playButtonPressed:0]
  100036650  mov     w0, #1
  100036654  ldp     x29, x30, [sp], #0x10
  100036658  ret

; ======================================================================
; -[ADTarotViewController playButton]
; address 0x10003665c  size 16  kind objc
; ======================================================================
  10003665c  adrp    x8, #0x10041f000
  100036660  ldrsw   x8, [x8, #0x844]                         ; ivar offset ADTarotViewController._playButton (+0x158)
  100036664  ldr     x0, [x0, x8]                             ; x0 = self->_playButton
  100036668  ret

; ======================================================================
; -[ADTarotViewController setPlayButton:]
; address 0x10003666c  size 56  kind objc
; ======================================================================
  10003666c  stp     x20, x19, [sp, #-0x20]!
  100036670  stp     x29, x30, [sp, #0x10]
  100036674  add     x29, sp, #0x10
  100036678  mov     x19, x0
  10003667c  adrp    x8, #0x10041f000
  100036680  ldrsw   x20, [x8, #0x844]                        ; ivar offset ADTarotViewController._playButton (+0x158)
  100036684  mov     x0, x2
  100036688  bl      _objc_retain
  10003668c  ldr     x8, [x19, x20]                           ; x8 = self->_playButton
  100036690  str     x0, [x19, x20]                           ; self->_playButton = arg1
  100036694  mov     x0, x8
  100036698  ldp     x29, x30, [sp, #0x10]
  10003669c  ldp     x20, x19, [sp], #0x20
  1000366a0  b       _objc_release

; ======================================================================
; -[ADTarotViewController missionButton]
; address 0x1000366a4  size 16  kind objc
; ======================================================================
  1000366a4  adrp    x8, #0x10041f000
  1000366a8  ldrsw   x8, [x8, #0x848]                         ; ivar offset ADTarotViewController._missionButton (+0x160)
  1000366ac  ldr     x0, [x0, x8]                             ; x0 = self->_missionButton
  1000366b0  ret

; ======================================================================
; -[ADTarotViewController setMissionButton:]
; address 0x1000366b4  size 56  kind objc
; ======================================================================
  1000366b4  stp     x20, x19, [sp, #-0x20]!
  1000366b8  stp     x29, x30, [sp, #0x10]
  1000366bc  add     x29, sp, #0x10
  1000366c0  mov     x19, x0
  1000366c4  adrp    x8, #0x10041f000
  1000366c8  ldrsw   x20, [x8, #0x848]                        ; ivar offset ADTarotViewController._missionButton (+0x160)
  1000366cc  mov     x0, x2
  1000366d0  bl      _objc_retain
  1000366d4  ldr     x8, [x19, x20]                           ; x8 = self->_missionButton
  1000366d8  str     x0, [x19, x20]                           ; self->_missionButton = arg1
  1000366dc  mov     x0, x8
  1000366e0  ldp     x29, x30, [sp, #0x10]
  1000366e4  ldp     x20, x19, [sp], #0x20
  1000366e8  b       _objc_release

; ======================================================================
; -[ADTarotViewController infoText]
; address 0x1000366ec  size 16  kind objc
; ======================================================================
  1000366ec  adrp    x8, #0x10041f000
  1000366f0  ldrsw   x8, [x8, #0x84c]                         ; ivar offset ADTarotViewController._infoText (+0x168)
  1000366f4  ldr     x0, [x0, x8]                             ; x0 = self->_infoText
  1000366f8  ret

; ======================================================================
; -[ADTarotViewController setInfoText:]
; address 0x1000366fc  size 56  kind objc
; ======================================================================
  1000366fc  stp     x20, x19, [sp, #-0x20]!
  100036700  stp     x29, x30, [sp, #0x10]
  100036704  add     x29, sp, #0x10
  100036708  mov     x19, x0
  10003670c  adrp    x8, #0x10041f000
  100036710  ldrsw   x20, [x8, #0x84c]                        ; ivar offset ADTarotViewController._infoText (+0x168)
  100036714  mov     x0, x2
  100036718  bl      _objc_retain
  10003671c  ldr     x8, [x19, x20]                           ; x8 = self->_infoText
  100036720  str     x0, [x19, x20]                           ; self->_infoText = arg1
  100036724  mov     x0, x8
  100036728  ldp     x29, x30, [sp, #0x10]
  10003672c  ldp     x20, x19, [sp], #0x20
  100036730  b       _objc_release

; ======================================================================
; -[ADTarotViewController cardContainer]
; address 0x100036734  size 16  kind objc
; ======================================================================
  100036734  adrp    x8, #0x10041f000
  100036738  ldrsw   x8, [x8, #0x850]                         ; ivar offset ADTarotViewController._cardContainer (+0x170)
  10003673c  ldr     x0, [x0, x8]                             ; x0 = self->_cardContainer
  100036740  ret

; ======================================================================
; -[ADTarotViewController setCardContainer:]
; address 0x100036744  size 56  kind objc
; ======================================================================
  100036744  stp     x20, x19, [sp, #-0x20]!
  100036748  stp     x29, x30, [sp, #0x10]
  10003674c  add     x29, sp, #0x10
  100036750  mov     x19, x0
  100036754  adrp    x8, #0x10041f000
  100036758  ldrsw   x20, [x8, #0x850]                        ; ivar offset ADTarotViewController._cardContainer (+0x170)
  10003675c  mov     x0, x2
  100036760  bl      _objc_retain
  100036764  ldr     x8, [x19, x20]                           ; x8 = self->_cardContainer
  100036768  str     x0, [x19, x20]                           ; self->_cardContainer = arg1
  10003676c  mov     x0, x8
  100036770  ldp     x29, x30, [sp, #0x10]
  100036774  ldp     x20, x19, [sp], #0x20
  100036778  b       _objc_release

; ======================================================================
; -[ADTarotViewController .cxx_destruct]
; address 0x10003677c  size 144  kind objc
; ======================================================================
  10003677c  stp     x20, x19, [sp, #-0x20]!
  100036780  stp     x29, x30, [sp, #0x10]
  100036784  add     x29, sp, #0x10
  100036788  mov     x19, x0
  10003678c  adrp    x8, #0x10041f000
  100036790  ldrsw   x8, [x8, #0x850]                         ; ivar offset ADTarotViewController._cardContainer (+0x170)
  100036794  add     x0, x19, x8
  100036798  mov     x1, #0
  10003679c  bl      _objc_storeStrong
  1000367a0  adrp    x8, #0x10041f000
  1000367a4  ldrsw   x8, [x8, #0x84c]                         ; ivar offset ADTarotViewController._infoText (+0x168)
  1000367a8  add     x0, x19, x8
  1000367ac  mov     x1, #0
  1000367b0  bl      _objc_storeStrong
  1000367b4  adrp    x8, #0x10041f000
  1000367b8  ldrsw   x8, [x8, #0x848]                         ; ivar offset ADTarotViewController._missionButton (+0x160)
  1000367bc  add     x0, x19, x8
  1000367c0  mov     x1, #0
  1000367c4  bl      _objc_storeStrong
  1000367c8  adrp    x8, #0x10041f000
  1000367cc  ldrsw   x8, [x8, #0x844]                         ; ivar offset ADTarotViewController._playButton (+0x158)
  1000367d0  add     x0, x19, x8
  1000367d4  mov     x1, #0
  1000367d8  bl      _objc_storeStrong
  1000367dc  adrp    x8, #0x10041f000
  1000367e0  ldrsw   x8, [x8, #0x834]                         ; ivar offset ADTarotViewController.tarotPlaylist (+0x148)
  1000367e4  add     x0, x19, x8
  1000367e8  mov     x1, #0
  1000367ec  bl      _objc_storeStrong
  1000367f0  mov     x1, #0
  1000367f4  adrp    x8, #0x10041f000
  1000367f8  ldrsw   x8, [x8, #0x838]                         ; ivar offset ADTarotViewController.tarotCards (+0x140)
  1000367fc  add     x0, x19, x8
  100036800  ldp     x29, x30, [sp, #0x10]
  100036804  ldp     x20, x19, [sp], #0x20
  100036808  b       _objc_storeStrong
