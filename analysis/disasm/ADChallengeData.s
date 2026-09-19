// unit ADChallengeData — 22 functions
//   0x10001dd28     152  +[ADChallengeData sharedChallengeData]
//   0x10001ddc0     128  -[ADChallengeData init]
//   0x10001de40     400  -[ADChallengeData createOrRestoreChallengeData]
//   0x10001dfd0     340  -[ADChallengeData dictionaryForChallengeWithName:]
//   0x10001e124     184  -[ADChallengeData hasCompletedChallengeWithName:]
//   0x10001e1dc     184  -[ADChallengeData hasAccuracyStarForChallengeWithName:]
//   0x10001e294     184  -[ADChallengeData hasTimeLimitStarForChallengeWithName:]
//   0x10001e34c     680  -[ADChallengeData playerDidCompleteChallengeWithName:accuracyUnlocked:timeLimitUnlocked:]
//   0x10001e5f4     544  -[ADChallengeData computeTotalChallengesWon]
//   0x10001e814     204  -[ADChallengeData saveChallengeData]
//   0x10001e8e0    1012  -[ADChallengeData totalStarsUnlockedForWorld:]
//   0x10001ecd4     552  -[ADChallengeData totalStarsUnlocked]
//   0x10001eefc     408  -[ADChallengeData starsRequirementForWorld:]
//   0x10001f094     412  -[ADChallengeData numberOfChallengesForWorld:]
//   0x10001f230     764  -[ADChallengeData hasChallengeAfter:inWorld:]
//   0x10001f52c     828  -[ADChallengeData challengeAfter:inWorld:]
//   0x10001f868    1068  -[ADChallengeData hasWeaponForChallengeWithName:]
//   0x10001fc94     808  -[ADChallengeData needsWeaponToCompleteChallengeWithName:]
//   0x10001ffbc     708  -[ADChallengeData hasChallengeRequirementsForChallengeWithName:]
//   0x100020280      16  -[ADChallengeData challengeData]
//   0x100020290      12  -[ADChallengeData setChallengeData:]
//   0x10002029c      20  -[ADChallengeData .cxx_destruct]

