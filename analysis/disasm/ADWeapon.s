// unit ADWeapon — 73 functions
//   0x100013f94    3320  -[ADWeapon initWithDictionary:]
//   0x100014c8c    1212  -[ADWeapon update:]
//   0x100015148     200  -[ADWeapon changeState:]
//   0x100015210      48  -[ADWeapon setState:]
//   0x100015240     316  -[ADWeapon stateToString]
//   0x10001537c     144  -[ADWeapon readyToShoot]
//   0x10001540c     152  -[ADWeapon singleShot]
//   0x1000154a4     852  -[ADWeapon continuousStart]
//   0x1000157f8     184  -[ADWeapon continuousStop]
//   0x1000158b0     364  -[ADWeapon playContinuousTail]
//   0x100015a1c     612  -[ADWeapon resolveShoot]
//   0x100015c80     652  -[ADWeapon playSingleShootSound]
//   0x100015f0c     628  -[ADWeapon playClickSound]
//   0x100016180      76  -[ADWeapon spread]
//   0x1000161cc     864  -[ADWeapon reload]
//   0x10001652c     336  -[ADWeapon interruptReload]
//   0x10001667c     104  -[ADWeapon isReloading]
//   0x1000166e4     840  -[ADWeapon deploy]
//   0x100016a2c      76  -[ADWeapon clean]
//   0x100016a78     212  -[ADWeapon dealloc]
//   0x100016b4c      16  -[ADWeapon playlist]
//   0x100016b5c      56  -[ADWeapon setPlaylist:]
//   0x100016b94      16  -[ADWeapon weaponManager]
//   0x100016ba4      56  -[ADWeapon setWeaponManager:]
//   0x100016bdc      16  -[ADWeapon setSpread:]
//   0x100016bec      16  -[ADWeapon criticalSpread]
//   0x100016bfc      16  -[ADWeapon setCriticalSpread:]
//   0x100016c0c      16  -[ADWeapon criticalChance]
//   0x100016c1c      16  -[ADWeapon setCriticalChance:]
//   0x100016c2c      16  -[ADWeapon criticalMultiplier]
//   0x100016c3c      16  -[ADWeapon setCriticalMultiplier:]
//   0x100016c4c      16  -[ADWeapon continuous_spread]
//   0x100016c5c      16  -[ADWeapon setContinuous_spread:]
//   0x100016c6c      16  -[ADWeapon damages]
//   0x100016c7c      16  -[ADWeapon setDamages:]
//   0x100016c8c      16  -[ADWeapon range]
//   0x100016c9c      16  -[ADWeapon setRange:]
//   0x100016cac      16  -[ADWeapon dispersal]
//   0x100016cbc      16  -[ADWeapon setDispersal:]
//   0x100016ccc      16  -[ADWeapon reloadTime]
//   0x100016cdc      16  -[ADWeapon setReloadTime:]
//   0x100016cec      16  -[ADWeapon switchingTime]
//   0x100016cfc      16  -[ADWeapon setSwitchingTime:]
//   0x100016d0c      16  -[ADWeapon bulletsInClip]
//   0x100016d1c      16  -[ADWeapon setBulletsInClip:]
//   0x100016d2c      16  -[ADWeapon bulletsTotal]
//   0x100016d3c      16  -[ADWeapon setBulletsTotal:]
//   0x100016d4c      16  -[ADWeapon continuousFire]
//   0x100016d5c      16  -[ADWeapon setContinuousFire:]
//   0x100016d6c      16  -[ADWeapon droppedMagasine]
//   0x100016d7c      16  -[ADWeapon setDroppedMagasine:]
//   0x100016d8c      16  -[ADWeapon name]
//   0x100016d9c      56  -[ADWeapon setName:]
//   0x100016dd4      16  -[ADWeapon state]
//   0x100016de4      16  -[ADWeapon multihit]
//   0x100016df4      16  -[ADWeapon setMultihit:]
//   0x100016e04      16  -[ADWeapon capacity]
//   0x100016e14      16  -[ADWeapon setCapacity:]
//   0x100016e24      16  -[ADWeapon explosionRadius]
//   0x100016e34      16  -[ADWeapon setExplosionRadius:]
//   0x100016e44      16  -[ADWeapon explosive]
//   0x100016e54      16  -[ADWeapon setExplosive:]
//   0x100016e64      16  -[ADWeapon timeBeforeExplode]
//   0x100016e74      16  -[ADWeapon setTimeBeforeExplode:]
//   0x100016e84      16  -[ADWeapon timeInState]
//   0x100016e94      16  -[ADWeapon setTimeInState:]
//   0x100016ea4      16  -[ADWeapon fireRate]
//   0x100016eb4      16  -[ADWeapon setFireRate:]
//   0x100016ec4      16  -[ADWeapon projectileSpeed]
//   0x100016ed4      16  -[ADWeapon setProjectileSpeed:]
//   0x100016ee4      16  -[ADWeapon numShotsFired]
//   0x100016ef4      16  -[ADWeapon setNumShotsFired:]
//   0x100016f04     164  -[ADWeapon .cxx_destruct]

; ======================================================================
; -[ADWeapon initWithDictionary:]
; address 0x100013f94  size 3320  kind objc
; ======================================================================
  100013f94  stp     d9, d8, [sp, #-0x70]!
  100013f98  stp     x28, x27, [sp, #0x10]
  100013f9c  stp     x26, x25, [sp, #0x20]
  100013fa0  stp     x24, x23, [sp, #0x30]
  100013fa4  stp     x22, x21, [sp, #0x40]
  100013fa8  stp     x20, x19, [sp, #0x50]
  100013fac  stp     x29, x30, [sp, #0x60]
  100013fb0  add     x29, sp, #0x60
  100013fb4  sub     sp, sp, #0x30
  100013fb8  mov     x20, x0
  100013fbc  mov     x0, x2
  100013fc0  bl      _objc_retain
  100013fc4  mov     x19, x0
  100013fc8  str     x20, [sp, #0x20]
  100013fcc  adrp    x8, #0x10041e000
  100013fd0  ldr     x8, [x8, #0xbf0]
  100013fd4  str     x8, [sp, #0x28]
  100013fd8  adrp    x8, #0x100416000
  100013fdc  nop
  100013fe0  ldr     x1, [x8, #0xab8]
  100013fe4  mov     x26, #0
  100013fe8  add     x0, sp, #0x20
  100013fec  bl      _objc_msgSendSuper2                      ; [super init]
  100013ff0  mov     x20, x0
  100013ff4  cbz     x20, loc_100014b58                       ; if (self == 0)
  100013ff8  mov     x26, x20
  100013ffc  adrp    x8, #0x100417000
  100014000  nop
  100014004  ldr     x24, [x8, #0x40]
  100014008  adrp    x2, #0x1003b9000
  10001400c  add     x2, x2, #0xdb0                           ; @"name"
  100014010  mov     x0, x19
  100014014  mov     x1, x24
  100014018  bl      _objc_msgSend                            ; [arg1 objectForKey:@"name"]
  10001401c  mov     x29, x29
  100014020  bl      _objc_retainAutoreleasedReturnValue
  100014024  mov     x21, x0
  100014028  adrp    x8, #0x100417000
  10001402c  nop
  100014030  ldr     x1, [x8, #0x428]
  100014034  mov     x0, x20
  100014038  mov     x2, x21
  10001403c  bl      _objc_msgSend                            ; [self setName:[arg1 objectForKey:@"name"]]
  100014040  mov     x26, x20
  100014044  mov     x0, x21
  100014048  bl      _objc_release
  10001404c  adrp    x2, #0x1003ba000
  100014050  add     x2, x2, #0x3d0                           ; @"range"
  100014054  mov     x0, x19
  100014058  mov     x1, x24
  10001405c  bl      _objc_msgSend                            ; [arg1 objectForKey:@"range"]
  100014060  mov     x29, x29
  100014064  bl      _objc_retainAutoreleasedReturnValue
  100014068  mov     x21, x0
  10001406c  adrp    x8, #0x100417000
  100014070  nop
  100014074  ldr     x27, [x8, #0x48]
  100014078  mov     x1, x27
  10001407c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"range"] floatValue]
  100014080  adrp    x8, #0x100417000
  100014084  nop
  100014088  ldr     x1, [x8, #0x430]
  10001408c  mov     x0, x20
  100014090  bl      _objc_msgSend                            ; [self setRange:[[arg1 objectForKey:@"range"] floatValue]]
  100014094  mov     x26, x20
  100014098  mov     x0, x21
  10001409c  bl      _objc_release
  1000140a0  adrp    x2, #0x1003ba000
  1000140a4  add     x2, x2, #0x3f0                           ; @"multihit"
  1000140a8  mov     x0, x19
  1000140ac  mov     x1, x24
  1000140b0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"multihit"]
  1000140b4  mov     x29, x29
  1000140b8  bl      _objc_retainAutoreleasedReturnValue
  1000140bc  mov     x23, x0
  1000140c0  adrp    x8, #0x100417000
  1000140c4  nop
  1000140c8  ldr     x21, [x8, #0xd8]
  1000140cc  mov     x1, x21
  1000140d0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"multihit"] boolValue]
  1000140d4  mov     x2, x0
  1000140d8  adrp    x8, #0x100417000
  1000140dc  nop
  1000140e0  ldr     x1, [x8, #0x438]
  1000140e4  mov     x0, x20
  1000140e8  bl      _objc_msgSend                            ; [self setMultihit:[[arg1 objectForKey:@"multihit"] boolValue]]
  1000140ec  mov     x26, x20
  1000140f0  mov     x0, x23
  1000140f4  bl      _objc_release
  1000140f8  adrp    x2, #0x1003ba000
  1000140fc  add     x2, x2, #0x410                           ; @"continuousFire"
  100014100  mov     x0, x19
  100014104  mov     x1, x24
  100014108  bl      _objc_msgSend                            ; [arg1 objectForKey:@"continuousFire"]
  10001410c  mov     x29, x29
  100014110  bl      _objc_retainAutoreleasedReturnValue
  100014114  mov     x23, x0
  100014118  mov     x1, x21
  10001411c  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"continuousFire"] boolValue]
  100014120  mov     x2, x0
  100014124  adrp    x8, #0x100417000
  100014128  nop
  10001412c  ldr     x1, [x8, #0x440]
  100014130  mov     x0, x20
  100014134  bl      _objc_msgSend                            ; [self setContinuousFire:[[arg1 objectForKey:@"continuousFire"] boolValue]]
  100014138  mov     x26, x20
  10001413c  mov     x0, x23
  100014140  bl      _objc_release
  100014144  adrp    x2, #0x1003ba000
  100014148  add     x2, x2, #0x430                           ; @"explosive"
  10001414c  mov     x0, x19
  100014150  mov     x1, x24
  100014154  bl      _objc_msgSend                            ; [arg1 objectForKey:@"explosive"]
  100014158  mov     x29, x29
  10001415c  bl      _objc_retainAutoreleasedReturnValue
  100014160  mov     x23, x0
  100014164  mov     x1, x21
  100014168  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"explosive"] boolValue]
  10001416c  mov     x2, x0
  100014170  adrp    x8, #0x100417000
  100014174  nop
  100014178  ldr     x1, [x8, #0x448]
  10001417c  mov     x0, x20
  100014180  bl      _objc_msgSend                            ; [self setExplosive:[[arg1 objectForKey:@"explosive"] boolValue]]
  100014184  mov     x26, x20
  100014188  mov     x0, x23
  10001418c  bl      _objc_release
  100014190  adrp    x8, #0x10041d000
  100014194  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100014198  adrp    x8, #0x100416000
  10001419c  nop
  1000141a0  ldr     x1, [x8, #0xec8]
  1000141a4  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000141a8  mov     x29, x29
  1000141ac  bl      _objc_retainAutoreleasedReturnValue
  1000141b0  mov     x21, x0
  1000141b4  adrp    x8, #0x100417000
  1000141b8  nop
  1000141bc  ldr     x25, [x8, #0x450]
  1000141c0  mov     x0, x20
  1000141c4  mov     x1, x25
  1000141c8  bl      _objc_msgSend                            ; [self name]
  1000141cc  mov     x29, x29
  1000141d0  bl      _objc_retainAutoreleasedReturnValue
  1000141d4  mov     x23, x0
  1000141d8  adrp    x8, #0x100417000
  1000141dc  nop
  1000141e0  ldr     x1, [x8, #0x458]
  1000141e4  mov     x0, x21
  1000141e8  mov     x2, x23
  1000141ec  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]
  1000141f0  mov     x22, x0
  1000141f4  mov     x26, x20
  1000141f8  mov     x0, x23
  1000141fc  bl      _objc_release
  100014200  mov     x0, x21
  100014204  bl      _objc_release
  100014208  adrp    x8, #0x10041d000
  10001420c  ldr     x0, [x8, #0xf78]                         ; class NSString
  100014210  adrp    x8, #0x100416000
  100014214  nop
  100014218  ldr     x28, [x8, #0xee8]
  10001421c  str     x22, [sp]
  100014220  adrp    x2, #0x1003ba000
  100014224  add     x2, x2, #0x450                           ; @"level_%i"
  100014228  mov     x1, x28
  10001422c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]
  100014230  mov     x29, x29
  100014234  bl      _objc_retainAutoreleasedReturnValue
  100014238  mov     x23, x0
  10001423c  mov     x0, x19
  100014240  mov     x1, x24
  100014244  mov     x2, x23
  100014248  bl      _objc_msgSend                            ; [arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]]
  10001424c  mov     x29, x29
  100014250  bl      _objc_retainAutoreleasedReturnValue
  100014254  mov     x21, x0
  100014258  mov     x0, x23
  10001425c  bl      _objc_release
  100014260  adrp    x8, #0x100417000
  100014264  nop
  100014268  ldr     x1, [x8, #0x460]
  10001426c  mov     x0, x20
  100014270  bl      _objc_msgSend                            ; [self self]
  100014274  mov     x29, x29
  100014278  bl      _objc_retainAutoreleasedReturnValue
  10001427c  mov     x23, x0
  100014280  adrp    x2, #0x1003ba000
  100014284  add     x2, x2, #0x470                           ; @"fireRate"
  100014288  mov     x0, x21
  10001428c  mov     x1, x24
  100014290  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"fireRate"]
  100014294  mov     x29, x29
  100014298  bl      _objc_retainAutoreleasedReturnValue
  10001429c  mov     x26, x0
  1000142a0  mov     x1, x27
  1000142a4  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"fireRate"] floatValue]
  1000142a8  adrp    x8, #0x100417000
  1000142ac  nop
  1000142b0  ldr     x1, [x8, #0x468]
  1000142b4  mov     x0, x23
  1000142b8  bl      _objc_msgSend                            ; [[self self] setFireRate:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"fireRate"] floatValue]]
  1000142bc  mov     x0, x26
  1000142c0  bl      _objc_release
  1000142c4  mov     x0, x23
  1000142c8  bl      _objc_release
  1000142cc  adrp    x2, #0x1003ba000
  1000142d0  add     x2, x2, #0x490                           ; @"damages"
  1000142d4  mov     x0, x21
  1000142d8  mov     x1, x24
  1000142dc  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"damages"]
  1000142e0  mov     x29, x29
  1000142e4  bl      _objc_retainAutoreleasedReturnValue
  1000142e8  mov     x23, x0
  1000142ec  mov     x1, x27
  1000142f0  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"damages"] floatValue]
  1000142f4  adrp    x8, #0x100417000
  1000142f8  nop
  1000142fc  ldr     x1, [x8, #0x470]
  100014300  mov     x0, x20
  100014304  bl      _objc_msgSend                            ; [self setDamages:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"damages"] floatValue]]
  100014308  mov     x0, x23
  10001430c  bl      _objc_release
  100014310  adrp    x2, #0x1003ba000
  100014314  add     x2, x2, #0x4b0                           ; @"spread"
  100014318  mov     x0, x21
  10001431c  mov     x1, x24
  100014320  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"spread"]
  100014324  mov     x29, x29
  100014328  bl      _objc_retainAutoreleasedReturnValue
  10001432c  mov     x23, x0
  100014330  mov     x1, x27
  100014334  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"spread"] floatValue]
  100014338  adrp    x8, #0x100417000
  10001433c  nop
  100014340  ldr     x22, [x8, #0x478]
  100014344  mov     x0, x20
  100014348  mov     x1, x22
  10001434c  bl      _objc_msgSend                            ; [self setSpread:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"spread"] floatValue]]
  100014350  str     x22, [sp, #0x10]
  100014354  mov     x0, x23
  100014358  bl      _objc_release
  10001435c  adrp    x2, #0x1003ba000
  100014360  add     x2, x2, #0x4d0                           ; @"criticalSpread"
  100014364  mov     x0, x21
  100014368  mov     x1, x24
  10001436c  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalSpread"]
  100014370  mov     x29, x29
  100014374  bl      _objc_retainAutoreleasedReturnValue
  100014378  mov     x23, x0
  10001437c  mov     x1, x27
  100014380  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalSpread"] floatValue]
  100014384  adrp    x8, #0x100417000
  100014388  nop
  10001438c  ldr     x1, [x8, #0x480]
  100014390  mov     x0, x20
  100014394  bl      _objc_msgSend                            ; [self setCriticalSpread:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalSpread"] floatValue]]
  100014398  mov     x0, x23
  10001439c  bl      _objc_release
  1000143a0  adrp    x2, #0x1003ba000
  1000143a4  add     x2, x2, #0x4f0                           ; @"criticalChance"
  1000143a8  mov     x0, x21
  1000143ac  mov     x1, x24
  1000143b0  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalChance"]
  1000143b4  mov     x29, x29
  1000143b8  bl      _objc_retainAutoreleasedReturnValue
  1000143bc  mov     x23, x0
  1000143c0  mov     x1, x27
  1000143c4  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalChance"] floatValue]
  1000143c8  adrp    x8, #0x100417000
  1000143cc  nop
  1000143d0  ldr     x1, [x8, #0x488]
  1000143d4  str     x1, [sp, #0x18]
  1000143d8  mov     x0, x20
  1000143dc  bl      _objc_msgSend                            ; [self setCriticalChance:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalChance"] floatValue]]
  1000143e0  mov     x0, x23
  1000143e4  bl      _objc_release
  1000143e8  adrp    x2, #0x1003ba000
  1000143ec  add     x2, x2, #0x510                           ; @"criticalMultiplier"
  1000143f0  mov     x0, x21
  1000143f4  mov     x1, x24
  1000143f8  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalMultiplier"]
  1000143fc  mov     x29, x29
  100014400  bl      _objc_retainAutoreleasedReturnValue
  100014404  mov     x23, x0
  100014408  mov     x1, x27
  10001440c  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalMultiplier"] floatValue]
  100014410  adrp    x8, #0x100417000
  100014414  nop
  100014418  ldr     x1, [x8, #0x490]
  10001441c  mov     x0, x20
  100014420  bl      _objc_msgSend                            ; [self setCriticalMultiplier:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"criticalMultiplier"] floatValue]]
  100014424  mov     x0, x23
  100014428  bl      _objc_release
  10001442c  adrp    x2, #0x1003ba000
  100014430  add     x2, x2, #0x530                           ; @"continuous_spread"
  100014434  mov     x0, x21
  100014438  mov     x1, x24
  10001443c  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"continuous_spread"]
  100014440  mov     x29, x29
  100014444  bl      _objc_retainAutoreleasedReturnValue
  100014448  mov     x23, x0
  10001444c  mov     x1, x27
  100014450  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"continuous_spread"] floatValue]
  100014454  adrp    x8, #0x100417000
  100014458  nop
  10001445c  ldr     x1, [x8, #0x498]
  100014460  str     x1, [sp, #8]
  100014464  mov     x0, x20
  100014468  bl      _objc_msgSend                            ; [self setContinuous_spread:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"continuous_spread"] floatValue]]
  10001446c  mov     x0, x23
  100014470  bl      _objc_release
  100014474  adrp    x2, #0x1003ba000
  100014478  add     x2, x2, #0x550                           ; @"dispersal"
  10001447c  mov     x0, x21
  100014480  mov     x1, x24
  100014484  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"dispersal"]
  100014488  mov     x29, x29
  10001448c  bl      _objc_retainAutoreleasedReturnValue
  100014490  mov     x22, x0
  100014494  bl      _objc_release
  100014498  cbz     x22, loc_1000144e4                       ; if ([[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"dispersal"] == 0)
  10001449c  adrp    x2, #0x1003ba000
  1000144a0  add     x2, x2, #0x550                           ; @"dispersal"
  1000144a4  mov     x0, x21
  1000144a8  mov     x1, x24
  1000144ac  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"dispersal"]
  1000144b0  mov     x29, x29
  1000144b4  bl      _objc_retainAutoreleasedReturnValue
  1000144b8  mov     x23, x0
  1000144bc  mov     x1, x27
  1000144c0  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"dispersal"] floatValue]
  1000144c4  adrp    x8, #0x100417000
  1000144c8  nop
  1000144cc  ldr     x1, [x8, #0x4a0]
  1000144d0  mov     x0, x20
  1000144d4  bl      _objc_msgSend                            ; [self setDispersal:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"dispersal"] floatValue]]
  1000144d8  mov     x0, x23
  1000144dc  bl      _objc_release
  1000144e0  b       loc_100014500
