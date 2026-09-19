// unit ADPersistentStats — 45 functions
//   0x100083a28     196  -[ADPersistentStats init]
//   0x100083aec    2844  +[ADPersistentStats persistentStats]
//   0x100084608    1236  -[ADPersistentStats buildFromDictionary:ClearItems:]
//   0x100084adc     196  -[ADPersistentStats getEnemyStatData]
//   0x100084ba0     196  -[ADPersistentStats getTotalStatData]
//   0x100084c64     196  -[ADPersistentStats getWeaponStatData]
//   0x100084d28     384  -[ADPersistentStats getEnemyKillsByName:]
//   0x100084ea8     468  -[ADPersistentStats getKillRequirementForEnemyWithName:]
//   0x10008507c     104  -[ADPersistentStats getNumberOfZombiesUnlocked]
//   0x1000850e4    3312  -[ADPersistentStats saveEnemyData:]
//   0x100085dd4     508  -[ADPersistentStats getAllUnlockedEnemies]
//   0x100085fd0     528  -[ADPersistentStats getNextUnlockEnemy]
//   0x1000861e0     724  -[ADPersistentStats saveEndlessModeKills:]
//   0x1000864b4    1344  -[ADPersistentStats savePlayTimeData:AndMode:]
//   0x1000869f4     568  -[ADPersistentStats saveCoinsData:]
//   0x100086c2c     568  -[ADPersistentStats saveDiamondsData:]
//   0x100086e64     852  -[ADPersistentStats saveShotsData:]
//   0x1000871b8    1852  -[ADPersistentStats saveWeaponsData:]
//   0x1000878f4     592  -[ADPersistentStats updateCounterStatsWithKey:]
//   0x100087b44     568  -[ADPersistentStats updateMissionsCompleted:]
//   0x100087d7c     568  -[ADPersistentStats updateMissionsSkipped:]
//   0x100087fb4     560  -[ADPersistentStats updateDeaths]
//   0x1000881e4     560  -[ADPersistentStats updateNumberOfWeaponsOwned]
//   0x100088414     172  -[ADPersistentStats gameTimeToString:]
//   0x1000884c0     640  -[ADPersistentStats updateTotalPlayTime:WithKey:]
//   0x100088740     540  -[ADPersistentStats updateLongestEndlessPlayTime:]
//   0x10008895c     504  -[ADPersistentStats computeTotalEnemyKillCount]
//   0x100088b54     556  -[ADPersistentStats computeChallengesWonAndSave]
//   0x100088d80     120  -[ADPersistentStats highScore]
//   0x100088df8     228  -[ADPersistentStats saveScore:]
//   0x100088edc     684  -[ADPersistentStats getEnemyListWithKillsGreaterThan:]
//   0x100089188     768  -[ADPersistentStats getUnlockedWeapons]
//   0x100089488     636  -[ADPersistentStats getTotalTimePlayed]
//   0x100089704     800  -[ADPersistentStats nearestDiscreteTime:]
//   0x100089a24      16  -[ADPersistentStats enemyStatsDataRef]
//   0x100089a34      16  -[ADPersistentStats totalsStatsDataRef]
//   0x100089a44      16  -[ADPersistentStats weaponsStatsDataRef]
//   0x100089a54      16  -[ADPersistentStats enemyBestiaryDataRef]
//   0x100089a64      16  -[ADPersistentStats unlockedEnemies]
//   0x100089a74      56  -[ADPersistentStats setUnlockedEnemies:]
//   0x100089aac      16  -[ADPersistentStats bestiary]
//   0x100089abc      12  -[ADPersistentStats setBestiary:]
//   0x100089ac8      16  -[ADPersistentStats enemies]
//   0x100089ad8      12  -[ADPersistentStats setEnemies:]
//   0x100089ae4     164  -[ADPersistentStats .cxx_destruct]

