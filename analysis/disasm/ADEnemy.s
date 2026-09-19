// unit ADEnemy — 142 functions
//   0x10005ddd4    2128  -[ADEnemy initWithName:]
//   0x10005e624     516  -[ADEnemy setPositionFromDictionary:]
//   0x10005e828     168  -[ADEnemy setOrientationWithX:andY:]
//   0x10005e8d0      20  -[ADEnemy getOrientation]
//   0x10005e8e4     204  -[ADEnemy updateOrientation]
//   0x10005e9b0      60  -[ADEnemy randomizeNormalAngle]
//   0x10005e9ec     148  -[ADEnemy updateNormalOrientation]
//   0x10005ea80     276  -[ADEnemy setPosition:]
//   0x10005eb94    3952  -[ADEnemy update:]
//   0x10005fb04     188  -[ADEnemy setState:]
//   0x10005fbc0     588  -[ADEnemy spawn]
//   0x10005fe0c      72  -[ADEnemy walk]
//   0x10005fe54     168  -[ADEnemy walkOrAgressive]
//   0x10005fefc      80  -[ADEnemy dodge]
//   0x10005ff4c     136  -[ADEnemy protect]
//   0x10005ffd4     644  -[ADEnemy aggressive]
//   0x100060258     172  -[ADEnemy aggressive]_block_invoke
//   0x100060304     640  -[ADEnemy attack]
//   0x100060584      92  -[ADEnemy attack]_block_invoke
//   0x1000605e0      20  -[ADEnemy attack]_block_invoke_block_invoke
//   0x1000605f4     392  -[ADEnemy afterAttackSound]
//   0x10006077c     168  -[ADEnemy transitionToBerserk]
//   0x100060824     288  -[ADEnemy berserk]
//   0x100060944     276  -[ADEnemy berserkGoAway]
//   0x100060a58     212  -[ADEnemy stopAfterPlayerWasKilled]
//   0x100060b2c       4  -[ADEnemy hitByWeapon:multiHitFactor:]
//   0x100060b30    1384  -[ADEnemy hitByWeapon:]
//   0x100061098     492  -[ADEnemy hitByProjectile:]
//   0x100061284     604  -[ADEnemy hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:]
//   0x1000614e0      28  -[ADEnemy hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:]_block_invoke
//   0x1000614fc       8  sub_1000614fc
//   0x100061504       8  sub_100061504
//   0x10006150c    1240  -[ADEnemy playImpactAndHitSoundForDamages:melee:]
//   0x1000619e4      28  -[ADEnemy playImpactAndHitSoundForDamages:melee:]_block_invoke
//   0x100061a00     184  -[ADEnemy setLife:]
//   0x100061ab8      16  -[ADEnemy setLifeToZero]
//   0x100061ac8     932  -[ADEnemy die]
//   0x100061e6c     252  -[ADEnemy explode]
//   0x100061f68     128  -[ADEnemy canBeShotAt]
//   0x100061fe8     148  -[ADEnemy blowAway:]
//   0x10006207c     448  -[ADEnemy displayNameForName]
//   0x10006223c     228  -[ADEnemy initSounds]
//   0x100062320      60  -[ADEnemy deactivate]
//   0x10006235c     148  -[ADEnemy activatePlaylist]
//   0x1000623f0       4  -[ADEnemy activatePlaylist]_block_invoke
//   0x1000623f4       8  sub_1000623f4
//   0x1000623fc       8  sub_1000623fc
//   0x100062404      28  -[ADEnemy deactivatePlaylist]
//   0x100062420    2080  -[ADEnemy playAnySoundContaining:looping:spatialized:]
//   0x100062c40      56  -[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke
//   0x100062c78       8  sub_100062c78
//   0x100062c80       8  sub_100062c80
//   0x100062c88     200  -[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2
//   0x100062d50      32  -[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2_block_invoke
//   0x100062d70       8  sub_100062d70
//   0x100062d78       8  sub_100062d78
//   0x100062d80       8  sub_100062d80
//   0x100062d88       8  sub_100062d88
//   0x100062d90      40  -[ADEnemy playAnySoundContaining:]
//   0x100062db8    2100  -[ADEnemy playHitSoundForDamages:]
//   0x1000635ec     128  -[ADEnemy playHitSoundForDamages:]_block_invoke
//   0x10006366c      16  sub_10006366c
//   0x10006367c      12  sub_10006367c
//   0x100063688     960  -[ADEnemy playDeathSound]
//   0x100063a48     104  -[ADEnemy setReverbAndWetBalanceOnSound:]
//   0x100063ab0     196  -[ADEnemy stopAllSounds]
//   0x100063b74     224  -[ADEnemy destroyEnemy]
//   0x100063c54      16  -[ADEnemy getAmbiantName]
//   0x100063c64     208  -[ADEnemy pause]
//   0x100063d34     120  -[ADEnemy resume]
//   0x100063dac      16  -[ADEnemy playlist]
//   0x100063dbc       8  -[ADEnemy getType]
//   0x100063dc4     156  -[ADEnemy dealloc]
//   0x100063e60      16  -[ADEnemy randomAdditionalSpawnAngle]
//   0x100063e70      16  -[ADEnemy setRandomAdditionalSpawnAngle:]
//   0x100063e80      16  -[ADEnemy spawn_time]
//   0x100063e90      16  -[ADEnemy setSpawn_time:]
//   0x100063ea0      16  -[ADEnemy angleFromPlayer]
//   0x100063eb0      16  -[ADEnemy setAngleFromPlayer:]
//   0x100063ec0      16  -[ADEnemy squaredDistance]
//   0x100063ed0      16  -[ADEnemy setSquaredDistance:]
//   0x100063ee0      16  -[ADEnemy attackDistance]
//   0x100063ef0      16  -[ADEnemy setAttackDistance:]
//   0x100063f00      16  -[ADEnemy life]
//   0x100063f10      16  -[ADEnemy maxLife]
//   0x100063f20      16  -[ADEnemy setMaxLife:]
//   0x100063f30      16  -[ADEnemy state]
//   0x100063f40      16  -[ADEnemy tag]
//   0x100063f50      16  -[ADEnemy setTag:]
//   0x100063f60      16  -[ADEnemy comboBonus]
//   0x100063f70      16  -[ADEnemy setComboBonus:]
//   0x100063f80      16  -[ADEnemy score]
//   0x100063f90      16  -[ADEnemy setScore:]
//   0x100063fa0      16  -[ADEnemy coinsReward]
//   0x100063fb0      16  -[ADEnemy setCoinsReward:]
//   0x100063fc0      16  -[ADEnemy speed]
//   0x100063fd0      16  -[ADEnemy setSpeed:]
//   0x100063fe0      16  -[ADEnemy agressiveSpeed]
//   0x100063ff0      16  -[ADEnemy setAgressiveSpeed:]
//   0x100064000      16  -[ADEnemy name]
//   0x100064010      56  -[ADEnemy setName:]
//   0x100064048      16  -[ADEnemy displayName]
//   0x100064058      56  -[ADEnemy setDisplayName:]
//   0x100064090      16  -[ADEnemy soundsPrefix]
//   0x1000640a0      56  -[ADEnemy setSoundsPrefix:]
//   0x1000640d8      16  -[ADEnemy spawn_after]
//   0x1000640e8      56  -[ADEnemy setSpawn_after:]
//   0x100064120      16  -[ADEnemy nextShotWillBeCritical]
//   0x100064130      16  -[ADEnemy setNextShotWillBeCritical:]
//   0x100064140      16  -[ADEnemy nextShotWillBePrecise]
//   0x100064150      16  -[ADEnemy setNextShotWillBePrecise:]
//   0x100064160      20  -[ADEnemy position]
//   0x100064174      20  -[ADEnemy timeInState]
//   0x100064188      20  -[ADEnemy setTimeInState:]
//   0x10006419c      20  -[ADEnemy spawn_sound_duration]
//   0x1000641b0      20  -[ADEnemy setSpawn_sound_duration:]
//   0x1000641c4      16  -[ADEnemy sound]
//   0x1000641d4      56  -[ADEnemy setSound:]
//   0x10006420c      16  -[ADEnemy useOwnImpactSounds]
//   0x10006421c      16  -[ADEnemy setUseOwnImpactSounds:]
//   0x10006422c      16  -[ADEnemy explosion_dictionary]
//   0x10006423c      56  -[ADEnemy setExplosion_dictionary:]
//   0x100064274      16  -[ADEnemy shield_dictionary]
//   0x100064284      56  -[ADEnemy setShield_dictionary:]
//   0x1000642bc      16  -[ADEnemy dodge_dictionary]
//   0x1000642cc      56  -[ADEnemy setDodge_dictionary:]
//   0x100064304      16  -[ADEnemy circling_dictionary]
//   0x100064314      56  -[ADEnemy setCircling_dictionary:]
//   0x10006434c      16  -[ADEnemy berserk_dictionary]
//   0x10006435c      56  -[ADEnemy setBerserk_dictionary:]
//   0x100064394      20  -[ADEnemy destroyed]
//   0x1000643a8      16  -[ADEnemy setDestroyed:]
//   0x1000643b8      16  -[ADEnemy parentBrick]
//   0x1000643c8      56  -[ADEnemy setParentBrick:]
//   0x100064400      16  -[ADEnemy requiredPlaylistActivation]
//   0x100064410      16  -[ADEnemy setRequiredPlaylistActivation:]
//   0x100064420      16  -[ADEnemy playlistActivated]
//   0x100064430      16  -[ADEnemy setPlaylistActivated:]
//   0x100064440      16  -[ADEnemy multiHitFactor]
//   0x100064450      16  -[ADEnemy setMultiHitFactor:]
//   0x100064460     324  -[ADEnemy .cxx_destruct]
//   0x1000645a4       4  -[ADEnemy .cxx_construct]

; ======================================================================
; -[ADEnemy initWithName:]
; address 0x10005ddd4  size 2128  kind objc
; ======================================================================
  10005ddd4  stp     d9, d8, [sp, #-0x70]!
  10005ddd8  stp     x28, x27, [sp, #0x10]
  10005dddc  stp     x26, x25, [sp, #0x20]
  10005dde0  stp     x24, x23, [sp, #0x30]
  10005dde4  stp     x22, x21, [sp, #0x40]
  10005dde8  stp     x20, x19, [sp, #0x50]
  10005ddec  stp     x29, x30, [sp, #0x60]
  10005ddf0  add     x29, sp, #0x60
  10005ddf4  sub     sp, sp, #0x10
  10005ddf8  mov     x20, x0
  10005ddfc  mov     x0, x2
  10005de00  bl      _objc_retain
  10005de04  mov     x19, x0
  10005de08  str     x20, [sp]
  10005de0c  adrp    x8, #0x10041e000
  10005de10  ldr     x8, [x8, #0xd80]
  10005de14  str     x8, [sp, #8]
  10005de18  adrp    x8, #0x100416000
  10005de1c  nop
  10005de20  ldr     x1, [x8, #0xab8]
  10005de24  mov     x25, #0
  10005de28  mov     x0, sp
  10005de2c  bl      _objc_msgSendSuper2                      ; [super init]
  10005de30  mov     x20, x0
  10005de34  cbz     x20, loc_10005e508                       ; if (self == 0)
  10005de38  mov     x25, x20
  10005de3c  adrp    x8, #0x100417000
  10005de40  nop
  10005de44  ldr     x1, [x8, #0x428]
  10005de48  mov     x0, x20
  10005de4c  mov     x2, x19
  10005de50  bl      _objc_msgSend                            ; [self setName:arg1]
  10005de54  mov     x25, x20
  10005de58  adrp    x8, #0x100419000
  10005de5c  nop
  10005de60  ldr     x21, [x8, #0x188]
  10005de64  adrp    x2, #0x1003bd000
  10005de68  add     x2, x2, #0xfd0                           ; @" "
  10005de6c  mov     x0, x19
  10005de70  mov     x1, x21
  10005de74  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@" "]
  10005de78  mov     x29, x29
  10005de7c  bl      _objc_retainAutoreleasedReturnValue
  10005de80  mov     x23, x0
  10005de84  adrp    x8, #0x100416000
  10005de88  nop
  10005de8c  ldr     x22, [x8, #0xc30]
  10005de90  mov     x2, #0
  10005de94  mov     x1, x22
  10005de98  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]
  10005de9c  mov     x29, x29
  10005dea0  bl      _objc_retainAutoreleasedReturnValue
  10005dea4  mov     x24, x0
  10005dea8  adrp    x8, #0x100419000
  10005deac  nop
  10005deb0  ldr     x1, [x8, #0x190]
  10005deb4  mov     x0, x20
  10005deb8  mov     x2, x24
  10005debc  bl      _objc_msgSend                            ; [self setSoundsPrefix:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]]
  10005dec0  mov     x25, x20
  10005dec4  mov     x0, x24
  10005dec8  bl      _objc_release
  10005decc  mov     x0, x23
  10005ded0  bl      _objc_release
  10005ded4  adrp    x8, #0x10041e000
  10005ded8  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005dedc  adrp    x8, #0x100417000
  10005dee0  nop
  10005dee4  ldr     x1, [x8, #0xaa8]
  10005dee8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005deec  mov     x29, x29
  10005def0  bl      _objc_retainAutoreleasedReturnValue
  10005def4  mov     x23, x0
  10005def8  adrp    x2, #0x1003bd000
  10005defc  add     x2, x2, #0xfd0                           ; @" "
  10005df00  mov     x0, x19
  10005df04  mov     x1, x21
  10005df08  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@" "]
  10005df0c  mov     x29, x29
  10005df10  bl      _objc_retainAutoreleasedReturnValue
  10005df14  mov     x24, x0
  10005df18  mov     x2, #0
  10005df1c  mov     x1, x22
  10005df20  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]
  10005df24  mov     x29, x29
  10005df28  bl      _objc_retainAutoreleasedReturnValue
  10005df2c  mov     x25, x0
  10005df30  adrp    x8, #0x100419000
  10005df34  nop
  10005df38  ldr     x1, [x8, #0x198]
  10005df3c  mov     x0, x23
  10005df40  mov     x2, x25
  10005df44  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]]
  10005df48  mov     x29, x29
  10005df4c  bl      _objc_retainAutoreleasedReturnValue
  10005df50  mov     x21, x0
  10005df54  mov     x0, x25
  10005df58  bl      _objc_release
  10005df5c  mov     x0, x24
  10005df60  bl      _objc_release
  10005df64  mov     x0, x23
  10005df68  bl      _objc_release
  10005df6c  adrp    x8, #0x100419000
  10005df70  nop
  10005df74  ldr     x1, [x8, #0x1a0]
  10005df78  adrp    x8, #0x100181000
  10005df7c  ldr     s0, [x8, #0xc10]                         ; s0 = 0.300000012
  10005df80  mov     x0, x20
  10005df84  bl      _objc_msgSend                            ; [self setAttackDistance:0.3]
  10005df88  adrp    x8, #0x100417000
  10005df8c  nop
  10005df90  ldr     x25, [x8, #0x40]
  10005df94  adrp    x2, #0x1003bd000
  10005df98  add     x2, x2, #0xff0                           ; @"life"
  10005df9c  mov     x0, x21
  10005dfa0  mov     x1, x25
  10005dfa4  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"life"]
  10005dfa8  mov     x29, x29
  10005dfac  bl      _objc_retainAutoreleasedReturnValue
  10005dfb0  mov     x23, x0
  10005dfb4  adrp    x8, #0x100417000
  10005dfb8  nop
  10005dfbc  ldr     x26, [x8, #0x48]
  10005dfc0  mov     x1, x26
  10005dfc4  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"life"] floatValue]
  10005dfc8  adrp    x8, #0x100418000
  10005dfcc  nop
  10005dfd0  ldr     x22, [x8, #0xcb8]
  10005dfd4  mov     x0, x20
  10005dfd8  mov     x1, x22
  10005dfdc  bl      _objc_msgSend                            ; [self setLife:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"life"] floatValue]]
  10005dfe0  mov     x0, x23
  10005dfe4  bl      _objc_release
  10005dfe8  adrp    x8, #0x100419000
  10005dfec  nop
  10005dff0  ldr     x24, [x8, #0x1a8]
  10005dff4  mov     x0, x20
  10005dff8  mov     x1, x24
  10005dffc  bl      _objc_msgSend                            ; [self life]
  10005e000  adrp    x8, #0x100419000
  10005e004  nop
  10005e008  ldr     x1, [x8, #0x1b0]
  10005e00c  mov     x0, x20
  10005e010  bl      _objc_msgSend                            ; [self setMaxLife:[self life]]
  10005e014  adrp    x2, #0x1003be000
  10005e018  add     x2, x2, #0x10                            ; @"speed"
  10005e01c  mov     x0, x21
  10005e020  mov     x1, x25
  10005e024  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"speed"]
  10005e028  mov     x29, x29
  10005e02c  bl      _objc_retainAutoreleasedReturnValue
  10005e030  mov     x27, x0
  10005e034  mov     x1, x26
  10005e038  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"speed"] floatValue]
  10005e03c  adrp    x8, #0x100417000
  10005e040  nop
  10005e044  ldr     x23, [x8, #0x8d0]
  10005e048  mov     x0, x20
  10005e04c  mov     x1, x23
  10005e050  bl      _objc_msgSend                            ; [self setSpeed:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"speed"] floatValue]]
  10005e054  mov     x0, x27
  10005e058  bl      _objc_release
  10005e05c  adrp    x2, #0x1003be000
  10005e060  add     x2, x2, #0x30                            ; @"ambiant"
  10005e064  mov     x0, x21
  10005e068  mov     x1, x25
  10005e06c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"ambiant"]
  10005e070  mov     x29, x29
  10005e074  bl      _objc_retainAutoreleasedReturnValue
  10005e078  adrp    x8, #0x10041f000
  10005e07c  ldrsw   x9, [x8, #0xb6c]                         ; ivar offset ADEnemy.ambiantName (+0x50)
  10005e080  ldr     x8, [x20, x9]                            ; x8 = self->ambiantName
  10005e084  str     x0, [x20, x9]                            ; self->ambiantName = [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"ambiant"]
  10005e088  mov     x0, x8
  10005e08c  bl      _objc_release
  10005e090  adrp    x2, #0x1003be000
  10005e094  add     x2, x2, #0x50                            ; @"score"
  10005e098  mov     x0, x21
  10005e09c  mov     x1, x25
  10005e0a0  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"score"]
  10005e0a4  mov     x29, x29
  10005e0a8  bl      _objc_retainAutoreleasedReturnValue
  10005e0ac  mov     x28, x0
  10005e0b0  adrp    x8, #0x100417000
  10005e0b4  nop
  10005e0b8  ldr     x27, [x8, #0x110]
  10005e0bc  mov     x1, x27
  10005e0c0  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"score"] intValue]
  10005e0c4  mov     x2, x0
  10005e0c8  adrp    x8, #0x100419000
  10005e0cc  nop
  10005e0d0  ldr     x1, [x8, #0x1b8]
  10005e0d4  mov     x0, x20
  10005e0d8  bl      _objc_msgSend                            ; [self setScore:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"score"] intValue]]
  10005e0dc  mov     x0, x28
  10005e0e0  bl      _objc_release
  10005e0e4  adrp    x2, #0x1003be000
  10005e0e8  add     x2, x2, #0x70                            ; @"comboBonus"
  10005e0ec  mov     x0, x21
  10005e0f0  mov     x1, x25
  10005e0f4  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"comboBonus"]
  10005e0f8  mov     x29, x29
  10005e0fc  bl      _objc_retainAutoreleasedReturnValue
  10005e100  mov     x28, x0
  10005e104  mov     x1, x27
  10005e108  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"comboBonus"] intValue]
  10005e10c  mov     x2, x0
  10005e110  adrp    x8, #0x100419000
  10005e114  nop
  10005e118  ldr     x1, [x8, #0x1c0]
  10005e11c  mov     x0, x20
  10005e120  bl      _objc_msgSend                            ; [self setComboBonus:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"comboBonus"] intValue]]
  10005e124  mov     x0, x28
  10005e128  bl      _objc_release
  10005e12c  adrp    x2, #0x1003be000
  10005e130  add     x2, x2, #0x90                            ; @"coinsReward"
  10005e134  mov     x0, x21
  10005e138  mov     x1, x25
  10005e13c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"coinsReward"]
  10005e140  mov     x29, x29
  10005e144  bl      _objc_retainAutoreleasedReturnValue
  10005e148  mov     x28, x0
  10005e14c  mov     x1, x27
  10005e150  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"coinsReward"] intValue]
  10005e154  mov     x2, x0
  10005e158  adrp    x8, #0x100419000
  10005e15c  nop
  10005e160  ldr     x1, [x8, #0x1c8]
  10005e164  mov     x0, x20
  10005e168  bl      _objc_msgSend                            ; [self setCoinsReward:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"coinsReward"] intValue]]
  10005e16c  mov     x0, x28
  10005e170  bl      _objc_release
  10005e174  adrp    x2, #0x1003be000
  10005e178  add     x2, x2, #0xb0                            ; @"explosion"
  10005e17c  mov     x0, x21
  10005e180  mov     x1, x25
  10005e184  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"explosion"]
  10005e188  mov     x29, x29
  10005e18c  bl      _objc_retainAutoreleasedReturnValue
  10005e190  mov     x27, x0
  10005e194  adrp    x8, #0x100419000
  10005e198  nop
  10005e19c  ldr     x1, [x8, #0x1d0]
  10005e1a0  mov     x0, x20
  10005e1a4  mov     x2, x27
  10005e1a8  bl      _objc_msgSend                            ; [self setExplosion_dictionary:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"explosion"]]
  10005e1ac  mov     x0, x27
  10005e1b0  bl      _objc_release
  10005e1b4  adrp    x2, #0x1003be000
  10005e1b8  add     x2, x2, #0xd0                            ; @"shield"
  10005e1bc  mov     x0, x21
  10005e1c0  mov     x1, x25
  10005e1c4  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"shield"]
  10005e1c8  mov     x29, x29
  10005e1cc  bl      _objc_retainAutoreleasedReturnValue
  10005e1d0  mov     x27, x0
  10005e1d4  adrp    x8, #0x100419000
  10005e1d8  nop
  10005e1dc  ldr     x1, [x8, #0x1d8]
  10005e1e0  mov     x0, x20
  10005e1e4  mov     x2, x27
  10005e1e8  bl      _objc_msgSend                            ; [self setShield_dictionary:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"shield"]]
  10005e1ec  mov     x0, x27
  10005e1f0  bl      _objc_release
  10005e1f4  adrp    x2, #0x1003be000
  10005e1f8  add     x2, x2, #0xf0                            ; @"dodge"
  10005e1fc  mov     x0, x21
  10005e200  mov     x1, x25
  10005e204  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"dodge"]
  10005e208  mov     x29, x29
  10005e20c  bl      _objc_retainAutoreleasedReturnValue
  10005e210  mov     x27, x0
  10005e214  adrp    x8, #0x100419000
  10005e218  nop
  10005e21c  ldr     x1, [x8, #0x1e0]
  10005e220  mov     x0, x20
  10005e224  mov     x2, x27
  10005e228  bl      _objc_msgSend                            ; [self setDodge_dictionary:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"dodge"]]
  10005e22c  mov     x0, x27
  10005e230  bl      _objc_release
  10005e234  adrp    x2, #0x1003be000
  10005e238  add     x2, x2, #0x110                           ; @"circling"
  10005e23c  mov     x0, x21
  10005e240  mov     x1, x25
  10005e244  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"circling"]
  10005e248  mov     x29, x29
  10005e24c  bl      _objc_retainAutoreleasedReturnValue
  10005e250  mov     x27, x0
  10005e254  adrp    x8, #0x100419000
  10005e258  nop
  10005e25c  ldr     x1, [x8, #0x1e8]
  10005e260  mov     x0, x20
  10005e264  mov     x2, x27
  10005e268  bl      _objc_msgSend                            ; [self setCircling_dictionary:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"circling"]]
  10005e26c  mov     x0, x27
  10005e270  bl      _objc_release
  10005e274  adrp    x2, #0x1003be000
  10005e278  add     x2, x2, #0x130                           ; @"berserk"
  10005e27c  mov     x0, x21
  10005e280  mov     x1, x25
  10005e284  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"berserk"]
  10005e288  mov     x29, x29
  10005e28c  bl      _objc_retainAutoreleasedReturnValue
  10005e290  mov     x27, x0
  10005e294  adrp    x8, #0x100419000
  10005e298  nop
  10005e29c  ldr     x1, [x8, #0x1f0]
  10005e2a0  mov     x0, x20
  10005e2a4  mov     x2, x27
  10005e2a8  bl      _objc_msgSend                            ; [self setBerserk_dictionary:[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"berserk"]]
  10005e2ac  mov     x0, x27
  10005e2b0  bl      _objc_release
  10005e2b4  adrp    x8, #0x100416000
  10005e2b8  nop
  10005e2bc  ldr     x1, [x8, #0xc78]
  10005e2c0  mov     w2, #-1
  10005e2c4  mov     x0, x20
  10005e2c8  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  10005e2cc  adrp    x8, #0x100419000
  10005e2d0  nop
  10005e2d4  ldr     x1, [x8, #0x1f8]
  10005e2d8  fmov    s0, #1.00000000
  10005e2dc  mov     x0, x20
  10005e2e0  bl      _objc_msgSend                            ; [self setSpawn_sound_duration:1]
  10005e2e4  adrp    x2, #0x1003be000
  10005e2e8  add     x2, x2, #0x150                           ; @"agressiveSpeed"
  10005e2ec  mov     x0, x21
  10005e2f0  mov     x1, x25
  10005e2f4  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"agressiveSpeed"]
  10005e2f8  mov     x29, x29
  10005e2fc  bl      _objc_retainAutoreleasedReturnValue
  10005e300  mov     x27, x0
  10005e304  bl      _objc_release
  10005e308  cbz     x27, loc_10005e354                       ; if ([[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"agressiveSpeed"] == 0)
  10005e30c  adrp    x2, #0x1003be000
  10005e310  add     x2, x2, #0x150                           ; @"agressiveSpeed"
  10005e314  mov     x0, x21
  10005e318  mov     x1, x25
  10005e31c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"agressiveSpeed"]
  10005e320  mov     x29, x29
  10005e324  bl      _objc_retainAutoreleasedReturnValue
  10005e328  mov     x25, x0
  10005e32c  mov     x1, x26
  10005e330  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"agressiveSpeed"] floatValue]
  10005e334  adrp    x8, #0x100419000
  10005e338  nop
  10005e33c  ldr     x1, [x8, #0x200]
  10005e340  mov     x0, x20
  10005e344  bl      _objc_msgSend                            ; [self setAgressiveSpeed:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"agressiveSpeed"] floatValue]]
  10005e348  mov     x0, x25
  10005e34c  bl      _objc_release
  10005e350  b       loc_10005e37c
loc_10005e354:
  10005e354  adrp    x8, #0x100417000
  10005e358  nop
  10005e35c  ldr     x1, [x8, #0x18]
  10005e360  mov     x0, x20
  10005e364  bl      _objc_msgSend                            ; [self speed]
  10005e368  adrp    x8, #0x100419000
  10005e36c  nop
  10005e370  ldr     x1, [x8, #0x200]
  10005e374  mov     x0, x20
  10005e378  bl      _objc_msgSend                            ; [self setAgressiveSpeed:[self speed]]
loc_10005e37c:
  10005e37c  adrp    x27, #0x10041e000
  10005e380  ldr     x0, [x27]                                ; class ADGameModifiers
  10005e384  adrp    x8, #0x100417000
  10005e388  nop
  10005e38c  ldr     x25, [x8, #0x510]
  10005e390  mov     x1, x25
  10005e394  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10005e398  mov     x29, x29
  10005e39c  bl      _objc_retainAutoreleasedReturnValue
  10005e3a0  mov     x26, x0
  10005e3a4  adrp    x8, #0x100419000
  10005e3a8  nop
  10005e3ac  ldr     x1, [x8, #0x208]
  10005e3b0  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] enemiLifeModifier]
  10005e3b4  mov     v8.16b, v0.16b
  10005e3b8  mov     x0, x20
  10005e3bc  mov     x1, x24
  10005e3c0  bl      _objc_msgSend                            ; [self life]
  10005e3c4  fmul    s0, s8, s0
  10005e3c8  mov     x0, x20
  10005e3cc  mov     x1, x22
  10005e3d0  bl      _objc_msgSend                            ; [self setLife:([[ADGameModifiers sharedModifiers] enemiLifeModifier] * [self life])]
  10005e3d4  mov     x0, x26
  10005e3d8  bl      _objc_release
  10005e3dc  ldr     x0, [x27]                                ; class ADGameModifiers
  10005e3e0  mov     x1, x25
  10005e3e4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10005e3e8  mov     x29, x29
  10005e3ec  bl      _objc_retainAutoreleasedReturnValue
  10005e3f0  mov     x24, x0
  10005e3f4  adrp    x8, #0x100419000
  10005e3f8  nop
  10005e3fc  ldr     x1, [x8, #0x210]
  10005e400  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] enemiSpeedModifier]
  10005e404  mov     v8.16b, v0.16b
  10005e408  adrp    x8, #0x100417000
  10005e40c  nop
  10005e410  ldr     x1, [x8, #0x18]
  10005e414  mov     x0, x20
  10005e418  bl      _objc_msgSend                            ; [self speed]
  10005e41c  fmul    s0, s8, s0
  10005e420  mov     x0, x20
  10005e424  mov     x1, x23
  10005e428  bl      _objc_msgSend                            ; [self setSpeed:([[ADGameModifiers sharedModifiers] enemiSpeedModifier] * [self speed])]
  10005e42c  mov     x0, x24
  10005e430  bl      _objc_release
  10005e434  adrp    x8, #0x10041d000
  10005e438  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10005e43c  adrp    x8, #0x100417000
  10005e440  nop
  10005e444  ldr     x1, [x8, #0x4f0]
  10005e448  bl      _objc_msgSend                            ; [S3DEngine engine]
  10005e44c  mov     x29, x29
  10005e450  bl      _objc_retainAutoreleasedReturnValue
  10005e454  mov     x23, x0
  10005e458  adrp    x8, #0x100419000
  10005e45c  nop
  10005e460  ldr     x1, [x8, #0x218]
  10005e464  mov     x0, x20
  10005e468  bl      _objc_msgSend                            ; [self soundsPrefix]
  10005e46c  mov     x29, x29
  10005e470  bl      _objc_retainAutoreleasedReturnValue
  10005e474  mov     x24, x0
  10005e478  adrp    x8, #0x100417000
  10005e47c  nop
  10005e480  ldr     x1, [x8, #0x4f8]
  10005e484  mov     x0, x23
  10005e488  mov     x2, x24
  10005e48c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[self soundsPrefix]]
  10005e490  mov     x29, x29
  10005e494  bl      _objc_retainAutoreleasedReturnValue
  10005e498  adrp    x8, #0x10041f000
  10005e49c  ldrsw   x9, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  10005e4a0  ldr     x8, [x20, x9]                            ; x8 = self->playlist
  10005e4a4  str     x0, [x20, x9]                            ; self->playlist = [[S3DEngine engine] playListWithName:[self soundsPrefix]]
  10005e4a8  mov     x0, x8
  10005e4ac  bl      _objc_release
  10005e4b0  mov     x0, x24
  10005e4b4  bl      _objc_release
  10005e4b8  mov     x0, x23
  10005e4bc  bl      _objc_release
  10005e4c0  adrp    x8, #0x100419000
  10005e4c4  nop
  10005e4c8  ldr     x1, [x8, #0x220]
  10005e4cc  mov     x0, x20
  10005e4d0  bl      _objc_msgSend                            ; [self displayNameForName]
  10005e4d4  mov     x29, x29
  10005e4d8  bl      _objc_retainAutoreleasedReturnValue
  10005e4dc  mov     x23, x0
  10005e4e0  adrp    x8, #0x100419000
  10005e4e4  nop
  10005e4e8  ldr     x1, [x8, #0x228]
  10005e4ec  mov     x0, x20
  10005e4f0  mov     x2, x23
  10005e4f4  bl      _objc_msgSend                            ; [self setDisplayName:[self displayNameForName]]
  10005e4f8  mov     x0, x23
  10005e4fc  bl      _objc_release
  10005e500  mov     x0, x21
  10005e504  bl      _objc_release
loc_10005e508:
  10005e508  mov     x0, x19
  10005e50c  bl      _objc_release
  10005e510  mov     x0, x20
  10005e514  sub     sp, x29, #0x60
  10005e518  ldp     x29, x30, [sp, #0x60]
  10005e51c  ldp     x20, x19, [sp, #0x50]
  10005e520  ldp     x22, x21, [sp, #0x40]
  10005e524  ldp     x24, x23, [sp, #0x30]
  10005e528  ldp     x26, x25, [sp, #0x20]
  10005e52c  ldp     x28, x27, [sp, #0x10]
  10005e530  ldp     d9, d8, [sp], #0x70
  10005e534  ret
  10005e538  mov     x22, x0
  10005e53c  b       loc_10005e604
  10005e540  mov     x22, x0
  10005e544  mov     x20, x25
  10005e548  b       loc_10005e60c
  10005e54c  mov     x22, x0
  10005e550  mov     x0, x26
  10005e554  b       loc_10005e600
  10005e558  mov     x22, x0
  10005e55c  mov     x0, x24
  10005e560  b       loc_10005e600
  10005e564  b       loc_10005e5f8
  10005e568  b       loc_10005e5d8
  10005e56c  b       loc_10005e574
  10005e570  b       loc_10005e574
loc_10005e574:
  10005e574  mov     x22, x0
  10005e578  mov     x0, x28
  10005e57c  b       loc_10005e600
  10005e580  mov     x22, x0
  10005e584  mov     x0, x25
  10005e588  b       loc_10005e600
  10005e58c  mov     x22, x0
  10005e590  b       loc_10005e5bc
  10005e594  b       loc_10005e5a0
  10005e598  mov     x22, x0
  10005e59c  b       loc_10005e5bc
loc_10005e5a0:
  10005e5a0  mov     x22, x0
  10005e5a4  b       loc_10005e5b4
  10005e5a8  mov     x22, x0
  10005e5ac  mov     x0, x25
  10005e5b0  bl      _objc_release
loc_10005e5b4:
  10005e5b4  mov     x0, x24
  10005e5b8  bl      _objc_release
loc_10005e5bc:
  10005e5bc  mov     x0, x23
  10005e5c0  bl      _objc_release
  10005e5c4  b       loc_10005e60c
  10005e5c8  b       loc_10005e5d8
  10005e5cc  b       loc_10005e5d8
  10005e5d0  b       loc_10005e5d8
  10005e5d4  b       loc_10005e5d8
loc_10005e5d8:
  10005e5d8  mov     x22, x0
  10005e5dc  mov     x0, x27
  10005e5e0  b       loc_10005e600
  10005e5e4  b       loc_10005e5f8
  10005e5e8  mov     x22, x0
  10005e5ec  mov     x0, x24
  10005e5f0  bl      _objc_release
  10005e5f4  b       loc_10005e5fc
loc_10005e5f8:
  10005e5f8  mov     x22, x0
loc_10005e5fc:
  10005e5fc  mov     x0, x23
loc_10005e600:
  10005e600  bl      _objc_release
loc_10005e604:
  10005e604  mov     x0, x21
  10005e608  bl      _objc_release
loc_10005e60c:
  10005e60c  mov     x0, x19
  10005e610  bl      _objc_release
  10005e614  mov     x0, x20
  10005e618  bl      _objc_release
  10005e61c  mov     x0, x22
  10005e620  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy setPositionFromDictionary:]
; address 0x10005e624  size 516  kind objc
; ======================================================================
  10005e624  stp     d11, d10, [sp, #-0x60]!
  10005e628  stp     d9, d8, [sp, #0x10]
  10005e62c  stp     x24, x23, [sp, #0x20]
  10005e630  stp     x22, x21, [sp, #0x30]
  10005e634  stp     x20, x19, [sp, #0x40]
  10005e638  stp     x29, x30, [sp, #0x50]
  10005e63c  add     x29, sp, #0x50
  10005e640  mov     x20, x0
  10005e644  mov     x0, x2
  10005e648  bl      _objc_retain
  10005e64c  mov     x19, x0
  10005e650  adrp    x8, #0x100417000
  10005e654  nop
  10005e658  ldr     x21, [x8, #0x40]
  10005e65c  adrp    x2, #0x1003b9000
  10005e660  add     x2, x2, #0xc50                           ; @"spawn_angle"
  10005e664  mov     x1, x21
  10005e668  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_angle"]
  10005e66c  mov     x29, x29
  10005e670  bl      _objc_retainAutoreleasedReturnValue
  10005e674  mov     x23, x0
  10005e678  adrp    x8, #0x100417000
  10005e67c  nop
  10005e680  ldr     x22, [x8, #0x48]
  10005e684  mov     x1, x22
  10005e688  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_angle"] floatValue]
  10005e68c  mov     v8.16b, v0.16b
  10005e690  mov     x0, x23
  10005e694  bl      _objc_release
  10005e698  adrp    x8, #0x100419000
  10005e69c  nop
  10005e6a0  ldr     x1, [x8, #0x230]
  10005e6a4  mov     x0, x20
  10005e6a8  bl      _objc_msgSend                            ; [self randomAdditionalSpawnAngle]
  10005e6ac  mov     v9.16b, v0.16b
  10005e6b0  adrp    x2, #0x1003b9000
  10005e6b4  add     x2, x2, #0xc70                           ; @"spawn_distance"
  10005e6b8  mov     x0, x19
  10005e6bc  mov     x1, x21
  10005e6c0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_distance"]
  10005e6c4  mov     x29, x29
  10005e6c8  bl      _objc_retainAutoreleasedReturnValue
  10005e6cc  mov     x21, x0
  10005e6d0  mov     x1, x22
  10005e6d4  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_distance"] floatValue]
  10005e6d8  mov     v10.16b, v0.16b
  10005e6dc  fadd    s0, s8, s9
  10005e6e0  fcvt    d0, s0
  10005e6e4  adrp    x8, #0x100181000
  10005e6e8  ldr     d1, [x8, #0x9e8]                         ; d1 = 3.14159265
  10005e6ec  fmul    d0, d0, d1                               ; t1 = (([[arg1 objectForKey:@"spawn_angle"] floatValue] + [self randomAdditionalSpawnAngle]) * 3.14159)
  10005e6f0  nop
  10005e6f4  ldr     d1, [x8, #0x9f0]                         ; d1 = 180.0
  10005e6f8  fdiv    d0, d0, d1
  10005e6fc  fcvt    s8, d0
  10005e700  mov     x0, x21
  10005e704  bl      _objc_release
  10005e708  mov     v0.16b, v8.16b
  10005e70c  bl      ___sincosf_stret                         ; d0 = sin((t1 / 180)), d1 = cos((t1 / 180))
  10005e710  fmul    s0, s10, s0
  10005e714  fcvt    d0, s0
  10005e718  fmul    s1, s10, s1
  10005e71c  fcvt    d1, s1
  10005e720  adrp    x8, #0x100417000
  10005e724  nop
  10005e728  ldr     x1, [x8, #0x20]
  10005e72c  mov     x0, x20
  10005e730  bl      _objc_msgSend                            ; [self setPosition:{([[arg1 objectForKey:@"spawn_distance"] floatValue] * sin((t1 / 180))), ([[arg1 objectForKey:@"spawn_distance"] floatValue] * cos((t1 / 180)))}]
  10005e734  adrp    x8, #0x100417000
  10005e738  nop
  10005e73c  ldr     x1, [x8, #0x68]
  10005e740  mov     x0, x20
  10005e744  bl      _objc_msgSend                            ; [self updateOrientation]
  10005e748  adrp    x8, #0x100419000
  10005e74c  nop
  10005e750  ldr     x1, [x8, #0x238]
  10005e754  mov     x0, x20
  10005e758  bl      _objc_msgSend                            ; [self dodge_dictionary]
  10005e75c  mov     x29, x29
  10005e760  bl      _objc_retainAutoreleasedReturnValue
  10005e764  mov     x21, x0
  10005e768  cbz     x21, loc_10005e778                       ; if ([self dodge_dictionary] == 0)
  10005e76c  mov     x0, x21
  10005e770  bl      _objc_release
  10005e774  b       loc_10005e7a8
loc_10005e778:
  10005e778  adrp    x8, #0x100419000
  10005e77c  nop
  10005e780  ldr     x1, [x8, #0x240]
  10005e784  mov     x0, x20
  10005e788  bl      _objc_msgSend                            ; [self circling_dictionary]
  10005e78c  mov     x29, x29
  10005e790  bl      _objc_retainAutoreleasedReturnValue
  10005e794  mov     x22, x0
  10005e798  bl      _objc_release
  10005e79c  mov     x0, x21
  10005e7a0  bl      _objc_release
  10005e7a4  cbz     x22, loc_10005e7d0                       ; if ([self circling_dictionary] == 0)
loc_10005e7a8:
  10005e7a8  adrp    x8, #0x100419000
  10005e7ac  nop
  10005e7b0  ldr     x1, [x8, #0x248]
  10005e7b4  mov     x0, x20
  10005e7b8  bl      _objc_msgSend                            ; [self randomizeNormalAngle]
  10005e7bc  adrp    x8, #0x100419000
  10005e7c0  nop
  10005e7c4  ldr     x1, [x8, #0x250]
  10005e7c8  mov     x0, x20
  10005e7cc  bl      _objc_msgSend                            ; [self updateNormalOrientation]
loc_10005e7d0:
  10005e7d0  mov     x0, x19
  10005e7d4  ldp     x29, x30, [sp, #0x50]
  10005e7d8  ldp     x20, x19, [sp, #0x40]
  10005e7dc  ldp     x22, x21, [sp, #0x30]
  10005e7e0  ldp     x24, x23, [sp, #0x20]
  10005e7e4  ldp     d9, d8, [sp, #0x10]
  10005e7e8  ldp     d11, d10, [sp], #0x60
  10005e7ec  b       _objc_release
  10005e7f0  mov     x20, x0
loc_10005e7f4:
  10005e7f4  mov     x0, x19
  10005e7f8  bl      _objc_release
  10005e7fc  mov     x0, x20
  10005e800  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005e804  mov     x20, x0
  10005e808  mov     x0, x23
  10005e80c  bl      _objc_release
  10005e810  b       loc_10005e7f4
  10005e814  b       loc_10005e818
loc_10005e818:
  10005e818  mov     x20, x0
  10005e81c  mov     x0, x21
  10005e820  bl      _objc_release
  10005e824  b       loc_10005e7f4

; ======================================================================
; -[ADEnemy setOrientationWithX:andY:]
; address 0x10005e828  size 168  kind objc
; ======================================================================
  10005e828  stp     d9, d8, [sp, #-0x30]!
  10005e82c  stp     x20, x19, [sp, #0x10]
  10005e830  stp     x29, x30, [sp, #0x20]
  10005e834  add     x29, sp, #0x20
  10005e838  mov     x19, x0
  10005e83c  fcvt    d0, s0
  10005e840  adrp    x8, #0x10041f000
  10005e844  ldrsw   x8, [x8, #0xb74]                         ; ivar offset ADEnemy.orientation (+0x8)
  10005e848  add     x8, x19, x8
  10005e84c  fcvt    d1, s1
  10005e850  fmul    d2, d0, d0
  10005e854  fmul    d3, d1, d1
  10005e858  fadd    d2, d2, d3
  10005e85c  fsqrt   d2, d2
  10005e860  fcvt    s2, d2
  10005e864  fcvt    d9, s2
  10005e868  fdiv    d0, d0, d9
  10005e86c  str     d0, [x8]                                 ; self->orientation.x = (arg1 / sqrt(((arg1 * arg1) + (arg2 * arg2))))
  10005e870  fdiv    d0, d1, d9
  10005e874  str     d0, [x8, #8]                             ; self->orientation.y = (arg2 / sqrt(((arg1 * arg1) + (arg2 * arg2))))
  10005e878  adrp    x8, #0x100417000
  10005e87c  nop
  10005e880  ldr     x20, [x8, #8]
  10005e884  mov     x1, x20
  10005e888  bl      _objc_msgSend                            ; [self position]
  10005e88c  fdiv    d0, d1, d9
  10005e890  fcvt    s8, d0
  10005e894  mov     x0, x19
  10005e898  mov     x1, x20
  10005e89c  bl      _objc_msgSend                            ; [self position]
  10005e8a0  fdiv    d0, d0, d9
  10005e8a4  fcvt    s1, d0
  10005e8a8  mov     v0.16b, v8.16b
  10005e8ac  bl      _atan2f                                  ; atan2f(([self position].1 / sqrt(((arg1 * arg1) + (arg2 * arg2)))), ([self position].0 / sqrt(((arg1 * arg1) + (arg2 * arg2)))))
  10005e8b0  adrp    x8, #0x100417000
  10005e8b4  nop
  10005e8b8  ldr     x1, [x8, #0x28]
  10005e8bc  mov     x0, x19
  10005e8c0  ldp     x29, x30, [sp, #0x20]
  10005e8c4  ldp     x20, x19, [sp, #0x10]
  10005e8c8  ldp     d9, d8, [sp], #0x30
  10005e8cc  b       _objc_msgSend                            ; [self setAngleFromPlayer:atan2f(([self position].1 / sqrt(((arg1 * arg1) + (arg2 * arg2)))), ([self position].0 / sqrt(((arg1 * arg1) + (arg2 * arg2)))))]

; ======================================================================
; -[ADEnemy getOrientation]
; address 0x10005e8d0  size 20  kind objc
; ======================================================================
  10005e8d0  adrp    x8, #0x10041f000
  10005e8d4  ldrsw   x8, [x8, #0xb74]                         ; ivar offset ADEnemy.orientation (+0x8)
  10005e8d8  add     x8, x0, x8
  10005e8dc  ldp     d0, d1, [x8]
  10005e8e0  ret

; ======================================================================
; -[ADEnemy updateOrientation]
; address 0x10005e8e4  size 204  kind objc
; ======================================================================
  10005e8e4  stp     d9, d8, [sp, #-0x40]!
  10005e8e8  stp     x22, x21, [sp, #0x10]
  10005e8ec  stp     x20, x19, [sp, #0x20]
  10005e8f0  stp     x29, x30, [sp, #0x30]
  10005e8f4  add     x29, sp, #0x30
  10005e8f8  mov     x19, x0
  10005e8fc  adrp    x8, #0x100417000
  10005e900  nop
  10005e904  ldr     x20, [x8, #8]
  10005e908  mov     x1, x20
  10005e90c  bl      _objc_msgSend                            ; [self position]
  10005e910  fneg    d0, d0
  10005e914  adrp    x8, #0x10041f000
  10005e918  ldrsw   x21, [x8, #0xb74]                        ; ivar offset ADEnemy.orientation (+0x8)
  10005e91c  str     d0, [x19, x21]                           ; self->orientation.x = -[self position].0
  10005e920  mov     x0, x19
  10005e924  mov     x1, x20
  10005e928  bl      _objc_msgSend                            ; [self position]
  10005e92c  fneg    d0, d1
  10005e930  add     x8, x19, x21
  10005e934  ldr     d2, [x8]                                 ; d2 = self->orientation.x
  10005e938  fmul    d3, d2, d2
  10005e93c  fmul    d1, d1, d1
  10005e940  fadd    d1, d3, d1
  10005e944  fsqrt   d1, d1                                   ; t1 = sqrt(((self->orientation.x * self->orientation.x) + ([self position].1 * [self position].1)))
  10005e948  fcvt    s1, d1
  10005e94c  fcvt    d9, s1
  10005e950  fdiv    d1, d2, d9
  10005e954  fdiv    d0, d0, d9
  10005e958  stp     d1, d0, [x8]
  10005e95c  mov     x0, x19
  10005e960  mov     x1, x20
  10005e964  bl      _objc_msgSend                            ; [self position]
  10005e968  fdiv    d0, d1, d9
  10005e96c  fcvt    s8, d0
  10005e970  mov     x0, x19
  10005e974  mov     x1, x20
  10005e978  bl      _objc_msgSend                            ; [self position]
  10005e97c  fdiv    d0, d0, d9
  10005e980  fcvt    s1, d0
  10005e984  mov     v0.16b, v8.16b
  10005e988  bl      _atan2f                                  ; atan2f(([self position].1 / t1), ([self position].0 / t1))
  10005e98c  adrp    x8, #0x100417000
  10005e990  nop
  10005e994  ldr     x1, [x8, #0x28]
  10005e998  mov     x0, x19
  10005e99c  ldp     x29, x30, [sp, #0x30]
  10005e9a0  ldp     x20, x19, [sp, #0x20]
  10005e9a4  ldp     x22, x21, [sp, #0x10]
  10005e9a8  ldp     d9, d8, [sp], #0x40
  10005e9ac  b       _objc_msgSend                            ; [self setAngleFromPlayer:atan2f(([self position].1 / t1), ([self position].0 / t1))]

; ======================================================================
; -[ADEnemy randomizeNormalAngle]
; address 0x10005e9b0  size 60  kind objc
; ======================================================================
  10005e9b0  stp     x20, x19, [sp, #-0x20]!
  10005e9b4  stp     x29, x30, [sp, #0x10]
  10005e9b8  add     x29, sp, #0x10
  10005e9bc  mov     x19, x0
  10005e9c0  bl      _rand                                    ; rand()
  10005e9c4  and     w8, w0, #1
  10005e9c8  adrp    x9, #0x100181000
  10005e9cc  add     x9, x9, #0xc28                           ; tconst_100181c28
  10005e9d0  ldr     s0, [x9, w8, uxtw #2]
  10005e9d4  adrp    x8, #0x10041f000
  10005e9d8  ldrsw   x8, [x8, #0xb78]                         ; ivar offset ADEnemy.normalAngle (+0x5c)
  10005e9dc  str     s0, [x19, x8]                            ; self->normalAngle = s0
  10005e9e0  ldp     x29, x30, [sp, #0x10]
  10005e9e4  ldp     x20, x19, [sp], #0x20
  10005e9e8  ret

; ======================================================================
; -[ADEnemy updateNormalOrientation]
; address 0x10005e9ec  size 148  kind objc
; ======================================================================
  10005e9ec  stp     d9, d8, [sp, #-0x30]!
  10005e9f0  stp     x20, x19, [sp, #0x10]
  10005e9f4  stp     x29, x30, [sp, #0x20]
  10005e9f8  add     x29, sp, #0x20
  10005e9fc  mov     x19, x0
  10005ea00  adrp    x8, #0x10041f000
  10005ea04  ldrsw   x8, [x8, #0xb74]                         ; ivar offset ADEnemy.orientation (+0x8)
  10005ea08  add     x20, x19, x8
  10005ea0c  ldr     d8, [x20]                                ; d8 = self->orientation.x
  10005ea10  adrp    x8, #0x10041f000
  10005ea14  ldrsw   x8, [x8, #0xb78]                         ; ivar offset ADEnemy.normalAngle (+0x5c)
  10005ea18  ldr     s0, [x19, x8]                            ; s0 = self->normalAngle
  10005ea1c  fcvt    d0, s0
  10005ea20  bl      ___sincos_stret                          ; d0 = sin(self->normalAngle), d1 = cos(self->normalAngle)
  10005ea24  fmul    d2, d8, d1
  10005ea28  fmul    d3, d8, d0
  10005ea2c  adrp    x8, #0x10041f000
  10005ea30  ldrsw   x8, [x8, #0xb7c]                         ; ivar offset ADEnemy.normalOrientation (+0x18)
  10005ea34  add     x8, x19, x8
  10005ea38  ldr     d4, [x20, #8]                            ; d4 = self->orientation.y
  10005ea3c  fmul    d0, d4, d0
  10005ea40  fmul    d1, d1, d4
  10005ea44  fsub    d0, d2, d0                               ; t1 = ((self->orientation.x * cos(self->normalAngle)) - (self->orientation.y * sin(self->normalAngle)))
  10005ea48  fadd    d1, d1, d3                               ; t2 = ((cos(self->normalAngle) * self->orientation.y) + (self->orientation.x * sin(self->normalAngle)))
  10005ea4c  fcvt    s0, d0
  10005ea50  fcvt    s1, d1
  10005ea54  fcvt    d0, s0
  10005ea58  fcvt    d1, s1
  10005ea5c  stp     d0, d1, [x8]
  10005ea60  adrp    x8, #0x100417000
  10005ea64  nop
  10005ea68  ldr     x1, [x8, #0x68]
  10005ea6c  mov     x0, x19
  10005ea70  ldp     x29, x30, [sp, #0x20]
  10005ea74  ldp     x20, x19, [sp, #0x10]
  10005ea78  ldp     d9, d8, [sp], #0x30
  10005ea7c  b       _objc_msgSend                            ; [self updateOrientation]

; ======================================================================
; -[ADEnemy setPosition:]
; address 0x10005ea80  size 276  kind objc
; ======================================================================
  10005ea80  stp     d9, d8, [sp, #-0x40]!
  10005ea84  stp     x22, x21, [sp, #0x10]
  10005ea88  stp     x20, x19, [sp, #0x20]
  10005ea8c  stp     x29, x30, [sp, #0x30]
  10005ea90  add     x29, sp, #0x30
  10005ea94  mov     x19, x0
  10005ea98  adrp    x8, #0x10041f000
  10005ea9c  ldrsw   x8, [x8, #0xb80]                         ; ivar offset ADEnemy._position (+0x110)
  10005eaa0  add     x8, x19, x8
  10005eaa4  stp     d0, d1, [x8]
  10005eaa8  adrp    x8, #0x100416000
  10005eaac  nop
  10005eab0  ldr     x1, [x8, #0xff0]
  10005eab4  bl      _objc_msgSend                            ; [self sound]
  10005eab8  mov     x29, x29
  10005eabc  bl      _objc_retainAutoreleasedReturnValue
  10005eac0  mov     x21, x0
  10005eac4  adrp    x8, #0x100417000
  10005eac8  nop
  10005eacc  ldr     x20, [x8, #8]
  10005ead0  mov     x0, x19
  10005ead4  mov     x1, x20
  10005ead8  bl      _objc_msgSend                            ; [self position]
  10005eadc  mov     v8.16b, v0.16b
  10005eae0  mov     x0, x19
  10005eae4  mov     x1, x20
  10005eae8  bl      _objc_msgSend                            ; [self position]
  10005eaec  fcvt    s0, d8
  10005eaf0  fcvt    s1, d1
  10005eaf4  adrp    x8, #0x100417000
  10005eaf8  nop
  10005eafc  ldr     x1, [x8, #0x38]
  10005eb00  movi    v2.16b, #0
  10005eb04  mov     x0, x21
  10005eb08  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  10005eb0c  mov     x0, x21
  10005eb10  bl      _objc_release
  10005eb14  mov     x0, x19
  10005eb18  mov     x1, x20
  10005eb1c  bl      _objc_msgSend                            ; [self position]
  10005eb20  mov     v8.16b, v0.16b
  10005eb24  mov     x0, x19
  10005eb28  mov     x1, x20
  10005eb2c  bl      _objc_msgSend                            ; [self position]
  10005eb30  fmul    d9, d8, d0
  10005eb34  mov     x0, x19
  10005eb38  mov     x1, x20
  10005eb3c  bl      _objc_msgSend                            ; [self position]
  10005eb40  mov     v8.16b, v1.16b
  10005eb44  mov     x0, x19
  10005eb48  mov     x1, x20
  10005eb4c  bl      _objc_msgSend                            ; [self position]
  10005eb50  fmul    d0, d8, d1
  10005eb54  fadd    d0, d9, d0
  10005eb58  fcvt    s0, d0
  10005eb5c  adrp    x8, #0x100419000
  10005eb60  nop
  10005eb64  ldr     x1, [x8, #0x258]
  10005eb68  mov     x0, x19
  10005eb6c  ldp     x29, x30, [sp, #0x30]
  10005eb70  ldp     x20, x19, [sp, #0x20]
  10005eb74  ldp     x22, x21, [sp, #0x10]
  10005eb78  ldp     d9, d8, [sp], #0x40
  10005eb7c  b       _objc_msgSend                            ; [self setSquaredDistance:(([self position].0 * [self position].0) + ([self position].1 * [self position].1))]
  10005eb80  mov     x19, x0
  10005eb84  mov     x0, x21
  10005eb88  bl      _objc_release
  10005eb8c  mov     x0, x19
  10005eb90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy update:]
; address 0x10005eb94  size 3952  kind objc
; ======================================================================
  10005eb94  stp     d13, d12, [sp, #-0x80]!
  10005eb98  stp     d11, d10, [sp, #0x10]
  10005eb9c  stp     d9, d8, [sp, #0x20]
  10005eba0  stp     x26, x25, [sp, #0x30]
  10005eba4  stp     x24, x23, [sp, #0x40]
  10005eba8  stp     x22, x21, [sp, #0x50]
  10005ebac  stp     x20, x19, [sp, #0x60]
  10005ebb0  stp     x29, x30, [sp, #0x70]
  10005ebb4  add     x29, sp, #0x70
  10005ebb8  sub     sp, sp, #0x10
  10005ebbc  mov     v8.16b, v0.16b
  10005ebc0  mov     x19, x0
  10005ebc4  adrp    x8, #0x100416000
  10005ebc8  nop
  10005ebcc  ldr     x1, [x8, #0xc60]
  10005ebd0  bl      _objc_msgSend                            ; [self state]
  10005ebd4  cmp     w0, #0x3e6
  10005ebd8  b.gt    loc_10005ed60                            ; if ([self state] > 998)
  10005ebdc  cmp     w0, #9
  10005ebe0  b.hi    loc_10005f920                            ; if ([self state] >u 9)
  10005ebe4  ubfx    x8, x0, #0, #0x20
  10005ebe8  adr     x9, #0x10005fadc                         ; 0x10005fadc
  10005ebec  nop
  10005ebf0  ldrsw   x8, [x9, x8, lsl #2]
  10005ebf4  add     x8, x8, x9
  10005ebf8  br      x8                                       ; switch ([self state]) { case 0: goto loc_10005ebfc; case 1: goto loc_10005ee80; case 2: goto loc_10005eeac; case 3: goto loc_10005ef80; case 4: goto loc_10005f198; case 5: goto loc_10005f1b4; case 6: goto loc_10005f1f8; case 7: goto loc_10005f2d0; case 8: goto loc_10005f398; case 9: goto loc_10005f470 }
loc_10005ebfc:  ; case 0
  10005ebfc  adrp    x8, #0x100416000
  10005ec00  nop
  10005ec04  ldr     x20, [x8, #0xc68]
  10005ec08  mov     x0, x19
  10005ec0c  mov     x1, x20
  10005ec10  bl      _objc_msgSend                            ; [self timeInState]
  10005ec14  mov     v9.16b, v0.16b
  10005ec18  adrp    x8, #0x100416000
  10005ec1c  nop
  10005ec20  ldr     x21, [x8, #0xfd0]
  10005ec24  mov     x0, x19
  10005ec28  mov     x1, x21
  10005ec2c  bl      _objc_msgSend                            ; [self spawn_time]
  10005ec30  fmov    s1, #-2.00000000
  10005ec34  fadd    s0, s0, s1
  10005ec38  fcmp    s9, s0
  10005ec3c  b.le    loc_10005ecd8                            ; if ([self timeInState] <= (or unordered) ([self spawn_time] + -2))
  10005ec40  adrp    x8, #0x100419000
  10005ec44  nop
  10005ec48  ldr     x1, [x8, #0x260]
  10005ec4c  mov     x0, x19
  10005ec50  bl      _objc_msgSend                            ; [self requiredPlaylistActivation]
  10005ec54  tbnz    w0, #0, loc_10005ecd8                    ; if (([self requiredPlaylistActivation] & 1))
  10005ec58  adrp    x8, #0x100419000
  10005ec5c  nop
  10005ec60  ldr     x1, [x8, #0x268]
  10005ec64  mov     w2, #1
  10005ec68  mov     x0, x19
  10005ec6c  bl      _objc_msgSend                            ; [self setRequiredPlaylistActivation:1]
  10005ec70  adrp    x8, #0x100419000
  10005ec74  nop
  10005ec78  ldr     x1, [x8, #0x270]
  10005ec7c  mov     x0, x19
  10005ec80  bl      _objc_msgSend                            ; [self parentBrick]
  10005ec84  mov     x29, x29
  10005ec88  bl      _objc_retainAutoreleasedReturnValue
  10005ec8c  mov     x22, x0
  10005ec90  adrp    x8, #0x100419000
  10005ec94  nop
  10005ec98  ldr     x1, [x8, #0x218]
  10005ec9c  mov     x0, x19
  10005eca0  bl      _objc_msgSend                            ; [self soundsPrefix]
  10005eca4  mov     x29, x29
  10005eca8  bl      _objc_retainAutoreleasedReturnValue
  10005ecac  mov     x23, x0
  10005ecb0  adrp    x8, #0x100419000
  10005ecb4  nop
  10005ecb8  ldr     x1, [x8, #0x278]
  10005ecbc  mov     x0, x22
  10005ecc0  mov     x2, x23
  10005ecc4  bl      _objc_msgSend                            ; [[self parentBrick] loadPLaylistWithName:[self soundsPrefix]]
  10005ecc8  mov     x0, x23
  10005eccc  bl      _objc_release
  10005ecd0  mov     x0, x22
  10005ecd4  bl      _objc_release
loc_10005ecd8:
  10005ecd8  mov     x0, x19
  10005ecdc  mov     x1, x20
  10005ece0  bl      _objc_msgSend                            ; [self timeInState]
  10005ece4  mov     v9.16b, v0.16b
  10005ece8  mov     x0, x19
  10005ecec  mov     x1, x21
  10005ecf0  bl      _objc_msgSend                            ; [self spawn_time]
  10005ecf4  fcmp    s9, s0
  10005ecf8  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
  10005ecfc  adrp    x8, #0x100419000
  10005ed00  nop
  10005ed04  ldr     x1, [x8, #0x280]
  10005ed08  mov     x0, x19
  10005ed0c  bl      _objc_msgSend                            ; [self playlistActivated]
  10005ed10  cbnz    w0, loc_10005eea0                        ; if ([self playlistActivated] != 0)
  10005ed14  adrp    x8, #0x100417000
  10005ed18  nop
  10005ed1c  ldr     x1, [x8, #0x450]
  10005ed20  mov     x0, x19
  10005ed24  bl      _objc_msgSend                            ; [self name]
  10005ed28  mov     x29, x29
  10005ed2c  bl      _objc_retainAutoreleasedReturnValue
  10005ed30  mov     x20, x0
  10005ed34  str     x20, [sp]
  10005ed38  adrp    x0, #0x1003be000
  10005ed3c  add     x0, x0, #0x170                           ; @"%@ wants to spawn but has no playlist"
  10005ed40  bl      _NSLog                                   ; NSLog(@"%@ wants to spawn but has no playlist", [self name])
  10005ed44  mov     x0, x20
  10005ed48  bl      _objc_release
  10005ed4c  adrp    x8, #0x100419000
  10005ed50  add     x8, x8, #0x288                           ; &@selector(setPlaylistActivated:)
  10005ed54  ldr     x1, [x8]
  10005ed58  mov     w2, #1
  10005ed5c  b       loc_10005f1ec
loc_10005ed60:
  10005ed60  cmp     w0, #0x3e7
  10005ed64  b.ne    loc_10005f920                            ; if ([self state] != 999)
  10005ed68  adrp    x8, #0x100416000
  10005ed6c  nop
  10005ed70  ldr     x20, [x8, #0xc68]
  10005ed74  mov     x0, x19
  10005ed78  mov     x1, x20
  10005ed7c  bl      _objc_msgSend                            ; [self timeInState]
  10005ed80  fcvt    d0, s0
  10005ed84  adrp    x8, #0x100181000
  10005ed88  ldr     d9, [x8, #0x9e0]                         ; d9 = 0.1
  10005ed8c  fcmp    d0, d9
  10005ed90  b.le    loc_10005edc4                            ; if ([self timeInState] <= (or unordered) 0.1)
  10005ed94  adrp    x8, #0x10041f000
  10005ed98  ldrsw   x8, [x8, #0xb88]                         ; ivar offset ADEnemy.painSound (+0x40)
  10005ed9c  ldr     x0, [x19, x8]                            ; x0 = self->painSound
  10005eda0  adrp    x8, #0x100417000
  10005eda4  nop
  10005eda8  ldr     x1, [x8, #0x598]
  10005edac  bl      _objc_msgSend                            ; [self->painSound playing]
  10005edb0  cbz     w0, loc_10005edc4                        ; if ([self->painSound playing] == 0)
  10005edb4  adrp    x8, #0x10041f000
  10005edb8  ldrsw   x8, [x8, #0xb8c]                         ; ivar offset ADEnemy.deadSoundHasPlayed (+0x68)
  10005edbc  mov     w9, #1
  10005edc0  strb    w9, [x19, x8]                            ; self->deadSoundHasPlayed = 1
loc_10005edc4:
  10005edc4  mov     x0, x19
  10005edc8  mov     x1, x20
  10005edcc  bl      _objc_msgSend                            ; [self timeInState]
  10005edd0  fcvt    d0, s0
  10005edd4  fcmp    d0, d9
  10005edd8  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) 0.1)
  10005eddc  mov     x0, x19
  10005ede0  mov     x1, x20
  10005ede4  bl      _objc_msgSend                            ; [self timeInState]
  10005ede8  mov     v9.16b, v0.16b
  10005edec  adrp    x8, #0x10041f000
  10005edf0  ldrsw   x8, [x8, #0xb88]                         ; ivar offset ADEnemy.painSound (+0x40)
  10005edf4  ldr     x0, [x19, x8]                            ; x0 = self->painSound
  10005edf8  adrp    x8, #0x100416000
  10005edfc  nop
  10005ee00  ldr     x1, [x8, #0xff8]
  10005ee04  bl      _objc_msgSend                            ; [self->painSound duration]
  10005ee08  fcmp    s9, s0
  10005ee0c  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) [self->painSound duration])
  10005ee10  adrp    x8, #0x10041f000
  10005ee14  ldrsw   x8, [x8, #0xb8c]                         ; ivar offset ADEnemy.deadSoundHasPlayed (+0x68)
  10005ee18  ldrb    w8, [x19, x8]                            ; w8 = self->deadSoundHasPlayed
  10005ee1c  cbz     w8, loc_10005f920                        ; if (self->deadSoundHasPlayed == 0)
  10005ee20  adrp    x8, #0x10041e000
  10005ee24  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005ee28  adrp    x8, #0x100417000
  10005ee2c  nop
  10005ee30  ldr     x1, [x8, #0xaa8]
  10005ee34  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005ee38  mov     x29, x29
  10005ee3c  bl      _objc_retainAutoreleasedReturnValue
  10005ee40  mov     x20, x0
  10005ee44  adrp    x8, #0x100419000
  10005ee48  nop
  10005ee4c  ldr     x1, [x8, #0x2f8]
  10005ee50  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] checkPlaylistDeactivation]
  10005ee54  mov     x0, x20
  10005ee58  bl      _objc_release
  10005ee5c  adrp    x8, #0x100416000
  10005ee60  nop
  10005ee64  ldr     x1, [x8, #0xc78]
  10005ee68  mov     w2, #-1
  10005ee6c  mov     x0, x19
  10005ee70  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  10005ee74  adrp    x8, #0x100419000
  10005ee78  add     x8, x8, #0x300                           ; &@selector(destroyEnemy)
  10005ee7c  b       loc_10005f914
loc_10005ee80:  ; case 1
  10005ee80  adrp    x8, #0x100416000
  10005ee84  nop
  10005ee88  ldr     x20, [x8, #0xfe0]
  10005ee8c  mov     x0, x19
  10005ee90  mov     x1, x20
  10005ee94  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10005ee98  fcmp    s0, #0.0
  10005ee9c  b.ne    loc_10005f5c8                            ; if ([self spawn_sound_duration] != 0.0)
loc_10005eea0:
  10005eea0  adrp    x8, #0x100416000
  10005eea4  add     x8, x8, #0xfd8                           ; &@selector(spawn)
  10005eea8  b       loc_10005f914
loc_10005eeac:  ; case 2
  10005eeac  adrp    x8, #0x100419000
  10005eeb0  nop
  10005eeb4  ldr     x20, [x8, #0x240]
  10005eeb8  mov     x0, x19
  10005eebc  mov     x1, x20
  10005eec0  bl      _objc_msgSend                            ; [self circling_dictionary]
  10005eec4  mov     x29, x29
  10005eec8  bl      _objc_retainAutoreleasedReturnValue
  10005eecc  mov     x21, x0
  10005eed0  bl      _objc_release
  10005eed4  cbz     x21, loc_10005f620                       ; if ([self circling_dictionary] == 0)
  10005eed8  mov     x0, x19
  10005eedc  mov     x1, x20
  10005eee0  bl      _objc_msgSend                            ; [self circling_dictionary]
  10005eee4  mov     x29, x29
  10005eee8  bl      _objc_retainAutoreleasedReturnValue
  10005eeec  mov     x21, x0
  10005eef0  adrp    x8, #0x100417000
  10005eef4  nop
  10005eef8  ldr     x1, [x8, #0x40]
  10005eefc  adrp    x2, #0x1003be000
  10005ef00  add     x2, x2, #0x190                           ; @"circlingFactor"
  10005ef04  bl      _objc_msgSend                            ; [[self circling_dictionary] objectForKey:@"circlingFactor"]
  10005ef08  mov     x29, x29
  10005ef0c  bl      _objc_retainAutoreleasedReturnValue
  10005ef10  mov     x22, x0
  10005ef14  adrp    x8, #0x100417000
  10005ef18  nop
  10005ef1c  ldr     x1, [x8, #0x48]
  10005ef20  bl      _objc_msgSend                            ; [[[self circling_dictionary] objectForKey:@"circlingFactor"] floatValue]
  10005ef24  mov     v9.16b, v0.16b
  10005ef28  mov     x0, x22
  10005ef2c  bl      _objc_release
  10005ef30  mov     x0, x21
  10005ef34  bl      _objc_release
  10005ef38  adrp    x8, #0x10041f000
  10005ef3c  ldrsw   x8, [x8, #0xb74]                         ; ivar offset ADEnemy.orientation (+0x8)
  10005ef40  add     x8, x19, x8
  10005ef44  fcvt    d0, s9
  10005ef48  fmov    d1, #1.00000000
  10005ef4c  fsub    d1, d1, d0
  10005ef50  ldp     d2, d3, [x8]
  10005ef54  fmul    d2, d1, d2                               ; t1 = ((1 - [[[self circling_dictionary] objectForKey:@"circlingFactor"] floatValue]) * self->orientation.x)
  10005ef58  adrp    x8, #0x10041f000
  10005ef5c  ldrsw   x8, [x8, #0xb7c]                         ; ivar offset ADEnemy.normalOrientation (+0x18)
  10005ef60  add     x8, x19, x8
  10005ef64  ldp     d4, d5, [x8]
  10005ef68  fmul    d4, d0, d4                               ; t2 = ([[[self circling_dictionary] objectForKey:@"circlingFactor"] floatValue] * self->normalOrientation.x)
  10005ef6c  fadd    d10, d2, d4
  10005ef70  fmul    d1, d1, d3                               ; t3 = ((1 - [[[self circling_dictionary] objectForKey:@"circlingFactor"] floatValue]) * self->orientation.y)
  10005ef74  fmul    d0, d0, d5                               ; t4 = ([[[self circling_dictionary] objectForKey:@"circlingFactor"] floatValue] * self->normalOrientation.y)
  10005ef78  fadd    d11, d1, d0
  10005ef7c  b       loc_10005f630
loc_10005ef80:  ; case 3
  10005ef80  adrp    x8, #0x100419000
  10005ef84  nop
  10005ef88  ldr     x1, [x8, #0x2a0]
  10005ef8c  mov     x0, x19
  10005ef90  bl      _objc_msgSend                            ; [self agressiveSpeed]
  10005ef94  adrp    x8, #0x100417000
  10005ef98  nop
  10005ef9c  ldr     x1, [x8, #0x8d0]
  10005efa0  mov     x0, x19
  10005efa4  bl      _objc_msgSend                            ; [self setSpeed:[self agressiveSpeed]]
  10005efa8  adrp    x8, #0x100417000
  10005efac  nop
  10005efb0  ldr     x20, [x8, #8]
  10005efb4  mov     x0, x19
  10005efb8  mov     x1, x20
  10005efbc  bl      _objc_msgSend                            ; [self position]
  10005efc0  mov     v9.16b, v0.16b
  10005efc4  adrp    x8, #0x10041f000
  10005efc8  ldrsw   x22, [x8, #0xb74]                        ; ivar offset ADEnemy.orientation (+0x8)
  10005efcc  ldr     d12, [x19, x22]                          ; d12 = self->orientation.x
  10005efd0  adrp    x8, #0x100417000
  10005efd4  nop
  10005efd8  ldr     x21, [x8, #0x18]
  10005efdc  mov     x0, x19
  10005efe0  mov     x1, x21
  10005efe4  bl      _objc_msgSend                            ; [self speed]
  10005efe8  mov     v10.16b, v0.16b
  10005efec  mov     x0, x19
  10005eff0  mov     x1, x20
  10005eff4  bl      _objc_msgSend                            ; [self position]
  10005eff8  mov     v11.16b, v1.16b
  10005effc  add     x8, x22, x19
  10005f000  fcvt    d0, s10
  10005f004  fmul    d0, d12, d0
  10005f008  fcvt    d10, s8
  10005f00c  fmul    d0, d10, d0
  10005f010  fadd    d9, d9, d0
  10005f014  ldr     d12, [x8, #8]                            ; d12 = self->orientation.y
  10005f018  mov     x0, x19
  10005f01c  mov     x1, x21
  10005f020  bl      _objc_msgSend                            ; [self speed]
  10005f024  fcvt    d0, s0
  10005f028  fmul    d0, d12, d0
  10005f02c  fmul    d0, d10, d0
  10005f030  fadd    d1, d11, d0
  10005f034  adrp    x8, #0x100417000
  10005f038  nop
  10005f03c  ldr     x1, [x8, #0x20]
  10005f040  mov     x0, x19
  10005f044  mov     v0.16b, v9.16b
  10005f048  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * (self->orientation.x * [self speed]))), ([self position].1 + (arg1 * (self->orientation.y * [self speed])))}]
  10005f04c  adrp    x8, #0x100417000
  10005f050  nop
  10005f054  ldr     x1, [x8, #0x30]
  10005f058  mov     x0, x19
  10005f05c  bl      _objc_msgSend                            ; [self squaredDistance]
  10005f060  mov     v9.16b, v0.16b
  10005f064  adrp    x8, #0x100419000
  10005f068  nop
  10005f06c  ldr     x20, [x8, #0x2a8]
  10005f070  mov     x0, x19
  10005f074  mov     x1, x20
  10005f078  bl      _objc_msgSend                            ; [self attackDistance]
  10005f07c  mov     v10.16b, v0.16b
  10005f080  mov     x0, x19
  10005f084  mov     x1, x20
  10005f088  bl      _objc_msgSend                            ; [self attackDistance]
  10005f08c  fmul    s0, s10, s0
  10005f090  fcmp    s9, s0
  10005f094  b.pl    loc_10005f920                            ; if ([self squaredDistance] >= (or unordered) ([self attackDistance] * [self attackDistance]))
  10005f098  adrp    x8, #0x10041d000
  10005f09c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10005f0a0  adrp    x8, #0x100416000
  10005f0a4  nop
  10005f0a8  ldr     x1, [x8, #0xac8]
  10005f0ac  bl      _objc_msgSend                            ; [NSArray alloc]
  10005f0b0  mov     x20, x0
  10005f0b4  adrp    x8, #0x100417000
  10005f0b8  nop
  10005f0bc  ldr     x1, [x8, #0x450]
  10005f0c0  mov     x0, x19
  10005f0c4  bl      _objc_msgSend                            ; [self name]
  10005f0c8  mov     x29, x29
  10005f0cc  bl      _objc_retainAutoreleasedReturnValue
  10005f0d0  mov     x21, x0
  10005f0d4  adrp    x8, #0x100419000
  10005f0d8  nop
  10005f0dc  ldr     x1, [x8, #0x2b0]
  10005f0e0  str     xzr, [sp]
  10005f0e4  mov     x0, x20
  10005f0e8  mov     x2, x21
  10005f0ec  bl      _objc_msgSend                            ; [[NSArray alloc] initWithObjects:[self name]]
  10005f0f0  mov     x20, x0
  10005f0f4  mov     x0, x21
  10005f0f8  bl      _objc_release
  10005f0fc  adrp    x8, #0x10041d000
  10005f100  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10005f104  adrp    x8, #0x100419000
  10005f108  nop
  10005f10c  ldr     x1, [x8, #0x2b8]
  10005f110  adrp    x3, #0x1003bd000
  10005f114  add     x3, x3, #0xaf0                           ; @"PARAM_ARRAY"
  10005f118  mov     x2, x20
  10005f11c  bl      _objc_msgSend                            ; [NSDictionary dictionaryWithObject:[[NSArray alloc] initWithObjects:[self name]] forKey:@"PARAM_ARRAY"]
  10005f120  mov     x29, x29
  10005f124  bl      _objc_retainAutoreleasedReturnValue
  10005f128  mov     x21, x0
  10005f12c  adrp    x8, #0x10041d000
  10005f130  ldr     x0, [x8, #0xf60]                         ; class NSNotificationCenter
  10005f134  adrp    x8, #0x100416000
  10005f138  nop
  10005f13c  ldr     x1, [x8, #0xe88]
  10005f140  bl      _objc_msgSend                            ; [NSNotificationCenter defaultCenter]
  10005f144  mov     x29, x29
  10005f148  bl      _objc_retainAutoreleasedReturnValue
  10005f14c  mov     x22, x0
  10005f150  adrp    x8, #0x100417000
  10005f154  nop
  10005f158  ldr     x1, [x8, #0xf98]
  10005f15c  mov     x3, #0
  10005f160  adrp    x2, #0x1003bd000
  10005f164  add     x2, x2, #0xc90                           ; @"PLAYER_DIED"
  10005f168  mov     x4, x21
  10005f16c  bl      _objc_msgSend                            ; [[NSNotificationCenter defaultCenter] postNotificationName:@"PLAYER_DIED" object:0 userInfo:[NSDictionary dictionaryWithObject:[[NSArray alloc] initWithObjects:[self name]] forKey:@"PARAM_ARRAY"]]
  10005f170  mov     x0, x22
  10005f174  bl      _objc_release
  10005f178  adrp    x8, #0x100419000
  10005f17c  nop
  10005f180  ldr     x1, [x8, #0x2c0]
  10005f184  mov     x0, x19
  10005f188  bl      _objc_msgSend                            ; [self attack]
  10005f18c  mov     x0, x21
  10005f190  bl      _objc_release
  10005f194  b       loc_10005f850
loc_10005f198:  ; case 4
  10005f198  adrp    x8, #0x100417000
  10005f19c  nop
  10005f1a0  ldr     x1, [x8, #0x8d0]
  10005f1a4  movi    v0.16b, #0
  10005f1a8  mov     x0, x19
  10005f1ac  bl      _objc_msgSend                            ; [self setSpeed:0]
  10005f1b0  b       loc_10005f920
loc_10005f1b4:  ; case 5
  10005f1b4  adrp    x8, #0x100416000
  10005f1b8  nop
  10005f1bc  ldr     x1, [x8, #0xc68]
  10005f1c0  mov     x0, x19
  10005f1c4  bl      _objc_msgSend                            ; [self timeInState]
  10005f1c8  fcvt    d0, s0
  10005f1cc  adrp    x8, #0x100181000
  10005f1d0  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  10005f1d4  fcmp    d0, d1
  10005f1d8  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) 0.1)
  10005f1dc  adrp    x8, #0x100416000
  10005f1e0  add     x8, x8, #0xc78                           ; &@selector(setState:)
  10005f1e4  ldr     x1, [x8]
  10005f1e8  mov     w2, #0x3e7
loc_10005f1ec:
  10005f1ec  mov     x0, x19
  10005f1f0  bl      _objc_msgSend                            ; [self <sel x1>]
  10005f1f4  b       loc_10005f920
loc_10005f1f8:  ; case 6
  10005f1f8  adrp    x8, #0x100416000
  10005f1fc  nop
  10005f200  ldr     x20, [x8, #0xc68]
  10005f204  mov     x0, x19
  10005f208  mov     x1, x20
  10005f20c  bl      _objc_msgSend                            ; [self timeInState]
  10005f210  mov     v9.16b, v0.16b
  10005f214  adrp    x8, #0x100419000
  10005f218  nop
  10005f21c  ldr     x21, [x8, #0x2e0]
  10005f220  mov     x0, x19
  10005f224  mov     x1, x21
  10005f228  bl      _objc_msgSend                            ; [self shield_dictionary]
  10005f22c  mov     x29, x29
  10005f230  bl      _objc_retainAutoreleasedReturnValue
  10005f234  mov     x24, x0
  10005f238  adrp    x8, #0x100417000
  10005f23c  nop
  10005f240  ldr     x22, [x8, #0x40]
  10005f244  adrp    x2, #0x1003be000
  10005f248  add     x2, x2, #0x1d0                           ; @"shieldTime"
  10005f24c  mov     x1, x22
  10005f250  bl      _objc_msgSend                            ; [[self shield_dictionary] objectForKey:@"shieldTime"]
  10005f254  mov     x29, x29
  10005f258  bl      _objc_retainAutoreleasedReturnValue
  10005f25c  mov     x25, x0
  10005f260  adrp    x8, #0x100417000
  10005f264  nop
  10005f268  ldr     x23, [x8, #0x48]
  10005f26c  mov     x1, x23
  10005f270  bl      _objc_msgSend                            ; [[[self shield_dictionary] objectForKey:@"shieldTime"] floatValue]
  10005f274  mov     v10.16b, v0.16b
  10005f278  mov     x0, x25
  10005f27c  bl      _objc_release
  10005f280  mov     x0, x24
  10005f284  bl      _objc_release
  10005f288  fcmp    s9, s10
  10005f28c  b.lt    loc_10005f920                            ; if ([self timeInState] < (or unordered) [[[self shield_dictionary] objectForKey:@"shieldTime"] floatValue])
  10005f290  adrp    x8, #0x10041f000
  10005f294  ldrsw   x24, [x8, #0xb84]                        ; ivar offset ADEnemy.shieldDuration (+0x64)
  10005f298  ldr     s0, [x19, x24]                           ; s0 = self->shieldDuration
  10005f29c  fcmp    s0, #0.0
  10005f2a0  b.ne    loc_10005f8a0                            ; if (self->shieldDuration != 0.0)
  10005f2a4  adrp    x8, #0x100419000
  10005f2a8  nop
  10005f2ac  ldr     x1, [x8, #0x2e8]
  10005f2b0  adrp    x2, #0x1003be000
  10005f2b4  add     x2, x2, #0x1f0                           ; @"_shieldup"
  10005f2b8  mov     w4, #1
  10005f2bc  mov     x0, x19
  10005f2c0  mov     w3, #0
  10005f2c4  bl      _objc_msgSend                            ; [self playAnySoundContaining:@"_shieldup" looping:0 spatialized:1]
  10005f2c8  str     s0, [x19, x24]                           ; self->shieldDuration = [self playAnySoundContaining:@"_shieldup" looping:0 spatialized:1]
  10005f2cc  b       loc_10005f920
loc_10005f2d0:  ; case 7
  10005f2d0  adrp    x8, #0x100416000
  10005f2d4  nop
  10005f2d8  ldr     x1, [x8, #0xc68]
  10005f2dc  mov     x0, x19
  10005f2e0  bl      _objc_msgSend                            ; [self timeInState]
  10005f2e4  mov     v9.16b, v0.16b
  10005f2e8  adrp    x8, #0x100419000
  10005f2ec  nop
  10005f2f0  ldr     x20, [x8, #0x238]
  10005f2f4  mov     x0, x19
  10005f2f8  mov     x1, x20
  10005f2fc  bl      _objc_msgSend                            ; [self dodge_dictionary]
  10005f300  mov     x29, x29
  10005f304  bl      _objc_retainAutoreleasedReturnValue
  10005f308  mov     x22, x0
  10005f30c  adrp    x8, #0x100417000
  10005f310  nop
  10005f314  ldr     x21, [x8, #0x40]
  10005f318  adrp    x2, #0x1003be000
  10005f31c  add     x2, x2, #0x210                           ; @"dodgeTime"
  10005f320  mov     x1, x21
  10005f324  bl      _objc_msgSend                            ; [[self dodge_dictionary] objectForKey:@"dodgeTime"]
  10005f328  mov     x29, x29
  10005f32c  bl      _objc_retainAutoreleasedReturnValue
  10005f330  mov     x24, x0
  10005f334  adrp    x8, #0x100417000
  10005f338  nop
  10005f33c  ldr     x23, [x8, #0x48]
  10005f340  mov     x1, x23
  10005f344  bl      _objc_msgSend                            ; [[[self dodge_dictionary] objectForKey:@"dodgeTime"] floatValue]
  10005f348  mov     v10.16b, v0.16b
  10005f34c  mov     x0, x24
  10005f350  bl      _objc_release
  10005f354  mov     x0, x22
  10005f358  bl      _objc_release
  10005f35c  fcmp    s9, s10
  10005f360  b.le    loc_10005f4fc                            ; if ([self timeInState] <= (or unordered) [[[self dodge_dictionary] objectForKey:@"dodgeTime"] floatValue])
  10005f364  adrp    x8, #0x100419000
  10005f368  nop
  10005f36c  ldr     x1, [x8, #0x298]
  10005f370  mov     x0, x19
  10005f374  bl      _objc_msgSend                            ; [self walk]
  10005f378  adrp    x8, #0x100419000
  10005f37c  nop
  10005f380  ldr     x1, [x8, #0x248]
  10005f384  mov     x0, x19
  10005f388  bl      _objc_msgSend                            ; [self randomizeNormalAngle]
  10005f38c  adrp    x8, #0x100419000
  10005f390  add     x8, x8, #0x250                           ; &@selector(updateNormalOrientation)
  10005f394  b       loc_10005f914
loc_10005f398:  ; case 8
  10005f398  adrp    x8, #0x100417000
  10005f39c  nop
  10005f3a0  ldr     x20, [x8, #8]
  10005f3a4  mov     x0, x19
  10005f3a8  mov     x1, x20
  10005f3ac  bl      _objc_msgSend                            ; [self position]
  10005f3b0  mov     v9.16b, v0.16b
  10005f3b4  adrp    x8, #0x10041f000
  10005f3b8  ldrsw   x22, [x8, #0xb74]                        ; ivar offset ADEnemy.orientation (+0x8)
  10005f3bc  ldr     d12, [x19, x22]                          ; d12 = self->orientation.x
  10005f3c0  adrp    x8, #0x100417000
  10005f3c4  nop
  10005f3c8  ldr     x21, [x8, #0x18]
  10005f3cc  mov     x0, x19
  10005f3d0  mov     x1, x21
  10005f3d4  bl      _objc_msgSend                            ; [self speed]
  10005f3d8  mov     v10.16b, v0.16b
  10005f3dc  mov     x0, x19
  10005f3e0  mov     x1, x20
  10005f3e4  bl      _objc_msgSend                            ; [self position]
  10005f3e8  mov     v11.16b, v1.16b
  10005f3ec  add     x8, x22, x19
  10005f3f0  fcvt    d0, s10
  10005f3f4  fmul    d0, d12, d0
  10005f3f8  fcvt    d10, s8
  10005f3fc  fmul    d0, d10, d0
  10005f400  fadd    d9, d9, d0
  10005f404  ldr     d12, [x8, #8]                            ; d12 = self->orientation.y
  10005f408  mov     x0, x19
  10005f40c  mov     x1, x21
  10005f410  bl      _objc_msgSend                            ; [self speed]
  10005f414  fcvt    d0, s0
  10005f418  fmul    d0, d12, d0
  10005f41c  fmul    d0, d10, d0
  10005f420  fadd    d1, d11, d0
  10005f424  adrp    x8, #0x100417000
  10005f428  nop
  10005f42c  ldr     x1, [x8, #0x20]
  10005f430  mov     x0, x19
  10005f434  mov     v0.16b, v9.16b
  10005f438  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * (self->orientation.x * [self speed]))), ([self position].1 + (arg1 * (self->orientation.y * [self speed])))}]
  10005f43c  adrp    x8, #0x100417000
  10005f440  nop
  10005f444  ldr     x1, [x8, #0x30]
  10005f448  mov     x0, x19
  10005f44c  bl      _objc_msgSend                            ; [self squaredDistance]
  10005f450  fcvt    d0, s0
  10005f454  adrp    x8, #0x100181000
  10005f458  ldr     d1, [x8, #0xc30]                         ; d1 = 0.09
  10005f45c  fcmp    d0, d1
  10005f460  b.pl    loc_10005f920                            ; if ([self squaredDistance] >= (or unordered) 0.09)
  10005f464  adrp    x8, #0x100419000
  10005f468  add     x8, x8, #0x2c0                           ; &@selector(attack)
  10005f46c  b       loc_10005f914
loc_10005f470:  ; case 9
  10005f470  adrp    x8, #0x100416000
  10005f474  nop
  10005f478  ldr     x20, [x8, #0xc68]
  10005f47c  mov     x0, x19
  10005f480  mov     x1, x20
  10005f484  bl      _objc_msgSend                            ; [self timeInState]
  10005f488  fcvt    d0, s0
  10005f48c  adrp    x8, #0x100181000
  10005f490  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  10005f494  fcmp    d0, d1
  10005f498  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) 0.1)
  10005f49c  mov     x0, x19
  10005f4a0  mov     x1, x20
  10005f4a4  bl      _objc_msgSend                            ; [self timeInState]
  10005f4a8  mov     v9.16b, v0.16b
  10005f4ac  adrp    x8, #0x100416000
  10005f4b0  nop
  10005f4b4  ldr     x1, [x8, #0xff0]
  10005f4b8  mov     x0, x19
  10005f4bc  bl      _objc_msgSend                            ; [self sound]
  10005f4c0  mov     x29, x29
  10005f4c4  bl      _objc_retainAutoreleasedReturnValue
  10005f4c8  mov     x20, x0
  10005f4cc  adrp    x8, #0x100416000
  10005f4d0  nop
  10005f4d4  ldr     x1, [x8, #0xff8]
  10005f4d8  bl      _objc_msgSend                            ; [[self sound] duration]
  10005f4dc  mov     v10.16b, v0.16b
  10005f4e0  mov     x0, x20
  10005f4e4  bl      _objc_release
  10005f4e8  fcmp    s9, s10
  10005f4ec  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) [[self sound] duration])
  10005f4f0  adrp    x8, #0x100419000
  10005f4f4  add     x8, x8, #0x2f0                           ; &@selector(berserk)
  10005f4f8  b       loc_10005f914
loc_10005f4fc:
  10005f4fc  mov     x0, x19
  10005f500  mov     x1, x20
  10005f504  bl      _objc_msgSend                            ; [self dodge_dictionary]
  10005f508  mov     x29, x29
  10005f50c  bl      _objc_retainAutoreleasedReturnValue
  10005f510  mov     x20, x0
  10005f514  adrp    x2, #0x1003be000
  10005f518  add     x2, x2, #0x230                           ; @"dodgeSpeed"
  10005f51c  mov     x1, x21
  10005f520  bl      _objc_msgSend                            ; [[self dodge_dictionary] objectForKey:@"dodgeSpeed"]
  10005f524  mov     x29, x29
  10005f528  bl      _objc_retainAutoreleasedReturnValue
  10005f52c  mov     x21, x0
  10005f530  mov     x1, x23
  10005f534  bl      _objc_msgSend                            ; [[[self dodge_dictionary] objectForKey:@"dodgeSpeed"] floatValue]
  10005f538  mov     v9.16b, v0.16b
  10005f53c  mov     x0, x21
  10005f540  bl      _objc_release
  10005f544  mov     x0, x20
  10005f548  bl      _objc_release
  10005f54c  adrp    x8, #0x100417000
  10005f550  nop
  10005f554  ldr     x20, [x8, #8]
  10005f558  mov     x0, x19
  10005f55c  mov     x1, x20
  10005f560  bl      _objc_msgSend                            ; [self position]
  10005f564  mov     v10.16b, v0.16b
  10005f568  adrp    x8, #0x10041f000
  10005f56c  ldrsw   x21, [x8, #0xb7c]                        ; ivar offset ADEnemy.normalOrientation (+0x18)
  10005f570  ldr     d11, [x19, x21]                          ; d11 = self->normalOrientation.x
  10005f574  mov     x0, x19
  10005f578  mov     x1, x20
  10005f57c  bl      _objc_msgSend                            ; [self position]
  10005f580  add     x8, x21, x19
  10005f584  fcvt    d2, s9
  10005f588  fmul    d0, d2, d11                              ; t5 = ([[[self dodge_dictionary] objectForKey:@"dodgeSpeed"] floatValue] * self->normalOrientation.x)
  10005f58c  fcvt    d3, s8
  10005f590  fmul    d0, d3, d0
  10005f594  fadd    d0, d10, d0
  10005f598  ldr     d4, [x8, #8]                             ; d4 = self->normalOrientation.y
  10005f59c  fmul    d2, d2, d4                               ; t6 = ([[[self dodge_dictionary] objectForKey:@"dodgeSpeed"] floatValue] * self->normalOrientation.y)
  10005f5a0  fmul    d2, d3, d2
  10005f5a4  fadd    d1, d1, d2
  10005f5a8  adrp    x8, #0x100417000
  10005f5ac  nop
  10005f5b0  ldr     x1, [x8, #0x20]
  10005f5b4  mov     x0, x19
  10005f5b8  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * t5)), ([self position].1 + (arg1 * t6))}]
  10005f5bc  adrp    x8, #0x100417000
  10005f5c0  add     x8, x8, #0x68                            ; &@selector(updateOrientation)
  10005f5c4  b       loc_10005f914
loc_10005f5c8:
  10005f5c8  adrp    x8, #0x100416000
  10005f5cc  nop
  10005f5d0  ldr     x1, [x8, #0xc68]
  10005f5d4  mov     x0, x19
  10005f5d8  bl      _objc_msgSend                            ; [self timeInState]
  10005f5dc  mov     v9.16b, v0.16b
  10005f5e0  mov     x0, x19
  10005f5e4  mov     x1, x20
  10005f5e8  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10005f5ec  fcmp    s9, s0
  10005f5f0  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) [self spawn_sound_duration])
  10005f5f4  adrp    x8, #0x100417000
  10005f5f8  nop
  10005f5fc  ldr     x1, [x8, #0x30]
  10005f600  mov     x0, x19
  10005f604  bl      _objc_msgSend                            ; [self squaredDistance]
  10005f608  fmov    s1, #9.00000000
  10005f60c  fcmp    s0, s1
  10005f610  b.pl    loc_10005f90c                            ; if ([self squaredDistance] >= (or unordered) 9)
  10005f614  adrp    x8, #0x100419000
  10005f618  add     x8, x8, #0x290                           ; &@selector(aggressive)
  10005f61c  b       loc_10005f914
loc_10005f620:
  10005f620  adrp    x8, #0x10041f000
  10005f624  ldrsw   x8, [x8, #0xb74]                         ; ivar offset ADEnemy.orientation (+0x8)
  10005f628  add     x8, x19, x8
  10005f62c  ldp     d10, d11, [x8]
loc_10005f630:
  10005f630  adrp    x8, #0x100419000
  10005f634  nop
  10005f638  ldr     x21, [x8, #0x2c8]
  10005f63c  mov     x0, x19
  10005f640  mov     x1, x21
  10005f644  bl      _objc_msgSend                            ; [self berserk_dictionary]
  10005f648  mov     x29, x29
  10005f64c  bl      _objc_retainAutoreleasedReturnValue
  10005f650  mov     x22, x0
  10005f654  bl      _objc_release
  10005f658  cbz     x22, loc_10005f674                       ; if ([self berserk_dictionary] == 0)
  10005f65c  adrp    x8, #0x10041f000
  10005f660  ldrsw   x8, [x8, #0xb74]                         ; ivar offset ADEnemy.orientation (+0x8)
  10005f664  add     x8, x19, x8
  10005f668  ldp     d0, d1, [x8]
  10005f66c  fneg    d10, d0
  10005f670  fneg    d11, d1
loc_10005f674:
  10005f674  adrp    x8, #0x100417000
  10005f678  nop
  10005f67c  ldr     x22, [x8, #8]
  10005f680  mov     x0, x19
  10005f684  mov     x1, x22
  10005f688  bl      _objc_msgSend                            ; [self position]
  10005f68c  mov     v9.16b, v0.16b
  10005f690  adrp    x8, #0x100417000
  10005f694  nop
  10005f698  ldr     x23, [x8, #0x18]
  10005f69c  mov     x0, x19
  10005f6a0  mov     x1, x23
  10005f6a4  bl      _objc_msgSend                            ; [self speed]
  10005f6a8  fcvt    d0, s0
  10005f6ac  fmul    d0, d10, d0
  10005f6b0  fcvt    d12, s8
  10005f6b4  fmul    d0, d12, d0
  10005f6b8  fadd    d9, d9, d0
  10005f6bc  mov     x0, x19
  10005f6c0  mov     x1, x22
  10005f6c4  bl      _objc_msgSend                            ; [self position]
  10005f6c8  mov     v10.16b, v1.16b
  10005f6cc  mov     x0, x19
  10005f6d0  mov     x1, x23
  10005f6d4  bl      _objc_msgSend                            ; [self speed]
  10005f6d8  fcvt    d0, s0
  10005f6dc  fmul    d0, d11, d0
  10005f6e0  fmul    d0, d12, d0
  10005f6e4  fadd    d1, d10, d0
  10005f6e8  adrp    x8, #0x100417000
  10005f6ec  nop
  10005f6f0  ldr     x1, [x8, #0x20]
  10005f6f4  mov     x0, x19
  10005f6f8  mov     v0.16b, v9.16b
  10005f6fc  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * (d10 * [self speed]))), ([self position].1 + (arg1 * (d11 * [self speed])))}]
  10005f700  adrp    x8, #0x100417000
  10005f704  nop
  10005f708  ldr     x22, [x8, #0x30]
  10005f70c  mov     x0, x19
  10005f710  mov     x1, x22
  10005f714  bl      _objc_msgSend                            ; [self squaredDistance]
  10005f718  fmov    s1, #9.00000000
  10005f71c  fcmp    s0, s1
  10005f720  b.pl    loc_10005f764                            ; if ([self squaredDistance] >= (or unordered) 9)
  10005f724  mov     x0, x19
  10005f728  mov     x1, x21
  10005f72c  bl      _objc_msgSend                            ; [self berserk_dictionary]
  10005f730  mov     x29, x29
  10005f734  bl      _objc_retainAutoreleasedReturnValue
  10005f738  mov     x23, x0
  10005f73c  bl      _objc_release
  10005f740  cbz     x23, loc_10005f750                       ; if ([self berserk_dictionary] == 0)
  10005f744  adrp    x8, #0x100419000
  10005f748  add     x8, x8, #0x2d0                           ; &@selector(transitionToBerserk)
  10005f74c  b       loc_10005f758
loc_10005f750:
  10005f750  adrp    x8, #0x100419000
  10005f754  add     x8, x8, #0x290                           ; &@selector(aggressive)
loc_10005f758:
  10005f758  ldr     x1, [x8]                                 ; x1 = one of selectors {aggressive, transitionToBerserk}
  10005f75c  mov     x0, x19
  10005f760  bl      _objc_msgSend                            ; [self aggressive | transitionToBerserk]
loc_10005f764:
  10005f764  mov     x0, x19
  10005f768  mov     x1, x20
  10005f76c  bl      _objc_msgSend                            ; [self circling_dictionary]
  10005f770  mov     x29, x29
  10005f774  bl      _objc_retainAutoreleasedReturnValue
  10005f778  mov     x20, x0
  10005f77c  bl      _objc_release
  10005f780  cbz     x20, loc_10005f7ac                       ; if ([self circling_dictionary] == 0)
  10005f784  adrp    x8, #0x100417000
  10005f788  nop
  10005f78c  ldr     x1, [x8, #0x68]
  10005f790  mov     x0, x19
  10005f794  bl      _objc_msgSend                            ; [self updateOrientation]
  10005f798  adrp    x8, #0x100419000
  10005f79c  nop
  10005f7a0  ldr     x1, [x8, #0x250]
  10005f7a4  mov     x0, x19
  10005f7a8  bl      _objc_msgSend                            ; [self updateNormalOrientation]
loc_10005f7ac:
  10005f7ac  mov     x0, x19
  10005f7b0  mov     x1, x21
  10005f7b4  bl      _objc_msgSend                            ; [self berserk_dictionary]
  10005f7b8  mov     x29, x29
  10005f7bc  bl      _objc_retainAutoreleasedReturnValue
  10005f7c0  mov     x20, x0
  10005f7c4  cbz     x20, loc_10005f850                       ; if ([self berserk_dictionary] == 0)
  10005f7c8  adrp    x8, #0x100416000
  10005f7cc  nop
  10005f7d0  ldr     x1, [x8, #0xc68]
  10005f7d4  mov     x0, x19
  10005f7d8  bl      _objc_msgSend                            ; [self timeInState]
  10005f7dc  mov     v9.16b, v0.16b
  10005f7e0  mov     x0, x19
  10005f7e4  mov     x1, x21
  10005f7e8  bl      _objc_msgSend                            ; [self berserk_dictionary]
  10005f7ec  mov     x29, x29
  10005f7f0  bl      _objc_retainAutoreleasedReturnValue
  10005f7f4  mov     x21, x0
  10005f7f8  adrp    x8, #0x100417000
  10005f7fc  nop
  10005f800  ldr     x1, [x8, #0x40]
  10005f804  adrp    x2, #0x1003be000
  10005f808  add     x2, x2, #0x1b0                           ; @"disappearAfter"
  10005f80c  bl      _objc_msgSend                            ; [[self berserk_dictionary] objectForKey:@"disappearAfter"]
  10005f810  mov     x29, x29
  10005f814  bl      _objc_retainAutoreleasedReturnValue
  10005f818  mov     x23, x0
  10005f81c  adrp    x8, #0x100417000
  10005f820  nop
  10005f824  ldr     x1, [x8, #0x48]
  10005f828  bl      _objc_msgSend                            ; [[[self berserk_dictionary] objectForKey:@"disappearAfter"] floatValue]
  10005f82c  fcmp    s9, s0
  10005f830  b.le    loc_10005f85c                            ; if ([self timeInState] <= (or unordered) [[[self berserk_dictionary] objectForKey:@"disappearAfter"] floatValue])
  10005f834  mov     x0, x23
  10005f838  bl      _objc_release
  10005f83c  mov     x0, x21
  10005f840  bl      _objc_release
  10005f844  mov     x0, x20
  10005f848  bl      _objc_release
  10005f84c  b       loc_10005f894
loc_10005f850:
  10005f850  mov     x0, x20
  10005f854  bl      _objc_release
  10005f858  b       loc_10005f920
loc_10005f85c:
  10005f85c  mov     x0, x19
  10005f860  mov     x1, x22
  10005f864  bl      _objc_msgSend                            ; [self squaredDistance]
  10005f868  mov     v9.16b, v0.16b
  10005f86c  mov     x0, x23
  10005f870  bl      _objc_release
  10005f874  mov     x0, x21
  10005f878  bl      _objc_release
  10005f87c  mov     x0, x20
  10005f880  bl      _objc_release
  10005f884  adrp    x8, #0x100181000
  10005f888  ldr     s0, [x8, #0xc14]                         ; s0 = 144.0
  10005f88c  fcmp    s9, s0
  10005f890  b.le    loc_10005f920                            ; if ([self squaredDistance] <= (or unordered) 144)
loc_10005f894:
  10005f894  adrp    x8, #0x100419000
  10005f898  add     x8, x8, #0x2d8                           ; &@selector(berserkGoAway)
  10005f89c  b       loc_10005f914
loc_10005f8a0:
  10005f8a0  mov     x0, x19
  10005f8a4  mov     x1, x20
  10005f8a8  bl      _objc_msgSend                            ; [self timeInState]
  10005f8ac  mov     v9.16b, v0.16b
  10005f8b0  mov     x0, x19
  10005f8b4  mov     x1, x21
  10005f8b8  bl      _objc_msgSend                            ; [self shield_dictionary]
  10005f8bc  mov     x29, x29
  10005f8c0  bl      _objc_retainAutoreleasedReturnValue
  10005f8c4  mov     x20, x0
  10005f8c8  adrp    x2, #0x1003be000
  10005f8cc  add     x2, x2, #0x1d0                           ; @"shieldTime"
  10005f8d0  mov     x1, x22
  10005f8d4  bl      _objc_msgSend                            ; [[self shield_dictionary] objectForKey:@"shieldTime"]
  10005f8d8  mov     x29, x29
  10005f8dc  bl      _objc_retainAutoreleasedReturnValue
  10005f8e0  mov     x21, x0
  10005f8e4  mov     x1, x23
  10005f8e8  bl      _objc_msgSend                            ; [[[self shield_dictionary] objectForKey:@"shieldTime"] floatValue]
  10005f8ec  ldr     s1, [x19, x24]                           ; s1 = self->shieldDuration
  10005f8f0  fadd    s10, s0, s1                              ; t7 = ([[[self shield_dictionary] objectForKey:@"shieldTime"] floatValue] + self->shieldDuration)
  10005f8f4  mov     x0, x21
  10005f8f8  bl      _objc_release
  10005f8fc  mov     x0, x20
  10005f900  bl      _objc_release
  10005f904  fcmp    s9, s10
  10005f908  b.le    loc_10005f920                            ; if ([self timeInState] <= (or unordered) t7)
loc_10005f90c:
  10005f90c  adrp    x8, #0x100419000
  10005f910  add     x8, x8, #0x298                           ; &@selector(walk)
loc_10005f914:
  10005f914  ldr     x1, [x8]                                 ; x1 = one of selectors {aggressive, attack, berserk, berserkGoAway, destroyEnemy, spawn, updateNormalOrientation, updateOrientation, walk}
  10005f918  mov     x0, x19
  10005f91c  bl      _objc_msgSend                            ; [self aggressive | attack | berserk | berserkGoAway | destroyEnemy | spawn | updateNormalOrientation | updateOrientation | walk]
loc_10005f920:
  10005f920  adrp    x8, #0x100416000
  10005f924  nop
  10005f928  ldr     x20, [x8, #0xff0]
  10005f92c  mov     x0, x19
  10005f930  mov     x1, x20
  10005f934  bl      _objc_msgSend                            ; [self sound]
  10005f938  mov     x29, x29
  10005f93c  bl      _objc_retainAutoreleasedReturnValue
  10005f940  mov     x21, x0
  10005f944  bl      _objc_release
  10005f948  cbz     x21, loc_10005f9b4                       ; if ([self sound] == 0)
  10005f94c  mov     x0, x19
  10005f950  mov     x1, x20
  10005f954  bl      _objc_msgSend                            ; [self sound]
  10005f958  mov     x29, x29
  10005f95c  bl      _objc_retainAutoreleasedReturnValue
  10005f960  mov     x20, x0
  10005f964  adrp    x8, #0x100417000
  10005f968  nop
  10005f96c  ldr     x21, [x8, #8]
  10005f970  mov     x0, x19
  10005f974  mov     x1, x21
  10005f978  bl      _objc_msgSend                            ; [self position]
  10005f97c  mov     v9.16b, v0.16b
  10005f980  mov     x0, x19
  10005f984  mov     x1, x21
  10005f988  bl      _objc_msgSend                            ; [self position]
  10005f98c  fcvt    s0, d9
  10005f990  fcvt    s1, d1
  10005f994  adrp    x8, #0x100417000
  10005f998  nop
  10005f99c  ldr     x1, [x8, #0x38]
  10005f9a0  movi    v2.16b, #0
  10005f9a4  mov     x0, x20
  10005f9a8  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  10005f9ac  mov     x0, x20
  10005f9b0  bl      _objc_release
loc_10005f9b4:
  10005f9b4  adrp    x8, #0x100416000
  10005f9b8  nop
  10005f9bc  ldr     x1, [x8, #0xc68]
  10005f9c0  mov     x0, x19
  10005f9c4  bl      _objc_msgSend                            ; [self timeInState]
  10005f9c8  fadd    s0, s0, s8
  10005f9cc  adrp    x8, #0x100416000
  10005f9d0  nop
  10005f9d4  ldr     x1, [x8, #0xc80]
  10005f9d8  mov     x0, x19
  10005f9dc  sub     sp, x29, #0x70
  10005f9e0  ldp     x29, x30, [sp, #0x70]
  10005f9e4  ldp     x20, x19, [sp, #0x60]
  10005f9e8  ldp     x22, x21, [sp, #0x50]
  10005f9ec  ldp     x24, x23, [sp, #0x40]
  10005f9f0  ldp     x26, x25, [sp, #0x30]
  10005f9f4  ldp     d9, d8, [sp, #0x20]
  10005f9f8  ldp     d11, d10, [sp, #0x10]
  10005f9fc  ldp     d13, d12, [sp], #0x80
  10005fa00  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]
loc_10005fa04:
  10005fa04  mov     x19, x0
loc_10005fa08:
  10005fa08  mov     x0, x20
loc_10005fa0c:
  10005fa0c  bl      _objc_release
  10005fa10  mov     x0, x19
  10005fa14  bl      __Unwind_Resume                          ; Unwind_Resume()
  10005fa18  b       loc_10005fa04
  10005fa1c  b       loc_10005fa04
  10005fa20  b       loc_10005facc
  10005fa24  mov     x19, x0
  10005fa28  b       loc_10005fa38
  10005fa2c  mov     x19, x0
  10005fa30  mov     x0, x25
  10005fa34  bl      _objc_release
loc_10005fa38:
  10005fa38  mov     x0, x24
  10005fa3c  b       loc_10005fa0c
  10005fa40  mov     x19, x0
  10005fa44  b       loc_10005fabc
  10005fa48  mov     x19, x0
  10005fa4c  mov     x0, x24
  10005fa50  b       loc_10005fab8
  10005fa54  mov     x19, x0
  10005fa58  mov     x0, x23
  10005fa5c  b       loc_10005fa94
  10005fa60  mov     x19, x0
  10005fa64  b       loc_10005fa80
  10005fa68  mov     x19, x0
  10005fa6c  mov     x0, x22
  10005fa70  bl      _objc_release
  10005fa74  b       loc_10005fa80
  10005fa78  b       loc_10005facc
  10005fa7c  mov     x19, x0
loc_10005fa80:
  10005fa80  mov     x0, x21
  10005fa84  b       loc_10005fa0c
  10005fa88  b       loc_10005fa04
  10005fa8c  mov     x19, x0
  10005fa90  mov     x0, x22
loc_10005fa94:
  10005fa94  bl      _objc_release
  10005fa98  b       loc_10005fad0
  10005fa9c  b       loc_10005fa04
  10005faa0  b       loc_10005fa04
  10005faa4  b       loc_10005facc
  10005faa8  mov     x19, x0
  10005faac  b       loc_10005fabc
  10005fab0  mov     x19, x0
  10005fab4  mov     x0, x23
loc_10005fab8:
  10005fab8  bl      _objc_release
loc_10005fabc:
  10005fabc  mov     x0, x22
  10005fac0  b       loc_10005fa0c
  10005fac4  b       loc_10005fa04
  10005fac8  b       loc_10005fa04
loc_10005facc:
  10005facc  mov     x19, x0
loc_10005fad0:
  10005fad0  mov     x0, x21
  10005fad4  bl      _objc_release
  10005fad8  b       loc_10005fa08
  10005fadc  .word   jump table of 10005ebf8, case 0 -> loc_10005ebfc
  10005fae0  .word   jump table of 10005ebf8, case 1 -> loc_10005ee80
  10005fae4  .word   jump table of 10005ebf8, case 2 -> loc_10005eeac
  10005fae8  .word   jump table of 10005ebf8, case 3 -> loc_10005ef80
  10005faec  .word   jump table of 10005ebf8, case 4 -> loc_10005f198
  10005faf0  .word   jump table of 10005ebf8, case 5 -> loc_10005f1b4
  10005faf4  .word   jump table of 10005ebf8, case 6 -> loc_10005f1f8
  10005faf8  .word   jump table of 10005ebf8, case 7 -> loc_10005f2d0
  10005fafc  .word   jump table of 10005ebf8, case 8 -> loc_10005f398
  10005fb00  .word   jump table of 10005ebf8, case 9 -> loc_10005f470

; ======================================================================
; -[ADEnemy setState:]
; address 0x10005fb04  size 188  kind objc
; ======================================================================
  10005fb04  stp     x22, x21, [sp, #-0x30]!
  10005fb08  stp     x20, x19, [sp, #0x10]
  10005fb0c  stp     x29, x30, [sp, #0x20]
  10005fb10  add     x29, sp, #0x20
  10005fb14  sub     sp, sp, #0x10
  10005fb18  mov     x20, x2
  10005fb1c  mov     x19, x0
  10005fb20  adrp    x8, #0x10041f000
  10005fb24  ldrsw   x22, [x8, #0xb90]                        ; ivar offset ADEnemy._state (+0x8c)
  10005fb28  ldr     w8, [x19, x22]                           ; w8 = self->_state
  10005fb2c  cmp     w8, w20
  10005fb30  b.ne    loc_10005fb48                            ; if (self->_state != arg1)
  10005fb34  sub     sp, x29, #0x20
  10005fb38  ldp     x29, x30, [sp, #0x20]
  10005fb3c  ldp     x20, x19, [sp, #0x10]
  10005fb40  ldp     x22, x21, [sp], #0x30
  10005fb44  ret
loc_10005fb48:
  10005fb48  adrp    x8, #0x100417000
  10005fb4c  nop
  10005fb50  ldr     x1, [x8, #0x450]
  10005fb54  mov     x0, x19
  10005fb58  bl      _objc_msgSend                            ; [self name]
  10005fb5c  mov     x29, x29
  10005fb60  bl      _objc_retainAutoreleasedReturnValue
  10005fb64  mov     x21, x0
  10005fb68  stp     x21, x20, [sp]
  10005fb6c  adrp    x0, #0x1003be000
  10005fb70  add     x0, x0, #0x250                           ; @"[%@] Change state to : %i"
  10005fb74  bl      _NSLog                                   ; NSLog(@"[%@] Change state to : %i", [self name], arg1)
  10005fb78  mov     x0, x21
  10005fb7c  bl      _objc_release
  10005fb80  str     w20, [x19, x22]                          ; self->_state = arg1
  10005fb84  adrp    x8, #0x100416000
  10005fb88  nop
  10005fb8c  ldr     x1, [x8, #0xc80]
  10005fb90  movi    v0.16b, #0
  10005fb94  mov     x0, x19
  10005fb98  sub     sp, x29, #0x20
  10005fb9c  ldp     x29, x30, [sp, #0x20]
  10005fba0  ldp     x20, x19, [sp, #0x10]
  10005fba4  ldp     x22, x21, [sp], #0x30
  10005fba8  b       _objc_msgSend                            ; [self setTimeInState:0]
  10005fbac  mov     x19, x0
  10005fbb0  mov     x0, x21
  10005fbb4  bl      _objc_release
  10005fbb8  mov     x0, x19
  10005fbbc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy spawn]
; address 0x10005fbc0  size 588  kind objc
; ======================================================================
  10005fbc0  stp     x22, x21, [sp, #-0x30]!
  10005fbc4  stp     x20, x19, [sp, #0x10]
  10005fbc8  stp     x29, x30, [sp, #0x20]
  10005fbcc  add     x29, sp, #0x20
  10005fbd0  sub     sp, sp, #0x10
  10005fbd4  mov     x19, x0
  10005fbd8  adrp    x8, #0x100416000
  10005fbdc  nop
  10005fbe0  ldr     x1, [x8, #0xc78]
  10005fbe4  mov     w2, #1
  10005fbe8  bl      _objc_msgSend                            ; [self setState:1]
  10005fbec  adrp    x8, #0x100419000
  10005fbf0  nop
  10005fbf4  ldr     x1, [x8, #0x2e8]
  10005fbf8  adrp    x2, #0x1003be000
  10005fbfc  add     x2, x2, #0x270                           ; @"_spawn"
  10005fc00  mov     w4, #1
  10005fc04  mov     x0, x19
  10005fc08  mov     w3, #0
  10005fc0c  bl      _objc_msgSend                            ; [self playAnySoundContaining:@"_spawn" looping:0 spatialized:1]
  10005fc10  adrp    x8, #0x100419000
  10005fc14  nop
  10005fc18  ldr     x1, [x8, #0x1f8]
  10005fc1c  mov     x0, x19
  10005fc20  bl      _objc_msgSend                            ; [self setSpawn_sound_duration:[self playAnySoundContaining:@"_spawn" looping:0 spatialized:1]]
  10005fc24  adrp    x8, #0x100417000
  10005fc28  nop
  10005fc2c  ldr     x20, [x8, #0x450]
  10005fc30  mov     x0, x19
  10005fc34  mov     x1, x20
  10005fc38  bl      _objc_msgSend                            ; [self name]
  10005fc3c  mov     x29, x29
  10005fc40  bl      _objc_retainAutoreleasedReturnValue
  10005fc44  mov     x21, x0
  10005fc48  str     x21, [sp]
  10005fc4c  adrp    x0, #0x1003be000
  10005fc50  add     x0, x0, #0x290                           ; @"[%@] Spawn"
  10005fc54  bl      _NSLog                                   ; NSLog(@"[%@] Spawn", [self name])
  10005fc58  mov     x0, x21
  10005fc5c  bl      _objc_release
  10005fc60  mov     x0, x19
  10005fc64  mov     x1, x20
  10005fc68  bl      _objc_msgSend                            ; [self name]
  10005fc6c  mov     x29, x29
  10005fc70  bl      _objc_retainAutoreleasedReturnValue
  10005fc74  mov     x21, x0
  10005fc78  adrp    x8, #0x100416000
  10005fc7c  nop
  10005fc80  ldr     x1, [x8, #0xfe0]
  10005fc84  mov     x0, x19
  10005fc88  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10005fc8c  fcvt    d0, s0
  10005fc90  str     d0, [sp, #8]
  10005fc94  str     x21, [sp]
  10005fc98  adrp    x0, #0x1003be000
  10005fc9c  add     x0, x0, #0x2b0                           ; @"[%@] Spawn sound duration : %.2f"
  10005fca0  bl      _NSLog                                   ; NSLog(@"[%@] Spawn sound duration : %.2f", [self name], [self spawn_sound_duration])
  10005fca4  mov     x0, x21
  10005fca8  bl      _objc_release
  10005fcac  mov     x0, x19
  10005fcb0  mov     x1, x20
  10005fcb4  bl      _objc_msgSend                            ; [self name]
  10005fcb8  mov     x29, x29
  10005fcbc  bl      _objc_retainAutoreleasedReturnValue
  10005fcc0  mov     x21, x0
  10005fcc4  adrp    x8, #0x100417000
  10005fcc8  nop
  10005fccc  ldr     x1, [x8, #0x30]
  10005fcd0  mov     x0, x19
  10005fcd4  bl      _objc_msgSend                            ; [self squaredDistance]
  10005fcd8  fsqrt   s0, s0
  10005fcdc  fcvt    d0, s0
  10005fce0  str     d0, [sp, #8]
  10005fce4  str     x21, [sp]
  10005fce8  adrp    x0, #0x1003be000
  10005fcec  add     x0, x0, #0x2d0                           ; @"[%@] Spawned at distance %f"
  10005fcf0  bl      _NSLog                                   ; NSLog(@"[%@] Spawned at distance %f", [self name], sqrt([self squaredDistance]))
  10005fcf4  mov     x0, x21
  10005fcf8  bl      _objc_release
  10005fcfc  adrp    x8, #0x10041f000
  10005fd00  ldrsw   x8, [x8, #0xb94]                         ; ivar offset ADEnemy.spawned (+0x59)
  10005fd04  ldrb    w9, [x19, x8]                            ; w9 = self->spawned
  10005fd08  cbnz    w9, loc_10005fd64                        ; if (self->spawned != 0)
  10005fd0c  mov     w9, #1
  10005fd10  strb    w9, [x19, x8]                            ; self->spawned = 1
  10005fd14  adrp    x8, #0x10041f000
  10005fd18  ldrsw   x22, [x8, #0xb6c]                        ; ivar offset ADEnemy.ambiantName (+0x50)
  10005fd1c  ldr     x8, [x19, x22]                           ; x8 = self->ambiantName
  10005fd20  cbz     x8, loc_10005fd64                        ; if (self->ambiantName == 0)
  10005fd24  adrp    x8, #0x10041e000
  10005fd28  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  10005fd2c  adrp    x8, #0x100418000
  10005fd30  nop
  10005fd34  ldr     x1, [x8, #0xf58]
  10005fd38  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  10005fd3c  mov     x29, x29
  10005fd40  bl      _objc_retainAutoreleasedReturnValue
  10005fd44  mov     x21, x0
  10005fd48  ldr     x2, [x19, x22]                           ; x2 = self->ambiantName
  10005fd4c  adrp    x8, #0x100419000
  10005fd50  nop
  10005fd54  ldr     x1, [x8, #0x308]
  10005fd58  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] enemyWithAmbiantNameAppeared:self->ambiantName]
  10005fd5c  mov     x0, x21
  10005fd60  bl      _objc_release
loc_10005fd64:
  10005fd64  adrp    x8, #0x10041e000
  10005fd68  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10005fd6c  adrp    x8, #0x100417000
  10005fd70  nop
  10005fd74  ldr     x1, [x8, #0xaa8]
  10005fd78  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10005fd7c  mov     x29, x29
  10005fd80  bl      _objc_retainAutoreleasedReturnValue
  10005fd84  mov     x21, x0
  10005fd88  mov     x0, x19
  10005fd8c  mov     x1, x20
  10005fd90  bl      _objc_msgSend                            ; [self name]
  10005fd94  mov     x29, x29
  10005fd98  bl      _objc_retainAutoreleasedReturnValue
  10005fd9c  mov     x20, x0
  10005fda0  adrp    x8, #0x100419000
  10005fda4  nop
  10005fda8  ldr     x1, [x8, #0x310]
  10005fdac  mov     x0, x21
  10005fdb0  mov     x2, x20
  10005fdb4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] checkSpawnOnStart:[self name]]
  10005fdb8  mov     x0, x20
  10005fdbc  bl      _objc_release
  10005fdc0  mov     x0, x21
  10005fdc4  sub     sp, x29, #0x20
  10005fdc8  ldp     x29, x30, [sp, #0x20]
  10005fdcc  ldp     x20, x19, [sp, #0x10]
  10005fdd0  ldp     x22, x21, [sp], #0x30
  10005fdd4  b       _objc_release
  10005fdd8  b       loc_10005fdf8
  10005fddc  b       loc_10005fdf8
  10005fde0  b       loc_10005fdf8
  10005fde4  b       loc_10005fdf8
  10005fde8  mov     x19, x0
  10005fdec  mov     x0, x20
  10005fdf0  bl      _objc_release
  10005fdf4  b       loc_10005fdfc
loc_10005fdf8:
  10005fdf8  mov     x19, x0
loc_10005fdfc:
  10005fdfc  mov     x0, x21
  10005fe00  bl      _objc_release
  10005fe04  mov     x0, x19
  10005fe08  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy walk]
; address 0x10005fe0c  size 72  kind objc
; ======================================================================
  10005fe0c  stp     x20, x19, [sp, #-0x20]!
  10005fe10  stp     x29, x30, [sp, #0x10]
  10005fe14  add     x29, sp, #0x10
  10005fe18  mov     x19, x0
  10005fe1c  adrp    x8, #0x100416000
  10005fe20  nop
  10005fe24  ldr     x1, [x8, #0xc78]
  10005fe28  mov     w2, #2
  10005fe2c  bl      _objc_msgSend                            ; [self setState:2]
  10005fe30  adrp    x8, #0x100417000
  10005fe34  nop
  10005fe38  ldr     x1, [x8, #0x70]
  10005fe3c  adrp    x2, #0x1003be000
  10005fe40  add     x2, x2, #0x2f0                           ; @"_approach_"
  10005fe44  mov     x0, x19
  10005fe48  ldp     x29, x30, [sp, #0x10]
  10005fe4c  ldp     x20, x19, [sp], #0x20
  10005fe50  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_approach_"]

; ======================================================================
; -[ADEnemy walkOrAgressive]
; address 0x10005fe54  size 168  kind objc
; ======================================================================
  10005fe54  stp     x20, x19, [sp, #-0x20]!
  10005fe58  stp     x29, x30, [sp, #0x10]
  10005fe5c  add     x29, sp, #0x10
  10005fe60  mov     x19, x0
  10005fe64  adrp    x8, #0x100419000
  10005fe68  nop
  10005fe6c  ldr     x1, [x8, #0x1a8]
  10005fe70  bl      _objc_msgSend                            ; [self life]
  10005fe74  fcmp    s0, #0.0
  10005fe78  b.ls    loc_10005fef0                            ; if ([self life] <= 0.0)
  10005fe7c  adrp    x8, #0x100419000
  10005fe80  nop
  10005fe84  ldr     x1, [x8, #0x318]
  10005fe88  mov     x0, x19
  10005fe8c  bl      _objc_msgSend                            ; [self destroyed]
  10005fe90  tbnz    w0, #0, loc_10005fef0                    ; if (([self destroyed] & 1))
  10005fe94  adrp    x8, #0x100416000
  10005fe98  nop
  10005fe9c  ldr     x20, [x8, #0xc60]
  10005fea0  mov     x0, x19
  10005fea4  mov     x1, x20
  10005fea8  bl      _objc_msgSend                            ; [self state]
  10005feac  cmp     w0, #3
  10005feb0  b.ne    loc_10005fec0                            ; if ([self state] != 3)
  10005feb4  adrp    x8, #0x100419000
  10005feb8  add     x8, x8, #0x290                           ; &@selector(aggressive)
  10005febc  b       loc_10005fedc
loc_10005fec0:
  10005fec0  mov     x0, x19
  10005fec4  mov     x1, x20
  10005fec8  bl      _objc_msgSend                            ; [self state]
  10005fecc  cmp     w0, #2
  10005fed0  b.ne    loc_10005fef0                            ; if ([self state] != 2)
  10005fed4  adrp    x8, #0x100419000
  10005fed8  add     x8, x8, #0x298                           ; &@selector(walk)
loc_10005fedc:
  10005fedc  ldr     x1, [x8]                                 ; x1 = one of selectors {aggressive, walk}
  10005fee0  mov     x0, x19
  10005fee4  ldp     x29, x30, [sp, #0x10]
  10005fee8  ldp     x20, x19, [sp], #0x20
  10005feec  b       _objc_msgSend                            ; [self aggressive | walk]
loc_10005fef0:
  10005fef0  ldp     x29, x30, [sp, #0x10]
  10005fef4  ldp     x20, x19, [sp], #0x20
  10005fef8  ret

; ======================================================================
; -[ADEnemy dodge]
; address 0x10005fefc  size 80  kind objc
; ======================================================================
  10005fefc  stp     x20, x19, [sp, #-0x20]!
  10005ff00  stp     x29, x30, [sp, #0x10]
  10005ff04  add     x29, sp, #0x10
  10005ff08  mov     x19, x0
  10005ff0c  adrp    x8, #0x100416000
  10005ff10  nop
  10005ff14  ldr     x1, [x8, #0xc78]
  10005ff18  mov     w2, #7
  10005ff1c  bl      _objc_msgSend                            ; [self setState:7]
  10005ff20  adrp    x8, #0x100419000
  10005ff24  nop
  10005ff28  adrp    x2, #0x1003be000
  10005ff2c  add     x2, x2, #0x310                           ; @"_dodge_"
  10005ff30  ldr     x1, [x8, #0x2e8]
  10005ff34  mov     w4, #1
  10005ff38  mov     x0, x19
  10005ff3c  mov     w3, #0
  10005ff40  ldp     x29, x30, [sp, #0x10]
  10005ff44  ldp     x20, x19, [sp], #0x20
  10005ff48  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_dodge_" looping:0 spatialized:1]

; ======================================================================
; -[ADEnemy protect]
; address 0x10005ff4c  size 136  kind objc
; ======================================================================
  10005ff4c  stp     x20, x19, [sp, #-0x20]!
  10005ff50  stp     x29, x30, [sp, #0x10]
  10005ff54  add     x29, sp, #0x10
  10005ff58  mov     x19, x0
  10005ff5c  adrp    x8, #0x100416000
  10005ff60  nop
  10005ff64  ldr     x1, [x8, #0xc60]
  10005ff68  bl      _objc_msgSend                            ; [self state]
  10005ff6c  cmp     w0, #2
  10005ff70  b.ne    loc_10005ffc8                            ; if ([self state] != 2)
  10005ff74  adrp    x8, #0x10041f000
  10005ff78  adrp    x9, #0x10041f000
  10005ff7c  ldrsw   x8, [x8, #0xb98]                         ; ivar offset ADEnemy.shieldDamagesTaken (+0x60)
  10005ff80  str     wzr, [x19, x8]                           ; self->shieldDamagesTaken = 0
  10005ff84  ldrsw   x8, [x9, #0xb84]                         ; ivar offset ADEnemy.shieldDuration (+0x64)
  10005ff88  str     wzr, [x19, x8]                           ; self->shieldDuration = 0
  10005ff8c  adrp    x8, #0x100416000
  10005ff90  nop
  10005ff94  ldr     x1, [x8, #0xc78]
  10005ff98  mov     w2, #6
  10005ff9c  mov     x0, x19
  10005ffa0  bl      _objc_msgSend                            ; [self setState:6]
  10005ffa4  adrp    x8, #0x100417000
  10005ffa8  nop
  10005ffac  ldr     x1, [x8, #0x70]
  10005ffb0  adrp    x2, #0x1003be000
  10005ffb4  add     x2, x2, #0x330                           ; @"_invincible"
  10005ffb8  mov     x0, x19
  10005ffbc  ldp     x29, x30, [sp, #0x10]
  10005ffc0  ldp     x20, x19, [sp], #0x20
  10005ffc4  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_invincible"]
loc_10005ffc8:
  10005ffc8  ldp     x29, x30, [sp, #0x10]
  10005ffcc  ldp     x20, x19, [sp], #0x20
  10005ffd0  ret

; ======================================================================
; -[ADEnemy aggressive]
; address 0x10005ffd4  size 644  kind objc
; ======================================================================
  10005ffd4  stp     x24, x23, [sp, #-0x40]!
  10005ffd8  stp     x22, x21, [sp, #0x10]
  10005ffdc  stp     x20, x19, [sp, #0x20]
  10005ffe0  stp     x29, x30, [sp, #0x30]
  10005ffe4  add     x29, sp, #0x30
  10005ffe8  mov     x19, x0
  10005ffec  adrp    x8, #0x100417000
  10005fff0  nop
  10005fff4  ldr     x1, [x8, #0x68]
  10005fff8  bl      _objc_msgSend                            ; [self updateOrientation]
  10005fffc  adrp    x24, #0x10041e000
  100060000  ldr     x0, [x24]                                ; class ADGameModifiers
  100060004  adrp    x8, #0x100417000
  100060008  nop
  10006000c  ldr     x21, [x8, #0x510]
  100060010  mov     x1, x21
  100060014  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100060018  mov     x29, x29
  10006001c  bl      _objc_retainAutoreleasedReturnValue
  100060020  mov     x20, x0
  100060024  adrp    x8, #0x100419000
  100060028  nop
  10006002c  ldr     x1, [x8, #0x320]
  100060030  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] tesla]
  100060034  mov     x22, x0
  100060038  mov     x0, x20
  10006003c  bl      _objc_release
  100060040  cbz     w22, loc_1000601c0                       ; if ([[ADGameModifiers sharedModifiers] tesla] == 0)
  100060044  adrp    x8, #0x10041d000
  100060048  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10006004c  adrp    x8, #0x100417000
  100060050  nop
  100060054  ldr     x1, [x8, #0x4f0]
  100060058  bl      _objc_msgSend                            ; [S3DEngine engine]
  10006005c  mov     x29, x29
  100060060  bl      _objc_retainAutoreleasedReturnValue
  100060064  mov     x22, x0
  100060068  adrp    x8, #0x100417000
  10006006c  nop
  100060070  ldr     x1, [x8, #0x4f8]
  100060074  adrp    x2, #0x1003be000
  100060078  add     x2, x2, #0x350                           ; @"roulette_tesla"
  10006007c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"roulette_tesla"]
  100060080  mov     x29, x29
  100060084  bl      _objc_retainAutoreleasedReturnValue
  100060088  mov     x20, x0
  10006008c  mov     x0, x22
  100060090  bl      _objc_release
  100060094  adrp    x8, #0x100417000
  100060098  nop
  10006009c  ldr     x1, [x8, #0x990]
  1000600a0  adrp    x2, #0x1003be000
  1000600a4  add     x2, x2, #0x370                           ; @"roulette_tesla_SPA"
  1000600a8  mov     x0, x20
  1000600ac  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"roulette_tesla"] S3DSound:@"roulette_tesla_SPA"]
  1000600b0  mov     x29, x29
  1000600b4  bl      _objc_retainAutoreleasedReturnValue
  1000600b8  mov     x22, x0
  1000600bc  adrp    x8, #0x100416000
  1000600c0  nop
  1000600c4  ldr     x1, [x8, #0xca8]
  1000600c8  mov     w2, #1
  1000600cc  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"roulette_tesla"] S3DSound:@"roulette_tesla_SPA"] setSpatialized:1]
  1000600d0  adrp    x8, #0x100416000
  1000600d4  nop
  1000600d8  ldr     x1, [x8, #0xff0]
  1000600dc  mov     x0, x19
  1000600e0  bl      _objc_msgSend                            ; [self sound]
  1000600e4  mov     x29, x29
  1000600e8  bl      _objc_retainAutoreleasedReturnValue
  1000600ec  mov     x23, x0
  1000600f0  adrp    x8, #0x100419000
  1000600f4  nop
  1000600f8  ldr     x1, [x8, #0x328]
  1000600fc  bl      _objc_msgSend                            ; [[self sound] planar]
  100060100  adrp    x8, #0x100417000
  100060104  nop
  100060108  ldr     x1, [x8, #0x38]
  10006010c  mov     x0, x22
  100060110  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"roulette_tesla"] S3DSound:@"roulette_tesla_SPA"] setPlanar:{[[self sound] planar].0, [[self sound] planar].1, [[self sound] planar].2}]
  100060114  mov     x0, x23
  100060118  bl      _objc_release
  10006011c  adrp    x8, #0x100417000
  100060120  nop
  100060124  ldr     x1, [x8, #0x600]
  100060128  mov     x0, x22
  10006012c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"roulette_tesla"] S3DSound:@"roulette_tesla_SPA"] play]
  100060130  adrp    x8, #0x100417000
  100060134  nop
  100060138  ldr     x1, [x8, #0x9c8]
  10006013c  adrp    x2, #0x1003b1000
  100060140  add     x2, x2, #0xb60                           ; ^{-[ADEnemy aggressive]_block_invoke}
  100060144  mov     x0, x22
  100060148  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"roulette_tesla"] S3DSound:@"roulette_tesla_SPA"] add3DSoundEndCallback:^{-[ADEnemy aggressive]_block_invoke}]
  10006014c  ldr     x0, [x24]                                ; class ADGameModifiers
  100060150  mov     x1, x21
  100060154  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100060158  mov     x29, x29
  10006015c  bl      _objc_retainAutoreleasedReturnValue
  100060160  mov     x21, x0
  100060164  adrp    x8, #0x100419000
  100060168  nop
  10006016c  ldr     x1, [x8, #0x330]
  100060170  mov     w2, #0
  100060174  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] setTesla:0]
  100060178  mov     x0, x21
  10006017c  bl      _objc_release
  100060180  adrp    x8, #0x10041f000
  100060184  ldrsw   x8, [x8, #0xb9c]                         ; ivar offset ADEnemy._life (+0x84)
  100060188  str     wzr, [x19, x8]                           ; self->_life = 0
  10006018c  adrp    x8, #0x100418000
  100060190  nop
  100060194  ldr     x1, [x8, #0xcc0]
  100060198  mov     x0, x19
  10006019c  bl      _objc_msgSend                            ; [self die]
  1000601a0  mov     x0, x22
  1000601a4  bl      _objc_release
  1000601a8  mov     x0, x20
  1000601ac  ldp     x29, x30, [sp, #0x30]
  1000601b0  ldp     x20, x19, [sp, #0x20]
  1000601b4  ldp     x22, x21, [sp, #0x10]
  1000601b8  ldp     x24, x23, [sp], #0x40
  1000601bc  b       _objc_release
loc_1000601c0:
  1000601c0  adrp    x8, #0x100416000
  1000601c4  nop
  1000601c8  ldr     x1, [x8, #0xc78]
  1000601cc  mov     w2, #3
  1000601d0  mov     x0, x19
  1000601d4  bl      _objc_msgSend                            ; [self setState:3]
  1000601d8  adrp    x8, #0x100417000
  1000601dc  nop
  1000601e0  ldr     x1, [x8, #0x70]
  1000601e4  adrp    x2, #0x1003be000
  1000601e8  add     x2, x2, #0x390                           ; @"_aggressive"
  1000601ec  mov     x0, x19
  1000601f0  ldp     x29, x30, [sp, #0x30]
  1000601f4  ldp     x20, x19, [sp, #0x20]
  1000601f8  ldp     x22, x21, [sp, #0x10]
  1000601fc  ldp     x24, x23, [sp], #0x40
  100060200  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_aggressive"]
  100060204  mov     x19, x0
  100060208  b       loc_100060240
  10006020c  mov     x19, x0
  100060210  b       loc_100060248
  100060214  mov     x19, x0
  100060218  mov     x0, x23
  10006021c  b       loc_10006023c
  100060220  mov     x19, x0
  100060224  mov     x0, x22
  100060228  b       loc_10006024c
  10006022c  mov     x19, x0
  100060230  b       loc_100060248
  100060234  mov     x19, x0
  100060238  mov     x0, x21
loc_10006023c:
  10006023c  bl      _objc_release
loc_100060240:
  100060240  mov     x0, x22
  100060244  bl      _objc_release
loc_100060248:
  100060248  mov     x0, x20
loc_10006024c:
  10006024c  bl      _objc_release
  100060250  mov     x0, x19
  100060254  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy aggressive]_block_invoke
; address 0x100060258  size 172  kind block
; ======================================================================
  100060258  stp     x20, x19, [sp, #-0x20]!
  10006025c  stp     x29, x30, [sp, #0x10]
  100060260  add     x29, sp, #0x10
  100060264  adrp    x8, #0x10041d000
  100060268  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10006026c  adrp    x8, #0x100417000
  100060270  nop
  100060274  ldr     x1, [x8, #0x4f0]
  100060278  bl      _objc_msgSend                            ; [S3DEngine engine]
  10006027c  mov     x29, x29
  100060280  bl      _objc_retainAutoreleasedReturnValue
  100060284  mov     x19, x0
  100060288  adrp    x8, #0x100417000
  10006028c  nop
  100060290  ldr     x1, [x8, #0x4f8]
  100060294  adrp    x2, #0x1003be000
  100060298  add     x2, x2, #0x350                           ; @"roulette_tesla"
  10006029c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"roulette_tesla"]
  1000602a0  mov     x29, x29
  1000602a4  bl      _objc_retainAutoreleasedReturnValue
  1000602a8  mov     x20, x0
  1000602ac  adrp    x8, #0x100417000
  1000602b0  nop
  1000602b4  ldr     x1, [x8, #0x618]
  1000602b8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"roulette_tesla"] deactivate]
  1000602bc  mov     x0, x20
  1000602c0  bl      _objc_release
  1000602c4  mov     x0, x19
  1000602c8  ldp     x29, x30, [sp, #0x10]
  1000602cc  ldp     x20, x19, [sp], #0x20
  1000602d0  b       _objc_release
  1000602d4  mov     x20, x0
  1000602d8  b       loc_1000602fc
  1000602dc  mov     x20, x0
  1000602e0  b       loc_1000602f4
  1000602e4  mov     x1, x20
  1000602e8  mov     x20, x0
  1000602ec  mov     x0, x1
  1000602f0  bl      _objc_release
loc_1000602f4:
  1000602f4  mov     x0, x19
  1000602f8  bl      _objc_release
loc_1000602fc:
  1000602fc  mov     x0, x20
  100060300  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy attack]
; address 0x100060304  size 640  kind objc
; ======================================================================
  100060304  stp     x24, x23, [sp, #-0x40]!
  100060308  stp     x22, x21, [sp, #0x10]
  10006030c  stp     x20, x19, [sp, #0x20]
  100060310  stp     x29, x30, [sp, #0x30]
  100060314  add     x29, sp, #0x30
  100060318  sub     sp, sp, #0x30
  10006031c  mov     x19, x0
  100060320  adrp    x8, #0x100417000
  100060324  nop
  100060328  ldr     x1, [x8, #0x8d0]
  10006032c  movi    v0.16b, #0
  100060330  bl      _objc_msgSend                            ; [self setSpeed:0]
  100060334  adrp    x23, #0x10041e000
  100060338  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  10006033c  adrp    x8, #0x100417000
  100060340  nop
  100060344  ldr     x21, [x8, #0xaa8]
  100060348  mov     x1, x21
  10006034c  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100060350  mov     x29, x29
  100060354  bl      _objc_retainAutoreleasedReturnValue
  100060358  mov     x20, x0
  10006035c  adrp    x8, #0x100418000
  100060360  nop
  100060364  ldr     x1, [x8, #0xb58]
  100060368  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  10006036c  mov     x22, x0
  100060370  mov     x0, x20
  100060374  bl      _objc_release
  100060378  tbnz    w22, #0, loc_10006051c                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  10006037c  adrp    x8, #0x100416000
  100060380  nop
  100060384  ldr     x1, [x8, #0xc78]
  100060388  mov     w2, #4
  10006038c  mov     x0, x19
  100060390  bl      _objc_msgSend                            ; [self setState:4]
  100060394  adrp    x8, #0x100419000
  100060398  nop
  10006039c  ldr     x1, [x8, #0x2e8]
  1000603a0  mov     w3, #0
  1000603a4  mov     w4, #0
  1000603a8  adrp    x2, #0x1003be000
  1000603ac  add     x2, x2, #0x3b0                           ; @"_attack"
  1000603b0  mov     x0, x19
  1000603b4  bl      _objc_msgSend                            ; [self playAnySoundContaining:@"_attack" looping:0 spatialized:0]
  1000603b8  adrp    x8, #0x100416000
  1000603bc  nop
  1000603c0  ldr     x20, [x8, #0xff0]
  1000603c4  mov     x0, x19
  1000603c8  mov     x1, x20
  1000603cc  bl      _objc_msgSend                            ; [self sound]
  1000603d0  mov     x29, x29
  1000603d4  bl      _objc_retainAutoreleasedReturnValue
  1000603d8  mov     x22, x0
  1000603dc  adrp    x8, #0x100416000
  1000603e0  nop
  1000603e4  ldr     x1, [x8, #0xcb0]
  1000603e8  adrp    x8, #0x100181000
  1000603ec  ldr     s0, [x8, #0xc18]                         ; s0 = 1.29999995
  1000603f0  bl      _objc_msgSend                            ; [[self sound] setGain:1.3]
  1000603f4  mov     x0, x22
  1000603f8  bl      _objc_release
  1000603fc  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  100060400  mov     x1, x21
  100060404  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100060408  mov     x29, x29
  10006040c  bl      _objc_retainAutoreleasedReturnValue
  100060410  mov     x21, x0
  100060414  adrp    x8, #0x10041d000
  100060418  ldr     x0, [x8, #0xf78]                         ; class NSString
  10006041c  adrp    x8, #0x100416000
  100060420  nop
  100060424  ldr     x1, [x8, #0xac8]
  100060428  bl      _objc_msgSend                            ; [NSString alloc]
  10006042c  mov     x23, x0
  100060430  adrp    x8, #0x100417000
  100060434  nop
  100060438  ldr     x1, [x8, #0x450]
  10006043c  mov     x0, x19
  100060440  bl      _objc_msgSend                            ; [self name]
  100060444  mov     x29, x29
  100060448  bl      _objc_retainAutoreleasedReturnValue
  10006044c  mov     x22, x0
  100060450  adrp    x8, #0x100417000
  100060454  nop
  100060458  ldr     x1, [x8, #0xb20]
  10006045c  mov     x0, x23
  100060460  mov     x2, x22
  100060464  bl      _objc_msgSend                            ; [[NSString alloc] initWithString:[self name]]
  100060468  mov     x23, x0
  10006046c  adrp    x8, #0x100419000
  100060470  nop
  100060474  ldr     x1, [x8, #0x338]
  100060478  mov     x0, x21
  10006047c  mov     x2, x23
  100060480  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] stopAllEnemiesAfterPlayerDeathByEnemyWithName:[[NSString alloc] initWithString:[self name]]]
  100060484  mov     x0, x23
  100060488  bl      _objc_release
  10006048c  mov     x0, x22
  100060490  bl      _objc_release
  100060494  mov     x0, x21
  100060498  bl      _objc_release
  10006049c  mov     x0, x19
  1000604a0  mov     x1, x20
  1000604a4  bl      _objc_msgSend                            ; [self sound]
  1000604a8  mov     x29, x29
  1000604ac  bl      _objc_retainAutoreleasedReturnValue
  1000604b0  mov     x21, x0
  1000604b4  bl      _objc_release
  1000604b8  cbz     x21, loc_10006051c                       ; if ([self sound] == 0)
  1000604bc  mov     x0, x19
  1000604c0  mov     x1, x20
  1000604c4  bl      _objc_msgSend                            ; [self sound]
  1000604c8  mov     x29, x29
  1000604cc  bl      _objc_retainAutoreleasedReturnValue
  1000604d0  mov     x20, x0
  1000604d4  adrp    x8, #0x1003b0000
  1000604d8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000604dc  adr     x9, #0x100060584                         ; &-[ADEnemy attack]_block_invoke
  1000604e0  nop
  1000604e4  mov     w10, #-0x40000000
  1000604e8  adrp    x11, #0x1003b1000
  1000604ec  add     x11, x11, #0xba0                         ; &d_1003b1ba0
  1000604f0  str     x8, [sp, #8]
  1000604f4  stp     w10, wzr, [sp, #0x10]
  1000604f8  stp     x9, x11, [sp, #0x18]
  1000604fc  str     x19, [sp, #0x28]
  100060500  adrp    x8, #0x100417000
  100060504  nop
  100060508  ldr     x1, [x8, #0x9c8]
  10006050c  add     x2, sp, #8
  100060510  bl      _objc_msgSend                            ; [[self sound] add3DSoundEndCallback:^{-[ADEnemy attack]_block_invoke captures +0x20=self}]
  100060514  mov     x0, x20
  100060518  bl      _objc_release
loc_10006051c:
  10006051c  sub     sp, x29, #0x30
  100060520  ldp     x29, x30, [sp, #0x30]
  100060524  ldp     x20, x19, [sp, #0x20]
  100060528  ldp     x22, x21, [sp, #0x10]
  10006052c  ldp     x24, x23, [sp], #0x40
  100060530  ret
  100060534  b       loc_100060570
  100060538  mov     x19, x0
  10006053c  b       loc_100060568
  100060540  mov     x19, x0
  100060544  mov     x0, x22
  100060548  b       loc_100060578
  10006054c  mov     x19, x0
  100060550  b       loc_100060560
  100060554  mov     x19, x0
  100060558  mov     x0, x23
  10006055c  bl      _objc_release
loc_100060560:
  100060560  mov     x0, x22
  100060564  bl      _objc_release
loc_100060568:
  100060568  mov     x0, x21
  10006056c  b       loc_100060578
loc_100060570:
  100060570  mov     x19, x0
  100060574  mov     x0, x20
loc_100060578:
  100060578  bl      _objc_release
  10006057c  mov     x0, x19
  100060580  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy attack]_block_invoke
; address 0x100060584  size 92  kind block
; ======================================================================
  100060584  stp     x29, x30, [sp, #-0x10]!
  100060588  mov     x29, sp
  10006058c  sub     sp, sp, #0x30
  100060590  adrp    x8, #0x1003b0000
  100060594  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100060598  str     x8, [sp, #8]
  10006059c  mov     w8, #-0x40000000
  1000605a0  stp     w8, wzr, [sp, #0x10]
  1000605a4  adr     x8, #0x1000605e0                         ; &-[ADEnemy attack]_block_invoke_block_invoke
  1000605a8  nop
  1000605ac  str     x8, [sp, #0x18]
  1000605b0  adrp    x8, #0x1003b1000
  1000605b4  add     x8, x8, #0xb80                           ; &d_1003b1b80
  1000605b8  str     x8, [sp, #0x20]
  1000605bc  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  1000605c0  str     x8, [sp, #0x28]
  1000605c4  adrp    x0, #0x1003b0000
  1000605c8  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  1000605cc  add     x1, sp, #8
  1000605d0  bl      _dispatch_sync                           ; dispatch_sync(__dispatch_main_q, ^{-[ADEnemy attack]_block_invoke_block_invoke captures +0x20=self}, blockarg2, blockarg3)
  1000605d4  mov     sp, x29
  1000605d8  ldp     x29, x30, [sp], #0x10
  1000605dc  ret

; ======================================================================
; -[ADEnemy attack]_block_invoke_block_invoke
; address 0x1000605e0  size 20  kind block
; ======================================================================
  1000605e0  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000605e4  adrp    x8, #0x100419000
  1000605e8  nop
  1000605ec  ldr     x1, [x8, #0x340]
  1000605f0  b       _objc_msgSend                            ; [self afterAttackSound]

; ======================================================================
; -[ADEnemy afterAttackSound]
; address 0x1000605f4  size 392  kind objc
; ======================================================================
  1000605f4  stp     x24, x23, [sp, #-0x40]!
  1000605f8  stp     x22, x21, [sp, #0x10]
  1000605fc  stp     x20, x19, [sp, #0x20]
  100060600  stp     x29, x30, [sp, #0x30]
  100060604  add     x29, sp, #0x30
  100060608  sub     sp, sp, #0x10
  10006060c  mov     x19, x0
  100060610  adrp    x8, #0x100416000
  100060614  nop
  100060618  ldr     x1, [x8, #0xc78]
  10006061c  mov     w2, #-1
  100060620  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  100060624  adrp    x8, #0x100417000
  100060628  nop
  10006062c  ldr     x1, [x8, #0x450]
  100060630  mov     x0, x19
  100060634  bl      _objc_msgSend                            ; [self name]
  100060638  mov     x29, x29
  10006063c  bl      _objc_retainAutoreleasedReturnValue
  100060640  mov     x20, x0
  100060644  str     x20, [sp]
  100060648  adrp    x0, #0x1003be000
  10006064c  add     x0, x0, #0x3d0                           ; @"%@ : after attack"
  100060650  bl      _NSLog                                   ; NSLog(@"%@ : after attack", [self name])
  100060654  mov     x0, x20
  100060658  bl      _objc_release
  10006065c  adrp    x23, #0x10041e000
  100060660  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  100060664  adrp    x8, #0x100417000
  100060668  nop
  10006066c  ldr     x19, [x8, #0xaa8]
  100060670  mov     x1, x19
  100060674  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100060678  mov     x29, x29
  10006067c  bl      _objc_retainAutoreleasedReturnValue
  100060680  mov     x20, x0
  100060684  adrp    x8, #0x100419000
  100060688  nop
  10006068c  ldr     x21, [x8, #0x348]
  100060690  mov     x1, x21
  100060694  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] mode]
  100060698  mov     x22, x0
  10006069c  mov     x0, x20
  1000606a0  bl      _objc_release
  1000606a4  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  1000606a8  mov     x1, x19
  1000606ac  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000606b0  mov     x29, x29
  1000606b4  bl      _objc_retainAutoreleasedReturnValue
  1000606b8  mov     x20, x0
  1000606bc  cmp     w22, #2
  1000606c0  b.ne    loc_1000606e0                            ; if ([[ADBrickManager sharedBrickManager] mode] != 2)
  1000606c4  adrp    x8, #0x100417000
  1000606c8  nop
  1000606cc  ldr     x1, [x8, #0xaf0]
  1000606d0  mov     x0, x20
  1000606d4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] gameOver]
  1000606d8  b       loc_100060728
  1000606dc  b       loc_100060768
loc_1000606e0:
  1000606e0  mov     x0, x20
  1000606e4  mov     x1, x21
  1000606e8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] mode]
  1000606ec  mov     x21, x0
  1000606f0  mov     x0, x20
  1000606f4  bl      _objc_release
  1000606f8  cmp     w21, #1
  1000606fc  b.ne    loc_100060744                            ; if ([[ADBrickManager sharedBrickManager] mode] != 1)
  100060700  ldr     x0, [x23, #0x98]                         ; class ADBrickManager
  100060704  mov     x1, x19
  100060708  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10006070c  mov     x29, x29
  100060710  bl      _objc_retainAutoreleasedReturnValue
  100060714  mov     x20, x0
  100060718  adrp    x8, #0x100419000
  10006071c  nop
  100060720  ldr     x1, [x8, #0x350]
  100060724  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] showReviveView]
loc_100060728:
  100060728  mov     x0, x20
  10006072c  sub     sp, x29, #0x30
  100060730  ldp     x29, x30, [sp, #0x30]
  100060734  ldp     x20, x19, [sp, #0x20]
  100060738  ldp     x22, x21, [sp, #0x10]
  10006073c  ldp     x24, x23, [sp], #0x40
  100060740  b       _objc_release
loc_100060744:
  100060744  sub     sp, x29, #0x30
  100060748  ldp     x29, x30, [sp, #0x30]
  10006074c  ldp     x20, x19, [sp, #0x20]
  100060750  ldp     x22, x21, [sp, #0x10]
  100060754  ldp     x24, x23, [sp], #0x40
  100060758  ret
  10006075c  b       loc_100060768
  100060760  b       loc_100060768
  100060764  b       loc_100060768
loc_100060768:
  100060768  mov     x19, x0
  10006076c  mov     x0, x20
  100060770  bl      _objc_release
  100060774  mov     x0, x19
  100060778  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy transitionToBerserk]
; address 0x10006077c  size 168  kind objc
; ======================================================================
  10006077c  stp     x20, x19, [sp, #-0x20]!
  100060780  stp     x29, x30, [sp, #0x10]
  100060784  add     x29, sp, #0x10
  100060788  mov     x19, x0
  10006078c  adrp    x8, #0x100416000
  100060790  nop
  100060794  ldr     x20, [x8, #0xc60]
  100060798  mov     x1, x20
  10006079c  bl      _objc_msgSend                            ; [self state]
  1000607a0  cmp     w0, #8
  1000607a4  b.eq    loc_1000607bc                            ; if ([self state] == 8)
  1000607a8  mov     x0, x19
  1000607ac  mov     x1, x20
  1000607b0  bl      _objc_msgSend                            ; [self state]
  1000607b4  cmp     w0, #9
  1000607b8  b.ne    loc_1000607c8                            ; if ([self state] != 9)
loc_1000607bc:
  1000607bc  ldp     x29, x30, [sp, #0x10]
  1000607c0  ldp     x20, x19, [sp], #0x20
  1000607c4  ret
loc_1000607c8:
  1000607c8  adrp    x8, #0x100417000
  1000607cc  nop
  1000607d0  ldr     x1, [x8, #0x8d0]
  1000607d4  movi    v0.16b, #0
  1000607d8  mov     x0, x19
  1000607dc  bl      _objc_msgSend                            ; [self setSpeed:0]
  1000607e0  adrp    x8, #0x100419000
  1000607e4  nop
  1000607e8  ldr     x1, [x8, #0x2e8]
  1000607ec  adrp    x2, #0x1003be000
  1000607f0  add     x2, x2, #0x3f0                           ; @"_transition"
  1000607f4  mov     w4, #1
  1000607f8  mov     x0, x19
  1000607fc  mov     w3, #0
  100060800  bl      _objc_msgSend                            ; [self playAnySoundContaining:@"_transition" looping:0 spatialized:1]
  100060804  adrp    x8, #0x100416000
  100060808  nop
  10006080c  ldr     x1, [x8, #0xc78]
  100060810  mov     w2, #9
  100060814  mov     x0, x19
  100060818  ldp     x29, x30, [sp, #0x10]
  10006081c  ldp     x20, x19, [sp], #0x20
  100060820  b       _objc_msgSend                            ; [self setState:9]

; ======================================================================
; -[ADEnemy berserk]
; address 0x100060824  size 288  kind objc
; ======================================================================
  100060824  stp     x22, x21, [sp, #-0x30]!
  100060828  stp     x20, x19, [sp, #0x10]
  10006082c  stp     x29, x30, [sp, #0x20]
  100060830  add     x29, sp, #0x20
  100060834  mov     x19, x0
  100060838  adrp    x8, #0x100416000
  10006083c  nop
  100060840  ldr     x1, [x8, #0xc60]
  100060844  bl      _objc_msgSend                            ; [self state]
  100060848  cmp     w0, #8
  10006084c  b.ne    loc_100060860                            ; if ([self state] != 8)
  100060850  ldp     x29, x30, [sp, #0x20]
  100060854  ldp     x20, x19, [sp, #0x10]
  100060858  ldp     x22, x21, [sp], #0x30
  10006085c  ret
loc_100060860:
  100060860  adrp    x8, #0x100419000
  100060864  nop
  100060868  ldr     x1, [x8, #0x2c8]
  10006086c  mov     x0, x19
  100060870  bl      _objc_msgSend                            ; [self berserk_dictionary]
  100060874  mov     x29, x29
  100060878  bl      _objc_retainAutoreleasedReturnValue
  10006087c  mov     x20, x0
  100060880  adrp    x8, #0x100417000
  100060884  nop
  100060888  ldr     x1, [x8, #0x40]
  10006088c  adrp    x2, #0x1003be000
  100060890  add     x2, x2, #0x410                           ; @"berserkSpeed"
  100060894  bl      _objc_msgSend                            ; [[self berserk_dictionary] objectForKey:@"berserkSpeed"]
  100060898  mov     x29, x29
  10006089c  bl      _objc_retainAutoreleasedReturnValue
  1000608a0  mov     x21, x0
  1000608a4  adrp    x8, #0x100417000
  1000608a8  nop
  1000608ac  ldr     x1, [x8, #0x48]
  1000608b0  bl      _objc_msgSend                            ; [[[self berserk_dictionary] objectForKey:@"berserkSpeed"] floatValue]
  1000608b4  adrp    x8, #0x100417000
  1000608b8  nop
  1000608bc  ldr     x1, [x8, #0x8d0]
  1000608c0  mov     x0, x19
  1000608c4  bl      _objc_msgSend                            ; [self setSpeed:[[[self berserk_dictionary] objectForKey:@"berserkSpeed"] floatValue]]
  1000608c8  mov     x0, x21
  1000608cc  bl      _objc_release
  1000608d0  mov     x0, x20
  1000608d4  bl      _objc_release
  1000608d8  adrp    x8, #0x100416000
  1000608dc  nop
  1000608e0  ldr     x1, [x8, #0xc78]
  1000608e4  mov     w2, #8
  1000608e8  mov     x0, x19
  1000608ec  bl      _objc_msgSend                            ; [self setState:8]
  1000608f0  adrp    x8, #0x100419000
  1000608f4  nop
  1000608f8  adrp    x2, #0x1003be000
  1000608fc  add     x2, x2, #0x390                           ; @"_aggressive"
  100060900  ldr     x1, [x8, #0x2e8]
  100060904  mov     w3, #1
  100060908  mov     w4, #1
  10006090c  mov     x0, x19
  100060910  ldp     x29, x30, [sp, #0x20]
  100060914  ldp     x20, x19, [sp, #0x10]
  100060918  ldp     x22, x21, [sp], #0x30
  10006091c  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_aggressive" looping:1 spatialized:1]
  100060920  mov     x19, x0
  100060924  mov     x0, x21
  100060928  bl      _objc_release
  10006092c  b       loc_100060934
  100060930  mov     x19, x0
loc_100060934:
  100060934  mov     x0, x20
  100060938  bl      _objc_release
  10006093c  mov     x0, x19
  100060940  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy berserkGoAway]
; address 0x100060944  size 276  kind objc
; ======================================================================
  100060944  stp     x20, x19, [sp, #-0x20]!
  100060948  stp     x29, x30, [sp, #0x10]
  10006094c  add     x29, sp, #0x10
  100060950  mov     x19, x0
  100060954  adrp    x8, #0x100416000
  100060958  nop
  10006095c  ldr     x1, [x8, #0xc78]
  100060960  mov     w2, #-1
  100060964  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  100060968  adrp    x8, #0x100419000
  10006096c  nop
  100060970  ldr     x1, [x8, #0x358]
  100060974  mov     x0, x19
  100060978  bl      _objc_msgSend                            ; [self setLifeToZero]
  10006097c  adrp    x8, #0x100416000
  100060980  nop
  100060984  ldr     x1, [x8, #0xff0]
  100060988  mov     x0, x19
  10006098c  bl      _objc_msgSend                            ; [self sound]
  100060990  mov     x29, x29
  100060994  bl      _objc_retainAutoreleasedReturnValue
  100060998  mov     x20, x0
  10006099c  adrp    x8, #0x100417000
  1000609a0  nop
  1000609a4  ldr     x1, [x8, #0x568]
  1000609a8  bl      _objc_msgSend                            ; [[self sound] stop]
  1000609ac  mov     x0, x20
  1000609b0  bl      _objc_release
  1000609b4  adrp    x8, #0x10041e000
  1000609b8  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000609bc  adrp    x8, #0x100417000
  1000609c0  nop
  1000609c4  ldr     x1, [x8, #0xaa8]
  1000609c8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000609cc  mov     x29, x29
  1000609d0  bl      _objc_retainAutoreleasedReturnValue
  1000609d4  mov     x20, x0
  1000609d8  adrp    x8, #0x100417000
  1000609dc  nop
  1000609e0  ldr     x1, [x8, #0x450]
  1000609e4  mov     x0, x19
  1000609e8  bl      _objc_msgSend                            ; [self name]
  1000609ec  mov     x29, x29
  1000609f0  bl      _objc_retainAutoreleasedReturnValue
  1000609f4  mov     x19, x0
  1000609f8  adrp    x8, #0x100419000
  1000609fc  nop
  100060a00  ldr     x1, [x8, #0x360]
  100060a04  mov     x0, x20
  100060a08  mov     x2, x19
  100060a0c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] soundOrEnemyWithNameWasDeactivated:[self name]]
  100060a10  mov     x0, x19
  100060a14  bl      _objc_release
  100060a18  mov     x0, x20
  100060a1c  ldp     x29, x30, [sp, #0x10]
  100060a20  ldp     x20, x19, [sp], #0x20
  100060a24  b       _objc_release
  100060a28  mov     x19, x0
  100060a2c  b       loc_100060a48
  100060a30  mov     x19, x0
  100060a34  b       loc_100060a48
  100060a38  mov     x1, x19
  100060a3c  mov     x19, x0
  100060a40  mov     x0, x1
  100060a44  bl      _objc_release
loc_100060a48:
  100060a48  mov     x0, x20
  100060a4c  bl      _objc_release
  100060a50  mov     x0, x19
  100060a54  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy stopAfterPlayerWasKilled]
; address 0x100060a58  size 212  kind objc
; ======================================================================
  100060a58  stp     x20, x19, [sp, #-0x20]!
  100060a5c  stp     x29, x30, [sp, #0x10]
  100060a60  add     x29, sp, #0x10
  100060a64  sub     sp, sp, #0x10
  100060a68  mov     x19, x0
  100060a6c  adrp    x8, #0x100416000
  100060a70  nop
  100060a74  ldr     x1, [x8, #0xc60]
  100060a78  bl      _objc_msgSend                            ; [self state]
  100060a7c  cmp     w0, #4
  100060a80  b.ne    loc_100060ac8                            ; if ([self state] != 4)
  100060a84  adrp    x8, #0x100417000
  100060a88  nop
  100060a8c  ldr     x1, [x8, #0x450]
  100060a90  mov     x0, x19
  100060a94  bl      _objc_msgSend                            ; [self name]
  100060a98  mov     x29, x29
  100060a9c  bl      _objc_retainAutoreleasedReturnValue
  100060aa0  mov     x19, x0
  100060aa4  str     x19, [sp]
  100060aa8  adrp    x0, #0x1003be000
  100060aac  add     x0, x0, #0x430                           ; @"%@ Already attacking"
  100060ab0  bl      _NSLog                                   ; NSLog(@"%@ Already attacking", [self name])
  100060ab4  mov     x0, x19
  100060ab8  sub     sp, x29, #0x10
  100060abc  ldp     x29, x30, [sp, #0x10]
  100060ac0  ldp     x20, x19, [sp], #0x20
  100060ac4  b       _objc_release
loc_100060ac8:
  100060ac8  adrp    x8, #0x100419000
  100060acc  nop
  100060ad0  ldr     x1, [x8, #0x368]
  100060ad4  mov     x0, x19
  100060ad8  bl      _objc_msgSend                            ; [self stopAllSounds]
  100060adc  adrp    x8, #0x100416000
  100060ae0  nop
  100060ae4  ldr     x1, [x8, #0xc78]
  100060ae8  mov     w2, #-1
  100060aec  mov     x0, x19
  100060af0  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  100060af4  adrp    x8, #0x100417000
  100060af8  nop
  100060afc  ldr     x1, [x8, #0x8d0]
  100060b00  movi    v0.16b, #0
  100060b04  mov     x0, x19
  100060b08  sub     sp, x29, #0x10
  100060b0c  ldp     x29, x30, [sp, #0x10]
  100060b10  ldp     x20, x19, [sp], #0x20
  100060b14  b       _objc_msgSend                            ; [self setSpeed:0]
  100060b18  mov     x20, x0
  100060b1c  mov     x0, x19
  100060b20  bl      _objc_release
  100060b24  mov     x0, x20
  100060b28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy hitByWeapon:multiHitFactor:]
; address 0x100060b2c  size 4  kind objc
; ======================================================================
  100060b2c  ret

; ======================================================================
; -[ADEnemy hitByWeapon:]
; address 0x100060b30  size 1384  kind objc
; ======================================================================
  100060b30  stp     d11, d10, [sp, #-0x60]!
  100060b34  stp     d9, d8, [sp, #0x10]
  100060b38  stp     x24, x23, [sp, #0x20]
  100060b3c  stp     x22, x21, [sp, #0x30]
  100060b40  stp     x20, x19, [sp, #0x40]
  100060b44  stp     x29, x30, [sp, #0x50]
  100060b48  add     x29, sp, #0x50
  100060b4c  sub     sp, sp, #0x20
  100060b50  mov     x20, x0
  100060b54  mov     x0, x2
  100060b58  bl      _objc_retain
  100060b5c  mov     x19, x0
  100060b60  adrp    x8, #0x10041e000
  100060b64  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100060b68  adrp    x8, #0x100417000
  100060b6c  nop
  100060b70  ldr     x1, [x8, #0xaa8]
  100060b74  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100060b78  mov     x29, x29
  100060b7c  bl      _objc_retainAutoreleasedReturnValue
  100060b80  mov     x21, x0
  100060b84  adrp    x8, #0x100418000
  100060b88  nop
  100060b8c  ldr     x1, [x8, #0xb58]
  100060b90  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  100060b94  mov     x22, x0
  100060b98  mov     x0, x21
  100060b9c  bl      _objc_release
  100060ba0  tbnz    w22, #0, loc_100061024                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  100060ba4  adrp    x8, #0x100416000
  100060ba8  nop
  100060bac  ldr     x1, [x8, #0xc60]
  100060bb0  mov     x0, x20
  100060bb4  bl      _objc_msgSend                            ; [self state]
  100060bb8  cmp     w0, #6
  100060bbc  b.ne    loc_100060c8c                            ; if ([self state] != 6)
  100060bc0  adrp    x8, #0x10041f000
  100060bc4  ldrsw   x8, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  100060bc8  ldr     x0, [x20, x8]                            ; x0 = self->playlist
  100060bcc  adrp    x8, #0x100416000
  100060bd0  nop
  100060bd4  ldr     x1, [x8, #0xca0]
  100060bd8  adrp    x2, #0x1003be000
  100060bdc  add     x2, x2, #0x450                           ; @"shieldimpact"
  100060be0  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:@"shieldimpact"]
  100060be4  mov     x29, x29
  100060be8  bl      _objc_retainAutoreleasedReturnValue
  100060bec  mov     x21, x0
  100060bf0  adrp    x8, #0x100417000
  100060bf4  nop
  100060bf8  ldr     x22, [x8, #8]
  100060bfc  mov     x0, x20
  100060c00  mov     x1, x22
  100060c04  bl      _objc_msgSend                            ; [self position]
  100060c08  mov     v8.16b, v0.16b
  100060c0c  mov     x0, x20
  100060c10  mov     x1, x22
  100060c14  bl      _objc_msgSend                            ; [self position]
  100060c18  fcvt    s0, d8
  100060c1c  fcvt    s1, d1
  100060c20  adrp    x8, #0x100417000
  100060c24  nop
  100060c28  ldr     x1, [x8, #0x38]
  100060c2c  movi    v2.16b, #0
  100060c30  mov     x0, x21
  100060c34  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"shieldimpact"] setPlanar:{[self position].0, [self position].1, 0}]
  100060c38  adrp    x8, #0x100416000
  100060c3c  nop
  100060c40  ldr     x1, [x8, #0xca8]
  100060c44  mov     w2, #1
  100060c48  mov     x0, x21
  100060c4c  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"shieldimpact"] setSpatialized:1]
  100060c50  adrp    x8, #0x100416000
  100060c54  nop
  100060c58  ldr     x1, [x8, #0xcb0]
  100060c5c  adrp    x8, #0x100181000
  100060c60  ldr     s0, [x8, #0xc20]                         ; s0 = 17.5
  100060c64  mov     x0, x21
  100060c68  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"shieldimpact"] setGain:17.5]
  100060c6c  adrp    x8, #0x100416000
  100060c70  nop
  100060c74  ldr     x1, [x8, #0xcb8]
  100060c78  mov     w2, #0
  100060c7c  mov     x0, x21
  100060c80  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"shieldimpact"] play:0]
  100060c84  mov     x0, x21
  100060c88  b       loc_100061020
loc_100060c8c:
  100060c8c  adrp    x8, #0x100419000
  100060c90  nop
  100060c94  ldr     x1, [x8, #0x370]
  100060c98  mov     x0, x19
  100060c9c  bl      _objc_msgSend                            ; [arg1 damages]
  100060ca0  mov     v8.16b, v0.16b
  100060ca4  adrp    x8, #0x100419000
  100060ca8  nop
  100060cac  ldr     x21, [x8, #0x378]
  100060cb0  mov     x0, x19
  100060cb4  mov     x1, x21
  100060cb8  bl      _objc_msgSend                            ; [arg1 dispersal]
  100060cbc  adrp    x8, #0x100181000
  100060cc0  ldr     s1, [x8, #0xc1c]                         ; s1 = 99.0
  100060cc4  fcmp    s0, s1
  100060cc8  b.pl    loc_100060d48                            ; if ([arg1 dispersal] >= (or unordered) 99)
  100060ccc  adrp    x8, #0x100417000
  100060cd0  nop
  100060cd4  ldr     x1, [x8, #0x30]
  100060cd8  mov     x0, x20
  100060cdc  bl      _objc_msgSend                            ; [self squaredDistance]
  100060ce0  mov     v9.16b, v0.16b
  100060ce4  adrp    x8, #0x100419000
  100060ce8  nop
  100060cec  ldr     x22, [x8, #0x380]
  100060cf0  mov     x0, x19
  100060cf4  mov     x1, x22
  100060cf8  bl      _objc_msgSend                            ; [arg1 range]
  100060cfc  mov     v10.16b, v0.16b
  100060d00  mov     x0, x19
  100060d04  mov     x1, x22
  100060d08  bl      _objc_msgSend                            ; [arg1 range]
  100060d0c  mov     v11.16b, v0.16b
  100060d10  mov     x0, x19
  100060d14  mov     x1, x21
  100060d18  bl      _objc_msgSend                            ; [arg1 dispersal]
  100060d1c  fmul    s1, s10, s11
  100060d20  fdiv    s1, s9, s1
  100060d24  fmov    s2, #1.00000000
  100060d28  fsub    s1, s2, s1
  100060d2c  adrp    x8, #0x100181000
  100060d30  ldr     s2, [x8, #0xa10]                         ; s2 = 100.0
  100060d34  fdiv    s0, s0, s2
  100060d38  fmul    s0, s8, s0
  100060d3c  fsub    s2, s8, s0
  100060d40  fmul    s1, s1, s2                               ; t1 = ((1 - ([self squaredDistance] / ([arg1 range] * [arg1 range]))) * ([arg1 damages] - ([arg1 damages] * ([arg1 dispersal] / 100))))
  100060d44  fadd    s8, s0, s1
loc_100060d48:
  100060d48  adrp    x8, #0x100419000
  100060d4c  nop
  100060d50  ldr     x1, [x8, #0x388]
  100060d54  mov     x0, x20
  100060d58  bl      _objc_msgSend                            ; [self nextShotWillBeCritical]
  100060d5c  cbz     w0, loc_100060d7c                        ; if ([self nextShotWillBeCritical] == 0)
  100060d60  adrp    x8, #0x100419000
  100060d64  nop
  100060d68  ldr     x1, [x8, #0x390]
  100060d6c  mov     x0, x19
  100060d70  bl      _objc_msgSend                            ; [arg1 criticalMultiplier]
  100060d74  fmul    s8, s8, s0
  100060d78  b       loc_100060da8
loc_100060d7c:
  100060d7c  adrp    x8, #0x100419000
  100060d80  nop
  100060d84  ldr     x1, [x8, #0x398]
  100060d88  mov     x0, x20
  100060d8c  bl      _objc_msgSend                            ; [self nextShotWillBePrecise]
  100060d90  cbz     w0, loc_100060da8                        ; if ([self nextShotWillBePrecise] == 0)
  100060d94  fcvt    d0, s8
  100060d98  adrp    x8, #0x100181000
  100060d9c  ldr     d1, [x8, #0xc38]                         ; d1 = 1.3
  100060da0  fmul    d0, d0, d1
  100060da4  fcvt    s8, d0
loc_100060da8:
  100060da8  adrp    x8, #0x10041d000
  100060dac  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  100060db0  adrp    x8, #0x100417000
  100060db4  nop
  100060db8  ldr     x1, [x8, #0xa0]
  100060dbc  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  100060dc0  mov     x29, x29
  100060dc4  bl      _objc_retainAutoreleasedReturnValue
  100060dc8  mov     x21, x0
  100060dcc  adrp    x8, #0x100417000
  100060dd0  nop
  100060dd4  ldr     x22, [x8, #0x450]
  100060dd8  mov     x0, x19
  100060ddc  mov     x1, x22
  100060de0  bl      _objc_msgSend                            ; [arg1 name]
  100060de4  mov     x29, x29
  100060de8  bl      _objc_retainAutoreleasedReturnValue
  100060dec  mov     x23, x0
  100060df0  adrp    x8, #0x100418000
  100060df4  nop
  100060df8  ldr     x1, [x8, #0x6f8]
  100060dfc  mov     x0, x21
  100060e00  mov     x2, x23
  100060e04  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[arg1 name]]
  100060e08  mov     x24, x0
  100060e0c  mov     x0, x23
  100060e10  bl      _objc_release
  100060e14  mov     x0, x21
  100060e18  bl      _objc_release
  100060e1c  adrp    x8, #0x10041e000
  100060e20  ldr     x0, [x8]                                 ; class ADGameModifiers
  100060e24  adrp    x8, #0x100417000
  100060e28  add     x8, x8, #0x510                           ; &@selector(sharedModifiers)
  100060e2c  ldr     x1, [x8]
  100060e30  cbz     w24, loc_100060e60                       ; if ([[ADWeaponManager sharedWeaponManager] isMeleeForWeaponWithName:[arg1 name]] == 0)
  100060e34  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100060e38  mov     x29, x29
  100060e3c  bl      _objc_retainAutoreleasedReturnValue
  100060e40  mov     x21, x0
  100060e44  adrp    x8, #0x100419000
  100060e48  nop
  100060e4c  ldr     x1, [x8, #0x3a0]
  100060e50  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] meleeDamagesModifier]
  100060e54  mov     v9.16b, v0.16b
  100060e58  b       loc_100060e84
  100060e5c  b       loc_10006106c
loc_100060e60:
  100060e60  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100060e64  mov     x29, x29
  100060e68  bl      _objc_retainAutoreleasedReturnValue
  100060e6c  mov     x21, x0
  100060e70  adrp    x8, #0x100419000
  100060e74  nop
  100060e78  ldr     x1, [x8, #0x3a8]
  100060e7c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] gunDamagesModifier]
  100060e80  mov     v9.16b, v0.16b
loc_100060e84:
  100060e84  mov     x0, x21
  100060e88  bl      _objc_release
  100060e8c  adrp    x8, #0x100419000
  100060e90  nop
  100060e94  ldr     x21, [x8, #0x1a8]
  100060e98  mov     x0, x20
  100060e9c  mov     x1, x21
  100060ea0  bl      _objc_msgSend                            ; [self life]
  100060ea4  fmul    s8, s8, s9
  100060ea8  fsub    s0, s0, s8
  100060eac  adrp    x8, #0x100418000
  100060eb0  nop
  100060eb4  ldr     x1, [x8, #0xcb8]
  100060eb8  mov     x0, x20
  100060ebc  bl      _objc_msgSend                            ; [self setLife:([self life] - (s8 * s9))]
  100060ec0  mov     x0, x20
  100060ec4  mov     x1, x22
  100060ec8  bl      _objc_msgSend                            ; [self name]
  100060ecc  mov     x29, x29
  100060ed0  bl      _objc_retainAutoreleasedReturnValue
  100060ed4  mov     x22, x0
  100060ed8  mov     x0, x20
  100060edc  mov     x1, x21
  100060ee0  bl      _objc_msgSend                            ; [self life]
  100060ee4  fcvt    d0, s0
  100060ee8  fcvt    d1, s8
  100060eec  stp     d0, d1, [sp, #8]
  100060ef0  str     x22, [sp]
  100060ef4  adrp    x0, #0x1003be000
  100060ef8  add     x0, x0, #0x470                           ; @"[%@] life : %f (lost %f)"
  100060efc  bl      _NSLog                                   ; NSLog(@"[%@] life : %f (lost %f)", [self name], [self life], (s8 * s9))
  100060f00  mov     x0, x22
  100060f04  bl      _objc_release
  100060f08  adrp    x8, #0x10041e000
  100060f0c  ldr     x0, [x8, #0x228]                         ; class ADMeleeWeapon
  100060f10  adrp    x8, #0x100417000
  100060f14  nop
  100060f18  ldr     x1, [x8, #0x2e0]
  100060f1c  bl      _objc_msgSend                            ; [ADMeleeWeapon class]
  100060f20  mov     x2, x0
  100060f24  adrp    x8, #0x100417000
  100060f28  nop
  100060f2c  ldr     x1, [x8, #0x3b8]
  100060f30  mov     x0, x19
  100060f34  bl      _objc_msgSend                            ; [arg1 isKindOfClass:[ADMeleeWeapon class]]
  100060f38  mov     x2, x0
  100060f3c  adrp    x8, #0x100419000
  100060f40  nop
  100060f44  ldr     x1, [x8, #0x3b0]
  100060f48  mov     x0, x20
  100060f4c  mov     v0.16b, v8.16b
  100060f50  bl      _objc_msgSend                            ; [self playImpactAndHitSoundForDamages:(s8 * s9) melee:[arg1 isKindOfClass:[ADMeleeWeapon class]]]
  100060f54  adrp    x8, #0x100419000
  100060f58  nop
  100060f5c  ldr     x1, [x8, #0x238]
  100060f60  mov     x0, x20
  100060f64  bl      _objc_msgSend                            ; [self dodge_dictionary]
  100060f68  mov     x29, x29
  100060f6c  bl      _objc_retainAutoreleasedReturnValue
  100060f70  mov     x22, x0
  100060f74  cbz     x22, loc_100060fb0                       ; if ([self dodge_dictionary] == 0)
  100060f78  mov     x0, x20
  100060f7c  mov     x1, x21
  100060f80  bl      _objc_msgSend                            ; [self life]
  100060f84  mov     v8.16b, v0.16b
  100060f88  mov     x0, x22
  100060f8c  bl      _objc_release
  100060f90  fcmp    s8, #0.0
  100060f94  b.le    loc_100060fb8                            ; if ([self life] <= (or unordered) 0.0)
  100060f98  adrp    x8, #0x100419000
  100060f9c  nop
  100060fa0  ldr     x1, [x8, #0x3b8]
  100060fa4  mov     x0, x20
  100060fa8  bl      _objc_msgSend                            ; [self dodge]
  100060fac  b       loc_100061024
loc_100060fb0:
  100060fb0  mov     x0, x22
  100060fb4  bl      _objc_release
loc_100060fb8:
  100060fb8  adrp    x8, #0x100419000
  100060fbc  nop
  100060fc0  ldr     x1, [x8, #0x2c8]
  100060fc4  mov     x0, x20
  100060fc8  bl      _objc_msgSend                            ; [self berserk_dictionary]
  100060fcc  mov     x29, x29
  100060fd0  bl      _objc_retainAutoreleasedReturnValue
  100060fd4  mov     x22, x0
  100060fd8  cbz     x22, loc_10006101c                       ; if ([self berserk_dictionary] == 0)
  100060fdc  mov     x0, x20
  100060fe0  mov     x1, x21
  100060fe4  bl      _objc_msgSend                            ; [self life]
  100060fe8  mov     v8.16b, v0.16b
  100060fec  mov     x0, x22
  100060ff0  bl      _objc_release
  100060ff4  fcmp    s8, #0.0
  100060ff8  b.le    loc_100061024                            ; if ([self life] <= (or unordered) 0.0)
  100060ffc  adrp    x8, #0x100419000
  100061000  nop
  100061004  ldr     x1, [x8, #0x2d0]
  100061008  mov     x0, x20
  10006100c  bl      _objc_msgSend                            ; [self transitionToBerserk]
  100061010  b       loc_100061024
  100061014  mov     x20, x0
  100061018  b       loc_100061088
loc_10006101c:
  10006101c  mov     x0, x22
loc_100061020:
  100061020  bl      _objc_release
loc_100061024:
  100061024  mov     x0, x19
  100061028  sub     sp, x29, #0x50
  10006102c  ldp     x29, x30, [sp, #0x50]
  100061030  ldp     x20, x19, [sp, #0x40]
  100061034  ldp     x22, x21, [sp, #0x30]
  100061038  ldp     x24, x23, [sp, #0x20]
  10006103c  ldp     d9, d8, [sp, #0x10]
  100061040  ldp     d11, d10, [sp], #0x60
  100061044  b       _objc_release
  100061048  b       loc_10006106c
  10006104c  b       loc_10006106c
  100061050  b       loc_10006107c
  100061054  b       loc_10006106c
  100061058  mov     x20, x0
  10006105c  mov     x0, x23
  100061060  bl      _objc_release
  100061064  b       loc_100061070
  100061068  b       loc_10006107c
loc_10006106c:
  10006106c  mov     x20, x0
loc_100061070:
  100061070  mov     x0, x21
  100061074  bl      _objc_release
  100061078  b       loc_100061088
loc_10006107c:
  10006107c  mov     x20, x0
  100061080  mov     x0, x22
  100061084  bl      _objc_release
loc_100061088:
  100061088  mov     x0, x19
  10006108c  bl      _objc_release
  100061090  mov     x0, x20
  100061094  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy hitByProjectile:]
; address 0x100061098  size 492  kind objc
; ======================================================================
  100061098  stp     d13, d12, [sp, #-0x70]!
  10006109c  stp     d11, d10, [sp, #0x10]
  1000610a0  stp     d9, d8, [sp, #0x20]
  1000610a4  stp     x24, x23, [sp, #0x30]
  1000610a8  stp     x22, x21, [sp, #0x40]
  1000610ac  stp     x20, x19, [sp, #0x50]
  1000610b0  stp     x29, x30, [sp, #0x60]
  1000610b4  add     x29, sp, #0x60
  1000610b8  mov     x20, x0
  1000610bc  mov     x0, x2
  1000610c0  bl      _objc_retain
  1000610c4  mov     x19, x0
  1000610c8  adrp    x8, #0x10041e000
  1000610cc  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000610d0  adrp    x8, #0x100417000
  1000610d4  nop
  1000610d8  ldr     x1, [x8, #0xaa8]
  1000610dc  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000610e0  mov     x29, x29
  1000610e4  bl      _objc_retainAutoreleasedReturnValue
  1000610e8  mov     x21, x0
  1000610ec  adrp    x8, #0x100418000
  1000610f0  nop
  1000610f4  ldr     x1, [x8, #0xb58]
  1000610f8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000610fc  mov     x22, x0
  100061100  mov     x0, x21
  100061104  bl      _objc_release
  100061108  tbnz    w22, #0, loc_10006121c                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  10006110c  adrp    x8, #0x100418000
  100061110  nop
  100061114  ldr     x21, [x8, #0x930]
  100061118  mov     x0, x19
  10006111c  mov     x1, x21
  100061120  bl      _objc_msgSend                            ; [arg1 weapon]
  100061124  mov     x29, x29
  100061128  bl      _objc_retainAutoreleasedReturnValue
  10006112c  mov     x22, x0
  100061130  adrp    x8, #0x100419000
  100061134  nop
  100061138  ldr     x1, [x8, #0x370]
  10006113c  bl      _objc_msgSend                            ; [[arg1 weapon] damages]
  100061140  mov     v8.16b, v0.16b
  100061144  adrp    x8, #0x10041e000
  100061148  ldr     x0, [x8]                                 ; class ADGameModifiers
  10006114c  adrp    x8, #0x100417000
  100061150  nop
  100061154  ldr     x1, [x8, #0x510]
  100061158  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10006115c  mov     x29, x29
  100061160  bl      _objc_retainAutoreleasedReturnValue
  100061164  mov     x23, x0
  100061168  adrp    x8, #0x100419000
  10006116c  nop
  100061170  ldr     x1, [x8, #0x3a8]
  100061174  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] gunDamagesModifier]
  100061178  mov     v9.16b, v0.16b
  10006117c  mov     x0, x23
  100061180  bl      _objc_release
  100061184  mov     x0, x22
  100061188  bl      _objc_release
  10006118c  adrp    x8, #0x100417000
  100061190  nop
  100061194  ldr     x1, [x8, #8]
  100061198  mov     x0, x19
  10006119c  bl      _objc_msgSend                            ; [arg1 position]
  1000611a0  mov     v10.16b, v0.16b
  1000611a4  mov     v11.16b, v1.16b
  1000611a8  mov     x0, x19
  1000611ac  mov     x1, x21
  1000611b0  bl      _objc_msgSend                            ; [arg1 weapon]
  1000611b4  mov     x29, x29
  1000611b8  bl      _objc_retainAutoreleasedReturnValue
  1000611bc  mov     x21, x0
  1000611c0  adrp    x8, #0x100419000
  1000611c4  nop
  1000611c8  ldr     x1, [x8, #0x378]
  1000611cc  bl      _objc_msgSend                            ; [[arg1 weapon] dispersal]
  1000611d0  mov     v12.16b, v0.16b
  1000611d4  adrp    x8, #0x100419000
  1000611d8  nop
  1000611dc  ldr     x1, [x8, #0x3c0]
  1000611e0  mov     x0, x19
  1000611e4  bl      _objc_msgSend                            ; [arg1 explosionRadius]
  1000611e8  mov     v4.16b, v0.16b
  1000611ec  fmul    s2, s8, s9
  1000611f0  adrp    x8, #0x100419000
  1000611f4  nop
  1000611f8  ldr     x1, [x8, #0x3c8]
  1000611fc  mov     x2, #0
  100061200  mov     x0, x20
  100061204  mov     v0.16b, v10.16b
  100061208  mov     v1.16b, v11.16b
  10006120c  mov     v3.16b, v12.16b
  100061210  bl      _objc_msgSend                            ; [self hitByExplosionAtPosition:{[arg1 position].0, [arg1 position].1} withDamages:([[arg1 weapon] damages] * [[ADGameModifiers sharedModifiers] gunDamagesModifier]) dispersal:[[arg1 weapon] dispersal] radius:[arg1 explosionRadius] powerupname:0]
  100061214  mov     x0, x21
  100061218  bl      _objc_release
loc_10006121c:
  10006121c  mov     x0, x19
  100061220  ldp     x29, x30, [sp, #0x60]
  100061224  ldp     x20, x19, [sp, #0x50]
  100061228  ldp     x22, x21, [sp, #0x40]
  10006122c  ldp     x24, x23, [sp, #0x30]
  100061230  ldp     d9, d8, [sp, #0x20]
  100061234  ldp     d11, d10, [sp, #0x10]
  100061238  ldp     d13, d12, [sp], #0x70
  10006123c  b       _objc_release
  100061240  mov     x20, x0
  100061244  b       loc_100061274
  100061248  b       loc_10006124c
loc_10006124c:
  10006124c  mov     x20, x0
  100061250  mov     x0, x21
  100061254  b       loc_100061270
  100061258  mov     x20, x0
  10006125c  b       loc_10006126c
  100061260  mov     x20, x0
  100061264  mov     x0, x23
  100061268  bl      _objc_release
loc_10006126c:
  10006126c  mov     x0, x22
loc_100061270:
  100061270  bl      _objc_release
loc_100061274:
  100061274  mov     x0, x19
  100061278  bl      _objc_release
  10006127c  mov     x0, x20
  100061280  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:]
; address 0x100061284  size 604  kind objc
; ======================================================================
  100061284  stp     d15, d14, [sp, #-0x70]!
  100061288  stp     d13, d12, [sp, #0x10]
  10006128c  stp     d11, d10, [sp, #0x20]
  100061290  stp     d9, d8, [sp, #0x30]
  100061294  stp     x22, x21, [sp, #0x40]
  100061298  stp     x20, x19, [sp, #0x50]
  10006129c  stp     x29, x30, [sp, #0x60]
  1000612a0  add     x29, sp, #0x60
  1000612a4  sub     sp, sp, #0x30
  1000612a8  mov     v10.16b, v4.16b
  1000612ac  mov     v9.16b, v3.16b
  1000612b0  mov     v8.16b, v2.16b
  1000612b4  mov     v11.16b, v1.16b
  1000612b8  mov     v12.16b, v0.16b
  1000612bc  mov     x19, x0
  1000612c0  adrp    x8, #0x10041e000
  1000612c4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000612c8  adrp    x8, #0x100417000
  1000612cc  nop
  1000612d0  ldr     x1, [x8, #0xaa8]
  1000612d4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000612d8  mov     x29, x29
  1000612dc  bl      _objc_retainAutoreleasedReturnValue
  1000612e0  mov     x20, x0
  1000612e4  adrp    x8, #0x100418000
  1000612e8  nop
  1000612ec  ldr     x1, [x8, #0xb58]
  1000612f0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000612f4  mov     x21, x0
  1000612f8  mov     x0, x20
  1000612fc  bl      _objc_release
  100061300  tbnz    w21, #0, loc_1000614a0                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  100061304  adrp    x8, #0x100181000
  100061308  ldr     s0, [x8, #0xc1c]                         ; s0 = 99.0
  10006130c  fcmp    s9, s0
  100061310  b.pl    loc_1000613b4                            ; if (arg3 >= (or unordered) 99)
  100061314  adrp    x8, #0x100417000
  100061318  nop
  10006131c  ldr     x20, [x8, #8]
  100061320  mov     x0, x19
  100061324  mov     x1, x20
  100061328  bl      _objc_msgSend                            ; [self position]
  10006132c  mov     v13.16b, v0.16b
  100061330  mov     x0, x19
  100061334  mov     x1, x20
  100061338  bl      _objc_msgSend                            ; [self position]
  10006133c  mov     v14.16b, v0.16b
  100061340  mov     x0, x19
  100061344  mov     x1, x20
  100061348  bl      _objc_msgSend                            ; [self position]
  10006134c  mov     v15.16b, v1.16b
  100061350  mov     x0, x19
  100061354  mov     x1, x20
  100061358  bl      _objc_msgSend                            ; [self position]
  10006135c  fsub    d0, d12, d13
  100061360  fsub    d2, d12, d14
  100061364  fmul    d0, d0, d2
  100061368  fsub    d2, d11, d15
  10006136c  fsub    d1, d11, d1
  100061370  fmul    d1, d2, d1
  100061374  fadd    d0, d0, d1                               ; t1 = (((arg1.0 - [self position].0) * (arg1.0 - [self position].0)) + ((arg1.1 - [self position].1) * (arg1.1 - [self position].1)))
  100061378  fcvt    s0, d0
  10006137c  fdiv    s0, s0, s10
  100061380  fmul    s0, s0, s10
  100061384  fmov    s1, #1.00000000
  100061388  fsub    s0, s1, s0
  10006138c  fcmp    s0, #0.0
  100061390  movi    v1.16b, #0
  100061394  fcsel   s0, s1, s0, mi
  100061398  adrp    x8, #0x100181000
  10006139c  ldr     s1, [x8, #0xa10]                         ; s1 = 100.0
  1000613a0  fdiv    s1, s9, s1
  1000613a4  fmul    s1, s1, s8
  1000613a8  fsub    s2, s8, s1
  1000613ac  fmul    s0, s2, s0                               ; t2 = ((arg2 - ((arg3 / 100) * arg2)) * ((1 - ((t1 / arg4) * arg4)) < 0.0 ? 0 : (1 - ((t1 / arg4) * arg4))))
  1000613b0  fadd    s8, s1, s0
loc_1000613b4:
  1000613b4  adrp    x8, #0x100419000
  1000613b8  nop
  1000613bc  ldr     x1, [x8, #0x1a8]
  1000613c0  mov     x0, x19
  1000613c4  bl      _objc_msgSend                            ; [self life]
  1000613c8  fsub    s0, s0, s8
  1000613cc  adrp    x8, #0x100418000
  1000613d0  nop
  1000613d4  ldr     x1, [x8, #0xcb8]
  1000613d8  mov     x0, x19
  1000613dc  bl      _objc_msgSend                            ; [self setLife:([self life] - s8)]
  1000613e0  bl      _random                                  ; random()
  1000613e4  mov     x8, #-0x5c29000000000000
  1000613e8  movk    x8, #0xa3d, lsl #32
  1000613ec  movk    x8, #0x70a3, lsl #16
  1000613f0  movk    x8, #0xd70b
  1000613f4  smulh   x8, x0, x8
  1000613f8  add     x8, x8, x0
  1000613fc  asr     x9, x8, #5
  100061400  add     x8, x9, x8, lsr #63                      ; t3 = ((((random() *h 0xa3d70a3d70a3d70b) + random()) >> 5) + (((random() *h 0xa3d70a3d70a3d70b) + random()) >>> 63))
  100061404  mov     w9, #0x32
  100061408  msub    x8, x8, x9, x0
  10006140c  scvtf   s0, x8
  100061410  fcvt    d0, s0
  100061414  adrp    x8, #0x100181000
  100061418  ldr     d1, [x8, #0xc00]                         ; d1 = 200.0
  10006141c  fdiv    d0, d0, d1
  100061420  nop
  100061424  ldr     d1, [x8, #0xa18]                         ; d1 = 0.2
  100061428  fadd    d0, d0, d1
  10006142c  adrp    x8, #0x100181000
  100061430  ldr     d1, [x8, #0xc40]                         ; d1 = 1000000000.0
  100061434  fmul    d0, d0, d1
  100061438  fcvtzs  x1, d0
  10006143c  mov     x0, #0
  100061440  bl      _dispatch_time                           ; dispatch_time(0, (int)((((float)(random() - t3 * 50) / 200) + 0.2) * 1e+09))
  100061444  mov     x20, x0
  100061448  adrp    x8, #0x1003b0000
  10006144c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100061450  mov     w9, #-0x3e000000
  100061454  str     x8, [sp]
  100061458  stp     w9, wzr, [sp, #8]
  10006145c  adr     x8, #0x1000614e0                         ; &-[ADEnemy hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:]_block_invoke
  100061460  nop
  100061464  str     x8, [sp, #0x10]
  100061468  adrp    x8, #0x1003b1000
  10006146c  add     x8, x8, #0xbc0                           ; &d_1003b1bc0
  100061470  str     x8, [sp, #0x18]
  100061474  mov     x0, x19
  100061478  bl      _objc_retain
  10006147c  str     x19, [sp, #0x20]
  100061480  str     s8, [sp, #0x28]
  100061484  adrp    x1, #0x1003b0000
  100061488  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10006148c  mov     x2, sp
  100061490  mov     x0, x20
  100061494  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, (int)((((float)(random() - t3 * 50) / 200) + 0.2) * 1e+09)), __dispatch_main_q, ^{-[ADEnemy hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:]_block_invoke captures +0x20=self})
  100061498  ldr     x0, [sp, #0x20]
  10006149c  bl      _objc_release
loc_1000614a0:
  1000614a0  sub     sp, x29, #0x60
  1000614a4  ldp     x29, x30, [sp, #0x60]
  1000614a8  ldp     x20, x19, [sp, #0x50]
  1000614ac  ldp     x22, x21, [sp, #0x40]
  1000614b0  ldp     d9, d8, [sp, #0x30]
  1000614b4  ldp     d11, d10, [sp, #0x20]
  1000614b8  ldp     d13, d12, [sp, #0x10]
  1000614bc  ldp     d15, d14, [sp], #0x70
  1000614c0  ret
  1000614c4  mov     x19, x0
  1000614c8  b       loc_1000614d8
  1000614cc  mov     x19, x0
  1000614d0  mov     x0, x20
  1000614d4  bl      _objc_release
loc_1000614d8:
  1000614d8  mov     x0, x19
  1000614dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy hitByExplosionAtPosition:withDamages:dispersal:radius:powerupname:]_block_invoke
; address 0x1000614e0  size 28  kind block
; ======================================================================
  1000614e0  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  1000614e4  ldr     s0, [x0, #0x28]                          ; s0 = block[+0x28]
  1000614e8  adrp    x9, #0x100419000
  1000614ec  nop
  1000614f0  ldr     x1, [x9, #0x3d0]
  1000614f4  mov     x0, x8
  1000614f8  b       _objc_msgSend                            ; [self playHitSoundForDamages:block[+0x28]]

; ======================================================================
; sub_1000614fc
; address 0x1000614fc  size 8  kind sub
; ======================================================================
  1000614fc  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100061500  b       _objc_retain

; ======================================================================
; sub_100061504
; address 0x100061504  size 8  kind sub
; ======================================================================
  100061504  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100061508  b       _objc_release

; ======================================================================
; -[ADEnemy playImpactAndHitSoundForDamages:melee:]
; address 0x10006150c  size 1240  kind objc
; ======================================================================
  10006150c  stp     d11, d10, [sp, #-0x60]!
  100061510  stp     d9, d8, [sp, #0x10]
  100061514  stp     x24, x23, [sp, #0x20]
  100061518  stp     x22, x21, [sp, #0x30]
  10006151c  stp     x20, x19, [sp, #0x40]
  100061520  stp     x29, x30, [sp, #0x50]
  100061524  add     x29, sp, #0x50
  100061528  sub     sp, sp, #0x40
  10006152c  mov     x20, x2
  100061530  mov     v8.16b, v0.16b
  100061534  mov     x19, x0
  100061538  cbnz    w20, loc_10006189c                       ; if (arg2 != 0)
  10006153c  adrp    x8, #0x100419000
  100061540  nop
  100061544  ldr     x1, [x8, #0x3d8]
  100061548  mov     x21, #0
  10006154c  mov     x0, x19
  100061550  bl      _objc_msgSend                            ; [self useOwnImpactSounds]
  100061554  cbz     w0, loc_1000615a4                        ; if ([self useOwnImpactSounds] == 0)
  100061558  adrp    x8, #0x100416000
  10006155c  nop
  100061560  ldr     x1, [x8, #0xc98]
  100061564  mov     x21, #0
  100061568  mov     x0, x19
  10006156c  bl      _objc_msgSend                            ; [self playlist]
  100061570  mov     x29, x29
  100061574  bl      _objc_retainAutoreleasedReturnValue
  100061578  mov     x22, x0
  10006157c  adrp    x8, #0x100416000
  100061580  nop
  100061584  ldr     x1, [x8, #0xca0]
  100061588  adrp    x2, #0x1003be000
  10006158c  add     x2, x2, #0x490                           ; @"impact_"
  100061590  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"impact_"]
  100061594  mov     x29, x29
  100061598  bl      _objc_retainAutoreleasedReturnValue
  10006159c  mov     x21, x0
  1000615a0  b       loc_10006179c
loc_1000615a4:
  1000615a4  adrp    x8, #0x10041d000
  1000615a8  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000615ac  adrp    x8, #0x100417000
  1000615b0  nop
  1000615b4  ldr     x1, [x8, #0x4f0]
  1000615b8  mov     x21, #0
  1000615bc  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000615c0  mov     x29, x29
  1000615c4  bl      _objc_retainAutoreleasedReturnValue
  1000615c8  mov     x21, x0
  1000615cc  adrp    x8, #0x100417000
  1000615d0  nop
  1000615d4  ldr     x1, [x8, #0x4f8]
  1000615d8  adrp    x2, #0x1003be000
  1000615dc  add     x2, x2, #0x4b0                           ; @"impact"
  1000615e0  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"impact"]
  1000615e4  mov     x29, x29
  1000615e8  bl      _objc_retainAutoreleasedReturnValue
  1000615ec  mov     x22, x0
  1000615f0  mov     x0, x21
  1000615f4  bl      _objc_release
  1000615f8  adrp    x8, #0x100419000
  1000615fc  nop
  100061600  ldr     x23, [x8, #0x3e0]
  100061604  mov     x21, #0
  100061608  mov     x0, x19
  10006160c  mov     x1, x23
  100061610  bl      _objc_msgSend                            ; [self multiHitFactor]
  100061614  cmp     w0, #2
  100061618  b.lt    loc_100061694                            ; if ([self multiHitFactor] < 2)
  10006161c  adrp    x8, #0x10041d000
  100061620  ldr     x24, [x8, #0xf78]                        ; class NSString
  100061624  mov     x21, #0
  100061628  mov     x0, x19
  10006162c  mov     x1, x23
  100061630  bl      _objc_msgSend                            ; [self multiHitFactor]
  100061634  mov     x21, #0
  100061638  adrp    x8, #0x100416000
  10006163c  nop
  100061640  ldr     x1, [x8, #0xee8]
  100061644  str     x0, [sp]
  100061648  adrp    x2, #0x1003be000
  10006164c  add     x2, x2, #0x4d0                           ; @"impactmulti_%i"
  100061650  mov     x0, x24
  100061654  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"impactmulti_%i", [self multiHitFactor]]
  100061658  mov     x29, x29
  10006165c  bl      _objc_retainAutoreleasedReturnValue
  100061660  mov     x23, x0
  100061664  adrp    x8, #0x100416000
  100061668  nop
  10006166c  ldr     x1, [x8, #0xca0]
  100061670  mov     x0, x22
  100061674  mov     x2, x23
  100061678  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"impact"] anySoundContaining:[NSString stringWithFormat:@"impactmulti_%i", [self multiHitFactor]]]
  10006167c  mov     x29, x29
  100061680  bl      _objc_retainAutoreleasedReturnValue
  100061684  mov     x21, x0
  100061688  mov     x0, x23
  10006168c  bl      _objc_release
  100061690  b       loc_10006173c
loc_100061694:
  100061694  mov     x21, #0
  100061698  mov     x0, x19
  10006169c  mov     x1, x23
  1000616a0  bl      _objc_msgSend                            ; [self multiHitFactor]
  1000616a4  cbz     w0, loc_1000616c0                        ; if ([self multiHitFactor] == 0)
  1000616a8  mov     x21, #0
  1000616ac  mov     x0, x19
  1000616b0  mov     x1, x23
  1000616b4  bl      _objc_msgSend                            ; [self multiHitFactor]
  1000616b8  cmp     w0, #1
  1000616bc  b.ne    loc_10006172c                            ; if ([self multiHitFactor] != 1)
loc_1000616c0:
  1000616c0  adrp    x8, #0x100419000
  1000616c4  nop
  1000616c8  ldr     x1, [x8, #0x1a8]
  1000616cc  mov     x21, #0
  1000616d0  mov     x0, x19
  1000616d4  bl      _objc_msgSend                            ; [self life]
  1000616d8  adrp    x8, #0x100416000
  1000616dc  add     x8, x8, #0xca0                           ; &@selector(anySoundContaining:)
  1000616e0  ldr     x1, [x8]
  1000616e4  fcmp    s0, #0.0
  1000616e8  b.le    loc_100061708                            ; if ([self life] <= (or unordered) 0.0)
  1000616ec  mov     x21, #0
  1000616f0  adrp    x2, #0x1003be000
  1000616f4  add     x2, x2, #0x490                           ; @"impact_"
  1000616f8  mov     x0, x22
  1000616fc  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"impact"] anySoundContaining:@"impact_"]
  100061700  mov     x29, x29
  100061704  b       loc_100061720
loc_100061708:
  100061708  mov     x21, #0
  10006170c  adrp    x2, #0x1003be000
  100061710  add     x2, x2, #0x4f0                           ; @"KillConfirm_"
  100061714  mov     x0, x22
  100061718  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"impact"] anySoundContaining:@"KillConfirm_"]
  10006171c  mov     x29, x29
loc_100061720:
  100061720  bl      _objc_retainAutoreleasedReturnValue
  100061724  mov     x21, x0
  100061728  b       loc_10006173c
loc_10006172c:
  10006172c  mov     x21, #0
  100061730  mov     x0, x19
  100061734  mov     x1, x23
  100061738  bl      _objc_msgSend                            ; [self multiHitFactor]
loc_10006173c:
  10006173c  adrp    x8, #0x100417000
  100061740  nop
  100061744  ldr     x1, [x8, #0x450]
  100061748  mov     x0, x19
  10006174c  bl      _objc_msgSend                            ; [self name]
  100061750  mov     x29, x29
  100061754  bl      _objc_retainAutoreleasedReturnValue
  100061758  mov     x23, x0
  10006175c  adrp    x8, #0x100419000
  100061760  nop
  100061764  ldr     x1, [x8, #0x3e8]
  100061768  mov     x0, x21
  10006176c  bl      _objc_msgSend                            ; [x0 key]
  100061770  mov     x29, x29
  100061774  bl      _objc_retainAutoreleasedReturnValue
  100061778  mov     x24, x0
  10006177c  stp     x23, x24, [sp]
  100061780  adrp    x0, #0x1003be000
  100061784  add     x0, x0, #0x510                           ; @"[%@] play impact sound : %@"
  100061788  bl      _NSLog                                   ; NSLog(@"[%@] play impact sound : %@", [self name], [x0 key])
  10006178c  mov     x0, x24
  100061790  bl      _objc_release
  100061794  mov     x0, x23
  100061798  bl      _objc_release
loc_10006179c:
  10006179c  mov     x0, x22
  1000617a0  bl      _objc_release
  1000617a4  cbz     x21, loc_100061894                       ; if (x21 == 0)
  1000617a8  adrp    x8, #0x100417000
  1000617ac  nop
  1000617b0  ldr     x22, [x8, #8]
  1000617b4  mov     x0, x19
  1000617b8  mov     x1, x22
  1000617bc  bl      _objc_msgSend                            ; [self position]
  1000617c0  mov     v9.16b, v0.16b
  1000617c4  mov     x0, x19
  1000617c8  mov     x1, x22
  1000617cc  bl      _objc_msgSend                            ; [self position]
  1000617d0  fcvt    s0, d9
  1000617d4  fcvt    s1, d1
  1000617d8  adrp    x8, #0x100417000
  1000617dc  nop
  1000617e0  ldr     x1, [x8, #0x38]
  1000617e4  movi    v2.16b, #0
  1000617e8  mov     x0, x21
  1000617ec  bl      _objc_msgSend                            ; [x0 setPlanar:{[self position].0, [self position].1, 0}]
  1000617f0  adrp    x8, #0x100416000
  1000617f4  nop
  1000617f8  ldr     x1, [x8, #0xca8]
  1000617fc  mov     w2, #1
  100061800  mov     x0, x21
  100061804  bl      _objc_msgSend                            ; [x0 setSpatialized:1]
  100061808  mov     x0, x19
  10006180c  mov     x1, x22
  100061810  bl      _objc_msgSend                            ; [self position]
  100061814  mov     v9.16b, v0.16b
  100061818  mov     x0, x19
  10006181c  mov     x1, x22
  100061820  bl      _objc_msgSend                            ; [self position]
  100061824  mov     v10.16b, v0.16b
  100061828  mov     x0, x19
  10006182c  mov     x1, x22
  100061830  bl      _objc_msgSend                            ; [self position]
  100061834  mov     v11.16b, v1.16b
  100061838  mov     x0, x19
  10006183c  mov     x1, x22
  100061840  bl      _objc_msgSend                            ; [self position]
  100061844  fmul    d0, d9, d10
  100061848  fmul    d1, d11, d1
  10006184c  fadd    d0, d0, d1
  100061850  fcvt    s0, d0
  100061854  fsqrt   s0, s0
  100061858  fmov    s1, #10.00000000
  10006185c  fdiv    s0, s0, s1                               ; t1 = (sqrt((([self position].0 * [self position].0) + ([self position].1 * [self position].1))) / 10)
  100061860  fmov    s1, #5.00000000
  100061864  fmul    s0, s0, s1
  100061868  adrp    x8, #0x100416000
  10006186c  nop
  100061870  ldr     x1, [x8, #0xcb0]
  100061874  mov     x0, x21
  100061878  bl      _objc_msgSend                            ; [x0 setGain:(t1 * 5)]
  10006187c  adrp    x8, #0x100416000
  100061880  nop
  100061884  ldr     x1, [x8, #0xcb8]
  100061888  mov     w2, #0
  10006188c  mov     x0, x21
  100061890  bl      _objc_msgSend                            ; [x0 play:0]
loc_100061894:
  100061894  mov     x0, x21
  100061898  bl      _objc_release
loc_10006189c:
  10006189c  cmp     w20, #0
  1000618a0  adrp    x8, #0x100181000
  1000618a4  ldr     d0, [x8, #0xa78]                         ; d0 = 0.3
  1000618a8  nop
  1000618ac  ldr     d1, [x8, #0xa20]                         ; d1 = 0.05
  1000618b0  fcsel   d9, d1, d0, ne
  1000618b4  adrp    x8, #0x100419000
  1000618b8  nop
  1000618bc  ldr     x1, [x8, #0x3e0]
  1000618c0  mov     x0, x19
  1000618c4  bl      _objc_msgSend                            ; [self multiHitFactor]
  1000618c8  cmn     w0, #1
  1000618cc  b.ne    loc_10006190c                            ; if ([self multiHitFactor] != -1)
  1000618d0  bl      _rand                                    ; rand()
  1000618d4  sxtw    x8, w0
  1000618d8  mov     w9, #0x51eb0000
  1000618dc  movk    w9, #0x851f
  1000618e0  mul     x8, x8, x9
  1000618e4  lsr     x9, x8, #0x3f
  1000618e8  asr     x8, x8, #0x25
  1000618ec  add     w8, w8, w9
  1000618f0  mov     w9, #0x64
  1000618f4  msub    w8, w8, w9, w0
  1000618f8  scvtf   d0, w8
  1000618fc  adrp    x8, #0x100181000
  100061900  ldr     d1, [x8, #0xc48]                         ; d1 = 500.0
  100061904  fdiv    d0, d0, d1                               ; t2 = ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) / 500)
  100061908  fadd    d9, d9, d0
loc_10006190c:
  10006190c  adrp    x8, #0x100181000
  100061910  ldr     d0, [x8, #0xc40]                         ; d0 = 1000000000.0
  100061914  fmul    d0, d9, d0
  100061918  fcvtzs  x1, d0
  10006191c  mov     x0, #0
  100061920  bl      _dispatch_time                           ; dispatch_time(0, (int)(d9 * 1e+09))
  100061924  adrp    x8, #0x1003b0000
  100061928  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10006192c  mov     w9, #-0x40000000
  100061930  adr     x10, #0x1000619e4                        ; &-[ADEnemy playImpactAndHitSoundForDamages:melee:]_block_invoke
  100061934  nop
  100061938  str     x8, [sp, #0x10]
  10006193c  stp     w9, wzr, [sp, #0x18]
  100061940  adrp    x8, #0x1003b1000
  100061944  add     x8, x8, #0xbf0                           ; &d_1003b1bf0
  100061948  stp     x10, x8, [sp, #0x20]
  10006194c  str     x19, [sp, #0x30]
  100061950  str     s8, [sp, #0x38]
  100061954  adrp    x1, #0x1003b0000
  100061958  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10006195c  add     x2, sp, #0x10
  100061960  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, (int)(d9 * 1e+09)), __dispatch_main_q, ^{-[ADEnemy playImpactAndHitSoundForDamages:melee:]_block_invoke captures +0x20=self, +0x28=arg1})
  100061964  sub     sp, x29, #0x50
  100061968  ldp     x29, x30, [sp, #0x50]
  10006196c  ldp     x20, x19, [sp, #0x40]
  100061970  ldp     x22, x21, [sp, #0x30]
  100061974  ldp     x24, x23, [sp, #0x20]
  100061978  ldp     d9, d8, [sp, #0x10]
  10006197c  ldp     d11, d10, [sp], #0x60
  100061980  ret
loc_100061984:
  100061984  mov     x19, x0
  100061988  mov     x0, x21
  10006198c  b       loc_1000619cc
  100061990  mov     x19, x0
  100061994  b       loc_1000619c0
  100061998  mov     x19, x0
  10006199c  b       loc_1000619c8
  1000619a0  b       loc_100061984
  1000619a4  mov     x19, x0
  1000619a8  b       loc_1000619b8
  1000619ac  mov     x19, x0
  1000619b0  mov     x0, x24
  1000619b4  bl      _objc_release
loc_1000619b8:
  1000619b8  mov     x0, x23
  1000619bc  bl      _objc_release
loc_1000619c0:
  1000619c0  mov     x0, x21
loc_1000619c4:
  1000619c4  bl      _objc_release
loc_1000619c8:
  1000619c8  mov     x0, x22
loc_1000619cc:
  1000619cc  bl      _objc_release
  1000619d0  mov     x0, x19
  1000619d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000619d8  mov     x19, x0
  1000619dc  mov     x0, x23
  1000619e0  b       loc_1000619c4

; ======================================================================
; -[ADEnemy playImpactAndHitSoundForDamages:melee:]_block_invoke
; address 0x1000619e4  size 28  kind block
; ======================================================================
  1000619e4  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  1000619e8  ldr     s0, [x0, #0x28]                          ; s0 = captured arg1
  1000619ec  adrp    x9, #0x100419000
  1000619f0  nop
  1000619f4  ldr     x1, [x9, #0x3d0]
  1000619f8  mov     x0, x8
  1000619fc  b       _objc_msgSend                            ; [self playHitSoundForDamages:arg1]

; ======================================================================
; -[ADEnemy setLife:]
; address 0x100061a00  size 184  kind objc
; ======================================================================
  100061a00  stp     d9, d8, [sp, #-0x40]!
  100061a04  stp     x22, x21, [sp, #0x10]
  100061a08  stp     x20, x19, [sp, #0x20]
  100061a0c  stp     x29, x30, [sp, #0x30]
  100061a10  add     x29, sp, #0x30
  100061a14  mov     v8.16b, v0.16b
  100061a18  mov     x19, x0
  100061a1c  adrp    x8, #0x10041f000
  100061a20  ldrsw   x21, [x8, #0xb9c]                        ; ivar offset ADEnemy._life (+0x84)
  100061a24  ldr     s0, [x19, x21]                           ; s0 = self->_life
  100061a28  fcmp    s0, s8
  100061a2c  b.le    loc_100061a74                            ; if (self->_life <= (or unordered) arg1)
  100061a30  adrp    x8, #0x100419000
  100061a34  nop
  100061a38  ldr     x1, [x8, #0x2e0]
  100061a3c  mov     x0, x19
  100061a40  bl      _objc_msgSend                            ; [self shield_dictionary]
  100061a44  mov     x29, x29
  100061a48  bl      _objc_retainAutoreleasedReturnValue
  100061a4c  mov     x20, x0
  100061a50  bl      _objc_release
  100061a54  cbz     x20, loc_100061a74                       ; if ([self shield_dictionary] == 0)
  100061a58  ldr     s0, [x19, x21]                           ; s0 = self->_life
  100061a5c  fsub    s0, s0, s8
  100061a60  adrp    x8, #0x10041f000
  100061a64  ldrsw   x8, [x8, #0xb98]                         ; ivar offset ADEnemy.shieldDamagesTaken (+0x60)
  100061a68  ldr     s1, [x19, x8]                            ; s1 = self->shieldDamagesTaken
  100061a6c  fadd    s0, s0, s1
  100061a70  str     s0, [x19, x8]                            ; self->shieldDamagesTaken = ((self->_life - arg1) + self->shieldDamagesTaken)
loc_100061a74:
  100061a74  str     s8, [x19, x21]                           ; self->_life = arg1
  100061a78  fcmp    s8, #0.0
  100061a7c  b.ls    loc_100061a94                            ; if (arg1 <= 0.0)
  100061a80  ldp     x29, x30, [sp, #0x30]
  100061a84  ldp     x20, x19, [sp, #0x20]
  100061a88  ldp     x22, x21, [sp, #0x10]
  100061a8c  ldp     d9, d8, [sp], #0x40
  100061a90  ret
loc_100061a94:
  100061a94  adrp    x8, #0x100418000
  100061a98  nop
  100061a9c  ldr     x1, [x8, #0xcc0]
  100061aa0  mov     x0, x19
  100061aa4  ldp     x29, x30, [sp, #0x30]
  100061aa8  ldp     x20, x19, [sp, #0x20]
  100061aac  ldp     x22, x21, [sp, #0x10]
  100061ab0  ldp     d9, d8, [sp], #0x40
  100061ab4  b       _objc_msgSend                            ; [self die]

; ======================================================================
; -[ADEnemy setLifeToZero]
; address 0x100061ab8  size 16  kind objc
; ======================================================================
  100061ab8  adrp    x8, #0x10041f000
  100061abc  ldrsw   x8, [x8, #0xb9c]                         ; ivar offset ADEnemy._life (+0x84)
  100061ac0  str     wzr, [x0, x8]                            ; self->_life = 0
  100061ac4  ret

; ======================================================================
; -[ADEnemy die]
; address 0x100061ac8  size 932  kind objc
; ======================================================================
  100061ac8  stp     x24, x23, [sp, #-0x40]!
  100061acc  stp     x22, x21, [sp, #0x10]
  100061ad0  stp     x20, x19, [sp, #0x20]
  100061ad4  stp     x29, x30, [sp, #0x30]
  100061ad8  add     x29, sp, #0x30
  100061adc  sub     sp, sp, #0x10
  100061ae0  mov     x19, x0
  100061ae4  adrp    x8, #0x100417000
  100061ae8  nop
  100061aec  ldr     x20, [x8, #0x450]
  100061af0  mov     x1, x20
  100061af4  bl      _objc_msgSend                            ; [self name]
  100061af8  mov     x29, x29
  100061afc  bl      _objc_retainAutoreleasedReturnValue
  100061b00  mov     x21, x0
  100061b04  str     x21, [sp]
  100061b08  adrp    x0, #0x1003be000
  100061b0c  add     x0, x0, #0x530                           ; @"[%@] died"
  100061b10  bl      _NSLog                                   ; NSLog(@"[%@] died", [self name])
  100061b14  mov     x0, x21
  100061b18  bl      _objc_release
  100061b1c  adrp    x24, #0x10041e000
  100061b20  ldr     x0, [x24, #0x98]                         ; class ADBrickManager
  100061b24  adrp    x8, #0x100417000
  100061b28  nop
  100061b2c  ldr     x21, [x8, #0xaa8]
  100061b30  mov     x1, x21
  100061b34  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100061b38  mov     x29, x29
  100061b3c  bl      _objc_retainAutoreleasedReturnValue
  100061b40  mov     x22, x0
  100061b44  adrp    x8, #0x100418000
  100061b48  nop
  100061b4c  ldr     x1, [x8, #0xb58]
  100061b50  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  100061b54  mov     x23, x0
  100061b58  mov     x0, x22
  100061b5c  bl      _objc_release
  100061b60  tbnz    w23, #0, loc_100061de0                   ; if (([[ADBrickManager sharedBrickManager] playerIsDead] & 1))
  100061b64  adrp    x8, #0x100419000
  100061b68  nop
  100061b6c  ldr     x1, [x8, #0x3f0]
  100061b70  mov     x0, x19
  100061b74  bl      _objc_msgSend                            ; [self explosion_dictionary]
  100061b78  mov     x29, x29
  100061b7c  bl      _objc_retainAutoreleasedReturnValue
  100061b80  mov     x22, x0
  100061b84  bl      _objc_release
  100061b88  cbz     x22, loc_100061bb4                       ; if ([self explosion_dictionary] == 0)
  100061b8c  adrp    x8, #0x100418000
  100061b90  nop
  100061b94  ldr     x1, [x8, #0xe10]
  100061b98  mov     x0, x19
  100061b9c  bl      _objc_msgSend                            ; [self explode]
  100061ba0  adrp    x8, #0x100416000
  100061ba4  add     x8, x8, #0xc78                           ; &@selector(setState:)
  100061ba8  ldr     x1, [x8]
  100061bac  mov     w2, #5
  100061bb0  b       loc_100061bc4
loc_100061bb4:
  100061bb4  adrp    x8, #0x100416000
  100061bb8  add     x8, x8, #0xc78                           ; &@selector(setState:)
  100061bbc  ldr     x1, [x8]
  100061bc0  mov     w2, #0x3e7
loc_100061bc4:
  100061bc4  mov     x0, x19
  100061bc8  bl      _objc_msgSend                            ; [self setState:one of {5, 999}]
  100061bcc  adrp    x8, #0x100417000
  100061bd0  nop
  100061bd4  ldr     x1, [x8, #0x8d0]
  100061bd8  movi    v0.16b, #0
  100061bdc  mov     x0, x19
  100061be0  bl      _objc_msgSend                            ; [self setSpeed:0]
  100061be4  adrp    x8, #0x100416000
  100061be8  nop
  100061bec  ldr     x1, [x8, #0xff0]
  100061bf0  mov     x0, x19
  100061bf4  bl      _objc_msgSend                            ; [self sound]
  100061bf8  mov     x29, x29
  100061bfc  bl      _objc_retainAutoreleasedReturnValue
  100061c00  mov     x22, x0
  100061c04  adrp    x8, #0x100417000
  100061c08  nop
  100061c0c  ldr     x1, [x8, #0x568]
  100061c10  bl      _objc_msgSend                            ; [[self sound] stop]
  100061c14  mov     x0, x22
  100061c18  bl      _objc_release
  100061c1c  adrp    x8, #0x10041f000
  100061c20  ldrsw   x23, [x8, #0xb6c]                        ; ivar offset ADEnemy.ambiantName (+0x50)
  100061c24  ldr     x8, [x19, x23]                           ; x8 = self->ambiantName
  100061c28  cbz     x8, loc_100061c78                        ; if (self->ambiantName == 0)
  100061c2c  adrp    x8, #0x10041e000
  100061c30  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  100061c34  adrp    x8, #0x100418000
  100061c38  nop
  100061c3c  ldr     x1, [x8, #0xf58]
  100061c40  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  100061c44  mov     x29, x29
  100061c48  bl      _objc_retainAutoreleasedReturnValue
  100061c4c  mov     x22, x0
  100061c50  ldr     x2, [x19, x23]                           ; x2 = self->ambiantName
  100061c54  adrp    x8, #0x100419000
  100061c58  nop
  100061c5c  ldr     x1, [x8, #0x3f8]
  100061c60  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] enemyWithAmbiantNameKilled:self->ambiantName]
  100061c64  mov     x0, x22
  100061c68  bl      _objc_release
  100061c6c  ldr     x0, [x19, x23]                           ; x0 = self->ambiantName
  100061c70  str     xzr, [x19, x23]                          ; self->ambiantName = 0
  100061c74  bl      _objc_release
loc_100061c78:
  100061c78  ldr     x0, [x24, #0x98]                         ; class ADBrickManager
  100061c7c  mov     x1, x21
  100061c80  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100061c84  mov     x29, x29
  100061c88  bl      _objc_retainAutoreleasedReturnValue
  100061c8c  mov     x21, x0
  100061c90  mov     x0, x19
  100061c94  mov     x1, x20
  100061c98  bl      _objc_msgSend                            ; [self name]
  100061c9c  mov     x29, x29
  100061ca0  bl      _objc_retainAutoreleasedReturnValue
  100061ca4  mov     x22, x0
  100061ca8  adrp    x8, #0x100419000
  100061cac  nop
  100061cb0  ldr     x1, [x8, #0x360]
  100061cb4  mov     x0, x21
  100061cb8  mov     x2, x22
  100061cbc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] soundOrEnemyWithNameWasDeactivated:[self name]]
  100061cc0  mov     x0, x22
  100061cc4  bl      _objc_release
  100061cc8  mov     x0, x21
  100061ccc  bl      _objc_release
  100061cd0  mov     x0, x19
  100061cd4  mov     x1, x20
  100061cd8  bl      _objc_msgSend                            ; [self name]
  100061cdc  mov     x29, x29
  100061ce0  bl      _objc_retainAutoreleasedReturnValue
  100061ce4  mov     x20, x0
  100061ce8  adrp    x8, #0x100416000
  100061cec  nop
  100061cf0  ldr     x21, [x8, #0xf58]
  100061cf4  adrp    x2, #0x1003be000
  100061cf8  add     x2, x2, #0x550                           ; @"Diamond"
  100061cfc  mov     x1, x21
  100061d00  bl      _objc_msgSend                            ; [[self name] isEqualToString:@"Diamond"]
  100061d04  tbz     w0, #0, loc_100061dc4                    ; if (!([[self name] isEqualToString:@"Diamond"] & 1))
  100061d08  adrp    x8, #0x10041d000
  100061d0c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100061d10  adrp    x8, #0x100417000
  100061d14  nop
  100061d18  ldr     x1, [x8, #0x228]
  100061d1c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100061d20  mov     x29, x29
  100061d24  bl      _objc_retainAutoreleasedReturnValue
  100061d28  mov     x22, x0
  100061d2c  adrp    x8, #0x100418000
  100061d30  nop
  100061d34  ldr     x1, [x8, #0xf80]
  100061d38  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameMode]
  100061d3c  mov     x29, x29
  100061d40  bl      _objc_retainAutoreleasedReturnValue
  100061d44  mov     x23, x0
  100061d48  adrp    x2, #0x1003bd000
  100061d4c  add     x2, x2, #0x2b0                           ; @"CHALLENGE"
  100061d50  mov     x1, x21
  100061d54  bl      _objc_msgSend                            ; [[[ADInGameStats singleton] gameMode] isEqualToString:@"CHALLENGE"]
  100061d58  mov     x21, x0
  100061d5c  mov     x0, x23
  100061d60  bl      _objc_release
  100061d64  mov     x0, x22
  100061d68  bl      _objc_release
  100061d6c  mov     x0, x20
  100061d70  bl      _objc_release
  100061d74  cbz     w21, loc_100061de0                       ; if ([[[ADInGameStats singleton] gameMode] isEqualToString:@"CHALLENGE"] == 0)
  100061d78  adrp    x8, #0x10041d000
  100061d7c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100061d80  adrp    x8, #0x100416000
  100061d84  nop
  100061d88  ldr     x1, [x8, #0xec0]
  100061d8c  mov     w2, #1
  100061d90  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100061d94  mov     x29, x29
  100061d98  bl      _objc_retainAutoreleasedReturnValue
  100061d9c  mov     x20, x0
  100061da0  adrp    x8, #0x100417000
  100061da4  nop
  100061da8  ldr     x1, [x8, #0xad8]
  100061dac  str     xzr, [sp]
  100061db0  adrp    x2, #0x1003bd000
  100061db4  add     x2, x2, #0xcb0                           ; @"UPDATE_DIAMONDS"
  100061db8  mov     x0, x19
  100061dbc  mov     x3, x20
  100061dc0  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_DIAMONDS" AndData:[NSNumber numberWithInt:1]]
loc_100061dc4:
  100061dc4  mov     x0, x20
  100061dc8  sub     sp, x29, #0x30
  100061dcc  ldp     x29, x30, [sp, #0x30]
  100061dd0  ldp     x20, x19, [sp, #0x20]
  100061dd4  ldp     x22, x21, [sp, #0x10]
  100061dd8  ldp     x24, x23, [sp], #0x40
  100061ddc  b       _objc_release
loc_100061de0:
  100061de0  sub     sp, x29, #0x30
  100061de4  ldp     x29, x30, [sp, #0x30]
  100061de8  ldp     x20, x19, [sp, #0x20]
  100061dec  ldp     x22, x21, [sp, #0x10]
  100061df0  ldp     x24, x23, [sp], #0x40
  100061df4  ret
  100061df8  mov     x19, x0
  100061dfc  b       loc_100061e24
  100061e00  b       loc_100061e2c
  100061e04  mov     x19, x0
  100061e08  b       loc_100061e5c
  100061e0c  b       loc_100061e2c
  100061e10  mov     x19, x0
  100061e14  b       loc_100061e24
  100061e18  mov     x19, x0
  100061e1c  mov     x0, x22
  100061e20  bl      _objc_release
loc_100061e24:
  100061e24  mov     x0, x21
  100061e28  b       loc_100061e60
loc_100061e2c:
  100061e2c  mov     x19, x0
  100061e30  mov     x0, x22
  100061e34  b       loc_100061e60
  100061e38  mov     x19, x0
  100061e3c  b       loc_100061e4c
  100061e40  mov     x19, x0
  100061e44  mov     x0, x23
  100061e48  bl      _objc_release
loc_100061e4c:
  100061e4c  mov     x0, x22
  100061e50  bl      _objc_release
  100061e54  b       loc_100061e5c
  100061e58  mov     x19, x0
loc_100061e5c:
  100061e5c  mov     x0, x20
loc_100061e60:
  100061e60  bl      _objc_release
  100061e64  mov     x0, x19
  100061e68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy explode]
; address 0x100061e6c  size 252  kind objc
; ======================================================================
  100061e6c  stp     d9, d8, [sp, #-0x40]!
  100061e70  stp     x22, x21, [sp, #0x10]
  100061e74  stp     x20, x19, [sp, #0x20]
  100061e78  stp     x29, x30, [sp, #0x30]
  100061e7c  add     x29, sp, #0x30
  100061e80  mov     x21, x0
  100061e84  adrp    x8, #0x10041e000
  100061e88  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100061e8c  adrp    x8, #0x100417000
  100061e90  nop
  100061e94  ldr     x1, [x8, #0xaa8]
  100061e98  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100061e9c  mov     x29, x29
  100061ea0  bl      _objc_retainAutoreleasedReturnValue
  100061ea4  mov     x19, x0
  100061ea8  adrp    x8, #0x100419000
  100061eac  nop
  100061eb0  ldr     x1, [x8, #0x3f0]
  100061eb4  mov     x0, x21
  100061eb8  bl      _objc_msgSend                            ; [self explosion_dictionary]
  100061ebc  mov     x29, x29
  100061ec0  bl      _objc_retainAutoreleasedReturnValue
  100061ec4  mov     x20, x0
  100061ec8  adrp    x8, #0x100417000
  100061ecc  nop
  100061ed0  ldr     x1, [x8, #8]
  100061ed4  mov     x0, x21
  100061ed8  bl      _objc_msgSend                            ; [self position]
  100061edc  mov     v8.16b, v0.16b
  100061ee0  mov     v9.16b, v1.16b
  100061ee4  adrp    x8, #0x100417000
  100061ee8  nop
  100061eec  ldr     x1, [x8, #0x450]
  100061ef0  mov     x0, x21
  100061ef4  bl      _objc_msgSend                            ; [self name]
  100061ef8  mov     x3, x0
  100061efc  adrp    x8, #0x100419000
  100061f00  nop
  100061f04  ldr     x1, [x8, #0x400]
  100061f08  mov     w4, #0
  100061f0c  mov     x0, x19
  100061f10  mov     x2, x20
  100061f14  mov     v0.16b, v8.16b
  100061f18  mov     v1.16b, v9.16b
  100061f1c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] solveExplosionWithDictionary:[self explosion_dictionary] atPosition:{[self position].0, [self position].1} withWeaponName:[self name] ignoreTinnitus:0]
  100061f20  mov     x0, x20
  100061f24  bl      _objc_release
  100061f28  mov     x0, x19
  100061f2c  ldp     x29, x30, [sp, #0x30]
  100061f30  ldp     x20, x19, [sp, #0x20]
  100061f34  ldp     x22, x21, [sp, #0x10]
  100061f38  ldp     d9, d8, [sp], #0x40
  100061f3c  b       _objc_release
  100061f40  b       loc_100061f4c
  100061f44  mov     x21, x0
  100061f48  b       loc_100061f58
loc_100061f4c:
  100061f4c  mov     x21, x0
  100061f50  mov     x0, x20
  100061f54  bl      _objc_release
loc_100061f58:
  100061f58  mov     x0, x19
  100061f5c  bl      _objc_release
  100061f60  mov     x0, x21
  100061f64  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy canBeShotAt]
; address 0x100061f68  size 128  kind objc
; ======================================================================
  100061f68  stp     x20, x19, [sp, #-0x20]!
  100061f6c  stp     x29, x30, [sp, #0x10]
  100061f70  add     x29, sp, #0x10
  100061f74  mov     x19, x0
  100061f78  adrp    x8, #0x100419000
  100061f7c  nop
  100061f80  ldr     x1, [x8, #0x1a8]
  100061f84  bl      _objc_msgSend                            ; [self life]
  100061f88  fcmp    s0, #0.0
  100061f8c  b.ls    loc_100061fc0                            ; if ([self life] <= 0.0)
  100061f90  adrp    x8, #0x100416000
  100061f94  nop
  100061f98  ldr     x20, [x8, #0xc60]
  100061f9c  mov     x0, x19
  100061fa0  mov     x1, x20
  100061fa4  bl      _objc_msgSend                            ; [self state]
  100061fa8  cbz     w0, loc_100061fc0                        ; if ([self state] == 0)
  100061fac  mov     x0, x19
  100061fb0  mov     x1, x20
  100061fb4  bl      _objc_msgSend                            ; [self state]
  100061fb8  cmp     w0, #0x3e7
  100061fbc  b.ne    loc_100061fc8                            ; if ([self state] != 999)
loc_100061fc0:
  100061fc0  mov     w0, #0
  100061fc4  b       loc_100061fdc
loc_100061fc8:
  100061fc8  mov     x0, x19
  100061fcc  mov     x1, x20
  100061fd0  bl      _objc_msgSend                            ; [self state]
  100061fd4  cmn     w0, #1
  100061fd8  cset    w0, ne
loc_100061fdc:
  100061fdc  ldp     x29, x30, [sp, #0x10]
  100061fe0  ldp     x20, x19, [sp], #0x20
  100061fe4  ret

; ======================================================================
; -[ADEnemy blowAway:]
; address 0x100061fe8  size 148  kind objc
; ======================================================================
  100061fe8  stp     d11, d10, [sp, #-0x50]!
  100061fec  stp     d9, d8, [sp, #0x10]
  100061ff0  stp     x22, x21, [sp, #0x20]
  100061ff4  stp     x20, x19, [sp, #0x30]
  100061ff8  stp     x29, x30, [sp, #0x40]
  100061ffc  add     x29, sp, #0x40
  100062000  mov     v8.16b, v0.16b
  100062004  mov     x19, x0
  100062008  adrp    x8, #0x100417000
  10006200c  nop
  100062010  ldr     x20, [x8, #8]
  100062014  mov     x1, x20
  100062018  bl      _objc_msgSend                            ; [self position]
  10006201c  mov     v9.16b, v0.16b
  100062020  adrp    x8, #0x10041f000
  100062024  ldrsw   x21, [x8, #0xb74]                        ; ivar offset ADEnemy.orientation (+0x8)
  100062028  ldr     d10, [x19, x21]                          ; d10 = self->orientation.x
  10006202c  mov     x0, x19
  100062030  mov     x1, x20
  100062034  bl      _objc_msgSend                            ; [self position]
  100062038  add     x8, x21, x19
  10006203c  fcvt    d2, s8
  100062040  fmul    d0, d2, d10
  100062044  fsub    d0, d9, d0
  100062048  ldr     d3, [x8, #8]                             ; d3 = self->orientation.y
  10006204c  fmul    d2, d2, d3
  100062050  adrp    x8, #0x100417000
  100062054  nop
  100062058  fsub    d1, d1, d2
  10006205c  ldr     x1, [x8, #0x20]
  100062060  mov     x0, x19
  100062064  ldp     x29, x30, [sp, #0x40]
  100062068  ldp     x20, x19, [sp, #0x30]
  10006206c  ldp     x22, x21, [sp, #0x20]
  100062070  ldp     d9, d8, [sp, #0x10]
  100062074  ldp     d11, d10, [sp], #0x50
  100062078  b       _objc_msgSend                            ; [self setPosition:{([self position].0 - (arg1 * self->orientation.x)), ([self position].1 - (arg1 * self->orientation.y))}]

; ======================================================================
; -[ADEnemy displayNameForName]
; address 0x10006207c  size 448  kind objc
; ======================================================================
  10006207c  stp     x24, x23, [sp, #-0x40]!
  100062080  stp     x22, x21, [sp, #0x10]
  100062084  stp     x20, x19, [sp, #0x20]
  100062088  stp     x29, x30, [sp, #0x30]
  10006208c  add     x29, sp, #0x30
  100062090  mov     x19, x0
  100062094  adrp    x23, #0x10042d000
  100062098  add     x23, x23, #0x9c0                         ; &g_10042d9c0
  10006209c  add     x0, x23, #8                              ; &g_10042d9c8
  1000620a0  ldarb   w8, [x0]
  1000620a4  and     w8, w8, #1
  1000620a8  tbnz    w8, #0, loc_100062158                    ; if (((w8 & 1) & 1))
  1000620ac  bl      ___cxa_guard_acquire                     ; cxa_guard_acquire(&g_10042d9c8, _cmd)
  1000620b0  cbz     w0, loc_100062158                        ; if (cxa_guard_acquire(&g_10042d9c8, _cmd) == 0)
  1000620b4  adrp    x8, #0x10041d000
  1000620b8  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  1000620bc  adrp    x8, #0x100416000
  1000620c0  nop
  1000620c4  ldr     x1, [x8, #0xac8]
  1000620c8  bl      _objc_msgSend                            ; [NSDictionary alloc]
  1000620cc  mov     x21, x0
  1000620d0  adrp    x8, #0x10041d000
  1000620d4  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000620d8  adrp    x8, #0x100416000
  1000620dc  nop
  1000620e0  ldr     x1, [x8, #0xb58]
  1000620e4  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000620e8  mov     x29, x29
  1000620ec  bl      _objc_retainAutoreleasedReturnValue
  1000620f0  mov     x20, x0
  1000620f4  adrp    x8, #0x100416000
  1000620f8  nop
  1000620fc  ldr     x1, [x8, #0xd60]
  100062100  adrp    x2, #0x1003ba000
  100062104  add     x2, x2, #0x50                            ; @"enemies"
  100062108  adrp    x3, #0x1003b9000
  10006210c  add     x3, x3, #0xa70                           ; @"plist"
  100062110  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]
  100062114  mov     x29, x29
  100062118  bl      _objc_retainAutoreleasedReturnValue
  10006211c  mov     x22, x0
  100062120  adrp    x8, #0x100416000
  100062124  nop
  100062128  ldr     x1, [x8, #0xd68]
  10006212c  mov     x0, x21
  100062130  mov     x2, x22
  100062134  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"enemies" withExtension:@"plist"]]
  100062138  mov     x21, x23
  10006213c  str     x0, [x21], #8
  100062140  mov     x0, x22
  100062144  bl      _objc_release
  100062148  mov     x0, x20
  10006214c  bl      _objc_release
  100062150  mov     x0, x21
  100062154  bl      ___cxa_guard_release                     ; cxa_guard_release(&g_10042d9c0)
loc_100062158:
  100062158  ldr     x20, [x23]                               ; load g_10042d9c0
  10006215c  adrp    x8, #0x100417000
  100062160  nop
  100062164  ldr     x1, [x8, #0x450]
  100062168  mov     x0, x19
  10006216c  bl      _objc_msgSend                            ; [self name]
  100062170  mov     x29, x29
  100062174  bl      _objc_retainAutoreleasedReturnValue
  100062178  mov     x19, x0
  10006217c  adrp    x8, #0x100417000
  100062180  nop
  100062184  ldr     x21, [x8, #0x40]
  100062188  mov     x0, x20
  10006218c  mov     x1, x21
  100062190  mov     x2, x19
  100062194  bl      _objc_msgSend                            ; [g_10042d9c0 objectForKey:[self name]]
  100062198  mov     x29, x29
  10006219c  bl      _objc_retainAutoreleasedReturnValue
  1000621a0  mov     x20, x0
  1000621a4  adrp    x2, #0x1003ba000
  1000621a8  add     x2, x2, #0x2b0                           ; @"displayName"
  1000621ac  mov     x1, x21
  1000621b0  bl      _objc_msgSend                            ; [[g_10042d9c0 objectForKey:[self name]] objectForKey:@"displayName"]
  1000621b4  mov     x29, x29
  1000621b8  bl      _objc_retainAutoreleasedReturnValue
  1000621bc  mov     x21, x0
  1000621c0  mov     x0, x20
  1000621c4  bl      _objc_release
  1000621c8  mov     x0, x19
  1000621cc  bl      _objc_release
  1000621d0  mov     x0, x21
  1000621d4  ldp     x29, x30, [sp, #0x30]
  1000621d8  ldp     x20, x19, [sp, #0x20]
  1000621dc  ldp     x22, x21, [sp, #0x10]
  1000621e0  ldp     x24, x23, [sp], #0x40
  1000621e4  b       _objc_autoreleaseReturnValue
  1000621e8  mov     x21, x0
  1000621ec  b       loc_1000621fc
  1000621f0  mov     x21, x0
  1000621f4  mov     x0, x20
  1000621f8  bl      _objc_release
loc_1000621fc:
  1000621fc  mov     x0, x19
  100062200  bl      _objc_release
  100062204  b       loc_100062234
  100062208  mov     x21, x0
  10006220c  b       loc_10006222c
  100062210  mov     x21, x0
  100062214  b       loc_100062224
  100062218  mov     x21, x0
  10006221c  mov     x0, x22
  100062220  bl      _objc_release
loc_100062224:
  100062224  mov     x0, x20
  100062228  bl      _objc_release
loc_10006222c:
  10006222c  add     x0, x23, #8
  100062230  bl      ___cxa_guard_abort                       ; cxa_guard_abort((x23 + 8))
loc_100062234:
  100062234  mov     x0, x21
  100062238  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy initSounds]
; address 0x10006223c  size 228  kind objc
; ======================================================================
  10006223c  stp     x22, x21, [sp, #-0x30]!
  100062240  stp     x20, x19, [sp, #0x10]
  100062244  stp     x29, x30, [sp, #0x20]
  100062248  add     x29, sp, #0x20
  10006224c  mov     x20, x0
  100062250  adrp    x8, #0x100419000
  100062254  nop
  100062258  ldr     x1, [x8, #0x288]
  10006225c  mov     w2, #1
  100062260  bl      _objc_msgSend                            ; [self setPlaylistActivated:1]
  100062264  adrp    x8, #0x10041d000
  100062268  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10006226c  adrp    x8, #0x100417000
  100062270  nop
  100062274  ldr     x1, [x8, #0x4f0]
  100062278  bl      _objc_msgSend                            ; [S3DEngine engine]
  10006227c  mov     x29, x29
  100062280  bl      _objc_retainAutoreleasedReturnValue
  100062284  mov     x19, x0
  100062288  adrp    x8, #0x100419000
  10006228c  nop
  100062290  ldr     x1, [x8, #0x218]
  100062294  mov     x0, x20
  100062298  bl      _objc_msgSend                            ; [self soundsPrefix]
  10006229c  mov     x29, x29
  1000622a0  bl      _objc_retainAutoreleasedReturnValue
  1000622a4  mov     x21, x0
  1000622a8  adrp    x8, #0x100417000
  1000622ac  nop
  1000622b0  ldr     x1, [x8, #0x4f8]
  1000622b4  mov     x0, x19
  1000622b8  mov     x2, x21
  1000622bc  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[self soundsPrefix]]
  1000622c0  mov     x29, x29
  1000622c4  bl      _objc_retainAutoreleasedReturnValue
  1000622c8  adrp    x8, #0x10041f000
  1000622cc  ldrsw   x9, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  1000622d0  ldr     x8, [x20, x9]                            ; x8 = self->playlist
  1000622d4  str     x0, [x20, x9]                            ; self->playlist = [[S3DEngine engine] playListWithName:[self soundsPrefix]]
  1000622d8  mov     x0, x8
  1000622dc  bl      _objc_release
  1000622e0  mov     x0, x21
  1000622e4  bl      _objc_release
  1000622e8  mov     x0, x19
  1000622ec  ldp     x29, x30, [sp, #0x20]
  1000622f0  ldp     x20, x19, [sp, #0x10]
  1000622f4  ldp     x22, x21, [sp], #0x30
  1000622f8  b       _objc_release
  1000622fc  mov     x20, x0
  100062300  b       loc_100062310
  100062304  mov     x20, x0
  100062308  mov     x0, x21
  10006230c  bl      _objc_release
loc_100062310:
  100062310  mov     x0, x19
  100062314  bl      _objc_release
  100062318  mov     x0, x20
  10006231c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy deactivate]
; address 0x100062320  size 60  kind objc
; ======================================================================
  100062320  stp     x20, x19, [sp, #-0x20]!
  100062324  stp     x29, x30, [sp, #0x10]
  100062328  add     x29, sp, #0x10
  10006232c  mov     x19, x0
  100062330  adrp    x8, #0x100416000
  100062334  nop
  100062338  ldr     x1, [x8, #0xc78]
  10006233c  mov     w2, #-1
  100062340  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  100062344  adrp    x8, #0x10041f000
  100062348  ldrsw   x8, [x8, #0xb9c]                         ; ivar offset ADEnemy._life (+0x84)
  10006234c  str     wzr, [x19, x8]                           ; self->_life = 0
  100062350  ldp     x29, x30, [sp, #0x10]
  100062354  ldp     x20, x19, [sp], #0x20
  100062358  ret

; ======================================================================
; -[ADEnemy activatePlaylist]
; address 0x10006235c  size 148  kind objc
; ======================================================================
  10006235c  stp     x20, x19, [sp, #-0x20]!
  100062360  stp     x29, x30, [sp, #0x10]
  100062364  add     x29, sp, #0x10
  100062368  sub     sp, sp, #0x30
  10006236c  adrp    x8, #0x10041f000
  100062370  ldrsw   x8, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  100062374  ldr     x19, [x0, x8]                            ; x19 = self->playlist
  100062378  adrp    x8, #0x1003b0000
  10006237c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100062380  str     x8, [sp, #8]
  100062384  mov     w8, #-0x3e000000
  100062388  stp     w8, wzr, [sp, #0x10]
  10006238c  adr     x8, #0x1000623f0                         ; &-[ADEnemy activatePlaylist]_block_invoke
  100062390  nop
  100062394  str     x8, [sp, #0x18]
  100062398  adrp    x8, #0x1003b1000
  10006239c  add     x8, x8, #0xc10                           ; &d_1003b1c10
  1000623a0  str     x8, [sp, #0x20]
  1000623a4  bl      _objc_retain
  1000623a8  str     x0, [sp, #0x28]
  1000623ac  adrp    x8, #0x100419000
  1000623b0  nop
  1000623b4  ldr     x1, [x8, #0x408]
  1000623b8  add     x2, sp, #8
  1000623bc  mov     x0, x19
  1000623c0  bl      _objc_msgSend                            ; [self->playlist activate:^{-[ADEnemy activatePlaylist]_block_invoke captures +0x20=self}]
  1000623c4  ldr     x0, [sp, #0x28]
  1000623c8  bl      _objc_release
  1000623cc  sub     sp, x29, #0x10
  1000623d0  ldp     x29, x30, [sp, #0x10]
  1000623d4  ldp     x20, x19, [sp], #0x20
  1000623d8  ret
  1000623dc  mov     x19, x0
  1000623e0  ldr     x0, [sp, #0x28]
  1000623e4  bl      _objc_release
  1000623e8  mov     x0, x19
  1000623ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy activatePlaylist]_block_invoke
; address 0x1000623f0  size 4  kind block
; ======================================================================
  1000623f0  ret

; ======================================================================
; sub_1000623f4
; address 0x1000623f4  size 8  kind sub
; ======================================================================
  1000623f4  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000623f8  b       _objc_retain

; ======================================================================
; sub_1000623fc
; address 0x1000623fc  size 8  kind sub
; ======================================================================
  1000623fc  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100062400  b       _objc_release

; ======================================================================
; -[ADEnemy deactivatePlaylist]
; address 0x100062404  size 28  kind objc
; ======================================================================
  100062404  adrp    x8, #0x10041f000
  100062408  ldrsw   x8, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  10006240c  ldr     x0, [x0, x8]                             ; x0 = self->playlist
  100062410  adrp    x8, #0x100417000
  100062414  nop
  100062418  ldr     x1, [x8, #0x618]
  10006241c  b       _objc_msgSend                            ; [self->playlist deactivate]

; ======================================================================
; -[ADEnemy playAnySoundContaining:looping:spatialized:]
; address 0x100062420  size 2080  kind objc
; ======================================================================
  100062420  stp     d9, d8, [sp, #-0x70]!
  100062424  stp     x28, x27, [sp, #0x10]
  100062428  stp     x26, x25, [sp, #0x20]
  10006242c  stp     x24, x23, [sp, #0x30]
  100062430  stp     x22, x21, [sp, #0x40]
  100062434  stp     x20, x19, [sp, #0x50]
  100062438  stp     x29, x30, [sp, #0x60]
  10006243c  add     x29, sp, #0x60
  100062440  sub     sp, sp, #0xb0
  100062444  mov     x25, x4
  100062448  mov     x23, x3
  10006244c  mov     x21, x0
  100062450  mov     x0, x2
  100062454  bl      _objc_retain
  100062458  mov     x20, x0
  10006245c  adrp    x8, #0x100416000
  100062460  nop
  100062464  ldr     x22, [x8, #0xff0]
  100062468  mov     x0, x21
  10006246c  mov     x1, x22
  100062470  bl      _objc_msgSend                            ; [self sound]
  100062474  mov     x29, x29
  100062478  bl      _objc_retainAutoreleasedReturnValue
  10006247c  mov     x19, x0
  100062480  adrp    x8, #0x100417000
  100062484  nop
  100062488  ldr     x1, [x8, #0x568]
  10006248c  bl      _objc_msgSend                            ; [[self sound] stop]
  100062490  mov     x0, x19
  100062494  bl      _objc_release
  100062498  adrp    x8, #0x100419000
  10006249c  nop
  1000624a0  ldr     x1, [x8, #0x318]
  1000624a4  mov     x0, x21
  1000624a8  bl      _objc_msgSend                            ; [self destroyed]
  1000624ac  tbz     w0, #0, loc_1000624bc                    ; if (!([self destroyed] & 1))
  1000624b0  movi    v0.16b, #0
  1000624b4  str     q0, [sp, #0x40]
  1000624b8  b       loc_100062b10
loc_1000624bc:
  1000624bc  adrp    x8, #0x100417000
  1000624c0  nop
  1000624c4  ldr     x1, [x8, #0x450]
  1000624c8  str     x1, [sp, #0x28]
  1000624cc  mov     x0, x21
  1000624d0  bl      _objc_msgSend                            ; [self name]
  1000624d4  mov     x29, x29
  1000624d8  bl      _objc_retainAutoreleasedReturnValue
  1000624dc  mov     x19, x0
  1000624e0  stp     x19, x20, [sp]
  1000624e4  adrp    x0, #0x1003be000
  1000624e8  add     x0, x0, #0x570                           ; @"[%@] Play any sound containing : %@"
  1000624ec  bl      _NSLog                                   ; NSLog(@"[%@] Play any sound containing : %@", [self name], arg1)
  1000624f0  mov     w24, #-0x3e000000
  1000624f4  mov     x0, x19
  1000624f8  bl      _objc_release
  1000624fc  adrp    x8, #0x10041f000
  100062500  ldrsw   x26, [x8, #0xb70]                        ; ivar offset ADEnemy.playlist (+0x38)
  100062504  ldr     x19, [x21, x26]                          ; x19 = self->playlist
  100062508  adrp    x8, #0x1003b0000
  10006250c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100062510  str     x8, [sp, #0x88]
  100062514  stp     w24, wzr, [sp, #0x90]
  100062518  adr     x8, #0x100062c40                         ; &-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke
  10006251c  nop
  100062520  str     x8, [sp, #0x98]
  100062524  adrp    x8, #0x1003b1000
  100062528  add     x8, x8, #0xc40                           ; &d_1003b1c40
  10006252c  str     x8, [sp, #0xa0]
  100062530  mov     x0, x20
  100062534  bl      _objc_retain
  100062538  str     x0, [sp, #0x40]
  10006253c  str     x0, [sp, #0xa8]
  100062540  adrp    x8, #0x100419000
  100062544  nop
  100062548  ldr     x1, [x8, #0x410]
  10006254c  add     x2, sp, #0x88
  100062550  mov     x0, x19
  100062554  bl      _objc_msgSend                            ; [self->playlist soundsMatchingPredicate:^{-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke captures +0x20=arg1}]
  100062558  mov     x29, x29
  10006255c  bl      _objc_retainAutoreleasedReturnValue
  100062560  mov     x19, x0
  100062564  adrp    x8, #0x100416000
  100062568  nop
  10006256c  ldr     x1, [x8, #0xe30]
  100062570  bl      _objc_msgSend                            ; [[self->playlist soundsMatchingPredicate:^{-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke captures +0x20=arg1}] count]
  100062574  mov     x24, x0
  100062578  mov     x0, x19
  10006257c  bl      _objc_release
  100062580  ldr     x8, [sp, #0x40]
  100062584  stp     x24, x8, [sp]
  100062588  adrp    x0, #0x1003be000
  10006258c  add     x0, x0, #0x590                           ; @"%i sounds contains %@"
  100062590  bl      _NSLog                                   ; NSLog(@"%i sounds contains %@", [[self->playlist soundsMatchingPredicate:^{-[ADEnemy playAnySoundContaining:loop…, arg1)
  100062594  mov     x0, x21
  100062598  mov     x1, x22
  10006259c  bl      _objc_msgSend                            ; [self sound]
  1000625a0  str     w25, [sp, #0x34]
  1000625a4  mov     x29, x29
  1000625a8  bl      _objc_retainAutoreleasedReturnValue
  1000625ac  mov     x19, x0
  1000625b0  adrp    x8, #0x100419000
  1000625b4  nop
  1000625b8  ldr     x27, [x8, #0x3e8]
  1000625bc  mov     x1, x27
  1000625c0  bl      _objc_msgSend                            ; [[self sound] key]
  1000625c4  mov     x29, x29
  1000625c8  bl      _objc_retainAutoreleasedReturnValue
  1000625cc  str     x0, [sp, #0x38]
  1000625d0  mov     x0, x19
  1000625d4  bl      _objc_release
  1000625d8  ldr     x0, [x21, x26]                           ; x0 = self->playlist
  1000625dc  adrp    x8, #0x100416000
  1000625e0  add     x8, x8, #0xca0                           ; &@selector(anySoundContaining:)
  1000625e4  ldr     x28, [x8]
  1000625e8  cmp     w24, #1
  1000625ec  mov     x24, x23
  1000625f0  b.eq    loc_100062700                            ; if ([[self->playlist soundsMatchingPredicate:^{-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke captures … == 1)
  1000625f4  eor     w8, w24, #1
  1000625f8  cbnz    w8, loc_100062700                        ; if ((arg2 ^ 1) != 0)
  1000625fc  mov     x1, x28
  100062600  ldr     x2, [sp, #0x40]
  100062604  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:arg1]
  100062608  mov     x29, x29
  10006260c  bl      _objc_retainAutoreleasedReturnValue
  100062610  mov     x19, x0
  100062614  adrp    x8, #0x100419000
  100062618  nop
  10006261c  ldr     x25, [x8, #0x418]
  100062620  mov     x0, x21
  100062624  mov     x1, x25
  100062628  mov     x2, x19
  10006262c  bl      _objc_msgSend                            ; [self setSound:[self->playlist anySoundContaining:arg1]]
  100062630  mov     x0, x19
  100062634  bl      _objc_release
  100062638  mov     x0, x21
  10006263c  mov     x1, x22
  100062640  bl      _objc_msgSend                            ; [self sound]
  100062644  mov     x29, x29
  100062648  bl      _objc_retainAutoreleasedReturnValue
  10006264c  mov     x19, x0
  100062650  bl      _objc_release
  100062654  cbz     x19, loc_10006273c                       ; if ([self sound] == 0)
  100062658  str     x20, [sp, #0x20]
  10006265c  str     w24, [sp, #0x1c]
  100062660  cbz     w24, loc_1000627c0                       ; if (arg2 == 0)
  100062664  adrp    x8, #0x100416000
  100062668  add     x8, x8, #0xf58                           ; &@selector(isEqualToString:)
  10006266c  ldr     x24, [x8]
  100062670  b       loc_10006267c
loc_100062674:
  100062674  mov     x0, x19
  100062678  bl      _objc_release
loc_10006267c:
  10006267c  mov     x0, x21
  100062680  mov     x1, x22
  100062684  bl      _objc_msgSend                            ; [self sound]
  100062688  mov     x29, x29
  10006268c  bl      _objc_retainAutoreleasedReturnValue
  100062690  mov     x19, x0
  100062694  mov     x1, x27
  100062698  bl      _objc_msgSend                            ; [[self sound] key]
  10006269c  mov     x29, x29
  1000626a0  bl      _objc_retainAutoreleasedReturnValue
  1000626a4  mov     x23, x0
  1000626a8  mov     x1, x24
  1000626ac  ldr     x2, [sp, #0x38]
  1000626b0  bl      _objc_msgSend                            ; [[[self sound] key] isEqualToString:[[self sound] key]]
  1000626b4  mov     x20, x0
  1000626b8  mov     x0, x23
  1000626bc  bl      _objc_release
  1000626c0  mov     x0, x19
  1000626c4  bl      _objc_release
  1000626c8  cbz     w20, loc_1000627c0                       ; if ([[[self sound] key] isEqualToString:[[self sound] key]] == 0)
  1000626cc  ldr     x0, [x21, x26]                           ; x0 = self->playlist
  1000626d0  mov     x1, x28
  1000626d4  ldr     x2, [sp, #0x40]
  1000626d8  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:arg1]
  1000626dc  mov     x29, x29
  1000626e0  bl      _objc_retainAutoreleasedReturnValue
  1000626e4  mov     x19, x0
  1000626e8  mov     x0, x21
  1000626ec  mov     x1, x25
  1000626f0  mov     x2, x19
  1000626f4  bl      _objc_msgSend                            ; [self setSound:[self->playlist anySoundContaining:arg1]]
  1000626f8  b       loc_100062674
  1000626fc  b       loc_100062bd8
loc_100062700:
  100062700  mov     x1, x28
  100062704  ldr     x2, [sp, #0x40]
  100062708  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:arg1]
  10006270c  mov     x29, x29
  100062710  bl      _objc_retainAutoreleasedReturnValue
  100062714  mov     x19, x0
  100062718  adrp    x8, #0x100419000
  10006271c  nop
  100062720  ldr     x1, [x8, #0x418]
  100062724  mov     x0, x21
  100062728  mov     x2, x19
  10006272c  bl      _objc_msgSend                            ; [self setSound:[self->playlist anySoundContaining:arg1]]
  100062730  mov     x0, x19
  100062734  bl      _objc_release
  100062738  b       loc_1000628a8
loc_10006273c:
  10006273c  mov     x0, x21
  100062740  mov     x1, x22
  100062744  bl      _objc_msgSend                            ; [self sound]
  100062748  str     w24, [sp, #0x1c]
  10006274c  str     x20, [sp, #0x20]
  100062750  mov     x29, x29
  100062754  bl      _objc_retainAutoreleasedReturnValue
  100062758  mov     x19, x0
  10006275c  bl      _objc_release
  100062760  cbnz    x19, loc_1000627c0                       ; if ([self sound] != 0)
  100062764  adrp    x8, #0x100416000
  100062768  nop
  10006276c  ldr     x1, [x8, #0xc98]
  100062770  mov     x0, x21
  100062774  ldr     x20, [sp, #0x20]
  100062778  bl      _objc_msgSend                            ; [self playlist]
  10006277c  mov     x29, x29
  100062780  bl      _objc_retainAutoreleasedReturnValue
  100062784  mov     x24, x0
  100062788  ldr     x1, [sp, #0x28]
  10006278c  bl      _objc_msgSend                            ; [[self playlist] name]
  100062790  mov     x29, x29
  100062794  bl      _objc_retainAutoreleasedReturnValue
  100062798  mov     x19, x0
  10006279c  ldr     x8, [sp, #0x40]
  1000627a0  stp     x19, x8, [sp]
  1000627a4  adrp    x0, #0x1003be000
  1000627a8  add     x0, x0, #0x5b0                           ; @"NO SOUND in %@ CONTAINS %@"
  1000627ac  bl      _NSLog                                   ; NSLog(@"NO SOUND in %@ CONTAINS %@", [[self playlist] name], arg1)
  1000627b0  mov     x0, x19
  1000627b4  bl      _objc_release
  1000627b8  mov     x0, x24
  1000627bc  bl      _objc_release
loc_1000627c0:
  1000627c0  mov     x0, x21
  1000627c4  mov     x1, x22
  1000627c8  ldr     x20, [sp, #0x20]
  1000627cc  bl      _objc_msgSend                            ; [self sound]
  1000627d0  ldr     w24, [sp, #0x1c]
  1000627d4  mov     x29, x29
  1000627d8  bl      _objc_retainAutoreleasedReturnValue
  1000627dc  mov     x19, x0
  1000627e0  mov     x1, x27
  1000627e4  bl      _objc_msgSend                            ; [[self sound] key]
  1000627e8  mov     x29, x29
  1000627ec  bl      _objc_retainAutoreleasedReturnValue
  1000627f0  mov     x23, x0
  1000627f4  str     x23, [sp, #8]
  1000627f8  ldr     x8, [sp, #0x38]
  1000627fc  str     x8, [sp]
  100062800  adrp    x0, #0x1003be000
  100062804  add     x0, x0, #0x5d0                           ; @"Loop from %@ to %@"
  100062808  bl      _NSLog                                   ; NSLog(@"Loop from %@ to %@", [[self sound] key], [[self sound] key])
  10006280c  mov     x0, x23
  100062810  bl      _objc_release
  100062814  mov     x0, x19
  100062818  bl      _objc_release
  10006281c  cbz     w24, loc_1000628a4                       ; if (arg2 == 0)
  100062820  mov     x0, x21
  100062824  mov     x1, x22
  100062828  bl      _objc_msgSend                            ; [self sound]
  10006282c  ldr     w23, [sp, #0x34]
  100062830  mov     x29, x29
  100062834  bl      _objc_retainAutoreleasedReturnValue
  100062838  mov     x19, x0
  10006283c  adrp    x8, #0x1003b0000
  100062840  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100062844  str     x8, [sp, #0x50]
  100062848  mov     w8, #-0x3e000000
  10006284c  stp     w8, wzr, [sp, #0x58]
  100062850  adr     x8, #0x100062c88                         ; &-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2
  100062854  nop
  100062858  str     x8, [sp, #0x60]
  10006285c  adrp    x8, #0x1003b1000
  100062860  add     x8, x8, #0xca0                           ; &d_1003b1ca0
  100062864  str     x8, [sp, #0x68]
  100062868  str     x21, [sp, #0x78]
  10006286c  ldr     x0, [sp, #0x40]
  100062870  bl      _objc_retain
  100062874  str     x0, [sp, #0x70]
  100062878  strb    w23, [sp, #0x80]
  10006287c  adrp    x8, #0x100417000
  100062880  nop
  100062884  ldr     x1, [x8, #0x9c8]
  100062888  add     x2, sp, #0x50
  10006288c  mov     x0, x19
  100062890  bl      _objc_msgSend                            ; [[self sound] add3DSoundEndCallback:^{-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2 captures +0x20=arg1, +0x28=self, +0x30=arg3, +0x38=__NSConcreteStackBlock, +0x40=0xc2000000, +0x48=&-[ADEnemy playAnySoundContaining:loopin…, +0x50=&d_1003b1c40, +0x58=arg1}]
  100062894  mov     x0, x19
  100062898  bl      _objc_release
  10006289c  ldr     x0, [sp, #0x70]
  1000628a0  bl      _objc_release
loc_1000628a4:
  1000628a4  mov     w24, #0
loc_1000628a8:
  1000628a8  mov     x0, x21
  1000628ac  mov     x1, x22
  1000628b0  bl      _objc_msgSend                            ; [self sound]
  1000628b4  mov     x29, x29
  1000628b8  bl      _objc_retainAutoreleasedReturnValue
  1000628bc  mov     x19, x0
  1000628c0  bl      _objc_release
  1000628c4  cbnz    x19, loc_100062920                       ; if ([self sound] != 0)
  1000628c8  adrp    x8, #0x100416000
  1000628cc  nop
  1000628d0  ldr     x1, [x8, #0xc98]
  1000628d4  mov     x0, x21
  1000628d8  bl      _objc_msgSend                            ; [self playlist]
  1000628dc  mov     x29, x29
  1000628e0  bl      _objc_retainAutoreleasedReturnValue
  1000628e4  mov     x19, x0
  1000628e8  ldr     x1, [sp, #0x28]
  1000628ec  bl      _objc_msgSend                            ; [[self playlist] name]
  1000628f0  mov     x29, x29
  1000628f4  bl      _objc_retainAutoreleasedReturnValue
  1000628f8  mov     x23, x0
  1000628fc  ldr     x8, [sp, #0x40]
  100062900  stp     x23, x8, [sp]
  100062904  adrp    x0, #0x1003be000
  100062908  add     x0, x0, #0x5b0                           ; @"NO SOUND in %@ CONTAINS %@"
  10006290c  bl      _NSLog                                   ; NSLog(@"NO SOUND in %@ CONTAINS %@", [[self playlist] name], arg1)
  100062910  mov     x0, x23
  100062914  bl      _objc_release
  100062918  mov     x0, x19
  10006291c  bl      _objc_release
loc_100062920:
  100062920  ldr     w8, [sp, #0x34]
  100062924  cbz     w8, loc_100062a30                        ; if (arg3 == 0)
  100062928  mov     x0, x21
  10006292c  mov     x1, x22
  100062930  bl      _objc_msgSend                            ; [self sound]
  100062934  mov     x29, x29
  100062938  bl      _objc_retainAutoreleasedReturnValue
  10006293c  mov     x19, x0
  100062940  adrp    x8, #0x100416000
  100062944  nop
  100062948  ldr     x1, [x8, #0xca8]
  10006294c  mov     w2, #1
  100062950  bl      _objc_msgSend                            ; [[self sound] setSpatialized:1]
  100062954  mov     x0, x19
  100062958  bl      _objc_release
  10006295c  mov     x0, x21
  100062960  mov     x1, x22
  100062964  bl      _objc_msgSend                            ; [self sound]
  100062968  mov     x29, x29
  10006296c  bl      _objc_retainAutoreleasedReturnValue
  100062970  mov     x19, x0
  100062974  adrp    x8, #0x100417000
  100062978  nop
  10006297c  ldr     x23, [x8, #8]
  100062980  mov     x0, x21
  100062984  mov     x1, x23
  100062988  bl      _objc_msgSend                            ; [self position]
  10006298c  mov     v8.16b, v0.16b
  100062990  mov     x0, x21
  100062994  mov     x1, x23
  100062998  bl      _objc_msgSend                            ; [self position]
  10006299c  fcvt    s0, d8
  1000629a0  fcvt    s1, d1
  1000629a4  adrp    x8, #0x100417000
  1000629a8  nop
  1000629ac  ldr     x1, [x8, #0x38]
  1000629b0  movi    v2.16b, #0
  1000629b4  mov     x0, x19
  1000629b8  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  1000629bc  mov     x0, x19
  1000629c0  bl      _objc_release
  1000629c4  mov     x0, x21
  1000629c8  mov     x1, x22
  1000629cc  bl      _objc_msgSend                            ; [self sound]
  1000629d0  mov     x29, x29
  1000629d4  bl      _objc_retainAutoreleasedReturnValue
  1000629d8  mov     x19, x0
  1000629dc  adrp    x8, #0x100416000
  1000629e0  nop
  1000629e4  ldr     x1, [x8, #0xcb0]
  1000629e8  fmov    s0, #3.50000000
  1000629ec  bl      _objc_msgSend                            ; [[self sound] setGain:3.5]
  1000629f0  mov     x0, x19
  1000629f4  bl      _objc_release
  1000629f8  mov     x0, x21
  1000629fc  mov     x1, x22
  100062a00  bl      _objc_msgSend                            ; [self sound]
  100062a04  mov     x29, x29
  100062a08  bl      _objc_retainAutoreleasedReturnValue
  100062a0c  mov     x19, x0
  100062a10  adrp    x8, #0x100419000
  100062a14  nop
  100062a18  ldr     x1, [x8, #0x420]
  100062a1c  mov     x0, x21
  100062a20  mov     x2, x19
  100062a24  bl      _objc_msgSend                            ; [self setReverbAndWetBalanceOnSound:[self sound]]
  100062a28  b       loc_100062a90
  100062a2c  b       loc_100062bd4
loc_100062a30:
  100062a30  mov     x0, x21
  100062a34  mov     x1, x22
  100062a38  bl      _objc_msgSend                            ; [self sound]
  100062a3c  mov     x29, x29
  100062a40  bl      _objc_retainAutoreleasedReturnValue
  100062a44  mov     x19, x0
  100062a48  adrp    x8, #0x100416000
  100062a4c  nop
  100062a50  ldr     x1, [x8, #0xca8]
  100062a54  mov     w2, #0
  100062a58  bl      _objc_msgSend                            ; [[self sound] setSpatialized:0]
  100062a5c  mov     x0, x19
  100062a60  bl      _objc_release
  100062a64  mov     x0, x21
  100062a68  mov     x1, x22
  100062a6c  bl      _objc_msgSend                            ; [self sound]
  100062a70  mov     x29, x29
  100062a74  bl      _objc_retainAutoreleasedReturnValue
  100062a78  mov     x19, x0
  100062a7c  adrp    x8, #0x100416000
  100062a80  nop
  100062a84  ldr     x1, [x8, #0xcb0]
  100062a88  fmov    s0, #0.50000000
  100062a8c  bl      _objc_msgSend                            ; [[self sound] setGain:0.5]
loc_100062a90:
  100062a90  mov     x0, x19
  100062a94  bl      _objc_release
  100062a98  mov     x0, x21
  100062a9c  mov     x1, x22
  100062aa0  bl      _objc_msgSend                            ; [self sound]
  100062aa4  mov     x29, x29
  100062aa8  bl      _objc_retainAutoreleasedReturnValue
  100062aac  mov     x19, x0
  100062ab0  adrp    x8, #0x100416000
  100062ab4  nop
  100062ab8  ldr     x1, [x8, #0xcb8]
  100062abc  mov     x2, x24
  100062ac0  bl      _objc_msgSend                            ; [[self sound] play:x2]
  100062ac4  mov     x0, x19
  100062ac8  bl      _objc_release
  100062acc  mov     x0, x21
  100062ad0  mov     x1, x22
  100062ad4  bl      _objc_msgSend                            ; [self sound]
  100062ad8  mov     x29, x29
  100062adc  bl      _objc_retainAutoreleasedReturnValue
  100062ae0  mov     x19, x0
  100062ae4  adrp    x8, #0x100416000
  100062ae8  nop
  100062aec  ldr     x1, [x8, #0xff8]
  100062af0  bl      _objc_msgSend                            ; [[self sound] duration]
  100062af4  str     q0, [sp, #0x40]
  100062af8  mov     x0, x19
  100062afc  bl      _objc_release
  100062b00  ldr     x0, [sp, #0x38]
  100062b04  bl      _objc_release
  100062b08  ldr     x0, [sp, #0xa8]
  100062b0c  bl      _objc_release
loc_100062b10:
  100062b10  mov     x0, x20
  100062b14  bl      _objc_release
  100062b18  ldr     q0, [sp, #0x40]
  100062b1c  sub     sp, x29, #0x60
  100062b20  ldp     x29, x30, [sp, #0x60]
  100062b24  ldp     x20, x19, [sp, #0x50]
  100062b28  ldp     x22, x21, [sp, #0x40]
  100062b2c  ldp     x24, x23, [sp, #0x30]
  100062b30  ldp     x26, x25, [sp, #0x20]
  100062b34  ldp     x28, x27, [sp, #0x10]
  100062b38  ldp     d9, d8, [sp], #0x70
  100062b3c  ret
  100062b40  b       loc_100062b48
  100062b44  str     x20, [sp, #0x20]
loc_100062b48:
  100062b48  mov     x21, x0
  100062b4c  b       loc_100062be4
  100062b50  str     x20, [sp, #0x20]
  100062b54  mov     x21, x0
  100062b58  b       loc_100062bf4
  100062b5c  b       loc_100062bd8
loc_100062b60:
  100062b60  mov     x21, x0
  100062b64  mov     x0, x23
  100062b68  bl      _objc_release
  100062b6c  b       loc_100062bdc
  100062b70  str     x20, [sp, #0x20]
  100062b74  mov     x21, x0
  100062b78  b       loc_100062bec
  100062b7c  b       loc_100062b84
  100062b80  b       loc_100062bd4
loc_100062b84:
  100062b84  str     x20, [sp, #0x20]
  100062b88  mov     x21, x0
  100062b8c  mov     x0, x19
  100062b90  bl      _objc_release
  100062b94  b       loc_100062bf4
  100062b98  b       loc_100062b9c
loc_100062b9c:
  100062b9c  str     x20, [sp, #0x20]
  100062ba0  mov     x21, x0
  100062ba4  mov     x0, x19
  100062ba8  b       loc_100062be8
  100062bac  b       loc_100062bd4
  100062bb0  b       loc_100062bd4
  100062bb4  b       loc_100062bd4
  100062bb8  b       loc_100062bd4
  100062bbc  b       loc_100062bd8
  100062bc0  b       loc_100062b60
  100062bc4  b       loc_100062bd4
  100062bc8  b       loc_100062bd4
  100062bcc  b       loc_100062bd4
  100062bd0  b       loc_100062bd4
loc_100062bd4:
  100062bd4  str     x20, [sp, #0x20]
loc_100062bd8:
  100062bd8  mov     x21, x0
loc_100062bdc:
  100062bdc  mov     x0, x19
loc_100062be0:
  100062be0  bl      _objc_release
loc_100062be4:
  100062be4  ldr     x0, [sp, #0x38]
loc_100062be8:
  100062be8  bl      _objc_release
loc_100062bec:
  100062bec  ldr     x0, [sp, #0xa8]
  100062bf0  bl      _objc_release
loc_100062bf4:
  100062bf4  ldr     x0, [sp, #0x20]
  100062bf8  bl      _objc_release
  100062bfc  mov     x0, x21
  100062c00  bl      __Unwind_Resume                          ; Unwind_Resume()
  100062c04  str     x20, [sp, #0x20]
  100062c08  b       loc_100062b60
  100062c0c  b       loc_100062b48
  100062c10  mov     x21, x0
  100062c14  mov     x0, x19
  100062c18  bl      _objc_release
  100062c1c  ldr     x0, [sp, #0x70]
  100062c20  b       loc_100062be0
  100062c24  mov     x21, x0
  100062c28  b       loc_100062c38
  100062c2c  mov     x21, x0
  100062c30  mov     x0, x19
  100062c34  bl      _objc_release
loc_100062c38:
  100062c38  mov     x0, x24
  100062c3c  b       loc_100062be0

; ======================================================================
; -[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke
; address 0x100062c40  size 56  kind block
; ======================================================================
  100062c40  stp     x29, x30, [sp, #-0x10]!
  100062c44  mov     x29, sp
  100062c48  ldr     x2, [x0, #0x20]                          ; x2 = captured arg1
  100062c4c  adrp    x8, #0x100417000
  100062c50  nop
  100062c54  ldr     x8, [x8, #0x58]
  100062c58  mov     x0, x1
  100062c5c  mov     x1, x8
  100062c60  bl      _objc_msgSend                            ; [blockarg1 rangeOfString:arg1]
  100062c64  mov     x8, #0x7fffffffffffffff
  100062c68  cmp     x0, x8
  100062c6c  cset    w0, ne
  100062c70  ldp     x29, x30, [sp], #0x10
  100062c74  ret

; ======================================================================
; sub_100062c78
; address 0x100062c78  size 8  kind sub
; ======================================================================
  100062c78  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100062c7c  b       _objc_retain

; ======================================================================
; sub_100062c80
; address 0x100062c80  size 8  kind sub
; ======================================================================
  100062c80  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100062c84  b       _objc_release

; ======================================================================
; -[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2
; address 0x100062c88  size 200  kind block
; ======================================================================
  100062c88  stp     x20, x19, [sp, #-0x20]!
  100062c8c  stp     x29, x30, [sp, #0x10]
  100062c90  add     x29, sp, #0x10
  100062c94  sub     sp, sp, #0x40
  100062c98  mov     x20, x0
  100062c9c  mov     x0, x1
  100062ca0  bl      _objc_retain
  100062ca4  mov     x19, x0
  100062ca8  ldr     x0, [x20, #0x28]                         ; x0 = captured self
  100062cac  cbz     x0, loc_100062d24                        ; if (self == 0)
  100062cb0  adrp    x8, #0x100419000
  100062cb4  nop
  100062cb8  ldr     x1, [x8, #0x318]
  100062cbc  bl      _objc_msgSend                            ; [self destroyed]
  100062cc0  tbnz    w0, #0, loc_100062d24                    ; if (([self destroyed] & 1))
  100062cc4  adrp    x8, #0x1003b0000
  100062cc8  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100062ccc  str     x8, [sp, #8]
  100062cd0  mov     w8, #-0x3e000000
  100062cd4  stp     w8, wzr, [sp, #0x10]
  100062cd8  adr     x8, #0x100062d50                         ; &-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2_block_invoke
  100062cdc  nop
  100062ce0  str     x8, [sp, #0x18]
  100062ce4  adrp    x8, #0x1003b1000
  100062ce8  add     x8, x8, #0xc70                           ; &d_1003b1c70
  100062cec  str     x8, [sp, #0x20]
  100062cf0  ldr     x8, [x20, #0x28]                         ; x8 = captured self
  100062cf4  str     x8, [sp, #0x30]
  100062cf8  ldr     x0, [x20, #0x20]                         ; x0 = captured arg1
  100062cfc  bl      _objc_retain
  100062d00  str     x0, [sp, #0x28]
  100062d04  ldrb    w8, [x20, #0x30]                         ; w8 = captured arg3
  100062d08  strb    w8, [sp, #0x38]
  100062d0c  adrp    x0, #0x1003b0000
  100062d10  ldr     x0, [x0, #0x1e8]                         ; __dispatch_main_q
  100062d14  add     x1, sp, #8
  100062d18  bl      _dispatch_async                          ; dispatch_async(__dispatch_main_q, ^{-[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2_block_invoke captures +0x20=arg1, +0x28=self, +0x30=arg3})
  100062d1c  ldr     x0, [sp, #0x28]
  100062d20  bl      _objc_release
loc_100062d24:
  100062d24  mov     x0, x19
  100062d28  bl      _objc_release
  100062d2c  sub     sp, x29, #0x10
  100062d30  ldp     x29, x30, [sp, #0x10]
  100062d34  ldp     x20, x19, [sp], #0x20
  100062d38  ret
  100062d3c  mov     x20, x0
  100062d40  mov     x0, x19
  100062d44  bl      _objc_release
  100062d48  mov     x0, x20
  100062d4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy playAnySoundContaining:looping:spatialized:]_block_invoke_2_block_invoke
; address 0x100062d50  size 32  kind block
; ======================================================================
  100062d50  ldp     x2, x8, [x0, #0x20]
  100062d54  adrp    x9, #0x100419000
  100062d58  nop
  100062d5c  ldr     x1, [x9, #0x2e8]
  100062d60  ldrb    w4, [x0, #0x30]                          ; w4 = captured arg3
  100062d64  mov     w3, #1
  100062d68  mov     x0, x8
  100062d6c  b       _objc_msgSend                            ; [x0 playAnySoundContaining:x2 looping:1 spatialized:arg3]

; ======================================================================
; sub_100062d70
; address 0x100062d70  size 8  kind sub
; ======================================================================
  100062d70  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100062d74  b       _objc_retain

; ======================================================================
; sub_100062d78
; address 0x100062d78  size 8  kind sub
; ======================================================================
  100062d78  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100062d7c  b       _objc_release

; ======================================================================
; sub_100062d80
; address 0x100062d80  size 8  kind sub
; ======================================================================
  100062d80  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  100062d84  b       _objc_retain

; ======================================================================
; sub_100062d88
; address 0x100062d88  size 8  kind sub
; ======================================================================
  100062d88  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100062d8c  b       _objc_release

; ======================================================================
; -[ADEnemy playAnySoundContaining:]
; address 0x100062d90  size 40  kind objc
; ======================================================================
  100062d90  stp     x29, x30, [sp, #-0x10]!
  100062d94  mov     x29, sp
  100062d98  adrp    x8, #0x100419000
  100062d9c  nop
  100062da0  ldr     x1, [x8, #0x2e8]
  100062da4  mov     w3, #1
  100062da8  mov     w4, #1
  100062dac  bl      _objc_msgSend                            ; [self playAnySoundContaining:arg1 looping:1 spatialized:1]
  100062db0  ldp     x29, x30, [sp], #0x10
  100062db4  ret

; ======================================================================
; -[ADEnemy playHitSoundForDamages:]
; address 0x100062db8  size 2100  kind objc
; ======================================================================
  100062db8  stp     d9, d8, [sp, #-0x70]!
  100062dbc  stp     x28, x27, [sp, #0x10]
  100062dc0  stp     x26, x25, [sp, #0x20]
  100062dc4  stp     x24, x23, [sp, #0x30]
  100062dc8  stp     x22, x21, [sp, #0x40]
  100062dcc  stp     x20, x19, [sp, #0x50]
  100062dd0  stp     x29, x30, [sp, #0x60]
  100062dd4  add     x29, sp, #0x60
  100062dd8  sub     sp, sp, #0x80
  100062ddc  mov     x19, x0
  100062de0  adrp    x8, #0x100419000
  100062de4  nop
  100062de8  ldr     x1, [x8, #0x318]
  100062dec  bl      _objc_msgSend                            ; [self destroyed]
  100062df0  tbnz    w0, #0, loc_1000634e0                    ; if (([self destroyed] & 1))
  100062df4  adrp    x8, #0x100419000
  100062df8  nop
  100062dfc  ldr     x1, [x8, #0x1a8]
  100062e00  mov     x0, x19
  100062e04  bl      _objc_msgSend                            ; [self life]
  100062e08  fcmp    s0, #0.0
  100062e0c  b.ls    loc_100062f14                            ; if ([self life] <= 0.0)
  100062e10  adrp    x25, #0x10041f000
  100062e14  ldrsw   x28, [x25, #0xb88]                       ; ivar offset ADEnemy.painSound (+0x40)
  100062e18  ldr     x0, [x19, x28]                           ; x0 = self->painSound
  100062e1c  adrp    x8, #0x100417000
  100062e20  nop
  100062e24  ldr     x1, [x8, #0x598]
  100062e28  bl      _objc_msgSend                            ; [self->painSound playing]
  100062e2c  tbnz    w0, #0, loc_1000634e0                    ; if (([self->painSound playing] & 1))
  100062e30  adrp    x8, #0x100416000
  100062e34  nop
  100062e38  ldr     x21, [x8, #0xc60]
  100062e3c  mov     x20, #0
  100062e40  mov     x0, x19
  100062e44  mov     x1, x21
  100062e48  bl      _objc_msgSend                            ; [self state]
  100062e4c  cmp     w0, #2
  100062e50  b.ne    loc_1000630e4                            ; if ([self state] != 2)
  100062e54  adrp    x8, #0x100419000
  100062e58  nop
  100062e5c  ldr     x22, [x8, #0x2e0]
  100062e60  mov     x20, #0
  100062e64  mov     x0, x19
  100062e68  mov     x1, x22
  100062e6c  bl      _objc_msgSend                            ; [self shield_dictionary]
  100062e70  mov     x29, x29
  100062e74  bl      _objc_retainAutoreleasedReturnValue
  100062e78  mov     x20, x0
  100062e7c  cbz     x20, loc_1000630e4                       ; if ([self shield_dictionary] == 0)
  100062e80  adrp    x8, #0x10041f000
  100062e84  ldrsw   x8, [x8, #0xb98]                         ; ivar offset ADEnemy.shieldDamagesTaken (+0x60)
  100062e88  ldr     s9, [x19, x8]                            ; s9 = self->shieldDamagesTaken
  100062e8c  mov     x0, x19
  100062e90  mov     x1, x22
  100062e94  bl      _objc_msgSend                            ; [self shield_dictionary]
  100062e98  mov     x29, x29
  100062e9c  bl      _objc_retainAutoreleasedReturnValue
  100062ea0  mov     x22, x0
  100062ea4  adrp    x8, #0x100417000
  100062ea8  nop
  100062eac  ldr     x1, [x8, #0x40]
  100062eb0  adrp    x2, #0x1003be000
  100062eb4  add     x2, x2, #0x610                           ; @"damagesBeforeShield"
  100062eb8  bl      _objc_msgSend                            ; [[self shield_dictionary] objectForKey:@"damagesBeforeShield"]
  100062ebc  mov     x29, x29
  100062ec0  bl      _objc_retainAutoreleasedReturnValue
  100062ec4  mov     x23, x0
  100062ec8  adrp    x8, #0x100417000
  100062ecc  nop
  100062ed0  ldr     x1, [x8, #0x48]
  100062ed4  bl      _objc_msgSend                            ; [[[self shield_dictionary] objectForKey:@"damagesBeforeShield"] floatValue]
  100062ed8  mov     v8.16b, v0.16b
  100062edc  mov     x0, x23
  100062ee0  bl      _objc_release
  100062ee4  mov     x0, x22
  100062ee8  bl      _objc_release
  100062eec  mov     x0, x20
  100062ef0  bl      _objc_release
  100062ef4  fcmp    s9, s8
  100062ef8  b.le    loc_1000630e4                            ; if (self->shieldDamagesTaken <= (or unordered) [[[self shield_dictionary] objectForKey:@"damagesBeforeShield"] floatValue])
  100062efc  adrp    x20, #0x1003be000
  100062f00  add     x20, x20, #0x630                         ; @"_shielddown_"
  100062f04  mov     x0, x20
  100062f08  bl      _objc_retain
  100062f0c  mov     w26, #1
  100062f10  b       loc_100063118
loc_100062f14:
  100062f14  adrp    x8, #0x100419000
  100062f18  nop
  100062f1c  ldr     x1, [x8, #0x3f0]
  100062f20  mov     x0, x19
  100062f24  bl      _objc_msgSend                            ; [self explosion_dictionary]
  100062f28  mov     x29, x29
  100062f2c  bl      _objc_retainAutoreleasedReturnValue
  100062f30  mov     x20, x0
  100062f34  cbz     x20, loc_1000630a8                       ; if ([self explosion_dictionary] == 0)
  100062f38  adrp    x8, #0x10041f000
  100062f3c  ldrsw   x22, [x8, #0xba0]                        ; ivar offset ADEnemy.explosionSound (+0x48)
  100062f40  ldr     x0, [x19, x22]                           ; x0 = self->explosionSound
  100062f44  adrp    x8, #0x100417000
  100062f48  nop
  100062f4c  ldr     x1, [x8, #0x598]
  100062f50  bl      _objc_msgSend                            ; [self->explosionSound playing]
  100062f54  mov     x21, x0
  100062f58  mov     x0, x20
  100062f5c  bl      _objc_release
  100062f60  tbnz    w21, #0, loc_1000630b0                   ; if (([self->explosionSound playing] & 1))
  100062f64  adrp    x8, #0x100416000
  100062f68  nop
  100062f6c  ldr     x1, [x8, #0xc98]
  100062f70  mov     x0, x19
  100062f74  bl      _objc_msgSend                            ; [self playlist]
  100062f78  mov     x29, x29
  100062f7c  bl      _objc_retainAutoreleasedReturnValue
  100062f80  mov     x20, x0
  100062f84  adrp    x8, #0x100416000
  100062f88  nop
  100062f8c  ldr     x1, [x8, #0xca0]
  100062f90  adrp    x2, #0x1003be000
  100062f94  add     x2, x2, #0xb0                            ; @"explosion"
  100062f98  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"explosion"]
  100062f9c  mov     x29, x29
  100062fa0  bl      _objc_retainAutoreleasedReturnValue
  100062fa4  ldr     x8, [x19, x22]                           ; x8 = self->explosionSound
  100062fa8  str     x0, [x19, x22]                           ; self->explosionSound = [[self playlist] anySoundContaining:@"explosion"]
  100062fac  mov     x0, x8
  100062fb0  bl      _objc_release
  100062fb4  mov     x0, x20
  100062fb8  bl      _objc_release
  100062fbc  ldr     x20, [x19, x22]                          ; x20 = self->explosionSound
  100062fc0  adrp    x8, #0x100417000
  100062fc4  nop
  100062fc8  ldr     x21, [x8, #8]
  100062fcc  mov     x0, x19
  100062fd0  mov     x1, x21
  100062fd4  bl      _objc_msgSend                            ; [self position]
  100062fd8  fcvt    s8, d0
  100062fdc  mov     x0, x19
  100062fe0  mov     x1, x21
  100062fe4  bl      _objc_msgSend                            ; [self position]
  100062fe8  fcvt    s1, d1
  100062fec  adrp    x8, #0x100417000
  100062ff0  nop
  100062ff4  ldr     x1, [x8, #0x38]
  100062ff8  movi    v2.16b, #0
  100062ffc  mov     x0, x20
  100063000  mov     v0.16b, v8.16b
  100063004  bl      _objc_msgSend                            ; [self->explosionSound setPlanar:{[self position].0, [self position].1, 0}]
  100063008  ldr     x0, [x19, x22]                           ; x0 = self->explosionSound
  10006300c  adrp    x8, #0x100416000
  100063010  nop
  100063014  ldr     x1, [x8, #0xca8]
  100063018  mov     w2, #1
  10006301c  bl      _objc_msgSend                            ; [self->explosionSound setSpatialized:1]
  100063020  ldr     x0, [x19, x22]                           ; x0 = self->explosionSound
  100063024  adrp    x8, #0x100416000
  100063028  nop
  10006302c  ldr     x1, [x8, #0xcb0]
  100063030  fmov    s0, #15.00000000
  100063034  bl      _objc_msgSend                            ; [self->explosionSound setGain:15]
  100063038  ldr     x0, [x19, x22]                           ; x0 = self->explosionSound
  10006303c  adrp    x8, #0x100416000
  100063040  nop
  100063044  ldr     x1, [x8, #0xcb8]
  100063048  mov     w2, #0
  10006304c  bl      _objc_msgSend                            ; [self->explosionSound play:0]
  100063050  adrp    x8, #0x100417000
  100063054  nop
  100063058  ldr     x1, [x8, #0x450]
  10006305c  mov     x0, x19
  100063060  bl      _objc_msgSend                            ; [self name]
  100063064  mov     x29, x29
  100063068  bl      _objc_retainAutoreleasedReturnValue
  10006306c  mov     x20, x0
  100063070  ldr     x0, [x19, x22]                           ; x0 = self->explosionSound
  100063074  adrp    x8, #0x100419000
  100063078  nop
  10006307c  ldr     x1, [x8, #0x3e8]
  100063080  bl      _objc_msgSend                            ; [self->explosionSound key]
  100063084  mov     x29, x29
  100063088  bl      _objc_retainAutoreleasedReturnValue
  10006308c  mov     x21, x0
  100063090  stp     x20, x21, [sp]
  100063094  adrp    x0, #0x1003be000
  100063098  add     x0, x0, #0x5f0                           ; @"[%@] play explosion sound : %@"
  10006309c  bl      _NSLog                                   ; NSLog(@"[%@] play explosion sound : %@", [self name], [self->explosionSound key])
  1000630a0  mov     x0, x21
  1000630a4  bl      _objc_release
loc_1000630a8:
  1000630a8  mov     x0, x20
  1000630ac  bl      _objc_release
loc_1000630b0:
  1000630b0  adrp    x8, #0x100419000
  1000630b4  nop
  1000630b8  ldr     x1, [x8, #0x428]
  1000630bc  mov     x0, x19
  1000630c0  sub     sp, x29, #0x60
  1000630c4  ldp     x29, x30, [sp, #0x60]
  1000630c8  ldp     x20, x19, [sp, #0x50]
  1000630cc  ldp     x22, x21, [sp, #0x40]
  1000630d0  ldp     x24, x23, [sp, #0x30]
  1000630d4  ldp     x26, x25, [sp, #0x20]
  1000630d8  ldp     x28, x27, [sp, #0x10]
  1000630dc  ldp     d9, d8, [sp], #0x70
  1000630e0  b       _objc_msgSend                            ; [self playDeathSound]
loc_1000630e4:
  1000630e4  mov     x20, #0
  1000630e8  mov     x0, x19
  1000630ec  mov     x1, x21
  1000630f0  bl      _objc_msgSend                            ; [self state]
  1000630f4  cmp     w0, #6
  1000630f8  b.ne    loc_100063104                            ; if ([self state] != 6)
  1000630fc  mov     x20, #0
  100063100  b       loc_1000634d8
loc_100063104:
  100063104  adrp    x20, #0x1003b9000
  100063108  add     x20, x20, #0x9b0                         ; @"_hit_"
  10006310c  mov     x0, x20
  100063110  bl      _objc_retain
  100063114  mov     w26, #0
loc_100063118:
  100063118  adrp    x8, #0x100417000
  10006311c  nop
  100063120  ldr     x21, [x8, #0x450]
  100063124  mov     x0, x19
  100063128  mov     x1, x21
  10006312c  bl      _objc_msgSend                            ; [self name]
  100063130  mov     x29, x29
  100063134  bl      _objc_retainAutoreleasedReturnValue
  100063138  mov     x22, x0
  10006313c  stp     x20, x22, [sp]
  100063140  adrp    x0, #0x1003be000
  100063144  add     x0, x0, #0x650                           ; @"Play pain sound : %@ on %@"
  100063148  bl      _NSLog                                   ; NSLog(@"Play pain sound : %@ on %@", one of {@"_hit_", @"_shielddown_"}, [self name])
  10006314c  mov     x0, x22
  100063150  bl      _objc_release
  100063154  adrp    x8, #0x100416000
  100063158  nop
  10006315c  ldr     x22, [x8, #0xc98]
  100063160  mov     x0, x19
  100063164  mov     x1, x22
  100063168  bl      _objc_msgSend                            ; [self playlist]
  10006316c  mov     x29, x29
  100063170  bl      _objc_retainAutoreleasedReturnValue
  100063174  mov     x24, x0
  100063178  adrp    x8, #0x100416000
  10006317c  nop
  100063180  ldr     x23, [x8, #0xca0]
  100063184  mov     x1, x23
  100063188  mov     x2, x20
  10006318c  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:one of {@"_hit_", @"_shielddown_"}]
  100063190  mov     x29, x29
  100063194  bl      _objc_retainAutoreleasedReturnValue
  100063198  ldr     x8, [x19, x28]                           ; x8 = self->painSound
  10006319c  str     x0, [x19, x28]                           ; self->painSound = [[self playlist] anySoundContaining:one of {@"_hit_", @"_shielddown_"}]
  1000631a0  mov     x0, x8
  1000631a4  bl      _objc_release
  1000631a8  mov     x0, x24
  1000631ac  bl      _objc_release
  1000631b0  ldr     x0, [x19, x28]                           ; x0 = self->painSound
  1000631b4  cbnz    x0, loc_100063280                        ; if (self->painSound != 0)
  1000631b8  mov     x0, x19
  1000631bc  mov     x1, x22
  1000631c0  bl      _objc_msgSend                            ; [self playlist]
  1000631c4  mov     x29, x29
  1000631c8  bl      _objc_retainAutoreleasedReturnValue
  1000631cc  mov     x24, x0
  1000631d0  adrp    x2, #0x1003b9000
  1000631d4  add     x2, x2, #0x9b0                           ; @"_hit_"
  1000631d8  mov     x1, x23
  1000631dc  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_hit_"]
  1000631e0  mov     x29, x29
  1000631e4  bl      _objc_retainAutoreleasedReturnValue
  1000631e8  ldr     x8, [x19, x28]                           ; x8 = self->painSound
  1000631ec  str     x0, [x19, x28]                           ; self->painSound = [[self playlist] anySoundContaining:@"_hit_"]
  1000631f0  mov     x0, x8
  1000631f4  bl      _objc_release
  1000631f8  mov     x0, x24
  1000631fc  bl      _objc_release
  100063200  mov     x0, x19
  100063204  mov     x1, x22
  100063208  bl      _objc_msgSend                            ; [self playlist]
  10006320c  mov     x29, x29
  100063210  bl      _objc_retainAutoreleasedReturnValue
  100063214  mov     x22, x0
  100063218  mov     x1, x21
  10006321c  bl      _objc_msgSend                            ; [[self playlist] name]
  100063220  mov     x29, x29
  100063224  bl      _objc_retainAutoreleasedReturnValue
  100063228  mov     x21, x0
  10006322c  ldr     x0, [x19, x28]                           ; x0 = self->painSound
  100063230  adrp    x8, #0x100419000
  100063234  nop
  100063238  ldr     x1, [x8, #0x3e8]
  10006323c  bl      _objc_msgSend                            ; [self->painSound key]
  100063240  mov     x29, x29
  100063244  bl      _objc_retainAutoreleasedReturnValue
  100063248  mov     x23, x0
  10006324c  stp     x21, x23, [sp, #8]
  100063250  str     x20, [sp]
  100063254  adrp    x0, #0x1003be000
  100063258  add     x0, x0, #0x670                           ; @"No sound contains %@ in %@, playing %@ instead"
  10006325c  bl      _NSLog                                   ; NSLog(@"No sound contains %@ in %@, playing %@ instead", one of {@"_hit_", @"_shielddown_"}, [[self playlist] name], [self->painSound key])
  100063260  mov     x0, x23
  100063264  bl      _objc_release
  100063268  mov     x0, x21
  10006326c  bl      _objc_release
  100063270  mov     x0, x22
  100063274  bl      _objc_release
  100063278  ldrsw   x8, [x25, #0xb88]                        ; ivar offset ADEnemy.painSound (+0x40)
  10006327c  ldr     x0, [x19, x8]                            ; x0 = self->painSound
loc_100063280:
  100063280  adrp    x8, #0x100416000
  100063284  nop
  100063288  ldr     x1, [x8, #0xcb0]
  10006328c  fmov    s0, #5.00000000
  100063290  bl      _objc_msgSend                            ; [self->painSound setGain:5]
  100063294  ldr     x8, [x19, x28]                           ; x8 = self->painSound
  100063298  cbz     x8, loc_1000634d8                        ; if (self->painSound == 0)
  10006329c  add     x8, sp, #0x60
  1000632a0  stp     xzr, x8, [sp, #0x60]
  1000632a4  mov     w8, #0x20000000
  1000632a8  str     w8, [sp, #0x70]
  1000632ac  mov     w8, #0x20
  1000632b0  str     w8, [sp, #0x74]
  1000632b4  strb    wzr, [sp, #0x78]
  1000632b8  adrp    x8, #0x100416000
  1000632bc  nop
  1000632c0  ldr     x22, [x8, #0xff0]
  1000632c4  mov     x0, x19
  1000632c8  mov     x1, x22
  1000632cc  bl      _objc_msgSend                            ; [self sound]
  1000632d0  mov     x29, x29
  1000632d4  bl      _objc_retainAutoreleasedReturnValue
  1000632d8  mov     x21, x0
  1000632dc  adrp    x8, #0x100419000
  1000632e0  nop
  1000632e4  ldr     x24, [x8, #0x3e8]
  1000632e8  mov     x1, x24
  1000632ec  bl      _objc_msgSend                            ; [[self sound] key]
  1000632f0  mov     x29, x29
  1000632f4  bl      _objc_retainAutoreleasedReturnValue
  1000632f8  mov     x23, x0
  1000632fc  adrp    x8, #0x100417000
  100063300  nop
  100063304  ldr     x25, [x8, #0x58]
  100063308  adrp    x2, #0x1003be000
  10006330c  add     x2, x2, #0x690                           ; @"_approach"
  100063310  mov     x1, x25
  100063314  bl      _objc_msgSend                            ; [[[self sound] key] rangeOfString:@"_approach"]
  100063318  mov     x8, #0x7fffffffffffffff
  10006331c  cmp     x0, x8
  100063320  b.ne    loc_10006339c                            ; if ([[[self sound] key] rangeOfString:@"_approach"] != 0x7fffffffffffffff)
  100063324  mov     x0, x19
  100063328  mov     x1, x22
  10006332c  bl      _objc_msgSend                            ; [self sound]
  100063330  str     w26, [sp, #0x24]
  100063334  mov     x29, x29
  100063338  bl      _objc_retainAutoreleasedReturnValue
  10006333c  mov     x26, x0
  100063340  mov     x1, x24
  100063344  bl      _objc_msgSend                            ; [[self sound] key]
  100063348  mov     x29, x29
  10006334c  bl      _objc_retainAutoreleasedReturnValue
  100063350  mov     x27, x0
  100063354  adrp    x2, #0x1003be000
  100063358  add     x2, x2, #0x390                           ; @"_aggressive"
  10006335c  mov     x1, x25
  100063360  bl      _objc_msgSend                            ; [[[self sound] key] rangeOfString:@"_aggressive"]
  100063364  mov     x24, x0
  100063368  mov     x0, x27
  10006336c  bl      _objc_release
  100063370  mov     x0, x26
  100063374  bl      _objc_release
  100063378  mov     x0, x23
  10006337c  bl      _objc_release
  100063380  mov     x0, x21
  100063384  bl      _objc_release
  100063388  mov     x8, #0x7fffffffffffffff
  10006338c  cmp     x24, x8
  100063390  ldr     w26, [sp, #0x24]
  100063394  b.ne    loc_1000633ac                            ; if ([[[self sound] key] rangeOfString:@"_aggressive"] != 0x7fffffffffffffff)
  100063398  b       loc_100063400
loc_10006339c:
  10006339c  mov     x0, x23
  1000633a0  bl      _objc_release
  1000633a4  mov     x0, x21
  1000633a8  bl      _objc_release
loc_1000633ac:
  1000633ac  mov     x0, x19
  1000633b0  mov     x1, x22
  1000633b4  bl      _objc_msgSend                            ; [self sound]
  1000633b8  mov     x29, x29
  1000633bc  bl      _objc_retainAutoreleasedReturnValue
  1000633c0  mov     x21, x0
  1000633c4  adrp    x8, #0x100417000
  1000633c8  nop
  1000633cc  ldr     x1, [x8, #0x568]
  1000633d0  bl      _objc_msgSend                            ; [[self sound] stop]
  1000633d4  mov     x0, x21
  1000633d8  bl      _objc_release
  1000633dc  adrp    x8, #0x100419000
  1000633e0  nop
  1000633e4  ldr     x1, [x8, #0x418]
  1000633e8  mov     x2, #0
  1000633ec  mov     x0, x19
  1000633f0  bl      _objc_msgSend                            ; [self setSound:0]
  1000633f4  ldr     x8, [sp, #0x68]
  1000633f8  mov     w9, #1
  1000633fc  strb    w9, [x8, #0x18]
loc_100063400:
  100063400  ldr     x0, [x19, x28]                           ; x0 = self->painSound
  100063404  adrp    x8, #0x1003b0000
  100063408  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10006340c  str     x8, [sp, #0x28]
  100063410  mov     w8, #-0x3e000000
  100063414  stp     w8, wzr, [sp, #0x30]
  100063418  adr     x8, #0x1000635ec                         ; &-[ADEnemy playHitSoundForDamages:]_block_invoke
  10006341c  nop
  100063420  str     x8, [sp, #0x38]
  100063424  adrp    x8, #0x1003b1000
  100063428  add     x8, x8, #0xcd0                           ; &d_1003b1cd0
  10006342c  str     x8, [sp, #0x40]
  100063430  strb    w26, [sp, #0x58]
  100063434  add     x8, sp, #0x60
  100063438  stp     x8, x19, [sp, #0x48]
  10006343c  adrp    x8, #0x100417000
  100063440  nop
  100063444  ldr     x1, [x8, #0x9c8]
  100063448  add     x2, sp, #0x28
  10006344c  bl      _objc_msgSend                            ; [self->painSound add3DSoundEndCallback:^{-[ADEnemy playHitSoundForDamages:]_block_invoke captures +0x28=self, +0x30=one of {0, 1}, +0x48=0x20000000, +0x50=0}]
  100063450  ldr     x21, [x19, x28]                          ; x21 = self->painSound
  100063454  adrp    x8, #0x100417000
  100063458  nop
  10006345c  ldr     x22, [x8, #8]
  100063460  mov     x0, x19
  100063464  mov     x1, x22
  100063468  bl      _objc_msgSend                            ; [self position]
  10006346c  mov     v8.16b, v0.16b
  100063470  mov     x0, x19
  100063474  mov     x1, x22
  100063478  bl      _objc_msgSend                            ; [self position]
  10006347c  fcvt    s0, d8
  100063480  fcvt    s1, d1
  100063484  adrp    x8, #0x100417000
  100063488  nop
  10006348c  ldr     x1, [x8, #0x38]
  100063490  movi    v2.16b, #0
  100063494  mov     x0, x21
  100063498  bl      _objc_msgSend                            ; [self->painSound setPlanar:{[self position].0, [self position].1, 0}]
  10006349c  ldr     x0, [x19, x28]                           ; x0 = self->painSound
  1000634a0  adrp    x8, #0x100416000
  1000634a4  nop
  1000634a8  ldr     x1, [x8, #0xca8]
  1000634ac  mov     w2, #1
  1000634b0  bl      _objc_msgSend                            ; [self->painSound setSpatialized:1]
  1000634b4  ldr     x0, [x19, x28]                           ; x0 = self->painSound
  1000634b8  adrp    x8, #0x100416000
  1000634bc  nop
  1000634c0  ldr     x1, [x8, #0xcb8]
  1000634c4  mov     w2, #0
  1000634c8  bl      _objc_msgSend                            ; [self->painSound play:0]
  1000634cc  add     x0, sp, #0x60
  1000634d0  mov     w1, #8
  1000634d4  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x60], 8)
loc_1000634d8:
  1000634d8  mov     x0, x20
  1000634dc  bl      _objc_release
loc_1000634e0:
  1000634e0  sub     sp, x29, #0x60
  1000634e4  ldp     x29, x30, [sp, #0x60]
  1000634e8  ldp     x20, x19, [sp, #0x50]
  1000634ec  ldp     x22, x21, [sp, #0x40]
  1000634f0  ldp     x24, x23, [sp, #0x30]
  1000634f4  ldp     x26, x25, [sp, #0x20]
  1000634f8  ldp     x28, x27, [sp, #0x10]
  1000634fc  ldp     d9, d8, [sp], #0x70
  100063500  ret
  100063504  b       loc_100063544
  100063508  mov     x19, x0
  10006350c  b       loc_1000635d0
  100063510  b       loc_100063544
  100063514  b       loc_100063544
  100063518  b       loc_100063544
  10006351c  mov     x19, x0
  100063520  mov     x0, x21
  100063524  b       loc_10006359c
  100063528  mov     x19, x0
  10006352c  b       loc_100063598
  100063530  b       loc_100063568
  100063534  mov     x19, x0
  100063538  b       loc_1000635c0
  10006353c  mov     x19, x0
  100063540  b       loc_1000635c8
loc_100063544:
  100063544  mov     x19, x0
  100063548  b       loc_1000635dc
  10006354c  mov     x19, x0
  100063550  b       loc_100063598
  100063554  mov     x19, x0
  100063558  mov     x0, x23
  10006355c  b       loc_100063594
  100063560  mov     x19, x0
  100063564  b       loc_1000635c8
loc_100063568:
  100063568  mov     x19, x0
  10006356c  mov     x0, x24
  100063570  b       loc_10006359c
  100063574  mov     x19, x0
  100063578  b       loc_100063598
  10006357c  mov     x19, x0
  100063580  b       loc_100063590
  100063584  mov     x19, x0
  100063588  mov     x0, x23
  10006358c  bl      _objc_release
loc_100063590:
  100063590  mov     x0, x21
loc_100063594:
  100063594  bl      _objc_release
loc_100063598:
  100063598  mov     x0, x22
loc_10006359c:
  10006359c  bl      _objc_release
  1000635a0  b       loc_1000635dc
  1000635a4  mov     x19, x0
  1000635a8  b       loc_1000635b8
  1000635ac  mov     x19, x0
  1000635b0  mov     x0, x27
  1000635b4  bl      _objc_release
loc_1000635b8:
  1000635b8  mov     x0, x26
  1000635bc  bl      _objc_release
loc_1000635c0:
  1000635c0  mov     x0, x23
  1000635c4  bl      _objc_release
loc_1000635c8:
  1000635c8  mov     x0, x21
  1000635cc  bl      _objc_release
loc_1000635d0:
  1000635d0  add     x0, sp, #0x60
  1000635d4  mov     w1, #8
  1000635d8  bl      __Block_object_dispose                   ; Block_object_dispose(&sp[0x60], 8)
loc_1000635dc:
  1000635dc  mov     x0, x20
  1000635e0  bl      _objc_release
  1000635e4  mov     x0, x19
  1000635e8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy playHitSoundForDamages:]_block_invoke
; address 0x1000635ec  size 128  kind block
; ======================================================================
  1000635ec  stp     x20, x19, [sp, #-0x20]!
  1000635f0  stp     x29, x30, [sp, #0x10]
  1000635f4  add     x29, sp, #0x10
  1000635f8  mov     x20, x0
  1000635fc  mov     x0, x1
  100063600  bl      _objc_retain
  100063604  mov     x19, x0
  100063608  ldrb    w8, [x20, #0x30]                         ; w8 = captured one of {0, 1}
  10006360c  cbz     w8, loc_100063624                        ; if (one of {0, 1} == 0)
  100063610  ldr     x0, [x20, #0x28]                         ; x0 = captured self
  100063614  adrp    x8, #0x100419000
  100063618  nop
  10006361c  ldr     x1, [x8, #0x430]
  100063620  bl      _objc_msgSend                            ; [self protect]
loc_100063624:
  100063624  ldr     x8, [x20, #0x20]                         ; x8 = block[+0x20]
  100063628  ldr     x8, [x8, #8]                             ; x8 = block[+0x20][+0x8]
  10006362c  ldrb    w8, [x8, #0x18]                          ; w8 = block[+0x20][+0x8][+0x18]
  100063630  cbz     w8, loc_100063648                        ; if (block[+0x20][+0x8][+0x18] == 0)
  100063634  ldr     x0, [x20, #0x28]                         ; x0 = captured self
  100063638  adrp    x8, #0x100419000
  10006363c  nop
  100063640  ldr     x1, [x8, #0x438]
  100063644  bl      _objc_msgSend                            ; [self walkOrAgressive]
loc_100063648:
  100063648  mov     x0, x19
  10006364c  ldp     x29, x30, [sp, #0x10]
  100063650  ldp     x20, x19, [sp], #0x20
  100063654  b       _objc_release
  100063658  mov     x20, x0
  10006365c  mov     x0, x19
  100063660  bl      _objc_release
  100063664  mov     x0, x20
  100063668  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_10006366c
; address 0x10006366c  size 16  kind sub
; ======================================================================
  10006366c  add     x0, x0, #0x20
  100063670  ldr     x1, [x1, #0x20]                          ; x1 = a1[+0x20]
  100063674  mov     w2, #8
  100063678  b       __Block_object_assign                    ; Block_object_assign((a0 + 32), a1[+0x20], 8, a3)

; ======================================================================
; sub_10006367c
; address 0x10006367c  size 12  kind sub
; ======================================================================
  10006367c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100063680  mov     w1, #8
  100063684  b       __Block_object_dispose                   ; Block_object_dispose(a0[+0x20], 8, a2, a3)

; ======================================================================
; -[ADEnemy playDeathSound]
; address 0x100063688  size 960  kind objc
; ======================================================================
  100063688  stp     d9, d8, [sp, #-0x50]!
  10006368c  stp     x24, x23, [sp, #0x10]
  100063690  stp     x22, x21, [sp, #0x20]
  100063694  stp     x20, x19, [sp, #0x30]
  100063698  stp     x29, x30, [sp, #0x40]
  10006369c  add     x29, sp, #0x40
  1000636a0  sub     sp, sp, #0x10
  1000636a4  mov     x19, x0
  1000636a8  adrp    x8, #0x10041f000
  1000636ac  ldrsw   x24, [x8, #0xb88]                        ; ivar offset ADEnemy.painSound (+0x40)
  1000636b0  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  1000636b4  adrp    x8, #0x100417000
  1000636b8  nop
  1000636bc  ldr     x1, [x8, #0x598]
  1000636c0  bl      _objc_msgSend                            ; [self->painSound playing]
  1000636c4  cbz     w0, loc_1000637a8                        ; if ([self->painSound playing] == 0)
  1000636c8  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  1000636cc  adrp    x8, #0x100419000
  1000636d0  nop
  1000636d4  ldr     x21, [x8, #0x3e8]
  1000636d8  mov     x1, x21
  1000636dc  bl      _objc_msgSend                            ; [self->painSound key]
  1000636e0  mov     x29, x29
  1000636e4  bl      _objc_retainAutoreleasedReturnValue
  1000636e8  mov     x20, x0
  1000636ec  adrp    x8, #0x100417000
  1000636f0  nop
  1000636f4  ldr     x22, [x8, #0x58]
  1000636f8  adrp    x2, #0x1003be000
  1000636fc  add     x2, x2, #0x6b0                           ; @"_death"
  100063700  mov     x1, x22
  100063704  bl      _objc_msgSend                            ; [[self->painSound key] rangeOfString:@"_death"]
  100063708  mov     x8, #0x7fffffffffffffff
  10006370c  cmp     x0, x8
  100063710  b.ne    loc_100063754                            ; if ([[self->painSound key] rangeOfString:@"_death"] != 0x7fffffffffffffff)
  100063714  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  100063718  mov     x1, x21
  10006371c  bl      _objc_msgSend                            ; [self->painSound key]
  100063720  mov     x29, x29
  100063724  bl      _objc_retainAutoreleasedReturnValue
  100063728  mov     x23, x0
  10006372c  adrp    x2, #0x1003be000
  100063730  add     x2, x2, #0x6d0                           ; @"_die"
  100063734  mov     x1, x22
  100063738  bl      _objc_msgSend                            ; [[self->painSound key] rangeOfString:@"_die"]
  10006373c  mov     x8, #0x7fffffffffffffff
  100063740  cmp     x0, x8
  100063744  cset    w22, eq
  100063748  mov     x0, x23
  10006374c  bl      _objc_release
  100063750  b       loc_100063758
loc_100063754:
  100063754  mov     w22, #0
loc_100063758:
  100063758  mov     x0, x20
  10006375c  bl      _objc_release
  100063760  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  100063764  mov     x1, x21
  100063768  bl      _objc_msgSend                            ; [self->painSound key]
  10006376c  mov     x29, x29
  100063770  bl      _objc_retainAutoreleasedReturnValue
  100063774  mov     x20, x0
  100063778  cbz     w22, loc_1000639c8                       ; if (w22 == 0)
  10006377c  str     x20, [sp]
  100063780  adrp    x0, #0x1003be000
  100063784  add     x0, x0, #0x6f0                           ; @"STOPPED %@ pain sound"
  100063788  bl      _NSLog                                   ; NSLog(@"STOPPED %@ pain sound", [self->painSound key])
  10006378c  mov     x0, x20
  100063790  bl      _objc_release
  100063794  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  100063798  adrp    x8, #0x100417000
  10006379c  nop
  1000637a0  ldr     x1, [x8, #0x568]
  1000637a4  bl      _objc_msgSend                            ; [self->painSound stop]
loc_1000637a8:
  1000637a8  adrp    x8, #0x100419000
  1000637ac  nop
  1000637b0  ldr     x1, [x8, #0x388]
  1000637b4  mov     x0, x19
  1000637b8  bl      _objc_msgSend                            ; [self nextShotWillBeCritical]
  1000637bc  mov     x23, x0
  1000637c0  adrp    x8, #0x100416000
  1000637c4  nop
  1000637c8  ldr     x21, [x8, #0xc98]
  1000637cc  mov     x0, x19
  1000637d0  mov     x1, x21
  1000637d4  bl      _objc_msgSend                            ; [self playlist]
  1000637d8  mov     x29, x29
  1000637dc  bl      _objc_retainAutoreleasedReturnValue
  1000637e0  mov     x22, x0
  1000637e4  adrp    x8, #0x100416000
  1000637e8  add     x8, x8, #0xca0                           ; &@selector(anySoundContaining:)
  1000637ec  ldr     x20, [x8]
  1000637f0  cbz     w23, loc_100063860                       ; if ([self nextShotWillBeCritical] == 0)
  1000637f4  adrp    x2, #0x1003be000
  1000637f8  add     x2, x2, #0x730                           ; @"death_crit"
  1000637fc  mov     x0, x22
  100063800  mov     x1, x20
  100063804  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"death_crit"]
  100063808  mov     x29, x29
  10006380c  bl      _objc_retainAutoreleasedReturnValue
  100063810  ldr     x8, [x19, x24]                           ; x8 = self->painSound
  100063814  str     x0, [x19, x24]                           ; self->painSound = [[self playlist] anySoundContaining:@"death_crit"]
  100063818  mov     x0, x8
  10006381c  bl      _objc_release
  100063820  mov     x0, x22
  100063824  bl      _objc_release
  100063828  ldr     x8, [x19, x24]                           ; x8 = self->painSound
  10006382c  cbnz    x8, loc_1000638e4                        ; if (self->painSound != 0)
  100063830  mov     x0, x19
  100063834  mov     x1, x21
  100063838  bl      _objc_msgSend                            ; [self playlist]
  10006383c  mov     x29, x29
  100063840  bl      _objc_retainAutoreleasedReturnValue
  100063844  mov     x21, x0
  100063848  adrp    x2, #0x1003be000
  10006384c  add     x2, x2, #0x750                           ; @"_diecrit_"
  100063850  mov     x1, x20
  100063854  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_diecrit_"]
  100063858  mov     x29, x29
  10006385c  b       loc_1000638c8
loc_100063860:
  100063860  adrp    x2, #0x1003be000
  100063864  add     x2, x2, #0x770                           ; @"_death_"
  100063868  mov     x0, x22
  10006386c  mov     x1, x20
  100063870  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_death_"]
  100063874  mov     x29, x29
  100063878  bl      _objc_retainAutoreleasedReturnValue
  10006387c  ldr     x8, [x19, x24]                           ; x8 = self->painSound
  100063880  str     x0, [x19, x24]                           ; self->painSound = [[self playlist] anySoundContaining:@"_death_"]
  100063884  mov     x0, x8
  100063888  bl      _objc_release
  10006388c  mov     x0, x22
  100063890  bl      _objc_release
  100063894  ldr     x8, [x19, x24]                           ; x8 = self->painSound
  100063898  cbnz    x8, loc_1000638e4                        ; if (self->painSound != 0)
  10006389c  mov     x0, x19
  1000638a0  mov     x1, x21
  1000638a4  bl      _objc_msgSend                            ; [self playlist]
  1000638a8  mov     x29, x29
  1000638ac  bl      _objc_retainAutoreleasedReturnValue
  1000638b0  mov     x21, x0
  1000638b4  adrp    x2, #0x1003be000
  1000638b8  add     x2, x2, #0x790                           ; @"_die_"
  1000638bc  mov     x1, x20
  1000638c0  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_die_"]
  1000638c4  mov     x29, x29
loc_1000638c8:
  1000638c8  bl      _objc_retainAutoreleasedReturnValue
  1000638cc  ldr     x8, [x19, x24]                           ; x8 = self->painSound
  1000638d0  str     x0, [x19, x24]                           ; self->painSound = x0
  1000638d4  mov     x0, x8
  1000638d8  bl      _objc_release
  1000638dc  mov     x0, x21
  1000638e0  bl      _objc_release
loc_1000638e4:
  1000638e4  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  1000638e8  adrp    x8, #0x100416000
  1000638ec  nop
  1000638f0  ldr     x1, [x8, #0xcb0]
  1000638f4  fmov    s0, #4.00000000
  1000638f8  bl      _objc_msgSend                            ; [self->painSound setGain:4]
  1000638fc  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  100063900  adrp    x8, #0x100419000
  100063904  nop
  100063908  ldr     x1, [x8, #0x3e8]
  10006390c  bl      _objc_msgSend                            ; [self->painSound key]
  100063910  mov     x29, x29
  100063914  bl      _objc_retainAutoreleasedReturnValue
  100063918  mov     x20, x0
  10006391c  str     x20, [sp]
  100063920  adrp    x0, #0x1003be000
  100063924  add     x0, x0, #0x7b0                           ; @"Death sound : %@"
  100063928  bl      _NSLog                                   ; NSLog(@"Death sound : %@", [self->painSound key])
  10006392c  mov     x0, x20
  100063930  bl      _objc_release
  100063934  ldr     x20, [x19, x24]                          ; x20 = self->painSound
  100063938  adrp    x8, #0x100417000
  10006393c  nop
  100063940  ldr     x21, [x8, #8]
  100063944  mov     x0, x19
  100063948  mov     x1, x21
  10006394c  bl      _objc_msgSend                            ; [self position]
  100063950  fcvt    s8, d0
  100063954  mov     x0, x19
  100063958  mov     x1, x21
  10006395c  bl      _objc_msgSend                            ; [self position]
  100063960  fcvt    s1, d1
  100063964  adrp    x8, #0x100417000
  100063968  nop
  10006396c  ldr     x1, [x8, #0x38]
  100063970  movi    v2.16b, #0
  100063974  mov     x0, x20
  100063978  mov     v0.16b, v8.16b
  10006397c  bl      _objc_msgSend                            ; [self->painSound setPlanar:{[self position].0, [self position].1, 0}]
  100063980  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  100063984  adrp    x8, #0x100416000
  100063988  nop
  10006398c  ldr     x1, [x8, #0xca8]
  100063990  mov     w2, #1
  100063994  bl      _objc_msgSend                            ; [self->painSound setSpatialized:1]
  100063998  mov     w2, #0
  10006399c  ldr     x0, [x19, x24]                           ; x0 = self->painSound
  1000639a0  adrp    x8, #0x100416000
  1000639a4  nop
  1000639a8  ldr     x1, [x8, #0xcb8]
  1000639ac  sub     sp, x29, #0x40
  1000639b0  ldp     x29, x30, [sp, #0x40]
  1000639b4  ldp     x20, x19, [sp, #0x30]
  1000639b8  ldp     x22, x21, [sp, #0x20]
  1000639bc  ldp     x24, x23, [sp, #0x10]
  1000639c0  ldp     d9, d8, [sp], #0x50
  1000639c4  b       _objc_msgSend                            ; [self->painSound play:0]
loc_1000639c8:
  1000639c8  str     x20, [sp]
  1000639cc  adrp    x0, #0x1003be000
  1000639d0  add     x0, x0, #0x710                           ; @"Already playing death sound : %@"
  1000639d4  bl      _NSLog                                   ; NSLog(@"Already playing death sound : %@", [self->painSound key])
  1000639d8  mov     x0, x20
  1000639dc  sub     sp, x29, #0x40
  1000639e0  ldp     x29, x30, [sp, #0x40]
  1000639e4  ldp     x20, x19, [sp, #0x30]
  1000639e8  ldp     x22, x21, [sp, #0x20]
  1000639ec  ldp     x24, x23, [sp, #0x10]
  1000639f0  ldp     d9, d8, [sp], #0x50
  1000639f4  b       _objc_release
  1000639f8  b       loc_100063a24
  1000639fc  b       loc_100063a24
  100063a00  b       loc_100063a04
loc_100063a04:
  100063a04  mov     x19, x0
  100063a08  mov     x0, x22
  100063a0c  b       loc_100063a2c
  100063a10  mov     x19, x0
  100063a14  mov     x0, x23
  100063a18  bl      _objc_release
  100063a1c  b       loc_100063a28
  100063a20  b       loc_100063a24
loc_100063a24:
  100063a24  mov     x19, x0
loc_100063a28:
  100063a28  mov     x0, x20
loc_100063a2c:
  100063a2c  bl      _objc_release
  100063a30  mov     x0, x19
  100063a34  bl      __Unwind_Resume                          ; Unwind_Resume()
  100063a38  b       loc_100063a3c
loc_100063a3c:
  100063a3c  mov     x19, x0
  100063a40  mov     x0, x21
  100063a44  b       loc_100063a2c

; ======================================================================
; -[ADEnemy setReverbAndWetBalanceOnSound:]
; address 0x100063a48  size 104  kind objc
; ======================================================================
  100063a48  stp     x20, x19, [sp, #-0x20]!
  100063a4c  stp     x29, x30, [sp, #0x10]
  100063a50  add     x29, sp, #0x10
  100063a54  mov     x0, x2
  100063a58  bl      _objc_retain
  100063a5c  mov     x19, x0
  100063a60  adrp    x8, #0x100419000
  100063a64  nop
  100063a68  ldr     x1, [x8, #0x440]
  100063a6c  mov     w2, #1
  100063a70  bl      _objc_msgSend                            ; [arg1 setSendToReverb:1]
  100063a74  adrp    x8, #0x100419000
  100063a78  nop
  100063a7c  ldr     x1, [x8, #0x448]
  100063a80  fmov    s0, #1.00000000
  100063a84  mov     x0, x19
  100063a88  bl      _objc_msgSend                            ; [arg1 setWetGain:1]
  100063a8c  mov     x0, x19
  100063a90  ldp     x29, x30, [sp, #0x10]
  100063a94  ldp     x20, x19, [sp], #0x20
  100063a98  b       _objc_release
  100063a9c  mov     x20, x0
  100063aa0  mov     x0, x19
  100063aa4  bl      _objc_release
  100063aa8  mov     x0, x20
  100063aac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy stopAllSounds]
; address 0x100063ab0  size 196  kind objc
; ======================================================================
  100063ab0  stp     x22, x21, [sp, #-0x30]!
  100063ab4  stp     x20, x19, [sp, #0x10]
  100063ab8  stp     x29, x30, [sp, #0x20]
  100063abc  add     x29, sp, #0x20
  100063ac0  sub     sp, sp, #0x10
  100063ac4  mov     x19, x0
  100063ac8  adrp    x8, #0x100417000
  100063acc  nop
  100063ad0  ldr     x1, [x8, #0x450]
  100063ad4  bl      _objc_msgSend                            ; [self name]
  100063ad8  mov     x29, x29
  100063adc  bl      _objc_retainAutoreleasedReturnValue
  100063ae0  mov     x20, x0
  100063ae4  str     x20, [sp]
  100063ae8  adrp    x0, #0x1003be000
  100063aec  add     x0, x0, #0x7d0                           ; @"[%@] Stop all sounds"
  100063af0  bl      _NSLog                                   ; NSLog(@"[%@] Stop all sounds", [self name])
  100063af4  mov     x0, x20
  100063af8  bl      _objc_release
  100063afc  adrp    x8, #0x100416000
  100063b00  nop
  100063b04  ldr     x1, [x8, #0xff0]
  100063b08  mov     x0, x19
  100063b0c  bl      _objc_msgSend                            ; [self sound]
  100063b10  mov     x29, x29
  100063b14  bl      _objc_retainAutoreleasedReturnValue
  100063b18  mov     x20, x0
  100063b1c  adrp    x8, #0x100417000
  100063b20  nop
  100063b24  ldr     x21, [x8, #0x568]
  100063b28  mov     x1, x21
  100063b2c  bl      _objc_msgSend                            ; [[self sound] stop]
  100063b30  mov     x0, x20
  100063b34  bl      _objc_release
  100063b38  adrp    x8, #0x10041f000
  100063b3c  ldrsw   x8, [x8, #0xb88]                         ; ivar offset ADEnemy.painSound (+0x40)
  100063b40  ldr     x0, [x19, x8]                            ; x0 = self->painSound
  100063b44  mov     x1, x21
  100063b48  sub     sp, x29, #0x20
  100063b4c  ldp     x29, x30, [sp, #0x20]
  100063b50  ldp     x20, x19, [sp, #0x10]
  100063b54  ldp     x22, x21, [sp], #0x30
  100063b58  b       _objc_msgSend                            ; [self->painSound stop]
  100063b5c  b       loc_100063b60
loc_100063b60:
  100063b60  mov     x19, x0
  100063b64  mov     x0, x20
  100063b68  bl      _objc_release
  100063b6c  mov     x0, x19
  100063b70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy destroyEnemy]
; address 0x100063b74  size 224  kind objc
; ======================================================================
  100063b74  stp     x22, x21, [sp, #-0x30]!
  100063b78  stp     x20, x19, [sp, #0x10]
  100063b7c  stp     x29, x30, [sp, #0x20]
  100063b80  add     x29, sp, #0x20
  100063b84  mov     x19, x0
  100063b88  adrp    x8, #0x100419000
  100063b8c  nop
  100063b90  ldr     x1, [x8, #0x368]
  100063b94  bl      _objc_msgSend                            ; [self stopAllSounds]
  100063b98  adrp    x8, #0x100417000
  100063b9c  nop
  100063ba0  ldr     x1, [x8, #0x8d0]
  100063ba4  movi    v0.16b, #0
  100063ba8  mov     x0, x19
  100063bac  bl      _objc_msgSend                            ; [self setSpeed:0]
  100063bb0  adrp    x8, #0x100419000
  100063bb4  nop
  100063bb8  ldr     x1, [x8, #0x450]
  100063bbc  mov     w2, #1
  100063bc0  mov     x0, x19
  100063bc4  bl      _objc_msgSend                            ; [self setDestroyed:1]
  100063bc8  adrp    x8, #0x10041f000
  100063bcc  ldrsw   x21, [x8, #0xb6c]                        ; ivar offset ADEnemy.ambiantName (+0x50)
  100063bd0  ldr     x8, [x19, x21]                           ; x8 = self->ambiantName
  100063bd4  cbz     x8, loc_100063c30                        ; if (self->ambiantName == 0)
  100063bd8  adrp    x8, #0x10041e000
  100063bdc  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  100063be0  adrp    x8, #0x100418000
  100063be4  nop
  100063be8  ldr     x1, [x8, #0xf58]
  100063bec  bl      _objc_msgSend                            ; [ADAmbientManager sharedAmbiantManager]
  100063bf0  mov     x29, x29
  100063bf4  bl      _objc_retainAutoreleasedReturnValue
  100063bf8  mov     x20, x0
  100063bfc  ldr     x2, [x19, x21]                           ; x2 = self->ambiantName
  100063c00  adrp    x8, #0x100419000
  100063c04  nop
  100063c08  ldr     x1, [x8, #0x3f8]
  100063c0c  bl      _objc_msgSend                            ; [[ADAmbientManager sharedAmbiantManager] enemyWithAmbiantNameKilled:self->ambiantName]
  100063c10  mov     x0, x20
  100063c14  bl      _objc_release
  100063c18  ldr     x0, [x19, x21]                           ; x0 = self->ambiantName
  100063c1c  str     xzr, [x19, x21]                          ; self->ambiantName = 0
  100063c20  ldp     x29, x30, [sp, #0x20]
  100063c24  ldp     x20, x19, [sp, #0x10]
  100063c28  ldp     x22, x21, [sp], #0x30
  100063c2c  b       _objc_release
loc_100063c30:
  100063c30  ldp     x29, x30, [sp, #0x20]
  100063c34  ldp     x20, x19, [sp, #0x10]
  100063c38  ldp     x22, x21, [sp], #0x30
  100063c3c  ret
  100063c40  mov     x19, x0
  100063c44  mov     x0, x20
  100063c48  bl      _objc_release
  100063c4c  mov     x0, x19
  100063c50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy getAmbiantName]
; address 0x100063c54  size 16  kind objc
; ======================================================================
  100063c54  adrp    x8, #0x10041f000
  100063c58  ldrsw   x8, [x8, #0xb6c]                         ; ivar offset ADEnemy.ambiantName (+0x50)
  100063c5c  ldr     x0, [x0, x8]                             ; x0 = self->ambiantName
  100063c60  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADEnemy pause]
; address 0x100063c64  size 208  kind objc
; ======================================================================
  100063c64  stp     x22, x21, [sp, #-0x30]!
  100063c68  stp     x20, x19, [sp, #0x10]
  100063c6c  stp     x29, x30, [sp, #0x20]
  100063c70  add     x29, sp, #0x20
  100063c74  mov     x19, x0
  100063c78  adrp    x8, #0x100416000
  100063c7c  nop
  100063c80  ldr     x20, [x8, #0xff0]
  100063c84  mov     x1, x20
  100063c88  bl      _objc_msgSend                            ; [self sound]
  100063c8c  mov     x29, x29
  100063c90  bl      _objc_retainAutoreleasedReturnValue
  100063c94  mov     x21, x0
  100063c98  adrp    x8, #0x100417000
  100063c9c  nop
  100063ca0  ldr     x1, [x8, #0x598]
  100063ca4  bl      _objc_msgSend                            ; [[self sound] playing]
  100063ca8  adrp    x8, #0x10041f000
  100063cac  ldrsw   x8, [x8, #0xba4]                         ; ivar offset ADEnemy.soundWasPlaying (+0x58)
  100063cb0  strb    w0, [x19, x8]                            ; self->soundWasPlaying = [[self sound] playing]
  100063cb4  mov     x0, x21
  100063cb8  bl      _objc_release
  100063cbc  mov     x0, x19
  100063cc0  mov     x1, x20
  100063cc4  bl      _objc_msgSend                            ; [self sound]
  100063cc8  mov     x29, x29
  100063ccc  bl      _objc_retainAutoreleasedReturnValue
  100063cd0  mov     x20, x0
  100063cd4  adrp    x8, #0x100419000
  100063cd8  nop
  100063cdc  ldr     x1, [x8, #0x110]
  100063ce0  bl      _objc_msgSend                            ; [[self sound] pause]
  100063ce4  mov     x0, x20
  100063ce8  bl      _objc_release
  100063cec  adrp    x8, #0x10041f000
  100063cf0  ldrsw   x8, [x8, #0xb88]                         ; ivar offset ADEnemy.painSound (+0x40)
  100063cf4  ldr     x0, [x19, x8]                            ; x0 = self->painSound
  100063cf8  adrp    x8, #0x100417000
  100063cfc  nop
  100063d00  ldr     x1, [x8, #0x568]
  100063d04  ldp     x29, x30, [sp, #0x20]
  100063d08  ldp     x20, x19, [sp, #0x10]
  100063d0c  ldp     x22, x21, [sp], #0x30
  100063d10  b       _objc_msgSend                            ; [self->painSound stop]
  100063d14  mov     x19, x0
  100063d18  mov     x0, x21
  100063d1c  b       loc_100063d28
  100063d20  mov     x19, x0
  100063d24  mov     x0, x20
loc_100063d28:
  100063d28  bl      _objc_release
  100063d2c  mov     x0, x19
  100063d30  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy resume]
; address 0x100063d34  size 120  kind objc
; ======================================================================
  100063d34  stp     x20, x19, [sp, #-0x20]!
  100063d38  stp     x29, x30, [sp, #0x10]
  100063d3c  add     x29, sp, #0x10
  100063d40  adrp    x8, #0x10041f000
  100063d44  ldrsw   x8, [x8, #0xba4]                         ; ivar offset ADEnemy.soundWasPlaying (+0x58)
  100063d48  ldrb    w8, [x0, x8]                             ; w8 = self->soundWasPlaying
  100063d4c  cbz     w8, loc_100063d8c                        ; if (self->soundWasPlaying == 0)
  100063d50  adrp    x8, #0x100416000
  100063d54  nop
  100063d58  ldr     x1, [x8, #0xff0]
  100063d5c  bl      _objc_msgSend                            ; [self sound]
  100063d60  mov     x29, x29
  100063d64  bl      _objc_retainAutoreleasedReturnValue
  100063d68  mov     x19, x0
  100063d6c  adrp    x8, #0x100417000
  100063d70  nop
  100063d74  ldr     x1, [x8, #0x600]
  100063d78  bl      _objc_msgSend                            ; [[self sound] play]
  100063d7c  mov     x0, x19
  100063d80  ldp     x29, x30, [sp, #0x10]
  100063d84  ldp     x20, x19, [sp], #0x20
  100063d88  b       _objc_release
loc_100063d8c:
  100063d8c  ldp     x29, x30, [sp, #0x10]
  100063d90  ldp     x20, x19, [sp], #0x20
  100063d94  ret
  100063d98  mov     x20, x0
  100063d9c  mov     x0, x19
  100063da0  bl      _objc_release
  100063da4  mov     x0, x20
  100063da8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADEnemy playlist]
; address 0x100063dac  size 16  kind objc
; ======================================================================
  100063dac  adrp    x8, #0x10041f000
  100063db0  ldrsw   x8, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  100063db4  ldr     x0, [x0, x8]                             ; x0 = self->playlist
  100063db8  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADEnemy getType]
; address 0x100063dbc  size 8  kind objc
; ======================================================================
  100063dbc  mov     x0, #0
  100063dc0  ret

; ======================================================================
; -[ADEnemy dealloc]
; address 0x100063dc4  size 156  kind objc
; ======================================================================
  100063dc4  stp     x20, x19, [sp, #-0x20]!
  100063dc8  stp     x29, x30, [sp, #0x10]
  100063dcc  add     x29, sp, #0x10
  100063dd0  sub     sp, sp, #0x20
  100063dd4  mov     x19, x0
  100063dd8  adrp    x0, #0x1003be000
  100063ddc  add     x0, x0, #0x7f0                           ; @"Dealloc enemi"
  100063de0  bl      _NSLog                                   ; NSLog(@"Dealloc enemi", _cmd)
  100063de4  adrp    x8, #0x100419000
  100063de8  nop
  100063dec  ldr     x1, [x8, #0x300]
  100063df0  mov     x0, x19
  100063df4  bl      _objc_msgSend                            ; [self destroyEnemy]
  100063df8  str     x19, [sp, #0x10]
  100063dfc  adrp    x8, #0x10041e000
  100063e00  ldr     x8, [x8, #0xd80]
  100063e04  str     x8, [sp, #0x18]
  100063e08  adrp    x8, #0x100416000
  100063e0c  nop
  100063e10  ldr     x1, [x8, #0xfc8]
  100063e14  add     x0, sp, #0x10
  100063e18  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100063e1c  sub     sp, x29, #0x10
  100063e20  ldp     x29, x30, [sp, #0x10]
  100063e24  ldp     x20, x19, [sp], #0x20
  100063e28  ret
  100063e2c  mov     x20, x0
  100063e30  str     x19, [sp]
  100063e34  adrp    x8, #0x10041e000
  100063e38  ldr     x8, [x8, #0xd80]
  100063e3c  str     x8, [sp, #8]
  100063e40  adrp    x8, #0x100416000
  100063e44  nop
  100063e48  ldr     x1, [x8, #0xfc8]
  100063e4c  mov     x0, sp
  100063e50  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100063e54  mov     x0, x20
  100063e58  bl      __Unwind_Resume                          ; Unwind_Resume()
  100063e5c  bl      sub_10000b760

; ======================================================================
; -[ADEnemy randomAdditionalSpawnAngle]
; address 0x100063e60  size 16  kind objc
; ======================================================================
  100063e60  adrp    x8, #0x10041f000
  100063e64  ldrsw   x8, [x8, #0xba8]                         ; ivar offset ADEnemy._randomAdditionalSpawnAngle (+0x70)
  100063e68  ldr     s0, [x0, x8]                             ; s0 = self->_randomAdditionalSpawnAngle
  100063e6c  ret

; ======================================================================
; -[ADEnemy setRandomAdditionalSpawnAngle:]
; address 0x100063e70  size 16  kind objc
; ======================================================================
  100063e70  adrp    x8, #0x10041f000
  100063e74  ldrsw   x8, [x8, #0xba8]                         ; ivar offset ADEnemy._randomAdditionalSpawnAngle (+0x70)
  100063e78  str     s0, [x0, x8]                             ; self->_randomAdditionalSpawnAngle = arg1
  100063e7c  ret

; ======================================================================
; -[ADEnemy spawn_time]
; address 0x100063e80  size 16  kind objc
; ======================================================================
  100063e80  adrp    x8, #0x10041f000
  100063e84  ldrsw   x8, [x8, #0xbac]                         ; ivar offset ADEnemy._spawn_time (+0x74)
  100063e88  ldr     s0, [x0, x8]                             ; s0 = self->_spawn_time
  100063e8c  ret

; ======================================================================
; -[ADEnemy setSpawn_time:]
; address 0x100063e90  size 16  kind objc
; ======================================================================
  100063e90  adrp    x8, #0x10041f000
  100063e94  ldrsw   x8, [x8, #0xbac]                         ; ivar offset ADEnemy._spawn_time (+0x74)
  100063e98  str     s0, [x0, x8]                             ; self->_spawn_time = arg1
  100063e9c  ret

; ======================================================================
; -[ADEnemy angleFromPlayer]
; address 0x100063ea0  size 16  kind objc
; ======================================================================
  100063ea0  adrp    x8, #0x10041f000
  100063ea4  ldrsw   x8, [x8, #0xbb0]                         ; ivar offset ADEnemy._angleFromPlayer (+0x78)
  100063ea8  ldr     s0, [x0, x8]                             ; s0 = self->_angleFromPlayer
  100063eac  ret

; ======================================================================
; -[ADEnemy setAngleFromPlayer:]
; address 0x100063eb0  size 16  kind objc
; ======================================================================
  100063eb0  adrp    x8, #0x10041f000
  100063eb4  ldrsw   x8, [x8, #0xbb0]                         ; ivar offset ADEnemy._angleFromPlayer (+0x78)
  100063eb8  str     s0, [x0, x8]                             ; self->_angleFromPlayer = arg1
  100063ebc  ret

; ======================================================================
; -[ADEnemy squaredDistance]
; address 0x100063ec0  size 16  kind objc
; ======================================================================
  100063ec0  adrp    x8, #0x10041f000
  100063ec4  ldrsw   x8, [x8, #0xbb4]                         ; ivar offset ADEnemy._squaredDistance (+0x7c)
  100063ec8  ldr     s0, [x0, x8]                             ; s0 = self->_squaredDistance
  100063ecc  ret

; ======================================================================
; -[ADEnemy setSquaredDistance:]
; address 0x100063ed0  size 16  kind objc
; ======================================================================
  100063ed0  adrp    x8, #0x10041f000
  100063ed4  ldrsw   x8, [x8, #0xbb4]                         ; ivar offset ADEnemy._squaredDistance (+0x7c)
  100063ed8  str     s0, [x0, x8]                             ; self->_squaredDistance = arg1
  100063edc  ret

; ======================================================================
; -[ADEnemy attackDistance]
; address 0x100063ee0  size 16  kind objc
; ======================================================================
  100063ee0  adrp    x8, #0x10041f000
  100063ee4  ldrsw   x8, [x8, #0xbb8]                         ; ivar offset ADEnemy._attackDistance (+0x80)
  100063ee8  ldr     s0, [x0, x8]                             ; s0 = self->_attackDistance
  100063eec  ret

; ======================================================================
; -[ADEnemy setAttackDistance:]
; address 0x100063ef0  size 16  kind objc
; ======================================================================
  100063ef0  adrp    x8, #0x10041f000
  100063ef4  ldrsw   x8, [x8, #0xbb8]                         ; ivar offset ADEnemy._attackDistance (+0x80)
  100063ef8  str     s0, [x0, x8]                             ; self->_attackDistance = arg1
  100063efc  ret

; ======================================================================
; -[ADEnemy life]
; address 0x100063f00  size 16  kind objc
; ======================================================================
  100063f00  adrp    x8, #0x10041f000
  100063f04  ldrsw   x8, [x8, #0xb9c]                         ; ivar offset ADEnemy._life (+0x84)
  100063f08  ldr     s0, [x0, x8]                             ; s0 = self->_life
  100063f0c  ret

; ======================================================================
; -[ADEnemy maxLife]
; address 0x100063f10  size 16  kind objc
; ======================================================================
  100063f10  adrp    x8, #0x10041f000
  100063f14  ldrsw   x8, [x8, #0xbbc]                         ; ivar offset ADEnemy._maxLife (+0x88)
  100063f18  ldr     s0, [x0, x8]                             ; s0 = self->_maxLife
  100063f1c  ret

; ======================================================================
; -[ADEnemy setMaxLife:]
; address 0x100063f20  size 16  kind objc
; ======================================================================
  100063f20  adrp    x8, #0x10041f000
  100063f24  ldrsw   x8, [x8, #0xbbc]                         ; ivar offset ADEnemy._maxLife (+0x88)
  100063f28  str     s0, [x0, x8]                             ; self->_maxLife = arg1
  100063f2c  ret

; ======================================================================
; -[ADEnemy state]
; address 0x100063f30  size 16  kind objc
; ======================================================================
  100063f30  adrp    x8, #0x10041f000
  100063f34  ldrsw   x8, [x8, #0xb90]                         ; ivar offset ADEnemy._state (+0x8c)
  100063f38  ldr     w0, [x0, x8]                             ; w0 = self->_state
  100063f3c  ret

; ======================================================================
; -[ADEnemy tag]
; address 0x100063f40  size 16  kind objc
; ======================================================================
  100063f40  adrp    x8, #0x10041f000
  100063f44  ldrsw   x8, [x8, #0xbc0]                         ; ivar offset ADEnemy._tag (+0x90)
  100063f48  ldr     w0, [x0, x8]                             ; w0 = self->_tag
  100063f4c  ret

; ======================================================================
; -[ADEnemy setTag:]
; address 0x100063f50  size 16  kind objc
; ======================================================================
  100063f50  adrp    x8, #0x10041f000
  100063f54  ldrsw   x8, [x8, #0xbc0]                         ; ivar offset ADEnemy._tag (+0x90)
  100063f58  str     w2, [x0, x8]                             ; self->_tag = arg1
  100063f5c  ret

; ======================================================================
; -[ADEnemy comboBonus]
; address 0x100063f60  size 16  kind objc
; ======================================================================
  100063f60  adrp    x8, #0x10041f000
  100063f64  ldrsw   x8, [x8, #0xbc4]                         ; ivar offset ADEnemy._comboBonus (+0x94)
  100063f68  ldr     w0, [x0, x8]                             ; w0 = self->_comboBonus
  100063f6c  ret

; ======================================================================
; -[ADEnemy setComboBonus:]
; address 0x100063f70  size 16  kind objc
; ======================================================================
  100063f70  adrp    x8, #0x10041f000
  100063f74  ldrsw   x8, [x8, #0xbc4]                         ; ivar offset ADEnemy._comboBonus (+0x94)
  100063f78  str     w2, [x0, x8]                             ; self->_comboBonus = arg1
  100063f7c  ret

; ======================================================================
; -[ADEnemy score]
; address 0x100063f80  size 16  kind objc
; ======================================================================
  100063f80  adrp    x8, #0x10041f000
  100063f84  ldrsw   x8, [x8, #0xbc8]                         ; ivar offset ADEnemy._score (+0x98)
  100063f88  ldr     w0, [x0, x8]                             ; w0 = self->_score
  100063f8c  ret

; ======================================================================
; -[ADEnemy setScore:]
; address 0x100063f90  size 16  kind objc
; ======================================================================
  100063f90  adrp    x8, #0x10041f000
  100063f94  ldrsw   x8, [x8, #0xbc8]                         ; ivar offset ADEnemy._score (+0x98)
  100063f98  str     w2, [x0, x8]                             ; self->_score = arg1
  100063f9c  ret

; ======================================================================
; -[ADEnemy coinsReward]
; address 0x100063fa0  size 16  kind objc
; ======================================================================
  100063fa0  adrp    x8, #0x10041f000
  100063fa4  ldrsw   x8, [x8, #0xbcc]                         ; ivar offset ADEnemy._coinsReward (+0x9c)
  100063fa8  ldr     w0, [x0, x8]                             ; w0 = self->_coinsReward
  100063fac  ret

; ======================================================================
; -[ADEnemy setCoinsReward:]
; address 0x100063fb0  size 16  kind objc
; ======================================================================
  100063fb0  adrp    x8, #0x10041f000
  100063fb4  ldrsw   x8, [x8, #0xbcc]                         ; ivar offset ADEnemy._coinsReward (+0x9c)
  100063fb8  str     w2, [x0, x8]                             ; self->_coinsReward = arg1
  100063fbc  ret

; ======================================================================
; -[ADEnemy speed]
; address 0x100063fc0  size 16  kind objc
; ======================================================================
  100063fc0  adrp    x8, #0x10041f000
  100063fc4  ldrsw   x8, [x8, #0xbd0]                         ; ivar offset ADEnemy._speed (+0xa0)
  100063fc8  ldr     s0, [x0, x8]                             ; s0 = self->_speed
  100063fcc  ret

; ======================================================================
; -[ADEnemy setSpeed:]
; address 0x100063fd0  size 16  kind objc
; ======================================================================
  100063fd0  adrp    x8, #0x10041f000
  100063fd4  ldrsw   x8, [x8, #0xbd0]                         ; ivar offset ADEnemy._speed (+0xa0)
  100063fd8  str     s0, [x0, x8]                             ; self->_speed = arg1
  100063fdc  ret

; ======================================================================
; -[ADEnemy agressiveSpeed]
; address 0x100063fe0  size 16  kind objc
; ======================================================================
  100063fe0  adrp    x8, #0x10041f000
  100063fe4  ldrsw   x8, [x8, #0xbd4]                         ; ivar offset ADEnemy._agressiveSpeed (+0xa4)
  100063fe8  ldr     s0, [x0, x8]                             ; s0 = self->_agressiveSpeed
  100063fec  ret

; ======================================================================
; -[ADEnemy setAgressiveSpeed:]
; address 0x100063ff0  size 16  kind objc
; ======================================================================
  100063ff0  adrp    x8, #0x10041f000
  100063ff4  ldrsw   x8, [x8, #0xbd4]                         ; ivar offset ADEnemy._agressiveSpeed (+0xa4)
  100063ff8  str     s0, [x0, x8]                             ; self->_agressiveSpeed = arg1
  100063ffc  ret

; ======================================================================
; -[ADEnemy name]
; address 0x100064000  size 16  kind objc
; ======================================================================
  100064000  adrp    x8, #0x10041f000
  100064004  ldrsw   x8, [x8, #0xbd8]                         ; ivar offset ADEnemy._name (+0xb8)
  100064008  ldr     x0, [x0, x8]                             ; x0 = self->_name
  10006400c  ret

; ======================================================================
; -[ADEnemy setName:]
; address 0x100064010  size 56  kind objc
; ======================================================================
  100064010  stp     x20, x19, [sp, #-0x20]!
  100064014  stp     x29, x30, [sp, #0x10]
  100064018  add     x29, sp, #0x10
  10006401c  mov     x19, x0
  100064020  adrp    x8, #0x10041f000
  100064024  ldrsw   x20, [x8, #0xbd8]                        ; ivar offset ADEnemy._name (+0xb8)
  100064028  mov     x0, x2
  10006402c  bl      _objc_retain
  100064030  ldr     x8, [x19, x20]                           ; x8 = self->_name
  100064034  str     x0, [x19, x20]                           ; self->_name = arg1
  100064038  mov     x0, x8
  10006403c  ldp     x29, x30, [sp, #0x10]
  100064040  ldp     x20, x19, [sp], #0x20
  100064044  b       _objc_release

; ======================================================================
; -[ADEnemy displayName]
; address 0x100064048  size 16  kind objc
; ======================================================================
  100064048  adrp    x8, #0x10041f000
  10006404c  ldrsw   x8, [x8, #0xbdc]                         ; ivar offset ADEnemy._displayName (+0xc0)
  100064050  ldr     x0, [x0, x8]                             ; x0 = self->_displayName
  100064054  ret

; ======================================================================
; -[ADEnemy setDisplayName:]
; address 0x100064058  size 56  kind objc
; ======================================================================
  100064058  stp     x20, x19, [sp, #-0x20]!
  10006405c  stp     x29, x30, [sp, #0x10]
  100064060  add     x29, sp, #0x10
  100064064  mov     x19, x0
  100064068  adrp    x8, #0x10041f000
  10006406c  ldrsw   x20, [x8, #0xbdc]                        ; ivar offset ADEnemy._displayName (+0xc0)
  100064070  mov     x0, x2
  100064074  bl      _objc_retain
  100064078  ldr     x8, [x19, x20]                           ; x8 = self->_displayName
  10006407c  str     x0, [x19, x20]                           ; self->_displayName = arg1
  100064080  mov     x0, x8
  100064084  ldp     x29, x30, [sp, #0x10]
  100064088  ldp     x20, x19, [sp], #0x20
  10006408c  b       _objc_release

; ======================================================================
; -[ADEnemy soundsPrefix]
; address 0x100064090  size 16  kind objc
; ======================================================================
  100064090  adrp    x8, #0x10041f000
  100064094  ldrsw   x8, [x8, #0xbe0]                         ; ivar offset ADEnemy._soundsPrefix (+0xc8)
  100064098  ldr     x0, [x0, x8]                             ; x0 = self->_soundsPrefix
  10006409c  ret

; ======================================================================
; -[ADEnemy setSoundsPrefix:]
; address 0x1000640a0  size 56  kind objc
; ======================================================================
  1000640a0  stp     x20, x19, [sp, #-0x20]!
  1000640a4  stp     x29, x30, [sp, #0x10]
  1000640a8  add     x29, sp, #0x10
  1000640ac  mov     x19, x0
  1000640b0  adrp    x8, #0x10041f000
  1000640b4  ldrsw   x20, [x8, #0xbe0]                        ; ivar offset ADEnemy._soundsPrefix (+0xc8)
  1000640b8  mov     x0, x2
  1000640bc  bl      _objc_retain
  1000640c0  ldr     x8, [x19, x20]                           ; x8 = self->_soundsPrefix
  1000640c4  str     x0, [x19, x20]                           ; self->_soundsPrefix = arg1
  1000640c8  mov     x0, x8
  1000640cc  ldp     x29, x30, [sp, #0x10]
  1000640d0  ldp     x20, x19, [sp], #0x20
  1000640d4  b       _objc_release

; ======================================================================
; -[ADEnemy spawn_after]
; address 0x1000640d8  size 16  kind objc
; ======================================================================
  1000640d8  adrp    x8, #0x10041f000
  1000640dc  ldrsw   x8, [x8, #0xbe4]                         ; ivar offset ADEnemy._spawn_after (+0xd0)
  1000640e0  ldr     x0, [x0, x8]                             ; x0 = self->_spawn_after
  1000640e4  ret

; ======================================================================
; -[ADEnemy setSpawn_after:]
; address 0x1000640e8  size 56  kind objc
; ======================================================================
  1000640e8  stp     x20, x19, [sp, #-0x20]!
  1000640ec  stp     x29, x30, [sp, #0x10]
  1000640f0  add     x29, sp, #0x10
  1000640f4  mov     x19, x0
  1000640f8  adrp    x8, #0x10041f000
  1000640fc  ldrsw   x20, [x8, #0xbe4]                        ; ivar offset ADEnemy._spawn_after (+0xd0)
  100064100  mov     x0, x2
  100064104  bl      _objc_retain
  100064108  ldr     x8, [x19, x20]                           ; x8 = self->_spawn_after
  10006410c  str     x0, [x19, x20]                           ; self->_spawn_after = arg1
  100064110  mov     x0, x8
  100064114  ldp     x29, x30, [sp, #0x10]
  100064118  ldp     x20, x19, [sp], #0x20
  10006411c  b       _objc_release

; ======================================================================
; -[ADEnemy nextShotWillBeCritical]
; address 0x100064120  size 16  kind objc
; ======================================================================
  100064120  adrp    x8, #0x10041f000
  100064124  ldrsw   x8, [x8, #0xbe8]                         ; ivar offset ADEnemy._nextShotWillBeCritical (+0x69)
  100064128  ldrb    w0, [x0, x8]                             ; w0 = self->_nextShotWillBeCritical
  10006412c  ret

; ======================================================================
; -[ADEnemy setNextShotWillBeCritical:]
; address 0x100064130  size 16  kind objc
; ======================================================================
  100064130  adrp    x8, #0x10041f000
  100064134  ldrsw   x8, [x8, #0xbe8]                         ; ivar offset ADEnemy._nextShotWillBeCritical (+0x69)
  100064138  strb    w2, [x0, x8]                             ; self->_nextShotWillBeCritical = arg1
  10006413c  ret

; ======================================================================
; -[ADEnemy nextShotWillBePrecise]
; address 0x100064140  size 16  kind objc
; ======================================================================
  100064140  adrp    x8, #0x10041f000
  100064144  ldrsw   x8, [x8, #0xbec]                         ; ivar offset ADEnemy._nextShotWillBePrecise (+0x6a)
  100064148  ldrb    w0, [x0, x8]                             ; w0 = self->_nextShotWillBePrecise
  10006414c  ret

; ======================================================================
; -[ADEnemy setNextShotWillBePrecise:]
; address 0x100064150  size 16  kind objc
; ======================================================================
  100064150  adrp    x8, #0x10041f000
  100064154  ldrsw   x8, [x8, #0xbec]                         ; ivar offset ADEnemy._nextShotWillBePrecise (+0x6a)
  100064158  strb    w2, [x0, x8]                             ; self->_nextShotWillBePrecise = arg1
  10006415c  ret

; ======================================================================
; -[ADEnemy position]
; address 0x100064160  size 20  kind objc
; ======================================================================
  100064160  adrp    x8, #0x10041f000
  100064164  ldrsw   x8, [x8, #0xb80]                         ; ivar offset ADEnemy._position (+0x110)
  100064168  add     x8, x0, x8
  10006416c  ldp     d0, d1, [x8]
  100064170  ret

; ======================================================================
; -[ADEnemy timeInState]
; address 0x100064174  size 20  kind objc
; ======================================================================
  100064174  adrp    x8, #0x10041f000
  100064178  ldrsw   x8, [x8, #0xbf0]                         ; ivar offset ADEnemy._timeInState (+0xa8)
  10006417c  ldr     w8, [x0, x8]                             ; w8 = self->_timeInState
  100064180  fmov    s0, w8
  100064184  ret

; ======================================================================
; -[ADEnemy setTimeInState:]
; address 0x100064188  size 20  kind objc
; ======================================================================
  100064188  fmov    w8, s0
  10006418c  adrp    x9, #0x10041f000
  100064190  ldrsw   x9, [x9, #0xbf0]                         ; ivar offset ADEnemy._timeInState (+0xa8)
  100064194  str     w8, [x0, x9]                             ; self->_timeInState = arg1
  100064198  ret

; ======================================================================
; -[ADEnemy spawn_sound_duration]
; address 0x10006419c  size 20  kind objc
; ======================================================================
  10006419c  adrp    x8, #0x10041f000
  1000641a0  ldrsw   x8, [x8, #0xbf4]                         ; ivar offset ADEnemy._spawn_sound_duration (+0xac)
  1000641a4  ldr     w8, [x0, x8]                             ; w8 = self->_spawn_sound_duration
  1000641a8  fmov    s0, w8
  1000641ac  ret

; ======================================================================
; -[ADEnemy setSpawn_sound_duration:]
; address 0x1000641b0  size 20  kind objc
; ======================================================================
  1000641b0  fmov    w8, s0
  1000641b4  adrp    x9, #0x10041f000
  1000641b8  ldrsw   x9, [x9, #0xbf4]                         ; ivar offset ADEnemy._spawn_sound_duration (+0xac)
  1000641bc  str     w8, [x0, x9]                             ; self->_spawn_sound_duration = arg1
  1000641c0  ret

; ======================================================================
; -[ADEnemy sound]
; address 0x1000641c4  size 16  kind objc
; ======================================================================
  1000641c4  adrp    x8, #0x10041f000
  1000641c8  ldrsw   x8, [x8, #0xbf8]                         ; ivar offset ADEnemy._sound (+0xd8)
  1000641cc  ldr     x0, [x0, x8]                             ; x0 = self->_sound
  1000641d0  ret

; ======================================================================
; -[ADEnemy setSound:]
; address 0x1000641d4  size 56  kind objc
; ======================================================================
  1000641d4  stp     x20, x19, [sp, #-0x20]!
  1000641d8  stp     x29, x30, [sp, #0x10]
  1000641dc  add     x29, sp, #0x10
  1000641e0  mov     x19, x0
  1000641e4  adrp    x8, #0x10041f000
  1000641e8  ldrsw   x20, [x8, #0xbf8]                        ; ivar offset ADEnemy._sound (+0xd8)
  1000641ec  mov     x0, x2
  1000641f0  bl      _objc_retain
  1000641f4  ldr     x8, [x19, x20]                           ; x8 = self->_sound
  1000641f8  str     x0, [x19, x20]                           ; self->_sound = arg1
  1000641fc  mov     x0, x8
  100064200  ldp     x29, x30, [sp, #0x10]
  100064204  ldp     x20, x19, [sp], #0x20
  100064208  b       _objc_release

; ======================================================================
; -[ADEnemy useOwnImpactSounds]
; address 0x10006420c  size 16  kind objc
; ======================================================================
  10006420c  adrp    x8, #0x10041f000
  100064210  ldrsw   x8, [x8, #0xbfc]                         ; ivar offset ADEnemy._useOwnImpactSounds (+0x6b)
  100064214  ldrb    w0, [x0, x8]                             ; w0 = self->_useOwnImpactSounds
  100064218  ret

; ======================================================================
; -[ADEnemy setUseOwnImpactSounds:]
; address 0x10006421c  size 16  kind objc
; ======================================================================
  10006421c  adrp    x8, #0x10041f000
  100064220  ldrsw   x8, [x8, #0xbfc]                         ; ivar offset ADEnemy._useOwnImpactSounds (+0x6b)
  100064224  strb    w2, [x0, x8]                             ; self->_useOwnImpactSounds = arg1
  100064228  ret

; ======================================================================
; -[ADEnemy explosion_dictionary]
; address 0x10006422c  size 16  kind objc
; ======================================================================
  10006422c  adrp    x8, #0x10041f000
  100064230  ldrsw   x8, [x8, #0xc00]                         ; ivar offset ADEnemy._explosion_dictionary (+0xe0)
  100064234  ldr     x0, [x0, x8]                             ; x0 = self->_explosion_dictionary
  100064238  ret

; ======================================================================
; -[ADEnemy setExplosion_dictionary:]
; address 0x10006423c  size 56  kind objc
; ======================================================================
  10006423c  stp     x20, x19, [sp, #-0x20]!
  100064240  stp     x29, x30, [sp, #0x10]
  100064244  add     x29, sp, #0x10
  100064248  mov     x19, x0
  10006424c  adrp    x8, #0x10041f000
  100064250  ldrsw   x20, [x8, #0xc00]                        ; ivar offset ADEnemy._explosion_dictionary (+0xe0)
  100064254  mov     x0, x2
  100064258  bl      _objc_retain
  10006425c  ldr     x8, [x19, x20]                           ; x8 = self->_explosion_dictionary
  100064260  str     x0, [x19, x20]                           ; self->_explosion_dictionary = arg1
  100064264  mov     x0, x8
  100064268  ldp     x29, x30, [sp, #0x10]
  10006426c  ldp     x20, x19, [sp], #0x20
  100064270  b       _objc_release

; ======================================================================
; -[ADEnemy shield_dictionary]
; address 0x100064274  size 16  kind objc
; ======================================================================
  100064274  adrp    x8, #0x10041f000
  100064278  ldrsw   x8, [x8, #0xc04]                         ; ivar offset ADEnemy._shield_dictionary (+0xe8)
  10006427c  ldr     x0, [x0, x8]                             ; x0 = self->_shield_dictionary
  100064280  ret

; ======================================================================
; -[ADEnemy setShield_dictionary:]
; address 0x100064284  size 56  kind objc
; ======================================================================
  100064284  stp     x20, x19, [sp, #-0x20]!
  100064288  stp     x29, x30, [sp, #0x10]
  10006428c  add     x29, sp, #0x10
  100064290  mov     x19, x0
  100064294  adrp    x8, #0x10041f000
  100064298  ldrsw   x20, [x8, #0xc04]                        ; ivar offset ADEnemy._shield_dictionary (+0xe8)
  10006429c  mov     x0, x2
  1000642a0  bl      _objc_retain
  1000642a4  ldr     x8, [x19, x20]                           ; x8 = self->_shield_dictionary
  1000642a8  str     x0, [x19, x20]                           ; self->_shield_dictionary = arg1
  1000642ac  mov     x0, x8
  1000642b0  ldp     x29, x30, [sp, #0x10]
  1000642b4  ldp     x20, x19, [sp], #0x20
  1000642b8  b       _objc_release

; ======================================================================
; -[ADEnemy dodge_dictionary]
; address 0x1000642bc  size 16  kind objc
; ======================================================================
  1000642bc  adrp    x8, #0x10041f000
  1000642c0  ldrsw   x8, [x8, #0xc08]                         ; ivar offset ADEnemy._dodge_dictionary (+0xf0)
  1000642c4  ldr     x0, [x0, x8]                             ; x0 = self->_dodge_dictionary
  1000642c8  ret

; ======================================================================
; -[ADEnemy setDodge_dictionary:]
; address 0x1000642cc  size 56  kind objc
; ======================================================================
  1000642cc  stp     x20, x19, [sp, #-0x20]!
  1000642d0  stp     x29, x30, [sp, #0x10]
  1000642d4  add     x29, sp, #0x10
  1000642d8  mov     x19, x0
  1000642dc  adrp    x8, #0x10041f000
  1000642e0  ldrsw   x20, [x8, #0xc08]                        ; ivar offset ADEnemy._dodge_dictionary (+0xf0)
  1000642e4  mov     x0, x2
  1000642e8  bl      _objc_retain
  1000642ec  ldr     x8, [x19, x20]                           ; x8 = self->_dodge_dictionary
  1000642f0  str     x0, [x19, x20]                           ; self->_dodge_dictionary = arg1
  1000642f4  mov     x0, x8
  1000642f8  ldp     x29, x30, [sp, #0x10]
  1000642fc  ldp     x20, x19, [sp], #0x20
  100064300  b       _objc_release

; ======================================================================
; -[ADEnemy circling_dictionary]
; address 0x100064304  size 16  kind objc
; ======================================================================
  100064304  adrp    x8, #0x10041f000
  100064308  ldrsw   x8, [x8, #0xc0c]                         ; ivar offset ADEnemy._circling_dictionary (+0xf8)
  10006430c  ldr     x0, [x0, x8]                             ; x0 = self->_circling_dictionary
  100064310  ret

; ======================================================================
; -[ADEnemy setCircling_dictionary:]
; address 0x100064314  size 56  kind objc
; ======================================================================
  100064314  stp     x20, x19, [sp, #-0x20]!
  100064318  stp     x29, x30, [sp, #0x10]
  10006431c  add     x29, sp, #0x10
  100064320  mov     x19, x0
  100064324  adrp    x8, #0x10041f000
  100064328  ldrsw   x20, [x8, #0xc0c]                        ; ivar offset ADEnemy._circling_dictionary (+0xf8)
  10006432c  mov     x0, x2
  100064330  bl      _objc_retain
  100064334  ldr     x8, [x19, x20]                           ; x8 = self->_circling_dictionary
  100064338  str     x0, [x19, x20]                           ; self->_circling_dictionary = arg1
  10006433c  mov     x0, x8
  100064340  ldp     x29, x30, [sp, #0x10]
  100064344  ldp     x20, x19, [sp], #0x20
  100064348  b       _objc_release

; ======================================================================
; -[ADEnemy berserk_dictionary]
; address 0x10006434c  size 16  kind objc
; ======================================================================
  10006434c  adrp    x8, #0x10041f000
  100064350  ldrsw   x8, [x8, #0xc10]                         ; ivar offset ADEnemy._berserk_dictionary (+0x100)
  100064354  ldr     x0, [x0, x8]                             ; x0 = self->_berserk_dictionary
  100064358  ret

; ======================================================================
; -[ADEnemy setBerserk_dictionary:]
; address 0x10006435c  size 56  kind objc
; ======================================================================
  10006435c  stp     x20, x19, [sp, #-0x20]!
  100064360  stp     x29, x30, [sp, #0x10]
  100064364  add     x29, sp, #0x10
  100064368  mov     x19, x0
  10006436c  adrp    x8, #0x10041f000
  100064370  ldrsw   x20, [x8, #0xc10]                        ; ivar offset ADEnemy._berserk_dictionary (+0x100)
  100064374  mov     x0, x2
  100064378  bl      _objc_retain
  10006437c  ldr     x8, [x19, x20]                           ; x8 = self->_berserk_dictionary
  100064380  str     x0, [x19, x20]                           ; self->_berserk_dictionary = arg1
  100064384  mov     x0, x8
  100064388  ldp     x29, x30, [sp, #0x10]
  10006438c  ldp     x20, x19, [sp], #0x20
  100064390  b       _objc_release

; ======================================================================
; -[ADEnemy destroyed]
; address 0x100064394  size 20  kind objc
; ======================================================================
  100064394  adrp    x8, #0x10041f000
  100064398  ldrsw   x8, [x8, #0xc14]                         ; ivar offset ADEnemy._destroyed (+0x6c)
  10006439c  ldrb    w8, [x0, x8]                             ; w8 = self->_destroyed
  1000643a0  and     w0, w8, #1
  1000643a4  ret

; ======================================================================
; -[ADEnemy setDestroyed:]
; address 0x1000643a8  size 16  kind objc
; ======================================================================
  1000643a8  adrp    x8, #0x10041f000
  1000643ac  ldrsw   x8, [x8, #0xc14]                         ; ivar offset ADEnemy._destroyed (+0x6c)
  1000643b0  strb    w2, [x0, x8]                             ; self->_destroyed = arg1
  1000643b4  ret

; ======================================================================
; -[ADEnemy parentBrick]
; address 0x1000643b8  size 16  kind objc
; ======================================================================
  1000643b8  adrp    x8, #0x10041f000
  1000643bc  ldrsw   x8, [x8, #0xc18]                         ; ivar offset ADEnemy._parentBrick (+0x108)
  1000643c0  ldr     x0, [x0, x8]                             ; x0 = self->_parentBrick
  1000643c4  ret

; ======================================================================
; -[ADEnemy setParentBrick:]
; address 0x1000643c8  size 56  kind objc
; ======================================================================
  1000643c8  stp     x20, x19, [sp, #-0x20]!
  1000643cc  stp     x29, x30, [sp, #0x10]
  1000643d0  add     x29, sp, #0x10
  1000643d4  mov     x19, x0
  1000643d8  adrp    x8, #0x10041f000
  1000643dc  ldrsw   x20, [x8, #0xc18]                        ; ivar offset ADEnemy._parentBrick (+0x108)
  1000643e0  mov     x0, x2
  1000643e4  bl      _objc_retain
  1000643e8  ldr     x8, [x19, x20]                           ; x8 = self->_parentBrick
  1000643ec  str     x0, [x19, x20]                           ; self->_parentBrick = arg1
  1000643f0  mov     x0, x8
  1000643f4  ldp     x29, x30, [sp, #0x10]
  1000643f8  ldp     x20, x19, [sp], #0x20
  1000643fc  b       _objc_release

; ======================================================================
; -[ADEnemy requiredPlaylistActivation]
; address 0x100064400  size 16  kind objc
; ======================================================================
  100064400  adrp    x8, #0x10041f000
  100064404  ldrsw   x8, [x8, #0xc1c]                         ; ivar offset ADEnemy._requiredPlaylistActivation (+0x6d)
  100064408  ldrb    w0, [x0, x8]                             ; w0 = self->_requiredPlaylistActivation
  10006440c  ret

; ======================================================================
; -[ADEnemy setRequiredPlaylistActivation:]
; address 0x100064410  size 16  kind objc
; ======================================================================
  100064410  adrp    x8, #0x10041f000
  100064414  ldrsw   x8, [x8, #0xc1c]                         ; ivar offset ADEnemy._requiredPlaylistActivation (+0x6d)
  100064418  strb    w2, [x0, x8]                             ; self->_requiredPlaylistActivation = arg1
  10006441c  ret

; ======================================================================
; -[ADEnemy playlistActivated]
; address 0x100064420  size 16  kind objc
; ======================================================================
  100064420  adrp    x8, #0x10041f000
  100064424  ldrsw   x8, [x8, #0xc20]                         ; ivar offset ADEnemy._playlistActivated (+0x6e)
  100064428  ldrb    w0, [x0, x8]                             ; w0 = self->_playlistActivated
  10006442c  ret

; ======================================================================
; -[ADEnemy setPlaylistActivated:]
; address 0x100064430  size 16  kind objc
; ======================================================================
  100064430  adrp    x8, #0x10041f000
  100064434  ldrsw   x8, [x8, #0xc20]                         ; ivar offset ADEnemy._playlistActivated (+0x6e)
  100064438  strb    w2, [x0, x8]                             ; self->_playlistActivated = arg1
  10006443c  ret

; ======================================================================
; -[ADEnemy multiHitFactor]
; address 0x100064440  size 16  kind objc
; ======================================================================
  100064440  adrp    x8, #0x10041f000
  100064444  ldrsw   x8, [x8, #0xc24]                         ; ivar offset ADEnemy._multiHitFactor (+0xb0)
  100064448  ldr     w0, [x0, x8]                             ; w0 = self->_multiHitFactor
  10006444c  ret

; ======================================================================
; -[ADEnemy setMultiHitFactor:]
; address 0x100064450  size 16  kind objc
; ======================================================================
  100064450  adrp    x8, #0x10041f000
  100064454  ldrsw   x8, [x8, #0xc24]                         ; ivar offset ADEnemy._multiHitFactor (+0xb0)
  100064458  str     w2, [x0, x8]                             ; self->_multiHitFactor = arg1
  10006445c  ret

; ======================================================================
; -[ADEnemy .cxx_destruct]
; address 0x100064460  size 324  kind objc
; ======================================================================
  100064460  stp     x20, x19, [sp, #-0x20]!
  100064464  stp     x29, x30, [sp, #0x10]
  100064468  add     x29, sp, #0x10
  10006446c  mov     x19, x0
  100064470  adrp    x8, #0x10041f000
  100064474  ldrsw   x8, [x8, #0xc18]                         ; ivar offset ADEnemy._parentBrick (+0x108)
  100064478  add     x0, x19, x8
  10006447c  mov     x1, #0
  100064480  bl      _objc_storeStrong
  100064484  adrp    x8, #0x10041f000
  100064488  ldrsw   x8, [x8, #0xc10]                         ; ivar offset ADEnemy._berserk_dictionary (+0x100)
  10006448c  add     x0, x19, x8
  100064490  mov     x1, #0
  100064494  bl      _objc_storeStrong
  100064498  adrp    x8, #0x10041f000
  10006449c  ldrsw   x8, [x8, #0xc0c]                         ; ivar offset ADEnemy._circling_dictionary (+0xf8)
  1000644a0  add     x0, x19, x8
  1000644a4  mov     x1, #0
  1000644a8  bl      _objc_storeStrong
  1000644ac  adrp    x8, #0x10041f000
  1000644b0  ldrsw   x8, [x8, #0xc08]                         ; ivar offset ADEnemy._dodge_dictionary (+0xf0)
  1000644b4  add     x0, x19, x8
  1000644b8  mov     x1, #0
  1000644bc  bl      _objc_storeStrong
  1000644c0  adrp    x8, #0x10041f000
  1000644c4  ldrsw   x8, [x8, #0xc04]                         ; ivar offset ADEnemy._shield_dictionary (+0xe8)
  1000644c8  add     x0, x19, x8
  1000644cc  mov     x1, #0
  1000644d0  bl      _objc_storeStrong
  1000644d4  adrp    x8, #0x10041f000
  1000644d8  ldrsw   x8, [x8, #0xc00]                         ; ivar offset ADEnemy._explosion_dictionary (+0xe0)
  1000644dc  add     x0, x19, x8
  1000644e0  mov     x1, #0
  1000644e4  bl      _objc_storeStrong
  1000644e8  adrp    x8, #0x10041f000
  1000644ec  ldrsw   x8, [x8, #0xbf8]                         ; ivar offset ADEnemy._sound (+0xd8)
  1000644f0  add     x0, x19, x8
  1000644f4  mov     x1, #0
  1000644f8  bl      _objc_storeStrong
  1000644fc  adrp    x8, #0x10041f000
  100064500  ldrsw   x8, [x8, #0xbe4]                         ; ivar offset ADEnemy._spawn_after (+0xd0)
  100064504  add     x0, x19, x8
  100064508  mov     x1, #0
  10006450c  bl      _objc_storeStrong
  100064510  adrp    x8, #0x10041f000
  100064514  ldrsw   x8, [x8, #0xbe0]                         ; ivar offset ADEnemy._soundsPrefix (+0xc8)
  100064518  add     x0, x19, x8
  10006451c  mov     x1, #0
  100064520  bl      _objc_storeStrong
  100064524  adrp    x8, #0x10041f000
  100064528  ldrsw   x8, [x8, #0xbdc]                         ; ivar offset ADEnemy._displayName (+0xc0)
  10006452c  add     x0, x19, x8
  100064530  mov     x1, #0
  100064534  bl      _objc_storeStrong
  100064538  adrp    x8, #0x10041f000
  10006453c  ldrsw   x8, [x8, #0xbd8]                         ; ivar offset ADEnemy._name (+0xb8)
  100064540  add     x0, x19, x8
  100064544  mov     x1, #0
  100064548  bl      _objc_storeStrong
  10006454c  adrp    x8, #0x10041f000
  100064550  ldrsw   x8, [x8, #0xb6c]                         ; ivar offset ADEnemy.ambiantName (+0x50)
  100064554  add     x0, x19, x8
  100064558  mov     x1, #0
  10006455c  bl      _objc_storeStrong
  100064560  adrp    x8, #0x10041f000
  100064564  ldrsw   x8, [x8, #0xba0]                         ; ivar offset ADEnemy.explosionSound (+0x48)
  100064568  add     x0, x19, x8
  10006456c  mov     x1, #0
  100064570  bl      _objc_storeStrong
  100064574  adrp    x8, #0x10041f000
  100064578  ldrsw   x8, [x8, #0xb88]                         ; ivar offset ADEnemy.painSound (+0x40)
  10006457c  add     x0, x19, x8
  100064580  mov     x1, #0
  100064584  bl      _objc_storeStrong
  100064588  mov     x1, #0
  10006458c  adrp    x8, #0x10041f000
  100064590  ldrsw   x8, [x8, #0xb70]                         ; ivar offset ADEnemy.playlist (+0x38)
  100064594  add     x0, x19, x8
  100064598  ldp     x29, x30, [sp, #0x10]
  10006459c  ldp     x20, x19, [sp], #0x20
  1000645a0  b       _objc_storeStrong

; ======================================================================
; -[ADEnemy .cxx_construct]
; address 0x1000645a4  size 4  kind objc
; ======================================================================
  1000645a4  ret
