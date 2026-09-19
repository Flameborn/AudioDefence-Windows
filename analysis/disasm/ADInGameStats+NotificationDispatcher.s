// unit ADInGameStats+NotificationDispatcher — 9 functions
//   0x10005614c     944  -[ADInGameStats(NotificationDispatcher) actUponNotification:]
//   0x1000564fc     200  -[ADInGameStats(NotificationDispatcher) handleUpdateTimePassed:]
//   0x1000565c4     200  -[ADInGameStats(NotificationDispatcher) handleBrickTimePassed:]
//   0x10005668c     200  -[ADInGameStats(NotificationDispatcher) handleChallengeTimePassed:]
//   0x100056754     240  -[ADInGameStats(NotificationDispatcher) handleMeleeWeapon:]
//   0x100056844     592  -[ADInGameStats(NotificationDispatcher) handleWeapon:]
//   0x100056a94     336  -[ADInGameStats(NotificationDispatcher) handleEnemyKilled:]
//   0x100056be4     236  -[ADInGameStats(NotificationDispatcher) handleEnemyPowerUpKilled:]
//   0x100056cd0     208  -[ADInGameStats(NotificationDispatcher) handleUpdateDiamonds:]

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) actUponNotification:]
; address 0x10005614c  size 944  kind objc
; ======================================================================
  10005614c  stp     x24, x23, [sp, #-0x40]!
  100056150  stp     x22, x21, [sp, #0x10]
  100056154  stp     x20, x19, [sp, #0x20]
  100056158  stp     x29, x30, [sp, #0x30]
  10005615c  add     x29, sp, #0x30
  100056160  sub     sp, sp, #0x10
  100056164  mov     x20, x0
  100056168  mov     x0, x2
  10005616c  bl      _objc_retain
  100056170  mov     x19, x0
  100056174  adrp    x8, #0x100418000
  100056178  nop
  10005617c  ldr     x1, [x8, #0xea8]
  100056180  bl      _objc_msgSend                            ; [arg1 userInfo]
  100056184  mov     x29, x29
  100056188  bl      _objc_retainAutoreleasedReturnValue
  10005618c  mov     x21, x0
  100056190  adrp    x8, #0x100417000
  100056194  nop
  100056198  ldr     x1, [x8, #0x40]
  10005619c  adrp    x2, #0x1003bd000
  1000561a0  add     x2, x2, #0xaf0                           ; @"PARAM_ARRAY"
  1000561a4  bl      _objc_msgSend                            ; [[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]
  1000561a8  mov     x29, x29
  1000561ac  bl      _objc_retainAutoreleasedReturnValue
  1000561b0  mov     x22, x0
  1000561b4  str     x22, [sp, #8]
  1000561b8  mov     x0, x21
  1000561bc  bl      _objc_release
  1000561c0  cbz     x22, loc_100056478                       ; if ([[arg1 userInfo] objectForKey:@"PARAM_ARRAY"] == 0)
  1000561c4  adrp    x8, #0x10041d000
  1000561c8  ldr     x0, [x8, #0xf20]                         ; class NSArray
  1000561cc  adrp    x8, #0x100417000
  1000561d0  nop
  1000561d4  ldr     x1, [x8, #0x2e0]
  1000561d8  bl      _objc_msgSend                            ; [NSArray class]
  1000561dc  mov     x2, x0
  1000561e0  adrp    x8, #0x100417000
  1000561e4  nop
  1000561e8  ldr     x1, [x8, #0x3b8]
  1000561ec  mov     x0, x22
  1000561f0  bl      _objc_msgSend                            ; [[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"] isKindOfClass:[NSArray class]]
  1000561f4  tbnz    w0, #0, loc_100056228                    ; if (([[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"] isKindOfClass:[NSArray class]] & 1))
  1000561f8  adrp    x8, #0x10041d000
  1000561fc  ldr     x0, [x8, #0xfc8]                         ; class NSException
  100056200  adrp    x8, #0x100417000
  100056204  nop
  100056208  ldr     x1, [x8, #0x260]
  10005620c  add     x8, sp, #8
  100056210  str     x8, [sp]
  100056214  adrp    x2, #0x1003bd000
  100056218  add     x2, x2, #0xb30                           ; @"Invalid value"
  10005621c  adrp    x3, #0x1003bd000
  100056220  add     x3, x3, #0xb50                           ; @"The paramaters' data (%p) were not passed as an array"
  100056224  bl      _objc_msgSend                            ; [NSException raise:@"Invalid value" format:@"The paramaters' data (%p) were not passed as an array", &sp[0x8]]
loc_100056228:
  100056228  adrp    x8, #0x100417000
  10005622c  nop
  100056230  ldr     x1, [x8, #0x450]
  100056234  mov     x0, x19
  100056238  bl      _objc_msgSend                            ; [arg1 name]
  10005623c  mov     x29, x29
  100056240  bl      _objc_retainAutoreleasedReturnValue
  100056244  mov     x21, x0
  100056248  adrp    x8, #0x100416000
  10005624c  nop
  100056250  ldr     x22, [x8, #0xf58]
  100056254  adrp    x2, #0x1003bd000
  100056258  add     x2, x2, #0xb70                           ; @"TIME_ELAPSED"
  10005625c  mov     x1, x22
  100056260  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"TIME_ELAPSED"]
  100056264  cbz     w0, loc_100056280                        ; if ([[arg1 name] isEqualToString:@"TIME_ELAPSED"] == 0)
  100056268  ldr     x2, [sp, #8]
  10005626c  adrp    x8, #0x100418000
  100056270  nop
  100056274  ldr     x1, [x8, #0xeb0]
  100056278  mov     x0, x20
  10005627c  bl      _objc_msgSend                            ; [self handleUpdateTimePassed:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_100056280:
  100056280  adrp    x2, #0x1003bd000
  100056284  add     x2, x2, #0xb90                           ; @"BRICK_TIME_ELAPSED"
  100056288  mov     x0, x21
  10005628c  mov     x1, x22
  100056290  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"BRICK_TIME_ELAPSED"]
  100056294  cbz     w0, loc_1000562b0                        ; if ([[arg1 name] isEqualToString:@"BRICK_TIME_ELAPSED"] == 0)
  100056298  ldr     x2, [sp, #8]
  10005629c  adrp    x8, #0x100418000
  1000562a0  nop
  1000562a4  ldr     x1, [x8, #0xeb8]
  1000562a8  mov     x0, x20
  1000562ac  bl      _objc_msgSend                            ; [self handleBrickTimePassed:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_1000562b0:
  1000562b0  adrp    x2, #0x1003bd000
  1000562b4  add     x2, x2, #0xbb0                           ; @"UPDATE_CHALLENGE_TIME_ELAPSED"
  1000562b8  mov     x0, x21
  1000562bc  mov     x1, x22
  1000562c0  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"UPDATE_CHALLENGE_TIME_ELAPSED"]
  1000562c4  cbz     w0, loc_1000562e0                        ; if ([[arg1 name] isEqualToString:@"UPDATE_CHALLENGE_TIME_ELAPSED"] == 0)
  1000562c8  ldr     x2, [sp, #8]
  1000562cc  adrp    x8, #0x100418000
  1000562d0  nop
  1000562d4  ldr     x1, [x8, #0xec0]
  1000562d8  mov     x0, x20
  1000562dc  bl      _objc_msgSend                            ; [self handleChallengeTimePassed:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_1000562e0:
  1000562e0  adrp    x2, #0x1003bd000
  1000562e4  add     x2, x2, #0xbd0                           ; @"UPDATE_MELEE_WEAPON_DATA"
  1000562e8  mov     x0, x21
  1000562ec  mov     x1, x22
  1000562f0  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"UPDATE_MELEE_WEAPON_DATA"]
  1000562f4  cbz     w0, loc_100056310                        ; if ([[arg1 name] isEqualToString:@"UPDATE_MELEE_WEAPON_DATA"] == 0)
  1000562f8  ldr     x2, [sp, #8]
  1000562fc  adrp    x8, #0x100418000
  100056300  nop
  100056304  ldr     x1, [x8, #0xec8]
  100056308  mov     x0, x20
  10005630c  bl      _objc_msgSend                            ; [self handleMeleeWeapon:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_100056310:
  100056310  adrp    x2, #0x1003bd000
  100056314  add     x2, x2, #0xbf0                           ; @"UPDATE_WEAPON_DATA"
  100056318  mov     x0, x21
  10005631c  mov     x1, x22
  100056320  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"UPDATE_WEAPON_DATA"]
  100056324  cbz     w0, loc_100056340                        ; if ([[arg1 name] isEqualToString:@"UPDATE_WEAPON_DATA"] == 0)
  100056328  ldr     x2, [sp, #8]
  10005632c  adrp    x8, #0x100418000
  100056330  nop
  100056334  ldr     x1, [x8, #0xed0]
  100056338  mov     x0, x20
  10005633c  bl      _objc_msgSend                            ; [self handleWeapon:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_100056340:
  100056340  adrp    x2, #0x1003bd000
  100056344  add     x2, x2, #0xc10                           ; @"UPDATE_KILLED_ENEMY_WITH_WEAPON"
  100056348  mov     x0, x21
  10005634c  mov     x1, x22
  100056350  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"UPDATE_KILLED_ENEMY_WITH_WEAPON"]
  100056354  cbz     w0, loc_100056370                        ; if ([[arg1 name] isEqualToString:@"UPDATE_KILLED_ENEMY_WITH_WEAPON"] == 0)
  100056358  ldr     x2, [sp, #8]
  10005635c  adrp    x8, #0x100418000
  100056360  nop
  100056364  ldr     x1, [x8, #0xed8]
  100056368  mov     x0, x20
  10005636c  bl      _objc_msgSend                            ; [self handleEnemyKilled:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_100056370:
  100056370  adrp    x2, #0x1003bd000
  100056374  add     x2, x2, #0xc30                           ; @"UPDATE_KILLED_ENEMY_POWERUP"
  100056378  mov     x0, x21
  10005637c  mov     x1, x22
  100056380  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"UPDATE_KILLED_ENEMY_POWERUP"]
  100056384  cbz     w0, loc_1000563a0                        ; if ([[arg1 name] isEqualToString:@"UPDATE_KILLED_ENEMY_POWERUP"] == 0)
  100056388  ldr     x2, [sp, #8]
  10005638c  adrp    x8, #0x100418000
  100056390  nop
  100056394  ldr     x1, [x8, #0xee0]
  100056398  mov     x0, x20
  10005639c  bl      _objc_msgSend                            ; [self handleEnemyPowerUpKilled:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_1000563a0:
  1000563a0  adrp    x2, #0x1003bd000
  1000563a4  add     x2, x2, #0xc50                           ; @"SET_BRICK_NAME"
  1000563a8  mov     x0, x21
  1000563ac  mov     x1, x22
  1000563b0  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"SET_BRICK_NAME"]
  1000563b4  adrp    x2, #0x1003bd000
  1000563b8  add     x2, x2, #0xc70                           ; @"DEFEATED_BRICK"
  1000563bc  mov     x0, x21
  1000563c0  mov     x1, x22
  1000563c4  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"DEFEATED_BRICK"]
  1000563c8  adrp    x2, #0x1003bd000
  1000563cc  add     x2, x2, #0xc90                           ; @"PLAYER_DIED"
  1000563d0  mov     x0, x21
  1000563d4  mov     x1, x22
  1000563d8  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"PLAYER_DIED"]
  1000563dc  cbz     w0, loc_10005643c                        ; if ([[arg1 name] isEqualToString:@"PLAYER_DIED"] == 0)
  1000563e0  adrp    x8, #0x100418000
  1000563e4  nop
  1000563e8  ldr     x1, [x8, #0xee8]
  1000563ec  mov     w2, #1
  1000563f0  mov     x0, x20
  1000563f4  bl      _objc_msgSend                            ; [self setDeath:1]
  1000563f8  ldr     x0, [sp, #8]
  1000563fc  adrp    x8, #0x100416000
  100056400  nop
  100056404  ldr     x1, [x8, #0xc30]
  100056408  mov     x2, #0
  10005640c  bl      _objc_msgSend                            ; [[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"] objectAtIndex:0]
  100056410  mov     x29, x29
  100056414  bl      _objc_retainAutoreleasedReturnValue
  100056418  mov     x23, x0
  10005641c  adrp    x8, #0x100418000
  100056420  nop
  100056424  ldr     x1, [x8, #0xef0]
  100056428  mov     x0, x20
  10005642c  mov     x2, x23
  100056430  bl      _objc_msgSend                            ; [self deathByEnemyWithName:[[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"] objectAtIndex:0]]
  100056434  mov     x0, x23
  100056438  bl      _objc_release
loc_10005643c:
  10005643c  adrp    x2, #0x1003bd000
  100056440  add     x2, x2, #0xcb0                           ; @"UPDATE_DIAMONDS"
  100056444  mov     x0, x21
  100056448  mov     x1, x22
  10005644c  bl      _objc_msgSend                            ; [[arg1 name] isEqualToString:@"UPDATE_DIAMONDS"]
  100056450  cbz     w0, loc_10005646c                        ; if ([[arg1 name] isEqualToString:@"UPDATE_DIAMONDS"] == 0)
  100056454  ldr     x2, [sp, #8]
  100056458  adrp    x8, #0x100418000
  10005645c  nop
  100056460  ldr     x1, [x8, #0xef8]
  100056464  mov     x0, x20
  100056468  bl      _objc_msgSend                            ; [self handleUpdateDiamonds:[[arg1 userInfo] objectForKey:@"PARAM_ARRAY"]]
loc_10005646c:
  10005646c  mov     x0, x21
  100056470  bl      _objc_release
  100056474  b       loc_100056484
loc_100056478:
  100056478  adrp    x0, #0x1003bd000
  10005647c  add     x0, x0, #0xb10                           ; @"Returned from the actUponNotification with data = nil"
  100056480  bl      _NSLog                                   ; NSLog(@"Returned from the actUponNotification with data = nil")
loc_100056484:
  100056484  ldr     x0, [sp, #8]
  100056488  bl      _objc_release
  10005648c  mov     x0, x19
  100056490  bl      _objc_release
  100056494  sub     sp, x29, #0x30
  100056498  ldp     x29, x30, [sp, #0x30]
  10005649c  ldp     x20, x19, [sp, #0x20]
  1000564a0  ldp     x22, x21, [sp, #0x10]
  1000564a4  ldp     x24, x23, [sp], #0x40
  1000564a8  ret
  1000564ac  mov     x20, x0
loc_1000564b0:
  1000564b0  mov     x0, x21
  1000564b4  bl      _objc_release
  1000564b8  b       loc_1000564c0
  1000564bc  mov     x20, x0
loc_1000564c0:
  1000564c0  ldr     x0, [sp, #8]
loc_1000564c4:
  1000564c4  bl      _objc_release
loc_1000564c8:
  1000564c8  mov     x0, x19
  1000564cc  bl      _objc_release
  1000564d0  mov     x0, x20
  1000564d4  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000564d8  mov     x20, x0
  1000564dc  b       loc_1000564c8
  1000564e0  mov     x20, x0
  1000564e4  mov     x0, x21
  1000564e8  b       loc_1000564c4
  1000564ec  mov     x20, x0
  1000564f0  mov     x0, x23
  1000564f4  bl      _objc_release
  1000564f8  b       loc_1000564b0

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleUpdateTimePassed:]
; address 0x1000564fc  size 200  kind objc
; ======================================================================
  1000564fc  stp     d9, d8, [sp, #-0x40]!
  100056500  stp     x22, x21, [sp, #0x10]
  100056504  stp     x20, x19, [sp, #0x20]
  100056508  stp     x29, x30, [sp, #0x30]
  10005650c  add     x29, sp, #0x30
  100056510  mov     x20, x0
  100056514  mov     x0, x2
  100056518  bl      _objc_retain
  10005651c  mov     x19, x0
  100056520  adrp    x8, #0x100416000
  100056524  nop
  100056528  ldr     x1, [x8, #0xc30]
  10005652c  mov     x2, #0
  100056530  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  100056534  mov     x29, x29
  100056538  bl      _objc_retainAutoreleasedReturnValue
  10005653c  mov     x21, x0
  100056540  adrp    x8, #0x100417000
  100056544  nop
  100056548  ldr     x1, [x8, #0x3d8]
  10005654c  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:0] doubleValue]
  100056550  mov     v8.16b, v0.16b
  100056554  mov     x0, x21
  100056558  bl      _objc_release
  10005655c  adrp    x8, #0x100417000
  100056560  nop
  100056564  ldr     x1, [x8, #0xdc0]
  100056568  mov     x0, x20
  10005656c  bl      _objc_msgSend                            ; [self timeElapsed]
  100056570  fadd    d0, d8, d0
  100056574  adrp    x8, #0x100418000
  100056578  nop
  10005657c  ldr     x1, [x8, #0xf00]
  100056580  mov     x0, x20
  100056584  bl      _objc_msgSend                            ; [self setTimeElapsed:([[arg1 objectAtIndex:0] doubleValue] + [self timeElapsed])]
  100056588  mov     x0, x19
  10005658c  ldp     x29, x30, [sp, #0x30]
  100056590  ldp     x20, x19, [sp, #0x20]
  100056594  ldp     x22, x21, [sp, #0x10]
  100056598  ldp     d9, d8, [sp], #0x40
  10005659c  b       _objc_release
  1000565a0  mov     x20, x0
  1000565a4  b       loc_1000565b4
  1000565a8  mov     x20, x0
  1000565ac  mov     x0, x21
  1000565b0  bl      _objc_release
loc_1000565b4:
  1000565b4  mov     x0, x19
  1000565b8  bl      _objc_release
  1000565bc  mov     x0, x20
  1000565c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleBrickTimePassed:]
; address 0x1000565c4  size 200  kind objc
; ======================================================================
  1000565c4  stp     d9, d8, [sp, #-0x40]!
  1000565c8  stp     x22, x21, [sp, #0x10]
  1000565cc  stp     x20, x19, [sp, #0x20]
  1000565d0  stp     x29, x30, [sp, #0x30]
  1000565d4  add     x29, sp, #0x30
  1000565d8  mov     x20, x0
  1000565dc  mov     x0, x2
  1000565e0  bl      _objc_retain
  1000565e4  mov     x19, x0
  1000565e8  adrp    x8, #0x100416000
  1000565ec  nop
  1000565f0  ldr     x1, [x8, #0xc30]
  1000565f4  mov     x2, #0
  1000565f8  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  1000565fc  mov     x29, x29
  100056600  bl      _objc_retainAutoreleasedReturnValue
  100056604  mov     x21, x0
  100056608  adrp    x8, #0x100417000
  10005660c  nop
  100056610  ldr     x1, [x8, #0x3d8]
  100056614  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:0] doubleValue]
  100056618  mov     v8.16b, v0.16b
  10005661c  mov     x0, x21
  100056620  bl      _objc_release
  100056624  adrp    x8, #0x100418000
  100056628  nop
  10005662c  ldr     x1, [x8, #0xf08]
  100056630  mov     x0, x20
  100056634  bl      _objc_msgSend                            ; [self brickTime]
  100056638  fadd    d0, d8, d0
  10005663c  adrp    x8, #0x100418000
  100056640  nop
  100056644  ldr     x1, [x8, #0xf10]
  100056648  mov     x0, x20
  10005664c  bl      _objc_msgSend                            ; [self setBrickTime:([[arg1 objectAtIndex:0] doubleValue] + [self brickTime])]
  100056650  mov     x0, x19
  100056654  ldp     x29, x30, [sp, #0x30]
  100056658  ldp     x20, x19, [sp, #0x20]
  10005665c  ldp     x22, x21, [sp, #0x10]
  100056660  ldp     d9, d8, [sp], #0x40
  100056664  b       _objc_release
  100056668  mov     x20, x0
  10005666c  b       loc_10005667c
  100056670  mov     x20, x0
  100056674  mov     x0, x21
  100056678  bl      _objc_release
loc_10005667c:
  10005667c  mov     x0, x19
  100056680  bl      _objc_release
  100056684  mov     x0, x20
  100056688  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleChallengeTimePassed:]
; address 0x10005668c  size 200  kind objc
; ======================================================================
  10005668c  stp     d9, d8, [sp, #-0x40]!
  100056690  stp     x22, x21, [sp, #0x10]
  100056694  stp     x20, x19, [sp, #0x20]
  100056698  stp     x29, x30, [sp, #0x30]
  10005669c  add     x29, sp, #0x30
  1000566a0  mov     x20, x0
  1000566a4  mov     x0, x2
  1000566a8  bl      _objc_retain
  1000566ac  mov     x19, x0
  1000566b0  adrp    x8, #0x100416000
  1000566b4  nop
  1000566b8  ldr     x1, [x8, #0xc30]
  1000566bc  mov     x2, #0
  1000566c0  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  1000566c4  mov     x29, x29
  1000566c8  bl      _objc_retainAutoreleasedReturnValue
  1000566cc  mov     x21, x0
  1000566d0  adrp    x8, #0x100417000
  1000566d4  nop
  1000566d8  ldr     x1, [x8, #0x3d8]
  1000566dc  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:0] doubleValue]
  1000566e0  mov     v8.16b, v0.16b
  1000566e4  mov     x0, x21
  1000566e8  bl      _objc_release
  1000566ec  adrp    x8, #0x100418000
  1000566f0  nop
  1000566f4  ldr     x1, [x8, #0x9a0]
  1000566f8  mov     x0, x20
  1000566fc  bl      _objc_msgSend                            ; [self challengeTimeElapsed]
  100056700  fadd    d0, d8, d0
  100056704  adrp    x8, #0x100418000
  100056708  nop
  10005670c  ldr     x1, [x8, #0xf18]
  100056710  mov     x0, x20
  100056714  bl      _objc_msgSend                            ; [self setChallengeTimeElapsed:([[arg1 objectAtIndex:0] doubleValue] + [self challengeTimeElapsed])]
  100056718  mov     x0, x19
  10005671c  ldp     x29, x30, [sp, #0x30]
  100056720  ldp     x20, x19, [sp, #0x20]
  100056724  ldp     x22, x21, [sp, #0x10]
  100056728  ldp     d9, d8, [sp], #0x40
  10005672c  b       _objc_release
  100056730  mov     x20, x0
  100056734  b       loc_100056744
  100056738  mov     x20, x0
  10005673c  mov     x0, x21
  100056740  bl      _objc_release
loc_100056744:
  100056744  mov     x0, x19
  100056748  bl      _objc_release
  10005674c  mov     x0, x20
  100056750  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleMeleeWeapon:]
; address 0x100056754  size 240  kind objc
; ======================================================================
  100056754  stp     x24, x23, [sp, #-0x40]!
  100056758  stp     x22, x21, [sp, #0x10]
  10005675c  stp     x20, x19, [sp, #0x20]
  100056760  stp     x29, x30, [sp, #0x30]
  100056764  add     x29, sp, #0x30
  100056768  mov     x21, x0
  10005676c  mov     x0, x2
  100056770  bl      _objc_retain
  100056774  mov     x19, x0
  100056778  adrp    x8, #0x100416000
  10005677c  nop
  100056780  ldr     x22, [x8, #0xc30]
  100056784  mov     x2, #0
  100056788  mov     x1, x22
  10005678c  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  100056790  mov     x29, x29
  100056794  bl      _objc_retainAutoreleasedReturnValue
  100056798  mov     x20, x0
  10005679c  mov     w2, #1
  1000567a0  mov     x0, x19
  1000567a4  mov     x1, x22
  1000567a8  bl      _objc_msgSend                            ; [arg1 objectAtIndex:1]
  1000567ac  mov     x29, x29
  1000567b0  bl      _objc_retainAutoreleasedReturnValue
  1000567b4  mov     x22, x0
  1000567b8  adrp    x8, #0x100417000
  1000567bc  nop
  1000567c0  ldr     x1, [x8, #0xd8]
  1000567c4  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:1] boolValue]
  1000567c8  mov     x23, x0
  1000567cc  mov     x0, x22
  1000567d0  bl      _objc_release
  1000567d4  adrp    x8, #0x100418000
  1000567d8  nop
  1000567dc  ldr     x1, [x8, #0xf20]
  1000567e0  mov     x0, x21
  1000567e4  mov     x2, x20
  1000567e8  mov     x3, x23
  1000567ec  bl      _objc_msgSend                            ; [self updateMeleeWeaponsWithName:[arg1 objectAtIndex:0] Hit:[[arg1 objectAtIndex:1] boolValue]]
  1000567f0  mov     x0, x20
  1000567f4  bl      _objc_release
  1000567f8  mov     x0, x19
  1000567fc  ldp     x29, x30, [sp, #0x30]
  100056800  ldp     x20, x19, [sp, #0x20]
  100056804  ldp     x22, x21, [sp, #0x10]
  100056808  ldp     x24, x23, [sp], #0x40
  10005680c  b       _objc_release
  100056810  mov     x21, x0
  100056814  b       loc_10005682c
  100056818  mov     x21, x0
  10005681c  b       loc_100056834
  100056820  mov     x21, x0
  100056824  mov     x0, x22
  100056828  bl      _objc_release
loc_10005682c:
  10005682c  mov     x0, x20
  100056830  bl      _objc_release
loc_100056834:
  100056834  mov     x0, x19
  100056838  bl      _objc_release
  10005683c  mov     x0, x21
  100056840  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleWeapon:]
; address 0x100056844  size 592  kind objc
; ======================================================================
  100056844  stp     d9, d8, [sp, #-0x70]!
  100056848  stp     x28, x27, [sp, #0x10]
  10005684c  stp     x26, x25, [sp, #0x20]
  100056850  stp     x24, x23, [sp, #0x30]
  100056854  stp     x22, x21, [sp, #0x40]
  100056858  stp     x20, x19, [sp, #0x50]
  10005685c  stp     x29, x30, [sp, #0x60]
  100056860  add     x29, sp, #0x60
  100056864  mov     x21, x0
  100056868  mov     x0, x2
  10005686c  bl      _objc_retain
  100056870  mov     x19, x0
  100056874  adrp    x8, #0x100416000
  100056878  nop
  10005687c  ldr     x23, [x8, #0xc30]
  100056880  mov     x2, #0
  100056884  mov     x1, x23
  100056888  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  10005688c  mov     x29, x29
  100056890  bl      _objc_retainAutoreleasedReturnValue
  100056894  mov     x20, x0
  100056898  mov     w2, #1
  10005689c  mov     x0, x19
  1000568a0  mov     x1, x23
  1000568a4  bl      _objc_msgSend                            ; [arg1 objectAtIndex:1]
  1000568a8  mov     x29, x29
  1000568ac  bl      _objc_retainAutoreleasedReturnValue
  1000568b0  mov     x24, x0
  1000568b4  adrp    x8, #0x100417000
  1000568b8  nop
  1000568bc  ldr     x25, [x8, #0xd8]
  1000568c0  mov     x1, x25
  1000568c4  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:1] boolValue]
  1000568c8  mov     x22, x0
  1000568cc  mov     x0, x24
  1000568d0  bl      _objc_release
  1000568d4  mov     w2, #2
  1000568d8  mov     x0, x19
  1000568dc  mov     x1, x23
  1000568e0  bl      _objc_msgSend                            ; [arg1 objectAtIndex:2]
  1000568e4  mov     x29, x29
  1000568e8  bl      _objc_retainAutoreleasedReturnValue
  1000568ec  mov     x26, x0
  1000568f0  mov     x1, x25
  1000568f4  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:2] boolValue]
  1000568f8  mov     x24, x0
  1000568fc  mov     x0, x26
  100056900  bl      _objc_release
  100056904  mov     w2, #3
  100056908  mov     x0, x19
  10005690c  mov     x1, x23
  100056910  bl      _objc_msgSend                            ; [arg1 objectAtIndex:3]
  100056914  mov     x29, x29
  100056918  bl      _objc_retainAutoreleasedReturnValue
  10005691c  mov     x27, x0
  100056920  mov     x1, x25
  100056924  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:3] boolValue]
  100056928  mov     x26, x0
  10005692c  mov     x0, x27
  100056930  bl      _objc_release
  100056934  mov     w2, #4
  100056938  mov     x0, x19
  10005693c  mov     x1, x23
  100056940  bl      _objc_msgSend                            ; [arg1 objectAtIndex:4]
  100056944  mov     x29, x29
  100056948  bl      _objc_retainAutoreleasedReturnValue
  10005694c  mov     x27, x0
  100056950  mov     x1, x25
  100056954  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:4] boolValue]
  100056958  mov     x25, x0
  10005695c  mov     x0, x27
  100056960  bl      _objc_release
  100056964  mov     w2, #5
  100056968  mov     x0, x19
  10005696c  mov     x1, x23
  100056970  bl      _objc_msgSend                            ; [arg1 objectAtIndex:5]
  100056974  mov     x29, x29
  100056978  bl      _objc_retainAutoreleasedReturnValue
  10005697c  mov     x23, x0
  100056980  adrp    x8, #0x100417000
  100056984  nop
  100056988  ldr     x1, [x8, #0x3d8]
  10005698c  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:5] doubleValue]
  100056990  mov     v8.16b, v0.16b
  100056994  mov     x0, x23
  100056998  bl      _objc_release
  10005699c  orr     w8, w22, w24
  1000569a0  orr     w8, w8, w26                              ; t1 = (([[arg1 objectAtIndex:1] boolValue] | [[arg1 objectAtIndex:2] boolValue]) | [[arg1 objectAtIndex:3] boolValue])
  1000569a4  orr     w8, w8, w25
  1000569a8  adrp    x9, #0x100418000
  1000569ac  add     x9, x9, #0xf28                           ; &@selector(updateDataForWeaponWithName:FiredShot:HitFired:Killed:Critical:Time:)
  1000569b0  ldr     x1, [x9]
  1000569b4  cmp     w8, #1
  1000569b8  b.ne    loc_1000569e0                            ; if ((t1 | [[arg1 objectAtIndex:4] boolValue]) != 1)
  1000569bc  mov     x0, x21
  1000569c0  mov     x2, x20
  1000569c4  mov     x3, x22
  1000569c8  mov     x4, x24
  1000569cc  mov     x5, x26
  1000569d0  mov     x6, x25
  1000569d4  mov     v0.16b, v8.16b
  1000569d8  bl      _objc_msgSend                            ; [self updateDataForWeaponWithName:[arg1 objectAtIndex:0] FiredShot:[[arg1 objectAtIndex:1] boolValue] HitFired:[[arg1 objectAtIndex:2] boolValue] Killed:[[arg1 objectAtIndex:3] boolValue] Critical:[[arg1 objectAtIndex:4] boolValue] Time:[[arg1 objectAtIndex:5] doubleValue]]
  1000569dc  b       loc_100056a00
loc_1000569e0:
  1000569e0  mov     w3, #0
  1000569e4  mov     w4, #0
  1000569e8  mov     w5, #0
  1000569ec  mov     w6, #0
  1000569f0  mov     x0, x21
  1000569f4  mov     x2, x20
  1000569f8  mov     v0.16b, v8.16b
  1000569fc  bl      _objc_msgSend                            ; [self updateDataForWeaponWithName:[arg1 objectAtIndex:0] FiredShot:0 HitFired:0 Killed:0 Critical:0 Time:[[arg1 objectAtIndex:5] doubleValue]]
loc_100056a00:
  100056a00  mov     x0, x20
  100056a04  bl      _objc_release
  100056a08  mov     x0, x19
  100056a0c  ldp     x29, x30, [sp, #0x60]
  100056a10  ldp     x20, x19, [sp, #0x50]
  100056a14  ldp     x22, x21, [sp, #0x40]
  100056a18  ldp     x24, x23, [sp, #0x30]
  100056a1c  ldp     x26, x25, [sp, #0x20]
  100056a20  ldp     x28, x27, [sp, #0x10]
  100056a24  ldp     d9, d8, [sp], #0x70
  100056a28  b       _objc_release
  100056a2c  mov     x21, x0
  100056a30  b       loc_100056a7c
  100056a34  mov     x21, x0
  100056a38  b       loc_100056a84
  100056a3c  mov     x21, x0
  100056a40  mov     x0, x24
  100056a44  bl      _objc_release
  100056a48  b       loc_100056a7c
  100056a4c  mov     x21, x0
  100056a50  mov     x0, x26
  100056a54  bl      _objc_release
  100056a58  b       loc_100056a7c
  100056a5c  b       loc_100056a60
loc_100056a60:
  100056a60  mov     x21, x0
  100056a64  mov     x0, x27
  100056a68  bl      _objc_release
  100056a6c  b       loc_100056a7c
  100056a70  mov     x21, x0
  100056a74  mov     x0, x23
  100056a78  bl      _objc_release
loc_100056a7c:
  100056a7c  mov     x0, x20
  100056a80  bl      _objc_release
loc_100056a84:
  100056a84  mov     x0, x19
  100056a88  bl      _objc_release
  100056a8c  mov     x0, x21
  100056a90  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleEnemyKilled:]
; address 0x100056a94  size 336  kind objc
; ======================================================================
  100056a94  stp     x22, x21, [sp, #-0x30]!
  100056a98  stp     x20, x19, [sp, #0x10]
  100056a9c  stp     x29, x30, [sp, #0x20]
  100056aa0  add     x29, sp, #0x20
  100056aa4  mov     x22, x0
  100056aa8  mov     x0, x2
  100056aac  bl      _objc_retain
  100056ab0  mov     x19, x0
  100056ab4  adrp    x8, #0x100416000
  100056ab8  nop
  100056abc  ldr     x21, [x8, #0xc30]
  100056ac0  mov     x2, #0
  100056ac4  mov     x1, x21
  100056ac8  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  100056acc  mov     x29, x29
  100056ad0  bl      _objc_retainAutoreleasedReturnValue
  100056ad4  mov     x20, x0
  100056ad8  mov     w2, #1
  100056adc  mov     x0, x19
  100056ae0  mov     x1, x21
  100056ae4  bl      _objc_msgSend                            ; [arg1 objectAtIndex:1]
  100056ae8  mov     x29, x29
  100056aec  bl      _objc_retainAutoreleasedReturnValue
  100056af0  mov     x21, x0
  100056af4  adrp    x8, #0x100418000
  100056af8  nop
  100056afc  ldr     x1, [x8, #0xf30]
  100056b00  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:1] getType]
  100056b04  cmp     x0, #1
  100056b08  b.eq    loc_100056b78                            ; if ([[arg1 objectAtIndex:1] getType] == 1)
  100056b0c  adrp    x8, #0x100418000
  100056b10  nop
  100056b14  ldr     x1, [x8, #0xf28]
  100056b18  mov     w3, #0
  100056b1c  mov     w4, #0
  100056b20  fmov    d0, #-1.00000000
  100056b24  mov     w5, #1
  100056b28  mov     x0, x22
  100056b2c  mov     x2, x20
  100056b30  mov     w6, #0
  100056b34  bl      _objc_msgSend                            ; [self updateDataForWeaponWithName:[arg1 objectAtIndex:0] FiredShot:0 HitFired:0 Killed:1 Critical:0 Time:-1]
  100056b38  adrp    x8, #0x10041d000
  100056b3c  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  100056b40  adrp    x8, #0x100417000
  100056b44  nop
  100056b48  ldr     x1, [x8, #0x228]
  100056b4c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  100056b50  mov     x29, x29
  100056b54  bl      _objc_retainAutoreleasedReturnValue
  100056b58  mov     x22, x0
  100056b5c  adrp    x8, #0x100418000
  100056b60  nop
  100056b64  ldr     x1, [x8, #0xf38]
  100056b68  mov     x2, x21
  100056b6c  bl      _objc_msgSend                            ; [[ADInGameStats singleton] killedEnemi:[arg1 objectAtIndex:1]]
  100056b70  mov     x0, x22
  100056b74  bl      _objc_release
loc_100056b78:
  100056b78  mov     x0, x21
  100056b7c  bl      _objc_release
  100056b80  mov     x0, x20
  100056b84  bl      _objc_release
  100056b88  mov     x0, x19
  100056b8c  ldp     x29, x30, [sp, #0x20]
  100056b90  ldp     x20, x19, [sp, #0x10]
  100056b94  ldp     x22, x21, [sp], #0x30
  100056b98  b       _objc_release
  100056b9c  mov     x22, x0
  100056ba0  b       loc_100056bc4
  100056ba4  mov     x22, x0
  100056ba8  b       loc_100056bd4
  100056bac  mov     x22, x0
  100056bb0  b       loc_100056bcc
  100056bb4  mov     x1, x22
  100056bb8  mov     x22, x0
  100056bbc  mov     x0, x1
  100056bc0  bl      _objc_release
loc_100056bc4:
  100056bc4  mov     x0, x21
  100056bc8  bl      _objc_release
loc_100056bcc:
  100056bcc  mov     x0, x20
  100056bd0  bl      _objc_release
loc_100056bd4:
  100056bd4  mov     x0, x19
  100056bd8  bl      _objc_release
  100056bdc  mov     x0, x22
  100056be0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleEnemyPowerUpKilled:]
; address 0x100056be4  size 236  kind objc
; ======================================================================
  100056be4  stp     x22, x21, [sp, #-0x30]!
  100056be8  stp     x20, x19, [sp, #0x10]
  100056bec  stp     x29, x30, [sp, #0x20]
  100056bf0  add     x29, sp, #0x20
  100056bf4  mov     x21, x0
  100056bf8  mov     x0, x2
  100056bfc  bl      _objc_retain
  100056c00  mov     x19, x0
  100056c04  adrp    x8, #0x100416000
  100056c08  nop
  100056c0c  ldr     x22, [x8, #0xc30]
  100056c10  mov     x2, #0
  100056c14  mov     x1, x22
  100056c18  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  100056c1c  mov     x29, x29
  100056c20  bl      _objc_retainAutoreleasedReturnValue
  100056c24  mov     x20, x0
  100056c28  mov     w2, #1
  100056c2c  mov     x0, x19
  100056c30  mov     x1, x22
  100056c34  bl      _objc_msgSend                            ; [arg1 objectAtIndex:1]
  100056c38  mov     x29, x29
  100056c3c  bl      _objc_retainAutoreleasedReturnValue
  100056c40  mov     x22, x0
  100056c44  adrp    x8, #0x100418000
  100056c48  nop
  100056c4c  ldr     x1, [x8, #0xf30]
  100056c50  mov     x0, x20
  100056c54  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:0] getType]
  100056c58  cmp     x0, #1
  100056c5c  b.eq    loc_100056c78                            ; if ([[arg1 objectAtIndex:0] getType] == 1)
  100056c60  adrp    x8, #0x100418000
  100056c64  nop
  100056c68  ldr     x1, [x8, #0xf38]
  100056c6c  mov     x0, x21
  100056c70  mov     x2, x20
  100056c74  bl      _objc_msgSend                            ; [self killedEnemi:[arg1 objectAtIndex:0]]
loc_100056c78:
  100056c78  mov     x0, x22
  100056c7c  bl      _objc_release
  100056c80  mov     x0, x20
  100056c84  bl      _objc_release
  100056c88  mov     x0, x19
  100056c8c  ldp     x29, x30, [sp, #0x20]
  100056c90  ldp     x20, x19, [sp, #0x10]
  100056c94  ldp     x22, x21, [sp], #0x30
  100056c98  b       _objc_release
  100056c9c  mov     x21, x0
  100056ca0  mov     x0, x22
  100056ca4  bl      _objc_release
  100056ca8  b       loc_100056cb8
  100056cac  mov     x21, x0
  100056cb0  b       loc_100056cc0
  100056cb4  mov     x21, x0
loc_100056cb8:
  100056cb8  mov     x0, x20
  100056cbc  bl      _objc_release
loc_100056cc0:
  100056cc0  mov     x0, x19
  100056cc4  bl      _objc_release
  100056cc8  mov     x0, x21
  100056ccc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADInGameStats(NotificationDispatcher) handleUpdateDiamonds:]
; address 0x100056cd0  size 208  kind objc
; ======================================================================
  100056cd0  stp     x22, x21, [sp, #-0x30]!
  100056cd4  stp     x20, x19, [sp, #0x10]
  100056cd8  stp     x29, x30, [sp, #0x20]
  100056cdc  add     x29, sp, #0x20
  100056ce0  mov     x20, x0
  100056ce4  mov     x0, x2
  100056ce8  bl      _objc_retain
  100056cec  mov     x19, x0
  100056cf0  adrp    x0, #0x1003bd000
  100056cf4  add     x0, x0, #0xcd0                           ; @"Collected a diamond!"
  100056cf8  bl      _NSLog                                   ; NSLog(@"Collected a diamond!")
  100056cfc  adrp    x8, #0x100416000
  100056d00  nop
  100056d04  ldr     x1, [x8, #0xc30]
  100056d08  mov     x2, #0
  100056d0c  mov     x0, x19
  100056d10  bl      _objc_msgSend                            ; [arg1 objectAtIndex:0]
  100056d14  mov     x29, x29
  100056d18  bl      _objc_retainAutoreleasedReturnValue
  100056d1c  mov     x21, x0
  100056d20  adrp    x8, #0x100418000
  100056d24  nop
  100056d28  ldr     x1, [x8, #0xf40]
  100056d2c  bl      _objc_msgSend                            ; [[arg1 objectAtIndex:0] unsignedIntegerValue]
  100056d30  mov     x22, x0
  100056d34  mov     x0, x21
  100056d38  bl      _objc_release
  100056d3c  adrp    x8, #0x100417000
  100056d40  nop
  100056d44  ldr     x1, [x8, #0xdb8]
  100056d48  mov     x0, x20
  100056d4c  bl      _objc_msgSend                            ; [self diamondLoot]
  100056d50  add     x2, x0, x22
  100056d54  adrp    x8, #0x100418000
  100056d58  nop
  100056d5c  ldr     x1, [x8, #0xf48]
  100056d60  mov     x0, x20
  100056d64  bl      _objc_msgSend                            ; [self setDiamondLoot:([self diamondLoot] + [[arg1 objectAtIndex:0] unsignedIntegerValue])]
  100056d68  mov     x0, x19
  100056d6c  ldp     x29, x30, [sp, #0x20]
  100056d70  ldp     x20, x19, [sp, #0x10]
  100056d74  ldp     x22, x21, [sp], #0x30
  100056d78  b       _objc_release
  100056d7c  mov     x20, x0
  100056d80  b       loc_100056d90
  100056d84  mov     x20, x0
  100056d88  mov     x0, x21
  100056d8c  bl      _objc_release
loc_100056d90:
  100056d90  mov     x0, x19
  100056d94  bl      _objc_release
  100056d98  mov     x0, x20
  100056d9c  bl      __Unwind_Resume                          ; Unwind_Resume()
