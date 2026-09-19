// unit ADTracker+ADGamePlayTracker — 31 functions
//   0x1000260d0      16  -[ADTracker(ADGamePlayTracker) setBrickCounter:]
//   0x1000260e0      16  -[ADTracker(ADGamePlayTracker) getBrickCounter]
//   0x1000260f0      40  +[ADTracker(ADGamePlayTracker) initGamePlayTracker]
//   0x100026118    2376  +[ADTracker(ADGamePlayTracker) initGamePlayTracker]_block_invoke
//   0x100026a60       4  -[ADTracker(ADGamePlayTracker) fireOffEventsWithCategory:Action:WithLabelsAndValues:]
//   0x100026a64     664  -[ADTracker(ADGamePlayTracker) killEnemy:DisplayName:Weapon:]
//   0x100026cfc     436  -[ADTracker(ADGamePlayTracker) reloadWeaponWithRemainingBullets:InWeapon:]
//   0x100026eb0     164  -[ADTracker(ADGamePlayTracker) setButtonMode:]
//   0x100026f54     164  -[ADTracker(ADGamePlayTracker) setControlMode:]
//   0x100026ff8     548  -[ADTracker(ADGamePlayTracker) switchFromWeapon:ToNewWeapon:WithBulletsRemaining:]
//   0x10002721c     436  -[ADTracker(ADGamePlayTracker) shootWeaponWithName:didHit:]
//   0x1000273d0    1016  -[ADTracker(ADGamePlayTracker) setModifierDimensions:]
//   0x1000277c8    1404  -[ADTracker(ADGamePlayTracker) sendLoadOutEventWithWeapon1:Weapon2:Melee:]
//   0x100027d44     304  -[ADTracker(ADGamePlayTracker) diamondAcquired]
//   0x100027e74     304  -[ADTracker(ADGamePlayTracker) diamondAppeared]
//   0x100027fa4     304  -[ADTracker(ADGamePlayTracker) diamondDisappered]
//   0x1000280d4     516  -[ADTracker(ADGamePlayTracker) loadBrick:WithBrickNumber:]
//   0x1000282d8     544  -[ADTracker(ADGamePlayTracker) defeatBrick:InTime:]
//   0x1000284f8     544  -[ADTracker(ADGamePlayTracker) timeOfDeathInBrick:BrickName:]
//   0x100028718     340  -[ADTracker(ADGamePlayTracker) powerUpAppeared:]
//   0x10002886c     304  -[ADTracker(ADGamePlayTracker) powerUpUsed]
//   0x10002899c     304  -[ADTracker(ADGamePlayTracker) powerUpMissed]
//   0x100028acc     436  -[ADTracker(ADGamePlayTracker) numberOfEnemyKills:ByPowerUp:]
//   0x100028c80     380  -[ADTracker(ADGamePlayTracker) reviveUsedWithCost:]
//   0x100028dfc     308  -[ADTracker(ADGamePlayTracker) gameOverButtonPressed]
//   0x100028f30    1808  -[ADTracker(ADGamePlayTracker) recordEndOfGameData]
//   0x100029640     304  -[ADTracker(ADGamePlayTracker) challengeStarted]
//   0x100029770     852  -[ADTracker(ADGamePlayTracker) challengeCompleted:]
//   0x100029ac4     376  -[ADTracker(ADGamePlayTracker) accuracyObjectiveReached:]
//   0x100029c3c     376  -[ADTracker(ADGamePlayTracker) timeObjectiveReached:]
//   0x100029db4       4  -[ADTracker(ADGamePlayTracker) turnOffAllDimensions]

