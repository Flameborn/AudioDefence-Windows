// unit ADGameOverTableWeaponCell — 29 functions
//   0x10004a810      60  -[ADGameOverTableWeaponCell initWithStyle:reuseIdentifier:]
//   0x10004a84c    2148  -[ADGameOverTableWeaponCell awakeFromNib]
//   0x10004b0b0      60  -[ADGameOverTableWeaponCell setSelected:animated:]
//   0x10004b0ec     192  -[ADGameOverTableWeaponCell startKillsAnimationUpTo::]
//   0x10004b1ac      32  -[ADGameOverTableWeaponCell accuracyLabel]
//   0x10004b1cc      20  -[ADGameOverTableWeaponCell setAccuracyLabel:]
//   0x10004b1e0      32  -[ADGameOverTableWeaponCell criticalsLabel]
//   0x10004b200      20  -[ADGameOverTableWeaponCell setCriticalsLabel:]
//   0x10004b214      32  -[ADGameOverTableWeaponCell shotsFiredLabel]
//   0x10004b234      20  -[ADGameOverTableWeaponCell setShotsFiredLabel:]
//   0x10004b248      16  -[ADGameOverTableWeaponCell killsLabel]
//   0x10004b258      56  -[ADGameOverTableWeaponCell setKillsLabel:]
//   0x10004b290      32  -[ADGameOverTableWeaponCell timeSpentLabel]
//   0x10004b2b0      20  -[ADGameOverTableWeaponCell setTimeSpentLabel:]
//   0x10004b2c4      32  -[ADGameOverTableWeaponCell timeSpentValue]
//   0x10004b2e4      20  -[ADGameOverTableWeaponCell setTimeSpentValue:]
//   0x10004b2f8      32  -[ADGameOverTableWeaponCell accuracyValue]
//   0x10004b318      20  -[ADGameOverTableWeaponCell setAccuracyValue:]
//   0x10004b32c      32  -[ADGameOverTableWeaponCell shotsFiredValue]
//   0x10004b34c      20  -[ADGameOverTableWeaponCell setShotsFiredValue:]
//   0x10004b360      16  -[ADGameOverTableWeaponCell killsValue]
//   0x10004b370      56  -[ADGameOverTableWeaponCell setKillsValue:]
//   0x10004b3a8      32  -[ADGameOverTableWeaponCell criticalsFiredValue]
//   0x10004b3c8      20  -[ADGameOverTableWeaponCell setCriticalsFiredValue:]
//   0x10004b3dc      32  -[ADGameOverTableWeaponCell nameLabel]
//   0x10004b3fc      20  -[ADGameOverTableWeaponCell setNameLabel:]
//   0x10004b410      32  -[ADGameOverTableWeaponCell mainParentView]
//   0x10004b430      20  -[ADGameOverTableWeaponCell setMainParentView:]
//   0x10004b444     224  -[ADGameOverTableWeaponCell .cxx_destruct]

