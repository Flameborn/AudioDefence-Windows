// unit ADBrick — 48 functions
//   0x10009ea80    2036  -[ADBrick initBrickWithName:]
//   0x10009f274     588  -[ADBrick initSounds]
//   0x10009f4c0     420  -[ADBrick initSounds]_block_invoke
//   0x10009f664      40  sub_10009f664
//   0x10009f68c      40  sub_10009f68c
//   0x10009f6b4    1508  -[ADBrick initPassersBy]
//   0x10009fc98     340  -[ADBrick activateAllPlaylists]
//   0x10009fdec     380  -[ADBrick loadPLaylistWithName:]
//   0x10009ff68      16  -[ADBrick loadPLaylistWithName:]_block_invoke
//   0x10009ff78       8  -[ADBrick loadPLaylistWithName:]_block_invoke_2
//   0x10009ff80      44  -[ADBrick loadPLaylistWithName:]_block_invoke_3
//   0x10009ffac      16  sub_10009ffac
//   0x10009ffbc      12  sub_10009ffbc
//   0x10009ffc8     840  -[ADBrick activatePLaylistsNotInSet:]
//   0x1000a0310     592  -[ADBrick randomTip]
//   0x1000a0560     540  -[ADBrick deactivatePlaylistsFromSet:]
//   0x1000a077c      44  -[ADBrick deactivatePlaylistsFromSet:]_block_invoke
//   0x1000a07a8       8  sub_1000a07a8
//   0x1000a07b0       8  sub_1000a07b0
//   0x1000a07b8     592  -[ADBrick deactivateAllPlaylists]
//   0x1000a0a08       4  -[ADBrick deactivateAllPlaylists]_block_invoke
//   0x1000a0a0c       8  sub_1000a0a0c
//   0x1000a0a14       8  sub_1000a0a14
//   0x1000a0a1c     472  -[ADBrick onPlaylistActivated:]
//   0x1000a0bf4     400  -[ADBrick checkAllPlaylistsAreLoaded]
//   0x1000a0d84      16  -[ADBrick enemies]
//   0x1000a0d94     316  -[ADBrick clearEnemies]
//   0x1000a0ed0    1204  -[ADBrick update:]
//   0x1000a1384     500  -[ADBrick stopAllEnemiesAfterPlayerDeath]
//   0x1000a1578     224  -[ADBrick stopBrickAmbiant]
//   0x1000a1658     932  -[ADBrick brickIsCleared]
//   0x1000a19fc    1712  -[ADBrick checkSpawnOnStart:]
//   0x1000a20ac    2744  -[ADBrick checkSpawnAfterKill:skipped:]
//   0x1000a2b64     308  -[ADBrick stopAllSounds]
//   0x1000a2c98     424  -[ADBrick hasSkippableSoundsPlaying]
//   0x1000a2e40     380  -[ADBrick skipAllSkippableSounds]
//   0x1000a2fbc     520  -[ADBrick pause]
//   0x1000a31c4     520  -[ADBrick resume]
//   0x1000a33cc     104  -[ADBrick clean]
//   0x1000a3434      16  -[ADBrick tag]
//   0x1000a3444      16  -[ADBrick setTag:]
//   0x1000a3454      16  -[ADBrick name]
//   0x1000a3464      56  -[ADBrick setName:]
//   0x1000a349c      16  -[ADBrick ambiantName]
//   0x1000a34ac      56  -[ADBrick setAmbiantName:]
//   0x1000a34e4      16  -[ADBrick playlists]
//   0x1000a34f4      56  -[ADBrick setPlaylists:]
//   0x1000a352c     224  -[ADBrick .cxx_destruct]