; ======================================================================
; +[ADChallengeData sharedChallengeData]
; address 0x10001dd28  size 152  kind objc
; ======================================================================
  10001dd28  stp     x20, x19, [sp, #-0x20]!
  10001dd2c  stp     x29, x30, [sp, #0x10]
  10001dd30  add     x29, sp, #0x10
  10001dd34  bl      _objc_retain
  10001dd38  mov     x19, x0
  10001dd3c  bl      _objc_sync_enter                         ; objc_sync_enter(ADChallengeData)
  10001dd40  adrp    x20, #0x10042d000
  10001dd44  ldr     x8, [x20, #0x980]                        ; load g_10042d980
  10001dd48  cbnz    x8, loc_10001dd84                        ; if (g_10042d980 != 0)
  10001dd4c  adrp    x8, #0x10041d000
  10001dd50  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  10001dd54  adrp    x8, #0x100416000
  10001dd58  nop
  10001dd5c  ldr     x1, [x8, #0xac8]
  10001dd60  bl      _objc_msgSend                            ; [ADChallengeData alloc]
  10001dd64  adrp    x8, #0x100416000
  10001dd68  nop
  10001dd6c  ldr     x1, [x8, #0xab8]
  10001dd70  bl      _objc_msgSend                            ; [[ADChallengeData alloc] init]
  10001dd74  ldr     x8, [x20, #0x980]                        ; load g_10042d980
  10001dd78  str     x0, [x20, #0x980]                        ; store g_10042d980 = [[ADChallengeData alloc] init]
  10001dd7c  mov     x0, x8
  10001dd80  bl      _objc_release
loc_10001dd84:
  10001dd84  mov     x0, x19
  10001dd88  bl      _objc_sync_exit                          ; objc_sync_exit(ADChallengeData)
  10001dd8c  mov     x0, x19
  10001dd90  bl      _objc_release
  10001dd94  ldr     x0, [x20, #0x980]                        ; load g_10042d980
  10001dd98  ldp     x29, x30, [sp, #0x10]
  10001dd9c  ldp     x20, x19, [sp], #0x20
  10001dda0  b       _objc_retainAutoreleaseReturnValue
  10001dda4  mov     x20, x0
  10001dda8  mov     x0, x19
  10001ddac  bl      _objc_sync_exit                          ; objc_sync_exit()
  10001ddb0  mov     x0, x19
  10001ddb4  bl      _objc_release
  10001ddb8  mov     x0, x20
  10001ddbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData init]
; address 0x10001ddc0  size 128  kind objc
; ======================================================================
  10001ddc0  stp     x20, x19, [sp, #-0x20]!
  10001ddc4  stp     x29, x30, [sp, #0x10]
  10001ddc8  add     x29, sp, #0x10
  10001ddcc  sub     sp, sp, #0x10
  10001ddd0  str     x0, [sp]
  10001ddd4  adrp    x8, #0x10041e000
  10001ddd8  ldr     x8, [x8, #0xc30]
  10001dddc  str     x8, [sp, #8]
  10001dde0  adrp    x8, #0x100416000
  10001dde4  nop
  10001dde8  ldr     x1, [x8, #0xab8]
  10001ddec  mov     x19, #0
  10001ddf0  mov     x0, sp
  10001ddf4  bl      _objc_msgSendSuper2                      ; [super init]
  10001ddf8  mov     x20, x0
  10001ddfc  cbz     x20, loc_10001de18                       ; if (self == 0)
  10001de00  mov     x19, x20
  10001de04  adrp    x8, #0x100417000
  10001de08  nop
  10001de0c  ldr     x1, [x8, #0x9d0]
  10001de10  mov     x0, x20
  10001de14  bl      _objc_msgSend                            ; [self createOrRestoreChallengeData]
loc_10001de18:
  10001de18  mov     x0, x20
  10001de1c  sub     sp, x29, #0x10
  10001de20  ldp     x29, x30, [sp, #0x10]
  10001de24  ldp     x20, x19, [sp], #0x20
  10001de28  ret
  10001de2c  mov     x20, x0
  10001de30  mov     x0, x19
  10001de34  bl      _objc_release
  10001de38  mov     x0, x20
  10001de3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData createOrRestoreChallengeData]
; address 0x10001de40  size 400  kind objc
; ======================================================================
  10001de40  stp     x22, x21, [sp, #-0x30]!
  10001de44  stp     x20, x19, [sp, #0x10]
  10001de48  stp     x29, x30, [sp, #0x20]
  10001de4c  add     x29, sp, #0x20
  10001de50  mov     x20, x0
  10001de54  adrp    x8, #0x10041d000
  10001de58  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10001de5c  adrp    x8, #0x100416000
  10001de60  nop
  10001de64  ldr     x1, [x8, #0xd98]
  10001de68  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10001de6c  mov     x29, x29
  10001de70  bl      _objc_retainAutoreleasedReturnValue
  10001de74  mov     x19, x0
  10001de78  adrp    x8, #0x100416000
  10001de7c  nop
  10001de80  ldr     x21, [x8, #0xda0]
  10001de84  adrp    x2, #0x1003ba000
  10001de88  add     x2, x2, #0xdb0                           ; @"challengeData"
  10001de8c  mov     x1, x21
  10001de90  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"challengeData"]
  10001de94  mov     x29, x29
  10001de98  bl      _objc_retainAutoreleasedReturnValue
  10001de9c  mov     x22, x0
  10001dea0  bl      _objc_release
  10001dea4  cbz     x22, loc_10001df20                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"challengeData"] == 0)
  10001dea8  adrp    x2, #0x1003ba000
  10001deac  add     x2, x2, #0xdb0                           ; @"challengeData"
  10001deb0  mov     x0, x19
  10001deb4  mov     x1, x21
  10001deb8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"challengeData"]
  10001debc  mov     x29, x29
  10001dec0  bl      _objc_retainAutoreleasedReturnValue
  10001dec4  mov     x21, x0
  10001dec8  adrp    x8, #0x10041d000
  10001decc  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10001ded0  adrp    x8, #0x100416000
  10001ded4  nop
  10001ded8  ldr     x1, [x8, #0xac8]
  10001dedc  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10001dee0  adrp    x8, #0x100417000
  10001dee4  nop
  10001dee8  ldr     x1, [x8, #0x9e0]
  10001deec  mov     w3, #1
  10001def0  mov     x2, x21
  10001def4  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:@"challengeData"] copyItems:1]
  10001def8  mov     x22, x0
  10001defc  adrp    x8, #0x100417000
  10001df00  nop
  10001df04  ldr     x1, [x8, #0x9d8]
  10001df08  mov     x0, x20
  10001df0c  mov     x2, x22
  10001df10  bl      _objc_msgSend                            ; [self setChallengeData:[[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] valueForKey:@"challengeData"] copyItems:1]]
  10001df14  mov     x0, x22
  10001df18  bl      _objc_release
  10001df1c  b       loc_10001df64
loc_10001df20:
  10001df20  adrp    x8, #0x10041d000
  10001df24  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10001df28  adrp    x8, #0x100416000
  10001df2c  nop
  10001df30  ldr     x1, [x8, #0xac8]
  10001df34  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10001df38  adrp    x8, #0x100416000
  10001df3c  nop
  10001df40  ldr     x1, [x8, #0xab8]
  10001df44  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10001df48  mov     x21, x0
  10001df4c  adrp    x8, #0x100417000
  10001df50  nop
  10001df54  ldr     x1, [x8, #0x9d8]
  10001df58  mov     x0, x20
  10001df5c  mov     x2, x21
  10001df60  bl      _objc_msgSend                            ; [self setChallengeData:[[NSMutableDictionary alloc] init]]
loc_10001df64:
  10001df64  mov     x0, x21
  10001df68  bl      _objc_release
  10001df6c  adrp    x8, #0x100417000
  10001df70  nop
  10001df74  ldr     x1, [x8, #0x9e8]
  10001df78  mov     x0, x20
  10001df7c  bl      _objc_msgSend                            ; [self saveChallengeData]
  10001df80  mov     x0, x19
  10001df84  ldp     x29, x30, [sp, #0x20]
  10001df88  ldp     x20, x19, [sp, #0x10]
  10001df8c  ldp     x22, x21, [sp], #0x30
  10001df90  b       _objc_release
  10001df94  mov     x20, x0
  10001df98  b       loc_10001dfc0
  10001df9c  mov     x20, x0
  10001dfa0  b       loc_10001dfb8
  10001dfa4  mov     x20, x0
  10001dfa8  mov     x0, x22
  10001dfac  bl      _objc_release
  10001dfb0  b       loc_10001dfb8
  10001dfb4  mov     x20, x0
loc_10001dfb8:
  10001dfb8  mov     x0, x21
  10001dfbc  bl      _objc_release
loc_10001dfc0:
  10001dfc0  mov     x0, x19
  10001dfc4  bl      _objc_release
  10001dfc8  mov     x0, x20
  10001dfcc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData dictionaryForChallengeWithName:]
; address 0x10001dfd0  size 340  kind objc
; ======================================================================
  10001dfd0  stp     x24, x23, [sp, #-0x40]!
  10001dfd4  stp     x22, x21, [sp, #0x10]
  10001dfd8  stp     x20, x19, [sp, #0x20]
  10001dfdc  stp     x29, x30, [sp, #0x30]
  10001dfe0  add     x29, sp, #0x30
  10001dfe4  mov     x20, x0
  10001dfe8  mov     x0, x2
  10001dfec  bl      _objc_retain
  10001dff0  mov     x19, x0
  10001dff4  adrp    x8, #0x100417000
  10001dff8  nop
  10001dffc  ldr     x21, [x8, #0x9f0]
  10001e000  mov     x0, x20
  10001e004  mov     x1, x21
  10001e008  bl      _objc_msgSend                            ; [self challengeData]
  10001e00c  mov     x29, x29
  10001e010  bl      _objc_retainAutoreleasedReturnValue
  10001e014  mov     x23, x0
  10001e018  adrp    x8, #0x100417000
  10001e01c  nop
  10001e020  ldr     x22, [x8, #0x40]
  10001e024  mov     x1, x22
  10001e028  mov     x2, x19
  10001e02c  bl      _objc_msgSend                            ; [[self challengeData] objectForKey:arg1]
  10001e030  mov     x29, x29
  10001e034  bl      _objc_retainAutoreleasedReturnValue
  10001e038  mov     x24, x0
  10001e03c  bl      _objc_release
  10001e040  mov     x0, x23
  10001e044  bl      _objc_release
  10001e048  cbz     x24, loc_10001e0bc                       ; if ([[self challengeData] objectForKey:arg1] == 0)
  10001e04c  adrp    x8, #0x10041d000
  10001e050  ldr     x23, [x8, #0xf90]                        ; class NSMutableDictionary
  10001e054  mov     x0, x20
  10001e058  mov     x1, x21
  10001e05c  bl      _objc_msgSend                            ; [self challengeData]
  10001e060  mov     x29, x29
  10001e064  bl      _objc_retainAutoreleasedReturnValue
  10001e068  mov     x20, x0
  10001e06c  mov     x1, x22
  10001e070  mov     x2, x19
  10001e074  bl      _objc_msgSend                            ; [[self challengeData] objectForKey:arg1]
  10001e078  mov     x29, x29
  10001e07c  bl      _objc_retainAutoreleasedReturnValue
  10001e080  mov     x22, x0
  10001e084  adrp    x8, #0x100417000
  10001e088  nop
  10001e08c  ldr     x1, [x8, #0x9f8]
  10001e090  mov     x0, x23
  10001e094  mov     x2, x22
  10001e098  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithDictionary:[[self challengeData] objectForKey:arg1]]
  10001e09c  mov     x29, x29
  10001e0a0  bl      _objc_retainAutoreleasedReturnValue
  10001e0a4  mov     x21, x0
  10001e0a8  mov     x0, x22
  10001e0ac  bl      _objc_release
  10001e0b0  mov     x0, x20
  10001e0b4  bl      _objc_release
  10001e0b8  b       loc_10001e0c0
loc_10001e0bc:
  10001e0bc  mov     x21, #0
loc_10001e0c0:
  10001e0c0  mov     x0, x19
  10001e0c4  bl      _objc_release
  10001e0c8  mov     x0, x21
  10001e0cc  ldp     x29, x30, [sp, #0x30]
  10001e0d0  ldp     x20, x19, [sp, #0x20]
  10001e0d4  ldp     x22, x21, [sp, #0x10]
  10001e0d8  ldp     x24, x23, [sp], #0x40
  10001e0dc  b       _objc_autoreleaseReturnValue
  10001e0e0  mov     x21, x0
  10001e0e4  b       loc_10001e114
  10001e0e8  mov     x21, x0
  10001e0ec  mov     x0, x23
  10001e0f0  bl      _objc_release
  10001e0f4  b       loc_10001e114
  10001e0f8  mov     x21, x0
  10001e0fc  b       loc_10001e10c
  10001e100  mov     x21, x0
  10001e104  mov     x0, x22
  10001e108  bl      _objc_release
loc_10001e10c:
  10001e10c  mov     x0, x20
  10001e110  bl      _objc_release
loc_10001e114:
  10001e114  mov     x0, x19
  10001e118  bl      _objc_release
  10001e11c  mov     x0, x21
  10001e120  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData hasCompletedChallengeWithName:]
; address 0x10001e124  size 184  kind objc
; ======================================================================
  10001e124  stp     x22, x21, [sp, #-0x30]!
  10001e128  stp     x20, x19, [sp, #0x10]
  10001e12c  stp     x29, x30, [sp, #0x20]
  10001e130  add     x29, sp, #0x20
  10001e134  adrp    x8, #0x100417000
  10001e138  nop
  10001e13c  ldr     x1, [x8, #0xa00]
  10001e140  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:arg1]
  10001e144  mov     x29, x29
  10001e148  bl      _objc_retainAutoreleasedReturnValue
  10001e14c  mov     x19, x0
  10001e150  adrp    x8, #0x100417000
  10001e154  nop
  10001e158  ldr     x1, [x8, #0x40]
  10001e15c  adrp    x2, #0x1003ba000
  10001e160  add     x2, x2, #0xdd0                           ; @"completed"
  10001e164  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:arg1] objectForKey:@"completed"]
  10001e168  mov     x29, x29
  10001e16c  bl      _objc_retainAutoreleasedReturnValue
  10001e170  mov     x20, x0
  10001e174  adrp    x8, #0x100417000
  10001e178  nop
  10001e17c  ldr     x1, [x8, #0xd8]
  10001e180  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:arg1] objectForKey:@"completed"] boolValue]
  10001e184  mov     x21, x0
  10001e188  mov     x0, x20
  10001e18c  bl      _objc_release
  10001e190  mov     x0, x19
  10001e194  bl      _objc_release
  10001e198  mov     x0, x21
  10001e19c  ldp     x29, x30, [sp, #0x20]
  10001e1a0  ldp     x20, x19, [sp, #0x10]
  10001e1a4  ldp     x22, x21, [sp], #0x30
  10001e1a8  ret
  10001e1ac  mov     x20, x0
  10001e1b0  b       loc_10001e1d4
  10001e1b4  mov     x20, x0
  10001e1b8  b       loc_10001e1cc
  10001e1bc  mov     x1, x20
  10001e1c0  mov     x20, x0
  10001e1c4  mov     x0, x1
  10001e1c8  bl      _objc_release
loc_10001e1cc:
  10001e1cc  mov     x0, x19
  10001e1d0  bl      _objc_release
loc_10001e1d4:
  10001e1d4  mov     x0, x20
  10001e1d8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData hasAccuracyStarForChallengeWithName:]
; address 0x10001e1dc  size 184  kind objc
; ======================================================================
  10001e1dc  stp     x22, x21, [sp, #-0x30]!
  10001e1e0  stp     x20, x19, [sp, #0x10]
  10001e1e4  stp     x29, x30, [sp, #0x20]
  10001e1e8  add     x29, sp, #0x20
  10001e1ec  adrp    x8, #0x100417000
  10001e1f0  nop
  10001e1f4  ldr     x1, [x8, #0xa00]
  10001e1f8  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:arg1]
  10001e1fc  mov     x29, x29
  10001e200  bl      _objc_retainAutoreleasedReturnValue
  10001e204  mov     x19, x0
  10001e208  adrp    x8, #0x100417000
  10001e20c  nop
  10001e210  ldr     x1, [x8, #0x40]
  10001e214  adrp    x2, #0x1003ba000
  10001e218  add     x2, x2, #0xdf0                           ; @"accuracy_star_unlocked"
  10001e21c  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:arg1] objectForKey:@"accuracy_star_unlocked"]
  10001e220  mov     x29, x29
  10001e224  bl      _objc_retainAutoreleasedReturnValue
  10001e228  mov     x20, x0
  10001e22c  adrp    x8, #0x100417000
  10001e230  nop
  10001e234  ldr     x1, [x8, #0xd8]
  10001e238  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:arg1] objectForKey:@"accuracy_star_unlocked"] boolValue]
  10001e23c  mov     x21, x0
  10001e240  mov     x0, x20
  10001e244  bl      _objc_release
  10001e248  mov     x0, x19
  10001e24c  bl      _objc_release
  10001e250  mov     x0, x21
  10001e254  ldp     x29, x30, [sp, #0x20]
  10001e258  ldp     x20, x19, [sp, #0x10]
  10001e25c  ldp     x22, x21, [sp], #0x30
  10001e260  ret
  10001e264  mov     x20, x0
  10001e268  b       loc_10001e28c
  10001e26c  mov     x20, x0
  10001e270  b       loc_10001e284
  10001e274  mov     x1, x20
  10001e278  mov     x20, x0
  10001e27c  mov     x0, x1
  10001e280  bl      _objc_release
loc_10001e284:
  10001e284  mov     x0, x19
  10001e288  bl      _objc_release
loc_10001e28c:
  10001e28c  mov     x0, x20
  10001e290  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData hasTimeLimitStarForChallengeWithName:]
; address 0x10001e294  size 184  kind objc
; ======================================================================
  10001e294  stp     x22, x21, [sp, #-0x30]!
  10001e298  stp     x20, x19, [sp, #0x10]
  10001e29c  stp     x29, x30, [sp, #0x20]
  10001e2a0  add     x29, sp, #0x20
  10001e2a4  adrp    x8, #0x100417000
  10001e2a8  nop
  10001e2ac  ldr     x1, [x8, #0xa00]
  10001e2b0  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:arg1]
  10001e2b4  mov     x29, x29
  10001e2b8  bl      _objc_retainAutoreleasedReturnValue
  10001e2bc  mov     x19, x0
  10001e2c0  adrp    x8, #0x100417000
  10001e2c4  nop
  10001e2c8  ldr     x1, [x8, #0x40]
  10001e2cc  adrp    x2, #0x1003ba000
  10001e2d0  add     x2, x2, #0xe10                           ; @"time_limit_star_unlocked"
  10001e2d4  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:arg1] objectForKey:@"time_limit_star_unlocked"]
  10001e2d8  mov     x29, x29
  10001e2dc  bl      _objc_retainAutoreleasedReturnValue
  10001e2e0  mov     x20, x0
  10001e2e4  adrp    x8, #0x100417000
  10001e2e8  nop
  10001e2ec  ldr     x1, [x8, #0xd8]
  10001e2f0  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:arg1] objectForKey:@"time_limit_star_unlocked"] boolValue]
  10001e2f4  mov     x21, x0
  10001e2f8  mov     x0, x20
  10001e2fc  bl      _objc_release
  10001e300  mov     x0, x19
  10001e304  bl      _objc_release
  10001e308  mov     x0, x21
  10001e30c  ldp     x29, x30, [sp, #0x20]
  10001e310  ldp     x20, x19, [sp, #0x10]
  10001e314  ldp     x22, x21, [sp], #0x30
  10001e318  ret
  10001e31c  mov     x20, x0
  10001e320  b       loc_10001e344
  10001e324  mov     x20, x0
  10001e328  b       loc_10001e33c
  10001e32c  mov     x1, x20
  10001e330  mov     x20, x0
  10001e334  mov     x0, x1
  10001e338  bl      _objc_release
loc_10001e33c:
  10001e33c  mov     x0, x19
  10001e340  bl      _objc_release
loc_10001e344:
  10001e344  mov     x0, x20
  10001e348  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData playerDidCompleteChallengeWithName:accuracyUnlocked:timeLimitUnlocked:]
; address 0x10001e34c  size 680  kind objc
; ======================================================================
  10001e34c  stp     x26, x25, [sp, #-0x50]!
  10001e350  stp     x24, x23, [sp, #0x10]
  10001e354  stp     x22, x21, [sp, #0x20]
  10001e358  stp     x20, x19, [sp, #0x30]
  10001e35c  stp     x29, x30, [sp, #0x40]
  10001e360  add     x29, sp, #0x40
  10001e364  mov     x22, x4
  10001e368  mov     x23, x3
  10001e36c  mov     x20, x0
  10001e370  mov     x0, x2
  10001e374  bl      _objc_retain
  10001e378  mov     x19, x0
  10001e37c  adrp    x8, #0x100417000
  10001e380  nop
  10001e384  ldr     x1, [x8, #0xa00]
  10001e388  mov     x0, x20
  10001e38c  mov     x2, x19
  10001e390  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:arg1]
  10001e394  mov     x29, x29
  10001e398  bl      _objc_retainAutoreleasedReturnValue
  10001e39c  mov     x25, x0
  10001e3a0  mov     x21, x25
  10001e3a4  cbnz    x25, loc_10001e43c                       ; if ([self dictionaryForChallengeWithName:arg1] != 0)
  10001e3a8  adrp    x8, #0x10041d000
  10001e3ac  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10001e3b0  adrp    x8, #0x100416000
  10001e3b4  nop
  10001e3b8  ldr     x1, [x8, #0xac8]
  10001e3bc  mov     x21, #0
  10001e3c0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10001e3c4  adrp    x8, #0x100416000
  10001e3c8  nop
  10001e3cc  ldr     x1, [x8, #0xab8]
  10001e3d0  mov     x21, #0
  10001e3d4  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  10001e3d8  mov     x24, x0
  10001e3dc  mov     x21, x24
  10001e3e0  mov     x0, x25
  10001e3e4  bl      _objc_release
  10001e3e8  adrp    x8, #0x10041d000
  10001e3ec  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10001e3f0  adrp    x8, #0x100417000
  10001e3f4  nop
  10001e3f8  ldr     x1, [x8, #0xb8]
  10001e3fc  mov     w2, #1
  10001e400  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10001e404  mov     x29, x29
  10001e408  bl      _objc_retainAutoreleasedReturnValue
  10001e40c  mov     x21, x0
  10001e410  adrp    x8, #0x100416000
  10001e414  nop
  10001e418  ldr     x1, [x8, #0xdc8]
  10001e41c  adrp    x3, #0x1003ba000
  10001e420  add     x3, x3, #0xdd0                           ; @"completed"
  10001e424  mov     x0, x24
  10001e428  mov     x2, x21
  10001e42c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[NSNumber numberWithBool:1] forKey:@"completed"]
  10001e430  mov     x0, x21
  10001e434  bl      _objc_release
  10001e438  mov     x21, x24
loc_10001e43c:
  10001e43c  adrp    x8, #0x100417000
  10001e440  nop
  10001e444  ldr     x1, [x8, #0xa08]
  10001e448  mov     x0, x20
  10001e44c  mov     x2, x19
  10001e450  bl      _objc_msgSend                            ; [self hasAccuracyStarForChallengeWithName:arg1]
  10001e454  eor     w8, w23, #1
  10001e458  orr     w8, w0, w8
  10001e45c  tbnz    w8, #0, loc_10001e4b0                    ; if ((([self hasAccuracyStarForChallengeWithName:arg1] | (arg2 ^ 1)) & 1))
  10001e460  adrp    x8, #0x10041d000
  10001e464  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10001e468  adrp    x8, #0x100417000
  10001e46c  nop
  10001e470  ldr     x1, [x8, #0xb8]
  10001e474  mov     w2, #1
  10001e478  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10001e47c  mov     x29, x29
  10001e480  bl      _objc_retainAutoreleasedReturnValue
  10001e484  mov     x23, x0
  10001e488  adrp    x8, #0x100416000
  10001e48c  nop
  10001e490  ldr     x1, [x8, #0xdc8]
  10001e494  adrp    x3, #0x1003ba000
  10001e498  add     x3, x3, #0xdf0                           ; @"accuracy_star_unlocked"
  10001e49c  mov     x0, x21
  10001e4a0  mov     x2, x23
  10001e4a4  bl      _objc_msgSend                            ; [x0 setObject:[NSNumber numberWithBool:1] forKey:@"accuracy_star_unlocked"]
  10001e4a8  mov     x0, x23
  10001e4ac  bl      _objc_release
loc_10001e4b0:
  10001e4b0  adrp    x8, #0x100417000
  10001e4b4  nop
  10001e4b8  ldr     x1, [x8, #0xa10]
  10001e4bc  mov     x0, x20
  10001e4c0  mov     x2, x19
  10001e4c4  bl      _objc_msgSend                            ; [self hasTimeLimitStarForChallengeWithName:arg1]
  10001e4c8  eor     w8, w22, #1
  10001e4cc  orr     w8, w0, w8
  10001e4d0  tbnz    w8, #0, loc_10001e524                    ; if ((([self hasTimeLimitStarForChallengeWithName:arg1] | (arg3 ^ 1)) & 1))
  10001e4d4  adrp    x8, #0x10041d000
  10001e4d8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10001e4dc  adrp    x8, #0x100417000
  10001e4e0  nop
  10001e4e4  ldr     x1, [x8, #0xb8]
  10001e4e8  mov     w2, #1
  10001e4ec  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  10001e4f0  mov     x29, x29
  10001e4f4  bl      _objc_retainAutoreleasedReturnValue
  10001e4f8  mov     x22, x0
  10001e4fc  adrp    x8, #0x100416000
  10001e500  nop
  10001e504  ldr     x1, [x8, #0xdc8]
  10001e508  adrp    x3, #0x1003ba000
  10001e50c  add     x3, x3, #0xe10                           ; @"time_limit_star_unlocked"
  10001e510  mov     x0, x21
  10001e514  mov     x2, x22
  10001e518  bl      _objc_msgSend                            ; [x0 setObject:[NSNumber numberWithBool:1] forKey:@"time_limit_star_unlocked"]
  10001e51c  mov     x0, x22
  10001e520  bl      _objc_release
loc_10001e524:
  10001e524  adrp    x8, #0x100417000
  10001e528  nop
  10001e52c  ldr     x1, [x8, #0x9f0]
  10001e530  mov     x0, x20
  10001e534  bl      _objc_msgSend                            ; [self challengeData]
  10001e538  mov     x29, x29
  10001e53c  bl      _objc_retainAutoreleasedReturnValue
  10001e540  mov     x22, x0
  10001e544  adrp    x8, #0x100416000
  10001e548  nop
  10001e54c  ldr     x1, [x8, #0xdc8]
  10001e550  mov     x2, x21
  10001e554  mov     x3, x19
  10001e558  bl      _objc_msgSend                            ; [[self challengeData] setObject:x2 forKey:arg1]
  10001e55c  mov     x0, x22
  10001e560  bl      _objc_release
  10001e564  adrp    x8, #0x100417000
  10001e568  nop
  10001e56c  ldr     x1, [x8, #0x9e8]
  10001e570  mov     x0, x20
  10001e574  bl      _objc_msgSend                            ; [self saveChallengeData]
  10001e578  mov     x0, x21
  10001e57c  bl      _objc_release
  10001e580  mov     x0, x19
  10001e584  ldp     x29, x30, [sp, #0x40]
  10001e588  ldp     x20, x19, [sp, #0x30]
  10001e58c  ldp     x22, x21, [sp, #0x20]
  10001e590  ldp     x24, x23, [sp, #0x10]
  10001e594  ldp     x26, x25, [sp], #0x50
  10001e598  b       _objc_release
  10001e59c  mov     x20, x0
  10001e5a0  b       loc_10001e5dc
  10001e5a4  mov     x20, x0
  10001e5a8  b       loc_10001e5e4
  10001e5ac  b       loc_10001e5bc
  10001e5b0  mov     x20, x0
  10001e5b4  mov     x0, x23
  10001e5b8  b       loc_10001e5c4
loc_10001e5bc:
  10001e5bc  mov     x20, x0
  10001e5c0  mov     x0, x22
loc_10001e5c4:
  10001e5c4  bl      _objc_release
  10001e5c8  b       loc_10001e5dc
  10001e5cc  mov     x20, x0
  10001e5d0  mov     x0, x21
  10001e5d4  bl      _objc_release
  10001e5d8  mov     x21, x24
loc_10001e5dc:
  10001e5dc  mov     x0, x21
  10001e5e0  bl      _objc_release
loc_10001e5e4:
  10001e5e4  mov     x0, x19
  10001e5e8  bl      _objc_release
  10001e5ec  mov     x0, x20
  10001e5f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData computeTotalChallengesWon]
; address 0x10001e5f4  size 544  kind objc
; ======================================================================
  10001e5f4  stp     x28, x27, [sp, #-0x60]!
  10001e5f8  stp     x26, x25, [sp, #0x10]
  10001e5fc  stp     x24, x23, [sp, #0x20]
  10001e600  stp     x22, x21, [sp, #0x30]
  10001e604  stp     x20, x19, [sp, #0x40]
  10001e608  stp     x29, x30, [sp, #0x50]
  10001e60c  add     x29, sp, #0x50
  10001e610  sub     sp, sp, #0x20
  10001e614  str     x0, [sp, #0x10]
  10001e618  adrp    x8, #0x100417000
  10001e61c  nop
  10001e620  ldr     x1, [x8, #0x9f0]
  10001e624  bl      _objc_msgSend                            ; [self challengeData]
  10001e628  mov     x29, x29
  10001e62c  bl      _objc_retainAutoreleasedReturnValue
  10001e630  mov     x19, x0
  10001e634  adrp    x8, #0x100417000
  10001e638  nop
  10001e63c  ldr     x1, [x8, #0xa18]
  10001e640  bl      _objc_msgSend                            ; [[self challengeData] keyEnumerator]
  10001e644  mov     x29, x29
  10001e648  bl      _objc_retainAutoreleasedReturnValue
  10001e64c  str     x0, [sp, #0x18]
  10001e650  mov     x0, x19
  10001e654  bl      _objc_release
  10001e658  mov     x27, #0
  10001e65c  mov     x22, #0
  10001e660  adrp    x8, #0x100417000
  10001e664  nop
  10001e668  ldr     x23, [x8, #0xa20]
  10001e66c  adrp    x8, #0x100417000
  10001e670  nop
  10001e674  ldr     x8, [x8, #0xa00]
  10001e678  str     x8, [sp, #8]
  10001e67c  adrp    x8, #0x100417000
  10001e680  nop
  10001e684  ldr     x25, [x8, #0x40]
  10001e688  adrp    x8, #0x100417000
  10001e68c  add     x8, x8, #0xd8                            ; &@selector(boolValue)
  10001e690  ldr     x26, [x8]
  10001e694  b       loc_10001e6b8
loc_10001e698:
  10001e698  mov     x0, x20
  10001e69c  bl      _objc_release
  10001e6a0  add     x8, x22, w27, uxtw                       ; t1 = (x22 + [[[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"completed"] boolValue])
  10001e6a4  add     x8, x8, w19, uxtw                        ; t2 = (t1 + [[[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"accuracy_star_unlocked"] boolValue])
  10001e6a8  add     x22, x8, w24, uxtw                       ; t3 = (t2 + [[[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"time_limit_star_unlocked"] boolValue])
  10001e6ac  mov     x0, x28
  10001e6b0  bl      _objc_release
  10001e6b4  mov     x27, x21
loc_10001e6b8:
  10001e6b8  ldr     x0, [sp, #0x18]
  10001e6bc  mov     x1, x23
  10001e6c0  bl      _objc_msgSend                            ; [[[self challengeData] keyEnumerator] nextObject]
  10001e6c4  mov     x29, x29
  10001e6c8  bl      _objc_retainAutoreleasedReturnValue
  10001e6cc  mov     x21, x0
  10001e6d0  mov     x0, x27
  10001e6d4  bl      _objc_release
  10001e6d8  cbz     x21, loc_10001e790                       ; if ([[[self challengeData] keyEnumerator] nextObject] == 0)
  10001e6dc  mov     x27, x21
  10001e6e0  ldp     x1, x0, [sp, #8]
  10001e6e4  mov     x2, x21
  10001e6e8  bl      _objc_msgSend                            ; [self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]]
  10001e6ec  mov     x29, x29
  10001e6f0  bl      _objc_retainAutoreleasedReturnValue
  10001e6f4  mov     x28, x0
  10001e6f8  mov     x1, x25
  10001e6fc  adrp    x2, #0x1003ba000
  10001e700  add     x2, x2, #0xdd0                           ; @"completed"
  10001e704  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"completed"]
  10001e708  mov     x29, x29
  10001e70c  bl      _objc_retainAutoreleasedReturnValue
  10001e710  mov     x19, x0
  10001e714  mov     x1, x26
  10001e718  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"completed"] boolValue]
  10001e71c  mov     x27, x0
  10001e720  mov     x0, x19
  10001e724  bl      _objc_release
  10001e728  mov     x0, x28
  10001e72c  mov     x1, x25
  10001e730  adrp    x2, #0x1003ba000
  10001e734  add     x2, x2, #0xdf0                           ; @"accuracy_star_unlocked"
  10001e738  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"accuracy_star_unlocked"]
  10001e73c  mov     x29, x29
  10001e740  bl      _objc_retainAutoreleasedReturnValue
  10001e744  mov     x20, x0
  10001e748  mov     x1, x26
  10001e74c  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"accuracy_star_unlocked"] boolValue]
  10001e750  mov     x19, x0
  10001e754  mov     x0, x20
  10001e758  bl      _objc_release
  10001e75c  mov     x0, x28
  10001e760  mov     x1, x25
  10001e764  adrp    x2, #0x1003ba000
  10001e768  add     x2, x2, #0xe10                           ; @"time_limit_star_unlocked"
  10001e76c  bl      _objc_msgSend                            ; [[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"time_limit_star_unlocked"]
  10001e770  mov     x29, x29
  10001e774  bl      _objc_retainAutoreleasedReturnValue
  10001e778  mov     x20, x0
  10001e77c  mov     x1, x26
  10001e780  bl      _objc_msgSend                            ; [[[self dictionaryForChallengeWithName:[[[self challengeData] keyEnumerator] nextObject]] objectForKey:@"time_limit_star_unlocked"] boolValue]
  10001e784  mov     x24, x0
  10001e788  b       loc_10001e698
  10001e78c  b       loc_10001e7dc
loc_10001e790:
  10001e790  ldr     x0, [sp, #0x18]
  10001e794  bl      _objc_release
  10001e798  mov     x0, x22
  10001e79c  sub     sp, x29, #0x50
  10001e7a0  ldp     x29, x30, [sp, #0x50]
  10001e7a4  ldp     x20, x19, [sp, #0x40]
  10001e7a8  ldp     x22, x21, [sp, #0x30]
  10001e7ac  ldp     x24, x23, [sp, #0x20]
  10001e7b0  ldp     x26, x25, [sp, #0x10]
  10001e7b4  ldp     x28, x27, [sp], #0x60
  10001e7b8  ret
  10001e7bc  mov     x22, x0
  10001e7c0  b       loc_10001e7e8
  10001e7c4  mov     x22, x0
  10001e7c8  mov     x21, x27
  10001e7cc  b       loc_10001e7f0
  10001e7d0  mov     x22, x0
  10001e7d4  mov     x0, x19
  10001e7d8  b       loc_10001e7e4
loc_10001e7dc:
  10001e7dc  mov     x22, x0
  10001e7e0  mov     x0, x20
loc_10001e7e4:
  10001e7e4  bl      _objc_release
loc_10001e7e8:
  10001e7e8  mov     x0, x28
  10001e7ec  bl      _objc_release
loc_10001e7f0:
  10001e7f0  mov     x0, x21
  10001e7f4  bl      _objc_release
  10001e7f8  ldr     x0, [sp, #0x18]
loc_10001e7fc:
  10001e7fc  bl      _objc_release
  10001e800  mov     x0, x22
  10001e804  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001e808  mov     x22, x0
  10001e80c  mov     x0, x19
  10001e810  b       loc_10001e7fc

; ======================================================================
; -[ADChallengeData saveChallengeData]
; address 0x10001e814  size 204  kind objc
; ======================================================================
  10001e814  stp     x22, x21, [sp, #-0x30]!
  10001e818  stp     x20, x19, [sp, #0x10]
  10001e81c  stp     x29, x30, [sp, #0x20]
  10001e820  add     x29, sp, #0x20
  10001e824  mov     x20, x0
  10001e828  adrp    x8, #0x10041d000
  10001e82c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  10001e830  adrp    x8, #0x100416000
  10001e834  nop
  10001e838  ldr     x1, [x8, #0xd98]
  10001e83c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10001e840  mov     x29, x29
  10001e844  bl      _objc_retainAutoreleasedReturnValue
  10001e848  mov     x19, x0
  10001e84c  adrp    x8, #0x100417000
  10001e850  nop
  10001e854  ldr     x1, [x8, #0x9f0]
  10001e858  mov     x0, x20
  10001e85c  bl      _objc_msgSend                            ; [self challengeData]
  10001e860  mov     x29, x29
  10001e864  bl      _objc_retainAutoreleasedReturnValue
  10001e868  mov     x20, x0
  10001e86c  adrp    x8, #0x100416000
  10001e870  nop
  10001e874  ldr     x1, [x8, #0xdc8]
  10001e878  adrp    x3, #0x1003ba000
  10001e87c  add     x3, x3, #0xdb0                           ; @"challengeData"
  10001e880  mov     x0, x19
  10001e884  mov     x2, x20
  10001e888  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[self challengeData] forKey:@"challengeData"]
  10001e88c  mov     x0, x20
  10001e890  bl      _objc_release
  10001e894  adrp    x8, #0x100416000
  10001e898  nop
  10001e89c  ldr     x1, [x8, #0xdd8]
  10001e8a0  mov     x0, x19
  10001e8a4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10001e8a8  mov     x0, x19
  10001e8ac  ldp     x29, x30, [sp, #0x20]
  10001e8b0  ldp     x20, x19, [sp, #0x10]
  10001e8b4  ldp     x22, x21, [sp], #0x30
  10001e8b8  b       _objc_release
  10001e8bc  mov     x21, x0
  10001e8c0  b       loc_10001e8d0
  10001e8c4  mov     x21, x0
  10001e8c8  mov     x0, x20
  10001e8cc  bl      _objc_release
loc_10001e8d0:
  10001e8d0  mov     x0, x19
  10001e8d4  bl      _objc_release
  10001e8d8  mov     x0, x21
  10001e8dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData totalStarsUnlockedForWorld:]
; address 0x10001e8e0  size 1012  kind objc
; ======================================================================
  10001e8e0  stp     x28, x27, [sp, #-0x60]!
  10001e8e4  stp     x26, x25, [sp, #0x10]
  10001e8e8  stp     x24, x23, [sp, #0x20]
  10001e8ec  stp     x22, x21, [sp, #0x30]
  10001e8f0  stp     x20, x19, [sp, #0x40]
  10001e8f4  stp     x29, x30, [sp, #0x50]
  10001e8f8  add     x29, sp, #0x50
  10001e8fc  sub     sp, sp, #0x120
  10001e900  mov     x21, x0
  10001e904  adrp    x8, #0x1003b0000
  10001e908  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001e90c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10001e910  stur    x8, [x29, #-0x58]
  10001e914  mov     x0, x2
  10001e918  bl      _objc_retain
  10001e91c  mov     x23, x0
  10001e920  adrp    x8, #0x10041d000
  10001e924  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001e928  adrp    x8, #0x100416000
  10001e92c  nop
  10001e930  ldr     x1, [x8, #0xb58]
  10001e934  str     x1, [sp, #0x50]
  10001e938  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001e93c  mov     x29, x29
  10001e940  bl      _objc_retainAutoreleasedReturnValue
  10001e944  mov     x20, x0
  10001e948  adrp    x8, #0x100416000
  10001e94c  nop
  10001e950  ldr     x1, [x8, #0xd60]
  10001e954  str     x1, [sp, #0x48]
  10001e958  adrp    x2, #0x1003ba000
  10001e95c  add     x2, x2, #0xe30                           ; @"challenges_index"
  10001e960  adrp    x3, #0x1003b9000
  10001e964  add     x3, x3, #0xa70                           ; @"plist"
  10001e968  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10001e96c  mov     x29, x29
  10001e970  bl      _objc_retainAutoreleasedReturnValue
  10001e974  mov     x24, x0
  10001e978  mov     x0, x20
  10001e97c  bl      _objc_release
  10001e980  adrp    x8, #0x10041d000
  10001e984  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001e988  adrp    x8, #0x100417000
  10001e98c  nop
  10001e990  ldr     x1, [x8, #0x258]
  10001e994  str     x1, [sp, #0x40]
  10001e998  mov     x2, x24
  10001e99c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10001e9a0  mov     x29, x29
  10001e9a4  bl      _objc_retainAutoreleasedReturnValue
  10001e9a8  mov     x20, x0
  10001e9ac  adrp    x8, #0x100417000
  10001e9b0  nop
  10001e9b4  ldr     x25, [x8, #0x40]
  10001e9b8  mov     x1, x25
  10001e9bc  mov     x2, x23
  10001e9c0  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1]
  10001e9c4  mov     x29, x29
  10001e9c8  bl      _objc_retainAutoreleasedReturnValue
  10001e9cc  mov     x22, x0
  10001e9d0  adrp    x2, #0x1003ba000
  10001e9d4  add     x2, x2, #0xe50                           ; @"challenges"
  10001e9d8  mov     x1, x25
  10001e9dc  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"]
  10001e9e0  mov     x29, x29
  10001e9e4  bl      _objc_retainAutoreleasedReturnValue
  10001e9e8  mov     x19, x0
  10001e9ec  mov     x0, x22
  10001e9f0  bl      _objc_release
  10001e9f4  mov     x0, x20
  10001e9f8  bl      _objc_release
  10001e9fc  stp     xzr, xzr, [sp, #0x88]
  10001ea00  stp     xzr, xzr, [sp, #0x78]
  10001ea04  stp     xzr, xzr, [sp, #0x68]
  10001ea08  stp     xzr, xzr, [sp, #0x58]
  10001ea0c  mov     x0, x19
  10001ea10  bl      _objc_retain
  10001ea14  str     x0, [sp, #0x20]
  10001ea18  adrp    x8, #0x100416000
  10001ea1c  nop
  10001ea20  ldr     x1, [x8, #0xe00]
  10001ea24  str     x1, [sp, #0x18]
  10001ea28  add     x2, sp, #0x58
  10001ea2c  add     x3, sp, #0x98
  10001ea30  mov     w4, #0x10
  10001ea34  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  10001ea38  mov     x19, x0
  10001ea3c  stp     x23, x24, [sp, #8]
  10001ea40  cbz     x19, loc_10001ebb0                       ; if ([[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  10001ea44  str     x25, [sp, #0x30]
  10001ea48  mov     w27, #0
  10001ea4c  ldr     x8, [sp, #0x68]
  10001ea50  adrp    x9, #0x100417000
  10001ea54  nop
  10001ea58  ldr     x8, [x8]
  10001ea5c  str     x8, [sp, #0x38]
  10001ea60  ldr     x8, [x9, #0xa08]
  10001ea64  str     x8, [sp, #0x28]
  10001ea68  adrp    x8, #0x100416000
  10001ea6c  add     x8, x8, #0xdf8                           ; &@selector(hasCompletedChallengeWithName:)
  10001ea70  adrp    x9, #0x100417000
  10001ea74  add     x9, x9, #0xa10                           ; &@selector(hasTimeLimitStarForChallengeWithName:)
  10001ea78  ldr     x28, [x8]
  10001ea7c  ldr     x24, [x9]
loc_10001ea80:
  10001ea80  mov     x20, #0
loc_10001ea84:
  10001ea84  ldr     x8, [sp, #0x68]
  10001ea88  ldr     x8, [x8]
  10001ea8c  ldr     x9, [sp, #0x38]
  10001ea90  cmp     x8, x9
  10001ea94  b.eq    loc_10001eaa0                            ; if (x8 == x9)
  10001ea98  ldr     x0, [sp, #0x20]
  10001ea9c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"])
loc_10001eaa0:
  10001eaa0  ldr     x8, [sp, #0x60]
  10001eaa4  ldr     x22, [x8, x20, lsl #3]
  10001eaa8  adrp    x8, #0x10041d000
  10001eaac  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001eab0  ldr     x1, [sp, #0x50]
  10001eab4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001eab8  mov     x29, x29
  10001eabc  bl      _objc_retainAutoreleasedReturnValue
  10001eac0  mov     x23, x0
  10001eac4  ldr     x1, [sp, #0x48]
  10001eac8  mov     x2, x22
  10001eacc  adrp    x3, #0x1003b9000
  10001ead0  add     x3, x3, #0xa70                           ; @"plist"
  10001ead4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]
  10001ead8  mov     x29, x29
  10001eadc  bl      _objc_retainAutoreleasedReturnValue
  10001eae0  mov     x22, x0
  10001eae4  mov     x0, x23
  10001eae8  bl      _objc_release
  10001eaec  adrp    x8, #0x10041d000
  10001eaf0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001eaf4  ldr     x1, [sp, #0x40]
  10001eaf8  mov     x2, x22
  10001eafc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]]
  10001eb00  mov     x29, x29
  10001eb04  bl      _objc_retainAutoreleasedReturnValue
  10001eb08  mov     x25, x0
  10001eb0c  ldr     x1, [sp, #0x30]
  10001eb10  adrp    x2, #0x1003b9000
  10001eb14  add     x2, x2, #0xef0                           ; @"challenge_id"
  10001eb18  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]
  10001eb1c  mov     x29, x29
  10001eb20  bl      _objc_retainAutoreleasedReturnValue
  10001eb24  mov     x23, x0
  10001eb28  mov     x0, x25
  10001eb2c  bl      _objc_release
  10001eb30  mov     x0, x21
  10001eb34  ldr     x1, [sp, #0x28]
  10001eb38  mov     x2, x23
  10001eb3c  bl      _objc_msgSend                            ; [self hasAccuracyStarForChallengeWithName:[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]]
  10001eb40  mov     x25, x0
  10001eb44  mov     x0, x21
  10001eb48  mov     x1, x28
  10001eb4c  mov     x2, x23
  10001eb50  bl      _objc_msgSend                            ; [self hasCompletedChallengeWithName:[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]]
  10001eb54  mov     x26, x0
  10001eb58  mov     x0, x21
  10001eb5c  mov     x1, x24
  10001eb60  mov     x2, x23
  10001eb64  bl      _objc_msgSend                            ; [self hasTimeLimitStarForChallengeWithName:[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]]
  10001eb68  add     w8, w25, w27                             ; t1 = ([self hasAccuracyStarForChallengeWithName:[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]] + w27)
  10001eb6c  add     w8, w8, w26                              ; t2 = (t1 + [self hasCompletedChallengeWithName:[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]])
  10001eb70  add     w27, w8, w0                              ; t3 = (t2 + [self hasTimeLimitStarForChallengeWithName:[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:x2 withExtension:@"plist"]] objectForKey:@"challenge_id"]])
  10001eb74  mov     x0, x23
  10001eb78  bl      _objc_release
  10001eb7c  mov     x0, x22
  10001eb80  bl      _objc_release
  10001eb84  add     x20, x20, #1
  10001eb88  cmp     x20, x19
  10001eb8c  b.lo    loc_10001ea84                            ; if ((x20 + 1) <u [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"p…)
  10001eb90  add     x2, sp, #0x58
  10001eb94  add     x3, sp, #0x98
  10001eb98  mov     w4, #0x10
  10001eb9c  ldp     x1, x0, [sp, #0x18]
  10001eba0  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  10001eba4  mov     x19, x0
  10001eba8  cbnz    x19, loc_10001ea80                       ; if ([[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
  10001ebac  b       loc_10001ebb4
loc_10001ebb0:
  10001ebb0  mov     w27, #0
loc_10001ebb4:
  10001ebb4  ldr     x19, [sp, #0x20]
  10001ebb8  mov     x0, x19
  10001ebbc  bl      _objc_release
  10001ebc0  mov     x0, x19
  10001ebc4  bl      _objc_release
  10001ebc8  ldr     x0, [sp, #0x10]
  10001ebcc  bl      _objc_release
  10001ebd0  ldr     x0, [sp, #8]
  10001ebd4  bl      _objc_release
  10001ebd8  ldur    x8, [x29, #-0x58]
  10001ebdc  adrp    x9, #0x1003b0000
  10001ebe0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10001ebe4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10001ebe8  sub     x8, x9, x8
  10001ebec  cbnz    x8, loc_10001ec14                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001ebf0  mov     x0, x27
  10001ebf4  sub     sp, x29, #0x50
  10001ebf8  ldp     x29, x30, [sp, #0x50]
  10001ebfc  ldp     x20, x19, [sp, #0x40]
  10001ec00  ldp     x22, x21, [sp, #0x30]
  10001ec04  ldp     x24, x23, [sp, #0x20]
  10001ec08  ldp     x26, x25, [sp, #0x10]
  10001ec0c  ldp     x28, x27, [sp], #0x60
  10001ec10  ret
loc_10001ec14:
  10001ec14  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10001ec18  mov     x19, x0
  10001ec1c  mov     x0, x23
  10001ec20  b       loc_10001ec58
loc_10001ec24:
  10001ec24  mov     x19, x0
  10001ec28  ldr     x23, [sp, #8]
  10001ec2c  b       loc_10001ec40
  10001ec30  mov     x19, x0
  10001ec34  mov     x0, x23
  10001ec38  bl      _objc_release
  10001ec3c  ldr     x23, [sp, #8]
loc_10001ec40:
  10001ec40  ldr     x24, [sp, #0x10]
  10001ec44  b       loc_10001ec68
  10001ec48  mov     x19, x0
  10001ec4c  b       loc_10001ec5c
  10001ec50  mov     x19, x0
  10001ec54  mov     x0, x25
loc_10001ec58:
  10001ec58  bl      _objc_release
loc_10001ec5c:
  10001ec5c  ldp     x23, x24, [sp, #8]
  10001ec60  mov     x0, x22
  10001ec64  bl      _objc_release
loc_10001ec68:
  10001ec68  ldr     x20, [sp, #0x20]
  10001ec6c  mov     x0, x20
loc_10001ec70:
  10001ec70  bl      _objc_release
loc_10001ec74:
  10001ec74  mov     x0, x20
  10001ec78  bl      _objc_release
loc_10001ec7c:
  10001ec7c  mov     x0, x24
loc_10001ec80:
  10001ec80  bl      _objc_release
loc_10001ec84:
  10001ec84  mov     x0, x23
  10001ec88  bl      _objc_release
  10001ec8c  mov     x0, x19
  10001ec90  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001ec94  b       loc_10001ec24
  10001ec98  mov     x19, x0
  10001ec9c  b       loc_10001ec84
  10001eca0  mov     x19, x0
  10001eca4  mov     x0, x20
  10001eca8  b       loc_10001ec80
  10001ecac  mov     x19, x0
  10001ecb0  b       loc_10001ec7c
  10001ecb4  mov     x19, x0
  10001ecb8  b       loc_10001ec74
  10001ecbc  mov     x19, x0
  10001ecc0  mov     x0, x22
  10001ecc4  b       loc_10001ec70
  10001ecc8  str     x24, [sp, #0x10]
  10001eccc  mov     x19, x0
  10001ecd0  b       loc_10001ec40

; ======================================================================
; -[ADChallengeData totalStarsUnlocked]
; address 0x10001ecd4  size 552  kind objc
; ======================================================================
  10001ecd4  stp     x28, x27, [sp, #-0x60]!
  10001ecd8  stp     x26, x25, [sp, #0x10]
  10001ecdc  stp     x24, x23, [sp, #0x20]
  10001ece0  stp     x22, x21, [sp, #0x30]
  10001ece4  stp     x20, x19, [sp, #0x40]
  10001ece8  stp     x29, x30, [sp, #0x50]
  10001ecec  add     x29, sp, #0x50
  10001ecf0  sub     sp, sp, #0xd0
  10001ecf4  mov     x20, x0
  10001ecf8  adrp    x26, #0x1003b0000
  10001ecfc  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10001ed00  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  10001ed04  stur    x26, [x29, #-0x58]
  10001ed08  adrp    x8, #0x10041d000
  10001ed0c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001ed10  adrp    x8, #0x100416000
  10001ed14  nop
  10001ed18  ldr     x1, [x8, #0xb58]
  10001ed1c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001ed20  mov     x29, x29
  10001ed24  bl      _objc_retainAutoreleasedReturnValue
  10001ed28  mov     x21, x0
  10001ed2c  adrp    x8, #0x100416000
  10001ed30  nop
  10001ed34  ldr     x1, [x8, #0xd60]
  10001ed38  adrp    x2, #0x1003ba000
  10001ed3c  add     x2, x2, #0xe30                           ; @"challenges_index"
  10001ed40  adrp    x3, #0x1003b9000
  10001ed44  add     x3, x3, #0xa70                           ; @"plist"
  10001ed48  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10001ed4c  mov     x29, x29
  10001ed50  bl      _objc_retainAutoreleasedReturnValue
  10001ed54  mov     x19, x0
  10001ed58  mov     x0, x21
  10001ed5c  bl      _objc_release
  10001ed60  adrp    x8, #0x10041d000
  10001ed64  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001ed68  adrp    x8, #0x100417000
  10001ed6c  nop
  10001ed70  ldr     x1, [x8, #0x258]
  10001ed74  mov     x2, x19
  10001ed78  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10001ed7c  mov     x29, x29
  10001ed80  bl      _objc_retainAutoreleasedReturnValue
  10001ed84  mov     x21, x0
  10001ed88  adrp    x8, #0x100417000
  10001ed8c  nop
  10001ed90  ldr     x1, [x8, #0x248]
  10001ed94  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys]
  10001ed98  mov     x29, x29
  10001ed9c  bl      _objc_retainAutoreleasedReturnValue
  10001eda0  mov     x22, x0
  10001eda4  mov     x0, x21
  10001eda8  bl      _objc_release
  10001edac  stp     xzr, xzr, [sp, #0x38]
  10001edb0  stp     xzr, xzr, [sp, #0x28]
  10001edb4  stp     xzr, xzr, [sp, #0x18]
  10001edb8  stp     xzr, xzr, [sp, #8]
  10001edbc  mov     x0, x22
  10001edc0  bl      _objc_retain
  10001edc4  mov     x21, x0
  10001edc8  adrp    x8, #0x100416000
  10001edcc  nop
  10001edd0  ldr     x23, [x8, #0xe00]
  10001edd4  add     x2, sp, #8
  10001edd8  add     x3, sp, #0x48
  10001eddc  mov     w4, #0x10
  10001ede0  mov     x1, x23
  10001ede4  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10001ede8  mov     x24, x0
  10001edec  mov     w22, #0
  10001edf0  cbz     x24, loc_10001ee68                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10001edf4  ldr     x8, [sp, #0x18]
  10001edf8  ldr     x27, [x8]
  10001edfc  adrp    x8, #0x100417000
  10001ee00  add     x8, x8, #0xa28                           ; &@selector(totalStarsUnlockedForWorld:)
  10001ee04  ldr     x25, [x8]
loc_10001ee08:
  10001ee08  mov     x28, #0
loc_10001ee0c:
  10001ee0c  ldr     x8, [sp, #0x18]
  10001ee10  ldr     x8, [x8]
  10001ee14  cmp     x8, x27
  10001ee18  b.eq    loc_10001ee24                            ; if (x8 == x27)
  10001ee1c  mov     x0, x21
  10001ee20  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys])
loc_10001ee24:
  10001ee24  ldr     x8, [sp, #0x10]
  10001ee28  ldr     x2, [x8, x28, lsl #3]
  10001ee2c  mov     x0, x20
  10001ee30  mov     x1, x25
  10001ee34  bl      _objc_msgSend                            ; [self totalStarsUnlockedForWorld:x2]
  10001ee38  add     w22, w0, w22
  10001ee3c  add     x28, x28, #1
  10001ee40  cmp     x28, x24
  10001ee44  b.lo    loc_10001ee0c                            ; if ((x28 + 1) <u [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"pl…)
  10001ee48  add     x2, sp, #8
  10001ee4c  add     x3, sp, #0x48
  10001ee50  mov     w4, #0x10
  10001ee54  mov     x0, x21
  10001ee58  mov     x1, x23
  10001ee5c  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10001ee60  mov     x24, x0
  10001ee64  cbnz    x24, loc_10001ee08                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10001ee68:
  10001ee68  mov     x0, x21
  10001ee6c  bl      _objc_release
  10001ee70  mov     x0, x21
  10001ee74  bl      _objc_release
  10001ee78  mov     x0, x19
  10001ee7c  bl      _objc_release
  10001ee80  ldur    x8, [x29, #-0x58]
  10001ee84  sub     x8, x26, x8
  10001ee88  cbnz    x8, loc_10001eeb0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001ee8c  mov     x0, x22
  10001ee90  sub     sp, x29, #0x50
  10001ee94  ldp     x29, x30, [sp, #0x50]
  10001ee98  ldp     x20, x19, [sp, #0x40]
  10001ee9c  ldp     x22, x21, [sp, #0x30]
  10001eea0  ldp     x24, x23, [sp, #0x20]
  10001eea4  ldp     x26, x25, [sp, #0x10]
  10001eea8  ldp     x28, x27, [sp], #0x60
  10001eeac  ret
loc_10001eeb0:
  10001eeb0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10001eeb4:
  10001eeb4  mov     x20, x0
  10001eeb8  mov     x0, x21
  10001eebc  bl      _objc_release
loc_10001eec0:
  10001eec0  mov     x0, x21
  10001eec4  bl      _objc_release
loc_10001eec8:
  10001eec8  mov     x0, x19
loc_10001eecc:
  10001eecc  bl      _objc_release
  10001eed0  mov     x0, x20
  10001eed4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001eed8  b       loc_10001eeb4
  10001eedc  mov     x20, x0
  10001eee0  mov     x0, x21
  10001eee4  b       loc_10001eecc
  10001eee8  mov     x20, x0
  10001eeec  b       loc_10001eec8
  10001eef0  mov     x20, x0
  10001eef4  b       loc_10001eec0
  10001eef8  b       loc_10001eeb4

; ======================================================================
; -[ADChallengeData starsRequirementForWorld:]
; address 0x10001eefc  size 408  kind objc
; ======================================================================
  10001eefc  stp     x24, x23, [sp, #-0x40]!
  10001ef00  stp     x22, x21, [sp, #0x10]
  10001ef04  stp     x20, x19, [sp, #0x20]
  10001ef08  stp     x29, x30, [sp, #0x30]
  10001ef0c  add     x29, sp, #0x30
  10001ef10  mov     x0, x2
  10001ef14  bl      _objc_retain
  10001ef18  mov     x19, x0
  10001ef1c  adrp    x8, #0x10041d000
  10001ef20  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001ef24  adrp    x8, #0x100416000
  10001ef28  nop
  10001ef2c  ldr     x1, [x8, #0xb58]
  10001ef30  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001ef34  mov     x29, x29
  10001ef38  bl      _objc_retainAutoreleasedReturnValue
  10001ef3c  mov     x21, x0
  10001ef40  adrp    x8, #0x100416000
  10001ef44  nop
  10001ef48  ldr     x1, [x8, #0xd60]
  10001ef4c  adrp    x2, #0x1003ba000
  10001ef50  add     x2, x2, #0xe30                           ; @"challenges_index"
  10001ef54  adrp    x3, #0x1003b9000
  10001ef58  add     x3, x3, #0xa70                           ; @"plist"
  10001ef5c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10001ef60  mov     x29, x29
  10001ef64  bl      _objc_retainAutoreleasedReturnValue
  10001ef68  mov     x20, x0
  10001ef6c  mov     x0, x21
  10001ef70  bl      _objc_release
  10001ef74  adrp    x8, #0x10041d000
  10001ef78  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001ef7c  adrp    x8, #0x100417000
  10001ef80  nop
  10001ef84  ldr     x1, [x8, #0x258]
  10001ef88  mov     x2, x20
  10001ef8c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10001ef90  mov     x29, x29
  10001ef94  bl      _objc_retainAutoreleasedReturnValue
  10001ef98  mov     x23, x0
  10001ef9c  adrp    x8, #0x100417000
  10001efa0  nop
  10001efa4  ldr     x22, [x8, #0x40]
  10001efa8  mov     x1, x22
  10001efac  mov     x2, x19
  10001efb0  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1]
  10001efb4  mov     x29, x29
  10001efb8  bl      _objc_retainAutoreleasedReturnValue
  10001efbc  mov     x21, x0
  10001efc0  mov     x0, x23
  10001efc4  bl      _objc_release
  10001efc8  adrp    x2, #0x1003ba000
  10001efcc  add     x2, x2, #0xe70                           ; @"starsRequired"
  10001efd0  mov     x0, x21
  10001efd4  mov     x1, x22
  10001efd8  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"starsRequired"]
  10001efdc  mov     x29, x29
  10001efe0  bl      _objc_retainAutoreleasedReturnValue
  10001efe4  mov     x23, x0
  10001efe8  adrp    x8, #0x100417000
  10001efec  nop
  10001eff0  ldr     x1, [x8, #0x110]
  10001eff4  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"starsRequired"] intValue]
  10001eff8  mov     x22, x0
  10001effc  mov     x0, x23
  10001f000  bl      _objc_release
  10001f004  mov     x0, x21
  10001f008  bl      _objc_release
  10001f00c  mov     x0, x20
  10001f010  bl      _objc_release
  10001f014  mov     x0, x19
  10001f018  bl      _objc_release
  10001f01c  mov     x0, x22
  10001f020  ldp     x29, x30, [sp, #0x30]
  10001f024  ldp     x20, x19, [sp, #0x20]
  10001f028  ldp     x22, x21, [sp, #0x10]
  10001f02c  ldp     x24, x23, [sp], #0x40
  10001f030  ret
  10001f034  mov     x22, x0
  10001f038  b       loc_10001f084
  10001f03c  mov     x22, x0
  10001f040  mov     x0, x21
  10001f044  b       loc_10001f080
  10001f048  mov     x22, x0
  10001f04c  b       loc_10001f07c
  10001f050  mov     x1, x23
  10001f054  mov     x22, x0
  10001f058  mov     x0, x1
  10001f05c  b       loc_10001f078
  10001f060  mov     x22, x0
  10001f064  b       loc_10001f074
  10001f068  mov     x22, x0
  10001f06c  mov     x0, x23
  10001f070  bl      _objc_release
loc_10001f074:
  10001f074  mov     x0, x21
loc_10001f078:
  10001f078  bl      _objc_release
loc_10001f07c:
  10001f07c  mov     x0, x20
loc_10001f080:
  10001f080  bl      _objc_release
loc_10001f084:
  10001f084  mov     x0, x19
  10001f088  bl      _objc_release
  10001f08c  mov     x0, x22
  10001f090  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData numberOfChallengesForWorld:]
; address 0x10001f094  size 412  kind objc
; ======================================================================
  10001f094  stp     x24, x23, [sp, #-0x40]!
  10001f098  stp     x22, x21, [sp, #0x10]
  10001f09c  stp     x20, x19, [sp, #0x20]
  10001f0a0  stp     x29, x30, [sp, #0x30]
  10001f0a4  add     x29, sp, #0x30
  10001f0a8  mov     x0, x2
  10001f0ac  bl      _objc_retain
  10001f0b0  mov     x19, x0
  10001f0b4  adrp    x8, #0x10041d000
  10001f0b8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001f0bc  adrp    x8, #0x100416000
  10001f0c0  nop
  10001f0c4  ldr     x1, [x8, #0xb58]
  10001f0c8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001f0cc  mov     x29, x29
  10001f0d0  bl      _objc_retainAutoreleasedReturnValue
  10001f0d4  mov     x21, x0
  10001f0d8  adrp    x8, #0x100416000
  10001f0dc  nop
  10001f0e0  ldr     x1, [x8, #0xd60]
  10001f0e4  adrp    x2, #0x1003ba000
  10001f0e8  add     x2, x2, #0xe30                           ; @"challenges_index"
  10001f0ec  adrp    x3, #0x1003b9000
  10001f0f0  add     x3, x3, #0xa70                           ; @"plist"
  10001f0f4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10001f0f8  mov     x29, x29
  10001f0fc  bl      _objc_retainAutoreleasedReturnValue
  10001f100  mov     x20, x0
  10001f104  mov     x0, x21
  10001f108  bl      _objc_release
  10001f10c  adrp    x8, #0x10041d000
  10001f110  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001f114  adrp    x8, #0x100417000
  10001f118  nop
  10001f11c  ldr     x1, [x8, #0x258]
  10001f120  mov     x2, x20
  10001f124  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10001f128  mov     x29, x29
  10001f12c  bl      _objc_retainAutoreleasedReturnValue
  10001f130  mov     x21, x0
  10001f134  adrp    x8, #0x100417000
  10001f138  nop
  10001f13c  ldr     x22, [x8, #0x40]
  10001f140  mov     x1, x22
  10001f144  mov     x2, x19
  10001f148  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1]
  10001f14c  mov     x29, x29
  10001f150  bl      _objc_retainAutoreleasedReturnValue
  10001f154  mov     x23, x0
  10001f158  adrp    x2, #0x1003ba000
  10001f15c  add     x2, x2, #0xe50                           ; @"challenges"
  10001f160  mov     x1, x22
  10001f164  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"]
  10001f168  mov     x29, x29
  10001f16c  bl      _objc_retainAutoreleasedReturnValue
  10001f170  mov     x22, x0
  10001f174  mov     x0, x23
  10001f178  bl      _objc_release
  10001f17c  mov     x0, x21
  10001f180  bl      _objc_release
  10001f184  adrp    x8, #0x100416000
  10001f188  nop
  10001f18c  ldr     x1, [x8, #0xe30]
  10001f190  mov     x0, x22
  10001f194  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg1] objectForKey:@"challenges"] count]
  10001f198  mov     x21, x0
  10001f19c  mov     x0, x22
  10001f1a0  bl      _objc_release
  10001f1a4  mov     x0, x20
  10001f1a8  bl      _objc_release
  10001f1ac  mov     x0, x19
  10001f1b0  bl      _objc_release
  10001f1b4  mov     x0, x21
  10001f1b8  ldp     x29, x30, [sp, #0x30]
  10001f1bc  ldp     x20, x19, [sp, #0x20]
  10001f1c0  ldp     x22, x21, [sp, #0x10]
  10001f1c4  ldp     x24, x23, [sp], #0x40
  10001f1c8  ret
  10001f1cc  mov     x22, x0
  10001f1d0  b       loc_10001f220
  10001f1d4  mov     x22, x0
  10001f1d8  mov     x0, x21
  10001f1dc  b       loc_10001f21c
  10001f1e0  mov     x22, x0
  10001f1e4  b       loc_10001f218
  10001f1e8  mov     x22, x0
  10001f1ec  b       loc_10001f200
  10001f1f0  mov     x1, x23
  10001f1f4  mov     x22, x0
  10001f1f8  mov     x0, x1
  10001f1fc  bl      _objc_release
loc_10001f200:
  10001f200  mov     x0, x21
  10001f204  b       loc_10001f214
  10001f208  mov     x1, x22
  10001f20c  mov     x22, x0
  10001f210  mov     x0, x1
loc_10001f214:
  10001f214  bl      _objc_release
loc_10001f218:
  10001f218  mov     x0, x20
loc_10001f21c:
  10001f21c  bl      _objc_release
loc_10001f220:
  10001f220  mov     x0, x19
  10001f224  bl      _objc_release
  10001f228  mov     x0, x22
  10001f22c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData hasChallengeAfter:inWorld:]
; address 0x10001f230  size 764  kind objc
; ======================================================================
  10001f230  stp     x28, x27, [sp, #-0x60]!
  10001f234  stp     x26, x25, [sp, #0x10]
  10001f238  stp     x24, x23, [sp, #0x20]
  10001f23c  stp     x22, x21, [sp, #0x30]
  10001f240  stp     x20, x19, [sp, #0x40]
  10001f244  stp     x29, x30, [sp, #0x50]
  10001f248  add     x29, sp, #0x50
  10001f24c  sub     sp, sp, #0x10
  10001f250  mov     x20, x3
  10001f254  mov     x0, x2
  10001f258  bl      _objc_retain
  10001f25c  mov     x19, x0
  10001f260  mov     x0, x20
  10001f264  bl      _objc_retain
  10001f268  mov     x28, x0
  10001f26c  adrp    x20, #0x10041d000
  10001f270  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  10001f274  adrp    x8, #0x100416000
  10001f278  nop
  10001f27c  ldr     x26, [x8, #0xb58]
  10001f280  mov     x1, x26
  10001f284  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001f288  str     x19, [sp]
  10001f28c  mov     x29, x29
  10001f290  bl      _objc_retainAutoreleasedReturnValue
  10001f294  mov     x22, x0
  10001f298  adrp    x8, #0x100416000
  10001f29c  nop
  10001f2a0  ldr     x23, [x8, #0xd60]
  10001f2a4  adrp    x2, #0x1003ba000
  10001f2a8  add     x2, x2, #0xe30                           ; @"challenges_index"
  10001f2ac  adrp    x3, #0x1003b9000
  10001f2b0  add     x3, x3, #0xa70                           ; @"plist"
  10001f2b4  mov     x1, x23
  10001f2b8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10001f2bc  mov     x29, x29
  10001f2c0  bl      _objc_retainAutoreleasedReturnValue
  10001f2c4  mov     x21, x0
  10001f2c8  mov     x0, x22
  10001f2cc  bl      _objc_release
  10001f2d0  adrp    x19, #0x10041d000
  10001f2d4  ldr     x0, [x19, #0xef8]                        ; class NSDictionary
  10001f2d8  adrp    x8, #0x100417000
  10001f2dc  nop
  10001f2e0  ldr     x24, [x8, #0x258]
  10001f2e4  mov     x1, x24
  10001f2e8  mov     x2, x21
  10001f2ec  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10001f2f0  mov     x29, x29
  10001f2f4  bl      _objc_retainAutoreleasedReturnValue
  10001f2f8  mov     x27, x0
  10001f2fc  adrp    x8, #0x100417000
  10001f300  nop
  10001f304  ldr     x25, [x8, #0x40]
  10001f308  mov     x1, x25
  10001f30c  mov     x2, x28
  10001f310  str     x28, [sp, #8]
  10001f314  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2]
  10001f318  mov     x29, x29
  10001f31c  bl      _objc_retainAutoreleasedReturnValue
  10001f320  mov     x28, x0
  10001f324  adrp    x2, #0x1003ba000
  10001f328  add     x2, x2, #0xe50                           ; @"challenges"
  10001f32c  mov     x1, x25
  10001f330  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"]
  10001f334  mov     x29, x29
  10001f338  bl      _objc_retainAutoreleasedReturnValue
  10001f33c  mov     x22, x0
  10001f340  mov     x0, x28
  10001f344  bl      _objc_release
  10001f348  mov     x0, x27
  10001f34c  bl      _objc_release
  10001f350  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  10001f354  mov     x1, x26
  10001f358  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001f35c  mov     x29, x29
  10001f360  bl      _objc_retainAutoreleasedReturnValue
  10001f364  mov     x27, x0
  10001f368  adrp    x8, #0x100417000
  10001f36c  nop
  10001f370  ldr     x1, [x8, #0xa30]
  10001f374  mov     x0, x22
  10001f378  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject]
  10001f37c  mov     x29, x29
  10001f380  bl      _objc_retainAutoreleasedReturnValue
  10001f384  mov     x28, x0
  10001f388  adrp    x3, #0x1003b9000
  10001f38c  add     x3, x3, #0xa70                           ; @"plist"
  10001f390  mov     x0, x27
  10001f394  mov     x1, x23
  10001f398  mov     x2, x28
  10001f39c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]
  10001f3a0  mov     x29, x29
  10001f3a4  bl      _objc_retainAutoreleasedReturnValue
  10001f3a8  mov     x26, x0
  10001f3ac  mov     x0, x28
  10001f3b0  bl      _objc_release
  10001f3b4  mov     x0, x27
  10001f3b8  bl      _objc_release
  10001f3bc  ldr     x0, [x19, #0xef8]                        ; class NSDictionary
  10001f3c0  mov     x1, x24
  10001f3c4  mov     x2, x26
  10001f3c8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]]
  10001f3cc  mov     x29, x29
  10001f3d0  bl      _objc_retainAutoreleasedReturnValue
  10001f3d4  mov     x24, x0
  10001f3d8  adrp    x2, #0x1003b9000
  10001f3dc  add     x2, x2, #0xef0                           ; @"challenge_id"
  10001f3e0  mov     x1, x25
  10001f3e4  ldr     x20, [sp, #8]
  10001f3e8  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]] objectForKey:@"challenge_id"]
  10001f3ec  mov     x29, x29
  10001f3f0  bl      _objc_retainAutoreleasedReturnValue
  10001f3f4  mov     x25, x0
  10001f3f8  mov     x0, x24
  10001f3fc  bl      _objc_release
  10001f400  adrp    x8, #0x100416000
  10001f404  nop
  10001f408  ldr     x1, [x8, #0xf58]
  10001f40c  mov     x0, x25
  10001f410  ldr     x19, [sp]
  10001f414  mov     x2, x19
  10001f418  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]] objectForKey:@"challenge_id"] isEqualToString:arg1]
  10001f41c  eor     w23, w0, #1                              ; t1 = ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]] objectForKey:@"challenge_id"] isEqualToString:arg1] ^ 1)
  10001f420  mov     x0, x25
  10001f424  bl      _objc_release
  10001f428  mov     x0, x26
  10001f42c  bl      _objc_release
  10001f430  mov     x0, x22
  10001f434  bl      _objc_release
  10001f438  mov     x0, x21
  10001f43c  bl      _objc_release
  10001f440  mov     x0, x20
  10001f444  bl      _objc_release
  10001f448  mov     x0, x19
  10001f44c  bl      _objc_release
  10001f450  mov     x0, x23
  10001f454  sub     sp, x29, #0x50
  10001f458  ldp     x29, x30, [sp, #0x50]
  10001f45c  ldp     x20, x19, [sp, #0x40]
  10001f460  ldp     x22, x21, [sp, #0x30]
  10001f464  ldp     x24, x23, [sp, #0x20]
  10001f468  ldp     x26, x25, [sp, #0x10]
  10001f46c  ldp     x28, x27, [sp], #0x60
  10001f470  ret
  10001f474  stp     x19, x28, [sp]
  10001f478  mov     x23, x0
  10001f47c  b       loc_10001f514
  10001f480  str     x28, [sp, #8]
  10001f484  mov     x23, x0
  10001f488  mov     x0, x22
  10001f48c  b       loc_10001f510
  10001f490  str     x28, [sp, #8]
  10001f494  mov     x23, x0
  10001f498  b       loc_10001f50c
  10001f49c  mov     x23, x0
  10001f4a0  b       loc_10001f4b0
  10001f4a4  mov     x23, x0
  10001f4a8  mov     x0, x28
  10001f4ac  bl      _objc_release
loc_10001f4b0:
  10001f4b0  mov     x0, x27
  10001f4b4  b       loc_10001f508
  10001f4b8  mov     x23, x0
  10001f4bc  b       loc_10001f504
  10001f4c0  mov     x23, x0
  10001f4c4  b       loc_10001f4d4
  10001f4c8  mov     x23, x0
  10001f4cc  mov     x0, x28
  10001f4d0  bl      _objc_release
loc_10001f4d4:
  10001f4d4  mov     x0, x27
  10001f4d8  b       loc_10001f500
  10001f4dc  mov     x23, x0
  10001f4e0  b       loc_10001f4fc
  10001f4e4  mov     x23, x0
  10001f4e8  mov     x0, x24
  10001f4ec  b       loc_10001f4f8
  10001f4f0  mov     x23, x0
  10001f4f4  mov     x0, x25
loc_10001f4f8:
  10001f4f8  bl      _objc_release
loc_10001f4fc:
  10001f4fc  mov     x0, x26
loc_10001f500:
  10001f500  bl      _objc_release
loc_10001f504:
  10001f504  mov     x0, x22
loc_10001f508:
  10001f508  bl      _objc_release
loc_10001f50c:
  10001f50c  mov     x0, x21
loc_10001f510:
  10001f510  bl      _objc_release
loc_10001f514:
  10001f514  ldr     x0, [sp, #8]
  10001f518  bl      _objc_release
  10001f51c  ldr     x0, [sp]
  10001f520  bl      _objc_release
  10001f524  mov     x0, x23
  10001f528  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData challengeAfter:inWorld:]
; address 0x10001f52c  size 828  kind objc
; ======================================================================
  10001f52c  stp     x28, x27, [sp, #-0x60]!
  10001f530  stp     x26, x25, [sp, #0x10]
  10001f534  stp     x24, x23, [sp, #0x20]
  10001f538  stp     x22, x21, [sp, #0x30]
  10001f53c  stp     x20, x19, [sp, #0x40]
  10001f540  stp     x29, x30, [sp, #0x50]
  10001f544  add     x29, sp, #0x50
  10001f548  sub     sp, sp, #0x10
  10001f54c  mov     x20, x3
  10001f550  mov     x0, x2
  10001f554  bl      _objc_retain
  10001f558  str     x0, [sp, #8]
  10001f55c  mov     x0, x20
  10001f560  bl      _objc_retain
  10001f564  mov     x21, x0
  10001f568  adrp    x19, #0x10041d000
  10001f56c  ldr     x0, [x19, #0xee8]                        ; class NSBundle
  10001f570  adrp    x8, #0x100416000
  10001f574  nop
  10001f578  ldr     x26, [x8, #0xb58]
  10001f57c  mov     x1, x26
  10001f580  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001f584  mov     x29, x29
  10001f588  bl      _objc_retainAutoreleasedReturnValue
  10001f58c  mov     x22, x0
  10001f590  adrp    x8, #0x100416000
  10001f594  nop
  10001f598  ldr     x23, [x8, #0xd60]
  10001f59c  adrp    x2, #0x1003ba000
  10001f5a0  add     x2, x2, #0xe30                           ; @"challenges_index"
  10001f5a4  adrp    x3, #0x1003b9000
  10001f5a8  add     x3, x3, #0xa70                           ; @"plist"
  10001f5ac  mov     x1, x23
  10001f5b0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]
  10001f5b4  mov     x29, x29
  10001f5b8  bl      _objc_retainAutoreleasedReturnValue
  10001f5bc  mov     x25, x0
  10001f5c0  str     x25, [sp]
  10001f5c4  mov     x0, x22
  10001f5c8  bl      _objc_release
  10001f5cc  adrp    x20, #0x10041d000
  10001f5d0  ldr     x0, [x20, #0xef8]                        ; class NSDictionary
  10001f5d4  adrp    x8, #0x100417000
  10001f5d8  nop
  10001f5dc  ldr     x24, [x8, #0x258]
  10001f5e0  mov     x1, x24
  10001f5e4  mov     x2, x25
  10001f5e8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]]
  10001f5ec  mov     x29, x29
  10001f5f0  bl      _objc_retainAutoreleasedReturnValue
  10001f5f4  mov     x27, x0
  10001f5f8  adrp    x8, #0x100417000
  10001f5fc  nop
  10001f600  ldr     x25, [x8, #0x40]
  10001f604  mov     x1, x25
  10001f608  mov     x2, x21
  10001f60c  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2]
  10001f610  mov     x29, x29
  10001f614  bl      _objc_retainAutoreleasedReturnValue
  10001f618  mov     x28, x0
  10001f61c  adrp    x2, #0x1003ba000
  10001f620  add     x2, x2, #0xe50                           ; @"challenges"
  10001f624  mov     x1, x25
  10001f628  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"]
  10001f62c  mov     x29, x29
  10001f630  bl      _objc_retainAutoreleasedReturnValue
  10001f634  mov     x22, x0
  10001f638  mov     x0, x28
  10001f63c  bl      _objc_release
  10001f640  mov     x0, x27
  10001f644  bl      _objc_release
  10001f648  ldr     x0, [x19, #0xee8]                        ; class NSBundle
  10001f64c  mov     x1, x26
  10001f650  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001f654  mov     x29, x29
  10001f658  bl      _objc_retainAutoreleasedReturnValue
  10001f65c  mov     x26, x0
  10001f660  adrp    x8, #0x100417000
  10001f664  nop
  10001f668  ldr     x1, [x8, #0xa30]
  10001f66c  mov     x0, x22
  10001f670  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject]
  10001f674  mov     x29, x29
  10001f678  bl      _objc_retainAutoreleasedReturnValue
  10001f67c  mov     x27, x0
  10001f680  adrp    x3, #0x1003b9000
  10001f684  add     x3, x3, #0xa70                           ; @"plist"
  10001f688  mov     x0, x26
  10001f68c  mov     x1, x23
  10001f690  mov     x2, x27
  10001f694  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]
  10001f698  mov     x29, x29
  10001f69c  bl      _objc_retainAutoreleasedReturnValue
  10001f6a0  mov     x23, x0
  10001f6a4  mov     x0, x27
  10001f6a8  bl      _objc_release
  10001f6ac  mov     x0, x26
  10001f6b0  bl      _objc_release
  10001f6b4  ldr     x0, [x20, #0xef8]                        ; class NSDictionary
  10001f6b8  mov     x1, x24
  10001f6bc  mov     x2, x23
  10001f6c0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]]
  10001f6c4  mov     x29, x29
  10001f6c8  bl      _objc_retainAutoreleasedReturnValue
  10001f6cc  mov     x26, x0
  10001f6d0  adrp    x2, #0x1003b9000
  10001f6d4  add     x2, x2, #0xef0                           ; @"challenge_id"
  10001f6d8  mov     x1, x25
  10001f6dc  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]] objectForKey:@"challenge_id"]
  10001f6e0  mov     x29, x29
  10001f6e4  bl      _objc_retainAutoreleasedReturnValue
  10001f6e8  mov     x25, x0
  10001f6ec  mov     x0, x26
  10001f6f0  bl      _objc_release
  10001f6f4  adrp    x8, #0x100416000
  10001f6f8  nop
  10001f6fc  ldr     x1, [x8, #0xf58]
  10001f700  mov     x0, x25
  10001f704  ldr     x19, [sp, #8]
  10001f708  mov     x2, x19
  10001f70c  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]] objectForKey:@"challenge_id"] isEqualToString:arg1]
  10001f710  cbz     w0, loc_10001f728                        ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:[[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] lastObject] withExtension:@"plist"]] objectForKey:@"challenge_id"] isEqualToString:arg1] == 0)
  10001f714  adrp    x24, #0x1003b9000
  10001f718  add     x24, x24, #0x870                         ; @""
  10001f71c  mov     x0, x24
  10001f720  bl      _objc_retain
  10001f724  b       loc_10001f764
loc_10001f728:
  10001f728  adrp    x8, #0x100417000
  10001f72c  nop
  10001f730  ldr     x1, [x8, #0xa38]
  10001f734  mov     x0, x22
  10001f738  mov     x2, x19
  10001f73c  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] indexOfObject:arg1]
  10001f740  add     x2, x0, #1
  10001f744  adrp    x8, #0x100416000
  10001f748  nop
  10001f74c  ldr     x1, [x8, #0xc30]
  10001f750  mov     x0, x22
  10001f754  bl      _objc_msgSend                            ; [[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] objectAtIndex:([[[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"challenges_index" withExtension:@"plist"]] objectForKey:arg2] objectForKey:@"challenges"] indexOfObject:arg1] + 1)]
  10001f758  mov     x29, x29
  10001f75c  bl      _objc_retainAutoreleasedReturnValue
  10001f760  mov     x24, x0
loc_10001f764:
  10001f764  mov     x0, x25
  10001f768  bl      _objc_release
  10001f76c  mov     x0, x23
  10001f770  bl      _objc_release
  10001f774  mov     x0, x22
  10001f778  bl      _objc_release
  10001f77c  ldr     x0, [sp]
  10001f780  bl      _objc_release
  10001f784  mov     x0, x21
  10001f788  bl      _objc_release
  10001f78c  mov     x0, x19
  10001f790  bl      _objc_release
  10001f794  mov     x0, x24
  10001f798  sub     sp, x29, #0x50
  10001f79c  ldp     x29, x30, [sp, #0x50]
  10001f7a0  ldp     x20, x19, [sp, #0x40]
  10001f7a4  ldp     x22, x21, [sp, #0x30]
  10001f7a8  ldp     x24, x23, [sp, #0x20]
  10001f7ac  ldp     x26, x25, [sp, #0x10]
  10001f7b0  ldp     x28, x27, [sp], #0x60
  10001f7b4  b       _objc_autoreleaseReturnValue
  10001f7b8  mov     x24, x0
  10001f7bc  mov     x0, x25
  10001f7c0  bl      _objc_release
  10001f7c4  b       loc_10001f838
  10001f7c8  mov     x24, x0
  10001f7cc  b       loc_10001f850
  10001f7d0  mov     x24, x0
  10001f7d4  mov     x0, x22
  10001f7d8  b       loc_10001f84c
  10001f7dc  mov     x24, x0
  10001f7e0  b       loc_10001f848
  10001f7e4  mov     x24, x0
  10001f7e8  b       loc_10001f7f8
  10001f7ec  mov     x24, x0
  10001f7f0  mov     x0, x28
  10001f7f4  bl      _objc_release
loc_10001f7f8:
  10001f7f8  mov     x0, x27
  10001f7fc  b       loc_10001f844
  10001f800  mov     x24, x0
  10001f804  b       loc_10001f840
  10001f808  mov     x24, x0
  10001f80c  b       loc_10001f81c
  10001f810  mov     x24, x0
  10001f814  mov     x0, x27
  10001f818  bl      _objc_release
loc_10001f81c:
  10001f81c  mov     x0, x26
  10001f820  b       loc_10001f83c
  10001f824  mov     x24, x0
  10001f828  b       loc_10001f838
  10001f82c  mov     x24, x0
  10001f830  mov     x0, x26
  10001f834  bl      _objc_release
loc_10001f838:
  10001f838  mov     x0, x23
loc_10001f83c:
  10001f83c  bl      _objc_release
loc_10001f840:
  10001f840  mov     x0, x22
loc_10001f844:
  10001f844  bl      _objc_release
loc_10001f848:
  10001f848  ldr     x0, [sp]
loc_10001f84c:
  10001f84c  bl      _objc_release
loc_10001f850:
  10001f850  mov     x0, x21
  10001f854  bl      _objc_release
  10001f858  ldr     x0, [sp, #8]
  10001f85c  bl      _objc_release
  10001f860  mov     x0, x24
  10001f864  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADChallengeData hasWeaponForChallengeWithName:]
; address 0x10001f868  size 1068  kind objc
; ======================================================================
  10001f868  stp     x28, x27, [sp, #-0x60]!
  10001f86c  stp     x26, x25, [sp, #0x10]
  10001f870  stp     x24, x23, [sp, #0x20]
  10001f874  stp     x22, x21, [sp, #0x30]
  10001f878  stp     x20, x19, [sp, #0x40]
  10001f87c  stp     x29, x30, [sp, #0x50]
  10001f880  add     x29, sp, #0x50
  10001f884  sub     sp, sp, #0x1c0
  10001f888  adrp    x8, #0x1003b0000
  10001f88c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001f890  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10001f894  stur    x8, [x29, #-0x58]
  10001f898  mov     x0, x2
  10001f89c  bl      _objc_retain
  10001f8a0  mov     x20, x0
  10001f8a4  adrp    x8, #0x10041d000
  10001f8a8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001f8ac  adrp    x8, #0x100416000
  10001f8b0  nop
  10001f8b4  ldr     x1, [x8, #0xb58]
  10001f8b8  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001f8bc  mov     x29, x29
  10001f8c0  bl      _objc_retainAutoreleasedReturnValue
  10001f8c4  mov     x19, x0
  10001f8c8  adrp    x8, #0x100416000
  10001f8cc  nop
  10001f8d0  ldr     x1, [x8, #0xd60]
  10001f8d4  adrp    x3, #0x1003b9000
  10001f8d8  add     x3, x3, #0xa70                           ; @"plist"
  10001f8dc  mov     x2, x20
  10001f8e0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  10001f8e4  str     x20, [sp, #0x18]
  10001f8e8  mov     x29, x29
  10001f8ec  bl      _objc_retainAutoreleasedReturnValue
  10001f8f0  mov     x20, x0
  10001f8f4  str     x20, [sp, #0x10]
  10001f8f8  mov     x0, x19
  10001f8fc  bl      _objc_release
  10001f900  adrp    x8, #0x10041d000
  10001f904  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001f908  adrp    x8, #0x100417000
  10001f90c  nop
  10001f910  ldr     x1, [x8, #0x258]
  10001f914  mov     x2, x20
  10001f918  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  10001f91c  mov     x29, x29
  10001f920  bl      _objc_retainAutoreleasedReturnValue
  10001f924  mov     x28, x0
  10001f928  stp     xzr, xzr, [sp, #0xa8]
  10001f92c  stp     xzr, xzr, [sp, #0x98]
  10001f930  stp     xzr, xzr, [sp, #0x88]
  10001f934  stp     xzr, xzr, [sp, #0x78]
  10001f938  adrp    x8, #0x100417000
  10001f93c  nop
  10001f940  ldr     x24, [x8, #0x40]
  10001f944  adrp    x2, #0x1003b9000
  10001f948  add     x2, x2, #0xf70                           ; @"weapons"
  10001f94c  mov     x1, x24
  10001f950  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"]
  10001f954  str     x28, [sp, #0x20]
  10001f958  mov     x29, x29
  10001f95c  bl      _objc_retainAutoreleasedReturnValue
  10001f960  str     x0, [sp, #0x30]
  10001f964  adrp    x8, #0x100416000
  10001f968  nop
  10001f96c  ldr     x1, [x8, #0xe00]
  10001f970  str     x1, [sp, #0x28]
  10001f974  add     x2, sp, #0x78
  10001f978  sub     x3, x29, #0xd8
  10001f97c  mov     w4, #0x10
  10001f980  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16]
  10001f984  mov     x25, x0
  10001f988  cbz     x25, loc_10001fa60                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16] == 0)
  10001f98c  ldr     x8, [sp, #0x88]
  10001f990  ldr     x22, [x8]
  10001f994  adrp    x8, #0x100416000
  10001f998  nop
  10001f99c  ldr     x26, [x8, #0xec8]
  10001f9a0  adrp    x8, #0x100417000
  10001f9a4  add     x8, x8, #0x1d8                           ; &@selector(hasUnlockedWeaponWithName:)
  10001f9a8  ldr     x27, [x8]
  10001f9ac  adrp    x28, #0x1003b9000
  10001f9b0  add     x28, x28, #0xdb0                         ; @"name"
loc_10001f9b4:
  10001f9b4  mov     x23, #0
loc_10001f9b8:
  10001f9b8  ldr     x8, [sp, #0x88]
  10001f9bc  ldr     x8, [x8]
  10001f9c0  cmp     x8, x22
  10001f9c4  b.eq    loc_10001f9d0                            ; if (x8 == x22)
  10001f9c8  ldr     x0, [sp, #0x30]
  10001f9cc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"])
loc_10001f9d0:
  10001f9d0  ldr     x8, [sp, #0x80]
  10001f9d4  ldr     x20, [x8, x23, lsl #3]
  10001f9d8  adrp    x8, #0x10041d000
  10001f9dc  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001f9e0  mov     x1, x26
  10001f9e4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001f9e8  mov     x29, x29
  10001f9ec  bl      _objc_retainAutoreleasedReturnValue
  10001f9f0  mov     x19, x0
  10001f9f4  mov     x0, x20
  10001f9f8  mov     x1, x24
  10001f9fc  mov     x2, x28
  10001fa00  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10001fa04  mov     x29, x29
  10001fa08  bl      _objc_retainAutoreleasedReturnValue
  10001fa0c  mov     x20, x0
  10001fa10  mov     x0, x19
  10001fa14  mov     x1, x27
  10001fa18  mov     x2, x20
  10001fa1c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  10001fa20  mov     x21, x0
  10001fa24  mov     x0, x20
  10001fa28  bl      _objc_release
  10001fa2c  mov     x0, x19
  10001fa30  bl      _objc_release
  10001fa34  tbz     w21, #0, loc_10001fb68                   ; if (!([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] & 1))
  10001fa38  add     x23, x23, #1
  10001fa3c  cmp     x23, x25
  10001fa40  b.lo    loc_10001f9b8                            ; if ((x23 + 1) <u [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectFo…)
  10001fa44  add     x2, sp, #0x78
  10001fa48  sub     x3, x29, #0xd8
  10001fa4c  mov     w4, #0x10
  10001fa50  ldp     x1, x0, [sp, #0x28]
  10001fa54  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16]
  10001fa58  mov     x25, x0
  10001fa5c  cbnz    x25, loc_10001f9b4                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x78] objects:&x29[-0xd8] count:16] != 0)
loc_10001fa60:
  10001fa60  ldr     x0, [sp, #0x30]
  10001fa64  bl      _objc_release
  10001fa68  stp     xzr, xzr, [sp, #0x68]
  10001fa6c  stp     xzr, xzr, [sp, #0x58]
  10001fa70  stp     xzr, xzr, [sp, #0x48]
  10001fa74  stp     xzr, xzr, [sp, #0x38]
  10001fa78  adrp    x2, #0x1003ba000
  10001fa7c  add     x2, x2, #0xe90                           ; @"challenges_requirement"
  10001fa80  ldr     x28, [sp, #0x20]
  10001fa84  mov     x0, x28
  10001fa88  mov     x1, x24
  10001fa8c  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"]
  10001fa90  mov     x29, x29
  10001fa94  bl      _objc_retainAutoreleasedReturnValue
  10001fa98  mov     x23, x0
  10001fa9c  add     x2, sp, #0x38
  10001faa0  add     x3, sp, #0xb8
  10001faa4  mov     w4, #0x10
  10001faa8  ldr     x1, [sp, #0x28]
  10001faac  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16]
  10001fab0  mov     x25, x0
  10001fab4  cbz     x25, loc_10001fb60                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16] == 0)
  10001fab8  ldr     x8, [sp, #0x48]
  10001fabc  adrp    x9, #0x100416000
  10001fac0  add     x9, x9, #0xdf0                           ; &@selector(sharedChallengeData)
  10001fac4  ldr     x21, [x8]
  10001fac8  ldr     x24, [x9]
  10001facc  adrp    x8, #0x100416000
  10001fad0  add     x8, x8, #0xdf8                           ; &@selector(hasCompletedChallengeWithName:)
  10001fad4  ldr     x26, [x8]
  10001fad8  adrp    x22, #0x10041d000
loc_10001fadc:
  10001fadc  mov     x27, #0
loc_10001fae0:
  10001fae0  ldr     x8, [sp, #0x48]
  10001fae4  ldr     x8, [x8]
  10001fae8  cmp     x8, x21
  10001faec  b.eq    loc_10001faf8                            ; if (x8 == x21)
  10001faf0  mov     x0, x23
  10001faf4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"])
loc_10001faf8:
  10001faf8  ldr     x8, [sp, #0x40]
  10001fafc  ldr     x19, [x8, x27, lsl #3]
  10001fb00  ldr     x0, [x22, #0xf50]                        ; class ADChallengeData
  10001fb04  mov     x1, x24
  10001fb08  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10001fb0c  mov     x29, x29
  10001fb10  bl      _objc_retainAutoreleasedReturnValue
  10001fb14  mov     x20, x0
  10001fb18  mov     x1, x26
  10001fb1c  mov     x2, x19
  10001fb20  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2]
  10001fb24  mov     x19, x0
  10001fb28  mov     x0, x20
  10001fb2c  bl      _objc_release
  10001fb30  tbz     w19, #0, loc_10001fb80                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2] & 1))
  10001fb34  add     x27, x27, #1
  10001fb38  cmp     x27, x25
  10001fb3c  b.lo    loc_10001fae0                            ; if ((x27 + 1) <u [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectFo…)
  10001fb40  add     x2, sp, #0x38
  10001fb44  add     x3, sp, #0xb8
  10001fb48  mov     w4, #0x10
  10001fb4c  mov     x0, x23
  10001fb50  ldr     x1, [sp, #0x28]
  10001fb54  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16]
  10001fb58  mov     x25, x0
  10001fb5c  cbnz    x25, loc_10001fadc                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0xb8] count:16] != 0)
loc_10001fb60:
  10001fb60  mov     w19, #1
  10001fb64  b       loc_10001fb84
loc_10001fb68:
  10001fb68  ldr     x0, [sp, #0x30]
  10001fb6c  bl      _objc_release
  10001fb70  mov     w19, #0
  10001fb74  ldp     x21, x20, [sp, #0x10]
  10001fb78  ldr     x28, [sp, #0x20]
  10001fb7c  b       loc_10001fb90
loc_10001fb80:
  10001fb80  mov     w19, #0
loc_10001fb84:
  10001fb84  mov     x0, x23
  10001fb88  bl      _objc_release
  10001fb8c  ldp     x21, x20, [sp, #0x10]
loc_10001fb90:
  10001fb90  adrp    x22, #0x1003b0000
  10001fb94  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  10001fb98  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  10001fb9c  mov     x0, x28
  10001fba0  bl      _objc_release
  10001fba4  mov     x0, x21
  10001fba8  bl      _objc_release
  10001fbac  mov     x0, x20
  10001fbb0  bl      _objc_release
  10001fbb4  ldur    x8, [x29, #-0x58]
  10001fbb8  sub     x8, x22, x8
  10001fbbc  cbnz    x8, loc_10001fbe4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001fbc0  mov     x0, x19
  10001fbc4  sub     sp, x29, #0x50
  10001fbc8  ldp     x29, x30, [sp, #0x50]
  10001fbcc  ldp     x20, x19, [sp, #0x40]
  10001fbd0  ldp     x22, x21, [sp, #0x30]
  10001fbd4  ldp     x24, x23, [sp, #0x20]
  10001fbd8  ldp     x26, x25, [sp, #0x10]
  10001fbdc  ldp     x28, x27, [sp], #0x60
  10001fbe0  ret
loc_10001fbe4:
  10001fbe4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10001fbe8:
  10001fbe8  mov     x22, x0
  10001fbec  b       loc_10001fc0c
  10001fbf0  mov     x22, x0
  10001fbf4  b       loc_10001fc04
  10001fbf8  mov     x22, x0
  10001fbfc  mov     x0, x20
  10001fc00  bl      _objc_release
loc_10001fc04:
  10001fc04  mov     x0, x19
  10001fc08  bl      _objc_release
loc_10001fc0c:
  10001fc0c  ldr     x0, [sp, #0x30]
  10001fc10  bl      _objc_release
  10001fc14  b       loc_10001fc34
loc_10001fc18:
  10001fc18  mov     x22, x0
  10001fc1c  b       loc_10001fc2c
  10001fc20  mov     x22, x0
  10001fc24  mov     x0, x20
  10001fc28  bl      _objc_release
loc_10001fc2c:
  10001fc2c  mov     x0, x23
  10001fc30  bl      _objc_release
loc_10001fc34:
  10001fc34  ldr     x0, [sp, #0x20]
  10001fc38  bl      _objc_release
loc_10001fc3c:
  10001fc3c  ldr     x0, [sp, #0x10]
loc_10001fc40:
  10001fc40  bl      _objc_release
loc_10001fc44:
  10001fc44  ldr     x0, [sp, #0x18]
  10001fc48  bl      _objc_release
  10001fc4c  mov     x0, x22
  10001fc50  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001fc54  str     x28, [sp, #0x20]
  10001fc58  mov     x22, x0
  10001fc5c  b       loc_10001fc34
  10001fc60  str     x20, [sp, #0x18]
  10001fc64  mov     x22, x0
  10001fc68  b       loc_10001fc44
  10001fc6c  str     x20, [sp, #0x18]
  10001fc70  mov     x22, x0
  10001fc74  mov     x0, x19
  10001fc78  b       loc_10001fc40
  10001fc7c  mov     x22, x0
  10001fc80  b       loc_10001fc3c
  10001fc84  b       loc_10001fbe8
  10001fc88  b       loc_10001fbe8
  10001fc8c  b       loc_10001fc18
  10001fc90  b       loc_10001fc18

; ======================================================================
; -[ADChallengeData needsWeaponToCompleteChallengeWithName:]
; address 0x10001fc94  size 808  kind objc
; ======================================================================
  10001fc94  stp     x28, x27, [sp, #-0x60]!
  10001fc98  stp     x26, x25, [sp, #0x10]
  10001fc9c  stp     x24, x23, [sp, #0x20]
  10001fca0  stp     x22, x21, [sp, #0x30]
  10001fca4  stp     x20, x19, [sp, #0x40]
  10001fca8  stp     x29, x30, [sp, #0x50]
  10001fcac  add     x29, sp, #0x50
  10001fcb0  sub     sp, sp, #0x100
  10001fcb4  mov     x19, x0
  10001fcb8  adrp    x8, #0x1003b0000
  10001fcbc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10001fcc0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10001fcc4  stur    x8, [x29, #-0x58]
  10001fcc8  mov     x0, x2
  10001fccc  bl      _objc_retain
  10001fcd0  mov     x21, x0
  10001fcd4  adrp    x8, #0x100417000
  10001fcd8  nop
  10001fcdc  ldr     x1, [x8, #0x170]
  10001fce0  mov     x0, x19
  10001fce4  mov     x2, x21
  10001fce8  bl      _objc_msgSend                            ; [self hasChallengeRequirementsForChallengeWithName:arg1]
  10001fcec  mov     x25, x0
  10001fcf0  adrp    x8, #0x10041d000
  10001fcf4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10001fcf8  adrp    x8, #0x100416000
  10001fcfc  nop
  10001fd00  ldr     x1, [x8, #0xb58]
  10001fd04  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10001fd08  mov     x29, x29
  10001fd0c  bl      _objc_retainAutoreleasedReturnValue
  10001fd10  mov     x20, x0
  10001fd14  adrp    x8, #0x100416000
  10001fd18  nop
  10001fd1c  ldr     x1, [x8, #0xd60]
  10001fd20  adrp    x3, #0x1003b9000
  10001fd24  add     x3, x3, #0xa70                           ; @"plist"
  10001fd28  mov     x2, x21
  10001fd2c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  10001fd30  mov     x29, x29
  10001fd34  bl      _objc_retainAutoreleasedReturnValue
  10001fd38  mov     x19, x0
  10001fd3c  mov     x0, x20
  10001fd40  bl      _objc_release
  10001fd44  adrp    x8, #0x10041d000
  10001fd48  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10001fd4c  adrp    x8, #0x100417000
  10001fd50  nop
  10001fd54  ldr     x1, [x8, #0x258]
  10001fd58  mov     x2, x19
  10001fd5c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  10001fd60  mov     x29, x29
  10001fd64  bl      _objc_retainAutoreleasedReturnValue
  10001fd68  mov     x22, x0
  10001fd6c  stp     xzr, xzr, [sp, #0x68]
  10001fd70  stp     xzr, xzr, [sp, #0x58]
  10001fd74  stp     xzr, xzr, [sp, #0x48]
  10001fd78  stp     xzr, xzr, [sp, #0x38]
  10001fd7c  adrp    x8, #0x100417000
  10001fd80  nop
  10001fd84  ldr     x23, [x8, #0x40]
  10001fd88  adrp    x2, #0x1003b9000
  10001fd8c  add     x2, x2, #0xf70                           ; @"weapons"
  10001fd90  mov     x1, x23
  10001fd94  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"]
  10001fd98  mov     x29, x29
  10001fd9c  bl      _objc_retainAutoreleasedReturnValue
  10001fda0  str     x0, [sp, #0x30]
  10001fda4  adrp    x8, #0x100416000
  10001fda8  nop
  10001fdac  ldr     x1, [x8, #0xe00]
  10001fdb0  str     x1, [sp, #0x28]
  10001fdb4  add     x2, sp, #0x38
  10001fdb8  add     x3, sp, #0x78
  10001fdbc  mov     w4, #0x10
  10001fdc0  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10001fdc4  mov     x26, x0
  10001fdc8  cbz     x26, loc_10001fec4                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  10001fdcc  stp     x22, x19, [sp, #0x10]
  10001fdd0  str     x21, [sp, #0x20]
  10001fdd4  ldr     x8, [sp, #0x48]
  10001fdd8  ldr     x24, [x8]
  10001fddc  adrp    x8, #0x100416000
  10001fde0  add     x8, x8, #0xec8                           ; &@selector(sharedInventory)
  10001fde4  adrp    x9, #0x100417000
  10001fde8  add     x9, x9, #0x1d8                           ; &@selector(hasUnlockedWeaponWithName:)
  10001fdec  ldr     x27, [x8]
  10001fdf0  ldr     x28, [x9]
  10001fdf4  eor     w22, w25, #1
loc_10001fdf8:
  10001fdf8  mov     x25, #0
loc_10001fdfc:
  10001fdfc  ldr     x8, [sp, #0x48]
  10001fe00  ldr     x8, [x8]
  10001fe04  cmp     x8, x24
  10001fe08  b.eq    loc_10001fe14                            ; if (x8 == x24)
  10001fe0c  ldr     x0, [sp, #0x30]
  10001fe10  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"])
loc_10001fe14:
  10001fe14  ldr     x8, [sp, #0x40]
  10001fe18  ldr     x19, [x8, x25, lsl #3]
  10001fe1c  adrp    x8, #0x10041d000
  10001fe20  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  10001fe24  mov     x1, x27
  10001fe28  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  10001fe2c  mov     x29, x29
  10001fe30  bl      _objc_retainAutoreleasedReturnValue
  10001fe34  mov     x20, x0
  10001fe38  mov     x0, x19
  10001fe3c  mov     x1, x23
  10001fe40  adrp    x2, #0x1003b9000
  10001fe44  add     x2, x2, #0xdb0                           ; @"name"
  10001fe48  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  10001fe4c  mov     x29, x29
  10001fe50  bl      _objc_retainAutoreleasedReturnValue
  10001fe54  mov     x19, x0
  10001fe58  mov     x0, x20
  10001fe5c  mov     x1, x28
  10001fe60  mov     x2, x19
  10001fe64  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]]
  10001fe68  mov     x21, x0
  10001fe6c  mov     x0, x19
  10001fe70  bl      _objc_release
  10001fe74  mov     x0, x20
  10001fe78  bl      _objc_release
  10001fe7c  orr     w8, w21, w22                             ; t1 = ([[ADInventory sharedInventory] hasUnlockedWeaponWithName:[x0 objectForKey:@"name"]] | ([self hasChallengeRequirementsForChallengeWithName:arg1] ^ 1))
  10001fe80  tbz     w8, #0, loc_10001feb4                    ; if (!(t1 & 1))
  10001fe84  add     x25, x25, #1
  10001fe88  cmp     x25, x26
  10001fe8c  b.lo    loc_10001fdfc                            ; if ((x25 + 1) <u [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectFo…)
  10001fe90  add     x2, sp, #0x38
  10001fe94  add     x3, sp, #0x78
  10001fe98  mov     w4, #0x10
  10001fe9c  ldp     x1, x0, [sp, #0x28]
  10001fea0  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  10001fea4  mov     x26, x0
  10001fea8  cbnz    x26, loc_10001fdf8                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"weapons"] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
  10001feac  mov     w20, #0
  10001feb0  b       loc_10001feb8
loc_10001feb4:
  10001feb4  mov     w20, #1
loc_10001feb8:
  10001feb8  ldp     x19, x21, [sp, #0x18]
  10001febc  ldr     x22, [sp, #0x10]
  10001fec0  b       loc_10001fec8
loc_10001fec4:
  10001fec4  mov     w20, #0
loc_10001fec8:
  10001fec8  ldr     x0, [sp, #0x30]
  10001fecc  bl      _objc_release
  10001fed0  mov     x0, x22
  10001fed4  bl      _objc_release
  10001fed8  mov     x0, x19
  10001fedc  bl      _objc_release
  10001fee0  mov     x0, x21
  10001fee4  bl      _objc_release
  10001fee8  ldur    x8, [x29, #-0x58]
  10001feec  adrp    x9, #0x1003b0000
  10001fef0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10001fef4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10001fef8  sub     x8, x9, x8
  10001fefc  cbnz    x8, loc_10001ff24                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10001ff00  mov     x0, x20
  10001ff04  sub     sp, x29, #0x50
  10001ff08  ldp     x29, x30, [sp, #0x50]
  10001ff0c  ldp     x20, x19, [sp, #0x40]
  10001ff10  ldp     x22, x21, [sp, #0x30]
  10001ff14  ldp     x24, x23, [sp, #0x20]
  10001ff18  ldp     x26, x25, [sp, #0x10]
  10001ff1c  ldp     x28, x27, [sp], #0x60
  10001ff20  ret
loc_10001ff24:
  10001ff24  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10001ff28:
  10001ff28  mov     x23, x0
  10001ff2c  b       loc_10001ff4c
  10001ff30  mov     x23, x0
  10001ff34  b       loc_10001ff44
  10001ff38  mov     x23, x0
  10001ff3c  mov     x0, x19
  10001ff40  bl      _objc_release
loc_10001ff44:
  10001ff44  mov     x0, x20
  10001ff48  bl      _objc_release
loc_10001ff4c:
  10001ff4c  ldr     x0, [sp, #0x30]
  10001ff50  bl      _objc_release
loc_10001ff54:
  10001ff54  ldr     x0, [sp, #0x10]
  10001ff58  bl      _objc_release
loc_10001ff5c:
  10001ff5c  ldr     x0, [sp, #0x18]
loc_10001ff60:
  10001ff60  bl      _objc_release
loc_10001ff64:
  10001ff64  ldr     x0, [sp, #0x20]
  10001ff68  bl      _objc_release
  10001ff6c  mov     x0, x23
  10001ff70  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001ff74  str     x21, [sp, #0x20]
  10001ff78  mov     x23, x0
  10001ff7c  b       loc_10001ff64
  10001ff80  str     x21, [sp, #0x20]
  10001ff84  mov     x23, x0
  10001ff88  mov     x0, x20
  10001ff8c  b       loc_10001ff60
  10001ff90  stp     x19, x21, [sp, #0x18]
  10001ff94  mov     x23, x0
  10001ff98  b       loc_10001ff5c
  10001ff9c  stp     x22, x19, [sp, #0x10]
  10001ffa0  str     x21, [sp, #0x20]
  10001ffa4  mov     x23, x0
  10001ffa8  b       loc_10001ff54
  10001ffac  stp     x22, x19, [sp, #0x10]
  10001ffb0  str     x21, [sp, #0x20]
  10001ffb4  b       loc_10001ff28
  10001ffb8  b       loc_10001ff28

; ======================================================================
; -[ADChallengeData hasChallengeRequirementsForChallengeWithName:]
; address 0x10001ffbc  size 708  kind objc
; ======================================================================
  10001ffbc  stp     x28, x27, [sp, #-0x60]!
  10001ffc0  stp     x26, x25, [sp, #0x10]
  10001ffc4  stp     x24, x23, [sp, #0x20]
  10001ffc8  stp     x22, x21, [sp, #0x30]
  10001ffcc  stp     x20, x19, [sp, #0x40]
  10001ffd0  stp     x29, x30, [sp, #0x50]
  10001ffd4  add     x29, sp, #0x50
  10001ffd8  sub     sp, sp, #0xf0
  10001ffdc  adrp    x24, #0x1003b0000
  10001ffe0  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10001ffe4  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10001ffe8  stur    x24, [x29, #-0x58]
  10001ffec  mov     x0, x2
  10001fff0  bl      _objc_retain
  10001fff4  mov     x19, x0
  10001fff8  adrp    x8, #0x10041d000
  10001fffc  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100020000  adrp    x8, #0x100416000
  100020004  nop
  100020008  ldr     x1, [x8, #0xb58]
  10002000c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100020010  mov     x29, x29
  100020014  bl      _objc_retainAutoreleasedReturnValue
  100020018  mov     x21, x0
  10002001c  adrp    x8, #0x100416000
  100020020  nop
  100020024  ldr     x1, [x8, #0xd60]
  100020028  adrp    x3, #0x1003b9000
  10002002c  add     x3, x3, #0xa70                           ; @"plist"
  100020030  mov     x2, x19
  100020034  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  100020038  mov     x29, x29
  10002003c  bl      _objc_retainAutoreleasedReturnValue
  100020040  mov     x20, x0
  100020044  mov     x0, x21
  100020048  bl      _objc_release
  10002004c  adrp    x8, #0x10041d000
  100020050  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100020054  adrp    x8, #0x100417000
  100020058  nop
  10002005c  ldr     x1, [x8, #0x258]
  100020060  mov     x2, x20
  100020064  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  100020068  mov     x29, x29
  10002006c  bl      _objc_retainAutoreleasedReturnValue
  100020070  mov     x21, x0
  100020074  stp     xzr, xzr, [sp, #0x58]
  100020078  stp     xzr, xzr, [sp, #0x48]
  10002007c  stp     xzr, xzr, [sp, #0x38]
  100020080  stp     xzr, xzr, [sp, #0x28]
  100020084  adrp    x8, #0x100417000
  100020088  nop
  10002008c  ldr     x1, [x8, #0x40]
  100020090  adrp    x2, #0x1003ba000
  100020094  add     x2, x2, #0xe90                           ; @"challenges_requirement"
  100020098  bl      _objc_msgSend                            ; [[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"]
  10002009c  mov     x29, x29
  1000200a0  bl      _objc_retainAutoreleasedReturnValue
  1000200a4  mov     x22, x0
  1000200a8  adrp    x8, #0x100416000
  1000200ac  nop
  1000200b0  ldr     x23, [x8, #0xe00]
  1000200b4  add     x2, sp, #0x28
  1000200b8  add     x3, sp, #0x68
  1000200bc  mov     w4, #0x10
  1000200c0  mov     x1, x23
  1000200c4  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000200c8  mov     x25, x0
  1000200cc  cbz     x25, loc_1000201a4                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1000200d0  stp     x21, x20, [sp, #0x10]
  1000200d4  str     x19, [sp, #0x20]
  1000200d8  ldr     x8, [sp, #0x38]
  1000200dc  adrp    x9, #0x100416000
  1000200e0  add     x9, x9, #0xdf0                           ; &@selector(sharedChallengeData)
  1000200e4  ldr     x19, [x8]
  1000200e8  ldr     x24, [x9]
  1000200ec  adrp    x8, #0x100416000
  1000200f0  add     x8, x8, #0xdf8                           ; &@selector(hasCompletedChallengeWithName:)
  1000200f4  ldr     x26, [x8]
  1000200f8  adrp    x20, #0x10041d000
loc_1000200fc:
  1000200fc  mov     x21, #0
loc_100020100:
  100020100  ldr     x8, [sp, #0x38]
  100020104  ldr     x8, [x8]
  100020108  cmp     x8, x19
  10002010c  b.eq    loc_100020118                            ; if (x8 == x19)
  100020110  mov     x0, x22
  100020114  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"])
loc_100020118:
  100020118  ldr     x8, [sp, #0x30]
  10002011c  ldr     x27, [x8, x21, lsl #3]
  100020120  ldr     x0, [x20, #0xf50]                        ; class ADChallengeData
  100020124  mov     x1, x24
  100020128  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  10002012c  mov     x29, x29
  100020130  bl      _objc_retainAutoreleasedReturnValue
  100020134  mov     x28, x0
  100020138  mov     x1, x26
  10002013c  mov     x2, x27
  100020140  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2]
  100020144  mov     x27, x0
  100020148  mov     x0, x28
  10002014c  bl      _objc_release
  100020150  tbz     w27, #0, loc_100020188                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:x2] & 1))
  100020154  add     x21, x21, #1
  100020158  cmp     x21, x25
  10002015c  b.lo    loc_100020100                            ; if ((x21 + 1) <u [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectFo…)
  100020160  add     x2, sp, #0x28
  100020164  add     x3, sp, #0x68
  100020168  mov     w4, #0x10
  10002016c  mov     x0, x22
  100020170  mov     x1, x23
  100020174  bl      _objc_msgSend                            ; [[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  100020178  mov     x25, x0
  10002017c  cbnz    x25, loc_1000200fc                       ; if ([[[NSDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"challenges_requirement"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
  100020180  mov     w23, #1
  100020184  b       loc_10002018c
loc_100020188:
  100020188  mov     w23, #0
loc_10002018c:
  10002018c  ldp     x20, x19, [sp, #0x18]
  100020190  adrp    x24, #0x1003b0000
  100020194  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100020198  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10002019c  ldr     x21, [sp, #0x10]
  1000201a0  b       loc_1000201a8
loc_1000201a4:
  1000201a4  mov     w23, #1
loc_1000201a8:
  1000201a8  mov     x0, x22
  1000201ac  bl      _objc_release
  1000201b0  mov     x0, x21
  1000201b4  bl      _objc_release
  1000201b8  mov     x0, x20
  1000201bc  bl      _objc_release
  1000201c0  mov     x0, x19
  1000201c4  bl      _objc_release
  1000201c8  ldur    x8, [x29, #-0x58]
  1000201cc  sub     x8, x24, x8
  1000201d0  cbnz    x8, loc_1000201f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000201d4  mov     x0, x23
  1000201d8  sub     sp, x29, #0x50
  1000201dc  ldp     x29, x30, [sp, #0x50]
  1000201e0  ldp     x20, x19, [sp, #0x40]
  1000201e4  ldp     x22, x21, [sp, #0x30]
  1000201e8  ldp     x24, x23, [sp, #0x20]
  1000201ec  ldp     x26, x25, [sp, #0x10]
  1000201f0  ldp     x28, x27, [sp], #0x60
  1000201f4  ret
loc_1000201f8:
  1000201f8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000201fc:
  1000201fc  mov     x23, x0
  100020200  b       loc_100020210
  100020204  mov     x23, x0
  100020208  mov     x0, x28
  10002020c  bl      _objc_release
loc_100020210:
  100020210  mov     x0, x22
  100020214  bl      _objc_release
loc_100020218:
  100020218  ldr     x0, [sp, #0x10]
  10002021c  bl      _objc_release
loc_100020220:
  100020220  ldr     x0, [sp, #0x18]
loc_100020224:
  100020224  bl      _objc_release
loc_100020228:
  100020228  ldr     x0, [sp, #0x20]
  10002022c  bl      _objc_release
  100020230  mov     x0, x23
  100020234  bl      __Unwind_Resume                          ; Unwind_Resume()
  100020238  str     x19, [sp, #0x20]
  10002023c  mov     x23, x0
  100020240  b       loc_100020228
  100020244  str     x19, [sp, #0x20]
  100020248  mov     x23, x0
  10002024c  mov     x0, x21
  100020250  b       loc_100020224
  100020254  stp     x20, x19, [sp, #0x18]
  100020258  mov     x23, x0
  10002025c  b       loc_100020220
  100020260  stp     x21, x20, [sp, #0x10]
  100020264  str     x19, [sp, #0x20]
  100020268  mov     x23, x0
  10002026c  b       loc_100020218
  100020270  stp     x21, x20, [sp, #0x10]
  100020274  str     x19, [sp, #0x20]
  100020278  b       loc_1000201fc
  10002027c  b       loc_1000201fc

; ======================================================================
; -[ADChallengeData challengeData]
; address 0x100020280  size 16  kind objc
; ======================================================================
  100020280  adrp    x8, #0x10041f000
  100020284  ldrsw   x2, [x8, #0x6b0]                         ; ivar offset ADChallengeData._challengeData (+0x8)
  100020288  mov     w3, #1
  10002028c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADChallengeData setChallengeData:]
; address 0x100020290  size 12  kind objc
; ======================================================================
  100020290  adrp    x8, #0x10041f000
  100020294  ldrsw   x3, [x8, #0x6b0]                         ; ivar offset ADChallengeData._challengeData (+0x8)
  100020298  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADChallengeData .cxx_destruct]
; address 0x10002029c  size 20  kind objc
; ======================================================================
  10002029c  mov     x1, #0
  1000202a0  adrp    x8, #0x10041f000
  1000202a4  ldrsw   x8, [x8, #0x6b0]                         ; ivar offset ADChallengeData._challengeData (+0x8)
  1000202a8  add     x0, x0, x8
  1000202ac  b       _objc_storeStrong
