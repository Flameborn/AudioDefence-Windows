// unit ADReviveViewController — 19 functions
//   0x100021168     284  -[ADReviveViewController initWithCost:]
//   0x100021284    1296  -[ADReviveViewController viewDidLoad]
//   0x100021794     276  -[ADReviveViewController viewWillAppear:]
//   0x1000218a8     624  -[ADReviveViewController reviveButtonPressed:]
//   0x100021b18      36  -[ADReviveViewController reviveButtonPressed:]_block_invoke
//   0x100021b3c     316  -[ADReviveViewController gameOverButtonPressed:]
//   0x100021c78      60  -[ADReviveViewController didReceiveMemoryWarning]
//   0x100021cb4      40  -[ADReviveViewController accessibilityPerformMagicTap]
//   0x100021cdc      32  -[ADReviveViewController gameplayViewController]
//   0x100021cfc      20  -[ADReviveViewController setGameplayViewController:]
//   0x100021d10      16  -[ADReviveViewController reviveButton]
//   0x100021d20      56  -[ADReviveViewController setReviveButton:]
//   0x100021d58      16  -[ADReviveViewController gameOverButton]
//   0x100021d68      56  -[ADReviveViewController setGameOverButton:]
//   0x100021da0      16  -[ADReviveViewController tipTextView]
//   0x100021db0      56  -[ADReviveViewController setTipTextView:]
//   0x100021de8      16  -[ADReviveViewController tipLabel]
//   0x100021df8      56  -[ADReviveViewController setTipLabel:]
//   0x100021e30     160  -[ADReviveViewController .cxx_destruct]

