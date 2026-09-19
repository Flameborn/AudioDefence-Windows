// unit ADTracker+ADArmoryTracker — 12 functions
//   0x10002dce0      40  +[ADTracker(ADArmoryTracker) initArmoryTracker]
//   0x10002dd08     176  +[ADTracker(ADArmoryTracker) initArmoryTracker]_block_invoke
//   0x10002ddb8     240  +[ADTracker(ADArmoryTracker) addWeapon:InSlot:]
//   0x10002dea8     224  +[ADTracker(ADArmoryTracker) getWeaponInSlot:]
//   0x10002df88     472  -[ADTracker(ADArmoryTracker) recordPurchaseForItemOrWeapon:Price:]
//   0x10002e160     464  -[ADTracker(ADArmoryTracker) recordTabChangeEventWithTabName:TimeSpentInTab:]
//   0x10002e330     436  -[ADTracker(ADArmoryTracker) recordPowerUpUpgrade:Level:]
//   0x10002e4e4     340  -[ADTracker(ADArmoryTracker) recordSocialNetworkTagEvent:]
//   0x10002e638     440  -[ADTracker(ADArmoryTracker) recordWeaponEquipWithName:WeaponSlot:]
//   0x10002e7f0     376  -[ADTracker(ADArmoryTracker) recordWeaponBrowse:BrowseForm:]
//   0x10002e968     472  -[ADTracker(ADArmoryTracker) recordWeaponUpgrade:Price:]
//   0x10002eb40     436  -[ADTracker(ADArmoryTracker) recordWeaponUpgradePreview:LevelPreviewed:]

