// unit ADGameModifiers — 83 functions
//   0x1000de10c     228  +[ADGameModifiers sharedModifiers]
//   0x1000de1f0     812  -[ADGameModifiers resetModifiers]
//   0x1000de51c     104  -[ADGameModifiers headShotModifier]
//   0x1000de584     140  -[ADGameModifiers enemiLifeModifier]
//   0x1000de610     140  -[ADGameModifiers enemiSpeedModifier]
//   0x1000de69c     120  -[ADGameModifiers gunDamagesModifier]
//   0x1000de714     104  -[ADGameModifiers meleeDamagesModifier]
//   0x1000de77c     120  -[ADGameModifiers reloadTimeModifier]
//   0x1000de7f4     104  -[ADGameModifiers spreadModifier]
//   0x1000de85c     168  -[ADGameModifiers logModifiers]
//   0x1000de904     220  -[ADGameModifiers setTesla:]
//   0x1000de9e0       8  -[ADGameModifiers isTodayNewMoon]
//   0x1000de9e8     652  -[ADGameModifiers checkFullMoon]
//   0x1000dec74      20  -[ADGameModifiers slowerEnemies]
//   0x1000dec88      16  -[ADGameModifiers setSlowerEnemies:]
//   0x1000dec98      20  -[ADGameModifiers weakerEnemies]
//   0x1000decac      16  -[ADGameModifiers setWeakerEnemies:]
//   0x1000decbc      20  -[ADGameModifiers moreMeleeDamages]
//   0x1000decd0      16  -[ADGameModifiers setMoreMeleeDamages:]
//   0x1000dece0      20  -[ADGameModifiers moreDamages]
//   0x1000decf4      16  -[ADGameModifiers setMoreDamages:]
//   0x1000ded04      20  -[ADGameModifiers moreBullets]
//   0x1000ded18      16  -[ADGameModifiers setMoreBullets:]
//   0x1000ded28      20  -[ADGameModifiers freeRevive]
//   0x1000ded3c      16  -[ADGameModifiers setFreeRevive:]
//   0x1000ded4c      20  -[ADGameModifiers luckyShots]
//   0x1000ded60      16  -[ADGameModifiers setLuckyShots:]
//   0x1000ded70      20  -[ADGameModifiers metalDetector]
//   0x1000ded84      16  -[ADGameModifiers setMetalDetector:]
//   0x1000ded94      16  -[ADGameModifiers tesla]
//   0x1000deda4      20  -[ADGameModifiers goldenBullet]
//   0x1000dedb8      16  -[ADGameModifiers setGoldenBullet:]
//   0x1000dedc8      20  -[ADGameModifiers widerSpread]
//   0x1000deddc      16  -[ADGameModifiers setWiderSpread:]
//   0x1000dedec      20  -[ADGameModifiers moreHeadshots]
//   0x1000dee00      16  -[ADGameModifiers setMoreHeadshots:]
//   0x1000dee10      20  -[ADGameModifiers baseComboBonus]
//   0x1000dee24      16  -[ADGameModifiers setBaseComboBonus:]
//   0x1000dee34      20  -[ADGameModifiers morePowerUps]
//   0x1000dee48      16  -[ADGameModifiers setMorePowerUps:]
//   0x1000dee58      20  -[ADGameModifiers betterPowerUps]
//   0x1000dee6c      16  -[ADGameModifiers setBetterPowerUps:]
//   0x1000dee7c      20  -[ADGameModifiers lessHeadshots]
//   0x1000dee90      16  -[ADGameModifiers setLessHeadshots:]
//   0x1000deea0      20  -[ADGameModifiers strongerEnemies]
//   0x1000deeb4      16  -[ADGameModifiers setStrongerEnemies:]
//   0x1000deec4      20  -[ADGameModifiers rustyWeapons]
//   0x1000deed8      16  -[ADGameModifiers setRustyWeapons:]
//   0x1000deee8      20  -[ADGameModifiers enragedHorde]
//   0x1000deefc      16  -[ADGameModifiers setEnragedHorde:]
//   0x1000def0c      20  -[ADGameModifiers narrowedSpread]
//   0x1000def20      16  -[ADGameModifiers setNarrowedSpread:]
//   0x1000def30      20  -[ADGameModifiers cows]
//   0x1000def44      16  -[ADGameModifiers setCows:]
//   0x1000def54      20  -[ADGameModifiers cars]
//   0x1000def68      16  -[ADGameModifiers setCars:]
//   0x1000def78      20  -[ADGameModifiers storm]
//   0x1000def8c      16  -[ADGameModifiers setStorm:]
//   0x1000def9c      20  -[ADGameModifiers jukebox]
//   0x1000defb0      16  -[ADGameModifiers setJukebox:]
//   0x1000defc0      20  -[ADGameModifiers machine]
//   0x1000defd4      16  -[ADGameModifiers setMachine:]
//   0x1000defe4      20  -[ADGameModifiers noCritical]
//   0x1000deff8      16  -[ADGameModifiers setNoCritical:]
//   0x1000df008      20  -[ADGameModifiers fullMoon]
//   0x1000df01c      16  -[ADGameModifiers setFullMoon:]
//   0x1000df02c      20  -[ADGameModifiers bullshit]
//   0x1000df040      16  -[ADGameModifiers setBullshit:]
//   0x1000df050      20  -[ADGameModifiers fasterReloadTime]
//   0x1000df064      16  -[ADGameModifiers setFasterReloadTime:]
//   0x1000df074      20  -[ADGameModifiers slowerReloadTime]
//   0x1000df088      16  -[ADGameModifiers setSlowerReloadTime:]
//   0x1000df098      20  -[ADGameModifiers fasterEnemies]
//   0x1000df0ac      16  -[ADGameModifiers setFasterEnemies:]
//   0x1000df0bc      20  -[ADGameModifiers lessDamages]
//   0x1000df0d0      16  -[ADGameModifiers setLessDamages:]
//   0x1000df0e0      20  -[ADGameModifiers lessMeleeDamages]
//   0x1000df0f4      16  -[ADGameModifiers setLessMeleeDamages:]
//   0x1000df104      20  -[ADGameModifiers lessBullets]
//   0x1000df118      16  -[ADGameModifiers setLessBullets:]
//   0x1000df128      20  -[ADGameModifiers difficultyModifier]
//   0x1000df13c      20  -[ADGameModifiers setDifficultyModifier:]
//   0x1000df150     340  sub_1000df150

