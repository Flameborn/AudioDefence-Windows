// unit ADInGameStats — 97 functions
//   0x1000b7cb0      68  -[ADInGameStats forceCompleteAccuracy]
//   0x1000b7cf4     116  +[ADInGameStats singleton]
//   0x1000b7d68      72  +[ADInGameStats singleton]_block_invoke
//   0x1000b7db0       4  sub_1000b7db0
//   0x1000b7db4       4  sub_1000b7db4
//   0x1000b7db8      60  -[ADInGameStats init]
//   0x1000b7df4    1504  +[ADInGameStats toggleOnOff:]
//   0x1000b83d4    1324  -[ADInGameStats startNewLevel:]
//   0x1000b8900     240  -[ADInGameStats saveGameSessionStats]
//   0x1000b89f0     540  -[ADInGameStats endLevel]
//   0x1000b8c0c     836  -[ADInGameStats saveStats]
//   0x1000b8f50    1736  -[ADInGameStats filterEnemiesByDisplayName]
//   0x1000b9618    1020  -[ADInGameStats filterWeaponsByShotsFired]
//   0x1000b9a14     332  -[ADInGameStats prepareTotalsStats]
//   0x1000b9b60     872  -[ADInGameStats killedEnemi:]
//   0x1000b9ec8     464  -[ADInGameStats cheatKillCount:]
//   0x1000ba098     424  -[ADInGameStats deathByEnemyWithName:]
//   0x1000ba240      96  -[ADInGameStats decrementCombo]
//   0x1000ba2a0     212  -[ADInGameStats updateMeleeWeaponsWithName:Hit:]
//   0x1000ba374    1432  -[ADInGameStats updateDataForWeaponWithName:FiredShot:HitFired:Killed:Critical:Time:]
//   0x1000ba90c     112  -[ADInGameStats setCombo:]
//   0x1000ba97c      96  -[ADInGameStats setChallengeTimeElapsed:]
//   0x1000ba9dc      16  -[ADInGameStats challengeTimeElapsed]
//   0x1000ba9ec      96  -[ADInGameStats setTimeElapsed:]
//   0x1000baa4c      16  -[ADInGameStats timeElapsed]
//   0x1000baa5c      96  -[ADInGameStats setBrickTime:]
//   0x1000baabc      16  -[ADInGameStats brickTime]
//   0x1000baacc     112  -[ADInGameStats currentAccuracy]
//   0x1000bab3c     396  -[ADInGameStats computeCurrentEnemyKillCount]
//   0x1000bacc8      16  -[ADInGameStats getShotsFired]
//   0x1000bacd8      16  -[ADInGameStats getShotsOnTarget]
//   0x1000bace8      20  -[ADInGameStats resetPowerupKills]
//   0x1000bacfc    4776  -[ADInGameStats buildMiscPostGameDataDictionary]
//   0x1000bbfa4     648  -[ADInGameStats getEnemyData]
//   0x1000bc22c      84  -[ADInGameStats getWeaponData]
//   0x1000bc280      84  -[ADInGameStats getWeaponCriticalHitsData]
//   0x1000bc2d4      84  -[ADInGameStats getMiscData]
//   0x1000bc328     128  -[ADInGameStats getEnemiesToCoinsReward]
//   0x1000bc3a8    2248  -[ADInGameStats description]
//   0x1000bcc70      16  -[ADInGameStats debugDescription]
//   0x1000bcc80     208  -[ADInGameStats dealloc]
//   0x1000bcd50      16  -[ADInGameStats enemyList]
//   0x1000bcd60      12  -[ADInGameStats setEnemyList:]
//   0x1000bcd6c      16  -[ADInGameStats weaponsData]
//   0x1000bcd7c      12  -[ADInGameStats setWeaponsData:]
//   0x1000bcd88      16  -[ADInGameStats combo]
//   0x1000bcd98      16  -[ADInGameStats meleeSwings]
//   0x1000bcda8      16  -[ADInGameStats setMeleeSwings:]
//   0x1000bcdb8      16  -[ADInGameStats meleeHits]
//   0x1000bcdc8      16  -[ADInGameStats setMeleeHits:]
//   0x1000bcdd8      16  -[ADInGameStats highestCombo]
//   0x1000bcde8      16  -[ADInGameStats setHighestCombo:]
//   0x1000bcdf8      16  -[ADInGameStats gameScore]
//   0x1000bce08      16  -[ADInGameStats setGameScore:]
//   0x1000bce18      16  -[ADInGameStats coinsForKill]
//   0x1000bce28      16  -[ADInGameStats setCoinsForKill:]
//   0x1000bce38      16  -[ADInGameStats totalCoins]
//   0x1000bce48      16  -[ADInGameStats setTotalCoins:]
//   0x1000bce58      16  -[ADInGameStats diamondLoot]
//   0x1000bce68      16  -[ADInGameStats setDiamondLoot:]
//   0x1000bce78      16  -[ADInGameStats gameMode]
//   0x1000bce88      12  -[ADInGameStats setGameMode:]
//   0x1000bce94      16  -[ADInGameStats numCriticalHits]
//   0x1000bcea4      16  -[ADInGameStats setNumCriticalHits:]
//   0x1000bceb4      16  -[ADInGameStats weaponCriticalHits]
//   0x1000bcec4      12  -[ADInGameStats setWeaponCriticalHits:]
//   0x1000bced0      16  -[ADInGameStats currentBrickName]
//   0x1000bcee0      12  -[ADInGameStats setCurrentBrickName:]
//   0x1000bceec      16  -[ADInGameStats enemyKillsWithPowerup]
//   0x1000bcefc      16  -[ADInGameStats setEnemyKillsWithPowerup:]
//   0x1000bcf0c      16  -[ADInGameStats numberOfEnemyKills]
//   0x1000bcf1c      16  -[ADInGameStats setNumberOfEnemyKills:]
//   0x1000bcf2c      16  -[ADInGameStats numberOfBricksDefeated]
//   0x1000bcf3c      16  -[ADInGameStats setNumberOfBricksDefeated:]
//   0x1000bcf4c      20  -[ADInGameStats death]
//   0x1000bcf60      16  -[ADInGameStats setDeath:]
//   0x1000bcf70      16  -[ADInGameStats numberMissionsCompleted]
//   0x1000bcf80      16  -[ADInGameStats setNumberMissionsCompleted:]
//   0x1000bcf90      16  -[ADInGameStats numberMissionsSkipped]
//   0x1000bcfa0      16  -[ADInGameStats setNumberMissionsSkipped:]
//   0x1000bcfb0      16  -[ADInGameStats shotsOnTarget]
//   0x1000bcfc0      16  -[ADInGameStats setShotsOnTarget:]
//   0x1000bcfd0      16  -[ADInGameStats totalShotsFired]
//   0x1000bcfe0      16  -[ADInGameStats setTotalShotsFired:]
//   0x1000bcff0      20  -[ADInGameStats challengeTimeElapsedCalls]
//   0x1000bd004      20  -[ADInGameStats setChallengeTimeElapsedCalls:]
//   0x1000bd018      20  -[ADInGameStats timeElapsedCalls]
//   0x1000bd02c      20  -[ADInGameStats setTimeElapsedCalls:]
//   0x1000bd040      20  -[ADInGameStats brickTimeCalls]
//   0x1000bd054      20  -[ADInGameStats setBrickTimeCalls:]
//   0x1000bd068      20  -[ADInGameStats sessionCompleted]
//   0x1000bd07c      16  -[ADInGameStats setSessionCompleted:]
//   0x1000bd08c      16  -[ADInGameStats postGameData]
//   0x1000bd09c      12  -[ADInGameStats setPostGameData:]
//   0x1000bd0a8      16  -[ADInGameStats enemiesToCoins]
//   0x1000bd0b8      12  -[ADInGameStats setEnemiesToCoins:]
//   0x1000bd0c4     164  -[ADInGameStats .cxx_destruct]