; ======================================================================
; -[ADReviveViewController initWithCost:]
; address 0x100021168  size 284  kind objc
; ======================================================================
  100021168  stp     x22, x21, [sp, #-0x30]!
  10002116c  stp     x20, x19, [sp, #0x10]
  100021170  stp     x29, x30, [sp, #0x20]
  100021174  add     x29, sp, #0x20
  100021178  sub     sp, sp, #0x10
  10002117c  mov     x21, x2
  100021180  str     x0, [sp]
  100021184  adrp    x8, #0x10041e000
  100021188  ldr     x8, [x8, #0xc48]
  10002118c  str     x8, [sp, #8]
  100021190  adrp    x8, #0x100416000
  100021194  nop
  100021198  ldr     x1, [x8, #0xb40]
  10002119c  mov     x20, #0
  1000211a0  mov     x0, sp
  1000211a4  mov     x2, #0
  1000211a8  mov     x3, #0
  1000211ac  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  1000211b0  mov     x19, x0
  1000211b4  cbz     x19, loc_100021244                       ; if (self == 0)
  1000211b8  adrp    x8, #0x10041f000
  1000211bc  ldrsw   x8, [x8, #0x6d0]                         ; ivar offset ADReviveViewController.cost (+0x140)
  1000211c0  str     w21, [x19, x8]                           ; self->cost = arg1
  1000211c4  mov     x20, x19
  1000211c8  adrp    x8, #0x10041d000
  1000211cc  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000211d0  adrp    x8, #0x100417000
  1000211d4  nop
  1000211d8  ldr     x1, [x8, #0x4f0]
  1000211dc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000211e0  mov     x29, x29
  1000211e4  bl      _objc_retainAutoreleasedReturnValue
  1000211e8  mov     x21, x0
  1000211ec  adrp    x8, #0x100417000
  1000211f0  nop
  1000211f4  ldr     x1, [x8, #0x4f8]
  1000211f8  adrp    x2, #0x1003ba000
  1000211fc  add     x2, x2, #0xf90                           ; @"revive"
  100021200  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"revive"]
  100021204  mov     x20, x19
  100021208  mov     x29, x29
  10002120c  bl      _objc_retainAutoreleasedReturnValue
  100021210  adrp    x8, #0x10041f000
  100021214  ldrsw   x22, [x8, #0x6d4]                        ; ivar offset ADReviveViewController.revivePlaylist (+0x148)
  100021218  ldr     x8, [x19, x22]                           ; x8 = self->revivePlaylist
  10002121c  str     x0, [x19, x22]                           ; self->revivePlaylist = [[S3DEngine engine] playListWithName:@"revive"]
  100021220  mov     x0, x8
  100021224  bl      _objc_release
  100021228  mov     x0, x21
  10002122c  bl      _objc_release
  100021230  ldr     x0, [x19, x22]                           ; x0 = self->revivePlaylist
  100021234  adrp    x8, #0x100417000
  100021238  nop
  10002123c  ldr     x1, [x8, #0x508]
  100021240  bl      _objc_msgSend                            ; [self->revivePlaylist activate]
loc_100021244:
  100021244  mov     x0, x19
  100021248  sub     sp, x29, #0x20
  10002124c  ldp     x29, x30, [sp, #0x20]
  100021250  ldp     x20, x19, [sp, #0x10]
  100021254  ldp     x22, x21, [sp], #0x30
  100021258  ret
  10002125c  mov     x22, x0
  100021260  b       loc_100021274
  100021264  mov     x22, x0
  100021268  mov     x0, x21
  10002126c  bl      _objc_release
  100021270  mov     x20, x19
loc_100021274:
  100021274  mov     x0, x20
  100021278  bl      _objc_release
  10002127c  mov     x0, x22
  100021280  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADReviveViewController viewDidLoad]
; address 0x100021284  size 1296  kind objc
; ======================================================================
  100021284  stp     x26, x25, [sp, #-0x50]!
  100021288  stp     x24, x23, [sp, #0x10]
  10002128c  stp     x22, x21, [sp, #0x20]
  100021290  stp     x20, x19, [sp, #0x30]
  100021294  stp     x29, x30, [sp, #0x40]
  100021298  add     x29, sp, #0x40
  10002129c  sub     sp, sp, #0x20
  1000212a0  mov     x19, x0
  1000212a4  str     x19, [sp, #0x10]
  1000212a8  adrp    x8, #0x10041e000
  1000212ac  ldr     x8, [x8, #0xc48]
  1000212b0  str     x8, [sp, #0x18]
  1000212b4  adrp    x8, #0x100416000
  1000212b8  nop
  1000212bc  ldr     x1, [x8, #0xb48]
  1000212c0  add     x0, sp, #0x10
  1000212c4  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  1000212c8  adrp    x8, #0x100417000
  1000212cc  nop
  1000212d0  ldr     x20, [x8, #0xa88]
  1000212d4  mov     x0, x19
  1000212d8  mov     x1, x20
  1000212dc  bl      _objc_msgSend                            ; [self reviveButton]
  1000212e0  mov     x29, x29
  1000212e4  bl      _objc_retainAutoreleasedReturnValue
  1000212e8  mov     x21, x0
  1000212ec  adrp    x8, #0x100416000
  1000212f0  nop
  1000212f4  ldr     x1, [x8, #0xb80]
  1000212f8  bl      _objc_msgSend                            ; [[self reviveButton] titleLabel]
  1000212fc  mov     x29, x29
  100021300  bl      _objc_retainAutoreleasedReturnValue
  100021304  mov     x22, x0
  100021308  adrp    x8, #0x10041d000
  10002130c  ldr     x24, [x8, #0xf08]                        ; class UIFont
  100021310  nop
  100021314  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100021318  adrp    x8, #0x100416000
  10002131c  nop
  100021320  ldr     x1, [x8, #0xc00]
  100021324  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100021328  mov     x29, x29
  10002132c  bl      _objc_retainAutoreleasedReturnValue
  100021330  mov     x23, x0
  100021334  adrp    x8, #0x100416000
  100021338  nop
  10002133c  ldr     x1, [x8, #0xd18]
  100021340  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  100021344  cmp     w0, #0
  100021348  adrp    x8, #0x100181000
  10002134c  ldr     d0, [x8, #0x9d0]                         ; d0 = 50.0
  100021350  fmov    d1, #17.00000000
  100021354  fcsel   d0, d1, d0, ne
  100021358  adrp    x8, #0x100416000
  10002135c  nop
  100021360  ldr     x1, [x8, #0xd20]
  100021364  adrp    x2, #0x1003b9000
  100021368  add     x2, x2, #0xf10                           ; @"Monstro"
  10002136c  mov     x0, x24
  100021370  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 17 : 50)]
  100021374  mov     x29, x29
  100021378  bl      _objc_retainAutoreleasedReturnValue
  10002137c  mov     x24, x0
  100021380  adrp    x8, #0x100416000
  100021384  nop
  100021388  ldr     x1, [x8, #0xd28]
  10002138c  mov     x0, x22
  100021390  mov     x2, x24
  100021394  bl      _objc_msgSend                            ; [[[self reviveButton] titleLabel] setFont:[UIFont fontWithName:@"Monstro" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 17 : 50)]]
  100021398  mov     x0, x24
  10002139c  bl      _objc_release
  1000213a0  mov     x0, x23
  1000213a4  bl      _objc_release
  1000213a8  mov     x0, x22
  1000213ac  bl      _objc_release
  1000213b0  mov     x0, x21
  1000213b4  bl      _objc_release
  1000213b8  adrp    x8, #0x10041f000
  1000213bc  ldrsw   x24, [x8, #0x6d0]                        ; ivar offset ADReviveViewController.cost (+0x140)
  1000213c0  ldr     w21, [x19, x24]                          ; w21 = self->cost
  1000213c4  mov     x0, x19
  1000213c8  mov     x1, x20
  1000213cc  bl      _objc_msgSend                            ; [self reviveButton]
  1000213d0  mov     x29, x29
  1000213d4  bl      _objc_retainAutoreleasedReturnValue
  1000213d8  mov     x22, x0
  1000213dc  cbz     w21, loc_10002150c                       ; if (self->cost == 0)
  1000213e0  adrp    x25, #0x10041d000
  1000213e4  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000213e8  adrp    x8, #0x100416000
  1000213ec  nop
  1000213f0  ldr     x21, [x8, #0xee8]
  1000213f4  ldr     w8, [x19, x24]                           ; w8 = self->cost
  1000213f8  str     x8, [sp]
  1000213fc  adrp    x2, #0x1003ba000
  100021400  add     x2, x2, #0xfb0                           ; @"Revive for %i"
  100021404  mov     x1, x21
  100021408  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Revive for %i", self->cost]
  10002140c  mov     x29, x29
  100021410  bl      _objc_retainAutoreleasedReturnValue
  100021414  mov     x23, x0
  100021418  adrp    x8, #0x100417000
  10002141c  nop
  100021420  ldr     x1, [x8, #0x920]
  100021424  mov     x3, #0
  100021428  mov     x0, x22
  10002142c  mov     x2, x23
  100021430  bl      _objc_msgSend                            ; [[self reviveButton] setTitle:[NSString stringWithFormat:@"Revive for %i", self->cost] forState:0]
  100021434  mov     x0, x23
  100021438  bl      _objc_release
  10002143c  mov     x0, x22
  100021440  bl      _objc_release
  100021444  mov     x0, x19
  100021448  mov     x1, x20
  10002144c  bl      _objc_msgSend                            ; [self reviveButton]
  100021450  mov     x29, x29
  100021454  bl      _objc_retainAutoreleasedReturnValue
  100021458  mov     x22, x0
  10002145c  ldr     w2, [x19, x24]                           ; w2 = self->cost
  100021460  adrp    x8, #0x100417000
  100021464  nop
  100021468  ldr     x1, [x8, #0x98]
  10002146c  bl      _objc_msgSend                            ; [[self reviveButton] setDiamonds:self->cost]
  100021470  mov     x0, x22
  100021474  bl      _objc_release
  100021478  mov     x0, x19
  10002147c  mov     x1, x20
  100021480  bl      _objc_msgSend                            ; [self reviveButton]
  100021484  mov     x29, x29
  100021488  bl      _objc_retainAutoreleasedReturnValue
  10002148c  mov     x22, x0
  100021490  adrp    x8, #0x100417000
  100021494  nop
  100021498  ldr     x1, [x8, #0xa90]
  10002149c  bl      _objc_msgSend                            ; [[self reviveButton] centerButtonTextWithDiamondsImage]
  1000214a0  mov     x0, x22
  1000214a4  bl      _objc_release
  1000214a8  mov     x0, x19
  1000214ac  mov     x1, x20
  1000214b0  bl      _objc_msgSend                            ; [self reviveButton]
  1000214b4  mov     x29, x29
  1000214b8  bl      _objc_retainAutoreleasedReturnValue
  1000214bc  mov     x20, x0
  1000214c0  ldr     x0, [x25, #0xf78]                        ; class NSString
  1000214c4  ldr     w8, [x19, x24]                           ; w8 = self->cost
  1000214c8  str     x8, [sp]
  1000214cc  adrp    x2, #0x1003ba000
  1000214d0  add     x2, x2, #0xfd0                           ; @"Revive for %i diamond"
  1000214d4  mov     x1, x21
  1000214d8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Revive for %i diamond", self->cost]
  1000214dc  mov     x29, x29
  1000214e0  bl      _objc_retainAutoreleasedReturnValue
  1000214e4  mov     x21, x0
  1000214e8  adrp    x8, #0x100417000
  1000214ec  nop
  1000214f0  ldr     x1, [x8, #0x7e8]
  1000214f4  mov     x0, x20
  1000214f8  mov     x2, x21
  1000214fc  bl      _objc_msgSend                            ; [[self reviveButton] setAccessibilityLabel:[NSString stringWithFormat:@"Revive for %i diamond", self->cost]]
  100021500  mov     x0, x21
  100021504  bl      _objc_release
  100021508  b       loc_100021564
loc_10002150c:
  10002150c  adrp    x8, #0x100417000
  100021510  nop
  100021514  ldr     x1, [x8, #0x7e8]
  100021518  adrp    x2, #0x1003ba000
  10002151c  add     x2, x2, #0xff0                           ; @"free revive"
  100021520  mov     x0, x22
  100021524  bl      _objc_msgSend                            ; [[self reviveButton] setAccessibilityLabel:@"free revive"]
  100021528  mov     x0, x22
  10002152c  bl      _objc_release
  100021530  mov     x0, x19
  100021534  mov     x1, x20
  100021538  bl      _objc_msgSend                            ; [self reviveButton]
  10002153c  mov     x29, x29
  100021540  bl      _objc_retainAutoreleasedReturnValue
  100021544  mov     x20, x0
  100021548  adrp    x8, #0x100417000
  10002154c  nop
  100021550  ldr     x1, [x8, #0x920]
  100021554  mov     x3, #0
  100021558  adrp    x2, #0x1003bb000
  10002155c  add     x2, x2, #0x10                            ; @"Free revive"
  100021560  bl      _objc_msgSend                            ; [[self reviveButton] setTitle:@"Free revive" forState:0]
loc_100021564:
  100021564  mov     x0, x20
  100021568  bl      _objc_release
  10002156c  adrp    x8, #0x100417000
  100021570  nop
  100021574  ldr     x1, [x8, #0xa98]
  100021578  mov     x0, x19
  10002157c  bl      _objc_msgSend                            ; [self gameOverButton]
  100021580  mov     x29, x29
  100021584  bl      _objc_retainAutoreleasedReturnValue
  100021588  mov     x20, x0
  10002158c  adrp    x8, #0x100417000
  100021590  nop
  100021594  ldr     x1, [x8, #0x7e8]
  100021598  adrp    x2, #0x1003bb000
  10002159c  add     x2, x2, #0x30                            ; @"Game over"
  1000215a0  bl      _objc_msgSend                            ; [[self gameOverButton] setAccessibilityLabel:@"Game over"]
  1000215a4  mov     x0, x20
  1000215a8  bl      _objc_release
  1000215ac  adrp    x8, #0x100417000
  1000215b0  nop
  1000215b4  ldr     x1, [x8, #0xaa0]
  1000215b8  mov     x0, x19
  1000215bc  bl      _objc_msgSend                            ; [self tipTextView]
  1000215c0  mov     x29, x29
  1000215c4  bl      _objc_retainAutoreleasedReturnValue
  1000215c8  mov     x20, x0
  1000215cc  adrp    x8, #0x10041e000
  1000215d0  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000215d4  adrp    x8, #0x100417000
  1000215d8  nop
  1000215dc  ldr     x1, [x8, #0xaa8]
  1000215e0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000215e4  mov     x29, x29
  1000215e8  bl      _objc_retainAutoreleasedReturnValue
  1000215ec  mov     x21, x0
  1000215f0  adrp    x8, #0x100417000
  1000215f4  nop
  1000215f8  ldr     x1, [x8, #0xab0]
  1000215fc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] currentBrick]
  100021600  mov     x29, x29
  100021604  bl      _objc_retainAutoreleasedReturnValue
  100021608  mov     x22, x0
  10002160c  adrp    x8, #0x100417000
  100021610  nop
  100021614  ldr     x1, [x8, #0xab8]
  100021618  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] currentBrick] randomTip]
  10002161c  mov     x29, x29
  100021620  bl      _objc_retainAutoreleasedReturnValue
  100021624  mov     x23, x0
  100021628  adrp    x8, #0x100416000
  10002162c  nop
  100021630  ldr     x1, [x8, #0xb68]
  100021634  mov     x0, x20
  100021638  mov     x2, x23
  10002163c  bl      _objc_msgSend                            ; [[self tipTextView] setText:[[[ADBrickManager sharedBrickManager] currentBrick] randomTip]]
  100021640  mov     x0, x23
  100021644  bl      _objc_release
  100021648  mov     x0, x22
  10002164c  bl      _objc_release
  100021650  mov     x0, x21
  100021654  bl      _objc_release
  100021658  mov     x0, x20
  10002165c  bl      _objc_release
  100021660  adrp    x8, #0x10041f000
  100021664  ldrsw   x8, [x8, #0x6d4]                         ; ivar offset ADReviveViewController.revivePlaylist (+0x148)
  100021668  ldr     x0, [x19, x8]                            ; x0 = self->revivePlaylist
  10002166c  adrp    x8, #0x100417000
  100021670  nop
  100021674  ldr     x1, [x8, #0x990]
  100021678  adrp    x2, #0x1003bb000
  10002167c  add     x2, x2, #0x50                            ; @"revive_standby"
  100021680  bl      _objc_msgSend                            ; [self->revivePlaylist S3DSound:@"revive_standby"]
  100021684  mov     x29, x29
  100021688  bl      _objc_retainAutoreleasedReturnValue
  10002168c  adrp    x8, #0x10041f000
  100021690  ldrsw   x20, [x8, #0x6d8]                        ; ivar offset ADReviveViewController.reviveStandBySound (+0x150)
  100021694  ldr     x8, [x19, x20]                           ; x8 = self->reviveStandBySound
  100021698  str     x0, [x19, x20]                           ; self->reviveStandBySound = [self->revivePlaylist S3DSound:@"revive_standby"]
  10002169c  mov     x0, x8
  1000216a0  bl      _objc_release
  1000216a4  ldr     x0, [x19, x20]                           ; x0 = self->reviveStandBySound
  1000216a8  adrp    x8, #0x100416000
  1000216ac  nop
  1000216b0  ldr     x1, [x8, #0xcb8]
  1000216b4  mov     w2, #1
  1000216b8  bl      _objc_msgSend                            ; [self->reviveStandBySound play:1]
  1000216bc  sub     sp, x29, #0x40
  1000216c0  ldp     x29, x30, [sp, #0x40]
  1000216c4  ldp     x20, x19, [sp, #0x30]
  1000216c8  ldp     x22, x21, [sp, #0x20]
  1000216cc  ldp     x24, x23, [sp, #0x10]
  1000216d0  ldp     x26, x25, [sp], #0x50
  1000216d4  ret
  1000216d8  mov     x19, x0
  1000216dc  b       loc_1000216fc
  1000216e0  mov     x19, x0
  1000216e4  b       loc_10002170c
  1000216e8  mov     x19, x0
  1000216ec  b       loc_100021704
  1000216f0  mov     x19, x0
  1000216f4  mov     x0, x24
  1000216f8  bl      _objc_release
loc_1000216fc:
  1000216fc  mov     x0, x23
  100021700  bl      _objc_release
loc_100021704:
  100021704  mov     x0, x22
  100021708  bl      _objc_release
loc_10002170c:
  10002170c  mov     x0, x21
  100021710  b       loc_100021788
  100021714  b       loc_100021780
  100021718  b       loc_100021780
  10002171c  mov     x19, x0
  100021720  b       loc_100021768
  100021724  mov     x19, x0
  100021728  b       loc_100021738
  10002172c  mov     x19, x0
  100021730  mov     x0, x23
  100021734  bl      _objc_release
loc_100021738:
  100021738  mov     x0, x22
  10002173c  bl      _objc_release
  100021740  b       loc_100021768
  100021744  b       loc_100021774
  100021748  mov     x19, x0
  10002174c  mov     x0, x23
  100021750  bl      _objc_release
  100021754  b       loc_100021778
  100021758  b       loc_100021774
  10002175c  b       loc_100021774
  100021760  b       loc_100021780
  100021764  mov     x19, x0
loc_100021768:
  100021768  mov     x0, x21
  10002176c  bl      _objc_release
  100021770  b       loc_100021784
loc_100021774:
  100021774  mov     x19, x0
loc_100021778:
  100021778  mov     x0, x22
  10002177c  b       loc_100021788
loc_100021780:
  100021780  mov     x19, x0
loc_100021784:
  100021784  mov     x0, x20
loc_100021788:
  100021788  bl      _objc_release
  10002178c  mov     x0, x19
  100021790  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADReviveViewController viewWillAppear:]
; address 0x100021794  size 276  kind objc
; ======================================================================
  100021794  stp     x22, x21, [sp, #-0x30]!
  100021798  stp     x20, x19, [sp, #0x10]
  10002179c  stp     x29, x30, [sp, #0x20]
  1000217a0  add     x29, sp, #0x20
  1000217a4  mov     x19, x0
  1000217a8  adrp    x8, #0x10041d000
  1000217ac  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000217b0  adrp    x8, #0x100416000
  1000217b4  nop
  1000217b8  ldr     x1, [x8, #0xec8]
  1000217bc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000217c0  mov     x29, x29
  1000217c4  bl      _objc_retainAutoreleasedReturnValue
  1000217c8  mov     x20, x0
  1000217cc  adrp    x8, #0x100417000
  1000217d0  nop
  1000217d4  ldr     x1, [x8, #0x960]
  1000217d8  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  1000217dc  mov     x21, x0
  1000217e0  mov     x0, x20
  1000217e4  bl      _objc_release
  1000217e8  cmp     w21, #0
  1000217ec  b.le    loc_100021800                            ; if ([[ADInventory sharedInventory] diamonds] <= 0)
  1000217f0  ldp     x29, x30, [sp, #0x20]
  1000217f4  ldp     x20, x19, [sp, #0x10]
  1000217f8  ldp     x22, x21, [sp], #0x30
  1000217fc  ret
loc_100021800:
  100021800  adrp    x8, #0x100417000
  100021804  nop
  100021808  ldr     x20, [x8, #0xa88]
  10002180c  mov     x0, x19
  100021810  mov     x1, x20
  100021814  bl      _objc_msgSend                            ; [self reviveButton]
  100021818  mov     x29, x29
  10002181c  bl      _objc_retainAutoreleasedReturnValue
  100021820  mov     x21, x0
  100021824  adrp    x8, #0x100417000
  100021828  nop
  10002182c  ldr     x1, [x8, #0x828]
  100021830  adrp    x8, #0x100181000
  100021834  ldr     d0, [x8, #0xa98]                         ; d0 = 0.4
  100021838  bl      _objc_msgSend                            ; [[self reviveButton] setAlpha:0.4]
  10002183c  mov     x0, x21
  100021840  bl      _objc_release
  100021844  mov     x0, x19
  100021848  mov     x1, x20
  10002184c  bl      _objc_msgSend                            ; [self reviveButton]
  100021850  mov     x29, x29
  100021854  bl      _objc_retainAutoreleasedReturnValue
  100021858  mov     x20, x0
  10002185c  adrp    x8, #0x100417000
  100021860  nop
  100021864  ldr     x1, [x8, #0x878]
  100021868  mov     w2, #0
  10002186c  bl      _objc_msgSend                            ; [[self reviveButton] setEnabled:0]
  100021870  mov     x0, x20
  100021874  ldp     x29, x30, [sp, #0x20]
  100021878  ldp     x20, x19, [sp, #0x10]
  10002187c  ldp     x22, x21, [sp], #0x30
  100021880  b       _objc_release
  100021884  b       loc_100021894
  100021888  mov     x19, x0
  10002188c  mov     x0, x21
  100021890  b       loc_10002189c
loc_100021894:
  100021894  mov     x19, x0
  100021898  mov     x0, x20
loc_10002189c:
  10002189c  bl      _objc_release
  1000218a0  mov     x0, x19
  1000218a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADReviveViewController reviveButtonPressed:]
; address 0x1000218a8  size 624  kind objc
; ======================================================================
  1000218a8  stp     x26, x25, [sp, #-0x50]!
  1000218ac  stp     x24, x23, [sp, #0x10]
  1000218b0  stp     x22, x21, [sp, #0x20]
  1000218b4  stp     x20, x19, [sp, #0x30]
  1000218b8  stp     x29, x30, [sp, #0x40]
  1000218bc  add     x29, sp, #0x40
  1000218c0  sub     sp, sp, #0x30
  1000218c4  mov     x19, x0
  1000218c8  adrp    x25, #0x10041d000
  1000218cc  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  1000218d0  adrp    x8, #0x100416000
  1000218d4  nop
  1000218d8  ldr     x20, [x8, #0xec8]
  1000218dc  mov     x1, x20
  1000218e0  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000218e4  mov     x29, x29
  1000218e8  bl      _objc_retainAutoreleasedReturnValue
  1000218ec  mov     x22, x0
  1000218f0  adrp    x8, #0x100417000
  1000218f4  nop
  1000218f8  ldr     x21, [x8, #0x960]
  1000218fc  mov     x1, x21
  100021900  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100021904  mov     x23, x0
  100021908  adrp    x8, #0x10041f000
  10002190c  ldrsw   x24, [x8, #0x6d0]                        ; ivar offset ADReviveViewController.cost (+0x140)
  100021910  ldr     w26, [x19, x24]                          ; w26 = self->cost
  100021914  mov     x0, x22
  100021918  bl      _objc_release
  10002191c  cmp     w23, w26
  100021920  b.ge    loc_10002193c                            ; if ([[ADInventory sharedInventory] diamonds] >= self->cost)
  100021924  adrp    x8, #0x100417000
  100021928  nop
  10002192c  ldr     x1, [x8, #0xae0]
  100021930  mov     x0, x19
  100021934  bl      _objc_msgSend                            ; [self showNoDiamondsAlert]
  100021938  b       loc_100021ac4
loc_10002193c:
  10002193c  adrp    x8, #0x100417000
  100021940  nop
  100021944  ldr     x1, [x8, #0xac0]
  100021948  mov     x0, x19
  10002194c  bl      _objc_msgSend                            ; [self gameplayViewController]
  100021950  mov     x29, x29
  100021954  bl      _objc_retainAutoreleasedReturnValue
  100021958  mov     x22, x0
  10002195c  adrp    x8, #0x100417000
  100021960  nop
  100021964  ldr     x1, [x8, #0xac8]
  100021968  bl      _objc_msgSend                            ; [[self gameplayViewController] revive]
  10002196c  mov     x0, x22
  100021970  bl      _objc_release
  100021974  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  100021978  mov     x1, x20
  10002197c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100021980  mov     x29, x29
  100021984  bl      _objc_retainAutoreleasedReturnValue
  100021988  mov     x20, x0
  10002198c  mov     x1, x21
  100021990  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  100021994  ldr     w8, [x19, x24]                           ; w8 = self->cost
  100021998  sub     w2, w0, w8
  10002199c  adrp    x8, #0x100417000
  1000219a0  nop
  1000219a4  ldr     x1, [x8, #0x98]
  1000219a8  mov     x0, x20
  1000219ac  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] - self->cost)]
  1000219b0  mov     x0, x20
  1000219b4  bl      _objc_release
  1000219b8  adrp    x8, #0x10041e000
  1000219bc  ldr     x0, [x8, #8]                             ; class ADTracker
  1000219c0  adrp    x8, #0x100416000
  1000219c4  nop
  1000219c8  ldr     x1, [x8, #0xac0]
  1000219cc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000219d0  mov     x29, x29
  1000219d4  bl      _objc_retainAutoreleasedReturnValue
  1000219d8  mov     x20, x0
  1000219dc  ldrsw   x2, [x19, x24]                           ; x2 = self->cost
  1000219e0  adrp    x8, #0x100417000
  1000219e4  nop
  1000219e8  ldr     x1, [x8, #0xad0]
  1000219ec  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] reviveUsedWithCost:self->cost]
  1000219f0  mov     x0, x20
  1000219f4  bl      _objc_release
  1000219f8  adrp    x8, #0x100417000
  1000219fc  nop
  100021a00  ldr     x1, [x8, #0xad8]
  100021a04  mov     x3, #0
  100021a08  adrp    x2, #0x1003bb000
  100021a0c  add     x2, x2, #0x70                            ; @"RESET_BRICK_TIME"
  100021a10  mov     x0, x19
  100021a14  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"RESET_BRICK_TIME" AndData:0]
  100021a18  adrp    x8, #0x10041f000
  100021a1c  ldrsw   x8, [x8, #0x6d8]                         ; ivar offset ADReviveViewController.reviveStandBySound (+0x150)
  100021a20  ldr     x0, [x19, x8]                            ; x0 = self->reviveStandBySound
  100021a24  adrp    x8, #0x100417000
  100021a28  nop
  100021a2c  ldr     x1, [x8, #0x568]
  100021a30  bl      _objc_msgSend                            ; [self->reviveStandBySound stop]
  100021a34  adrp    x8, #0x10041f000
  100021a38  ldrsw   x21, [x8, #0x6d4]                        ; ivar offset ADReviveViewController.revivePlaylist (+0x148)
  100021a3c  ldr     x0, [x19, x21]                           ; x0 = self->revivePlaylist
  100021a40  adrp    x8, #0x100417000
  100021a44  nop
  100021a48  ldr     x1, [x8, #0x990]
  100021a4c  adrp    x2, #0x1003bb000
  100021a50  add     x2, x2, #0x90                            ; @"revive_yes"
  100021a54  bl      _objc_msgSend                            ; [self->revivePlaylist S3DSound:@"revive_yes"]
  100021a58  mov     x29, x29
  100021a5c  bl      _objc_retainAutoreleasedReturnValue
  100021a60  mov     x20, x0
  100021a64  adrp    x8, #0x100417000
  100021a68  nop
  100021a6c  ldr     x1, [x8, #0x600]
  100021a70  bl      _objc_msgSend                            ; [[self->revivePlaylist S3DSound:@"revive_yes"] play]
  100021a74  ldr     x8, [x19, x21]                           ; x8 = self->revivePlaylist
  100021a78  adrp    x9, #0x1003b0000
  100021a7c  ldr     x9, [x9, #0x118]                         ; __NSConcreteStackBlock
  100021a80  adr     x10, #0x100021b18                        ; &-[ADReviveViewController reviveButtonPressed:]_block_invoke
  100021a84  nop
  100021a88  mov     w11, #-0x40000000
  100021a8c  adrp    x12, #0x1003b1000
  100021a90  add     x12, x12, #0x200                         ; &d_1003b1200
  100021a94  str     x9, [sp, #8]
  100021a98  stp     w11, wzr, [sp, #0x10]
  100021a9c  stp     x10, x12, [sp, #0x18]
  100021aa0  str     x8, [sp, #0x28]
  100021aa4  adrp    x8, #0x100417000
  100021aa8  nop
  100021aac  ldr     x1, [x8, #0x9c8]
  100021ab0  add     x2, sp, #8
  100021ab4  mov     x0, x20
  100021ab8  bl      _objc_msgSend                            ; [[self->revivePlaylist S3DSound:@"revive_yes"] add3DSoundEndCallback:^{-[ADReviveViewController reviveButtonPressed:]_block_invoke captures +0x20=self->revivePlaylist}]
  100021abc  mov     x0, x20
  100021ac0  bl      _objc_release
loc_100021ac4:
  100021ac4  sub     sp, x29, #0x40
  100021ac8  ldp     x29, x30, [sp, #0x40]
  100021acc  ldp     x20, x19, [sp, #0x30]
  100021ad0  ldp     x22, x21, [sp, #0x20]
  100021ad4  ldp     x24, x23, [sp, #0x10]
  100021ad8  ldp     x26, x25, [sp], #0x50
  100021adc  ret
  100021ae0  mov     x19, x0
  100021ae4  b       loc_100021b10
  100021ae8  b       loc_100021af4
  100021aec  b       loc_100021b04
  100021af0  b       loc_100021b04
loc_100021af4:
  100021af4  mov     x19, x0
  100021af8  mov     x0, x22
  100021afc  bl      _objc_release
  100021b00  b       loc_100021b10
loc_100021b04:
  100021b04  mov     x19, x0
  100021b08  mov     x0, x20
  100021b0c  bl      _objc_release
loc_100021b10:
  100021b10  mov     x0, x19
  100021b14  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADReviveViewController reviveButtonPressed:]_block_invoke
; address 0x100021b18  size 36  kind block
; ======================================================================
  100021b18  stp     x29, x30, [sp, #-0x10]!
  100021b1c  mov     x29, sp
  100021b20  ldr     x0, [x0, #0x20]                          ; x0 = captured self->revivePlaylist
  100021b24  adrp    x8, #0x100417000
  100021b28  nop
  100021b2c  ldr     x1, [x8, #0x618]
  100021b30  bl      _objc_msgSend                            ; [self->revivePlaylist deactivate]
  100021b34  ldp     x29, x30, [sp], #0x10
  100021b38  ret

; ======================================================================
; -[ADReviveViewController gameOverButtonPressed:]
; address 0x100021b3c  size 316  kind objc
; ======================================================================
  100021b3c  stp     x20, x19, [sp, #-0x20]!
  100021b40  stp     x29, x30, [sp, #0x10]
  100021b44  add     x29, sp, #0x10
  100021b48  mov     x19, x0
  100021b4c  adrp    x8, #0x10041e000
  100021b50  ldr     x0, [x8, #8]                             ; class ADTracker
  100021b54  adrp    x8, #0x100416000
  100021b58  nop
  100021b5c  ldr     x1, [x8, #0xac0]
  100021b60  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100021b64  mov     x29, x29
  100021b68  bl      _objc_retainAutoreleasedReturnValue
  100021b6c  mov     x20, x0
  100021b70  adrp    x8, #0x100417000
  100021b74  nop
  100021b78  ldr     x1, [x8, #0xae8]
  100021b7c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] gameOverButtonPressed]
  100021b80  mov     x0, x20
  100021b84  bl      _objc_release
  100021b88  adrp    x8, #0x100417000
  100021b8c  nop
  100021b90  ldr     x1, [x8, #0xac0]
  100021b94  mov     x0, x19
  100021b98  bl      _objc_msgSend                            ; [self gameplayViewController]
  100021b9c  mov     x29, x29
  100021ba0  bl      _objc_retainAutoreleasedReturnValue
  100021ba4  mov     x20, x0
  100021ba8  adrp    x8, #0x100417000
  100021bac  nop
  100021bb0  ldr     x1, [x8, #0xaf0]
  100021bb4  bl      _objc_msgSend                            ; [[self gameplayViewController] gameOver]
  100021bb8  mov     x0, x20
  100021bbc  bl      _objc_release
  100021bc0  adrp    x8, #0x10041f000
  100021bc4  ldrsw   x8, [x8, #0x6d8]                         ; ivar offset ADReviveViewController.reviveStandBySound (+0x150)
  100021bc8  ldr     x0, [x19, x8]                            ; x0 = self->reviveStandBySound
  100021bcc  adrp    x8, #0x100417000
  100021bd0  nop
  100021bd4  ldr     x1, [x8, #0x568]
  100021bd8  bl      _objc_msgSend                            ; [self->reviveStandBySound stop]
  100021bdc  adrp    x8, #0x10041f000
  100021be0  ldrsw   x8, [x8, #0x6d4]                         ; ivar offset ADReviveViewController.revivePlaylist (+0x148)
  100021be4  ldr     x0, [x19, x8]                            ; x0 = self->revivePlaylist
  100021be8  adrp    x8, #0x100417000
  100021bec  nop
  100021bf0  ldr     x1, [x8, #0x990]
  100021bf4  adrp    x2, #0x1003bb000
  100021bf8  add     x2, x2, #0xb0                            ; @"revive_no"
  100021bfc  bl      _objc_msgSend                            ; [self->revivePlaylist S3DSound:@"revive_no"]
  100021c00  mov     x29, x29
  100021c04  bl      _objc_retainAutoreleasedReturnValue
  100021c08  mov     x19, x0
  100021c0c  adrp    x8, #0x100416000
  100021c10  nop
  100021c14  ldr     x1, [x8, #0xcb0]
  100021c18  adrp    x8, #0x100181000
  100021c1c  ldr     s0, [x8, #0xaa0]                         ; s0 = 0.200000003
  100021c20  bl      _objc_msgSend                            ; [[self->revivePlaylist S3DSound:@"revive_no"] setGain:0.2]
  100021c24  adrp    x8, #0x100417000
  100021c28  nop
  100021c2c  ldr     x1, [x8, #0x600]
  100021c30  mov     x0, x19
  100021c34  bl      _objc_msgSend                            ; [[self->revivePlaylist S3DSound:@"revive_no"] play]
  100021c38  mov     x0, x19
  100021c3c  ldp     x29, x30, [sp, #0x10]
  100021c40  ldp     x20, x19, [sp], #0x20
  100021c44  b       _objc_release
  100021c48  mov     x20, x0
  100021c4c  b       loc_100021c70
  100021c50  mov     x20, x0
  100021c54  mov     x0, x19
  100021c58  b       loc_100021c6c
  100021c5c  b       loc_100021c60
loc_100021c60:
  100021c60  mov     x1, x20
  100021c64  mov     x20, x0
  100021c68  mov     x0, x1
loc_100021c6c:
  100021c6c  bl      _objc_release
loc_100021c70:
  100021c70  mov     x0, x20
  100021c74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADReviveViewController didReceiveMemoryWarning]
; address 0x100021c78  size 60  kind objc
; ======================================================================
  100021c78  stp     x29, x30, [sp, #-0x10]!
  100021c7c  mov     x29, sp
  100021c80  sub     sp, sp, #0x10
  100021c84  str     x0, [sp]
  100021c88  adrp    x8, #0x10041e000
  100021c8c  ldr     x8, [x8, #0xc48]
  100021c90  str     x8, [sp, #8]
  100021c94  adrp    x8, #0x100416000
  100021c98  nop
  100021c9c  ldr     x1, [x8, #0xbf8]
  100021ca0  mov     x0, sp
  100021ca4  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  100021ca8  mov     sp, x29
  100021cac  ldp     x29, x30, [sp], #0x10
  100021cb0  ret

; ======================================================================
; -[ADReviveViewController accessibilityPerformMagicTap]
; address 0x100021cb4  size 40  kind objc
; ======================================================================
  100021cb4  stp     x29, x30, [sp, #-0x10]!
  100021cb8  mov     x29, sp
  100021cbc  adrp    x8, #0x100417000
  100021cc0  nop
  100021cc4  ldr     x1, [x8, #0xaf8]
  100021cc8  mov     x2, #0
  100021ccc  bl      _objc_msgSend                            ; [self gameOverButtonPressed:0]
  100021cd0  mov     w0, #1
  100021cd4  ldp     x29, x30, [sp], #0x10
  100021cd8  ret

; ======================================================================
; -[ADReviveViewController gameplayViewController]
; address 0x100021cdc  size 32  kind objc
; ======================================================================
  100021cdc  stp     x29, x30, [sp, #-0x10]!
  100021ce0  mov     x29, sp
  100021ce4  adrp    x8, #0x10041f000
  100021ce8  ldrsw   x8, [x8, #0x6dc]                         ; ivar offset ADReviveViewController._gameplayViewController (+0x158)
  100021cec  add     x0, x0, x8
  100021cf0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100021cf4  ldp     x29, x30, [sp], #0x10
  100021cf8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADReviveViewController setGameplayViewController:]
; address 0x100021cfc  size 20  kind objc
; ======================================================================
  100021cfc  adrp    x8, #0x10041f000
  100021d00  ldrsw   x8, [x8, #0x6dc]                         ; ivar offset ADReviveViewController._gameplayViewController (+0x158)
  100021d04  add     x0, x0, x8
  100021d08  mov     x1, x2
  100021d0c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADReviveViewController reviveButton]
; address 0x100021d10  size 16  kind objc
; ======================================================================
  100021d10  adrp    x8, #0x10041f000
  100021d14  ldrsw   x8, [x8, #0x6e0]                         ; ivar offset ADReviveViewController._reviveButton (+0x160)
  100021d18  ldr     x0, [x0, x8]                             ; x0 = self->_reviveButton
  100021d1c  ret

; ======================================================================
; -[ADReviveViewController setReviveButton:]
; address 0x100021d20  size 56  kind objc
; ======================================================================
  100021d20  stp     x20, x19, [sp, #-0x20]!
  100021d24  stp     x29, x30, [sp, #0x10]
  100021d28  add     x29, sp, #0x10
  100021d2c  mov     x19, x0
  100021d30  adrp    x8, #0x10041f000
  100021d34  ldrsw   x20, [x8, #0x6e0]                        ; ivar offset ADReviveViewController._reviveButton (+0x160)
  100021d38  mov     x0, x2
  100021d3c  bl      _objc_retain
  100021d40  ldr     x8, [x19, x20]                           ; x8 = self->_reviveButton
  100021d44  str     x0, [x19, x20]                           ; self->_reviveButton = arg1
  100021d48  mov     x0, x8
  100021d4c  ldp     x29, x30, [sp, #0x10]
  100021d50  ldp     x20, x19, [sp], #0x20
  100021d54  b       _objc_release

; ======================================================================
; -[ADReviveViewController gameOverButton]
; address 0x100021d58  size 16  kind objc
; ======================================================================
  100021d58  adrp    x8, #0x10041f000
  100021d5c  ldrsw   x8, [x8, #0x6e4]                         ; ivar offset ADReviveViewController._gameOverButton (+0x168)
  100021d60  ldr     x0, [x0, x8]                             ; x0 = self->_gameOverButton
  100021d64  ret

; ======================================================================
; -[ADReviveViewController setGameOverButton:]
; address 0x100021d68  size 56  kind objc
; ======================================================================
  100021d68  stp     x20, x19, [sp, #-0x20]!
  100021d6c  stp     x29, x30, [sp, #0x10]
  100021d70  add     x29, sp, #0x10
  100021d74  mov     x19, x0
  100021d78  adrp    x8, #0x10041f000
  100021d7c  ldrsw   x20, [x8, #0x6e4]                        ; ivar offset ADReviveViewController._gameOverButton (+0x168)
  100021d80  mov     x0, x2
  100021d84  bl      _objc_retain
  100021d88  ldr     x8, [x19, x20]                           ; x8 = self->_gameOverButton
  100021d8c  str     x0, [x19, x20]                           ; self->_gameOverButton = arg1
  100021d90  mov     x0, x8
  100021d94  ldp     x29, x30, [sp, #0x10]
  100021d98  ldp     x20, x19, [sp], #0x20
  100021d9c  b       _objc_release

; ======================================================================
; -[ADReviveViewController tipTextView]
; address 0x100021da0  size 16  kind objc
; ======================================================================
  100021da0  adrp    x8, #0x10041f000
  100021da4  ldrsw   x8, [x8, #0x6e8]                         ; ivar offset ADReviveViewController._tipTextView (+0x170)
  100021da8  ldr     x0, [x0, x8]                             ; x0 = self->_tipTextView
  100021dac  ret

; ======================================================================
; -[ADReviveViewController setTipTextView:]
; address 0x100021db0  size 56  kind objc
; ======================================================================
  100021db0  stp     x20, x19, [sp, #-0x20]!
  100021db4  stp     x29, x30, [sp, #0x10]
  100021db8  add     x29, sp, #0x10
  100021dbc  mov     x19, x0
  100021dc0  adrp    x8, #0x10041f000
  100021dc4  ldrsw   x20, [x8, #0x6e8]                        ; ivar offset ADReviveViewController._tipTextView (+0x170)
  100021dc8  mov     x0, x2
  100021dcc  bl      _objc_retain
  100021dd0  ldr     x8, [x19, x20]                           ; x8 = self->_tipTextView
  100021dd4  str     x0, [x19, x20]                           ; self->_tipTextView = arg1
  100021dd8  mov     x0, x8
  100021ddc  ldp     x29, x30, [sp, #0x10]
  100021de0  ldp     x20, x19, [sp], #0x20
  100021de4  b       _objc_release

; ======================================================================
; -[ADReviveViewController tipLabel]
; address 0x100021de8  size 16  kind objc
; ======================================================================
  100021de8  adrp    x8, #0x10041f000
  100021dec  ldrsw   x8, [x8, #0x6ec]                         ; ivar offset ADReviveViewController._tipLabel (+0x178)
  100021df0  ldr     x0, [x0, x8]                             ; x0 = self->_tipLabel
  100021df4  ret

; ======================================================================
; -[ADReviveViewController setTipLabel:]
; address 0x100021df8  size 56  kind objc
; ======================================================================
  100021df8  stp     x20, x19, [sp, #-0x20]!
  100021dfc  stp     x29, x30, [sp, #0x10]
  100021e00  add     x29, sp, #0x10
  100021e04  mov     x19, x0
  100021e08  adrp    x8, #0x10041f000
  100021e0c  ldrsw   x20, [x8, #0x6ec]                        ; ivar offset ADReviveViewController._tipLabel (+0x178)
  100021e10  mov     x0, x2
  100021e14  bl      _objc_retain
  100021e18  ldr     x8, [x19, x20]                           ; x8 = self->_tipLabel
  100021e1c  str     x0, [x19, x20]                           ; self->_tipLabel = arg1
  100021e20  mov     x0, x8
  100021e24  ldp     x29, x30, [sp, #0x10]
  100021e28  ldp     x20, x19, [sp], #0x20
  100021e2c  b       _objc_release

; ======================================================================
; -[ADReviveViewController .cxx_destruct]
; address 0x100021e30  size 160  kind objc
; ======================================================================
  100021e30  stp     x20, x19, [sp, #-0x20]!
  100021e34  stp     x29, x30, [sp, #0x10]
  100021e38  add     x29, sp, #0x10
  100021e3c  mov     x19, x0
  100021e40  adrp    x8, #0x10041f000
  100021e44  ldrsw   x8, [x8, #0x6ec]                         ; ivar offset ADReviveViewController._tipLabel (+0x178)
  100021e48  add     x0, x19, x8
  100021e4c  mov     x1, #0
  100021e50  bl      _objc_storeStrong
  100021e54  adrp    x8, #0x10041f000
  100021e58  ldrsw   x8, [x8, #0x6e8]                         ; ivar offset ADReviveViewController._tipTextView (+0x170)
  100021e5c  add     x0, x19, x8
  100021e60  mov     x1, #0
  100021e64  bl      _objc_storeStrong
  100021e68  adrp    x8, #0x10041f000
  100021e6c  ldrsw   x8, [x8, #0x6e4]                         ; ivar offset ADReviveViewController._gameOverButton (+0x168)
  100021e70  add     x0, x19, x8
  100021e74  mov     x1, #0
  100021e78  bl      _objc_storeStrong
  100021e7c  adrp    x8, #0x10041f000
  100021e80  ldrsw   x8, [x8, #0x6e0]                         ; ivar offset ADReviveViewController._reviveButton (+0x160)
  100021e84  add     x0, x19, x8
  100021e88  mov     x1, #0
  100021e8c  bl      _objc_storeStrong
  100021e90  adrp    x8, #0x10041f000
  100021e94  ldrsw   x8, [x8, #0x6dc]                         ; ivar offset ADReviveViewController._gameplayViewController (+0x158)
  100021e98  add     x0, x19, x8
  100021e9c  bl      _objc_destroyWeak
  100021ea0  adrp    x8, #0x10041f000
  100021ea4  ldrsw   x8, [x8, #0x6d8]                         ; ivar offset ADReviveViewController.reviveStandBySound (+0x150)
  100021ea8  add     x0, x19, x8
  100021eac  mov     x1, #0
  100021eb0  bl      _objc_storeStrong
  100021eb4  mov     x1, #0
  100021eb8  adrp    x8, #0x10041f000
  100021ebc  ldrsw   x8, [x8, #0x6d4]                         ; ivar offset ADReviveViewController.revivePlaylist (+0x148)
  100021ec0  add     x0, x19, x8
  100021ec4  ldp     x29, x30, [sp, #0x10]
  100021ec8  ldp     x20, x19, [sp], #0x20
  100021ecc  b       _objc_storeStrong