; ======================================================================
; -[ADTracker(ADGamePlayTracker) setBrickCounter:]
; address 0x1000260d0  size 16  kind objc
; ======================================================================
  1000260d0  adrp    x8, #0x10042d000
  1000260d4  nop
  1000260d8  str     x2, [x8, #0x990]                         ; store g_10042d990 = arg1
  1000260dc  ret

; ======================================================================
; -[ADTracker(ADGamePlayTracker) getBrickCounter]
; address 0x1000260e0  size 16  kind objc
; ======================================================================
  1000260e0  adrp    x8, #0x10042d000
  1000260e4  nop
  1000260e8  ldr     x0, [x8, #0x990]                         ; load g_10042d990
  1000260ec  ret

; ======================================================================
; +[ADTracker(ADGamePlayTracker) initGamePlayTracker]
; address 0x1000260f0  size 40  kind objc
; ======================================================================
  1000260f0  adrp    x8, #0x10042d000
  1000260f4  add     x8, x8, #0x990                           ; &g_10042d990
  1000260f8  ldr     x9, [x8, #0x10]                          ; load g_10042d9a0
  1000260fc  cmn     x9, #1
  100026100  b.ne    loc_100026108                            ; if (g_10042d9a0 != -1)
  100026104  ret
loc_100026108:
  100026108  add     x0, x8, #0x10                            ; &g_10042d9a0
  10002610c  adrp    x1, #0x1003b1000
  100026110  add     x1, x1, #0x2b0                           ; ^{+[ADTracker(ADGamePlayTracker) initGamePlayTracker]_block_invoke}
  100026114  b       _dispatch_once                           ; dispatch_once(&g_10042d9a0, ^{+[ADTracker(ADGamePlayTracker) initGamePlayTracker]_block_invoke})

; ======================================================================
; +[ADTracker(ADGamePlayTracker) initGamePlayTracker]_block_invoke
; address 0x100026118  size 2376  kind block
; ======================================================================
  100026118  stp     x26, x25, [sp, #-0x50]!
  10002611c  stp     x24, x23, [sp, #0x10]
  100026120  stp     x22, x21, [sp, #0x20]
  100026124  stp     x20, x19, [sp, #0x30]
  100026128  stp     x29, x30, [sp, #0x40]
  10002612c  add     x29, sp, #0x40
  100026130  adrp    x8, #0x10041e000
  100026134  ldr     x0, [x8, #8]                             ; class ADTracker
  100026138  adrp    x8, #0x100416000
  10002613c  nop
  100026140  ldr     x1, [x8, #0xac0]
  100026144  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100026148  mov     x29, x29
  10002614c  bl      _objc_retainAutoreleasedReturnValue
  100026150  adrp    x24, #0x10042d000
  100026154  add     x24, x24, #0x990                         ; &g_10042d990
  100026158  ldr     x8, [x24, #8]                            ; load g_10042d998
  10002615c  str     x0, [x24, #8]                            ; store g_10042d998 = [ADTracker sharedInstance]
  100026160  mov     x0, x8
  100026164  bl      _objc_release
  100026168  ldr     x0, [x24, #8]                            ; load g_10042d998
  10002616c  adrp    x8, #0x100417000
  100026170  nop
  100026174  ldr     x21, [x8, #0xd50]
  100026178  mov     x1, x21
  10002617c  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026180  mov     x29, x29
  100026184  bl      _objc_retainAutoreleasedReturnValue
  100026188  mov     x22, x0
  10002618c  adrp    x25, #0x10041d000
  100026190  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026194  adrp    x8, #0x100416000
  100026198  nop
  10002619c  ldr     x19, [x8, #0xec0]
  1000261a0  mov     w2, #7
  1000261a4  mov     x1, x19
  1000261a8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  1000261ac  mov     x29, x29
  1000261b0  bl      _objc_retainAutoreleasedReturnValue
  1000261b4  mov     x23, x0
  1000261b8  adrp    x8, #0x100416000
  1000261bc  nop
  1000261c0  ldr     x20, [x8, #0xdc8]
  1000261c4  adrp    x3, #0x1003bb000
  1000261c8  add     x3, x3, #0x6d0                           ; @"Brick name"
  1000261cc  mov     x0, x22
  1000261d0  mov     x1, x20
  1000261d4  mov     x2, x23
  1000261d8  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:7] forKey:@"Brick name"]
  1000261dc  mov     x0, x23
  1000261e0  bl      _objc_release
  1000261e4  mov     x0, x22
  1000261e8  bl      _objc_release
  1000261ec  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000261f0  mov     x1, x21
  1000261f4  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  1000261f8  mov     x29, x29
  1000261fc  bl      _objc_retainAutoreleasedReturnValue
  100026200  mov     x22, x0
  100026204  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026208  mov     w2, #9
  10002620c  mov     x1, x19
  100026210  bl      _objc_msgSend                            ; [NSNumber numberWithInt:9]
  100026214  mov     x29, x29
  100026218  bl      _objc_retainAutoreleasedReturnValue
  10002621c  mov     x23, x0
  100026220  adrp    x3, #0x1003bb000
  100026224  add     x3, x3, #0x6f0                           ; @"Button mode"
  100026228  mov     x0, x22
  10002622c  mov     x1, x20
  100026230  mov     x2, x23
  100026234  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:9] forKey:@"Button mode"]
  100026238  mov     x0, x23
  10002623c  bl      _objc_release
  100026240  mov     x0, x22
  100026244  bl      _objc_release
  100026248  ldr     x0, [x24, #8]                            ; load g_10042d998
  10002624c  mov     x1, x21
  100026250  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026254  mov     x29, x29
  100026258  bl      _objc_retainAutoreleasedReturnValue
  10002625c  mov     x22, x0
  100026260  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026264  mov     w2, #0xa
  100026268  mov     x1, x19
  10002626c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:10]
  100026270  mov     x29, x29
  100026274  bl      _objc_retainAutoreleasedReturnValue
  100026278  mov     x23, x0
  10002627c  adrp    x3, #0x1003bb000
  100026280  add     x3, x3, #0x710                           ; @"Challenge name"
  100026284  mov     x0, x22
  100026288  mov     x1, x20
  10002628c  mov     x2, x23
  100026290  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:10] forKey:@"Challenge name"]
  100026294  mov     x0, x23
  100026298  bl      _objc_release
  10002629c  mov     x0, x22
  1000262a0  bl      _objc_release
  1000262a4  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000262a8  mov     x1, x21
  1000262ac  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  1000262b0  mov     x29, x29
  1000262b4  bl      _objc_retainAutoreleasedReturnValue
  1000262b8  mov     x22, x0
  1000262bc  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000262c0  mov     w2, #8
  1000262c4  mov     x1, x19
  1000262c8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:8]
  1000262cc  mov     x29, x29
  1000262d0  bl      _objc_retainAutoreleasedReturnValue
  1000262d4  mov     x23, x0
  1000262d8  adrp    x3, #0x1003bb000
  1000262dc  add     x3, x3, #0x730                           ; @"Control mode"
  1000262e0  mov     x0, x22
  1000262e4  mov     x1, x20
  1000262e8  mov     x2, x23
  1000262ec  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:8] forKey:@"Control mode"]
  1000262f0  mov     x0, x23
  1000262f4  bl      _objc_release
  1000262f8  mov     x0, x22
  1000262fc  bl      _objc_release
  100026300  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026304  mov     x1, x21
  100026308  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  10002630c  mov     x29, x29
  100026310  bl      _objc_retainAutoreleasedReturnValue
  100026314  mov     x22, x0
  100026318  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10002631c  mov     w2, #3
  100026320  mov     x1, x19
  100026324  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  100026328  mov     x29, x29
  10002632c  bl      _objc_retainAutoreleasedReturnValue
  100026330  mov     x23, x0
  100026334  adrp    x3, #0x1003bb000
  100026338  add     x3, x3, #0x750                           ; @"Enemy name"
  10002633c  mov     x0, x22
  100026340  mov     x1, x20
  100026344  mov     x2, x23
  100026348  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:3] forKey:@"Enemy name"]
  10002634c  mov     x0, x23
  100026350  bl      _objc_release
  100026354  mov     x0, x22
  100026358  bl      _objc_release
  10002635c  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026360  mov     x1, x21
  100026364  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026368  mov     x29, x29
  10002636c  bl      _objc_retainAutoreleasedReturnValue
  100026370  mov     x22, x0
  100026374  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026378  mov     w2, #5
  10002637c  mov     x1, x19
  100026380  bl      _objc_msgSend                            ; [NSNumber numberWithInt:5]
  100026384  mov     x29, x29
  100026388  bl      _objc_retainAutoreleasedReturnValue
  10002638c  mov     x23, x0
  100026390  adrp    x3, #0x1003bb000
  100026394  add     x3, x3, #0x770                           ; @"Game mode"
  100026398  mov     x0, x22
  10002639c  mov     x1, x20
  1000263a0  mov     x2, x23
  1000263a4  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:5] forKey:@"Game mode"]
  1000263a8  mov     x0, x23
  1000263ac  bl      _objc_release
  1000263b0  mov     x0, x22
  1000263b4  bl      _objc_release
  1000263b8  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000263bc  mov     x1, x21
  1000263c0  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  1000263c4  mov     x29, x29
  1000263c8  bl      _objc_retainAutoreleasedReturnValue
  1000263cc  mov     x22, x0
  1000263d0  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000263d4  mov     w2, #1
  1000263d8  mov     x1, x19
  1000263dc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  1000263e0  mov     x29, x29
  1000263e4  bl      _objc_retainAutoreleasedReturnValue
  1000263e8  mov     x23, x0
  1000263ec  adrp    x3, #0x1003bb000
  1000263f0  add     x3, x3, #0x790                           ; @"Tarot modifier one"
  1000263f4  mov     x0, x22
  1000263f8  mov     x1, x20
  1000263fc  mov     x2, x23
  100026400  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:1] forKey:@"Tarot modifier one"]
  100026404  mov     x0, x23
  100026408  bl      _objc_release
  10002640c  mov     x0, x22
  100026410  bl      _objc_release
  100026414  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026418  mov     x1, x21
  10002641c  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026420  mov     x29, x29
  100026424  bl      _objc_retainAutoreleasedReturnValue
  100026428  mov     x22, x0
  10002642c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026430  mov     w2, #0xb
  100026434  mov     x1, x19
  100026438  bl      _objc_msgSend                            ; [NSNumber numberWithInt:11]
  10002643c  mov     x29, x29
  100026440  bl      _objc_retainAutoreleasedReturnValue
  100026444  mov     x23, x0
  100026448  adrp    x3, #0x1003bb000
  10002644c  add     x3, x3, #0x7b0                           ; @"Tarot modifier two"
  100026450  mov     x0, x22
  100026454  mov     x1, x20
  100026458  mov     x2, x23
  10002645c  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:11] forKey:@"Tarot modifier two"]
  100026460  mov     x0, x23
  100026464  bl      _objc_release
  100026468  mov     x0, x22
  10002646c  bl      _objc_release
  100026470  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026474  mov     x1, x21
  100026478  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  10002647c  mov     x29, x29
  100026480  bl      _objc_retainAutoreleasedReturnValue
  100026484  mov     x22, x0
  100026488  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10002648c  mov     w2, #0xc
  100026490  mov     x1, x19
  100026494  bl      _objc_msgSend                            ; [NSNumber numberWithInt:12]
  100026498  mov     x29, x29
  10002649c  bl      _objc_retainAutoreleasedReturnValue
  1000264a0  mov     x23, x0
  1000264a4  adrp    x3, #0x1003bb000
  1000264a8  add     x3, x3, #0x7d0                           ; @"Tarot modifier three"
  1000264ac  mov     x0, x22
  1000264b0  mov     x1, x20
  1000264b4  mov     x2, x23
  1000264b8  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:12] forKey:@"Tarot modifier three"]
  1000264bc  mov     x0, x23
  1000264c0  bl      _objc_release
  1000264c4  mov     x0, x22
  1000264c8  bl      _objc_release
  1000264cc  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000264d0  mov     x1, x21
  1000264d4  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  1000264d8  mov     x29, x29
  1000264dc  bl      _objc_retainAutoreleasedReturnValue
  1000264e0  mov     x22, x0
  1000264e4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000264e8  mov     w2, #2
  1000264ec  mov     x1, x19
  1000264f0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  1000264f4  mov     x29, x29
  1000264f8  bl      _objc_retainAutoreleasedReturnValue
  1000264fc  mov     x23, x0
  100026500  adrp    x3, #0x1003bb000
  100026504  add     x3, x3, #0x7f0                           ; @"Modifier desirability one"
  100026508  mov     x0, x22
  10002650c  mov     x1, x20
  100026510  mov     x2, x23
  100026514  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:2] forKey:@"Modifier desirability one"]
  100026518  mov     x0, x23
  10002651c  bl      _objc_release
  100026520  mov     x0, x22
  100026524  bl      _objc_release
  100026528  ldr     x0, [x24, #8]                            ; load g_10042d998
  10002652c  mov     x1, x21
  100026530  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026534  mov     x29, x29
  100026538  bl      _objc_retainAutoreleasedReturnValue
  10002653c  mov     x22, x0
  100026540  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026544  mov     w2, #0xd
  100026548  mov     x1, x19
  10002654c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:13]
  100026550  mov     x29, x29
  100026554  bl      _objc_retainAutoreleasedReturnValue
  100026558  mov     x23, x0
  10002655c  adrp    x3, #0x1003bb000
  100026560  add     x3, x3, #0x810                           ; @"Modifier desirability two"
  100026564  mov     x0, x22
  100026568  mov     x1, x20
  10002656c  mov     x2, x23
  100026570  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:13] forKey:@"Modifier desirability two"]
  100026574  mov     x0, x23
  100026578  bl      _objc_release
  10002657c  mov     x0, x22
  100026580  bl      _objc_release
  100026584  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026588  mov     x1, x21
  10002658c  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026590  mov     x29, x29
  100026594  bl      _objc_retainAutoreleasedReturnValue
  100026598  mov     x22, x0
  10002659c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000265a0  mov     w2, #0xe
  1000265a4  mov     x1, x19
  1000265a8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:14]
  1000265ac  mov     x29, x29
  1000265b0  bl      _objc_retainAutoreleasedReturnValue
  1000265b4  mov     x23, x0
  1000265b8  adrp    x3, #0x1003bb000
  1000265bc  add     x3, x3, #0x830                           ; @"Modifier desirability three"
  1000265c0  mov     x0, x22
  1000265c4  mov     x1, x20
  1000265c8  mov     x2, x23
  1000265cc  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:14] forKey:@"Modifier desirability three"]
  1000265d0  mov     x0, x23
  1000265d4  bl      _objc_release
  1000265d8  mov     x0, x22
  1000265dc  bl      _objc_release
  1000265e0  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000265e4  mov     x1, x21
  1000265e8  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  1000265ec  mov     x29, x29
  1000265f0  bl      _objc_retainAutoreleasedReturnValue
  1000265f4  mov     x22, x0
  1000265f8  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000265fc  mov     w2, #4
  100026600  mov     x1, x19
  100026604  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  100026608  mov     x29, x29
  10002660c  bl      _objc_retainAutoreleasedReturnValue
  100026610  mov     x23, x0
  100026614  adrp    x3, #0x1003ba000
  100026618  add     x3, x3, #0xd70                           ; @"PowerUp name"
  10002661c  mov     x0, x22
  100026620  mov     x1, x20
  100026624  mov     x2, x23
  100026628  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:4] forKey:@"PowerUp name"]
  10002662c  mov     x0, x23
  100026630  bl      _objc_release
  100026634  mov     x0, x22
  100026638  bl      _objc_release
  10002663c  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026640  mov     x1, x21
  100026644  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026648  mov     x29, x29
  10002664c  bl      _objc_retainAutoreleasedReturnValue
  100026650  mov     x22, x0
  100026654  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026658  mov     w2, #6
  10002665c  mov     x1, x19
  100026660  bl      _objc_msgSend                            ; [NSNumber numberWithInt:6]
  100026664  mov     x29, x29
  100026668  bl      _objc_retainAutoreleasedReturnValue
  10002666c  mov     x23, x0
  100026670  adrp    x3, #0x1003bb000
  100026674  add     x3, x3, #0x850                           ; @"Weapon name"
  100026678  mov     x0, x22
  10002667c  mov     x1, x20
  100026680  mov     x2, x23
  100026684  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:6] forKey:@"Weapon name"]
  100026688  mov     x0, x23
  10002668c  bl      _objc_release
  100026690  mov     x0, x22
  100026694  bl      _objc_release
  100026698  ldr     x0, [x24, #8]                            ; load g_10042d998
  10002669c  mov     x1, x21
  1000266a0  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  1000266a4  mov     x29, x29
  1000266a8  bl      _objc_retainAutoreleasedReturnValue
  1000266ac  mov     x22, x0
  1000266b0  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000266b4  mov     w2, #0x12
  1000266b8  mov     x1, x19
  1000266bc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:18]
  1000266c0  mov     x29, x29
  1000266c4  bl      _objc_retainAutoreleasedReturnValue
  1000266c8  mov     x23, x0
  1000266cc  adrp    x3, #0x1003bb000
  1000266d0  add     x3, x3, #0x870                           ; @"Hours played"
  1000266d4  mov     x0, x22
  1000266d8  mov     x1, x20
  1000266dc  mov     x2, x23
  1000266e0  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:18] forKey:@"Hours played"]
  1000266e4  mov     x0, x23
  1000266e8  bl      _objc_release
  1000266ec  mov     x0, x22
  1000266f0  bl      _objc_release
  1000266f4  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000266f8  mov     x1, x21
  1000266fc  bl      _objc_msgSend                            ; [g_10042d998 dimensionDictionary]
  100026700  mov     x29, x29
  100026704  bl      _objc_retainAutoreleasedReturnValue
  100026708  mov     x21, x0
  10002670c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026710  mov     w2, #0x11
  100026714  mov     x1, x19
  100026718  bl      _objc_msgSend                            ; [NSNumber numberWithInt:17]
  10002671c  mov     x29, x29
  100026720  bl      _objc_retainAutoreleasedReturnValue
  100026724  mov     x22, x0
  100026728  adrp    x3, #0x1003bb000
  10002672c  add     x3, x3, #0x890                           ; @"Accessibility"
  100026730  mov     x0, x21
  100026734  mov     x1, x20
  100026738  mov     x2, x22
  10002673c  bl      _objc_msgSend                            ; [[g_10042d998 dimensionDictionary] setObject:[NSNumber numberWithInt:17] forKey:@"Accessibility"]
  100026740  mov     x0, x22
  100026744  bl      _objc_release
  100026748  mov     x0, x21
  10002674c  bl      _objc_release
  100026750  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026754  adrp    x8, #0x100417000
  100026758  nop
  10002675c  ldr     x21, [x8, #0xd58]
  100026760  mov     x1, x21
  100026764  bl      _objc_msgSend                            ; [g_10042d998 metricDictionary]
  100026768  mov     x29, x29
  10002676c  bl      _objc_retainAutoreleasedReturnValue
  100026770  mov     x22, x0
  100026774  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026778  mov     w2, #1
  10002677c  mov     x1, x19
  100026780  bl      _objc_msgSend                            ; [NSNumber numberWithInt:1]
  100026784  mov     x29, x29
  100026788  bl      _objc_retainAutoreleasedReturnValue
  10002678c  mov     x23, x0
  100026790  adrp    x3, #0x1003bb000
  100026794  add     x3, x3, #0x8b0                           ; @"Weapon accuracy"
  100026798  mov     x0, x22
  10002679c  mov     x1, x20
  1000267a0  mov     x2, x23
  1000267a4  bl      _objc_msgSend                            ; [[g_10042d998 metricDictionary] setObject:[NSNumber numberWithInt:1] forKey:@"Weapon accuracy"]
  1000267a8  mov     x0, x23
  1000267ac  bl      _objc_release
  1000267b0  mov     x0, x22
  1000267b4  bl      _objc_release
  1000267b8  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000267bc  mov     x1, x21
  1000267c0  bl      _objc_msgSend                            ; [g_10042d998 metricDictionary]
  1000267c4  mov     x29, x29
  1000267c8  bl      _objc_retainAutoreleasedReturnValue
  1000267cc  mov     x22, x0
  1000267d0  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000267d4  mov     w2, #0
  1000267d8  mov     x1, x19
  1000267dc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0]
  1000267e0  mov     x29, x29
  1000267e4  bl      _objc_retainAutoreleasedReturnValue
  1000267e8  mov     x23, x0
  1000267ec  adrp    x3, #0x1003bb000
  1000267f0  add     x3, x3, #0x8d0                           ; @"Experience"
  1000267f4  mov     x0, x22
  1000267f8  mov     x1, x20
  1000267fc  mov     x2, x23
  100026800  bl      _objc_msgSend                            ; [[g_10042d998 metricDictionary] setObject:[NSNumber numberWithInt:0] forKey:@"Experience"]
  100026804  mov     x0, x23
  100026808  bl      _objc_release
  10002680c  mov     x0, x22
  100026810  bl      _objc_release
  100026814  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026818  mov     x1, x21
  10002681c  bl      _objc_msgSend                            ; [g_10042d998 metricDictionary]
  100026820  mov     x29, x29
  100026824  bl      _objc_retainAutoreleasedReturnValue
  100026828  mov     x22, x0
  10002682c  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  100026830  mov     w2, #3
  100026834  mov     x1, x19
  100026838  bl      _objc_msgSend                            ; [NSNumber numberWithInt:3]
  10002683c  mov     x29, x29
  100026840  bl      _objc_retainAutoreleasedReturnValue
  100026844  mov     x23, x0
  100026848  adrp    x3, #0x1003bb000
  10002684c  add     x3, x3, #0x8f0                           ; @"Unlocked weapons"
  100026850  mov     x0, x22
  100026854  mov     x1, x20
  100026858  mov     x2, x23
  10002685c  bl      _objc_msgSend                            ; [[g_10042d998 metricDictionary] setObject:[NSNumber numberWithInt:3] forKey:@"Unlocked weapons"]
  100026860  mov     x0, x23
  100026864  bl      _objc_release
  100026868  mov     x0, x22
  10002686c  bl      _objc_release
  100026870  ldr     x0, [x24, #8]                            ; load g_10042d998
  100026874  mov     x1, x21
  100026878  bl      _objc_msgSend                            ; [g_10042d998 metricDictionary]
  10002687c  mov     x29, x29
  100026880  bl      _objc_retainAutoreleasedReturnValue
  100026884  mov     x22, x0
  100026888  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  10002688c  mov     w2, #2
  100026890  mov     x1, x19
  100026894  bl      _objc_msgSend                            ; [NSNumber numberWithInt:2]
  100026898  mov     x29, x29
  10002689c  bl      _objc_retainAutoreleasedReturnValue
  1000268a0  mov     x23, x0
  1000268a4  adrp    x3, #0x1003bb000
  1000268a8  add     x3, x3, #0x910                           ; @"Enemy kills"
  1000268ac  mov     x0, x22
  1000268b0  mov     x1, x20
  1000268b4  mov     x2, x23
  1000268b8  bl      _objc_msgSend                            ; [[g_10042d998 metricDictionary] setObject:[NSNumber numberWithInt:2] forKey:@"Enemy kills"]
  1000268bc  mov     x0, x23
  1000268c0  bl      _objc_release
  1000268c4  mov     x0, x22
  1000268c8  bl      _objc_release
  1000268cc  ldr     x0, [x24, #8]                            ; load g_10042d998
  1000268d0  mov     x1, x21
  1000268d4  bl      _objc_msgSend                            ; [g_10042d998 metricDictionary]
  1000268d8  mov     x29, x29
  1000268dc  bl      _objc_retainAutoreleasedReturnValue
  1000268e0  mov     x21, x0
  1000268e4  ldr     x0, [x25, #0xf68]                        ; class NSNumber
  1000268e8  mov     w2, #4
  1000268ec  mov     x1, x19
  1000268f0  bl      _objc_msgSend                            ; [NSNumber numberWithInt:4]
  1000268f4  mov     x29, x29
  1000268f8  bl      _objc_retainAutoreleasedReturnValue
  1000268fc  mov     x22, x0
  100026900  adrp    x3, #0x1003bb000
  100026904  add     x3, x3, #0x930                           ; @"Success ratio"
  100026908  mov     x0, x21
  10002690c  mov     x1, x20
  100026910  mov     x2, x22
  100026914  bl      _objc_msgSend                            ; [[g_10042d998 metricDictionary] setObject:[NSNumber numberWithInt:4] forKey:@"Success ratio"]
  100026918  mov     x0, x22
  10002691c  bl      _objc_release
  100026920  mov     x0, x21
  100026924  ldp     x29, x30, [sp, #0x40]
  100026928  ldp     x20, x19, [sp, #0x30]
  10002692c  ldp     x22, x21, [sp, #0x20]
  100026930  ldp     x24, x23, [sp, #0x10]
  100026934  ldp     x26, x25, [sp], #0x50
  100026938  b       _objc_release
  10002693c  mov     x19, x0
  100026940  b       loc_100026a34
  100026944  b       loc_100026a28
  100026948  mov     x19, x0
  10002694c  b       loc_100026a34
  100026950  b       loc_100026a28
  100026954  mov     x19, x0
  100026958  b       loc_100026a34
  10002695c  b       loc_100026a28
  100026960  mov     x19, x0
  100026964  b       loc_100026a34
  100026968  b       loc_100026a28
  10002696c  mov     x19, x0
  100026970  b       loc_100026a34
  100026974  b       loc_100026a28
  100026978  mov     x19, x0
  10002697c  b       loc_100026a34
  100026980  b       loc_100026a28
  100026984  mov     x19, x0
  100026988  b       loc_100026a34
  10002698c  b       loc_100026a28
  100026990  mov     x19, x0
  100026994  b       loc_100026a34
  100026998  b       loc_100026a28
  10002699c  mov     x19, x0
  1000269a0  b       loc_100026a34
  1000269a4  b       loc_100026a28
  1000269a8  mov     x19, x0
  1000269ac  b       loc_100026a34
  1000269b0  b       loc_100026a28
  1000269b4  mov     x19, x0
  1000269b8  b       loc_100026a34
  1000269bc  b       loc_100026a28
  1000269c0  mov     x19, x0
  1000269c4  b       loc_100026a34
  1000269c8  b       loc_100026a28
  1000269cc  mov     x19, x0
  1000269d0  b       loc_100026a34
  1000269d4  b       loc_100026a28
  1000269d8  mov     x19, x0
  1000269dc  b       loc_100026a34
  1000269e0  b       loc_100026a28
  1000269e4  mov     x19, x0
  1000269e8  b       loc_100026a34
  1000269ec  b       loc_100026a28
  1000269f0  mov     x19, x0
  1000269f4  b       loc_100026a58
  1000269f8  b       loc_100026a4c
  1000269fc  mov     x19, x0
  100026a00  b       loc_100026a34
  100026a04  b       loc_100026a28
  100026a08  mov     x19, x0
  100026a0c  b       loc_100026a34
  100026a10  b       loc_100026a28
  100026a14  mov     x19, x0
  100026a18  b       loc_100026a34
  100026a1c  b       loc_100026a28
  100026a20  mov     x19, x0
  100026a24  b       loc_100026a34
loc_100026a28:
  100026a28  mov     x19, x0
  100026a2c  mov     x0, x23
  100026a30  bl      _objc_release
loc_100026a34:
  100026a34  mov     x0, x22
loc_100026a38:
  100026a38  bl      _objc_release
  100026a3c  mov     x0, x19
  100026a40  bl      __Unwind_Resume                          ; Unwind_Resume()
  100026a44  mov     x19, x0
  100026a48  b       loc_100026a58
loc_100026a4c:
  100026a4c  mov     x19, x0
  100026a50  mov     x0, x22
  100026a54  bl      _objc_release
loc_100026a58:
  100026a58  mov     x0, x21
  100026a5c  b       loc_100026a38

; ======================================================================
; -[ADTracker(ADGamePlayTracker) fireOffEventsWithCategory:Action:WithLabelsAndValues:]
; address 0x100026a60  size 4  kind objc
; ======================================================================
  100026a60  ret

; ======================================================================
; -[ADTracker(ADGamePlayTracker) killEnemy:DisplayName:Weapon:]
; address 0x100026a64  size 664  kind objc
; ======================================================================
  100026a64  stp     x28, x27, [sp, #-0x60]!
  100026a68  stp     x26, x25, [sp, #0x10]
  100026a6c  stp     x24, x23, [sp, #0x20]
  100026a70  stp     x22, x21, [sp, #0x30]
  100026a74  stp     x20, x19, [sp, #0x40]
  100026a78  stp     x29, x30, [sp, #0x50]
  100026a7c  add     x29, sp, #0x50
  100026a80  sub     sp, sp, #0x10
  100026a84  mov     x20, x3
  100026a88  mov     x0, x2
  100026a8c  bl      _objc_retain
  100026a90  mov     x19, x0
  100026a94  mov     x0, x20
  100026a98  bl      _objc_retain
  100026a9c  mov     x20, x0
  100026aa0  adrp    x8, #0x10041d000
  100026aa4  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100026aa8  adrp    x8, #0x100416000
  100026aac  nop
  100026ab0  ldr     x1, [x8, #0xac0]
  100026ab4  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100026ab8  mov     x29, x29
  100026abc  bl      _objc_retainAutoreleasedReturnValue
  100026ac0  mov     x22, x0
  100026ac4  adrp    x8, #0x100417000
  100026ac8  nop
  100026acc  ldr     x1, [x8, #0x2f8]
  100026ad0  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100026ad4  mov     x29, x29
  100026ad8  bl      _objc_retainAutoreleasedReturnValue
  100026adc  mov     x21, x0
  100026ae0  mov     x0, x22
  100026ae4  bl      _objc_release
  100026ae8  adrp    x8, #0x10041d000
  100026aec  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100026af0  adrp    x8, #0x100417000
  100026af4  nop
  100026af8  ldr     x1, [x8, #0xd60]
  100026afc  mov     x5, #0
  100026b00  adrp    x2, #0x1003bb000
  100026b04  add     x2, x2, #0x950                           ; @"Weapon event"
  100026b08  adrp    x3, #0x1003bb000
  100026b0c  add     x3, x3, #0x970                           ; @"enemy killed (type)"
  100026b10  mov     x4, x20
  100026b14  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"enemy killed (type)" label:arg2 value:0]
  100026b18  mov     x29, x29
  100026b1c  bl      _objc_retainAutoreleasedReturnValue
  100026b20  mov     x22, x0
  100026b24  adrp    x25, #0x10041e000
  100026b28  ldr     x0, [x25, #0xd0]                         ; class GAIFields
  100026b2c  adrp    x8, #0x100417000
  100026b30  nop
  100026b34  ldr     x1, [x8, #0xd68]
  100026b38  mov     w2, #2
  100026b3c  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:2]
  100026b40  mov     x29, x29
  100026b44  bl      _objc_retainAutoreleasedReturnValue
  100026b48  mov     x23, x0
  100026b4c  adrp    x8, #0x100417000
  100026b50  nop
  100026b54  ldr     x26, [x8, #0xd70]
  100026b58  adrp    x2, #0x1003bb000
  100026b5c  add     x2, x2, #0x990                           ; @"1"
  100026b60  mov     x0, x22
  100026b64  mov     x1, x26
  100026b68  mov     x3, x23
  100026b6c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"enemy killed (type)" label:arg2 value:0] set:@"1" forKey:[GAIFields customMetricForIndex:2]]
  100026b70  mov     x29, x29
  100026b74  bl      _objc_retainAutoreleasedReturnValue
  100026b78  mov     x24, x0
  100026b7c  ldr     x0, [x25, #0xd0]                         ; class GAIFields
  100026b80  adrp    x8, #0x100417000
  100026b84  nop
  100026b88  ldr     x1, [x8, #0xd78]
  100026b8c  mov     w2, #3
  100026b90  bl      _objc_msgSend                            ; [GAIFields customDimensionForIndex:3]
  100026b94  mov     x29, x29
  100026b98  bl      _objc_retainAutoreleasedReturnValue
  100026b9c  mov     x25, x0
  100026ba0  mov     x0, x24
  100026ba4  mov     x1, x26
  100026ba8  mov     x2, x19
  100026bac  mov     x3, x25
  100026bb0  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"enemy killed (type)" label:arg2 value:0] set:@"1" forKey:[GAIFields customMetricForIndex:2]] set:arg1 forKey:[GAIFields customDimensionForIndex:3]]
  100026bb4  mov     x29, x29
  100026bb8  bl      _objc_retainAutoreleasedReturnValue
  100026bbc  mov     x26, x0
  100026bc0  adrp    x8, #0x100417000
  100026bc4  nop
  100026bc8  ldr     x1, [x8, #0x310]
  100026bcc  bl      _objc_msgSend                            ; [[[[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"enemy killed (type)" label:arg2 value:0] set:@"1" forKey:[GAIFields customMetricForIndex:2]] set:arg1 forKey:[GAIFields customDimensionForIndex:3]] build]
  100026bd0  mov     x29, x29
  100026bd4  bl      _objc_retainAutoreleasedReturnValue
  100026bd8  mov     x27, x0
  100026bdc  adrp    x8, #0x100417000
  100026be0  nop
  100026be4  ldr     x1, [x8, #0x318]
  100026be8  mov     x0, x21
  100026bec  mov     x2, x27
  100026bf0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[[[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"enemy killed (type)" label:arg2 value:0] set:@"1" forKey:[GAIFields customMetricForIndex:2]] set:arg1 forKey:[GAIFields customDimensionForIndex:3]] build]]
  100026bf4  mov     x0, x27
  100026bf8  bl      _objc_release
  100026bfc  mov     x0, x26
  100026c00  bl      _objc_release
  100026c04  mov     x0, x25
  100026c08  bl      _objc_release
  100026c0c  mov     x0, x24
  100026c10  bl      _objc_release
  100026c14  mov     x0, x23
  100026c18  bl      _objc_release
  100026c1c  mov     x0, x22
  100026c20  bl      _objc_release
  100026c24  mov     x0, x21
  100026c28  bl      _objc_release
  100026c2c  mov     x0, x20
  100026c30  bl      _objc_release
  100026c34  mov     x0, x19
  100026c38  sub     sp, x29, #0x50
  100026c3c  ldp     x29, x30, [sp, #0x50]
  100026c40  ldp     x20, x19, [sp, #0x40]
  100026c44  ldp     x22, x21, [sp, #0x30]
  100026c48  ldp     x24, x23, [sp, #0x20]
  100026c4c  ldp     x26, x25, [sp, #0x10]
  100026c50  ldp     x28, x27, [sp], #0x60
  100026c54  b       _objc_release
  100026c58  mov     x25, x0
  100026c5c  b       loc_100026ce4
  100026c60  mov     x25, x0
  100026c64  mov     x0, x22
  100026c68  b       loc_100026ce0
  100026c6c  mov     x25, x0
  100026c70  b       loc_100026cdc
  100026c74  mov     x25, x0
  100026c78  b       loc_100026cd4
  100026c7c  mov     x25, x0
  100026c80  b       loc_100026ccc
  100026c84  mov     x25, x0
  100026c88  b       loc_100026cc4
  100026c8c  str     x25, [sp, #8]
  100026c90  mov     x25, x0
  100026c94  b       loc_100026cbc
  100026c98  str     x25, [sp, #8]
  100026c9c  mov     x25, x0
  100026ca0  b       loc_100026cb4
  100026ca4  str     x25, [sp, #8]
  100026ca8  mov     x25, x0
  100026cac  mov     x0, x27
  100026cb0  bl      _objc_release
loc_100026cb4:
  100026cb4  mov     x0, x26
  100026cb8  bl      _objc_release
loc_100026cbc:
  100026cbc  ldr     x0, [sp, #8]
  100026cc0  bl      _objc_release
loc_100026cc4:
  100026cc4  mov     x0, x24
  100026cc8  bl      _objc_release
loc_100026ccc:
  100026ccc  mov     x0, x23
  100026cd0  bl      _objc_release
loc_100026cd4:
  100026cd4  mov     x0, x22
  100026cd8  bl      _objc_release
loc_100026cdc:
  100026cdc  mov     x0, x21
loc_100026ce0:
  100026ce0  bl      _objc_release
loc_100026ce4:
  100026ce4  mov     x0, x20
  100026ce8  bl      _objc_release
  100026cec  mov     x0, x19
  100026cf0  bl      _objc_release
  100026cf4  mov     x0, x25
  100026cf8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) reloadWeaponWithRemainingBullets:InWeapon:]
; address 0x100026cfc  size 436  kind objc
; ======================================================================
  100026cfc  stp     x24, x23, [sp, #-0x40]!
  100026d00  stp     x22, x21, [sp, #0x10]
  100026d04  stp     x20, x19, [sp, #0x20]
  100026d08  stp     x29, x30, [sp, #0x30]
  100026d0c  add     x29, sp, #0x30
  100026d10  sub     sp, sp, #0x10
  100026d14  mov     x21, x2
  100026d18  mov     x0, x3
  100026d1c  bl      _objc_retain
  100026d20  mov     x19, x0
  100026d24  adrp    x8, #0x10041d000
  100026d28  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100026d2c  adrp    x8, #0x100416000
  100026d30  nop
  100026d34  ldr     x1, [x8, #0xac0]
  100026d38  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100026d3c  mov     x29, x29
  100026d40  bl      _objc_retainAutoreleasedReturnValue
  100026d44  mov     x22, x0
  100026d48  adrp    x8, #0x100417000
  100026d4c  nop
  100026d50  ldr     x1, [x8, #0x2f8]
  100026d54  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100026d58  mov     x29, x29
  100026d5c  bl      _objc_retainAutoreleasedReturnValue
  100026d60  mov     x20, x0
  100026d64  mov     x0, x22
  100026d68  bl      _objc_release
  100026d6c  adrp    x8, #0x10041d000
  100026d70  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100026d74  nop
  100026d78  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100026d7c  adrp    x8, #0x100417000
  100026d80  nop
  100026d84  ldr     x1, [x8, #0xe8]
  100026d88  mov     x2, x21
  100026d8c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg1]
  100026d90  mov     x29, x29
  100026d94  bl      _objc_retainAutoreleasedReturnValue
  100026d98  mov     x21, x0
  100026d9c  adrp    x8, #0x100417000
  100026da0  nop
  100026da4  ldr     x1, [x8, #0xd60]
  100026da8  adrp    x2, #0x1003bb000
  100026dac  add     x2, x2, #0x950                           ; @"Weapon event"
  100026db0  adrp    x3, #0x1003bb000
  100026db4  add     x3, x3, #0x9b0                           ; @"weapon reloaded"
  100026db8  mov     x0, x22
  100026dbc  mov     x4, x19
  100026dc0  mov     x5, x21
  100026dc4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon reloaded" label:arg2 value:[NSNumber numberWithInteger:arg1]]
  100026dc8  mov     x29, x29
  100026dcc  bl      _objc_retainAutoreleasedReturnValue
  100026dd0  mov     x22, x0
  100026dd4  adrp    x8, #0x100417000
  100026dd8  nop
  100026ddc  ldr     x1, [x8, #0x310]
  100026de0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon reloaded" label:arg2 value:[NSNumber numberWithInteger:arg1]] build]
  100026de4  mov     x29, x29
  100026de8  bl      _objc_retainAutoreleasedReturnValue
  100026dec  mov     x23, x0
  100026df0  adrp    x8, #0x100417000
  100026df4  nop
  100026df8  ldr     x1, [x8, #0x318]
  100026dfc  mov     x0, x20
  100026e00  mov     x2, x23
  100026e04  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon reloaded" label:arg2 value:[NSNumber numberWithInteger:arg1]] build]]
  100026e08  mov     x0, x23
  100026e0c  bl      _objc_release
  100026e10  mov     x0, x22
  100026e14  bl      _objc_release
  100026e18  mov     x0, x21
  100026e1c  bl      _objc_release
  100026e20  mov     x0, x20
  100026e24  bl      _objc_release
  100026e28  mov     x0, x19
  100026e2c  sub     sp, x29, #0x30
  100026e30  ldp     x29, x30, [sp, #0x30]
  100026e34  ldp     x20, x19, [sp, #0x20]
  100026e38  ldp     x22, x21, [sp, #0x10]
  100026e3c  ldp     x24, x23, [sp], #0x40
  100026e40  b       _objc_release
  100026e44  mov     x22, x0
  100026e48  b       loc_100026ea0
  100026e4c  mov     x1, x22
  100026e50  mov     x22, x0
  100026e54  mov     x0, x1
  100026e58  b       loc_100026e9c
  100026e5c  mov     x22, x0
  100026e60  b       loc_100026e98
  100026e64  mov     x22, x0
  100026e68  b       loc_100026e90
  100026e6c  str     x22, [sp, #8]
  100026e70  mov     x22, x0
  100026e74  b       loc_100026e88
  100026e78  str     x22, [sp, #8]
  100026e7c  mov     x22, x0
  100026e80  mov     x0, x23
  100026e84  bl      _objc_release
loc_100026e88:
  100026e88  ldr     x0, [sp, #8]
  100026e8c  bl      _objc_release
loc_100026e90:
  100026e90  mov     x0, x21
  100026e94  bl      _objc_release
loc_100026e98:
  100026e98  mov     x0, x20
loc_100026e9c:
  100026e9c  bl      _objc_release
loc_100026ea0:
  100026ea0  mov     x0, x19
  100026ea4  bl      _objc_release
  100026ea8  mov     x0, x22
  100026eac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) setButtonMode:]
; address 0x100026eb0  size 164  kind objc
; ======================================================================
  100026eb0  stp     x22, x21, [sp, #-0x30]!
  100026eb4  stp     x20, x19, [sp, #0x10]
  100026eb8  stp     x29, x30, [sp, #0x20]
  100026ebc  add     x29, sp, #0x20
  100026ec0  mov     x0, x2
  100026ec4  bl      _objc_retain
  100026ec8  mov     x19, x0
  100026ecc  adrp    x8, #0x10041e000
  100026ed0  ldr     x0, [x8, #8]                             ; class ADTracker
  100026ed4  adrp    x8, #0x100416000
  100026ed8  nop
  100026edc  ldr     x1, [x8, #0xac0]
  100026ee0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100026ee4  mov     x29, x29
  100026ee8  bl      _objc_retainAutoreleasedReturnValue
  100026eec  mov     x20, x0
  100026ef0  adrp    x8, #0x100417000
  100026ef4  nop
  100026ef8  ldr     x1, [x8, #0x9b8]
  100026efc  mov     x4, #0
  100026f00  mov     x5, #0
  100026f04  adrp    x3, #0x1003bb000
  100026f08  add     x3, x3, #0x6f0                           ; @"Button mode"
  100026f0c  mov     x2, x19
  100026f10  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:arg1 ForDimension:@"Button mode" AndValue:0 ForMetric:0]
  100026f14  mov     x0, x20
  100026f18  bl      _objc_release
  100026f1c  mov     x0, x19
  100026f20  ldp     x29, x30, [sp, #0x20]
  100026f24  ldp     x20, x19, [sp, #0x10]
  100026f28  ldp     x22, x21, [sp], #0x30
  100026f2c  b       _objc_release
  100026f30  mov     x21, x0
  100026f34  b       loc_100026f44
  100026f38  mov     x21, x0
  100026f3c  mov     x0, x20
  100026f40  bl      _objc_release
loc_100026f44:
  100026f44  mov     x0, x19
  100026f48  bl      _objc_release
  100026f4c  mov     x0, x21
  100026f50  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) setControlMode:]
; address 0x100026f54  size 164  kind objc
; ======================================================================
  100026f54  stp     x22, x21, [sp, #-0x30]!
  100026f58  stp     x20, x19, [sp, #0x10]
  100026f5c  stp     x29, x30, [sp, #0x20]
  100026f60  add     x29, sp, #0x20
  100026f64  mov     x0, x2
  100026f68  bl      _objc_retain
  100026f6c  mov     x19, x0
  100026f70  adrp    x8, #0x10041e000
  100026f74  ldr     x0, [x8, #8]                             ; class ADTracker
  100026f78  adrp    x8, #0x100416000
  100026f7c  nop
  100026f80  ldr     x1, [x8, #0xac0]
  100026f84  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100026f88  mov     x29, x29
  100026f8c  bl      _objc_retainAutoreleasedReturnValue
  100026f90  mov     x20, x0
  100026f94  adrp    x8, #0x100417000
  100026f98  nop
  100026f9c  ldr     x1, [x8, #0x9b8]
  100026fa0  mov     x4, #0
  100026fa4  mov     x5, #0
  100026fa8  adrp    x3, #0x1003bb000
  100026fac  add     x3, x3, #0x730                           ; @"Control mode"
  100026fb0  mov     x2, x19
  100026fb4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:arg1 ForDimension:@"Control mode" AndValue:0 ForMetric:0]
  100026fb8  mov     x0, x20
  100026fbc  bl      _objc_release
  100026fc0  mov     x0, x19
  100026fc4  ldp     x29, x30, [sp, #0x20]
  100026fc8  ldp     x20, x19, [sp, #0x10]
  100026fcc  ldp     x22, x21, [sp], #0x30
  100026fd0  b       _objc_release
  100026fd4  mov     x21, x0
  100026fd8  b       loc_100026fe8
  100026fdc  mov     x21, x0
  100026fe0  mov     x0, x20
  100026fe4  bl      _objc_release
loc_100026fe8:
  100026fe8  mov     x0, x19
  100026fec  bl      _objc_release
  100026ff0  mov     x0, x21
  100026ff4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) switchFromWeapon:ToNewWeapon:WithBulletsRemaining:]
; address 0x100026ff8  size 548  kind objc
; ======================================================================
  100026ff8  stp     x24, x23, [sp, #-0x40]!
  100026ffc  stp     x22, x21, [sp, #0x10]
  100027000  stp     x20, x19, [sp, #0x20]
  100027004  stp     x29, x30, [sp, #0x30]
  100027008  add     x29, sp, #0x30
  10002700c  sub     sp, sp, #0x10
  100027010  mov     x22, x4
  100027014  mov     x20, x3
  100027018  mov     x0, x2
  10002701c  bl      _objc_retain
  100027020  mov     x19, x0
  100027024  mov     x0, x20
  100027028  bl      _objc_retain
  10002702c  mov     x20, x0
  100027030  adrp    x8, #0x10041e000
  100027034  ldr     x0, [x8, #8]                             ; class ADTracker
  100027038  adrp    x8, #0x100416000
  10002703c  nop
  100027040  ldr     x21, [x8, #0xac0]
  100027044  mov     x1, x21
  100027048  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002704c  mov     x29, x29
  100027050  bl      _objc_retainAutoreleasedReturnValue
  100027054  mov     x23, x0
  100027058  adrp    x8, #0x100417000
  10002705c  nop
  100027060  ldr     x1, [x8, #0x9b8]
  100027064  mov     x4, #0
  100027068  mov     x5, #0
  10002706c  adrp    x3, #0x1003bb000
  100027070  add     x3, x3, #0x850                           ; @"Weapon name"
  100027074  mov     x2, x20
  100027078  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:arg2 ForDimension:@"Weapon name" AndValue:0 ForMetric:0]
  10002707c  mov     x0, x23
  100027080  bl      _objc_release
  100027084  adrp    x8, #0x10041d000
  100027088  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002708c  mov     x1, x21
  100027090  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100027094  mov     x29, x29
  100027098  bl      _objc_retainAutoreleasedReturnValue
  10002709c  mov     x23, x0
  1000270a0  adrp    x8, #0x100417000
  1000270a4  nop
  1000270a8  ldr     x1, [x8, #0x2f8]
  1000270ac  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000270b0  mov     x29, x29
  1000270b4  bl      _objc_retainAutoreleasedReturnValue
  1000270b8  mov     x21, x0
  1000270bc  mov     x0, x23
  1000270c0  bl      _objc_release
  1000270c4  adrp    x8, #0x10041d000
  1000270c8  ldr     x23, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  1000270cc  nop
  1000270d0  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000270d4  adrp    x8, #0x100417000
  1000270d8  nop
  1000270dc  ldr     x1, [x8, #0xd80]
  1000270e0  mov     x2, x22
  1000270e4  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:arg3]
  1000270e8  mov     x29, x29
  1000270ec  bl      _objc_retainAutoreleasedReturnValue
  1000270f0  mov     x22, x0
  1000270f4  adrp    x8, #0x100417000
  1000270f8  nop
  1000270fc  ldr     x1, [x8, #0xd60]
  100027100  adrp    x2, #0x1003bb000
  100027104  add     x2, x2, #0x950                           ; @"Weapon event"
  100027108  adrp    x3, #0x1003bb000
  10002710c  add     x3, x3, #0x9d0                           ; @"weapon switched"
  100027110  mov     x0, x23
  100027114  mov     x4, x19
  100027118  mov     x5, x22
  10002711c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon switched" label:arg1 value:[NSNumber numberWithUnsignedInteger:arg3]]
  100027120  mov     x29, x29
  100027124  bl      _objc_retainAutoreleasedReturnValue
  100027128  mov     x23, x0
  10002712c  adrp    x8, #0x100417000
  100027130  nop
  100027134  ldr     x1, [x8, #0x310]
  100027138  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon switched" label:arg1 value:[NSNumber numberWithUnsignedInteger:arg3]] build]
  10002713c  mov     x29, x29
  100027140  bl      _objc_retainAutoreleasedReturnValue
  100027144  mov     x24, x0
  100027148  adrp    x8, #0x100417000
  10002714c  nop
  100027150  ldr     x1, [x8, #0x318]
  100027154  mov     x0, x21
  100027158  mov     x2, x24
  10002715c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon switched" label:arg1 value:[NSNumber numberWithUnsignedInteger:arg3]] build]]
  100027160  mov     x0, x24
  100027164  bl      _objc_release
  100027168  mov     x0, x23
  10002716c  bl      _objc_release
  100027170  mov     x0, x22
  100027174  bl      _objc_release
  100027178  mov     x0, x21
  10002717c  bl      _objc_release
  100027180  mov     x0, x20
  100027184  bl      _objc_release
  100027188  mov     x0, x19
  10002718c  sub     sp, x29, #0x30
  100027190  ldp     x29, x30, [sp, #0x30]
  100027194  ldp     x20, x19, [sp, #0x20]
  100027198  ldp     x22, x21, [sp, #0x10]
  10002719c  ldp     x24, x23, [sp], #0x40
  1000271a0  b       _objc_release
  1000271a4  mov     x23, x0
  1000271a8  b       loc_100027204
  1000271ac  b       loc_1000271b0
loc_1000271b0:
  1000271b0  mov     x1, x23
  1000271b4  mov     x23, x0
  1000271b8  mov     x0, x1
  1000271bc  b       loc_100027200
  1000271c0  mov     x23, x0
  1000271c4  b       loc_1000271fc
  1000271c8  mov     x23, x0
  1000271cc  b       loc_1000271f4
  1000271d0  str     x23, [sp, #8]
  1000271d4  mov     x23, x0
  1000271d8  b       loc_1000271ec
  1000271dc  str     x23, [sp, #8]
  1000271e0  mov     x23, x0
  1000271e4  mov     x0, x24
  1000271e8  bl      _objc_release
loc_1000271ec:
  1000271ec  ldr     x0, [sp, #8]
  1000271f0  bl      _objc_release
loc_1000271f4:
  1000271f4  mov     x0, x22
  1000271f8  bl      _objc_release
loc_1000271fc:
  1000271fc  mov     x0, x21
loc_100027200:
  100027200  bl      _objc_release
loc_100027204:
  100027204  mov     x0, x20
  100027208  bl      _objc_release
  10002720c  mov     x0, x19
  100027210  bl      _objc_release
  100027214  mov     x0, x23
  100027218  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) shootWeaponWithName:didHit:]
; address 0x10002721c  size 436  kind objc
; ======================================================================
  10002721c  stp     x24, x23, [sp, #-0x40]!
  100027220  stp     x22, x21, [sp, #0x10]
  100027224  stp     x20, x19, [sp, #0x20]
  100027228  stp     x29, x30, [sp, #0x30]
  10002722c  add     x29, sp, #0x30
  100027230  sub     sp, sp, #0x10
  100027234  mov     x21, x3
  100027238  mov     x0, x2
  10002723c  bl      _objc_retain
  100027240  mov     x19, x0
  100027244  adrp    x8, #0x10041d000
  100027248  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002724c  adrp    x8, #0x100416000
  100027250  nop
  100027254  ldr     x1, [x8, #0xac0]
  100027258  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002725c  mov     x29, x29
  100027260  bl      _objc_retainAutoreleasedReturnValue
  100027264  mov     x22, x0
  100027268  adrp    x8, #0x100417000
  10002726c  nop
  100027270  ldr     x1, [x8, #0x2f8]
  100027274  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100027278  mov     x29, x29
  10002727c  bl      _objc_retainAutoreleasedReturnValue
  100027280  mov     x20, x0
  100027284  mov     x0, x22
  100027288  bl      _objc_release
  10002728c  adrp    x8, #0x10041d000
  100027290  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100027294  nop
  100027298  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10002729c  adrp    x8, #0x100417000
  1000272a0  nop
  1000272a4  ldr     x1, [x8, #0xb8]
  1000272a8  mov     x2, x21
  1000272ac  bl      _objc_msgSend                            ; [NSNumber numberWithBool:arg2]
  1000272b0  mov     x29, x29
  1000272b4  bl      _objc_retainAutoreleasedReturnValue
  1000272b8  mov     x21, x0
  1000272bc  adrp    x8, #0x100417000
  1000272c0  nop
  1000272c4  ldr     x1, [x8, #0xd60]
  1000272c8  adrp    x2, #0x1003bb000
  1000272cc  add     x2, x2, #0x950                           ; @"Weapon event"
  1000272d0  adrp    x3, #0x1003bb000
  1000272d4  add     x3, x3, #0x9f0                           ; @"weapon fired"
  1000272d8  mov     x0, x22
  1000272dc  mov     x4, x19
  1000272e0  mov     x5, x21
  1000272e4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon fired" label:arg1 value:[NSNumber numberWithBool:arg2]]
  1000272e8  mov     x29, x29
  1000272ec  bl      _objc_retainAutoreleasedReturnValue
  1000272f0  mov     x22, x0
  1000272f4  adrp    x8, #0x100417000
  1000272f8  nop
  1000272fc  ldr     x1, [x8, #0x310]
  100027300  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon fired" label:arg1 value:[NSNumber numberWithBool:arg2]] build]
  100027304  mov     x29, x29
  100027308  bl      _objc_retainAutoreleasedReturnValue
  10002730c  mov     x23, x0
  100027310  adrp    x8, #0x100417000
  100027314  nop
  100027318  ldr     x1, [x8, #0x318]
  10002731c  mov     x0, x20
  100027320  mov     x2, x23
  100027324  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Weapon event" action:@"weapon fired" label:arg1 value:[NSNumber numberWithBool:arg2]] build]]
  100027328  mov     x0, x23
  10002732c  bl      _objc_release
  100027330  mov     x0, x22
  100027334  bl      _objc_release
  100027338  mov     x0, x21
  10002733c  bl      _objc_release
  100027340  mov     x0, x20
  100027344  bl      _objc_release
  100027348  mov     x0, x19
  10002734c  sub     sp, x29, #0x30
  100027350  ldp     x29, x30, [sp, #0x30]
  100027354  ldp     x20, x19, [sp, #0x20]
  100027358  ldp     x22, x21, [sp, #0x10]
  10002735c  ldp     x24, x23, [sp], #0x40
  100027360  b       _objc_release
  100027364  mov     x22, x0
  100027368  b       loc_1000273c0
  10002736c  mov     x1, x22
  100027370  mov     x22, x0
  100027374  mov     x0, x1
  100027378  b       loc_1000273bc
  10002737c  mov     x22, x0
  100027380  b       loc_1000273b8
  100027384  mov     x22, x0
  100027388  b       loc_1000273b0
  10002738c  str     x22, [sp, #8]
  100027390  mov     x22, x0
  100027394  b       loc_1000273a8
  100027398  str     x22, [sp, #8]
  10002739c  mov     x22, x0
  1000273a0  mov     x0, x23
  1000273a4  bl      _objc_release
loc_1000273a8:
  1000273a8  ldr     x0, [sp, #8]
  1000273ac  bl      _objc_release
loc_1000273b0:
  1000273b0  mov     x0, x21
  1000273b4  bl      _objc_release
loc_1000273b8:
  1000273b8  mov     x0, x20
loc_1000273bc:
  1000273bc  bl      _objc_release
loc_1000273c0:
  1000273c0  mov     x0, x19
  1000273c4  bl      _objc_release
  1000273c8  mov     x0, x22
  1000273cc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) setModifierDimensions:]
; address 0x1000273d0  size 1016  kind objc
; ======================================================================
  1000273d0  stp     x28, x27, [sp, #-0x60]!
  1000273d4  stp     x26, x25, [sp, #0x10]
  1000273d8  stp     x24, x23, [sp, #0x20]
  1000273dc  stp     x22, x21, [sp, #0x30]
  1000273e0  stp     x20, x19, [sp, #0x40]
  1000273e4  stp     x29, x30, [sp, #0x50]
  1000273e8  add     x29, sp, #0x50
  1000273ec  sub     sp, sp, #0x50
  1000273f0  mov     x0, x2
  1000273f4  bl      _objc_retain
  1000273f8  str     x0, [sp, #0x28]
  1000273fc  adrp    x8, #0x100417000
  100027400  nop
  100027404  ldr     x1, [x8, #0x248]
  100027408  bl      _objc_msgSend                            ; [arg1 allKeys]
  10002740c  mov     x29, x29
  100027410  bl      _objc_retainAutoreleasedReturnValue
  100027414  str     x0, [sp, #0x48]
  100027418  adrp    x8, #0x100416000
  10002741c  nop
  100027420  adrp    x9, #0x100416000
  100027424  add     x9, x9, #0xac8                           ; &@selector(alloc)
  100027428  adrp    x10, #0x100416000
  10002742c  add     x10, x10, #0xab8                         ; &@selector(init)
  100027430  adrp    x11, #0x100417000
  100027434  add     x11, x11, #0xd88                         ; &@selector(appendFormat:)
  100027438  adrp    x12, #0x100416000
  10002743c  add     x12, x12, #0xec0                         ; &@selector(numberWithInt:)
  100027440  ldr     x8, [x8, #0xe30]
  100027444  str     x8, [sp, #0x20]
  100027448  ldr     x27, [x9]
  10002744c  ldr     x28, [x10]
  100027450  ldr     x26, [x11]
  100027454  ldr     x8, [x12]
  100027458  str     x8, [sp, #0x18]
  10002745c  adrp    x8, #0x100416000
  100027460  nop
  100027464  ldr     x8, [x8, #0xac0]
  100027468  str     x8, [sp, #0x40]
  10002746c  adrp    x8, #0x100416000
  100027470  nop
  100027474  ldr     x8, [x8, #0xc30]
  100027478  str     x8, [sp, #0x38]
  10002747c  adrp    x8, #0x100417000
  100027480  nop
  100027484  ldr     x8, [x8, #0x9b8]
  100027488  str     x8, [sp, #0x30]
  10002748c  adrp    x8, #0x100417000
  100027490  nop
  100027494  ldr     x8, [x8, #0x40]
  100027498  str     x8, [sp, #0x10]
  10002749c  mov     w23, #1
  1000274a0  adrp    x20, #0x10041e000
  1000274a4  b       loc_1000274e4
loc_1000274a8:
  1000274a8  mov     x0, x27
  1000274ac  bl      _objc_release
  1000274b0  mov     x0, x26
  1000274b4  bl      _objc_release
  1000274b8  mov     x0, x24
  1000274bc  bl      _objc_release
  1000274c0  mov     x0, x20
  1000274c4  bl      _objc_release
  1000274c8  mov     x0, x25
  1000274cc  bl      _objc_release
  1000274d0  add     x23, x23, #2
  1000274d4  mov     x27, x28
  1000274d8  mov     x28, x19
  1000274dc  adrp    x20, #0x10041e000
  1000274e0  mov     x26, x21
loc_1000274e4:
  1000274e4  ldr     x0, [sp, #0x48]
  1000274e8  ldr     x1, [sp, #0x20]
  1000274ec  bl      _objc_msgSend                            ; [[arg1 allKeys] count]
  1000274f0  cmp     x23, x0
  1000274f4  b.hi    loc_100027704                            ; if (x23 >u [[arg1 allKeys] count])
  1000274f8  ldr     x0, [x20, #0xd8]                         ; class NSMutableString
  1000274fc  mov     x1, x27
  100027500  bl      _objc_msgSend                            ; [NSMutableString alloc]
  100027504  mov     x1, x28
  100027508  bl      _objc_msgSend                            ; [[NSMutableString alloc] init]
  10002750c  mov     x21, x0
  100027510  mov     x0, x21
  100027514  mov     x1, x26
  100027518  adrp    x2, #0x1003bb000
  10002751c  add     x2, x2, #0xa10                           ; @"DIMENSION_TAROT_MODIFIER_"
  100027520  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendFormat:@"DIMENSION_TAROT_MODIFIER_"]
  100027524  ldr     x19, [sp, #0x18]
  100027528  adrp    x8, #0x10041d000
  10002752c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100027530  mov     x1, x19
  100027534  mov     x2, x23
  100027538  bl      _objc_msgSend                            ; [NSNumber numberWithInt:x2]
  10002753c  mov     x29, x29
  100027540  bl      _objc_retainAutoreleasedReturnValue
  100027544  mov     x22, x0
  100027548  str     x22, [sp]
  10002754c  mov     x0, x21
  100027550  mov     x1, x26
  100027554  adrp    x2, #0x1003ba000
  100027558  add     x2, x2, #0x190                           ; @"%@"
  10002755c  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendFormat:@"%@", [NSNumber numberWithInt:x2]]
  100027560  mov     x0, x22
  100027564  bl      _objc_release
  100027568  mov     x0, x21
  10002756c  mov     x1, x26
  100027570  adrp    x2, #0x1003bb000
  100027574  add     x2, x2, #0xa30                           ; @"_LABEL"
  100027578  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendFormat:@"_LABEL"]
  10002757c  ldr     x0, [x20, #0xd8]                         ; class NSMutableString
  100027580  mov     x1, x27
  100027584  bl      _objc_msgSend                            ; [NSMutableString alloc]
  100027588  mov     x1, x28
  10002758c  bl      _objc_msgSend                            ; [[NSMutableString alloc] init]
  100027590  mov     x22, x0
  100027594  mov     x0, x22
  100027598  mov     x1, x26
  10002759c  adrp    x2, #0x1003bb000
  1000275a0  add     x2, x2, #0xa50                           ; @"DIMENSION_MODIFIER_DESIRABILITY_"
  1000275a4  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendFormat:@"DIMENSION_MODIFIER_DESIRABILITY_"]
  1000275a8  adrp    x8, #0x10041d000
  1000275ac  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000275b0  mov     x1, x19
  1000275b4  mov     x2, x23
  1000275b8  bl      _objc_msgSend                            ; [NSNumber numberWithInt:x2]
  1000275bc  mov     x29, x29
  1000275c0  bl      _objc_retainAutoreleasedReturnValue
  1000275c4  mov     x24, x0
  1000275c8  str     x24, [sp]
  1000275cc  mov     x0, x22
  1000275d0  mov     x1, x26
  1000275d4  adrp    x2, #0x1003ba000
  1000275d8  add     x2, x2, #0x190                           ; @"%@"
  1000275dc  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendFormat:@"%@", [NSNumber numberWithInt:x2]]
  1000275e0  mov     x0, x24
  1000275e4  bl      _objc_release
  1000275e8  mov     x0, x22
  1000275ec  mov     x1, x26
  1000275f0  adrp    x2, #0x1003bb000
  1000275f4  add     x2, x2, #0xa30                           ; @"_LABEL"
  1000275f8  bl      _objc_msgSend                            ; [[[NSMutableString alloc] init] appendFormat:@"_LABEL"]
  1000275fc  adrp    x8, #0x10041e000
  100027600  ldr     x0, [x8, #8]                             ; class ADTracker
  100027604  ldr     x1, [sp, #0x40]
  100027608  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002760c  mov     x20, x26
  100027610  mov     x29, x29
  100027614  bl      _objc_retainAutoreleasedReturnValue
  100027618  mov     x24, x0
  10002761c  sub     x23, x23, #1
  100027620  ldr     x0, [sp, #0x48]
  100027624  ldr     x1, [sp, #0x38]
  100027628  mov     x2, x23
  10002762c  bl      _objc_msgSend                            ; [[arg1 allKeys] objectAtIndex:(x23 - 1)]
  100027630  mov     x29, x29
  100027634  bl      _objc_retainAutoreleasedReturnValue
  100027638  mov     x26, x0
  10002763c  mov     x4, #0
  100027640  mov     x5, #0
  100027644  mov     x0, x24
  100027648  ldr     x1, [sp, #0x30]
  10002764c  mov     x2, x26
  100027650  mov     x3, x21
  100027654  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[[arg1 allKeys] objectAtIndex:(x23 - 1)] ForDimension:[[NSMutableString alloc] init] AndValue:0 ForMetric:0]
  100027658  mov     x0, x26
  10002765c  bl      _objc_release
  100027660  mov     x0, x24
  100027664  bl      _objc_release
  100027668  adrp    x8, #0x10041e000
  10002766c  ldr     x0, [x8, #8]                             ; class ADTracker
  100027670  ldr     x1, [sp, #0x40]
  100027674  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100027678  mov     x25, x21
  10002767c  mov     x21, x20
  100027680  mov     x19, x28
  100027684  mov     x29, x29
  100027688  bl      _objc_retainAutoreleasedReturnValue
  10002768c  mov     x24, x0
  100027690  ldr     x0, [sp, #0x48]
  100027694  ldr     x1, [sp, #0x38]
  100027698  mov     x2, x23
  10002769c  bl      _objc_msgSend                            ; [[arg1 allKeys] objectAtIndex:(x23 - 1)]
  1000276a0  mov     x28, x27
  1000276a4  mov     x29, x29
  1000276a8  bl      _objc_retainAutoreleasedReturnValue
  1000276ac  mov     x26, x0
  1000276b0  ldr     x0, [sp, #0x28]
  1000276b4  ldr     x1, [sp, #0x10]
  1000276b8  mov     x2, x26
  1000276bc  bl      _objc_msgSend                            ; [arg1 objectForKey:[[arg1 allKeys] objectAtIndex:(x23 - 1)]]
  1000276c0  mov     x29, x29
  1000276c4  bl      _objc_retainAutoreleasedReturnValue
  1000276c8  mov     x27, x0
  1000276cc  mov     x4, #0
  1000276d0  mov     x5, #0
  1000276d4  mov     x0, x24
  1000276d8  ldr     x1, [sp, #0x30]
  1000276dc  mov     x2, x27
  1000276e0  mov     x20, x22
  1000276e4  mov     x3, x20
  1000276e8  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:[arg1 objectForKey:[[arg1 allKeys] objectAtIndex:(x23 - 1)]] ForDimension:[[NSMutableString alloc] init] AndValue:0 ForMetric:0]
  1000276ec  b       loc_1000274a8
  1000276f0  mov     x22, x20
  1000276f4  mov     x19, x0
  1000276f8  mov     x0, x27
  1000276fc  bl      _objc_release
  100027700  b       loc_100027784
loc_100027704:
  100027704  ldr     x0, [sp, #0x48]
  100027708  bl      _objc_release
  10002770c  ldr     x0, [sp, #0x28]
  100027710  sub     sp, x29, #0x50
  100027714  ldp     x29, x30, [sp, #0x50]
  100027718  ldp     x20, x19, [sp, #0x40]
  10002771c  ldp     x22, x21, [sp, #0x30]
  100027720  ldp     x24, x23, [sp, #0x20]
  100027724  ldp     x26, x25, [sp, #0x10]
  100027728  ldp     x28, x27, [sp], #0x60
  10002772c  b       _objc_release
  100027730  mov     x19, x0
  100027734  b       loc_1000277a0
  100027738  mov     x19, x0
  10002773c  b       loc_100027798
  100027740  mov     x19, x0
  100027744  b       loc_1000277a8
  100027748  mov     x19, x0
  10002774c  b       loc_100027798
  100027750  mov     x19, x0
  100027754  b       loc_10002776c
  100027758  mov     x19, x0
  10002775c  b       loc_10002776c
  100027760  mov     x19, x0
  100027764  mov     x0, x26
  100027768  bl      _objc_release
loc_10002776c:
  10002776c  mov     x0, x24
  100027770  bl      _objc_release
  100027774  b       loc_100027798
  100027778  mov     x19, x0
  10002777c  b       loc_10002778c
  100027780  mov     x19, x0
loc_100027784:
  100027784  mov     x0, x26
  100027788  bl      _objc_release
loc_10002778c:
  10002778c  mov     x0, x24
  100027790  bl      _objc_release
  100027794  mov     x21, x25
loc_100027798:
  100027798  mov     x0, x22
  10002779c  bl      _objc_release
loc_1000277a0:
  1000277a0  mov     x0, x21
  1000277a4  bl      _objc_release
loc_1000277a8:
  1000277a8  ldr     x0, [sp, #0x48]
  1000277ac  bl      _objc_release
loc_1000277b0:
  1000277b0  ldr     x0, [sp, #0x28]
  1000277b4  bl      _objc_release
  1000277b8  mov     x0, x19
  1000277bc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000277c0  mov     x19, x0
  1000277c4  b       loc_1000277b0

; ======================================================================
; -[ADTracker(ADGamePlayTracker) sendLoadOutEventWithWeapon1:Weapon2:Melee:]
; address 0x1000277c8  size 1404  kind objc
; ======================================================================
  1000277c8  stp     x28, x27, [sp, #-0x60]!
  1000277cc  stp     x26, x25, [sp, #0x10]
  1000277d0  stp     x24, x23, [sp, #0x20]
  1000277d4  stp     x22, x21, [sp, #0x30]
  1000277d8  stp     x20, x19, [sp, #0x40]
  1000277dc  stp     x29, x30, [sp, #0x50]
  1000277e0  add     x29, sp, #0x50
  1000277e4  sub     sp, sp, #0x30
  1000277e8  mov     x19, x4
  1000277ec  mov     x20, x3
  1000277f0  mov     x0, x2
  1000277f4  bl      _objc_retain
  1000277f8  mov     x24, x0
  1000277fc  mov     x0, x20
  100027800  bl      _objc_retain
  100027804  str     x0, [sp, #0x28]
  100027808  mov     x0, x19
  10002780c  bl      _objc_retain
  100027810  str     x0, [sp, #0x18]
  100027814  adrp    x8, #0x10041d000
  100027818  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002781c  adrp    x8, #0x100416000
  100027820  nop
  100027824  ldr     x1, [x8, #0xac0]
  100027828  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002782c  mov     x29, x29
  100027830  bl      _objc_retainAutoreleasedReturnValue
  100027834  mov     x19, x0
  100027838  adrp    x8, #0x100417000
  10002783c  nop
  100027840  ldr     x1, [x8, #0x2f8]
  100027844  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100027848  mov     x29, x29
  10002784c  bl      _objc_retainAutoreleasedReturnValue
  100027850  str     x0, [sp, #0x20]
  100027854  mov     x0, x19
  100027858  bl      _objc_release
  10002785c  adrp    x8, #0x10041d000
  100027860  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100027864  adrp    x8, #0x100416000
  100027868  nop
  10002786c  ldr     x1, [x8, #0xec8]
  100027870  str     x1, [sp, #0x10]
  100027874  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100027878  mov     x29, x29
  10002787c  bl      _objc_retainAutoreleasedReturnValue
  100027880  mov     x20, x0
  100027884  adrp    x8, #0x100417000
  100027888  nop
  10002788c  ldr     x23, [x8, #0x450]
  100027890  mov     x0, x24
  100027894  mov     x1, x23
  100027898  bl      _objc_msgSend                            ; [arg1 name]
  10002789c  mov     x29, x29
  1000278a0  bl      _objc_retainAutoreleasedReturnValue
  1000278a4  mov     x22, x0
  1000278a8  adrp    x8, #0x100417000
  1000278ac  nop
  1000278b0  ldr     x19, [x8, #0x458]
  1000278b4  mov     x0, x20
  1000278b8  mov     x1, x19
  1000278bc  mov     x2, x22
  1000278c0  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[arg1 name]]
  1000278c4  mov     x21, x0
  1000278c8  mov     x0, x22
  1000278cc  bl      _objc_release
  1000278d0  mov     x0, x20
  1000278d4  bl      _objc_release
  1000278d8  adrp    x8, #0x10041d000
  1000278dc  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  1000278e0  mov     x0, x24
  1000278e4  mov     x1, x23
  1000278e8  bl      _objc_msgSend                            ; [arg1 name]
  1000278ec  mov     x29, x29
  1000278f0  bl      _objc_retainAutoreleasedReturnValue
  1000278f4  mov     x20, x0
  1000278f8  adrp    x8, #0x10041d000
  1000278fc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100027900  adrp    x8, #0x100416000
  100027904  nop
  100027908  ldr     x25, [x8, #0xec0]
  10002790c  mov     x1, x25
  100027910  mov     x2, x21
  100027914  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg1 name]]]
  100027918  mov     x29, x29
  10002791c  bl      _objc_retainAutoreleasedReturnValue
  100027920  mov     x21, x0
  100027924  adrp    x8, #0x100417000
  100027928  nop
  10002792c  ldr     x26, [x8, #0xd60]
  100027930  adrp    x2, #0x1003bb000
  100027934  add     x2, x2, #0xa70                           ; @"Loadout event"
  100027938  adrp    x3, #0x1003bb000
  10002793c  add     x3, x3, #0xa90                           ; @"weapon loadout"
  100027940  mov     x0, x22
  100027944  mov     x1, x26
  100027948  mov     x4, x20
  10002794c  mov     x5, x21
  100027950  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg1 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg1 name]]]]
  100027954  str     x24, [sp, #8]
  100027958  mov     x29, x29
  10002795c  bl      _objc_retainAutoreleasedReturnValue
  100027960  mov     x22, x0
  100027964  adrp    x8, #0x100417000
  100027968  nop
  10002796c  ldr     x27, [x8, #0x310]
  100027970  mov     x1, x27
  100027974  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg1 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg1 name]]]] build]
  100027978  mov     x29, x29
  10002797c  bl      _objc_retainAutoreleasedReturnValue
  100027980  mov     x24, x0
  100027984  adrp    x8, #0x100417000
  100027988  nop
  10002798c  ldr     x28, [x8, #0x318]
  100027990  ldr     x0, [sp, #0x20]
  100027994  mov     x1, x28
  100027998  mov     x2, x24
  10002799c  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg1 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg1 name]]]] build]]
  1000279a0  mov     x0, x24
  1000279a4  bl      _objc_release
  1000279a8  mov     x0, x22
  1000279ac  bl      _objc_release
  1000279b0  mov     x0, x21
  1000279b4  bl      _objc_release
  1000279b8  mov     x0, x20
  1000279bc  bl      _objc_release
  1000279c0  adrp    x8, #0x10041d000
  1000279c4  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000279c8  ldp     x24, x1, [sp, #8]
  1000279cc  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000279d0  mov     x29, x29
  1000279d4  bl      _objc_retainAutoreleasedReturnValue
  1000279d8  mov     x20, x0
  1000279dc  ldr     x0, [sp, #0x28]
  1000279e0  mov     x1, x23
  1000279e4  bl      _objc_msgSend                            ; [arg2 name]
  1000279e8  mov     x29, x29
  1000279ec  bl      _objc_retainAutoreleasedReturnValue
  1000279f0  mov     x21, x0
  1000279f4  mov     x0, x20
  1000279f8  mov     x1, x19
  1000279fc  mov     x2, x21
  100027a00  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForWeaponWithName:[arg2 name]]
  100027a04  mov     x22, x0
  100027a08  mov     x0, x21
  100027a0c  bl      _objc_release
  100027a10  mov     x0, x20
  100027a14  bl      _objc_release
  100027a18  adrp    x8, #0x10041d000
  100027a1c  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100027a20  ldr     x0, [sp, #0x28]
  100027a24  mov     x1, x23
  100027a28  bl      _objc_msgSend                            ; [arg2 name]
  100027a2c  mov     x29, x29
  100027a30  bl      _objc_retainAutoreleasedReturnValue
  100027a34  mov     x19, x0
  100027a38  adrp    x8, #0x10041d000
  100027a3c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100027a40  mov     x1, x25
  100027a44  mov     x2, x22
  100027a48  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg2 name]]]
  100027a4c  mov     x29, x29
  100027a50  bl      _objc_retainAutoreleasedReturnValue
  100027a54  mov     x20, x0
  100027a58  adrp    x2, #0x1003bb000
  100027a5c  add     x2, x2, #0xa70                           ; @"Loadout event"
  100027a60  adrp    x3, #0x1003bb000
  100027a64  add     x3, x3, #0xa90                           ; @"weapon loadout"
  100027a68  mov     x0, x21
  100027a6c  mov     x1, x26
  100027a70  mov     x4, x19
  100027a74  mov     x5, x20
  100027a78  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg2 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg2 name]]]]
  100027a7c  mov     x29, x29
  100027a80  bl      _objc_retainAutoreleasedReturnValue
  100027a84  mov     x21, x0
  100027a88  mov     x1, x27
  100027a8c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg2 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg2 name]]]] build]
  100027a90  mov     x29, x29
  100027a94  bl      _objc_retainAutoreleasedReturnValue
  100027a98  mov     x22, x0
  100027a9c  ldr     x0, [sp, #0x20]
  100027aa0  mov     x1, x28
  100027aa4  mov     x2, x22
  100027aa8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg2 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForWeaponWithName:[arg2 name]]]] build]]
  100027aac  mov     x0, x22
  100027ab0  bl      _objc_release
  100027ab4  mov     x0, x21
  100027ab8  bl      _objc_release
  100027abc  mov     x0, x20
  100027ac0  bl      _objc_release
  100027ac4  mov     x0, x19
  100027ac8  bl      _objc_release
  100027acc  adrp    x8, #0x10041d000
  100027ad0  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100027ad4  ldr     x1, [sp, #0x10]
  100027ad8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100027adc  mov     x29, x29
  100027ae0  bl      _objc_retainAutoreleasedReturnValue
  100027ae4  mov     x19, x0
  100027ae8  ldr     x0, [sp, #0x18]
  100027aec  mov     x1, x23
  100027af0  bl      _objc_msgSend                            ; [arg3 name]
  100027af4  mov     x29, x29
  100027af8  bl      _objc_retainAutoreleasedReturnValue
  100027afc  mov     x21, x0
  100027b00  adrp    x8, #0x100417000
  100027b04  nop
  100027b08  ldr     x1, [x8, #0xd90]
  100027b0c  mov     x0, x19
  100027b10  mov     x2, x21
  100027b14  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:[arg3 name]]
  100027b18  mov     x20, x0
  100027b1c  mov     x0, x21
  100027b20  bl      _objc_release
  100027b24  mov     x0, x19
  100027b28  bl      _objc_release
  100027b2c  adrp    x8, #0x10041d000
  100027b30  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100027b34  ldr     x0, [sp, #0x18]
  100027b38  mov     x1, x23
  100027b3c  bl      _objc_msgSend                            ; [arg3 name]
  100027b40  mov     x29, x29
  100027b44  bl      _objc_retainAutoreleasedReturnValue
  100027b48  mov     x19, x0
  100027b4c  adrp    x8, #0x10041d000
  100027b50  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100027b54  mov     x1, x25
  100027b58  mov     x2, x20
  100027b5c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:[[ADInventory sharedInventory] levelForPowerUpWithName:[arg3 name]]]
  100027b60  mov     x29, x29
  100027b64  bl      _objc_retainAutoreleasedReturnValue
  100027b68  mov     x20, x0
  100027b6c  adrp    x2, #0x1003bb000
  100027b70  add     x2, x2, #0xa70                           ; @"Loadout event"
  100027b74  adrp    x3, #0x1003bb000
  100027b78  add     x3, x3, #0xa90                           ; @"weapon loadout"
  100027b7c  mov     x0, x21
  100027b80  mov     x1, x26
  100027b84  mov     x4, x19
  100027b88  mov     x5, x20
  100027b8c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg3 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForPowerUpWithName:[arg3 name]]]]
  100027b90  mov     x29, x29
  100027b94  bl      _objc_retainAutoreleasedReturnValue
  100027b98  mov     x21, x0
  100027b9c  mov     x1, x27
  100027ba0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg3 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForPowerUpWithName:[arg3 name]]]] build]
  100027ba4  mov     x29, x29
  100027ba8  bl      _objc_retainAutoreleasedReturnValue
  100027bac  mov     x22, x0
  100027bb0  ldr     x23, [sp, #0x20]
  100027bb4  mov     x0, x23
  100027bb8  mov     x1, x28
  100027bbc  mov     x2, x22
  100027bc0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Loadout event" action:@"weapon loadout" label:[arg3 name] value:[NSNumber numberWithInt:[[ADInventory sharedInventory] levelForPowerUpWithName:[arg3 name]]]] build]]
  100027bc4  mov     x0, x22
  100027bc8  bl      _objc_release
  100027bcc  mov     x0, x21
  100027bd0  bl      _objc_release
  100027bd4  mov     x0, x20
  100027bd8  bl      _objc_release
  100027bdc  mov     x0, x19
  100027be0  bl      _objc_release
  100027be4  mov     x0, x23
  100027be8  bl      _objc_release
  100027bec  ldr     x0, [sp, #0x18]
  100027bf0  bl      _objc_release
  100027bf4  ldr     x0, [sp, #0x28]
  100027bf8  bl      _objc_release
  100027bfc  mov     x0, x24
  100027c00  sub     sp, x29, #0x50
  100027c04  ldp     x29, x30, [sp, #0x50]
  100027c08  ldp     x20, x19, [sp, #0x40]
  100027c0c  ldp     x22, x21, [sp, #0x30]
  100027c10  ldp     x24, x23, [sp, #0x20]
  100027c14  ldp     x26, x25, [sp, #0x10]
  100027c18  ldp     x28, x27, [sp], #0x60
  100027c1c  b       _objc_release
  100027c20  str     x24, [sp, #8]
  100027c24  mov     x23, x0
  100027c28  b       loc_100027d1c
  100027c2c  str     x24, [sp, #8]
  100027c30  mov     x23, x0
  100027c34  b       loc_100027d24
  100027c38  str     x24, [sp, #8]
  100027c3c  mov     x23, x0
  100027c40  mov     x0, x19
  100027c44  b       loc_100027d20
  100027c48  b       loc_100027c5c
  100027c4c  str     x24, [sp, #8]
  100027c50  mov     x23, x0
  100027c54  mov     x0, x22
  100027c58  b       loc_100027ca4
loc_100027c5c:
  100027c5c  str     x24, [sp, #8]
  100027c60  mov     x23, x0
  100027c64  b       loc_100027ca8
  100027c68  str     x24, [sp, #8]
  100027c6c  mov     x23, x0
  100027c70  b       loc_100027ca0
  100027c74  mov     x23, x0
  100027c78  b       loc_100027c88
  100027c7c  mov     x23, x0
  100027c80  mov     x0, x24
  100027c84  bl      _objc_release
loc_100027c88:
  100027c88  mov     x0, x22
  100027c8c  bl      _objc_release
  100027c90  b       loc_100027ca0
  100027c94  mov     x23, x0
  100027c98  b       loc_100027ca8
  100027c9c  mov     x23, x0
loc_100027ca0:
  100027ca0  mov     x0, x21
loc_100027ca4:
  100027ca4  bl      _objc_release
loc_100027ca8:
  100027ca8  mov     x0, x20
  100027cac  b       loc_100027d18
  100027cb0  mov     x23, x0
  100027cb4  b       loc_100027d14
  100027cb8  mov     x23, x0
  100027cbc  b       loc_100027d0c
  100027cc0  mov     x23, x0
  100027cc4  b       loc_100027d04
  100027cc8  b       loc_100027cf8
  100027ccc  mov     x23, x0
  100027cd0  b       loc_100027d14
  100027cd4  mov     x23, x0
  100027cd8  mov     x0, x21
  100027cdc  b       loc_100027d10
  100027ce0  mov     x23, x0
  100027ce4  b       loc_100027d14
  100027ce8  mov     x23, x0
  100027cec  b       loc_100027d0c
  100027cf0  mov     x23, x0
  100027cf4  b       loc_100027d04
loc_100027cf8:
  100027cf8  mov     x23, x0
  100027cfc  mov     x0, x22
  100027d00  bl      _objc_release
loc_100027d04:
  100027d04  mov     x0, x21
  100027d08  bl      _objc_release
loc_100027d0c:
  100027d0c  mov     x0, x20
loc_100027d10:
  100027d10  bl      _objc_release
loc_100027d14:
  100027d14  mov     x0, x19
loc_100027d18:
  100027d18  bl      _objc_release
loc_100027d1c:
  100027d1c  ldr     x0, [sp, #0x20]
loc_100027d20:
  100027d20  bl      _objc_release
loc_100027d24:
  100027d24  ldr     x0, [sp, #0x18]
  100027d28  bl      _objc_release
  100027d2c  ldr     x0, [sp, #0x28]
  100027d30  bl      _objc_release
  100027d34  ldr     x0, [sp, #8]
  100027d38  bl      _objc_release
  100027d3c  mov     x0, x23
  100027d40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) diamondAcquired]
; address 0x100027d44  size 304  kind objc
; ======================================================================
  100027d44  stp     x22, x21, [sp, #-0x30]!
  100027d48  stp     x20, x19, [sp, #0x10]
  100027d4c  stp     x29, x30, [sp, #0x20]
  100027d50  add     x29, sp, #0x20
  100027d54  adrp    x8, #0x10041d000
  100027d58  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100027d5c  adrp    x8, #0x100416000
  100027d60  nop
  100027d64  ldr     x1, [x8, #0xac0]
  100027d68  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100027d6c  mov     x29, x29
  100027d70  bl      _objc_retainAutoreleasedReturnValue
  100027d74  mov     x20, x0
  100027d78  adrp    x8, #0x100417000
  100027d7c  nop
  100027d80  ldr     x1, [x8, #0x2f8]
  100027d84  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100027d88  mov     x29, x29
  100027d8c  bl      _objc_retainAutoreleasedReturnValue
  100027d90  mov     x19, x0
  100027d94  mov     x0, x20
  100027d98  bl      _objc_release
  100027d9c  adrp    x8, #0x10041d000
  100027da0  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100027da4  adrp    x8, #0x100417000
  100027da8  nop
  100027dac  ldr     x1, [x8, #0xd60]
  100027db0  mov     x4, #0
  100027db4  mov     x5, #0
  100027db8  adrp    x2, #0x1003bb000
  100027dbc  add     x2, x2, #0xab0                           ; @"Diamond event"
  100027dc0  adrp    x3, #0x1003bb000
  100027dc4  add     x3, x3, #0xad0                           ; @"diamond shot"
  100027dc8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond shot" label:0 value:0]
  100027dcc  mov     x29, x29
  100027dd0  bl      _objc_retainAutoreleasedReturnValue
  100027dd4  mov     x20, x0
  100027dd8  adrp    x8, #0x100417000
  100027ddc  nop
  100027de0  ldr     x1, [x8, #0x310]
  100027de4  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond shot" label:0 value:0] build]
  100027de8  mov     x29, x29
  100027dec  bl      _objc_retainAutoreleasedReturnValue
  100027df0  mov     x21, x0
  100027df4  adrp    x8, #0x100417000
  100027df8  nop
  100027dfc  ldr     x1, [x8, #0x318]
  100027e00  mov     x0, x19
  100027e04  mov     x2, x21
  100027e08  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond shot" label:0 value:0] build]]
  100027e0c  mov     x0, x21
  100027e10  bl      _objc_release
  100027e14  mov     x0, x20
  100027e18  bl      _objc_release
  100027e1c  mov     x0, x19
  100027e20  ldp     x29, x30, [sp, #0x20]
  100027e24  ldp     x20, x19, [sp, #0x10]
  100027e28  ldp     x22, x21, [sp], #0x30
  100027e2c  b       _objc_release
  100027e30  mov     x21, x0
  100027e34  mov     x0, x20
  100027e38  b       loc_100027e68
  100027e3c  mov     x21, x0
  100027e40  b       loc_100027e64
  100027e44  mov     x21, x0
  100027e48  b       loc_100027e5c
  100027e4c  mov     x1, x21
  100027e50  mov     x21, x0
  100027e54  mov     x0, x1
  100027e58  bl      _objc_release
loc_100027e5c:
  100027e5c  mov     x0, x20
  100027e60  bl      _objc_release
loc_100027e64:
  100027e64  mov     x0, x19
loc_100027e68:
  100027e68  bl      _objc_release
  100027e6c  mov     x0, x21
  100027e70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) diamondAppeared]
; address 0x100027e74  size 304  kind objc
; ======================================================================
  100027e74  stp     x22, x21, [sp, #-0x30]!
  100027e78  stp     x20, x19, [sp, #0x10]
  100027e7c  stp     x29, x30, [sp, #0x20]
  100027e80  add     x29, sp, #0x20
  100027e84  adrp    x8, #0x10041d000
  100027e88  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100027e8c  adrp    x8, #0x100416000
  100027e90  nop
  100027e94  ldr     x1, [x8, #0xac0]
  100027e98  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100027e9c  mov     x29, x29
  100027ea0  bl      _objc_retainAutoreleasedReturnValue
  100027ea4  mov     x20, x0
  100027ea8  adrp    x8, #0x100417000
  100027eac  nop
  100027eb0  ldr     x1, [x8, #0x2f8]
  100027eb4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100027eb8  mov     x29, x29
  100027ebc  bl      _objc_retainAutoreleasedReturnValue
  100027ec0  mov     x19, x0
  100027ec4  mov     x0, x20
  100027ec8  bl      _objc_release
  100027ecc  adrp    x8, #0x10041d000
  100027ed0  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100027ed4  adrp    x8, #0x100417000
  100027ed8  nop
  100027edc  ldr     x1, [x8, #0xd60]
  100027ee0  mov     x4, #0
  100027ee4  mov     x5, #0
  100027ee8  adrp    x2, #0x1003bb000
  100027eec  add     x2, x2, #0xab0                           ; @"Diamond event"
  100027ef0  adrp    x3, #0x1003bb000
  100027ef4  add     x3, x3, #0xaf0                           ; @"diamond appeared"
  100027ef8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond appeared" label:0 value:0]
  100027efc  mov     x29, x29
  100027f00  bl      _objc_retainAutoreleasedReturnValue
  100027f04  mov     x20, x0
  100027f08  adrp    x8, #0x100417000
  100027f0c  nop
  100027f10  ldr     x1, [x8, #0x310]
  100027f14  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond appeared" label:0 value:0] build]
  100027f18  mov     x29, x29
  100027f1c  bl      _objc_retainAutoreleasedReturnValue
  100027f20  mov     x21, x0
  100027f24  adrp    x8, #0x100417000
  100027f28  nop
  100027f2c  ldr     x1, [x8, #0x318]
  100027f30  mov     x0, x19
  100027f34  mov     x2, x21
  100027f38  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond appeared" label:0 value:0] build]]
  100027f3c  mov     x0, x21
  100027f40  bl      _objc_release
  100027f44  mov     x0, x20
  100027f48  bl      _objc_release
  100027f4c  mov     x0, x19
  100027f50  ldp     x29, x30, [sp, #0x20]
  100027f54  ldp     x20, x19, [sp, #0x10]
  100027f58  ldp     x22, x21, [sp], #0x30
  100027f5c  b       _objc_release
  100027f60  mov     x21, x0
  100027f64  mov     x0, x20
  100027f68  b       loc_100027f98
  100027f6c  mov     x21, x0
  100027f70  b       loc_100027f94
  100027f74  mov     x21, x0
  100027f78  b       loc_100027f8c
  100027f7c  mov     x1, x21
  100027f80  mov     x21, x0
  100027f84  mov     x0, x1
  100027f88  bl      _objc_release
loc_100027f8c:
  100027f8c  mov     x0, x20
  100027f90  bl      _objc_release
loc_100027f94:
  100027f94  mov     x0, x19
loc_100027f98:
  100027f98  bl      _objc_release
  100027f9c  mov     x0, x21
  100027fa0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) diamondDisappered]
; address 0x100027fa4  size 304  kind objc
; ======================================================================
  100027fa4  stp     x22, x21, [sp, #-0x30]!
  100027fa8  stp     x20, x19, [sp, #0x10]
  100027fac  stp     x29, x30, [sp, #0x20]
  100027fb0  add     x29, sp, #0x20
  100027fb4  adrp    x8, #0x10041d000
  100027fb8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100027fbc  adrp    x8, #0x100416000
  100027fc0  nop
  100027fc4  ldr     x1, [x8, #0xac0]
  100027fc8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100027fcc  mov     x29, x29
  100027fd0  bl      _objc_retainAutoreleasedReturnValue
  100027fd4  mov     x20, x0
  100027fd8  adrp    x8, #0x100417000
  100027fdc  nop
  100027fe0  ldr     x1, [x8, #0x2f8]
  100027fe4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100027fe8  mov     x29, x29
  100027fec  bl      _objc_retainAutoreleasedReturnValue
  100027ff0  mov     x19, x0
  100027ff4  mov     x0, x20
  100027ff8  bl      _objc_release
  100027ffc  adrp    x8, #0x10041d000
  100028000  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100028004  adrp    x8, #0x100417000
  100028008  nop
  10002800c  ldr     x1, [x8, #0xd60]
  100028010  mov     x4, #0
  100028014  mov     x5, #0
  100028018  adrp    x2, #0x1003bb000
  10002801c  add     x2, x2, #0xab0                           ; @"Diamond event"
  100028020  adrp    x3, #0x1003bb000
  100028024  add     x3, x3, #0xb10                           ; @"diamond disappered"
  100028028  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond disappered" label:0 value:0]
  10002802c  mov     x29, x29
  100028030  bl      _objc_retainAutoreleasedReturnValue
  100028034  mov     x20, x0
  100028038  adrp    x8, #0x100417000
  10002803c  nop
  100028040  ldr     x1, [x8, #0x310]
  100028044  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond disappered" label:0 value:0] build]
  100028048  mov     x29, x29
  10002804c  bl      _objc_retainAutoreleasedReturnValue
  100028050  mov     x21, x0
  100028054  adrp    x8, #0x100417000
  100028058  nop
  10002805c  ldr     x1, [x8, #0x318]
  100028060  mov     x0, x19
  100028064  mov     x2, x21
  100028068  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Diamond event" action:@"diamond disappered" label:0 value:0] build]]
  10002806c  mov     x0, x21
  100028070  bl      _objc_release
  100028074  mov     x0, x20
  100028078  bl      _objc_release
  10002807c  mov     x0, x19
  100028080  ldp     x29, x30, [sp, #0x20]
  100028084  ldp     x20, x19, [sp, #0x10]
  100028088  ldp     x22, x21, [sp], #0x30
  10002808c  b       _objc_release
  100028090  mov     x21, x0
  100028094  mov     x0, x20
  100028098  b       loc_1000280c8
  10002809c  mov     x21, x0
  1000280a0  b       loc_1000280c4
  1000280a4  mov     x21, x0
  1000280a8  b       loc_1000280bc
  1000280ac  mov     x1, x21
  1000280b0  mov     x21, x0
  1000280b4  mov     x0, x1
  1000280b8  bl      _objc_release
loc_1000280bc:
  1000280bc  mov     x0, x20
  1000280c0  bl      _objc_release
loc_1000280c4:
  1000280c4  mov     x0, x19
loc_1000280c8:
  1000280c8  bl      _objc_release
  1000280cc  mov     x0, x21
  1000280d0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) loadBrick:WithBrickNumber:]
; address 0x1000280d4  size 516  kind objc
; ======================================================================
  1000280d4  stp     x24, x23, [sp, #-0x40]!
  1000280d8  stp     x22, x21, [sp, #0x10]
  1000280dc  stp     x20, x19, [sp, #0x20]
  1000280e0  stp     x29, x30, [sp, #0x30]
  1000280e4  add     x29, sp, #0x30
  1000280e8  sub     sp, sp, #0x10
  1000280ec  mov     x21, x3
  1000280f0  mov     x0, x2
  1000280f4  bl      _objc_retain
  1000280f8  mov     x19, x0
  1000280fc  adrp    x8, #0x10041e000
  100028100  ldr     x0, [x8, #8]                             ; class ADTracker
  100028104  adrp    x8, #0x100416000
  100028108  nop
  10002810c  ldr     x20, [x8, #0xac0]
  100028110  mov     x1, x20
  100028114  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  100028118  mov     x29, x29
  10002811c  bl      _objc_retainAutoreleasedReturnValue
  100028120  mov     x22, x0
  100028124  adrp    x8, #0x100417000
  100028128  nop
  10002812c  ldr     x1, [x8, #0x9b8]
  100028130  mov     x4, #0
  100028134  mov     x5, #0
  100028138  adrp    x3, #0x1003bb000
  10002813c  add     x3, x3, #0x6d0                           ; @"Brick name"
  100028140  mov     x2, x19
  100028144  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:arg1 ForDimension:@"Brick name" AndValue:0 ForMetric:0]
  100028148  mov     x0, x22
  10002814c  bl      _objc_release
  100028150  adrp    x8, #0x10041d000
  100028154  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028158  mov     x1, x20
  10002815c  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100028160  mov     x29, x29
  100028164  bl      _objc_retainAutoreleasedReturnValue
  100028168  mov     x22, x0
  10002816c  adrp    x8, #0x100417000
  100028170  nop
  100028174  ldr     x1, [x8, #0x2f8]
  100028178  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  10002817c  mov     x29, x29
  100028180  bl      _objc_retainAutoreleasedReturnValue
  100028184  mov     x20, x0
  100028188  mov     x0, x22
  10002818c  bl      _objc_release
  100028190  adrp    x8, #0x10041d000
  100028194  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100028198  nop
  10002819c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000281a0  adrp    x8, #0x100417000
  1000281a4  nop
  1000281a8  ldr     x1, [x8, #0xe8]
  1000281ac  mov     x2, x21
  1000281b0  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg2]
  1000281b4  mov     x29, x29
  1000281b8  bl      _objc_retainAutoreleasedReturnValue
  1000281bc  mov     x21, x0
  1000281c0  adrp    x8, #0x100417000
  1000281c4  nop
  1000281c8  ldr     x1, [x8, #0xd60]
  1000281cc  adrp    x2, #0x1003bb000
  1000281d0  add     x2, x2, #0xb30                           ; @"Brick event"
  1000281d4  adrp    x3, #0x1003bb000
  1000281d8  add     x3, x3, #0xb50                           ; @"brick loaded"
  1000281dc  mov     x0, x22
  1000281e0  mov     x4, x19
  1000281e4  mov     x5, x21
  1000281e8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"brick loaded" label:arg1 value:[NSNumber numberWithInteger:arg2]]
  1000281ec  mov     x29, x29
  1000281f0  bl      _objc_retainAutoreleasedReturnValue
  1000281f4  mov     x22, x0
  1000281f8  adrp    x8, #0x100417000
  1000281fc  nop
  100028200  ldr     x1, [x8, #0x310]
  100028204  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"brick loaded" label:arg1 value:[NSNumber numberWithInteger:arg2]] build]
  100028208  mov     x29, x29
  10002820c  bl      _objc_retainAutoreleasedReturnValue
  100028210  mov     x23, x0
  100028214  adrp    x8, #0x100417000
  100028218  nop
  10002821c  ldr     x1, [x8, #0x318]
  100028220  mov     x0, x20
  100028224  mov     x2, x23
  100028228  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"brick loaded" label:arg1 value:[NSNumber numberWithInteger:arg2]] build]]
  10002822c  mov     x0, x23
  100028230  bl      _objc_release
  100028234  mov     x0, x22
  100028238  bl      _objc_release
  10002823c  mov     x0, x21
  100028240  bl      _objc_release
  100028244  mov     x0, x20
  100028248  bl      _objc_release
  10002824c  mov     x0, x19
  100028250  sub     sp, x29, #0x30
  100028254  ldp     x29, x30, [sp, #0x30]
  100028258  ldp     x20, x19, [sp, #0x20]
  10002825c  ldp     x22, x21, [sp, #0x10]
  100028260  ldp     x24, x23, [sp], #0x40
  100028264  b       _objc_release
  100028268  mov     x22, x0
  10002826c  b       loc_1000282c8
  100028270  b       loc_100028274
loc_100028274:
  100028274  mov     x1, x22
  100028278  mov     x22, x0
  10002827c  mov     x0, x1
  100028280  b       loc_1000282c4
  100028284  mov     x22, x0
  100028288  b       loc_1000282c0
  10002828c  mov     x22, x0
  100028290  b       loc_1000282b8
  100028294  str     x22, [sp, #8]
  100028298  mov     x22, x0
  10002829c  b       loc_1000282b0
  1000282a0  str     x22, [sp, #8]
  1000282a4  mov     x22, x0
  1000282a8  mov     x0, x23
  1000282ac  bl      _objc_release
loc_1000282b0:
  1000282b0  ldr     x0, [sp, #8]
  1000282b4  bl      _objc_release
loc_1000282b8:
  1000282b8  mov     x0, x21
  1000282bc  bl      _objc_release
loc_1000282c0:
  1000282c0  mov     x0, x20
loc_1000282c4:
  1000282c4  bl      _objc_release
loc_1000282c8:
  1000282c8  mov     x0, x19
  1000282cc  bl      _objc_release
  1000282d0  mov     x0, x22
  1000282d4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) defeatBrick:InTime:]
; address 0x1000282d8  size 544  kind objc
; ======================================================================
  1000282d8  stp     d9, d8, [sp, #-0x50]!
  1000282dc  stp     x24, x23, [sp, #0x10]
  1000282e0  stp     x22, x21, [sp, #0x20]
  1000282e4  stp     x20, x19, [sp, #0x30]
  1000282e8  stp     x29, x30, [sp, #0x40]
  1000282ec  add     x29, sp, #0x40
  1000282f0  sub     sp, sp, #0x10
  1000282f4  mov     v8.16b, v0.16b
  1000282f8  mov     x0, x2
  1000282fc  bl      _objc_retain
  100028300  mov     x19, x0
  100028304  mov     w21, #1
  100028308  fmov    d0, #1.00000000
  10002830c  fcmp    d8, d0
  100028310  b.mi    loc_100028320                            ; if (arg2 < 1)
  100028314  frintx  d0, d8
  100028318  frintp  d0, d8
  10002831c  fcvtzs  x21, d0
loc_100028320:
  100028320  adrp    x8, #0x10041e000
  100028324  ldr     x0, [x8, #8]                             ; class ADTracker
  100028328  adrp    x8, #0x100416000
  10002832c  nop
  100028330  ldr     x20, [x8, #0xac0]
  100028334  mov     x1, x20
  100028338  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002833c  mov     x29, x29
  100028340  bl      _objc_retainAutoreleasedReturnValue
  100028344  mov     x22, x0
  100028348  adrp    x8, #0x100417000
  10002834c  nop
  100028350  ldr     x1, [x8, #0xd98]
  100028354  mov     x3, #0
  100028358  adrp    x2, #0x1003bb000
  10002835c  add     x2, x2, #0x6d0                           ; @"Brick name"
  100028360  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] removeValueForDimension:@"Brick name" AndRemoveValueForMetric:0]
  100028364  mov     x0, x22
  100028368  bl      _objc_release
  10002836c  adrp    x8, #0x10041d000
  100028370  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028374  mov     x1, x20
  100028378  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002837c  mov     x29, x29
  100028380  bl      _objc_retainAutoreleasedReturnValue
  100028384  mov     x22, x0
  100028388  adrp    x8, #0x100417000
  10002838c  nop
  100028390  ldr     x1, [x8, #0x2f8]
  100028394  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100028398  mov     x29, x29
  10002839c  bl      _objc_retainAutoreleasedReturnValue
  1000283a0  mov     x20, x0
  1000283a4  mov     x0, x22
  1000283a8  bl      _objc_release
  1000283ac  adrp    x8, #0x10041d000
  1000283b0  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  1000283b4  nop
  1000283b8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000283bc  adrp    x8, #0x100417000
  1000283c0  nop
  1000283c4  ldr     x1, [x8, #0xe8]
  1000283c8  mov     x2, x21
  1000283cc  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  1000283d0  mov     x29, x29
  1000283d4  bl      _objc_retainAutoreleasedReturnValue
  1000283d8  mov     x21, x0
  1000283dc  adrp    x8, #0x100417000
  1000283e0  nop
  1000283e4  ldr     x1, [x8, #0xd60]
  1000283e8  adrp    x2, #0x1003bb000
  1000283ec  add     x2, x2, #0xb30                           ; @"Brick event"
  1000283f0  adrp    x3, #0x1003bb000
  1000283f4  add     x3, x3, #0xb70                           ; @"brick defeated"
  1000283f8  mov     x0, x22
  1000283fc  mov     x4, x19
  100028400  mov     x5, x21
  100028404  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"brick defeated" label:arg1 value:[NSNumber numberWithInteger:x2]]
  100028408  mov     x29, x29
  10002840c  bl      _objc_retainAutoreleasedReturnValue
  100028410  mov     x22, x0
  100028414  adrp    x8, #0x100417000
  100028418  nop
  10002841c  ldr     x1, [x8, #0x310]
  100028420  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"brick defeated" label:arg1 value:[NSNumber numberWithInteger:x2]] build]
  100028424  mov     x29, x29
  100028428  bl      _objc_retainAutoreleasedReturnValue
  10002842c  mov     x23, x0
  100028430  adrp    x8, #0x100417000
  100028434  nop
  100028438  ldr     x1, [x8, #0x318]
  10002843c  mov     x0, x20
  100028440  mov     x2, x23
  100028444  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"brick defeated" label:arg1 value:[NSNumber numberWithInteger:x2]] build]]
  100028448  mov     x0, x23
  10002844c  bl      _objc_release
  100028450  mov     x0, x22
  100028454  bl      _objc_release
  100028458  mov     x0, x21
  10002845c  bl      _objc_release
  100028460  mov     x0, x20
  100028464  bl      _objc_release
  100028468  mov     x0, x19
  10002846c  sub     sp, x29, #0x40
  100028470  ldp     x29, x30, [sp, #0x40]
  100028474  ldp     x20, x19, [sp, #0x30]
  100028478  ldp     x22, x21, [sp, #0x20]
  10002847c  ldp     x24, x23, [sp, #0x10]
  100028480  ldp     d9, d8, [sp], #0x50
  100028484  b       _objc_release
  100028488  mov     x22, x0
  10002848c  b       loc_1000284e8
  100028490  b       loc_100028494
loc_100028494:
  100028494  mov     x1, x22
  100028498  mov     x22, x0
  10002849c  mov     x0, x1
  1000284a0  b       loc_1000284e4
  1000284a4  mov     x22, x0
  1000284a8  b       loc_1000284e0
  1000284ac  mov     x22, x0
  1000284b0  b       loc_1000284d8
  1000284b4  str     x22, [sp, #8]
  1000284b8  mov     x22, x0
  1000284bc  b       loc_1000284d0
  1000284c0  str     x22, [sp, #8]
  1000284c4  mov     x22, x0
  1000284c8  mov     x0, x23
  1000284cc  bl      _objc_release
loc_1000284d0:
  1000284d0  ldr     x0, [sp, #8]
  1000284d4  bl      _objc_release
loc_1000284d8:
  1000284d8  mov     x0, x21
  1000284dc  bl      _objc_release
loc_1000284e0:
  1000284e0  mov     x0, x20
loc_1000284e4:
  1000284e4  bl      _objc_release
loc_1000284e8:
  1000284e8  mov     x0, x19
  1000284ec  bl      _objc_release
  1000284f0  mov     x0, x22
  1000284f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) timeOfDeathInBrick:BrickName:]
; address 0x1000284f8  size 544  kind objc
; ======================================================================
  1000284f8  stp     d9, d8, [sp, #-0x50]!
  1000284fc  stp     x24, x23, [sp, #0x10]
  100028500  stp     x22, x21, [sp, #0x20]
  100028504  stp     x20, x19, [sp, #0x30]
  100028508  stp     x29, x30, [sp, #0x40]
  10002850c  add     x29, sp, #0x40
  100028510  sub     sp, sp, #0x10
  100028514  mov     v8.16b, v0.16b
  100028518  mov     x0, x2
  10002851c  bl      _objc_retain
  100028520  mov     x19, x0
  100028524  mov     w21, #1
  100028528  fmov    d0, #1.00000000
  10002852c  fcmp    d8, d0
  100028530  b.mi    loc_100028540                            ; if (arg1 < 1)
  100028534  frintx  d0, d8
  100028538  frinta  d0, d8
  10002853c  fcvtzs  x21, d0
loc_100028540:
  100028540  adrp    x8, #0x10041e000
  100028544  ldr     x0, [x8, #8]                             ; class ADTracker
  100028548  adrp    x8, #0x100416000
  10002854c  nop
  100028550  ldr     x20, [x8, #0xac0]
  100028554  mov     x1, x20
  100028558  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10002855c  mov     x29, x29
  100028560  bl      _objc_retainAutoreleasedReturnValue
  100028564  mov     x22, x0
  100028568  adrp    x8, #0x100417000
  10002856c  nop
  100028570  ldr     x1, [x8, #0xd98]
  100028574  mov     x3, #0
  100028578  adrp    x2, #0x1003bb000
  10002857c  add     x2, x2, #0x6d0                           ; @"Brick name"
  100028580  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] removeValueForDimension:@"Brick name" AndRemoveValueForMetric:0]
  100028584  mov     x0, x22
  100028588  bl      _objc_release
  10002858c  adrp    x8, #0x10041d000
  100028590  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028594  mov     x1, x20
  100028598  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002859c  mov     x29, x29
  1000285a0  bl      _objc_retainAutoreleasedReturnValue
  1000285a4  mov     x22, x0
  1000285a8  adrp    x8, #0x100417000
  1000285ac  nop
  1000285b0  ldr     x1, [x8, #0x2f8]
  1000285b4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000285b8  mov     x29, x29
  1000285bc  bl      _objc_retainAutoreleasedReturnValue
  1000285c0  mov     x20, x0
  1000285c4  mov     x0, x22
  1000285c8  bl      _objc_release
  1000285cc  adrp    x8, #0x10041d000
  1000285d0  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  1000285d4  nop
  1000285d8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000285dc  adrp    x8, #0x100417000
  1000285e0  nop
  1000285e4  ldr     x1, [x8, #0xe8]
  1000285e8  mov     x2, x21
  1000285ec  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  1000285f0  mov     x29, x29
  1000285f4  bl      _objc_retainAutoreleasedReturnValue
  1000285f8  mov     x21, x0
  1000285fc  adrp    x8, #0x100417000
  100028600  nop
  100028604  ldr     x1, [x8, #0xd60]
  100028608  adrp    x2, #0x1003bb000
  10002860c  add     x2, x2, #0xb30                           ; @"Brick event"
  100028610  adrp    x3, #0x1003bb000
  100028614  add     x3, x3, #0xb90                           ; @"player defeated"
  100028618  mov     x0, x22
  10002861c  mov     x4, x19
  100028620  mov     x5, x21
  100028624  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"player defeated" label:arg2 value:[NSNumber numberWithInteger:x2]]
  100028628  mov     x29, x29
  10002862c  bl      _objc_retainAutoreleasedReturnValue
  100028630  mov     x22, x0
  100028634  adrp    x8, #0x100417000
  100028638  nop
  10002863c  ldr     x1, [x8, #0x310]
  100028640  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"player defeated" label:arg2 value:[NSNumber numberWithInteger:x2]] build]
  100028644  mov     x29, x29
  100028648  bl      _objc_retainAutoreleasedReturnValue
  10002864c  mov     x23, x0
  100028650  adrp    x8, #0x100417000
  100028654  nop
  100028658  ldr     x1, [x8, #0x318]
  10002865c  mov     x0, x20
  100028660  mov     x2, x23
  100028664  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Brick event" action:@"player defeated" label:arg2 value:[NSNumber numberWithInteger:x2]] build]]
  100028668  mov     x0, x23
  10002866c  bl      _objc_release
  100028670  mov     x0, x22
  100028674  bl      _objc_release
  100028678  mov     x0, x21
  10002867c  bl      _objc_release
  100028680  mov     x0, x20
  100028684  bl      _objc_release
  100028688  mov     x0, x19
  10002868c  sub     sp, x29, #0x40
  100028690  ldp     x29, x30, [sp, #0x40]
  100028694  ldp     x20, x19, [sp, #0x30]
  100028698  ldp     x22, x21, [sp, #0x20]
  10002869c  ldp     x24, x23, [sp, #0x10]
  1000286a0  ldp     d9, d8, [sp], #0x50
  1000286a4  b       _objc_release
  1000286a8  mov     x22, x0
  1000286ac  b       loc_100028708
  1000286b0  b       loc_1000286b4
loc_1000286b4:
  1000286b4  mov     x1, x22
  1000286b8  mov     x22, x0
  1000286bc  mov     x0, x1
  1000286c0  b       loc_100028704
  1000286c4  mov     x22, x0
  1000286c8  b       loc_100028700
  1000286cc  mov     x22, x0
  1000286d0  b       loc_1000286f8
  1000286d4  str     x22, [sp, #8]
  1000286d8  mov     x22, x0
  1000286dc  b       loc_1000286f0
  1000286e0  str     x22, [sp, #8]
  1000286e4  mov     x22, x0
  1000286e8  mov     x0, x23
  1000286ec  bl      _objc_release
loc_1000286f0:
  1000286f0  ldr     x0, [sp, #8]
  1000286f4  bl      _objc_release
loc_1000286f8:
  1000286f8  mov     x0, x21
  1000286fc  bl      _objc_release
loc_100028700:
  100028700  mov     x0, x20
loc_100028704:
  100028704  bl      _objc_release
loc_100028708:
  100028708  mov     x0, x19
  10002870c  bl      _objc_release
  100028710  mov     x0, x22
  100028714  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) powerUpAppeared:]
; address 0x100028718  size 340  kind objc
; ======================================================================
  100028718  stp     x22, x21, [sp, #-0x30]!
  10002871c  stp     x20, x19, [sp, #0x10]
  100028720  stp     x29, x30, [sp, #0x20]
  100028724  add     x29, sp, #0x20
  100028728  mov     x0, x2
  10002872c  bl      _objc_retain
  100028730  mov     x19, x0
  100028734  adrp    x8, #0x10041d000
  100028738  ldr     x0, [x8, #0xfe0]                         ; class GAI
  10002873c  adrp    x8, #0x100416000
  100028740  nop
  100028744  ldr     x1, [x8, #0xac0]
  100028748  bl      _objc_msgSend                            ; [GAI sharedInstance]
  10002874c  mov     x29, x29
  100028750  bl      _objc_retainAutoreleasedReturnValue
  100028754  mov     x21, x0
  100028758  adrp    x8, #0x100417000
  10002875c  nop
  100028760  ldr     x1, [x8, #0x2f8]
  100028764  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100028768  mov     x29, x29
  10002876c  bl      _objc_retainAutoreleasedReturnValue
  100028770  mov     x20, x0
  100028774  mov     x0, x21
  100028778  bl      _objc_release
  10002877c  adrp    x8, #0x10041d000
  100028780  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100028784  adrp    x8, #0x100417000
  100028788  nop
  10002878c  ldr     x1, [x8, #0xd60]
  100028790  mov     x5, #0
  100028794  adrp    x2, #0x1003bb000
  100028798  add     x2, x2, #0xbb0                           ; @"Power up event"
  10002879c  adrp    x3, #0x1003bb000
  1000287a0  add     x3, x3, #0xbd0                           ; @"appeared"
  1000287a4  mov     x4, x19
  1000287a8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"appeared" label:arg1 value:0]
  1000287ac  mov     x29, x29
  1000287b0  bl      _objc_retainAutoreleasedReturnValue
  1000287b4  mov     x21, x0
  1000287b8  adrp    x8, #0x100417000
  1000287bc  nop
  1000287c0  ldr     x1, [x8, #0x310]
  1000287c4  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"appeared" label:arg1 value:0] build]
  1000287c8  mov     x29, x29
  1000287cc  bl      _objc_retainAutoreleasedReturnValue
  1000287d0  mov     x22, x0
  1000287d4  adrp    x8, #0x100417000
  1000287d8  nop
  1000287dc  ldr     x1, [x8, #0x318]
  1000287e0  mov     x0, x20
  1000287e4  mov     x2, x22
  1000287e8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"appeared" label:arg1 value:0] build]]
  1000287ec  mov     x0, x22
  1000287f0  bl      _objc_release
  1000287f4  mov     x0, x21
  1000287f8  bl      _objc_release
  1000287fc  mov     x0, x20
  100028800  bl      _objc_release
  100028804  mov     x0, x19
  100028808  ldp     x29, x30, [sp, #0x20]
  10002880c  ldp     x20, x19, [sp, #0x10]
  100028810  ldp     x22, x21, [sp], #0x30
  100028814  b       _objc_release
  100028818  mov     x22, x0
  10002881c  b       loc_10002885c
  100028820  mov     x22, x0
  100028824  mov     x0, x21
  100028828  b       loc_100028858
  10002882c  mov     x22, x0
  100028830  b       loc_100028854
  100028834  mov     x22, x0
  100028838  b       loc_10002884c
  10002883c  mov     x1, x22
  100028840  mov     x22, x0
  100028844  mov     x0, x1
  100028848  bl      _objc_release
loc_10002884c:
  10002884c  mov     x0, x21
  100028850  bl      _objc_release
loc_100028854:
  100028854  mov     x0, x20
loc_100028858:
  100028858  bl      _objc_release
loc_10002885c:
  10002885c  mov     x0, x19
  100028860  bl      _objc_release
  100028864  mov     x0, x22
  100028868  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) powerUpUsed]
; address 0x10002886c  size 304  kind objc
; ======================================================================
  10002886c  stp     x22, x21, [sp, #-0x30]!
  100028870  stp     x20, x19, [sp, #0x10]
  100028874  stp     x29, x30, [sp, #0x20]
  100028878  add     x29, sp, #0x20
  10002887c  adrp    x8, #0x10041d000
  100028880  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028884  adrp    x8, #0x100416000
  100028888  nop
  10002888c  ldr     x1, [x8, #0xac0]
  100028890  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100028894  mov     x29, x29
  100028898  bl      _objc_retainAutoreleasedReturnValue
  10002889c  mov     x20, x0
  1000288a0  adrp    x8, #0x100417000
  1000288a4  nop
  1000288a8  ldr     x1, [x8, #0x2f8]
  1000288ac  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000288b0  mov     x29, x29
  1000288b4  bl      _objc_retainAutoreleasedReturnValue
  1000288b8  mov     x19, x0
  1000288bc  mov     x0, x20
  1000288c0  bl      _objc_release
  1000288c4  adrp    x8, #0x10041d000
  1000288c8  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000288cc  adrp    x8, #0x100417000
  1000288d0  nop
  1000288d4  ldr     x1, [x8, #0xd60]
  1000288d8  mov     x4, #0
  1000288dc  mov     x5, #0
  1000288e0  adrp    x2, #0x1003bb000
  1000288e4  add     x2, x2, #0xbb0                           ; @"Power up event"
  1000288e8  adrp    x3, #0x1003bb000
  1000288ec  add     x3, x3, #0xbf0                           ; @"used"
  1000288f0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"used" label:0 value:0]
  1000288f4  mov     x29, x29
  1000288f8  bl      _objc_retainAutoreleasedReturnValue
  1000288fc  mov     x20, x0
  100028900  adrp    x8, #0x100417000
  100028904  nop
  100028908  ldr     x1, [x8, #0x310]
  10002890c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"used" label:0 value:0] build]
  100028910  mov     x29, x29
  100028914  bl      _objc_retainAutoreleasedReturnValue
  100028918  mov     x21, x0
  10002891c  adrp    x8, #0x100417000
  100028920  nop
  100028924  ldr     x1, [x8, #0x318]
  100028928  mov     x0, x19
  10002892c  mov     x2, x21
  100028930  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"used" label:0 value:0] build]]
  100028934  mov     x0, x21
  100028938  bl      _objc_release
  10002893c  mov     x0, x20
  100028940  bl      _objc_release
  100028944  mov     x0, x19
  100028948  ldp     x29, x30, [sp, #0x20]
  10002894c  ldp     x20, x19, [sp, #0x10]
  100028950  ldp     x22, x21, [sp], #0x30
  100028954  b       _objc_release
  100028958  mov     x21, x0
  10002895c  mov     x0, x20
  100028960  b       loc_100028990
  100028964  mov     x21, x0
  100028968  b       loc_10002898c
  10002896c  mov     x21, x0
  100028970  b       loc_100028984
  100028974  mov     x1, x21
  100028978  mov     x21, x0
  10002897c  mov     x0, x1
  100028980  bl      _objc_release
loc_100028984:
  100028984  mov     x0, x20
  100028988  bl      _objc_release
loc_10002898c:
  10002898c  mov     x0, x19
loc_100028990:
  100028990  bl      _objc_release
  100028994  mov     x0, x21
  100028998  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) powerUpMissed]
; address 0x10002899c  size 304  kind objc
; ======================================================================
  10002899c  stp     x22, x21, [sp, #-0x30]!
  1000289a0  stp     x20, x19, [sp, #0x10]
  1000289a4  stp     x29, x30, [sp, #0x20]
  1000289a8  add     x29, sp, #0x20
  1000289ac  adrp    x8, #0x10041d000
  1000289b0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000289b4  adrp    x8, #0x100416000
  1000289b8  nop
  1000289bc  ldr     x1, [x8, #0xac0]
  1000289c0  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000289c4  mov     x29, x29
  1000289c8  bl      _objc_retainAutoreleasedReturnValue
  1000289cc  mov     x20, x0
  1000289d0  adrp    x8, #0x100417000
  1000289d4  nop
  1000289d8  ldr     x1, [x8, #0x2f8]
  1000289dc  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000289e0  mov     x29, x29
  1000289e4  bl      _objc_retainAutoreleasedReturnValue
  1000289e8  mov     x19, x0
  1000289ec  mov     x0, x20
  1000289f0  bl      _objc_release
  1000289f4  adrp    x8, #0x10041d000
  1000289f8  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000289fc  adrp    x8, #0x100417000
  100028a00  nop
  100028a04  ldr     x1, [x8, #0xd60]
  100028a08  mov     x4, #0
  100028a0c  mov     x5, #0
  100028a10  adrp    x2, #0x1003bb000
  100028a14  add     x2, x2, #0xbb0                           ; @"Power up event"
  100028a18  adrp    x3, #0x1003bb000
  100028a1c  add     x3, x3, #0xc10                           ; @"missed"
  100028a20  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"missed" label:0 value:0]
  100028a24  mov     x29, x29
  100028a28  bl      _objc_retainAutoreleasedReturnValue
  100028a2c  mov     x20, x0
  100028a30  adrp    x8, #0x100417000
  100028a34  nop
  100028a38  ldr     x1, [x8, #0x310]
  100028a3c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"missed" label:0 value:0] build]
  100028a40  mov     x29, x29
  100028a44  bl      _objc_retainAutoreleasedReturnValue
  100028a48  mov     x21, x0
  100028a4c  adrp    x8, #0x100417000
  100028a50  nop
  100028a54  ldr     x1, [x8, #0x318]
  100028a58  mov     x0, x19
  100028a5c  mov     x2, x21
  100028a60  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"missed" label:0 value:0] build]]
  100028a64  mov     x0, x21
  100028a68  bl      _objc_release
  100028a6c  mov     x0, x20
  100028a70  bl      _objc_release
  100028a74  mov     x0, x19
  100028a78  ldp     x29, x30, [sp, #0x20]
  100028a7c  ldp     x20, x19, [sp, #0x10]
  100028a80  ldp     x22, x21, [sp], #0x30
  100028a84  b       _objc_release
  100028a88  mov     x21, x0
  100028a8c  mov     x0, x20
  100028a90  b       loc_100028ac0
  100028a94  mov     x21, x0
  100028a98  b       loc_100028abc
  100028a9c  mov     x21, x0
  100028aa0  b       loc_100028ab4
  100028aa4  mov     x1, x21
  100028aa8  mov     x21, x0
  100028aac  mov     x0, x1
  100028ab0  bl      _objc_release
loc_100028ab4:
  100028ab4  mov     x0, x20
  100028ab8  bl      _objc_release
loc_100028abc:
  100028abc  mov     x0, x19
loc_100028ac0:
  100028ac0  bl      _objc_release
  100028ac4  mov     x0, x21
  100028ac8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) numberOfEnemyKills:ByPowerUp:]
; address 0x100028acc  size 436  kind objc
; ======================================================================
  100028acc  stp     x24, x23, [sp, #-0x40]!
  100028ad0  stp     x22, x21, [sp, #0x10]
  100028ad4  stp     x20, x19, [sp, #0x20]
  100028ad8  stp     x29, x30, [sp, #0x30]
  100028adc  add     x29, sp, #0x30
  100028ae0  sub     sp, sp, #0x10
  100028ae4  mov     x21, x2
  100028ae8  mov     x0, x3
  100028aec  bl      _objc_retain
  100028af0  mov     x19, x0
  100028af4  adrp    x8, #0x10041d000
  100028af8  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028afc  adrp    x8, #0x100416000
  100028b00  nop
  100028b04  ldr     x1, [x8, #0xac0]
  100028b08  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100028b0c  mov     x29, x29
  100028b10  bl      _objc_retainAutoreleasedReturnValue
  100028b14  mov     x22, x0
  100028b18  adrp    x8, #0x100417000
  100028b1c  nop
  100028b20  ldr     x1, [x8, #0x2f8]
  100028b24  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100028b28  mov     x29, x29
  100028b2c  bl      _objc_retainAutoreleasedReturnValue
  100028b30  mov     x20, x0
  100028b34  mov     x0, x22
  100028b38  bl      _objc_release
  100028b3c  adrp    x8, #0x10041d000
  100028b40  ldr     x22, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100028b44  nop
  100028b48  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100028b4c  adrp    x8, #0x100417000
  100028b50  nop
  100028b54  ldr     x1, [x8, #0xe8]
  100028b58  mov     x2, x21
  100028b5c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:arg1]
  100028b60  mov     x29, x29
  100028b64  bl      _objc_retainAutoreleasedReturnValue
  100028b68  mov     x21, x0
  100028b6c  adrp    x8, #0x100417000
  100028b70  nop
  100028b74  ldr     x1, [x8, #0xd60]
  100028b78  adrp    x2, #0x1003bb000
  100028b7c  add     x2, x2, #0xbb0                           ; @"Power up event"
  100028b80  adrp    x3, #0x1003bb000
  100028b84  add     x3, x3, #0xc30                           ; @"kill"
  100028b88  mov     x0, x22
  100028b8c  mov     x4, x19
  100028b90  mov     x5, x21
  100028b94  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"kill" label:arg2 value:[NSNumber numberWithInteger:arg1]]
  100028b98  mov     x29, x29
  100028b9c  bl      _objc_retainAutoreleasedReturnValue
  100028ba0  mov     x22, x0
  100028ba4  adrp    x8, #0x100417000
  100028ba8  nop
  100028bac  ldr     x1, [x8, #0x310]
  100028bb0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"kill" label:arg2 value:[NSNumber numberWithInteger:arg1]] build]
  100028bb4  mov     x29, x29
  100028bb8  bl      _objc_retainAutoreleasedReturnValue
  100028bbc  mov     x23, x0
  100028bc0  adrp    x8, #0x100417000
  100028bc4  nop
  100028bc8  ldr     x1, [x8, #0x318]
  100028bcc  mov     x0, x20
  100028bd0  mov     x2, x23
  100028bd4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Power up event" action:@"kill" label:arg2 value:[NSNumber numberWithInteger:arg1]] build]]
  100028bd8  mov     x0, x23
  100028bdc  bl      _objc_release
  100028be0  mov     x0, x22
  100028be4  bl      _objc_release
  100028be8  mov     x0, x21
  100028bec  bl      _objc_release
  100028bf0  mov     x0, x20
  100028bf4  bl      _objc_release
  100028bf8  mov     x0, x19
  100028bfc  sub     sp, x29, #0x30
  100028c00  ldp     x29, x30, [sp, #0x30]
  100028c04  ldp     x20, x19, [sp, #0x20]
  100028c08  ldp     x22, x21, [sp, #0x10]
  100028c0c  ldp     x24, x23, [sp], #0x40
  100028c10  b       _objc_release
  100028c14  mov     x22, x0
  100028c18  b       loc_100028c70
  100028c1c  mov     x1, x22
  100028c20  mov     x22, x0
  100028c24  mov     x0, x1
  100028c28  b       loc_100028c6c
  100028c2c  mov     x22, x0
  100028c30  b       loc_100028c68
  100028c34  mov     x22, x0
  100028c38  b       loc_100028c60
  100028c3c  str     x22, [sp, #8]
  100028c40  mov     x22, x0
  100028c44  b       loc_100028c58
  100028c48  str     x22, [sp, #8]
  100028c4c  mov     x22, x0
  100028c50  mov     x0, x23
  100028c54  bl      _objc_release
loc_100028c58:
  100028c58  ldr     x0, [sp, #8]
  100028c5c  bl      _objc_release
loc_100028c60:
  100028c60  mov     x0, x21
  100028c64  bl      _objc_release
loc_100028c68:
  100028c68  mov     x0, x20
loc_100028c6c:
  100028c6c  bl      _objc_release
loc_100028c70:
  100028c70  mov     x0, x19
  100028c74  bl      _objc_release
  100028c78  mov     x0, x22
  100028c7c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) reviveUsedWithCost:]
; address 0x100028c80  size 380  kind objc
; ======================================================================
  100028c80  stp     x22, x21, [sp, #-0x30]!
  100028c84  stp     x20, x19, [sp, #0x10]
  100028c88  stp     x29, x30, [sp, #0x20]
  100028c8c  add     x29, sp, #0x20
  100028c90  mov     x20, x2
  100028c94  adrp    x8, #0x10041d000
  100028c98  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028c9c  adrp    x8, #0x100416000
  100028ca0  nop
  100028ca4  ldr     x1, [x8, #0xac0]
  100028ca8  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100028cac  mov     x29, x29
  100028cb0  bl      _objc_retainAutoreleasedReturnValue
  100028cb4  mov     x21, x0
  100028cb8  adrp    x8, #0x100417000
  100028cbc  nop
  100028cc0  ldr     x1, [x8, #0x2f8]
  100028cc4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100028cc8  mov     x29, x29
  100028ccc  bl      _objc_retainAutoreleasedReturnValue
  100028cd0  mov     x19, x0
  100028cd4  mov     x0, x21
  100028cd8  bl      _objc_release
  100028cdc  adrp    x8, #0x10041d000
  100028ce0  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100028ce4  nop
  100028ce8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100028cec  adrp    x8, #0x100417000
  100028cf0  nop
  100028cf4  ldr     x1, [x8, #0xd80]
  100028cf8  mov     x2, x20
  100028cfc  bl      _objc_msgSend                            ; [NSNumber numberWithUnsignedInteger:arg1]
  100028d00  mov     x29, x29
  100028d04  bl      _objc_retainAutoreleasedReturnValue
  100028d08  mov     x20, x0
  100028d0c  adrp    x8, #0x100417000
  100028d10  nop
  100028d14  ldr     x1, [x8, #0xd60]
  100028d18  adrp    x2, #0x1003bb000
  100028d1c  add     x2, x2, #0xc50                           ; @"Revive event"
  100028d20  adrp    x3, #0x1003bb000
  100028d24  add     x3, x3, #0xc70                           ; @"item used"
  100028d28  adrp    x4, #0x1003ba000
  100028d2c  add     x4, x4, #0xf90                           ; @"revive"
  100028d30  mov     x0, x21
  100028d34  mov     x5, x20
  100028d38  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Revive event" action:@"item used" label:@"revive" value:[NSNumber numberWithUnsignedInteger:arg1]]
  100028d3c  mov     x29, x29
  100028d40  bl      _objc_retainAutoreleasedReturnValue
  100028d44  mov     x21, x0
  100028d48  adrp    x8, #0x100417000
  100028d4c  nop
  100028d50  ldr     x1, [x8, #0x310]
  100028d54  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Revive event" action:@"item used" label:@"revive" value:[NSNumber numberWithUnsignedInteger:arg1]] build]
  100028d58  mov     x29, x29
  100028d5c  bl      _objc_retainAutoreleasedReturnValue
  100028d60  mov     x22, x0
  100028d64  adrp    x8, #0x100417000
  100028d68  nop
  100028d6c  ldr     x1, [x8, #0x318]
  100028d70  mov     x0, x19
  100028d74  mov     x2, x22
  100028d78  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Revive event" action:@"item used" label:@"revive" value:[NSNumber numberWithUnsignedInteger:arg1]] build]]
  100028d7c  mov     x0, x22
  100028d80  bl      _objc_release
  100028d84  mov     x0, x21
  100028d88  bl      _objc_release
  100028d8c  mov     x0, x20
  100028d90  bl      _objc_release
  100028d94  mov     x0, x19
  100028d98  ldp     x29, x30, [sp, #0x20]
  100028d9c  ldp     x20, x19, [sp, #0x10]
  100028da0  ldp     x22, x21, [sp], #0x30
  100028da4  b       _objc_release
  100028da8  mov     x22, x0
  100028dac  mov     x0, x21
  100028db0  b       loc_100028df0
  100028db4  mov     x22, x0
  100028db8  b       loc_100028dec
  100028dbc  mov     x22, x0
  100028dc0  b       loc_100028de4
  100028dc4  mov     x22, x0
  100028dc8  b       loc_100028ddc
  100028dcc  mov     x1, x22
  100028dd0  mov     x22, x0
  100028dd4  mov     x0, x1
  100028dd8  bl      _objc_release
loc_100028ddc:
  100028ddc  mov     x0, x21
  100028de0  bl      _objc_release
loc_100028de4:
  100028de4  mov     x0, x20
  100028de8  bl      _objc_release
loc_100028dec:
  100028dec  mov     x0, x19
loc_100028df0:
  100028df0  bl      _objc_release
  100028df4  mov     x0, x22
  100028df8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) gameOverButtonPressed]
; address 0x100028dfc  size 308  kind objc
; ======================================================================
  100028dfc  stp     x22, x21, [sp, #-0x30]!
  100028e00  stp     x20, x19, [sp, #0x10]
  100028e04  stp     x29, x30, [sp, #0x20]
  100028e08  add     x29, sp, #0x20
  100028e0c  adrp    x8, #0x10041d000
  100028e10  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100028e14  adrp    x8, #0x100416000
  100028e18  nop
  100028e1c  ldr     x1, [x8, #0xac0]
  100028e20  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100028e24  mov     x29, x29
  100028e28  bl      _objc_retainAutoreleasedReturnValue
  100028e2c  mov     x20, x0
  100028e30  adrp    x8, #0x100417000
  100028e34  nop
  100028e38  ldr     x1, [x8, #0x2f8]
  100028e3c  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100028e40  mov     x29, x29
  100028e44  bl      _objc_retainAutoreleasedReturnValue
  100028e48  mov     x19, x0
  100028e4c  mov     x0, x20
  100028e50  bl      _objc_release
  100028e54  adrp    x8, #0x10041d000
  100028e58  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  100028e5c  adrp    x8, #0x100417000
  100028e60  nop
  100028e64  ldr     x1, [x8, #0xd60]
  100028e68  mov     x5, #0
  100028e6c  adrp    x2, #0x1003bb000
  100028e70  add     x2, x2, #0xc50                           ; @"Revive event"
  100028e74  adrp    x3, #0x1003bb000
  100028e78  add     x3, x3, #0xc90                           ; @"game over by button press"
  100028e7c  adrp    x4, #0x1003bb000
  100028e80  add     x4, x4, #0xcb0                           ; @"game over"
  100028e84  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Revive event" action:@"game over by button press" label:@"game over" value:0]
  100028e88  mov     x29, x29
  100028e8c  bl      _objc_retainAutoreleasedReturnValue
  100028e90  mov     x20, x0
  100028e94  adrp    x8, #0x100417000
  100028e98  nop
  100028e9c  ldr     x1, [x8, #0x310]
  100028ea0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Revive event" action:@"game over by button press" label:@"game over" value:0] build]
  100028ea4  mov     x29, x29
  100028ea8  bl      _objc_retainAutoreleasedReturnValue
  100028eac  mov     x21, x0
  100028eb0  adrp    x8, #0x100417000
  100028eb4  nop
  100028eb8  ldr     x1, [x8, #0x318]
  100028ebc  mov     x0, x19
  100028ec0  mov     x2, x21
  100028ec4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Revive event" action:@"game over by button press" label:@"game over" value:0] build]]
  100028ec8  mov     x0, x21
  100028ecc  bl      _objc_release
  100028ed0  mov     x0, x20
  100028ed4  bl      _objc_release
  100028ed8  mov     x0, x19
  100028edc  ldp     x29, x30, [sp, #0x20]
  100028ee0  ldp     x20, x19, [sp, #0x10]
  100028ee4  ldp     x22, x21, [sp], #0x30
  100028ee8  b       _objc_release
  100028eec  mov     x21, x0
  100028ef0  mov     x0, x20
  100028ef4  b       loc_100028f24
  100028ef8  mov     x21, x0
  100028efc  b       loc_100028f20
  100028f00  mov     x21, x0
  100028f04  b       loc_100028f18
  100028f08  mov     x1, x21
  100028f0c  mov     x21, x0
  100028f10  mov     x0, x1
  100028f14  bl      _objc_release
loc_100028f18:
  100028f18  mov     x0, x20
  100028f1c  bl      _objc_release
loc_100028f20:
  100028f20  mov     x0, x19
loc_100028f24:
  100028f24  bl      _objc_release
  100028f28  mov     x0, x21
  100028f2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) recordEndOfGameData]
; address 0x100028f30  size 1808  kind objc
; ======================================================================
  100028f30  stp     d9, d8, [sp, #-0x70]!
  100028f34  stp     x28, x27, [sp, #0x10]
  100028f38  stp     x26, x25, [sp, #0x20]
  100028f3c  stp     x24, x23, [sp, #0x30]
  100028f40  stp     x22, x21, [sp, #0x40]
  100028f44  stp     x20, x19, [sp, #0x50]
  100028f48  stp     x29, x30, [sp, #0x60]
  100028f4c  add     x29, sp, #0x60
  100028f50  sub     sp, sp, #0x20
  100028f54  adrp    x22, #0x10041d000
  100028f58  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  100028f5c  adrp    x8, #0x100417000
  100028f60  nop
  100028f64  ldr     x19, [x8, #0x228]
  100028f68  mov     x1, x19
  100028f6c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100028f70  mov     x29, x29
  100028f74  bl      _objc_retainAutoreleasedReturnValue
  100028f78  mov     x21, x0
  100028f7c  adrp    x8, #0x100417000
  100028f80  nop
  100028f84  ldr     x1, [x8, #0xda0]
  100028f88  bl      _objc_msgSend                            ; [[ADInGameStats singleton] gameScore]
  100028f8c  mov     x20, x0
  100028f90  mov     x0, x21
  100028f94  bl      _objc_release
  100028f98  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  100028f9c  mov     x1, x19
  100028fa0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100028fa4  mov     x29, x29
  100028fa8  bl      _objc_retainAutoreleasedReturnValue
  100028fac  mov     x21, x0
  100028fb0  adrp    x8, #0x100417000
  100028fb4  nop
  100028fb8  ldr     x1, [x8, #0xda8]
  100028fbc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] numberOfEnemyKills]
  100028fc0  mov     x27, x0
  100028fc4  mov     x0, x21
  100028fc8  bl      _objc_release
  100028fcc  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  100028fd0  mov     x1, x19
  100028fd4  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100028fd8  mov     x29, x29
  100028fdc  bl      _objc_retainAutoreleasedReturnValue
  100028fe0  mov     x21, x0
  100028fe4  adrp    x8, #0x100417000
  100028fe8  nop
  100028fec  ldr     x1, [x8, #0xdb0]
  100028ff0  bl      _objc_msgSend                            ; [[ADInGameStats singleton] totalCoins]
  100028ff4  mov     x24, x0
  100028ff8  mov     x0, x21
  100028ffc  bl      _objc_release
  100029000  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  100029004  mov     x1, x19
  100029008  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10002900c  mov     x29, x29
  100029010  bl      _objc_retainAutoreleasedReturnValue
  100029014  mov     x21, x0
  100029018  adrp    x8, #0x100417000
  10002901c  nop
  100029020  ldr     x1, [x8, #0xdb8]
  100029024  bl      _objc_msgSend                            ; [[ADInGameStats singleton] diamondLoot]
  100029028  mov     x23, x0
  10002902c  mov     x0, x21
  100029030  bl      _objc_release
  100029034  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  100029038  mov     x1, x19
  10002903c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100029040  mov     x29, x29
  100029044  bl      _objc_retainAutoreleasedReturnValue
  100029048  mov     x21, x0
  10002904c  adrp    x8, #0x100417000
  100029050  nop
  100029054  ldr     x1, [x8, #0xdc0]
  100029058  bl      _objc_msgSend                            ; [[ADInGameStats singleton] timeElapsed]
  10002905c  mov     v8.16b, v0.16b
  100029060  mov     x0, x21
  100029064  bl      _objc_release
  100029068  mov     w21, #1
  10002906c  fmov    d0, #1.00000000
  100029070  fcmp    d8, d0
  100029074  b.mi    loc_100029084                            ; if ([[ADInGameStats singleton] timeElapsed] < 1)
  100029078  frintx  d0, d8
  10002907c  frintp  d0, d8
  100029080  fcvtzs  x21, d0
loc_100029084:
  100029084  ldr     x0, [x22, #0xfc0]                        ; class ADInGameStats
  100029088  mov     x1, x19
  10002908c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100029090  mov     x29, x29
  100029094  bl      _objc_retainAutoreleasedReturnValue
  100029098  mov     x19, x0
  10002909c  adrp    x8, #0x100417000
  1000290a0  nop
  1000290a4  ldr     x1, [x8, #0xdc8]
  1000290a8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] currentAccuracy]
  1000290ac  mov     v8.16b, v0.16b
  1000290b0  stp     x21, x23, [sp]
  1000290b4  mov     x0, x19
  1000290b8  bl      _objc_release
  1000290bc  adrp    x8, #0x10041d000
  1000290c0  ldr     x0, [x8, #0xfe0]                         ; class GAI
  1000290c4  adrp    x8, #0x100416000
  1000290c8  nop
  1000290cc  ldr     x1, [x8, #0xac0]
  1000290d0  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000290d4  mov     x29, x29
  1000290d8  bl      _objc_retainAutoreleasedReturnValue
  1000290dc  mov     x21, x0
  1000290e0  adrp    x8, #0x100417000
  1000290e4  nop
  1000290e8  ldr     x1, [x8, #0x2f8]
  1000290ec  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000290f0  str     x24, [sp, #0x10]
  1000290f4  mov     x29, x29
  1000290f8  bl      _objc_retainAutoreleasedReturnValue
  1000290fc  str     x0, [sp, #0x18]
  100029100  mov     x0, x21
  100029104  bl      _objc_release
  100029108  adrp    x26, #0x10041d000
  10002910c  ldr     x22, [x26, #0xfe8]                       ; class GAIDictionaryBuilder
  100029110  adrp    x19, #0x10041d000
  100029114  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100029118  adrp    x8, #0x100417000
  10002911c  nop
  100029120  ldr     x21, [x8, #0xe8]
  100029124  mov     x1, x21
  100029128  mov     x2, x20
  10002912c  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADInGameStats singleton] gameScore]]
  100029130  mov     x29, x29
  100029134  bl      _objc_retainAutoreleasedReturnValue
  100029138  mov     x28, x0
  10002913c  adrp    x8, #0x100417000
  100029140  nop
  100029144  ldr     x20, [x8, #0xd60]
  100029148  adrp    x2, #0x1003bb000
  10002914c  add     x2, x2, #0xcd0                           ; @"Score event"
  100029150  adrp    x3, #0x1003bb000
  100029154  add     x3, x3, #0xcf0                           ; @"completed game session"
  100029158  adrp    x4, #0x1003bb000
  10002915c  add     x4, x4, #0xd10                           ; @"game score"
  100029160  mov     x0, x22
  100029164  mov     x1, x20
  100029168  mov     x5, x28
  10002916c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"game score" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] gameScore]]]
  100029170  mov     x29, x29
  100029174  bl      _objc_retainAutoreleasedReturnValue
  100029178  mov     x25, x0
  10002917c  adrp    x8, #0x100417000
  100029180  nop
  100029184  ldr     x22, [x8, #0x310]
  100029188  mov     x1, x22
  10002918c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"game score" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] gameScore]]] build]
  100029190  mov     x29, x29
  100029194  bl      _objc_retainAutoreleasedReturnValue
  100029198  mov     x24, x0
  10002919c  adrp    x8, #0x100417000
  1000291a0  nop
  1000291a4  ldr     x23, [x8, #0x318]
  1000291a8  ldr     x0, [sp, #0x18]
  1000291ac  mov     x1, x23
  1000291b0  mov     x2, x24
  1000291b4  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"game score" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] gameScore]]] build]]
  1000291b8  mov     x0, x24
  1000291bc  bl      _objc_release
  1000291c0  mov     x0, x25
  1000291c4  bl      _objc_release
  1000291c8  mov     x0, x28
  1000291cc  bl      _objc_release
  1000291d0  mov     x28, x26
  1000291d4  ldr     x25, [x28, #0xfe8]                       ; class GAIDictionaryBuilder
  1000291d8  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000291dc  mov     x1, x21
  1000291e0  mov     x2, x27
  1000291e4  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADInGameStats singleton] numberOfEnemyKills]]
  1000291e8  mov     x29, x29
  1000291ec  bl      _objc_retainAutoreleasedReturnValue
  1000291f0  mov     x27, x0
  1000291f4  adrp    x2, #0x1003bb000
  1000291f8  add     x2, x2, #0xcd0                           ; @"Score event"
  1000291fc  adrp    x3, #0x1003bb000
  100029200  add     x3, x3, #0xcf0                           ; @"completed game session"
  100029204  adrp    x4, #0x1003bb000
  100029208  add     x4, x4, #0xd30                           ; @"total kills"
  10002920c  mov     x0, x25
  100029210  mov     x1, x20
  100029214  mov     x5, x27
  100029218  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total kills" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] numberOfEnemyKills]]]
  10002921c  mov     x29, x29
  100029220  bl      _objc_retainAutoreleasedReturnValue
  100029224  mov     x25, x0
  100029228  mov     x1, x22
  10002922c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total kills" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] numberOfEnemyKills]]] build]
  100029230  mov     x29, x29
  100029234  bl      _objc_retainAutoreleasedReturnValue
  100029238  mov     x24, x0
  10002923c  ldr     x0, [sp, #0x18]
  100029240  mov     x1, x23
  100029244  mov     x2, x24
  100029248  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total kills" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] numberOfEnemyKills]]] build]]
  10002924c  mov     x0, x24
  100029250  bl      _objc_release
  100029254  mov     x0, x25
  100029258  bl      _objc_release
  10002925c  mov     x0, x27
  100029260  bl      _objc_release
  100029264  ldr     x25, [x28, #0xfe8]                       ; class GAIDictionaryBuilder
  100029268  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  10002926c  mov     x1, x21
  100029270  ldr     x2, [sp, #0x10]
  100029274  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADInGameStats singleton] totalCoins]]
  100029278  mov     x29, x29
  10002927c  bl      _objc_retainAutoreleasedReturnValue
  100029280  mov     x26, x0
  100029284  adrp    x2, #0x1003bb000
  100029288  add     x2, x2, #0xcd0                           ; @"Score event"
  10002928c  adrp    x3, #0x1003bb000
  100029290  add     x3, x3, #0xcf0                           ; @"completed game session"
  100029294  adrp    x4, #0x1003bb000
  100029298  add     x4, x4, #0xd50                           ; @"total coins"
  10002929c  mov     x0, x25
  1000292a0  mov     x1, x20
  1000292a4  mov     x5, x26
  1000292a8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total coins" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] totalCoins]]]
  1000292ac  mov     x29, x29
  1000292b0  bl      _objc_retainAutoreleasedReturnValue
  1000292b4  mov     x25, x0
  1000292b8  mov     x1, x22
  1000292bc  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total coins" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] totalCoins]]] build]
  1000292c0  mov     x29, x29
  1000292c4  bl      _objc_retainAutoreleasedReturnValue
  1000292c8  mov     x24, x0
  1000292cc  ldr     x0, [sp, #0x18]
  1000292d0  mov     x1, x23
  1000292d4  mov     x2, x24
  1000292d8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total coins" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] totalCoins]]] build]]
  1000292dc  mov     x0, x24
  1000292e0  bl      _objc_release
  1000292e4  mov     x0, x25
  1000292e8  bl      _objc_release
  1000292ec  mov     x0, x26
  1000292f0  bl      _objc_release
  1000292f4  ldr     x26, [x28, #0xfe8]                       ; class GAIDictionaryBuilder
  1000292f8  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  1000292fc  mov     x1, x21
  100029300  ldr     x2, [sp, #8]
  100029304  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:[[ADInGameStats singleton] diamondLoot]]
  100029308  mov     x29, x29
  10002930c  bl      _objc_retainAutoreleasedReturnValue
  100029310  mov     x25, x0
  100029314  adrp    x2, #0x1003bb000
  100029318  add     x2, x2, #0xcd0                           ; @"Score event"
  10002931c  adrp    x3, #0x1003bb000
  100029320  add     x3, x3, #0xcf0                           ; @"completed game session"
  100029324  adrp    x4, #0x1003bb000
  100029328  add     x4, x4, #0xd70                           ; @"total diamonds"
  10002932c  mov     x0, x26
  100029330  mov     x1, x20
  100029334  mov     x5, x25
  100029338  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total diamonds" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] diamondLoot]]]
  10002933c  mov     x29, x29
  100029340  bl      _objc_retainAutoreleasedReturnValue
  100029344  mov     x26, x0
  100029348  mov     x1, x22
  10002934c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total diamonds" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] diamondLoot]]] build]
  100029350  mov     x29, x29
  100029354  bl      _objc_retainAutoreleasedReturnValue
  100029358  mov     x24, x0
  10002935c  ldr     x0, [sp, #0x18]
  100029360  mov     x1, x23
  100029364  mov     x2, x24
  100029368  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"total diamonds" value:[NSNumber numberWithInteger:[[ADInGameStats singleton] diamondLoot]]] build]]
  10002936c  mov     x0, x24
  100029370  bl      _objc_release
  100029374  mov     x0, x26
  100029378  bl      _objc_release
  10002937c  mov     x0, x25
  100029380  bl      _objc_release
  100029384  ldr     x25, [x28, #0xfe8]                       ; class GAIDictionaryBuilder
  100029388  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  10002938c  mov     x1, x21
  100029390  ldr     x2, [sp]
  100029394  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  100029398  mov     x29, x29
  10002939c  bl      _objc_retainAutoreleasedReturnValue
  1000293a0  mov     x24, x0
  1000293a4  adrp    x2, #0x1003bb000
  1000293a8  add     x2, x2, #0xcd0                           ; @"Score event"
  1000293ac  adrp    x3, #0x1003bb000
  1000293b0  add     x3, x3, #0xcf0                           ; @"completed game session"
  1000293b4  adrp    x4, #0x1003bb000
  1000293b8  add     x4, x4, #0xd90                           ; @"time elapsed in game"
  1000293bc  mov     x0, x25
  1000293c0  mov     x1, x20
  1000293c4  mov     x5, x24
  1000293c8  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"time elapsed in game" value:[NSNumber numberWithInteger:x2]]
  1000293cc  mov     x29, x29
  1000293d0  bl      _objc_retainAutoreleasedReturnValue
  1000293d4  mov     x25, x0
  1000293d8  mov     x1, x22
  1000293dc  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"time elapsed in game" value:[NSNumber numberWithInteger:x2]] build]
  1000293e0  mov     x29, x29
  1000293e4  bl      _objc_retainAutoreleasedReturnValue
  1000293e8  mov     x26, x0
  1000293ec  ldr     x0, [sp, #0x18]
  1000293f0  mov     x1, x23
  1000293f4  mov     x2, x26
  1000293f8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"time elapsed in game" value:[NSNumber numberWithInteger:x2]] build]]
  1000293fc  adrp    x8, #0x100181000
  100029400  ldr     s0, [x8, #0xa10]                         ; s0 = 100.0
  100029404  fmul    s8, s8, s0
  100029408  mov     x0, x26
  10002940c  bl      _objc_release
  100029410  mov     x0, x25
  100029414  bl      _objc_release
  100029418  mov     x0, x24
  10002941c  bl      _objc_release
  100029420  mov     w2, #1
  100029424  fmov    s0, #1.00000000
  100029428  fcmp    s8, s0
  10002942c  b.mi    loc_10002943c                            ; if (([[ADInGameStats singleton] currentAccuracy] * 100) < 1)
  100029430  frintx  s0, s8
  100029434  frinta  s0, s8
  100029438  fcvtzs  x2, s0
loc_10002943c:
  10002943c  ldr     x24, [x28, #0xfe8]                       ; class GAIDictionaryBuilder
  100029440  ldr     x0, [x19, #0xf68]                        ; class NSNumber
  100029444  mov     x1, x21
  100029448  bl      _objc_msgSend                            ; [NSNumber numberWithInteger:x2]
  10002944c  mov     x29, x29
  100029450  bl      _objc_retainAutoreleasedReturnValue
  100029454  mov     x21, x0
  100029458  adrp    x2, #0x1003bb000
  10002945c  add     x2, x2, #0xcd0                           ; @"Score event"
  100029460  adrp    x3, #0x1003bb000
  100029464  add     x3, x3, #0xcf0                           ; @"completed game session"
  100029468  adrp    x4, #0x1003bb000
  10002946c  add     x4, x4, #0xdb0                           ; @"accuracy"
  100029470  mov     x0, x24
  100029474  mov     x1, x20
  100029478  mov     x5, x21
  10002947c  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"accuracy" value:[NSNumber numberWithInteger:x2]]
  100029480  mov     x29, x29
  100029484  bl      _objc_retainAutoreleasedReturnValue
  100029488  mov     x24, x0
  10002948c  mov     x1, x22
  100029490  ldr     x19, [sp, #0x18]
  100029494  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"accuracy" value:[NSNumber numberWithInteger:x2]] build]
  100029498  mov     x29, x29
  10002949c  bl      _objc_retainAutoreleasedReturnValue
  1000294a0  mov     x22, x0
  1000294a4  mov     x0, x19
  1000294a8  mov     x1, x23
  1000294ac  mov     x2, x22
  1000294b0  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Score event" action:@"completed game session" label:@"accuracy" value:[NSNumber numberWithInteger:x2]] build]]
  1000294b4  mov     x0, x22
  1000294b8  bl      _objc_release
  1000294bc  mov     x0, x24
  1000294c0  bl      _objc_release
  1000294c4  mov     x0, x21
  1000294c8  bl      _objc_release
  1000294cc  mov     x0, x19
  1000294d0  sub     sp, x29, #0x60
  1000294d4  ldp     x29, x30, [sp, #0x60]
  1000294d8  ldp     x20, x19, [sp, #0x50]
  1000294dc  ldp     x22, x21, [sp, #0x40]
  1000294e0  ldp     x24, x23, [sp, #0x30]
  1000294e4  ldp     x26, x25, [sp, #0x20]
  1000294e8  ldp     x28, x27, [sp, #0x10]
  1000294ec  ldp     d9, d8, [sp], #0x70
  1000294f0  b       _objc_release
  1000294f4  mov     x20, x0
  1000294f8  b       loc_100029630
  1000294fc  b       loc_10002951c
  100029500  b       loc_10002951c
  100029504  b       loc_10002951c
  100029508  b       loc_10002951c
  10002950c  b       loc_10002951c
  100029510  mov     x20, x0
  100029514  mov     x0, x19
  100029518  b       loc_100029634
loc_10002951c:
  10002951c  mov     x20, x0
  100029520  mov     x0, x21
  100029524  b       loc_100029634
  100029528  mov     x20, x0
  10002952c  b       loc_10002954c
  100029530  mov     x20, x0
  100029534  b       loc_100029544
  100029538  mov     x20, x0
  10002953c  mov     x0, x24
  100029540  bl      _objc_release
loc_100029544:
  100029544  mov     x0, x25
  100029548  bl      _objc_release
loc_10002954c:
  10002954c  mov     x0, x28
  100029550  b       loc_10002962c
  100029554  mov     x20, x0
  100029558  b       loc_100029578
  10002955c  mov     x20, x0
  100029560  b       loc_100029570
  100029564  mov     x20, x0
  100029568  mov     x0, x24
  10002956c  bl      _objc_release
loc_100029570:
  100029570  mov     x0, x25
  100029574  bl      _objc_release
loc_100029578:
  100029578  mov     x0, x27
  10002957c  b       loc_10002962c
  100029580  mov     x20, x0
  100029584  b       loc_1000295a4
  100029588  mov     x20, x0
  10002958c  b       loc_10002959c
  100029590  mov     x20, x0
  100029594  mov     x0, x24
  100029598  bl      _objc_release
loc_10002959c:
  10002959c  mov     x0, x25
  1000295a0  bl      _objc_release
loc_1000295a4:
  1000295a4  mov     x0, x26
  1000295a8  b       loc_10002962c
  1000295ac  mov     x20, x0
  1000295b0  b       loc_1000295d0
  1000295b4  mov     x20, x0
  1000295b8  b       loc_1000295c8
  1000295bc  mov     x20, x0
  1000295c0  mov     x0, x24
  1000295c4  bl      _objc_release
loc_1000295c8:
  1000295c8  mov     x0, x26
  1000295cc  bl      _objc_release
loc_1000295d0:
  1000295d0  mov     x0, x25
  1000295d4  b       loc_10002962c
  1000295d8  mov     x20, x0
  1000295dc  b       loc_1000295fc
  1000295e0  mov     x20, x0
  1000295e4  b       loc_1000295f4
  1000295e8  mov     x20, x0
  1000295ec  mov     x0, x26
  1000295f0  bl      _objc_release
loc_1000295f4:
  1000295f4  mov     x0, x25
  1000295f8  bl      _objc_release
loc_1000295fc:
  1000295fc  mov     x0, x24
  100029600  b       loc_10002962c
  100029604  mov     x20, x0
  100029608  b       loc_100029628
  10002960c  mov     x20, x0
  100029610  b       loc_100029620
  100029614  mov     x20, x0
  100029618  mov     x0, x22
  10002961c  bl      _objc_release
loc_100029620:
  100029620  mov     x0, x24
  100029624  bl      _objc_release
loc_100029628:
  100029628  mov     x0, x21
loc_10002962c:
  10002962c  bl      _objc_release
loc_100029630:
  100029630  ldr     x0, [sp, #0x18]
loc_100029634:
  100029634  bl      _objc_release
  100029638  mov     x0, x20
  10002963c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) challengeStarted]
; address 0x100029640  size 304  kind objc
; ======================================================================
  100029640  stp     x22, x21, [sp, #-0x30]!
  100029644  stp     x20, x19, [sp, #0x10]
  100029648  stp     x29, x30, [sp, #0x20]
  10002964c  add     x29, sp, #0x20
  100029650  adrp    x8, #0x10041d000
  100029654  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100029658  adrp    x8, #0x100416000
  10002965c  nop
  100029660  ldr     x1, [x8, #0xac0]
  100029664  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100029668  mov     x29, x29
  10002966c  bl      _objc_retainAutoreleasedReturnValue
  100029670  mov     x20, x0
  100029674  adrp    x8, #0x100417000
  100029678  nop
  10002967c  ldr     x1, [x8, #0x2f8]
  100029680  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100029684  mov     x29, x29
  100029688  bl      _objc_retainAutoreleasedReturnValue
  10002968c  mov     x19, x0
  100029690  mov     x0, x20
  100029694  bl      _objc_release
  100029698  adrp    x8, #0x10041d000
  10002969c  ldr     x0, [x8, #0xfe8]                         ; class GAIDictionaryBuilder
  1000296a0  adrp    x8, #0x100417000
  1000296a4  nop
  1000296a8  ldr     x1, [x8, #0xd60]
  1000296ac  mov     x4, #0
  1000296b0  mov     x5, #0
  1000296b4  adrp    x2, #0x1003bb000
  1000296b8  add     x2, x2, #0xdd0                           ; @"Challenge event"
  1000296bc  adrp    x3, #0x1003bb000
  1000296c0  add     x3, x3, #0xdf0                           ; @"challenge started"
  1000296c4  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge started" label:0 value:0]
  1000296c8  mov     x29, x29
  1000296cc  bl      _objc_retainAutoreleasedReturnValue
  1000296d0  mov     x20, x0
  1000296d4  adrp    x8, #0x100417000
  1000296d8  nop
  1000296dc  ldr     x1, [x8, #0x310]
  1000296e0  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge started" label:0 value:0] build]
  1000296e4  mov     x29, x29
  1000296e8  bl      _objc_retainAutoreleasedReturnValue
  1000296ec  mov     x21, x0
  1000296f0  adrp    x8, #0x100417000
  1000296f4  nop
  1000296f8  ldr     x1, [x8, #0x318]
  1000296fc  mov     x0, x19
  100029700  mov     x2, x21
  100029704  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge started" label:0 value:0] build]]
  100029708  mov     x0, x21
  10002970c  bl      _objc_release
  100029710  mov     x0, x20
  100029714  bl      _objc_release
  100029718  mov     x0, x19
  10002971c  ldp     x29, x30, [sp, #0x20]
  100029720  ldp     x20, x19, [sp, #0x10]
  100029724  ldp     x22, x21, [sp], #0x30
  100029728  b       _objc_release
  10002972c  mov     x21, x0
  100029730  mov     x0, x20
  100029734  b       loc_100029764
  100029738  mov     x21, x0
  10002973c  b       loc_100029760
  100029740  mov     x21, x0
  100029744  b       loc_100029758
  100029748  mov     x1, x21
  10002974c  mov     x21, x0
  100029750  mov     x0, x1
  100029754  bl      _objc_release
loc_100029758:
  100029758  mov     x0, x20
  10002975c  bl      _objc_release
loc_100029760:
  100029760  mov     x0, x19
loc_100029764:
  100029764  bl      _objc_release
  100029768  mov     x0, x21
  10002976c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) challengeCompleted:]
; address 0x100029770  size 852  kind objc
; ======================================================================
  100029770  stp     x24, x23, [sp, #-0x40]!
  100029774  stp     x22, x21, [sp, #0x10]
  100029778  stp     x20, x19, [sp, #0x20]
  10002977c  stp     x29, x30, [sp, #0x30]
  100029780  add     x29, sp, #0x30
  100029784  sub     sp, sp, #0x10
  100029788  mov     x19, x2
  10002978c  adrp    x8, #0x10041d000
  100029790  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100029794  adrp    x8, #0x100416000
  100029798  nop
  10002979c  ldr     x1, [x8, #0xac0]
  1000297a0  bl      _objc_msgSend                            ; [GAI sharedInstance]
  1000297a4  mov     x29, x29
  1000297a8  bl      _objc_retainAutoreleasedReturnValue
  1000297ac  mov     x20, x0
  1000297b0  adrp    x8, #0x100417000
  1000297b4  add     x8, x8, #0x2f8                           ; &@selector(defaultTracker)
  1000297b8  ldr     x1, [x8]
  1000297bc  cbz     w19, loc_1000298d4                       ; if (arg1 == 0)
  1000297c0  mov     x0, x20
  1000297c4  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000297c8  mov     x29, x29
  1000297cc  bl      _objc_retainAutoreleasedReturnValue
  1000297d0  mov     x19, x0
  1000297d4  mov     x0, x20
  1000297d8  bl      _objc_release
  1000297dc  adrp    x8, #0x10041d000
  1000297e0  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  1000297e4  nop
  1000297e8  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  1000297ec  adrp    x8, #0x100417000
  1000297f0  nop
  1000297f4  ldr     x1, [x8, #0xb8]
  1000297f8  mov     w2, #1
  1000297fc  bl      _objc_msgSend                            ; [NSNumber numberWithBool:1]
  100029800  mov     x29, x29
  100029804  bl      _objc_retainAutoreleasedReturnValue
  100029808  mov     x20, x0
  10002980c  adrp    x8, #0x100417000
  100029810  nop
  100029814  ldr     x1, [x8, #0xd60]
  100029818  mov     x4, #0
  10002981c  adrp    x2, #0x1003bb000
  100029820  add     x2, x2, #0xdd0                           ; @"Challenge event"
  100029824  adrp    x3, #0x1003bb000
  100029828  add     x3, x3, #0xe10                           ; @"challenge completed"
  10002982c  mov     x0, x21
  100029830  mov     x5, x20
  100029834  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:1]]
  100029838  mov     x29, x29
  10002983c  bl      _objc_retainAutoreleasedReturnValue
  100029840  mov     x21, x0
  100029844  adrp    x8, #0x10041e000
  100029848  ldr     x0, [x8, #0xd0]                          ; class GAIFields
  10002984c  adrp    x8, #0x100417000
  100029850  nop
  100029854  ldr     x1, [x8, #0xd68]
  100029858  mov     w2, #4
  10002985c  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:4]
  100029860  mov     x29, x29
  100029864  bl      _objc_retainAutoreleasedReturnValue
  100029868  mov     x22, x0
  10002986c  adrp    x8, #0x100417000
  100029870  nop
  100029874  ldr     x1, [x8, #0xd70]
  100029878  adrp    x2, #0x1003bb000
  10002987c  add     x2, x2, #0x990                           ; @"1"
  100029880  mov     x0, x21
  100029884  mov     x3, x22
  100029888  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:1]] set:@"1" forKey:[GAIFields customMetricForIndex:4]]
  10002988c  mov     x29, x29
  100029890  bl      _objc_retainAutoreleasedReturnValue
  100029894  mov     x23, x0
  100029898  adrp    x8, #0x100417000
  10002989c  nop
  1000298a0  ldr     x1, [x8, #0x310]
  1000298a4  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:1]] set:@"1" forKey:[GAIFields customMetricForIndex:4]] build]
  1000298a8  mov     x29, x29
  1000298ac  bl      _objc_retainAutoreleasedReturnValue
  1000298b0  mov     x24, x0
  1000298b4  adrp    x8, #0x100417000
  1000298b8  nop
  1000298bc  ldr     x1, [x8, #0x318]
  1000298c0  mov     x0, x19
  1000298c4  mov     x2, x24
  1000298c8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:1]] set:@"1" forKey:[GAIFields customMetricForIndex:4]] build]]
  1000298cc  b       loc_1000299e0
  1000298d0  b       loc_100029a84
loc_1000298d4:
  1000298d4  mov     x0, x20
  1000298d8  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  1000298dc  mov     x29, x29
  1000298e0  bl      _objc_retainAutoreleasedReturnValue
  1000298e4  mov     x19, x0
  1000298e8  mov     x0, x20
  1000298ec  bl      _objc_release
  1000298f0  adrp    x8, #0x10041d000
  1000298f4  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  1000298f8  nop
  1000298fc  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100029900  adrp    x8, #0x100417000
  100029904  nop
  100029908  ldr     x1, [x8, #0xb8]
  10002990c  mov     w2, #0
  100029910  bl      _objc_msgSend                            ; [NSNumber numberWithBool:0]
  100029914  mov     x29, x29
  100029918  bl      _objc_retainAutoreleasedReturnValue
  10002991c  mov     x20, x0
  100029920  adrp    x8, #0x100417000
  100029924  nop
  100029928  ldr     x1, [x8, #0xd60]
  10002992c  mov     x4, #0
  100029930  adrp    x2, #0x1003bb000
  100029934  add     x2, x2, #0xdd0                           ; @"Challenge event"
  100029938  adrp    x3, #0x1003bb000
  10002993c  add     x3, x3, #0xe10                           ; @"challenge completed"
  100029940  mov     x0, x21
  100029944  mov     x5, x20
  100029948  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:0]]
  10002994c  mov     x29, x29
  100029950  bl      _objc_retainAutoreleasedReturnValue
  100029954  mov     x21, x0
  100029958  adrp    x8, #0x10041e000
  10002995c  ldr     x0, [x8, #0xd0]                          ; class GAIFields
  100029960  adrp    x8, #0x100417000
  100029964  nop
  100029968  ldr     x1, [x8, #0xd68]
  10002996c  mov     w2, #4
  100029970  bl      _objc_msgSend                            ; [GAIFields customMetricForIndex:4]
  100029974  mov     x29, x29
  100029978  bl      _objc_retainAutoreleasedReturnValue
  10002997c  mov     x22, x0
  100029980  adrp    x8, #0x100417000
  100029984  nop
  100029988  ldr     x1, [x8, #0xd70]
  10002998c  adrp    x2, #0x1003bb000
  100029990  add     x2, x2, #0xe30                           ; @"0"
  100029994  mov     x0, x21
  100029998  mov     x3, x22
  10002999c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:0]] set:@"0" forKey:[GAIFields customMetricForIndex:4]]
  1000299a0  mov     x29, x29
  1000299a4  bl      _objc_retainAutoreleasedReturnValue
  1000299a8  mov     x23, x0
  1000299ac  adrp    x8, #0x100417000
  1000299b0  nop
  1000299b4  ldr     x1, [x8, #0x310]
  1000299b8  bl      _objc_msgSend                            ; [[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:0]] set:@"0" forKey:[GAIFields customMetricForIndex:4]] build]
  1000299bc  mov     x29, x29
  1000299c0  bl      _objc_retainAutoreleasedReturnValue
  1000299c4  mov     x24, x0
  1000299c8  adrp    x8, #0x100417000
  1000299cc  nop
  1000299d0  ldr     x1, [x8, #0x318]
  1000299d4  mov     x0, x19
  1000299d8  mov     x2, x24
  1000299dc  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"challenge completed" label:0 value:[NSNumber numberWithBool:0]] set:@"0" forKey:[GAIFields customMetricForIndex:4]] build]]
loc_1000299e0:
  1000299e0  mov     x0, x24
  1000299e4  bl      _objc_release
  1000299e8  mov     x0, x23
  1000299ec  bl      _objc_release
  1000299f0  mov     x0, x22
  1000299f4  bl      _objc_release
  1000299f8  mov     x0, x21
  1000299fc  bl      _objc_release
  100029a00  mov     x0, x20
  100029a04  bl      _objc_release
  100029a08  mov     x0, x19
  100029a0c  sub     sp, x29, #0x30
  100029a10  ldp     x29, x30, [sp, #0x30]
  100029a14  ldp     x20, x19, [sp, #0x20]
  100029a18  ldp     x22, x21, [sp, #0x10]
  100029a1c  ldp     x24, x23, [sp], #0x40
  100029a20  b       _objc_release
  100029a24  b       loc_100029a44
  100029a28  mov     x21, x0
  100029a2c  b       loc_100029ab4
  100029a30  mov     x21, x0
  100029a34  b       loc_100029aac
  100029a38  b       loc_100029a60
  100029a3c  b       loc_100029a6c
  100029a40  b       loc_100029a78
loc_100029a44:
  100029a44  mov     x21, x0
  100029a48  mov     x0, x20
  100029a4c  b       loc_100029ab8
  100029a50  mov     x21, x0
  100029a54  b       loc_100029ab4
  100029a58  mov     x21, x0
  100029a5c  b       loc_100029aac
loc_100029a60:
  100029a60  str     x21, [sp, #8]
  100029a64  mov     x21, x0
  100029a68  b       loc_100029aa4
loc_100029a6c:
  100029a6c  str     x21, [sp, #8]
  100029a70  mov     x21, x0
  100029a74  b       loc_100029a9c
loc_100029a78:
  100029a78  str     x21, [sp, #8]
  100029a7c  mov     x21, x0
  100029a80  b       loc_100029a94
loc_100029a84:
  100029a84  str     x21, [sp, #8]
  100029a88  mov     x21, x0
  100029a8c  mov     x0, x24
  100029a90  bl      _objc_release
loc_100029a94:
  100029a94  mov     x0, x23
  100029a98  bl      _objc_release
loc_100029a9c:
  100029a9c  mov     x0, x22
  100029aa0  bl      _objc_release
loc_100029aa4:
  100029aa4  ldr     x0, [sp, #8]
  100029aa8  bl      _objc_release
loc_100029aac:
  100029aac  mov     x0, x20
  100029ab0  bl      _objc_release
loc_100029ab4:
  100029ab4  mov     x0, x19
loc_100029ab8:
  100029ab8  bl      _objc_release
  100029abc  mov     x0, x21
  100029ac0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) accuracyObjectiveReached:]
; address 0x100029ac4  size 376  kind objc
; ======================================================================
  100029ac4  stp     x22, x21, [sp, #-0x30]!
  100029ac8  stp     x20, x19, [sp, #0x10]
  100029acc  stp     x29, x30, [sp, #0x20]
  100029ad0  add     x29, sp, #0x20
  100029ad4  mov     x20, x2
  100029ad8  adrp    x8, #0x10041d000
  100029adc  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100029ae0  adrp    x8, #0x100416000
  100029ae4  nop
  100029ae8  ldr     x1, [x8, #0xac0]
  100029aec  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100029af0  mov     x29, x29
  100029af4  bl      _objc_retainAutoreleasedReturnValue
  100029af8  mov     x21, x0
  100029afc  adrp    x8, #0x100417000
  100029b00  nop
  100029b04  ldr     x1, [x8, #0x2f8]
  100029b08  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100029b0c  mov     x29, x29
  100029b10  bl      _objc_retainAutoreleasedReturnValue
  100029b14  mov     x19, x0
  100029b18  mov     x0, x21
  100029b1c  bl      _objc_release
  100029b20  adrp    x8, #0x10041d000
  100029b24  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100029b28  nop
  100029b2c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100029b30  adrp    x8, #0x100417000
  100029b34  nop
  100029b38  ldr     x1, [x8, #0xb8]
  100029b3c  mov     x2, x20
  100029b40  bl      _objc_msgSend                            ; [NSNumber numberWithBool:arg1]
  100029b44  mov     x29, x29
  100029b48  bl      _objc_retainAutoreleasedReturnValue
  100029b4c  mov     x20, x0
  100029b50  adrp    x8, #0x100417000
  100029b54  nop
  100029b58  ldr     x1, [x8, #0xd60]
  100029b5c  mov     x4, #0
  100029b60  adrp    x2, #0x1003bb000
  100029b64  add     x2, x2, #0xdd0                           ; @"Challenge event"
  100029b68  adrp    x3, #0x1003bb000
  100029b6c  add     x3, x3, #0xe50                           ; @"accuracy objective reached"
  100029b70  mov     x0, x21
  100029b74  mov     x5, x20
  100029b78  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"accuracy objective reached" label:0 value:[NSNumber numberWithBool:arg1]]
  100029b7c  mov     x29, x29
  100029b80  bl      _objc_retainAutoreleasedReturnValue
  100029b84  mov     x21, x0
  100029b88  adrp    x8, #0x100417000
  100029b8c  nop
  100029b90  ldr     x1, [x8, #0x310]
  100029b94  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"accuracy objective reached" label:0 value:[NSNumber numberWithBool:arg1]] build]
  100029b98  mov     x29, x29
  100029b9c  bl      _objc_retainAutoreleasedReturnValue
  100029ba0  mov     x22, x0
  100029ba4  adrp    x8, #0x100417000
  100029ba8  nop
  100029bac  ldr     x1, [x8, #0x318]
  100029bb0  mov     x0, x19
  100029bb4  mov     x2, x22
  100029bb8  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"accuracy objective reached" label:0 value:[NSNumber numberWithBool:arg1]] build]]
  100029bbc  mov     x0, x22
  100029bc0  bl      _objc_release
  100029bc4  mov     x0, x21
  100029bc8  bl      _objc_release
  100029bcc  mov     x0, x20
  100029bd0  bl      _objc_release
  100029bd4  mov     x0, x19
  100029bd8  ldp     x29, x30, [sp, #0x20]
  100029bdc  ldp     x20, x19, [sp, #0x10]
  100029be0  ldp     x22, x21, [sp], #0x30
  100029be4  b       _objc_release
  100029be8  mov     x22, x0
  100029bec  mov     x0, x21
  100029bf0  b       loc_100029c30
  100029bf4  mov     x22, x0
  100029bf8  b       loc_100029c2c
  100029bfc  mov     x22, x0
  100029c00  b       loc_100029c24
  100029c04  mov     x22, x0
  100029c08  b       loc_100029c1c
  100029c0c  mov     x1, x22
  100029c10  mov     x22, x0
  100029c14  mov     x0, x1
  100029c18  bl      _objc_release
loc_100029c1c:
  100029c1c  mov     x0, x21
  100029c20  bl      _objc_release
loc_100029c24:
  100029c24  mov     x0, x20
  100029c28  bl      _objc_release
loc_100029c2c:
  100029c2c  mov     x0, x19
loc_100029c30:
  100029c30  bl      _objc_release
  100029c34  mov     x0, x22
  100029c38  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) timeObjectiveReached:]
; address 0x100029c3c  size 376  kind objc
; ======================================================================
  100029c3c  stp     x22, x21, [sp, #-0x30]!
  100029c40  stp     x20, x19, [sp, #0x10]
  100029c44  stp     x29, x30, [sp, #0x20]
  100029c48  add     x29, sp, #0x20
  100029c4c  mov     x20, x2
  100029c50  adrp    x8, #0x10041d000
  100029c54  ldr     x0, [x8, #0xfe0]                         ; class GAI
  100029c58  adrp    x8, #0x100416000
  100029c5c  nop
  100029c60  ldr     x1, [x8, #0xac0]
  100029c64  bl      _objc_msgSend                            ; [GAI sharedInstance]
  100029c68  mov     x29, x29
  100029c6c  bl      _objc_retainAutoreleasedReturnValue
  100029c70  mov     x21, x0
  100029c74  adrp    x8, #0x100417000
  100029c78  nop
  100029c7c  ldr     x1, [x8, #0x2f8]
  100029c80  bl      _objc_msgSend                            ; [[GAI sharedInstance] defaultTracker]
  100029c84  mov     x29, x29
  100029c88  bl      _objc_retainAutoreleasedReturnValue
  100029c8c  mov     x19, x0
  100029c90  mov     x0, x21
  100029c94  bl      _objc_release
  100029c98  adrp    x8, #0x10041d000
  100029c9c  ldr     x21, [x8, #0xfe8]                        ; class GAIDictionaryBuilder
  100029ca0  nop
  100029ca4  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  100029ca8  adrp    x8, #0x100417000
  100029cac  nop
  100029cb0  ldr     x1, [x8, #0xb8]
  100029cb4  mov     x2, x20
  100029cb8  bl      _objc_msgSend                            ; [NSNumber numberWithBool:arg1]
  100029cbc  mov     x29, x29
  100029cc0  bl      _objc_retainAutoreleasedReturnValue
  100029cc4  mov     x20, x0
  100029cc8  adrp    x8, #0x100417000
  100029ccc  nop
  100029cd0  ldr     x1, [x8, #0xd60]
  100029cd4  mov     x4, #0
  100029cd8  adrp    x2, #0x1003bb000
  100029cdc  add     x2, x2, #0xdd0                           ; @"Challenge event"
  100029ce0  adrp    x3, #0x1003bb000
  100029ce4  add     x3, x3, #0xe70                           ; @"time objective reached"
  100029ce8  mov     x0, x21
  100029cec  mov     x5, x20
  100029cf0  bl      _objc_msgSend                            ; [GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"time objective reached" label:0 value:[NSNumber numberWithBool:arg1]]
  100029cf4  mov     x29, x29
  100029cf8  bl      _objc_retainAutoreleasedReturnValue
  100029cfc  mov     x21, x0
  100029d00  adrp    x8, #0x100417000
  100029d04  nop
  100029d08  ldr     x1, [x8, #0x310]
  100029d0c  bl      _objc_msgSend                            ; [[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"time objective reached" label:0 value:[NSNumber numberWithBool:arg1]] build]
  100029d10  mov     x29, x29
  100029d14  bl      _objc_retainAutoreleasedReturnValue
  100029d18  mov     x22, x0
  100029d1c  adrp    x8, #0x100417000
  100029d20  nop
  100029d24  ldr     x1, [x8, #0x318]
  100029d28  mov     x0, x19
  100029d2c  mov     x2, x22
  100029d30  bl      _objc_msgSend                            ; [[[GAI sharedInstance] defaultTracker] send:[[GAIDictionaryBuilder createEventWithCategory:@"Challenge event" action:@"time objective reached" label:0 value:[NSNumber numberWithBool:arg1]] build]]
  100029d34  mov     x0, x22
  100029d38  bl      _objc_release
  100029d3c  mov     x0, x21
  100029d40  bl      _objc_release
  100029d44  mov     x0, x20
  100029d48  bl      _objc_release
  100029d4c  mov     x0, x19
  100029d50  ldp     x29, x30, [sp, #0x20]
  100029d54  ldp     x20, x19, [sp, #0x10]
  100029d58  ldp     x22, x21, [sp], #0x30
  100029d5c  b       _objc_release
  100029d60  mov     x22, x0
  100029d64  mov     x0, x21
  100029d68  b       loc_100029da8
  100029d6c  mov     x22, x0
  100029d70  b       loc_100029da4
  100029d74  mov     x22, x0
  100029d78  b       loc_100029d9c
  100029d7c  mov     x22, x0
  100029d80  b       loc_100029d94
  100029d84  mov     x1, x22
  100029d88  mov     x22, x0
  100029d8c  mov     x0, x1
  100029d90  bl      _objc_release
loc_100029d94:
  100029d94  mov     x0, x21
  100029d98  bl      _objc_release
loc_100029d9c:
  100029d9c  mov     x0, x20
  100029da0  bl      _objc_release
loc_100029da4:
  100029da4  mov     x0, x19
loc_100029da8:
  100029da8  bl      _objc_release
  100029dac  mov     x0, x22
  100029db0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTracker(ADGamePlayTracker) turnOffAllDimensions]
; address 0x100029db4  size 4  kind objc
; ======================================================================
  100029db4  ret