; ======================================================================
; +[ADTracker(ADArmoryTracker) initArmoryTracker]
; address 0x10002dce0  size 40  kind objc
; ======================================================================
  10002dce0  adrp    x8, #0x10042d000
  10002dce4  add     x8, x8, #0x9b0                           ; &g_10042d9b0
  10002dce8  ldr     x9, [x8, #8]                             ; load g_10042d9b8
  10002dcec  cmn     x9, #1
  10002dcf0  b.ne    loc_10002dcf8                            ; if (g_10042d9b8 != -1)
  10002dcf4  ret
loc_10002dcf8:
  10002dcf8  add     x0, x8, #8                               ; &g_10042d9b8
  10002dcfc  adrp    x1, #0x1003b1000
  10002dd00  add     x1, x1, #0x410                           ; ^{+[ADTracker(ADArmoryTracker) initArmoryTracker]_block_invoke}
  10002dd04  b       _dispatch_once                           ; dispatch_once(&g_10042d9b8, ^{+[ADTracker(ADArmoryTracker) initArmoryTracker]_block_invoke})

; ======================================================================
; +[ADTracker(ADArmoryTracker) initArmoryTracker]_block_invoke
; address 0x10002dd08  size 176  kind block
; ======================================================================
  10002dd08  stp     x20, x19, [sp, #-0x20]!
  10002dd0c  stp     x29, x30, [sp, #0x10]
  10002dd10  add     x29, sp, #0x10
  10002dd14  adrp    x8, #0x10041e000
  10002dd18  ldr     x0, [x8, #8]                             ; class ADTracker
  10002dd1c  adrp    x8, #0x100416000
  10002dd20  nop
  10002dd24  ldr     x1, [x8, #0xac0]
  10002dd28  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002dd2c  mov     x29, x29
  10002dd30  bl      _objc_retainAutoreleasedReturnValue
  10002dd34  adrp    x19, #0x10042d000
  10002dd38  add     x19, x19, #0x9b0                         ; &g_10042d9b0
  10002dd3c  ldr     x8, [x19]                                ; load g_10042d9b0
  10002dd40  str     x0, [x19]                                ; store g_10042d9b0 = [ADTracker sharedInstance]
  10002dd44  mov     x0, x8
  10002dd48  bl      _objc_release
  10002dd4c  ldr     x20, [x19]                               ; load g_10042d9b0
  10002dd50  adrp    x8, #0x10041d000
  10002dd54  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10002dd58  adrp    x8, #0x100416000
  10002dd5c  nop
  10002dd60  ldr     x1, [x8, #0xac8]
  10002dd64  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10002dd68  adrp    x8, #0x100416000
  10002dd6c  nop
  10002dd70  ldr     x1, [x8, #0xab8]
  10002dd74  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10002dd78  mov     x19, x0
  10002dd7c  adrp    x8, #0x100418000
  10002dd80  nop
  10002dd84  ldr     x1, [x8, #8]
  10002dd88  mov     x0, x20
  10002dd8c  mov     x2, x19
  10002dd90  bl      _objc_msgSend                            ; [g_10042d9b0 setTrackerInventory:[[NSMutableDictionary alloc] init]]
  10002dd94  mov     x0, x19
  10002dd98  ldp     x29, x30, [sp, #0x10]
  10002dd9c  ldp     x20, x19, [sp], #0x20
  10002dda0  b       _objc_release
  10002dda4  mov     x20, x0
  10002dda8  mov     x0, x19
  10002ddac  bl      _objc_release
  10002ddb0  mov     x0, x20
  10002ddb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTracker(ADArmoryTracker) addWeapon:InSlot:]
; address 0x10002ddb8  size 240  kind objc
; ======================================================================
  10002ddb8  stp     x22, x21, [sp, #-0x30]!
  10002ddbc  stp     x20, x19, [sp, #0x10]
  10002ddc0  stp     x29, x30, [sp, #0x20]
  10002ddc4  add     x29, sp, #0x20
  10002ddc8  mov     x20, x3
  10002ddcc  mov     x0, x2
  10002ddd0  bl      _objc_retain
  10002ddd4  mov     x19, x0
  10002ddd8  mov     x0, x20
  10002dddc  bl      _objc_retain
  10002dde0  mov     x20, x0
  10002dde4  adrp    x8, #0x10041e000
  10002dde8  ldr     x0, [x8, #8]                             ; class ADTracker
  10002ddec  adrp    x8, #0x100416000
  10002ddf0  nop
  10002ddf4  ldr     x1, [x8, #0xac0]
  10002ddf8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002ddfc  mov     x29, x29
  10002de00  bl      _objc_retainAutoreleasedReturnValue
  10002de04  mov     x21, x0
  10002de08  adrp    x8, #0x100418000
  10002de0c  nop
  10002de10  ldr     x1, [x8, #0x10]
  10002de14  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] trackerInventory]
  10002de18  mov     x29, x29
  10002de1c  bl      _objc_retainAutoreleasedReturnValue
  10002de20  mov     x22, x0
  10002de24  adrp    x8, #0x100416000
  10002de28  nop
  10002de2c  ldr     x1, [x8, #0xdc8]
  10002de30  mov     x2, x19
  10002de34  mov     x3, x20
  10002de38  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] trackerInventory] setObject:arg1 forKey:arg2]
  10002de3c  mov     x0, x22
  10002de40  bl      _objc_release
  10002de44  mov     x0, x21
  10002de48  bl      _objc_release
  10002de4c  mov     x0, x20
  10002de50  bl      _objc_release
  10002de54  mov     x0, x19
  10002de58  ldp     x29, x30, [sp, #0x20]
  10002de5c  ldp     x20, x19, [sp, #0x10]
  10002de60  ldp     x22, x21, [sp], #0x30
  10002de64  b       _objc_release
  10002de68  mov     x22, x0
  10002de6c  b       loc_10002de90
  10002de70  mov     x22, x0
  10002de74  b       loc_10002de88
  10002de78  mov     x1, x22
  10002de7c  mov     x22, x0
  10002de80  mov     x0, x1
  10002de84  bl      _objc_release
loc_10002de88:
  10002de88  mov     x0, x21
  10002de8c  bl      _objc_release
loc_10002de90:
  10002de90  mov     x0, x20
  10002de94  bl      _objc_release
  10002de98  mov     x0, x19
  10002de9c  bl      _objc_release
  10002dea0  mov     x0, x22
  10002dea4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; +[ADTracker(ADArmoryTracker) getWeaponInSlot:]
; address 0x10002dea8  size 224  kind objc
; ======================================================================
  10002dea8  stp     x22, x21, [sp, #-0x30]!
  10002deac  stp     x20, x19, [sp, #0x10]
  10002deb0  stp     x29, x30, [sp, #0x20]
  10002deb4  add     x29, sp, #0x20
  10002deb8  mov     x0, x2
  10002debc  bl      _objc_retain
  10002dec0  mov     x19, x0
  10002dec4  adrp    x8, #0x10041e000
  10002dec8  ldr     x0, [x8, #8]                             ; class ADTracker
  10002decc  adrp    x8, #0x100416000
  10002ded0  nop
  10002ded4  ldr     x1, [x8, #0xac0]
  10002ded8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002dedc  mov     x29, x29
  10002dee0  bl      _objc_retainAutoreleasedReturnValue
  10002dee4  mov     x20, x0
  10002dee8  adrp    x8, #0x100418000
  10002deec  nop
  10002def0  ldr     x1, [x8, #0x10]
  10002def4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] trackerInventory]
  10002def8  mov     x29, x29
  10002defc  bl      _objc_retainAutoreleasedReturnValue
  10002df00  mov     x21, x0
  10002df04  adrp    x8, #0x100417000
  10002df08  nop
  10002df0c  ldr     x1, [x8, #0x40]
  10002df10  mov     x2, x19
  10002df14  bl      _objc_msgSend                            ; [[[ADTracker sharedInstance] trackerInventory] objectForKey:arg1]
  10002df18  mov     x29, x29
  10002df1c  bl      _objc_retainAutoreleasedReturnValue
  10002df20  mov     x22, x0
  10002df24  mov     x0, x21
  10002df28  bl      _objc_release
  10002df2c  mov     x0, x20
  10002df30  bl      _objc_release
  10002df34  mov     x0, x19
  10002df38  bl      _objc_release
  10002df3c  mov     x0, x22
  10002df40  ldp     x29, x30, [sp, #0x20]
  10002df44  ldp     x20, x19, [sp, #0x10]
  10002df48  ldp     x22, x21, [sp], #0x30
  10002df4c  b       _objc_autoreleaseReturnValue
  10002df50  mov     x21, x0
  10002df54  b       loc_10002df78
  10002df58  mov     x21, x0
  10002df5c  b       loc_10002df70
  10002df60  mov     x1, x21
  10002df64  mov     x21, x0
  10002df68  mov     x0, x1
  10002df6c  bl      _objc_release
loc_10002df70:
  10002df70  mov     x0, x20
  10002df74  bl      _objc_release
loc_10002df78:
  10002df78  mov     x0, x19
  10002df7c  bl      _objc_release
  10002df80  mov     x0, x21
  10002df84  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordPurchaseForItemOrWeapon:Price:]
; address 0x10002df88  size 472  kind objc
; ======================================================================
  10002df88  stp     d9, d8, [sp, #-0x50]!
  10002df8c  stp     x24, x23, [sp, #0x10]
  10002df90  stp     x22, x21, [sp, #0x20]
  10002df94  stp     x20, x19, [sp, #0x30]
  10002df98  stp     x29, x30, [sp, #0x40]
  10002df9c  add     x29, sp, #0x40
  10002dfa0  sub     sp, sp, #0x10
  10002dfa4  mov     v8.16b, v0.16b
  10002dfa8  mov     x0, x2
  10002dfac  bl      _objc_retain
  10002dfb0  mov     x19, x0
  10002dfb4  mov     w21, #1
  10002dfb8  fmov    d0, #1.00000000
  10002dfbc  fcmp    d8, d0
  10002dfc0  b.mi    loc_10002dfd0                            ; if (arg2 < 1)
  10002dfc4  frintx  d0, d8
  10002dfc8  frintp  d0, d8
  10002dfcc  fcvtzs  x21, d0
loc_10002dfd0:
  10002dfd0  adrp    x8, #0x10041d000
  10002dfd4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002dfd8  adrp    x8, #0x100416000
  10002dfdc  nop
  10002dfe0  ldr     x1, [x8, #0xac0]
  10002dfe4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002dfe8  mov     x29, x29
  10002dfec  bl      _objc_retainAutoreleasedReturnValue
  10002dff0  mov     x22, x0
  10002dff4  adrp    x8, #0x100417000
  10002dff8  nop
  10002dffc  ldr     x1, [x8, #0x2f8]
  10002e000  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e004  mov     x29, x29
  10002e008  bl      _objc_retainAutoreleasedReturnValue
  10002e00c  mov     x20, x0
  10002e010  mov     x0, x22
  10002e014  bl      _objc_release
  10002e018  adrp    x8, #0x10041d000
  10002e01c  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  10002e020  nop
  10002e024  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002e028  adrp    x8, #0x100417000
  10002e02c  nop
  10002e030  ldr     x1, [x8, #0xe8]
  10002e034  mov     x2, x21
  10002e038  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  10002e03c  mov     x29, x29
  10002e040  bl      _objc_retainAutoreleasedReturnValue
  10002e044  mov     x21, x0
  10002e048  adrp    x8, #0x100417000
  10002e04c  nop
  10002e050  ldr     x1, [x8, #0xd60]
  10002e054  adrp    x2, #0x1003bb000
  10002e058  add     x2, x2, #0xf10                           ; @"Transaction event"
  10002e05c  adrp    x3, #0x1003bb000
  10002e060  add     x3, x3, #0xf30                           ; @"Item purchased"
  10002e064  mov     x0, x22
  10002e068  mov     x4, x19
  10002e06c  mov     x5, x21
  10002e070  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Item purchased" label:arg1 value:[NSNumber numberWithInteger:x2]]
  10002e074  mov     x29, x29
  10002e078  bl      _objc_retainAutoreleasedReturnValue
  10002e07c  mov     x22, x0
  10002e080  adrp    x8, #0x100417000
  10002e084  nop
  10002e088  ldr     x1, [x8, #0x310]
  10002e08c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Item purchased" label:arg1 value:[NSNumber numberWithInteger:x2]] build]
  10002e090  mov     x29, x29
  10002e094  bl      _objc_retainAutoreleasedReturnValue
  10002e098  mov     x23, x0
  10002e09c  adrp    x8, #0x100417000
  10002e0a0  nop
  10002e0a4  ldr     x1, [x8, #0x318]
  10002e0a8  mov     x0, x20
  10002e0ac  mov     x2, x23
  10002e0b0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Item purchased" label:arg1 value:[NSNumber numberWithInteger:x2]] build]]
  10002e0b4  mov     x0, x23
  10002e0b8  bl      _objc_release
  10002e0bc  mov     x0, x22
  10002e0c0  bl      _objc_release
  10002e0c4  mov     x0, x21
  10002e0c8  bl      _objc_release
  10002e0cc  mov     x0, x20
  10002e0d0  bl      _objc_release
  10002e0d4  mov     x0, x19
  10002e0d8  sub     sp, x29, #0x40
  10002e0dc  ldp     x29, x30, [sp, #0x40]
  10002e0e0  ldp     x20, x19, [sp, #0x30]
  10002e0e4  ldp     x22, x21, [sp, #0x20]
  10002e0e8  ldp     x24, x23, [sp, #0x10]
  10002e0ec  ldp     d9, d8, [sp], #0x50
  10002e0f0  b       _objc_release
  10002e0f4  mov     x22, x0
  10002e0f8  b       loc_10002e150
  10002e0fc  mov     x1, x22
  10002e100  mov     x22, x0
  10002e104  mov     x0, x1
  10002e108  b       loc_10002e14c
  10002e10c  mov     x22, x0
  10002e110  b       loc_10002e148
  10002e114  mov     x22, x0
  10002e118  b       loc_10002e140
  10002e11c  str     x22, [sp, #8]
  10002e120  mov     x22, x0
  10002e124  b       loc_10002e138
  10002e128  str     x22, [sp, #8]
  10002e12c  mov     x22, x0
  10002e130  mov     x0, x23
  10002e134  bl      _objc_release
loc_10002e138:
  10002e138  ldr     x0, [sp, #8]
  10002e13c  bl      _objc_release
loc_10002e140:
  10002e140  mov     x0, x21
  10002e144  bl      _objc_release
loc_10002e148:
  10002e148  mov     x0, x20
loc_10002e14c:
  10002e14c  bl      _objc_release
loc_10002e150:
  10002e150  mov     x0, x19
  10002e154  bl      _objc_release
  10002e158  mov     x0, x22
  10002e15c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordTabChangeEventWithTabName:TimeSpentInTab:]
; address 0x10002e160  size 464  kind objc
; ======================================================================
  10002e160  stp     d9, d8, [sp, #-0x50]!
  10002e164  stp     x24, x23, [sp, #0x10]
  10002e168  stp     x22, x21, [sp, #0x20]
  10002e16c  stp     x20, x19, [sp, #0x30]
  10002e170  stp     x29, x30, [sp, #0x40]
  10002e174  add     x29, sp, #0x40
  10002e178  sub     sp, sp, #0x10
  10002e17c  mov     v8.16b, v0.16b
  10002e180  mov     x0, x2
  10002e184  bl      _objc_retain
  10002e188  mov     x19, x0
  10002e18c  adrp    x8, #0x10041d000
  10002e190  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002e194  adrp    x8, #0x100416000
  10002e198  nop
  10002e19c  ldr     x1, [x8, #0xac0]
  10002e1a0  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002e1a4  mov     x29, x29
  10002e1a8  bl      _objc_retainAutoreleasedReturnValue
  10002e1ac  mov     x21, x0
  10002e1b0  adrp    x8, #0x100417000
  10002e1b4  nop
  10002e1b8  ldr     x1, [x8, #0x2f8]
  10002e1bc  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e1c0  mov     x29, x29
  10002e1c4  bl      _objc_retainAutoreleasedReturnValue
  10002e1c8  mov     x20, x0
  10002e1cc  mov     x0, x21
  10002e1d0  bl      _objc_release
  10002e1d4  mov     w2, #1
  10002e1d8  fmov    d0, #1.00000000
  10002e1dc  fcmp    d8, d0
  10002e1e0  b.mi    loc_10002e1f0                            ; if (arg2 < 1)
  10002e1e4  frintx  d0, d8
  10002e1e8  frinta  d0, d8
  10002e1ec  fcvtzs  x2, d0
loc_10002e1f0:
  10002e1f0  adrp    x8, #0x10041d000
  10002e1f4  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  10002e1f8  nop
  10002e1fc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002e200  adrp    x8, #0x100417000
  10002e204  nop
  10002e208  ldr     x1, [x8, #0xe8]
  10002e20c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  10002e210  mov     x29, x29
  10002e214  bl      _objc_retainAutoreleasedReturnValue
  10002e218  mov     x21, x0
  10002e21c  adrp    x8, #0x100417000
  10002e220  nop
  10002e224  ldr     x1, [x8, #0xd60]
  10002e228  adrp    x2, #0x1003bb000
  10002e22c  add     x2, x2, #0xf50                           ; @"Tab change event"
  10002e230  adrp    x3, #0x1003bb000
  10002e234  add     x3, x3, #0xf70                           ; @"PLACEHOLDER FOR EVENTS"
  10002e238  mov     x0, x22
  10002e23c  mov     x4, x19
  10002e240  mov     x5, x21
  10002e244  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Tab change event" action:@"PLACEHOLDER FOR EVENTS" label:arg1 value:[NSNumber numberWithInteger:x2]]
  10002e248  mov     x29, x29
  10002e24c  bl      _objc_retainAutoreleasedReturnValue
  10002e250  mov     x22, x0
  10002e254  adrp    x8, #0x100417000
  10002e258  nop
  10002e25c  ldr     x1, [x8, #0x310]
  10002e260  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Tab change event" action:@"PLACEHOLDER FOR EVENTS" label:arg1 value:[NSNumber numberWithInteger:x2]] build]
  10002e264  mov     x29, x29
  10002e268  bl      _objc_retainAutoreleasedReturnValue
  10002e26c  mov     x23, x0
  10002e270  adrp    x8, #0x100417000
  10002e274  nop
  10002e278  ldr     x1, [x8, #0x318]
  10002e27c  mov     x0, x20
  10002e280  mov     x2, x23
  10002e284  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Tab change event" action:@"PLACEHOLDER FOR EVENTS" label:arg1 value:[NSNumber numberWithInteger:x2]] build]]
  10002e288  mov     x0, x23
  10002e28c  bl      _objc_release
  10002e290  mov     x0, x22
  10002e294  bl      _objc_release
  10002e298  mov     x0, x21
  10002e29c  bl      _objc_release
  10002e2a0  mov     x0, x20
  10002e2a4  bl      _objc_release
  10002e2a8  mov     x0, x19
  10002e2ac  sub     sp, x29, #0x40
  10002e2b0  ldp     x29, x30, [sp, #0x40]
  10002e2b4  ldp     x20, x19, [sp, #0x30]
  10002e2b8  ldp     x22, x21, [sp, #0x20]
  10002e2bc  ldp     x24, x23, [sp, #0x10]
  10002e2c0  ldp     d9, d8, [sp], #0x50
  10002e2c4  b       _objc_release
  10002e2c8  mov     x22, x0
  10002e2cc  b       loc_10002e320
  10002e2d0  mov     x22, x0
  10002e2d4  mov     x0, x21
  10002e2d8  b       loc_10002e31c
  10002e2dc  mov     x22, x0
  10002e2e0  b       loc_10002e318
  10002e2e4  mov     x22, x0
  10002e2e8  b       loc_10002e310
  10002e2ec  str     x22, [sp, #8]
  10002e2f0  mov     x22, x0
  10002e2f4  b       loc_10002e308
  10002e2f8  str     x22, [sp, #8]
  10002e2fc  mov     x22, x0
  10002e300  mov     x0, x23
  10002e304  bl      _objc_release
loc_10002e308:
  10002e308  ldr     x0, [sp, #8]
  10002e30c  bl      _objc_release
loc_10002e310:
  10002e310  mov     x0, x21
  10002e314  bl      _objc_release
loc_10002e318:
  10002e318  mov     x0, x20
loc_10002e31c:
  10002e31c  bl      _objc_release
loc_10002e320:
  10002e320  mov     x0, x19
  10002e324  bl      _objc_release
  10002e328  mov     x0, x22
  10002e32c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordPowerUpUpgrade:Level:]
; address 0x10002e330  size 436  kind objc
; ======================================================================
  10002e330  stp     x24, x23, [sp, #-0x40]!
  10002e334  stp     x22, x21, [sp, #0x10]
  10002e338  stp     x20, x19, [sp, #0x20]
  10002e33c  stp     x29, x30, [sp, #0x30]
  10002e340  add     x29, sp, #0x30
  10002e344  sub     sp, sp, #0x10
  10002e348  mov     x21, x3
  10002e34c  mov     x0, x2
  10002e350  bl      _objc_retain
  10002e354  mov     x19, x0
  10002e358  adrp    x8, #0x10041d000
  10002e35c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002e360  adrp    x8, #0x100416000
  10002e364  nop
  10002e368  ldr     x1, [x8, #0xac0]
  10002e36c  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002e370  mov     x29, x29
  10002e374  bl      _objc_retainAutoreleasedReturnValue
  10002e378  mov     x22, x0
  10002e37c  adrp    x8, #0x100417000
  10002e380  nop
  10002e384  ldr     x1, [x8, #0x2f8]
  10002e388  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e38c  mov     x29, x29
  10002e390  bl      _objc_retainAutoreleasedReturnValue
  10002e394  mov     x20, x0
  10002e398  mov     x0, x22
  10002e39c  bl      _objc_release
  10002e3a0  adrp    x8, #0x10041d000
  10002e3a4  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  10002e3a8  nop
  10002e3ac  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002e3b0  adrp    x8, #0x100417000
  10002e3b4  nop
  10002e3b8  ldr     x1, [x8, #0xe8]
  10002e3bc  mov     x2, x21
  10002e3c0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg2]
  10002e3c4  mov     x29, x29
  10002e3c8  bl      _objc_retainAutoreleasedReturnValue
  10002e3cc  mov     x21, x0
  10002e3d0  adrp    x8, #0x100417000
  10002e3d4  nop
  10002e3d8  ldr     x1, [x8, #0xd60]
  10002e3dc  adrp    x2, #0x1003bb000
  10002e3e0  add     x2, x2, #0xf10                           ; @"Transaction event"
  10002e3e4  adrp    x3, #0x1003bb000
  10002e3e8  add     x3, x3, #0xf90                           ; @"Item upgraded"
  10002e3ec  mov     x0, x22
  10002e3f0  mov     x4, x19
  10002e3f4  mov     x5, x21
  10002e3f8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Item upgraded" label:arg1 value:[NSNumber numberWithInteger:arg2]]
  10002e3fc  mov     x29, x29
  10002e400  bl      _objc_retainAutoreleasedReturnValue
  10002e404  mov     x22, x0
  10002e408  adrp    x8, #0x100417000
  10002e40c  nop
  10002e410  ldr     x1, [x8, #0x310]
  10002e414  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Item upgraded" label:arg1 value:[NSNumber numberWithInteger:arg2]] build]
  10002e418  mov     x29, x29
  10002e41c  bl      _objc_retainAutoreleasedReturnValue
  10002e420  mov     x23, x0
  10002e424  adrp    x8, #0x100417000
  10002e428  nop
  10002e42c  ldr     x1, [x8, #0x318]
  10002e430  mov     x0, x20
  10002e434  mov     x2, x23
  10002e438  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Item upgraded" label:arg1 value:[NSNumber numberWithInteger:arg2]] build]]
  10002e43c  mov     x0, x23
  10002e440  bl      _objc_release
  10002e444  mov     x0, x22
  10002e448  bl      _objc_release
  10002e44c  mov     x0, x21
  10002e450  bl      _objc_release
  10002e454  mov     x0, x20
  10002e458  bl      _objc_release
  10002e45c  mov     x0, x19
  10002e460  sub     sp, x29, #0x30
  10002e464  ldp     x29, x30, [sp, #0x30]
  10002e468  ldp     x20, x19, [sp, #0x20]
  10002e46c  ldp     x22, x21, [sp, #0x10]
  10002e470  ldp     x24, x23, [sp], #0x40
  10002e474  b       _objc_release
  10002e478  mov     x22, x0
  10002e47c  b       loc_10002e4d4
  10002e480  mov     x1, x22
  10002e484  mov     x22, x0
  10002e488  mov     x0, x1
  10002e48c  b       loc_10002e4d0
  10002e490  mov     x22, x0
  10002e494  b       loc_10002e4cc
  10002e498  mov     x22, x0
  10002e49c  b       loc_10002e4c4
  10002e4a0  str     x22, [sp, #8]
  10002e4a4  mov     x22, x0
  10002e4a8  b       loc_10002e4bc
  10002e4ac  str     x22, [sp, #8]
  10002e4b0  mov     x22, x0
  10002e4b4  mov     x0, x23
  10002e4b8  bl      _objc_release
loc_10002e4bc:
  10002e4bc  ldr     x0, [sp, #8]
  10002e4c0  bl      _objc_release
loc_10002e4c4:
  10002e4c4  mov     x0, x21
  10002e4c8  bl      _objc_release
loc_10002e4cc:
  10002e4cc  mov     x0, x20
loc_10002e4d0:
  10002e4d0  bl      _objc_release
loc_10002e4d4:
  10002e4d4  mov     x0, x19
  10002e4d8  bl      _objc_release
  10002e4dc  mov     x0, x22
  10002e4e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordSocialNetworkTagEvent:]
; address 0x10002e4e4  size 340  kind objc
; ======================================================================
  10002e4e4  stp     x22, x21, [sp, #-0x30]!
  10002e4e8  stp     x20, x19, [sp, #0x10]
  10002e4ec  stp     x29, x30, [sp, #0x20]
  10002e4f0  add     x29, sp, #0x20
  10002e4f4  mov     x0, x2
  10002e4f8  bl      _objc_retain
  10002e4fc  mov     x19, x0
  10002e500  adrp    x8, #0x10041d000
  10002e504  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002e508  adrp    x8, #0x100416000
  10002e50c  nop
  10002e510  ldr     x1, [x8, #0xac0]
  10002e514  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002e518  mov     x29, x29
  10002e51c  bl      _objc_retainAutoreleasedReturnValue
  10002e520  mov     x21, x0
  10002e524  adrp    x8, #0x100417000
  10002e528  nop
  10002e52c  ldr     x1, [x8, #0x2f8]
  10002e530  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e534  mov     x29, x29
  10002e538  bl      _objc_retainAutoreleasedReturnValue
  10002e53c  mov     x20, x0
  10002e540  mov     x0, x21
  10002e544  bl      _objc_release
  10002e548  adrp    x8, #0x10041d000
  10002e54c  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  10002e550  adrp    x8, #0x100417000
  10002e554  nop
  10002e558  ldr     x1, [x8, #0xd60]
  10002e55c  mov     x5, #0
  10002e560  adrp    x2, #0x1003bb000
  10002e564  add     x2, x2, #0xfb0                           ; @"Social network tag event"
  10002e568  adrp    x3, #0x1003bb000
  10002e56c  add     x3, x3, #0xfd0                           ; @"Tagged social network"
  10002e570  mov     x4, x19
  10002e574  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Social network tag event" action:@"Tagged social network" label:arg1 value:0]
  10002e578  mov     x29, x29
  10002e57c  bl      _objc_retainAutoreleasedReturnValue
  10002e580  mov     x21, x0
  10002e584  adrp    x8, #0x100417000
  10002e588  nop
  10002e58c  ldr     x1, [x8, #0x310]
  10002e590  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Social network tag event" action:@"Tagged social network" label:arg1 value:0] build]
  10002e594  mov     x29, x29
  10002e598  bl      _objc_retainAutoreleasedReturnValue
  10002e59c  mov     x22, x0
  10002e5a0  adrp    x8, #0x100417000
  10002e5a4  nop
  10002e5a8  ldr     x1, [x8, #0x318]
  10002e5ac  mov     x0, x20
  10002e5b0  mov     x2, x22
  10002e5b4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Social network tag event" action:@"Tagged social network" label:arg1 value:0] build]]
  10002e5b8  mov     x0, x22
  10002e5bc  bl      _objc_release
  10002e5c0  mov     x0, x21
  10002e5c4  bl      _objc_release
  10002e5c8  mov     x0, x20
  10002e5cc  bl      _objc_release
  10002e5d0  mov     x0, x19
  10002e5d4  ldp     x29, x30, [sp, #0x20]
  10002e5d8  ldp     x20, x19, [sp, #0x10]
  10002e5dc  ldp     x22, x21, [sp], #0x30
  10002e5e0  b       _objc_release
  10002e5e4  mov     x22, x0
  10002e5e8  b       loc_10002e628
  10002e5ec  mov     x22, x0
  10002e5f0  mov     x0, x21
  10002e5f4  b       loc_10002e624
  10002e5f8  mov     x22, x0
  10002e5fc  b       loc_10002e620
  10002e600  mov     x22, x0
  10002e604  b       loc_10002e618
  10002e608  mov     x1, x22
  10002e60c  mov     x22, x0
  10002e610  mov     x0, x1
  10002e614  bl      _objc_release
loc_10002e618:
  10002e618  mov     x0, x21
  10002e61c  bl      _objc_release
loc_10002e620:
  10002e620  mov     x0, x20
loc_10002e624:
  10002e624  bl      _objc_release
loc_10002e628:
  10002e628  mov     x0, x19
  10002e62c  bl      _objc_release
  10002e630  mov     x0, x22
  10002e634  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordWeaponEquipWithName:WeaponSlot:]
; address 0x10002e638  size 440  kind objc
; ======================================================================
  10002e638  stp     x24, x23, [sp, #-0x40]!
  10002e63c  stp     x22, x21, [sp, #0x10]
  10002e640  stp     x20, x19, [sp, #0x20]
  10002e644  stp     x29, x30, [sp, #0x30]
  10002e648  add     x29, sp, #0x30
  10002e64c  sub     sp, sp, #0x10
  10002e650  mov     x21, x3
  10002e654  mov     x0, x2
  10002e658  bl      _objc_retain
  10002e65c  mov     x19, x0
  10002e660  adrp    x8, #0x10041d000
  10002e664  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002e668  adrp    x8, #0x100416000
  10002e66c  nop
  10002e670  ldr     x1, [x8, #0xac0]
  10002e674  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002e678  mov     x29, x29
  10002e67c  bl      _objc_retainAutoreleasedReturnValue
  10002e680  mov     x22, x0
  10002e684  adrp    x8, #0x100417000
  10002e688  nop
  10002e68c  ldr     x1, [x8, #0x2f8]
  10002e690  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e694  mov     x29, x29
  10002e698  bl      _objc_retainAutoreleasedReturnValue
  10002e69c  mov     x20, x0
  10002e6a0  mov     x0, x22
  10002e6a4  bl      _objc_release
  10002e6a8  adrp    x8, #0x10041d000
  10002e6ac  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  10002e6b0  nop
  10002e6b4  ldr     x0, [x8, #0xf78]                         ; class NSString
  10002e6b8  adrp    x8, #0x100416000
  10002e6bc  nop
  10002e6c0  ldr     x1, [x8, #0xee8]
  10002e6c4  str     x21, [sp]
  10002e6c8  adrp    x2, #0x1003bc000
  10002e6cc  add     x2, x2, #0x10                            ; @"slot %d"
  10002e6d0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"slot %d", arg2]
  10002e6d4  mov     x29, x29
  10002e6d8  bl      _objc_retainAutoreleasedReturnValue
  10002e6dc  mov     x21, x0
  10002e6e0  adrp    x8, #0x100417000
  10002e6e4  nop
  10002e6e8  ldr     x1, [x8, #0xd60]
  10002e6ec  mov     x5, #0
  10002e6f0  adrp    x2, #0x1003bb000
  10002e6f4  add     x2, x2, #0xff0                           ; @"Weapon equipped in armory"
  10002e6f8  mov     x0, x22
  10002e6fc  mov     x3, x19
  10002e700  mov     x4, x21
  10002e704  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Weapon equipped in armory" action:arg1 label:[NSString stringWithFormat:@"slot %d", arg2] value:0]
  10002e708  mov     x29, x29
  10002e70c  bl      _objc_retainAutoreleasedReturnValue
  10002e710  mov     x22, x0
  10002e714  adrp    x8, #0x100417000
  10002e718  nop
  10002e71c  ldr     x1, [x8, #0x310]
  10002e720  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Weapon equipped in armory" action:arg1 label:[NSString stringWithFormat:@"slot %d", arg2] value:0] build]
  10002e724  mov     x29, x29
  10002e728  bl      _objc_retainAutoreleasedReturnValue
  10002e72c  mov     x23, x0
  10002e730  adrp    x8, #0x100417000
  10002e734  nop
  10002e738  ldr     x1, [x8, #0x318]
  10002e73c  mov     x0, x20
  10002e740  mov     x2, x23
  10002e744  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Weapon equipped in armory" action:arg1 label:[NSString stringWithFormat:@"slot %d", arg2] value:0] build]]
  10002e748  mov     x0, x23
  10002e74c  bl      _objc_release
  10002e750  mov     x0, x22
  10002e754  bl      _objc_release
  10002e758  mov     x0, x21
  10002e75c  bl      _objc_release
  10002e760  mov     x0, x20
  10002e764  bl      _objc_release
  10002e768  mov     x0, x19
  10002e76c  sub     sp, x29, #0x30
  10002e770  ldp     x29, x30, [sp, #0x30]
  10002e774  ldp     x20, x19, [sp, #0x20]
  10002e778  ldp     x22, x21, [sp, #0x10]
  10002e77c  ldp     x24, x23, [sp], #0x40
  10002e780  b       _objc_release
  10002e784  mov     x22, x0
  10002e788  b       loc_10002e7e0
  10002e78c  mov     x1, x22
  10002e790  mov     x22, x0
  10002e794  mov     x0, x1
  10002e798  b       loc_10002e7dc
  10002e79c  mov     x22, x0
  10002e7a0  b       loc_10002e7d8
  10002e7a4  mov     x22, x0
  10002e7a8  b       loc_10002e7d0
  10002e7ac  str     x22, [sp, #8]
  10002e7b0  mov     x22, x0
  10002e7b4  b       loc_10002e7c8
  10002e7b8  str     x22, [sp, #8]
  10002e7bc  mov     x22, x0
  10002e7c0  mov     x0, x23
  10002e7c4  bl      _objc_release
loc_10002e7c8:
  10002e7c8  ldr     x0, [sp, #8]
  10002e7cc  bl      _objc_release
loc_10002e7d0:
  10002e7d0  mov     x0, x21
  10002e7d4  bl      _objc_release
loc_10002e7d8:
  10002e7d8  mov     x0, x20
loc_10002e7dc:
  10002e7dc  bl      _objc_release
loc_10002e7e0:
  10002e7e0  mov     x0, x19
  10002e7e4  bl      _objc_release
  10002e7e8  mov     x0, x22
  10002e7ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordWeaponBrowse:BrowseForm:]
; address 0x10002e7f0  size 376  kind objc
; ======================================================================
  10002e7f0  stp     x24, x23, [sp, #-0x40]!
  10002e7f4  stp     x22, x21, [sp, #0x10]
  10002e7f8  stp     x20, x19, [sp, #0x20]
  10002e7fc  stp     x29, x30, [sp, #0x30]
  10002e800  add     x29, sp, #0x30
  10002e804  mov     x20, x3
  10002e808  mov     x0, x2
  10002e80c  bl      _objc_retain
  10002e810  mov     x19, x0
  10002e814  mov     x0, x20
  10002e818  bl      _objc_retain
  10002e81c  mov     x20, x0
  10002e820  adrp    x8, #0x10041d000
  10002e824  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002e828  adrp    x8, #0x100416000
  10002e82c  nop
  10002e830  ldr     x1, [x8, #0xac0]
  10002e834  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002e838  mov     x29, x29
  10002e83c  bl      _objc_retainAutoreleasedReturnValue
  10002e840  mov     x22, x0
  10002e844  adrp    x8, #0x100417000
  10002e848  nop
  10002e84c  ldr     x1, [x8, #0x2f8]
  10002e850  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e854  mov     x29, x29
  10002e858  bl      _objc_retainAutoreleasedReturnValue
  10002e85c  mov     x21, x0
  10002e860  mov     x0, x22
  10002e864  bl      _objc_release
  10002e868  adrp    x8, #0x10041d000
  10002e86c  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  10002e870  adrp    x8, #0x100417000
  10002e874  nop
  10002e878  ldr     x1, [x8, #0xd60]
  10002e87c  mov     x5, #0
  10002e880  adrp    x2, #0x1003bc000
  10002e884  add     x2, x2, #0x30                            ; @"Browsing weapons"
  10002e888  mov     x3, x19
  10002e88c  mov     x4, x20
  10002e890  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Browsing weapons" action:arg1 label:arg2 value:0]
  10002e894  mov     x29, x29
  10002e898  bl      _objc_retainAutoreleasedReturnValue
  10002e89c  mov     x22, x0
  10002e8a0  adrp    x8, #0x100417000
  10002e8a4  nop
  10002e8a8  ldr     x1, [x8, #0x310]
  10002e8ac  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Browsing weapons" action:arg1 label:arg2 value:0] build]
  10002e8b0  mov     x29, x29
  10002e8b4  bl      _objc_retainAutoreleasedReturnValue
  10002e8b8  mov     x23, x0
  10002e8bc  adrp    x8, #0x100417000
  10002e8c0  nop
  10002e8c4  ldr     x1, [x8, #0x318]
  10002e8c8  mov     x0, x21
  10002e8cc  mov     x2, x23
  10002e8d0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Browsing weapons" action:arg1 label:arg2 value:0] build]]
  10002e8d4  mov     x0, x23
  10002e8d8  bl      _objc_release
  10002e8dc  mov     x0, x22
  10002e8e0  bl      _objc_release
  10002e8e4  mov     x0, x21
  10002e8e8  bl      _objc_release
  10002e8ec  mov     x0, x20
  10002e8f0  bl      _objc_release
  10002e8f4  mov     x0, x19
  10002e8f8  ldp     x29, x30, [sp, #0x30]
  10002e8fc  ldp     x20, x19, [sp, #0x20]
  10002e900  ldp     x22, x21, [sp, #0x10]
  10002e904  ldp     x24, x23, [sp], #0x40
  10002e908  b       _objc_release
  10002e90c  mov     x23, x0
  10002e910  b       loc_10002e950
  10002e914  mov     x23, x0
  10002e918  mov     x0, x22
  10002e91c  b       loc_10002e94c
  10002e920  mov     x23, x0
  10002e924  b       loc_10002e948
  10002e928  mov     x23, x0
  10002e92c  b       loc_10002e940
  10002e930  mov     x1, x23
  10002e934  mov     x23, x0
  10002e938  mov     x0, x1
  10002e93c  bl      _objc_release
loc_10002e940:
  10002e940  mov     x0, x22
  10002e944  bl      _objc_release
loc_10002e948:
  10002e948  mov     x0, x21
loc_10002e94c:
  10002e94c  bl      _objc_release
loc_10002e950:
  10002e950  mov     x0, x20
  10002e954  bl      _objc_release
  10002e958  mov     x0, x19
  10002e95c  bl      _objc_release
  10002e960  mov     x0, x23
  10002e964  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordWeaponUpgrade:Price:]
; address 0x10002e968  size 472  kind objc
; ======================================================================
  10002e968  stp     d9, d8, [sp, #-0x50]!
  10002e96c  stp     x24, x23, [sp, #0x10]
  10002e970  stp     x22, x21, [sp, #0x20]
  10002e974  stp     x20, x19, [sp, #0x30]
  10002e978  stp     x29, x30, [sp, #0x40]
  10002e97c  add     x29, sp, #0x40
  10002e980  sub     sp, sp, #0x10
  10002e984  mov     v8.16b, v0.16b
  10002e988  mov     x0, x2
  10002e98c  bl      _objc_retain
  10002e990  mov     x19, x0
  10002e994  mov     w21, #1
  10002e998  fmov    d0, #1.00000000
  10002e99c  fcmp    d8, d0
  10002e9a0  b.mi    loc_10002e9b0                            ; if (arg2 < 1)
  10002e9a4  frintx  d0, d8
  10002e9a8  frinta  d0, d8
  10002e9ac  fcvtzs  x21, d0
loc_10002e9b0:
  10002e9b0  adrp    x8, #0x10041d000
  10002e9b4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002e9b8  adrp    x8, #0x100416000
  10002e9bc  nop
  10002e9c0  ldr     x1, [x8, #0xac0]
  10002e9c4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002e9c8  mov     x29, x29
  10002e9cc  bl      _objc_retainAutoreleasedReturnValue
  10002e9d0  mov     x22, x0
  10002e9d4  adrp    x8, #0x100417000
  10002e9d8  nop
  10002e9dc  ldr     x1, [x8, #0x2f8]
  10002e9e0  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002e9e4  mov     x29, x29
  10002e9e8  bl      _objc_retainAutoreleasedReturnValue
  10002e9ec  mov     x20, x0
  10002e9f0  mov     x0, x22
  10002e9f4  bl      _objc_release
  10002e9f8  adrp    x8, #0x10041d000
  10002e9fc  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  10002ea00  nop
  10002ea04  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002ea08  adrp    x8, #0x100417000
  10002ea0c  nop
  10002ea10  ldr     x1, [x8, #0xe8]
  10002ea14  mov     x2, x21
  10002ea18  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  10002ea1c  mov     x29, x29
  10002ea20  bl      _objc_retainAutoreleasedReturnValue
  10002ea24  mov     x21, x0
  10002ea28  adrp    x8, #0x100417000
  10002ea2c  nop
  10002ea30  ldr     x1, [x8, #0xd60]
  10002ea34  adrp    x2, #0x1003bb000
  10002ea38  add     x2, x2, #0xf10                           ; @"Transaction event"
  10002ea3c  adrp    x3, #0x1003bc000
  10002ea40  add     x3, x3, #0x50                            ; @"Weapon upgraded"
  10002ea44  mov     x0, x22
  10002ea48  mov     x4, x19
  10002ea4c  mov     x5, x21
  10002ea50  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Weapon upgraded" label:arg1 value:[NSNumber numberWithInteger:x2]]
  10002ea54  mov     x29, x29
  10002ea58  bl      _objc_retainAutoreleasedReturnValue
  10002ea5c  mov     x22, x0
  10002ea60  adrp    x8, #0x100417000
  10002ea64  nop
  10002ea68  ldr     x1, [x8, #0x310]
  10002ea6c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Weapon upgraded" label:arg1 value:[NSNumber numberWithInteger:x2]] build]
  10002ea70  mov     x29, x29
  10002ea74  bl      _objc_retainAutoreleasedReturnValue
  10002ea78  mov     x23, x0
  10002ea7c  adrp    x8, #0x100417000
  10002ea80  nop
  10002ea84  ldr     x1, [x8, #0x318]
  10002ea88  mov     x0, x20
  10002ea8c  mov     x2, x23
  10002ea90  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Weapon upgraded" label:arg1 value:[NSNumber numberWithInteger:x2]] build]]
  10002ea94  mov     x0, x23
  10002ea98  bl      _objc_release
  10002ea9c  mov     x0, x22
  10002eaa0  bl      _objc_release
  10002eaa4  mov     x0, x21
  10002eaa8  bl      _objc_release
  10002eaac  mov     x0, x20
  10002eab0  bl      _objc_release
  10002eab4  mov     x0, x19
  10002eab8  sub     sp, x29, #0x40
  10002eabc  ldp     x29, x30, [sp, #0x40]
  10002eac0  ldp     x20, x19, [sp, #0x30]
  10002eac4  ldp     x22, x21, [sp, #0x20]
  10002eac8  ldp     x24, x23, [sp, #0x10]
  10002eacc  ldp     d9, d8, [sp], #0x50
  10002ead0  b       _objc_release
  10002ead4  mov     x22, x0
  10002ead8  b       loc_10002eb30
  10002eadc  mov     x1, x22
  10002eae0  mov     x22, x0
  10002eae4  mov     x0, x1
  10002eae8  b       loc_10002eb2c
  10002eaec  mov     x22, x0
  10002eaf0  b       loc_10002eb28
  10002eaf4  mov     x22, x0
  10002eaf8  b       loc_10002eb20
  10002eafc  str     x22, [sp, #8]
  10002eb00  mov     x22, x0
  10002eb04  b       loc_10002eb18
  10002eb08  str     x22, [sp, #8]
  10002eb0c  mov     x22, x0
  10002eb10  mov     x0, x23
  10002eb14  bl      _objc_release
loc_10002eb18:
  10002eb18  ldr     x0, [sp, #8]
  10002eb1c  bl      _objc_release
loc_10002eb20:
  10002eb20  mov     x0, x21
  10002eb24  bl      _objc_release
loc_10002eb28:
  10002eb28  mov     x0, x20
loc_10002eb2c:
  10002eb2c  bl      _objc_release
loc_10002eb30:
  10002eb30  mov     x0, x19
  10002eb34  bl      _objc_release
  10002eb38  mov     x0, x22
  10002eb3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADArmoryTracker) recordWeaponUpgradePreview:LevelPreviewed:]
; address 0x10002eb40  size 436  kind objc
; ======================================================================
  10002eb40  stp     x24, x23, [sp, #-0x40]!
  10002eb44  stp     x22, x21, [sp, #0x10]
  10002eb48  stp     x20, x19, [sp, #0x20]
  10002eb4c  stp     x29, x30, [sp, #0x30]
  10002eb50  add     x29, sp, #0x30
  10002eb54  sub     sp, sp, #0x10
  10002eb58  mov     x21, x3
  10002eb5c  mov     x0, x2
  10002eb60  bl      _objc_retain
  10002eb64  mov     x19, x0
  10002eb68  adrp    x8, #0x10041d000
  10002eb6c  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002eb70  adrp    x8, #0x100416000
  10002eb74  nop
  10002eb78  ldr     x1, [x8, #0xac0]
  10002eb7c  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002eb80  mov     x29, x29
  10002eb84  bl      _objc_retainAutoreleasedReturnValue
  10002eb88  mov     x22, x0
  10002eb8c  adrp    x8, #0x100417000
  10002eb90  nop
  10002eb94  ldr     x1, [x8, #0x2f8]
  10002eb98  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002eb9c  mov     x29, x29
  10002eba0  bl      _objc_retainAutoreleasedReturnValue
  10002eba4  mov     x20, x0
  10002eba8  mov     x0, x22
  10002ebac  bl      _objc_release
  10002ebb0  adrp    x8, #0x10041d000
  10002ebb4  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  10002ebb8  nop
  10002ebbc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002ebc0  adrp    x8, #0x100417000
  10002ebc4  nop
  10002ebc8  ldr     x1, [x8, #0xe8]
  10002ebcc  mov     x2, x21
  10002ebd0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg2]
  10002ebd4  mov     x29, x29
  10002ebd8  bl      _objc_retainAutoreleasedReturnValue
  10002ebdc  mov     x21, x0
  10002ebe0  adrp    x8, #0x100417000
  10002ebe4  nop
  10002ebe8  ldr     x1, [x8, #0xd60]
  10002ebec  adrp    x2, #0x1003bb000
  10002ebf0  add     x2, x2, #0xf10                           ; @"Transaction event"
  10002ebf4  adrp    x3, #0x1003bc000
  10002ebf8  add     x3, x3, #0x70                            ; @"Weapon upgrade preview"
  10002ebfc  mov     x0, x22
  10002ec00  mov     x4, x19
  10002ec04  mov     x5, x21
  10002ec08  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Weapon upgrade preview" label:arg1 value:[NSNumber numberWithInteger:arg2]]
  10002ec0c  mov     x29, x29
  10002ec10  bl      _objc_retainAutoreleasedReturnValue
  10002ec14  mov     x22, x0
  10002ec18  adrp    x8, #0x100417000
  10002ec1c  nop
  10002ec20  ldr     x1, [x8, #0x310]
  10002ec24  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Weapon upgrade preview" label:arg1 value:[NSNumber numberWithInteger:arg2]] build]
  10002ec28  mov     x29, x29
  10002ec2c  bl      _objc_retainAutoreleasedReturnValue
  10002ec30  mov     x23, x0
  10002ec34  adrp    x8, #0x100417000
  10002ec38  nop
  10002ec3c  ldr     x1, [x8, #0x318]
  10002ec40  mov     x0, x20
  10002ec44  mov     x2, x23
  10002ec48  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Transaction event" action:@"Weapon upgrade preview" label:arg1 value:[NSNumber numberWithInteger:arg2]] build]]
  10002ec4c  mov     x0, x23
  10002ec50  bl      _objc_release
  10002ec54  mov     x0, x22
  10002ec58  bl      _objc_release
  10002ec5c  mov     x0, x21
  10002ec60  bl      _objc_release
  10002ec64  mov     x0, x20
  10002ec68  bl      _objc_release
  10002ec6c  mov     x0, x19
  10002ec70  sub     sp, x29, #0x30
  10002ec74  ldp     x29, x30, [sp, #0x30]
  10002ec78  ldp     x20, x19, [sp, #0x20]
  10002ec7c  ldp     x22, x21, [sp, #0x10]
  10002ec80  ldp     x24, x23, [sp], #0x40
  10002ec84  b       _objc_release
  10002ec88  mov     x22, x0
  10002ec8c  b       loc_10002ece4
  10002ec90  mov     x1, x22
  10002ec94  mov     x22, x0
  10002ec98  mov     x0, x1
  10002ec9c  b       loc_10002ece0
  10002eca0  mov     x22, x0
  10002eca4  b       loc_10002ecdc
  10002eca8  mov     x22, x0
  10002ecac  b       loc_10002ecd4
  10002ecb0  str     x22, [sp, #8]
  10002ecb4  mov     x22, x0
  10002ecb8  b       loc_10002eccc
  10002ecbc  str     x22, [sp, #8]
  10002ecc0  mov     x22, x0
  10002ecc4  mov     x0, x23
  10002ecc8  bl      _objc_release
loc_10002eccc:
  10002eccc  ldr     x0, [sp, #8]
  10002ecd0  bl      _objc_release
loc_10002ecd4:
  10002ecd4  mov     x0, x21
  10002ecd8  bl      _objc_release
loc_10002ecdc:
  10002ecdc  mov     x0, x20
loc_10002ece0:
  10002ece0  bl      _objc_release
loc_10002ece4:
  10002ece4  mov     x0, x19
  10002ece8  bl      _objc_release
  10002ecec  mov     x0, x22
  10002ecf0  bl      __Unwind_Resume                          ; Unwind_Resume()
