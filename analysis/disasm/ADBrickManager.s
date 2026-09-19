// unit ADBrickManager — 73 functions
//   0x1000c0fac     152  +[ADBrickManager sharedBrickManager]
//   0x1000c1044    1424  -[ADBrickManager init]
//   0x1000c15d4     408  -[ADBrickManager loadBrickChancePlist:]
//   0x1000c176c     296  -[ADBrickManager loadBrickScenarioPlist:]
//   0x1000c1894     252  -[ADBrickManager loadBrickChallengeArray:]
//   0x1000c1990     168  -[ADBrickManager loadImpactPlaylist]
//   0x1000c1a38      92  -[ADBrickManager reset]
//   0x1000c1a94     560  -[ADBrickManager runSanityCheck]
//   0x1000c1cc4    1044  -[ADBrickManager isBrickWithNameSane:]
//   0x1000c20d8      28  -[ADBrickManager currentBrick]
//   0x1000c20f4     176  -[ADBrickManager randomItemInBrickDictionary:]
//   0x1000c21a4    1016  -[ADBrickManager brickNameForWaveNumber:]
//   0x1000c259c     828  -[ADBrickManager canUseBrickWithName:]
//   0x1000c28d8      88  -[ADBrickManager scenarioBrickNameForWaveNumber:]
//   0x1000c2930    1144  -[ADBrickManager loadBrickWithName:]
//   0x1000c2da8     380  -[ADBrickManager checkPlaylistDeactivation]
//   0x1000c2f24     108  -[ADBrickManager checkPlaylistDeactivation]_block_invoke
//   0x1000c2f90       8  sub_1000c2f90
//   0x1000c2f98       8  sub_1000c2f98
//   0x1000c2fa0     124  -[ADBrickManager currentBrickName]
//   0x1000c301c      60  -[ADBrickManager mode]
//   0x1000c3058     780  -[ADBrickManager loadNextBrick]
//   0x1000c3364      92  -[ADBrickManager clearCurrentBrick]
//   0x1000c33c0      16  -[ADBrickManager enemiesList]
//   0x1000c33d0     136  -[ADBrickManager displayNameForEnemyWithName:]
//   0x1000c3458      52  -[ADBrickManager dictionaryForEnemyName:]
//   0x1000c348c     344  -[ADBrickManager allPotentialTargets]
//   0x1000c35e4     336  -[ADBrickManager numberOfActiveObjectsOnScene]
//   0x1000c3734     124  -[ADBrickManager enemiesFromCurrentBrick]
//   0x1000c37b0    1552  -[ADBrickManager update:]
//   0x1000c3dc0     184  -[ADBrickManager startMainMenuMusic]
//   0x1000c3e78      16  -[ADBrickManager minimumSquaredDistance]
//   0x1000c3e88     372  -[ADBrickManager blowEnemiesAway:]
//   0x1000c3ffc     456  -[ADBrickManager closestEnemy]
//   0x1000c41c4    2420  -[ADBrickManager calculateHitEnemiesWithWeapon:FromAngle:]
//   0x1000c4b38     708  -[ADBrickManager shotWithSpecialWeapon:]
//   0x1000c4dfc    2492  -[ADBrickManager shotWithWeapon:]
//   0x1000c57b8    1160  -[ADBrickManager targetEnemiForExplosiveWeapon:]
//   0x1000c5c40    1824  -[ADBrickManager solveExplosionWithDictionary:atPosition:withWeaponName:ignoreTinnitus:]
//   0x1000c6360     836  -[ADBrickManager solveExplosionOfProjectile:]
//   0x1000c66a4    1256  -[ADBrickManager checkDeathsForHitEnemies:withWeaponName:]
//   0x1000c6b8c      36  -[ADBrickManager soundOrEnemyWithNameWasDeactivated:]
//   0x1000c6bb0     240  -[ADBrickManager soundOrEnemyWithNameWasDeactivated:withSkip:]
//   0x1000c6ca0     536  -[ADBrickManager currentBrickIsCleared]
//   0x1000c6eb8     460  -[ADBrickManager enemiesAliveOrReadyToSpawn]
//   0x1000c7084     148  -[ADBrickManager checkSpawnOnStart:]
//   0x1000c7118     156  -[ADBrickManager checkEnemiesSpawnAfterKill:skipped:]
//   0x1000c71b4     840  -[ADBrickManager stopAllEnemiesAfterPlayerDeathByEnemyWithName:]
//   0x1000c74fc      92  -[ADBrickManager showReviveView]
//   0x1000c7558      88  -[ADBrickManager revive]
//   0x1000c75b0     408  -[ADBrickManager gameOver]
//   0x1000c7748     420  -[ADBrickManager addDiamond]
//   0x1000c78ec      92  -[ADBrickManager randomizeNextDiamondTime]
//   0x1000c7948      40  -[ADBrickManager cleanDiamonds]
//   0x1000c7970      92  -[ADBrickManager stopAllSoundsInCurrentBrick]
//   0x1000c79cc     104  -[ADBrickManager hasSkippableSoundsPlaying]
//   0x1000c7a34      92  -[ADBrickManager skipSkippableSounds]
//   0x1000c7a90      44  -[ADBrickManager addPasserBy:]
//   0x1000c7abc     116  -[ADBrickManager passersByCount]
//   0x1000c7b30      28  -[ADBrickManager cleanPassersBy]
//   0x1000c7b4c      28  -[ADBrickManager tryToPopPowerUpContainer]
//   0x1000c7b68     516  -[ADBrickManager forceToPopPowerUpContainerWithType:]
//   0x1000c7d6c     124  -[ADBrickManager pauseAllBricks]
//   0x1000c7de8     124  -[ADBrickManager resumeAllBricks]
//   0x1000c7e64     336  -[ADBrickManager clean]
//   0x1000c7fb4      32  -[ADBrickManager gameplayViewController]
//   0x1000c7fd4      20  -[ADBrickManager setGameplayViewController:]
//   0x1000c7fe8      16  -[ADBrickManager setMode:]
//   0x1000c7ff8      20  -[ADBrickManager playerIsDead]
//   0x1000c800c      16  -[ADBrickManager setPlayerIsDead:]
//   0x1000c801c      20  -[ADBrickManager currentRandomAngle]
//   0x1000c8030      20  -[ADBrickManager setCurrentRandomAngle:]
//   0x1000c8044     240  -[ADBrickManager .cxx_destruct]

; ======================================================================
; +[ADBrickManager sharedBrickManager]
; address 0x1000c0fac  size 152  kind objc
; ======================================================================
  1000c0fac  stp     x20, x19, [sp, #-0x20]!
  1000c0fb0  stp     x29, x30, [sp, #0x10]
  1000c0fb4  add     x29, sp, #0x10
  1000c0fb8  bl      _objc_retain
  1000c0fbc  mov     x19, x0
  1000c0fc0  bl      _objc_sync_enter                         ; objc_sync_enter(ADBrickManager)
  1000c0fc4  adrp    x20, #0x10042d000
  1000c0fc8  ldr     x8, [x20, #0xa50]                        ; load g_10042da50
  1000c0fcc  cbnz    x8, loc_1000c1008                        ; if (g_10042da50 != 0)
  1000c0fd0  adrp    x8, #0x10041e000
  1000c0fd4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000c0fd8  adrp    x8, #0x100416000
  1000c0fdc  nop
  1000c0fe0  ldr     x1, [x8, #0xac8]
  1000c0fe4  bl      _objc_msgSend                            ; [ADBrickManager alloc]
  1000c0fe8  adrp    x8, #0x100416000
  1000c0fec  nop
  1000c0ff0  ldr     x1, [x8, #0xab8]
  1000c0ff4  bl      _objc_msgSend                            ; [[ADBrickManager alloc] init]
  1000c0ff8  ldr     x8, [x20, #0xa50]                        ; load g_10042da50
  1000c0ffc  str     x0, [x20, #0xa50]                        ; store g_10042da50 = [[ADBrickManager alloc] init]
  1000c1000  mov     x0, x8
  1000c1004  bl      _objc_release
loc_1000c1008:
  1000c1008  mov     x0, x19
  1000c100c  bl      _objc_sync_exit                          ; objc_sync_exit(ADBrickManager)
  1000c1010  mov     x0, x19
  1000c1014  bl      _objc_release
  1000c1018  ldr     x0, [x20, #0xa50]                        ; load g_10042da50
  1000c101c  ldp     x29, x30, [sp, #0x10]
  1000c1020  ldp     x20, x19, [sp], #0x20
  1000c1024  b       _objc_retainAutoreleaseReturnValue
  1000c1028  mov     x20, x0
  1000c102c  mov     x0, x19
  1000c1030  bl      _objc_sync_exit                          ; objc_sync_exit()
  1000c1034  mov     x0, x19
  1000c1038  bl      _objc_release
  1000c103c  mov     x0, x20
  1000c1040  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager init]
; address 0x1000c1044  size 1424  kind objc
; ======================================================================
  1000c1044  stp     x28, x27, [sp, #-0x60]!
  1000c1048  stp     x26, x25, [sp, #0x10]
  1000c104c  stp     x24, x23, [sp, #0x20]
  1000c1050  stp     x22, x21, [sp, #0x30]
  1000c1054  stp     x20, x19, [sp, #0x40]
  1000c1058  stp     x29, x30, [sp, #0x50]
  1000c105c  add     x29, sp, #0x50
  1000c1060  sub     sp, sp, #0x100
  1000c1064  adrp    x22, #0x1003b0000
  1000c1068  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c106c  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c1070  stur    x22, [x29, #-0x58]
  1000c1074  str     x0, [sp, #0x68]
  1000c1078  adrp    x8, #0x10041e000
  1000c107c  ldr     x8, [x8, #0xfa0]
  1000c1080  str     x8, [sp, #0x70]
  1000c1084  adrp    x8, #0x100416000
  1000c1088  nop
  1000c108c  ldr     x23, [x8, #0xab8]
  1000c1090  mov     x19, #0
  1000c1094  add     x0, sp, #0x68
  1000c1098  mov     x1, x23
  1000c109c  bl      _objc_msgSendSuper2                      ; [super init]
  1000c10a0  mov     x26, x0
  1000c10a4  cbz     x26, loc_1000c14c8                       ; if (self == 0)
  1000c10a8  mov     x19, x26
  1000c10ac  adrp    x20, #0x10041d000
  1000c10b0  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  1000c10b4  adrp    x8, #0x100416000
  1000c10b8  nop
  1000c10bc  ldr     x28, [x8, #0xb58]
  1000c10c0  mov     x1, x28
  1000c10c4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c10c8  mov     x29, x29
  1000c10cc  bl      _objc_retainAutoreleasedReturnValue
  1000c10d0  mov     x24, x0
  1000c10d4  adrp    x8, #0x100416000
  1000c10d8  nop
  1000c10dc  ldr     x22, [x8, #0xd60]
  1000c10e0  adrp    x2, #0x1003ba000
  1000c10e4  add     x2, x2, #0x50                            ; @"enemies"
  1000c10e8  adrp    x3, #0x1003b9000
  1000c10ec  add     x3, x3, #0xa70                           ; @"plist"
  1000c10f0  mov     x1, x22
  1000c10f4  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]
  1000c10f8  mov     x29, x29
  1000c10fc  bl      _objc_retainAutoreleasedReturnValue
  1000c1100  mov     x27, x0
  1000c1104  mov     x0, x24
  1000c1108  bl      _objc_release
  1000c110c  adrp    x8, #0x10041d000
  1000c1110  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c1114  adrp    x8, #0x100416000
  1000c1118  nop
  1000c111c  ldr     x25, [x8, #0xac8]
  1000c1120  mov     x1, x25
  1000c1124  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000c1128  adrp    x8, #0x100416000
  1000c112c  nop
  1000c1130  ldr     x24, [x8, #0xd68]
  1000c1134  mov     x1, x24
  1000c1138  mov     x2, x27
  1000c113c  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  1000c1140  adrp    x8, #0x100420000
  1000c1144  ldrsw   x9, [x8, #0x380]                         ; ivar offset ADBrickManager.enemyDictionary (+0x18)
  1000c1148  ldr     x8, [x26, x9]                            ; x8 = self->enemyDictionary
  1000c114c  str     x0, [x26, x9]                            ; self->enemyDictionary = [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  1000c1150  mov     x0, x8
  1000c1154  bl      _objc_release
  1000c1158  adrp    x19, #0x10041d000
  1000c115c  ldr     x0, [x19, #0xf28]                        ; class NSMutableArray
  1000c1160  mov     x1, x25
  1000c1164  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000c1168  mov     x1, x23
  1000c116c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000c1170  adrp    x8, #0x100420000
  1000c1174  ldrsw   x9, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c1178  ldr     x8, [x26, x9]                            ; x8 = self->bricks
  1000c117c  str     x0, [x26, x9]                            ; self->bricks = [[NSMutableArray alloc] init]
  1000c1180  mov     x0, x8
  1000c1184  bl      _objc_release
  1000c1188  ldr     x0, [x19, #0xf28]                        ; class NSMutableArray
  1000c118c  mov     x1, x25
  1000c1190  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000c1194  mov     x1, x23
  1000c1198  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000c119c  adrp    x8, #0x100420000
  1000c11a0  ldrsw   x9, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c11a4  ldr     x8, [x26, x9]                            ; x8 = self->diamonds
  1000c11a8  str     x0, [x26, x9]                            ; self->diamonds = [[NSMutableArray alloc] init]
  1000c11ac  mov     x0, x8
  1000c11b0  bl      _objc_release
  1000c11b4  adrp    x8, #0x10041e000
  1000c11b8  ldr     x0, [x8, #0x418]                         ; class ADPasserByManager
  1000c11bc  mov     x1, x25
  1000c11c0  bl      _objc_msgSend                            ; [ADPasserByManager alloc]
  1000c11c4  mov     x1, x23
  1000c11c8  bl      _objc_msgSend                            ; [[ADPasserByManager alloc] init]
  1000c11cc  adrp    x8, #0x100420000
  1000c11d0  ldrsw   x9, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c11d4  ldr     x8, [x26, x9]                            ; x8 = self->passerByManager
  1000c11d8  str     x0, [x26, x9]                            ; self->passerByManager = [[ADPasserByManager alloc] init]
  1000c11dc  mov     x0, x8
  1000c11e0  bl      _objc_release
  1000c11e4  adrp    x8, #0x10041e000
  1000c11e8  ldr     x0, [x8, #0x420]                         ; class ADPowerUpManager
  1000c11ec  mov     x1, x25
  1000c11f0  bl      _objc_msgSend                            ; [ADPowerUpManager alloc]
  1000c11f4  mov     x1, x23
  1000c11f8  bl      _objc_msgSend                            ; [[ADPowerUpManager alloc] init]
  1000c11fc  adrp    x8, #0x100420000
  1000c1200  ldrsw   x9, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c1204  ldr     x8, [x26, x9]                            ; x8 = self->powerUpManager
  1000c1208  str     x0, [x26, x9]                            ; self->powerUpManager = [[ADPowerUpManager alloc] init]
  1000c120c  mov     x0, x8
  1000c1210  bl      _objc_release
  1000c1214  adrp    x8, #0x100420000
  1000c1218  ldrsw   x8, [x8, #0x394]                         ; ivar offset ADBrickManager.currentWave (+0x3c)
  1000c121c  str     wzr, [x26, x8]                           ; self->currentWave = 0
  1000c1220  adrp    x8, #0x10041e000
  1000c1224  ldr     x0, [x8, #0x388]                         ; class NSMutableSet
  1000c1228  mov     x1, x25
  1000c122c  bl      _objc_msgSend                            ; [NSMutableSet alloc]
  1000c1230  mov     x1, x23
  1000c1234  bl      _objc_msgSend                            ; [[NSMutableSet alloc] init]
  1000c1238  adrp    x8, #0x100420000
  1000c123c  ldrsw   x9, [x8, #0x398]                         ; ivar offset ADBrickManager.deactivationList (+0x28)
  1000c1240  ldr     x8, [x26, x9]                            ; x8 = self->deactivationList
  1000c1244  str     x0, [x26, x9]                            ; self->deactivationList = [[NSMutableSet alloc] init]
  1000c1248  mov     x0, x8
  1000c124c  bl      _objc_release
  1000c1250  ldr     x0, [x19, #0xf28]                        ; class NSMutableArray
  1000c1254  mov     x1, x25
  1000c1258  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000c125c  mov     x1, x23
  1000c1260  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000c1264  adrp    x8, #0x100420000
  1000c1268  ldrsw   x9, [x8, #0x39c]                         ; ivar offset ADBrickManager.powerupList (+0x40)
  1000c126c  str     x9, [sp, #0x18]
  1000c1270  ldr     x8, [x26, x9]                            ; x8 = self->powerupList
  1000c1274  str     x0, [x26, x9]                            ; self->powerupList = [[NSMutableArray alloc] init]
  1000c1278  mov     x0, x8
  1000c127c  bl      _objc_release
  1000c1280  adrp    x8, #0x10041d000
  1000c1284  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c1288  mov     x1, x25
  1000c128c  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000c1290  mov     x25, x0
  1000c1294  ldr     x0, [x20, #0xee8]                        ; class NSBundle
  1000c1298  mov     x1, x28
  1000c129c  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c12a0  mov     x29, x29
  1000c12a4  bl      _objc_retainAutoreleasedReturnValue
  1000c12a8  mov     x19, x0
  1000c12ac  adrp    x2, #0x1003bf000
  1000c12b0  add     x2, x2, #0x9f0                           ; @"Weapons"
  1000c12b4  adrp    x3, #0x1003b9000
  1000c12b8  add     x3, x3, #0xa70                           ; @"plist"
  1000c12bc  mov     x1, x22
  1000c12c0  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]
  1000c12c4  mov     x29, x29
  1000c12c8  bl      _objc_retainAutoreleasedReturnValue
  1000c12cc  mov     x23, x0
  1000c12d0  mov     x0, x25
  1000c12d4  mov     x1, x24
  1000c12d8  mov     x2, x23
  1000c12dc  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]]
  1000c12e0  mov     x24, x0
  1000c12e4  str     x27, [sp, #8]
  1000c12e8  adrp    x8, #0x100417000
  1000c12ec  nop
  1000c12f0  ldr     x21, [x8, #0x40]
  1000c12f4  adrp    x2, #0x1003c0000
  1000c12f8  add     x2, x2, #0xcb0                           ; @"PowerUps"
  1000c12fc  mov     x0, x24
  1000c1300  mov     x1, x21
  1000c1304  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"]
  1000c1308  str     x26, [sp, #0x20]
  1000c130c  mov     x29, x29
  1000c1310  bl      _objc_retainAutoreleasedReturnValue
  1000c1314  mov     x20, x0
  1000c1318  mov     x0, x24
  1000c131c  bl      _objc_release
  1000c1320  mov     x0, x23
  1000c1324  bl      _objc_release
  1000c1328  mov     x0, x19
  1000c132c  bl      _objc_release
  1000c1330  stp     xzr, xzr, [sp, #0x58]
  1000c1334  stp     xzr, xzr, [sp, #0x48]
  1000c1338  stp     xzr, xzr, [sp, #0x38]
  1000c133c  stp     xzr, xzr, [sp, #0x28]
  1000c1340  mov     x0, x20
  1000c1344  bl      _objc_retain
  1000c1348  mov     x23, x0
  1000c134c  adrp    x8, #0x100416000
  1000c1350  nop
  1000c1354  ldr     x1, [x8, #0xe00]
  1000c1358  str     x1, [sp, #0x10]
  1000c135c  add     x2, sp, #0x28
  1000c1360  add     x3, sp, #0x78
  1000c1364  mov     w4, #0x10
  1000c1368  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x78] count:16]
  1000c136c  mov     x24, x0
  1000c1370  cbz     x24, loc_1000c145c                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x78] count:16] == 0)
  1000c1374  ldr     x8, [sp, #0x38]
  1000c1378  ldr     x19, [x8]
  1000c137c  adrp    x8, #0x100417000
  1000c1380  nop
  1000c1384  ldr     x25, [x8, #0x2e0]
  1000c1388  adrp    x8, #0x100417000
  1000c138c  nop
  1000c1390  ldr     x26, [x8, #0x3b8]
  1000c1394  adrp    x8, #0x100416000
  1000c1398  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  1000c139c  ldr     x27, [x8]
loc_1000c13a0:
  1000c13a0  mov     x22, x23
  1000c13a4  mov     x28, #0
loc_1000c13a8:
  1000c13a8  ldr     x8, [sp, #0x38]
  1000c13ac  ldr     x8, [x8]
  1000c13b0  cmp     x8, x19
  1000c13b4  b.eq    loc_1000c13c0                            ; if (x8 == x19)
  1000c13b8  mov     x0, x22
  1000c13bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"])
loc_1000c13c0:
  1000c13c0  ldr     x8, [sp, #0x30]
  1000c13c4  ldr     x20, [x8, x28, lsl #3]
  1000c13c8  adrp    x8, #0x10041d000
  1000c13cc  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c13d0  mov     x1, x25
  1000c13d4  bl      _objc_msgSend                            ; [NSDictionary class]
  1000c13d8  mov     x2, x0
  1000c13dc  mov     x0, x20
  1000c13e0  mov     x1, x26
  1000c13e4  bl      _objc_msgSend                            ; [x0 isKindOfClass:[NSDictionary class]]
  1000c13e8  cbz     w0, loc_1000c142c                        ; if ([x0 isKindOfClass:[NSDictionary class]] == 0)
  1000c13ec  ldp     x9, x8, [sp, #0x18]
  1000c13f0  ldr     x23, [x8, x9]                            ; x23 = self->powerupList
  1000c13f4  mov     x0, x20
  1000c13f8  mov     x1, x21
  1000c13fc  adrp    x2, #0x1003b9000
  1000c1400  add     x2, x2, #0xdb0                           ; @"name"
  1000c1404  bl      _objc_msgSend                            ; [x0 objectForKey:@"name"]
  1000c1408  mov     x29, x29
  1000c140c  bl      _objc_retainAutoreleasedReturnValue
  1000c1410  mov     x20, x0
  1000c1414  mov     x0, x23
  1000c1418  mov     x1, x27
  1000c141c  mov     x2, x20
  1000c1420  bl      _objc_msgSend                            ; [self->powerupList addObject:[x0 objectForKey:@"name"]]
  1000c1424  mov     x0, x20
  1000c1428  bl      _objc_release
loc_1000c142c:
  1000c142c  add     x28, x28, #1
  1000c1430  cmp     x28, x24
  1000c1434  b.lo    loc_1000c13a8                            ; if ((x28 + 1) <u [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] …)
  1000c1438  add     x2, sp, #0x28
  1000c143c  add     x3, sp, #0x78
  1000c1440  mov     w4, #0x10
  1000c1444  mov     x23, x22
  1000c1448  mov     x0, x23
  1000c144c  ldr     x1, [sp, #0x10]
  1000c1450  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x78] count:16]
  1000c1454  mov     x24, x0
  1000c1458  cbnz    x24, loc_1000c13a0                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Weapons" withExtension:@"plist"]] objectForKey:@"PowerUps"] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x78] count:16] != 0)
loc_1000c145c:
  1000c145c  mov     x0, x23
  1000c1460  bl      _objc_release
  1000c1464  adrp    x8, #0x10041e000
  1000c1468  ldr     x0, [x8, #8]                             ; class ADTracker
  1000c146c  adrp    x8, #0x100416000
  1000c1470  nop
  1000c1474  ldr     x1, [x8, #0xac0]
  1000c1478  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c147c  mov     x29, x29
  1000c1480  bl      _objc_retainAutoreleasedReturnValue
  1000c1484  mov     x20, x0
  1000c1488  adrp    x8, #0x10041a000
  1000c148c  nop
  1000c1490  ldr     x1, [x8, #0x2f8]
  1000c1494  mov     x2, #0
  1000c1498  ldr     x26, [sp, #0x20]
  1000c149c  ldr     x27, [sp, #8]
  1000c14a0  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setBrickCounter:0]
  1000c14a4  adrp    x22, #0x1003b0000
  1000c14a8  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c14ac  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c14b0  mov     x0, x20
  1000c14b4  bl      _objc_release
  1000c14b8  mov     x0, x23
  1000c14bc  bl      _objc_release
  1000c14c0  mov     x0, x27
  1000c14c4  bl      _objc_release
loc_1000c14c8:
  1000c14c8  ldur    x8, [x29, #-0x58]
  1000c14cc  sub     x8, x22, x8
  1000c14d0  cbnz    x8, loc_1000c14f8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c14d4  mov     x0, x26
  1000c14d8  sub     sp, x29, #0x50
  1000c14dc  ldp     x29, x30, [sp, #0x50]
  1000c14e0  ldp     x20, x19, [sp, #0x40]
  1000c14e4  ldp     x22, x21, [sp, #0x30]
  1000c14e8  ldp     x24, x23, [sp, #0x20]
  1000c14ec  ldp     x26, x25, [sp, #0x10]
  1000c14f0  ldp     x28, x27, [sp], #0x60
  1000c14f4  ret
loc_1000c14f8:
  1000c14f8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c14fc:
  1000c14fc  mov     x21, x0
  1000c1500  ldr     x27, [sp, #8]
  1000c1504  ldr     x26, [sp, #0x20]
loc_1000c1508:
  1000c1508  mov     x23, x22
  1000c150c  mov     x0, x23
loc_1000c1510:
  1000c1510  bl      _objc_release
loc_1000c1514:
  1000c1514  mov     x0, x23
  1000c1518  bl      _objc_release
loc_1000c151c:
  1000c151c  mov     x0, x27
  1000c1520  bl      _objc_release
loc_1000c1524:
  1000c1524  mov     x0, x26
  1000c1528  bl      _objc_release
  1000c152c  mov     x0, x21
  1000c1530  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c1534  mov     x21, x0
  1000c1538  mov     x0, x20
  1000c153c  bl      _objc_release
  1000c1540  ldr     x26, [sp, #0x20]
  1000c1544  ldr     x27, [sp, #8]
  1000c1548  b       loc_1000c1508
loc_1000c154c:
  1000c154c  mov     x22, x23
  1000c1550  b       loc_1000c14fc
  1000c1554  mov     x21, x0
  1000c1558  b       loc_1000c151c
  1000c155c  mov     x21, x0
  1000c1560  mov     x26, x19
  1000c1564  b       loc_1000c1524
  1000c1568  mov     x21, x0
  1000c156c  mov     x0, x24
  1000c1570  bl      _objc_release
  1000c1574  b       loc_1000c1524
  1000c1578  str     x27, [sp, #8]
  1000c157c  mov     x21, x0
  1000c1580  b       loc_1000c15a4
  1000c1584  str     x27, [sp, #8]
  1000c1588  mov     x21, x0
  1000c158c  b       loc_1000c159c
  1000c1590  mov     x21, x0
  1000c1594  mov     x0, x24
  1000c1598  bl      _objc_release
loc_1000c159c:
  1000c159c  mov     x0, x23
  1000c15a0  bl      _objc_release
loc_1000c15a4:
  1000c15a4  mov     x0, x19
  1000c15a8  bl      _objc_release
  1000c15ac  ldr     x27, [sp, #8]
  1000c15b0  b       loc_1000c151c
  1000c15b4  b       loc_1000c154c
  1000c15b8  mov     x21, x0
  1000c15bc  ldr     x26, [sp, #0x20]
  1000c15c0  ldr     x27, [sp, #8]
  1000c15c4  b       loc_1000c1514
  1000c15c8  mov     x21, x0
  1000c15cc  mov     x0, x20
  1000c15d0  b       loc_1000c1510

; ======================================================================
; -[ADBrickManager loadBrickChancePlist:]
; address 0x1000c15d4  size 408  kind objc
; ======================================================================
  1000c15d4  stp     x22, x21, [sp, #-0x30]!
  1000c15d8  stp     x20, x19, [sp, #0x10]
  1000c15dc  stp     x29, x30, [sp, #0x20]
  1000c15e0  add     x29, sp, #0x20
  1000c15e4  mov     x20, x0
  1000c15e8  mov     x0, x2
  1000c15ec  bl      _objc_retain
  1000c15f0  mov     x19, x0
  1000c15f4  adrp    x8, #0x10041d000
  1000c15f8  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000c15fc  adrp    x8, #0x100416000
  1000c1600  nop
  1000c1604  ldr     x1, [x8, #0xb58]
  1000c1608  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c160c  mov     x29, x29
  1000c1610  bl      _objc_retainAutoreleasedReturnValue
  1000c1614  mov     x22, x0
  1000c1618  adrp    x8, #0x100416000
  1000c161c  nop
  1000c1620  ldr     x1, [x8, #0xd60]
  1000c1624  adrp    x3, #0x1003b9000
  1000c1628  add     x3, x3, #0xa70                           ; @"plist"
  1000c162c  mov     x2, x19
  1000c1630  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  1000c1634  mov     x29, x29
  1000c1638  bl      _objc_retainAutoreleasedReturnValue
  1000c163c  mov     x21, x0
  1000c1640  mov     x0, x22
  1000c1644  bl      _objc_release
  1000c1648  adrp    x8, #0x100420000
  1000c164c  ldrsw   x8, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c1650  ldr     x0, [x20, x8]                            ; x0 = self->brickScenario
  1000c1654  str     xzr, [x20, x8]                           ; self->brickScenario = 0
  1000c1658  bl      _objc_release
  1000c165c  adrp    x8, #0x10041d000
  1000c1660  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c1664  adrp    x8, #0x100416000
  1000c1668  nop
  1000c166c  ldr     x1, [x8, #0xac8]
  1000c1670  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000c1674  adrp    x8, #0x100416000
  1000c1678  nop
  1000c167c  ldr     x1, [x8, #0xd68]
  1000c1680  mov     x2, x21
  1000c1684  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c1688  adrp    x8, #0x100420000
  1000c168c  ldrsw   x22, [x8, #0x3a4]                        ; ivar offset ADBrickManager.brickDictionary (+0x8)
  1000c1690  ldr     x8, [x20, x22]                           ; x8 = self->brickDictionary
  1000c1694  str     x0, [x20, x22]                           ; self->brickDictionary = [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c1698  mov     x0, x8
  1000c169c  bl      _objc_release
  1000c16a0  ldr     x0, [x20, x22]                           ; x0 = self->brickDictionary
  1000c16a4  adrp    x8, #0x100417000
  1000c16a8  nop
  1000c16ac  ldr     x1, [x8, #0x40]
  1000c16b0  adrp    x2, #0x1003bd000
  1000c16b4  add     x2, x2, #0xd10                           ; @"brick_chance"
  1000c16b8  bl      _objc_msgSend                            ; [self->brickDictionary objectForKey:@"brick_chance"]
  1000c16bc  mov     x29, x29
  1000c16c0  bl      _objc_retainAutoreleasedReturnValue
  1000c16c4  adrp    x8, #0x100420000
  1000c16c8  ldrsw   x9, [x8, #0x3a8]                         ; ivar offset ADBrickManager.brickChanceDictionary (+0x10)
  1000c16cc  ldr     x8, [x20, x9]                            ; x8 = self->brickChanceDictionary
  1000c16d0  str     x0, [x20, x9]                            ; self->brickChanceDictionary = [self->brickDictionary objectForKey:@"brick_chance"]
  1000c16d4  mov     x0, x8
  1000c16d8  bl      _objc_release
  1000c16dc  adrp    x8, #0x10041a000
  1000c16e0  nop
  1000c16e4  ldr     x1, [x8, #0xa78]
  1000c16e8  mov     x0, x20
  1000c16ec  bl      _objc_msgSend                            ; [self randomizeNextDiamondTime]
  1000c16f0  adrp    x8, #0x100420000
  1000c16f4  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c16f8  ldr     x0, [x20, x8]                            ; x0 = self->passerByManager
  1000c16fc  adrp    x8, #0x10041a000
  1000c1700  nop
  1000c1704  ldr     x1, [x8, #0xa80]
  1000c1708  bl      _objc_msgSend                            ; [self->passerByManager startTimers]
  1000c170c  adrp    x8, #0x10041a000
  1000c1710  nop
  1000c1714  ldr     x1, [x8, #0xa88]
  1000c1718  mov     x0, x20
  1000c171c  bl      _objc_msgSend                            ; [self loadImpactPlaylist]
  1000c1720  mov     x0, x21
  1000c1724  bl      _objc_release
  1000c1728  mov     x0, x19
  1000c172c  ldp     x29, x30, [sp, #0x20]
  1000c1730  ldp     x20, x19, [sp, #0x10]
  1000c1734  ldp     x22, x21, [sp], #0x30
  1000c1738  b       _objc_release
  1000c173c  mov     x20, x0
  1000c1740  mov     x0, x21
loc_1000c1744:
  1000c1744  bl      _objc_release
loc_1000c1748:
  1000c1748  mov     x0, x19
  1000c174c  bl      _objc_release
  1000c1750  mov     x0, x20
  1000c1754  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c1758  mov     x20, x0
  1000c175c  b       loc_1000c1748
  1000c1760  mov     x20, x0
  1000c1764  mov     x0, x22
  1000c1768  b       loc_1000c1744

; ======================================================================
; -[ADBrickManager loadBrickScenarioPlist:]
; address 0x1000c176c  size 296  kind objc
; ======================================================================
  1000c176c  stp     x22, x21, [sp, #-0x30]!
  1000c1770  stp     x20, x19, [sp, #0x10]
  1000c1774  stp     x29, x30, [sp, #0x20]
  1000c1778  add     x29, sp, #0x20
  1000c177c  mov     x20, x0
  1000c1780  mov     x0, x2
  1000c1784  bl      _objc_retain
  1000c1788  mov     x19, x0
  1000c178c  adrp    x8, #0x10041d000
  1000c1790  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000c1794  adrp    x8, #0x100416000
  1000c1798  nop
  1000c179c  ldr     x1, [x8, #0xb58]
  1000c17a0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c17a4  mov     x29, x29
  1000c17a8  bl      _objc_retainAutoreleasedReturnValue
  1000c17ac  mov     x22, x0
  1000c17b0  adrp    x8, #0x100416000
  1000c17b4  nop
  1000c17b8  ldr     x1, [x8, #0xd60]
  1000c17bc  adrp    x3, #0x1003b9000
  1000c17c0  add     x3, x3, #0xa70                           ; @"plist"
  1000c17c4  mov     x2, x19
  1000c17c8  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  1000c17cc  mov     x29, x29
  1000c17d0  bl      _objc_retainAutoreleasedReturnValue
  1000c17d4  mov     x21, x0
  1000c17d8  mov     x0, x22
  1000c17dc  bl      _objc_release
  1000c17e0  adrp    x8, #0x10041d000
  1000c17e4  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000c17e8  adrp    x8, #0x100416000
  1000c17ec  nop
  1000c17f0  ldr     x1, [x8, #0xac8]
  1000c17f4  bl      _objc_msgSend                            ; [NSArray alloc]
  1000c17f8  adrp    x8, #0x100416000
  1000c17fc  nop
  1000c1800  ldr     x1, [x8, #0xd68]
  1000c1804  mov     x2, x21
  1000c1808  bl      _objc_msgSend                            ; [[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c180c  adrp    x8, #0x100420000
  1000c1810  ldrsw   x9, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c1814  ldr     x8, [x20, x9]                            ; x8 = self->brickScenario
  1000c1818  str     x0, [x20, x9]                            ; self->brickScenario = [[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c181c  mov     x0, x8
  1000c1820  bl      _objc_release
  1000c1824  adrp    x8, #0x100420000
  1000c1828  ldrsw   x8, [x8, #0x3ac]                         ; ivar offset ADBrickManager.loopBrickScenario (+0x38)
  1000c182c  mov     w9, #1
  1000c1830  strb    w9, [x20, x8]                            ; self->loopBrickScenario = 1
  1000c1834  adrp    x8, #0x10041a000
  1000c1838  nop
  1000c183c  ldr     x1, [x8, #0xa88]
  1000c1840  mov     x0, x20
  1000c1844  bl      _objc_msgSend                            ; [self loadImpactPlaylist]
  1000c1848  mov     x0, x21
  1000c184c  bl      _objc_release
  1000c1850  mov     x0, x19
  1000c1854  ldp     x29, x30, [sp, #0x20]
  1000c1858  ldp     x20, x19, [sp, #0x10]
  1000c185c  ldp     x22, x21, [sp], #0x30
  1000c1860  b       _objc_release
  1000c1864  mov     x20, x0
  1000c1868  mov     x0, x21
  1000c186c  b       loc_1000c1880
  1000c1870  mov     x20, x0
  1000c1874  b       loc_1000c1884
  1000c1878  mov     x20, x0
  1000c187c  mov     x0, x22
loc_1000c1880:
  1000c1880  bl      _objc_release
loc_1000c1884:
  1000c1884  mov     x0, x19
  1000c1888  bl      _objc_release
  1000c188c  mov     x0, x20
  1000c1890  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager loadBrickChallengeArray:]
; address 0x1000c1894  size 252  kind objc
; ======================================================================
  1000c1894  stp     x20, x19, [sp, #-0x20]!
  1000c1898  stp     x29, x30, [sp, #0x10]
  1000c189c  add     x29, sp, #0x10
  1000c18a0  mov     x20, x0
  1000c18a4  mov     x0, x2
  1000c18a8  bl      _objc_retain
  1000c18ac  mov     x19, x0
  1000c18b0  adrp    x8, #0x100420000
  1000c18b4  ldrsw   x8, [x8, #0x3a8]                         ; ivar offset ADBrickManager.brickChanceDictionary (+0x10)
  1000c18b8  ldr     x0, [x20, x8]                            ; x0 = self->brickChanceDictionary
  1000c18bc  str     xzr, [x20, x8]                           ; self->brickChanceDictionary = 0
  1000c18c0  bl      _objc_release
  1000c18c4  adrp    x8, #0x10041d000
  1000c18c8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000c18cc  adrp    x8, #0x100416000
  1000c18d0  nop
  1000c18d4  ldr     x1, [x8, #0xac8]
  1000c18d8  bl      _objc_msgSend                            ; [NSArray alloc]
  1000c18dc  adrp    x8, #0x100418000
  1000c18e0  nop
  1000c18e4  ldr     x1, [x8, #0xbb0]
  1000c18e8  mov     x2, x19
  1000c18ec  bl      _objc_msgSend                            ; [[NSArray alloc] initWithArray:arg1]
  1000c18f0  adrp    x8, #0x100420000
  1000c18f4  ldrsw   x9, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c18f8  ldr     x8, [x20, x9]                            ; x8 = self->brickScenario
  1000c18fc  str     x0, [x20, x9]                            ; self->brickScenario = [[NSArray alloc] initWithArray:arg1]
  1000c1900  mov     x0, x8
  1000c1904  bl      _objc_release
  1000c1908  adrp    x8, #0x100420000
  1000c190c  ldrsw   x8, [x8, #0x3ac]                         ; ivar offset ADBrickManager.loopBrickScenario (+0x38)
  1000c1910  strb    wzr, [x20, x8]                           ; self->loopBrickScenario = 0
  1000c1914  adrp    x8, #0x10041a000
  1000c1918  nop
  1000c191c  ldr     x1, [x8, #0xa88]
  1000c1920  mov     x0, x20
  1000c1924  bl      _objc_msgSend                            ; [self loadImpactPlaylist]
  1000c1928  bl      _rand                                    ; rand()
  1000c192c  sxtw    x8, w0
  1000c1930  mov     x9, #-0x49f40001
  1000c1934  movk    x9, #0x60b7
  1000c1938  mul     x8, x8, x9
  1000c193c  lsr     x8, x8, #0x20
  1000c1940  add     w8, w8, w0
  1000c1944  asr     w9, w8, #8
  1000c1948  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  1000c194c  mov     w9, #0x168
  1000c1950  msub    w8, w8, w9, w0
  1000c1954  scvtf   s0, w8
  1000c1958  adrp    x8, #0x10041a000
  1000c195c  nop
  1000c1960  ldr     x1, [x8, #0xa90]
  1000c1964  mov     x0, x20
  1000c1968  bl      _objc_msgSend                            ; [self setCurrentRandomAngle:(float)(rand() - t1 * 360)]
  1000c196c  mov     x0, x19
  1000c1970  ldp     x29, x30, [sp, #0x10]
  1000c1974  ldp     x20, x19, [sp], #0x20
  1000c1978  b       _objc_release
  1000c197c  mov     x20, x0
  1000c1980  mov     x0, x19
  1000c1984  bl      _objc_release
  1000c1988  mov     x0, x20
  1000c198c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager loadImpactPlaylist]
; address 0x1000c1990  size 168  kind objc
; ======================================================================
  1000c1990  stp     x22, x21, [sp, #-0x30]!
  1000c1994  stp     x20, x19, [sp, #0x10]
  1000c1998  stp     x29, x30, [sp, #0x20]
  1000c199c  add     x29, sp, #0x20
  1000c19a0  adrp    x8, #0x10041d000
  1000c19a4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c19a8  adrp    x8, #0x100417000
  1000c19ac  nop
  1000c19b0  ldr     x1, [x8, #0x4f0]
  1000c19b4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c19b8  mov     x29, x29
  1000c19bc  bl      _objc_retainAutoreleasedReturnValue
  1000c19c0  mov     x19, x0
  1000c19c4  adrp    x8, #0x100417000
  1000c19c8  nop
  1000c19cc  ldr     x1, [x8, #0x4f8]
  1000c19d0  adrp    x2, #0x1003be000
  1000c19d4  add     x2, x2, #0x4b0                           ; @"impact"
  1000c19d8  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"impact"]
  1000c19dc  mov     x29, x29
  1000c19e0  bl      _objc_retainAutoreleasedReturnValue
  1000c19e4  mov     x20, x0
  1000c19e8  mov     x0, x19
  1000c19ec  bl      _objc_release
  1000c19f0  adrp    x8, #0x100417000
  1000c19f4  nop
  1000c19f8  ldr     x1, [x8, #0x508]
  1000c19fc  mov     x0, x20
  1000c1a00  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"impact"] activate]
  1000c1a04  mov     x0, x20
  1000c1a08  ldp     x29, x30, [sp, #0x20]
  1000c1a0c  ldp     x20, x19, [sp, #0x10]
  1000c1a10  ldp     x22, x21, [sp], #0x30
  1000c1a14  b       _objc_release
  1000c1a18  mov     x21, x0
  1000c1a1c  mov     x0, x19
  1000c1a20  b       loc_1000c1a2c
  1000c1a24  mov     x21, x0
  1000c1a28  mov     x0, x20
loc_1000c1a2c:
  1000c1a2c  bl      _objc_release
  1000c1a30  mov     x0, x21
  1000c1a34  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager reset]
; address 0x1000c1a38  size 92  kind objc
; ======================================================================
  1000c1a38  stp     x20, x19, [sp, #-0x20]!
  1000c1a3c  stp     x29, x30, [sp, #0x10]
  1000c1a40  add     x29, sp, #0x10
  1000c1a44  mov     x19, x0
  1000c1a48  adrp    x8, #0x100420000
  1000c1a4c  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c1a50  ldr     x0, [x19, x8]                            ; x0 = self->bricks
  1000c1a54  adrp    x8, #0x100417000
  1000c1a58  nop
  1000c1a5c  ldr     x1, [x8, #0x1b8]
  1000c1a60  bl      _objc_msgSend                            ; [self->bricks removeAllObjects]
  1000c1a64  adrp    x8, #0x100420000
  1000c1a68  adrp    x9, #0x100420000
  1000c1a6c  ldrsw   x8, [x8, #0x394]                         ; ivar offset ADBrickManager.currentWave (+0x3c)
  1000c1a70  ldrsw   x9, [x9, #0x3b0]                         ; ivar offset ADBrickManager.timeElapsed (+0x68)
  1000c1a74  str     wzr, [x19, x8]                           ; self->currentWave = 0
  1000c1a78  str     wzr, [x19, x9]                           ; self->timeElapsed = 0
  1000c1a7c  adrp    x8, #0x100420000
  1000c1a80  ldrsw   x8, [x8, #0x3b4]                         ; ivar offset ADBrickManager.startedMainMenuMusic (+0x6c)
  1000c1a84  strb    wzr, [x19, x8]                           ; self->startedMainMenuMusic = 0
  1000c1a88  ldp     x29, x30, [sp, #0x10]
  1000c1a8c  ldp     x20, x19, [sp], #0x20
  1000c1a90  ret

; ======================================================================
; -[ADBrickManager runSanityCheck]
; address 0x1000c1a94  size 560  kind objc
; ======================================================================
  1000c1a94  stp     x28, x27, [sp, #-0x60]!
  1000c1a98  stp     x26, x25, [sp, #0x10]
  1000c1a9c  stp     x24, x23, [sp, #0x20]
  1000c1aa0  stp     x22, x21, [sp, #0x30]
  1000c1aa4  stp     x20, x19, [sp, #0x40]
  1000c1aa8  stp     x29, x30, [sp, #0x50]
  1000c1aac  add     x29, sp, #0x50
  1000c1ab0  sub     sp, sp, #0x100
  1000c1ab4  mov     x19, x0
  1000c1ab8  mov     w28, #0
  1000c1abc  mov     w24, #0
  1000c1ac0  adrp    x11, #0x1003b0000
  1000c1ac4  ldr     x11, [x11, #0x1d8]                       ; ___stack_chk_guard
  1000c1ac8  ldr     x11, [x11]                               ; x11 = ___stack_chk_guard[+0x0]
  1000c1acc  adrp    x8, #0x100420000
  1000c1ad0  adrp    x9, #0x100416000
  1000c1ad4  add     x9, x9, #0xee8                           ; &@selector(stringWithFormat:)
  1000c1ad8  adrp    x10, #0x100417000
  1000c1adc  add     x10, x10, #0x40                          ; &@selector(objectForKey:)
  1000c1ae0  ldrsw   x8, [x8, #0x3a4]                         ; ivar offset ADBrickManager.brickDictionary (+0x8)
  1000c1ae4  str     x8, [sp, #0x28]
  1000c1ae8  ldr     x8, [x9]
  1000c1aec  str     x8, [sp, #0x20]
  1000c1af0  ldr     x8, [x10]
  1000c1af4  str     x8, [sp, #0x18]
  1000c1af8  stur    x11, [x29, #-0x58]
  1000c1afc  adrp    x8, #0x100416000
  1000c1b00  nop
  1000c1b04  ldr     x22, [x8, #0xe00]
  1000c1b08  adrp    x8, #0x10041a000
  1000c1b0c  add     x8, x8, #0xa98                           ; &@selector(isBrickWithNameSane:)
  1000c1b10  ldr     x23, [x8]
  1000c1b14  mov     w20, #1
  1000c1b18  adrp    x25, #0x1003c1000
  1000c1b1c  add     x25, x25, #0xf70                         ; @"Brick isn't sane"
loc_1000c1b20:
  1000c1b20  ldr     x8, [sp, #0x28]
  1000c1b24  ldr     x27, [x19, x8]                           ; x27 = self->brickDictionary
  1000c1b28  adrp    x8, #0x10041d000
  1000c1b2c  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000c1b30  str     x20, [sp]
  1000c1b34  ldr     x1, [sp, #0x20]
  1000c1b38  adrp    x2, #0x1003c1000
  1000c1b3c  add     x2, x2, #0xf50                           ; @"level_%i_bricks"
  1000c1b40  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i_bricks", sp[0]]
  1000c1b44  mov     x29, x29
  1000c1b48  bl      _objc_retainAutoreleasedReturnValue
  1000c1b4c  mov     x26, x0
  1000c1b50  mov     x0, x27
  1000c1b54  ldr     x1, [sp, #0x18]
  1000c1b58  mov     x2, x26
  1000c1b5c  bl      _objc_msgSend                            ; [self->brickDictionary objectForKey:[NSString stringWithFormat:@"level_%i_bricks", sp[0]]]
  1000c1b60  mov     x29, x29
  1000c1b64  bl      _objc_retainAutoreleasedReturnValue
  1000c1b68  mov     x27, x0
  1000c1b6c  mov     x0, x26
  1000c1b70  bl      _objc_release
  1000c1b74  stp     xzr, xzr, [sp, #0x68]
  1000c1b78  stp     xzr, xzr, [sp, #0x58]
  1000c1b7c  stp     xzr, xzr, [sp, #0x48]
  1000c1b80  stp     xzr, xzr, [sp, #0x38]
  1000c1b84  mov     x0, x27
  1000c1b88  bl      _objc_retain
  1000c1b8c  mov     x26, x0
  1000c1b90  add     x2, sp, #0x38
  1000c1b94  add     x3, sp, #0x78
  1000c1b98  mov     w4, #0x10
  1000c1b9c  mov     x1, x22
  1000c1ba0  bl      _objc_msgSend                            ; [[self->brickDictionary objectForKey:[NSString stringWithFormat:@"level_%i_bricks", sp[0]]] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000c1ba4  mov     x27, x0
  1000c1ba8  str     x20, [sp, #0x30]
  1000c1bac  cbz     x27, loc_1000c1c2c                       ; if ([[self->brickDictionary objectForKey:[NSString stringWithFormat:@"level_%i_bricks", sp[0]]] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  1000c1bb0  ldr     x8, [sp, #0x48]
  1000c1bb4  ldr     x21, [x8]
loc_1000c1bb8:
  1000c1bb8  mov     x20, #0
loc_1000c1bbc:
  1000c1bbc  ldr     x8, [sp, #0x48]
  1000c1bc0  ldr     x8, [x8]
  1000c1bc4  cmp     x8, x21
  1000c1bc8  b.eq    loc_1000c1bd4                            ; if (x8 == x21)
  1000c1bcc  mov     x0, x26
  1000c1bd0  bl      _objc_enumerationMutation                ; objc_enumerationMutation()
loc_1000c1bd4:
  1000c1bd4  ldr     x8, [sp, #0x40]
  1000c1bd8  ldr     x2, [x8, x20, lsl #3]
  1000c1bdc  mov     x0, x19
  1000c1be0  mov     x1, x23
  1000c1be4  bl      _objc_msgSend                            ; [self isBrickWithNameSane:x2]
  1000c1be8  tbz     w0, #0, loc_1000c1bf4                    ; if (!([self isBrickWithNameSane:x2] & 1))
  1000c1bec  add     w28, w28, #1
  1000c1bf0  b       loc_1000c1c00
loc_1000c1bf4:
  1000c1bf4  mov     x0, x25
  1000c1bf8  bl      _NSLog                                   ; NSLog(@"Brick isn't sane")
  1000c1bfc  add     w24, w24, #1
loc_1000c1c00:
  1000c1c00  add     x20, x20, #1
  1000c1c04  cmp     x20, x27
  1000c1c08  b.lo    loc_1000c1bbc                            ; if ((x20 + 1) <u x27)
  1000c1c0c  add     x2, sp, #0x38
  1000c1c10  add     x3, sp, #0x78
  1000c1c14  mov     w4, #0x10
  1000c1c18  mov     x0, x26
  1000c1c1c  mov     x1, x22
  1000c1c20  bl      _objc_msgSend                            ; [x0 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  1000c1c24  mov     x27, x0
  1000c1c28  cbnz    x27, loc_1000c1bb8                       ; if ([x0 countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
loc_1000c1c2c:
  1000c1c2c  mov     x0, x26
  1000c1c30  bl      _objc_release
  1000c1c34  mov     x0, x26
  1000c1c38  bl      _objc_release
  1000c1c3c  ldr     x20, [sp, #0x30]
  1000c1c40  add     w20, w20, #1
  1000c1c44  cmp     w20, #6
  1000c1c48  b.lt    loc_1000c1b20                            ; if ((w20 + 1) < 6)
  1000c1c4c  stp     x28, x24, [sp]
  1000c1c50  adrp    x0, #0x1003c1000
  1000c1c54  add     x0, x0, #0xf90                           ; @"\n*****\nSanity check over. \n Sane bricks : %i \n Broken bricks : %i\n*****"
  1000c1c58  bl      _NSLog                                   ; NSLog(@"\n*****\nSanity check over. \n Sane bricks : %i \n Broken bricks : %i\n*****", sp[0], sp[8])
  1000c1c5c  ldur    x8, [x29, #-0x58]
  1000c1c60  adrp    x9, #0x1003b0000
  1000c1c64  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000c1c68  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000c1c6c  sub     x8, x9, x8
  1000c1c70  cbnz    x8, loc_1000c1c94                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c1c74  sub     sp, x29, #0x50
  1000c1c78  ldp     x29, x30, [sp, #0x50]
  1000c1c7c  ldp     x20, x19, [sp, #0x40]
  1000c1c80  ldp     x22, x21, [sp, #0x30]
  1000c1c84  ldp     x24, x23, [sp, #0x20]
  1000c1c88  ldp     x26, x25, [sp, #0x10]
  1000c1c8c  ldp     x28, x27, [sp], #0x60
  1000c1c90  ret
loc_1000c1c94:
  1000c1c94  bl      ___stack_chk_fail                        ; stack_chk_fail(NSLog(@"\n*****\nSanity check over. \n Sane bricks : %i \n Broken bricks : %i\n*****", sp[0], sp[8]))
loc_1000c1c98:
  1000c1c98  mov     x19, x0
  1000c1c9c  mov     x0, x26
  1000c1ca0  bl      _objc_release
loc_1000c1ca4:
  1000c1ca4  mov     x0, x26
  1000c1ca8  bl      _objc_release
  1000c1cac  mov     x0, x19
  1000c1cb0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c1cb4  b       loc_1000c1c98
  1000c1cb8  mov     x19, x0
  1000c1cbc  b       loc_1000c1ca4
  1000c1cc0  b       loc_1000c1c98

; ======================================================================
; -[ADBrickManager isBrickWithNameSane:]
; address 0x1000c1cc4  size 1044  kind objc
; ======================================================================
  1000c1cc4  stp     x28, x27, [sp, #-0x60]!
  1000c1cc8  stp     x26, x25, [sp, #0x10]
  1000c1ccc  stp     x24, x23, [sp, #0x20]
  1000c1cd0  stp     x22, x21, [sp, #0x30]
  1000c1cd4  stp     x20, x19, [sp, #0x40]
  1000c1cd8  stp     x29, x30, [sp, #0x50]
  1000c1cdc  add     x29, sp, #0x50
  1000c1ce0  sub     sp, sp, #0x120
  1000c1ce4  adrp    x25, #0x1003b0000
  1000c1ce8  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000c1cec  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000c1cf0  stur    x25, [x29, #-0x58]
  1000c1cf4  mov     x0, x2
  1000c1cf8  bl      _objc_retain
  1000c1cfc  mov     x24, x0
  1000c1d00  adrp    x8, #0x10041d000
  1000c1d04  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000c1d08  adrp    x8, #0x100416000
  1000c1d0c  nop
  1000c1d10  ldr     x1, [x8, #0xb58]
  1000c1d14  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c1d18  mov     x29, x29
  1000c1d1c  bl      _objc_retainAutoreleasedReturnValue
  1000c1d20  mov     x20, x0
  1000c1d24  adrp    x8, #0x100416000
  1000c1d28  nop
  1000c1d2c  ldr     x1, [x8, #0xd60]
  1000c1d30  adrp    x3, #0x1003b9000
  1000c1d34  add     x3, x3, #0xa70                           ; @"plist"
  1000c1d38  mov     x2, x24
  1000c1d3c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  1000c1d40  mov     x29, x29
  1000c1d44  bl      _objc_retainAutoreleasedReturnValue
  1000c1d48  mov     x21, x0
  1000c1d4c  mov     x0, x20
  1000c1d50  bl      _objc_release
  1000c1d54  adrp    x8, #0x10041d000
  1000c1d58  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c1d5c  adrp    x8, #0x100416000
  1000c1d60  nop
  1000c1d64  ldr     x1, [x8, #0xac8]
  1000c1d68  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000c1d6c  adrp    x8, #0x100416000
  1000c1d70  nop
  1000c1d74  ldr     x1, [x8, #0xd68]
  1000c1d78  mov     x2, x21
  1000c1d7c  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c1d80  mov     x20, x0
  1000c1d84  adrp    x8, #0x100417000
  1000c1d88  nop
  1000c1d8c  ldr     x23, [x8, #0x40]
  1000c1d90  adrp    x2, #0x1003c0000
  1000c1d94  add     x2, x2, #0x690                           ; @"Enemies"
  1000c1d98  mov     x0, x20
  1000c1d9c  mov     x1, x23
  1000c1da0  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"]
  1000c1da4  mov     x29, x29
  1000c1da8  bl      _objc_retainAutoreleasedReturnValue
  1000c1dac  stp     xzr, xzr, [sp, #0x88]
  1000c1db0  stp     xzr, xzr, [sp, #0x78]
  1000c1db4  stp     xzr, xzr, [sp, #0x68]
  1000c1db8  stp     xzr, xzr, [sp, #0x58]
  1000c1dbc  bl      _objc_retain
  1000c1dc0  mov     x22, x0
  1000c1dc4  adrp    x8, #0x100416000
  1000c1dc8  nop
  1000c1dcc  ldr     x1, [x8, #0xe00]
  1000c1dd0  str     x1, [sp, #0x38]
  1000c1dd4  add     x2, sp, #0x58
  1000c1dd8  add     x3, sp, #0x98
  1000c1ddc  mov     w4, #0x10
  1000c1de0  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000c1de4  mov     x26, x0
  1000c1de8  cbz     x26, loc_1000c1fb8                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] == 0)
  1000c1dec  stp     x20, x21, [sp, #0x20]
  1000c1df0  str     x24, [sp, #0x30]
  1000c1df4  ldr     x8, [sp, #0x68]
  1000c1df8  ldr     x8, [x8]
  1000c1dfc  str     x8, [sp, #0x50]
  1000c1e00  adrp    x8, #0x100417000
  1000c1e04  nop
  1000c1e08  adrp    x9, #0x100417000
  1000c1e0c  add     x9, x9, #0x280                           ; &@selector(containsObject:)
  1000c1e10  ldr     x8, [x8, #0x248]
  1000c1e14  str     x8, [sp, #0x48]
  1000c1e18  ldr     x8, [x9]
  1000c1e1c  str     x8, [sp, #0x40]
  1000c1e20  adrp    x27, #0x1003c0000
  1000c1e24  add     x27, x27, #0x750                         ; @"spawn_after"
  1000c1e28  adrp    x19, #0x1003c0000
  1000c1e2c  add     x19, x19, #0x930                         ; @"enemy"
loc_1000c1e30:
  1000c1e30  mov     x20, #0
loc_1000c1e34:
  1000c1e34  ldr     x8, [sp, #0x68]
  1000c1e38  ldr     x8, [x8]
  1000c1e3c  ldr     x9, [sp, #0x50]
  1000c1e40  cmp     x8, x9
  1000c1e44  b.eq    loc_1000c1e50                            ; if (x8 == x9)
  1000c1e48  mov     x0, x22
  1000c1e4c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"])
loc_1000c1e50:
  1000c1e50  ldr     x8, [sp, #0x60]
  1000c1e54  ldr     x2, [x8, x20, lsl #3]
  1000c1e58  mov     x0, x22
  1000c1e5c  mov     x1, x23
  1000c1e60  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2]
  1000c1e64  mov     x29, x29
  1000c1e68  bl      _objc_retainAutoreleasedReturnValue
  1000c1e6c  mov     x25, x0
  1000c1e70  mov     x1, x23
  1000c1e74  mov     x2, x27
  1000c1e78  bl      _objc_msgSend                            ; [[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"]
  1000c1e7c  mov     x29, x29
  1000c1e80  bl      _objc_retainAutoreleasedReturnValue
  1000c1e84  mov     x21, x0
  1000c1e88  mov     x1, x23
  1000c1e8c  mov     x2, x19
  1000c1e90  bl      _objc_msgSend                            ; [[[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"] objectForKey:@"enemy"]
  1000c1e94  mov     x29, x29
  1000c1e98  bl      _objc_retainAutoreleasedReturnValue
  1000c1e9c  mov     x24, x0
  1000c1ea0  bl      _objc_release
  1000c1ea4  mov     x0, x21
  1000c1ea8  bl      _objc_release
  1000c1eac  cbz     x24, loc_1000c1f38                       ; if ([[[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"] objectForKey:@"enemy"] == 0)
  1000c1eb0  mov     x0, x25
  1000c1eb4  mov     x1, x23
  1000c1eb8  mov     x2, x27
  1000c1ebc  bl      _objc_msgSend                            ; [[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"]
  1000c1ec0  mov     x29, x29
  1000c1ec4  bl      _objc_retainAutoreleasedReturnValue
  1000c1ec8  mov     x24, x0
  1000c1ecc  mov     x1, x23
  1000c1ed0  mov     x2, x19
  1000c1ed4  mov     x28, x19
  1000c1ed8  bl      _objc_msgSend                            ; [[[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"] objectForKey:@"enemy"]
  1000c1edc  mov     x19, x27
  1000c1ee0  mov     x29, x29
  1000c1ee4  bl      _objc_retainAutoreleasedReturnValue
  1000c1ee8  mov     x21, x0
  1000c1eec  mov     x0, x24
  1000c1ef0  bl      _objc_release
  1000c1ef4  mov     x0, x22
  1000c1ef8  ldr     x1, [sp, #0x48]
  1000c1efc  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys]
  1000c1f00  mov     x29, x29
  1000c1f04  bl      _objc_retainAutoreleasedReturnValue
  1000c1f08  mov     x24, x0
  1000c1f0c  ldr     x1, [sp, #0x40]
  1000c1f10  mov     x2, x21
  1000c1f14  bl      _objc_msgSend                            ; [[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys] containsObject:[[[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"] objectForKey:@"enemy"]]
  1000c1f18  mov     x27, x0
  1000c1f1c  mov     x0, x24
  1000c1f20  bl      _objc_release
  1000c1f24  cbz     w27, loc_1000c1f78                       ; if ([[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys] containsObject:[[[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] objectForKey:x2] objectForKey:@"spawn_after"] objectForKey:@"enemy"]] == 0)
  1000c1f28  mov     x0, x21
  1000c1f2c  bl      _objc_release
  1000c1f30  mov     x27, x19
  1000c1f34  mov     x19, x28
loc_1000c1f38:
  1000c1f38  mov     x0, x25
  1000c1f3c  bl      _objc_release
  1000c1f40  add     x20, x20, #1
  1000c1f44  cmp     x20, x26
  1000c1f48  b.lo    loc_1000c1e34                            ; if ((x20 + 1) <u [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] object…)
  1000c1f4c  add     x2, sp, #0x58
  1000c1f50  add     x3, sp, #0x98
  1000c1f54  mov     w4, #0x10
  1000c1f58  mov     x0, x22
  1000c1f5c  ldr     x1, [sp, #0x38]
  1000c1f60  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16]
  1000c1f64  mov     x26, x0
  1000c1f68  cbnz    x26, loc_1000c1e30                       ; if ([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x98] count:16] != 0)
  1000c1f6c  mov     w19, #1
  1000c1f70  ldr     x24, [sp, #0x30]
  1000c1f74  b       loc_1000c1fa4
loc_1000c1f78:
  1000c1f78  str     x21, [sp, #8]
  1000c1f7c  ldr     x24, [sp, #0x30]
  1000c1f80  str     x24, [sp]
  1000c1f84  adrp    x0, #0x1003c1000
  1000c1f88  add     x0, x0, #0xfb0                           ; @"Brick %@ doesn't have an enemy named %@"
  1000c1f8c  bl      _NSLog                                   ; NSLog(@"Brick %@ doesn't have an enemy named %@", arg1, [[[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForRes…)
  1000c1f90  mov     x0, x21
  1000c1f94  bl      _objc_release
  1000c1f98  mov     x0, x25
  1000c1f9c  bl      _objc_release
  1000c1fa0  mov     w19, #0
loc_1000c1fa4:
  1000c1fa4  ldp     x20, x21, [sp, #0x20]
  1000c1fa8  adrp    x25, #0x1003b0000
  1000c1fac  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000c1fb0  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000c1fb4  b       loc_1000c1fbc
loc_1000c1fb8:
  1000c1fb8  mov     w19, #1
loc_1000c1fbc:
  1000c1fbc  mov     x0, x22
  1000c1fc0  bl      _objc_release
  1000c1fc4  mov     x0, x22
  1000c1fc8  bl      _objc_release
  1000c1fcc  mov     x0, x20
  1000c1fd0  bl      _objc_release
  1000c1fd4  mov     x0, x21
  1000c1fd8  bl      _objc_release
  1000c1fdc  mov     x0, x24
  1000c1fe0  bl      _objc_release
  1000c1fe4  ldur    x8, [x29, #-0x58]
  1000c1fe8  sub     x8, x25, x8
  1000c1fec  cbnz    x8, loc_1000c2014                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c1ff0  mov     x0, x19
  1000c1ff4  sub     sp, x29, #0x50
  1000c1ff8  ldp     x29, x30, [sp, #0x50]
  1000c1ffc  ldp     x20, x19, [sp, #0x40]
  1000c2000  ldp     x22, x21, [sp, #0x30]
  1000c2004  ldp     x24, x23, [sp, #0x20]
  1000c2008  ldp     x26, x25, [sp, #0x10]
  1000c200c  ldp     x28, x27, [sp], #0x60
  1000c2010  ret
loc_1000c2014:
  1000c2014  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c2018  mov     x19, x0
  1000c201c  b       loc_1000c205c
loc_1000c2020:
  1000c2020  mov     x19, x0
  1000c2024  ldr     x24, [sp, #0x30]
  1000c2028  ldr     x20, [sp, #0x20]
  1000c202c  b       loc_1000c206c
  1000c2030  b       loc_1000c2040
  1000c2034  mov     x19, x0
  1000c2038  mov     x0, x24
  1000c203c  b       loc_1000c2058
loc_1000c2040:
  1000c2040  mov     x19, x0
  1000c2044  b       loc_1000c2054
  1000c2048  mov     x19, x0
  1000c204c  mov     x0, x24
  1000c2050  bl      _objc_release
loc_1000c2054:
  1000c2054  mov     x0, x21
loc_1000c2058:
  1000c2058  bl      _objc_release
loc_1000c205c:
  1000c205c  ldr     x24, [sp, #0x30]
  1000c2060  ldr     x20, [sp, #0x20]
  1000c2064  mov     x0, x25
  1000c2068  bl      _objc_release
loc_1000c206c:
  1000c206c  mov     x0, x22
  1000c2070  bl      _objc_release
  1000c2074  mov     x0, x22
  1000c2078  bl      _objc_release
  1000c207c  ldr     x21, [sp, #0x28]
loc_1000c2080:
  1000c2080  mov     x0, x20
  1000c2084  bl      _objc_release
loc_1000c2088:
  1000c2088  mov     x0, x21
loc_1000c208c:
  1000c208c  bl      _objc_release
loc_1000c2090:
  1000c2090  mov     x0, x24
  1000c2094  bl      _objc_release
  1000c2098  mov     x0, x19
  1000c209c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c20a0  mov     x19, x0
  1000c20a4  b       loc_1000c2088
  1000c20a8  mov     x19, x0
  1000c20ac  b       loc_1000c2090
  1000c20b0  mov     x19, x0
  1000c20b4  mov     x0, x20
  1000c20b8  b       loc_1000c208c
  1000c20bc  mov     x19, x0
  1000c20c0  b       loc_1000c2080
  1000c20c4  stp     x20, x21, [sp, #0x20]
  1000c20c8  str     x24, [sp, #0x30]
  1000c20cc  b       loc_1000c2020
  1000c20d0  b       loc_1000c2020
  1000c20d4  b       loc_1000c2040

; ======================================================================
; -[ADBrickManager currentBrick]
; address 0x1000c20d8  size 28  kind objc
; ======================================================================
  1000c20d8  adrp    x8, #0x100420000
  1000c20dc  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c20e0  ldr     x0, [x0, x8]                             ; x0 = self->bricks
  1000c20e4  adrp    x8, #0x100417000
  1000c20e8  nop
  1000c20ec  ldr     x1, [x8, #0xa30]
  1000c20f0  b       _objc_msgSend                            ; [self->bricks lastObject]

; ======================================================================
; -[ADBrickManager randomItemInBrickDictionary:]
; address 0x1000c20f4  size 176  kind objc
; ======================================================================
  1000c20f4  stp     x20, x19, [sp, #-0x20]!
  1000c20f8  stp     x29, x30, [sp, #0x10]
  1000c20fc  add     x29, sp, #0x10
  1000c2100  adrp    x8, #0x100420000
  1000c2104  ldrsw   x8, [x8, #0x3a4]                         ; ivar offset ADBrickManager.brickDictionary (+0x8)
  1000c2108  ldr     x0, [x0, x8]                             ; x0 = self->brickDictionary
  1000c210c  adrp    x8, #0x100417000
  1000c2110  nop
  1000c2114  ldr     x1, [x8, #0x40]
  1000c2118  bl      _objc_msgSend                            ; [self->brickDictionary objectForKey:arg1]
  1000c211c  mov     x29, x29
  1000c2120  bl      _objc_retainAutoreleasedReturnValue
  1000c2124  mov     x19, x0
  1000c2128  bl      _rand                                    ; rand()
  1000c212c  mov     x20, x0
  1000c2130  adrp    x8, #0x100416000
  1000c2134  nop
  1000c2138  ldr     x1, [x8, #0xe30]
  1000c213c  mov     x0, x19
  1000c2140  bl      _objc_msgSend                            ; [[self->brickDictionary objectForKey:arg1] count]
  1000c2144  sxtw    x8, w20
  1000c2148  udiv    x9, x8, x0
  1000c214c  msub    x2, x9, x0, x8                           ; t1 = (rand() - (rand() / [[self->brickDictionary objectForKey:arg1] count]) * [[self->brickDictionary objectForKey:arg1] count])
  1000c2150  adrp    x8, #0x100416000
  1000c2154  nop
  1000c2158  ldr     x1, [x8, #0xc30]
  1000c215c  mov     x0, x19
  1000c2160  bl      _objc_msgSend                            ; [[self->brickDictionary objectForKey:arg1] objectAtIndex:t1]
  1000c2164  mov     x29, x29
  1000c2168  bl      _objc_retainAutoreleasedReturnValue
  1000c216c  mov     x20, x0
  1000c2170  mov     x0, x19
  1000c2174  bl      _objc_release
  1000c2178  mov     x0, x20
  1000c217c  ldp     x29, x30, [sp, #0x10]
  1000c2180  ldp     x20, x19, [sp], #0x20
  1000c2184  b       _objc_autoreleaseReturnValue
  1000c2188  mov     x20, x0
  1000c218c  mov     x0, x19
  1000c2190  bl      _objc_release
  1000c2194  b       loc_1000c219c
  1000c2198  mov     x20, x0
loc_1000c219c:
  1000c219c  mov     x0, x20
  1000c21a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager brickNameForWaveNumber:]
; address 0x1000c21a4  size 1016  kind objc
; ======================================================================
  1000c21a4  stp     d13, d12, [sp, #-0x90]!
  1000c21a8  stp     d11, d10, [sp, #0x10]
  1000c21ac  stp     d9, d8, [sp, #0x20]
  1000c21b0  stp     x28, x27, [sp, #0x30]
  1000c21b4  stp     x26, x25, [sp, #0x40]
  1000c21b8  stp     x24, x23, [sp, #0x50]
  1000c21bc  stp     x22, x21, [sp, #0x60]
  1000c21c0  stp     x20, x19, [sp, #0x70]
  1000c21c4  stp     x29, x30, [sp, #0x80]
  1000c21c8  add     x29, sp, #0x80
  1000c21cc  sub     sp, sp, #0x10
  1000c21d0  mov     x20, x0
  1000c21d4  cmp     w2, #0xb
  1000c21d8  mov     w8, #0xb
  1000c21dc  adrp    x9, #0x100420000
  1000c21e0  ldrsw   x9, [x9, #0x3a8]                         ; ivar offset ADBrickManager.brickChanceDictionary (+0x10)
  1000c21e4  ldr     x19, [x20, x9]                           ; x19 = self->brickChanceDictionary
  1000c21e8  csel    w24, w8, w2, gt
  1000c21ec  adrp    x8, #0x10041d000
  1000c21f0  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000c21f4  adrp    x8, #0x100416000
  1000c21f8  nop
  1000c21fc  ldr     x1, [x8, #0xee8]
  1000c2200  str     x24, [sp]
  1000c2204  adrp    x2, #0x1003ba000
  1000c2208  add     x2, x2, #0xc50                           ; @"%i"
  1000c220c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]
  1000c2210  mov     x29, x29
  1000c2214  bl      _objc_retainAutoreleasedReturnValue
  1000c2218  mov     x22, x0
  1000c221c  adrp    x8, #0x100417000
  1000c2220  nop
  1000c2224  ldr     x21, [x8, #0x40]
  1000c2228  mov     x0, x19
  1000c222c  mov     x1, x21
  1000c2230  mov     x2, x22
  1000c2234  bl      _objc_msgSend                            ; [self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]]
  1000c2238  mov     x29, x29
  1000c223c  bl      _objc_retainAutoreleasedReturnValue
  1000c2240  mov     x19, x0
  1000c2244  mov     x0, x22
  1000c2248  bl      _objc_release
  1000c224c  adrp    x2, #0x1003c1000
  1000c2250  add     x2, x2, #0xfd0                           ; @"level_1"
  1000c2254  mov     x0, x19
  1000c2258  mov     x1, x21
  1000c225c  bl      _objc_msgSend                            ; [[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_1"]
  1000c2260  mov     x29, x29
  1000c2264  bl      _objc_retainAutoreleasedReturnValue
  1000c2268  mov     x23, x0
  1000c226c  adrp    x8, #0x100417000
  1000c2270  nop
  1000c2274  ldr     x22, [x8, #0x48]
  1000c2278  mov     x1, x22
  1000c227c  bl      _objc_msgSend                            ; [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_1"] floatValue]
  1000c2280  mov     v8.16b, v0.16b
  1000c2284  mov     x0, x23
  1000c2288  bl      _objc_release
  1000c228c  adrp    x2, #0x1003c1000
  1000c2290  add     x2, x2, #0xff0                           ; @"level_2"
  1000c2294  mov     x0, x19
  1000c2298  mov     x1, x21
  1000c229c  bl      _objc_msgSend                            ; [[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_2"]
  1000c22a0  mov     x29, x29
  1000c22a4  bl      _objc_retainAutoreleasedReturnValue
  1000c22a8  mov     x23, x0
  1000c22ac  mov     x1, x22
  1000c22b0  bl      _objc_msgSend                            ; [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_2"] floatValue]
  1000c22b4  mov     v9.16b, v0.16b
  1000c22b8  mov     x0, x23
  1000c22bc  bl      _objc_release
  1000c22c0  adrp    x2, #0x1003c2000
  1000c22c4  add     x2, x2, #0x10                            ; @"level_3"
  1000c22c8  mov     x0, x19
  1000c22cc  mov     x1, x21
  1000c22d0  bl      _objc_msgSend                            ; [[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_3"]
  1000c22d4  mov     x29, x29
  1000c22d8  bl      _objc_retainAutoreleasedReturnValue
  1000c22dc  mov     x23, x0
  1000c22e0  mov     x1, x22
  1000c22e4  bl      _objc_msgSend                            ; [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_3"] floatValue]
  1000c22e8  mov     v10.16b, v0.16b
  1000c22ec  mov     x0, x23
  1000c22f0  bl      _objc_release
  1000c22f4  adrp    x2, #0x1003c2000
  1000c22f8  add     x2, x2, #0x30                            ; @"level_4"
  1000c22fc  mov     x0, x19
  1000c2300  mov     x1, x21
  1000c2304  bl      _objc_msgSend                            ; [[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_4"]
  1000c2308  mov     x29, x29
  1000c230c  bl      _objc_retainAutoreleasedReturnValue
  1000c2310  mov     x23, x0
  1000c2314  mov     x1, x22
  1000c2318  bl      _objc_msgSend                            ; [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_4"] floatValue]
  1000c231c  mov     v11.16b, v0.16b
  1000c2320  mov     x0, x23
  1000c2324  bl      _objc_release
  1000c2328  adrp    x2, #0x1003c2000
  1000c232c  add     x2, x2, #0x50                            ; @"level_5"
  1000c2330  mov     x0, x19
  1000c2334  mov     x1, x21
  1000c2338  bl      _objc_msgSend                            ; [[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_5"]
  1000c233c  mov     x29, x29
  1000c2340  bl      _objc_retainAutoreleasedReturnValue
  1000c2344  mov     x21, x0
  1000c2348  mov     x1, x22
  1000c234c  bl      _objc_msgSend                            ; [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_5"] floatValue]
  1000c2350  mov     v12.16b, v0.16b
  1000c2354  mov     x0, x21
  1000c2358  bl      _objc_release
  1000c235c  fadd    s9, s8, s9                               ; t1 = ([[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_1"] floatValue] + [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_2"] floatValue])
  1000c2360  fadd    s10, s9, s10                             ; t2 = (t1 + [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_3"] floatValue])
  1000c2364  fadd    s11, s10, s11                            ; t3 = (t2 + [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_4"] floatValue])
  1000c2368  fadd    s12, s11, s12                            ; t4 = (t3 + [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"level_5"] floatValue])
  1000c236c  adrp    x8, #0x100181000
  1000c2370  ldr     s0, [x8, #0xa10]                         ; s0 = 100.0
  1000c2374  fcmp    s12, s0
  1000c2378  b.eq    loc_1000c238c                            ; if (t4 == 100)
  1000c237c  str     x24, [sp]
  1000c2380  adrp    x0, #0x1003c2000
  1000c2384  add     x0, x0, #0x70                            ; @"SUM OF BRICK %i != 100"
  1000c2388  bl      _NSLog                                   ; NSLog(@"SUM OF BRICK %i != 100", (arg1 > 11 ? 11 : arg1))
loc_1000c238c:
  1000c238c  bl      _rand                                    ; rand()
  1000c2390  str     x19, [sp, #8]
  1000c2394  mov     w27, #0
  1000c2398  mov     x21, #0
  1000c239c  sxtw    x8, w0
  1000c23a0  mov     w9, #0x51eb0000
  1000c23a4  movk    w9, #0x851f
  1000c23a8  mul     x8, x8, x9
  1000c23ac  lsr     x9, x8, #0x3f
  1000c23b0  asr     x8, x8, #0x25
  1000c23b4  add     w8, w8, w9
  1000c23b8  mov     w9, #0x64
  1000c23bc  msub    w8, w8, w9, w0
  1000c23c0  scvtf   s13, w8
  1000c23c4  adrp    x8, #0x10041a000
  1000c23c8  add     x8, x8, #0xaa8                           ; &@selector(randomItemInBrickDictionary:)
  1000c23cc  adrp    x9, #0x10041a000
  1000c23d0  add     x9, x9, #0xaa0                           ; &@selector(canUseBrickWithName:)
  1000c23d4  ldr     x22, [x8]
  1000c23d8  ldr     x23, [x9]
  1000c23dc  adrp    x24, #0x1003c2000
  1000c23e0  add     x24, x24, #0x90                          ; @"level_1_bricks"
  1000c23e4  adrp    x25, #0x1003c2000
  1000c23e8  add     x25, x25, #0xb0                          ; @"level_2_bricks"
  1000c23ec  adrp    x26, #0x1003c2000
  1000c23f0  add     x26, x26, #0xd0                          ; @"level_3_bricks"
  1000c23f4  b       loc_1000c2410
loc_1000c23f8:
  1000c23f8  mov     x29, x29
  1000c23fc  bl      _objc_retainAutoreleasedReturnValue
  1000c2400  mov     x28, x0
  1000c2404  mov     x0, x21
  1000c2408  bl      _objc_release
  1000c240c  mov     x21, x28
loc_1000c2410:
  1000c2410  mov     x19, x27
  1000c2414  cbz     x21, loc_1000c242c                       ; if (x21 == 0)
  1000c2418  mov     x0, x20
  1000c241c  mov     x1, x23
  1000c2420  mov     x2, x21
  1000c2424  bl      _objc_msgSend                            ; [self canUseBrickWithName:x2]
  1000c2428  tbnz    w0, #0, loc_1000c2524                    ; if (([self canUseBrickWithName:x2] & 1))
loc_1000c242c:
  1000c242c  fcmp    s13, s8
  1000c2430  b.pl    loc_1000c244c                            ; if ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) >= (or unordered) [[[self->brickChanceDictionary objectForKey:[NSString stringWithFormat:@"%i", (arg1 > 11 ? 11 : arg1)]] objectForKey:@"l…)
  1000c2434  mov     x0, x20
  1000c2438  mov     x1, x22
  1000c243c  mov     x2, x24
  1000c2440  bl      _objc_msgSend                            ; [self randomItemInBrickDictionary:@"level_1_bricks"]
  1000c2444  mov     x29, x29
  1000c2448  b       loc_1000c24d0
loc_1000c244c:
  1000c244c  fcmp    s13, s9
  1000c2450  b.pl    loc_1000c246c                            ; if ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) >= (or unordered) t1)
  1000c2454  mov     x0, x20
  1000c2458  mov     x1, x22
  1000c245c  mov     x2, x25
  1000c2460  bl      _objc_msgSend                            ; [self randomItemInBrickDictionary:@"level_2_bricks"]
  1000c2464  mov     x29, x29
  1000c2468  b       loc_1000c24d0
loc_1000c246c:
  1000c246c  fcmp    s13, s10
  1000c2470  b.pl    loc_1000c248c                            ; if ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) >= (or unordered) t2)
  1000c2474  mov     x0, x20
  1000c2478  mov     x1, x22
  1000c247c  mov     x2, x26
  1000c2480  bl      _objc_msgSend                            ; [self randomItemInBrickDictionary:@"level_3_bricks"]
  1000c2484  mov     x29, x29
  1000c2488  b       loc_1000c24d0
loc_1000c248c:
  1000c248c  fcmp    s13, s11
  1000c2490  b.pl    loc_1000c24b0                            ; if ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) >= (or unordered) t3)
  1000c2494  mov     x0, x20
  1000c2498  mov     x1, x22
  1000c249c  adrp    x2, #0x1003c2000
  1000c24a0  add     x2, x2, #0xf0                            ; @"level_4_bricks"
  1000c24a4  bl      _objc_msgSend                            ; [self randomItemInBrickDictionary:@"level_4_bricks"]
  1000c24a8  mov     x29, x29
  1000c24ac  b       loc_1000c24d0
loc_1000c24b0:
  1000c24b0  fcmp    s13, s12
  1000c24b4  b.pl    loc_1000c24e4                            ; if ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) >= (or unordered) t4)
  1000c24b8  mov     x0, x20
  1000c24bc  mov     x1, x22
  1000c24c0  adrp    x2, #0x1003c2000
  1000c24c4  add     x2, x2, #0x110                           ; @"level_5_bricks"
  1000c24c8  bl      _objc_msgSend                            ; [self randomItemInBrickDictionary:@"level_5_bricks"]
  1000c24cc  mov     x29, x29
loc_1000c24d0:
  1000c24d0  bl      _objc_retainAutoreleasedReturnValue
  1000c24d4  mov     x28, x0
  1000c24d8  mov     x0, x21
  1000c24dc  bl      _objc_release
  1000c24e0  mov     x21, x28
loc_1000c24e4:
  1000c24e4  add     w27, w19, #1
  1000c24e8  cmp     w19, #0xa
  1000c24ec  b.lt    loc_1000c2410                            ; if (w19 < 10)
  1000c24f0  mov     x0, x20
  1000c24f4  mov     x1, x22
  1000c24f8  mov     x2, x24
  1000c24fc  bl      _objc_msgSend                            ; [self randomItemInBrickDictionary:@"level_1_bricks"]
  1000c2500  b       loc_1000c23f8
  1000c2504  mov     x20, x0
  1000c2508  mov     x0, x21
  1000c250c  bl      _objc_release
  1000c2510  ldr     x19, [sp, #8]
loc_1000c2514:
  1000c2514  mov     x0, x19
loc_1000c2518:
  1000c2518  bl      _objc_release
  1000c251c  mov     x0, x20
  1000c2520  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_1000c2524:
  1000c2524  ldr     x0, [sp, #8]
  1000c2528  bl      _objc_release
  1000c252c  mov     x0, x21
  1000c2530  sub     sp, x29, #0x80
  1000c2534  ldp     x29, x30, [sp, #0x80]
  1000c2538  ldp     x20, x19, [sp, #0x70]
  1000c253c  ldp     x22, x21, [sp, #0x60]
  1000c2540  ldp     x24, x23, [sp, #0x50]
  1000c2544  ldp     x26, x25, [sp, #0x40]
  1000c2548  ldp     x28, x27, [sp, #0x30]
  1000c254c  ldp     d9, d8, [sp, #0x20]
  1000c2550  ldp     d11, d10, [sp, #0x10]
  1000c2554  ldp     d13, d12, [sp], #0x90
  1000c2558  b       _objc_autoreleaseReturnValue
  1000c255c  mov     x20, x0
  1000c2560  b       loc_1000c2514
  1000c2564  mov     x20, x0
  1000c2568  mov     x0, x22
  1000c256c  b       loc_1000c2518
  1000c2570  b       loc_1000c257c
  1000c2574  b       loc_1000c257c
  1000c2578  b       loc_1000c257c
loc_1000c257c:
  1000c257c  mov     x20, x0
  1000c2580  mov     x0, x23
  1000c2584  bl      _objc_release
  1000c2588  b       loc_1000c2514
  1000c258c  mov     x20, x0
  1000c2590  mov     x0, x21
  1000c2594  bl      _objc_release
  1000c2598  b       loc_1000c2514

; ======================================================================
; -[ADBrickManager canUseBrickWithName:]
; address 0x1000c259c  size 828  kind objc
; ======================================================================
  1000c259c  stp     x28, x27, [sp, #-0x60]!
  1000c25a0  stp     x26, x25, [sp, #0x10]
  1000c25a4  stp     x24, x23, [sp, #0x20]
  1000c25a8  stp     x22, x21, [sp, #0x30]
  1000c25ac  stp     x20, x19, [sp, #0x40]
  1000c25b0  stp     x29, x30, [sp, #0x50]
  1000c25b4  add     x29, sp, #0x50
  1000c25b8  sub     sp, sp, #0x110
  1000c25bc  adrp    x22, #0x1003b0000
  1000c25c0  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c25c4  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c25c8  stur    x22, [x29, #-0x58]
  1000c25cc  mov     x0, x2
  1000c25d0  bl      _objc_retain
  1000c25d4  mov     x19, x0
  1000c25d8  adrp    x8, #0x10041d000
  1000c25dc  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000c25e0  adrp    x8, #0x100416000
  1000c25e4  nop
  1000c25e8  ldr     x1, [x8, #0xb58]
  1000c25ec  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000c25f0  mov     x29, x29
  1000c25f4  bl      _objc_retainAutoreleasedReturnValue
  1000c25f8  mov     x21, x0
  1000c25fc  adrp    x8, #0x100416000
  1000c2600  nop
  1000c2604  ldr     x1, [x8, #0xd60]
  1000c2608  adrp    x3, #0x1003b9000
  1000c260c  add     x3, x3, #0xa70                           ; @"plist"
  1000c2610  mov     x2, x19
  1000c2614  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]
  1000c2618  mov     x29, x29
  1000c261c  bl      _objc_retainAutoreleasedReturnValue
  1000c2620  mov     x20, x0
  1000c2624  mov     x0, x21
  1000c2628  bl      _objc_release
  1000c262c  adrp    x8, #0x10041d000
  1000c2630  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c2634  adrp    x8, #0x100416000
  1000c2638  nop
  1000c263c  ldr     x1, [x8, #0xac8]
  1000c2640  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000c2644  adrp    x8, #0x100416000
  1000c2648  nop
  1000c264c  ldr     x1, [x8, #0xd68]
  1000c2650  mov     x2, x20
  1000c2654  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]]
  1000c2658  mov     x21, x0
  1000c265c  adrp    x8, #0x100417000
  1000c2660  nop
  1000c2664  ldr     x1, [x8, #0x40]
  1000c2668  adrp    x2, #0x1003c0000
  1000c266c  add     x2, x2, #0x690                           ; @"Enemies"
  1000c2670  mov     x0, x21
  1000c2674  bl      _objc_msgSend                            ; [[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"]
  1000c2678  mov     x29, x29
  1000c267c  bl      _objc_retainAutoreleasedReturnValue
  1000c2680  mov     x25, x0
  1000c2684  stp     xzr, xzr, [sp, #0x78]
  1000c2688  stp     xzr, xzr, [sp, #0x68]
  1000c268c  stp     xzr, xzr, [sp, #0x58]
  1000c2690  stp     xzr, xzr, [sp, #0x48]
  1000c2694  adrp    x8, #0x100417000
  1000c2698  nop
  1000c269c  ldr     x1, [x8, #0x248]
  1000c26a0  bl      _objc_msgSend                            ; [[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys]
  1000c26a4  mov     x29, x29
  1000c26a8  bl      _objc_retainAutoreleasedReturnValue
  1000c26ac  mov     x23, x0
  1000c26b0  adrp    x8, #0x100416000
  1000c26b4  nop
  1000c26b8  ldr     x1, [x8, #0xe00]
  1000c26bc  str     x1, [sp, #0x40]
  1000c26c0  add     x2, sp, #0x48
  1000c26c4  add     x3, sp, #0x88
  1000c26c8  mov     w4, #0x10
  1000c26cc  bl      _objc_msgSend                            ; [[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000c26d0  mov     x26, x0
  1000c26d4  cbz     x26, loc_1000c27dc                       ; if ([[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] == 0)
  1000c26d8  stp     x25, x21, [sp, #0x20]
  1000c26dc  stp     x20, x19, [sp, #0x30]
  1000c26e0  ldr     x8, [sp, #0x58]
  1000c26e4  adrp    x9, #0x100416000
  1000c26e8  add     x9, x9, #0xe10                           ; &@selector(persistentStats)
  1000c26ec  ldr     x21, [x8]
  1000c26f0  ldr     x25, [x9]
  1000c26f4  adrp    x8, #0x100418000
  1000c26f8  add     x8, x8, #0x550                           ; &@selector(getKillRequirementForEnemyWithName:)
  1000c26fc  ldr     x27, [x8]
  1000c2700  adrp    x22, #0x10041d000
loc_1000c2704:
  1000c2704  mov     x24, #0
loc_1000c2708:
  1000c2708  ldr     x8, [sp, #0x58]
  1000c270c  ldr     x8, [x8]
  1000c2710  cmp     x8, x21
  1000c2714  b.eq    loc_1000c2720                            ; if (x8 == x21)
  1000c2718  mov     x0, x23
  1000c271c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys])
loc_1000c2720:
  1000c2720  ldr     x8, [sp, #0x50]
  1000c2724  ldr     x28, [x8, x24, lsl #3]
  1000c2728  ldr     x0, [x22, #0xf58]                        ; class ADPersistentStats
  1000c272c  mov     x1, x25
  1000c2730  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  1000c2734  mov     x29, x29
  1000c2738  bl      _objc_retainAutoreleasedReturnValue
  1000c273c  mov     x19, x0
  1000c2740  mov     x1, x27
  1000c2744  mov     x2, x28
  1000c2748  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] getKillRequirementForEnemyWithName:x2]
  1000c274c  mov     x20, x0
  1000c2750  mov     x0, x19
  1000c2754  bl      _objc_release
  1000c2758  cmp     w20, #1
  1000c275c  b.ge    loc_1000c27a8                            ; if ([[ADPersistentStats persistentStats] getKillRequirementForEnemyWithName:x2] >= 1)
  1000c2760  add     x24, x24, #1
  1000c2764  cmp     x24, x26
  1000c2768  b.lo    loc_1000c2708                            ; if ((x24 + 1) <u [[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objec…)
  1000c276c  add     x2, sp, #0x48
  1000c2770  add     x3, sp, #0x88
  1000c2774  mov     w4, #0x10
  1000c2778  mov     x0, x23
  1000c277c  ldr     x1, [sp, #0x40]
  1000c2780  bl      _objc_msgSend                            ; [[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000c2784  mov     x26, x0
  1000c2788  cbnz    x26, loc_1000c2704                       ; if ([[[[[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:arg1 withExtension:@"plist"]] objectForKey:@"Enemies"] allKeys] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] != 0)
  1000c278c  mov     w24, #1
  1000c2790  ldp     x20, x19, [sp, #0x30]
  1000c2794  adrp    x22, #0x1003b0000
  1000c2798  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c279c  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c27a0  ldp     x25, x21, [sp, #0x20]
  1000c27a4  b       loc_1000c27e0
loc_1000c27a8:
  1000c27a8  str     x28, [sp, #8]
  1000c27ac  ldr     x19, [sp, #0x38]
  1000c27b0  str     x19, [sp]
  1000c27b4  adrp    x0, #0x1003c2000
  1000c27b8  add     x0, x0, #0x130                           ; @"Cannot use brick %@ because it contains %@"
  1000c27bc  ldp     x21, x20, [sp, #0x28]
  1000c27c0  ldr     x25, [sp, #0x20]
  1000c27c4  bl      _NSLog                                   ; NSLog(@"Cannot use brick %@ because it contains %@", arg1, sp[8])
  1000c27c8  adrp    x22, #0x1003b0000
  1000c27cc  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c27d0  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c27d4  mov     w24, #0
  1000c27d8  b       loc_1000c27e0
loc_1000c27dc:
  1000c27dc  mov     w24, #1
loc_1000c27e0:
  1000c27e0  mov     x0, x23
  1000c27e4  bl      _objc_release
  1000c27e8  mov     x0, x25
  1000c27ec  bl      _objc_release
  1000c27f0  mov     x0, x21
  1000c27f4  bl      _objc_release
  1000c27f8  mov     x0, x20
  1000c27fc  bl      _objc_release
  1000c2800  mov     x0, x19
  1000c2804  bl      _objc_release
  1000c2808  ldur    x8, [x29, #-0x58]
  1000c280c  sub     x8, x22, x8
  1000c2810  cbnz    x8, loc_1000c2838                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c2814  mov     x0, x24
  1000c2818  sub     sp, x29, #0x50
  1000c281c  ldp     x29, x30, [sp, #0x50]
  1000c2820  ldp     x20, x19, [sp, #0x40]
  1000c2824  ldp     x22, x21, [sp, #0x30]
  1000c2828  ldp     x24, x23, [sp, #0x20]
  1000c282c  ldp     x26, x25, [sp, #0x10]
  1000c2830  ldp     x28, x27, [sp], #0x60
  1000c2834  ret
loc_1000c2838:
  1000c2838  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c283c:
  1000c283c  mov     x24, x0
  1000c2840  b       loc_1000c2850
  1000c2844  mov     x24, x0
  1000c2848  mov     x0, x19
  1000c284c  bl      _objc_release
loc_1000c2850:
  1000c2850  mov     x0, x23
  1000c2854  bl      _objc_release
loc_1000c2858:
  1000c2858  ldr     x0, [sp, #0x20]
  1000c285c  bl      _objc_release
loc_1000c2860:
  1000c2860  ldr     x0, [sp, #0x28]
  1000c2864  bl      _objc_release
loc_1000c2868:
  1000c2868  ldr     x0, [sp, #0x30]
loc_1000c286c:
  1000c286c  bl      _objc_release
loc_1000c2870:
  1000c2870  ldr     x0, [sp, #0x38]
  1000c2874  bl      _objc_release
  1000c2878  mov     x0, x24
  1000c287c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c2880  stp     x20, x19, [sp, #0x30]
  1000c2884  mov     x24, x0
  1000c2888  b       loc_1000c2868
  1000c288c  stp     x25, x21, [sp, #0x20]
  1000c2890  stp     x20, x19, [sp, #0x30]
  1000c2894  b       loc_1000c283c
  1000c2898  str     x19, [sp, #0x38]
  1000c289c  mov     x24, x0
  1000c28a0  b       loc_1000c2870
  1000c28a4  str     x19, [sp, #0x38]
  1000c28a8  mov     x24, x0
  1000c28ac  mov     x0, x21
  1000c28b0  b       loc_1000c286c
  1000c28b4  stp     x21, x20, [sp, #0x28]
  1000c28b8  str     x19, [sp, #0x38]
  1000c28bc  mov     x24, x0
  1000c28c0  b       loc_1000c2860
  1000c28c4  stp     x25, x21, [sp, #0x20]
  1000c28c8  stp     x20, x19, [sp, #0x30]
  1000c28cc  mov     x24, x0
  1000c28d0  b       loc_1000c2858
  1000c28d4  b       loc_1000c283c

; ======================================================================
; -[ADBrickManager scenarioBrickNameForWaveNumber:]
; address 0x1000c28d8  size 88  kind objc
; ======================================================================
  1000c28d8  stp     x20, x19, [sp, #-0x20]!
  1000c28dc  stp     x29, x30, [sp, #0x10]
  1000c28e0  add     x29, sp, #0x10
  1000c28e4  adrp    x8, #0x100420000
  1000c28e8  ldrsw   x8, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c28ec  ldr     x19, [x0, x8]                            ; x19 = self->brickScenario
  1000c28f0  sub     w8, w2, #1
  1000c28f4  sxtw    x20, w8
  1000c28f8  adrp    x8, #0x100416000
  1000c28fc  nop
  1000c2900  ldr     x1, [x8, #0xe30]
  1000c2904  mov     x0, x19
  1000c2908  bl      _objc_msgSend                            ; [self->brickScenario count]
  1000c290c  udiv    x8, x20, x0
  1000c2910  msub    x2, x8, x0, x20
  1000c2914  adrp    x8, #0x100416000
  1000c2918  nop
  1000c291c  ldr     x1, [x8, #0xc30]
  1000c2920  mov     x0, x19
  1000c2924  ldp     x29, x30, [sp, #0x10]
  1000c2928  ldp     x20, x19, [sp], #0x20
  1000c292c  b       _objc_msgSend                            ; [self->brickScenario objectAtIndex:((arg1 - 1) - ((arg1 - 1) / [self->brickScenario count]) * [self->brickScenario count])]

; ======================================================================
; -[ADBrickManager loadBrickWithName:]
; address 0x1000c2930  size 1144  kind objc
; ======================================================================
  1000c2930  stp     x28, x27, [sp, #-0x60]!
  1000c2934  stp     x26, x25, [sp, #0x10]
  1000c2938  stp     x24, x23, [sp, #0x20]
  1000c293c  stp     x22, x21, [sp, #0x30]
  1000c2940  stp     x20, x19, [sp, #0x40]
  1000c2944  stp     x29, x30, [sp, #0x50]
  1000c2948  add     x29, sp, #0x50
  1000c294c  mov     x22, x0
  1000c2950  mov     x0, x2
  1000c2954  bl      _objc_retain
  1000c2958  mov     x19, x0
  1000c295c  adrp    x8, #0x100417000
  1000c2960  nop
  1000c2964  ldr     x1, [x8, #0xab0]
  1000c2968  mov     x0, x22
  1000c296c  bl      _objc_msgSend                            ; [self currentBrick]
  1000c2970  mov     x29, x29
  1000c2974  bl      _objc_retainAutoreleasedReturnValue
  1000c2978  mov     x20, x0
  1000c297c  adrp    x8, #0x100419000
  1000c2980  nop
  1000c2984  ldr     x1, [x8, #0x368]
  1000c2988  bl      _objc_msgSend                            ; [[self currentBrick] stopAllSounds]
  1000c298c  adrp    x8, #0x10041e000
  1000c2990  ldr     x0, [x8, #0x428]                         ; class ADBrick
  1000c2994  adrp    x8, #0x100416000
  1000c2998  nop
  1000c299c  ldr     x1, [x8, #0xac8]
  1000c29a0  bl      _objc_msgSend                            ; [ADBrick alloc]
  1000c29a4  adrp    x8, #0x10041a000
  1000c29a8  nop
  1000c29ac  ldr     x1, [x8, #0xab0]
  1000c29b0  mov     x2, x19
  1000c29b4  bl      _objc_msgSend                            ; [[ADBrick alloc] initBrickWithName:arg1]
  1000c29b8  mov     x21, x0
  1000c29bc  adrp    x8, #0x100420000
  1000c29c0  ldrsw   x8, [x8, #0x394]                         ; ivar offset ADBrickManager.currentWave (+0x3c)
  1000c29c4  ldr     w8, [x22, x8]                            ; w8 = self->currentWave
  1000c29c8  add     w2, w8, #1
  1000c29cc  adrp    x8, #0x100417000
  1000c29d0  nop
  1000c29d4  ldr     x1, [x8, #0x670]
  1000c29d8  mov     x0, x21
  1000c29dc  bl      _objc_msgSend                            ; [[[ADBrick alloc] initBrickWithName:arg1] setTag:(self->currentWave + 1)]
  1000c29e0  adrp    x8, #0x100420000
  1000c29e4  ldrsw   x26, [x8, #0x384]                        ; ivar offset ADBrickManager.bricks (+0x20)
  1000c29e8  ldr     x0, [x22, x26]                           ; x0 = self->bricks
  1000c29ec  adrp    x8, #0x100416000
  1000c29f0  nop
  1000c29f4  ldr     x1, [x8, #0xd90]
  1000c29f8  mov     x2, x21
  1000c29fc  bl      _objc_msgSend                            ; [self->bricks addObject:[[ADBrick alloc] initBrickWithName:arg1]]
  1000c2a00  ldr     x0, [x22, x26]                           ; x0 = self->bricks
  1000c2a04  adrp    x8, #0x100416000
  1000c2a08  nop
  1000c2a0c  ldr     x23, [x8, #0xe30]
  1000c2a10  mov     x1, x23
  1000c2a14  bl      _objc_msgSend                            ; [self->bricks count]
  1000c2a18  cmp     x0, #1
  1000c2a1c  b.ne    loc_1000c2a38                            ; if ([self->bricks count] != 1)
  1000c2a20  adrp    x8, #0x10041a000
  1000c2a24  nop
  1000c2a28  ldr     x1, [x8, #0xab8]
  1000c2a2c  mov     x0, x21
  1000c2a30  bl      _objc_msgSend                            ; [[[ADBrick alloc] initBrickWithName:arg1] activateAllPlaylists]
  1000c2a34  b       loc_1000c2b28
loc_1000c2a38:
  1000c2a38  ldr     x0, [x22, x26]                           ; x0 = self->bricks
  1000c2a3c  mov     x1, x23
  1000c2a40  bl      _objc_msgSend                            ; [self->bricks count]
  1000c2a44  cmp     x0, #2
  1000c2a48  b.lo    loc_1000c2b28                            ; if ([self->bricks count] <u 2)
  1000c2a4c  ldr     x24, [x22, x26]                          ; x24 = self->bricks
  1000c2a50  mov     x0, x24
  1000c2a54  mov     x1, x23
  1000c2a58  bl      _objc_msgSend                            ; [self->bricks count]
  1000c2a5c  sub     x2, x0, #2
  1000c2a60  adrp    x8, #0x100416000
  1000c2a64  nop
  1000c2a68  ldr     x1, [x8, #0xc30]
  1000c2a6c  mov     x0, x24
  1000c2a70  bl      _objc_msgSend                            ; [self->bricks objectAtIndex:([self->bricks count] - 2)]
  1000c2a74  mov     x29, x29
  1000c2a78  bl      _objc_retainAutoreleasedReturnValue
  1000c2a7c  mov     x23, x0
  1000c2a80  adrp    x8, #0x100420000
  1000c2a84  ldrsw   x8, [x8, #0x398]                         ; ivar offset ADBrickManager.deactivationList (+0x28)
  1000c2a88  ldr     x25, [x22, x8]                           ; x25 = self->deactivationList
  1000c2a8c  ldr     x0, [x22, x26]                           ; x0 = self->bricks
  1000c2a90  adrp    x8, #0x100417000
  1000c2a94  nop
  1000c2a98  ldr     x1, [x8, #0xa30]
  1000c2a9c  bl      _objc_msgSend                            ; [self->bricks lastObject]
  1000c2aa0  mov     x29, x29
  1000c2aa4  bl      _objc_retainAutoreleasedReturnValue
  1000c2aa8  mov     x24, x0
  1000c2aac  adrp    x8, #0x10041a000
  1000c2ab0  nop
  1000c2ab4  ldr     x1, [x8, #0x298]
  1000c2ab8  mov     x0, x23
  1000c2abc  bl      _objc_msgSend                            ; [[self->bricks objectAtIndex:([self->bricks count] - 2)] playlists]
  1000c2ac0  mov     x29, x29
  1000c2ac4  bl      _objc_retainAutoreleasedReturnValue
  1000c2ac8  mov     x26, x0
  1000c2acc  adrp    x8, #0x10041a000
  1000c2ad0  nop
  1000c2ad4  ldr     x1, [x8, #0xac0]
  1000c2ad8  mov     x0, x24
  1000c2adc  mov     x2, x26
  1000c2ae0  bl      _objc_msgSend                            ; [[self->bricks lastObject] activatePLaylistsNotInSet:[[self->bricks objectAtIndex:([self->bricks count] - 2)] playlists]]
  1000c2ae4  mov     x29, x29
  1000c2ae8  bl      _objc_retainAutoreleasedReturnValue
  1000c2aec  mov     x27, x0
  1000c2af0  adrp    x8, #0x10041a000
  1000c2af4  nop
  1000c2af8  ldr     x1, [x8, #0xac8]
  1000c2afc  mov     x0, x25
  1000c2b00  mov     x2, x27
  1000c2b04  bl      _objc_msgSend                            ; [self->deactivationList unionSet:[[self->bricks lastObject] activatePLaylistsNotInSet:[[self->bricks objectAtIndex:([self->bricks count] - 2)] playlists]]]
  1000c2b08  mov     x0, x27
  1000c2b0c  bl      _objc_release
  1000c2b10  mov     x0, x26
  1000c2b14  bl      _objc_release
  1000c2b18  mov     x0, x24
  1000c2b1c  bl      _objc_release
  1000c2b20  mov     x0, x23
  1000c2b24  bl      _objc_release
loc_1000c2b28:
  1000c2b28  adrp    x27, #0x10041e000
  1000c2b2c  ldr     x0, [x27, #8]                            ; class ADTracker
  1000c2b30  adrp    x8, #0x100416000
  1000c2b34  nop
  1000c2b38  ldr     x23, [x8, #0xac0]
  1000c2b3c  mov     x1, x23
  1000c2b40  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c2b44  mov     x29, x29
  1000c2b48  bl      _objc_retainAutoreleasedReturnValue
  1000c2b4c  mov     x24, x0
  1000c2b50  ldr     x0, [x27, #8]                            ; class ADTracker
  1000c2b54  mov     x1, x23
  1000c2b58  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c2b5c  mov     x29, x29
  1000c2b60  bl      _objc_retainAutoreleasedReturnValue
  1000c2b64  mov     x26, x0
  1000c2b68  adrp    x8, #0x10041a000
  1000c2b6c  nop
  1000c2b70  ldr     x25, [x8, #0xad0]
  1000c2b74  mov     x1, x25
  1000c2b78  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] getBrickCounter]
  1000c2b7c  mov     x3, x0
  1000c2b80  adrp    x8, #0x10041a000
  1000c2b84  nop
  1000c2b88  ldr     x1, [x8, #0xad8]
  1000c2b8c  mov     x0, x24
  1000c2b90  mov     x2, x19
  1000c2b94  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] loadBrick:arg1 WithBrickNumber:[[ADTracker sharedInstance] getBrickCounter]]
  1000c2b98  mov     x0, x26
  1000c2b9c  bl      _objc_release
  1000c2ba0  mov     x0, x24
  1000c2ba4  bl      _objc_release
  1000c2ba8  ldr     x0, [x27, #8]                            ; class ADTracker
  1000c2bac  mov     x1, x23
  1000c2bb0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c2bb4  mov     x29, x29
  1000c2bb8  bl      _objc_retainAutoreleasedReturnValue
  1000c2bbc  mov     x23, x0
  1000c2bc0  mov     x1, x25
  1000c2bc4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] getBrickCounter]
  1000c2bc8  add     x2, x0, #1
  1000c2bcc  adrp    x8, #0x10041a000
  1000c2bd0  nop
  1000c2bd4  ldr     x1, [x8, #0x2f8]
  1000c2bd8  mov     x0, x23
  1000c2bdc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setBrickCounter:([[ADTracker sharedInstance] getBrickCounter] + 1)]
  1000c2be0  mov     x0, x23
  1000c2be4  bl      _objc_release
  1000c2be8  adrp    x8, #0x100417000
  1000c2bec  nop
  1000c2bf0  ldr     x1, [x8, #0xad8]
  1000c2bf4  mov     x3, #0
  1000c2bf8  adrp    x2, #0x1003bb000
  1000c2bfc  add     x2, x2, #0x70                            ; @"RESET_BRICK_TIME"
  1000c2c00  mov     x0, x22
  1000c2c04  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"RESET_BRICK_TIME" AndData:0]
  1000c2c08  adrp    x8, #0x10041a000
  1000c2c0c  nop
  1000c2c10  ldr     x22, [x8, #0x180]
  1000c2c14  mov     x0, x20
  1000c2c18  mov     x1, x22
  1000c2c1c  bl      _objc_msgSend                            ; [[self currentBrick] ambiantName]
  1000c2c20  mov     x29, x29
  1000c2c24  bl      _objc_retainAutoreleasedReturnValue
  1000c2c28  mov     x23, x0
  1000c2c2c  bl      _objc_release
  1000c2c30  cbz     x23, loc_1000c2c48                       ; if ([[self currentBrick] ambiantName] == 0)
  1000c2c34  adrp    x8, #0x10041a000
  1000c2c38  nop
  1000c2c3c  ldr     x1, [x8, #0xae0]
  1000c2c40  mov     x0, x20
  1000c2c44  bl      _objc_msgSend                            ; [[self currentBrick] stopBrickAmbiant]
loc_1000c2c48:
  1000c2c48  mov     x0, x21
  1000c2c4c  mov     x1, x22
  1000c2c50  bl      _objc_msgSend                            ; [[[ADBrick alloc] initBrickWithName:arg1] ambiantName]
  1000c2c54  mov     x29, x29
  1000c2c58  bl      _objc_retainAutoreleasedReturnValue
  1000c2c5c  mov     x23, x0
  1000c2c60  bl      _objc_release
  1000c2c64  cbz     x23, loc_1000c2ccc                       ; if ([[[ADBrick alloc] initBrickWithName:arg1] ambiantName] == 0)
  1000c2c68  adrp    x8, #0x10041e000
  1000c2c6c  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  1000c2c70  adrp    x8, #0x100418000
  1000c2c74  nop
  1000c2c78  ldr     x1, [x8, #0xf58]
  1000c2c7c  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  1000c2c80  mov     x29, x29
  1000c2c84  bl      _objc_retainAutoreleasedReturnValue
  1000c2c88  mov     x23, x0
  1000c2c8c  mov     x0, x21
  1000c2c90  mov     x1, x22
  1000c2c94  bl      _objc_msgSend                            ; [[[ADBrick alloc] initBrickWithName:arg1] ambiantName]
  1000c2c98  mov     x29, x29
  1000c2c9c  bl      _objc_retainAutoreleasedReturnValue
  1000c2ca0  mov     x24, x0
  1000c2ca4  adrp    x8, #0x10041a000
  1000c2ca8  nop
  1000c2cac  ldr     x1, [x8, #0xae8]
  1000c2cb0  mov     x0, x23
  1000c2cb4  mov     x2, x24
  1000c2cb8  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] brickWithAmbiantStarted:[[[ADBrick alloc] initBrickWithName:arg1] ambiantName]]
  1000c2cbc  mov     x0, x24
  1000c2cc0  bl      _objc_release
  1000c2cc4  mov     x0, x23
  1000c2cc8  bl      _objc_release
loc_1000c2ccc:
  1000c2ccc  mov     x0, x21
  1000c2cd0  bl      _objc_release
  1000c2cd4  mov     x0, x20
  1000c2cd8  bl      _objc_release
  1000c2cdc  mov     x0, x19
  1000c2ce0  ldp     x29, x30, [sp, #0x50]
  1000c2ce4  ldp     x20, x19, [sp, #0x40]
  1000c2ce8  ldp     x22, x21, [sp, #0x30]
  1000c2cec  ldp     x24, x23, [sp, #0x20]
  1000c2cf0  ldp     x26, x25, [sp, #0x10]
  1000c2cf4  ldp     x28, x27, [sp], #0x60
  1000c2cf8  b       _objc_release
  1000c2cfc  mov     x22, x0
  1000c2d00  b       loc_1000c2d88
  1000c2d04  mov     x22, x0
  1000c2d08  b       loc_1000c2d90
  1000c2d0c  mov     x22, x0
  1000c2d10  mov     x0, x26
  1000c2d14  bl      _objc_release
  1000c2d18  b       loc_1000c2d30
  1000c2d1c  mov     x22, x0
  1000c2d20  b       loc_1000c2d80
  1000c2d24  mov     x22, x0
  1000c2d28  b       loc_1000c2d98
  1000c2d2c  mov     x22, x0
loc_1000c2d30:
  1000c2d30  mov     x0, x24
  1000c2d34  bl      _objc_release
  1000c2d38  b       loc_1000c2d88
  1000c2d3c  mov     x22, x0
  1000c2d40  b       loc_1000c2d80
  1000c2d44  mov     x22, x0
  1000c2d48  b       loc_1000c2d78
  1000c2d4c  mov     x22, x0
  1000c2d50  b       loc_1000c2d80
  1000c2d54  mov     x22, x0
  1000c2d58  b       loc_1000c2d78
  1000c2d5c  mov     x22, x0
  1000c2d60  b       loc_1000c2d70
  1000c2d64  mov     x22, x0
  1000c2d68  mov     x0, x27
  1000c2d6c  bl      _objc_release
loc_1000c2d70:
  1000c2d70  mov     x0, x26
  1000c2d74  bl      _objc_release
loc_1000c2d78:
  1000c2d78  mov     x0, x24
  1000c2d7c  bl      _objc_release
loc_1000c2d80:
  1000c2d80  mov     x0, x23
  1000c2d84  bl      _objc_release
loc_1000c2d88:
  1000c2d88  mov     x0, x21
  1000c2d8c  bl      _objc_release
loc_1000c2d90:
  1000c2d90  mov     x0, x20
  1000c2d94  bl      _objc_release
loc_1000c2d98:
  1000c2d98  mov     x0, x19
  1000c2d9c  bl      _objc_release
  1000c2da0  mov     x0, x22
  1000c2da4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager checkPlaylistDeactivation]
; address 0x1000c2da8  size 380  kind objc
; ======================================================================
  1000c2da8  stp     x22, x21, [sp, #-0x30]!
  1000c2dac  stp     x20, x19, [sp, #0x10]
  1000c2db0  stp     x29, x30, [sp, #0x20]
  1000c2db4  add     x29, sp, #0x20
  1000c2db8  sub     sp, sp, #0x30
  1000c2dbc  mov     x20, x0
  1000c2dc0  adrp    x8, #0x100420000
  1000c2dc4  ldrsw   x21, [x8, #0x398]                        ; ivar offset ADBrickManager.deactivationList (+0x28)
  1000c2dc8  ldr     x0, [x20, x21]                           ; x0 = self->deactivationList
  1000c2dcc  cbz     x0, loc_1000c2ed4                        ; if (self->deactivationList == 0)
  1000c2dd0  adrp    x8, #0x100416000
  1000c2dd4  nop
  1000c2dd8  ldr     x1, [x8, #0xe30]
  1000c2ddc  bl      _objc_msgSend                            ; [self->deactivationList count]
  1000c2de0  cbz     x0, loc_1000c2ed4                        ; if ([self->deactivationList count] == 0)
  1000c2de4  ldr     x0, [x20, x21]                           ; x0 = self->deactivationList
  1000c2de8  adrp    x8, #0x100419000
  1000c2dec  nop
  1000c2df0  ldr     x1, [x8, #0xee8]
  1000c2df4  bl      _objc_msgSend                            ; [self->deactivationList anyObject]
  1000c2df8  mov     x29, x29
  1000c2dfc  bl      _objc_retainAutoreleasedReturnValue
  1000c2e00  mov     x19, x0
  1000c2e04  ldr     x0, [x20, x21]                           ; x0 = self->deactivationList
  1000c2e08  adrp    x8, #0x100416000
  1000c2e0c  nop
  1000c2e10  ldr     x1, [x8, #0xe20]
  1000c2e14  mov     x2, x19
  1000c2e18  bl      _objc_msgSend                            ; [self->deactivationList removeObject:[self->deactivationList anyObject]]
  1000c2e1c  adrp    x8, #0x10041d000
  1000c2e20  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c2e24  adrp    x8, #0x100417000
  1000c2e28  nop
  1000c2e2c  ldr     x1, [x8, #0x4f0]
  1000c2e30  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c2e34  mov     x29, x29
  1000c2e38  bl      _objc_retainAutoreleasedReturnValue
  1000c2e3c  mov     x21, x0
  1000c2e40  adrp    x8, #0x100417000
  1000c2e44  nop
  1000c2e48  ldr     x1, [x8, #0x4f8]
  1000c2e4c  mov     x2, x19
  1000c2e50  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[self->deactivationList anyObject]]
  1000c2e54  mov     x29, x29
  1000c2e58  bl      _objc_retainAutoreleasedReturnValue
  1000c2e5c  mov     x20, x0
  1000c2e60  mov     x0, x21
  1000c2e64  bl      _objc_release
  1000c2e68  adrp    x8, #0x1003b0000
  1000c2e6c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000c2e70  mov     w9, #-0x3e000000
  1000c2e74  str     x8, [sp, #8]
  1000c2e78  stp     w9, wzr, [sp, #0x10]
  1000c2e7c  adr     x8, #0x1000c2f24                         ; &-[ADBrickManager checkPlaylistDeactivation]_block_invoke
  1000c2e80  nop
  1000c2e84  str     x8, [sp, #0x18]
  1000c2e88  adrp    x8, #0x1003b2000
  1000c2e8c  add     x8, x8, #0x710                           ; &d_1003b2710
  1000c2e90  str     x8, [sp, #0x20]
  1000c2e94  mov     x0, x19
  1000c2e98  bl      _objc_retain
  1000c2e9c  mov     x21, x0
  1000c2ea0  str     x19, [sp, #0x28]
  1000c2ea4  adrp    x8, #0x10041a000
  1000c2ea8  nop
  1000c2eac  ldr     x1, [x8, #0x2d8]
  1000c2eb0  add     x2, sp, #8
  1000c2eb4  mov     x0, x20
  1000c2eb8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:[self->deactivationList anyObject]] deactivate:^{-[ADBrickManager checkPlaylistDeactivation]_block_invoke captures +0x20=[self->deactivationList anyObject]}]
  1000c2ebc  ldr     x0, [sp, #0x28]
  1000c2ec0  bl      _objc_release
  1000c2ec4  mov     x0, x20
  1000c2ec8  bl      _objc_release
  1000c2ecc  mov     x0, x21
  1000c2ed0  bl      _objc_release
loc_1000c2ed4:
  1000c2ed4  sub     sp, x29, #0x20
  1000c2ed8  ldp     x29, x30, [sp, #0x20]
  1000c2edc  ldp     x20, x19, [sp, #0x10]
  1000c2ee0  ldp     x22, x21, [sp], #0x30
  1000c2ee4  ret
  1000c2ee8  mov     x21, x0
  1000c2eec  b       loc_1000c2f14
  1000c2ef0  mov     x1, x21
  1000c2ef4  mov     x21, x0
  1000c2ef8  mov     x0, x1
  1000c2efc  b       loc_1000c2f10
  1000c2f00  mov     x21, x0
  1000c2f04  ldr     x0, [sp, #0x28]
  1000c2f08  bl      _objc_release
  1000c2f0c  mov     x0, x20
loc_1000c2f10:
  1000c2f10  bl      _objc_release
loc_1000c2f14:
  1000c2f14  mov     x0, x19
  1000c2f18  bl      _objc_release
  1000c2f1c  mov     x0, x21
  1000c2f20  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager checkPlaylistDeactivation]_block_invoke
; address 0x1000c2f24  size 108  kind block
; ======================================================================
  1000c2f24  stp     x20, x19, [sp, #-0x20]!
  1000c2f28  stp     x29, x30, [sp, #0x10]
  1000c2f2c  add     x29, sp, #0x10
  1000c2f30  adrp    x8, #0x10041e000
  1000c2f34  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000c2f38  adrp    x8, #0x100417000
  1000c2f3c  nop
  1000c2f40  ldr     x1, [x8, #0xaa8]
  1000c2f44  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000c2f48  mov     x29, x29
  1000c2f4c  bl      _objc_retainAutoreleasedReturnValue
  1000c2f50  mov     x19, x0
  1000c2f54  adrp    x8, #0x100419000
  1000c2f58  nop
  1000c2f5c  ldr     x1, [x8, #0x2f8]
  1000c2f60  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] checkPlaylistDeactivation]
  1000c2f64  mov     x0, x19
  1000c2f68  ldp     x29, x30, [sp, #0x10]
  1000c2f6c  ldp     x20, x19, [sp], #0x20
  1000c2f70  b       _objc_release
  1000c2f74  mov     x20, x0
  1000c2f78  b       loc_1000c2f88
  1000c2f7c  mov     x20, x0
  1000c2f80  mov     x0, x19
  1000c2f84  bl      _objc_release
loc_1000c2f88:
  1000c2f88  mov     x0, x20
  1000c2f8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_1000c2f90
; address 0x1000c2f90  size 8  kind sub
; ======================================================================
  1000c2f90  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000c2f94  b       _objc_retain

; ======================================================================
; sub_1000c2f98
; address 0x1000c2f98  size 8  kind sub
; ======================================================================
  1000c2f98  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000c2f9c  b       _objc_release

; ======================================================================
; -[ADBrickManager currentBrickName]
; address 0x1000c2fa0  size 124  kind objc
; ======================================================================
  1000c2fa0  stp     x20, x19, [sp, #-0x20]!
  1000c2fa4  stp     x29, x30, [sp, #0x10]
  1000c2fa8  add     x29, sp, #0x10
  1000c2fac  adrp    x8, #0x100420000
  1000c2fb0  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c2fb4  ldr     x0, [x0, x8]                             ; x0 = self->bricks
  1000c2fb8  adrp    x8, #0x100417000
  1000c2fbc  nop
  1000c2fc0  ldr     x1, [x8, #0xa30]
  1000c2fc4  bl      _objc_msgSend                            ; [self->bricks lastObject]
  1000c2fc8  mov     x29, x29
  1000c2fcc  bl      _objc_retainAutoreleasedReturnValue
  1000c2fd0  mov     x19, x0
  1000c2fd4  adrp    x8, #0x100417000
  1000c2fd8  nop
  1000c2fdc  ldr     x1, [x8, #0x450]
  1000c2fe0  bl      _objc_msgSend                            ; [[self->bricks lastObject] name]
  1000c2fe4  mov     x29, x29
  1000c2fe8  bl      _objc_retainAutoreleasedReturnValue
  1000c2fec  mov     x20, x0
  1000c2ff0  mov     x0, x19
  1000c2ff4  bl      _objc_release
  1000c2ff8  mov     x0, x20
  1000c2ffc  ldp     x29, x30, [sp, #0x10]
  1000c3000  ldp     x20, x19, [sp], #0x20
  1000c3004  b       _objc_autoreleaseReturnValue
  1000c3008  mov     x20, x0
  1000c300c  mov     x0, x19
  1000c3010  bl      _objc_release
  1000c3014  mov     x0, x20
  1000c3018  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager mode]
; address 0x1000c301c  size 60  kind objc
; ======================================================================
  1000c301c  adrp    x8, #0x100420000
  1000c3020  ldrsw   x8, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c3024  ldr     x8, [x0, x8]                             ; x8 = self->brickScenario
  1000c3028  cbz     x8, loc_1000c3048                        ; if (self->brickScenario == 0)
  1000c302c  adrp    x8, #0x100420000
  1000c3030  ldrsw   x8, [x8, #0x3ac]                         ; ivar offset ADBrickManager.loopBrickScenario (+0x38)
  1000c3034  ldrb    w8, [x0, x8]                             ; w8 = self->loopBrickScenario
  1000c3038  cmp     w8, #0
  1000c303c  mov     w8, #2
  1000c3040  cinc    w0, w8, ne
  1000c3044  ret
loc_1000c3048:
  1000c3048  adrp    x8, #0x100420000
  1000c304c  ldrsw   x8, [x8, #0x3b8]                         ; ivar offset ADBrickManager._mode (+0x70)
  1000c3050  ldr     w0, [x0, x8]                             ; w0 = self->_mode
  1000c3054  ret

; ======================================================================
; -[ADBrickManager loadNextBrick]
; address 0x1000c3058  size 780  kind objc
; ======================================================================
  1000c3058  stp     x24, x23, [sp, #-0x40]!
  1000c305c  stp     x22, x21, [sp, #0x10]
  1000c3060  stp     x20, x19, [sp, #0x20]
  1000c3064  stp     x29, x30, [sp, #0x30]
  1000c3068  add     x29, sp, #0x30
  1000c306c  sub     sp, sp, #0x10
  1000c3070  mov     x19, x0
  1000c3074  adrp    x8, #0x10041a000
  1000c3078  nop
  1000c307c  ldr     x1, [x8, #0xaf0]
  1000c3080  mov     w2, #0
  1000c3084  bl      _objc_msgSend                            ; [self setPlayerIsDead:0]
  1000c3088  adrp    x8, #0x100420000
  1000c308c  ldrsw   x21, [x8, #0x394]                        ; ivar offset ADBrickManager.currentWave (+0x3c)
  1000c3090  ldr     w8, [x19, x21]                           ; w8 = self->currentWave
  1000c3094  add     w8, w8, #1
  1000c3098  str     w8, [x19, x21]                           ; self->currentWave = (self->currentWave + 1)
  1000c309c  adrp    x8, #0x100419000
  1000c30a0  nop
  1000c30a4  ldr     x1, [x8, #0x348]
  1000c30a8  mov     x0, x19
  1000c30ac  bl      _objc_msgSend                            ; [self mode]
  1000c30b0  cmp     w0, #1
  1000c30b4  b.ne    loc_1000c314c                            ; if ([self mode] != 1)
  1000c30b8  adrp    x8, #0x10041e000
  1000c30bc  ldr     x0, [x8, #8]                             ; class ADTracker
  1000c30c0  adrp    x8, #0x100416000
  1000c30c4  nop
  1000c30c8  ldr     x1, [x8, #0xac0]
  1000c30cc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c30d0  mov     x29, x29
  1000c30d4  bl      _objc_retainAutoreleasedReturnValue
  1000c30d8  mov     x20, x0
  1000c30dc  adrp    x8, #0x100417000
  1000c30e0  nop
  1000c30e4  ldr     x1, [x8, #0x9b8]
  1000c30e8  mov     x2, #0
  1000c30ec  mov     x4, #0
  1000c30f0  adrp    x3, #0x1003bb000
  1000c30f4  add     x3, x3, #0x710                           ; @"Challenge name"
  1000c30f8  mov     x5, #0
  1000c30fc  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:0 ForDimension:@"Challenge name" AndValue:0 ForMetric:0]
  1000c3100  mov     x0, x20
  1000c3104  bl      _objc_release
  1000c3108  bl      _rand                                    ; rand()
  1000c310c  sxtw    x8, w0
  1000c3110  mov     x9, #-0x49f40001
  1000c3114  movk    x9, #0x60b7
  1000c3118  mul     x8, x8, x9
  1000c311c  lsr     x8, x8, #0x20
  1000c3120  add     w8, w8, w0
  1000c3124  asr     w9, w8, #8
  1000c3128  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  1000c312c  mov     w9, #0x168
  1000c3130  msub    w8, w8, w9, w0
  1000c3134  scvtf   s0, w8
  1000c3138  adrp    x8, #0x10041a000
  1000c313c  nop
  1000c3140  ldr     x1, [x8, #0xa90]
  1000c3144  mov     x0, x19
  1000c3148  bl      _objc_msgSend                            ; [self setCurrentRandomAngle:(float)(rand() - t1 * 360)]
loc_1000c314c:
  1000c314c  adrp    x8, #0x100420000
  1000c3150  ldrsw   x8, [x8, #0x3a8]                         ; ivar offset ADBrickManager.brickChanceDictionary (+0x10)
  1000c3154  ldr     x8, [x19, x8]                            ; x8 = self->brickChanceDictionary
  1000c3158  cbz     x8, loc_1000c3280                        ; if (self->brickChanceDictionary == 0)
  1000c315c  ldr     w2, [x19, x21]                           ; w2 = self->currentWave
  1000c3160  adrp    x8, #0x10041a000
  1000c3164  nop
  1000c3168  ldr     x1, [x8, #0xaf8]
  1000c316c  mov     x20, #0
  1000c3170  mov     x0, x19
  1000c3174  bl      _objc_msgSend                            ; [self brickNameForWaveNumber:self->currentWave]
  1000c3178  mov     x29, x29
  1000c317c  bl      _objc_retainAutoreleasedReturnValue
  1000c3180  mov     x20, x0
  1000c3184  ldr     w8, [x19, x21]                           ; w8 = self->currentWave
  1000c3188  cmp     w8, #0xb
  1000c318c  b.gt    loc_1000c31d4                            ; if (self->currentWave > 11)
  1000c3190  adrp    x8, #0x10041e000
  1000c3194  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000c3198  adrp    x8, #0x100417000
  1000c319c  nop
  1000c31a0  ldr     x1, [x8, #0x510]
  1000c31a4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000c31a8  mov     x29, x29
  1000c31ac  bl      _objc_retainAutoreleasedReturnValue
  1000c31b0  mov     x21, x0
  1000c31b4  adrp    x8, #0x10041a000
  1000c31b8  nop
  1000c31bc  ldr     x1, [x8, #0xb00]
  1000c31c0  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] enragedHorde]
  1000c31c4  mov     x22, x0
  1000c31c8  mov     x0, x21
  1000c31cc  bl      _objc_release
  1000c31d0  cbz     w22, loc_1000c32c0                       ; if ([[ADGameModifiers sharedModifiers] enragedHorde] == 0)
loc_1000c31d4:
  1000c31d4  adrp    x24, #0x10041e000
  1000c31d8  ldr     x0, [x24]                                ; class ADGameModifiers
  1000c31dc  adrp    x8, #0x100417000
  1000c31e0  nop
  1000c31e4  ldr     x21, [x8, #0x510]
  1000c31e8  mov     x1, x21
  1000c31ec  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000c31f0  mov     x29, x29
  1000c31f4  bl      _objc_retainAutoreleasedReturnValue
  1000c31f8  mov     x23, x0
  1000c31fc  adrp    x8, #0x10041a000
  1000c3200  nop
  1000c3204  ldr     x22, [x8, #0xb08]
  1000c3208  mov     x1, x22
  1000c320c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] difficultyModifier]
  1000c3210  fcvt    d0, s0
  1000c3214  nop
  1000c3218  ldr     d1, #0x100181d78                         ; d1 = 0.14
  1000c321c  fadd    d0, d0, d1
  1000c3220  fcvt    s0, d0
  1000c3224  adrp    x8, #0x10041a000
  1000c3228  nop
  1000c322c  ldr     x1, [x8, #0xb10]
  1000c3230  mov     x0, x23
  1000c3234  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] setDifficultyModifier:([[ADGameModifiers sharedModifiers] difficultyModifier] + 0.14)]
  1000c3238  mov     x0, x23
  1000c323c  bl      _objc_release
  1000c3240  ldr     x0, [x24]                                ; class ADGameModifiers
  1000c3244  mov     x1, x21
  1000c3248  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000c324c  mov     x29, x29
  1000c3250  bl      _objc_retainAutoreleasedReturnValue
  1000c3254  mov     x21, x0
  1000c3258  mov     x1, x22
  1000c325c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] difficultyModifier]
  1000c3260  fcvt    d0, s0
  1000c3264  str     d0, [sp]
  1000c3268  adrp    x0, #0x1003c2000
  1000c326c  add     x0, x0, #0x150                           ; @"Difficulty ramped to %f"
  1000c3270  bl      _NSLog                                   ; NSLog(@"Difficulty ramped to %f", [[ADGameModifiers sharedModifiers] difficultyModifier])
  1000c3274  mov     x0, x21
  1000c3278  bl      _objc_release
  1000c327c  b       loc_1000c32c0
loc_1000c3280:
  1000c3280  adrp    x8, #0x100420000
  1000c3284  ldrsw   x8, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c3288  ldr     x8, [x19, x8]                            ; x8 = self->brickScenario
  1000c328c  cbz     x8, loc_1000c32bc                        ; if (self->brickScenario == 0)
  1000c3290  ldr     w2, [x19, x21]                           ; w2 = self->currentWave
  1000c3294  adrp    x8, #0x10041a000
  1000c3298  nop
  1000c329c  ldr     x1, [x8, #0xb18]
  1000c32a0  mov     x20, #0
  1000c32a4  mov     x0, x19
  1000c32a8  bl      _objc_msgSend                            ; [self scenarioBrickNameForWaveNumber:self->currentWave]
  1000c32ac  mov     x29, x29
  1000c32b0  bl      _objc_retainAutoreleasedReturnValue
  1000c32b4  mov     x20, x0
  1000c32b8  b       loc_1000c32c0
loc_1000c32bc:
  1000c32bc  mov     x20, #0
loc_1000c32c0:
  1000c32c0  adrp    x8, #0x100417000
  1000c32c4  nop
  1000c32c8  ldr     x1, [x8, #0xad8]
  1000c32cc  str     xzr, [sp]
  1000c32d0  adrp    x2, #0x1003bd000
  1000c32d4  add     x2, x2, #0xc50                           ; @"SET_BRICK_NAME"
  1000c32d8  mov     x0, x19
  1000c32dc  mov     x3, x20
  1000c32e0  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"SET_BRICK_NAME" AndData:x3]
  1000c32e4  str     x20, [sp]
  1000c32e8  adrp    x0, #0x1003c2000
  1000c32ec  add     x0, x0, #0x170                           ; @"LOADING NEXT WAVE : %@"
  1000c32f0  bl      _NSLog                                   ; NSLog(@"LOADING NEXT WAVE : %@", sp[0])
  1000c32f4  adrp    x8, #0x100417000
  1000c32f8  nop
  1000c32fc  ldr     x1, [x8, #0xd40]
  1000c3300  mov     x0, x19
  1000c3304  mov     x2, x20
  1000c3308  bl      _objc_msgSend                            ; [self loadBrickWithName:x2]
  1000c330c  mov     x0, x20
  1000c3310  sub     sp, x29, #0x30
  1000c3314  ldp     x29, x30, [sp, #0x30]
  1000c3318  ldp     x20, x19, [sp, #0x20]
  1000c331c  ldp     x22, x21, [sp, #0x10]
  1000c3320  ldp     x24, x23, [sp], #0x40
  1000c3324  b       _objc_release
loc_1000c3328:
  1000c3328  mov     x19, x0
  1000c332c  b       loc_1000c3354
  1000c3330  mov     x19, x0
  1000c3334  mov     x0, x23
  1000c3338  bl      _objc_release
  1000c333c  b       loc_1000c3354
  1000c3340  b       loc_1000c3348
  1000c3344  b       loc_1000c3328
loc_1000c3348:
  1000c3348  mov     x19, x0
  1000c334c  mov     x0, x21
  1000c3350  bl      _objc_release
loc_1000c3354:
  1000c3354  mov     x0, x20
  1000c3358  bl      _objc_release
  1000c335c  mov     x0, x19
  1000c3360  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager clearCurrentBrick]
; address 0x1000c3364  size 92  kind objc
; ======================================================================
  1000c3364  stp     x20, x19, [sp, #-0x20]!
  1000c3368  stp     x29, x30, [sp, #0x10]
  1000c336c  add     x29, sp, #0x10
  1000c3370  adrp    x8, #0x100417000
  1000c3374  nop
  1000c3378  ldr     x1, [x8, #0xab0]
  1000c337c  bl      _objc_msgSend                            ; [self currentBrick]
  1000c3380  mov     x29, x29
  1000c3384  bl      _objc_retainAutoreleasedReturnValue
  1000c3388  mov     x19, x0
  1000c338c  adrp    x8, #0x10041a000
  1000c3390  nop
  1000c3394  ldr     x1, [x8, #0xb20]
  1000c3398  bl      _objc_msgSend                            ; [[self currentBrick] clearEnemies]
  1000c339c  mov     x0, x19
  1000c33a0  ldp     x29, x30, [sp, #0x10]
  1000c33a4  ldp     x20, x19, [sp], #0x20
  1000c33a8  b       _objc_release
  1000c33ac  mov     x20, x0
  1000c33b0  mov     x0, x19
  1000c33b4  bl      _objc_release
  1000c33b8  mov     x0, x20
  1000c33bc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager enemiesList]
; address 0x1000c33c0  size 16  kind objc
; ======================================================================
  1000c33c0  adrp    x8, #0x100420000
  1000c33c4  ldrsw   x8, [x8, #0x380]                         ; ivar offset ADBrickManager.enemyDictionary (+0x18)
  1000c33c8  ldr     x0, [x0, x8]                             ; x0 = self->enemyDictionary
  1000c33cc  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADBrickManager displayNameForEnemyWithName:]
; address 0x1000c33d0  size 136  kind objc
; ======================================================================
  1000c33d0  stp     x20, x19, [sp, #-0x20]!
  1000c33d4  stp     x29, x30, [sp, #0x10]
  1000c33d8  add     x29, sp, #0x10
  1000c33dc  adrp    x8, #0x100420000
  1000c33e0  ldrsw   x8, [x8, #0x380]                         ; ivar offset ADBrickManager.enemyDictionary (+0x18)
  1000c33e4  ldr     x0, [x0, x8]                             ; x0 = self->enemyDictionary
  1000c33e8  adrp    x8, #0x100417000
  1000c33ec  nop
  1000c33f0  ldr     x20, [x8, #0x40]
  1000c33f4  mov     x1, x20
  1000c33f8  bl      _objc_msgSend                            ; [self->enemyDictionary objectForKey:arg1]
  1000c33fc  mov     x29, x29
  1000c3400  bl      _objc_retainAutoreleasedReturnValue
  1000c3404  mov     x19, x0
  1000c3408  adrp    x2, #0x1003ba000
  1000c340c  add     x2, x2, #0x2b0                           ; @"displayName"
  1000c3410  mov     x1, x20
  1000c3414  bl      _objc_msgSend                            ; [[self->enemyDictionary objectForKey:arg1] objectForKey:@"displayName"]
  1000c3418  mov     x29, x29
  1000c341c  bl      _objc_retainAutoreleasedReturnValue
  1000c3420  mov     x20, x0
  1000c3424  mov     x0, x19
  1000c3428  bl      _objc_release
  1000c342c  mov     x0, x20
  1000c3430  ldp     x29, x30, [sp, #0x10]
  1000c3434  ldp     x20, x19, [sp], #0x20
  1000c3438  b       _objc_autoreleaseReturnValue
  1000c343c  mov     x20, x0
  1000c3440  b       loc_1000c3450
  1000c3444  mov     x20, x0
  1000c3448  mov     x0, x19
  1000c344c  bl      _objc_release
loc_1000c3450:
  1000c3450  mov     x0, x20
  1000c3454  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager dictionaryForEnemyName:]
; address 0x1000c3458  size 52  kind objc
; ======================================================================
  1000c3458  stp     x29, x30, [sp, #-0x10]!
  1000c345c  mov     x29, sp
  1000c3460  adrp    x8, #0x100420000
  1000c3464  ldrsw   x8, [x8, #0x380]                         ; ivar offset ADBrickManager.enemyDictionary (+0x18)
  1000c3468  ldr     x0, [x0, x8]                             ; x0 = self->enemyDictionary
  1000c346c  adrp    x8, #0x100417000
  1000c3470  nop
  1000c3474  ldr     x1, [x8, #0x40]
  1000c3478  bl      _objc_msgSend                            ; [self->enemyDictionary objectForKey:arg1]
  1000c347c  mov     x29, x29
  1000c3480  bl      _objc_retainAutoreleasedReturnValue
  1000c3484  ldp     x29, x30, [sp], #0x10
  1000c3488  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADBrickManager allPotentialTargets]
; address 0x1000c348c  size 344  kind objc
; ======================================================================
  1000c348c  stp     x22, x21, [sp, #-0x30]!
  1000c3490  stp     x20, x19, [sp, #0x10]
  1000c3494  stp     x29, x30, [sp, #0x20]
  1000c3498  add     x29, sp, #0x20
  1000c349c  mov     x19, x0
  1000c34a0  adrp    x8, #0x10041d000
  1000c34a4  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000c34a8  adrp    x8, #0x100416000
  1000c34ac  nop
  1000c34b0  ldr     x1, [x8, #0xac8]
  1000c34b4  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000c34b8  mov     x20, x0
  1000c34bc  adrp    x8, #0x100420000
  1000c34c0  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c34c4  ldr     x0, [x19, x8]                            ; x0 = self->bricks
  1000c34c8  adrp    x8, #0x100417000
  1000c34cc  nop
  1000c34d0  ldr     x1, [x8, #0xa30]
  1000c34d4  bl      _objc_msgSend                            ; [self->bricks lastObject]
  1000c34d8  mov     x29, x29
  1000c34dc  bl      _objc_retainAutoreleasedReturnValue
  1000c34e0  mov     x21, x0
  1000c34e4  adrp    x8, #0x100419000
  1000c34e8  nop
  1000c34ec  ldr     x1, [x8, #0xe60]
  1000c34f0  bl      _objc_msgSend                            ; [[self->bricks lastObject] enemies]
  1000c34f4  mov     x29, x29
  1000c34f8  bl      _objc_retainAutoreleasedReturnValue
  1000c34fc  mov     x22, x0
  1000c3500  adrp    x8, #0x100418000
  1000c3504  nop
  1000c3508  ldr     x1, [x8, #0xbb0]
  1000c350c  mov     x0, x20
  1000c3510  mov     x2, x22
  1000c3514  bl      _objc_msgSend                            ; [[NSMutableArray alloc] initWithArray:[[self->bricks lastObject] enemies]]
  1000c3518  mov     x20, x0
  1000c351c  mov     x0, x22
  1000c3520  bl      _objc_release
  1000c3524  mov     x0, x21
  1000c3528  bl      _objc_release
  1000c352c  adrp    x8, #0x100420000
  1000c3530  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c3534  ldr     x2, [x19, x8]                            ; x2 = self->diamonds
  1000c3538  adrp    x8, #0x10041a000
  1000c353c  nop
  1000c3540  ldr     x21, [x8, #0xb28]
  1000c3544  mov     x0, x20
  1000c3548  mov     x1, x21
  1000c354c  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] initWithArray:[[self->bricks lastObject] enemies]] addObjectsFromArray:self->diamonds]
  1000c3550  adrp    x8, #0x100420000
  1000c3554  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c3558  ldr     x0, [x19, x8]                            ; x0 = self->passerByManager
  1000c355c  adrp    x8, #0x10041a000
  1000c3560  nop
  1000c3564  ldr     x1, [x8, #0xb30]
  1000c3568  bl      _objc_msgSend                            ; [self->passerByManager allPasserBy]
  1000c356c  mov     x29, x29
  1000c3570  bl      _objc_retainAutoreleasedReturnValue
  1000c3574  mov     x22, x0
  1000c3578  mov     x0, x20
  1000c357c  mov     x1, x21
  1000c3580  mov     x2, x22
  1000c3584  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] initWithArray:[[self->bricks lastObject] enemies]] addObjectsFromArray:[self->passerByManager allPasserBy]]
  1000c3588  mov     x0, x22
  1000c358c  bl      _objc_release
  1000c3590  mov     x0, x20
  1000c3594  ldp     x29, x30, [sp, #0x20]
  1000c3598  ldp     x20, x19, [sp, #0x10]
  1000c359c  ldp     x22, x21, [sp], #0x30
  1000c35a0  b       _objc_autoreleaseReturnValue
  1000c35a4  mov     x19, x0
  1000c35a8  b       loc_1000c35d4
  1000c35ac  mov     x19, x0
  1000c35b0  b       loc_1000c35c0
  1000c35b4  mov     x19, x0
  1000c35b8  mov     x0, x22
  1000c35bc  bl      _objc_release
loc_1000c35c0:
  1000c35c0  mov     x0, x21
  1000c35c4  b       loc_1000c35d8
  1000c35c8  mov     x19, x0
  1000c35cc  mov     x0, x22
  1000c35d0  bl      _objc_release
loc_1000c35d4:
  1000c35d4  mov     x0, x20
loc_1000c35d8:
  1000c35d8  bl      _objc_release
  1000c35dc  mov     x0, x19
  1000c35e0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager numberOfActiveObjectsOnScene]
; address 0x1000c35e4  size 336  kind objc
; ======================================================================
  1000c35e4  stp     x28, x27, [sp, #-0x60]!
  1000c35e8  stp     x26, x25, [sp, #0x10]
  1000c35ec  stp     x24, x23, [sp, #0x20]
  1000c35f0  stp     x22, x21, [sp, #0x30]
  1000c35f4  stp     x20, x19, [sp, #0x40]
  1000c35f8  stp     x29, x30, [sp, #0x50]
  1000c35fc  add     x29, sp, #0x50
  1000c3600  sub     sp, sp, #0xd0
  1000c3604  adrp    x24, #0x1003b0000
  1000c3608  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000c360c  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000c3610  stur    x24, [x29, #-0x58]
  1000c3614  stp     xzr, xzr, [sp, #0x38]
  1000c3618  stp     xzr, xzr, [sp, #0x28]
  1000c361c  stp     xzr, xzr, [sp, #0x18]
  1000c3620  stp     xzr, xzr, [sp, #8]
  1000c3624  adrp    x8, #0x10041a000
  1000c3628  nop
  1000c362c  ldr     x1, [x8, #0x170]
  1000c3630  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c3634  mov     x29, x29
  1000c3638  bl      _objc_retainAutoreleasedReturnValue
  1000c363c  mov     x19, x0
  1000c3640  adrp    x8, #0x100416000
  1000c3644  nop
  1000c3648  ldr     x20, [x8, #0xe00]
  1000c364c  add     x2, sp, #8
  1000c3650  add     x3, sp, #0x48
  1000c3654  mov     w4, #0x10
  1000c3658  mov     x1, x20
  1000c365c  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000c3660  mov     x22, x0
  1000c3664  mov     w21, #0
  1000c3668  cbz     x22, loc_1000c36dc                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000c366c  ldr     x8, [sp, #0x18]
  1000c3670  ldr     x25, [x8]
  1000c3674  adrp    x8, #0x100419000
  1000c3678  add     x8, x8, #0x578                           ; &@selector(canBeShotAt)
  1000c367c  ldr     x23, [x8]
loc_1000c3680:
  1000c3680  mov     x26, #0
loc_1000c3684:
  1000c3684  ldr     x8, [sp, #0x18]
  1000c3688  ldr     x8, [x8]
  1000c368c  cmp     x8, x25
  1000c3690  b.eq    loc_1000c369c                            ; if (x8 == x25)
  1000c3694  mov     x0, x19
  1000c3698  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c369c:
  1000c369c  ldr     x8, [sp, #0x10]
  1000c36a0  ldr     x0, [x8, x26, lsl #3]
  1000c36a4  mov     x1, x23
  1000c36a8  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c36ac  add     w21, w0, w21
  1000c36b0  add     x26, x26, #1
  1000c36b4  cmp     x26, x22
  1000c36b8  b.lo    loc_1000c3684                            ; if ((x26 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000c36bc  add     x2, sp, #8
  1000c36c0  add     x3, sp, #0x48
  1000c36c4  mov     w4, #0x10
  1000c36c8  mov     x0, x19
  1000c36cc  mov     x1, x20
  1000c36d0  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000c36d4  mov     x22, x0
  1000c36d8  cbnz    x22, loc_1000c3680                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000c36dc:
  1000c36dc  mov     x0, x19
  1000c36e0  bl      _objc_release
  1000c36e4  ldur    x8, [x29, #-0x58]
  1000c36e8  sub     x8, x24, x8
  1000c36ec  cbnz    x8, loc_1000c3714                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c36f0  mov     x0, x21
  1000c36f4  sub     sp, x29, #0x50
  1000c36f8  ldp     x29, x30, [sp, #0x50]
  1000c36fc  ldp     x20, x19, [sp, #0x40]
  1000c3700  ldp     x22, x21, [sp, #0x30]
  1000c3704  ldp     x24, x23, [sp, #0x20]
  1000c3708  ldp     x26, x25, [sp, #0x10]
  1000c370c  ldp     x28, x27, [sp], #0x60
  1000c3710  ret
loc_1000c3714:
  1000c3714  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c3718:
  1000c3718  mov     x20, x0
  1000c371c  mov     x0, x19
  1000c3720  bl      _objc_release
  1000c3724  mov     x0, x20
  1000c3728  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c372c  b       loc_1000c3718
  1000c3730  b       loc_1000c3718

; ======================================================================
; -[ADBrickManager enemiesFromCurrentBrick]
; address 0x1000c3734  size 124  kind objc
; ======================================================================
  1000c3734  stp     x20, x19, [sp, #-0x20]!
  1000c3738  stp     x29, x30, [sp, #0x10]
  1000c373c  add     x29, sp, #0x10
  1000c3740  adrp    x8, #0x100420000
  1000c3744  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c3748  ldr     x0, [x0, x8]                             ; x0 = self->bricks
  1000c374c  adrp    x8, #0x100417000
  1000c3750  nop
  1000c3754  ldr     x1, [x8, #0xa30]
  1000c3758  bl      _objc_msgSend                            ; [self->bricks lastObject]
  1000c375c  mov     x29, x29
  1000c3760  bl      _objc_retainAutoreleasedReturnValue
  1000c3764  mov     x19, x0
  1000c3768  adrp    x8, #0x100419000
  1000c376c  nop
  1000c3770  ldr     x1, [x8, #0xe60]
  1000c3774  bl      _objc_msgSend                            ; [[self->bricks lastObject] enemies]
  1000c3778  mov     x29, x29
  1000c377c  bl      _objc_retainAutoreleasedReturnValue
  1000c3780  mov     x20, x0
  1000c3784  mov     x0, x19
  1000c3788  bl      _objc_release
  1000c378c  mov     x0, x20
  1000c3790  ldp     x29, x30, [sp, #0x10]
  1000c3794  ldp     x20, x19, [sp], #0x20
  1000c3798  b       _objc_autoreleaseReturnValue
  1000c379c  mov     x20, x0
  1000c37a0  mov     x0, x19
  1000c37a4  bl      _objc_release
  1000c37a8  mov     x0, x20
  1000c37ac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager update:]
; address 0x1000c37b0  size 1552  kind objc
; ======================================================================
  1000c37b0  stp     d9, d8, [sp, #-0x70]!
  1000c37b4  stp     x28, x27, [sp, #0x10]
  1000c37b8  stp     x26, x25, [sp, #0x20]
  1000c37bc  stp     x24, x23, [sp, #0x30]
  1000c37c0  stp     x22, x21, [sp, #0x40]
  1000c37c4  stp     x20, x19, [sp, #0x50]
  1000c37c8  stp     x29, x30, [sp, #0x60]
  1000c37cc  add     x29, sp, #0x60
  1000c37d0  sub     sp, sp, #0x320
  1000c37d4  mov     v8.16b, v0.16b
  1000c37d8  mov     x19, x0
  1000c37dc  adrp    x20, #0x1003b0000
  1000c37e0  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000c37e4  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000c37e8  stur    x20, [x29, #-0x68]
  1000c37ec  adrp    x8, #0x100418000
  1000c37f0  nop
  1000c37f4  ldr     x22, [x8, #0xb58]
  1000c37f8  mov     x1, x22
  1000c37fc  bl      _objc_msgSend                            ; [self playerIsDead]
  1000c3800  tbnz    w0, #0, loc_1000c3d2c                    ; if (([self playerIsDead] & 1))
  1000c3804  adrp    x8, #0x100420000
  1000c3808  ldrsw   x8, [x8, #0x3b0]                         ; ivar offset ADBrickManager.timeElapsed (+0x68)
  1000c380c  str     x8, [sp, #8]
  1000c3810  ldr     s0, [x19, x8]                            ; s0 = self->timeElapsed
  1000c3814  fadd    s0, s0, s8
  1000c3818  str     s0, [x19, x8]                            ; self->timeElapsed = (self->timeElapsed + arg1)
  1000c381c  stp     xzr, xzr, [sp, #0x108]
  1000c3820  stp     xzr, xzr, [sp, #0xf8]
  1000c3824  stp     xzr, xzr, [sp, #0xe8]
  1000c3828  stp     xzr, xzr, [sp, #0xd8]
  1000c382c  adrp    x8, #0x100420000
  1000c3830  ldrsw   x25, [x8, #0x384]                        ; ivar offset ADBrickManager.bricks (+0x20)
  1000c3834  ldr     x0, [x19, x25]                           ; x0 = self->bricks
  1000c3838  bl      _objc_retain
  1000c383c  mov     x21, x0
  1000c3840  adrp    x8, #0x100416000
  1000c3844  nop
  1000c3848  ldr     x20, [x8, #0xe00]
  1000c384c  add     x2, sp, #0xd8
  1000c3850  sub     x3, x29, #0xe8
  1000c3854  mov     w4, #0x10
  1000c3858  mov     x1, x20
  1000c385c  bl      _objc_msgSend                            ; [self->bricks countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xe8] count:16]
  1000c3860  mov     x23, x0
  1000c3864  cbz     x23, loc_1000c38d8                       ; if ([self->bricks countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xe8] count:16] == 0)
  1000c3868  ldr     x8, [sp, #0xe8]
  1000c386c  ldr     x26, [x8]
  1000c3870  adrp    x8, #0x100419000
  1000c3874  add     x8, x8, #0x68                            ; &@selector(update:)
  1000c3878  ldr     x24, [x8]
loc_1000c387c:
  1000c387c  mov     x27, #0
loc_1000c3880:
  1000c3880  ldr     x8, [sp, #0xe8]
  1000c3884  ldr     x8, [x8]
  1000c3888  cmp     x8, x26
  1000c388c  b.eq    loc_1000c3898                            ; if (x8 == x26)
  1000c3890  mov     x0, x21
  1000c3894  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->bricks)
loc_1000c3898:
  1000c3898  ldr     x8, [sp, #0xe0]
  1000c389c  ldr     x0, [x8, x27, lsl #3]
  1000c38a0  mov     x1, x24
  1000c38a4  mov     v0.16b, v8.16b
  1000c38a8  bl      _objc_msgSend                            ; [x0 update:arg1]
  1000c38ac  add     x27, x27, #1
  1000c38b0  cmp     x27, x23
  1000c38b4  b.lo    loc_1000c3880                            ; if ((x27 + 1) <u [self->bricks countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xe8] count:16])
  1000c38b8  add     x2, sp, #0xd8
  1000c38bc  sub     x3, x29, #0xe8
  1000c38c0  mov     w4, #0x10
  1000c38c4  mov     x0, x21
  1000c38c8  mov     x1, x20
  1000c38cc  bl      _objc_msgSend                            ; [self->bricks countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xe8] count:16]
  1000c38d0  mov     x23, x0
  1000c38d4  cbnz    x23, loc_1000c387c                       ; if ([self->bricks countByEnumeratingWithState:&sp[0xd8] objects:&x29[-0xe8] count:16] != 0)
loc_1000c38d8:
  1000c38d8  mov     x0, x21
  1000c38dc  bl      _objc_release
  1000c38e0  stp     xzr, xzr, [sp, #0xc8]
  1000c38e4  stp     xzr, xzr, [sp, #0xb8]
  1000c38e8  stp     xzr, xzr, [sp, #0xa8]
  1000c38ec  stp     xzr, xzr, [sp, #0x98]
  1000c38f0  adrp    x8, #0x100420000
  1000c38f4  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c38f8  ldr     x0, [x19, x8]                            ; x0 = self->diamonds
  1000c38fc  bl      _objc_retain
  1000c3900  mov     x21, x0
  1000c3904  add     x2, sp, #0x98
  1000c3908  add     x3, sp, #0x218
  1000c390c  mov     w4, #0x10
  1000c3910  mov     x1, x20
  1000c3914  bl      _objc_msgSend                            ; [self->diamonds countByEnumeratingWithState:&sp[0x98] objects:&sp[0x218] count:16]
  1000c3918  mov     x23, x0
  1000c391c  cbz     x23, loc_1000c3990                       ; if ([self->diamonds countByEnumeratingWithState:&sp[0x98] objects:&sp[0x218] count:16] == 0)
  1000c3920  ldr     x8, [sp, #0xa8]
  1000c3924  ldr     x26, [x8]
  1000c3928  adrp    x8, #0x100419000
  1000c392c  add     x8, x8, #0x68                            ; &@selector(update:)
  1000c3930  ldr     x24, [x8]
loc_1000c3934:
  1000c3934  mov     x27, #0
loc_1000c3938:
  1000c3938  ldr     x8, [sp, #0xa8]
  1000c393c  ldr     x8, [x8]
  1000c3940  cmp     x8, x26
  1000c3944  b.eq    loc_1000c3950                            ; if (x8 == x26)
  1000c3948  mov     x0, x21
  1000c394c  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->diamonds)
loc_1000c3950:
  1000c3950  ldr     x8, [sp, #0xa0]
  1000c3954  ldr     x0, [x8, x27, lsl #3]
  1000c3958  mov     x1, x24
  1000c395c  mov     v0.16b, v8.16b
  1000c3960  bl      _objc_msgSend                            ; [x0 update:arg1]
  1000c3964  add     x27, x27, #1
  1000c3968  cmp     x27, x23
  1000c396c  b.lo    loc_1000c3938                            ; if ((x27 + 1) <u [self->diamonds countByEnumeratingWithState:&sp[0x98] objects:&sp[0x218] count:16])
  1000c3970  add     x2, sp, #0x98
  1000c3974  add     x3, sp, #0x218
  1000c3978  mov     w4, #0x10
  1000c397c  mov     x0, x21
  1000c3980  mov     x1, x20
  1000c3984  bl      _objc_msgSend                            ; [self->diamonds countByEnumeratingWithState:&sp[0x98] objects:&sp[0x218] count:16]
  1000c3988  mov     x23, x0
  1000c398c  cbnz    x23, loc_1000c3934                       ; if ([self->diamonds countByEnumeratingWithState:&sp[0x98] objects:&sp[0x218] count:16] != 0)
loc_1000c3990:
  1000c3990  mov     x0, x21
  1000c3994  bl      _objc_release
  1000c3998  adrp    x8, #0x100420000
  1000c399c  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c39a0  ldr     x0, [x19, x8]                            ; x0 = self->passerByManager
  1000c39a4  adrp    x8, #0x100419000
  1000c39a8  nop
  1000c39ac  ldr     x23, [x8, #0x68]
  1000c39b0  mov     x1, x23
  1000c39b4  mov     v0.16b, v8.16b
  1000c39b8  bl      _objc_msgSend                            ; [self->passerByManager update:arg1]
  1000c39bc  adrp    x8, #0x100419000
  1000c39c0  nop
  1000c39c4  ldr     x24, [x8, #0x348]
  1000c39c8  mov     x0, x19
  1000c39cc  mov     x1, x24
  1000c39d0  bl      _objc_msgSend                            ; [self mode]
  1000c39d4  cmp     w0, #1
  1000c39d8  b.ne    loc_1000c3a50                            ; if ([self mode] != 1)
  1000c39dc  adrp    x8, #0x100420000
  1000c39e0  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c39e4  ldr     x0, [x19, x8]                            ; x0 = self->powerUpManager
  1000c39e8  mov     x1, x23
  1000c39ec  mov     v0.16b, v8.16b
  1000c39f0  bl      _objc_msgSend                            ; [self->powerUpManager update:arg1]
  1000c39f4  adrp    x8, #0x100420000
  1000c39f8  ldrsw   x21, [x8, #0x3bc]                        ; ivar offset ADBrickManager.nextDiamondTime (+0x4c)
  1000c39fc  ldr     s0, [x19, x21]                           ; s0 = self->nextDiamondTime
  1000c3a00  fcmp    s0, #0.0
  1000c3a04  b.pl    loc_1000c3a34                            ; if (self->nextDiamondTime >= (or unordered) 0.0)
  1000c3a08  adrp    x8, #0x10041a000
  1000c3a0c  nop
  1000c3a10  ldr     x1, [x8, #0xa78]
  1000c3a14  mov     x0, x19
  1000c3a18  bl      _objc_msgSend                            ; [self randomizeNextDiamondTime]
  1000c3a1c  adrp    x8, #0x10041a000
  1000c3a20  nop
  1000c3a24  ldr     x1, [x8, #0xb38]
  1000c3a28  mov     x0, x19
  1000c3a2c  bl      _objc_msgSend                            ; [self addDiamond]
  1000c3a30  b       loc_1000c3a50
loc_1000c3a34:
  1000c3a34  mov     x0, x19
  1000c3a38  mov     x1, x22
  1000c3a3c  bl      _objc_msgSend                            ; [self playerIsDead]
  1000c3a40  tbnz    w0, #0, loc_1000c3a50                    ; if (([self playerIsDead] & 1))
  1000c3a44  ldr     s0, [x19, x21]                           ; s0 = self->nextDiamondTime
  1000c3a48  fsub    s0, s0, s8
  1000c3a4c  str     s0, [x19, x21]                           ; self->nextDiamondTime = (self->nextDiamondTime - arg1)
loc_1000c3a50:
  1000c3a50  adrp    x8, #0x100420000
  1000c3a54  ldrsw   x27, [x8, #0x3c0]                        ; ivar offset ADBrickManager.minimumSquaredDistance (+0x48)
  1000c3a58  mov     w8, #0x7f800000
  1000c3a5c  str     w8, [x19, x27]                           ; self->minimumSquaredDistance = 0x7f800000
  1000c3a60  stp     xzr, xzr, [sp, #0x88]
  1000c3a64  stp     xzr, xzr, [sp, #0x78]
  1000c3a68  stp     xzr, xzr, [sp, #0x68]
  1000c3a6c  stp     xzr, xzr, [sp, #0x58]
  1000c3a70  ldr     x0, [x19, x25]                           ; x0 = self->bricks
  1000c3a74  adrp    x8, #0x100417000
  1000c3a78  nop
  1000c3a7c  ldr     x1, [x8, #0xa30]
  1000c3a80  bl      _objc_msgSend                            ; [self->bricks lastObject]
  1000c3a84  mov     x29, x29
  1000c3a88  bl      _objc_retainAutoreleasedReturnValue
  1000c3a8c  mov     x23, x0
  1000c3a90  adrp    x8, #0x100419000
  1000c3a94  nop
  1000c3a98  ldr     x1, [x8, #0xe60]
  1000c3a9c  bl      _objc_msgSend                            ; [[self->bricks lastObject] enemies]
  1000c3aa0  mov     x29, x29
  1000c3aa4  bl      _objc_retainAutoreleasedReturnValue
  1000c3aa8  mov     x22, x0
  1000c3aac  mov     x0, x23
  1000c3ab0  bl      _objc_release
  1000c3ab4  add     x2, sp, #0x58
  1000c3ab8  add     x3, sp, #0x198
  1000c3abc  mov     w4, #0x10
  1000c3ac0  mov     x0, x22
  1000c3ac4  mov     x1, x20
  1000c3ac8  bl      _objc_msgSend                            ; [[[self->bricks lastObject] enemies] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x198] count:16]
  1000c3acc  mov     x23, x0
  1000c3ad0  str     x24, [sp, #0x10]
  1000c3ad4  cbz     x23, loc_1000c3b80                       ; if ([[[self->bricks lastObject] enemies] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x198] count:16] == 0)
  1000c3ad8  ldr     x8, [sp, #0x68]
  1000c3adc  ldr     x28, [x8]
  1000c3ae0  adrp    x8, #0x100419000
  1000c3ae4  nop
  1000c3ae8  ldr     x24, [x8, #0x578]
  1000c3aec  adrp    x8, #0x100417000
  1000c3af0  add     x8, x8, #0x30                            ; &@selector(squaredDistance)
  1000c3af4  ldr     x25, [x8]
loc_1000c3af8:
  1000c3af8  mov     x21, #0
loc_1000c3afc:
  1000c3afc  ldr     x8, [sp, #0x68]
  1000c3b00  ldr     x8, [x8]
  1000c3b04  cmp     x8, x28
  1000c3b08  b.eq    loc_1000c3b14                            ; if (x8 == x28)
  1000c3b0c  mov     x0, x22
  1000c3b10  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[self->bricks lastObject] enemies])
loc_1000c3b14:
  1000c3b14  ldr     x8, [sp, #0x60]
  1000c3b18  ldr     x26, [x8, x21, lsl #3]
  1000c3b1c  mov     x0, x26
  1000c3b20  mov     x1, x24
  1000c3b24  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c3b28  cbz     w0, loc_1000c3b54                        ; if ([x0 canBeShotAt] == 0)
  1000c3b2c  mov     x0, x26
  1000c3b30  mov     x1, x25
  1000c3b34  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c3b38  ldr     s1, [x19, x27]                           ; s1 = self->minimumSquaredDistance
  1000c3b3c  fcmp    s0, s1
  1000c3b40  b.pl    loc_1000c3b54                            ; if ([x0 squaredDistance] >= (or unordered) self->minimumSquaredDistance)
  1000c3b44  mov     x0, x26
  1000c3b48  mov     x1, x25
  1000c3b4c  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c3b50  str     s0, [x19, x27]                           ; self->minimumSquaredDistance = [x0 squaredDistance]
loc_1000c3b54:
  1000c3b54  add     x21, x21, #1
  1000c3b58  cmp     x21, x23
  1000c3b5c  b.lo    loc_1000c3afc                            ; if ((x21 + 1) <u [[[self->bricks lastObject] enemies] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x198] count:16])
  1000c3b60  add     x2, sp, #0x58
  1000c3b64  add     x3, sp, #0x198
  1000c3b68  mov     w4, #0x10
  1000c3b6c  mov     x0, x22
  1000c3b70  mov     x1, x20
  1000c3b74  bl      _objc_msgSend                            ; [[[self->bricks lastObject] enemies] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x198] count:16]
  1000c3b78  mov     x23, x0
  1000c3b7c  cbnz    x23, loc_1000c3af8                       ; if ([[[self->bricks lastObject] enemies] countByEnumeratingWithState:&sp[0x58] objects:&sp[0x198] count:16] != 0)
loc_1000c3b80:
  1000c3b80  mov     x0, x22
  1000c3b84  bl      _objc_release
  1000c3b88  adrp    x8, #0x100420000
  1000c3b8c  ldrsw   x26, [x8, #0x3c4]                        ; ivar offset ADBrickManager.challengeIsOver (+0x6d)
  1000c3b90  ldrb    w8, [x19, x26]                           ; w8 = self->challengeIsOver
  1000c3b94  cbz     w8, loc_1000c3cd0                        ; if (self->challengeIsOver == 0)
  1000c3b98  stp     xzr, xzr, [sp, #0x48]
  1000c3b9c  stp     xzr, xzr, [sp, #0x38]
  1000c3ba0  stp     xzr, xzr, [sp, #0x28]
  1000c3ba4  stp     xzr, xzr, [sp, #0x18]
  1000c3ba8  adrp    x8, #0x10041a000
  1000c3bac  nop
  1000c3bb0  ldr     x1, [x8, #0x170]
  1000c3bb4  mov     x0, x19
  1000c3bb8  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c3bbc  mov     x29, x29
  1000c3bc0  bl      _objc_retainAutoreleasedReturnValue
  1000c3bc4  mov     x22, x0
  1000c3bc8  add     x2, sp, #0x18
  1000c3bcc  add     x3, sp, #0x118
  1000c3bd0  mov     w4, #0x10
  1000c3bd4  mov     x1, x20
  1000c3bd8  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x118] count:16]
  1000c3bdc  mov     x23, x0
  1000c3be0  cbz     x23, loc_1000c3c8c                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x118] count:16] == 0)
  1000c3be4  ldr     x8, [sp, #0x28]
  1000c3be8  ldr     x27, [x8]
  1000c3bec  adrp    x8, #0x100416000
  1000c3bf0  add     x8, x8, #0xc60                           ; &@selector(state)
  1000c3bf4  ldr     x24, [x8]
  1000c3bf8  mov     w28, #1
loc_1000c3bfc:
  1000c3bfc  mov     x21, #0
loc_1000c3c00:
  1000c3c00  ldr     x8, [sp, #0x28]
  1000c3c04  ldr     x8, [x8]
  1000c3c08  cmp     x8, x27
  1000c3c0c  b.eq    loc_1000c3c18                            ; if (x8 == x27)
  1000c3c10  mov     x0, x22
  1000c3c14  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c3c18:
  1000c3c18  ldr     x8, [sp, #0x20]
  1000c3c1c  ldr     x25, [x8, x21, lsl #3]
  1000c3c20  mov     x0, x25
  1000c3c24  mov     x1, x24
  1000c3c28  bl      _objc_msgSend                            ; [x0 state]
  1000c3c2c  cmp     w0, #5
  1000c3c30  b.eq    loc_1000c3c48                            ; if ([x0 state] == 5)
  1000c3c34  mov     x0, x25
  1000c3c38  mov     x1, x24
  1000c3c3c  bl      _objc_msgSend                            ; [x0 state]
  1000c3c40  cmp     w0, #0x3e7
  1000c3c44  b.ne    loc_1000c3c4c                            ; if ([x0 state] != 999)
loc_1000c3c48:
  1000c3c48  mov     w28, #0
loc_1000c3c4c:
  1000c3c4c  add     x21, x21, #1
  1000c3c50  cmp     x21, x23
  1000c3c54  b.lo    loc_1000c3c00                            ; if ((x21 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x118] count:16])
  1000c3c58  add     x2, sp, #0x18
  1000c3c5c  add     x3, sp, #0x118
  1000c3c60  mov     w4, #0x10
  1000c3c64  mov     x0, x22
  1000c3c68  mov     x1, x20
  1000c3c6c  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x118] count:16]
  1000c3c70  mov     x23, x0
  1000c3c74  cbnz    x23, loc_1000c3bfc                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x118] count:16] != 0)
  1000c3c78  mov     x0, x22
  1000c3c7c  bl      _objc_release
  1000c3c80  and     w8, w28, #1
  1000c3c84  tbnz    w8, #0, loc_1000c3c94                    ; if (((one of {0, 1} & 1) & 1))
  1000c3c88  b       loc_1000c3cd0
loc_1000c3c8c:
  1000c3c8c  mov     x0, x22
  1000c3c90  bl      _objc_release
loc_1000c3c94:
  1000c3c94  adrp    x8, #0x100417000
  1000c3c98  nop
  1000c3c9c  ldr     x1, [x8, #0xac0]
  1000c3ca0  mov     x0, x19
  1000c3ca4  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c3ca8  mov     x29, x29
  1000c3cac  bl      _objc_retainAutoreleasedReturnValue
  1000c3cb0  mov     x20, x0
  1000c3cb4  adrp    x8, #0x100419000
  1000c3cb8  nop
  1000c3cbc  ldr     x1, [x8, #0x20]
  1000c3cc0  bl      _objc_msgSend                            ; [[self gameplayViewController] goToScoreScreen]
  1000c3cc4  mov     x0, x20
  1000c3cc8  bl      _objc_release
  1000c3ccc  strb    wzr, [x19, x26]                          ; self->challengeIsOver = 0
loc_1000c3cd0:
  1000c3cd0  mov     x0, x19
  1000c3cd4  ldr     x1, [sp, #0x10]
  1000c3cd8  bl      _objc_msgSend                            ; [self mode]
  1000c3cdc  cmp     w0, #4
  1000c3ce0  adrp    x20, #0x1003b0000
  1000c3ce4  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000c3ce8  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000c3cec  b.ne    loc_1000c3d2c                            ; if ([self mode] != 4)
  1000c3cf0  ldr     x8, [sp, #8]
  1000c3cf4  ldr     s0, [x19, x8]                            ; s0 = self->timeElapsed
  1000c3cf8  adrp    x8, #0x100181000
  1000c3cfc  ldr     s1, [x8, #0xd74]                         ; s1 = 52.0
  1000c3d00  fcmp    s0, s1
  1000c3d04  b.le    loc_1000c3d2c                            ; if (self->timeElapsed <= (or unordered) 52)
  1000c3d08  adrp    x8, #0x100420000
  1000c3d0c  ldrsw   x8, [x8, #0x3b4]                         ; ivar offset ADBrickManager.startedMainMenuMusic (+0x6c)
  1000c3d10  ldrb    w8, [x19, x8]                            ; w8 = self->startedMainMenuMusic
  1000c3d14  cbnz    w8, loc_1000c3d2c                        ; if (self->startedMainMenuMusic != 0)
  1000c3d18  adrp    x8, #0x10041a000
  1000c3d1c  nop
  1000c3d20  ldr     x1, [x8, #0xb40]
  1000c3d24  mov     x0, x19
  1000c3d28  bl      _objc_msgSend                            ; [self startMainMenuMusic]
loc_1000c3d2c:
  1000c3d2c  ldur    x8, [x29, #-0x68]
  1000c3d30  sub     x8, x20, x8
  1000c3d34  cbnz    x8, loc_1000c3d5c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c3d38  sub     sp, x29, #0x60
  1000c3d3c  ldp     x29, x30, [sp, #0x60]
  1000c3d40  ldp     x20, x19, [sp, #0x50]
  1000c3d44  ldp     x22, x21, [sp, #0x40]
  1000c3d48  ldp     x24, x23, [sp, #0x30]
  1000c3d4c  ldp     x26, x25, [sp, #0x20]
  1000c3d50  ldp     x28, x27, [sp, #0x10]
  1000c3d54  ldp     d9, d8, [sp], #0x70
  1000c3d58  ret
loc_1000c3d5c:
  1000c3d5c  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c3d60  b       loc_1000c3d74
  1000c3d64  b       loc_1000c3d68
loc_1000c3d68:
  1000c3d68  mov     x19, x0
  1000c3d6c  mov     x0, x21
  1000c3d70  b       loc_1000c3d7c
loc_1000c3d74:
  1000c3d74  mov     x19, x0
  1000c3d78  mov     x0, x22
loc_1000c3d7c:
  1000c3d7c  bl      _objc_release
  1000c3d80  mov     x0, x19
  1000c3d84  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c3d88  b       loc_1000c3d68
  1000c3d8c  b       loc_1000c3d68
  1000c3d90  b       loc_1000c3d74
  1000c3d94  b       loc_1000c3d74
  1000c3d98  b       loc_1000c3d68
  1000c3d9c  b       loc_1000c3d68
  1000c3da0  mov     x19, x0
  1000c3da4  mov     x0, x23
  1000c3da8  b       loc_1000c3d7c
  1000c3dac  b       loc_1000c3d74
  1000c3db0  b       loc_1000c3d74
  1000c3db4  mov     x19, x0
  1000c3db8  mov     x0, x20
  1000c3dbc  b       loc_1000c3d7c

; ======================================================================
; -[ADBrickManager startMainMenuMusic]
; address 0x1000c3dc0  size 184  kind objc
; ======================================================================
  1000c3dc0  stp     x22, x21, [sp, #-0x30]!
  1000c3dc4  stp     x20, x19, [sp, #0x10]
  1000c3dc8  stp     x29, x30, [sp, #0x20]
  1000c3dcc  add     x29, sp, #0x20
  1000c3dd0  adrp    x8, #0x100420000
  1000c3dd4  ldrsw   x8, [x8, #0x3b4]                         ; ivar offset ADBrickManager.startedMainMenuMusic (+0x6c)
  1000c3dd8  mov     w9, #1
  1000c3ddc  strb    w9, [x0, x8]                             ; self->startedMainMenuMusic = 1
  1000c3de0  adrp    x8, #0x10041d000
  1000c3de4  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  1000c3de8  adrp    x8, #0x100416000
  1000c3dec  nop
  1000c3df0  ldr     x1, [x8, #0xb28]
  1000c3df4  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  1000c3df8  mov     x29, x29
  1000c3dfc  bl      _objc_retainAutoreleasedReturnValue
  1000c3e00  mov     x19, x0
  1000c3e04  adrp    x8, #0x100416000
  1000c3e08  nop
  1000c3e0c  ldr     x1, [x8, #0xc18]
  1000c3e10  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] delegate]
  1000c3e14  mov     x29, x29
  1000c3e18  bl      _objc_retainAutoreleasedReturnValue
  1000c3e1c  mov     x20, x0
  1000c3e20  adrp    x8, #0x100419000
  1000c3e24  nop
  1000c3e28  ldr     x1, [x8, #0xd88]
  1000c3e2c  adrp    x2, #0x1003bf000
  1000c3e30  add     x2, x2, #0x870                           ; @"main_menu_theme"
  1000c3e34  bl      _objc_msgSend                            ; [[[UIApplication sharedApplication] delegate] startMenuMusic:@"main_menu_theme"]
  1000c3e38  mov     x0, x20
  1000c3e3c  bl      _objc_release
  1000c3e40  mov     x0, x19
  1000c3e44  ldp     x29, x30, [sp, #0x20]
  1000c3e48  ldp     x20, x19, [sp, #0x10]
  1000c3e4c  ldp     x22, x21, [sp], #0x30
  1000c3e50  b       _objc_release
  1000c3e54  mov     x21, x0
  1000c3e58  b       loc_1000c3e68
  1000c3e5c  mov     x21, x0
  1000c3e60  mov     x0, x20
  1000c3e64  bl      _objc_release
loc_1000c3e68:
  1000c3e68  mov     x0, x19
  1000c3e6c  bl      _objc_release
  1000c3e70  mov     x0, x21
  1000c3e74  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager minimumSquaredDistance]
; address 0x1000c3e78  size 16  kind objc
; ======================================================================
  1000c3e78  adrp    x8, #0x100420000
  1000c3e7c  ldrsw   x8, [x8, #0x3c0]                         ; ivar offset ADBrickManager.minimumSquaredDistance (+0x48)
  1000c3e80  ldr     s0, [x0, x8]                             ; s0 = self->minimumSquaredDistance
  1000c3e84  ret

; ======================================================================
; -[ADBrickManager blowEnemiesAway:]
; address 0x1000c3e88  size 372  kind objc
; ======================================================================
  1000c3e88  stp     d9, d8, [sp, #-0x70]!
  1000c3e8c  stp     x28, x27, [sp, #0x10]
  1000c3e90  stp     x26, x25, [sp, #0x20]
  1000c3e94  stp     x24, x23, [sp, #0x30]
  1000c3e98  stp     x22, x21, [sp, #0x40]
  1000c3e9c  stp     x20, x19, [sp, #0x50]
  1000c3ea0  stp     x29, x30, [sp, #0x60]
  1000c3ea4  add     x29, sp, #0x60
  1000c3ea8  sub     sp, sp, #0xd0
  1000c3eac  mov     v8.16b, v0.16b
  1000c3eb0  adrp    x25, #0x1003b0000
  1000c3eb4  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000c3eb8  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000c3ebc  stur    x25, [x29, #-0x68]
  1000c3ec0  stp     xzr, xzr, [sp, #0x38]
  1000c3ec4  stp     xzr, xzr, [sp, #0x28]
  1000c3ec8  stp     xzr, xzr, [sp, #0x18]
  1000c3ecc  stp     xzr, xzr, [sp, #8]
  1000c3ed0  adrp    x8, #0x10041a000
  1000c3ed4  nop
  1000c3ed8  ldr     x1, [x8, #0x170]
  1000c3edc  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c3ee0  mov     x29, x29
  1000c3ee4  bl      _objc_retainAutoreleasedReturnValue
  1000c3ee8  mov     x19, x0
  1000c3eec  adrp    x8, #0x100416000
  1000c3ef0  nop
  1000c3ef4  ldr     x20, [x8, #0xe00]
  1000c3ef8  add     x2, sp, #8
  1000c3efc  add     x3, sp, #0x48
  1000c3f00  mov     w4, #0x10
  1000c3f04  mov     x1, x20
  1000c3f08  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000c3f0c  mov     x21, x0
  1000c3f10  cbz     x21, loc_1000c3fa4                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000c3f14  ldr     x8, [sp, #0x18]
  1000c3f18  ldr     x26, [x8]
  1000c3f1c  adrp    x8, #0x100419000
  1000c3f20  nop
  1000c3f24  ldr     x22, [x8, #0x578]
  1000c3f28  adrp    x8, #0x10041a000
  1000c3f2c  add     x8, x8, #0xb48                           ; &@selector(blowAway:)
  1000c3f30  ldr     x23, [x8]
loc_1000c3f34:
  1000c3f34  mov     x27, #0
loc_1000c3f38:
  1000c3f38  ldr     x8, [sp, #0x18]
  1000c3f3c  ldr     x8, [x8]
  1000c3f40  cmp     x8, x26
  1000c3f44  b.eq    loc_1000c3f50                            ; if (x8 == x26)
  1000c3f48  mov     x0, x19
  1000c3f4c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c3f50:
  1000c3f50  ldr     x8, [sp, #0x10]
  1000c3f54  ldr     x24, [x8, x27, lsl #3]
  1000c3f58  mov     x0, x24
  1000c3f5c  mov     x1, x22
  1000c3f60  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c3f64  cbz     w0, loc_1000c3f78                        ; if ([x0 canBeShotAt] == 0)
  1000c3f68  mov     x0, x24
  1000c3f6c  mov     x1, x23
  1000c3f70  mov     v0.16b, v8.16b
  1000c3f74  bl      _objc_msgSend                            ; [x0 blowAway:arg1]
loc_1000c3f78:
  1000c3f78  add     x27, x27, #1
  1000c3f7c  cmp     x27, x21
  1000c3f80  b.lo    loc_1000c3f38                            ; if ((x27 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000c3f84  add     x2, sp, #8
  1000c3f88  add     x3, sp, #0x48
  1000c3f8c  mov     w4, #0x10
  1000c3f90  mov     x0, x19
  1000c3f94  mov     x1, x20
  1000c3f98  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000c3f9c  mov     x21, x0
  1000c3fa0  cbnz    x21, loc_1000c3f34                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000c3fa4:
  1000c3fa4  mov     x0, x19
  1000c3fa8  bl      _objc_release
  1000c3fac  ldur    x8, [x29, #-0x68]
  1000c3fb0  sub     x8, x25, x8
  1000c3fb4  cbnz    x8, loc_1000c3fdc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c3fb8  sub     sp, x29, #0x60
  1000c3fbc  ldp     x29, x30, [sp, #0x60]
  1000c3fc0  ldp     x20, x19, [sp, #0x50]
  1000c3fc4  ldp     x22, x21, [sp, #0x40]
  1000c3fc8  ldp     x24, x23, [sp, #0x30]
  1000c3fcc  ldp     x26, x25, [sp, #0x20]
  1000c3fd0  ldp     x28, x27, [sp, #0x10]
  1000c3fd4  ldp     d9, d8, [sp], #0x70
  1000c3fd8  ret
loc_1000c3fdc:
  1000c3fdc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c3fe0:
  1000c3fe0  mov     x20, x0
  1000c3fe4  mov     x0, x19
  1000c3fe8  bl      _objc_release
  1000c3fec  mov     x0, x20
  1000c3ff0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c3ff4  b       loc_1000c3fe0
  1000c3ff8  b       loc_1000c3fe0

; ======================================================================
; -[ADBrickManager closestEnemy]
; address 0x1000c3ffc  size 456  kind objc
; ======================================================================
  1000c3ffc  stp     d9, d8, [sp, #-0x70]!
  1000c4000  stp     x28, x27, [sp, #0x10]
  1000c4004  stp     x26, x25, [sp, #0x20]
  1000c4008  stp     x24, x23, [sp, #0x30]
  1000c400c  stp     x22, x21, [sp, #0x40]
  1000c4010  stp     x20, x19, [sp, #0x50]
  1000c4014  stp     x29, x30, [sp, #0x60]
  1000c4018  add     x29, sp, #0x60
  1000c401c  sub     sp, sp, #0xd0
  1000c4020  adrp    x26, #0x1003b0000
  1000c4024  ldr     x26, [x26, #0x1d8]                       ; ___stack_chk_guard
  1000c4028  ldr     x26, [x26]                               ; x26 = ___stack_chk_guard[+0x0]
  1000c402c  stur    x26, [x29, #-0x68]
  1000c4030  stp     xzr, xzr, [sp, #0x38]
  1000c4034  stp     xzr, xzr, [sp, #0x28]
  1000c4038  stp     xzr, xzr, [sp, #0x18]
  1000c403c  stp     xzr, xzr, [sp, #8]
  1000c4040  adrp    x8, #0x10041a000
  1000c4044  nop
  1000c4048  ldr     x1, [x8, #0x170]
  1000c404c  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c4050  mov     x29, x29
  1000c4054  bl      _objc_retainAutoreleasedReturnValue
  1000c4058  mov     x19, x0
  1000c405c  adrp    x8, #0x100416000
  1000c4060  nop
  1000c4064  ldr     x21, [x8, #0xe00]
  1000c4068  add     x2, sp, #8
  1000c406c  add     x3, sp, #0x48
  1000c4070  mov     w4, #0x10
  1000c4074  mov     x1, x21
  1000c4078  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000c407c  mov     x23, x0
  1000c4080  mov     x20, #0
  1000c4084  cbz     x23, loc_1000c414c                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000c4088  ldr     x8, [sp, #0x18]
  1000c408c  ldr     x27, [x8]
  1000c4090  adrp    x8, #0x100419000
  1000c4094  nop
  1000c4098  ldr     x22, [x8, #0x578]
  1000c409c  adrp    x8, #0x100417000
  1000c40a0  nop
  1000c40a4  ldr     x24, [x8, #0x30]
  1000c40a8  adrp    x8, #0x100181000
  1000c40ac  ldr     s8, [x8, #0xd18]                         ; s8 = inf
loc_1000c40b0:
  1000c40b0  mov     x28, #0
loc_1000c40b4:
  1000c40b4  ldr     x8, [sp, #0x18]
  1000c40b8  ldr     x8, [x8]
  1000c40bc  cmp     x8, x27
  1000c40c0  b.eq    loc_1000c40cc                            ; if (x8 == x27)
  1000c40c4  mov     x0, x19
  1000c40c8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c40cc:
  1000c40cc  ldr     x8, [sp, #0x10]
  1000c40d0  ldr     x25, [x8, x28, lsl #3]
  1000c40d4  mov     x0, x25
  1000c40d8  mov     x1, x22
  1000c40dc  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c40e0  cbz     w0, loc_1000c4120                        ; if ([x0 canBeShotAt] == 0)
  1000c40e4  mov     x0, x25
  1000c40e8  mov     x1, x24
  1000c40ec  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c40f0  fcmp    s0, s8
  1000c40f4  b.pl    loc_1000c4120                            ; if ([x0 squaredDistance] >= (or unordered) s8)
  1000c40f8  mov     x0, x25
  1000c40fc  mov     x1, x24
  1000c4100  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c4104  mov     v8.16b, v0.16b
  1000c4108  mov     x0, x25
  1000c410c  bl      _objc_retain
  1000c4110  mov     x25, x0
  1000c4114  mov     x0, x20
  1000c4118  bl      _objc_release
  1000c411c  mov     x20, x25
loc_1000c4120:
  1000c4120  add     x28, x28, #1
  1000c4124  cmp     x28, x23
  1000c4128  b.lo    loc_1000c40b4                            ; if ((x28 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000c412c  add     x2, sp, #8
  1000c4130  add     x3, sp, #0x48
  1000c4134  mov     w4, #0x10
  1000c4138  mov     x0, x19
  1000c413c  mov     x1, x21
  1000c4140  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000c4144  mov     x23, x0
  1000c4148  cbnz    x23, loc_1000c40b0                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000c414c:
  1000c414c  mov     x0, x19
  1000c4150  bl      _objc_release
  1000c4154  ldur    x8, [x29, #-0x68]
  1000c4158  sub     x8, x26, x8
  1000c415c  cbnz    x8, loc_1000c4188                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c4160  mov     x0, x20
  1000c4164  sub     sp, x29, #0x60
  1000c4168  ldp     x29, x30, [sp, #0x60]
  1000c416c  ldp     x20, x19, [sp, #0x50]
  1000c4170  ldp     x22, x21, [sp, #0x40]
  1000c4174  ldp     x24, x23, [sp, #0x30]
  1000c4178  ldp     x26, x25, [sp, #0x20]
  1000c417c  ldp     x28, x27, [sp, #0x10]
  1000c4180  ldp     d9, d8, [sp], #0x70
  1000c4184  b       _objc_autoreleaseReturnValue
loc_1000c4188:
  1000c4188  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c418c  mov     x21, x0
loc_1000c4190:
  1000c4190  mov     x0, x19
  1000c4194  bl      _objc_release
  1000c4198  mov     x0, x20
  1000c419c  bl      _objc_release
loc_1000c41a0:
  1000c41a0  mov     x0, x21
  1000c41a4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c41a8  mov     x21, x0
  1000c41ac  b       loc_1000c4190
  1000c41b0  mov     x21, x0
  1000c41b4  b       loc_1000c41a0
  1000c41b8  mov     x21, x0
  1000c41bc  mov     x20, #0
  1000c41c0  b       loc_1000c4190

; ======================================================================
; -[ADBrickManager calculateHitEnemiesWithWeapon:FromAngle:]
; address 0x1000c41c4  size 2420  kind objc
; ======================================================================
  1000c41c4  stp     d15, d14, [sp, #-0xa0]!
  1000c41c8  stp     d13, d12, [sp, #0x10]
  1000c41cc  stp     d11, d10, [sp, #0x20]
  1000c41d0  stp     d9, d8, [sp, #0x30]
  1000c41d4  stp     x28, x27, [sp, #0x40]
  1000c41d8  stp     x26, x25, [sp, #0x50]
  1000c41dc  stp     x24, x23, [sp, #0x60]
  1000c41e0  stp     x22, x21, [sp, #0x70]
  1000c41e4  stp     x20, x19, [sp, #0x80]
  1000c41e8  stp     x29, x30, [sp, #0x90]
  1000c41ec  add     x29, sp, #0x90
  1000c41f0  sub     sp, sp, #0x210
  1000c41f4  mov     v8.16b, v0.16b
  1000c41f8  str     x0, [sp, #0xf0]
  1000c41fc  adrp    x8, #0x1003b0000
  1000c4200  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000c4204  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000c4208  stur    x8, [x29, #-0x98]
  1000c420c  mov     x0, x2
  1000c4210  bl      _objc_retain
  1000c4214  mov     x19, x0
  1000c4218  adrp    x8, #0x10041d000
  1000c421c  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000c4220  adrp    x8, #0x100416000
  1000c4224  nop
  1000c4228  ldr     x1, [x8, #0xac8]
  1000c422c  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000c4230  adrp    x8, #0x100416000
  1000c4234  nop
  1000c4238  ldr     x1, [x8, #0xab8]
  1000c423c  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000c4240  mov     x26, x0
  1000c4244  str     x26, [sp, #0x80]
  1000c4248  stp     xzr, xzr, [sp, #0x178]
  1000c424c  stp     xzr, xzr, [sp, #0x168]
  1000c4250  stp     xzr, xzr, [sp, #0x158]
  1000c4254  stp     xzr, xzr, [sp, #0x148]
  1000c4258  adrp    x8, #0x10041a000
  1000c425c  nop
  1000c4260  ldr     x1, [x8, #0x170]
  1000c4264  ldr     x0, [sp, #0xf0]
  1000c4268  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c426c  mov     x29, x29
  1000c4270  bl      _objc_retainAutoreleasedReturnValue
  1000c4274  mov     x28, x0
  1000c4278  str     x28, [sp, #0x78]
  1000c427c  adrp    x8, #0x100416000
  1000c4280  nop
  1000c4284  ldr     x1, [x8, #0xe00]
  1000c4288  str     x1, [sp, #0x48]
  1000c428c  add     x2, sp, #0x148
  1000c4290  add     x3, sp, #0x188
  1000c4294  mov     w4, #0x10
  1000c4298  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x188] count:16]
  1000c429c  mov     x24, x0
  1000c42a0  cbz     x24, loc_1000c4a00                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x188] count:16] == 0)
  1000c42a4  fcvt    d0, s8
  1000c42a8  nop
  1000c42ac  nop
  1000c42b0  mov     x30, #-0x49f40001
  1000c42b4  movk    x30, #0x60b7
  1000c42b8  ldr     d11, #0x1001819e8                        ; d11 = 3.14159265
  1000c42bc  mov     w9, #0x168
  1000c42c0  nop
  1000c42c4  nop
  1000c42c8  ldr     s14, #0x100181d18                        ; s14 = inf
  1000c42cc  ldr     s12, #0x100181a88                        ; s12 = 360.0
  1000c42d0  fadd    d0, d0, d11
  1000c42d4  ldr     d13, #0x1001819f0                        ; d13 = 180.0
  1000c42d8  fmul    d0, d0, d13
  1000c42dc  fdiv    d0, d0, d11
  1000c42e0  fcvtzs  w8, d0
  1000c42e4  adrp    x10, #0x100419000
  1000c42e8  add     x10, x10, #0x578                         ; &@selector(canBeShotAt)
  1000c42ec  adrp    x11, #0x10041a000
  1000c42f0  add     x11, x11, #0xb50                         ; &@selector(setMultiHitFactor:)
  1000c42f4  adrp    x12, #0x10041a000
  1000c42f8  add     x12, x12, #0xb58                         ; &@selector(setNextShotWillBeCritical:)
  1000c42fc  adrp    x13, #0x10041a000
  1000c4300  add     x13, x13, #0xb60                         ; &@selector(setNextShotWillBePrecise:)
  1000c4304  adrp    x14, #0x10041a000
  1000c4308  add     x14, x14, #0xb68                         ; &@selector(angleFromPlayer)
  1000c430c  adrp    x15, #0x100417000
  1000c4310  add     x15, x15, #0x538                         ; &@selector(spread)
  1000c4314  adrp    x16, #0x100417000
  1000c4318  add     x16, x16, #0x30                          ; &@selector(squaredDistance)
  1000c431c  adrp    x17, #0x100419000
  1000c4320  add     x17, x17, #0x380                         ; &@selector(range)
  1000c4324  adrp    x0, #0x10041a000
  1000c4328  add     x0, x0, #0x5a0                           ; &@selector(criticalSpread)
  1000c432c  adrp    x1, #0x100417000
  1000c4330  add     x1, x1, #0x548                           ; &@selector(criticalChance)
  1000c4334  adrp    x2, #0x100417000
  1000c4338  add     x2, x2, #0x510                           ; &@selector(sharedModifiers)
  1000c433c  adrp    x3, #0x10041a000
  1000c4340  add     x3, x3, #0xb70                           ; &@selector(noCritical)
  1000c4344  adrp    x4, #0x100417000
  1000c4348  add     x4, x4, #0xac0                           ; &@selector(gameplayViewController)
  1000c434c  adrp    x5, #0x10041a000
  1000c4350  add     x5, x5, #0xb78                           ; &@selector(playerDidACriticalHit)
  1000c4354  adrp    x6, #0x100417000
  1000c4358  add     x6, x6, #0x450                           ; &@selector(name)
  1000c435c  adrp    x7, #0x100417000
  1000c4360  add     x7, x7, #0xb8                            ; &@selector(numberWithBool:)
  1000c4364  adrp    x20, #0x100419000
  1000c4368  add     x20, x20, #0x60                          ; &@selector(numberWithDouble:)
  1000c436c  adrp    x21, #0x100417000
  1000c4370  nop
  1000c4374  adrp    x22, #0x100416000
  1000c4378  add     x22, x22, #0xec0                         ; &@selector(numberWithInt:)
  1000c437c  adrp    x23, #0x10041a000
  1000c4380  add     x23, x23, #0xb80                         ; &@selector(luckyShots)
  1000c4384  adrp    x25, #0x10041a000
  1000c4388  add     x25, x25, #0xb88                         ; &@selector(multihit)
  1000c438c  sxtw    x27, w8
  1000c4390  mul     x27, x27, x30
  1000c4394  lsr     x27, x27, #0x20
  1000c4398  add     w27, w27, w8                             ; t1 = ((((int)(((arg2 + 3.14159) * 180) / 3.14159) * 0xffffffffb60b60b7) >>> 32) + (int)(((arg2 + 3.14159) * 180) / 3.14159))
  1000c439c  asr     w30, w27, #8
  1000c43a0  add     w27, w30, w27, lsr #31
  1000c43a4  adrp    x30, #0x100416000
  1000c43a8  add     x30, x30, #0xc30                         ; &@selector(objectAtIndex:)
  1000c43ac  msub    w8, w27, w9, w8
  1000c43b0  add     w27, w8, #0x168
  1000c43b4  cmp     w8, #0
  1000c43b8  csel    w8, w27, w8, lt                          ; t2 = (((int)(((arg2 + 3.14159) * 180) / 3.14159) - ((t1 >> 8) + (t1 >>> 31)) * 360) < 0 ? (((int)(((arg2 + 3.14159) * 180) / 3.14159) - ((t1 >> 8) + (t1 >>> 31)) * 360) + 360) : ((int)(((arg2 + 3.14159) * 180) / 3.14159) - ((t1 >> 8) + (t1 >>> 31)) * 360))
  1000c43bc  str     w8, [sp, #0x144]
  1000c43c0  ldr     x8, [sp, #0x158]
  1000c43c4  ldr     x27, [x10]
  1000c43c8  ldr     x9, [x11]
  1000c43cc  str     x9, [sp, #0x118]
  1000c43d0  ldr     x9, [x12]
  1000c43d4  str     x9, [sp, #0x120]
  1000c43d8  ldr     x9, [x13]
  1000c43dc  str     x9, [sp, #0x128]
  1000c43e0  ldr     x9, [x14]
  1000c43e4  str     x9, [sp, #0x110]
  1000c43e8  ldr     x9, [x15]
  1000c43ec  str     x9, [sp, #0x138]
  1000c43f0  ldr     x9, [x16]
  1000c43f4  str     x9, [sp, #0x108]
  1000c43f8  ldr     x9, [x17]
  1000c43fc  str     x9, [sp, #0x130]
  1000c4400  ldr     x9, [x0]
  1000c4404  str     x9, [sp, #0x100]
  1000c4408  ldr     x9, [x1]
  1000c440c  str     x9, [sp, #0xc8]
  1000c4410  ldr     x9, [x2]
  1000c4414  str     x9, [sp, #0xf8]
  1000c4418  ldr     x9, [x3]
  1000c441c  str     x9, [sp, #0xb0]
  1000c4420  ldr     x9, [x4]
  1000c4424  str     x9, [sp, #0xc0]
  1000c4428  ldr     x9, [x5]
  1000c442c  str     x9, [sp, #0xb8]
  1000c4430  ldr     x9, [x6]
  1000c4434  str     x9, [sp, #0x70]
  1000c4438  ldr     x9, [x7]
  1000c443c  str     x9, [sp, #0x68]
  1000c4440  ldr     x9, [x20]
  1000c4444  str     x9, [sp, #0x60]
  1000c4448  ldr     x9, [x21, #0xad8]
  1000c444c  str     x9, [sp, #0xa8]
  1000c4450  ldr     x9, [x22]
  1000c4454  str     x9, [sp, #0x58]
  1000c4458  ldr     x9, [x23]
  1000c445c  str     x9, [sp, #0xe8]
  1000c4460  ldr     x21, [x8]
  1000c4464  str     x21, [sp, #0x50]
  1000c4468  adrp    x8, #0x100419000
  1000c446c  nop
  1000c4470  ldr     x8, [x8, #0x388]
  1000c4474  str     x8, [sp, #0xe0]
  1000c4478  ldr     x8, [x25]
  1000c447c  str     x8, [sp, #0xd8]
  1000c4480  adrp    x8, #0x100416000
  1000c4484  nop
  1000c4488  ldr     x8, [x8, #0xd90]
  1000c448c  str     x8, [sp, #0xd0]
  1000c4490  adrp    x8, #0x100417000
  1000c4494  nop
  1000c4498  ldr     x8, [x8, #0x1b8]
  1000c449c  str     x8, [sp, #0x88]
  1000c44a0  ldr     x8, [x30]
  1000c44a4  str     x8, [sp, #0x40]
  1000c44a8  fmov    d8, #-1.00000000
loc_1000c44ac:
  1000c44ac  str     x24, [sp, #0x90]
  1000c44b0  mov     x22, #0
loc_1000c44b4:
  1000c44b4  ldr     x8, [sp, #0x158]
  1000c44b8  ldr     x8, [x8]
  1000c44bc  cmp     x8, x21
  1000c44c0  b.eq    loc_1000c44cc                            ; if (x8 == x21)
  1000c44c4  mov     x0, x28
  1000c44c8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c44cc:
  1000c44cc  ldr     x8, [sp, #0x150]
  1000c44d0  ldr     x20, [x8, x22, lsl #3]
  1000c44d4  mov     x0, x20
  1000c44d8  mov     x1, x27
  1000c44dc  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c44e0  cbz     w0, loc_1000c49d4                        ; if ([x0 canBeShotAt] == 0)
  1000c44e4  mov     w2, #0
  1000c44e8  mov     x0, x20
  1000c44ec  ldr     x1, [sp, #0x118]
  1000c44f0  bl      _objc_msgSend                            ; [x0 setMultiHitFactor:0]
  1000c44f4  mov     w2, #0
  1000c44f8  mov     x0, x20
  1000c44fc  ldr     x1, [sp, #0x120]
  1000c4500  bl      _objc_msgSend                            ; [x0 setNextShotWillBeCritical:0]
  1000c4504  mov     w2, #0
  1000c4508  mov     x0, x20
  1000c450c  ldr     x1, [sp, #0x128]
  1000c4510  bl      _objc_msgSend                            ; [x0 setNextShotWillBePrecise:0]
  1000c4514  mov     x0, x20
  1000c4518  ldr     x1, [sp, #0x110]
  1000c451c  bl      _objc_msgSend                            ; [x0 angleFromPlayer]
  1000c4520  fcvt    d0, s0
  1000c4524  fadd    d0, d0, d11
  1000c4528  fmul    d0, d0, d13
  1000c452c  fdiv    d0, d0, d11
  1000c4530  fcvtzs  w8, d0
  1000c4534  sxtw    x9, w8
  1000c4538  mov     x10, #-0x49f40001
  1000c453c  movk    x10, #0x60b7
  1000c4540  mul     x9, x9, x10
  1000c4544  lsr     x9, x9, #0x20
  1000c4548  add     w9, w9, w8                               ; t3 = ((((int)((([x0 angleFromPlayer] + 3.14159) * 180) / 3.14159) * 0xffffffffb60b60b7) >>> 32) + (int)((([x0 angleFromPlayer] + 3.14159) * 180) / 3.14159))
  1000c454c  asr     w10, w9, #8
  1000c4550  add     w9, w10, w9, lsr #31
  1000c4554  mov     w10, #0x168
  1000c4558  msub    w8, w9, w10, w8                          ; t4 = ((int)((([x0 angleFromPlayer] + 3.14159) * 180) / 3.14159) - ((t3 >> 8) + (t3 >>> 31)) * 360)
  1000c455c  add     w9, w8, #0x168
  1000c4560  cmp     w8, #0
  1000c4564  csel    w23, w9, w8, lt
  1000c4568  mov     x0, x19
  1000c456c  ldr     x1, [sp, #0x138]
  1000c4570  bl      _objc_msgSend                            ; [arg1 spread]
  1000c4574  ldr     w8, [sp, #0x144]
  1000c4578  sub     w8, w8, w23
  1000c457c  scvtf   d1, w8
  1000c4580  fabs    d15, d1
  1000c4584  fcvt    d0, s0
  1000c4588  fcmp    d15, d0
  1000c458c  b.mi    loc_1000c45bc                            ; if (fabs((float)(t2 - (t4 < 0 ? (t4 + 360) : t4))) < [arg1 spread])
  1000c4590  mov     x0, x19
  1000c4594  ldr     x1, [sp, #0x138]
  1000c4598  bl      _objc_msgSend                            ; [arg1 spread]
  1000c459c  ldr     w8, [sp, #0x144]
  1000c45a0  sub     w8, w23, w8
  1000c45a4  scvtf   d1, w8
  1000c45a8  fabs    d1, d1
  1000c45ac  fsub    s0, s12, s0
  1000c45b0  fcvt    d0, s0
  1000c45b4  fcmp    d1, d0
  1000c45b8  b.le    loc_1000c49d4                            ; if (fabs((float)((t4 < 0 ? (t4 + 360) : t4) - t2)) <= (or unordered) (360 - [arg1 spread]))
loc_1000c45bc:
  1000c45bc  mov     x0, x20
  1000c45c0  ldr     x1, [sp, #0x108]
  1000c45c4  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c45c8  mov     v9.16b, v0.16b
  1000c45cc  mov     x0, x19
  1000c45d0  ldr     x1, [sp, #0x130]
  1000c45d4  bl      _objc_msgSend                            ; [arg1 range]
  1000c45d8  mov     v10.16b, v0.16b
  1000c45dc  mov     x0, x19
  1000c45e0  ldr     x1, [sp, #0x130]
  1000c45e4  bl      _objc_msgSend                            ; [arg1 range]
  1000c45e8  fmul    s0, s10, s0
  1000c45ec  fcmp    s9, s0
  1000c45f0  b.hi    loc_1000c49d4                            ; if ([x0 squaredDistance] > (or unordered) ([arg1 range] * [arg1 range]))
  1000c45f4  mov     x0, x19
  1000c45f8  ldr     x1, [sp, #0x100]
  1000c45fc  bl      _objc_msgSend                            ; [arg1 criticalSpread]
  1000c4600  fcvt    d0, s0
  1000c4604  fcmp    d15, d0
  1000c4608  b.mi    loc_1000c4638                            ; if (fabs((float)(t2 - (t4 < 0 ? (t4 + 360) : t4))) < [arg1 criticalSpread])
  1000c460c  mov     x0, x19
  1000c4610  ldr     x1, [sp, #0x100]
  1000c4614  bl      _objc_msgSend                            ; [arg1 criticalSpread]
  1000c4618  ldr     w8, [sp, #0x144]
  1000c461c  sub     w8, w23, w8
  1000c4620  scvtf   d1, w8
  1000c4624  fabs    d1, d1
  1000c4628  fsub    s0, s12, s0
  1000c462c  fcvt    d0, s0
  1000c4630  fcmp    d1, d0
  1000c4634  b.le    loc_1000c4868                            ; if (fabs((float)((t4 < 0 ? (t4 + 360) : t4) - t2)) <= (or unordered) (360 - [arg1 criticalSpread]))
loc_1000c4638:
  1000c4638  bl      _random                                  ; random()
  1000c463c  mov     x23, x0
  1000c4640  mov     x0, x19
  1000c4644  ldr     x1, [sp, #0xc8]
  1000c4648  bl      _objc_msgSend                            ; [arg1 criticalChance]
  1000c464c  mov     x8, #-0x5c29000000000000
  1000c4650  movk    x8, #0xa3d, lsl #32
  1000c4654  movk    x8, #0x70a3, lsl #16
  1000c4658  movk    x8, #0xd70b
  1000c465c  smulh   x8, x23, x8
  1000c4660  add     x8, x8, x23
  1000c4664  lsr     x9, x8, #0x3f
  1000c4668  lsr     x8, x8, #6
  1000c466c  add     w8, w8, w9                               ; t5 = ((((random() *h 0xa3d70a3d70a3d70b) + random()) >>> 6) + (((random() *h 0xa3d70a3d70a3d70b) + random()) >>> 63))
  1000c4670  mov     w9, #0x64
  1000c4674  msub    w8, w8, w9, w23
  1000c4678  scvtf   s1, w8
  1000c467c  fcmp    s1, s0
  1000c4680  b.pl    loc_1000c46b8                            ; if ((float)(random() - t5 * 100) >= (or unordered) [arg1 criticalChance])
  1000c4684  adrp    x8, #0x10041e000
  1000c4688  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000c468c  ldr     x1, [sp, #0xf8]
  1000c4690  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000c4694  mov     x29, x29
  1000c4698  bl      _objc_retainAutoreleasedReturnValue
  1000c469c  mov     x23, x0
  1000c46a0  ldr     x1, [sp, #0xb0]
  1000c46a4  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] noCritical]
  1000c46a8  mov     x25, x0
  1000c46ac  mov     x0, x23
  1000c46b0  bl      _objc_release
  1000c46b4  tbz     w25, #0, loc_1000c46cc                   ; if (!([[ADGameModifiers sharedModifiers] noCritical] & 1))
loc_1000c46b8:
  1000c46b8  mov     w2, #1
  1000c46bc  mov     x0, x20
  1000c46c0  ldr     x1, [sp, #0x128]
  1000c46c4  bl      _objc_msgSend                            ; [x0 setNextShotWillBePrecise:1]
  1000c46c8  b       loc_1000c4868
loc_1000c46cc:
  1000c46cc  mov     w2, #1
  1000c46d0  mov     x0, x20
  1000c46d4  ldr     x1, [sp, #0x120]
  1000c46d8  bl      _objc_msgSend                            ; [x0 setNextShotWillBeCritical:1]
  1000c46dc  ldr     x0, [sp, #0xf0]
  1000c46e0  ldr     x1, [sp, #0xc0]
  1000c46e4  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c46e8  mov     x29, x29
  1000c46ec  bl      _objc_retainAutoreleasedReturnValue
  1000c46f0  mov     x23, x0
  1000c46f4  ldr     x1, [sp, #0xb8]
  1000c46f8  bl      _objc_msgSend                            ; [[self gameplayViewController] playerDidACriticalHit]
  1000c46fc  mov     x0, x23
  1000c4700  bl      _objc_release
  1000c4704  mov     x0, x19
  1000c4708  ldr     x1, [sp, #0x70]
  1000c470c  bl      _objc_msgSend                            ; [arg1 name]
  1000c4710  mov     x29, x29
  1000c4714  bl      _objc_retainAutoreleasedReturnValue
  1000c4718  str     x0, [sp, #0xa0]
  1000c471c  adrp    x23, #0x10041d000
  1000c4720  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000c4724  mov     w2, #0
  1000c4728  ldr     x25, [sp, #0x68]
  1000c472c  mov     x1, x25
  1000c4730  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c4734  mov     x29, x29
  1000c4738  bl      _objc_retainAutoreleasedReturnValue
  1000c473c  str     x0, [sp, #0x98]
  1000c4740  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000c4744  mov     w2, #0
  1000c4748  mov     x1, x25
  1000c474c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c4750  mov     x26, x25
  1000c4754  mov     x29, x29
  1000c4758  bl      _objc_retainAutoreleasedReturnValue
  1000c475c  mov     x25, x0
  1000c4760  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000c4764  mov     w2, #0
  1000c4768  mov     x1, x26
  1000c476c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c4770  mov     x29, x29
  1000c4774  bl      _objc_retainAutoreleasedReturnValue
  1000c4778  mov     x28, x0
  1000c477c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000c4780  mov     w2, #1
  1000c4784  mov     x1, x26
  1000c4788  ldr     x24, [sp, #0x98]
  1000c478c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000c4790  mov     x21, x27
  1000c4794  mov     x29, x29
  1000c4798  bl      _objc_retainAutoreleasedReturnValue
  1000c479c  mov     x26, x0
  1000c47a0  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  1000c47a4  ldr     x1, [sp, #0x60]
  1000c47a8  mov     v0.16b, v8.16b
  1000c47ac  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:-1]
  1000c47b0  mov     x29, x29
  1000c47b4  bl      _objc_retainAutoreleasedReturnValue
  1000c47b8  mov     x23, x0
  1000c47bc  stp     x23, xzr, [sp, #0x20]
  1000c47c0  stp     x28, x26, [sp, #0x10]
  1000c47c4  stp     x24, x25, [sp]
  1000c47c8  ldr     x0, [sp, #0xf0]
  1000c47cc  adrp    x2, #0x1003bd000
  1000c47d0  add     x2, x2, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  1000c47d4  mov     x27, x25
  1000c47d8  ldp     x25, x1, [sp, #0xa0]
  1000c47dc  mov     x3, x25
  1000c47e0  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_WEAPON_DATA" AndData:[arg1 name]]
  1000c47e4  mov     x0, x23
  1000c47e8  bl      _objc_release
  1000c47ec  mov     x0, x26
  1000c47f0  bl      _objc_release
  1000c47f4  mov     x0, x28
  1000c47f8  bl      _objc_release
  1000c47fc  mov     x0, x27
  1000c4800  bl      _objc_release
  1000c4804  mov     x0, x24
  1000c4808  bl      _objc_release
  1000c480c  mov     x0, x25
  1000c4810  bl      _objc_release
  1000c4814  adrp    x8, #0x10041d000
  1000c4818  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000c481c  mov     w2, #1
  1000c4820  ldr     x1, [sp, #0x58]
  1000c4824  ldp     x28, x26, [sp, #0x78]
  1000c4828  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000c482c  ldr     x24, [sp, #0x90]
  1000c4830  mov     x27, x21
  1000c4834  ldr     x21, [sp, #0x50]
  1000c4838  mov     x29, x29
  1000c483c  bl      _objc_retainAutoreleasedReturnValue
  1000c4840  mov     x23, x0
  1000c4844  str     xzr, [sp]
  1000c4848  ldr     x0, [sp, #0xf0]
  1000c484c  ldr     x1, [sp, #0xa8]
  1000c4850  adrp    x2, #0x1003c2000
  1000c4854  add     x2, x2, #0x190                           ; @"UPDATE_CRITICAL_HITS"
  1000c4858  mov     x3, x23
  1000c485c  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_CRITICAL_HITS" AndData:[NSNumber numberWithInt:1]]
  1000c4860  mov     x0, x23
  1000c4864  bl      _objc_release
loc_1000c4868:
  1000c4868  adrp    x8, #0x10041e000
  1000c486c  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000c4870  ldr     x1, [sp, #0xf8]
  1000c4874  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000c4878  mov     x29, x29
  1000c487c  bl      _objc_retainAutoreleasedReturnValue
  1000c4880  mov     x23, x0
  1000c4884  ldr     x1, [sp, #0xe8]
  1000c4888  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] luckyShots]
  1000c488c  mov     x25, x0
  1000c4890  mov     x0, x23
  1000c4894  bl      _objc_release
  1000c4898  cbz     w25, loc_1000c48e0                       ; if ([[ADGameModifiers sharedModifiers] luckyShots] == 0)
  1000c489c  bl      _random                                  ; random()
  1000c48a0  mov     x8, #-0x5c29000000000000
  1000c48a4  movk    x8, #0xa3d, lsl #32
  1000c48a8  movk    x8, #0x70a3, lsl #16
  1000c48ac  movk    x8, #0xd70b
  1000c48b0  smulh   x8, x0, x8
  1000c48b4  add     x8, x8, x0
  1000c48b8  asr     x9, x8, #6
  1000c48bc  add     x8, x9, x8, lsr #63                      ; t6 = ((((random() *h 0xa3d70a3d70a3d70b) + random()) >> 6) + (((random() *h 0xa3d70a3d70a3d70b) + random()) >>> 63))
  1000c48c0  mov     w9, #0x64
  1000c48c4  msub    x8, x8, x9, x0
  1000c48c8  cmp     x8, #1
  1000c48cc  b.ne    loc_1000c48e0                            ; if ((random() - t6 * 100) != 1)
  1000c48d0  mov     w2, #1
  1000c48d4  mov     x0, x20
  1000c48d8  ldr     x1, [sp, #0x120]
  1000c48dc  bl      _objc_msgSend                            ; [x0 setNextShotWillBeCritical:1]
loc_1000c48e0:
  1000c48e0  mov     x0, x20
  1000c48e4  ldr     x1, [sp, #0xe0]
  1000c48e8  bl      _objc_msgSend                            ; [x0 nextShotWillBeCritical]
  1000c48ec  cbz     w0, loc_1000c4918                        ; if ([x0 nextShotWillBeCritical] == 0)
  1000c48f0  ldr     x0, [sp, #0xf0]
  1000c48f4  ldr     x1, [sp, #0xc0]
  1000c48f8  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c48fc  mov     x29, x29
  1000c4900  bl      _objc_retainAutoreleasedReturnValue
  1000c4904  mov     x23, x0
  1000c4908  ldr     x1, [sp, #0xb8]
  1000c490c  bl      _objc_msgSend                            ; [[self gameplayViewController] playerDidACriticalHit]
  1000c4910  mov     x0, x23
  1000c4914  bl      _objc_release
loc_1000c4918:
  1000c4918  mov     x0, x19
  1000c491c  ldr     x1, [sp, #0xd8]
  1000c4920  bl      _objc_msgSend                            ; [arg1 multihit]
  1000c4924  cbz     w0, loc_1000c493c                        ; if ([arg1 multihit] == 0)
  1000c4928  mov     x0, x26
  1000c492c  ldr     x1, [sp, #0xd0]
  1000c4930  mov     x2, x20
  1000c4934  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
  1000c4938  b       loc_1000c49d4
loc_1000c493c:
  1000c493c  fcvt    d0, s14
  1000c4940  fcmp    d15, d0
  1000c4944  b.pl    loc_1000c496c                            ; if (fabs((float)(t2 - (t4 < 0 ? (t4 + 360) : t4))) >= (or unordered) d0)
  1000c4948  mov     x0, x26
  1000c494c  ldr     x1, [sp, #0x88]
  1000c4950  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] removeAllObjects]
  1000c4954  mov     x0, x26
  1000c4958  ldr     x1, [sp, #0xd0]
  1000c495c  mov     x2, x20
  1000c4960  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
  1000c4964  fcvt    s14, d15
  1000c4968  b       loc_1000c49d4
loc_1000c496c:
  1000c496c  b.ne    loc_1000c49d4                            ; if (flags !=)
  1000c4970  mov     x0, x20
  1000c4974  ldr     x1, [sp, #0x108]
  1000c4978  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c497c  mov     v9.16b, v0.16b
  1000c4980  mov     x2, #0
  1000c4984  mov     x0, x26
  1000c4988  ldr     x1, [sp, #0x40]
  1000c498c  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] objectAtIndex:0]
  1000c4990  mov     x29, x29
  1000c4994  bl      _objc_retainAutoreleasedReturnValue
  1000c4998  mov     x23, x0
  1000c499c  ldr     x1, [sp, #0x108]
  1000c49a0  bl      _objc_msgSend                            ; [[[[NSMutableArray alloc] init] objectAtIndex:0] squaredDistance]
  1000c49a4  mov     v10.16b, v0.16b
  1000c49a8  mov     x0, x23
  1000c49ac  bl      _objc_release
  1000c49b0  fcmp    s9, s10
  1000c49b4  b.pl    loc_1000c49d4                            ; if ([x0 squaredDistance] >= (or unordered) [[[[NSMutableArray alloc] init] objectAtIndex:0] squaredDistance])
  1000c49b8  mov     x0, x26
  1000c49bc  ldr     x1, [sp, #0x88]
  1000c49c0  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] removeAllObjects]
  1000c49c4  mov     x0, x26
  1000c49c8  ldr     x1, [sp, #0xd0]
  1000c49cc  mov     x2, x20
  1000c49d0  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
loc_1000c49d4:
  1000c49d4  add     x22, x22, #1
  1000c49d8  cmp     x22, x24
  1000c49dc  b.lo    loc_1000c44b4                            ; if ((x22 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x188] count:16])
  1000c49e0  add     x2, sp, #0x148
  1000c49e4  add     x3, sp, #0x188
  1000c49e8  mov     w4, #0x10
  1000c49ec  mov     x0, x28
  1000c49f0  ldr     x1, [sp, #0x48]
  1000c49f4  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x188] count:16]
  1000c49f8  mov     x24, x0
  1000c49fc  cbnz    x24, loc_1000c44ac                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x148] objects:&sp[0x188] count:16] != 0)
loc_1000c4a00:
  1000c4a00  mov     x0, x28
  1000c4a04  bl      _objc_release
  1000c4a08  mov     x0, x19
  1000c4a0c  bl      _objc_release
  1000c4a10  ldur    x8, [x29, #-0x98]
  1000c4a14  adrp    x9, #0x1003b0000
  1000c4a18  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000c4a1c  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000c4a20  sub     x8, x9, x8
  1000c4a24  cbnz    x8, loc_1000c4a5c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c4a28  mov     x0, x26
  1000c4a2c  sub     sp, x29, #0x90
  1000c4a30  ldp     x29, x30, [sp, #0x90]
  1000c4a34  ldp     x20, x19, [sp, #0x80]
  1000c4a38  ldp     x22, x21, [sp, #0x70]
  1000c4a3c  ldp     x24, x23, [sp, #0x60]
  1000c4a40  ldp     x26, x25, [sp, #0x50]
  1000c4a44  ldp     x28, x27, [sp, #0x40]
  1000c4a48  ldp     d9, d8, [sp, #0x30]
  1000c4a4c  ldp     d11, d10, [sp, #0x20]
  1000c4a50  ldp     d13, d12, [sp, #0x10]
  1000c4a54  ldp     d15, d14, [sp], #0xa0
  1000c4a58  b       _objc_autoreleaseReturnValue
loc_1000c4a5c:
  1000c4a5c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c4a60:
  1000c4a60  mov     x20, x0
loc_1000c4a64:
  1000c4a64  mov     x0, x28
  1000c4a68  bl      _objc_release
loc_1000c4a6c:
  1000c4a6c  mov     x0, x26
  1000c4a70  bl      _objc_release
loc_1000c4a74:
  1000c4a74  mov     x0, x19
  1000c4a78  bl      _objc_release
  1000c4a7c  mov     x0, x20
  1000c4a80  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c4a84  b       loc_1000c4b14
  1000c4a88  b       loc_1000c4b14
  1000c4a8c  b       loc_1000c4b14
  1000c4a90  b       loc_1000c4b14
  1000c4a94  mov     x20, x0
  1000c4a98  ldr     x26, [sp, #0x80]
  1000c4a9c  b       loc_1000c4b04
  1000c4aa0  mov     x20, x0
  1000c4aa4  ldr     x26, [sp, #0x80]
  1000c4aa8  b       loc_1000c4afc
  1000c4aac  mov     x21, x25
  1000c4ab0  mov     x20, x0
  1000c4ab4  b       loc_1000c4af0
  1000c4ab8  mov     x21, x25
  1000c4abc  mov     x20, x0
  1000c4ac0  b       loc_1000c4ae8
  1000c4ac4  mov     x21, x25
  1000c4ac8  mov     x20, x0
  1000c4acc  b       loc_1000c4ae0
  1000c4ad0  mov     x21, x27
  1000c4ad4  mov     x20, x0
  1000c4ad8  mov     x0, x23
  1000c4adc  bl      _objc_release
loc_1000c4ae0:
  1000c4ae0  mov     x0, x26
  1000c4ae4  bl      _objc_release
loc_1000c4ae8:
  1000c4ae8  mov     x0, x28
  1000c4aec  bl      _objc_release
loc_1000c4af0:
  1000c4af0  mov     x0, x21
  1000c4af4  bl      _objc_release
  1000c4af8  ldp     x28, x26, [sp, #0x78]
loc_1000c4afc:
  1000c4afc  ldr     x0, [sp, #0x98]
  1000c4b00  bl      _objc_release
loc_1000c4b04:
  1000c4b04  ldr     x0, [sp, #0xa0]
  1000c4b08  b       loc_1000c4b1c
  1000c4b0c  b       loc_1000c4b14
  1000c4b10  b       loc_1000c4a60
loc_1000c4b14:
  1000c4b14  mov     x20, x0
  1000c4b18  mov     x0, x23
loc_1000c4b1c:
  1000c4b1c  bl      _objc_release
  1000c4b20  b       loc_1000c4a64
  1000c4b24  mov     x20, x0
  1000c4b28  b       loc_1000c4a74
  1000c4b2c  mov     x20, x0
  1000c4b30  b       loc_1000c4a6c
  1000c4b34  b       loc_1000c4a60

; ======================================================================
; -[ADBrickManager shotWithSpecialWeapon:]
; address 0x1000c4b38  size 708  kind objc
; ======================================================================
  1000c4b38  stp     d9, d8, [sp, #-0x70]!
  1000c4b3c  stp     x28, x27, [sp, #0x10]
  1000c4b40  stp     x26, x25, [sp, #0x20]
  1000c4b44  stp     x24, x23, [sp, #0x30]
  1000c4b48  stp     x22, x21, [sp, #0x40]
  1000c4b4c  stp     x20, x19, [sp, #0x50]
  1000c4b50  stp     x29, x30, [sp, #0x60]
  1000c4b54  add     x29, sp, #0x60
  1000c4b58  sub     sp, sp, #0xe0
  1000c4b5c  mov     x22, x0
  1000c4b60  adrp    x20, #0x1003b0000
  1000c4b64  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  1000c4b68  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  1000c4b6c  stur    x20, [x29, #-0x68]
  1000c4b70  mov     x0, x2
  1000c4b74  bl      _objc_retain
  1000c4b78  mov     x19, x0
  1000c4b7c  adrp    x8, #0x10041d000
  1000c4b80  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c4b84  adrp    x8, #0x100417000
  1000c4b88  nop
  1000c4b8c  ldr     x1, [x8, #0x4f0]
  1000c4b90  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c4b94  mov     x29, x29
  1000c4b98  bl      _objc_retainAutoreleasedReturnValue
  1000c4b9c  mov     x21, x0
  1000c4ba0  adrp    x8, #0x100419000
  1000c4ba4  nop
  1000c4ba8  ldr     x1, [x8, #0x98]
  1000c4bac  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  1000c4bb0  mov     v8.16b, v0.16b
  1000c4bb4  mov     x0, x21
  1000c4bb8  bl      _objc_release
  1000c4bbc  adrp    x8, #0x10041a000
  1000c4bc0  nop
  1000c4bc4  ldr     x1, [x8, #0xb90]
  1000c4bc8  mov     x0, x22
  1000c4bcc  mov     x2, x19
  1000c4bd0  mov     v0.16b, v8.16b
  1000c4bd4  bl      _objc_msgSend                            ; [self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]]
  1000c4bd8  str     x22, [sp, #0x10]
  1000c4bdc  mov     x29, x29
  1000c4be0  bl      _objc_retainAutoreleasedReturnValue
  1000c4be4  mov     x21, x0
  1000c4be8  adrp    x8, #0x100416000
  1000c4bec  nop
  1000c4bf0  ldr     x1, [x8, #0xe30]
  1000c4bf4  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count]
  1000c4bf8  mov     x23, x0
  1000c4bfc  stp     xzr, xzr, [sp, #0x48]
  1000c4c00  stp     xzr, xzr, [sp, #0x38]
  1000c4c04  stp     xzr, xzr, [sp, #0x28]
  1000c4c08  stp     xzr, xzr, [sp, #0x18]
  1000c4c0c  mov     x0, x21
  1000c4c10  bl      _objc_retain
  1000c4c14  mov     x22, x0
  1000c4c18  adrp    x8, #0x100416000
  1000c4c1c  nop
  1000c4c20  ldr     x24, [x8, #0xe00]
  1000c4c24  add     x2, sp, #0x18
  1000c4c28  add     x3, sp, #0x58
  1000c4c2c  mov     w4, #0x10
  1000c4c30  mov     x1, x24
  1000c4c34  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000c4c38  mov     x25, x0
  1000c4c3c  cbz     x25, loc_1000c4cb0                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  1000c4c40  ldr     x8, [sp, #0x28]
  1000c4c44  ldr     x28, [x8]
  1000c4c48  adrp    x8, #0x10041a000
  1000c4c4c  add     x8, x8, #0xb98                           ; &@selector(hitByWeapon:)
  1000c4c50  ldr     x26, [x8]
loc_1000c4c54:
  1000c4c54  mov     x27, #0
loc_1000c4c58:
  1000c4c58  ldr     x8, [sp, #0x28]
  1000c4c5c  ldr     x8, [x8]
  1000c4c60  cmp     x8, x28
  1000c4c64  b.eq    loc_1000c4c70                            ; if (x8 == x28)
  1000c4c68  mov     x0, x22
  1000c4c6c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]])
loc_1000c4c70:
  1000c4c70  ldr     x8, [sp, #0x20]
  1000c4c74  ldr     x0, [x8, x27, lsl #3]
  1000c4c78  mov     x1, x26
  1000c4c7c  mov     x2, x19
  1000c4c80  bl      _objc_msgSend                            ; [x0 hitByWeapon:arg1]
  1000c4c84  add     x27, x27, #1
  1000c4c88  cmp     x27, x25
  1000c4c8c  b.lo    loc_1000c4c58                            ; if ((x27 + 1) <u [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&s…)
  1000c4c90  add     x2, sp, #0x18
  1000c4c94  add     x3, sp, #0x58
  1000c4c98  mov     w4, #0x10
  1000c4c9c  mov     x0, x22
  1000c4ca0  mov     x1, x24
  1000c4ca4  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000c4ca8  mov     x25, x0
  1000c4cac  cbnz    x25, loc_1000c4c54                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_1000c4cb0:
  1000c4cb0  mov     x0, x22
  1000c4cb4  bl      _objc_release
  1000c4cb8  adrp    x8, #0x10041e000
  1000c4cbc  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000c4cc0  adrp    x8, #0x100417000
  1000c4cc4  nop
  1000c4cc8  ldr     x1, [x8, #0x2e0]
  1000c4ccc  bl      _objc_msgSend                            ; [ADMeleeWeapon class]
  1000c4cd0  mov     x2, x0
  1000c4cd4  adrp    x8, #0x100417000
  1000c4cd8  nop
  1000c4cdc  ldr     x1, [x8, #0x3b8]
  1000c4ce0  mov     x0, x19
  1000c4ce4  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADMeleeWeapon class]]
  1000c4ce8  cbz     w0, loc_1000c4d08                        ; if ([arg1 isKindOfClass:[ADMeleeWeapon class]] == 0)
  1000c4cec  cbz     x23, loc_1000c4d54                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count] == 0)
  1000c4cf0  adrp    x8, #0x10041a000
  1000c4cf4  nop
  1000c4cf8  ldr     x1, [x8, #0xba0]
  1000c4cfc  mov     x0, x19
  1000c4d00  bl      _objc_msgSend                            ; [arg1 playHitSound]
  1000c4d04  b       loc_1000c4d0c
loc_1000c4d08:
  1000c4d08  cbz     x23, loc_1000c4d68                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count] == 0)
loc_1000c4d0c:
  1000c4d0c  adrp    x8, #0x100417000
  1000c4d10  nop
  1000c4d14  ldr     x1, [x8, #0x450]
  1000c4d18  mov     x0, x19
  1000c4d1c  bl      _objc_msgSend                            ; [arg1 name]
  1000c4d20  mov     x29, x29
  1000c4d24  bl      _objc_retainAutoreleasedReturnValue
  1000c4d28  mov     x23, x0
  1000c4d2c  adrp    x8, #0x10041a000
  1000c4d30  nop
  1000c4d34  ldr     x1, [x8, #0xbb0]
  1000c4d38  ldr     x0, [sp, #0x10]
  1000c4d3c  mov     x2, x22
  1000c4d40  mov     x3, x23
  1000c4d44  bl      _objc_msgSend                            ; [self checkDeathsForHitEnemies:[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] withWeaponName:[arg1 name]]
  1000c4d48  mov     x0, x23
  1000c4d4c  bl      _objc_release
  1000c4d50  b       loc_1000c4d68
loc_1000c4d54:
  1000c4d54  adrp    x8, #0x10041a000
  1000c4d58  nop
  1000c4d5c  ldr     x1, [x8, #0xba8]
  1000c4d60  mov     x0, x19
  1000c4d64  bl      _objc_msgSend                            ; [arg1 playMissSound]
loc_1000c4d68:
  1000c4d68  mov     x0, x22
  1000c4d6c  bl      _objc_release
  1000c4d70  mov     x0, x19
  1000c4d74  bl      _objc_release
  1000c4d78  ldur    x8, [x29, #-0x68]
  1000c4d7c  sub     x8, x20, x8
  1000c4d80  cbnz    x8, loc_1000c4da8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c4d84  sub     sp, x29, #0x60
  1000c4d88  ldp     x29, x30, [sp, #0x60]
  1000c4d8c  ldp     x20, x19, [sp, #0x50]
  1000c4d90  ldp     x22, x21, [sp, #0x40]
  1000c4d94  ldp     x24, x23, [sp, #0x30]
  1000c4d98  ldp     x26, x25, [sp, #0x20]
  1000c4d9c  ldp     x28, x27, [sp, #0x10]
  1000c4da0  ldp     d9, d8, [sp], #0x70
  1000c4da4  ret
loc_1000c4da8:
  1000c4da8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c4dac:
  1000c4dac  mov     x20, x0
  1000c4db0  mov     x0, x22
  1000c4db4  bl      _objc_release
loc_1000c4db8:
  1000c4db8  mov     x0, x21
  1000c4dbc  bl      _objc_release
loc_1000c4dc0:
  1000c4dc0  mov     x0, x19
  1000c4dc4  bl      _objc_release
  1000c4dc8  mov     x0, x20
  1000c4dcc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c4dd0  b       loc_1000c4dac
  1000c4dd4  b       loc_1000c4de0
  1000c4dd8  mov     x20, x0
  1000c4ddc  b       loc_1000c4dc0
loc_1000c4de0:
  1000c4de0  mov     x20, x0
  1000c4de4  b       loc_1000c4db8
  1000c4de8  b       loc_1000c4dac
  1000c4dec  mov     x20, x0
  1000c4df0  mov     x0, x23
  1000c4df4  bl      _objc_release
  1000c4df8  b       loc_1000c4db8

; ======================================================================
; -[ADBrickManager shotWithWeapon:]
; address 0x1000c4dfc  size 2492  kind objc
; ======================================================================
  1000c4dfc  stp     d9, d8, [sp, #-0x70]!
  1000c4e00  stp     x28, x27, [sp, #0x10]
  1000c4e04  stp     x26, x25, [sp, #0x20]
  1000c4e08  stp     x24, x23, [sp, #0x30]
  1000c4e0c  stp     x22, x21, [sp, #0x40]
  1000c4e10  stp     x20, x19, [sp, #0x50]
  1000c4e14  stp     x29, x30, [sp, #0x60]
  1000c4e18  add     x29, sp, #0x60
  1000c4e1c  sub     sp, sp, #0x180
  1000c4e20  str     x0, [sp, #0xb0]
  1000c4e24  adrp    x8, #0x1003b0000
  1000c4e28  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000c4e2c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000c4e30  stur    x8, [x29, #-0x68]
  1000c4e34  mov     x0, x2
  1000c4e38  bl      _objc_retain
  1000c4e3c  mov     x23, x0
  1000c4e40  str     x23, [sp, #0x70]
  1000c4e44  adrp    x8, #0x10041d000
  1000c4e48  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c4e4c  adrp    x8, #0x100417000
  1000c4e50  nop
  1000c4e54  ldr     x1, [x8, #0x4f0]
  1000c4e58  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c4e5c  mov     x29, x29
  1000c4e60  bl      _objc_retainAutoreleasedReturnValue
  1000c4e64  mov     x20, x0
  1000c4e68  adrp    x8, #0x100419000
  1000c4e6c  nop
  1000c4e70  ldr     x1, [x8, #0x98]
  1000c4e74  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  1000c4e78  mov     v8.16b, v0.16b
  1000c4e7c  mov     x0, x20
  1000c4e80  bl      _objc_release
  1000c4e84  adrp    x8, #0x10041a000
  1000c4e88  nop
  1000c4e8c  ldr     x1, [x8, #0xb90]
  1000c4e90  ldr     x0, [sp, #0xb0]
  1000c4e94  mov     x2, x23
  1000c4e98  mov     v0.16b, v8.16b
  1000c4e9c  bl      _objc_msgSend                            ; [self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]]
  1000c4ea0  mov     x29, x29
  1000c4ea4  bl      _objc_retainAutoreleasedReturnValue
  1000c4ea8  mov     x28, x0
  1000c4eac  adrp    x8, #0x100416000
  1000c4eb0  nop
  1000c4eb4  ldr     x20, [x8, #0xe30]
  1000c4eb8  mov     x1, x20
  1000c4ebc  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count]
  1000c4ec0  mov     x21, x0
  1000c4ec4  adrp    x8, #0x10041a000
  1000c4ec8  nop
  1000c4ecc  ldr     x1, [x8, #0xb88]
  1000c4ed0  str     x1, [sp, #0xa8]
  1000c4ed4  mov     x0, x23
  1000c4ed8  bl      _objc_msgSend                            ; [arg1 multihit]
  1000c4edc  cbz     w0, loc_1000c4ef8                        ; if ([arg1 multihit] == 0)
  1000c4ee0  mov     x0, x28
  1000c4ee4  mov     x1, x20
  1000c4ee8  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count]
  1000c4eec  mov     x26, x0
  1000c4ef0  str     x21, [sp, #0x38]
  1000c4ef4  b       loc_1000c4f00
loc_1000c4ef8:
  1000c4ef8  str     x21, [sp, #0x38]
  1000c4efc  mov     w26, #0
loc_1000c4f00:
  1000c4f00  stp     xzr, xzr, [sp, #0xe8]
  1000c4f04  stp     xzr, xzr, [sp, #0xd8]
  1000c4f08  stp     xzr, xzr, [sp, #0xc8]
  1000c4f0c  stp     xzr, xzr, [sp, #0xb8]
  1000c4f10  mov     x0, x28
  1000c4f14  str     x28, [sp, #0x40]
  1000c4f18  bl      _objc_retain
  1000c4f1c  str     x0, [sp, #0x78]
  1000c4f20  adrp    x8, #0x100416000
  1000c4f24  nop
  1000c4f28  ldr     x1, [x8, #0xe00]
  1000c4f2c  str     x1, [sp, #0x48]
  1000c4f30  add     x2, sp, #0xb8
  1000c4f34  sub     x3, x29, #0xe8
  1000c4f38  mov     w4, #0x10
  1000c4f3c  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xe8] count:16]
  1000c4f40  mov     x28, x0
  1000c4f44  cbz     x28, loc_1000c5204                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xe8] count:16] == 0)
  1000c4f48  ldr     x8, [sp, #0xc8]
  1000c4f4c  adrp    x9, #0x10041a000
  1000c4f50  nop
  1000c4f54  adrp    x10, #0x10041a000
  1000c4f58  add     x10, x10, #0xb98                         ; &@selector(hitByWeapon:)
  1000c4f5c  adrp    x11, #0x100417000
  1000c4f60  add     x11, x11, #0x2e0                         ; &@selector(class)
  1000c4f64  ldr     x9, [x9, #0xb50]
  1000c4f68  str     x9, [sp, #0x68]
  1000c4f6c  ldr     x24, [x8]
  1000c4f70  ldr     x27, [x10]
  1000c4f74  str     x27, [sp, #0x50]
  1000c4f78  ldr     x19, [x11]
  1000c4f7c  str     x19, [sp, #0x58]
  1000c4f80  adrp    x8, #0x100417000
  1000c4f84  nop
  1000c4f88  adrp    x9, #0x100417000
  1000c4f8c  nop
  1000c4f90  ldr     x8, [x8, #0x3b8]
  1000c4f94  str     x8, [sp, #0xa0]
  1000c4f98  ldr     x8, [x9, #0x450]
  1000c4f9c  str     x8, [sp, #0x98]
  1000c4fa0  adrp    x8, #0x100417000
  1000c4fa4  nop
  1000c4fa8  adrp    x9, #0x100417000
  1000c4fac  add     x9, x9, #0xad8                           ; &@selector(notifyStatsSystemWithNotificationWithName:AndData:)
  1000c4fb0  ldr     x21, [x8, #0xb8]
  1000c4fb4  ldr     x8, [x9]
  1000c4fb8  str     x8, [sp, #0x90]
  1000c4fbc  adrp    x8, #0x100419000
  1000c4fc0  nop
  1000c4fc4  ldr     x8, [x8, #0x60]
  1000c4fc8  str     x8, [sp, #0x60]
  1000c4fcc  fmov    d8, #-1.00000000
loc_1000c4fd0:
  1000c4fd0  mov     x25, #0
loc_1000c4fd4:
  1000c4fd4  ldr     x8, [sp, #0xc8]
  1000c4fd8  ldr     x8, [x8]
  1000c4fdc  cmp     x8, x24
  1000c4fe0  b.eq    loc_1000c4fec                            ; if (x8 == x24)
  1000c4fe4  ldr     x0, [sp, #0x78]
  1000c4fe8  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]])
loc_1000c4fec:
  1000c4fec  ldr     x8, [sp, #0xc0]
  1000c4ff0  ldr     x20, [x8, x25, lsl #3]
  1000c4ff4  mov     x0, x23
  1000c4ff8  ldr     x1, [sp, #0xa8]
  1000c4ffc  bl      _objc_msgSend                            ; [arg1 multihit]
  1000c5000  cbz     w0, loc_1000c5018                        ; if ([arg1 multihit] == 0)
  1000c5004  mov     x0, x20
  1000c5008  ldr     x1, [sp, #0x68]
  1000c500c  mov     x2, x26
  1000c5010  bl      _objc_msgSend                            ; [x0 setMultiHitFactor:x2]
  1000c5014  mov     w26, #-1
loc_1000c5018:
  1000c5018  mov     x0, x20
  1000c501c  mov     x1, x27
  1000c5020  mov     x2, x23
  1000c5024  bl      _objc_msgSend                            ; [x0 hitByWeapon:arg1]
  1000c5028  adrp    x8, #0x10041e000
  1000c502c  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000c5030  mov     x1, x19
  1000c5034  bl      _objc_msgSend                            ; [ADMeleeWeapon class]
  1000c5038  mov     x2, x0
  1000c503c  mov     x0, x23
  1000c5040  ldr     x1, [sp, #0xa0]
  1000c5044  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADMeleeWeapon class]]
  1000c5048  cbz     w0, loc_1000c50bc                        ; if ([arg1 isKindOfClass:[ADMeleeWeapon class]] == 0)
  1000c504c  mov     x0, x23
  1000c5050  ldr     x1, [sp, #0x98]
  1000c5054  bl      _objc_msgSend                            ; [arg1 name]
  1000c5058  mov     x29, x29
  1000c505c  bl      _objc_retainAutoreleasedReturnValue
  1000c5060  mov     x20, x0
  1000c5064  adrp    x8, #0x10041d000
  1000c5068  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000c506c  mov     w2, #1
  1000c5070  mov     x1, x21
  1000c5074  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000c5078  mov     x22, x23
  1000c507c  mov     x23, x21
  1000c5080  mov     x29, x29
  1000c5084  bl      _objc_retainAutoreleasedReturnValue
  1000c5088  mov     x21, x0
  1000c508c  stp     x21, xzr, [sp]
  1000c5090  ldr     x0, [sp, #0xb0]
  1000c5094  ldr     x1, [sp, #0x90]
  1000c5098  adrp    x2, #0x1003bd000
  1000c509c  add     x2, x2, #0xbd0                           ; @"UPDATE_MELEE_WEAPON_DATA"
  1000c50a0  mov     x3, x20
  1000c50a4  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_MELEE_WEAPON_DATA" AndData:[arg1 name]]
  1000c50a8  mov     x0, x21
  1000c50ac  bl      _objc_release
  1000c50b0  mov     x0, x20
  1000c50b4  bl      _objc_release
  1000c50b8  b       loc_1000c51d0
loc_1000c50bc:
  1000c50bc  mov     x0, x23
  1000c50c0  ldr     x1, [sp, #0x98]
  1000c50c4  bl      _objc_msgSend                            ; [arg1 name]
  1000c50c8  mov     x29, x29
  1000c50cc  bl      _objc_retainAutoreleasedReturnValue
  1000c50d0  str     x0, [sp, #0x88]
  1000c50d4  adrp    x19, #0x10041d000
  1000c50d8  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000c50dc  mov     w2, #1
  1000c50e0  mov     x1, x21
  1000c50e4  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000c50e8  mov     x29, x29
  1000c50ec  bl      _objc_retainAutoreleasedReturnValue
  1000c50f0  mov     x20, x0
  1000c50f4  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000c50f8  mov     w2, #1
  1000c50fc  mov     x1, x21
  1000c5100  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000c5104  mov     x29, x29
  1000c5108  bl      _objc_retainAutoreleasedReturnValue
  1000c510c  mov     x22, x0
  1000c5110  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000c5114  mov     w2, #0
  1000c5118  mov     x1, x21
  1000c511c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c5120  str     x26, [sp, #0x80]
  1000c5124  mov     x29, x29
  1000c5128  bl      _objc_retainAutoreleasedReturnValue
  1000c512c  mov     x26, x0
  1000c5130  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000c5134  mov     w2, #0
  1000c5138  mov     x1, x21
  1000c513c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c5140  mov     x27, x26
  1000c5144  mov     x29, x29
  1000c5148  bl      _objc_retainAutoreleasedReturnValue
  1000c514c  mov     x26, x0
  1000c5150  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000c5154  ldr     x1, [sp, #0x60]
  1000c5158  mov     v0.16b, v8.16b
  1000c515c  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:-1]
  1000c5160  mov     x23, x21
  1000c5164  mov     x29, x29
  1000c5168  bl      _objc_retainAutoreleasedReturnValue
  1000c516c  mov     x21, x0
  1000c5170  stp     x21, xzr, [sp, #0x20]
  1000c5174  stp     x27, x26, [sp, #0x10]
  1000c5178  stp     x20, x22, [sp]
  1000c517c  ldr     x0, [sp, #0xb0]
  1000c5180  ldp     x19, x1, [sp, #0x88]
  1000c5184  adrp    x2, #0x1003bd000
  1000c5188  add     x2, x2, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  1000c518c  mov     x3, x19
  1000c5190  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_WEAPON_DATA" AndData:[arg1 name]]
  1000c5194  mov     x0, x21
  1000c5198  bl      _objc_release
  1000c519c  mov     x0, x26
  1000c51a0  bl      _objc_release
  1000c51a4  mov     x0, x27
  1000c51a8  bl      _objc_release
  1000c51ac  mov     x0, x22
  1000c51b0  bl      _objc_release
  1000c51b4  mov     x0, x20
  1000c51b8  bl      _objc_release
  1000c51bc  mov     x0, x19
  1000c51c0  bl      _objc_release
  1000c51c4  ldr     x22, [sp, #0x70]
  1000c51c8  ldr     x26, [sp, #0x80]
  1000c51cc  ldp     x27, x19, [sp, #0x50]
loc_1000c51d0:
  1000c51d0  add     x25, x25, #1
  1000c51d4  cmp     x25, x28
  1000c51d8  mov     x21, x23
  1000c51dc  mov     x23, x22
  1000c51e0  b.lo    loc_1000c4fd4                            ; if ((x25 + 1) <u [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&s…)
  1000c51e4  add     x2, sp, #0xb8
  1000c51e8  sub     x3, x29, #0xe8
  1000c51ec  mov     w4, #0x10
  1000c51f0  ldr     x0, [sp, #0x78]
  1000c51f4  ldr     x1, [sp, #0x48]
  1000c51f8  bl      _objc_msgSend                            ; [[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xe8] count:16]
  1000c51fc  mov     x28, x0
  1000c5200  cbnz    x28, loc_1000c4fd0                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] countByEnumeratingWithState:&sp[0xb8] objects:&x29[-0xe8] count:16] != 0)
loc_1000c5204:
  1000c5204  ldr     x0, [sp, #0x78]
  1000c5208  bl      _objc_release
  1000c520c  ldr     x27, [sp, #0x38]
  1000c5210  cbz     x27, loc_1000c528c                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count] == 0)
  1000c5214  adrp    x8, #0x10041e000
  1000c5218  ldr     x0, [x8, #8]                             ; class ADTracker
  1000c521c  adrp    x8, #0x100416000
  1000c5220  nop
  1000c5224  ldr     x1, [x8, #0xac0]
  1000c5228  ldr     x28, [sp, #0x40]
  1000c522c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c5230  mov     x29, x29
  1000c5234  bl      _objc_retainAutoreleasedReturnValue
  1000c5238  mov     x20, x0
  1000c523c  adrp    x8, #0x100417000
  1000c5240  nop
  1000c5244  ldr     x1, [x8, #0x450]
  1000c5248  mov     x0, x23
  1000c524c  bl      _objc_msgSend                            ; [arg1 name]
  1000c5250  mov     x29, x29
  1000c5254  bl      _objc_retainAutoreleasedReturnValue
  1000c5258  mov     x21, x0
  1000c525c  adrp    x8, #0x10041a000
  1000c5260  nop
  1000c5264  ldr     x1, [x8, #0xbb8]
  1000c5268  mov     w3, #1
  1000c526c  mov     x0, x20
  1000c5270  mov     x2, x21
  1000c5274  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] shootWeaponWithName:[arg1 name] didHit:1]
  1000c5278  mov     x0, x21
  1000c527c  bl      _objc_release
  1000c5280  mov     x0, x20
  1000c5284  bl      _objc_release
  1000c5288  b       loc_1000c54e8
loc_1000c528c:
  1000c528c  adrp    x8, #0x100417000
  1000c5290  nop
  1000c5294  ldr     x20, [x8, #0xad8]
  1000c5298  mov     x3, #0
  1000c529c  adrp    x2, #0x1003c2000
  1000c52a0  add     x2, x2, #0x1b0                           ; @"DECREMENT_COMBO"
  1000c52a4  ldr     x0, [sp, #0xb0]
  1000c52a8  mov     x1, x20
  1000c52ac  ldr     x28, [sp, #0x40]
  1000c52b0  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"DECREMENT_COMBO" AndData:0]
  1000c52b4  adrp    x8, #0x10041e000
  1000c52b8  ldr     x0, [x8, #8]                             ; class ADTracker
  1000c52bc  adrp    x8, #0x100416000
  1000c52c0  nop
  1000c52c4  ldr     x1, [x8, #0xac0]
  1000c52c8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c52cc  mov     x29, x29
  1000c52d0  bl      _objc_retainAutoreleasedReturnValue
  1000c52d4  mov     x1, x23
  1000c52d8  mov     x22, x0
  1000c52dc  adrp    x8, #0x100417000
  1000c52e0  nop
  1000c52e4  ldr     x21, [x8, #0x450]
  1000c52e8  mov     x0, x1
  1000c52ec  mov     x19, x1
  1000c52f0  mov     x1, x21
  1000c52f4  bl      _objc_msgSend                            ; [arg1 name]
  1000c52f8  mov     x29, x29
  1000c52fc  bl      _objc_retainAutoreleasedReturnValue
  1000c5300  mov     x23, x0
  1000c5304  adrp    x8, #0x10041a000
  1000c5308  nop
  1000c530c  ldr     x1, [x8, #0xbb8]
  1000c5310  mov     w3, #0
  1000c5314  mov     x0, x22
  1000c5318  mov     x2, x23
  1000c531c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] shootWeaponWithName:[arg1 name] didHit:0]
  1000c5320  mov     x0, x23
  1000c5324  bl      _objc_release
  1000c5328  mov     x0, x22
  1000c532c  bl      _objc_release
  1000c5330  adrp    x8, #0x10041e000
  1000c5334  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000c5338  adrp    x8, #0x100417000
  1000c533c  nop
  1000c5340  ldr     x1, [x8, #0x2e0]
  1000c5344  mov     x23, x19
  1000c5348  bl      _objc_msgSend                            ; [ADMeleeWeapon class]
  1000c534c  mov     x2, x0
  1000c5350  adrp    x8, #0x100417000
  1000c5354  nop
  1000c5358  ldr     x1, [x8, #0x3b8]
  1000c535c  mov     x0, x23
  1000c5360  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADMeleeWeapon class]]
  1000c5364  cbz     w0, loc_1000c53d0                        ; if ([arg1 isKindOfClass:[ADMeleeWeapon class]] == 0)
  1000c5368  mov     x0, x23
  1000c536c  mov     x1, x21
  1000c5370  bl      _objc_msgSend                            ; [arg1 name]
  1000c5374  mov     x19, x23
  1000c5378  mov     x29, x29
  1000c537c  bl      _objc_retainAutoreleasedReturnValue
  1000c5380  mov     x21, x0
  1000c5384  adrp    x8, #0x10041d000
  1000c5388  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000c538c  adrp    x8, #0x100417000
  1000c5390  nop
  1000c5394  ldr     x1, [x8, #0xb8]
  1000c5398  mov     w2, #0
  1000c539c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c53a0  mov     x29, x29
  1000c53a4  bl      _objc_retainAutoreleasedReturnValue
  1000c53a8  mov     x22, x0
  1000c53ac  stp     x22, xzr, [sp]
  1000c53b0  adrp    x2, #0x1003bd000
  1000c53b4  add     x2, x2, #0xbd0                           ; @"UPDATE_MELEE_WEAPON_DATA"
  1000c53b8  ldr     x0, [sp, #0xb0]
  1000c53bc  mov     x1, x20
  1000c53c0  mov     x3, x21
  1000c53c4  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_MELEE_WEAPON_DATA" AndData:[arg1 name]]
  1000c53c8  b       loc_1000c54d4
  1000c53cc  b       loc_1000c5758
loc_1000c53d0:
  1000c53d0  mov     x0, x23
  1000c53d4  mov     x1, x21
  1000c53d8  bl      _objc_msgSend                            ; [arg1 name]
  1000c53dc  mov     x19, x23
  1000c53e0  mov     x29, x29
  1000c53e4  bl      _objc_retainAutoreleasedReturnValue
  1000c53e8  mov     x21, x0
  1000c53ec  adrp    x26, #0x10041d000
  1000c53f0  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  1000c53f4  adrp    x8, #0x100417000
  1000c53f8  nop
  1000c53fc  ldr     x25, [x8, #0xb8]
  1000c5400  mov     w2, #1
  1000c5404  mov     x1, x25
  1000c5408  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000c540c  mov     x29, x29
  1000c5410  bl      _objc_retainAutoreleasedReturnValue
  1000c5414  mov     x22, x0
  1000c5418  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  1000c541c  mov     w2, #0
  1000c5420  mov     x1, x25
  1000c5424  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c5428  mov     x29, x29
  1000c542c  bl      _objc_retainAutoreleasedReturnValue
  1000c5430  mov     x23, x0
  1000c5434  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  1000c5438  mov     w2, #0
  1000c543c  mov     x1, x25
  1000c5440  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c5444  mov     x29, x29
  1000c5448  bl      _objc_retainAutoreleasedReturnValue
  1000c544c  mov     x24, x0
  1000c5450  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  1000c5454  mov     w2, #0
  1000c5458  mov     x1, x25
  1000c545c  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c5460  mov     x29, x29
  1000c5464  bl      _objc_retainAutoreleasedReturnValue
  1000c5468  mov     x25, x0
  1000c546c  ldr     x0, [x26, #0xf68]                        ; class NSNumber
  1000c5470  adrp    x8, #0x100419000
  1000c5474  nop
  1000c5478  ldr     x1, [x8, #0x60]
  1000c547c  fmov    d0, #-1.00000000
  1000c5480  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:-1]
  1000c5484  mov     x29, x29
  1000c5488  bl      _objc_retainAutoreleasedReturnValue
  1000c548c  mov     x26, x0
  1000c5490  stp     x26, xzr, [sp, #0x20]
  1000c5494  stp     x24, x25, [sp, #0x10]
  1000c5498  stp     x22, x23, [sp]
  1000c549c  adrp    x2, #0x1003bd000
  1000c54a0  add     x2, x2, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  1000c54a4  ldr     x0, [sp, #0xb0]
  1000c54a8  mov     x1, x20
  1000c54ac  mov     x3, x21
  1000c54b0  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_WEAPON_DATA" AndData:[arg1 name]]
  1000c54b4  mov     x0, x26
  1000c54b8  bl      _objc_release
  1000c54bc  mov     x0, x25
  1000c54c0  bl      _objc_release
  1000c54c4  mov     x0, x24
  1000c54c8  bl      _objc_release
  1000c54cc  mov     x0, x23
  1000c54d0  bl      _objc_release
loc_1000c54d4:
  1000c54d4  mov     x0, x22
  1000c54d8  bl      _objc_release
  1000c54dc  mov     x0, x21
  1000c54e0  bl      _objc_release
  1000c54e4  mov     x23, x19
loc_1000c54e8:
  1000c54e8  adrp    x8, #0x10041e000
  1000c54ec  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  1000c54f0  adrp    x8, #0x100417000
  1000c54f4  nop
  1000c54f8  ldr     x1, [x8, #0x2e0]
  1000c54fc  bl      _objc_msgSend                            ; [ADMeleeWeapon class]
  1000c5500  mov     x2, x0
  1000c5504  adrp    x8, #0x100417000
  1000c5508  nop
  1000c550c  ldr     x1, [x8, #0x3b8]
  1000c5510  mov     x0, x23
  1000c5514  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADMeleeWeapon class]]
  1000c5518  cbz     w0, loc_1000c5538                        ; if ([arg1 isKindOfClass:[ADMeleeWeapon class]] == 0)
  1000c551c  cbz     x27, loc_1000c5584                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count] == 0)
  1000c5520  adrp    x8, #0x10041a000
  1000c5524  nop
  1000c5528  ldr     x1, [x8, #0xba0]
  1000c552c  mov     x0, x23
  1000c5530  bl      _objc_msgSend                            ; [arg1 playHitSound]
  1000c5534  b       loc_1000c553c
loc_1000c5538:
  1000c5538  cbz     x27, loc_1000c5598                       ; if ([[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] count] == 0)
loc_1000c553c:
  1000c553c  adrp    x8, #0x100417000
  1000c5540  nop
  1000c5544  ldr     x1, [x8, #0x450]
  1000c5548  mov     x0, x23
  1000c554c  bl      _objc_msgSend                            ; [arg1 name]
  1000c5550  mov     x29, x29
  1000c5554  bl      _objc_retainAutoreleasedReturnValue
  1000c5558  mov     x20, x0
  1000c555c  adrp    x8, #0x10041a000
  1000c5560  nop
  1000c5564  ldr     x1, [x8, #0xbb0]
  1000c5568  ldr     x0, [sp, #0xb0]
  1000c556c  ldr     x2, [sp, #0x78]
  1000c5570  mov     x3, x20
  1000c5574  bl      _objc_msgSend                            ; [self checkDeathsForHitEnemies:[self calculateHitEnemiesWithWeapon:arg1 FromAngle:[[S3DEngine engine] headOrientation]] withWeaponName:[arg1 name]]
  1000c5578  mov     x0, x20
  1000c557c  bl      _objc_release
  1000c5580  b       loc_1000c5598
loc_1000c5584:
  1000c5584  adrp    x8, #0x10041a000
  1000c5588  nop
  1000c558c  ldr     x1, [x8, #0xba8]
  1000c5590  mov     x0, x23
  1000c5594  bl      _objc_msgSend                            ; [arg1 playMissSound]
loc_1000c5598:
  1000c5598  ldr     x0, [sp, #0x78]
  1000c559c  bl      _objc_release
  1000c55a0  mov     x0, x23
  1000c55a4  bl      _objc_release
  1000c55a8  ldur    x8, [x29, #-0x68]
  1000c55ac  adrp    x9, #0x1003b0000
  1000c55b0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000c55b4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000c55b8  sub     x8, x9, x8
  1000c55bc  cbnz    x8, loc_1000c55e4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c55c0  sub     sp, x29, #0x60
  1000c55c4  ldp     x29, x30, [sp, #0x60]
  1000c55c8  ldp     x20, x19, [sp, #0x50]
  1000c55cc  ldp     x22, x21, [sp, #0x40]
  1000c55d0  ldp     x24, x23, [sp, #0x30]
  1000c55d4  ldp     x26, x25, [sp, #0x20]
  1000c55d8  ldp     x28, x27, [sp, #0x10]
  1000c55dc  ldp     d9, d8, [sp], #0x70
  1000c55e0  ret
loc_1000c55e4:
  1000c55e4  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c55e8:
  1000c55e8  mov     x24, x0
loc_1000c55ec:
  1000c55ec  ldr     x28, [sp, #0x40]
  1000c55f0  b       loc_1000c56a8
  1000c55f4  mov     x24, x0
  1000c55f8  b       loc_1000c560c
  1000c55fc  mov     x24, x0
  1000c5600  mov     x0, x21
  1000c5604  bl      _objc_release
  1000c5608  mov     x23, x22
loc_1000c560c:
  1000c560c  mov     x0, x20
  1000c5610  bl      _objc_release
  1000c5614  b       loc_1000c55ec
  1000c5618  mov     x24, x0
  1000c561c  ldr     x28, [sp, #0x40]
  1000c5620  ldr     x19, [sp, #0x88]
  1000c5624  b       loc_1000c56a0
  1000c5628  mov     x24, x0
  1000c562c  ldr     x28, [sp, #0x40]
  1000c5630  ldr     x19, [sp, #0x88]
  1000c5634  b       loc_1000c5698
  1000c5638  mov     x24, x0
  1000c563c  ldr     x28, [sp, #0x40]
  1000c5640  ldr     x19, [sp, #0x88]
  1000c5644  b       loc_1000c5690
  1000c5648  mov     x24, x0
  1000c564c  ldr     x28, [sp, #0x40]
  1000c5650  ldr     x19, [sp, #0x88]
  1000c5654  b       loc_1000c5688
  1000c5658  mov     x24, x0
  1000c565c  ldr     x23, [sp, #0x70]
  1000c5660  ldr     x19, [sp, #0x88]
  1000c5664  b       loc_1000c5678
  1000c5668  mov     x24, x0
  1000c566c  mov     x0, x21
  1000c5670  bl      _objc_release
  1000c5674  ldr     x23, [sp, #0x70]
loc_1000c5678:
  1000c5678  mov     x0, x26
  1000c567c  bl      _objc_release
  1000c5680  ldr     x28, [sp, #0x40]
  1000c5684  mov     x26, x27
loc_1000c5688:
  1000c5688  mov     x0, x26
  1000c568c  bl      _objc_release
loc_1000c5690:
  1000c5690  mov     x0, x22
  1000c5694  bl      _objc_release
loc_1000c5698:
  1000c5698  mov     x0, x20
  1000c569c  bl      _objc_release
loc_1000c56a0:
  1000c56a0  mov     x0, x19
  1000c56a4  bl      _objc_release
loc_1000c56a8:
  1000c56a8  ldr     x0, [sp, #0x78]
  1000c56ac  bl      _objc_release
loc_1000c56b0:
  1000c56b0  mov     x0, x28
loc_1000c56b4:
  1000c56b4  bl      _objc_release
loc_1000c56b8:
  1000c56b8  mov     x0, x23
  1000c56bc  bl      _objc_release
  1000c56c0  mov     x0, x24
  1000c56c4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c56c8  b       loc_1000c55e8
  1000c56cc  mov     x24, x0
  1000c56d0  b       loc_1000c56b0
  1000c56d4  mov     x24, x0
  1000c56d8  b       loc_1000c56b8
  1000c56dc  mov     x24, x0
  1000c56e0  mov     x0, x20
  1000c56e4  b       loc_1000c56b4
  1000c56e8  b       loc_1000c55e8
  1000c56ec  mov     x19, x23
  1000c56f0  mov     x22, x0
  1000c56f4  b       loc_1000c5708
  1000c56f8  mov     x19, x23
  1000c56fc  mov     x22, x0
  1000c5700  mov     x0, x21
  1000c5704  bl      _objc_release
loc_1000c5708:
  1000c5708  mov     x0, x20
  1000c570c  bl      _objc_release
  1000c5710  mov     x23, x19
  1000c5714  mov     x24, x22
  1000c5718  b       loc_1000c56b0
  1000c571c  mov     x24, x0
  1000c5720  mov     x0, x20
  1000c5724  bl      _objc_release
  1000c5728  b       loc_1000c56b0
  1000c572c  mov     x20, x0
  1000c5730  b       loc_1000c5740
  1000c5734  mov     x20, x0
  1000c5738  mov     x0, x23
  1000c573c  bl      _objc_release
loc_1000c5740:
  1000c5740  mov     x0, x22
  1000c5744  b       loc_1000c57a8
  1000c5748  mov     x20, x0
  1000c574c  b       loc_1000c57a4
  1000c5750  mov     x20, x0
  1000c5754  b       loc_1000c57a4
loc_1000c5758:
  1000c5758  mov     x20, x0
  1000c575c  b       loc_1000c579c
  1000c5760  mov     x20, x0
  1000c5764  b       loc_1000c5794
  1000c5768  mov     x20, x0
  1000c576c  b       loc_1000c578c
  1000c5770  mov     x20, x0
  1000c5774  b       loc_1000c5784
  1000c5778  mov     x20, x0
  1000c577c  mov     x0, x26
  1000c5780  bl      _objc_release
loc_1000c5784:
  1000c5784  mov     x0, x25
  1000c5788  bl      _objc_release
loc_1000c578c:
  1000c578c  mov     x0, x24
  1000c5790  bl      _objc_release
loc_1000c5794:
  1000c5794  mov     x0, x23
  1000c5798  bl      _objc_release
loc_1000c579c:
  1000c579c  mov     x0, x22
  1000c57a0  bl      _objc_release
loc_1000c57a4:
  1000c57a4  mov     x0, x21
loc_1000c57a8:
  1000c57a8  bl      _objc_release
  1000c57ac  mov     x23, x19
  1000c57b0  mov     x24, x20
  1000c57b4  b       loc_1000c56b0

; ======================================================================
; -[ADBrickManager targetEnemiForExplosiveWeapon:]
; address 0x1000c57b8  size 1160  kind objc
; ======================================================================
  1000c57b8  stp     d13, d12, [sp, #-0x90]!
  1000c57bc  stp     d11, d10, [sp, #0x10]
  1000c57c0  stp     d9, d8, [sp, #0x20]
  1000c57c4  stp     x28, x27, [sp, #0x30]
  1000c57c8  stp     x26, x25, [sp, #0x40]
  1000c57cc  stp     x24, x23, [sp, #0x50]
  1000c57d0  stp     x22, x21, [sp, #0x60]
  1000c57d4  stp     x20, x19, [sp, #0x70]
  1000c57d8  stp     x29, x30, [sp, #0x80]
  1000c57dc  add     x29, sp, #0x80
  1000c57e0  sub     sp, sp, #0x110
  1000c57e4  mov     x20, x0
  1000c57e8  adrp    x22, #0x1003b0000
  1000c57ec  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c57f0  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c57f4  stur    x22, [x29, #-0x88]
  1000c57f8  mov     x0, x2
  1000c57fc  bl      _objc_retain
  1000c5800  mov     x19, x0
  1000c5804  adrp    x8, #0x10041d000
  1000c5808  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c580c  adrp    x8, #0x100417000
  1000c5810  nop
  1000c5814  ldr     x1, [x8, #0x4f0]
  1000c5818  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c581c  mov     x29, x29
  1000c5820  bl      _objc_retainAutoreleasedReturnValue
  1000c5824  mov     x21, x0
  1000c5828  adrp    x8, #0x100419000
  1000c582c  nop
  1000c5830  ldr     x1, [x8, #0x98]
  1000c5834  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  1000c5838  mov     v8.16b, v0.16b
  1000c583c  mov     x0, x21
  1000c5840  bl      _objc_release
  1000c5844  stp     xzr, xzr, [sp, #0x78]
  1000c5848  stp     xzr, xzr, [sp, #0x68]
  1000c584c  stp     xzr, xzr, [sp, #0x58]
  1000c5850  stp     xzr, xzr, [sp, #0x48]
  1000c5854  adrp    x8, #0x10041a000
  1000c5858  nop
  1000c585c  ldr     x1, [x8, #0x170]
  1000c5860  mov     x21, #0
  1000c5864  mov     x0, x20
  1000c5868  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c586c  mov     x29, x29
  1000c5870  bl      _objc_retainAutoreleasedReturnValue
  1000c5874  str     x0, [sp, #0x40]
  1000c5878  adrp    x8, #0x100416000
  1000c587c  nop
  1000c5880  ldr     x1, [x8, #0xe00]
  1000c5884  str     x1, [sp, #8]
  1000c5888  add     x2, sp, #0x48
  1000c588c  add     x3, sp, #0x88
  1000c5890  mov     w4, #0x10
  1000c5894  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000c5898  mov     x23, x0
  1000c589c  cbz     x23, loc_1000c5b90                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] == 0)
  1000c58a0  mov     x21, #0
  1000c58a4  str     wzr, [sp, #0x1c]
  1000c58a8  ldr     x8, [sp, #0x58]
  1000c58ac  fcvt    d0, s8
  1000c58b0  nop
  1000c58b4  nop
  1000c58b8  mov     x11, #-0x49f40001
  1000c58bc  movk    x11, #0x60b7
  1000c58c0  ldr     d11, #0x1001819e8                        ; d11 = 3.14159265
  1000c58c4  adrp    x9, #0x100419000
  1000c58c8  nop
  1000c58cc  ldr     x24, [x9, #0x578]
  1000c58d0  ldr     x27, [x8]
  1000c58d4  fadd    d0, d0, d11
  1000c58d8  ldr     d12, #0x1001819f0                        ; d12 = 180.0
  1000c58dc  fmul    d0, d0, d12
  1000c58e0  fdiv    d0, d0, d11
  1000c58e4  fcvtzs  w8, d0
  1000c58e8  sxtw    x9, w8
  1000c58ec  mul     x9, x9, x11                              ; t1 = ((int)((([[S3DEngine engine] headOrientation] + 3.14159) * 180) / 3.14159) * 0xffffffffb60b60b7)
  1000c58f0  lsr     x9, x9, #0x20
  1000c58f4  add     w9, w9, w8
  1000c58f8  asr     w10, w9, #8                              ; t2 = (((t1 >>> 32) + (int)((([[S3DEngine engine] headOrientation] + 3.14159) * 180) / 3.14159)) >> 8)
  1000c58fc  add     w9, w10, w9, lsr #31                     ; t3 = (t2 + (((t1 >>> 32) + (int)((([[S3DEngine engine] headOrientation] + 3.14159) * 180) / 3.14159)) >>> 31))
  1000c5900  adrp    x10, #0x10041a000
  1000c5904  nop
  1000c5908  adrp    x11, #0x100417000
  1000c590c  add     x11, x11, #0x538                         ; &@selector(spread)
  1000c5910  adrp    x12, #0x100417000
  1000c5914  add     x12, x12, #0x30                          ; &@selector(squaredDistance)
  1000c5918  adrp    x13, #0x100419000
  1000c591c  add     x13, x13, #0x380                         ; &@selector(range)
  1000c5920  ldr     x10, [x10, #0xb68]
  1000c5924  str     x10, [sp, #0x38]
  1000c5928  ldr     x10, [x11]
  1000c592c  str     x10, [sp, #0x30]
  1000c5930  ldr     x10, [x12]
  1000c5934  str     x10, [sp, #0x20]
  1000c5938  mov     w10, #0x168
  1000c593c  msub    w8, w9, w10, w8
  1000c5940  add     w9, w8, #0x168
  1000c5944  cmp     w8, #0
  1000c5948  csel    w8, w9, w8, lt                           ; t4 = (((int)((([[S3DEngine engine] headOrientation] + 3.14159) * 180) / 3.14159) - t3 * 360) < 0 ? (((int)((([[S3DEngine engine] headOrientation] + 3.14159) * 180) / 3.14159) - t3 * 360) + 360) : ((int)((([[S3DEngine engine] headOrientation] + 3.14159) * 180) / 3.14159) - t3 * 360))
  1000c594c  str     w8, [sp, #0x2c]
  1000c5950  ldr     x28, [x13]
  1000c5954  nop
  1000c5958  ldr     s8, #0x100181d18                         ; s8 = inf
  1000c595c  adrp    x8, #0x10041a000
  1000c5960  nop
  1000c5964  ldr     x8, [x8, #0x5a0]
  1000c5968  str     x8, [sp, #0x10]
loc_1000c596c:
  1000c596c  mov     x25, #0
loc_1000c5970:
  1000c5970  ldr     x8, [sp, #0x58]
  1000c5974  ldr     x8, [x8]
  1000c5978  cmp     x8, x27
  1000c597c  b.eq    loc_1000c598c                            ; if (x8 == x27)
  1000c5980  mov     x22, x21
  1000c5984  ldr     x0, [sp, #0x40]
  1000c5988  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c598c:
  1000c598c  mov     x22, x21
  1000c5990  ldr     x8, [sp, #0x50]
  1000c5994  ldr     x20, [x8, x25, lsl #3]
  1000c5998  mov     x0, x20
  1000c599c  mov     x1, x24
  1000c59a0  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c59a4  cbz     w0, loc_1000c5b28                        ; if ([x0 canBeShotAt] == 0)
  1000c59a8  mov     x22, x21
  1000c59ac  mov     x0, x20
  1000c59b0  ldr     x1, [sp, #0x38]
  1000c59b4  bl      _objc_msgSend                            ; [x0 angleFromPlayer]
  1000c59b8  mov     x22, x21
  1000c59bc  fcvt    d0, s0
  1000c59c0  fadd    d0, d0, d11
  1000c59c4  fmul    d0, d0, d12
  1000c59c8  fdiv    d0, d0, d11
  1000c59cc  fcvtzs  w8, d0
  1000c59d0  sxtw    x9, w8
  1000c59d4  mov     x10, #-0x49f40001
  1000c59d8  movk    x10, #0x60b7
  1000c59dc  mul     x9, x9, x10
  1000c59e0  lsr     x9, x9, #0x20
  1000c59e4  add     w9, w9, w8                               ; t5 = ((((int)((([x0 angleFromPlayer] + 3.14159) * 180) / 3.14159) * 0xffffffffb60b60b7) >>> 32) + (int)((([x0 angleFromPlayer] + 3.14159) * 180) / 3.14159))
  1000c59e8  asr     w10, w9, #8
  1000c59ec  add     w9, w10, w9, lsr #31
  1000c59f0  mov     w10, #0x168
  1000c59f4  msub    w8, w9, w10, w8                          ; t6 = ((int)((([x0 angleFromPlayer] + 3.14159) * 180) / 3.14159) - ((t5 >> 8) + (t5 >>> 31)) * 360)
  1000c59f8  add     w9, w8, #0x168
  1000c59fc  cmp     w8, #0
  1000c5a00  csel    w26, w9, w8, lt
  1000c5a04  mov     x0, x19
  1000c5a08  ldr     x1, [sp, #0x30]
  1000c5a0c  bl      _objc_msgSend                            ; [arg1 spread]
  1000c5a10  ldr     w8, [sp, #0x2c]
  1000c5a14  sub     w8, w8, w26
  1000c5a18  scvtf   d1, w8
  1000c5a1c  fabs    d13, d1
  1000c5a20  fcvt    d0, s0
  1000c5a24  fcmp    d13, d0
  1000c5a28  b.pl    loc_1000c5b28                            ; if (fabs((float)(t4 - (t6 < 0 ? (t6 + 360) : t6))) >= (or unordered) [arg1 spread])
  1000c5a2c  mov     x22, x21
  1000c5a30  mov     x0, x20
  1000c5a34  ldr     x1, [sp, #0x20]
  1000c5a38  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c5a3c  mov     v9.16b, v0.16b
  1000c5a40  mov     x22, x21
  1000c5a44  mov     x0, x19
  1000c5a48  mov     x1, x28
  1000c5a4c  bl      _objc_msgSend                            ; [arg1 range]
  1000c5a50  mov     v10.16b, v0.16b
  1000c5a54  mov     x22, x21
  1000c5a58  mov     x0, x19
  1000c5a5c  mov     x1, x28
  1000c5a60  bl      _objc_msgSend                            ; [arg1 range]
  1000c5a64  fmul    s0, s10, s0
  1000c5a68  fcmp    s9, s0
  1000c5a6c  b.pl    loc_1000c5b28                            ; if ([x0 squaredDistance] >= (or unordered) ([arg1 range] * [arg1 range]))
  1000c5a70  mov     x22, x21
  1000c5a74  mov     x0, x19
  1000c5a78  ldr     x1, [sp, #0x10]
  1000c5a7c  bl      _objc_msgSend                            ; [arg1 criticalSpread]
  1000c5a80  fcvt    d0, s0
  1000c5a84  fcmp    d13, d0
  1000c5a88  b.pl    loc_1000c5ad4                            ; if (fabs((float)(t4 - (t6 < 0 ? (t6 + 360) : t6))) >= (or unordered) [arg1 criticalSpread])
  1000c5a8c  mov     x22, x21
  1000c5a90  mov     x0, x20
  1000c5a94  ldr     x1, [sp, #0x20]
  1000c5a98  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c5a9c  fcmp    s0, s8
  1000c5aa0  b.pl    loc_1000c5b28                            ; if ([x0 squaredDistance] >= (or unordered) s8)
  1000c5aa4  mov     x0, x20
  1000c5aa8  bl      _objc_retain
  1000c5aac  mov     x22, x0
  1000c5ab0  mov     x0, x21
  1000c5ab4  bl      _objc_release
  1000c5ab8  mov     x0, x22
  1000c5abc  ldr     x1, [sp, #0x20]
  1000c5ac0  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c5ac4  mov     v8.16b, v0.16b
  1000c5ac8  mov     w8, #1
  1000c5acc  str     w8, [sp, #0x1c]
  1000c5ad0  b       loc_1000c5b24
loc_1000c5ad4:
  1000c5ad4  mov     x22, x21
  1000c5ad8  mov     x0, x20
  1000c5adc  ldr     x1, [sp, #0x20]
  1000c5ae0  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c5ae4  fcmp    s0, s8
  1000c5ae8  cset    w8, pl
  1000c5aec  ldr     w9, [sp, #0x1c]
  1000c5af0  orr     w8, w8, w9
  1000c5af4  and     w8, w8, #1
  1000c5af8  tbnz    w8, #0, loc_1000c5b28                    ; if ((((([x0 squaredDistance] >= (or unordered) s8) | w9) & 1) & 1))
  1000c5afc  mov     x0, x20
  1000c5b00  bl      _objc_retain
  1000c5b04  mov     x22, x0
  1000c5b08  mov     x0, x21
  1000c5b0c  bl      _objc_release
  1000c5b10  mov     x0, x22
  1000c5b14  ldr     x1, [sp, #0x20]
  1000c5b18  bl      _objc_msgSend                            ; [x0 squaredDistance]
  1000c5b1c  mov     v8.16b, v0.16b
  1000c5b20  str     wzr, [sp, #0x1c]
loc_1000c5b24:
  1000c5b24  mov     x21, x22
loc_1000c5b28:
  1000c5b28  add     x25, x25, #1
  1000c5b2c  cmp     x25, x23
  1000c5b30  b.lo    loc_1000c5970                            ; if ((x25 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16])
  1000c5b34  add     x2, sp, #0x48
  1000c5b38  add     x3, sp, #0x88
  1000c5b3c  mov     w4, #0x10
  1000c5b40  ldr     x0, [sp, #0x40]
  1000c5b44  ldr     x1, [sp, #8]
  1000c5b48  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16]
  1000c5b4c  mov     x23, x0
  1000c5b50  cbnz    x23, loc_1000c596c                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x48] objects:&sp[0x88] count:16] != 0)
  1000c5b54  ldr     x0, [sp, #0x40]
  1000c5b58  bl      _objc_release
  1000c5b5c  ldr     w8, [sp, #0x1c]
  1000c5b60  tbz     w8, #0, loc_1000c5ba0                    ; if (!(w8 & 1))
  1000c5b64  adrp    x8, #0x10041a000
  1000c5b68  nop
  1000c5b6c  ldr     x1, [x8, #0xb58]
  1000c5b70  mov     w2, #1
  1000c5b74  mov     x0, x21
  1000c5b78  bl      _objc_msgSend                            ; [x0 setNextShotWillBeCritical:1]
  1000c5b7c  adrp    x22, #0x1003b0000
  1000c5b80  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c5b84  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
  1000c5b88  b       loc_1000c5bac
  1000c5b8c  b       loc_1000c5c2c
loc_1000c5b90:
  1000c5b90  ldr     x0, [sp, #0x40]
  1000c5b94  bl      _objc_release
  1000c5b98  mov     x21, #0
  1000c5b9c  b       loc_1000c5bac
loc_1000c5ba0:
  1000c5ba0  adrp    x22, #0x1003b0000
  1000c5ba4  ldr     x22, [x22, #0x1d8]                       ; ___stack_chk_guard
  1000c5ba8  ldr     x22, [x22]                               ; x22 = ___stack_chk_guard[+0x0]
loc_1000c5bac:
  1000c5bac  mov     x0, x19
  1000c5bb0  bl      _objc_release
  1000c5bb4  ldur    x8, [x29, #-0x88]
  1000c5bb8  sub     x8, x22, x8
  1000c5bbc  cbnz    x8, loc_1000c5bf0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c5bc0  mov     x0, x21
  1000c5bc4  sub     sp, x29, #0x80
  1000c5bc8  ldp     x29, x30, [sp, #0x80]
  1000c5bcc  ldp     x20, x19, [sp, #0x70]
  1000c5bd0  ldp     x22, x21, [sp, #0x60]
  1000c5bd4  ldp     x24, x23, [sp, #0x50]
  1000c5bd8  ldp     x26, x25, [sp, #0x40]
  1000c5bdc  ldp     x28, x27, [sp, #0x30]
  1000c5be0  ldp     d9, d8, [sp, #0x20]
  1000c5be4  ldp     d11, d10, [sp, #0x10]
  1000c5be8  ldp     d13, d12, [sp], #0x90
  1000c5bec  b       _objc_autoreleaseReturnValue
loc_1000c5bf0:
  1000c5bf0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c5bf4  mov     x20, x0
  1000c5bf8  mov     x21, x22
loc_1000c5bfc:
  1000c5bfc  ldr     x0, [sp, #0x40]
  1000c5c00  bl      _objc_release
loc_1000c5c04:
  1000c5c04  mov     x0, x21
  1000c5c08  bl      _objc_release
loc_1000c5c0c:
  1000c5c0c  mov     x0, x19
  1000c5c10  bl      _objc_release
  1000c5c14  mov     x0, x20
  1000c5c18  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c5c1c  mov     x20, x0
  1000c5c20  b       loc_1000c5bfc
  1000c5c24  mov     x20, x0
  1000c5c28  b       loc_1000c5c0c
loc_1000c5c2c:
  1000c5c2c  mov     x20, x0
  1000c5c30  b       loc_1000c5c04
  1000c5c34  mov     x20, x0
  1000c5c38  mov     x21, #0
  1000c5c3c  b       loc_1000c5bfc

; ======================================================================
; -[ADBrickManager solveExplosionWithDictionary:atPosition:withWeaponName:ignoreTinnitus:]
; address 0x1000c5c40  size 1824  kind objc
; ======================================================================
  1000c5c40  stp     d15, d14, [sp, #-0xa0]!
  1000c5c44  stp     d13, d12, [sp, #0x10]
  1000c5c48  stp     d11, d10, [sp, #0x20]
  1000c5c4c  stp     d9, d8, [sp, #0x30]
  1000c5c50  stp     x28, x27, [sp, #0x40]
  1000c5c54  stp     x26, x25, [sp, #0x50]
  1000c5c58  stp     x24, x23, [sp, #0x60]
  1000c5c5c  stp     x22, x21, [sp, #0x70]
  1000c5c60  stp     x20, x19, [sp, #0x80]
  1000c5c64  stp     x29, x30, [sp, #0x90]
  1000c5c68  add     x29, sp, #0x90
  1000c5c6c  sub     sp, sp, #0x160
  1000c5c70  mov     x21, x4
  1000c5c74  mov     x19, x3
  1000c5c78  mov     v8.16b, v1.16b
  1000c5c7c  mov     v9.16b, v0.16b
  1000c5c80  mov     x20, x0
  1000c5c84  adrp    x8, #0x1003b0000
  1000c5c88  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000c5c8c  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000c5c90  stur    x8, [x29, #-0x98]
  1000c5c94  mov     x0, x2
  1000c5c98  bl      _objc_retain
  1000c5c9c  mov     x25, x0
  1000c5ca0  mov     x0, x19
  1000c5ca4  bl      _objc_retain
  1000c5ca8  mov     x28, x0
  1000c5cac  adrp    x8, #0x10041d000
  1000c5cb0  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000c5cb4  adrp    x8, #0x100416000
  1000c5cb8  nop
  1000c5cbc  ldr     x1, [x8, #0xac8]
  1000c5cc0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000c5cc4  adrp    x8, #0x100416000
  1000c5cc8  nop
  1000c5ccc  ldr     x1, [x8, #0xab8]
  1000c5cd0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000c5cd4  mov     x27, x0
  1000c5cd8  adrp    x8, #0x10041a000
  1000c5cdc  nop
  1000c5ce0  ldr     x1, [x8, #0x170]
  1000c5ce4  mov     x0, x20
  1000c5ce8  bl      _objc_msgSend                            ; [self allPotentialTargets]
  1000c5cec  str     w21, [sp, #0x4c]
  1000c5cf0  str     x20, [sp, #0x50]
  1000c5cf4  stp     x27, x28, [sp, #0x78]
  1000c5cf8  mov     x29, x29
  1000c5cfc  bl      _objc_retainAutoreleasedReturnValue
  1000c5d00  stp     xzr, xzr, [sp, #0xc8]
  1000c5d04  stp     xzr, xzr, [sp, #0xb8]
  1000c5d08  stp     xzr, xzr, [sp, #0xa8]
  1000c5d0c  stp     xzr, xzr, [sp, #0x98]
  1000c5d10  bl      _objc_retain
  1000c5d14  mov     x27, x0
  1000c5d18  str     x27, [sp, #0x70]
  1000c5d1c  adrp    x8, #0x100416000
  1000c5d20  nop
  1000c5d24  ldr     x1, [x8, #0xe00]
  1000c5d28  str     x1, [sp, #0x58]
  1000c5d2c  add     x2, sp, #0x98
  1000c5d30  add     x3, sp, #0xd8
  1000c5d34  mov     w4, #0x10
  1000c5d38  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16]
  1000c5d3c  mov     x19, x0
  1000c5d40  cbz     x19, loc_1000c5fc8                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16] == 0)
  1000c5d44  ldr     x8, [sp, #0xa8]
  1000c5d48  ldr     x26, [x8]
  1000c5d4c  adrp    x8, #0x100419000
  1000c5d50  nop
  1000c5d54  ldr     x8, [x8, #0x578]
  1000c5d58  str     x8, [sp, #0x88]
  1000c5d5c  adrp    x8, #0x100417000
  1000c5d60  nop
  1000c5d64  ldr     x28, [x8, #8]
  1000c5d68  adrp    x8, #0x100417000
  1000c5d6c  nop
  1000c5d70  ldr     x24, [x8, #0x40]
  1000c5d74  adrp    x8, #0x100417000
  1000c5d78  nop
  1000c5d7c  ldr     x8, [x8, #0x48]
  1000c5d80  str     x8, [sp, #0x90]
  1000c5d84  adrp    x8, #0x100419000
  1000c5d88  nop
  1000c5d8c  ldr     x8, [x8, #0x3c8]
  1000c5d90  str     x8, [sp, #0x68]
  1000c5d94  adrp    x8, #0x100416000
  1000c5d98  nop
  1000c5d9c  ldr     x8, [x8, #0xd90]
  1000c5da0  str     x8, [sp, #0x60]
loc_1000c5da4:
  1000c5da4  mov     x21, #0
loc_1000c5da8:
  1000c5da8  ldr     x8, [sp, #0xa8]
  1000c5dac  ldr     x8, [x8]
  1000c5db0  cmp     x8, x26
  1000c5db4  b.eq    loc_1000c5dc0                            ; if (x8 == x26)
  1000c5db8  mov     x0, x27
  1000c5dbc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self allPotentialTargets])
loc_1000c5dc0:
  1000c5dc0  ldr     x8, [sp, #0xa0]
  1000c5dc4  ldr     x22, [x8, x21, lsl #3]
  1000c5dc8  mov     x0, x22
  1000c5dcc  ldr     x1, [sp, #0x88]
  1000c5dd0  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000c5dd4  cbz     w0, loc_1000c5f9c                        ; if ([x0 canBeShotAt] == 0)
  1000c5dd8  mov     x0, x22
  1000c5ddc  mov     x1, x28
  1000c5de0  bl      _objc_msgSend                            ; [x0 position]
  1000c5de4  mov     v10.16b, v0.16b
  1000c5de8  mov     x0, x22
  1000c5dec  mov     x1, x28
  1000c5df0  bl      _objc_msgSend                            ; [x0 position]
  1000c5df4  mov     v11.16b, v0.16b
  1000c5df8  mov     x0, x22
  1000c5dfc  mov     x1, x28
  1000c5e00  bl      _objc_msgSend                            ; [x0 position]
  1000c5e04  mov     v12.16b, v1.16b
  1000c5e08  mov     x0, x22
  1000c5e0c  mov     x1, x28
  1000c5e10  bl      _objc_msgSend                            ; [x0 position]
  1000c5e14  mov     v13.16b, v1.16b
  1000c5e18  mov     x0, x25
  1000c5e1c  mov     x1, x24
  1000c5e20  adrp    x2, #0x1003bf000
  1000c5e24  add     x2, x2, #0xe50                           ; @"radius"
  1000c5e28  bl      _objc_msgSend                            ; [arg1 objectForKey:@"radius"]
  1000c5e2c  mov     x29, x29
  1000c5e30  bl      _objc_retainAutoreleasedReturnValue
  1000c5e34  mov     x20, x0
  1000c5e38  ldr     x1, [sp, #0x90]
  1000c5e3c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"radius"] floatValue]
  1000c5e40  mov     v14.16b, v0.16b
  1000c5e44  mov     x0, x25
  1000c5e48  mov     x1, x24
  1000c5e4c  adrp    x2, #0x1003bf000
  1000c5e50  add     x2, x2, #0xe50                           ; @"radius"
  1000c5e54  bl      _objc_msgSend                            ; [arg1 objectForKey:@"radius"]
  1000c5e58  mov     x23, x24
  1000c5e5c  mov     x24, x19
  1000c5e60  mov     x29, x29
  1000c5e64  bl      _objc_retainAutoreleasedReturnValue
  1000c5e68  mov     x19, x0
  1000c5e6c  ldr     x1, [sp, #0x90]
  1000c5e70  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"radius"] floatValue]
  1000c5e74  fsub    d1, d9, d10
  1000c5e78  fsub    d2, d9, d11
  1000c5e7c  fmul    d1, d1, d2
  1000c5e80  fsub    d2, d8, d12
  1000c5e84  fsub    d3, d8, d13
  1000c5e88  fmul    d2, d2, d3
  1000c5e8c  fadd    d1, d1, d2                               ; t1 = (((arg2.0 - [x0 position].0) * (arg2.0 - [x0 position].0)) + ((arg2.1 - [x0 position].1) * (arg2.1 - [x0 position].1)))
  1000c5e90  fcvt    s10, d1
  1000c5e94  fmul    s11, s14, s0
  1000c5e98  mov     x0, x19
  1000c5e9c  bl      _objc_release
  1000c5ea0  mov     x0, x20
  1000c5ea4  bl      _objc_release
  1000c5ea8  fcmp    s10, s11
  1000c5eac  mov     x19, x24
  1000c5eb0  mov     x24, x23
  1000c5eb4  b.pl    loc_1000c5f9c                            ; if (t1 >= (or unordered) ([[arg1 objectForKey:@"radius"] floatValue] * [[arg1 objectForKey:@"radius"] floatValue]))
  1000c5eb8  mov     x0, x25
  1000c5ebc  mov     x1, x24
  1000c5ec0  adrp    x2, #0x1003ba000
  1000c5ec4  add     x2, x2, #0x490                           ; @"damages"
  1000c5ec8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"damages"]
  1000c5ecc  mov     x27, x25
  1000c5ed0  mov     x29, x29
  1000c5ed4  bl      _objc_retainAutoreleasedReturnValue
  1000c5ed8  mov     x25, x0
  1000c5edc  ldr     x1, [sp, #0x90]
  1000c5ee0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"damages"] floatValue]
  1000c5ee4  mov     v10.16b, v0.16b
  1000c5ee8  mov     x0, x27
  1000c5eec  mov     x1, x24
  1000c5ef0  adrp    x2, #0x1003ba000
  1000c5ef4  add     x2, x2, #0x550                           ; @"dispersal"
  1000c5ef8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"dispersal"]
  1000c5efc  mov     x29, x29
  1000c5f00  bl      _objc_retainAutoreleasedReturnValue
  1000c5f04  mov     x20, x0
  1000c5f08  ldr     x1, [sp, #0x90]
  1000c5f0c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"dispersal"] floatValue]
  1000c5f10  mov     v11.16b, v0.16b
  1000c5f14  mov     x0, x27
  1000c5f18  mov     x1, x24
  1000c5f1c  adrp    x2, #0x1003bf000
  1000c5f20  add     x2, x2, #0xe50                           ; @"radius"
  1000c5f24  bl      _objc_msgSend                            ; [arg1 objectForKey:@"radius"]
  1000c5f28  mov     x23, x24
  1000c5f2c  mov     x24, x19
  1000c5f30  mov     x29, x29
  1000c5f34  bl      _objc_retainAutoreleasedReturnValue
  1000c5f38  mov     x19, x0
  1000c5f3c  ldr     x1, [sp, #0x90]
  1000c5f40  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"radius"] floatValue]
  1000c5f44  mov     v4.16b, v0.16b
  1000c5f48  mov     x0, x22
  1000c5f4c  ldr     x1, [sp, #0x68]
  1000c5f50  mov     v0.16b, v9.16b
  1000c5f54  mov     v1.16b, v8.16b
  1000c5f58  mov     v2.16b, v10.16b
  1000c5f5c  mov     v3.16b, v11.16b
  1000c5f60  ldr     x2, [sp, #0x80]
  1000c5f64  bl      _objc_msgSend                            ; [x0 hitByExplosionAtPosition:{arg2.0, arg2.1} withDamages:[[arg1 objectForKey:@"damages"] floatValue] dispersal:[[arg1 objectForKey:@"dispersal"] floatValue] radius:[[arg1 objectForKey:@"radius"] floatValue] powerupname:arg3]
  1000c5f68  mov     x0, x19
  1000c5f6c  bl      _objc_release
  1000c5f70  mov     x0, x20
  1000c5f74  bl      _objc_release
  1000c5f78  mov     x0, x25
  1000c5f7c  bl      _objc_release
  1000c5f80  ldr     x1, [sp, #0x60]
  1000c5f84  mov     x2, x22
  1000c5f88  mov     x25, x27
  1000c5f8c  ldp     x27, x0, [sp, #0x70]
  1000c5f90  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] addObject:x2]
  1000c5f94  mov     x19, x24
  1000c5f98  mov     x24, x23
loc_1000c5f9c:
  1000c5f9c  add     x21, x21, #1
  1000c5fa0  cmp     x21, x19
  1000c5fa4  b.lo    loc_1000c5da8                            ; if ((x21 + 1) <u [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16])
  1000c5fa8  add     x2, sp, #0x98
  1000c5fac  add     x3, sp, #0xd8
  1000c5fb0  mov     w4, #0x10
  1000c5fb4  mov     x0, x27
  1000c5fb8  ldr     x1, [sp, #0x58]
  1000c5fbc  bl      _objc_msgSend                            ; [[self allPotentialTargets] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16]
  1000c5fc0  mov     x19, x0
  1000c5fc4  cbnz    x19, loc_1000c5da4                       ; if ([[self allPotentialTargets] countByEnumeratingWithState:&sp[0x98] objects:&sp[0xd8] count:16] != 0)
loc_1000c5fc8:
  1000c5fc8  str     x25, [sp, #0x40]
  1000c5fcc  mov     x0, x27
  1000c5fd0  mov     x26, x27
  1000c5fd4  bl      _objc_release
  1000c5fd8  ldp     x27, x28, [sp, #0x78]
  1000c5fdc  ldr     w8, [sp, #0x4c]
  1000c5fe0  tbnz    w8, #0, loc_1000c6074                    ; if ((arg4 & 1))
  1000c5fe4  fmul    d0, d9, d9
  1000c5fe8  fmul    d1, d8, d8
  1000c5fec  fadd    d0, d0, d1
  1000c5ff0  fcvt    s8, d0
  1000c5ff4  fmov    s0, #25.00000000
  1000c5ff8  fcmp    s8, s0
  1000c5ffc  b.pl    loc_1000c6074                            ; if (((arg2.0 * arg2.0) + (arg2.1 * arg2.1)) >= (or unordered) 25)
  1000c6000  adrp    x8, #0x100417000
  1000c6004  nop
  1000c6008  ldr     x1, [x8, #0xac0]
  1000c600c  ldr     x0, [sp, #0x50]
  1000c6010  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c6014  mov     x29, x29
  1000c6018  bl      _objc_retainAutoreleasedReturnValue
  1000c601c  mov     x20, x0
  1000c6020  adrp    x8, #0x100419000
  1000c6024  nop
  1000c6028  ldr     x1, [x8, #0x90]
  1000c602c  bl      _objc_msgSend                            ; [[self gameplayViewController] player]
  1000c6030  fcvt    d8, s8
  1000c6034  mov     x29, x29
  1000c6038  bl      _objc_retainAutoreleasedReturnValue
  1000c603c  mov     x19, x0
  1000c6040  fmov    d0, #-25.00000000
  1000c6044  fdiv    d0, d8, d0
  1000c6048  fmov    d1, #1.00000000
  1000c604c  fadd    d0, d0, d1
  1000c6050  fcvt    s0, d0
  1000c6054  adrp    x8, #0x10041a000
  1000c6058  nop
  1000c605c  ldr     x1, [x8, #0xbc0]
  1000c6060  bl      _objc_msgSend                            ; [[[self gameplayViewController] player] startTinitusWithIntensity:((((arg2.0 * arg2.0) + (arg2.1 * arg2.1)) / -25) + 1)]
  1000c6064  mov     x0, x19
  1000c6068  bl      _objc_release
  1000c606c  mov     x0, x20
  1000c6070  bl      _objc_release
loc_1000c6074:
  1000c6074  adrp    x25, #0x10041d000
  1000c6078  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000c607c  adrp    x8, #0x100417000
  1000c6080  nop
  1000c6084  ldr     x24, [x8, #0xb8]
  1000c6088  mov     w2, #1
  1000c608c  mov     x1, x24
  1000c6090  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  1000c6094  mov     x29, x29
  1000c6098  bl      _objc_retainAutoreleasedReturnValue
  1000c609c  mov     x20, x0
  1000c60a0  ldr     x19, [x25, #0xf68]                       ; class NSNumber
  1000c60a4  adrp    x8, #0x100416000
  1000c60a8  nop
  1000c60ac  ldr     x21, [x8, #0xe30]
  1000c60b0  mov     x0, x27
  1000c60b4  mov     x1, x21
  1000c60b8  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] count]
  1000c60bc  cmp     x0, #0
  1000c60c0  cset    w2, ne
  1000c60c4  mov     x0, x19
  1000c60c8  mov     x1, x24
  1000c60cc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:([[[NSMutableArray alloc] init] count] != 0)]
  1000c60d0  mov     x29, x29
  1000c60d4  bl      _objc_retainAutoreleasedReturnValue
  1000c60d8  mov     x22, x0
  1000c60dc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000c60e0  mov     w2, #0
  1000c60e4  mov     x1, x24
  1000c60e8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c60ec  mov     x29, x29
  1000c60f0  bl      _objc_retainAutoreleasedReturnValue
  1000c60f4  mov     x23, x0
  1000c60f8  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000c60fc  mov     w2, #0
  1000c6100  mov     x1, x24
  1000c6104  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  1000c6108  mov     x29, x29
  1000c610c  bl      _objc_retainAutoreleasedReturnValue
  1000c6110  mov     x24, x0
  1000c6114  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000c6118  adrp    x8, #0x100419000
  1000c611c  nop
  1000c6120  ldr     x1, [x8, #0x60]
  1000c6124  fmov    d0, #-1.00000000
  1000c6128  bl      _objc_msgSend                            ; [NSNumber numberWithDouble:-1]
  1000c612c  mov     x29, x29
  1000c6130  bl      _objc_retainAutoreleasedReturnValue
  1000c6134  mov     x19, x0
  1000c6138  adrp    x8, #0x100417000
  1000c613c  nop
  1000c6140  ldr     x1, [x8, #0xad8]
  1000c6144  stp     x19, xzr, [sp, #0x20]
  1000c6148  stp     x23, x24, [sp, #0x10]
  1000c614c  stp     x20, x22, [sp]
  1000c6150  adrp    x2, #0x1003bd000
  1000c6154  add     x2, x2, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  1000c6158  ldr     x25, [sp, #0x50]
  1000c615c  mov     x0, x25
  1000c6160  mov     x3, x28
  1000c6164  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_WEAPON_DATA" AndData:arg3]
  1000c6168  mov     x0, x19
  1000c616c  bl      _objc_release
  1000c6170  mov     x0, x24
  1000c6174  bl      _objc_release
  1000c6178  mov     x0, x23
  1000c617c  bl      _objc_release
  1000c6180  mov     x0, x22
  1000c6184  bl      _objc_release
  1000c6188  mov     x0, x20
  1000c618c  bl      _objc_release
  1000c6190  adrp    x8, #0x10041a000
  1000c6194  nop
  1000c6198  ldr     x1, [x8, #0xbb0]
  1000c619c  mov     x0, x25
  1000c61a0  mov     x2, x27
  1000c61a4  mov     x3, x28
  1000c61a8  bl      _objc_msgSend                            ; [self checkDeathsForHitEnemies:[[NSMutableArray alloc] init] withWeaponName:arg3]
  1000c61ac  mov     x0, x27
  1000c61b0  mov     x1, x21
  1000c61b4  bl      _objc_msgSend                            ; [[[NSMutableArray alloc] init] count]
  1000c61b8  cmp     x0, #0
  1000c61bc  cset    w19, ne
  1000c61c0  mov     x0, x26
  1000c61c4  bl      _objc_release
  1000c61c8  mov     x0, x27
  1000c61cc  bl      _objc_release
  1000c61d0  mov     x0, x28
  1000c61d4  bl      _objc_release
  1000c61d8  ldr     x0, [sp, #0x40]
  1000c61dc  bl      _objc_release
  1000c61e0  ldur    x8, [x29, #-0x98]
  1000c61e4  adrp    x9, #0x1003b0000
  1000c61e8  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000c61ec  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000c61f0  sub     x8, x9, x8
  1000c61f4  cbnz    x8, loc_1000c622c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c61f8  mov     x0, x19
  1000c61fc  sub     sp, x29, #0x90
  1000c6200  ldp     x29, x30, [sp, #0x90]
  1000c6204  ldp     x20, x19, [sp, #0x80]
  1000c6208  ldp     x22, x21, [sp, #0x70]
  1000c620c  ldp     x24, x23, [sp, #0x60]
  1000c6210  ldp     x26, x25, [sp, #0x50]
  1000c6214  ldp     x28, x27, [sp, #0x40]
  1000c6218  ldp     d9, d8, [sp, #0x30]
  1000c621c  ldp     d11, d10, [sp, #0x20]
  1000c6220  ldp     d13, d12, [sp, #0x10]
  1000c6224  ldp     d15, d14, [sp], #0xa0
  1000c6228  ret
loc_1000c622c:
  1000c622c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c6230:
  1000c6230  str     x27, [sp, #0x70]
  1000c6234  mov     x21, x0
  1000c6238  b       loc_1000c6260
  1000c623c  str     x27, [sp, #0x70]
  1000c6240  mov     x21, x0
  1000c6244  b       loc_1000c6258
  1000c6248  str     x27, [sp, #0x70]
  1000c624c  mov     x21, x0
  1000c6250  mov     x0, x19
  1000c6254  bl      _objc_release
loc_1000c6258:
  1000c6258  mov     x0, x20
  1000c625c  bl      _objc_release
loc_1000c6260:
  1000c6260  ldr     x28, [sp, #0x80]
  1000c6264  b       loc_1000c62a0
  1000c6268  mov     x21, x0
  1000c626c  ldr     x28, [sp, #0x80]
  1000c6270  b       loc_1000c6294
  1000c6274  mov     x21, x0
  1000c6278  b       loc_1000c6288
  1000c627c  mov     x21, x0
  1000c6280  mov     x0, x19
  1000c6284  bl      _objc_release
loc_1000c6288:
  1000c6288  ldr     x28, [sp, #0x80]
  1000c628c  mov     x0, x20
  1000c6290  bl      _objc_release
loc_1000c6294:
  1000c6294  mov     x0, x25
  1000c6298  bl      _objc_release
  1000c629c  mov     x25, x27
loc_1000c62a0:
  1000c62a0  ldp     x19, x27, [sp, #0x70]
  1000c62a4  mov     x0, x19
  1000c62a8  bl      _objc_release
loc_1000c62ac:
  1000c62ac  mov     x0, x19
  1000c62b0  bl      _objc_release
loc_1000c62b4:
  1000c62b4  mov     x0, x27
  1000c62b8  bl      _objc_release
loc_1000c62bc:
  1000c62bc  mov     x0, x28
  1000c62c0  bl      _objc_release
  1000c62c4  mov     x0, x25
  1000c62c8  bl      _objc_release
  1000c62cc  mov     x0, x21
  1000c62d0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c62d4  b       loc_1000c6230
  1000c62d8  mov     x21, x0
  1000c62dc  b       loc_1000c6340
  1000c62e0  mov     x21, x0
  1000c62e4  b       loc_1000c62bc
  1000c62e8  mov     x21, x0
  1000c62ec  b       loc_1000c6338
  1000c62f0  mov     x21, x0
  1000c62f4  b       loc_1000c62b4
  1000c62f8  b       loc_1000c6230
  1000c62fc  mov     x21, x0
  1000c6300  b       loc_1000c6330
  1000c6304  mov     x21, x0
  1000c6308  b       loc_1000c6328
  1000c630c  mov     x21, x0
  1000c6310  b       loc_1000c6320
  1000c6314  mov     x21, x0
  1000c6318  mov     x0, x19
  1000c631c  bl      _objc_release
loc_1000c6320:
  1000c6320  mov     x0, x24
  1000c6324  bl      _objc_release
loc_1000c6328:
  1000c6328  mov     x0, x23
  1000c632c  bl      _objc_release
loc_1000c6330:
  1000c6330  mov     x0, x22
loc_1000c6334:
  1000c6334  bl      _objc_release
loc_1000c6338:
  1000c6338  mov     x0, x20
  1000c633c  bl      _objc_release
loc_1000c6340:
  1000c6340  ldr     x25, [sp, #0x40]
  1000c6344  mov     x19, x26
  1000c6348  b       loc_1000c62ac
  1000c634c  mov     x21, x0
  1000c6350  b       loc_1000c6338
  1000c6354  mov     x21, x0
  1000c6358  mov     x0, x19
  1000c635c  b       loc_1000c6334

; ======================================================================
; -[ADBrickManager solveExplosionOfProjectile:]
; address 0x1000c6360  size 836  kind objc
; ======================================================================
  1000c6360  stp     d9, d8, [sp, #-0x70]!
  1000c6364  stp     x28, x27, [sp, #0x10]
  1000c6368  stp     x26, x25, [sp, #0x20]
  1000c636c  stp     x24, x23, [sp, #0x30]
  1000c6370  stp     x22, x21, [sp, #0x40]
  1000c6374  stp     x20, x19, [sp, #0x50]
  1000c6378  stp     x29, x30, [sp, #0x60]
  1000c637c  add     x29, sp, #0x60
  1000c6380  sub     sp, sp, #0x20
  1000c6384  mov     x23, x0
  1000c6388  mov     x0, x2
  1000c638c  bl      _objc_retain
  1000c6390  mov     x19, x0
  1000c6394  adrp    x20, #0x10041d000
  1000c6398  ldr     x21, [x20, #0xf20]                       ; class NSArray
  1000c639c  adrp    x27, #0x10041d000
  1000c63a0  ldr     x22, [x27, #0xf68]                       ; class NSNumber
  1000c63a4  adrp    x8, #0x100419000
  1000c63a8  nop
  1000c63ac  ldr     x1, [x8, #0x3c0]
  1000c63b0  bl      _objc_msgSend                            ; [arg1 explosionRadius]
  1000c63b4  adrp    x8, #0x100418000
  1000c63b8  nop
  1000c63bc  ldr     x26, [x8, #0x310]
  1000c63c0  mov     x0, x22
  1000c63c4  mov     x1, x26
  1000c63c8  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[arg1 explosionRadius]]
  1000c63cc  str     x23, [sp, #0x18]
  1000c63d0  mov     x29, x29
  1000c63d4  bl      _objc_retainAutoreleasedReturnValue
  1000c63d8  mov     x23, x0
  1000c63dc  ldr     x25, [x27, #0xf68]                       ; class NSNumber
  1000c63e0  adrp    x8, #0x100418000
  1000c63e4  nop
  1000c63e8  ldr     x22, [x8, #0x930]
  1000c63ec  mov     x0, x19
  1000c63f0  mov     x1, x22
  1000c63f4  bl      _objc_msgSend                            ; [arg1 weapon]
  1000c63f8  mov     x29, x29
  1000c63fc  bl      _objc_retainAutoreleasedReturnValue
  1000c6400  mov     x24, x0
  1000c6404  adrp    x8, #0x100419000
  1000c6408  nop
  1000c640c  ldr     x1, [x8, #0x370]
  1000c6410  bl      _objc_msgSend                            ; [[arg1 weapon] damages]
  1000c6414  mov     x0, x25
  1000c6418  mov     x1, x26
  1000c641c  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[[arg1 weapon] damages]]
  1000c6420  mov     x29, x29
  1000c6424  bl      _objc_retainAutoreleasedReturnValue
  1000c6428  mov     x25, x0
  1000c642c  ldr     x28, [x27, #0xf68]                       ; class NSNumber
  1000c6430  mov     x0, x19
  1000c6434  mov     x1, x22
  1000c6438  bl      _objc_msgSend                            ; [arg1 weapon]
  1000c643c  mov     x29, x29
  1000c6440  bl      _objc_retainAutoreleasedReturnValue
  1000c6444  mov     x27, x0
  1000c6448  adrp    x8, #0x100419000
  1000c644c  nop
  1000c6450  ldr     x1, [x8, #0x378]
  1000c6454  bl      _objc_msgSend                            ; [[arg1 weapon] dispersal]
  1000c6458  mov     x0, x28
  1000c645c  mov     x1, x26
  1000c6460  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[[arg1 weapon] dispersal]]
  1000c6464  mov     x29, x29
  1000c6468  bl      _objc_retainAutoreleasedReturnValue
  1000c646c  mov     x28, x0
  1000c6470  adrp    x8, #0x100417000
  1000c6474  nop
  1000c6478  ldr     x26, [x8, #0xc0]
  1000c647c  stp     x28, xzr, [sp, #8]
  1000c6480  str     x25, [sp]
  1000c6484  mov     x0, x21
  1000c6488  mov     x1, x26
  1000c648c  mov     x2, x23
  1000c6490  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:[NSNumber numberWithFloat:[arg1 explosionRadius]], [NSNumber numberWithFloat:[[arg1 weapon] damages]], [NSNumber numberWithFloat:[[arg1 weapon] dispersal]], nil]
  1000c6494  mov     x29, x29
  1000c6498  bl      _objc_retainAutoreleasedReturnValue
  1000c649c  mov     x21, x0
  1000c64a0  mov     x0, x28
  1000c64a4  bl      _objc_release
  1000c64a8  mov     x0, x27
  1000c64ac  bl      _objc_release
  1000c64b0  mov     x0, x25
  1000c64b4  bl      _objc_release
  1000c64b8  mov     x0, x24
  1000c64bc  bl      _objc_release
  1000c64c0  mov     x0, x23
  1000c64c4  bl      _objc_release
  1000c64c8  ldr     x0, [x20, #0xf20]                        ; class NSArray
  1000c64cc  adrp    x8, #0x1003ba000
  1000c64d0  add     x8, x8, #0x550                           ; @"dispersal"
  1000c64d4  adrp    x9, #0x1003ba000
  1000c64d8  add     x9, x9, #0x490                           ; @"damages"
  1000c64dc  stp     x8, xzr, [sp, #8]
  1000c64e0  str     x9, [sp]
  1000c64e4  adrp    x2, #0x1003bf000
  1000c64e8  add     x2, x2, #0xe50                           ; @"radius"
  1000c64ec  mov     x1, x26
  1000c64f0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"radius", @"damages", @"dispersal", nil]
  1000c64f4  mov     x29, x29
  1000c64f8  bl      _objc_retainAutoreleasedReturnValue
  1000c64fc  mov     x23, x0
  1000c6500  adrp    x8, #0x10041d000
  1000c6504  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000c6508  adrp    x8, #0x10041a000
  1000c650c  nop
  1000c6510  ldr     x1, [x8, #0xbc8]
  1000c6514  mov     x2, x21
  1000c6518  mov     x3, x23
  1000c651c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:[arg1 explosionRadius]], [NSNumber numberWithFloat:[[arg1 weapon] damages]], [NSNumber numberWithFloat:[[arg1 weapon] dispersal]], nil] forKeys:[NSArray arrayWithObjects:@"radius", @"damages", @"dispersal", nil]]
  1000c6520  mov     x29, x29
  1000c6524  bl      _objc_retainAutoreleasedReturnValue
  1000c6528  mov     x24, x0
  1000c652c  adrp    x8, #0x100417000
  1000c6530  nop
  1000c6534  ldr     x1, [x8, #8]
  1000c6538  mov     x0, x19
  1000c653c  bl      _objc_msgSend                            ; [arg1 position]
  1000c6540  mov     v8.16b, v0.16b
  1000c6544  mov     v9.16b, v1.16b
  1000c6548  mov     x0, x19
  1000c654c  mov     x1, x22
  1000c6550  bl      _objc_msgSend                            ; [arg1 weapon]
  1000c6554  mov     x29, x29
  1000c6558  bl      _objc_retainAutoreleasedReturnValue
  1000c655c  mov     x22, x0
  1000c6560  adrp    x8, #0x100417000
  1000c6564  nop
  1000c6568  ldr     x1, [x8, #0x450]
  1000c656c  bl      _objc_msgSend                            ; [[arg1 weapon] name]
  1000c6570  mov     x29, x29
  1000c6574  bl      _objc_retainAutoreleasedReturnValue
  1000c6578  mov     x25, x0
  1000c657c  adrp    x8, #0x100419000
  1000c6580  nop
  1000c6584  ldr     x1, [x8, #0x400]
  1000c6588  mov     w4, #0
  1000c658c  ldr     x0, [sp, #0x18]
  1000c6590  mov     x2, x24
  1000c6594  mov     v0.16b, v8.16b
  1000c6598  mov     v1.16b, v9.16b
  1000c659c  mov     x3, x25
  1000c65a0  bl      _objc_msgSend                            ; [self solveExplosionWithDictionary:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:[NSNumber numberWithFloat:[arg1 explosionRadius]], [NSNumber numberWithFloat:[[arg1 weapon] damages]], [NSNumber numberWithFloat:[[arg1 weapon] dispersal]], nil] forKeys:[NSArray arrayWithObjects:@"radius", @"damages", @"dispersal", nil]] atPosition:{[arg1 position].0, [arg1 position].1} withWeaponName:[[arg1 weapon] name] ignoreTinnitus:0]
  1000c65a4  mov     x0, x25
  1000c65a8  bl      _objc_release
  1000c65ac  mov     x0, x22
  1000c65b0  bl      _objc_release
  1000c65b4  mov     x0, x24
  1000c65b8  bl      _objc_release
  1000c65bc  mov     x0, x23
  1000c65c0  bl      _objc_release
  1000c65c4  mov     x0, x21
  1000c65c8  bl      _objc_release
  1000c65cc  mov     x0, x19
  1000c65d0  sub     sp, x29, #0x60
  1000c65d4  ldp     x29, x30, [sp, #0x60]
  1000c65d8  ldp     x20, x19, [sp, #0x50]
  1000c65dc  ldp     x22, x21, [sp, #0x40]
  1000c65e0  ldp     x24, x23, [sp, #0x30]
  1000c65e4  ldp     x26, x25, [sp, #0x20]
  1000c65e8  ldp     x28, x27, [sp, #0x10]
  1000c65ec  ldp     d9, d8, [sp], #0x70
  1000c65f0  b       _objc_release
  1000c65f4  mov     x20, x0
  1000c65f8  b       loc_1000c6694
  1000c65fc  mov     x20, x0
  1000c6600  b       loc_1000c6640
  1000c6604  mov     x20, x0
  1000c6608  b       loc_1000c6630
  1000c660c  mov     x20, x0
  1000c6610  b       loc_1000c667c
  1000c6614  mov     x20, x0
  1000c6618  b       loc_1000c6648
  1000c661c  mov     x20, x0
  1000c6620  b       loc_1000c6638
  1000c6624  mov     x20, x0
  1000c6628  mov     x0, x28
  1000c662c  bl      _objc_release
loc_1000c6630:
  1000c6630  mov     x0, x27
  1000c6634  bl      _objc_release
loc_1000c6638:
  1000c6638  mov     x0, x25
  1000c663c  bl      _objc_release
loc_1000c6640:
  1000c6640  mov     x0, x24
  1000c6644  bl      _objc_release
loc_1000c6648:
  1000c6648  mov     x0, x23
  1000c664c  b       loc_1000c6690
  1000c6650  mov     x20, x0
  1000c6654  b       loc_1000c668c
  1000c6658  mov     x20, x0
  1000c665c  b       loc_1000c6684
  1000c6660  mov     x20, x0
  1000c6664  b       loc_1000c6674
  1000c6668  mov     x20, x0
  1000c666c  mov     x0, x25
  1000c6670  bl      _objc_release
loc_1000c6674:
  1000c6674  mov     x0, x22
  1000c6678  bl      _objc_release
loc_1000c667c:
  1000c667c  mov     x0, x24
  1000c6680  bl      _objc_release
loc_1000c6684:
  1000c6684  mov     x0, x23
  1000c6688  bl      _objc_release
loc_1000c668c:
  1000c668c  mov     x0, x21
loc_1000c6690:
  1000c6690  bl      _objc_release
loc_1000c6694:
  1000c6694  mov     x0, x19
  1000c6698  bl      _objc_release
  1000c669c  mov     x0, x20
  1000c66a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager checkDeathsForHitEnemies:withWeaponName:]
; address 0x1000c66a4  size 1256  kind objc
; ======================================================================
  1000c66a4  stp     x28, x27, [sp, #-0x60]!
  1000c66a8  stp     x26, x25, [sp, #0x10]
  1000c66ac  stp     x24, x23, [sp, #0x20]
  1000c66b0  stp     x22, x21, [sp, #0x30]
  1000c66b4  stp     x20, x19, [sp, #0x40]
  1000c66b8  stp     x29, x30, [sp, #0x50]
  1000c66bc  add     x29, sp, #0x50
  1000c66c0  sub     sp, sp, #0x170
  1000c66c4  mov     x19, x3
  1000c66c8  mov     x22, x0
  1000c66cc  adrp    x8, #0x1003b0000
  1000c66d0  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000c66d4  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000c66d8  stur    x8, [x29, #-0x58]
  1000c66dc  mov     x0, x2
  1000c66e0  bl      _objc_retain
  1000c66e4  mov     x23, x0
  1000c66e8  mov     x0, x19
  1000c66ec  bl      _objc_retain
  1000c66f0  mov     x20, x0
  1000c66f4  adrp    x8, #0x100416000
  1000c66f8  nop
  1000c66fc  ldr     x1, [x8, #0xe30]
  1000c6700  mov     x0, x23
  1000c6704  bl      _objc_msgSend                            ; [arg1 count]
  1000c6708  str     x0, [sp, #0x20]
  1000c670c  stp     xzr, xzr, [sp, #0xd8]
  1000c6710  stp     xzr, xzr, [sp, #0xc8]
  1000c6714  stp     xzr, xzr, [sp, #0xb8]
  1000c6718  stp     xzr, xzr, [sp, #0xa8]
  1000c671c  mov     x0, x23
  1000c6720  str     x23, [sp, #0x28]
  1000c6724  bl      _objc_retain
  1000c6728  str     x0, [sp, #0xa0]
  1000c672c  adrp    x8, #0x100416000
  1000c6730  nop
  1000c6734  ldr     x1, [x8, #0xe00]
  1000c6738  str     x1, [sp, #0x30]
  1000c673c  add     x2, sp, #0xa8
  1000c6740  sub     x3, x29, #0xd8
  1000c6744  mov     w4, #0x10
  1000c6748  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  1000c674c  mov     x25, x0
  1000c6750  cbz     x25, loc_1000c6a3c                       ; if ([arg1 countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] == 0)
  1000c6754  adrp    x8, #0x100419000
  1000c6758  nop
  1000c675c  ldr     x9, [sp, #0xb8]
  1000c6760  adrp    x10, #0x100417000
  1000c6764  nop
  1000c6768  adrp    x11, #0x100417000
  1000c676c  nop
  1000c6770  adrp    x12, #0x100419000
  1000c6774  nop
  1000c6778  adrp    x13, #0x10041a000
  1000c677c  add     x13, x13, #0xbd0                         ; &@selector(playerKilledEnemy:withCombo:)
  1000c6780  ldr     x26, [x8, #0x1a8]
  1000c6784  adrp    x8, #0x100417000
  1000c6788  nop
  1000c678c  ldr     x10, [x10, #0xac0]
  1000c6790  str     x10, [sp, #0x98]
  1000c6794  adrp    x10, #0x10041a000
  1000c6798  nop
  1000c679c  ldr     x11, [x11, #0x228]
  1000c67a0  str     x11, [sp, #0x90]
  1000c67a4  adrp    x11, #0x100420000
  1000c67a8  adrp    x14, #0x100416000
  1000c67ac  add     x14, x14, #0xe38                         ; &@selector(enemiKilled:withWeapon:)
  1000c67b0  adrp    x15, #0x100417000
  1000c67b4  add     x15, x15, #0x280                         ; &@selector(containsObject:)
  1000c67b8  ldr     x12, [x12, #0xe8]
  1000c67bc  str     x12, [sp, #0x88]
  1000c67c0  ldr     x12, [x13]
  1000c67c4  str     x12, [sp, #0x80]
  1000c67c8  ldr     x8, [x8, #0x848]
  1000c67cc  str     x8, [sp, #0x78]
  1000c67d0  ldr     x21, [x10, #0xbd8]
  1000c67d4  ldr     x8, [x14]
  1000c67d8  str     x8, [sp, #0x70]
  1000c67dc  ldr     x23, [x9]
  1000c67e0  adrp    x8, #0x100417000
  1000c67e4  nop
  1000c67e8  ldrsw   x9, [x11, #0x39c]                        ; ivar offset ADBrickManager.powerupList (+0x40)
  1000c67ec  str     x9, [sp, #0x68]
  1000c67f0  adrp    x9, #0x100418000
  1000c67f4  nop
  1000c67f8  ldr     x10, [x15]
  1000c67fc  str     x10, [sp, #0x60]
  1000c6800  adrp    x10, #0x100416000
  1000c6804  nop
  1000c6808  ldr     x8, [x8, #0xad8]
  1000c680c  str     x8, [sp, #0x58]
  1000c6810  adrp    x8, #0x100417000
  1000c6814  nop
  1000c6818  ldr     x9, [x9, #0xf30]
  1000c681c  str     x9, [sp, #0x50]
  1000c6820  adrp    x9, #0x10041a000
  1000c6824  add     x9, x9, #0xbe0                           ; &@selector(killEnemy:DisplayName:Weapon:)
  1000c6828  ldr     x10, [x10, #0xac0]
  1000c682c  str     x10, [sp, #0x48]
  1000c6830  ldr     x8, [x8, #0x450]
  1000c6834  str     x8, [sp, #0x40]
  1000c6838  ldr     x8, [x9]
  1000c683c  str     x8, [sp, #0x38]
loc_1000c6840:
  1000c6840  mov     x19, #0
loc_1000c6844:
  1000c6844  ldr     x8, [sp, #0xb8]
  1000c6848  ldr     x8, [x8]
  1000c684c  cmp     x8, x23
  1000c6850  b.eq    loc_1000c685c                            ; if (x8 == x23)
  1000c6854  ldr     x0, [sp, #0xa0]
  1000c6858  bl      _objc_enumerationMutation                ; objc_enumerationMutation(arg1)
loc_1000c685c:
  1000c685c  ldr     x8, [sp, #0xb0]
  1000c6860  ldr     x24, [x8, x19, lsl #3]
  1000c6864  mov     x0, x24
  1000c6868  mov     x1, x26
  1000c686c  bl      _objc_msgSend                            ; [x0 life]
  1000c6870  fcmp    s0, #0.0
  1000c6874  b.hi    loc_1000c6a10                            ; if ([x0 life] > (or unordered) 0.0)
  1000c6878  mov     x0, x22
  1000c687c  ldr     x1, [sp, #0x98]
  1000c6880  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c6884  mov     x29, x29
  1000c6888  bl      _objc_retainAutoreleasedReturnValue
  1000c688c  mov     x27, x0
  1000c6890  adrp    x8, #0x10041d000
  1000c6894  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000c6898  ldr     x1, [sp, #0x90]
  1000c689c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000c68a0  mov     x29, x29
  1000c68a4  bl      _objc_retainAutoreleasedReturnValue
  1000c68a8  mov     x28, x0
  1000c68ac  ldr     x1, [sp, #0x88]
  1000c68b0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] combo]
  1000c68b4  mov     x3, x0
  1000c68b8  mov     x0, x27
  1000c68bc  ldr     x1, [sp, #0x80]
  1000c68c0  mov     x2, x24
  1000c68c4  bl      _objc_msgSend                            ; [[self gameplayViewController] playerKilledEnemy:x2 withCombo:[[ADInGameStats singleton] combo]]
  1000c68c8  mov     x0, x28
  1000c68cc  bl      _objc_release
  1000c68d0  mov     x0, x27
  1000c68d4  bl      _objc_release
  1000c68d8  adrp    x8, #0x10041d000
  1000c68dc  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  1000c68e0  ldr     x1, [sp, #0x78]
  1000c68e4  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000c68e8  mov     x29, x29
  1000c68ec  bl      _objc_retainAutoreleasedReturnValue
  1000c68f0  mov     x27, x0
  1000c68f4  mov     x0, x24
  1000c68f8  mov     x1, x21
  1000c68fc  bl      _objc_msgSend                            ; [x0 displayName]
  1000c6900  mov     x29, x29
  1000c6904  bl      _objc_retainAutoreleasedReturnValue
  1000c6908  mov     x28, x0
  1000c690c  mov     x0, x27
  1000c6910  ldr     x1, [sp, #0x70]
  1000c6914  mov     x2, x28
  1000c6918  mov     x3, x20
  1000c691c  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] enemiKilled:[x0 displayName] withWeapon:arg2]
  1000c6920  mov     x0, x28
  1000c6924  bl      _objc_release
  1000c6928  mov     x0, x27
  1000c692c  bl      _objc_release
  1000c6930  ldp     x1, x8, [sp, #0x60]
  1000c6934  ldr     x0, [x22, x8]                            ; x0 = self->powerupList
  1000c6938  mov     x2, x20
  1000c693c  bl      _objc_msgSend                            ; [self->powerupList containsObject:arg2]
  1000c6940  cbz     w0, loc_1000c6964                        ; if ([self->powerupList containsObject:arg2] == 0)
  1000c6944  stp     x20, xzr, [sp]
  1000c6948  mov     x0, x22
  1000c694c  ldr     x1, [sp, #0x58]
  1000c6950  adrp    x2, #0x1003bd000
  1000c6954  add     x2, x2, #0xc30                           ; @"UPDATE_KILLED_ENEMY_POWERUP"
  1000c6958  mov     x3, x24
  1000c695c  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_KILLED_ENEMY_POWERUP" AndData:x3]
  1000c6960  b       loc_1000c6980
loc_1000c6964:
  1000c6964  stp     x24, xzr, [sp]
  1000c6968  mov     x0, x22
  1000c696c  ldr     x1, [sp, #0x58]
  1000c6970  adrp    x2, #0x1003bd000
  1000c6974  add     x2, x2, #0xc10                           ; @"UPDATE_KILLED_ENEMY_WITH_WEAPON"
  1000c6978  mov     x3, x20
  1000c697c  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_KILLED_ENEMY_WITH_WEAPON" AndData:arg2]
loc_1000c6980:
  1000c6980  mov     x0, x24
  1000c6984  ldr     x1, [sp, #0x50]
  1000c6988  bl      _objc_msgSend                            ; [x0 getType]
  1000c698c  cmp     x0, #1
  1000c6990  b.eq    loc_1000c6a10                            ; if ([x0 getType] == 1)
  1000c6994  adrp    x8, #0x10041e000
  1000c6998  ldr     x0, [x8, #8]                             ; class ADTracker
  1000c699c  ldr     x1, [sp, #0x48]
  1000c69a0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c69a4  mov     x29, x29
  1000c69a8  bl      _objc_retainAutoreleasedReturnValue
  1000c69ac  mov     x27, x0
  1000c69b0  mov     x0, x24
  1000c69b4  ldr     x1, [sp, #0x40]
  1000c69b8  bl      _objc_msgSend                            ; [x0 name]
  1000c69bc  mov     x29, x29
  1000c69c0  bl      _objc_retainAutoreleasedReturnValue
  1000c69c4  mov     x28, x0
  1000c69c8  mov     x0, x24
  1000c69cc  mov     x1, x21
  1000c69d0  bl      _objc_msgSend                            ; [x0 displayName]
  1000c69d4  mov     x29, x29
  1000c69d8  bl      _objc_retainAutoreleasedReturnValue
  1000c69dc  mov     x24, x0
  1000c69e0  mov     x0, x27
  1000c69e4  ldr     x1, [sp, #0x38]
  1000c69e8  mov     x2, x28
  1000c69ec  mov     x3, x24
  1000c69f0  mov     x4, x20
  1000c69f4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] killEnemy:[x0 name] DisplayName:[x0 displayName] Weapon:arg2]
  1000c69f8  mov     x0, x24
  1000c69fc  bl      _objc_release
  1000c6a00  mov     x0, x28
  1000c6a04  bl      _objc_release
  1000c6a08  mov     x0, x27
  1000c6a0c  bl      _objc_release
loc_1000c6a10:
  1000c6a10  add     x19, x19, #1
  1000c6a14  cmp     x19, x25
  1000c6a18  b.lo    loc_1000c6844                            ; if ((x19 + 1) <u [arg1 countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16])
  1000c6a1c  add     x2, sp, #0xa8
  1000c6a20  sub     x3, x29, #0xd8
  1000c6a24  mov     w4, #0x10
  1000c6a28  ldr     x0, [sp, #0xa0]
  1000c6a2c  ldr     x1, [sp, #0x30]
  1000c6a30  bl      _objc_msgSend                            ; [arg1 countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16]
  1000c6a34  mov     x25, x0
  1000c6a38  cbnz    x25, loc_1000c6840                       ; if ([arg1 countByEnumeratingWithState:&sp[0xa8] objects:&x29[-0xd8] count:16] != 0)
loc_1000c6a3c:
  1000c6a3c  ldr     x0, [sp, #0xa0]
  1000c6a40  bl      _objc_release
  1000c6a44  adrp    x8, #0x10041d000
  1000c6a48  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  1000c6a4c  adrp    x8, #0x100417000
  1000c6a50  nop
  1000c6a54  ldr     x1, [x8, #0x848]
  1000c6a58  ldr     x23, [sp, #0x28]
  1000c6a5c  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000c6a60  ldr     x8, [sp, #0x20]
  1000c6a64  cmp     x8, #0
  1000c6a68  cset    w19, ne
  1000c6a6c  mov     x29, x29
  1000c6a70  bl      _objc_retainAutoreleasedReturnValue
  1000c6a74  mov     x21, x0
  1000c6a78  adrp    x8, #0x100416000
  1000c6a7c  nop
  1000c6a80  ldr     x1, [x8, #0xe78]
  1000c6a84  mov     x2, x20
  1000c6a88  mov     x3, x19
  1000c6a8c  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] playerShotWithWeapon:arg2 hitEnemi:([arg1 count] != 0)]
  1000c6a90  mov     x0, x21
  1000c6a94  bl      _objc_release
  1000c6a98  mov     x0, x20
  1000c6a9c  bl      _objc_release
  1000c6aa0  ldr     x0, [sp, #0xa0]
  1000c6aa4  bl      _objc_release
  1000c6aa8  ldur    x8, [x29, #-0x58]
  1000c6aac  adrp    x9, #0x1003b0000
  1000c6ab0  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000c6ab4  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000c6ab8  sub     x8, x9, x8
  1000c6abc  cbnz    x8, loc_1000c6ae0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c6ac0  sub     sp, x29, #0x50
  1000c6ac4  ldp     x29, x30, [sp, #0x50]
  1000c6ac8  ldp     x20, x19, [sp, #0x40]
  1000c6acc  ldp     x22, x21, [sp, #0x30]
  1000c6ad0  ldp     x24, x23, [sp, #0x20]
  1000c6ad4  ldp     x26, x25, [sp, #0x10]
  1000c6ad8  ldp     x28, x27, [sp], #0x60
  1000c6adc  ret
loc_1000c6ae0:
  1000c6ae0  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c6ae4:
  1000c6ae4  mov     x19, x0
  1000c6ae8  b       loc_1000c6b14
  1000c6aec  b       loc_1000c6b00
  1000c6af0  mov     x19, x0
  1000c6af4  b       loc_1000c6b0c
  1000c6af8  mov     x19, x0
  1000c6afc  b       loc_1000c6b0c
loc_1000c6b00:
  1000c6b00  mov     x19, x0
  1000c6b04  mov     x0, x28
  1000c6b08  bl      _objc_release
loc_1000c6b0c:
  1000c6b0c  mov     x0, x27
  1000c6b10  bl      _objc_release
loc_1000c6b14:
  1000c6b14  ldr     x23, [sp, #0x28]
loc_1000c6b18:
  1000c6b18  ldr     x0, [sp, #0xa0]
loc_1000c6b1c:
  1000c6b1c  bl      _objc_release
loc_1000c6b20:
  1000c6b20  mov     x0, x20
  1000c6b24  bl      _objc_release
  1000c6b28  mov     x0, x23
  1000c6b2c  bl      _objc_release
  1000c6b30  mov     x0, x19
  1000c6b34  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c6b38  mov     x19, x0
  1000c6b3c  ldr     x23, [sp, #0x28]
  1000c6b40  b       loc_1000c6b64
  1000c6b44  mov     x19, x0
  1000c6b48  b       loc_1000c6b58
  1000c6b4c  mov     x19, x0
  1000c6b50  mov     x0, x24
  1000c6b54  bl      _objc_release
loc_1000c6b58:
  1000c6b58  ldr     x23, [sp, #0x28]
  1000c6b5c  mov     x0, x28
  1000c6b60  bl      _objc_release
loc_1000c6b64:
  1000c6b64  mov     x0, x27
  1000c6b68  bl      _objc_release
  1000c6b6c  b       loc_1000c6b18
  1000c6b70  b       loc_1000c6ae4
  1000c6b74  mov     x19, x0
  1000c6b78  b       loc_1000c6b20
  1000c6b7c  b       loc_1000c6ae4
  1000c6b80  mov     x19, x0
  1000c6b84  mov     x0, x21
  1000c6b88  b       loc_1000c6b1c

; ======================================================================
; -[ADBrickManager soundOrEnemyWithNameWasDeactivated:]
; address 0x1000c6b8c  size 36  kind objc
; ======================================================================
  1000c6b8c  stp     x29, x30, [sp, #-0x10]!
  1000c6b90  mov     x29, sp
  1000c6b94  adrp    x8, #0x10041a000
  1000c6b98  nop
  1000c6b9c  ldr     x1, [x8, #0x710]
  1000c6ba0  mov     w3, #0
  1000c6ba4  bl      _objc_msgSend                            ; [self soundOrEnemyWithNameWasDeactivated:arg1 withSkip:0]
  1000c6ba8  ldp     x29, x30, [sp], #0x10
  1000c6bac  ret

; ======================================================================
; -[ADBrickManager soundOrEnemyWithNameWasDeactivated:withSkip:]
; address 0x1000c6bb0  size 240  kind objc
; ======================================================================
  1000c6bb0  stp     x24, x23, [sp, #-0x40]!
  1000c6bb4  stp     x22, x21, [sp, #0x10]
  1000c6bb8  stp     x20, x19, [sp, #0x20]
  1000c6bbc  stp     x29, x30, [sp, #0x30]
  1000c6bc0  add     x29, sp, #0x30
  1000c6bc4  mov     x21, x3
  1000c6bc8  mov     x20, x0
  1000c6bcc  mov     x0, x2
  1000c6bd0  bl      _objc_retain
  1000c6bd4  mov     x19, x0
  1000c6bd8  adrp    x8, #0x100417000
  1000c6bdc  nop
  1000c6be0  ldr     x1, [x8, #0xab0]
  1000c6be4  mov     x0, x20
  1000c6be8  bl      _objc_msgSend                            ; [self currentBrick]
  1000c6bec  mov     x29, x29
  1000c6bf0  bl      _objc_retainAutoreleasedReturnValue
  1000c6bf4  mov     x22, x0
  1000c6bf8  adrp    x8, #0x10041a000
  1000c6bfc  nop
  1000c6c00  ldr     x1, [x8, #0xbe8]
  1000c6c04  bl      _objc_msgSend                            ; [[self currentBrick] brickIsCleared]
  1000c6c08  mov     x23, x0
  1000c6c0c  mov     x0, x22
  1000c6c10  bl      _objc_release
  1000c6c14  cbz     w23, loc_1000c6c3c                       ; if ([[self currentBrick] brickIsCleared] == 0)
  1000c6c18  adrp    x0, #0x1003c2000
  1000c6c1c  add     x0, x0, #0x1d0                           ; @"Brick is cleared"
  1000c6c20  bl      _NSLog                                   ; NSLog(@"Brick is cleared")
  1000c6c24  adrp    x8, #0x10041a000
  1000c6c28  nop
  1000c6c2c  ldr     x1, [x8, #0xbf0]
  1000c6c30  mov     x0, x20
  1000c6c34  bl      _objc_msgSend                            ; [self currentBrickIsCleared]
  1000c6c38  b       loc_1000c6c64
loc_1000c6c3c:
  1000c6c3c  adrp    x0, #0x1003c2000
  1000c6c40  add     x0, x0, #0x1f0                           ; @"More enemies or blocker sounds"
  1000c6c44  bl      _NSLog                                   ; NSLog(@"More enemies or blocker sounds")
  1000c6c48  adrp    x8, #0x10041a000
  1000c6c4c  nop
  1000c6c50  ldr     x1, [x8, #0xbf8]
  1000c6c54  mov     x0, x20
  1000c6c58  mov     x2, x19
  1000c6c5c  mov     x3, x21
  1000c6c60  bl      _objc_msgSend                            ; [self checkEnemiesSpawnAfterKill:arg1 skipped:arg2]
loc_1000c6c64:
  1000c6c64  mov     x0, x19
  1000c6c68  ldp     x29, x30, [sp, #0x30]
  1000c6c6c  ldp     x20, x19, [sp, #0x20]
  1000c6c70  ldp     x22, x21, [sp, #0x10]
  1000c6c74  ldp     x24, x23, [sp], #0x40
  1000c6c78  b       _objc_release
  1000c6c7c  mov     x20, x0
  1000c6c80  b       loc_1000c6c90
  1000c6c84  mov     x20, x0
  1000c6c88  mov     x0, x22
  1000c6c8c  bl      _objc_release
loc_1000c6c90:
  1000c6c90  mov     x0, x19
  1000c6c94  bl      _objc_release
  1000c6c98  mov     x0, x20
  1000c6c9c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager currentBrickIsCleared]
; address 0x1000c6ca0  size 536  kind objc
; ======================================================================
  1000c6ca0  stp     d9, d8, [sp, #-0x40]!
  1000c6ca4  stp     x22, x21, [sp, #0x10]
  1000c6ca8  stp     x20, x19, [sp, #0x20]
  1000c6cac  stp     x29, x30, [sp, #0x30]
  1000c6cb0  add     x29, sp, #0x30
  1000c6cb4  mov     x19, x0
  1000c6cb8  adrp    x8, #0x10041d000
  1000c6cbc  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  1000c6cc0  adrp    x8, #0x100417000
  1000c6cc4  nop
  1000c6cc8  ldr     x1, [x8, #0x228]
  1000c6ccc  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000c6cd0  mov     x29, x29
  1000c6cd4  bl      _objc_retainAutoreleasedReturnValue
  1000c6cd8  mov     x20, x0
  1000c6cdc  adrp    x8, #0x100418000
  1000c6ce0  nop
  1000c6ce4  ldr     x1, [x8, #0xf08]
  1000c6ce8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] brickTime]
  1000c6cec  mov     v8.16b, v0.16b
  1000c6cf0  mov     x0, x20
  1000c6cf4  bl      _objc_release
  1000c6cf8  adrp    x8, #0x100417000
  1000c6cfc  nop
  1000c6d00  ldr     x1, [x8, #0xad8]
  1000c6d04  mov     x3, #0
  1000c6d08  adrp    x2, #0x1003bd000
  1000c6d0c  add     x2, x2, #0xc70                           ; @"DEFEATED_BRICK"
  1000c6d10  mov     x0, x19
  1000c6d14  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"DEFEATED_BRICK" AndData:0]
  1000c6d18  adrp    x8, #0x10041e000
  1000c6d1c  ldr     x0, [x8, #8]                             ; class ADTracker
  1000c6d20  adrp    x8, #0x100416000
  1000c6d24  nop
  1000c6d28  ldr     x1, [x8, #0xac0]
  1000c6d2c  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000c6d30  mov     x29, x29
  1000c6d34  bl      _objc_retainAutoreleasedReturnValue
  1000c6d38  mov     x20, x0
  1000c6d3c  adrp    x8, #0x10041a000
  1000c6d40  nop
  1000c6d44  ldr     x1, [x8, #0x6e0]
  1000c6d48  mov     x0, x19
  1000c6d4c  bl      _objc_msgSend                            ; [self currentBrickName]
  1000c6d50  mov     x29, x29
  1000c6d54  bl      _objc_retainAutoreleasedReturnValue
  1000c6d58  mov     x21, x0
  1000c6d5c  adrp    x8, #0x10041a000
  1000c6d60  nop
  1000c6d64  ldr     x1, [x8, #0x310]
  1000c6d68  mov     x0, x20
  1000c6d6c  mov     x2, x21
  1000c6d70  mov     v0.16b, v8.16b
  1000c6d74  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] defeatBrick:[self currentBrickName] InTime:[[ADInGameStats singleton] brickTime]]
  1000c6d78  mov     x0, x21
  1000c6d7c  bl      _objc_release
  1000c6d80  mov     x0, x20
  1000c6d84  bl      _objc_release
  1000c6d88  adrp    x8, #0x100419000
  1000c6d8c  nop
  1000c6d90  ldr     x1, [x8, #0x348]
  1000c6d94  mov     x0, x19
  1000c6d98  bl      _objc_msgSend                            ; [self mode]
  1000c6d9c  sub     w8, w0, #1
  1000c6da0  cmp     w8, #3
  1000c6da4  b.hi    loc_1000c6dfc                            ; if (([self mode] - 1) >u 3)
  1000c6da8  adr     x9, #0x1000c6ea8                         ; 0x1000c6ea8
  1000c6dac  nop
  1000c6db0  ldrsw   x8, [x9, x8, lsl #2]
  1000c6db4  add     x8, x8, x9
  1000c6db8  br      x8                                       ; switch (([self mode] - 1)) { case 0,2: goto loc_1000c6e10; case 1: goto loc_1000c6dbc; case 3: goto loc_1000c6e34 }
loc_1000c6dbc:  ; case 1
  1000c6dbc  adrp    x8, #0x100420000
  1000c6dc0  ldrsw   x8, [x8, #0x394]                         ; ivar offset ADBrickManager.currentWave (+0x3c)
  1000c6dc4  ldrsw   x20, [x19, x8]                           ; x20 = self->currentWave
  1000c6dc8  adrp    x8, #0x100420000
  1000c6dcc  ldrsw   x8, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c6dd0  ldr     x0, [x19, x8]                            ; x0 = self->brickScenario
  1000c6dd4  adrp    x8, #0x100416000
  1000c6dd8  nop
  1000c6ddc  ldr     x1, [x8, #0xe30]
  1000c6de0  bl      _objc_msgSend                            ; [self->brickScenario count]
  1000c6de4  cmp     x20, x0
  1000c6de8  b.ne    loc_1000c6e10                            ; if (self->currentWave != [self->brickScenario count])
  1000c6dec  adrp    x8, #0x100420000
  1000c6df0  ldrsw   x8, [x8, #0x3c4]                         ; ivar offset ADBrickManager.challengeIsOver (+0x6d)
  1000c6df4  mov     w9, #1
  1000c6df8  strb    w9, [x19, x8]                            ; self->challengeIsOver = 1
loc_1000c6dfc:
  1000c6dfc  ldp     x29, x30, [sp, #0x30]
  1000c6e00  ldp     x20, x19, [sp, #0x20]
  1000c6e04  ldp     x22, x21, [sp, #0x10]
  1000c6e08  ldp     d9, d8, [sp], #0x40
  1000c6e0c  ret
loc_1000c6e10:  ; case 0, 2
  1000c6e10  adrp    x8, #0x100418000
  1000c6e14  nop
  1000c6e18  ldr     x1, [x8, #0xf70]
  1000c6e1c  mov     x0, x19
  1000c6e20  ldp     x29, x30, [sp, #0x30]
  1000c6e24  ldp     x20, x19, [sp, #0x20]
  1000c6e28  ldp     x22, x21, [sp, #0x10]
  1000c6e2c  ldp     d9, d8, [sp], #0x40
  1000c6e30  b       _objc_msgSend                            ; [self loadNextBrick]
loc_1000c6e34:  ; case 3
  1000c6e34  adrp    x8, #0x100417000
  1000c6e38  nop
  1000c6e3c  ldr     x1, [x8, #0xac0]
  1000c6e40  mov     x0, x19
  1000c6e44  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c6e48  mov     x29, x29
  1000c6e4c  bl      _objc_retainAutoreleasedReturnValue
  1000c6e50  mov     x20, x0
  1000c6e54  adrp    x8, #0x100419000
  1000c6e58  nop
  1000c6e5c  ldr     x1, [x8, #0x20]
  1000c6e60  bl      _objc_msgSend                            ; [[self gameplayViewController] goToScoreScreen]
  1000c6e64  mov     x0, x20
  1000c6e68  ldp     x29, x30, [sp, #0x30]
  1000c6e6c  ldp     x20, x19, [sp, #0x20]
  1000c6e70  ldp     x22, x21, [sp, #0x10]
  1000c6e74  ldp     d9, d8, [sp], #0x40
  1000c6e78  b       _objc_release
  1000c6e7c  b       loc_1000c6e80
loc_1000c6e80:
  1000c6e80  mov     x19, x0
  1000c6e84  b       loc_1000c6e94
  1000c6e88  mov     x19, x0
  1000c6e8c  mov     x0, x21
  1000c6e90  bl      _objc_release
loc_1000c6e94:
  1000c6e94  mov     x0, x20
  1000c6e98  bl      _objc_release
  1000c6e9c  mov     x0, x19
  1000c6ea0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c6ea4  b       loc_1000c6e80
  1000c6ea8  .word   jump table of 1000c6db8, case 0 -> loc_1000c6e10
  1000c6eac  .word   jump table of 1000c6db8, case 1 -> loc_1000c6dbc
  1000c6eb0  .word   jump table of 1000c6db8, case 2 -> loc_1000c6e10
  1000c6eb4  .word   jump table of 1000c6db8, case 3 -> loc_1000c6e34

; ======================================================================
; -[ADBrickManager enemiesAliveOrReadyToSpawn]
; address 0x1000c6eb8  size 460  kind objc
; ======================================================================
  1000c6eb8  stp     x28, x27, [sp, #-0x60]!
  1000c6ebc  stp     x26, x25, [sp, #0x10]
  1000c6ec0  stp     x24, x23, [sp, #0x20]
  1000c6ec4  stp     x22, x21, [sp, #0x30]
  1000c6ec8  stp     x20, x19, [sp, #0x40]
  1000c6ecc  stp     x29, x30, [sp, #0x50]
  1000c6ed0  add     x29, sp, #0x50
  1000c6ed4  sub     sp, sp, #0xf0
  1000c6ed8  adrp    x8, #0x1003b0000
  1000c6edc  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  1000c6ee0  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  1000c6ee4  stur    x8, [x29, #-0x58]
  1000c6ee8  stp     xzr, xzr, [sp, #0x58]
  1000c6eec  stp     xzr, xzr, [sp, #0x48]
  1000c6ef0  stp     xzr, xzr, [sp, #0x38]
  1000c6ef4  stp     xzr, xzr, [sp, #0x28]
  1000c6ef8  adrp    x8, #0x10041a000
  1000c6efc  nop
  1000c6f00  ldr     x1, [x8, #0xc00]
  1000c6f04  bl      _objc_msgSend                            ; [self enemiesFromCurrentBrick]
  1000c6f08  mov     x29, x29
  1000c6f0c  bl      _objc_retainAutoreleasedReturnValue
  1000c6f10  mov     x19, x0
  1000c6f14  adrp    x8, #0x100416000
  1000c6f18  nop
  1000c6f1c  ldr     x1, [x8, #0xe00]
  1000c6f20  str     x1, [sp, #0x20]
  1000c6f24  add     x2, sp, #0x28
  1000c6f28  add     x3, sp, #0x68
  1000c6f2c  mov     w4, #0x10
  1000c6f30  bl      _objc_msgSend                            ; [[self enemiesFromCurrentBrick] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000c6f34  mov     x23, x0
  1000c6f38  mov     w21, #0
  1000c6f3c  cbz     x23, loc_1000c7010                       ; if ([[self enemiesFromCurrentBrick] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] == 0)
  1000c6f40  ldr     x8, [sp, #0x38]
  1000c6f44  ldr     x28, [x8]
  1000c6f48  adrp    x8, #0x100419000
  1000c6f4c  nop
  1000c6f50  ldr     x22, [x8, #0x1a8]
  1000c6f54  adrp    x8, #0x100417000
  1000c6f58  add     x8, x8, #0x450                           ; &@selector(name)
  1000c6f5c  ldr     x24, [x8]
  1000c6f60  adrp    x25, #0x1003c0000
  1000c6f64  add     x25, x25, #0x8f0                         ; @"%@ still alive, life = %f"
loc_1000c6f68:
  1000c6f68  mov     x20, #0
loc_1000c6f6c:
  1000c6f6c  ldr     x8, [sp, #0x38]
  1000c6f70  ldr     x8, [x8]
  1000c6f74  cmp     x8, x28
  1000c6f78  b.eq    loc_1000c6f84                            ; if (x8 == x28)
  1000c6f7c  mov     x0, x19
  1000c6f80  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self enemiesFromCurrentBrick])
loc_1000c6f84:
  1000c6f84  ldr     x8, [sp, #0x30]
  1000c6f88  ldr     x26, [x8, x20, lsl #3]
  1000c6f8c  mov     x0, x26
  1000c6f90  mov     x1, x22
  1000c6f94  bl      _objc_msgSend                            ; [x0 life]
  1000c6f98  fcmp    s0, #0.0
  1000c6f9c  b.le    loc_1000c6fe4                            ; if ([x0 life] <= (or unordered) 0.0)
  1000c6fa0  mov     x0, x26
  1000c6fa4  mov     x1, x24
  1000c6fa8  bl      _objc_msgSend                            ; [x0 name]
  1000c6fac  mov     x29, x29
  1000c6fb0  bl      _objc_retainAutoreleasedReturnValue
  1000c6fb4  mov     x27, x0
  1000c6fb8  mov     x0, x26
  1000c6fbc  mov     x1, x22
  1000c6fc0  bl      _objc_msgSend                            ; [x0 life]
  1000c6fc4  fcvt    d0, s0
  1000c6fc8  str     d0, [sp, #8]
  1000c6fcc  str     x27, [sp]
  1000c6fd0  mov     x0, x25
  1000c6fd4  bl      _NSLog                                   ; NSLog(@"%@ still alive, life = %f", [x0 name], [x0 life])
  1000c6fd8  mov     x0, x27
  1000c6fdc  bl      _objc_release
  1000c6fe0  add     w21, w21, #1
loc_1000c6fe4:
  1000c6fe4  add     x20, x20, #1
  1000c6fe8  cmp     x20, x23
  1000c6fec  b.lo    loc_1000c6f6c                            ; if ((x20 + 1) <u [[self enemiesFromCurrentBrick] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16])
  1000c6ff0  add     x2, sp, #0x28
  1000c6ff4  add     x3, sp, #0x68
  1000c6ff8  mov     w4, #0x10
  1000c6ffc  mov     x0, x19
  1000c7000  ldr     x1, [sp, #0x20]
  1000c7004  bl      _objc_msgSend                            ; [[self enemiesFromCurrentBrick] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16]
  1000c7008  mov     x23, x0
  1000c700c  cbnz    x23, loc_1000c6f68                       ; if ([[self enemiesFromCurrentBrick] countByEnumeratingWithState:&sp[0x28] objects:&sp[0x68] count:16] != 0)
loc_1000c7010:
  1000c7010  mov     x0, x19
  1000c7014  bl      _objc_release
  1000c7018  ldur    x8, [x29, #-0x58]
  1000c701c  adrp    x9, #0x1003b0000
  1000c7020  ldr     x9, [x9, #0x1d8]                         ; ___stack_chk_guard
  1000c7024  ldr     x9, [x9]                                 ; x9 = ___stack_chk_guard[+0x0]
  1000c7028  sub     x8, x9, x8
  1000c702c  cbnz    x8, loc_1000c7054                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c7030  mov     x0, x21
  1000c7034  sub     sp, x29, #0x50
  1000c7038  ldp     x29, x30, [sp, #0x50]
  1000c703c  ldp     x20, x19, [sp, #0x40]
  1000c7040  ldp     x22, x21, [sp, #0x30]
  1000c7044  ldp     x24, x23, [sp, #0x20]
  1000c7048  ldp     x26, x25, [sp, #0x10]
  1000c704c  ldp     x28, x27, [sp], #0x60
  1000c7050  ret
loc_1000c7054:
  1000c7054  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000c7058:
  1000c7058  mov     x20, x0
  1000c705c  b       loc_1000c706c
  1000c7060  mov     x20, x0
  1000c7064  mov     x0, x27
  1000c7068  bl      _objc_release
loc_1000c706c:
  1000c706c  mov     x0, x19
  1000c7070  bl      _objc_release
  1000c7074  mov     x0, x20
  1000c7078  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c707c  b       loc_1000c7058
  1000c7080  b       loc_1000c7058

; ======================================================================
; -[ADBrickManager checkSpawnOnStart:]
; address 0x1000c7084  size 148  kind objc
; ======================================================================
  1000c7084  stp     x22, x21, [sp, #-0x30]!
  1000c7088  stp     x20, x19, [sp, #0x10]
  1000c708c  stp     x29, x30, [sp, #0x20]
  1000c7090  add     x29, sp, #0x20
  1000c7094  mov     x20, x0
  1000c7098  mov     x0, x2
  1000c709c  bl      _objc_retain
  1000c70a0  mov     x19, x0
  1000c70a4  adrp    x8, #0x100417000
  1000c70a8  nop
  1000c70ac  ldr     x1, [x8, #0xab0]
  1000c70b0  mov     x0, x20
  1000c70b4  bl      _objc_msgSend                            ; [self currentBrick]
  1000c70b8  mov     x29, x29
  1000c70bc  bl      _objc_retainAutoreleasedReturnValue
  1000c70c0  mov     x20, x0
  1000c70c4  adrp    x8, #0x100419000
  1000c70c8  nop
  1000c70cc  ldr     x1, [x8, #0x310]
  1000c70d0  mov     x2, x19
  1000c70d4  bl      _objc_msgSend                            ; [[self currentBrick] checkSpawnOnStart:arg1]
  1000c70d8  mov     x0, x20
  1000c70dc  bl      _objc_release
  1000c70e0  mov     x0, x19
  1000c70e4  ldp     x29, x30, [sp, #0x20]
  1000c70e8  ldp     x20, x19, [sp, #0x10]
  1000c70ec  ldp     x22, x21, [sp], #0x30
  1000c70f0  b       _objc_release
  1000c70f4  mov     x21, x0
  1000c70f8  b       loc_1000c7108
  1000c70fc  mov     x21, x0
  1000c7100  mov     x0, x20
  1000c7104  bl      _objc_release
loc_1000c7108:
  1000c7108  mov     x0, x19
  1000c710c  bl      _objc_release
  1000c7110  mov     x0, x21
  1000c7114  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager checkEnemiesSpawnAfterKill:skipped:]
; address 0x1000c7118  size 156  kind objc
; ======================================================================
  1000c7118  stp     x22, x21, [sp, #-0x30]!
  1000c711c  stp     x20, x19, [sp, #0x10]
  1000c7120  stp     x29, x30, [sp, #0x20]
  1000c7124  add     x29, sp, #0x20
  1000c7128  mov     x20, x3
  1000c712c  mov     x21, x0
  1000c7130  mov     x0, x2
  1000c7134  bl      _objc_retain
  1000c7138  mov     x19, x0
  1000c713c  adrp    x8, #0x100417000
  1000c7140  nop
  1000c7144  ldr     x1, [x8, #0xab0]
  1000c7148  mov     x0, x21
  1000c714c  bl      _objc_msgSend                            ; [self currentBrick]
  1000c7150  mov     x29, x29
  1000c7154  bl      _objc_retainAutoreleasedReturnValue
  1000c7158  mov     x21, x0
  1000c715c  adrp    x8, #0x10041a000
  1000c7160  nop
  1000c7164  ldr     x1, [x8, #0xc08]
  1000c7168  mov     x2, x19
  1000c716c  mov     x3, x20
  1000c7170  bl      _objc_msgSend                            ; [[self currentBrick] checkSpawnAfterKill:arg1 skipped:arg2]
  1000c7174  mov     x0, x21
  1000c7178  bl      _objc_release
  1000c717c  mov     x0, x19
  1000c7180  ldp     x29, x30, [sp, #0x20]
  1000c7184  ldp     x20, x19, [sp, #0x10]
  1000c7188  ldp     x22, x21, [sp], #0x30
  1000c718c  b       _objc_release
  1000c7190  mov     x20, x0
  1000c7194  b       loc_1000c71a4
  1000c7198  mov     x20, x0
  1000c719c  mov     x0, x21
  1000c71a0  bl      _objc_release
loc_1000c71a4:
  1000c71a4  mov     x0, x19
  1000c71a8  bl      _objc_release
  1000c71ac  mov     x0, x20
  1000c71b0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager stopAllEnemiesAfterPlayerDeathByEnemyWithName:]
; address 0x1000c71b4  size 840  kind objc
; ======================================================================
  1000c71b4  stp     x28, x27, [sp, #-0x60]!
  1000c71b8  stp     x26, x25, [sp, #0x10]
  1000c71bc  stp     x24, x23, [sp, #0x20]
  1000c71c0  stp     x22, x21, [sp, #0x30]
  1000c71c4  stp     x20, x19, [sp, #0x40]
  1000c71c8  stp     x29, x30, [sp, #0x50]
  1000c71cc  add     x29, sp, #0x50
  1000c71d0  sub     sp, sp, #0x250
  1000c71d4  mov     x20, x0
  1000c71d8  adrp    x24, #0x1003b0000
  1000c71dc  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000c71e0  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000c71e4  stur    x24, [x29, #-0x58]
  1000c71e8  adrp    x8, #0x10041a000
  1000c71ec  nop
  1000c71f0  ldr     x1, [x8, #0xc10]
  1000c71f4  bl      _objc_msgSend                            ; [self cleanPassersBy]
  1000c71f8  adrp    x8, #0x100417000
  1000c71fc  nop
  1000c7200  ldr     x1, [x8, #0xac0]
  1000c7204  mov     x0, x20
  1000c7208  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c720c  mov     x29, x29
  1000c7210  bl      _objc_retainAutoreleasedReturnValue
  1000c7214  mov     x21, x0
  1000c7218  adrp    x8, #0x10041a000
  1000c721c  nop
  1000c7220  ldr     x1, [x8, #0xc18]
  1000c7224  bl      _objc_msgSend                            ; [[self gameplayViewController] showDeathOverlay]
  1000c7228  mov     x0, x21
  1000c722c  bl      _objc_release
  1000c7230  adrp    x8, #0x10041a000
  1000c7234  nop
  1000c7238  ldr     x1, [x8, #0xaf0]
  1000c723c  mov     w2, #1
  1000c7240  mov     x0, x20
  1000c7244  bl      _objc_msgSend                            ; [self setPlayerIsDead:1]
  1000c7248  stp     xzr, xzr, [sp, #0xb8]
  1000c724c  stp     xzr, xzr, [sp, #0xa8]
  1000c7250  stp     xzr, xzr, [sp, #0x98]
  1000c7254  stp     xzr, xzr, [sp, #0x88]
  1000c7258  adrp    x8, #0x100420000
  1000c725c  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c7260  ldr     x0, [x20, x8]                            ; x0 = self->bricks
  1000c7264  bl      _objc_retain
  1000c7268  mov     x21, x0
  1000c726c  adrp    x8, #0x100416000
  1000c7270  nop
  1000c7274  ldr     x19, [x8, #0xe00]
  1000c7278  add     x2, sp, #0x88
  1000c727c  sub     x3, x29, #0xd8
  1000c7280  mov     w4, #0x10
  1000c7284  mov     x1, x19
  1000c7288  bl      _objc_msgSend                            ; [self->bricks countByEnumeratingWithState:&sp[0x88] objects:&x29[-0xd8] count:16]
  1000c728c  mov     x22, x0
  1000c7290  cbz     x22, loc_1000c7300                       ; if ([self->bricks countByEnumeratingWithState:&sp[0x88] objects:&x29[-0xd8] count:16] == 0)
  1000c7294  ldr     x8, [sp, #0x98]
  1000c7298  ldr     x25, [x8]
  1000c729c  adrp    x8, #0x10041a000
  1000c72a0  add     x8, x8, #0xc20                           ; &@selector(stopAllEnemiesAfterPlayerDeath)
  1000c72a4  ldr     x23, [x8]
loc_1000c72a8:
  1000c72a8  mov     x26, #0
loc_1000c72ac:
  1000c72ac  ldr     x8, [sp, #0x98]
  1000c72b0  ldr     x8, [x8]
  1000c72b4  cmp     x8, x25
  1000c72b8  b.eq    loc_1000c72c4                            ; if (x8 == x25)
  1000c72bc  mov     x0, x21
  1000c72c0  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->bricks)
loc_1000c72c4:
  1000c72c4  ldr     x8, [sp, #0x90]
  1000c72c8  ldr     x0, [x8, x26, lsl #3]
  1000c72cc  mov     x1, x23
  1000c72d0  bl      _objc_msgSend                            ; [x0 stopAllEnemiesAfterPlayerDeath]
  1000c72d4  add     x26, x26, #1
  1000c72d8  cmp     x26, x22
  1000c72dc  b.lo    loc_1000c72ac                            ; if ((x26 + 1) <u [self->bricks countByEnumeratingWithState:&sp[0x88] objects:&x29[-0xd8] count:16])
  1000c72e0  add     x2, sp, #0x88
  1000c72e4  sub     x3, x29, #0xd8
  1000c72e8  mov     w4, #0x10
  1000c72ec  mov     x0, x21
  1000c72f0  mov     x1, x19
  1000c72f4  bl      _objc_msgSend                            ; [self->bricks countByEnumeratingWithState:&sp[0x88] objects:&x29[-0xd8] count:16]
  1000c72f8  mov     x22, x0
  1000c72fc  cbnz    x22, loc_1000c72a8                       ; if ([self->bricks countByEnumeratingWithState:&sp[0x88] objects:&x29[-0xd8] count:16] != 0)
loc_1000c7300:
  1000c7300  mov     x0, x21
  1000c7304  bl      _objc_release
  1000c7308  stp     xzr, xzr, [sp, #0x78]
  1000c730c  stp     xzr, xzr, [sp, #0x68]
  1000c7310  stp     xzr, xzr, [sp, #0x58]
  1000c7314  stp     xzr, xzr, [sp, #0x48]
  1000c7318  adrp    x8, #0x100420000
  1000c731c  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c7320  ldr     x0, [x20, x8]                            ; x0 = self->diamonds
  1000c7324  bl      _objc_retain
  1000c7328  mov     x21, x0
  1000c732c  add     x2, sp, #0x48
  1000c7330  add     x3, sp, #0x148
  1000c7334  mov     w4, #0x10
  1000c7338  mov     x1, x19
  1000c733c  bl      _objc_msgSend                            ; [self->diamonds countByEnumeratingWithState:&sp[0x48] objects:&sp[0x148] count:16]
  1000c7340  mov     x22, x0
  1000c7344  cbz     x22, loc_1000c73b4                       ; if ([self->diamonds countByEnumeratingWithState:&sp[0x48] objects:&sp[0x148] count:16] == 0)
  1000c7348  ldr     x8, [sp, #0x58]
  1000c734c  ldr     x25, [x8]
  1000c7350  adrp    x8, #0x10041a000
  1000c7354  add     x8, x8, #0x300                           ; &@selector(stopAfterPlayerWasKilled)
  1000c7358  ldr     x23, [x8]
loc_1000c735c:
  1000c735c  mov     x26, #0
loc_1000c7360:
  1000c7360  ldr     x8, [sp, #0x58]
  1000c7364  ldr     x8, [x8]
  1000c7368  cmp     x8, x25
  1000c736c  b.eq    loc_1000c7378                            ; if (x8 == x25)
  1000c7370  mov     x0, x21
  1000c7374  bl      _objc_enumerationMutation                ; objc_enumerationMutation(self->diamonds)
loc_1000c7378:
  1000c7378  ldr     x8, [sp, #0x50]
  1000c737c  ldr     x0, [x8, x26, lsl #3]
  1000c7380  mov     x1, x23
  1000c7384  bl      _objc_msgSend                            ; [x0 stopAfterPlayerWasKilled]
  1000c7388  add     x26, x26, #1
  1000c738c  cmp     x26, x22
  1000c7390  b.lo    loc_1000c7360                            ; if ((x26 + 1) <u [self->diamonds countByEnumeratingWithState:&sp[0x48] objects:&sp[0x148] count:16])
  1000c7394  add     x2, sp, #0x48
  1000c7398  add     x3, sp, #0x148
  1000c739c  mov     w4, #0x10
  1000c73a0  mov     x0, x21
  1000c73a4  mov     x1, x19
  1000c73a8  bl      _objc_msgSend                            ; [self->diamonds countByEnumeratingWithState:&sp[0x48] objects:&sp[0x148] count:16]
  1000c73ac  mov     x22, x0
  1000c73b0  cbnz    x22, loc_1000c735c                       ; if ([self->diamonds countByEnumeratingWithState:&sp[0x48] objects:&sp[0x148] count:16] != 0)
loc_1000c73b4:
  1000c73b4  mov     x0, x21
  1000c73b8  bl      _objc_release
  1000c73bc  stp     xzr, xzr, [sp, #0x38]
  1000c73c0  stp     xzr, xzr, [sp, #0x28]
  1000c73c4  stp     xzr, xzr, [sp, #0x18]
  1000c73c8  stp     xzr, xzr, [sp, #8]
  1000c73cc  adrp    x8, #0x100420000
  1000c73d0  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c73d4  ldr     x0, [x20, x8]                            ; x0 = self->passerByManager
  1000c73d8  adrp    x8, #0x10041a000
  1000c73dc  nop
  1000c73e0  ldr     x1, [x8, #0xb30]
  1000c73e4  bl      _objc_msgSend                            ; [self->passerByManager allPasserBy]
  1000c73e8  mov     x29, x29
  1000c73ec  bl      _objc_retainAutoreleasedReturnValue
  1000c73f0  mov     x20, x0
  1000c73f4  add     x2, sp, #8
  1000c73f8  add     x3, sp, #0xc8
  1000c73fc  mov     w4, #0x10
  1000c7400  mov     x1, x19
  1000c7404  bl      _objc_msgSend                            ; [[self->passerByManager allPasserBy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0xc8] count:16]
  1000c7408  mov     x21, x0
  1000c740c  cbz     x21, loc_1000c747c                       ; if ([[self->passerByManager allPasserBy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0xc8] count:16] == 0)
  1000c7410  ldr     x8, [sp, #0x18]
  1000c7414  ldr     x23, [x8]
  1000c7418  adrp    x8, #0x10041a000
  1000c741c  add     x8, x8, #0x300                           ; &@selector(stopAfterPlayerWasKilled)
  1000c7420  ldr     x22, [x8]
loc_1000c7424:
  1000c7424  mov     x25, #0
loc_1000c7428:
  1000c7428  ldr     x8, [sp, #0x18]
  1000c742c  ldr     x8, [x8]
  1000c7430  cmp     x8, x23
  1000c7434  b.eq    loc_1000c7440                            ; if (x8 == x23)
  1000c7438  mov     x0, x20
  1000c743c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self->passerByManager allPasserBy])
loc_1000c7440:
  1000c7440  ldr     x8, [sp, #0x10]
  1000c7444  ldr     x0, [x8, x25, lsl #3]
  1000c7448  mov     x1, x22
  1000c744c  bl      _objc_msgSend                            ; [x0 stopAfterPlayerWasKilled]
  1000c7450  add     x25, x25, #1
  1000c7454  cmp     x25, x21
  1000c7458  b.lo    loc_1000c7428                            ; if ((x25 + 1) <u [[self->passerByManager allPasserBy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0xc8] count:16])
  1000c745c  add     x2, sp, #8
  1000c7460  add     x3, sp, #0xc8
  1000c7464  mov     w4, #0x10
  1000c7468  mov     x0, x20
  1000c746c  mov     x1, x19
  1000c7470  bl      _objc_msgSend                            ; [[self->passerByManager allPasserBy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0xc8] count:16]
  1000c7474  mov     x21, x0
  1000c7478  cbnz    x21, loc_1000c7424                       ; if ([[self->passerByManager allPasserBy] countByEnumeratingWithState:&sp[0x8] objects:&sp[0xc8] count:16] != 0)
loc_1000c747c:
  1000c747c  mov     x0, x20
  1000c7480  bl      _objc_release
  1000c7484  ldur    x8, [x29, #-0x58]
  1000c7488  sub     x8, x24, x8
  1000c748c  cbnz    x8, loc_1000c74b0                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000c7490  sub     sp, x29, #0x50
  1000c7494  ldp     x29, x30, [sp, #0x50]
  1000c7498  ldp     x20, x19, [sp, #0x40]
  1000c749c  ldp     x22, x21, [sp, #0x30]
  1000c74a0  ldp     x24, x23, [sp, #0x20]
  1000c74a4  ldp     x26, x25, [sp, #0x10]
  1000c74a8  ldp     x28, x27, [sp], #0x60
  1000c74ac  ret
loc_1000c74b0:
  1000c74b0  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000c74b4  b       loc_1000c74b8
loc_1000c74b8:
  1000c74b8  mov     x19, x0
  1000c74bc  mov     x0, x21
  1000c74c0  b       loc_1000c74cc
loc_1000c74c4:
  1000c74c4  mov     x19, x0
  1000c74c8  mov     x0, x20
loc_1000c74cc:
  1000c74cc  bl      _objc_release
loc_1000c74d0:
  1000c74d0  mov     x0, x19
  1000c74d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c74d8  b       loc_1000c74b8
  1000c74dc  b       loc_1000c74b8
  1000c74e0  b       loc_1000c74c4
  1000c74e4  mov     x19, x0
  1000c74e8  b       loc_1000c74d0
  1000c74ec  b       loc_1000c74b8
  1000c74f0  b       loc_1000c74b8
  1000c74f4  b       loc_1000c74b8
  1000c74f8  b       loc_1000c74c4

; ======================================================================
; -[ADBrickManager showReviveView]
; address 0x1000c74fc  size 92  kind objc
; ======================================================================
  1000c74fc  stp     x20, x19, [sp, #-0x20]!
  1000c7500  stp     x29, x30, [sp, #0x10]
  1000c7504  add     x29, sp, #0x10
  1000c7508  adrp    x8, #0x100417000
  1000c750c  nop
  1000c7510  ldr     x1, [x8, #0xac0]
  1000c7514  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c7518  mov     x29, x29
  1000c751c  bl      _objc_retainAutoreleasedReturnValue
  1000c7520  mov     x19, x0
  1000c7524  adrp    x8, #0x100419000
  1000c7528  nop
  1000c752c  ldr     x1, [x8, #0x350]
  1000c7530  bl      _objc_msgSend                            ; [[self gameplayViewController] showReviveView]
  1000c7534  mov     x0, x19
  1000c7538  ldp     x29, x30, [sp, #0x10]
  1000c753c  ldp     x20, x19, [sp], #0x20
  1000c7540  b       _objc_release
  1000c7544  mov     x20, x0
  1000c7548  mov     x0, x19
  1000c754c  bl      _objc_release
  1000c7550  mov     x0, x20
  1000c7554  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager revive]
; address 0x1000c7558  size 88  kind objc
; ======================================================================
  1000c7558  stp     x20, x19, [sp, #-0x20]!
  1000c755c  stp     x29, x30, [sp, #0x10]
  1000c7560  add     x29, sp, #0x10
  1000c7564  mov     x19, x0
  1000c7568  adrp    x8, #0x10041a000
  1000c756c  nop
  1000c7570  ldr     x1, [x8, #0xc28]
  1000c7574  bl      _objc_msgSend                            ; [self clearCurrentBrick]
  1000c7578  adrp    x8, #0x100418000
  1000c757c  nop
  1000c7580  ldr     x1, [x8, #0xf70]
  1000c7584  mov     x0, x19
  1000c7588  bl      _objc_msgSend                            ; [self loadNextBrick]
  1000c758c  adrp    x8, #0x100420000
  1000c7590  ldrsw   x8, [x8, #0x3bc]                         ; ivar offset ADBrickManager.nextDiamondTime (+0x4c)
  1000c7594  ldr     s0, [x19, x8]                            ; s0 = self->nextDiamondTime
  1000c7598  fmov    s1, #10.00000000
  1000c759c  fadd    s0, s0, s1
  1000c75a0  str     s0, [x19, x8]                            ; self->nextDiamondTime = (self->nextDiamondTime + 10)
  1000c75a4  ldp     x29, x30, [sp, #0x10]
  1000c75a8  ldp     x20, x19, [sp], #0x20
  1000c75ac  ret

; ======================================================================
; -[ADBrickManager gameOver]
; address 0x1000c75b0  size 408  kind objc
; ======================================================================
  1000c75b0  stp     x22, x21, [sp, #-0x30]!
  1000c75b4  stp     x20, x19, [sp, #0x10]
  1000c75b8  stp     x29, x30, [sp, #0x20]
  1000c75bc  add     x29, sp, #0x20
  1000c75c0  mov     x19, x0
  1000c75c4  adrp    x22, #0x10041d000
  1000c75c8  ldr     x0, [x22, #0xf18]                        ; class ADMissionManager
  1000c75cc  adrp    x8, #0x100417000
  1000c75d0  nop
  1000c75d4  ldr     x20, [x8, #0x848]
  1000c75d8  mov     x1, x20
  1000c75dc  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000c75e0  mov     x29, x29
  1000c75e4  bl      _objc_retainAutoreleasedReturnValue
  1000c75e8  mov     x21, x0
  1000c75ec  adrp    x8, #0x100416000
  1000c75f0  nop
  1000c75f4  ldr     x1, [x8, #0xe80]
  1000c75f8  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] playerDied]
  1000c75fc  mov     x0, x21
  1000c7600  bl      _objc_release
  1000c7604  ldr     x0, [x22, #0xf18]                        ; class ADMissionManager
  1000c7608  mov     x1, x20
  1000c760c  bl      _objc_msgSend                            ; [ADMissionManager sharedMissionManager]
  1000c7610  mov     x29, x29
  1000c7614  bl      _objc_retainAutoreleasedReturnValue
  1000c7618  mov     x20, x0
  1000c761c  adrp    x8, #0x100416000
  1000c7620  nop
  1000c7624  ldr     x1, [x8, #0xe58]
  1000c7628  bl      _objc_msgSend                            ; [[ADMissionManager sharedMissionManager] endGameplay]
  1000c762c  mov     x0, x20
  1000c7630  bl      _objc_release
  1000c7634  adrp    x8, #0x100419000
  1000c7638  nop
  1000c763c  ldr     x1, [x8, #0x348]
  1000c7640  mov     x0, x19
  1000c7644  bl      _objc_msgSend                            ; [self mode]
  1000c7648  cmp     w0, #1
  1000c764c  b.eq    loc_1000c7690                            ; if ([self mode] == 1)
  1000c7650  cmp     w0, #2
  1000c7654  b.ne    loc_1000c76c8                            ; if ([self mode] != 2)
  1000c7658  adrp    x8, #0x100417000
  1000c765c  nop
  1000c7660  ldr     x1, [x8, #0xac0]
  1000c7664  mov     x0, x19
  1000c7668  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c766c  mov     x29, x29
  1000c7670  bl      _objc_retainAutoreleasedReturnValue
  1000c7674  mov     x20, x0
  1000c7678  adrp    x8, #0x10041a000
  1000c767c  nop
  1000c7680  ldr     x1, [x8, #0xc30]
  1000c7684  bl      _objc_msgSend                            ; [[self gameplayViewController] goToChallengeFailedScreen]
  1000c7688  b       loc_1000c7700
  1000c768c  b       loc_1000c7730
loc_1000c7690:
  1000c7690  adrp    x8, #0x100417000
  1000c7694  nop
  1000c7698  ldr     x1, [x8, #0xac0]
  1000c769c  mov     x0, x19
  1000c76a0  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c76a4  mov     x29, x29
  1000c76a8  bl      _objc_retainAutoreleasedReturnValue
  1000c76ac  mov     x20, x0
  1000c76b0  adrp    x8, #0x100418000
  1000c76b4  nop
  1000c76b8  ldr     x1, [x8, #0xe58]
  1000c76bc  bl      _objc_msgSend                            ; [[self gameplayViewController] quitGameplayWithFail]
  1000c76c0  b       loc_1000c7700
  1000c76c4  b       loc_1000c7730
loc_1000c76c8:
  1000c76c8  cmp     w0, #3
  1000c76cc  b.ne    loc_1000c7714                            ; if ([self mode] != 3)
  1000c76d0  adrp    x8, #0x100417000
  1000c76d4  nop
  1000c76d8  ldr     x1, [x8, #0xac0]
  1000c76dc  mov     x0, x19
  1000c76e0  bl      _objc_msgSend                            ; [self gameplayViewController]
  1000c76e4  mov     x29, x29
  1000c76e8  bl      _objc_retainAutoreleasedReturnValue
  1000c76ec  mov     x20, x0
  1000c76f0  adrp    x8, #0x100418000
  1000c76f4  nop
  1000c76f8  ldr     x1, [x8, #0xe58]
  1000c76fc  bl      _objc_msgSend                            ; [[self gameplayViewController] quitGameplayWithFail]
loc_1000c7700:
  1000c7700  mov     x0, x20
  1000c7704  ldp     x29, x30, [sp, #0x20]
  1000c7708  ldp     x20, x19, [sp, #0x10]
  1000c770c  ldp     x22, x21, [sp], #0x30
  1000c7710  b       _objc_release
loc_1000c7714:
  1000c7714  ldp     x29, x30, [sp, #0x20]
  1000c7718  ldp     x20, x19, [sp, #0x10]
  1000c771c  ldp     x22, x21, [sp], #0x30
  1000c7720  ret
  1000c7724  mov     x19, x0
  1000c7728  mov     x0, x21
  1000c772c  b       loc_1000c7738
loc_1000c7730:
  1000c7730  mov     x19, x0
  1000c7734  mov     x0, x20
loc_1000c7738:
  1000c7738  bl      _objc_release
  1000c773c  mov     x0, x19
  1000c7740  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c7744  b       loc_1000c7730

; ======================================================================
; -[ADBrickManager addDiamond]
; address 0x1000c7748  size 420  kind objc
; ======================================================================
  1000c7748  stp     x22, x21, [sp, #-0x30]!
  1000c774c  stp     x20, x19, [sp, #0x10]
  1000c7750  stp     x29, x30, [sp, #0x20]
  1000c7754  add     x29, sp, #0x20
  1000c7758  mov     x19, x0
  1000c775c  adrp    x8, #0x10041e000
  1000c7760  ldr     x0, [x8, #0x430]                         ; class ADDiamondDropper
  1000c7764  adrp    x8, #0x100416000
  1000c7768  nop
  1000c776c  ldr     x1, [x8, #0xac8]
  1000c7770  bl      _objc_msgSend                            ; [ADDiamondDropper alloc]
  1000c7774  adrp    x8, #0x100418000
  1000c7778  nop
  1000c777c  ldr     x1, [x8, #0xb70]
  1000c7780  adrp    x2, #0x1003be000
  1000c7784  add     x2, x2, #0x550                           ; @"Diamond"
  1000c7788  bl      _objc_msgSend                            ; [[ADDiamondDropper alloc] initWithName:@"Diamond"]
  1000c778c  mov     x20, x0
  1000c7790  bl      _rand                                    ; rand()
  1000c7794  sxtw    x8, w0
  1000c7798  mov     x9, #-0x49f40001
  1000c779c  movk    x9, #0x60b7
  1000c77a0  mul     x8, x8, x9
  1000c77a4  lsr     x8, x8, #0x20
  1000c77a8  add     w8, w8, w0
  1000c77ac  asr     w9, w8, #8
  1000c77b0  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  1000c77b4  mov     w9, #0x168
  1000c77b8  msub    w8, w8, w9, w0
  1000c77bc  scvtf   s0, w8
  1000c77c0  fcvt    d0, s0
  1000c77c4  nop
  1000c77c8  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  1000c77cc  fmul    d0, d0, d1
  1000c77d0  nop
  1000c77d4  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  1000c77d8  fdiv    d0, d0, d1
  1000c77dc  fcvt    s0, d0
  1000c77e0  fcvt    d0, s0
  1000c77e4  bl      ___sincos_stret                          ; d0 = sin((((float)(rand() - t1 * 360) * 3.14159) / 180)), d1 = cos((((float)(rand() - t1 * 360) * 3.14159) / 180))
  1000c77e8  fmov    d2, #9.00000000
  1000c77ec  fmul    d1, d1, d2
  1000c77f0  fcvt    s1, d1
  1000c77f4  fmul    d0, d0, d2
  1000c77f8  fcvt    s2, d0
  1000c77fc  fcvt    d0, s1
  1000c7800  fcvt    d1, s2
  1000c7804  adrp    x8, #0x100417000
  1000c7808  nop
  1000c780c  ldr     x1, [x8, #0x20]
  1000c7810  mov     x0, x20
  1000c7814  bl      _objc_msgSend                            ; [[[ADDiamondDropper alloc] initWithName:@"Diamond"] setPosition:{(cos((((float)(rand() - t1 * 360) * 3.14159) / 180)) * 9), (sin((((float)(rand() - t1 * 360) * 3.14159) / 180)) * 9)}]
  1000c7818  adrp    x8, #0x100420000
  1000c781c  ldrsw   x21, [x8, #0x388]                        ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c7820  ldr     x0, [x19, x21]                           ; x0 = self->diamonds
  1000c7824  adrp    x8, #0x100416000
  1000c7828  nop
  1000c782c  ldr     x1, [x8, #0xe30]
  1000c7830  bl      _objc_msgSend                            ; [self->diamonds count]
  1000c7834  mov     w8, #0x40000
  1000c7838  movk    w8, #0x93e0
  1000c783c  add     w2, w0, w8
  1000c7840  adrp    x8, #0x100417000
  1000c7844  nop
  1000c7848  ldr     x1, [x8, #0x670]
  1000c784c  mov     x0, x20
  1000c7850  bl      _objc_msgSend                            ; [[[ADDiamondDropper alloc] initWithName:@"Diamond"] setTag:([self->diamonds count] + 0x493e0)]
  1000c7854  adrp    x8, #0x100419000
  1000c7858  nop
  1000c785c  ldr     x1, [x8, #0xc70]
  1000c7860  mov     x0, x20
  1000c7864  bl      _objc_msgSend                            ; [[[ADDiamondDropper alloc] initWithName:@"Diamond"] initSounds]
  1000c7868  adrp    x8, #0x100416000
  1000c786c  nop
  1000c7870  ldr     x1, [x8, #0xc78]
  1000c7874  mov     w2, #0
  1000c7878  mov     x0, x20
  1000c787c  bl      _objc_msgSend                            ; [[[ADDiamondDropper alloc] initWithName:@"Diamond"] setState:0]
  1000c7880  adrp    x8, #0x100418000
  1000c7884  nop
  1000c7888  ldr     x1, [x8, #0xb98]
  1000c788c  fmov    s0, #2.00000000
  1000c7890  mov     x0, x20
  1000c7894  bl      _objc_msgSend                            ; [[[ADDiamondDropper alloc] initWithName:@"Diamond"] setSpawn_time:2]
  1000c7898  adrp    x8, #0x100417000
  1000c789c  nop
  1000c78a0  ldr     x1, [x8, #0x68]
  1000c78a4  mov     x0, x20
  1000c78a8  bl      _objc_msgSend                            ; [[[ADDiamondDropper alloc] initWithName:@"Diamond"] updateOrientation]
  1000c78ac  ldr     x0, [x19, x21]                           ; x0 = self->diamonds
  1000c78b0  adrp    x8, #0x100416000
  1000c78b4  nop
  1000c78b8  ldr     x1, [x8, #0xd90]
  1000c78bc  mov     x2, x20
  1000c78c0  bl      _objc_msgSend                            ; [self->diamonds addObject:[[ADDiamondDropper alloc] initWithName:@"Diamond"]]
  1000c78c4  mov     x0, x20
  1000c78c8  ldp     x29, x30, [sp, #0x20]
  1000c78cc  ldp     x20, x19, [sp, #0x10]
  1000c78d0  ldp     x22, x21, [sp], #0x30
  1000c78d4  b       _objc_release
  1000c78d8  mov     x19, x0
  1000c78dc  mov     x0, x20
  1000c78e0  bl      _objc_release
  1000c78e4  mov     x0, x19
  1000c78e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager randomizeNextDiamondTime]
; address 0x1000c78ec  size 92  kind objc
; ======================================================================
  1000c78ec  stp     x20, x19, [sp, #-0x20]!
  1000c78f0  stp     x29, x30, [sp, #0x10]
  1000c78f4  add     x29, sp, #0x10
  1000c78f8  mov     x19, x0
  1000c78fc  bl      _rand                                    ; rand()
  1000c7900  sxtw    x8, w0
  1000c7904  mov     x9, #-0x77770001
  1000c7908  movk    x9, #0x8889
  1000c790c  mul     x8, x8, x9
  1000c7910  lsr     x8, x8, #0x20
  1000c7914  add     w8, w8, w0
  1000c7918  asr     w9, w8, #4
  1000c791c  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffff88888889) >>> 32) + rand()) >> 4) + ((((rand() * 0xffffffff88888889) >>> 32) + rand()) >>> 31))
  1000c7920  mov     w9, #0x1e
  1000c7924  msub    w8, w8, w9, w0
  1000c7928  add     w8, w8, #0x28
  1000c792c  scvtf   s0, w8
  1000c7930  adrp    x8, #0x100420000
  1000c7934  ldrsw   x8, [x8, #0x3bc]                         ; ivar offset ADBrickManager.nextDiamondTime (+0x4c)
  1000c7938  str     s0, [x19, x8]                            ; self->nextDiamondTime = (float)((rand() - t1 * 30) + 40)
  1000c793c  ldp     x29, x30, [sp, #0x10]
  1000c7940  ldp     x20, x19, [sp], #0x20
  1000c7944  ret

; ======================================================================
; -[ADBrickManager cleanDiamonds]
; address 0x1000c7948  size 40  kind objc
; ======================================================================
  1000c7948  adrp    x8, #0x100420000
  1000c794c  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c7950  ldr     x0, [x0, x8]                             ; x0 = self->diamonds
  1000c7954  adrp    x8, #0x100417000
  1000c7958  nop
  1000c795c  ldr     x2, [x8]
  1000c7960  adrp    x8, #0x100416000
  1000c7964  nop
  1000c7968  ldr     x1, [x8, #0xe48]
  1000c796c  b       _objc_msgSend                            ; [self->diamonds makeObjectsPerformSelector:@selector(deactivatePlaylist)]

; ======================================================================
; -[ADBrickManager stopAllSoundsInCurrentBrick]
; address 0x1000c7970  size 92  kind objc
; ======================================================================
  1000c7970  stp     x20, x19, [sp, #-0x20]!
  1000c7974  stp     x29, x30, [sp, #0x10]
  1000c7978  add     x29, sp, #0x10
  1000c797c  adrp    x8, #0x100417000
  1000c7980  nop
  1000c7984  ldr     x1, [x8, #0xab0]
  1000c7988  bl      _objc_msgSend                            ; [self currentBrick]
  1000c798c  mov     x29, x29
  1000c7990  bl      _objc_retainAutoreleasedReturnValue
  1000c7994  mov     x19, x0
  1000c7998  adrp    x8, #0x100419000
  1000c799c  nop
  1000c79a0  ldr     x1, [x8, #0x368]
  1000c79a4  bl      _objc_msgSend                            ; [[self currentBrick] stopAllSounds]
  1000c79a8  mov     x0, x19
  1000c79ac  ldp     x29, x30, [sp, #0x10]
  1000c79b0  ldp     x20, x19, [sp], #0x20
  1000c79b4  b       _objc_release
  1000c79b8  mov     x20, x0
  1000c79bc  mov     x0, x19
  1000c79c0  bl      _objc_release
  1000c79c4  mov     x0, x20
  1000c79c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager hasSkippableSoundsPlaying]
; address 0x1000c79cc  size 104  kind objc
; ======================================================================
  1000c79cc  stp     x20, x19, [sp, #-0x20]!
  1000c79d0  stp     x29, x30, [sp, #0x10]
  1000c79d4  add     x29, sp, #0x10
  1000c79d8  adrp    x8, #0x100417000
  1000c79dc  nop
  1000c79e0  ldr     x1, [x8, #0xab0]
  1000c79e4  bl      _objc_msgSend                            ; [self currentBrick]
  1000c79e8  mov     x29, x29
  1000c79ec  bl      _objc_retainAutoreleasedReturnValue
  1000c79f0  mov     x19, x0
  1000c79f4  adrp    x8, #0x100419000
  1000c79f8  nop
  1000c79fc  ldr     x1, [x8, #0x58]
  1000c7a00  bl      _objc_msgSend                            ; [[self currentBrick] hasSkippableSoundsPlaying]
  1000c7a04  mov     x20, x0
  1000c7a08  mov     x0, x19
  1000c7a0c  bl      _objc_release
  1000c7a10  mov     x0, x20
  1000c7a14  ldp     x29, x30, [sp, #0x10]
  1000c7a18  ldp     x20, x19, [sp], #0x20
  1000c7a1c  ret
  1000c7a20  mov     x20, x0
  1000c7a24  mov     x0, x19
  1000c7a28  bl      _objc_release
  1000c7a2c  mov     x0, x20
  1000c7a30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager skipSkippableSounds]
; address 0x1000c7a34  size 92  kind objc
; ======================================================================
  1000c7a34  stp     x20, x19, [sp, #-0x20]!
  1000c7a38  stp     x29, x30, [sp, #0x10]
  1000c7a3c  add     x29, sp, #0x10
  1000c7a40  adrp    x8, #0x100417000
  1000c7a44  nop
  1000c7a48  ldr     x1, [x8, #0xab0]
  1000c7a4c  bl      _objc_msgSend                            ; [self currentBrick]
  1000c7a50  mov     x29, x29
  1000c7a54  bl      _objc_retainAutoreleasedReturnValue
  1000c7a58  mov     x19, x0
  1000c7a5c  adrp    x8, #0x10041a000
  1000c7a60  nop
  1000c7a64  ldr     x1, [x8, #0xc38]
  1000c7a68  bl      _objc_msgSend                            ; [[self currentBrick] skipAllSkippableSounds]
  1000c7a6c  mov     x0, x19
  1000c7a70  ldp     x29, x30, [sp, #0x10]
  1000c7a74  ldp     x20, x19, [sp], #0x20
  1000c7a78  b       _objc_release
  1000c7a7c  mov     x20, x0
  1000c7a80  mov     x0, x19
  1000c7a84  bl      _objc_release
  1000c7a88  mov     x0, x20
  1000c7a8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager addPasserBy:]
; address 0x1000c7a90  size 44  kind objc
; ======================================================================
  1000c7a90  stp     x29, x30, [sp, #-0x10]!
  1000c7a94  mov     x29, sp
  1000c7a98  adrp    x8, #0x100420000
  1000c7a9c  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c7aa0  ldr     x0, [x0, x8]                             ; x0 = self->passerByManager
  1000c7aa4  adrp    x8, #0x100418000
  1000c7aa8  nop
  1000c7aac  ldr     x1, [x8, #0xba0]
  1000c7ab0  bl      _objc_msgSend                            ; [self->passerByManager addPasserBy:arg1]
  1000c7ab4  ldp     x29, x30, [sp], #0x10
  1000c7ab8  ret

; ======================================================================
; -[ADBrickManager passersByCount]
; address 0x1000c7abc  size 116  kind objc
; ======================================================================
  1000c7abc  stp     x20, x19, [sp, #-0x20]!
  1000c7ac0  stp     x29, x30, [sp, #0x10]
  1000c7ac4  add     x29, sp, #0x10
  1000c7ac8  adrp    x8, #0x100420000
  1000c7acc  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c7ad0  ldr     x0, [x0, x8]                             ; x0 = self->passerByManager
  1000c7ad4  adrp    x8, #0x10041a000
  1000c7ad8  nop
  1000c7adc  ldr     x1, [x8, #0xb30]
  1000c7ae0  bl      _objc_msgSend                            ; [self->passerByManager allPasserBy]
  1000c7ae4  mov     x29, x29
  1000c7ae8  bl      _objc_retainAutoreleasedReturnValue
  1000c7aec  mov     x19, x0
  1000c7af0  adrp    x8, #0x100416000
  1000c7af4  nop
  1000c7af8  ldr     x1, [x8, #0xe30]
  1000c7afc  bl      _objc_msgSend                            ; [[self->passerByManager allPasserBy] count]
  1000c7b00  mov     x20, x0
  1000c7b04  mov     x0, x19
  1000c7b08  bl      _objc_release
  1000c7b0c  mov     x0, x20
  1000c7b10  ldp     x29, x30, [sp, #0x10]
  1000c7b14  ldp     x20, x19, [sp], #0x20
  1000c7b18  ret
  1000c7b1c  mov     x20, x0
  1000c7b20  mov     x0, x19
  1000c7b24  bl      _objc_release
  1000c7b28  mov     x0, x20
  1000c7b2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager cleanPassersBy]
; address 0x1000c7b30  size 28  kind objc
; ======================================================================
  1000c7b30  adrp    x8, #0x100420000
  1000c7b34  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c7b38  ldr     x0, [x0, x8]                             ; x0 = self->passerByManager
  1000c7b3c  adrp    x8, #0x100419000
  1000c7b40  nop
  1000c7b44  ldr     x1, [x8, #0x158]
  1000c7b48  b       _objc_msgSend                            ; [self->passerByManager clean]

; ======================================================================
; -[ADBrickManager tryToPopPowerUpContainer]
; address 0x1000c7b4c  size 28  kind objc
; ======================================================================
  1000c7b4c  adrp    x8, #0x100420000
  1000c7b50  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c7b54  ldr     x0, [x0, x8]                             ; x0 = self->powerUpManager
  1000c7b58  adrp    x8, #0x10041a000
  1000c7b5c  nop
  1000c7b60  ldr     x1, [x8, #0xc40]
  1000c7b64  b       _objc_msgSend                            ; [self->powerUpManager tryToPopPowerUp]

; ======================================================================
; -[ADBrickManager forceToPopPowerUpContainerWithType:]
; address 0x1000c7b68  size 516  kind objc
; ======================================================================
  1000c7b68  stp     x24, x23, [sp, #-0x40]!
  1000c7b6c  stp     x22, x21, [sp, #0x10]
  1000c7b70  stp     x20, x19, [sp, #0x20]
  1000c7b74  stp     x29, x30, [sp, #0x30]
  1000c7b78  add     x29, sp, #0x30
  1000c7b7c  mov     x20, x0
  1000c7b80  mov     x0, x2
  1000c7b84  bl      _objc_retain
  1000c7b88  mov     x19, x0
  1000c7b8c  adrp    x8, #0x100417000
  1000c7b90  nop
  1000c7b94  ldr     x21, [x8, #0x50]
  1000c7b98  mov     x1, x21
  1000c7b9c  bl      _objc_msgSend                            ; [arg1 uppercaseString]
  1000c7ba0  mov     x29, x29
  1000c7ba4  bl      _objc_retainAutoreleasedReturnValue
  1000c7ba8  mov     x23, x0
  1000c7bac  adrp    x8, #0x100416000
  1000c7bb0  nop
  1000c7bb4  ldr     x22, [x8, #0xf58]
  1000c7bb8  adrp    x2, #0x1003ba000
  1000c7bbc  add     x2, x2, #0xcf0                           ; @"FIREWORKS"
  1000c7bc0  mov     x1, x22
  1000c7bc4  bl      _objc_msgSend                            ; [[arg1 uppercaseString] isEqualToString:@"FIREWORKS"]
  1000c7bc8  mov     x24, x0
  1000c7bcc  mov     x0, x23
  1000c7bd0  bl      _objc_release
  1000c7bd4  cbz     w24, loc_1000c7bfc                       ; if ([[arg1 uppercaseString] isEqualToString:@"FIREWORKS"] == 0)
  1000c7bd8  adrp    x8, #0x100420000
  1000c7bdc  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c7be0  ldr     x0, [x20, x8]                            ; x0 = self->powerUpManager
  1000c7be4  adrp    x8, #0x100418000
  1000c7be8  nop
  1000c7bec  ldr     x1, [x8, #0xb68]
  1000c7bf0  mov     w2, #2
  1000c7bf4  bl      _objc_msgSend                            ; [self->powerUpManager popPowerUpWithType:2]
  1000c7bf8  b       loc_1000c7d18
loc_1000c7bfc:
  1000c7bfc  mov     x0, x19
  1000c7c00  mov     x1, x21
  1000c7c04  bl      _objc_msgSend                            ; [arg1 uppercaseString]
  1000c7c08  mov     x29, x29
  1000c7c0c  bl      _objc_retainAutoreleasedReturnValue
  1000c7c10  mov     x23, x0
  1000c7c14  adrp    x2, #0x1003ba000
  1000c7c18  add     x2, x2, #0xd10                           ; @"MINIGUN"
  1000c7c1c  mov     x1, x22
  1000c7c20  bl      _objc_msgSend                            ; [[arg1 uppercaseString] isEqualToString:@"MINIGUN"]
  1000c7c24  mov     x24, x0
  1000c7c28  mov     x0, x23
  1000c7c2c  bl      _objc_release
  1000c7c30  cbz     w24, loc_1000c7c58                       ; if ([[arg1 uppercaseString] isEqualToString:@"MINIGUN"] == 0)
  1000c7c34  adrp    x8, #0x100420000
  1000c7c38  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c7c3c  ldr     x0, [x20, x8]                            ; x0 = self->powerUpManager
  1000c7c40  adrp    x8, #0x100418000
  1000c7c44  nop
  1000c7c48  ldr     x1, [x8, #0xb68]
  1000c7c4c  mov     w2, #1
  1000c7c50  bl      _objc_msgSend                            ; [self->powerUpManager popPowerUpWithType:1]
  1000c7c54  b       loc_1000c7d18
loc_1000c7c58:
  1000c7c58  mov     x0, x19
  1000c7c5c  mov     x1, x21
  1000c7c60  bl      _objc_msgSend                            ; [arg1 uppercaseString]
  1000c7c64  mov     x29, x29
  1000c7c68  bl      _objc_retainAutoreleasedReturnValue
  1000c7c6c  mov     x23, x0
  1000c7c70  adrp    x2, #0x1003ba000
  1000c7c74  add     x2, x2, #0xd30                           ; @"TESLA"
  1000c7c78  mov     x1, x22
  1000c7c7c  bl      _objc_msgSend                            ; [[arg1 uppercaseString] isEqualToString:@"TESLA"]
  1000c7c80  mov     x24, x0
  1000c7c84  mov     x0, x23
  1000c7c88  bl      _objc_release
  1000c7c8c  cbz     w24, loc_1000c7cb4                       ; if ([[arg1 uppercaseString] isEqualToString:@"TESLA"] == 0)
  1000c7c90  adrp    x8, #0x100420000
  1000c7c94  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c7c98  ldr     x0, [x20, x8]                            ; x0 = self->powerUpManager
  1000c7c9c  adrp    x8, #0x100418000
  1000c7ca0  nop
  1000c7ca4  ldr     x1, [x8, #0xb68]
  1000c7ca8  mov     w2, #4
  1000c7cac  bl      _objc_msgSend                            ; [self->powerUpManager popPowerUpWithType:4]
  1000c7cb0  b       loc_1000c7d18
loc_1000c7cb4:
  1000c7cb4  mov     x0, x19
  1000c7cb8  mov     x1, x21
  1000c7cbc  bl      _objc_msgSend                            ; [arg1 uppercaseString]
  1000c7cc0  mov     x29, x29
  1000c7cc4  bl      _objc_retainAutoreleasedReturnValue
  1000c7cc8  mov     x21, x0
  1000c7ccc  adrp    x2, #0x1003ba000
  1000c7cd0  add     x2, x2, #0xd50                           ; @"TORNADO"
  1000c7cd4  mov     x1, x22
  1000c7cd8  bl      _objc_msgSend                            ; [[arg1 uppercaseString] isEqualToString:@"TORNADO"]
  1000c7cdc  mov     x22, x0
  1000c7ce0  mov     x0, x21
  1000c7ce4  bl      _objc_release
  1000c7ce8  adrp    x8, #0x100420000
  1000c7cec  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c7cf0  ldr     x0, [x20, x8]                            ; x0 = self->powerUpManager
  1000c7cf4  adrp    x8, #0x100418000
  1000c7cf8  add     x8, x8, #0xb68                           ; &@selector(popPowerUpWithType:)
  1000c7cfc  ldr     x1, [x8]
  1000c7d00  cbz     w22, loc_1000c7d10                       ; if ([[arg1 uppercaseString] isEqualToString:@"TORNADO"] == 0)
  1000c7d04  mov     w2, #3
  1000c7d08  bl      _objc_msgSend                            ; [self->powerUpManager popPowerUpWithType:3]
  1000c7d0c  b       loc_1000c7d18
loc_1000c7d10:
  1000c7d10  mov     w2, #0
  1000c7d14  bl      _objc_msgSend                            ; [self->powerUpManager popPowerUpWithType:0]
loc_1000c7d18:
  1000c7d18  mov     x0, x19
  1000c7d1c  ldp     x29, x30, [sp, #0x30]
  1000c7d20  ldp     x20, x19, [sp, #0x20]
  1000c7d24  ldp     x22, x21, [sp, #0x10]
  1000c7d28  ldp     x24, x23, [sp], #0x40
  1000c7d2c  b       _objc_release
  1000c7d30  mov     x20, x0
  1000c7d34  b       loc_1000c7d4c
  1000c7d38  b       loc_1000c7d40
  1000c7d3c  b       loc_1000c7d40
loc_1000c7d40:
  1000c7d40  mov     x20, x0
  1000c7d44  mov     x0, x23
  1000c7d48  bl      _objc_release
loc_1000c7d4c:
  1000c7d4c  mov     x0, x19
  1000c7d50  bl      _objc_release
  1000c7d54  mov     x0, x20
  1000c7d58  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000c7d5c  mov     x20, x0
  1000c7d60  mov     x0, x21
  1000c7d64  bl      _objc_release
  1000c7d68  b       loc_1000c7d4c

; ======================================================================
; -[ADBrickManager pauseAllBricks]
; address 0x1000c7d6c  size 124  kind objc
; ======================================================================
  1000c7d6c  stp     x22, x21, [sp, #-0x30]!
  1000c7d70  stp     x20, x19, [sp, #0x10]
  1000c7d74  stp     x29, x30, [sp, #0x20]
  1000c7d78  add     x29, sp, #0x20
  1000c7d7c  mov     x19, x0
  1000c7d80  adrp    x8, #0x100420000
  1000c7d84  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c7d88  ldr     x0, [x19, x8]                            ; x0 = self->bricks
  1000c7d8c  adrp    x8, #0x100419000
  1000c7d90  nop
  1000c7d94  ldr     x20, [x8, #0x110]
  1000c7d98  adrp    x8, #0x100416000
  1000c7d9c  nop
  1000c7da0  ldr     x21, [x8, #0xe48]
  1000c7da4  mov     x1, x21
  1000c7da8  mov     x2, x20
  1000c7dac  bl      _objc_msgSend                            ; [self->bricks makeObjectsPerformSelector:@selector(pause)]
  1000c7db0  adrp    x8, #0x100420000
  1000c7db4  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c7db8  ldr     x0, [x19, x8]                            ; x0 = self->passerByManager
  1000c7dbc  mov     x1, x20
  1000c7dc0  bl      _objc_msgSend                            ; [self->passerByManager pause]
  1000c7dc4  adrp    x8, #0x100420000
  1000c7dc8  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c7dcc  ldr     x0, [x19, x8]                            ; x0 = self->diamonds
  1000c7dd0  mov     x1, x21
  1000c7dd4  mov     x2, x20
  1000c7dd8  ldp     x29, x30, [sp, #0x20]
  1000c7ddc  ldp     x20, x19, [sp, #0x10]
  1000c7de0  ldp     x22, x21, [sp], #0x30
  1000c7de4  b       _objc_msgSend                            ; [self->diamonds makeObjectsPerformSelector:@selector(pause)]

; ======================================================================
; -[ADBrickManager resumeAllBricks]
; address 0x1000c7de8  size 124  kind objc
; ======================================================================
  1000c7de8  stp     x22, x21, [sp, #-0x30]!
  1000c7dec  stp     x20, x19, [sp, #0x10]
  1000c7df0  stp     x29, x30, [sp, #0x20]
  1000c7df4  add     x29, sp, #0x20
  1000c7df8  mov     x19, x0
  1000c7dfc  adrp    x8, #0x100420000
  1000c7e00  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c7e04  ldr     x0, [x19, x8]                            ; x0 = self->bricks
  1000c7e08  adrp    x8, #0x100419000
  1000c7e0c  nop
  1000c7e10  ldr     x20, [x8, #0x128]
  1000c7e14  adrp    x8, #0x100416000
  1000c7e18  nop
  1000c7e1c  ldr     x21, [x8, #0xe48]
  1000c7e20  mov     x1, x21
  1000c7e24  mov     x2, x20
  1000c7e28  bl      _objc_msgSend                            ; [self->bricks makeObjectsPerformSelector:@selector(resume)]
  1000c7e2c  adrp    x8, #0x100420000
  1000c7e30  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c7e34  ldr     x0, [x19, x8]                            ; x0 = self->diamonds
  1000c7e38  mov     x1, x21
  1000c7e3c  mov     x2, x20
  1000c7e40  bl      _objc_msgSend                            ; [self->diamonds makeObjectsPerformSelector:@selector(resume)]
  1000c7e44  adrp    x8, #0x100420000
  1000c7e48  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c7e4c  ldr     x0, [x19, x8]                            ; x0 = self->passerByManager
  1000c7e50  mov     x1, x20
  1000c7e54  ldp     x29, x30, [sp, #0x20]
  1000c7e58  ldp     x20, x19, [sp, #0x10]
  1000c7e5c  ldp     x22, x21, [sp], #0x30
  1000c7e60  b       _objc_msgSend                            ; [self->passerByManager resume]

; ======================================================================
; -[ADBrickManager clean]
; address 0x1000c7e64  size 336  kind objc
; ======================================================================
  1000c7e64  stp     x22, x21, [sp, #-0x30]!
  1000c7e68  stp     x20, x19, [sp, #0x10]
  1000c7e6c  stp     x29, x30, [sp, #0x20]
  1000c7e70  add     x29, sp, #0x20
  1000c7e74  mov     x19, x0
  1000c7e78  adrp    x0, #0x1003c2000
  1000c7e7c  add     x0, x0, #0x210                           ; @"CLEAN BRICKMANAGER"
  1000c7e80  bl      _NSLog                                   ; NSLog(@"CLEAN BRICKMANAGER", _cmd)
  1000c7e84  adrp    x8, #0x10041a000
  1000c7e88  nop
  1000c7e8c  ldr     x1, [x8, #0xc10]
  1000c7e90  mov     x0, x19
  1000c7e94  bl      _objc_msgSend                            ; [self cleanPassersBy]
  1000c7e98  adrp    x8, #0x100420000
  1000c7e9c  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c7ea0  ldr     x0, [x19, x8]                            ; x0 = self->passerByManager
  1000c7ea4  adrp    x8, #0x10041a000
  1000c7ea8  nop
  1000c7eac  ldr     x1, [x8, #0xc48]
  1000c7eb0  bl      _objc_msgSend                            ; [self->passerByManager removeAllPassersBy]
  1000c7eb4  adrp    x8, #0x10041a000
  1000c7eb8  nop
  1000c7ebc  ldr     x1, [x8, #0xc50]
  1000c7ec0  mov     x0, x19
  1000c7ec4  bl      _objc_msgSend                            ; [self cleanDiamonds]
  1000c7ec8  adrp    x8, #0x100420000
  1000c7ecc  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c7ed0  ldr     x0, [x19, x8]                            ; x0 = self->diamonds
  1000c7ed4  adrp    x8, #0x100417000
  1000c7ed8  nop
  1000c7edc  ldr     x20, [x8, #0x1b8]
  1000c7ee0  mov     x1, x20
  1000c7ee4  bl      _objc_msgSend                            ; [self->diamonds removeAllObjects]
  1000c7ee8  adrp    x8, #0x100420000
  1000c7eec  ldrsw   x21, [x8, #0x384]                        ; ivar offset ADBrickManager.bricks (+0x20)
  1000c7ef0  ldr     x0, [x19, x21]                           ; x0 = self->bricks
  1000c7ef4  adrp    x8, #0x100419000
  1000c7ef8  nop
  1000c7efc  ldr     x2, [x8, #0x158]
  1000c7f00  adrp    x8, #0x100416000
  1000c7f04  nop
  1000c7f08  ldr     x1, [x8, #0xe48]
  1000c7f0c  bl      _objc_msgSend                            ; [self->bricks makeObjectsPerformSelector:@selector(clean)]
  1000c7f10  ldr     x0, [x19, x21]                           ; x0 = self->bricks
  1000c7f14  mov     x1, x20
  1000c7f18  bl      _objc_msgSend                            ; [self->bricks removeAllObjects]
  1000c7f1c  adrp    x8, #0x10041d000
  1000c7f20  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000c7f24  adrp    x8, #0x100417000
  1000c7f28  nop
  1000c7f2c  ldr     x1, [x8, #0x4f0]
  1000c7f30  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000c7f34  mov     x29, x29
  1000c7f38  bl      _objc_retainAutoreleasedReturnValue
  1000c7f3c  mov     x19, x0
  1000c7f40  adrp    x8, #0x100417000
  1000c7f44  nop
  1000c7f48  ldr     x1, [x8, #0x4f8]
  1000c7f4c  adrp    x2, #0x1003be000
  1000c7f50  add     x2, x2, #0x4b0                           ; @"impact"
  1000c7f54  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"impact"]
  1000c7f58  mov     x29, x29
  1000c7f5c  bl      _objc_retainAutoreleasedReturnValue
  1000c7f60  mov     x20, x0
  1000c7f64  mov     x0, x19
  1000c7f68  bl      _objc_release
  1000c7f6c  adrp    x8, #0x100417000
  1000c7f70  nop
  1000c7f74  ldr     x1, [x8, #0x618]
  1000c7f78  mov     x0, x20
  1000c7f7c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"impact"] deactivate]
  1000c7f80  mov     x0, x20
  1000c7f84  ldp     x29, x30, [sp, #0x20]
  1000c7f88  ldp     x20, x19, [sp, #0x10]
  1000c7f8c  ldp     x22, x21, [sp], #0x30
  1000c7f90  b       _objc_release
  1000c7f94  mov     x21, x0
  1000c7f98  mov     x0, x19
  1000c7f9c  b       loc_1000c7fa8
  1000c7fa0  mov     x21, x0
  1000c7fa4  mov     x0, x20
loc_1000c7fa8:
  1000c7fa8  bl      _objc_release
  1000c7fac  mov     x0, x21
  1000c7fb0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADBrickManager gameplayViewController]
; address 0x1000c7fb4  size 32  kind objc
; ======================================================================
  1000c7fb4  stp     x29, x30, [sp, #-0x10]!
  1000c7fb8  mov     x29, sp
  1000c7fbc  adrp    x8, #0x100420000
  1000c7fc0  ldrsw   x8, [x8, #0x3c8]                         ; ivar offset ADBrickManager._gameplayViewController (+0x78)
  1000c7fc4  add     x0, x0, x8
  1000c7fc8  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  1000c7fcc  ldp     x29, x30, [sp], #0x10
  1000c7fd0  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADBrickManager setGameplayViewController:]
; address 0x1000c7fd4  size 20  kind objc
; ======================================================================
  1000c7fd4  adrp    x8, #0x100420000
  1000c7fd8  ldrsw   x8, [x8, #0x3c8]                         ; ivar offset ADBrickManager._gameplayViewController (+0x78)
  1000c7fdc  add     x0, x0, x8
  1000c7fe0  mov     x1, x2
  1000c7fe4  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADBrickManager setMode:]
; address 0x1000c7fe8  size 16  kind objc
; ======================================================================
  1000c7fe8  adrp    x8, #0x100420000
  1000c7fec  ldrsw   x8, [x8, #0x3b8]                         ; ivar offset ADBrickManager._mode (+0x70)
  1000c7ff0  str     w2, [x0, x8]                             ; self->_mode = arg1
  1000c7ff4  ret

; ======================================================================
; -[ADBrickManager playerIsDead]
; address 0x1000c7ff8  size 20  kind objc
; ======================================================================
  1000c7ff8  adrp    x8, #0x100420000
  1000c7ffc  ldrsw   x8, [x8, #0x3cc]                         ; ivar offset ADBrickManager._playerIsDead (+0x6e)
  1000c8000  ldrb    w8, [x0, x8]                             ; w8 = self->_playerIsDead
  1000c8004  and     w0, w8, #1
  1000c8008  ret

; ======================================================================
; -[ADBrickManager setPlayerIsDead:]
; address 0x1000c800c  size 16  kind objc
; ======================================================================
  1000c800c  adrp    x8, #0x100420000
  1000c8010  ldrsw   x8, [x8, #0x3cc]                         ; ivar offset ADBrickManager._playerIsDead (+0x6e)
  1000c8014  strb    w2, [x0, x8]                             ; self->_playerIsDead = arg1
  1000c8018  ret

; ======================================================================
; -[ADBrickManager currentRandomAngle]
; address 0x1000c801c  size 20  kind objc
; ======================================================================
  1000c801c  adrp    x8, #0x100420000
  1000c8020  ldrsw   x8, [x8, #0x3d0]                         ; ivar offset ADBrickManager._currentRandomAngle (+0x74)
  1000c8024  ldr     w8, [x0, x8]                             ; w8 = self->_currentRandomAngle
  1000c8028  fmov    s0, w8
  1000c802c  ret

; ======================================================================
; -[ADBrickManager setCurrentRandomAngle:]
; address 0x1000c8030  size 20  kind objc
; ======================================================================
  1000c8030  fmov    w8, s0
  1000c8034  adrp    x9, #0x100420000
  1000c8038  ldrsw   x9, [x9, #0x3d0]                         ; ivar offset ADBrickManager._currentRandomAngle (+0x74)
  1000c803c  str     w8, [x0, x9]                             ; self->_currentRandomAngle = arg1
  1000c8040  ret

; ======================================================================
; -[ADBrickManager .cxx_destruct]
; address 0x1000c8044  size 240  kind objc
; ======================================================================
  1000c8044  stp     x20, x19, [sp, #-0x20]!
  1000c8048  stp     x29, x30, [sp, #0x10]
  1000c804c  add     x29, sp, #0x10
  1000c8050  mov     x19, x0
  1000c8054  adrp    x8, #0x100420000
  1000c8058  ldrsw   x8, [x8, #0x3c8]                         ; ivar offset ADBrickManager._gameplayViewController (+0x78)
  1000c805c  add     x0, x19, x8
  1000c8060  bl      _objc_destroyWeak
  1000c8064  adrp    x8, #0x100420000
  1000c8068  ldrsw   x8, [x8, #0x390]                         ; ivar offset ADBrickManager.powerUpManager (+0x60)
  1000c806c  add     x0, x19, x8
  1000c8070  mov     x1, #0
  1000c8074  bl      _objc_storeStrong
  1000c8078  adrp    x8, #0x100420000
  1000c807c  ldrsw   x8, [x8, #0x38c]                         ; ivar offset ADBrickManager.passerByManager (+0x58)
  1000c8080  add     x0, x19, x8
  1000c8084  mov     x1, #0
  1000c8088  bl      _objc_storeStrong
  1000c808c  adrp    x8, #0x100420000
  1000c8090  ldrsw   x8, [x8, #0x388]                         ; ivar offset ADBrickManager.diamonds (+0x50)
  1000c8094  add     x0, x19, x8
  1000c8098  mov     x1, #0
  1000c809c  bl      _objc_storeStrong
  1000c80a0  adrp    x8, #0x100420000
  1000c80a4  ldrsw   x8, [x8, #0x39c]                         ; ivar offset ADBrickManager.powerupList (+0x40)
  1000c80a8  add     x0, x19, x8
  1000c80ac  mov     x1, #0
  1000c80b0  bl      _objc_storeStrong
  1000c80b4  adrp    x8, #0x100420000
  1000c80b8  ldrsw   x8, [x8, #0x3a0]                         ; ivar offset ADBrickManager.brickScenario (+0x30)
  1000c80bc  add     x0, x19, x8
  1000c80c0  mov     x1, #0
  1000c80c4  bl      _objc_storeStrong
  1000c80c8  adrp    x8, #0x100420000
  1000c80cc  ldrsw   x8, [x8, #0x398]                         ; ivar offset ADBrickManager.deactivationList (+0x28)
  1000c80d0  add     x0, x19, x8
  1000c80d4  mov     x1, #0
  1000c80d8  bl      _objc_storeStrong
  1000c80dc  adrp    x8, #0x100420000
  1000c80e0  ldrsw   x8, [x8, #0x384]                         ; ivar offset ADBrickManager.bricks (+0x20)
  1000c80e4  add     x0, x19, x8
  1000c80e8  mov     x1, #0
  1000c80ec  bl      _objc_storeStrong
  1000c80f0  adrp    x8, #0x100420000
  1000c80f4  ldrsw   x8, [x8, #0x380]                         ; ivar offset ADBrickManager.enemyDictionary (+0x18)
  1000c80f8  add     x0, x19, x8
  1000c80fc  mov     x1, #0
  1000c8100  bl      _objc_storeStrong
  1000c8104  adrp    x8, #0x100420000
  1000c8108  ldrsw   x8, [x8, #0x3a8]                         ; ivar offset ADBrickManager.brickChanceDictionary (+0x10)
  1000c810c  add     x0, x19, x8
  1000c8110  mov     x1, #0
  1000c8114  bl      _objc_storeStrong
  1000c8118  mov     x1, #0
  1000c811c  adrp    x8, #0x100420000
  1000c8120  ldrsw   x8, [x8, #0x3a4]                         ; ivar offset ADBrickManager.brickDictionary (+0x8)
  1000c8124  add     x0, x19, x8
  1000c8128  ldp     x29, x30, [sp, #0x10]
  1000c812c  ldp     x20, x19, [sp], #0x20
  1000c8130  b       _objc_storeStrong
