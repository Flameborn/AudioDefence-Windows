// unit Accessible_ADGameOverEndlessViewController — 33 functions
//   0x100099c68     280  -[Accessible_ADGameOverEndlessViewController initWithNibName:bundle:]
//   0x100099d80       4  -[Accessible_ADGameOverEndlessViewController initMissions]
//   0x100099d84     460  -[Accessible_ADGameOverEndlessViewController loadView]
//   0x100099f50     992  -[Accessible_ADGameOverEndlessViewController viewDidLoad]
//   0x10009a330     160  -[Accessible_ADGameOverEndlessViewController backButtonPressed]
//   0x10009a3d0     396  -[Accessible_ADGameOverEndlessViewController tableView:willDisplayCell:forRowAtIndexPath:]
//   0x10009a55c     140  -[Accessible_ADGameOverEndlessViewController tableView:heightForRowAtIndexPath:]
//   0x10009a5e8     140  -[Accessible_ADGameOverEndlessViewController tableView:heightForHeaderInSection:]
//   0x10009a674      28  -[Accessible_ADGameOverEndlessViewController tableView:numberOfRowsInSection:]
//   0x10009a690     524  -[Accessible_ADGameOverEndlessViewController tableView:viewForHeaderInSection:]
//   0x10009a89c       8  -[Accessible_ADGameOverEndlessViewController numberOfSectionsInTableView:]
//   0x10009a8a4     476  -[Accessible_ADGameOverEndlessViewController tableView:cellForRowAtIndexPath:]
//   0x10009aa80     820  -[Accessible_ADGameOverEndlessViewController cellForRewardsAtIndex:]
//   0x10009adb4    1200  -[Accessible_ADGameOverEndlessViewController cellForMissionAtIndex:]
//   0x10009b264     708  -[Accessible_ADGameOverEndlessViewController skipMission:]
//   0x10009b528     104  -[Accessible_ADGameOverEndlessViewController skipMission:]_block_invoke
//   0x10009b590       8  sub_10009b590
//   0x10009b598       8  sub_10009b598
//   0x10009b5a0     556  -[Accessible_ADGameOverEndlessViewController cellForMissionCompletedAtIndex:]
//   0x10009b7cc    1704  -[Accessible_ADGameOverEndlessViewController cellForStatsAtIndex:]
//   0x10009be74     224  -[Accessible_ADGameOverEndlessViewController timeStringFromSeconds:]
//   0x10009bf54     164  -[Accessible_ADGameOverEndlessViewController playAgainButtonPressed:]
//   0x10009bff8      40  -[Accessible_ADGameOverEndlessViewController accessibilityPerformMagicTap]
//   0x10009c020     168  -[Accessible_ADGameOverEndlessViewController viewWillAppear:]
//   0x10009c0c8       4  -[Accessible_ADGameOverEndlessViewController scrollViewDidScroll:]
//   0x10009c0cc     696  -[Accessible_ADGameOverEndlessViewController AccessibleTwitterButtonPressed:]
//   0x10009c384      16  -[Accessible_ADGameOverEndlessViewController completedMissions]
//   0x10009c394      56  -[Accessible_ADGameOverEndlessViewController setCompletedMissions:]
//   0x10009c3cc      16  -[Accessible_ADGameOverEndlessViewController tableView]
//   0x10009c3dc      56  -[Accessible_ADGameOverEndlessViewController setTableView:]
//   0x10009c414      16  -[Accessible_ADGameOverEndlessViewController enemyData]
//   0x10009c424      56  -[Accessible_ADGameOverEndlessViewController setEnemyData:]
//   0x10009c45c      84  -[Accessible_ADGameOverEndlessViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController initWithNibName:bundle:]
; address 0x100099c68  size 280  kind objc
; ======================================================================
  100099c68  stp     x22, x21, [sp, #-0x30]!
  100099c6c  stp     x20, x19, [sp, #0x10]
  100099c70  stp     x29, x30, [sp, #0x20]
  100099c74  add     x29, sp, #0x20
  100099c78  sub     sp, sp, #0x10
  100099c7c  mov     x20, x3
  100099c80  mov     x21, x0
  100099c84  mov     x0, x2
  100099c88  bl      _objc_retain
  100099c8c  mov     x19, x0
  100099c90  mov     x0, x20
  100099c94  bl      _objc_retain
  100099c98  mov     x20, x0
  100099c9c  str     x21, [sp]
  100099ca0  adrp    x8, #0x10041e000
  100099ca4  ldr     x8, [x8, #0xeb0]
  100099ca8  str     x8, [sp, #8]
  100099cac  adrp    x8, #0x100416000
  100099cb0  nop
  100099cb4  ldr     x1, [x8, #0xb40]
  100099cb8  mov     x21, #0
  100099cbc  mov     x0, sp
  100099cc0  mov     x2, x19
  100099cc4  mov     x3, x20
  100099cc8  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  100099ccc  mov     x22, x0
  100099cd0  cbz     x22, loc_100099d34                       ; if (self == 0)
  100099cd4  mov     x21, x22
  100099cd8  adrp    x8, #0x10041d000
  100099cdc  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100099ce0  adrp    x8, #0x100416000
  100099ce4  nop
  100099ce8  ldr     x1, [x8, #0xac8]
  100099cec  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100099cf0  mov     x21, x22
  100099cf4  adrp    x8, #0x100416000
  100099cf8  nop
  100099cfc  ldr     x1, [x8, #0xab8]
  100099d00  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100099d04  mov     x21, x22
  100099d08  adrp    x8, #0x100420000
  100099d0c  ldrsw   x9, [x8, #0x28]                          ; ivar offset Accessible_ADGameOverEndlessViewController._completedMissions (+0x140)
  100099d10  ldr     x8, [x22, x9]                            ; x8 = self->_completedMissions
  100099d14  str     x0, [x22, x9]                            ; self->_completedMissions = [[NSMutableArray alloc] init]
  100099d18  mov     x0, x8
  100099d1c  bl      _objc_release
  100099d20  adrp    x8, #0x10041a000
  100099d24  nop
  100099d28  ldr     x1, [x8, #0x1a0]
  100099d2c  mov     x0, x22
  100099d30  bl      _objc_msgSend                            ; [self initMissions]
loc_100099d34:
  100099d34  mov     x0, x20
  100099d38  bl      _objc_release
  100099d3c  mov     x0, x19
  100099d40  bl      _objc_release
  100099d44  mov     x0, x22
  100099d48  sub     sp, x29, #0x20
  100099d4c  ldp     x29, x30, [sp, #0x20]
  100099d50  ldp     x20, x19, [sp, #0x10]
  100099d54  ldp     x22, x21, [sp], #0x30
  100099d58  ret
  100099d5c  mov     x22, x0
  100099d60  mov     x0, x20
  100099d64  bl      _objc_release
  100099d68  mov     x0, x19
  100099d6c  bl      _objc_release
  100099d70  mov     x0, x21
  100099d74  bl      _objc_release
  100099d78  mov     x0, x22
  100099d7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController initMissions]
; address 0x100099d80  size 4  kind objc
; ======================================================================
  100099d80  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController loadView]
; address 0x100099d84  size 460  kind objc
; ======================================================================
  100099d84  stp     x26, x25, [sp, #-0x50]!
  100099d88  stp     x24, x23, [sp, #0x10]
  100099d8c  stp     x22, x21, [sp, #0x20]
  100099d90  stp     x20, x19, [sp, #0x30]
  100099d94  stp     x29, x30, [sp, #0x40]
  100099d98  add     x29, sp, #0x40
  100099d9c  mov     x19, x0
  100099da0  adrp    x25, #0x10041e000
  100099da4  ldr     x0, [x25, #0x50]                         ; class UIDevice
  100099da8  adrp    x8, #0x100417000
  100099dac  nop
  100099db0  ldr     x24, [x8, #0x788]
  100099db4  mov     x1, x24
  100099db8  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100099dbc  mov     x29, x29
  100099dc0  bl      _objc_retainAutoreleasedReturnValue
  100099dc4  mov     x20, x0
  100099dc8  adrp    x8, #0x100418000
  100099dcc  nop
  100099dd0  ldr     x22, [x8, #0x9e8]
  100099dd4  mov     x1, x22
  100099dd8  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  100099ddc  mov     x29, x29
  100099de0  bl      _objc_retainAutoreleasedReturnValue
  100099de4  mov     x21, x0
  100099de8  adrp    x8, #0x100416000
  100099dec  nop
  100099df0  ldr     x23, [x8, #0xf58]
  100099df4  adrp    x2, #0x1003bd000
  100099df8  add     x2, x2, #0x30                            ; @"iPhone"
  100099dfc  mov     x1, x23
  100099e00  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPhone"]
  100099e04  tbz     w0, #0, loc_100099e10                    ; if (!([[[UIDevice currentDevice] model] isEqualToString:@"iPhone"] & 1))
  100099e08  mov     w22, #1
  100099e0c  b       loc_100099e60
loc_100099e10:
  100099e10  ldr     x0, [x25, #0x50]                         ; class UIDevice
  100099e14  mov     x1, x24
  100099e18  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100099e1c  mov     x29, x29
  100099e20  bl      _objc_retainAutoreleasedReturnValue
  100099e24  mov     x24, x0
  100099e28  mov     x1, x22
  100099e2c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] model]
  100099e30  mov     x29, x29
  100099e34  bl      _objc_retainAutoreleasedReturnValue
  100099e38  mov     x25, x0
  100099e3c  adrp    x2, #0x1003bd000
  100099e40  add     x2, x2, #0x50                            ; @"iPod touch"
  100099e44  mov     x1, x23
  100099e48  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] model] isEqualToString:@"iPod touch"]
  100099e4c  mov     x22, x0
  100099e50  mov     x0, x25
  100099e54  bl      _objc_release
  100099e58  mov     x0, x24
  100099e5c  bl      _objc_release
loc_100099e60:
  100099e60  mov     x0, x21
  100099e64  bl      _objc_release
  100099e68  mov     x0, x20
  100099e6c  bl      _objc_release
  100099e70  adrp    x8, #0x10041d000
  100099e74  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100099e78  adrp    x8, #0x100416000
  100099e7c  nop
  100099e80  ldr     x1, [x8, #0xb58]
  100099e84  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100099e88  mov     x29, x29
  100099e8c  bl      _objc_retainAutoreleasedReturnValue
  100099e90  mov     x20, x0
  100099e94  adrp    x8, #0x100418000
  100099e98  add     x8, x8, #0x9f8                           ; &@selector(loadNibNamed:owner:options:)
  100099e9c  ldr     x1, [x8]
  100099ea0  cbz     w22, loc_100099ec4                       ; if (w22 == 0)
  100099ea4  mov     x4, #0
  100099ea8  adrp    x2, #0x1003bf000
  100099eac  add     x2, x2, #0x7f0                           ; @"Accessible_ADGameOverEndlessViewController"
  100099eb0  mov     x0, x20
  100099eb4  mov     x3, x19
  100099eb8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"Accessible_ADGameOverEndlessViewController" owner:self options:0]
  100099ebc  mov     x29, x29
  100099ec0  b       loc_100099ee0
loc_100099ec4:
  100099ec4  mov     x4, #0
  100099ec8  adrp    x2, #0x1003c0000
  100099ecc  add     x2, x2, #0x410                           ; @"Accessible_ADGameOverEndlessViewController_iPad"
  100099ed0  mov     x0, x20
  100099ed4  mov     x3, x19
  100099ed8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] loadNibNamed:@"Accessible_ADGameOverEndlessViewController_iPad" owner:self options:0]
  100099edc  mov     x29, x29
loc_100099ee0:
  100099ee0  bl      _objc_retainAutoreleasedReturnValue
  100099ee4  bl      _objc_release
  100099ee8  mov     x0, x20
  100099eec  ldp     x29, x30, [sp, #0x40]
  100099ef0  ldp     x20, x19, [sp, #0x30]
  100099ef4  ldp     x22, x21, [sp, #0x20]
  100099ef8  ldp     x24, x23, [sp, #0x10]
  100099efc  ldp     x26, x25, [sp], #0x50
  100099f00  b       _objc_release
  100099f04  mov     x19, x0
  100099f08  b       loc_100099f2c
  100099f0c  b       loc_100099f3c
  100099f10  mov     x19, x0
  100099f14  b       loc_100099f24
  100099f18  mov     x19, x0
  100099f1c  mov     x0, x25
  100099f20  bl      _objc_release
loc_100099f24:
  100099f24  mov     x0, x24
  100099f28  bl      _objc_release
loc_100099f2c:
  100099f2c  mov     x0, x21
  100099f30  bl      _objc_release
  100099f34  b       loc_100099f40
  100099f38  b       loc_100099f3c
loc_100099f3c:
  100099f3c  mov     x19, x0
loc_100099f40:
  100099f40  mov     x0, x20
  100099f44  bl      _objc_release
  100099f48  mov     x0, x19
  100099f4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController viewDidLoad]
; address 0x100099f50  size 992  kind objc
; ======================================================================
  100099f50  stp     d9, d8, [sp, #-0x60]!
  100099f54  stp     x26, x25, [sp, #0x10]
  100099f58  stp     x24, x23, [sp, #0x20]
  100099f5c  stp     x22, x21, [sp, #0x30]
  100099f60  stp     x20, x19, [sp, #0x40]
  100099f64  stp     x29, x30, [sp, #0x50]
  100099f68  add     x29, sp, #0x50
  100099f6c  mov     x20, x0
  100099f70  adrp    x8, #0x100417000
  100099f74  nop
  100099f78  ldr     x21, [x8, #0x2a8]
  100099f7c  mov     x1, x21
  100099f80  bl      _objc_msgSend                            ; [self statusBarViewController]
  100099f84  mov     x29, x29
  100099f88  bl      _objc_retainAutoreleasedReturnValue
  100099f8c  mov     x22, x0
  100099f90  adrp    x8, #0x100417000
  100099f94  nop
  100099f98  ldr     x1, [x8, #0x2c8]
  100099f9c  bl      _objc_msgSend                            ; [[self statusBarViewController] pageTitle]
  100099fa0  mov     x29, x29
  100099fa4  bl      _objc_retainAutoreleasedReturnValue
  100099fa8  mov     x23, x0
  100099fac  adrp    x8, #0x100416000
  100099fb0  nop
  100099fb4  ldr     x1, [x8, #0xb68]
  100099fb8  adrp    x2, #0x1003c0000
  100099fbc  add     x2, x2, #0x430                           ; @"GAME OVER"
  100099fc0  bl      _objc_msgSend                            ; [[[self statusBarViewController] pageTitle] setText:@"GAME OVER"]
  100099fc4  mov     x0, x23
  100099fc8  bl      _objc_release
  100099fcc  mov     x0, x22
  100099fd0  bl      _objc_release
  100099fd4  adrp    x8, #0x10041d000
  100099fd8  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  100099fdc  adrp    x8, #0x100416000
  100099fe0  nop
  100099fe4  ldr     x1, [x8, #0xe10]
  100099fe8  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100099fec  mov     x29, x29
  100099ff0  bl      _objc_retainAutoreleasedReturnValue
  100099ff4  mov     x22, x0
  100099ff8  adrp    x24, #0x10041d000
  100099ffc  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  10009a000  adrp    x8, #0x100417000
  10009a004  nop
  10009a008  ldr     x19, [x8, #0x228]
  10009a00c  mov     x1, x19
  10009a010  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009a014  mov     x29, x29
  10009a018  bl      _objc_retainAutoreleasedReturnValue
  10009a01c  mov     x23, x0
  10009a020  adrp    x8, #0x100417000
  10009a024  nop
  10009a028  ldr     x1, [x8, #0xda0]
  10009a02c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10009a030  mov     x2, x0
  10009a034  adrp    x8, #0x100419000
  10009a038  nop
  10009a03c  ldr     x1, [x8, #0x170]
  10009a040  mov     x0, x22
  10009a044  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveScore:[[ADInGameStats singleton] gameScore]]
  10009a048  mov     x0, x23
  10009a04c  bl      _objc_release
  10009a050  mov     x0, x22
  10009a054  bl      _objc_release
  10009a058  adrp    x8, #0x10041a000
  10009a05c  nop
  10009a060  ldr     x1, [x8, #0x1a8]
  10009a064  mov     x0, x20
  10009a068  bl      _objc_msgSend                            ; [self resetCardsModifiersIfNeeded]
  10009a06c  adrp    x8, #0x10041e000
  10009a070  ldr     x0, [x8, #0x50]                          ; class UIDevice
  10009a074  adrp    x8, #0x100417000
  10009a078  nop
  10009a07c  ldr     x1, [x8, #0x788]
  10009a080  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  10009a084  mov     x29, x29
  10009a088  bl      _objc_retainAutoreleasedReturnValue
  10009a08c  mov     x22, x0
  10009a090  adrp    x8, #0x100418000
  10009a094  nop
  10009a098  ldr     x1, [x8, #0xa90]
  10009a09c  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  10009a0a0  mov     x29, x29
  10009a0a4  bl      _objc_retainAutoreleasedReturnValue
  10009a0a8  mov     x23, x0
  10009a0ac  adrp    x8, #0x100417000
  10009a0b0  nop
  10009a0b4  ldr     x1, [x8, #0x48]
  10009a0b8  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] floatValue]
  10009a0bc  mov     v8.16b, v0.16b
  10009a0c0  mov     x0, x23
  10009a0c4  bl      _objc_release
  10009a0c8  mov     x0, x22
  10009a0cc  bl      _objc_release
  10009a0d0  fmov    s0, #7.00000000
  10009a0d4  fcmp    s8, s0
  10009a0d8  b.lt    loc_10009a0f0                            ; if ([[[UIDevice currentDevice] systemVersion] floatValue] < (or unordered) 7)
  10009a0dc  adrp    x8, #0x100418000
  10009a0e0  nop
  10009a0e4  ldr     x1, [x8, #0xa28]
  10009a0e8  mov     x0, x20
  10009a0ec  bl      _objc_msgSend                            ; [self reportScoreToGameCenter]
loc_10009a0f0:
  10009a0f0  mov     x0, x20
  10009a0f4  mov     x1, x21
  10009a0f8  bl      _objc_msgSend                            ; [self statusBarViewController]
  10009a0fc  mov     x29, x29
  10009a100  bl      _objc_retainAutoreleasedReturnValue
  10009a104  mov     x22, x0
  10009a108  bl      _objc_release
  10009a10c  cbnz    x22, loc_10009a124                       ; if ([self statusBarViewController] != 0)
  10009a110  adrp    x8, #0x100418000
  10009a114  nop
  10009a118  ldr     x1, [x8, #0x6f0]
  10009a11c  mov     x0, x20
  10009a120  bl      _objc_msgSend                            ; [self loadStatusBar]
loc_10009a124:
  10009a124  mov     x0, x20
  10009a128  mov     x1, x21
  10009a12c  bl      _objc_msgSend                            ; [self statusBarViewController]
  10009a130  mov     x29, x29
  10009a134  bl      _objc_retainAutoreleasedReturnValue
  10009a138  mov     x22, x0
  10009a13c  adrp    x8, #0x100417000
  10009a140  nop
  10009a144  ldr     x1, [x8, #0x2b0]
  10009a148  mov     w2, #1
  10009a14c  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  10009a150  mov     x0, x22
  10009a154  bl      _objc_release
  10009a158  mov     x0, x20
  10009a15c  mov     x1, x21
  10009a160  bl      _objc_msgSend                            ; [self statusBarViewController]
  10009a164  mov     x29, x29
  10009a168  bl      _objc_retainAutoreleasedReturnValue
  10009a16c  mov     x20, x0
  10009a170  adrp    x8, #0x100418000
  10009a174  nop
  10009a178  ldr     x1, [x8, #0x390]
  10009a17c  mov     w2, #1
  10009a180  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryLoadoutEnabled:1]
  10009a184  mov     x0, x20
  10009a188  bl      _objc_release
  10009a18c  adrp    x25, #0x10041d000
  10009a190  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10009a194  adrp    x8, #0x100416000
  10009a198  nop
  10009a19c  ldr     x21, [x8, #0xec8]
  10009a1a0  mov     x1, x21
  10009a1a4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10009a1a8  mov     x29, x29
  10009a1ac  bl      _objc_retainAutoreleasedReturnValue
  10009a1b0  mov     x20, x0
  10009a1b4  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  10009a1b8  mov     x1, x19
  10009a1bc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009a1c0  mov     x29, x29
  10009a1c4  bl      _objc_retainAutoreleasedReturnValue
  10009a1c8  mov     x22, x0
  10009a1cc  adrp    x8, #0x100417000
  10009a1d0  nop
  10009a1d4  ldr     x1, [x8, #0xdb0]
  10009a1d8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  10009a1dc  mov     x23, x0
  10009a1e0  adrp    x8, #0x100417000
  10009a1e4  nop
  10009a1e8  ldr     x1, [x8, #0x958]
  10009a1ec  mov     x0, x20
  10009a1f0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10009a1f4  add     w2, w0, w23
  10009a1f8  adrp    x8, #0x100417000
  10009a1fc  nop
  10009a200  ldr     x1, [x8, #0x90]
  10009a204  mov     x0, x20
  10009a208  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:([[ADInventory sharedInventory] coins] + [[ADInGameStats singleton] totalCoins])]
  10009a20c  mov     x0, x22
  10009a210  bl      _objc_release
  10009a214  mov     x0, x20
  10009a218  bl      _objc_release
  10009a21c  ldr     x0, [x25, #0xf70]                        ; class ADInventory
  10009a220  mov     x1, x21
  10009a224  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10009a228  mov     x29, x29
  10009a22c  bl      _objc_retainAutoreleasedReturnValue
  10009a230  mov     x20, x0
  10009a234  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  10009a238  mov     x1, x19
  10009a23c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009a240  mov     x29, x29
  10009a244  bl      _objc_retainAutoreleasedReturnValue
  10009a248  mov     x21, x0
  10009a24c  adrp    x8, #0x100417000
  10009a250  nop
  10009a254  ldr     x1, [x8, #0xdb8]
  10009a258  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  10009a25c  mov     x19, x0
  10009a260  adrp    x8, #0x100417000
  10009a264  nop
  10009a268  ldr     x1, [x8, #0x960]
  10009a26c  mov     x0, x20
  10009a270  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10009a274  add     w2, w0, w19
  10009a278  adrp    x8, #0x100417000
  10009a27c  nop
  10009a280  ldr     x1, [x8, #0x98]
  10009a284  mov     x0, x20
  10009a288  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:([[ADInventory sharedInventory] diamonds] + [[ADInGameStats singleton] diamondLoot])]
  10009a28c  mov     x0, x21
  10009a290  bl      _objc_release
  10009a294  mov     x0, x20
  10009a298  ldp     x29, x30, [sp, #0x50]
  10009a29c  ldp     x20, x19, [sp, #0x40]
  10009a2a0  ldp     x22, x21, [sp, #0x30]
  10009a2a4  ldp     x24, x23, [sp, #0x20]
  10009a2a8  ldp     x26, x25, [sp, #0x10]
  10009a2ac  ldp     d9, d8, [sp], #0x60
  10009a2b0  b       _objc_release
  10009a2b4  mov     x19, x0
  10009a2b8  mov     x0, x22
  10009a2bc  b       loc_10009a2c8
  10009a2c0  mov     x19, x0
  10009a2c4  mov     x0, x21
loc_10009a2c8:
  10009a2c8  bl      _objc_release
loc_10009a2cc:
  10009a2cc  mov     x0, x20
  10009a2d0  b       loc_10009a30c
  10009a2d4  b       loc_10009a2f4
  10009a2d8  mov     x19, x0
  10009a2dc  b       loc_10009a308
  10009a2e0  b       loc_10009a2f4
  10009a2e4  mov     x19, x0
  10009a2e8  b       loc_10009a308
  10009a2ec  mov     x19, x0
  10009a2f0  b       loc_10009a308
loc_10009a2f4:
  10009a2f4  mov     x19, x0
  10009a2f8  mov     x0, x23
  10009a2fc  bl      _objc_release
  10009a300  b       loc_10009a308
  10009a304  mov     x19, x0
loc_10009a308:
  10009a308  mov     x0, x22
loc_10009a30c:
  10009a30c  bl      _objc_release
  10009a310  mov     x0, x19
  10009a314  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009a318  mov     x19, x0
  10009a31c  b       loc_10009a2cc
  10009a320  mov     x19, x0
  10009a324  b       loc_10009a2cc
  10009a328  mov     x19, x0
  10009a32c  b       loc_10009a2cc

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController backButtonPressed]
; address 0x10009a330  size 160  kind objc
; ======================================================================
  10009a330  stp     x22, x21, [sp, #-0x30]!
  10009a334  stp     x20, x19, [sp, #0x10]
  10009a338  stp     x29, x30, [sp, #0x20]
  10009a33c  add     x29, sp, #0x20
  10009a340  adrp    x8, #0x10041d000
  10009a344  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10009a348  adrp    x8, #0x100416000
  10009a34c  nop
  10009a350  ldr     x1, [x8, #0xb28]
  10009a354  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10009a358  mov     x29, x29
  10009a35c  bl      _objc_retainAutoreleasedReturnValue
  10009a360  mov     x19, x0
  10009a364  adrp    x8, #0x100416000
  10009a368  nop
  10009a36c  ldr     x1, [x8, #0xc18]
  10009a370  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10009a374  mov     x29, x29
  10009a378  bl      _objc_retainAutoreleasedReturnValue
  10009a37c  mov     x20, x0
  10009a380  adrp    x8, #0x100416000
  10009a384  nop
  10009a388  ldr     x1, [x8, #0xc10]
  10009a38c  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToMainMenu]
  10009a390  mov     x0, x20
  10009a394  bl      _objc_release
  10009a398  mov     x0, x19
  10009a39c  ldp     x29, x30, [sp, #0x20]
  10009a3a0  ldp     x20, x19, [sp, #0x10]
  10009a3a4  ldp     x22, x21, [sp], #0x30
  10009a3a8  b       _objc_release
  10009a3ac  mov     x21, x0
  10009a3b0  b       loc_10009a3c0
  10009a3b4  mov     x21, x0
  10009a3b8  mov     x0, x20
  10009a3bc  bl      _objc_release
loc_10009a3c0:
  10009a3c0  mov     x0, x19
  10009a3c4  bl      _objc_release
  10009a3c8  mov     x0, x21
  10009a3cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView:willDisplayCell:forRowAtIndexPath:]
; address 0x10009a3d0  size 396  kind objc
; ======================================================================
  10009a3d0  stp     x24, x23, [sp, #-0x40]!
  10009a3d4  stp     x22, x21, [sp, #0x10]
  10009a3d8  stp     x20, x19, [sp, #0x20]
  10009a3dc  stp     x29, x30, [sp, #0x30]
  10009a3e0  add     x29, sp, #0x30
  10009a3e4  mov     x0, x3
  10009a3e8  bl      _objc_retain
  10009a3ec  mov     x19, x0
  10009a3f0  adrp    x8, #0x100417000
  10009a3f4  nop
  10009a3f8  ldr     x1, [x8, #0x320]
  10009a3fc  bl      _objc_msgSend                            ; [arg2 textLabel]
  10009a400  mov     x29, x29
  10009a404  bl      _objc_retainAutoreleasedReturnValue
  10009a408  mov     x22, x0
  10009a40c  adrp    x24, #0x10041d000
  10009a410  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10009a414  adrp    x8, #0x100417000
  10009a418  nop
  10009a41c  ldr     x20, [x8, #0x180]
  10009a420  mov     x1, x20
  10009a424  bl      _objc_msgSend                            ; [UIColor blackColor]
  10009a428  mov     x29, x29
  10009a42c  bl      _objc_retainAutoreleasedReturnValue
  10009a430  mov     x23, x0
  10009a434  adrp    x8, #0x100417000
  10009a438  nop
  10009a43c  ldr     x21, [x8, #0x330]
  10009a440  mov     x0, x22
  10009a444  mov     x1, x21
  10009a448  mov     x2, x23
  10009a44c  bl      _objc_msgSend                            ; [[arg2 textLabel] setTextColor:[UIColor blackColor]]
  10009a450  mov     x0, x23
  10009a454  bl      _objc_release
  10009a458  mov     x0, x22
  10009a45c  bl      _objc_release
  10009a460  adrp    x8, #0x100417000
  10009a464  nop
  10009a468  ldr     x1, [x8, #0x338]
  10009a46c  mov     x0, x19
  10009a470  bl      _objc_msgSend                            ; [arg2 detailTextLabel]
  10009a474  mov     x29, x29
  10009a478  bl      _objc_retainAutoreleasedReturnValue
  10009a47c  mov     x22, x0
  10009a480  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10009a484  mov     x1, x20
  10009a488  bl      _objc_msgSend                            ; [UIColor blackColor]
  10009a48c  mov     x29, x29
  10009a490  bl      _objc_retainAutoreleasedReturnValue
  10009a494  mov     x23, x0
  10009a498  mov     x0, x22
  10009a49c  mov     x1, x21
  10009a4a0  mov     x2, x23
  10009a4a4  bl      _objc_msgSend                            ; [[arg2 detailTextLabel] setTextColor:[UIColor blackColor]]
  10009a4a8  mov     x0, x23
  10009a4ac  bl      _objc_release
  10009a4b0  mov     x0, x22
  10009a4b4  bl      _objc_release
  10009a4b8  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10009a4bc  adrp    x8, #0x100417000
  10009a4c0  nop
  10009a4c4  ldr     x1, [x8, #0x328]
  10009a4c8  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10009a4cc  mov     x29, x29
  10009a4d0  bl      _objc_retainAutoreleasedReturnValue
  10009a4d4  mov     x21, x0
  10009a4d8  adrp    x8, #0x100417000
  10009a4dc  nop
  10009a4e0  ldr     x1, [x8, #0x188]
  10009a4e4  mov     x0, x19
  10009a4e8  mov     x2, x21
  10009a4ec  bl      _objc_msgSend                            ; [arg2 setBackgroundColor:[UIColor whiteColor]]
  10009a4f0  mov     x0, x21
  10009a4f4  bl      _objc_release
  10009a4f8  mov     x0, x19
  10009a4fc  ldp     x29, x30, [sp, #0x30]
  10009a500  ldp     x20, x19, [sp, #0x20]
  10009a504  ldp     x22, x21, [sp, #0x10]
  10009a508  ldp     x24, x23, [sp], #0x40
  10009a50c  b       _objc_release
  10009a510  mov     x20, x0
  10009a514  b       loc_10009a54c
  10009a518  mov     x20, x0
  10009a51c  b       loc_10009a538
  10009a520  b       loc_10009a52c
  10009a524  mov     x20, x0
  10009a528  b       loc_10009a538
loc_10009a52c:
  10009a52c  mov     x20, x0
  10009a530  mov     x0, x23
  10009a534  bl      _objc_release
loc_10009a538:
  10009a538  mov     x0, x22
  10009a53c  b       loc_10009a548
  10009a540  mov     x20, x0
  10009a544  mov     x0, x21
loc_10009a548:
  10009a548  bl      _objc_release
loc_10009a54c:
  10009a54c  mov     x0, x19
  10009a550  bl      _objc_release
  10009a554  mov     x0, x20
  10009a558  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView:heightForRowAtIndexPath:]
; address 0x10009a55c  size 140  kind objc
; ======================================================================
  10009a55c  stp     x20, x19, [sp, #-0x20]!
  10009a560  stp     x29, x30, [sp, #0x10]
  10009a564  add     x29, sp, #0x10
  10009a568  adrp    x8, #0x10041d000
  10009a56c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009a570  adrp    x8, #0x100416000
  10009a574  nop
  10009a578  ldr     x1, [x8, #0xc00]
  10009a57c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009a580  mov     x29, x29
  10009a584  bl      _objc_retainAutoreleasedReturnValue
  10009a588  mov     x19, x0
  10009a58c  adrp    x8, #0x100416000
  10009a590  nop
  10009a594  ldr     x1, [x8, #0xd18]
  10009a598  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10009a59c  mov     x20, x0
  10009a5a0  mov     x0, x19
  10009a5a4  bl      _objc_release
  10009a5a8  cmp     w20, #0
  10009a5ac  nop
  10009a5b0  ldr     d0, #0x100181b80                         ; d0 = 80.0
  10009a5b4  nop
  10009a5b8  ldr     d1, #0x1001819d0                         ; d1 = 50.0
  10009a5bc  fcsel   d0, d1, d0, ne
  10009a5c0  ldp     x29, x30, [sp, #0x10]
  10009a5c4  ldp     x20, x19, [sp], #0x20
  10009a5c8  ret
  10009a5cc  mov     x20, x0
  10009a5d0  b       loc_10009a5e0
  10009a5d4  mov     x20, x0
  10009a5d8  mov     x0, x19
  10009a5dc  bl      _objc_release
loc_10009a5e0:
  10009a5e0  mov     x0, x20
  10009a5e4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView:heightForHeaderInSection:]
; address 0x10009a5e8  size 140  kind objc
; ======================================================================
  10009a5e8  stp     x20, x19, [sp, #-0x20]!
  10009a5ec  stp     x29, x30, [sp, #0x10]
  10009a5f0  add     x29, sp, #0x10
  10009a5f4  adrp    x8, #0x10041d000
  10009a5f8  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009a5fc  adrp    x8, #0x100416000
  10009a600  nop
  10009a604  ldr     x1, [x8, #0xc00]
  10009a608  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009a60c  mov     x29, x29
  10009a610  bl      _objc_retainAutoreleasedReturnValue
  10009a614  mov     x19, x0
  10009a618  adrp    x8, #0x100416000
  10009a61c  nop
  10009a620  ldr     x1, [x8, #0xd18]
  10009a624  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10009a628  mov     x20, x0
  10009a62c  mov     x0, x19
  10009a630  bl      _objc_release
  10009a634  cmp     w20, #0
  10009a638  nop
  10009a63c  ldr     d0, #0x100181b88                         ; d0 = 140.0
  10009a640  nop
  10009a644  ldr     d1, #0x100181a08                         ; d1 = 60.0
  10009a648  fcsel   d0, d1, d0, ne
  10009a64c  ldp     x29, x30, [sp, #0x10]
  10009a650  ldp     x20, x19, [sp], #0x20
  10009a654  ret
  10009a658  mov     x20, x0
  10009a65c  b       loc_10009a66c
  10009a660  mov     x20, x0
  10009a664  mov     x0, x19
  10009a668  bl      _objc_release
loc_10009a66c:
  10009a66c  mov     x0, x20
  10009a670  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView:numberOfRowsInSection:]
; address 0x10009a674  size 28  kind objc
; ======================================================================
  10009a674  mov     w8, #2
  10009a678  cmp     x3, #1
  10009a67c  mov     w9, #5
  10009a680  csel    x9, xzr, x9, ne
  10009a684  cmp     x3, #0
  10009a688  csel    x0, x8, x9, eq
  10009a68c  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView:viewForHeaderInSection:]
; address 0x10009a690  size 524  kind objc
; ======================================================================
  10009a690  stp     x22, x21, [sp, #-0x30]!
  10009a694  stp     x20, x19, [sp, #0x10]
  10009a698  stp     x29, x30, [sp, #0x20]
  10009a69c  add     x29, sp, #0x20
  10009a6a0  mov     x20, x3
  10009a6a4  adrp    x8, #0x10041e000
  10009a6a8  ldr     x0, [x8, #0x168]                         ; class ADAccessibilityTableHeaderLabel
  10009a6ac  adrp    x8, #0x100416000
  10009a6b0  nop
  10009a6b4  ldr     x1, [x8, #0xac8]
  10009a6b8  bl      _objc_msgSend                            ; [ADAccessibilityTableHeaderLabel alloc]
  10009a6bc  adrp    x8, #0x1003b0000
  10009a6c0  ldr     x8, [x8, #0x10]                          ; _CGRectZero
  10009a6c4  ldp     d0, d1, [x8]
  10009a6c8  ldp     d2, d3, [x8, #0x10]
  10009a6cc  adrp    x8, #0x100417000
  10009a6d0  nop
  10009a6d4  ldr     x1, [x8, #0x178]
  10009a6d8  bl      _objc_msgSend                            ; [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  10009a6dc  mov     x19, x0
  10009a6e0  cbnz    x20, loc_10009a704                       ; if (arg2 != 0)
  10009a6e4  adrp    x8, #0x100416000
  10009a6e8  nop
  10009a6ec  ldr     x1, [x8, #0xb68]
  10009a6f0  adrp    x2, #0x1003be000
  10009a6f4  add     x2, x2, #0xb50                           ; @"Rewards"
  10009a6f8  mov     x0, x19
  10009a6fc  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Rewards"]
  10009a700  b       loc_10009a728
loc_10009a704:
  10009a704  cmp     x20, #1
  10009a708  b.ne    loc_10009a728                            ; if (arg2 != 1)
  10009a70c  adrp    x8, #0x100416000
  10009a710  nop
  10009a714  ldr     x1, [x8, #0xb68]
  10009a718  adrp    x2, #0x1003be000
  10009a71c  add     x2, x2, #0xb70                           ; @"Statistics"
  10009a720  mov     x0, x19
  10009a724  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Statistics"]
loc_10009a728:
  10009a728  adrp    x8, #0x10041d000
  10009a72c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009a730  adrp    x8, #0x100416000
  10009a734  nop
  10009a738  ldr     x1, [x8, #0xc00]
  10009a73c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009a740  mov     x29, x29
  10009a744  bl      _objc_retainAutoreleasedReturnValue
  10009a748  mov     x20, x0
  10009a74c  adrp    x8, #0x100416000
  10009a750  nop
  10009a754  ldr     x1, [x8, #0xd18]
  10009a758  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10009a75c  mov     x21, x0
  10009a760  mov     x0, x20
  10009a764  bl      _objc_release
  10009a768  adrp    x8, #0x10041d000
  10009a76c  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10009a770  cmp     w21, #0
  10009a774  nop
  10009a778  ldr     d0, #0x100181b90                         ; d0 = 35.0
  10009a77c  fmov    d1, #25.00000000
  10009a780  fcsel   d0, d1, d0, ne
  10009a784  adrp    x8, #0x100416000
  10009a788  nop
  10009a78c  ldr     x1, [x8, #0xd20]
  10009a790  adrp    x2, #0x1003bc000
  10009a794  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  10009a798  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]
  10009a79c  mov     x29, x29
  10009a7a0  bl      _objc_retainAutoreleasedReturnValue
  10009a7a4  mov     x20, x0
  10009a7a8  adrp    x8, #0x100416000
  10009a7ac  nop
  10009a7b0  ldr     x1, [x8, #0xd28]
  10009a7b4  mov     x0, x19
  10009a7b8  mov     x2, x20
  10009a7bc  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]]
  10009a7c0  mov     x0, x20
  10009a7c4  bl      _objc_release
  10009a7c8  adrp    x21, #0x10041d000
  10009a7cc  ldr     x0, [x21, #0xfa0]                        ; class UIColor
  10009a7d0  adrp    x8, #0x100417000
  10009a7d4  nop
  10009a7d8  ldr     x1, [x8, #0x180]
  10009a7dc  bl      _objc_msgSend                            ; [UIColor blackColor]
  10009a7e0  mov     x29, x29
  10009a7e4  bl      _objc_retainAutoreleasedReturnValue
  10009a7e8  mov     x20, x0
  10009a7ec  adrp    x8, #0x100417000
  10009a7f0  nop
  10009a7f4  ldr     x1, [x8, #0x330]
  10009a7f8  mov     x0, x19
  10009a7fc  mov     x2, x20
  10009a800  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setTextColor:[UIColor blackColor]]
  10009a804  mov     x0, x20
  10009a808  bl      _objc_release
  10009a80c  ldr     x0, [x21, #0xfa0]                        ; class UIColor
  10009a810  adrp    x8, #0x100417000
  10009a814  nop
  10009a818  ldr     x1, [x8, #0x328]
  10009a81c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10009a820  mov     x29, x29
  10009a824  bl      _objc_retainAutoreleasedReturnValue
  10009a828  mov     x20, x0
  10009a82c  adrp    x8, #0x100417000
  10009a830  nop
  10009a834  ldr     x1, [x8, #0x188]
  10009a838  mov     x0, x19
  10009a83c  mov     x2, x20
  10009a840  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setBackgroundColor:[UIColor whiteColor]]
  10009a844  mov     x0, x20
  10009a848  bl      _objc_release
  10009a84c  mov     x0, x19
  10009a850  ldp     x29, x30, [sp, #0x20]
  10009a854  ldp     x20, x19, [sp, #0x10]
  10009a858  ldp     x22, x21, [sp], #0x30
  10009a85c  b       _objc_autoreleaseReturnValue
  10009a860  mov     x20, x0
  10009a864  b       loc_10009a88c
  10009a868  mov     x20, x0
  10009a86c  b       loc_10009a894
  10009a870  b       loc_10009a87c
  10009a874  b       loc_10009a87c
  10009a878  b       loc_10009a87c
loc_10009a87c:
  10009a87c  mov     x1, x20
  10009a880  mov     x20, x0
  10009a884  mov     x0, x1
  10009a888  bl      _objc_release
loc_10009a88c:
  10009a88c  mov     x0, x19
  10009a890  bl      _objc_release
loc_10009a894:
  10009a894  mov     x0, x20
  10009a898  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController numberOfSectionsInTableView:]
; address 0x10009a89c  size 8  kind objc
; ======================================================================
  10009a89c  mov     w0, #2
  10009a8a0  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView:cellForRowAtIndexPath:]
; address 0x10009a8a4  size 476  kind objc
; ======================================================================
  10009a8a4  stp     x24, x23, [sp, #-0x40]!
  10009a8a8  stp     x22, x21, [sp, #0x10]
  10009a8ac  stp     x20, x19, [sp, #0x20]
  10009a8b0  stp     x29, x30, [sp, #0x30]
  10009a8b4  add     x29, sp, #0x30
  10009a8b8  mov     x20, x0
  10009a8bc  mov     x0, x3
  10009a8c0  bl      _objc_retain
  10009a8c4  mov     x19, x0
  10009a8c8  adrp    x8, #0x100417000
  10009a8cc  nop
  10009a8d0  ldr     x1, [x8, #0x348]
  10009a8d4  mov     x21, #0
  10009a8d8  bl      _objc_msgSend                            ; [arg2 section]
  10009a8dc  cbnz    w0, loc_10009a904                        ; if ([arg2 section] != 0)
  10009a8e0  adrp    x8, #0x100419000
  10009a8e4  nop
  10009a8e8  ldr     x1, [x8, #0x538]
  10009a8ec  mov     x21, #0
  10009a8f0  mov     x0, x20
  10009a8f4  mov     x2, x19
  10009a8f8  bl      _objc_msgSend                            ; [self cellForRewardsAtIndex:arg2]
  10009a8fc  mov     x29, x29
  10009a900  b       loc_10009a92c
loc_10009a904:
  10009a904  cmp     w0, #1
  10009a908  b.ne    loc_10009a93c                            ; if ([arg2 section] != 1)
  10009a90c  adrp    x8, #0x100419000
  10009a910  nop
  10009a914  ldr     x1, [x8, #0x540]
  10009a918  mov     x21, #0
  10009a91c  mov     x0, x20
  10009a920  mov     x2, x19
  10009a924  bl      _objc_msgSend                            ; [self cellForStatsAtIndex:arg2]
  10009a928  mov     x29, x29
loc_10009a92c:
  10009a92c  bl      _objc_retainAutoreleasedReturnValue
  10009a930  bl      _objc_retain
  10009a934  mov     x20, x0
  10009a938  b       loc_10009aa24
loc_10009a93c:
  10009a93c  adrp    x8, #0x10041e000
  10009a940  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10009a944  adrp    x8, #0x100416000
  10009a948  nop
  10009a94c  ldr     x1, [x8, #0xac8]
  10009a950  mov     x21, #0
  10009a954  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10009a958  adrp    x8, #0x100417000
  10009a95c  nop
  10009a960  ldr     x1, [x8, #0x3c0]
  10009a964  mov     x21, #0
  10009a968  adrp    x3, #0x1003bc000
  10009a96c  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10009a970  mov     w2, #3
  10009a974  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10009a978  mov     x20, x0
  10009a97c  mov     x21, x20
  10009a980  adrp    x8, #0x100417000
  10009a984  nop
  10009a988  ldr     x1, [x8, #0x320]
  10009a98c  mov     x0, x20
  10009a990  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009a994  mov     x29, x29
  10009a998  bl      _objc_retainAutoreleasedReturnValue
  10009a99c  mov     x23, x0
  10009a9a0  adrp    x8, #0x100416000
  10009a9a4  nop
  10009a9a8  ldr     x22, [x8, #0xb68]
  10009a9ac  adrp    x2, #0x1003bc000
  10009a9b0  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  10009a9b4  mov     x1, x22
  10009a9b8  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"EMPTY CELL"]
  10009a9bc  mov     x21, x20
  10009a9c0  mov     x0, x23
  10009a9c4  bl      _objc_release
  10009a9c8  adrp    x8, #0x100417000
  10009a9cc  nop
  10009a9d0  ldr     x1, [x8, #0x338]
  10009a9d4  mov     x0, x20
  10009a9d8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009a9dc  mov     x29, x29
  10009a9e0  bl      _objc_retainAutoreleasedReturnValue
  10009a9e4  mov     x23, x0
  10009a9e8  adrp    x2, #0x1003bc000
  10009a9ec  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  10009a9f0  mov     x1, x22
  10009a9f4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"EMPTY CELL"]
  10009a9f8  mov     x21, x20
  10009a9fc  mov     x0, x23
  10009aa00  bl      _objc_release
  10009aa04  adrp    x8, #0x100417000
  10009aa08  nop
  10009aa0c  ldr     x1, [x8, #0x3b0]
  10009aa10  mov     x2, #0
  10009aa14  mov     x0, x20
  10009aa18  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
  10009aa1c  mov     x0, x20
  10009aa20  bl      _objc_retain
loc_10009aa24:
  10009aa24  mov     x0, x20
  10009aa28  bl      _objc_release
  10009aa2c  mov     x0, x19
  10009aa30  bl      _objc_release
  10009aa34  mov     x0, x20
  10009aa38  ldp     x29, x30, [sp, #0x30]
  10009aa3c  ldp     x20, x19, [sp, #0x20]
  10009aa40  ldp     x22, x21, [sp, #0x10]
  10009aa44  ldp     x24, x23, [sp], #0x40
  10009aa48  b       _objc_autoreleaseReturnValue
  10009aa4c  mov     x22, x0
loc_10009aa50:
  10009aa50  mov     x0, x21
  10009aa54  bl      _objc_release
  10009aa58  mov     x0, x19
  10009aa5c  bl      _objc_release
  10009aa60  mov     x0, x22
  10009aa64  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009aa68  b       loc_10009aa6c
loc_10009aa6c:
  10009aa6c  mov     x22, x0
  10009aa70  mov     x0, x23
  10009aa74  bl      _objc_release
  10009aa78  mov     x21, x20
  10009aa7c  b       loc_10009aa50

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController cellForRewardsAtIndex:]
; address 0x10009aa80  size 820  kind objc
; ======================================================================
  10009aa80  stp     x26, x25, [sp, #-0x50]!
  10009aa84  stp     x24, x23, [sp, #0x10]
  10009aa88  stp     x22, x21, [sp, #0x20]
  10009aa8c  stp     x20, x19, [sp, #0x30]
  10009aa90  stp     x29, x30, [sp, #0x40]
  10009aa94  add     x29, sp, #0x40
  10009aa98  sub     sp, sp, #0x10
  10009aa9c  mov     x0, x2
  10009aaa0  bl      _objc_retain
  10009aaa4  mov     x19, x0
  10009aaa8  adrp    x8, #0x10041e000
  10009aaac  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10009aab0  adrp    x8, #0x100416000
  10009aab4  nop
  10009aab8  ldr     x1, [x8, #0xac8]
  10009aabc  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10009aac0  adrp    x8, #0x100417000
  10009aac4  nop
  10009aac8  ldr     x1, [x8, #0x3c0]
  10009aacc  adrp    x3, #0x1003bc000
  10009aad0  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10009aad4  mov     w2, #3
  10009aad8  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10009aadc  mov     x20, x0
  10009aae0  adrp    x8, #0x100417000
  10009aae4  nop
  10009aae8  ldr     x21, [x8, #0x350]
  10009aaec  mov     x0, x19
  10009aaf0  mov     x1, x21
  10009aaf4  bl      _objc_msgSend                            ; [arg1 row]
  10009aaf8  cbnz    x0, loc_10009abf0                        ; if ([arg1 row] != 0)
  10009aafc  adrp    x8, #0x100417000
  10009ab00  nop
  10009ab04  ldr     x1, [x8, #0x320]
  10009ab08  mov     x0, x20
  10009ab0c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009ab10  mov     x29, x29
  10009ab14  bl      _objc_retainAutoreleasedReturnValue
  10009ab18  mov     x22, x0
  10009ab1c  adrp    x8, #0x100416000
  10009ab20  nop
  10009ab24  ldr     x23, [x8, #0xb68]
  10009ab28  adrp    x2, #0x1003c0000
  10009ab2c  add     x2, x2, #0x450                           ; @"Coins"
  10009ab30  mov     x1, x23
  10009ab34  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Coins"]
  10009ab38  mov     x0, x22
  10009ab3c  bl      _objc_release
  10009ab40  adrp    x8, #0x100417000
  10009ab44  nop
  10009ab48  ldr     x1, [x8, #0x338]
  10009ab4c  mov     x0, x20
  10009ab50  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009ab54  mov     x29, x29
  10009ab58  bl      _objc_retainAutoreleasedReturnValue
  10009ab5c  mov     x22, x0
  10009ab60  adrp    x8, #0x10041d000
  10009ab64  ldr     x25, [x8, #0xf78]                        ; class NSString
  10009ab68  nop
  10009ab6c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009ab70  adrp    x8, #0x100417000
  10009ab74  nop
  10009ab78  ldr     x1, [x8, #0x228]
  10009ab7c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009ab80  mov     x29, x29
  10009ab84  bl      _objc_retainAutoreleasedReturnValue
  10009ab88  mov     x24, x0
  10009ab8c  adrp    x8, #0x100417000
  10009ab90  nop
  10009ab94  ldr     x1, [x8, #0xdb0]
  10009ab98  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  10009ab9c  adrp    x8, #0x100416000
  10009aba0  nop
  10009aba4  ldr     x1, [x8, #0xee8]
  10009aba8  str     x0, [sp]
  10009abac  adrp    x2, #0x1003c0000
  10009abb0  add     x2, x2, #0x470                           ; @"You earned %i coins for killing zombies"
  10009abb4  mov     x0, x25
  10009abb8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You earned %i coins for killing zombies", [[ADInGameStats singleton] totalCoins]]
  10009abbc  mov     x29, x29
  10009abc0  bl      _objc_retainAutoreleasedReturnValue
  10009abc4  mov     x25, x0
  10009abc8  mov     x0, x22
  10009abcc  mov     x1, x23
  10009abd0  mov     x2, x25
  10009abd4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"You earned %i coins for killing zombies", [[ADInGameStats singleton] totalCoins]]]
  10009abd8  mov     x0, x25
  10009abdc  bl      _objc_release
  10009abe0  mov     x0, x24
  10009abe4  bl      _objc_release
  10009abe8  mov     x0, x22
  10009abec  bl      _objc_release
loc_10009abf0:
  10009abf0  mov     x0, x19
  10009abf4  mov     x1, x21
  10009abf8  bl      _objc_msgSend                            ; [arg1 row]
  10009abfc  cmp     x0, #1
  10009ac00  b.ne    loc_10009acf8                            ; if ([arg1 row] != 1)
  10009ac04  adrp    x8, #0x100417000
  10009ac08  nop
  10009ac0c  ldr     x1, [x8, #0x320]
  10009ac10  mov     x0, x20
  10009ac14  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009ac18  mov     x29, x29
  10009ac1c  bl      _objc_retainAutoreleasedReturnValue
  10009ac20  mov     x21, x0
  10009ac24  adrp    x8, #0x100416000
  10009ac28  nop
  10009ac2c  ldr     x22, [x8, #0xb68]
  10009ac30  adrp    x2, #0x1003c0000
  10009ac34  add     x2, x2, #0x490                           ; @"Diamonds"
  10009ac38  mov     x1, x22
  10009ac3c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Diamonds"]
  10009ac40  mov     x0, x21
  10009ac44  bl      _objc_release
  10009ac48  adrp    x8, #0x100417000
  10009ac4c  nop
  10009ac50  ldr     x1, [x8, #0x338]
  10009ac54  mov     x0, x20
  10009ac58  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009ac5c  mov     x29, x29
  10009ac60  bl      _objc_retainAutoreleasedReturnValue
  10009ac64  mov     x21, x0
  10009ac68  adrp    x8, #0x10041d000
  10009ac6c  ldr     x23, [x8, #0xf78]                        ; class NSString
  10009ac70  nop
  10009ac74  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009ac78  adrp    x8, #0x100417000
  10009ac7c  nop
  10009ac80  ldr     x1, [x8, #0x228]
  10009ac84  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009ac88  mov     x29, x29
  10009ac8c  bl      _objc_retainAutoreleasedReturnValue
  10009ac90  mov     x24, x0
  10009ac94  adrp    x8, #0x100417000
  10009ac98  nop
  10009ac9c  ldr     x1, [x8, #0xdb8]
  10009aca0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  10009aca4  adrp    x8, #0x100416000
  10009aca8  nop
  10009acac  ldr     x1, [x8, #0xee8]
  10009acb0  str     x0, [sp]
  10009acb4  adrp    x2, #0x1003c0000
  10009acb8  add     x2, x2, #0x4b0                           ; @"You earned %i diamonds"
  10009acbc  mov     x0, x23
  10009acc0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You earned %i diamonds", [[ADInGameStats singleton] diamondLoot]]
  10009acc4  mov     x29, x29
  10009acc8  bl      _objc_retainAutoreleasedReturnValue
  10009accc  mov     x25, x0
  10009acd0  mov     x0, x21
  10009acd4  mov     x1, x22
  10009acd8  mov     x2, x25
  10009acdc  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"You earned %i diamonds", [[ADInGameStats singleton] diamondLoot]]]
  10009ace0  mov     x0, x25
  10009ace4  bl      _objc_release
  10009ace8  mov     x0, x24
  10009acec  bl      _objc_release
  10009acf0  mov     x0, x21
  10009acf4  bl      _objc_release
loc_10009acf8:
  10009acf8  mov     x0, x19
  10009acfc  bl      _objc_release
  10009ad00  mov     x0, x20
  10009ad04  sub     sp, x29, #0x40
  10009ad08  ldp     x29, x30, [sp, #0x40]
  10009ad0c  ldp     x20, x19, [sp, #0x30]
  10009ad10  ldp     x22, x21, [sp, #0x20]
  10009ad14  ldp     x24, x23, [sp, #0x10]
  10009ad18  ldp     x26, x25, [sp], #0x50
  10009ad1c  b       _objc_autoreleaseReturnValue
  10009ad20  mov     x23, x0
  10009ad24  b       loc_10009ad9c
  10009ad28  mov     x23, x0
  10009ad2c  b       loc_10009ada4
  10009ad30  mov     x23, x0
  10009ad34  b       loc_10009ad5c
  10009ad38  mov     x23, x0
  10009ad3c  b       loc_10009ad8c
  10009ad40  mov     x23, x0
  10009ad44  b       loc_10009ad64
  10009ad48  mov     x23, x0
  10009ad4c  b       loc_10009ad64
  10009ad50  mov     x23, x0
  10009ad54  mov     x0, x25
  10009ad58  bl      _objc_release
loc_10009ad5c:
  10009ad5c  mov     x0, x24
  10009ad60  bl      _objc_release
loc_10009ad64:
  10009ad64  mov     x0, x21
  10009ad68  bl      _objc_release
  10009ad6c  b       loc_10009ad9c
  10009ad70  mov     x23, x0
  10009ad74  b       loc_10009ad94
  10009ad78  mov     x23, x0
  10009ad7c  b       loc_10009ad94
  10009ad80  mov     x23, x0
  10009ad84  mov     x0, x25
  10009ad88  bl      _objc_release
loc_10009ad8c:
  10009ad8c  mov     x0, x24
  10009ad90  bl      _objc_release
loc_10009ad94:
  10009ad94  mov     x0, x22
  10009ad98  bl      _objc_release
loc_10009ad9c:
  10009ad9c  mov     x0, x20
  10009ada0  bl      _objc_release
loc_10009ada4:
  10009ada4  mov     x0, x19
  10009ada8  bl      _objc_release
  10009adac  mov     x0, x23
  10009adb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController cellForMissionAtIndex:]
; address 0x10009adb4  size 1200  kind objc
; ======================================================================
  10009adb4  stp     x28, x27, [sp, #-0x60]!
  10009adb8  stp     x26, x25, [sp, #0x10]
  10009adbc  stp     x24, x23, [sp, #0x20]
  10009adc0  stp     x22, x21, [sp, #0x30]
  10009adc4  stp     x20, x19, [sp, #0x40]
  10009adc8  stp     x29, x30, [sp, #0x50]
  10009adcc  add     x29, sp, #0x50
  10009add0  sub     sp, sp, #0x20
  10009add4  mov     x22, x0
  10009add8  mov     x0, x2
  10009addc  bl      _objc_retain
  10009ade0  mov     x19, x0
  10009ade4  adrp    x8, #0x10041d000
  10009ade8  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  10009adec  adrp    x8, #0x100417000
  10009adf0  nop
  10009adf4  ldr     x1, [x8, #0x848]
  10009adf8  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  10009adfc  mov     x29, x29
  10009ae00  bl      _objc_retainAutoreleasedReturnValue
  10009ae04  mov     x21, x0
  10009ae08  adrp    x8, #0x100416000
  10009ae0c  nop
  10009ae10  ldr     x1, [x8, #0xd88]
  10009ae14  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] activeMissions]
  10009ae18  mov     x29, x29
  10009ae1c  bl      _objc_retainAutoreleasedReturnValue
  10009ae20  mov     x24, x0
  10009ae24  adrp    x8, #0x100417000
  10009ae28  nop
  10009ae2c  ldr     x23, [x8, #0x350]
  10009ae30  mov     x0, x19
  10009ae34  mov     x1, x23
  10009ae38  bl      _objc_msgSend                            ; [arg1 row]
  10009ae3c  mov     x2, x0
  10009ae40  adrp    x8, #0x100416000
  10009ae44  nop
  10009ae48  ldr     x1, [x8, #0xc30]
  10009ae4c  mov     x0, x24
  10009ae50  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 row]]
  10009ae54  mov     x29, x29
  10009ae58  bl      _objc_retainAutoreleasedReturnValue
  10009ae5c  mov     x20, x0
  10009ae60  mov     x0, x24
  10009ae64  bl      _objc_release
  10009ae68  mov     x0, x21
  10009ae6c  bl      _objc_release
  10009ae70  adrp    x8, #0x10041a000
  10009ae74  nop
  10009ae78  ldr     x1, [x8, #0x1b0]
  10009ae7c  adrp    x2, #0x1003bc000
  10009ae80  add     x2, x2, #0x930                           ; @"AccessibleGameOverCell"
  10009ae84  mov     x0, x20
  10009ae88  bl      _objc_msgSend                            ; [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 row]] cellViewForMissionWithCellIdentifier:@"AccessibleGameOverCell"]
  10009ae8c  mov     x29, x29
  10009ae90  bl      _objc_retainAutoreleasedReturnValue
  10009ae94  str     x0, [sp, #0x18]
  10009ae98  adrp    x8, #0x10041d000
  10009ae9c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10009aea0  adrp    x8, #0x100416000
  10009aea4  nop
  10009aea8  ldr     x1, [x8, #0xc00]
  10009aeac  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10009aeb0  mov     x29, x29
  10009aeb4  bl      _objc_retainAutoreleasedReturnValue
  10009aeb8  mov     x24, x0
  10009aebc  adrp    x8, #0x100416000
  10009aec0  nop
  10009aec4  ldr     x1, [x8, #0xd18]
  10009aec8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10009aecc  mov     x25, x0
  10009aed0  mov     x0, x24
  10009aed4  bl      _objc_release
  10009aed8  adrp    x8, #0x10041e000
  10009aedc  ldr     x0, [x8, #0x218]                         ; class UIButton
  10009aee0  adrp    x8, #0x100416000
  10009aee4  nop
  10009aee8  ldr     x1, [x8, #0xac8]
  10009aeec  bl      _objc_msgSend                            ; [UIButton alloc]
  10009aef0  cmp     w25, #0
  10009aef4  nop
  10009aef8  ldr     d0, #0x100181bb8                         ; d0 = 100.0
  10009aefc  nop
  10009af00  ldr     d1, #0x100181b90                         ; d1 = 35.0
  10009af04  fcsel   d2, d1, d0, ne
  10009af08  fmov    d0, #18.00000000
  10009af0c  fcsel   d3, d0, d1, ne
  10009af10  adrp    x8, #0x100417000
  10009af14  nop
  10009af18  ldr     x1, [x8, #0x178]
  10009af1c  movi    v0.16b, #0
  10009af20  movi    v1.16b, #0
  10009af24  bl      _objc_msgSend                            ; [[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}]
  10009af28  mov     x24, x0
  10009af2c  mov     x21, x22
  10009af30  adrp    x8, #0x100417000
  10009af34  nop
  10009af38  ldr     x1, [x8, #0x920]
  10009af3c  mov     x3, #0
  10009af40  adrp    x2, #0x1003c0000
  10009af44  add     x2, x2, #0x4d0                           ; @"Skip"
  10009af48  mov     x0, x24
  10009af4c  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] setTitle:@"Skip" forState:0]
  10009af50  adrp    x8, #0x10041d000
  10009af54  ldr     x26, [x8, #0xf78]                        ; class NSString
  10009af58  adrp    x8, #0x100418000
  10009af5c  nop
  10009af60  ldr     x28, [x8, #0x670]
  10009af64  mov     x0, x20
  10009af68  mov     x1, x28
  10009af6c  bl      _objc_msgSend                            ; [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 row]] skipCost]
  10009af70  mov     x27, x0
  10009af74  mov     x0, x20
  10009af78  mov     x1, x28
  10009af7c  bl      _objc_msgSend                            ; [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 row]] skipCost]
  10009af80  adrp    x8, #0x1003b9000
  10009af84  add     x8, x8, #0x870                           ; @""
  10009af88  adrp    x9, #0x1003bc000
  10009af8c  add     x9, x9, #0x530                           ; @"s"
  10009af90  cmp     w0, #1
  10009af94  csel    x8, x9, x8, gt                           ; t1 = ([[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 row]] skipCost] > 1 ? @"s" : @"")
  10009af98  adrp    x9, #0x100416000
  10009af9c  nop
  10009afa0  ldr     x1, [x9, #0xee8]
  10009afa4  stp     x27, x8, [sp]
  10009afa8  adrp    x2, #0x1003c0000
  10009afac  add     x2, x2, #0x4f0                           ; @"Skip this mission for %i diamond%@"
  10009afb0  mov     x0, x26
  10009afb4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Skip this mission for %i diamond%@", [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 r…, t1]
  10009afb8  mov     x29, x29
  10009afbc  bl      _objc_retainAutoreleasedReturnValue
  10009afc0  mov     x26, x0
  10009afc4  adrp    x8, #0x100417000
  10009afc8  nop
  10009afcc  ldr     x1, [x8, #0x7e8]
  10009afd0  mov     x0, x24
  10009afd4  mov     x2, x26
  10009afd8  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] setAccessibilityLabel:[NSString stringWithFormat:@"Skip this mission for %i diamond%@", [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 r…, t1]]
  10009afdc  mov     x0, x26
  10009afe0  bl      _objc_release
  10009afe4  adrp    x8, #0x100416000
  10009afe8  nop
  10009afec  ldr     x26, [x8, #0xb80]
  10009aff0  mov     x0, x24
  10009aff4  mov     x1, x26
  10009aff8  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] titleLabel]
  10009affc  mov     x29, x29
  10009b000  bl      _objc_retainAutoreleasedReturnValue
  10009b004  mov     x27, x0
  10009b008  adrp    x22, #0x10041d000
  10009b00c  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  10009b010  adrp    x8, #0x100417000
  10009b014  nop
  10009b018  ldr     x1, [x8, #0x328]
  10009b01c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10009b020  mov     x29, x29
  10009b024  bl      _objc_retainAutoreleasedReturnValue
  10009b028  mov     x28, x0
  10009b02c  adrp    x8, #0x100417000
  10009b030  nop
  10009b034  ldr     x1, [x8, #0x330]
  10009b038  mov     x0, x27
  10009b03c  mov     x2, x28
  10009b040  bl      _objc_msgSend                            ; [[[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] titleLabel] setTextColor:[UIColor whiteColor]]
  10009b044  mov     x0, x28
  10009b048  bl      _objc_release
  10009b04c  mov     x0, x27
  10009b050  bl      _objc_release
  10009b054  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  10009b058  adrp    x8, #0x100417000
  10009b05c  nop
  10009b060  ldr     x1, [x8, #0x180]
  10009b064  bl      _objc_msgSend                            ; [UIColor blackColor]
  10009b068  mov     x29, x29
  10009b06c  bl      _objc_retainAutoreleasedReturnValue
  10009b070  mov     x27, x0
  10009b074  adrp    x8, #0x100417000
  10009b078  nop
  10009b07c  ldr     x1, [x8, #0x188]
  10009b080  mov     x0, x24
  10009b084  mov     x2, x27
  10009b088  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] setBackgroundColor:[UIColor blackColor]]
  10009b08c  mov     x0, x27
  10009b090  bl      _objc_release
  10009b094  mov     x0, x24
  10009b098  mov     x1, x26
  10009b09c  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] titleLabel]
  10009b0a0  mov     x29, x29
  10009b0a4  bl      _objc_retainAutoreleasedReturnValue
  10009b0a8  mov     x26, x0
  10009b0ac  adrp    x8, #0x10041d000
  10009b0b0  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10009b0b4  cmp     w25, #0
  10009b0b8  fmov    d0, #25.00000000
  10009b0bc  fmov    d1, #12.00000000
  10009b0c0  fcsel   d0, d1, d0, ne
  10009b0c4  adrp    x8, #0x100416000
  10009b0c8  nop
  10009b0cc  ldr     x1, [x8, #0xd20]
  10009b0d0  adrp    x2, #0x1003bc000
  10009b0d4  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  10009b0d8  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 25)]
  10009b0dc  mov     x29, x29
  10009b0e0  bl      _objc_retainAutoreleasedReturnValue
  10009b0e4  mov     x25, x0
  10009b0e8  adrp    x8, #0x100416000
  10009b0ec  nop
  10009b0f0  ldr     x1, [x8, #0xd28]
  10009b0f4  mov     x0, x26
  10009b0f8  mov     x2, x25
  10009b0fc  bl      _objc_msgSend                            ; [[[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] titleLabel] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 12 : 25)]]
  10009b100  mov     x0, x25
  10009b104  bl      _objc_release
  10009b108  mov     x0, x26
  10009b10c  bl      _objc_release
  10009b110  adrp    x8, #0x10041a000
  10009b114  nop
  10009b118  ldr     x3, [x8, #0x1b8]
  10009b11c  adrp    x8, #0x100417000
  10009b120  nop
  10009b124  ldr     x1, [x8, #0x7d0]
  10009b128  mov     w4, #0x40
  10009b12c  mov     x0, x24
  10009b130  mov     x2, x21
  10009b134  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] addTarget:self action:@selector(skipMission:) forControlEvents:64]
  10009b138  adrp    x8, #0x100417000
  10009b13c  nop
  10009b140  ldr     x1, [x8, #0xb88]
  10009b144  ldr     x0, [sp, #0x18]
  10009b148  mov     x2, x24
  10009b14c  bl      _objc_msgSend                            ; [[[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 row]] cellViewForMissionWithCellIdentifier:@"AccessibleGameOverCell"] setAccessoryView:[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}]]
  10009b150  mov     x0, x19
  10009b154  mov     x1, x23
  10009b158  bl      _objc_msgSend                            ; [arg1 row]
  10009b15c  mov     x2, x0
  10009b160  adrp    x8, #0x100417000
  10009b164  nop
  10009b168  ldr     x1, [x8, #0x670]
  10009b16c  mov     x0, x24
  10009b170  bl      _objc_msgSend                            ; [[[UIButton alloc] initWithFrame:{0, 0, ([[ADGameParameters sharedParameters] isIphone] != 0 ? 35 : 100), ([[ADGameParameters sharedParameters] isIphone] != 0 ? 18 : 35)}] setTag:[arg1 row]]
  10009b174  mov     x0, x24
  10009b178  bl      _objc_release
  10009b17c  mov     x0, x20
  10009b180  bl      _objc_release
  10009b184  mov     x0, x19
  10009b188  bl      _objc_release
  10009b18c  ldr     x0, [sp, #0x18]
  10009b190  sub     sp, x29, #0x50
  10009b194  ldp     x29, x30, [sp, #0x50]
  10009b198  ldp     x20, x19, [sp, #0x40]
  10009b19c  ldp     x22, x21, [sp, #0x30]
  10009b1a0  ldp     x24, x23, [sp, #0x20]
  10009b1a4  ldp     x26, x25, [sp, #0x10]
  10009b1a8  ldp     x28, x27, [sp], #0x60
  10009b1ac  b       _objc_autoreleaseReturnValue
  10009b1b0  mov     x22, x0
  10009b1b4  b       loc_10009b23c
  10009b1b8  mov     x22, x0
  10009b1bc  b       loc_10009b244
  10009b1c0  mov     x22, x0
  10009b1c4  mov     x0, x24
  10009b1c8  bl      _objc_release
  10009b1cc  b       loc_10009b1dc
  10009b1d0  mov     x22, x0
  10009b1d4  b       loc_10009b254
  10009b1d8  mov     x22, x0
loc_10009b1dc:
  10009b1dc  mov     x0, x21
  10009b1e0  b       loc_10009b250
  10009b1e4  mov     x22, x0
  10009b1e8  b       loc_10009b24c
  10009b1ec  mov     x22, x0
  10009b1f0  b       loc_10009b23c
  10009b1f4  mov     x22, x0
  10009b1f8  b       loc_10009b234
  10009b1fc  mov     x22, x0
  10009b200  b       loc_10009b218
  10009b204  mov     x22, x0
  10009b208  mov     x0, x28
  10009b20c  bl      _objc_release
  10009b210  b       loc_10009b218
  10009b214  mov     x22, x0
loc_10009b218:
  10009b218  mov     x0, x27
  10009b21c  b       loc_10009b238
  10009b220  mov     x22, x0
  10009b224  b       loc_10009b234
  10009b228  mov     x22, x0
  10009b22c  mov     x0, x25
  10009b230  bl      _objc_release
loc_10009b234:
  10009b234  mov     x0, x26
loc_10009b238:
  10009b238  bl      _objc_release
loc_10009b23c:
  10009b23c  mov     x0, x24
  10009b240  bl      _objc_release
loc_10009b244:
  10009b244  ldr     x0, [sp, #0x18]
  10009b248  bl      _objc_release
loc_10009b24c:
  10009b24c  mov     x0, x20
loc_10009b250:
  10009b250  bl      _objc_release
loc_10009b254:
  10009b254  mov     x0, x19
  10009b258  bl      _objc_release
  10009b25c  mov     x0, x22
  10009b260  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController skipMission:]
; address 0x10009b264  size 708  kind objc
; ======================================================================
  10009b264  stp     x26, x25, [sp, #-0x50]!
  10009b268  stp     x24, x23, [sp, #0x10]
  10009b26c  stp     x22, x21, [sp, #0x20]
  10009b270  stp     x20, x19, [sp, #0x30]
  10009b274  stp     x29, x30, [sp, #0x40]
  10009b278  add     x29, sp, #0x40
  10009b27c  sub     sp, sp, #0x30
  10009b280  mov     x20, x0
  10009b284  mov     x0, x2
  10009b288  bl      _objc_retain
  10009b28c  mov     x19, x0
  10009b290  adrp    x25, #0x10041d000
  10009b294  ldr     x0, [x25, #0xf18]                        ; class ADMissionManager
  10009b298  adrp    x8, #0x100417000
  10009b29c  nop
  10009b2a0  ldr     x22, [x8, #0x848]
  10009b2a4  mov     x1, x22
  10009b2a8  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  10009b2ac  mov     x29, x29
  10009b2b0  bl      _objc_retainAutoreleasedReturnValue
  10009b2b4  mov     x23, x0
  10009b2b8  adrp    x8, #0x100416000
  10009b2bc  nop
  10009b2c0  ldr     x1, [x8, #0xd88]
  10009b2c4  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] activeMissions]
  10009b2c8  mov     x29, x29
  10009b2cc  bl      _objc_retainAutoreleasedReturnValue
  10009b2d0  mov     x24, x0
  10009b2d4  adrp    x8, #0x100417000
  10009b2d8  nop
  10009b2dc  ldr     x1, [x8, #0x6b0]
  10009b2e0  mov     x0, x19
  10009b2e4  bl      _objc_msgSend                            ; [arg1 tag]
  10009b2e8  mov     x2, x0
  10009b2ec  adrp    x8, #0x100416000
  10009b2f0  nop
  10009b2f4  ldr     x1, [x8, #0xc30]
  10009b2f8  mov     x0, x24
  10009b2fc  bl      _objc_msgSend                            ; [[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 tag]]
  10009b300  mov     x29, x29
  10009b304  bl      _objc_retainAutoreleasedReturnValue
  10009b308  mov     x21, x0
  10009b30c  mov     x0, x24
  10009b310  bl      _objc_release
  10009b314  mov     x0, x23
  10009b318  bl      _objc_release
  10009b31c  ldr     x0, [x25, #0xf18]                        ; class ADMissionManager
  10009b320  mov     x1, x22
  10009b324  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  10009b328  mov     x29, x29
  10009b32c  bl      _objc_retainAutoreleasedReturnValue
  10009b330  bl      _objc_release
  10009b334  adrp    x8, #0x10041d000
  10009b338  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10009b33c  adrp    x8, #0x100416000
  10009b340  nop
  10009b344  ldr     x1, [x8, #0xec8]
  10009b348  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10009b34c  mov     x29, x29
  10009b350  bl      _objc_retainAutoreleasedReturnValue
  10009b354  mov     x23, x0
  10009b358  adrp    x8, #0x100418000
  10009b35c  nop
  10009b360  ldr     x1, [x8, #0x670]
  10009b364  mov     x0, x21
  10009b368  bl      _objc_msgSend                            ; [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 tag]] skipCost]
  10009b36c  mov     x24, x0
  10009b370  adrp    x8, #0x100417000
  10009b374  nop
  10009b378  ldr     x1, [x8, #0x960]
  10009b37c  mov     x0, x23
  10009b380  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] diamonds]
  10009b384  sub     w2, w0, w24                              ; t1 = ([[ADInventory sharedInventory] diamonds] - [[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 tag]] skipCost])
  10009b388  adrp    x8, #0x100417000
  10009b38c  nop
  10009b390  ldr     x1, [x8, #0x98]
  10009b394  mov     x0, x23
  10009b398  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setDiamonds:t1]
  10009b39c  mov     x0, x23
  10009b3a0  bl      _objc_release
  10009b3a4  ldr     x0, [x25, #0xf18]                        ; class ADMissionManager
  10009b3a8  mov     x1, x22
  10009b3ac  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  10009b3b0  mov     x29, x29
  10009b3b4  bl      _objc_retainAutoreleasedReturnValue
  10009b3b8  mov     x22, x0
  10009b3bc  adrp    x8, #0x100418000
  10009b3c0  nop
  10009b3c4  ldr     x1, [x8, #0x6c0]
  10009b3c8  mov     x2, x21
  10009b3cc  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] replaceMission:[[[ADMissionManager sharedMissionManager] activeMissions] objectAtIndex:[arg1 tag]]]
  10009b3d0  mov     x29, x29
  10009b3d4  bl      _objc_retainAutoreleasedReturnValue
  10009b3d8  bl      _objc_release
  10009b3dc  mov     x0, x22
  10009b3e0  bl      _objc_release
  10009b3e4  adrp    x8, #0x100417000
  10009b3e8  nop
  10009b3ec  ldr     x1, [x8, #0x2d0]
  10009b3f0  mov     x0, x20
  10009b3f4  bl      _objc_msgSend                            ; [self tableView]
  10009b3f8  mov     x29, x29
  10009b3fc  bl      _objc_retainAutoreleasedReturnValue
  10009b400  mov     x22, x0
  10009b404  adrp    x8, #0x100417000
  10009b408  nop
  10009b40c  ldr     x1, [x8, #0xb18]
  10009b410  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  10009b414  mov     x0, x22
  10009b418  bl      _objc_release
  10009b41c  adrp    x8, #0x1003b0000
  10009b420  ldr     x8, [x8, #0xb0]                          ; _UIAccessibilityAnnouncementNotification
  10009b424  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityAnnouncementNotification[+0x0]
  10009b428  adrp    x1, #0x1003c0000
  10009b42c  add     x1, x1, #0x510                           ; @"Mission skipped"
  10009b430  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityAnnouncementNotification[+0x0], @"Mission skipped")
  10009b434  mov     w1, #0x77350000
  10009b438  movk    w1, #0x9400
  10009b43c  mov     x0, #0
  10009b440  bl      _dispatch_time                           ; dispatch_time(0, 0x77359400)
  10009b444  mov     x22, x0
  10009b448  adrp    x8, #0x1003b0000
  10009b44c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10009b450  mov     w9, #-0x3e000000
  10009b454  str     x8, [sp, #8]
  10009b458  stp     w9, wzr, [sp, #0x10]
  10009b45c  adr     x8, #0x10009b528                         ; &-[Accessible_ADGameOverEndlessViewController skipMission:]_block_invoke
  10009b460  nop
  10009b464  str     x8, [sp, #0x18]
  10009b468  adrp    x8, #0x1003b2000
  10009b46c  add     x8, x8, #0x220                           ; &d_1003b2220
  10009b470  str     x8, [sp, #0x20]
  10009b474  mov     x0, x20
  10009b478  bl      _objc_retain
  10009b47c  str     x0, [sp, #0x28]
  10009b480  adrp    x1, #0x1003b0000
  10009b484  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10009b488  add     x2, sp, #8
  10009b48c  mov     x0, x22
  10009b490  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x77359400), __dispatch_main_q, ^{-[Accessible_ADGameOverEndlessViewController skipMission:]_block_invoke captures +0x20=self})
  10009b494  ldr     x0, [sp, #0x28]
  10009b498  bl      _objc_release
  10009b49c  mov     x0, x21
  10009b4a0  bl      _objc_release
  10009b4a4  mov     x0, x19
  10009b4a8  bl      _objc_release
  10009b4ac  sub     sp, x29, #0x40
  10009b4b0  ldp     x29, x30, [sp, #0x40]
  10009b4b4  ldp     x20, x19, [sp, #0x30]
  10009b4b8  ldp     x22, x21, [sp, #0x20]
  10009b4bc  ldp     x24, x23, [sp, #0x10]
  10009b4c0  ldp     x26, x25, [sp], #0x50
  10009b4c4  ret
  10009b4c8  mov     x20, x0
  10009b4cc  b       loc_10009b510
  10009b4d0  mov     x20, x0
  10009b4d4  mov     x0, x23
  10009b4d8  b       loc_10009b50c
  10009b4dc  mov     x20, x0
  10009b4e0  mov     x0, x24
  10009b4e4  bl      _objc_release
  10009b4e8  b       loc_10009b4f8
  10009b4ec  mov     x20, x0
  10009b4f0  b       loc_10009b518
  10009b4f4  mov     x20, x0
loc_10009b4f8:
  10009b4f8  mov     x0, x23
  10009b4fc  b       loc_10009b514
  10009b500  b       loc_10009b504
loc_10009b504:
  10009b504  mov     x20, x0
  10009b508  mov     x0, x22
loc_10009b50c:
  10009b50c  bl      _objc_release
loc_10009b510:
  10009b510  mov     x0, x21
loc_10009b514:
  10009b514  bl      _objc_release
loc_10009b518:
  10009b518  mov     x0, x19
  10009b51c  bl      _objc_release
  10009b520  mov     x0, x20
  10009b524  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController skipMission:]_block_invoke
; address 0x10009b528  size 104  kind block
; ======================================================================
  10009b528  stp     x20, x19, [sp, #-0x20]!
  10009b52c  stp     x29, x30, [sp, #0x10]
  10009b530  add     x29, sp, #0x10
  10009b534  adrp    x8, #0x1003b0000
  10009b538  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  10009b53c  ldr     w20, [x8]                                ; w20 = _UIAccessibilityScreenChangedNotification[+0x0]
  10009b540  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10009b544  adrp    x8, #0x100417000
  10009b548  nop
  10009b54c  ldr     x1, [x8, #0x2d0]
  10009b550  bl      _objc_msgSend                            ; [self tableView]
  10009b554  mov     x29, x29
  10009b558  bl      _objc_retainAutoreleasedReturnValue
  10009b55c  mov     x19, x0
  10009b560  mov     x0, x20
  10009b564  mov     x1, x19
  10009b568  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [self tableView])
  10009b56c  mov     x0, x19
  10009b570  ldp     x29, x30, [sp, #0x10]
  10009b574  ldp     x20, x19, [sp], #0x20
  10009b578  b       _objc_release
  10009b57c  mov     x20, x0
  10009b580  mov     x0, x19
  10009b584  bl      _objc_release
  10009b588  mov     x0, x20
  10009b58c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10009b590
; address 0x10009b590  size 8  kind sub
; ======================================================================
  10009b590  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10009b594  b       _objc_retain

; ======================================================================
; sub_10009b598
; address 0x10009b598  size 8  kind sub
; ======================================================================
  10009b598  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10009b59c  b       _objc_release

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController cellForMissionCompletedAtIndex:]
; address 0x10009b5a0  size 556  kind objc
; ======================================================================
  10009b5a0  stp     x26, x25, [sp, #-0x50]!
  10009b5a4  stp     x24, x23, [sp, #0x10]
  10009b5a8  stp     x22, x21, [sp, #0x20]
  10009b5ac  stp     x20, x19, [sp, #0x30]
  10009b5b0  stp     x29, x30, [sp, #0x40]
  10009b5b4  add     x29, sp, #0x40
  10009b5b8  mov     x21, x0
  10009b5bc  mov     x0, x2
  10009b5c0  bl      _objc_retain
  10009b5c4  mov     x19, x0
  10009b5c8  adrp    x25, #0x10041e000
  10009b5cc  ldr     x0, [x25, #0x170]                        ; class ADAccessibleTableCell
  10009b5d0  adrp    x8, #0x100416000
  10009b5d4  nop
  10009b5d8  ldr     x24, [x8, #0xac8]
  10009b5dc  mov     x1, x24
  10009b5e0  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10009b5e4  adrp    x8, #0x100417000
  10009b5e8  nop
  10009b5ec  ldr     x20, [x8, #0x3c0]
  10009b5f0  adrp    x3, #0x1003bc000
  10009b5f4  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10009b5f8  mov     w2, #3
  10009b5fc  mov     x1, x20
  10009b600  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10009b604  mov     x23, x0
  10009b608  mov     x22, x23
  10009b60c  ldr     x0, [x25, #0x170]                        ; class ADAccessibleTableCell
  10009b610  mov     x1, x24
  10009b614  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10009b618  mov     x22, x23
  10009b61c  adrp    x3, #0x1003bc000
  10009b620  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10009b624  mov     w2, #3
  10009b628  mov     x1, x20
  10009b62c  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10009b630  mov     x20, x0
  10009b634  mov     x22, x20
  10009b638  mov     x0, x23
  10009b63c  bl      _objc_release
  10009b640  adrp    x8, #0x100420000
  10009b644  ldrsw   x8, [x8, #0x28]                          ; ivar offset Accessible_ADGameOverEndlessViewController._completedMissions (+0x140)
  10009b648  ldr     x21, [x21, x8]                           ; x21 = self->_completedMissions
  10009b64c  adrp    x8, #0x100417000
  10009b650  nop
  10009b654  ldr     x1, [x8, #0x350]
  10009b658  mov     x0, x19
  10009b65c  bl      _objc_msgSend                            ; [arg1 row]
  10009b660  mov     x2, x0
  10009b664  mov     x22, x20
  10009b668  adrp    x8, #0x100416000
  10009b66c  nop
  10009b670  ldr     x1, [x8, #0xc30]
  10009b674  mov     x0, x21
  10009b678  bl      _objc_msgSend                            ; [self->_completedMissions objectAtIndex:[arg1 row]]
  10009b67c  mov     x29, x29
  10009b680  bl      _objc_retainAutoreleasedReturnValue
  10009b684  mov     x21, x0
  10009b688  adrp    x8, #0x100417000
  10009b68c  nop
  10009b690  ldr     x1, [x8, #0x320]
  10009b694  mov     x0, x20
  10009b698  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009b69c  mov     x29, x29
  10009b6a0  bl      _objc_retainAutoreleasedReturnValue
  10009b6a4  mov     x22, x0
  10009b6a8  adrp    x8, #0x100418000
  10009b6ac  nop
  10009b6b0  ldr     x1, [x8, #0x648]
  10009b6b4  mov     x0, x21
  10009b6b8  bl      _objc_msgSend                            ; [[self->_completedMissions objectAtIndex:[arg1 row]] description]
  10009b6bc  mov     x29, x29
  10009b6c0  bl      _objc_retainAutoreleasedReturnValue
  10009b6c4  mov     x24, x0
  10009b6c8  adrp    x8, #0x100416000
  10009b6cc  nop
  10009b6d0  ldr     x23, [x8, #0xb68]
  10009b6d4  mov     x0, x22
  10009b6d8  mov     x1, x23
  10009b6dc  mov     x2, x24
  10009b6e0  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:[[self->_completedMissions objectAtIndex:[arg1 row]] description]]
  10009b6e4  mov     x0, x24
  10009b6e8  bl      _objc_release
  10009b6ec  mov     x0, x22
  10009b6f0  bl      _objc_release
  10009b6f4  adrp    x8, #0x100417000
  10009b6f8  nop
  10009b6fc  ldr     x1, [x8, #0x338]
  10009b700  mov     x0, x20
  10009b704  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009b708  mov     x29, x29
  10009b70c  bl      _objc_retainAutoreleasedReturnValue
  10009b710  mov     x22, x0
  10009b714  adrp    x2, #0x1003c0000
  10009b718  add     x2, x2, #0x530                           ; @"mission completed"
  10009b71c  mov     x1, x23
  10009b720  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"mission completed"]
  10009b724  mov     x0, x22
  10009b728  bl      _objc_release
  10009b72c  adrp    x8, #0x100417000
  10009b730  nop
  10009b734  ldr     x1, [x8, #0x3b0]
  10009b738  mov     x2, #0
  10009b73c  mov     x0, x20
  10009b740  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
  10009b744  mov     x0, x21
  10009b748  bl      _objc_release
  10009b74c  mov     x0, x19
  10009b750  bl      _objc_release
  10009b754  mov     x0, x20
  10009b758  ldp     x29, x30, [sp, #0x40]
  10009b75c  ldp     x20, x19, [sp, #0x30]
  10009b760  ldp     x22, x21, [sp, #0x20]
  10009b764  ldp     x24, x23, [sp, #0x10]
  10009b768  ldp     x26, x25, [sp], #0x50
  10009b76c  b       _objc_autoreleaseReturnValue
  10009b770  mov     x23, x0
  10009b774  b       loc_10009b7b4
  10009b778  mov     x23, x0
  10009b77c  b       loc_10009b7a8
  10009b780  mov     x23, x0
  10009b784  b       loc_10009b7bc
  10009b788  b       loc_10009b79c
  10009b78c  mov     x23, x0
  10009b790  mov     x0, x24
  10009b794  bl      _objc_release
  10009b798  b       loc_10009b7a0
loc_10009b79c:
  10009b79c  mov     x23, x0
loc_10009b7a0:
  10009b7a0  mov     x0, x22
  10009b7a4  bl      _objc_release
loc_10009b7a8:
  10009b7a8  mov     x0, x21
  10009b7ac  bl      _objc_release
  10009b7b0  mov     x22, x20
loc_10009b7b4:
  10009b7b4  mov     x0, x22
  10009b7b8  bl      _objc_release
loc_10009b7bc:
  10009b7bc  mov     x0, x19
  10009b7c0  bl      _objc_release
  10009b7c4  mov     x0, x23
  10009b7c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController cellForStatsAtIndex:]
; address 0x10009b7cc  size 1704  kind objc
; ======================================================================
  10009b7cc  stp     x26, x25, [sp, #-0x50]!
  10009b7d0  stp     x24, x23, [sp, #0x10]
  10009b7d4  stp     x22, x21, [sp, #0x20]
  10009b7d8  stp     x20, x19, [sp, #0x30]
  10009b7dc  stp     x29, x30, [sp, #0x40]
  10009b7e0  add     x29, sp, #0x40
  10009b7e4  sub     sp, sp, #0x10
  10009b7e8  mov     x22, x0
  10009b7ec  mov     x0, x2
  10009b7f0  bl      _objc_retain
  10009b7f4  mov     x19, x0
  10009b7f8  adrp    x8, #0x10041e000
  10009b7fc  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10009b800  adrp    x8, #0x100416000
  10009b804  nop
  10009b808  ldr     x1, [x8, #0xac8]
  10009b80c  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10009b810  adrp    x8, #0x100417000
  10009b814  nop
  10009b818  ldr     x1, [x8, #0x3c0]
  10009b81c  adrp    x3, #0x1003bc000
  10009b820  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10009b824  mov     w2, #3
  10009b828  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10009b82c  mov     x20, x0
  10009b830  adrp    x8, #0x100417000
  10009b834  nop
  10009b838  ldr     x21, [x8, #0x350]
  10009b83c  mov     x0, x19
  10009b840  mov     x1, x21
  10009b844  bl      _objc_msgSend                            ; [arg1 row]
  10009b848  cbnz    x0, loc_10009b940                        ; if ([arg1 row] != 0)
  10009b84c  adrp    x8, #0x100417000
  10009b850  nop
  10009b854  ldr     x1, [x8, #0x320]
  10009b858  mov     x0, x20
  10009b85c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009b860  mov     x29, x29
  10009b864  bl      _objc_retainAutoreleasedReturnValue
  10009b868  mov     x23, x0
  10009b86c  adrp    x8, #0x100416000
  10009b870  nop
  10009b874  ldr     x24, [x8, #0xb68]
  10009b878  adrp    x2, #0x1003c0000
  10009b87c  add     x2, x2, #0x550                           ; @"Score"
  10009b880  mov     x1, x24
  10009b884  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Score"]
  10009b888  mov     x0, x23
  10009b88c  bl      _objc_release
  10009b890  adrp    x8, #0x100417000
  10009b894  nop
  10009b898  ldr     x1, [x8, #0x338]
  10009b89c  mov     x0, x20
  10009b8a0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009b8a4  mov     x29, x29
  10009b8a8  bl      _objc_retainAutoreleasedReturnValue
  10009b8ac  mov     x23, x0
  10009b8b0  adrp    x8, #0x10041d000
  10009b8b4  ldr     x26, [x8, #0xf78]                        ; class NSString
  10009b8b8  nop
  10009b8bc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009b8c0  adrp    x8, #0x100417000
  10009b8c4  nop
  10009b8c8  ldr     x1, [x8, #0x228]
  10009b8cc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009b8d0  mov     x29, x29
  10009b8d4  bl      _objc_retainAutoreleasedReturnValue
  10009b8d8  mov     x25, x0
  10009b8dc  adrp    x8, #0x100417000
  10009b8e0  nop
  10009b8e4  ldr     x1, [x8, #0xda0]
  10009b8e8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10009b8ec  adrp    x8, #0x100416000
  10009b8f0  nop
  10009b8f4  ldr     x1, [x8, #0xee8]
  10009b8f8  str     x0, [sp]
  10009b8fc  adrp    x2, #0x1003ba000
  10009b900  add     x2, x2, #0xc50                           ; @"%i"
  10009b904  mov     x0, x26
  10009b908  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] gameScore]]
  10009b90c  mov     x29, x29
  10009b910  bl      _objc_retainAutoreleasedReturnValue
  10009b914  mov     x26, x0
  10009b918  mov     x0, x23
  10009b91c  mov     x1, x24
  10009b920  mov     x2, x26
  10009b924  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] gameScore]]]
  10009b928  mov     x0, x26
  10009b92c  bl      _objc_release
  10009b930  mov     x0, x25
  10009b934  bl      _objc_release
  10009b938  mov     x0, x23
  10009b93c  bl      _objc_release
loc_10009b940:
  10009b940  mov     x0, x19
  10009b944  mov     x1, x21
  10009b948  bl      _objc_msgSend                            ; [arg1 row]
  10009b94c  cmp     x0, #1
  10009b950  b.ne    loc_10009ba48                            ; if ([arg1 row] != 1)
  10009b954  adrp    x8, #0x100417000
  10009b958  nop
  10009b95c  ldr     x1, [x8, #0x320]
  10009b960  mov     x0, x20
  10009b964  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009b968  mov     x29, x29
  10009b96c  bl      _objc_retainAutoreleasedReturnValue
  10009b970  mov     x23, x0
  10009b974  adrp    x8, #0x100416000
  10009b978  nop
  10009b97c  ldr     x24, [x8, #0xb68]
  10009b980  adrp    x2, #0x1003b9000
  10009b984  add     x2, x2, #0x950                           ; @"Kills"
  10009b988  mov     x1, x24
  10009b98c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Kills"]
  10009b990  mov     x0, x23
  10009b994  bl      _objc_release
  10009b998  adrp    x8, #0x100417000
  10009b99c  nop
  10009b9a0  ldr     x1, [x8, #0x338]
  10009b9a4  mov     x0, x20
  10009b9a8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009b9ac  mov     x29, x29
  10009b9b0  bl      _objc_retainAutoreleasedReturnValue
  10009b9b4  mov     x23, x0
  10009b9b8  adrp    x8, #0x10041d000
  10009b9bc  ldr     x26, [x8, #0xf78]                        ; class NSString
  10009b9c0  nop
  10009b9c4  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009b9c8  adrp    x8, #0x100417000
  10009b9cc  nop
  10009b9d0  ldr     x1, [x8, #0x228]
  10009b9d4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009b9d8  mov     x29, x29
  10009b9dc  bl      _objc_retainAutoreleasedReturnValue
  10009b9e0  mov     x25, x0
  10009b9e4  adrp    x8, #0x100418000
  10009b9e8  nop
  10009b9ec  ldr     x1, [x8, #0x788]
  10009b9f0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] computeCurrentEnemyKillCount]
  10009b9f4  adrp    x8, #0x100416000
  10009b9f8  nop
  10009b9fc  ldr     x1, [x8, #0xee8]
  10009ba00  str     x0, [sp]
  10009ba04  adrp    x2, #0x1003ba000
  10009ba08  add     x2, x2, #0xc50                           ; @"%i"
  10009ba0c  mov     x0, x26
  10009ba10  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] computeCurrentEnemyKillCount]]
  10009ba14  mov     x29, x29
  10009ba18  bl      _objc_retainAutoreleasedReturnValue
  10009ba1c  mov     x26, x0
  10009ba20  mov     x0, x23
  10009ba24  mov     x1, x24
  10009ba28  mov     x2, x26
  10009ba2c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] computeCurrentEnemyKillCount]]]
  10009ba30  mov     x0, x26
  10009ba34  bl      _objc_release
  10009ba38  mov     x0, x25
  10009ba3c  bl      _objc_release
  10009ba40  mov     x0, x23
  10009ba44  bl      _objc_release
loc_10009ba48:
  10009ba48  mov     x0, x19
  10009ba4c  mov     x1, x21
  10009ba50  bl      _objc_msgSend                            ; [arg1 row]
  10009ba54  cmp     x0, #2
  10009ba58  b.ne    loc_10009bb60                            ; if ([arg1 row] != 2)
  10009ba5c  adrp    x8, #0x100417000
  10009ba60  nop
  10009ba64  ldr     x1, [x8, #0x320]
  10009ba68  mov     x0, x20
  10009ba6c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009ba70  mov     x29, x29
  10009ba74  bl      _objc_retainAutoreleasedReturnValue
  10009ba78  mov     x23, x0
  10009ba7c  adrp    x8, #0x100416000
  10009ba80  nop
  10009ba84  ldr     x24, [x8, #0xb68]
  10009ba88  adrp    x2, #0x1003b9000
  10009ba8c  add     x2, x2, #0x990                           ; @"Accuracy"
  10009ba90  mov     x1, x24
  10009ba94  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Accuracy"]
  10009ba98  mov     x0, x23
  10009ba9c  bl      _objc_release
  10009baa0  adrp    x8, #0x100417000
  10009baa4  nop
  10009baa8  ldr     x1, [x8, #0x338]
  10009baac  mov     x0, x20
  10009bab0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009bab4  mov     x29, x29
  10009bab8  bl      _objc_retainAutoreleasedReturnValue
  10009babc  mov     x23, x0
  10009bac0  adrp    x8, #0x10041d000
  10009bac4  ldr     x26, [x8, #0xf78]                        ; class NSString
  10009bac8  nop
  10009bacc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009bad0  adrp    x8, #0x100417000
  10009bad4  nop
  10009bad8  ldr     x1, [x8, #0x228]
  10009badc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009bae0  mov     x29, x29
  10009bae4  bl      _objc_retainAutoreleasedReturnValue
  10009bae8  mov     x25, x0
  10009baec  adrp    x8, #0x100417000
  10009baf0  nop
  10009baf4  ldr     x1, [x8, #0xdc8]
  10009baf8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  10009bafc  nop
  10009bb00  ldr     s1, #0x100181a10                         ; s1 = 100.0
  10009bb04  fmul    s0, s0, s1
  10009bb08  fcvt    d0, s0
  10009bb0c  adrp    x8, #0x100416000
  10009bb10  nop
  10009bb14  ldr     x1, [x8, #0xee8]
  10009bb18  str     d0, [sp]
  10009bb1c  adrp    x2, #0x1003be000
  10009bb20  add     x2, x2, #0xbb0                           ; @"%.2f %%"
  10009bb24  mov     x0, x26
  10009bb28  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%.2f %%", ([[ADInGameStats singleton] currentAccuracy] * 100)]
  10009bb2c  mov     x29, x29
  10009bb30  bl      _objc_retainAutoreleasedReturnValue
  10009bb34  mov     x26, x0
  10009bb38  mov     x0, x23
  10009bb3c  mov     x1, x24
  10009bb40  mov     x2, x26
  10009bb44  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%.2f %%", ([[ADInGameStats singleton] currentAccuracy] * 100)]]
  10009bb48  mov     x0, x26
  10009bb4c  bl      _objc_release
  10009bb50  mov     x0, x25
  10009bb54  bl      _objc_release
  10009bb58  mov     x0, x23
  10009bb5c  bl      _objc_release
loc_10009bb60:
  10009bb60  mov     x0, x19
  10009bb64  mov     x1, x21
  10009bb68  bl      _objc_msgSend                            ; [arg1 row]
  10009bb6c  cmp     x0, #3
  10009bb70  b.ne    loc_10009bc58                            ; if ([arg1 row] != 3)
  10009bb74  adrp    x8, #0x100417000
  10009bb78  nop
  10009bb7c  ldr     x1, [x8, #0x320]
  10009bb80  mov     x0, x20
  10009bb84  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009bb88  mov     x29, x29
  10009bb8c  bl      _objc_retainAutoreleasedReturnValue
  10009bb90  mov     x23, x0
  10009bb94  adrp    x8, #0x100416000
  10009bb98  nop
  10009bb9c  ldr     x24, [x8, #0xb68]
  10009bba0  adrp    x2, #0x1003be000
  10009bba4  add     x2, x2, #0xbd0                           ; @"Survival time"
  10009bba8  mov     x1, x24
  10009bbac  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Survival time"]
  10009bbb0  mov     x0, x23
  10009bbb4  bl      _objc_release
  10009bbb8  adrp    x8, #0x100417000
  10009bbbc  nop
  10009bbc0  ldr     x1, [x8, #0x338]
  10009bbc4  mov     x0, x20
  10009bbc8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009bbcc  mov     x29, x29
  10009bbd0  bl      _objc_retainAutoreleasedReturnValue
  10009bbd4  mov     x23, x0
  10009bbd8  adrp    x8, #0x10041d000
  10009bbdc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009bbe0  adrp    x8, #0x100417000
  10009bbe4  nop
  10009bbe8  ldr     x1, [x8, #0x228]
  10009bbec  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009bbf0  mov     x29, x29
  10009bbf4  bl      _objc_retainAutoreleasedReturnValue
  10009bbf8  mov     x25, x0
  10009bbfc  adrp    x8, #0x100417000
  10009bc00  nop
  10009bc04  ldr     x1, [x8, #0xdc0]
  10009bc08  bl      _objc_msgSend                            ; [[ADInGameStats singleton] timeElapsed]
  10009bc0c  fcvtzs  w2, d0
  10009bc10  adrp    x8, #0x100418000
  10009bc14  nop
  10009bc18  ldr     x1, [x8, #0x7a8]
  10009bc1c  mov     x0, x22
  10009bc20  bl      _objc_msgSend                            ; [self timeStringFromSeconds:(int)[[ADInGameStats singleton] timeElapsed]]
  10009bc24  mov     x29, x29
  10009bc28  bl      _objc_retainAutoreleasedReturnValue
  10009bc2c  mov     x22, x0
  10009bc30  mov     x0, x23
  10009bc34  mov     x1, x24
  10009bc38  mov     x2, x22
  10009bc3c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[self timeStringFromSeconds:(int)[[ADInGameStats singleton] timeElapsed]]]
  10009bc40  mov     x0, x22
  10009bc44  bl      _objc_release
  10009bc48  mov     x0, x25
  10009bc4c  bl      _objc_release
  10009bc50  mov     x0, x23
  10009bc54  bl      _objc_release
loc_10009bc58:
  10009bc58  mov     x0, x19
  10009bc5c  mov     x1, x21
  10009bc60  bl      _objc_msgSend                            ; [arg1 row]
  10009bc64  cmp     x0, #4
  10009bc68  b.ne    loc_10009bd60                            ; if ([arg1 row] != 4)
  10009bc6c  adrp    x8, #0x100417000
  10009bc70  nop
  10009bc74  ldr     x1, [x8, #0x320]
  10009bc78  mov     x0, x20
  10009bc7c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10009bc80  mov     x29, x29
  10009bc84  bl      _objc_retainAutoreleasedReturnValue
  10009bc88  mov     x22, x0
  10009bc8c  adrp    x8, #0x100416000
  10009bc90  nop
  10009bc94  ldr     x21, [x8, #0xb68]
  10009bc98  adrp    x2, #0x1003c0000
  10009bc9c  add     x2, x2, #0x570                           ; @"Maximum combo"
  10009bca0  mov     x1, x21
  10009bca4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Maximum combo"]
  10009bca8  mov     x0, x22
  10009bcac  bl      _objc_release
  10009bcb0  adrp    x8, #0x100417000
  10009bcb4  nop
  10009bcb8  ldr     x1, [x8, #0x338]
  10009bcbc  mov     x0, x20
  10009bcc0  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10009bcc4  mov     x29, x29
  10009bcc8  bl      _objc_retainAutoreleasedReturnValue
  10009bccc  mov     x22, x0
  10009bcd0  adrp    x8, #0x10041d000
  10009bcd4  ldr     x24, [x8, #0xf78]                        ; class NSString
  10009bcd8  nop
  10009bcdc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009bce0  adrp    x8, #0x100417000
  10009bce4  nop
  10009bce8  ldr     x1, [x8, #0x228]
  10009bcec  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009bcf0  mov     x29, x29
  10009bcf4  bl      _objc_retainAutoreleasedReturnValue
  10009bcf8  mov     x23, x0
  10009bcfc  adrp    x8, #0x100418000
  10009bd00  nop
  10009bd04  ldr     x1, [x8, #0x798]
  10009bd08  bl      _objc_msgSend                            ; [[ADInGameStats singleton] highestCombo]
  10009bd0c  adrp    x8, #0x100416000
  10009bd10  nop
  10009bd14  ldr     x1, [x8, #0xee8]
  10009bd18  str     x0, [sp]
  10009bd1c  adrp    x2, #0x1003ba000
  10009bd20  add     x2, x2, #0xc50                           ; @"%i"
  10009bd24  mov     x0, x24
  10009bd28  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", [[ADInGameStats singleton] highestCombo]]
  10009bd2c  mov     x29, x29
  10009bd30  bl      _objc_retainAutoreleasedReturnValue
  10009bd34  mov     x24, x0
  10009bd38  mov     x0, x22
  10009bd3c  mov     x1, x21
  10009bd40  mov     x2, x24
  10009bd44  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%i", [[ADInGameStats singleton] highestCombo]]]
  10009bd48  mov     x0, x24
  10009bd4c  bl      _objc_release
  10009bd50  mov     x0, x23
  10009bd54  bl      _objc_release
  10009bd58  mov     x0, x22
  10009bd5c  bl      _objc_release
loc_10009bd60:
  10009bd60  adrp    x8, #0x100417000
  10009bd64  nop
  10009bd68  ldr     x1, [x8, #0x3b0]
  10009bd6c  mov     x2, #0
  10009bd70  mov     x0, x20
  10009bd74  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
  10009bd78  mov     x0, x19
  10009bd7c  bl      _objc_release
  10009bd80  mov     x0, x20
  10009bd84  sub     sp, x29, #0x40
  10009bd88  ldp     x29, x30, [sp, #0x40]
  10009bd8c  ldp     x20, x19, [sp, #0x30]
  10009bd90  ldp     x22, x21, [sp, #0x20]
  10009bd94  ldp     x24, x23, [sp, #0x10]
  10009bd98  ldp     x26, x25, [sp], #0x50
  10009bd9c  b       _objc_autoreleaseReturnValue
  10009bda0  mov     x21, x0
  10009bda4  b       loc_10009be5c
  10009bda8  mov     x21, x0
  10009bdac  b       loc_10009be64
  10009bdb0  mov     x21, x0
  10009bdb4  b       loc_10009be4c
  10009bdb8  mov     x21, x0
  10009bdbc  b       loc_10009be4c
  10009bdc0  mov     x21, x0
  10009bdc4  b       loc_10009be4c
  10009bdc8  mov     x21, x0
  10009bdcc  b       loc_10009be20
  10009bdd0  mov     x21, x0
  10009bdd4  b       loc_10009be4c
  10009bdd8  b       loc_10009be38
  10009bddc  b       loc_10009be38
  10009bde0  b       loc_10009be40
  10009bde4  b       loc_10009be38
  10009bde8  b       loc_10009be38
  10009bdec  b       loc_10009be40
  10009bdf0  b       loc_10009be38
  10009bdf4  b       loc_10009be38
  10009bdf8  mov     x21, x0
  10009bdfc  mov     x0, x22
  10009be00  b       loc_10009be48
  10009be04  mov     x21, x0
  10009be08  b       loc_10009be28
  10009be0c  mov     x21, x0
  10009be10  b       loc_10009be28
  10009be14  mov     x21, x0
  10009be18  mov     x0, x24
  10009be1c  bl      _objc_release
loc_10009be20:
  10009be20  mov     x0, x23
  10009be24  bl      _objc_release
loc_10009be28:
  10009be28  mov     x0, x22
  10009be2c  bl      _objc_release
  10009be30  b       loc_10009be5c
  10009be34  b       loc_10009be38
loc_10009be38:
  10009be38  mov     x21, x0
  10009be3c  b       loc_10009be54
loc_10009be40:
  10009be40  mov     x21, x0
  10009be44  mov     x0, x26
loc_10009be48:
  10009be48  bl      _objc_release
loc_10009be4c:
  10009be4c  mov     x0, x25
  10009be50  bl      _objc_release
loc_10009be54:
  10009be54  mov     x0, x23
  10009be58  bl      _objc_release
loc_10009be5c:
  10009be5c  mov     x0, x20
  10009be60  bl      _objc_release
loc_10009be64:
  10009be64  mov     x0, x19
  10009be68  bl      _objc_release
  10009be6c  mov     x0, x21
  10009be70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController timeStringFromSeconds:]
; address 0x10009be74  size 224  kind objc
; ======================================================================
  10009be74  stp     x22, x21, [sp, #-0x30]!
  10009be78  stp     x20, x19, [sp, #0x10]
  10009be7c  stp     x29, x30, [sp, #0x20]
  10009be80  add     x29, sp, #0x20
  10009be84  sub     sp, sp, #0x10
  10009be88  sxtw    x8, w2
  10009be8c  mov     x9, #-0x77770001
  10009be90  movk    x9, #0x8889
  10009be94  mul     x8, x8, x9
  10009be98  lsr     x8, x8, #0x20
  10009be9c  add     w8, w8, w2
  10009bea0  asr     w9, w8, #5
  10009bea4  add     w21, w9, w8, lsr #31                     ; t1 = (((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >> 5) + ((((arg1 * 0xffffffff88888889) >>> 32) + arg1) >>> 31))
  10009bea8  mov     w8, #0x3c
  10009beac  msub    w8, w21, w8, w2
  10009beb0  adrp    x22, #0x10041d000
  10009beb4  adrp    x9, #0x1003b9000
  10009beb8  add     x9, x9, #0x870                           ; @""
  10009bebc  adrp    x10, #0x1003bb000
  10009bec0  add     x10, x10, #0xe30                         ; @"0"
  10009bec4  ldr     x0, [x22, #0xf78]                        ; class NSString
  10009bec8  cmp     w8, #0xa
  10009becc  csel    x9, x10, x9, lt
  10009bed0  adrp    x10, #0x100416000
  10009bed4  nop
  10009bed8  ldr     x20, [x10, #0xee8]
  10009bedc  stp     x9, x8, [sp]
  10009bee0  adrp    x2, #0x1003bc000
  10009bee4  add     x2, x2, #0xd30                           ; @"%@%i"
  10009bee8  mov     x1, x20
  10009beec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 - t1 * 60)]
  10009bef0  mov     x29, x29
  10009bef4  bl      _objc_retainAutoreleasedReturnValue
  10009bef8  mov     x19, x0
  10009befc  ldr     x0, [x22, #0xf78]                        ; class NSString
  10009bf00  stp     x21, x19, [sp]
  10009bf04  adrp    x2, #0x1003bc000
  10009bf08  add     x2, x2, #0xd50                           ; @"%i:%@"
  10009bf0c  mov     x1, x20
  10009bf10  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i:%@", t1, [NSString stringWithFormat:@"%@%i", ((arg1 - t1 * 60) < 10 ? @"0" : @""), (arg1 …]
  10009bf14  mov     x29, x29
  10009bf18  bl      _objc_retainAutoreleasedReturnValue
  10009bf1c  mov     x20, x0
  10009bf20  mov     x0, x19
  10009bf24  bl      _objc_release
  10009bf28  mov     x0, x20
  10009bf2c  sub     sp, x29, #0x20
  10009bf30  ldp     x29, x30, [sp, #0x20]
  10009bf34  ldp     x20, x19, [sp, #0x10]
  10009bf38  ldp     x22, x21, [sp], #0x30
  10009bf3c  b       _objc_autoreleaseReturnValue
  10009bf40  mov     x20, x0
  10009bf44  mov     x0, x19
  10009bf48  bl      _objc_release
  10009bf4c  mov     x0, x20
  10009bf50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController playAgainButtonPressed:]
; address 0x10009bf54  size 164  kind objc
; ======================================================================
  10009bf54  stp     x20, x19, [sp, #-0x20]!
  10009bf58  stp     x29, x30, [sp, #0x10]
  10009bf5c  add     x29, sp, #0x10
  10009bf60  adrp    x8, #0x10041d000
  10009bf64  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10009bf68  adrp    x8, #0x100416000
  10009bf6c  nop
  10009bf70  ldr     x1, [x8, #0xb28]
  10009bf74  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10009bf78  mov     x29, x29
  10009bf7c  bl      _objc_retainAutoreleasedReturnValue
  10009bf80  mov     x19, x0
  10009bf84  adrp    x8, #0x100416000
  10009bf88  nop
  10009bf8c  ldr     x1, [x8, #0xc18]
  10009bf90  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10009bf94  mov     x29, x29
  10009bf98  bl      _objc_retainAutoreleasedReturnValue
  10009bf9c  mov     x20, x0
  10009bfa0  adrp    x8, #0x100418000
  10009bfa4  nop
  10009bfa8  ldr     x1, [x8, #0x5c8]
  10009bfac  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] goToTarot]
  10009bfb0  mov     x0, x20
  10009bfb4  bl      _objc_release
  10009bfb8  mov     x0, x19
  10009bfbc  ldp     x29, x30, [sp, #0x10]
  10009bfc0  ldp     x20, x19, [sp], #0x20
  10009bfc4  b       _objc_release
  10009bfc8  mov     x20, x0
  10009bfcc  b       loc_10009bff0
  10009bfd0  mov     x20, x0
  10009bfd4  b       loc_10009bfe8
  10009bfd8  mov     x1, x20
  10009bfdc  mov     x20, x0
  10009bfe0  mov     x0, x1
  10009bfe4  bl      _objc_release
loc_10009bfe8:
  10009bfe8  mov     x0, x19
  10009bfec  bl      _objc_release
loc_10009bff0:
  10009bff0  mov     x0, x20
  10009bff4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController accessibilityPerformMagicTap]
; address 0x10009bff8  size 40  kind objc
; ======================================================================
  10009bff8  stp     x29, x30, [sp, #-0x10]!
  10009bffc  mov     x29, sp
  10009c000  adrp    x8, #0x10041a000
  10009c004  nop
  10009c008  ldr     x1, [x8, #0x1c0]
  10009c00c  mov     x2, #0
  10009c010  bl      _objc_msgSend                            ; [self playAgainButtonPressed:0]
  10009c014  mov     w0, #1
  10009c018  ldp     x29, x30, [sp], #0x10
  10009c01c  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController viewWillAppear:]
; address 0x10009c020  size 168  kind objc
; ======================================================================
  10009c020  stp     x20, x19, [sp, #-0x20]!
  10009c024  stp     x29, x30, [sp, #0x10]
  10009c028  add     x29, sp, #0x10
  10009c02c  sub     sp, sp, #0x10
  10009c030  mov     x19, x0
  10009c034  str     x19, [sp]
  10009c038  adrp    x8, #0x10041e000
  10009c03c  ldr     x8, [x8, #0xeb0]
  10009c040  str     x8, [sp, #8]
  10009c044  adrp    x8, #0x100417000
  10009c048  nop
  10009c04c  ldr     x1, [x8, #0x928]
  10009c050  mov     x0, sp
  10009c054  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  10009c058  adrp    x8, #0x10041a000
  10009c05c  nop
  10009c060  ldr     x1, [x8, #0x1a0]
  10009c064  mov     x0, x19
  10009c068  bl      _objc_msgSend                            ; [self initMissions]
  10009c06c  adrp    x8, #0x100417000
  10009c070  nop
  10009c074  ldr     x1, [x8, #0x2d0]
  10009c078  mov     x0, x19
  10009c07c  bl      _objc_msgSend                            ; [self tableView]
  10009c080  mov     x29, x29
  10009c084  bl      _objc_retainAutoreleasedReturnValue
  10009c088  mov     x19, x0
  10009c08c  adrp    x8, #0x100417000
  10009c090  nop
  10009c094  ldr     x1, [x8, #0xb18]
  10009c098  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  10009c09c  mov     x0, x19
  10009c0a0  bl      _objc_release
  10009c0a4  sub     sp, x29, #0x10
  10009c0a8  ldp     x29, x30, [sp, #0x10]
  10009c0ac  ldp     x20, x19, [sp], #0x20
  10009c0b0  ret
  10009c0b4  mov     x20, x0
  10009c0b8  mov     x0, x19
  10009c0bc  bl      _objc_release
  10009c0c0  mov     x0, x20
  10009c0c4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController scrollViewDidScroll:]
; address 0x10009c0c8  size 4  kind objc
; ======================================================================
  10009c0c8  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController AccessibleTwitterButtonPressed:]
; address 0x10009c0cc  size 696  kind objc
; ======================================================================
  10009c0cc  stp     x28, x27, [sp, #-0x60]!
  10009c0d0  stp     x26, x25, [sp, #0x10]
  10009c0d4  stp     x24, x23, [sp, #0x20]
  10009c0d8  stp     x22, x21, [sp, #0x30]
  10009c0dc  stp     x20, x19, [sp, #0x40]
  10009c0e0  stp     x29, x30, [sp, #0x50]
  10009c0e4  add     x29, sp, #0x50
  10009c0e8  sub     sp, sp, #0x10
  10009c0ec  mov     x20, x0
  10009c0f0  adrp    x21, #0x10041e000
  10009c0f4  ldr     x0, [x21, #0x380]                        ; class SLComposeViewController
  10009c0f8  adrp    x8, #0x1003b0000
  10009c0fc  ldr     x8, [x8, #0xa8]                          ; _SLServiceTypeTwitter
  10009c100  ldr     x19, [x8]                                ; x19 = _SLServiceTypeTwitter[+0x0]
  10009c104  adrp    x8, #0x10041a000
  10009c108  nop
  10009c10c  ldr     x1, [x8, #0x1c8]
  10009c110  mov     x2, x19
  10009c114  bl      _objc_msgSend                            ; [SLComposeViewController isAvailableForServiceType:_SLServiceTypeTwitter[+0x0]]
  10009c118  cbz     w0, loc_10009c290                        ; if ([SLComposeViewController isAvailableForServiceType:_SLServiceTypeTwitter[+0x0]] == 0)
  10009c11c  ldr     x0, [x21, #0x380]                        ; class SLComposeViewController
  10009c120  adrp    x8, #0x10041a000
  10009c124  nop
  10009c128  ldr     x1, [x8, #0x1d0]
  10009c12c  mov     x2, x19
  10009c130  bl      _objc_msgSend                            ; [SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]]
  10009c134  mov     x29, x29
  10009c138  bl      _objc_retainAutoreleasedReturnValue
  10009c13c  mov     x19, x0
  10009c140  adrp    x8, #0x10041d000
  10009c144  ldr     x24, [x8, #0xf78]                        ; class NSString
  10009c148  nop
  10009c14c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10009c150  adrp    x8, #0x100416000
  10009c154  nop
  10009c158  ldr     x1, [x8, #0xb58]
  10009c15c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10009c160  mov     x29, x29
  10009c164  bl      _objc_retainAutoreleasedReturnValue
  10009c168  mov     x21, x0
  10009c16c  adrp    x8, #0x100416000
  10009c170  nop
  10009c174  ldr     x1, [x8, #0xb60]
  10009c178  mov     x4, #0
  10009c17c  adrp    x2, #0x1003c0000
  10009c180  add     x2, x2, #0x590                           ; @"TWITTER_ACCESSIBLE_SHARE"
  10009c184  adrp    x3, #0x1003b9000
  10009c188  add     x3, x3, #0x870                           ; @""
  10009c18c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"TWITTER_ACCESSIBLE_SHARE" value:@"" table:0]
  10009c190  mov     x29, x29
  10009c194  bl      _objc_retainAutoreleasedReturnValue
  10009c198  mov     x22, x0
  10009c19c  adrp    x27, #0x10041d000
  10009c1a0  ldr     x0, [x27, #0xfc0]                        ; class ADInGameStats
  10009c1a4  adrp    x8, #0x100417000
  10009c1a8  nop
  10009c1ac  ldr     x25, [x8, #0x228]
  10009c1b0  mov     x1, x25
  10009c1b4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009c1b8  mov     x29, x29
  10009c1bc  bl      _objc_retainAutoreleasedReturnValue
  10009c1c0  mov     x23, x0
  10009c1c4  adrp    x8, #0x100417000
  10009c1c8  nop
  10009c1cc  ldr     x1, [x8, #0xda8]
  10009c1d0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] numberOfEnemyKills]
  10009c1d4  mov     x26, x0
  10009c1d8  ldr     x0, [x27, #0xfc0]                        ; class ADInGameStats
  10009c1dc  mov     x1, x25
  10009c1e0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009c1e4  mov     x29, x29
  10009c1e8  bl      _objc_retainAutoreleasedReturnValue
  10009c1ec  mov     x25, x0
  10009c1f0  adrp    x8, #0x100417000
  10009c1f4  nop
  10009c1f8  ldr     x1, [x8, #0xda0]
  10009c1fc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  10009c200  adrp    x8, #0x100416000
  10009c204  nop
  10009c208  ldr     x1, [x8, #0xee8]
  10009c20c  stp     x26, x0, [sp]
  10009c210  mov     x0, x24
  10009c214  mov     x2, x22
  10009c218  bl      _objc_msgSend                            ; [NSString stringWithFormat:[[NSBundle mainBundle] localizedStringForKey:@"TWITTER_ACCESSIBLE_SHARE" value:@"" table:0]]
  10009c21c  mov     x29, x29
  10009c220  bl      _objc_retainAutoreleasedReturnValue
  10009c224  mov     x24, x0
  10009c228  adrp    x8, #0x10041a000
  10009c22c  nop
  10009c230  ldr     x1, [x8, #0x1d8]
  10009c234  mov     x0, x19
  10009c238  mov     x2, x24
  10009c23c  bl      _objc_msgSend                            ; [[SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]] setInitialText:[NSString stringWithFormat:[[NSBundle mainBundle] localizedStringForKey:@"TWITTER_ACCESSIBLE_SHARE" value:@"" table:0]]]
  10009c240  mov     x0, x24
  10009c244  bl      _objc_release
  10009c248  mov     x0, x25
  10009c24c  bl      _objc_release
  10009c250  mov     x0, x23
  10009c254  bl      _objc_release
  10009c258  mov     x0, x22
  10009c25c  bl      _objc_release
  10009c260  mov     x0, x21
  10009c264  bl      _objc_release
  10009c268  adrp    x8, #0x100417000
  10009c26c  nop
  10009c270  ldr     x1, [x8, #0x208]
  10009c274  mov     w3, #1
  10009c278  mov     x0, x20
  10009c27c  mov     x2, x19
  10009c280  mov     x4, #0
  10009c284  bl      _objc_msgSend                            ; [self presentViewController:[SLComposeViewController composeViewControllerForServiceType:_SLServiceTypeTwitter[+0x0]] animated:1 completion:0]
  10009c288  b       loc_10009c2f4
  10009c28c  b       loc_10009c370
loc_10009c290:
  10009c290  adrp    x8, #0x10041e000
  10009c294  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  10009c298  adrp    x8, #0x100416000
  10009c29c  nop
  10009c2a0  ldr     x1, [x8, #0xac8]
  10009c2a4  bl      _objc_msgSend                            ; [UIAlertView alloc]
  10009c2a8  adrp    x8, #0x100417000
  10009c2ac  nop
  10009c2b0  ldr     x1, [x8, #0x800]
  10009c2b4  str     xzr, [sp]
  10009c2b8  adrp    x2, #0x1003c0000
  10009c2bc  add     x2, x2, #0x5b0                           ; @"Twitter Sign-In"
  10009c2c0  adrp    x3, #0x1003c0000
  10009c2c4  add     x3, x3, #0x5d0                           ; @"Please register your device with twitter in order to share screenshots"
  10009c2c8  adrp    x5, #0x1003ba000
  10009c2cc  add     x5, x5, #0xaf0                           ; @"OK"
  10009c2d0  mov     x4, x20
  10009c2d4  mov     x6, #0
  10009c2d8  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:@"Twitter Sign-In" message:@"Please register your device with twitter in order to share screenshots" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:0]
  10009c2dc  mov     x19, x0
  10009c2e0  adrp    x8, #0x100417000
  10009c2e4  nop
  10009c2e8  ldr     x1, [x8, #0x810]
  10009c2ec  mov     x0, x19
  10009c2f0  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:@"Twitter Sign-In" message:@"Please register your device with twitter in order to share screenshots" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:0] show]
loc_10009c2f4:
  10009c2f4  mov     x0, x19
  10009c2f8  sub     sp, x29, #0x50
  10009c2fc  ldp     x29, x30, [sp, #0x50]
  10009c300  ldp     x20, x19, [sp, #0x40]
  10009c304  ldp     x22, x21, [sp, #0x30]
  10009c308  ldp     x24, x23, [sp, #0x20]
  10009c30c  ldp     x26, x25, [sp, #0x10]
  10009c310  ldp     x28, x27, [sp], #0x60
  10009c314  b       _objc_release
  10009c318  mov     x20, x0
  10009c31c  b       loc_10009c37c
  10009c320  mov     x20, x0
  10009c324  b       loc_10009c354
  10009c328  mov     x20, x0
  10009c32c  b       loc_10009c34c
  10009c330  mov     x20, x0
  10009c334  b       loc_10009c364
  10009c338  mov     x20, x0
  10009c33c  b       loc_10009c35c
  10009c340  mov     x20, x0
  10009c344  mov     x0, x24
  10009c348  bl      _objc_release
loc_10009c34c:
  10009c34c  mov     x0, x25
  10009c350  bl      _objc_release
loc_10009c354:
  10009c354  mov     x0, x23
  10009c358  bl      _objc_release
loc_10009c35c:
  10009c35c  mov     x0, x22
  10009c360  bl      _objc_release
loc_10009c364:
  10009c364  mov     x0, x21
  10009c368  bl      _objc_release
  10009c36c  b       loc_10009c374
loc_10009c370:
  10009c370  mov     x20, x0
loc_10009c374:
  10009c374  mov     x0, x19
  10009c378  bl      _objc_release
loc_10009c37c:
  10009c37c  mov     x0, x20
  10009c380  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController completedMissions]
; address 0x10009c384  size 16  kind objc
; ======================================================================
  10009c384  adrp    x8, #0x100420000
  10009c388  ldrsw   x8, [x8, #0x28]                          ; ivar offset Accessible_ADGameOverEndlessViewController._completedMissions (+0x140)
  10009c38c  ldr     x0, [x0, x8]                             ; x0 = self->_completedMissions
  10009c390  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController setCompletedMissions:]
; address 0x10009c394  size 56  kind objc
; ======================================================================
  10009c394  stp     x20, x19, [sp, #-0x20]!
  10009c398  stp     x29, x30, [sp, #0x10]
  10009c39c  add     x29, sp, #0x10
  10009c3a0  mov     x19, x0
  10009c3a4  adrp    x8, #0x100420000
  10009c3a8  ldrsw   x20, [x8, #0x28]                         ; ivar offset Accessible_ADGameOverEndlessViewController._completedMissions (+0x140)
  10009c3ac  mov     x0, x2
  10009c3b0  bl      _objc_retain
  10009c3b4  ldr     x8, [x19, x20]                           ; x8 = self->_completedMissions
  10009c3b8  str     x0, [x19, x20]                           ; self->_completedMissions = arg1
  10009c3bc  mov     x0, x8
  10009c3c0  ldp     x29, x30, [sp, #0x10]
  10009c3c4  ldp     x20, x19, [sp], #0x20
  10009c3c8  b       _objc_release

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController tableView]
; address 0x10009c3cc  size 16  kind objc
; ======================================================================
  10009c3cc  adrp    x8, #0x100420000
  10009c3d0  ldrsw   x8, [x8, #0x2c]                          ; ivar offset Accessible_ADGameOverEndlessViewController._tableView (+0x148)
  10009c3d4  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  10009c3d8  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController setTableView:]
; address 0x10009c3dc  size 56  kind objc
; ======================================================================
  10009c3dc  stp     x20, x19, [sp, #-0x20]!
  10009c3e0  stp     x29, x30, [sp, #0x10]
  10009c3e4  add     x29, sp, #0x10
  10009c3e8  mov     x19, x0
  10009c3ec  adrp    x8, #0x100420000
  10009c3f0  ldrsw   x20, [x8, #0x2c]                         ; ivar offset Accessible_ADGameOverEndlessViewController._tableView (+0x148)
  10009c3f4  mov     x0, x2
  10009c3f8  bl      _objc_retain
  10009c3fc  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  10009c400  str     x0, [x19, x20]                           ; self->_tableView = arg1
  10009c404  mov     x0, x8
  10009c408  ldp     x29, x30, [sp, #0x10]
  10009c40c  ldp     x20, x19, [sp], #0x20
  10009c410  b       _objc_release

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController enemyData]
; address 0x10009c414  size 16  kind objc
; ======================================================================
  10009c414  adrp    x8, #0x100420000
  10009c418  ldrsw   x8, [x8, #0x30]                          ; ivar offset Accessible_ADGameOverEndlessViewController._enemyData (+0x150)
  10009c41c  ldr     x0, [x0, x8]                             ; x0 = self->_enemyData
  10009c420  ret

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController setEnemyData:]
; address 0x10009c424  size 56  kind objc
; ======================================================================
  10009c424  stp     x20, x19, [sp, #-0x20]!
  10009c428  stp     x29, x30, [sp, #0x10]
  10009c42c  add     x29, sp, #0x10
  10009c430  mov     x19, x0
  10009c434  adrp    x8, #0x100420000
  10009c438  ldrsw   x20, [x8, #0x30]                         ; ivar offset Accessible_ADGameOverEndlessViewController._enemyData (+0x150)
  10009c43c  mov     x0, x2
  10009c440  bl      _objc_retain
  10009c444  ldr     x8, [x19, x20]                           ; x8 = self->_enemyData
  10009c448  str     x0, [x19, x20]                           ; self->_enemyData = arg1
  10009c44c  mov     x0, x8
  10009c450  ldp     x29, x30, [sp, #0x10]
  10009c454  ldp     x20, x19, [sp], #0x20
  10009c458  b       _objc_release

; ======================================================================
; -[Accessible_ADGameOverEndlessViewController .cxx_destruct]
; address 0x10009c45c  size 84  kind objc
; ======================================================================
  10009c45c  stp     x20, x19, [sp, #-0x20]!
  10009c460  stp     x29, x30, [sp, #0x10]
  10009c464  add     x29, sp, #0x10
  10009c468  mov     x19, x0
  10009c46c  adrp    x8, #0x100420000
  10009c470  ldrsw   x8, [x8, #0x30]                          ; ivar offset Accessible_ADGameOverEndlessViewController._enemyData (+0x150)
  10009c474  add     x0, x19, x8
  10009c478  mov     x1, #0
  10009c47c  bl      _objc_storeStrong
  10009c480  adrp    x8, #0x100420000
  10009c484  ldrsw   x8, [x8, #0x2c]                          ; ivar offset Accessible_ADGameOverEndlessViewController._tableView (+0x148)
  10009c488  add     x0, x19, x8
  10009c48c  mov     x1, #0
  10009c490  bl      _objc_storeStrong
  10009c494  mov     x1, #0
  10009c498  adrp    x8, #0x100420000
  10009c49c  ldrsw   x8, [x8, #0x28]                          ; ivar offset Accessible_ADGameOverEndlessViewController._completedMissions (+0x140)
  10009c4a0  add     x0, x19, x8
  10009c4a4  ldp     x29, x30, [sp, #0x10]
  10009c4a8  ldp     x20, x19, [sp], #0x20
  10009c4ac  b       _objc_storeStrong
