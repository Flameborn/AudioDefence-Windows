// unit ADArmoryPowerUpUpgraderViewController — 33 functions
//   0x10004d738     112  -[ADArmoryPowerUpUpgraderViewController initWithPowerupDictionary:]
//   0x10004d7a8     244  -[ADArmoryPowerUpUpgraderViewController viewDidLoad]
//   0x10004d89c     472  -[ADArmoryPowerUpUpgraderViewController loadView]
//   0x10004da74    1856  -[ADArmoryPowerUpUpgraderViewController loadInformation]
//   0x10004e1b4    2240  -[ADArmoryPowerUpUpgraderViewController upgradeButtonPressed:]
//   0x10004ea74      20  -[ADArmoryPowerUpUpgraderViewController upgradeButtonPressed:]_block_invoke
//   0x10004ea88       8  sub_10004ea88
//   0x10004ea90       8  sub_10004ea90
//   0x10004ea98     524  -[ADArmoryPowerUpUpgraderViewController showNextLevel]
//   0x10004eca4     272  -[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke
//   0x10004edb4       8  sub_10004edb4
//   0x10004edbc       8  sub_10004edbc
//   0x10004edc4     100  -[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke_2
//   0x10004ee28       8  sub_10004ee28
//   0x10004ee30       8  sub_10004ee30
//   0x10004ee38     100  -[ADArmoryPowerUpUpgraderViewController backButtonPressed:]
//   0x10004ee9c      16  -[ADArmoryPowerUpUpgraderViewController armoryViewController]
//   0x10004eeac      56  -[ADArmoryPowerUpUpgraderViewController setArmoryViewController:]
//   0x10004eee4      16  -[ADArmoryPowerUpUpgraderViewController powerUpTitle]
//   0x10004eef4      56  -[ADArmoryPowerUpUpgraderViewController setPowerUpTitle:]
//   0x10004ef2c      16  -[ADArmoryPowerUpUpgraderViewController powerUpIcon]
//   0x10004ef3c      56  -[ADArmoryPowerUpUpgraderViewController setPowerUpIcon:]
//   0x10004ef74      16  -[ADArmoryPowerUpUpgraderViewController powerUpDescription]
//   0x10004ef84      56  -[ADArmoryPowerUpUpgraderViewController setPowerUpDescription:]
//   0x10004efbc      16  -[ADArmoryPowerUpUpgraderViewController upgradeButton]
//   0x10004efcc      56  -[ADArmoryPowerUpUpgraderViewController setUpgradeButton:]
//   0x10004f004      16  -[ADArmoryPowerUpUpgraderViewController voiceOverBack]
//   0x10004f014      56  -[ADArmoryPowerUpUpgraderViewController setVoiceOverBack:]
//   0x10004f04c      16  -[ADArmoryPowerUpUpgraderViewController badgeImage]
//   0x10004f05c      56  -[ADArmoryPowerUpUpgraderViewController setBadgeImage:]
//   0x10004f094      16  -[ADArmoryPowerUpUpgraderViewController alertViewDelegate]
//   0x10004f0a4      12  -[ADArmoryPowerUpUpgraderViewController setAlertViewDelegate:]
//   0x10004f0b0     204  -[ADArmoryPowerUpUpgraderViewController .cxx_destruct]

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController initWithPowerupDictionary:]
; address 0x10004d738  size 112  kind objc
; ======================================================================
  10004d738  stp     x20, x19, [sp, #-0x20]!
  10004d73c  stp     x29, x30, [sp, #0x10]
  10004d740  add     x29, sp, #0x10
  10004d744  sub     sp, sp, #0x10
  10004d748  mov     x19, x0
  10004d74c  mov     x0, x2
  10004d750  bl      _objc_retain
  10004d754  adrp    x8, #0x10041f000
  10004d758  ldrsw   x9, [x8, #0xa28]                         ; ivar offset ADArmoryPowerUpUpgraderViewController.powerUpDictionary (+0x140)
  10004d75c  ldr     x8, [x19, x9]                            ; x8 = self->powerUpDictionary
  10004d760  str     x0, [x19, x9]                            ; self->powerUpDictionary = arg1
  10004d764  mov     x0, x8
  10004d768  bl      _objc_release
  10004d76c  str     x19, [sp]
  10004d770  adrp    x8, #0x10041e000
  10004d774  ldr     x8, [x8, #0xd40]
  10004d778  str     x8, [sp, #8]
  10004d77c  adrp    x8, #0x100416000
  10004d780  nop
  10004d784  ldr     x1, [x8, #0xb40]
  10004d788  mov     x0, sp
  10004d78c  mov     x2, #0
  10004d790  mov     x3, #0
  10004d794  bl      _objc_msgSendSuper2                      ; [super initWithNibName:0 bundle:0]
  10004d798  sub     sp, x29, #0x10
  10004d79c  ldp     x29, x30, [sp, #0x10]
  10004d7a0  ldp     x20, x19, [sp], #0x20
  10004d7a4  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController viewDidLoad]
; address 0x10004d7a8  size 244  kind objc
; ======================================================================
  10004d7a8  stp     x22, x21, [sp, #-0x30]!
  10004d7ac  stp     x20, x19, [sp, #0x10]
  10004d7b0  stp     x29, x30, [sp, #0x20]
  10004d7b4  add     x29, sp, #0x20
  10004d7b8  sub     sp, sp, #0x10
  10004d7bc  mov     x19, x0
  10004d7c0  str     x19, [sp]
  10004d7c4  adrp    x8, #0x10041e000
  10004d7c8  ldr     x8, [x8, #0xd40]
  10004d7cc  str     x8, [sp, #8]
  10004d7d0  adrp    x8, #0x100416000
  10004d7d4  nop
  10004d7d8  ldr     x1, [x8, #0xb48]
  10004d7dc  mov     x0, sp
  10004d7e0  bl      _objc_msgSendSuper2                      ; [super viewDidLoad]
  10004d7e4  adrp    x8, #0x100418000
  10004d7e8  nop
  10004d7ec  ldr     x1, [x8, #0xc10]
  10004d7f0  mov     x0, x19
  10004d7f4  bl      _objc_msgSend                            ; [self loadInformation]
  10004d7f8  bl      _UIAccessibilityIsVoiceOverRunning       ; UIAccessibilityIsVoiceOverRunning()
  10004d7fc  mov     x21, x0
  10004d800  adrp    x8, #0x100418000
  10004d804  nop
  10004d808  ldr     x1, [x8, #0xc18]
  10004d80c  mov     x0, x19
  10004d810  bl      _objc_msgSend                            ; [self voiceOverBack]
  10004d814  mov     x29, x29
  10004d818  bl      _objc_retainAutoreleasedReturnValue
  10004d81c  mov     x20, x0
  10004d820  tbz     w21, #0, loc_10004d854                   ; if (!(UIAccessibilityIsVoiceOverRunning() & 1))
  10004d824  adrp    x8, #0x100418000
  10004d828  nop
  10004d82c  ldr     x3, [x8, #0xc20]
  10004d830  adrp    x8, #0x100417000
  10004d834  nop
  10004d838  ldr     x1, [x8, #0x7d0]
  10004d83c  mov     w4, #0x40
  10004d840  mov     x0, x20
  10004d844  mov     x2, x19
  10004d848  bl      _objc_msgSend                            ; [[self voiceOverBack] addTarget:self action:@selector(backButtonPressed:) forControlEvents:64]
  10004d84c  b       loc_10004d86c
  10004d850  b       loc_10004d888
loc_10004d854:
  10004d854  adrp    x8, #0x100416000
  10004d858  nop
  10004d85c  ldr     x1, [x8, #0xba8]
  10004d860  mov     w2, #1
  10004d864  mov     x0, x20
  10004d868  bl      _objc_msgSend                            ; [[self voiceOverBack] setHidden:1]
loc_10004d86c:
  10004d86c  mov     x0, x20
  10004d870  bl      _objc_release
  10004d874  sub     sp, x29, #0x20
  10004d878  ldp     x29, x30, [sp, #0x20]
  10004d87c  ldp     x20, x19, [sp, #0x10]
  10004d880  ldp     x22, x21, [sp], #0x30
  10004d884  ret
loc_10004d888:
  10004d888  mov     x19, x0
  10004d88c  mov     x0, x20
  10004d890  bl      _objc_release
  10004d894  mov     x0, x19
  10004d898  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController loadView]
; address 0x10004d89c  size 472  kind objc
; ======================================================================
  10004d89c  stp     x26, x25, [sp, #-0x50]!
  10004d8a0  stp     x24, x23, [sp, #0x10]
  10004d8a4  stp     x22, x21, [sp, #0x20]
  10004d8a8  stp     x20, x19, [sp, #0x30]
  10004d8ac  stp     x29, x30, [sp, #0x40]
  10004d8b0  add     x29, sp, #0x40
  10004d8b4  sub     sp, sp, #0x50
  10004d8b8  mov     x20, x0
  10004d8bc  adrp    x25, #0x1003b0000
  10004d8c0  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  10004d8c4  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  10004d8c8  str     x25, [sp, #0x48]
  10004d8cc  adrp    x8, #0x1003bd000
  10004d8d0  add     x8, x8, #0x3f0                           ; @"powerUpDescription"
  10004d8d4  str     x8, [sp, #8]
  10004d8d8  adrp    x24, #0x10041d000
  10004d8dc  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  10004d8e0  adrp    x8, #0x100416000
  10004d8e4  nop
  10004d8e8  ldr     x23, [x8, #0xec0]
  10004d8ec  mov     w2, #1
  10004d8f0  mov     x1, x23
  10004d8f4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  10004d8f8  mov     x29, x29
  10004d8fc  bl      _objc_retainAutoreleasedReturnValue
  10004d900  mov     x19, x0
  10004d904  str     x19, [sp, #0x28]
  10004d908  adrp    x8, #0x1003bd000
  10004d90c  add     x8, x8, #0x410                           ; @"powerUpIcon"
  10004d910  str     x8, [sp, #0x10]
  10004d914  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  10004d918  mov     w2, #2
  10004d91c  mov     x1, x23
  10004d920  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  10004d924  bl      _objc_retain
  10004d928  mov     x21, x0
  10004d92c  str     x21, [sp, #0x30]
  10004d930  adrp    x8, #0x1003bd000
  10004d934  add     x8, x8, #0x430                           ; @"powerUpTitle"
  10004d938  str     x8, [sp, #0x18]
  10004d93c  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  10004d940  mov     w2, #3
  10004d944  mov     x1, x23
  10004d948  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  10004d94c  bl      _objc_retain
  10004d950  mov     x22, x0
  10004d954  str     x22, [sp, #0x38]
  10004d958  adrp    x8, #0x1003bd000
  10004d95c  add     x8, x8, #0x450                           ; @"upgradeButton"
  10004d960  str     x8, [sp, #0x20]
  10004d964  ldr     x0, [x24, #0xf68]                        ; class NSNumber
  10004d968  mov     w2, #5
  10004d96c  mov     x1, x23
  10004d970  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  10004d974  bl      _objc_retain
  10004d978  mov     x23, x0
  10004d97c  str     x23, [sp, #0x40]
  10004d980  adrp    x8, #0x10041d000
  10004d984  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10004d988  adrp    x8, #0x100416000
  10004d98c  nop
  10004d990  ldr     x1, [x8, #0xcd0]
  10004d994  add     x2, sp, #0x28
  10004d998  add     x3, sp, #8
  10004d99c  mov     w4, #4
  10004d9a0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x28] forKeys:&sp[0x8] count:4]
  10004d9a4  mov     x29, x29
  10004d9a8  bl      _objc_retainAutoreleasedReturnValue
  10004d9ac  mov     x24, x0
  10004d9b0  mov     x0, x23
  10004d9b4  bl      _objc_release
  10004d9b8  mov     x0, x22
  10004d9bc  bl      _objc_release
  10004d9c0  mov     x0, x21
  10004d9c4  bl      _objc_release
  10004d9c8  mov     x0, x19
  10004d9cc  bl      _objc_release
  10004d9d0  adrp    x8, #0x100416000
  10004d9d4  nop
  10004d9d8  ldr     x1, [x8, #0xbf0]
  10004d9dc  adrp    x2, #0x1003bd000
  10004d9e0  add     x2, x2, #0x470                           ; @"ADArmoryPowerUpUpgraderViewController"
  10004d9e4  mov     x0, x20
  10004d9e8  mov     x3, x24
  10004d9ec  bl      _objc_msgSend                            ; [self loADViewBasedOnDeviceWithNibName:@"ADArmoryPowerUpUpgraderViewController" WithTagDictionary:[NSDictionary dictionaryWithObjects:&sp[0x28] forKeys:&sp[0x8] count:4]]
  10004d9f0  mov     x0, x24
  10004d9f4  bl      _objc_release
  10004d9f8  ldr     x8, [sp, #0x48]
  10004d9fc  sub     x8, x25, x8
  10004da00  cbnz    x8, loc_10004da20                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10004da04  sub     sp, x29, #0x40
  10004da08  ldp     x29, x30, [sp, #0x40]
  10004da0c  ldp     x20, x19, [sp, #0x30]
  10004da10  ldp     x22, x21, [sp, #0x20]
  10004da14  ldp     x24, x23, [sp, #0x10]
  10004da18  ldp     x26, x25, [sp], #0x50
  10004da1c  ret
loc_10004da20:
  10004da20  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10004da24  mov     x20, x0
  10004da28  b       loc_10004da58
  10004da2c  mov     x20, x0
  10004da30  b       loc_10004da50
  10004da34  mov     x20, x0
  10004da38  b       loc_10004da48
  10004da3c  mov     x20, x0
  10004da40  mov     x0, x23
  10004da44  bl      _objc_release
loc_10004da48:
  10004da48  mov     x0, x22
  10004da4c  bl      _objc_release
loc_10004da50:
  10004da50  mov     x0, x21
  10004da54  bl      _objc_release
loc_10004da58:
  10004da58  mov     x0, x19
  10004da5c  b       loc_10004da68
  10004da60  mov     x20, x0
  10004da64  mov     x0, x24
loc_10004da68:
  10004da68  bl      _objc_release
  10004da6c  mov     x0, x20
  10004da70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController loadInformation]
; address 0x10004da74  size 1856  kind objc
; ======================================================================
  10004da74  stp     x28, x27, [sp, #-0x60]!
  10004da78  stp     x26, x25, [sp, #0x10]
  10004da7c  stp     x24, x23, [sp, #0x20]
  10004da80  stp     x22, x21, [sp, #0x30]
  10004da84  stp     x20, x19, [sp, #0x40]
  10004da88  stp     x29, x30, [sp, #0x50]
  10004da8c  add     x29, sp, #0x50
  10004da90  sub     sp, sp, #0x20
  10004da94  mov     x19, x0
  10004da98  adrp    x8, #0x10041d000
  10004da9c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10004daa0  adrp    x8, #0x100416000
  10004daa4  nop
  10004daa8  ldr     x1, [x8, #0xec8]
  10004daac  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004dab0  mov     x29, x29
  10004dab4  bl      _objc_retainAutoreleasedReturnValue
  10004dab8  mov     x22, x0
  10004dabc  adrp    x8, #0x10041f000
  10004dac0  ldrsw   x27, [x8, #0xa28]                        ; ivar offset ADArmoryPowerUpUpgraderViewController.powerUpDictionary (+0x140)
  10004dac4  ldr     x0, [x19, x27]                           ; x0 = self->powerUpDictionary
  10004dac8  adrp    x8, #0x100417000
  10004dacc  nop
  10004dad0  ldr     x20, [x8, #0x40]
  10004dad4  adrp    x2, #0x1003b9000
  10004dad8  add     x2, x2, #0xdb0                           ; @"name"
  10004dadc  mov     x1, x20
  10004dae0  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004dae4  mov     x29, x29
  10004dae8  bl      _objc_retainAutoreleasedReturnValue
  10004daec  mov     x23, x0
  10004daf0  adrp    x8, #0x100417000
  10004daf4  nop
  10004daf8  ldr     x1, [x8, #0xd90]
  10004dafc  mov     x0, x22
  10004db00  mov     x2, x23
  10004db04  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]]
  10004db08  mov     x24, x0
  10004db0c  mov     x0, x23
  10004db10  bl      _objc_release
  10004db14  mov     x0, x22
  10004db18  bl      _objc_release
  10004db1c  adrp    x8, #0x100418000
  10004db20  nop
  10004db24  ldr     x22, [x8, #0xc28]
  10004db28  mov     x0, x19
  10004db2c  mov     x1, x22
  10004db30  bl      _objc_msgSend                            ; [self powerUpTitle]
  10004db34  mov     x29, x29
  10004db38  bl      _objc_retainAutoreleasedReturnValue
  10004db3c  mov     x21, x0
  10004db40  adrp    x8, #0x100416000
  10004db44  nop
  10004db48  ldr     x1, [x8, #0xb88]
  10004db4c  bl      _objc_msgSend                            ; [[self powerUpTitle] setupAsTitle]
  10004db50  mov     x0, x21
  10004db54  bl      _objc_release
  10004db58  mov     x0, x19
  10004db5c  mov     x1, x22
  10004db60  bl      _objc_msgSend                            ; [self powerUpTitle]
  10004db64  mov     x29, x29
  10004db68  bl      _objc_retainAutoreleasedReturnValue
  10004db6c  mov     x22, x0
  10004db70  ldr     x0, [x19, x27]                           ; x0 = self->powerUpDictionary
  10004db74  adrp    x2, #0x1003ba000
  10004db78  add     x2, x2, #0x2b0                           ; @"displayName"
  10004db7c  mov     x1, x20
  10004db80  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"displayName"]
  10004db84  str     x24, [sp, #0x18]
  10004db88  mov     x29, x29
  10004db8c  bl      _objc_retainAutoreleasedReturnValue
  10004db90  mov     x24, x0
  10004db94  adrp    x8, #0x100416000
  10004db98  nop
  10004db9c  ldr     x23, [x8, #0xb68]
  10004dba0  mov     x0, x22
  10004dba4  mov     x1, x23
  10004dba8  mov     x2, x24
  10004dbac  bl      _objc_msgSend                            ; [[self powerUpTitle] setText:[self->powerUpDictionary objectForKey:@"displayName"]]
  10004dbb0  mov     x0, x24
  10004dbb4  bl      _objc_release
  10004dbb8  mov     x0, x22
  10004dbbc  bl      _objc_release
  10004dbc0  adrp    x8, #0x100418000
  10004dbc4  nop
  10004dbc8  ldr     x1, [x8, #0xc30]
  10004dbcc  mov     x0, x19
  10004dbd0  bl      _objc_msgSend                            ; [self powerUpIcon]
  10004dbd4  mov     x29, x29
  10004dbd8  bl      _objc_retainAutoreleasedReturnValue
  10004dbdc  mov     x26, x0
  10004dbe0  adrp    x8, #0x10041d000
  10004dbe4  ldr     x25, [x8, #0xf10]                        ; class UIImage
  10004dbe8  nop
  10004dbec  ldr     x24, [x8, #0xf78]                        ; class NSString
  10004dbf0  ldr     x0, [x19, x27]                           ; x0 = self->powerUpDictionary
  10004dbf4  adrp    x2, #0x1003b9000
  10004dbf8  add     x2, x2, #0xdb0                           ; @"name"
  10004dbfc  mov     x1, x20
  10004dc00  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004dc04  mov     x22, x27
  10004dc08  mov     x29, x29
  10004dc0c  bl      _objc_retainAutoreleasedReturnValue
  10004dc10  mov     x27, x0
  10004dc14  adrp    x8, #0x100416000
  10004dc18  nop
  10004dc1c  ldr     x1, [x8, #0xee8]
  10004dc20  str     x1, [sp, #0x10]
  10004dc24  str     x27, [sp]
  10004dc28  adrp    x2, #0x1003b9000
  10004dc2c  add     x2, x2, #0xc10                           ; @"%@_icon"
  10004dc30  mov     x0, x24
  10004dc34  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%@_icon", [self->powerUpDictionary objectForKey:@"name"]]
  10004dc38  mov     x29, x29
  10004dc3c  bl      _objc_retainAutoreleasedReturnValue
  10004dc40  mov     x28, x0
  10004dc44  adrp    x8, #0x100416000
  10004dc48  nop
  10004dc4c  ldr     x24, [x8, #0xd40]
  10004dc50  mov     x0, x25
  10004dc54  mov     x1, x24
  10004dc58  mov     x2, x28
  10004dc5c  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self->powerUpDictionary objectForKey:@"name"]]]
  10004dc60  mov     x29, x29
  10004dc64  bl      _objc_retainAutoreleasedReturnValue
  10004dc68  mov     x21, x0
  10004dc6c  adrp    x8, #0x100416000
  10004dc70  nop
  10004dc74  ldr     x25, [x8, #0xef0]
  10004dc78  mov     x0, x26
  10004dc7c  mov     x1, x25
  10004dc80  mov     x2, x21
  10004dc84  bl      _objc_msgSend                            ; [[self powerUpIcon] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_icon", [self->powerUpDictionary objectForKey:@"name"]]]]
  10004dc88  mov     x0, x21
  10004dc8c  bl      _objc_release
  10004dc90  mov     x0, x28
  10004dc94  bl      _objc_release
  10004dc98  mov     x0, x27
  10004dc9c  bl      _objc_release
  10004dca0  mov     x0, x26
  10004dca4  bl      _objc_release
  10004dca8  adrp    x8, #0x100418000
  10004dcac  nop
  10004dcb0  ldr     x26, [x8, #0xc38]
  10004dcb4  mov     x0, x19
  10004dcb8  mov     x1, x26
  10004dcbc  bl      _objc_msgSend                            ; [self powerUpDescription]
  10004dcc0  mov     x29, x29
  10004dcc4  bl      _objc_retainAutoreleasedReturnValue
  10004dcc8  mov     x21, x0
  10004dccc  adrp    x8, #0x100416000
  10004dcd0  nop
  10004dcd4  ldr     x1, [x8, #0xeb8]
  10004dcd8  bl      _objc_msgSend                            ; [[self powerUpDescription] setupAsInfo]
  10004dcdc  mov     x0, x21
  10004dce0  bl      _objc_release
  10004dce4  mov     x0, x19
  10004dce8  mov     x1, x26
  10004dcec  bl      _objc_msgSend                            ; [self powerUpDescription]
  10004dcf0  mov     x29, x29
  10004dcf4  bl      _objc_retainAutoreleasedReturnValue
  10004dcf8  mov     x26, x0
  10004dcfc  mov     x28, x22
  10004dd00  ldr     x0, [x19, x28]                           ; x0 = self->powerUpDictionary
  10004dd04  adrp    x2, #0x1003bc000
  10004dd08  add     x2, x2, #0x710                           ; @"upgradeText"
  10004dd0c  mov     x1, x20
  10004dd10  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"upgradeText"]
  10004dd14  mov     x29, x29
  10004dd18  bl      _objc_retainAutoreleasedReturnValue
  10004dd1c  mov     x21, x0
  10004dd20  mov     x0, x26
  10004dd24  mov     x1, x23
  10004dd28  mov     x2, x21
  10004dd2c  bl      _objc_msgSend                            ; [[self powerUpDescription] setText:[self->powerUpDictionary objectForKey:@"upgradeText"]]
  10004dd30  adrp    x22, #0x10041d000
  10004dd34  mov     x0, x21
  10004dd38  bl      _objc_release
  10004dd3c  mov     x0, x26
  10004dd40  bl      _objc_release
  10004dd44  adrp    x8, #0x100418000
  10004dd48  nop
  10004dd4c  ldr     x1, [x8, #0xc40]
  10004dd50  mov     x0, x19
  10004dd54  bl      _objc_msgSend                            ; [self badgeImage]
  10004dd58  mov     x29, x29
  10004dd5c  bl      _objc_retainAutoreleasedReturnValue
  10004dd60  mov     x23, x0
  10004dd64  adrp    x8, #0x10041d000
  10004dd68  ldr     x27, [x8, #0xf10]                        ; class UIImage
  10004dd6c  ldr     x0, [x22, #0xf78]                        ; class NSString
  10004dd70  ldr     x8, [sp, #0x18]
  10004dd74  str     x8, [sp]
  10004dd78  adrp    x2, #0x1003bd000
  10004dd7c  add     x2, x2, #0x490                           ; @"badge_level%i"
  10004dd80  ldr     x1, [sp, #0x10]
  10004dd84  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"badge_level%i", [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary …]
  10004dd88  mov     x29, x29
  10004dd8c  bl      _objc_retainAutoreleasedReturnValue
  10004dd90  mov     x26, x0
  10004dd94  mov     x0, x27
  10004dd98  mov     x1, x24
  10004dd9c  mov     x2, x26
  10004dda0  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary …]]
  10004dda4  mov     x29, x29
  10004dda8  bl      _objc_retainAutoreleasedReturnValue
  10004ddac  mov     x21, x0
  10004ddb0  mov     x0, x23
  10004ddb4  mov     x1, x25
  10004ddb8  mov     x2, x21
  10004ddbc  bl      _objc_msgSend                            ; [[self badgeImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary …]]]
  10004ddc0  mov     x0, x21
  10004ddc4  bl      _objc_release
  10004ddc8  mov     x0, x26
  10004ddcc  bl      _objc_release
  10004ddd0  mov     x0, x23
  10004ddd4  bl      _objc_release
  10004ddd8  adrp    x8, #0x100418000
  10004dddc  nop
  10004dde0  ldr     x23, [x8, #0xc48]
  10004dde4  mov     x0, x19
  10004dde8  mov     x1, x23
  10004ddec  bl      _objc_msgSend                            ; [self upgradeButton]
  10004ddf0  mov     x29, x29
  10004ddf4  bl      _objc_retainAutoreleasedReturnValue
  10004ddf8  mov     x21, x0
  10004ddfc  adrp    x8, #0x100416000
  10004de00  nop
  10004de04  ldr     x24, [x8, #0xba0]
  10004de08  mov     x1, x24
  10004de0c  bl      _objc_msgSend                            ; [[self upgradeButton] setupAsMain]
  10004de10  mov     x0, x21
  10004de14  bl      _objc_release
  10004de18  ldr     x9, [sp, #0x18]
  10004de1c  cmp     w9, #4
  10004de20  b.lt    loc_10004def8                            ; if ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]] < 4)
  10004de24  mov     x0, x19
  10004de28  mov     x1, x23
  10004de2c  bl      _objc_msgSend                            ; [self upgradeButton]
  10004de30  mov     x29, x29
  10004de34  bl      _objc_retainAutoreleasedReturnValue
  10004de38  mov     x20, x0
  10004de3c  adrp    x8, #0x100417000
  10004de40  nop
  10004de44  ldr     x1, [x8, #0x998]
  10004de48  mov     w2, #0
  10004de4c  bl      _objc_msgSend                            ; [[self upgradeButton] setUserInteractionEnabled:0]
  10004de50  mov     x0, x20
  10004de54  bl      _objc_release
  10004de58  mov     x0, x19
  10004de5c  mov     x1, x23
  10004de60  bl      _objc_msgSend                            ; [self upgradeButton]
  10004de64  mov     x29, x29
  10004de68  bl      _objc_retainAutoreleasedReturnValue
  10004de6c  mov     x20, x0
  10004de70  adrp    x8, #0x100417000
  10004de74  nop
  10004de78  ldr     x1, [x8, #0x920]
  10004de7c  mov     x3, #0
  10004de80  adrp    x2, #0x1003bd000
  10004de84  add     x2, x2, #0x4b0                           ; @"No Upgrade"
  10004de88  bl      _objc_msgSend                            ; [[self upgradeButton] setTitle:@"No Upgrade" forState:0]
  10004de8c  mov     x0, x20
  10004de90  bl      _objc_release
  10004de94  mov     x0, x19
  10004de98  mov     x1, x23
  10004de9c  bl      _objc_msgSend                            ; [self upgradeButton]
  10004dea0  mov     x29, x29
  10004dea4  bl      _objc_retainAutoreleasedReturnValue
  10004dea8  mov     x20, x0
  10004deac  adrp    x8, #0x100417000
  10004deb0  nop
  10004deb4  ldr     x1, [x8, #0x90]
  10004deb8  mov     w2, #0
  10004debc  bl      _objc_msgSend                            ; [[self upgradeButton] setCoins:0]
  10004dec0  mov     x0, x20
  10004dec4  bl      _objc_release
  10004dec8  mov     x0, x19
  10004decc  mov     x1, x23
  10004ded0  bl      _objc_msgSend                            ; [self upgradeButton]
  10004ded4  mov     x29, x29
  10004ded8  bl      _objc_retainAutoreleasedReturnValue
  10004dedc  mov     x20, x0
  10004dee0  adrp    x8, #0x100418000
  10004dee4  nop
  10004dee8  ldr     x1, [x8, #0xc50]
  10004deec  bl      _objc_msgSend                            ; [[self upgradeButton] centerButtonWithoutImage]
  10004def0  b       loc_10004e074
  10004def4  b       loc_10004e1a0
loc_10004def8:
  10004def8  ldr     x25, [x19, x28]                          ; x25 = self->powerUpDictionary
  10004defc  ldr     x0, [x22, #0xf78]                        ; class NSString
  10004df00  add     w8, w9, #1
  10004df04  str     x8, [sp]
  10004df08  adrp    x2, #0x1003ba000
  10004df0c  add     x2, x2, #0x450                           ; @"level_%i"
  10004df10  ldr     x1, [sp, #0x10]
  10004df14  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]
  10004df18  mov     x29, x29
  10004df1c  bl      _objc_retainAutoreleasedReturnValue
  10004df20  mov     x21, x0
  10004df24  mov     x0, x25
  10004df28  mov     x1, x20
  10004df2c  mov     x2, x21
  10004df30  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]]
  10004df34  mov     x29, x29
  10004df38  bl      _objc_retainAutoreleasedReturnValue
  10004df3c  mov     x25, x0
  10004df40  adrp    x2, #0x1003bd000
  10004df44  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  10004df48  mov     x1, x20
  10004df4c  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"]
  10004df50  mov     x29, x29
  10004df54  bl      _objc_retainAutoreleasedReturnValue
  10004df58  mov     x26, x0
  10004df5c  adrp    x8, #0x100417000
  10004df60  nop
  10004df64  ldr     x1, [x8, #0x110]
  10004df68  bl      _objc_msgSend                            ; [[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"] intValue]
  10004df6c  mov     x20, x0
  10004df70  mov     x0, x26
  10004df74  bl      _objc_release
  10004df78  mov     x0, x25
  10004df7c  bl      _objc_release
  10004df80  mov     x0, x21
  10004df84  bl      _objc_release
  10004df88  mov     x0, x19
  10004df8c  mov     x1, x23
  10004df90  bl      _objc_msgSend                            ; [self upgradeButton]
  10004df94  mov     x29, x29
  10004df98  bl      _objc_retainAutoreleasedReturnValue
  10004df9c  mov     x21, x0
  10004dfa0  mov     x1, x24
  10004dfa4  bl      _objc_msgSend                            ; [[self upgradeButton] setupAsMain]
  10004dfa8  mov     x0, x21
  10004dfac  bl      _objc_release
  10004dfb0  mov     x0, x19
  10004dfb4  mov     x1, x23
  10004dfb8  bl      _objc_msgSend                            ; [self upgradeButton]
  10004dfbc  mov     x29, x29
  10004dfc0  bl      _objc_retainAutoreleasedReturnValue
  10004dfc4  mov     x21, x0
  10004dfc8  ldr     x0, [x22, #0xf78]                        ; class NSString
  10004dfcc  str     x20, [sp]
  10004dfd0  adrp    x2, #0x1003bd000
  10004dfd4  add     x2, x2, #0x4f0                           ; @"Upgrade for %i"
  10004dfd8  ldr     x1, [sp, #0x10]
  10004dfdc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Upgrade for %i", [[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", …]
  10004dfe0  mov     x29, x29
  10004dfe4  bl      _objc_retainAutoreleasedReturnValue
  10004dfe8  mov     x22, x0
  10004dfec  adrp    x8, #0x100417000
  10004dff0  nop
  10004dff4  ldr     x1, [x8, #0x920]
  10004dff8  mov     x3, #0
  10004dffc  mov     x0, x21
  10004e000  mov     x2, x22
  10004e004  bl      _objc_msgSend                            ; [[self upgradeButton] setTitle:[NSString stringWithFormat:@"Upgrade for %i", [[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", …] forState:0]
  10004e008  mov     x0, x22
  10004e00c  bl      _objc_release
  10004e010  mov     x0, x21
  10004e014  bl      _objc_release
  10004e018  mov     x0, x19
  10004e01c  mov     x1, x23
  10004e020  bl      _objc_msgSend                            ; [self upgradeButton]
  10004e024  mov     x29, x29
  10004e028  bl      _objc_retainAutoreleasedReturnValue
  10004e02c  mov     x21, x0
  10004e030  adrp    x8, #0x100417000
  10004e034  nop
  10004e038  ldr     x1, [x8, #0x90]
  10004e03c  mov     x2, x20
  10004e040  bl      _objc_msgSend                            ; [[self upgradeButton] setCoins:[[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"] intValue]]
  10004e044  mov     x0, x21
  10004e048  bl      _objc_release
  10004e04c  mov     x0, x19
  10004e050  mov     x1, x23
  10004e054  bl      _objc_msgSend                            ; [self upgradeButton]
  10004e058  mov     x29, x29
  10004e05c  bl      _objc_retainAutoreleasedReturnValue
  10004e060  mov     x20, x0
  10004e064  adrp    x8, #0x100418000
  10004e068  nop
  10004e06c  ldr     x1, [x8, #0xc58]
  10004e070  bl      _objc_msgSend                            ; [[self upgradeButton] centerButtonTextWithCoinsImage]
loc_10004e074:
  10004e074  mov     x0, x20
  10004e078  sub     sp, x29, #0x50
  10004e07c  ldp     x29, x30, [sp, #0x50]
  10004e080  ldp     x20, x19, [sp, #0x40]
  10004e084  ldp     x22, x21, [sp, #0x30]
  10004e088  ldp     x24, x23, [sp, #0x20]
  10004e08c  ldp     x26, x25, [sp, #0x10]
  10004e090  ldp     x28, x27, [sp], #0x60
  10004e094  b       _objc_release
  10004e098  mov     x19, x0
  10004e09c  b       loc_10004e0c4
  10004e0a0  mov     x19, x0
  10004e0a4  mov     x0, x23
  10004e0a8  b       loc_10004e0c0
  10004e0ac  b       loc_10004e194
  10004e0b0  mov     x19, x0
  10004e0b4  b       loc_10004e0c4
  10004e0b8  mov     x19, x0
  10004e0bc  mov     x0, x24
loc_10004e0c0:
  10004e0c0  bl      _objc_release
loc_10004e0c4:
  10004e0c4  mov     x0, x22
  10004e0c8  b       loc_10004e1a8
  10004e0cc  mov     x19, x0
  10004e0d0  b       loc_10004e118
  10004e0d4  mov     x19, x0
  10004e0d8  b       loc_10004e0f8
  10004e0dc  mov     x19, x0
  10004e0e0  b       loc_10004e0f0
  10004e0e4  mov     x19, x0
  10004e0e8  mov     x0, x21
  10004e0ec  bl      _objc_release
loc_10004e0f0:
  10004e0f0  mov     x0, x28
  10004e0f4  bl      _objc_release
loc_10004e0f8:
  10004e0f8  mov     x0, x27
  10004e0fc  b       loc_10004e114
  10004e100  b       loc_10004e194
  10004e104  mov     x19, x0
  10004e108  b       loc_10004e118
  10004e10c  mov     x19, x0
  10004e110  mov     x0, x21
loc_10004e114:
  10004e114  bl      _objc_release
loc_10004e118:
  10004e118  mov     x0, x26
  10004e11c  b       loc_10004e1a8
  10004e120  mov     x19, x0
  10004e124  b       loc_10004e144
  10004e128  mov     x19, x0
  10004e12c  b       loc_10004e13c
  10004e130  mov     x19, x0
  10004e134  mov     x0, x21
  10004e138  bl      _objc_release
loc_10004e13c:
  10004e13c  mov     x0, x26
  10004e140  bl      _objc_release
loc_10004e144:
  10004e144  mov     x0, x23
  10004e148  b       loc_10004e1a8
  10004e14c  b       loc_10004e194
  10004e150  b       loc_10004e1a0
  10004e154  b       loc_10004e1a0
  10004e158  b       loc_10004e1a0
  10004e15c  b       loc_10004e194
  10004e160  mov     x19, x0
  10004e164  b       loc_10004e174
  10004e168  mov     x19, x0
  10004e16c  mov     x0, x26
  10004e170  bl      _objc_release
loc_10004e174:
  10004e174  mov     x0, x25
  10004e178  b       loc_10004e18c
  10004e17c  b       loc_10004e194
  10004e180  b       loc_10004e194
  10004e184  mov     x19, x0
  10004e188  mov     x0, x22
loc_10004e18c:
  10004e18c  bl      _objc_release
  10004e190  b       loc_10004e198
loc_10004e194:
  10004e194  mov     x19, x0
loc_10004e198:
  10004e198  mov     x0, x21
  10004e19c  b       loc_10004e1a8
loc_10004e1a0:
  10004e1a0  mov     x19, x0
  10004e1a4  mov     x0, x20
loc_10004e1a8:
  10004e1a8  bl      _objc_release
  10004e1ac  mov     x0, x19
  10004e1b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController upgradeButtonPressed:]
; address 0x10004e1b4  size 2240  kind objc
; ======================================================================
  10004e1b4  stp     x28, x27, [sp, #-0x60]!
  10004e1b8  stp     x26, x25, [sp, #0x10]
  10004e1bc  stp     x24, x23, [sp, #0x20]
  10004e1c0  stp     x22, x21, [sp, #0x30]
  10004e1c4  stp     x20, x19, [sp, #0x40]
  10004e1c8  stp     x29, x30, [sp, #0x50]
  10004e1cc  add     x29, sp, #0x50
  10004e1d0  sub     sp, sp, #0x50
  10004e1d4  mov     x19, x0
  10004e1d8  adrp    x8, #0x1003b0000
  10004e1dc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10004e1e0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10004e1e4  str     x8, [sp, #0x48]
  10004e1e8  adrp    x27, #0x10041d000
  10004e1ec  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  10004e1f0  adrp    x8, #0x100416000
  10004e1f4  nop
  10004e1f8  ldr     x22, [x8, #0xec8]
  10004e1fc  mov     x1, x22
  10004e200  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004e204  mov     x29, x29
  10004e208  bl      _objc_retainAutoreleasedReturnValue
  10004e20c  mov     x21, x0
  10004e210  adrp    x8, #0x10041f000
  10004e214  ldrsw   x28, [x8, #0xa28]                        ; ivar offset ADArmoryPowerUpUpgraderViewController.powerUpDictionary (+0x140)
  10004e218  ldr     x0, [x19, x28]                           ; x0 = self->powerUpDictionary
  10004e21c  adrp    x8, #0x100417000
  10004e220  nop
  10004e224  ldr     x20, [x8, #0x40]
  10004e228  adrp    x2, #0x1003b9000
  10004e22c  add     x2, x2, #0xdb0                           ; @"name"
  10004e230  mov     x1, x20
  10004e234  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004e238  mov     x29, x29
  10004e23c  bl      _objc_retainAutoreleasedReturnValue
  10004e240  mov     x23, x0
  10004e244  adrp    x8, #0x100417000
  10004e248  nop
  10004e24c  ldr     x1, [x8, #0xd90]
  10004e250  mov     x0, x21
  10004e254  mov     x2, x23
  10004e258  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]]
  10004e25c  mov     x24, x0
  10004e260  mov     x0, x23
  10004e264  bl      _objc_release
  10004e268  mov     x0, x21
  10004e26c  bl      _objc_release
  10004e270  cmp     w24, #3
  10004e274  b.gt    loc_10004e88c                            ; if ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]] > 3)
  10004e278  ldr     x23, [x19, x28]                          ; x23 = self->powerUpDictionary
  10004e27c  adrp    x8, #0x10041d000
  10004e280  ldr     x0, [x8, #0xf78]                         ; class NSString
  10004e284  add     w25, w24, #1
  10004e288  adrp    x8, #0x100416000
  10004e28c  nop
  10004e290  ldr     x1, [x8, #0xee8]
  10004e294  str     x25, [sp]
  10004e298  adrp    x2, #0x1003ba000
  10004e29c  add     x2, x2, #0x450                           ; @"level_%i"
  10004e2a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]
  10004e2a4  mov     x29, x29
  10004e2a8  bl      _objc_retainAutoreleasedReturnValue
  10004e2ac  mov     x21, x0
  10004e2b0  mov     x0, x23
  10004e2b4  mov     x1, x20
  10004e2b8  mov     x2, x21
  10004e2bc  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]]
  10004e2c0  mov     x29, x29
  10004e2c4  bl      _objc_retainAutoreleasedReturnValue
  10004e2c8  mov     x24, x0
  10004e2cc  adrp    x2, #0x1003bd000
  10004e2d0  add     x2, x2, #0x4d0                           ; @"upgradeCost"
  10004e2d4  mov     x1, x20
  10004e2d8  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"]
  10004e2dc  mov     x29, x29
  10004e2e0  bl      _objc_retainAutoreleasedReturnValue
  10004e2e4  mov     x26, x0
  10004e2e8  adrp    x8, #0x100417000
  10004e2ec  nop
  10004e2f0  ldr     x1, [x8, #0x110]
  10004e2f4  bl      _objc_msgSend                            ; [[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"] intValue]
  10004e2f8  mov     x23, x0
  10004e2fc  mov     x0, x26
  10004e300  bl      _objc_release
  10004e304  mov     x0, x24
  10004e308  bl      _objc_release
  10004e30c  mov     x0, x21
  10004e310  bl      _objc_release
  10004e314  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  10004e318  mov     x1, x22
  10004e31c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004e320  mov     x29, x29
  10004e324  bl      _objc_retainAutoreleasedReturnValue
  10004e328  mov     x24, x0
  10004e32c  adrp    x8, #0x100417000
  10004e330  nop
  10004e334  ldr     x21, [x8, #0x958]
  10004e338  mov     x1, x21
  10004e33c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10004e340  mov     x26, x0
  10004e344  mov     x0, x24
  10004e348  bl      _objc_release
  10004e34c  cmp     w26, w23
  10004e350  b.ge    loc_10004e58c                            ; if ([[ADInventory sharedInventory] coins] >= [[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelFor…)
  10004e354  adrp    x8, #0x10041e000
  10004e358  ldr     x0, [x8, #0x80]                          ; class UIAlertView
  10004e35c  adrp    x8, #0x100416000
  10004e360  nop
  10004e364  ldr     x1, [x8, #0xac8]
  10004e368  bl      _objc_msgSend                            ; [UIAlertView alloc]
  10004e36c  mov     x23, x0
  10004e370  adrp    x20, #0x10041d000
  10004e374  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  10004e378  adrp    x8, #0x100416000
  10004e37c  nop
  10004e380  ldr     x27, [x8, #0xb58]
  10004e384  mov     x1, x27
  10004e388  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10004e38c  mov     x29, x29
  10004e390  bl      _objc_retainAutoreleasedReturnValue
  10004e394  str     x0, [sp, #8]
  10004e398  adrp    x8, #0x100416000
  10004e39c  nop
  10004e3a0  ldr     x26, [x8, #0xb60]
  10004e3a4  mov     x4, #0
  10004e3a8  adrp    x2, #0x1003bd000
  10004e3ac  add     x2, x2, #0x510                           ; @"COINS_ALERT_TITLE"
  10004e3b0  adrp    x3, #0x1003b9000
  10004e3b4  add     x3, x3, #0x870                           ; @""
  10004e3b8  mov     x1, x26
  10004e3bc  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0]
  10004e3c0  mov     x29, x29
  10004e3c4  bl      _objc_retainAutoreleasedReturnValue
  10004e3c8  mov     x21, x0
  10004e3cc  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  10004e3d0  mov     x1, x27
  10004e3d4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10004e3d8  mov     x29, x29
  10004e3dc  bl      _objc_retainAutoreleasedReturnValue
  10004e3e0  mov     x22, x0
  10004e3e4  mov     x4, #0
  10004e3e8  adrp    x2, #0x1003bd000
  10004e3ec  add     x2, x2, #0x530                           ; @"COINS_ALERT_CONTENT"
  10004e3f0  adrp    x3, #0x1003b9000
  10004e3f4  add     x3, x3, #0x870                           ; @""
  10004e3f8  mov     x1, x26
  10004e3fc  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0]
  10004e400  mov     x29, x29
  10004e404  bl      _objc_retainAutoreleasedReturnValue
  10004e408  mov     x24, x0
  10004e40c  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  10004e410  mov     x1, x27
  10004e414  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10004e418  mov     x29, x29
  10004e41c  bl      _objc_retainAutoreleasedReturnValue
  10004e420  mov     x25, x0
  10004e424  mov     x4, #0
  10004e428  adrp    x2, #0x1003bd000
  10004e42c  add     x2, x2, #0x550                           ; @"COINS_ALERT_CANCEL"
  10004e430  adrp    x3, #0x1003b9000
  10004e434  add     x3, x3, #0x870                           ; @""
  10004e438  mov     x1, x26
  10004e43c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0]
  10004e440  mov     x29, x29
  10004e444  bl      _objc_retainAutoreleasedReturnValue
  10004e448  mov     x28, x0
  10004e44c  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  10004e450  mov     x1, x27
  10004e454  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10004e458  mov     x29, x29
  10004e45c  bl      _objc_retainAutoreleasedReturnValue
  10004e460  mov     x27, x0
  10004e464  mov     x4, #0
  10004e468  adrp    x2, #0x1003bc000
  10004e46c  add     x2, x2, #0x7f0                           ; @"COINS_ALERT_MORE"
  10004e470  adrp    x3, #0x1003b9000
  10004e474  add     x3, x3, #0x870                           ; @""
  10004e478  mov     x1, x26
  10004e47c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]
  10004e480  mov     x29, x29
  10004e484  bl      _objc_retainAutoreleasedReturnValue
  10004e488  mov     x26, x0
  10004e48c  adrp    x8, #0x100417000
  10004e490  nop
  10004e494  ldr     x1, [x8, #0x800]
  10004e498  mov     x4, #0
  10004e49c  str     xzr, [sp]
  10004e4a0  mov     x0, x23
  10004e4a4  mov     x2, x21
  10004e4a8  mov     x3, x24
  10004e4ac  mov     x5, x28
  10004e4b0  mov     x6, x26
  10004e4b4  bl      _objc_msgSend                            ; [[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0] otherButtonTitles:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]]
  10004e4b8  mov     x23, x0
  10004e4bc  mov     x0, x26
  10004e4c0  bl      _objc_release
  10004e4c4  mov     x0, x27
  10004e4c8  bl      _objc_release
  10004e4cc  mov     x0, x28
  10004e4d0  bl      _objc_release
  10004e4d4  mov     x0, x25
  10004e4d8  bl      _objc_release
  10004e4dc  mov     x0, x24
  10004e4e0  bl      _objc_release
  10004e4e4  mov     x0, x22
  10004e4e8  bl      _objc_release
  10004e4ec  mov     x0, x21
  10004e4f0  bl      _objc_release
  10004e4f4  ldr     x0, [sp, #8]
  10004e4f8  bl      _objc_release
  10004e4fc  adrp    x8, #0x100418000
  10004e500  nop
  10004e504  ldr     x1, [x8, #0xc60]
  10004e508  mov     x0, x19
  10004e50c  bl      _objc_msgSend                            ; [self alertViewDelegate]
  10004e510  mov     x29, x29
  10004e514  bl      _objc_retainAutoreleasedReturnValue
  10004e518  mov     x20, x0
  10004e51c  adrp    x8, #0x100417000
  10004e520  nop
  10004e524  ldr     x1, [x8, #0x7d8]
  10004e528  mov     x0, x23
  10004e52c  mov     x2, x20
  10004e530  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0] otherButtonTitles:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_MORE" value:@"" table:0]] setDelegate:[self alertViewDelegate]]
  10004e534  mov     x0, x20
  10004e538  bl      _objc_release
  10004e53c  adrp    x8, #0x100417000
  10004e540  nop
  10004e544  ldr     x1, [x8, #0x810]
  10004e548  mov     x0, x23
  10004e54c  bl      _objc_msgSend                            ; [[[UIAlertView alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_TITLE" value:@"" table:0] message:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CONTENT" value:@"" table:0] delegate:0 cancelButtonTitle:[[NSBundle mainBundle] localizedStringForKey:@"COINS_ALERT_CANCEL" value:@"" table:0] otherButtonTitles:[[NSBundle mainBundle] localizedStringForKey:@"COIN…
  10004e550  ldr     x8, [sp, #0x48]
  10004e554  adrp    x9, #0x1003b0000
  10004e558  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10004e55c  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10004e560  sub     x8, x9, x8
  10004e564  cbnz    x8, loc_10004e8c4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10004e568  mov     x0, x23
  10004e56c  sub     sp, x29, #0x50
  10004e570  ldp     x29, x30, [sp, #0x50]
  10004e574  ldp     x20, x19, [sp, #0x40]
  10004e578  ldp     x22, x21, [sp, #0x30]
  10004e57c  ldp     x24, x23, [sp, #0x20]
  10004e580  ldp     x26, x25, [sp, #0x10]
  10004e584  ldp     x28, x27, [sp], #0x60
  10004e588  b       _objc_release
loc_10004e58c:
  10004e58c  ldr     x0, [x27, #0xf70]                        ; class ADInventory
  10004e590  mov     x1, x22
  10004e594  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004e598  mov     x24, x27
  10004e59c  mov     x29, x29
  10004e5a0  bl      _objc_retainAutoreleasedReturnValue
  10004e5a4  mov     x26, x0
  10004e5a8  ldr     x0, [x19, x28]                           ; x0 = self->powerUpDictionary
  10004e5ac  adrp    x2, #0x1003b9000
  10004e5b0  add     x2, x2, #0xdb0                           ; @"name"
  10004e5b4  mov     x1, x20
  10004e5b8  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004e5bc  mov     x29, x29
  10004e5c0  bl      _objc_retainAutoreleasedReturnValue
  10004e5c4  mov     x27, x0
  10004e5c8  adrp    x8, #0x100418000
  10004e5cc  nop
  10004e5d0  ldr     x1, [x8, #0xc68]
  10004e5d4  mov     x0, x26
  10004e5d8  mov     x2, x25
  10004e5dc  mov     x3, x27
  10004e5e0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setLevel:([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]] + 1) forPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]]
  10004e5e4  mov     x0, x27
  10004e5e8  bl      _objc_release
  10004e5ec  mov     x0, x26
  10004e5f0  bl      _objc_release
  10004e5f4  adrp    x8, #0x10041d000
  10004e5f8  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  10004e5fc  adrp    x8, #0x100416000
  10004e600  nop
  10004e604  ldr     x1, [x8, #0xb28]
  10004e608  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  10004e60c  mov     x29, x29
  10004e610  bl      _objc_retainAutoreleasedReturnValue
  10004e614  mov     x25, x0
  10004e618  adrp    x8, #0x100416000
  10004e61c  nop
  10004e620  ldr     x1, [x8, #0xc18]
  10004e624  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  10004e628  mov     x29, x29
  10004e62c  bl      _objc_retainAutoreleasedReturnValue
  10004e630  mov     x26, x0
  10004e634  adrp    x8, #0x100417000
  10004e638  nop
  10004e63c  ldr     x1, [x8, #0xb08]
  10004e640  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] statusBar]
  10004e644  mov     x29, x29
  10004e648  bl      _objc_retainAutoreleasedReturnValue
  10004e64c  mov     x27, x0
  10004e650  neg     w2, w23                                  ; t1 = -[[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"] intValue]
  10004e654  adrp    x8, #0x100417000
  10004e658  nop
  10004e65c  ldr     x1, [x8, #0x968]
  10004e660  bl      _objc_msgSend                            ; [[[[UIApplication sharedApplication] delegate] statusBar] animateCoins:t1]
  10004e664  mov     x0, x27
  10004e668  bl      _objc_release
  10004e66c  mov     x0, x26
  10004e670  bl      _objc_release
  10004e674  mov     x0, x25
  10004e678  bl      _objc_release
  10004e67c  ldr     x0, [x24, #0xf70]                        ; class ADInventory
  10004e680  mov     x1, x22
  10004e684  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004e688  mov     x29, x29
  10004e68c  bl      _objc_retainAutoreleasedReturnValue
  10004e690  mov     x22, x0
  10004e694  mov     x1, x21
  10004e698  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] coins]
  10004e69c  sub     w2, w0, w23                              ; t2 = ([[ADInventory sharedInventory] coins] - [[[self->powerUpDictionary objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary…]] objectForKey:@"upgradeCost"] intValue])
  10004e6a0  adrp    x8, #0x100417000
  10004e6a4  nop
  10004e6a8  ldr     x1, [x8, #0x90]
  10004e6ac  mov     x0, x22
  10004e6b0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] setCoins:t2]
  10004e6b4  mov     x0, x22
  10004e6b8  bl      _objc_release
  10004e6bc  adrp    x2, #0x1003b9000
  10004e6c0  add     x2, x2, #0xdb0                           ; @"name"
  10004e6c4  str     x2, [sp, #0x38]
  10004e6c8  ldr     x0, [x19, x28]                           ; x0 = self->powerUpDictionary
  10004e6cc  mov     x1, x20
  10004e6d0  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004e6d4  mov     x29, x29
  10004e6d8  bl      _objc_retainAutoreleasedReturnValue
  10004e6dc  mov     x23, x0
  10004e6e0  str     x23, [sp, #0x40]
  10004e6e4  adrp    x8, #0x10041d000
  10004e6e8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10004e6ec  adrp    x8, #0x100416000
  10004e6f0  nop
  10004e6f4  ldr     x1, [x8, #0xcd0]
  10004e6f8  add     x2, sp, #0x40
  10004e6fc  add     x3, sp, #0x38
  10004e700  mov     w4, #1
  10004e704  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x40] forKeys:&sp[0x38] count:1]
  10004e708  mov     x29, x29
  10004e70c  bl      _objc_retainAutoreleasedReturnValue
  10004e710  mov     x22, x0
  10004e714  mov     x0, x23
  10004e718  bl      _objc_release
  10004e71c  adrp    x8, #0x10041d000
  10004e720  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10004e724  adrp    x8, #0x100416000
  10004e728  nop
  10004e72c  ldr     x1, [x8, #0xe88]
  10004e730  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10004e734  mov     x29, x29
  10004e738  bl      _objc_retainAutoreleasedReturnValue
  10004e73c  mov     x23, x0
  10004e740  adrp    x8, #0x100417000
  10004e744  nop
  10004e748  ldr     x1, [x8, #0xf98]
  10004e74c  adrp    x2, #0x1003bc000
  10004e750  add     x2, x2, #0x6d0                           ; @"POWERUP_UPGRADE_EVENT"
  10004e754  mov     x3, x19
  10004e758  mov     x4, x22
  10004e75c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"POWERUP_UPGRADE_EVENT" object:self userInfo:[NSDictionary dictionaryWithObjects:&sp[0x40] forKeys:&sp[0x38] count:1]]
  10004e760  mov     x0, x23
  10004e764  bl      _objc_release
  10004e768  ldr     x0, [x19, x28]                           ; x0 = self->powerUpDictionary
  10004e76c  adrp    x2, #0x1003b9000
  10004e770  add     x2, x2, #0xdb0                           ; @"name"
  10004e774  mov     x1, x20
  10004e778  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004e77c  mov     x29, x29
  10004e780  bl      _objc_retainAutoreleasedReturnValue
  10004e784  mov     x20, x0
  10004e788  adrp    x8, #0x10041e000
  10004e78c  ldr     x0, [x8, #8]                             ; class ADTracker
  10004e790  adrp    x8, #0x100416000
  10004e794  nop
  10004e798  ldr     x1, [x8, #0xac0]
  10004e79c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10004e7a0  mov     x29, x29
  10004e7a4  bl      _objc_retainAutoreleasedReturnValue
  10004e7a8  mov     x23, x0
  10004e7ac  adrp    x8, #0x100418000
  10004e7b0  nop
  10004e7b4  ldr     x1, [x8, #0xc48]
  10004e7b8  mov     x0, x19
  10004e7bc  bl      _objc_msgSend                            ; [self upgradeButton]
  10004e7c0  mov     x29, x29
  10004e7c4  bl      _objc_retainAutoreleasedReturnValue
  10004e7c8  mov     x24, x0
  10004e7cc  mov     x1, x21
  10004e7d0  bl      _objc_msgSend                            ; [[self upgradeButton] coins]
  10004e7d4  scvtf   d0, w0
  10004e7d8  adrp    x8, #0x100418000
  10004e7dc  nop
  10004e7e0  ldr     x1, [x8, #0xc70]
  10004e7e4  mov     x0, x23
  10004e7e8  mov     x2, x20
  10004e7ec  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] recordWeaponUpgrade:[self->powerUpDictionary objectForKey:@"name"] Price:(float)[[self upgradeButton] coins]]
  10004e7f0  mov     x0, x24
  10004e7f4  bl      _objc_release
  10004e7f8  mov     x0, x23
  10004e7fc  bl      _objc_release
  10004e800  adrp    x8, #0x100418000
  10004e804  nop
  10004e808  ldr     x1, [x8, #0xc78]
  10004e80c  mov     x0, x19
  10004e810  bl      _objc_msgSend                            ; [self showNextLevel]
  10004e814  mov     w1, #0x3b9a0000
  10004e818  movk    w1, #0xca00
  10004e81c  mov     x0, #0
  10004e820  bl      _dispatch_time                           ; dispatch_time(0, 0x3b9aca00)
  10004e824  mov     x21, x0
  10004e828  adrp    x8, #0x1003b0000
  10004e82c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10004e830  mov     w9, #-0x3e000000
  10004e834  str     x8, [sp, #0x10]
  10004e838  stp     w9, wzr, [sp, #0x18]
  10004e83c  adr     x8, #0x10004ea74                         ; &-[ADArmoryPowerUpUpgraderViewController upgradeButtonPressed:]_block_invoke
  10004e840  nop
  10004e844  str     x8, [sp, #0x20]
  10004e848  adrp    x8, #0x1003b1000
  10004e84c  add     x8, x8, #0x870                           ; &d_1003b1870
  10004e850  str     x8, [sp, #0x28]
  10004e854  mov     x0, x19
  10004e858  bl      _objc_retain
  10004e85c  str     x0, [sp, #0x30]
  10004e860  adrp    x1, #0x1003b0000
  10004e864  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10004e868  add     x2, sp, #0x10
  10004e86c  mov     x0, x21
  10004e870  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x3b9aca00), __dispatch_main_q, ^{-[ADArmoryPowerUpUpgraderViewController upgradeButtonPressed:]_block_invoke captures +0x20=self, +0x28=@"name", +0x30=[self->powerUpDictionary objectForKey:@"…, +0x38=___stack_chk_guard[+0x0]})
  10004e874  ldr     x0, [sp, #0x30]
  10004e878  bl      _objc_release
  10004e87c  mov     x0, x20
  10004e880  bl      _objc_release
  10004e884  mov     x0, x22
  10004e888  bl      _objc_release
loc_10004e88c:
  10004e88c  ldr     x8, [sp, #0x48]
  10004e890  adrp    x9, #0x1003b0000
  10004e894  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10004e898  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10004e89c  sub     x8, x9, x8
  10004e8a0  cbnz    x8, loc_10004e8c4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10004e8a4  sub     sp, x29, #0x50
  10004e8a8  ldp     x29, x30, [sp, #0x50]
  10004e8ac  ldp     x20, x19, [sp, #0x40]
  10004e8b0  ldp     x22, x21, [sp, #0x30]
  10004e8b4  ldp     x24, x23, [sp, #0x20]
  10004e8b8  ldp     x26, x25, [sp, #0x10]
  10004e8bc  ldp     x28, x27, [sp], #0x60
  10004e8c0  ret
loc_10004e8c4:
  10004e8c4  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10004e8c8  mov     x19, x0
  10004e8cc  b       loc_10004ea6c
  10004e8d0  mov     x19, x0
  10004e8d4  b       loc_10004e908
  10004e8d8  mov     x19, x0
  10004e8dc  mov     x0, x23
  10004e8e0  b       loc_10004e904
  10004e8e4  mov     x19, x0
  10004e8e8  b       loc_10004e908
  10004e8ec  mov     x19, x0
  10004e8f0  b       loc_10004e900
  10004e8f4  mov     x19, x0
  10004e8f8  mov     x0, x26
  10004e8fc  bl      _objc_release
loc_10004e900:
  10004e900  mov     x0, x24
loc_10004e904:
  10004e904  bl      _objc_release
loc_10004e908:
  10004e908  mov     x0, x21
  10004e90c  bl      _objc_release
  10004e910  b       loc_10004ea6c
  10004e914  mov     x19, x0
  10004e918  mov     x0, x24
  10004e91c  bl      _objc_release
  10004e920  b       loc_10004ea6c
  10004e924  mov     x19, x0
  10004e928  b       loc_10004ea38
  10004e92c  mov     x19, x0
  10004e930  b       loc_10004ea64
  10004e934  mov     x19, x0
  10004e938  b       loc_10004ea64
  10004e93c  mov     x19, x0
  10004e940  mov     x0, x24
  10004e944  bl      _objc_release
  10004e948  b       loc_10004ea54
  10004e94c  mov     x19, x0
  10004e950  b       loc_10004ea5c
  10004e954  mov     x19, x0
  10004e958  b       loc_10004e9c8
  10004e95c  mov     x19, x0
  10004e960  b       loc_10004e9c0
  10004e964  mov     x19, x0
  10004e968  b       loc_10004e9b8
  10004e96c  mov     x19, x0
  10004e970  b       loc_10004e9b0
  10004e974  mov     x19, x0
  10004e978  b       loc_10004e9a8
  10004e97c  mov     x19, x0
  10004e980  b       loc_10004e9a0
  10004e984  mov     x19, x0
  10004e988  b       loc_10004e998
  10004e98c  mov     x19, x0
  10004e990  mov     x0, x26
  10004e994  bl      _objc_release
loc_10004e998:
  10004e998  mov     x0, x27
  10004e99c  bl      _objc_release
loc_10004e9a0:
  10004e9a0  mov     x0, x28
  10004e9a4  bl      _objc_release
loc_10004e9a8:
  10004e9a8  mov     x0, x25
  10004e9ac  bl      _objc_release
loc_10004e9b0:
  10004e9b0  mov     x0, x24
  10004e9b4  bl      _objc_release
loc_10004e9b8:
  10004e9b8  mov     x0, x22
  10004e9bc  bl      _objc_release
loc_10004e9c0:
  10004e9c0  mov     x0, x21
  10004e9c4  bl      _objc_release
loc_10004e9c8:
  10004e9c8  ldr     x0, [sp, #8]
  10004e9cc  bl      _objc_release
  10004e9d0  b       loc_10004ea6c
  10004e9d4  mov     x19, x0
  10004e9d8  mov     x0, x20
  10004e9dc  bl      _objc_release
  10004e9e0  b       loc_10004ea38
  10004e9e4  mov     x19, x0
  10004e9e8  b       loc_10004e9f8
  10004e9ec  mov     x19, x0
  10004e9f0  mov     x0, x27
  10004e9f4  bl      _objc_release
loc_10004e9f8:
  10004e9f8  mov     x0, x26
  10004e9fc  bl      _objc_release
  10004ea00  b       loc_10004ea6c
  10004ea04  mov     x19, x0
  10004ea08  b       loc_10004ea28
  10004ea0c  mov     x19, x0
  10004ea10  b       loc_10004ea20
  10004ea14  mov     x19, x0
  10004ea18  mov     x0, x27
  10004ea1c  bl      _objc_release
loc_10004ea20:
  10004ea20  mov     x0, x26
  10004ea24  bl      _objc_release
loc_10004ea28:
  10004ea28  mov     x0, x25
  10004ea2c  bl      _objc_release
  10004ea30  b       loc_10004ea6c
  10004ea34  mov     x19, x0
loc_10004ea38:
  10004ea38  mov     x0, x23
  10004ea3c  bl      _objc_release
  10004ea40  b       loc_10004ea6c
  10004ea44  mov     x19, x0
  10004ea48  mov     x0, x23
  10004ea4c  b       loc_10004ea60
  10004ea50  mov     x19, x0
loc_10004ea54:
  10004ea54  mov     x0, x23
  10004ea58  bl      _objc_release
loc_10004ea5c:
  10004ea5c  mov     x0, x20
loc_10004ea60:
  10004ea60  bl      _objc_release
loc_10004ea64:
  10004ea64  mov     x0, x22
  10004ea68  bl      _objc_release
loc_10004ea6c:
  10004ea6c  mov     x0, x19
  10004ea70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController upgradeButtonPressed:]_block_invoke
; address 0x10004ea74  size 20  kind block
; ======================================================================
  10004ea74  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10004ea78  adrp    x8, #0x100418000
  10004ea7c  nop
  10004ea80  ldr     x1, [x8, #0xc10]
  10004ea84  b       _objc_msgSend                            ; [self loadInformation]

; ======================================================================
; sub_10004ea88
; address 0x10004ea88  size 8  kind sub
; ======================================================================
  10004ea88  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10004ea8c  b       _objc_retain

; ======================================================================
; sub_10004ea90
; address 0x10004ea90  size 8  kind sub
; ======================================================================
  10004ea90  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10004ea94  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController showNextLevel]
; address 0x10004ea98  size 524  kind objc
; ======================================================================
  10004ea98  stp     x24, x23, [sp, #-0x40]!
  10004ea9c  stp     x22, x21, [sp, #0x10]
  10004eaa0  stp     x20, x19, [sp, #0x20]
  10004eaa4  stp     x29, x30, [sp, #0x30]
  10004eaa8  add     x29, sp, #0x30
  10004eaac  sub     sp, sp, #0x60
  10004eab0  mov     x19, x0
  10004eab4  adrp    x8, #0x10041d000
  10004eab8  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10004eabc  adrp    x8, #0x100416000
  10004eac0  nop
  10004eac4  ldr     x1, [x8, #0xec8]
  10004eac8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10004eacc  mov     x29, x29
  10004ead0  bl      _objc_retainAutoreleasedReturnValue
  10004ead4  mov     x21, x0
  10004ead8  adrp    x8, #0x10041f000
  10004eadc  ldrsw   x8, [x8, #0xa28]                         ; ivar offset ADArmoryPowerUpUpgraderViewController.powerUpDictionary (+0x140)
  10004eae0  ldr     x0, [x19, x8]                            ; x0 = self->powerUpDictionary
  10004eae4  adrp    x8, #0x100417000
  10004eae8  nop
  10004eaec  ldr     x1, [x8, #0x40]
  10004eaf0  adrp    x2, #0x1003b9000
  10004eaf4  add     x2, x2, #0xdb0                           ; @"name"
  10004eaf8  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"name"]
  10004eafc  mov     x29, x29
  10004eb00  bl      _objc_retainAutoreleasedReturnValue
  10004eb04  mov     x22, x0
  10004eb08  adrp    x8, #0x100417000
  10004eb0c  nop
  10004eb10  ldr     x1, [x8, #0xd90]
  10004eb14  mov     x0, x21
  10004eb18  mov     x2, x22
  10004eb1c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]]
  10004eb20  mov     x20, x0
  10004eb24  mov     x0, x22
  10004eb28  bl      _objc_release
  10004eb2c  mov     x0, x21
  10004eb30  bl      _objc_release
  10004eb34  adrp    x8, #0x100418000
  10004eb38  nop
  10004eb3c  ldr     x1, [x8, #0xc48]
  10004eb40  mov     x0, x19
  10004eb44  bl      _objc_msgSend                            ; [self upgradeButton]
  10004eb48  mov     x29, x29
  10004eb4c  bl      _objc_retainAutoreleasedReturnValue
  10004eb50  mov     x21, x0
  10004eb54  adrp    x8, #0x100417000
  10004eb58  nop
  10004eb5c  ldr     x1, [x8, #0x998]
  10004eb60  mov     w2, #0
  10004eb64  bl      _objc_msgSend                            ; [[self upgradeButton] setUserInteractionEnabled:0]
  10004eb68  mov     x0, x21
  10004eb6c  bl      _objc_release
  10004eb70  adrp    x8, #0x10041d000
  10004eb74  ldr     x21, [x8, #0xf98]                        ; class UIView
  10004eb78  adrp    x8, #0x100418000
  10004eb7c  nop
  10004eb80  ldr     x1, [x8, #0xc40]
  10004eb84  mov     x0, x19
  10004eb88  bl      _objc_msgSend                            ; [self badgeImage]
  10004eb8c  mov     x29, x29
  10004eb90  bl      _objc_retainAutoreleasedReturnValue
  10004eb94  mov     x22, x0
  10004eb98  adrp    x23, #0x1003b0000
  10004eb9c  ldr     x23, [x23, #0x118]                       ; __NSConcreteStackBlock
  10004eba0  mov     w24, #-0x3e000000
  10004eba4  str     x23, [sp, #0x30]
  10004eba8  stp     w24, wzr, [sp, #0x38]
  10004ebac  adr     x8, #0x10004eca4                         ; &-[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke
  10004ebb0  nop
  10004ebb4  str     x8, [sp, #0x40]
  10004ebb8  adrp    x8, #0x1003b1000
  10004ebbc  add     x8, x8, #0x8a0                           ; &d_1003b18a0
  10004ebc0  str     x8, [sp, #0x48]
  10004ebc4  mov     x0, x19
  10004ebc8  bl      _objc_retain
  10004ebcc  str     x0, [sp, #0x50]
  10004ebd0  str     w20, [sp, #0x58]
  10004ebd4  str     x23, [sp, #8]
  10004ebd8  stp     w24, wzr, [sp, #0x10]
  10004ebdc  adr     x8, #0x10004edc4                         ; &-[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke_2
  10004ebe0  nop
  10004ebe4  str     x8, [sp, #0x18]
  10004ebe8  adrp    x8, #0x1003b1000
  10004ebec  add     x8, x8, #0x8d0                           ; &d_1003b18d0
  10004ebf0  str     x8, [sp, #0x20]
  10004ebf4  bl      _objc_retain
  10004ebf8  str     x0, [sp, #0x28]
  10004ebfc  adrp    x8, #0x100418000
  10004ec00  nop
  10004ec04  ldr     x1, [x8, #0xc80]
  10004ec08  fmov    d0, #0.50000000
  10004ec0c  mov     w3, #0x200000
  10004ec10  add     x4, sp, #0x30
  10004ec14  add     x5, sp, #8
  10004ec18  mov     x0, x21
  10004ec1c  mov     x2, x22
  10004ec20  bl      _objc_msgSend                            ; [UIView transitionWithView:[self badgeImage] duration:0.5 options:0x200000 animations:^{-[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke captures +0x20=self, +0x28=[[ADInventory sharedInventory] levelForP…} completion:^{-[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc2000000, +0x38=&-[ADArmoryPowerUpUpgraderViewController…, +0x40=&d_1003b18a0, +0x48=self, +0x50=[[ADInventory sharedInventory] leve…
  10004ec24  mov     x0, x22
  10004ec28  bl      _objc_release
  10004ec2c  ldr     x0, [sp, #0x28]
  10004ec30  bl      _objc_release
  10004ec34  ldr     x0, [sp, #0x50]
  10004ec38  bl      _objc_release
  10004ec3c  sub     sp, x29, #0x30
  10004ec40  ldp     x29, x30, [sp, #0x30]
  10004ec44  ldp     x20, x19, [sp, #0x20]
  10004ec48  ldp     x22, x21, [sp, #0x10]
  10004ec4c  ldp     x24, x23, [sp], #0x40
  10004ec50  ret
  10004ec54  mov     x19, x0
  10004ec58  b       loc_10004ec70
  10004ec5c  mov     x19, x0
  10004ec60  mov     x0, x22
  10004ec64  bl      _objc_release
  10004ec68  b       loc_10004ec70
  10004ec6c  mov     x19, x0
loc_10004ec70:
  10004ec70  mov     x0, x21
  10004ec74  b       loc_10004ec98
  10004ec78  mov     x19, x0
  10004ec7c  b       loc_10004ec9c
  10004ec80  mov     x19, x0
  10004ec84  mov     x0, x22
  10004ec88  bl      _objc_release
  10004ec8c  ldr     x0, [sp, #0x28]
  10004ec90  bl      _objc_release
  10004ec94  ldr     x0, [sp, #0x50]
loc_10004ec98:
  10004ec98  bl      _objc_release
loc_10004ec9c:
  10004ec9c  mov     x0, x19
  10004eca0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke
; address 0x10004eca4  size 272  kind block
; ======================================================================
  10004eca4  stp     x22, x21, [sp, #-0x30]!
  10004eca8  stp     x20, x19, [sp, #0x10]
  10004ecac  stp     x29, x30, [sp, #0x20]
  10004ecb0  add     x29, sp, #0x20
  10004ecb4  sub     sp, sp, #0x10
  10004ecb8  mov     x20, x0
  10004ecbc  ldr     x0, [x20, #0x20]                         ; x0 = captured self
  10004ecc0  adrp    x8, #0x100418000
  10004ecc4  nop
  10004ecc8  ldr     x1, [x8, #0xc40]
  10004eccc  bl      _objc_msgSend                            ; [self badgeImage]
  10004ecd0  mov     x29, x29
  10004ecd4  bl      _objc_retainAutoreleasedReturnValue
  10004ecd8  mov     x19, x0
  10004ecdc  adrp    x8, #0x10041d000
  10004ece0  ldr     x21, [x8, #0xf10]                        ; class UIImage
  10004ece4  nop
  10004ece8  ldr     x0, [x8, #0xf78]                         ; class NSString
  10004ecec  adrp    x8, #0x100416000
  10004ecf0  nop
  10004ecf4  ldr     x1, [x8, #0xee8]
  10004ecf8  ldr     w8, [x20, #0x28]                         ; w8 = captured [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary objectForKey:@"name"]]
  10004ecfc  str     x8, [sp]
  10004ed00  adrp    x2, #0x1003bd000
  10004ed04  add     x2, x2, #0x490                           ; @"badge_level%i"
  10004ed08  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"badge_level%i", [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary …]
  10004ed0c  mov     x29, x29
  10004ed10  bl      _objc_retainAutoreleasedReturnValue
  10004ed14  mov     x20, x0
  10004ed18  adrp    x8, #0x100416000
  10004ed1c  nop
  10004ed20  ldr     x1, [x8, #0xd40]
  10004ed24  mov     x0, x21
  10004ed28  mov     x2, x20
  10004ed2c  bl      _objc_msgSend                            ; [UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary …]]
  10004ed30  mov     x29, x29
  10004ed34  bl      _objc_retainAutoreleasedReturnValue
  10004ed38  mov     x21, x0
  10004ed3c  adrp    x8, #0x100416000
  10004ed40  nop
  10004ed44  ldr     x1, [x8, #0xef0]
  10004ed48  mov     x0, x19
  10004ed4c  mov     x2, x21
  10004ed50  bl      _objc_msgSend                            ; [[self badgeImage] setImage:[UIImage imageNamed:[NSString stringWithFormat:@"badge_level%i", [[ADInventory sharedInventory] levelForPowerUpWithName:[self->powerUpDictionary …]]]
  10004ed54  mov     x0, x21
  10004ed58  bl      _objc_release
  10004ed5c  mov     x0, x20
  10004ed60  bl      _objc_release
  10004ed64  mov     x0, x19
  10004ed68  sub     sp, x29, #0x20
  10004ed6c  ldp     x29, x30, [sp, #0x20]
  10004ed70  ldp     x20, x19, [sp, #0x10]
  10004ed74  ldp     x22, x21, [sp], #0x30
  10004ed78  b       _objc_release
  10004ed7c  mov     x21, x0
  10004ed80  b       loc_10004eda4
  10004ed84  mov     x21, x0
  10004ed88  b       loc_10004ed9c
  10004ed8c  mov     x1, x21
  10004ed90  mov     x21, x0
  10004ed94  mov     x0, x1
  10004ed98  bl      _objc_release
loc_10004ed9c:
  10004ed9c  mov     x0, x20
  10004eda0  bl      _objc_release
loc_10004eda4:
  10004eda4  mov     x0, x19
  10004eda8  bl      _objc_release
  10004edac  mov     x0, x21
  10004edb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10004edb4
; address 0x10004edb4  size 8  kind sub
; ======================================================================
  10004edb4  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10004edb8  b       _objc_retain

; ======================================================================
; sub_10004edbc
; address 0x10004edbc  size 8  kind sub
; ======================================================================
  10004edbc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10004edc0  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController showNextLevel]_block_invoke_2
; address 0x10004edc4  size 100  kind block
; ======================================================================
  10004edc4  stp     x20, x19, [sp, #-0x20]!
  10004edc8  stp     x29, x30, [sp, #0x10]
  10004edcc  add     x29, sp, #0x10
  10004edd0  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10004edd4  adrp    x8, #0x100418000
  10004edd8  nop
  10004eddc  ldr     x1, [x8, #0xc48]
  10004ede0  bl      _objc_msgSend                            ; [self upgradeButton]
  10004ede4  mov     x29, x29
  10004ede8  bl      _objc_retainAutoreleasedReturnValue
  10004edec  mov     x19, x0
  10004edf0  adrp    x8, #0x100417000
  10004edf4  nop
  10004edf8  ldr     x1, [x8, #0x998]
  10004edfc  mov     w2, #1
  10004ee00  bl      _objc_msgSend                            ; [[self upgradeButton] setUserInteractionEnabled:1]
  10004ee04  mov     x0, x19
  10004ee08  ldp     x29, x30, [sp, #0x10]
  10004ee0c  ldp     x20, x19, [sp], #0x20
  10004ee10  b       _objc_release
  10004ee14  mov     x20, x0
  10004ee18  mov     x0, x19
  10004ee1c  bl      _objc_release
  10004ee20  mov     x0, x20
  10004ee24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10004ee28
; address 0x10004ee28  size 8  kind sub
; ======================================================================
  10004ee28  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10004ee2c  b       _objc_retain

; ======================================================================
; sub_10004ee30
; address 0x10004ee30  size 8  kind sub
; ======================================================================
  10004ee30  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10004ee34  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController backButtonPressed:]
; address 0x10004ee38  size 100  kind objc
; ======================================================================
  10004ee38  stp     x20, x19, [sp, #-0x20]!
  10004ee3c  stp     x29, x30, [sp, #0x10]
  10004ee40  add     x29, sp, #0x10
  10004ee44  adrp    x8, #0x100416000
  10004ee48  nop
  10004ee4c  ldr     x1, [x8, #0xf18]
  10004ee50  bl      _objc_msgSend                            ; [self view]
  10004ee54  mov     x29, x29
  10004ee58  bl      _objc_retainAutoreleasedReturnValue
  10004ee5c  mov     x19, x0
  10004ee60  adrp    x8, #0x100417000
  10004ee64  nop
  10004ee68  ldr     x1, [x8, #0x1d0]
  10004ee6c  bl      _objc_msgSend                            ; [[self view] removeFromSuperview]
  10004ee70  mov     x0, x19
  10004ee74  ldp     x29, x30, [sp, #0x10]
  10004ee78  ldp     x20, x19, [sp], #0x20
  10004ee7c  b       _objc_release
  10004ee80  mov     x20, x0
  10004ee84  b       loc_10004ee94
  10004ee88  mov     x20, x0
  10004ee8c  mov     x0, x19
  10004ee90  bl      _objc_release
loc_10004ee94:
  10004ee94  mov     x0, x20
  10004ee98  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController armoryViewController]
; address 0x10004ee9c  size 16  kind objc
; ======================================================================
  10004ee9c  adrp    x8, #0x10041f000
  10004eea0  ldrsw   x8, [x8, #0xa2c]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._armoryViewController (+0x148)
  10004eea4  ldr     x0, [x0, x8]                             ; x0 = self->_armoryViewController
  10004eea8  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setArmoryViewController:]
; address 0x10004eeac  size 56  kind objc
; ======================================================================
  10004eeac  stp     x20, x19, [sp, #-0x20]!
  10004eeb0  stp     x29, x30, [sp, #0x10]
  10004eeb4  add     x29, sp, #0x10
  10004eeb8  mov     x19, x0
  10004eebc  adrp    x8, #0x10041f000
  10004eec0  ldrsw   x20, [x8, #0xa2c]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._armoryViewController (+0x148)
  10004eec4  mov     x0, x2
  10004eec8  bl      _objc_retain
  10004eecc  ldr     x8, [x19, x20]                           ; x8 = self->_armoryViewController
  10004eed0  str     x0, [x19, x20]                           ; self->_armoryViewController = arg1
  10004eed4  mov     x0, x8
  10004eed8  ldp     x29, x30, [sp, #0x10]
  10004eedc  ldp     x20, x19, [sp], #0x20
  10004eee0  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController powerUpTitle]
; address 0x10004eee4  size 16  kind objc
; ======================================================================
  10004eee4  adrp    x8, #0x10041f000
  10004eee8  ldrsw   x8, [x8, #0xa30]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpTitle (+0x150)
  10004eeec  ldr     x0, [x0, x8]                             ; x0 = self->_powerUpTitle
  10004eef0  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setPowerUpTitle:]
; address 0x10004eef4  size 56  kind objc
; ======================================================================
  10004eef4  stp     x20, x19, [sp, #-0x20]!
  10004eef8  stp     x29, x30, [sp, #0x10]
  10004eefc  add     x29, sp, #0x10
  10004ef00  mov     x19, x0
  10004ef04  adrp    x8, #0x10041f000
  10004ef08  ldrsw   x20, [x8, #0xa30]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpTitle (+0x150)
  10004ef0c  mov     x0, x2
  10004ef10  bl      _objc_retain
  10004ef14  ldr     x8, [x19, x20]                           ; x8 = self->_powerUpTitle
  10004ef18  str     x0, [x19, x20]                           ; self->_powerUpTitle = arg1
  10004ef1c  mov     x0, x8
  10004ef20  ldp     x29, x30, [sp, #0x10]
  10004ef24  ldp     x20, x19, [sp], #0x20
  10004ef28  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController powerUpIcon]
; address 0x10004ef2c  size 16  kind objc
; ======================================================================
  10004ef2c  adrp    x8, #0x10041f000
  10004ef30  ldrsw   x8, [x8, #0xa34]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpIcon (+0x158)
  10004ef34  ldr     x0, [x0, x8]                             ; x0 = self->_powerUpIcon
  10004ef38  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setPowerUpIcon:]
; address 0x10004ef3c  size 56  kind objc
; ======================================================================
  10004ef3c  stp     x20, x19, [sp, #-0x20]!
  10004ef40  stp     x29, x30, [sp, #0x10]
  10004ef44  add     x29, sp, #0x10
  10004ef48  mov     x19, x0
  10004ef4c  adrp    x8, #0x10041f000
  10004ef50  ldrsw   x20, [x8, #0xa34]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpIcon (+0x158)
  10004ef54  mov     x0, x2
  10004ef58  bl      _objc_retain
  10004ef5c  ldr     x8, [x19, x20]                           ; x8 = self->_powerUpIcon
  10004ef60  str     x0, [x19, x20]                           ; self->_powerUpIcon = arg1
  10004ef64  mov     x0, x8
  10004ef68  ldp     x29, x30, [sp, #0x10]
  10004ef6c  ldp     x20, x19, [sp], #0x20
  10004ef70  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController powerUpDescription]
; address 0x10004ef74  size 16  kind objc
; ======================================================================
  10004ef74  adrp    x8, #0x10041f000
  10004ef78  ldrsw   x8, [x8, #0xa38]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpDescription (+0x160)
  10004ef7c  ldr     x0, [x0, x8]                             ; x0 = self->_powerUpDescription
  10004ef80  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setPowerUpDescription:]
; address 0x10004ef84  size 56  kind objc
; ======================================================================
  10004ef84  stp     x20, x19, [sp, #-0x20]!
  10004ef88  stp     x29, x30, [sp, #0x10]
  10004ef8c  add     x29, sp, #0x10
  10004ef90  mov     x19, x0
  10004ef94  adrp    x8, #0x10041f000
  10004ef98  ldrsw   x20, [x8, #0xa38]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpDescription (+0x160)
  10004ef9c  mov     x0, x2
  10004efa0  bl      _objc_retain
  10004efa4  ldr     x8, [x19, x20]                           ; x8 = self->_powerUpDescription
  10004efa8  str     x0, [x19, x20]                           ; self->_powerUpDescription = arg1
  10004efac  mov     x0, x8
  10004efb0  ldp     x29, x30, [sp, #0x10]
  10004efb4  ldp     x20, x19, [sp], #0x20
  10004efb8  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController upgradeButton]
; address 0x10004efbc  size 16  kind objc
; ======================================================================
  10004efbc  adrp    x8, #0x10041f000
  10004efc0  ldrsw   x8, [x8, #0xa3c]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._upgradeButton (+0x168)
  10004efc4  ldr     x0, [x0, x8]                             ; x0 = self->_upgradeButton
  10004efc8  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setUpgradeButton:]
; address 0x10004efcc  size 56  kind objc
; ======================================================================
  10004efcc  stp     x20, x19, [sp, #-0x20]!
  10004efd0  stp     x29, x30, [sp, #0x10]
  10004efd4  add     x29, sp, #0x10
  10004efd8  mov     x19, x0
  10004efdc  adrp    x8, #0x10041f000
  10004efe0  ldrsw   x20, [x8, #0xa3c]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._upgradeButton (+0x168)
  10004efe4  mov     x0, x2
  10004efe8  bl      _objc_retain
  10004efec  ldr     x8, [x19, x20]                           ; x8 = self->_upgradeButton
  10004eff0  str     x0, [x19, x20]                           ; self->_upgradeButton = arg1
  10004eff4  mov     x0, x8
  10004eff8  ldp     x29, x30, [sp, #0x10]
  10004effc  ldp     x20, x19, [sp], #0x20
  10004f000  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController voiceOverBack]
; address 0x10004f004  size 16  kind objc
; ======================================================================
  10004f004  adrp    x8, #0x10041f000
  10004f008  ldrsw   x8, [x8, #0xa40]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._voiceOverBack (+0x170)
  10004f00c  ldr     x0, [x0, x8]                             ; x0 = self->_voiceOverBack
  10004f010  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setVoiceOverBack:]
; address 0x10004f014  size 56  kind objc
; ======================================================================
  10004f014  stp     x20, x19, [sp, #-0x20]!
  10004f018  stp     x29, x30, [sp, #0x10]
  10004f01c  add     x29, sp, #0x10
  10004f020  mov     x19, x0
  10004f024  adrp    x8, #0x10041f000
  10004f028  ldrsw   x20, [x8, #0xa40]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._voiceOverBack (+0x170)
  10004f02c  mov     x0, x2
  10004f030  bl      _objc_retain
  10004f034  ldr     x8, [x19, x20]                           ; x8 = self->_voiceOverBack
  10004f038  str     x0, [x19, x20]                           ; self->_voiceOverBack = arg1
  10004f03c  mov     x0, x8
  10004f040  ldp     x29, x30, [sp, #0x10]
  10004f044  ldp     x20, x19, [sp], #0x20
  10004f048  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController badgeImage]
; address 0x10004f04c  size 16  kind objc
; ======================================================================
  10004f04c  adrp    x8, #0x10041f000
  10004f050  ldrsw   x8, [x8, #0xa44]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._badgeImage (+0x178)
  10004f054  ldr     x0, [x0, x8]                             ; x0 = self->_badgeImage
  10004f058  ret

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setBadgeImage:]
; address 0x10004f05c  size 56  kind objc
; ======================================================================
  10004f05c  stp     x20, x19, [sp, #-0x20]!
  10004f060  stp     x29, x30, [sp, #0x10]
  10004f064  add     x29, sp, #0x10
  10004f068  mov     x19, x0
  10004f06c  adrp    x8, #0x10041f000
  10004f070  ldrsw   x20, [x8, #0xa44]                        ; ivar offset ADArmoryPowerUpUpgraderViewController._badgeImage (+0x178)
  10004f074  mov     x0, x2
  10004f078  bl      _objc_retain
  10004f07c  ldr     x8, [x19, x20]                           ; x8 = self->_badgeImage
  10004f080  str     x0, [x19, x20]                           ; self->_badgeImage = arg1
  10004f084  mov     x0, x8
  10004f088  ldp     x29, x30, [sp, #0x10]
  10004f08c  ldp     x20, x19, [sp], #0x20
  10004f090  b       _objc_release

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController alertViewDelegate]
; address 0x10004f094  size 16  kind objc
; ======================================================================
  10004f094  adrp    x8, #0x10041f000
  10004f098  ldrsw   x2, [x8, #0xa48]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._alertViewDelegate (+0x180)
  10004f09c  mov     w3, #1
  10004f0a0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController setAlertViewDelegate:]
; address 0x10004f0a4  size 12  kind objc
; ======================================================================
  10004f0a4  adrp    x8, #0x10041f000
  10004f0a8  ldrsw   x3, [x8, #0xa48]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._alertViewDelegate (+0x180)
  10004f0ac  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADArmoryPowerUpUpgraderViewController .cxx_destruct]
; address 0x10004f0b0  size 204  kind objc
; ======================================================================
  10004f0b0  stp     x20, x19, [sp, #-0x20]!
  10004f0b4  stp     x29, x30, [sp, #0x10]
  10004f0b8  add     x29, sp, #0x10
  10004f0bc  mov     x19, x0
  10004f0c0  adrp    x8, #0x10041f000
  10004f0c4  ldrsw   x8, [x8, #0xa48]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._alertViewDelegate (+0x180)
  10004f0c8  add     x0, x19, x8
  10004f0cc  mov     x1, #0
  10004f0d0  bl      _objc_storeStrong
  10004f0d4  adrp    x8, #0x10041f000
  10004f0d8  ldrsw   x8, [x8, #0xa44]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._badgeImage (+0x178)
  10004f0dc  add     x0, x19, x8
  10004f0e0  mov     x1, #0
  10004f0e4  bl      _objc_storeStrong
  10004f0e8  adrp    x8, #0x10041f000
  10004f0ec  ldrsw   x8, [x8, #0xa40]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._voiceOverBack (+0x170)
  10004f0f0  add     x0, x19, x8
  10004f0f4  mov     x1, #0
  10004f0f8  bl      _objc_storeStrong
  10004f0fc  adrp    x8, #0x10041f000
  10004f100  ldrsw   x8, [x8, #0xa3c]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._upgradeButton (+0x168)
  10004f104  add     x0, x19, x8
  10004f108  mov     x1, #0
  10004f10c  bl      _objc_storeStrong
  10004f110  adrp    x8, #0x10041f000
  10004f114  ldrsw   x8, [x8, #0xa38]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpDescription (+0x160)
  10004f118  add     x0, x19, x8
  10004f11c  mov     x1, #0
  10004f120  bl      _objc_storeStrong
  10004f124  adrp    x8, #0x10041f000
  10004f128  ldrsw   x8, [x8, #0xa34]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpIcon (+0x158)
  10004f12c  add     x0, x19, x8
  10004f130  mov     x1, #0
  10004f134  bl      _objc_storeStrong
  10004f138  adrp    x8, #0x10041f000
  10004f13c  ldrsw   x8, [x8, #0xa30]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._powerUpTitle (+0x150)
  10004f140  add     x0, x19, x8
  10004f144  mov     x1, #0
  10004f148  bl      _objc_storeStrong
  10004f14c  adrp    x8, #0x10041f000
  10004f150  ldrsw   x8, [x8, #0xa2c]                         ; ivar offset ADArmoryPowerUpUpgraderViewController._armoryViewController (+0x148)
  10004f154  add     x0, x19, x8
  10004f158  mov     x1, #0
  10004f15c  bl      _objc_storeStrong
  10004f160  mov     x1, #0
  10004f164  adrp    x8, #0x10041f000
  10004f168  ldrsw   x8, [x8, #0xa28]                         ; ivar offset ADArmoryPowerUpUpgraderViewController.powerUpDictionary (+0x140)
  10004f16c  add     x0, x19, x8
  10004f170  ldp     x29, x30, [sp, #0x10]
  10004f174  ldp     x20, x19, [sp], #0x20
  10004f178  b       _objc_storeStrong