; ======================================================================
; -[ADGameOverTableWeaponCell initWithStyle:reuseIdentifier:]
; address 0x10004a810  size 60  kind objc
; ======================================================================
  10004a810  stp     x29, x30, [sp, #-0x10]!
  10004a814  mov     x29, sp
  10004a818  sub     sp, sp, #0x10
  10004a81c  str     x0, [sp]
  10004a820  adrp    x8, #0x10041e000
  10004a824  ldr     x8, [x8, #0xd28]
  10004a828  str     x8, [sp, #8]
  10004a82c  adrp    x8, #0x100417000
  10004a830  nop
  10004a834  ldr     x1, [x8, #0x3c0]
  10004a838  mov     x0, sp
  10004a83c  bl      _objc_msgSendSuper2                      ; [super initWithStyle:arg1 reuseIdentifier:arg2]
  10004a840  mov     sp, x29
  10004a844  ldp     x29, x30, [sp], #0x10
  10004a848  ret

; ======================================================================
; -[ADGameOverTableWeaponCell awakeFromNib]
; address 0x10004a84c  size 2148  kind objc
; ======================================================================
  10004a84c  stp     d9, d8, [sp, #-0x70]!
  10004a850  stp     x28, x27, [sp, #0x10]
  10004a854  stp     x26, x25, [sp, #0x20]
  10004a858  stp     x24, x23, [sp, #0x30]
  10004a85c  stp     x22, x21, [sp, #0x40]
  10004a860  stp     x20, x19, [sp, #0x50]
  10004a864  stp     x29, x30, [sp, #0x60]
  10004a868  add     x29, sp, #0x60
  10004a86c  mov     x19, x0
  10004a870  adrp    x8, #0x10041d000
  10004a874  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10004a878  adrp    x8, #0x100416000
  10004a87c  nop
  10004a880  ldr     x1, [x8, #0xc00]
  10004a884  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10004a888  mov     x29, x29
  10004a88c  bl      _objc_retainAutoreleasedReturnValue
  10004a890  mov     x21, x0
  10004a894  adrp    x8, #0x100416000
  10004a898  nop
  10004a89c  ldr     x1, [x8, #0xd18]
  10004a8a0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] isIphone]
  10004a8a4  mov     x20, x0
  10004a8a8  mov     x0, x21
  10004a8ac  bl      _objc_release
  10004a8b0  adrp    x8, #0x100418000
  10004a8b4  nop
  10004a8b8  ldr     x23, [x8, #0x750]
  10004a8bc  mov     x0, x19
  10004a8c0  mov     x1, x23
  10004a8c4  bl      _objc_msgSend                            ; [self nameLabel]
  10004a8c8  mov     x29, x29
  10004a8cc  bl      _objc_retainAutoreleasedReturnValue
  10004a8d0  mov     x22, x0
  10004a8d4  adrp    x8, #0x10041d000
  10004a8d8  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004a8dc  cmp     w20, #0
  10004a8e0  fmov    d0, #20.00000000
  10004a8e4  fmov    d1, #15.00000000
  10004a8e8  fcsel   d8, d1, d0, ne
  10004a8ec  adrp    x8, #0x100416000
  10004a8f0  nop
  10004a8f4  ldr     x21, [x8, #0xd20]
  10004a8f8  adrp    x2, #0x1003ba000
  10004a8fc  add     x2, x2, #0xf0                            ; @"Friday13"
  10004a900  mov     x1, x21
  10004a904  mov     v0.16b, v8.16b
  10004a908  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004a90c  mov     x29, x29
  10004a910  bl      _objc_retainAutoreleasedReturnValue
  10004a914  mov     x24, x0
  10004a918  adrp    x8, #0x100416000
  10004a91c  nop
  10004a920  ldr     x20, [x8, #0xd28]
  10004a924  mov     x0, x22
  10004a928  mov     x1, x20
  10004a92c  mov     x2, x24
  10004a930  bl      _objc_msgSend                            ; [[self nameLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004a934  mov     x0, x24
  10004a938  bl      _objc_release
  10004a93c  mov     x0, x22
  10004a940  bl      _objc_release
  10004a944  mov     x0, x19
  10004a948  mov     x1, x23
  10004a94c  bl      _objc_msgSend                            ; [self nameLabel]
  10004a950  mov     x29, x29
  10004a954  bl      _objc_retainAutoreleasedReturnValue
  10004a958  mov     x24, x0
  10004a95c  adrp    x27, #0x10041d000
  10004a960  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10004a964  adrp    x8, #0x100417000
  10004a968  nop
  10004a96c  ldr     x22, [x8, #0x328]
  10004a970  mov     x1, x22
  10004a974  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004a978  mov     x29, x29
  10004a97c  bl      _objc_retainAutoreleasedReturnValue
  10004a980  mov     x25, x0
  10004a984  adrp    x8, #0x100417000
  10004a988  nop
  10004a98c  ldr     x23, [x8, #0x330]
  10004a990  mov     x0, x24
  10004a994  mov     x1, x23
  10004a998  mov     x2, x25
  10004a99c  bl      _objc_msgSend                            ; [[self nameLabel] setTextColor:[UIColor whiteColor]]
  10004a9a0  mov     x0, x25
  10004a9a4  bl      _objc_release
  10004a9a8  mov     x0, x24
  10004a9ac  bl      _objc_release
  10004a9b0  adrp    x8, #0x100416000
  10004a9b4  nop
  10004a9b8  ldr     x25, [x8, #0xc50]
  10004a9bc  mov     x0, x19
  10004a9c0  mov     x1, x25
  10004a9c4  bl      _objc_msgSend                            ; [self accuracyLabel]
  10004a9c8  mov     x29, x29
  10004a9cc  bl      _objc_retainAutoreleasedReturnValue
  10004a9d0  mov     x24, x0
  10004a9d4  adrp    x8, #0x10041d000
  10004a9d8  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004a9dc  adrp    x2, #0x1003ba000
  10004a9e0  add     x2, x2, #0xf0                            ; @"Friday13"
  10004a9e4  mov     x1, x21
  10004a9e8  mov     v0.16b, v8.16b
  10004a9ec  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004a9f0  mov     x29, x29
  10004a9f4  bl      _objc_retainAutoreleasedReturnValue
  10004a9f8  mov     x26, x0
  10004a9fc  mov     x0, x24
  10004aa00  mov     x1, x20
  10004aa04  mov     x2, x26
  10004aa08  bl      _objc_msgSend                            ; [[self accuracyLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004aa0c  mov     x0, x26
  10004aa10  bl      _objc_release
  10004aa14  mov     x0, x24
  10004aa18  bl      _objc_release
  10004aa1c  mov     x0, x19
  10004aa20  mov     x1, x25
  10004aa24  bl      _objc_msgSend                            ; [self accuracyLabel]
  10004aa28  mov     x29, x29
  10004aa2c  bl      _objc_retainAutoreleasedReturnValue
  10004aa30  mov     x24, x0
  10004aa34  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10004aa38  mov     x1, x22
  10004aa3c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004aa40  mov     x29, x29
  10004aa44  bl      _objc_retainAutoreleasedReturnValue
  10004aa48  mov     x25, x0
  10004aa4c  mov     x0, x24
  10004aa50  mov     x1, x23
  10004aa54  mov     x2, x25
  10004aa58  bl      _objc_msgSend                            ; [[self accuracyLabel] setTextColor:[UIColor whiteColor]]
  10004aa5c  mov     x0, x25
  10004aa60  bl      _objc_release
  10004aa64  mov     x0, x24
  10004aa68  bl      _objc_release
  10004aa6c  adrp    x8, #0x100418000
  10004aa70  nop
  10004aa74  ldr     x1, [x8, #0xb08]
  10004aa78  mov     x0, x19
  10004aa7c  bl      _objc_msgSend                            ; [self accuracyValue]
  10004aa80  mov     x29, x29
  10004aa84  bl      _objc_retainAutoreleasedReturnValue
  10004aa88  mov     x25, x0
  10004aa8c  adrp    x8, #0x10041d000
  10004aa90  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004aa94  adrp    x8, #0x100418000
  10004aa98  nop
  10004aa9c  ldr     x24, [x8, #0xb10]
  10004aaa0  mov     x1, x24
  10004aaa4  mov     v0.16b, v8.16b
  10004aaa8  bl      _objc_msgSend                            ; [UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004aaac  mov     x29, x29
  10004aab0  bl      _objc_retainAutoreleasedReturnValue
  10004aab4  mov     x26, x0
  10004aab8  mov     x0, x25
  10004aabc  mov     x1, x20
  10004aac0  mov     x2, x26
  10004aac4  bl      _objc_msgSend                            ; [[self accuracyValue] setFont:[UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004aac8  mov     x28, x27
  10004aacc  mov     x0, x26
  10004aad0  bl      _objc_release
  10004aad4  mov     x0, x25
  10004aad8  bl      _objc_release
  10004aadc  adrp    x8, #0x100418000
  10004aae0  nop
  10004aae4  ldr     x26, [x8, #0xb18]
  10004aae8  mov     x0, x19
  10004aaec  mov     x1, x26
  10004aaf0  bl      _objc_msgSend                            ; [self shotsFiredLabel]
  10004aaf4  mov     x29, x29
  10004aaf8  bl      _objc_retainAutoreleasedReturnValue
  10004aafc  mov     x25, x0
  10004ab00  adrp    x8, #0x10041d000
  10004ab04  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004ab08  adrp    x2, #0x1003ba000
  10004ab0c  add     x2, x2, #0xf0                            ; @"Friday13"
  10004ab10  mov     x1, x21
  10004ab14  mov     v0.16b, v8.16b
  10004ab18  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004ab1c  mov     x29, x29
  10004ab20  bl      _objc_retainAutoreleasedReturnValue
  10004ab24  mov     x27, x0
  10004ab28  mov     x0, x25
  10004ab2c  mov     x1, x20
  10004ab30  mov     x2, x27
  10004ab34  bl      _objc_msgSend                            ; [[self shotsFiredLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004ab38  mov     x0, x27
  10004ab3c  bl      _objc_release
  10004ab40  mov     x0, x25
  10004ab44  bl      _objc_release
  10004ab48  mov     x0, x19
  10004ab4c  mov     x1, x26
  10004ab50  bl      _objc_msgSend                            ; [self shotsFiredLabel]
  10004ab54  mov     x29, x29
  10004ab58  bl      _objc_retainAutoreleasedReturnValue
  10004ab5c  mov     x25, x0
  10004ab60  mov     x27, x28
  10004ab64  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10004ab68  mov     x1, x22
  10004ab6c  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004ab70  mov     x29, x29
  10004ab74  bl      _objc_retainAutoreleasedReturnValue
  10004ab78  mov     x26, x0
  10004ab7c  mov     x0, x25
  10004ab80  mov     x1, x23
  10004ab84  mov     x2, x26
  10004ab88  bl      _objc_msgSend                            ; [[self shotsFiredLabel] setTextColor:[UIColor whiteColor]]
  10004ab8c  mov     x0, x26
  10004ab90  bl      _objc_release
  10004ab94  mov     x0, x25
  10004ab98  bl      _objc_release
  10004ab9c  adrp    x8, #0x100418000
  10004aba0  nop
  10004aba4  ldr     x1, [x8, #0xb20]
  10004aba8  mov     x0, x19
  10004abac  bl      _objc_msgSend                            ; [self shotsFiredValue]
  10004abb0  mov     x29, x29
  10004abb4  bl      _objc_retainAutoreleasedReturnValue
  10004abb8  mov     x25, x0
  10004abbc  adrp    x8, #0x10041d000
  10004abc0  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004abc4  mov     x1, x24
  10004abc8  mov     v0.16b, v8.16b
  10004abcc  bl      _objc_msgSend                            ; [UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004abd0  mov     x29, x29
  10004abd4  bl      _objc_retainAutoreleasedReturnValue
  10004abd8  mov     x26, x0
  10004abdc  mov     x0, x25
  10004abe0  mov     x1, x20
  10004abe4  mov     x2, x26
  10004abe8  bl      _objc_msgSend                            ; [[self shotsFiredValue] setFont:[UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004abec  mov     x28, x27
  10004abf0  mov     x0, x26
  10004abf4  bl      _objc_release
  10004abf8  mov     x0, x25
  10004abfc  bl      _objc_release
  10004ac00  adrp    x8, #0x100418000
  10004ac04  nop
  10004ac08  ldr     x26, [x8, #0xb28]
  10004ac0c  mov     x0, x19
  10004ac10  mov     x1, x26
  10004ac14  bl      _objc_msgSend                            ; [self criticalsLabel]
  10004ac18  mov     x29, x29
  10004ac1c  bl      _objc_retainAutoreleasedReturnValue
  10004ac20  mov     x25, x0
  10004ac24  adrp    x8, #0x10041d000
  10004ac28  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004ac2c  adrp    x2, #0x1003ba000
  10004ac30  add     x2, x2, #0xf0                            ; @"Friday13"
  10004ac34  mov     x1, x21
  10004ac38  mov     v0.16b, v8.16b
  10004ac3c  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004ac40  mov     x29, x29
  10004ac44  bl      _objc_retainAutoreleasedReturnValue
  10004ac48  mov     x27, x0
  10004ac4c  mov     x0, x25
  10004ac50  mov     x1, x20
  10004ac54  mov     x2, x27
  10004ac58  bl      _objc_msgSend                            ; [[self criticalsLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004ac5c  mov     x0, x27
  10004ac60  bl      _objc_release
  10004ac64  mov     x0, x25
  10004ac68  bl      _objc_release
  10004ac6c  mov     x0, x19
  10004ac70  mov     x1, x26
  10004ac74  bl      _objc_msgSend                            ; [self criticalsLabel]
  10004ac78  mov     x29, x29
  10004ac7c  bl      _objc_retainAutoreleasedReturnValue
  10004ac80  mov     x25, x0
  10004ac84  mov     x27, x28
  10004ac88  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10004ac8c  mov     x1, x22
  10004ac90  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004ac94  mov     x29, x29
  10004ac98  bl      _objc_retainAutoreleasedReturnValue
  10004ac9c  mov     x26, x0
  10004aca0  mov     x0, x25
  10004aca4  mov     x1, x23
  10004aca8  mov     x2, x26
  10004acac  bl      _objc_msgSend                            ; [[self criticalsLabel] setTextColor:[UIColor whiteColor]]
  10004acb0  mov     x0, x26
  10004acb4  bl      _objc_release
  10004acb8  mov     x0, x25
  10004acbc  bl      _objc_release
  10004acc0  adrp    x8, #0x100418000
  10004acc4  nop
  10004acc8  ldr     x1, [x8, #0xb30]
  10004accc  mov     x0, x19
  10004acd0  bl      _objc_msgSend                            ; [self criticalsFiredValue]
  10004acd4  mov     x29, x29
  10004acd8  bl      _objc_retainAutoreleasedReturnValue
  10004acdc  mov     x25, x0
  10004ace0  adrp    x8, #0x10041d000
  10004ace4  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004ace8  mov     x1, x24
  10004acec  mov     v0.16b, v8.16b
  10004acf0  bl      _objc_msgSend                            ; [UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004acf4  mov     x29, x29
  10004acf8  bl      _objc_retainAutoreleasedReturnValue
  10004acfc  mov     x26, x0
  10004ad00  mov     x0, x25
  10004ad04  mov     x1, x20
  10004ad08  mov     x2, x26
  10004ad0c  bl      _objc_msgSend                            ; [[self criticalsFiredValue] setFont:[UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004ad10  mov     x28, x27
  10004ad14  mov     x0, x26
  10004ad18  bl      _objc_release
  10004ad1c  mov     x0, x25
  10004ad20  bl      _objc_release
  10004ad24  adrp    x8, #0x100418000
  10004ad28  nop
  10004ad2c  ldr     x26, [x8, #0xb38]
  10004ad30  mov     x0, x19
  10004ad34  mov     x1, x26
  10004ad38  bl      _objc_msgSend                            ; [self timeSpentLabel]
  10004ad3c  mov     x29, x29
  10004ad40  bl      _objc_retainAutoreleasedReturnValue
  10004ad44  mov     x25, x0
  10004ad48  adrp    x8, #0x10041d000
  10004ad4c  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004ad50  adrp    x2, #0x1003ba000
  10004ad54  add     x2, x2, #0xf0                            ; @"Friday13"
  10004ad58  mov     x1, x21
  10004ad5c  mov     v0.16b, v8.16b
  10004ad60  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004ad64  mov     x29, x29
  10004ad68  bl      _objc_retainAutoreleasedReturnValue
  10004ad6c  mov     x27, x0
  10004ad70  mov     x0, x25
  10004ad74  mov     x1, x20
  10004ad78  mov     x2, x27
  10004ad7c  bl      _objc_msgSend                            ; [[self timeSpentLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004ad80  mov     x0, x27
  10004ad84  bl      _objc_release
  10004ad88  mov     x0, x25
  10004ad8c  bl      _objc_release
  10004ad90  mov     x0, x19
  10004ad94  mov     x1, x26
  10004ad98  bl      _objc_msgSend                            ; [self timeSpentLabel]
  10004ad9c  mov     x29, x29
  10004ada0  bl      _objc_retainAutoreleasedReturnValue
  10004ada4  mov     x25, x0
  10004ada8  mov     x27, x28
  10004adac  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10004adb0  mov     x1, x22
  10004adb4  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004adb8  mov     x29, x29
  10004adbc  bl      _objc_retainAutoreleasedReturnValue
  10004adc0  mov     x26, x0
  10004adc4  mov     x0, x25
  10004adc8  mov     x1, x23
  10004adcc  mov     x2, x26
  10004add0  bl      _objc_msgSend                            ; [[self timeSpentLabel] setTextColor:[UIColor whiteColor]]
  10004add4  mov     x0, x26
  10004add8  bl      _objc_release
  10004addc  mov     x0, x25
  10004ade0  bl      _objc_release
  10004ade4  adrp    x8, #0x100418000
  10004ade8  nop
  10004adec  ldr     x1, [x8, #0xb40]
  10004adf0  mov     x0, x19
  10004adf4  bl      _objc_msgSend                            ; [self timeSpentValue]
  10004adf8  mov     x29, x29
  10004adfc  bl      _objc_retainAutoreleasedReturnValue
  10004ae00  mov     x25, x0
  10004ae04  adrp    x8, #0x10041d000
  10004ae08  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004ae0c  mov     x1, x24
  10004ae10  mov     v0.16b, v8.16b
  10004ae14  bl      _objc_msgSend                            ; [UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004ae18  mov     x29, x29
  10004ae1c  bl      _objc_retainAutoreleasedReturnValue
  10004ae20  mov     x26, x0
  10004ae24  mov     x0, x25
  10004ae28  mov     x1, x20
  10004ae2c  mov     x2, x26
  10004ae30  bl      _objc_msgSend                            ; [[self timeSpentValue] setFont:[UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004ae34  mov     x0, x26
  10004ae38  bl      _objc_release
  10004ae3c  mov     x0, x25
  10004ae40  bl      _objc_release
  10004ae44  adrp    x8, #0x100416000
  10004ae48  nop
  10004ae4c  ldr     x26, [x8, #0xc40]
  10004ae50  mov     x0, x19
  10004ae54  mov     x1, x26
  10004ae58  bl      _objc_msgSend                            ; [self killsLabel]
  10004ae5c  mov     x29, x29
  10004ae60  bl      _objc_retainAutoreleasedReturnValue
  10004ae64  mov     x25, x0
  10004ae68  adrp    x8, #0x10041d000
  10004ae6c  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004ae70  adrp    x2, #0x1003ba000
  10004ae74  add     x2, x2, #0xf0                            ; @"Friday13"
  10004ae78  mov     x1, x21
  10004ae7c  mov     v0.16b, v8.16b
  10004ae80  bl      _objc_msgSend                            ; [UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004ae84  mov     x29, x29
  10004ae88  bl      _objc_retainAutoreleasedReturnValue
  10004ae8c  mov     x21, x0
  10004ae90  mov     x0, x25
  10004ae94  mov     x1, x20
  10004ae98  mov     x2, x21
  10004ae9c  bl      _objc_msgSend                            ; [[self killsLabel] setFont:[UIFont fontWithName:@"Friday13" size:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004aea0  mov     x0, x21
  10004aea4  bl      _objc_release
  10004aea8  mov     x0, x25
  10004aeac  bl      _objc_release
  10004aeb0  mov     x0, x19
  10004aeb4  mov     x1, x26
  10004aeb8  bl      _objc_msgSend                            ; [self killsLabel]
  10004aebc  mov     x29, x29
  10004aec0  bl      _objc_retainAutoreleasedReturnValue
  10004aec4  mov     x21, x0
  10004aec8  ldr     x0, [x27, #0xfa0]                        ; class UIColor
  10004aecc  mov     x1, x22
  10004aed0  bl      _objc_msgSend                            ; [UIColor whiteColor]
  10004aed4  mov     x29, x29
  10004aed8  bl      _objc_retainAutoreleasedReturnValue
  10004aedc  mov     x22, x0
  10004aee0  mov     x0, x21
  10004aee4  mov     x1, x23
  10004aee8  mov     x2, x22
  10004aeec  bl      _objc_msgSend                            ; [[self killsLabel] setTextColor:[UIColor whiteColor]]
  10004aef0  mov     x0, x22
  10004aef4  bl      _objc_release
  10004aef8  mov     x0, x21
  10004aefc  bl      _objc_release
  10004af00  adrp    x8, #0x100418000
  10004af04  nop
  10004af08  ldr     x1, [x8, #0xb48]
  10004af0c  mov     x0, x19
  10004af10  bl      _objc_msgSend                            ; [self killsValue]
  10004af14  mov     x29, x29
  10004af18  bl      _objc_retainAutoreleasedReturnValue
  10004af1c  mov     x21, x0
  10004af20  adrp    x8, #0x10041d000
  10004af24  ldr     x0, [x8, #0xf08]                         ; class UIFont
  10004af28  mov     x1, x24
  10004af2c  mov     v0.16b, v8.16b
  10004af30  bl      _objc_msgSend                            ; [UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]
  10004af34  mov     x29, x29
  10004af38  bl      _objc_retainAutoreleasedReturnValue
  10004af3c  mov     x22, x0
  10004af40  mov     x0, x21
  10004af44  mov     x1, x20
  10004af48  mov     x2, x22
  10004af4c  bl      _objc_msgSend                            ; [[self killsValue] setFont:[UIFont systemFontOfSize:([[ADGameParameters sharedParameters] isIphone] != 0 ? 15 : 20)]]
  10004af50  mov     x0, x22
  10004af54  bl      _objc_release
  10004af58  mov     x0, x21
  10004af5c  ldp     x29, x30, [sp, #0x60]
  10004af60  ldp     x20, x19, [sp, #0x50]
  10004af64  ldp     x22, x21, [sp, #0x40]
  10004af68  ldp     x24, x23, [sp, #0x30]
  10004af6c  ldp     x26, x25, [sp, #0x20]
  10004af70  ldp     x28, x27, [sp, #0x10]
  10004af74  ldp     d9, d8, [sp], #0x70
  10004af78  b       _objc_release
  10004af7c  mov     x19, x0
  10004af80  b       loc_10004b0a0
  10004af84  mov     x19, x0
  10004af88  b       loc_10004af98
  10004af8c  mov     x19, x0
  10004af90  mov     x0, x24
  10004af94  bl      _objc_release
loc_10004af98:
  10004af98  mov     x0, x22
  10004af9c  b       loc_10004b0a4
  10004afa0  mov     x19, x0
  10004afa4  b       loc_10004afd4
  10004afa8  b       loc_10004afc8
  10004afac  mov     x19, x0
  10004afb0  b       loc_10004afd4
  10004afb4  mov     x19, x0
  10004afb8  mov     x0, x26
  10004afbc  b       loc_10004afd0
  10004afc0  mov     x19, x0
  10004afc4  b       loc_10004afd4
loc_10004afc8:
  10004afc8  mov     x19, x0
  10004afcc  mov     x0, x25
loc_10004afd0:
  10004afd0  bl      _objc_release
loc_10004afd4:
  10004afd4  mov     x0, x24
  10004afd8  b       loc_10004b0a4
  10004afdc  mov     x19, x0
  10004afe0  b       loc_10004b064
  10004afe4  b       loc_10004b058
  10004afe8  mov     x19, x0
  10004afec  b       loc_10004b064
  10004aff0  b       loc_10004b038
  10004aff4  mov     x19, x0
  10004aff8  b       loc_10004b064
  10004affc  b       loc_10004b058
  10004b000  mov     x19, x0
  10004b004  b       loc_10004b064
  10004b008  b       loc_10004b058
  10004b00c  mov     x19, x0
  10004b010  b       loc_10004b064
  10004b014  b       loc_10004b038
  10004b018  mov     x19, x0
  10004b01c  b       loc_10004b064
  10004b020  b       loc_10004b058
  10004b024  mov     x19, x0
  10004b028  b       loc_10004b064
  10004b02c  b       loc_10004b058
  10004b030  mov     x19, x0
  10004b034  b       loc_10004b064
loc_10004b038:
  10004b038  mov     x19, x0
  10004b03c  mov     x0, x27
  10004b040  b       loc_10004b060
  10004b044  mov     x19, x0
  10004b048  b       loc_10004b064
  10004b04c  b       loc_10004b058
  10004b050  mov     x19, x0
  10004b054  b       loc_10004b064
loc_10004b058:
  10004b058  mov     x19, x0
  10004b05c  mov     x0, x26
loc_10004b060:
  10004b060  bl      _objc_release
loc_10004b064:
  10004b064  mov     x0, x25
  10004b068  b       loc_10004b0a4
  10004b06c  mov     x19, x0
  10004b070  b       loc_10004b064
  10004b074  mov     x19, x0
  10004b078  mov     x0, x21
  10004b07c  b       loc_10004b060
  10004b080  mov     x19, x0
  10004b084  b       loc_10004b0a0
  10004b088  b       loc_10004b094
  10004b08c  mov     x19, x0
  10004b090  b       loc_10004b0a0
loc_10004b094:
  10004b094  mov     x19, x0
  10004b098  mov     x0, x22
  10004b09c  bl      _objc_release
loc_10004b0a0:
  10004b0a0  mov     x0, x21
loc_10004b0a4:
  10004b0a4  bl      _objc_release
  10004b0a8  mov     x0, x19
  10004b0ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverTableWeaponCell setSelected:animated:]
; address 0x10004b0b0  size 60  kind objc
; ======================================================================
  10004b0b0  stp     x29, x30, [sp, #-0x10]!
  10004b0b4  mov     x29, sp
  10004b0b8  sub     sp, sp, #0x10
  10004b0bc  str     x0, [sp]
  10004b0c0  adrp    x8, #0x10041e000
  10004b0c4  ldr     x8, [x8, #0xd28]
  10004b0c8  str     x8, [sp, #8]
  10004b0cc  adrp    x8, #0x100416000
  10004b0d0  nop
  10004b0d4  ldr     x1, [x8, #0xc58]
  10004b0d8  mov     x0, sp
  10004b0dc  bl      _objc_msgSendSuper2                      ; [super setSelected:arg1 animated:arg2]
  10004b0e0  mov     sp, x29
  10004b0e4  ldp     x29, x30, [sp], #0x10
  10004b0e8  ret

; ======================================================================
; -[ADGameOverTableWeaponCell startKillsAnimationUpTo::]
; address 0x10004b0ec  size 192  kind objc
; ======================================================================
  10004b0ec  stp     x22, x21, [sp, #-0x30]!
  10004b0f0  stp     x20, x19, [sp, #0x10]
  10004b0f4  stp     x29, x30, [sp, #0x20]
  10004b0f8  add     x29, sp, #0x20
  10004b0fc  sub     sp, sp, #0x10
  10004b100  mov     x20, x2
  10004b104  adrp    x8, #0x100418000
  10004b108  nop
  10004b10c  ldr     x1, [x8, #0xb08]
  10004b110  bl      _objc_msgSend                            ; [self accuracyValue]
  10004b114  mov     x29, x29
  10004b118  bl      _objc_retainAutoreleasedReturnValue
  10004b11c  mov     x19, x0
  10004b120  adrp    x8, #0x10041d000
  10004b124  ldr     x0, [x8, #0xf78]                         ; class NSString
  10004b128  adrp    x8, #0x100416000
  10004b12c  nop
  10004b130  ldr     x1, [x8, #0xee8]
  10004b134  str     x20, [sp]
  10004b138  adrp    x2, #0x1003bd000
  10004b13c  add     x2, x2, #0x210                           ; @"%d%%"
  10004b140  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d%%", arg1]
  10004b144  mov     x29, x29
  10004b148  bl      _objc_retainAutoreleasedReturnValue
  10004b14c  mov     x20, x0
  10004b150  adrp    x8, #0x100416000
  10004b154  nop
  10004b158  ldr     x1, [x8, #0xb68]
  10004b15c  mov     x0, x19
  10004b160  mov     x2, x20
  10004b164  bl      _objc_msgSend                            ; [[self accuracyValue] setText:[NSString stringWithFormat:@"%d%%", arg1]]
  10004b168  mov     x0, x20
  10004b16c  bl      _objc_release
  10004b170  mov     x0, x19
  10004b174  sub     sp, x29, #0x20
  10004b178  ldp     x29, x30, [sp, #0x20]
  10004b17c  ldp     x20, x19, [sp, #0x10]
  10004b180  ldp     x22, x21, [sp], #0x30
  10004b184  b       _objc_release
  10004b188  mov     x21, x0
  10004b18c  b       loc_10004b19c
  10004b190  mov     x21, x0
  10004b194  mov     x0, x20
  10004b198  bl      _objc_release
loc_10004b19c:
  10004b19c  mov     x0, x19
  10004b1a0  bl      _objc_release
  10004b1a4  mov     x0, x21
  10004b1a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameOverTableWeaponCell accuracyLabel]
; address 0x10004b1ac  size 32  kind objc
; ======================================================================
  10004b1ac  stp     x29, x30, [sp, #-0x10]!
  10004b1b0  mov     x29, sp
  10004b1b4  adrp    x8, #0x10041f000
  10004b1b8  ldrsw   x8, [x8, #0x9e0]                         ; ivar offset ADGameOverTableWeaponCell._accuracyLabel (+0x68)
  10004b1bc  add     x0, x0, x8
  10004b1c0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b1c4  ldp     x29, x30, [sp], #0x10
  10004b1c8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setAccuracyLabel:]
; address 0x10004b1cc  size 20  kind objc
; ======================================================================
  10004b1cc  adrp    x8, #0x10041f000
  10004b1d0  ldrsw   x8, [x8, #0x9e0]                         ; ivar offset ADGameOverTableWeaponCell._accuracyLabel (+0x68)
  10004b1d4  add     x0, x0, x8
  10004b1d8  mov     x1, x2
  10004b1dc  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell criticalsLabel]
; address 0x10004b1e0  size 32  kind objc
; ======================================================================
  10004b1e0  stp     x29, x30, [sp, #-0x10]!
  10004b1e4  mov     x29, sp
  10004b1e8  adrp    x8, #0x10041f000
  10004b1ec  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset ADGameOverTableWeaponCell._criticalsLabel (+0x70)
  10004b1f0  add     x0, x0, x8
  10004b1f4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b1f8  ldp     x29, x30, [sp], #0x10
  10004b1fc  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setCriticalsLabel:]
; address 0x10004b200  size 20  kind objc
; ======================================================================
  10004b200  adrp    x8, #0x10041f000
  10004b204  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset ADGameOverTableWeaponCell._criticalsLabel (+0x70)
  10004b208  add     x0, x0, x8
  10004b20c  mov     x1, x2
  10004b210  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell shotsFiredLabel]
; address 0x10004b214  size 32  kind objc
; ======================================================================
  10004b214  stp     x29, x30, [sp, #-0x10]!
  10004b218  mov     x29, sp
  10004b21c  adrp    x8, #0x10041f000
  10004b220  ldrsw   x8, [x8, #0x9e8]                         ; ivar offset ADGameOverTableWeaponCell._shotsFiredLabel (+0x78)
  10004b224  add     x0, x0, x8
  10004b228  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b22c  ldp     x29, x30, [sp], #0x10
  10004b230  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setShotsFiredLabel:]
; address 0x10004b234  size 20  kind objc
; ======================================================================
  10004b234  adrp    x8, #0x10041f000
  10004b238  ldrsw   x8, [x8, #0x9e8]                         ; ivar offset ADGameOverTableWeaponCell._shotsFiredLabel (+0x78)
  10004b23c  add     x0, x0, x8
  10004b240  mov     x1, x2
  10004b244  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell killsLabel]
; address 0x10004b248  size 16  kind objc
; ======================================================================
  10004b248  adrp    x8, #0x10041f000
  10004b24c  ldrsw   x8, [x8, #0x9ec]                         ; ivar offset ADGameOverTableWeaponCell._killsLabel (+0x80)
  10004b250  ldr     x0, [x0, x8]                             ; x0 = self->_killsLabel
  10004b254  ret

; ======================================================================
; -[ADGameOverTableWeaponCell setKillsLabel:]
; address 0x10004b258  size 56  kind objc
; ======================================================================
  10004b258  stp     x20, x19, [sp, #-0x20]!
  10004b25c  stp     x29, x30, [sp, #0x10]
  10004b260  add     x29, sp, #0x10
  10004b264  mov     x19, x0
  10004b268  adrp    x8, #0x10041f000
  10004b26c  ldrsw   x20, [x8, #0x9ec]                        ; ivar offset ADGameOverTableWeaponCell._killsLabel (+0x80)
  10004b270  mov     x0, x2
  10004b274  bl      _objc_retain
  10004b278  ldr     x8, [x19, x20]                           ; x8 = self->_killsLabel
  10004b27c  str     x0, [x19, x20]                           ; self->_killsLabel = arg1
  10004b280  mov     x0, x8
  10004b284  ldp     x29, x30, [sp, #0x10]
  10004b288  ldp     x20, x19, [sp], #0x20
  10004b28c  b       _objc_release

; ======================================================================
; -[ADGameOverTableWeaponCell timeSpentLabel]
; address 0x10004b290  size 32  kind objc
; ======================================================================
  10004b290  stp     x29, x30, [sp, #-0x10]!
  10004b294  mov     x29, sp
  10004b298  adrp    x8, #0x10041f000
  10004b29c  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset ADGameOverTableWeaponCell._timeSpentLabel (+0x88)
  10004b2a0  add     x0, x0, x8
  10004b2a4  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b2a8  ldp     x29, x30, [sp], #0x10
  10004b2ac  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setTimeSpentLabel:]
; address 0x10004b2b0  size 20  kind objc
; ======================================================================
  10004b2b0  adrp    x8, #0x10041f000
  10004b2b4  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset ADGameOverTableWeaponCell._timeSpentLabel (+0x88)
  10004b2b8  add     x0, x0, x8
  10004b2bc  mov     x1, x2
  10004b2c0  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell timeSpentValue]
; address 0x10004b2c4  size 32  kind objc
; ======================================================================
  10004b2c4  stp     x29, x30, [sp, #-0x10]!
  10004b2c8  mov     x29, sp
  10004b2cc  adrp    x8, #0x10041f000
  10004b2d0  ldrsw   x8, [x8, #0x9f4]                         ; ivar offset ADGameOverTableWeaponCell._timeSpentValue (+0x90)
  10004b2d4  add     x0, x0, x8
  10004b2d8  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b2dc  ldp     x29, x30, [sp], #0x10
  10004b2e0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setTimeSpentValue:]
; address 0x10004b2e4  size 20  kind objc
; ======================================================================
  10004b2e4  adrp    x8, #0x10041f000
  10004b2e8  ldrsw   x8, [x8, #0x9f4]                         ; ivar offset ADGameOverTableWeaponCell._timeSpentValue (+0x90)
  10004b2ec  add     x0, x0, x8
  10004b2f0  mov     x1, x2
  10004b2f4  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell accuracyValue]
; address 0x10004b2f8  size 32  kind objc
; ======================================================================
  10004b2f8  stp     x29, x30, [sp, #-0x10]!
  10004b2fc  mov     x29, sp
  10004b300  adrp    x8, #0x10041f000
  10004b304  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset ADGameOverTableWeaponCell._accuracyValue (+0x98)
  10004b308  add     x0, x0, x8
  10004b30c  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b310  ldp     x29, x30, [sp], #0x10
  10004b314  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setAccuracyValue:]
; address 0x10004b318  size 20  kind objc
; ======================================================================
  10004b318  adrp    x8, #0x10041f000
  10004b31c  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset ADGameOverTableWeaponCell._accuracyValue (+0x98)
  10004b320  add     x0, x0, x8
  10004b324  mov     x1, x2
  10004b328  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell shotsFiredValue]
; address 0x10004b32c  size 32  kind objc
; ======================================================================
  10004b32c  stp     x29, x30, [sp, #-0x10]!
  10004b330  mov     x29, sp
  10004b334  adrp    x8, #0x10041f000
  10004b338  ldrsw   x8, [x8, #0x9fc]                         ; ivar offset ADGameOverTableWeaponCell._shotsFiredValue (+0xa0)
  10004b33c  add     x0, x0, x8
  10004b340  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b344  ldp     x29, x30, [sp], #0x10
  10004b348  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setShotsFiredValue:]
; address 0x10004b34c  size 20  kind objc
; ======================================================================
  10004b34c  adrp    x8, #0x10041f000
  10004b350  ldrsw   x8, [x8, #0x9fc]                         ; ivar offset ADGameOverTableWeaponCell._shotsFiredValue (+0xa0)
  10004b354  add     x0, x0, x8
  10004b358  mov     x1, x2
  10004b35c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell killsValue]
; address 0x10004b360  size 16  kind objc
; ======================================================================
  10004b360  adrp    x8, #0x10041f000
  10004b364  ldrsw   x8, [x8, #0xa00]                         ; ivar offset ADGameOverTableWeaponCell._killsValue (+0xa8)
  10004b368  ldr     x0, [x0, x8]                             ; x0 = self->_killsValue
  10004b36c  ret

; ======================================================================
; -[ADGameOverTableWeaponCell setKillsValue:]
; address 0x10004b370  size 56  kind objc
; ======================================================================
  10004b370  stp     x20, x19, [sp, #-0x20]!
  10004b374  stp     x29, x30, [sp, #0x10]
  10004b378  add     x29, sp, #0x10
  10004b37c  mov     x19, x0
  10004b380  adrp    x8, #0x10041f000
  10004b384  ldrsw   x20, [x8, #0xa00]                        ; ivar offset ADGameOverTableWeaponCell._killsValue (+0xa8)
  10004b388  mov     x0, x2
  10004b38c  bl      _objc_retain
  10004b390  ldr     x8, [x19, x20]                           ; x8 = self->_killsValue
  10004b394  str     x0, [x19, x20]                           ; self->_killsValue = arg1
  10004b398  mov     x0, x8
  10004b39c  ldp     x29, x30, [sp, #0x10]
  10004b3a0  ldp     x20, x19, [sp], #0x20
  10004b3a4  b       _objc_release

; ======================================================================
; -[ADGameOverTableWeaponCell criticalsFiredValue]
; address 0x10004b3a8  size 32  kind objc
; ======================================================================
  10004b3a8  stp     x29, x30, [sp, #-0x10]!
  10004b3ac  mov     x29, sp
  10004b3b0  adrp    x8, #0x10041f000
  10004b3b4  ldrsw   x8, [x8, #0xa04]                         ; ivar offset ADGameOverTableWeaponCell._criticalsFiredValue (+0xb0)
  10004b3b8  add     x0, x0, x8
  10004b3bc  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b3c0  ldp     x29, x30, [sp], #0x10
  10004b3c4  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setCriticalsFiredValue:]
; address 0x10004b3c8  size 20  kind objc
; ======================================================================
  10004b3c8  adrp    x8, #0x10041f000
  10004b3cc  ldrsw   x8, [x8, #0xa04]                         ; ivar offset ADGameOverTableWeaponCell._criticalsFiredValue (+0xb0)
  10004b3d0  add     x0, x0, x8
  10004b3d4  mov     x1, x2
  10004b3d8  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell nameLabel]
; address 0x10004b3dc  size 32  kind objc
; ======================================================================
  10004b3dc  stp     x29, x30, [sp, #-0x10]!
  10004b3e0  mov     x29, sp
  10004b3e4  adrp    x8, #0x10041f000
  10004b3e8  ldrsw   x8, [x8, #0xa08]                         ; ivar offset ADGameOverTableWeaponCell._nameLabel (+0xb8)
  10004b3ec  add     x0, x0, x8
  10004b3f0  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b3f4  ldp     x29, x30, [sp], #0x10
  10004b3f8  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setNameLabel:]
; address 0x10004b3fc  size 20  kind objc
; ======================================================================
  10004b3fc  adrp    x8, #0x10041f000
  10004b400  ldrsw   x8, [x8, #0xa08]                         ; ivar offset ADGameOverTableWeaponCell._nameLabel (+0xb8)
  10004b404  add     x0, x0, x8
  10004b408  mov     x1, x2
  10004b40c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell mainParentView]
; address 0x10004b410  size 32  kind objc
; ======================================================================
  10004b410  stp     x29, x30, [sp, #-0x10]!
  10004b414  mov     x29, sp
  10004b418  adrp    x8, #0x10041f000
  10004b41c  ldrsw   x8, [x8, #0xa0c]                         ; ivar offset ADGameOverTableWeaponCell._mainParentView (+0xc0)
  10004b420  add     x0, x0, x8
  10004b424  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  10004b428  ldp     x29, x30, [sp], #0x10
  10004b42c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADGameOverTableWeaponCell setMainParentView:]
; address 0x10004b430  size 20  kind objc
; ======================================================================
  10004b430  adrp    x8, #0x10041f000
  10004b434  ldrsw   x8, [x8, #0xa0c]                         ; ivar offset ADGameOverTableWeaponCell._mainParentView (+0xc0)
  10004b438  add     x0, x0, x8
  10004b43c  mov     x1, x2
  10004b440  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADGameOverTableWeaponCell .cxx_destruct]
; address 0x10004b444  size 224  kind objc
; ======================================================================
  10004b444  stp     x20, x19, [sp, #-0x20]!
  10004b448  stp     x29, x30, [sp, #0x10]
  10004b44c  add     x29, sp, #0x10
  10004b450  mov     x19, x0
  10004b454  adrp    x8, #0x10041f000
  10004b458  ldrsw   x8, [x8, #0xa0c]                         ; ivar offset ADGameOverTableWeaponCell._mainParentView (+0xc0)
  10004b45c  add     x0, x19, x8
  10004b460  bl      _objc_destroyWeak
  10004b464  adrp    x8, #0x10041f000
  10004b468  ldrsw   x8, [x8, #0xa08]                         ; ivar offset ADGameOverTableWeaponCell._nameLabel (+0xb8)
  10004b46c  add     x0, x19, x8
  10004b470  bl      _objc_destroyWeak
  10004b474  adrp    x8, #0x10041f000
  10004b478  ldrsw   x8, [x8, #0xa04]                         ; ivar offset ADGameOverTableWeaponCell._criticalsFiredValue (+0xb0)
  10004b47c  add     x0, x19, x8
  10004b480  bl      _objc_destroyWeak
  10004b484  adrp    x8, #0x10041f000
  10004b488  ldrsw   x8, [x8, #0xa00]                         ; ivar offset ADGameOverTableWeaponCell._killsValue (+0xa8)
  10004b48c  add     x0, x19, x8
  10004b490  mov     x1, #0
  10004b494  bl      _objc_storeStrong
  10004b498  adrp    x8, #0x10041f000
  10004b49c  ldrsw   x8, [x8, #0x9fc]                         ; ivar offset ADGameOverTableWeaponCell._shotsFiredValue (+0xa0)
  10004b4a0  add     x0, x19, x8
  10004b4a4  bl      _objc_destroyWeak
  10004b4a8  adrp    x8, #0x10041f000
  10004b4ac  ldrsw   x8, [x8, #0x9f8]                         ; ivar offset ADGameOverTableWeaponCell._accuracyValue (+0x98)
  10004b4b0  add     x0, x19, x8
  10004b4b4  bl      _objc_destroyWeak
  10004b4b8  adrp    x8, #0x10041f000
  10004b4bc  ldrsw   x8, [x8, #0x9f4]                         ; ivar offset ADGameOverTableWeaponCell._timeSpentValue (+0x90)
  10004b4c0  add     x0, x19, x8
  10004b4c4  bl      _objc_destroyWeak
  10004b4c8  adrp    x8, #0x10041f000
  10004b4cc  ldrsw   x8, [x8, #0x9f0]                         ; ivar offset ADGameOverTableWeaponCell._timeSpentLabel (+0x88)
  10004b4d0  add     x0, x19, x8
  10004b4d4  bl      _objc_destroyWeak
  10004b4d8  adrp    x8, #0x10041f000
  10004b4dc  ldrsw   x8, [x8, #0x9ec]                         ; ivar offset ADGameOverTableWeaponCell._killsLabel (+0x80)
  10004b4e0  add     x0, x19, x8
  10004b4e4  mov     x1, #0
  10004b4e8  bl      _objc_storeStrong
  10004b4ec  adrp    x8, #0x10041f000
  10004b4f0  ldrsw   x8, [x8, #0x9e8]                         ; ivar offset ADGameOverTableWeaponCell._shotsFiredLabel (+0x78)
  10004b4f4  add     x0, x19, x8
  10004b4f8  bl      _objc_destroyWeak
  10004b4fc  adrp    x8, #0x10041f000
  10004b500  ldrsw   x8, [x8, #0x9e4]                         ; ivar offset ADGameOverTableWeaponCell._criticalsLabel (+0x70)
  10004b504  add     x0, x19, x8
  10004b508  bl      _objc_destroyWeak
  10004b50c  adrp    x8, #0x10041f000
  10004b510  ldrsw   x8, [x8, #0x9e0]                         ; ivar offset ADGameOverTableWeaponCell._accuracyLabel (+0x68)
  10004b514  add     x0, x19, x8
  10004b518  ldp     x29, x30, [sp, #0x10]
  10004b51c  ldp     x20, x19, [sp], #0x20
  10004b520  b       _objc_destroyWeak