; ======================================================================
; +[ADGameModifiers sharedModifiers]
; address 0x1000de10c  size 228  kind objc
; ======================================================================
  1000de10c  stp     x22, x21, [sp, #-0x30]!
  1000de110  stp     x20, x19, [sp, #0x10]
  1000de114  stp     x29, x30, [sp, #0x20]
  1000de118  add     x29, sp, #0x20
  1000de11c  bl      _objc_retain
  1000de120  mov     x19, x0
  1000de124  bl      _objc_sync_enter                         ; objc_sync_enter(ADGameModifiers)
  1000de128  adrp    x21, #0x10042d000
  1000de12c  ldr     x8, [x21, #0xa68]                        ; load g_10042da68
  1000de130  cbnz    x8, loc_1000de1b0                        ; if (g_10042da68 != 0)
  1000de134  adrp    x8, #0x10041e000
  1000de138  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000de13c  adrp    x8, #0x100416000
  1000de140  nop
  1000de144  ldr     x1, [x8, #0xac8]
  1000de148  bl      _objc_msgSend                            ; [ADGameModifiers alloc]
  1000de14c  adrp    x8, #0x100416000
  1000de150  nop
  1000de154  ldr     x1, [x8, #0xab8]
  1000de158  bl      _objc_msgSend                            ; [[ADGameModifiers alloc] init]
  1000de15c  ldr     x8, [x21, #0xa68]                        ; load g_10042da68
  1000de160  str     x0, [x21, #0xa68]                        ; store g_10042da68 = [[ADGameModifiers alloc] init]
  1000de164  mov     x0, x8
  1000de168  bl      _objc_release
  1000de16c  ldr     x20, [x21, #0xa68]                       ; load g_10042da68
  1000de170  adrp    x8, #0x10041a000
  1000de174  nop
  1000de178  ldr     x1, [x8, #0xfe8]
  1000de17c  mov     x0, x20
  1000de180  bl      _objc_msgSend                            ; [g_10042da68 checkFullMoon]
  1000de184  mov     x2, x0
  1000de188  adrp    x8, #0x10041a000
  1000de18c  nop
  1000de190  ldr     x1, [x8, #0xff0]
  1000de194  mov     x0, x20
  1000de198  bl      _objc_msgSend                            ; [g_10042da68 setFullMoon:[g_10042da68 checkFullMoon]]
  1000de19c  ldr     x0, [x21, #0xa68]                        ; load g_10042da68
  1000de1a0  adrp    x8, #0x100418000
  1000de1a4  nop
  1000de1a8  ldr     x1, [x8, #0x430]
  1000de1ac  bl      _objc_msgSend                            ; [g_10042da68 resetModifiers]
loc_1000de1b0:
  1000de1b0  mov     x0, x19
  1000de1b4  bl      _objc_sync_exit                          ; objc_sync_exit(ADGameModifiers)
  1000de1b8  mov     x0, x19
  1000de1bc  bl      _objc_release
  1000de1c0  ldr     x0, [x21, #0xa68]                        ; load g_10042da68
  1000de1c4  ldp     x29, x30, [sp, #0x20]
  1000de1c8  ldp     x20, x19, [sp, #0x10]
  1000de1cc  ldp     x22, x21, [sp], #0x30
  1000de1d0  b       _objc_retainAutoreleaseReturnValue
  1000de1d4  mov     x20, x0
  1000de1d8  mov     x0, x19
  1000de1dc  bl      _objc_sync_exit                          ; objc_sync_exit()
  1000de1e0  mov     x0, x19
  1000de1e4  bl      _objc_release
  1000de1e8  mov     x0, x20
  1000de1ec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameModifiers resetModifiers]
; address 0x1000de1f0  size 812  kind objc
; ======================================================================
  1000de1f0  stp     x20, x19, [sp, #-0x20]!
  1000de1f4  stp     x29, x30, [sp, #0x10]
  1000de1f8  add     x29, sp, #0x10
  1000de1fc  mov     x19, x0
  1000de200  adrp    x8, #0x10041a000
  1000de204  nop
  1000de208  ldr     x1, [x8, #0xff8]
  1000de20c  mov     w2, #0
  1000de210  bl      _objc_msgSend                            ; [self setSlowerEnemies:0]
  1000de214  adrp    x8, #0x10041b000
  1000de218  nop
  1000de21c  ldr     x1, [x8]
  1000de220  mov     w2, #0
  1000de224  mov     x0, x19
  1000de228  bl      _objc_msgSend                            ; [self setWeakerEnemies:0]
  1000de22c  adrp    x8, #0x10041b000
  1000de230  nop
  1000de234  ldr     x1, [x8, #8]
  1000de238  mov     w2, #0
  1000de23c  mov     x0, x19
  1000de240  bl      _objc_msgSend                            ; [self setMoreDamages:0]
  1000de244  adrp    x8, #0x10041b000
  1000de248  nop
  1000de24c  ldr     x1, [x8, #0x10]
  1000de250  mov     w2, #0
  1000de254  mov     x0, x19
  1000de258  bl      _objc_msgSend                            ; [self setMoreMeleeDamages:0]
  1000de25c  adrp    x8, #0x10041b000
  1000de260  nop
  1000de264  ldr     x1, [x8, #0x18]
  1000de268  mov     w2, #0
  1000de26c  mov     x0, x19
  1000de270  bl      _objc_msgSend                            ; [self setMoreBullets:0]
  1000de274  adrp    x8, #0x10041b000
  1000de278  nop
  1000de27c  ldr     x1, [x8, #0x20]
  1000de280  mov     w2, #0
  1000de284  mov     x0, x19
  1000de288  bl      _objc_msgSend                            ; [self setFreeRevive:0]
  1000de28c  adrp    x8, #0x10041b000
  1000de290  nop
  1000de294  ldr     x1, [x8, #0x28]
  1000de298  mov     w2, #0
  1000de29c  mov     x0, x19
  1000de2a0  bl      _objc_msgSend                            ; [self setLuckyShots:0]
  1000de2a4  adrp    x8, #0x10041b000
  1000de2a8  nop
  1000de2ac  ldr     x1, [x8, #0x30]
  1000de2b0  mov     w2, #0
  1000de2b4  mov     x0, x19
  1000de2b8  bl      _objc_msgSend                            ; [self setMetalDetector:0]
  1000de2bc  adrp    x8, #0x100419000
  1000de2c0  nop
  1000de2c4  ldr     x1, [x8, #0x330]
  1000de2c8  mov     w2, #0
  1000de2cc  mov     x0, x19
  1000de2d0  bl      _objc_msgSend                            ; [self setTesla:0]
  1000de2d4  adrp    x8, #0x10041b000
  1000de2d8  nop
  1000de2dc  ldr     x1, [x8, #0x38]
  1000de2e0  mov     w2, #0
  1000de2e4  mov     x0, x19
  1000de2e8  bl      _objc_msgSend                            ; [self setGoldenBullet:0]
  1000de2ec  adrp    x8, #0x10041b000
  1000de2f0  nop
  1000de2f4  ldr     x1, [x8, #0x40]
  1000de2f8  mov     w2, #0
  1000de2fc  mov     x0, x19
  1000de300  bl      _objc_msgSend                            ; [self setWiderSpread:0]
  1000de304  adrp    x8, #0x10041b000
  1000de308  nop
  1000de30c  ldr     x1, [x8, #0x48]
  1000de310  mov     w2, #0
  1000de314  mov     x0, x19
  1000de318  bl      _objc_msgSend                            ; [self setMoreHeadshots:0]
  1000de31c  adrp    x8, #0x10041b000
  1000de320  nop
  1000de324  ldr     x1, [x8, #0x50]
  1000de328  mov     w2, #0
  1000de32c  mov     x0, x19
  1000de330  bl      _objc_msgSend                            ; [self setBaseComboBonus:0]
  1000de334  adrp    x8, #0x10041b000
  1000de338  nop
  1000de33c  ldr     x1, [x8, #0x58]
  1000de340  mov     w2, #0
  1000de344  mov     x0, x19
  1000de348  bl      _objc_msgSend                            ; [self setMorePowerUps:0]
  1000de34c  adrp    x8, #0x10041b000
  1000de350  nop
  1000de354  ldr     x1, [x8, #0x60]
  1000de358  mov     w2, #0
  1000de35c  mov     x0, x19
  1000de360  bl      _objc_msgSend                            ; [self setBetterPowerUps:0]
  1000de364  adrp    x8, #0x10041b000
  1000de368  nop
  1000de36c  ldr     x1, [x8, #0x68]
  1000de370  mov     w2, #0
  1000de374  mov     x0, x19
  1000de378  bl      _objc_msgSend                            ; [self setJukebox:0]
  1000de37c  adrp    x8, #0x10041b000
  1000de380  nop
  1000de384  ldr     x1, [x8, #0x70]
  1000de388  mov     w2, #0
  1000de38c  mov     x0, x19
  1000de390  bl      _objc_msgSend                            ; [self setStrongerEnemies:0]
  1000de394  adrp    x8, #0x10041b000
  1000de398  nop
  1000de39c  ldr     x1, [x8, #0x78]
  1000de3a0  mov     w2, #0
  1000de3a4  mov     x0, x19
  1000de3a8  bl      _objc_msgSend                            ; [self setCows:0]
  1000de3ac  adrp    x8, #0x10041b000
  1000de3b0  nop
  1000de3b4  ldr     x1, [x8, #0x80]
  1000de3b8  mov     w2, #0
  1000de3bc  mov     x0, x19
  1000de3c0  bl      _objc_msgSend                            ; [self setStorm:0]
  1000de3c4  adrp    x8, #0x10041b000
  1000de3c8  nop
  1000de3cc  ldr     x1, [x8, #0x88]
  1000de3d0  mov     w2, #0
  1000de3d4  mov     x0, x19
  1000de3d8  bl      _objc_msgSend                            ; [self setLessMeleeDamages:0]
  1000de3dc  adrp    x8, #0x10041b000
  1000de3e0  nop
  1000de3e4  ldr     x1, [x8, #0x90]
  1000de3e8  mov     w2, #0
  1000de3ec  mov     x0, x19
  1000de3f0  bl      _objc_msgSend                            ; [self setLessHeadshots:0]
  1000de3f4  adrp    x8, #0x10041b000
  1000de3f8  nop
  1000de3fc  ldr     x1, [x8, #0x98]
  1000de400  mov     w2, #0
  1000de404  mov     x0, x19
  1000de408  bl      _objc_msgSend                            ; [self setRustyWeapons:0]
  1000de40c  adrp    x8, #0x10041b000
  1000de410  nop
  1000de414  ldr     x1, [x8, #0xa0]
  1000de418  mov     w2, #0
  1000de41c  mov     x0, x19
  1000de420  bl      _objc_msgSend                            ; [self setCars:0]
  1000de424  adrp    x8, #0x10041b000
  1000de428  nop
  1000de42c  ldr     x1, [x8, #0xa8]
  1000de430  mov     w2, #0
  1000de434  mov     x0, x19
  1000de438  bl      _objc_msgSend                            ; [self setEnragedHorde:0]
  1000de43c  adrp    x8, #0x10041b000
  1000de440  nop
  1000de444  ldr     x1, [x8, #0xb0]
  1000de448  mov     w2, #0
  1000de44c  mov     x0, x19
  1000de450  bl      _objc_msgSend                            ; [self setNarrowedSpread:0]
  1000de454  adrp    x8, #0x10041b000
  1000de458  nop
  1000de45c  ldr     x1, [x8, #0xb8]
  1000de460  mov     w2, #0
  1000de464  mov     x0, x19
  1000de468  bl      _objc_msgSend                            ; [self setMachine:0]
  1000de46c  adrp    x8, #0x10041b000
  1000de470  nop
  1000de474  ldr     x1, [x8, #0xc0]
  1000de478  mov     w2, #0
  1000de47c  mov     x0, x19
  1000de480  bl      _objc_msgSend                            ; [self setLessDamages:0]
  1000de484  adrp    x8, #0x10041b000
  1000de488  nop
  1000de48c  ldr     x1, [x8, #0xc8]
  1000de490  mov     w2, #0
  1000de494  mov     x0, x19
  1000de498  bl      _objc_msgSend                            ; [self setLessBullets:0]
  1000de49c  adrp    x8, #0x10041b000
  1000de4a0  nop
  1000de4a4  ldr     x1, [x8, #0xd0]
  1000de4a8  mov     w2, #0
  1000de4ac  mov     x0, x19
  1000de4b0  bl      _objc_msgSend                            ; [self setNoCritical:0]
  1000de4b4  adrp    x8, #0x10041b000
  1000de4b8  nop
  1000de4bc  ldr     x1, [x8, #0xd8]
  1000de4c0  mov     w2, #0
  1000de4c4  mov     x0, x19
  1000de4c8  bl      _objc_msgSend                            ; [self setFasterReloadTime:0]
  1000de4cc  adrp    x8, #0x10041b000
  1000de4d0  nop
  1000de4d4  ldr     x1, [x8, #0xe0]
  1000de4d8  mov     w2, #0
  1000de4dc  mov     x0, x19
  1000de4e0  bl      _objc_msgSend                            ; [self setSlowerReloadTime:0]
  1000de4e4  adrp    x8, #0x10041b000
  1000de4e8  nop
  1000de4ec  ldr     x1, [x8, #0xe8]
  1000de4f0  mov     w2, #0
  1000de4f4  mov     x0, x19
  1000de4f8  bl      _objc_msgSend                            ; [self setFasterEnemies:0]
  1000de4fc  adrp    x8, #0x10041a000
  1000de500  nop
  1000de504  ldr     x1, [x8, #0xb10]
  1000de508  fmov    s0, #1.00000000
  1000de50c  mov     x0, x19
  1000de510  ldp     x29, x30, [sp, #0x10]
  1000de514  ldp     x20, x19, [sp], #0x20
  1000de518  b       _objc_msgSend                            ; [self setDifficultyModifier:1]

; ======================================================================
; -[ADGameModifiers headShotModifier]
; address 0x1000de51c  size 104  kind objc
; ======================================================================
  1000de51c  stp     d9, d8, [sp, #-0x30]!
  1000de520  stp     x20, x19, [sp, #0x10]
  1000de524  stp     x29, x30, [sp, #0x20]
  1000de528  add     x29, sp, #0x20
  1000de52c  mov     x19, x0
  1000de530  adrp    x8, #0x10041b000
  1000de534  nop
  1000de538  ldr     x1, [x8, #0xf0]
  1000de53c  bl      _objc_msgSend                            ; [self moreHeadshots]
  1000de540  cmp     w0, #0
  1000de544  fmov    s0, #1.00000000
  1000de548  fmov    s1, #1.50000000
  1000de54c  fcsel   s8, s1, s0, ne
  1000de550  adrp    x8, #0x10041b000
  1000de554  nop
  1000de558  ldr     x1, [x8, #0xf8]
  1000de55c  mov     x0, x19
  1000de560  bl      _objc_msgSend                            ; [self lessHeadshots]
  1000de564  fmov    s0, #-0.50000000
  1000de568  fadd    s0, s8, s0
  1000de56c  cmp     w0, #0
  1000de570  fcsel   s0, s8, s0, eq                           ; t1 = ([self lessHeadshots] == 0 ? ([self moreHeadshots] != 0 ? 1.5 : 1) : (([self moreHeadshots] != 0 ? 1.5 : 1) + -0.5))
  1000de574  ldp     x29, x30, [sp, #0x20]
  1000de578  ldp     x20, x19, [sp, #0x10]
  1000de57c  ldp     d9, d8, [sp], #0x30
  1000de580  ret

; ======================================================================
; -[ADGameModifiers enemiLifeModifier]
; address 0x1000de584  size 140  kind objc
; ======================================================================
  1000de584  stp     d9, d8, [sp, #-0x30]!
  1000de588  stp     x20, x19, [sp, #0x10]
  1000de58c  stp     x29, x30, [sp, #0x20]
  1000de590  add     x29, sp, #0x20
  1000de594  mov     x19, x0
  1000de598  adrp    x8, #0x10041b000
  1000de59c  nop
  1000de5a0  ldr     x1, [x8, #0x100]
  1000de5a4  bl      _objc_msgSend                            ; [self weakerEnemies]
  1000de5a8  cmp     w0, #0
  1000de5ac  nop
  1000de5b0  ldr     s0, #0x100181d9c                         ; s0 = 0.899999976
  1000de5b4  fmov    s1, #1.00000000
  1000de5b8  fcsel   s8, s0, s1, ne
  1000de5bc  adrp    x8, #0x10041b000
  1000de5c0  nop
  1000de5c4  ldr     x1, [x8, #0x108]
  1000de5c8  mov     x0, x19
  1000de5cc  bl      _objc_msgSend                            ; [self strongerEnemies]
  1000de5d0  cbz     w0, loc_1000de5e8                        ; if ([self strongerEnemies] == 0)
  1000de5d4  fcvt    d0, s8
  1000de5d8  adrp    x8, #0x100181000
  1000de5dc  ldr     d1, [x8, #0xa18]                         ; d1 = 0.2
  1000de5e0  fadd    d0, d0, d1
  1000de5e4  fcvt    s8, d0
loc_1000de5e8:
  1000de5e8  adrp    x8, #0x10041a000
  1000de5ec  nop
  1000de5f0  ldr     x1, [x8, #0xb08]
  1000de5f4  mov     x0, x19
  1000de5f8  bl      _objc_msgSend                            ; [self difficultyModifier]
  1000de5fc  fmul    s0, s8, s0
  1000de600  ldp     x29, x30, [sp, #0x20]
  1000de604  ldp     x20, x19, [sp, #0x10]
  1000de608  ldp     d9, d8, [sp], #0x30
  1000de60c  ret

; ======================================================================
; -[ADGameModifiers enemiSpeedModifier]
; address 0x1000de610  size 140  kind objc
; ======================================================================
  1000de610  stp     d9, d8, [sp, #-0x30]!
  1000de614  stp     x20, x19, [sp, #0x10]
  1000de618  stp     x29, x30, [sp, #0x20]
  1000de61c  add     x29, sp, #0x20
  1000de620  mov     x19, x0
  1000de624  adrp    x8, #0x10041b000
  1000de628  nop
  1000de62c  ldr     x1, [x8, #0x110]
  1000de630  bl      _objc_msgSend                            ; [self fasterEnemies]
  1000de634  cmp     w0, #0
  1000de638  nop
  1000de63c  ldr     s0, #0x100181da0                         ; s0 = 1.20000005
  1000de640  fmov    s1, #1.00000000
  1000de644  fcsel   s8, s0, s1, ne
  1000de648  adrp    x8, #0x10041b000
  1000de64c  nop
  1000de650  ldr     x1, [x8, #0x118]
  1000de654  mov     x0, x19
  1000de658  bl      _objc_msgSend                            ; [self slowerEnemies]
  1000de65c  cbz     w0, loc_1000de674                        ; if ([self slowerEnemies] == 0)
  1000de660  fcvt    d0, s8
  1000de664  adrp    x8, #0x100181000
  1000de668  ldr     d1, [x8, #0xda8]                         ; d1 = -0.1
  1000de66c  fadd    d0, d0, d1
  1000de670  fcvt    s8, d0
loc_1000de674:
  1000de674  adrp    x8, #0x10041a000
  1000de678  nop
  1000de67c  ldr     x1, [x8, #0xb08]
  1000de680  mov     x0, x19
  1000de684  bl      _objc_msgSend                            ; [self difficultyModifier]
  1000de688  fmul    s0, s8, s0
  1000de68c  ldp     x29, x30, [sp, #0x20]
  1000de690  ldp     x20, x19, [sp, #0x10]
  1000de694  ldp     d9, d8, [sp], #0x30
  1000de698  ret

; ======================================================================
; -[ADGameModifiers gunDamagesModifier]
; address 0x1000de69c  size 120  kind objc
; ======================================================================
  1000de69c  stp     d9, d8, [sp, #-0x30]!
  1000de6a0  stp     x20, x19, [sp, #0x10]
  1000de6a4  stp     x29, x30, [sp, #0x20]
  1000de6a8  add     x29, sp, #0x20
  1000de6ac  mov     x19, x0
  1000de6b0  adrp    x8, #0x10041b000
  1000de6b4  nop
  1000de6b8  ldr     x1, [x8, #0x120]
  1000de6bc  bl      _objc_msgSend                            ; [self moreDamages]
  1000de6c0  cmp     w0, #0
  1000de6c4  nop
  1000de6c8  ldr     s0, #0x100181da4                         ; s0 = 1.10000002
  1000de6cc  fmov    s1, #1.00000000
  1000de6d0  fcsel   s8, s0, s1, ne
  1000de6d4  adrp    x8, #0x10041b000
  1000de6d8  nop
  1000de6dc  ldr     x1, [x8, #0x128]
  1000de6e0  mov     x0, x19
  1000de6e4  bl      _objc_msgSend                            ; [self lessDamages]
  1000de6e8  cbz     w0, loc_1000de700                        ; if ([self lessDamages] == 0)
  1000de6ec  fcvt    d0, s8
  1000de6f0  adrp    x8, #0x100181000
  1000de6f4  ldr     d1, [x8, #0xda8]                         ; d1 = -0.1
  1000de6f8  fadd    d0, d0, d1
  1000de6fc  fcvt    s8, d0
loc_1000de700:
  1000de700  mov     v0.16b, v8.16b
  1000de704  ldp     x29, x30, [sp, #0x20]
  1000de708  ldp     x20, x19, [sp, #0x10]
  1000de70c  ldp     d9, d8, [sp], #0x30
  1000de710  ret

; ======================================================================
; -[ADGameModifiers meleeDamagesModifier]
; address 0x1000de714  size 104  kind objc
; ======================================================================
  1000de714  stp     d9, d8, [sp, #-0x30]!
  1000de718  stp     x20, x19, [sp, #0x10]
  1000de71c  stp     x29, x30, [sp, #0x20]
  1000de720  add     x29, sp, #0x20
  1000de724  mov     x19, x0
  1000de728  adrp    x8, #0x10041b000
  1000de72c  nop
  1000de730  ldr     x1, [x8, #0x130]
  1000de734  bl      _objc_msgSend                            ; [self moreMeleeDamages]
  1000de738  cmp     w0, #0
  1000de73c  fmov    s0, #1.00000000
  1000de740  fmov    s1, #1.25000000
  1000de744  fcsel   s8, s1, s0, ne
  1000de748  adrp    x8, #0x10041b000
  1000de74c  nop
  1000de750  ldr     x1, [x8, #0x138]
  1000de754  mov     x0, x19
  1000de758  bl      _objc_msgSend                            ; [self lessMeleeDamages]
  1000de75c  fmov    s0, #-0.25000000
  1000de760  fadd    s0, s8, s0
  1000de764  cmp     w0, #0
  1000de768  fcsel   s0, s8, s0, eq                           ; t1 = ([self lessMeleeDamages] == 0 ? ([self moreMeleeDamages] != 0 ? 1.25 : 1) : (([self moreMeleeDamages] != 0 ? 1.25 : 1) + -0.25))
  1000de76c  ldp     x29, x30, [sp, #0x20]
  1000de770  ldp     x20, x19, [sp, #0x10]
  1000de774  ldp     d9, d8, [sp], #0x30
  1000de778  ret

; ======================================================================
; -[ADGameModifiers reloadTimeModifier]
; address 0x1000de77c  size 120  kind objc
; ======================================================================
  1000de77c  stp     d9, d8, [sp, #-0x30]!
  1000de780  stp     x20, x19, [sp, #0x10]
  1000de784  stp     x29, x30, [sp, #0x20]
  1000de788  add     x29, sp, #0x20
  1000de78c  mov     x19, x0
  1000de790  adrp    x8, #0x10041b000
  1000de794  nop
  1000de798  ldr     x1, [x8, #0x140]
  1000de79c  bl      _objc_msgSend                            ; [self fasterReloadTime]
  1000de7a0  cmp     w0, #0
  1000de7a4  nop
  1000de7a8  ldr     s0, #0x100181da0                         ; s0 = 1.20000005
  1000de7ac  fmov    s1, #1.00000000
  1000de7b0  fcsel   s8, s0, s1, ne
  1000de7b4  adrp    x8, #0x10041b000
  1000de7b8  nop
  1000de7bc  ldr     x1, [x8, #0x148]
  1000de7c0  mov     x0, x19
  1000de7c4  bl      _objc_msgSend                            ; [self slowerReloadTime]
  1000de7c8  cbz     w0, loc_1000de7e0                        ; if ([self slowerReloadTime] == 0)
  1000de7cc  fcvt    d0, s8
  1000de7d0  adrp    x8, #0x100181000
  1000de7d4  ldr     d1, [x8, #0xdb0]                         ; d1 = -0.2
  1000de7d8  fadd    d0, d0, d1
  1000de7dc  fcvt    s8, d0
loc_1000de7e0:
  1000de7e0  mov     v0.16b, v8.16b
  1000de7e4  ldp     x29, x30, [sp, #0x20]
  1000de7e8  ldp     x20, x19, [sp, #0x10]
  1000de7ec  ldp     d9, d8, [sp], #0x30
  1000de7f0  ret

; ======================================================================
; -[ADGameModifiers spreadModifier]
; address 0x1000de7f4  size 104  kind objc
; ======================================================================
  1000de7f4  stp     d9, d8, [sp, #-0x30]!
  1000de7f8  stp     x20, x19, [sp, #0x10]
  1000de7fc  stp     x29, x30, [sp, #0x20]
  1000de800  add     x29, sp, #0x20
  1000de804  mov     x19, x0
  1000de808  adrp    x8, #0x10041b000
  1000de80c  nop
  1000de810  ldr     x1, [x8, #0x150]
  1000de814  bl      _objc_msgSend                            ; [self narrowedSpread]
  1000de818  cmp     w0, #0
  1000de81c  movi    v0.16b, #0
  1000de820  fmov    s1, #-5.00000000
  1000de824  fcsel   s8, s1, s0, ne
  1000de828  adrp    x8, #0x10041b000
  1000de82c  nop
  1000de830  ldr     x1, [x8, #0x158]
  1000de834  mov     x0, x19
  1000de838  bl      _objc_msgSend                            ; [self widerSpread]
  1000de83c  fmov    s0, #5.00000000
  1000de840  fadd    s0, s8, s0
  1000de844  cmp     w0, #0
  1000de848  fcsel   s0, s8, s0, eq                           ; t1 = ([self widerSpread] == 0 ? ([self narrowedSpread] != 0 ? -5 : 0) : (([self narrowedSpread] != 0 ? -5 : 0) + 5))
  1000de84c  ldp     x29, x30, [sp, #0x20]
  1000de850  ldp     x20, x19, [sp, #0x10]
  1000de854  ldp     d9, d8, [sp], #0x30
  1000de858  ret

; ======================================================================
; -[ADGameModifiers logModifiers]
; address 0x1000de85c  size 168  kind objc
; ======================================================================
  1000de85c  stp     x20, x19, [sp, #-0x20]!
  1000de860  stp     x29, x30, [sp, #0x10]
  1000de864  add     x29, sp, #0x10
  1000de868  sub     sp, sp, #0x10
  1000de86c  mov     x19, x0
  1000de870  adrp    x0, #0x1003c2000
  1000de874  add     x0, x0, #0x9d0                           ; @"**** MODIFIERS *****"
  1000de878  bl      _NSLog                                   ; NSLog(@"**** MODIFIERS *****", _cmd)
  1000de87c  adrp    x8, #0x100419000
  1000de880  nop
  1000de884  ldr     x1, [x8, #0x208]
  1000de888  mov     x0, x19
  1000de88c  bl      _objc_msgSend                            ; [self enemiLifeModifier]
  1000de890  fcvt    d0, s0
  1000de894  str     d0, [sp]
  1000de898  adrp    x0, #0x1003c2000
  1000de89c  add     x0, x0, #0x9f0                           ; @"Enemies life : %f"
  1000de8a0  bl      _NSLog                                   ; NSLog(@"Enemies life : %f", [self enemiLifeModifier])
  1000de8a4  adrp    x8, #0x100419000
  1000de8a8  nop
  1000de8ac  ldr     x1, [x8, #0x210]
  1000de8b0  mov     x0, x19
  1000de8b4  bl      _objc_msgSend                            ; [self enemiSpeedModifier]
  1000de8b8  fcvt    d0, s0
  1000de8bc  str     d0, [sp]
  1000de8c0  adrp    x0, #0x1003c2000
  1000de8c4  add     x0, x0, #0xa10                           ; @"Enemies speed : %f"
  1000de8c8  bl      _NSLog                                   ; NSLog(@"Enemies speed : %f", [self enemiSpeedModifier])
  1000de8cc  adrp    x8, #0x10041b000
  1000de8d0  nop
  1000de8d4  ldr     x1, [x8, #0x160]
  1000de8d8  mov     x0, x19
  1000de8dc  bl      _objc_msgSend                            ; [self reloadTimeModifier]
  1000de8e0  fcvt    d0, s0
  1000de8e4  str     d0, [sp]
  1000de8e8  adrp    x0, #0x1003c2000
  1000de8ec  add     x0, x0, #0xa30                           ; @"Reload time : %f"
  1000de8f0  bl      _NSLog                                   ; NSLog(@"Reload time : %f", [self reloadTimeModifier])
  1000de8f4  sub     sp, x29, #0x10
  1000de8f8  ldp     x29, x30, [sp, #0x10]
  1000de8fc  ldp     x20, x19, [sp], #0x20
  1000de900  ret

; ======================================================================
; -[ADGameModifiers setTesla:]
; address 0x1000de904  size 220  kind objc
; ======================================================================
  1000de904  stp     x22, x21, [sp, #-0x30]!
  1000de908  stp     x20, x19, [sp, #0x10]
  1000de90c  stp     x29, x30, [sp, #0x20]
  1000de910  add     x29, sp, #0x20
  1000de914  mov     x19, x0
  1000de918  adrp    x8, #0x100420000
  1000de91c  ldrsw   x22, [x8, #0x520]                        ; ivar offset ADGameModifiers._tesla (+0x10)
  1000de920  ldrb    w8, [x19, x22]                           ; w8 = self->_tesla
  1000de924  cmp     w8, w2
  1000de928  b.ne    loc_1000de93c                            ; if (self->_tesla != arg1)
  1000de92c  ldp     x29, x30, [sp, #0x20]
  1000de930  ldp     x20, x19, [sp, #0x10]
  1000de934  ldp     x22, x21, [sp], #0x30
  1000de938  ret
loc_1000de93c:
  1000de93c  strb    w2, [x19, x22]                           ; self->_tesla = arg1
  1000de940  adrp    x8, #0x10041d000
  1000de944  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000de948  adrp    x8, #0x100417000
  1000de94c  nop
  1000de950  ldr     x1, [x8, #0x4f0]
  1000de954  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000de958  mov     x29, x29
  1000de95c  bl      _objc_retainAutoreleasedReturnValue
  1000de960  mov     x20, x0
  1000de964  adrp    x8, #0x100417000
  1000de968  nop
  1000de96c  ldr     x1, [x8, #0x4f8]
  1000de970  adrp    x2, #0x1003c0000
  1000de974  add     x2, x2, #0xcf0                           ; @"tesla"
  1000de978  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tesla"]
  1000de97c  mov     x29, x29
  1000de980  bl      _objc_retainAutoreleasedReturnValue
  1000de984  mov     x21, x0
  1000de988  mov     x0, x20
  1000de98c  bl      _objc_release
  1000de990  ldrb    w8, [x19, x22]                           ; w8 = self->_tesla
  1000de994  cbz     w8, loc_1000de9ac                        ; if (self->_tesla == 0)
  1000de998  adrp    x8, #0x100417000
  1000de99c  nop
  1000de9a0  ldr     x1, [x8, #0x508]
  1000de9a4  mov     x0, x21
  1000de9a8  bl      _objc_msgSend                            ; [[[S3DEngine engine] playListWithName:@"tesla"] activate]
loc_1000de9ac:
  1000de9ac  mov     x0, x21
  1000de9b0  ldp     x29, x30, [sp, #0x20]
  1000de9b4  ldp     x20, x19, [sp, #0x10]
  1000de9b8  ldp     x22, x21, [sp], #0x30
  1000de9bc  b       _objc_release
  1000de9c0  mov     x19, x0
  1000de9c4  mov     x0, x20
  1000de9c8  b       loc_1000de9d4
  1000de9cc  mov     x19, x0
  1000de9d0  mov     x0, x21
loc_1000de9d4:
  1000de9d4  bl      _objc_release
  1000de9d8  mov     x0, x19
  1000de9dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADGameModifiers isTodayNewMoon]
; address 0x1000de9e0  size 8  kind objc
; ======================================================================
  1000de9e0  mov     w0, #0
  1000de9e4  ret

; ======================================================================
; -[ADGameModifiers checkFullMoon]
; address 0x1000de9e8  size 652  kind objc
; ======================================================================
  1000de9e8  stp     x24, x23, [sp, #-0x40]!
  1000de9ec  stp     x22, x21, [sp, #0x10]
  1000de9f0  stp     x20, x19, [sp, #0x20]
  1000de9f4  stp     x29, x30, [sp, #0x30]
  1000de9f8  add     x29, sp, #0x30
  1000de9fc  sub     sp, sp, #0x10
  1000dea00  adrp    x8, #0x10041e000
  1000dea04  ldr     x0, [x8, #0x38]                          ; class NSDate
  1000dea08  adrp    x8, #0x100418000
  1000dea0c  nop
  1000dea10  ldr     x1, [x8, #0x158]
  1000dea14  bl      _objc_msgSend                            ; [NSDate date]
  1000dea18  mov     x29, x29
  1000dea1c  bl      _objc_retainAutoreleasedReturnValue
  1000dea20  mov     x19, x0
  1000dea24  adrp    x8, #0x10041e000
  1000dea28  ldr     x0, [x8, #0x468]                         ; class NSCalendar
  1000dea2c  adrp    x8, #0x10041b000
  1000dea30  nop
  1000dea34  ldr     x1, [x8, #0x168]
  1000dea38  bl      _objc_msgSend                            ; [NSCalendar currentCalendar]
  1000dea3c  mov     x29, x29
  1000dea40  bl      _objc_retainAutoreleasedReturnValue
  1000dea44  mov     x20, x0
  1000dea48  adrp    x8, #0x10041b000
  1000dea4c  nop
  1000dea50  ldr     x1, [x8, #0x170]
  1000dea54  mov     w2, #0x60
  1000dea58  mov     x3, x19
  1000dea5c  bl      _objc_msgSend                            ; [[NSCalendar currentCalendar] components:96 fromDate:[NSDate date]]
  1000dea60  mov     x29, x29
  1000dea64  bl      _objc_retainAutoreleasedReturnValue
  1000dea68  mov     x21, x0
  1000dea6c  adrp    x8, #0x10041e000
  1000dea70  ldr     x0, [x8, #0x470]                         ; class NSDateComponents
  1000dea74  adrp    x8, #0x100416000
  1000dea78  nop
  1000dea7c  ldr     x1, [x8, #0xac8]
  1000dea80  bl      _objc_msgSend                            ; [NSDateComponents alloc]
  1000dea84  adrp    x8, #0x100416000
  1000dea88  nop
  1000dea8c  ldr     x1, [x8, #0xab8]
  1000dea90  bl      _objc_msgSend                            ; [[NSDateComponents alloc] init]
  1000dea94  mov     x22, x0
  1000dea98  adrp    x8, #0x10041b000
  1000dea9c  nop
  1000deaa0  ldr     x1, [x8, #0x178]
  1000deaa4  mov     x0, x21
  1000deaa8  bl      _objc_msgSend                            ; [[[NSCalendar currentCalendar] components:96 fromDate:[NSDate date]] minute]
  1000deaac  mov     x2, x0
  1000deab0  adrp    x8, #0x10041b000
  1000deab4  nop
  1000deab8  ldr     x1, [x8, #0x180]
  1000deabc  mov     x0, x22
  1000deac0  bl      _objc_msgSend                            ; [[[NSDateComponents alloc] init] setMinute:[[[NSCalendar currentCalendar] components:96 fromDate:[NSDate date]] minute]]
  1000deac4  adrp    x8, #0x10041b000
  1000deac8  nop
  1000deacc  ldr     x1, [x8, #0x188]
  1000dead0  mov     x0, x21
  1000dead4  bl      _objc_msgSend                            ; [[[NSCalendar currentCalendar] components:96 fromDate:[NSDate date]] hour]
  1000dead8  mov     x2, x0
  1000deadc  adrp    x8, #0x10041b000
  1000deae0  nop
  1000deae4  ldr     x1, [x8, #0x190]
  1000deae8  mov     x0, x22
  1000deaec  bl      _objc_msgSend                            ; [[[NSDateComponents alloc] init] setHour:[[[NSCalendar currentCalendar] components:96 fromDate:[NSDate date]] hour]]
  1000deaf0  adrp    x8, #0x10041b000
  1000deaf4  nop
  1000deaf8  ldr     x1, [x8, #0x198]
  1000deafc  mov     w2, #7
  1000deb00  mov     x0, x22
  1000deb04  bl      _objc_msgSend                            ; [[[NSDateComponents alloc] init] setDay:7]
  1000deb08  adrp    x8, #0x10041b000
  1000deb0c  nop
  1000deb10  ldr     x1, [x8, #0x1a0]
  1000deb14  mov     w2, #1
  1000deb18  mov     x0, x22
  1000deb1c  bl      _objc_msgSend                            ; [[[NSDateComponents alloc] init] setMonth:1]
  1000deb20  adrp    x8, #0x10041b000
  1000deb24  nop
  1000deb28  ldr     x1, [x8, #0x1a8]
  1000deb2c  mov     w2, #0x7b2
  1000deb30  mov     x0, x22
  1000deb34  bl      _objc_msgSend                            ; [[[NSDateComponents alloc] init] setYear:1970]
  1000deb38  adrp    x8, #0x10041b000
  1000deb3c  nop
  1000deb40  ldr     x1, [x8, #0x1b0]
  1000deb44  mov     x0, x20
  1000deb48  mov     x2, x22
  1000deb4c  bl      _objc_msgSend                            ; [[NSCalendar currentCalendar] dateFromComponents:[[NSDateComponents alloc] init]]
  1000deb50  mov     x29, x29
  1000deb54  bl      _objc_retainAutoreleasedReturnValue
  1000deb58  mov     x23, x0
  1000deb5c  adrp    x8, #0x100418000
  1000deb60  nop
  1000deb64  ldr     x1, [x8, #0x160]
  1000deb68  mov     x0, x19
  1000deb6c  mov     x2, x23
  1000deb70  bl      _objc_msgSend                            ; [[NSDate date] timeIntervalSinceDate:[[NSCalendar currentCalendar] dateFromComponents:[[NSDateComponents alloc] init]]]
  1000deb74  fcvtzs  w8, d0                                   ; t1 = (int)[[NSDate date] timeIntervalSinceDate:[[NSCalendar currentCalendar] dateFromComponents:[[NSDateComponents alloc] init]]]
  1000deb78  sxtw    x9, w8
  1000deb7c  mov     w10, #0x1a4d0000
  1000deb80  movk    w10, #0x64af
  1000deb84  mul     x9, x9, x10
  1000deb88  lsr     x10, x9, #0x20
  1000deb8c  lsr     x9, x9, #0x3f
  1000deb90  add     w9, w9, w10, asr #18
  1000deb94  mov     w10, #0x260000
  1000deb98  movk    w10, #0xee93
  1000deb9c  msub    w8, w9, w10, w8
  1000deba0  sxtw    x9, w8
  1000deba4  mov     x10, #-0x3dd10001
  1000deba8  movk    x10, #0x4507
  1000debac  mul     x9, x9, x10                              ; t2 = ((t1 - (((t1 * 0x1a4d64af) >>> 63) + (((t1 * 0x1a4d64af) >>> 32) >> 18)) * 0x26ee93) * 0xffffffffc22e4507)
  1000debb0  lsr     x9, x9, #0x20
  1000debb4  add     w8, w9, w8                               ; t3 = ((t2 >>> 32) + (t1 - (((t1 * 0x1a4d64af) >>> 63) + (((t1 * 0x1a4d64af) >>> 32) >> 18)) * 0x26ee93))
  1000debb8  asr     w9, w8, #0x10
  1000debbc  add     w8, w9, w8, lsr #31
  1000debc0  add     w24, w8, #1
  1000debc4  str     x24, [sp]
  1000debc8  adrp    x0, #0x1003c2000
  1000debcc  add     x0, x0, #0xa50                           ; @"Moon phase : %i"
  1000debd0  bl      _NSLog                                   ; NSLog(@"Moon phase : %i", (((t3 >> 16) + (t3 >>> 31)) + 1))
  1000debd4  cmp     w24, #0xf
  1000debd8  cset    w24, eq
  1000debdc  mov     x0, x23
  1000debe0  bl      _objc_release
  1000debe4  mov     x0, x22
  1000debe8  bl      _objc_release
  1000debec  mov     x0, x21
  1000debf0  bl      _objc_release
  1000debf4  mov     x0, x20
  1000debf8  bl      _objc_release
  1000debfc  mov     x0, x19
  1000dec00  bl      _objc_release
  1000dec04  mov     x0, x24
  1000dec08  sub     sp, x29, #0x30
  1000dec0c  ldp     x29, x30, [sp, #0x30]
  1000dec10  ldp     x20, x19, [sp, #0x20]
  1000dec14  ldp     x22, x21, [sp, #0x10]
  1000dec18  ldp     x24, x23, [sp], #0x40
  1000dec1c  ret
  1000dec20  mov     x24, x0
  1000dec24  b       loc_1000dec3c
  1000dec28  mov     x24, x0
  1000dec2c  b       loc_1000dec44
  1000dec30  mov     x24, x0
  1000dec34  mov     x0, x23
  1000dec38  bl      _objc_release
loc_1000dec3c:
  1000dec3c  mov     x0, x22
  1000dec40  bl      _objc_release
loc_1000dec44:
  1000dec44  mov     x0, x21
  1000dec48  bl      _objc_release
loc_1000dec4c:
  1000dec4c  mov     x0, x20
  1000dec50  bl      _objc_release
loc_1000dec54:
  1000dec54  mov     x0, x19
  1000dec58  bl      _objc_release
  1000dec5c  mov     x0, x24
  1000dec60  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000dec64  mov     x24, x0
  1000dec68  b       loc_1000dec54
  1000dec6c  mov     x24, x0
  1000dec70  b       loc_1000dec4c

; ======================================================================
; -[ADGameModifiers slowerEnemies]
; address 0x1000dec74  size 20  kind objc
; ======================================================================
  1000dec74  adrp    x8, #0x100420000
  1000dec78  ldrsw   x8, [x8, #0x524]                         ; ivar offset ADGameModifiers._slowerEnemies (+0x8)
  1000dec7c  ldrb    w8, [x0, x8]                             ; w8 = self->_slowerEnemies
  1000dec80  and     w0, w8, #1
  1000dec84  ret

; ======================================================================
; -[ADGameModifiers setSlowerEnemies:]
; address 0x1000dec88  size 16  kind objc
; ======================================================================
  1000dec88  adrp    x8, #0x100420000
  1000dec8c  ldrsw   x8, [x8, #0x524]                         ; ivar offset ADGameModifiers._slowerEnemies (+0x8)
  1000dec90  strb    w2, [x0, x8]                             ; self->_slowerEnemies = arg1
  1000dec94  ret

; ======================================================================
; -[ADGameModifiers weakerEnemies]
; address 0x1000dec98  size 20  kind objc
; ======================================================================
  1000dec98  adrp    x8, #0x100420000
  1000dec9c  ldrsw   x8, [x8, #0x528]                         ; ivar offset ADGameModifiers._weakerEnemies (+0x9)
  1000deca0  ldrb    w8, [x0, x8]                             ; w8 = self->_weakerEnemies
  1000deca4  and     w0, w8, #1
  1000deca8  ret

; ======================================================================
; -[ADGameModifiers setWeakerEnemies:]
; address 0x1000decac  size 16  kind objc
; ======================================================================
  1000decac  adrp    x8, #0x100420000
  1000decb0  ldrsw   x8, [x8, #0x528]                         ; ivar offset ADGameModifiers._weakerEnemies (+0x9)
  1000decb4  strb    w2, [x0, x8]                             ; self->_weakerEnemies = arg1
  1000decb8  ret

; ======================================================================
; -[ADGameModifiers moreMeleeDamages]
; address 0x1000decbc  size 20  kind objc
; ======================================================================
  1000decbc  adrp    x8, #0x100420000
  1000decc0  ldrsw   x8, [x8, #0x52c]                         ; ivar offset ADGameModifiers._moreMeleeDamages (+0xa)
  1000decc4  ldrb    w8, [x0, x8]                             ; w8 = self->_moreMeleeDamages
  1000decc8  and     w0, w8, #1
  1000deccc  ret

; ======================================================================
; -[ADGameModifiers setMoreMeleeDamages:]
; address 0x1000decd0  size 16  kind objc
; ======================================================================
  1000decd0  adrp    x8, #0x100420000
  1000decd4  ldrsw   x8, [x8, #0x52c]                         ; ivar offset ADGameModifiers._moreMeleeDamages (+0xa)
  1000decd8  strb    w2, [x0, x8]                             ; self->_moreMeleeDamages = arg1
  1000decdc  ret

; ======================================================================
; -[ADGameModifiers moreDamages]
; address 0x1000dece0  size 20  kind objc
; ======================================================================
  1000dece0  adrp    x8, #0x100420000
  1000dece4  ldrsw   x8, [x8, #0x530]                         ; ivar offset ADGameModifiers._moreDamages (+0xb)
  1000dece8  ldrb    w8, [x0, x8]                             ; w8 = self->_moreDamages
  1000decec  and     w0, w8, #1
  1000decf0  ret

; ======================================================================
; -[ADGameModifiers setMoreDamages:]
; address 0x1000decf4  size 16  kind objc
; ======================================================================
  1000decf4  adrp    x8, #0x100420000
  1000decf8  ldrsw   x8, [x8, #0x530]                         ; ivar offset ADGameModifiers._moreDamages (+0xb)
  1000decfc  strb    w2, [x0, x8]                             ; self->_moreDamages = arg1
  1000ded00  ret

; ======================================================================
; -[ADGameModifiers moreBullets]
; address 0x1000ded04  size 20  kind objc
; ======================================================================
  1000ded04  adrp    x8, #0x100420000
  1000ded08  ldrsw   x8, [x8, #0x534]                         ; ivar offset ADGameModifiers._moreBullets (+0xc)
  1000ded0c  ldrb    w8, [x0, x8]                             ; w8 = self->_moreBullets
  1000ded10  and     w0, w8, #1
  1000ded14  ret

; ======================================================================
; -[ADGameModifiers setMoreBullets:]
; address 0x1000ded18  size 16  kind objc
; ======================================================================
  1000ded18  adrp    x8, #0x100420000
  1000ded1c  ldrsw   x8, [x8, #0x534]                         ; ivar offset ADGameModifiers._moreBullets (+0xc)
  1000ded20  strb    w2, [x0, x8]                             ; self->_moreBullets = arg1
  1000ded24  ret

; ======================================================================
; -[ADGameModifiers freeRevive]
; address 0x1000ded28  size 20  kind objc
; ======================================================================
  1000ded28  adrp    x8, #0x100420000
  1000ded2c  ldrsw   x8, [x8, #0x538]                         ; ivar offset ADGameModifiers._freeRevive (+0xd)
  1000ded30  ldrb    w8, [x0, x8]                             ; w8 = self->_freeRevive
  1000ded34  and     w0, w8, #1
  1000ded38  ret

; ======================================================================
; -[ADGameModifiers setFreeRevive:]
; address 0x1000ded3c  size 16  kind objc
; ======================================================================
  1000ded3c  adrp    x8, #0x100420000
  1000ded40  ldrsw   x8, [x8, #0x538]                         ; ivar offset ADGameModifiers._freeRevive (+0xd)
  1000ded44  strb    w2, [x0, x8]                             ; self->_freeRevive = arg1
  1000ded48  ret

; ======================================================================
; -[ADGameModifiers luckyShots]
; address 0x1000ded4c  size 20  kind objc
; ======================================================================
  1000ded4c  adrp    x8, #0x100420000
  1000ded50  ldrsw   x8, [x8, #0x53c]                         ; ivar offset ADGameModifiers._luckyShots (+0xe)
  1000ded54  ldrb    w8, [x0, x8]                             ; w8 = self->_luckyShots
  1000ded58  and     w0, w8, #1
  1000ded5c  ret

; ======================================================================
; -[ADGameModifiers setLuckyShots:]
; address 0x1000ded60  size 16  kind objc
; ======================================================================
  1000ded60  adrp    x8, #0x100420000
  1000ded64  ldrsw   x8, [x8, #0x53c]                         ; ivar offset ADGameModifiers._luckyShots (+0xe)
  1000ded68  strb    w2, [x0, x8]                             ; self->_luckyShots = arg1
  1000ded6c  ret

; ======================================================================
; -[ADGameModifiers metalDetector]
; address 0x1000ded70  size 20  kind objc
; ======================================================================
  1000ded70  adrp    x8, #0x100420000
  1000ded74  ldrsw   x8, [x8, #0x540]                         ; ivar offset ADGameModifiers._metalDetector (+0xf)
  1000ded78  ldrb    w8, [x0, x8]                             ; w8 = self->_metalDetector
  1000ded7c  and     w0, w8, #1
  1000ded80  ret

; ======================================================================
; -[ADGameModifiers setMetalDetector:]
; address 0x1000ded84  size 16  kind objc
; ======================================================================
  1000ded84  adrp    x8, #0x100420000
  1000ded88  ldrsw   x8, [x8, #0x540]                         ; ivar offset ADGameModifiers._metalDetector (+0xf)
  1000ded8c  strb    w2, [x0, x8]                             ; self->_metalDetector = arg1
  1000ded90  ret

; ======================================================================
; -[ADGameModifiers tesla]
; address 0x1000ded94  size 16  kind objc
; ======================================================================
  1000ded94  adrp    x8, #0x100420000
  1000ded98  ldrsw   x8, [x8, #0x520]                         ; ivar offset ADGameModifiers._tesla (+0x10)
  1000ded9c  ldrb    w0, [x0, x8]                             ; w0 = self->_tesla
  1000deda0  ret

; ======================================================================
; -[ADGameModifiers goldenBullet]
; address 0x1000deda4  size 20  kind objc
; ======================================================================
  1000deda4  adrp    x8, #0x100420000
  1000deda8  ldrsw   x8, [x8, #0x544]                         ; ivar offset ADGameModifiers._goldenBullet (+0x11)
  1000dedac  ldrb    w8, [x0, x8]                             ; w8 = self->_goldenBullet
  1000dedb0  and     w0, w8, #1
  1000dedb4  ret

; ======================================================================
; -[ADGameModifiers setGoldenBullet:]
; address 0x1000dedb8  size 16  kind objc
; ======================================================================
  1000dedb8  adrp    x8, #0x100420000
  1000dedbc  ldrsw   x8, [x8, #0x544]                         ; ivar offset ADGameModifiers._goldenBullet (+0x11)
  1000dedc0  strb    w2, [x0, x8]                             ; self->_goldenBullet = arg1
  1000dedc4  ret

; ======================================================================
; -[ADGameModifiers widerSpread]
; address 0x1000dedc8  size 20  kind objc
; ======================================================================
  1000dedc8  adrp    x8, #0x100420000
  1000dedcc  ldrsw   x8, [x8, #0x548]                         ; ivar offset ADGameModifiers._widerSpread (+0x12)
  1000dedd0  ldrb    w8, [x0, x8]                             ; w8 = self->_widerSpread
  1000dedd4  and     w0, w8, #1
  1000dedd8  ret

; ======================================================================
; -[ADGameModifiers setWiderSpread:]
; address 0x1000deddc  size 16  kind objc
; ======================================================================
  1000deddc  adrp    x8, #0x100420000
  1000dede0  ldrsw   x8, [x8, #0x548]                         ; ivar offset ADGameModifiers._widerSpread (+0x12)
  1000dede4  strb    w2, [x0, x8]                             ; self->_widerSpread = arg1
  1000dede8  ret

; ======================================================================
; -[ADGameModifiers moreHeadshots]
; address 0x1000dedec  size 20  kind objc
; ======================================================================
  1000dedec  adrp    x8, #0x100420000
  1000dedf0  ldrsw   x8, [x8, #0x54c]                         ; ivar offset ADGameModifiers._moreHeadshots (+0x13)
  1000dedf4  ldrb    w8, [x0, x8]                             ; w8 = self->_moreHeadshots
  1000dedf8  and     w0, w8, #1
  1000dedfc  ret

; ======================================================================
; -[ADGameModifiers setMoreHeadshots:]
; address 0x1000dee00  size 16  kind objc
; ======================================================================
  1000dee00  adrp    x8, #0x100420000
  1000dee04  ldrsw   x8, [x8, #0x54c]                         ; ivar offset ADGameModifiers._moreHeadshots (+0x13)
  1000dee08  strb    w2, [x0, x8]                             ; self->_moreHeadshots = arg1
  1000dee0c  ret

; ======================================================================
; -[ADGameModifiers baseComboBonus]
; address 0x1000dee10  size 20  kind objc
; ======================================================================
  1000dee10  adrp    x8, #0x100420000
  1000dee14  ldrsw   x8, [x8, #0x550]                         ; ivar offset ADGameModifiers._baseComboBonus (+0x14)
  1000dee18  ldrb    w8, [x0, x8]                             ; w8 = self->_baseComboBonus
  1000dee1c  and     w0, w8, #1
  1000dee20  ret

; ======================================================================
; -[ADGameModifiers setBaseComboBonus:]
; address 0x1000dee24  size 16  kind objc
; ======================================================================
  1000dee24  adrp    x8, #0x100420000
  1000dee28  ldrsw   x8, [x8, #0x550]                         ; ivar offset ADGameModifiers._baseComboBonus (+0x14)
  1000dee2c  strb    w2, [x0, x8]                             ; self->_baseComboBonus = arg1
  1000dee30  ret

; ======================================================================
; -[ADGameModifiers morePowerUps]
; address 0x1000dee34  size 20  kind objc
; ======================================================================
  1000dee34  adrp    x8, #0x100420000
  1000dee38  ldrsw   x8, [x8, #0x554]                         ; ivar offset ADGameModifiers._morePowerUps (+0x15)
  1000dee3c  ldrb    w8, [x0, x8]                             ; w8 = self->_morePowerUps
  1000dee40  and     w0, w8, #1
  1000dee44  ret

; ======================================================================
; -[ADGameModifiers setMorePowerUps:]
; address 0x1000dee48  size 16  kind objc
; ======================================================================
  1000dee48  adrp    x8, #0x100420000
  1000dee4c  ldrsw   x8, [x8, #0x554]                         ; ivar offset ADGameModifiers._morePowerUps (+0x15)
  1000dee50  strb    w2, [x0, x8]                             ; self->_morePowerUps = arg1
  1000dee54  ret

; ======================================================================
; -[ADGameModifiers betterPowerUps]
; address 0x1000dee58  size 20  kind objc
; ======================================================================
  1000dee58  adrp    x8, #0x100420000
  1000dee5c  ldrsw   x8, [x8, #0x558]                         ; ivar offset ADGameModifiers._betterPowerUps (+0x16)
  1000dee60  ldrb    w8, [x0, x8]                             ; w8 = self->_betterPowerUps
  1000dee64  and     w0, w8, #1
  1000dee68  ret

; ======================================================================
; -[ADGameModifiers setBetterPowerUps:]
; address 0x1000dee6c  size 16  kind objc
; ======================================================================
  1000dee6c  adrp    x8, #0x100420000
  1000dee70  ldrsw   x8, [x8, #0x558]                         ; ivar offset ADGameModifiers._betterPowerUps (+0x16)
  1000dee74  strb    w2, [x0, x8]                             ; self->_betterPowerUps = arg1
  1000dee78  ret

; ======================================================================
; -[ADGameModifiers lessHeadshots]
; address 0x1000dee7c  size 20  kind objc
; ======================================================================
  1000dee7c  adrp    x8, #0x100420000
  1000dee80  ldrsw   x8, [x8, #0x55c]                         ; ivar offset ADGameModifiers._lessHeadshots (+0x17)
  1000dee84  ldrb    w8, [x0, x8]                             ; w8 = self->_lessHeadshots
  1000dee88  and     w0, w8, #1
  1000dee8c  ret

; ======================================================================
; -[ADGameModifiers setLessHeadshots:]
; address 0x1000dee90  size 16  kind objc
; ======================================================================
  1000dee90  adrp    x8, #0x100420000
  1000dee94  ldrsw   x8, [x8, #0x55c]                         ; ivar offset ADGameModifiers._lessHeadshots (+0x17)
  1000dee98  strb    w2, [x0, x8]                             ; self->_lessHeadshots = arg1
  1000dee9c  ret

; ======================================================================
; -[ADGameModifiers strongerEnemies]
; address 0x1000deea0  size 20  kind objc
; ======================================================================
  1000deea0  adrp    x8, #0x100420000
  1000deea4  ldrsw   x8, [x8, #0x560]                         ; ivar offset ADGameModifiers._strongerEnemies (+0x18)
  1000deea8  ldrb    w8, [x0, x8]                             ; w8 = self->_strongerEnemies
  1000deeac  and     w0, w8, #1
  1000deeb0  ret

; ======================================================================
; -[ADGameModifiers setStrongerEnemies:]
; address 0x1000deeb4  size 16  kind objc
; ======================================================================
  1000deeb4  adrp    x8, #0x100420000
  1000deeb8  ldrsw   x8, [x8, #0x560]                         ; ivar offset ADGameModifiers._strongerEnemies (+0x18)
  1000deebc  strb    w2, [x0, x8]                             ; self->_strongerEnemies = arg1
  1000deec0  ret

; ======================================================================
; -[ADGameModifiers rustyWeapons]
; address 0x1000deec4  size 20  kind objc
; ======================================================================
  1000deec4  adrp    x8, #0x100420000
  1000deec8  ldrsw   x8, [x8, #0x564]                         ; ivar offset ADGameModifiers._rustyWeapons (+0x19)
  1000deecc  ldrb    w8, [x0, x8]                             ; w8 = self->_rustyWeapons
  1000deed0  and     w0, w8, #1
  1000deed4  ret

; ======================================================================
; -[ADGameModifiers setRustyWeapons:]
; address 0x1000deed8  size 16  kind objc
; ======================================================================
  1000deed8  adrp    x8, #0x100420000
  1000deedc  ldrsw   x8, [x8, #0x564]                         ; ivar offset ADGameModifiers._rustyWeapons (+0x19)
  1000deee0  strb    w2, [x0, x8]                             ; self->_rustyWeapons = arg1
  1000deee4  ret

; ======================================================================
; -[ADGameModifiers enragedHorde]
; address 0x1000deee8  size 20  kind objc
; ======================================================================
  1000deee8  adrp    x8, #0x100420000
  1000deeec  ldrsw   x8, [x8, #0x568]                         ; ivar offset ADGameModifiers._enragedHorde (+0x1a)
  1000deef0  ldrb    w8, [x0, x8]                             ; w8 = self->_enragedHorde
  1000deef4  and     w0, w8, #1
  1000deef8  ret

; ======================================================================
; -[ADGameModifiers setEnragedHorde:]
; address 0x1000deefc  size 16  kind objc
; ======================================================================
  1000deefc  adrp    x8, #0x100420000
  1000def00  ldrsw   x8, [x8, #0x568]                         ; ivar offset ADGameModifiers._enragedHorde (+0x1a)
  1000def04  strb    w2, [x0, x8]                             ; self->_enragedHorde = arg1
  1000def08  ret

; ======================================================================
; -[ADGameModifiers narrowedSpread]
; address 0x1000def0c  size 20  kind objc
; ======================================================================
  1000def0c  adrp    x8, #0x100420000
  1000def10  ldrsw   x8, [x8, #0x56c]                         ; ivar offset ADGameModifiers._narrowedSpread (+0x1b)
  1000def14  ldrb    w8, [x0, x8]                             ; w8 = self->_narrowedSpread
  1000def18  and     w0, w8, #1
  1000def1c  ret

; ======================================================================
; -[ADGameModifiers setNarrowedSpread:]
; address 0x1000def20  size 16  kind objc
; ======================================================================
  1000def20  adrp    x8, #0x100420000
  1000def24  ldrsw   x8, [x8, #0x56c]                         ; ivar offset ADGameModifiers._narrowedSpread (+0x1b)
  1000def28  strb    w2, [x0, x8]                             ; self->_narrowedSpread = arg1
  1000def2c  ret

; ======================================================================
; -[ADGameModifiers cows]
; address 0x1000def30  size 20  kind objc
; ======================================================================
  1000def30  adrp    x8, #0x100420000
  1000def34  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADGameModifiers._cows (+0x1c)
  1000def38  ldrb    w8, [x0, x8]                             ; w8 = self->_cows
  1000def3c  and     w0, w8, #1
  1000def40  ret

; ======================================================================
; -[ADGameModifiers setCows:]
; address 0x1000def44  size 16  kind objc
; ======================================================================
  1000def44  adrp    x8, #0x100420000
  1000def48  ldrsw   x8, [x8, #0x570]                         ; ivar offset ADGameModifiers._cows (+0x1c)
  1000def4c  strb    w2, [x0, x8]                             ; self->_cows = arg1
  1000def50  ret

; ======================================================================
; -[ADGameModifiers cars]
; address 0x1000def54  size 20  kind objc
; ======================================================================
  1000def54  adrp    x8, #0x100420000
  1000def58  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADGameModifiers._cars (+0x1d)
  1000def5c  ldrb    w8, [x0, x8]                             ; w8 = self->_cars
  1000def60  and     w0, w8, #1
  1000def64  ret

; ======================================================================
; -[ADGameModifiers setCars:]
; address 0x1000def68  size 16  kind objc
; ======================================================================
  1000def68  adrp    x8, #0x100420000
  1000def6c  ldrsw   x8, [x8, #0x574]                         ; ivar offset ADGameModifiers._cars (+0x1d)
  1000def70  strb    w2, [x0, x8]                             ; self->_cars = arg1
  1000def74  ret

; ======================================================================
; -[ADGameModifiers storm]
; address 0x1000def78  size 20  kind objc
; ======================================================================
  1000def78  adrp    x8, #0x100420000
  1000def7c  ldrsw   x8, [x8, #0x578]                         ; ivar offset ADGameModifiers._storm (+0x1e)
  1000def80  ldrb    w8, [x0, x8]                             ; w8 = self->_storm
  1000def84  and     w0, w8, #1
  1000def88  ret

; ======================================================================
; -[ADGameModifiers setStorm:]
; address 0x1000def8c  size 16  kind objc
; ======================================================================
  1000def8c  adrp    x8, #0x100420000
  1000def90  ldrsw   x8, [x8, #0x578]                         ; ivar offset ADGameModifiers._storm (+0x1e)
  1000def94  strb    w2, [x0, x8]                             ; self->_storm = arg1
  1000def98  ret

; ======================================================================
; -[ADGameModifiers jukebox]
; address 0x1000def9c  size 20  kind objc
; ======================================================================
  1000def9c  adrp    x8, #0x100420000
  1000defa0  ldrsw   x8, [x8, #0x57c]                         ; ivar offset ADGameModifiers._jukebox (+0x1f)
  1000defa4  ldrb    w8, [x0, x8]                             ; w8 = self->_jukebox
  1000defa8  and     w0, w8, #1
  1000defac  ret

; ======================================================================
; -[ADGameModifiers setJukebox:]
; address 0x1000defb0  size 16  kind objc
; ======================================================================
  1000defb0  adrp    x8, #0x100420000
  1000defb4  ldrsw   x8, [x8, #0x57c]                         ; ivar offset ADGameModifiers._jukebox (+0x1f)
  1000defb8  strb    w2, [x0, x8]                             ; self->_jukebox = arg1
  1000defbc  ret

; ======================================================================
; -[ADGameModifiers machine]
; address 0x1000defc0  size 20  kind objc
; ======================================================================
  1000defc0  adrp    x8, #0x100420000
  1000defc4  ldrsw   x8, [x8, #0x580]                         ; ivar offset ADGameModifiers._machine (+0x20)
  1000defc8  ldrb    w8, [x0, x8]                             ; w8 = self->_machine
  1000defcc  and     w0, w8, #1
  1000defd0  ret

; ======================================================================
; -[ADGameModifiers setMachine:]
; address 0x1000defd4  size 16  kind objc
; ======================================================================
  1000defd4  adrp    x8, #0x100420000
  1000defd8  ldrsw   x8, [x8, #0x580]                         ; ivar offset ADGameModifiers._machine (+0x20)
  1000defdc  strb    w2, [x0, x8]                             ; self->_machine = arg1
  1000defe0  ret

; ======================================================================
; -[ADGameModifiers noCritical]
; address 0x1000defe4  size 20  kind objc
; ======================================================================
  1000defe4  adrp    x8, #0x100420000
  1000defe8  ldrsw   x8, [x8, #0x584]                         ; ivar offset ADGameModifiers._noCritical (+0x21)
  1000defec  ldrb    w8, [x0, x8]                             ; w8 = self->_noCritical
  1000deff0  and     w0, w8, #1
  1000deff4  ret

; ======================================================================
; -[ADGameModifiers setNoCritical:]
; address 0x1000deff8  size 16  kind objc
; ======================================================================
  1000deff8  adrp    x8, #0x100420000
  1000deffc  ldrsw   x8, [x8, #0x584]                         ; ivar offset ADGameModifiers._noCritical (+0x21)
  1000df000  strb    w2, [x0, x8]                             ; self->_noCritical = arg1
  1000df004  ret

; ======================================================================
; -[ADGameModifiers fullMoon]
; address 0x1000df008  size 20  kind objc
; ======================================================================
  1000df008  adrp    x8, #0x100420000
  1000df00c  ldrsw   x8, [x8, #0x588]                         ; ivar offset ADGameModifiers._fullMoon (+0x22)
  1000df010  ldrb    w8, [x0, x8]                             ; w8 = self->_fullMoon
  1000df014  and     w0, w8, #1
  1000df018  ret

; ======================================================================
; -[ADGameModifiers setFullMoon:]
; address 0x1000df01c  size 16  kind objc
; ======================================================================
  1000df01c  adrp    x8, #0x100420000
  1000df020  ldrsw   x8, [x8, #0x588]                         ; ivar offset ADGameModifiers._fullMoon (+0x22)
  1000df024  strb    w2, [x0, x8]                             ; self->_fullMoon = arg1
  1000df028  ret

; ======================================================================
; -[ADGameModifiers bullshit]
; address 0x1000df02c  size 20  kind objc
; ======================================================================
  1000df02c  adrp    x8, #0x100420000
  1000df030  ldrsw   x8, [x8, #0x58c]                         ; ivar offset ADGameModifiers._bullshit (+0x23)
  1000df034  ldrb    w8, [x0, x8]                             ; w8 = self->_bullshit
  1000df038  and     w0, w8, #1
  1000df03c  ret

; ======================================================================
; -[ADGameModifiers setBullshit:]
; address 0x1000df040  size 16  kind objc
; ======================================================================
  1000df040  adrp    x8, #0x100420000
  1000df044  ldrsw   x8, [x8, #0x58c]                         ; ivar offset ADGameModifiers._bullshit (+0x23)
  1000df048  strb    w2, [x0, x8]                             ; self->_bullshit = arg1
  1000df04c  ret

; ======================================================================
; -[ADGameModifiers fasterReloadTime]
; address 0x1000df050  size 20  kind objc
; ======================================================================
  1000df050  adrp    x8, #0x100420000
  1000df054  ldrsw   x8, [x8, #0x590]                         ; ivar offset ADGameModifiers._fasterReloadTime (+0x24)
  1000df058  ldrb    w8, [x0, x8]                             ; w8 = self->_fasterReloadTime
  1000df05c  and     w0, w8, #1
  1000df060  ret

; ======================================================================
; -[ADGameModifiers setFasterReloadTime:]
; address 0x1000df064  size 16  kind objc
; ======================================================================
  1000df064  adrp    x8, #0x100420000
  1000df068  ldrsw   x8, [x8, #0x590]                         ; ivar offset ADGameModifiers._fasterReloadTime (+0x24)
  1000df06c  strb    w2, [x0, x8]                             ; self->_fasterReloadTime = arg1
  1000df070  ret

; ======================================================================
; -[ADGameModifiers slowerReloadTime]
; address 0x1000df074  size 20  kind objc
; ======================================================================
  1000df074  adrp    x8, #0x100420000
  1000df078  ldrsw   x8, [x8, #0x594]                         ; ivar offset ADGameModifiers._slowerReloadTime (+0x25)
  1000df07c  ldrb    w8, [x0, x8]                             ; w8 = self->_slowerReloadTime
  1000df080  and     w0, w8, #1
  1000df084  ret

; ======================================================================
; -[ADGameModifiers setSlowerReloadTime:]
; address 0x1000df088  size 16  kind objc
; ======================================================================
  1000df088  adrp    x8, #0x100420000
  1000df08c  ldrsw   x8, [x8, #0x594]                         ; ivar offset ADGameModifiers._slowerReloadTime (+0x25)
  1000df090  strb    w2, [x0, x8]                             ; self->_slowerReloadTime = arg1
  1000df094  ret

; ======================================================================
; -[ADGameModifiers fasterEnemies]
; address 0x1000df098  size 20  kind objc
; ======================================================================
  1000df098  adrp    x8, #0x100420000
  1000df09c  ldrsw   x8, [x8, #0x598]                         ; ivar offset ADGameModifiers._fasterEnemies (+0x26)
  1000df0a0  ldrb    w8, [x0, x8]                             ; w8 = self->_fasterEnemies
  1000df0a4  and     w0, w8, #1
  1000df0a8  ret

; ======================================================================
; -[ADGameModifiers setFasterEnemies:]
; address 0x1000df0ac  size 16  kind objc
; ======================================================================
  1000df0ac  adrp    x8, #0x100420000
  1000df0b0  ldrsw   x8, [x8, #0x598]                         ; ivar offset ADGameModifiers._fasterEnemies (+0x26)
  1000df0b4  strb    w2, [x0, x8]                             ; self->_fasterEnemies = arg1
  1000df0b8  ret

; ======================================================================
; -[ADGameModifiers lessDamages]
; address 0x1000df0bc  size 20  kind objc
; ======================================================================
  1000df0bc  adrp    x8, #0x100420000
  1000df0c0  ldrsw   x8, [x8, #0x59c]                         ; ivar offset ADGameModifiers._lessDamages (+0x27)
  1000df0c4  ldrb    w8, [x0, x8]                             ; w8 = self->_lessDamages
  1000df0c8  and     w0, w8, #1
  1000df0cc  ret

; ======================================================================
; -[ADGameModifiers setLessDamages:]
; address 0x1000df0d0  size 16  kind objc
; ======================================================================
  1000df0d0  adrp    x8, #0x100420000
  1000df0d4  ldrsw   x8, [x8, #0x59c]                         ; ivar offset ADGameModifiers._lessDamages (+0x27)
  1000df0d8  strb    w2, [x0, x8]                             ; self->_lessDamages = arg1
  1000df0dc  ret

; ======================================================================
; -[ADGameModifiers lessMeleeDamages]
; address 0x1000df0e0  size 20  kind objc
; ======================================================================
  1000df0e0  adrp    x8, #0x100420000
  1000df0e4  ldrsw   x8, [x8, #0x5a0]                         ; ivar offset ADGameModifiers._lessMeleeDamages (+0x28)
  1000df0e8  ldrb    w8, [x0, x8]                             ; w8 = self->_lessMeleeDamages
  1000df0ec  and     w0, w8, #1
  1000df0f0  ret

; ======================================================================
; -[ADGameModifiers setLessMeleeDamages:]
; address 0x1000df0f4  size 16  kind objc
; ======================================================================
  1000df0f4  adrp    x8, #0x100420000
  1000df0f8  ldrsw   x8, [x8, #0x5a0]                         ; ivar offset ADGameModifiers._lessMeleeDamages (+0x28)
  1000df0fc  strb    w2, [x0, x8]                             ; self->_lessMeleeDamages = arg1
  1000df100  ret

; ======================================================================
; -[ADGameModifiers lessBullets]
; address 0x1000df104  size 20  kind objc
; ======================================================================
  1000df104  adrp    x8, #0x100420000
  1000df108  ldrsw   x8, [x8, #0x5a4]                         ; ivar offset ADGameModifiers._lessBullets (+0x29)
  1000df10c  ldrb    w8, [x0, x8]                             ; w8 = self->_lessBullets
  1000df110  and     w0, w8, #1
  1000df114  ret

; ======================================================================
; -[ADGameModifiers setLessBullets:]
; address 0x1000df118  size 16  kind objc
; ======================================================================
  1000df118  adrp    x8, #0x100420000
  1000df11c  ldrsw   x8, [x8, #0x5a4]                         ; ivar offset ADGameModifiers._lessBullets (+0x29)
  1000df120  strb    w2, [x0, x8]                             ; self->_lessBullets = arg1
  1000df124  ret

; ======================================================================
; -[ADGameModifiers difficultyModifier]
; address 0x1000df128  size 20  kind objc
; ======================================================================
  1000df128  adrp    x8, #0x100420000
  1000df12c  ldrsw   x8, [x8, #0x5a8]                         ; ivar offset ADGameModifiers._difficultyModifier (+0x2c)
  1000df130  ldr     w8, [x0, x8]                             ; w8 = self->_difficultyModifier
  1000df134  fmov    s0, w8
  1000df138  ret

; ======================================================================
; -[ADGameModifiers setDifficultyModifier:]
; address 0x1000df13c  size 20  kind objc
; ======================================================================
  1000df13c  fmov    w8, s0
  1000df140  adrp    x9, #0x100420000
  1000df144  ldrsw   x9, [x9, #0x5a8]                         ; ivar offset ADGameModifiers._difficultyModifier (+0x2c)
  1000df148  str     w8, [x0, x9]                             ; self->_difficultyModifier = arg1
  1000df14c  ret

; ======================================================================
; sub_1000df150
; address 0x1000df150  size 340  kind sub
; ======================================================================
  1000df150  stp     x24, x23, [sp, #-0x40]!
  1000df154  stp     x22, x21, [sp, #0x10]
  1000df158  stp     x20, x19, [sp, #0x20]
  1000df15c  stp     x29, x30, [sp, #0x30]
  1000df160  add     x29, sp, #0x30
  1000df164  mov     x21, x2
  1000df168  mov     x20, x1
  1000df16c  bl      _objc_retain
  1000df170  mov     x19, x0
  1000df174  mov     x0, x20
  1000df178  bl      _objc_retain
  1000df17c  mov     x20, x0
  1000df180  adrp    x8, #0x10041d000
  1000df184  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000df188  adrp    x8, #0x100417000
  1000df18c  nop
  1000df190  ldr     x1, [x8, #0x2e0]
  1000df194  bl      _objc_msgSend                            ; [NSString class]
  1000df198  mov     x2, x0
  1000df19c  adrp    x8, #0x100417000
  1000df1a0  nop
  1000df1a4  ldr     x1, [x8, #0x3b8]
  1000df1a8  mov     x0, x19
  1000df1ac  bl      _objc_msgSend                            ; [a0 isKindOfClass:[NSString class]]
  1000df1b0  cbz     w0, loc_1000df1c0                        ; if ([a0 isKindOfClass:[NSString class]] == 0)
  1000df1b4  mov     x0, x19
  1000df1b8  bl      _objc_retain
  1000df1bc  b       loc_1000df25c
loc_1000df1c0:
  1000df1c0  adrp    x8, #0x10041b000
  1000df1c4  nop
  1000df1c8  ldr     x22, [x8, #0x1b8]
  1000df1cc  adrp    x8, #0x100417000
  1000df1d0  nop
  1000df1d4  ldr     x23, [x8, #0xe90]
  1000df1d8  mov     x0, x19
  1000df1dc  mov     x1, x23
  1000df1e0  mov     x2, x22
  1000df1e4  bl      _objc_msgSend                            ; [a0 respondsToSelector:@selector(descriptionWithLocale:indent:)]
  1000df1e8  cbz     w0, loc_1000df208                        ; if ([a0 respondsToSelector:@selector(descriptionWithLocale:indent:)] == 0)
  1000df1ec  mov     x0, x19
  1000df1f0  mov     x1, x22
  1000df1f4  mov     x2, x20
  1000df1f8  mov     x3, x21
  1000df1fc  bl      _objc_msgSend                            ; [a0 descriptionWithLocale:a1 indent:a2]
  1000df200  mov     x29, x29
  1000df204  b       loc_1000df258
loc_1000df208:
  1000df208  adrp    x8, #0x10041b000
  1000df20c  nop
  1000df210  ldr     x21, [x8, #0x1c0]
  1000df214  mov     x0, x19
  1000df218  mov     x1, x23
  1000df21c  mov     x2, x21
  1000df220  bl      _objc_msgSend                            ; [a0 respondsToSelector:@selector(descriptionWithLocale:)]
  1000df224  cbz     w0, loc_1000df240                        ; if ([a0 respondsToSelector:@selector(descriptionWithLocale:)] == 0)
  1000df228  mov     x0, x19
  1000df22c  mov     x1, x21
  1000df230  mov     x2, x20
  1000df234  bl      _objc_msgSend                            ; [a0 descriptionWithLocale:a1]
  1000df238  mov     x29, x29
  1000df23c  b       loc_1000df258
loc_1000df240:
  1000df240  adrp    x8, #0x100418000
  1000df244  nop
  1000df248  ldr     x1, [x8, #0x648]
  1000df24c  mov     x0, x19
  1000df250  bl      _objc_msgSend                            ; [a0 description]
  1000df254  mov     x29, x29
loc_1000df258:
  1000df258  bl      _objc_retainAutoreleasedReturnValue
loc_1000df25c:
  1000df25c  mov     x21, x0
  1000df260  mov     x0, x20
  1000df264  bl      _objc_release
  1000df268  mov     x0, x19
  1000df26c  bl      _objc_release
  1000df270  mov     x0, x21
  1000df274  ldp     x29, x30, [sp, #0x30]
  1000df278  ldp     x20, x19, [sp, #0x20]
  1000df27c  ldp     x22, x21, [sp, #0x10]
  1000df280  ldp     x24, x23, [sp], #0x40
  1000df284  b       _objc_autoreleaseReturnValue
  1000df288  mov     x21, x0
  1000df28c  mov     x0, x20
  1000df290  bl      _objc_release
  1000df294  mov     x0, x19
  1000df298  bl      _objc_release
  1000df29c  mov     x0, x21
  1000df2a0  bl      __Unwind_Resume                          ; Unwind_Resume()