loc_1000144e4:
  1000144e4  adrp    x8, #0x100417000
  1000144e8  nop
  1000144ec  ldr     x1, [x8, #0x4a0]
  1000144f0  adrp    x8, #0x100181000
  1000144f4  ldr     s0, [x8, #0xa10]                         ; s0 = 100.0
  1000144f8  mov     x0, x20
  1000144fc  bl      _objc_msgSend                            ; [self setDispersal:100]
loc_100014500:
  100014500  adrp    x2, #0x1003ba000
  100014504  add     x2, x2, #0x570                           ; @"explosionRadius"
  100014508  mov     x0, x21
  10001450c  mov     x1, x24
  100014510  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"explosionRadius"]
  100014514  mov     x29, x29
  100014518  bl      _objc_retainAutoreleasedReturnValue
  10001451c  mov     x23, x0
  100014520  mov     x1, x27
  100014524  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"explosionRadius"] floatValue]
  100014528  adrp    x8, #0x100417000
  10001452c  nop
  100014530  ldr     x1, [x8, #0x4a8]
  100014534  mov     x0, x20
  100014538  bl      _objc_msgSend                            ; [self setExplosionRadius:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"explosionRadius"] floatValue]]
  10001453c  mov     x0, x23
  100014540  bl      _objc_release
  100014544  adrp    x2, #0x1003ba000
  100014548  add     x2, x2, #0x590                           ; @"projectileSpeed"
  10001454c  mov     x0, x21
  100014550  mov     x1, x24
  100014554  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"projectileSpeed"]
  100014558  mov     x29, x29
  10001455c  bl      _objc_retainAutoreleasedReturnValue
  100014560  mov     x23, x0
  100014564  mov     x1, x27
  100014568  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"projectileSpeed"] floatValue]
  10001456c  adrp    x8, #0x100417000
  100014570  nop
  100014574  ldr     x1, [x8, #0x4b0]
  100014578  mov     x0, x20
  10001457c  bl      _objc_msgSend                            ; [self setProjectileSpeed:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"projectileSpeed"] floatValue]]
  100014580  mov     x0, x23
  100014584  bl      _objc_release
  100014588  adrp    x2, #0x1003ba000
  10001458c  add     x2, x2, #0x5b0                           ; @"reloadTime"
  100014590  mov     x0, x21
  100014594  mov     x1, x24
  100014598  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"reloadTime"]
  10001459c  mov     x29, x29
  1000145a0  bl      _objc_retainAutoreleasedReturnValue
  1000145a4  mov     x23, x0
  1000145a8  mov     x1, x27
  1000145ac  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"reloadTime"] floatValue]
  1000145b0  adrp    x8, #0x100417000
  1000145b4  nop
  1000145b8  ldr     x1, [x8, #0x4b8]
  1000145bc  mov     x0, x20
  1000145c0  bl      _objc_msgSend                            ; [self setReloadTime:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"reloadTime"] floatValue]]
  1000145c4  mov     x0, x23
  1000145c8  bl      _objc_release
  1000145cc  adrp    x2, #0x1003ba000
  1000145d0  add     x2, x2, #0x5d0                           ; @"timeBeforeExplode"
  1000145d4  mov     x0, x21
  1000145d8  mov     x1, x24
  1000145dc  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"timeBeforeExplode"]
  1000145e0  mov     x29, x29
  1000145e4  bl      _objc_retainAutoreleasedReturnValue
  1000145e8  mov     x23, x0
  1000145ec  mov     x1, x27
  1000145f0  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"timeBeforeExplode"] floatValue]
  1000145f4  adrp    x8, #0x100417000
  1000145f8  nop
  1000145fc  ldr     x1, [x8, #0x4c0]
  100014600  mov     x0, x20
  100014604  bl      _objc_msgSend                            ; [self setTimeBeforeExplode:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"timeBeforeExplode"] floatValue]]
  100014608  mov     x0, x23
  10001460c  bl      _objc_release
  100014610  adrp    x2, #0x1003ba000
  100014614  add     x2, x2, #0x5f0                           ; @"capacity"
  100014618  mov     x0, x21
  10001461c  mov     x1, x24
  100014620  bl      _objc_msgSend                            ; [[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"capacity"]
  100014624  mov     x29, x29
  100014628  bl      _objc_retainAutoreleasedReturnValue
  10001462c  mov     x23, x0
  100014630  adrp    x8, #0x100417000
  100014634  nop
  100014638  ldr     x1, [x8, #0x110]
  10001463c  bl      _objc_msgSend                            ; [[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"capacity"] intValue]
  100014640  mov     x2, x0
  100014644  adrp    x8, #0x100417000
  100014648  nop
  10001464c  ldr     x24, [x8, #0x4c8]
  100014650  mov     x0, x20
  100014654  mov     x1, x24
  100014658  bl      _objc_msgSend                            ; [self setCapacity:[[[arg1 objectForKey:[NSString stringWithFormat:@"level_%i", [[ADInventory sharedInventory] levelForWeaponWithName:[self name]]]] objectForKey:@"capacity"] intValue]]
  10001465c  mov     x0, x23
  100014660  bl      _objc_release
  100014664  adrp    x8, #0x100417000
  100014668  nop
  10001466c  ldr     x1, [x8, #0x4d0]
  100014670  fmov    s0, #1.00000000
  100014674  mov     x0, x20
  100014678  bl      _objc_msgSend                            ; [self setSwitchingTime:1]
  10001467c  adrp    x8, #0x100417000
  100014680  nop
  100014684  ldr     x22, [x8, #0x4d8]
  100014688  mov     x0, x20
  10001468c  mov     x1, x22
  100014690  bl      _objc_msgSend                            ; [self capacity]
  100014694  mov     x2, x0
  100014698  adrp    x8, #0x100417000
  10001469c  nop
  1000146a0  ldr     x27, [x8, #0x4e0]
  1000146a4  mov     x0, x20
  1000146a8  mov     x1, x27
  1000146ac  bl      _objc_msgSend                            ; [self setBulletsInClip:[self capacity]]
  1000146b0  adrp    x8, #0x100417000
  1000146b4  nop
  1000146b8  ldr     x1, [x8, #0x4e8]
  1000146bc  mov     w2, #0x7fffffff
  1000146c0  mov     x0, x20
  1000146c4  bl      _objc_msgSend                            ; [self setBulletsTotal:0x7fffffff]
  1000146c8  adrp    x8, #0x10041f000
  1000146cc  ldrsw   x8, [x8, #0x558]                         ; ivar offset ADWeapon.timeSinceLastShot (+0xc)
  1000146d0  str     wzr, [x20, x8]                           ; self->timeSinceLastShot = 0
  1000146d4  adrp    x8, #0x10041d000
  1000146d8  ldr     x26, [x8, #0xf78]                        ; class NSString
  1000146dc  mov     x0, x20
  1000146e0  mov     x1, x25
  1000146e4  bl      _objc_msgSend                            ; [self name]
  1000146e8  mov     x29, x29
  1000146ec  bl      _objc_retainAutoreleasedReturnValue
  1000146f0  mov     x23, x0
  1000146f4  str     x23, [sp]
  1000146f8  adrp    x2, #0x1003ba000
  1000146fc  add     x2, x2, #0x610                           ; @"weapon_gun_%@_fire"
  100014700  mov     x0, x26
  100014704  mov     x1, x28
  100014708  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_fire", [self name]]
  10001470c  mov     x29, x29
  100014710  bl      _objc_retainAutoreleasedReturnValue
  100014714  adrp    x8, #0x10041f000
  100014718  ldrsw   x9, [x8, #0x55c]                         ; ivar offset ADWeapon.fireSoundPrefix (+0x18)
  10001471c  ldr     x8, [x20, x9]                            ; x8 = self->fireSoundPrefix
  100014720  str     x0, [x20, x9]                            ; self->fireSoundPrefix = [NSString stringWithFormat:@"weapon_gun_%@_fire", [self name]]
  100014724  mov     x0, x8
  100014728  bl      _objc_release
  10001472c  mov     x0, x23
  100014730  bl      _objc_release
  100014734  adrp    x8, #0x10041d000
  100014738  ldr     x26, [x8, #0xf78]                        ; class NSString
  10001473c  mov     x0, x20
  100014740  mov     x1, x25
  100014744  bl      _objc_msgSend                            ; [self name]
  100014748  mov     x29, x29
  10001474c  bl      _objc_retainAutoreleasedReturnValue
  100014750  mov     x23, x0
  100014754  str     x23, [sp]
  100014758  adrp    x2, #0x1003ba000
  10001475c  add     x2, x2, #0x630                           ; @"weapon_gun_%@_empty"
  100014760  mov     x0, x26
  100014764  mov     x1, x28
  100014768  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_empty", [self name]]
  10001476c  mov     x29, x29
  100014770  bl      _objc_retainAutoreleasedReturnValue
  100014774  adrp    x8, #0x10041f000
  100014778  ldrsw   x9, [x8, #0x560]                         ; ivar offset ADWeapon.clickSoundPrefix (+0x20)
  10001477c  ldr     x8, [x20, x9]                            ; x8 = self->clickSoundPrefix
  100014780  str     x0, [x20, x9]                            ; self->clickSoundPrefix = [NSString stringWithFormat:@"weapon_gun_%@_empty", [self name]]
  100014784  mov     x0, x8
  100014788  bl      _objc_release
  10001478c  mov     x0, x23
  100014790  bl      _objc_release
  100014794  adrp    x8, #0x10041d000
  100014798  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10001479c  adrp    x8, #0x100417000
  1000147a0  nop
  1000147a4  ldr     x1, [x8, #0x4f0]
  1000147a8  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000147ac  mov     x29, x29
  1000147b0  bl      _objc_retainAutoreleasedReturnValue
  1000147b4  mov     x28, x0
  1000147b8  mov     x0, x20
  1000147bc  mov     x1, x25
  1000147c0  bl      _objc_msgSend                            ; [self name]
  1000147c4  mov     x29, x29
  1000147c8  bl      _objc_retainAutoreleasedReturnValue
  1000147cc  mov     x25, x0
  1000147d0  adrp    x8, #0x100417000
  1000147d4  nop
  1000147d8  ldr     x1, [x8, #0x4f8]
  1000147dc  mov     x0, x28
  1000147e0  mov     x2, x25
  1000147e4  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:[self name]]
  1000147e8  mov     x29, x29
  1000147ec  bl      _objc_retainAutoreleasedReturnValue
  1000147f0  mov     x23, x0
  1000147f4  adrp    x8, #0x100417000
  1000147f8  nop
  1000147fc  ldr     x1, [x8, #0x500]
  100014800  mov     x0, x20
  100014804  mov     x2, x23
  100014808  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:[self name]]]
  10001480c  mov     x0, x23
  100014810  bl      _objc_release
  100014814  mov     x0, x25
  100014818  bl      _objc_release
  10001481c  mov     x0, x28
  100014820  bl      _objc_release
  100014824  adrp    x8, #0x100416000
  100014828  nop
  10001482c  ldr     x1, [x8, #0xc98]
  100014830  mov     x0, x20
  100014834  bl      _objc_msgSend                            ; [self playlist]
  100014838  mov     x29, x29
  10001483c  bl      _objc_retainAutoreleasedReturnValue
  100014840  mov     x23, x0
  100014844  adrp    x8, #0x100417000
  100014848  nop
  10001484c  ldr     x1, [x8, #0x508]
  100014850  bl      _objc_msgSend                            ; [[self playlist] activate]
  100014854  mov     x0, x23
  100014858  bl      _objc_release
  10001485c  adrp    x8, #0x100416000
  100014860  nop
  100014864  ldr     x1, [x8, #0xc78]
  100014868  mov     w2, #0
  10001486c  mov     x0, x20
  100014870  bl      _objc_msgSend                            ; [self setState:0]
  100014874  adrp    x28, #0x10041e000
  100014878  ldr     x0, [x28]                                ; class ADGameModifiers
  10001487c  adrp    x8, #0x100417000
  100014880  nop
  100014884  ldr     x25, [x8, #0x510]
  100014888  mov     x1, x25
  10001488c  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100014890  mov     x29, x29
  100014894  bl      _objc_retainAutoreleasedReturnValue
  100014898  mov     x23, x0
  10001489c  adrp    x8, #0x100417000
  1000148a0  nop
  1000148a4  ldr     x1, [x8, #0x518]
  1000148a8  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] goldenBullet]
  1000148ac  mov     x26, x0
  1000148b0  mov     x0, x23
  1000148b4  bl      _objc_release
  1000148b8  cbz     w26, loc_100014930                       ; if ([[ADGameModifiers sharedModifiers] goldenBullet] == 0)
  1000148bc  mov     x0, x20
  1000148c0  mov     x1, x22
  1000148c4  bl      _objc_msgSend                            ; [self capacity]
  1000148c8  mov     x23, x0
  1000148cc  mov     w26, #0x66660000
  1000148d0  movk    w26, #0x6667
  1000148d4  mov     x0, x20
  1000148d8  mov     x1, x22
  1000148dc  bl      _objc_msgSend                            ; [self capacity]
  1000148e0  sxtw    x8, w23
  1000148e4  mul     x8, x8, x26
  1000148e8  lsr     x9, x8, #0x3f
  1000148ec  asr     x8, x8, #0x22
  1000148f0  add     w8, w8, w9
  1000148f4  cmp     w8, #1
  1000148f8  mov     w9, #1
  1000148fc  csel    w8, w9, w8, lt                           ; t1 = (((([self capacity] * 0x66666667) >> 34) + (([self capacity] * 0x66666667) >>> 63)) < 1 ? 1 : ((([self capacity] * 0x66666667) >> 34) + (([self capacity] * 0x66666667) >>> 63)))
  100014900  add     w2, w0, w8
  100014904  mov     x0, x20
  100014908  mov     x1, x24
  10001490c  bl      _objc_msgSend                            ; [self setCapacity:([self capacity] + t1)]
  100014910  mov     x0, x20
  100014914  mov     x1, x22
  100014918  bl      _objc_msgSend                            ; [self capacity]
  10001491c  mov     x2, x0
  100014920  mov     x0, x20
  100014924  mov     x1, x27
  100014928  bl      _objc_msgSend                            ; [self setBulletsInClip:[self capacity]]
  10001492c  b       loc_1000149f8
loc_100014930:
  100014930  ldr     x0, [x28]                                ; class ADGameModifiers
  100014934  mov     x1, x25
  100014938  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10001493c  mov     x29, x29
  100014940  bl      _objc_retainAutoreleasedReturnValue
  100014944  mov     x23, x0
  100014948  adrp    x8, #0x100417000
  10001494c  nop
  100014950  ldr     x1, [x8, #0x520]
  100014954  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] lessBullets]
  100014958  mov     x26, x0
  10001495c  mov     x0, x23
  100014960  bl      _objc_release
  100014964  cbz     w26, loc_1000149f8                       ; if ([[ADGameModifiers sharedModifiers] lessBullets] == 0)
  100014968  mov     x0, x20
  10001496c  mov     x1, x22
  100014970  bl      _objc_msgSend                            ; [self capacity]
  100014974  mov     x23, x0
  100014978  mov     w26, #0x66660000
  10001497c  movk    w26, #0x6667
  100014980  mov     x0, x20
  100014984  mov     x1, x22
  100014988  bl      _objc_msgSend                            ; [self capacity]
  10001498c  sxtw    x8, w23
  100014990  mul     x8, x8, x26
  100014994  lsr     x9, x8, #0x3f
  100014998  asr     x8, x8, #0x22
  10001499c  add     w8, w8, w9
  1000149a0  cmp     w8, #1
  1000149a4  mov     w9, #1
  1000149a8  csel    w8, w9, w8, lt                           ; t2 = (((([self capacity] * 0x66666667) >> 34) + (([self capacity] * 0x66666667) >>> 63)) < 1 ? 1 : ((([self capacity] * 0x66666667) >> 34) + (([self capacity] * 0x66666667) >>> 63)))
  1000149ac  sub     w2, w0, w8
  1000149b0  mov     x0, x20
  1000149b4  mov     x1, x24
  1000149b8  bl      _objc_msgSend                            ; [self setCapacity:([self capacity] - t2)]
  1000149bc  mov     x0, x20
  1000149c0  mov     x1, x22
  1000149c4  bl      _objc_msgSend                            ; [self capacity]
  1000149c8  cbnz    w0, loc_1000149dc                        ; if ([self capacity] != 0)
  1000149cc  mov     w2, #1
  1000149d0  mov     x0, x20
  1000149d4  mov     x1, x24
  1000149d8  bl      _objc_msgSend                            ; [self setCapacity:1]
loc_1000149dc:
  1000149dc  mov     x0, x20
  1000149e0  mov     x1, x22
  1000149e4  bl      _objc_msgSend                            ; [self capacity]
  1000149e8  mov     x2, x0
  1000149ec  mov     x0, x20
  1000149f0  mov     x1, x27
  1000149f4  bl      _objc_msgSend                            ; [self setBulletsInClip:[self capacity]]
loc_1000149f8:
  1000149f8  ldr     x0, [x28]                                ; class ADGameModifiers
  1000149fc  mov     x1, x25
  100014a00  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100014a04  mov     x29, x29
  100014a08  bl      _objc_retainAutoreleasedReturnValue
  100014a0c  mov     x23, x0
  100014a10  adrp    x8, #0x100417000
  100014a14  nop
  100014a18  ldr     x22, [x8, #0x528]
  100014a1c  mov     x1, x22
  100014a20  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] spreadModifier]
  100014a24  mov     v8.16b, v0.16b
  100014a28  mov     x0, x23
  100014a2c  bl      _objc_release
  100014a30  fcmp    s8, #0.0
  100014a34  b.eq    loc_100014ad8                            ; if ([[ADGameModifiers sharedModifiers] spreadModifier] == 0.0)
  100014a38  ldr     x0, [x28]                                ; class ADGameModifiers
  100014a3c  mov     x1, x25
  100014a40  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100014a44  mov     x29, x29
  100014a48  bl      _objc_retainAutoreleasedReturnValue
  100014a4c  mov     x24, x0
  100014a50  mov     x1, x22
  100014a54  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] spreadModifier]
  100014a58  mov     v8.16b, v0.16b
  100014a5c  adrp    x8, #0x100417000
  100014a60  nop
  100014a64  ldr     x1, [x8, #0x530]
  100014a68  mov     x0, x20
  100014a6c  bl      _objc_msgSend                            ; [self continuous_spread]
  100014a70  fadd    s0, s8, s0
  100014a74  mov     x0, x20
  100014a78  ldr     x1, [sp, #8]
  100014a7c  bl      _objc_msgSend                            ; [self setContinuous_spread:([[ADGameModifiers sharedModifiers] spreadModifier] + [self continuous_spread])]
  100014a80  mov     x0, x24
  100014a84  bl      _objc_release
  100014a88  ldr     x0, [x28]                                ; class ADGameModifiers
  100014a8c  mov     x1, x25
  100014a90  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100014a94  mov     x29, x29
  100014a98  bl      _objc_retainAutoreleasedReturnValue
  100014a9c  mov     x24, x0
  100014aa0  mov     x1, x22
  100014aa4  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] spreadModifier]
  100014aa8  mov     v8.16b, v0.16b
  100014aac  adrp    x8, #0x100417000
  100014ab0  nop
  100014ab4  ldr     x1, [x8, #0x538]
  100014ab8  mov     x0, x20
  100014abc  bl      _objc_msgSend                            ; [self spread]
  100014ac0  fadd    s0, s8, s0
  100014ac4  mov     x0, x20
  100014ac8  ldr     x1, [sp, #0x10]
  100014acc  bl      _objc_msgSend                            ; [self setSpread:([[ADGameModifiers sharedModifiers] spreadModifier] + [self spread])]
  100014ad0  mov     x0, x24
  100014ad4  bl      _objc_release
loc_100014ad8:
  100014ad8  adrp    x8, #0x10041f000
  100014adc  ldrsw   x8, [x8, #0x564]                         ; ivar offset ADWeapon.lastAnnouncerSpeech (+0x38)
  100014ae0  mov     w9, #0x40a00000
  100014ae4  str     w9, [x20, x8]                            ; self->lastAnnouncerSpeech = 0x40a00000
  100014ae8  ldr     x0, [x28]                                ; class ADGameModifiers
  100014aec  mov     x1, x25
  100014af0  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100014af4  mov     x29, x29
  100014af8  bl      _objc_retainAutoreleasedReturnValue
  100014afc  mov     x24, x0
  100014b00  adrp    x8, #0x100417000
  100014b04  nop
  100014b08  ldr     x1, [x8, #0x540]
  100014b0c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] headShotModifier]
  100014b10  mov     v8.16b, v0.16b
  100014b14  adrp    x8, #0x100417000
  100014b18  nop
  100014b1c  ldr     x1, [x8, #0x548]
  100014b20  mov     x0, x20
  100014b24  bl      _objc_msgSend                            ; [self criticalChance]
  100014b28  fmul    s0, s8, s0
  100014b2c  mov     x0, x20
  100014b30  ldr     x1, [sp, #0x18]
  100014b34  bl      _objc_msgSend                            ; [self setCriticalChance:([[ADGameModifiers sharedModifiers] headShotModifier] * [self criticalChance])]
  100014b38  mov     x0, x24
  100014b3c  bl      _objc_release
  100014b40  bl      _CACurrentMediaTime                      ; CACurrentMediaTime()
  100014b44  adrp    x8, #0x10041f000
  100014b48  ldrsw   x8, [x8, #0x568]                         ; ivar offset ADWeapon.previousTickTime (+0x40)
  100014b4c  str     d0, [x20, x8]                            ; self->previousTickTime = d0
  100014b50  mov     x0, x21
  100014b54  bl      _objc_release
loc_100014b58:
  100014b58  mov     x0, x19
  100014b5c  bl      _objc_release
  100014b60  mov     x0, x20
  100014b64  sub     sp, x29, #0x60
  100014b68  ldp     x29, x30, [sp, #0x60]
  100014b6c  ldp     x20, x19, [sp, #0x50]
  100014b70  ldp     x22, x21, [sp, #0x40]
  100014b74  ldp     x24, x23, [sp, #0x30]
  100014b78  ldp     x26, x25, [sp, #0x20]
  100014b7c  ldp     x28, x27, [sp, #0x10]
  100014b80  ldp     d9, d8, [sp], #0x70
  100014b84  ret
loc_100014b88:
  100014b88  mov     x22, x0
  100014b8c  b       loc_100014c6c
  100014b90  mov     x22, x0
  100014b94  mov     x20, x26
  100014b98  b       loc_100014c74
  100014b9c  b       loc_100014bf0
  100014ba0  b       loc_100014b88
  100014ba4  b       loc_100014c0c
  100014ba8  b       loc_100014c0c
  100014bac  b       loc_100014c0c
  100014bb0  mov     x22, x0
  100014bb4  mov     x0, x26
  100014bb8  bl      _objc_release
  100014bbc  b       loc_100014c64
  100014bc0  b       loc_100014c60
  100014bc4  b       loc_100014c60
  100014bc8  b       loc_100014c60
  100014bcc  b       loc_100014c60
  100014bd0  b       loc_100014c60
  100014bd4  b       loc_100014c60
  100014bd8  b       loc_100014c60
  100014bdc  b       loc_100014c60
  100014be0  b       loc_100014c60
  100014be4  b       loc_100014c60
  100014be8  b       loc_100014c60
  100014bec  b       loc_100014bf0
loc_100014bf0:
  100014bf0  mov     x22, x0
  100014bf4  mov     x0, x24
  100014bf8  b       loc_100014c68
  100014bfc  b       loc_100014c60
  100014c00  b       loc_100014b88
  100014c04  b       loc_100014b88
  100014c08  b       loc_100014c60
loc_100014c0c:
  100014c0c  mov     x22, x0
  100014c10  mov     x0, x23
  100014c14  bl      _objc_release
  100014c18  b       loc_100014c74
  100014c1c  b       loc_100014c60
  100014c20  b       loc_100014c60
  100014c24  b       loc_100014c60
  100014c28  mov     x22, x0
  100014c2c  b       loc_100014c4c
  100014c30  mov     x22, x0
  100014c34  b       loc_100014c44
  100014c38  mov     x22, x0
  100014c3c  mov     x0, x23
  100014c40  bl      _objc_release
loc_100014c44:
  100014c44  mov     x0, x25
  100014c48  bl      _objc_release
loc_100014c4c:
  100014c4c  mov     x0, x28
  100014c50  b       loc_100014c68
  100014c54  b       loc_100014c60
  100014c58  b       loc_100014c60
  100014c5c  b       loc_100014c60
loc_100014c60:
  100014c60  mov     x22, x0
loc_100014c64:
  100014c64  mov     x0, x23
loc_100014c68:
  100014c68  bl      _objc_release
loc_100014c6c:
  100014c6c  mov     x0, x21
  100014c70  bl      _objc_release
loc_100014c74:
  100014c74  mov     x0, x19
  100014c78  bl      _objc_release
  100014c7c  mov     x0, x20
  100014c80  bl      _objc_release
  100014c84  mov     x0, x22
  100014c88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeapon update:]
; address 0x100014c8c  size 1212  kind objc
; ======================================================================
  100014c8c  stp     d11, d10, [sp, #-0x50]!
  100014c90  stp     d9, d8, [sp, #0x10]
  100014c94  stp     x22, x21, [sp, #0x20]
  100014c98  stp     x20, x19, [sp, #0x30]
  100014c9c  stp     x29, x30, [sp, #0x40]
  100014ca0  add     x29, sp, #0x40
  100014ca4  mov     v9.16b, v0.16b
  100014ca8  mov     x19, x0
  100014cac  bl      _CACurrentMediaTime                      ; CACurrentMediaTime()
  100014cb0  mov     v8.16b, v0.16b
  100014cb4  adrp    x8, #0x10041f000
  100014cb8  ldrsw   x20, [x8, #0x568]                        ; ivar offset ADWeapon.previousTickTime (+0x40)
  100014cbc  ldr     d10, [x19, x20]                          ; d10 = self->previousTickTime
  100014cc0  bl      _CACurrentMediaTime                      ; CACurrentMediaTime()
  100014cc4  str     d0, [x19, x20]                           ; self->previousTickTime = d0
  100014cc8  adrp    x8, #0x100416000
  100014ccc  nop
  100014cd0  ldr     x1, [x8, #0xc60]
  100014cd4  mov     x0, x19
  100014cd8  bl      _objc_msgSend                            ; [self state]
  100014cdc  cmp     w0, #8
  100014ce0  b.hi    loc_1000150a8                            ; if ([self state] >u 8)
  100014ce4  ubfx    x8, x0, #0, #0x20
  100014ce8  adr     x9, #0x100015124                         ; 0x100015124
  100014cec  nop
  100014cf0  ldrsw   x8, [x9, x8, lsl #2]
  100014cf4  add     x8, x8, x9
  100014cf8  br      x8                                       ; switch ([self state]) { case 0: goto loc_100014cfc; case 1: goto loc_100014d30; case 2: goto loc_100014d54; case 3: goto loc_100014d94; case 4: goto loc_100014e68; case 5: goto loc_100014ef8; case 6: goto loc_100014f5c; case 7: goto loc_1000150a8; case 8: goto loc_100014fb8 }
loc_100014cfc:  ; case 0
  100014cfc  adrp    x8, #0x10041f000
  100014d00  ldrsw   x20, [x8, #0x570]                        ; ivar offset ADWeapon.continuousSound (+0x28)
  100014d04  ldr     x0, [x19, x20]                           ; x0 = self->continuousSound
  100014d08  adrp    x8, #0x100417000
  100014d0c  nop
  100014d10  ldr     x1, [x8, #0x598]
  100014d14  bl      _objc_msgSend                            ; [self->continuousSound playing]
  100014d18  cbz     w0, loc_1000150a8                        ; if ([self->continuousSound playing] == 0)
  100014d1c  ldr     x0, [x19, x20]                           ; x0 = self->continuousSound
  100014d20  adrp    x8, #0x100417000
  100014d24  add     x8, x8, #0x568                           ; &@selector(stop)
  100014d28  ldr     x1, [x8]
  100014d2c  b       loc_100014f54
loc_100014d30:  ; case 1
  100014d30  adrp    x8, #0x100416000
  100014d34  nop
  100014d38  ldr     x1, [x8, #0xc68]
  100014d3c  mov     x0, x19
  100014d40  bl      _objc_msgSend                            ; [self timeInState]
  100014d44  mov     v9.16b, v0.16b
  100014d48  adrp    x8, #0x100417000
  100014d4c  add     x8, x8, #0x550                           ; &@selector(switchingTime)
  100014d50  b       loc_100014d74
loc_100014d54:  ; case 2
  100014d54  adrp    x8, #0x100416000
  100014d58  nop
  100014d5c  ldr     x1, [x8, #0xc68]
  100014d60  mov     x0, x19
  100014d64  bl      _objc_msgSend                            ; [self timeInState]
  100014d68  mov     v9.16b, v0.16b
  100014d6c  adrp    x8, #0x100416000
  100014d70  add     x8, x8, #0xc70                           ; &@selector(fireRate)
loc_100014d74:
  100014d74  ldr     x1, [x8]                                 ; x1 = one of selectors {fireRate, switchingTime}
  100014d78  mov     x0, x19
  100014d7c  bl      _objc_msgSend                            ; [self fireRate | switchingTime]
  100014d80  fcmp    s9, s0
  100014d84  b.le    loc_1000150a8                            ; if ([self timeInState] <= (or unordered) s0)
  100014d88  adrp    x8, #0x100416000
  100014d8c  add     x8, x8, #0xc78                           ; &@selector(setState:)
  100014d90  b       loc_100014fa4
loc_100014d94:  ; case 3
  100014d94  adrp    x8, #0x10041f000
  100014d98  ldrsw   x21, [x8, #0x56c]                        ; ivar offset ADWeapon.fireRateTimer (+0x14)
  100014d9c  ldr     s11, [x19, x21]                          ; s11 = self->fireRateTimer
  100014da0  adrp    x8, #0x100416000
  100014da4  nop
  100014da8  ldr     x1, [x8, #0xc70]
  100014dac  mov     x0, x19
  100014db0  bl      _objc_msgSend                            ; [self fireRate]
  100014db4  fcmp    s11, s0
  100014db8  b.le    loc_100014e38                            ; if (self->fireRateTimer <= (or unordered) [self fireRate])
  100014dbc  str     wzr, [x19, x21]                          ; self->fireRateTimer = 0
  100014dc0  adrp    x8, #0x100417000
  100014dc4  nop
  100014dc8  ldr     x1, [x8, #0x558]
  100014dcc  mov     x0, x19
  100014dd0  bl      _objc_msgSend                            ; [self resolveShoot]
  100014dd4  tbnz    w0, #0, loc_100014e38                    ; if (([self resolveShoot] & 1))
  100014dd8  adrp    x8, #0x100417000
  100014ddc  nop
  100014de0  ldr     x1, [x8, #0x560]
  100014de4  mov     x0, x19
  100014de8  bl      _objc_msgSend                            ; [self playClickSound]
  100014dec  adrp    x8, #0x10041f000
  100014df0  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADWeapon.continuousSound (+0x28)
  100014df4  ldr     x0, [x19, x8]                            ; x0 = self->continuousSound
  100014df8  adrp    x8, #0x100417000
  100014dfc  nop
  100014e00  ldr     x20, [x8, #0x568]
  100014e04  mov     x1, x20
  100014e08  bl      _objc_msgSend                            ; [self->continuousSound stop]
  100014e0c  adrp    x8, #0x10041f000
  100014e10  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADWeapon.continuousWarning (+0x30)
  100014e14  ldr     x0, [x19, x8]                            ; x0 = self->continuousWarning
  100014e18  mov     x1, x20
  100014e1c  bl      _objc_msgSend                            ; [self->continuousWarning stop]
  100014e20  adrp    x8, #0x100416000
  100014e24  nop
  100014e28  ldr     x1, [x8, #0xc78]
  100014e2c  mov     w2, #5
  100014e30  mov     x0, x19
  100014e34  bl      _objc_msgSend                            ; [self setState:5]
loc_100014e38:
  100014e38  ldr     s0, [x19, x21]                           ; s0 = self->fireRateTimer
  100014e3c  fadd    s0, s0, s9
  100014e40  str     s0, [x19, x21]                           ; self->fireRateTimer = (self->fireRateTimer + arg1)
  100014e44  adrp    x8, #0x100416000
  100014e48  nop
  100014e4c  ldr     x1, [x8, #0xc68]
  100014e50  mov     x0, x19
  100014e54  bl      _objc_msgSend                            ; [self timeInState]
  100014e58  adrp    x8, #0x10041f000
  100014e5c  ldrsw   x8, [x8, #0x578]                         ; ivar offset ADWeapon.timeInContinous (+0x8)
  100014e60  str     s0, [x19, x8]                            ; self->timeInContinous = [self timeInState]
  100014e64  b       loc_1000150a8
loc_100014e68:  ; case 4
  100014e68  adrp    x8, #0x100416000
  100014e6c  nop
  100014e70  ldr     x1, [x8, #0xc68]
  100014e74  mov     x0, x19
  100014e78  bl      _objc_msgSend                            ; [self timeInState]
  100014e7c  adrp    x8, #0x10041f000
  100014e80  ldrsw   x8, [x8, #0x578]                         ; ivar offset ADWeapon.timeInContinous (+0x8)
  100014e84  ldr     s1, [x19, x8]                            ; s1 = self->timeInContinous
  100014e88  fadd    s0, s0, s1
  100014e8c  fcvt    d0, s0
  100014e90  adrp    x8, #0x100181000
  100014e94  ldr     d1, [x8, #0xa18]                         ; d1 = 0.2
  100014e98  fcmp    d0, d1
  100014e9c  b.le    loc_1000150a8                            ; if (([self timeInState] + self->timeInContinous) <= (or unordered) 0.2)
  100014ea0  adrp    x8, #0x10041f000
  100014ea4  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADWeapon.continuousSound (+0x28)
  100014ea8  ldr     x0, [x19, x8]                            ; x0 = self->continuousSound
  100014eac  adrp    x8, #0x100417000
  100014eb0  nop
  100014eb4  ldr     x20, [x8, #0x568]
  100014eb8  mov     x1, x20
  100014ebc  bl      _objc_msgSend                            ; [self->continuousSound stop]
  100014ec0  adrp    x8, #0x10041f000
  100014ec4  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADWeapon.continuousWarning (+0x30)
  100014ec8  ldr     x0, [x19, x8]                            ; x0 = self->continuousWarning
  100014ecc  mov     x1, x20
  100014ed0  bl      _objc_msgSend                            ; [self->continuousWarning stop]
  100014ed4  adrp    x8, #0x100417000
  100014ed8  nop
  100014edc  ldr     x1, [x8, #0x570]
  100014ee0  mov     w2, #0
  100014ee4  mov     x0, x19
  100014ee8  bl      _objc_msgSend                            ; [self changeState:0]
  100014eec  adrp    x8, #0x100417000
  100014ef0  add     x8, x8, #0x578                           ; &@selector(playContinuousTail)
  100014ef4  b       loc_100014f4c
loc_100014ef8:  ; case 5
  100014ef8  adrp    x8, #0x100416000
  100014efc  nop
  100014f00  ldr     x1, [x8, #0xc68]
  100014f04  mov     x0, x19
  100014f08  bl      _objc_msgSend                            ; [self timeInState]
  100014f0c  mov     v9.16b, v0.16b
  100014f10  adrp    x8, #0x100416000
  100014f14  nop
  100014f18  ldr     x1, [x8, #0xc70]
  100014f1c  mov     x0, x19
  100014f20  bl      _objc_msgSend                            ; [self fireRate]
  100014f24  fcmp    s9, s0
  100014f28  b.le    loc_1000150a8                            ; if ([self timeInState] <= (or unordered) [self fireRate])
  100014f2c  adrp    x8, #0x100416000
  100014f30  nop
  100014f34  ldr     x1, [x8, #0xc80]
  100014f38  movi    v0.16b, #0
  100014f3c  mov     x0, x19
  100014f40  bl      _objc_msgSend                            ; [self setTimeInState:0]
  100014f44  adrp    x8, #0x100417000
  100014f48  add     x8, x8, #0x560                           ; &@selector(playClickSound)
loc_100014f4c:
  100014f4c  ldr     x1, [x8]                                 ; x1 = one of selectors {playClickSound, playContinuousTail}
  100014f50  mov     x0, x19
loc_100014f54:
  100014f54  bl      _objc_msgSend                            ; [x0 <sel x1>]
  100014f58  b       loc_1000150a8
loc_100014f5c:  ; case 6
  100014f5c  adrp    x8, #0x100416000
  100014f60  nop
  100014f64  ldr     x1, [x8, #0xc68]
  100014f68  mov     x0, x19
  100014f6c  bl      _objc_msgSend                            ; [self timeInState]
  100014f70  fcvt    d0, s0
  100014f74  adrp    x8, #0x100181000
  100014f78  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  100014f7c  fcmp    d0, d1
  100014f80  b.le    loc_1000150a8                            ; if ([self timeInState] <= (or unordered) 0.1)
  100014f84  adrp    x8, #0x100416000
  100014f88  nop
  100014f8c  ldr     x1, [x8, #0xc78]
  100014f90  mov     w2, #7
  100014f94  mov     x0, x19
  100014f98  bl      _objc_msgSend                            ; [self setState:7]
  100014f9c  adrp    x8, #0x100417000
  100014fa0  add     x8, x8, #0x4e0                           ; &@selector(setBulletsInClip:)
loc_100014fa4:
  100014fa4  ldr     x1, [x8]                                 ; x1 = one of selectors {setBulletsInClip:, setState:}
  100014fa8  mov     w2, #0
  100014fac  mov     x0, x19
  100014fb0  bl      _objc_msgSend                            ; [self setBulletsInClip:0  | setState:x3]
  100014fb4  b       loc_1000150a8
loc_100014fb8:  ; case 8
  100014fb8  adrp    x8, #0x100416000
  100014fbc  nop
  100014fc0  ldr     x1, [x8, #0xc68]
  100014fc4  mov     x0, x19
  100014fc8  bl      _objc_msgSend                            ; [self timeInState]
  100014fcc  mov     v9.16b, v0.16b
  100014fd0  adrp    x8, #0x100417000
  100014fd4  nop
  100014fd8  ldr     x1, [x8, #0x580]
  100014fdc  mov     x0, x19
  100014fe0  bl      _objc_msgSend                            ; [self reloadTime]
  100014fe4  fcmp    s9, s0
  100014fe8  b.le    loc_1000150a8                            ; if ([self timeInState] <= (or unordered) [self reloadTime])
  100014fec  adrp    x8, #0x100416000
  100014ff0  nop
  100014ff4  ldr     x1, [x8, #0xc78]
  100014ff8  mov     w2, #0
  100014ffc  mov     x0, x19
  100015000  bl      _objc_msgSend                            ; [self setState:0]
  100015004  adrp    x8, #0x100417000
  100015008  nop
  10001500c  ldr     x20, [x8, #0x588]
  100015010  mov     x0, x19
  100015014  mov     x1, x20
  100015018  bl      _objc_msgSend                            ; [self bulletsTotal]
  10001501c  mov     x22, x0
  100015020  adrp    x8, #0x100417000
  100015024  nop
  100015028  ldr     x21, [x8, #0x4d8]
  10001502c  mov     x0, x19
  100015030  mov     x1, x21
  100015034  bl      _objc_msgSend                            ; [self capacity]
  100015038  cmp     w22, w0
  10001503c  b.ge    loc_10001504c                            ; if ([self bulletsTotal] >= [self capacity])
  100015040  mov     x0, x19
  100015044  mov     x1, x20
  100015048  b       loc_100015054
loc_10001504c:
  10001504c  mov     x0, x19
  100015050  mov     x1, x21
loc_100015054:
  100015054  bl      _objc_msgSend                            ; [self <sel x1>]
  100015058  mov     x2, x0
  10001505c  adrp    x8, #0x100417000
  100015060  nop
  100015064  ldr     x1, [x8, #0x4e0]
  100015068  mov     x0, x19
  10001506c  bl      _objc_msgSend                            ; [self setBulletsInClip:[self <sel x1>]]
  100015070  adrp    x8, #0x100416000
  100015074  nop
  100015078  ldr     x1, [x8, #0xc88]
  10001507c  mov     x0, x19
  100015080  bl      _objc_msgSend                            ; [self weaponManager]
  100015084  mov     x29, x29
  100015088  bl      _objc_retainAutoreleasedReturnValue
  10001508c  mov     x20, x0
  100015090  adrp    x8, #0x100417000
  100015094  nop
  100015098  ldr     x1, [x8, #0x590]
  10001509c  bl      _objc_msgSend                            ; [[self weaponManager] weaponDidFinishReloading]
  1000150a0  mov     x0, x20
  1000150a4  bl      _objc_release
loc_1000150a8:  ; case 7
  1000150a8  fsub    d8, d8, d10
  1000150ac  adrp    x8, #0x10041f000
  1000150b0  ldrsw   x8, [x8, #0x564]                         ; ivar offset ADWeapon.lastAnnouncerSpeech (+0x38)
  1000150b4  ldr     s0, [x19, x8]                            ; s0 = self->lastAnnouncerSpeech
  1000150b8  fcvt    d0, s0
  1000150bc  fadd    d0, d8, d0
  1000150c0  fcvt    s0, d0
  1000150c4  str     s0, [x19, x8]                            ; self->lastAnnouncerSpeech = ((d8 - self->previousTickTime) + self->lastAnnouncerSpeech)
  1000150c8  adrp    x8, #0x100416000
  1000150cc  nop
  1000150d0  ldr     x1, [x8, #0xc68]
  1000150d4  mov     x0, x19
  1000150d8  bl      _objc_msgSend                            ; [self timeInState]
  1000150dc  fcvt    d0, s0
  1000150e0  fadd    d0, d8, d0
  1000150e4  fcvt    s0, d0
  1000150e8  adrp    x8, #0x100416000
  1000150ec  nop
  1000150f0  ldr     x1, [x8, #0xc80]
  1000150f4  mov     x0, x19
  1000150f8  ldp     x29, x30, [sp, #0x40]
  1000150fc  ldp     x20, x19, [sp, #0x30]
  100015100  ldp     x22, x21, [sp, #0x20]
  100015104  ldp     d9, d8, [sp, #0x10]
  100015108  ldp     d11, d10, [sp], #0x50
  10001510c  b       _objc_msgSend                            ; [self setTimeInState:((d8 - self->previousTickTime) + [self timeInState])]
  100015110  mov     x19, x0
  100015114  mov     x0, x20
  100015118  bl      _objc_release
  10001511c  mov     x0, x19
  100015120  bl      __Unwind_Resume                          ; Unwind_Resume()
  100015124  .word   jump table of 100014cf8, case 0 -> loc_100014cfc
  100015128  .word   jump table of 100014cf8, case 1 -> loc_100014d30
  10001512c  .word   jump table of 100014cf8, case 2 -> loc_100014d54
  100015130  .word   jump table of 100014cf8, case 3 -> loc_100014d94
  100015134  .word   jump table of 100014cf8, case 4 -> loc_100014e68
  100015138  .word   jump table of 100014cf8, case 5 -> loc_100014ef8
  10001513c  .word   jump table of 100014cf8, case 6 -> loc_100014f5c
  100015140  .word   jump table of 100014cf8, case 7 -> loc_1000150a8
  100015144  .word   jump table of 100014cf8, case 8 -> loc_100014fb8

; ======================================================================
; -[ADWeapon changeState:]
; address 0x100015148  size 200  kind objc
; ======================================================================
  100015148  stp     x22, x21, [sp, #-0x30]!
  10001514c  stp     x20, x19, [sp, #0x10]
  100015150  stp     x29, x30, [sp, #0x20]
  100015154  add     x29, sp, #0x20
  100015158  mov     x22, x2
  10001515c  mov     x19, x0
  100015160  adrp    x8, #0x100416000
  100015164  nop
  100015168  ldr     x20, [x8, #0xc60]
  10001516c  mov     x1, x20
  100015170  bl      _objc_msgSend                            ; [self state]
  100015174  cmp     w0, w22
  100015178  b.ne    loc_100015184                            ; if ([self state] != arg1)
  10001517c  mov     w0, #0
  100015180  b       loc_100015200
loc_100015184:
  100015184  mov     x0, x19
  100015188  mov     x1, x20
  10001518c  bl      _objc_msgSend                            ; [self state]
  100015190  mov     x21, x0
  100015194  cmp     w22, #2
  100015198  b.ne    loc_1000151cc                            ; if (arg1 != 2)
  10001519c  adrp    x8, #0x100417000
  1000151a0  nop
  1000151a4  ldr     x1, [x8, #0x5a0]
  1000151a8  mov     x0, x19
  1000151ac  bl      _objc_msgSend                            ; [self readyToShoot]
  1000151b0  cbz     w0, loc_1000151e4                        ; if ([self readyToShoot] == 0)
  1000151b4  adrp    x8, #0x100416000
  1000151b8  add     x8, x8, #0xc78                           ; &@selector(setState:)
  1000151bc  ldr     x1, [x8]
  1000151c0  mov     w2, #2
  1000151c4  mov     x0, x19
  1000151c8  b       loc_1000151e0
loc_1000151cc:
  1000151cc  adrp    x8, #0x100416000
  1000151d0  add     x8, x8, #0xc78                           ; &@selector(setState:)
  1000151d4  ldr     x1, [x8]
  1000151d8  mov     x0, x19
  1000151dc  mov     x2, x22
loc_1000151e0:
  1000151e0  bl      _objc_msgSend                            ; [self setState:x2]
loc_1000151e4:
  1000151e4  cmp     w21, #0
  1000151e8  cset    w21, ne
  1000151ec  mov     x0, x19
  1000151f0  mov     x1, x20
  1000151f4  bl      _objc_msgSend                            ; [self state]
  1000151f8  cmp     w21, w0
  1000151fc  cset    w0, ne
loc_100015200:
  100015200  ldp     x29, x30, [sp, #0x20]
  100015204  ldp     x20, x19, [sp, #0x10]
  100015208  ldp     x22, x21, [sp], #0x30
  10001520c  ret

; ======================================================================
; -[ADWeapon setState:]
; address 0x100015210  size 48  kind objc
; ======================================================================
  100015210  adrp    x8, #0x10041f000
  100015214  ldrsw   x8, [x8, #0x57c]                         ; ivar offset ADWeapon._state (+0x7c)
  100015218  ldr     w9, [x0, x8]                             ; w9 = self->_state
  10001521c  cmp     w9, w2
  100015220  b.ne    loc_100015228                            ; if (self->_state != arg1)
  100015224  ret
loc_100015228:
  100015228  str     w2, [x0, x8]                             ; self->_state = arg1
  10001522c  adrp    x8, #0x100416000
  100015230  nop
  100015234  ldr     x1, [x8, #0xc80]
  100015238  movi    v0.16b, #0
  10001523c  b       _objc_msgSend                            ; [self setTimeInState:0]

; ======================================================================
; -[ADWeapon stateToString]
; address 0x100015240  size 316  kind objc
; ======================================================================
  100015240  stp     x22, x21, [sp, #-0x30]!
  100015244  stp     x20, x19, [sp, #0x10]
  100015248  stp     x29, x30, [sp, #0x20]
  10001524c  add     x29, sp, #0x20
  100015250  sub     sp, sp, #0x10
  100015254  mov     x19, x0
  100015258  adrp    x8, #0x100416000
  10001525c  nop
  100015260  ldr     x20, [x8, #0xc60]
  100015264  mov     x1, x20
  100015268  bl      _objc_msgSend                            ; [self state]
  10001526c  cmp     w0, #8
  100015270  b.ls    loc_1000152b8                            ; if ([self state] <=u 8)
  100015274  adrp    x8, #0x10041d000
  100015278  ldr     x21, [x8, #0xf78]                        ; class NSString
  10001527c  mov     x0, x19
  100015280  mov     x1, x20
  100015284  bl      _objc_msgSend                            ; [self state]
  100015288  adrp    x8, #0x100416000
  10001528c  nop
  100015290  ldr     x1, [x8, #0xee8]
  100015294  str     x0, [sp]
  100015298  adrp    x2, #0x1003ba000
  10001529c  add     x2, x2, #0x770                           ; @"Default : %i"
  1000152a0  mov     x0, x21
  1000152a4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"Default : %i", [self state]]
  1000152a8  mov     x29, x29
  1000152ac  bl      _objc_retainAutoreleasedReturnValue
  1000152b0  mov     x19, x0
  1000152b4  b       loc_100015340
loc_1000152b8:
  1000152b8  ubfx    x8, x0, #0, #0x20
  1000152bc  adr     x9, #0x100015358                         ; 0x100015358
  1000152c0  nop
  1000152c4  ldrsw   x8, [x9, x8, lsl #2]
  1000152c8  add     x8, x8, x9
  1000152cc  br      x8                                       ; switch (?) { case 0: goto loc_1000152d0; case 1: goto loc_1000152dc; case 2: goto loc_1000152e8; case 3: goto loc_1000152f4; case 4: goto loc_100015300; case 5: goto loc_10001530c; case 6: goto loc_100015318; case 7: goto loc_100015324; case 8: goto loc_100015330 }
loc_1000152d0:  ; case 0
  1000152d0  adrp    x19, #0x1003ba000
  1000152d4  add     x19, x19, #0x6b0                         ; @"Idle"
  1000152d8  b       loc_100015338
loc_1000152dc:  ; case 1
  1000152dc  adrp    x19, #0x1003ba000
  1000152e0  add     x19, x19, #0x750                         ; @"Switching"
  1000152e4  b       loc_100015338
loc_1000152e8:  ; case 2
  1000152e8  adrp    x19, #0x1003ba000
  1000152ec  add     x19, x19, #0x730                         ; @"Shooting"
  1000152f0  b       loc_100015338
loc_1000152f4:  ; case 3
  1000152f4  adrp    x19, #0x1003ba000
  1000152f8  add     x19, x19, #0x650                         ; @"Continuous"
  1000152fc  b       loc_100015338
loc_100015300:  ; case 4
  100015300  adrp    x19, #0x1003ba000
  100015304  add     x19, x19, #0x670                         ; @"Continuous to tail"
  100015308  b       loc_100015338
loc_10001530c:  ; case 5
  10001530c  adrp    x19, #0x1003ba000
  100015310  add     x19, x19, #0x690                         ; @"Continuous Empty"
  100015314  b       loc_100015338
loc_100015318:  ; case 6
  100015318  adrp    x19, #0x1003ba000
  10001531c  add     x19, x19, #0x6d0                         ; @"Reload Down"
  100015320  b       loc_100015338
loc_100015324:  ; case 7
  100015324  adrp    x19, #0x1003ba000
  100015328  add     x19, x19, #0x6f0                         ; @"Reload Empty"
  10001532c  b       loc_100015338
loc_100015330:  ; case 8
  100015330  adrp    x19, #0x1003ba000
  100015334  add     x19, x19, #0x710                         ; @"Reload Up"
loc_100015338:
  100015338  mov     x0, x19
  10001533c  bl      _objc_retain
loc_100015340:
  100015340  mov     x0, x19
  100015344  sub     sp, x29, #0x20
  100015348  ldp     x29, x30, [sp, #0x20]
  10001534c  ldp     x20, x19, [sp, #0x10]
  100015350  ldp     x22, x21, [sp], #0x30
  100015354  b       _objc_autoreleaseReturnValue
  100015358  .word   jump table of 1000152cc, case 0 -> loc_1000152d0
  10001535c  .word   jump table of 1000152cc, case 1 -> loc_1000152dc
  100015360  .word   jump table of 1000152cc, case 2 -> loc_1000152e8
  100015364  .word   jump table of 1000152cc, case 3 -> loc_1000152f4
  100015368  .word   jump table of 1000152cc, case 4 -> loc_100015300
  10001536c  .word   jump table of 1000152cc, case 5 -> loc_10001530c
  100015370  .word   jump table of 1000152cc, case 6 -> loc_100015318
  100015374  .word   jump table of 1000152cc, case 7 -> loc_100015324
  100015378  .word   jump table of 1000152cc, case 8 -> loc_100015330

; ======================================================================
; -[ADWeapon readyToShoot]
; address 0x10001537c  size 144  kind objc
; ======================================================================
  10001537c  stp     x20, x19, [sp, #-0x20]!
  100015380  stp     x29, x30, [sp, #0x10]
  100015384  add     x29, sp, #0x10
  100015388  mov     x19, x0
  10001538c  adrp    x8, #0x100416000
  100015390  nop
  100015394  ldr     x20, [x8, #0xc60]
  100015398  mov     x1, x20
  10001539c  bl      _objc_msgSend                            ; [self state]
  1000153a0  cmp     w0, #6
  1000153a4  b.eq    loc_1000153e4                            ; if ([self state] == 6)
  1000153a8  mov     x0, x19
  1000153ac  mov     x1, x20
  1000153b0  bl      _objc_msgSend                            ; [self state]
  1000153b4  cmp     w0, #8
  1000153b8  b.eq    loc_1000153e4                            ; if ([self state] == 8)
  1000153bc  mov     x0, x19
  1000153c0  mov     x1, x20
  1000153c4  bl      _objc_msgSend                            ; [self state]
  1000153c8  cmp     w0, #1
  1000153cc  b.eq    loc_1000153e4                            ; if ([self state] == 1)
  1000153d0  mov     x0, x19
  1000153d4  mov     x1, x20
  1000153d8  bl      _objc_msgSend                            ; [self state]
  1000153dc  cmp     w0, #2
  1000153e0  b.ne    loc_1000153f4                            ; if ([self state] != 2)
loc_1000153e4:
  1000153e4  mov     w0, #0
loc_1000153e8:
  1000153e8  ldp     x29, x30, [sp, #0x10]
  1000153ec  ldp     x20, x19, [sp], #0x20
  1000153f0  ret
loc_1000153f4:
  1000153f4  mov     x0, x19
  1000153f8  mov     x1, x20
  1000153fc  bl      _objc_msgSend                            ; [self state]
  100015400  cmp     w0, #3
  100015404  cset    w0, ne
  100015408  b       loc_1000153e8

; ======================================================================
; -[ADWeapon singleShot]
; address 0x10001540c  size 152  kind objc
; ======================================================================
  10001540c  stp     x20, x19, [sp, #-0x20]!
  100015410  stp     x29, x30, [sp, #0x10]
  100015414  add     x29, sp, #0x10
  100015418  mov     x19, x0
  10001541c  adrp    x8, #0x100417000
  100015420  nop
  100015424  ldr     x1, [x8, #0x5a0]
  100015428  bl      _objc_msgSend                            ; [self readyToShoot]
  10001542c  cbz     w0, loc_10001547c                        ; if ([self readyToShoot] == 0)
  100015430  adrp    x8, #0x100417000
  100015434  nop
  100015438  ldr     x1, [x8, #0x558]
  10001543c  mov     x0, x19
  100015440  bl      _objc_msgSend                            ; [self resolveShoot]
  100015444  cbz     w0, loc_100015488                        ; if ([self resolveShoot] == 0)
  100015448  adrp    x8, #0x100417000
  10001544c  nop
  100015450  ldr     x1, [x8, #0x5a8]
  100015454  mov     x0, x19
  100015458  bl      _objc_msgSend                            ; [self playSingleShootSound]
  10001545c  adrp    x8, #0x100417000
  100015460  nop
  100015464  ldr     x1, [x8, #0x570]
  100015468  mov     w2, #2
  10001546c  mov     x0, x19
  100015470  ldp     x29, x30, [sp, #0x10]
  100015474  ldp     x20, x19, [sp], #0x20
  100015478  b       _objc_msgSend                            ; [self changeState:2]
loc_10001547c:
  10001547c  ldp     x29, x30, [sp, #0x10]
  100015480  ldp     x20, x19, [sp], #0x20
  100015484  ret
loc_100015488:
  100015488  adrp    x8, #0x100417000
  10001548c  nop
  100015490  ldr     x1, [x8, #0x560]
  100015494  mov     x0, x19
  100015498  ldp     x29, x30, [sp, #0x10]
  10001549c  ldp     x20, x19, [sp], #0x20
  1000154a0  b       _objc_msgSend                            ; [self playClickSound]

; ======================================================================
; -[ADWeapon continuousStart]
; address 0x1000154a4  size 852  kind objc
; ======================================================================
  1000154a4  stp     x28, x27, [sp, #-0x60]!
  1000154a8  stp     x26, x25, [sp, #0x10]
  1000154ac  stp     x24, x23, [sp, #0x20]
  1000154b0  stp     x22, x21, [sp, #0x30]
  1000154b4  stp     x20, x19, [sp, #0x40]
  1000154b8  stp     x29, x30, [sp, #0x50]
  1000154bc  add     x29, sp, #0x50
  1000154c0  sub     sp, sp, #0x10
  1000154c4  mov     x19, x0
  1000154c8  adrp    x8, #0x100417000
  1000154cc  nop
  1000154d0  ldr     x1, [x8, #0x5b0]
  1000154d4  bl      _objc_msgSend                            ; [self continuousFire]
  1000154d8  tbz     w0, #0, loc_100015720                    ; if (!([self continuousFire] & 1))
  1000154dc  adrp    x8, #0x100417000
  1000154e0  nop
  1000154e4  ldr     x1, [x8, #0x5a0]
  1000154e8  mov     x0, x19
  1000154ec  bl      _objc_msgSend                            ; [self readyToShoot]
  1000154f0  cbz     w0, loc_100015750                        ; if ([self readyToShoot] == 0)
  1000154f4  adrp    x8, #0x100417000
  1000154f8  nop
  1000154fc  ldr     x1, [x8, #0x558]
  100015500  mov     x0, x19
  100015504  bl      _objc_msgSend                            ; [self resolveShoot]
  100015508  adrp    x8, #0x100417000
  10001550c  add     x8, x8, #0x570                           ; &@selector(changeState:)
  100015510  ldr     x1, [x8]
  100015514  cbz     w0, loc_100015770                        ; if ([self resolveShoot] == 0)
  100015518  mov     w2, #3
  10001551c  mov     x0, x19
  100015520  bl      _objc_msgSend                            ; [self changeState:3]
  100015524  adrp    x8, #0x100416000
  100015528  nop
  10001552c  ldr     x20, [x8, #0xc98]
  100015530  mov     x0, x19
  100015534  mov     x1, x20
  100015538  bl      _objc_msgSend                            ; [self playlist]
  10001553c  mov     x29, x29
  100015540  bl      _objc_retainAutoreleasedReturnValue
  100015544  mov     x24, x0
  100015548  adrp    x27, #0x10041d000
  10001554c  ldr     x23, [x27, #0xf78]                       ; class NSString
  100015550  adrp    x8, #0x100417000
  100015554  nop
  100015558  ldr     x22, [x8, #0x450]
  10001555c  mov     x0, x19
  100015560  mov     x1, x22
  100015564  bl      _objc_msgSend                            ; [self name]
  100015568  mov     x29, x29
  10001556c  bl      _objc_retainAutoreleasedReturnValue
  100015570  mov     x25, x0
  100015574  adrp    x8, #0x100416000
  100015578  nop
  10001557c  ldr     x21, [x8, #0xee8]
  100015580  str     x25, [sp]
  100015584  adrp    x2, #0x1003ba000
  100015588  add     x2, x2, #0x790                           ; @"weapon_gun_%@_conti"
  10001558c  mov     x0, x23
  100015590  mov     x1, x21
  100015594  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_conti", [self name]]
  100015598  mov     x29, x29
  10001559c  bl      _objc_retainAutoreleasedReturnValue
  1000155a0  mov     x26, x0
  1000155a4  adrp    x8, #0x100417000
  1000155a8  nop
  1000155ac  ldr     x23, [x8, #0x5c0]
  1000155b0  mov     x0, x24
  1000155b4  mov     x1, x23
  1000155b8  mov     x2, x26
  1000155bc  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_conti", [self name]]]
  1000155c0  mov     x29, x29
  1000155c4  bl      _objc_retainAutoreleasedReturnValue
  1000155c8  adrp    x8, #0x10041f000
  1000155cc  ldrsw   x28, [x8, #0x570]                        ; ivar offset ADWeapon.continuousSound (+0x28)
  1000155d0  ldr     x8, [x19, x28]                           ; x8 = self->continuousSound
  1000155d4  str     x0, [x19, x28]                           ; self->continuousSound = [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_conti", [self name]]]
  1000155d8  mov     x0, x8
  1000155dc  bl      _objc_release
  1000155e0  mov     x0, x26
  1000155e4  bl      _objc_release
  1000155e8  mov     x0, x25
  1000155ec  bl      _objc_release
  1000155f0  mov     x0, x24
  1000155f4  bl      _objc_release
  1000155f8  ldr     x0, [x19, x28]                           ; x0 = self->continuousSound
  1000155fc  adrp    x8, #0x100416000
  100015600  nop
  100015604  ldr     x25, [x8, #0xca8]
  100015608  mov     w2, #0
  10001560c  mov     x1, x25
  100015610  bl      _objc_msgSend                            ; [self->continuousSound setSpatialized:0]
  100015614  ldr     x0, [x19, x28]                           ; x0 = self->continuousSound
  100015618  adrp    x8, #0x100416000
  10001561c  nop
  100015620  ldr     x24, [x8, #0xcb0]
  100015624  adrp    x8, #0x100181000
  100015628  ldr     s0, [x8, #0xa14]                         ; s0 = 0.600000024
  10001562c  mov     x1, x24
  100015630  bl      _objc_msgSend                            ; [self->continuousSound setGain:0.6]
  100015634  ldr     x0, [x19, x28]                           ; x0 = self->continuousSound
  100015638  adrp    x8, #0x100416000
  10001563c  nop
  100015640  ldr     x26, [x8, #0xcb8]
  100015644  mov     w2, #1
  100015648  mov     x1, x26
  10001564c  bl      _objc_msgSend                            ; [self->continuousSound play:1]
  100015650  mov     x0, x19
  100015654  mov     x1, x20
  100015658  bl      _objc_msgSend                            ; [self playlist]
  10001565c  mov     x29, x29
  100015660  bl      _objc_retainAutoreleasedReturnValue
  100015664  mov     x20, x0
  100015668  ldr     x27, [x27, #0xf78]                       ; class NSString
  10001566c  mov     x0, x19
  100015670  mov     x1, x22
  100015674  bl      _objc_msgSend                            ; [self name]
  100015678  mov     x29, x29
  10001567c  bl      _objc_retainAutoreleasedReturnValue
  100015680  mov     x22, x0
  100015684  str     x22, [sp]
  100015688  adrp    x2, #0x1003ba000
  10001568c  add     x2, x2, #0x7b0                           ; @"weapon_gun_%@_warningloop"
  100015690  mov     x0, x27
  100015694  mov     x1, x21
  100015698  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_warningloop", [self name]]
  10001569c  mov     x29, x29
  1000156a0  bl      _objc_retainAutoreleasedReturnValue
  1000156a4  mov     x21, x0
  1000156a8  mov     x0, x20
  1000156ac  mov     x1, x23
  1000156b0  mov     x2, x21
  1000156b4  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_warningloop", [self name]]]
  1000156b8  mov     x29, x29
  1000156bc  bl      _objc_retainAutoreleasedReturnValue
  1000156c0  adrp    x8, #0x10041f000
  1000156c4  ldrsw   x23, [x8, #0x574]                        ; ivar offset ADWeapon.continuousWarning (+0x30)
  1000156c8  ldr     x8, [x19, x23]                           ; x8 = self->continuousWarning
  1000156cc  str     x0, [x19, x23]                           ; self->continuousWarning = [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_warningloop", [self name]]]
  1000156d0  mov     x0, x8
  1000156d4  bl      _objc_release
  1000156d8  mov     x0, x21
  1000156dc  bl      _objc_release
  1000156e0  mov     x0, x22
  1000156e4  bl      _objc_release
  1000156e8  mov     x0, x20
  1000156ec  bl      _objc_release
  1000156f0  ldr     x0, [x19, x23]                           ; x0 = self->continuousWarning
  1000156f4  mov     w2, #0
  1000156f8  mov     x1, x25
  1000156fc  bl      _objc_msgSend                            ; [self->continuousWarning setSpatialized:0]
  100015700  ldr     x0, [x19, x23]                           ; x0 = self->continuousWarning
  100015704  movi    v0.16b, #0
  100015708  mov     x1, x24
  10001570c  bl      _objc_msgSend                            ; [self->continuousWarning setGain:0]
  100015710  ldr     x0, [x19, x23]                           ; x0 = self->continuousWarning
  100015714  mov     w2, #1
  100015718  mov     x1, x26
  10001571c  b       loc_100015778
loc_100015720:
  100015720  adrp    x8, #0x100417000
  100015724  nop
  100015728  ldr     x1, [x8, #0x5b8]
  10001572c  mov     x0, x19
  100015730  sub     sp, x29, #0x50
  100015734  ldp     x29, x30, [sp, #0x50]
  100015738  ldp     x20, x19, [sp, #0x40]
  10001573c  ldp     x22, x21, [sp, #0x30]
  100015740  ldp     x24, x23, [sp, #0x20]
  100015744  ldp     x26, x25, [sp, #0x10]
  100015748  ldp     x28, x27, [sp], #0x60
  10001574c  b       _objc_msgSend                            ; [self singleShot]
loc_100015750:
  100015750  sub     sp, x29, #0x50
  100015754  ldp     x29, x30, [sp, #0x50]
  100015758  ldp     x20, x19, [sp, #0x40]
  10001575c  ldp     x22, x21, [sp, #0x30]
  100015760  ldp     x24, x23, [sp, #0x20]
  100015764  ldp     x26, x25, [sp, #0x10]
  100015768  ldp     x28, x27, [sp], #0x60
  10001576c  ret
loc_100015770:
  100015770  mov     w2, #5
  100015774  mov     x0, x19
loc_100015778:
  100015778  sub     sp, x29, #0x50
  10001577c  ldp     x29, x30, [sp, #0x50]
  100015780  ldp     x20, x19, [sp, #0x40]
  100015784  ldp     x22, x21, [sp, #0x30]
  100015788  ldp     x24, x23, [sp, #0x20]
  10001578c  ldp     x26, x25, [sp, #0x10]
  100015790  ldp     x28, x27, [sp], #0x60
  100015794  b       _objc_msgSend                            ; [x0 <sel x1>]
  100015798  mov     x19, x0
  10001579c  b       loc_1000157bc
  1000157a0  mov     x19, x0
  1000157a4  b       loc_1000157b4
  1000157a8  mov     x19, x0
  1000157ac  mov     x0, x26
  1000157b0  bl      _objc_release
loc_1000157b4:
  1000157b4  mov     x0, x25
  1000157b8  bl      _objc_release
loc_1000157bc:
  1000157bc  mov     x0, x24
  1000157c0  b       loc_1000157ec
  1000157c4  mov     x19, x0
  1000157c8  b       loc_1000157e8
  1000157cc  mov     x19, x0
  1000157d0  b       loc_1000157e0
  1000157d4  mov     x19, x0
  1000157d8  mov     x0, x21
  1000157dc  bl      _objc_release
loc_1000157e0:
  1000157e0  mov     x0, x22
  1000157e4  bl      _objc_release
loc_1000157e8:
  1000157e8  mov     x0, x20
loc_1000157ec:
  1000157ec  bl      _objc_release
  1000157f0  mov     x0, x19
  1000157f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeapon continuousStop]
; address 0x1000157f8  size 184  kind objc
; ======================================================================
  1000157f8  stp     x20, x19, [sp, #-0x20]!
  1000157fc  stp     x29, x30, [sp, #0x10]
  100015800  add     x29, sp, #0x10
  100015804  mov     x19, x0
  100015808  adrp    x8, #0x10041f000
  10001580c  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADWeapon.continuousSound (+0x28)
  100015810  ldr     x0, [x19, x8]                            ; x0 = self->continuousSound
  100015814  adrp    x8, #0x100417000
  100015818  nop
  10001581c  ldr     x20, [x8, #0x568]
  100015820  mov     x1, x20
  100015824  bl      _objc_msgSend                            ; [self->continuousSound stop]
  100015828  adrp    x8, #0x10041f000
  10001582c  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADWeapon.continuousWarning (+0x30)
  100015830  ldr     x0, [x19, x8]                            ; x0 = self->continuousWarning
  100015834  mov     x1, x20
  100015838  bl      _objc_msgSend                            ; [self->continuousWarning stop]
  10001583c  adrp    x8, #0x100416000
  100015840  nop
  100015844  ldr     x20, [x8, #0xc60]
  100015848  mov     x0, x19
  10001584c  mov     x1, x20
  100015850  bl      _objc_msgSend                            ; [self state]
  100015854  cmp     w0, #3
  100015858  b.ne    loc_100015870                            ; if ([self state] != 3)
  10001585c  adrp    x8, #0x100417000
  100015860  add     x8, x8, #0x570                           ; &@selector(changeState:)
  100015864  ldr     x1, [x8]
  100015868  mov     w2, #4
  10001586c  b       loc_100015894
loc_100015870:
  100015870  mov     x0, x19
  100015874  mov     x1, x20
  100015878  bl      _objc_msgSend                            ; [self state]
  10001587c  cmp     w0, #5
  100015880  b.ne    loc_1000158a4                            ; if ([self state] != 5)
  100015884  mov     w2, #0
  100015888  adrp    x8, #0x100417000
  10001588c  add     x8, x8, #0x570                           ; &@selector(changeState:)
  100015890  ldr     x1, [x8]
loc_100015894:
  100015894  mov     x0, x19
  100015898  ldp     x29, x30, [sp, #0x10]
  10001589c  ldp     x20, x19, [sp], #0x20
  1000158a0  b       _objc_msgSend                            ; [self changeState:one of {0, 4}]
loc_1000158a4:
  1000158a4  ldp     x29, x30, [sp, #0x10]
  1000158a8  ldp     x20, x19, [sp], #0x20
  1000158ac  ret

; ======================================================================
; -[ADWeapon playContinuousTail]
; address 0x1000158b0  size 364  kind objc
; ======================================================================
  1000158b0  stp     x22, x21, [sp, #-0x30]!
  1000158b4  stp     x20, x19, [sp, #0x10]
  1000158b8  stp     x29, x30, [sp, #0x20]
  1000158bc  add     x29, sp, #0x20
  1000158c0  sub     sp, sp, #0x10
  1000158c4  mov     x20, x0
  1000158c8  adrp    x8, #0x100416000
  1000158cc  nop
  1000158d0  ldr     x1, [x8, #0xc98]
  1000158d4  bl      _objc_msgSend                            ; [self playlist]
  1000158d8  mov     x29, x29
  1000158dc  bl      _objc_retainAutoreleasedReturnValue
  1000158e0  mov     x19, x0
  1000158e4  adrp    x8, #0x10041d000
  1000158e8  ldr     x21, [x8, #0xf78]                        ; class NSString
  1000158ec  adrp    x8, #0x100417000
  1000158f0  nop
  1000158f4  ldr     x1, [x8, #0x450]
  1000158f8  mov     x0, x20
  1000158fc  bl      _objc_msgSend                            ; [self name]
  100015900  mov     x29, x29
  100015904  bl      _objc_retainAutoreleasedReturnValue
  100015908  mov     x20, x0
  10001590c  adrp    x8, #0x100416000
  100015910  nop
  100015914  ldr     x1, [x8, #0xee8]
  100015918  str     x20, [sp]
  10001591c  adrp    x2, #0x1003ba000
  100015920  add     x2, x2, #0x7d0                           ; @"weapon_gun_%@_tail"
  100015924  mov     x0, x21
  100015928  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_tail", [self name]]
  10001592c  mov     x29, x29
  100015930  bl      _objc_retainAutoreleasedReturnValue
  100015934  mov     x22, x0
  100015938  adrp    x8, #0x100417000
  10001593c  nop
  100015940  ldr     x1, [x8, #0x5c0]
  100015944  mov     x0, x19
  100015948  mov     x2, x22
  10001594c  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_tail", [self name]]]
  100015950  mov     x29, x29
  100015954  bl      _objc_retainAutoreleasedReturnValue
  100015958  mov     x21, x0
  10001595c  mov     x0, x22
  100015960  bl      _objc_release
  100015964  mov     x0, x20
  100015968  bl      _objc_release
  10001596c  mov     x0, x19
  100015970  bl      _objc_release
  100015974  adrp    x8, #0x100416000
  100015978  nop
  10001597c  ldr     x1, [x8, #0xca8]
  100015980  mov     w2, #0
  100015984  mov     x0, x21
  100015988  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_tail", [self name]]] setSpatialized:0]
  10001598c  adrp    x8, #0x100416000
  100015990  nop
  100015994  ldr     x1, [x8, #0xcb0]
  100015998  adrp    x8, #0x100181000
  10001599c  ldr     s0, [x8, #0xa14]                         ; s0 = 0.600000024
  1000159a0  mov     x0, x21
  1000159a4  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_tail", [self name]]] setGain:0.6]
  1000159a8  adrp    x8, #0x100416000
  1000159ac  nop
  1000159b0  ldr     x1, [x8, #0xcb8]
  1000159b4  mov     w2, #0
  1000159b8  mov     x0, x21
  1000159bc  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_tail", [self name]]] play:0]
  1000159c0  mov     x0, x21
  1000159c4  sub     sp, x29, #0x20
  1000159c8  ldp     x29, x30, [sp, #0x20]
  1000159cc  ldp     x20, x19, [sp, #0x10]
  1000159d0  ldp     x22, x21, [sp], #0x30
  1000159d4  b       _objc_release
  1000159d8  mov     x22, x0
  1000159dc  mov     x0, x21
  1000159e0  b       loc_100015a10
  1000159e4  mov     x22, x0
  1000159e8  b       loc_100015a0c
  1000159ec  mov     x22, x0
  1000159f0  b       loc_100015a04
  1000159f4  mov     x1, x22
  1000159f8  mov     x22, x0
  1000159fc  mov     x0, x1
  100015a00  bl      _objc_release
loc_100015a04:
  100015a04  mov     x0, x20
  100015a08  bl      _objc_release
loc_100015a0c:
  100015a0c  mov     x0, x19
loc_100015a10:
  100015a10  bl      _objc_release
  100015a14  mov     x0, x22
  100015a18  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeapon resolveShoot]
; address 0x100015a1c  size 612  kind objc
; ======================================================================
  100015a1c  stp     d11, d10, [sp, #-0x60]!
  100015a20  stp     d9, d8, [sp, #0x10]
  100015a24  stp     x24, x23, [sp, #0x20]
  100015a28  stp     x22, x21, [sp, #0x30]
  100015a2c  stp     x20, x19, [sp, #0x40]
  100015a30  stp     x29, x30, [sp, #0x50]
  100015a34  add     x29, sp, #0x50
  100015a38  mov     x19, x0
  100015a3c  adrp    x8, #0x100417000
  100015a40  nop
  100015a44  ldr     x20, [x8, #0x5c8]
  100015a48  mov     x1, x20
  100015a4c  bl      _objc_msgSend                            ; [self bulletsInClip]
  100015a50  cmp     w0, #1
  100015a54  b.lt    loc_100015bf4                            ; if ([self bulletsInClip] < 1)
  100015a58  adrp    x8, #0x100417000
  100015a5c  nop
  100015a60  ldr     x22, [x8, #0x588]
  100015a64  mov     x0, x19
  100015a68  mov     x1, x22
  100015a6c  bl      _objc_msgSend                            ; [self bulletsTotal]
  100015a70  cmp     w0, #1
  100015a74  b.lt    loc_100015bf4                            ; if ([self bulletsTotal] < 1)
  100015a78  adrp    x8, #0x100417000
  100015a7c  nop
  100015a80  ldr     x1, [x8, #0x5d0]
  100015a84  mov     x0, x19
  100015a88  bl      _objc_msgSend                            ; [self numShotsFired]
  100015a8c  add     x2, x0, #1
  100015a90  adrp    x8, #0x100417000
  100015a94  nop
  100015a98  ldr     x1, [x8, #0x5d8]
  100015a9c  mov     x0, x19
  100015aa0  bl      _objc_msgSend                            ; [self setNumShotsFired:([self numShotsFired] + 1)]
  100015aa4  mov     x0, x19
  100015aa8  mov     x1, x20
  100015aac  bl      _objc_msgSend                            ; [self bulletsInClip]
  100015ab0  sub     w2, w0, #1
  100015ab4  adrp    x8, #0x100417000
  100015ab8  nop
  100015abc  ldr     x21, [x8, #0x4e0]
  100015ac0  mov     x0, x19
  100015ac4  mov     x1, x21
  100015ac8  bl      _objc_msgSend                            ; [self setBulletsInClip:([self bulletsInClip] - 1)]
  100015acc  mov     x0, x19
  100015ad0  mov     x1, x22
  100015ad4  bl      _objc_msgSend                            ; [self bulletsTotal]
  100015ad8  sub     w2, w0, #1
  100015adc  adrp    x8, #0x100417000
  100015ae0  nop
  100015ae4  ldr     x1, [x8, #0x4e8]
  100015ae8  mov     x0, x19
  100015aec  bl      _objc_msgSend                            ; [self setBulletsTotal:([self bulletsTotal] - 1)]
  100015af0  adrp    x8, #0x10041e000
  100015af4  ldr     x0, [x8]                                 ; class ADGameModifiers
  100015af8  adrp    x8, #0x100417000
  100015afc  nop
  100015b00  ldr     x1, [x8, #0x510]
  100015b04  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100015b08  mov     x29, x29
  100015b0c  bl      _objc_retainAutoreleasedReturnValue
  100015b10  mov     x22, x0
  100015b14  adrp    x8, #0x100417000
  100015b18  nop
  100015b1c  ldr     x1, [x8, #0x5e0]
  100015b20  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] rustyWeapons]
  100015b24  mov     x23, x0
  100015b28  mov     x0, x22
  100015b2c  bl      _objc_release
  100015b30  cbz     w23, loc_100015b74                       ; if ([[ADGameModifiers sharedModifiers] rustyWeapons] == 0)
  100015b34  bl      _rand                                    ; rand()
  100015b38  sxtw    x8, w0
  100015b3c  mov     w9, #0x51eb0000
  100015b40  movk    w9, #0x851f
  100015b44  mul     x8, x8, x9
  100015b48  lsr     x9, x8, #0x3f
  100015b4c  asr     x8, x8, #0x25
  100015b50  add     w8, w8, w9
  100015b54  mov     w9, #0x64
  100015b58  msub    w8, w8, w9, w0
  100015b5c  cmp     w8, #1
  100015b60  b.ne    loc_100015b74                            ; if ((rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) != 1)
  100015b64  mov     w2, #0
  100015b68  mov     x0, x19
  100015b6c  mov     x1, x21
  100015b70  bl      _objc_msgSend                            ; [self setBulletsInClip:0]
loc_100015b74:
  100015b74  mov     x0, x19
  100015b78  mov     x1, x20
  100015b7c  bl      _objc_msgSend                            ; [self bulletsInClip]
  100015b80  scvtf   d9, w0
  100015b84  adrp    x8, #0x100417000
  100015b88  nop
  100015b8c  ldr     x1, [x8, #0x4d8]
  100015b90  mov     x0, x19
  100015b94  bl      _objc_msgSend                            ; [self capacity]
  100015b98  scvtf   d0, w0
  100015b9c  adrp    x8, #0x100181000
  100015ba0  ldr     d1, [x8, #0xa18]                         ; d1 = 0.2
  100015ba4  fmul    d10, d0, d1
  100015ba8  adrp    x8, #0x10041f000
  100015bac  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADWeapon.continuousSound (+0x28)
  100015bb0  ldr     x0, [x19, x8]                            ; x0 = self->continuousSound
  100015bb4  adrp    x8, #0x100416000
  100015bb8  nop
  100015bbc  ldr     x20, [x8, #0xcb0]
  100015bc0  adrp    x8, #0x100181000
  100015bc4  ldr     s8, [x8, #0xa14]                         ; s8 = 0.600000024
  100015bc8  mov     x1, x20
  100015bcc  mov     v0.16b, v8.16b
  100015bd0  bl      _objc_msgSend                            ; [self->continuousSound setGain:0.6]
  100015bd4  adrp    x8, #0x10041f000
  100015bd8  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADWeapon.continuousWarning (+0x30)
  100015bdc  ldr     x0, [x19, x8]                            ; x0 = self->continuousWarning
  100015be0  fcmp    d9, d10
  100015be4  b.le    loc_100015bfc                            ; if ((float)[self bulletsInClip] <= (or unordered) ((float)[self capacity] * 0.2))
  100015be8  movi    v0.16b, #0
  100015bec  mov     x1, x20
  100015bf0  b       loc_100015c04
loc_100015bf4:
  100015bf4  mov     w0, #0
  100015bf8  b       loc_100015c44
loc_100015bfc:
  100015bfc  mov     x1, x20
  100015c00  mov     v0.16b, v8.16b
loc_100015c04:
  100015c04  bl      _objc_msgSend                            ; [self->continuousWarning setGain:d0]
  100015c08  adrp    x8, #0x100416000
  100015c0c  nop
  100015c10  ldr     x1, [x8, #0xc88]
  100015c14  mov     x0, x19
  100015c18  bl      _objc_msgSend                            ; [self weaponManager]
  100015c1c  mov     x29, x29
  100015c20  bl      _objc_retainAutoreleasedReturnValue
  100015c24  mov     x19, x0
  100015c28  adrp    x8, #0x100417000
  100015c2c  nop
  100015c30  ldr     x1, [x8, #0x5e8]
  100015c34  bl      _objc_msgSend                            ; [[self weaponManager] shot]
  100015c38  mov     x0, x19
  100015c3c  bl      _objc_release
  100015c40  mov     w0, #1
loc_100015c44:
  100015c44  ldp     x29, x30, [sp, #0x50]
  100015c48  ldp     x20, x19, [sp, #0x40]
  100015c4c  ldp     x22, x21, [sp, #0x30]
  100015c50  ldp     x24, x23, [sp, #0x20]
  100015c54  ldp     d9, d8, [sp, #0x10]
  100015c58  ldp     d11, d10, [sp], #0x60
  100015c5c  ret
  100015c60  mov     x20, x0
  100015c64  mov     x0, x22
  100015c68  b       loc_100015c74
  100015c6c  mov     x20, x0
  100015c70  mov     x0, x19
loc_100015c74:
  100015c74  bl      _objc_release
  100015c78  mov     x0, x20
  100015c7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeapon playSingleShootSound]
; address 0x100015c80  size 652  kind objc
; ======================================================================
  100015c80  stp     d9, d8, [sp, #-0x70]!
  100015c84  stp     x28, x27, [sp, #0x10]
  100015c88  stp     x26, x25, [sp, #0x20]
  100015c8c  stp     x24, x23, [sp, #0x30]
  100015c90  stp     x22, x21, [sp, #0x40]
  100015c94  stp     x20, x19, [sp, #0x50]
  100015c98  stp     x29, x30, [sp, #0x60]
  100015c9c  add     x29, sp, #0x60
  100015ca0  sub     sp, sp, #0x20
  100015ca4  mov     x21, x0
  100015ca8  mov     x20, #0
  100015cac  str     xzr, [sp, #0x18]
  100015cb0  adrp    x8, #0x100416000
  100015cb4  nop
  100015cb8  ldr     x22, [x8, #0xc98]
  100015cbc  adrp    x8, #0x100416000
  100015cc0  nop
  100015cc4  ldr     x23, [x8, #0xca0]
  100015cc8  adrp    x8, #0x100417000
  100015ccc  nop
  100015cd0  ldr     x24, [x8, #0x5c8]
  100015cd4  adrp    x8, #0x100417000
  100015cd8  nop
  100015cdc  ldr     x25, [x8, #0x4d8]
  100015ce0  adrp    x8, #0x100417000
  100015ce4  nop
  100015ce8  ldr     x26, [x8, #0x598]
  100015cec  adrp    x8, #0x100417000
  100015cf0  nop
  100015cf4  ldr     x8, [x8, #0x5f0]
  100015cf8  str     x8, [sp, #8]
  100015cfc  adrp    x28, #0x1003ba000
  100015d00  add     x28, x28, #0x7f0                         ; @"_fire_"
  100015d04  adrp    x8, #0x100181000
  100015d08  ldr     d8, [x8, #0xa18]                         ; d8 = 0.2
  100015d0c  b       loc_100015d38
loc_100015d10:
  100015d10  mov     x29, x29
  100015d14  bl      _objc_retainAutoreleasedReturnValue
  100015d18  str     x0, [sp, #0x10]
  100015d1c  ldr     x0, [sp, #0x18]
  100015d20  bl      _objc_release
  100015d24  mov     x0, x19
  100015d28  bl      _objc_release
  100015d2c  mov     x20, x27
  100015d30  ldr     x8, [sp, #0x10]
  100015d34  str     x8, [sp, #0x18]
loc_100015d38:
  100015d38  cbz     x20, loc_100015d4c                       ; if (x20 == 0)
  100015d3c  mov     x0, x20
  100015d40  mov     x1, x26
  100015d44  bl      _objc_msgSend                            ; [x0 playing]
  100015d48  cbz     w0, loc_100015e04                        ; if ([x0 playing] == 0)
loc_100015d4c:
  100015d4c  mov     x0, x21
  100015d50  mov     x1, x22
  100015d54  bl      _objc_msgSend                            ; [self playlist]
  100015d58  mov     x29, x29
  100015d5c  bl      _objc_retainAutoreleasedReturnValue
  100015d60  mov     x19, x0
  100015d64  mov     x1, x23
  100015d68  mov     x2, x28
  100015d6c  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_fire_"]
  100015d70  mov     x29, x29
  100015d74  bl      _objc_retainAutoreleasedReturnValue
  100015d78  mov     x27, x0
  100015d7c  mov     x0, x20
  100015d80  bl      _objc_release
  100015d84  mov     x0, x19
  100015d88  bl      _objc_release
  100015d8c  mov     x20, x27
  100015d90  mov     x0, x21
  100015d94  mov     x1, x24
  100015d98  bl      _objc_msgSend                            ; [self bulletsInClip]
  100015d9c  mov     x19, x0
  100015da0  mov     x20, x27
  100015da4  mov     x0, x21
  100015da8  mov     x1, x25
  100015dac  bl      _objc_msgSend                            ; [self capacity]
  100015db0  scvtf   d0, w19
  100015db4  scvtf   d1, w0
  100015db8  fmul    d1, d1, d8
  100015dbc  fcmp    d0, d1
  100015dc0  mov     x20, x27
  100015dc4  b.hi    loc_100015d38                            ; if ((float)[self bulletsInClip] > (or unordered) ((float)[self capacity] * 0.2))
  100015dc8  mov     x0, x21
  100015dcc  mov     x1, x22
  100015dd0  bl      _objc_msgSend                            ; [self playlist]
  100015dd4  mov     x29, x29
  100015dd8  bl      _objc_retainAutoreleasedReturnValue
  100015ddc  mov     x19, x0
  100015de0  ldr     x1, [sp, #8]
  100015de4  adrp    x2, #0x1003ba000
  100015de8  add     x2, x2, #0x810                           ; @"_warning"
  100015dec  bl      _objc_msgSend                            ; [[self playlist] anySoundWihSuffix:@"_warning"]
  100015df0  b       loc_100015d10
  100015df4  mov     x21, x0
  100015df8  mov     x0, x19
  100015dfc  bl      _objc_release
  100015e00  b       loc_100015f04
loc_100015e04:
  100015e04  adrp    x8, #0x100416000
  100015e08  nop
  100015e0c  ldr     x21, [x8, #0xca8]
  100015e10  mov     w2, #0
  100015e14  mov     x0, x20
  100015e18  mov     x1, x21
  100015e1c  ldr     x19, [sp, #0x18]
  100015e20  bl      _objc_msgSend                            ; [x0 setSpatialized:0]
  100015e24  adrp    x8, #0x100416000
  100015e28  nop
  100015e2c  ldr     x22, [x8, #0xcb0]
  100015e30  adrp    x8, #0x100181000
  100015e34  ldr     s8, [x8, #0xa14]                         ; s8 = 0.600000024
  100015e38  mov     x0, x20
  100015e3c  mov     x1, x22
  100015e40  mov     v0.16b, v8.16b
  100015e44  bl      _objc_msgSend                            ; [x0 setGain:0.6]
  100015e48  adrp    x8, #0x100416000
  100015e4c  nop
  100015e50  ldr     x23, [x8, #0xcb8]
  100015e54  mov     w2, #0
  100015e58  mov     x0, x20
  100015e5c  mov     x1, x23
  100015e60  bl      _objc_msgSend                            ; [x0 play:0]
  100015e64  cbz     x19, loc_100015e98                       ; if (x19 == 0)
  100015e68  mov     w2, #0
  100015e6c  mov     x0, x19
  100015e70  mov     x1, x21
  100015e74  bl      _objc_msgSend                            ; [x0 setSpatialized:0]
  100015e78  mov     x0, x19
  100015e7c  mov     x1, x22
  100015e80  mov     v0.16b, v8.16b
  100015e84  bl      _objc_msgSend                            ; [x0 setGain:0.6]
  100015e88  mov     w2, #0
  100015e8c  mov     x0, x19
  100015e90  mov     x1, x23
  100015e94  bl      _objc_msgSend                            ; [x0 play:0]
loc_100015e98:
  100015e98  mov     x0, x19
  100015e9c  bl      _objc_release
  100015ea0  mov     x0, x20
  100015ea4  sub     sp, x29, #0x60
  100015ea8  ldp     x29, x30, [sp, #0x60]
  100015eac  ldp     x20, x19, [sp, #0x50]
  100015eb0  ldp     x22, x21, [sp, #0x40]
  100015eb4  ldp     x24, x23, [sp, #0x30]
  100015eb8  ldp     x26, x25, [sp, #0x20]
  100015ebc  ldp     x28, x27, [sp, #0x10]
  100015ec0  ldp     d9, d8, [sp], #0x70
  100015ec4  b       _objc_release
  100015ec8  mov     x21, x0
  100015ecc  b       loc_100015edc
  100015ed0  mov     x21, x0
  100015ed4  mov     x0, x19
  100015ed8  bl      _objc_release
loc_100015edc:
  100015edc  ldr     x19, [sp, #0x18]
loc_100015ee0:
  100015ee0  mov     x0, x19
  100015ee4  bl      _objc_release
  100015ee8  mov     x0, x20
  100015eec  bl      _objc_release
  100015ef0  mov     x0, x21
  100015ef4  bl      __Unwind_Resume                          ; Unwind_Resume()
  100015ef8  mov     x21, x0
  100015efc  b       loc_100015ee0
  100015f00  mov     x21, x0
loc_100015f04:
  100015f04  mov     x20, x27
  100015f08  b       loc_100015edc

; ======================================================================
; -[ADWeapon playClickSound]
; address 0x100015f0c  size 628  kind objc
; ======================================================================
  100015f0c  stp     x22, x21, [sp, #-0x30]!
  100015f10  stp     x20, x19, [sp, #0x10]
  100015f14  stp     x29, x30, [sp, #0x20]
  100015f18  add     x29, sp, #0x20
  100015f1c  mov     x20, x0
  100015f20  adrp    x8, #0x100416000
  100015f24  nop
  100015f28  ldr     x1, [x8, #0xc98]
  100015f2c  bl      _objc_msgSend                            ; [self playlist]
  100015f30  mov     x29, x29
  100015f34  bl      _objc_retainAutoreleasedReturnValue
  100015f38  mov     x21, x0
  100015f3c  adrp    x8, #0x10041f000
  100015f40  ldrsw   x8, [x8, #0x560]                         ; ivar offset ADWeapon.clickSoundPrefix (+0x20)
  100015f44  ldr     x2, [x20, x8]                            ; x2 = self->clickSoundPrefix
  100015f48  adrp    x8, #0x100417000
  100015f4c  nop
  100015f50  ldr     x1, [x8, #0x5c0]
  100015f54  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:self->clickSoundPrefix]
  100015f58  mov     x29, x29
  100015f5c  bl      _objc_retainAutoreleasedReturnValue
  100015f60  mov     x19, x0
  100015f64  mov     x0, x21
  100015f68  bl      _objc_release
  100015f6c  adrp    x8, #0x100416000
  100015f70  nop
  100015f74  ldr     x1, [x8, #0xca8]
  100015f78  mov     w2, #0
  100015f7c  mov     x0, x19
  100015f80  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:self->clickSoundPrefix] setSpatialized:0]
  100015f84  adrp    x8, #0x100416000
  100015f88  nop
  100015f8c  ldr     x1, [x8, #0xcb8]
  100015f90  mov     w2, #0
  100015f94  mov     x0, x19
  100015f98  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:self->clickSoundPrefix] play:0]
  100015f9c  adrp    x8, #0x10041d000
  100015fa0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100015fa4  adrp    x8, #0x100416000
  100015fa8  nop
  100015fac  ldr     x1, [x8, #0xc00]
  100015fb0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100015fb4  mov     x29, x29
  100015fb8  bl      _objc_retainAutoreleasedReturnValue
  100015fbc  mov     x21, x0
  100015fc0  adrp    x8, #0x100417000
  100015fc4  nop
  100015fc8  ldr     x1, [x8, #0x5f8]
  100015fcc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  100015fd0  mov     x22, x0
  100015fd4  mov     x0, x21
  100015fd8  bl      _objc_release
  100015fdc  cbz     w22, loc_100016114                       ; if ([[ADGameParameters sharedParameters] lastAnnouncerValue] == 0)
  100015fe0  adrp    x8, #0x10041f000
  100015fe4  ldrsw   x8, [x8, #0x564]                         ; ivar offset ADWeapon.lastAnnouncerSpeech (+0x38)
  100015fe8  ldr     s0, [x20, x8]                            ; s0 = self->lastAnnouncerSpeech
  100015fec  fmov    s1, #5.00000000
  100015ff0  fcmp    s0, s1
  100015ff4  b.le    loc_100016114                            ; if (self->lastAnnouncerSpeech <= (or unordered) 5)
  100015ff8  str     wzr, [x20, x8]                           ; self->lastAnnouncerSpeech = 0
  100015ffc  adrp    x8, #0x100417000
  100016000  nop
  100016004  ldr     x1, [x8, #0x588]
  100016008  mov     x21, #0
  10001600c  mov     x0, x20
  100016010  bl      _objc_msgSend                            ; [self bulletsTotal]
  100016014  mov     x8, x0
  100016018  adrp    x9, #0x10041d000
  10001601c  ldr     x0, [x9, #0xff8]                         ; class S3DEngine
  100016020  adrp    x9, #0x100417000
  100016024  add     x9, x9, #0x4f0                           ; &@selector(engine)
  100016028  ldr     x1, [x9]
  10001602c  cmp     w8, #1
  100016030  b.lt    loc_10001608c                            ; if ([self bulletsTotal] < 1)
  100016034  mov     x21, #0
  100016038  bl      _objc_msgSend                            ; [S3DEngine engine]
  10001603c  mov     x29, x29
  100016040  bl      _objc_retainAutoreleasedReturnValue
  100016044  mov     x20, x0
  100016048  adrp    x8, #0x100417000
  10001604c  nop
  100016050  ldr     x1, [x8, #0x4f8]
  100016054  adrp    x2, #0x1003ba000
  100016058  add     x2, x2, #0x830                           ; @"announcer"
  10001605c  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  100016060  mov     x29, x29
  100016064  bl      _objc_retainAutoreleasedReturnValue
  100016068  mov     x22, x0
  10001606c  adrp    x8, #0x100416000
  100016070  nop
  100016074  ldr     x1, [x8, #0xca0]
  100016078  adrp    x2, #0x1003ba000
  10001607c  add     x2, x2, #0x850                           ; @"reload"
  100016080  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] anySoundContaining:@"reload"]
  100016084  mov     x29, x29
  100016088  b       loc_1000160e0
loc_10001608c:
  10001608c  mov     x21, #0
  100016090  bl      _objc_msgSend                            ; [S3DEngine engine]
  100016094  mov     x29, x29
  100016098  bl      _objc_retainAutoreleasedReturnValue
  10001609c  mov     x20, x0
  1000160a0  adrp    x8, #0x100417000
  1000160a4  nop
  1000160a8  ldr     x1, [x8, #0x4f8]
  1000160ac  adrp    x2, #0x1003ba000
  1000160b0  add     x2, x2, #0x830                           ; @"announcer"
  1000160b4  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  1000160b8  mov     x29, x29
  1000160bc  bl      _objc_retainAutoreleasedReturnValue
  1000160c0  mov     x22, x0
  1000160c4  adrp    x8, #0x100416000
  1000160c8  nop
  1000160cc  ldr     x1, [x8, #0xca0]
  1000160d0  adrp    x2, #0x1003ba000
  1000160d4  add     x2, x2, #0x870                           ; @"outofammo"
  1000160d8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] anySoundContaining:@"outofammo"]
  1000160dc  mov     x29, x29
loc_1000160e0:
  1000160e0  bl      _objc_retainAutoreleasedReturnValue
  1000160e4  mov     x21, x0
  1000160e8  mov     x0, x22
  1000160ec  bl      _objc_release
  1000160f0  mov     x0, x20
  1000160f4  bl      _objc_release
  1000160f8  adrp    x8, #0x100417000
  1000160fc  nop
  100016100  ldr     x1, [x8, #0x600]
  100016104  mov     x0, x21
  100016108  bl      _objc_msgSend                            ; [x0 play]
  10001610c  mov     x0, x21
  100016110  bl      _objc_release
loc_100016114:
  100016114  mov     x0, x19
  100016118  ldp     x29, x30, [sp, #0x20]
  10001611c  ldp     x20, x19, [sp, #0x10]
  100016120  ldp     x22, x21, [sp], #0x30
  100016124  b       _objc_release
  100016128  mov     x20, x0
  10001612c  b       loc_10001615c
  100016130  mov     x20, x0
  100016134  mov     x0, x21
  100016138  b       loc_100016160
  10001613c  b       loc_100016150
  100016140  b       loc_100016150
  100016144  b       loc_10001614c
  100016148  b       loc_10001616c
loc_10001614c:
  10001614c  mov     x21, x20
loc_100016150:
  100016150  mov     x20, x0
loc_100016154:
  100016154  mov     x0, x21
  100016158  bl      _objc_release
loc_10001615c:
  10001615c  mov     x0, x19
loc_100016160:
  100016160  bl      _objc_release
  100016164  mov     x0, x20
  100016168  bl      __Unwind_Resume                          ; Unwind_Resume()
loc_10001616c:
  10001616c  mov     x21, x20
  100016170  mov     x20, x0
  100016174  mov     x0, x22
  100016178  bl      _objc_release
  10001617c  b       loc_100016154

; ======================================================================
; -[ADWeapon spread]
; address 0x100016180  size 76  kind objc
; ======================================================================
  100016180  stp     x20, x19, [sp, #-0x20]!
  100016184  stp     x29, x30, [sp, #0x10]
  100016188  add     x29, sp, #0x10
  10001618c  mov     x19, x0
  100016190  adrp    x8, #0x100416000
  100016194  nop
  100016198  ldr     x1, [x8, #0xc60]
  10001619c  bl      _objc_msgSend                            ; [self state]
  1000161a0  adrp    x8, #0x10041f000
  1000161a4  add     x8, x8, #0x580                           ; 0x10041f580
  1000161a8  adrp    x9, #0x10041f000
  1000161ac  add     x9, x9, #0x584                           ; 0x10041f584
  1000161b0  cmp     w0, #3
  1000161b4  csel    x8, x8, x9, eq
  1000161b8  ldrsw   x8, [x8]                                 ; x8 = ([self state] == 3 ? 0x10041f580 : 0x10041f584)[+0x0]
  1000161bc  ldr     s0, [x19, x8]
  1000161c0  ldp     x29, x30, [sp, #0x10]
  1000161c4  ldp     x20, x19, [sp], #0x20
  1000161c8  ret

; ======================================================================
; -[ADWeapon reload]
; address 0x1000161cc  size 864  kind objc
; ======================================================================
  1000161cc  stp     x24, x23, [sp, #-0x40]!
  1000161d0  stp     x22, x21, [sp, #0x10]
  1000161d4  stp     x20, x19, [sp, #0x20]
  1000161d8  stp     x29, x30, [sp, #0x30]
  1000161dc  add     x29, sp, #0x30
  1000161e0  sub     sp, sp, #0x10
  1000161e4  mov     x19, x0
  1000161e8  adrp    x8, #0x100417000
  1000161ec  nop
  1000161f0  ldr     x1, [x8, #0x588]
  1000161f4  bl      _objc_msgSend                            ; [self bulletsTotal]
  1000161f8  cbz     w0, loc_1000163a0                        ; if ([self bulletsTotal] == 0)
  1000161fc  adrp    x8, #0x100417000
  100016200  nop
  100016204  ldr     x1, [x8, #0x608]
  100016208  mov     x0, x19
  10001620c  bl      _objc_msgSend                            ; [self isReloading]
  100016210  tbnz    w0, #0, loc_1000164ac                    ; if (([self isReloading] & 1))
  100016214  adrp    x8, #0x10041e000
  100016218  ldr     x0, [x8, #8]                             ; class ADTracker
  10001621c  adrp    x8, #0x100416000
  100016220  nop
  100016224  ldr     x1, [x8, #0xac0]
  100016228  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10001622c  mov     x29, x29
  100016230  bl      _objc_retainAutoreleasedReturnValue
  100016234  mov     x20, x0
  100016238  adrp    x8, #0x100417000
  10001623c  nop
  100016240  ldr     x1, [x8, #0x5c8]
  100016244  mov     x0, x19
  100016248  bl      _objc_msgSend                            ; [self bulletsInClip]
  10001624c  mov     x22, x0
  100016250  adrp    x8, #0x100417000
  100016254  nop
  100016258  ldr     x21, [x8, #0x450]
  10001625c  mov     x0, x19
  100016260  mov     x1, x21
  100016264  bl      _objc_msgSend                            ; [self name]
  100016268  mov     x3, x0
  10001626c  sxtw    x2, w22
  100016270  adrp    x8, #0x100417000
  100016274  nop
  100016278  ldr     x1, [x8, #0x610]
  10001627c  mov     x0, x20
  100016280  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] reloadWeaponWithRemainingBullets:[self bulletsInClip] InWeapon:[self name]]
  100016284  mov     x0, x20
  100016288  bl      _objc_release
  10001628c  adrp    x8, #0x100416000
  100016290  nop
  100016294  ldr     x1, [x8, #0xc98]
  100016298  mov     x0, x19
  10001629c  bl      _objc_msgSend                            ; [self playlist]
  1000162a0  mov     x29, x29
  1000162a4  bl      _objc_retainAutoreleasedReturnValue
  1000162a8  mov     x20, x0
  1000162ac  adrp    x8, #0x10041d000
  1000162b0  ldr     x23, [x8, #0xf78]                        ; class NSString
  1000162b4  mov     x0, x19
  1000162b8  mov     x1, x21
  1000162bc  bl      _objc_msgSend                            ; [self name]
  1000162c0  mov     x29, x29
  1000162c4  bl      _objc_retainAutoreleasedReturnValue
  1000162c8  mov     x22, x0
  1000162cc  adrp    x8, #0x100416000
  1000162d0  nop
  1000162d4  ldr     x1, [x8, #0xee8]
  1000162d8  str     x22, [sp]
  1000162dc  adrp    x2, #0x1003ba000
  1000162e0  add     x2, x2, #0x890                           ; @"weapon_gun_%@_reloadfull"
  1000162e4  mov     x0, x23
  1000162e8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]
  1000162ec  mov     x29, x29
  1000162f0  bl      _objc_retainAutoreleasedReturnValue
  1000162f4  mov     x23, x0
  1000162f8  adrp    x8, #0x100417000
  1000162fc  nop
  100016300  ldr     x1, [x8, #0x5c0]
  100016304  mov     x0, x20
  100016308  mov     x2, x23
  10001630c  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]]
  100016310  mov     x29, x29
  100016314  bl      _objc_retainAutoreleasedReturnValue
  100016318  mov     x21, x0
  10001631c  mov     x0, x23
  100016320  bl      _objc_release
  100016324  mov     x0, x22
  100016328  bl      _objc_release
  10001632c  mov     x0, x20
  100016330  bl      _objc_release
  100016334  adrp    x8, #0x100416000
  100016338  nop
  10001633c  ldr     x1, [x8, #0xca8]
  100016340  mov     w2, #0
  100016344  mov     x0, x21
  100016348  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]] setSpatialized:0]
  10001634c  adrp    x8, #0x100416000
  100016350  nop
  100016354  ldr     x1, [x8, #0xcb0]
  100016358  adrp    x8, #0x100181000
  10001635c  ldr     s0, [x8, #0xa14]                         ; s0 = 0.600000024
  100016360  mov     x0, x21
  100016364  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]] setGain:0.6]
  100016368  adrp    x8, #0x100416000
  10001636c  nop
  100016370  ldr     x1, [x8, #0xcb8]
  100016374  mov     w2, #0
  100016378  mov     x0, x21
  10001637c  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]] play:0]
  100016380  adrp    x8, #0x100417000
  100016384  nop
  100016388  ldr     x1, [x8, #0x570]
  10001638c  mov     w2, #8
  100016390  mov     x0, x19
  100016394  bl      _objc_msgSend                            ; [self changeState:8]
  100016398  mov     x0, x21
  10001639c  b       loc_100016494
loc_1000163a0:
  1000163a0  adrp    x8, #0x10041d000
  1000163a4  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  1000163a8  adrp    x8, #0x100416000
  1000163ac  nop
  1000163b0  ldr     x1, [x8, #0xc00]
  1000163b4  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  1000163b8  mov     x29, x29
  1000163bc  bl      _objc_retainAutoreleasedReturnValue
  1000163c0  mov     x20, x0
  1000163c4  adrp    x8, #0x100417000
  1000163c8  nop
  1000163cc  ldr     x1, [x8, #0x5f8]
  1000163d0  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  1000163d4  mov     x21, x0
  1000163d8  mov     x0, x20
  1000163dc  bl      _objc_release
  1000163e0  cbz     w21, loc_1000164ac                       ; if ([[ADGameParameters sharedParameters] lastAnnouncerValue] == 0)
  1000163e4  adrp    x8, #0x10041f000
  1000163e8  ldrsw   x8, [x8, #0x564]                         ; ivar offset ADWeapon.lastAnnouncerSpeech (+0x38)
  1000163ec  ldr     s0, [x19, x8]                            ; s0 = self->lastAnnouncerSpeech
  1000163f0  fmov    s1, #5.00000000
  1000163f4  fcmp    s0, s1
  1000163f8  b.le    loc_1000164ac                            ; if (self->lastAnnouncerSpeech <= (or unordered) 5)
  1000163fc  str     wzr, [x19, x8]                           ; self->lastAnnouncerSpeech = 0
  100016400  adrp    x8, #0x10041d000
  100016404  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100016408  adrp    x8, #0x100417000
  10001640c  nop
  100016410  ldr     x1, [x8, #0x4f0]
  100016414  bl      _objc_msgSend                            ; [S3DEngine engine]
  100016418  mov     x29, x29
  10001641c  bl      _objc_retainAutoreleasedReturnValue
  100016420  mov     x20, x0
  100016424  adrp    x8, #0x100417000
  100016428  nop
  10001642c  ldr     x1, [x8, #0x4f8]
  100016430  adrp    x2, #0x1003ba000
  100016434  add     x2, x2, #0x830                           ; @"announcer"
  100016438  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"announcer"]
  10001643c  mov     x29, x29
  100016440  bl      _objc_retainAutoreleasedReturnValue
  100016444  mov     x21, x0
  100016448  adrp    x8, #0x100416000
  10001644c  nop
  100016450  ldr     x1, [x8, #0xca0]
  100016454  adrp    x2, #0x1003ba000
  100016458  add     x2, x2, #0x870                           ; @"outofammo"
  10001645c  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"announcer"] anySoundContaining:@"outofammo"]
  100016460  mov     x29, x29
  100016464  bl      _objc_retainAutoreleasedReturnValue
  100016468  mov     x22, x0
  10001646c  mov     x0, x21
  100016470  bl      _objc_release
  100016474  mov     x0, x20
  100016478  bl      _objc_release
  10001647c  adrp    x8, #0x100417000
  100016480  nop
  100016484  ldr     x1, [x8, #0x600]
  100016488  mov     x0, x22
  10001648c  bl      _objc_msgSend                            ; [[[[S3DEngine engine] playListWithName:@"announcer"] anySoundContaining:@"outofammo"] play]
  100016490  mov     x0, x22
loc_100016494:
  100016494  sub     sp, x29, #0x30
  100016498  ldp     x29, x30, [sp, #0x30]
  10001649c  ldp     x20, x19, [sp, #0x20]
  1000164a0  ldp     x22, x21, [sp, #0x10]
  1000164a4  ldp     x24, x23, [sp], #0x40
  1000164a8  b       _objc_release
loc_1000164ac:
  1000164ac  sub     sp, x29, #0x30
  1000164b0  ldp     x29, x30, [sp, #0x30]
  1000164b4  ldp     x20, x19, [sp, #0x20]
  1000164b8  ldp     x22, x21, [sp, #0x10]
  1000164bc  ldp     x24, x23, [sp], #0x40
  1000164c0  ret
  1000164c4  mov     x19, x0
  1000164c8  mov     x0, x21
  1000164cc  b       loc_100016508
  1000164d0  b       loc_100016500
  1000164d4  b       loc_100016500
  1000164d8  b       loc_100016500
  1000164dc  b       loc_100016500
  1000164e0  mov     x19, x0
  1000164e4  b       loc_1000164f4
  1000164e8  mov     x19, x0
  1000164ec  mov     x0, x23
  1000164f0  bl      _objc_release
loc_1000164f4:
  1000164f4  mov     x0, x22
loc_1000164f8:
  1000164f8  bl      _objc_release
  1000164fc  b       loc_100016504
loc_100016500:
  100016500  mov     x19, x0
loc_100016504:
  100016504  mov     x0, x20
loc_100016508:
  100016508  bl      _objc_release
  10001650c  mov     x0, x19
  100016510  bl      __Unwind_Resume                          ; Unwind_Resume()
  100016514  mov     x19, x0
  100016518  mov     x0, x21
  10001651c  b       loc_1000164f8
  100016520  mov     x19, x0
  100016524  mov     x0, x22
  100016528  b       loc_100016508

; ======================================================================
; -[ADWeapon interruptReload]
; address 0x10001652c  size 336  kind objc
; ======================================================================
  10001652c  stp     x24, x23, [sp, #-0x40]!
  100016530  stp     x22, x21, [sp, #0x10]
  100016534  stp     x20, x19, [sp, #0x20]
  100016538  stp     x29, x30, [sp, #0x30]
  10001653c  add     x29, sp, #0x30
  100016540  sub     sp, sp, #0x10
  100016544  mov     x19, x0
  100016548  adrp    x8, #0x100416000
  10001654c  nop
  100016550  ldr     x1, [x8, #0xc98]
  100016554  bl      _objc_msgSend                            ; [self playlist]
  100016558  mov     x29, x29
  10001655c  bl      _objc_retainAutoreleasedReturnValue
  100016560  mov     x20, x0
  100016564  adrp    x8, #0x10041d000
  100016568  ldr     x22, [x8, #0xf78]                        ; class NSString
  10001656c  adrp    x8, #0x100417000
  100016570  nop
  100016574  ldr     x1, [x8, #0x450]
  100016578  mov     x0, x19
  10001657c  bl      _objc_msgSend                            ; [self name]
  100016580  mov     x29, x29
  100016584  bl      _objc_retainAutoreleasedReturnValue
  100016588  mov     x21, x0
  10001658c  adrp    x8, #0x100416000
  100016590  nop
  100016594  ldr     x1, [x8, #0xee8]
  100016598  str     x21, [sp]
  10001659c  adrp    x2, #0x1003ba000
  1000165a0  add     x2, x2, #0x890                           ; @"weapon_gun_%@_reloadfull"
  1000165a4  mov     x0, x22
  1000165a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]
  1000165ac  mov     x29, x29
  1000165b0  bl      _objc_retainAutoreleasedReturnValue
  1000165b4  mov     x23, x0
  1000165b8  adrp    x8, #0x100417000
  1000165bc  nop
  1000165c0  ldr     x1, [x8, #0x5c0]
  1000165c4  mov     x0, x20
  1000165c8  mov     x2, x23
  1000165cc  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]]
  1000165d0  mov     x29, x29
  1000165d4  bl      _objc_retainAutoreleasedReturnValue
  1000165d8  mov     x22, x0
  1000165dc  mov     x0, x23
  1000165e0  bl      _objc_release
  1000165e4  mov     x0, x21
  1000165e8  bl      _objc_release
  1000165ec  mov     x0, x20
  1000165f0  bl      _objc_release
  1000165f4  adrp    x8, #0x100417000
  1000165f8  nop
  1000165fc  ldr     x1, [x8, #0x568]
  100016600  mov     x0, x22
  100016604  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_reloadfull", [self name]]] stop]
  100016608  adrp    x8, #0x100416000
  10001660c  nop
  100016610  ldr     x1, [x8, #0xc78]
  100016614  mov     w2, #0
  100016618  mov     x0, x19
  10001661c  bl      _objc_msgSend                            ; [self setState:0]
  100016620  mov     x0, x22
  100016624  sub     sp, x29, #0x30
  100016628  ldp     x29, x30, [sp, #0x30]
  10001662c  ldp     x20, x19, [sp, #0x20]
  100016630  ldp     x22, x21, [sp, #0x10]
  100016634  ldp     x24, x23, [sp], #0x40
  100016638  b       _objc_release
  10001663c  mov     x19, x0
  100016640  mov     x0, x22
  100016644  b       loc_100016670
  100016648  mov     x19, x0
  10001664c  b       loc_10001666c
  100016650  mov     x19, x0
  100016654  b       loc_100016664
  100016658  mov     x19, x0
  10001665c  mov     x0, x23
  100016660  bl      _objc_release
loc_100016664:
  100016664  mov     x0, x21
  100016668  bl      _objc_release
loc_10001666c:
  10001666c  mov     x0, x20
loc_100016670:
  100016670  bl      _objc_release
  100016674  mov     x0, x19
  100016678  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeapon isReloading]
; address 0x10001667c  size 104  kind objc
; ======================================================================
  10001667c  stp     x20, x19, [sp, #-0x20]!
  100016680  stp     x29, x30, [sp, #0x10]
  100016684  add     x29, sp, #0x10
  100016688  mov     x19, x0
  10001668c  adrp    x8, #0x100416000
  100016690  nop
  100016694  ldr     x20, [x8, #0xc60]
  100016698  mov     x1, x20
  10001669c  bl      _objc_msgSend                            ; [self state]
  1000166a0  cmp     w0, #8
  1000166a4  b.eq    loc_1000166bc                            ; if ([self state] == 8)
  1000166a8  mov     x0, x19
  1000166ac  mov     x1, x20
  1000166b0  bl      _objc_msgSend                            ; [self state]
  1000166b4  cmp     w0, #7
  1000166b8  b.ne    loc_1000166c4                            ; if ([self state] != 7)
loc_1000166bc:
  1000166bc  mov     w0, #1
  1000166c0  b       loc_1000166d8
loc_1000166c4:
  1000166c4  mov     x0, x19
  1000166c8  mov     x1, x20
  1000166cc  bl      _objc_msgSend                            ; [self state]
  1000166d0  cmp     w0, #6
  1000166d4  cset    w0, eq
loc_1000166d8:
  1000166d8  ldp     x29, x30, [sp, #0x10]
  1000166dc  ldp     x20, x19, [sp], #0x20
  1000166e0  ret

; ======================================================================
; -[ADWeapon deploy]
; address 0x1000166e4  size 840  kind objc
; ======================================================================
  1000166e4  stp     d9, d8, [sp, #-0x70]!
  1000166e8  stp     x28, x27, [sp, #0x10]
  1000166ec  stp     x26, x25, [sp, #0x20]
  1000166f0  stp     x24, x23, [sp, #0x30]
  1000166f4  stp     x22, x21, [sp, #0x40]
  1000166f8  stp     x20, x19, [sp, #0x50]
  1000166fc  stp     x29, x30, [sp, #0x60]
  100016700  add     x29, sp, #0x60
  100016704  sub     sp, sp, #0x10
  100016708  mov     x20, x0
  10001670c  adrp    x8, #0x100417000
  100016710  nop
  100016714  ldr     x1, [x8, #0x570]
  100016718  mov     w2, #1
  10001671c  bl      _objc_msgSend                            ; [self changeState:1]
  100016720  adrp    x8, #0x100416000
  100016724  nop
  100016728  ldr     x1, [x8, #0xc70]
  10001672c  mov     x0, x20
  100016730  bl      _objc_msgSend                            ; [self fireRate]
  100016734  adrp    x8, #0x10041f000
  100016738  ldrsw   x8, [x8, #0x558]                         ; ivar offset ADWeapon.timeSinceLastShot (+0xc)
  10001673c  str     s0, [x20, x8]                            ; self->timeSinceLastShot = [self fireRate]
  100016740  adrp    x8, #0x100416000
  100016744  nop
  100016748  ldr     x23, [x8, #0xc98]
  10001674c  mov     x0, x20
  100016750  mov     x1, x23
  100016754  bl      _objc_msgSend                            ; [self playlist]
  100016758  mov     x29, x29
  10001675c  bl      _objc_retainAutoreleasedReturnValue
  100016760  mov     x25, x0
  100016764  adrp    x8, #0x10041d000
  100016768  ldr     x19, [x8, #0xf78]                        ; class NSString
  10001676c  adrp    x8, #0x100417000
  100016770  nop
  100016774  ldr     x22, [x8, #0x450]
  100016778  mov     x0, x20
  10001677c  mov     x1, x22
  100016780  bl      _objc_msgSend                            ; [self name]
  100016784  mov     x29, x29
  100016788  bl      _objc_retainAutoreleasedReturnValue
  10001678c  mov     x26, x0
  100016790  adrp    x8, #0x100416000
  100016794  nop
  100016798  ldr     x21, [x8, #0xee8]
  10001679c  str     x26, [sp]
  1000167a0  adrp    x2, #0x1003ba000
  1000167a4  add     x2, x2, #0x8b0                           ; @"weapon_gun_%@_deploy"
  1000167a8  mov     x0, x19
  1000167ac  mov     x1, x21
  1000167b0  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_deploy", [self name]]
  1000167b4  mov     x29, x29
  1000167b8  bl      _objc_retainAutoreleasedReturnValue
  1000167bc  mov     x27, x0
  1000167c0  adrp    x8, #0x100417000
  1000167c4  nop
  1000167c8  ldr     x24, [x8, #0x5c0]
  1000167cc  mov     x0, x25
  1000167d0  mov     x1, x24
  1000167d4  mov     x2, x27
  1000167d8  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_deploy", [self name]]]
  1000167dc  str     x21, [sp, #8]
  1000167e0  mov     x29, x29
  1000167e4  bl      _objc_retainAutoreleasedReturnValue
  1000167e8  mov     x19, x0
  1000167ec  mov     x0, x27
  1000167f0  bl      _objc_release
  1000167f4  mov     x0, x26
  1000167f8  bl      _objc_release
  1000167fc  mov     x0, x25
  100016800  bl      _objc_release
  100016804  adrp    x8, #0x100416000
  100016808  nop
  10001680c  ldr     x25, [x8, #0xca8]
  100016810  mov     w2, #0
  100016814  mov     x0, x19
  100016818  mov     x1, x25
  10001681c  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_deploy", [self name]]] setSpatialized:0]
  100016820  adrp    x8, #0x100416000
  100016824  nop
  100016828  ldr     x26, [x8, #0xcb0]
  10001682c  adrp    x8, #0x100181000
  100016830  ldr     s8, [x8, #0xa14]                         ; s8 = 0.600000024
  100016834  mov     x0, x19
  100016838  mov     x1, x26
  10001683c  mov     v0.16b, v8.16b
  100016840  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_deploy", [self name]]] setGain:0.6]
  100016844  adrp    x8, #0x100416000
  100016848  nop
  10001684c  ldr     x27, [x8, #0xcb8]
  100016850  mov     w2, #0
  100016854  mov     x0, x19
  100016858  mov     x1, x27
  10001685c  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_deploy", [self name]]] play:0]
  100016860  adrp    x8, #0x10041d000
  100016864  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  100016868  adrp    x8, #0x100416000
  10001686c  nop
  100016870  ldr     x1, [x8, #0xc00]
  100016874  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  100016878  mov     x29, x29
  10001687c  bl      _objc_retainAutoreleasedReturnValue
  100016880  mov     x28, x0
  100016884  adrp    x8, #0x100417000
  100016888  nop
  10001688c  ldr     x1, [x8, #0x5f8]
  100016890  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  100016894  mov     x21, x0
  100016898  mov     x0, x28
  10001689c  bl      _objc_release
  1000168a0  cbz     w21, loc_100016970                       ; if ([[ADGameParameters sharedParameters] lastAnnouncerValue] == 0)
  1000168a4  mov     x0, x20
  1000168a8  mov     x1, x23
  1000168ac  bl      _objc_msgSend                            ; [self playlist]
  1000168b0  mov     x29, x29
  1000168b4  bl      _objc_retainAutoreleasedReturnValue
  1000168b8  mov     x23, x0
  1000168bc  adrp    x8, #0x10041d000
  1000168c0  ldr     x28, [x8, #0xf78]                        ; class NSString
  1000168c4  mov     x0, x20
  1000168c8  mov     x1, x22
  1000168cc  bl      _objc_msgSend                            ; [self name]
  1000168d0  ldr     x20, [sp, #8]
  1000168d4  mov     x29, x29
  1000168d8  bl      _objc_retainAutoreleasedReturnValue
  1000168dc  mov     x22, x0
  1000168e0  str     x22, [sp]
  1000168e4  adrp    x2, #0x1003ba000
  1000168e8  add     x2, x2, #0x8d0                           ; @"weapon_gun_%@_voice"
  1000168ec  mov     x0, x28
  1000168f0  mov     x1, x20
  1000168f4  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"weapon_gun_%@_voice", [self name]]
  1000168f8  mov     x29, x29
  1000168fc  bl      _objc_retainAutoreleasedReturnValue
  100016900  mov     x20, x0
  100016904  mov     x0, x23
  100016908  mov     x1, x24
  10001690c  mov     x2, x20
  100016910  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_voice", [self name]]]
  100016914  mov     x29, x29
  100016918  bl      _objc_retainAutoreleasedReturnValue
  10001691c  mov     x21, x0
  100016920  mov     x0, x20
  100016924  bl      _objc_release
  100016928  mov     x0, x22
  10001692c  bl      _objc_release
  100016930  mov     x0, x23
  100016934  bl      _objc_release
  100016938  mov     w2, #0
  10001693c  mov     x0, x21
  100016940  mov     x1, x25
  100016944  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_voice", [self name]]] setSpatialized:0]
  100016948  mov     x0, x21
  10001694c  mov     x1, x26
  100016950  mov     v0.16b, v8.16b
  100016954  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_voice", [self name]]] setGain:0.6]
  100016958  mov     w2, #0
  10001695c  mov     x0, x21
  100016960  mov     x1, x27
  100016964  bl      _objc_msgSend                            ; [[[self playlist] anySoundWihPrefix:[NSString stringWithFormat:@"weapon_gun_%@_voice", [self name]]] play:0]
  100016968  mov     x0, x21
  10001696c  bl      _objc_release
loc_100016970:
  100016970  mov     x0, x19
  100016974  sub     sp, x29, #0x60
  100016978  ldp     x29, x30, [sp, #0x60]
  10001697c  ldp     x20, x19, [sp, #0x50]
  100016980  ldp     x22, x21, [sp, #0x40]
  100016984  ldp     x24, x23, [sp, #0x30]
  100016988  ldp     x26, x25, [sp, #0x20]
  10001698c  ldp     x28, x27, [sp, #0x10]
  100016990  ldp     d9, d8, [sp], #0x70
  100016994  b       _objc_release
  100016998  mov     x20, x0
  10001699c  b       loc_100016a1c
  1000169a0  mov     x20, x0
  1000169a4  mov     x0, x21
  1000169a8  bl      _objc_release
  1000169ac  b       loc_100016a1c
  1000169b0  mov     x20, x0
  1000169b4  b       loc_1000169d4
  1000169b8  mov     x20, x0
  1000169bc  b       loc_1000169cc
  1000169c0  mov     x20, x0
  1000169c4  mov     x0, x27
  1000169c8  bl      _objc_release
loc_1000169cc:
  1000169cc  mov     x0, x26
  1000169d0  bl      _objc_release
loc_1000169d4:
  1000169d4  mov     x0, x25
  1000169d8  b       loc_100016a20
  1000169dc  mov     x20, x0
  1000169e0  mov     x0, x28
  1000169e4  bl      _objc_release
  1000169e8  b       loc_100016a1c
  1000169ec  mov     x20, x0
  1000169f0  b       loc_100016a14
  1000169f4  mov     x20, x0
  1000169f8  b       loc_100016a0c
  1000169fc  mov     x1, x20
  100016a00  mov     x20, x0
  100016a04  mov     x0, x1
  100016a08  bl      _objc_release
loc_100016a0c:
  100016a0c  mov     x0, x22
  100016a10  bl      _objc_release
loc_100016a14:
  100016a14  mov     x0, x23
  100016a18  bl      _objc_release
loc_100016a1c:
  100016a1c  mov     x0, x19
loc_100016a20:
  100016a20  bl      _objc_release
  100016a24  mov     x0, x20
  100016a28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADWeapon clean]
; address 0x100016a2c  size 76  kind objc
; ======================================================================
  100016a2c  stp     x20, x19, [sp, #-0x20]!
  100016a30  stp     x29, x30, [sp, #0x10]
  100016a34  add     x29, sp, #0x10
  100016a38  mov     x19, x0
  100016a3c  adrp    x8, #0x10041f000
  100016a40  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADWeapon.continuousSound (+0x28)
  100016a44  ldr     x0, [x19, x8]                            ; x0 = self->continuousSound
  100016a48  adrp    x8, #0x100417000
  100016a4c  nop
  100016a50  ldr     x20, [x8, #0x568]
  100016a54  mov     x1, x20
  100016a58  bl      _objc_msgSend                            ; [self->continuousSound stop]
  100016a5c  adrp    x8, #0x10041f000
  100016a60  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADWeapon.continuousWarning (+0x30)
  100016a64  ldr     x0, [x19, x8]                            ; x0 = self->continuousWarning
  100016a68  mov     x1, x20
  100016a6c  ldp     x29, x30, [sp, #0x10]
  100016a70  ldp     x20, x19, [sp], #0x20
  100016a74  b       _objc_msgSend                            ; [self->continuousWarning stop]

; ======================================================================
; -[ADWeapon dealloc]
; address 0x100016a78  size 212  kind objc
; ======================================================================
  100016a78  stp     x20, x19, [sp, #-0x20]!
  100016a7c  stp     x29, x30, [sp, #0x10]
  100016a80  add     x29, sp, #0x10
  100016a84  sub     sp, sp, #0x20
  100016a88  mov     x19, x0
  100016a8c  adrp    x0, #0x1003ba000
  100016a90  add     x0, x0, #0x8f0                           ; @"Dealloc weapon"
  100016a94  bl      _NSLog                                   ; NSLog(@"Dealloc weapon", _cmd)
  100016a98  adrp    x8, #0x100416000
  100016a9c  nop
  100016aa0  ldr     x1, [x8, #0xc98]
  100016aa4  mov     x0, x19
  100016aa8  bl      _objc_msgSend                            ; [self playlist]
  100016aac  mov     x29, x29
  100016ab0  bl      _objc_retainAutoreleasedReturnValue
  100016ab4  mov     x20, x0
  100016ab8  adrp    x8, #0x100417000
  100016abc  nop
  100016ac0  ldr     x1, [x8, #0x618]
  100016ac4  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  100016ac8  mov     x0, x20
  100016acc  bl      _objc_release
  100016ad0  str     x19, [sp, #0x10]
  100016ad4  adrp    x8, #0x10041e000
  100016ad8  ldr     x8, [x8, #0xbf0]
  100016adc  str     x8, [sp, #0x18]
  100016ae0  adrp    x8, #0x100416000
  100016ae4  nop
  100016ae8  ldr     x1, [x8, #0xfc8]
  100016aec  add     x0, sp, #0x10
  100016af0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100016af4  sub     sp, x29, #0x10
  100016af8  ldp     x29, x30, [sp, #0x10]
  100016afc  ldp     x20, x19, [sp], #0x20
  100016b00  ret
  100016b04  mov     x20, x0
  100016b08  b       loc_100016b1c
  100016b0c  mov     x1, x20
  100016b10  mov     x20, x0
  100016b14  mov     x0, x1
  100016b18  bl      _objc_release
loc_100016b1c:
  100016b1c  str     x19, [sp]
  100016b20  adrp    x8, #0x10041e000
  100016b24  ldr     x8, [x8, #0xbf0]
  100016b28  str     x8, [sp, #8]
  100016b2c  adrp    x8, #0x100416000
  100016b30  nop
  100016b34  ldr     x1, [x8, #0xfc8]
  100016b38  mov     x0, sp
  100016b3c  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100016b40  mov     x0, x20
  100016b44  bl      __Unwind_Resume                          ; Unwind_Resume()
  100016b48  bl      sub_10000b760

; ======================================================================
; -[ADWeapon playlist]
; address 0x100016b4c  size 16  kind objc
; ======================================================================
  100016b4c  adrp    x8, #0x10041f000
  100016b50  ldrsw   x8, [x8, #0x588]                         ; ivar offset ADWeapon._playlist (+0x98)
  100016b54  ldr     x0, [x0, x8]                             ; x0 = self->_playlist
  100016b58  ret

; ======================================================================
; -[ADWeapon setPlaylist:]
; address 0x100016b5c  size 56  kind objc
; ======================================================================
  100016b5c  stp     x20, x19, [sp, #-0x20]!
  100016b60  stp     x29, x30, [sp, #0x10]
  100016b64  add     x29, sp, #0x10
  100016b68  mov     x19, x0
  100016b6c  adrp    x8, #0x10041f000
  100016b70  ldrsw   x20, [x8, #0x588]                        ; ivar offset ADWeapon._playlist (+0x98)
  100016b74  mov     x0, x2
  100016b78  bl      _objc_retain
  100016b7c  ldr     x8, [x19, x20]                           ; x8 = self->_playlist
  100016b80  str     x0, [x19, x20]                           ; self->_playlist = arg1
  100016b84  mov     x0, x8
  100016b88  ldp     x29, x30, [sp, #0x10]
  100016b8c  ldp     x20, x19, [sp], #0x20
  100016b90  b       _objc_release

; ======================================================================
; -[ADWeapon weaponManager]
; address 0x100016b94  size 16  kind objc
; ======================================================================
  100016b94  adrp    x8, #0x10041f000
  100016b98  ldrsw   x8, [x8, #0x58c]                         ; ivar offset ADWeapon._weaponManager (+0xa0)
  100016b9c  ldr     x0, [x0, x8]                             ; x0 = self->_weaponManager
  100016ba0  ret

; ======================================================================
; -[ADWeapon setWeaponManager:]
; address 0x100016ba4  size 56  kind objc
; ======================================================================
  100016ba4  stp     x20, x19, [sp, #-0x20]!
  100016ba8  stp     x29, x30, [sp, #0x10]
  100016bac  add     x29, sp, #0x10
  100016bb0  mov     x19, x0
  100016bb4  adrp    x8, #0x10041f000
  100016bb8  ldrsw   x20, [x8, #0x58c]                        ; ivar offset ADWeapon._weaponManager (+0xa0)
  100016bbc  mov     x0, x2
  100016bc0  bl      _objc_retain
  100016bc4  ldr     x8, [x19, x20]                           ; x8 = self->_weaponManager
  100016bc8  str     x0, [x19, x20]                           ; self->_weaponManager = arg1
  100016bcc  mov     x0, x8
  100016bd0  ldp     x29, x30, [sp, #0x10]
  100016bd4  ldp     x20, x19, [sp], #0x20
  100016bd8  b       _objc_release

; ======================================================================
; -[ADWeapon setSpread:]
; address 0x100016bdc  size 16  kind objc
; ======================================================================
  100016bdc  adrp    x8, #0x10041f000
  100016be0  ldrsw   x8, [x8, #0x584]                         ; ivar offset ADWeapon._spread (+0x4c)
  100016be4  str     s0, [x0, x8]                             ; self->_spread = arg1
  100016be8  ret

; ======================================================================
; -[ADWeapon criticalSpread]
; address 0x100016bec  size 16  kind objc
; ======================================================================
  100016bec  adrp    x8, #0x10041f000
  100016bf0  ldrsw   x8, [x8, #0x590]                         ; ivar offset ADWeapon._criticalSpread (+0x50)
  100016bf4  ldr     s0, [x0, x8]                             ; s0 = self->_criticalSpread
  100016bf8  ret

; ======================================================================
; -[ADWeapon setCriticalSpread:]
; address 0x100016bfc  size 16  kind objc
; ======================================================================
  100016bfc  adrp    x8, #0x10041f000
  100016c00  ldrsw   x8, [x8, #0x590]                         ; ivar offset ADWeapon._criticalSpread (+0x50)
  100016c04  str     s0, [x0, x8]                             ; self->_criticalSpread = arg1
  100016c08  ret

; ======================================================================
; -[ADWeapon criticalChance]
; address 0x100016c0c  size 16  kind objc
; ======================================================================
  100016c0c  adrp    x8, #0x10041f000
  100016c10  ldrsw   x8, [x8, #0x594]                         ; ivar offset ADWeapon._criticalChance (+0x54)
  100016c14  ldr     s0, [x0, x8]                             ; s0 = self->_criticalChance
  100016c18  ret

; ======================================================================
; -[ADWeapon setCriticalChance:]
; address 0x100016c1c  size 16  kind objc
; ======================================================================
  100016c1c  adrp    x8, #0x10041f000
  100016c20  ldrsw   x8, [x8, #0x594]                         ; ivar offset ADWeapon._criticalChance (+0x54)
  100016c24  str     s0, [x0, x8]                             ; self->_criticalChance = arg1
  100016c28  ret

; ======================================================================
; -[ADWeapon criticalMultiplier]
; address 0x100016c2c  size 16  kind objc
; ======================================================================
  100016c2c  adrp    x8, #0x10041f000
  100016c30  ldrsw   x8, [x8, #0x598]                         ; ivar offset ADWeapon._criticalMultiplier (+0x58)
  100016c34  ldr     s0, [x0, x8]                             ; s0 = self->_criticalMultiplier
  100016c38  ret

; ======================================================================
; -[ADWeapon setCriticalMultiplier:]
; address 0x100016c3c  size 16  kind objc
; ======================================================================
  100016c3c  adrp    x8, #0x10041f000
  100016c40  ldrsw   x8, [x8, #0x598]                         ; ivar offset ADWeapon._criticalMultiplier (+0x58)
  100016c44  str     s0, [x0, x8]                             ; self->_criticalMultiplier = arg1
  100016c48  ret

; ======================================================================
; -[ADWeapon continuous_spread]
; address 0x100016c4c  size 16  kind objc
; ======================================================================
  100016c4c  adrp    x8, #0x10041f000
  100016c50  ldrsw   x8, [x8, #0x580]                         ; ivar offset ADWeapon._continuous_spread (+0x5c)
  100016c54  ldr     s0, [x0, x8]                             ; s0 = self->_continuous_spread
  100016c58  ret

; ======================================================================
; -[ADWeapon setContinuous_spread:]
; address 0x100016c5c  size 16  kind objc
; ======================================================================
  100016c5c  adrp    x8, #0x10041f000
  100016c60  ldrsw   x8, [x8, #0x580]                         ; ivar offset ADWeapon._continuous_spread (+0x5c)
  100016c64  str     s0, [x0, x8]                             ; self->_continuous_spread = arg1
  100016c68  ret

; ======================================================================
; -[ADWeapon damages]
; address 0x100016c6c  size 16  kind objc
; ======================================================================
  100016c6c  adrp    x8, #0x10041f000
  100016c70  ldrsw   x8, [x8, #0x59c]                         ; ivar offset ADWeapon._damages (+0x60)
  100016c74  ldr     s0, [x0, x8]                             ; s0 = self->_damages
  100016c78  ret

; ======================================================================
; -[ADWeapon setDamages:]
; address 0x100016c7c  size 16  kind objc
; ======================================================================
  100016c7c  adrp    x8, #0x10041f000
  100016c80  ldrsw   x8, [x8, #0x59c]                         ; ivar offset ADWeapon._damages (+0x60)
  100016c84  str     s0, [x0, x8]                             ; self->_damages = arg1
  100016c88  ret

; ======================================================================
; -[ADWeapon range]
; address 0x100016c8c  size 16  kind objc
; ======================================================================
  100016c8c  adrp    x8, #0x10041f000
  100016c90  ldrsw   x8, [x8, #0x5a0]                         ; ivar offset ADWeapon._range (+0x64)
  100016c94  ldr     s0, [x0, x8]                             ; s0 = self->_range
  100016c98  ret

; ======================================================================
; -[ADWeapon setRange:]
; address 0x100016c9c  size 16  kind objc
; ======================================================================
  100016c9c  adrp    x8, #0x10041f000
  100016ca0  ldrsw   x8, [x8, #0x5a0]                         ; ivar offset ADWeapon._range (+0x64)
  100016ca4  str     s0, [x0, x8]                             ; self->_range = arg1
  100016ca8  ret

; ======================================================================
; -[ADWeapon dispersal]
; address 0x100016cac  size 16  kind objc
; ======================================================================
  100016cac  adrp    x8, #0x10041f000
  100016cb0  ldrsw   x8, [x8, #0x5a4]                         ; ivar offset ADWeapon._dispersal (+0x68)
  100016cb4  ldr     s0, [x0, x8]                             ; s0 = self->_dispersal
  100016cb8  ret

; ======================================================================
; -[ADWeapon setDispersal:]
; address 0x100016cbc  size 16  kind objc
; ======================================================================
  100016cbc  adrp    x8, #0x10041f000
  100016cc0  ldrsw   x8, [x8, #0x5a4]                         ; ivar offset ADWeapon._dispersal (+0x68)
  100016cc4  str     s0, [x0, x8]                             ; self->_dispersal = arg1
  100016cc8  ret

; ======================================================================
; -[ADWeapon reloadTime]
; address 0x100016ccc  size 16  kind objc
; ======================================================================
  100016ccc  adrp    x8, #0x10041f000
  100016cd0  ldrsw   x8, [x8, #0x5a8]                         ; ivar offset ADWeapon._reloadTime (+0x6c)
  100016cd4  ldr     s0, [x0, x8]                             ; s0 = self->_reloadTime
  100016cd8  ret

; ======================================================================
; -[ADWeapon setReloadTime:]
; address 0x100016cdc  size 16  kind objc
; ======================================================================
  100016cdc  adrp    x8, #0x10041f000
  100016ce0  ldrsw   x8, [x8, #0x5a8]                         ; ivar offset ADWeapon._reloadTime (+0x6c)
  100016ce4  str     s0, [x0, x8]                             ; self->_reloadTime = arg1
  100016ce8  ret

; ======================================================================
; -[ADWeapon switchingTime]
; address 0x100016cec  size 16  kind objc
; ======================================================================
  100016cec  adrp    x8, #0x10041f000
  100016cf0  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset ADWeapon._switchingTime (+0x70)
  100016cf4  ldr     s0, [x0, x8]                             ; s0 = self->_switchingTime
  100016cf8  ret

; ======================================================================
; -[ADWeapon setSwitchingTime:]
; address 0x100016cfc  size 16  kind objc
; ======================================================================
  100016cfc  adrp    x8, #0x10041f000
  100016d00  ldrsw   x8, [x8, #0x5ac]                         ; ivar offset ADWeapon._switchingTime (+0x70)
  100016d04  str     s0, [x0, x8]                             ; self->_switchingTime = arg1
  100016d08  ret

; ======================================================================
; -[ADWeapon bulletsInClip]
; address 0x100016d0c  size 16  kind objc
; ======================================================================
  100016d0c  adrp    x8, #0x10041f000
  100016d10  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset ADWeapon._bulletsInClip (+0x74)
  100016d14  ldr     w0, [x0, x8]                             ; w0 = self->_bulletsInClip
  100016d18  ret

; ======================================================================
; -[ADWeapon setBulletsInClip:]
; address 0x100016d1c  size 16  kind objc
; ======================================================================
  100016d1c  adrp    x8, #0x10041f000
  100016d20  ldrsw   x8, [x8, #0x5b0]                         ; ivar offset ADWeapon._bulletsInClip (+0x74)
  100016d24  str     w2, [x0, x8]                             ; self->_bulletsInClip = arg1
  100016d28  ret

; ======================================================================
; -[ADWeapon bulletsTotal]
; address 0x100016d2c  size 16  kind objc
; ======================================================================
  100016d2c  adrp    x8, #0x10041f000
  100016d30  ldrsw   x8, [x8, #0x5b4]                         ; ivar offset ADWeapon._bulletsTotal (+0x78)
  100016d34  ldr     w0, [x0, x8]                             ; w0 = self->_bulletsTotal
  100016d38  ret

; ======================================================================
; -[ADWeapon setBulletsTotal:]
; address 0x100016d3c  size 16  kind objc
; ======================================================================
  100016d3c  adrp    x8, #0x10041f000
  100016d40  ldrsw   x8, [x8, #0x5b4]                         ; ivar offset ADWeapon._bulletsTotal (+0x78)
  100016d44  str     w2, [x0, x8]                             ; self->_bulletsTotal = arg1
  100016d48  ret

; ======================================================================
; -[ADWeapon continuousFire]
; address 0x100016d4c  size 16  kind objc
; ======================================================================
  100016d4c  adrp    x8, #0x10041f000
  100016d50  ldrsw   x8, [x8, #0x5b8]                         ; ivar offset ADWeapon._continuousFire (+0x48)
  100016d54  ldrb    w0, [x0, x8]                             ; w0 = self->_continuousFire
  100016d58  ret

; ======================================================================
; -[ADWeapon setContinuousFire:]
; address 0x100016d5c  size 16  kind objc
; ======================================================================
  100016d5c  adrp    x8, #0x10041f000
  100016d60  ldrsw   x8, [x8, #0x5b8]                         ; ivar offset ADWeapon._continuousFire (+0x48)
  100016d64  strb    w2, [x0, x8]                             ; self->_continuousFire = arg1
  100016d68  ret

; ======================================================================
; -[ADWeapon droppedMagasine]
; address 0x100016d6c  size 16  kind objc
; ======================================================================
  100016d6c  adrp    x8, #0x10041f000
  100016d70  ldrsw   x8, [x8, #0x5bc]                         ; ivar offset ADWeapon._droppedMagasine (+0x49)
  100016d74  ldrb    w0, [x0, x8]                             ; w0 = self->_droppedMagasine
  100016d78  ret

; ======================================================================
; -[ADWeapon setDroppedMagasine:]
; address 0x100016d7c  size 16  kind objc
; ======================================================================
  100016d7c  adrp    x8, #0x10041f000
  100016d80  ldrsw   x8, [x8, #0x5bc]                         ; ivar offset ADWeapon._droppedMagasine (+0x49)
  100016d84  strb    w2, [x0, x8]                             ; self->_droppedMagasine = arg1
  100016d88  ret

; ======================================================================
; -[ADWeapon name]
; address 0x100016d8c  size 16  kind objc
; ======================================================================
  100016d8c  adrp    x8, #0x10041f000
  100016d90  ldrsw   x8, [x8, #0x5c0]                         ; ivar offset ADWeapon._name (+0xa8)
  100016d94  ldr     x0, [x0, x8]                             ; x0 = self->_name
  100016d98  ret

; ======================================================================
; -[ADWeapon setName:]
; address 0x100016d9c  size 56  kind objc
; ======================================================================
  100016d9c  stp     x20, x19, [sp, #-0x20]!
  100016da0  stp     x29, x30, [sp, #0x10]
  100016da4  add     x29, sp, #0x10
  100016da8  mov     x19, x0
  100016dac  adrp    x8, #0x10041f000
  100016db0  ldrsw   x20, [x8, #0x5c0]                        ; ivar offset ADWeapon._name (+0xa8)
  100016db4  mov     x0, x2
  100016db8  bl      _objc_retain
  100016dbc  ldr     x8, [x19, x20]                           ; x8 = self->_name
  100016dc0  str     x0, [x19, x20]                           ; self->_name = arg1
  100016dc4  mov     x0, x8
  100016dc8  ldp     x29, x30, [sp, #0x10]
  100016dcc  ldp     x20, x19, [sp], #0x20
  100016dd0  b       _objc_release

; ======================================================================
; -[ADWeapon state]
; address 0x100016dd4  size 16  kind objc
; ======================================================================
  100016dd4  adrp    x8, #0x10041f000
  100016dd8  ldrsw   x8, [x8, #0x57c]                         ; ivar offset ADWeapon._state (+0x7c)
  100016ddc  ldr     w0, [x0, x8]                             ; w0 = self->_state
  100016de0  ret

; ======================================================================
; -[ADWeapon multihit]
; address 0x100016de4  size 16  kind objc
; ======================================================================
  100016de4  adrp    x8, #0x10041f000
  100016de8  ldrsw   x8, [x8, #0x5c4]                         ; ivar offset ADWeapon._multihit (+0x4a)
  100016dec  ldrb    w0, [x0, x8]                             ; w0 = self->_multihit
  100016df0  ret

; ======================================================================
; -[ADWeapon setMultihit:]
; address 0x100016df4  size 16  kind objc
; ======================================================================
  100016df4  adrp    x8, #0x10041f000
  100016df8  ldrsw   x8, [x8, #0x5c4]                         ; ivar offset ADWeapon._multihit (+0x4a)
  100016dfc  strb    w2, [x0, x8]                             ; self->_multihit = arg1
  100016e00  ret

; ======================================================================
; -[ADWeapon capacity]
; address 0x100016e04  size 16  kind objc
; ======================================================================
  100016e04  adrp    x8, #0x10041f000
  100016e08  ldrsw   x8, [x8, #0x5c8]                         ; ivar offset ADWeapon._capacity (+0x80)
  100016e0c  ldr     w0, [x0, x8]                             ; w0 = self->_capacity
  100016e10  ret

; ======================================================================
; -[ADWeapon setCapacity:]
; address 0x100016e14  size 16  kind objc
; ======================================================================
  100016e14  adrp    x8, #0x10041f000
  100016e18  ldrsw   x8, [x8, #0x5c8]                         ; ivar offset ADWeapon._capacity (+0x80)
  100016e1c  str     w2, [x0, x8]                             ; self->_capacity = arg1
  100016e20  ret

; ======================================================================
; -[ADWeapon explosionRadius]
; address 0x100016e24  size 16  kind objc
; ======================================================================
  100016e24  adrp    x8, #0x10041f000
  100016e28  ldrsw   x8, [x8, #0x5cc]                         ; ivar offset ADWeapon._explosionRadius (+0x84)
  100016e2c  ldr     s0, [x0, x8]                             ; s0 = self->_explosionRadius
  100016e30  ret

; ======================================================================
; -[ADWeapon setExplosionRadius:]
; address 0x100016e34  size 16  kind objc
; ======================================================================
  100016e34  adrp    x8, #0x10041f000
  100016e38  ldrsw   x8, [x8, #0x5cc]                         ; ivar offset ADWeapon._explosionRadius (+0x84)
  100016e3c  str     s0, [x0, x8]                             ; self->_explosionRadius = arg1
  100016e40  ret

; ======================================================================
; -[ADWeapon explosive]
; address 0x100016e44  size 16  kind objc
; ======================================================================
  100016e44  adrp    x8, #0x10041f000
  100016e48  ldrsw   x8, [x8, #0x5d0]                         ; ivar offset ADWeapon._explosive (+0x4b)
  100016e4c  ldrb    w0, [x0, x8]                             ; w0 = self->_explosive
  100016e50  ret

; ======================================================================
; -[ADWeapon setExplosive:]
; address 0x100016e54  size 16  kind objc
; ======================================================================
  100016e54  adrp    x8, #0x10041f000
  100016e58  ldrsw   x8, [x8, #0x5d0]                         ; ivar offset ADWeapon._explosive (+0x4b)
  100016e5c  strb    w2, [x0, x8]                             ; self->_explosive = arg1
  100016e60  ret

; ======================================================================
; -[ADWeapon timeBeforeExplode]
; address 0x100016e64  size 16  kind objc
; ======================================================================
  100016e64  adrp    x8, #0x10041f000
  100016e68  ldrsw   x8, [x8, #0x5d4]                         ; ivar offset ADWeapon._timeBeforeExplode (+0x88)
  100016e6c  ldr     s0, [x0, x8]                             ; s0 = self->_timeBeforeExplode
  100016e70  ret

; ======================================================================
; -[ADWeapon setTimeBeforeExplode:]
; address 0x100016e74  size 16  kind objc
; ======================================================================
  100016e74  adrp    x8, #0x10041f000
  100016e78  ldrsw   x8, [x8, #0x5d4]                         ; ivar offset ADWeapon._timeBeforeExplode (+0x88)
  100016e7c  str     s0, [x0, x8]                             ; self->_timeBeforeExplode = arg1
  100016e80  ret

; ======================================================================
; -[ADWeapon timeInState]
; address 0x100016e84  size 16  kind objc
; ======================================================================
  100016e84  adrp    x8, #0x10041f000
  100016e88  ldrsw   x8, [x8, #0x5d8]                         ; ivar offset ADWeapon._timeInState (+0x8c)
  100016e8c  ldr     s0, [x0, x8]                             ; s0 = self->_timeInState
  100016e90  ret

; ======================================================================
; -[ADWeapon setTimeInState:]
; address 0x100016e94  size 16  kind objc
; ======================================================================
  100016e94  adrp    x8, #0x10041f000
  100016e98  ldrsw   x8, [x8, #0x5d8]                         ; ivar offset ADWeapon._timeInState (+0x8c)
  100016e9c  str     s0, [x0, x8]                             ; self->_timeInState = arg1
  100016ea0  ret

; ======================================================================
; -[ADWeapon fireRate]
; address 0x100016ea4  size 16  kind objc
; ======================================================================
  100016ea4  adrp    x8, #0x10041f000
  100016ea8  ldrsw   x8, [x8, #0x5dc]                         ; ivar offset ADWeapon._fireRate (+0x90)
  100016eac  ldr     s0, [x0, x8]                             ; s0 = self->_fireRate
  100016eb0  ret

; ======================================================================
; -[ADWeapon setFireRate:]
; address 0x100016eb4  size 16  kind objc
; ======================================================================
  100016eb4  adrp    x8, #0x10041f000
  100016eb8  ldrsw   x8, [x8, #0x5dc]                         ; ivar offset ADWeapon._fireRate (+0x90)
  100016ebc  str     s0, [x0, x8]                             ; self->_fireRate = arg1
  100016ec0  ret

; ======================================================================
; -[ADWeapon projectileSpeed]
; address 0x100016ec4  size 16  kind objc
; ======================================================================
  100016ec4  adrp    x8, #0x10041f000
  100016ec8  ldrsw   x8, [x8, #0x5e0]                         ; ivar offset ADWeapon._projectileSpeed (+0x94)
  100016ecc  ldr     s0, [x0, x8]                             ; s0 = self->_projectileSpeed
  100016ed0  ret

; ======================================================================
; -[ADWeapon setProjectileSpeed:]
; address 0x100016ed4  size 16  kind objc
; ======================================================================
  100016ed4  adrp    x8, #0x10041f000
  100016ed8  ldrsw   x8, [x8, #0x5e0]                         ; ivar offset ADWeapon._projectileSpeed (+0x94)
  100016edc  str     s0, [x0, x8]                             ; self->_projectileSpeed = arg1
  100016ee0  ret

; ======================================================================
; -[ADWeapon numShotsFired]
; address 0x100016ee4  size 16  kind objc
; ======================================================================
  100016ee4  adrp    x8, #0x10041f000
  100016ee8  ldrsw   x8, [x8, #0x5e4]                         ; ivar offset ADWeapon._numShotsFired (+0xb0)
  100016eec  ldr     x0, [x0, x8]                             ; x0 = self->_numShotsFired
  100016ef0  ret

; ======================================================================
; -[ADWeapon setNumShotsFired:]
; address 0x100016ef4  size 16  kind objc
; ======================================================================
  100016ef4  adrp    x8, #0x10041f000
  100016ef8  ldrsw   x8, [x8, #0x5e4]                         ; ivar offset ADWeapon._numShotsFired (+0xb0)
  100016efc  str     x2, [x0, x8]                             ; self->_numShotsFired = arg1
  100016f00  ret

; ======================================================================
; -[ADWeapon .cxx_destruct]
; address 0x100016f04  size 164  kind objc
; ======================================================================
  100016f04  stp     x20, x19, [sp, #-0x20]!
  100016f08  stp     x29, x30, [sp, #0x10]
  100016f0c  add     x29, sp, #0x10
  100016f10  mov     x19, x0
  100016f14  adrp    x8, #0x10041f000
  100016f18  ldrsw   x8, [x8, #0x5c0]                         ; ivar offset ADWeapon._name (+0xa8)
  100016f1c  add     x0, x19, x8
  100016f20  mov     x1, #0
  100016f24  bl      _objc_storeStrong
  100016f28  adrp    x8, #0x10041f000
  100016f2c  ldrsw   x8, [x8, #0x58c]                         ; ivar offset ADWeapon._weaponManager (+0xa0)
  100016f30  add     x0, x19, x8
  100016f34  mov     x1, #0
  100016f38  bl      _objc_storeStrong
  100016f3c  adrp    x8, #0x10041f000
  100016f40  ldrsw   x8, [x8, #0x588]                         ; ivar offset ADWeapon._playlist (+0x98)
  100016f44  add     x0, x19, x8
  100016f48  mov     x1, #0
  100016f4c  bl      _objc_storeStrong
  100016f50  adrp    x8, #0x10041f000
  100016f54  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADWeapon.continuousWarning (+0x30)
  100016f58  add     x0, x19, x8
  100016f5c  mov     x1, #0
  100016f60  bl      _objc_storeStrong
  100016f64  adrp    x8, #0x10041f000
  100016f68  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADWeapon.continuousSound (+0x28)
  100016f6c  add     x0, x19, x8
  100016f70  mov     x1, #0
  100016f74  bl      _objc_storeStrong
  100016f78  adrp    x8, #0x10041f000
  100016f7c  ldrsw   x8, [x8, #0x560]                         ; ivar offset ADWeapon.clickSoundPrefix (+0x20)
  100016f80  add     x0, x19, x8
  100016f84  mov     x1, #0
  100016f88  bl      _objc_storeStrong
  100016f8c  mov     x1, #0
  100016f90  adrp    x8, #0x10041f000
  100016f94  ldrsw   x8, [x8, #0x55c]                         ; ivar offset ADWeapon.fireSoundPrefix (+0x18)
  100016f98  add     x0, x19, x8
  100016f9c  ldp     x29, x30, [sp, #0x10]
  100016fa0  ldp     x20, x19, [sp], #0x20
  100016fa4  b       _objc_storeStrong
