// unit Accessible_ADChallengeOverviewViewController — 18 functions
//   0x10003e8f4     140  -[Accessible_ADChallengeOverviewViewController initWithNibName:bundle:]
//   0x10003e980    1260  -[Accessible_ADChallengeOverviewViewController viewWillAppear:]
//   0x10003ee6c      60  -[Accessible_ADChallengeOverviewViewController didReceiveMemoryWarning]
//   0x10003eea8      32  -[Accessible_ADChallengeOverviewViewController tableView:numberOfRowsInSection:]
//   0x10003eec8       8  -[Accessible_ADChallengeOverviewViewController numberOfSectionsInTableView:]
//   0x10003eed0     140  -[Accessible_ADChallengeOverviewViewController tableView:heightForRowAtIndexPath:]
//   0x10003ef5c     140  -[Accessible_ADChallengeOverviewViewController tableView:heightForHeaderInSection:]
//   0x10003efe8     584  -[Accessible_ADChallengeOverviewViewController tableView:viewForHeaderInSection:]
//   0x10003f230    4428  -[Accessible_ADChallengeOverviewViewController tableView:cellForRowAtIndexPath:]
//   0x10004037c       4  -[Accessible_ADChallengeOverviewViewController loadEquipment]
//   0x100040380       4  -[Accessible_ADChallengeOverviewViewController missionsButtonPressed:]
//   0x100040384      92  -[Accessible_ADChallengeOverviewViewController viewWillLayoutSubviews]
//   0x1000403e0      40  -[Accessible_ADChallengeOverviewViewController accessibilityPerformMagicTap]
//   0x100040408      16  -[Accessible_ADChallengeOverviewViewController tableView]
//   0x100040418      56  -[Accessible_ADChallengeOverviewViewController setTableView:]
//   0x100040450      16  -[Accessible_ADChallengeOverviewViewController playButton]
//   0x100040460      56  -[Accessible_ADChallengeOverviewViewController setPlayButton:]
//   0x100040498      84  -[Accessible_ADChallengeOverviewViewController .cxx_destruct]

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController initWithNibName:bundle:]
; address 0x10003e8f4  size 140  kind objc
; ======================================================================
  10003e8f4  stp     x22, x21, [sp, #-0x30]!
  10003e8f8  stp     x20, x19, [sp, #0x10]
  10003e8fc  stp     x29, x30, [sp, #0x20]
  10003e900  add     x29, sp, #0x20
  10003e904  sub     sp, sp, #0x10
  10003e908  mov     x20, x3
  10003e90c  mov     x21, x0
  10003e910  mov     x0, x2
  10003e914  bl      _objc_retain
  10003e918  mov     x19, x0
  10003e91c  str     x21, [sp]
  10003e920  adrp    x8, #0x10041e000
  10003e924  ldr     x8, [x8, #0xcd8]
  10003e928  str     x8, [sp, #8]
  10003e92c  adrp    x8, #0x100416000
  10003e930  nop
  10003e934  ldr     x1, [x8, #0xb40]
  10003e938  mov     x0, sp
  10003e93c  mov     x2, x19
  10003e940  mov     x3, x20
  10003e944  bl      _objc_msgSendSuper2                      ; [super initWithNibName:arg1 bundle:arg2]
  10003e948  mov     x20, x0
  10003e94c  mov     x0, x19
  10003e950  bl      _objc_release
  10003e954  mov     x0, x20
  10003e958  sub     sp, x29, #0x20
  10003e95c  ldp     x29, x30, [sp, #0x20]
  10003e960  ldp     x20, x19, [sp, #0x10]
  10003e964  ldp     x22, x21, [sp], #0x30
  10003e968  ret
  10003e96c  mov     x20, x0
  10003e970  mov     x0, x19
  10003e974  bl      _objc_release
  10003e978  mov     x0, x20
  10003e97c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController viewWillAppear:]
; address 0x10003e980  size 1260  kind objc
; ======================================================================
  10003e980  stp     x28, x27, [sp, #-0x60]!
  10003e984  stp     x26, x25, [sp, #0x10]
  10003e988  stp     x24, x23, [sp, #0x20]
  10003e98c  stp     x22, x21, [sp, #0x30]
  10003e990  stp     x20, x19, [sp, #0x40]
  10003e994  stp     x29, x30, [sp, #0x50]
  10003e998  add     x29, sp, #0x50
  10003e99c  sub     sp, sp, #0x120
  10003e9a0  mov     x19, x0
  10003e9a4  adrp    x8, #0x1003b0000
  10003e9a8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10003e9ac  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10003e9b0  stur    x8, [x29, #-0x58]
  10003e9b4  str     x19, [sp, #0x88]
  10003e9b8  adrp    x8, #0x10041e000
  10003e9bc  ldr     x8, [x8, #0xcd8]
  10003e9c0  str     x8, [sp, #0x90]
  10003e9c4  adrp    x8, #0x100417000
  10003e9c8  nop
  10003e9cc  ldr     x1, [x8, #0x928]
  10003e9d0  add     x0, sp, #0x88
  10003e9d4  bl      _objc_msgSendSuper2                      ; [super viewWillAppear:arg1]
  10003e9d8  adrp    x8, #0x100418000
  10003e9dc  nop
  10003e9e0  ldr     x22, [x8, #0x3a0]
  10003e9e4  mov     x0, x19
  10003e9e8  mov     x1, x22
  10003e9ec  bl      _objc_msgSend                            ; [self playButton]
  10003e9f0  mov     x29, x29
  10003e9f4  bl      _objc_retainAutoreleasedReturnValue
  10003e9f8  mov     x20, x0
  10003e9fc  adrp    x8, #0x100417000
  10003ea00  nop
  10003ea04  ldr     x21, [x8, #0x878]
  10003ea08  mov     w2, #1
  10003ea0c  mov     x1, x21
  10003ea10  bl      _objc_msgSend                            ; [[self playButton] setEnabled:1]
  10003ea14  mov     x0, x20
  10003ea18  bl      _objc_release
  10003ea1c  mov     x0, x19
  10003ea20  mov     x1, x22
  10003ea24  bl      _objc_msgSend                            ; [self playButton]
  10003ea28  mov     x29, x29
  10003ea2c  bl      _objc_retainAutoreleasedReturnValue
  10003ea30  mov     x20, x0
  10003ea34  adrp    x8, #0x100417000
  10003ea38  nop
  10003ea3c  ldr     x24, [x8, #0x920]
  10003ea40  mov     x3, #0
  10003ea44  adrp    x2, #0x1003bc000
  10003ea48  add     x2, x2, #0x850                           ; @"Play"
  10003ea4c  mov     x1, x24
  10003ea50  bl      _objc_msgSend                            ; [[self playButton] setTitle:@"Play" forState:0]
  10003ea54  mov     x0, x20
  10003ea58  bl      _objc_release
  10003ea5c  mov     x0, x19
  10003ea60  mov     x1, x22
  10003ea64  bl      _objc_msgSend                            ; [self playButton]
  10003ea68  mov     x29, x29
  10003ea6c  bl      _objc_retainAutoreleasedReturnValue
  10003ea70  mov     x20, x0
  10003ea74  adrp    x8, #0x100416000
  10003ea78  nop
  10003ea7c  ldr     x23, [x8, #0xbd0]
  10003ea80  adrp    x2, #0x1003b9000
  10003ea84  add     x2, x2, #0x870                           ; @""
  10003ea88  mov     x1, x23
  10003ea8c  bl      _objc_msgSend                            ; [[self playButton] setAccessibilityHint:@""]
  10003ea90  mov     x0, x20
  10003ea94  bl      _objc_release
  10003ea98  stp     xzr, xzr, [sp, #0x78]
  10003ea9c  stp     xzr, xzr, [sp, #0x68]
  10003eaa0  stp     xzr, xzr, [sp, #0x58]
  10003eaa4  stp     xzr, xzr, [sp, #0x48]
  10003eaa8  adrp    x8, #0x100417000
  10003eaac  nop
  10003eab0  ldr     x1, [x8, #0x150]
  10003eab4  mov     x0, x19
  10003eab8  bl      _objc_msgSend                            ; [self challengeDict]
  10003eabc  mov     x29, x29
  10003eac0  bl      _objc_retainAutoreleasedReturnValue
  10003eac4  mov     x20, x0
  10003eac8  adrp    x8, #0x100417000
  10003eacc  nop
  10003ead0  ldr     x25, [x8, #0x40]
  10003ead4  adrp    x2, #0x1003b9000
  10003ead8  add     x2, x2, #0xf70                           ; @"weapons"
  10003eadc  mov     x1, x25
  10003eae0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"weapons"]
  10003eae4  stp     x23, x24, [sp, #0x20]
  10003eae8  str     x21, [sp, #0x18]
  10003eaec  mov     x29, x29
  10003eaf0  bl      _objc_retainAutoreleasedReturnValue
  10003eaf4  mov     x21, x0
  10003eaf8  str     x21, [sp, #0x40]
  10003eafc  mov     x0, x20
  10003eb00  bl      _objc_release
  10003eb04  adrp    x8, #0x100416000
  10003eb08  nop
  10003eb0c  ldr     x1, [x8, #0xe00]
  10003eb10  str     x1, [sp, #0x10]
  10003eb14  add     x2, sp, #0x48
  10003eb18  add     x3, sp, #0x98
  10003eb1c  mov     w4, #0x10
  10003eb20  mov     x0, x21
  10003eb24  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16]
  10003eb28  mov     x27, x0
  10003eb2c  stp     x22, x19, [sp, #0x30]
  10003eb30  cbz     x27, loc_10003ec08                       ; if ([[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16] == 0)
  10003eb34  ldr     x8, [sp, #0x58]
  10003eb38  ldr     x22, [x8]
  10003eb3c  adrp    x8, #0x100416000
  10003eb40  nop
  10003eb44  ldr     x28, [x8, #0xec8]
  10003eb48  adrp    x8, #0x100417000
  10003eb4c  add     x8, x8, #0x1d8                           ; &@selector(hasUnlockedWeaponWithName:)
  10003eb50  ldr     x20, [x8]
loc_10003eb54:
  10003eb54  mov     x23, #0
loc_10003eb58:
  10003eb58  ldr     x8, [sp, #0x58]
  10003eb5c  ldr     x8, [x8]
  10003eb60  cmp     x8, x22
  10003eb64  b.eq    loc_10003eb70                            ; if (x8 == x22)
  10003eb68  ldr     x0, [sp, #0x40]
  10003eb6c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self challengeDict] objectForKey:@"weapons"])
loc_10003eb70:
  10003eb70  ldr     x8, [sp, #0x50]
  10003eb74  ldr     x24, [x8, x23, lsl #3]
  10003eb78  adrp    x8, #0x10041d000
  10003eb7c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10003eb80  mov     x1, x28
  10003eb84  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10003eb88  mov     x29, x29
  10003eb8c  bl      _objc_retainAutoreleasedReturnValue
  10003eb90  mov     x21, x0
  10003eb94  mov     x0, x24
  10003eb98  mov     x1, x25
  10003eb9c  adrp    x2, #0x1003b9000
  10003eba0  add     x2, x2, #0xdb0                           ; @"name"
  10003eba4  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10003eba8  mov     x29, x29
  10003ebac  bl      _objc_retainAutoreleasedReturnValue
  10003ebb0  mov     x26, x0
  10003ebb4  mov     x0, x21
  10003ebb8  mov     x1, x20
  10003ebbc  mov     x2, x26
  10003ebc0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  10003ebc4  mov     x19, x0
  10003ebc8  mov     x0, x26
  10003ebcc  bl      _objc_release
  10003ebd0  mov     x0, x21
  10003ebd4  bl      _objc_release
  10003ebd8  tbz     w19, #0, loc_10003ec98                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] & 1))
  10003ebdc  add     x23, x23, #1
  10003ebe0  cmp     x23, x27
  10003ebe4  b.lo    loc_10003eb58                            ; if ((x23 + 1) <u [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16])
  10003ebe8  add     x2, sp, #0x48
  10003ebec  add     x3, sp, #0x98
  10003ebf0  mov     w4, #0x10
  10003ebf4  ldr     x0, [sp, #0x40]
  10003ebf8  ldr     x1, [sp, #0x10]
  10003ebfc  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16]
  10003ec00  mov     x27, x0
  10003ec04  cbnz    x27, loc_10003eb54                       ; if ([[[self challengeDict] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x98] count:16] != 0)
loc_10003ec08:
  10003ec08  ldr     x0, [sp, #0x40]
  10003ec0c  bl      _objc_release
  10003ec10  adrp    x8, #0x100417000
  10003ec14  nop
  10003ec18  ldr     x20, [x8, #0x2a8]
  10003ec1c  ldr     x19, [sp, #0x38]
  10003ec20  mov     x0, x19
  10003ec24  mov     x1, x20
  10003ec28  bl      _objc_msgSend                            ; [self statusBarViewController]
  10003ec2c  mov     x29, x29
  10003ec30  bl      _objc_retainAutoreleasedReturnValue
  10003ec34  mov     x21, x0
  10003ec38  adrp    x8, #0x100417000
  10003ec3c  nop
  10003ec40  ldr     x1, [x8, #0x2b0]
  10003ec44  mov     w2, #1
  10003ec48  bl      _objc_msgSend                            ; [[self statusBarViewController] setArmoryButtonVisibilty:1]
  10003ec4c  mov     x0, x21
  10003ec50  bl      _objc_release
  10003ec54  mov     x0, x19
  10003ec58  mov     x1, x20
  10003ec5c  bl      _objc_msgSend                            ; [self statusBarViewController]
  10003ec60  mov     x29, x29
  10003ec64  bl      _objc_retainAutoreleasedReturnValue
  10003ec68  mov     x20, x0
  10003ec6c  adrp    x8, #0x100417000
  10003ec70  nop
  10003ec74  ldr     x1, [x8, #0x2b8]
  10003ec78  mov     w2, #0
  10003ec7c  bl      _objc_msgSend                            ; [[self statusBarViewController] setCurrenciesVisibility:0]
  10003ec80  adrp    x19, #0x1003b0000
  10003ec84  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10003ec88  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  10003ec8c  mov     x0, x20
  10003ec90  bl      _objc_release
  10003ec94  b       loc_10003edb4
loc_10003ec98:
  10003ec98  adrp    x2, #0x1003b9000
  10003ec9c  add     x2, x2, #0xdb0                           ; @"name"
  10003eca0  mov     x0, x24
  10003eca4  mov     x1, x25
  10003eca8  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10003ecac  ldp     x23, x22, [sp, #0x30]
  10003ecb0  mov     x29, x29
  10003ecb4  bl      _objc_retainAutoreleasedReturnValue
  10003ecb8  adrp    x8, #0x10041f000
  10003ecbc  ldrsw   x19, [x8, #0x8e0]                        ; ivar offset Accessible_ADChallengeOverviewViewController.requiredWeapon (+0x140)
  10003ecc0  ldr     x8, [x22, x19]                           ; x8 = self->requiredWeapon
  10003ecc4  str     x0, [x22, x19]                           ; self->requiredWeapon = [x0 objectForKey:@"name"]
  10003ecc8  mov     x0, x8
  10003eccc  bl      _objc_release
  10003ecd0  mov     x0, x22
  10003ecd4  mov     x1, x23
  10003ecd8  bl      _objc_msgSend                            ; [self playButton]
  10003ecdc  mov     x29, x29
  10003ece0  bl      _objc_retainAutoreleasedReturnValue
  10003ece4  mov     x20, x0
  10003ece8  adrp    x8, #0x10041d000
  10003ecec  ldr     x0, [x8, #0xf78]                         ; class NSString
  10003ecf0  ldr     x8, [x22, x19]                           ; x8 = self->requiredWeapon
  10003ecf4  adrp    x9, #0x100416000
  10003ecf8  nop
  10003ecfc  ldr     x1, [x9, #0xee8]
  10003ed00  str     x8, [sp]
  10003ed04  adrp    x2, #0x1003bc000
  10003ed08  add     x2, x2, #0x870                           ; @"You need to purchase a %@ in the armory to play this challenge"
  10003ed0c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"You need to purchase a %@ in the armory to play this challenge", self->requiredWeapon]
  10003ed10  ldr     x19, [sp, #0x28]
  10003ed14  mov     x29, x29
  10003ed18  bl      _objc_retainAutoreleasedReturnValue
  10003ed1c  mov     x21, x0
  10003ed20  mov     x3, #0
  10003ed24  mov     x0, x20
  10003ed28  mov     x1, x19
  10003ed2c  mov     x2, x21
  10003ed30  bl      _objc_msgSend                            ; [[self playButton] setTitle:[NSString stringWithFormat:@"You need to purchase a %@ in the armory to play this challenge", self->requiredWeapon] forState:0]
  10003ed34  mov     x0, x21
  10003ed38  bl      _objc_release
  10003ed3c  mov     x0, x20
  10003ed40  bl      _objc_release
  10003ed44  mov     x0, x22
  10003ed48  mov     x1, x23
  10003ed4c  bl      _objc_msgSend                            ; [self playButton]
  10003ed50  mov     x29, x29
  10003ed54  bl      _objc_retainAutoreleasedReturnValue
  10003ed58  mov     x20, x0
  10003ed5c  adrp    x2, #0x1003bc000
  10003ed60  add     x2, x2, #0x890                           ; @"Use the armory button to purchase weapons"
  10003ed64  ldr     x1, [sp, #0x20]
  10003ed68  bl      _objc_msgSend                            ; [[self playButton] setAccessibilityHint:@"Use the armory button to purchase weapons"]
  10003ed6c  mov     x0, x20
  10003ed70  bl      _objc_release
  10003ed74  mov     x0, x22
  10003ed78  mov     x1, x23
  10003ed7c  bl      _objc_msgSend                            ; [self playButton]
  10003ed80  mov     x29, x29
  10003ed84  bl      _objc_retainAutoreleasedReturnValue
  10003ed88  mov     x20, x0
  10003ed8c  mov     w2, #0
  10003ed90  ldr     x1, [sp, #0x18]
  10003ed94  bl      _objc_msgSend                            ; [[self playButton] setEnabled:0]
  10003ed98  mov     x0, x20
  10003ed9c  bl      _objc_release
  10003eda0  ldr     x0, [sp, #0x40]
  10003eda4  bl      _objc_release
  10003eda8  adrp    x19, #0x1003b0000
  10003edac  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10003edb0  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
loc_10003edb4:
  10003edb4  ldur    x8, [x29, #-0x58]
  10003edb8  sub     x8, x19, x8
  10003edbc  cbnz    x8, loc_10003ede0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10003edc0  sub     sp, x29, #0x50
  10003edc4  ldp     x29, x30, [sp, #0x50]
  10003edc8  ldp     x20, x19, [sp, #0x40]
  10003edcc  ldp     x22, x21, [sp, #0x30]
  10003edd0  ldp     x24, x23, [sp, #0x20]
  10003edd4  ldp     x26, x25, [sp, #0x10]
  10003edd8  ldp     x28, x27, [sp], #0x60
  10003eddc  ret
loc_10003ede0:
  10003ede0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10003ede4:
  10003ede4  mov     x19, x0
  10003ede8  b       loc_10003ee08
  10003edec  mov     x19, x0
  10003edf0  b       loc_10003ee00
  10003edf4  mov     x19, x0
  10003edf8  mov     x0, x26
  10003edfc  bl      _objc_release
loc_10003ee00:
  10003ee00  mov     x0, x21
loc_10003ee04:
  10003ee04  bl      _objc_release
loc_10003ee08:
  10003ee08  ldr     x0, [sp, #0x40]
loc_10003ee0c:
  10003ee0c  bl      _objc_release
  10003ee10  mov     x0, x19
  10003ee14  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003ee18  b       loc_10003ede4
  10003ee1c  b       loc_10003ee60
  10003ee20  b       loc_10003ee60
  10003ee24  b       loc_10003ee60
  10003ee28  b       loc_10003ee60
  10003ee2c  b       loc_10003ee44
  10003ee30  mov     x19, x0
  10003ee34  mov     x0, x21
  10003ee38  bl      _objc_release
  10003ee3c  b       loc_10003ee48
  10003ee40  b       loc_10003ee44
loc_10003ee44:
  10003ee44  mov     x19, x0
loc_10003ee48:
  10003ee48  mov     x0, x20
  10003ee4c  b       loc_10003ee04
  10003ee50  b       loc_10003ede4
  10003ee54  mov     x19, x0
  10003ee58  mov     x0, x21
  10003ee5c  b       loc_10003ee0c
loc_10003ee60:
  10003ee60  mov     x19, x0
  10003ee64  mov     x0, x20
  10003ee68  b       loc_10003ee0c

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController didReceiveMemoryWarning]
; address 0x10003ee6c  size 60  kind objc
; ======================================================================
  10003ee6c  stp     x29, x30, [sp, #-0x10]!
  10003ee70  mov     x29, sp
  10003ee74  sub     sp, sp, #0x10
  10003ee78  str     x0, [sp]
  10003ee7c  adrp    x8, #0x10041e000
  10003ee80  ldr     x8, [x8, #0xcd8]
  10003ee84  str     x8, [sp, #8]
  10003ee88  adrp    x8, #0x100416000
  10003ee8c  nop
  10003ee90  ldr     x1, [x8, #0xbf8]
  10003ee94  mov     x0, sp
  10003ee98  bl      _objc_msgSendSuper2                      ; [super didReceiveMemoryWarning]
  10003ee9c  mov     sp, x29
  10003eea0  ldp     x29, x30, [sp], #0x10
  10003eea4  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController tableView:numberOfRowsInSection:]
; address 0x10003eea8  size 32  kind objc
; ======================================================================
  10003eea8  cmp     x3, #2
  10003eeac  b.hi    loc_10003eec0                            ; if (arg2 >u 2)
  10003eeb0  adrp    x8, #0x100181000
  10003eeb4  add     x8, x8, #0xba0                           ; tconst_100181ba0
  10003eeb8  ldr     x0, [x8, x3, lsl #3]
  10003eebc  ret
loc_10003eec0:
  10003eec0  mov     x0, #0
  10003eec4  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController numberOfSectionsInTableView:]
; address 0x10003eec8  size 8  kind objc
; ======================================================================
  10003eec8  mov     w0, #3
  10003eecc  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController tableView:heightForRowAtIndexPath:]
; address 0x10003eed0  size 140  kind objc
; ======================================================================
  10003eed0  stp     x20, x19, [sp, #-0x20]!
  10003eed4  stp     x29, x30, [sp, #0x10]
  10003eed8  add     x29, sp, #0x10
  10003eedc  adrp    x8, #0x10041d000
  10003eee0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003eee4  adrp    x8, #0x100416000
  10003eee8  nop
  10003eeec  ldr     x1, [x8, #0xc00]
  10003eef0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003eef4  mov     x29, x29
  10003eef8  bl      _objc_retainAutoreleasedReturnValue
  10003eefc  mov     x19, x0
  10003ef00  adrp    x8, #0x100416000
  10003ef04  nop
  10003ef08  ldr     x1, [x8, #0xd18]
  10003ef0c  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003ef10  mov     x20, x0
  10003ef14  mov     x0, x19
  10003ef18  bl      _objc_release
  10003ef1c  cmp     w20, #0
  10003ef20  adrp    x8, #0x100181000
  10003ef24  ldr     d0, [x8, #0xb80]                         ; d0 = 80.0
  10003ef28  nop
  10003ef2c  ldr     d1, [x8, #0x9d0]                         ; d1 = 50.0
  10003ef30  fcsel   d0, d1, d0, ne
  10003ef34  ldp     x29, x30, [sp, #0x10]
  10003ef38  ldp     x20, x19, [sp], #0x20
  10003ef3c  ret
  10003ef40  mov     x20, x0
  10003ef44  b       loc_10003ef54
  10003ef48  mov     x20, x0
  10003ef4c  mov     x0, x19
  10003ef50  bl      _objc_release
loc_10003ef54:
  10003ef54  mov     x0, x20
  10003ef58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController tableView:heightForHeaderInSection:]
; address 0x10003ef5c  size 140  kind objc
; ======================================================================
  10003ef5c  stp     x20, x19, [sp, #-0x20]!
  10003ef60  stp     x29, x30, [sp, #0x10]
  10003ef64  add     x29, sp, #0x10
  10003ef68  adrp    x8, #0x10041d000
  10003ef6c  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003ef70  adrp    x8, #0x100416000
  10003ef74  nop
  10003ef78  ldr     x1, [x8, #0xc00]
  10003ef7c  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003ef80  mov     x29, x29
  10003ef84  bl      _objc_retainAutoreleasedReturnValue
  10003ef88  mov     x19, x0
  10003ef8c  adrp    x8, #0x100416000
  10003ef90  nop
  10003ef94  ldr     x1, [x8, #0xd18]
  10003ef98  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003ef9c  mov     x20, x0
  10003efa0  mov     x0, x19
  10003efa4  bl      _objc_release
  10003efa8  cmp     w20, #0
  10003efac  adrp    x8, #0x100181000
  10003efb0  ldr     d0, [x8, #0xb88]                         ; d0 = 140.0
  10003efb4  nop
  10003efb8  ldr     d1, [x8, #0xa08]                         ; d1 = 60.0
  10003efbc  fcsel   d0, d1, d0, ne
  10003efc0  ldp     x29, x30, [sp, #0x10]
  10003efc4  ldp     x20, x19, [sp], #0x20
  10003efc8  ret
  10003efcc  mov     x20, x0
  10003efd0  b       loc_10003efe0
  10003efd4  mov     x20, x0
  10003efd8  mov     x0, x19
  10003efdc  bl      _objc_release
loc_10003efe0:
  10003efe0  mov     x0, x20
  10003efe4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController tableView:viewForHeaderInSection:]
; address 0x10003efe8  size 584  kind objc
; ======================================================================
  10003efe8  stp     x22, x21, [sp, #-0x30]!
  10003efec  stp     x20, x19, [sp, #0x10]
  10003eff0  stp     x29, x30, [sp, #0x20]
  10003eff4  add     x29, sp, #0x20
  10003eff8  mov     x20, x3
  10003effc  adrp    x8, #0x10041e000
  10003f000  ldr     x0, [x8, #0x168]                         ; class ADAccessibilityTableHeaderLabel
  10003f004  adrp    x8, #0x100416000
  10003f008  nop
  10003f00c  ldr     x1, [x8, #0xac8]
  10003f010  bl      _objc_msgSend                            ; [ADAccessibilityTableHeaderLabel alloc]
  10003f014  adrp    x8, #0x1003b0000
  10003f018  ldr     x8, [x8, #0x10]                          ; _CGRectZero
  10003f01c  ldp     d0, d1, [x8]
  10003f020  ldp     d2, d3, [x8, #0x10]
  10003f024  adrp    x8, #0x100417000
  10003f028  nop
  10003f02c  ldr     x1, [x8, #0x178]
  10003f030  bl      _objc_msgSend                            ; [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}]
  10003f034  mov     x19, x0
  10003f038  cbz     x20, loc_10003f064                       ; if (arg2 == 0)
  10003f03c  cmp     x20, #1
  10003f040  b.ne    loc_10003f084                            ; if (arg2 != 1)
  10003f044  adrp    x8, #0x100416000
  10003f048  nop
  10003f04c  ldr     x1, [x8, #0xb68]
  10003f050  adrp    x2, #0x1003bc000
  10003f054  add     x2, x2, #0x8d0                           ; @"Loadout"
  10003f058  mov     x0, x19
  10003f05c  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Loadout"]
  10003f060  b       loc_10003f0a8
loc_10003f064:
  10003f064  adrp    x8, #0x100416000
  10003f068  nop
  10003f06c  ldr     x1, [x8, #0xb68]
  10003f070  adrp    x2, #0x1003bc000
  10003f074  add     x2, x2, #0x8b0                           ; @"Challenge Info"
  10003f078  mov     x0, x19
  10003f07c  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Challenge Info"]
  10003f080  b       loc_10003f0a8
loc_10003f084:
  10003f084  cmp     x20, #2
  10003f088  b.ne    loc_10003f0a8                            ; if (arg2 != 2)
  10003f08c  adrp    x8, #0x100416000
  10003f090  nop
  10003f094  ldr     x1, [x8, #0xb68]
  10003f098  adrp    x2, #0x1003bc000
  10003f09c  add     x2, x2, #0x8f0                           ; @"Stars"
  10003f0a0  mov     x0, x19
  10003f0a4  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setText:@"Stars"]
loc_10003f0a8:
  10003f0a8  adrp    x8, #0x10041d000
  10003f0ac  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10003f0b0  adrp    x8, #0x100416000
  10003f0b4  nop
  10003f0b8  ldr     x1, [x8, #0xc00]
  10003f0bc  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10003f0c0  mov     x29, x29
  10003f0c4  bl      _objc_retainAutoreleasedReturnValue
  10003f0c8  mov     x21, x0
  10003f0cc  adrp    x8, #0x100416000
  10003f0d0  nop
  10003f0d4  ldr     x1, [x8, #0xd18]
  10003f0d8  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10003f0dc  mov     x22, x0
  10003f0e0  mov     x0, x21
  10003f0e4  bl      _objc_release
  10003f0e8  adrp    x8, #0x10041d000
  10003f0ec  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10003f0f0  cmp     w22, #0
  10003f0f4  adrp    x8, #0x100181000
  10003f0f8  ldr     d0, [x8, #0xb90]                         ; d0 = 35.0
  10003f0fc  fmov    d1, #25.00000000
  10003f100  fcsel   d0, d1, d0, ne
  10003f104  adrp    x8, #0x100416000
  10003f108  nop
  10003f10c  ldr     x1, [x8, #0xd20]
  10003f110  adrp    x2, #0x1003bc000
  10003f114  add     x2, x2, #0x910                           ; @"Tiresias Infofont"
  10003f118  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]
  10003f11c  mov     x29, x29
  10003f120  bl      _objc_retainAutoreleasedReturnValue
  10003f124  mov     x21, x0
  10003f128  adrp    x8, #0x100416000
  10003f12c  nop
  10003f130  ldr     x1, [x8, #0xd28]
  10003f134  mov     x0, x19
  10003f138  mov     x2, x21
  10003f13c  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setFont:[UIFont fontWithName:@"Tiresias Infofont" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 25 : 35)]]
  10003f140  mov     x0, x21
  10003f144  bl      _objc_release
  10003f148  adrp    x22, #0x10041d000
  10003f14c  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  10003f150  adrp    x8, #0x100417000
  10003f154  nop
  10003f158  ldr     x1, [x8, #0x180]
  10003f15c  bl      _objc_msgSend                            ; [UIColor blackColor]
  10003f160  mov     x29, x29
  10003f164  bl      _objc_retainAutoreleasedReturnValue
  10003f168  mov     x21, x0
  10003f16c  adrp    x8, #0x100417000
  10003f170  nop
  10003f174  ldr     x1, [x8, #0x330]
  10003f178  mov     x0, x19
  10003f17c  mov     x2, x21
  10003f180  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setTextColor:[UIColor blackColor]]
  10003f184  mov     x0, x21
  10003f188  bl      _objc_release
  10003f18c  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  10003f190  adrp    x8, #0x100417000
  10003f194  nop
  10003f198  ldr     x1, [x8, #0x328]
  10003f19c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10003f1a0  mov     x29, x29
  10003f1a4  bl      _objc_retainAutoreleasedReturnValue
  10003f1a8  mov     x21, x0
  10003f1ac  adrp    x8, #0x100417000
  10003f1b0  nop
  10003f1b4  ldr     x1, [x8, #0x188]
  10003f1b8  mov     x0, x19
  10003f1bc  mov     x2, x21
  10003f1c0  bl      _objc_msgSend                            ; [[[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}] setBackgroundColor:[UIColor whiteColor]]
  10003f1c4  mov     x0, x21
  10003f1c8  bl      _objc_release
  10003f1cc  cbnz    x20, loc_10003f1e4                       ; if (arg2 != 0)
  10003f1d0  adrp    x8, #0x1003b0000
  10003f1d4  ldr     x8, [x8, #0xc0]                          ; _UIAccessibilityScreenChangedNotification
  10003f1d8  ldr     w0, [x8]                                 ; w0 = _UIAccessibilityScreenChangedNotification[+0x0]
  10003f1dc  mov     x1, x19
  10003f1e0  bl      _UIAccessibilityPostNotification         ; UIAccessibilityPostNotification(_UIAccessibilityScreenChangedNotification[+0x0], [[ADAccessibilityTableHeaderLabel alloc] initWithFrame:{CGRectZero.0, CGRectZero.1, d2, d3}])
loc_10003f1e4:
  10003f1e4  mov     x0, x19
  10003f1e8  ldp     x29, x30, [sp, #0x20]
  10003f1ec  ldp     x20, x19, [sp, #0x10]
  10003f1f0  ldp     x22, x21, [sp], #0x30
  10003f1f4  b       _objc_autoreleaseReturnValue
  10003f1f8  mov     x20, x0
  10003f1fc  b       loc_10003f220
  10003f200  mov     x20, x0
  10003f204  b       loc_10003f228
  10003f208  b       loc_10003f214
  10003f20c  b       loc_10003f214
  10003f210  b       loc_10003f214
loc_10003f214:
  10003f214  mov     x20, x0
  10003f218  mov     x0, x21
  10003f21c  bl      _objc_release
loc_10003f220:
  10003f220  mov     x0, x19
  10003f224  bl      _objc_release
loc_10003f228:
  10003f228  mov     x0, x20
  10003f22c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController tableView:cellForRowAtIndexPath:]
; address 0x10003f230  size 4428  kind objc
; ======================================================================
  10003f230  stp     x28, x27, [sp, #-0x60]!
  10003f234  stp     x26, x25, [sp, #0x10]
  10003f238  stp     x24, x23, [sp, #0x20]
  10003f23c  stp     x22, x21, [sp, #0x30]
  10003f240  stp     x20, x19, [sp, #0x40]
  10003f244  stp     x29, x30, [sp, #0x50]
  10003f248  add     x29, sp, #0x50
  10003f24c  sub     sp, sp, #0x60
  10003f250  mov     x22, x0
  10003f254  mov     x0, x3
  10003f258  bl      _objc_retain
  10003f25c  mov     x28, x0
  10003f260  adrp    x8, #0x100417000
  10003f264  nop
  10003f268  ldr     x1, [x8, #0x348]
  10003f26c  mov     x21, #0
  10003f270  bl      _objc_msgSend                            ; [arg2 section]
  10003f274  adrp    x8, #0x10041e000
  10003f278  cbz     x0, loc_10003f50c                        ; if ([arg2 section] == 0)
  10003f27c  cmp     x0, #1
  10003f280  b.ne    loc_10003f730                            ; if ([arg2 section] != 1)
  10003f284  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10003f288  adrp    x8, #0x100416000
  10003f28c  nop
  10003f290  ldr     x1, [x8, #0xac8]
  10003f294  mov     x21, #0
  10003f298  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10003f29c  adrp    x8, #0x100417000
  10003f2a0  nop
  10003f2a4  ldr     x1, [x8, #0x3c0]
  10003f2a8  mov     x21, #0
  10003f2ac  adrp    x3, #0x1003bc000
  10003f2b0  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10003f2b4  mov     w2, #3
  10003f2b8  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10003f2bc  mov     x20, x0
  10003f2c0  mov     x21, x20
  10003f2c4  adrp    x8, #0x100417000
  10003f2c8  nop
  10003f2cc  ldr     x1, [x8, #0x150]
  10003f2d0  mov     x0, x22
  10003f2d4  bl      _objc_msgSend                            ; [self challengeDict]
  10003f2d8  mov     x29, x29
  10003f2dc  bl      _objc_retainAutoreleasedReturnValue
  10003f2e0  mov     x22, x0
  10003f2e4  adrp    x8, #0x100417000
  10003f2e8  nop
  10003f2ec  ldr     x24, [x8, #0x40]
  10003f2f0  adrp    x2, #0x1003b9000
  10003f2f4  add     x2, x2, #0xf70                           ; @"weapons"
  10003f2f8  mov     x1, x24
  10003f2fc  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"weapons"]
  10003f300  mov     x29, x29
  10003f304  bl      _objc_retainAutoreleasedReturnValue
  10003f308  mov     x19, x0
  10003f30c  mov     x0, x22
  10003f310  bl      _objc_release
  10003f314  adrp    x8, #0x100417000
  10003f318  nop
  10003f31c  ldr     x1, [x8, #0x350]
  10003f320  mov     x0, x28
  10003f324  bl      _objc_msgSend                            ; [arg2 row]
  10003f328  mov     x2, x0
  10003f32c  adrp    x8, #0x100416000
  10003f330  nop
  10003f334  ldr     x1, [x8, #0xc30]
  10003f338  mov     x0, x19
  10003f33c  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]]
  10003f340  str     x19, [sp, #0x50]
  10003f344  mov     x29, x29
  10003f348  bl      _objc_retainAutoreleasedReturnValue
  10003f34c  mov     x23, x0
  10003f350  adrp    x8, #0x100417000
  10003f354  nop
  10003f358  ldr     x1, [x8, #0x320]
  10003f35c  mov     x0, x20
  10003f360  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003f364  mov     x29, x29
  10003f368  bl      _objc_retainAutoreleasedReturnValue
  10003f36c  mov     x25, x0
  10003f370  adrp    x21, #0x10041d000
  10003f374  ldr     x0, [x21, #0xf88]                        ; class ADWeaponManager
  10003f378  adrp    x8, #0x100417000
  10003f37c  nop
  10003f380  ldr     x26, [x8, #0xa0]
  10003f384  mov     x1, x26
  10003f388  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003f38c  str     x28, [sp, #0x58]
  10003f390  mov     x29, x29
  10003f394  bl      _objc_retainAutoreleasedReturnValue
  10003f398  mov     x27, x0
  10003f39c  adrp    x2, #0x1003b9000
  10003f3a0  add     x2, x2, #0xdb0                           ; @"name"
  10003f3a4  mov     x0, x23
  10003f3a8  mov     x1, x24
  10003f3ac  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10003f3b0  mov     x29, x29
  10003f3b4  bl      _objc_retainAutoreleasedReturnValue
  10003f3b8  mov     x28, x0
  10003f3bc  adrp    x8, #0x100417000
  10003f3c0  nop
  10003f3c4  ldr     x1, [x8, #0x1f0]
  10003f3c8  mov     x0, x27
  10003f3cc  mov     x2, x28
  10003f3d0  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10003f3d4  mov     x29, x29
  10003f3d8  bl      _objc_retainAutoreleasedReturnValue
  10003f3dc  mov     x19, x0
  10003f3e0  adrp    x8, #0x100416000
  10003f3e4  nop
  10003f3e8  ldr     x22, [x8, #0xb68]
  10003f3ec  mov     x0, x25
  10003f3f0  mov     x1, x22
  10003f3f4  mov     x2, x19
  10003f3f8  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:[[ADWeaponManager sharedWeaponManager] displayNameForItemWithName:[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"name"]]]
  10003f3fc  mov     x0, x19
  10003f400  bl      _objc_release
  10003f404  mov     x0, x28
  10003f408  bl      _objc_release
  10003f40c  mov     x0, x27
  10003f410  bl      _objc_release
  10003f414  mov     x0, x25
  10003f418  bl      _objc_release
  10003f41c  adrp    x2, #0x1003bc000
  10003f420  add     x2, x2, #0x9d0                           ; @"ammo"
  10003f424  mov     x0, x23
  10003f428  mov     x1, x24
  10003f42c  ldr     x28, [sp, #0x58]
  10003f430  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"ammo"]
  10003f434  mov     x29, x29
  10003f438  bl      _objc_retainAutoreleasedReturnValue
  10003f43c  mov     x19, x0
  10003f440  adrp    x8, #0x100417000
  10003f444  nop
  10003f448  ldr     x27, [x8, #0x110]
  10003f44c  mov     x1, x27
  10003f450  bl      _objc_msgSend                            ; [[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"ammo"] intValue]
  10003f454  mov     x25, x0
  10003f458  mov     x0, x19
  10003f45c  bl      _objc_release
  10003f460  cmp     w25, #1
  10003f464  b.lt    loc_10003f9a0                            ; if ([[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"ammo"] intValue] < 1)
  10003f468  adrp    x8, #0x100417000
  10003f46c  nop
  10003f470  ldr     x1, [x8, #0x338]
  10003f474  mov     x0, x20
  10003f478  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003f47c  mov     x29, x29
  10003f480  bl      _objc_retainAutoreleasedReturnValue
  10003f484  mov     x25, x0
  10003f488  adrp    x8, #0x10041d000
  10003f48c  ldr     x26, [x8, #0xf78]                        ; class NSString
  10003f490  adrp    x2, #0x1003bc000
  10003f494  add     x2, x2, #0x9d0                           ; @"ammo"
  10003f498  mov     x0, x23
  10003f49c  mov     x1, x24
  10003f4a0  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"ammo"]
  10003f4a4  mov     x29, x29
  10003f4a8  bl      _objc_retainAutoreleasedReturnValue
  10003f4ac  mov     x24, x0
  10003f4b0  mov     x1, x27
  10003f4b4  bl      _objc_msgSend                            ; [[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"ammo"] intValue]
  10003f4b8  adrp    x8, #0x100416000
  10003f4bc  nop
  10003f4c0  ldr     x1, [x8, #0xee8]
  10003f4c4  str     x0, [sp]
  10003f4c8  adrp    x2, #0x1003bc000
  10003f4cc  add     x2, x2, #0x9f0                           ; @"%i bullets"
  10003f4d0  mov     x0, x26
  10003f4d4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i bullets", [[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] obje…]
  10003f4d8  mov     x29, x29
  10003f4dc  bl      _objc_retainAutoreleasedReturnValue
  10003f4e0  mov     x19, x0
  10003f4e4  mov     x0, x25
  10003f4e8  mov     x1, x22
  10003f4ec  mov     x2, x19
  10003f4f0  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"%i bullets", [[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] obje…]]
  10003f4f4  mov     x0, x19
  10003f4f8  bl      _objc_release
  10003f4fc  mov     x0, x24
  10003f500  bl      _objc_release
  10003f504  mov     x0, x25
  10003f508  b       loc_10003fa68
loc_10003f50c:
  10003f50c  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10003f510  adrp    x8, #0x100416000
  10003f514  nop
  10003f518  ldr     x1, [x8, #0xac8]
  10003f51c  mov     x21, #0
  10003f520  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10003f524  adrp    x8, #0x100417000
  10003f528  nop
  10003f52c  ldr     x1, [x8, #0x3c0]
  10003f530  mov     x21, #0
  10003f534  adrp    x3, #0x1003bc000
  10003f538  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10003f53c  mov     w2, #3
  10003f540  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10003f544  mov     x20, x0
  10003f548  mov     x21, x20
  10003f54c  adrp    x8, #0x100417000
  10003f550  nop
  10003f554  ldr     x23, [x8, #0x350]
  10003f558  mov     x0, x28
  10003f55c  mov     x1, x23
  10003f560  bl      _objc_msgSend                            ; [arg2 row]
  10003f564  cbnz    x0, loc_10003f640                        ; if ([arg2 row] != 0)
  10003f568  mov     x21, x20
  10003f56c  adrp    x8, #0x100417000
  10003f570  nop
  10003f574  ldr     x1, [x8, #0x320]
  10003f578  mov     x0, x20
  10003f57c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003f580  mov     x29, x29
  10003f584  bl      _objc_retainAutoreleasedReturnValue
  10003f588  mov     x24, x0
  10003f58c  adrp    x8, #0x100417000
  10003f590  nop
  10003f594  ldr     x1, [x8, #0x150]
  10003f598  mov     x0, x22
  10003f59c  bl      _objc_msgSend                            ; [self challengeDict]
  10003f5a0  mov     x29, x29
  10003f5a4  bl      _objc_retainAutoreleasedReturnValue
  10003f5a8  mov     x25, x0
  10003f5ac  adrp    x8, #0x100417000
  10003f5b0  nop
  10003f5b4  ldr     x1, [x8, #0x40]
  10003f5b8  adrp    x2, #0x1003bc000
  10003f5bc  add     x2, x2, #0x950                           ; @"title"
  10003f5c0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"title"]
  10003f5c4  mov     x29, x29
  10003f5c8  bl      _objc_retainAutoreleasedReturnValue
  10003f5cc  mov     x27, x0
  10003f5d0  adrp    x8, #0x100416000
  10003f5d4  nop
  10003f5d8  ldr     x26, [x8, #0xb68]
  10003f5dc  mov     x0, x24
  10003f5e0  mov     x1, x26
  10003f5e4  mov     x2, x27
  10003f5e8  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:[[self challengeDict] objectForKey:@"title"]]
  10003f5ec  mov     x21, x20
  10003f5f0  mov     x0, x27
  10003f5f4  bl      _objc_release
  10003f5f8  mov     x0, x25
  10003f5fc  bl      _objc_release
  10003f600  mov     x0, x24
  10003f604  bl      _objc_release
  10003f608  adrp    x8, #0x100417000
  10003f60c  nop
  10003f610  ldr     x1, [x8, #0x338]
  10003f614  mov     x0, x20
  10003f618  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003f61c  mov     x29, x29
  10003f620  bl      _objc_retainAutoreleasedReturnValue
  10003f624  mov     x21, x0
  10003f628  adrp    x2, #0x1003bc000
  10003f62c  add     x2, x2, #0x970                           ; @"Title"
  10003f630  mov     x1, x26
  10003f634  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"Title"]
  10003f638  mov     x0, x21
  10003f63c  bl      _objc_release
loc_10003f640:
  10003f640  mov     x21, x20
  10003f644  mov     x0, x28
  10003f648  mov     x1, x23
  10003f64c  bl      _objc_msgSend                            ; [arg2 row]
  10003f650  cmp     x0, #1
  10003f654  b.ne    loc_100040020                            ; if ([arg2 row] != 1)
  10003f658  mov     x21, x20
  10003f65c  adrp    x8, #0x100417000
  10003f660  nop
  10003f664  ldr     x1, [x8, #0x320]
  10003f668  mov     x0, x20
  10003f66c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003f670  mov     x29, x29
  10003f674  bl      _objc_retainAutoreleasedReturnValue
  10003f678  mov     x23, x0
  10003f67c  adrp    x8, #0x100417000
  10003f680  nop
  10003f684  ldr     x1, [x8, #0x150]
  10003f688  mov     x0, x22
  10003f68c  bl      _objc_msgSend                            ; [self challengeDict]
  10003f690  mov     x29, x29
  10003f694  bl      _objc_retainAutoreleasedReturnValue
  10003f698  mov     x22, x0
  10003f69c  adrp    x8, #0x100417000
  10003f6a0  nop
  10003f6a4  ldr     x1, [x8, #0x40]
  10003f6a8  adrp    x2, #0x1003bc000
  10003f6ac  add     x2, x2, #0x990                           ; @"objective"
  10003f6b0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"objective"]
  10003f6b4  mov     x29, x29
  10003f6b8  bl      _objc_retainAutoreleasedReturnValue
  10003f6bc  mov     x25, x0
  10003f6c0  adrp    x8, #0x100416000
  10003f6c4  nop
  10003f6c8  ldr     x24, [x8, #0xb68]
  10003f6cc  mov     x0, x23
  10003f6d0  mov     x1, x24
  10003f6d4  mov     x2, x25
  10003f6d8  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:[[self challengeDict] objectForKey:@"objective"]]
  10003f6dc  mov     x21, x20
  10003f6e0  mov     x0, x25
  10003f6e4  bl      _objc_release
  10003f6e8  mov     x0, x22
  10003f6ec  bl      _objc_release
  10003f6f0  mov     x0, x23
  10003f6f4  bl      _objc_release
  10003f6f8  adrp    x8, #0x100417000
  10003f6fc  nop
  10003f700  ldr     x1, [x8, #0x338]
  10003f704  mov     x0, x20
  10003f708  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003f70c  mov     x29, x29
  10003f710  bl      _objc_retainAutoreleasedReturnValue
  10003f714  mov     x21, x0
  10003f718  adrp    x2, #0x1003bc000
  10003f71c  add     x2, x2, #0x9b0                           ; @"Objective"
  10003f720  mov     x1, x24
  10003f724  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"Objective"]
  10003f728  mov     x0, x21
  10003f72c  b       loc_10004001c
loc_10003f730:
  10003f730  cmp     x0, #2
  10003f734  b.ne    loc_10003f8b4                            ; if ([arg2 section] != 2)
  10003f738  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10003f73c  adrp    x8, #0x100416000
  10003f740  nop
  10003f744  ldr     x1, [x8, #0xac8]
  10003f748  mov     x21, #0
  10003f74c  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10003f750  adrp    x8, #0x100417000
  10003f754  nop
  10003f758  ldr     x1, [x8, #0x3c0]
  10003f75c  mov     x21, #0
  10003f760  adrp    x3, #0x1003bc000
  10003f764  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10003f768  mov     w2, #3
  10003f76c  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10003f770  mov     x20, x0
  10003f774  mov     x21, x20
  10003f778  adrp    x8, #0x100417000
  10003f77c  nop
  10003f780  ldr     x19, [x8, #0x150]
  10003f784  mov     x0, x22
  10003f788  mov     x1, x19
  10003f78c  bl      _objc_msgSend                            ; [self challengeDict]
  10003f790  str     x19, [sp, #0x50]
  10003f794  mov     x29, x29
  10003f798  bl      _objc_retainAutoreleasedReturnValue
  10003f79c  mov     x21, x0
  10003f7a0  adrp    x8, #0x100417000
  10003f7a4  nop
  10003f7a8  ldr     x23, [x8, #0x40]
  10003f7ac  adrp    x2, #0x1003b9000
  10003f7b0  add     x2, x2, #0xef0                           ; @"challenge_id"
  10003f7b4  mov     x1, x23
  10003f7b8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"challenge_id"]
  10003f7bc  mov     x29, x29
  10003f7c0  bl      _objc_retainAutoreleasedReturnValue
  10003f7c4  mov     x24, x0
  10003f7c8  mov     x0, x21
  10003f7cc  bl      _objc_release
  10003f7d0  adrp    x8, #0x100417000
  10003f7d4  nop
  10003f7d8  ldr     x25, [x8, #0x350]
  10003f7dc  mov     x0, x28
  10003f7e0  mov     x1, x25
  10003f7e4  bl      _objc_msgSend                            ; [arg2 row]
  10003f7e8  cbnz    x0, loc_10003fb68                        ; if ([arg2 row] != 0)
  10003f7ec  adrp    x8, #0x100417000
  10003f7f0  nop
  10003f7f4  ldr     x1, [x8, #0x320]
  10003f7f8  mov     x0, x20
  10003f7fc  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003f800  mov     x29, x29
  10003f804  bl      _objc_retainAutoreleasedReturnValue
  10003f808  mov     x21, x0
  10003f80c  adrp    x8, #0x100416000
  10003f810  nop
  10003f814  ldr     x26, [x8, #0xb68]
  10003f818  adrp    x2, #0x1003bc000
  10003f81c  add     x2, x2, #0xa50                           ; @"Challenge completed star"
  10003f820  mov     x1, x26
  10003f824  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Challenge completed star"]
  10003f828  mov     x0, x21
  10003f82c  bl      _objc_release
  10003f830  adrp    x8, #0x10041d000
  10003f834  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10003f838  adrp    x8, #0x100416000
  10003f83c  nop
  10003f840  ldr     x1, [x8, #0xdf0]
  10003f844  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10003f848  mov     x29, x29
  10003f84c  bl      _objc_retainAutoreleasedReturnValue
  10003f850  mov     x21, x0
  10003f854  adrp    x8, #0x100416000
  10003f858  nop
  10003f85c  ldr     x1, [x8, #0xdf8]
  10003f860  mov     x2, x24
  10003f864  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10003f868  mov     x19, x0
  10003f86c  mov     x0, x21
  10003f870  bl      _objc_release
  10003f874  adrp    x8, #0x100417000
  10003f878  add     x8, x8, #0x338                           ; &@selector(detailTextLabel)
  10003f87c  ldr     x1, [x8]
  10003f880  cbz     w19, loc_10003fa7c                       ; if ([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  10003f884  mov     x0, x20
  10003f888  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003f88c  mov     x29, x29
  10003f890  bl      _objc_retainAutoreleasedReturnValue
  10003f894  mov     x19, x0
  10003f898  adrp    x2, #0x1003bc000
  10003f89c  add     x2, x2, #0xa70                           ; @"already unlocked"
  10003f8a0  mov     x1, x26
  10003f8a4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"already unlocked"]
  10003f8a8  mov     x0, x19
  10003f8ac  bl      _objc_release
  10003f8b0  b       loc_10003fb68
loc_10003f8b4:
  10003f8b4  ldr     x0, [x8, #0x170]                         ; class ADAccessibleTableCell
  10003f8b8  adrp    x8, #0x100416000
  10003f8bc  nop
  10003f8c0  ldr     x1, [x8, #0xac8]
  10003f8c4  mov     x21, #0
  10003f8c8  bl      _objc_msgSend                            ; [ADAccessibleTableCell alloc]
  10003f8cc  adrp    x8, #0x100417000
  10003f8d0  nop
  10003f8d4  ldr     x1, [x8, #0x3c0]
  10003f8d8  mov     x21, #0
  10003f8dc  adrp    x3, #0x1003bc000
  10003f8e0  add     x3, x3, #0x930                           ; @"AccessibleGameOverCell"
  10003f8e4  mov     w2, #3
  10003f8e8  bl      _objc_msgSend                            ; [[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"]
  10003f8ec  mov     x20, x0
  10003f8f0  mov     x21, x20
  10003f8f4  adrp    x8, #0x100417000
  10003f8f8  nop
  10003f8fc  ldr     x1, [x8, #0x320]
  10003f900  mov     x0, x20
  10003f904  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003f908  mov     x29, x29
  10003f90c  bl      _objc_retainAutoreleasedReturnValue
  10003f910  mov     x23, x0
  10003f914  adrp    x8, #0x100416000
  10003f918  nop
  10003f91c  ldr     x22, [x8, #0xb68]
  10003f920  adrp    x2, #0x1003bc000
  10003f924  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  10003f928  mov     x1, x22
  10003f92c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"EMPTY CELL"]
  10003f930  mov     x21, x20
  10003f934  mov     x0, x23
  10003f938  bl      _objc_release
  10003f93c  adrp    x8, #0x100417000
  10003f940  nop
  10003f944  ldr     x1, [x8, #0x338]
  10003f948  mov     x0, x20
  10003f94c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003f950  mov     x29, x29
  10003f954  bl      _objc_retainAutoreleasedReturnValue
  10003f958  mov     x23, x0
  10003f95c  adrp    x2, #0x1003bc000
  10003f960  add     x2, x2, #0xbb0                           ; @"EMPTY CELL"
  10003f964  mov     x1, x22
  10003f968  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"EMPTY CELL"]
  10003f96c  mov     x21, x20
  10003f970  mov     x0, x23
  10003f974  bl      _objc_release
  10003f978  adrp    x8, #0x100417000
  10003f97c  nop
  10003f980  ldr     x1, [x8, #0x3b0]
  10003f984  mov     x2, #0
  10003f988  mov     x0, x20
  10003f98c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] setSelectionStyle:0]
  10003f990  b       loc_100040020
  10003f994  str     x28, [sp, #0x58]
  10003f998  str     x0, [sp, #0x20]
  10003f99c  b       loc_100040304
loc_10003f9a0:
  10003f9a0  ldr     x0, [x21, #0xf88]                        ; class ADWeaponManager
  10003f9a4  mov     x1, x26
  10003f9a8  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  10003f9ac  mov     x29, x29
  10003f9b0  bl      _objc_retainAutoreleasedReturnValue
  10003f9b4  mov     x25, x0
  10003f9b8  adrp    x2, #0x1003b9000
  10003f9bc  add     x2, x2, #0xdb0                           ; @"name"
  10003f9c0  mov     x0, x23
  10003f9c4  mov     x1, x24
  10003f9c8  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"name"]
  10003f9cc  mov     x29, x29
  10003f9d0  bl      _objc_retainAutoreleasedReturnValue
  10003f9d4  mov     x24, x0
  10003f9d8  adrp    x8, #0x100418000
  10003f9dc  nop
  10003f9e0  ldr     x1, [x8, #0x6f8]
  10003f9e4  mov     x0, x25
  10003f9e8  mov     x2, x24
  10003f9ec  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"name"]]
  10003f9f0  mov     x19, x0
  10003f9f4  mov     x0, x24
  10003f9f8  bl      _objc_release
  10003f9fc  mov     x0, x25
  10003fa00  bl      _objc_release
  10003fa04  adrp    x8, #0x100417000
  10003fa08  add     x8, x8, #0x338                           ; &@selector(detailTextLabel)
  10003fa0c  ldr     x1, [x8]
  10003fa10  cbz     w19, loc_10003fa40                       ; if ([[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[[[[self challengeDict] objectForKey:@"weapons"] objectAtIndex:[arg2 row]] objectForKey:@"name"]] == 0)
  10003fa14  mov     x0, x20
  10003fa18  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fa1c  mov     x29, x29
  10003fa20  bl      _objc_retainAutoreleasedReturnValue
  10003fa24  mov     x19, x0
  10003fa28  adrp    x2, #0x1003bc000
  10003fa2c  add     x2, x2, #0xa10                           ; @"melee weapon"
  10003fa30  mov     x1, x22
  10003fa34  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"melee weapon"]
  10003fa38  b       loc_10003fa64
  10003fa3c  b       loc_1000400d4
loc_10003fa40:
  10003fa40  mov     x0, x20
  10003fa44  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fa48  mov     x29, x29
  10003fa4c  bl      _objc_retainAutoreleasedReturnValue
  10003fa50  mov     x19, x0
  10003fa54  adrp    x2, #0x1003bc000
  10003fa58  add     x2, x2, #0xa30                           ; @"empty"
  10003fa5c  mov     x1, x22
  10003fa60  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"empty"]
loc_10003fa64:
  10003fa64  mov     x0, x19
loc_10003fa68:
  10003fa68  bl      _objc_release
  10003fa6c  mov     x0, x23
  10003fa70  bl      _objc_release
  10003fa74  ldr     x0, [sp, #0x50]
  10003fa78  b       loc_10004001c
loc_10003fa7c:
  10003fa7c  mov     x0, x20
  10003fa80  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fa84  mov     x29, x29
  10003fa88  bl      _objc_retainAutoreleasedReturnValue
  10003fa8c  str     x0, [sp, #0x40]
  10003fa90  adrp    x8, #0x10041d000
  10003fa94  ldr     x21, [x8, #0xf78]                        ; class NSString
  10003fa98  mov     x0, x22
  10003fa9c  ldr     x1, [sp, #0x50]
  10003faa0  bl      _objc_msgSend                            ; [self challengeDict]
  10003faa4  str     x28, [sp, #0x58]
  10003faa8  mov     x29, x29
  10003faac  bl      _objc_retainAutoreleasedReturnValue
  10003fab0  str     x0, [sp, #0x38]
  10003fab4  adrp    x2, #0x1003bc000
  10003fab8  add     x2, x2, #0xab0                           ; @"mission_star"
  10003fabc  mov     x1, x23
  10003fac0  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"mission_star"]
  10003fac4  mov     x29, x29
  10003fac8  bl      _objc_retainAutoreleasedReturnValue
  10003facc  mov     x28, x0
  10003fad0  adrp    x2, #0x1003bc000
  10003fad4  add     x2, x2, #0xad0                           ; @"reward"
  10003fad8  mov     x1, x23
  10003fadc  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"]
  10003fae0  mov     x29, x29
  10003fae4  bl      _objc_retainAutoreleasedReturnValue
  10003fae8  mov     x27, x0
  10003faec  adrp    x8, #0x100417000
  10003faf0  nop
  10003faf4  ldr     x1, [x8, #0x110]
  10003faf8  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] intValue]
  10003fafc  adrp    x8, #0x100416000
  10003fb00  nop
  10003fb04  ldr     x1, [x8, #0xee8]
  10003fb08  str     x0, [sp]
  10003fb0c  adrp    x2, #0x1003bc000
  10003fb10  add     x2, x2, #0xa90                           ; @"finish challenge to get %i coins"
  10003fb14  mov     x0, x21
  10003fb18  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"finish challenge to get %i coins", [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] in…]
  10003fb1c  mov     x29, x29
  10003fb20  bl      _objc_retainAutoreleasedReturnValue
  10003fb24  mov     x19, x0
  10003fb28  ldr     x21, [sp, #0x40]
  10003fb2c  mov     x0, x21
  10003fb30  mov     x1, x26
  10003fb34  mov     x2, x19
  10003fb38  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"finish challenge to get %i coins", [[[[self challengeDict] objectForKey:@"mission_star"] objectForKey:@"reward"] in…]]
  10003fb3c  mov     x0, x19
  10003fb40  bl      _objc_release
  10003fb44  mov     x0, x27
  10003fb48  bl      _objc_release
  10003fb4c  mov     x0, x28
  10003fb50  bl      _objc_release
  10003fb54  ldr     x0, [sp, #0x38]
  10003fb58  bl      _objc_release
  10003fb5c  mov     x0, x21
  10003fb60  bl      _objc_release
  10003fb64  ldr     x28, [sp, #0x58]
loc_10003fb68:
  10003fb68  mov     x0, x28
  10003fb6c  mov     x1, x25
  10003fb70  bl      _objc_msgSend                            ; [arg2 row]
  10003fb74  cmp     x0, #1
  10003fb78  b.ne    loc_10003fdc4                            ; if ([arg2 row] != 1)
  10003fb7c  adrp    x8, #0x100417000
  10003fb80  nop
  10003fb84  ldr     x1, [x8, #0x320]
  10003fb88  mov     x0, x20
  10003fb8c  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003fb90  mov     x29, x29
  10003fb94  bl      _objc_retainAutoreleasedReturnValue
  10003fb98  mov     x21, x0
  10003fb9c  adrp    x8, #0x100416000
  10003fba0  nop
  10003fba4  ldr     x27, [x8, #0xb68]
  10003fba8  adrp    x2, #0x1003bc000
  10003fbac  add     x2, x2, #0xaf0                           ; @"Accuracy star"
  10003fbb0  mov     x1, x27
  10003fbb4  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Accuracy star"]
  10003fbb8  mov     x0, x21
  10003fbbc  bl      _objc_release
  10003fbc0  adrp    x8, #0x10041d000
  10003fbc4  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10003fbc8  adrp    x8, #0x100416000
  10003fbcc  nop
  10003fbd0  ldr     x1, [x8, #0xdf0]
  10003fbd4  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10003fbd8  mov     x29, x29
  10003fbdc  bl      _objc_retainAutoreleasedReturnValue
  10003fbe0  mov     x21, x0
  10003fbe4  adrp    x8, #0x100417000
  10003fbe8  nop
  10003fbec  ldr     x1, [x8, #0xa08]
  10003fbf0  mov     x2, x24
  10003fbf4  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10003fbf8  mov     x19, x0
  10003fbfc  mov     x0, x21
  10003fc00  bl      _objc_release
  10003fc04  adrp    x8, #0x100417000
  10003fc08  add     x8, x8, #0x338                           ; &@selector(detailTextLabel)
  10003fc0c  ldr     x1, [x8]
  10003fc10  cbz     w19, loc_10003fc44                       ; if ([[ADChallengeData sharedChallengeData] hasAccuracyStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  10003fc14  mov     x0, x20
  10003fc18  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fc1c  mov     x29, x29
  10003fc20  bl      _objc_retainAutoreleasedReturnValue
  10003fc24  mov     x19, x0
  10003fc28  adrp    x2, #0x1003bc000
  10003fc2c  add     x2, x2, #0xa70                           ; @"already unlocked"
  10003fc30  mov     x1, x27
  10003fc34  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"already unlocked"]
  10003fc38  mov     x0, x19
  10003fc3c  bl      _objc_release
  10003fc40  b       loc_10003fdc4
loc_10003fc44:
  10003fc44  mov     x0, x20
  10003fc48  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fc4c  mov     x29, x29
  10003fc50  bl      _objc_retainAutoreleasedReturnValue
  10003fc54  mov     x21, x0
  10003fc58  adrp    x8, #0x10041d000
  10003fc5c  ldr     x8, [x8, #0xf78]                         ; class NSString
  10003fc60  str     x8, [sp, #0x20]
  10003fc64  mov     x0, x22
  10003fc68  ldr     x19, [sp, #0x50]
  10003fc6c  mov     x1, x19
  10003fc70  bl      _objc_msgSend                            ; [self challengeDict]
  10003fc74  mov     x29, x29
  10003fc78  bl      _objc_retainAutoreleasedReturnValue
  10003fc7c  mov     x26, x0
  10003fc80  adrp    x2, #0x1003bc000
  10003fc84  add     x2, x2, #0xb30                           ; @"accuracy_star"
  10003fc88  mov     x1, x23
  10003fc8c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  10003fc90  str     x21, [sp, #0x40]
  10003fc94  str     x28, [sp, #0x58]
  10003fc98  mov     x29, x29
  10003fc9c  bl      _objc_retainAutoreleasedReturnValue
  10003fca0  str     x0, [sp, #0x30]
  10003fca4  adrp    x2, #0x1003bc000
  10003fca8  add     x2, x2, #0x990                           ; @"objective"
  10003fcac  mov     x1, x23
  10003fcb0  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"]
  10003fcb4  mov     x29, x29
  10003fcb8  bl      _objc_retainAutoreleasedReturnValue
  10003fcbc  str     x0, [sp, #0x28]
  10003fcc0  adrp    x8, #0x100417000
  10003fcc4  nop
  10003fcc8  ldr     x28, [x8, #0x110]
  10003fccc  mov     x1, x28
  10003fcd0  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"] intValue]
  10003fcd4  mov     x21, x0
  10003fcd8  mov     x0, x22
  10003fcdc  mov     x1, x19
  10003fce0  bl      _objc_msgSend                            ; [self challengeDict]
  10003fce4  str     x26, [sp, #0x38]
  10003fce8  mov     x29, x29
  10003fcec  bl      _objc_retainAutoreleasedReturnValue
  10003fcf0  mov     x19, x0
  10003fcf4  adrp    x2, #0x1003bc000
  10003fcf8  add     x2, x2, #0xb30                           ; @"accuracy_star"
  10003fcfc  mov     x1, x23
  10003fd00  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"accuracy_star"]
  10003fd04  str     x24, [sp, #0x48]
  10003fd08  mov     x29, x29
  10003fd0c  bl      _objc_retainAutoreleasedReturnValue
  10003fd10  mov     x26, x0
  10003fd14  adrp    x2, #0x1003bc000
  10003fd18  add     x2, x2, #0xad0                           ; @"reward"
  10003fd1c  mov     x1, x23
  10003fd20  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"]
  10003fd24  str     x19, [sp, #0x18]
  10003fd28  mov     x29, x29
  10003fd2c  bl      _objc_retainAutoreleasedReturnValue
  10003fd30  mov     x24, x0
  10003fd34  mov     x1, x28
  10003fd38  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] intValue]
  10003fd3c  adrp    x8, #0x100416000
  10003fd40  nop
  10003fd44  ldr     x1, [x8, #0xee8]
  10003fd48  stp     x21, x0, [sp]
  10003fd4c  adrp    x2, #0x1003bc000
  10003fd50  add     x2, x2, #0xb10                           ; @"Accuracy goal : %i%% -- Reward : %i coins"
  10003fd54  ldr     x0, [sp, #0x20]
  10003fd58  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Accuracy goal : %i%% -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"…, [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] i…]
  10003fd5c  mov     x29, x29
  10003fd60  bl      _objc_retainAutoreleasedReturnValue
  10003fd64  mov     x19, x0
  10003fd68  ldr     x21, [sp, #0x40]
  10003fd6c  mov     x0, x21
  10003fd70  mov     x1, x27
  10003fd74  mov     x2, x19
  10003fd78  ldr     x28, [sp, #0x58]
  10003fd7c  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"Accuracy goal : %i%% -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"objective"…, [[[[self challengeDict] objectForKey:@"accuracy_star"] objectForKey:@"reward"] i…]]
  10003fd80  mov     x0, x19
  10003fd84  bl      _objc_release
  10003fd88  mov     x0, x24
  10003fd8c  bl      _objc_release
  10003fd90  mov     x0, x26
  10003fd94  bl      _objc_release
  10003fd98  ldr     x0, [sp, #0x18]
  10003fd9c  bl      _objc_release
  10003fda0  ldr     x0, [sp, #0x28]
  10003fda4  bl      _objc_release
  10003fda8  ldr     x0, [sp, #0x30]
  10003fdac  bl      _objc_release
  10003fdb0  ldr     x0, [sp, #0x38]
  10003fdb4  bl      _objc_release
  10003fdb8  mov     x0, x21
  10003fdbc  bl      _objc_release
  10003fdc0  ldr     x24, [sp, #0x48]
loc_10003fdc4:
  10003fdc4  mov     x0, x28
  10003fdc8  mov     x1, x25
  10003fdcc  bl      _objc_msgSend                            ; [arg2 row]
  10003fdd0  cmp     x0, #2
  10003fdd4  b.ne    loc_100040018                            ; if ([arg2 row] != 2)
  10003fdd8  adrp    x8, #0x100417000
  10003fddc  nop
  10003fde0  ldr     x1, [x8, #0x320]
  10003fde4  mov     x0, x20
  10003fde8  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel]
  10003fdec  mov     x29, x29
  10003fdf0  bl      _objc_retainAutoreleasedReturnValue
  10003fdf4  mov     x21, x0
  10003fdf8  adrp    x8, #0x100416000
  10003fdfc  nop
  10003fe00  ldr     x26, [x8, #0xb68]
  10003fe04  adrp    x2, #0x1003bc000
  10003fe08  add     x2, x2, #0xb50                           ; @"Time limit star"
  10003fe0c  mov     x1, x26
  10003fe10  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] textLabel] setText:@"Time limit star"]
  10003fe14  mov     x0, x21
  10003fe18  bl      _objc_release
  10003fe1c  adrp    x8, #0x10041d000
  10003fe20  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10003fe24  adrp    x8, #0x100416000
  10003fe28  nop
  10003fe2c  ldr     x1, [x8, #0xdf0]
  10003fe30  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10003fe34  mov     x29, x29
  10003fe38  bl      _objc_retainAutoreleasedReturnValue
  10003fe3c  mov     x21, x0
  10003fe40  adrp    x8, #0x100417000
  10003fe44  nop
  10003fe48  ldr     x1, [x8, #0xa10]
  10003fe4c  mov     x2, x24
  10003fe50  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]]
  10003fe54  mov     x19, x0
  10003fe58  mov     x0, x21
  10003fe5c  bl      _objc_release
  10003fe60  adrp    x8, #0x100417000
  10003fe64  add     x8, x8, #0x338                           ; &@selector(detailTextLabel)
  10003fe68  ldr     x1, [x8]
  10003fe6c  cbz     w19, loc_10003fea0                       ; if ([[ADChallengeData sharedChallengeData] hasTimeLimitStarForChallengeWithName:[[self challengeDict] objectForKey:@"challenge_id"]] == 0)
  10003fe70  mov     x0, x20
  10003fe74  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fe78  mov     x29, x29
  10003fe7c  bl      _objc_retainAutoreleasedReturnValue
  10003fe80  mov     x19, x0
  10003fe84  adrp    x2, #0x1003bc000
  10003fe88  add     x2, x2, #0xa70                           ; @"already unlocked"
  10003fe8c  mov     x1, x26
  10003fe90  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:@"already unlocked"]
  10003fe94  mov     x0, x19
  10003fe98  bl      _objc_release
  10003fe9c  b       loc_100040018
loc_10003fea0:
  10003fea0  mov     x0, x20
  10003fea4  bl      _objc_msgSend                            ; [[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel]
  10003fea8  mov     x29, x29
  10003feac  bl      _objc_retainAutoreleasedReturnValue
  10003feb0  mov     x21, x0
  10003feb4  adrp    x8, #0x10041d000
  10003feb8  ldr     x27, [x8, #0xf78]                        ; class NSString
  10003febc  mov     x0, x22
  10003fec0  ldr     x19, [sp, #0x50]
  10003fec4  mov     x1, x19
  10003fec8  bl      _objc_msgSend                            ; [self challengeDict]
  10003fecc  str     x28, [sp, #0x58]
  10003fed0  mov     x29, x29
  10003fed4  bl      _objc_retainAutoreleasedReturnValue
  10003fed8  mov     x25, x0
  10003fedc  adrp    x2, #0x1003bc000
  10003fee0  add     x2, x2, #0xb90                           ; @"time_limit_star"
  10003fee4  mov     x1, x23
  10003fee8  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  10003feec  mov     x28, x27
  10003fef0  stp     x25, x21, [sp, #0x38]
  10003fef4  mov     x29, x29
  10003fef8  bl      _objc_retainAutoreleasedReturnValue
  10003fefc  str     x0, [sp, #0x30]
  10003ff00  adrp    x2, #0x1003bc000
  10003ff04  add     x2, x2, #0x990                           ; @"objective"
  10003ff08  mov     x1, x23
  10003ff0c  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"]
  10003ff10  str     x24, [sp, #0x48]
  10003ff14  mov     x29, x29
  10003ff18  bl      _objc_retainAutoreleasedReturnValue
  10003ff1c  mov     x21, x0
  10003ff20  adrp    x8, #0x100417000
  10003ff24  nop
  10003ff28  ldr     x25, [x8, #0x110]
  10003ff2c  mov     x1, x25
  10003ff30  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objective"] intValue]
  10003ff34  mov     x27, x0
  10003ff38  mov     x0, x22
  10003ff3c  mov     x1, x19
  10003ff40  bl      _objc_msgSend                            ; [self challengeDict]
  10003ff44  mov     x29, x29
  10003ff48  bl      _objc_retainAutoreleasedReturnValue
  10003ff4c  mov     x24, x0
  10003ff50  adrp    x2, #0x1003bc000
  10003ff54  add     x2, x2, #0xb90                           ; @"time_limit_star"
  10003ff58  mov     x1, x23
  10003ff5c  bl      _objc_msgSend                            ; [[self challengeDict] objectForKey:@"time_limit_star"]
  10003ff60  mov     x29, x29
  10003ff64  bl      _objc_retainAutoreleasedReturnValue
  10003ff68  mov     x22, x0
  10003ff6c  adrp    x2, #0x1003bc000
  10003ff70  add     x2, x2, #0xad0                           ; @"reward"
  10003ff74  mov     x1, x23
  10003ff78  bl      _objc_msgSend                            ; [[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]
  10003ff7c  mov     x29, x29
  10003ff80  bl      _objc_retainAutoreleasedReturnValue
  10003ff84  mov     x23, x0
  10003ff88  mov     x1, x25
  10003ff8c  bl      _objc_msgSend                            ; [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"] intValue]
  10003ff90  adrp    x8, #0x100416000
  10003ff94  nop
  10003ff98  ldr     x1, [x8, #0xee8]
  10003ff9c  stp     x27, x0, [sp]
  10003ffa0  adrp    x2, #0x1003bc000
  10003ffa4  add     x2, x2, #0xb70                           ; @"Time goal : %i seconds -- Reward : %i coins"
  10003ffa8  mov     x0, x28
  10003ffac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Time goal : %i seconds -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objectiv…, [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]…]
  10003ffb0  mov     x29, x29
  10003ffb4  bl      _objc_retainAutoreleasedReturnValue
  10003ffb8  mov     x19, x0
  10003ffbc  ldr     x25, [sp, #0x40]
  10003ffc0  mov     x0, x25
  10003ffc4  mov     x1, x26
  10003ffc8  mov     x2, x19
  10003ffcc  bl      _objc_msgSend                            ; [[[[ADAccessibleTableCell alloc] initWithStyle:3 reuseIdentifier:@"AccessibleGameOverCell"] detailTextLabel] setText:[NSString stringWithFormat:@"Time goal : %i seconds -- Reward : %i coins", [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"objectiv…, [[[[self challengeDict] objectForKey:@"time_limit_star"] objectForKey:@"reward"]…]]
  10003ffd0  mov     x0, x19
  10003ffd4  bl      _objc_release
  10003ffd8  mov     x0, x23
  10003ffdc  bl      _objc_release
  10003ffe0  mov     x0, x22
  10003ffe4  bl      _objc_release
  10003ffe8  mov     x0, x24
  10003ffec  bl      _objc_release
  10003fff0  mov     x0, x21
  10003fff4  bl      _objc_release
  10003fff8  ldr     x0, [sp, #0x30]
  10003fffc  bl      _objc_release
  100040000  ldr     x0, [sp, #0x38]
  100040004  bl      _objc_release
  100040008  mov     x0, x25
  10004000c  bl      _objc_release
  100040010  ldr     x28, [sp, #0x58]
  100040014  ldr     x24, [sp, #0x48]
loc_100040018:
  100040018  mov     x0, x24
loc_10004001c:
  10004001c  bl      _objc_release
loc_100040020:
  100040020  mov     x0, x20
  100040024  bl      _objc_retain
  100040028  mov     x0, x20
  10004002c  bl      _objc_release
  100040030  mov     x0, x28
  100040034  bl      _objc_release
  100040038  mov     x0, x20
  10004003c  sub     sp, x29, #0x50
  100040040  ldp     x29, x30, [sp, #0x50]
  100040044  ldp     x20, x19, [sp, #0x40]
  100040048  ldp     x22, x21, [sp, #0x30]
  10004004c  ldp     x24, x23, [sp, #0x20]
  100040050  ldp     x26, x25, [sp, #0x10]
  100040054  ldp     x28, x27, [sp], #0x60
  100040058  b       _objc_autoreleaseReturnValue
  10004005c  str     x24, [sp, #0x48]
  100040060  str     x28, [sp, #0x58]
  100040064  str     x0, [sp, #0x20]
  100040068  b       loc_1000402f8
  10004006c  str     x28, [sp, #0x58]
  100040070  str     x0, [sp, #0x20]
  100040074  b       loc_1000401a8
  100040078  stp     x19, x28, [sp, #0x50]
  10004007c  str     x0, [sp, #0x20]
  100040080  b       loc_1000401b0
  100040084  str     x0, [sp, #0x20]
  100040088  b       loc_100040198
  10004008c  str     x28, [sp, #0x58]
  100040090  str     x0, [sp, #0x20]
  100040094  mov     x0, x22
  100040098  b       loc_1000402fc
  10004009c  str     x28, [sp, #0x58]
  1000400a0  str     x0, [sp, #0x20]
  1000400a4  b       loc_1000401a0
  1000400a8  str     x0, [sp, #0x20]
  1000400ac  b       loc_1000400cc
  1000400b0  str     x0, [sp, #0x20]
  1000400b4  b       loc_1000400c4
  1000400b8  str     x0, [sp, #0x20]
  1000400bc  mov     x0, x19
  1000400c0  bl      _objc_release
loc_1000400c4:
  1000400c4  mov     x0, x28
  1000400c8  bl      _objc_release
loc_1000400cc:
  1000400cc  mov     x0, x27
  1000400d0  b       loc_10004019c
loc_1000400d4:
  1000400d4  str     x0, [sp, #0x20]
  1000400d8  mov     x0, x19
  1000400dc  bl      _objc_release
  1000400e0  b       loc_1000401a8
  1000400e4  str     x0, [sp, #0x20]
  1000400e8  b       loc_1000401a0
  1000400ec  str     x0, [sp, #0x20]
  1000400f0  mov     x0, x19
  1000400f4  bl      _objc_release
  1000400f8  b       loc_100040198
  1000400fc  b       loc_100040134
  100040100  str     x28, [sp, #0x58]
  100040104  str     x0, [sp, #0x20]
  100040108  b       loc_10004011c
  10004010c  str     x28, [sp, #0x58]
  100040110  str     x0, [sp, #0x20]
  100040114  mov     x0, x25
  100040118  bl      _objc_release
loc_10004011c:
  10004011c  mov     x0, x22
  100040120  bl      _objc_release
  100040124  b       loc_10004013c
  100040128  b       loc_10004017c
  10004012c  b       loc_10004017c
  100040130  b       loc_100040134
loc_100040134:
  100040134  str     x28, [sp, #0x58]
  100040138  str     x0, [sp, #0x20]
loc_10004013c:
  10004013c  mov     x0, x23
  100040140  b       loc_1000402fc
  100040144  str     x28, [sp, #0x58]
  100040148  str     x0, [sp, #0x20]
  10004014c  b       loc_100040174
  100040150  str     x28, [sp, #0x58]
  100040154  str     x0, [sp, #0x20]
  100040158  b       loc_10004016c
  10004015c  str     x28, [sp, #0x58]
  100040160  str     x0, [sp, #0x20]
  100040164  mov     x0, x27
  100040168  bl      _objc_release
loc_10004016c:
  10004016c  mov     x0, x25
  100040170  bl      _objc_release
loc_100040174:
  100040174  mov     x0, x24
  100040178  b       loc_1000402fc
loc_10004017c:
  10004017c  str     x28, [sp, #0x58]
  100040180  str     x0, [sp, #0x20]
  100040184  mov     x0, x21
  100040188  b       loc_1000402fc
  10004018c  str     x0, [sp, #0x20]
  100040190  b       loc_1000401a0
  100040194  str     x0, [sp, #0x20]
loc_100040198:
  100040198  mov     x0, x24
loc_10004019c:
  10004019c  bl      _objc_release
loc_1000401a0:
  1000401a0  mov     x0, x25
  1000401a4  bl      _objc_release
loc_1000401a8:
  1000401a8  mov     x0, x23
  1000401ac  bl      _objc_release
loc_1000401b0:
  1000401b0  ldr     x0, [sp, #0x50]
  1000401b4  b       loc_1000402fc
  1000401b8  b       loc_1000401f4
  1000401bc  b       loc_1000401f4
  1000401c0  str     x26, [sp, #0x38]
  1000401c4  str     x24, [sp, #0x48]
  1000401c8  str     x0, [sp, #0x20]
  1000401cc  b       loc_10004027c
  1000401d0  str     x0, [sp, #0x20]
  1000401d4  b       loc_100040264
  1000401d8  b       loc_1000401f4
  1000401dc  b       loc_1000401f4
  1000401e0  str     x0, [sp, #0x20]
  1000401e4  b       loc_1000402d8
  1000401e8  str     x0, [sp, #0x20]
  1000401ec  b       loc_1000402c0
  1000401f0  b       loc_1000401f4
loc_1000401f4:
  1000401f4  str     x24, [sp, #0x48]
  1000401f8  str     x28, [sp, #0x58]
  1000401fc  str     x0, [sp, #0x20]
  100040200  mov     x0, x21
  100040204  bl      _objc_release
  100040208  b       loc_1000402f8
  10004020c  str     x24, [sp, #0x48]
  100040210  str     x0, [sp, #0x20]
  100040214  b       loc_10004036c
  100040218  b       loc_1000400d4
  10004021c  b       loc_10004031c
  100040220  b       loc_100040288
  100040224  stp     x26, x21, [sp, #0x38]
  100040228  str     x24, [sp, #0x48]
  10004022c  str     x28, [sp, #0x58]
  100040230  str     x0, [sp, #0x20]
  100040234  b       loc_1000402e8
  100040238  str     x26, [sp, #0x38]
  10004023c  b       loc_100040298
  100040240  str     x19, [sp, #0x18]
  100040244  str     x24, [sp, #0x48]
  100040248  str     x0, [sp, #0x20]
  10004024c  b       loc_100040274
  100040250  stp     x19, x0, [sp, #0x18]
  100040254  b       loc_10004026c
  100040258  str     x0, [sp, #0x20]
  10004025c  mov     x0, x19
  100040260  bl      _objc_release
loc_100040264:
  100040264  mov     x0, x24
  100040268  bl      _objc_release
loc_10004026c:
  10004026c  mov     x0, x26
  100040270  bl      _objc_release
loc_100040274:
  100040274  ldr     x0, [sp, #0x18]
  100040278  bl      _objc_release
loc_10004027c:
  10004027c  ldr     x0, [sp, #0x28]
  100040280  b       loc_1000402dc
  100040284  b       loc_10004031c
loc_100040288:
  100040288  str     x21, [sp, #0x40]
  10004028c  b       loc_100040334
  100040290  stp     x25, x21, [sp, #0x38]
  100040294  b       loc_100040344
loc_100040298:
  100040298  str     x24, [sp, #0x48]
  10004029c  str     x0, [sp, #0x20]
  1000402a0  b       loc_1000402e0
  1000402a4  str     x0, [sp, #0x20]
  1000402a8  b       loc_1000402d0
  1000402ac  str     x0, [sp, #0x20]
  1000402b0  b       loc_1000402c8
  1000402b4  str     x0, [sp, #0x20]
  1000402b8  mov     x0, x19
  1000402bc  bl      _objc_release
loc_1000402c0:
  1000402c0  mov     x0, x23
  1000402c4  bl      _objc_release
loc_1000402c8:
  1000402c8  mov     x0, x22
  1000402cc  bl      _objc_release
loc_1000402d0:
  1000402d0  mov     x0, x24
  1000402d4  bl      _objc_release
loc_1000402d8:
  1000402d8  mov     x0, x21
loc_1000402dc:
  1000402dc  bl      _objc_release
loc_1000402e0:
  1000402e0  ldr     x0, [sp, #0x30]
loc_1000402e4:
  1000402e4  bl      _objc_release
loc_1000402e8:
  1000402e8  ldr     x0, [sp, #0x38]
  1000402ec  bl      _objc_release
loc_1000402f0:
  1000402f0  ldr     x0, [sp, #0x40]
  1000402f4  bl      _objc_release
loc_1000402f8:
  1000402f8  ldr     x0, [sp, #0x48]
loc_1000402fc:
  1000402fc  bl      _objc_release
  100040300  mov     x21, x20
loc_100040304:
  100040304  mov     x0, x21
  100040308  bl      _objc_release
  10004030c  ldr     x0, [sp, #0x58]
  100040310  bl      _objc_release
  100040314  ldr     x0, [sp, #0x20]
  100040318  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10004031c:
  10004031c  str     x24, [sp, #0x48]
  100040320  str     x28, [sp, #0x58]
  100040324  str     x0, [sp, #0x20]
  100040328  mov     x0, x19
  10004032c  bl      _objc_release
  100040330  b       loc_1000402f8
loc_100040334:
  100040334  str     x24, [sp, #0x48]
  100040338  str     x28, [sp, #0x58]
  10004033c  str     x0, [sp, #0x20]
  100040340  b       loc_1000402f0
loc_100040344:
  100040344  str     x24, [sp, #0x48]
  100040348  str     x0, [sp, #0x20]
  10004034c  b       loc_1000402e8
  100040350  str     x24, [sp, #0x48]
  100040354  str     x0, [sp, #0x20]
  100040358  b       loc_100040374
  10004035c  str     x24, [sp, #0x48]
  100040360  str     x0, [sp, #0x20]
  100040364  mov     x0, x19
  100040368  bl      _objc_release
loc_10004036c:
  10004036c  mov     x0, x27
  100040370  bl      _objc_release
loc_100040374:
  100040374  mov     x0, x28
  100040378  b       loc_1000402e4

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController loadEquipment]
; address 0x10004037c  size 4  kind objc
; ======================================================================
  10004037c  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController missionsButtonPressed:]
; address 0x100040380  size 4  kind objc
; ======================================================================
  100040380  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController viewWillLayoutSubviews]
; address 0x100040384  size 92  kind objc
; ======================================================================
  100040384  stp     x20, x19, [sp, #-0x20]!
  100040388  stp     x29, x30, [sp, #0x10]
  10004038c  add     x29, sp, #0x10
  100040390  adrp    x8, #0x100417000
  100040394  nop
  100040398  ldr     x1, [x8, #0x2d0]
  10004039c  bl      _objc_msgSend                            ; [self tableView]
  1000403a0  mov     x29, x29
  1000403a4  bl      _objc_retainAutoreleasedReturnValue
  1000403a8  mov     x19, x0
  1000403ac  adrp    x8, #0x100417000
  1000403b0  nop
  1000403b4  ldr     x1, [x8, #0xb18]
  1000403b8  bl      _objc_msgSend                            ; [[self tableView] reloadData]
  1000403bc  mov     x0, x19
  1000403c0  ldp     x29, x30, [sp, #0x10]
  1000403c4  ldp     x20, x19, [sp], #0x20
  1000403c8  b       _objc_release
  1000403cc  mov     x20, x0
  1000403d0  mov     x0, x19
  1000403d4  bl      _objc_release
  1000403d8  mov     x0, x20
  1000403dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController accessibilityPerformMagicTap]
; address 0x1000403e0  size 40  kind objc
; ======================================================================
  1000403e0  stp     x29, x30, [sp, #-0x10]!
  1000403e4  mov     x29, sp
  1000403e8  adrp    x8, #0x100418000
  1000403ec  nop
  1000403f0  ldr     x1, [x8, #0x458]
  1000403f4  mov     x2, #0
  1000403f8  bl      _objc_msgSend                            ; [self playButtonPressed:0]
  1000403fc  mov     w0, #1
  100040400  ldp     x29, x30, [sp], #0x10
  100040404  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController tableView]
; address 0x100040408  size 16  kind objc
; ======================================================================
  100040408  adrp    x8, #0x10041f000
  10004040c  ldrsw   x8, [x8, #0x8e4]                         ; ivar offset Accessible_ADChallengeOverviewViewController._tableView (+0x148)
  100040410  ldr     x0, [x0, x8]                             ; x0 = self->_tableView
  100040414  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController setTableView:]
; address 0x100040418  size 56  kind objc
; ======================================================================
  100040418  stp     x20, x19, [sp, #-0x20]!
  10004041c  stp     x29, x30, [sp, #0x10]
  100040420  add     x29, sp, #0x10
  100040424  mov     x19, x0
  100040428  adrp    x8, #0x10041f000
  10004042c  ldrsw   x20, [x8, #0x8e4]                        ; ivar offset Accessible_ADChallengeOverviewViewController._tableView (+0x148)
  100040430  mov     x0, x2
  100040434  bl      _objc_retain
  100040438  ldr     x8, [x19, x20]                           ; x8 = self->_tableView
  10004043c  str     x0, [x19, x20]                           ; self->_tableView = arg1
  100040440  mov     x0, x8
  100040444  ldp     x29, x30, [sp, #0x10]
  100040448  ldp     x20, x19, [sp], #0x20
  10004044c  b       _objc_release

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController playButton]
; address 0x100040450  size 16  kind objc
; ======================================================================
  100040450  adrp    x8, #0x10041f000
  100040454  ldrsw   x8, [x8, #0x8e8]                         ; ivar offset Accessible_ADChallengeOverviewViewController._playButton (+0x150)
  100040458  ldr     x0, [x0, x8]                             ; x0 = self->_playButton
  10004045c  ret

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController setPlayButton:]
; address 0x100040460  size 56  kind objc
; ======================================================================
  100040460  stp     x20, x19, [sp, #-0x20]!
  100040464  stp     x29, x30, [sp, #0x10]
  100040468  add     x29, sp, #0x10
  10004046c  mov     x19, x0
  100040470  adrp    x8, #0x10041f000
  100040474  ldrsw   x20, [x8, #0x8e8]                        ; ivar offset Accessible_ADChallengeOverviewViewController._playButton (+0x150)
  100040478  mov     x0, x2
  10004047c  bl      _objc_retain
  100040480  ldr     x8, [x19, x20]                           ; x8 = self->_playButton
  100040484  str     x0, [x19, x20]                           ; self->_playButton = arg1
  100040488  mov     x0, x8
  10004048c  ldp     x29, x30, [sp, #0x10]
  100040490  ldp     x20, x19, [sp], #0x20
  100040494  b       _objc_release

; ======================================================================
; -[Accessible_ADChallengeOverviewViewController .cxx_destruct]
; address 0x100040498  size 84  kind objc
; ======================================================================
  100040498  stp     x20, x19, [sp, #-0x20]!
  10004049c  stp     x29, x30, [sp, #0x10]
  1000404a0  add     x29, sp, #0x10
  1000404a4  mov     x19, x0
  1000404a8  adrp    x8, #0x10041f000
  1000404ac  ldrsw   x8, [x8, #0x8e8]                         ; ivar offset Accessible_ADChallengeOverviewViewController._playButton (+0x150)
  1000404b0  add     x0, x19, x8
  1000404b4  mov     x1, #0
  1000404b8  bl      _objc_storeStrong
  1000404bc  adrp    x8, #0x10041f000
  1000404c0  ldrsw   x8, [x8, #0x8e4]                         ; ivar offset Accessible_ADChallengeOverviewViewController._tableView (+0x148)
  1000404c4  add     x0, x19, x8
  1000404c8  mov     x1, #0
  1000404cc  bl      _objc_storeStrong
  1000404d0  mov     x1, #0
  1000404d4  adrp    x8, #0x10041f000
  1000404d8  ldrsw   x8, [x8, #0x8e0]                         ; ivar offset Accessible_ADChallengeOverviewViewController.requiredWeapon (+0x140)
  1000404dc  add     x0, x19, x8
  1000404e0  ldp     x29, x30, [sp, #0x10]
  1000404e4  ldp     x20, x19, [sp], #0x20
  1000404e8  b       _objc_storeStrong
