// unit ADMissionManager — 22 functions
//   0x100007eec     172  +[ADMissionManager sharedMissionManager]
//   0x100007f98     268  -[ADMissionManager missionArray]
//   0x1000080a4     480  -[ADMissionManager activeMissionsInit]
//   0x100008284     216  -[ADMissionManager initOrRestore]
//   0x10000835c     308  -[ADMissionManager saveMissionProgress]
//   0x100008490     284  -[ADMissionManager loadMissionProgress]
//   0x1000085ac     108  -[ADMissionManager update:]
//   0x100008618     404  -[ADMissionManager missionsCompleted]
//   0x1000087ac     288  -[ADMissionManager replaceMission:]
//   0x1000088cc     340  -[ADMissionManager getNextMission]
//   0x100008a20     496  -[ADMissionManager enemiKilled:withWeapon:]
//   0x100008c10     224  -[ADMissionManager upgradeWeaponToLevel:]
//   0x100008cf0     224  -[ADMissionManager startGameplay]
//   0x100008dd0     256  -[ADMissionManager endGameplay]
//   0x100008ed0     224  -[ADMissionManager playerSwappedWeapon]
//   0x100008fb0     224  -[ADMissionManager playerMissedAShot]
//   0x100009090     468  -[ADMissionManager playerShotWithWeapon:hitEnemi:]
//   0x100009264     104  -[ADMissionManager playerDied]
//   0x1000092cc      56  -[ADMissionManager setMissionArray:]
//   0x100009304      16  -[ADMissionManager activeMissions]
//   0x100009314      56  -[ADMissionManager setActiveMissions:]
//   0x10000934c      64  -[ADMissionManager .cxx_destruct]