; ======================================================================
; -[ADInGameStats forceCompleteAccuracy]
; address 0x1000b7cb0  size 68  kind objc
; ======================================================================
  1000b7cb0  stp     x20, x19, [sp, #-0x20]!
  1000b7cb4  stp     x29, x30, [sp, #0x10]
  1000b7cb8  add     x29, sp, #0x10
  1000b7cbc  mov     x19, x0
  1000b7cc0  adrp    x8, #0x10041a000
  1000b7cc4  nop
  1000b7cc8  ldr     x1, [x8, #0x798]
  1000b7ccc  mov     w2, #1
  1000b7cd0  bl      _objc_msgSend                            ; [self setTotalShotsFired:1]
  1000b7cd4  adrp    x8, #0x10041a000
  1000b7cd8  nop
  1000b7cdc  ldr     x1, [x8, #0x7a0]
  1000b7ce0  mov     w2, #1
  1000b7ce4  mov     x0, x19
  1000b7ce8  ldp     x29, x30, [sp, #0x10]
  1000b7cec  ldp     x20, x19, [sp], #0x20
  1000b7cf0  b       _objc_msgSend                            ; [self setShotsOnTarget:1]

; ======================================================================
; +[ADInGameStats singleton]
; address 0x1000b7cf4  size 116  kind objc
; ======================================================================
  1000b7cf4  stp     x20, x19, [sp, #-0x20]!
  1000b7cf8  stp     x29, x30, [sp, #0x10]
  1000b7cfc  add     x29, sp, #0x10
  1000b7d00  sub     sp, sp, #0x30
  1000b7d04  adrp    x8, #0x1003b0000
  1000b7d08  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000b7d0c  str     x8, [sp, #8]
  1000b7d10  mov     w8, #-0x3e000000
  1000b7d14  stp     w8, wzr, [sp, #0x10]
  1000b7d18  adr     x8, #0x1000b7d68                         ; &+[ADInGameStats singleton]_block_invoke
  1000b7d1c  nop
  1000b7d20  str     x8, [sp, #0x18]
  1000b7d24  adrp    x8, #0x1003b2000
  1000b7d28  add     x8, x8, #0x5f0                           ; &d_1003b25f0
  1000b7d2c  stp     x8, x0, [sp, #0x20]
  1000b7d30  adrp    x19, #0x10042d000
  1000b7d34  add     x19, x19, #0xa38                         ; &g_10042da38
  1000b7d38  ldr     x8, [x19, #8]                            ; load g_10042da40
  1000b7d3c  cmn     x8, #1
  1000b7d40  b.ne    loc_1000b7d58                            ; if (g_10042da40 != -1)
loc_1000b7d44:
  1000b7d44  ldr     x0, [x19]                                ; load g_10042da38
  1000b7d48  sub     sp, x29, #0x10
  1000b7d4c  ldp     x29, x30, [sp, #0x10]
  1000b7d50  ldp     x20, x19, [sp], #0x20
  1000b7d54  b       _objc_retainAutoreleaseReturnValue
loc_1000b7d58:
  1000b7d58  add     x0, x19, #8                              ; &g_10042da40
  1000b7d5c  add     x1, sp, #8
  1000b7d60  bl      _dispatch_once                           ; dispatch_once(&g_10042da40, ^{+[ADInGameStats singleton]_block_invoke captures +0x20=ADInGameStats})
  1000b7d64  b       loc_1000b7d44

; ======================================================================
; +[ADInGameStats singleton]_block_invoke
; address 0x1000b7d68  size 72  kind block
; ======================================================================
  1000b7d68  stp     x29, x30, [sp, #-0x10]!
  1000b7d6c  mov     x29, sp
  1000b7d70  ldr     x0, [x0, #0x20]                          ; x0 = captured ADInGameStats
  1000b7d74  adrp    x8, #0x100416000
  1000b7d78  nop
  1000b7d7c  ldr     x1, [x8, #0xac8]
  1000b7d80  bl      _objc_msgSend                            ; [ADInGameStats alloc]
  1000b7d84  adrp    x8, #0x100416000
  1000b7d88  nop
  1000b7d8c  ldr     x1, [x8, #0xab8]
  1000b7d90  bl      _objc_msgSend                            ; [[ADInGameStats alloc] init]
  1000b7d94  adrp    x9, #0x10042d000
  1000b7d98  add     x9, x9, #0xa38                           ; &g_10042da38
  1000b7d9c  ldr     x8, [x9]                                 ; load g_10042da38
  1000b7da0  str     x0, [x9]                                 ; store g_10042da38 = [[ADInGameStats alloc] init]
  1000b7da4  mov     x0, x8
  1000b7da8  ldp     x29, x30, [sp], #0x10
  1000b7dac  b       _objc_release

; ======================================================================
; sub_1000b7db0
; address 0x1000b7db0  size 4  kind sub
; ======================================================================
  1000b7db0  ret

; ======================================================================
; sub_1000b7db4
; address 0x1000b7db4  size 4  kind sub
; ======================================================================
  1000b7db4  ret

; ======================================================================
; -[ADInGameStats init]
; address 0x1000b7db8  size 60  kind objc
; ======================================================================
  1000b7db8  stp     x29, x30, [sp, #-0x10]!
  1000b7dbc  mov     x29, sp
  1000b7dc0  sub     sp, sp, #0x10
  1000b7dc4  str     x0, [sp]
  1000b7dc8  adrp    x8, #0x10041e000
  1000b7dcc  ldr     x8, [x8, #0xf78]
  1000b7dd0  str     x8, [sp, #8]
  1000b7dd4  adrp    x8, #0x100416000
  1000b7dd8  nop
  1000b7ddc  ldr     x1, [x8, #0xab8]
  1000b7de0  mov     x0, sp
  1000b7de4  bl      _objc_msgSendSuper2                      ; [super init]
  1000b7de8  mov     sp, x29
  1000b7dec  ldp     x29, x30, [sp], #0x10
  1000b7df0  ret

; ======================================================================
; +[ADInGameStats toggleOnOff:]
; address 0x1000b7df4  size 1504  kind objc
; ======================================================================
  1000b7df4  stp     x24, x23, [sp, #-0x40]!
  1000b7df8  stp     x22, x21, [sp, #0x10]
  1000b7dfc  stp     x20, x19, [sp, #0x20]
  1000b7e00  stp     x29, x30, [sp, #0x30]
  1000b7e04  add     x29, sp, #0x30
  1000b7e08  mov     x21, x2
  1000b7e0c  adrp    x8, #0x10041d000
  1000b7e10  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000b7e14  adrp    x8, #0x100416000
  1000b7e18  nop
  1000b7e1c  ldr     x1, [x8, #0xe88]
  1000b7e20  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000b7e24  mov     x29, x29
  1000b7e28  bl      _objc_retainAutoreleasedReturnValue
  1000b7e2c  mov     x19, x0
  1000b7e30  adrp    x24, #0x10041d000
  1000b7e34  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7e38  adrp    x8, #0x100417000
  1000b7e3c  add     x8, x8, #0x228                           ; &@selector(singleton)
  1000b7e40  ldr     x20, [x8]
  1000b7e44  cbz     w21, loc_1000b80dc                       ; if (arg1 == 0)
  1000b7e48  mov     x1, x20
  1000b7e4c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7e50  mov     x29, x29
  1000b7e54  bl      _objc_retainAutoreleasedReturnValue
  1000b7e58  mov     x23, x0
  1000b7e5c  adrp    x8, #0x10041a000
  1000b7e60  nop
  1000b7e64  ldr     x21, [x8, #0x7a8]
  1000b7e68  adrp    x8, #0x100416000
  1000b7e6c  nop
  1000b7e70  ldr     x22, [x8, #0xe98]
  1000b7e74  mov     x5, #0
  1000b7e78  adrp    x4, #0x1003bd000
  1000b7e7c  add     x4, x4, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  1000b7e80  mov     x0, x19
  1000b7e84  mov     x1, x22
  1000b7e88  mov     x2, x23
  1000b7e8c  mov     x3, x21
  1000b7e90  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_WEAPON_DATA" object:0]
  1000b7e94  mov     x0, x23
  1000b7e98  bl      _objc_release
  1000b7e9c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7ea0  mov     x1, x20
  1000b7ea4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7ea8  mov     x29, x29
  1000b7eac  bl      _objc_retainAutoreleasedReturnValue
  1000b7eb0  mov     x23, x0
  1000b7eb4  mov     x5, #0
  1000b7eb8  adrp    x4, #0x1003c1000
  1000b7ebc  add     x4, x4, #0x870                           ; @"UPDATE_COINS_FOR_KILL"
  1000b7ec0  mov     x0, x19
  1000b7ec4  mov     x1, x22
  1000b7ec8  mov     x2, x23
  1000b7ecc  mov     x3, x21
  1000b7ed0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_COINS_FOR_KILL" object:0]
  1000b7ed4  mov     x0, x23
  1000b7ed8  bl      _objc_release
  1000b7edc  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7ee0  mov     x1, x20
  1000b7ee4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7ee8  mov     x29, x29
  1000b7eec  bl      _objc_retainAutoreleasedReturnValue
  1000b7ef0  mov     x23, x0
  1000b7ef4  mov     x5, #0
  1000b7ef8  adrp    x4, #0x1003bd000
  1000b7efc  add     x4, x4, #0xb70                           ; @"TIME_ELAPSED"
  1000b7f00  mov     x0, x19
  1000b7f04  mov     x1, x22
  1000b7f08  mov     x2, x23
  1000b7f0c  mov     x3, x21
  1000b7f10  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"TIME_ELAPSED" object:0]
  1000b7f14  mov     x0, x23
  1000b7f18  bl      _objc_release
  1000b7f1c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7f20  mov     x1, x20
  1000b7f24  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7f28  mov     x29, x29
  1000b7f2c  bl      _objc_retainAutoreleasedReturnValue
  1000b7f30  mov     x23, x0
  1000b7f34  mov     x5, #0
  1000b7f38  adrp    x4, #0x1003bd000
  1000b7f3c  add     x4, x4, #0xc30                           ; @"UPDATE_KILLED_ENEMY_POWERUP"
  1000b7f40  mov     x0, x19
  1000b7f44  mov     x1, x22
  1000b7f48  mov     x2, x23
  1000b7f4c  mov     x3, x21
  1000b7f50  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_KILLED_ENEMY_POWERUP" object:0]
  1000b7f54  mov     x0, x23
  1000b7f58  bl      _objc_release
  1000b7f5c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7f60  mov     x1, x20
  1000b7f64  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7f68  mov     x29, x29
  1000b7f6c  bl      _objc_retainAutoreleasedReturnValue
  1000b7f70  mov     x23, x0
  1000b7f74  mov     x5, #0
  1000b7f78  adrp    x4, #0x1003bd000
  1000b7f7c  add     x4, x4, #0xbb0                           ; @"UPDATE_CHALLENGE_TIME_ELAPSED"
  1000b7f80  mov     x0, x19
  1000b7f84  mov     x1, x22
  1000b7f88  mov     x2, x23
  1000b7f8c  mov     x3, x21
  1000b7f90  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_CHALLENGE_TIME_ELAPSED" object:0]
  1000b7f94  mov     x0, x23
  1000b7f98  bl      _objc_release
  1000b7f9c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7fa0  mov     x1, x20
  1000b7fa4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7fa8  mov     x29, x29
  1000b7fac  bl      _objc_retainAutoreleasedReturnValue
  1000b7fb0  mov     x23, x0
  1000b7fb4  mov     x5, #0
  1000b7fb8  adrp    x4, #0x1003bd000
  1000b7fbc  add     x4, x4, #0xb90                           ; @"BRICK_TIME_ELAPSED"
  1000b7fc0  mov     x0, x19
  1000b7fc4  mov     x1, x22
  1000b7fc8  mov     x2, x23
  1000b7fcc  mov     x3, x21
  1000b7fd0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"BRICK_TIME_ELAPSED" object:0]
  1000b7fd4  mov     x0, x23
  1000b7fd8  bl      _objc_release
  1000b7fdc  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b7fe0  mov     x1, x20
  1000b7fe4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b7fe8  mov     x29, x29
  1000b7fec  bl      _objc_retainAutoreleasedReturnValue
  1000b7ff0  mov     x23, x0
  1000b7ff4  mov     x5, #0
  1000b7ff8  adrp    x4, #0x1003bd000
  1000b7ffc  add     x4, x4, #0xc10                           ; @"UPDATE_KILLED_ENEMY_WITH_WEAPON"
  1000b8000  mov     x0, x19
  1000b8004  mov     x1, x22
  1000b8008  mov     x2, x23
  1000b800c  mov     x3, x21
  1000b8010  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_KILLED_ENEMY_WITH_WEAPON" object:0]
  1000b8014  mov     x0, x23
  1000b8018  bl      _objc_release
  1000b801c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8020  mov     x1, x20
  1000b8024  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b8028  mov     x29, x29
  1000b802c  bl      _objc_retainAutoreleasedReturnValue
  1000b8030  mov     x23, x0
  1000b8034  mov     x5, #0
  1000b8038  adrp    x4, #0x1003bd000
  1000b803c  add     x4, x4, #0xbd0                           ; @"UPDATE_MELEE_WEAPON_DATA"
  1000b8040  mov     x0, x19
  1000b8044  mov     x1, x22
  1000b8048  mov     x2, x23
  1000b804c  mov     x3, x21
  1000b8050  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_MELEE_WEAPON_DATA" object:0]
  1000b8054  mov     x0, x23
  1000b8058  bl      _objc_release
  1000b805c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8060  mov     x1, x20
  1000b8064  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b8068  mov     x29, x29
  1000b806c  bl      _objc_retainAutoreleasedReturnValue
  1000b8070  mov     x23, x0
  1000b8074  mov     x5, #0
  1000b8078  adrp    x4, #0x1003bd000
  1000b807c  add     x4, x4, #0xc90                           ; @"PLAYER_DIED"
  1000b8080  mov     x0, x19
  1000b8084  mov     x1, x22
  1000b8088  mov     x2, x23
  1000b808c  mov     x3, x21
  1000b8090  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"PLAYER_DIED" object:0]
  1000b8094  mov     x0, x23
  1000b8098  bl      _objc_release
  1000b809c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b80a0  mov     x1, x20
  1000b80a4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b80a8  mov     x29, x29
  1000b80ac  bl      _objc_retainAutoreleasedReturnValue
  1000b80b0  mov     x23, x0
  1000b80b4  mov     x5, #0
  1000b80b8  adrp    x4, #0x1003bd000
  1000b80bc  add     x4, x4, #0xcb0                           ; @"UPDATE_DIAMONDS"
  1000b80c0  mov     x0, x19
  1000b80c4  mov     x1, x22
  1000b80c8  mov     x2, x23
  1000b80cc  mov     x3, x21
  1000b80d0  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] addObserver:[ADInGameStats singleton] selector:@selector(actUponNotification:) name:@"UPDATE_DIAMONDS" object:0]
  1000b80d4  mov     x0, x23
  1000b80d8  b       loc_1000b8338
loc_1000b80dc:
  1000b80dc  mov     x1, x20
  1000b80e0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b80e4  mov     x29, x29
  1000b80e8  bl      _objc_retainAutoreleasedReturnValue
  1000b80ec  mov     x22, x0
  1000b80f0  adrp    x8, #0x100416000
  1000b80f4  nop
  1000b80f8  ldr     x21, [x8, #0xfc0]
  1000b80fc  mov     x4, #0
  1000b8100  adrp    x3, #0x1003bd000
  1000b8104  add     x3, x3, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  1000b8108  mov     x0, x19
  1000b810c  mov     x1, x21
  1000b8110  mov     x2, x22
  1000b8114  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_WEAPON_DATA" object:0]
  1000b8118  mov     x0, x22
  1000b811c  bl      _objc_release
  1000b8120  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8124  mov     x1, x20
  1000b8128  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b812c  mov     x29, x29
  1000b8130  bl      _objc_retainAutoreleasedReturnValue
  1000b8134  mov     x22, x0
  1000b8138  mov     x4, #0
  1000b813c  adrp    x3, #0x1003c1000
  1000b8140  add     x3, x3, #0x870                           ; @"UPDATE_COINS_FOR_KILL"
  1000b8144  mov     x0, x19
  1000b8148  mov     x1, x21
  1000b814c  mov     x2, x22
  1000b8150  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_COINS_FOR_KILL" object:0]
  1000b8154  mov     x0, x22
  1000b8158  bl      _objc_release
  1000b815c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8160  mov     x1, x20
  1000b8164  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b8168  mov     x29, x29
  1000b816c  bl      _objc_retainAutoreleasedReturnValue
  1000b8170  mov     x22, x0
  1000b8174  mov     x4, #0
  1000b8178  adrp    x3, #0x1003bd000
  1000b817c  add     x3, x3, #0xb70                           ; @"TIME_ELAPSED"
  1000b8180  mov     x0, x19
  1000b8184  mov     x1, x21
  1000b8188  mov     x2, x22
  1000b818c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"TIME_ELAPSED" object:0]
  1000b8190  mov     x0, x22
  1000b8194  bl      _objc_release
  1000b8198  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b819c  mov     x1, x20
  1000b81a0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b81a4  mov     x29, x29
  1000b81a8  bl      _objc_retainAutoreleasedReturnValue
  1000b81ac  mov     x22, x0
  1000b81b0  mov     x4, #0
  1000b81b4  adrp    x3, #0x1003bd000
  1000b81b8  add     x3, x3, #0xc30                           ; @"UPDATE_KILLED_ENEMY_POWERUP"
  1000b81bc  mov     x0, x19
  1000b81c0  mov     x1, x21
  1000b81c4  mov     x2, x22
  1000b81c8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_KILLED_ENEMY_POWERUP" object:0]
  1000b81cc  mov     x0, x22
  1000b81d0  bl      _objc_release
  1000b81d4  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b81d8  mov     x1, x20
  1000b81dc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b81e0  mov     x29, x29
  1000b81e4  bl      _objc_retainAutoreleasedReturnValue
  1000b81e8  mov     x22, x0
  1000b81ec  mov     x4, #0
  1000b81f0  adrp    x3, #0x1003bd000
  1000b81f4  add     x3, x3, #0xbb0                           ; @"UPDATE_CHALLENGE_TIME_ELAPSED"
  1000b81f8  mov     x0, x19
  1000b81fc  mov     x1, x21
  1000b8200  mov     x2, x22
  1000b8204  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_CHALLENGE_TIME_ELAPSED" object:0]
  1000b8208  mov     x0, x22
  1000b820c  bl      _objc_release
  1000b8210  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8214  mov     x1, x20
  1000b8218  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b821c  mov     x29, x29
  1000b8220  bl      _objc_retainAutoreleasedReturnValue
  1000b8224  mov     x22, x0
  1000b8228  mov     x4, #0
  1000b822c  adrp    x3, #0x1003bd000
  1000b8230  add     x3, x3, #0xb90                           ; @"BRICK_TIME_ELAPSED"
  1000b8234  mov     x0, x19
  1000b8238  mov     x1, x21
  1000b823c  mov     x2, x22
  1000b8240  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"BRICK_TIME_ELAPSED" object:0]
  1000b8244  mov     x0, x22
  1000b8248  bl      _objc_release
  1000b824c  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8250  mov     x1, x20
  1000b8254  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b8258  mov     x29, x29
  1000b825c  bl      _objc_retainAutoreleasedReturnValue
  1000b8260  mov     x22, x0
  1000b8264  mov     x4, #0
  1000b8268  adrp    x3, #0x1003bd000
  1000b826c  add     x3, x3, #0xc10                           ; @"UPDATE_KILLED_ENEMY_WITH_WEAPON"
  1000b8270  mov     x0, x19
  1000b8274  mov     x1, x21
  1000b8278  mov     x2, x22
  1000b827c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_KILLED_ENEMY_WITH_WEAPON" object:0]
  1000b8280  mov     x0, x22
  1000b8284  bl      _objc_release
  1000b8288  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b828c  mov     x1, x20
  1000b8290  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b8294  mov     x29, x29
  1000b8298  bl      _objc_retainAutoreleasedReturnValue
  1000b829c  mov     x22, x0
  1000b82a0  mov     x4, #0
  1000b82a4  adrp    x3, #0x1003bd000
  1000b82a8  add     x3, x3, #0xbd0                           ; @"UPDATE_MELEE_WEAPON_DATA"
  1000b82ac  mov     x0, x19
  1000b82b0  mov     x1, x21
  1000b82b4  mov     x2, x22
  1000b82b8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_MELEE_WEAPON_DATA" object:0]
  1000b82bc  mov     x0, x22
  1000b82c0  bl      _objc_release
  1000b82c4  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b82c8  mov     x1, x20
  1000b82cc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b82d0  mov     x29, x29
  1000b82d4  bl      _objc_retainAutoreleasedReturnValue
  1000b82d8  mov     x22, x0
  1000b82dc  mov     x4, #0
  1000b82e0  adrp    x3, #0x1003bd000
  1000b82e4  add     x3, x3, #0xc90                           ; @"PLAYER_DIED"
  1000b82e8  mov     x0, x19
  1000b82ec  mov     x1, x21
  1000b82f0  mov     x2, x22
  1000b82f4  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"PLAYER_DIED" object:0]
  1000b82f8  mov     x0, x22
  1000b82fc  bl      _objc_release
  1000b8300  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b8304  mov     x1, x20
  1000b8308  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b830c  mov     x29, x29
  1000b8310  bl      _objc_retainAutoreleasedReturnValue
  1000b8314  mov     x22, x0
  1000b8318  mov     x4, #0
  1000b831c  adrp    x3, #0x1003bd000
  1000b8320  add     x3, x3, #0xcb0                           ; @"UPDATE_DIAMONDS"
  1000b8324  mov     x0, x19
  1000b8328  mov     x1, x21
  1000b832c  mov     x2, x22
  1000b8330  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:[ADInGameStats singleton] name:@"UPDATE_DIAMONDS" object:0]
  1000b8334  mov     x0, x22
loc_1000b8338:
  1000b8338  bl      _objc_release
  1000b833c  mov     x0, x19
  1000b8340  ldp     x29, x30, [sp, #0x30]
  1000b8344  ldp     x20, x19, [sp, #0x20]
  1000b8348  ldp     x22, x21, [sp, #0x10]
  1000b834c  ldp     x24, x23, [sp], #0x40
  1000b8350  b       _objc_release
  1000b8354  mov     x20, x0
  1000b8358  b       loc_1000b83c4
  1000b835c  mov     x20, x0
  1000b8360  b       loc_1000b83c4
  1000b8364  b       loc_1000b8388
  1000b8368  b       loc_1000b8388
  1000b836c  b       loc_1000b8388
  1000b8370  b       loc_1000b8388
  1000b8374  b       loc_1000b8388
  1000b8378  b       loc_1000b8388
  1000b837c  b       loc_1000b8388
  1000b8380  b       loc_1000b8388
  1000b8384  b       loc_1000b8388
loc_1000b8388:
  1000b8388  mov     x20, x0
  1000b838c  mov     x0, x23
  1000b8390  b       loc_1000b83c0
  1000b8394  b       loc_1000b83b8
  1000b8398  b       loc_1000b83b8
  1000b839c  b       loc_1000b83b8
  1000b83a0  b       loc_1000b83b8
  1000b83a4  b       loc_1000b83b8
  1000b83a8  b       loc_1000b83b8
  1000b83ac  b       loc_1000b83b8
  1000b83b0  b       loc_1000b83b8
  1000b83b4  b       loc_1000b83b8
loc_1000b83b8:
  1000b83b8  mov     x20, x0
  1000b83bc  mov     x0, x22
loc_1000b83c0:
  1000b83c0  bl      _objc_release
loc_1000b83c4:
  1000b83c4  mov     x0, x19
  1000b83c8  bl      _objc_release
  1000b83cc  mov     x0, x20
  1000b83d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats startNewLevel:]
; address 0x1000b83d4  size 1324  kind objc
; ======================================================================
  1000b83d4  stp     x28, x27, [sp, #-0x60]!
  1000b83d8  stp     x26, x25, [sp, #0x10]
  1000b83dc  stp     x24, x23, [sp, #0x20]
  1000b83e0  stp     x22, x21, [sp, #0x30]
  1000b83e4  stp     x20, x19, [sp, #0x40]
  1000b83e8  stp     x29, x30, [sp, #0x50]
  1000b83ec  add     x29, sp, #0x50
  1000b83f0  mov     x20, x0
  1000b83f4  mov     x0, x2
  1000b83f8  bl      _objc_retain
  1000b83fc  mov     x19, x0
  1000b8400  adrp    x8, #0x10041a000
  1000b8404  nop
  1000b8408  ldr     x1, [x8, #0x7b0]
  1000b840c  mov     w2, #0
  1000b8410  mov     x0, x20
  1000b8414  bl      _objc_msgSend                            ; [self setSessionCompleted:0]
  1000b8418  adrp    x8, #0x10041a000
  1000b841c  nop
  1000b8420  ldr     x1, [x8, #0x7b8]
  1000b8424  mov     x2, #0
  1000b8428  mov     x0, x20
  1000b842c  bl      _objc_msgSend                            ; [self setNumberOfEnemyKills:0]
  1000b8430  adrp    x8, #0x100418000
  1000b8434  nop
  1000b8438  ldr     x1, [x8, #0xee8]
  1000b843c  mov     w2, #0
  1000b8440  mov     x0, x20
  1000b8444  bl      _objc_msgSend                            ; [self setDeath:0]
  1000b8448  adrp    x8, #0x10041a000
  1000b844c  nop
  1000b8450  ldr     x1, [x8, #0x7c0]
  1000b8454  mov     x2, #0
  1000b8458  mov     x0, x20
  1000b845c  bl      _objc_msgSend                            ; [self setNumberMissionsCompleted:0]
  1000b8460  adrp    x8, #0x10041a000
  1000b8464  nop
  1000b8468  ldr     x1, [x8, #0x7c8]
  1000b846c  mov     x2, #0
  1000b8470  mov     x0, x20
  1000b8474  bl      _objc_msgSend                            ; [self setNumberMissionsSkipped:0]
  1000b8478  adrp    x8, #0x10041a000
  1000b847c  nop
  1000b8480  ldr     x1, [x8, #0x7d0]
  1000b8484  mov     x0, x20
  1000b8488  mov     x2, x19
  1000b848c  bl      _objc_msgSend                            ; [self setGameMode:arg1]
  1000b8490  adrp    x8, #0x10041a000
  1000b8494  nop
  1000b8498  ldr     x1, [x8, #0x7a0]
  1000b849c  mov     x2, #0
  1000b84a0  mov     x0, x20
  1000b84a4  bl      _objc_msgSend                            ; [self setShotsOnTarget:0]
  1000b84a8  adrp    x8, #0x10041a000
  1000b84ac  nop
  1000b84b0  ldr     x1, [x8, #0x798]
  1000b84b4  mov     x2, #0
  1000b84b8  mov     x0, x20
  1000b84bc  bl      _objc_msgSend                            ; [self setTotalShotsFired:0]
  1000b84c0  adrp    x8, #0x10041a000
  1000b84c4  nop
  1000b84c8  ldr     x1, [x8, #0x7d8]
  1000b84cc  mov     x2, #0
  1000b84d0  mov     x0, x20
  1000b84d4  bl      _objc_msgSend                            ; [self setHighestCombo:0]
  1000b84d8  adrp    x8, #0x10041a000
  1000b84dc  nop
  1000b84e0  ldr     x1, [x8, #0x7e0]
  1000b84e4  mov     x2, #0
  1000b84e8  mov     x0, x20
  1000b84ec  bl      _objc_msgSend                            ; [self setGameScore:0]
  1000b84f0  adrp    x8, #0x100419000
  1000b84f4  nop
  1000b84f8  ldr     x21, [x8, #0x150]
  1000b84fc  mov     w2, #0xa
  1000b8500  mov     x0, x20
  1000b8504  mov     x1, x21
  1000b8508  bl      _objc_msgSend                            ; [self setCombo:10]
  1000b850c  adrp    x8, #0x10041e000
  1000b8510  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000b8514  adrp    x8, #0x100417000
  1000b8518  nop
  1000b851c  ldr     x1, [x8, #0x510]
  1000b8520  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000b8524  mov     x29, x29
  1000b8528  bl      _objc_retainAutoreleasedReturnValue
  1000b852c  mov     x22, x0
  1000b8530  adrp    x8, #0x10041a000
  1000b8534  nop
  1000b8538  ldr     x1, [x8, #0x7e8]
  1000b853c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] baseComboBonus]
  1000b8540  mov     x23, x0
  1000b8544  mov     x0, x22
  1000b8548  bl      _objc_release
  1000b854c  cbz     w23, loc_1000b8560                       ; if ([[ADGameModifiers sharedModifiers] baseComboBonus] == 0)
  1000b8550  mov     w2, #0x14
  1000b8554  mov     x0, x20
  1000b8558  mov     x1, x21
  1000b855c  bl      _objc_msgSend                            ; [self setCombo:20]
loc_1000b8560:
  1000b8560  adrp    x8, #0x10041a000
  1000b8564  nop
  1000b8568  ldr     x1, [x8, #0x7f0]
  1000b856c  mov     x2, #0
  1000b8570  mov     x0, x20
  1000b8574  bl      _objc_msgSend                            ; [self setMeleeHits:0]
  1000b8578  adrp    x8, #0x10041a000
  1000b857c  nop
  1000b8580  ldr     x1, [x8, #0x7f8]
  1000b8584  mov     x2, #0
  1000b8588  mov     x0, x20
  1000b858c  bl      _objc_msgSend                            ; [self setMeleeSwings:0]
  1000b8590  adrp    x8, #0x10041a000
  1000b8594  nop
  1000b8598  ldr     x1, [x8, #0x800]
  1000b859c  mov     x2, #0
  1000b85a0  mov     x0, x20
  1000b85a4  bl      _objc_msgSend                            ; [self setCoinsForKill:0]
  1000b85a8  adrp    x8, #0x100418000
  1000b85ac  nop
  1000b85b0  ldr     x1, [x8, #0xf48]
  1000b85b4  mov     x2, #0
  1000b85b8  mov     x0, x20
  1000b85bc  bl      _objc_msgSend                            ; [self setDiamondLoot:0]
  1000b85c0  adrp    x8, #0x100418000
  1000b85c4  nop
  1000b85c8  ldr     x1, [x8, #0xf00]
  1000b85cc  movi    v0.16b, #0
  1000b85d0  mov     x0, x20
  1000b85d4  bl      _objc_msgSend                            ; [self setTimeElapsed:0]
  1000b85d8  adrp    x8, #0x100418000
  1000b85dc  nop
  1000b85e0  ldr     x1, [x8, #0xf18]
  1000b85e4  movi    v0.16b, #0
  1000b85e8  mov     x0, x20
  1000b85ec  bl      _objc_msgSend                            ; [self setChallengeTimeElapsed:0]
  1000b85f0  adrp    x8, #0x100418000
  1000b85f4  nop
  1000b85f8  ldr     x1, [x8, #0xf10]
  1000b85fc  movi    v0.16b, #0
  1000b8600  mov     x0, x20
  1000b8604  bl      _objc_msgSend                            ; [self setBrickTime:0]
  1000b8608  adrp    x8, #0x10041a000
  1000b860c  nop
  1000b8610  ldr     x1, [x8, #0x808]
  1000b8614  mov     x2, #0
  1000b8618  mov     x0, x20
  1000b861c  bl      _objc_msgSend                            ; [self setNumCriticalHits:0]
  1000b8620  adrp    x23, #0x10041d000
  1000b8624  ldr     x0, [x23, #0xf90]                        ; class NSMutableDictionary
  1000b8628  adrp    x8, #0x100416000
  1000b862c  nop
  1000b8630  ldr     x21, [x8, #0xac8]
  1000b8634  mov     x1, x21
  1000b8638  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000b863c  adrp    x8, #0x100416000
  1000b8640  nop
  1000b8644  ldr     x1, [x8, #0xab8]
  1000b8648  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000b864c  mov     x22, x0
  1000b8650  adrp    x8, #0x10041a000
  1000b8654  nop
  1000b8658  ldr     x1, [x8, #0x810]
  1000b865c  mov     x0, x20
  1000b8660  mov     x2, x22
  1000b8664  bl      _objc_msgSend                            ; [self setWeaponCriticalHits:[[NSMutableDictionary alloc] init]]
  1000b8668  mov     x0, x22
  1000b866c  bl      _objc_release
  1000b8670  adrp    x8, #0x10041a000
  1000b8674  nop
  1000b8678  ldr     x1, [x8, #0x818]
  1000b867c  mov     x2, #0
  1000b8680  mov     x0, x20
  1000b8684  bl      _objc_msgSend                            ; [self setNumberOfBricksDefeated:0]
  1000b8688  adrp    x8, #0x100418000
  1000b868c  nop
  1000b8690  ldr     x1, [x8, #0x7f8]
  1000b8694  mov     x2, #0
  1000b8698  mov     x0, x20
  1000b869c  bl      _objc_msgSend                            ; [self setTotalCoins:0]
  1000b86a0  ldr     x26, [x23, #0xf90]                       ; class NSMutableDictionary
  1000b86a4  adrp    x27, #0x10041d000
  1000b86a8  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  1000b86ac  adrp    x8, #0x100416000
  1000b86b0  nop
  1000b86b4  ldr     x23, [x8, #0xb58]
  1000b86b8  mov     x1, x23
  1000b86bc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b86c0  mov     x29, x29
  1000b86c4  bl      _objc_retainAutoreleasedReturnValue
  1000b86c8  mov     x22, x0
  1000b86cc  adrp    x8, #0x100416000
  1000b86d0  nop
  1000b86d4  ldr     x24, [x8, #0xd60]
  1000b86d8  adrp    x2, #0x1003ba000
  1000b86dc  add     x2, x2, #0x50                            ; @"enemies"
  1000b86e0  adrp    x3, #0x1003b9000
  1000b86e4  add     x3, x3, #0xa70                           ; @"plist"
  1000b86e8  mov     x1, x24
  1000b86ec  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]
  1000b86f0  mov     x29, x29
  1000b86f4  bl      _objc_retainAutoreleasedReturnValue
  1000b86f8  mov     x25, x0
  1000b86fc  adrp    x8, #0x100417000
  1000b8700  nop
  1000b8704  ldr     x1, [x8, #0x258]
  1000b8708  mov     x0, x26
  1000b870c  mov     x2, x25
  1000b8710  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  1000b8714  mov     x29, x29
  1000b8718  bl      _objc_retainAutoreleasedReturnValue
  1000b871c  mov     x26, x0
  1000b8720  adrp    x8, #0x10041a000
  1000b8724  nop
  1000b8728  ldr     x1, [x8, #0x820]
  1000b872c  mov     x0, x20
  1000b8730  mov     x2, x26
  1000b8734  bl      _objc_msgSend                            ; [self setEnemyList:[NSMutableDictionary dictionaryWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]]
  1000b8738  mov     x0, x26
  1000b873c  bl      _objc_release
  1000b8740  mov     x0, x25
  1000b8744  bl      _objc_release
  1000b8748  mov     x0, x22
  1000b874c  bl      _objc_release
  1000b8750  ldr     x0, [x27, #0xee8]                        ; class NSBundle
  1000b8754  mov     x1, x23
  1000b8758  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000b875c  mov     x29, x29
  1000b8760  bl      _objc_retainAutoreleasedReturnValue
  1000b8764  mov     x23, x0
  1000b8768  adrp    x2, #0x1003bf000
  1000b876c  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000b8770  adrp    x3, #0x1003b9000
  1000b8774  add     x3, x3, #0xa70                           ; @"plist"
  1000b8778  mov     x1, x24
  1000b877c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]
  1000b8780  mov     x29, x29
  1000b8784  bl      _objc_retainAutoreleasedReturnValue
  1000b8788  mov     x22, x0
  1000b878c  mov     x0, x23
  1000b8790  bl      _objc_release
  1000b8794  adrp    x8, #0x10041d000
  1000b8798  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000b879c  mov     x1, x21
  1000b87a0  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000b87a4  adrp    x8, #0x100416000
  1000b87a8  nop
  1000b87ac  ldr     x1, [x8, #0xd68]
  1000b87b0  mov     x2, x22
  1000b87b4  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]]
  1000b87b8  mov     x21, x0
  1000b87bc  adrp    x8, #0x10041d000
  1000b87c0  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000b87c4  adrp    x8, #0x100416000
  1000b87c8  nop
  1000b87cc  ldr     x1, [x8, #0xe10]
  1000b87d0  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b87d4  mov     x29, x29
  1000b87d8  bl      _objc_retainAutoreleasedReturnValue
  1000b87dc  mov     x23, x0
  1000b87e0  adrp    x8, #0x100419000
  1000b87e4  nop
  1000b87e8  ldr     x1, [x8, #0xe58]
  1000b87ec  mov     w3, #1
  1000b87f0  mov     x2, x21
  1000b87f4  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] buildFromDictionary:[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] ClearItems:1]
  1000b87f8  mov     x29, x29
  1000b87fc  bl      _objc_retainAutoreleasedReturnValue
  1000b8800  mov     x24, x0
  1000b8804  adrp    x8, #0x10041a000
  1000b8808  nop
  1000b880c  ldr     x1, [x8, #0x828]
  1000b8810  mov     x0, x20
  1000b8814  mov     x2, x24
  1000b8818  bl      _objc_msgSend                            ; [self setWeaponsData:[[ADPersistentStats persistentStats] buildFromDictionary:[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] ClearItems:1]]
  1000b881c  mov     x0, x24
  1000b8820  bl      _objc_release
  1000b8824  mov     x0, x23
  1000b8828  bl      _objc_release
  1000b882c  adrp    x8, #0x10041d000
  1000b8830  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000b8834  adrp    x8, #0x10041a000
  1000b8838  nop
  1000b883c  ldr     x1, [x8, #0x830]
  1000b8840  mov     w2, #1
  1000b8844  bl      _objc_msgSend                            ; [ADInGameStats toggleOnOff:1]
  1000b8848  mov     x0, x21
  1000b884c  bl      _objc_release
  1000b8850  mov     x0, x22
  1000b8854  bl      _objc_release
  1000b8858  mov     x0, x19
  1000b885c  ldp     x29, x30, [sp, #0x50]
  1000b8860  ldp     x20, x19, [sp, #0x40]
  1000b8864  ldp     x22, x21, [sp, #0x30]
  1000b8868  ldp     x24, x23, [sp, #0x20]
  1000b886c  ldp     x26, x25, [sp, #0x10]
  1000b8870  ldp     x28, x27, [sp], #0x60
  1000b8874  b       _objc_release
  1000b8878  mov     x20, x0
  1000b887c  b       loc_1000b88f0
  1000b8880  b       loc_1000b8894
  1000b8884  mov     x20, x0
  1000b8888  b       loc_1000b88e0
  1000b888c  b       loc_1000b8894
  1000b8890  b       loc_1000b8894
loc_1000b8894:
  1000b8894  mov     x20, x0
  1000b8898  b       loc_1000b88e8
  1000b889c  mov     x20, x0
  1000b88a0  b       loc_1000b88b0
  1000b88a4  mov     x20, x0
  1000b88a8  mov     x0, x26
  1000b88ac  bl      _objc_release
loc_1000b88b0:
  1000b88b0  mov     x0, x25
  1000b88b4  b       loc_1000b88e4
  1000b88b8  mov     x20, x0
  1000b88bc  mov     x0, x23
  1000b88c0  b       loc_1000b88ec
  1000b88c4  mov     x20, x0
  1000b88c8  b       loc_1000b88d8
  1000b88cc  mov     x20, x0
  1000b88d0  mov     x0, x24
  1000b88d4  bl      _objc_release
loc_1000b88d8:
  1000b88d8  mov     x0, x23
  1000b88dc  bl      _objc_release
loc_1000b88e0:
  1000b88e0  mov     x0, x21
loc_1000b88e4:
  1000b88e4  bl      _objc_release
loc_1000b88e8:
  1000b88e8  mov     x0, x22
loc_1000b88ec:
  1000b88ec  bl      _objc_release
loc_1000b88f0:
  1000b88f0  mov     x0, x19
  1000b88f4  bl      _objc_release
  1000b88f8  mov     x0, x20
  1000b88fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats saveGameSessionStats]
; address 0x1000b8900  size 240  kind objc
; ======================================================================
  1000b8900  stp     x22, x21, [sp, #-0x30]!
  1000b8904  stp     x20, x19, [sp, #0x10]
  1000b8908  stp     x29, x30, [sp, #0x20]
  1000b890c  add     x29, sp, #0x20
  1000b8910  adrp    x22, #0x10041d000
  1000b8914  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  1000b8918  adrp    x8, #0x100416000
  1000b891c  nop
  1000b8920  ldr     x20, [x8, #0xd98]
  1000b8924  mov     x1, x20
  1000b8928  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000b892c  mov     x29, x29
  1000b8930  bl      _objc_retainAutoreleasedReturnValue
  1000b8934  mov     x19, x0
  1000b8938  adrp    x8, #0x10041d000
  1000b893c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000b8940  adrp    x8, #0x100417000
  1000b8944  nop
  1000b8948  ldr     x1, [x8, #0x228]
  1000b894c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b8950  mov     x29, x29
  1000b8954  bl      _objc_retainAutoreleasedReturnValue
  1000b8958  mov     x21, x0
  1000b895c  adrp    x8, #0x100416000
  1000b8960  nop
  1000b8964  ldr     x1, [x8, #0xdc8]
  1000b8968  adrp    x3, #0x1003c1000
  1000b896c  add     x3, x3, #0x890                           ; @"GAME_SESSION"
  1000b8970  mov     x0, x19
  1000b8974  mov     x2, x21
  1000b8978  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[ADInGameStats singleton] forKey:@"GAME_SESSION"]
  1000b897c  mov     x0, x21
  1000b8980  bl      _objc_release
  1000b8984  mov     x0, x19
  1000b8988  bl      _objc_release
  1000b898c  ldr     x0, [x22, #0xf38]                        ; class NSUserDefaults
  1000b8990  mov     x1, x20
  1000b8994  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000b8998  mov     x29, x29
  1000b899c  bl      _objc_retainAutoreleasedReturnValue
  1000b89a0  mov     x19, x0
  1000b89a4  adrp    x8, #0x100416000
  1000b89a8  nop
  1000b89ac  ldr     x1, [x8, #0xdd8]
  1000b89b0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  1000b89b4  mov     x0, x19
  1000b89b8  ldp     x29, x30, [sp, #0x20]
  1000b89bc  ldp     x20, x19, [sp, #0x10]
  1000b89c0  ldp     x22, x21, [sp], #0x30
  1000b89c4  b       _objc_release
  1000b89c8  b       loc_1000b89dc
  1000b89cc  mov     x20, x0
  1000b89d0  mov     x0, x21
  1000b89d4  bl      _objc_release
  1000b89d8  b       loc_1000b89e0
loc_1000b89dc:
  1000b89dc  mov     x20, x0
loc_1000b89e0:
  1000b89e0  mov     x0, x19
  1000b89e4  bl      _objc_release
  1000b89e8  mov     x0, x20
  1000b89ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats endLevel]
; address 0x1000b89f0  size 540  kind objc
; ======================================================================
  1000b89f0  stp     d9, d8, [sp, #-0x40]!
  1000b89f4  stp     x22, x21, [sp, #0x10]
  1000b89f8  stp     x20, x19, [sp, #0x20]
  1000b89fc  stp     x29, x30, [sp, #0x30]
  1000b8a00  add     x29, sp, #0x30
  1000b8a04  mov     x19, x0
  1000b8a08  adrp    x8, #0x10041a000
  1000b8a0c  nop
  1000b8a10  ldr     x1, [x8, #0x7b0]
  1000b8a14  mov     w2, #1
  1000b8a18  bl      _objc_msgSend                            ; [self setSessionCompleted:1]
  1000b8a1c  adrp    x8, #0x10041a000
  1000b8a20  nop
  1000b8a24  ldr     x1, [x8, #0x838]
  1000b8a28  mov     x0, x19
  1000b8a2c  bl      _objc_msgSend                            ; [self filterEnemiesByDisplayName]
  1000b8a30  adrp    x8, #0x10041a000
  1000b8a34  nop
  1000b8a38  ldr     x1, [x8, #0x840]
  1000b8a3c  mov     x0, x19
  1000b8a40  bl      _objc_msgSend                            ; [self filterWeaponsByShotsFired]
  1000b8a44  adrp    x8, #0x10041a000
  1000b8a48  nop
  1000b8a4c  ldr     x1, [x8, #0x848]
  1000b8a50  mov     x0, x19
  1000b8a54  bl      _objc_msgSend                            ; [self buildMiscPostGameDataDictionary]
  1000b8a58  adrp    x8, #0x10041a000
  1000b8a5c  nop
  1000b8a60  ldr     x20, [x8, #0x850]
  1000b8a64  mov     x0, x19
  1000b8a68  mov     x1, x20
  1000b8a6c  bl      _objc_msgSend                            ; [self coinsForKill]
  1000b8a70  cbz     x0, loc_1000b8b4c                        ; if ([self coinsForKill] == 0)
  1000b8a74  mov     x0, x19
  1000b8a78  mov     x1, x20
  1000b8a7c  bl      _objc_msgSend                            ; [self coinsForKill]
  1000b8a80  mov     x20, x0
  1000b8a84  adrp    x8, #0x100417000
  1000b8a88  nop
  1000b8a8c  ldr     x21, [x8, #0xdb0]
  1000b8a90  mov     x0, x19
  1000b8a94  mov     x1, x21
  1000b8a98  bl      _objc_msgSend                            ; [self totalCoins]
  1000b8a9c  add     x2, x0, x20
  1000b8aa0  adrp    x8, #0x100418000
  1000b8aa4  nop
  1000b8aa8  ldr     x20, [x8, #0x7f8]
  1000b8aac  mov     x0, x19
  1000b8ab0  mov     x1, x20
  1000b8ab4  bl      _objc_msgSend                            ; [self setTotalCoins:([self totalCoins] + [self coinsForKill])]
  1000b8ab8  adrp    x8, #0x100418000
  1000b8abc  nop
  1000b8ac0  ldr     x1, [x8, #0x798]
  1000b8ac4  mov     x0, x19
  1000b8ac8  bl      _objc_msgSend                            ; [self highestCombo]
  1000b8acc  mov     x22, x0
  1000b8ad0  mov     x0, x19
  1000b8ad4  mov     x1, x21
  1000b8ad8  bl      _objc_msgSend                            ; [self totalCoins]
  1000b8adc  add     x2, x0, x22
  1000b8ae0  mov     x0, x19
  1000b8ae4  mov     x1, x20
  1000b8ae8  bl      _objc_msgSend                            ; [self setTotalCoins:([self totalCoins] + [self highestCombo])]
  1000b8aec  adrp    x8, #0x100417000
  1000b8af0  nop
  1000b8af4  ldr     x1, [x8, #0xdc0]
  1000b8af8  mov     x0, x19
  1000b8afc  bl      _objc_msgSend                            ; [self timeElapsed]
  1000b8b00  fmul    d0, d0, d0
  1000b8b04  nop
  1000b8b08  ldr     d1, #0x100181c00                         ; d1 = 200.0
  1000b8b0c  adrp    x8, #0x100417000
  1000b8b10  nop
  1000b8b14  ldr     x1, [x8, #0xdc8]
  1000b8b18  fdiv    d8, d0, d1
  1000b8b1c  mov     x0, x19
  1000b8b20  bl      _objc_msgSend                            ; [self currentAccuracy]
  1000b8b24  fcvt    d0, s0
  1000b8b28  fmul    d0, d8, d0
  1000b8b2c  fcvtzs  w22, d0
  1000b8b30  mov     x0, x19
  1000b8b34  mov     x1, x21
  1000b8b38  bl      _objc_msgSend                            ; [self totalCoins]
  1000b8b3c  add     x2, x0, w22, sxtw                        ; t1 = ([self totalCoins] + (int)((([self timeElapsed] * [self timeElapsed]) / 200) * [self currentAccuracy]))
  1000b8b40  mov     x0, x19
  1000b8b44  mov     x1, x20
  1000b8b48  bl      _objc_msgSend                            ; [self setTotalCoins:t1]
loc_1000b8b4c:
  1000b8b4c  adrp    x8, #0x10041e000
  1000b8b50  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000b8b54  adrp    x8, #0x100417000
  1000b8b58  nop
  1000b8b5c  ldr     x1, [x8, #0x510]
  1000b8b60  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000b8b64  mov     x29, x29
  1000b8b68  bl      _objc_retainAutoreleasedReturnValue
  1000b8b6c  mov     x20, x0
  1000b8b70  adrp    x8, #0x10041a000
  1000b8b74  nop
  1000b8b78  ldr     x1, [x8, #0x858]
  1000b8b7c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] metalDetector]
  1000b8b80  mov     x21, x0
  1000b8b84  mov     x0, x20
  1000b8b88  bl      _objc_release
  1000b8b8c  cbz     w21, loc_1000b8bcc                       ; if ([[ADGameModifiers sharedModifiers] metalDetector] == 0)
  1000b8b90  adrp    x8, #0x100417000
  1000b8b94  nop
  1000b8b98  ldr     x1, [x8, #0xdb0]
  1000b8b9c  mov     x0, x19
  1000b8ba0  bl      _objc_msgSend                            ; [self totalCoins]
  1000b8ba4  ucvtf   d0, x0
  1000b8ba8  nop
  1000b8bac  ldr     d1, #0x100181d68                         ; d1 = 1.15
  1000b8bb0  fmul    d0, d0, d1
  1000b8bb4  fcvtzu  x2, d0
  1000b8bb8  adrp    x8, #0x100418000
  1000b8bbc  nop
  1000b8bc0  ldr     x1, [x8, #0x7f8]
  1000b8bc4  mov     x0, x19
  1000b8bc8  bl      _objc_msgSend                            ; [self setTotalCoins:(uint)((float)[self totalCoins] * 1.15)]
loc_1000b8bcc:
  1000b8bcc  mov     w2, #0
  1000b8bd0  adrp    x8, #0x10041d000
  1000b8bd4  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000b8bd8  adrp    x8, #0x10041a000
  1000b8bdc  nop
  1000b8be0  ldr     x1, [x8, #0x830]
  1000b8be4  ldp     x29, x30, [sp, #0x30]
  1000b8be8  ldp     x20, x19, [sp, #0x20]
  1000b8bec  ldp     x22, x21, [sp, #0x10]
  1000b8bf0  ldp     d9, d8, [sp], #0x40
  1000b8bf4  b       _objc_msgSend                            ; [ADInGameStats toggleOnOff:0]
  1000b8bf8  mov     x19, x0
  1000b8bfc  mov     x0, x20
  1000b8c00  bl      _objc_release
  1000b8c04  mov     x0, x19
  1000b8c08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats saveStats]
; address 0x1000b8c0c  size 836  kind objc
; ======================================================================
  1000b8c0c  stp     d9, d8, [sp, #-0x50]!
  1000b8c10  stp     x24, x23, [sp, #0x10]
  1000b8c14  stp     x22, x21, [sp, #0x20]
  1000b8c18  stp     x20, x19, [sp, #0x30]
  1000b8c1c  stp     x29, x30, [sp, #0x40]
  1000b8c20  add     x29, sp, #0x40
  1000b8c24  mov     x19, x0
  1000b8c28  adrp    x8, #0x10041a000
  1000b8c2c  nop
  1000b8c30  ldr     x1, [x8, #0x860]
  1000b8c34  bl      _objc_msgSend                            ; [self death]
  1000b8c38  cbz     w0, loc_1000b8c78                        ; if ([self death] == 0)
  1000b8c3c  adrp    x8, #0x10041d000
  1000b8c40  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  1000b8c44  adrp    x8, #0x100416000
  1000b8c48  nop
  1000b8c4c  ldr     x1, [x8, #0xe10]
  1000b8c50  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b8c54  mov     x29, x29
  1000b8c58  bl      _objc_retainAutoreleasedReturnValue
  1000b8c5c  mov     x20, x0
  1000b8c60  adrp    x8, #0x10041a000
  1000b8c64  nop
  1000b8c68  ldr     x1, [x8, #0x868]
  1000b8c6c  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] updateDeaths]
  1000b8c70  mov     x0, x20
  1000b8c74  bl      _objc_release
loc_1000b8c78:
  1000b8c78  adrp    x24, #0x10041d000
  1000b8c7c  ldr     x0, [x24, #0xf58]                        ; class ADPersistentStats
  1000b8c80  adrp    x8, #0x100416000
  1000b8c84  nop
  1000b8c88  ldr     x20, [x8, #0xe10]
  1000b8c8c  mov     x1, x20
  1000b8c90  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b8c94  mov     x29, x29
  1000b8c98  bl      _objc_retainAutoreleasedReturnValue
  1000b8c9c  mov     x21, x0
  1000b8ca0  adrp    x8, #0x10041a000
  1000b8ca4  nop
  1000b8ca8  ldr     x1, [x8, #0x870]
  1000b8cac  mov     x0, x19
  1000b8cb0  bl      _objc_msgSend                            ; [self enemyList]
  1000b8cb4  mov     x29, x29
  1000b8cb8  bl      _objc_retainAutoreleasedReturnValue
  1000b8cbc  mov     x22, x0
  1000b8cc0  adrp    x8, #0x10041a000
  1000b8cc4  nop
  1000b8cc8  ldr     x1, [x8, #0x878]
  1000b8ccc  mov     x0, x21
  1000b8cd0  mov     x2, x22
  1000b8cd4  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveEnemyData:[self enemyList]]
  1000b8cd8  mov     x0, x22
  1000b8cdc  bl      _objc_release
  1000b8ce0  mov     x0, x21
  1000b8ce4  bl      _objc_release
  1000b8ce8  ldr     x0, [x24, #0xf58]                        ; class ADPersistentStats
  1000b8cec  mov     x1, x20
  1000b8cf0  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b8cf4  mov     x29, x29
  1000b8cf8  bl      _objc_retainAutoreleasedReturnValue
  1000b8cfc  mov     x22, x0
  1000b8d00  adrp    x8, #0x100417000
  1000b8d04  nop
  1000b8d08  ldr     x1, [x8, #0xdc0]
  1000b8d0c  mov     x0, x19
  1000b8d10  bl      _objc_msgSend                            ; [self timeElapsed]
  1000b8d14  mov     v8.16b, v0.16b
  1000b8d18  adrp    x8, #0x100418000
  1000b8d1c  nop
  1000b8d20  ldr     x21, [x8, #0xf80]
  1000b8d24  mov     x0, x19
  1000b8d28  mov     x1, x21
  1000b8d2c  bl      _objc_msgSend                            ; [self gameMode]
  1000b8d30  mov     x29, x29
  1000b8d34  bl      _objc_retainAutoreleasedReturnValue
  1000b8d38  mov     x23, x0
  1000b8d3c  adrp    x8, #0x10041a000
  1000b8d40  nop
  1000b8d44  ldr     x1, [x8, #0x880]
  1000b8d48  mov     x0, x22
  1000b8d4c  mov     v0.16b, v8.16b
  1000b8d50  mov     x2, x23
  1000b8d54  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] savePlayTimeData:[self timeElapsed] AndMode:[self gameMode]]
  1000b8d58  mov     x0, x23
  1000b8d5c  bl      _objc_release
  1000b8d60  mov     x0, x22
  1000b8d64  bl      _objc_release
  1000b8d68  ldr     x0, [x24, #0xf58]                        ; class ADPersistentStats
  1000b8d6c  mov     x1, x20
  1000b8d70  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b8d74  mov     x29, x29
  1000b8d78  bl      _objc_retainAutoreleasedReturnValue
  1000b8d7c  mov     x22, x0
  1000b8d80  adrp    x8, #0x10041a000
  1000b8d84  nop
  1000b8d88  ldr     x1, [x8, #0x888]
  1000b8d8c  mov     x0, x19
  1000b8d90  bl      _objc_msgSend                            ; [self prepareTotalsStats]
  1000b8d94  mov     x29, x29
  1000b8d98  bl      _objc_retainAutoreleasedReturnValue
  1000b8d9c  mov     x23, x0
  1000b8da0  adrp    x8, #0x10041a000
  1000b8da4  nop
  1000b8da8  ldr     x1, [x8, #0x890]
  1000b8dac  mov     x0, x22
  1000b8db0  mov     x2, x23
  1000b8db4  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveShotsData:[self prepareTotalsStats]]
  1000b8db8  mov     x0, x23
  1000b8dbc  bl      _objc_release
  1000b8dc0  mov     x0, x22
  1000b8dc4  bl      _objc_release
  1000b8dc8  ldr     x0, [x24, #0xf58]                        ; class ADPersistentStats
  1000b8dcc  mov     x1, x20
  1000b8dd0  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b8dd4  mov     x29, x29
  1000b8dd8  bl      _objc_retainAutoreleasedReturnValue
  1000b8ddc  mov     x22, x0
  1000b8de0  adrp    x8, #0x10041a000
  1000b8de4  nop
  1000b8de8  ldr     x1, [x8, #0x898]
  1000b8dec  mov     x0, x19
  1000b8df0  bl      _objc_msgSend                            ; [self weaponsData]
  1000b8df4  mov     x29, x29
  1000b8df8  bl      _objc_retainAutoreleasedReturnValue
  1000b8dfc  mov     x23, x0
  1000b8e00  adrp    x8, #0x10041a000
  1000b8e04  nop
  1000b8e08  ldr     x1, [x8, #0x8a0]
  1000b8e0c  mov     x0, x22
  1000b8e10  mov     x2, x23
  1000b8e14  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveWeaponsData:[self weaponsData]]
  1000b8e18  mov     x0, x23
  1000b8e1c  bl      _objc_release
  1000b8e20  mov     x0, x22
  1000b8e24  bl      _objc_release
  1000b8e28  mov     x0, x19
  1000b8e2c  mov     x1, x21
  1000b8e30  bl      _objc_msgSend                            ; [self gameMode]
  1000b8e34  mov     x29, x29
  1000b8e38  bl      _objc_retainAutoreleasedReturnValue
  1000b8e3c  mov     x21, x0
  1000b8e40  adrp    x8, #0x100416000
  1000b8e44  nop
  1000b8e48  ldr     x1, [x8, #0xf58]
  1000b8e4c  adrp    x2, #0x1003bd000
  1000b8e50  add     x2, x2, #0xd30                           ; @"ENDLESS"
  1000b8e54  bl      _objc_msgSend                            ; [[self gameMode] isEqualToString:@"ENDLESS"]
  1000b8e58  mov     x22, x0
  1000b8e5c  mov     x0, x21
  1000b8e60  bl      _objc_release
  1000b8e64  cbz     w22, loc_1000b8ec8                       ; if ([[self gameMode] isEqualToString:@"ENDLESS"] == 0)
  1000b8e68  ldr     x0, [x24, #0xf58]                        ; class ADPersistentStats
  1000b8e6c  mov     x1, x20
  1000b8e70  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000b8e74  mov     x29, x29
  1000b8e78  bl      _objc_retainAutoreleasedReturnValue
  1000b8e7c  mov     x20, x0
  1000b8e80  adrp    x8, #0x100417000
  1000b8e84  nop
  1000b8e88  ldr     x1, [x8, #0xda8]
  1000b8e8c  mov     x0, x19
  1000b8e90  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000b8e94  mov     x2, x0
  1000b8e98  adrp    x8, #0x10041a000
  1000b8e9c  nop
  1000b8ea0  ldr     x1, [x8, #0x8a8]
  1000b8ea4  mov     x0, x20
  1000b8ea8  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] saveEndlessModeKills:[self numberOfEnemyKills]]
  1000b8eac  mov     x0, x20
  1000b8eb0  ldp     x29, x30, [sp, #0x40]
  1000b8eb4  ldp     x20, x19, [sp, #0x30]
  1000b8eb8  ldp     x22, x21, [sp, #0x20]
  1000b8ebc  ldp     x24, x23, [sp, #0x10]
  1000b8ec0  ldp     d9, d8, [sp], #0x50
  1000b8ec4  b       _objc_release
loc_1000b8ec8:
  1000b8ec8  ldp     x29, x30, [sp, #0x40]
  1000b8ecc  ldp     x20, x19, [sp, #0x30]
  1000b8ed0  ldp     x22, x21, [sp, #0x20]
  1000b8ed4  ldp     x24, x23, [sp, #0x10]
  1000b8ed8  ldp     d9, d8, [sp], #0x50
  1000b8edc  ret
  1000b8ee0  mov     x19, x0
  1000b8ee4  b       loc_1000b8f24
  1000b8ee8  mov     x19, x0
  1000b8eec  b       loc_1000b8f30
  1000b8ef0  mov     x19, x0
  1000b8ef4  mov     x0, x22
  1000b8ef8  bl      _objc_release
  1000b8efc  b       loc_1000b8f30
  1000b8f00  b       loc_1000b8f18
  1000b8f04  mov     x19, x0
  1000b8f08  b       loc_1000b8f24
  1000b8f0c  b       loc_1000b8f18
  1000b8f10  mov     x19, x0
  1000b8f14  b       loc_1000b8f24
loc_1000b8f18:
  1000b8f18  mov     x19, x0
  1000b8f1c  mov     x0, x23
  1000b8f20  bl      _objc_release
loc_1000b8f24:
  1000b8f24  mov     x0, x22
  1000b8f28  b       loc_1000b8f44
  1000b8f2c  mov     x19, x0
loc_1000b8f30:
  1000b8f30  mov     x0, x21
  1000b8f34  b       loc_1000b8f44
  1000b8f38  b       loc_1000b8f3c
loc_1000b8f3c:
  1000b8f3c  mov     x19, x0
  1000b8f40  mov     x0, x20
loc_1000b8f44:
  1000b8f44  bl      _objc_release
  1000b8f48  mov     x0, x19
  1000b8f4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats filterEnemiesByDisplayName]
; address 0x1000b8f50  size 1736  kind objc
; ======================================================================
  1000b8f50  stp     x28, x27, [sp, #-0x60]!
  1000b8f54  stp     x26, x25, [sp, #0x10]
  1000b8f58  stp     x24, x23, [sp, #0x20]
  1000b8f5c  stp     x22, x21, [sp, #0x30]
  1000b8f60  stp     x20, x19, [sp, #0x40]
  1000b8f64  stp     x29, x30, [sp, #0x50]
  1000b8f68  add     x29, sp, #0x50
  1000b8f6c  sub     sp, sp, #0x180
  1000b8f70  mov     x24, x0
  1000b8f74  adrp    x8, #0x1003b0000
  1000b8f78  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000b8f7c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000b8f80  stur    x8, [x29, #-0x58]
  1000b8f84  adrp    x8, #0x10041d000
  1000b8f88  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000b8f8c  adrp    x8, #0x100416000
  1000b8f90  nop
  1000b8f94  ldr     x1, [x8, #0xac8]
  1000b8f98  str     x1, [sp, #0x48]
  1000b8f9c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000b8fa0  adrp    x8, #0x100416000
  1000b8fa4  nop
  1000b8fa8  ldr     x1, [x8, #0xab8]
  1000b8fac  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000b8fb0  str     x0, [sp, #0xb0]
  1000b8fb4  stp     xzr, xzr, [sp, #0xe8]
  1000b8fb8  stp     xzr, xzr, [sp, #0xd8]
  1000b8fbc  stp     xzr, xzr, [sp, #0xc8]
  1000b8fc0  stp     xzr, xzr, [sp, #0xb8]
  1000b8fc4  adrp    x8, #0x10041a000
  1000b8fc8  nop
  1000b8fcc  ldr     x1, [x8, #0x870]
  1000b8fd0  str     x1, [sp, #0x98]
  1000b8fd4  mov     x0, x24
  1000b8fd8  bl      _objc_msgSend                            ; [self enemyList]
  1000b8fdc  mov     x29, x29
  1000b8fe0  bl      _objc_retainAutoreleasedReturnValue
  1000b8fe4  mov     x19, x0
  1000b8fe8  adrp    x8, #0x100417000
  1000b8fec  nop
  1000b8ff0  ldr     x1, [x8, #0x248]
  1000b8ff4  str     x1, [sp, #0x70]
  1000b8ff8  bl      _objc_msgSend                            ; [[self enemyList] allKeys]
  1000b8ffc  mov     x29, x29
  1000b9000  bl      _objc_retainAutoreleasedReturnValue
  1000b9004  mov     x20, x0
  1000b9008  str     x20, [sp, #0x50]
  1000b900c  mov     x0, x19
  1000b9010  bl      _objc_release
  1000b9014  adrp    x8, #0x100416000
  1000b9018  nop
  1000b901c  ldr     x1, [x8, #0xe00]
  1000b9020  str     x1, [sp, #0x38]
  1000b9024  add     x2, sp, #0xb8
  1000b9028  sub     x3, x29, #0xd8
  1000b902c  mov     w4, #0x10
  1000b9030  mov     x0, x20
  1000b9034  bl      _objc_msgSend                            ; [[[self enemyList] allKeys] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16]
  1000b9038  mov     x26, x0
  1000b903c  cbz     x26, loc_1000b9474                       ; if ([[[self enemyList] allKeys] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16] == 0)
  1000b9040  adrp    x8, #0x100417000
  1000b9044  nop
  1000b9048  adrp    x9, #0x100419000
  1000b904c  add     x9, x9, #0x198                           ; &@selector(dictionaryForEnemyName:)
  1000b9050  ldr     x10, [sp, #0xc8]
  1000b9054  adrp    x11, #0x100417000
  1000b9058  add     x11, x11, #0x40                          ; &@selector(objectForKey:)
  1000b905c  ldr     x8, [x8, #0xaa8]
  1000b9060  str     x8, [sp, #0x88]
  1000b9064  ldr     x8, [x9]
  1000b9068  str     x8, [sp, #0x80]
  1000b906c  ldr     x8, [x10]
  1000b9070  str     x8, [sp, #0x90]
  1000b9074  ldr     x28, [x11]
  1000b9078  adrp    x8, #0x100417000
  1000b907c  nop
  1000b9080  ldr     x8, [x8, #0x280]
  1000b9084  str     x8, [sp, #0x68]
  1000b9088  adrp    x8, #0x100417000
  1000b908c  nop
  1000b9090  ldr     x8, [x8, #0x110]
  1000b9094  str     x8, [sp, #0xa8]
  1000b9098  adrp    x8, #0x100416000
  1000b909c  nop
  1000b90a0  ldr     x8, [x8, #0xec0]
  1000b90a4  str     x8, [sp, #0x60]
  1000b90a8  adrp    x8, #0x100416000
  1000b90ac  nop
  1000b90b0  ldr     x8, [x8, #0xdc8]
  1000b90b4  str     x8, [sp, #0x78]
  1000b90b8  adrp    x8, #0x100419000
  1000b90bc  nop
  1000b90c0  ldr     x8, [x8, #0x510]
  1000b90c4  str     x8, [sp, #0x40]
loc_1000b90c8:
  1000b90c8  mov     x27, #0
loc_1000b90cc:
  1000b90cc  ldr     x8, [sp, #0xc8]
  1000b90d0  ldr     x8, [x8]
  1000b90d4  ldr     x9, [sp, #0x90]
  1000b90d8  cmp     x8, x9
  1000b90dc  b.eq    loc_1000b90e8                            ; if (x8 == x9)
  1000b90e0  ldr     x0, [sp, #0x50]
  1000b90e4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self enemyList] allKeys])
loc_1000b90e8:
  1000b90e8  ldr     x8, [sp, #0xc0]
  1000b90ec  ldr     x19, [x8, x27, lsl #3]
  1000b90f0  adrp    x8, #0x10041e000
  1000b90f4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000b90f8  ldr     x1, [sp, #0x88]
  1000b90fc  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b9100  mov     x29, x29
  1000b9104  bl      _objc_retainAutoreleasedReturnValue
  1000b9108  mov     x20, x0
  1000b910c  ldr     x1, [sp, #0x80]
  1000b9110  mov     x2, x19
  1000b9114  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2]
  1000b9118  mov     x29, x29
  1000b911c  bl      _objc_retainAutoreleasedReturnValue
  1000b9120  mov     x25, x0
  1000b9124  mov     x0, x20
  1000b9128  bl      _objc_release
  1000b912c  mov     x0, x24
  1000b9130  ldr     x1, [sp, #0x98]
  1000b9134  bl      _objc_msgSend                            ; [self enemyList]
  1000b9138  mov     x29, x29
  1000b913c  bl      _objc_retainAutoreleasedReturnValue
  1000b9140  mov     x20, x0
  1000b9144  mov     x1, x28
  1000b9148  mov     x2, x19
  1000b914c  bl      _objc_msgSend                            ; [[self enemyList] objectForKey:x2]
  1000b9150  mov     x29, x29
  1000b9154  bl      _objc_retainAutoreleasedReturnValue
  1000b9158  mov     x19, x0
  1000b915c  mov     x0, x20
  1000b9160  bl      _objc_release
  1000b9164  mov     x0, x25
  1000b9168  mov     x1, x28
  1000b916c  adrp    x2, #0x1003ba000
  1000b9170  add     x2, x2, #0x2b0                           ; @"displayName"
  1000b9174  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]
  1000b9178  mov     x29, x29
  1000b917c  bl      _objc_retainAutoreleasedReturnValue
  1000b9180  mov     x21, x0
  1000b9184  cbz     x21, loc_1000b9430                       ; if ([[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"] == 0)
  1000b9188  ldr     x0, [sp, #0xb0]
  1000b918c  ldr     x1, [sp, #0x70]
  1000b9190  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] allKeys]
  1000b9194  mov     x29, x29
  1000b9198  bl      _objc_retainAutoreleasedReturnValue
  1000b919c  mov     x20, x0
  1000b91a0  ldr     x1, [sp, #0x68]
  1000b91a4  mov     x2, x21
  1000b91a8  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] init] allKeys] containsObject:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]]
  1000b91ac  mov     x23, x0
  1000b91b0  mov     x0, x20
  1000b91b4  bl      _objc_release
  1000b91b8  tbz     w23, #0, loc_1000b9360                   ; if (!([[[[NSMutableDictionary alloc] init] allKeys] containsObject:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] & 1))
  1000b91bc  ldr     x0, [sp, #0xb0]
  1000b91c0  mov     x1, x28
  1000b91c4  mov     x2, x21
  1000b91c8  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]]
  1000b91cc  str     x21, [sp, #0xa0]
  1000b91d0  str     x25, [sp, #0x58]
  1000b91d4  mov     x29, x29
  1000b91d8  bl      _objc_retainAutoreleasedReturnValue
  1000b91dc  mov     x23, x0
  1000b91e0  mov     x0, x19
  1000b91e4  mov     x1, x28
  1000b91e8  mov     x21, x28
  1000b91ec  adrp    x2, #0x1003ba000
  1000b91f0  add     x2, x2, #0x1d0                           ; @"Killed"
  1000b91f4  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:x2] objectForKey:@"Killed"]
  1000b91f8  mov     x29, x29
  1000b91fc  bl      _objc_retainAutoreleasedReturnValue
  1000b9200  mov     x20, x0
  1000b9204  ldr     x1, [sp, #0xa8]
  1000b9208  bl      _objc_msgSend                            ; [[[[self enemyList] objectForKey:x2] objectForKey:@"Killed"] intValue]
  1000b920c  mov     x28, x0
  1000b9210  mov     x0, x23
  1000b9214  mov     x1, x21
  1000b9218  adrp    x2, #0x1003ba000
  1000b921c  add     x2, x2, #0x1d0                           ; @"Killed"
  1000b9220  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] objectForKey:@"Killed"]
  1000b9224  mov     x22, x26
  1000b9228  mov     x29, x29
  1000b922c  bl      _objc_retainAutoreleasedReturnValue
  1000b9230  mov     x26, x0
  1000b9234  ldr     x1, [sp, #0xa8]
  1000b9238  bl      _objc_msgSend                            ; [[[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] objectForKey:@"Killed"] intValue]
  1000b923c  add     w28, w0, w28                             ; t1 = ([[[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] objectForKey:@"Killed"] intValue] + [[[[self enemyList] objectForKey:x2] objectForKey:@"Killed"] intValue])
  1000b9240  mov     x0, x26
  1000b9244  bl      _objc_release
  1000b9248  mov     x0, x20
  1000b924c  bl      _objc_release
  1000b9250  adrp    x8, #0x10041d000
  1000b9254  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000b9258  ldr     x1, [sp, #0x60]
  1000b925c  mov     x2, x28
  1000b9260  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  1000b9264  mov     x29, x29
  1000b9268  bl      _objc_retainAutoreleasedReturnValue
  1000b926c  mov     x20, x0
  1000b9270  mov     x0, x23
  1000b9274  ldr     x1, [sp, #0x78]
  1000b9278  mov     x2, x20
  1000b927c  adrp    x3, #0x1003ba000
  1000b9280  add     x3, x3, #0x1d0                           ; @"Killed"
  1000b9284  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] setObject:[NSNumber numberWithInt:t1] forKey:@"Killed"]
  1000b9288  mov     x0, x20
  1000b928c  bl      _objc_release
  1000b9290  mov     x0, x19
  1000b9294  mov     x1, x21
  1000b9298  adrp    x2, #0x1003bf000
  1000b929c  add     x2, x2, #0x470                           ; @"Casualty"
  1000b92a0  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:x2] objectForKey:@"Casualty"]
  1000b92a4  mov     x29, x29
  1000b92a8  bl      _objc_retainAutoreleasedReturnValue
  1000b92ac  mov     x20, x0
  1000b92b0  ldr     x1, [sp, #0xa8]
  1000b92b4  bl      _objc_msgSend                            ; [[[[self enemyList] objectForKey:x2] objectForKey:@"Casualty"] intValue]
  1000b92b8  mov     x28, x0
  1000b92bc  mov     x0, x23
  1000b92c0  mov     x1, x21
  1000b92c4  adrp    x2, #0x1003bf000
  1000b92c8  add     x2, x2, #0x470                           ; @"Casualty"
  1000b92cc  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] objectForKey:@"Casualty"]
  1000b92d0  mov     x25, x22
  1000b92d4  mov     x22, x24
  1000b92d8  mov     x29, x29
  1000b92dc  bl      _objc_retainAutoreleasedReturnValue
  1000b92e0  mov     x26, x0
  1000b92e4  ldr     x1, [sp, #0xa8]
  1000b92e8  bl      _objc_msgSend                            ; [[[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] objectForKey:@"Casualty"] intValue]
  1000b92ec  add     w28, w0, w28                             ; t2 = ([[[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] objectForKey:@"Casualty"] intValue] + [[[[self enemyList] objectForKey:x2] objectForKey:@"Casualty"] intValue])
  1000b92f0  mov     x0, x26
  1000b92f4  bl      _objc_release
  1000b92f8  mov     x0, x20
  1000b92fc  bl      _objc_release
  1000b9300  adrp    x8, #0x10041d000
  1000b9304  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000b9308  ldr     x1, [sp, #0x60]
  1000b930c  mov     x2, x28
  1000b9310  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t2]
  1000b9314  mov     x24, x22
  1000b9318  mov     x26, x25
  1000b931c  mov     x29, x29
  1000b9320  bl      _objc_retainAutoreleasedReturnValue
  1000b9324  mov     x20, x0
  1000b9328  mov     x0, x23
  1000b932c  ldr     x1, [sp, #0x78]
  1000b9330  mov     x2, x20
  1000b9334  adrp    x3, #0x1003bf000
  1000b9338  add     x3, x3, #0x470                           ; @"Casualty"
  1000b933c  bl      _objc_msgSend                            ; [[[[NSMutableDictionary alloc] init] objectForKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]] setObject:[NSNumber numberWithInt:t2] forKey:@"Casualty"]
  1000b9340  mov     x0, x20
  1000b9344  bl      _objc_release
  1000b9348  mov     x0, x23
  1000b934c  bl      _objc_release
  1000b9350  ldr     x25, [sp, #0x58]
  1000b9354  mov     x28, x21
  1000b9358  ldr     x21, [sp, #0xa0]
  1000b935c  b       loc_1000b9430
loc_1000b9360:
  1000b9360  adrp    x8, #0x10041d000
  1000b9364  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000b9368  ldr     x1, [sp, #0x48]
  1000b936c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000b9370  mov     x23, x0
  1000b9374  mov     x0, x19
  1000b9378  mov     x1, x28
  1000b937c  adrp    x2, #0x1003ba000
  1000b9380  add     x2, x2, #0x1d0                           ; @"Killed"
  1000b9384  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:x2] objectForKey:@"Killed"]
  1000b9388  str     x21, [sp, #0xa0]
  1000b938c  mov     x29, x29
  1000b9390  bl      _objc_retainAutoreleasedReturnValue
  1000b9394  mov     x20, x0
  1000b9398  mov     x0, x19
  1000b939c  mov     x1, x28
  1000b93a0  adrp    x21, #0x1003bf000
  1000b93a4  add     x21, x21, #0x470                         ; @"Casualty"
  1000b93a8  mov     x2, x21
  1000b93ac  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:x2] objectForKey:@"Casualty"]
  1000b93b0  mov     x22, x19
  1000b93b4  mov     x19, x26
  1000b93b8  mov     x26, x24
  1000b93bc  mov     x24, x28
  1000b93c0  mov     x29, x29
  1000b93c4  bl      _objc_retainAutoreleasedReturnValue
  1000b93c8  mov     x28, x0
  1000b93cc  stp     x21, xzr, [sp, #0x10]
  1000b93d0  adrp    x8, #0x1003ba000
  1000b93d4  add     x8, x8, #0x1d0                           ; @"Killed"
  1000b93d8  stp     x8, x28, [sp]
  1000b93dc  mov     x0, x23
  1000b93e0  ldr     x1, [sp, #0x40]
  1000b93e4  mov     x2, x20
  1000b93e8  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] initWithObjectsAndKeys:[[[self enemyList] objectForKey:x2] objectForKey:@"Killed"], @"Killed", [[[self enemyList] objectForKey:x2] objectForKey:@"Casualty"…, @"Casualty", nil]
  1000b93ec  mov     x23, x0
  1000b93f0  mov     x0, x28
  1000b93f4  bl      _objc_release
  1000b93f8  mov     x0, x20
  1000b93fc  bl      _objc_release
  1000b9400  ldr     x0, [sp, #0xb0]
  1000b9404  ldr     x1, [sp, #0x78]
  1000b9408  mov     x2, x23
  1000b940c  ldr     x21, [sp, #0xa0]
  1000b9410  mov     x3, x21
  1000b9414  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[[NSMutableDictionary alloc] initWithObjectsAndKeys:[[[self enemyList] objectForKey:x2] objectForKey:@"Killed"], @"Killed", [[[self enemyList] objectForKey:x2] objectForKey:@"Casualty"…, @"Casualty", nil] forKey:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:x2] objectForKey:@"displayName"]]
  1000b9418  mov     x0, x23
  1000b941c  bl      _objc_release
  1000b9420  mov     x28, x24
  1000b9424  mov     x24, x26
  1000b9428  mov     x26, x19
  1000b942c  mov     x19, x22
loc_1000b9430:
  1000b9430  mov     x0, x21
  1000b9434  bl      _objc_release
  1000b9438  mov     x0, x19
  1000b943c  bl      _objc_release
  1000b9440  mov     x0, x25
  1000b9444  bl      _objc_release
  1000b9448  add     x27, x27, #1
  1000b944c  cmp     x27, x26
  1000b9450  b.lo    loc_1000b90cc                            ; if ((x27 + 1) <u [[[self enemyList] allKeys] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16])
  1000b9454  add     x2, sp, #0xb8
  1000b9458  sub     x3, x29, #0xd8
  1000b945c  mov     w4, #0x10
  1000b9460  ldr     x0, [sp, #0x50]
  1000b9464  ldr     x1, [sp, #0x38]
  1000b9468  bl      _objc_msgSend                            ; [[[self enemyList] allKeys] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16]
  1000b946c  mov     x26, x0
  1000b9470  cbnz    x26, loc_1000b90c8                       ; if ([[[self enemyList] allKeys] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xd8] count:16] != 0)
loc_1000b9474:
  1000b9474  ldr     x0, [sp, #0x50]
  1000b9478  bl      _objc_release
  1000b947c  adrp    x8, #0x10041a000
  1000b9480  nop
  1000b9484  ldr     x19, [x8, #0x820]
  1000b9488  mov     x2, #0
  1000b948c  mov     x0, x24
  1000b9490  mov     x1, x19
  1000b9494  bl      _objc_msgSend                            ; [self setEnemyList:0]
  1000b9498  adrp    x20, #0x1003b0000
  1000b949c  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000b94a0  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000b94a4  mov     x0, x24
  1000b94a8  mov     x1, x19
  1000b94ac  ldr     x2, [sp, #0xb0]
  1000b94b0  bl      _objc_msgSend                            ; [self setEnemyList:[[NSMutableDictionary alloc] init]]
  1000b94b4  ldr     x0, [sp, #0xb0]
  1000b94b8  bl      _objc_release
  1000b94bc  ldur    x8, [x29, #-0x58]
  1000b94c0  sub     x8, x20, x8
  1000b94c4  cbnz    x8, loc_1000b94e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000b94c8  sub     sp, x29, #0x50
  1000b94cc  ldp     x29, x30, [sp, #0x50]
  1000b94d0  ldp     x20, x19, [sp, #0x40]
  1000b94d4  ldp     x22, x21, [sp, #0x30]
  1000b94d8  ldp     x24, x23, [sp, #0x20]
  1000b94dc  ldp     x26, x25, [sp, #0x10]
  1000b94e0  ldp     x28, x27, [sp], #0x60
  1000b94e4  ret
loc_1000b94e8:
  1000b94e8  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000b94ec  mov     x27, x0
  1000b94f0  b       loc_1000b95cc
loc_1000b94f4:
  1000b94f4  mov     x27, x0
  1000b94f8  b       loc_1000b95e4
  1000b94fc  mov     x27, x0
  1000b9500  b       loc_1000b957c
  1000b9504  mov     x27, x0
  1000b9508  mov     x0, x20
  1000b950c  b       loc_1000b95e0
  1000b9510  mov     x27, x0
  1000b9514  b       loc_1000b95dc
  1000b9518  mov     x27, x0
  1000b951c  mov     x0, x20
  1000b9520  b       loc_1000b95d8
  1000b9524  mov     x27, x0
  1000b9528  b       loc_1000b95d4
  1000b952c  mov     x27, x0
  1000b9530  b       loc_1000b95b0
  1000b9534  b       loc_1000b9570
  1000b9538  mov     x27, x0
  1000b953c  b       loc_1000b9560
  1000b9540  mov     x27, x0
  1000b9544  mov     x0, x26
  1000b9548  bl      _objc_release
  1000b954c  b       loc_1000b9574
  1000b9550  b       loc_1000b9570
  1000b9554  mov     x27, x0
  1000b9558  mov     x0, x26
  1000b955c  bl      _objc_release
loc_1000b9560:
  1000b9560  ldr     x25, [sp, #0x58]
  1000b9564  mov     x0, x20
  1000b9568  bl      _objc_release
  1000b956c  b       loc_1000b9580
loc_1000b9570:
  1000b9570  mov     x27, x0
loc_1000b9574:
  1000b9574  mov     x0, x20
  1000b9578  bl      _objc_release
loc_1000b957c:
  1000b957c  ldr     x25, [sp, #0x58]
loc_1000b9580:
  1000b9580  ldr     x21, [sp, #0xa0]
  1000b9584  mov     x0, x23
  1000b9588  bl      _objc_release
  1000b958c  b       loc_1000b95cc
  1000b9590  mov     x27, x0
  1000b9594  ldr     x21, [sp, #0xa0]
  1000b9598  b       loc_1000b95b0
  1000b959c  mov     x27, x0
  1000b95a0  mov     x0, x28
  1000b95a4  bl      _objc_release
  1000b95a8  ldr     x21, [sp, #0xa0]
  1000b95ac  mov     x19, x22
loc_1000b95b0:
  1000b95b0  mov     x0, x20
  1000b95b4  bl      _objc_release
  1000b95b8  b       loc_1000b95cc
  1000b95bc  mov     x27, x0
  1000b95c0  mov     x0, x23
  1000b95c4  bl      _objc_release
  1000b95c8  mov     x19, x22
loc_1000b95cc:
  1000b95cc  mov     x0, x21
  1000b95d0  bl      _objc_release
loc_1000b95d4:
  1000b95d4  mov     x0, x19
loc_1000b95d8:
  1000b95d8  bl      _objc_release
loc_1000b95dc:
  1000b95dc  mov     x0, x25
loc_1000b95e0:
  1000b95e0  bl      _objc_release
loc_1000b95e4:
  1000b95e4  ldr     x0, [sp, #0x50]
loc_1000b95e8:
  1000b95e8  bl      _objc_release
loc_1000b95ec:
  1000b95ec  ldr     x0, [sp, #0xb0]
  1000b95f0  bl      _objc_release
  1000b95f4  mov     x0, x27
  1000b95f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b95fc  b       loc_1000b94f4
  1000b9600  mov     x27, x0
  1000b9604  b       loc_1000b95ec
  1000b9608  mov     x27, x0
  1000b960c  mov     x0, x19
  1000b9610  b       loc_1000b95e8
  1000b9614  b       loc_1000b94f4

; ======================================================================
; -[ADInGameStats filterWeaponsByShotsFired]
; address 0x1000b9618  size 1020  kind objc
; ======================================================================
  1000b9618  stp     x28, x27, [sp, #-0x60]!
  1000b961c  stp     x26, x25, [sp, #0x10]
  1000b9620  stp     x24, x23, [sp, #0x20]
  1000b9624  stp     x22, x21, [sp, #0x30]
  1000b9628  stp     x20, x19, [sp, #0x40]
  1000b962c  stp     x29, x30, [sp, #0x50]
  1000b9630  add     x29, sp, #0x50
  1000b9634  sub     sp, sp, #0x120
  1000b9638  mov     x21, x0
  1000b963c  adrp    x8, #0x1003b0000
  1000b9640  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000b9644  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000b9648  stur    x8, [x29, #-0x58]
  1000b964c  adrp    x8, #0x10041d000
  1000b9650  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000b9654  adrp    x8, #0x100416000
  1000b9658  nop
  1000b965c  ldr     x1, [x8, #0xac8]
  1000b9660  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000b9664  adrp    x8, #0x100416000
  1000b9668  nop
  1000b966c  ldr     x1, [x8, #0xab8]
  1000b9670  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000b9674  mov     x22, x0
  1000b9678  adrp    x8, #0x10041a000
  1000b967c  nop
  1000b9680  ldr     x1, [x8, #0x898]
  1000b9684  str     x1, [sp, #0x50]
  1000b9688  mov     x0, x21
  1000b968c  bl      _objc_msgSend                            ; [self weaponsData]
  1000b9690  mov     x29, x29
  1000b9694  bl      _objc_retainAutoreleasedReturnValue
  1000b9698  mov     x19, x0
  1000b969c  adrp    x8, #0x100417000
  1000b96a0  nop
  1000b96a4  ldr     x1, [x8, #0x248]
  1000b96a8  bl      _objc_msgSend                            ; [[self weaponsData] allKeys]
  1000b96ac  str     x22, [sp, #0x48]
  1000b96b0  mov     x29, x29
  1000b96b4  bl      _objc_retainAutoreleasedReturnValue
  1000b96b8  mov     x20, x0
  1000b96bc  mov     x0, x19
  1000b96c0  bl      _objc_release
  1000b96c4  stp     xzr, xzr, [sp, #0x88]
  1000b96c8  stp     xzr, xzr, [sp, #0x78]
  1000b96cc  stp     xzr, xzr, [sp, #0x68]
  1000b96d0  stp     xzr, xzr, [sp, #0x58]
  1000b96d4  mov     x0, x20
  1000b96d8  bl      _objc_retain
  1000b96dc  mov     x23, x0
  1000b96e0  str     x23, [sp, #0x18]
  1000b96e4  adrp    x8, #0x100416000
  1000b96e8  nop
  1000b96ec  ldr     x1, [x8, #0xe00]
  1000b96f0  str     x1, [sp, #0x10]
  1000b96f4  add     x2, sp, #0x58
  1000b96f8  add     x3, sp, #0x98
  1000b96fc  mov     w4, #0x10
  1000b9700  bl      _objc_msgSend                            ; [[[self weaponsData] allKeys] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000b9704  mov     x24, x0
  1000b9708  cbz     x24, loc_1000b98fc                       ; if ([[[self weaponsData] allKeys] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000b970c  ldr     x8, [sp, #0x68]
  1000b9710  adrp    x9, #0x100417000
  1000b9714  nop
  1000b9718  ldr     x22, [x8]
  1000b971c  ldr     x25, [x9, #0x40]
  1000b9720  adrp    x8, #0x100417000
  1000b9724  nop
  1000b9728  adrp    x9, #0x10041a000
  1000b972c  nop
  1000b9730  ldr     x26, [x8, #0xb0]
  1000b9734  ldr     x8, [x9, #0x8b0]
  1000b9738  str     x8, [sp, #0x40]
  1000b973c  adrp    x8, #0x10041a000
  1000b9740  nop
  1000b9744  adrp    x9, #0x10041a000
  1000b9748  nop
  1000b974c  ldr     x8, [x8, #0x798]
  1000b9750  str     x8, [sp, #0x38]
  1000b9754  ldr     x8, [x9, #0x8b8]
  1000b9758  str     x8, [sp, #0x30]
  1000b975c  adrp    x8, #0x10041a000
  1000b9760  nop
  1000b9764  adrp    x9, #0x100416000
  1000b9768  add     x9, x9, #0xdc8                           ; &@selector(setObject:forKey:)
  1000b976c  ldr     x8, [x8, #0x7a0]
  1000b9770  str     x8, [sp, #0x28]
  1000b9774  ldr     x8, [x9]
  1000b9778  str     x8, [sp, #0x20]
loc_1000b977c:
  1000b977c  mov     x27, #0
loc_1000b9780:
  1000b9780  ldr     x8, [sp, #0x68]
  1000b9784  ldr     x8, [x8]
  1000b9788  cmp     x8, x22
  1000b978c  b.eq    loc_1000b9798                            ; if (x8 == x22)
  1000b9790  ldr     x0, [sp, #0x18]
  1000b9794  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self weaponsData] allKeys])
loc_1000b9798:
  1000b9798  ldr     x8, [sp, #0x60]
  1000b979c  ldr     x23, [x8, x27, lsl #3]
  1000b97a0  mov     x0, x21
  1000b97a4  ldr     x1, [sp, #0x50]
  1000b97a8  bl      _objc_msgSend                            ; [self weaponsData]
  1000b97ac  mov     x29, x29
  1000b97b0  bl      _objc_retainAutoreleasedReturnValue
  1000b97b4  mov     x19, x0
  1000b97b8  mov     x1, x25
  1000b97bc  mov     x2, x23
  1000b97c0  bl      _objc_msgSend                            ; [[self weaponsData] objectForKey:x2]
  1000b97c4  mov     x29, x29
  1000b97c8  bl      _objc_retainAutoreleasedReturnValue
  1000b97cc  mov     x28, x0
  1000b97d0  mov     x0, x19
  1000b97d4  bl      _objc_release
  1000b97d8  mov     x0, x28
  1000b97dc  mov     x1, x25
  1000b97e0  adrp    x2, #0x1003ba000
  1000b97e4  add     x2, x2, #0x290                           ; @"shotsFired"
  1000b97e8  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:x2] objectForKey:@"shotsFired"]
  1000b97ec  mov     x29, x29
  1000b97f0  bl      _objc_retainAutoreleasedReturnValue
  1000b97f4  mov     x19, x0
  1000b97f8  mov     x1, x26
  1000b97fc  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:x2] objectForKey:@"shotsFired"] integerValue]
  1000b9800  mov     x20, x0
  1000b9804  mov     x0, x19
  1000b9808  bl      _objc_release
  1000b980c  cmp     x20, #1
  1000b9810  b.lt    loc_1000b98c8                            ; if ([[[[self weaponsData] objectForKey:x2] objectForKey:@"shotsFired"] integerValue] < 1)
  1000b9814  mov     x0, x28
  1000b9818  mov     x1, x25
  1000b981c  adrp    x2, #0x1003ba000
  1000b9820  add     x2, x2, #0x290                           ; @"shotsFired"
  1000b9824  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:x2] objectForKey:@"shotsFired"]
  1000b9828  mov     x29, x29
  1000b982c  bl      _objc_retainAutoreleasedReturnValue
  1000b9830  mov     x19, x0
  1000b9834  mov     x1, x26
  1000b9838  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:x2] objectForKey:@"shotsFired"] integerValue]
  1000b983c  mov     x20, x0
  1000b9840  mov     x0, x21
  1000b9844  ldr     x1, [sp, #0x40]
  1000b9848  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000b984c  add     x2, x0, x20                              ; t1 = ([self totalShotsFired] + [[[[self weaponsData] objectForKey:x2] objectForKey:@"shotsFired"] integerValue])
  1000b9850  mov     x0, x21
  1000b9854  ldr     x1, [sp, #0x38]
  1000b9858  bl      _objc_msgSend                            ; [self setTotalShotsFired:t1]
  1000b985c  mov     x0, x19
  1000b9860  bl      _objc_release
  1000b9864  mov     x0, x28
  1000b9868  mov     x1, x25
  1000b986c  adrp    x2, #0x1003ba000
  1000b9870  add     x2, x2, #0x2d0                           ; @"shotsHit"
  1000b9874  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:x2] objectForKey:@"shotsHit"]
  1000b9878  mov     x29, x29
  1000b987c  bl      _objc_retainAutoreleasedReturnValue
  1000b9880  mov     x19, x0
  1000b9884  mov     x1, x26
  1000b9888  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:x2] objectForKey:@"shotsHit"] integerValue]
  1000b988c  mov     x20, x0
  1000b9890  mov     x0, x21
  1000b9894  ldr     x1, [sp, #0x30]
  1000b9898  bl      _objc_msgSend                            ; [self shotsOnTarget]
  1000b989c  add     x2, x0, x20                              ; t2 = ([self shotsOnTarget] + [[[[self weaponsData] objectForKey:x2] objectForKey:@"shotsHit"] integerValue])
  1000b98a0  mov     x0, x21
  1000b98a4  ldr     x1, [sp, #0x28]
  1000b98a8  bl      _objc_msgSend                            ; [self setShotsOnTarget:t2]
  1000b98ac  mov     x0, x19
  1000b98b0  bl      _objc_release
  1000b98b4  ldr     x0, [sp, #0x48]
  1000b98b8  ldr     x1, [sp, #0x20]
  1000b98bc  mov     x2, x28
  1000b98c0  mov     x3, x23
  1000b98c4  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[[self weaponsData] objectForKey:x2] forKey:x3]
loc_1000b98c8:
  1000b98c8  mov     x0, x28
  1000b98cc  bl      _objc_release
  1000b98d0  add     x27, x27, #1
  1000b98d4  cmp     x27, x24
  1000b98d8  b.lo    loc_1000b9780                            ; if ((x27 + 1) <u [[[self weaponsData] allKeys] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16])
  1000b98dc  add     x2, sp, #0x58
  1000b98e0  add     x3, sp, #0x98
  1000b98e4  mov     w4, #0x10
  1000b98e8  ldp     x1, x23, [sp, #0x10]
  1000b98ec  mov     x0, x23
  1000b98f0  bl      _objc_msgSend                            ; [[[self weaponsData] allKeys] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000b98f4  mov     x24, x0
  1000b98f8  cbnz    x24, loc_1000b977c                       ; if ([[[self weaponsData] allKeys] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
loc_1000b98fc:
  1000b98fc  mov     x0, x23
  1000b9900  bl      _objc_release
  1000b9904  adrp    x8, #0x10041a000
  1000b9908  nop
  1000b990c  ldr     x19, [x8, #0x828]
  1000b9910  mov     x2, #0
  1000b9914  mov     x0, x21
  1000b9918  mov     x1, x19
  1000b991c  ldr     x22, [sp, #0x48]
  1000b9920  bl      _objc_msgSend                            ; [self setWeaponsData:0]
  1000b9924  mov     x0, x21
  1000b9928  mov     x1, x19
  1000b992c  mov     x2, x22
  1000b9930  bl      _objc_msgSend                            ; [self setWeaponsData:[[NSMutableDictionary alloc] init]]
  1000b9934  mov     x0, x23
  1000b9938  bl      _objc_release
  1000b993c  mov     x0, x22
  1000b9940  bl      _objc_release
  1000b9944  ldur    x8, [x29, #-0x58]
  1000b9948  adrp    x9, #0x1003b0000
  1000b994c  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000b9950  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000b9954  sub     x8, x9, x8
  1000b9958  cbnz    x8, loc_1000b997c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000b995c  sub     sp, x29, #0x50
  1000b9960  ldp     x29, x30, [sp, #0x50]
  1000b9964  ldp     x20, x19, [sp, #0x40]
  1000b9968  ldp     x22, x21, [sp, #0x30]
  1000b996c  ldp     x24, x23, [sp, #0x20]
  1000b9970  ldp     x26, x25, [sp, #0x10]
  1000b9974  ldp     x28, x27, [sp], #0x60
  1000b9978  ret
loc_1000b997c:
  1000b997c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000b9980  mov     x20, x0
  1000b9984  b       loc_1000b99bc
  1000b9988  b       loc_1000b99b0
  1000b998c  b       loc_1000b99b0
loc_1000b9990:
  1000b9990  mov     x20, x0
  1000b9994  b       loc_1000b99a4
  1000b9998  mov     x20, x0
  1000b999c  mov     x0, x19
  1000b99a0  bl      _objc_release
loc_1000b99a4:
  1000b99a4  ldr     x22, [sp, #0x48]
  1000b99a8  ldr     x23, [sp, #0x18]
  1000b99ac  b       loc_1000b99cc
loc_1000b99b0:
  1000b99b0  mov     x20, x0
  1000b99b4  mov     x0, x19
  1000b99b8  bl      _objc_release
loc_1000b99bc:
  1000b99bc  ldr     x23, [sp, #0x18]
  1000b99c0  mov     x0, x28
  1000b99c4  bl      _objc_release
  1000b99c8  ldr     x22, [sp, #0x48]
loc_1000b99cc:
  1000b99cc  mov     x0, x23
  1000b99d0  bl      _objc_release
loc_1000b99d4:
  1000b99d4  mov     x0, x23
loc_1000b99d8:
  1000b99d8  bl      _objc_release
loc_1000b99dc:
  1000b99dc  mov     x0, x22
  1000b99e0  bl      _objc_release
  1000b99e4  mov     x0, x20
  1000b99e8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b99ec  b       loc_1000b9990
  1000b99f0  mov     x20, x0
  1000b99f4  b       loc_1000b99d4
  1000b99f8  mov     x20, x0
  1000b99fc  b       loc_1000b99dc
  1000b9a00  mov     x20, x0
  1000b9a04  mov     x0, x19
  1000b9a08  b       loc_1000b99d8
  1000b9a0c  str     x23, [sp, #0x18]
  1000b9a10  b       loc_1000b9990

; ======================================================================
; -[ADInGameStats prepareTotalsStats]
; address 0x1000b9a14  size 332  kind objc
; ======================================================================
  1000b9a14  stp     x24, x23, [sp, #-0x40]!
  1000b9a18  stp     x22, x21, [sp, #0x10]
  1000b9a1c  stp     x20, x19, [sp, #0x20]
  1000b9a20  stp     x29, x30, [sp, #0x30]
  1000b9a24  add     x29, sp, #0x30
  1000b9a28  sub     sp, sp, #0x30
  1000b9a2c  mov     x22, x0
  1000b9a30  adrp    x23, #0x1003b0000
  1000b9a34  ldr     x23, [x23, #0x1d8]                       ; ___stack_chk_guard
  1000b9a38  ldr     x23, [x23]                               ; x23 = ___stack_chk_guard[+0x0]
  1000b9a3c  str     x23, [sp, #0x28]
  1000b9a40  adrp    x8, #0x1003ba000
  1000b9a44  add     x8, x8, #0x310                           ; @"Shots fired"
  1000b9a48  str     x8, [sp, #8]
  1000b9a4c  adrp    x21, #0x10041d000
  1000b9a50  ldr     x19, [x21, #0xf68]                       ; class NSNumber
  1000b9a54  adrp    x8, #0x10041a000
  1000b9a58  nop
  1000b9a5c  ldr     x1, [x8, #0x8b0]
  1000b9a60  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000b9a64  mov     x2, x0
  1000b9a68  adrp    x8, #0x100416000
  1000b9a6c  nop
  1000b9a70  ldr     x20, [x8, #0xec0]
  1000b9a74  mov     x0, x19
  1000b9a78  mov     x1, x20
  1000b9a7c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[self totalShotsFired]]
  1000b9a80  mov     x29, x29
  1000b9a84  bl      _objc_retainAutoreleasedReturnValue
  1000b9a88  mov     x19, x0
  1000b9a8c  adrp    x8, #0x1003bf000
  1000b9a90  add     x8, x8, #0xaf0                           ; @"Melee swings"
  1000b9a94  stp     x8, x19, [sp, #0x10]
  1000b9a98  ldr     x21, [x21, #0xf68]                       ; class NSNumber
  1000b9a9c  adrp    x8, #0x10041a000
  1000b9aa0  nop
  1000b9aa4  ldr     x1, [x8, #0x8c0]
  1000b9aa8  mov     x0, x22
  1000b9aac  bl      _objc_msgSend                            ; [self meleeSwings]
  1000b9ab0  mov     x2, x0
  1000b9ab4  mov     x0, x21
  1000b9ab8  mov     x1, x20
  1000b9abc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[self meleeSwings]]
  1000b9ac0  mov     x29, x29
  1000b9ac4  bl      _objc_retainAutoreleasedReturnValue
  1000b9ac8  mov     x20, x0
  1000b9acc  str     x20, [sp, #0x20]
  1000b9ad0  adrp    x8, #0x10041d000
  1000b9ad4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000b9ad8  adrp    x8, #0x100416000
  1000b9adc  nop
  1000b9ae0  ldr     x1, [x8, #0xcd0]
  1000b9ae4  add     x2, sp, #0x18
  1000b9ae8  add     x3, sp, #8
  1000b9aec  mov     w4, #2
  1000b9af0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x18] forKeys:&sp[0x8] count:2]
  1000b9af4  mov     x29, x29
  1000b9af8  bl      _objc_retainAutoreleasedReturnValue
  1000b9afc  mov     x21, x0
  1000b9b00  mov     x0, x20
  1000b9b04  bl      _objc_release
  1000b9b08  mov     x0, x19
  1000b9b0c  bl      _objc_release
  1000b9b10  ldr     x8, [sp, #0x28]
  1000b9b14  sub     x8, x23, x8
  1000b9b18  cbnz    x8, loc_1000b9b38                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000b9b1c  mov     x0, x21
  1000b9b20  sub     sp, x29, #0x30
  1000b9b24  ldp     x29, x30, [sp, #0x30]
  1000b9b28  ldp     x20, x19, [sp, #0x20]
  1000b9b2c  ldp     x22, x21, [sp, #0x10]
  1000b9b30  ldp     x24, x23, [sp], #0x40
  1000b9b34  b       _objc_autoreleaseReturnValue
loc_1000b9b38:
  1000b9b38  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000b9b3c  mov     x21, x0
  1000b9b40  b       loc_1000b9b50
  1000b9b44  mov     x21, x0
  1000b9b48  mov     x0, x20
  1000b9b4c  bl      _objc_release
loc_1000b9b50:
  1000b9b50  mov     x0, x19
  1000b9b54  bl      _objc_release
  1000b9b58  mov     x0, x21
  1000b9b5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats killedEnemi:]
; address 0x1000b9b60  size 872  kind objc
; ======================================================================
  1000b9b60  stp     x26, x25, [sp, #-0x50]!
  1000b9b64  stp     x24, x23, [sp, #0x10]
  1000b9b68  stp     x22, x21, [sp, #0x20]
  1000b9b6c  stp     x20, x19, [sp, #0x30]
  1000b9b70  stp     x29, x30, [sp, #0x40]
  1000b9b74  add     x29, sp, #0x40
  1000b9b78  mov     x20, x0
  1000b9b7c  mov     x0, x2
  1000b9b80  bl      _objc_retain
  1000b9b84  mov     x19, x0
  1000b9b88  adrp    x8, #0x10041a000
  1000b9b8c  nop
  1000b9b90  ldr     x22, [x8, #0x870]
  1000b9b94  mov     x0, x20
  1000b9b98  mov     x1, x22
  1000b9b9c  bl      _objc_msgSend                            ; [self enemyList]
  1000b9ba0  mov     x29, x29
  1000b9ba4  bl      _objc_retainAutoreleasedReturnValue
  1000b9ba8  mov     x24, x0
  1000b9bac  adrp    x8, #0x100417000
  1000b9bb0  nop
  1000b9bb4  ldr     x23, [x8, #0x450]
  1000b9bb8  mov     x0, x19
  1000b9bbc  mov     x1, x23
  1000b9bc0  bl      _objc_msgSend                            ; [arg1 name]
  1000b9bc4  mov     x29, x29
  1000b9bc8  bl      _objc_retainAutoreleasedReturnValue
  1000b9bcc  mov     x26, x0
  1000b9bd0  adrp    x8, #0x100417000
  1000b9bd4  nop
  1000b9bd8  ldr     x25, [x8, #0x40]
  1000b9bdc  mov     x0, x24
  1000b9be0  mov     x1, x25
  1000b9be4  mov     x2, x26
  1000b9be8  bl      _objc_msgSend                            ; [[self enemyList] objectForKey:[arg1 name]]
  1000b9bec  mov     x29, x29
  1000b9bf0  bl      _objc_retainAutoreleasedReturnValue
  1000b9bf4  mov     x21, x0
  1000b9bf8  mov     x0, x26
  1000b9bfc  bl      _objc_release
  1000b9c00  mov     x0, x24
  1000b9c04  bl      _objc_release
  1000b9c08  cbz     x21, loc_1000b9cf4                       ; if ([[self enemyList] objectForKey:[arg1 name]] == 0)
  1000b9c0c  adrp    x2, #0x1003ba000
  1000b9c10  add     x2, x2, #0x1d0                           ; @"Killed"
  1000b9c14  mov     x0, x21
  1000b9c18  mov     x1, x25
  1000b9c1c  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:[arg1 name]] objectForKey:@"Killed"]
  1000b9c20  mov     x29, x29
  1000b9c24  bl      _objc_retainAutoreleasedReturnValue
  1000b9c28  mov     x24, x0
  1000b9c2c  adrp    x8, #0x100417000
  1000b9c30  nop
  1000b9c34  ldr     x1, [x8, #0xb0]
  1000b9c38  bl      _objc_msgSend                            ; [[[[self enemyList] objectForKey:[arg1 name]] objectForKey:@"Killed"] integerValue]
  1000b9c3c  add     w25, w0, #1
  1000b9c40  mov     x0, x24
  1000b9c44  bl      _objc_release
  1000b9c48  adrp    x8, #0x10041d000
  1000b9c4c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000b9c50  adrp    x8, #0x100416000
  1000b9c54  nop
  1000b9c58  ldr     x1, [x8, #0xec0]
  1000b9c5c  mov     x2, x25
  1000b9c60  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[[self enemyList] objectForKey:[arg1 name]] objectForKey:@"Killed"] integerValue] + 1)]
  1000b9c64  mov     x29, x29
  1000b9c68  bl      _objc_retainAutoreleasedReturnValue
  1000b9c6c  mov     x24, x0
  1000b9c70  adrp    x8, #0x100416000
  1000b9c74  nop
  1000b9c78  ldr     x1, [x8, #0xdc8]
  1000b9c7c  adrp    x3, #0x1003ba000
  1000b9c80  add     x3, x3, #0x1d0                           ; @"Killed"
  1000b9c84  mov     x0, x21
  1000b9c88  mov     x2, x24
  1000b9c8c  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:[arg1 name]] setObject:[NSNumber numberWithInt:([[[[self enemyList] objectForKey:[arg1 name]] objectForKey:@"Killed"] integerValue] + 1)] forKey:@"Killed"]
  1000b9c90  mov     x0, x24
  1000b9c94  bl      _objc_release
  1000b9c98  mov     x0, x20
  1000b9c9c  mov     x1, x22
  1000b9ca0  bl      _objc_msgSend                            ; [self enemyList]
  1000b9ca4  mov     x29, x29
  1000b9ca8  bl      _objc_retainAutoreleasedReturnValue
  1000b9cac  mov     x22, x0
  1000b9cb0  mov     x0, x19
  1000b9cb4  mov     x1, x23
  1000b9cb8  bl      _objc_msgSend                            ; [arg1 name]
  1000b9cbc  mov     x29, x29
  1000b9cc0  bl      _objc_retainAutoreleasedReturnValue
  1000b9cc4  mov     x23, x0
  1000b9cc8  adrp    x8, #0x100418000
  1000b9ccc  nop
  1000b9cd0  ldr     x1, [x8, #0x318]
  1000b9cd4  mov     x0, x22
  1000b9cd8  mov     x2, x21
  1000b9cdc  mov     x3, x23
  1000b9ce0  bl      _objc_msgSend                            ; [[self enemyList] setValue:[[self enemyList] objectForKey:[arg1 name]] forKey:[arg1 name]]
  1000b9ce4  mov     x0, x23
  1000b9ce8  bl      _objc_release
  1000b9cec  mov     x0, x22
  1000b9cf0  bl      _objc_release
loc_1000b9cf4:
  1000b9cf4  adrp    x8, #0x100417000
  1000b9cf8  nop
  1000b9cfc  ldr     x1, [x8, #0xda8]
  1000b9d00  mov     x0, x20
  1000b9d04  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000b9d08  add     x2, x0, #1
  1000b9d0c  adrp    x8, #0x10041a000
  1000b9d10  nop
  1000b9d14  ldr     x1, [x8, #0x7b8]
  1000b9d18  mov     x0, x20
  1000b9d1c  bl      _objc_msgSend                            ; [self setNumberOfEnemyKills:([self numberOfEnemyKills] + 1)]
  1000b9d20  adrp    x8, #0x10041a000
  1000b9d24  nop
  1000b9d28  ldr     x1, [x8, #0x8c8]
  1000b9d2c  mov     x0, x19
  1000b9d30  bl      _objc_msgSend                            ; [arg1 comboBonus]
  1000b9d34  mov     x23, x0
  1000b9d38  adrp    x8, #0x100419000
  1000b9d3c  nop
  1000b9d40  ldr     x22, [x8, #0xe8]
  1000b9d44  mov     x0, x20
  1000b9d48  mov     x1, x22
  1000b9d4c  bl      _objc_msgSend                            ; [self combo]
  1000b9d50  add     x2, x0, w23, sxtw
  1000b9d54  adrp    x8, #0x100419000
  1000b9d58  nop
  1000b9d5c  ldr     x1, [x8, #0x150]
  1000b9d60  mov     x0, x20
  1000b9d64  bl      _objc_msgSend                            ; [self setCombo:([self combo] + [arg1 comboBonus])]
  1000b9d68  adrp    x8, #0x10041a000
  1000b9d6c  nop
  1000b9d70  ldr     x1, [x8, #0x8d0]
  1000b9d74  mov     x0, x19
  1000b9d78  bl      _objc_msgSend                            ; [arg1 coinsReward]
  1000b9d7c  mov     x23, x0
  1000b9d80  adrp    x8, #0x10041a000
  1000b9d84  nop
  1000b9d88  ldr     x1, [x8, #0x850]
  1000b9d8c  mov     x0, x20
  1000b9d90  bl      _objc_msgSend                            ; [self coinsForKill]
  1000b9d94  add     x2, x0, w23, sxtw
  1000b9d98  adrp    x8, #0x10041a000
  1000b9d9c  nop
  1000b9da0  ldr     x1, [x8, #0x800]
  1000b9da4  mov     x0, x20
  1000b9da8  bl      _objc_msgSend                            ; [self setCoinsForKill:([self coinsForKill] + [arg1 coinsReward])]
  1000b9dac  adrp    x8, #0x10041a000
  1000b9db0  nop
  1000b9db4  ldr     x23, [x8, #0x688]
  1000b9db8  mov     x0, x19
  1000b9dbc  mov     x1, x23
  1000b9dc0  bl      _objc_msgSend                            ; [arg1 score]
  1000b9dc4  cmp     w0, #2
  1000b9dc8  b.lt    loc_1000b9df4                            ; if ([arg1 score] < 2)
  1000b9dcc  mov     x0, x19
  1000b9dd0  mov     x1, x23
  1000b9dd4  bl      _objc_msgSend                            ; [arg1 score]
  1000b9dd8  mov     x23, x0
  1000b9ddc  mov     x0, x20
  1000b9de0  mov     x1, x22
  1000b9de4  bl      _objc_msgSend                            ; [self combo]
  1000b9de8  sxtw    x8, w23
  1000b9dec  mul     x22, x0, x8
  1000b9df0  b       loc_1000b9e04
loc_1000b9df4:
  1000b9df4  mov     x0, x20
  1000b9df8  mov     x1, x22
  1000b9dfc  bl      _objc_msgSend                            ; [self combo]
  1000b9e00  mov     x22, x0
loc_1000b9e04:
  1000b9e04  adrp    x8, #0x100417000
  1000b9e08  nop
  1000b9e0c  ldr     x1, [x8, #0xda0]
  1000b9e10  mov     x0, x20
  1000b9e14  bl      _objc_msgSend                            ; [self gameScore]
  1000b9e18  add     x2, x0, x22
  1000b9e1c  adrp    x8, #0x10041a000
  1000b9e20  nop
  1000b9e24  ldr     x1, [x8, #0x7e0]
  1000b9e28  mov     x0, x20
  1000b9e2c  bl      _objc_msgSend                            ; [self setGameScore:([self gameScore] + x22)]
  1000b9e30  mov     x0, x21
  1000b9e34  bl      _objc_release
  1000b9e38  mov     x0, x19
  1000b9e3c  ldp     x29, x30, [sp, #0x40]
  1000b9e40  ldp     x20, x19, [sp, #0x30]
  1000b9e44  ldp     x22, x21, [sp, #0x20]
  1000b9e48  ldp     x24, x23, [sp, #0x10]
  1000b9e4c  ldp     x26, x25, [sp], #0x50
  1000b9e50  b       _objc_release
  1000b9e54  mov     x20, x0
loc_1000b9e58:
  1000b9e58  mov     x0, x21
loc_1000b9e5c:
  1000b9e5c  bl      _objc_release
loc_1000b9e60:
  1000b9e60  mov     x0, x19
  1000b9e64  bl      _objc_release
  1000b9e68  mov     x0, x20
  1000b9e6c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b9e70  mov     x20, x0
  1000b9e74  b       loc_1000b9e60
  1000b9e78  mov     x20, x0
  1000b9e7c  b       loc_1000b9e8c
  1000b9e80  mov     x20, x0
  1000b9e84  mov     x0, x26
  1000b9e88  bl      _objc_release
loc_1000b9e8c:
  1000b9e8c  mov     x0, x24
  1000b9e90  b       loc_1000b9e5c
  1000b9e94  b       loc_1000b9e98
loc_1000b9e98:
  1000b9e98  mov     x20, x0
  1000b9e9c  mov     x0, x24
  1000b9ea0  bl      _objc_release
  1000b9ea4  b       loc_1000b9e58
  1000b9ea8  mov     x20, x0
  1000b9eac  b       loc_1000b9ebc
  1000b9eb0  mov     x20, x0
  1000b9eb4  mov     x0, x23
  1000b9eb8  bl      _objc_release
loc_1000b9ebc:
  1000b9ebc  mov     x0, x22
  1000b9ec0  bl      _objc_release
  1000b9ec4  b       loc_1000b9e58

; ======================================================================
; -[ADInGameStats cheatKillCount:]
; address 0x1000b9ec8  size 464  kind objc
; ======================================================================
  1000b9ec8  stp     x24, x23, [sp, #-0x40]!
  1000b9ecc  stp     x22, x21, [sp, #0x10]
  1000b9ed0  stp     x20, x19, [sp, #0x20]
  1000b9ed4  stp     x29, x30, [sp, #0x30]
  1000b9ed8  add     x29, sp, #0x30
  1000b9edc  mov     x22, x2
  1000b9ee0  mov     x20, x0
  1000b9ee4  adrp    x8, #0x100418000
  1000b9ee8  nop
  1000b9eec  ldr     x1, [x8, #0xf78]
  1000b9ef0  adrp    x2, #0x1003bd000
  1000b9ef4  add     x2, x2, #0xd30                           ; @"ENDLESS"
  1000b9ef8  bl      _objc_msgSend                            ; [self startNewLevel:@"ENDLESS"]
  1000b9efc  adrp    x8, #0x10041a000
  1000b9f00  nop
  1000b9f04  ldr     x21, [x8, #0x870]
  1000b9f08  mov     x0, x20
  1000b9f0c  mov     x1, x21
  1000b9f10  bl      _objc_msgSend                            ; [self enemyList]
  1000b9f14  mov     x29, x29
  1000b9f18  bl      _objc_retainAutoreleasedReturnValue
  1000b9f1c  mov     x24, x0
  1000b9f20  adrp    x8, #0x100417000
  1000b9f24  nop
  1000b9f28  ldr     x23, [x8, #0x40]
  1000b9f2c  adrp    x2, #0x1003c1000
  1000b9f30  add     x2, x2, #0x8b0                           ; @"WeakZombie"
  1000b9f34  mov     x1, x23
  1000b9f38  bl      _objc_msgSend                            ; [[self enemyList] objectForKey:@"WeakZombie"]
  1000b9f3c  mov     x29, x29
  1000b9f40  bl      _objc_retainAutoreleasedReturnValue
  1000b9f44  mov     x19, x0
  1000b9f48  mov     x0, x24
  1000b9f4c  bl      _objc_release
  1000b9f50  cbz     x19, loc_1000ba01c                       ; if ([[self enemyList] objectForKey:@"WeakZombie"] == 0)
  1000b9f54  adrp    x2, #0x1003ba000
  1000b9f58  add     x2, x2, #0x1d0                           ; @"Killed"
  1000b9f5c  mov     x0, x19
  1000b9f60  mov     x1, x23
  1000b9f64  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:@"WeakZombie"] objectForKey:@"Killed"]
  1000b9f68  mov     x29, x29
  1000b9f6c  bl      _objc_retainAutoreleasedReturnValue
  1000b9f70  mov     x23, x0
  1000b9f74  adrp    x8, #0x100417000
  1000b9f78  nop
  1000b9f7c  ldr     x1, [x8, #0xb0]
  1000b9f80  bl      _objc_msgSend                            ; [[[[self enemyList] objectForKey:@"WeakZombie"] objectForKey:@"Killed"] integerValue]
  1000b9f84  add     w22, w0, w22                             ; t1 = ([[[[self enemyList] objectForKey:@"WeakZombie"] objectForKey:@"Killed"] integerValue] + arg1)
  1000b9f88  mov     x0, x23
  1000b9f8c  bl      _objc_release
  1000b9f90  adrp    x8, #0x10041d000
  1000b9f94  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000b9f98  adrp    x8, #0x100416000
  1000b9f9c  nop
  1000b9fa0  ldr     x1, [x8, #0xec0]
  1000b9fa4  mov     x2, x22
  1000b9fa8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:t1]
  1000b9fac  mov     x29, x29
  1000b9fb0  bl      _objc_retainAutoreleasedReturnValue
  1000b9fb4  mov     x22, x0
  1000b9fb8  adrp    x8, #0x100416000
  1000b9fbc  nop
  1000b9fc0  ldr     x1, [x8, #0xdc8]
  1000b9fc4  adrp    x3, #0x1003ba000
  1000b9fc8  add     x3, x3, #0x1d0                           ; @"Killed"
  1000b9fcc  mov     x0, x19
  1000b9fd0  mov     x2, x22
  1000b9fd4  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:@"WeakZombie"] setObject:[NSNumber numberWithInt:t1] forKey:@"Killed"]
  1000b9fd8  mov     x0, x22
  1000b9fdc  bl      _objc_release
  1000b9fe0  mov     x0, x20
  1000b9fe4  mov     x1, x21
  1000b9fe8  bl      _objc_msgSend                            ; [self enemyList]
  1000b9fec  mov     x29, x29
  1000b9ff0  bl      _objc_retainAutoreleasedReturnValue
  1000b9ff4  mov     x21, x0
  1000b9ff8  adrp    x8, #0x100418000
  1000b9ffc  nop
  1000ba000  ldr     x1, [x8, #0x318]
  1000ba004  adrp    x3, #0x1003c1000
  1000ba008  add     x3, x3, #0x8b0                           ; @"WeakZombie"
  1000ba00c  mov     x2, x19
  1000ba010  bl      _objc_msgSend                            ; [[self enemyList] setValue:[[self enemyList] objectForKey:@"WeakZombie"] forKey:@"WeakZombie"]
  1000ba014  mov     x0, x21
  1000ba018  bl      _objc_release
loc_1000ba01c:
  1000ba01c  adrp    x8, #0x100419000
  1000ba020  nop
  1000ba024  ldr     x1, [x8, #0x160]
  1000ba028  mov     x0, x20
  1000ba02c  bl      _objc_msgSend                            ; [self endLevel]
  1000ba030  mov     x0, x19
  1000ba034  ldp     x29, x30, [sp, #0x30]
  1000ba038  ldp     x20, x19, [sp, #0x20]
  1000ba03c  ldp     x22, x21, [sp, #0x10]
  1000ba040  ldp     x24, x23, [sp], #0x40
  1000ba044  b       _objc_release
  1000ba048  mov     x20, x0
  1000ba04c  b       loc_1000ba088
  1000ba050  mov     x20, x0
  1000ba054  mov     x0, x24
  1000ba058  b       loc_1000ba08c
  1000ba05c  mov     x20, x0
  1000ba060  mov     x0, x23
  1000ba064  bl      _objc_release
  1000ba068  b       loc_1000ba088
  1000ba06c  mov     x20, x0
  1000ba070  mov     x0, x22
  1000ba074  bl      _objc_release
  1000ba078  b       loc_1000ba088
  1000ba07c  mov     x20, x0
  1000ba080  mov     x0, x21
  1000ba084  bl      _objc_release
loc_1000ba088:
  1000ba088  mov     x0, x19
loc_1000ba08c:
  1000ba08c  bl      _objc_release
  1000ba090  mov     x0, x20
  1000ba094  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats deathByEnemyWithName:]
; address 0x1000ba098  size 424  kind objc
; ======================================================================
  1000ba098  stp     x24, x23, [sp, #-0x40]!
  1000ba09c  stp     x22, x21, [sp, #0x10]
  1000ba0a0  stp     x20, x19, [sp, #0x20]
  1000ba0a4  stp     x29, x30, [sp, #0x30]
  1000ba0a8  add     x29, sp, #0x30
  1000ba0ac  mov     x21, x0
  1000ba0b0  mov     x0, x2
  1000ba0b4  bl      _objc_retain
  1000ba0b8  mov     x19, x0
  1000ba0bc  adrp    x8, #0x10041a000
  1000ba0c0  nop
  1000ba0c4  ldr     x22, [x8, #0x870]
  1000ba0c8  mov     x0, x21
  1000ba0cc  mov     x1, x22
  1000ba0d0  bl      _objc_msgSend                            ; [self enemyList]
  1000ba0d4  mov     x29, x29
  1000ba0d8  bl      _objc_retainAutoreleasedReturnValue
  1000ba0dc  mov     x23, x0
  1000ba0e0  adrp    x8, #0x100417000
  1000ba0e4  nop
  1000ba0e8  ldr     x24, [x8, #0x40]
  1000ba0ec  mov     x1, x24
  1000ba0f0  mov     x2, x19
  1000ba0f4  bl      _objc_msgSend                            ; [[self enemyList] objectForKey:arg1]
  1000ba0f8  mov     x29, x29
  1000ba0fc  bl      _objc_retainAutoreleasedReturnValue
  1000ba100  mov     x20, x0
  1000ba104  mov     x0, x23
  1000ba108  bl      _objc_release
  1000ba10c  adrp    x2, #0x1003bf000
  1000ba110  add     x2, x2, #0x470                           ; @"Casualty"
  1000ba114  mov     x0, x20
  1000ba118  mov     x1, x24
  1000ba11c  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:arg1] objectForKey:@"Casualty"]
  1000ba120  mov     x29, x29
  1000ba124  bl      _objc_retainAutoreleasedReturnValue
  1000ba128  mov     x23, x0
  1000ba12c  adrp    x8, #0x100417000
  1000ba130  nop
  1000ba134  ldr     x1, [x8, #0xb0]
  1000ba138  bl      _objc_msgSend                            ; [[[[self enemyList] objectForKey:arg1] objectForKey:@"Casualty"] integerValue]
  1000ba13c  mov     x24, x0
  1000ba140  mov     x0, x23
  1000ba144  bl      _objc_release
  1000ba148  adrp    x8, #0x10041d000
  1000ba14c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ba150  add     w2, w24, #1
  1000ba154  adrp    x8, #0x100416000
  1000ba158  nop
  1000ba15c  ldr     x1, [x8, #0xec0]
  1000ba160  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[[self enemyList] objectForKey:arg1] objectForKey:@"Casualty"] integerValue] + 1)]
  1000ba164  mov     x29, x29
  1000ba168  bl      _objc_retainAutoreleasedReturnValue
  1000ba16c  mov     x23, x0
  1000ba170  adrp    x8, #0x100416000
  1000ba174  nop
  1000ba178  ldr     x1, [x8, #0xdc8]
  1000ba17c  adrp    x3, #0x1003bf000
  1000ba180  add     x3, x3, #0x470                           ; @"Casualty"
  1000ba184  mov     x0, x20
  1000ba188  mov     x2, x23
  1000ba18c  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:arg1] setObject:[NSNumber numberWithInt:([[[[self enemyList] objectForKey:arg1] objectForKey:@"Casualty"] integerValue] + 1)] forKey:@"Casualty"]
  1000ba190  mov     x0, x23
  1000ba194  bl      _objc_release
  1000ba198  mov     x0, x21
  1000ba19c  mov     x1, x22
  1000ba1a0  bl      _objc_msgSend                            ; [self enemyList]
  1000ba1a4  mov     x29, x29
  1000ba1a8  bl      _objc_retainAutoreleasedReturnValue
  1000ba1ac  mov     x22, x0
  1000ba1b0  adrp    x8, #0x100418000
  1000ba1b4  nop
  1000ba1b8  ldr     x1, [x8, #0x318]
  1000ba1bc  mov     x2, x20
  1000ba1c0  mov     x3, x19
  1000ba1c4  bl      _objc_msgSend                            ; [[self enemyList] setValue:[[self enemyList] objectForKey:arg1] forKey:arg1]
  1000ba1c8  mov     x0, x22
  1000ba1cc  bl      _objc_release
  1000ba1d0  mov     x0, x20
  1000ba1d4  bl      _objc_release
  1000ba1d8  mov     x0, x19
  1000ba1dc  ldp     x29, x30, [sp, #0x30]
  1000ba1e0  ldp     x20, x19, [sp, #0x20]
  1000ba1e4  ldp     x22, x21, [sp, #0x10]
  1000ba1e8  ldp     x24, x23, [sp], #0x40
  1000ba1ec  b       _objc_release
  1000ba1f0  mov     x21, x0
  1000ba1f4  b       loc_1000ba228
  1000ba1f8  mov     x21, x0
  1000ba1fc  b       loc_1000ba230
  1000ba200  mov     x21, x0
  1000ba204  mov     x0, x23
  1000ba208  b       loc_1000ba22c
  1000ba20c  b       loc_1000ba210
loc_1000ba210:
  1000ba210  mov     x21, x0
  1000ba214  mov     x0, x23
  1000ba218  b       loc_1000ba224
  1000ba21c  mov     x21, x0
  1000ba220  mov     x0, x22
loc_1000ba224:
  1000ba224  bl      _objc_release
loc_1000ba228:
  1000ba228  mov     x0, x20
loc_1000ba22c:
  1000ba22c  bl      _objc_release
loc_1000ba230:
  1000ba230  mov     x0, x19
  1000ba234  bl      _objc_release
  1000ba238  mov     x0, x21
  1000ba23c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats decrementCombo]
; address 0x1000ba240  size 96  kind objc
; ======================================================================
  1000ba240  stp     x20, x19, [sp, #-0x20]!
  1000ba244  stp     x29, x30, [sp, #0x10]
  1000ba248  add     x29, sp, #0x10
  1000ba24c  mov     x19, x0
  1000ba250  adrp    x8, #0x100419000
  1000ba254  nop
  1000ba258  ldr     x20, [x8, #0xe8]
  1000ba25c  mov     x1, x20
  1000ba260  bl      _objc_msgSend                            ; [self combo]
  1000ba264  cbz     x0, loc_1000ba294                        ; if ([self combo] == 0)
  1000ba268  mov     x0, x19
  1000ba26c  mov     x1, x20
  1000ba270  bl      _objc_msgSend                            ; [self combo]
  1000ba274  sub     x2, x0, #1
  1000ba278  adrp    x8, #0x100419000
  1000ba27c  nop
  1000ba280  ldr     x1, [x8, #0x150]
  1000ba284  mov     x0, x19
  1000ba288  ldp     x29, x30, [sp, #0x10]
  1000ba28c  ldp     x20, x19, [sp], #0x20
  1000ba290  b       _objc_msgSend                            ; [self setCombo:([self combo] - 1)]
loc_1000ba294:
  1000ba294  ldp     x29, x30, [sp, #0x10]
  1000ba298  ldp     x20, x19, [sp], #0x20
  1000ba29c  ret

; ======================================================================
; -[ADInGameStats updateMeleeWeaponsWithName:Hit:]
; address 0x1000ba2a0  size 212  kind objc
; ======================================================================
  1000ba2a0  stp     x22, x21, [sp, #-0x30]!
  1000ba2a4  stp     x20, x19, [sp, #0x10]
  1000ba2a8  stp     x29, x30, [sp, #0x20]
  1000ba2ac  add     x29, sp, #0x20
  1000ba2b0  mov     x20, x3
  1000ba2b4  mov     x21, x0
  1000ba2b8  mov     x0, x2
  1000ba2bc  bl      _objc_retain
  1000ba2c0  mov     x19, x0
  1000ba2c4  tbz     w20, #0, loc_1000ba2f4                   ; if (!(arg2 & 1))
  1000ba2c8  adrp    x8, #0x10041a000
  1000ba2cc  nop
  1000ba2d0  ldr     x1, [x8, #0x8d8]
  1000ba2d4  mov     x0, x21
  1000ba2d8  bl      _objc_msgSend                            ; [self meleeHits]
  1000ba2dc  add     x2, x0, #1
  1000ba2e0  adrp    x8, #0x10041a000
  1000ba2e4  nop
  1000ba2e8  ldr     x1, [x8, #0x7f0]
  1000ba2ec  mov     x0, x21
  1000ba2f0  bl      _objc_msgSend                            ; [self setMeleeHits:([self meleeHits] + 1)]
loc_1000ba2f4:
  1000ba2f4  adrp    x8, #0x10041a000
  1000ba2f8  nop
  1000ba2fc  ldr     x1, [x8, #0x8c0]
  1000ba300  mov     x0, x21
  1000ba304  bl      _objc_msgSend                            ; [self meleeSwings]
  1000ba308  add     x2, x0, #1
  1000ba30c  adrp    x8, #0x10041a000
  1000ba310  nop
  1000ba314  ldr     x1, [x8, #0x7f8]
  1000ba318  mov     x0, x21
  1000ba31c  bl      _objc_msgSend                            ; [self setMeleeSwings:([self meleeSwings] + 1)]
  1000ba320  adrp    x8, #0x100418000
  1000ba324  nop
  1000ba328  ldr     x1, [x8, #0xf28]
  1000ba32c  fmov    d0, #-1.00000000
  1000ba330  mov     w3, #1
  1000ba334  mov     x0, x21
  1000ba338  mov     x2, x19
  1000ba33c  mov     x4, x20
  1000ba340  mov     w5, #0
  1000ba344  mov     w6, #0
  1000ba348  bl      _objc_msgSend                            ; [self updateDataForWeaponWithName:arg1 FiredShot:1 HitFired:arg2 Killed:0 Critical:0 Time:-1]
  1000ba34c  mov     x0, x19
  1000ba350  ldp     x29, x30, [sp, #0x20]
  1000ba354  ldp     x20, x19, [sp, #0x10]
  1000ba358  ldp     x22, x21, [sp], #0x30
  1000ba35c  b       _objc_release
  1000ba360  mov     x20, x0
  1000ba364  mov     x0, x19
  1000ba368  bl      _objc_release
  1000ba36c  mov     x0, x20
  1000ba370  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats updateDataForWeaponWithName:FiredShot:HitFired:Killed:Critical:Time:]
; address 0x1000ba374  size 1432  kind objc
; ======================================================================
  1000ba374  stp     d9, d8, [sp, #-0x70]!
  1000ba378  stp     x28, x27, [sp, #0x10]
  1000ba37c  stp     x26, x25, [sp, #0x20]
  1000ba380  stp     x24, x23, [sp, #0x30]
  1000ba384  stp     x22, x21, [sp, #0x40]
  1000ba388  stp     x20, x19, [sp, #0x50]
  1000ba38c  stp     x29, x30, [sp, #0x60]
  1000ba390  add     x29, sp, #0x60
  1000ba394  mov     v8.16b, v0.16b
  1000ba398  mov     x23, x6
  1000ba39c  mov     x24, x5
  1000ba3a0  mov     x25, x4
  1000ba3a4  mov     x26, x3
  1000ba3a8  mov     x22, x0
  1000ba3ac  mov     x0, x2
  1000ba3b0  bl      _objc_retain
  1000ba3b4  mov     x19, x0
  1000ba3b8  adrp    x8, #0x10041a000
  1000ba3bc  nop
  1000ba3c0  ldr     x27, [x8, #0x898]
  1000ba3c4  mov     x0, x22
  1000ba3c8  mov     x1, x27
  1000ba3cc  bl      _objc_msgSend                            ; [self weaponsData]
  1000ba3d0  mov     x29, x29
  1000ba3d4  bl      _objc_retainAutoreleasedReturnValue
  1000ba3d8  mov     x28, x0
  1000ba3dc  adrp    x8, #0x100417000
  1000ba3e0  nop
  1000ba3e4  ldr     x21, [x8, #0x40]
  1000ba3e8  mov     x1, x21
  1000ba3ec  mov     x2, x19
  1000ba3f0  bl      _objc_msgSend                            ; [[self weaponsData] objectForKey:arg1]
  1000ba3f4  mov     x29, x29
  1000ba3f8  bl      _objc_retainAutoreleasedReturnValue
  1000ba3fc  mov     x20, x0
  1000ba400  mov     x0, x28
  1000ba404  bl      _objc_release
  1000ba408  cbnz    x20, loc_1000ba47c                       ; if ([[self weaponsData] objectForKey:arg1] != 0)
  1000ba40c  mov     x0, x22
  1000ba410  mov     x1, x27
  1000ba414  bl      _objc_msgSend                            ; [self weaponsData]
  1000ba418  mov     x29, x29
  1000ba41c  bl      _objc_retainAutoreleasedReturnValue
  1000ba420  mov     x27, x0
  1000ba424  adrp    x8, #0x10041d000
  1000ba428  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000ba42c  adrp    x8, #0x100416000
  1000ba430  nop
  1000ba434  ldr     x1, [x8, #0xac8]
  1000ba438  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000ba43c  adrp    x8, #0x100416000
  1000ba440  nop
  1000ba444  ldr     x1, [x8, #0xab8]
  1000ba448  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000ba44c  mov     x28, x0
  1000ba450  adrp    x8, #0x100416000
  1000ba454  nop
  1000ba458  ldr     x1, [x8, #0xdc8]
  1000ba45c  mov     x0, x27
  1000ba460  mov     x2, x28
  1000ba464  mov     x3, x19
  1000ba468  bl      _objc_msgSend                            ; [[self weaponsData] setObject:[[NSMutableDictionary alloc] init] forKey:arg1]
  1000ba46c  mov     x0, x28
  1000ba470  bl      _objc_release
  1000ba474  mov     x0, x27
  1000ba478  bl      _objc_release
loc_1000ba47c:
  1000ba47c  cbz     w26, loc_1000ba50c                       ; if (arg2 == 0)
  1000ba480  adrp    x2, #0x1003ba000
  1000ba484  add     x2, x2, #0x290                           ; @"shotsFired"
  1000ba488  mov     x0, x20
  1000ba48c  mov     x1, x21
  1000ba490  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsFired"]
  1000ba494  mov     x29, x29
  1000ba498  bl      _objc_retainAutoreleasedReturnValue
  1000ba49c  mov     x27, x0
  1000ba4a0  adrp    x8, #0x100417000
  1000ba4a4  nop
  1000ba4a8  ldr     x1, [x8, #0x110]
  1000ba4ac  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsFired"] intValue]
  1000ba4b0  mov     x28, x0
  1000ba4b4  mov     x0, x27
  1000ba4b8  bl      _objc_release
  1000ba4bc  adrp    x8, #0x10041d000
  1000ba4c0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ba4c4  add     w2, w28, #1
  1000ba4c8  adrp    x8, #0x100416000
  1000ba4cc  nop
  1000ba4d0  ldr     x1, [x8, #0xec0]
  1000ba4d4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsFired"] intValue] + 1)]
  1000ba4d8  mov     x29, x29
  1000ba4dc  bl      _objc_retainAutoreleasedReturnValue
  1000ba4e0  mov     x27, x0
  1000ba4e4  adrp    x8, #0x100418000
  1000ba4e8  nop
  1000ba4ec  ldr     x1, [x8, #0x318]
  1000ba4f0  adrp    x3, #0x1003ba000
  1000ba4f4  add     x3, x3, #0x290                           ; @"shotsFired"
  1000ba4f8  mov     x0, x20
  1000ba4fc  mov     x2, x27
  1000ba500  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] setValue:[NSNumber numberWithInt:([[[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsFired"] intValue] + 1)] forKey:@"shotsFired"]
  1000ba504  mov     x0, x27
  1000ba508  bl      _objc_release
loc_1000ba50c:
  1000ba50c  cbz     w25, loc_1000ba59c                       ; if (arg3 == 0)
  1000ba510  adrp    x2, #0x1003ba000
  1000ba514  add     x2, x2, #0x2d0                           ; @"shotsHit"
  1000ba518  mov     x0, x20
  1000ba51c  mov     x1, x21
  1000ba520  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsHit"]
  1000ba524  mov     x29, x29
  1000ba528  bl      _objc_retainAutoreleasedReturnValue
  1000ba52c  mov     x27, x0
  1000ba530  adrp    x8, #0x100417000
  1000ba534  nop
  1000ba538  ldr     x1, [x8, #0x110]
  1000ba53c  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsHit"] intValue]
  1000ba540  mov     x28, x0
  1000ba544  mov     x0, x27
  1000ba548  bl      _objc_release
  1000ba54c  adrp    x8, #0x10041d000
  1000ba550  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ba554  add     w2, w28, #1
  1000ba558  adrp    x8, #0x100416000
  1000ba55c  nop
  1000ba560  ldr     x1, [x8, #0xec0]
  1000ba564  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsHit"] intValue] + 1)]
  1000ba568  mov     x29, x29
  1000ba56c  bl      _objc_retainAutoreleasedReturnValue
  1000ba570  mov     x27, x0
  1000ba574  adrp    x8, #0x100418000
  1000ba578  nop
  1000ba57c  ldr     x1, [x8, #0x318]
  1000ba580  adrp    x3, #0x1003ba000
  1000ba584  add     x3, x3, #0x2d0                           ; @"shotsHit"
  1000ba588  mov     x0, x20
  1000ba58c  mov     x2, x27
  1000ba590  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] setValue:[NSNumber numberWithInt:([[[[self weaponsData] objectForKey:arg1] objectForKey:@"shotsHit"] intValue] + 1)] forKey:@"shotsHit"]
  1000ba594  mov     x0, x27
  1000ba598  bl      _objc_release
loc_1000ba59c:
  1000ba59c  cmp     w26, #1
  1000ba5a0  b.ne    loc_1000ba5bc                            ; if (arg2 != 1)
  1000ba5a4  tbnz    w25, #0, loc_1000ba5bc                   ; if ((arg3 & 1))
  1000ba5a8  adrp    x8, #0x10041a000
  1000ba5ac  nop
  1000ba5b0  ldr     x1, [x8, #0x8e0]
  1000ba5b4  mov     x0, x22
  1000ba5b8  bl      _objc_msgSend                            ; [self decrementCombo]
loc_1000ba5bc:
  1000ba5bc  cbz     w24, loc_1000ba64c                       ; if (arg4 == 0)
  1000ba5c0  adrp    x2, #0x1003ba000
  1000ba5c4  add     x2, x2, #0x230                           ; @"kills"
  1000ba5c8  mov     x0, x20
  1000ba5cc  mov     x1, x21
  1000ba5d0  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] objectForKey:@"kills"]
  1000ba5d4  mov     x29, x29
  1000ba5d8  bl      _objc_retainAutoreleasedReturnValue
  1000ba5dc  mov     x24, x0
  1000ba5e0  adrp    x8, #0x100417000
  1000ba5e4  nop
  1000ba5e8  ldr     x1, [x8, #0x110]
  1000ba5ec  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:arg1] objectForKey:@"kills"] intValue]
  1000ba5f0  mov     x25, x0
  1000ba5f4  mov     x0, x24
  1000ba5f8  bl      _objc_release
  1000ba5fc  adrp    x8, #0x10041d000
  1000ba600  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ba604  add     w2, w25, #1
  1000ba608  adrp    x8, #0x100416000
  1000ba60c  nop
  1000ba610  ldr     x1, [x8, #0xec0]
  1000ba614  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[[self weaponsData] objectForKey:arg1] objectForKey:@"kills"] intValue] + 1)]
  1000ba618  mov     x29, x29
  1000ba61c  bl      _objc_retainAutoreleasedReturnValue
  1000ba620  mov     x24, x0
  1000ba624  adrp    x8, #0x100418000
  1000ba628  nop
  1000ba62c  ldr     x1, [x8, #0x318]
  1000ba630  adrp    x3, #0x1003ba000
  1000ba634  add     x3, x3, #0x230                           ; @"kills"
  1000ba638  mov     x0, x20
  1000ba63c  mov     x2, x24
  1000ba640  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] setValue:[NSNumber numberWithInt:([[[[self weaponsData] objectForKey:arg1] objectForKey:@"kills"] intValue] + 1)] forKey:@"kills"]
  1000ba644  mov     x0, x24
  1000ba648  bl      _objc_release
loc_1000ba64c:
  1000ba64c  cbz     w23, loc_1000ba770                       ; if (arg5 == 0)
  1000ba650  adrp    x8, #0x10041a000
  1000ba654  nop
  1000ba658  ldr     x24, [x8, #0x8e8]
  1000ba65c  mov     x0, x22
  1000ba660  mov     x1, x24
  1000ba664  bl      _objc_msgSend                            ; [self weaponCriticalHits]
  1000ba668  mov     x29, x29
  1000ba66c  bl      _objc_retainAutoreleasedReturnValue
  1000ba670  mov     x23, x0
  1000ba674  adrp    x2, #0x1003ba000
  1000ba678  add     x2, x2, #0x2b0                           ; @"displayName"
  1000ba67c  mov     x0, x20
  1000ba680  mov     x1, x21
  1000ba684  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]
  1000ba688  mov     x29, x29
  1000ba68c  bl      _objc_retainAutoreleasedReturnValue
  1000ba690  mov     x25, x0
  1000ba694  mov     x0, x23
  1000ba698  mov     x1, x21
  1000ba69c  mov     x2, x25
  1000ba6a0  bl      _objc_msgSend                            ; [[self weaponCriticalHits] objectForKey:[[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]]
  1000ba6a4  mov     x29, x29
  1000ba6a8  bl      _objc_retainAutoreleasedReturnValue
  1000ba6ac  mov     x27, x0
  1000ba6b0  adrp    x8, #0x100417000
  1000ba6b4  nop
  1000ba6b8  ldr     x1, [x8, #0x110]
  1000ba6bc  bl      _objc_msgSend                            ; [[[self weaponCriticalHits] objectForKey:[[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]] intValue]
  1000ba6c0  mov     x26, x0
  1000ba6c4  mov     x0, x27
  1000ba6c8  bl      _objc_release
  1000ba6cc  mov     x0, x25
  1000ba6d0  bl      _objc_release
  1000ba6d4  mov     x0, x23
  1000ba6d8  bl      _objc_release
  1000ba6dc  mov     x0, x22
  1000ba6e0  mov     x1, x24
  1000ba6e4  bl      _objc_msgSend                            ; [self weaponCriticalHits]
  1000ba6e8  mov     x29, x29
  1000ba6ec  bl      _objc_retainAutoreleasedReturnValue
  1000ba6f0  mov     x22, x0
  1000ba6f4  adrp    x8, #0x10041d000
  1000ba6f8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ba6fc  add     w2, w26, #1
  1000ba700  adrp    x8, #0x100416000
  1000ba704  nop
  1000ba708  ldr     x1, [x8, #0xec0]
  1000ba70c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[[self weaponCriticalHits] objectForKey:[[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]] intValue] + 1)]
  1000ba710  mov     x29, x29
  1000ba714  bl      _objc_retainAutoreleasedReturnValue
  1000ba718  mov     x23, x0
  1000ba71c  adrp    x2, #0x1003ba000
  1000ba720  add     x2, x2, #0x2b0                           ; @"displayName"
  1000ba724  mov     x0, x20
  1000ba728  mov     x1, x21
  1000ba72c  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]
  1000ba730  mov     x29, x29
  1000ba734  bl      _objc_retainAutoreleasedReturnValue
  1000ba738  mov     x24, x0
  1000ba73c  adrp    x8, #0x100418000
  1000ba740  nop
  1000ba744  ldr     x1, [x8, #0x318]
  1000ba748  mov     x0, x22
  1000ba74c  mov     x2, x23
  1000ba750  mov     x3, x24
  1000ba754  bl      _objc_msgSend                            ; [[self weaponCriticalHits] setValue:[NSNumber numberWithInt:([[[self weaponCriticalHits] objectForKey:[[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]] intValue] + 1)] forKey:[[[self weaponsData] objectForKey:arg1] objectForKey:@"displayName"]]
  1000ba758  mov     x0, x24
  1000ba75c  bl      _objc_release
  1000ba760  mov     x0, x23
  1000ba764  bl      _objc_release
  1000ba768  mov     x0, x22
  1000ba76c  bl      _objc_release
loc_1000ba770:
  1000ba770  fcmp    d8, #0.0
  1000ba774  b.le    loc_1000ba804                            ; if (arg6 <= (or unordered) 0.0)
  1000ba778  adrp    x2, #0x1003ba000
  1000ba77c  add     x2, x2, #0x250                           ; @"timeSpentWithWeapon"
  1000ba780  mov     x0, x20
  1000ba784  mov     x1, x21
  1000ba788  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] objectForKey:@"timeSpentWithWeapon"]
  1000ba78c  mov     x29, x29
  1000ba790  bl      _objc_retainAutoreleasedReturnValue
  1000ba794  mov     x22, x0
  1000ba798  adrp    x8, #0x100417000
  1000ba79c  nop
  1000ba7a0  ldr     x1, [x8, #0x3d8]
  1000ba7a4  bl      _objc_msgSend                            ; [[[[self weaponsData] objectForKey:arg1] objectForKey:@"timeSpentWithWeapon"] doubleValue]
  1000ba7a8  mov     v9.16b, v0.16b
  1000ba7ac  mov     x0, x22
  1000ba7b0  bl      _objc_release
  1000ba7b4  adrp    x8, #0x10041d000
  1000ba7b8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000ba7bc  fadd    d0, d9, d8                               ; t1 = ([[[[self weaponsData] objectForKey:arg1] objectForKey:@"timeSpentWithWeapon"] doubleValue] + arg6)
  1000ba7c0  adrp    x8, #0x100419000
  1000ba7c4  nop
  1000ba7c8  ldr     x1, [x8, #0x60]
  1000ba7cc  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:t1]
  1000ba7d0  mov     x29, x29
  1000ba7d4  bl      _objc_retainAutoreleasedReturnValue
  1000ba7d8  mov     x22, x0
  1000ba7dc  adrp    x8, #0x100418000
  1000ba7e0  nop
  1000ba7e4  ldr     x1, [x8, #0x318]
  1000ba7e8  adrp    x3, #0x1003ba000
  1000ba7ec  add     x3, x3, #0x250                           ; @"timeSpentWithWeapon"
  1000ba7f0  mov     x0, x20
  1000ba7f4  mov     x2, x22
  1000ba7f8  bl      _objc_msgSend                            ; [[[self weaponsData] objectForKey:arg1] setValue:[NSNumber numberWithDouble:t1] forKey:@"timeSpentWithWeapon"]
  1000ba7fc  mov     x0, x22
  1000ba800  bl      _objc_release
loc_1000ba804:
  1000ba804  mov     x0, x20
  1000ba808  bl      _objc_release
  1000ba80c  mov     x0, x19
  1000ba810  ldp     x29, x30, [sp, #0x60]
  1000ba814  ldp     x20, x19, [sp, #0x50]
  1000ba818  ldp     x22, x21, [sp, #0x40]
  1000ba81c  ldp     x24, x23, [sp, #0x30]
  1000ba820  ldp     x26, x25, [sp, #0x20]
  1000ba824  ldp     x28, x27, [sp, #0x10]
  1000ba828  ldp     d9, d8, [sp], #0x70
  1000ba82c  b       _objc_release
  1000ba830  mov     x21, x0
  1000ba834  b       loc_1000ba8e4
  1000ba838  mov     x21, x0
  1000ba83c  b       loc_1000ba8ec
  1000ba840  mov     x21, x0
  1000ba844  mov     x0, x28
  1000ba848  b       loc_1000ba8e8
  1000ba84c  b       loc_1000ba85c
  1000ba850  b       loc_1000ba85c
  1000ba854  b       loc_1000ba85c
  1000ba858  b       loc_1000ba85c
loc_1000ba85c:
  1000ba85c  mov     x21, x0
loc_1000ba860:
  1000ba860  mov     x0, x27
  1000ba864  bl      _objc_release
  1000ba868  b       loc_1000ba8e4
  1000ba86c  b       loc_1000ba870
loc_1000ba870:
  1000ba870  mov     x21, x0
  1000ba874  mov     x0, x24
  1000ba878  bl      _objc_release
  1000ba87c  b       loc_1000ba8e4
  1000ba880  mov     x21, x0
  1000ba884  b       loc_1000ba8a4
  1000ba888  mov     x21, x0
  1000ba88c  b       loc_1000ba89c
  1000ba890  mov     x21, x0
  1000ba894  mov     x0, x27
  1000ba898  bl      _objc_release
loc_1000ba89c:
  1000ba89c  mov     x0, x25
  1000ba8a0  bl      _objc_release
loc_1000ba8a4:
  1000ba8a4  mov     x0, x23
  1000ba8a8  bl      _objc_release
  1000ba8ac  b       loc_1000ba8e4
  1000ba8b0  b       loc_1000ba8d8
  1000ba8b4  mov     x21, x0
  1000ba8b8  b       loc_1000ba8c8
  1000ba8bc  mov     x21, x0
  1000ba8c0  mov     x0, x24
  1000ba8c4  bl      _objc_release
loc_1000ba8c8:
  1000ba8c8  mov     x0, x23
  1000ba8cc  bl      _objc_release
  1000ba8d0  b       loc_1000ba8dc
  1000ba8d4  b       loc_1000ba8d8
loc_1000ba8d8:
  1000ba8d8  mov     x21, x0
loc_1000ba8dc:
  1000ba8dc  mov     x0, x22
  1000ba8e0  bl      _objc_release
loc_1000ba8e4:
  1000ba8e4  mov     x0, x20
loc_1000ba8e8:
  1000ba8e8  bl      _objc_release
loc_1000ba8ec:
  1000ba8ec  mov     x0, x19
  1000ba8f0  bl      _objc_release
  1000ba8f4  mov     x0, x21
  1000ba8f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000ba8fc  mov     x21, x0
  1000ba900  mov     x0, x28
  1000ba904  bl      _objc_release
  1000ba908  b       loc_1000ba860

; ======================================================================
; -[ADInGameStats setCombo:]
; address 0x1000ba90c  size 112  kind objc
; ======================================================================
  1000ba90c  stp     x22, x21, [sp, #-0x30]!
  1000ba910  stp     x20, x19, [sp, #0x10]
  1000ba914  stp     x29, x30, [sp, #0x20]
  1000ba918  add     x29, sp, #0x20
  1000ba91c  mov     x20, x2
  1000ba920  mov     x19, x0
  1000ba924  adrp    x8, #0x100420000
  1000ba928  ldrsw   x21, [x8, #0x284]                        ; ivar offset ADInGameStats._combo (+0x38)
  1000ba92c  str     x20, [x19, x21]                          ; self->_combo = arg1
  1000ba930  adrp    x8, #0x100418000
  1000ba934  nop
  1000ba938  ldr     x1, [x8, #0x798]
  1000ba93c  bl      _objc_msgSend                            ; [self highestCombo]
  1000ba940  cmp     x0, x20
  1000ba944  b.hs    loc_1000ba96c                            ; if ([self highestCombo] >=u arg1)
  1000ba948  ldr     x2, [x19, x21]                           ; x2 = self->_combo
  1000ba94c  adrp    x8, #0x10041a000
  1000ba950  nop
  1000ba954  ldr     x1, [x8, #0x7d8]
  1000ba958  mov     x0, x19
  1000ba95c  ldp     x29, x30, [sp, #0x20]
  1000ba960  ldp     x20, x19, [sp, #0x10]
  1000ba964  ldp     x22, x21, [sp], #0x30
  1000ba968  b       _objc_msgSend                            ; [self setHighestCombo:self->_combo]
loc_1000ba96c:
  1000ba96c  ldp     x29, x30, [sp, #0x20]
  1000ba970  ldp     x20, x19, [sp, #0x10]
  1000ba974  ldp     x22, x21, [sp], #0x30
  1000ba978  ret

; ======================================================================
; -[ADInGameStats setChallengeTimeElapsed:]
; address 0x1000ba97c  size 96  kind objc
; ======================================================================
  1000ba97c  stp     d9, d8, [sp, #-0x30]!
  1000ba980  stp     x20, x19, [sp, #0x10]
  1000ba984  stp     x29, x30, [sp, #0x20]
  1000ba988  add     x29, sp, #0x20
  1000ba98c  mov     v8.16b, v0.16b
  1000ba990  mov     x19, x0
  1000ba994  adrp    x8, #0x10041a000
  1000ba998  nop
  1000ba99c  ldr     x1, [x8, #0x8f0]
  1000ba9a0  bl      _objc_msgSend                            ; [self challengeTimeElapsedCalls]
  1000ba9a4  fmov    d1, #1.00000000
  1000ba9a8  fadd    d0, d0, d1
  1000ba9ac  adrp    x8, #0x10041a000
  1000ba9b0  nop
  1000ba9b4  ldr     x1, [x8, #0x8f8]
  1000ba9b8  mov     x0, x19
  1000ba9bc  bl      _objc_msgSend                            ; [self setChallengeTimeElapsedCalls:([self challengeTimeElapsedCalls] + 1)]
  1000ba9c0  adrp    x8, #0x100420000
  1000ba9c4  ldrsw   x8, [x8, #0x288]                         ; ivar offset ADInGameStats.challengeTimeElapsedIvar (+0x10)
  1000ba9c8  str     d8, [x19, x8]                            ; self->challengeTimeElapsedIvar = arg1
  1000ba9cc  ldp     x29, x30, [sp, #0x20]
  1000ba9d0  ldp     x20, x19, [sp, #0x10]
  1000ba9d4  ldp     d9, d8, [sp], #0x30
  1000ba9d8  ret

; ======================================================================
; -[ADInGameStats challengeTimeElapsed]
; address 0x1000ba9dc  size 16  kind objc
; ======================================================================
  1000ba9dc  adrp    x8, #0x100420000
  1000ba9e0  ldrsw   x8, [x8, #0x288]                         ; ivar offset ADInGameStats.challengeTimeElapsedIvar (+0x10)
  1000ba9e4  ldr     d0, [x0, x8]                             ; d0 = self->challengeTimeElapsedIvar
  1000ba9e8  ret

; ======================================================================
; -[ADInGameStats setTimeElapsed:]
; address 0x1000ba9ec  size 96  kind objc
; ======================================================================
  1000ba9ec  stp     d9, d8, [sp, #-0x30]!
  1000ba9f0  stp     x20, x19, [sp, #0x10]
  1000ba9f4  stp     x29, x30, [sp, #0x20]
  1000ba9f8  add     x29, sp, #0x20
  1000ba9fc  mov     v8.16b, v0.16b
  1000baa00  mov     x19, x0
  1000baa04  adrp    x8, #0x10041a000
  1000baa08  nop
  1000baa0c  ldr     x1, [x8, #0x900]
  1000baa10  bl      _objc_msgSend                            ; [self timeElapsedCalls]
  1000baa14  fmov    d1, #1.00000000
  1000baa18  fadd    d0, d0, d1
  1000baa1c  adrp    x8, #0x10041a000
  1000baa20  nop
  1000baa24  ldr     x1, [x8, #0x908]
  1000baa28  mov     x0, x19
  1000baa2c  bl      _objc_msgSend                            ; [self setTimeElapsedCalls:([self timeElapsedCalls] + 1)]
  1000baa30  adrp    x8, #0x100420000
  1000baa34  ldrsw   x8, [x8, #0x28c]                         ; ivar offset ADInGameStats.timeElapsedIvar (+0x18)
  1000baa38  str     d8, [x19, x8]                            ; self->timeElapsedIvar = arg1
  1000baa3c  ldp     x29, x30, [sp, #0x20]
  1000baa40  ldp     x20, x19, [sp, #0x10]
  1000baa44  ldp     d9, d8, [sp], #0x30
  1000baa48  ret

; ======================================================================
; -[ADInGameStats timeElapsed]
; address 0x1000baa4c  size 16  kind objc
; ======================================================================
  1000baa4c  adrp    x8, #0x100420000
  1000baa50  ldrsw   x8, [x8, #0x28c]                         ; ivar offset ADInGameStats.timeElapsedIvar (+0x18)
  1000baa54  ldr     d0, [x0, x8]                             ; d0 = self->timeElapsedIvar
  1000baa58  ret

; ======================================================================
; -[ADInGameStats setBrickTime:]
; address 0x1000baa5c  size 96  kind objc
; ======================================================================
  1000baa5c  stp     d9, d8, [sp, #-0x30]!
  1000baa60  stp     x20, x19, [sp, #0x10]
  1000baa64  stp     x29, x30, [sp, #0x20]
  1000baa68  add     x29, sp, #0x20
  1000baa6c  mov     v8.16b, v0.16b
  1000baa70  mov     x19, x0
  1000baa74  adrp    x8, #0x10041a000
  1000baa78  nop
  1000baa7c  ldr     x1, [x8, #0x910]
  1000baa80  bl      _objc_msgSend                            ; [self brickTimeCalls]
  1000baa84  fmov    d1, #1.00000000
  1000baa88  fadd    d0, d0, d1
  1000baa8c  adrp    x8, #0x10041a000
  1000baa90  nop
  1000baa94  ldr     x1, [x8, #0x918]
  1000baa98  mov     x0, x19
  1000baa9c  bl      _objc_msgSend                            ; [self setBrickTimeCalls:([self brickTimeCalls] + 1)]
  1000baaa0  adrp    x8, #0x100420000
  1000baaa4  ldrsw   x8, [x8, #0x290]                         ; ivar offset ADInGameStats.brickTimeIvar (+0x8)
  1000baaa8  str     d8, [x19, x8]                            ; self->brickTimeIvar = arg1
  1000baaac  ldp     x29, x30, [sp, #0x20]
  1000baab0  ldp     x20, x19, [sp, #0x10]
  1000baab4  ldp     d9, d8, [sp], #0x30
  1000baab8  ret

; ======================================================================
; -[ADInGameStats brickTime]
; address 0x1000baabc  size 16  kind objc
; ======================================================================
  1000baabc  adrp    x8, #0x100420000
  1000baac0  ldrsw   x8, [x8, #0x290]                         ; ivar offset ADInGameStats.brickTimeIvar (+0x8)
  1000baac4  ldr     d0, [x0, x8]                             ; d0 = self->brickTimeIvar
  1000baac8  ret

; ======================================================================
; -[ADInGameStats currentAccuracy]
; address 0x1000baacc  size 112  kind objc
; ======================================================================
  1000baacc  stp     d9, d8, [sp, #-0x30]!
  1000baad0  stp     x20, x19, [sp, #0x10]
  1000baad4  stp     x29, x30, [sp, #0x20]
  1000baad8  add     x29, sp, #0x20
  1000baadc  mov     x19, x0
  1000baae0  adrp    x8, #0x10041a000
  1000baae4  nop
  1000baae8  ldr     x20, [x8, #0x8b0]
  1000baaec  mov     x1, x20
  1000baaf0  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000baaf4  cbz     x0, loc_1000bab28                        ; if ([self totalShotsFired] == 0)
  1000baaf8  adrp    x8, #0x10041a000
  1000baafc  nop
  1000bab00  ldr     x1, [x8, #0x8b8]
  1000bab04  mov     x0, x19
  1000bab08  bl      _objc_msgSend                            ; [self shotsOnTarget]
  1000bab0c  ucvtf   s8, x0
  1000bab10  mov     x0, x19
  1000bab14  mov     x1, x20
  1000bab18  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000bab1c  ucvtf   s0, x0
  1000bab20  fdiv    s0, s8, s0
  1000bab24  b       loc_1000bab2c
loc_1000bab28:
  1000bab28  movi    v0.16b, #0
loc_1000bab2c:
  1000bab2c  ldp     x29, x30, [sp, #0x20]
  1000bab30  ldp     x20, x19, [sp, #0x10]
  1000bab34  ldp     d9, d8, [sp], #0x30
  1000bab38  ret

; ======================================================================
; -[ADInGameStats computeCurrentEnemyKillCount]
; address 0x1000bab3c  size 396  kind objc
; ======================================================================
  1000bab3c  stp     x28, x27, [sp, #-0x60]!
  1000bab40  stp     x26, x25, [sp, #0x10]
  1000bab44  stp     x24, x23, [sp, #0x20]
  1000bab48  stp     x22, x21, [sp, #0x30]
  1000bab4c  stp     x20, x19, [sp, #0x40]
  1000bab50  stp     x29, x30, [sp, #0x50]
  1000bab54  add     x29, sp, #0x50
  1000bab58  mov     x19, x0
  1000bab5c  adrp    x8, #0x10041a000
  1000bab60  nop
  1000bab64  ldr     x20, [x8, #0x870]
  1000bab68  mov     x1, x20
  1000bab6c  bl      _objc_msgSend                            ; [self enemyList]
  1000bab70  mov     x29, x29
  1000bab74  bl      _objc_retainAutoreleasedReturnValue
  1000bab78  mov     x21, x0
  1000bab7c  bl      _objc_release
  1000bab80  cbz     x21, loc_1000bac7c                       ; if ([self enemyList] == 0)
  1000bab84  mov     x0, x19
  1000bab88  mov     x1, x20
  1000bab8c  bl      _objc_msgSend                            ; [self enemyList]
  1000bab90  mov     x29, x29
  1000bab94  bl      _objc_retainAutoreleasedReturnValue
  1000bab98  mov     x21, x0
  1000bab9c  adrp    x8, #0x100419000
  1000baba0  nop
  1000baba4  ldr     x1, [x8, #0xec8]
  1000baba8  bl      _objc_msgSend                            ; [[self enemyList] objectEnumerator]
  1000babac  mov     x29, x29
  1000babb0  bl      _objc_retainAutoreleasedReturnValue
  1000babb4  mov     x19, x0
  1000babb8  mov     x0, x21
  1000babbc  bl      _objc_release
  1000babc0  mov     x25, #0
  1000babc4  mov     x20, #0
  1000babc8  adrp    x8, #0x100417000
  1000babcc  nop
  1000babd0  ldr     x21, [x8, #0xa20]
  1000babd4  adrp    x8, #0x100417000
  1000babd8  nop
  1000babdc  ldr     x22, [x8, #0x40]
  1000babe0  adrp    x8, #0x100417000
  1000babe4  add     x8, x8, #0xb0                            ; &@selector(integerValue)
  1000babe8  ldr     x23, [x8]
  1000babec  adrp    x24, #0x1003ba000
  1000babf0  add     x24, x24, #0x1d0                         ; @"Killed"
  1000babf4  b       loc_1000bac08
loc_1000babf8:
  1000babf8  mov     x0, x25
  1000babfc  bl      _objc_release
  1000bac00  add     x20, x27, x20                            ; t1 = ([[[[[self enemyList] objectEnumerator] nextObject] objectForKey:@"Killed"] integerValue] + x20)
  1000bac04  mov     x25, x26
loc_1000bac08:
  1000bac08  mov     x0, x19
  1000bac0c  mov     x1, x21
  1000bac10  bl      _objc_msgSend                            ; [[[self enemyList] objectEnumerator] nextObject]
  1000bac14  mov     x29, x29
  1000bac18  bl      _objc_retainAutoreleasedReturnValue
  1000bac1c  mov     x26, x0
  1000bac20  mov     x0, x25
  1000bac24  bl      _objc_release
  1000bac28  cbz     x26, loc_1000bac70                       ; if ([[[self enemyList] objectEnumerator] nextObject] == 0)
  1000bac2c  mov     x25, x26
  1000bac30  mov     x0, x26
  1000bac34  mov     x1, x22
  1000bac38  mov     x2, x24
  1000bac3c  bl      _objc_msgSend                            ; [[[[self enemyList] objectEnumerator] nextObject] objectForKey:@"Killed"]
  1000bac40  mov     x29, x29
  1000bac44  bl      _objc_retainAutoreleasedReturnValue
  1000bac48  mov     x25, x0
  1000bac4c  mov     x1, x23
  1000bac50  bl      _objc_msgSend                            ; [[[[[self enemyList] objectEnumerator] nextObject] objectForKey:@"Killed"] integerValue]
  1000bac54  mov     x27, x0
  1000bac58  b       loc_1000babf8
  1000bac5c  mov     x20, x0
  1000bac60  mov     x0, x25
  1000bac64  bl      _objc_release
  1000bac68  mov     x25, x26
  1000bac6c  b       loc_1000baca4
loc_1000bac70:
  1000bac70  mov     x0, x19
  1000bac74  bl      _objc_release
  1000bac78  b       loc_1000bac80
loc_1000bac7c:
  1000bac7c  mov     x20, #-1
loc_1000bac80:
  1000bac80  mov     x0, x20
  1000bac84  ldp     x29, x30, [sp, #0x50]
  1000bac88  ldp     x20, x19, [sp, #0x40]
  1000bac8c  ldp     x22, x21, [sp, #0x30]
  1000bac90  ldp     x24, x23, [sp, #0x20]
  1000bac94  ldp     x26, x25, [sp, #0x10]
  1000bac98  ldp     x28, x27, [sp], #0x60
  1000bac9c  ret
  1000baca0  mov     x20, x0
loc_1000baca4:
  1000baca4  mov     x0, x25
  1000baca8  bl      _objc_release
  1000bacac  mov     x0, x19
loc_1000bacb0:
  1000bacb0  bl      _objc_release
  1000bacb4  mov     x0, x20
  1000bacb8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000bacbc  mov     x20, x0
  1000bacc0  mov     x0, x21
  1000bacc4  b       loc_1000bacb0

; ======================================================================
; -[ADInGameStats getShotsFired]
; address 0x1000bacc8  size 16  kind objc
; ======================================================================
  1000bacc8  adrp    x8, #0x10041a000
  1000baccc  nop
  1000bacd0  ldr     x1, [x8, #0x8b0]
  1000bacd4  b       _objc_msgSend                            ; [self totalShotsFired]

; ======================================================================
; -[ADInGameStats getShotsOnTarget]
; address 0x1000bacd8  size 16  kind objc
; ======================================================================
  1000bacd8  adrp    x8, #0x10041a000
  1000bacdc  nop
  1000bace0  ldr     x1, [x8, #0x8b8]
  1000bace4  b       _objc_msgSend                            ; [self shotsOnTarget]

; ======================================================================
; -[ADInGameStats resetPowerupKills]
; address 0x1000bace8  size 20  kind objc
; ======================================================================
  1000bace8  mov     x2, #0
  1000bacec  adrp    x8, #0x10041a000
  1000bacf0  nop
  1000bacf4  ldr     x1, [x8, #0x10]
  1000bacf8  b       _objc_msgSend                            ; [self setEnemyKillsWithPowerup:0]

; ======================================================================
; -[ADInGameStats buildMiscPostGameDataDictionary]
; address 0x1000bacfc  size 4776  kind objc
; ======================================================================
  1000bacfc  stp     x28, x27, [sp, #-0x60]!
  1000bad00  stp     x26, x25, [sp, #0x10]
  1000bad04  stp     x24, x23, [sp, #0x20]
  1000bad08  stp     x22, x21, [sp, #0x30]
  1000bad0c  stp     x20, x19, [sp, #0x40]
  1000bad10  stp     x29, x30, [sp, #0x50]
  1000bad14  add     x29, sp, #0x50
  1000bad18  sub     sp, sp, #0x230
  1000bad1c  mov     x19, x0
  1000bad20  adrp    x8, #0x1003b0000
  1000bad24  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000bad28  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000bad2c  stur    x8, [x29, #-0x58]
  1000bad30  adrp    x8, #0x100418000
  1000bad34  nop
  1000bad38  ldr     x1, [x8, #0xf80]
  1000bad3c  bl      _objc_msgSend                            ; [self gameMode]
  1000bad40  mov     x29, x29
  1000bad44  bl      _objc_retainAutoreleasedReturnValue
  1000bad48  mov     x20, x0
  1000bad4c  adrp    x8, #0x100416000
  1000bad50  nop
  1000bad54  ldr     x1, [x8, #0xf58]
  1000bad58  adrp    x2, #0x1003bd000
  1000bad5c  add     x2, x2, #0xd30                           ; @"ENDLESS"
  1000bad60  bl      _objc_msgSend                            ; [[self gameMode] isEqualToString:@"ENDLESS"]
  1000bad64  mov     x21, x0
  1000bad68  mov     x0, x20
  1000bad6c  bl      _objc_release
  1000bad70  adrp    x8, #0x10041d000
  1000bad74  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000bad78  adrp    x8, #0x100416000
  1000bad7c  nop
  1000bad80  ldr     x1, [x8, #0xac8]
  1000bad84  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000bad88  adrp    x8, #0x100416000
  1000bad8c  nop
  1000bad90  ldr     x1, [x8, #0xab8]
  1000bad94  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000bad98  mov     x20, x0
  1000bad9c  adrp    x8, #0x10041a000
  1000bada0  add     x8, x8, #0x920                           ; &@selector(setPostGameData:)
  1000bada4  ldr     x1, [x8]
  1000bada8  cbz     w21, loc_1000bb540                       ; if ([[self gameMode] isEqualToString:@"ENDLESS"] == 0)
  1000badac  mov     x0, x19
  1000badb0  mov     x2, x20
  1000badb4  bl      _objc_msgSend                            ; [self setPostGameData:[[NSMutableDictionary alloc] init]]
  1000badb8  mov     x0, x20
  1000badbc  bl      _objc_release
  1000badc0  adrp    x8, #0x10041a000
  1000badc4  nop
  1000badc8  ldr     x21, [x8, #0x928]
  1000badcc  mov     x0, x19
  1000badd0  mov     x1, x21
  1000badd4  bl      _objc_msgSend                            ; [self postGameData]
  1000badd8  mov     x29, x29
  1000baddc  bl      _objc_retainAutoreleasedReturnValue
  1000bade0  mov     x25, x0
  1000bade4  adrp    x8, #0x1003b9000
  1000bade8  add     x8, x8, #0xdb0                           ; @"name"
  1000badec  stur    x8, [x29, #-0x78]
  1000badf0  adrp    x8, #0x1003c1000
  1000badf4  add     x8, x8, #0x8d0                           ; @"Enemy kill count"
  1000badf8  stur    x8, [x29, #-0x68]
  1000badfc  adrp    x8, #0x1003ba000
  1000bae00  add     x8, x8, #0x1b0                           ; @"value"
  1000bae04  stur    x8, [x29, #-0x70]
  1000bae08  adrp    x23, #0x10041d000
  1000bae0c  ldr     x20, [x23, #0xf68]                       ; class NSNumber
  1000bae10  adrp    x8, #0x100417000
  1000bae14  nop
  1000bae18  ldr     x26, [x8, #0xda8]
  1000bae1c  mov     x0, x19
  1000bae20  mov     x1, x26
  1000bae24  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000bae28  mov     x2, x0
  1000bae2c  adrp    x8, #0x100417000
  1000bae30  nop
  1000bae34  ldr     x1, [x8, #0xe8]
  1000bae38  str     x1, [sp, #0x18]
  1000bae3c  mov     x0, x20
  1000bae40  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numberOfEnemyKills]]
  1000bae44  mov     x29, x29
  1000bae48  bl      _objc_retainAutoreleasedReturnValue
  1000bae4c  mov     x27, x0
  1000bae50  stur    x27, [x29, #-0x60]
  1000bae54  adrp    x8, #0x10041d000
  1000bae58  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bae5c  adrp    x8, #0x100416000
  1000bae60  nop
  1000bae64  ldr     x20, [x8, #0xcd0]
  1000bae68  sub     x2, x29, #0x68
  1000bae6c  sub     x3, x29, #0x78
  1000bae70  mov     w4, #2
  1000bae74  mov     x1, x20
  1000bae78  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x68] forKeys:&x29[-0x78] count:2]
  1000bae7c  bl      _objc_retain
  1000bae80  mov     x28, x0
  1000bae84  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bae88  adrp    x8, #0x100416000
  1000bae8c  nop
  1000bae90  ldr     x1, [x8, #0xec0]
  1000bae94  str     x1, [sp, #0x20]
  1000bae98  mov     w2, #0
  1000bae9c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  1000baea0  mov     x29, x29
  1000baea4  bl      _objc_retainAutoreleasedReturnValue
  1000baea8  mov     x22, x0
  1000baeac  adrp    x8, #0x100416000
  1000baeb0  nop
  1000baeb4  ldr     x24, [x8, #0xdc8]
  1000baeb8  mov     x0, x25
  1000baebc  mov     x1, x24
  1000baec0  mov     x2, x28
  1000baec4  mov     x3, x22
  1000baec8  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&x29[-0x68] forKeys:&x29[-0x78] count:2] forKey:[NSNumber numberWithInt:0]]
  1000baecc  mov     x0, x22
  1000baed0  bl      _objc_release
  1000baed4  mov     x0, x28
  1000baed8  bl      _objc_release
  1000baedc  mov     x0, x27
  1000baee0  bl      _objc_release
  1000baee4  mov     x0, x25
  1000baee8  bl      _objc_release
  1000baeec  mov     x0, x19
  1000baef0  mov     x1, x21
  1000baef4  bl      _objc_msgSend                            ; [self postGameData]
  1000baef8  mov     x29, x29
  1000baefc  bl      _objc_retainAutoreleasedReturnValue
  1000baf00  mov     x27, x0
  1000baf04  adrp    x8, #0x1003b9000
  1000baf08  add     x8, x8, #0xdb0                           ; @"name"
  1000baf0c  stur    x8, [x29, #-0x98]
  1000baf10  adrp    x8, #0x1003c1000
  1000baf14  add     x8, x8, #0x8f0                           ; @"Shots on target"
  1000baf18  stur    x8, [x29, #-0x88]
  1000baf1c  adrp    x8, #0x1003ba000
  1000baf20  add     x8, x8, #0x1b0                           ; @"value"
  1000baf24  stur    x8, [x29, #-0x90]
  1000baf28  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000baf2c  adrp    x8, #0x10041a000
  1000baf30  nop
  1000baf34  ldr     x1, [x8, #0x8b8]
  1000baf38  mov     x0, x19
  1000baf3c  bl      _objc_msgSend                            ; [self shotsOnTarget]
  1000baf40  mov     x2, x0
  1000baf44  adrp    x8, #0x100417000
  1000baf48  nop
  1000baf4c  ldr     x25, [x8, #0xd80]
  1000baf50  mov     x0, x22
  1000baf54  mov     x1, x25
  1000baf58  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self shotsOnTarget]]
  1000baf5c  mov     x29, x29
  1000baf60  bl      _objc_retainAutoreleasedReturnValue
  1000baf64  mov     x28, x0
  1000baf68  stur    x28, [x29, #-0x80]
  1000baf6c  adrp    x8, #0x10041d000
  1000baf70  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000baf74  sub     x2, x29, #0x88
  1000baf78  sub     x3, x29, #0x98
  1000baf7c  mov     w4, #2
  1000baf80  mov     x1, x20
  1000baf84  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0x88] forKeys:&x29[-0x98] count:2]
  1000baf88  str     x26, [sp, #0x10]
  1000baf8c  bl      _objc_retain
  1000baf90  mov     x22, x0
  1000baf94  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000baf98  mov     w2, #1
  1000baf9c  ldr     x1, [sp, #0x20]
  1000bafa0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000bafa4  mov     x29, x29
  1000bafa8  bl      _objc_retainAutoreleasedReturnValue
  1000bafac  mov     x26, x0
  1000bafb0  mov     x0, x27
  1000bafb4  mov     x1, x24
  1000bafb8  mov     x2, x22
  1000bafbc  mov     x3, x26
  1000bafc0  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&x29[-0x88] forKeys:&x29[-0x98] count:2] forKey:[NSNumber numberWithInt:1]]
  1000bafc4  mov     x0, x26
  1000bafc8  bl      _objc_release
  1000bafcc  mov     x0, x22
  1000bafd0  bl      _objc_release
  1000bafd4  mov     x0, x28
  1000bafd8  bl      _objc_release
  1000bafdc  mov     x0, x27
  1000bafe0  bl      _objc_release
  1000bafe4  mov     x0, x19
  1000bafe8  mov     x1, x21
  1000bafec  bl      _objc_msgSend                            ; [self postGameData]
  1000baff0  mov     x29, x29
  1000baff4  bl      _objc_retainAutoreleasedReturnValue
  1000baff8  mov     x27, x0
  1000baffc  adrp    x8, #0x1003b9000
  1000bb000  add     x8, x8, #0xdb0                           ; @"name"
  1000bb004  stur    x8, [x29, #-0xb8]
  1000bb008  adrp    x8, #0x1003c1000
  1000bb00c  add     x8, x8, #0x910                           ; @"Total shots fired"
  1000bb010  stur    x8, [x29, #-0xa8]
  1000bb014  adrp    x8, #0x1003ba000
  1000bb018  add     x8, x8, #0x1b0                           ; @"value"
  1000bb01c  stur    x8, [x29, #-0xb0]
  1000bb020  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb024  adrp    x8, #0x10041a000
  1000bb028  nop
  1000bb02c  ldr     x1, [x8, #0x8b0]
  1000bb030  mov     x0, x19
  1000bb034  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000bb038  mov     x2, x0
  1000bb03c  mov     x0, x22
  1000bb040  mov     x1, x25
  1000bb044  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self totalShotsFired]]
  1000bb048  mov     x29, x29
  1000bb04c  bl      _objc_retainAutoreleasedReturnValue
  1000bb050  mov     x28, x0
  1000bb054  stur    x28, [x29, #-0xa0]
  1000bb058  adrp    x8, #0x10041d000
  1000bb05c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb060  sub     x2, x29, #0xa8
  1000bb064  sub     x3, x29, #0xb8
  1000bb068  mov     w4, #2
  1000bb06c  mov     x1, x20
  1000bb070  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xa8] forKeys:&x29[-0xb8] count:2]
  1000bb074  bl      _objc_retain
  1000bb078  mov     x22, x0
  1000bb07c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb080  mov     w2, #2
  1000bb084  ldr     x1, [sp, #0x20]
  1000bb088  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000bb08c  mov     x29, x29
  1000bb090  bl      _objc_retainAutoreleasedReturnValue
  1000bb094  mov     x26, x0
  1000bb098  mov     x0, x27
  1000bb09c  mov     x1, x24
  1000bb0a0  mov     x2, x22
  1000bb0a4  mov     x3, x26
  1000bb0a8  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&x29[-0xa8] forKeys:&x29[-0xb8] count:2] forKey:[NSNumber numberWithInt:2]]
  1000bb0ac  mov     x0, x26
  1000bb0b0  bl      _objc_release
  1000bb0b4  mov     x0, x22
  1000bb0b8  bl      _objc_release
  1000bb0bc  mov     x0, x28
  1000bb0c0  bl      _objc_release
  1000bb0c4  mov     x0, x27
  1000bb0c8  bl      _objc_release
  1000bb0cc  mov     x0, x19
  1000bb0d0  mov     x1, x21
  1000bb0d4  bl      _objc_msgSend                            ; [self postGameData]
  1000bb0d8  mov     x29, x29
  1000bb0dc  bl      _objc_retainAutoreleasedReturnValue
  1000bb0e0  mov     x27, x0
  1000bb0e4  adrp    x8, #0x1003b9000
  1000bb0e8  add     x8, x8, #0xdb0                           ; @"name"
  1000bb0ec  stur    x8, [x29, #-0xd8]
  1000bb0f0  adrp    x8, #0x1003c1000
  1000bb0f4  add     x8, x8, #0x930                           ; @"Critical hit count"
  1000bb0f8  stur    x8, [x29, #-0xc8]
  1000bb0fc  adrp    x8, #0x1003ba000
  1000bb100  add     x8, x8, #0x1b0                           ; @"value"
  1000bb104  stur    x8, [x29, #-0xd0]
  1000bb108  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb10c  adrp    x8, #0x10041a000
  1000bb110  nop
  1000bb114  ldr     x1, [x8, #0x930]
  1000bb118  mov     x0, x19
  1000bb11c  bl      _objc_msgSend                            ; [self numCriticalHits]
  1000bb120  mov     x2, x0
  1000bb124  mov     x0, x22
  1000bb128  ldr     x1, [sp, #0x18]
  1000bb12c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numCriticalHits]]
  1000bb130  mov     x29, x29
  1000bb134  bl      _objc_retainAutoreleasedReturnValue
  1000bb138  mov     x28, x0
  1000bb13c  stur    x28, [x29, #-0xc0]
  1000bb140  adrp    x8, #0x10041d000
  1000bb144  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb148  sub     x2, x29, #0xc8
  1000bb14c  sub     x3, x29, #0xd8
  1000bb150  mov     w4, #2
  1000bb154  mov     x1, x20
  1000bb158  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&x29[-0xd8] count:2]
  1000bb15c  bl      _objc_retain
  1000bb160  mov     x22, x0
  1000bb164  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb168  mov     w2, #3
  1000bb16c  ldr     x1, [sp, #0x20]
  1000bb170  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000bb174  mov     x29, x29
  1000bb178  bl      _objc_retainAutoreleasedReturnValue
  1000bb17c  mov     x26, x0
  1000bb180  mov     x0, x27
  1000bb184  mov     x1, x24
  1000bb188  mov     x2, x22
  1000bb18c  mov     x3, x26
  1000bb190  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&x29[-0xc8] forKeys:&x29[-0xd8] count:2] forKey:[NSNumber numberWithInt:3]]
  1000bb194  mov     x0, x26
  1000bb198  bl      _objc_release
  1000bb19c  mov     x0, x22
  1000bb1a0  bl      _objc_release
  1000bb1a4  mov     x0, x28
  1000bb1a8  bl      _objc_release
  1000bb1ac  mov     x0, x27
  1000bb1b0  bl      _objc_release
  1000bb1b4  mov     x0, x19
  1000bb1b8  mov     x1, x21
  1000bb1bc  bl      _objc_msgSend                            ; [self postGameData]
  1000bb1c0  mov     x29, x29
  1000bb1c4  bl      _objc_retainAutoreleasedReturnValue
  1000bb1c8  mov     x27, x0
  1000bb1cc  adrp    x8, #0x1003b9000
  1000bb1d0  add     x8, x8, #0xdb0                           ; @"name"
  1000bb1d4  stur    x8, [x29, #-0xf8]
  1000bb1d8  adrp    x8, #0x1003c1000
  1000bb1dc  add     x8, x8, #0x950                           ; @"Highest combo"
  1000bb1e0  stur    x8, [x29, #-0xe8]
  1000bb1e4  adrp    x8, #0x1003ba000
  1000bb1e8  add     x8, x8, #0x1b0                           ; @"value"
  1000bb1ec  stur    x8, [x29, #-0xf0]
  1000bb1f0  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb1f4  mov     x0, x19
  1000bb1f8  ldr     x1, [sp, #0x10]
  1000bb1fc  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000bb200  mov     x2, x0
  1000bb204  mov     x0, x22
  1000bb208  ldr     x1, [sp, #0x18]
  1000bb20c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numberOfEnemyKills]]
  1000bb210  mov     x29, x29
  1000bb214  bl      _objc_retainAutoreleasedReturnValue
  1000bb218  mov     x26, x0
  1000bb21c  stur    x26, [x29, #-0xe0]
  1000bb220  adrp    x8, #0x10041d000
  1000bb224  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb228  sub     x2, x29, #0xe8
  1000bb22c  sub     x3, x29, #0xf8
  1000bb230  mov     w4, #2
  1000bb234  mov     x1, x20
  1000bb238  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&x29[-0xe8] forKeys:&x29[-0xf8] count:2]
  1000bb23c  bl      _objc_retain
  1000bb240  mov     x22, x0
  1000bb244  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb248  mov     w2, #4
  1000bb24c  ldr     x1, [sp, #0x20]
  1000bb250  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000bb254  mov     x29, x29
  1000bb258  bl      _objc_retainAutoreleasedReturnValue
  1000bb25c  mov     x28, x0
  1000bb260  mov     x0, x27
  1000bb264  mov     x1, x24
  1000bb268  mov     x2, x22
  1000bb26c  mov     x3, x28
  1000bb270  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&x29[-0xe8] forKeys:&x29[-0xf8] count:2] forKey:[NSNumber numberWithInt:4]]
  1000bb274  mov     x0, x28
  1000bb278  bl      _objc_release
  1000bb27c  mov     x0, x22
  1000bb280  bl      _objc_release
  1000bb284  mov     x0, x26
  1000bb288  bl      _objc_release
  1000bb28c  mov     x0, x27
  1000bb290  bl      _objc_release
  1000bb294  mov     x0, x19
  1000bb298  mov     x1, x21
  1000bb29c  bl      _objc_msgSend                            ; [self postGameData]
  1000bb2a0  mov     x29, x29
  1000bb2a4  bl      _objc_retainAutoreleasedReturnValue
  1000bb2a8  mov     x26, x0
  1000bb2ac  adrp    x8, #0x1003b9000
  1000bb2b0  add     x8, x8, #0xdb0                           ; @"name"
  1000bb2b4  str     x8, [sp, #0x168]
  1000bb2b8  adrp    x8, #0x1003c1000
  1000bb2bc  add     x8, x8, #0x970                           ; @"Melee swing count"
  1000bb2c0  str     x8, [sp, #0x178]
  1000bb2c4  adrp    x8, #0x1003ba000
  1000bb2c8  add     x8, x8, #0x1b0                           ; @"value"
  1000bb2cc  str     x8, [sp, #0x170]
  1000bb2d0  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb2d4  adrp    x8, #0x10041a000
  1000bb2d8  nop
  1000bb2dc  ldr     x1, [x8, #0x8c0]
  1000bb2e0  mov     x0, x19
  1000bb2e4  bl      _objc_msgSend                            ; [self meleeSwings]
  1000bb2e8  mov     x2, x0
  1000bb2ec  mov     x0, x22
  1000bb2f0  mov     x1, x25
  1000bb2f4  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self meleeSwings]]
  1000bb2f8  mov     x29, x29
  1000bb2fc  bl      _objc_retainAutoreleasedReturnValue
  1000bb300  mov     x27, x0
  1000bb304  str     x27, [sp, #0x180]
  1000bb308  adrp    x8, #0x10041d000
  1000bb30c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb310  add     x2, sp, #0x178
  1000bb314  add     x3, sp, #0x168
  1000bb318  mov     w4, #2
  1000bb31c  mov     x1, x20
  1000bb320  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x178] forKeys:&sp[0x168] count:2]
  1000bb324  bl      _objc_retain
  1000bb328  mov     x22, x0
  1000bb32c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb330  mov     w2, #5
  1000bb334  ldr     x1, [sp, #0x20]
  1000bb338  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  1000bb33c  mov     x29, x29
  1000bb340  bl      _objc_retainAutoreleasedReturnValue
  1000bb344  mov     x28, x0
  1000bb348  mov     x0, x26
  1000bb34c  mov     x1, x24
  1000bb350  mov     x2, x22
  1000bb354  mov     x3, x28
  1000bb358  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x178] forKeys:&sp[0x168] count:2] forKey:[NSNumber numberWithInt:5]]
  1000bb35c  mov     x0, x28
  1000bb360  bl      _objc_release
  1000bb364  mov     x0, x22
  1000bb368  bl      _objc_release
  1000bb36c  mov     x0, x27
  1000bb370  bl      _objc_release
  1000bb374  mov     x0, x26
  1000bb378  bl      _objc_release
  1000bb37c  mov     x0, x19
  1000bb380  mov     x1, x21
  1000bb384  bl      _objc_msgSend                            ; [self postGameData]
  1000bb388  mov     x29, x29
  1000bb38c  bl      _objc_retainAutoreleasedReturnValue
  1000bb390  mov     x26, x0
  1000bb394  adrp    x8, #0x1003b9000
  1000bb398  add     x8, x8, #0xdb0                           ; @"name"
  1000bb39c  str     x8, [sp, #0x148]
  1000bb3a0  adrp    x8, #0x1003c1000
  1000bb3a4  add     x8, x8, #0x990                           ; @"Melee hit count"
  1000bb3a8  str     x8, [sp, #0x158]
  1000bb3ac  adrp    x8, #0x1003ba000
  1000bb3b0  add     x8, x8, #0x1b0                           ; @"value"
  1000bb3b4  str     x8, [sp, #0x150]
  1000bb3b8  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb3bc  adrp    x8, #0x10041a000
  1000bb3c0  nop
  1000bb3c4  ldr     x1, [x8, #0x8d8]
  1000bb3c8  mov     x0, x19
  1000bb3cc  bl      _objc_msgSend                            ; [self meleeHits]
  1000bb3d0  mov     x2, x0
  1000bb3d4  mov     x0, x22
  1000bb3d8  mov     x1, x25
  1000bb3dc  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self meleeHits]]
  1000bb3e0  mov     x29, x29
  1000bb3e4  bl      _objc_retainAutoreleasedReturnValue
  1000bb3e8  mov     x25, x0
  1000bb3ec  str     x25, [sp, #0x160]
  1000bb3f0  adrp    x8, #0x10041d000
  1000bb3f4  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb3f8  add     x2, sp, #0x158
  1000bb3fc  add     x3, sp, #0x148
  1000bb400  mov     w4, #2
  1000bb404  mov     x1, x20
  1000bb408  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x158] forKeys:&sp[0x148] count:2]
  1000bb40c  bl      _objc_retain
  1000bb410  mov     x22, x0
  1000bb414  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb418  mov     w2, #6
  1000bb41c  ldr     x1, [sp, #0x20]
  1000bb420  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  1000bb424  mov     x29, x29
  1000bb428  bl      _objc_retainAutoreleasedReturnValue
  1000bb42c  mov     x27, x0
  1000bb430  mov     x0, x26
  1000bb434  mov     x1, x24
  1000bb438  mov     x2, x22
  1000bb43c  mov     x3, x27
  1000bb440  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x158] forKeys:&sp[0x148] count:2] forKey:[NSNumber numberWithInt:6]]
  1000bb444  mov     x0, x27
  1000bb448  bl      _objc_release
  1000bb44c  mov     x0, x22
  1000bb450  bl      _objc_release
  1000bb454  mov     x0, x25
  1000bb458  bl      _objc_release
  1000bb45c  mov     x0, x26
  1000bb460  bl      _objc_release
  1000bb464  mov     x0, x19
  1000bb468  mov     x1, x21
  1000bb46c  bl      _objc_msgSend                            ; [self postGameData]
  1000bb470  mov     x29, x29
  1000bb474  bl      _objc_retainAutoreleasedReturnValue
  1000bb478  mov     x21, x0
  1000bb47c  adrp    x8, #0x1003b9000
  1000bb480  add     x8, x8, #0xdb0                           ; @"name"
  1000bb484  str     x8, [sp, #0x128]
  1000bb488  adrp    x8, #0x1003c1000
  1000bb48c  add     x8, x8, #0x9b0                           ; @"Defeated brick count"
  1000bb490  str     x8, [sp, #0x138]
  1000bb494  adrp    x8, #0x1003ba000
  1000bb498  add     x8, x8, #0x1b0                           ; @"value"
  1000bb49c  str     x8, [sp, #0x130]
  1000bb4a0  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb4a4  adrp    x8, #0x10041a000
  1000bb4a8  nop
  1000bb4ac  ldr     x1, [x8, #0x938]
  1000bb4b0  mov     x0, x19
  1000bb4b4  bl      _objc_msgSend                            ; [self numberOfBricksDefeated]
  1000bb4b8  mov     x2, x0
  1000bb4bc  mov     x0, x22
  1000bb4c0  ldr     x1, [sp, #0x18]
  1000bb4c4  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numberOfBricksDefeated]]
  1000bb4c8  mov     x29, x29
  1000bb4cc  bl      _objc_retainAutoreleasedReturnValue
  1000bb4d0  mov     x22, x0
  1000bb4d4  str     x22, [sp, #0x140]
  1000bb4d8  adrp    x8, #0x10041d000
  1000bb4dc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb4e0  add     x2, sp, #0x138
  1000bb4e4  add     x3, sp, #0x128
  1000bb4e8  mov     w4, #2
  1000bb4ec  mov     x1, x20
  1000bb4f0  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x138] forKeys:&sp[0x128] count:2]
  1000bb4f4  adrp    x19, #0x1003b0000
  1000bb4f8  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000bb4fc  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000bb500  bl      _objc_retain
  1000bb504  mov     x20, x0
  1000bb508  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb50c  mov     w2, #7
  1000bb510  ldr     x1, [sp, #0x20]
  1000bb514  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000bb518  mov     x29, x29
  1000bb51c  bl      _objc_retainAutoreleasedReturnValue
  1000bb520  mov     x23, x0
  1000bb524  mov     x0, x21
  1000bb528  mov     x1, x24
  1000bb52c  mov     x2, x20
  1000bb530  mov     x3, x23
  1000bb534  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x138] forKeys:&sp[0x128] count:2] forKey:[NSNumber numberWithInt:7]]
  1000bb538  b       loc_1000bbccc
  1000bb53c  b       loc_1000bbf78
loc_1000bb540:
  1000bb540  mov     x0, x19
  1000bb544  mov     x2, x20
  1000bb548  bl      _objc_msgSend                            ; [self setPostGameData:[[NSMutableDictionary alloc] init]]
  1000bb54c  mov     x0, x20
  1000bb550  bl      _objc_release
  1000bb554  adrp    x8, #0x10041a000
  1000bb558  nop
  1000bb55c  ldr     x21, [x8, #0x928]
  1000bb560  mov     x0, x19
  1000bb564  mov     x1, x21
  1000bb568  bl      _objc_msgSend                            ; [self postGameData]
  1000bb56c  mov     x29, x29
  1000bb570  bl      _objc_retainAutoreleasedReturnValue
  1000bb574  mov     x25, x0
  1000bb578  adrp    x8, #0x1003b9000
  1000bb57c  add     x8, x8, #0xdb0                           ; @"name"
  1000bb580  str     x8, [sp, #0x108]
  1000bb584  adrp    x8, #0x1003c1000
  1000bb588  add     x8, x8, #0x8d0                           ; @"Enemy kill count"
  1000bb58c  str     x8, [sp, #0x118]
  1000bb590  adrp    x8, #0x1003ba000
  1000bb594  add     x8, x8, #0x1b0                           ; @"value"
  1000bb598  str     x8, [sp, #0x110]
  1000bb59c  adrp    x23, #0x10041d000
  1000bb5a0  ldr     x20, [x23, #0xf68]                       ; class NSNumber
  1000bb5a4  adrp    x8, #0x100417000
  1000bb5a8  nop
  1000bb5ac  ldr     x26, [x8, #0xda8]
  1000bb5b0  mov     x0, x19
  1000bb5b4  mov     x1, x26
  1000bb5b8  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000bb5bc  mov     x2, x0
  1000bb5c0  adrp    x8, #0x100417000
  1000bb5c4  nop
  1000bb5c8  ldr     x1, [x8, #0xe8]
  1000bb5cc  str     x1, [sp, #0x18]
  1000bb5d0  mov     x0, x20
  1000bb5d4  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numberOfEnemyKills]]
  1000bb5d8  mov     x29, x29
  1000bb5dc  bl      _objc_retainAutoreleasedReturnValue
  1000bb5e0  mov     x27, x0
  1000bb5e4  str     x27, [sp, #0x120]
  1000bb5e8  adrp    x8, #0x10041d000
  1000bb5ec  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb5f0  adrp    x8, #0x100416000
  1000bb5f4  nop
  1000bb5f8  ldr     x20, [x8, #0xcd0]
  1000bb5fc  add     x2, sp, #0x118
  1000bb600  add     x3, sp, #0x108
  1000bb604  mov     w4, #2
  1000bb608  mov     x1, x20
  1000bb60c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x118] forKeys:&sp[0x108] count:2]
  1000bb610  bl      _objc_retain
  1000bb614  mov     x28, x0
  1000bb618  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb61c  adrp    x8, #0x100416000
  1000bb620  nop
  1000bb624  ldr     x1, [x8, #0xec0]
  1000bb628  str     x1, [sp, #0x20]
  1000bb62c  mov     w2, #0
  1000bb630  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  1000bb634  mov     x29, x29
  1000bb638  bl      _objc_retainAutoreleasedReturnValue
  1000bb63c  mov     x22, x0
  1000bb640  adrp    x8, #0x100416000
  1000bb644  nop
  1000bb648  ldr     x24, [x8, #0xdc8]
  1000bb64c  mov     x0, x25
  1000bb650  mov     x1, x24
  1000bb654  mov     x2, x28
  1000bb658  mov     x3, x22
  1000bb65c  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x118] forKeys:&sp[0x108] count:2] forKey:[NSNumber numberWithInt:0]]
  1000bb660  mov     x0, x22
  1000bb664  bl      _objc_release
  1000bb668  mov     x0, x28
  1000bb66c  bl      _objc_release
  1000bb670  mov     x0, x27
  1000bb674  bl      _objc_release
  1000bb678  mov     x0, x25
  1000bb67c  bl      _objc_release
  1000bb680  mov     x0, x19
  1000bb684  mov     x1, x21
  1000bb688  bl      _objc_msgSend                            ; [self postGameData]
  1000bb68c  mov     x29, x29
  1000bb690  bl      _objc_retainAutoreleasedReturnValue
  1000bb694  mov     x27, x0
  1000bb698  adrp    x8, #0x1003b9000
  1000bb69c  add     x8, x8, #0xdb0                           ; @"name"
  1000bb6a0  str     x8, [sp, #0xe8]
  1000bb6a4  adrp    x8, #0x1003c1000
  1000bb6a8  add     x8, x8, #0x8f0                           ; @"Shots on target"
  1000bb6ac  str     x8, [sp, #0xf8]
  1000bb6b0  adrp    x8, #0x1003ba000
  1000bb6b4  add     x8, x8, #0x1b0                           ; @"value"
  1000bb6b8  str     x8, [sp, #0xf0]
  1000bb6bc  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb6c0  adrp    x8, #0x10041a000
  1000bb6c4  nop
  1000bb6c8  ldr     x1, [x8, #0x8b8]
  1000bb6cc  mov     x0, x19
  1000bb6d0  bl      _objc_msgSend                            ; [self shotsOnTarget]
  1000bb6d4  mov     x2, x0
  1000bb6d8  adrp    x8, #0x100417000
  1000bb6dc  nop
  1000bb6e0  ldr     x25, [x8, #0xd80]
  1000bb6e4  mov     x0, x22
  1000bb6e8  mov     x1, x25
  1000bb6ec  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self shotsOnTarget]]
  1000bb6f0  mov     x29, x29
  1000bb6f4  bl      _objc_retainAutoreleasedReturnValue
  1000bb6f8  mov     x28, x0
  1000bb6fc  str     x28, [sp, #0x100]
  1000bb700  adrp    x8, #0x10041d000
  1000bb704  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb708  add     x2, sp, #0xf8
  1000bb70c  add     x3, sp, #0xe8
  1000bb710  mov     w4, #2
  1000bb714  mov     x1, x20
  1000bb718  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xf8] forKeys:&sp[0xe8] count:2]
  1000bb71c  str     x26, [sp, #0x10]
  1000bb720  bl      _objc_retain
  1000bb724  mov     x22, x0
  1000bb728  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb72c  mov     w2, #1
  1000bb730  ldr     x1, [sp, #0x20]
  1000bb734  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000bb738  mov     x29, x29
  1000bb73c  bl      _objc_retainAutoreleasedReturnValue
  1000bb740  mov     x26, x0
  1000bb744  mov     x0, x27
  1000bb748  mov     x1, x24
  1000bb74c  mov     x2, x22
  1000bb750  mov     x3, x26
  1000bb754  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0xf8] forKeys:&sp[0xe8] count:2] forKey:[NSNumber numberWithInt:1]]
  1000bb758  mov     x0, x26
  1000bb75c  bl      _objc_release
  1000bb760  mov     x0, x22
  1000bb764  bl      _objc_release
  1000bb768  mov     x0, x28
  1000bb76c  bl      _objc_release
  1000bb770  mov     x0, x27
  1000bb774  bl      _objc_release
  1000bb778  mov     x0, x19
  1000bb77c  mov     x1, x21
  1000bb780  bl      _objc_msgSend                            ; [self postGameData]
  1000bb784  mov     x29, x29
  1000bb788  bl      _objc_retainAutoreleasedReturnValue
  1000bb78c  mov     x27, x0
  1000bb790  adrp    x8, #0x1003b9000
  1000bb794  add     x8, x8, #0xdb0                           ; @"name"
  1000bb798  str     x8, [sp, #0xc8]
  1000bb79c  adrp    x8, #0x1003c1000
  1000bb7a0  add     x8, x8, #0x910                           ; @"Total shots fired"
  1000bb7a4  str     x8, [sp, #0xd8]
  1000bb7a8  adrp    x8, #0x1003ba000
  1000bb7ac  add     x8, x8, #0x1b0                           ; @"value"
  1000bb7b0  str     x8, [sp, #0xd0]
  1000bb7b4  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb7b8  adrp    x8, #0x10041a000
  1000bb7bc  nop
  1000bb7c0  ldr     x1, [x8, #0x8b0]
  1000bb7c4  mov     x0, x19
  1000bb7c8  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000bb7cc  mov     x2, x0
  1000bb7d0  mov     x0, x22
  1000bb7d4  mov     x1, x25
  1000bb7d8  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self totalShotsFired]]
  1000bb7dc  mov     x29, x29
  1000bb7e0  bl      _objc_retainAutoreleasedReturnValue
  1000bb7e4  mov     x28, x0
  1000bb7e8  str     x28, [sp, #0xe0]
  1000bb7ec  adrp    x8, #0x10041d000
  1000bb7f0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb7f4  add     x2, sp, #0xd8
  1000bb7f8  add     x3, sp, #0xc8
  1000bb7fc  mov     w4, #2
  1000bb800  mov     x1, x20
  1000bb804  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xd8] forKeys:&sp[0xc8] count:2]
  1000bb808  bl      _objc_retain
  1000bb80c  mov     x22, x0
  1000bb810  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb814  mov     w2, #2
  1000bb818  ldr     x1, [sp, #0x20]
  1000bb81c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000bb820  mov     x29, x29
  1000bb824  bl      _objc_retainAutoreleasedReturnValue
  1000bb828  mov     x26, x0
  1000bb82c  mov     x0, x27
  1000bb830  mov     x1, x24
  1000bb834  mov     x2, x22
  1000bb838  mov     x3, x26
  1000bb83c  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0xd8] forKeys:&sp[0xc8] count:2] forKey:[NSNumber numberWithInt:2]]
  1000bb840  mov     x0, x26
  1000bb844  bl      _objc_release
  1000bb848  mov     x0, x22
  1000bb84c  bl      _objc_release
  1000bb850  mov     x0, x28
  1000bb854  bl      _objc_release
  1000bb858  mov     x0, x27
  1000bb85c  bl      _objc_release
  1000bb860  mov     x0, x19
  1000bb864  mov     x1, x21
  1000bb868  bl      _objc_msgSend                            ; [self postGameData]
  1000bb86c  mov     x29, x29
  1000bb870  bl      _objc_retainAutoreleasedReturnValue
  1000bb874  mov     x27, x0
  1000bb878  adrp    x8, #0x1003b9000
  1000bb87c  add     x8, x8, #0xdb0                           ; @"name"
  1000bb880  str     x8, [sp, #0xa8]
  1000bb884  adrp    x8, #0x1003c1000
  1000bb888  add     x8, x8, #0x930                           ; @"Critical hit count"
  1000bb88c  str     x8, [sp, #0xb8]
  1000bb890  adrp    x8, #0x1003ba000
  1000bb894  add     x8, x8, #0x1b0                           ; @"value"
  1000bb898  str     x8, [sp, #0xb0]
  1000bb89c  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb8a0  adrp    x8, #0x10041a000
  1000bb8a4  nop
  1000bb8a8  ldr     x1, [x8, #0x930]
  1000bb8ac  mov     x0, x19
  1000bb8b0  bl      _objc_msgSend                            ; [self numCriticalHits]
  1000bb8b4  mov     x2, x0
  1000bb8b8  mov     x0, x22
  1000bb8bc  ldr     x1, [sp, #0x18]
  1000bb8c0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numCriticalHits]]
  1000bb8c4  mov     x29, x29
  1000bb8c8  bl      _objc_retainAutoreleasedReturnValue
  1000bb8cc  mov     x28, x0
  1000bb8d0  str     x28, [sp, #0xc0]
  1000bb8d4  adrp    x8, #0x10041d000
  1000bb8d8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb8dc  add     x2, sp, #0xb8
  1000bb8e0  add     x3, sp, #0xa8
  1000bb8e4  mov     w4, #2
  1000bb8e8  mov     x1, x20
  1000bb8ec  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0xb8] forKeys:&sp[0xa8] count:2]
  1000bb8f0  bl      _objc_retain
  1000bb8f4  mov     x22, x0
  1000bb8f8  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb8fc  mov     w2, #3
  1000bb900  ldr     x1, [sp, #0x20]
  1000bb904  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  1000bb908  mov     x29, x29
  1000bb90c  bl      _objc_retainAutoreleasedReturnValue
  1000bb910  mov     x26, x0
  1000bb914  mov     x0, x27
  1000bb918  mov     x1, x24
  1000bb91c  mov     x2, x22
  1000bb920  mov     x3, x26
  1000bb924  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0xb8] forKeys:&sp[0xa8] count:2] forKey:[NSNumber numberWithInt:3]]
  1000bb928  mov     x0, x26
  1000bb92c  bl      _objc_release
  1000bb930  mov     x0, x22
  1000bb934  bl      _objc_release
  1000bb938  mov     x0, x28
  1000bb93c  bl      _objc_release
  1000bb940  mov     x0, x27
  1000bb944  bl      _objc_release
  1000bb948  mov     x0, x19
  1000bb94c  mov     x1, x21
  1000bb950  bl      _objc_msgSend                            ; [self postGameData]
  1000bb954  mov     x29, x29
  1000bb958  bl      _objc_retainAutoreleasedReturnValue
  1000bb95c  mov     x27, x0
  1000bb960  adrp    x8, #0x1003b9000
  1000bb964  add     x8, x8, #0xdb0                           ; @"name"
  1000bb968  str     x8, [sp, #0x88]
  1000bb96c  adrp    x8, #0x1003c1000
  1000bb970  add     x8, x8, #0x950                           ; @"Highest combo"
  1000bb974  str     x8, [sp, #0x98]
  1000bb978  adrp    x8, #0x1003ba000
  1000bb97c  add     x8, x8, #0x1b0                           ; @"value"
  1000bb980  str     x8, [sp, #0x90]
  1000bb984  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bb988  mov     x0, x19
  1000bb98c  ldr     x1, [sp, #0x10]
  1000bb990  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000bb994  mov     x2, x0
  1000bb998  mov     x0, x22
  1000bb99c  ldr     x1, [sp, #0x18]
  1000bb9a0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numberOfEnemyKills]]
  1000bb9a4  mov     x29, x29
  1000bb9a8  bl      _objc_retainAutoreleasedReturnValue
  1000bb9ac  mov     x26, x0
  1000bb9b0  str     x26, [sp, #0xa0]
  1000bb9b4  adrp    x8, #0x10041d000
  1000bb9b8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bb9bc  add     x2, sp, #0x98
  1000bb9c0  add     x3, sp, #0x88
  1000bb9c4  mov     w4, #2
  1000bb9c8  mov     x1, x20
  1000bb9cc  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x98] forKeys:&sp[0x88] count:2]
  1000bb9d0  bl      _objc_retain
  1000bb9d4  mov     x22, x0
  1000bb9d8  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bb9dc  mov     w2, #4
  1000bb9e0  ldr     x1, [sp, #0x20]
  1000bb9e4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000bb9e8  mov     x29, x29
  1000bb9ec  bl      _objc_retainAutoreleasedReturnValue
  1000bb9f0  mov     x28, x0
  1000bb9f4  mov     x0, x27
  1000bb9f8  mov     x1, x24
  1000bb9fc  mov     x2, x22
  1000bba00  mov     x3, x28
  1000bba04  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x98] forKeys:&sp[0x88] count:2] forKey:[NSNumber numberWithInt:4]]
  1000bba08  mov     x0, x28
  1000bba0c  bl      _objc_release
  1000bba10  mov     x0, x22
  1000bba14  bl      _objc_release
  1000bba18  mov     x0, x26
  1000bba1c  bl      _objc_release
  1000bba20  mov     x0, x27
  1000bba24  bl      _objc_release
  1000bba28  mov     x0, x19
  1000bba2c  mov     x1, x21
  1000bba30  bl      _objc_msgSend                            ; [self postGameData]
  1000bba34  mov     x29, x29
  1000bba38  bl      _objc_retainAutoreleasedReturnValue
  1000bba3c  mov     x26, x0
  1000bba40  adrp    x8, #0x1003b9000
  1000bba44  add     x8, x8, #0xdb0                           ; @"name"
  1000bba48  str     x8, [sp, #0x68]
  1000bba4c  adrp    x8, #0x1003c1000
  1000bba50  add     x8, x8, #0x970                           ; @"Melee swing count"
  1000bba54  str     x8, [sp, #0x78]
  1000bba58  adrp    x8, #0x1003ba000
  1000bba5c  add     x8, x8, #0x1b0                           ; @"value"
  1000bba60  str     x8, [sp, #0x70]
  1000bba64  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bba68  adrp    x8, #0x10041a000
  1000bba6c  nop
  1000bba70  ldr     x1, [x8, #0x8c0]
  1000bba74  mov     x0, x19
  1000bba78  bl      _objc_msgSend                            ; [self meleeSwings]
  1000bba7c  mov     x2, x0
  1000bba80  mov     x0, x22
  1000bba84  mov     x1, x25
  1000bba88  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self meleeSwings]]
  1000bba8c  mov     x29, x29
  1000bba90  bl      _objc_retainAutoreleasedReturnValue
  1000bba94  mov     x27, x0
  1000bba98  str     x27, [sp, #0x80]
  1000bba9c  adrp    x8, #0x10041d000
  1000bbaa0  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bbaa4  add     x2, sp, #0x78
  1000bbaa8  add     x3, sp, #0x68
  1000bbaac  mov     w4, #2
  1000bbab0  mov     x1, x20
  1000bbab4  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x78] forKeys:&sp[0x68] count:2]
  1000bbab8  bl      _objc_retain
  1000bbabc  mov     x22, x0
  1000bbac0  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bbac4  mov     w2, #5
  1000bbac8  ldr     x1, [sp, #0x20]
  1000bbacc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  1000bbad0  mov     x29, x29
  1000bbad4  bl      _objc_retainAutoreleasedReturnValue
  1000bbad8  mov     x28, x0
  1000bbadc  mov     x0, x26
  1000bbae0  mov     x1, x24
  1000bbae4  mov     x2, x22
  1000bbae8  mov     x3, x28
  1000bbaec  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x78] forKeys:&sp[0x68] count:2] forKey:[NSNumber numberWithInt:5]]
  1000bbaf0  mov     x0, x28
  1000bbaf4  bl      _objc_release
  1000bbaf8  mov     x0, x22
  1000bbafc  bl      _objc_release
  1000bbb00  mov     x0, x27
  1000bbb04  bl      _objc_release
  1000bbb08  mov     x0, x26
  1000bbb0c  bl      _objc_release
  1000bbb10  mov     x0, x19
  1000bbb14  mov     x1, x21
  1000bbb18  bl      _objc_msgSend                            ; [self postGameData]
  1000bbb1c  mov     x29, x29
  1000bbb20  bl      _objc_retainAutoreleasedReturnValue
  1000bbb24  mov     x26, x0
  1000bbb28  adrp    x8, #0x1003b9000
  1000bbb2c  add     x8, x8, #0xdb0                           ; @"name"
  1000bbb30  str     x8, [sp, #0x48]
  1000bbb34  adrp    x8, #0x1003c1000
  1000bbb38  add     x8, x8, #0x990                           ; @"Melee hit count"
  1000bbb3c  str     x8, [sp, #0x58]
  1000bbb40  adrp    x8, #0x1003ba000
  1000bbb44  add     x8, x8, #0x1b0                           ; @"value"
  1000bbb48  str     x8, [sp, #0x50]
  1000bbb4c  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bbb50  adrp    x8, #0x10041a000
  1000bbb54  nop
  1000bbb58  ldr     x1, [x8, #0x8d8]
  1000bbb5c  mov     x0, x19
  1000bbb60  bl      _objc_msgSend                            ; [self meleeHits]
  1000bbb64  mov     x2, x0
  1000bbb68  mov     x0, x22
  1000bbb6c  mov     x1, x25
  1000bbb70  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:[self meleeHits]]
  1000bbb74  mov     x29, x29
  1000bbb78  bl      _objc_retainAutoreleasedReturnValue
  1000bbb7c  mov     x25, x0
  1000bbb80  str     x25, [sp, #0x60]
  1000bbb84  adrp    x8, #0x10041d000
  1000bbb88  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bbb8c  add     x2, sp, #0x58
  1000bbb90  add     x3, sp, #0x48
  1000bbb94  mov     w4, #2
  1000bbb98  mov     x1, x20
  1000bbb9c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x58] forKeys:&sp[0x48] count:2]
  1000bbba0  bl      _objc_retain
  1000bbba4  mov     x22, x0
  1000bbba8  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bbbac  mov     w2, #6
  1000bbbb0  ldr     x1, [sp, #0x20]
  1000bbbb4  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  1000bbbb8  mov     x29, x29
  1000bbbbc  bl      _objc_retainAutoreleasedReturnValue
  1000bbbc0  mov     x27, x0
  1000bbbc4  mov     x0, x26
  1000bbbc8  mov     x1, x24
  1000bbbcc  mov     x2, x22
  1000bbbd0  mov     x3, x27
  1000bbbd4  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x58] forKeys:&sp[0x48] count:2] forKey:[NSNumber numberWithInt:6]]
  1000bbbd8  mov     x0, x27
  1000bbbdc  bl      _objc_release
  1000bbbe0  mov     x0, x22
  1000bbbe4  bl      _objc_release
  1000bbbe8  mov     x0, x25
  1000bbbec  bl      _objc_release
  1000bbbf0  mov     x0, x26
  1000bbbf4  bl      _objc_release
  1000bbbf8  mov     x0, x19
  1000bbbfc  mov     x1, x21
  1000bbc00  bl      _objc_msgSend                            ; [self postGameData]
  1000bbc04  mov     x29, x29
  1000bbc08  bl      _objc_retainAutoreleasedReturnValue
  1000bbc0c  mov     x21, x0
  1000bbc10  adrp    x8, #0x1003b9000
  1000bbc14  add     x8, x8, #0xdb0                           ; @"name"
  1000bbc18  str     x8, [sp, #0x28]
  1000bbc1c  adrp    x8, #0x1003c1000
  1000bbc20  add     x8, x8, #0x9b0                           ; @"Defeated brick count"
  1000bbc24  str     x8, [sp, #0x38]
  1000bbc28  adrp    x8, #0x1003ba000
  1000bbc2c  add     x8, x8, #0x1b0                           ; @"value"
  1000bbc30  str     x8, [sp, #0x30]
  1000bbc34  ldr     x22, [x23, #0xf68]                       ; class NSNumber
  1000bbc38  adrp    x8, #0x10041a000
  1000bbc3c  nop
  1000bbc40  ldr     x1, [x8, #0x938]
  1000bbc44  mov     x0, x19
  1000bbc48  bl      _objc_msgSend                            ; [self numberOfBricksDefeated]
  1000bbc4c  mov     x2, x0
  1000bbc50  mov     x0, x22
  1000bbc54  ldr     x1, [sp, #0x18]
  1000bbc58  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[self numberOfBricksDefeated]]
  1000bbc5c  mov     x29, x29
  1000bbc60  bl      _objc_retainAutoreleasedReturnValue
  1000bbc64  mov     x22, x0
  1000bbc68  str     x22, [sp, #0x40]
  1000bbc6c  adrp    x8, #0x10041d000
  1000bbc70  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000bbc74  add     x2, sp, #0x38
  1000bbc78  add     x3, sp, #0x28
  1000bbc7c  mov     w4, #2
  1000bbc80  mov     x1, x20
  1000bbc84  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x28] count:2]
  1000bbc88  adrp    x19, #0x1003b0000
  1000bbc8c  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000bbc90  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000bbc94  bl      _objc_retain
  1000bbc98  mov     x20, x0
  1000bbc9c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000bbca0  mov     w2, #7
  1000bbca4  ldr     x1, [sp, #0x20]
  1000bbca8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000bbcac  mov     x29, x29
  1000bbcb0  bl      _objc_retainAutoreleasedReturnValue
  1000bbcb4  mov     x23, x0
  1000bbcb8  mov     x0, x21
  1000bbcbc  mov     x1, x24
  1000bbcc0  mov     x2, x20
  1000bbcc4  mov     x3, x23
  1000bbcc8  bl      _objc_msgSend                            ; [[self postGameData] setObject:[NSDictionary dictionaryWithObjects:&sp[0x38] forKeys:&sp[0x28] count:2] forKey:[NSNumber numberWithInt:7]]
loc_1000bbccc:
  1000bbccc  mov     x0, x23
  1000bbcd0  bl      _objc_release
  1000bbcd4  mov     x0, x20
  1000bbcd8  bl      _objc_release
  1000bbcdc  mov     x0, x22
  1000bbce0  bl      _objc_release
  1000bbce4  mov     x0, x21
  1000bbce8  bl      _objc_release
  1000bbcec  ldur    x8, [x29, #-0x58]
  1000bbcf0  sub     x8, x19, x8
  1000bbcf4  cbnz    x8, loc_1000bbd18                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000bbcf8  sub     sp, x29, #0x50
  1000bbcfc  ldp     x29, x30, [sp, #0x50]
  1000bbd00  ldp     x20, x19, [sp, #0x40]
  1000bbd04  ldp     x22, x21, [sp, #0x30]
  1000bbd08  ldp     x24, x23, [sp, #0x20]
  1000bbd0c  ldp     x26, x25, [sp, #0x10]
  1000bbd10  ldp     x28, x27, [sp], #0x60
  1000bbd14  ret
loc_1000bbd18:
  1000bbd18  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000bbd1c  b       loc_1000bbe40
  1000bbd20  mov     x19, x0
  1000bbd24  b       loc_1000bbe78
  1000bbd28  mov     x19, x0
  1000bbd2c  b       loc_1000bbf00
  1000bbd30  mov     x19, x0
  1000bbd34  b       loc_1000bbf00
  1000bbd38  mov     x19, x0
  1000bbd3c  b       loc_1000bbf00
  1000bbd40  mov     x19, x0
  1000bbd44  b       loc_1000bbf00
  1000bbd48  mov     x19, x0
  1000bbd4c  b       loc_1000bbf60
  1000bbd50  mov     x19, x0
  1000bbd54  b       loc_1000bbf60
  1000bbd58  mov     x19, x0
  1000bbd5c  b       loc_1000bbf94
  1000bbd60  mov     x19, x0
  1000bbd64  b       loc_1000bbe78
  1000bbd68  mov     x19, x0
  1000bbd6c  b       loc_1000bbf00
  1000bbd70  mov     x19, x0
  1000bbd74  b       loc_1000bbf00
  1000bbd78  mov     x19, x0
  1000bbd7c  b       loc_1000bbf00
  1000bbd80  mov     x19, x0
  1000bbd84  b       loc_1000bbf00
  1000bbd88  mov     x19, x0
  1000bbd8c  b       loc_1000bbf60
  1000bbd90  mov     x19, x0
  1000bbd94  b       loc_1000bbf60
  1000bbd98  mov     x19, x0
  1000bbd9c  b       loc_1000bbf94
  1000bbda0  b       loc_1000bbe40
  1000bbda4  mov     x19, x0
  1000bbda8  b       loc_1000bbe70
  1000bbdac  mov     x19, x0
  1000bbdb0  b       loc_1000bbe68
  1000bbdb4  b       loc_1000bbe5c
  1000bbdb8  mov     x19, x0
  1000bbdbc  b       loc_1000bbecc
  1000bbdc0  mov     x19, x0
  1000bbdc4  b       loc_1000bbec4
  1000bbdc8  b       loc_1000bbeb8
  1000bbdcc  mov     x19, x0
  1000bbdd0  b       loc_1000bbecc
  1000bbdd4  mov     x19, x0
  1000bbdd8  b       loc_1000bbec4
  1000bbddc  b       loc_1000bbeb8
  1000bbde0  mov     x19, x0
  1000bbde4  b       loc_1000bbecc
  1000bbde8  mov     x19, x0
  1000bbdec  b       loc_1000bbec4
  1000bbdf0  b       loc_1000bbeb8
  1000bbdf4  mov     x19, x0
  1000bbdf8  b       loc_1000bbef8
  1000bbdfc  mov     x19, x0
  1000bbe00  b       loc_1000bbef0
  1000bbe04  b       loc_1000bbee4
  1000bbe08  mov     x19, x0
  1000bbe0c  b       loc_1000bbf2c
  1000bbe10  mov     x19, x0
  1000bbe14  b       loc_1000bbf24
  1000bbe18  b       loc_1000bbf18
  1000bbe1c  mov     x19, x0
  1000bbe20  b       loc_1000bbf58
  1000bbe24  mov     x19, x0
  1000bbe28  b       loc_1000bbf50
  1000bbe2c  b       loc_1000bbf44
  1000bbe30  mov     x19, x0
  1000bbe34  b       loc_1000bbf8c
  1000bbe38  mov     x19, x0
  1000bbe3c  b       loc_1000bbf84
loc_1000bbe40:
  1000bbe40  mov     x19, x0
  1000bbe44  mov     x0, x20
  1000bbe48  b       loc_1000bbf98
  1000bbe4c  mov     x19, x0
  1000bbe50  b       loc_1000bbe70
  1000bbe54  mov     x19, x0
  1000bbe58  b       loc_1000bbe68
loc_1000bbe5c:
  1000bbe5c  mov     x19, x0
  1000bbe60  mov     x0, x22
  1000bbe64  bl      _objc_release
loc_1000bbe68:
  1000bbe68  mov     x0, x28
  1000bbe6c  bl      _objc_release
loc_1000bbe70:
  1000bbe70  mov     x0, x27
  1000bbe74  bl      _objc_release
loc_1000bbe78:
  1000bbe78  mov     x0, x25
  1000bbe7c  b       loc_1000bbf98
  1000bbe80  mov     x19, x0
  1000bbe84  b       loc_1000bbecc
  1000bbe88  mov     x19, x0
  1000bbe8c  b       loc_1000bbec4
  1000bbe90  b       loc_1000bbeb8
  1000bbe94  mov     x19, x0
  1000bbe98  b       loc_1000bbecc
  1000bbe9c  mov     x19, x0
  1000bbea0  b       loc_1000bbec4
  1000bbea4  b       loc_1000bbeb8
  1000bbea8  mov     x19, x0
  1000bbeac  b       loc_1000bbecc
  1000bbeb0  mov     x19, x0
  1000bbeb4  b       loc_1000bbec4
loc_1000bbeb8:
  1000bbeb8  mov     x19, x0
  1000bbebc  mov     x0, x26
  1000bbec0  bl      _objc_release
loc_1000bbec4:
  1000bbec4  mov     x0, x22
  1000bbec8  bl      _objc_release
loc_1000bbecc:
  1000bbecc  mov     x0, x28
  1000bbed0  b       loc_1000bbefc
  1000bbed4  mov     x19, x0
  1000bbed8  b       loc_1000bbef8
  1000bbedc  mov     x19, x0
  1000bbee0  b       loc_1000bbef0
loc_1000bbee4:
  1000bbee4  mov     x19, x0
  1000bbee8  mov     x0, x28
  1000bbeec  bl      _objc_release
loc_1000bbef0:
  1000bbef0  mov     x0, x22
  1000bbef4  bl      _objc_release
loc_1000bbef8:
  1000bbef8  mov     x0, x26
loc_1000bbefc:
  1000bbefc  bl      _objc_release
loc_1000bbf00:
  1000bbf00  mov     x0, x27
  1000bbf04  b       loc_1000bbf98
  1000bbf08  mov     x19, x0
  1000bbf0c  b       loc_1000bbf2c
  1000bbf10  mov     x19, x0
  1000bbf14  b       loc_1000bbf24
loc_1000bbf18:
  1000bbf18  mov     x19, x0
  1000bbf1c  mov     x0, x28
  1000bbf20  bl      _objc_release
loc_1000bbf24:
  1000bbf24  mov     x0, x22
  1000bbf28  bl      _objc_release
loc_1000bbf2c:
  1000bbf2c  mov     x0, x27
  1000bbf30  b       loc_1000bbf5c
  1000bbf34  mov     x19, x0
  1000bbf38  b       loc_1000bbf58
  1000bbf3c  mov     x19, x0
  1000bbf40  b       loc_1000bbf50
loc_1000bbf44:
  1000bbf44  mov     x19, x0
  1000bbf48  mov     x0, x27
  1000bbf4c  bl      _objc_release
loc_1000bbf50:
  1000bbf50  mov     x0, x22
  1000bbf54  bl      _objc_release
loc_1000bbf58:
  1000bbf58  mov     x0, x25
loc_1000bbf5c:
  1000bbf5c  bl      _objc_release
loc_1000bbf60:
  1000bbf60  mov     x0, x26
  1000bbf64  b       loc_1000bbf98
  1000bbf68  mov     x19, x0
  1000bbf6c  b       loc_1000bbf8c
  1000bbf70  mov     x19, x0
  1000bbf74  b       loc_1000bbf84
loc_1000bbf78:
  1000bbf78  mov     x19, x0
  1000bbf7c  mov     x0, x23
  1000bbf80  bl      _objc_release
loc_1000bbf84:
  1000bbf84  mov     x0, x20
  1000bbf88  bl      _objc_release
loc_1000bbf8c:
  1000bbf8c  mov     x0, x22
  1000bbf90  bl      _objc_release
loc_1000bbf94:
  1000bbf94  mov     x0, x21
loc_1000bbf98:
  1000bbf98  bl      _objc_release
  1000bbf9c  mov     x0, x19
  1000bbfa0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats getEnemyData]
; address 0x1000bbfa4  size 648  kind objc
; ======================================================================
  1000bbfa4  stp     x28, x27, [sp, #-0x60]!
  1000bbfa8  stp     x26, x25, [sp, #0x10]
  1000bbfac  stp     x24, x23, [sp, #0x20]
  1000bbfb0  stp     x22, x21, [sp, #0x30]
  1000bbfb4  stp     x20, x19, [sp, #0x40]
  1000bbfb8  stp     x29, x30, [sp, #0x50]
  1000bbfbc  add     x29, sp, #0x50
  1000bbfc0  sub     sp, sp, #0x100
  1000bbfc4  mov     x28, x0
  1000bbfc8  adrp    x19, #0x1003b0000
  1000bbfcc  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000bbfd0  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000bbfd4  stur    x19, [x29, #-0x58]
  1000bbfd8  adrp    x8, #0x10041a000
  1000bbfdc  nop
  1000bbfe0  ldr     x1, [x8, #0x940]
  1000bbfe4  bl      _objc_msgSend                            ; [self sessionCompleted]
  1000bbfe8  cbz     w0, loc_1000bc19c                        ; if ([self sessionCompleted] == 0)
  1000bbfec  adrp    x8, #0x10041d000
  1000bbff0  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000bbff4  adrp    x8, #0x100416000
  1000bbff8  nop
  1000bbffc  ldr     x1, [x8, #0xac8]
  1000bc000  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000bc004  adrp    x8, #0x100416000
  1000bc008  nop
  1000bc00c  ldr     x1, [x8, #0xab8]
  1000bc010  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000bc014  str     x0, [sp, #0x28]
  1000bc018  stp     xzr, xzr, [sp, #0x68]
  1000bc01c  stp     xzr, xzr, [sp, #0x58]
  1000bc020  stp     xzr, xzr, [sp, #0x48]
  1000bc024  stp     xzr, xzr, [sp, #0x38]
  1000bc028  adrp    x8, #0x10041a000
  1000bc02c  nop
  1000bc030  ldr     x1, [x8, #0x870]
  1000bc034  str     x1, [sp, #0x30]
  1000bc038  mov     x0, x28
  1000bc03c  bl      _objc_msgSend                            ; [self enemyList]
  1000bc040  mov     x29, x29
  1000bc044  bl      _objc_retainAutoreleasedReturnValue
  1000bc048  str     x0, [sp, #0x18]
  1000bc04c  adrp    x8, #0x100416000
  1000bc050  nop
  1000bc054  ldr     x1, [x8, #0xe00]
  1000bc058  str     x1, [sp, #0x10]
  1000bc05c  add     x2, sp, #0x38
  1000bc060  add     x3, sp, #0x78
  1000bc064  mov     w4, #0x10
  1000bc068  bl      _objc_msgSend                            ; [[self enemyList] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000bc06c  mov     x24, x0
  1000bc070  cbz     x24, loc_1000bc184                       ; if ([[self enemyList] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000bc074  ldr     x8, [sp, #0x48]
  1000bc078  ldr     x27, [x8]
  1000bc07c  adrp    x8, #0x100417000
  1000bc080  nop
  1000bc084  ldr     x25, [x8, #0x40]
  1000bc088  adrp    x8, #0x100417000
  1000bc08c  nop
  1000bc090  ldr     x26, [x8, #0x110]
  1000bc094  adrp    x8, #0x100416000
  1000bc098  nop
  1000bc09c  ldr     x8, [x8, #0xdc8]
  1000bc0a0  str     x8, [sp, #0x20]
loc_1000bc0a4:
  1000bc0a4  mov     x21, #0
loc_1000bc0a8:
  1000bc0a8  ldr     x8, [sp, #0x48]
  1000bc0ac  ldr     x8, [x8]
  1000bc0b0  cmp     x8, x27
  1000bc0b4  b.eq    loc_1000bc0c0                            ; if (x8 == x27)
  1000bc0b8  ldr     x0, [sp, #0x18]
  1000bc0bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemyList])
loc_1000bc0c0:
  1000bc0c0  ldr     x8, [sp, #0x40]
  1000bc0c4  ldr     x23, [x8, x21, lsl #3]
  1000bc0c8  mov     x0, x28
  1000bc0cc  ldr     x1, [sp, #0x30]
  1000bc0d0  bl      _objc_msgSend                            ; [self enemyList]
  1000bc0d4  mov     x29, x29
  1000bc0d8  bl      _objc_retainAutoreleasedReturnValue
  1000bc0dc  mov     x20, x0
  1000bc0e0  mov     x1, x25
  1000bc0e4  mov     x2, x23
  1000bc0e8  bl      _objc_msgSend                            ; [[self enemyList] objectForKey:x2]
  1000bc0ec  mov     x22, x28
  1000bc0f0  mov     x29, x29
  1000bc0f4  bl      _objc_retainAutoreleasedReturnValue
  1000bc0f8  mov     x19, x0
  1000bc0fc  mov     x0, x20
  1000bc100  bl      _objc_release
  1000bc104  mov     x0, x19
  1000bc108  mov     x1, x25
  1000bc10c  adrp    x2, #0x1003ba000
  1000bc110  add     x2, x2, #0x1d0                           ; @"Killed"
  1000bc114  bl      _objc_msgSend                            ; [[[self enemyList] objectForKey:x2] objectForKey:@"Killed"]
  1000bc118  mov     x29, x29
  1000bc11c  bl      _objc_retainAutoreleasedReturnValue
  1000bc120  mov     x20, x0
  1000bc124  mov     x1, x26
  1000bc128  bl      _objc_msgSend                            ; [[[[self enemyList] objectForKey:x2] objectForKey:@"Killed"] intValue]
  1000bc12c  mov     x28, x0
  1000bc130  mov     x0, x20
  1000bc134  bl      _objc_release
  1000bc138  cmp     w28, #1
  1000bc13c  b.lt    loc_1000bc150                            ; if ([[[[self enemyList] objectForKey:x2] objectForKey:@"Killed"] intValue] < 1)
  1000bc140  ldp     x1, x0, [sp, #0x20]
  1000bc144  mov     x2, x19
  1000bc148  mov     x3, x23
  1000bc14c  bl      _objc_msgSend                            ; [[[NSMutableDictionary alloc] init] setObject:[[self enemyList] objectForKey:x2] forKey:x3]
loc_1000bc150:
  1000bc150  mov     x0, x19
  1000bc154  bl      _objc_release
  1000bc158  add     x21, x21, #1
  1000bc15c  cmp     x21, x24
  1000bc160  mov     x28, x22
  1000bc164  b.lo    loc_1000bc0a8                            ; if ((x21 + 1) <u [[self enemyList] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16])
  1000bc168  add     x2, sp, #0x38
  1000bc16c  add     x3, sp, #0x78
  1000bc170  mov     w4, #0x10
  1000bc174  ldp     x1, x0, [sp, #0x10]
  1000bc178  bl      _objc_msgSend                            ; [[self enemyList] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000bc17c  mov     x24, x0
  1000bc180  cbnz    x24, loc_1000bc0a4                       ; if ([[self enemyList] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_1000bc184:
  1000bc184  ldr     x0, [sp, #0x18]
  1000bc188  bl      _objc_release
  1000bc18c  adrp    x19, #0x1003b0000
  1000bc190  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  1000bc194  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  1000bc198  b       loc_1000bc1a0
loc_1000bc19c:
  1000bc19c  str     xzr, [sp, #0x28]
loc_1000bc1a0:
  1000bc1a0  ldur    x8, [x29, #-0x58]
  1000bc1a4  sub     x8, x19, x8
  1000bc1a8  cbnz    x8, loc_1000bc1d0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000bc1ac  ldr     x0, [sp, #0x28]
  1000bc1b0  sub     sp, x29, #0x50
  1000bc1b4  ldp     x29, x30, [sp, #0x50]
  1000bc1b8  ldp     x20, x19, [sp, #0x40]
  1000bc1bc  ldp     x22, x21, [sp, #0x30]
  1000bc1c0  ldp     x24, x23, [sp, #0x20]
  1000bc1c4  ldp     x26, x25, [sp, #0x10]
  1000bc1c8  ldp     x28, x27, [sp], #0x60
  1000bc1cc  b       _objc_autoreleaseReturnValue
loc_1000bc1d0:
  1000bc1d0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000bc1d4  mov     x21, x0
  1000bc1d8  b       loc_1000bc1fc
loc_1000bc1dc:
  1000bc1dc  mov     x21, x0
  1000bc1e0  b       loc_1000bc204
  1000bc1e4  mov     x21, x0
  1000bc1e8  mov     x0, x20
  1000bc1ec  b       loc_1000bc200
  1000bc1f0  mov     x21, x0
  1000bc1f4  mov     x0, x20
  1000bc1f8  bl      _objc_release
loc_1000bc1fc:
  1000bc1fc  mov     x0, x19
loc_1000bc200:
  1000bc200  bl      _objc_release
loc_1000bc204:
  1000bc204  ldr     x0, [sp, #0x18]
  1000bc208  bl      _objc_release
loc_1000bc20c:
  1000bc20c  ldr     x0, [sp, #0x28]
  1000bc210  bl      _objc_release
  1000bc214  mov     x0, x21
  1000bc218  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000bc21c  b       loc_1000bc1dc
  1000bc220  mov     x21, x0
  1000bc224  b       loc_1000bc20c
  1000bc228  b       loc_1000bc1dc

; ======================================================================
; -[ADInGameStats getWeaponData]
; address 0x1000bc22c  size 84  kind objc
; ======================================================================
  1000bc22c  stp     x20, x19, [sp, #-0x20]!
  1000bc230  stp     x29, x30, [sp, #0x10]
  1000bc234  add     x29, sp, #0x10
  1000bc238  mov     x19, x0
  1000bc23c  adrp    x8, #0x10041a000
  1000bc240  nop
  1000bc244  ldr     x1, [x8, #0x940]
  1000bc248  bl      _objc_msgSend                            ; [self sessionCompleted]
  1000bc24c  cbz     w0, loc_1000bc270                        ; if ([self sessionCompleted] == 0)
  1000bc250  adrp    x8, #0x10041a000
  1000bc254  nop
  1000bc258  ldr     x1, [x8, #0x898]
  1000bc25c  mov     x0, x19
  1000bc260  bl      _objc_msgSend                            ; [self weaponsData]
  1000bc264  mov     x29, x29
  1000bc268  bl      _objc_retainAutoreleasedReturnValue
  1000bc26c  b       loc_1000bc274
loc_1000bc270:
  1000bc270  mov     x0, #0
loc_1000bc274:
  1000bc274  ldp     x29, x30, [sp, #0x10]
  1000bc278  ldp     x20, x19, [sp], #0x20
  1000bc27c  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInGameStats getWeaponCriticalHitsData]
; address 0x1000bc280  size 84  kind objc
; ======================================================================
  1000bc280  stp     x20, x19, [sp, #-0x20]!
  1000bc284  stp     x29, x30, [sp, #0x10]
  1000bc288  add     x29, sp, #0x10
  1000bc28c  mov     x19, x0
  1000bc290  adrp    x8, #0x10041a000
  1000bc294  nop
  1000bc298  ldr     x1, [x8, #0x940]
  1000bc29c  bl      _objc_msgSend                            ; [self sessionCompleted]
  1000bc2a0  cbz     w0, loc_1000bc2c4                        ; if ([self sessionCompleted] == 0)
  1000bc2a4  adrp    x8, #0x10041a000
  1000bc2a8  nop
  1000bc2ac  ldr     x1, [x8, #0x8e8]
  1000bc2b0  mov     x0, x19
  1000bc2b4  bl      _objc_msgSend                            ; [self weaponCriticalHits]
  1000bc2b8  mov     x29, x29
  1000bc2bc  bl      _objc_retainAutoreleasedReturnValue
  1000bc2c0  b       loc_1000bc2c8
loc_1000bc2c4:
  1000bc2c4  mov     x0, #0
loc_1000bc2c8:
  1000bc2c8  ldp     x29, x30, [sp, #0x10]
  1000bc2cc  ldp     x20, x19, [sp], #0x20
  1000bc2d0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInGameStats getMiscData]
; address 0x1000bc2d4  size 84  kind objc
; ======================================================================
  1000bc2d4  stp     x20, x19, [sp, #-0x20]!
  1000bc2d8  stp     x29, x30, [sp, #0x10]
  1000bc2dc  add     x29, sp, #0x10
  1000bc2e0  mov     x19, x0
  1000bc2e4  adrp    x8, #0x10041a000
  1000bc2e8  nop
  1000bc2ec  ldr     x1, [x8, #0x940]
  1000bc2f0  bl      _objc_msgSend                            ; [self sessionCompleted]
  1000bc2f4  cbz     w0, loc_1000bc318                        ; if ([self sessionCompleted] == 0)
  1000bc2f8  adrp    x8, #0x10041a000
  1000bc2fc  nop
  1000bc300  ldr     x1, [x8, #0x928]
  1000bc304  mov     x0, x19
  1000bc308  bl      _objc_msgSend                            ; [self postGameData]
  1000bc30c  mov     x29, x29
  1000bc310  bl      _objc_retainAutoreleasedReturnValue
  1000bc314  b       loc_1000bc31c
loc_1000bc318:
  1000bc318  mov     x0, #0
loc_1000bc31c:
  1000bc31c  ldp     x29, x30, [sp, #0x10]
  1000bc320  ldp     x20, x19, [sp], #0x20
  1000bc324  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADInGameStats getEnemiesToCoinsReward]
; address 0x1000bc328  size 128  kind objc
; ======================================================================
  1000bc328  stp     x20, x19, [sp, #-0x20]!
  1000bc32c  stp     x29, x30, [sp, #0x10]
  1000bc330  add     x29, sp, #0x10
  1000bc334  mov     x20, x0
  1000bc338  adrp    x8, #0x10041d000
  1000bc33c  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  1000bc340  adrp    x8, #0x100416000
  1000bc344  nop
  1000bc348  ldr     x1, [x8, #0xac8]
  1000bc34c  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  1000bc350  adrp    x8, #0x100416000
  1000bc354  nop
  1000bc358  ldr     x1, [x8, #0xab8]
  1000bc35c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  1000bc360  mov     x19, x0
  1000bc364  adrp    x8, #0x10041a000
  1000bc368  nop
  1000bc36c  ldr     x1, [x8, #0x948]
  1000bc370  mov     x0, x20
  1000bc374  mov     x2, x19
  1000bc378  bl      _objc_msgSend                            ; [self setEnemiesToCoins:[[NSMutableDictionary alloc] init]]
  1000bc37c  mov     x0, x19
  1000bc380  bl      _objc_release
  1000bc384  mov     x0, #0
  1000bc388  ldp     x29, x30, [sp, #0x10]
  1000bc38c  ldp     x20, x19, [sp], #0x20
  1000bc390  ret
  1000bc394  mov     x20, x0
  1000bc398  mov     x0, x19
  1000bc39c  bl      _objc_release
  1000bc3a0  mov     x0, x20
  1000bc3a4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats description]
; address 0x1000bc3a8  size 2248  kind objc
; ======================================================================
  1000bc3a8  stp     x26, x25, [sp, #-0x50]!
  1000bc3ac  stp     x24, x23, [sp, #0x10]
  1000bc3b0  stp     x22, x21, [sp, #0x20]
  1000bc3b4  stp     x20, x19, [sp, #0x30]
  1000bc3b8  stp     x29, x30, [sp, #0x40]
  1000bc3bc  add     x29, sp, #0x40
  1000bc3c0  sub     sp, sp, #0x10
  1000bc3c4  mov     x21, x0
  1000bc3c8  adrp    x8, #0x10041e000
  1000bc3cc  ldr     x0, [x8, #0xd8]                          ; class NSMutableString
  1000bc3d0  adrp    x8, #0x100416000
  1000bc3d4  nop
  1000bc3d8  ldr     x1, [x8, #0xac8]
  1000bc3dc  bl      _objc_msgSend                            ; [NSMutableString alloc]
  1000bc3e0  adrp    x8, #0x100416000
  1000bc3e4  nop
  1000bc3e8  ldr     x1, [x8, #0xab8]
  1000bc3ec  bl      _objc_msgSend                            ; [[NSMutableString alloc] init]
  1000bc3f0  mov     x19, x0
  1000bc3f4  adrp    x8, #0x10041a000
  1000bc3f8  nop
  1000bc3fc  ldr     x20, [x8, #0x950]
  1000bc400  adrp    x2, #0x1003c1000
  1000bc404  add     x2, x2, #0x9d0                           ; @"\nADInGameStats:\n"
  1000bc408  mov     x1, x20
  1000bc40c  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:@"\nADInGameStats:\n"]
  1000bc410  adrp    x25, #0x10041d000
  1000bc414  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc418  adrp    x8, #0x100417000
  1000bc41c  nop
  1000bc420  ldr     x1, [x8, #0xda8]
  1000bc424  mov     x0, x21
  1000bc428  bl      _objc_msgSend                            ; [self numberOfEnemyKills]
  1000bc42c  adrp    x8, #0x100416000
  1000bc430  nop
  1000bc434  ldr     x22, [x8, #0xee8]
  1000bc438  str     x0, [sp]
  1000bc43c  adrp    x2, #0x1003c1000
  1000bc440  add     x2, x2, #0x9f0                           ; @"  Num Enemies Killed: %d\n"
  1000bc444  mov     x0, x23
  1000bc448  mov     x1, x22
  1000bc44c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Enemies Killed: %d\n", [self numberOfEnemyKills]]
  1000bc450  mov     x29, x29
  1000bc454  bl      _objc_retainAutoreleasedReturnValue
  1000bc458  mov     x23, x0
  1000bc45c  mov     x0, x19
  1000bc460  mov     x1, x20
  1000bc464  mov     x2, x23
  1000bc468  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Enemies Killed: %d\n", [self numberOfEnemyKills]]]
  1000bc46c  mov     x0, x23
  1000bc470  bl      _objc_release
  1000bc474  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc478  adrp    x8, #0x10041a000
  1000bc47c  nop
  1000bc480  ldr     x1, [x8, #0x958]
  1000bc484  mov     x0, x21
  1000bc488  bl      _objc_msgSend                            ; [self numberMissionsCompleted]
  1000bc48c  str     x0, [sp]
  1000bc490  adrp    x2, #0x1003c1000
  1000bc494  add     x2, x2, #0xa10                           ; @"  Num Missions Completed: %d\n"
  1000bc498  mov     x0, x23
  1000bc49c  mov     x1, x22
  1000bc4a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Missions Completed: %d\n", [self numberMissionsCompleted]]
  1000bc4a4  mov     x29, x29
  1000bc4a8  bl      _objc_retainAutoreleasedReturnValue
  1000bc4ac  mov     x23, x0
  1000bc4b0  mov     x0, x19
  1000bc4b4  mov     x1, x20
  1000bc4b8  mov     x2, x23
  1000bc4bc  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Missions Completed: %d\n", [self numberMissionsCompleted]]]
  1000bc4c0  mov     x0, x23
  1000bc4c4  bl      _objc_release
  1000bc4c8  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc4cc  adrp    x8, #0x10041a000
  1000bc4d0  nop
  1000bc4d4  ldr     x1, [x8, #0x960]
  1000bc4d8  mov     x0, x21
  1000bc4dc  bl      _objc_msgSend                            ; [self numberMissionsSkipped]
  1000bc4e0  str     x0, [sp]
  1000bc4e4  adrp    x2, #0x1003c1000
  1000bc4e8  add     x2, x2, #0xa30                           ; @"  Num Missions Skipped: %d\n"
  1000bc4ec  mov     x0, x23
  1000bc4f0  mov     x1, x22
  1000bc4f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Missions Skipped: %d\n", [self numberMissionsSkipped]]
  1000bc4f8  mov     x29, x29
  1000bc4fc  bl      _objc_retainAutoreleasedReturnValue
  1000bc500  mov     x23, x0
  1000bc504  mov     x0, x19
  1000bc508  mov     x1, x20
  1000bc50c  mov     x2, x23
  1000bc510  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Missions Skipped: %d\n", [self numberMissionsSkipped]]]
  1000bc514  mov     x0, x23
  1000bc518  bl      _objc_release
  1000bc51c  ldr     x24, [x25, #0xf78]                       ; class NSString
  1000bc520  adrp    x8, #0x100418000
  1000bc524  nop
  1000bc528  ldr     x1, [x8, #0xf80]
  1000bc52c  mov     x0, x21
  1000bc530  bl      _objc_msgSend                            ; [self gameMode]
  1000bc534  mov     x29, x29
  1000bc538  bl      _objc_retainAutoreleasedReturnValue
  1000bc53c  mov     x23, x0
  1000bc540  str     x23, [sp]
  1000bc544  adrp    x2, #0x1003c1000
  1000bc548  add     x2, x2, #0xa50                           ; @"  Game mode: %@\n"
  1000bc54c  mov     x0, x24
  1000bc550  mov     x1, x22
  1000bc554  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Game mode: %@\n", [self gameMode]]
  1000bc558  mov     x29, x29
  1000bc55c  bl      _objc_retainAutoreleasedReturnValue
  1000bc560  mov     x24, x0
  1000bc564  mov     x0, x19
  1000bc568  mov     x1, x20
  1000bc56c  mov     x2, x24
  1000bc570  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Game mode: %@\n", [self gameMode]]]
  1000bc574  mov     x0, x24
  1000bc578  bl      _objc_release
  1000bc57c  mov     x0, x23
  1000bc580  bl      _objc_release
  1000bc584  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc588  adrp    x8, #0x10041a000
  1000bc58c  nop
  1000bc590  ldr     x1, [x8, #0x8b8]
  1000bc594  mov     x0, x21
  1000bc598  bl      _objc_msgSend                            ; [self shotsOnTarget]
  1000bc59c  str     x0, [sp]
  1000bc5a0  adrp    x2, #0x1003c1000
  1000bc5a4  add     x2, x2, #0xa70                           ; @"  Shots on target: %d\n"
  1000bc5a8  mov     x0, x23
  1000bc5ac  mov     x1, x22
  1000bc5b0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Shots on target: %d\n", [self shotsOnTarget]]
  1000bc5b4  mov     x29, x29
  1000bc5b8  bl      _objc_retainAutoreleasedReturnValue
  1000bc5bc  mov     x23, x0
  1000bc5c0  mov     x0, x19
  1000bc5c4  mov     x1, x20
  1000bc5c8  mov     x2, x23
  1000bc5cc  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Shots on target: %d\n", [self shotsOnTarget]]]
  1000bc5d0  mov     x0, x23
  1000bc5d4  bl      _objc_release
  1000bc5d8  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc5dc  adrp    x8, #0x10041a000
  1000bc5e0  nop
  1000bc5e4  ldr     x1, [x8, #0x8b0]
  1000bc5e8  mov     x0, x21
  1000bc5ec  bl      _objc_msgSend                            ; [self totalShotsFired]
  1000bc5f0  str     x0, [sp]
  1000bc5f4  adrp    x2, #0x1003c1000
  1000bc5f8  add     x2, x2, #0xa90                           ; @"  Total shots fired: %d\n"
  1000bc5fc  mov     x0, x23
  1000bc600  mov     x1, x22
  1000bc604  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Total shots fired: %d\n", [self totalShotsFired]]
  1000bc608  mov     x29, x29
  1000bc60c  bl      _objc_retainAutoreleasedReturnValue
  1000bc610  mov     x23, x0
  1000bc614  mov     x0, x19
  1000bc618  mov     x1, x20
  1000bc61c  mov     x2, x23
  1000bc620  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Total shots fired: %d\n", [self totalShotsFired]]]
  1000bc624  mov     x0, x23
  1000bc628  bl      _objc_release
  1000bc62c  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc630  adrp    x8, #0x100418000
  1000bc634  nop
  1000bc638  ldr     x1, [x8, #0x798]
  1000bc63c  mov     x0, x21
  1000bc640  bl      _objc_msgSend                            ; [self highestCombo]
  1000bc644  str     x0, [sp]
  1000bc648  adrp    x2, #0x1003c1000
  1000bc64c  add     x2, x2, #0xab0                           ; @"  Highest Combo: %d\n"
  1000bc650  mov     x0, x23
  1000bc654  mov     x1, x22
  1000bc658  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Highest Combo: %d\n", [self highestCombo]]
  1000bc65c  mov     x29, x29
  1000bc660  bl      _objc_retainAutoreleasedReturnValue
  1000bc664  mov     x23, x0
  1000bc668  mov     x0, x19
  1000bc66c  mov     x1, x20
  1000bc670  mov     x2, x23
  1000bc674  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Highest Combo: %d\n", [self highestCombo]]]
  1000bc678  mov     x0, x23
  1000bc67c  bl      _objc_release
  1000bc680  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc684  adrp    x8, #0x100419000
  1000bc688  nop
  1000bc68c  ldr     x1, [x8, #0xe8]
  1000bc690  mov     x0, x21
  1000bc694  bl      _objc_msgSend                            ; [self combo]
  1000bc698  str     x0, [sp]
  1000bc69c  adrp    x2, #0x1003c1000
  1000bc6a0  add     x2, x2, #0xad0                           ; @"  Combo: %d\n"
  1000bc6a4  mov     x0, x23
  1000bc6a8  mov     x1, x22
  1000bc6ac  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Combo: %d\n", [self combo]]
  1000bc6b0  mov     x29, x29
  1000bc6b4  bl      _objc_retainAutoreleasedReturnValue
  1000bc6b8  mov     x23, x0
  1000bc6bc  mov     x0, x19
  1000bc6c0  mov     x1, x20
  1000bc6c4  mov     x2, x23
  1000bc6c8  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Combo: %d\n", [self combo]]]
  1000bc6cc  mov     x0, x23
  1000bc6d0  bl      _objc_release
  1000bc6d4  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc6d8  adrp    x8, #0x10041a000
  1000bc6dc  nop
  1000bc6e0  ldr     x1, [x8, #0x8c0]
  1000bc6e4  mov     x0, x21
  1000bc6e8  bl      _objc_msgSend                            ; [self meleeSwings]
  1000bc6ec  str     x0, [sp]
  1000bc6f0  adrp    x2, #0x1003c1000
  1000bc6f4  add     x2, x2, #0xaf0                           ; @"  Num Melee Swings: %d\n"
  1000bc6f8  mov     x0, x23
  1000bc6fc  mov     x1, x22
  1000bc700  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Melee Swings: %d\n", [self meleeSwings]]
  1000bc704  mov     x29, x29
  1000bc708  bl      _objc_retainAutoreleasedReturnValue
  1000bc70c  mov     x23, x0
  1000bc710  mov     x0, x19
  1000bc714  mov     x1, x20
  1000bc718  mov     x2, x23
  1000bc71c  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Melee Swings: %d\n", [self meleeSwings]]]
  1000bc720  mov     x0, x23
  1000bc724  bl      _objc_release
  1000bc728  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc72c  adrp    x8, #0x10041a000
  1000bc730  nop
  1000bc734  ldr     x1, [x8, #0x8d8]
  1000bc738  mov     x0, x21
  1000bc73c  bl      _objc_msgSend                            ; [self meleeHits]
  1000bc740  str     x0, [sp]
  1000bc744  adrp    x2, #0x1003c1000
  1000bc748  add     x2, x2, #0xb10                           ; @"  Num Melee Hits: %d\n"
  1000bc74c  mov     x0, x23
  1000bc750  mov     x1, x22
  1000bc754  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Melee Hits: %d\n", [self meleeHits]]
  1000bc758  mov     x29, x29
  1000bc75c  bl      _objc_retainAutoreleasedReturnValue
  1000bc760  mov     x23, x0
  1000bc764  mov     x0, x19
  1000bc768  mov     x1, x20
  1000bc76c  mov     x2, x23
  1000bc770  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Melee Hits: %d\n", [self meleeHits]]]
  1000bc774  mov     x0, x23
  1000bc778  bl      _objc_release
  1000bc77c  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc780  adrp    x8, #0x10041a000
  1000bc784  nop
  1000bc788  ldr     x1, [x8, #0x850]
  1000bc78c  mov     x0, x21
  1000bc790  bl      _objc_msgSend                            ; [self coinsForKill]
  1000bc794  str     x0, [sp]
  1000bc798  adrp    x2, #0x1003c1000
  1000bc79c  add     x2, x2, #0xb30                           ; @"  Num Coins for Kill: %d\n"
  1000bc7a0  mov     x0, x23
  1000bc7a4  mov     x1, x22
  1000bc7a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Coins for Kill: %d\n", [self coinsForKill]]
  1000bc7ac  mov     x29, x29
  1000bc7b0  bl      _objc_retainAutoreleasedReturnValue
  1000bc7b4  mov     x23, x0
  1000bc7b8  mov     x0, x19
  1000bc7bc  mov     x1, x20
  1000bc7c0  mov     x2, x23
  1000bc7c4  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Coins for Kill: %d\n", [self coinsForKill]]]
  1000bc7c8  mov     x0, x23
  1000bc7cc  bl      _objc_release
  1000bc7d0  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc7d4  adrp    x8, #0x100417000
  1000bc7d8  nop
  1000bc7dc  ldr     x1, [x8, #0xdb8]
  1000bc7e0  mov     x0, x21
  1000bc7e4  bl      _objc_msgSend                            ; [self diamondLoot]
  1000bc7e8  str     x0, [sp]
  1000bc7ec  adrp    x2, #0x1003c1000
  1000bc7f0  add     x2, x2, #0xb50                           ; @"  Num Diamonds: %d\n"
  1000bc7f4  mov     x0, x23
  1000bc7f8  mov     x1, x22
  1000bc7fc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Diamonds: %d\n", [self diamondLoot]]
  1000bc800  mov     x29, x29
  1000bc804  bl      _objc_retainAutoreleasedReturnValue
  1000bc808  mov     x23, x0
  1000bc80c  mov     x0, x19
  1000bc810  mov     x1, x20
  1000bc814  mov     x2, x23
  1000bc818  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Diamonds: %d\n", [self diamondLoot]]]
  1000bc81c  mov     x0, x23
  1000bc820  bl      _objc_release
  1000bc824  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc828  adrp    x8, #0x100417000
  1000bc82c  nop
  1000bc830  ldr     x1, [x8, #0xdc0]
  1000bc834  mov     x0, x21
  1000bc838  bl      _objc_msgSend                            ; [self timeElapsed]
  1000bc83c  str     d0, [sp]
  1000bc840  adrp    x2, #0x1003c1000
  1000bc844  add     x2, x2, #0xb70                           ; @"  Time Elapsed: %.2f\n"
  1000bc848  mov     x0, x23
  1000bc84c  mov     x1, x22
  1000bc850  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Time Elapsed: %.2f\n", [self timeElapsed]]
  1000bc854  mov     x29, x29
  1000bc858  bl      _objc_retainAutoreleasedReturnValue
  1000bc85c  mov     x23, x0
  1000bc860  mov     x0, x19
  1000bc864  mov     x1, x20
  1000bc868  mov     x2, x23
  1000bc86c  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Time Elapsed: %.2f\n", [self timeElapsed]]]
  1000bc870  mov     x0, x23
  1000bc874  bl      _objc_release
  1000bc878  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc87c  adrp    x8, #0x100418000
  1000bc880  nop
  1000bc884  ldr     x1, [x8, #0x9a0]
  1000bc888  mov     x0, x21
  1000bc88c  bl      _objc_msgSend                            ; [self challengeTimeElapsed]
  1000bc890  str     d0, [sp]
  1000bc894  adrp    x2, #0x1003c1000
  1000bc898  add     x2, x2, #0xb90                           ; @"  Challenge Time Elapsed: %.2f\n"
  1000bc89c  mov     x0, x23
  1000bc8a0  mov     x1, x22
  1000bc8a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Challenge Time Elapsed: %.2f\n", [self challengeTimeElapsed]]
  1000bc8a8  mov     x29, x29
  1000bc8ac  bl      _objc_retainAutoreleasedReturnValue
  1000bc8b0  mov     x23, x0
  1000bc8b4  mov     x0, x19
  1000bc8b8  mov     x1, x20
  1000bc8bc  mov     x2, x23
  1000bc8c0  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Challenge Time Elapsed: %.2f\n", [self challengeTimeElapsed]]]
  1000bc8c4  mov     x0, x23
  1000bc8c8  bl      _objc_release
  1000bc8cc  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc8d0  adrp    x8, #0x100418000
  1000bc8d4  nop
  1000bc8d8  ldr     x1, [x8, #0xf08]
  1000bc8dc  mov     x0, x21
  1000bc8e0  bl      _objc_msgSend                            ; [self brickTime]
  1000bc8e4  str     d0, [sp]
  1000bc8e8  adrp    x2, #0x1003c1000
  1000bc8ec  add     x2, x2, #0xbb0                           ; @"  Brick Time: %.2f\n"
  1000bc8f0  mov     x0, x23
  1000bc8f4  mov     x1, x22
  1000bc8f8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Brick Time: %.2f\n", [self brickTime]]
  1000bc8fc  mov     x29, x29
  1000bc900  bl      _objc_retainAutoreleasedReturnValue
  1000bc904  mov     x23, x0
  1000bc908  mov     x0, x19
  1000bc90c  mov     x1, x20
  1000bc910  mov     x2, x23
  1000bc914  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Brick Time: %.2f\n", [self brickTime]]]
  1000bc918  mov     x0, x23
  1000bc91c  bl      _objc_release
  1000bc920  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc924  adrp    x8, #0x10041a000
  1000bc928  nop
  1000bc92c  ldr     x1, [x8, #0x930]
  1000bc930  mov     x0, x21
  1000bc934  bl      _objc_msgSend                            ; [self numCriticalHits]
  1000bc938  str     x0, [sp]
  1000bc93c  adrp    x2, #0x1003c1000
  1000bc940  add     x2, x2, #0xbd0                           ; @"  Num Critical Hits: %d\n"
  1000bc944  mov     x0, x23
  1000bc948  mov     x1, x22
  1000bc94c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Critical Hits: %d\n", [self numCriticalHits]]
  1000bc950  mov     x29, x29
  1000bc954  bl      _objc_retainAutoreleasedReturnValue
  1000bc958  mov     x23, x0
  1000bc95c  mov     x0, x19
  1000bc960  mov     x1, x20
  1000bc964  mov     x2, x23
  1000bc968  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Critical Hits: %d\n", [self numCriticalHits]]]
  1000bc96c  mov     x0, x23
  1000bc970  bl      _objc_release
  1000bc974  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc978  adrp    x8, #0x10041a000
  1000bc97c  nop
  1000bc980  ldr     x1, [x8, #0x938]
  1000bc984  mov     x0, x21
  1000bc988  bl      _objc_msgSend                            ; [self numberOfBricksDefeated]
  1000bc98c  str     x0, [sp]
  1000bc990  adrp    x2, #0x1003c1000
  1000bc994  add     x2, x2, #0xbf0                           ; @"  Num Bricks Defeated: %d\n"
  1000bc998  mov     x0, x23
  1000bc99c  mov     x1, x22
  1000bc9a0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Num Bricks Defeated: %d\n", [self numberOfBricksDefeated]]
  1000bc9a4  mov     x29, x29
  1000bc9a8  bl      _objc_retainAutoreleasedReturnValue
  1000bc9ac  mov     x23, x0
  1000bc9b0  mov     x0, x19
  1000bc9b4  mov     x1, x20
  1000bc9b8  mov     x2, x23
  1000bc9bc  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Num Bricks Defeated: %d\n", [self numberOfBricksDefeated]]]
  1000bc9c0  mov     x0, x23
  1000bc9c4  bl      _objc_release
  1000bc9c8  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bc9cc  adrp    x8, #0x100417000
  1000bc9d0  nop
  1000bc9d4  ldr     x1, [x8, #0xda0]
  1000bc9d8  mov     x0, x21
  1000bc9dc  bl      _objc_msgSend                            ; [self gameScore]
  1000bc9e0  str     x0, [sp]
  1000bc9e4  adrp    x2, #0x1003c1000
  1000bc9e8  add     x2, x2, #0xc10                           ; @"  Game score: %d\n"
  1000bc9ec  mov     x0, x23
  1000bc9f0  mov     x1, x22
  1000bc9f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Game score: %d\n", [self gameScore]]
  1000bc9f8  mov     x29, x29
  1000bc9fc  bl      _objc_retainAutoreleasedReturnValue
  1000bca00  mov     x23, x0
  1000bca04  mov     x0, x19
  1000bca08  mov     x1, x20
  1000bca0c  mov     x2, x23
  1000bca10  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Game score: %d\n", [self gameScore]]]
  1000bca14  mov     x0, x23
  1000bca18  bl      _objc_release
  1000bca1c  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bca20  adrp    x8, #0x100417000
  1000bca24  nop
  1000bca28  ldr     x1, [x8, #0xdb0]
  1000bca2c  mov     x0, x21
  1000bca30  bl      _objc_msgSend                            ; [self totalCoins]
  1000bca34  str     x0, [sp]
  1000bca38  adrp    x2, #0x1003c1000
  1000bca3c  add     x2, x2, #0xc30                           ; @"  Total Coins: %d\n"
  1000bca40  mov     x0, x23
  1000bca44  mov     x1, x22
  1000bca48  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Total Coins: %d\n", [self totalCoins]]
  1000bca4c  mov     x29, x29
  1000bca50  bl      _objc_retainAutoreleasedReturnValue
  1000bca54  mov     x23, x0
  1000bca58  mov     x0, x19
  1000bca5c  mov     x1, x20
  1000bca60  mov     x2, x23
  1000bca64  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Total Coins: %d\n", [self totalCoins]]]
  1000bca68  mov     x0, x23
  1000bca6c  bl      _objc_release
  1000bca70  ldr     x24, [x25, #0xf78]                       ; class NSString
  1000bca74  adrp    x8, #0x10041a000
  1000bca78  nop
  1000bca7c  ldr     x1, [x8, #0x870]
  1000bca80  mov     x0, x21
  1000bca84  bl      _objc_msgSend                            ; [self enemyList]
  1000bca88  mov     x29, x29
  1000bca8c  bl      _objc_retainAutoreleasedReturnValue
  1000bca90  mov     x23, x0
  1000bca94  str     x23, [sp]
  1000bca98  adrp    x2, #0x1003c1000
  1000bca9c  add     x2, x2, #0xc50                           ; @"  Enemies: %@\n"
  1000bcaa0  mov     x0, x24
  1000bcaa4  mov     x1, x22
  1000bcaa8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Enemies: %@\n", [self enemyList]]
  1000bcaac  mov     x29, x29
  1000bcab0  bl      _objc_retainAutoreleasedReturnValue
  1000bcab4  mov     x24, x0
  1000bcab8  mov     x0, x19
  1000bcabc  mov     x1, x20
  1000bcac0  mov     x2, x24
  1000bcac4  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Enemies: %@\n", [self enemyList]]]
  1000bcac8  mov     x0, x24
  1000bcacc  bl      _objc_release
  1000bcad0  mov     x0, x23
  1000bcad4  bl      _objc_release
  1000bcad8  ldr     x24, [x25, #0xf78]                       ; class NSString
  1000bcadc  adrp    x8, #0x10041a000
  1000bcae0  nop
  1000bcae4  ldr     x1, [x8, #0x8e8]
  1000bcae8  mov     x0, x21
  1000bcaec  bl      _objc_msgSend                            ; [self weaponCriticalHits]
  1000bcaf0  mov     x29, x29
  1000bcaf4  bl      _objc_retainAutoreleasedReturnValue
  1000bcaf8  mov     x23, x0
  1000bcafc  str     x23, [sp]
  1000bcb00  adrp    x2, #0x1003c1000
  1000bcb04  add     x2, x2, #0xc70                           ; @"  Weapon Critical Hits: %@\n"
  1000bcb08  mov     x0, x24
  1000bcb0c  mov     x1, x22
  1000bcb10  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Weapon Critical Hits: %@\n", [self weaponCriticalHits]]
  1000bcb14  mov     x29, x29
  1000bcb18  bl      _objc_retainAutoreleasedReturnValue
  1000bcb1c  mov     x24, x0
  1000bcb20  mov     x0, x19
  1000bcb24  mov     x1, x20
  1000bcb28  mov     x2, x24
  1000bcb2c  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Weapon Critical Hits: %@\n", [self weaponCriticalHits]]]
  1000bcb30  mov     x0, x24
  1000bcb34  bl      _objc_release
  1000bcb38  mov     x0, x23
  1000bcb3c  bl      _objc_release
  1000bcb40  ldr     x23, [x25, #0xf78]                       ; class NSString
  1000bcb44  adrp    x8, #0x10041a000
  1000bcb48  nop
  1000bcb4c  ldr     x1, [x8, #0x898]
  1000bcb50  mov     x0, x21
  1000bcb54  bl      _objc_msgSend                            ; [self weaponsData]
  1000bcb58  mov     x29, x29
  1000bcb5c  bl      _objc_retainAutoreleasedReturnValue
  1000bcb60  mov     x21, x0
  1000bcb64  str     x21, [sp]
  1000bcb68  adrp    x2, #0x1003c1000
  1000bcb6c  add     x2, x2, #0xc90                           ; @"  Weapons: %@\n"
  1000bcb70  mov     x0, x23
  1000bcb74  mov     x1, x22
  1000bcb78  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"  Weapons: %@\n", [self weaponsData]]
  1000bcb7c  mov     x29, x29
  1000bcb80  bl      _objc_retainAutoreleasedReturnValue
  1000bcb84  mov     x22, x0
  1000bcb88  mov     x0, x19
  1000bcb8c  mov     x1, x20
  1000bcb90  mov     x2, x22
  1000bcb94  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendString:[NSString stringWithFormat:@"  Weapons: %@\n", [self weaponsData]]]
  1000bcb98  mov     x0, x22
  1000bcb9c  bl      _objc_release
  1000bcba0  mov     x0, x21
  1000bcba4  bl      _objc_release
  1000bcba8  mov     x0, x19
  1000bcbac  sub     sp, x29, #0x40
  1000bcbb0  ldp     x29, x30, [sp, #0x40]
  1000bcbb4  ldp     x20, x19, [sp, #0x30]
  1000bcbb8  ldp     x22, x21, [sp, #0x20]
  1000bcbbc  ldp     x24, x23, [sp, #0x10]
  1000bcbc0  ldp     x26, x25, [sp], #0x50
  1000bcbc4  b       _objc_autoreleaseReturnValue
  1000bcbc8  mov     x20, x0
  1000bcbcc  b       loc_1000bcc34
  1000bcbd0  b       loc_1000bcc28
  1000bcbd4  b       loc_1000bcc28
  1000bcbd8  b       loc_1000bcc28
  1000bcbdc  b       loc_1000bcc28
  1000bcbe0  b       loc_1000bcc44
  1000bcbe4  b       loc_1000bcc28
  1000bcbe8  b       loc_1000bcc28
  1000bcbec  b       loc_1000bcc28
  1000bcbf0  b       loc_1000bcc28
  1000bcbf4  b       loc_1000bcc28
  1000bcbf8  b       loc_1000bcc28
  1000bcbfc  b       loc_1000bcc28
  1000bcc00  b       loc_1000bcc28
  1000bcc04  b       loc_1000bcc28
  1000bcc08  b       loc_1000bcc28
  1000bcc0c  b       loc_1000bcc28
  1000bcc10  b       loc_1000bcc28
  1000bcc14  b       loc_1000bcc28
  1000bcc18  b       loc_1000bcc28
  1000bcc1c  b       loc_1000bcc28
  1000bcc20  b       loc_1000bcc28
  1000bcc24  b       loc_1000bcc44
loc_1000bcc28:
  1000bcc28  mov     x20, x0
loc_1000bcc2c:
  1000bcc2c  mov     x0, x23
loc_1000bcc30:
  1000bcc30  bl      _objc_release
loc_1000bcc34:
  1000bcc34  mov     x0, x19
  1000bcc38  bl      _objc_release
  1000bcc3c  mov     x0, x20
  1000bcc40  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000bcc44:
  1000bcc44  mov     x20, x0
  1000bcc48  mov     x0, x24
  1000bcc4c  bl      _objc_release
  1000bcc50  b       loc_1000bcc2c
  1000bcc54  mov     x20, x0
  1000bcc58  b       loc_1000bcc68
  1000bcc5c  mov     x20, x0
  1000bcc60  mov     x0, x22
  1000bcc64  bl      _objc_release
loc_1000bcc68:
  1000bcc68  mov     x0, x21
  1000bcc6c  b       loc_1000bcc30

; ======================================================================
; -[ADInGameStats debugDescription]
; address 0x1000bcc70  size 16  kind objc
; ======================================================================
  1000bcc70  adrp    x8, #0x100418000
  1000bcc74  nop
  1000bcc78  ldr     x1, [x8, #0x648]
  1000bcc7c  b       _objc_msgSend                            ; [self description]

; ======================================================================
; -[ADInGameStats dealloc]
; address 0x1000bcc80  size 208  kind objc
; ======================================================================
  1000bcc80  stp     x20, x19, [sp, #-0x20]!
  1000bcc84  stp     x29, x30, [sp, #0x10]
  1000bcc88  add     x29, sp, #0x10
  1000bcc8c  sub     sp, sp, #0x20
  1000bcc90  mov     x19, x0
  1000bcc94  adrp    x8, #0x10041d000
  1000bcc98  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  1000bcc9c  adrp    x8, #0x100416000
  1000bcca0  nop
  1000bcca4  ldr     x1, [x8, #0xe88]
  1000bcca8  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  1000bccac  mov     x29, x29
  1000bccb0  bl      _objc_retainAutoreleasedReturnValue
  1000bccb4  mov     x20, x0
  1000bccb8  adrp    x8, #0x100418000
  1000bccbc  nop
  1000bccc0  ldr     x1, [x8, #0x328]
  1000bccc4  mov     x2, x19
  1000bccc8  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] removeObserver:self]
  1000bcccc  mov     x0, x20
  1000bccd0  bl      _objc_release
  1000bccd4  str     x19, [sp, #0x10]
  1000bccd8  adrp    x8, #0x10041e000
  1000bccdc  ldr     x8, [x8, #0xf78]
  1000bcce0  str     x8, [sp, #0x18]
  1000bcce4  adrp    x8, #0x100416000
  1000bcce8  nop
  1000bccec  ldr     x1, [x8, #0xfc8]
  1000bccf0  add     x0, sp, #0x10
  1000bccf4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000bccf8  sub     sp, x29, #0x10
  1000bccfc  ldp     x29, x30, [sp, #0x10]
  1000bcd00  ldp     x20, x19, [sp], #0x20
  1000bcd04  ret
  1000bcd08  mov     x20, x0
  1000bcd0c  b       loc_1000bcd20
  1000bcd10  mov     x1, x20
  1000bcd14  mov     x20, x0
  1000bcd18  mov     x0, x1
  1000bcd1c  bl      _objc_release
loc_1000bcd20:
  1000bcd20  str     x19, [sp]
  1000bcd24  adrp    x8, #0x10041e000
  1000bcd28  ldr     x8, [x8, #0xf78]
  1000bcd2c  str     x8, [sp, #8]
  1000bcd30  adrp    x8, #0x100416000
  1000bcd34  nop
  1000bcd38  ldr     x1, [x8, #0xfc8]
  1000bcd3c  mov     x0, sp
  1000bcd40  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000bcd44  mov     x0, x20
  1000bcd48  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000bcd4c  bl      sub_10000b760

; ======================================================================
; -[ADInGameStats enemyList]
; address 0x1000bcd50  size 16  kind objc
; ======================================================================
  1000bcd50  adrp    x8, #0x100420000
  1000bcd54  ldrsw   x2, [x8, #0x294]                         ; ivar offset ADInGameStats._enemyList (+0x28)
  1000bcd58  mov     w3, #1
  1000bcd5c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setEnemyList:]
; address 0x1000bcd60  size 12  kind objc
; ======================================================================
  1000bcd60  adrp    x8, #0x100420000
  1000bcd64  ldrsw   x3, [x8, #0x294]                         ; ivar offset ADInGameStats._enemyList (+0x28)
  1000bcd68  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats weaponsData]
; address 0x1000bcd6c  size 16  kind objc
; ======================================================================
  1000bcd6c  adrp    x8, #0x100420000
  1000bcd70  ldrsw   x2, [x8, #0x298]                         ; ivar offset ADInGameStats._weaponsData (+0x30)
  1000bcd74  mov     w3, #1
  1000bcd78  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setWeaponsData:]
; address 0x1000bcd7c  size 12  kind objc
; ======================================================================
  1000bcd7c  adrp    x8, #0x100420000
  1000bcd80  ldrsw   x3, [x8, #0x298]                         ; ivar offset ADInGameStats._weaponsData (+0x30)
  1000bcd84  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats combo]
; address 0x1000bcd88  size 16  kind objc
; ======================================================================
  1000bcd88  adrp    x8, #0x100420000
  1000bcd8c  ldrsw   x8, [x8, #0x284]                         ; ivar offset ADInGameStats._combo (+0x38)
  1000bcd90  ldr     x0, [x0, x8]                             ; x0 = self->_combo
  1000bcd94  ret

; ======================================================================
; -[ADInGameStats meleeSwings]
; address 0x1000bcd98  size 16  kind objc
; ======================================================================
  1000bcd98  adrp    x8, #0x100420000
  1000bcd9c  ldrsw   x8, [x8, #0x29c]                         ; ivar offset ADInGameStats._meleeSwings (+0x40)
  1000bcda0  ldr     x0, [x0, x8]                             ; x0 = self->_meleeSwings
  1000bcda4  ret

; ======================================================================
; -[ADInGameStats setMeleeSwings:]
; address 0x1000bcda8  size 16  kind objc
; ======================================================================
  1000bcda8  adrp    x8, #0x100420000
  1000bcdac  ldrsw   x8, [x8, #0x29c]                         ; ivar offset ADInGameStats._meleeSwings (+0x40)
  1000bcdb0  str     x2, [x0, x8]                             ; self->_meleeSwings = arg1
  1000bcdb4  ret

; ======================================================================
; -[ADInGameStats meleeHits]
; address 0x1000bcdb8  size 16  kind objc
; ======================================================================
  1000bcdb8  adrp    x8, #0x100420000
  1000bcdbc  ldrsw   x8, [x8, #0x2a0]                         ; ivar offset ADInGameStats._meleeHits (+0x48)
  1000bcdc0  ldr     x0, [x0, x8]                             ; x0 = self->_meleeHits
  1000bcdc4  ret

; ======================================================================
; -[ADInGameStats setMeleeHits:]
; address 0x1000bcdc8  size 16  kind objc
; ======================================================================
  1000bcdc8  adrp    x8, #0x100420000
  1000bcdcc  ldrsw   x8, [x8, #0x2a0]                         ; ivar offset ADInGameStats._meleeHits (+0x48)
  1000bcdd0  str     x2, [x0, x8]                             ; self->_meleeHits = arg1
  1000bcdd4  ret

; ======================================================================
; -[ADInGameStats highestCombo]
; address 0x1000bcdd8  size 16  kind objc
; ======================================================================
  1000bcdd8  adrp    x8, #0x100420000
  1000bcddc  ldrsw   x8, [x8, #0x2a4]                         ; ivar offset ADInGameStats._highestCombo (+0x50)
  1000bcde0  ldr     x0, [x0, x8]                             ; x0 = self->_highestCombo
  1000bcde4  ret

; ======================================================================
; -[ADInGameStats setHighestCombo:]
; address 0x1000bcde8  size 16  kind objc
; ======================================================================
  1000bcde8  adrp    x8, #0x100420000
  1000bcdec  ldrsw   x8, [x8, #0x2a4]                         ; ivar offset ADInGameStats._highestCombo (+0x50)
  1000bcdf0  str     x2, [x0, x8]                             ; self->_highestCombo = arg1
  1000bcdf4  ret

; ======================================================================
; -[ADInGameStats gameScore]
; address 0x1000bcdf8  size 16  kind objc
; ======================================================================
  1000bcdf8  adrp    x8, #0x100420000
  1000bcdfc  ldrsw   x8, [x8, #0x2a8]                         ; ivar offset ADInGameStats._gameScore (+0x58)
  1000bce00  ldr     x0, [x0, x8]                             ; x0 = self->_gameScore
  1000bce04  ret

; ======================================================================
; -[ADInGameStats setGameScore:]
; address 0x1000bce08  size 16  kind objc
; ======================================================================
  1000bce08  adrp    x8, #0x100420000
  1000bce0c  ldrsw   x8, [x8, #0x2a8]                         ; ivar offset ADInGameStats._gameScore (+0x58)
  1000bce10  str     x2, [x0, x8]                             ; self->_gameScore = arg1
  1000bce14  ret

; ======================================================================
; -[ADInGameStats coinsForKill]
; address 0x1000bce18  size 16  kind objc
; ======================================================================
  1000bce18  adrp    x8, #0x100420000
  1000bce1c  ldrsw   x8, [x8, #0x2ac]                         ; ivar offset ADInGameStats._coinsForKill (+0x60)
  1000bce20  ldr     x0, [x0, x8]                             ; x0 = self->_coinsForKill
  1000bce24  ret

; ======================================================================
; -[ADInGameStats setCoinsForKill:]
; address 0x1000bce28  size 16  kind objc
; ======================================================================
  1000bce28  adrp    x8, #0x100420000
  1000bce2c  ldrsw   x8, [x8, #0x2ac]                         ; ivar offset ADInGameStats._coinsForKill (+0x60)
  1000bce30  str     x2, [x0, x8]                             ; self->_coinsForKill = arg1
  1000bce34  ret

; ======================================================================
; -[ADInGameStats totalCoins]
; address 0x1000bce38  size 16  kind objc
; ======================================================================
  1000bce38  adrp    x8, #0x100420000
  1000bce3c  ldrsw   x8, [x8, #0x2b0]                         ; ivar offset ADInGameStats._totalCoins (+0x68)
  1000bce40  ldr     x0, [x0, x8]                             ; x0 = self->_totalCoins
  1000bce44  ret

; ======================================================================
; -[ADInGameStats setTotalCoins:]
; address 0x1000bce48  size 16  kind objc
; ======================================================================
  1000bce48  adrp    x8, #0x100420000
  1000bce4c  ldrsw   x8, [x8, #0x2b0]                         ; ivar offset ADInGameStats._totalCoins (+0x68)
  1000bce50  str     x2, [x0, x8]                             ; self->_totalCoins = arg1
  1000bce54  ret

; ======================================================================
; -[ADInGameStats diamondLoot]
; address 0x1000bce58  size 16  kind objc
; ======================================================================
  1000bce58  adrp    x8, #0x100420000
  1000bce5c  ldrsw   x8, [x8, #0x2b4]                         ; ivar offset ADInGameStats._diamondLoot (+0x70)
  1000bce60  ldr     x0, [x0, x8]                             ; x0 = self->_diamondLoot
  1000bce64  ret

; ======================================================================
; -[ADInGameStats setDiamondLoot:]
; address 0x1000bce68  size 16  kind objc
; ======================================================================
  1000bce68  adrp    x8, #0x100420000
  1000bce6c  ldrsw   x8, [x8, #0x2b4]                         ; ivar offset ADInGameStats._diamondLoot (+0x70)
  1000bce70  str     x2, [x0, x8]                             ; self->_diamondLoot = arg1
  1000bce74  ret

; ======================================================================
; -[ADInGameStats gameMode]
; address 0x1000bce78  size 16  kind objc
; ======================================================================
  1000bce78  adrp    x8, #0x100420000
  1000bce7c  ldrsw   x2, [x8, #0x2b8]                         ; ivar offset ADInGameStats._gameMode (+0x78)
  1000bce80  mov     w3, #1
  1000bce84  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setGameMode:]
; address 0x1000bce88  size 12  kind objc
; ======================================================================
  1000bce88  adrp    x8, #0x100420000
  1000bce8c  ldrsw   x3, [x8, #0x2b8]                         ; ivar offset ADInGameStats._gameMode (+0x78)
  1000bce90  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats numCriticalHits]
; address 0x1000bce94  size 16  kind objc
; ======================================================================
  1000bce94  adrp    x8, #0x100420000
  1000bce98  ldrsw   x8, [x8, #0x2bc]                         ; ivar offset ADInGameStats._numCriticalHits (+0x80)
  1000bce9c  ldr     x0, [x0, x8]                             ; x0 = self->_numCriticalHits
  1000bcea0  ret

; ======================================================================
; -[ADInGameStats setNumCriticalHits:]
; address 0x1000bcea4  size 16  kind objc
; ======================================================================
  1000bcea4  adrp    x8, #0x100420000
  1000bcea8  ldrsw   x8, [x8, #0x2bc]                         ; ivar offset ADInGameStats._numCriticalHits (+0x80)
  1000bceac  str     x2, [x0, x8]                             ; self->_numCriticalHits = arg1
  1000bceb0  ret

; ======================================================================
; -[ADInGameStats weaponCriticalHits]
; address 0x1000bceb4  size 16  kind objc
; ======================================================================
  1000bceb4  adrp    x8, #0x100420000
  1000bceb8  ldrsw   x2, [x8, #0x2c0]                         ; ivar offset ADInGameStats._weaponCriticalHits (+0x88)
  1000bcebc  mov     w3, #1
  1000bcec0  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setWeaponCriticalHits:]
; address 0x1000bcec4  size 12  kind objc
; ======================================================================
  1000bcec4  adrp    x8, #0x100420000
  1000bcec8  ldrsw   x3, [x8, #0x2c0]                         ; ivar offset ADInGameStats._weaponCriticalHits (+0x88)
  1000bcecc  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats currentBrickName]
; address 0x1000bced0  size 16  kind objc
; ======================================================================
  1000bced0  adrp    x8, #0x100420000
  1000bced4  ldrsw   x2, [x8, #0x2c4]                         ; ivar offset ADInGameStats._currentBrickName (+0x90)
  1000bced8  mov     w3, #1
  1000bcedc  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setCurrentBrickName:]
; address 0x1000bcee0  size 12  kind objc
; ======================================================================
  1000bcee0  adrp    x8, #0x100420000
  1000bcee4  ldrsw   x3, [x8, #0x2c4]                         ; ivar offset ADInGameStats._currentBrickName (+0x90)
  1000bcee8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats enemyKillsWithPowerup]
; address 0x1000bceec  size 16  kind objc
; ======================================================================
  1000bceec  adrp    x8, #0x100420000
  1000bcef0  ldrsw   x8, [x8, #0x2c8]                         ; ivar offset ADInGameStats._enemyKillsWithPowerup (+0x98)
  1000bcef4  ldr     x0, [x0, x8]                             ; x0 = self->_enemyKillsWithPowerup
  1000bcef8  ret

; ======================================================================
; -[ADInGameStats setEnemyKillsWithPowerup:]
; address 0x1000bcefc  size 16  kind objc
; ======================================================================
  1000bcefc  adrp    x8, #0x100420000
  1000bcf00  ldrsw   x8, [x8, #0x2c8]                         ; ivar offset ADInGameStats._enemyKillsWithPowerup (+0x98)
  1000bcf04  str     x2, [x0, x8]                             ; self->_enemyKillsWithPowerup = arg1
  1000bcf08  ret

; ======================================================================
; -[ADInGameStats numberOfEnemyKills]
; address 0x1000bcf0c  size 16  kind objc
; ======================================================================
  1000bcf0c  adrp    x8, #0x100420000
  1000bcf10  ldrsw   x8, [x8, #0x2cc]                         ; ivar offset ADInGameStats._numberOfEnemyKills (+0xa0)
  1000bcf14  ldr     x0, [x0, x8]                             ; x0 = self->_numberOfEnemyKills
  1000bcf18  ret

; ======================================================================
; -[ADInGameStats setNumberOfEnemyKills:]
; address 0x1000bcf1c  size 16  kind objc
; ======================================================================
  1000bcf1c  adrp    x8, #0x100420000
  1000bcf20  ldrsw   x8, [x8, #0x2cc]                         ; ivar offset ADInGameStats._numberOfEnemyKills (+0xa0)
  1000bcf24  str     x2, [x0, x8]                             ; self->_numberOfEnemyKills = arg1
  1000bcf28  ret

; ======================================================================
; -[ADInGameStats numberOfBricksDefeated]
; address 0x1000bcf2c  size 16  kind objc
; ======================================================================
  1000bcf2c  adrp    x8, #0x100420000
  1000bcf30  ldrsw   x8, [x8, #0x2d0]                         ; ivar offset ADInGameStats._numberOfBricksDefeated (+0xa8)
  1000bcf34  ldr     x0, [x0, x8]                             ; x0 = self->_numberOfBricksDefeated
  1000bcf38  ret

; ======================================================================
; -[ADInGameStats setNumberOfBricksDefeated:]
; address 0x1000bcf3c  size 16  kind objc
; ======================================================================
  1000bcf3c  adrp    x8, #0x100420000
  1000bcf40  ldrsw   x8, [x8, #0x2d0]                         ; ivar offset ADInGameStats._numberOfBricksDefeated (+0xa8)
  1000bcf44  str     x2, [x0, x8]                             ; self->_numberOfBricksDefeated = arg1
  1000bcf48  ret

; ======================================================================
; -[ADInGameStats death]
; address 0x1000bcf4c  size 20  kind objc
; ======================================================================
  1000bcf4c  adrp    x8, #0x100420000
  1000bcf50  ldrsw   x8, [x8, #0x2d4]                         ; ivar offset ADInGameStats._death (+0x20)
  1000bcf54  ldrb    w8, [x0, x8]                             ; w8 = self->_death
  1000bcf58  and     w0, w8, #1
  1000bcf5c  ret

; ======================================================================
; -[ADInGameStats setDeath:]
; address 0x1000bcf60  size 16  kind objc
; ======================================================================
  1000bcf60  adrp    x8, #0x100420000
  1000bcf64  ldrsw   x8, [x8, #0x2d4]                         ; ivar offset ADInGameStats._death (+0x20)
  1000bcf68  strb    w2, [x0, x8]                             ; self->_death = arg1
  1000bcf6c  ret

; ======================================================================
; -[ADInGameStats numberMissionsCompleted]
; address 0x1000bcf70  size 16  kind objc
; ======================================================================
  1000bcf70  adrp    x8, #0x100420000
  1000bcf74  ldrsw   x8, [x8, #0x2d8]                         ; ivar offset ADInGameStats._numberMissionsCompleted (+0xb0)
  1000bcf78  ldr     x0, [x0, x8]                             ; x0 = self->_numberMissionsCompleted
  1000bcf7c  ret

; ======================================================================
; -[ADInGameStats setNumberMissionsCompleted:]
; address 0x1000bcf80  size 16  kind objc
; ======================================================================
  1000bcf80  adrp    x8, #0x100420000
  1000bcf84  ldrsw   x8, [x8, #0x2d8]                         ; ivar offset ADInGameStats._numberMissionsCompleted (+0xb0)
  1000bcf88  str     x2, [x0, x8]                             ; self->_numberMissionsCompleted = arg1
  1000bcf8c  ret

; ======================================================================
; -[ADInGameStats numberMissionsSkipped]
; address 0x1000bcf90  size 16  kind objc
; ======================================================================
  1000bcf90  adrp    x8, #0x100420000
  1000bcf94  ldrsw   x8, [x8, #0x2dc]                         ; ivar offset ADInGameStats._numberMissionsSkipped (+0xb8)
  1000bcf98  ldr     x0, [x0, x8]                             ; x0 = self->_numberMissionsSkipped
  1000bcf9c  ret

; ======================================================================
; -[ADInGameStats setNumberMissionsSkipped:]
; address 0x1000bcfa0  size 16  kind objc
; ======================================================================
  1000bcfa0  adrp    x8, #0x100420000
  1000bcfa4  ldrsw   x8, [x8, #0x2dc]                         ; ivar offset ADInGameStats._numberMissionsSkipped (+0xb8)
  1000bcfa8  str     x2, [x0, x8]                             ; self->_numberMissionsSkipped = arg1
  1000bcfac  ret

; ======================================================================
; -[ADInGameStats shotsOnTarget]
; address 0x1000bcfb0  size 16  kind objc
; ======================================================================
  1000bcfb0  adrp    x8, #0x100420000
  1000bcfb4  ldrsw   x8, [x8, #0x2e0]                         ; ivar offset ADInGameStats._shotsOnTarget (+0xc0)
  1000bcfb8  ldr     x0, [x0, x8]                             ; x0 = self->_shotsOnTarget
  1000bcfbc  ret

; ======================================================================
; -[ADInGameStats setShotsOnTarget:]
; address 0x1000bcfc0  size 16  kind objc
; ======================================================================
  1000bcfc0  adrp    x8, #0x100420000
  1000bcfc4  ldrsw   x8, [x8, #0x2e0]                         ; ivar offset ADInGameStats._shotsOnTarget (+0xc0)
  1000bcfc8  str     x2, [x0, x8]                             ; self->_shotsOnTarget = arg1
  1000bcfcc  ret

; ======================================================================
; -[ADInGameStats totalShotsFired]
; address 0x1000bcfd0  size 16  kind objc
; ======================================================================
  1000bcfd0  adrp    x8, #0x100420000
  1000bcfd4  ldrsw   x8, [x8, #0x2e4]                         ; ivar offset ADInGameStats._totalShotsFired (+0xc8)
  1000bcfd8  ldr     x0, [x0, x8]                             ; x0 = self->_totalShotsFired
  1000bcfdc  ret

; ======================================================================
; -[ADInGameStats setTotalShotsFired:]
; address 0x1000bcfe0  size 16  kind objc
; ======================================================================
  1000bcfe0  adrp    x8, #0x100420000
  1000bcfe4  ldrsw   x8, [x8, #0x2e4]                         ; ivar offset ADInGameStats._totalShotsFired (+0xc8)
  1000bcfe8  str     x2, [x0, x8]                             ; self->_totalShotsFired = arg1
  1000bcfec  ret

; ======================================================================
; -[ADInGameStats challengeTimeElapsedCalls]
; address 0x1000bcff0  size 20  kind objc
; ======================================================================
  1000bcff0  adrp    x8, #0x100420000
  1000bcff4  ldrsw   x8, [x8, #0x2e8]                         ; ivar offset ADInGameStats._challengeTimeElapsedCalls (+0xd0)
  1000bcff8  ldr     x8, [x0, x8]                             ; x8 = self->_challengeTimeElapsedCalls
  1000bcffc  fmov    d0, x8
  1000bd000  ret

; ======================================================================
; -[ADInGameStats setChallengeTimeElapsedCalls:]
; address 0x1000bd004  size 20  kind objc
; ======================================================================
  1000bd004  fmov    x8, d0
  1000bd008  adrp    x9, #0x100420000
  1000bd00c  ldrsw   x9, [x9, #0x2e8]                         ; ivar offset ADInGameStats._challengeTimeElapsedCalls (+0xd0)
  1000bd010  str     x8, [x0, x9]                             ; self->_challengeTimeElapsedCalls = arg1
  1000bd014  ret

; ======================================================================
; -[ADInGameStats timeElapsedCalls]
; address 0x1000bd018  size 20  kind objc
; ======================================================================
  1000bd018  adrp    x8, #0x100420000
  1000bd01c  ldrsw   x8, [x8, #0x2ec]                         ; ivar offset ADInGameStats._timeElapsedCalls (+0xd8)
  1000bd020  ldr     x8, [x0, x8]                             ; x8 = self->_timeElapsedCalls
  1000bd024  fmov    d0, x8
  1000bd028  ret

; ======================================================================
; -[ADInGameStats setTimeElapsedCalls:]
; address 0x1000bd02c  size 20  kind objc
; ======================================================================
  1000bd02c  fmov    x8, d0
  1000bd030  adrp    x9, #0x100420000
  1000bd034  ldrsw   x9, [x9, #0x2ec]                         ; ivar offset ADInGameStats._timeElapsedCalls (+0xd8)
  1000bd038  str     x8, [x0, x9]                             ; self->_timeElapsedCalls = arg1
  1000bd03c  ret

; ======================================================================
; -[ADInGameStats brickTimeCalls]
; address 0x1000bd040  size 20  kind objc
; ======================================================================
  1000bd040  adrp    x8, #0x100420000
  1000bd044  ldrsw   x8, [x8, #0x2f0]                         ; ivar offset ADInGameStats._brickTimeCalls (+0xe0)
  1000bd048  ldr     x8, [x0, x8]                             ; x8 = self->_brickTimeCalls
  1000bd04c  fmov    d0, x8
  1000bd050  ret

; ======================================================================
; -[ADInGameStats setBrickTimeCalls:]
; address 0x1000bd054  size 20  kind objc
; ======================================================================
  1000bd054  fmov    x8, d0
  1000bd058  adrp    x9, #0x100420000
  1000bd05c  ldrsw   x9, [x9, #0x2f0]                         ; ivar offset ADInGameStats._brickTimeCalls (+0xe0)
  1000bd060  str     x8, [x0, x9]                             ; self->_brickTimeCalls = arg1
  1000bd064  ret

; ======================================================================
; -[ADInGameStats sessionCompleted]
; address 0x1000bd068  size 20  kind objc
; ======================================================================
  1000bd068  adrp    x8, #0x100420000
  1000bd06c  ldrsw   x8, [x8, #0x2f4]                         ; ivar offset ADInGameStats._sessionCompleted (+0x21)
  1000bd070  ldrb    w8, [x0, x8]                             ; w8 = self->_sessionCompleted
  1000bd074  and     w0, w8, #1
  1000bd078  ret

; ======================================================================
; -[ADInGameStats setSessionCompleted:]
; address 0x1000bd07c  size 16  kind objc
; ======================================================================
  1000bd07c  adrp    x8, #0x100420000
  1000bd080  ldrsw   x8, [x8, #0x2f4]                         ; ivar offset ADInGameStats._sessionCompleted (+0x21)
  1000bd084  strb    w2, [x0, x8]                             ; self->_sessionCompleted = arg1
  1000bd088  ret

; ======================================================================
; -[ADInGameStats postGameData]
; address 0x1000bd08c  size 16  kind objc
; ======================================================================
  1000bd08c  adrp    x8, #0x100420000
  1000bd090  ldrsw   x2, [x8, #0x2f8]                         ; ivar offset ADInGameStats._postGameData (+0xe8)
  1000bd094  mov     w3, #1
  1000bd098  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setPostGameData:]
; address 0x1000bd09c  size 12  kind objc
; ======================================================================
  1000bd09c  adrp    x8, #0x100420000
  1000bd0a0  ldrsw   x3, [x8, #0x2f8]                         ; ivar offset ADInGameStats._postGameData (+0xe8)
  1000bd0a4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats enemiesToCoins]
; address 0x1000bd0a8  size 16  kind objc
; ======================================================================
  1000bd0a8  adrp    x8, #0x100420000
  1000bd0ac  ldrsw   x2, [x8, #0x2fc]                         ; ivar offset ADInGameStats._enemiesToCoins (+0xf0)
  1000bd0b0  mov     w3, #1
  1000bd0b4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADInGameStats setEnemiesToCoins:]
; address 0x1000bd0b8  size 12  kind objc
; ======================================================================
  1000bd0b8  adrp    x8, #0x100420000
  1000bd0bc  ldrsw   x3, [x8, #0x2fc]                         ; ivar offset ADInGameStats._enemiesToCoins (+0xf0)
  1000bd0c0  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADInGameStats .cxx_destruct]
; address 0x1000bd0c4  size 164  kind objc
; ======================================================================
  1000bd0c4  stp     x20, x19, [sp, #-0x20]!
  1000bd0c8  stp     x29, x30, [sp, #0x10]
  1000bd0cc  add     x29, sp, #0x10
  1000bd0d0  mov     x19, x0
  1000bd0d4  adrp    x8, #0x100420000
  1000bd0d8  ldrsw   x8, [x8, #0x2fc]                         ; ivar offset ADInGameStats._enemiesToCoins (+0xf0)
  1000bd0dc  add     x0, x19, x8
  1000bd0e0  mov     x1, #0
  1000bd0e4  bl      _objc_storeStrong
  1000bd0e8  adrp    x8, #0x100420000
  1000bd0ec  ldrsw   x8, [x8, #0x2f8]                         ; ivar offset ADInGameStats._postGameData (+0xe8)
  1000bd0f0  add     x0, x19, x8
  1000bd0f4  mov     x1, #0
  1000bd0f8  bl      _objc_storeStrong
  1000bd0fc  adrp    x8, #0x100420000
  1000bd100  ldrsw   x8, [x8, #0x2c4]                         ; ivar offset ADInGameStats._currentBrickName (+0x90)
  1000bd104  add     x0, x19, x8
  1000bd108  mov     x1, #0
  1000bd10c  bl      _objc_storeStrong
  1000bd110  adrp    x8, #0x100420000
  1000bd114  ldrsw   x8, [x8, #0x2c0]                         ; ivar offset ADInGameStats._weaponCriticalHits (+0x88)
  1000bd118  add     x0, x19, x8
  1000bd11c  mov     x1, #0
  1000bd120  bl      _objc_storeStrong
  1000bd124  adrp    x8, #0x100420000
  1000bd128  ldrsw   x8, [x8, #0x2b8]                         ; ivar offset ADInGameStats._gameMode (+0x78)
  1000bd12c  add     x0, x19, x8
  1000bd130  mov     x1, #0
  1000bd134  bl      _objc_storeStrong
  1000bd138  adrp    x8, #0x100420000
  1000bd13c  ldrsw   x8, [x8, #0x298]                         ; ivar offset ADInGameStats._weaponsData (+0x30)
  1000bd140  add     x0, x19, x8
  1000bd144  mov     x1, #0
  1000bd148  bl      _objc_storeStrong
  1000bd14c  mov     x1, #0
  1000bd150  adrp    x8, #0x100420000
  1000bd154  ldrsw   x8, [x8, #0x294]                         ; ivar offset ADInGameStats._enemyList (+0x28)
  1000bd158  add     x0, x19, x8
  1000bd15c  ldp     x29, x30, [sp, #0x10]
  1000bd160  ldp     x20, x19, [sp], #0x20
  1000bd164  b       _objc_storeStrong