; ======================================================================
; -[ADBrick initBrickWithName:]
; address 0x10009ea80  size 2036  kind objc
; ======================================================================
  10009ea80  stp     x28, x27, [sp, #-0x60]!
  10009ea84  stp     x26, x25, [sp, #0x10]
  10009ea88  stp     x24, x23, [sp, #0x20]
  10009ea8c  stp     x22, x21, [sp, #0x30]
  10009ea90  stp     x20, x19, [sp, #0x40]
  10009ea94  stp     x29, x30, [sp, #0x50]
  10009ea98  add     x29, sp, #0x50
  10009ea9c  sub     sp, sp, #0x1a0
  10009eaa0  mov     x19, x0
  10009eaa4  adrp    x21, #0x1003b0000
  10009eaa8  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10009eaac  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
  10009eab0  stur    x21, [x29, #-0x58]
  10009eab4  mov     x0, x2
  10009eab8  bl      _objc_retain
  10009eabc  mov     x27, x0
  10009eac0  stur    x19, [x29, #-0xe8]
  10009eac4  adrp    x8, #0x10041e000
  10009eac8  ldr     x8, [x8, #0xed8]
  10009eacc  stur    x8, [x29, #-0xe0]
  10009ead0  adrp    x8, #0x100416000
  10009ead4  nop
  10009ead8  ldr     x19, [x8, #0xab8]
  10009eadc  mov     x22, #0
  10009eae0  sub     x0, x29, #0xe8
  10009eae4  mov     x1, x19
  10009eae8  bl      _objc_msgSendSuper2                      ; [super init]
  10009eaec  mov     x20, x0
  10009eaf0  cbz     x20, loc_10009f144                       ; if (self == 0)
  10009eaf4  mov     x22, x20
  10009eaf8  adrp    x8, #0x100417000
  10009eafc  nop
  10009eb00  ldr     x1, [x8, #0x428]
  10009eb04  mov     x0, x20
  10009eb08  mov     x2, x27
  10009eb0c  bl      _objc_msgSend                            ; [self setName:arg1]
  10009eb10  mov     x22, x20
  10009eb14  adrp    x8, #0x10041d000
  10009eb18  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10009eb1c  adrp    x8, #0x100416000
  10009eb20  nop
  10009eb24  ldr     x1, [x8, #0xb58]
  10009eb28  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10009eb2c  mov     x29, x29
  10009eb30  bl      _objc_retainAutoreleasedReturnValue
  10009eb34  mov     x22, x0
  10009eb38  adrp    x8, #0x100416000
  10009eb3c  nop
  10009eb40  ldr     x1, [x8, #0xd60]
  10009eb44  adrp    x3, #0x1003b9000
  10009eb48  add     x3, x3, #0xa70                           ; @"plist"
  10009eb4c  mov     x2, x27
  10009eb50  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  10009eb54  mov     x29, x29
  10009eb58  bl      _objc_retainAutoreleasedReturnValue
  10009eb5c  mov     x25, x0
  10009eb60  mov     x0, x22
  10009eb64  bl      _objc_release
  10009eb68  adrp    x8, #0x10041d000
  10009eb6c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10009eb70  adrp    x8, #0x100416000
  10009eb74  nop
  10009eb78  ldr     x1, [x8, #0xac8]
  10009eb7c  str     x1, [sp, #0xb8]
  10009eb80  bl      _objc_msgSend                            ; [NSDictionary alloc]
  10009eb84  adrp    x8, #0x100416000
  10009eb88  nop
  10009eb8c  ldr     x1, [x8, #0xd68]
  10009eb90  mov     x2, x25
  10009eb94  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  10009eb98  adrp    x8, #0x100420000
  10009eb9c  ldrsw   x21, [x8, #0x74]                         ; ivar offset ADBrick.brickDictionnary (+0x8)
  10009eba0  ldr     x8, [x20, x21]                           ; x8 = self->brickDictionnary
  10009eba4  str     x0, [x20, x21]                           ; self->brickDictionnary = [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  10009eba8  mov     x0, x8
  10009ebac  bl      _objc_release
  10009ebb0  adrp    x22, #0x10041d000
  10009ebb4  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  10009ebb8  ldr     x1, [sp, #0xb8]
  10009ebbc  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10009ebc0  mov     x1, x19
  10009ebc4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10009ebc8  adrp    x8, #0x100420000
  10009ebcc  ldrsw   x9, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  10009ebd0  str     x9, [sp, #0xc0]
  10009ebd4  ldr     x8, [x20, x9]                            ; x8 = self->enemiesArray
  10009ebd8  str     x0, [x20, x9]                            ; self->enemiesArray = [[NSMutableArray alloc] init]
  10009ebdc  mov     x0, x8
  10009ebe0  bl      _objc_release
  10009ebe4  ldr     x0, [x22, #0xf28]                        ; class NSMutableArray
  10009ebe8  ldr     x1, [sp, #0xb8]
  10009ebec  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  10009ebf0  mov     x1, x19
  10009ebf4  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  10009ebf8  adrp    x8, #0x100420000
  10009ebfc  ldrsw   x9, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  10009ec00  ldr     x8, [x20, x9]                            ; x8 = self->soundsArray
  10009ec04  str     x0, [x20, x9]                            ; self->soundsArray = [[NSMutableArray alloc] init]
  10009ec08  mov     x0, x8
  10009ec0c  bl      _objc_release
  10009ec10  adrp    x23, #0x10041e000
  10009ec14  ldr     x0, [x23, #0x388]                        ; class NSMutableSet
  10009ec18  ldr     x1, [sp, #0xb8]
  10009ec1c  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  10009ec20  mov     x1, x19
  10009ec24  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  10009ec28  mov     x22, x0
  10009ec2c  adrp    x8, #0x10041a000
  10009ec30  nop
  10009ec34  ldr     x1, [x8, #0x280]
  10009ec38  mov     x0, x20
  10009ec3c  mov     x2, x22
  10009ec40  bl      _objc_msgSend                            ; [self setPlaylists:[[NSMutableSet alloc] init]]
  10009ec44  mov     x0, x22
  10009ec48  bl      _objc_release
  10009ec4c  ldr     x0, [x23, #0x388]                        ; class NSMutableSet
  10009ec50  ldr     x1, [sp, #0xb8]
  10009ec54  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  10009ec58  mov     x1, x19
  10009ec5c  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  10009ec60  adrp    x8, #0x100420000
  10009ec64  ldrsw   x9, [x8, #0x80]                          ; ivar offset ADBrick.playlistsRequiringActivation (+0x28)
  10009ec68  ldr     x8, [x20, x9]                            ; x8 = self->playlistsRequiringActivation
  10009ec6c  str     x0, [x20, x9]                            ; self->playlistsRequiringActivation = [[NSMutableSet alloc] init]
  10009ec70  mov     x0, x8
  10009ec74  bl      _objc_release
  10009ec78  adrp    x8, #0x100420000
  10009ec7c  ldrsw   x8, [x8, #0x84]                          ; ivar offset ADBrick.playlistsActivated (+0x30)
  10009ec80  str     wzr, [x20, x8]                           ; self->playlistsActivated = 0
  10009ec84  ldr     x0, [x20, x21]                           ; x0 = self->brickDictionnary
  10009ec88  adrp    x8, #0x100417000
  10009ec8c  nop
  10009ec90  ldr     x24, [x8, #0x40]
  10009ec94  adrp    x2, #0x1003c0000
  10009ec98  add     x2, x2, #0x6f0                           ; @"Tips"
  10009ec9c  mov     x1, x24
  10009eca0  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"Tips"]
  10009eca4  mov     x29, x29
  10009eca8  bl      _objc_retainAutoreleasedReturnValue
  10009ecac  adrp    x8, #0x100420000
  10009ecb0  ldrsw   x9, [x8, #0x88]                          ; ivar offset ADBrick.tips (+0x38)
  10009ecb4  ldr     x8, [x20, x9]                            ; x8 = self->tips
  10009ecb8  str     x0, [x20, x9]                            ; self->tips = [self->brickDictionnary objectForKey:@"Tips"]
  10009ecbc  mov     x0, x8
  10009ecc0  bl      _objc_release
  10009ecc4  ldr     x0, [x20, x21]                           ; x0 = self->brickDictionnary
  10009ecc8  adrp    x2, #0x1003c0000
  10009eccc  add     x2, x2, #0x710                           ; @"PowerUp"
  10009ecd0  mov     x1, x24
  10009ecd4  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"PowerUp"]
  10009ecd8  mov     x29, x29
  10009ecdc  bl      _objc_retainAutoreleasedReturnValue
  10009ece0  adrp    x8, #0x100420000
  10009ece4  ldrsw   x9, [x8, #0x8c]                          ; ivar offset ADBrick.powerUpDictionary (+0x10)
  10009ece8  ldr     x8, [x20, x9]                            ; x8 = self->powerUpDictionary
  10009ecec  str     x0, [x20, x9]                            ; self->powerUpDictionary = [self->brickDictionnary objectForKey:@"PowerUp"]
  10009ecf0  mov     x0, x8
  10009ecf4  bl      _objc_release
  10009ecf8  ldr     x8, [sp, #0xc0]
  10009ecfc  ldr     x8, [x20, x8]                            ; x8 = self->enemiesArray
  10009ed00  cbnz    x8, loc_10009ed14                        ; if (self->enemiesArray != 0)
  10009ed04  str     x27, [sp]
  10009ed08  adrp    x0, #0x1003c0000
  10009ed0c  add     x0, x0, #0x730                           ; @"%@ does not have an enemy list. Check brick name is correct"
  10009ed10  bl      _NSLog                                   ; NSLog(@"%@ does not have an enemy list. Check brick name is correct", arg1)
loc_10009ed14:
  10009ed14  ldr     x0, [x20, x21]                           ; x0 = self->brickDictionnary
  10009ed18  adrp    x2, #0x1003c0000
  10009ed1c  add     x2, x2, #0x690                           ; @"Enemies"
  10009ed20  mov     x1, x24
  10009ed24  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"Enemies"]
  10009ed28  mov     x29, x29
  10009ed2c  bl      _objc_retainAutoreleasedReturnValue
  10009ed30  str     x0, [sp, #0xb0]
  10009ed34  stp     xzr, xzr, [sp, #0xf8]
  10009ed38  stp     xzr, xzr, [sp, #0xe8]
  10009ed3c  stp     xzr, xzr, [sp, #0xd8]
  10009ed40  stp     xzr, xzr, [sp, #0xc8]
  10009ed44  adrp    x8, #0x100417000
  10009ed48  nop
  10009ed4c  ldr     x1, [x8, #0x248]
  10009ed50  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"Enemies"] allKeys]
  10009ed54  stp     x27, x25, [sp, #0x18]
  10009ed58  mov     x29, x29
  10009ed5c  bl      _objc_retainAutoreleasedReturnValue
  10009ed60  str     x0, [sp, #0x40]
  10009ed64  adrp    x8, #0x100416000
  10009ed68  nop
  10009ed6c  ldr     x1, [x8, #0xe00]
  10009ed70  str     x1, [sp, #0x28]
  10009ed74  add     x2, sp, #0xc8
  10009ed78  sub     x3, x29, #0xd8
  10009ed7c  mov     w4, #0x10
  10009ed80  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16]
  10009ed84  mov     x21, x0
  10009ed88  cbz     x21, loc_10009f0f4                       ; if ([[[self->brickDictionnary objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16] == 0)
  10009ed8c  adrp    x8, #0x100418000
  10009ed90  nop
  10009ed94  ldr     x9, [sp, #0xd8]
  10009ed98  adrp    x10, #0x10041a000
  10009ed9c  nop
  10009eda0  adrp    x11, #0x10041a000
  10009eda4  nop
  10009eda8  adrp    x12, #0x10041a000
  10009edac  add     x12, x12, #0x298                         ; &@selector(playlists)
  10009edb0  adrp    x13, #0x100419000
  10009edb4  add     x13, x13, #0x218                         ; &@selector(soundsPrefix)
  10009edb8  ldr     x8, [x8, #0xb70]
  10009edbc  str     x8, [sp, #0xa0]
  10009edc0  adrp    x8, #0x100416000
  10009edc4  nop
  10009edc8  ldr     x10, [x10, #0x288]
  10009edcc  str     x10, [sp, #0x98]
  10009edd0  adrp    x10, #0x100419000
  10009edd4  nop
  10009edd8  adrp    x14, #0x100417000
  10009eddc  add     x14, x14, #0x6b0                         ; &@selector(tag)
  10009ede0  adrp    x15, #0x100416000
  10009ede4  add     x15, x15, #0xe30                         ; &@selector(count)
  10009ede8  adrp    x16, #0x100417000
  10009edec  add     x16, x16, #0x670                         ; &@selector(setTag:)
  10009edf0  ldr     x11, [x11, #0x290]
  10009edf4  str     x11, [sp, #0x90]
  10009edf8  ldr     x11, [x12]
  10009edfc  str     x11, [sp, #0x88]
  10009ee00  ldr     x11, [x13]
  10009ee04  str     x11, [sp, #0x80]
  10009ee08  ldr     x22, [x8, #0xd90]
  10009ee0c  ldr     x8, [x10, #0x518]
  10009ee10  str     x8, [sp, #0x78]
  10009ee14  ldr     x8, [x9]
  10009ee18  str     x8, [sp, #0xa8]
  10009ee1c  ldr     x8, [x14]
  10009ee20  str     x8, [sp, #0x70]
  10009ee24  ldr     x8, [x15]
  10009ee28  str     x8, [sp, #0x68]
  10009ee2c  adrp    x8, #0x100416000
  10009ee30  nop
  10009ee34  adrp    x9, #0x10041a000
  10009ee38  nop
  10009ee3c  ldr     x10, [x16]
  10009ee40  str     x10, [sp, #0x60]
  10009ee44  ldr     x8, [x8, #0xfd8]
  10009ee48  str     x8, [sp, #0x30]
  10009ee4c  adrp    x8, #0x100417000
  10009ee50  nop
  10009ee54  adrp    x10, #0x100418000
  10009ee58  add     x10, x10, #0xb98                         ; &@selector(setSpawn_time:)
  10009ee5c  ldr     x9, [x9, #0x2a0]
  10009ee60  str     x9, [sp, #0x38]
  10009ee64  ldr     x8, [x8, #0x48]
  10009ee68  str     x8, [sp, #0x58]
  10009ee6c  adrp    x8, #0x100416000
  10009ee70  nop
  10009ee74  ldr     x9, [x10]
  10009ee78  str     x9, [sp, #0x50]
  10009ee7c  ldr     x8, [x8, #0xc78]
  10009ee80  str     x8, [sp, #0x48]
loc_10009ee84:
  10009ee84  mov     x27, #0
loc_10009ee88:
  10009ee88  ldr     x8, [sp, #0xd8]
  10009ee8c  ldr     x8, [x8]
  10009ee90  ldr     x9, [sp, #0xa8]
  10009ee94  cmp     x8, x9
  10009ee98  b.eq    loc_10009eea4                            ; if (x8 == x9)
  10009ee9c  ldr     x0, [sp, #0x40]
  10009eea0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self->brickDictionnary objectForKey:@"Enemies"] allKeys])
loc_10009eea4:
  10009eea4  ldr     x8, [sp, #0xd0]
  10009eea8  ldr     x0, [x8, x27, lsl #3]
  10009eeac  bl      _objc_retain
  10009eeb0  mov     x19, x0
  10009eeb4  ldr     x0, [sp, #0xb0]
  10009eeb8  mov     x1, x24
  10009eebc  mov     x2, x19
  10009eec0  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2]
  10009eec4  mov     x29, x29
  10009eec8  bl      _objc_retainAutoreleasedReturnValue
  10009eecc  mov     x25, x0
  10009eed0  adrp    x8, #0x10041e000
  10009eed4  ldr     x0, [x8, #0x390]                         ; class ADEnemy
  10009eed8  ldr     x1, [sp, #0xb8]
  10009eedc  bl      _objc_msgSend                            ; [ADEnemy alloc]
  10009eee0  ldr     x1, [sp, #0xa0]
  10009eee4  mov     x2, x19
  10009eee8  bl      _objc_msgSend                            ; [[ADEnemy alloc] initWithName:x2]
  10009eeec  mov     x23, x0
  10009eef0  mov     x26, x21
  10009eef4  movi    v0.16b, #0
  10009eef8  mov     x0, x23
  10009eefc  ldr     x1, [sp, #0x98]
  10009ef00  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setRandomAdditionalSpawnAngle:0]
  10009ef04  mov     x0, x23
  10009ef08  ldr     x1, [sp, #0x90]
  10009ef0c  mov     x2, x20
  10009ef10  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setParentBrick:self]
  10009ef14  mov     x0, x20
  10009ef18  ldr     x1, [sp, #0x88]
  10009ef1c  bl      _objc_msgSend                            ; [self playlists]
  10009ef20  mov     x29, x29
  10009ef24  bl      _objc_retainAutoreleasedReturnValue
  10009ef28  mov     x28, x0
  10009ef2c  mov     x0, x23
  10009ef30  ldr     x1, [sp, #0x80]
  10009ef34  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] soundsPrefix]
  10009ef38  mov     x29, x29
  10009ef3c  bl      _objc_retainAutoreleasedReturnValue
  10009ef40  mov     x21, x0
  10009ef44  mov     x0, x28
  10009ef48  mov     x1, x22
  10009ef4c  mov     x2, x21
  10009ef50  bl      _objc_msgSend                            ; [[self playlists] addObject:[[[ADEnemy alloc] initWithName:x2] soundsPrefix]]
  10009ef54  mov     x0, x21
  10009ef58  bl      _objc_release
  10009ef5c  mov     x0, x28
  10009ef60  bl      _objc_release
  10009ef64  mov     x0, x23
  10009ef68  ldr     x1, [sp, #0x78]
  10009ef6c  mov     x2, x25
  10009ef70  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setPositionFromDictionary:[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2]]
  10009ef74  mov     x0, x20
  10009ef78  ldr     x1, [sp, #0x70]
  10009ef7c  bl      _objc_msgSend                            ; [self tag]
  10009ef80  mov     x21, x0
  10009ef84  ldr     x8, [sp, #0xc0]
  10009ef88  ldr     x0, [x20, x8]                            ; x0 = self->enemiesArray
  10009ef8c  ldr     x1, [sp, #0x68]
  10009ef90  bl      _objc_msgSend                            ; [self->enemiesArray count]
  10009ef94  mov     w8, #0x64
  10009ef98  mul     w8, w21, w8
  10009ef9c  orr     w8, w8, #1
  10009efa0  add     w2, w8, w0
  10009efa4  mov     x0, x23
  10009efa8  ldr     x1, [sp, #0x60]
  10009efac  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setTag:((([self tag] * 100) | 1) + [self->enemiesArray count])]
  10009efb0  ldr     x8, [sp, #0xc0]
  10009efb4  ldr     x0, [x20, x8]                            ; x0 = self->enemiesArray
  10009efb8  mov     x1, x22
  10009efbc  mov     x2, x23
  10009efc0  bl      _objc_msgSend                            ; [self->enemiesArray addObject:[[ADEnemy alloc] initWithName:x2]]
  10009efc4  mov     x0, x25
  10009efc8  mov     x1, x24
  10009efcc  adrp    x2, #0x1003c0000
  10009efd0  add     x2, x2, #0x6d0                           ; @"spawn_time"
  10009efd4  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_time"]
  10009efd8  mov     x29, x29
  10009efdc  bl      _objc_retainAutoreleasedReturnValue
  10009efe0  mov     x21, x0
  10009efe4  bl      _objc_release
  10009efe8  cbz     x21, loc_10009f03c                       ; if ([[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_time"] == 0)
  10009efec  mov     x0, x25
  10009eff0  mov     x1, x24
  10009eff4  adrp    x2, #0x1003c0000
  10009eff8  add     x2, x2, #0x6d0                           ; @"spawn_time"
  10009effc  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_time"]
  10009f000  mov     x29, x29
  10009f004  bl      _objc_retainAutoreleasedReturnValue
  10009f008  mov     x28, x0
  10009f00c  ldr     x1, [sp, #0x58]
  10009f010  bl      _objc_msgSend                            ; [[[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_time"] floatValue]
  10009f014  mov     x0, x23
  10009f018  ldr     x1, [sp, #0x50]
  10009f01c  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setSpawn_time:[[[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_time"] floatValue]]
  10009f020  mov     x0, x28
  10009f024  bl      _objc_release
  10009f028  mov     w2, #0
  10009f02c  mov     x0, x23
  10009f030  ldr     x1, [sp, #0x48]
  10009f034  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setState:0]
  10009f038  b       loc_10009f0ac
loc_10009f03c:
  10009f03c  mov     x0, x25
  10009f040  mov     x1, x24
  10009f044  adrp    x2, #0x1003c0000
  10009f048  add     x2, x2, #0x750                           ; @"spawn_after"
  10009f04c  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"]
  10009f050  mov     x29, x29
  10009f054  bl      _objc_retainAutoreleasedReturnValue
  10009f058  mov     x21, x0
  10009f05c  bl      _objc_release
  10009f060  cbz     x21, loc_10009f0a0                       ; if ([[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"] == 0)
  10009f064  mov     x0, x25
  10009f068  mov     x1, x24
  10009f06c  adrp    x2, #0x1003c0000
  10009f070  add     x2, x2, #0x750                           ; @"spawn_after"
  10009f074  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"]
  10009f078  mov     x29, x29
  10009f07c  bl      _objc_retainAutoreleasedReturnValue
  10009f080  mov     x21, x0
  10009f084  mov     x0, x23
  10009f088  ldr     x1, [sp, #0x38]
  10009f08c  mov     x2, x21
  10009f090  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] setSpawn_after:[[[self->brickDictionnary objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"]]
  10009f094  mov     x0, x21
  10009f098  bl      _objc_release
  10009f09c  b       loc_10009f0ac
loc_10009f0a0:
  10009f0a0  mov     x0, x23
  10009f0a4  ldr     x1, [sp, #0x30]
  10009f0a8  bl      _objc_msgSend                            ; [[[ADEnemy alloc] initWithName:x2] spawn]
loc_10009f0ac:
  10009f0ac  mov     x0, x23
  10009f0b0  bl      _objc_release
  10009f0b4  mov     x0, x25
  10009f0b8  bl      _objc_release
  10009f0bc  mov     x0, x19
  10009f0c0  bl      _objc_release
  10009f0c4  add     x27, x27, #1
  10009f0c8  mov     x21, x26
  10009f0cc  cmp     x27, x21
  10009f0d0  b.lo    loc_10009ee88                            ; if ((x27 + 1) <u [[[self->brickDictionnary objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] co…)
  10009f0d4  add     x2, sp, #0xc8
  10009f0d8  sub     x3, x29, #0xd8
  10009f0dc  mov     w4, #0x10
  10009f0e0  ldr     x0, [sp, #0x40]
  10009f0e4  ldr     x1, [sp, #0x28]
  10009f0e8  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16]
  10009f0ec  mov     x21, x0
  10009f0f0  cbnz    x21, loc_10009ee84                       ; if ([[[self->brickDictionnary objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0xc8] objects:&x29[-0xd8] count:16] != 0)
loc_10009f0f4:
  10009f0f4  ldr     x0, [sp, #0x40]
  10009f0f8  bl      _objc_release
  10009f0fc  adrp    x8, #0x10041a000
  10009f100  nop
  10009f104  ldr     x1, [x8, #0x2a8]
  10009f108  mov     x0, x20
  10009f10c  ldp     x27, x25, [sp, #0x18]
  10009f110  bl      _objc_msgSend                            ; [self initPassersBy]
  10009f114  adrp    x8, #0x100419000
  10009f118  nop
  10009f11c  ldr     x1, [x8, #0xc70]
  10009f120  mov     x0, x20
  10009f124  bl      _objc_msgSend                            ; [self initSounds]
  10009f128  ldr     x0, [sp, #0xb0]
  10009f12c  bl      _objc_release
  10009f130  mov     x0, x25
  10009f134  bl      _objc_release
  10009f138  adrp    x21, #0x1003b0000
  10009f13c  ldr     x21, [x21, #0x1d8]                       ; ___stack_chk_guard
  10009f140  ldr     x21, [x21]                               ; x21 = ___stack_chk_guard[+0x0]
loc_10009f144:
  10009f144  mov     x0, x27
  10009f148  bl      _objc_release
  10009f14c  ldur    x8, [x29, #-0x58]
  10009f150  sub     x8, x21, x8
  10009f154  cbnz    x8, loc_10009f17c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009f158  mov     x0, x20
  10009f15c  sub     sp, x29, #0x50
  10009f160  ldp     x29, x30, [sp, #0x50]
  10009f164  ldp     x20, x19, [sp, #0x40]
  10009f168  ldp     x22, x21, [sp, #0x30]
  10009f16c  ldp     x24, x23, [sp, #0x20]
  10009f170  ldp     x26, x25, [sp, #0x10]
  10009f174  ldp     x28, x27, [sp], #0x60
  10009f178  ret
loc_10009f17c:
  10009f17c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10009f180  mov     x24, x0
loc_10009f184:
  10009f184  ldr     x27, [sp, #0x18]
loc_10009f188:
  10009f188  mov     x0, x23
  10009f18c  bl      _objc_release
loc_10009f190:
  10009f190  mov     x0, x25
  10009f194  bl      _objc_release
loc_10009f198:
  10009f198  mov     x0, x19
  10009f19c  bl      _objc_release
loc_10009f1a0:
  10009f1a0  ldr     x25, [sp, #0x20]
  10009f1a4  ldr     x0, [sp, #0x40]
  10009f1a8  bl      _objc_release
loc_10009f1ac:
  10009f1ac  ldr     x0, [sp, #0xb0]
loc_10009f1b0:
  10009f1b0  bl      _objc_release
loc_10009f1b4:
  10009f1b4  mov     x0, x25
loc_10009f1b8:
  10009f1b8  bl      _objc_release
  10009f1bc  mov     x22, x20
loc_10009f1c0:
  10009f1c0  mov     x0, x27
  10009f1c4  bl      _objc_release
  10009f1c8  mov     x0, x22
  10009f1cc  bl      _objc_release
  10009f1d0  mov     x0, x24
  10009f1d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009f1d8  mov     x24, x0
  10009f1dc  ldr     x27, [sp, #0x18]
  10009f1e0  b       loc_10009f190
  10009f1e4  mov     x24, x0
  10009f1e8  mov     x0, x28
loc_10009f1ec:
  10009f1ec  bl      _objc_release
  10009f1f0  b       loc_10009f184
  10009f1f4  mov     x24, x0
  10009f1f8  ldr     x27, [sp, #0x18]
  10009f1fc  b       loc_10009f198
  10009f200  mov     x24, x0
  10009f204  b       loc_10009f214
  10009f208  mov     x24, x0
  10009f20c  mov     x0, x21
  10009f210  bl      _objc_release
loc_10009f214:
  10009f214  ldr     x27, [sp, #0x18]
  10009f218  mov     x0, x28
  10009f21c  bl      _objc_release
  10009f220  b       loc_10009f188
loc_10009f224:
  10009f224  mov     x24, x0
  10009f228  ldr     x27, [sp, #0x18]
  10009f22c  b       loc_10009f1a0
  10009f230  mov     x24, x0
  10009f234  mov     x0, x21
  10009f238  b       loc_10009f1ec
  10009f23c  b       loc_10009f224
  10009f240  mov     x24, x0
  10009f244  b       loc_10009f1b4
  10009f248  mov     x24, x0
  10009f24c  b       loc_10009f1c0
  10009f250  mov     x24, x0
  10009f254  b       loc_10009f1ac
  10009f258  mov     x24, x0
  10009f25c  mov     x0, x22
  10009f260  b       loc_10009f1b8
  10009f264  mov     x24, x0
  10009f268  mov     x0, x22
  10009f26c  b       loc_10009f1b0
  10009f270  b       loc_10009f224

; ======================================================================
; -[ADBrick initSounds]
; address 0x10009f274  size 588  kind objc
; ======================================================================
  10009f274  stp     x26, x25, [sp, #-0x50]!
  10009f278  stp     x24, x23, [sp, #0x10]
  10009f27c  stp     x22, x21, [sp, #0x20]
  10009f280  stp     x20, x19, [sp, #0x30]
  10009f284  stp     x29, x30, [sp, #0x40]
  10009f288  add     x29, sp, #0x40
  10009f28c  sub     sp, sp, #0x30
  10009f290  mov     x20, x0
  10009f294  adrp    x8, #0x100420000
  10009f298  ldrsw   x24, [x8, #0x74]                         ; ivar offset ADBrick.brickDictionnary (+0x8)
  10009f29c  ldr     x0, [x20, x24]                           ; x0 = self->brickDictionnary
  10009f2a0  adrp    x8, #0x100417000
  10009f2a4  nop
  10009f2a8  ldr     x21, [x8, #0x40]
  10009f2ac  adrp    x2, #0x1003c0000
  10009f2b0  add     x2, x2, #0x770                           ; @"Sounds"
  10009f2b4  mov     x1, x21
  10009f2b8  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"Sounds"]
  10009f2bc  mov     x29, x29
  10009f2c0  bl      _objc_retainAutoreleasedReturnValue
  10009f2c4  mov     x19, x0
  10009f2c8  adrp    x8, #0x100416000
  10009f2cc  nop
  10009f2d0  ldr     x1, [x8, #0xe30]
  10009f2d4  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"Sounds"] count]
  10009f2d8  cbz     x0, loc_10009f3d8                        ; if ([[self->brickDictionnary objectForKey:@"Sounds"] count] == 0)
  10009f2dc  adrp    x8, #0x10041d000
  10009f2e0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10009f2e4  adrp    x8, #0x100417000
  10009f2e8  nop
  10009f2ec  ldr     x1, [x8, #0x4f0]
  10009f2f0  bl      _objc_msgSend                            ; [S3DEngine engine]
  10009f2f4  mov     x29, x29
  10009f2f8  bl      _objc_retainAutoreleasedReturnValue
  10009f2fc  mov     x22, x0
  10009f300  adrp    x8, #0x100417000
  10009f304  nop
  10009f308  ldr     x1, [x8, #0x450]
  10009f30c  mov     x0, x20
  10009f310  bl      _objc_msgSend                            ; [self name]
  10009f314  mov     x29, x29
  10009f318  bl      _objc_retainAutoreleasedReturnValue
  10009f31c  mov     x23, x0
  10009f320  adrp    x8, #0x100417000
  10009f324  nop
  10009f328  ldr     x1, [x8, #0x4f8]
  10009f32c  mov     x0, x22
  10009f330  mov     x2, x23
  10009f334  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[self name]]
  10009f338  mov     x29, x29
  10009f33c  bl      _objc_retainAutoreleasedReturnValue
  10009f340  adrp    x8, #0x100420000
  10009f344  ldrsw   x25, [x8, #0x90]                         ; ivar offset ADBrick.soundsPlaylist (+0x40)
  10009f348  ldr     x8, [x20, x25]                           ; x8 = self->soundsPlaylist
  10009f34c  str     x0, [x20, x25]                           ; self->soundsPlaylist = [[S3DEngine engine] playListWithName:[self name]]
  10009f350  mov     x0, x8
  10009f354  bl      _objc_release
  10009f358  mov     x0, x23
  10009f35c  bl      _objc_release
  10009f360  mov     x0, x22
  10009f364  bl      _objc_release
  10009f368  adrp    x8, #0x1003b0000
  10009f36c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10009f370  ldr     x22, [x20, x25]                          ; x22 = self->soundsPlaylist
  10009f374  mov     w9, #-0x3e000000
  10009f378  str     x8, [sp]
  10009f37c  stp     w9, wzr, [sp, #8]
  10009f380  adr     x8, #0x10009f4c0                         ; &-[ADBrick initSounds]_block_invoke
  10009f384  nop
  10009f388  str     x8, [sp, #0x10]
  10009f38c  adrp    x8, #0x1003b2000
  10009f390  add     x8, x8, #0x320                           ; &d_1003b2320
  10009f394  str     x8, [sp, #0x18]
  10009f398  mov     x0, x20
  10009f39c  bl      _objc_retain
  10009f3a0  str     x0, [sp, #0x20]
  10009f3a4  mov     x0, x19
  10009f3a8  bl      _objc_retain
  10009f3ac  str     x0, [sp, #0x28]
  10009f3b0  adrp    x8, #0x100419000
  10009f3b4  nop
  10009f3b8  ldr     x1, [x8, #0x408]
  10009f3bc  mov     x2, sp
  10009f3c0  mov     x0, x22
  10009f3c4  bl      _objc_msgSend                            ; [self->soundsPlaylist activate:^{-[ADBrick initSounds]_block_invoke captures +0x20=self, +0x28=[self->brickDictionnary objectForKey:@"S…}]
  10009f3c8  ldr     x0, [sp, #0x28]
  10009f3cc  bl      _objc_release
  10009f3d0  ldr     x0, [sp, #0x20]
  10009f3d4  bl      _objc_release
loc_10009f3d8:
  10009f3d8  ldr     x0, [x20, x24]                           ; x0 = self->brickDictionnary
  10009f3dc  adrp    x2, #0x1003c0000
  10009f3e0  add     x2, x2, #0x790                           ; @"Ambiant"
  10009f3e4  mov     x1, x21
  10009f3e8  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"Ambiant"]
  10009f3ec  mov     x29, x29
  10009f3f0  bl      _objc_retainAutoreleasedReturnValue
  10009f3f4  mov     x22, x0
  10009f3f8  bl      _objc_release
  10009f3fc  cbz     x22, loc_10009f440                       ; if ([self->brickDictionnary objectForKey:@"Ambiant"] == 0)
  10009f400  ldr     x0, [x20, x24]                           ; x0 = self->brickDictionnary
  10009f404  adrp    x2, #0x1003c0000
  10009f408  add     x2, x2, #0x790                           ; @"Ambiant"
  10009f40c  mov     x1, x21
  10009f410  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"Ambiant"]
  10009f414  mov     x29, x29
  10009f418  bl      _objc_retainAutoreleasedReturnValue
  10009f41c  mov     x21, x0
  10009f420  adrp    x8, #0x10041a000
  10009f424  nop
  10009f428  ldr     x1, [x8, #0x2b0]
  10009f42c  mov     x0, x20
  10009f430  mov     x2, x21
  10009f434  bl      _objc_msgSend                            ; [self setAmbiantName:[self->brickDictionnary objectForKey:@"Ambiant"]]
  10009f438  mov     x0, x21
  10009f43c  bl      _objc_release
loc_10009f440:
  10009f440  mov     x0, x19
  10009f444  bl      _objc_release
  10009f448  sub     sp, x29, #0x40
  10009f44c  ldp     x29, x30, [sp, #0x40]
  10009f450  ldp     x20, x19, [sp, #0x30]
  10009f454  ldp     x22, x21, [sp, #0x20]
  10009f458  ldp     x24, x23, [sp, #0x10]
  10009f45c  ldp     x26, x25, [sp], #0x50
  10009f460  ret
  10009f464  mov     x20, x0
  10009f468  b       loc_10009f4b0
  10009f46c  mov     x20, x0
  10009f470  b       loc_10009f480
  10009f474  mov     x20, x0
  10009f478  mov     x0, x23
  10009f47c  bl      _objc_release
loc_10009f480:
  10009f480  mov     x0, x22
  10009f484  bl      _objc_release
  10009f488  b       loc_10009f4b0
  10009f48c  mov     x20, x0
  10009f490  ldr     x0, [sp, #0x28]
  10009f494  bl      _objc_release
  10009f498  ldr     x0, [sp, #0x20]
  10009f49c  bl      _objc_release
  10009f4a0  b       loc_10009f4b0
  10009f4a4  mov     x20, x0
  10009f4a8  mov     x0, x21
  10009f4ac  bl      _objc_release
loc_10009f4b0:
  10009f4b0  mov     x0, x19
  10009f4b4  bl      _objc_release
  10009f4b8  mov     x0, x20
  10009f4bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrick initSounds]_block_invoke
; address 0x10009f4c0  size 420  kind block
; ======================================================================
  10009f4c0  stp     x28, x27, [sp, #-0x60]!
  10009f4c4  stp     x26, x25, [sp, #0x10]
  10009f4c8  stp     x24, x23, [sp, #0x20]
  10009f4cc  stp     x22, x21, [sp, #0x30]
  10009f4d0  stp     x20, x19, [sp, #0x40]
  10009f4d4  stp     x29, x30, [sp, #0x50]
  10009f4d8  add     x29, sp, #0x50
  10009f4dc  sub     sp, sp, #0xe0
  10009f4e0  mov     x20, x0
  10009f4e4  adrp    x8, #0x1003b0000
  10009f4e8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10009f4ec  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10009f4f0  stur    x8, [x29, #-0x58]
  10009f4f4  stp     xzr, xzr, [sp, #0x48]
  10009f4f8  stp     xzr, xzr, [sp, #0x38]
  10009f4fc  stp     xzr, xzr, [sp, #0x28]
  10009f500  stp     xzr, xzr, [sp, #0x18]
  10009f504  ldr     x0, [x20, #0x28]                         ; x0 = captured [self->brickDictionnary objectForKey:@"Sounds"]
  10009f508  bl      _objc_retain
  10009f50c  str     x0, [sp, #0x10]
  10009f510  adrp    x8, #0x100416000
  10009f514  nop
  10009f518  ldr     x1, [x8, #0xe00]
  10009f51c  str     x1, [sp, #8]
  10009f520  add     x2, sp, #0x18
  10009f524  add     x3, sp, #0x58
  10009f528  mov     w4, #0x10
  10009f52c  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"Sounds"] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10009f530  mov     x22, x0
  10009f534  cbz     x22, loc_10009f5f4                       ; if ([[self->brickDictionnary objectForKey:@"Sounds"] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10009f538  ldr     x8, [sp, #0x28]
  10009f53c  ldr     x28, [x8]
  10009f540  adrp    x8, #0x100416000
  10009f544  nop
  10009f548  ldr     x23, [x8, #0xac8]
  10009f54c  adrp    x8, #0x100416000
  10009f550  nop
  10009f554  ldr     x24, [x8, #0xd80]
  10009f558  adrp    x8, #0x100420000
  10009f55c  ldrsw   x27, [x8, #0x7c]                         ; ivar offset ADBrick.soundsArray (+0x20)
  10009f560  adrp    x8, #0x100416000
  10009f564  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10009f568  ldr     x25, [x8]
  10009f56c  adrp    x21, #0x10041e000
loc_10009f570:
  10009f570  mov     x19, #0
loc_10009f574:
  10009f574  ldr     x8, [sp, #0x28]
  10009f578  ldr     x8, [x8]
  10009f57c  cmp     x8, x28
  10009f580  b.eq    loc_10009f58c                            ; if (x8 == x28)
  10009f584  ldr     x0, [sp, #0x10]
  10009f588  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self->brickDictionnary objectForKey:@"Sounds"])
loc_10009f58c:
  10009f58c  ldr     x8, [sp, #0x20]
  10009f590  ldr     x26, [x8, x19, lsl #3]
  10009f594  ldr     x0, [x21, #0x398]                        ; class ADSound
  10009f598  mov     x1, x23
  10009f59c  bl      _objc_msgSend                            ; [ADSound alloc]
  10009f5a0  mov     x1, x24
  10009f5a4  mov     x2, x26
  10009f5a8  bl      _objc_msgSend                            ; [[ADSound alloc] initWithDictionary:x2]
  10009f5ac  mov     x26, x0
  10009f5b0  ldr     x8, [x20, #0x20]                         ; x8 = captured self
  10009f5b4  ldr     x0, [x8, x27]                            ; x0 = self->soundsArray
  10009f5b8  mov     x1, x25
  10009f5bc  mov     x2, x26
  10009f5c0  bl      _objc_msgSend                            ; [self->soundsArray addObject:[[ADSound alloc] initWithDictionary:x2]]
  10009f5c4  mov     x0, x26
  10009f5c8  bl      _objc_release
  10009f5cc  add     x19, x19, #1
  10009f5d0  cmp     x19, x22
  10009f5d4  b.lo    loc_10009f574                            ; if ((x19 + 1) <u [[self->brickDictionnary objectForKey:@"Sounds"] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  10009f5d8  add     x2, sp, #0x18
  10009f5dc  add     x3, sp, #0x58
  10009f5e0  mov     w4, #0x10
  10009f5e4  ldp     x1, x0, [sp, #8]
  10009f5e8  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"Sounds"] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10009f5ec  mov     x22, x0
  10009f5f0  cbnz    x22, loc_10009f570                       ; if ([[self->brickDictionnary objectForKey:@"Sounds"] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_10009f5f4:
  10009f5f4  ldr     x0, [sp, #0x10]
  10009f5f8  bl      _objc_release
  10009f5fc  ldur    x8, [x29, #-0x58]
  10009f600  adrp    x9, #0x1003b0000
  10009f604  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  10009f608  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10009f60c  sub     x8, x9, x8
  10009f610  cbnz    x8, loc_10009f634                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009f614  sub     sp, x29, #0x50
  10009f618  ldp     x29, x30, [sp, #0x50]
  10009f61c  ldp     x20, x19, [sp, #0x40]
  10009f620  ldp     x22, x21, [sp, #0x30]
  10009f624  ldp     x24, x23, [sp, #0x20]
  10009f628  ldp     x26, x25, [sp, #0x10]
  10009f62c  ldp     x28, x27, [sp], #0x60
  10009f630  ret
loc_10009f634:
  10009f634  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10009f638:
  10009f638  mov     x20, x0
  10009f63c  b       loc_10009f64c
  10009f640  mov     x20, x0
  10009f644  mov     x0, x26
  10009f648  bl      _objc_release
loc_10009f64c:
  10009f64c  ldr     x0, [sp, #0x10]
  10009f650  bl      _objc_release
  10009f654  mov     x0, x20
  10009f658  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009f65c  b       loc_10009f638
  10009f660  b       loc_10009f638

; ======================================================================
; sub_10009f664
; address 0x10009f664  size 40  kind sub
; ======================================================================
  10009f664  stp     x20, x19, [sp, #-0x20]!
  10009f668  stp     x29, x30, [sp, #0x10]
  10009f66c  add     x29, sp, #0x10
  10009f670  mov     x19, x1
  10009f674  ldr     x0, [x19, #0x20]                         ; x0 = a1[+0x20]
  10009f678  bl      _objc_retain
  10009f67c  ldr     x0, [x19, #0x28]                         ; x0 = a1[+0x28]
  10009f680  ldp     x29, x30, [sp, #0x10]
  10009f684  ldp     x20, x19, [sp], #0x20
  10009f688  b       _objc_retain

; ======================================================================
; sub_10009f68c
; address 0x10009f68c  size 40  kind sub
; ======================================================================
  10009f68c  stp     x20, x19, [sp, #-0x20]!
  10009f690  stp     x29, x30, [sp, #0x10]
  10009f694  add     x29, sp, #0x10
  10009f698  mov     x19, x0
  10009f69c  ldr     x0, [x19, #0x20]                         ; x0 = a0[+0x20]
  10009f6a0  bl      _objc_release
  10009f6a4  ldr     x0, [x19, #0x28]                         ; x0 = a0[+0x28]
  10009f6a8  ldp     x29, x30, [sp, #0x10]
  10009f6ac  ldp     x20, x19, [sp], #0x20
  10009f6b0  b       _objc_release

; ======================================================================
; -[ADBrick initPassersBy]
; address 0x10009f6b4  size 1508  kind objc
; ======================================================================
  10009f6b4  stp     x28, x27, [sp, #-0x60]!
  10009f6b8  stp     x26, x25, [sp, #0x10]
  10009f6bc  stp     x24, x23, [sp, #0x20]
  10009f6c0  stp     x22, x21, [sp, #0x30]
  10009f6c4  stp     x20, x19, [sp, #0x40]
  10009f6c8  stp     x29, x30, [sp, #0x50]
  10009f6cc  add     x29, sp, #0x50
  10009f6d0  sub     sp, sp, #0x170
  10009f6d4  str     x0, [sp, #0xa0]
  10009f6d8  adrp    x20, #0x1003b0000
  10009f6dc  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  10009f6e0  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  10009f6e4  stur    x20, [x29, #-0x58]
  10009f6e8  adrp    x8, #0x100420000
  10009f6ec  ldrsw   x8, [x8, #0x74]                          ; ivar offset ADBrick.brickDictionnary (+0x8)
  10009f6f0  ldr     x0, [x0, x8]                             ; x0 = self->brickDictionnary
  10009f6f4  adrp    x8, #0x100417000
  10009f6f8  nop
  10009f6fc  ldr     x22, [x8, #0x40]
  10009f700  adrp    x2, #0x1003c0000
  10009f704  add     x2, x2, #0x7b0                           ; @"PasserBy"
  10009f708  mov     x1, x22
  10009f70c  bl      _objc_msgSend                            ; [self->brickDictionnary objectForKey:@"PasserBy"]
  10009f710  mov     x29, x29
  10009f714  bl      _objc_retainAutoreleasedReturnValue
  10009f718  mov     x19, x0
  10009f71c  cbz     x19, loc_10009fbf0                       ; if ([self->brickDictionnary objectForKey:@"PasserBy"] == 0)
  10009f720  stp     xzr, xzr, [sp, #0xd8]
  10009f724  stp     xzr, xzr, [sp, #0xc8]
  10009f728  stp     xzr, xzr, [sp, #0xb8]
  10009f72c  stp     xzr, xzr, [sp, #0xa8]
  10009f730  adrp    x8, #0x100417000
  10009f734  nop
  10009f738  ldr     x1, [x8, #0x248]
  10009f73c  mov     x0, x19
  10009f740  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"PasserBy"] allKeys]
  10009f744  mov     x29, x29
  10009f748  bl      _objc_retainAutoreleasedReturnValue
  10009f74c  str     x0, [sp, #0x20]
  10009f750  adrp    x8, #0x100416000
  10009f754  nop
  10009f758  ldr     x1, [x8, #0xe00]
  10009f75c  str     x1, [sp, #8]
  10009f760  add     x2, sp, #0xa8
  10009f764  sub     x3, x29, #0xd8
  10009f768  mov     w4, #0x10
  10009f76c  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"PasserBy"] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  10009f770  mov     x24, x0
  10009f774  cbz     x24, loc_10009fbdc                       ; if ([[[self->brickDictionnary objectForKey:@"PasserBy"] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] == 0)
  10009f778  mov     w8, #0
  10009f77c  adrp    x9, #0x100416000
  10009f780  nop
  10009f784  adrp    x10, #0x100416000
  10009f788  add     x10, x10, #0xac8                         ; &@selector(alloc)
  10009f78c  adrp    x11, #0x100418000
  10009f790  add     x11, x11, #0xb70                         ; &@selector(initWithName:)
  10009f794  adrp    x12, #0x100418000
  10009f798  add     x12, x12, #0xb80                         ; &@selector(activatePlaylist)
  10009f79c  adrp    x13, #0x100419000
  10009f7a0  add     x13, x13, #0x518                         ; &@selector(setPositionFromDictionary:)
  10009f7a4  ldr     x14, [sp, #0xb8]
  10009f7a8  adrp    x15, #0x100420000
  10009f7ac  adrp    x16, #0x100417000
  10009f7b0  add     x16, x16, #0x6b0                         ; &@selector(tag)
  10009f7b4  adrp    x17, #0x100416000
  10009f7b8  add     x17, x17, #0xe30                         ; &@selector(count)
  10009f7bc  adrp    x0, #0x100417000
  10009f7c0  add     x0, x0, #0x670                           ; &@selector(setTag:)
  10009f7c4  adrp    x1, #0x100416000
  10009f7c8  add     x1, x1, #0xfd8                           ; &@selector(spawn)
  10009f7cc  adrp    x2, #0x10041a000
  10009f7d0  add     x2, x2, #0x2a0                           ; &@selector(setSpawn_after:)
  10009f7d4  adrp    x3, #0x100417000
  10009f7d8  add     x3, x3, #0xaa8                           ; &@selector(sharedBrickManager)
  10009f7dc  adrp    x4, #0x100418000
  10009f7e0  add     x4, x4, #0xba0                           ; &@selector(addPasserBy:)
  10009f7e4  adrp    x5, #0x100417000
  10009f7e8  add     x5, x5, #0x48                            ; &@selector(floatValue)
  10009f7ec  adrp    x6, #0x100418000
  10009f7f0  add     x6, x6, #0xb98                           ; &@selector(setSpawn_time:)
  10009f7f4  adrp    x7, #0x100416000
  10009f7f8  add     x7, x7, #0xc78                           ; &@selector(setState:)
  10009f7fc  ldr     x14, [x14]
  10009f800  str     x14, [sp, #0x90]
  10009f804  ldr     x23, [x9, #0xf58]
  10009f808  ldr     x9, [x10]
  10009f80c  str     x9, [sp, #0x88]
  10009f810  ldr     x9, [x11]
  10009f814  str     x9, [sp, #0x80]
  10009f818  ldr     x9, [x12]
  10009f81c  str     x9, [sp, #0x78]
  10009f820  ldr     x9, [x13]
  10009f824  str     x9, [sp, #0x70]
  10009f828  ldr     x9, [x16]
  10009f82c  str     x9, [sp, #0x68]
  10009f830  ldrsw   x9, [x15, #0x78]                         ; ivar offset ADBrick.enemiesArray (+0x18)
  10009f834  str     x9, [sp, #0x60]
  10009f838  ldr     x9, [x17]
  10009f83c  str     x9, [sp, #0x58]
  10009f840  ldr     x9, [x0]
  10009f844  str     x9, [sp, #0x50]
  10009f848  ldr     x9, [x1]
  10009f84c  str     x9, [sp, #0x10]
  10009f850  ldr     x9, [x2]
  10009f854  str     x9, [sp, #0x18]
  10009f858  ldr     x9, [x3]
  10009f85c  str     x9, [sp, #0x48]
  10009f860  ldr     x9, [x4]
  10009f864  str     x9, [sp, #0x40]
  10009f868  ldr     x9, [x5]
  10009f86c  str     x9, [sp, #0x38]
  10009f870  ldr     x9, [x6]
  10009f874  str     x9, [sp, #0x30]
  10009f878  ldr     x9, [x7]
  10009f87c  str     x9, [sp, #0x28]
loc_10009f880:
  10009f880  mov     x28, #0
  10009f884  ubfx    x8, x8, #0, #0x20
  10009f888  str     x8, [sp, #0x98]
loc_10009f88c:
  10009f88c  ldr     x8, [sp, #0xb8]
  10009f890  ldr     x8, [x8]
  10009f894  ldr     x9, [sp, #0x90]
  10009f898  cmp     x8, x9
  10009f89c  b.eq    loc_10009f8a8                            ; if (x8 == x9)
  10009f8a0  ldr     x0, [sp, #0x20]
  10009f8a4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self->brickDictionnary objectForKey:@"PasserBy"] allKeys])
loc_10009f8a8:
  10009f8a8  ldr     x8, [sp, #0xb0]
  10009f8ac  ldr     x0, [x8, x28, lsl #3]
  10009f8b0  bl      _objc_retain
  10009f8b4  mov     x25, x0
  10009f8b8  mov     x0, x19
  10009f8bc  mov     x1, x22
  10009f8c0  mov     x2, x25
  10009f8c4  bl      _objc_msgSend                            ; [[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2]
  10009f8c8  mov     x21, x24
  10009f8cc  mov     x20, x19
  10009f8d0  mov     x29, x29
  10009f8d4  bl      _objc_retainAutoreleasedReturnValue
  10009f8d8  mov     x19, x0
  10009f8dc  mov     x27, #0
  10009f8e0  mov     x0, x25
  10009f8e4  mov     x1, x23
  10009f8e8  adrp    x2, #0x1003c0000
  10009f8ec  add     x2, x2, #0x7d0                           ; @"Jukebox"
  10009f8f0  bl      _objc_msgSend                            ; [x0 isEqualToString:@"Jukebox"]
  10009f8f4  ldr     x8, [sp, #0x98]
  10009f8f8  add     x26, x8, x28
  10009f8fc  cbz     w0, loc_10009f928                        ; if ([x0 isEqualToString:@"Jukebox"] == 0)
  10009f900  adrp    x8, #0x10041e000
  10009f904  ldr     x0, [x8, #0x3a0]                         ; class ADJukeBox
  10009f908  mov     x27, #0
  10009f90c  ldr     x1, [sp, #0x88]
  10009f910  bl      _objc_msgSend                            ; [ADJukeBox alloc]
  10009f914  mov     x27, #0
  10009f918  ldr     x1, [sp, #0x80]
  10009f91c  mov     x2, x25
  10009f920  bl      _objc_msgSend                            ; [[ADJukeBox alloc] initWithName:x2]
  10009f924  b       loc_10009f9a0
loc_10009f928:
  10009f928  mov     x27, #0
  10009f92c  mov     x0, x25
  10009f930  mov     x1, x23
  10009f934  adrp    x2, #0x1003c0000
  10009f938  add     x2, x2, #0x7f0                           ; @"Car"
  10009f93c  bl      _objc_msgSend                            ; [x0 isEqualToString:@"Car"]
  10009f940  tbnz    w0, #0, loc_10009f97c                    ; if (([x0 isEqualToString:@"Car"] & 1))
  10009f944  mov     x27, #0
  10009f948  mov     x0, x25
  10009f94c  mov     x1, x23
  10009f950  adrp    x2, #0x1003c0000
  10009f954  add     x2, x2, #0x810                           ; @"Car2"
  10009f958  bl      _objc_msgSend                            ; [x0 isEqualToString:@"Car2"]
  10009f95c  tbnz    w0, #0, loc_10009f97c                    ; if (([x0 isEqualToString:@"Car2"] & 1))
  10009f960  mov     x27, #0
  10009f964  mov     x0, x25
  10009f968  mov     x1, x23
  10009f96c  adrp    x2, #0x1003c0000
  10009f970  add     x2, x2, #0x830                           ; @"Car3"
  10009f974  bl      _objc_msgSend                            ; [x0 isEqualToString:@"Car3"]
  10009f978  cbz     w0, loc_10009fb48                        ; if ([x0 isEqualToString:@"Car3"] == 0)
loc_10009f97c:
  10009f97c  adrp    x8, #0x10041e000
  10009f980  ldr     x0, [x8, #0x3a8]                         ; class ADCarAlarm
  10009f984  mov     x27, #0
  10009f988  ldr     x1, [sp, #0x88]
  10009f98c  bl      _objc_msgSend                            ; [ADCarAlarm alloc]
  10009f990  mov     x27, #0
  10009f994  ldr     x1, [sp, #0x80]
  10009f998  mov     x2, x25
  10009f99c  bl      _objc_msgSend                            ; [[ADCarAlarm alloc] initWithName:x2]
loc_10009f9a0:
  10009f9a0  mov     x27, x0
  10009f9a4  ldr     x1, [sp, #0x78]
  10009f9a8  bl      _objc_msgSend                            ; [x0 activatePlaylist]
  10009f9ac  mov     x0, x27
  10009f9b0  ldr     x1, [sp, #0x70]
  10009f9b4  mov     x2, x19
  10009f9b8  bl      _objc_msgSend                            ; [x0 setPositionFromDictionary:[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2]]
  10009f9bc  ldr     x0, [sp, #0xa0]
  10009f9c0  ldr     x1, [sp, #0x68]
  10009f9c4  bl      _objc_msgSend                            ; [self tag]
  10009f9c8  mov     x24, x0
  10009f9cc  ldr     x8, [sp, #0xa0]
  10009f9d0  ldp     x1, x9, [sp, #0x58]
  10009f9d4  ldr     x0, [x8, x9]                             ; x0 = self->enemiesArray
  10009f9d8  bl      _objc_msgSend                            ; [self->enemiesArray count]
  10009f9dc  mov     w8, #0x64
  10009f9e0  madd    w8, w24, w8, w26
  10009f9e4  add     w8, w8, w0
  10009f9e8  mov     w9, #0x30000
  10009f9ec  movk    w9, #0xd41
  10009f9f0  add     w2, w8, w9
  10009f9f4  mov     x0, x27
  10009f9f8  ldr     x1, [sp, #0x50]
  10009f9fc  bl      _objc_msgSend                            ; [x0 setTag:((((x8 + x28) + [self tag] * 100) + [self->enemiesArray count]) + 0x30d41)]
  10009fa00  mov     x0, x19
  10009fa04  mov     x1, x22
  10009fa08  adrp    x2, #0x1003c0000
  10009fa0c  add     x2, x2, #0x6d0                           ; @"spawn_time"
  10009fa10  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_time"]
  10009fa14  mov     x29, x29
  10009fa18  bl      _objc_retainAutoreleasedReturnValue
  10009fa1c  mov     x24, x0
  10009fa20  bl      _objc_release
  10009fa24  cbz     x24, loc_10009fa78                       ; if ([[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_time"] == 0)
  10009fa28  mov     x0, x19
  10009fa2c  mov     x1, x22
  10009fa30  adrp    x2, #0x1003c0000
  10009fa34  add     x2, x2, #0x6d0                           ; @"spawn_time"
  10009fa38  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_time"]
  10009fa3c  mov     x29, x29
  10009fa40  bl      _objc_retainAutoreleasedReturnValue
  10009fa44  mov     x24, x0
  10009fa48  ldr     x1, [sp, #0x38]
  10009fa4c  bl      _objc_msgSend                            ; [[[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_time"] floatValue]
  10009fa50  mov     x0, x27
  10009fa54  ldr     x1, [sp, #0x30]
  10009fa58  bl      _objc_msgSend                            ; [x0 setSpawn_time:[[[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_time"] floatValue]]
  10009fa5c  mov     x0, x24
  10009fa60  bl      _objc_release
  10009fa64  mov     w2, #0
  10009fa68  mov     x0, x27
  10009fa6c  ldr     x1, [sp, #0x28]
  10009fa70  bl      _objc_msgSend                            ; [x0 setState:0]
  10009fa74  b       loc_10009fae8
loc_10009fa78:
  10009fa78  mov     x0, x19
  10009fa7c  mov     x1, x22
  10009fa80  adrp    x2, #0x1003c0000
  10009fa84  add     x2, x2, #0x750                           ; @"spawn_after"
  10009fa88  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_after"]
  10009fa8c  mov     x29, x29
  10009fa90  bl      _objc_retainAutoreleasedReturnValue
  10009fa94  mov     x24, x0
  10009fa98  bl      _objc_release
  10009fa9c  cbz     x24, loc_10009fadc                       ; if ([[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_after"] == 0)
  10009faa0  mov     x0, x19
  10009faa4  mov     x1, x22
  10009faa8  adrp    x2, #0x1003c0000
  10009faac  add     x2, x2, #0x750                           ; @"spawn_after"
  10009fab0  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_after"]
  10009fab4  mov     x29, x29
  10009fab8  bl      _objc_retainAutoreleasedReturnValue
  10009fabc  mov     x24, x0
  10009fac0  mov     x0, x27
  10009fac4  ldr     x1, [sp, #0x18]
  10009fac8  mov     x2, x24
  10009facc  bl      _objc_msgSend                            ; [x0 setSpawn_after:[[[self->brickDictionnary objectForKey:@"PasserBy"] objectForKey:x2] objectForKey:@"spawn_after"]]
  10009fad0  mov     x0, x24
  10009fad4  bl      _objc_release
  10009fad8  b       loc_10009fae8
loc_10009fadc:
  10009fadc  mov     x0, x27
  10009fae0  ldr     x1, [sp, #0x10]
  10009fae4  bl      _objc_msgSend                            ; [x0 spawn]
loc_10009fae8:
  10009fae8  adrp    x8, #0x10041e000
  10009faec  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10009faf0  ldr     x1, [sp, #0x48]
  10009faf4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10009faf8  mov     x29, x29
  10009fafc  bl      _objc_retainAutoreleasedReturnValue
  10009fb00  mov     x24, x0
  10009fb04  ldr     x1, [sp, #0x40]
  10009fb08  mov     x2, x27
  10009fb0c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] addPasserBy:x2]
  10009fb10  mov     x0, x24
  10009fb14  bl      _objc_release
  10009fb18  mov     x0, x27
  10009fb1c  bl      _objc_release
  10009fb20  mov     x0, x19
  10009fb24  bl      _objc_release
  10009fb28  mov     x0, x25
  10009fb2c  bl      _objc_release
  10009fb30  add     x28, x28, #1
  10009fb34  mov     x24, x21
  10009fb38  cmp     x28, x24
  10009fb3c  mov     x19, x20
  10009fb40  b.lo    loc_10009f88c                            ; if ((x28 + 1) <u [[[self->brickDictionnary objectForKey:@"PasserBy"] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] c…)
  10009fb44  b       loc_10009fbb4
loc_10009fb48:
  10009fb48  mov     x27, #0
  10009fb4c  mov     x0, x25
  10009fb50  mov     x1, x23
  10009fb54  adrp    x2, #0x1003c0000
  10009fb58  add     x2, x2, #0x850                           ; @"Machine"
  10009fb5c  bl      _objc_msgSend                            ; [x0 isEqualToString:@"Machine"]
  10009fb60  cbz     w0, loc_10009fb8c                        ; if ([x0 isEqualToString:@"Machine"] == 0)
  10009fb64  adrp    x8, #0x10041e000
  10009fb68  ldr     x0, [x8, #0x3b0]                         ; class ADMachine
  10009fb6c  mov     x27, #0
  10009fb70  ldr     x1, [sp, #0x88]
  10009fb74  bl      _objc_msgSend                            ; [ADMachine alloc]
  10009fb78  mov     x27, #0
  10009fb7c  ldr     x1, [sp, #0x80]
  10009fb80  mov     x2, x25
  10009fb84  bl      _objc_msgSend                            ; [[ADMachine alloc] initWithName:x2]
  10009fb88  b       loc_10009f9a0
loc_10009fb8c:
  10009fb8c  adrp    x8, #0x10041e000
  10009fb90  ldr     x0, [x8, #0x3b8]                         ; class ADPasserBy
  10009fb94  mov     x27, #0
  10009fb98  ldr     x1, [sp, #0x88]
  10009fb9c  bl      _objc_msgSend                            ; [ADPasserBy alloc]
  10009fba0  mov     x27, #0
  10009fba4  ldr     x1, [sp, #0x80]
  10009fba8  mov     x2, x25
  10009fbac  bl      _objc_msgSend                            ; [[ADPasserBy alloc] initWithName:x2]
  10009fbb0  b       loc_10009f9a0
loc_10009fbb4:
  10009fbb4  add     x2, sp, #0xa8
  10009fbb8  sub     x3, x29, #0xd8
  10009fbbc  mov     w4, #0x10
  10009fbc0  ldr     x0, [sp, #0x20]
  10009fbc4  ldr     x1, [sp, #8]
  10009fbc8  bl      _objc_msgSend                            ; [[[self->brickDictionnary objectForKey:@"PasserBy"] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  10009fbcc  mov     x24, x0
  10009fbd0  ldr     x8, [sp, #0x98]
  10009fbd4  add     x8, x8, x28
  10009fbd8  cbnz    x24, loc_10009f880                       ; if ([[[self->brickDictionnary objectForKey:@"PasserBy"] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] != 0)
loc_10009fbdc:
  10009fbdc  ldr     x0, [sp, #0x20]
  10009fbe0  bl      _objc_release
  10009fbe4  adrp    x20, #0x1003b0000
  10009fbe8  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  10009fbec  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
loc_10009fbf0:
  10009fbf0  mov     x0, x19
  10009fbf4  bl      _objc_release
  10009fbf8  ldur    x8, [x29, #-0x58]
  10009fbfc  sub     x8, x20, x8
  10009fc00  cbnz    x8, loc_10009fc24                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009fc04  sub     sp, x29, #0x50
  10009fc08  ldp     x29, x30, [sp, #0x50]
  10009fc0c  ldp     x20, x19, [sp, #0x40]
  10009fc10  ldp     x22, x21, [sp, #0x30]
  10009fc14  ldp     x24, x23, [sp, #0x20]
  10009fc18  ldp     x26, x25, [sp, #0x10]
  10009fc1c  ldp     x28, x27, [sp], #0x60
  10009fc20  ret
loc_10009fc24:
  10009fc24  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10009fc28  mov     x21, x0
loc_10009fc2c:
  10009fc2c  mov     x0, x27
  10009fc30  bl      _objc_release
  10009fc34  mov     x0, x19
  10009fc38  bl      _objc_release
  10009fc3c  mov     x19, x20
loc_10009fc40:
  10009fc40  mov     x0, x25
  10009fc44  bl      _objc_release
loc_10009fc48:
  10009fc48  ldr     x0, [sp, #0x20]
  10009fc4c  bl      _objc_release
loc_10009fc50:
  10009fc50  mov     x0, x19
  10009fc54  bl      _objc_release
  10009fc58  mov     x0, x21
  10009fc5c  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009fc60  b       loc_10009fc78
  10009fc64  mov     x21, x0
  10009fc68  b       loc_10009fc40
  10009fc6c  b       loc_10009fc78
loc_10009fc70:
  10009fc70  mov     x21, x0
  10009fc74  b       loc_10009fc48
loc_10009fc78:
  10009fc78  mov     x21, x0
  10009fc7c  mov     x0, x24
  10009fc80  bl      _objc_release
  10009fc84  b       loc_10009fc2c
  10009fc88  b       loc_10009fc70
  10009fc8c  mov     x21, x0
  10009fc90  b       loc_10009fc50
  10009fc94  b       loc_10009fc70

; ======================================================================
; -[ADBrick activateAllPlaylists]
; address 0x10009fc98  size 340  kind objc
; ======================================================================
  10009fc98  stp     x28, x27, [sp, #-0x60]!
  10009fc9c  stp     x26, x25, [sp, #0x10]
  10009fca0  stp     x24, x23, [sp, #0x20]
  10009fca4  stp     x22, x21, [sp, #0x30]
  10009fca8  stp     x20, x19, [sp, #0x40]
  10009fcac  stp     x29, x30, [sp, #0x50]
  10009fcb0  add     x29, sp, #0x50
  10009fcb4  sub     sp, sp, #0xd0
  10009fcb8  mov     x19, x0
  10009fcbc  adrp    x24, #0x1003b0000
  10009fcc0  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  10009fcc4  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10009fcc8  stur    x24, [x29, #-0x58]
  10009fccc  stp     xzr, xzr, [sp, #0x38]
  10009fcd0  stp     xzr, xzr, [sp, #0x28]
  10009fcd4  stp     xzr, xzr, [sp, #0x18]
  10009fcd8  stp     xzr, xzr, [sp, #8]
  10009fcdc  adrp    x8, #0x10041a000
  10009fce0  nop
  10009fce4  ldr     x1, [x8, #0x298]
  10009fce8  bl      _objc_msgSend                            ; [self playlists]
  10009fcec  mov     x29, x29
  10009fcf0  bl      _objc_retainAutoreleasedReturnValue
  10009fcf4  mov     x20, x0
  10009fcf8  adrp    x8, #0x100416000
  10009fcfc  nop
  10009fd00  ldr     x21, [x8, #0xe00]
  10009fd04  add     x2, sp, #8
  10009fd08  add     x3, sp, #0x48
  10009fd0c  mov     w4, #0x10
  10009fd10  mov     x1, x21
  10009fd14  bl      _objc_msgSend                            ; [[self playlists] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10009fd18  mov     x22, x0
  10009fd1c  cbz     x22, loc_10009fd98                       ; if ([[self playlists] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10009fd20  ldr     x8, [sp, #0x18]
  10009fd24  ldr     x25, [x8]
  10009fd28  adrp    x8, #0x100420000
  10009fd2c  ldrsw   x26, [x8, #0x80]                         ; ivar offset ADBrick.playlistsRequiringActivation (+0x28)
  10009fd30  adrp    x8, #0x100416000
  10009fd34  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  10009fd38  ldr     x23, [x8]
loc_10009fd3c:
  10009fd3c  mov     x27, #0
loc_10009fd40:
  10009fd40  ldr     x8, [sp, #0x18]
  10009fd44  ldr     x8, [x8]
  10009fd48  cmp     x8, x25
  10009fd4c  b.eq    loc_10009fd58                            ; if (x8 == x25)
  10009fd50  mov     x0, x20
  10009fd54  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self playlists])
loc_10009fd58:
  10009fd58  ldr     x8, [sp, #0x10]
  10009fd5c  ldr     x2, [x8, x27, lsl #3]
  10009fd60  ldr     x0, [x19, x26]                           ; x0 = self->playlistsRequiringActivation
  10009fd64  mov     x1, x23
  10009fd68  bl      _objc_msgSend                            ; [self->playlistsRequiringActivation addObject:x2]
  10009fd6c  add     x27, x27, #1
  10009fd70  cmp     x27, x22
  10009fd74  b.lo    loc_10009fd40                            ; if ((x27 + 1) <u [[self playlists] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  10009fd78  add     x2, sp, #8
  10009fd7c  add     x3, sp, #0x48
  10009fd80  mov     w4, #0x10
  10009fd84  mov     x0, x20
  10009fd88  mov     x1, x21
  10009fd8c  bl      _objc_msgSend                            ; [[self playlists] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10009fd90  mov     x22, x0
  10009fd94  cbnz    x22, loc_10009fd3c                       ; if ([[self playlists] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_10009fd98:
  10009fd98  mov     x0, x20
  10009fd9c  bl      _objc_release
  10009fda0  ldur    x8, [x29, #-0x58]
  10009fda4  sub     x8, x24, x8
  10009fda8  cbnz    x8, loc_10009fdcc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10009fdac  sub     sp, x29, #0x50
  10009fdb0  ldp     x29, x30, [sp, #0x50]
  10009fdb4  ldp     x20, x19, [sp, #0x40]
  10009fdb8  ldp     x22, x21, [sp, #0x30]
  10009fdbc  ldp     x24, x23, [sp, #0x20]
  10009fdc0  ldp     x26, x25, [sp, #0x10]
  10009fdc4  ldp     x28, x27, [sp], #0x60
  10009fdc8  ret
loc_10009fdcc:
  10009fdcc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10009fdd0:
  10009fdd0  mov     x19, x0
  10009fdd4  mov     x0, x20
  10009fdd8  bl      _objc_release
  10009fddc  mov     x0, x19
  10009fde0  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009fde4  b       loc_10009fdd0
  10009fde8  b       loc_10009fdd0

; ======================================================================
; -[ADBrick loadPLaylistWithName:]
; address 0x10009fdec  size 380  kind objc
; ======================================================================
  10009fdec  stp     x24, x23, [sp, #-0x40]!
  10009fdf0  stp     x22, x21, [sp, #0x10]
  10009fdf4  stp     x20, x19, [sp, #0x20]
  10009fdf8  stp     x29, x30, [sp, #0x30]
  10009fdfc  add     x29, sp, #0x30
  10009fe00  sub     sp, sp, #0x60
  10009fe04  mov     x20, x0
  10009fe08  mov     x0, x2
  10009fe0c  bl      _objc_retain
  10009fe10  mov     x19, x0
  10009fe14  adrp    x8, #0x10041d000
  10009fe18  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10009fe1c  adrp    x8, #0x100417000
  10009fe20  nop
  10009fe24  ldr     x1, [x8, #0x4f0]
  10009fe28  bl      _objc_msgSend                            ; [S3DEngine engine]
  10009fe2c  mov     x29, x29
  10009fe30  bl      _objc_retainAutoreleasedReturnValue
  10009fe34  mov     x22, x0
  10009fe38  adrp    x8, #0x100417000
  10009fe3c  nop
  10009fe40  ldr     x1, [x8, #0x4f8]
  10009fe44  mov     x2, x19
  10009fe48  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:arg1]
  10009fe4c  mov     x29, x29
  10009fe50  bl      _objc_retainAutoreleasedReturnValue
  10009fe54  mov     x21, x0
  10009fe58  mov     x0, x22
  10009fe5c  bl      _objc_release
  10009fe60  add     x23, sp, #0x30
  10009fe64  stp     xzr, x23, [sp, #0x30]
  10009fe68  mov     w8, #0x32000000
  10009fe6c  str     w8, [sp, #0x40]
  10009fe70  mov     w8, #0x30
  10009fe74  str     w8, [sp, #0x44]
  10009fe78  adr     x8, #0x10009ff68                         ; &-[ADBrick loadPLaylistWithName:]_block_invoke
  10009fe7c  nop
  10009fe80  str     x8, [sp, #0x48]
  10009fe84  adr     x8, #0x10009ff78                         ; &-[ADBrick loadPLaylistWithName:]_block_invoke_2
  10009fe88  nop
  10009fe8c  str     x8, [sp, #0x50]
  10009fe90  mov     x0, x19
  10009fe94  bl      _objc_retain
  10009fe98  mov     x22, x0
  10009fe9c  adrp    x8, #0x1003b0000
  10009fea0  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10009fea4  mov     w9, #-0x3e000000
  10009fea8  str     x8, [sp]
  10009feac  adr     x8, #0x10009ff80                         ; &-[ADBrick loadPLaylistWithName:]_block_invoke_3
  10009feb0  nop
  10009feb4  stp     w9, wzr, [sp, #8]
  10009feb8  str     x8, [sp, #0x10]
  10009febc  adrp    x8, #0x1003b2000
  10009fec0  add     x8, x8, #0x350                           ; &d_1003b2350
  10009fec4  str     x22, [sp, #0x58]
  10009fec8  stp     x8, x23, [sp, #0x18]
  10009fecc  str     x20, [sp, #0x28]
  10009fed0  adrp    x8, #0x100419000
  10009fed4  nop
  10009fed8  ldr     x1, [x8, #0x408]
  10009fedc  mov     x2, sp
  10009fee0  mov     x0, x21
  10009fee4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:arg1] activate:^{-[ADBrick loadPLaylistWithName:]_block_invoke_3 captures +0x28=self, +0x40=0x32000000, +0x48=&-[ADBrick loadPLaylistWithName:]_block_…, +0x50=&-[ADBrick loadPLaylistWithName:]_block_…, +0x58=arg1}]
  10009fee8  add     x0, sp, #0x30
  10009feec  mov     w1, #8
  10009fef0  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  10009fef4  ldr     x0, [sp, #0x58]
  10009fef8  bl      _objc_release
  10009fefc  mov     x0, x21
  10009ff00  bl      _objc_release
  10009ff04  mov     x0, x22
  10009ff08  bl      _objc_release
  10009ff0c  sub     sp, x29, #0x30
  10009ff10  ldp     x29, x30, [sp, #0x30]
  10009ff14  ldp     x20, x19, [sp, #0x20]
  10009ff18  ldp     x22, x21, [sp, #0x10]
  10009ff1c  ldp     x24, x23, [sp], #0x40
  10009ff20  ret
  10009ff24  mov     x20, x0
  10009ff28  b       loc_10009ff58
  10009ff2c  mov     x20, x0
  10009ff30  mov     x0, x22
  10009ff34  b       loc_10009ff54
  10009ff38  mov     x20, x0
  10009ff3c  add     x0, sp, #0x30
  10009ff40  mov     w1, #8
  10009ff44  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x30], 8)
  10009ff48  ldr     x0, [sp, #0x58]
  10009ff4c  bl      _objc_release
  10009ff50  mov     x0, x21
loc_10009ff54:
  10009ff54  bl      _objc_release
loc_10009ff58:
  10009ff58  mov     x0, x19
  10009ff5c  bl      _objc_release
  10009ff60  mov     x0, x20
  10009ff64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrick loadPLaylistWithName:]_block_invoke
; address 0x10009ff68  size 16  kind block
; ======================================================================
  10009ff68  ldr     x8, [x1, #0x28]                          ; x8 = blockarg1[+0x28]
  10009ff6c  str     x8, [x0, #0x28]                          ; block[+0x28] = blockarg1[+0x28]
  10009ff70  str     xzr, [x1, #0x28]                         ; blockarg1[+0x28] = 0
  10009ff74  ret

; ======================================================================
; -[ADBrick loadPLaylistWithName:]_block_invoke_2
; address 0x10009ff78  size 8  kind block
; ======================================================================
  10009ff78  ldr     x0, [x0, #0x28]                          ; x0 = block[+0x28]
  10009ff7c  b       _objc_release

; ======================================================================
; -[ADBrick loadPLaylistWithName:]_block_invoke_3
; address 0x10009ff80  size 44  kind block
; ======================================================================
  10009ff80  stp     x29, x30, [sp, #-0x10]!
  10009ff84  mov     x29, sp
  10009ff88  ldp     x8, x0, [x0, #0x20]
  10009ff8c  ldr     x8, [x8, #8]
  10009ff90  ldr     x2, [x8, #0x28]
  10009ff94  adrp    x8, #0x10041a000
  10009ff98  nop
  10009ff9c  ldr     x1, [x8, #0x2b8]
  10009ffa0  bl      _objc_msgSend                            ; [x0 onPlaylistActivated:x2]
  10009ffa4  ldp     x29, x30, [sp], #0x10
  10009ffa8  ret

; ======================================================================
; sub_10009ffac
; address 0x10009ffac  size 16  kind sub
; ======================================================================
  10009ffac  add     x0, x0, #0x20
  10009ffb0  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  10009ffb4  mov     w2, #8
  10009ffb8  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_10009ffbc
; address 0x10009ffbc  size 12  kind sub
; ======================================================================
  10009ffbc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  10009ffc0  mov     w1, #8
  10009ffc4  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; -[ADBrick activatePLaylistsNotInSet:]
; address 0x10009ffc8  size 840  kind objc
; ======================================================================
  10009ffc8  stp     x28, x27, [sp, #-0x60]!
  10009ffcc  stp     x26, x25, [sp, #0x10]
  10009ffd0  stp     x24, x23, [sp, #0x20]
  10009ffd4  stp     x22, x21, [sp, #0x30]
  10009ffd8  stp     x20, x19, [sp, #0x40]
  10009ffdc  stp     x29, x30, [sp, #0x50]
  10009ffe0  add     x29, sp, #0x50
  10009ffe4  sub     sp, sp, #0x1e0
  10009ffe8  str     x0, [sp, #0x50]
  10009ffec  adrp    x8, #0x1003b0000
  10009fff0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10009fff4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10009fff8  stur    x8, [x29, #-0x58]
  10009fffc  mov     x0, x2
  1000a0000  bl      _objc_retain
  1000a0004  mov     x22, x0
  1000a0008  str     x22, [sp, #0x30]
  1000a000c  adrp    x8, #0x10041e000
  1000a0010  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  1000a0014  adrp    x8, #0x100416000
  1000a0018  nop
  1000a001c  ldr     x1, [x8, #0xac8]
  1000a0020  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  1000a0024  adrp    x8, #0x10041a000
  1000a0028  nop
  1000a002c  ldr     x1, [x8, #0x2c0]
  1000a0030  mov     x2, x22
  1000a0034  bl      _objc_msgSend                            ; [[NSMutableSet alloc] initWithSet:arg1]
  1000a0038  str     x0, [sp, #0x20]
  1000a003c  stp     xzr, xzr, [sp, #0xc8]
  1000a0040  stp     xzr, xzr, [sp, #0xb8]
  1000a0044  stp     xzr, xzr, [sp, #0xa8]
  1000a0048  stp     xzr, xzr, [sp, #0x98]
  1000a004c  adrp    x8, #0x10041a000
  1000a0050  nop
  1000a0054  ldr     x1, [x8, #0x298]
  1000a0058  ldr     x0, [sp, #0x50]
  1000a005c  bl      _objc_msgSend                            ; [self playlists]
  1000a0060  mov     x29, x29
  1000a0064  bl      _objc_retainAutoreleasedReturnValue
  1000a0068  str     x0, [sp, #0x28]
  1000a006c  adrp    x8, #0x100416000
  1000a0070  nop
  1000a0074  ldr     x23, [x8, #0xe00]
  1000a0078  add     x2, sp, #0x98
  1000a007c  sub     x3, x29, #0xd8
  1000a0080  mov     w4, #0x10
  1000a0084  mov     x1, x23
  1000a0088  bl      _objc_msgSend                            ; [[self playlists] countByEnumeratingWithState:&sp[0x98] objects:&x29[-0xd8] count:16]
  1000a008c  mov     x21, x0
  1000a0090  cbz     x21, loc_1000a0250                       ; if ([[self playlists] countByEnumeratingWithState:&sp[0x98] objects:&x29[-0xd8] count:16] == 0)
  1000a0094  ldr     x8, [sp, #0xa8]
  1000a0098  ldr     x8, [x8]
  1000a009c  str     x8, [sp, #0x48]
  1000a00a0  adrp    x8, #0x100420000
  1000a00a4  ldrsw   x8, [x8, #0x80]                          ; ivar offset ADBrick.playlistsRequiringActivation (+0x28)
  1000a00a8  str     x8, [sp, #0x40]
  1000a00ac  adrp    x8, #0x100416000
  1000a00b0  nop
  1000a00b4  ldr     x8, [x8, #0xd90]
  1000a00b8  str     x8, [sp, #0x38]
  1000a00bc  adrp    x8, #0x100416000
  1000a00c0  nop
  1000a00c4  ldr     x26, [x8, #0xf58]
  1000a00c8  adrp    x8, #0x100420000
  1000a00cc  ldrsw   x8, [x8, #0x84]                          ; ivar offset ADBrick.playlistsActivated (+0x30)
  1000a00d0  str     x8, [sp, #0x18]
  1000a00d4  adrp    x8, #0x10041a000
  1000a00d8  nop
  1000a00dc  ldr     x8, [x8, #0x2b8]
  1000a00e0  str     x8, [sp, #0x10]
  1000a00e4  adrp    x8, #0x100416000
  1000a00e8  nop
  1000a00ec  ldr     x8, [x8, #0xe20]
  1000a00f0  str     x8, [sp, #8]
loc_1000a00f4:
  1000a00f4  mov     x19, #0
loc_1000a00f8:
  1000a00f8  ldr     x8, [sp, #0xa8]
  1000a00fc  ldr     x8, [x8]
  1000a0100  ldr     x9, [sp, #0x48]
  1000a0104  cmp     x8, x9
  1000a0108  b.eq    loc_1000a0114                            ; if (x8 == x9)
  1000a010c  ldr     x0, [sp, #0x28]
  1000a0110  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self playlists])
loc_1000a0114:
  1000a0114  ldr     x8, [sp, #0xa0]
  1000a0118  ldr     x20, [x8, x19, lsl #3]
  1000a011c  stp     xzr, xzr, [sp, #0x88]
  1000a0120  stp     xzr, xzr, [sp, #0x78]
  1000a0124  stp     xzr, xzr, [sp, #0x68]
  1000a0128  stp     xzr, xzr, [sp, #0x58]
  1000a012c  mov     x0, x22
  1000a0130  bl      _objc_retain
  1000a0134  mov     x27, x0
  1000a0138  add     x2, sp, #0x58
  1000a013c  add     x3, sp, #0xd8
  1000a0140  mov     w4, #0x10
  1000a0144  mov     x1, x23
  1000a0148  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x58] objects:&sp[0xd8] count:16]
  1000a014c  mov     x28, x0
  1000a0150  cbz     x28, loc_1000a0208                       ; if ([arg1 countByEnumeratingWithState:&sp[0x58] objects:&sp[0xd8] count:16] == 0)
  1000a0154  ldr     x8, [sp, #0x68]
  1000a0158  ldr     x22, [x8]
  1000a015c  mov     w25, #1
loc_1000a0160:
  1000a0160  mov     x24, #0
loc_1000a0164:
  1000a0164  ldr     x8, [sp, #0x68]
  1000a0168  ldr     x8, [x8]
  1000a016c  cmp     x8, x22
  1000a0170  b.eq    loc_1000a017c                            ; if (x8 == x22)
  1000a0174  mov     x0, x27
  1000a0178  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1000a017c:
  1000a017c  ldr     x8, [sp, #0x60]
  1000a0180  ldr     x2, [x8, x24, lsl #3]
  1000a0184  mov     x0, x20
  1000a0188  mov     x1, x26
  1000a018c  bl      _objc_msgSend                            ; [x0 isEqualToString:x2]
  1000a0190  eor     w8, w0, #1
  1000a0194  and     w25, w25, w8
  1000a0198  add     x24, x24, #1
  1000a019c  cmp     x24, x28
  1000a01a0  b.lo    loc_1000a0164                            ; if ((x24 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x58] objects:&sp[0xd8] count:16])
  1000a01a4  add     x2, sp, #0x58
  1000a01a8  add     x3, sp, #0xd8
  1000a01ac  mov     w4, #0x10
  1000a01b0  mov     x0, x27
  1000a01b4  mov     x1, x23
  1000a01b8  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x58] objects:&sp[0xd8] count:16]
  1000a01bc  mov     x28, x0
  1000a01c0  cbnz    x28, loc_1000a0160                       ; if ([arg1 countByEnumeratingWithState:&sp[0x58] objects:&sp[0xd8] count:16] != 0)
  1000a01c4  mov     x0, x27
  1000a01c8  bl      _objc_release
  1000a01cc  ldr     x22, [sp, #0x30]
  1000a01d0  tbnz    w25, #0, loc_1000a0210                   ; if (((w25 & ([x0 isEqualToString:x2] ^ 1)) & 1))
  1000a01d4  ldr     x0, [sp, #0x50]
  1000a01d8  ldr     x9, [sp, #0x18]
  1000a01dc  ldr     w8, [x0, x9]                             ; w8 = self->playlistsActivated
  1000a01e0  add     w8, w8, #1
  1000a01e4  str     w8, [x0, x9]                             ; self->playlistsActivated = (self->playlistsActivated + 1)
  1000a01e8  ldr     x1, [sp, #0x10]
  1000a01ec  mov     x2, x20
  1000a01f0  bl      _objc_msgSend                            ; [self onPlaylistActivated:x2]
  1000a01f4  ldr     x0, [sp, #0x20]
  1000a01f8  ldr     x1, [sp, #8]
  1000a01fc  mov     x2, x20
  1000a0200  bl      _objc_msgSend                            ; [[[NSMutableSet alloc] initWithSet:arg1] removeObject:x2]
  1000a0204  b       loc_1000a0224
loc_1000a0208:
  1000a0208  mov     x0, x27
  1000a020c  bl      _objc_release
loc_1000a0210:
  1000a0210  ldr     x8, [sp, #0x50]
  1000a0214  ldp     x1, x9, [sp, #0x38]
  1000a0218  ldr     x0, [x8, x9]                             ; x0 = self->playlistsRequiringActivation
  1000a021c  mov     x2, x20
  1000a0220  bl      _objc_msgSend                            ; [self->playlistsRequiringActivation addObject:x2]
loc_1000a0224:
  1000a0224  add     x19, x19, #1
  1000a0228  cmp     x19, x21
  1000a022c  b.lo    loc_1000a00f8                            ; if ((x19 + 1) <u [[self playlists] countByEnumeratingWithState:&sp[0x98] objects:&x29[-0xd8] count:16])
  1000a0230  add     x2, sp, #0x98
  1000a0234  sub     x3, x29, #0xd8
  1000a0238  mov     w4, #0x10
  1000a023c  ldr     x0, [sp, #0x28]
  1000a0240  mov     x1, x23
  1000a0244  bl      _objc_msgSend                            ; [[self playlists] countByEnumeratingWithState:&sp[0x98] objects:&x29[-0xd8] count:16]
  1000a0248  mov     x21, x0
  1000a024c  cbnz    x21, loc_1000a00f4                       ; if ([[self playlists] countByEnumeratingWithState:&sp[0x98] objects:&x29[-0xd8] count:16] != 0)
loc_1000a0250:
  1000a0250  ldr     x0, [sp, #0x28]
  1000a0254  bl      _objc_release
  1000a0258  adrp    x8, #0x10041a000
  1000a025c  nop
  1000a0260  ldr     x1, [x8, #0x2c8]
  1000a0264  ldr     x0, [sp, #0x50]
  1000a0268  bl      _objc_msgSend                            ; [self checkAllPlaylistsAreLoaded]
  1000a026c  adrp    x19, #0x1003b0000
  1000a0270  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000a0274  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000a0278  mov     x0, x22
  1000a027c  bl      _objc_release
  1000a0280  ldur    x8, [x29, #-0x58]
  1000a0284  sub     x8, x19, x8
  1000a0288  cbnz    x8, loc_1000a02b0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a028c  ldr     x0, [sp, #0x20]
  1000a0290  sub     sp, x29, #0x50
  1000a0294  ldp     x29, x30, [sp, #0x50]
  1000a0298  ldp     x20, x19, [sp, #0x40]
  1000a029c  ldp     x22, x21, [sp, #0x30]
  1000a02a0  ldp     x24, x23, [sp, #0x20]
  1000a02a4  ldp     x26, x25, [sp, #0x10]
  1000a02a8  ldp     x28, x27, [sp], #0x60
  1000a02ac  b       _objc_autoreleaseReturnValue
loc_1000a02b0:
  1000a02b0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a02b4:
  1000a02b4  mov     x20, x0
  1000a02b8  ldr     x22, [sp, #0x30]
loc_1000a02bc:
  1000a02bc  mov     x0, x27
  1000a02c0  bl      _objc_release
loc_1000a02c4:
  1000a02c4  ldr     x0, [sp, #0x28]
  1000a02c8  bl      _objc_release
loc_1000a02cc:
  1000a02cc  ldr     x0, [sp, #0x20]
  1000a02d0  bl      _objc_release
loc_1000a02d4:
  1000a02d4  mov     x0, x22
  1000a02d8  bl      _objc_release
  1000a02dc  mov     x0, x20
  1000a02e0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a02e4  b       loc_1000a02b4
loc_1000a02e8:
  1000a02e8  mov     x20, x0
  1000a02ec  b       loc_1000a02c4
  1000a02f0  mov     x20, x0
  1000a02f4  b       loc_1000a02bc
  1000a02f8  b       loc_1000a02e8
  1000a02fc  mov     x20, x0
  1000a0300  b       loc_1000a02d4
  1000a0304  mov     x20, x0
  1000a0308  b       loc_1000a02cc
  1000a030c  b       loc_1000a02e8

; ======================================================================
; -[ADBrick randomTip]
; address 0x1000a0310  size 592  kind objc
; ======================================================================
  1000a0310  stp     x24, x23, [sp, #-0x40]!
  1000a0314  stp     x22, x21, [sp, #0x10]
  1000a0318  stp     x20, x19, [sp, #0x20]
  1000a031c  stp     x29, x30, [sp, #0x30]
  1000a0320  add     x29, sp, #0x30
  1000a0324  sub     sp, sp, #0x10
  1000a0328  mov     x21, x0
  1000a032c  adrp    x8, #0x100420000
  1000a0330  ldrsw   x24, [x8, #0x88]                         ; ivar offset ADBrick.tips (+0x38)
  1000a0334  ldr     x0, [x21, x24]                           ; x0 = self->tips
  1000a0338  cbz     x0, loc_1000a0400                        ; if (self->tips == 0)
  1000a033c  adrp    x8, #0x100416000
  1000a0340  nop
  1000a0344  ldr     x22, [x8, #0xe30]
  1000a0348  mov     x19, #0
  1000a034c  mov     x1, x22
  1000a0350  bl      _objc_msgSend                            ; [self->tips count]
  1000a0354  cbz     x0, loc_1000a0400                        ; if ([self->tips count] == 0)
  1000a0358  ldr     x20, [x21, x24]                          ; x20 = self->tips
  1000a035c  mov     x19, #0
  1000a0360  bl      _rand                                    ; rand()
  1000a0364  mov     x23, x0
  1000a0368  ldr     x0, [x21, x24]                           ; x0 = self->tips
  1000a036c  mov     x19, #0
  1000a0370  mov     x1, x22
  1000a0374  bl      _objc_msgSend                            ; [self->tips count]
  1000a0378  sxtw    x8, w23
  1000a037c  udiv    x9, x8, x0
  1000a0380  msub    x2, x9, x0, x8
  1000a0384  adrp    x8, #0x100416000
  1000a0388  nop
  1000a038c  ldr     x1, [x8, #0xc30]
  1000a0390  mov     x19, #0
  1000a0394  mov     x0, x20
  1000a0398  bl      _objc_msgSend                            ; [self->tips objectAtIndex:(rand() - (rand() / [self->tips count]) * [self->tips count])]
  1000a039c  mov     x29, x29
  1000a03a0  bl      _objc_retainAutoreleasedReturnValue
  1000a03a4  mov     x19, x0
  1000a03a8  cbz     x19, loc_1000a0400                       ; if ([self->tips objectAtIndex:(rand() - (rand() / [self->tips count]) * [self->tips count])] == 0)
  1000a03ac  adrp    x8, #0x10041a000
  1000a03b0  nop
  1000a03b4  ldr     x1, [x8, #0x2d0]
  1000a03b8  adrp    x2, #0x1003c0000
  1000a03bc  add     x2, x2, #0x870                           ; @"Tip"
  1000a03c0  mov     x0, x19
  1000a03c4  bl      _objc_msgSend                            ; [[self->tips objectAtIndex:(rand() - (rand() / [self->tips count]) * [self->tips count])] hasPrefix:@"Tip"]
  1000a03c8  tbnz    w0, #0, loc_1000a0404                    ; if (([[self->tips objectAtIndex:(rand() - (rand() / [self->tips count]) * [self->tips count])] hasPrefix:@"Tip"] & 1))
  1000a03cc  bl      _rand                                    ; rand()
  1000a03d0  sxtw    x8, w0
  1000a03d4  mov     w9, #0x51eb0000
  1000a03d8  movk    w9, #0x851f
  1000a03dc  mul     x8, x8, x9
  1000a03e0  lsr     x9, x8, #0x3f
  1000a03e4  asr     x8, x8, #0x25
  1000a03e8  add     w8, w8, w9
  1000a03ec  mov     w9, #0x64
  1000a03f0  msub    w8, w8, w9, w0
  1000a03f4  cmp     w8, #0x13
  1000a03f8  b.gt    loc_1000a04f0                            ; if ((rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) > 19)
  1000a03fc  b       loc_1000a0404
loc_1000a0400:
  1000a0400  mov     x19, #0
loc_1000a0404:
  1000a0404  adrp    x8, #0x10041d000
  1000a0408  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000a040c  adrp    x8, #0x100416000
  1000a0410  nop
  1000a0414  ldr     x1, [x8, #0xb58]
  1000a0418  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000a041c  mov     x29, x29
  1000a0420  bl      _objc_retainAutoreleasedReturnValue
  1000a0424  mov     x21, x0
  1000a0428  adrp    x8, #0x100416000
  1000a042c  nop
  1000a0430  ldr     x1, [x8, #0xd60]
  1000a0434  adrp    x2, #0x1003c0000
  1000a0438  add     x2, x2, #0x6f0                           ; @"Tips"
  1000a043c  adrp    x3, #0x1003b9000
  1000a0440  add     x3, x3, #0xa70                           ; @"plist"
  1000a0444  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Tips" withExtension:@"plist"]
  1000a0448  mov     x29, x29
  1000a044c  bl      _objc_retainAutoreleasedReturnValue
  1000a0450  mov     x20, x0
  1000a0454  mov     x0, x21
  1000a0458  bl      _objc_release
  1000a045c  adrp    x8, #0x10041d000
  1000a0460  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000a0464  adrp    x8, #0x100416000
  1000a0468  nop
  1000a046c  ldr     x1, [x8, #0xac8]
  1000a0470  bl      _objc_msgSend                            ; [NSArray alloc]
  1000a0474  adrp    x8, #0x100416000
  1000a0478  nop
  1000a047c  ldr     x1, [x8, #0xd68]
  1000a0480  mov     x2, x20
  1000a0484  bl      _objc_msgSend                            ; [[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tips" withExtension:@"plist"]]
  1000a0488  mov     x21, x0
  1000a048c  bl      _rand                                    ; rand()
  1000a0490  mov     x22, x0
  1000a0494  adrp    x8, #0x100416000
  1000a0498  nop
  1000a049c  ldr     x1, [x8, #0xe30]
  1000a04a0  mov     x0, x21
  1000a04a4  bl      _objc_msgSend                            ; [[[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tips" withExtension:@"plist"]] count]
  1000a04a8  sxtw    x8, w22
  1000a04ac  udiv    x9, x8, x0                               ; t1 = (rand() / [[[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tips" withExtension:@"plist"]] count])
  1000a04b0  msub    x2, x9, x0, x8                           ; t2 = (rand() - t1 * [[[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tips" withExtension:@"plist"]] count])
  1000a04b4  adrp    x8, #0x100416000
  1000a04b8  nop
  1000a04bc  ldr     x1, [x8, #0xc30]
  1000a04c0  mov     x0, x21
  1000a04c4  bl      _objc_msgSend                            ; [[[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Tips" withExtension:@"plist"]] objectAtIndex:t2]
  1000a04c8  mov     x29, x29
  1000a04cc  bl      _objc_retainAutoreleasedReturnValue
  1000a04d0  mov     x22, x0
  1000a04d4  mov     x0, x19
  1000a04d8  bl      _objc_release
  1000a04dc  mov     x0, x21
  1000a04e0  bl      _objc_release
  1000a04e4  mov     x0, x20
  1000a04e8  bl      _objc_release
  1000a04ec  mov     x19, x22
loc_1000a04f0:
  1000a04f0  str     x19, [sp]
  1000a04f4  adrp    x0, #0x1003c0000
  1000a04f8  add     x0, x0, #0x890                           ; @"Tip after : %@"
  1000a04fc  bl      _NSLog                                   ; NSLog(@"Tip after : %@", sp[0])
  1000a0500  mov     x0, x19
  1000a0504  sub     sp, x29, #0x30
  1000a0508  ldp     x29, x30, [sp, #0x30]
  1000a050c  ldp     x20, x19, [sp, #0x20]
  1000a0510  ldp     x22, x21, [sp, #0x10]
  1000a0514  ldp     x24, x23, [sp], #0x40
  1000a0518  b       _objc_autoreleaseReturnValue
  1000a051c  mov     x22, x0
  1000a0520  b       loc_1000a0550
  1000a0524  mov     x22, x0
  1000a0528  mov     x0, x21
  1000a052c  bl      _objc_release
  1000a0530  b       loc_1000a0538
  1000a0534  mov     x22, x0
loc_1000a0538:
  1000a0538  mov     x0, x20
  1000a053c  bl      _objc_release
  1000a0540  b       loc_1000a0550
  1000a0544  mov     x22, x0
  1000a0548  mov     x0, x21
  1000a054c  bl      _objc_release
loc_1000a0550:
  1000a0550  mov     x0, x19
  1000a0554  bl      _objc_release
  1000a0558  mov     x0, x22
  1000a055c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrick deactivatePlaylistsFromSet:]
; address 0x1000a0560  size 540  kind objc
; ======================================================================
  1000a0560  stp     x28, x27, [sp, #-0x60]!
  1000a0564  stp     x26, x25, [sp, #0x10]
  1000a0568  stp     x24, x23, [sp, #0x20]
  1000a056c  stp     x22, x21, [sp, #0x30]
  1000a0570  stp     x20, x19, [sp, #0x40]
  1000a0574  stp     x29, x30, [sp, #0x50]
  1000a0578  add     x29, sp, #0x50
  1000a057c  sub     sp, sp, #0x110
  1000a0580  adrp    x8, #0x1003b0000
  1000a0584  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a0588  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a058c  stur    x8, [x29, #-0x58]
  1000a0590  mov     x0, x2
  1000a0594  bl      _objc_retain
  1000a0598  stp     xzr, xzr, [sp, #0x78]
  1000a059c  stp     xzr, xzr, [sp, #0x68]
  1000a05a0  stp     xzr, xzr, [sp, #0x58]
  1000a05a4  stp     xzr, xzr, [sp, #0x48]
  1000a05a8  bl      _objc_retain
  1000a05ac  str     x0, [sp, #0x18]
  1000a05b0  adrp    x8, #0x100416000
  1000a05b4  nop
  1000a05b8  ldr     x1, [x8, #0xe00]
  1000a05bc  str     x1, [sp, #0x10]
  1000a05c0  add     x2, sp, #0x48
  1000a05c4  add     x3, sp, #0x88
  1000a05c8  mov     w4, #0x10
  1000a05cc  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000a05d0  mov     x21, x0
  1000a05d4  cbz     x21, loc_1000a06e0                       ; if ([arg1 countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] == 0)
  1000a05d8  ldr     x8, [sp, #0x58]
  1000a05dc  ldr     x28, [x8]
  1000a05e0  adrp    x8, #0x100417000
  1000a05e4  nop
  1000a05e8  ldr     x22, [x8, #0x4f0]
  1000a05ec  adrp    x8, #0x100417000
  1000a05f0  nop
  1000a05f4  ldr     x23, [x8, #0x4f8]
  1000a05f8  adrp    x8, #0x10041a000
  1000a05fc  add     x8, x8, #0x2d8                           ; &@selector(deactivate:)
  1000a0600  ldr     x24, [x8]
  1000a0604  adrp    x20, #0x1003b2000
  1000a0608  add     x20, x20, #0x380                         ; &d_1003b2380
loc_1000a060c:
  1000a060c  mov     x19, #0
loc_1000a0610:
  1000a0610  ldr     x8, [sp, #0x58]
  1000a0614  ldr     x8, [x8]
  1000a0618  cmp     x8, x28
  1000a061c  b.eq    loc_1000a0628                            ; if (x8 == x28)
  1000a0620  ldr     x0, [sp, #0x18]
  1000a0624  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1000a0628:
  1000a0628  ldr     x8, [sp, #0x50]
  1000a062c  ldr     x25, [x8, x19, lsl #3]
  1000a0630  adrp    x8, #0x10041d000
  1000a0634  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000a0638  mov     x1, x22
  1000a063c  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000a0640  mov     x29, x29
  1000a0644  bl      _objc_retainAutoreleasedReturnValue
  1000a0648  mov     x27, x0
  1000a064c  mov     x1, x23
  1000a0650  mov     x2, x25
  1000a0654  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:x2]
  1000a0658  mov     x29, x29
  1000a065c  bl      _objc_retainAutoreleasedReturnValue
  1000a0660  mov     x26, x0
  1000a0664  mov     x0, x27
  1000a0668  bl      _objc_release
  1000a066c  adrp    x8, #0x1003b0000
  1000a0670  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000a0674  str     x8, [sp, #0x20]
  1000a0678  mov     w8, #-0x3e000000
  1000a067c  stp     w8, wzr, [sp, #0x28]
  1000a0680  adr     x8, #0x1000a077c                         ; &-[ADBrick deactivatePlaylistsFromSet:]_block_invoke
  1000a0684  nop
  1000a0688  stp     x8, x20, [sp, #0x30]
  1000a068c  mov     x0, x25
  1000a0690  bl      _objc_retain
  1000a0694  str     x25, [sp, #0x40]
  1000a0698  add     x2, sp, #0x20
  1000a069c  mov     x0, x26
  1000a06a0  mov     x1, x24
  1000a06a4  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:x2] deactivate:^{-[ADBrick deactivatePlaylistsFromSet:]_block_invoke}]
  1000a06a8  ldr     x0, [sp, #0x40]
  1000a06ac  bl      _objc_release
  1000a06b0  mov     x0, x26
  1000a06b4  bl      _objc_release
  1000a06b8  add     x19, x19, #1
  1000a06bc  cmp     x19, x21
  1000a06c0  b.lo    loc_1000a0610                            ; if ((x19 + 1) <u [arg1 countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16])
  1000a06c4  add     x2, sp, #0x48
  1000a06c8  add     x3, sp, #0x88
  1000a06cc  mov     w4, #0x10
  1000a06d0  ldp     x1, x0, [sp, #0x10]
  1000a06d4  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000a06d8  mov     x21, x0
  1000a06dc  cbnz    x21, loc_1000a060c                       ; if ([arg1 countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] != 0)
loc_1000a06e0:
  1000a06e0  ldr     x19, [sp, #0x18]
  1000a06e4  mov     x0, x19
  1000a06e8  bl      _objc_release
  1000a06ec  mov     x0, x19
  1000a06f0  bl      _objc_release
  1000a06f4  ldur    x8, [x29, #-0x58]
  1000a06f8  adrp    x9, #0x1003b0000
  1000a06fc  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a0700  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a0704  sub     x8, x9, x8
  1000a0708  cbnz    x8, loc_1000a072c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a070c  sub     sp, x29, #0x50
  1000a0710  ldp     x29, x30, [sp, #0x50]
  1000a0714  ldp     x20, x19, [sp, #0x40]
  1000a0718  ldp     x22, x21, [sp, #0x30]
  1000a071c  ldp     x24, x23, [sp, #0x20]
  1000a0720  ldp     x26, x25, [sp, #0x10]
  1000a0724  ldp     x28, x27, [sp], #0x60
  1000a0728  ret
loc_1000a072c:
  1000a072c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a0730:
  1000a0730  mov     x20, x0
  1000a0734  b       loc_1000a0758
  1000a0738  mov     x20, x0
  1000a073c  mov     x0, x27
  1000a0740  b       loc_1000a0754
  1000a0744  mov     x20, x0
  1000a0748  ldr     x0, [sp, #0x40]
  1000a074c  bl      _objc_release
  1000a0750  mov     x0, x26
loc_1000a0754:
  1000a0754  bl      _objc_release
loc_1000a0758:
  1000a0758  ldr     x19, [sp, #0x18]
  1000a075c  mov     x0, x19
  1000a0760  bl      _objc_release
  1000a0764  mov     x0, x19
  1000a0768  bl      _objc_release
  1000a076c  mov     x0, x20
  1000a0770  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a0774  b       loc_1000a0730
  1000a0778  b       loc_1000a0730

; ======================================================================
; -[ADBrick deactivatePlaylistsFromSet:]_block_invoke
; address 0x1000a077c  size 44  kind block
; ======================================================================
  1000a077c  stp     x29, x30, [sp, #-0x10]!
  1000a0780  mov     x29, sp
  1000a0784  sub     sp, sp, #0x10
  1000a0788  ldr     x8, [x0, #0x20]                          ; x8 = block[+0x20]
  1000a078c  str     x8, [sp]
  1000a0790  adrp    x0, #0x1003c0000
  1000a0794  add     x0, x0, #0x8b0                           ; @"playlist %@ is now deactivated"
  1000a0798  bl      _NSLog                                   ; NSLog(@"playlist %@ is now deactivated", blockarg1, blockarg2, blockarg3, block[+0x20])
  1000a079c  mov     sp, x29
  1000a07a0  ldp     x29, x30, [sp], #0x10
  1000a07a4  ret

; ======================================================================
; sub_1000a07a8
; address 0x1000a07a8  size 8  kind sub
; ======================================================================
  1000a07a8  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000a07ac  b       _objc_retain

; ======================================================================
; sub_1000a07b0
; address 0x1000a07b0  size 8  kind sub
; ======================================================================
  1000a07b0  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000a07b4  b       _objc_release

; ======================================================================
; -[ADBrick deactivateAllPlaylists]
; address 0x1000a07b8  size 592  kind objc
; ======================================================================
  1000a07b8  stp     x28, x27, [sp, #-0x60]!
  1000a07bc  stp     x26, x25, [sp, #0x10]
  1000a07c0  stp     x24, x23, [sp, #0x20]
  1000a07c4  stp     x22, x21, [sp, #0x30]
  1000a07c8  stp     x20, x19, [sp, #0x40]
  1000a07cc  stp     x29, x30, [sp, #0x50]
  1000a07d0  add     x29, sp, #0x50
  1000a07d4  sub     sp, sp, #0x110
  1000a07d8  str     x0, [sp, #8]
  1000a07dc  adrp    x8, #0x1003b0000
  1000a07e0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a07e4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a07e8  stur    x8, [x29, #-0x58]
  1000a07ec  stp     xzr, xzr, [sp, #0x78]
  1000a07f0  stp     xzr, xzr, [sp, #0x68]
  1000a07f4  stp     xzr, xzr, [sp, #0x58]
  1000a07f8  stp     xzr, xzr, [sp, #0x48]
  1000a07fc  adrp    x8, #0x10041a000
  1000a0800  nop
  1000a0804  ldr     x1, [x8, #0x298]
  1000a0808  bl      _objc_msgSend                            ; [self playlists]
  1000a080c  mov     x29, x29
  1000a0810  bl      _objc_retainAutoreleasedReturnValue
  1000a0814  str     x0, [sp, #0x18]
  1000a0818  adrp    x8, #0x100416000
  1000a081c  nop
  1000a0820  ldr     x1, [x8, #0xe00]
  1000a0824  str     x1, [sp, #0x10]
  1000a0828  add     x2, sp, #0x48
  1000a082c  add     x3, sp, #0x88
  1000a0830  mov     w4, #0x10
  1000a0834  bl      _objc_msgSend                            ; [[self playlists] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000a0838  mov     x22, x0
  1000a083c  cbz     x22, loc_1000a0948                       ; if ([[self playlists] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] == 0)
  1000a0840  ldr     x8, [sp, #0x58]
  1000a0844  ldr     x20, [x8]
  1000a0848  adrp    x8, #0x100417000
  1000a084c  nop
  1000a0850  ldr     x23, [x8, #0x4f0]
  1000a0854  adrp    x8, #0x100417000
  1000a0858  nop
  1000a085c  ldr     x24, [x8, #0x4f8]
  1000a0860  adrp    x8, #0x10041a000
  1000a0864  add     x8, x8, #0x2d8                           ; &@selector(deactivate:)
  1000a0868  ldr     x25, [x8]
  1000a086c  adrp    x21, #0x1003b2000
  1000a0870  add     x21, x21, #0x3b0                         ; &d_1003b23b0
loc_1000a0874:
  1000a0874  mov     x19, #0
loc_1000a0878:
  1000a0878  ldr     x8, [sp, #0x58]
  1000a087c  ldr     x8, [x8]
  1000a0880  cmp     x8, x20
  1000a0884  b.eq    loc_1000a0890                            ; if (x8 == x20)
  1000a0888  ldr     x0, [sp, #0x18]
  1000a088c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self playlists])
loc_1000a0890:
  1000a0890  ldr     x8, [sp, #0x50]
  1000a0894  ldr     x26, [x8, x19, lsl #3]
  1000a0898  adrp    x8, #0x10041d000
  1000a089c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000a08a0  mov     x1, x23
  1000a08a4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000a08a8  mov     x29, x29
  1000a08ac  bl      _objc_retainAutoreleasedReturnValue
  1000a08b0  mov     x28, x0
  1000a08b4  mov     x1, x24
  1000a08b8  mov     x2, x26
  1000a08bc  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:x2]
  1000a08c0  mov     x29, x29
  1000a08c4  bl      _objc_retainAutoreleasedReturnValue
  1000a08c8  mov     x27, x0
  1000a08cc  mov     x0, x28
  1000a08d0  bl      _objc_release
  1000a08d4  adrp    x8, #0x1003b0000
  1000a08d8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000a08dc  str     x8, [sp, #0x20]
  1000a08e0  mov     w8, #-0x3e000000
  1000a08e4  stp     w8, wzr, [sp, #0x28]
  1000a08e8  adr     x8, #0x1000a0a08                         ; &-[ADBrick deactivateAllPlaylists]_block_invoke
  1000a08ec  nop
  1000a08f0  stp     x8, x21, [sp, #0x30]
  1000a08f4  mov     x0, x26
  1000a08f8  bl      _objc_retain
  1000a08fc  str     x26, [sp, #0x40]
  1000a0900  add     x2, sp, #0x20
  1000a0904  mov     x0, x27
  1000a0908  mov     x1, x25
  1000a090c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:x2] deactivate:^{-[ADBrick deactivateAllPlaylists]_block_invoke}]
  1000a0910  ldr     x0, [sp, #0x40]
  1000a0914  bl      _objc_release
  1000a0918  mov     x0, x27
  1000a091c  bl      _objc_release
  1000a0920  add     x19, x19, #1
  1000a0924  cmp     x19, x22
  1000a0928  b.lo    loc_1000a0878                            ; if ((x19 + 1) <u [[self playlists] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16])
  1000a092c  add     x2, sp, #0x48
  1000a0930  add     x3, sp, #0x88
  1000a0934  mov     w4, #0x10
  1000a0938  ldp     x1, x0, [sp, #0x10]
  1000a093c  bl      _objc_msgSend                            ; [[self playlists] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000a0940  mov     x22, x0
  1000a0944  cbnz    x22, loc_1000a0874                       ; if ([[self playlists] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] != 0)
loc_1000a0948:
  1000a0948  ldr     x0, [sp, #0x18]
  1000a094c  bl      _objc_release
  1000a0950  adrp    x8, #0x100420000
  1000a0954  ldrsw   x8, [x8, #0x90]                          ; ivar offset ADBrick.soundsPlaylist (+0x40)
  1000a0958  ldr     x19, [sp, #8]
  1000a095c  ldr     x0, [x19, x8]                            ; x0 = self->soundsPlaylist
  1000a0960  cbz     x0, loc_1000a0974                        ; if (self->soundsPlaylist == 0)
  1000a0964  adrp    x8, #0x100417000
  1000a0968  nop
  1000a096c  ldr     x1, [x8, #0x618]
  1000a0970  bl      _objc_msgSend                            ; [self->soundsPlaylist deactivate]
loc_1000a0974:
  1000a0974  adrp    x8, #0x10041a000
  1000a0978  nop
  1000a097c  ldr     x1, [x8, #0x280]
  1000a0980  mov     x2, #0
  1000a0984  mov     x0, x19
  1000a0988  bl      _objc_msgSend                            ; [self setPlaylists:0]
  1000a098c  ldur    x8, [x29, #-0x58]
  1000a0990  adrp    x9, #0x1003b0000
  1000a0994  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a0998  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a099c  sub     x8, x9, x8
  1000a09a0  cbnz    x8, loc_1000a09c4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a09a4  sub     sp, x29, #0x50
  1000a09a8  ldp     x29, x30, [sp, #0x50]
  1000a09ac  ldp     x20, x19, [sp, #0x40]
  1000a09b0  ldp     x22, x21, [sp, #0x30]
  1000a09b4  ldp     x24, x23, [sp, #0x20]
  1000a09b8  ldp     x26, x25, [sp, #0x10]
  1000a09bc  ldp     x28, x27, [sp], #0x60
  1000a09c0  ret
loc_1000a09c4:
  1000a09c4  bl      ___stack_chk_fail                        ; stack_chk_fail([self setPlaylists:0])
loc_1000a09c8:
  1000a09c8  mov     x20, x0
  1000a09cc  b       loc_1000a09f0
  1000a09d0  mov     x20, x0
  1000a09d4  mov     x0, x28
  1000a09d8  b       loc_1000a09ec
  1000a09dc  mov     x20, x0
  1000a09e0  ldr     x0, [sp, #0x40]
  1000a09e4  bl      _objc_release
  1000a09e8  mov     x0, x27
loc_1000a09ec:
  1000a09ec  bl      _objc_release
loc_1000a09f0:
  1000a09f0  ldr     x0, [sp, #0x18]
  1000a09f4  bl      _objc_release
  1000a09f8  mov     x0, x20
  1000a09fc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a0a00  b       loc_1000a09c8
  1000a0a04  b       loc_1000a09c8

; ======================================================================
; -[ADBrick deactivateAllPlaylists]_block_invoke
; address 0x1000a0a08  size 4  kind block
; ======================================================================
  1000a0a08  ret

; ======================================================================
; sub_1000a0a0c
; address 0x1000a0a0c  size 8  kind sub
; ======================================================================
  1000a0a0c  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000a0a10  b       _objc_retain

; ======================================================================
; sub_1000a0a14
; address 0x1000a0a14  size 8  kind sub
; ======================================================================
  1000a0a14  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000a0a18  b       _objc_release

; ======================================================================
; -[ADBrick onPlaylistActivated:]
; address 0x1000a0a1c  size 472  kind objc
; ======================================================================
  1000a0a1c  stp     x28, x27, [sp, #-0x60]!
  1000a0a20  stp     x26, x25, [sp, #0x10]
  1000a0a24  stp     x24, x23, [sp, #0x20]
  1000a0a28  stp     x22, x21, [sp, #0x30]
  1000a0a2c  stp     x20, x19, [sp, #0x40]
  1000a0a30  stp     x29, x30, [sp, #0x50]
  1000a0a34  add     x29, sp, #0x50
  1000a0a38  sub     sp, sp, #0xe0
  1000a0a3c  mov     x20, x0
  1000a0a40  adrp    x8, #0x1003b0000
  1000a0a44  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a0a48  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a0a4c  stur    x8, [x29, #-0x58]
  1000a0a50  mov     x0, x2
  1000a0a54  bl      _objc_retain
  1000a0a58  mov     x19, x0
  1000a0a5c  stp     xzr, xzr, [sp, #0x48]
  1000a0a60  stp     xzr, xzr, [sp, #0x38]
  1000a0a64  stp     xzr, xzr, [sp, #0x28]
  1000a0a68  stp     xzr, xzr, [sp, #0x18]
  1000a0a6c  adrp    x8, #0x100419000
  1000a0a70  nop
  1000a0a74  ldr     x1, [x8, #0xe60]
  1000a0a78  mov     x0, x20
  1000a0a7c  bl      _objc_msgSend                            ; [self enemies]
  1000a0a80  mov     x29, x29
  1000a0a84  bl      _objc_retainAutoreleasedReturnValue
  1000a0a88  str     x0, [sp, #0x10]
  1000a0a8c  adrp    x8, #0x100416000
  1000a0a90  nop
  1000a0a94  ldr     x1, [x8, #0xe00]
  1000a0a98  str     x1, [sp, #8]
  1000a0a9c  add     x2, sp, #0x18
  1000a0aa0  add     x3, sp, #0x58
  1000a0aa4  mov     w4, #0x10
  1000a0aa8  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000a0aac  mov     x22, x0
  1000a0ab0  cbz     x22, loc_1000a0b6c                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  1000a0ab4  ldr     x8, [sp, #0x28]
  1000a0ab8  ldr     x21, [x8]
  1000a0abc  adrp    x8, #0x100419000
  1000a0ac0  nop
  1000a0ac4  ldr     x23, [x8, #0x218]
  1000a0ac8  adrp    x8, #0x100416000
  1000a0acc  nop
  1000a0ad0  ldr     x24, [x8, #0xf58]
  1000a0ad4  adrp    x8, #0x100419000
  1000a0ad8  add     x8, x8, #0xc70                           ; &@selector(initSounds)
  1000a0adc  ldr     x25, [x8]
loc_1000a0ae0:
  1000a0ae0  mov     x20, #0
loc_1000a0ae4:
  1000a0ae4  ldr     x8, [sp, #0x28]
  1000a0ae8  ldr     x8, [x8]
  1000a0aec  cmp     x8, x21
  1000a0af0  b.eq    loc_1000a0afc                            ; if (x8 == x21)
  1000a0af4  ldr     x0, [sp, #0x10]
  1000a0af8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemies])
loc_1000a0afc:
  1000a0afc  ldr     x8, [sp, #0x20]
  1000a0b00  ldr     x26, [x8, x20, lsl #3]
  1000a0b04  mov     x0, x26
  1000a0b08  mov     x1, x23
  1000a0b0c  bl      _objc_msgSend                            ; [x0 soundsPrefix]
  1000a0b10  mov     x29, x29
  1000a0b14  bl      _objc_retainAutoreleasedReturnValue
  1000a0b18  mov     x27, x0
  1000a0b1c  mov     x1, x24
  1000a0b20  mov     x2, x19
  1000a0b24  bl      _objc_msgSend                            ; [[x0 soundsPrefix] isEqualToString:arg1]
  1000a0b28  mov     x28, x0
  1000a0b2c  mov     x0, x27
  1000a0b30  bl      _objc_release
  1000a0b34  cbz     w28, loc_1000a0b44                       ; if ([[x0 soundsPrefix] isEqualToString:arg1] == 0)
  1000a0b38  mov     x0, x26
  1000a0b3c  mov     x1, x25
  1000a0b40  bl      _objc_msgSend                            ; [x0 initSounds]
loc_1000a0b44:
  1000a0b44  add     x20, x20, #1
  1000a0b48  cmp     x20, x22
  1000a0b4c  b.lo    loc_1000a0ae4                            ; if ((x20 + 1) <u [[self enemies] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  1000a0b50  add     x2, sp, #0x18
  1000a0b54  add     x3, sp, #0x58
  1000a0b58  mov     w4, #0x10
  1000a0b5c  ldp     x1, x0, [sp, #8]
  1000a0b60  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000a0b64  mov     x22, x0
  1000a0b68  cbnz    x22, loc_1000a0ae0                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_1000a0b6c:
  1000a0b6c  ldr     x0, [sp, #0x10]
  1000a0b70  bl      _objc_release
  1000a0b74  mov     x0, x19
  1000a0b78  bl      _objc_release
  1000a0b7c  ldur    x8, [x29, #-0x58]
  1000a0b80  adrp    x9, #0x1003b0000
  1000a0b84  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a0b88  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a0b8c  sub     x8, x9, x8
  1000a0b90  cbnz    x8, loc_1000a0bb4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a0b94  sub     sp, x29, #0x50
  1000a0b98  ldp     x29, x30, [sp, #0x50]
  1000a0b9c  ldp     x20, x19, [sp, #0x40]
  1000a0ba0  ldp     x22, x21, [sp, #0x30]
  1000a0ba4  ldp     x24, x23, [sp, #0x20]
  1000a0ba8  ldp     x26, x25, [sp, #0x10]
  1000a0bac  ldp     x28, x27, [sp], #0x60
  1000a0bb0  ret
loc_1000a0bb4:
  1000a0bb4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a0bb8:
  1000a0bb8  mov     x21, x0
  1000a0bbc  b       loc_1000a0bcc
  1000a0bc0  mov     x21, x0
  1000a0bc4  mov     x0, x27
  1000a0bc8  bl      _objc_release
loc_1000a0bcc:
  1000a0bcc  ldr     x0, [sp, #0x10]
  1000a0bd0  bl      _objc_release
loc_1000a0bd4:
  1000a0bd4  mov     x0, x19
  1000a0bd8  bl      _objc_release
  1000a0bdc  mov     x0, x21
  1000a0be0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a0be4  b       loc_1000a0bb8
  1000a0be8  mov     x21, x0
  1000a0bec  b       loc_1000a0bd4
  1000a0bf0  b       loc_1000a0bb8

; ======================================================================
; -[ADBrick checkAllPlaylistsAreLoaded]
; address 0x1000a0bf4  size 400  kind objc
; ======================================================================
  1000a0bf4  stp     x26, x25, [sp, #-0x50]!
  1000a0bf8  stp     x24, x23, [sp, #0x10]
  1000a0bfc  stp     x22, x21, [sp, #0x20]
  1000a0c00  stp     x20, x19, [sp, #0x30]
  1000a0c04  stp     x29, x30, [sp, #0x40]
  1000a0c08  add     x29, sp, #0x40
  1000a0c0c  sub     sp, sp, #0xd0
  1000a0c10  mov     x19, x0
  1000a0c14  adrp    x23, #0x1003b0000
  1000a0c18  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000a0c1c  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000a0c20  stur    x23, [x29, #-0x48]
  1000a0c24  adrp    x8, #0x100420000
  1000a0c28  ldrsw   x8, [x8, #0x84]                          ; ivar offset ADBrick.playlistsActivated (+0x30)
  1000a0c2c  ldrsw   x22, [x19, x8]                           ; x22 = self->playlistsActivated
  1000a0c30  adrp    x8, #0x10041a000
  1000a0c34  nop
  1000a0c38  ldr     x1, [x8, #0x298]
  1000a0c3c  bl      _objc_msgSend                            ; [self playlists]
  1000a0c40  mov     x29, x29
  1000a0c44  bl      _objc_retainAutoreleasedReturnValue
  1000a0c48  mov     x21, x0
  1000a0c4c  adrp    x8, #0x100416000
  1000a0c50  nop
  1000a0c54  ldr     x1, [x8, #0xe30]
  1000a0c58  bl      _objc_msgSend                            ; [[self playlists] count]
  1000a0c5c  mov     x20, x0
  1000a0c60  mov     x0, x21
  1000a0c64  bl      _objc_release
  1000a0c68  cmp     x22, x20
  1000a0c6c  b.ne    loc_1000a0d30                            ; if (self->playlistsActivated != [[self playlists] count])
  1000a0c70  stp     xzr, xzr, [sp, #0x38]
  1000a0c74  stp     xzr, xzr, [sp, #0x28]
  1000a0c78  stp     xzr, xzr, [sp, #0x18]
  1000a0c7c  stp     xzr, xzr, [sp, #8]
  1000a0c80  adrp    x8, #0x100420000
  1000a0c84  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a0c88  ldr     x0, [x19, x8]                            ; x0 = self->enemiesArray
  1000a0c8c  bl      _objc_retain
  1000a0c90  mov     x19, x0
  1000a0c94  adrp    x8, #0x100416000
  1000a0c98  nop
  1000a0c9c  ldr     x20, [x8, #0xe00]
  1000a0ca0  add     x2, sp, #8
  1000a0ca4  add     x3, sp, #0x48
  1000a0ca8  mov     w4, #0x10
  1000a0cac  mov     x1, x20
  1000a0cb0  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a0cb4  mov     x21, x0
  1000a0cb8  cbz     x21, loc_1000a0d28                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a0cbc  ldr     x8, [sp, #0x18]
  1000a0cc0  ldr     x24, [x8]
  1000a0cc4  adrp    x8, #0x100419000
  1000a0cc8  add     x8, x8, #0xc70                           ; &@selector(initSounds)
  1000a0ccc  ldr     x22, [x8]
loc_1000a0cd0:
  1000a0cd0  mov     x25, #0
loc_1000a0cd4:
  1000a0cd4  ldr     x8, [sp, #0x18]
  1000a0cd8  ldr     x8, [x8]
  1000a0cdc  cmp     x8, x24
  1000a0ce0  b.eq    loc_1000a0cec                            ; if (x8 == x24)
  1000a0ce4  mov     x0, x19
  1000a0ce8  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->enemiesArray)
loc_1000a0cec:
  1000a0cec  ldr     x8, [sp, #0x10]
  1000a0cf0  ldr     x0, [x8, x25, lsl #3]
  1000a0cf4  mov     x1, x22
  1000a0cf8  bl      _objc_msgSend                            ; [x0 initSounds]
  1000a0cfc  add     x25, x25, #1
  1000a0d00  cmp     x25, x21
  1000a0d04  b.lo    loc_1000a0cd4                            ; if ((x25 + 1) <u [self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a0d08  add     x2, sp, #8
  1000a0d0c  add     x3, sp, #0x48
  1000a0d10  mov     w4, #0x10
  1000a0d14  mov     x0, x19
  1000a0d18  mov     x1, x20
  1000a0d1c  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a0d20  mov     x21, x0
  1000a0d24  cbnz    x21, loc_1000a0cd0                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a0d28:
  1000a0d28  mov     x0, x19
  1000a0d2c  bl      _objc_release
loc_1000a0d30:
  1000a0d30  ldur    x8, [x29, #-0x48]
  1000a0d34  sub     x8, x23, x8
  1000a0d38  cbnz    x8, loc_1000a0d58                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a0d3c  sub     sp, x29, #0x40
  1000a0d40  ldp     x29, x30, [sp, #0x40]
  1000a0d44  ldp     x20, x19, [sp, #0x30]
  1000a0d48  ldp     x22, x21, [sp, #0x20]
  1000a0d4c  ldp     x24, x23, [sp, #0x10]
  1000a0d50  ldp     x26, x25, [sp], #0x50
  1000a0d54  ret
loc_1000a0d58:
  1000a0d58  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a0d5c:
  1000a0d5c  mov     x20, x0
  1000a0d60  mov     x0, x19
loc_1000a0d64:
  1000a0d64  bl      _objc_release
  1000a0d68  mov     x0, x20
  1000a0d6c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a0d70  b       loc_1000a0d5c
  1000a0d74  mov     x20, x0
  1000a0d78  mov     x0, x21
  1000a0d7c  b       loc_1000a0d64
  1000a0d80  b       loc_1000a0d5c

; ======================================================================
; -[ADBrick enemies]
; address 0x1000a0d84  size 16  kind objc
; ======================================================================
  1000a0d84  adrp    x8, #0x100420000
  1000a0d88  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a0d8c  ldr     x0, [x0, x8]                             ; x0 = self->enemiesArray
  1000a0d90  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADBrick clearEnemies]
; address 0x1000a0d94  size 316  kind objc
; ======================================================================
  1000a0d94  stp     x26, x25, [sp, #-0x50]!
  1000a0d98  stp     x24, x23, [sp, #0x10]
  1000a0d9c  stp     x22, x21, [sp, #0x20]
  1000a0da0  stp     x20, x19, [sp, #0x30]
  1000a0da4  stp     x29, x30, [sp, #0x40]
  1000a0da8  add     x29, sp, #0x40
  1000a0dac  sub     sp, sp, #0xd0
  1000a0db0  adrp    x23, #0x1003b0000
  1000a0db4  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000a0db8  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000a0dbc  stur    x23, [x29, #-0x48]
  1000a0dc0  stp     xzr, xzr, [sp, #0x38]
  1000a0dc4  stp     xzr, xzr, [sp, #0x28]
  1000a0dc8  stp     xzr, xzr, [sp, #0x18]
  1000a0dcc  stp     xzr, xzr, [sp, #8]
  1000a0dd0  adrp    x8, #0x100419000
  1000a0dd4  nop
  1000a0dd8  ldr     x1, [x8, #0xe60]
  1000a0ddc  bl      _objc_msgSend                            ; [self enemies]
  1000a0de0  mov     x29, x29
  1000a0de4  bl      _objc_retainAutoreleasedReturnValue
  1000a0de8  mov     x19, x0
  1000a0dec  adrp    x8, #0x100416000
  1000a0df0  nop
  1000a0df4  ldr     x20, [x8, #0xe00]
  1000a0df8  add     x2, sp, #8
  1000a0dfc  add     x3, sp, #0x48
  1000a0e00  mov     w4, #0x10
  1000a0e04  mov     x1, x20
  1000a0e08  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a0e0c  mov     x21, x0
  1000a0e10  cbz     x21, loc_1000a0e80                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a0e14  ldr     x8, [sp, #0x18]
  1000a0e18  ldr     x24, [x8]
  1000a0e1c  adrp    x8, #0x100417000
  1000a0e20  add     x8, x8, #0x618                           ; &@selector(deactivate)
  1000a0e24  ldr     x22, [x8]
loc_1000a0e28:
  1000a0e28  mov     x25, #0
loc_1000a0e2c:
  1000a0e2c  ldr     x8, [sp, #0x18]
  1000a0e30  ldr     x8, [x8]
  1000a0e34  cmp     x8, x24
  1000a0e38  b.eq    loc_1000a0e44                            ; if (x8 == x24)
  1000a0e3c  mov     x0, x19
  1000a0e40  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemies])
loc_1000a0e44:
  1000a0e44  ldr     x8, [sp, #0x10]
  1000a0e48  ldr     x0, [x8, x25, lsl #3]
  1000a0e4c  mov     x1, x22
  1000a0e50  bl      _objc_msgSend                            ; [x0 deactivate]
  1000a0e54  add     x25, x25, #1
  1000a0e58  cmp     x25, x21
  1000a0e5c  b.lo    loc_1000a0e2c                            ; if ((x25 + 1) <u [[self enemies] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a0e60  add     x2, sp, #8
  1000a0e64  add     x3, sp, #0x48
  1000a0e68  mov     w4, #0x10
  1000a0e6c  mov     x0, x19
  1000a0e70  mov     x1, x20
  1000a0e74  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a0e78  mov     x21, x0
  1000a0e7c  cbnz    x21, loc_1000a0e28                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a0e80:
  1000a0e80  mov     x0, x19
  1000a0e84  bl      _objc_release
  1000a0e88  ldur    x8, [x29, #-0x48]
  1000a0e8c  sub     x8, x23, x8
  1000a0e90  cbnz    x8, loc_1000a0eb0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a0e94  sub     sp, x29, #0x40
  1000a0e98  ldp     x29, x30, [sp, #0x40]
  1000a0e9c  ldp     x20, x19, [sp, #0x30]
  1000a0ea0  ldp     x22, x21, [sp, #0x20]
  1000a0ea4  ldp     x24, x23, [sp, #0x10]
  1000a0ea8  ldp     x26, x25, [sp], #0x50
  1000a0eac  ret
loc_1000a0eb0:
  1000a0eb0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a0eb4:
  1000a0eb4  mov     x20, x0
  1000a0eb8  mov     x0, x19
  1000a0ebc  bl      _objc_release
  1000a0ec0  mov     x0, x20
  1000a0ec4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a0ec8  b       loc_1000a0eb4
  1000a0ecc  b       loc_1000a0eb4

; ======================================================================
; -[ADBrick update:]
; address 0x1000a0ed0  size 1204  kind objc
; ======================================================================
  1000a0ed0  stp     d11, d10, [sp, #-0x80]!
  1000a0ed4  stp     d9, d8, [sp, #0x10]
  1000a0ed8  stp     x28, x27, [sp, #0x20]
  1000a0edc  stp     x26, x25, [sp, #0x30]
  1000a0ee0  stp     x24, x23, [sp, #0x40]
  1000a0ee4  stp     x22, x21, [sp, #0x50]
  1000a0ee8  stp     x20, x19, [sp, #0x60]
  1000a0eec  stp     x29, x30, [sp, #0x70]
  1000a0ef0  add     x29, sp, #0x70
  1000a0ef4  sub     sp, sp, #0x190
  1000a0ef8  mov     v8.16b, v0.16b
  1000a0efc  mov     x19, x0
  1000a0f00  adrp    x24, #0x1003b0000
  1000a0f04  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000a0f08  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000a0f0c  stur    x24, [x29, #-0x78]
  1000a0f10  adrp    x8, #0x100420000
  1000a0f14  ldrsw   x25, [x8, #0x94]                         ; ivar offset ADBrick.timeInBrick (+0x48)
  1000a0f18  ldr     s0, [x19, x25]                           ; s0 = self->timeInBrick
  1000a0f1c  fadd    s0, s0, s8
  1000a0f20  str     s0, [x19, x25]                           ; self->timeInBrick = (self->timeInBrick + arg1)
  1000a0f24  stp     xzr, xzr, [sp, #0x78]
  1000a0f28  stp     xzr, xzr, [sp, #0x68]
  1000a0f2c  stp     xzr, xzr, [sp, #0x58]
  1000a0f30  stp     xzr, xzr, [sp, #0x48]
  1000a0f34  nop
  1000a0f38  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a0f3c  ldr     x0, [x19, x8]                            ; x0 = self->enemiesArray
  1000a0f40  bl      _objc_retain
  1000a0f44  mov     x21, x0
  1000a0f48  adrp    x8, #0x100416000
  1000a0f4c  nop
  1000a0f50  ldr     x20, [x8, #0xe00]
  1000a0f54  add     x2, sp, #0x48
  1000a0f58  sub     x3, x29, #0xf8
  1000a0f5c  mov     w4, #0x10
  1000a0f60  mov     x1, x20
  1000a0f64  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xf8] count:16]
  1000a0f68  mov     x22, x0
  1000a0f6c  cbz     x22, loc_1000a0fe0                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xf8] count:16] == 0)
  1000a0f70  ldr     x8, [sp, #0x58]
  1000a0f74  ldr     x26, [x8]
  1000a0f78  adrp    x8, #0x100419000
  1000a0f7c  add     x8, x8, #0x68                            ; &@selector(update:)
  1000a0f80  ldr     x23, [x8]
loc_1000a0f84:
  1000a0f84  mov     x27, #0
loc_1000a0f88:
  1000a0f88  ldr     x8, [sp, #0x58]
  1000a0f8c  ldr     x8, [x8]
  1000a0f90  cmp     x8, x26
  1000a0f94  b.eq    loc_1000a0fa0                            ; if (x8 == x26)
  1000a0f98  mov     x0, x21
  1000a0f9c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->enemiesArray)
loc_1000a0fa0:
  1000a0fa0  ldr     x8, [sp, #0x50]
  1000a0fa4  ldr     x0, [x8, x27, lsl #3]
  1000a0fa8  mov     x1, x23
  1000a0fac  mov     v0.16b, v8.16b
  1000a0fb0  bl      _objc_msgSend                            ; [x0 update:arg1]
  1000a0fb4  add     x27, x27, #1
  1000a0fb8  cmp     x27, x22
  1000a0fbc  b.lo    loc_1000a0f88                            ; if ((x27 + 1) <u [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xf8] count:16])
  1000a0fc0  add     x2, sp, #0x48
  1000a0fc4  sub     x3, x29, #0xf8
  1000a0fc8  mov     w4, #0x10
  1000a0fcc  mov     x0, x21
  1000a0fd0  mov     x1, x20
  1000a0fd4  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xf8] count:16]
  1000a0fd8  mov     x22, x0
  1000a0fdc  cbnz    x22, loc_1000a0f84                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xf8] count:16] != 0)
loc_1000a0fe0:
  1000a0fe0  mov     x0, x21
  1000a0fe4  bl      _objc_release
  1000a0fe8  stp     xzr, xzr, [sp, #0x38]
  1000a0fec  stp     xzr, xzr, [sp, #0x28]
  1000a0ff0  stp     xzr, xzr, [sp, #0x18]
  1000a0ff4  stp     xzr, xzr, [sp, #8]
  1000a0ff8  adrp    x8, #0x100420000
  1000a0ffc  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a1000  ldr     x0, [x19, x8]                            ; x0 = self->soundsArray
  1000a1004  bl      _objc_retain
  1000a1008  mov     x21, x0
  1000a100c  add     x2, sp, #8
  1000a1010  add     x3, sp, #0x88
  1000a1014  mov     w4, #0x10
  1000a1018  mov     x1, x20
  1000a101c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000a1020  mov     x22, x0
  1000a1024  cbz     x22, loc_1000a1098                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] == 0)
  1000a1028  ldr     x8, [sp, #0x18]
  1000a102c  ldr     x26, [x8]
  1000a1030  adrp    x8, #0x100419000
  1000a1034  add     x8, x8, #0x68                            ; &@selector(update:)
  1000a1038  ldr     x23, [x8]
loc_1000a103c:
  1000a103c  mov     x27, #0
loc_1000a1040:
  1000a1040  ldr     x8, [sp, #0x18]
  1000a1044  ldr     x8, [x8]
  1000a1048  cmp     x8, x26
  1000a104c  b.eq    loc_1000a1058                            ; if (x8 == x26)
  1000a1050  mov     x0, x21
  1000a1054  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a1058:
  1000a1058  ldr     x8, [sp, #0x10]
  1000a105c  ldr     x0, [x8, x27, lsl #3]
  1000a1060  mov     x1, x23
  1000a1064  mov     v0.16b, v8.16b
  1000a1068  bl      _objc_msgSend                            ; [x0 update:arg1]
  1000a106c  add     x27, x27, #1
  1000a1070  cmp     x27, x22
  1000a1074  b.lo    loc_1000a1040                            ; if ((x27 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16])
  1000a1078  add     x2, sp, #8
  1000a107c  add     x3, sp, #0x88
  1000a1080  mov     w4, #0x10
  1000a1084  mov     x0, x21
  1000a1088  mov     x1, x20
  1000a108c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000a1090  mov     x22, x0
  1000a1094  cbnz    x22, loc_1000a103c                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] != 0)
loc_1000a1098:
  1000a1098  mov     x0, x21
  1000a109c  bl      _objc_release
  1000a10a0  adrp    x8, #0x100420000
  1000a10a4  ldrsw   x26, [x8, #0x8c]                         ; ivar offset ADBrick.powerUpDictionary (+0x10)
  1000a10a8  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a10ac  cbz     x0, loc_1000a12cc                        ; if (self->powerUpDictionary == 0)
  1000a10b0  adrp    x8, #0x100417000
  1000a10b4  nop
  1000a10b8  ldr     x20, [x8, #0x40]
  1000a10bc  adrp    x2, #0x1003c0000
  1000a10c0  add     x2, x2, #0x6d0                           ; @"spawn_time"
  1000a10c4  mov     x1, x20
  1000a10c8  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"spawn_time"]
  1000a10cc  mov     x29, x29
  1000a10d0  bl      _objc_retainAutoreleasedReturnValue
  1000a10d4  cbz     x0, loc_1000a10e0                        ; if ([self->powerUpDictionary objectForKey:@"spawn_time"] == 0)
  1000a10d8  bl      _objc_release
  1000a10dc  b       loc_1000a1108
loc_1000a10e0:
  1000a10e0  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a10e4  adrp    x2, #0x1003c0000
  1000a10e8  add     x2, x2, #0x8d0                           ; @"force_spawn_time"
  1000a10ec  mov     x1, x20
  1000a10f0  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"force_spawn_time"]
  1000a10f4  mov     x29, x29
  1000a10f8  bl      _objc_retainAutoreleasedReturnValue
  1000a10fc  mov     x21, x0
  1000a1100  bl      _objc_release
  1000a1104  cbz     x21, loc_1000a12cc                       ; if ([self->powerUpDictionary objectForKey:@"force_spawn_time"] == 0)
loc_1000a1108:
  1000a1108  ldr     s9, [x19, x25]                           ; s9 = self->timeInBrick
  1000a110c  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a1110  adrp    x2, #0x1003c0000
  1000a1114  add     x2, x2, #0x6d0                           ; @"spawn_time"
  1000a1118  mov     x1, x20
  1000a111c  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"spawn_time"]
  1000a1120  mov     x29, x29
  1000a1124  bl      _objc_retainAutoreleasedReturnValue
  1000a1128  mov     x22, x0
  1000a112c  adrp    x8, #0x100417000
  1000a1130  nop
  1000a1134  ldr     x21, [x8, #0x48]
  1000a1138  mov     x1, x21
  1000a113c  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:@"spawn_time"] floatValue]
  1000a1140  fsub    s1, s9, s8
  1000a1144  fcmp    s1, s0
  1000a1148  b.pl    loc_1000a11d0                            ; if ((self->timeInBrick - arg1) >= (or unordered) [[self->powerUpDictionary objectForKey:@"spawn_time"] floatValue])
  1000a114c  ldr     s10, [x19, x25]                          ; s10 = self->timeInBrick
  1000a1150  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a1154  adrp    x2, #0x1003c0000
  1000a1158  add     x2, x2, #0x6d0                           ; @"spawn_time"
  1000a115c  mov     x1, x20
  1000a1160  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"spawn_time"]
  1000a1164  mov     x29, x29
  1000a1168  bl      _objc_retainAutoreleasedReturnValue
  1000a116c  mov     x23, x0
  1000a1170  mov     x1, x21
  1000a1174  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:@"spawn_time"] floatValue]
  1000a1178  mov     v9.16b, v0.16b
  1000a117c  mov     x0, x23
  1000a1180  bl      _objc_release
  1000a1184  mov     x0, x22
  1000a1188  bl      _objc_release
  1000a118c  fcmp    s10, s9
  1000a1190  b.lt    loc_1000a11d8                            ; if (self->timeInBrick < (or unordered) [[self->powerUpDictionary objectForKey:@"spawn_time"] floatValue])
  1000a1194  adrp    x8, #0x10041e000
  1000a1198  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000a119c  adrp    x8, #0x100417000
  1000a11a0  nop
  1000a11a4  ldr     x1, [x8, #0xaa8]
  1000a11a8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000a11ac  mov     x29, x29
  1000a11b0  bl      _objc_retainAutoreleasedReturnValue
  1000a11b4  mov     x20, x0
  1000a11b8  adrp    x8, #0x10041a000
  1000a11bc  nop
  1000a11c0  ldr     x1, [x8, #0x2e0]
  1000a11c4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] tryToPopPowerUpContainer]
  1000a11c8  mov     x0, x20
  1000a11cc  b       loc_1000a12c8
loc_1000a11d0:
  1000a11d0  mov     x0, x22
  1000a11d4  bl      _objc_release
loc_1000a11d8:
  1000a11d8  ldr     s9, [x19, x25]                           ; s9 = self->timeInBrick
  1000a11dc  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a11e0  adrp    x2, #0x1003c0000
  1000a11e4  add     x2, x2, #0x8d0                           ; @"force_spawn_time"
  1000a11e8  mov     x1, x20
  1000a11ec  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"force_spawn_time"]
  1000a11f0  mov     x29, x29
  1000a11f4  bl      _objc_retainAutoreleasedReturnValue
  1000a11f8  mov     x22, x0
  1000a11fc  mov     x1, x21
  1000a1200  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:@"force_spawn_time"] floatValue]
  1000a1204  fsub    s1, s9, s8
  1000a1208  fcmp    s1, s0
  1000a120c  b.pl    loc_1000a12c4                            ; if ((self->timeInBrick - arg1) >= (or unordered) [[self->powerUpDictionary objectForKey:@"force_spawn_time"] floatValue])
  1000a1210  ldr     s9, [x19, x25]                           ; s9 = self->timeInBrick
  1000a1214  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a1218  adrp    x2, #0x1003c0000
  1000a121c  add     x2, x2, #0x8d0                           ; @"force_spawn_time"
  1000a1220  mov     x1, x20
  1000a1224  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"force_spawn_time"]
  1000a1228  mov     x29, x29
  1000a122c  bl      _objc_retainAutoreleasedReturnValue
  1000a1230  mov     x23, x0
  1000a1234  mov     x1, x21
  1000a1238  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:@"force_spawn_time"] floatValue]
  1000a123c  mov     v8.16b, v0.16b
  1000a1240  mov     x0, x23
  1000a1244  bl      _objc_release
  1000a1248  mov     x0, x22
  1000a124c  bl      _objc_release
  1000a1250  fcmp    s9, s8
  1000a1254  b.lt    loc_1000a12cc                            ; if (self->timeInBrick < (or unordered) [[self->powerUpDictionary objectForKey:@"force_spawn_time"] floatValue])
  1000a1258  adrp    x8, #0x10041e000
  1000a125c  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000a1260  adrp    x8, #0x100417000
  1000a1264  nop
  1000a1268  ldr     x1, [x8, #0xaa8]
  1000a126c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000a1270  mov     x29, x29
  1000a1274  bl      _objc_retainAutoreleasedReturnValue
  1000a1278  mov     x21, x0
  1000a127c  ldr     x0, [x19, x26]                           ; x0 = self->powerUpDictionary
  1000a1280  adrp    x2, #0x1003bc000
  1000a1284  add     x2, x2, #0xdd0                           ; @"type"
  1000a1288  mov     x1, x20
  1000a128c  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"type"]
  1000a1290  mov     x29, x29
  1000a1294  bl      _objc_retainAutoreleasedReturnValue
  1000a1298  mov     x20, x0
  1000a129c  adrp    x8, #0x10041a000
  1000a12a0  nop
  1000a12a4  ldr     x1, [x8, #0x2e8]
  1000a12a8  mov     x0, x21
  1000a12ac  mov     x2, x20
  1000a12b0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] forceToPopPowerUpContainerWithType:[self->powerUpDictionary objectForKey:@"type"]]
  1000a12b4  mov     x0, x20
  1000a12b8  bl      _objc_release
  1000a12bc  mov     x0, x21
  1000a12c0  b       loc_1000a12c8
loc_1000a12c4:
  1000a12c4  mov     x0, x22
loc_1000a12c8:
  1000a12c8  bl      _objc_release
loc_1000a12cc:
  1000a12cc  ldur    x8, [x29, #-0x78]
  1000a12d0  sub     x8, x24, x8
  1000a12d4  cbnz    x8, loc_1000a1300                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a12d8  sub     sp, x29, #0x70
  1000a12dc  ldp     x29, x30, [sp, #0x70]
  1000a12e0  ldp     x20, x19, [sp, #0x60]
  1000a12e4  ldp     x22, x21, [sp, #0x50]
  1000a12e8  ldp     x24, x23, [sp, #0x40]
  1000a12ec  ldp     x26, x25, [sp, #0x30]
  1000a12f0  ldp     x28, x27, [sp, #0x20]
  1000a12f4  ldp     d9, d8, [sp, #0x10]
  1000a12f8  ldp     d11, d10, [sp], #0x80
  1000a12fc  ret
loc_1000a1300:
  1000a1300  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000a1304  b       loc_1000a1308
loc_1000a1308:
  1000a1308  mov     x19, x0
loc_1000a130c:
  1000a130c  mov     x0, x21
  1000a1310  bl      _objc_release
loc_1000a1314:
  1000a1314  mov     x0, x19
  1000a1318  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a131c  b       loc_1000a1308
  1000a1320  b       loc_1000a1308
  1000a1324  b       loc_1000a1308
  1000a1328  b       loc_1000a1308
  1000a132c  mov     x19, x0
  1000a1330  b       loc_1000a1354
  1000a1334  mov     x19, x0
  1000a1338  b       loc_1000a1354
  1000a133c  b       loc_1000a1348
  1000a1340  mov     x19, x0
  1000a1344  b       loc_1000a1314
loc_1000a1348:
  1000a1348  mov     x19, x0
  1000a134c  mov     x0, x23
  1000a1350  bl      _objc_release
loc_1000a1354:
  1000a1354  mov     x0, x22
  1000a1358  bl      _objc_release
  1000a135c  b       loc_1000a1314
  1000a1360  mov     x19, x0
  1000a1364  mov     x0, x20
  1000a1368  bl      _objc_release
  1000a136c  b       loc_1000a1314
  1000a1370  b       loc_1000a1308
  1000a1374  mov     x19, x0
  1000a1378  mov     x0, x20
  1000a137c  bl      _objc_release
  1000a1380  b       loc_1000a130c

; ======================================================================
; -[ADBrick stopAllEnemiesAfterPlayerDeath]
; address 0x1000a1384  size 500  kind objc
; ======================================================================
  1000a1384  stp     d9, d8, [sp, #-0x60]!
  1000a1388  stp     x26, x25, [sp, #0x10]
  1000a138c  stp     x24, x23, [sp, #0x20]
  1000a1390  stp     x22, x21, [sp, #0x30]
  1000a1394  stp     x20, x19, [sp, #0x40]
  1000a1398  stp     x29, x30, [sp, #0x50]
  1000a139c  add     x29, sp, #0x50
  1000a13a0  sub     sp, sp, #0xd0
  1000a13a4  mov     x19, x0
  1000a13a8  adrp    x23, #0x1003b0000
  1000a13ac  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000a13b0  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000a13b4  stur    x23, [x29, #-0x58]
  1000a13b8  adrp    x22, #0x10041e000
  1000a13bc  ldr     x0, [x22, #8]                            ; class ADTracker
  1000a13c0  adrp    x8, #0x100416000
  1000a13c4  nop
  1000a13c8  ldr     x20, [x8, #0xac0]
  1000a13cc  mov     x1, x20
  1000a13d0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a13d4  mov     x29, x29
  1000a13d8  bl      _objc_retainAutoreleasedReturnValue
  1000a13dc  mov     x21, x0
  1000a13e0  adrp    x8, #0x100420000
  1000a13e4  ldrsw   x8, [x8, #0x94]                          ; ivar offset ADBrick.timeInBrick (+0x48)
  1000a13e8  ldr     s8, [x19, x8]                            ; s8 = self->timeInBrick
  1000a13ec  adrp    x8, #0x100417000
  1000a13f0  nop
  1000a13f4  ldr     x1, [x8, #0x450]
  1000a13f8  mov     x0, x19
  1000a13fc  bl      _objc_msgSend                            ; [self name]
  1000a1400  mov     x2, x0
  1000a1404  fcvt    d0, s8
  1000a1408  adrp    x8, #0x10041a000
  1000a140c  nop
  1000a1410  ldr     x1, [x8, #0x2f0]
  1000a1414  mov     x0, x21
  1000a1418  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] timeOfDeathInBrick:self->timeInBrick BrickName:[self name]]
  1000a141c  mov     x0, x21
  1000a1420  bl      _objc_release
  1000a1424  ldr     x0, [x22, #8]                            ; class ADTracker
  1000a1428  mov     x1, x20
  1000a142c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a1430  mov     x29, x29
  1000a1434  bl      _objc_retainAutoreleasedReturnValue
  1000a1438  mov     x21, x0
  1000a143c  adrp    x8, #0x10041a000
  1000a1440  nop
  1000a1444  ldr     x1, [x8, #0x2f8]
  1000a1448  mov     x2, #0
  1000a144c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setBrickCounter:0]
  1000a1450  mov     x0, x21
  1000a1454  bl      _objc_release
  1000a1458  stp     xzr, xzr, [sp, #0x38]
  1000a145c  stp     xzr, xzr, [sp, #0x28]
  1000a1460  stp     xzr, xzr, [sp, #0x18]
  1000a1464  stp     xzr, xzr, [sp, #8]
  1000a1468  adrp    x8, #0x100420000
  1000a146c  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a1470  ldr     x0, [x19, x8]                            ; x0 = self->enemiesArray
  1000a1474  bl      _objc_retain
  1000a1478  mov     x19, x0
  1000a147c  adrp    x8, #0x100416000
  1000a1480  nop
  1000a1484  ldr     x20, [x8, #0xe00]
  1000a1488  add     x2, sp, #8
  1000a148c  add     x3, sp, #0x48
  1000a1490  mov     w4, #0x10
  1000a1494  mov     x1, x20
  1000a1498  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a149c  mov     x21, x0
  1000a14a0  cbz     x21, loc_1000a1510                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a14a4  ldr     x8, [sp, #0x18]
  1000a14a8  ldr     x24, [x8]
  1000a14ac  adrp    x8, #0x10041a000
  1000a14b0  add     x8, x8, #0x300                           ; &@selector(stopAfterPlayerWasKilled)
  1000a14b4  ldr     x22, [x8]
loc_1000a14b8:
  1000a14b8  mov     x25, #0
loc_1000a14bc:
  1000a14bc  ldr     x8, [sp, #0x18]
  1000a14c0  ldr     x8, [x8]
  1000a14c4  cmp     x8, x24
  1000a14c8  b.eq    loc_1000a14d4                            ; if (x8 == x24)
  1000a14cc  mov     x0, x19
  1000a14d0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->enemiesArray)
loc_1000a14d4:
  1000a14d4  ldr     x8, [sp, #0x10]
  1000a14d8  ldr     x0, [x8, x25, lsl #3]
  1000a14dc  mov     x1, x22
  1000a14e0  bl      _objc_msgSend                            ; [x0 stopAfterPlayerWasKilled]
  1000a14e4  add     x25, x25, #1
  1000a14e8  cmp     x25, x21
  1000a14ec  b.lo    loc_1000a14bc                            ; if ((x25 + 1) <u [self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a14f0  add     x2, sp, #8
  1000a14f4  add     x3, sp, #0x48
  1000a14f8  mov     w4, #0x10
  1000a14fc  mov     x0, x19
  1000a1500  mov     x1, x20
  1000a1504  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a1508  mov     x21, x0
  1000a150c  cbnz    x21, loc_1000a14b8                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a1510:
  1000a1510  mov     x0, x19
  1000a1514  bl      _objc_release
  1000a1518  ldur    x8, [x29, #-0x58]
  1000a151c  sub     x8, x23, x8
  1000a1520  cbnz    x8, loc_1000a1544                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a1524  sub     sp, x29, #0x50
  1000a1528  ldp     x29, x30, [sp, #0x50]
  1000a152c  ldp     x20, x19, [sp, #0x40]
  1000a1530  ldp     x22, x21, [sp, #0x30]
  1000a1534  ldp     x24, x23, [sp, #0x20]
  1000a1538  ldp     x26, x25, [sp, #0x10]
  1000a153c  ldp     d9, d8, [sp], #0x60
  1000a1540  ret
loc_1000a1544:
  1000a1544  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a1548:
  1000a1548  mov     x20, x0
  1000a154c  mov     x0, x19
loc_1000a1550:
  1000a1550  bl      _objc_release
  1000a1554  mov     x0, x20
  1000a1558  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a155c  b       loc_1000a1548
  1000a1560  b       loc_1000a1568
  1000a1564  b       loc_1000a1568
loc_1000a1568:
  1000a1568  mov     x20, x0
  1000a156c  mov     x0, x21
  1000a1570  b       loc_1000a1550
  1000a1574  b       loc_1000a1548

; ======================================================================
; -[ADBrick stopBrickAmbiant]
; address 0x1000a1578  size 224  kind objc
; ======================================================================
  1000a1578  stp     x22, x21, [sp, #-0x30]!
  1000a157c  stp     x20, x19, [sp, #0x10]
  1000a1580  stp     x29, x30, [sp, #0x20]
  1000a1584  add     x29, sp, #0x20
  1000a1588  mov     x20, x0
  1000a158c  adrp    x8, #0x10041a000
  1000a1590  nop
  1000a1594  ldr     x21, [x8, #0x180]
  1000a1598  mov     x1, x21
  1000a159c  bl      _objc_msgSend                            ; [self ambiantName]
  1000a15a0  mov     x29, x29
  1000a15a4  bl      _objc_retainAutoreleasedReturnValue
  1000a15a8  mov     x19, x0
  1000a15ac  bl      _objc_release
  1000a15b0  cbz     x19, loc_1000a1624                       ; if ([self ambiantName] == 0)
  1000a15b4  adrp    x8, #0x10041e000
  1000a15b8  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  1000a15bc  adrp    x8, #0x100418000
  1000a15c0  nop
  1000a15c4  ldr     x1, [x8, #0xf58]
  1000a15c8  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  1000a15cc  mov     x29, x29
  1000a15d0  bl      _objc_retainAutoreleasedReturnValue
  1000a15d4  mov     x19, x0
  1000a15d8  mov     x0, x20
  1000a15dc  mov     x1, x21
  1000a15e0  bl      _objc_msgSend                            ; [self ambiantName]
  1000a15e4  mov     x29, x29
  1000a15e8  bl      _objc_retainAutoreleasedReturnValue
  1000a15ec  mov     x20, x0
  1000a15f0  adrp    x8, #0x10041a000
  1000a15f4  nop
  1000a15f8  ldr     x1, [x8, #0x308]
  1000a15fc  mov     x0, x19
  1000a1600  mov     x2, x20
  1000a1604  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] brickWithAmbiantCleared:[self ambiantName]]
  1000a1608  mov     x0, x20
  1000a160c  bl      _objc_release
  1000a1610  mov     x0, x19
  1000a1614  ldp     x29, x30, [sp, #0x20]
  1000a1618  ldp     x20, x19, [sp, #0x10]
  1000a161c  ldp     x22, x21, [sp], #0x30
  1000a1620  b       _objc_release
loc_1000a1624:
  1000a1624  ldp     x29, x30, [sp, #0x20]
  1000a1628  ldp     x20, x19, [sp, #0x10]
  1000a162c  ldp     x22, x21, [sp], #0x30
  1000a1630  ret
  1000a1634  mov     x21, x0
  1000a1638  b       loc_1000a1648
  1000a163c  mov     x21, x0
  1000a1640  mov     x0, x20
  1000a1644  bl      _objc_release
loc_1000a1648:
  1000a1648  mov     x0, x19
  1000a164c  bl      _objc_release
  1000a1650  mov     x0, x21
  1000a1654  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrick brickIsCleared]
; address 0x1000a1658  size 932  kind objc
; ======================================================================
  1000a1658  stp     x28, x27, [sp, #-0x60]!
  1000a165c  stp     x26, x25, [sp, #0x10]
  1000a1660  stp     x24, x23, [sp, #0x20]
  1000a1664  stp     x22, x21, [sp, #0x30]
  1000a1668  stp     x20, x19, [sp, #0x40]
  1000a166c  stp     x29, x30, [sp, #0x50]
  1000a1670  add     x29, sp, #0x50
  1000a1674  sub     sp, sp, #0x1a0
  1000a1678  mov     x21, x0
  1000a167c  adrp    x26, #0x1003b0000
  1000a1680  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000a1684  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000a1688  stur    x26, [x29, #-0x58]
  1000a168c  adrp    x8, #0x10041e000
  1000a1690  ldr     x0, [x8, #8]                             ; class ADTracker
  1000a1694  adrp    x8, #0x100416000
  1000a1698  nop
  1000a169c  ldr     x1, [x8, #0xac0]
  1000a16a0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000a16a4  mov     x29, x29
  1000a16a8  bl      _objc_retainAutoreleasedReturnValue
  1000a16ac  mov     x20, x0
  1000a16b0  adrp    x8, #0x100417000
  1000a16b4  nop
  1000a16b8  ldr     x19, [x8, #0x450]
  1000a16bc  mov     x0, x21
  1000a16c0  mov     x1, x19
  1000a16c4  bl      _objc_msgSend                            ; [self name]
  1000a16c8  mov     x29, x29
  1000a16cc  bl      _objc_retainAutoreleasedReturnValue
  1000a16d0  mov     x22, x0
  1000a16d4  adrp    x8, #0x100420000
  1000a16d8  ldrsw   x8, [x8, #0x94]                          ; ivar offset ADBrick.timeInBrick (+0x48)
  1000a16dc  ldr     s0, [x21, x8]                            ; s0 = self->timeInBrick
  1000a16e0  fcvt    d0, s0
  1000a16e4  adrp    x8, #0x10041a000
  1000a16e8  nop
  1000a16ec  ldr     x1, [x8, #0x310]
  1000a16f0  mov     x0, x20
  1000a16f4  mov     x2, x22
  1000a16f8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] defeatBrick:[self name] InTime:self->timeInBrick]
  1000a16fc  mov     x0, x22
  1000a1700  bl      _objc_release
  1000a1704  mov     x0, x20
  1000a1708  bl      _objc_release
  1000a170c  stp     xzr, xzr, [sp, #0x88]
  1000a1710  stp     xzr, xzr, [sp, #0x78]
  1000a1714  stp     xzr, xzr, [sp, #0x68]
  1000a1718  stp     xzr, xzr, [sp, #0x58]
  1000a171c  adrp    x8, #0x100419000
  1000a1720  nop
  1000a1724  ldr     x1, [x8, #0xe60]
  1000a1728  mov     x0, x21
  1000a172c  bl      _objc_msgSend                            ; [self enemies]
  1000a1730  mov     x29, x29
  1000a1734  bl      _objc_retainAutoreleasedReturnValue
  1000a1738  mov     x22, x0
  1000a173c  adrp    x8, #0x100416000
  1000a1740  nop
  1000a1744  ldr     x20, [x8, #0xe00]
  1000a1748  add     x2, sp, #0x58
  1000a174c  sub     x3, x29, #0xd8
  1000a1750  mov     w4, #0x10
  1000a1754  mov     x1, x20
  1000a1758  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xd8] count:16]
  1000a175c  mov     x24, x0
  1000a1760  cbz     x24, loc_1000a17dc                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xd8] count:16] == 0)
  1000a1764  ldr     x8, [sp, #0x68]
  1000a1768  ldr     x27, [x8]
  1000a176c  adrp    x8, #0x100419000
  1000a1770  add     x8, x8, #0x1a8                           ; &@selector(life)
  1000a1774  ldr     x23, [x8]
loc_1000a1778:
  1000a1778  mov     x28, #0
loc_1000a177c:
  1000a177c  ldr     x8, [sp, #0x68]
  1000a1780  ldr     x8, [x8]
  1000a1784  cmp     x8, x27
  1000a1788  b.eq    loc_1000a1794                            ; if (x8 == x27)
  1000a178c  mov     x0, x22
  1000a1790  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemies])
loc_1000a1794:
  1000a1794  ldr     x8, [sp, #0x60]
  1000a1798  ldr     x25, [x8, x28, lsl #3]
  1000a179c  mov     x0, x25
  1000a17a0  mov     x1, x23
  1000a17a4  bl      _objc_msgSend                            ; [x0 life]
  1000a17a8  fcmp    s0, #0.0
  1000a17ac  b.gt    loc_1000a18c0                            ; if ([x0 life] > 0.0)
  1000a17b0  add     x28, x28, #1
  1000a17b4  cmp     x28, x24
  1000a17b8  b.lo    loc_1000a177c                            ; if ((x28 + 1) <u [[self enemies] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xd8] count:16])
  1000a17bc  add     x2, sp, #0x58
  1000a17c0  sub     x3, x29, #0xd8
  1000a17c4  mov     w4, #0x10
  1000a17c8  mov     x0, x22
  1000a17cc  mov     x1, x20
  1000a17d0  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xd8] count:16]
  1000a17d4  mov     x24, x0
  1000a17d8  cbnz    x24, loc_1000a1778                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x58] objects:&x29[-0xd8] count:16] != 0)
loc_1000a17dc:
  1000a17dc  mov     x0, x22
  1000a17e0  bl      _objc_release
  1000a17e4  stp     xzr, xzr, [sp, #0x48]
  1000a17e8  stp     xzr, xzr, [sp, #0x38]
  1000a17ec  stp     xzr, xzr, [sp, #0x28]
  1000a17f0  stp     xzr, xzr, [sp, #0x18]
  1000a17f4  adrp    x8, #0x100420000
  1000a17f8  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a17fc  ldr     x0, [x21, x8]                            ; x0 = self->soundsArray
  1000a1800  bl      _objc_retain
  1000a1804  mov     x21, x0
  1000a1808  add     x2, sp, #0x18
  1000a180c  add     x3, sp, #0x98
  1000a1810  mov     w4, #0x10
  1000a1814  mov     x1, x20
  1000a1818  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16]
  1000a181c  mov     x23, x0
  1000a1820  cbz     x23, loc_1000a18b8                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16] == 0)
  1000a1824  ldr     x8, [sp, #0x28]
  1000a1828  ldr     x27, [x8]
  1000a182c  adrp    x8, #0x10041a000
  1000a1830  nop
  1000a1834  ldr     x22, [x8, #0x318]
  1000a1838  adrp    x8, #0x100416000
  1000a183c  add     x8, x8, #0xc60                           ; &@selector(state)
  1000a1840  ldr     x24, [x8]
loc_1000a1844:
  1000a1844  mov     x28, #0
loc_1000a1848:
  1000a1848  ldr     x8, [sp, #0x28]
  1000a184c  ldr     x8, [x8]
  1000a1850  cmp     x8, x27
  1000a1854  b.eq    loc_1000a1860                            ; if (x8 == x27)
  1000a1858  mov     x0, x21
  1000a185c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a1860:
  1000a1860  ldr     x8, [sp, #0x20]
  1000a1864  ldr     x25, [x8, x28, lsl #3]
  1000a1868  mov     x0, x25
  1000a186c  mov     x1, x22
  1000a1870  bl      _objc_msgSend                            ; [x0 blocker]
  1000a1874  cbz     w0, loc_1000a188c                        ; if ([x0 blocker] == 0)
  1000a1878  mov     x0, x25
  1000a187c  mov     x1, x24
  1000a1880  bl      _objc_msgSend                            ; [x0 state]
  1000a1884  cmp     w0, #3
  1000a1888  b.ne    loc_1000a1920                            ; if ([x0 state] != 3)
loc_1000a188c:
  1000a188c  add     x28, x28, #1
  1000a1890  cmp     x28, x23
  1000a1894  b.lo    loc_1000a1848                            ; if ((x28 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16])
  1000a1898  add     x2, sp, #0x18
  1000a189c  add     x3, sp, #0x98
  1000a18a0  mov     w4, #0x10
  1000a18a4  mov     x0, x21
  1000a18a8  mov     x1, x20
  1000a18ac  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16]
  1000a18b0  mov     x23, x0
  1000a18b4  cbnz    x23, loc_1000a1844                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x18] objects:&sp[0x98] count:16] != 0)
loc_1000a18b8:
  1000a18b8  mov     w19, #1
  1000a18bc  b       loc_1000a1954
loc_1000a18c0:
  1000a18c0  mov     x0, x25
  1000a18c4  mov     x1, x19
  1000a18c8  bl      _objc_msgSend                            ; [x0 name]
  1000a18cc  mov     x29, x29
  1000a18d0  bl      _objc_retainAutoreleasedReturnValue
  1000a18d4  mov     x20, x0
  1000a18d8  mov     x0, x25
  1000a18dc  mov     x1, x23
  1000a18e0  bl      _objc_msgSend                            ; [x0 life]
  1000a18e4  fcvt    d0, s0
  1000a18e8  str     d0, [sp, #8]
  1000a18ec  str     x20, [sp]
  1000a18f0  adrp    x0, #0x1003c0000
  1000a18f4  add     x0, x0, #0x8f0                           ; @"%@ still alive, life = %f"
  1000a18f8  bl      _NSLog                                   ; NSLog(@"%@ still alive, life = %f", [x0 name], [x0 life])
  1000a18fc  mov     x0, x20
  1000a1900  bl      _objc_release
  1000a1904  mov     x0, x22
  1000a1908  bl      _objc_release
  1000a190c  ldur    x8, [x29, #-0x58]
  1000a1910  sub     x8, x26, x8
  1000a1914  cbnz    x8, loc_1000a198c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a1918  mov     w0, #0
  1000a191c  b       loc_1000a196c
loc_1000a1920:
  1000a1920  mov     x0, x25
  1000a1924  mov     x1, x19
  1000a1928  bl      _objc_msgSend                            ; [x0 name]
  1000a192c  mov     x29, x29
  1000a1930  bl      _objc_retainAutoreleasedReturnValue
  1000a1934  mov     x20, x0
  1000a1938  str     x20, [sp]
  1000a193c  adrp    x0, #0x1003c0000
  1000a1940  add     x0, x0, #0x910                           ; @"%@ blocker sound still alive"
  1000a1944  bl      _NSLog                                   ; NSLog(@"%@ blocker sound still alive", [x0 name])
  1000a1948  mov     x0, x20
  1000a194c  bl      _objc_release
  1000a1950  mov     w19, #0
loc_1000a1954:
  1000a1954  mov     x0, x21
  1000a1958  bl      _objc_release
  1000a195c  ldur    x8, [x29, #-0x58]
  1000a1960  sub     x8, x26, x8
  1000a1964  cbnz    x8, loc_1000a198c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a1968  mov     x0, x19
loc_1000a196c:
  1000a196c  sub     sp, x29, #0x50
  1000a1970  ldp     x29, x30, [sp, #0x50]
  1000a1974  ldp     x20, x19, [sp, #0x40]
  1000a1978  ldp     x22, x21, [sp, #0x30]
  1000a197c  ldp     x24, x23, [sp, #0x20]
  1000a1980  ldp     x26, x25, [sp, #0x10]
  1000a1984  ldp     x28, x27, [sp], #0x60
  1000a1988  ret
loc_1000a198c:
  1000a198c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a1990:
  1000a1990  mov     x19, x0
loc_1000a1994:
  1000a1994  mov     x0, x21
  1000a1998  b       loc_1000a19a4
loc_1000a199c:
  1000a199c  mov     x19, x0
loc_1000a19a0:
  1000a19a0  mov     x0, x22
loc_1000a19a4:
  1000a19a4  bl      _objc_release
  1000a19a8  mov     x0, x19
  1000a19ac  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a19b0  b       loc_1000a199c
  1000a19b4  mov     x19, x0
  1000a19b8  mov     x0, x20
  1000a19bc  bl      _objc_release
  1000a19c0  b       loc_1000a19a0
  1000a19c4  mov     x19, x0
  1000a19c8  b       loc_1000a19d8
  1000a19cc  mov     x19, x0
  1000a19d0  mov     x0, x22
  1000a19d4  bl      _objc_release
loc_1000a19d8:
  1000a19d8  mov     x0, x20
  1000a19dc  b       loc_1000a19a4
  1000a19e0  b       loc_1000a1990
  1000a19e4  b       loc_1000a199c
  1000a19e8  b       loc_1000a1990
  1000a19ec  mov     x19, x0
  1000a19f0  mov     x0, x20
  1000a19f4  bl      _objc_release
  1000a19f8  b       loc_1000a1994

; ======================================================================
; -[ADBrick checkSpawnOnStart:]
; address 0x1000a19fc  size 1712  kind objc
; ======================================================================
  1000a19fc  stp     x28, x27, [sp, #-0x60]!
  1000a1a00  stp     x26, x25, [sp, #0x10]
  1000a1a04  stp     x24, x23, [sp, #0x20]
  1000a1a08  stp     x22, x21, [sp, #0x30]
  1000a1a0c  stp     x20, x19, [sp, #0x40]
  1000a1a10  stp     x29, x30, [sp, #0x50]
  1000a1a14  add     x29, sp, #0x50
  1000a1a18  sub     sp, sp, #0x200
  1000a1a1c  mov     x19, x0
  1000a1a20  adrp    x8, #0x1003b0000
  1000a1a24  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a1a28  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a1a2c  stur    x8, [x29, #-0x58]
  1000a1a30  mov     x0, x2
  1000a1a34  bl      _objc_retain
  1000a1a38  str     x0, [sp, #0x70]
  1000a1a3c  stp     xzr, xzr, [sp, #0xe8]
  1000a1a40  stp     xzr, xzr, [sp, #0xd8]
  1000a1a44  stp     xzr, xzr, [sp, #0xc8]
  1000a1a48  stp     xzr, xzr, [sp, #0xb8]
  1000a1a4c  adrp    x8, #0x100419000
  1000a1a50  nop
  1000a1a54  ldr     x1, [x8, #0xe60]
  1000a1a58  mov     x0, x19
  1000a1a5c  bl      _objc_msgSend                            ; [self enemies]
  1000a1a60  str     x19, [sp, #0x18]
  1000a1a64  mov     x29, x29
  1000a1a68  bl      _objc_retainAutoreleasedReturnValue
  1000a1a6c  mov     x27, x0
  1000a1a70  str     x27, [sp, #0x58]
  1000a1a74  adrp    x8, #0x100416000
  1000a1a78  nop
  1000a1a7c  ldr     x1, [x8, #0xe00]
  1000a1a80  str     x1, [sp, #0x20]
  1000a1a84  add     x2, sp, #0xb8
  1000a1a88  sub     x3, x29, #0xd8
  1000a1a8c  mov     w4, #0x10
  1000a1a90  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16]
  1000a1a94  mov     x23, x0
  1000a1a98  cbz     x23, loc_1000a1cf0                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16] == 0)
  1000a1a9c  ldr     x8, [sp, #0xc8]
  1000a1aa0  adrp    x9, #0x100419000
  1000a1aa4  add     x9, x9, #0x1a8                           ; &@selector(life)
  1000a1aa8  adrp    x10, #0x10041a000
  1000a1aac  add     x10, x10, #0x320                         ; &@selector(spawn_after)
  1000a1ab0  adrp    x11, #0x100417000
  1000a1ab4  add     x11, x11, #0x40                          ; &@selector(objectForKey:)
  1000a1ab8  adrp    x12, #0x100416000
  1000a1abc  add     x12, x12, #0xf58                         ; &@selector(isEqualToString:)
  1000a1ac0  ldr     x24, [x9]
  1000a1ac4  ldr     x25, [x10]
  1000a1ac8  ldr     x28, [x11]
  1000a1acc  ldr     x21, [x8]
  1000a1ad0  str     x21, [sp, #0x48]
  1000a1ad4  ldr     x8, [x12]
  1000a1ad8  str     x8, [sp, #0x68]
  1000a1adc  adrp    x8, #0x100417000
  1000a1ae0  nop
  1000a1ae4  ldr     x8, [x8, #0xd8]
  1000a1ae8  str     x8, [sp, #0x50]
  1000a1aec  adrp    x8, #0x100417000
  1000a1af0  nop
  1000a1af4  ldr     x8, [x8, #0x450]
  1000a1af8  str     x8, [sp, #0x40]
  1000a1afc  adrp    x8, #0x100417000
  1000a1b00  nop
  1000a1b04  ldr     x8, [x8, #0x48]
  1000a1b08  str     x8, [sp, #0x38]
  1000a1b0c  adrp    x8, #0x100418000
  1000a1b10  nop
  1000a1b14  ldr     x8, [x8, #0xb98]
  1000a1b18  str     x8, [sp, #0x30]
  1000a1b1c  adrp    x8, #0x100416000
  1000a1b20  nop
  1000a1b24  ldr     x8, [x8, #0xc78]
  1000a1b28  str     x8, [sp, #0x28]
loc_1000a1b2c:
  1000a1b2c  mov     x26, #0
loc_1000a1b30:
  1000a1b30  ldr     x8, [sp, #0xc8]
  1000a1b34  ldr     x8, [x8]
  1000a1b38  cmp     x8, x21
  1000a1b3c  b.eq    loc_1000a1b48                            ; if (x8 == x21)
  1000a1b40  mov     x0, x27
  1000a1b44  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemies])
loc_1000a1b48:
  1000a1b48  ldr     x8, [sp, #0xc0]
  1000a1b4c  ldr     x22, [x8, x26, lsl #3]
  1000a1b50  mov     x0, x22
  1000a1b54  mov     x1, x24
  1000a1b58  bl      _objc_msgSend                            ; [x0 life]
  1000a1b5c  fcmp    s0, #0.0
  1000a1b60  b.le    loc_1000a1cc4                            ; if ([x0 life] <= (or unordered) 0.0)
  1000a1b64  mov     x0, x22
  1000a1b68  mov     x1, x25
  1000a1b6c  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a1b70  mov     x29, x29
  1000a1b74  bl      _objc_retainAutoreleasedReturnValue
  1000a1b78  mov     x19, x0
  1000a1b7c  mov     x1, x28
  1000a1b80  adrp    x2, #0x1003c0000
  1000a1b84  add     x2, x2, #0x930                           ; @"enemy"
  1000a1b88  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"enemy"]
  1000a1b8c  mov     x29, x29
  1000a1b90  bl      _objc_retainAutoreleasedReturnValue
  1000a1b94  mov     x20, x0
  1000a1b98  ldp     x1, x2, [sp, #0x68]
  1000a1b9c  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1]
  1000a1ba0  cbz     w0, loc_1000a1cb4                        ; if ([[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1] == 0)
  1000a1ba4  mov     x0, x22
  1000a1ba8  mov     x1, x25
  1000a1bac  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a1bb0  mov     x29, x29
  1000a1bb4  bl      _objc_retainAutoreleasedReturnValue
  1000a1bb8  mov     x21, x0
  1000a1bbc  mov     x1, x28
  1000a1bc0  adrp    x2, #0x1003c0000
  1000a1bc4  add     x2, x2, #0x950                           ; @"afterStart"
  1000a1bc8  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"afterStart"]
  1000a1bcc  str     x19, [sp, #0x60]
  1000a1bd0  mov     x29, x29
  1000a1bd4  bl      _objc_retainAutoreleasedReturnValue
  1000a1bd8  mov     x27, x0
  1000a1bdc  ldr     x1, [sp, #0x50]
  1000a1be0  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"afterStart"] boolValue]
  1000a1be4  mov     x19, x0
  1000a1be8  mov     x0, x27
  1000a1bec  bl      _objc_release
  1000a1bf0  mov     x0, x21
  1000a1bf4  bl      _objc_release
  1000a1bf8  mov     x0, x20
  1000a1bfc  bl      _objc_release
  1000a1c00  ldr     x0, [sp, #0x60]
  1000a1c04  bl      _objc_release
  1000a1c08  ldr     x27, [sp, #0x58]
  1000a1c0c  ldr     x21, [sp, #0x48]
  1000a1c10  cbz     w19, loc_1000a1cc4                       ; if ([[[x0 spawn_after] objectForKey:@"afterStart"] boolValue] == 0)
  1000a1c14  mov     x0, x22
  1000a1c18  ldr     x1, [sp, #0x40]
  1000a1c1c  bl      _objc_msgSend                            ; [x0 name]
  1000a1c20  mov     x29, x29
  1000a1c24  bl      _objc_retainAutoreleasedReturnValue
  1000a1c28  mov     x19, x0
  1000a1c2c  ldr     x8, [sp, #0x70]
  1000a1c30  stp     x19, x8, [sp]
  1000a1c34  adrp    x0, #0x1003c0000
  1000a1c38  add     x0, x0, #0x970                           ; @"Spawn %@ after %@"
  1000a1c3c  bl      _NSLog                                   ; NSLog(@"Spawn %@ after %@", [x0 name], arg1)
  1000a1c40  mov     x0, x19
  1000a1c44  bl      _objc_release
  1000a1c48  mov     x0, x22
  1000a1c4c  mov     x1, x25
  1000a1c50  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a1c54  mov     x29, x29
  1000a1c58  bl      _objc_retainAutoreleasedReturnValue
  1000a1c5c  mov     x20, x0
  1000a1c60  mov     x1, x28
  1000a1c64  adrp    x2, #0x1003c0000
  1000a1c68  add     x2, x2, #0x990                           ; @"time"
  1000a1c6c  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"time"]
  1000a1c70  mov     x29, x29
  1000a1c74  bl      _objc_retainAutoreleasedReturnValue
  1000a1c78  mov     x19, x0
  1000a1c7c  ldr     x1, [sp, #0x38]
  1000a1c80  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"time"] floatValue]
  1000a1c84  mov     x0, x22
  1000a1c88  ldr     x1, [sp, #0x30]
  1000a1c8c  bl      _objc_msgSend                            ; [x0 setSpawn_time:[[[x0 spawn_after] objectForKey:@"time"] floatValue]]
  1000a1c90  mov     x0, x19
  1000a1c94  bl      _objc_release
  1000a1c98  mov     x0, x20
  1000a1c9c  bl      _objc_release
  1000a1ca0  mov     w2, #0
  1000a1ca4  mov     x0, x22
  1000a1ca8  ldr     x1, [sp, #0x28]
  1000a1cac  bl      _objc_msgSend                            ; [x0 setState:0]
  1000a1cb0  b       loc_1000a1cc4
loc_1000a1cb4:
  1000a1cb4  mov     x0, x20
  1000a1cb8  bl      _objc_release
  1000a1cbc  mov     x0, x19
  1000a1cc0  bl      _objc_release
loc_1000a1cc4:
  1000a1cc4  add     x26, x26, #1
  1000a1cc8  cmp     x26, x23
  1000a1ccc  b.lo    loc_1000a1b30                            ; if ((x26 + 1) <u [[self enemies] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16])
  1000a1cd0  add     x2, sp, #0xb8
  1000a1cd4  sub     x3, x29, #0xd8
  1000a1cd8  mov     w4, #0x10
  1000a1cdc  mov     x0, x27
  1000a1ce0  ldr     x1, [sp, #0x20]
  1000a1ce4  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16]
  1000a1ce8  mov     x23, x0
  1000a1cec  cbnz    x23, loc_1000a1b2c                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16] != 0)
loc_1000a1cf0:
  1000a1cf0  mov     x0, x27
  1000a1cf4  bl      _objc_release
  1000a1cf8  stp     xzr, xzr, [sp, #0xa8]
  1000a1cfc  stp     xzr, xzr, [sp, #0x98]
  1000a1d00  stp     xzr, xzr, [sp, #0x88]
  1000a1d04  stp     xzr, xzr, [sp, #0x78]
  1000a1d08  adrp    x8, #0x100420000
  1000a1d0c  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a1d10  ldr     x9, [sp, #0x18]
  1000a1d14  ldr     x0, [x9, x8]                             ; x0 = self->soundsArray
  1000a1d18  bl      _objc_retain
  1000a1d1c  mov     x25, x0
  1000a1d20  str     x25, [sp, #0x50]
  1000a1d24  add     x2, sp, #0x78
  1000a1d28  add     x3, sp, #0xf8
  1000a1d2c  mov     w4, #0x10
  1000a1d30  ldr     x1, [sp, #0x20]
  1000a1d34  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16]
  1000a1d38  mov     x20, x0
  1000a1d3c  cbz     x20, loc_1000a1f58                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16] == 0)
  1000a1d40  adrp    x8, #0x100416000
  1000a1d44  nop
  1000a1d48  ldr     x9, [sp, #0x88]
  1000a1d4c  adrp    x10, #0x10041a000
  1000a1d50  add     x10, x10, #0x320                         ; &@selector(spawn_after)
  1000a1d54  ldr     x22, [x8, #0xc60]
  1000a1d58  ldr     x23, [x10]
  1000a1d5c  ldr     x26, [x9]
  1000a1d60  adrp    x8, #0x100417000
  1000a1d64  nop
  1000a1d68  ldr     x8, [x8, #0x40]
  1000a1d6c  str     x8, [sp, #0x68]
  1000a1d70  adrp    x8, #0x100416000
  1000a1d74  nop
  1000a1d78  ldr     x8, [x8, #0xf58]
  1000a1d7c  str     x8, [sp, #0x60]
  1000a1d80  adrp    x8, #0x100417000
  1000a1d84  nop
  1000a1d88  ldr     x8, [x8, #0xd8]
  1000a1d8c  str     x8, [sp, #0x48]
  1000a1d90  adrp    x8, #0x100417000
  1000a1d94  nop
  1000a1d98  ldr     x8, [x8, #0x48]
  1000a1d9c  str     x8, [sp, #0x40]
  1000a1da0  adrp    x8, #0x100418000
  1000a1da4  nop
  1000a1da8  ldr     x8, [x8, #0xb98]
  1000a1dac  str     x8, [sp, #0x38]
  1000a1db0  adrp    x8, #0x100416000
  1000a1db4  nop
  1000a1db8  ldr     x8, [x8, #0xc78]
  1000a1dbc  str     x8, [sp, #0x30]
loc_1000a1dc0:
  1000a1dc0  mov     x24, #0
loc_1000a1dc4:
  1000a1dc4  ldr     x8, [sp, #0x88]
  1000a1dc8  ldr     x8, [x8]
  1000a1dcc  cmp     x8, x26
  1000a1dd0  b.eq    loc_1000a1ddc                            ; if (x8 == x26)
  1000a1dd4  mov     x0, x25
  1000a1dd8  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a1ddc:
  1000a1ddc  ldr     x8, [sp, #0x80]
  1000a1de0  ldr     x27, [x8, x24, lsl #3]
  1000a1de4  mov     x0, x27
  1000a1de8  mov     x1, x22
  1000a1dec  bl      _objc_msgSend                            ; [x0 state]
  1000a1df0  cmp     w0, #3
  1000a1df4  b.eq    loc_1000a1f2c                            ; if ([x0 state] == 3)
  1000a1df8  mov     x0, x27
  1000a1dfc  mov     x1, x23
  1000a1e00  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a1e04  mov     x29, x29
  1000a1e08  bl      _objc_retainAutoreleasedReturnValue
  1000a1e0c  mov     x21, x0
  1000a1e10  ldr     x1, [sp, #0x68]
  1000a1e14  adrp    x2, #0x1003c0000
  1000a1e18  add     x2, x2, #0x930                           ; @"enemy"
  1000a1e1c  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"enemy"]
  1000a1e20  mov     x29, x29
  1000a1e24  bl      _objc_retainAutoreleasedReturnValue
  1000a1e28  mov     x28, x0
  1000a1e2c  ldr     x1, [sp, #0x60]
  1000a1e30  ldr     x2, [sp, #0x70]
  1000a1e34  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1]
  1000a1e38  cbz     w0, loc_1000a1f1c                        ; if ([[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1] == 0)
  1000a1e3c  mov     x0, x27
  1000a1e40  mov     x1, x23
  1000a1e44  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a1e48  mov     x29, x29
  1000a1e4c  bl      _objc_retainAutoreleasedReturnValue
  1000a1e50  mov     x19, x0
  1000a1e54  ldr     x1, [sp, #0x68]
  1000a1e58  adrp    x2, #0x1003c0000
  1000a1e5c  add     x2, x2, #0x950                           ; @"afterStart"
  1000a1e60  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"afterStart"]
  1000a1e64  str     x21, [sp, #0x58]
  1000a1e68  mov     x29, x29
  1000a1e6c  bl      _objc_retainAutoreleasedReturnValue
  1000a1e70  mov     x25, x0
  1000a1e74  ldr     x1, [sp, #0x48]
  1000a1e78  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"afterStart"] boolValue]
  1000a1e7c  mov     x21, x0
  1000a1e80  mov     x0, x25
  1000a1e84  bl      _objc_release
  1000a1e88  mov     x0, x19
  1000a1e8c  bl      _objc_release
  1000a1e90  mov     x0, x28
  1000a1e94  bl      _objc_release
  1000a1e98  ldr     x0, [sp, #0x58]
  1000a1e9c  bl      _objc_release
  1000a1ea0  ldr     x25, [sp, #0x50]
  1000a1ea4  cbz     w21, loc_1000a1f2c                       ; if ([[[x0 spawn_after] objectForKey:@"afterStart"] boolValue] == 0)
  1000a1ea8  mov     x0, x27
  1000a1eac  mov     x1, x23
  1000a1eb0  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a1eb4  mov     x21, x26
  1000a1eb8  mov     x29, x29
  1000a1ebc  bl      _objc_retainAutoreleasedReturnValue
  1000a1ec0  mov     x26, x0
  1000a1ec4  ldr     x1, [sp, #0x68]
  1000a1ec8  adrp    x2, #0x1003c0000
  1000a1ecc  add     x2, x2, #0x990                           ; @"time"
  1000a1ed0  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"time"]
  1000a1ed4  mov     x29, x29
  1000a1ed8  bl      _objc_retainAutoreleasedReturnValue
  1000a1edc  mov     x19, x0
  1000a1ee0  ldr     x1, [sp, #0x40]
  1000a1ee4  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"time"] floatValue]
  1000a1ee8  mov     x0, x27
  1000a1eec  ldr     x1, [sp, #0x38]
  1000a1ef0  bl      _objc_msgSend                            ; [x0 setSpawn_time:[[[x0 spawn_after] objectForKey:@"time"] floatValue]]
  1000a1ef4  mov     x0, x19
  1000a1ef8  bl      _objc_release
  1000a1efc  mov     x0, x26
  1000a1f00  bl      _objc_release
  1000a1f04  mov     w2, #1
  1000a1f08  mov     x0, x27
  1000a1f0c  ldr     x1, [sp, #0x30]
  1000a1f10  bl      _objc_msgSend                            ; [x0 setState:1]
  1000a1f14  mov     x26, x21
  1000a1f18  b       loc_1000a1f2c
loc_1000a1f1c:
  1000a1f1c  mov     x0, x28
  1000a1f20  bl      _objc_release
  1000a1f24  mov     x0, x21
  1000a1f28  bl      _objc_release
loc_1000a1f2c:
  1000a1f2c  add     x24, x24, #1
  1000a1f30  cmp     x24, x20
  1000a1f34  b.lo    loc_1000a1dc4                            ; if ((x24 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16])
  1000a1f38  add     x2, sp, #0x78
  1000a1f3c  add     x3, sp, #0xf8
  1000a1f40  mov     w4, #0x10
  1000a1f44  mov     x0, x25
  1000a1f48  ldr     x1, [sp, #0x20]
  1000a1f4c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16]
  1000a1f50  mov     x20, x0
  1000a1f54  cbnz    x20, loc_1000a1dc0                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x78] objects:&sp[0xf8] count:16] != 0)
loc_1000a1f58:
  1000a1f58  mov     x0, x25
  1000a1f5c  bl      _objc_release
  1000a1f60  ldr     x0, [sp, #0x70]
  1000a1f64  bl      _objc_release
  1000a1f68  ldur    x8, [x29, #-0x58]
  1000a1f6c  adrp    x9, #0x1003b0000
  1000a1f70  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a1f74  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a1f78  sub     x8, x9, x8
  1000a1f7c  cbnz    x8, loc_1000a1fa0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a1f80  sub     sp, x29, #0x50
  1000a1f84  ldp     x29, x30, [sp, #0x50]
  1000a1f88  ldp     x20, x19, [sp, #0x40]
  1000a1f8c  ldp     x22, x21, [sp, #0x30]
  1000a1f90  ldp     x24, x23, [sp, #0x20]
  1000a1f94  ldp     x26, x25, [sp, #0x10]
  1000a1f98  ldp     x28, x27, [sp], #0x60
  1000a1f9c  ret
loc_1000a1fa0:
  1000a1fa0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a1fa4:
  1000a1fa4  mov     x23, x0
  1000a1fa8  b       loc_1000a2068
loc_1000a1fac:
  1000a1fac  mov     x23, x0
  1000a1fb0  b       loc_1000a207c
  1000a1fb4  mov     x23, x0
  1000a1fb8  b       loc_1000a1ff4
  1000a1fbc  mov     x23, x0
  1000a1fc0  b       loc_1000a2034
  1000a1fc4  mov     x23, x0
  1000a1fc8  b       loc_1000a1ffc
  1000a1fcc  mov     x23, x0
  1000a1fd0  b       loc_1000a203c
  1000a1fd4  mov     x23, x0
  1000a1fd8  b       loc_1000a1fec
  1000a1fdc  mov     x23, x0
  1000a1fe0  mov     x0, x27
  1000a1fe4  bl      _objc_release
  1000a1fe8  ldp     x27, x19, [sp, #0x58]
loc_1000a1fec:
  1000a1fec  mov     x0, x21
  1000a1ff0  bl      _objc_release
loc_1000a1ff4:
  1000a1ff4  mov     x0, x20
  1000a1ff8  bl      _objc_release
loc_1000a1ffc:
  1000a1ffc  mov     x0, x19
  1000a2000  b       loc_1000a2064
  1000a2004  mov     x23, x0
  1000a2008  mov     x0, x19
  1000a200c  bl      _objc_release
  1000a2010  b       loc_1000a2060
  1000a2014  mov     x23, x0
  1000a2018  b       loc_1000a202c
  1000a201c  mov     x23, x0
  1000a2020  mov     x0, x25
  1000a2024  bl      _objc_release
  1000a2028  ldp     x25, x21, [sp, #0x50]
loc_1000a202c:
  1000a202c  mov     x0, x19
  1000a2030  bl      _objc_release
loc_1000a2034:
  1000a2034  mov     x0, x28
  1000a2038  bl      _objc_release
loc_1000a203c:
  1000a203c  mov     x0, x21
  1000a2040  b       loc_1000a2078
  1000a2044  mov     x23, x0
  1000a2048  mov     x0, x19
  1000a204c  bl      _objc_release
  1000a2050  b       loc_1000a2074
  1000a2054  mov     x23, x0
  1000a2058  b       loc_1000a1ffc
  1000a205c  mov     x23, x0
loc_1000a2060:
  1000a2060  mov     x0, x20
loc_1000a2064:
  1000a2064  bl      _objc_release
loc_1000a2068:
  1000a2068  mov     x0, x27
  1000a206c  b       loc_1000a2080
  1000a2070  mov     x23, x0
loc_1000a2074:
  1000a2074  mov     x0, x26
loc_1000a2078:
  1000a2078  bl      _objc_release
loc_1000a207c:
  1000a207c  mov     x0, x25
loc_1000a2080:
  1000a2080  bl      _objc_release
loc_1000a2084:
  1000a2084  ldr     x0, [sp, #0x70]
  1000a2088  bl      _objc_release
  1000a208c  mov     x0, x23
  1000a2090  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a2094  b       loc_1000a1fa4
  1000a2098  b       loc_1000a1fac
  1000a209c  mov     x23, x0
  1000a20a0  b       loc_1000a2084
  1000a20a4  b       loc_1000a1fa4
  1000a20a8  b       loc_1000a1fac

; ======================================================================
; -[ADBrick checkSpawnAfterKill:skipped:]
; address 0x1000a20ac  size 2744  kind objc
; ======================================================================
  1000a20ac  stp     d9, d8, [sp, #-0x70]!
  1000a20b0  stp     x28, x27, [sp, #0x10]
  1000a20b4  stp     x26, x25, [sp, #0x20]
  1000a20b8  stp     x24, x23, [sp, #0x30]
  1000a20bc  stp     x22, x21, [sp, #0x40]
  1000a20c0  stp     x20, x19, [sp, #0x50]
  1000a20c4  stp     x29, x30, [sp, #0x60]
  1000a20c8  add     x29, sp, #0x60
  1000a20cc  sub     sp, sp, #0x2d0
  1000a20d0  mov     x20, x3
  1000a20d4  mov     x19, x0
  1000a20d8  adrp    x8, #0x1003b0000
  1000a20dc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000a20e0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000a20e4  stur    x8, [x29, #-0x68]
  1000a20e8  mov     x0, x2
  1000a20ec  bl      _objc_retain
  1000a20f0  str     x0, [sp, #0x80]
  1000a20f4  str     w20, [sp, #0x64]
  1000a20f8  tbz     w20, #0, loc_1000a2290                   ; if (!(arg2 & 1))
  1000a20fc  stp     xzr, xzr, [sp, #0x138]
  1000a2100  stp     xzr, xzr, [sp, #0x128]
  1000a2104  stp     xzr, xzr, [sp, #0x118]
  1000a2108  stp     xzr, xzr, [sp, #0x108]
  1000a210c  adrp    x8, #0x100419000
  1000a2110  nop
  1000a2114  ldr     x1, [x8, #0xe60]
  1000a2118  mov     x0, x19
  1000a211c  bl      _objc_msgSend                            ; [self enemies]
  1000a2120  mov     x29, x29
  1000a2124  bl      _objc_retainAutoreleasedReturnValue
  1000a2128  str     x0, [sp, #0x78]
  1000a212c  adrp    x8, #0x100416000
  1000a2130  nop
  1000a2134  ldr     x1, [x8, #0xe00]
  1000a2138  str     x1, [sp, #0x58]
  1000a213c  add     x2, sp, #0x108
  1000a2140  sub     x3, x29, #0xe8
  1000a2144  mov     w4, #0x10
  1000a2148  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x108] objects:&x29[-0xe8] count:16]
  1000a214c  mov     x22, x0
  1000a2150  str     x19, [sp, #0x20]
  1000a2154  adrp    x8, #0x100181000
  1000a2158  cbz     x22, loc_1000a229c                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x108] objects:&x29[-0xe8] count:16] == 0)
  1000a215c  ldr     x9, [sp, #0x118]
  1000a2160  ldr     x27, [x9]
  1000a2164  adrp    x9, #0x100419000
  1000a2168  nop
  1000a216c  ldr     x23, [x9, #0x1a8]
  1000a2170  adrp    x9, #0x10041a000
  1000a2174  nop
  1000a2178  ldr     x9, [x9, #0x320]
  1000a217c  str     x9, [sp, #0x70]
  1000a2180  adrp    x9, #0x100417000
  1000a2184  nop
  1000a2188  ldr     x25, [x9, #0x40]
  1000a218c  adrp    x9, #0x100416000
  1000a2190  nop
  1000a2194  ldr     x26, [x9, #0xf58]
  1000a2198  adrp    x9, #0x100416000
  1000a219c  nop
  1000a21a0  ldr     x9, [x9, #0xfd0]
  1000a21a4  str     x9, [sp, #0x68]
  1000a21a8  ldr     s8, [x8, #0xd18]                         ; s8 = inf
loc_1000a21ac:
  1000a21ac  mov     x24, #0
loc_1000a21b0:
  1000a21b0  ldr     x8, [sp, #0x118]
  1000a21b4  ldr     x8, [x8]
  1000a21b8  cmp     x8, x27
  1000a21bc  b.eq    loc_1000a21c8                            ; if (x8 == x27)
  1000a21c0  ldr     x0, [sp, #0x78]
  1000a21c4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemies])
loc_1000a21c8:
  1000a21c8  ldr     x8, [sp, #0x110]
  1000a21cc  ldr     x20, [x8, x24, lsl #3]
  1000a21d0  mov     x0, x20
  1000a21d4  mov     x1, x23
  1000a21d8  bl      _objc_msgSend                            ; [x0 life]
  1000a21dc  fcmp    s0, #0.0
  1000a21e0  b.le    loc_1000a2260                            ; if ([x0 life] <= (or unordered) 0.0)
  1000a21e4  mov     x0, x20
  1000a21e8  ldr     x1, [sp, #0x70]
  1000a21ec  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a21f0  mov     x29, x29
  1000a21f4  bl      _objc_retainAutoreleasedReturnValue
  1000a21f8  mov     x28, x0
  1000a21fc  mov     x1, x25
  1000a2200  adrp    x2, #0x1003c0000
  1000a2204  add     x2, x2, #0x930                           ; @"enemy"
  1000a2208  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"enemy"]
  1000a220c  mov     x29, x29
  1000a2210  bl      _objc_retainAutoreleasedReturnValue
  1000a2214  mov     x19, x0
  1000a2218  mov     x1, x26
  1000a221c  ldr     x2, [sp, #0x80]
  1000a2220  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1]
  1000a2224  mov     x21, x0
  1000a2228  mov     x0, x19
  1000a222c  bl      _objc_release
  1000a2230  mov     x0, x28
  1000a2234  bl      _objc_release
  1000a2238  cbz     w21, loc_1000a2260                       ; if ([[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1] == 0)
  1000a223c  mov     x0, x20
  1000a2240  ldr     x1, [sp, #0x68]
  1000a2244  bl      _objc_msgSend                            ; [x0 spawn_time]
  1000a2248  fcmp    s0, s8
  1000a224c  b.pl    loc_1000a2260                            ; if ([x0 spawn_time] >= (or unordered) s8)
  1000a2250  mov     x0, x20
  1000a2254  ldr     x1, [sp, #0x68]
  1000a2258  bl      _objc_msgSend                            ; [x0 spawn_time]
  1000a225c  mov     v8.16b, v0.16b
loc_1000a2260:
  1000a2260  add     x24, x24, #1
  1000a2264  cmp     x24, x22
  1000a2268  b.lo    loc_1000a21b0                            ; if ((x24 + 1) <u [[self enemies] countByEnumeratingWithState:&sp[0x108] objects:&x29[-0xe8] count:16])
  1000a226c  add     x2, sp, #0x108
  1000a2270  sub     x3, x29, #0xe8
  1000a2274  mov     w4, #0x10
  1000a2278  ldr     x0, [sp, #0x78]
  1000a227c  ldr     x1, [sp, #0x58]
  1000a2280  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0x108] objects:&x29[-0xe8] count:16]
  1000a2284  mov     x22, x0
  1000a2288  cbnz    x22, loc_1000a21ac                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0x108] objects:&x29[-0xe8] count:16] != 0)
  1000a228c  b       loc_1000a22a0
loc_1000a2290:
  1000a2290  adrp    x8, #0x100181000
  1000a2294  ldr     s8, [x8, #0xd18]                         ; s8 = inf
  1000a2298  b       loc_1000a22b8
loc_1000a229c:
  1000a229c  ldr     s8, [x8, #0xd18]                         ; s8 = inf
loc_1000a22a0:
  1000a22a0  ldr     x0, [sp, #0x78]
  1000a22a4  bl      _objc_release
  1000a22a8  adrp    x8, #0x100181000
  1000a22ac  ldr     s0, [x8, #0xd1c]                         ; s0 = -0.100000001
  1000a22b0  fadd    s8, s8, s0
  1000a22b4  ldr     x19, [sp, #0x20]
loc_1000a22b8:
  1000a22b8  stp     xzr, xzr, [sp, #0xf8]
  1000a22bc  stp     xzr, xzr, [sp, #0xe8]
  1000a22c0  stp     xzr, xzr, [sp, #0xd8]
  1000a22c4  stp     xzr, xzr, [sp, #0xc8]
  1000a22c8  adrp    x8, #0x100419000
  1000a22cc  nop
  1000a22d0  ldr     x1, [x8, #0xe60]
  1000a22d4  mov     x0, x19
  1000a22d8  bl      _objc_msgSend                            ; [self enemies]
  1000a22dc  str     x19, [sp, #0x20]
  1000a22e0  mov     x29, x29
  1000a22e4  bl      _objc_retainAutoreleasedReturnValue
  1000a22e8  str     x0, [sp, #0x78]
  1000a22ec  adrp    x8, #0x100416000
  1000a22f0  nop
  1000a22f4  ldr     x1, [x8, #0xe00]
  1000a22f8  str     x1, [sp, #0x38]
  1000a22fc  add     x2, sp, #0xc8
  1000a2300  add     x3, sp, #0x1c8
  1000a2304  mov     w4, #0x10
  1000a2308  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1c8] count:16]
  1000a230c  mov     x24, x0
  1000a2310  cbz     x24, loc_1000a2678                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1c8] count:16] == 0)
  1000a2314  adrp    x8, #0x100419000
  1000a2318  nop
  1000a231c  ldr     x9, [sp, #0xd8]
  1000a2320  adrp    x10, #0x10041a000
  1000a2324  nop
  1000a2328  adrp    x11, #0x100417000
  1000a232c  add     x11, x11, #0x40                          ; &@selector(objectForKey:)
  1000a2330  adrp    x12, #0x100416000
  1000a2334  add     x12, x12, #0xf58                         ; &@selector(isEqualToString:)
  1000a2338  adrp    x13, #0x100417000
  1000a233c  add     x13, x13, #0xd8                          ; &@selector(boolValue)
  1000a2340  adrp    x14, #0x100416000
  1000a2344  add     x14, x14, #0xc78                         ; &@selector(setState:)
  1000a2348  adrp    x15, #0x100416000
  1000a234c  add     x15, x15, #0xfd0                         ; &@selector(spawn_time)
  1000a2350  adrp    x16, #0x100418000
  1000a2354  add     x16, x16, #0xb98                         ; &@selector(setSpawn_time:)
  1000a2358  ldr     x25, [x8, #0x1a8]
  1000a235c  ldr     x26, [x10, #0x320]
  1000a2360  adrp    x8, #0x100417000
  1000a2364  nop
  1000a2368  ldr     x27, [x11]
  1000a236c  ldr     x10, [x12]
  1000a2370  str     x10, [sp, #0x70]
  1000a2374  ldr     x10, [x13]
  1000a2378  str     x10, [sp, #0x68]
  1000a237c  ldr     x10, [x14]
  1000a2380  str     x10, [sp, #0x48]
  1000a2384  ldr     x10, [x15]
  1000a2388  str     x10, [sp, #0x30]
  1000a238c  ldr     x23, [x9]
  1000a2390  ldr     x9, [x16]
  1000a2394  str     x9, [sp, #0x50]
  1000a2398  adrp    x9, #0x100416000
  1000a239c  nop
  1000a23a0  ldr     x8, [x8, #0x450]
  1000a23a4  str     x8, [sp, #0x58]
  1000a23a8  adrp    x8, #0x100417000
  1000a23ac  nop
  1000a23b0  fcvt    d9, s8
  1000a23b4  ldr     x9, [x9, #0xee8]
  1000a23b8  str     x9, [sp, #0x28]
  1000a23bc  ldr     x8, [x8, #0x48]
  1000a23c0  str     x8, [sp, #0x40]
loc_1000a23c4:
  1000a23c4  mov     x28, #0
loc_1000a23c8:
  1000a23c8  ldr     x8, [sp, #0xd8]
  1000a23cc  ldr     x8, [x8]
  1000a23d0  cmp     x8, x23
  1000a23d4  b.eq    loc_1000a23e0                            ; if (x8 == x23)
  1000a23d8  ldr     x0, [sp, #0x78]
  1000a23dc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemies])
loc_1000a23e0:
  1000a23e0  ldr     x8, [sp, #0xd0]
  1000a23e4  ldr     x22, [x8, x28, lsl #3]
  1000a23e8  mov     x0, x22
  1000a23ec  mov     x1, x25
  1000a23f0  bl      _objc_msgSend                            ; [x0 life]
  1000a23f4  fcmp    s0, #0.0
  1000a23f8  b.le    loc_1000a264c                            ; if ([x0 life] <= (or unordered) 0.0)
  1000a23fc  mov     x0, x22
  1000a2400  mov     x1, x26
  1000a2404  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a2408  mov     x29, x29
  1000a240c  bl      _objc_retainAutoreleasedReturnValue
  1000a2410  mov     x21, x0
  1000a2414  mov     x1, x27
  1000a2418  adrp    x2, #0x1003c0000
  1000a241c  add     x2, x2, #0x930                           ; @"enemy"
  1000a2420  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"enemy"]
  1000a2424  mov     x29, x29
  1000a2428  bl      _objc_retainAutoreleasedReturnValue
  1000a242c  mov     x19, x0
  1000a2430  ldr     x1, [sp, #0x70]
  1000a2434  ldr     x2, [sp, #0x80]
  1000a2438  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1]
  1000a243c  mov     x20, x0
  1000a2440  mov     x0, x19
  1000a2444  bl      _objc_release
  1000a2448  mov     x0, x21
  1000a244c  bl      _objc_release
  1000a2450  cbz     w20, loc_1000a264c                       ; if ([[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1] == 0)
  1000a2454  mov     x0, x22
  1000a2458  mov     x1, x26
  1000a245c  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a2460  mov     x29, x29
  1000a2464  bl      _objc_retainAutoreleasedReturnValue
  1000a2468  mov     x21, x0
  1000a246c  mov     x1, x27
  1000a2470  adrp    x2, #0x1003c0000
  1000a2474  add     x2, x2, #0x950                           ; @"afterStart"
  1000a2478  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"afterStart"]
  1000a247c  mov     x29, x29
  1000a2480  bl      _objc_retainAutoreleasedReturnValue
  1000a2484  mov     x19, x0
  1000a2488  ldr     x1, [sp, #0x68]
  1000a248c  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"afterStart"] boolValue]
  1000a2490  mov     x20, x0
  1000a2494  mov     x0, x19
  1000a2498  bl      _objc_release
  1000a249c  mov     x0, x21
  1000a24a0  bl      _objc_release
  1000a24a4  tbz     w20, #0, loc_1000a2518                   ; if (!([[[x0 spawn_after] objectForKey:@"afterStart"] boolValue] & 1))
  1000a24a8  ldr     w8, [sp, #0x64]
  1000a24ac  cbz     w8, loc_1000a264c                        ; if (arg2 == 0)
  1000a24b0  mov     x0, x22
  1000a24b4  mov     x1, x26
  1000a24b8  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a24bc  mov     x29, x29
  1000a24c0  bl      _objc_retainAutoreleasedReturnValue
  1000a24c4  mov     x21, x0
  1000a24c8  mov     x1, x27
  1000a24cc  adrp    x2, #0x1003c0000
  1000a24d0  add     x2, x2, #0x9b0                           ; @"ignoreIfSkipped"
  1000a24d4  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"ignoreIfSkipped"]
  1000a24d8  mov     x29, x29
  1000a24dc  bl      _objc_retainAutoreleasedReturnValue
  1000a24e0  mov     x19, x0
  1000a24e4  ldr     x1, [sp, #0x68]
  1000a24e8  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"ignoreIfSkipped"] boolValue]
  1000a24ec  mov     x20, x0
  1000a24f0  mov     x0, x19
  1000a24f4  bl      _objc_release
  1000a24f8  mov     x0, x21
  1000a24fc  bl      _objc_release
  1000a2500  tbz     w20, #0, loc_1000a25b8                   ; if (!([[[x0 spawn_after] objectForKey:@"ignoreIfSkipped"] boolValue] & 1))
  1000a2504  mov     w2, #-1
  1000a2508  mov     x0, x22
  1000a250c  ldr     x1, [sp, #0x48]
  1000a2510  bl      _objc_msgSend                            ; [x0 setState:0xffffffff]
  1000a2514  b       loc_1000a264c
loc_1000a2518:
  1000a2518  mov     x0, x22
  1000a251c  ldr     x1, [sp, #0x58]
  1000a2520  bl      _objc_msgSend                            ; [x0 name]
  1000a2524  mov     x29, x29
  1000a2528  bl      _objc_retainAutoreleasedReturnValue
  1000a252c  mov     x19, x0
  1000a2530  ldr     x8, [sp, #0x80]
  1000a2534  stp     x19, x8, [sp]
  1000a2538  adrp    x0, #0x1003c0000
  1000a253c  add     x0, x0, #0x970                           ; @"Spawn %@ after %@"
  1000a2540  bl      _NSLog                                   ; NSLog(@"Spawn %@ after %@", [x0 name], arg1)
  1000a2544  mov     x0, x19
  1000a2548  bl      _objc_release
  1000a254c  mov     x0, x22
  1000a2550  mov     x1, x26
  1000a2554  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a2558  mov     x29, x29
  1000a255c  bl      _objc_retainAutoreleasedReturnValue
  1000a2560  mov     x21, x0
  1000a2564  mov     x1, x27
  1000a2568  adrp    x2, #0x1003c0000
  1000a256c  add     x2, x2, #0x990                           ; @"time"
  1000a2570  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"time"]
  1000a2574  mov     x29, x29
  1000a2578  bl      _objc_retainAutoreleasedReturnValue
  1000a257c  mov     x20, x0
  1000a2580  ldr     x1, [sp, #0x40]
  1000a2584  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"time"] floatValue]
  1000a2588  mov     x0, x22
  1000a258c  ldr     x1, [sp, #0x50]
  1000a2590  bl      _objc_msgSend                            ; [x0 setSpawn_time:[[[x0 spawn_after] objectForKey:@"time"] floatValue]]
  1000a2594  mov     x0, x20
  1000a2598  bl      _objc_release
  1000a259c  mov     x0, x21
  1000a25a0  bl      _objc_release
  1000a25a4  mov     w2, #0
  1000a25a8  mov     x0, x22
  1000a25ac  ldr     x1, [sp, #0x48]
  1000a25b0  bl      _objc_msgSend                            ; [x0 setState:0]
  1000a25b4  b       loc_1000a264c
loc_1000a25b8:
  1000a25b8  mov     x0, x22
  1000a25bc  ldr     x1, [sp, #0x30]
  1000a25c0  bl      _objc_msgSend                            ; [x0 spawn_time]
  1000a25c4  fsub    s0, s0, s8
  1000a25c8  mov     x0, x22
  1000a25cc  ldr     x1, [sp, #0x50]
  1000a25d0  bl      _objc_msgSend                            ; [x0 setSpawn_time:([x0 spawn_time] - s8)]
  1000a25d4  adrp    x8, #0x10041d000
  1000a25d8  ldr     x20, [x8, #0xf78]                        ; class NSString
  1000a25dc  mov     x0, x22
  1000a25e0  ldr     x1, [sp, #0x58]
  1000a25e4  bl      _objc_msgSend                            ; [x0 name]
  1000a25e8  mov     x29, x29
  1000a25ec  bl      _objc_retainAutoreleasedReturnValue
  1000a25f0  mov     x21, x0
  1000a25f4  mov     x0, x22
  1000a25f8  ldr     x1, [sp, #0x30]
  1000a25fc  bl      _objc_msgSend                            ; [x0 spawn_time]
  1000a2600  fcvt    d0, s0
  1000a2604  stp     d9, d0, [sp, #8]
  1000a2608  str     x21, [sp]
  1000a260c  mov     x0, x20
  1000a2610  ldr     x1, [sp, #0x28]
  1000a2614  adrp    x2, #0x1003c0000
  1000a2618  add     x2, x2, #0x9d0                           ; @"Reduced spawn time of %@ by %f. New value : %f"
  1000a261c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Reduced spawn time of %@ by %f. New value : %f", [x0 name], sp[8], [x0 spawn_time]]
  1000a2620  mov     x29, x29
  1000a2624  bl      _objc_retainAutoreleasedReturnValue
  1000a2628  mov     x19, x0
  1000a262c  str     x19, [sp]
  1000a2630  adrp    x0, #0x1003ba000
  1000a2634  add     x0, x0, #0x190                           ; @"%@"
  1000a2638  bl      _NSLog                                   ; NSLog(@"%@", [NSString stringWithFormat:@"Reduced spawn time of %@ by %f. New value : %f", [x…)
  1000a263c  mov     x0, x19
  1000a2640  bl      _objc_release
  1000a2644  mov     x0, x21
  1000a2648  bl      _objc_release
loc_1000a264c:
  1000a264c  add     x28, x28, #1
  1000a2650  cmp     x28, x24
  1000a2654  b.lo    loc_1000a23c8                            ; if ((x28 + 1) <u [[self enemies] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1c8] count:16])
  1000a2658  add     x2, sp, #0xc8
  1000a265c  add     x3, sp, #0x1c8
  1000a2660  mov     w4, #0x10
  1000a2664  ldr     x0, [sp, #0x78]
  1000a2668  ldr     x1, [sp, #0x38]
  1000a266c  bl      _objc_msgSend                            ; [[self enemies] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1c8] count:16]
  1000a2670  mov     x24, x0
  1000a2674  cbnz    x24, loc_1000a23c4                       ; if ([[self enemies] countByEnumeratingWithState:&sp[0xc8] objects:&sp[0x1c8] count:16] != 0)
loc_1000a2678:
  1000a2678  ldr     x0, [sp, #0x78]
  1000a267c  bl      _objc_release
  1000a2680  stp     xzr, xzr, [sp, #0xb8]
  1000a2684  stp     xzr, xzr, [sp, #0xa8]
  1000a2688  stp     xzr, xzr, [sp, #0x98]
  1000a268c  stp     xzr, xzr, [sp, #0x88]
  1000a2690  adrp    x8, #0x100420000
  1000a2694  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a2698  ldr     x9, [sp, #0x20]
  1000a269c  ldr     x0, [x9, x8]                             ; x0 = self->soundsArray
  1000a26a0  bl      _objc_retain
  1000a26a4  str     x0, [sp, #0x78]
  1000a26a8  add     x2, sp, #0x88
  1000a26ac  add     x3, sp, #0x148
  1000a26b0  mov     w4, #0x10
  1000a26b4  ldr     x1, [sp, #0x38]
  1000a26b8  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x88] objects:&sp[0x148] count:16]
  1000a26bc  mov     x20, x0
  1000a26c0  cbz     x20, loc_1000a2948                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x88] objects:&sp[0x148] count:16] == 0)
  1000a26c4  ldr     x8, [sp, #0x98]
  1000a26c8  adrp    x9, #0x100416000
  1000a26cc  add     x9, x9, #0xc60                           ; &@selector(state)
  1000a26d0  adrp    x10, #0x10041a000
  1000a26d4  add     x10, x10, #0x320                         ; &@selector(spawn_after)
  1000a26d8  adrp    x11, #0x100417000
  1000a26dc  add     x11, x11, #0x40                          ; &@selector(objectForKey:)
  1000a26e0  adrp    x12, #0x100416000
  1000a26e4  add     x12, x12, #0xf58                         ; &@selector(isEqualToString:)
  1000a26e8  ldr     x21, [x9]
  1000a26ec  ldr     x22, [x10]
  1000a26f0  ldr     x24, [x11]
  1000a26f4  ldr     x23, [x8]
  1000a26f8  ldr     x8, [x12]
  1000a26fc  str     x8, [sp, #0x70]
  1000a2700  adrp    x8, #0x100417000
  1000a2704  nop
  1000a2708  ldr     x8, [x8, #0xd8]
  1000a270c  str     x8, [sp, #0x68]
  1000a2710  adrp    x8, #0x100416000
  1000a2714  nop
  1000a2718  ldr     x8, [x8, #0xc78]
  1000a271c  str     x8, [sp, #0x58]
  1000a2720  adrp    x8, #0x100417000
  1000a2724  nop
  1000a2728  ldr     x8, [x8, #0x600]
  1000a272c  str     x8, [sp, #0x40]
  1000a2730  adrp    x8, #0x100417000
  1000a2734  nop
  1000a2738  ldr     x8, [x8, #0x48]
  1000a273c  str     x8, [sp, #0x50]
  1000a2740  adrp    x8, #0x100418000
  1000a2744  nop
  1000a2748  ldr     x8, [x8, #0xb98]
  1000a274c  str     x8, [sp, #0x48]
loc_1000a2750:
  1000a2750  mov     x25, #0
loc_1000a2754:
  1000a2754  ldr     x8, [sp, #0x98]
  1000a2758  ldr     x8, [x8]
  1000a275c  cmp     x8, x23
  1000a2760  b.eq    loc_1000a276c                            ; if (x8 == x23)
  1000a2764  ldr     x0, [sp, #0x78]
  1000a2768  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a276c:
  1000a276c  ldr     x8, [sp, #0x90]
  1000a2770  ldr     x27, [x8, x25, lsl #3]
  1000a2774  mov     x0, x27
  1000a2778  mov     x1, x21
  1000a277c  bl      _objc_msgSend                            ; [x0 state]
  1000a2780  cmp     w0, #3
  1000a2784  b.eq    loc_1000a291c                            ; if ([x0 state] == 3)
  1000a2788  mov     x0, x27
  1000a278c  mov     x1, x22
  1000a2790  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a2794  mov     x29, x29
  1000a2798  bl      _objc_retainAutoreleasedReturnValue
  1000a279c  mov     x28, x0
  1000a27a0  mov     x1, x24
  1000a27a4  adrp    x2, #0x1003c0000
  1000a27a8  add     x2, x2, #0x930                           ; @"enemy"
  1000a27ac  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"enemy"]
  1000a27b0  mov     x29, x29
  1000a27b4  bl      _objc_retainAutoreleasedReturnValue
  1000a27b8  mov     x19, x0
  1000a27bc  ldr     x1, [sp, #0x70]
  1000a27c0  ldr     x2, [sp, #0x80]
  1000a27c4  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1]
  1000a27c8  mov     x26, x0
  1000a27cc  mov     x0, x19
  1000a27d0  bl      _objc_release
  1000a27d4  mov     x0, x28
  1000a27d8  bl      _objc_release
  1000a27dc  cbz     w26, loc_1000a291c                       ; if ([[[x0 spawn_after] objectForKey:@"enemy"] isEqualToString:arg1] == 0)
  1000a27e0  mov     x0, x27
  1000a27e4  mov     x1, x22
  1000a27e8  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a27ec  mov     x29, x29
  1000a27f0  bl      _objc_retainAutoreleasedReturnValue
  1000a27f4  mov     x28, x0
  1000a27f8  mov     x1, x24
  1000a27fc  adrp    x2, #0x1003c0000
  1000a2800  add     x2, x2, #0x950                           ; @"afterStart"
  1000a2804  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"afterStart"]
  1000a2808  mov     x29, x29
  1000a280c  bl      _objc_retainAutoreleasedReturnValue
  1000a2810  mov     x19, x0
  1000a2814  ldr     x1, [sp, #0x68]
  1000a2818  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"afterStart"] boolValue]
  1000a281c  mov     x26, x0
  1000a2820  mov     x0, x19
  1000a2824  bl      _objc_release
  1000a2828  mov     x0, x28
  1000a282c  bl      _objc_release
  1000a2830  tbz     w26, #0, loc_1000a28a4                   ; if (!([[[x0 spawn_after] objectForKey:@"afterStart"] boolValue] & 1))
  1000a2834  ldr     w8, [sp, #0x64]
  1000a2838  cbz     w8, loc_1000a291c                        ; if (arg2 == 0)
  1000a283c  mov     x0, x27
  1000a2840  mov     x1, x22
  1000a2844  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a2848  mov     x29, x29
  1000a284c  bl      _objc_retainAutoreleasedReturnValue
  1000a2850  mov     x28, x0
  1000a2854  mov     x1, x24
  1000a2858  adrp    x2, #0x1003c0000
  1000a285c  add     x2, x2, #0x9b0                           ; @"ignoreIfSkipped"
  1000a2860  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"ignoreIfSkipped"]
  1000a2864  mov     x29, x29
  1000a2868  bl      _objc_retainAutoreleasedReturnValue
  1000a286c  mov     x19, x0
  1000a2870  ldr     x1, [sp, #0x68]
  1000a2874  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"ignoreIfSkipped"] boolValue]
  1000a2878  mov     x26, x0
  1000a287c  mov     x0, x19
  1000a2880  bl      _objc_release
  1000a2884  mov     x0, x28
  1000a2888  bl      _objc_release
  1000a288c  tbz     w26, #0, loc_1000a2910                   ; if (!([[[x0 spawn_after] objectForKey:@"ignoreIfSkipped"] boolValue] & 1))
  1000a2890  mov     w2, #0
  1000a2894  mov     x0, x27
  1000a2898  ldr     x1, [sp, #0x58]
  1000a289c  bl      _objc_msgSend                            ; [x0 setState:0]
  1000a28a0  b       loc_1000a291c
loc_1000a28a4:
  1000a28a4  mov     x0, x27
  1000a28a8  mov     x1, x22
  1000a28ac  bl      _objc_msgSend                            ; [x0 spawn_after]
  1000a28b0  mov     x29, x29
  1000a28b4  bl      _objc_retainAutoreleasedReturnValue
  1000a28b8  mov     x28, x0
  1000a28bc  mov     x1, x24
  1000a28c0  adrp    x2, #0x1003c0000
  1000a28c4  add     x2, x2, #0x990                           ; @"time"
  1000a28c8  bl      _objc_msgSend                            ; [[x0 spawn_after] objectForKey:@"time"]
  1000a28cc  mov     x29, x29
  1000a28d0  bl      _objc_retainAutoreleasedReturnValue
  1000a28d4  mov     x19, x0
  1000a28d8  ldr     x1, [sp, #0x50]
  1000a28dc  bl      _objc_msgSend                            ; [[[x0 spawn_after] objectForKey:@"time"] floatValue]
  1000a28e0  mov     x0, x27
  1000a28e4  ldr     x1, [sp, #0x48]
  1000a28e8  bl      _objc_msgSend                            ; [x0 setSpawn_time:[[[x0 spawn_after] objectForKey:@"time"] floatValue]]
  1000a28ec  mov     x0, x19
  1000a28f0  bl      _objc_release
  1000a28f4  mov     x0, x28
  1000a28f8  bl      _objc_release
  1000a28fc  mov     w2, #1
  1000a2900  mov     x0, x27
  1000a2904  ldr     x1, [sp, #0x58]
  1000a2908  bl      _objc_msgSend                            ; [x0 setState:1]
  1000a290c  b       loc_1000a291c
loc_1000a2910:
  1000a2910  mov     x0, x27
  1000a2914  ldr     x1, [sp, #0x40]
  1000a2918  bl      _objc_msgSend                            ; [x0 play]
loc_1000a291c:
  1000a291c  add     x25, x25, #1
  1000a2920  cmp     x25, x20
  1000a2924  b.lo    loc_1000a2754                            ; if ((x25 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x88] objects:&sp[0x148] count:16])
  1000a2928  add     x2, sp, #0x88
  1000a292c  add     x3, sp, #0x148
  1000a2930  mov     w4, #0x10
  1000a2934  ldr     x0, [sp, #0x78]
  1000a2938  ldr     x1, [sp, #0x38]
  1000a293c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x88] objects:&sp[0x148] count:16]
  1000a2940  mov     x20, x0
  1000a2944  cbnz    x20, loc_1000a2750                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x88] objects:&sp[0x148] count:16] != 0)
loc_1000a2948:
  1000a2948  ldr     x0, [sp, #0x78]
  1000a294c  bl      _objc_release
  1000a2950  adrp    x8, #0x100420000
  1000a2954  ldrsw   x21, [x8, #0x8c]                         ; ivar offset ADBrick.powerUpDictionary (+0x10)
  1000a2958  ldr     x22, [sp, #0x20]
  1000a295c  ldr     x0, [x22, x21]                           ; x0 = self->powerUpDictionary
  1000a2960  cbz     x0, loc_1000a2a14                        ; if (self->powerUpDictionary == 0)
  1000a2964  adrp    x8, #0x100417000
  1000a2968  nop
  1000a296c  ldr     x20, [x8, #0x40]
  1000a2970  adrp    x2, #0x1003c0000
  1000a2974  add     x2, x2, #0x750                           ; @"spawn_after"
  1000a2978  mov     x1, x20
  1000a297c  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"spawn_after"]
  1000a2980  mov     x29, x29
  1000a2984  bl      _objc_retainAutoreleasedReturnValue
  1000a2988  mov     x19, x0
  1000a298c  bl      _objc_release
  1000a2990  cbz     x19, loc_1000a2a14                       ; if ([self->powerUpDictionary objectForKey:@"spawn_after"] == 0)
  1000a2994  ldr     x0, [x22, x21]                           ; x0 = self->powerUpDictionary
  1000a2998  adrp    x2, #0x1003c0000
  1000a299c  add     x2, x2, #0x750                           ; @"spawn_after"
  1000a29a0  mov     x1, x20
  1000a29a4  bl      _objc_msgSend                            ; [self->powerUpDictionary objectForKey:@"spawn_after"]
  1000a29a8  mov     x29, x29
  1000a29ac  bl      _objc_retainAutoreleasedReturnValue
  1000a29b0  mov     x19, x0
  1000a29b4  adrp    x8, #0x100416000
  1000a29b8  nop
  1000a29bc  ldr     x1, [x8, #0xf58]
  1000a29c0  ldr     x2, [sp, #0x80]
  1000a29c4  bl      _objc_msgSend                            ; [[self->powerUpDictionary objectForKey:@"spawn_after"] isEqualToString:arg1]
  1000a29c8  mov     x20, x0
  1000a29cc  mov     x0, x19
  1000a29d0  bl      _objc_release
  1000a29d4  cbz     w20, loc_1000a2a14                       ; if ([[self->powerUpDictionary objectForKey:@"spawn_after"] isEqualToString:arg1] == 0)
  1000a29d8  adrp    x8, #0x10041e000
  1000a29dc  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000a29e0  adrp    x8, #0x100417000
  1000a29e4  nop
  1000a29e8  ldr     x1, [x8, #0xaa8]
  1000a29ec  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000a29f0  mov     x29, x29
  1000a29f4  bl      _objc_retainAutoreleasedReturnValue
  1000a29f8  mov     x19, x0
  1000a29fc  adrp    x8, #0x10041a000
  1000a2a00  nop
  1000a2a04  ldr     x1, [x8, #0x2e0]
  1000a2a08  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] tryToPopPowerUpContainer]
  1000a2a0c  mov     x0, x19
  1000a2a10  bl      _objc_release
loc_1000a2a14:
  1000a2a14  ldr     x0, [sp, #0x80]
  1000a2a18  bl      _objc_release
  1000a2a1c  ldur    x8, [x29, #-0x68]
  1000a2a20  adrp    x9, #0x1003b0000
  1000a2a24  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000a2a28  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000a2a2c  sub     x8, x9, x8
  1000a2a30  cbnz    x8, loc_1000a2a58                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a2a34  sub     sp, x29, #0x60
  1000a2a38  ldp     x29, x30, [sp, #0x60]
  1000a2a3c  ldp     x20, x19, [sp, #0x50]
  1000a2a40  ldp     x22, x21, [sp, #0x40]
  1000a2a44  ldp     x24, x23, [sp, #0x30]
  1000a2a48  ldp     x26, x25, [sp, #0x20]
  1000a2a4c  ldp     x28, x27, [sp, #0x10]
  1000a2a50  ldp     d9, d8, [sp], #0x70
  1000a2a54  ret
loc_1000a2a58:
  1000a2a58  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000a2a5c  b       loc_1000a2a64
  1000a2a60  b       loc_1000a2a64
loc_1000a2a64:
  1000a2a64  mov     x22, x0
  1000a2a68  b       loc_1000a2b18
  1000a2a6c  mov     x22, x0
  1000a2a70  b       loc_1000a2b10
  1000a2a74  b       loc_1000a2b04
  1000a2a78  mov     x22, x0
  1000a2a7c  b       loc_1000a2afc
  1000a2a80  b       loc_1000a2af0
  1000a2a84  mov     x22, x0
  1000a2a88  b       loc_1000a2afc
  1000a2a8c  b       loc_1000a2af0
  1000a2a90  mov     x22, x0
  1000a2a94  b       loc_1000a2b10
  1000a2a98  b       loc_1000a2b04
  1000a2a9c  mov     x22, x0
  1000a2aa0  mov     x0, x20
  1000a2aa4  b       loc_1000a2b0c
  1000a2aa8  mov     x22, x0
  1000a2aac  b       loc_1000a2afc
  1000a2ab0  b       loc_1000a2af0
  1000a2ab4  b       loc_1000a2af0
  1000a2ab8  mov     x22, x0
  1000a2abc  mov     x0, x19
  1000a2ac0  b       loc_1000a2b14
  1000a2ac4  mov     x22, x0
  1000a2ac8  b       loc_1000a2b10
  1000a2acc  mov     x22, x0
  1000a2ad0  b       loc_1000a2afc
  1000a2ad4  mov     x22, x0
  1000a2ad8  b       loc_1000a2b10
  1000a2adc  b       loc_1000a2b04
  1000a2ae0  mov     x22, x0
  1000a2ae4  b       loc_1000a2b10
  1000a2ae8  mov     x22, x0
  1000a2aec  b       loc_1000a2afc
loc_1000a2af0:
  1000a2af0  mov     x22, x0
  1000a2af4  mov     x0, x19
  1000a2af8  bl      _objc_release
loc_1000a2afc:
  1000a2afc  mov     x0, x28
  1000a2b00  b       loc_1000a2b14
loc_1000a2b04:
  1000a2b04  mov     x22, x0
  1000a2b08  mov     x0, x19
loc_1000a2b0c:
  1000a2b0c  bl      _objc_release
loc_1000a2b10:
  1000a2b10  mov     x0, x21
loc_1000a2b14:
  1000a2b14  bl      _objc_release
loc_1000a2b18:
  1000a2b18  ldr     x0, [sp, #0x78]
  1000a2b1c  bl      _objc_release
loc_1000a2b20:
  1000a2b20  ldr     x0, [sp, #0x80]
  1000a2b24  bl      _objc_release
  1000a2b28  mov     x0, x22
  1000a2b2c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a2b30  b       loc_1000a2a64
  1000a2b34  b       loc_1000a2a64
  1000a2b38  b       loc_1000a2a64
  1000a2b3c  mov     x22, x0
  1000a2b40  b       loc_1000a2b20
  1000a2b44  b       loc_1000a2a64
  1000a2b48  b       loc_1000a2a64
  1000a2b4c  b       loc_1000a2a64
  1000a2b50  b       loc_1000a2b54
loc_1000a2b54:
  1000a2b54  mov     x22, x0
  1000a2b58  mov     x0, x19
  1000a2b5c  bl      _objc_release
  1000a2b60  b       loc_1000a2b20

; ======================================================================
; -[ADBrick stopAllSounds]
; address 0x1000a2b64  size 308  kind objc
; ======================================================================
  1000a2b64  stp     x26, x25, [sp, #-0x50]!
  1000a2b68  stp     x24, x23, [sp, #0x10]
  1000a2b6c  stp     x22, x21, [sp, #0x20]
  1000a2b70  stp     x20, x19, [sp, #0x30]
  1000a2b74  stp     x29, x30, [sp, #0x40]
  1000a2b78  add     x29, sp, #0x40
  1000a2b7c  sub     sp, sp, #0xd0
  1000a2b80  adrp    x23, #0x1003b0000
  1000a2b84  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000a2b88  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000a2b8c  stur    x23, [x29, #-0x48]
  1000a2b90  stp     xzr, xzr, [sp, #0x38]
  1000a2b94  stp     xzr, xzr, [sp, #0x28]
  1000a2b98  stp     xzr, xzr, [sp, #0x18]
  1000a2b9c  stp     xzr, xzr, [sp, #8]
  1000a2ba0  adrp    x8, #0x100420000
  1000a2ba4  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a2ba8  ldr     x0, [x0, x8]                             ; x0 = self->soundsArray
  1000a2bac  bl      _objc_retain
  1000a2bb0  mov     x19, x0
  1000a2bb4  adrp    x8, #0x100416000
  1000a2bb8  nop
  1000a2bbc  ldr     x20, [x8, #0xe00]
  1000a2bc0  add     x2, sp, #8
  1000a2bc4  add     x3, sp, #0x48
  1000a2bc8  mov     w4, #0x10
  1000a2bcc  mov     x1, x20
  1000a2bd0  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a2bd4  mov     x21, x0
  1000a2bd8  cbz     x21, loc_1000a2c48                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a2bdc  ldr     x8, [sp, #0x18]
  1000a2be0  ldr     x24, [x8]
  1000a2be4  adrp    x8, #0x10041a000
  1000a2be8  add     x8, x8, #0x328                           ; &@selector(stopWithNoCallback)
  1000a2bec  ldr     x22, [x8]
loc_1000a2bf0:
  1000a2bf0  mov     x25, #0
loc_1000a2bf4:
  1000a2bf4  ldr     x8, [sp, #0x18]
  1000a2bf8  ldr     x8, [x8]
  1000a2bfc  cmp     x8, x24
  1000a2c00  b.eq    loc_1000a2c0c                            ; if (x8 == x24)
  1000a2c04  mov     x0, x19
  1000a2c08  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a2c0c:
  1000a2c0c  ldr     x8, [sp, #0x10]
  1000a2c10  ldr     x0, [x8, x25, lsl #3]
  1000a2c14  mov     x1, x22
  1000a2c18  bl      _objc_msgSend                            ; [x0 stopWithNoCallback]
  1000a2c1c  add     x25, x25, #1
  1000a2c20  cmp     x25, x21
  1000a2c24  b.lo    loc_1000a2bf4                            ; if ((x25 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a2c28  add     x2, sp, #8
  1000a2c2c  add     x3, sp, #0x48
  1000a2c30  mov     w4, #0x10
  1000a2c34  mov     x0, x19
  1000a2c38  mov     x1, x20
  1000a2c3c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a2c40  mov     x21, x0
  1000a2c44  cbnz    x21, loc_1000a2bf0                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a2c48:
  1000a2c48  mov     x0, x19
  1000a2c4c  bl      _objc_release
  1000a2c50  ldur    x8, [x29, #-0x48]
  1000a2c54  sub     x8, x23, x8
  1000a2c58  cbnz    x8, loc_1000a2c78                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a2c5c  sub     sp, x29, #0x40
  1000a2c60  ldp     x29, x30, [sp, #0x40]
  1000a2c64  ldp     x20, x19, [sp, #0x30]
  1000a2c68  ldp     x22, x21, [sp, #0x20]
  1000a2c6c  ldp     x24, x23, [sp, #0x10]
  1000a2c70  ldp     x26, x25, [sp], #0x50
  1000a2c74  ret
loc_1000a2c78:
  1000a2c78  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a2c7c:
  1000a2c7c  mov     x20, x0
  1000a2c80  mov     x0, x19
  1000a2c84  bl      _objc_release
  1000a2c88  mov     x0, x20
  1000a2c8c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a2c90  b       loc_1000a2c7c
  1000a2c94  b       loc_1000a2c7c

; ======================================================================
; -[ADBrick hasSkippableSoundsPlaying]
; address 0x1000a2c98  size 424  kind objc
; ======================================================================
  1000a2c98  stp     d9, d8, [sp, #-0x70]!
  1000a2c9c  stp     x28, x27, [sp, #0x10]
  1000a2ca0  stp     x26, x25, [sp, #0x20]
  1000a2ca4  stp     x24, x23, [sp, #0x30]
  1000a2ca8  stp     x22, x21, [sp, #0x40]
  1000a2cac  stp     x20, x19, [sp, #0x50]
  1000a2cb0  stp     x29, x30, [sp, #0x60]
  1000a2cb4  add     x29, sp, #0x60
  1000a2cb8  sub     sp, sp, #0xd0
  1000a2cbc  adrp    x26, #0x1003b0000
  1000a2cc0  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000a2cc4  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000a2cc8  stur    x26, [x29, #-0x68]
  1000a2ccc  stp     xzr, xzr, [sp, #0x38]
  1000a2cd0  stp     xzr, xzr, [sp, #0x28]
  1000a2cd4  stp     xzr, xzr, [sp, #0x18]
  1000a2cd8  stp     xzr, xzr, [sp, #8]
  1000a2cdc  adrp    x8, #0x100420000
  1000a2ce0  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a2ce4  ldr     x0, [x0, x8]                             ; x0 = self->soundsArray
  1000a2ce8  bl      _objc_retain
  1000a2cec  mov     x19, x0
  1000a2cf0  adrp    x8, #0x100416000
  1000a2cf4  nop
  1000a2cf8  ldr     x20, [x8, #0xe00]
  1000a2cfc  add     x2, sp, #8
  1000a2d00  add     x3, sp, #0x48
  1000a2d04  mov     w4, #0x10
  1000a2d08  mov     x1, x20
  1000a2d0c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a2d10  mov     x22, x0
  1000a2d14  cbz     x22, loc_1000a2dd8                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a2d18  ldr     x8, [sp, #0x18]
  1000a2d1c  ldr     x27, [x8]
  1000a2d20  adrp    x8, #0x10041a000
  1000a2d24  nop
  1000a2d28  ldr     x21, [x8, #0x330]
  1000a2d2c  adrp    x8, #0x100416000
  1000a2d30  nop
  1000a2d34  ldr     x23, [x8, #0xc60]
  1000a2d38  adrp    x8, #0x100416000
  1000a2d3c  nop
  1000a2d40  ldr     x24, [x8, #0xc68]
  1000a2d44  adrp    x8, #0x100181000
  1000a2d48  ldr     d8, [x8, #0xd20]                         ; d8 = 0.15
loc_1000a2d4c:
  1000a2d4c  mov     x28, #0
loc_1000a2d50:
  1000a2d50  ldr     x8, [sp, #0x18]
  1000a2d54  ldr     x8, [x8]
  1000a2d58  cmp     x8, x27
  1000a2d5c  b.eq    loc_1000a2d68                            ; if (x8 == x27)
  1000a2d60  mov     x0, x19
  1000a2d64  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a2d68:
  1000a2d68  ldr     x8, [sp, #0x10]
  1000a2d6c  ldr     x25, [x8, x28, lsl #3]
  1000a2d70  mov     x0, x25
  1000a2d74  mov     x1, x21
  1000a2d78  bl      _objc_msgSend                            ; [x0 skippable]
  1000a2d7c  cbz     w0, loc_1000a2dac                        ; if ([x0 skippable] == 0)
  1000a2d80  mov     x0, x25
  1000a2d84  mov     x1, x23
  1000a2d88  bl      _objc_msgSend                            ; [x0 state]
  1000a2d8c  cmp     w0, #2
  1000a2d90  b.ne    loc_1000a2dac                            ; if ([x0 state] != 2)
  1000a2d94  mov     x0, x25
  1000a2d98  mov     x1, x24
  1000a2d9c  bl      _objc_msgSend                            ; [x0 timeInState]
  1000a2da0  fcvt    d0, s0
  1000a2da4  fcmp    d0, d8
  1000a2da8  b.gt    loc_1000a2de0                            ; if ([x0 timeInState] > 0.15)
loc_1000a2dac:
  1000a2dac  add     x28, x28, #1
  1000a2db0  cmp     x28, x22
  1000a2db4  b.lo    loc_1000a2d50                            ; if ((x28 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a2db8  add     x2, sp, #8
  1000a2dbc  add     x3, sp, #0x48
  1000a2dc0  mov     w4, #0x10
  1000a2dc4  mov     x0, x19
  1000a2dc8  mov     x1, x20
  1000a2dcc  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a2dd0  mov     x22, x0
  1000a2dd4  cbnz    x22, loc_1000a2d4c                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a2dd8:
  1000a2dd8  mov     w20, #0
  1000a2ddc  b       loc_1000a2de4
loc_1000a2de0:
  1000a2de0  mov     w20, #1
loc_1000a2de4:
  1000a2de4  mov     x0, x19
  1000a2de8  bl      _objc_release
  1000a2dec  ldur    x8, [x29, #-0x68]
  1000a2df0  sub     x8, x26, x8
  1000a2df4  cbnz    x8, loc_1000a2e20                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a2df8  mov     x0, x20
  1000a2dfc  sub     sp, x29, #0x60
  1000a2e00  ldp     x29, x30, [sp, #0x60]
  1000a2e04  ldp     x20, x19, [sp, #0x50]
  1000a2e08  ldp     x22, x21, [sp, #0x40]
  1000a2e0c  ldp     x24, x23, [sp, #0x30]
  1000a2e10  ldp     x26, x25, [sp, #0x20]
  1000a2e14  ldp     x28, x27, [sp, #0x10]
  1000a2e18  ldp     d9, d8, [sp], #0x70
  1000a2e1c  ret
loc_1000a2e20:
  1000a2e20  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a2e24:
  1000a2e24  mov     x20, x0
  1000a2e28  mov     x0, x19
  1000a2e2c  bl      _objc_release
  1000a2e30  mov     x0, x20
  1000a2e34  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a2e38  b       loc_1000a2e24
  1000a2e3c  b       loc_1000a2e24

; ======================================================================
; -[ADBrick skipAllSkippableSounds]
; address 0x1000a2e40  size 380  kind objc
; ======================================================================
  1000a2e40  stp     x28, x27, [sp, #-0x60]!
  1000a2e44  stp     x26, x25, [sp, #0x10]
  1000a2e48  stp     x24, x23, [sp, #0x20]
  1000a2e4c  stp     x22, x21, [sp, #0x30]
  1000a2e50  stp     x20, x19, [sp, #0x40]
  1000a2e54  stp     x29, x30, [sp, #0x50]
  1000a2e58  add     x29, sp, #0x50
  1000a2e5c  sub     sp, sp, #0xd0
  1000a2e60  adrp    x26, #0x1003b0000
  1000a2e64  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000a2e68  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000a2e6c  stur    x26, [x29, #-0x58]
  1000a2e70  stp     xzr, xzr, [sp, #0x38]
  1000a2e74  stp     xzr, xzr, [sp, #0x28]
  1000a2e78  stp     xzr, xzr, [sp, #0x18]
  1000a2e7c  stp     xzr, xzr, [sp, #8]
  1000a2e80  adrp    x8, #0x100420000
  1000a2e84  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a2e88  ldr     x0, [x0, x8]                             ; x0 = self->soundsArray
  1000a2e8c  bl      _objc_retain
  1000a2e90  mov     x19, x0
  1000a2e94  adrp    x8, #0x100416000
  1000a2e98  nop
  1000a2e9c  ldr     x20, [x8, #0xe00]
  1000a2ea0  add     x2, sp, #8
  1000a2ea4  add     x3, sp, #0x48
  1000a2ea8  mov     w4, #0x10
  1000a2eac  mov     x1, x20
  1000a2eb0  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a2eb4  mov     x21, x0
  1000a2eb8  cbz     x21, loc_1000a2f68                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000a2ebc  ldr     x8, [sp, #0x18]
  1000a2ec0  ldr     x27, [x8]
  1000a2ec4  adrp    x8, #0x10041a000
  1000a2ec8  nop
  1000a2ecc  ldr     x22, [x8, #0x330]
  1000a2ed0  adrp    x8, #0x100416000
  1000a2ed4  nop
  1000a2ed8  ldr     x23, [x8, #0xc60]
  1000a2edc  adrp    x8, #0x10041a000
  1000a2ee0  add     x8, x8, #0x338                           ; &@selector(skip)
  1000a2ee4  ldr     x24, [x8]
loc_1000a2ee8:
  1000a2ee8  mov     x28, #0
loc_1000a2eec:
  1000a2eec  ldr     x8, [sp, #0x18]
  1000a2ef0  ldr     x8, [x8]
  1000a2ef4  cmp     x8, x27
  1000a2ef8  b.eq    loc_1000a2f04                            ; if (x8 == x27)
  1000a2efc  mov     x0, x19
  1000a2f00  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a2f04:
  1000a2f04  ldr     x8, [sp, #0x10]
  1000a2f08  ldr     x25, [x8, x28, lsl #3]
  1000a2f0c  mov     x0, x25
  1000a2f10  mov     x1, x22
  1000a2f14  bl      _objc_msgSend                            ; [x0 skippable]
  1000a2f18  cbz     w0, loc_1000a2f3c                        ; if ([x0 skippable] == 0)
  1000a2f1c  mov     x0, x25
  1000a2f20  mov     x1, x23
  1000a2f24  bl      _objc_msgSend                            ; [x0 state]
  1000a2f28  cmp     w0, #2
  1000a2f2c  b.ne    loc_1000a2f3c                            ; if ([x0 state] != 2)
  1000a2f30  mov     x0, x25
  1000a2f34  mov     x1, x24
  1000a2f38  bl      _objc_msgSend                            ; [x0 skip]
loc_1000a2f3c:
  1000a2f3c  add     x28, x28, #1
  1000a2f40  cmp     x28, x21
  1000a2f44  b.lo    loc_1000a2eec                            ; if ((x28 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000a2f48  add     x2, sp, #8
  1000a2f4c  add     x3, sp, #0x48
  1000a2f50  mov     w4, #0x10
  1000a2f54  mov     x0, x19
  1000a2f58  mov     x1, x20
  1000a2f5c  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000a2f60  mov     x21, x0
  1000a2f64  cbnz    x21, loc_1000a2ee8                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000a2f68:
  1000a2f68  mov     x0, x19
  1000a2f6c  bl      _objc_release
  1000a2f70  ldur    x8, [x29, #-0x58]
  1000a2f74  sub     x8, x26, x8
  1000a2f78  cbnz    x8, loc_1000a2f9c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a2f7c  sub     sp, x29, #0x50
  1000a2f80  ldp     x29, x30, [sp, #0x50]
  1000a2f84  ldp     x20, x19, [sp, #0x40]
  1000a2f88  ldp     x22, x21, [sp, #0x30]
  1000a2f8c  ldp     x24, x23, [sp, #0x20]
  1000a2f90  ldp     x26, x25, [sp, #0x10]
  1000a2f94  ldp     x28, x27, [sp], #0x60
  1000a2f98  ret
loc_1000a2f9c:
  1000a2f9c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a2fa0:
  1000a2fa0  mov     x20, x0
  1000a2fa4  mov     x0, x19
  1000a2fa8  bl      _objc_release
  1000a2fac  mov     x0, x20
  1000a2fb0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a2fb4  b       loc_1000a2fa0
  1000a2fb8  b       loc_1000a2fa0

; ======================================================================
; -[ADBrick pause]
; address 0x1000a2fbc  size 520  kind objc
; ======================================================================
  1000a2fbc  stp     x28, x27, [sp, #-0x60]!
  1000a2fc0  stp     x26, x25, [sp, #0x10]
  1000a2fc4  stp     x24, x23, [sp, #0x20]
  1000a2fc8  stp     x22, x21, [sp, #0x30]
  1000a2fcc  stp     x20, x19, [sp, #0x40]
  1000a2fd0  stp     x29, x30, [sp, #0x50]
  1000a2fd4  add     x29, sp, #0x50
  1000a2fd8  sub     sp, sp, #0x190
  1000a2fdc  mov     x20, x0
  1000a2fe0  adrp    x24, #0x1003b0000
  1000a2fe4  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000a2fe8  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000a2fec  stur    x24, [x29, #-0x58]
  1000a2ff0  stp     xzr, xzr, [sp, #0x78]
  1000a2ff4  stp     xzr, xzr, [sp, #0x68]
  1000a2ff8  stp     xzr, xzr, [sp, #0x58]
  1000a2ffc  stp     xzr, xzr, [sp, #0x48]
  1000a3000  adrp    x8, #0x100420000
  1000a3004  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a3008  ldr     x0, [x20, x8]                            ; x0 = self->enemiesArray
  1000a300c  bl      _objc_retain
  1000a3010  mov     x21, x0
  1000a3014  adrp    x8, #0x100416000
  1000a3018  nop
  1000a301c  ldr     x19, [x8, #0xe00]
  1000a3020  add     x2, sp, #0x48
  1000a3024  sub     x3, x29, #0xd8
  1000a3028  mov     w4, #0x10
  1000a302c  mov     x1, x19
  1000a3030  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16]
  1000a3034  mov     x22, x0
  1000a3038  cbz     x22, loc_1000a30a8                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16] == 0)
  1000a303c  ldr     x8, [sp, #0x58]
  1000a3040  ldr     x25, [x8]
  1000a3044  adrp    x8, #0x100419000
  1000a3048  add     x8, x8, #0x110                           ; &@selector(pause)
  1000a304c  ldr     x23, [x8]
loc_1000a3050:
  1000a3050  mov     x26, #0
loc_1000a3054:
  1000a3054  ldr     x8, [sp, #0x58]
  1000a3058  ldr     x8, [x8]
  1000a305c  cmp     x8, x25
  1000a3060  b.eq    loc_1000a306c                            ; if (x8 == x25)
  1000a3064  mov     x0, x21
  1000a3068  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->enemiesArray)
loc_1000a306c:
  1000a306c  ldr     x8, [sp, #0x50]
  1000a3070  ldr     x0, [x8, x26, lsl #3]
  1000a3074  mov     x1, x23
  1000a3078  bl      _objc_msgSend                            ; [x0 pause]
  1000a307c  add     x26, x26, #1
  1000a3080  cmp     x26, x22
  1000a3084  b.lo    loc_1000a3054                            ; if ((x26 + 1) <u [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16])
  1000a3088  add     x2, sp, #0x48
  1000a308c  sub     x3, x29, #0xd8
  1000a3090  mov     w4, #0x10
  1000a3094  mov     x0, x21
  1000a3098  mov     x1, x19
  1000a309c  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16]
  1000a30a0  mov     x22, x0
  1000a30a4  cbnz    x22, loc_1000a3050                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16] != 0)
loc_1000a30a8:
  1000a30a8  mov     x0, x21
  1000a30ac  bl      _objc_release
  1000a30b0  stp     xzr, xzr, [sp, #0x38]
  1000a30b4  stp     xzr, xzr, [sp, #0x28]
  1000a30b8  stp     xzr, xzr, [sp, #0x18]
  1000a30bc  stp     xzr, xzr, [sp, #8]
  1000a30c0  adrp    x8, #0x100420000
  1000a30c4  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a30c8  ldr     x0, [x20, x8]                            ; x0 = self->soundsArray
  1000a30cc  bl      _objc_retain
  1000a30d0  mov     x20, x0
  1000a30d4  add     x2, sp, #8
  1000a30d8  add     x3, sp, #0x88
  1000a30dc  mov     w4, #0x10
  1000a30e0  mov     x1, x19
  1000a30e4  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000a30e8  mov     x21, x0
  1000a30ec  cbz     x21, loc_1000a315c                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] == 0)
  1000a30f0  ldr     x8, [sp, #0x18]
  1000a30f4  ldr     x23, [x8]
  1000a30f8  adrp    x8, #0x100419000
  1000a30fc  add     x8, x8, #0x110                           ; &@selector(pause)
  1000a3100  ldr     x22, [x8]
loc_1000a3104:
  1000a3104  mov     x25, #0
loc_1000a3108:
  1000a3108  ldr     x8, [sp, #0x18]
  1000a310c  ldr     x8, [x8]
  1000a3110  cmp     x8, x23
  1000a3114  b.eq    loc_1000a3120                            ; if (x8 == x23)
  1000a3118  mov     x0, x20
  1000a311c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a3120:
  1000a3120  ldr     x8, [sp, #0x10]
  1000a3124  ldr     x0, [x8, x25, lsl #3]
  1000a3128  mov     x1, x22
  1000a312c  bl      _objc_msgSend                            ; [x0 pause]
  1000a3130  add     x25, x25, #1
  1000a3134  cmp     x25, x21
  1000a3138  b.lo    loc_1000a3108                            ; if ((x25 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16])
  1000a313c  add     x2, sp, #8
  1000a3140  add     x3, sp, #0x88
  1000a3144  mov     w4, #0x10
  1000a3148  mov     x0, x20
  1000a314c  mov     x1, x19
  1000a3150  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000a3154  mov     x21, x0
  1000a3158  cbnz    x21, loc_1000a3104                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] != 0)
loc_1000a315c:
  1000a315c  mov     x0, x20
  1000a3160  bl      _objc_release
  1000a3164  ldur    x8, [x29, #-0x58]
  1000a3168  sub     x8, x24, x8
  1000a316c  cbnz    x8, loc_1000a3190                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a3170  sub     sp, x29, #0x50
  1000a3174  ldp     x29, x30, [sp, #0x50]
  1000a3178  ldp     x20, x19, [sp, #0x40]
  1000a317c  ldp     x22, x21, [sp, #0x30]
  1000a3180  ldp     x24, x23, [sp, #0x20]
  1000a3184  ldp     x26, x25, [sp, #0x10]
  1000a3188  ldp     x28, x27, [sp], #0x60
  1000a318c  ret
loc_1000a3190:
  1000a3190  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a3194:
  1000a3194  mov     x19, x0
  1000a3198  mov     x0, x21
  1000a319c  b       loc_1000a31a8
loc_1000a31a0:
  1000a31a0  mov     x19, x0
  1000a31a4  mov     x0, x20
loc_1000a31a8:
  1000a31a8  bl      _objc_release
  1000a31ac  mov     x0, x19
  1000a31b0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a31b4  b       loc_1000a3194
  1000a31b8  b       loc_1000a31a0
  1000a31bc  b       loc_1000a3194
  1000a31c0  b       loc_1000a31a0

; ======================================================================
; -[ADBrick resume]
; address 0x1000a31c4  size 520  kind objc
; ======================================================================
  1000a31c4  stp     x28, x27, [sp, #-0x60]!
  1000a31c8  stp     x26, x25, [sp, #0x10]
  1000a31cc  stp     x24, x23, [sp, #0x20]
  1000a31d0  stp     x22, x21, [sp, #0x30]
  1000a31d4  stp     x20, x19, [sp, #0x40]
  1000a31d8  stp     x29, x30, [sp, #0x50]
  1000a31dc  add     x29, sp, #0x50
  1000a31e0  sub     sp, sp, #0x190
  1000a31e4  mov     x20, x0
  1000a31e8  adrp    x24, #0x1003b0000
  1000a31ec  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000a31f0  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000a31f4  stur    x24, [x29, #-0x58]
  1000a31f8  stp     xzr, xzr, [sp, #0x78]
  1000a31fc  stp     xzr, xzr, [sp, #0x68]
  1000a3200  stp     xzr, xzr, [sp, #0x58]
  1000a3204  stp     xzr, xzr, [sp, #0x48]
  1000a3208  adrp    x8, #0x100420000
  1000a320c  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a3210  ldr     x0, [x20, x8]                            ; x0 = self->enemiesArray
  1000a3214  bl      _objc_retain
  1000a3218  mov     x21, x0
  1000a321c  adrp    x8, #0x100416000
  1000a3220  nop
  1000a3224  ldr     x19, [x8, #0xe00]
  1000a3228  add     x2, sp, #0x48
  1000a322c  sub     x3, x29, #0xd8
  1000a3230  mov     w4, #0x10
  1000a3234  mov     x1, x19
  1000a3238  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16]
  1000a323c  mov     x22, x0
  1000a3240  cbz     x22, loc_1000a32b0                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16] == 0)
  1000a3244  ldr     x8, [sp, #0x58]
  1000a3248  ldr     x25, [x8]
  1000a324c  adrp    x8, #0x100419000
  1000a3250  add     x8, x8, #0x128                           ; &@selector(resume)
  1000a3254  ldr     x23, [x8]
loc_1000a3258:
  1000a3258  mov     x26, #0
loc_1000a325c:
  1000a325c  ldr     x8, [sp, #0x58]
  1000a3260  ldr     x8, [x8]
  1000a3264  cmp     x8, x25
  1000a3268  b.eq    loc_1000a3274                            ; if (x8 == x25)
  1000a326c  mov     x0, x21
  1000a3270  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->enemiesArray)
loc_1000a3274:
  1000a3274  ldr     x8, [sp, #0x50]
  1000a3278  ldr     x0, [x8, x26, lsl #3]
  1000a327c  mov     x1, x23
  1000a3280  bl      _objc_msgSend                            ; [x0 resume]
  1000a3284  add     x26, x26, #1
  1000a3288  cmp     x26, x22
  1000a328c  b.lo    loc_1000a325c                            ; if ((x26 + 1) <u [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16])
  1000a3290  add     x2, sp, #0x48
  1000a3294  sub     x3, x29, #0xd8
  1000a3298  mov     w4, #0x10
  1000a329c  mov     x0, x21
  1000a32a0  mov     x1, x19
  1000a32a4  bl      _objc_msgSend                            ; [self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16]
  1000a32a8  mov     x22, x0
  1000a32ac  cbnz    x22, loc_1000a3258                       ; if ([self->enemiesArray countByEnumeratingWithState:&sp[0x48] objects:&x29[-0xd8] count:16] != 0)
loc_1000a32b0:
  1000a32b0  mov     x0, x21
  1000a32b4  bl      _objc_release
  1000a32b8  stp     xzr, xzr, [sp, #0x38]
  1000a32bc  stp     xzr, xzr, [sp, #0x28]
  1000a32c0  stp     xzr, xzr, [sp, #0x18]
  1000a32c4  stp     xzr, xzr, [sp, #8]
  1000a32c8  adrp    x8, #0x100420000
  1000a32cc  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a32d0  ldr     x0, [x20, x8]                            ; x0 = self->soundsArray
  1000a32d4  bl      _objc_retain
  1000a32d8  mov     x20, x0
  1000a32dc  add     x2, sp, #8
  1000a32e0  add     x3, sp, #0x88
  1000a32e4  mov     w4, #0x10
  1000a32e8  mov     x1, x19
  1000a32ec  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000a32f0  mov     x21, x0
  1000a32f4  cbz     x21, loc_1000a3364                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] == 0)
  1000a32f8  ldr     x8, [sp, #0x18]
  1000a32fc  ldr     x23, [x8]
  1000a3300  adrp    x8, #0x100419000
  1000a3304  add     x8, x8, #0x128                           ; &@selector(resume)
  1000a3308  ldr     x22, [x8]
loc_1000a330c:
  1000a330c  mov     x25, #0
loc_1000a3310:
  1000a3310  ldr     x8, [sp, #0x18]
  1000a3314  ldr     x8, [x8]
  1000a3318  cmp     x8, x23
  1000a331c  b.eq    loc_1000a3328                            ; if (x8 == x23)
  1000a3320  mov     x0, x20
  1000a3324  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->soundsArray)
loc_1000a3328:
  1000a3328  ldr     x8, [sp, #0x10]
  1000a332c  ldr     x0, [x8, x25, lsl #3]
  1000a3330  mov     x1, x22
  1000a3334  bl      _objc_msgSend                            ; [x0 resume]
  1000a3338  add     x25, x25, #1
  1000a333c  cmp     x25, x21
  1000a3340  b.lo    loc_1000a3310                            ; if ((x25 + 1) <u [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16])
  1000a3344  add     x2, sp, #8
  1000a3348  add     x3, sp, #0x88
  1000a334c  mov     w4, #0x10
  1000a3350  mov     x0, x20
  1000a3354  mov     x1, x19
  1000a3358  bl      _objc_msgSend                            ; [self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16]
  1000a335c  mov     x21, x0
  1000a3360  cbnz    x21, loc_1000a330c                       ; if ([self->soundsArray countByEnumeratingWithState:&sp[0x8] objects:&sp[0x88] count:16] != 0)
loc_1000a3364:
  1000a3364  mov     x0, x20
  1000a3368  bl      _objc_release
  1000a336c  ldur    x8, [x29, #-0x58]
  1000a3370  sub     x8, x24, x8
  1000a3374  cbnz    x8, loc_1000a3398                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000a3378  sub     sp, x29, #0x50
  1000a337c  ldp     x29, x30, [sp, #0x50]
  1000a3380  ldp     x20, x19, [sp, #0x40]
  1000a3384  ldp     x22, x21, [sp, #0x30]
  1000a3388  ldp     x24, x23, [sp, #0x20]
  1000a338c  ldp     x26, x25, [sp, #0x10]
  1000a3390  ldp     x28, x27, [sp], #0x60
  1000a3394  ret
loc_1000a3398:
  1000a3398  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000a339c:
  1000a339c  mov     x19, x0
  1000a33a0  mov     x0, x21
  1000a33a4  b       loc_1000a33b0
loc_1000a33a8:
  1000a33a8  mov     x19, x0
  1000a33ac  mov     x0, x20
loc_1000a33b0:
  1000a33b0  bl      _objc_release
  1000a33b4  mov     x0, x19
  1000a33b8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000a33bc  b       loc_1000a339c
  1000a33c0  b       loc_1000a33a8
  1000a33c4  b       loc_1000a339c
  1000a33c8  b       loc_1000a33a8

; ======================================================================
; -[ADBrick clean]
; address 0x1000a33cc  size 104  kind objc
; ======================================================================
  1000a33cc  stp     x20, x19, [sp, #-0x20]!
  1000a33d0  stp     x29, x30, [sp, #0x10]
  1000a33d4  add     x29, sp, #0x10
  1000a33d8  mov     x19, x0
  1000a33dc  adrp    x8, #0x100420000
  1000a33e0  ldrsw   x20, [x8, #0x78]                         ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a33e4  ldr     x0, [x19, x20]                           ; x0 = self->enemiesArray
  1000a33e8  adrp    x8, #0x100419000
  1000a33ec  nop
  1000a33f0  ldr     x2, [x8, #0x300]
  1000a33f4  adrp    x8, #0x100416000
  1000a33f8  nop
  1000a33fc  ldr     x1, [x8, #0xe48]
  1000a3400  bl      _objc_msgSend                            ; [self->enemiesArray makeObjectsPerformSelector:@selector(destroyEnemy)]
  1000a3404  ldr     x0, [x19, x20]                           ; x0 = self->enemiesArray
  1000a3408  adrp    x8, #0x100417000
  1000a340c  nop
  1000a3410  ldr     x1, [x8, #0x1b8]
  1000a3414  bl      _objc_msgSend                            ; [self->enemiesArray removeAllObjects]
  1000a3418  adrp    x8, #0x10041a000
  1000a341c  nop
  1000a3420  ldr     x1, [x8, #0x340]
  1000a3424  mov     x0, x19
  1000a3428  ldp     x29, x30, [sp, #0x10]
  1000a342c  ldp     x20, x19, [sp], #0x20
  1000a3430  b       _objc_msgSend                            ; [self deactivateAllPlaylists]

; ======================================================================
; -[ADBrick tag]
; address 0x1000a3434  size 16  kind objc
; ======================================================================
  1000a3434  adrp    x8, #0x100420000
  1000a3438  ldrsw   x8, [x8, #0x98]                          ; ivar offset ADBrick._tag (+0x4c)
  1000a343c  ldr     w0, [x0, x8]                             ; w0 = self->_tag
  1000a3440  ret

; ======================================================================
; -[ADBrick setTag:]
; address 0x1000a3444  size 16  kind objc
; ======================================================================
  1000a3444  adrp    x8, #0x100420000
  1000a3448  ldrsw   x8, [x8, #0x98]                          ; ivar offset ADBrick._tag (+0x4c)
  1000a344c  str     w2, [x0, x8]                             ; self->_tag = arg1
  1000a3450  ret

; ======================================================================
; -[ADBrick name]
; address 0x1000a3454  size 16  kind objc
; ======================================================================
  1000a3454  adrp    x8, #0x100420000
  1000a3458  ldrsw   x8, [x8, #0x9c]                          ; ivar offset ADBrick._name (+0x50)
  1000a345c  ldr     x0, [x0, x8]                             ; x0 = self->_name
  1000a3460  ret

; ======================================================================
; -[ADBrick setName:]
; address 0x1000a3464  size 56  kind objc
; ======================================================================
  1000a3464  stp     x20, x19, [sp, #-0x20]!
  1000a3468  stp     x29, x30, [sp, #0x10]
  1000a346c  add     x29, sp, #0x10
  1000a3470  mov     x19, x0
  1000a3474  adrp    x8, #0x100420000
  1000a3478  ldrsw   x20, [x8, #0x9c]                         ; ivar offset ADBrick._name (+0x50)
  1000a347c  mov     x0, x2
  1000a3480  bl      _objc_retain
  1000a3484  ldr     x8, [x19, x20]                           ; x8 = self->_name
  1000a3488  str     x0, [x19, x20]                           ; self->_name = arg1
  1000a348c  mov     x0, x8
  1000a3490  ldp     x29, x30, [sp, #0x10]
  1000a3494  ldp     x20, x19, [sp], #0x20
  1000a3498  b       _objc_release

; ======================================================================
; -[ADBrick ambiantName]
; address 0x1000a349c  size 16  kind objc
; ======================================================================
  1000a349c  adrp    x8, #0x100420000
  1000a34a0  ldrsw   x8, [x8, #0xa0]                          ; ivar offset ADBrick._ambiantName (+0x58)
  1000a34a4  ldr     x0, [x0, x8]                             ; x0 = self->_ambiantName
  1000a34a8  ret

; ======================================================================
; -[ADBrick setAmbiantName:]
; address 0x1000a34ac  size 56  kind objc
; ======================================================================
  1000a34ac  stp     x20, x19, [sp, #-0x20]!
  1000a34b0  stp     x29, x30, [sp, #0x10]
  1000a34b4  add     x29, sp, #0x10
  1000a34b8  mov     x19, x0
  1000a34bc  adrp    x8, #0x100420000
  1000a34c0  ldrsw   x20, [x8, #0xa0]                         ; ivar offset ADBrick._ambiantName (+0x58)
  1000a34c4  mov     x0, x2
  1000a34c8  bl      _objc_retain
  1000a34cc  ldr     x8, [x19, x20]                           ; x8 = self->_ambiantName
  1000a34d0  str     x0, [x19, x20]                           ; self->_ambiantName = arg1
  1000a34d4  mov     x0, x8
  1000a34d8  ldp     x29, x30, [sp, #0x10]
  1000a34dc  ldp     x20, x19, [sp], #0x20
  1000a34e0  b       _objc_release

; ======================================================================
; -[ADBrick playlists]
; address 0x1000a34e4  size 16  kind objc
; ======================================================================
  1000a34e4  adrp    x8, #0x100420000
  1000a34e8  ldrsw   x8, [x8, #0xa4]                          ; ivar offset ADBrick._playlists (+0x60)
  1000a34ec  ldr     x0, [x0, x8]                             ; x0 = self->_playlists
  1000a34f0  ret

; ======================================================================
; -[ADBrick setPlaylists:]
; address 0x1000a34f4  size 56  kind objc
; ======================================================================
  1000a34f4  stp     x20, x19, [sp, #-0x20]!
  1000a34f8  stp     x29, x30, [sp, #0x10]
  1000a34fc  add     x29, sp, #0x10
  1000a3500  mov     x19, x0
  1000a3504  adrp    x8, #0x100420000
  1000a3508  ldrsw   x20, [x8, #0xa4]                         ; ivar offset ADBrick._playlists (+0x60)
  1000a350c  mov     x0, x2
  1000a3510  bl      _objc_retain
  1000a3514  ldr     x8, [x19, x20]                           ; x8 = self->_playlists
  1000a3518  str     x0, [x19, x20]                           ; self->_playlists = arg1
  1000a351c  mov     x0, x8
  1000a3520  ldp     x29, x30, [sp, #0x10]
  1000a3524  ldp     x20, x19, [sp], #0x20
  1000a3528  b       _objc_release

; ======================================================================
; -[ADBrick .cxx_destruct]
; address 0x1000a352c  size 224  kind objc
; ======================================================================
  1000a352c  stp     x20, x19, [sp, #-0x20]!
  1000a3530  stp     x29, x30, [sp, #0x10]
  1000a3534  add     x29, sp, #0x10
  1000a3538  mov     x19, x0
  1000a353c  adrp    x8, #0x100420000
  1000a3540  ldrsw   x8, [x8, #0xa4]                          ; ivar offset ADBrick._playlists (+0x60)
  1000a3544  add     x0, x19, x8
  1000a3548  mov     x1, #0
  1000a354c  bl      _objc_storeStrong
  1000a3550  adrp    x8, #0x100420000
  1000a3554  ldrsw   x8, [x8, #0xa0]                          ; ivar offset ADBrick._ambiantName (+0x58)
  1000a3558  add     x0, x19, x8
  1000a355c  mov     x1, #0
  1000a3560  bl      _objc_storeStrong
  1000a3564  adrp    x8, #0x100420000
  1000a3568  ldrsw   x8, [x8, #0x9c]                          ; ivar offset ADBrick._name (+0x50)
  1000a356c  add     x0, x19, x8
  1000a3570  mov     x1, #0
  1000a3574  bl      _objc_storeStrong
  1000a3578  adrp    x8, #0x100420000
  1000a357c  ldrsw   x8, [x8, #0x90]                          ; ivar offset ADBrick.soundsPlaylist (+0x40)
  1000a3580  add     x0, x19, x8
  1000a3584  mov     x1, #0
  1000a3588  bl      _objc_storeStrong
  1000a358c  adrp    x8, #0x100420000
  1000a3590  ldrsw   x8, [x8, #0x88]                          ; ivar offset ADBrick.tips (+0x38)
  1000a3594  add     x0, x19, x8
  1000a3598  mov     x1, #0
  1000a359c  bl      _objc_storeStrong
  1000a35a0  adrp    x8, #0x100420000
  1000a35a4  ldrsw   x8, [x8, #0x80]                          ; ivar offset ADBrick.playlistsRequiringActivation (+0x28)
  1000a35a8  add     x0, x19, x8
  1000a35ac  mov     x1, #0
  1000a35b0  bl      _objc_storeStrong
  1000a35b4  adrp    x8, #0x100420000
  1000a35b8  ldrsw   x8, [x8, #0x7c]                          ; ivar offset ADBrick.soundsArray (+0x20)
  1000a35bc  add     x0, x19, x8
  1000a35c0  mov     x1, #0
  1000a35c4  bl      _objc_storeStrong
  1000a35c8  adrp    x8, #0x100420000
  1000a35cc  ldrsw   x8, [x8, #0x78]                          ; ivar offset ADBrick.enemiesArray (+0x18)
  1000a35d0  add     x0, x19, x8
  1000a35d4  mov     x1, #0
  1000a35d8  bl      _objc_storeStrong
  1000a35dc  adrp    x8, #0x100420000
  1000a35e0  ldrsw   x8, [x8, #0x8c]                          ; ivar offset ADBrick.powerUpDictionary (+0x10)
  1000a35e4  add     x0, x19, x8
  1000a35e8  mov     x1, #0
  1000a35ec  bl      _objc_storeStrong
  1000a35f0  mov     x1, #0
  1000a35f4  adrp    x8, #0x100420000
  1000a35f8  ldrsw   x8, [x8, #0x74]                          ; ivar offset ADBrick.brickDictionnary (+0x8)
  1000a35fc  add     x0, x19, x8
  1000a3600  ldp     x29, x30, [sp, #0x10]
  1000a3604  ldp     x20, x19, [sp], #0x20
  1000a3608  b       _objc_storeStrong