; ======================================================================
; +[ADMissionManager sharedMissionManager]
; address 0x100007eec  size 172  kind objc
; ======================================================================
  100007eec  stp     x20, x19, [sp, #-0x20]!
  100007ef0  stp     x29, x30, [sp, #0x10]
  100007ef4  add     x29, sp, #0x10
  100007ef8  bl      _objc_retain
  100007efc  mov     x19, x0
  100007f00  bl      _objc_sync_enter                         ; objc_sync_enter(ADMissionManager)
  100007f04  adrp    x20, #0x10042d000
  100007f08  ldr     x8, [x20, #0x950]                        ; load g_10042d950
  100007f0c  cbnz    x8, loc_100007f5c                        ; if (g_10042d950 != 0)
  100007f10  adrp    x8, #0x10041d000
  100007f14  ldr     x0, [x8, #0xf18]                         ; class ADMissionManager
  100007f18  adrp    x8, #0x100416000
  100007f1c  nop
  100007f20  ldr     x1, [x8, #0xac8]
  100007f24  bl      _objc_msgSend                            ; [ADMissionManager alloc]
  100007f28  adrp    x8, #0x100416000
  100007f2c  nop
  100007f30  ldr     x1, [x8, #0xab8]
  100007f34  bl      _objc_msgSend                            ; [[ADMissionManager alloc] init]
  100007f38  ldr     x8, [x20, #0x950]                        ; load g_10042d950
  100007f3c  str     x0, [x20, #0x950]                        ; store g_10042d950 = [[ADMissionManager alloc] init]
  100007f40  mov     x0, x8
  100007f44  bl      _objc_release
  100007f48  ldr     x0, [x20, #0x950]                        ; load g_10042d950
  100007f4c  adrp    x8, #0x100416000
  100007f50  nop
  100007f54  ldr     x1, [x8, #0xd58]
  100007f58  bl      _objc_msgSend                            ; [g_10042d950 initOrRestore]
loc_100007f5c:
  100007f5c  mov     x0, x19
  100007f60  bl      _objc_sync_exit                          ; objc_sync_exit(ADMissionManager)
  100007f64  mov     x0, x19
  100007f68  bl      _objc_release
  100007f6c  ldr     x0, [x20, #0x950]                        ; load g_10042d950
  100007f70  ldp     x29, x30, [sp, #0x10]
  100007f74  ldp     x20, x19, [sp], #0x20
  100007f78  b       _objc_retainAutoreleaseReturnValue
  100007f7c  mov     x20, x0
  100007f80  mov     x0, x19
  100007f84  bl      _objc_sync_exit                          ; objc_sync_exit()
  100007f88  mov     x0, x19
  100007f8c  bl      _objc_release
  100007f90  mov     x0, x20
  100007f94  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager missionArray]
; address 0x100007f98  size 268  kind objc
; ======================================================================
  100007f98  stp     x22, x21, [sp, #-0x30]!
  100007f9c  stp     x20, x19, [sp, #0x10]
  100007fa0  stp     x29, x30, [sp, #0x20]
  100007fa4  add     x29, sp, #0x20
  100007fa8  mov     x19, x0
  100007fac  adrp    x8, #0x10041f000
  100007fb0  ldrsw   x22, [x8, #0x4c0]                        ; ivar offset ADMissionManager._missionArray (+0x10)
  100007fb4  ldr     x0, [x19, x22]                           ; x0 = self->_missionArray
  100007fb8  cbz     x0, loc_100007fc8                        ; if (self->_missionArray == 0)
  100007fbc  bl      _objc_retain
  100007fc0  mov     x19, x0
  100007fc4  b       loc_100008070
loc_100007fc8:
  100007fc8  adrp    x8, #0x10041d000
  100007fcc  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  100007fd0  adrp    x8, #0x100416000
  100007fd4  nop
  100007fd8  ldr     x1, [x8, #0xb58]
  100007fdc  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  100007fe0  mov     x29, x29
  100007fe4  bl      _objc_retainAutoreleasedReturnValue
  100007fe8  mov     x21, x0
  100007fec  adrp    x8, #0x100416000
  100007ff0  nop
  100007ff4  ldr     x1, [x8, #0xd60]
  100007ff8  adrp    x2, #0x1003b9000
  100007ffc  add     x2, x2, #0xa50                           ; @"Missions"
  100008000  adrp    x3, #0x1003b9000
  100008004  add     x3, x3, #0xa70                           ; @"plist"
  100008008  bl      _objc_msgSend                            ; [[NSBundle mainBundle] URLForResource:@"Missions" withExtension:@"plist"]
  10000800c  mov     x29, x29
  100008010  bl      _objc_retainAutoreleasedReturnValue
  100008014  mov     x20, x0
  100008018  mov     x0, x21
  10000801c  bl      _objc_release
  100008020  adrp    x8, #0x10041d000
  100008024  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100008028  adrp    x8, #0x100416000
  10000802c  nop
  100008030  ldr     x1, [x8, #0xac8]
  100008034  bl      _objc_msgSend                            ; [NSArray alloc]
  100008038  adrp    x8, #0x100416000
  10000803c  nop
  100008040  ldr     x1, [x8, #0xd68]
  100008044  mov     x2, x20
  100008048  bl      _objc_msgSend                            ; [[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Missions" withExtension:@"plist"]]
  10000804c  ldr     x8, [x19, x22]                           ; x8 = self->_missionArray
  100008050  str     x0, [x19, x22]                           ; self->_missionArray = [[NSArray alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"Missions" withExtension:@"plist"]]
  100008054  mov     x0, x8
  100008058  bl      _objc_release
  10000805c  ldr     x0, [x19, x22]                           ; x0 = self->_missionArray
  100008060  bl      _objc_retain
  100008064  mov     x19, x0
  100008068  mov     x0, x20
  10000806c  bl      _objc_release
loc_100008070:
  100008070  mov     x0, x19
  100008074  ldp     x29, x30, [sp, #0x20]
  100008078  ldp     x20, x19, [sp, #0x10]
  10000807c  ldp     x22, x21, [sp], #0x30
  100008080  b       _objc_autoreleaseReturnValue
  100008084  mov     x19, x0
  100008088  mov     x0, x20
  10000808c  b       loc_100008098
  100008090  mov     x19, x0
  100008094  mov     x0, x21
loc_100008098:
  100008098  bl      _objc_release
  10000809c  mov     x0, x19
  1000080a0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager activeMissionsInit]
; address 0x1000080a4  size 480  kind objc
; ======================================================================
  1000080a4  stp     x28, x27, [sp, #-0x60]!
  1000080a8  stp     x26, x25, [sp, #0x10]
  1000080ac  stp     x24, x23, [sp, #0x20]
  1000080b0  stp     x22, x21, [sp, #0x30]
  1000080b4  stp     x20, x19, [sp, #0x40]
  1000080b8  stp     x29, x30, [sp, #0x50]
  1000080bc  add     x29, sp, #0x50
  1000080c0  sub     sp, sp, #0x10
  1000080c4  mov     x19, x0
  1000080c8  adrp    x8, #0x10041d000
  1000080cc  ldr     x0, [x8, #0xf28]                         ; class NSMutableArray
  1000080d0  adrp    x8, #0x100416000
  1000080d4  nop
  1000080d8  ldr     x1, [x8, #0xac8]
  1000080dc  str     x1, [sp, #8]
  1000080e0  bl      _objc_msgSend                            ; [NSMutableArray alloc]
  1000080e4  adrp    x8, #0x100416000
  1000080e8  nop
  1000080ec  ldr     x1, [x8, #0xab8]
  1000080f0  bl      _objc_msgSend                            ; [[NSMutableArray alloc] init]
  1000080f4  mov     x21, x0
  1000080f8  adrp    x8, #0x100416000
  1000080fc  nop
  100008100  ldr     x1, [x8, #0xd70]
  100008104  mov     x0, x19
  100008108  mov     x2, x21
  10000810c  bl      _objc_msgSend                            ; [self setActiveMissions:[[NSMutableArray alloc] init]]
  100008110  mov     x0, x21
  100008114  bl      _objc_release
  100008118  mov     w20, #0
  10000811c  adrp    x8, #0x100416000
  100008120  nop
  100008124  ldr     x8, [x8, #0xd78]
  100008128  str     x8, [sp]
  10000812c  adrp    x8, #0x10041f000
  100008130  adrp    x9, #0x100416000
  100008134  nop
  100008138  ldrsw   x21, [x8, #0x4c4]                        ; ivar offset ADMissionManager.currentMissionIndex (+0x8)
  10000813c  ldr     x22, [x9, #0xc30]
  100008140  adrp    x8, #0x100416000
  100008144  nop
  100008148  adrp    x9, #0x100416000
  10000814c  add     x9, x9, #0xd88                           ; &@selector(activeMissions)
  100008150  ldr     x23, [x8, #0xd80]
  100008154  ldr     x24, [x9]
  100008158  adrp    x8, #0x100416000
  10000815c  add     x8, x8, #0xd90                           ; &@selector(addObject:)
  100008160  ldr     x25, [x8]
loc_100008164:
  100008164  adrp    x8, #0x10041d000
  100008168  ldr     x0, [x8, #0xf30]                         ; class ADMission
  10000816c  ldr     x1, [sp, #8]
  100008170  bl      _objc_msgSend                            ; [ADMission alloc]
  100008174  mov     x26, x0
  100008178  mov     x0, x19
  10000817c  ldr     x1, [sp]
  100008180  bl      _objc_msgSend                            ; [self missionArray]
  100008184  mov     x29, x29
  100008188  bl      _objc_retainAutoreleasedReturnValue
  10000818c  mov     x27, x0
  100008190  ldrsw   x2, [x19, x21]                           ; x2 = self->currentMissionIndex
  100008194  mov     x1, x22
  100008198  bl      _objc_msgSend                            ; [[self missionArray] objectAtIndex:self->currentMissionIndex]
  10000819c  mov     x29, x29
  1000081a0  bl      _objc_retainAutoreleasedReturnValue
  1000081a4  mov     x28, x0
  1000081a8  mov     x0, x26
  1000081ac  mov     x1, x23
  1000081b0  mov     x2, x28
  1000081b4  bl      _objc_msgSend                            ; [[ADMission alloc] initWithDictionary:[[self missionArray] objectAtIndex:self->currentMissionIndex]]
  1000081b8  mov     x26, x0
  1000081bc  mov     x0, x28
  1000081c0  bl      _objc_release
  1000081c4  mov     x0, x27
  1000081c8  bl      _objc_release
  1000081cc  mov     x0, x19
  1000081d0  mov     x1, x24
  1000081d4  bl      _objc_msgSend                            ; [self activeMissions]
  1000081d8  mov     x29, x29
  1000081dc  bl      _objc_retainAutoreleasedReturnValue
  1000081e0  mov     x27, x0
  1000081e4  mov     x1, x25
  1000081e8  mov     x2, x26
  1000081ec  bl      _objc_msgSend                            ; [[self activeMissions] addObject:[[ADMission alloc] initWithDictionary:[[self missionArray] objectAtIndex:self->currentMissionIndex]]]
  1000081f0  mov     x0, x27
  1000081f4  bl      _objc_release
  1000081f8  ldr     w8, [x19, x21]                           ; w8 = self->currentMissionIndex
  1000081fc  add     w8, w8, #1
  100008200  str     w8, [x19, x21]                           ; self->currentMissionIndex = (self->currentMissionIndex + 1)
  100008204  mov     x0, x26
  100008208  bl      _objc_release
  10000820c  add     w20, w20, #1
  100008210  cmp     w20, #3
  100008214  b.lt    loc_100008164                            ; if ((w20 + 1) < 3)
  100008218  sub     sp, x29, #0x50
  10000821c  ldp     x29, x30, [sp, #0x50]
  100008220  ldp     x20, x19, [sp, #0x40]
  100008224  ldp     x22, x21, [sp, #0x30]
  100008228  ldp     x24, x23, [sp, #0x20]
  10000822c  ldp     x26, x25, [sp, #0x10]
  100008230  ldp     x28, x27, [sp], #0x60
  100008234  ret
  100008238  mov     x19, x0
  10000823c  b       loc_10000824c
  100008240  mov     x19, x0
  100008244  mov     x0, x28
  100008248  bl      _objc_release
loc_10000824c:
  10000824c  mov     x0, x27
  100008250  b       loc_10000826c
  100008254  mov     x19, x0
  100008258  b       loc_100008268
  10000825c  mov     x19, x0
  100008260  mov     x0, x27
  100008264  bl      _objc_release
loc_100008268:
  100008268  mov     x0, x26
loc_10000826c:
  10000826c  bl      _objc_release
  100008270  mov     x0, x19
  100008274  bl      __Unwind_Resume                          ; Unwind_Resume()
  100008278  mov     x19, x0
  10000827c  mov     x0, x21
  100008280  b       loc_10000826c

; ======================================================================
; -[ADMissionManager initOrRestore]
; address 0x100008284  size 216  kind objc
; ======================================================================
  100008284  stp     x22, x21, [sp, #-0x30]!
  100008288  stp     x20, x19, [sp, #0x10]
  10000828c  stp     x29, x30, [sp, #0x20]
  100008290  add     x29, sp, #0x20
  100008294  mov     x20, x0
  100008298  adrp    x8, #0x10041d000
  10000829c  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000082a0  adrp    x8, #0x100416000
  1000082a4  nop
  1000082a8  ldr     x1, [x8, #0xd98]
  1000082ac  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000082b0  mov     x29, x29
  1000082b4  bl      _objc_retainAutoreleasedReturnValue
  1000082b8  mov     x19, x0
  1000082bc  adrp    x8, #0x100416000
  1000082c0  nop
  1000082c4  ldr     x1, [x8, #0xda0]
  1000082c8  adrp    x2, #0x1003b9000
  1000082cc  add     x2, x2, #0xa90                           ; @"missionArray"
  1000082d0  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"missionArray"]
  1000082d4  mov     x29, x29
  1000082d8  bl      _objc_retainAutoreleasedReturnValue
  1000082dc  mov     x21, x0
  1000082e0  bl      _objc_release
  1000082e4  cbz     x21, loc_100008300                       ; if ([[NSUserDefaults standardUserDefaults] valueForKey:@"missionArray"] == 0)
  1000082e8  adrp    x8, #0x100416000
  1000082ec  nop
  1000082f0  ldr     x1, [x8, #0xdb8]
  1000082f4  mov     x0, x20
  1000082f8  bl      _objc_msgSend                            ; [self loadMissionProgress]
  1000082fc  b       loc_100008334
loc_100008300:
  100008300  adrp    x8, #0x10041f000
  100008304  ldrsw   x8, [x8, #0x4c4]                         ; ivar offset ADMissionManager.currentMissionIndex (+0x8)
  100008308  str     wzr, [x20, x8]                           ; self->currentMissionIndex = 0
  10000830c  adrp    x8, #0x100416000
  100008310  nop
  100008314  ldr     x1, [x8, #0xda8]
  100008318  mov     x0, x20
  10000831c  bl      _objc_msgSend                            ; [self activeMissionsInit]
  100008320  adrp    x8, #0x100416000
  100008324  nop
  100008328  ldr     x1, [x8, #0xdb0]
  10000832c  mov     x0, x20
  100008330  bl      _objc_msgSend                            ; [self saveMissionProgress]
loc_100008334:
  100008334  mov     x0, x19
  100008338  ldp     x29, x30, [sp, #0x20]
  10000833c  ldp     x20, x19, [sp, #0x10]
  100008340  ldp     x22, x21, [sp], #0x30
  100008344  b       _objc_release
  100008348  mov     x20, x0
  10000834c  mov     x0, x19
  100008350  bl      _objc_release
  100008354  mov     x0, x20
  100008358  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager saveMissionProgress]
; address 0x10000835c  size 308  kind objc
; ======================================================================
  10000835c  stp     x22, x21, [sp, #-0x30]!
  100008360  stp     x20, x19, [sp, #0x10]
  100008364  stp     x29, x30, [sp, #0x20]
  100008368  add     x29, sp, #0x20
  10000836c  mov     x20, x0
  100008370  adrp    x8, #0x10041d000
  100008374  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  100008378  adrp    x8, #0x100416000
  10000837c  nop
  100008380  ldr     x1, [x8, #0xd98]
  100008384  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  100008388  mov     x29, x29
  10000838c  bl      _objc_retainAutoreleasedReturnValue
  100008390  mov     x19, x0
  100008394  adrp    x8, #0x10041d000
  100008398  ldr     x21, [x8, #0xf40]                        ; class NSKeyedArchiver
  10000839c  adrp    x8, #0x100416000
  1000083a0  nop
  1000083a4  ldr     x1, [x8, #0xd88]
  1000083a8  mov     x0, x20
  1000083ac  bl      _objc_msgSend                            ; [self activeMissions]
  1000083b0  mov     x29, x29
  1000083b4  bl      _objc_retainAutoreleasedReturnValue
  1000083b8  mov     x22, x0
  1000083bc  adrp    x8, #0x100416000
  1000083c0  nop
  1000083c4  ldr     x1, [x8, #0xdc0]
  1000083c8  mov     x0, x21
  1000083cc  mov     x2, x22
  1000083d0  bl      _objc_msgSend                            ; [NSKeyedArchiver archivedDataWithRootObject:[self activeMissions]]
  1000083d4  mov     x29, x29
  1000083d8  bl      _objc_retainAutoreleasedReturnValue
  1000083dc  mov     x21, x0
  1000083e0  mov     x0, x22
  1000083e4  bl      _objc_release
  1000083e8  adrp    x8, #0x100416000
  1000083ec  nop
  1000083f0  ldr     x1, [x8, #0xdc8]
  1000083f4  adrp    x3, #0x1003b9000
  1000083f8  add     x3, x3, #0xa90                           ; @"missionArray"
  1000083fc  mov     x0, x19
  100008400  mov     x2, x21
  100008404  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:[self activeMissions]] forKey:@"missionArray"]
  100008408  adrp    x8, #0x10041f000
  10000840c  ldrsw   x8, [x8, #0x4c4]                         ; ivar offset ADMissionManager.currentMissionIndex (+0x8)
  100008410  ldrsw   x2, [x20, x8]                            ; x2 = self->currentMissionIndex
  100008414  adrp    x8, #0x100416000
  100008418  nop
  10000841c  ldr     x1, [x8, #0xdd0]
  100008420  adrp    x3, #0x1003b9000
  100008424  add     x3, x3, #0xab0                           ; @"currentMissionIndex"
  100008428  mov     x0, x19
  10000842c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] setInteger:self->currentMissionIndex forKey:@"currentMissionIndex"]
  100008430  adrp    x8, #0x100416000
  100008434  nop
  100008438  ldr     x1, [x8, #0xdd8]
  10000843c  mov     x0, x19
  100008440  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] synchronize]
  100008444  mov     x0, x21
  100008448  bl      _objc_release
  10000844c  mov     x0, x19
  100008450  ldp     x29, x30, [sp, #0x20]
  100008454  ldp     x20, x19, [sp, #0x10]
  100008458  ldp     x22, x21, [sp], #0x30
  10000845c  b       _objc_release
  100008460  mov     x20, x0
  100008464  mov     x0, x21
  100008468  b       loc_10000847c
  10000846c  mov     x20, x0
  100008470  b       loc_100008480
  100008474  mov     x20, x0
  100008478  mov     x0, x22
loc_10000847c:
  10000847c  bl      _objc_release
loc_100008480:
  100008480  mov     x0, x19
  100008484  bl      _objc_release
  100008488  mov     x0, x20
  10000848c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager loadMissionProgress]
; address 0x100008490  size 284  kind objc
; ======================================================================
  100008490  stp     x22, x21, [sp, #-0x30]!
  100008494  stp     x20, x19, [sp, #0x10]
  100008498  stp     x29, x30, [sp, #0x20]
  10000849c  add     x29, sp, #0x20
  1000084a0  mov     x20, x0
  1000084a4  adrp    x8, #0x10041d000
  1000084a8  ldr     x0, [x8, #0xf38]                         ; class NSUserDefaults
  1000084ac  adrp    x8, #0x100416000
  1000084b0  nop
  1000084b4  ldr     x1, [x8, #0xd98]
  1000084b8  bl      _objc_msgSend                            ; [NSUserDefaults standardUserDefaults]
  1000084bc  mov     x29, x29
  1000084c0  bl      _objc_retainAutoreleasedReturnValue
  1000084c4  mov     x19, x0
  1000084c8  adrp    x8, #0x100416000
  1000084cc  nop
  1000084d0  ldr     x1, [x8, #0xda0]
  1000084d4  adrp    x2, #0x1003b9000
  1000084d8  add     x2, x2, #0xa90                           ; @"missionArray"
  1000084dc  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] valueForKey:@"missionArray"]
  1000084e0  mov     x29, x29
  1000084e4  bl      _objc_retainAutoreleasedReturnValue
  1000084e8  mov     x21, x0
  1000084ec  adrp    x8, #0x10041d000
  1000084f0  ldr     x0, [x8, #0xf48]                         ; class NSKeyedUnarchiver
  1000084f4  adrp    x8, #0x100416000
  1000084f8  nop
  1000084fc  ldr     x1, [x8, #0xde0]
  100008500  mov     x2, x21
  100008504  bl      _objc_msgSend                            ; [NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] valueForKey:@"missionArray"]]
  100008508  mov     x29, x29
  10000850c  bl      _objc_retainAutoreleasedReturnValue
  100008510  mov     x22, x0
  100008514  adrp    x8, #0x100416000
  100008518  nop
  10000851c  ldr     x1, [x8, #0xd70]
  100008520  mov     x0, x20
  100008524  mov     x2, x22
  100008528  bl      _objc_msgSend                            ; [self setActiveMissions:[NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] valueForKey:@"missionArray"]]]
  10000852c  mov     x0, x22
  100008530  bl      _objc_release
  100008534  adrp    x8, #0x100416000
  100008538  nop
  10000853c  ldr     x1, [x8, #0xde8]
  100008540  adrp    x2, #0x1003b9000
  100008544  add     x2, x2, #0xab0                           ; @"currentMissionIndex"
  100008548  mov     x0, x19
  10000854c  bl      _objc_msgSend                            ; [[NSUserDefaults standardUserDefaults] integerForKey:@"currentMissionIndex"]
  100008550  adrp    x8, #0x10041f000
  100008554  ldrsw   x8, [x8, #0x4c4]                         ; ivar offset ADMissionManager.currentMissionIndex (+0x8)
  100008558  str     w0, [x20, x8]                            ; self->currentMissionIndex = [[NSUserDefaults standardUserDefaults] integerForKey:@"currentMissionIndex"]
  10000855c  mov     x0, x21
  100008560  bl      _objc_release
  100008564  mov     x0, x19
  100008568  ldp     x29, x30, [sp, #0x20]
  10000856c  ldp     x20, x19, [sp, #0x10]
  100008570  ldp     x22, x21, [sp], #0x30
  100008574  b       _objc_release
  100008578  mov     x20, x0
  10000857c  b       loc_100008594
  100008580  mov     x20, x0
  100008584  b       loc_10000859c
  100008588  mov     x20, x0
  10000858c  mov     x0, x22
  100008590  bl      _objc_release
loc_100008594:
  100008594  mov     x0, x21
  100008598  bl      _objc_release
loc_10000859c:
  10000859c  mov     x0, x19
  1000085a0  bl      _objc_release
  1000085a4  mov     x0, x20
  1000085a8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager update:]
; address 0x1000085ac  size 108  kind objc
; ======================================================================
  1000085ac  stp     x20, x19, [sp, #-0x20]!
  1000085b0  stp     x29, x30, [sp, #0x10]
  1000085b4  add     x29, sp, #0x10
  1000085b8  adrp    x8, #0x10041d000
  1000085bc  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000085c0  adrp    x8, #0x100416000
  1000085c4  nop
  1000085c8  ldr     x1, [x8, #0xdf0]
  1000085cc  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000085d0  mov     x29, x29
  1000085d4  bl      _objc_retainAutoreleasedReturnValue
  1000085d8  mov     x19, x0
  1000085dc  adrp    x8, #0x100416000
  1000085e0  nop
  1000085e4  ldr     x1, [x8, #0xdf8]
  1000085e8  adrp    x2, #0x1003b9000
  1000085ec  add     x2, x2, #0xad0                           ; @"tutorial_5"
  1000085f0  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  1000085f4  mov     x0, x19
  1000085f8  ldp     x29, x30, [sp, #0x10]
  1000085fc  ldp     x20, x19, [sp], #0x20
  100008600  b       _objc_release
  100008604  mov     x20, x0
  100008608  mov     x0, x19
  10000860c  bl      _objc_release
  100008610  mov     x0, x20
  100008614  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager missionsCompleted]
; address 0x100008618  size 404  kind objc
; ======================================================================
  100008618  stp     x28, x27, [sp, #-0x60]!
  10000861c  stp     x26, x25, [sp, #0x10]
  100008620  stp     x24, x23, [sp, #0x20]
  100008624  stp     x22, x21, [sp, #0x30]
  100008628  stp     x20, x19, [sp, #0x40]
  10000862c  stp     x29, x30, [sp, #0x50]
  100008630  add     x29, sp, #0x50
  100008634  sub     sp, sp, #0xd0
  100008638  adrp    x24, #0x1003b0000
  10000863c  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100008640  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  100008644  stur    x24, [x29, #-0x58]
  100008648  stp     xzr, xzr, [sp, #0x38]
  10000864c  stp     xzr, xzr, [sp, #0x28]
  100008650  stp     xzr, xzr, [sp, #0x18]
  100008654  stp     xzr, xzr, [sp, #8]
  100008658  adrp    x8, #0x100416000
  10000865c  nop
  100008660  ldr     x1, [x8, #0xd88]
  100008664  bl      _objc_msgSend                            ; [self activeMissions]
  100008668  mov     x29, x29
  10000866c  bl      _objc_retainAutoreleasedReturnValue
  100008670  mov     x19, x0
  100008674  adrp    x8, #0x100416000
  100008678  nop
  10000867c  ldr     x21, [x8, #0xe00]
  100008680  add     x2, sp, #8
  100008684  add     x3, sp, #0x48
  100008688  mov     w4, #0x10
  10000868c  mov     x1, x21
  100008690  bl      _objc_msgSend                            ; [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100008694  mov     x22, x0
  100008698  mov     w20, #0
  10000869c  cbz     x22, loc_100008710                       ; if ([[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000086a0  ldr     x8, [sp, #0x18]
  1000086a4  ldr     x25, [x8]
  1000086a8  adrp    x8, #0x100416000
  1000086ac  add     x8, x8, #0xe08                           ; &@selector(isMissionCompleted)
  1000086b0  ldr     x23, [x8]
loc_1000086b4:
  1000086b4  mov     x26, #0
loc_1000086b8:
  1000086b8  ldr     x8, [sp, #0x18]
  1000086bc  ldr     x8, [x8]
  1000086c0  cmp     x8, x25
  1000086c4  b.eq    loc_1000086d0                            ; if (x8 == x25)
  1000086c8  mov     x0, x19
  1000086cc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self activeMissions])
loc_1000086d0:
  1000086d0  ldr     x8, [sp, #0x10]
  1000086d4  ldr     x0, [x8, x26, lsl #3]
  1000086d8  mov     x1, x23
  1000086dc  bl      _objc_msgSend                            ; [x0 isMissionCompleted]
  1000086e0  add     w20, w0, w20
  1000086e4  add     x26, x26, #1
  1000086e8  cmp     x26, x22
  1000086ec  b.lo    loc_1000086b8                            ; if ((x26 + 1) <u [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000086f0  add     x2, sp, #8
  1000086f4  add     x3, sp, #0x48
  1000086f8  mov     w4, #0x10
  1000086fc  mov     x0, x19
  100008700  mov     x1, x21
  100008704  bl      _objc_msgSend                            ; [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100008708  mov     x22, x0
  10000870c  cbnz    x22, loc_1000086b4                       ; if ([[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100008710:
  100008710  mov     x0, x19
  100008714  bl      _objc_release
  100008718  adrp    x8, #0x10041d000
  10000871c  ldr     x0, [x8, #0xf58]                         ; class ADPersistentStats
  100008720  adrp    x8, #0x100416000
  100008724  nop
  100008728  ldr     x1, [x8, #0xe10]
  10000872c  bl      _objc_msgSend                            ; [ADPersistentStats persistentStats]
  100008730  mov     x29, x29
  100008734  bl      _objc_retainAutoreleasedReturnValue
  100008738  mov     x19, x0
  10000873c  sxtw    x2, w20
  100008740  adrp    x8, #0x100416000
  100008744  nop
  100008748  ldr     x1, [x8, #0xe18]
  10000874c  bl      _objc_msgSend                            ; [[ADPersistentStats persistentStats] updateMissionsCompleted:x2]
  100008750  mov     x0, x19
  100008754  bl      _objc_release
  100008758  ldur    x8, [x29, #-0x58]
  10000875c  sub     x8, x24, x8
  100008760  cbnz    x8, loc_100008788                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100008764  mov     x0, x20
  100008768  sub     sp, x29, #0x50
  10000876c  ldp     x29, x30, [sp, #0x50]
  100008770  ldp     x20, x19, [sp, #0x40]
  100008774  ldp     x22, x21, [sp, #0x30]
  100008778  ldp     x24, x23, [sp, #0x20]
  10000877c  ldp     x26, x25, [sp, #0x10]
  100008780  ldp     x28, x27, [sp], #0x60
  100008784  ret
loc_100008788:
  100008788  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000878c:
  10000878c  mov     x20, x0
  100008790  mov     x0, x19
  100008794  bl      _objc_release
  100008798  mov     x0, x20
  10000879c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000087a0  b       loc_10000878c
  1000087a4  b       loc_10000878c
  1000087a8  b       loc_10000878c

; ======================================================================
; -[ADMissionManager replaceMission:]
; address 0x1000087ac  size 288  kind objc
; ======================================================================
  1000087ac  stp     x22, x21, [sp, #-0x30]!
  1000087b0  stp     x20, x19, [sp, #0x10]
  1000087b4  stp     x29, x30, [sp, #0x20]
  1000087b8  add     x29, sp, #0x20
  1000087bc  mov     x20, x0
  1000087c0  mov     x0, x2
  1000087c4  bl      _objc_retain
  1000087c8  mov     x19, x0
  1000087cc  adrp    x8, #0x100416000
  1000087d0  nop
  1000087d4  ldr     x22, [x8, #0xd88]
  1000087d8  mov     x0, x20
  1000087dc  mov     x1, x22
  1000087e0  bl      _objc_msgSend                            ; [self activeMissions]
  1000087e4  mov     x29, x29
  1000087e8  bl      _objc_retainAutoreleasedReturnValue
  1000087ec  mov     x21, x0
  1000087f0  adrp    x8, #0x100416000
  1000087f4  nop
  1000087f8  ldr     x1, [x8, #0xe20]
  1000087fc  mov     x2, x19
  100008800  bl      _objc_msgSend                            ; [[self activeMissions] removeObject:arg1]
  100008804  mov     x0, x21
  100008808  bl      _objc_release
  10000880c  adrp    x8, #0x100416000
  100008810  nop
  100008814  ldr     x1, [x8, #0xe28]
  100008818  mov     x0, x20
  10000881c  bl      _objc_msgSend                            ; [self getNextMission]
  100008820  mov     x29, x29
  100008824  bl      _objc_retainAutoreleasedReturnValue
  100008828  mov     x21, x0
  10000882c  mov     x0, x20
  100008830  mov     x1, x22
  100008834  bl      _objc_msgSend                            ; [self activeMissions]
  100008838  mov     x29, x29
  10000883c  bl      _objc_retainAutoreleasedReturnValue
  100008840  mov     x22, x0
  100008844  adrp    x8, #0x100416000
  100008848  nop
  10000884c  ldr     x1, [x8, #0xd90]
  100008850  mov     x2, x21
  100008854  bl      _objc_msgSend                            ; [[self activeMissions] addObject:[self getNextMission]]
  100008858  mov     x0, x22
  10000885c  bl      _objc_release
  100008860  adrp    x8, #0x100416000
  100008864  nop
  100008868  ldr     x1, [x8, #0xdb0]
  10000886c  mov     x0, x20
  100008870  bl      _objc_msgSend                            ; [self saveMissionProgress]
  100008874  mov     x0, x19
  100008878  bl      _objc_release
  10000887c  mov     x0, x21
  100008880  ldp     x29, x30, [sp, #0x20]
  100008884  ldp     x20, x19, [sp, #0x10]
  100008888  ldp     x22, x21, [sp], #0x30
  10000888c  b       _objc_autoreleaseReturnValue
  100008890  mov     x20, x0
  100008894  b       loc_1000088bc
  100008898  mov     x20, x0
  10000889c  b       loc_1000088b4
  1000088a0  mov     x20, x0
  1000088a4  b       loc_1000088b4
  1000088a8  mov     x20, x0
  1000088ac  mov     x0, x22
  1000088b0  bl      _objc_release
loc_1000088b4:
  1000088b4  mov     x0, x21
  1000088b8  bl      _objc_release
loc_1000088bc:
  1000088bc  mov     x0, x19
  1000088c0  bl      _objc_release
  1000088c4  mov     x0, x20
  1000088c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager getNextMission]
; address 0x1000088cc  size 340  kind objc
; ======================================================================
  1000088cc  stp     x24, x23, [sp, #-0x40]!
  1000088d0  stp     x22, x21, [sp, #0x10]
  1000088d4  stp     x20, x19, [sp, #0x20]
  1000088d8  stp     x29, x30, [sp, #0x30]
  1000088dc  add     x29, sp, #0x30
  1000088e0  mov     x19, x0
  1000088e4  adrp    x8, #0x10041d000
  1000088e8  ldr     x0, [x8, #0xf30]                         ; class ADMission
  1000088ec  adrp    x8, #0x100416000
  1000088f0  nop
  1000088f4  ldr     x1, [x8, #0xac8]
  1000088f8  bl      _objc_msgSend                            ; [ADMission alloc]
  1000088fc  mov     x20, x0
  100008900  adrp    x8, #0x100416000
  100008904  nop
  100008908  ldr     x21, [x8, #0xd78]
  10000890c  mov     x0, x19
  100008910  mov     x1, x21
  100008914  bl      _objc_msgSend                            ; [self missionArray]
  100008918  mov     x29, x29
  10000891c  bl      _objc_retainAutoreleasedReturnValue
  100008920  mov     x22, x0
  100008924  adrp    x8, #0x10041f000
  100008928  ldrsw   x24, [x8, #0x4c4]                        ; ivar offset ADMissionManager.currentMissionIndex (+0x8)
  10000892c  ldrsw   x2, [x19, x24]                           ; x2 = self->currentMissionIndex
  100008930  adrp    x8, #0x100416000
  100008934  nop
  100008938  ldr     x1, [x8, #0xc30]
  10000893c  bl      _objc_msgSend                            ; [[self missionArray] objectAtIndex:self->currentMissionIndex]
  100008940  mov     x29, x29
  100008944  bl      _objc_retainAutoreleasedReturnValue
  100008948  mov     x23, x0
  10000894c  adrp    x8, #0x100416000
  100008950  nop
  100008954  ldr     x1, [x8, #0xd80]
  100008958  mov     x0, x20
  10000895c  mov     x2, x23
  100008960  bl      _objc_msgSend                            ; [[ADMission alloc] initWithDictionary:[[self missionArray] objectAtIndex:self->currentMissionIndex]]
  100008964  mov     x20, x0
  100008968  mov     x0, x23
  10000896c  bl      _objc_release
  100008970  mov     x0, x22
  100008974  bl      _objc_release
  100008978  ldr     w8, [x19, x24]                           ; w8 = self->currentMissionIndex
  10000897c  add     w23, w8, #1
  100008980  str     w23, [x19, x24]                          ; self->currentMissionIndex = (self->currentMissionIndex + 1)
  100008984  mov     x0, x19
  100008988  mov     x1, x21
  10000898c  bl      _objc_msgSend                            ; [self missionArray]
  100008990  mov     x29, x29
  100008994  bl      _objc_retainAutoreleasedReturnValue
  100008998  mov     x21, x0
  10000899c  adrp    x8, #0x100416000
  1000089a0  nop
  1000089a4  ldr     x1, [x8, #0xe30]
  1000089a8  bl      _objc_msgSend                            ; [[self missionArray] count]
  1000089ac  mov     x22, x0
  1000089b0  sxtw    x23, w23
  1000089b4  mov     x0, x21
  1000089b8  bl      _objc_release
  1000089bc  cmp     x23, x22
  1000089c0  b.lo    loc_1000089c8                            ; if ((self->currentMissionIndex + 1) <u [[self missionArray] count])
  1000089c4  str     wzr, [x19, x24]                          ; self->currentMissionIndex = 0
loc_1000089c8:
  1000089c8  mov     x0, x20
  1000089cc  ldp     x29, x30, [sp, #0x30]
  1000089d0  ldp     x20, x19, [sp, #0x20]
  1000089d4  ldp     x22, x21, [sp, #0x10]
  1000089d8  ldp     x24, x23, [sp], #0x40
  1000089dc  b       _objc_autoreleaseReturnValue
  1000089e0  mov     x19, x0
  1000089e4  b       loc_1000089f4
  1000089e8  mov     x19, x0
  1000089ec  mov     x0, x23
  1000089f0  bl      _objc_release
loc_1000089f4:
  1000089f4  mov     x0, x22
  1000089f8  b       loc_100008a14
  1000089fc  mov     x19, x0
  100008a00  b       loc_100008a10
  100008a04  mov     x19, x0
  100008a08  mov     x0, x21
  100008a0c  bl      _objc_release
loc_100008a10:
  100008a10  mov     x0, x20
loc_100008a14:
  100008a14  bl      _objc_release
  100008a18  mov     x0, x19
  100008a1c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager enemiKilled:withWeapon:]
; address 0x100008a20  size 496  kind objc
; ======================================================================
  100008a20  stp     x28, x27, [sp, #-0x60]!
  100008a24  stp     x26, x25, [sp, #0x10]
  100008a28  stp     x24, x23, [sp, #0x20]
  100008a2c  stp     x22, x21, [sp, #0x30]
  100008a30  stp     x20, x19, [sp, #0x40]
  100008a34  stp     x29, x30, [sp, #0x50]
  100008a38  add     x29, sp, #0x50
  100008a3c  sub     sp, sp, #0xd0
  100008a40  mov     x20, x3
  100008a44  mov     x21, x0
  100008a48  adrp    x25, #0x1003b0000
  100008a4c  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  100008a50  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  100008a54  stur    x25, [x29, #-0x58]
  100008a58  mov     x0, x2
  100008a5c  bl      _objc_retain
  100008a60  mov     x19, x0
  100008a64  mov     x0, x20
  100008a68  bl      _objc_retain
  100008a6c  mov     x20, x0
  100008a70  adrp    x8, #0x10041d000
  100008a74  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100008a78  adrp    x8, #0x100416000
  100008a7c  nop
  100008a80  ldr     x1, [x8, #0xdf0]
  100008a84  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100008a88  mov     x29, x29
  100008a8c  bl      _objc_retainAutoreleasedReturnValue
  100008a90  mov     x23, x0
  100008a94  adrp    x8, #0x100416000
  100008a98  nop
  100008a9c  ldr     x1, [x8, #0xdf8]
  100008aa0  adrp    x2, #0x1003b9000
  100008aa4  add     x2, x2, #0xad0                           ; @"tutorial_5"
  100008aa8  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100008aac  mov     x22, x0
  100008ab0  mov     x0, x23
  100008ab4  bl      _objc_release
  100008ab8  tbz     w22, #0, loc_100008b90                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100008abc  stp     xzr, xzr, [sp, #0x38]
  100008ac0  stp     xzr, xzr, [sp, #0x28]
  100008ac4  stp     xzr, xzr, [sp, #0x18]
  100008ac8  stp     xzr, xzr, [sp, #8]
  100008acc  adrp    x8, #0x100416000
  100008ad0  nop
  100008ad4  ldr     x1, [x8, #0xd88]
  100008ad8  mov     x0, x21
  100008adc  bl      _objc_msgSend                            ; [self activeMissions]
  100008ae0  mov     x29, x29
  100008ae4  bl      _objc_retainAutoreleasedReturnValue
  100008ae8  mov     x21, x0
  100008aec  adrp    x8, #0x100416000
  100008af0  nop
  100008af4  ldr     x22, [x8, #0xe00]
  100008af8  add     x2, sp, #8
  100008afc  add     x3, sp, #0x48
  100008b00  mov     w4, #0x10
  100008b04  mov     x1, x22
  100008b08  bl      _objc_msgSend                            ; [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100008b0c  mov     x23, x0
  100008b10  cbz     x23, loc_100008b88                       ; if ([[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100008b14  ldr     x8, [sp, #0x18]
  100008b18  ldr     x26, [x8]
  100008b1c  adrp    x8, #0x100416000
  100008b20  add     x8, x8, #0xe38                           ; &@selector(enemiKilled:withWeapon:)
  100008b24  ldr     x24, [x8]
loc_100008b28:
  100008b28  mov     x27, #0
loc_100008b2c:
  100008b2c  ldr     x8, [sp, #0x18]
  100008b30  ldr     x8, [x8]
  100008b34  cmp     x8, x26
  100008b38  b.eq    loc_100008b44                            ; if (x8 == x26)
  100008b3c  mov     x0, x21
  100008b40  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self activeMissions])
loc_100008b44:
  100008b44  ldr     x8, [sp, #0x10]
  100008b48  ldr     x0, [x8, x27, lsl #3]
  100008b4c  mov     x1, x24
  100008b50  mov     x2, x19
  100008b54  mov     x3, x20
  100008b58  bl      _objc_msgSend                            ; [x0 enemiKilled:arg1 withWeapon:arg2]
  100008b5c  add     x27, x27, #1
  100008b60  cmp     x27, x23
  100008b64  b.lo    loc_100008b2c                            ; if ((x27 + 1) <u [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100008b68  add     x2, sp, #8
  100008b6c  add     x3, sp, #0x48
  100008b70  mov     w4, #0x10
  100008b74  mov     x0, x21
  100008b78  mov     x1, x22
  100008b7c  bl      _objc_msgSend                            ; [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100008b80  mov     x23, x0
  100008b84  cbnz    x23, loc_100008b28                       ; if ([[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100008b88:
  100008b88  mov     x0, x21
  100008b8c  bl      _objc_release
loc_100008b90:
  100008b90  mov     x0, x20
  100008b94  bl      _objc_release
  100008b98  mov     x0, x19
  100008b9c  bl      _objc_release
  100008ba0  ldur    x8, [x29, #-0x58]
  100008ba4  sub     x8, x25, x8
  100008ba8  cbnz    x8, loc_100008bcc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100008bac  sub     sp, x29, #0x50
  100008bb0  ldp     x29, x30, [sp, #0x50]
  100008bb4  ldp     x20, x19, [sp, #0x40]
  100008bb8  ldp     x22, x21, [sp, #0x30]
  100008bbc  ldp     x24, x23, [sp, #0x20]
  100008bc0  ldp     x26, x25, [sp, #0x10]
  100008bc4  ldp     x28, x27, [sp], #0x60
  100008bc8  ret
loc_100008bcc:
  100008bcc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100008bd0:
  100008bd0  mov     x22, x0
  100008bd4  mov     x0, x21
loc_100008bd8:
  100008bd8  bl      _objc_release
loc_100008bdc:
  100008bdc  mov     x0, x20
  100008be0  bl      _objc_release
  100008be4  mov     x0, x19
  100008be8  bl      _objc_release
  100008bec  mov     x0, x22
  100008bf0  bl      __Unwind_Resume                          ; Unwind_Resume()
  100008bf4  b       loc_100008bd0
  100008bf8  mov     x22, x0
  100008bfc  b       loc_100008bdc
  100008c00  mov     x22, x0
  100008c04  mov     x0, x23
  100008c08  b       loc_100008bd8
  100008c0c  b       loc_100008bd0

; ======================================================================
; -[ADMissionManager upgradeWeaponToLevel:]
; address 0x100008c10  size 224  kind objc
; ======================================================================
  100008c10  stp     x22, x21, [sp, #-0x30]!
  100008c14  stp     x20, x19, [sp, #0x10]
  100008c18  stp     x29, x30, [sp, #0x20]
  100008c1c  add     x29, sp, #0x20
  100008c20  mov     x19, x0
  100008c24  adrp    x8, #0x10041d000
  100008c28  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100008c2c  adrp    x8, #0x100416000
  100008c30  nop
  100008c34  ldr     x1, [x8, #0xdf0]
  100008c38  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100008c3c  mov     x29, x29
  100008c40  bl      _objc_retainAutoreleasedReturnValue
  100008c44  mov     x20, x0
  100008c48  adrp    x8, #0x100416000
  100008c4c  nop
  100008c50  ldr     x1, [x8, #0xdf8]
  100008c54  adrp    x2, #0x1003b9000
  100008c58  add     x2, x2, #0xad0                           ; @"tutorial_5"
  100008c5c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100008c60  mov     x21, x0
  100008c64  mov     x0, x20
  100008c68  bl      _objc_release
  100008c6c  tbz     w21, #0, loc_100008cc0                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100008c70  adrp    x8, #0x100416000
  100008c74  nop
  100008c78  ldr     x1, [x8, #0xd88]
  100008c7c  mov     x0, x19
  100008c80  bl      _objc_msgSend                            ; [self activeMissions]
  100008c84  mov     x29, x29
  100008c88  bl      _objc_retainAutoreleasedReturnValue
  100008c8c  mov     x19, x0
  100008c90  adrp    x8, #0x100416000
  100008c94  nop
  100008c98  ldr     x2, [x8, #0xe40]
  100008c9c  adrp    x8, #0x100416000
  100008ca0  nop
  100008ca4  ldr     x1, [x8, #0xe48]
  100008ca8  bl      _objc_msgSend                            ; [[self activeMissions] makeObjectsPerformSelector:@selector(playerUpgradedWeapon)]
  100008cac  mov     x0, x19
  100008cb0  ldp     x29, x30, [sp, #0x20]
  100008cb4  ldp     x20, x19, [sp, #0x10]
  100008cb8  ldp     x22, x21, [sp], #0x30
  100008cbc  b       _objc_release
loc_100008cc0:
  100008cc0  ldp     x29, x30, [sp, #0x20]
  100008cc4  ldp     x20, x19, [sp, #0x10]
  100008cc8  ldp     x22, x21, [sp], #0x30
  100008ccc  ret
  100008cd0  mov     x21, x0
  100008cd4  mov     x0, x20
  100008cd8  b       loc_100008ce4
  100008cdc  mov     x21, x0
  100008ce0  mov     x0, x19
loc_100008ce4:
  100008ce4  bl      _objc_release
  100008ce8  mov     x0, x21
  100008cec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager startGameplay]
; address 0x100008cf0  size 224  kind objc
; ======================================================================
  100008cf0  stp     x22, x21, [sp, #-0x30]!
  100008cf4  stp     x20, x19, [sp, #0x10]
  100008cf8  stp     x29, x30, [sp, #0x20]
  100008cfc  add     x29, sp, #0x20
  100008d00  mov     x19, x0
  100008d04  adrp    x8, #0x10041d000
  100008d08  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100008d0c  adrp    x8, #0x100416000
  100008d10  nop
  100008d14  ldr     x1, [x8, #0xdf0]
  100008d18  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100008d1c  mov     x29, x29
  100008d20  bl      _objc_retainAutoreleasedReturnValue
  100008d24  mov     x20, x0
  100008d28  adrp    x8, #0x100416000
  100008d2c  nop
  100008d30  ldr     x1, [x8, #0xdf8]
  100008d34  adrp    x2, #0x1003b9000
  100008d38  add     x2, x2, #0xad0                           ; @"tutorial_5"
  100008d3c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100008d40  mov     x21, x0
  100008d44  mov     x0, x20
  100008d48  bl      _objc_release
  100008d4c  tbz     w21, #0, loc_100008da0                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100008d50  adrp    x8, #0x100416000
  100008d54  nop
  100008d58  ldr     x1, [x8, #0xd88]
  100008d5c  mov     x0, x19
  100008d60  bl      _objc_msgSend                            ; [self activeMissions]
  100008d64  mov     x29, x29
  100008d68  bl      _objc_retainAutoreleasedReturnValue
  100008d6c  mov     x19, x0
  100008d70  adrp    x8, #0x100416000
  100008d74  nop
  100008d78  ldr     x2, [x8, #0xe50]
  100008d7c  adrp    x8, #0x100416000
  100008d80  nop
  100008d84  ldr     x1, [x8, #0xe48]
  100008d88  bl      _objc_msgSend                            ; [[self activeMissions] makeObjectsPerformSelector:@selector(startGameplay)]
  100008d8c  mov     x0, x19
  100008d90  ldp     x29, x30, [sp, #0x20]
  100008d94  ldp     x20, x19, [sp, #0x10]
  100008d98  ldp     x22, x21, [sp], #0x30
  100008d9c  b       _objc_release
loc_100008da0:
  100008da0  ldp     x29, x30, [sp, #0x20]
  100008da4  ldp     x20, x19, [sp, #0x10]
  100008da8  ldp     x22, x21, [sp], #0x30
  100008dac  ret
  100008db0  mov     x21, x0
  100008db4  mov     x0, x20
  100008db8  b       loc_100008dc4
  100008dbc  mov     x21, x0
  100008dc0  mov     x0, x19
loc_100008dc4:
  100008dc4  bl      _objc_release
  100008dc8  mov     x0, x21
  100008dcc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager endGameplay]
; address 0x100008dd0  size 256  kind objc
; ======================================================================
  100008dd0  stp     x22, x21, [sp, #-0x30]!
  100008dd4  stp     x20, x19, [sp, #0x10]
  100008dd8  stp     x29, x30, [sp, #0x20]
  100008ddc  add     x29, sp, #0x20
  100008de0  mov     x19, x0
  100008de4  adrp    x8, #0x10041d000
  100008de8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100008dec  adrp    x8, #0x100416000
  100008df0  nop
  100008df4  ldr     x1, [x8, #0xdf0]
  100008df8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100008dfc  mov     x29, x29
  100008e00  bl      _objc_retainAutoreleasedReturnValue
  100008e04  mov     x20, x0
  100008e08  adrp    x8, #0x100416000
  100008e0c  nop
  100008e10  ldr     x1, [x8, #0xdf8]
  100008e14  adrp    x2, #0x1003b9000
  100008e18  add     x2, x2, #0xad0                           ; @"tutorial_5"
  100008e1c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100008e20  mov     x21, x0
  100008e24  mov     x0, x20
  100008e28  bl      _objc_release
  100008e2c  tbz     w21, #0, loc_100008ea8                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100008e30  adrp    x8, #0x100416000
  100008e34  nop
  100008e38  ldr     x1, [x8, #0xd88]
  100008e3c  mov     x0, x19
  100008e40  bl      _objc_msgSend                            ; [self activeMissions]
  100008e44  mov     x29, x29
  100008e48  bl      _objc_retainAutoreleasedReturnValue
  100008e4c  mov     x20, x0
  100008e50  adrp    x8, #0x100416000
  100008e54  nop
  100008e58  ldr     x2, [x8, #0xe58]
  100008e5c  adrp    x8, #0x100416000
  100008e60  nop
  100008e64  ldr     x1, [x8, #0xe48]
  100008e68  bl      _objc_msgSend                            ; [[self activeMissions] makeObjectsPerformSelector:@selector(endGameplay)]
  100008e6c  mov     x0, x20
  100008e70  bl      _objc_release
  100008e74  adrp    x8, #0x100416000
  100008e78  nop
  100008e7c  ldr     x1, [x8, #0xe60]
  100008e80  mov     x0, x19
  100008e84  bl      _objc_msgSend                            ; [self missionsCompleted]
  100008e88  adrp    x8, #0x100416000
  100008e8c  nop
  100008e90  ldr     x1, [x8, #0xdb0]
  100008e94  mov     x0, x19
  100008e98  ldp     x29, x30, [sp, #0x20]
  100008e9c  ldp     x20, x19, [sp, #0x10]
  100008ea0  ldp     x22, x21, [sp], #0x30
  100008ea4  b       _objc_msgSend                            ; [self saveMissionProgress]
loc_100008ea8:
  100008ea8  ldp     x29, x30, [sp, #0x20]
  100008eac  ldp     x20, x19, [sp, #0x10]
  100008eb0  ldp     x22, x21, [sp], #0x30
  100008eb4  ret
  100008eb8  b       loc_100008ebc
loc_100008ebc:
  100008ebc  mov     x19, x0
  100008ec0  mov     x0, x20
  100008ec4  bl      _objc_release
  100008ec8  mov     x0, x19
  100008ecc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager playerSwappedWeapon]
; address 0x100008ed0  size 224  kind objc
; ======================================================================
  100008ed0  stp     x22, x21, [sp, #-0x30]!
  100008ed4  stp     x20, x19, [sp, #0x10]
  100008ed8  stp     x29, x30, [sp, #0x20]
  100008edc  add     x29, sp, #0x20
  100008ee0  mov     x19, x0
  100008ee4  adrp    x8, #0x10041d000
  100008ee8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100008eec  adrp    x8, #0x100416000
  100008ef0  nop
  100008ef4  ldr     x1, [x8, #0xdf0]
  100008ef8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100008efc  mov     x29, x29
  100008f00  bl      _objc_retainAutoreleasedReturnValue
  100008f04  mov     x20, x0
  100008f08  adrp    x8, #0x100416000
  100008f0c  nop
  100008f10  ldr     x1, [x8, #0xdf8]
  100008f14  adrp    x2, #0x1003b9000
  100008f18  add     x2, x2, #0xad0                           ; @"tutorial_5"
  100008f1c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100008f20  mov     x21, x0
  100008f24  mov     x0, x20
  100008f28  bl      _objc_release
  100008f2c  tbz     w21, #0, loc_100008f80                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100008f30  adrp    x8, #0x100416000
  100008f34  nop
  100008f38  ldr     x1, [x8, #0xd88]
  100008f3c  mov     x0, x19
  100008f40  bl      _objc_msgSend                            ; [self activeMissions]
  100008f44  mov     x29, x29
  100008f48  bl      _objc_retainAutoreleasedReturnValue
  100008f4c  mov     x19, x0
  100008f50  adrp    x8, #0x100416000
  100008f54  nop
  100008f58  ldr     x2, [x8, #0xe68]
  100008f5c  adrp    x8, #0x100416000
  100008f60  nop
  100008f64  ldr     x1, [x8, #0xe48]
  100008f68  bl      _objc_msgSend                            ; [[self activeMissions] makeObjectsPerformSelector:@selector(playerSwappedWeapon)]
  100008f6c  mov     x0, x19
  100008f70  ldp     x29, x30, [sp, #0x20]
  100008f74  ldp     x20, x19, [sp, #0x10]
  100008f78  ldp     x22, x21, [sp], #0x30
  100008f7c  b       _objc_release
loc_100008f80:
  100008f80  ldp     x29, x30, [sp, #0x20]
  100008f84  ldp     x20, x19, [sp, #0x10]
  100008f88  ldp     x22, x21, [sp], #0x30
  100008f8c  ret
  100008f90  mov     x21, x0
  100008f94  mov     x0, x20
  100008f98  b       loc_100008fa4
  100008f9c  mov     x21, x0
  100008fa0  mov     x0, x19
loc_100008fa4:
  100008fa4  bl      _objc_release
  100008fa8  mov     x0, x21
  100008fac  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager playerMissedAShot]
; address 0x100008fb0  size 224  kind objc
; ======================================================================
  100008fb0  stp     x22, x21, [sp, #-0x30]!
  100008fb4  stp     x20, x19, [sp, #0x10]
  100008fb8  stp     x29, x30, [sp, #0x20]
  100008fbc  add     x29, sp, #0x20
  100008fc0  mov     x19, x0
  100008fc4  adrp    x8, #0x10041d000
  100008fc8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  100008fcc  adrp    x8, #0x100416000
  100008fd0  nop
  100008fd4  ldr     x1, [x8, #0xdf0]
  100008fd8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  100008fdc  mov     x29, x29
  100008fe0  bl      _objc_retainAutoreleasedReturnValue
  100008fe4  mov     x20, x0
  100008fe8  adrp    x8, #0x100416000
  100008fec  nop
  100008ff0  ldr     x1, [x8, #0xdf8]
  100008ff4  adrp    x2, #0x1003b9000
  100008ff8  add     x2, x2, #0xad0                           ; @"tutorial_5"
  100008ffc  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100009000  mov     x21, x0
  100009004  mov     x0, x20
  100009008  bl      _objc_release
  10000900c  tbz     w21, #0, loc_100009060                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100009010  adrp    x8, #0x100416000
  100009014  nop
  100009018  ldr     x1, [x8, #0xd88]
  10000901c  mov     x0, x19
  100009020  bl      _objc_msgSend                            ; [self activeMissions]
  100009024  mov     x29, x29
  100009028  bl      _objc_retainAutoreleasedReturnValue
  10000902c  mov     x19, x0
  100009030  adrp    x8, #0x100416000
  100009034  nop
  100009038  ldr     x2, [x8, #0xe70]
  10000903c  adrp    x8, #0x100416000
  100009040  nop
  100009044  ldr     x1, [x8, #0xe48]
  100009048  bl      _objc_msgSend                            ; [[self activeMissions] makeObjectsPerformSelector:@selector(playerMissedAShot)]
  10000904c  mov     x0, x19
  100009050  ldp     x29, x30, [sp, #0x20]
  100009054  ldp     x20, x19, [sp, #0x10]
  100009058  ldp     x22, x21, [sp], #0x30
  10000905c  b       _objc_release
loc_100009060:
  100009060  ldp     x29, x30, [sp, #0x20]
  100009064  ldp     x20, x19, [sp, #0x10]
  100009068  ldp     x22, x21, [sp], #0x30
  10000906c  ret
  100009070  mov     x21, x0
  100009074  mov     x0, x20
  100009078  b       loc_100009084
  10000907c  mov     x21, x0
  100009080  mov     x0, x19
loc_100009084:
  100009084  bl      _objc_release
  100009088  mov     x0, x21
  10000908c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager playerShotWithWeapon:hitEnemi:]
; address 0x100009090  size 468  kind objc
; ======================================================================
  100009090  stp     x28, x27, [sp, #-0x60]!
  100009094  stp     x26, x25, [sp, #0x10]
  100009098  stp     x24, x23, [sp, #0x20]
  10000909c  stp     x22, x21, [sp, #0x30]
  1000090a0  stp     x20, x19, [sp, #0x40]
  1000090a4  stp     x29, x30, [sp, #0x50]
  1000090a8  add     x29, sp, #0x50
  1000090ac  sub     sp, sp, #0xd0
  1000090b0  mov     x20, x3
  1000090b4  mov     x21, x0
  1000090b8  adrp    x25, #0x1003b0000
  1000090bc  ldr     x25, [x25, #0x1d8]                       ; ___stack_chk_guard
  1000090c0  ldr     x25, [x25]                               ; x25 = ___stack_chk_guard[+0x0]
  1000090c4  stur    x25, [x29, #-0x58]
  1000090c8  mov     x0, x2
  1000090cc  bl      _objc_retain
  1000090d0  mov     x19, x0
  1000090d4  adrp    x8, #0x10041d000
  1000090d8  ldr     x0, [x8, #0xf50]                         ; class ADChallengeData
  1000090dc  adrp    x8, #0x100416000
  1000090e0  nop
  1000090e4  ldr     x1, [x8, #0xdf0]
  1000090e8  bl      _objc_msgSend                            ; [ADChallengeData sharedChallengeData]
  1000090ec  mov     x29, x29
  1000090f0  bl      _objc_retainAutoreleasedReturnValue
  1000090f4  mov     x22, x0
  1000090f8  adrp    x8, #0x100416000
  1000090fc  nop
  100009100  ldr     x1, [x8, #0xdf8]
  100009104  adrp    x2, #0x1003b9000
  100009108  add     x2, x2, #0xad0                           ; @"tutorial_5"
  10000910c  bl      _objc_msgSend                            ; [[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"]
  100009110  mov     x23, x0
  100009114  mov     x0, x22
  100009118  bl      _objc_release
  10000911c  tbz     w23, #0, loc_1000091f4                   ; if (!([[ADChallengeData sharedChallengeData] hasCompletedChallengeWithName:@"tutorial_5"] & 1))
  100009120  stp     xzr, xzr, [sp, #0x38]
  100009124  stp     xzr, xzr, [sp, #0x28]
  100009128  stp     xzr, xzr, [sp, #0x18]
  10000912c  stp     xzr, xzr, [sp, #8]
  100009130  adrp    x8, #0x100416000
  100009134  nop
  100009138  ldr     x1, [x8, #0xd88]
  10000913c  mov     x0, x21
  100009140  bl      _objc_msgSend                            ; [self activeMissions]
  100009144  mov     x29, x29
  100009148  bl      _objc_retainAutoreleasedReturnValue
  10000914c  mov     x21, x0
  100009150  adrp    x8, #0x100416000
  100009154  nop
  100009158  ldr     x22, [x8, #0xe00]
  10000915c  add     x2, sp, #8
  100009160  add     x3, sp, #0x48
  100009164  mov     w4, #0x10
  100009168  mov     x1, x22
  10000916c  bl      _objc_msgSend                            ; [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100009170  mov     x23, x0
  100009174  cbz     x23, loc_1000091ec                       ; if ([[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100009178  ldr     x8, [sp, #0x18]
  10000917c  ldr     x26, [x8]
  100009180  adrp    x8, #0x100416000
  100009184  add     x8, x8, #0xe78                           ; &@selector(playerShotWithWeapon:hitEnemi:)
  100009188  ldr     x24, [x8]
loc_10000918c:
  10000918c  mov     x27, #0
loc_100009190:
  100009190  ldr     x8, [sp, #0x18]
  100009194  ldr     x8, [x8]
  100009198  cmp     x8, x26
  10000919c  b.eq    loc_1000091a8                            ; if (x8 == x26)
  1000091a0  mov     x0, x21
  1000091a4  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self activeMissions])
loc_1000091a8:
  1000091a8  ldr     x8, [sp, #0x10]
  1000091ac  ldr     x0, [x8, x27, lsl #3]
  1000091b0  mov     x1, x24
  1000091b4  mov     x2, x19
  1000091b8  mov     x3, x20
  1000091bc  bl      _objc_msgSend                            ; [x0 playerShotWithWeapon:arg1 hitEnemi:arg2]
  1000091c0  add     x27, x27, #1
  1000091c4  cmp     x27, x23
  1000091c8  b.lo    loc_100009190                            ; if ((x27 + 1) <u [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000091cc  add     x2, sp, #8
  1000091d0  add     x3, sp, #0x48
  1000091d4  mov     w4, #0x10
  1000091d8  mov     x0, x21
  1000091dc  mov     x1, x22
  1000091e0  bl      _objc_msgSend                            ; [[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000091e4  mov     x23, x0
  1000091e8  cbnz    x23, loc_10000918c                       ; if ([[self activeMissions] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000091ec:
  1000091ec  mov     x0, x21
  1000091f0  bl      _objc_release
loc_1000091f4:
  1000091f4  mov     x0, x19
  1000091f8  bl      _objc_release
  1000091fc  ldur    x8, [x29, #-0x58]
  100009200  sub     x8, x25, x8
  100009204  cbnz    x8, loc_100009228                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100009208  sub     sp, x29, #0x50
  10000920c  ldp     x29, x30, [sp, #0x50]
  100009210  ldp     x20, x19, [sp, #0x40]
  100009214  ldp     x22, x21, [sp, #0x30]
  100009218  ldp     x24, x23, [sp, #0x20]
  10000921c  ldp     x26, x25, [sp, #0x10]
  100009220  ldp     x28, x27, [sp], #0x60
  100009224  ret
loc_100009228:
  100009228  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10000922c:
  10000922c  mov     x20, x0
  100009230  mov     x0, x21
loc_100009234:
  100009234  bl      _objc_release
loc_100009238:
  100009238  mov     x0, x19
  10000923c  bl      _objc_release
  100009240  mov     x0, x20
  100009244  bl      __Unwind_Resume                          ; Unwind_Resume()
  100009248  b       loc_10000922c
  10000924c  mov     x20, x0
  100009250  b       loc_100009238
  100009254  mov     x20, x0
  100009258  mov     x0, x22
  10000925c  b       loc_100009234
  100009260  b       loc_10000922c

; ======================================================================
; -[ADMissionManager playerDied]
; address 0x100009264  size 104  kind objc
; ======================================================================
  100009264  stp     x20, x19, [sp, #-0x20]!
  100009268  stp     x29, x30, [sp, #0x10]
  10000926c  add     x29, sp, #0x10
  100009270  adrp    x8, #0x100416000
  100009274  nop
  100009278  ldr     x1, [x8, #0xd88]
  10000927c  bl      _objc_msgSend                            ; [self activeMissions]
  100009280  mov     x29, x29
  100009284  bl      _objc_retainAutoreleasedReturnValue
  100009288  mov     x19, x0
  10000928c  adrp    x8, #0x100416000
  100009290  nop
  100009294  ldr     x2, [x8, #0xe80]
  100009298  adrp    x8, #0x100416000
  10000929c  nop
  1000092a0  ldr     x1, [x8, #0xe48]
  1000092a4  bl      _objc_msgSend                            ; [[self activeMissions] makeObjectsPerformSelector:@selector(playerDied)]
  1000092a8  mov     x0, x19
  1000092ac  ldp     x29, x30, [sp, #0x10]
  1000092b0  ldp     x20, x19, [sp], #0x20
  1000092b4  b       _objc_release
  1000092b8  mov     x20, x0
  1000092bc  mov     x0, x19
  1000092c0  bl      _objc_release
  1000092c4  mov     x0, x20
  1000092c8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMissionManager setMissionArray:]
; address 0x1000092cc  size 56  kind objc
; ======================================================================
  1000092cc  stp     x20, x19, [sp, #-0x20]!
  1000092d0  stp     x29, x30, [sp, #0x10]
  1000092d4  add     x29, sp, #0x10
  1000092d8  mov     x19, x0
  1000092dc  adrp    x8, #0x10041f000
  1000092e0  ldrsw   x20, [x8, #0x4c0]                        ; ivar offset ADMissionManager._missionArray (+0x10)
  1000092e4  mov     x0, x2
  1000092e8  bl      _objc_retain
  1000092ec  ldr     x8, [x19, x20]                           ; x8 = self->_missionArray
  1000092f0  str     x0, [x19, x20]                           ; self->_missionArray = arg1
  1000092f4  mov     x0, x8
  1000092f8  ldp     x29, x30, [sp, #0x10]
  1000092fc  ldp     x20, x19, [sp], #0x20
  100009300  b       _objc_release

; ======================================================================
; -[ADMissionManager activeMissions]
; address 0x100009304  size 16  kind objc
; ======================================================================
  100009304  adrp    x8, #0x10041f000
  100009308  ldrsw   x8, [x8, #0x4c8]                         ; ivar offset ADMissionManager._activeMissions (+0x18)
  10000930c  ldr     x0, [x0, x8]                             ; x0 = self->_activeMissions
  100009310  ret

; ======================================================================
; -[ADMissionManager setActiveMissions:]
; address 0x100009314  size 56  kind objc
; ======================================================================
  100009314  stp     x20, x19, [sp, #-0x20]!
  100009318  stp     x29, x30, [sp, #0x10]
  10000931c  add     x29, sp, #0x10
  100009320  mov     x19, x0
  100009324  adrp    x8, #0x10041f000
  100009328  ldrsw   x20, [x8, #0x4c8]                        ; ivar offset ADMissionManager._activeMissions (+0x18)
  10000932c  mov     x0, x2
  100009330  bl      _objc_retain
  100009334  ldr     x8, [x19, x20]                           ; x8 = self->_activeMissions
  100009338  str     x0, [x19, x20]                           ; self->_activeMissions = arg1
  10000933c  mov     x0, x8
  100009340  ldp     x29, x30, [sp, #0x10]
  100009344  ldp     x20, x19, [sp], #0x20
  100009348  b       _objc_release

; ======================================================================
; -[ADMissionManager .cxx_destruct]
; address 0x10000934c  size 64  kind objc
; ======================================================================
  10000934c  stp     x20, x19, [sp, #-0x20]!
  100009350  stp     x29, x30, [sp, #0x10]
  100009354  add     x29, sp, #0x10
  100009358  mov     x19, x0
  10000935c  adrp    x8, #0x10041f000
  100009360  ldrsw   x8, [x8, #0x4c8]                         ; ivar offset ADMissionManager._activeMissions (+0x18)
  100009364  add     x0, x19, x8
  100009368  mov     x1, #0
  10000936c  bl      _objc_storeStrong
  100009370  mov     x1, #0
  100009374  adrp    x8, #0x10041f000
  100009378  ldrsw   x8, [x8, #0x4c0]                         ; ivar offset ADMissionManager._missionArray (+0x10)
  10000937c  add     x0, x19, x8
  100009380  ldp     x29, x30, [sp, #0x10]
  100009384  ldp     x20, x19, [sp], #0x20
  100009388  b       _objc_storeStrong