; ======================================================================
; -[ADPersistentStats init]
; address 0x100083a28  size 196  kind objc
; ======================================================================
  100083a28  stp     x22, x21, [sp, #-0x30]!
  100083a2c  stp     x20, x19, [sp, #0x10]
  100083a30  stp     x29, x30, [sp, #0x20]
  100083a34  add     x29, sp, #0x20
  100083a38  sub     sp, sp, #0x10
  100083a3c  str     x0, [sp]
  100083a40  adrp    x8, #0x10041e000
  100083a44  ldr     x8, [x8, #0xe48]
  100083a48  str     x8, [sp, #8]
  100083a4c  adrp    x8, #0x100416000
  100083a50  nop
  100083a54  ldr     x1, [x8, #0xab8]
  100083a58  mov     x0, sp
  100083a5c  bl      _objc_msgSendSuper2                      ; [super init]
  100083a60  mov     x19, x0
  100083a64  cbz     x19, loc_100083ad4                       ; if (self == 0)
  100083a68  adrp    x8, #0x10041f000
  100083a6c  ldrsw   x21, [x8, #0xe9c]                        ; ivar offset ADPersistentStats._enemyStatsDataRef (+0x8)
  100083a70  adrp    x20, #0x1003bf000
  100083a74  add     x20, x20, #0x930                         ; @"ENEMY_DATA"
  100083a78  mov     x0, x20
  100083a7c  bl      _objc_retain
  100083a80  ldr     x0, [x19, x21]                           ; x0 = self->_enemyStatsDataRef
  100083a84  str     x20, [x19, x21]                          ; self->_enemyStatsDataRef = @"ENEMY_DATA"
  100083a88  bl      _objc_release
  100083a8c  adrp    x8, #0x10041f000
  100083a90  ldrsw   x21, [x8, #0xea0]                        ; ivar offset ADPersistentStats._totalsStatsDataRef (+0x10)
  100083a94  adrp    x20, #0x1003bf000
  100083a98  add     x20, x20, #0x950                         ; @"TOTALS_DATA"
  100083a9c  mov     x0, x20
  100083aa0  bl      _objc_retain
  100083aa4  ldr     x0, [x19, x21]                           ; x0 = self->_totalsStatsDataRef
  100083aa8  str     x20, [x19, x21]                          ; self->_totalsStatsDataRef = @"TOTALS_DATA"
  100083aac  bl      _objc_release
  100083ab0  adrp    x8, #0x10041f000
  100083ab4  ldrsw   x21, [x8, #0xea4]                        ; ivar offset ADPersistentStats._weaponsStatsDataRef (+0x18)
  100083ab8  adrp    x20, #0x1003bf000
  100083abc  add     x20, x20, #0x970                         ; @"WEAPON_DATA"
  100083ac0  mov     x0, x20
  100083ac4  bl      _objc_retain
  100083ac8  ldr     x0, [x19, x21]                           ; x0 = self->_weaponsStatsDataRef
  100083acc  str     x20, [x19, x21]                          ; self->_weaponsStatsDataRef = @"WEAPON_DATA"
  100083ad0  bl      _objc_release
loc_100083ad4:
  100083ad4  mov     x0, x19
  100083ad8  sub     sp, x29, #0x20
  100083adc  ldp     x29, x30, [sp, #0x20]
  100083ae0  ldp     x20, x19, [sp, #0x10]
  100083ae4  ldp     x22, x21, [sp], #0x30
  100083ae8  ret

; ======================================================================
; +[ADPersistentStats persistentStats]
; address 0x100083aec  size 2844  kind objc
; ======================================================================
  100083aec  stp     x28, x27, [sp, #-0x60]!
  100083af0  stp     x26, x25, [sp, #0x10]
  100083af4  stp     x24, x23, [sp, #0x20]
  100083af8  stp     x22, x21, [sp, #0x30]
  100083afc  stp     x20, x19, [sp, #0x40]
  100083b00  stp     x29, x30, [sp, #0x50]
  100083b04  add     x29, sp, #0x50
  100083b08  sub     sp, sp, #0x140
  100083b0c  adrp    x25, #0x1003b0000
  100083b10  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100083b14  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100083b18  stur    x25, [x29, #-0x58]
  100083b1c  bl      _objc_retain
  100083b20  mov     x27, x0
  100083b24  bl      _objc_sync_enter                         ; objc_sync_enter(ADPersistentStats)
  100083b28  adrp    x26, #0x10042d000
  100083b2c  ldr     x8, [x26, #0xa18]                        ; load g_10042da18
  100083b30  cbnz    x8, loc_1000843cc                        ; if (g_10042da18 != 0)
  100083b34  adrp    x8, #0x10041d000
  100083b38  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  100083b3c  adrp    x8, #0x100416000
  100083b40  nop
  100083b44  ldr     x1, [x8, #0xac8]
  100083b48  str     x1, [sp, #0x40]
  100083b4c  bl      _objc_msgSend                            ; [ADPersistentStats alloc]
  100083b50  adrp    x8, #0x100416000
  100083b54  nop
  100083b58  ldr     x19, [x8, #0xab8]
  100083b5c  mov     x1, x19
  100083b60  bl      _objc_msgSend                            ; [[ADPersistentStats alloc] init]
  100083b64  ldr     x8, [x26, #0xa18]                        ; load g_10042da18
  100083b68  str     x0, [x26, #0xa18]                        ; store g_10042da18 = [[ADPersistentStats alloc] init]
  100083b6c  mov     x0, x8
  100083b70  bl      _objc_release
  100083b74  adrp    x23, #0x10041d000
  100083b78  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100083b7c  adrp    x8, #0x100416000
  100083b80  nop
  100083b84  ldr     x28, [x8, #0xd98]
  100083b88  mov     x1, x28
  100083b8c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100083b90  mov     x29, x29
  100083b94  bl      _objc_retainAutoreleasedReturnValue
  100083b98  mov     x21, x0
  100083b9c  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  100083ba0  adrp    x8, #0x100419000
  100083ba4  nop
  100083ba8  ldr     x24, [x8, #0xe38]
  100083bac  mov     x1, x24
  100083bb0  bl      _objc_msgSend                            ; [g_10042da18 enemyStatsDataRef]
  100083bb4  mov     x29, x29
  100083bb8  bl      _objc_retainAutoreleasedReturnValue
  100083bbc  mov     x22, x0
  100083bc0  adrp    x8, #0x100419000
  100083bc4  nop
  100083bc8  ldr     x1, [x8, #0xe40]
  100083bcc  str     x1, [sp, #0x48]
  100083bd0  mov     x0, x21
  100083bd4  mov     x2, x22
  100083bd8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] dictionaryForKey:[g_10042da18 enemyStatsDataRef]]
  100083bdc  mov     x29, x29
  100083be0  bl      _objc_retainAutoreleasedReturnValue
  100083be4  mov     x20, x0
  100083be8  bl      _objc_release
  100083bec  mov     x0, x22
  100083bf0  bl      _objc_release
  100083bf4  mov     x0, x21
  100083bf8  bl      _objc_release
  100083bfc  cbnz    x20, loc_100083f70                       ; if ([[NSUserDefaults standardUserDefaults] dictionaryForKey:[g_10042da18 enemyStatsDataRef]] != 0)
  100083c00  adrp    x8, #0x10041d000
  100083c04  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100083c08  ldr     x1, [sp, #0x40]
  100083c0c  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100083c10  mov     x20, x0
  100083c14  adrp    x8, #0x10041d000
  100083c18  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100083c1c  adrp    x8, #0x100416000
  100083c20  nop
  100083c24  ldr     x1, [x8, #0xb58]
  100083c28  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100083c2c  str     x24, [sp, #0x30]
  100083c30  mov     x29, x29
  100083c34  bl      _objc_retainAutoreleasedReturnValue
  100083c38  mov     x21, x0
  100083c3c  adrp    x8, #0x100416000
  100083c40  nop
  100083c44  ldr     x1, [x8, #0xd60]
  100083c48  adrp    x2, #0x1003ba000
  100083c4c  add     x2, x2, #0x50                            ; @"enemies"
  100083c50  adrp    x3, #0x1003b9000
  100083c54  add     x3, x3, #0xa70                           ; @"plist"
  100083c58  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]
  100083c5c  mov     x29, x29
  100083c60  bl      _objc_retainAutoreleasedReturnValue
  100083c64  mov     x22, x0
  100083c68  adrp    x8, #0x100416000
  100083c6c  nop
  100083c70  ldr     x1, [x8, #0xd68]
  100083c74  mov     x0, x20
  100083c78  mov     x2, x22
  100083c7c  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  100083c80  mov     x24, x0
  100083c84  str     x28, [sp, #0x28]
  100083c88  mov     x0, x22
  100083c8c  bl      _objc_release
  100083c90  mov     x0, x21
  100083c94  bl      _objc_release
  100083c98  adrp    x8, #0x10041d000
  100083c9c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100083ca0  ldr     x1, [sp, #0x40]
  100083ca4  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100083ca8  mov     x1, x19
  100083cac  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100083cb0  str     x0, [sp, #0x68]
  100083cb4  str     x27, [sp, #0x38]
  100083cb8  stp     xzr, xzr, [sp, #0xa8]
  100083cbc  stp     xzr, xzr, [sp, #0x98]
  100083cc0  stp     xzr, xzr, [sp, #0x88]
  100083cc4  stp     xzr, xzr, [sp, #0x78]
  100083cc8  mov     x0, x24
  100083ccc  bl      _objc_retain
  100083cd0  mov     x24, x0
  100083cd4  adrp    x8, #0x100416000
  100083cd8  nop
  100083cdc  ldr     x1, [x8, #0xe00]
  100083ce0  str     x1, [sp, #0x50]
  100083ce4  add     x2, sp, #0x78
  100083ce8  add     x3, sp, #0xb8
  100083cec  mov     w4, #0x10
  100083cf0  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  100083cf4  mov     x27, x0
  100083cf8  cbz     x27, loc_100083eb0                       ; if ([[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] == 0)
  100083cfc  ldr     x8, [sp, #0x88]
  100083d00  adrp    x9, #0x100417000
  100083d04  nop
  100083d08  ldr     x8, [x8]
  100083d0c  str     x8, [sp, #0x70]
  100083d10  ldr     x28, [x9, #0x40]
  100083d14  adrp    x8, #0x100417000
  100083d18  nop
  100083d1c  adrp    x9, #0x100417000
  100083d20  add     x9, x9, #0xf90                           ; &@selector(dictionaryWithObjectsAndKeys:)
  100083d24  ldr     x21, [x8, #0xe8]
  100083d28  ldr     x8, [x9]
  100083d2c  str     x8, [sp, #0x60]
  100083d30  adrp    x8, #0x100418000
  100083d34  nop
  100083d38  ldr     x8, [x8, #0x318]
  100083d3c  str     x8, [sp, #0x58]
loc_100083d40:
  100083d40  mov     x25, #0
loc_100083d44:
  100083d44  ldr     x8, [sp, #0x88]
  100083d48  ldr     x8, [x8]
  100083d4c  ldr     x9, [sp, #0x70]
  100083d50  cmp     x8, x9
  100083d54  b.eq    loc_100083d60                            ; if (x8 == x9)
  100083d58  mov     x0, x24
  100083d5c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]])
loc_100083d60:
  100083d60  ldr     x8, [sp, #0x80]
  100083d64  ldr     x2, [x8, x25, lsl #3]
  100083d68  mov     x0, x24
  100083d6c  mov     x1, x28
  100083d70  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] objectForKey:x2]
  100083d74  mov     x29, x29
  100083d78  bl      _objc_retainAutoreleasedReturnValue
  100083d7c  mov     x19, x0
  100083d80  mov     x1, x28
  100083d84  adrp    x2, #0x1003ba000
  100083d88  add     x2, x2, #0x2b0                           ; @"displayName"
  100083d8c  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] objectForKey:x2] objectForKey:@"displayName"]
  100083d90  mov     x29, x29
  100083d94  bl      _objc_retainAutoreleasedReturnValue
  100083d98  mov     x20, x0
  100083d9c  bl      _objc_release
  100083da0  cbz     x20, loc_100083e7c                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] objectForKey:x2] objectForKey:@"displayName"] == 0)
  100083da4  adrp    x8, #0x10041d000
  100083da8  ldr     x22, [x8, #0xef8]                        ; class NSDictionary
  100083dac  nop
  100083db0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100083db4  mov     x2, #0
  100083db8  mov     x1, x21
  100083dbc  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:0]
  100083dc0  mov     x23, x24
  100083dc4  mov     x29, x29
  100083dc8  bl      _objc_retainAutoreleasedReturnValue
  100083dcc  mov     x26, x0
  100083dd0  adrp    x8, #0x10041d000
  100083dd4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100083dd8  mov     x2, #0
  100083ddc  mov     x1, x21
  100083de0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:0]
  100083de4  mov     x29, x29
  100083de8  bl      _objc_retainAutoreleasedReturnValue
  100083dec  mov     x24, x0
  100083df0  adrp    x8, #0x1003bf000
  100083df4  add     x8, x8, #0x470                           ; @"Casualty"
  100083df8  stp     x8, xzr, [sp, #0x10]
  100083dfc  adrp    x8, #0x1003ba000
  100083e00  add     x8, x8, #0x1d0                           ; @"Killed"
  100083e04  stp     x8, x24, [sp]
  100083e08  mov     x0, x22
  100083e0c  ldr     x1, [sp, #0x60]
  100083e10  mov     x2, x26
  100083e14  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:0], @"Killed", [NSNumber numberWithInteger:0], @"Casualty", nil]
  100083e18  mov     x29, x29
  100083e1c  bl      _objc_retainAutoreleasedReturnValue
  100083e20  mov     x22, x0
  100083e24  mov     x0, x19
  100083e28  mov     x1, x28
  100083e2c  adrp    x2, #0x1003ba000
  100083e30  add     x2, x2, #0x2b0                           ; @"displayName"
  100083e34  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] objectForKey:x2] objectForKey:@"displayName"]
  100083e38  mov     x29, x29
  100083e3c  bl      _objc_retainAutoreleasedReturnValue
  100083e40  mov     x20, x0
  100083e44  ldr     x0, [sp, #0x68]
  100083e48  ldr     x1, [sp, #0x58]
  100083e4c  mov     x2, x22
  100083e50  mov     x3, x20
  100083e54  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:0], @"Killed", [NSNumber numberWithInteger:0], @"Casualty", nil] forKey:[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] objectForKey:x2] objectForKey:@"displayName"]]
  100083e58  mov     x0, x20
  100083e5c  bl      _objc_release
  100083e60  mov     x0, x22
  100083e64  bl      _objc_release
  100083e68  mov     x0, x24
  100083e6c  bl      _objc_release
  100083e70  mov     x0, x26
  100083e74  bl      _objc_release
  100083e78  mov     x24, x23
loc_100083e7c:
  100083e7c  mov     x0, x19
  100083e80  bl      _objc_release
  100083e84  add     x25, x25, #1
  100083e88  cmp     x25, x27
  100083e8c  b.lo    loc_100083d44                            ; if ((x25 + 1) <u [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] c…)
  100083e90  add     x2, sp, #0x78
  100083e94  add     x3, sp, #0xb8
  100083e98  mov     w4, #0x10
  100083e9c  mov     x0, x24
  100083ea0  ldr     x1, [sp, #0x50]
  100083ea4  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  100083ea8  mov     x27, x0
  100083eac  cbnz    x27, loc_100083d40                       ; if ([[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] != 0)
loc_100083eb0:
  100083eb0  mov     x0, x24
  100083eb4  bl      _objc_release
  100083eb8  adrp    x23, #0x10041d000
  100083ebc  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100083ec0  ldr     x28, [sp, #0x28]
  100083ec4  mov     x1, x28
  100083ec8  ldr     x27, [sp, #0x38]
  100083ecc  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100083ed0  adrp    x25, #0x1003b0000
  100083ed4  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100083ed8  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100083edc  adrp    x26, #0x10042d000
  100083ee0  mov     x29, x29
  100083ee4  bl      _objc_retainAutoreleasedReturnValue
  100083ee8  mov     x19, x0
  100083eec  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  100083ef0  ldr     x1, [sp, #0x30]
  100083ef4  bl      _objc_msgSend                            ; [g_10042da18 enemyStatsDataRef]
  100083ef8  mov     x29, x29
  100083efc  bl      _objc_retainAutoreleasedReturnValue
  100083f00  mov     x21, x0
  100083f04  adrp    x8, #0x100416000
  100083f08  nop
  100083f0c  ldr     x1, [x8, #0xdc8]
  100083f10  mov     x0, x19
  100083f14  ldr     x2, [sp, #0x68]
  100083f18  mov     x3, x21
  100083f1c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] init] forKey:[g_10042da18 enemyStatsDataRef]]
  100083f20  mov     x0, x21
  100083f24  bl      _objc_release
  100083f28  mov     x0, x19
  100083f2c  bl      _objc_release
  100083f30  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100083f34  mov     x1, x28
  100083f38  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100083f3c  mov     x29, x29
  100083f40  bl      _objc_retainAutoreleasedReturnValue
  100083f44  mov     x19, x0
  100083f48  adrp    x8, #0x100416000
  100083f4c  nop
  100083f50  ldr     x1, [x8, #0xdd8]
  100083f54  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100083f58  mov     x0, x19
  100083f5c  bl      _objc_release
  100083f60  ldr     x0, [sp, #0x68]
  100083f64  bl      _objc_release
  100083f68  mov     x0, x24
  100083f6c  bl      _objc_release
loc_100083f70:
  100083f70  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100083f74  mov     x1, x28
  100083f78  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100083f7c  mov     x29, x29
  100083f80  bl      _objc_retainAutoreleasedReturnValue
  100083f84  mov     x19, x0
  100083f88  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  100083f8c  adrp    x8, #0x100419000
  100083f90  nop
  100083f94  ldr     x24, [x8, #0xe48]
  100083f98  mov     x1, x24
  100083f9c  bl      _objc_msgSend                            ; [g_10042da18 totalsStatsDataRef]
  100083fa0  mov     x29, x29
  100083fa4  bl      _objc_retainAutoreleasedReturnValue
  100083fa8  mov     x21, x0
  100083fac  mov     x0, x19
  100083fb0  ldr     x1, [sp, #0x48]
  100083fb4  mov     x2, x21
  100083fb8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] dictionaryForKey:[g_10042da18 totalsStatsDataRef]]
  100083fbc  mov     x29, x29
  100083fc0  bl      _objc_retainAutoreleasedReturnValue
  100083fc4  mov     x20, x0
  100083fc8  bl      _objc_release
  100083fcc  mov     x0, x21
  100083fd0  bl      _objc_release
  100083fd4  mov     x0, x19
  100083fd8  bl      _objc_release
  100083fdc  cbnz    x20, loc_100084208                       ; if ([[NSUserDefaults standardUserDefaults] dictionaryForKey:[g_10042da18 totalsStatsDataRef]] != 0)
  100083fe0  adrp    x8, #0x10041d000
  100083fe4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100083fe8  adrp    x8, #0x100416000
  100083fec  nop
  100083ff0  ldr     x1, [x8, #0xec8]
  100083ff4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100083ff8  mov     x29, x29
  100083ffc  bl      _objc_retainAutoreleasedReturnValue
  100084000  mov     x21, x0
  100084004  adrp    x8, #0x100418000
  100084008  nop
  10008400c  ldr     x1, [x8, #0xfa0]
  100084010  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] getNumberOfWeaponsUnlocked]
  100084014  mov     x19, x0
  100084018  mov     x0, x21
  10008401c  bl      _objc_release
  100084020  adrp    x8, #0x10041d000
  100084024  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100084028  ldr     x1, [sp, #0x40]
  10008402c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100084030  mov     x20, x0
  100084034  adrp    x8, #0x10041d000
  100084038  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  10008403c  adrp    x8, #0x100416000
  100084040  nop
  100084044  ldr     x1, [x8, #0xb58]
  100084048  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  10008404c  mov     x29, x29
  100084050  bl      _objc_retainAutoreleasedReturnValue
  100084054  mov     x21, x0
  100084058  adrp    x8, #0x100416000
  10008405c  nop
  100084060  ldr     x1, [x8, #0xd60]
  100084064  adrp    x2, #0x1003bf000
  100084068  add     x2, x2, #0x990                           ; @"totalsStats"
  10008406c  adrp    x3, #0x1003b9000
  100084070  add     x3, x3, #0xa70                           ; @"plist"
  100084074  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"totalsStats" withExtension:@"plist"]
  100084078  mov     x29, x29
  10008407c  bl      _objc_retainAutoreleasedReturnValue
  100084080  mov     x22, x0
  100084084  adrp    x8, #0x100416000
  100084088  nop
  10008408c  ldr     x1, [x8, #0xd68]
  100084090  mov     x0, x20
  100084094  mov     x2, x22
  100084098  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"totalsStats" withExtension:@"plist"]]
  10008409c  mov     x20, x0
  1000840a0  mov     x0, x22
  1000840a4  bl      _objc_release
  1000840a8  mov     x0, x21
  1000840ac  bl      _objc_release
  1000840b0  adrp    x8, #0x10041d000
  1000840b4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000840b8  adrp    x8, #0x100417000
  1000840bc  nop
  1000840c0  ldr     x1, [x8, #0xe8]
  1000840c4  mov     x2, x19
  1000840c8  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADInventory sharedInventory] getNumberOfWeaponsUnlocked]]
  1000840cc  mov     x29, x29
  1000840d0  bl      _objc_retainAutoreleasedReturnValue
  1000840d4  mov     x19, x0
  1000840d8  adrp    x8, #0x100418000
  1000840dc  nop
  1000840e0  ldr     x1, [x8, #0x318]
  1000840e4  adrp    x3, #0x1003bf000
  1000840e8  add     x3, x3, #0x9b0                           ; @"Weapons obtained"
  1000840ec  mov     x0, x20
  1000840f0  mov     x2, x19
  1000840f4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"totalsStats" withExtension:@"plist"]] setValue:[NSNumber numberWithInteger:[[ADInventory sharedInventory] getNumberOfWeaponsUnlocked]] forKey:@"Weapons obtained"]
  1000840f8  mov     x0, x19
  1000840fc  bl      _objc_release
  100084100  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100084104  mov     x1, x28
  100084108  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10008410c  mov     x29, x29
  100084110  bl      _objc_retainAutoreleasedReturnValue
  100084114  mov     x21, x0
  100084118  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  10008411c  mov     x1, x24
  100084120  bl      _objc_msgSend                            ; [g_10042da18 totalsStatsDataRef]
  100084124  mov     x29, x29
  100084128  bl      _objc_retainAutoreleasedReturnValue
  10008412c  mov     x22, x0
  100084130  adrp    x8, #0x100416000
  100084134  nop
  100084138  ldr     x19, [x8, #0xdc8]
  10008413c  mov     x0, x21
  100084140  mov     x1, x19
  100084144  mov     x2, x20
  100084148  mov     x3, x22
  10008414c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"totalsStats" withExtension:@"plist"]] forKey:[g_10042da18 totalsStatsDataRef]]
  100084150  mov     x0, x22
  100084154  bl      _objc_release
  100084158  mov     x0, x21
  10008415c  bl      _objc_release
  100084160  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100084164  mov     x1, x28
  100084168  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10008416c  mov     x29, x29
  100084170  bl      _objc_retainAutoreleasedReturnValue
  100084174  mov     x21, x0
  100084178  adrp    x8, #0x10041d000
  10008417c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100084180  adrp    x8, #0x100416000
  100084184  nop
  100084188  ldr     x1, [x8, #0xee8]
  10008418c  str     xzr, [sp]
  100084190  adrp    x2, #0x1003ba000
  100084194  add     x2, x2, #0x1f0                           ; @"%d"
  100084198  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", 0]
  10008419c  mov     x29, x29
  1000841a0  bl      _objc_retainAutoreleasedReturnValue
  1000841a4  mov     x22, x0
  1000841a8  adrp    x3, #0x1003bf000
  1000841ac  add     x3, x3, #0x9d0                           ; @"TOTAL_TIME_PLAYED"
  1000841b0  mov     x0, x21
  1000841b4  mov     x1, x19
  1000841b8  mov     x2, x22
  1000841bc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d", 0] forKey:@"TOTAL_TIME_PLAYED"]
  1000841c0  mov     x0, x22
  1000841c4  bl      _objc_release
  1000841c8  mov     x0, x21
  1000841cc  bl      _objc_release
  1000841d0  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  1000841d4  mov     x1, x28
  1000841d8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000841dc  mov     x29, x29
  1000841e0  bl      _objc_retainAutoreleasedReturnValue
  1000841e4  mov     x19, x0
  1000841e8  adrp    x8, #0x100416000
  1000841ec  nop
  1000841f0  ldr     x1, [x8, #0xdd8]
  1000841f4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000841f8  mov     x0, x19
  1000841fc  bl      _objc_release
  100084200  mov     x0, x20
  100084204  bl      _objc_release
loc_100084208:
  100084208  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  10008420c  mov     x1, x28
  100084210  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100084214  mov     x29, x29
  100084218  bl      _objc_retainAutoreleasedReturnValue
  10008421c  mov     x19, x0
  100084220  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  100084224  adrp    x8, #0x100419000
  100084228  nop
  10008422c  ldr     x20, [x8, #0xe50]
  100084230  mov     x1, x20
  100084234  bl      _objc_msgSend                            ; [g_10042da18 weaponsStatsDataRef]
  100084238  mov     x29, x29
  10008423c  bl      _objc_retainAutoreleasedReturnValue
  100084240  mov     x21, x0
  100084244  mov     x0, x19
  100084248  ldr     x1, [sp, #0x48]
  10008424c  mov     x2, x21
  100084250  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] dictionaryForKey:[g_10042da18 weaponsStatsDataRef]]
  100084254  mov     x29, x29
  100084258  bl      _objc_retainAutoreleasedReturnValue
  10008425c  mov     x22, x0
  100084260  bl      _objc_release
  100084264  mov     x0, x21
  100084268  bl      _objc_release
  10008426c  mov     x0, x19
  100084270  bl      _objc_release
  100084274  cbnz    x22, loc_1000843cc                       ; if ([[NSUserDefaults standardUserDefaults] dictionaryForKey:[g_10042da18 weaponsStatsDataRef]] != 0)
  100084278  adrp    x8, #0x10041d000
  10008427c  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100084280  adrp    x8, #0x100416000
  100084284  nop
  100084288  ldr     x1, [x8, #0xb58]
  10008428c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100084290  mov     x29, x29
  100084294  bl      _objc_retainAutoreleasedReturnValue
  100084298  mov     x19, x0
  10008429c  adrp    x8, #0x100416000
  1000842a0  nop
  1000842a4  ldr     x1, [x8, #0xd60]
  1000842a8  adrp    x2, #0x1003bf000
  1000842ac  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000842b0  adrp    x3, #0x1003b9000
  1000842b4  add     x3, x3, #0xa70                           ; @"plist"
  1000842b8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]
  1000842bc  mov     x29, x29
  1000842c0  bl      _objc_retainAutoreleasedReturnValue
  1000842c4  mov     x21, x0
  1000842c8  mov     x0, x19
  1000842cc  bl      _objc_release
  1000842d0  adrp    x8, #0x10041d000
  1000842d4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000842d8  ldr     x1, [sp, #0x40]
  1000842dc  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000842e0  adrp    x8, #0x100416000
  1000842e4  nop
  1000842e8  ldr     x1, [x8, #0xd68]
  1000842ec  mov     x2, x21
  1000842f0  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]]
  1000842f4  mov     x19, x0
  1000842f8  str     x21, [sp, #0x70]
  1000842fc  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  100084300  adrp    x8, #0x100419000
  100084304  nop
  100084308  ldr     x1, [x8, #0xe58]
  10008430c  mov     w3, #1
  100084310  mov     x2, x19
  100084314  bl      _objc_msgSend                            ; [g_10042da18 buildFromDictionary:[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] ClearItems:1]
  100084318  mov     x29, x29
  10008431c  bl      _objc_retainAutoreleasedReturnValue
  100084320  mov     x22, x0
  100084324  ldr     x0, [x23, #0xf38]                        ; class NSUserDefaults
  100084328  mov     x21, x23
  10008432c  mov     x1, x28
  100084330  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100084334  mov     x29, x29
  100084338  bl      _objc_retainAutoreleasedReturnValue
  10008433c  mov     x23, x0
  100084340  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  100084344  mov     x1, x20
  100084348  bl      _objc_msgSend                            ; [g_10042da18 weaponsStatsDataRef]
  10008434c  mov     x29, x29
  100084350  bl      _objc_retainAutoreleasedReturnValue
  100084354  mov     x24, x0
  100084358  adrp    x8, #0x100416000
  10008435c  nop
  100084360  ldr     x1, [x8, #0xdc8]
  100084364  mov     x0, x23
  100084368  mov     x2, x22
  10008436c  mov     x3, x24
  100084370  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[g_10042da18 buildFromDictionary:[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] ClearItems:1] forKey:[g_10042da18 weaponsStatsDataRef]]
  100084374  mov     x0, x24
  100084378  bl      _objc_release
  10008437c  mov     x0, x23
  100084380  bl      _objc_release
  100084384  ldr     x0, [x21, #0xf38]                        ; class NSUserDefaults
  100084388  mov     x1, x28
  10008438c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100084390  mov     x29, x29
  100084394  bl      _objc_retainAutoreleasedReturnValue
  100084398  mov     x20, x0
  10008439c  adrp    x8, #0x100416000
  1000843a0  nop
  1000843a4  ldr     x1, [x8, #0xdd8]
  1000843a8  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000843ac  mov     x0, x20
  1000843b0  bl      _objc_release
  1000843b4  mov     x0, x22
  1000843b8  bl      _objc_release
  1000843bc  mov     x0, x19
  1000843c0  bl      _objc_release
  1000843c4  ldr     x0, [sp, #0x70]
  1000843c8  bl      _objc_release
loc_1000843cc:
  1000843cc  mov     x0, x27
  1000843d0  bl      _objc_sync_exit                          ; objc_sync_exit(ADPersistentStats)
  1000843d4  mov     x0, x27
  1000843d8  bl      _objc_release
  1000843dc  ldr     x0, [x26, #0xa18]                        ; load g_10042da18
  1000843e0  ldur    x8, [x29, #-0x58]
  1000843e4  sub     x8, x25, x8
  1000843e8  cbnz    x8, loc_10008440c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000843ec  sub     sp, x29, #0x50
  1000843f0  ldp     x29, x30, [sp, #0x50]
  1000843f4  ldp     x20, x19, [sp, #0x40]
  1000843f8  ldp     x22, x21, [sp, #0x30]
  1000843fc  ldp     x24, x23, [sp, #0x20]
  100084400  ldp     x26, x25, [sp, #0x10]
  100084404  ldp     x28, x27, [sp], #0x60
  100084408  b       _objc_retainAutoreleaseReturnValue
loc_10008440c:
  10008440c  bl      ___stack_chk_fail                        ; stack_chk_fail(g_10042da18)
  100084410  mov     x25, x0
  100084414  ldr     x27, [sp, #0x38]
  100084418  b       loc_100084470
loc_10008441c:
  10008441c  mov     x25, x0
  100084420  ldr     x27, [sp, #0x38]
  100084424  b       loc_100084478
  100084428  mov     x25, x0
  10008442c  ldr     x27, [sp, #0x38]
  100084430  b       loc_100084464
  100084434  mov     x25, x0
  100084438  b       loc_100084458
  10008443c  mov     x25, x0
  100084440  b       loc_100084450
  100084444  mov     x25, x0
  100084448  mov     x0, x20
  10008444c  bl      _objc_release
loc_100084450:
  100084450  mov     x0, x22
  100084454  bl      _objc_release
loc_100084458:
  100084458  ldr     x27, [sp, #0x38]
  10008445c  mov     x0, x24
  100084460  bl      _objc_release
loc_100084464:
  100084464  mov     x0, x26
  100084468  bl      _objc_release
  10008446c  mov     x24, x23
loc_100084470:
  100084470  mov     x0, x19
  100084474  bl      _objc_release
loc_100084478:
  100084478  mov     x0, x24
loc_10008447c:
  10008447c  bl      _objc_release
loc_100084480:
  100084480  ldr     x0, [sp, #0x68]
  100084484  bl      _objc_release
loc_100084488:
  100084488  mov     x0, x24
  10008448c  bl      _objc_release
loc_100084490:
  100084490  mov     x0, x27
  100084494  bl      _objc_sync_exit                          ; objc_sync_exit()
  100084498  mov     x0, x27
  10008449c  bl      _objc_release
  1000844a0  mov     x0, x25
  1000844a4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000844a8  b       loc_10008441c
  1000844ac  mov     x25, x0
  1000844b0  b       loc_100084490
  1000844b4  mov     x25, x0
  1000844b8  b       loc_1000845a0
  1000844bc  mov     x25, x0
  1000844c0  b       loc_10008455c
  1000844c4  b       loc_100084550
  1000844c8  mov     x25, x0
  1000844cc  b       loc_1000845b0
  1000844d0  b       loc_1000844dc
  1000844d4  mov     x25, x0
  1000844d8  b       loc_1000845b0
loc_1000844dc:
  1000844dc  mov     x25, x0
  1000844e0  mov     x0, x21
  1000844e4  bl      _objc_release
  1000844e8  b       loc_1000845b0
  1000844ec  mov     x25, x0
  1000844f0  b       loc_100084488
  1000844f4  mov     x25, x0
  1000844f8  b       loc_100084480
  1000844fc  str     x21, [sp, #0x70]
  100084500  mov     x25, x0
  100084504  b       loc_1000845fc
  100084508  mov     x25, x0
  10008450c  b       loc_1000845ec
  100084510  mov     x25, x0
  100084514  b       loc_10008455c
  100084518  b       loc_100084550
  10008451c  b       loc_10008441c
  100084520  b       loc_100084534
  100084524  mov     x25, x0
  100084528  mov     x0, x21
  10008452c  bl      _objc_release
  100084530  b       loc_100084538
loc_100084534:
  100084534  mov     x25, x0
loc_100084538:
  100084538  mov     x0, x19
  10008453c  b       loc_10008447c
  100084540  mov     x25, x0
  100084544  b       loc_10008455c
  100084548  mov     x25, x0
  10008454c  b       loc_10008455c
loc_100084550:
  100084550  mov     x25, x0
  100084554  mov     x0, x22
  100084558  bl      _objc_release
loc_10008455c:
  10008455c  mov     x0, x21
  100084560  bl      _objc_release
  100084564  b       loc_100084490
  100084568  b       loc_100084594
  10008456c  mov     x25, x0
  100084570  b       loc_10008458c
  100084574  b       loc_100084580
  100084578  mov     x25, x0
  10008457c  b       loc_10008458c
loc_100084580:
  100084580  mov     x25, x0
  100084584  mov     x0, x22
  100084588  bl      _objc_release
loc_10008458c:
  10008458c  mov     x0, x21
  100084590  b       loc_10008459c
loc_100084594:
  100084594  mov     x25, x0
  100084598  mov     x0, x19
loc_10008459c:
  10008459c  bl      _objc_release
loc_1000845a0:
  1000845a0  mov     x0, x20
  1000845a4  bl      _objc_release
  1000845a8  b       loc_100084490
  1000845ac  mov     x25, x0
loc_1000845b0:
  1000845b0  mov     x0, x19
  1000845b4  bl      _objc_release
  1000845b8  b       loc_100084490
  1000845bc  mov     x25, x0
  1000845c0  b       loc_1000845f4
  1000845c4  mov     x25, x0
  1000845c8  b       loc_1000845d8
  1000845cc  mov     x25, x0
  1000845d0  mov     x0, x24
  1000845d4  bl      _objc_release
loc_1000845d8:
  1000845d8  mov     x0, x23
  1000845dc  b       loc_1000845e8
  1000845e0  mov     x25, x0
  1000845e4  mov     x0, x20
loc_1000845e8:
  1000845e8  bl      _objc_release
loc_1000845ec:
  1000845ec  mov     x0, x22
  1000845f0  bl      _objc_release
loc_1000845f4:
  1000845f4  mov     x0, x19
  1000845f8  bl      _objc_release
loc_1000845fc:
  1000845fc  ldr     x0, [sp, #0x70]
  100084600  bl      _objc_release
  100084604  b       loc_100084490

; ======================================================================
; -[ADPersistentStats buildFromDictionary:ClearItems:]
; address 0x100084608  size 1236  kind objc
; ======================================================================
  100084608  stp     x28, x27, [sp, #-0x60]!
  10008460c  stp     x26, x25, [sp, #0x10]
  100084610  stp     x24, x23, [sp, #0x20]
  100084614  stp     x22, x21, [sp, #0x30]
  100084618  stp     x20, x19, [sp, #0x40]
  10008461c  stp     x29, x30, [sp, #0x50]
  100084620  add     x29, sp, #0x50
  100084624  sub     sp, sp, #0x120
  100084628  str     w3, [sp, #0x3c]
  10008462c  adrp    x8, #0x1003b0000
  100084630  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100084634  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100084638  stur    x8, [x29, #-0x58]
  10008463c  mov     x0, x2
  100084640  bl      _objc_retain
  100084644  mov     x20, x0
  100084648  adrp    x8, #0x10041d000
  10008464c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100084650  adrp    x8, #0x100416000
  100084654  nop
  100084658  ldr     x1, [x8, #0xac8]
  10008465c  str     x1, [sp, #0x48]
  100084660  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100084664  adrp    x8, #0x100416000
  100084668  nop
  10008466c  ldr     x1, [x8, #0xab8]
  100084670  str     x1, [sp, #0x40]
  100084674  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100084678  str     x0, [sp, #0x50]
  10008467c  adrp    x8, #0x100417000
  100084680  nop
  100084684  ldr     x25, [x8, #0x40]
  100084688  adrp    x2, #0x1003bf000
  10008468c  add     x2, x2, #0x9f0                           ; @"Weapons"
  100084690  mov     x0, x20
  100084694  mov     x1, x25
  100084698  bl      _objc_msgSend                            ; [arg1 objectForKey:@"Weapons"]
  10008469c  str     x20, [sp, #0x10]
  1000846a0  mov     x29, x29
  1000846a4  bl      _objc_retainAutoreleasedReturnValue
  1000846a8  stp     xzr, xzr, [sp, #0x88]
  1000846ac  stp     xzr, xzr, [sp, #0x78]
  1000846b0  stp     xzr, xzr, [sp, #0x68]
  1000846b4  stp     xzr, xzr, [sp, #0x58]
  1000846b8  bl      _objc_retain
  1000846bc  str     x0, [sp, #0x20]
  1000846c0  adrp    x8, #0x100416000
  1000846c4  nop
  1000846c8  ldr     x1, [x8, #0xe00]
  1000846cc  str     x1, [sp, #0x18]
  1000846d0  add     x2, sp, #0x58
  1000846d4  add     x3, sp, #0x98
  1000846d8  mov     w4, #0x10
  1000846dc  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"Weapons"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000846e0  mov     x28, x0
  1000846e4  cbz     x28, loc_1000849ec                       ; if ([[arg1 objectForKey:@"Weapons"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000846e8  ldr     x8, [sp, #0x68]
  1000846ec  ldr     x8, [x8]
  1000846f0  str     x8, [sp, #0x30]
  1000846f4  adrp    x8, #0x100416000
  1000846f8  nop
  1000846fc  adrp    x9, #0x100418000
  100084700  add     x9, x9, #0x318                           ; &@selector(setValue:forKey:)
  100084704  ldr     x19, [x8, #0xec0]
  100084708  ldr     x26, [x9]
  10008470c  adrp    x8, #0x100417000
  100084710  nop
  100084714  adrp    x20, #0x10041d000
  100084718  ldr     x8, [x8, #0xb8]
  10008471c  str     x8, [sp, #0x28]
  100084720  adrp    x22, #0x1003ba000
  100084724  add     x22, x22, #0x2b0                         ; @"displayName"
loc_100084728:
  100084728  mov     x21, #0
loc_10008472c:
  10008472c  ldr     x8, [sp, #0x68]
  100084730  ldr     x8, [x8]
  100084734  ldr     x9, [sp, #0x30]
  100084738  cmp     x8, x9
  10008473c  b.eq    loc_100084748                            ; if (x8 == x9)
  100084740  ldr     x0, [sp, #0x20]
  100084744  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 objectForKey:@"Weapons"])
loc_100084748:
  100084748  ldr     x8, [sp, #0x60]
  10008474c  ldr     x23, [x8, x21, lsl #3]
  100084750  adrp    x8, #0x10041d000
  100084754  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100084758  ldr     x1, [sp, #0x48]
  10008475c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100084760  ldr     x1, [sp, #0x40]
  100084764  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100084768  mov     x27, x0
  10008476c  ldr     w8, [sp, #0x3c]
  100084770  cbz     w8, loc_100084824                        ; if (arg2 == 0)
  100084774  ldr     x0, [x20, #0xf68]                        ; class NSNumber
  100084778  mov     w2, #0
  10008477c  mov     x1, x19
  100084780  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  100084784  mov     x29, x29
  100084788  bl      _objc_retainAutoreleasedReturnValue
  10008478c  mov     x24, x0
  100084790  mov     x0, x27
  100084794  mov     x1, x26
  100084798  mov     x2, x24
  10008479c  adrp    x3, #0x1003ba000
  1000847a0  add     x3, x3, #0x290                           ; @"shotsFired"
  1000847a4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInt:0] forKey:@"shotsFired"]
  1000847a8  mov     x0, x24
  1000847ac  bl      _objc_release
  1000847b0  ldr     x0, [x20, #0xf68]                        ; class NSNumber
  1000847b4  mov     w2, #0
  1000847b8  mov     x1, x19
  1000847bc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  1000847c0  mov     x29, x29
  1000847c4  bl      _objc_retainAutoreleasedReturnValue
  1000847c8  mov     x24, x0
  1000847cc  mov     x0, x27
  1000847d0  mov     x1, x26
  1000847d4  mov     x2, x24
  1000847d8  adrp    x3, #0x1003ba000
  1000847dc  add     x3, x3, #0x2d0                           ; @"shotsHit"
  1000847e0  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInt:0] forKey:@"shotsHit"]
  1000847e4  mov     x0, x24
  1000847e8  bl      _objc_release
  1000847ec  ldr     x0, [x20, #0xf68]                        ; class NSNumber
  1000847f0  mov     w2, #0
  1000847f4  mov     x1, x19
  1000847f8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  1000847fc  mov     x29, x29
  100084800  bl      _objc_retainAutoreleasedReturnValue
  100084804  mov     x24, x0
  100084808  mov     x0, x27
  10008480c  mov     x1, x26
  100084810  mov     x2, x24
  100084814  adrp    x3, #0x1003ba000
  100084818  add     x3, x3, #0x230                           ; @"kills"
  10008481c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInt:0] forKey:@"kills"]
  100084820  b       loc_1000848dc
loc_100084824:
  100084824  mov     x0, x23
  100084828  mov     x1, x25
  10008482c  adrp    x2, #0x1003ba000
  100084830  add     x2, x2, #0x290                           ; @"shotsFired"
  100084834  bl      _objc_msgSend                            ; [x0 objectForKey:@"shotsFired"]
  100084838  mov     x29, x29
  10008483c  bl      _objc_retainAutoreleasedReturnValue
  100084840  mov     x24, x0
  100084844  mov     x0, x27
  100084848  mov     x1, x26
  10008484c  mov     x2, x24
  100084850  adrp    x3, #0x1003ba000
  100084854  add     x3, x3, #0x290                           ; @"shotsFired"
  100084858  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[x0 objectForKey:@"shotsFired"] forKey:@"shotsFired"]
  10008485c  mov     x0, x24
  100084860  bl      _objc_release
  100084864  mov     x0, x23
  100084868  mov     x1, x25
  10008486c  adrp    x2, #0x1003ba000
  100084870  add     x2, x2, #0x2d0                           ; @"shotsHit"
  100084874  bl      _objc_msgSend                            ; [x0 objectForKey:@"shotsHit"]
  100084878  mov     x29, x29
  10008487c  bl      _objc_retainAutoreleasedReturnValue
  100084880  mov     x24, x0
  100084884  mov     x0, x27
  100084888  mov     x1, x26
  10008488c  mov     x2, x24
  100084890  adrp    x3, #0x1003ba000
  100084894  add     x3, x3, #0x2d0                           ; @"shotsHit"
  100084898  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[x0 objectForKey:@"shotsHit"] forKey:@"shotsHit"]
  10008489c  mov     x0, x24
  1000848a0  bl      _objc_release
  1000848a4  mov     x0, x23
  1000848a8  mov     x1, x25
  1000848ac  adrp    x2, #0x1003ba000
  1000848b0  add     x2, x2, #0x230                           ; @"kills"
  1000848b4  bl      _objc_msgSend                            ; [x0 objectForKey:@"kills"]
  1000848b8  mov     x29, x29
  1000848bc  bl      _objc_retainAutoreleasedReturnValue
  1000848c0  mov     x24, x0
  1000848c4  mov     x0, x27
  1000848c8  mov     x1, x26
  1000848cc  mov     x2, x24
  1000848d0  adrp    x3, #0x1003ba000
  1000848d4  add     x3, x3, #0x230                           ; @"kills"
  1000848d8  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[x0 objectForKey:@"kills"] forKey:@"kills"]
loc_1000848dc:
  1000848dc  mov     x0, x24
  1000848e0  bl      _objc_release
  1000848e4  mov     x0, x23
  1000848e8  mov     x1, x25
  1000848ec  adrp    x2, #0x1003b9000
  1000848f0  add     x2, x2, #0xe10                           ; @"melee"
  1000848f4  bl      _objc_msgSend                            ; [x0 objectForKey:@"melee"]
  1000848f8  mov     x29, x29
  1000848fc  bl      _objc_retainAutoreleasedReturnValue
  100084900  cmp     x0, #0
  100084904  cset    w24, ne
  100084908  bl      _objc_release
  10008490c  ldr     x0, [x20, #0xf68]                        ; class NSNumber
  100084910  ldr     x1, [sp, #0x28]
  100084914  mov     x2, x24
  100084918  bl      _objc_msgSend                            ; [NSNumber numberWithBool:([x0 objectForKey:@"melee"] != 0)]
  10008491c  mov     x29, x29
  100084920  bl      _objc_retainAutoreleasedReturnValue
  100084924  mov     x24, x0
  100084928  mov     x0, x27
  10008492c  mov     x1, x26
  100084930  mov     x2, x24
  100084934  adrp    x3, #0x1003b9000
  100084938  add     x3, x3, #0xe10                           ; @"melee"
  10008493c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithBool:([x0 objectForKey:@"melee"] != 0)] forKey:@"melee"]
  100084940  mov     x0, x24
  100084944  bl      _objc_release
  100084948  mov     x0, x23
  10008494c  mov     x1, x25
  100084950  mov     x2, x22
  100084954  bl      _objc_msgSend                            ; [x0 objectForKey:@"displayName"]
  100084958  mov     x29, x29
  10008495c  bl      _objc_retainAutoreleasedReturnValue
  100084960  mov     x24, x0
  100084964  mov     x0, x27
  100084968  mov     x1, x26
  10008496c  mov     x2, x24
  100084970  mov     x3, x22
  100084974  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[x0 objectForKey:@"displayName"] forKey:@"displayName"]
  100084978  mov     x0, x24
  10008497c  bl      _objc_release
  100084980  mov     x0, x23
  100084984  mov     x1, x25
  100084988  adrp    x2, #0x1003b9000
  10008498c  add     x2, x2, #0xdb0                           ; @"name"
  100084990  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100084994  mov     x29, x29
  100084998  bl      _objc_retainAutoreleasedReturnValue
  10008499c  mov     x23, x0
  1000849a0  ldr     x0, [sp, #0x50]
  1000849a4  mov     x1, x26
  1000849a8  mov     x2, x27
  1000849ac  mov     x3, x23
  1000849b0  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[[NSMutableDictionary alloc] init] forKey:[x0 objectForKey:@"name"]]
  1000849b4  mov     x0, x23
  1000849b8  bl      _objc_release
  1000849bc  mov     x0, x27
  1000849c0  bl      _objc_release
  1000849c4  add     x21, x21, #1
  1000849c8  cmp     x21, x28
  1000849cc  b.lo    loc_10008472c                            ; if ((x21 + 1) <u [[arg1 objectForKey:@"Weapons"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16])
  1000849d0  add     x2, sp, #0x58
  1000849d4  add     x3, sp, #0x98
  1000849d8  mov     w4, #0x10
  1000849dc  ldp     x1, x0, [sp, #0x18]
  1000849e0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"Weapons"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000849e4  mov     x28, x0
  1000849e8  cbnz    x28, loc_100084728                       ; if ([[arg1 objectForKey:@"Weapons"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
loc_1000849ec:
  1000849ec  ldr     x19, [sp, #0x20]
  1000849f0  mov     x0, x19
  1000849f4  bl      _objc_release
  1000849f8  mov     x0, x19
  1000849fc  bl      _objc_release
  100084a00  ldr     x0, [sp, #0x10]
  100084a04  bl      _objc_release
  100084a08  ldur    x8, [x29, #-0x58]
  100084a0c  adrp    x9, #0x1003b0000
  100084a10  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100084a14  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100084a18  sub     x8, x9, x8
  100084a1c  cbnz    x8, loc_100084a44                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100084a20  ldr     x0, [sp, #0x50]
  100084a24  sub     sp, x29, #0x50
  100084a28  ldp     x29, x30, [sp, #0x50]
  100084a2c  ldp     x20, x19, [sp, #0x40]
  100084a30  ldp     x22, x21, [sp, #0x30]
  100084a34  ldp     x24, x23, [sp, #0x20]
  100084a38  ldp     x26, x25, [sp, #0x10]
  100084a3c  ldp     x28, x27, [sp], #0x60
  100084a40  b       _objc_autoreleaseReturnValue
loc_100084a44:
  100084a44  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100084a48  mov     x19, x0
  100084a4c  b       loc_100084a8c
loc_100084a50:
  100084a50  mov     x19, x0
  100084a54  b       loc_100084a94
  100084a58  b       loc_100084a80
  100084a5c  b       loc_100084a80
  100084a60  mov     x19, x0
  100084a64  mov     x0, x23
  100084a68  b       loc_100084a88
  100084a6c  b       loc_100084a80
  100084a70  b       loc_100084a80
  100084a74  b       loc_100084a80
  100084a78  b       loc_100084a80
  100084a7c  b       loc_100084a80
loc_100084a80:
  100084a80  mov     x19, x0
  100084a84  mov     x0, x24
loc_100084a88:
  100084a88  bl      _objc_release
loc_100084a8c:
  100084a8c  mov     x0, x27
  100084a90  bl      _objc_release
loc_100084a94:
  100084a94  ldr     x20, [sp, #0x10]
  100084a98  ldr     x21, [sp, #0x20]
  100084a9c  mov     x0, x21
  100084aa0  bl      _objc_release
  100084aa4  mov     x0, x21
  100084aa8  bl      _objc_release
loc_100084aac:
  100084aac  ldr     x0, [sp, #0x50]
  100084ab0  bl      _objc_release
loc_100084ab4:
  100084ab4  mov     x0, x20
  100084ab8  bl      _objc_release
  100084abc  mov     x0, x19
  100084ac0  bl      __Unwind_Resume                          ; Unwind_Resume()
  100084ac4  b       loc_100084a50
  100084ac8  mov     x19, x0
  100084acc  b       loc_100084ab4
  100084ad0  mov     x19, x0
  100084ad4  b       loc_100084aac
  100084ad8  b       loc_100084a50

; ======================================================================
; -[ADPersistentStats getEnemyStatData]
; address 0x100084adc  size 196  kind objc
; ======================================================================
  100084adc  stp     x22, x21, [sp, #-0x30]!
  100084ae0  stp     x20, x19, [sp, #0x10]
  100084ae4  stp     x29, x30, [sp, #0x20]
  100084ae8  add     x29, sp, #0x20
  100084aec  mov     x20, x0
  100084af0  adrp    x8, #0x10041d000
  100084af4  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  100084af8  adrp    x8, #0x100416000
  100084afc  nop
  100084b00  ldr     x1, [x8, #0xd98]
  100084b04  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100084b08  mov     x29, x29
  100084b0c  bl      _objc_retainAutoreleasedReturnValue
  100084b10  mov     x19, x0
  100084b14  adrp    x8, #0x100419000
  100084b18  nop
  100084b1c  ldr     x1, [x8, #0xe38]
  100084b20  mov     x0, x20
  100084b24  bl      _objc_msgSend                            ; [self enemyStatsDataRef]
  100084b28  mov     x29, x29
  100084b2c  bl      _objc_retainAutoreleasedReturnValue
  100084b30  mov     x20, x0
  100084b34  adrp    x8, #0x100417000
  100084b38  nop
  100084b3c  ldr     x1, [x8, #0x40]
  100084b40  mov     x0, x19
  100084b44  mov     x2, x20
  100084b48  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] objectForKey:[self enemyStatsDataRef]]
  100084b4c  mov     x29, x29
  100084b50  bl      _objc_retainAutoreleasedReturnValue
  100084b54  mov     x21, x0
  100084b58  mov     x0, x20
  100084b5c  bl      _objc_release
  100084b60  mov     x0, x19
  100084b64  bl      _objc_release
  100084b68  mov     x0, x21
  100084b6c  ldp     x29, x30, [sp, #0x20]
  100084b70  ldp     x20, x19, [sp, #0x10]
  100084b74  ldp     x22, x21, [sp], #0x30
  100084b78  b       _objc_autoreleaseReturnValue
  100084b7c  mov     x21, x0
  100084b80  b       loc_100084b90
  100084b84  mov     x21, x0
  100084b88  mov     x0, x20
  100084b8c  bl      _objc_release
loc_100084b90:
  100084b90  mov     x0, x19
  100084b94  bl      _objc_release
  100084b98  mov     x0, x21
  100084b9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats getTotalStatData]
; address 0x100084ba0  size 196  kind objc
; ======================================================================
  100084ba0  stp     x22, x21, [sp, #-0x30]!
  100084ba4  stp     x20, x19, [sp, #0x10]
  100084ba8  stp     x29, x30, [sp, #0x20]
  100084bac  add     x29, sp, #0x20
  100084bb0  mov     x20, x0
  100084bb4  adrp    x8, #0x10041d000
  100084bb8  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  100084bbc  adrp    x8, #0x100416000
  100084bc0  nop
  100084bc4  ldr     x1, [x8, #0xd98]
  100084bc8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100084bcc  mov     x29, x29
  100084bd0  bl      _objc_retainAutoreleasedReturnValue
  100084bd4  mov     x19, x0
  100084bd8  adrp    x8, #0x100419000
  100084bdc  nop
  100084be0  ldr     x1, [x8, #0xe48]
  100084be4  mov     x0, x20
  100084be8  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100084bec  mov     x29, x29
  100084bf0  bl      _objc_retainAutoreleasedReturnValue
  100084bf4  mov     x20, x0
  100084bf8  adrp    x8, #0x100419000
  100084bfc  nop
  100084c00  ldr     x1, [x8, #0xe40]
  100084c04  mov     x0, x19
  100084c08  mov     x2, x20
  100084c0c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] dictionaryForKey:[self totalsStatsDataRef]]
  100084c10  mov     x29, x29
  100084c14  bl      _objc_retainAutoreleasedReturnValue
  100084c18  mov     x21, x0
  100084c1c  mov     x0, x20
  100084c20  bl      _objc_release
  100084c24  mov     x0, x19
  100084c28  bl      _objc_release
  100084c2c  mov     x0, x21
  100084c30  ldp     x29, x30, [sp, #0x20]
  100084c34  ldp     x20, x19, [sp, #0x10]
  100084c38  ldp     x22, x21, [sp], #0x30
  100084c3c  b       _objc_autoreleaseReturnValue
  100084c40  mov     x21, x0
  100084c44  b       loc_100084c54
  100084c48  mov     x21, x0
  100084c4c  mov     x0, x20
  100084c50  bl      _objc_release
loc_100084c54:
  100084c54  mov     x0, x19
  100084c58  bl      _objc_release
  100084c5c  mov     x0, x21
  100084c60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats getWeaponStatData]
; address 0x100084c64  size 196  kind objc
; ======================================================================
  100084c64  stp     x22, x21, [sp, #-0x30]!
  100084c68  stp     x20, x19, [sp, #0x10]
  100084c6c  stp     x29, x30, [sp, #0x20]
  100084c70  add     x29, sp, #0x20
  100084c74  mov     x20, x0
  100084c78  adrp    x8, #0x10041d000
  100084c7c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  100084c80  adrp    x8, #0x100416000
  100084c84  nop
  100084c88  ldr     x1, [x8, #0xd98]
  100084c8c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100084c90  mov     x29, x29
  100084c94  bl      _objc_retainAutoreleasedReturnValue
  100084c98  mov     x19, x0
  100084c9c  adrp    x8, #0x100419000
  100084ca0  nop
  100084ca4  ldr     x1, [x8, #0xe50]
  100084ca8  mov     x0, x20
  100084cac  bl      _objc_msgSend                            ; [self weaponsStatsDataRef]
  100084cb0  mov     x29, x29
  100084cb4  bl      _objc_retainAutoreleasedReturnValue
  100084cb8  mov     x20, x0
  100084cbc  adrp    x8, #0x100419000
  100084cc0  nop
  100084cc4  ldr     x1, [x8, #0xe40]
  100084cc8  mov     x0, x19
  100084ccc  mov     x2, x20
  100084cd0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] dictionaryForKey:[self weaponsStatsDataRef]]
  100084cd4  mov     x29, x29
  100084cd8  bl      _objc_retainAutoreleasedReturnValue
  100084cdc  mov     x21, x0
  100084ce0  mov     x0, x20
  100084ce4  bl      _objc_release
  100084ce8  mov     x0, x19
  100084cec  bl      _objc_release
  100084cf0  mov     x0, x21
  100084cf4  ldp     x29, x30, [sp, #0x20]
  100084cf8  ldp     x20, x19, [sp, #0x10]
  100084cfc  ldp     x22, x21, [sp], #0x30
  100084d00  b       _objc_autoreleaseReturnValue
  100084d04  mov     x21, x0
  100084d08  b       loc_100084d18
  100084d0c  mov     x21, x0
  100084d10  mov     x0, x20
  100084d14  bl      _objc_release
loc_100084d18:
  100084d18  mov     x0, x19
  100084d1c  bl      _objc_release
  100084d20  mov     x0, x21
  100084d24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats getEnemyKillsByName:]
; address 0x100084d28  size 384  kind objc
; ======================================================================
  100084d28  stp     x22, x21, [sp, #-0x30]!
  100084d2c  stp     x20, x19, [sp, #0x10]
  100084d30  stp     x29, x30, [sp, #0x20]
  100084d34  add     x29, sp, #0x20
  100084d38  mov     x20, x0
  100084d3c  mov     x0, x2
  100084d40  bl      _objc_retain
  100084d44  mov     x19, x0
  100084d48  adrp    x8, #0x100419000
  100084d4c  nop
  100084d50  ldr     x21, [x8, #0xe60]
  100084d54  mov     x0, x20
  100084d58  mov     x1, x21
  100084d5c  bl      _objc_msgSend                            ; [self enemies]
  100084d60  mov     x29, x29
  100084d64  bl      _objc_retainAutoreleasedReturnValue
  100084d68  mov     x22, x0
  100084d6c  bl      _objc_release
  100084d70  cbnz    x22, loc_100084db4                       ; if ([self enemies] != 0)
  100084d74  adrp    x8, #0x100419000
  100084d78  nop
  100084d7c  ldr     x1, [x8, #0x9d0]
  100084d80  mov     x0, x20
  100084d84  bl      _objc_msgSend                            ; [self getEnemyStatData]
  100084d88  mov     x29, x29
  100084d8c  bl      _objc_retainAutoreleasedReturnValue
  100084d90  mov     x22, x0
  100084d94  adrp    x8, #0x100419000
  100084d98  nop
  100084d9c  ldr     x1, [x8, #0xe68]
  100084da0  mov     x0, x20
  100084da4  mov     x2, x22
  100084da8  bl      _objc_msgSend                            ; [self setEnemies:[self getEnemyStatData]]
  100084dac  mov     x0, x22
  100084db0  bl      _objc_release
loc_100084db4:
  100084db4  mov     x0, x20
  100084db8  mov     x1, x21
  100084dbc  bl      _objc_msgSend                            ; [self enemies]
  100084dc0  mov     x29, x29
  100084dc4  bl      _objc_retainAutoreleasedReturnValue
  100084dc8  mov     x22, x0
  100084dcc  adrp    x8, #0x100417000
  100084dd0  nop
  100084dd4  ldr     x21, [x8, #0x40]
  100084dd8  mov     x1, x21
  100084ddc  mov     x2, x19
  100084de0  bl      _objc_msgSend                            ; [[self enemies] objectForKey:arg1]
  100084de4  mov     x29, x29
  100084de8  bl      _objc_retainAutoreleasedReturnValue
  100084dec  mov     x20, x0
  100084df0  mov     x0, x22
  100084df4  bl      _objc_release
  100084df8  adrp    x2, #0x1003ba000
  100084dfc  add     x2, x2, #0x1d0                           ; @"Killed"
  100084e00  mov     x0, x20
  100084e04  mov     x1, x21
  100084e08  bl      _objc_msgSend                            ; [[[self enemies] objectForKey:arg1] objectForKey:@"Killed"]
  100084e0c  mov     x29, x29
  100084e10  bl      _objc_retainAutoreleasedReturnValue
  100084e14  mov     x22, x0
  100084e18  adrp    x8, #0x100417000
  100084e1c  nop
  100084e20  ldr     x1, [x8, #0xb0]
  100084e24  bl      _objc_msgSend                            ; [[[[self enemies] objectForKey:arg1] objectForKey:@"Killed"] integerValue]
  100084e28  mov     x21, x0
  100084e2c  mov     x0, x22
  100084e30  bl      _objc_release
  100084e34  mov     x0, x20
  100084e38  bl      _objc_release
  100084e3c  mov     x0, x19
  100084e40  bl      _objc_release
  100084e44  mov     x0, x21
  100084e48  ldp     x29, x30, [sp, #0x20]
  100084e4c  ldp     x20, x19, [sp, #0x10]
  100084e50  ldp     x22, x21, [sp], #0x30
  100084e54  ret
  100084e58  mov     x21, x0
  100084e5c  b       loc_100084e98
  100084e60  mov     x1, x22
  100084e64  mov     x21, x0
  100084e68  mov     x0, x1
  100084e6c  b       loc_100084e94
  100084e70  mov     x21, x0
  100084e74  b       loc_100084e84
  100084e78  mov     x21, x0
  100084e7c  mov     x0, x22
  100084e80  bl      _objc_release
loc_100084e84:
  100084e84  mov     x0, x20
  100084e88  b       loc_100084e94
  100084e8c  mov     x21, x0
  100084e90  mov     x0, x22
loc_100084e94:
  100084e94  bl      _objc_release
loc_100084e98:
  100084e98  mov     x0, x19
  100084e9c  bl      _objc_release
  100084ea0  mov     x0, x21
  100084ea4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats getKillRequirementForEnemyWithName:]
; address 0x100084ea8  size 468  kind objc
; ======================================================================
  100084ea8  stp     x26, x25, [sp, #-0x50]!
  100084eac  stp     x24, x23, [sp, #0x10]
  100084eb0  stp     x22, x21, [sp, #0x20]
  100084eb4  stp     x20, x19, [sp, #0x30]
  100084eb8  stp     x29, x30, [sp, #0x40]
  100084ebc  add     x29, sp, #0x40
  100084ec0  mov     x20, x0
  100084ec4  mov     x0, x2
  100084ec8  bl      _objc_retain
  100084ecc  mov     x19, x0
  100084ed0  adrp    x8, #0x10041e000
  100084ed4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100084ed8  adrp    x8, #0x100417000
  100084edc  nop
  100084ee0  ldr     x1, [x8, #0xaa8]
  100084ee4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100084ee8  mov     x29, x29
  100084eec  bl      _objc_retainAutoreleasedReturnValue
  100084ef0  mov     x23, x0
  100084ef4  adrp    x8, #0x100419000
  100084ef8  nop
  100084efc  ldr     x1, [x8, #0x198]
  100084f00  mov     x2, x19
  100084f04  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1]
  100084f08  mov     x29, x29
  100084f0c  bl      _objc_retainAutoreleasedReturnValue
  100084f10  mov     x24, x0
  100084f14  adrp    x8, #0x100417000
  100084f18  nop
  100084f1c  ldr     x22, [x8, #0x40]
  100084f20  adrp    x2, #0x1003bf000
  100084f24  add     x2, x2, #0x350                           ; @"bestiary"
  100084f28  mov     x1, x22
  100084f2c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"]
  100084f30  mov     x29, x29
  100084f34  bl      _objc_retainAutoreleasedReturnValue
  100084f38  mov     x21, x0
  100084f3c  mov     x0, x24
  100084f40  bl      _objc_release
  100084f44  mov     x0, x23
  100084f48  bl      _objc_release
  100084f4c  adrp    x2, #0x1003bf000
  100084f50  add     x2, x2, #0x370                           ; @"Unlock requirement"
  100084f54  mov     x0, x21
  100084f58  mov     x1, x22
  100084f5c  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"]
  100084f60  mov     x29, x29
  100084f64  bl      _objc_retainAutoreleasedReturnValue
  100084f68  mov     x24, x0
  100084f6c  adrp    x8, #0x100417000
  100084f70  nop
  100084f74  ldr     x23, [x8, #0x110]
  100084f78  mov     x1, x23
  100084f7c  bl      _objc_msgSend                            ; [[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"] intValue]
  100084f80  mov     x25, x0
  100084f84  mov     x0, x24
  100084f88  bl      _objc_release
  100084f8c  cmp     w25, #1
  100084f90  b.lt    loc_100084fec                            ; if ([[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"] objectForKey:@"Unlock req… < 1)
  100084f94  adrp    x2, #0x1003bf000
  100084f98  add     x2, x2, #0x370                           ; @"Unlock requirement"
  100084f9c  mov     x0, x21
  100084fa0  mov     x1, x22
  100084fa4  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"]
  100084fa8  mov     x29, x29
  100084fac  bl      _objc_retainAutoreleasedReturnValue
  100084fb0  mov     x22, x0
  100084fb4  mov     x1, x23
  100084fb8  bl      _objc_msgSend                            ; [[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"] intValue]
  100084fbc  mov     x23, x0
  100084fc0  adrp    x8, #0x100418000
  100084fc4  nop
  100084fc8  ldr     x1, [x8, #0xac8]
  100084fcc  mov     x0, x20
  100084fd0  bl      _objc_msgSend                            ; [self computeTotalEnemyKillCount]
  100084fd4  sub     w20, w23, w0                             ; t1 = ([[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:arg1] objectForKey:@"bestiary"] objectForKey:@"Unlock requirement"] intValue] - [self computeTotalEnemyKillCount])
  100084fd8  mov     x0, x22
  100084fdc  bl      _objc_release
  100084fe0  cmp     w20, #0
  100084fe4  csel    w20, wzr, w20, lt
  100084fe8  b       loc_100084ff0
loc_100084fec:
  100084fec  mov     w20, #0
loc_100084ff0:
  100084ff0  mov     x0, x21
  100084ff4  bl      _objc_release
  100084ff8  mov     x0, x19
  100084ffc  bl      _objc_release
  100085000  mov     x0, x20
  100085004  ldp     x29, x30, [sp, #0x40]
  100085008  ldp     x20, x19, [sp, #0x30]
  10008500c  ldp     x22, x21, [sp, #0x20]
  100085010  ldp     x24, x23, [sp, #0x10]
  100085014  ldp     x26, x25, [sp], #0x50
  100085018  ret
  10008501c  mov     x20, x0
  100085020  b       loc_100085064
  100085024  mov     x20, x0
  100085028  mov     x0, x22
  10008502c  bl      _objc_release
  100085030  b       loc_100085064
  100085034  mov     x20, x0
  100085038  b       loc_10008506c
  10008503c  mov     x20, x0
  100085040  b       loc_100085050
  100085044  mov     x20, x0
  100085048  mov     x0, x24
  10008504c  bl      _objc_release
loc_100085050:
  100085050  mov     x0, x23
  100085054  b       loc_100085068
  100085058  mov     x20, x0
  10008505c  mov     x0, x24
  100085060  bl      _objc_release
loc_100085064:
  100085064  mov     x0, x21
loc_100085068:
  100085068  bl      _objc_release
loc_10008506c:
  10008506c  mov     x0, x19
  100085070  bl      _objc_release
  100085074  mov     x0, x20
  100085078  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats getNumberOfZombiesUnlocked]
; address 0x10008507c  size 104  kind objc
; ======================================================================
  10008507c  stp     x20, x19, [sp, #-0x20]!
  100085080  stp     x29, x30, [sp, #0x10]
  100085084  add     x29, sp, #0x10
  100085088  adrp    x8, #0x100419000
  10008508c  nop
  100085090  ldr     x1, [x8, #0xe70]
  100085094  bl      _objc_msgSend                            ; [self getAllUnlockedEnemies]
  100085098  mov     x29, x29
  10008509c  bl      _objc_retainAutoreleasedReturnValue
  1000850a0  mov     x19, x0
  1000850a4  adrp    x8, #0x100416000
  1000850a8  nop
  1000850ac  ldr     x1, [x8, #0xe30]
  1000850b0  bl      _objc_msgSend                            ; [[self getAllUnlockedEnemies] count]
  1000850b4  mov     x20, x0
  1000850b8  mov     x0, x19
  1000850bc  bl      _objc_release
  1000850c0  mov     x0, x20
  1000850c4  ldp     x29, x30, [sp, #0x10]
  1000850c8  ldp     x20, x19, [sp], #0x20
  1000850cc  ret
  1000850d0  mov     x20, x0
  1000850d4  mov     x0, x19
  1000850d8  bl      _objc_release
  1000850dc  mov     x0, x20
  1000850e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats saveEnemyData:]
; address 0x1000850e4  size 3312  kind objc
; ======================================================================
  1000850e4  stp     x28, x27, [sp, #-0x60]!
  1000850e8  stp     x26, x25, [sp, #0x10]
  1000850ec  stp     x24, x23, [sp, #0x20]
  1000850f0  stp     x22, x21, [sp, #0x30]
  1000850f4  stp     x20, x19, [sp, #0x40]
  1000850f8  stp     x29, x30, [sp, #0x50]
  1000850fc  add     x29, sp, #0x50
  100085100  sub     sp, sp, #0x170
  100085104  mov     x19, x0
  100085108  adrp    x8, #0x1003b0000
  10008510c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100085110  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100085114  stur    x8, [x29, #-0x58]
  100085118  mov     x0, x2
  10008511c  bl      _objc_retain
  100085120  mov     x21, x0
  100085124  adrp    x8, #0x100419000
  100085128  nop
  10008512c  ldr     x20, [x8, #0xe70]
  100085130  mov     x0, x19
  100085134  mov     x1, x20
  100085138  bl      _objc_msgSend                            ; [self getAllUnlockedEnemies]
  10008513c  mov     x29, x29
  100085140  bl      _objc_retainAutoreleasedReturnValue
  100085144  mov     x25, x0
  100085148  adrp    x8, #0x100419000
  10008514c  nop
  100085150  ldr     x1, [x8, #0x9d0]
  100085154  mov     x0, x19
  100085158  str     x19, [sp, #0x50]
  10008515c  bl      _objc_msgSend                            ; [self getEnemyStatData]
  100085160  str     x21, [sp, #0x48]
  100085164  mov     x29, x29
  100085168  bl      _objc_retainAutoreleasedReturnValue
  10008516c  mov     x26, x0
  100085170  str     x26, [sp, #0x68]
  100085174  adrp    x8, #0x10041d000
  100085178  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10008517c  adrp    x8, #0x100416000
  100085180  nop
  100085184  ldr     x1, [x8, #0xac8]
  100085188  str     x1, [sp, #0x30]
  10008518c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100085190  adrp    x8, #0x100416000
  100085194  nop
  100085198  ldr     x1, [x8, #0xab8]
  10008519c  str     x1, [sp, #0x28]
  1000851a0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000851a4  str     x0, [sp, #0x88]
  1000851a8  stp     xzr, xzr, [sp, #0xd8]
  1000851ac  stp     xzr, xzr, [sp, #0xc8]
  1000851b0  stp     xzr, xzr, [sp, #0xb8]
  1000851b4  stp     xzr, xzr, [sp, #0xa8]
  1000851b8  adrp    x8, #0x100417000
  1000851bc  nop
  1000851c0  ldr     x1, [x8, #0x248]
  1000851c4  mov     x0, x26
  1000851c8  bl      _objc_msgSend                            ; [[self getEnemyStatData] allKeys]
  1000851cc  stp     x20, x25, [sp, #0x38]
  1000851d0  mov     x29, x29
  1000851d4  bl      _objc_retainAutoreleasedReturnValue
  1000851d8  str     x0, [sp, #0x60]
  1000851dc  adrp    x8, #0x100416000
  1000851e0  nop
  1000851e4  ldr     x1, [x8, #0xe00]
  1000851e8  str     x1, [sp, #0x58]
  1000851ec  add     x2, sp, #0xa8
  1000851f0  sub     x3, x29, #0xd8
  1000851f4  mov     w4, #0x10
  1000851f8  bl      _objc_msgSend                            ; [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  1000851fc  mov     x25, x0
  100085200  ldr     x21, [sp, #0x48]
  100085204  cbz     x25, loc_10008562c                       ; if ([[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] == 0)
  100085208  ldr     x8, [sp, #0xb8]
  10008520c  ldr     x8, [x8]
  100085210  str     x8, [sp, #0x80]
  100085214  adrp    x8, #0x100417000
  100085218  nop
  10008521c  ldr     x8, [x8, #0x40]
  100085220  str     x8, [sp, #0xa0]
  100085224  adrp    x8, #0x100417000
  100085228  nop
  10008522c  ldr     x8, [x8, #0xb0]
  100085230  str     x8, [sp, #0x98]
  100085234  adrp    x8, #0x100417000
  100085238  nop
  10008523c  ldr     x8, [x8, #0xe8]
  100085240  str     x8, [sp, #0x90]
  100085244  adrp    x8, #0x100417000
  100085248  nop
  10008524c  ldr     x8, [x8, #0xf90]
  100085250  str     x8, [sp, #0x78]
  100085254  adrp    x8, #0x100418000
  100085258  nop
  10008525c  ldr     x8, [x8, #0x318]
  100085260  str     x8, [sp, #0x70]
loc_100085264:
  100085264  mov     x27, #0
loc_100085268:
  100085268  ldr     x8, [sp, #0xb8]
  10008526c  ldr     x8, [x8]
  100085270  ldr     x9, [sp, #0x80]
  100085274  cmp     x8, x9
  100085278  b.eq    loc_100085284                            ; if (x8 == x9)
  10008527c  ldr     x0, [sp, #0x60]
  100085280  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self getEnemyStatData] allKeys])
loc_100085284:
  100085284  ldr     x8, [sp, #0xb0]
  100085288  ldr     x19, [x8, x27, lsl #3]
  10008528c  mov     x0, x21
  100085290  ldr     x1, [sp, #0xa0]
  100085294  mov     x2, x19
  100085298  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10008529c  mov     x29, x29
  1000852a0  bl      _objc_retainAutoreleasedReturnValue
  1000852a4  mov     x20, x0
  1000852a8  bl      _objc_release
  1000852ac  cbz     x20, loc_1000854b4                       ; if ([arg1 objectForKey:x2] == 0)
  1000852b0  mov     x0, x26
  1000852b4  ldr     x1, [sp, #0xa0]
  1000852b8  mov     x2, x19
  1000852bc  bl      _objc_msgSend                            ; [[self getEnemyStatData] objectForKey:x2]
  1000852c0  mov     x29, x29
  1000852c4  bl      _objc_retainAutoreleasedReturnValue
  1000852c8  mov     x20, x0
  1000852cc  ldr     x1, [sp, #0xa0]
  1000852d0  adrp    x2, #0x1003ba000
  1000852d4  add     x2, x2, #0x1d0                           ; @"Killed"
  1000852d8  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"]
  1000852dc  mov     x29, x29
  1000852e0  bl      _objc_retainAutoreleasedReturnValue
  1000852e4  mov     x22, x0
  1000852e8  ldr     x1, [sp, #0x98]
  1000852ec  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue]
  1000852f0  mov     x28, x0
  1000852f4  mov     x0, x22
  1000852f8  bl      _objc_release
  1000852fc  mov     x0, x20
  100085300  bl      _objc_release
  100085304  mov     x0, x26
  100085308  ldr     x1, [sp, #0xa0]
  10008530c  mov     x2, x19
  100085310  bl      _objc_msgSend                            ; [[self getEnemyStatData] objectForKey:x2]
  100085314  mov     x29, x29
  100085318  bl      _objc_retainAutoreleasedReturnValue
  10008531c  mov     x20, x0
  100085320  ldr     x1, [sp, #0xa0]
  100085324  adrp    x2, #0x1003bf000
  100085328  add     x2, x2, #0x470                           ; @"Casualty"
  10008532c  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Casualty"]
  100085330  mov     x29, x29
  100085334  bl      _objc_retainAutoreleasedReturnValue
  100085338  mov     x23, x0
  10008533c  ldr     x1, [sp, #0x98]
  100085340  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Casualty"] integerValue]
  100085344  mov     x22, x0
  100085348  mov     x0, x23
  10008534c  bl      _objc_release
  100085350  mov     x0, x20
  100085354  bl      _objc_release
  100085358  mov     x0, x21
  10008535c  ldr     x1, [sp, #0xa0]
  100085360  mov     x2, x19
  100085364  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  100085368  mov     x29, x29
  10008536c  bl      _objc_retainAutoreleasedReturnValue
  100085370  mov     x23, x0
  100085374  ldr     x1, [sp, #0xa0]
  100085378  adrp    x2, #0x1003ba000
  10008537c  add     x2, x2, #0x1d0                           ; @"Killed"
  100085380  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] objectForKey:@"Killed"]
  100085384  mov     x29, x29
  100085388  bl      _objc_retainAutoreleasedReturnValue
  10008538c  mov     x24, x0
  100085390  ldr     x1, [sp, #0x98]
  100085394  bl      _objc_msgSend                            ; [[[arg1 objectForKey:x2] objectForKey:@"Killed"] integerValue]
  100085398  mov     x20, x0
  10008539c  mov     x0, x24
  1000853a0  bl      _objc_release
  1000853a4  mov     x0, x23
  1000853a8  bl      _objc_release
  1000853ac  mov     x0, x21
  1000853b0  ldr     x1, [sp, #0xa0]
  1000853b4  mov     x2, x19
  1000853b8  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  1000853bc  mov     x29, x29
  1000853c0  bl      _objc_retainAutoreleasedReturnValue
  1000853c4  mov     x23, x0
  1000853c8  ldr     x1, [sp, #0xa0]
  1000853cc  adrp    x2, #0x1003bf000
  1000853d0  add     x2, x2, #0x470                           ; @"Casualty"
  1000853d4  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] objectForKey:@"Casualty"]
  1000853d8  mov     x26, x21
  1000853dc  mov     x29, x29
  1000853e0  bl      _objc_retainAutoreleasedReturnValue
  1000853e4  mov     x21, x0
  1000853e8  ldr     x1, [sp, #0x98]
  1000853ec  bl      _objc_msgSend                            ; [[[arg1 objectForKey:x2] objectForKey:@"Casualty"] integerValue]
  1000853f0  mov     x24, x0
  1000853f4  mov     x0, x21
  1000853f8  bl      _objc_release
  1000853fc  mov     x0, x23
  100085400  bl      _objc_release
  100085404  adrp    x8, #0x10041d000
  100085408  ldr     x23, [x8, #0xef8]                        ; class NSDictionary
  10008540c  nop
  100085410  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100085414  add     x2, x20, x28                             ; t1 = ([[[arg1 objectForKey:x2] objectForKey:@"Killed"] integerValue] + [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue])
  100085418  ldr     x1, [sp, #0x90]
  10008541c  mov     x21, x26
  100085420  ldr     x26, [sp, #0x68]
  100085424  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:t1]
  100085428  mov     x29, x29
  10008542c  bl      _objc_retainAutoreleasedReturnValue
  100085430  mov     x28, x0
  100085434  adrp    x8, #0x10041d000
  100085438  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10008543c  add     x2, x24, x22                             ; t2 = ([[[arg1 objectForKey:x2] objectForKey:@"Casualty"] integerValue] + [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Casualty"] integerValue])
  100085440  ldr     x1, [sp, #0x90]
  100085444  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:t2]
  100085448  mov     x29, x29
  10008544c  bl      _objc_retainAutoreleasedReturnValue
  100085450  mov     x20, x0
  100085454  adrp    x8, #0x1003bf000
  100085458  add     x8, x8, #0x470                           ; @"Casualty"
  10008545c  stp     x8, xzr, [sp, #0x10]
  100085460  adrp    x8, #0x1003ba000
  100085464  add     x8, x8, #0x1d0                           ; @"Killed"
  100085468  stp     x8, x20, [sp]
  10008546c  mov     x0, x23
  100085470  ldr     x1, [sp, #0x78]
  100085474  mov     x2, x28
  100085478  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:t1], @"Killed", [NSNumber numberWithInteger:t2], @"Casualty", nil]
  10008547c  mov     x29, x29
  100085480  bl      _objc_retainAutoreleasedReturnValue
  100085484  mov     x22, x0
  100085488  ldr     x0, [sp, #0x88]
  10008548c  ldr     x1, [sp, #0x70]
  100085490  mov     x2, x22
  100085494  mov     x3, x19
  100085498  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:t1], @"Killed", [NSNumber numberWithInteger:t2], @"Casualty", nil] forKey:x3]
  10008549c  mov     x0, x22
  1000854a0  bl      _objc_release
  1000854a4  mov     x0, x20
  1000854a8  bl      _objc_release
  1000854ac  mov     x0, x28
  1000854b0  b       loc_100085600
loc_1000854b4:
  1000854b4  mov     x0, x26
  1000854b8  ldr     x1, [sp, #0xa0]
  1000854bc  mov     x2, x19
  1000854c0  bl      _objc_msgSend                            ; [[self getEnemyStatData] objectForKey:x2]
  1000854c4  mov     x29, x29
  1000854c8  bl      _objc_retainAutoreleasedReturnValue
  1000854cc  mov     x20, x0
  1000854d0  ldr     x1, [sp, #0xa0]
  1000854d4  adrp    x2, #0x1003ba000
  1000854d8  add     x2, x2, #0x1d0                           ; @"Killed"
  1000854dc  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"]
  1000854e0  mov     x29, x29
  1000854e4  bl      _objc_retainAutoreleasedReturnValue
  1000854e8  mov     x23, x0
  1000854ec  ldr     x1, [sp, #0x98]
  1000854f0  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue]
  1000854f4  mov     x22, x0
  1000854f8  mov     x0, x23
  1000854fc  bl      _objc_release
  100085500  mov     x0, x20
  100085504  bl      _objc_release
  100085508  mov     x0, x26
  10008550c  ldr     x1, [sp, #0xa0]
  100085510  mov     x2, x19
  100085514  bl      _objc_msgSend                            ; [[self getEnemyStatData] objectForKey:x2]
  100085518  mov     x29, x29
  10008551c  bl      _objc_retainAutoreleasedReturnValue
  100085520  mov     x20, x0
  100085524  ldr     x1, [sp, #0xa0]
  100085528  adrp    x2, #0x1003bf000
  10008552c  add     x2, x2, #0x470                           ; @"Casualty"
  100085530  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Casualty"]
  100085534  mov     x29, x29
  100085538  bl      _objc_retainAutoreleasedReturnValue
  10008553c  mov     x23, x0
  100085540  ldr     x1, [sp, #0x98]
  100085544  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Casualty"] integerValue]
  100085548  mov     x28, x0
  10008554c  mov     x0, x23
  100085550  bl      _objc_release
  100085554  mov     x0, x20
  100085558  bl      _objc_release
  10008555c  adrp    x8, #0x10041d000
  100085560  ldr     x23, [x8, #0xef8]                        ; class NSDictionary
  100085564  nop
  100085568  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10008556c  ldr     x1, [sp, #0x90]
  100085570  mov     x2, x22
  100085574  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue]]
  100085578  mov     x29, x29
  10008557c  bl      _objc_retainAutoreleasedReturnValue
  100085580  mov     x22, x0
  100085584  adrp    x8, #0x10041d000
  100085588  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10008558c  ldr     x1, [sp, #0x90]
  100085590  mov     x2, x28
  100085594  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Casualty"] integerValue]]
  100085598  mov     x29, x29
  10008559c  bl      _objc_retainAutoreleasedReturnValue
  1000855a0  mov     x20, x0
  1000855a4  adrp    x8, #0x1003bf000
  1000855a8  add     x8, x8, #0x470                           ; @"Casualty"
  1000855ac  stp     x8, xzr, [sp, #0x10]
  1000855b0  adrp    x8, #0x1003ba000
  1000855b4  add     x8, x8, #0x1d0                           ; @"Killed"
  1000855b8  stp     x8, x20, [sp]
  1000855bc  mov     x0, x23
  1000855c0  ldr     x1, [sp, #0x78]
  1000855c4  mov     x2, x22
  1000855c8  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:[[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue]], @"Killed", [NSNumber numberWithInteger:[[[[self getEnemyStatData] objec…, @"Casualty", nil]
  1000855cc  mov     x29, x29
  1000855d0  bl      _objc_retainAutoreleasedReturnValue
  1000855d4  mov     x23, x0
  1000855d8  ldr     x0, [sp, #0x88]
  1000855dc  ldr     x1, [sp, #0x70]
  1000855e0  mov     x2, x23
  1000855e4  mov     x3, x19
  1000855e8  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithInteger:[[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue]], @"Killed", [NSNumber numberWithInteger:[[[[self getEnemyStatData] objec…, @"Casualty", nil] forKey:x3]
  1000855ec  mov     x0, x23
  1000855f0  bl      _objc_release
  1000855f4  mov     x0, x20
  1000855f8  bl      _objc_release
  1000855fc  mov     x0, x22
loc_100085600:
  100085600  bl      _objc_release
  100085604  add     x27, x27, #1
  100085608  cmp     x27, x25
  10008560c  b.lo    loc_100085268                            ; if ((x27 + 1) <u [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16])
  100085610  add     x2, sp, #0xa8
  100085614  sub     x3, x29, #0xd8
  100085618  mov     w4, #0x10
  10008561c  ldp     x1, x0, [sp, #0x58]
  100085620  bl      _objc_msgSend                            ; [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  100085624  mov     x25, x0
  100085628  cbnz    x25, loc_100085264                       ; if ([[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] != 0)
loc_10008562c:
  10008562c  str     x21, [sp, #0x48]
  100085630  ldr     x0, [sp, #0x60]
  100085634  bl      _objc_release
  100085638  adrp    x24, #0x10041d000
  10008563c  ldr     x0, [x24, #0xf38]                        ; class NSUserDefaults
  100085640  adrp    x8, #0x100416000
  100085644  nop
  100085648  ldr     x23, [x8, #0xd98]
  10008564c  mov     x1, x23
  100085650  ldr     x25, [sp, #0x40]
  100085654  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100085658  ldr     x19, [sp, #0x38]
  10008565c  mov     x29, x29
  100085660  bl      _objc_retainAutoreleasedReturnValue
  100085664  mov     x20, x0
  100085668  adrp    x8, #0x100419000
  10008566c  nop
  100085670  ldr     x1, [x8, #0xe38]
  100085674  ldr     x0, [sp, #0x50]
  100085678  bl      _objc_msgSend                            ; [self enemyStatsDataRef]
  10008567c  mov     x29, x29
  100085680  bl      _objc_retainAutoreleasedReturnValue
  100085684  mov     x21, x0
  100085688  adrp    x8, #0x100416000
  10008568c  nop
  100085690  ldr     x1, [x8, #0xdc8]
  100085694  mov     x0, x20
  100085698  ldr     x2, [sp, #0x88]
  10008569c  mov     x3, x21
  1000856a0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] init] forKey:[self enemyStatsDataRef]]
  1000856a4  mov     x0, x21
  1000856a8  bl      _objc_release
  1000856ac  mov     x0, x20
  1000856b0  bl      _objc_release
  1000856b4  ldr     x0, [sp, #0x50]
  1000856b8  mov     x1, x19
  1000856bc  bl      _objc_msgSend                            ; [self getAllUnlockedEnemies]
  1000856c0  mov     x29, x29
  1000856c4  bl      _objc_retainAutoreleasedReturnValue
  1000856c8  mov     x20, x0
  1000856cc  adrp    x8, #0x100419000
  1000856d0  nop
  1000856d4  ldr     x1, [x8, #0xe78]
  1000856d8  ldr     x21, [sp, #0x50]
  1000856dc  mov     x0, x21
  1000856e0  mov     x2, x20
  1000856e4  bl      _objc_msgSend                            ; [self setUnlockedEnemies:[self getAllUnlockedEnemies]]
  1000856e8  mov     x0, x20
  1000856ec  bl      _objc_release
  1000856f0  adrp    x8, #0x100419000
  1000856f4  nop
  1000856f8  ldr     x19, [x8, #0xe80]
  1000856fc  mov     x0, x21
  100085700  mov     x22, x21
  100085704  mov     x1, x19
  100085708  bl      _objc_msgSend                            ; [self unlockedEnemies]
  10008570c  mov     x29, x29
  100085710  bl      _objc_retainAutoreleasedReturnValue
  100085714  mov     x20, x0
  100085718  adrp    x8, #0x100419000
  10008571c  nop
  100085720  ldr     x27, [x8, #0xe88]
  100085724  mov     x1, x27
  100085728  mov     x2, x25
  10008572c  bl      _objc_msgSend                            ; [[self unlockedEnemies] removeObjectsInArray:[self getAllUnlockedEnemies]]
  100085730  mov     x0, x20
  100085734  bl      _objc_release
  100085738  mov     x0, x22
  10008573c  mov     x1, x19
  100085740  bl      _objc_msgSend                            ; [self unlockedEnemies]
  100085744  mov     x29, x29
  100085748  bl      _objc_retainAutoreleasedReturnValue
  10008574c  mov     x20, x0
  100085750  adrp    x8, #0x100416000
  100085754  nop
  100085758  ldr     x1, [x8, #0xe30]
  10008575c  str     x1, [sp, #0x80]
  100085760  bl      _objc_msgSend                            ; [[self unlockedEnemies] count]
  100085764  mov     x21, x0
  100085768  mov     x0, x20
  10008576c  bl      _objc_release
  100085770  cmp     x21, #2
  100085774  b.lo    loc_100085a70                            ; if ([[self unlockedEnemies] count] <u 2)
  100085778  adrp    x8, #0x10041d000
  10008577c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100085780  ldr     x1, [sp, #0x30]
  100085784  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100085788  ldr     x1, [sp, #0x28]
  10008578c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100085790  str     x0, [sp, #0x70]
  100085794  stp     x27, x23, [sp, #0x30]
  100085798  str     x26, [sp, #0x68]
  10008579c  mov     x26, #0
  1000857a0  adrp    x8, #0x100417000
  1000857a4  nop
  1000857a8  ldr     x28, [x8, #0xaa8]
  1000857ac  adrp    x8, #0x100416000
  1000857b0  nop
  1000857b4  ldr     x8, [x8, #0xc30]
  1000857b8  str     x8, [sp, #0xa0]
  1000857bc  adrp    x8, #0x100418000
  1000857c0  nop
  1000857c4  ldr     x8, [x8, #0x540]
  1000857c8  str     x8, [sp, #0x98]
  1000857cc  adrp    x8, #0x100416000
  1000857d0  nop
  1000857d4  ldr     x8, [x8, #0xf58]
  1000857d8  str     x8, [sp, #0x78]
  1000857dc  adrp    x8, #0x100416000
  1000857e0  nop
  1000857e4  ldr     x8, [x8, #0xd90]
  1000857e8  str     x8, [sp, #0x60]
  1000857ec  mov     w23, #1
  1000857f0  adrp    x27, #0x10041e000
  1000857f4  mov     x25, x22
  1000857f8  b       loc_100085804
loc_1000857fc:
  1000857fc  ldp     x26, x23, [sp, #0x50]
  100085800  add     x23, x23, #1
loc_100085804:
  100085804  mov     x0, x25
  100085808  mov     x1, x19
  10008580c  bl      _objc_msgSend                            ; [self unlockedEnemies]
  100085810  mov     x29, x29
  100085814  bl      _objc_retainAutoreleasedReturnValue
  100085818  mov     x20, x0
  10008581c  ldr     x1, [sp, #0x80]
  100085820  bl      _objc_msgSend                            ; [[self unlockedEnemies] count]
  100085824  sub     x21, x0, #1
  100085828  mov     x0, x20
  10008582c  bl      _objc_release
  100085830  cmp     x26, x21
  100085834  b.hs    loc_100085a2c                            ; if (x26 >=u ([[self unlockedEnemies] count] - 1))
  100085838  add     x8, x26, #1
  10008583c  mov     x21, x23
  100085840  stp     x8, x23, [sp, #0x50]
  100085844  b       loc_10008585c
loc_100085848:
  100085848  mov     x0, x24
  10008584c  bl      _objc_release
  100085850  mov     x0, x23
  100085854  bl      _objc_release
  100085858  add     x21, x21, #1
loc_10008585c:
  10008585c  mov     x0, x25
  100085860  mov     x1, x19
  100085864  bl      _objc_msgSend                            ; [self unlockedEnemies]
  100085868  mov     x29, x29
  10008586c  bl      _objc_retainAutoreleasedReturnValue
  100085870  mov     x20, x0
  100085874  ldr     x1, [sp, #0x80]
  100085878  bl      _objc_msgSend                            ; [[self unlockedEnemies] count]
  10008587c  mov     x22, x0
  100085880  mov     x0, x20
  100085884  bl      _objc_release
  100085888  cmp     x21, x22
  10008588c  b.hs    loc_1000857fc                            ; if (x21 >=u [[self unlockedEnemies] count])
  100085890  ldr     x0, [x27, #0x98]                         ; class ADBrickManager
  100085894  mov     x1, x28
  100085898  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10008589c  mov     x29, x29
  1000858a0  bl      _objc_retainAutoreleasedReturnValue
  1000858a4  mov     x24, x0
  1000858a8  mov     x0, x25
  1000858ac  mov     x1, x19
  1000858b0  bl      _objc_msgSend                            ; [self unlockedEnemies]
  1000858b4  mov     x29, x29
  1000858b8  bl      _objc_retainAutoreleasedReturnValue
  1000858bc  mov     x20, x0
  1000858c0  ldr     x1, [sp, #0xa0]
  1000858c4  mov     x2, x26
  1000858c8  bl      _objc_msgSend                            ; [[self unlockedEnemies] objectAtIndex:x2]
  1000858cc  mov     x29, x29
  1000858d0  bl      _objc_retainAutoreleasedReturnValue
  1000858d4  mov     x23, x0
  1000858d8  mov     x0, x24
  1000858dc  ldr     x1, [sp, #0x98]
  1000858e0  mov     x2, x23
  1000858e4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[self unlockedEnemies] objectAtIndex:x2]]
  1000858e8  mov     x29, x29
  1000858ec  bl      _objc_retainAutoreleasedReturnValue
  1000858f0  str     x0, [sp, #0x90]
  1000858f4  mov     x0, x23
  1000858f8  bl      _objc_release
  1000858fc  mov     x0, x20
  100085900  bl      _objc_release
  100085904  mov     x0, x24
  100085908  bl      _objc_release
  10008590c  ldr     x0, [x27, #0x98]                         ; class ADBrickManager
  100085910  mov     x1, x28
  100085914  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100085918  mov     x29, x29
  10008591c  bl      _objc_retainAutoreleasedReturnValue
  100085920  mov     x20, x0
  100085924  mov     x0, x25
  100085928  mov     x1, x19
  10008592c  bl      _objc_msgSend                            ; [self unlockedEnemies]
  100085930  mov     x29, x29
  100085934  bl      _objc_retainAutoreleasedReturnValue
  100085938  mov     x23, x0
  10008593c  ldr     x1, [sp, #0xa0]
  100085940  mov     x2, x21
  100085944  bl      _objc_msgSend                            ; [[self unlockedEnemies] objectAtIndex:x2]
  100085948  mov     x22, x21
  10008594c  mov     x21, x19
  100085950  mov     x19, x27
  100085954  mov     x27, x28
  100085958  mov     x28, x26
  10008595c  mov     x26, x25
  100085960  mov     x29, x29
  100085964  bl      _objc_retainAutoreleasedReturnValue
  100085968  mov     x25, x0
  10008596c  mov     x0, x20
  100085970  ldr     x1, [sp, #0x98]
  100085974  mov     x2, x25
  100085978  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[self unlockedEnemies] objectAtIndex:x2]]
  10008597c  mov     x29, x29
  100085980  bl      _objc_retainAutoreleasedReturnValue
  100085984  mov     x24, x0
  100085988  mov     x0, x25
  10008598c  bl      _objc_release
  100085990  mov     x0, x23
  100085994  bl      _objc_release
  100085998  mov     x0, x20
  10008599c  bl      _objc_release
  1000859a0  ldr     x23, [sp, #0x90]
  1000859a4  mov     x0, x23
  1000859a8  ldr     x1, [sp, #0x78]
  1000859ac  mov     x2, x24
  1000859b0  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[self unlockedEnemies] objectAtIndex:x2]] isEqualToString:[[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[self unlockedEnemies] objectAtIndex:x2]]]
  1000859b4  mov     x25, x26
  1000859b8  mov     x26, x28
  1000859bc  mov     x28, x27
  1000859c0  mov     x27, x19
  1000859c4  mov     x19, x21
  1000859c8  mov     x21, x22
  1000859cc  cbz     w0, loc_100085848                        ; if ([[[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[self unlockedEnemies] objectAtIndex:x2]] isEqualToString:[[ADBrickManager sharedBrickManager] displayNameForEnemyWithName:[[self unlockedEnemies] objectAtIndex:x2]]] == 0)
  1000859d0  mov     x0, x25
  1000859d4  mov     x1, x19
  1000859d8  bl      _objc_msgSend                            ; [self unlockedEnemies]
  1000859dc  mov     x29, x29
  1000859e0  bl      _objc_retainAutoreleasedReturnValue
  1000859e4  mov     x20, x0
  1000859e8  ldr     x1, [sp, #0xa0]
  1000859ec  mov     x2, x21
  1000859f0  bl      _objc_msgSend                            ; [[self unlockedEnemies] objectAtIndex:x2]
  1000859f4  mov     x22, x23
  1000859f8  mov     x29, x29
  1000859fc  bl      _objc_retainAutoreleasedReturnValue
  100085a00  mov     x23, x0
  100085a04  ldr     x0, [sp, #0x70]
  100085a08  ldr     x1, [sp, #0x60]
  100085a0c  mov     x2, x23
  100085a10  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:[[self unlockedEnemies] objectAtIndex:x2]]
  100085a14  mov     x0, x23
  100085a18  bl      _objc_release
  100085a1c  mov     x0, x20
  100085a20  bl      _objc_release
  100085a24  mov     x23, x22
  100085a28  b       loc_100085848
loc_100085a2c:
  100085a2c  mov     x0, x25
  100085a30  mov     x1, x19
  100085a34  bl      _objc_msgSend                            ; [self unlockedEnemies]
  100085a38  mov     x29, x29
  100085a3c  bl      _objc_retainAutoreleasedReturnValue
  100085a40  mov     x20, x0
  100085a44  ldr     x1, [sp, #0x30]
  100085a48  ldp     x26, x27, [sp, #0x68]
  100085a4c  mov     x2, x27
  100085a50  ldr     x25, [sp, #0x40]
  100085a54  bl      _objc_msgSend                            ; [[self unlockedEnemies] removeObjectsInArray:[[NSMutableArray alloc] init]]
  100085a58  ldr     x23, [sp, #0x38]
  100085a5c  adrp    x24, #0x10041d000
  100085a60  mov     x0, x20
  100085a64  bl      _objc_release
  100085a68  mov     x0, x27
  100085a6c  bl      _objc_release
loc_100085a70:
  100085a70  ldr     x0, [x24, #0xf38]                        ; class NSUserDefaults
  100085a74  mov     x1, x23
  100085a78  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100085a7c  mov     x29, x29
  100085a80  bl      _objc_retainAutoreleasedReturnValue
  100085a84  mov     x20, x0
  100085a88  adrp    x8, #0x100416000
  100085a8c  nop
  100085a90  ldr     x1, [x8, #0xdd8]
  100085a94  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100085a98  mov     x0, x20
  100085a9c  bl      _objc_release
  100085aa0  ldr     x0, [sp, #0x88]
  100085aa4  bl      _objc_release
  100085aa8  mov     x0, x26
  100085aac  bl      _objc_release
  100085ab0  mov     x0, x25
  100085ab4  bl      _objc_release
  100085ab8  ldr     x0, [sp, #0x48]
  100085abc  bl      _objc_release
  100085ac0  ldur    x8, [x29, #-0x58]
  100085ac4  adrp    x9, #0x1003b0000
  100085ac8  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100085acc  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100085ad0  sub     x8, x9, x8
  100085ad4  cbnz    x8, loc_100085af8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100085ad8  sub     sp, x29, #0x50
  100085adc  ldp     x29, x30, [sp, #0x50]
  100085ae0  ldp     x20, x19, [sp, #0x40]
  100085ae4  ldp     x22, x21, [sp, #0x30]
  100085ae8  ldp     x24, x23, [sp, #0x20]
  100085aec  ldp     x26, x25, [sp, #0x10]
  100085af0  ldp     x28, x27, [sp], #0x60
  100085af4  ret
loc_100085af8:
  100085af8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100085afc  mov     x19, x0
  100085b00  b       loc_100085c8c
loc_100085b04:
  100085b04  mov     x19, x0
  100085b08  ldp     x26, x27, [sp, #0x68]
  100085b0c  ldp     x25, x21, [sp, #0x40]
  100085b10  b       loc_100085d18
  100085b14  mov     x19, x0
  100085b18  ldp     x25, x21, [sp, #0x40]
  100085b1c  ldr     x26, [sp, #0x68]
  100085b20  b       loc_100085d04
loc_100085b24:
  100085b24  mov     x19, x0
  100085b28  mov     x0, x20
  100085b2c  bl      _objc_release
  100085b30  ldp     x25, x21, [sp, #0x40]
  100085b34  ldp     x26, x27, [sp, #0x68]
  100085b38  b       loc_100085d18
  100085b3c  mov     x19, x0
  100085b40  ldp     x25, x21, [sp, #0x40]
  100085b44  ldp     x26, x27, [sp, #0x68]
  100085b48  b       loc_100085b74
  100085b4c  mov     x19, x0
  100085b50  b       loc_100085b60
  100085b54  mov     x19, x0
  100085b58  mov     x0, x23
  100085b5c  bl      _objc_release
loc_100085b60:
  100085b60  ldr     x21, [sp, #0x48]
  100085b64  ldp     x26, x27, [sp, #0x68]
  100085b68  mov     x0, x20
  100085b6c  bl      _objc_release
  100085b70  ldr     x25, [sp, #0x40]
loc_100085b74:
  100085b74  mov     x0, x24
  100085b78  bl      _objc_release
  100085b7c  b       loc_100085d18
  100085b80  mov     x19, x0
  100085b84  ldp     x25, x21, [sp, #0x40]
  100085b88  ldp     x26, x27, [sp, #0x68]
  100085b8c  ldr     x23, [sp, #0x90]
  100085b90  b       loc_100085d10
  100085b94  mov     x19, x0
  100085b98  ldp     x25, x21, [sp, #0x40]
  100085b9c  ldp     x26, x27, [sp, #0x68]
  100085ba0  b       loc_100085bc8
  100085ba4  mov     x19, x0
  100085ba8  b       loc_100085bb8
  100085bac  mov     x19, x0
  100085bb0  mov     x0, x25
  100085bb4  bl      _objc_release
loc_100085bb8:
  100085bb8  ldp     x25, x21, [sp, #0x40]
  100085bbc  ldp     x26, x27, [sp, #0x68]
  100085bc0  mov     x0, x23
  100085bc4  bl      _objc_release
loc_100085bc8:
  100085bc8  mov     x0, x20
  100085bcc  bl      _objc_release
  100085bd0  ldr     x23, [sp, #0x90]
  100085bd4  b       loc_100085d10
  100085bd8  mov     x19, x0
  100085bdc  b       loc_100085c84
  100085be0  mov     x19, x0
  100085be4  mov     x0, x22
  100085be8  b       loc_100085c80
  100085bec  mov     x19, x0
  100085bf0  b       loc_100085c84
  100085bf4  b       loc_100085c78
  100085bf8  mov     x19, x0
  100085bfc  b       loc_100085c2c
  100085c00  mov     x19, x0
  100085c04  mov     x0, x24
  100085c08  bl      _objc_release
  100085c0c  b       loc_100085c2c
  100085c10  mov     x19, x0
  100085c14  b       loc_100085c2c
  100085c18  mov     x19, x0
  100085c1c  mov     x0, x21
  100085c20  bl      _objc_release
  100085c24  mov     x21, x26
  100085c28  ldr     x26, [sp, #0x68]
loc_100085c2c:
  100085c2c  mov     x0, x23
  100085c30  b       loc_100085c88
  100085c34  mov     x19, x0
  100085c38  b       loc_100085c58
  100085c3c  mov     x19, x0
  100085c40  b       loc_100085c50
  100085c44  mov     x19, x0
  100085c48  mov     x0, x22
  100085c4c  bl      _objc_release
loc_100085c50:
  100085c50  mov     x0, x20
  100085c54  bl      _objc_release
loc_100085c58:
  100085c58  ldr     x25, [sp, #0x40]
  100085c5c  mov     x0, x28
  100085c60  b       loc_100085cc4
  100085c64  mov     x19, x0
  100085c68  b       loc_100085c84
  100085c6c  b       loc_100085c78
  100085c70  mov     x19, x0
  100085c74  b       loc_100085c84
loc_100085c78:
  100085c78  mov     x19, x0
  100085c7c  mov     x0, x23
loc_100085c80:
  100085c80  bl      _objc_release
loc_100085c84:
  100085c84  mov     x0, x20
loc_100085c88:
  100085c88  bl      _objc_release
loc_100085c8c:
  100085c8c  ldr     x25, [sp, #0x40]
  100085c90  b       loc_100085cc8
  100085c94  mov     x19, x0
  100085c98  ldr     x25, [sp, #0x40]
  100085c9c  b       loc_100085cc0
  100085ca0  mov     x19, x0
  100085ca4  b       loc_100085cb4
  100085ca8  mov     x19, x0
  100085cac  mov     x0, x23
  100085cb0  bl      _objc_release
loc_100085cb4:
  100085cb4  ldr     x25, [sp, #0x40]
  100085cb8  mov     x0, x20
  100085cbc  bl      _objc_release
loc_100085cc0:
  100085cc0  mov     x0, x22
loc_100085cc4:
  100085cc4  bl      _objc_release
loc_100085cc8:
  100085cc8  ldr     x0, [sp, #0x60]
  100085ccc  bl      _objc_release
  100085cd0  b       loc_100085d20
  100085cd4  mov     x19, x0
  100085cd8  ldp     x25, x21, [sp, #0x40]
  100085cdc  ldr     x26, [sp, #0x68]
  100085ce0  b       loc_100085cfc
  100085ce4  mov     x19, x0
  100085ce8  mov     x0, x23
  100085cec  bl      _objc_release
  100085cf0  ldp     x25, x21, [sp, #0x40]
  100085cf4  ldr     x26, [sp, #0x68]
  100085cf8  mov     x23, x22
loc_100085cfc:
  100085cfc  mov     x0, x20
  100085d00  bl      _objc_release
loc_100085d04:
  100085d04  ldr     x27, [sp, #0x70]
  100085d08  mov     x0, x24
  100085d0c  bl      _objc_release
loc_100085d10:
  100085d10  mov     x0, x23
  100085d14  bl      _objc_release
loc_100085d18:
  100085d18  mov     x0, x27
  100085d1c  bl      _objc_release
loc_100085d20:
  100085d20  ldr     x0, [sp, #0x88]
  100085d24  bl      _objc_release
loc_100085d28:
  100085d28  mov     x0, x26
  100085d2c  bl      _objc_release
loc_100085d30:
  100085d30  mov     x0, x25
  100085d34  bl      _objc_release
loc_100085d38:
  100085d38  mov     x0, x21
  100085d3c  bl      _objc_release
  100085d40  mov     x0, x19
  100085d44  bl      __Unwind_Resume                          ; Unwind_Resume()
  100085d48  mov     x19, x0
  100085d4c  b       loc_100085c8c
  100085d50  b       loc_100085b04
  100085d54  b       loc_100085b24
  100085d58  mov     x19, x0
  100085d5c  b       loc_100085db4
  100085d60  mov     x19, x0
  100085d64  ldr     x21, [sp, #0x48]
  100085d68  b       loc_100085d28
  100085d6c  mov     x19, x0
  100085d70  b       loc_100085d38
  100085d74  mov     x19, x0
  100085d78  b       loc_100085d30
  100085d7c  mov     x19, x0
  100085d80  ldr     x21, [sp, #0x48]
  100085d84  b       loc_100085c8c
  100085d88  b       loc_100085da8
  100085d8c  mov     x19, x0
  100085d90  mov     x0, x21
  100085d94  bl      _objc_release
  100085d98  b       loc_100085dac
  100085d9c  b       loc_100085da8
  100085da0  b       loc_100085da8
  100085da4  b       loc_100085da8
loc_100085da8:
  100085da8  mov     x19, x0
loc_100085dac:
  100085dac  mov     x0, x20
  100085db0  bl      _objc_release
loc_100085db4:
  100085db4  ldr     x21, [sp, #0x48]
  100085db8  b       loc_100085d20
  100085dbc  b       loc_100085b04
  100085dc0  mov     x19, x0
  100085dc4  mov     x0, x20
  100085dc8  bl      _objc_release
  100085dcc  ldr     x21, [sp, #0x48]
  100085dd0  b       loc_100085d18

; ======================================================================
; -[ADPersistentStats getAllUnlockedEnemies]
; address 0x100085dd4  size 508  kind objc
; ======================================================================
  100085dd4  stp     x28, x27, [sp, #-0x60]!
  100085dd8  stp     x26, x25, [sp, #0x10]
  100085ddc  stp     x24, x23, [sp, #0x20]
  100085de0  stp     x22, x21, [sp, #0x30]
  100085de4  stp     x20, x19, [sp, #0x40]
  100085de8  stp     x29, x30, [sp, #0x50]
  100085dec  add     x29, sp, #0x50
  100085df0  sub     sp, sp, #0xd0
  100085df4  mov     x20, x0
  100085df8  adrp    x8, #0x1003b0000
  100085dfc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100085e00  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100085e04  stur    x8, [x29, #-0x58]
  100085e08  adrp    x8, #0x10041d000
  100085e0c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  100085e10  adrp    x8, #0x100416000
  100085e14  nop
  100085e18  ldr     x1, [x8, #0xac8]
  100085e1c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  100085e20  adrp    x8, #0x100416000
  100085e24  nop
  100085e28  ldr     x1, [x8, #0xab8]
  100085e2c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  100085e30  mov     x19, x0
  100085e34  stp     xzr, xzr, [sp, #0x38]
  100085e38  stp     xzr, xzr, [sp, #0x28]
  100085e3c  stp     xzr, xzr, [sp, #0x18]
  100085e40  stp     xzr, xzr, [sp, #8]
  100085e44  adrp    x8, #0x100419000
  100085e48  nop
  100085e4c  ldr     x1, [x8, #0x9d0]
  100085e50  mov     x0, x20
  100085e54  bl      _objc_msgSend                            ; [self getEnemyStatData]
  100085e58  mov     x29, x29
  100085e5c  bl      _objc_retainAutoreleasedReturnValue
  100085e60  mov     x22, x0
  100085e64  adrp    x8, #0x100417000
  100085e68  nop
  100085e6c  ldr     x1, [x8, #0x248]
  100085e70  bl      _objc_msgSend                            ; [[self getEnemyStatData] allKeys]
  100085e74  mov     x29, x29
  100085e78  bl      _objc_retainAutoreleasedReturnValue
  100085e7c  mov     x21, x0
  100085e80  mov     x0, x22
  100085e84  bl      _objc_release
  100085e88  adrp    x8, #0x100416000
  100085e8c  nop
  100085e90  ldr     x22, [x8, #0xe00]
  100085e94  add     x2, sp, #8
  100085e98  add     x3, sp, #0x48
  100085e9c  mov     w4, #0x10
  100085ea0  mov     x0, x21
  100085ea4  mov     x1, x22
  100085ea8  bl      _objc_msgSend                            ; [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100085eac  mov     x23, x0
  100085eb0  cbz     x23, loc_100085f4c                       ; if ([[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100085eb4  ldr     x8, [sp, #0x18]
  100085eb8  ldr     x28, [x8]
  100085ebc  adrp    x8, #0x100418000
  100085ec0  nop
  100085ec4  ldr     x24, [x8, #0x550]
  100085ec8  adrp    x8, #0x100416000
  100085ecc  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  100085ed0  ldr     x25, [x8]
loc_100085ed4:
  100085ed4  mov     x27, #0
loc_100085ed8:
  100085ed8  ldr     x8, [sp, #0x18]
  100085edc  ldr     x8, [x8]
  100085ee0  cmp     x8, x28
  100085ee4  b.eq    loc_100085ef0                            ; if (x8 == x28)
  100085ee8  mov     x0, x21
  100085eec  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self getEnemyStatData] allKeys])
loc_100085ef0:
  100085ef0  ldr     x8, [sp, #0x10]
  100085ef4  ldr     x26, [x8, x27, lsl #3]
  100085ef8  mov     x0, x20
  100085efc  mov     x1, x24
  100085f00  mov     x2, x26
  100085f04  bl      _objc_msgSend                            ; [self getKillRequirementForEnemyWithName:x2]
  100085f08  cmp     w0, #0
  100085f0c  b.gt    loc_100085f20                            ; if ([self getKillRequirementForEnemyWithName:x2] > 0)
  100085f10  mov     x0, x19
  100085f14  mov     x1, x25
  100085f18  mov     x2, x26
  100085f1c  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
loc_100085f20:
  100085f20  add     x27, x27, #1
  100085f24  cmp     x27, x23
  100085f28  b.lo    loc_100085ed8                            ; if ((x27 + 1) <u [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100085f2c  add     x2, sp, #8
  100085f30  add     x3, sp, #0x48
  100085f34  mov     w4, #0x10
  100085f38  mov     x0, x21
  100085f3c  mov     x1, x22
  100085f40  bl      _objc_msgSend                            ; [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100085f44  mov     x23, x0
  100085f48  cbnz    x23, loc_100085ed4                       ; if ([[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100085f4c:
  100085f4c  mov     x0, x21
  100085f50  bl      _objc_release
  100085f54  ldur    x8, [x29, #-0x58]
  100085f58  adrp    x9, #0x1003b0000
  100085f5c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100085f60  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100085f64  sub     x8, x9, x8
  100085f68  cbnz    x8, loc_100085f90                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100085f6c  mov     x0, x19
  100085f70  sub     sp, x29, #0x50
  100085f74  ldp     x29, x30, [sp, #0x50]
  100085f78  ldp     x20, x19, [sp, #0x40]
  100085f7c  ldp     x22, x21, [sp, #0x30]
  100085f80  ldp     x24, x23, [sp, #0x20]
  100085f84  ldp     x26, x25, [sp, #0x10]
  100085f88  ldp     x28, x27, [sp], #0x60
  100085f8c  b       _objc_autoreleaseReturnValue
loc_100085f90:
  100085f90  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100085f94:
  100085f94  mov     x20, x0
  100085f98  mov     x0, x21
  100085f9c  bl      _objc_release
loc_100085fa0:
  100085fa0  mov     x0, x19
  100085fa4  bl      _objc_release
  100085fa8  mov     x0, x20
  100085fac  bl      __Unwind_Resume                          ; Unwind_Resume()
  100085fb0  b       loc_100085f94
  100085fb4  mov     x20, x0
  100085fb8  b       loc_100085fa0
  100085fbc  mov     x20, x0
  100085fc0  mov     x0, x22
  100085fc4  bl      _objc_release
  100085fc8  b       loc_100085fa0
  100085fcc  b       loc_100085f94

; ======================================================================
; -[ADPersistentStats getNextUnlockEnemy]
; address 0x100085fd0  size 528  kind objc
; ======================================================================
  100085fd0  stp     x28, x27, [sp, #-0x60]!
  100085fd4  stp     x26, x25, [sp, #0x10]
  100085fd8  stp     x24, x23, [sp, #0x20]
  100085fdc  stp     x22, x21, [sp, #0x30]
  100085fe0  stp     x20, x19, [sp, #0x40]
  100085fe4  stp     x29, x30, [sp, #0x50]
  100085fe8  add     x29, sp, #0x50
  100085fec  sub     sp, sp, #0xe0
  100085ff0  mov     x19, x0
  100085ff4  adrp    x8, #0x1003b0000
  100085ff8  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100085ffc  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100086000  stur    x8, [x29, #-0x58]
  100086004  stp     xzr, xzr, [sp, #0x48]
  100086008  stp     xzr, xzr, [sp, #0x38]
  10008600c  stp     xzr, xzr, [sp, #0x28]
  100086010  stp     xzr, xzr, [sp, #0x18]
  100086014  adrp    x8, #0x100419000
  100086018  nop
  10008601c  ldr     x1, [x8, #0x9d0]
  100086020  bl      _objc_msgSend                            ; [self getEnemyStatData]
  100086024  mov     x29, x29
  100086028  bl      _objc_retainAutoreleasedReturnValue
  10008602c  mov     x21, x0
  100086030  adrp    x8, #0x100417000
  100086034  nop
  100086038  ldr     x1, [x8, #0x248]
  10008603c  bl      _objc_msgSend                            ; [[self getEnemyStatData] allKeys]
  100086040  mov     x29, x29
  100086044  bl      _objc_retainAutoreleasedReturnValue
  100086048  mov     x20, x0
  10008604c  mov     x0, x21
  100086050  bl      _objc_release
  100086054  adrp    x8, #0x100416000
  100086058  nop
  10008605c  ldr     x1, [x8, #0xe00]
  100086060  str     x1, [sp, #0x10]
  100086064  add     x2, sp, #0x18
  100086068  add     x3, sp, #0x58
  10008606c  mov     w4, #0x10
  100086070  mov     x0, x20
  100086074  bl      _objc_msgSend                            ; [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  100086078  mov     x24, x0
  10008607c  mov     x21, #0
  100086080  cbz     x24, loc_100086154                       ; if ([[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  100086084  ldr     x8, [sp, #0x28]
  100086088  ldr     x28, [x8]
  10008608c  adrp    x8, #0x100418000
  100086090  add     x8, x8, #0x550                           ; &@selector(getKillRequirementForEnemyWithName:)
  100086094  ldr     x23, [x8]
  100086098  mov     w25, #0x7fffffff
loc_10008609c:
  10008609c  mov     x27, #0
loc_1000860a0:
  1000860a0  ldr     x8, [sp, #0x28]
  1000860a4  ldr     x8, [x8]
  1000860a8  cmp     x8, x28
  1000860ac  b.eq    loc_1000860bc                            ; if (x8 == x28)
  1000860b0  mov     x22, x21
  1000860b4  mov     x0, x20
  1000860b8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self getEnemyStatData] allKeys])
loc_1000860bc:
  1000860bc  mov     x22, x21
  1000860c0  ldr     x8, [sp, #0x20]
  1000860c4  ldr     x26, [x8, x27, lsl #3]
  1000860c8  mov     x0, x19
  1000860cc  mov     x1, x23
  1000860d0  mov     x2, x26
  1000860d4  bl      _objc_msgSend                            ; [self getKillRequirementForEnemyWithName:x2]
  1000860d8  cmp     w0, #1
  1000860dc  b.lt    loc_100086128                            ; if ([self getKillRequirementForEnemyWithName:x2] < 1)
  1000860e0  mov     x22, x21
  1000860e4  mov     x0, x19
  1000860e8  mov     x1, x23
  1000860ec  mov     x2, x26
  1000860f0  bl      _objc_msgSend                            ; [self getKillRequirementForEnemyWithName:x2]
  1000860f4  cmp     w0, w25
  1000860f8  b.ge    loc_100086128                            ; if ([self getKillRequirementForEnemyWithName:x2] >= w25)
  1000860fc  mov     x22, x26
  100086100  mov     x0, x26
  100086104  bl      _objc_retain
  100086108  mov     x0, x21
  10008610c  bl      _objc_release
  100086110  mov     x0, x19
  100086114  mov     x1, x23
  100086118  mov     x2, x26
  10008611c  bl      _objc_msgSend                            ; [self getKillRequirementForEnemyWithName:x2]
  100086120  mov     x25, x0
  100086124  mov     x21, x26
loc_100086128:
  100086128  add     x27, x27, #1
  10008612c  cmp     x27, x24
  100086130  b.lo    loc_1000860a0                            ; if ((x27 + 1) <u [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16])
  100086134  add     x2, sp, #0x18
  100086138  add     x3, sp, #0x58
  10008613c  mov     w4, #0x10
  100086140  mov     x0, x20
  100086144  ldr     x1, [sp, #0x10]
  100086148  bl      _objc_msgSend                            ; [[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  10008614c  mov     x24, x0
  100086150  cbnz    x24, loc_10008609c                       ; if ([[[self getEnemyStatData] allKeys] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_100086154:
  100086154  mov     x0, x20
  100086158  bl      _objc_release
  10008615c  ldur    x8, [x29, #-0x58]
  100086160  adrp    x9, #0x1003b0000
  100086164  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100086168  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  10008616c  sub     x8, x9, x8
  100086170  cbnz    x8, loc_100086198                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100086174  mov     x0, x21
  100086178  sub     sp, x29, #0x50
  10008617c  ldp     x29, x30, [sp, #0x50]
  100086180  ldp     x20, x19, [sp, #0x40]
  100086184  ldp     x22, x21, [sp, #0x30]
  100086188  ldp     x24, x23, [sp, #0x20]
  10008618c  ldp     x26, x25, [sp, #0x10]
  100086190  ldp     x28, x27, [sp], #0x60
  100086194  b       _objc_autoreleaseReturnValue
loc_100086198:
  100086198  bl      ___stack_chk_fail                        ; stack_chk_fail()
  10008619c  mov     x19, x0
  1000861a0  mov     x21, x22
loc_1000861a4:
  1000861a4  mov     x0, x20
  1000861a8  bl      _objc_release
loc_1000861ac:
  1000861ac  mov     x0, x21
  1000861b0  bl      _objc_release
loc_1000861b4:
  1000861b4  mov     x0, x19
  1000861b8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000861bc  mov     x19, x0
  1000861c0  b       loc_1000861a4
  1000861c4  mov     x19, x0
  1000861c8  b       loc_1000861b4
  1000861cc  mov     x19, x0
  1000861d0  b       loc_1000861ac
  1000861d4  mov     x19, x0
  1000861d8  mov     x21, #0
  1000861dc  b       loc_1000861a4

; ======================================================================
; -[ADPersistentStats saveEndlessModeKills:]
; address 0x1000861e0  size 724  kind objc
; ======================================================================
  1000861e0  stp     x28, x27, [sp, #-0x60]!
  1000861e4  stp     x26, x25, [sp, #0x10]
  1000861e8  stp     x24, x23, [sp, #0x20]
  1000861ec  stp     x22, x21, [sp, #0x30]
  1000861f0  stp     x20, x19, [sp, #0x40]
  1000861f4  stp     x29, x30, [sp, #0x50]
  1000861f8  add     x29, sp, #0x50
  1000861fc  mov     x21, x2
  100086200  mov     x20, x0
  100086204  adrp    x8, #0x10041d000
  100086208  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  10008620c  adrp    x8, #0x100416000
  100086210  nop
  100086214  ldr     x1, [x8, #0xac8]
  100086218  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  10008621c  mov     x19, x0
  100086220  adrp    x8, #0x100419000
  100086224  nop
  100086228  ldr     x1, [x8, #0xe90]
  10008622c  mov     x0, x20
  100086230  bl      _objc_msgSend                            ; [self getTotalStatData]
  100086234  mov     x29, x29
  100086238  bl      _objc_retainAutoreleasedReturnValue
  10008623c  mov     x22, x0
  100086240  adrp    x8, #0x100416000
  100086244  nop
  100086248  ldr     x1, [x8, #0xd80]
  10008624c  mov     x0, x19
  100086250  mov     x2, x22
  100086254  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100086258  mov     x19, x0
  10008625c  mov     x0, x22
  100086260  bl      _objc_release
  100086264  adrp    x8, #0x100417000
  100086268  nop
  10008626c  ldr     x22, [x8, #0x40]
  100086270  adrp    x2, #0x1003bf000
  100086274  add     x2, x2, #0xa10                           ; @"Total kills"
  100086278  mov     x0, x19
  10008627c  mov     x1, x22
  100086280  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total kills"]
  100086284  mov     x29, x29
  100086288  bl      _objc_retainAutoreleasedReturnValue
  10008628c  mov     x24, x0
  100086290  adrp    x8, #0x100417000
  100086294  nop
  100086298  ldr     x23, [x8, #0x110]
  10008629c  mov     x1, x23
  1000862a0  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total kills"] intValue]
  1000862a4  mov     x25, x0
  1000862a8  mov     x0, x24
  1000862ac  bl      _objc_release
  1000862b0  adrp    x27, #0x10041d000
  1000862b4  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  1000862b8  add     w2, w25, w21                             ; t1 = ([[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total kills"] intValue] + arg1)
  1000862bc  adrp    x8, #0x100416000
  1000862c0  nop
  1000862c4  ldr     x24, [x8, #0xec0]
  1000862c8  mov     x1, x24
  1000862cc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  1000862d0  mov     x29, x29
  1000862d4  bl      _objc_retainAutoreleasedReturnValue
  1000862d8  mov     x26, x0
  1000862dc  adrp    x8, #0x100418000
  1000862e0  nop
  1000862e4  ldr     x25, [x8, #0x318]
  1000862e8  adrp    x3, #0x1003bf000
  1000862ec  add     x3, x3, #0xa10                           ; @"Total kills"
  1000862f0  mov     x0, x19
  1000862f4  mov     x1, x25
  1000862f8  mov     x2, x26
  1000862fc  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t1] forKey:@"Total kills"]
  100086300  mov     x0, x26
  100086304  bl      _objc_release
  100086308  adrp    x2, #0x1003bf000
  10008630c  add     x2, x2, #0xa30                           ; @"Best number of kills"
  100086310  mov     x0, x19
  100086314  mov     x1, x22
  100086318  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Best number of kills"]
  10008631c  mov     x29, x29
  100086320  bl      _objc_retainAutoreleasedReturnValue
  100086324  mov     x22, x0
  100086328  mov     x1, x23
  10008632c  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Best number of kills"] intValue]
  100086330  mov     x23, x0
  100086334  mov     x0, x22
  100086338  bl      _objc_release
  10008633c  cmp     w23, w21
  100086340  b.ge    loc_100086380                            ; if ([[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Best number of kills"] intValu… >= arg1)
  100086344  ldr     x0, [x27, #0xf68]                        ; class NSNumber
  100086348  mov     x1, x24
  10008634c  mov     x2, x21
  100086350  bl      _objc_msgSend                            ; [NSNumber numberWithInt:arg1]
  100086354  mov     x29, x29
  100086358  bl      _objc_retainAutoreleasedReturnValue
  10008635c  mov     x21, x0
  100086360  adrp    x3, #0x1003bf000
  100086364  add     x3, x3, #0xa30                           ; @"Best number of kills"
  100086368  mov     x0, x19
  10008636c  mov     x1, x25
  100086370  mov     x2, x21
  100086374  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:arg1] forKey:@"Best number of kills"]
  100086378  mov     x0, x21
  10008637c  bl      _objc_release
loc_100086380:
  100086380  adrp    x24, #0x10041d000
  100086384  ldr     x0, [x24, #0xf38]                        ; class NSUserDefaults
  100086388  adrp    x8, #0x100416000
  10008638c  nop
  100086390  ldr     x21, [x8, #0xd98]
  100086394  mov     x1, x21
  100086398  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10008639c  mov     x29, x29
  1000863a0  bl      _objc_retainAutoreleasedReturnValue
  1000863a4  mov     x22, x0
  1000863a8  adrp    x8, #0x100419000
  1000863ac  nop
  1000863b0  ldr     x1, [x8, #0xe48]
  1000863b4  mov     x0, x20
  1000863b8  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  1000863bc  mov     x29, x29
  1000863c0  bl      _objc_retainAutoreleasedReturnValue
  1000863c4  mov     x23, x0
  1000863c8  adrp    x8, #0x100416000
  1000863cc  nop
  1000863d0  ldr     x1, [x8, #0xdc8]
  1000863d4  mov     x0, x22
  1000863d8  mov     x2, x19
  1000863dc  mov     x3, x23
  1000863e0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  1000863e4  mov     x0, x23
  1000863e8  bl      _objc_release
  1000863ec  mov     x0, x22
  1000863f0  bl      _objc_release
  1000863f4  ldr     x0, [x24, #0xf38]                        ; class NSUserDefaults
  1000863f8  mov     x1, x21
  1000863fc  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086400  mov     x29, x29
  100086404  bl      _objc_retainAutoreleasedReturnValue
  100086408  mov     x21, x0
  10008640c  adrp    x8, #0x100416000
  100086410  nop
  100086414  ldr     x1, [x8, #0xdd8]
  100086418  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10008641c  mov     x0, x21
  100086420  bl      _objc_release
  100086424  mov     x0, x19
  100086428  ldp     x29, x30, [sp, #0x50]
  10008642c  ldp     x20, x19, [sp, #0x40]
  100086430  ldp     x22, x21, [sp, #0x30]
  100086434  ldp     x24, x23, [sp, #0x20]
  100086438  ldp     x26, x25, [sp, #0x10]
  10008643c  ldp     x28, x27, [sp], #0x60
  100086440  b       _objc_release
  100086444  mov     x20, x0
  100086448  b       loc_1000864a4
  10008644c  mov     x20, x0
  100086450  mov     x0, x22
  100086454  b       loc_1000864a8
  100086458  mov     x20, x0
  10008645c  mov     x0, x24
  100086460  b       loc_1000864a0
  100086464  mov     x20, x0
  100086468  mov     x0, x26
  10008646c  b       loc_1000864a0
  100086470  mov     x20, x0
  100086474  b       loc_10008648c
  100086478  mov     x20, x0
  10008647c  b       loc_10008648c
  100086480  mov     x20, x0
  100086484  mov     x0, x23
  100086488  bl      _objc_release
loc_10008648c:
  10008648c  mov     x0, x22
  100086490  b       loc_1000864a0
  100086494  b       loc_100086498
loc_100086498:
  100086498  mov     x20, x0
  10008649c  mov     x0, x21
loc_1000864a0:
  1000864a0  bl      _objc_release
loc_1000864a4:
  1000864a4  mov     x0, x19
loc_1000864a8:
  1000864a8  bl      _objc_release
  1000864ac  mov     x0, x20
  1000864b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats savePlayTimeData:AndMode:]
; address 0x1000864b4  size 1344  kind objc
; ======================================================================
  1000864b4  stp     d9, d8, [sp, #-0x70]!
  1000864b8  stp     x28, x27, [sp, #0x10]
  1000864bc  stp     x26, x25, [sp, #0x20]
  1000864c0  stp     x24, x23, [sp, #0x30]
  1000864c4  stp     x22, x21, [sp, #0x40]
  1000864c8  stp     x20, x19, [sp, #0x50]
  1000864cc  stp     x29, x30, [sp, #0x60]
  1000864d0  add     x29, sp, #0x60
  1000864d4  sub     sp, sp, #0x10
  1000864d8  mov     v8.16b, v0.16b
  1000864dc  mov     x21, x0
  1000864e0  mov     x0, x2
  1000864e4  bl      _objc_retain
  1000864e8  mov     x27, x0
  1000864ec  adrp    x8, #0x10041d000
  1000864f0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000864f4  adrp    x8, #0x100416000
  1000864f8  nop
  1000864fc  ldr     x1, [x8, #0xac8]
  100086500  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100086504  mov     x20, x0
  100086508  adrp    x8, #0x100419000
  10008650c  nop
  100086510  ldr     x1, [x8, #0xe90]
  100086514  mov     x0, x21
  100086518  bl      _objc_msgSend                            ; [self getTotalStatData]
  10008651c  mov     x29, x29
  100086520  bl      _objc_retainAutoreleasedReturnValue
  100086524  mov     x23, x0
  100086528  adrp    x8, #0x100416000
  10008652c  nop
  100086530  ldr     x1, [x8, #0xd80]
  100086534  mov     x0, x20
  100086538  mov     x2, x23
  10008653c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100086540  mov     x20, x0
  100086544  mov     x0, x23
  100086548  bl      _objc_release
  10008654c  adrp    x8, #0x100416000
  100086550  nop
  100086554  ldr     x22, [x8, #0xf58]
  100086558  adrp    x2, #0x1003bd000
  10008655c  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  100086560  mov     x0, x27
  100086564  mov     x1, x22
  100086568  bl      _objc_msgSend                            ; [arg2 isEqualToString:@"CHALLENGE"]
  10008656c  cbz     w0, loc_1000865c4                        ; if ([arg2 isEqualToString:@"CHALLENGE"] == 0)
  100086570  adrp    x8, #0x100419000
  100086574  nop
  100086578  ldr     x1, [x8, #0xe98]
  10008657c  adrp    x2, #0x1003bf000
  100086580  add     x2, x2, #0xa50                           ; @"Total play time in Challenge Mode"
  100086584  mov     x0, x21
  100086588  mov     v0.16b, v8.16b
  10008658c  bl      _objc_msgSend                            ; [self updateTotalPlayTime:arg1 WithKey:@"Total play time in Challenge Mode"]
  100086590  mov     x29, x29
  100086594  bl      _objc_retainAutoreleasedReturnValue
  100086598  mov     x23, x0
  10008659c  adrp    x8, #0x100418000
  1000865a0  nop
  1000865a4  ldr     x1, [x8, #0x318]
  1000865a8  adrp    x3, #0x1003bf000
  1000865ac  add     x3, x3, #0xa50                           ; @"Total play time in Challenge Mode"
  1000865b0  mov     x0, x20
  1000865b4  mov     x2, x23
  1000865b8  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[self updateTotalPlayTime:arg1 WithKey:@"Total play time in Challenge Mode"] forKey:@"Total play time in Challenge Mode"]
  1000865bc  b       loc_100086670
  1000865c0  b       loc_10008697c
loc_1000865c4:
  1000865c4  adrp    x2, #0x1003bd000
  1000865c8  add     x2, x2, #0xd30                           ; @"ENDLESS"
  1000865cc  mov     x0, x27
  1000865d0  mov     x1, x22
  1000865d4  bl      _objc_msgSend                            ; [arg2 isEqualToString:@"ENDLESS"]
  1000865d8  cbz     w0, loc_100086678                        ; if ([arg2 isEqualToString:@"ENDLESS"] == 0)
  1000865dc  adrp    x8, #0x100419000
  1000865e0  nop
  1000865e4  ldr     x1, [x8, #0xe98]
  1000865e8  adrp    x2, #0x1003bf000
  1000865ec  add     x2, x2, #0xa70                           ; @"Total play time in Endless Mode"
  1000865f0  mov     x0, x21
  1000865f4  mov     v0.16b, v8.16b
  1000865f8  bl      _objc_msgSend                            ; [self updateTotalPlayTime:arg1 WithKey:@"Total play time in Endless Mode"]
  1000865fc  mov     x29, x29
  100086600  bl      _objc_retainAutoreleasedReturnValue
  100086604  mov     x23, x0
  100086608  adrp    x8, #0x100418000
  10008660c  nop
  100086610  ldr     x22, [x8, #0x318]
  100086614  adrp    x3, #0x1003bf000
  100086618  add     x3, x3, #0xa70                           ; @"Total play time in Endless Mode"
  10008661c  mov     x0, x20
  100086620  mov     x1, x22
  100086624  mov     x2, x23
  100086628  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[self updateTotalPlayTime:arg1 WithKey:@"Total play time in Endless Mode"] forKey:@"Total play time in Endless Mode"]
  10008662c  adrp    x8, #0x100419000
  100086630  nop
  100086634  ldr     x1, [x8, #0xea0]
  100086638  mov     x0, x21
  10008663c  mov     v0.16b, v8.16b
  100086640  bl      _objc_msgSend                            ; [self updateLongestEndlessPlayTime:arg1]
  100086644  mov     x29, x29
  100086648  bl      _objc_retainAutoreleasedReturnValue
  10008664c  mov     x24, x0
  100086650  adrp    x3, #0x1003bf000
  100086654  add     x3, x3, #0xa90                           ; @"Longest Endless Mode"
  100086658  mov     x0, x20
  10008665c  mov     x1, x22
  100086660  mov     x2, x24
  100086664  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[self updateLongestEndlessPlayTime:arg1] forKey:@"Longest Endless Mode"]
  100086668  mov     x0, x24
  10008666c  bl      _objc_release
loc_100086670:
  100086670  mov     x0, x23
  100086674  bl      _objc_release
loc_100086678:
  100086678  adrp    x19, #0x10041d000
  10008667c  ldr     x0, [x19, #0xf38]                        ; class NSUserDefaults
  100086680  adrp    x8, #0x100416000
  100086684  nop
  100086688  ldr     x22, [x8, #0xd98]
  10008668c  mov     x1, x22
  100086690  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086694  mov     x29, x29
  100086698  bl      _objc_retainAutoreleasedReturnValue
  10008669c  mov     x24, x0
  1000866a0  adrp    x8, #0x100419000
  1000866a4  nop
  1000866a8  ldr     x1, [x8, #0xe48]
  1000866ac  mov     x0, x21
  1000866b0  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  1000866b4  mov     x29, x29
  1000866b8  bl      _objc_retainAutoreleasedReturnValue
  1000866bc  mov     x25, x0
  1000866c0  adrp    x8, #0x100416000
  1000866c4  nop
  1000866c8  ldr     x23, [x8, #0xdc8]
  1000866cc  mov     x0, x24
  1000866d0  mov     x1, x23
  1000866d4  mov     x2, x20
  1000866d8  mov     x3, x25
  1000866dc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  1000866e0  mov     x0, x25
  1000866e4  bl      _objc_release
  1000866e8  mov     x0, x24
  1000866ec  bl      _objc_release
  1000866f0  ldr     x0, [x19, #0xf38]                        ; class NSUserDefaults
  1000866f4  mov     x1, x22
  1000866f8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000866fc  mov     x29, x29
  100086700  bl      _objc_retainAutoreleasedReturnValue
  100086704  mov     x25, x0
  100086708  adrp    x8, #0x100416000
  10008670c  nop
  100086710  ldr     x24, [x8, #0xdd8]
  100086714  mov     x1, x24
  100086718  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  10008671c  mov     x0, x25
  100086720  bl      _objc_release
  100086724  adrp    x8, #0x100419000
  100086728  nop
  10008672c  ldr     x1, [x8, #0xea8]
  100086730  mov     x0, x21
  100086734  bl      _objc_msgSend                            ; [self getTotalTimePlayed]
  100086738  mov     x25, x0
  10008673c  ldr     x0, [x19, #0xf38]                        ; class NSUserDefaults
  100086740  mov     x1, x22
  100086744  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086748  str     x27, [sp, #8]
  10008674c  mov     x29, x29
  100086750  bl      _objc_retainAutoreleasedReturnValue
  100086754  mov     x26, x0
  100086758  adrp    x8, #0x100419000
  10008675c  nop
  100086760  ldr     x1, [x8, #0xeb0]
  100086764  adrp    x2, #0x1003bf000
  100086768  add     x2, x2, #0x9d0                           ; @"TOTAL_TIME_PLAYED"
  10008676c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] stringForKey:@"TOTAL_TIME_PLAYED"]
  100086770  mov     x29, x29
  100086774  bl      _objc_retainAutoreleasedReturnValue
  100086778  mov     x27, x0
  10008677c  adrp    x8, #0x100417000
  100086780  nop
  100086784  ldr     x1, [x8, #0x110]
  100086788  bl      _objc_msgSend                            ; [[[NSUserDefaults standardUserDefaults] stringForKey:@"TOTAL_TIME_PLAYED"] intValue]
  10008678c  mov     x28, x0
  100086790  mov     x0, x27
  100086794  bl      _objc_release
  100086798  mov     x0, x26
  10008679c  bl      _objc_release
  1000867a0  cmp     x25, w28, sxtw
  1000867a4  ldr     x27, [sp, #8]
  1000867a8  b.le    loc_1000868c0                            ; if ([self getTotalTimePlayed] <= [[[NSUserDefaults standardUserDefaults] stringForKey:@"TOTAL_TIME_PLAYED"] intValue])
  1000867ac  adrp    x8, #0x100419000
  1000867b0  nop
  1000867b4  ldr     x1, [x8, #0xeb8]
  1000867b8  mov     x0, x21
  1000867bc  mov     x2, x25
  1000867c0  bl      _objc_msgSend                            ; [self nearestDiscreteTime:[self getTotalTimePlayed]]
  1000867c4  mov     x29, x29
  1000867c8  bl      _objc_retainAutoreleasedReturnValue
  1000867cc  mov     x21, x0
  1000867d0  adrp    x8, #0x10041e000
  1000867d4  ldr     x0, [x8, #8]                             ; class ADTracker
  1000867d8  adrp    x8, #0x100416000
  1000867dc  nop
  1000867e0  ldr     x1, [x8, #0xac0]
  1000867e4  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000867e8  mov     x29, x29
  1000867ec  bl      _objc_retainAutoreleasedReturnValue
  1000867f0  mov     x26, x0
  1000867f4  adrp    x8, #0x100417000
  1000867f8  nop
  1000867fc  ldr     x1, [x8, #0x9b8]
  100086800  mov     x4, #0
  100086804  mov     x5, #0
  100086808  adrp    x3, #0x1003bb000
  10008680c  add     x3, x3, #0x870                           ; @"Hours played"
  100086810  mov     x2, x21
  100086814  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[self nearestDiscreteTime:[self getTotalTimePlayed]] ForDimension:@"Hours played" AndValue:0 ForMetric:0]
  100086818  mov     x0, x26
  10008681c  bl      _objc_release
  100086820  ldr     x0, [x19, #0xf38]                        ; class NSUserDefaults
  100086824  mov     x1, x22
  100086828  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10008682c  mov     x29, x29
  100086830  bl      _objc_retainAutoreleasedReturnValue
  100086834  mov     x26, x0
  100086838  adrp    x8, #0x10041d000
  10008683c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100086840  adrp    x8, #0x100416000
  100086844  nop
  100086848  ldr     x1, [x8, #0xee8]
  10008684c  str     x25, [sp]
  100086850  adrp    x2, #0x1003ba000
  100086854  add     x2, x2, #0x1f0                           ; @"%d"
  100086858  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", [self getTotalTimePlayed]]
  10008685c  mov     x29, x29
  100086860  bl      _objc_retainAutoreleasedReturnValue
  100086864  mov     x25, x0
  100086868  adrp    x3, #0x1003bf000
  10008686c  add     x3, x3, #0x9d0                           ; @"TOTAL_TIME_PLAYED"
  100086870  mov     x0, x26
  100086874  mov     x1, x23
  100086878  mov     x2, x25
  10008687c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"%d", [self getTotalTimePlayed]] forKey:@"TOTAL_TIME_PLAYED"]
  100086880  mov     x0, x25
  100086884  bl      _objc_release
  100086888  mov     x0, x26
  10008688c  bl      _objc_release
  100086890  ldr     x0, [x19, #0xf38]                        ; class NSUserDefaults
  100086894  mov     x1, x22
  100086898  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  10008689c  mov     x29, x29
  1000868a0  bl      _objc_retainAutoreleasedReturnValue
  1000868a4  mov     x23, x0
  1000868a8  mov     x1, x24
  1000868ac  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000868b0  mov     x0, x23
  1000868b4  bl      _objc_release
  1000868b8  mov     x0, x21
  1000868bc  bl      _objc_release
loc_1000868c0:
  1000868c0  mov     x0, x20
  1000868c4  bl      _objc_release
  1000868c8  mov     x0, x27
  1000868cc  sub     sp, x29, #0x60
  1000868d0  ldp     x29, x30, [sp, #0x60]
  1000868d4  ldp     x20, x19, [sp, #0x50]
  1000868d8  ldp     x22, x21, [sp, #0x40]
  1000868dc  ldp     x24, x23, [sp, #0x30]
  1000868e0  ldp     x26, x25, [sp, #0x20]
  1000868e4  ldp     x28, x27, [sp, #0x10]
  1000868e8  ldp     d9, d8, [sp], #0x70
  1000868ec  b       _objc_release
  1000868f0  str     x27, [sp, #8]
  1000868f4  mov     x22, x0
  1000868f8  b       loc_1000869dc
  1000868fc  str     x27, [sp, #8]
  100086900  mov     x22, x0
  100086904  b       loc_1000869e4
  100086908  mov     x22, x0
  10008690c  b       loc_1000869b8
  100086910  str     x27, [sp, #8]
  100086914  mov     x22, x0
  100086918  mov     x0, x23
  10008691c  b       loc_1000869e0
  100086920  str     x27, [sp, #8]
  100086924  mov     x22, x0
  100086928  b       loc_10008693c
  10008692c  str     x27, [sp, #8]
  100086930  mov     x22, x0
  100086934  mov     x0, x25
  100086938  bl      _objc_release
loc_10008693c:
  10008693c  mov     x0, x24
  100086940  bl      _objc_release
  100086944  b       loc_1000869dc
  100086948  str     x27, [sp, #8]
  10008694c  mov     x22, x0
  100086950  mov     x0, x25
  100086954  bl      _objc_release
  100086958  b       loc_1000869dc
  10008695c  mov     x22, x0
  100086960  b       loc_100086970
  100086964  mov     x22, x0
  100086968  mov     x0, x27
  10008696c  bl      _objc_release
loc_100086970:
  100086970  mov     x0, x26
  100086974  bl      _objc_release
  100086978  b       loc_1000869dc
loc_10008697c:
  10008697c  str     x27, [sp, #8]
  100086980  mov     x22, x0
  100086984  b       loc_1000869d4
  100086988  mov     x22, x0
  10008698c  b       loc_1000869a4
  100086990  mov     x22, x0
  100086994  b       loc_1000869a4
  100086998  mov     x22, x0
  10008699c  mov     x0, x25
  1000869a0  bl      _objc_release
loc_1000869a4:
  1000869a4  mov     x0, x26
  1000869a8  b       loc_1000869b4
  1000869ac  mov     x22, x0
  1000869b0  mov     x0, x23
loc_1000869b4:
  1000869b4  bl      _objc_release
loc_1000869b8:
  1000869b8  mov     x0, x21
  1000869bc  bl      _objc_release
  1000869c0  b       loc_1000869dc
  1000869c4  str     x27, [sp, #8]
  1000869c8  mov     x22, x0
  1000869cc  mov     x0, x24
  1000869d0  bl      _objc_release
loc_1000869d4:
  1000869d4  mov     x0, x23
  1000869d8  bl      _objc_release
loc_1000869dc:
  1000869dc  mov     x0, x20
loc_1000869e0:
  1000869e0  bl      _objc_release
loc_1000869e4:
  1000869e4  ldr     x0, [sp, #8]
  1000869e8  bl      _objc_release
  1000869ec  mov     x0, x22
  1000869f0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats saveCoinsData:]
; address 0x1000869f4  size 568  kind objc
; ======================================================================
  1000869f4  stp     x26, x25, [sp, #-0x50]!
  1000869f8  stp     x24, x23, [sp, #0x10]
  1000869fc  stp     x22, x21, [sp, #0x20]
  100086a00  stp     x20, x19, [sp, #0x30]
  100086a04  stp     x29, x30, [sp, #0x40]
  100086a08  add     x29, sp, #0x40
  100086a0c  mov     x21, x2
  100086a10  mov     x22, x0
  100086a14  adrp    x8, #0x100419000
  100086a18  nop
  100086a1c  ldr     x1, [x8, #0xe90]
  100086a20  bl      _objc_msgSend                            ; [self getTotalStatData]
  100086a24  mov     x29, x29
  100086a28  bl      _objc_retainAutoreleasedReturnValue
  100086a2c  mov     x19, x0
  100086a30  adrp    x8, #0x10041d000
  100086a34  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100086a38  adrp    x8, #0x100416000
  100086a3c  nop
  100086a40  ldr     x1, [x8, #0xac8]
  100086a44  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100086a48  adrp    x8, #0x100416000
  100086a4c  nop
  100086a50  ldr     x1, [x8, #0xd80]
  100086a54  mov     x2, x19
  100086a58  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100086a5c  mov     x20, x0
  100086a60  adrp    x8, #0x100417000
  100086a64  nop
  100086a68  ldr     x1, [x8, #0x40]
  100086a6c  adrp    x2, #0x1003bf000
  100086a70  add     x2, x2, #0xab0                           ; @"Total Money Spent"
  100086a74  mov     x0, x20
  100086a78  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total Money Spent"]
  100086a7c  mov     x29, x29
  100086a80  bl      _objc_retainAutoreleasedReturnValue
  100086a84  mov     x23, x0
  100086a88  adrp    x8, #0x100417000
  100086a8c  nop
  100086a90  ldr     x1, [x8, #0xb0]
  100086a94  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total Money Spent"] integerValue]
  100086a98  mov     x24, x0
  100086a9c  mov     x0, x23
  100086aa0  bl      _objc_release
  100086aa4  adrp    x8, #0x10041d000
  100086aa8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100086aac  add     w2, w24, w21                             ; t1 = ([[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total Money Spent"] integerValue] + arg1)
  100086ab0  adrp    x8, #0x100416000
  100086ab4  nop
  100086ab8  ldr     x1, [x8, #0xec0]
  100086abc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  100086ac0  mov     x29, x29
  100086ac4  bl      _objc_retainAutoreleasedReturnValue
  100086ac8  mov     x21, x0
  100086acc  adrp    x8, #0x100418000
  100086ad0  nop
  100086ad4  ldr     x1, [x8, #0x318]
  100086ad8  adrp    x3, #0x1003bf000
  100086adc  add     x3, x3, #0xab0                           ; @"Total Money Spent"
  100086ae0  mov     x0, x20
  100086ae4  mov     x2, x21
  100086ae8  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t1] forKey:@"Total Money Spent"]
  100086aec  adrp    x25, #0x10041d000
  100086af0  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100086af4  adrp    x8, #0x100416000
  100086af8  nop
  100086afc  ldr     x23, [x8, #0xd98]
  100086b00  mov     x1, x23
  100086b04  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086b08  mov     x29, x29
  100086b0c  bl      _objc_retainAutoreleasedReturnValue
  100086b10  mov     x24, x0
  100086b14  adrp    x8, #0x100419000
  100086b18  nop
  100086b1c  ldr     x1, [x8, #0xe48]
  100086b20  mov     x0, x22
  100086b24  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100086b28  mov     x29, x29
  100086b2c  bl      _objc_retainAutoreleasedReturnValue
  100086b30  mov     x22, x0
  100086b34  adrp    x8, #0x100416000
  100086b38  nop
  100086b3c  ldr     x1, [x8, #0xdc8]
  100086b40  mov     x0, x24
  100086b44  mov     x2, x20
  100086b48  mov     x3, x22
  100086b4c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  100086b50  mov     x0, x22
  100086b54  bl      _objc_release
  100086b58  mov     x0, x24
  100086b5c  bl      _objc_release
  100086b60  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100086b64  mov     x1, x23
  100086b68  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086b6c  mov     x29, x29
  100086b70  bl      _objc_retainAutoreleasedReturnValue
  100086b74  mov     x23, x0
  100086b78  adrp    x8, #0x100416000
  100086b7c  nop
  100086b80  ldr     x1, [x8, #0xdd8]
  100086b84  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100086b88  mov     x0, x23
  100086b8c  bl      _objc_release
  100086b90  mov     x0, x21
  100086b94  bl      _objc_release
  100086b98  mov     x0, x20
  100086b9c  bl      _objc_release
  100086ba0  mov     x0, x19
  100086ba4  ldp     x29, x30, [sp, #0x40]
  100086ba8  ldp     x20, x19, [sp, #0x30]
  100086bac  ldp     x22, x21, [sp, #0x20]
  100086bb0  ldp     x24, x23, [sp, #0x10]
  100086bb4  ldp     x26, x25, [sp], #0x50
  100086bb8  b       _objc_release
  100086bbc  mov     x22, x0
  100086bc0  b       loc_100086c0c
  100086bc4  mov     x22, x0
  100086bc8  b       loc_100086c1c
  100086bcc  mov     x22, x0
  100086bd0  b       loc_100086c14
  100086bd4  mov     x22, x0
  100086bd8  mov     x0, x23
  100086bdc  b       loc_100086c10
  100086be0  mov     x22, x0
  100086be4  b       loc_100086bf8
  100086be8  mov     x1, x22
  100086bec  mov     x22, x0
  100086bf0  mov     x0, x1
  100086bf4  bl      _objc_release
loc_100086bf8:
  100086bf8  mov     x0, x24
  100086bfc  b       loc_100086c08
  100086c00  mov     x22, x0
  100086c04  mov     x0, x23
loc_100086c08:
  100086c08  bl      _objc_release
loc_100086c0c:
  100086c0c  mov     x0, x21
loc_100086c10:
  100086c10  bl      _objc_release
loc_100086c14:
  100086c14  mov     x0, x20
  100086c18  bl      _objc_release
loc_100086c1c:
  100086c1c  mov     x0, x19
  100086c20  bl      _objc_release
  100086c24  mov     x0, x22
  100086c28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats saveDiamondsData:]
; address 0x100086c2c  size 568  kind objc
; ======================================================================
  100086c2c  stp     x26, x25, [sp, #-0x50]!
  100086c30  stp     x24, x23, [sp, #0x10]
  100086c34  stp     x22, x21, [sp, #0x20]
  100086c38  stp     x20, x19, [sp, #0x30]
  100086c3c  stp     x29, x30, [sp, #0x40]
  100086c40  add     x29, sp, #0x40
  100086c44  mov     x21, x2
  100086c48  mov     x22, x0
  100086c4c  adrp    x8, #0x100419000
  100086c50  nop
  100086c54  ldr     x1, [x8, #0xe90]
  100086c58  bl      _objc_msgSend                            ; [self getTotalStatData]
  100086c5c  mov     x29, x29
  100086c60  bl      _objc_retainAutoreleasedReturnValue
  100086c64  mov     x19, x0
  100086c68  adrp    x8, #0x10041d000
  100086c6c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100086c70  adrp    x8, #0x100416000
  100086c74  nop
  100086c78  ldr     x1, [x8, #0xac8]
  100086c7c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100086c80  adrp    x8, #0x100416000
  100086c84  nop
  100086c88  ldr     x1, [x8, #0xd80]
  100086c8c  mov     x2, x19
  100086c90  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100086c94  mov     x20, x0
  100086c98  adrp    x8, #0x100417000
  100086c9c  nop
  100086ca0  ldr     x1, [x8, #0x40]
  100086ca4  adrp    x2, #0x1003bf000
  100086ca8  add     x2, x2, #0xad0                           ; @"Total Diamonds Spent"
  100086cac  mov     x0, x20
  100086cb0  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total Diamonds Spent"]
  100086cb4  mov     x29, x29
  100086cb8  bl      _objc_retainAutoreleasedReturnValue
  100086cbc  mov     x23, x0
  100086cc0  adrp    x8, #0x100417000
  100086cc4  nop
  100086cc8  ldr     x1, [x8, #0xb0]
  100086ccc  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total Diamonds Spent"] integerValue]
  100086cd0  mov     x24, x0
  100086cd4  mov     x0, x23
  100086cd8  bl      _objc_release
  100086cdc  adrp    x8, #0x10041d000
  100086ce0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100086ce4  add     w2, w24, w21                             ; t1 = ([[[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] objectForKey:@"Total Diamonds Spent"] integerValue] + arg1)
  100086ce8  adrp    x8, #0x100416000
  100086cec  nop
  100086cf0  ldr     x1, [x8, #0xec0]
  100086cf4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  100086cf8  mov     x29, x29
  100086cfc  bl      _objc_retainAutoreleasedReturnValue
  100086d00  mov     x21, x0
  100086d04  adrp    x8, #0x100418000
  100086d08  nop
  100086d0c  ldr     x1, [x8, #0x318]
  100086d10  adrp    x3, #0x1003bf000
  100086d14  add     x3, x3, #0xad0                           ; @"Total Diamonds Spent"
  100086d18  mov     x0, x20
  100086d1c  mov     x2, x21
  100086d20  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t1] forKey:@"Total Diamonds Spent"]
  100086d24  adrp    x25, #0x10041d000
  100086d28  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100086d2c  adrp    x8, #0x100416000
  100086d30  nop
  100086d34  ldr     x23, [x8, #0xd98]
  100086d38  mov     x1, x23
  100086d3c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086d40  mov     x29, x29
  100086d44  bl      _objc_retainAutoreleasedReturnValue
  100086d48  mov     x24, x0
  100086d4c  adrp    x8, #0x100419000
  100086d50  nop
  100086d54  ldr     x1, [x8, #0xe48]
  100086d58  mov     x0, x22
  100086d5c  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100086d60  mov     x29, x29
  100086d64  bl      _objc_retainAutoreleasedReturnValue
  100086d68  mov     x22, x0
  100086d6c  adrp    x8, #0x100416000
  100086d70  nop
  100086d74  ldr     x1, [x8, #0xdc8]
  100086d78  mov     x0, x24
  100086d7c  mov     x2, x20
  100086d80  mov     x3, x22
  100086d84  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  100086d88  mov     x0, x22
  100086d8c  bl      _objc_release
  100086d90  mov     x0, x24
  100086d94  bl      _objc_release
  100086d98  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100086d9c  mov     x1, x23
  100086da0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100086da4  mov     x29, x29
  100086da8  bl      _objc_retainAutoreleasedReturnValue
  100086dac  mov     x23, x0
  100086db0  adrp    x8, #0x100416000
  100086db4  nop
  100086db8  ldr     x1, [x8, #0xdd8]
  100086dbc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100086dc0  mov     x0, x23
  100086dc4  bl      _objc_release
  100086dc8  mov     x0, x21
  100086dcc  bl      _objc_release
  100086dd0  mov     x0, x20
  100086dd4  bl      _objc_release
  100086dd8  mov     x0, x19
  100086ddc  ldp     x29, x30, [sp, #0x40]
  100086de0  ldp     x20, x19, [sp, #0x30]
  100086de4  ldp     x22, x21, [sp, #0x20]
  100086de8  ldp     x24, x23, [sp, #0x10]
  100086dec  ldp     x26, x25, [sp], #0x50
  100086df0  b       _objc_release
  100086df4  mov     x22, x0
  100086df8  b       loc_100086e44
  100086dfc  mov     x22, x0
  100086e00  b       loc_100086e54
  100086e04  mov     x22, x0
  100086e08  b       loc_100086e4c
  100086e0c  mov     x22, x0
  100086e10  mov     x0, x23
  100086e14  b       loc_100086e48
  100086e18  mov     x22, x0
  100086e1c  b       loc_100086e30
  100086e20  mov     x1, x22
  100086e24  mov     x22, x0
  100086e28  mov     x0, x1
  100086e2c  bl      _objc_release
loc_100086e30:
  100086e30  mov     x0, x24
  100086e34  b       loc_100086e40
  100086e38  mov     x22, x0
  100086e3c  mov     x0, x23
loc_100086e40:
  100086e40  bl      _objc_release
loc_100086e44:
  100086e44  mov     x0, x21
loc_100086e48:
  100086e48  bl      _objc_release
loc_100086e4c:
  100086e4c  mov     x0, x20
  100086e50  bl      _objc_release
loc_100086e54:
  100086e54  mov     x0, x19
  100086e58  bl      _objc_release
  100086e5c  mov     x0, x22
  100086e60  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats saveShotsData:]
; address 0x100086e64  size 852  kind objc
; ======================================================================
  100086e64  stp     x28, x27, [sp, #-0x60]!
  100086e68  stp     x26, x25, [sp, #0x10]
  100086e6c  stp     x24, x23, [sp, #0x20]
  100086e70  stp     x22, x21, [sp, #0x30]
  100086e74  stp     x20, x19, [sp, #0x40]
  100086e78  stp     x29, x30, [sp, #0x50]
  100086e7c  add     x29, sp, #0x50
  100086e80  mov     x22, x0
  100086e84  mov     x0, x2
  100086e88  bl      _objc_retain
  100086e8c  mov     x19, x0
  100086e90  adrp    x8, #0x100419000
  100086e94  nop
  100086e98  ldr     x1, [x8, #0xe90]
  100086e9c  mov     x0, x22
  100086ea0  bl      _objc_msgSend                            ; [self getTotalStatData]
  100086ea4  mov     x29, x29
  100086ea8  bl      _objc_retainAutoreleasedReturnValue
  100086eac  mov     x20, x0
  100086eb0  adrp    x8, #0x10041d000
  100086eb4  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100086eb8  adrp    x8, #0x100416000
  100086ebc  nop
  100086ec0  ldr     x1, [x8, #0xac8]
  100086ec4  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100086ec8  adrp    x8, #0x100416000
  100086ecc  nop
  100086ed0  ldr     x1, [x8, #0xd80]
  100086ed4  mov     x2, x20
  100086ed8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100086edc  mov     x21, x0
  100086ee0  adrp    x8, #0x100417000
  100086ee4  nop
  100086ee8  ldr     x25, [x8, #0x40]
  100086eec  adrp    x2, #0x1003ba000
  100086ef0  add     x2, x2, #0x310                           ; @"Shots fired"
  100086ef4  mov     x0, x20
  100086ef8  mov     x1, x25
  100086efc  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Shots fired"]
  100086f00  mov     x29, x29
  100086f04  bl      _objc_retainAutoreleasedReturnValue
  100086f08  mov     x23, x0
  100086f0c  adrp    x8, #0x100417000
  100086f10  nop
  100086f14  ldr     x26, [x8, #0xb0]
  100086f18  mov     x1, x26
  100086f1c  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Shots fired"] integerValue]
  100086f20  mov     x24, x0
  100086f24  mov     x0, x23
  100086f28  bl      _objc_release
  100086f2c  adrp    x2, #0x1003bf000
  100086f30  add     x2, x2, #0xaf0                           ; @"Melee swings"
  100086f34  mov     x0, x20
  100086f38  mov     x1, x25
  100086f3c  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Melee swings"]
  100086f40  mov     x29, x29
  100086f44  bl      _objc_retainAutoreleasedReturnValue
  100086f48  mov     x27, x0
  100086f4c  mov     x1, x26
  100086f50  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Melee swings"] integerValue]
  100086f54  mov     x23, x0
  100086f58  mov     x0, x27
  100086f5c  bl      _objc_release
  100086f60  adrp    x2, #0x1003ba000
  100086f64  add     x2, x2, #0x310                           ; @"Shots fired"
  100086f68  mov     x0, x19
  100086f6c  mov     x1, x25
  100086f70  bl      _objc_msgSend                            ; [arg1 objectForKey:@"Shots fired"]
  100086f74  mov     x29, x29
  100086f78  bl      _objc_retainAutoreleasedReturnValue
  100086f7c  mov     x28, x0
  100086f80  mov     x1, x26
  100086f84  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"Shots fired"] integerValue]
  100086f88  mov     x27, x0
  100086f8c  mov     x0, x28
  100086f90  bl      _objc_release
  100086f94  adrp    x2, #0x1003bf000
  100086f98  add     x2, x2, #0xaf0                           ; @"Melee swings"
  100086f9c  mov     x0, x19
  100086fa0  mov     x1, x25
  100086fa4  bl      _objc_msgSend                            ; [arg1 objectForKey:@"Melee swings"]
  100086fa8  mov     x29, x29
  100086fac  bl      _objc_retainAutoreleasedReturnValue
  100086fb0  mov     x28, x0
  100086fb4  mov     x1, x26
  100086fb8  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"Melee swings"] integerValue]
  100086fbc  mov     x25, x0
  100086fc0  mov     x0, x28
  100086fc4  bl      _objc_release
  100086fc8  adrp    x28, #0x10041d000
  100086fcc  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  100086fd0  add     w2, w27, w24                             ; t1 = ([[arg1 objectForKey:@"Shots fired"] integerValue] + [[[self getTotalStatData] objectForKey:@"Shots fired"] integerValue])
  100086fd4  adrp    x8, #0x100416000
  100086fd8  nop
  100086fdc  ldr     x24, [x8, #0xec0]
  100086fe0  mov     x1, x24
  100086fe4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  100086fe8  mov     x29, x29
  100086fec  bl      _objc_retainAutoreleasedReturnValue
  100086ff0  mov     x27, x0
  100086ff4  adrp    x8, #0x100418000
  100086ff8  nop
  100086ffc  ldr     x26, [x8, #0x318]
  100087000  adrp    x3, #0x1003ba000
  100087004  add     x3, x3, #0x310                           ; @"Shots fired"
  100087008  mov     x0, x21
  10008700c  mov     x1, x26
  100087010  mov     x2, x27
  100087014  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t1] forKey:@"Shots fired"]
  100087018  mov     x0, x27
  10008701c  bl      _objc_release
  100087020  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  100087024  add     w2, w25, w23                             ; t2 = ([[arg1 objectForKey:@"Melee swings"] integerValue] + [[[self getTotalStatData] objectForKey:@"Melee swings"] integerValue])
  100087028  mov     x1, x24
  10008702c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t2]
  100087030  mov     x29, x29
  100087034  bl      _objc_retainAutoreleasedReturnValue
  100087038  mov     x23, x0
  10008703c  adrp    x3, #0x1003bf000
  100087040  add     x3, x3, #0xaf0                           ; @"Melee swings"
  100087044  mov     x0, x21
  100087048  mov     x1, x26
  10008704c  mov     x2, x23
  100087050  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t2] forKey:@"Melee swings"]
  100087054  mov     x0, x23
  100087058  bl      _objc_release
  10008705c  adrp    x26, #0x10041d000
  100087060  ldr     x0, [x26, #0xf38]                        ; class NSUserDefaults
  100087064  adrp    x8, #0x100416000
  100087068  nop
  10008706c  ldr     x23, [x8, #0xd98]
  100087070  mov     x1, x23
  100087074  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087078  mov     x29, x29
  10008707c  bl      _objc_retainAutoreleasedReturnValue
  100087080  mov     x24, x0
  100087084  adrp    x8, #0x100419000
  100087088  nop
  10008708c  ldr     x1, [x8, #0xe48]
  100087090  mov     x0, x22
  100087094  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100087098  mov     x29, x29
  10008709c  bl      _objc_retainAutoreleasedReturnValue
  1000870a0  mov     x25, x0
  1000870a4  adrp    x8, #0x100416000
  1000870a8  nop
  1000870ac  ldr     x1, [x8, #0xdc8]
  1000870b0  mov     x0, x24
  1000870b4  mov     x2, x21
  1000870b8  mov     x3, x25
  1000870bc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  1000870c0  mov     x0, x25
  1000870c4  bl      _objc_release
  1000870c8  mov     x0, x24
  1000870cc  bl      _objc_release
  1000870d0  ldr     x0, [x26, #0xf38]                        ; class NSUserDefaults
  1000870d4  mov     x1, x23
  1000870d8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000870dc  mov     x29, x29
  1000870e0  bl      _objc_retainAutoreleasedReturnValue
  1000870e4  mov     x23, x0
  1000870e8  adrp    x8, #0x100416000
  1000870ec  nop
  1000870f0  ldr     x1, [x8, #0xdd8]
  1000870f4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000870f8  mov     x0, x23
  1000870fc  bl      _objc_release
  100087100  mov     x0, x21
  100087104  bl      _objc_release
  100087108  mov     x0, x20
  10008710c  bl      _objc_release
  100087110  mov     x0, x19
  100087114  ldp     x29, x30, [sp, #0x50]
  100087118  ldp     x20, x19, [sp, #0x40]
  10008711c  ldp     x22, x21, [sp, #0x30]
  100087120  ldp     x24, x23, [sp, #0x20]
  100087124  ldp     x26, x25, [sp, #0x10]
  100087128  ldp     x28, x27, [sp], #0x60
  10008712c  b       _objc_release
  100087130  mov     x22, x0
  100087134  b       loc_100087198
  100087138  mov     x22, x0
  10008713c  b       loc_1000871a0
  100087140  mov     x22, x0
  100087144  b       loc_1000871a8
  100087148  b       loc_10008718c
  10008714c  b       loc_100087160
  100087150  b       loc_100087154
loc_100087154:
  100087154  mov     x22, x0
  100087158  mov     x0, x28
  10008715c  b       loc_100087194
loc_100087160:
  100087160  mov     x22, x0
  100087164  mov     x0, x27
  100087168  b       loc_100087194
  10008716c  b       loc_10008718c
  100087170  mov     x22, x0
  100087174  b       loc_100087184
  100087178  mov     x22, x0
  10008717c  mov     x0, x25
  100087180  bl      _objc_release
loc_100087184:
  100087184  mov     x0, x24
  100087188  b       loc_100087194
loc_10008718c:
  10008718c  mov     x22, x0
  100087190  mov     x0, x23
loc_100087194:
  100087194  bl      _objc_release
loc_100087198:
  100087198  mov     x0, x21
  10008719c  bl      _objc_release
loc_1000871a0:
  1000871a0  mov     x0, x20
  1000871a4  bl      _objc_release
loc_1000871a8:
  1000871a8  mov     x0, x19
  1000871ac  bl      _objc_release
  1000871b0  mov     x0, x22
  1000871b4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats saveWeaponsData:]
; address 0x1000871b8  size 1852  kind objc
; ======================================================================
  1000871b8  stp     x28, x27, [sp, #-0x60]!
  1000871bc  stp     x26, x25, [sp, #0x10]
  1000871c0  stp     x24, x23, [sp, #0x20]
  1000871c4  stp     x22, x21, [sp, #0x30]
  1000871c8  stp     x20, x19, [sp, #0x40]
  1000871cc  stp     x29, x30, [sp, #0x50]
  1000871d0  add     x29, sp, #0x50
  1000871d4  sub     sp, sp, #0x140
  1000871d8  mov     x19, x0
  1000871dc  adrp    x8, #0x1003b0000
  1000871e0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000871e4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000871e8  stur    x8, [x29, #-0x58]
  1000871ec  mov     x0, x2
  1000871f0  bl      _objc_retain
  1000871f4  mov     x24, x0
  1000871f8  adrp    x8, #0x100419000
  1000871fc  nop
  100087200  ldr     x1, [x8, #0xec0]
  100087204  mov     x0, x19
  100087208  bl      _objc_msgSend                            ; [self getWeaponStatData]
  10008720c  mov     x29, x29
  100087210  bl      _objc_retainAutoreleasedReturnValue
  100087214  mov     x28, x0
  100087218  adrp    x8, #0x10041d000
  10008721c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100087220  adrp    x8, #0x100416000
  100087224  nop
  100087228  ldr     x1, [x8, #0xac8]
  10008722c  str     x1, [sp, #0x30]
  100087230  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100087234  adrp    x8, #0x100416000
  100087238  nop
  10008723c  ldr     x1, [x8, #0xab8]
  100087240  str     x1, [sp, #0x28]
  100087244  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100087248  str     x0, [sp, #0x38]
  10008724c  adrp    x8, #0x100417000
  100087250  nop
  100087254  ldr     x1, [x8, #0x248]
  100087258  mov     x0, x28
  10008725c  bl      _objc_msgSend                            ; [[self getWeaponStatData] allKeys]
  100087260  str     x19, [sp, #8]
  100087264  mov     x29, x29
  100087268  bl      _objc_retainAutoreleasedReturnValue
  10008726c  stp     xzr, xzr, [sp, #0xa8]
  100087270  stp     xzr, xzr, [sp, #0x98]
  100087274  stp     xzr, xzr, [sp, #0x88]
  100087278  stp     xzr, xzr, [sp, #0x78]
  10008727c  bl      _objc_retain
  100087280  str     x0, [sp, #0x18]
  100087284  adrp    x8, #0x100416000
  100087288  nop
  10008728c  ldr     x1, [x8, #0xe00]
  100087290  str     x1, [sp, #0x10]
  100087294  add     x2, sp, #0x78
  100087298  add     x3, sp, #0xb8
  10008729c  mov     w4, #0x10
  1000872a0  bl      _objc_msgSend                            ; [[[self getWeaponStatData] allKeys] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  1000872a4  cbz     x0, loc_100087688                        ; if ([[[self getWeaponStatData] allKeys] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] == 0)
  1000872a8  ldr     x8, [sp, #0x88]
  1000872ac  adrp    x9, #0x100417000
  1000872b0  nop
  1000872b4  ldr     x8, [x8]
  1000872b8  str     x8, [sp, #0x20]
  1000872bc  ldr     x23, [x9, #0x40]
  1000872c0  adrp    x8, #0x100417000
  1000872c4  nop
  1000872c8  adrp    x9, #0x100416000
  1000872cc  add     x9, x9, #0xec0                           ; &@selector(numberWithInt:)
  1000872d0  ldr     x8, [x8, #0x110]
  1000872d4  str     x8, [sp, #0x70]
  1000872d8  ldr     x8, [x9]
  1000872dc  str     x8, [sp, #0x68]
  1000872e0  adrp    x8, #0x100418000
  1000872e4  add     x8, x8, #0x318                           ; &@selector(setValue:forKey:)
  1000872e8  ldr     x27, [x8]
  1000872ec  adrp    x21, #0x1003ba000
  1000872f0  add     x21, x21, #0x2d0                         ; @"shotsHit"
loc_1000872f4:
  1000872f4  str     x0, [sp, #0x40]
  1000872f8  mov     x19, #0
loc_1000872fc:
  1000872fc  ldr     x8, [sp, #0x88]
  100087300  ldr     x8, [x8]
  100087304  ldr     x9, [sp, #0x20]
  100087308  cmp     x8, x9
  10008730c  b.eq    loc_100087318                            ; if (x8 == x9)
  100087310  ldr     x0, [sp, #0x18]
  100087314  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self getWeaponStatData] allKeys])
loc_100087318:
  100087318  ldr     x8, [sp, #0x80]
  10008731c  ldr     x25, [x8, x19, lsl #3]
  100087320  adrp    x8, #0x10041d000
  100087324  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100087328  ldr     x1, [sp, #0x30]
  10008732c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100087330  ldr     x1, [sp, #0x28]
  100087334  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100087338  mov     x26, x0
  10008733c  str     x19, [sp, #0x58]
  100087340  mov     x0, x28
  100087344  mov     x1, x23
  100087348  mov     x2, x25
  10008734c  bl      _objc_msgSend                            ; [[self getWeaponStatData] objectForKey:x2]
  100087350  mov     x29, x29
  100087354  bl      _objc_retainAutoreleasedReturnValue
  100087358  mov     x19, x0
  10008735c  mov     x1, x23
  100087360  adrp    x2, #0x1003ba000
  100087364  add     x2, x2, #0x290                           ; @"shotsFired"
  100087368  bl      _objc_msgSend                            ; [[[self getWeaponStatData] objectForKey:x2] objectForKey:@"shotsFired"]
  10008736c  mov     x29, x29
  100087370  bl      _objc_retainAutoreleasedReturnValue
  100087374  mov     x20, x0
  100087378  ldr     x1, [sp, #0x70]
  10008737c  bl      _objc_msgSend                            ; [[[[self getWeaponStatData] objectForKey:x2] objectForKey:@"shotsFired"] intValue]
  100087380  str     w0, [sp, #0x64]
  100087384  mov     x0, x20
  100087388  bl      _objc_release
  10008738c  mov     x0, x19
  100087390  bl      _objc_release
  100087394  mov     x0, x28
  100087398  mov     x1, x23
  10008739c  mov     x2, x25
  1000873a0  bl      _objc_msgSend                            ; [[self getWeaponStatData] objectForKey:x2]
  1000873a4  mov     x29, x29
  1000873a8  bl      _objc_retainAutoreleasedReturnValue
  1000873ac  mov     x19, x0
  1000873b0  mov     x1, x23
  1000873b4  mov     x2, x21
  1000873b8  bl      _objc_msgSend                            ; [[[self getWeaponStatData] objectForKey:x2] objectForKey:@"shotsHit"]
  1000873bc  mov     x29, x29
  1000873c0  bl      _objc_retainAutoreleasedReturnValue
  1000873c4  mov     x20, x0
  1000873c8  ldr     x1, [sp, #0x70]
  1000873cc  bl      _objc_msgSend                            ; [[[[self getWeaponStatData] objectForKey:x2] objectForKey:@"shotsHit"] intValue]
  1000873d0  str     w0, [sp, #0x54]
  1000873d4  mov     x0, x20
  1000873d8  bl      _objc_release
  1000873dc  mov     x0, x19
  1000873e0  bl      _objc_release
  1000873e4  mov     x0, x24
  1000873e8  mov     x1, x23
  1000873ec  mov     x2, x25
  1000873f0  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  1000873f4  mov     x29, x29
  1000873f8  bl      _objc_retainAutoreleasedReturnValue
  1000873fc  mov     x20, x0
  100087400  mov     x1, x23
  100087404  adrp    x2, #0x1003ba000
  100087408  add     x2, x2, #0x290                           ; @"shotsFired"
  10008740c  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] objectForKey:@"shotsFired"]
  100087410  mov     x29, x29
  100087414  bl      _objc_retainAutoreleasedReturnValue
  100087418  mov     x22, x0
  10008741c  ldr     x1, [sp, #0x70]
  100087420  bl      _objc_msgSend                            ; [[[arg1 objectForKey:x2] objectForKey:@"shotsFired"] intValue]
  100087424  str     w0, [sp, #0x50]
  100087428  mov     x0, x22
  10008742c  bl      _objc_release
  100087430  mov     x0, x20
  100087434  bl      _objc_release
  100087438  mov     x0, x24
  10008743c  mov     x1, x23
  100087440  mov     x2, x25
  100087444  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  100087448  mov     x29, x29
  10008744c  bl      _objc_retainAutoreleasedReturnValue
  100087450  mov     x22, x0
  100087454  mov     x1, x23
  100087458  mov     x2, x21
  10008745c  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] objectForKey:@"shotsHit"]
  100087460  mov     x19, x25
  100087464  mov     x29, x29
  100087468  bl      _objc_retainAutoreleasedReturnValue
  10008746c  mov     x25, x0
  100087470  ldr     x1, [sp, #0x70]
  100087474  bl      _objc_msgSend                            ; [[[arg1 objectForKey:x2] objectForKey:@"shotsHit"] intValue]
  100087478  str     w0, [sp, #0x4c]
  10008747c  mov     x0, x25
  100087480  bl      _objc_release
  100087484  mov     x0, x22
  100087488  bl      _objc_release
  10008748c  mov     x0, x24
  100087490  mov     x1, x23
  100087494  mov     x2, x19
  100087498  bl      _objc_msgSend                            ; [arg1 objectForKey:x2]
  10008749c  mov     x20, x19
  1000874a0  mov     x29, x29
  1000874a4  bl      _objc_retainAutoreleasedReturnValue
  1000874a8  mov     x25, x0
  1000874ac  mov     x1, x23
  1000874b0  adrp    x2, #0x1003ba000
  1000874b4  add     x2, x2, #0x230                           ; @"kills"
  1000874b8  bl      _objc_msgSend                            ; [[arg1 objectForKey:x2] objectForKey:@"kills"]
  1000874bc  mov     x19, x27
  1000874c0  mov     x29, x29
  1000874c4  bl      _objc_retainAutoreleasedReturnValue
  1000874c8  mov     x27, x0
  1000874cc  ldr     x1, [sp, #0x70]
  1000874d0  bl      _objc_msgSend                            ; [[[arg1 objectForKey:x2] objectForKey:@"kills"] intValue]
  1000874d4  str     w0, [sp, #0x48]
  1000874d8  mov     x0, x27
  1000874dc  bl      _objc_release
  1000874e0  mov     x0, x25
  1000874e4  bl      _objc_release
  1000874e8  mov     x0, x28
  1000874ec  mov     x1, x23
  1000874f0  mov     x2, x20
  1000874f4  bl      _objc_msgSend                            ; [[self getWeaponStatData] objectForKey:x2]
  1000874f8  mov     x25, x23
  1000874fc  mov     x23, x21
  100087500  mov     x21, x19
  100087504  mov     x29, x29
  100087508  bl      _objc_retainAutoreleasedReturnValue
  10008750c  mov     x27, x0
  100087510  mov     x1, x25
  100087514  adrp    x2, #0x1003ba000
  100087518  add     x2, x2, #0x230                           ; @"kills"
  10008751c  bl      _objc_msgSend                            ; [[[self getWeaponStatData] objectForKey:x2] objectForKey:@"kills"]
  100087520  mov     x19, x26
  100087524  mov     x26, x28
  100087528  mov     x28, x24
  10008752c  mov     x29, x29
  100087530  bl      _objc_retainAutoreleasedReturnValue
  100087534  mov     x24, x0
  100087538  ldr     x1, [sp, #0x70]
  10008753c  bl      _objc_msgSend                            ; [[[[self getWeaponStatData] objectForKey:x2] objectForKey:@"kills"] intValue]
  100087540  mov     x22, x0
  100087544  mov     x0, x24
  100087548  bl      _objc_release
  10008754c  mov     x0, x27
  100087550  bl      _objc_release
  100087554  adrp    x8, #0x10041d000
  100087558  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10008755c  ldr     w8, [sp, #0x64]
  100087560  ldr     w9, [sp, #0x50]
  100087564  add     w2, w9, w8                               ; t1 = ([[[arg1 objectForKey:x2] objectForKey:@"shotsFired"] intValue] + [[[[self getWeaponStatData] objectForKey:x2] objectForKey:@"shotsFired"] intValue])
  100087568  ldr     x1, [sp, #0x68]
  10008756c  mov     x24, x28
  100087570  mov     x28, x26
  100087574  mov     x26, x19
  100087578  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  10008757c  mov     x27, x21
  100087580  mov     x21, x23
  100087584  mov     x23, x25
  100087588  mov     x25, x20
  10008758c  mov     x29, x29
  100087590  bl      _objc_retainAutoreleasedReturnValue
  100087594  mov     x19, x0
  100087598  mov     x0, x26
  10008759c  mov     x1, x27
  1000875a0  mov     x2, x19
  1000875a4  adrp    x3, #0x1003ba000
  1000875a8  add     x3, x3, #0x290                           ; @"shotsFired"
  1000875ac  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInt:t1] forKey:@"shotsFired"]
  1000875b0  mov     x0, x19
  1000875b4  bl      _objc_release
  1000875b8  adrp    x8, #0x10041d000
  1000875bc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000875c0  ldr     w8, [sp, #0x54]
  1000875c4  ldr     w9, [sp, #0x4c]
  1000875c8  add     w2, w9, w8                               ; t2 = ([[[arg1 objectForKey:x2] objectForKey:@"shotsHit"] intValue] + [[[[self getWeaponStatData] objectForKey:x2] objectForKey:@"shotsHit"] intValue])
  1000875cc  ldr     x1, [sp, #0x68]
  1000875d0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t2]
  1000875d4  mov     x29, x29
  1000875d8  bl      _objc_retainAutoreleasedReturnValue
  1000875dc  mov     x19, x0
  1000875e0  mov     x0, x26
  1000875e4  mov     x1, x27
  1000875e8  mov     x2, x19
  1000875ec  mov     x3, x21
  1000875f0  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInt:t2] forKey:@"shotsHit"]
  1000875f4  mov     x0, x19
  1000875f8  bl      _objc_release
  1000875fc  adrp    x8, #0x10041d000
  100087600  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100087604  ldr     w8, [sp, #0x48]
  100087608  add     w2, w22, w8                              ; t3 = ([[[[self getWeaponStatData] objectForKey:x2] objectForKey:@"kills"] intValue] + [[[arg1 objectForKey:x2] objectForKey:@"kills"] intValue])
  10008760c  ldr     x1, [sp, #0x68]
  100087610  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t3]
  100087614  mov     x29, x29
  100087618  bl      _objc_retainAutoreleasedReturnValue
  10008761c  mov     x19, x0
  100087620  mov     x0, x26
  100087624  mov     x1, x27
  100087628  mov     x2, x19
  10008762c  adrp    x3, #0x1003ba000
  100087630  add     x3, x3, #0x230                           ; @"kills"
  100087634  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[NSNumber numberWithInt:t3] forKey:@"kills"]
  100087638  mov     x0, x19
  10008763c  bl      _objc_release
  100087640  ldr     x0, [sp, #0x38]
  100087644  mov     x1, x27
  100087648  mov     x2, x26
  10008764c  mov     x3, x25
  100087650  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[[NSMutableDictionary alloc] init] forKey:x3]
  100087654  mov     x0, x26
  100087658  bl      _objc_release
  10008765c  ldr     x19, [sp, #0x58]
  100087660  add     x19, x19, #1
  100087664  ldr     x8, [sp, #0x40]
  100087668  cmp     x19, x8
  10008766c  b.lo    loc_1000872fc                            ; if ((x19 + 1) <u [[[self getWeaponStatData] allKeys] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16])
  100087670  add     x2, sp, #0x78
  100087674  add     x3, sp, #0xb8
  100087678  mov     w4, #0x10
  10008767c  ldp     x1, x0, [sp, #0x10]
  100087680  bl      _objc_msgSend                            ; [[[self getWeaponStatData] allKeys] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16]
  100087684  cbnz    x0, loc_1000872f4                        ; if ([[[self getWeaponStatData] allKeys] countByEnumeratingWithState:&sp[0x78] objects:&sp[0xb8] count:16] != 0)
loc_100087688:
  100087688  ldr     x23, [sp, #0x18]
  10008768c  mov     x0, x23
  100087690  bl      _objc_release
  100087694  adrp    x21, #0x10041d000
  100087698  ldr     x0, [x21, #0xf38]                        ; class NSUserDefaults
  10008769c  adrp    x8, #0x100416000
  1000876a0  nop
  1000876a4  ldr     x19, [x8, #0xd98]
  1000876a8  mov     x1, x19
  1000876ac  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000876b0  mov     x29, x29
  1000876b4  bl      _objc_retainAutoreleasedReturnValue
  1000876b8  mov     x20, x0
  1000876bc  adrp    x8, #0x100419000
  1000876c0  nop
  1000876c4  ldr     x1, [x8, #0xe50]
  1000876c8  ldr     x0, [sp, #8]
  1000876cc  bl      _objc_msgSend                            ; [self weaponsStatsDataRef]
  1000876d0  mov     x29, x29
  1000876d4  bl      _objc_retainAutoreleasedReturnValue
  1000876d8  mov     x22, x0
  1000876dc  adrp    x8, #0x100416000
  1000876e0  nop
  1000876e4  ldr     x1, [x8, #0xdc8]
  1000876e8  mov     x0, x20
  1000876ec  ldr     x2, [sp, #0x38]
  1000876f0  mov     x3, x22
  1000876f4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] init] forKey:[self weaponsStatsDataRef]]
  1000876f8  mov     x0, x22
  1000876fc  bl      _objc_release
  100087700  mov     x0, x20
  100087704  bl      _objc_release
  100087708  ldr     x0, [x21, #0xf38]                        ; class NSUserDefaults
  10008770c  mov     x1, x19
  100087710  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087714  mov     x29, x29
  100087718  bl      _objc_retainAutoreleasedReturnValue
  10008771c  mov     x19, x0
  100087720  adrp    x8, #0x100416000
  100087724  nop
  100087728  ldr     x1, [x8, #0xdd8]
  10008772c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100087730  mov     x0, x19
  100087734  bl      _objc_release
  100087738  mov     x0, x23
  10008773c  bl      _objc_release
  100087740  ldr     x0, [sp, #0x38]
  100087744  bl      _objc_release
  100087748  mov     x0, x28
  10008774c  bl      _objc_release
  100087750  mov     x0, x24
  100087754  bl      _objc_release
  100087758  ldur    x8, [x29, #-0x58]
  10008775c  adrp    x9, #0x1003b0000
  100087760  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  100087764  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  100087768  sub     x8, x9, x8
  10008776c  cbnz    x8, loc_100087790                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100087770  sub     sp, x29, #0x50
  100087774  ldp     x29, x30, [sp, #0x50]
  100087778  ldp     x20, x19, [sp, #0x40]
  10008777c  ldp     x22, x21, [sp, #0x30]
  100087780  ldp     x24, x23, [sp, #0x20]
  100087784  ldp     x26, x25, [sp, #0x10]
  100087788  ldp     x28, x27, [sp], #0x60
  10008778c  ret
loc_100087790:
  100087790  bl      ___stack_chk_fail                        ; stack_chk_fail()
  100087794  mov     x21, x0
  100087798  b       loc_100087868
loc_10008779c:
  10008779c  mov     x21, x0
  1000877a0  ldr     x23, [sp, #0x18]
  1000877a4  b       loc_100087874
  1000877a8  mov     x21, x0
  1000877ac  b       loc_1000877c8
  1000877b0  b       loc_1000877bc
  1000877b4  mov     x21, x0
  1000877b8  b       loc_1000877c8
loc_1000877bc:
  1000877bc  mov     x21, x0
  1000877c0  mov     x0, x20
  1000877c4  bl      _objc_release
loc_1000877c8:
  1000877c8  ldr     x23, [sp, #0x18]
  1000877cc  mov     x0, x19
  1000877d0  bl      _objc_release
  1000877d4  b       loc_10008786c
  1000877d8  mov     x21, x0
  1000877dc  b       loc_1000877ec
  1000877e0  mov     x21, x0
  1000877e4  mov     x0, x22
  1000877e8  bl      _objc_release
loc_1000877ec:
  1000877ec  mov     x0, x20
  1000877f0  b       loc_100087864
  1000877f4  mov     x21, x0
  1000877f8  b       loc_100087808
  1000877fc  mov     x21, x0
  100087800  mov     x0, x25
  100087804  bl      _objc_release
loc_100087808:
  100087808  mov     x0, x22
  10008780c  b       loc_100087864
  100087810  mov     x21, x0
  100087814  b       loc_100087824
  100087818  mov     x21, x0
  10008781c  mov     x0, x27
  100087820  bl      _objc_release
loc_100087824:
  100087824  mov     x0, x25
  100087828  b       loc_100087864
  10008782c  mov     x21, x0
  100087830  b       loc_10008784c
  100087834  mov     x21, x0
  100087838  mov     x0, x24
  10008783c  bl      _objc_release
  100087840  mov     x24, x28
  100087844  mov     x28, x26
  100087848  mov     x26, x19
loc_10008784c:
  10008784c  mov     x0, x27
  100087850  b       loc_100087864
  100087854  b       loc_10008785c
  100087858  b       loc_10008785c
loc_10008785c:
  10008785c  mov     x21, x0
  100087860  mov     x0, x19
loc_100087864:
  100087864  bl      _objc_release
loc_100087868:
  100087868  ldr     x23, [sp, #0x18]
loc_10008786c:
  10008786c  mov     x0, x26
  100087870  bl      _objc_release
loc_100087874:
  100087874  mov     x0, x23
loc_100087878:
  100087878  bl      _objc_release
loc_10008787c:
  10008787c  mov     x0, x23
  100087880  bl      _objc_release
loc_100087884:
  100087884  ldr     x0, [sp, #0x38]
  100087888  bl      _objc_release
loc_10008788c:
  10008788c  mov     x0, x28
  100087890  bl      _objc_release
loc_100087894:
  100087894  mov     x0, x24
  100087898  bl      _objc_release
  10008789c  mov     x0, x21
  1000878a0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000878a4  b       loc_10008779c
  1000878a8  mov     x21, x0
  1000878ac  b       loc_10008788c
  1000878b0  mov     x21, x0
  1000878b4  b       loc_10008787c
  1000878b8  mov     x21, x0
  1000878bc  b       loc_100087894
  1000878c0  mov     x21, x0
  1000878c4  b       loc_100087884
  1000878c8  b       loc_10008779c
  1000878cc  mov     x21, x0
  1000878d0  b       loc_1000878e0
  1000878d4  mov     x21, x0
  1000878d8  mov     x0, x22
  1000878dc  bl      _objc_release
loc_1000878e0:
  1000878e0  mov     x0, x20
  1000878e4  b       loc_100087878
  1000878e8  mov     x21, x0
  1000878ec  mov     x0, x19
  1000878f0  b       loc_100087878

; ======================================================================
; -[ADPersistentStats updateCounterStatsWithKey:]
; address 0x1000878f4  size 592  kind objc
; ======================================================================
  1000878f4  stp     x26, x25, [sp, #-0x50]!
  1000878f8  stp     x24, x23, [sp, #0x10]
  1000878fc  stp     x22, x21, [sp, #0x20]
  100087900  stp     x20, x19, [sp, #0x30]
  100087904  stp     x29, x30, [sp, #0x40]
  100087908  add     x29, sp, #0x40
  10008790c  mov     x22, x0
  100087910  mov     x0, x2
  100087914  bl      _objc_retain
  100087918  mov     x19, x0
  10008791c  adrp    x8, #0x100419000
  100087920  nop
  100087924  ldr     x1, [x8, #0xe90]
  100087928  mov     x0, x22
  10008792c  bl      _objc_msgSend                            ; [self getTotalStatData]
  100087930  mov     x29, x29
  100087934  bl      _objc_retainAutoreleasedReturnValue
  100087938  mov     x20, x0
  10008793c  adrp    x8, #0x10041d000
  100087940  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100087944  adrp    x8, #0x100416000
  100087948  nop
  10008794c  ldr     x1, [x8, #0xac8]
  100087950  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100087954  adrp    x8, #0x100416000
  100087958  nop
  10008795c  ldr     x1, [x8, #0xd80]
  100087960  mov     x2, x20
  100087964  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100087968  mov     x21, x0
  10008796c  adrp    x8, #0x100417000
  100087970  nop
  100087974  ldr     x1, [x8, #0x40]
  100087978  mov     x0, x20
  10008797c  mov     x2, x19
  100087980  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:arg1]
  100087984  mov     x29, x29
  100087988  bl      _objc_retainAutoreleasedReturnValue
  10008798c  mov     x23, x0
  100087990  adrp    x8, #0x100417000
  100087994  nop
  100087998  ldr     x1, [x8, #0xb0]
  10008799c  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:arg1] integerValue]
  1000879a0  mov     x24, x0
  1000879a4  mov     x0, x23
  1000879a8  bl      _objc_release
  1000879ac  adrp    x8, #0x10041d000
  1000879b0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000879b4  add     w2, w24, #1
  1000879b8  adrp    x8, #0x100416000
  1000879bc  nop
  1000879c0  ldr     x1, [x8, #0xec0]
  1000879c4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[self getTotalStatData] objectForKey:arg1] integerValue] + 1)]
  1000879c8  mov     x29, x29
  1000879cc  bl      _objc_retainAutoreleasedReturnValue
  1000879d0  mov     x23, x0
  1000879d4  adrp    x8, #0x100418000
  1000879d8  nop
  1000879dc  ldr     x1, [x8, #0x318]
  1000879e0  mov     x0, x21
  1000879e4  mov     x2, x23
  1000879e8  mov     x3, x19
  1000879ec  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:([[[self getTotalStatData] objectForKey:arg1] integerValue] + 1)] forKey:arg1]
  1000879f0  adrp    x26, #0x10041d000
  1000879f4  ldr     x0, [x26, #0xf38]                        ; class NSUserDefaults
  1000879f8  adrp    x8, #0x100416000
  1000879fc  nop
  100087a00  ldr     x24, [x8, #0xd98]
  100087a04  mov     x1, x24
  100087a08  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087a0c  mov     x29, x29
  100087a10  bl      _objc_retainAutoreleasedReturnValue
  100087a14  mov     x25, x0
  100087a18  adrp    x8, #0x100419000
  100087a1c  nop
  100087a20  ldr     x1, [x8, #0xe48]
  100087a24  mov     x0, x22
  100087a28  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100087a2c  mov     x29, x29
  100087a30  bl      _objc_retainAutoreleasedReturnValue
  100087a34  mov     x22, x0
  100087a38  adrp    x8, #0x100416000
  100087a3c  nop
  100087a40  ldr     x1, [x8, #0xdc8]
  100087a44  mov     x0, x25
  100087a48  mov     x2, x21
  100087a4c  mov     x3, x22
  100087a50  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  100087a54  mov     x0, x22
  100087a58  bl      _objc_release
  100087a5c  mov     x0, x25
  100087a60  bl      _objc_release
  100087a64  ldr     x0, [x26, #0xf38]                        ; class NSUserDefaults
  100087a68  mov     x1, x24
  100087a6c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087a70  mov     x29, x29
  100087a74  bl      _objc_retainAutoreleasedReturnValue
  100087a78  mov     x24, x0
  100087a7c  adrp    x8, #0x100416000
  100087a80  nop
  100087a84  ldr     x1, [x8, #0xdd8]
  100087a88  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100087a8c  mov     x0, x24
  100087a90  bl      _objc_release
  100087a94  mov     x0, x23
  100087a98  bl      _objc_release
  100087a9c  mov     x0, x21
  100087aa0  bl      _objc_release
  100087aa4  mov     x0, x20
  100087aa8  bl      _objc_release
  100087aac  mov     x0, x19
  100087ab0  ldp     x29, x30, [sp, #0x40]
  100087ab4  ldp     x20, x19, [sp, #0x30]
  100087ab8  ldp     x22, x21, [sp, #0x20]
  100087abc  ldp     x24, x23, [sp, #0x10]
  100087ac0  ldp     x26, x25, [sp], #0x50
  100087ac4  b       _objc_release
  100087ac8  mov     x22, x0
  100087acc  b       loc_100087b1c
  100087ad0  mov     x22, x0
  100087ad4  b       loc_100087b2c
  100087ad8  mov     x22, x0
  100087adc  b       loc_100087b24
  100087ae0  mov     x22, x0
  100087ae4  b       loc_100087b34
  100087ae8  mov     x22, x0
  100087aec  b       loc_100087b1c
  100087af0  mov     x22, x0
  100087af4  b       loc_100087b08
  100087af8  mov     x1, x22
  100087afc  mov     x22, x0
  100087b00  mov     x0, x1
  100087b04  bl      _objc_release
loc_100087b08:
  100087b08  mov     x0, x25
  100087b0c  b       loc_100087b18
  100087b10  mov     x22, x0
  100087b14  mov     x0, x24
loc_100087b18:
  100087b18  bl      _objc_release
loc_100087b1c:
  100087b1c  mov     x0, x23
  100087b20  bl      _objc_release
loc_100087b24:
  100087b24  mov     x0, x21
  100087b28  bl      _objc_release
loc_100087b2c:
  100087b2c  mov     x0, x20
  100087b30  bl      _objc_release
loc_100087b34:
  100087b34  mov     x0, x19
  100087b38  bl      _objc_release
  100087b3c  mov     x0, x22
  100087b40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats updateMissionsCompleted:]
; address 0x100087b44  size 568  kind objc
; ======================================================================
  100087b44  stp     x26, x25, [sp, #-0x50]!
  100087b48  stp     x24, x23, [sp, #0x10]
  100087b4c  stp     x22, x21, [sp, #0x20]
  100087b50  stp     x20, x19, [sp, #0x30]
  100087b54  stp     x29, x30, [sp, #0x40]
  100087b58  add     x29, sp, #0x40
  100087b5c  mov     x21, x2
  100087b60  mov     x22, x0
  100087b64  adrp    x8, #0x100419000
  100087b68  nop
  100087b6c  ldr     x1, [x8, #0xe90]
  100087b70  bl      _objc_msgSend                            ; [self getTotalStatData]
  100087b74  mov     x29, x29
  100087b78  bl      _objc_retainAutoreleasedReturnValue
  100087b7c  mov     x19, x0
  100087b80  adrp    x8, #0x10041d000
  100087b84  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100087b88  adrp    x8, #0x100416000
  100087b8c  nop
  100087b90  ldr     x1, [x8, #0xac8]
  100087b94  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100087b98  adrp    x8, #0x100416000
  100087b9c  nop
  100087ba0  ldr     x1, [x8, #0xd80]
  100087ba4  mov     x2, x19
  100087ba8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100087bac  mov     x20, x0
  100087bb0  adrp    x8, #0x100417000
  100087bb4  nop
  100087bb8  ldr     x1, [x8, #0x40]
  100087bbc  adrp    x2, #0x1003bf000
  100087bc0  add     x2, x2, #0xb10                           ; @"Total number of missions completed"
  100087bc4  mov     x0, x19
  100087bc8  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Total number of missions completed"]
  100087bcc  mov     x29, x29
  100087bd0  bl      _objc_retainAutoreleasedReturnValue
  100087bd4  mov     x23, x0
  100087bd8  adrp    x8, #0x100417000
  100087bdc  nop
  100087be0  ldr     x1, [x8, #0xb0]
  100087be4  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Total number of missions completed"] integerValue]
  100087be8  mov     x24, x0
  100087bec  mov     x0, x23
  100087bf0  bl      _objc_release
  100087bf4  adrp    x8, #0x10041d000
  100087bf8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100087bfc  add     w2, w24, w21                             ; t1 = ([[[self getTotalStatData] objectForKey:@"Total number of missions completed"] integerValue] + arg1)
  100087c00  adrp    x8, #0x100416000
  100087c04  nop
  100087c08  ldr     x1, [x8, #0xec0]
  100087c0c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  100087c10  mov     x29, x29
  100087c14  bl      _objc_retainAutoreleasedReturnValue
  100087c18  mov     x21, x0
  100087c1c  adrp    x8, #0x100418000
  100087c20  nop
  100087c24  ldr     x1, [x8, #0x318]
  100087c28  adrp    x3, #0x1003bf000
  100087c2c  add     x3, x3, #0xb10                           ; @"Total number of missions completed"
  100087c30  mov     x0, x20
  100087c34  mov     x2, x21
  100087c38  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t1] forKey:@"Total number of missions completed"]
  100087c3c  adrp    x25, #0x10041d000
  100087c40  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100087c44  adrp    x8, #0x100416000
  100087c48  nop
  100087c4c  ldr     x23, [x8, #0xd98]
  100087c50  mov     x1, x23
  100087c54  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087c58  mov     x29, x29
  100087c5c  bl      _objc_retainAutoreleasedReturnValue
  100087c60  mov     x24, x0
  100087c64  adrp    x8, #0x100419000
  100087c68  nop
  100087c6c  ldr     x1, [x8, #0xe48]
  100087c70  mov     x0, x22
  100087c74  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100087c78  mov     x29, x29
  100087c7c  bl      _objc_retainAutoreleasedReturnValue
  100087c80  mov     x22, x0
  100087c84  adrp    x8, #0x100416000
  100087c88  nop
  100087c8c  ldr     x1, [x8, #0xdc8]
  100087c90  mov     x0, x24
  100087c94  mov     x2, x20
  100087c98  mov     x3, x22
  100087c9c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  100087ca0  mov     x0, x22
  100087ca4  bl      _objc_release
  100087ca8  mov     x0, x24
  100087cac  bl      _objc_release
  100087cb0  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100087cb4  mov     x1, x23
  100087cb8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087cbc  mov     x29, x29
  100087cc0  bl      _objc_retainAutoreleasedReturnValue
  100087cc4  mov     x23, x0
  100087cc8  adrp    x8, #0x100416000
  100087ccc  nop
  100087cd0  ldr     x1, [x8, #0xdd8]
  100087cd4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100087cd8  mov     x0, x23
  100087cdc  bl      _objc_release
  100087ce0  mov     x0, x21
  100087ce4  bl      _objc_release
  100087ce8  mov     x0, x20
  100087cec  bl      _objc_release
  100087cf0  mov     x0, x19
  100087cf4  ldp     x29, x30, [sp, #0x40]
  100087cf8  ldp     x20, x19, [sp, #0x30]
  100087cfc  ldp     x22, x21, [sp, #0x20]
  100087d00  ldp     x24, x23, [sp, #0x10]
  100087d04  ldp     x26, x25, [sp], #0x50
  100087d08  b       _objc_release
  100087d0c  mov     x22, x0
  100087d10  b       loc_100087d5c
  100087d14  mov     x22, x0
  100087d18  b       loc_100087d6c
  100087d1c  mov     x22, x0
  100087d20  b       loc_100087d64
  100087d24  mov     x22, x0
  100087d28  mov     x0, x23
  100087d2c  b       loc_100087d60
  100087d30  mov     x22, x0
  100087d34  b       loc_100087d48
  100087d38  mov     x1, x22
  100087d3c  mov     x22, x0
  100087d40  mov     x0, x1
  100087d44  bl      _objc_release
loc_100087d48:
  100087d48  mov     x0, x24
  100087d4c  b       loc_100087d58
  100087d50  mov     x22, x0
  100087d54  mov     x0, x23
loc_100087d58:
  100087d58  bl      _objc_release
loc_100087d5c:
  100087d5c  mov     x0, x21
loc_100087d60:
  100087d60  bl      _objc_release
loc_100087d64:
  100087d64  mov     x0, x20
  100087d68  bl      _objc_release
loc_100087d6c:
  100087d6c  mov     x0, x19
  100087d70  bl      _objc_release
  100087d74  mov     x0, x22
  100087d78  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats updateMissionsSkipped:]
; address 0x100087d7c  size 568  kind objc
; ======================================================================
  100087d7c  stp     x26, x25, [sp, #-0x50]!
  100087d80  stp     x24, x23, [sp, #0x10]
  100087d84  stp     x22, x21, [sp, #0x20]
  100087d88  stp     x20, x19, [sp, #0x30]
  100087d8c  stp     x29, x30, [sp, #0x40]
  100087d90  add     x29, sp, #0x40
  100087d94  mov     x21, x2
  100087d98  mov     x22, x0
  100087d9c  adrp    x8, #0x100419000
  100087da0  nop
  100087da4  ldr     x1, [x8, #0xe90]
  100087da8  bl      _objc_msgSend                            ; [self getTotalStatData]
  100087dac  mov     x29, x29
  100087db0  bl      _objc_retainAutoreleasedReturnValue
  100087db4  mov     x19, x0
  100087db8  adrp    x8, #0x10041d000
  100087dbc  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100087dc0  adrp    x8, #0x100416000
  100087dc4  nop
  100087dc8  ldr     x1, [x8, #0xac8]
  100087dcc  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100087dd0  adrp    x8, #0x100416000
  100087dd4  nop
  100087dd8  ldr     x1, [x8, #0xd80]
  100087ddc  mov     x2, x19
  100087de0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100087de4  mov     x20, x0
  100087de8  adrp    x8, #0x100417000
  100087dec  nop
  100087df0  ldr     x1, [x8, #0x40]
  100087df4  adrp    x2, #0x1003bf000
  100087df8  add     x2, x2, #0xb30                           ; @"Total number of missions skipped"
  100087dfc  mov     x0, x19
  100087e00  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Total number of missions skipped"]
  100087e04  mov     x29, x29
  100087e08  bl      _objc_retainAutoreleasedReturnValue
  100087e0c  mov     x23, x0
  100087e10  adrp    x8, #0x100417000
  100087e14  nop
  100087e18  ldr     x1, [x8, #0xb0]
  100087e1c  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Total number of missions skipped"] integerValue]
  100087e20  mov     x24, x0
  100087e24  mov     x0, x23
  100087e28  bl      _objc_release
  100087e2c  adrp    x8, #0x10041d000
  100087e30  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100087e34  add     w2, w24, w21                             ; t1 = ([[[self getTotalStatData] objectForKey:@"Total number of missions skipped"] integerValue] + arg1)
  100087e38  adrp    x8, #0x100416000
  100087e3c  nop
  100087e40  ldr     x1, [x8, #0xec0]
  100087e44  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  100087e48  mov     x29, x29
  100087e4c  bl      _objc_retainAutoreleasedReturnValue
  100087e50  mov     x21, x0
  100087e54  adrp    x8, #0x100418000
  100087e58  nop
  100087e5c  ldr     x1, [x8, #0x318]
  100087e60  adrp    x3, #0x1003bf000
  100087e64  add     x3, x3, #0xb30                           ; @"Total number of missions skipped"
  100087e68  mov     x0, x20
  100087e6c  mov     x2, x21
  100087e70  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:t1] forKey:@"Total number of missions skipped"]
  100087e74  adrp    x25, #0x10041d000
  100087e78  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100087e7c  adrp    x8, #0x100416000
  100087e80  nop
  100087e84  ldr     x23, [x8, #0xd98]
  100087e88  mov     x1, x23
  100087e8c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087e90  mov     x29, x29
  100087e94  bl      _objc_retainAutoreleasedReturnValue
  100087e98  mov     x24, x0
  100087e9c  adrp    x8, #0x100419000
  100087ea0  nop
  100087ea4  ldr     x1, [x8, #0xe48]
  100087ea8  mov     x0, x22
  100087eac  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100087eb0  mov     x29, x29
  100087eb4  bl      _objc_retainAutoreleasedReturnValue
  100087eb8  mov     x22, x0
  100087ebc  adrp    x8, #0x100416000
  100087ec0  nop
  100087ec4  ldr     x1, [x8, #0xdc8]
  100087ec8  mov     x0, x24
  100087ecc  mov     x2, x20
  100087ed0  mov     x3, x22
  100087ed4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  100087ed8  mov     x0, x22
  100087edc  bl      _objc_release
  100087ee0  mov     x0, x24
  100087ee4  bl      _objc_release
  100087ee8  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100087eec  mov     x1, x23
  100087ef0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100087ef4  mov     x29, x29
  100087ef8  bl      _objc_retainAutoreleasedReturnValue
  100087efc  mov     x23, x0
  100087f00  adrp    x8, #0x100416000
  100087f04  nop
  100087f08  ldr     x1, [x8, #0xdd8]
  100087f0c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100087f10  mov     x0, x23
  100087f14  bl      _objc_release
  100087f18  mov     x0, x21
  100087f1c  bl      _objc_release
  100087f20  mov     x0, x20
  100087f24  bl      _objc_release
  100087f28  mov     x0, x19
  100087f2c  ldp     x29, x30, [sp, #0x40]
  100087f30  ldp     x20, x19, [sp, #0x30]
  100087f34  ldp     x22, x21, [sp, #0x20]
  100087f38  ldp     x24, x23, [sp, #0x10]
  100087f3c  ldp     x26, x25, [sp], #0x50
  100087f40  b       _objc_release
  100087f44  mov     x22, x0
  100087f48  b       loc_100087f94
  100087f4c  mov     x22, x0
  100087f50  b       loc_100087fa4
  100087f54  mov     x22, x0
  100087f58  b       loc_100087f9c
  100087f5c  mov     x22, x0
  100087f60  mov     x0, x23
  100087f64  b       loc_100087f98
  100087f68  mov     x22, x0
  100087f6c  b       loc_100087f80
  100087f70  mov     x1, x22
  100087f74  mov     x22, x0
  100087f78  mov     x0, x1
  100087f7c  bl      _objc_release
loc_100087f80:
  100087f80  mov     x0, x24
  100087f84  b       loc_100087f90
  100087f88  mov     x22, x0
  100087f8c  mov     x0, x23
loc_100087f90:
  100087f90  bl      _objc_release
loc_100087f94:
  100087f94  mov     x0, x21
loc_100087f98:
  100087f98  bl      _objc_release
loc_100087f9c:
  100087f9c  mov     x0, x20
  100087fa0  bl      _objc_release
loc_100087fa4:
  100087fa4  mov     x0, x19
  100087fa8  bl      _objc_release
  100087fac  mov     x0, x22
  100087fb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats updateDeaths]
; address 0x100087fb4  size 560  kind objc
; ======================================================================
  100087fb4  stp     x26, x25, [sp, #-0x50]!
  100087fb8  stp     x24, x23, [sp, #0x10]
  100087fbc  stp     x22, x21, [sp, #0x20]
  100087fc0  stp     x20, x19, [sp, #0x30]
  100087fc4  stp     x29, x30, [sp, #0x40]
  100087fc8  add     x29, sp, #0x40
  100087fcc  mov     x22, x0
  100087fd0  adrp    x8, #0x100419000
  100087fd4  nop
  100087fd8  ldr     x1, [x8, #0xe90]
  100087fdc  bl      _objc_msgSend                            ; [self getTotalStatData]
  100087fe0  mov     x29, x29
  100087fe4  bl      _objc_retainAutoreleasedReturnValue
  100087fe8  mov     x19, x0
  100087fec  adrp    x8, #0x10041d000
  100087ff0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100087ff4  adrp    x8, #0x100416000
  100087ff8  nop
  100087ffc  ldr     x1, [x8, #0xac8]
  100088000  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100088004  adrp    x8, #0x100416000
  100088008  nop
  10008800c  ldr     x1, [x8, #0xd80]
  100088010  mov     x2, x19
  100088014  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100088018  mov     x20, x0
  10008801c  adrp    x8, #0x100417000
  100088020  nop
  100088024  ldr     x1, [x8, #0x40]
  100088028  adrp    x2, #0x1003bf000
  10008802c  add     x2, x2, #0xb50                           ; @"Deaths"
  100088030  mov     x0, x19
  100088034  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Deaths"]
  100088038  mov     x29, x29
  10008803c  bl      _objc_retainAutoreleasedReturnValue
  100088040  mov     x21, x0
  100088044  adrp    x8, #0x100417000
  100088048  nop
  10008804c  ldr     x1, [x8, #0xb0]
  100088050  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Deaths"] integerValue]
  100088054  mov     x23, x0
  100088058  mov     x0, x21
  10008805c  bl      _objc_release
  100088060  adrp    x8, #0x10041d000
  100088064  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100088068  add     w2, w23, #1
  10008806c  adrp    x8, #0x100416000
  100088070  nop
  100088074  ldr     x1, [x8, #0xec0]
  100088078  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[self getTotalStatData] objectForKey:@"Deaths"] integerValue] + 1)]
  10008807c  mov     x29, x29
  100088080  bl      _objc_retainAutoreleasedReturnValue
  100088084  mov     x21, x0
  100088088  adrp    x8, #0x100418000
  10008808c  nop
  100088090  ldr     x1, [x8, #0x318]
  100088094  adrp    x3, #0x1003bf000
  100088098  add     x3, x3, #0xb50                           ; @"Deaths"
  10008809c  mov     x0, x20
  1000880a0  mov     x2, x21
  1000880a4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:([[[self getTotalStatData] objectForKey:@"Deaths"] integerValue] + 1)] forKey:@"Deaths"]
  1000880a8  adrp    x25, #0x10041d000
  1000880ac  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  1000880b0  adrp    x8, #0x100416000
  1000880b4  nop
  1000880b8  ldr     x23, [x8, #0xd98]
  1000880bc  mov     x1, x23
  1000880c0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000880c4  mov     x29, x29
  1000880c8  bl      _objc_retainAutoreleasedReturnValue
  1000880cc  mov     x24, x0
  1000880d0  adrp    x8, #0x100419000
  1000880d4  nop
  1000880d8  ldr     x1, [x8, #0xe48]
  1000880dc  mov     x0, x22
  1000880e0  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  1000880e4  mov     x29, x29
  1000880e8  bl      _objc_retainAutoreleasedReturnValue
  1000880ec  mov     x22, x0
  1000880f0  adrp    x8, #0x100416000
  1000880f4  nop
  1000880f8  ldr     x1, [x8, #0xdc8]
  1000880fc  mov     x0, x24
  100088100  mov     x2, x20
  100088104  mov     x3, x22
  100088108  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  10008810c  mov     x0, x22
  100088110  bl      _objc_release
  100088114  mov     x0, x24
  100088118  bl      _objc_release
  10008811c  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100088120  mov     x1, x23
  100088124  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088128  mov     x29, x29
  10008812c  bl      _objc_retainAutoreleasedReturnValue
  100088130  mov     x23, x0
  100088134  adrp    x8, #0x100416000
  100088138  nop
  10008813c  ldr     x1, [x8, #0xdd8]
  100088140  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100088144  mov     x0, x23
  100088148  bl      _objc_release
  10008814c  mov     x0, x21
  100088150  bl      _objc_release
  100088154  mov     x0, x20
  100088158  bl      _objc_release
  10008815c  mov     x0, x19
  100088160  ldp     x29, x30, [sp, #0x40]
  100088164  ldp     x20, x19, [sp, #0x30]
  100088168  ldp     x22, x21, [sp, #0x20]
  10008816c  ldp     x24, x23, [sp, #0x10]
  100088170  ldp     x26, x25, [sp], #0x50
  100088174  b       _objc_release
  100088178  mov     x22, x0
  10008817c  b       loc_1000881c4
  100088180  mov     x22, x0
  100088184  b       loc_1000881d4
  100088188  mov     x22, x0
  10008818c  b       loc_1000881cc
  100088190  mov     x22, x0
  100088194  b       loc_1000881c4
  100088198  mov     x22, x0
  10008819c  b       loc_1000881b0
  1000881a0  mov     x1, x22
  1000881a4  mov     x22, x0
  1000881a8  mov     x0, x1
  1000881ac  bl      _objc_release
loc_1000881b0:
  1000881b0  mov     x0, x24
  1000881b4  b       loc_1000881c0
  1000881b8  mov     x22, x0
  1000881bc  mov     x0, x23
loc_1000881c0:
  1000881c0  bl      _objc_release
loc_1000881c4:
  1000881c4  mov     x0, x21
  1000881c8  bl      _objc_release
loc_1000881cc:
  1000881cc  mov     x0, x20
  1000881d0  bl      _objc_release
loc_1000881d4:
  1000881d4  mov     x0, x19
  1000881d8  bl      _objc_release
  1000881dc  mov     x0, x22
  1000881e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats updateNumberOfWeaponsOwned]
; address 0x1000881e4  size 560  kind objc
; ======================================================================
  1000881e4  stp     x26, x25, [sp, #-0x50]!
  1000881e8  stp     x24, x23, [sp, #0x10]
  1000881ec  stp     x22, x21, [sp, #0x20]
  1000881f0  stp     x20, x19, [sp, #0x30]
  1000881f4  stp     x29, x30, [sp, #0x40]
  1000881f8  add     x29, sp, #0x40
  1000881fc  mov     x22, x0
  100088200  adrp    x8, #0x100419000
  100088204  nop
  100088208  ldr     x1, [x8, #0xe90]
  10008820c  bl      _objc_msgSend                            ; [self getTotalStatData]
  100088210  mov     x29, x29
  100088214  bl      _objc_retainAutoreleasedReturnValue
  100088218  mov     x19, x0
  10008821c  adrp    x8, #0x10041d000
  100088220  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100088224  adrp    x8, #0x100416000
  100088228  nop
  10008822c  ldr     x1, [x8, #0xac8]
  100088230  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100088234  adrp    x8, #0x100416000
  100088238  nop
  10008823c  ldr     x1, [x8, #0xd80]
  100088240  mov     x2, x19
  100088244  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100088248  mov     x20, x0
  10008824c  adrp    x8, #0x100417000
  100088250  nop
  100088254  ldr     x1, [x8, #0x40]
  100088258  adrp    x2, #0x1003bf000
  10008825c  add     x2, x2, #0x9b0                           ; @"Weapons obtained"
  100088260  mov     x0, x19
  100088264  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Weapons obtained"]
  100088268  mov     x29, x29
  10008826c  bl      _objc_retainAutoreleasedReturnValue
  100088270  mov     x21, x0
  100088274  adrp    x8, #0x100417000
  100088278  nop
  10008827c  ldr     x1, [x8, #0xb0]
  100088280  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Weapons obtained"] integerValue]
  100088284  mov     x23, x0
  100088288  mov     x0, x21
  10008828c  bl      _objc_release
  100088290  adrp    x8, #0x10041d000
  100088294  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100088298  add     w2, w23, #1
  10008829c  adrp    x8, #0x100416000
  1000882a0  nop
  1000882a4  ldr     x1, [x8, #0xec0]
  1000882a8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[self getTotalStatData] objectForKey:@"Weapons obtained"] integerValue] + 1)]
  1000882ac  mov     x29, x29
  1000882b0  bl      _objc_retainAutoreleasedReturnValue
  1000882b4  mov     x21, x0
  1000882b8  adrp    x8, #0x100418000
  1000882bc  nop
  1000882c0  ldr     x1, [x8, #0x318]
  1000882c4  adrp    x3, #0x1003bf000
  1000882c8  add     x3, x3, #0x9b0                           ; @"Weapons obtained"
  1000882cc  mov     x0, x20
  1000882d0  mov     x2, x21
  1000882d4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInt:([[[self getTotalStatData] objectForKey:@"Weapons obtained"] integerValue] + 1)] forKey:@"Weapons obtained"]
  1000882d8  adrp    x25, #0x10041d000
  1000882dc  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  1000882e0  adrp    x8, #0x100416000
  1000882e4  nop
  1000882e8  ldr     x23, [x8, #0xd98]
  1000882ec  mov     x1, x23
  1000882f0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000882f4  mov     x29, x29
  1000882f8  bl      _objc_retainAutoreleasedReturnValue
  1000882fc  mov     x24, x0
  100088300  adrp    x8, #0x100419000
  100088304  nop
  100088308  ldr     x1, [x8, #0xe48]
  10008830c  mov     x0, x22
  100088310  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100088314  mov     x29, x29
  100088318  bl      _objc_retainAutoreleasedReturnValue
  10008831c  mov     x22, x0
  100088320  adrp    x8, #0x100416000
  100088324  nop
  100088328  ldr     x1, [x8, #0xdc8]
  10008832c  mov     x0, x24
  100088330  mov     x2, x20
  100088334  mov     x3, x22
  100088338  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  10008833c  mov     x0, x22
  100088340  bl      _objc_release
  100088344  mov     x0, x24
  100088348  bl      _objc_release
  10008834c  ldr     x0, [x25, #0xf38]                        ; class NSUserDefaults
  100088350  mov     x1, x23
  100088354  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088358  mov     x29, x29
  10008835c  bl      _objc_retainAutoreleasedReturnValue
  100088360  mov     x23, x0
  100088364  adrp    x8, #0x100416000
  100088368  nop
  10008836c  ldr     x1, [x8, #0xdd8]
  100088370  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100088374  mov     x0, x23
  100088378  bl      _objc_release
  10008837c  mov     x0, x21
  100088380  bl      _objc_release
  100088384  mov     x0, x20
  100088388  bl      _objc_release
  10008838c  mov     x0, x19
  100088390  ldp     x29, x30, [sp, #0x40]
  100088394  ldp     x20, x19, [sp, #0x30]
  100088398  ldp     x22, x21, [sp, #0x20]
  10008839c  ldp     x24, x23, [sp, #0x10]
  1000883a0  ldp     x26, x25, [sp], #0x50
  1000883a4  b       _objc_release
  1000883a8  mov     x22, x0
  1000883ac  b       loc_1000883f4
  1000883b0  mov     x22, x0
  1000883b4  b       loc_100088404
  1000883b8  mov     x22, x0
  1000883bc  b       loc_1000883fc
  1000883c0  mov     x22, x0
  1000883c4  b       loc_1000883f4
  1000883c8  mov     x22, x0
  1000883cc  b       loc_1000883e0
  1000883d0  mov     x1, x22
  1000883d4  mov     x22, x0
  1000883d8  mov     x0, x1
  1000883dc  bl      _objc_release
loc_1000883e0:
  1000883e0  mov     x0, x24
  1000883e4  b       loc_1000883f0
  1000883e8  mov     x22, x0
  1000883ec  mov     x0, x23
loc_1000883f0:
  1000883f0  bl      _objc_release
loc_1000883f4:
  1000883f4  mov     x0, x21
  1000883f8  bl      _objc_release
loc_1000883fc:
  1000883fc  mov     x0, x20
  100088400  bl      _objc_release
loc_100088404:
  100088404  mov     x0, x19
  100088408  bl      _objc_release
  10008840c  mov     x0, x22
  100088410  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats gameTimeToString:]
; address 0x100088414  size 172  kind objc
; ======================================================================
  100088414  stp     x29, x30, [sp, #-0x10]!
  100088418  mov     x29, sp
  10008841c  sub     sp, sp, #0x20
  100088420  frintx  d1, d0
  100088424  frintm  d1, d0
  100088428  fcvtzs  x8, d1
  10008842c  mov     x9, #-0x7777777777777778
  100088430  movk    x9, #0x8889
  100088434  smulh   x10, x8, x9
  100088438  add     x10, x10, x8
  10008843c  asr     x11, x10, #5
  100088440  add     x10, x11, x10, lsr #63                   ; t1 = (((((int)floor(arg1) *h 0x8888888888888889) + (int)floor(arg1)) >> 5) + ((((int)floor(arg1) *h 0x8888888888888889) + (int)floor(arg1)) >>> 63))
  100088444  mov     w11, #0x3c
  100088448  msub    x8, x10, x11, x8
  10008844c  nop
  100088450  ldr     d1, #0x100181a08                         ; d1 = 60.0
  100088454  fdiv    d0, d0, d1
  100088458  frintm  d2, d0
  10008845c  fcvtzs  x10, d2
  100088460  frintx  d0, d0
  100088464  scvtf   d0, x10
  100088468  fdiv    d0, d0, d1
  10008846c  frintx  d1, d0
  100088470  frintm  d0, d0
  100088474  fcvtzs  x12, d0
  100088478  smulh   x9, x10, x9
  10008847c  add     x9, x9, x10
  100088480  asr     x13, x9, #5
  100088484  add     x9, x13, x9, lsr #63                     ; t2 = (((((int)floor((arg1 / 60)) *h 0x8888888888888889) + (int)floor((arg1 / 60))) >> 5) + ((((int)floor((arg1 / 60)) *h 0x8888888888888889) + (int)floor((arg1 / 60))) >>> 63))
  100088488  msub    x9, x9, x11, x10
  10008848c  adrp    x10, #0x10041d000
  100088490  ldr     x0, [x10, #0xf78]                        ; class NSString
  100088494  adrp    x10, #0x100416000
  100088498  nop
  10008849c  ldr     x1, [x10, #0xee8]
  1000884a0  str     x8, [sp, #0x10]
  1000884a4  stp     x12, x9, [sp]
  1000884a8  adrp    x2, #0x1003bf000
  1000884ac  add     x2, x2, #0xb70                           ; @"%02d:%02d:%02d"
  1000884b0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%02d:%02d:%02d", (int)floor(((float)(int)floor((arg1 / 60)) / 60)), ((int)floor((arg1 / 60)) - t2 * 60), ((int)floor(arg1) - t1 * 60)]
  1000884b4  mov     sp, x29
  1000884b8  ldp     x29, x30, [sp], #0x10
  1000884bc  ret

; ======================================================================
; -[ADPersistentStats updateTotalPlayTime:WithKey:]
; address 0x1000884c0  size 640  kind objc
; ======================================================================
  1000884c0  stp     d9, d8, [sp, #-0x60]!
  1000884c4  stp     x26, x25, [sp, #0x10]
  1000884c8  stp     x24, x23, [sp, #0x20]
  1000884cc  stp     x22, x21, [sp, #0x30]
  1000884d0  stp     x20, x19, [sp, #0x40]
  1000884d4  stp     x29, x30, [sp, #0x50]
  1000884d8  add     x29, sp, #0x50
  1000884dc  sub     sp, sp, #0x20
  1000884e0  mov     v8.16b, v0.16b
  1000884e4  mov     x20, x0
  1000884e8  mov     x0, x2
  1000884ec  bl      _objc_retain
  1000884f0  mov     x19, x0
  1000884f4  adrp    x8, #0x100419000
  1000884f8  nop
  1000884fc  ldr     x1, [x8, #0xe90]
  100088500  mov     x0, x20
  100088504  bl      _objc_msgSend                            ; [self getTotalStatData]
  100088508  mov     x29, x29
  10008850c  bl      _objc_retainAutoreleasedReturnValue
  100088510  mov     x21, x0
  100088514  adrp    x8, #0x100417000
  100088518  nop
  10008851c  ldr     x1, [x8, #0x40]
  100088520  mov     x2, x19
  100088524  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:arg2]
  100088528  mov     x29, x29
  10008852c  bl      _objc_retainAutoreleasedReturnValue
  100088530  mov     x20, x0
  100088534  mov     x0, x21
  100088538  bl      _objc_release
  10008853c  adrp    x8, #0x100419000
  100088540  nop
  100088544  ldr     x1, [x8, #0x188]
  100088548  adrp    x2, #0x1003bf000
  10008854c  add     x2, x2, #0xb90                           ; @":"
  100088550  mov     x0, x20
  100088554  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"]
  100088558  mov     x29, x29
  10008855c  bl      _objc_retainAutoreleasedReturnValue
  100088560  mov     x21, x0
  100088564  frintx  d0, d8
  100088568  adrp    x8, #0x100416000
  10008856c  nop
  100088570  ldr     x22, [x8, #0xc30]
  100088574  mov     w2, #2
  100088578  mov     x1, x22
  10008857c  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:2]
  100088580  mov     x29, x29
  100088584  bl      _objc_retainAutoreleasedReturnValue
  100088588  mov     x25, x0
  10008858c  adrp    x8, #0x100417000
  100088590  nop
  100088594  ldr     x24, [x8, #0xb0]
  100088598  mov     x1, x24
  10008859c  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:2] integerValue]
  1000885a0  mov     x23, x0
  1000885a4  mov     x0, x25
  1000885a8  bl      _objc_release
  1000885ac  mov     w2, #1
  1000885b0  mov     x0, x21
  1000885b4  mov     x1, x22
  1000885b8  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:1]
  1000885bc  mov     x29, x29
  1000885c0  bl      _objc_retainAutoreleasedReturnValue
  1000885c4  mov     x26, x0
  1000885c8  mov     x1, x24
  1000885cc  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:1] integerValue]
  1000885d0  mov     x25, x0
  1000885d4  mov     x0, x26
  1000885d8  bl      _objc_release
  1000885dc  mov     x2, #0
  1000885e0  mov     x0, x21
  1000885e4  mov     x1, x22
  1000885e8  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:0]
  1000885ec  mov     x29, x29
  1000885f0  bl      _objc_retainAutoreleasedReturnValue
  1000885f4  mov     x22, x0
  1000885f8  mov     x1, x24
  1000885fc  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:0] integerValue]
  100088600  scvtf   d0, x23                                  ; t1 = (float)[[[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:2] integerValue]
  100088604  frintm  d1, d8
  100088608  fadd    d0, d1, d0
  10008860c  fcvtzu  x23, d0
  100088610  mov     x8, #-0x7777777777777778
  100088614  movk    x8, #0x8889
  100088618  umulh   x8, x23, x8
  10008861c  lsr     x8, x8, #5
  100088620  add     x24, x25, x8                             ; t2 = ([[[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:1] integerValue] + (((uint)(floor(arg1) + t1) *h 0x8888888888888889) >>> 5))
  100088624  mov     x8, #-0x7777777777777778
  100088628  movk    x8, #0x8889
  10008862c  umulh   x8, x24, x8
  100088630  lsr     x8, x8, #5
  100088634  add     x25, x0, x8                              ; t3 = ([[[[[self getTotalStatData] objectForKey:arg2] componentsSeparatedByString:@":"] objectAtIndex:0] integerValue] + ((t2 *h 0x8888888888888889) >>> 5))
  100088638  mov     x0, x22
  10008863c  bl      _objc_release
  100088640  adrp    x8, #0x10041d000
  100088644  ldr     x0, [x8, #0xf78]                         ; class NSString
  100088648  mov     x8, #-0x7777777777777778
  10008864c  movk    x8, #0x8889
  100088650  umulh   x9, x24, x8
  100088654  lsr     x9, x9, #5
  100088658  mov     w10, #0x3c
  10008865c  msub    x9, x9, x10, x24
  100088660  umulh   x8, x23, x8
  100088664  lsr     x8, x8, #5
  100088668  msub    x8, x8, x10, x23
  10008866c  adrp    x10, #0x100416000
  100088670  nop
  100088674  ldr     x1, [x10, #0xee8]
  100088678  stp     x9, x8, [sp, #8]
  10008867c  str     x25, [sp]
  100088680  adrp    x2, #0x1003bf000
  100088684  add     x2, x2, #0xb70                           ; @"%02d:%02d:%02d"
  100088688  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%02d:%02d:%02d", t3, (t2 - ((t2 *h 0x8888888888888889) >>> 5) * 60), ((uint)(floor(arg1) + t1) - (((uint)(floor(arg1) + t1) *h 0x8888888888888889) >>…]
  10008868c  mov     x29, x29
  100088690  bl      _objc_retainAutoreleasedReturnValue
  100088694  mov     x22, x0
  100088698  mov     x0, x21
  10008869c  bl      _objc_release
  1000886a0  mov     x0, x20
  1000886a4  bl      _objc_release
  1000886a8  mov     x0, x19
  1000886ac  bl      _objc_release
  1000886b0  mov     x0, x22
  1000886b4  sub     sp, x29, #0x50
  1000886b8  ldp     x29, x30, [sp, #0x50]
  1000886bc  ldp     x20, x19, [sp, #0x40]
  1000886c0  ldp     x22, x21, [sp, #0x30]
  1000886c4  ldp     x24, x23, [sp, #0x20]
  1000886c8  ldp     x26, x25, [sp, #0x10]
  1000886cc  ldp     d9, d8, [sp], #0x60
  1000886d0  b       _objc_autoreleaseReturnValue
  1000886d4  mov     x22, x0
  1000886d8  b       loc_100088720
  1000886dc  mov     x22, x0
  1000886e0  b       loc_100088730
  1000886e4  mov     x22, x0
  1000886e8  mov     x0, x21
  1000886ec  b       loc_10008872c
  1000886f0  mov     x22, x0
  1000886f4  b       loc_100088728
  1000886f8  mov     x22, x0
  1000886fc  mov     x0, x25
  100088700  b       loc_10008871c
  100088704  mov     x22, x0
  100088708  mov     x0, x26
  10008870c  b       loc_10008871c
  100088710  mov     x1, x22
  100088714  mov     x22, x0
  100088718  mov     x0, x1
loc_10008871c:
  10008871c  bl      _objc_release
loc_100088720:
  100088720  mov     x0, x21
  100088724  bl      _objc_release
loc_100088728:
  100088728  mov     x0, x20
loc_10008872c:
  10008872c  bl      _objc_release
loc_100088730:
  100088730  mov     x0, x19
  100088734  bl      _objc_release
  100088738  mov     x0, x22
  10008873c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats updateLongestEndlessPlayTime:]
; address 0x100088740  size 540  kind objc
; ======================================================================
  100088740  stp     d9, d8, [sp, #-0x70]!
  100088744  stp     x28, x27, [sp, #0x10]
  100088748  stp     x26, x25, [sp, #0x20]
  10008874c  stp     x24, x23, [sp, #0x30]
  100088750  stp     x22, x21, [sp, #0x40]
  100088754  stp     x20, x19, [sp, #0x50]
  100088758  stp     x29, x30, [sp, #0x60]
  10008875c  add     x29, sp, #0x60
  100088760  mov     v8.16b, v0.16b
  100088764  mov     x21, x0
  100088768  adrp    x8, #0x100419000
  10008876c  nop
  100088770  ldr     x1, [x8, #0xe90]
  100088774  bl      _objc_msgSend                            ; [self getTotalStatData]
  100088778  mov     x29, x29
  10008877c  bl      _objc_retainAutoreleasedReturnValue
  100088780  mov     x20, x0
  100088784  adrp    x8, #0x100417000
  100088788  nop
  10008878c  ldr     x1, [x8, #0x40]
  100088790  adrp    x2, #0x1003bf000
  100088794  add     x2, x2, #0xa90                           ; @"Longest Endless Mode"
  100088798  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Longest Endless Mode"]
  10008879c  mov     x29, x29
  1000887a0  bl      _objc_retainAutoreleasedReturnValue
  1000887a4  mov     x19, x0
  1000887a8  mov     x0, x20
  1000887ac  bl      _objc_release
  1000887b0  adrp    x8, #0x100419000
  1000887b4  nop
  1000887b8  ldr     x1, [x8, #0x188]
  1000887bc  adrp    x2, #0x1003bf000
  1000887c0  add     x2, x2, #0xb90                           ; @":"
  1000887c4  mov     x0, x19
  1000887c8  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"]
  1000887cc  mov     x29, x29
  1000887d0  bl      _objc_retainAutoreleasedReturnValue
  1000887d4  mov     x20, x0
  1000887d8  adrp    x8, #0x100416000
  1000887dc  nop
  1000887e0  ldr     x23, [x8, #0xc30]
  1000887e4  mov     x2, #0
  1000887e8  mov     x1, x23
  1000887ec  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:0]
  1000887f0  mov     x29, x29
  1000887f4  bl      _objc_retainAutoreleasedReturnValue
  1000887f8  mov     x22, x0
  1000887fc  adrp    x8, #0x100417000
  100088800  nop
  100088804  ldr     x25, [x8, #0xb0]
  100088808  mov     x1, x25
  10008880c  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:0] integerValue]
  100088810  mov     x26, x0
  100088814  mov     w2, #1
  100088818  mov     x0, x20
  10008881c  mov     x1, x23
  100088820  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:1]
  100088824  mov     x29, x29
  100088828  bl      _objc_retainAutoreleasedReturnValue
  10008882c  mov     x24, x0
  100088830  mov     x1, x25
  100088834  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:1] integerValue]
  100088838  mov     x27, x0
  10008883c  mov     w28, #0x3c
  100088840  mov     w2, #2
  100088844  mov     x0, x20
  100088848  mov     x1, x23
  10008884c  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:2]
  100088850  mov     x29, x29
  100088854  bl      _objc_retainAutoreleasedReturnValue
  100088858  mov     x23, x0
  10008885c  mov     x1, x25
  100088860  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:2] integerValue]
  100088864  mov     w8, #0xe10
  100088868  mul     x8, x26, x8                              ; t1 = ([[[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:0] integerValue] * 3600)
  10008886c  madd    x8, x27, x28, x8                         ; t2 = (t1 + [[[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:1] integerValue] * 60)
  100088870  add     x25, x8, x0                              ; t3 = (t2 + [[[[[self getTotalStatData] objectForKey:@"Longest Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:2] integerValue])
  100088874  mov     x0, x23
  100088878  bl      _objc_release
  10008887c  mov     x0, x24
  100088880  bl      _objc_release
  100088884  mov     x0, x22
  100088888  bl      _objc_release
  10008888c  ucvtf   d0, x25
  100088890  fcmp    d0, d8
  100088894  b.pl    loc_1000888bc                            ; if ((float)t3 >= (or unordered) arg1)
  100088898  adrp    x8, #0x100417000
  10008889c  nop
  1000888a0  ldr     x1, [x8, #0x3e0]
  1000888a4  mov     x0, x21
  1000888a8  mov     v0.16b, v8.16b
  1000888ac  bl      _objc_msgSend                            ; [self gameTimeToString:arg1]
  1000888b0  mov     x29, x29
  1000888b4  bl      _objc_retainAutoreleasedReturnValue
  1000888b8  b       loc_1000888c4
loc_1000888bc:
  1000888bc  mov     x0, x19
  1000888c0  bl      _objc_retain
loc_1000888c4:
  1000888c4  mov     x21, x0
  1000888c8  mov     x0, x20
  1000888cc  bl      _objc_release
  1000888d0  mov     x0, x19
  1000888d4  bl      _objc_release
  1000888d8  mov     x0, x21
  1000888dc  ldp     x29, x30, [sp, #0x60]
  1000888e0  ldp     x20, x19, [sp, #0x50]
  1000888e4  ldp     x22, x21, [sp, #0x40]
  1000888e8  ldp     x24, x23, [sp, #0x30]
  1000888ec  ldp     x26, x25, [sp, #0x20]
  1000888f0  ldp     x28, x27, [sp, #0x10]
  1000888f4  ldp     d9, d8, [sp], #0x70
  1000888f8  b       _objc_autoreleaseReturnValue
  1000888fc  mov     x21, x0
  100088900  b       loc_10008893c
  100088904  mov     x21, x0
  100088908  b       loc_100088934
  10008890c  mov     x21, x0
  100088910  b       loc_100088944
  100088914  mov     x21, x0
  100088918  mov     x0, x20
  10008891c  b       loc_100088950
  100088920  mov     x21, x0
  100088924  b       loc_10008894c
  100088928  mov     x21, x0
  10008892c  mov     x0, x23
  100088930  bl      _objc_release
loc_100088934:
  100088934  mov     x0, x24
  100088938  bl      _objc_release
loc_10008893c:
  10008893c  mov     x0, x22
  100088940  bl      _objc_release
loc_100088944:
  100088944  mov     x0, x20
  100088948  bl      _objc_release
loc_10008894c:
  10008894c  mov     x0, x19
loc_100088950:
  100088950  bl      _objc_release
  100088954  mov     x0, x21
  100088958  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats computeTotalEnemyKillCount]
; address 0x10008895c  size 504  kind objc
; ======================================================================
  10008895c  stp     x28, x27, [sp, #-0x60]!
  100088960  stp     x26, x25, [sp, #0x10]
  100088964  stp     x24, x23, [sp, #0x20]
  100088968  stp     x22, x21, [sp, #0x30]
  10008896c  stp     x20, x19, [sp, #0x40]
  100088970  stp     x29, x30, [sp, #0x50]
  100088974  add     x29, sp, #0x50
  100088978  sub     sp, sp, #0x10
  10008897c  adrp    x8, #0x100419000
  100088980  nop
  100088984  ldr     x1, [x8, #0x9d0]
  100088988  bl      _objc_msgSend                            ; [self getEnemyStatData]
  10008898c  mov     x29, x29
  100088990  bl      _objc_retainAutoreleasedReturnValue
  100088994  mov     x21, x0
  100088998  adrp    x8, #0x100419000
  10008899c  nop
  1000889a0  ldr     x1, [x8, #0xec8]
  1000889a4  bl      _objc_msgSend                            ; [[self getEnemyStatData] objectEnumerator]
  1000889a8  mov     x29, x29
  1000889ac  bl      _objc_retainAutoreleasedReturnValue
  1000889b0  mov     x19, x0
  1000889b4  mov     x0, x21
  1000889b8  bl      _objc_release
  1000889bc  mov     x28, #0
  1000889c0  str     xzr, [sp, #8]
  1000889c4  adrp    x8, #0x100417000
  1000889c8  nop
  1000889cc  ldr     x21, [x8, #0xa20]
  1000889d0  adrp    x8, #0x100417000
  1000889d4  nop
  1000889d8  ldr     x22, [x8, #0x2e0]
  1000889dc  adrp    x8, #0x100417000
  1000889e0  nop
  1000889e4  ldr     x23, [x8, #0x3b8]
  1000889e8  adrp    x8, #0x100417000
  1000889ec  nop
  1000889f0  ldr     x24, [x8, #0x40]
  1000889f4  adrp    x8, #0x100417000
  1000889f8  add     x8, x8, #0xb0                            ; &@selector(integerValue)
  1000889fc  ldr     x25, [x8]
  100088a00  adrp    x26, #0x10041d000
  100088a04  b       loc_100088a20
loc_100088a08:
  100088a08  mov     x0, x28
  100088a0c  bl      _objc_release
  100088a10  ldr     x8, [sp, #8]
  100088a14  add     x8, x20, x8                              ; t1 = ([[[[[self getEnemyStatData] objectEnumerator] nextObject] objectForKey:@"Killed"] integerValue] + x8)
  100088a18  str     x8, [sp, #8]
  100088a1c  mov     x28, x27
loc_100088a20:
  100088a20  mov     x0, x19
  100088a24  mov     x1, x21
  100088a28  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectEnumerator] nextObject]
  100088a2c  mov     x29, x29
  100088a30  bl      _objc_retainAutoreleasedReturnValue
  100088a34  mov     x27, x0
  100088a38  mov     x0, x28
  100088a3c  bl      _objc_release
  100088a40  cbz     x27, loc_100088ae4                       ; if ([[[self getEnemyStatData] objectEnumerator] nextObject] == 0)
  100088a44  mov     x28, x27
  100088a48  ldr     x0, [x26, #0xef8]                        ; class NSDictionary
  100088a4c  mov     x1, x22
  100088a50  bl      _objc_msgSend                            ; [NSDictionary class]
  100088a54  mov     x2, x0
  100088a58  mov     x28, x27
  100088a5c  mov     x0, x27
  100088a60  mov     x1, x23
  100088a64  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectEnumerator] nextObject] isKindOfClass:[NSDictionary class]]
  100088a68  mov     x28, x27
  100088a6c  cbz     w0, loc_100088a20                        ; if ([[[[self getEnemyStatData] objectEnumerator] nextObject] isKindOfClass:[NSDictionary class]] == 0)
  100088a70  mov     x28, x27
  100088a74  mov     x0, x27
  100088a78  mov     x1, x24
  100088a7c  adrp    x2, #0x1003ba000
  100088a80  add     x2, x2, #0x1d0                           ; @"Killed"
  100088a84  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectEnumerator] nextObject] objectForKey:@"Killed"]
  100088a88  mov     x29, x29
  100088a8c  bl      _objc_retainAutoreleasedReturnValue
  100088a90  mov     x28, x0
  100088a94  mov     x1, x25
  100088a98  bl      _objc_msgSend                            ; [[[[[self getEnemyStatData] objectEnumerator] nextObject] objectForKey:@"Killed"] integerValue]
  100088a9c  mov     x20, x0
  100088aa0  mov     x0, x28
  100088aa4  bl      _objc_release
  100088aa8  mov     x28, x27
  100088aac  cbz     x20, loc_100088a20                       ; if ([[[[[self getEnemyStatData] objectEnumerator] nextObject] objectForKey:@"Killed"] integerValue] == 0)
  100088ab0  mov     x0, x27
  100088ab4  mov     x1, x24
  100088ab8  adrp    x2, #0x1003ba000
  100088abc  add     x2, x2, #0x1d0                           ; @"Killed"
  100088ac0  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectEnumerator] nextObject] objectForKey:@"Killed"]
  100088ac4  mov     x29, x29
  100088ac8  bl      _objc_retainAutoreleasedReturnValue
  100088acc  mov     x28, x0
  100088ad0  mov     x1, x25
  100088ad4  bl      _objc_msgSend                            ; [[[[[self getEnemyStatData] objectEnumerator] nextObject] objectForKey:@"Killed"] integerValue]
  100088ad8  mov     x20, x0
  100088adc  b       loc_100088a08
  100088ae0  b       loc_100088b2c
loc_100088ae4:
  100088ae4  mov     x0, x19
  100088ae8  bl      _objc_release
  100088aec  ldr     x0, [sp, #8]
  100088af0  sub     sp, x29, #0x50
  100088af4  ldp     x29, x30, [sp, #0x50]
  100088af8  ldp     x20, x19, [sp, #0x40]
  100088afc  ldp     x22, x21, [sp, #0x30]
  100088b00  ldp     x24, x23, [sp, #0x20]
  100088b04  ldp     x26, x25, [sp, #0x10]
  100088b08  ldp     x28, x27, [sp], #0x60
  100088b0c  ret
  100088b10  mov     x20, x0
loc_100088b14:
  100088b14  mov     x0, x28
  100088b18  bl      _objc_release
  100088b1c  mov     x0, x19
loc_100088b20:
  100088b20  bl      _objc_release
  100088b24  mov     x0, x20
  100088b28  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_100088b2c:
  100088b2c  mov     x20, x0
  100088b30  mov     x0, x28
  100088b34  bl      _objc_release
loc_100088b38:
  100088b38  mov     x28, x27
  100088b3c  b       loc_100088b14
  100088b40  mov     x20, x0
  100088b44  mov     x0, x21
  100088b48  b       loc_100088b20
  100088b4c  mov     x20, x0
  100088b50  b       loc_100088b38

; ======================================================================
; -[ADPersistentStats computeChallengesWonAndSave]
; address 0x100088b54  size 556  kind objc
; ======================================================================
  100088b54  stp     x24, x23, [sp, #-0x40]!
  100088b58  stp     x22, x21, [sp, #0x10]
  100088b5c  stp     x20, x19, [sp, #0x20]
  100088b60  stp     x29, x30, [sp, #0x30]
  100088b64  add     x29, sp, #0x30
  100088b68  mov     x21, x0
  100088b6c  adrp    x8, #0x10041d000
  100088b70  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100088b74  adrp    x8, #0x100416000
  100088b78  nop
  100088b7c  ldr     x1, [x8, #0xdf0]
  100088b80  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100088b84  mov     x29, x29
  100088b88  bl      _objc_retainAutoreleasedReturnValue
  100088b8c  mov     x19, x0
  100088b90  adrp    x8, #0x100418000
  100088b94  nop
  100088b98  ldr     x1, [x8, #0xab8]
  100088b9c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] computeTotalChallengesWon]
  100088ba0  mov     x20, x0
  100088ba4  mov     x0, x19
  100088ba8  bl      _objc_release
  100088bac  adrp    x8, #0x10041d000
  100088bb0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100088bb4  adrp    x8, #0x100416000
  100088bb8  nop
  100088bbc  ldr     x1, [x8, #0xac8]
  100088bc0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100088bc4  mov     x19, x0
  100088bc8  adrp    x8, #0x100419000
  100088bcc  nop
  100088bd0  ldr     x1, [x8, #0xe90]
  100088bd4  mov     x0, x21
  100088bd8  bl      _objc_msgSend                            ; [self getTotalStatData]
  100088bdc  mov     x29, x29
  100088be0  bl      _objc_retainAutoreleasedReturnValue
  100088be4  mov     x22, x0
  100088be8  adrp    x8, #0x100416000
  100088bec  nop
  100088bf0  ldr     x1, [x8, #0xd80]
  100088bf4  mov     x0, x19
  100088bf8  mov     x2, x22
  100088bfc  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]]
  100088c00  mov     x19, x0
  100088c04  mov     x0, x22
  100088c08  bl      _objc_release
  100088c0c  adrp    x8, #0x10041d000
  100088c10  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100088c14  adrp    x8, #0x100417000
  100088c18  nop
  100088c1c  ldr     x1, [x8, #0xe8]
  100088c20  mov     x2, x20
  100088c24  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADChallengeData sharedChallengeData] computeTotalChallengesWon]]
  100088c28  mov     x29, x29
  100088c2c  bl      _objc_retainAutoreleasedReturnValue
  100088c30  mov     x22, x0
  100088c34  adrp    x8, #0x100418000
  100088c38  nop
  100088c3c  ldr     x1, [x8, #0x318]
  100088c40  adrp    x3, #0x1003bf000
  100088c44  add     x3, x3, #0xbb0                           ; @"Challenge stars unlocked"
  100088c48  mov     x0, x19
  100088c4c  mov     x2, x22
  100088c50  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] setValue:[NSNumber numberWithInteger:[[ADChallengeData sharedChallengeData] computeTotalChallengesWon]] forKey:@"Challenge stars unlocked"]
  100088c54  mov     x0, x22
  100088c58  bl      _objc_release
  100088c5c  adrp    x24, #0x10041d000
  100088c60  ldr     x0, [x24, #0xf38]                        ; class NSUserDefaults
  100088c64  adrp    x8, #0x100416000
  100088c68  nop
  100088c6c  ldr     x22, [x8, #0xd98]
  100088c70  mov     x1, x22
  100088c74  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088c78  mov     x29, x29
  100088c7c  bl      _objc_retainAutoreleasedReturnValue
  100088c80  mov     x23, x0
  100088c84  adrp    x8, #0x100419000
  100088c88  nop
  100088c8c  ldr     x1, [x8, #0xe48]
  100088c90  mov     x0, x21
  100088c94  bl      _objc_msgSend                            ; [self totalsStatsDataRef]
  100088c98  mov     x29, x29
  100088c9c  bl      _objc_retainAutoreleasedReturnValue
  100088ca0  mov     x21, x0
  100088ca4  adrp    x8, #0x100416000
  100088ca8  nop
  100088cac  ldr     x1, [x8, #0xdc8]
  100088cb0  mov     x0, x23
  100088cb4  mov     x2, x19
  100088cb8  mov     x3, x21
  100088cbc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[[NSMutableDictionary alloc] initWithDictionary:[self getTotalStatData]] forKey:[self totalsStatsDataRef]]
  100088cc0  mov     x0, x21
  100088cc4  bl      _objc_release
  100088cc8  mov     x0, x23
  100088ccc  bl      _objc_release
  100088cd0  ldr     x0, [x24, #0xf38]                        ; class NSUserDefaults
  100088cd4  mov     x1, x22
  100088cd8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088cdc  mov     x29, x29
  100088ce0  bl      _objc_retainAutoreleasedReturnValue
  100088ce4  mov     x21, x0
  100088ce8  adrp    x8, #0x100416000
  100088cec  nop
  100088cf0  ldr     x1, [x8, #0xdd8]
  100088cf4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100088cf8  mov     x0, x21
  100088cfc  bl      _objc_release
  100088d00  mov     x0, x19
  100088d04  bl      _objc_release
  100088d08  mov     x0, x20
  100088d0c  ldp     x29, x30, [sp, #0x30]
  100088d10  ldp     x20, x19, [sp, #0x20]
  100088d14  ldp     x22, x21, [sp, #0x10]
  100088d18  ldp     x24, x23, [sp], #0x40
  100088d1c  ret
  100088d20  mov     x20, x0
  100088d24  b       loc_100088d70
  100088d28  mov     x20, x0
  100088d2c  b       loc_100088d70
  100088d30  mov     x20, x0
  100088d34  mov     x0, x22
  100088d38  b       loc_100088d74
  100088d3c  mov     x20, x0
  100088d40  mov     x0, x22
  100088d44  b       loc_100088d6c
  100088d48  mov     x20, x0
  100088d4c  b       loc_100088d5c
  100088d50  mov     x20, x0
  100088d54  mov     x0, x21
  100088d58  bl      _objc_release
loc_100088d5c:
  100088d5c  mov     x0, x23
  100088d60  b       loc_100088d6c
  100088d64  mov     x20, x0
  100088d68  mov     x0, x21
loc_100088d6c:
  100088d6c  bl      _objc_release
loc_100088d70:
  100088d70  mov     x0, x19
loc_100088d74:
  100088d74  bl      _objc_release
  100088d78  mov     x0, x20
  100088d7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats highScore]
; address 0x100088d80  size 120  kind objc
; ======================================================================
  100088d80  stp     x20, x19, [sp, #-0x20]!
  100088d84  stp     x29, x30, [sp, #0x10]
  100088d88  add     x29, sp, #0x10
  100088d8c  adrp    x8, #0x10041d000
  100088d90  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  100088d94  adrp    x8, #0x100416000
  100088d98  nop
  100088d9c  ldr     x1, [x8, #0xd98]
  100088da0  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088da4  mov     x29, x29
  100088da8  bl      _objc_retainAutoreleasedReturnValue
  100088dac  mov     x19, x0
  100088db0  adrp    x8, #0x100416000
  100088db4  nop
  100088db8  ldr     x1, [x8, #0xde8]
  100088dbc  adrp    x2, #0x1003bf000
  100088dc0  add     x2, x2, #0xbd0                           ; @"highscore"
  100088dc4  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] integerForKey:@"highscore"]
  100088dc8  mov     x20, x0
  100088dcc  mov     x0, x19
  100088dd0  bl      _objc_release
  100088dd4  mov     x0, x20
  100088dd8  ldp     x29, x30, [sp, #0x10]
  100088ddc  ldp     x20, x19, [sp], #0x20
  100088de0  ret
  100088de4  mov     x20, x0
  100088de8  mov     x0, x19
  100088dec  bl      _objc_release
  100088df0  mov     x0, x20
  100088df4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats saveScore:]
; address 0x100088df8  size 228  kind objc
; ======================================================================
  100088df8  stp     x22, x21, [sp, #-0x30]!
  100088dfc  stp     x20, x19, [sp, #0x10]
  100088e00  stp     x29, x30, [sp, #0x20]
  100088e04  add     x29, sp, #0x20
  100088e08  mov     x20, x2
  100088e0c  adrp    x8, #0x100419000
  100088e10  nop
  100088e14  ldr     x1, [x8, #0xed0]
  100088e18  bl      _objc_msgSend                            ; [self highScore]
  100088e1c  cmp     w0, w20
  100088e20  b.ge    loc_100088eac                            ; if ([self highScore] >= arg1)
  100088e24  adrp    x22, #0x10041d000
  100088e28  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  100088e2c  adrp    x8, #0x100416000
  100088e30  nop
  100088e34  ldr     x19, [x8, #0xd98]
  100088e38  mov     x1, x19
  100088e3c  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088e40  mov     x29, x29
  100088e44  bl      _objc_retainAutoreleasedReturnValue
  100088e48  mov     x21, x0
  100088e4c  sxtw    x2, w20
  100088e50  adrp    x8, #0x100416000
  100088e54  nop
  100088e58  ldr     x1, [x8, #0xdd0]
  100088e5c  adrp    x3, #0x1003bf000
  100088e60  add     x3, x3, #0xbd0                           ; @"highscore"
  100088e64  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:arg1 forKey:@"highscore"]
  100088e68  mov     x0, x21
  100088e6c  bl      _objc_release
  100088e70  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  100088e74  mov     x1, x19
  100088e78  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100088e7c  mov     x29, x29
  100088e80  bl      _objc_retainAutoreleasedReturnValue
  100088e84  mov     x20, x0
  100088e88  adrp    x8, #0x100416000
  100088e8c  nop
  100088e90  ldr     x1, [x8, #0xdd8]
  100088e94  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100088e98  mov     x0, x20
  100088e9c  ldp     x29, x30, [sp, #0x20]
  100088ea0  ldp     x20, x19, [sp, #0x10]
  100088ea4  ldp     x22, x21, [sp], #0x30
  100088ea8  b       _objc_release
loc_100088eac:
  100088eac  ldp     x29, x30, [sp, #0x20]
  100088eb0  ldp     x20, x19, [sp, #0x10]
  100088eb4  ldp     x22, x21, [sp], #0x30
  100088eb8  ret
  100088ebc  mov     x19, x0
  100088ec0  mov     x0, x21
  100088ec4  b       loc_100088ed0
  100088ec8  mov     x19, x0
  100088ecc  mov     x0, x20
loc_100088ed0:
  100088ed0  bl      _objc_release
  100088ed4  mov     x0, x19
  100088ed8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats getEnemyListWithKillsGreaterThan:]
; address 0x100088edc  size 684  kind objc
; ======================================================================
  100088edc  stp     x28, x27, [sp, #-0x60]!
  100088ee0  stp     x26, x25, [sp, #0x10]
  100088ee4  stp     x24, x23, [sp, #0x20]
  100088ee8  stp     x22, x21, [sp, #0x30]
  100088eec  stp     x20, x19, [sp, #0x40]
  100088ef0  stp     x29, x30, [sp, #0x50]
  100088ef4  add     x29, sp, #0x50
  100088ef8  sub     sp, sp, #0x100
  100088efc  adrp    x8, #0x1003b0000
  100088f00  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  100088f04  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  100088f08  stur    x8, [x29, #-0x58]
  100088f0c  adrp    x8, #0x100419000
  100088f10  nop
  100088f14  ldr     x1, [x8, #0x9d0]
  100088f18  bl      _objc_msgSend                            ; [self getEnemyStatData]
  100088f1c  mov     x29, x29
  100088f20  bl      _objc_retainAutoreleasedReturnValue
  100088f24  mov     x20, x0
  100088f28  adrp    x8, #0x10041d000
  100088f2c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100088f30  adrp    x8, #0x100416000
  100088f34  nop
  100088f38  ldr     x1, [x8, #0xac8]
  100088f3c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100088f40  adrp    x8, #0x100416000
  100088f44  nop
  100088f48  ldr     x1, [x8, #0xab8]
  100088f4c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100088f50  str     x0, [sp, #0x20]
  100088f54  stp     xzr, xzr, [sp, #0x68]
  100088f58  stp     xzr, xzr, [sp, #0x58]
  100088f5c  stp     xzr, xzr, [sp, #0x48]
  100088f60  stp     xzr, xzr, [sp, #0x38]
  100088f64  mov     x0, x20
  100088f68  str     x20, [sp, #8]
  100088f6c  bl      _objc_retain
  100088f70  mov     x21, x0
  100088f74  adrp    x8, #0x100416000
  100088f78  nop
  100088f7c  ldr     x1, [x8, #0xe00]
  100088f80  str     x1, [sp, #0x10]
  100088f84  add     x2, sp, #0x38
  100088f88  add     x3, sp, #0x78
  100088f8c  mov     w4, #0x10
  100088f90  bl      _objc_msgSend                            ; [[self getEnemyStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100088f94  mov     x23, x0
  100088f98  cbz     x23, loc_1000890c8                       ; if ([[self getEnemyStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  100088f9c  ldr     x8, [sp, #0x48]
  100088fa0  ldr     x8, [x8]
  100088fa4  str     x8, [sp, #0x30]
  100088fa8  adrp    x8, #0x100417000
  100088fac  nop
  100088fb0  ldr     x24, [x8, #0x40]
  100088fb4  adrp    x8, #0x100417000
  100088fb8  nop
  100088fbc  ldr     x8, [x8, #0xb0]
  100088fc0  str     x8, [sp, #0x28]
  100088fc4  adrp    x8, #0x100418000
  100088fc8  nop
  100088fcc  ldr     x8, [x8, #0x318]
  100088fd0  str     x8, [sp, #0x18]
  100088fd4  adrp    x20, #0x1003ba000
  100088fd8  add     x20, x20, #0x1d0                         ; @"Killed"
loc_100088fdc:
  100088fdc  mov     x27, #0
loc_100088fe0:
  100088fe0  ldr     x8, [sp, #0x48]
  100088fe4  ldr     x8, [x8]
  100088fe8  ldr     x9, [sp, #0x30]
  100088fec  cmp     x8, x9
  100088ff0  b.eq    loc_100088ffc                            ; if (x8 == x9)
  100088ff4  mov     x0, x21
  100088ff8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self getEnemyStatData])
loc_100088ffc:
  100088ffc  ldr     x8, [sp, #0x40]
  100089000  ldr     x19, [x8, x27, lsl #3]
  100089004  mov     x0, x21
  100089008  mov     x1, x24
  10008900c  mov     x2, x19
  100089010  bl      _objc_msgSend                            ; [[self getEnemyStatData] objectForKey:x2]
  100089014  mov     x29, x29
  100089018  bl      _objc_retainAutoreleasedReturnValue
  10008901c  mov     x28, x0
  100089020  mov     x1, x24
  100089024  mov     x2, x20
  100089028  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"]
  10008902c  mov     x29, x29
  100089030  bl      _objc_retainAutoreleasedReturnValue
  100089034  mov     x22, x0
  100089038  cbz     x22, loc_100089094                       ; if ([[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] == 0)
  10008903c  mov     x0, x28
  100089040  mov     x1, x24
  100089044  mov     x2, x20
  100089048  bl      _objc_msgSend                            ; [[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"]
  10008904c  mov     x25, x20
  100089050  mov     x29, x29
  100089054  bl      _objc_retainAutoreleasedReturnValue
  100089058  mov     x20, x0
  10008905c  ldr     x1, [sp, #0x28]
  100089060  bl      _objc_msgSend                            ; [[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue]
  100089064  mov     x26, x0
  100089068  mov     x0, x20
  10008906c  bl      _objc_release
  100089070  mov     x0, x22
  100089074  bl      _objc_release
  100089078  cmp     x26, #1
  10008907c  mov     x20, x25
  100089080  b.lt    loc_100089094                            ; if ([[[[self getEnemyStatData] objectForKey:x2] objectForKey:@"Killed"] integerValue] < 1)
  100089084  ldp     x1, x0, [sp, #0x18]
  100089088  mov     x2, x28
  10008908c  mov     x3, x19
  100089090  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setValue:[[self getEnemyStatData] objectForKey:x2] forKey:x3]
loc_100089094:
  100089094  mov     x0, x28
  100089098  bl      _objc_release
  10008909c  add     x27, x27, #1
  1000890a0  cmp     x27, x23
  1000890a4  b.lo    loc_100088fe0                            ; if ((x27 + 1) <u [[self getEnemyStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  1000890a8  add     x2, sp, #0x38
  1000890ac  add     x3, sp, #0x78
  1000890b0  mov     w4, #0x10
  1000890b4  mov     x0, x21
  1000890b8  ldr     x1, [sp, #0x10]
  1000890bc  bl      _objc_msgSend                            ; [[self getEnemyStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000890c0  mov     x23, x0
  1000890c4  cbnz    x23, loc_100088fdc                       ; if ([[self getEnemyStatData] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_1000890c8:
  1000890c8  mov     x0, x21
  1000890cc  bl      _objc_release
  1000890d0  mov     x0, x21
  1000890d4  bl      _objc_release
  1000890d8  ldur    x8, [x29, #-0x58]
  1000890dc  adrp    x9, #0x1003b0000
  1000890e0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000890e4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000890e8  sub     x8, x9, x8
  1000890ec  cbnz    x8, loc_100089114                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000890f0  ldr     x0, [sp, #0x20]
  1000890f4  sub     sp, x29, #0x50
  1000890f8  ldp     x29, x30, [sp, #0x50]
  1000890fc  ldp     x20, x19, [sp, #0x40]
  100089100  ldp     x22, x21, [sp, #0x30]
  100089104  ldp     x24, x23, [sp, #0x20]
  100089108  ldp     x26, x25, [sp, #0x10]
  10008910c  ldp     x28, x27, [sp], #0x60
  100089110  b       _objc_autoreleaseReturnValue
loc_100089114:
  100089114  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100089118:
  100089118  mov     x19, x0
  10008911c  ldr     x20, [sp, #8]
  100089120  b       loc_100089158
  100089124  mov     x19, x0
  100089128  ldr     x20, [sp, #8]
  10008912c  b       loc_100089150
  100089130  mov     x19, x0
  100089134  b       loc_100089144
  100089138  mov     x19, x0
  10008913c  mov     x0, x20
  100089140  bl      _objc_release
loc_100089144:
  100089144  ldr     x20, [sp, #8]
  100089148  mov     x0, x22
  10008914c  bl      _objc_release
loc_100089150:
  100089150  mov     x0, x28
  100089154  bl      _objc_release
loc_100089158:
  100089158  mov     x0, x21
  10008915c  bl      _objc_release
  100089160  ldr     x0, [sp, #0x20]
  100089164  bl      _objc_release
loc_100089168:
  100089168  mov     x0, x20
  10008916c  bl      _objc_release
  100089170  mov     x0, x19
  100089174  bl      __Unwind_Resume                          ; Unwind_Resume()
  100089178  b       loc_100089118
  10008917c  mov     x19, x0
  100089180  b       loc_100089168
  100089184  b       loc_100089118

; ======================================================================
; -[ADPersistentStats getUnlockedWeapons]
; address 0x100089188  size 768  kind objc
; ======================================================================
  100089188  stp     x28, x27, [sp, #-0x60]!
  10008918c  stp     x26, x25, [sp, #0x10]
  100089190  stp     x24, x23, [sp, #0x20]
  100089194  stp     x22, x21, [sp, #0x30]
  100089198  stp     x20, x19, [sp, #0x40]
  10008919c  stp     x29, x30, [sp, #0x50]
  1000891a0  add     x29, sp, #0x50
  1000891a4  sub     sp, sp, #0xf0
  1000891a8  mov     x19, x0
  1000891ac  adrp    x8, #0x1003b0000
  1000891b0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000891b4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000891b8  stur    x8, [x29, #-0x58]
  1000891bc  adrp    x8, #0x10041d000
  1000891c0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000891c4  adrp    x8, #0x100416000
  1000891c8  nop
  1000891cc  ldr     x1, [x8, #0xac8]
  1000891d0  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000891d4  adrp    x8, #0x100416000
  1000891d8  nop
  1000891dc  ldr     x1, [x8, #0xab8]
  1000891e0  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000891e4  str     x0, [sp, #0x10]
  1000891e8  adrp    x8, #0x100419000
  1000891ec  nop
  1000891f0  ldr     x1, [x8, #0xec0]
  1000891f4  mov     x0, x19
  1000891f8  bl      _objc_msgSend                            ; [self getWeaponStatData]
  1000891fc  mov     x29, x29
  100089200  bl      _objc_retainAutoreleasedReturnValue
  100089204  str     x0, [sp, #0x18]
  100089208  adrp    x8, #0x10041d000
  10008920c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100089210  adrp    x8, #0x100416000
  100089214  nop
  100089218  ldr     x1, [x8, #0xec8]
  10008921c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100089220  mov     x29, x29
  100089224  bl      _objc_retainAutoreleasedReturnValue
  100089228  mov     x21, x0
  10008922c  adrp    x8, #0x100417000
  100089230  nop
  100089234  ldr     x1, [x8, #0xd0]
  100089238  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] weapons]
  10008923c  mov     x29, x29
  100089240  bl      _objc_retainAutoreleasedReturnValue
  100089244  mov     x19, x0
  100089248  mov     x0, x21
  10008924c  bl      _objc_release
  100089250  stp     xzr, xzr, [sp, #0x58]
  100089254  stp     xzr, xzr, [sp, #0x48]
  100089258  stp     xzr, xzr, [sp, #0x38]
  10008925c  stp     xzr, xzr, [sp, #0x28]
  100089260  mov     x0, x19
  100089264  bl      _objc_retain
  100089268  str     x0, [sp, #0x20]
  10008926c  adrp    x8, #0x100416000
  100089270  nop
  100089274  ldr     x1, [x8, #0xe00]
  100089278  str     x1, [sp, #8]
  10008927c  add     x2, sp, #0x28
  100089280  add     x3, sp, #0x68
  100089284  mov     w4, #0x10
  100089288  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  10008928c  mov     x23, x0
  100089290  cbz     x23, loc_1000893ac                       ; if ([[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  100089294  ldr     x8, [sp, #0x38]
  100089298  adrp    x9, #0x100417000
  10008929c  nop
  1000892a0  ldr     x28, [x8]
  1000892a4  ldr     x24, [x9, #0x40]
  1000892a8  adrp    x8, #0x100417000
  1000892ac  add     x8, x8, #0xd8                            ; &@selector(boolValue)
  1000892b0  adrp    x9, #0x100416000
  1000892b4  add     x9, x9, #0xdc8                           ; &@selector(setObject:forKey:)
  1000892b8  ldr     x25, [x8]
  1000892bc  ldr     x26, [x9]
  1000892c0  adrp    x27, #0x1003b9000
  1000892c4  add     x27, x27, #0xdd0                         ; @"purchased"
loc_1000892c8:
  1000892c8  mov     x21, #0
loc_1000892cc:
  1000892cc  ldr     x8, [sp, #0x38]
  1000892d0  ldr     x8, [x8]
  1000892d4  cmp     x8, x28
  1000892d8  b.eq    loc_1000892e4                            ; if (x8 == x28)
  1000892dc  ldr     x0, [sp, #0x20]
  1000892e0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADInventory sharedInventory] weapons])
loc_1000892e4:
  1000892e4  ldr     x8, [sp, #0x30]
  1000892e8  ldr     x22, [x8, x21, lsl #3]
  1000892ec  mov     x0, x22
  1000892f0  mov     x1, x24
  1000892f4  mov     x2, x27
  1000892f8  bl      _objc_msgSend                            ; [x0 objectForKey:@"purchased"]
  1000892fc  mov     x29, x29
  100089300  bl      _objc_retainAutoreleasedReturnValue
  100089304  mov     x19, x0
  100089308  mov     x1, x25
  10008930c  bl      _objc_msgSend                            ; [[x0 objectForKey:@"purchased"] boolValue]
  100089310  mov     x20, x0
  100089314  mov     x0, x19
  100089318  bl      _objc_release
  10008931c  cbz     w20, loc_100089380                       ; if ([[x0 objectForKey:@"purchased"] boolValue] == 0)
  100089320  mov     x0, x22
  100089324  mov     x1, x24
  100089328  adrp    x2, #0x1003b9000
  10008932c  add     x2, x2, #0xdb0                           ; @"name"
  100089330  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  100089334  mov     x29, x29
  100089338  bl      _objc_retainAutoreleasedReturnValue
  10008933c  mov     x22, x0
  100089340  ldr     x0, [sp, #0x18]
  100089344  mov     x1, x24
  100089348  mov     x2, x22
  10008934c  bl      _objc_msgSend                            ; [[self getWeaponStatData] objectForKey:[x0 objectForKey:@"name"]]
  100089350  mov     x29, x29
  100089354  bl      _objc_retainAutoreleasedReturnValue
  100089358  mov     x19, x0
  10008935c  ldr     x0, [sp, #0x10]
  100089360  mov     x1, x26
  100089364  mov     x2, x19
  100089368  mov     x3, x22
  10008936c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[[self getWeaponStatData] objectForKey:[x0 objectForKey:@"name"]] forKey:[x0 objectForKey:@"name"]]
  100089370  mov     x0, x19
  100089374  bl      _objc_release
  100089378  mov     x0, x22
  10008937c  bl      _objc_release
loc_100089380:
  100089380  add     x21, x21, #1
  100089384  cmp     x21, x23
  100089388  b.lo    loc_1000892cc                            ; if ((x21 + 1) <u [[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  10008938c  add     x2, sp, #0x28
  100089390  add     x3, sp, #0x68
  100089394  mov     w4, #0x10
  100089398  ldr     x0, [sp, #0x20]
  10008939c  ldr     x1, [sp, #8]
  1000893a0  bl      _objc_msgSend                            ; [[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000893a4  mov     x23, x0
  1000893a8  cbnz    x23, loc_1000892c8                       ; if ([[[ADInventory sharedInventory] weapons] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_1000893ac:
  1000893ac  ldr     x19, [sp, #0x20]
  1000893b0  mov     x0, x19
  1000893b4  bl      _objc_release
  1000893b8  mov     x0, x19
  1000893bc  bl      _objc_release
  1000893c0  ldr     x0, [sp, #0x18]
  1000893c4  bl      _objc_release
  1000893c8  ldur    x8, [x29, #-0x58]
  1000893cc  adrp    x9, #0x1003b0000
  1000893d0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000893d4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000893d8  sub     x8, x9, x8
  1000893dc  cbnz    x8, loc_100089404                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000893e0  ldr     x0, [sp, #0x10]
  1000893e4  sub     sp, x29, #0x50
  1000893e8  ldp     x29, x30, [sp, #0x50]
  1000893ec  ldp     x20, x19, [sp, #0x40]
  1000893f0  ldp     x22, x21, [sp, #0x30]
  1000893f4  ldp     x24, x23, [sp, #0x20]
  1000893f8  ldp     x26, x25, [sp, #0x10]
  1000893fc  ldp     x28, x27, [sp], #0x60
  100089400  b       _objc_autoreleaseReturnValue
loc_100089404:
  100089404  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100089408:
  100089408  mov     x23, x0
  10008940c  b       loc_100089438
  100089410  mov     x23, x0
  100089414  mov     x0, x19
  100089418  b       loc_100089434
  10008941c  mov     x23, x0
  100089420  b       loc_100089430
  100089424  mov     x23, x0
  100089428  mov     x0, x19
  10008942c  bl      _objc_release
loc_100089430:
  100089430  mov     x0, x22
loc_100089434:
  100089434  bl      _objc_release
loc_100089438:
  100089438  ldr     x19, [sp, #0x20]
  10008943c  mov     x0, x19
  100089440  bl      _objc_release
  100089444  mov     x0, x19
loc_100089448:
  100089448  bl      _objc_release
loc_10008944c:
  10008944c  ldr     x0, [sp, #0x18]
  100089450  bl      _objc_release
loc_100089454:
  100089454  ldr     x0, [sp, #0x10]
  100089458  bl      _objc_release
  10008945c  mov     x0, x23
  100089460  bl      __Unwind_Resume                          ; Unwind_Resume()
  100089464  b       loc_100089408
  100089468  mov     x23, x0
  10008946c  b       loc_100089454
  100089470  mov     x23, x0
  100089474  b       loc_10008944c
  100089478  mov     x23, x0
  10008947c  mov     x0, x21
  100089480  b       loc_100089448
  100089484  b       loc_100089408

; ======================================================================
; -[ADPersistentStats getTotalTimePlayed]
; address 0x100089488  size 636  kind objc
; ======================================================================
  100089488  stp     x28, x27, [sp, #-0x60]!
  10008948c  stp     x26, x25, [sp, #0x10]
  100089490  stp     x24, x23, [sp, #0x20]
  100089494  stp     x22, x21, [sp, #0x30]
  100089498  stp     x20, x19, [sp, #0x40]
  10008949c  stp     x29, x30, [sp, #0x50]
  1000894a0  add     x29, sp, #0x50
  1000894a4  adrp    x8, #0x100419000
  1000894a8  nop
  1000894ac  ldr     x1, [x8, #0xe90]
  1000894b0  bl      _objc_msgSend                            ; [self getTotalStatData]
  1000894b4  mov     x29, x29
  1000894b8  bl      _objc_retainAutoreleasedReturnValue
  1000894bc  mov     x19, x0
  1000894c0  adrp    x8, #0x100417000
  1000894c4  nop
  1000894c8  ldr     x21, [x8, #0x40]
  1000894cc  adrp    x2, #0x1003bf000
  1000894d0  add     x2, x2, #0xa50                           ; @"Total play time in Challenge Mode"
  1000894d4  mov     x1, x21
  1000894d8  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"]
  1000894dc  mov     x29, x29
  1000894e0  bl      _objc_retainAutoreleasedReturnValue
  1000894e4  mov     x20, x0
  1000894e8  adrp    x2, #0x1003bf000
  1000894ec  add     x2, x2, #0xa70                           ; @"Total play time in Endless Mode"
  1000894f0  mov     x0, x19
  1000894f4  mov     x1, x21
  1000894f8  bl      _objc_msgSend                            ; [[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"]
  1000894fc  mov     x29, x29
  100089500  bl      _objc_retainAutoreleasedReturnValue
  100089504  mov     x21, x0
  100089508  adrp    x8, #0x100419000
  10008950c  nop
  100089510  ldr     x25, [x8, #0x188]
  100089514  adrp    x2, #0x1003bf000
  100089518  add     x2, x2, #0xb90                           ; @":"
  10008951c  mov     x0, x20
  100089520  mov     x1, x25
  100089524  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"]
  100089528  mov     x29, x29
  10008952c  bl      _objc_retainAutoreleasedReturnValue
  100089530  mov     x22, x0
  100089534  adrp    x8, #0x100416000
  100089538  nop
  10008953c  ldr     x23, [x8, #0xc30]
  100089540  mov     x2, #0
  100089544  mov     x1, x23
  100089548  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectAtIndex:0]
  10008954c  mov     x29, x29
  100089550  bl      _objc_retainAutoreleasedReturnValue
  100089554  mov     x27, x0
  100089558  adrp    x8, #0x100417000
  10008955c  nop
  100089560  ldr     x24, [x8, #0x110]
  100089564  mov     x1, x24
  100089568  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectAtIndex:0] intValue]
  10008956c  mov     x26, x0
  100089570  mov     x0, x27
  100089574  bl      _objc_release
  100089578  mov     w2, #1
  10008957c  mov     x0, x22
  100089580  mov     x1, x23
  100089584  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectAtIndex:1]
  100089588  mov     x29, x29
  10008958c  bl      _objc_retainAutoreleasedReturnValue
  100089590  mov     x27, x0
  100089594  mov     x1, x24
  100089598  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectAtIndex:1] intValue]
  10008959c  mov     x28, x0
  1000895a0  sxtw    x26, w26
  1000895a4  mov     x0, x27
  1000895a8  bl      _objc_release
  1000895ac  cmp     w28, #0x1d
  1000895b0  cinc    x27, x26, gt                             ; t1 = ([[[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectA… > 29 ? [[[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectAtIndex:0] intValue] + 1 : [[[[[self getTotalStatData] objectForKey:@"Total play time in Challenge Mode"] componentsSeparatedByString:@":"] objectAtInd…
  1000895b4  adrp    x2, #0x1003bf000
  1000895b8  add     x2, x2, #0xb90                           ; @":"
  1000895bc  mov     x0, x21
  1000895c0  mov     x1, x25
  1000895c4  bl      _objc_msgSend                            ; [[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"]
  1000895c8  mov     x29, x29
  1000895cc  bl      _objc_retainAutoreleasedReturnValue
  1000895d0  mov     x25, x0
  1000895d4  mov     x0, x22
  1000895d8  bl      _objc_release
  1000895dc  mov     x22, x25
  1000895e0  mov     x2, #0
  1000895e4  mov     x0, x25
  1000895e8  mov     x1, x23
  1000895ec  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:0]
  1000895f0  mov     x29, x29
  1000895f4  bl      _objc_retainAutoreleasedReturnValue
  1000895f8  mov     x22, x0
  1000895fc  mov     x1, x24
  100089600  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:0] intValue]
  100089604  mov     x26, x0
  100089608  mov     x0, x22
  10008960c  bl      _objc_release
  100089610  mov     x22, x25
  100089614  mov     w2, #1
  100089618  mov     x0, x25
  10008961c  mov     x1, x23
  100089620  bl      _objc_msgSend                            ; [[[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:1]
  100089624  mov     x29, x29
  100089628  bl      _objc_retainAutoreleasedReturnValue
  10008962c  mov     x22, x0
  100089630  mov     x1, x24
  100089634  bl      _objc_msgSend                            ; [[[[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:1] intValue]
  100089638  mov     x23, x0
  10008963c  sxtw    x24, w26
  100089640  mov     x0, x22
  100089644  bl      _objc_release
  100089648  cmp     w23, #0x1d
  10008964c  add     x8, x27, x24                             ; t2 = (t1 + [[[[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"] objectAtIndex:0] intValue])
  100089650  cinc    x22, x8, gt                              ; t3 = ([[[[[self getTotalStatData] objectForKey:@"Total play time in Endless Mode"] componentsSeparatedByString:@":"] objectAtI… > 29 ? t2 + 1 : t2)
  100089654  mov     x0, x25
  100089658  bl      _objc_release
  10008965c  mov     x0, x21
  100089660  bl      _objc_release
  100089664  mov     x0, x20
  100089668  bl      _objc_release
  10008966c  mov     x0, x19
  100089670  bl      _objc_release
  100089674  mov     x0, x22
  100089678  ldp     x29, x30, [sp, #0x50]
  10008967c  ldp     x20, x19, [sp, #0x40]
  100089680  ldp     x22, x21, [sp, #0x30]
  100089684  ldp     x24, x23, [sp, #0x20]
  100089688  ldp     x26, x25, [sp, #0x10]
  10008968c  ldp     x28, x27, [sp], #0x60
  100089690  ret
  100089694  mov     x23, x0
  100089698  b       loc_1000896dc
  10008969c  mov     x23, x0
  1000896a0  b       loc_1000896f4
  1000896a4  mov     x23, x0
  1000896a8  b       loc_1000896ec
  1000896ac  mov     x23, x0
  1000896b0  b       loc_1000896e4
  1000896b4  b       loc_1000896b8
loc_1000896b8:
  1000896b8  mov     x23, x0
  1000896bc  mov     x0, x27
  1000896c0  bl      _objc_release
  1000896c4  b       loc_1000896dc
  1000896c8  b       loc_1000896cc
loc_1000896cc:
  1000896cc  mov     x23, x0
  1000896d0  mov     x0, x22
  1000896d4  bl      _objc_release
  1000896d8  mov     x22, x25
loc_1000896dc:
  1000896dc  mov     x0, x22
  1000896e0  bl      _objc_release
loc_1000896e4:
  1000896e4  mov     x0, x21
  1000896e8  bl      _objc_release
loc_1000896ec:
  1000896ec  mov     x0, x20
  1000896f0  bl      _objc_release
loc_1000896f4:
  1000896f4  mov     x0, x19
  1000896f8  bl      _objc_release
  1000896fc  mov     x0, x23
  100089700  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPersistentStats nearestDiscreteTime:]
; address 0x100089704  size 800  kind objc
; ======================================================================
  100089704  stp     x28, x27, [sp, #-0x60]!
  100089708  stp     x26, x25, [sp, #0x10]
  10008970c  stp     x24, x23, [sp, #0x20]
  100089710  stp     x22, x21, [sp, #0x30]
  100089714  stp     x20, x19, [sp, #0x40]
  100089718  stp     x29, x30, [sp, #0x50]
  10008971c  add     x29, sp, #0x50
  100089720  sub     sp, sp, #0x40
  100089724  mov     x19, x2
  100089728  adrp    x26, #0x1003b0000
  10008972c  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  100089730  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  100089734  str     x26, [sp, #0x38]
  100089738  adrp    x25, #0x10041d000
  10008973c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100089740  adrp    x8, #0x100416000
  100089744  nop
  100089748  ldr     x20, [x8, #0xec0]
  10008974c  mov     w2, #3
  100089750  mov     x1, x20
  100089754  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100089758  mov     x29, x29
  10008975c  bl      _objc_retainAutoreleasedReturnValue
  100089760  mov     x21, x0
  100089764  str     x21, [sp, #0x10]
  100089768  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10008976c  mov     w2, #5
  100089770  mov     x1, x20
  100089774  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  100089778  bl      _objc_retain
  10008977c  mov     x22, x0
  100089780  str     x22, [sp, #0x18]
  100089784  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100089788  mov     w2, #0xa
  10008978c  mov     x1, x20
  100089790  bl      _objc_msgSend                            ; [NSNumber numberWithInt:10]
  100089794  bl      _objc_retain
  100089798  mov     x23, x0
  10008979c  str     x23, [sp, #0x20]
  1000897a0  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000897a4  mov     w2, #0xf
  1000897a8  mov     x1, x20
  1000897ac  bl      _objc_msgSend                            ; [NSNumber numberWithInt:15]
  1000897b0  bl      _objc_retain
  1000897b4  mov     x24, x0
  1000897b8  str     x24, [sp, #0x28]
  1000897bc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000897c0  mov     w2, #0x14
  1000897c4  mov     x1, x20
  1000897c8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:20]
  1000897cc  bl      _objc_retain
  1000897d0  mov     x25, x0
  1000897d4  str     x25, [sp, #0x30]
  1000897d8  adrp    x8, #0x10041d000
  1000897dc  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000897e0  adrp    x8, #0x100417000
  1000897e4  nop
  1000897e8  ldr     x1, [x8, #0x3c8]
  1000897ec  add     x2, sp, #0x10
  1000897f0  mov     w3, #5
  1000897f4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x10] count:5]
  1000897f8  mov     x29, x29
  1000897fc  bl      _objc_retainAutoreleasedReturnValue
  100089800  mov     x20, x0
  100089804  mov     x0, x25
  100089808  bl      _objc_release
  10008980c  mov     x0, x24
  100089810  bl      _objc_release
  100089814  mov     x0, x23
  100089818  bl      _objc_release
  10008981c  mov     x0, x22
  100089820  bl      _objc_release
  100089824  mov     x0, x21
  100089828  bl      _objc_release
  10008982c  cmp     x19, #4
  100089830  b.ge    loc_100089868                            ; if (arg1 >= 4)
  100089834  adrp    x8, #0x10041d000
  100089838  ldr     x0, [x8, #0xf78]                         ; class NSString
  10008983c  adrp    x8, #0x100416000
  100089840  nop
  100089844  ldr     x1, [x8, #0xee8]
  100089848  str     x19, [sp]
  10008984c  adrp    x2, #0x1003ba000
  100089850  add     x2, x2, #0x1f0                           ; @"%d"
  100089854  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d", arg1]
  100089858  mov     x29, x29
  10008985c  bl      _objc_retainAutoreleasedReturnValue
  100089860  mov     x19, x0
  100089864  b       loc_100089978
loc_100089868:
  100089868  mov     x22, #0
  10008986c  mov     w27, #0
  100089870  adrp    x8, #0x100416000
  100089874  nop
  100089878  adrp    x9, #0x100416000
  10008987c  add     x9, x9, #0xc30                           ; &@selector(objectAtIndex:)
  100089880  ldr     x24, [x8, #0xe30]
  100089884  ldr     x23, [x9]
  100089888  adrp    x8, #0x100417000
  10008988c  add     x8, x8, #0x110                           ; &@selector(intValue)
  100089890  ldr     x21, [x8]
  100089894  mov     w28, #0x70000
  100089898  movk    w28, #0xa120
  10008989c  b       loc_1000898c0
loc_1000898a0:
  1000898a0  subs    w8, w0, w19
  1000898a4  cneg    w26, w8, mi                              ; t1 = (([[[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2] intValue] - arg1) <0 ? -([[[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2] intValue] - arg1) : ([[[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2] intValue] - arg1))
  1000898a8  mov     x0, x25
  1000898ac  bl      _objc_release
  1000898b0  cmp     w26, w28
  1000898b4  csel    w28, w26, w28, lt
  1000898b8  csel    w27, w22, w27, lt
  1000898bc  add     x22, x22, #1
loc_1000898c0:
  1000898c0  mov     x0, x20
  1000898c4  mov     x1, x24
  1000898c8  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:&sp[0x10] count:5] count]
  1000898cc  cmp     x22, x0
  1000898d0  b.hs    loc_10008990c                            ; if (x22 >=u [[NSArray arrayWithObjects:&sp[0x10] count:5] count])
  1000898d4  mov     x0, x20
  1000898d8  mov     x1, x23
  1000898dc  mov     x2, x22
  1000898e0  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2]
  1000898e4  mov     x29, x29
  1000898e8  bl      _objc_retainAutoreleasedReturnValue
  1000898ec  mov     x25, x0
  1000898f0  mov     x1, x21
  1000898f4  bl      _objc_msgSend                            ; [[[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2] intValue]
  1000898f8  b       loc_1000898a0
  1000898fc  mov     x19, x0
  100089900  mov     x0, x25
loc_100089904:
  100089904  bl      _objc_release
  100089908  b       loc_1000899b8
loc_10008990c:
  10008990c  adrp    x8, #0x10041d000
  100089910  ldr     x19, [x8, #0xf78]                        ; class NSString
  100089914  sxtw    x2, w27
  100089918  mov     x0, x20
  10008991c  mov     x1, x23
  100089920  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2]
  100089924  adrp    x26, #0x1003b0000
  100089928  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  10008992c  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  100089930  mov     x29, x29
  100089934  bl      _objc_retainAutoreleasedReturnValue
  100089938  mov     x22, x0
  10008993c  mov     x1, x21
  100089940  bl      _objc_msgSend                            ; [[[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2] intValue]
  100089944  adrp    x8, #0x100416000
  100089948  nop
  10008994c  ldr     x1, [x8, #0xee8]
  100089950  str     x0, [sp]
  100089954  adrp    x2, #0x1003bf000
  100089958  add     x2, x2, #0xbf0                           ; @"%d+"
  10008995c  mov     x0, x19
  100089960  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%d+", [[[NSArray arrayWithObjects:&sp[0x10] count:5] objectAtIndex:x2] intValue]]
  100089964  mov     x29, x29
  100089968  bl      _objc_retainAutoreleasedReturnValue
  10008996c  mov     x19, x0
  100089970  mov     x0, x22
  100089974  bl      _objc_release
loc_100089978:
  100089978  mov     x0, x20
  10008997c  bl      _objc_release
  100089980  ldr     x8, [sp, #0x38]
  100089984  sub     x8, x26, x8
  100089988  cbnz    x8, loc_1000899b0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10008998c  mov     x0, x19
  100089990  sub     sp, x29, #0x50
  100089994  ldp     x29, x30, [sp, #0x50]
  100089998  ldp     x20, x19, [sp, #0x40]
  10008999c  ldp     x22, x21, [sp, #0x30]
  1000899a0  ldp     x24, x23, [sp, #0x20]
  1000899a4  ldp     x26, x25, [sp, #0x10]
  1000899a8  ldp     x28, x27, [sp], #0x60
  1000899ac  b       _objc_autoreleaseReturnValue
loc_1000899b0:
  1000899b0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000899b4:
  1000899b4  mov     x19, x0
loc_1000899b8:
  1000899b8  mov     x0, x20
loc_1000899bc:
  1000899bc  bl      _objc_release
  1000899c0  mov     x0, x19
  1000899c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000899c8  mov     x19, x0
  1000899cc  b       loc_100089a0c
  1000899d0  mov     x19, x0
  1000899d4  b       loc_100089a04
  1000899d8  mov     x19, x0
  1000899dc  b       loc_1000899fc
  1000899e0  mov     x19, x0
  1000899e4  b       loc_1000899f4
  1000899e8  mov     x19, x0
  1000899ec  mov     x0, x25
  1000899f0  bl      _objc_release
loc_1000899f4:
  1000899f4  mov     x0, x24
  1000899f8  bl      _objc_release
loc_1000899fc:
  1000899fc  mov     x0, x23
  100089a00  bl      _objc_release
loc_100089a04:
  100089a04  mov     x0, x22
  100089a08  bl      _objc_release
loc_100089a0c:
  100089a0c  mov     x0, x21
  100089a10  b       loc_1000899bc
  100089a14  b       loc_1000899b4
  100089a18  mov     x19, x0
  100089a1c  mov     x0, x22
  100089a20  b       loc_100089904

; ======================================================================
; -[ADPersistentStats enemyStatsDataRef]
; address 0x100089a24  size 16  kind objc
; ======================================================================
  100089a24  adrp    x8, #0x10041f000
  100089a28  ldrsw   x8, [x8, #0xe9c]                         ; ivar offset ADPersistentStats._enemyStatsDataRef (+0x8)
  100089a2c  ldr     x0, [x0, x8]                             ; x0 = self->_enemyStatsDataRef
  100089a30  ret

; ======================================================================
; -[ADPersistentStats totalsStatsDataRef]
; address 0x100089a34  size 16  kind objc
; ======================================================================
  100089a34  adrp    x8, #0x10041f000
  100089a38  ldrsw   x8, [x8, #0xea0]                         ; ivar offset ADPersistentStats._totalsStatsDataRef (+0x10)
  100089a3c  ldr     x0, [x0, x8]                             ; x0 = self->_totalsStatsDataRef
  100089a40  ret

; ======================================================================
; -[ADPersistentStats weaponsStatsDataRef]
; address 0x100089a44  size 16  kind objc
; ======================================================================
  100089a44  adrp    x8, #0x10041f000
  100089a48  ldrsw   x8, [x8, #0xea4]                         ; ivar offset ADPersistentStats._weaponsStatsDataRef (+0x18)
  100089a4c  ldr     x0, [x0, x8]                             ; x0 = self->_weaponsStatsDataRef
  100089a50  ret

; ======================================================================
; -[ADPersistentStats enemyBestiaryDataRef]
; address 0x100089a54  size 16  kind objc
; ======================================================================
  100089a54  adrp    x8, #0x10041f000
  100089a58  ldrsw   x8, [x8, #0xea8]                         ; ivar offset ADPersistentStats._enemyBestiaryDataRef (+0x20)
  100089a5c  ldr     x0, [x0, x8]                             ; x0 = self->_enemyBestiaryDataRef
  100089a60  ret

; ======================================================================
; -[ADPersistentStats unlockedEnemies]
; address 0x100089a64  size 16  kind objc
; ======================================================================
  100089a64  adrp    x8, #0x10041f000
  100089a68  ldrsw   x8, [x8, #0xeac]                         ; ivar offset ADPersistentStats._unlockedEnemies (+0x28)
  100089a6c  ldr     x0, [x0, x8]                             ; x0 = self->_unlockedEnemies
  100089a70  ret

; ======================================================================
; -[ADPersistentStats setUnlockedEnemies:]
; address 0x100089a74  size 56  kind objc
; ======================================================================
  100089a74  stp     x20, x19, [sp, #-0x20]!
  100089a78  stp     x29, x30, [sp, #0x10]
  100089a7c  add     x29, sp, #0x10
  100089a80  mov     x19, x0
  100089a84  adrp    x8, #0x10041f000
  100089a88  ldrsw   x20, [x8, #0xeac]                        ; ivar offset ADPersistentStats._unlockedEnemies (+0x28)
  100089a8c  mov     x0, x2
  100089a90  bl      _objc_retain
  100089a94  ldr     x8, [x19, x20]                           ; x8 = self->_unlockedEnemies
  100089a98  str     x0, [x19, x20]                           ; self->_unlockedEnemies = arg1
  100089a9c  mov     x0, x8
  100089aa0  ldp     x29, x30, [sp, #0x10]
  100089aa4  ldp     x20, x19, [sp], #0x20
  100089aa8  b       _objc_release

; ======================================================================
; -[ADPersistentStats bestiary]
; address 0x100089aac  size 16  kind objc
; ======================================================================
  100089aac  adrp    x8, #0x10041f000
  100089ab0  ldrsw   x2, [x8, #0xeb0]                         ; ivar offset ADPersistentStats._bestiary (+0x30)
  100089ab4  mov     w3, #1
  100089ab8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADPersistentStats setBestiary:]
; address 0x100089abc  size 12  kind objc
; ======================================================================
  100089abc  adrp    x8, #0x10041f000
  100089ac0  ldrsw   x3, [x8, #0xeb0]                         ; ivar offset ADPersistentStats._bestiary (+0x30)
  100089ac4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADPersistentStats enemies]
; address 0x100089ac8  size 16  kind objc
; ======================================================================
  100089ac8  adrp    x8, #0x10041f000
  100089acc  ldrsw   x2, [x8, #0xeb4]                         ; ivar offset ADPersistentStats._enemies (+0x38)
  100089ad0  mov     w3, #1
  100089ad4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADPersistentStats setEnemies:]
; address 0x100089ad8  size 12  kind objc
; ======================================================================
  100089ad8  adrp    x8, #0x10041f000
  100089adc  ldrsw   x3, [x8, #0xeb4]                         ; ivar offset ADPersistentStats._enemies (+0x38)
  100089ae0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADPersistentStats .cxx_destruct]
; address 0x100089ae4  size 164  kind objc
; ======================================================================
  100089ae4  stp     x20, x19, [sp, #-0x20]!
  100089ae8  stp     x29, x30, [sp, #0x10]
  100089aec  add     x29, sp, #0x10
  100089af0  mov     x19, x0
  100089af4  adrp    x8, #0x10041f000
  100089af8  ldrsw   x8, [x8, #0xeb4]                         ; ivar offset ADPersistentStats._enemies (+0x38)
  100089afc  add     x0, x19, x8
  100089b00  mov     x1, #0
  100089b04  bl      _objc_storeStrong
  100089b08  adrp    x8, #0x10041f000
  100089b0c  ldrsw   x8, [x8, #0xeb0]                         ; ivar offset ADPersistentStats._bestiary (+0x30)
  100089b10  add     x0, x19, x8
  100089b14  mov     x1, #0
  100089b18  bl      _objc_storeStrong
  100089b1c  adrp    x8, #0x10041f000
  100089b20  ldrsw   x8, [x8, #0xeac]                         ; ivar offset ADPersistentStats._unlockedEnemies (+0x28)
  100089b24  add     x0, x19, x8
  100089b28  mov     x1, #0
  100089b2c  bl      _objc_storeStrong
  100089b30  adrp    x8, #0x10041f000
  100089b34  ldrsw   x8, [x8, #0xea8]                         ; ivar offset ADPersistentStats._enemyBestiaryDataRef (+0x20)
  100089b38  add     x0, x19, x8
  100089b3c  mov     x1, #0
  100089b40  bl      _objc_storeStrong
  100089b44  adrp    x8, #0x10041f000
  100089b48  ldrsw   x8, [x8, #0xea4]                         ; ivar offset ADPersistentStats._weaponsStatsDataRef (+0x18)
  100089b4c  add     x0, x19, x8
  100089b50  mov     x1, #0
  100089b54  bl      _objc_storeStrong
  100089b58  adrp    x8, #0x10041f000
  100089b5c  ldrsw   x8, [x8, #0xea0]                         ; ivar offset ADPersistentStats._totalsStatsDataRef (+0x10)
  100089b60  add     x0, x19, x8
  100089b64  mov     x1, #0
  100089b68  bl      _objc_storeStrong
  100089b6c  mov     x1, #0
  100089b70  adrp    x8, #0x10041f000
  100089b74  ldrsw   x8, [x8, #0xe9c]                         ; ivar offset ADPersistentStats._enemyStatsDataRef (+0x8)
  100089b78  add     x0, x19, x8
  100089b7c  ldp     x29, x30, [sp, #0x10]
  100089b80  ldp     x20, x19, [sp], #0x20
  100089b84  b       _objc_storeStrong
