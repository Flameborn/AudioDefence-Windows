// unit ADTeslaPowerUp — 7 functions
//   0x1000d7380    1012  -[ADTeslaPowerUp preload]
//   0x1000d7774     248  -[ADTeslaPowerUp use]
//   0x1000d786c     704  -[ADTeslaPowerUp update:]
//   0x1000d7b2c      72  -[ADTeslaPowerUp update:]_block_invoke
//   0x1000d7b74       8  sub_1000d7b74
//   0x1000d7b7c       8  sub_1000d7b7c
//   0x1000d7b84     400  -[ADTeslaPowerUp clean]

; ======================================================================
; -[ADTeslaPowerUp preload]
; address 0x1000d7380  size 1012  kind objc
; ======================================================================
  1000d7380  stp     x26, x25, [sp, #-0x50]!
  1000d7384  stp     x24, x23, [sp, #0x10]
  1000d7388  stp     x22, x21, [sp, #0x20]
  1000d738c  stp     x20, x19, [sp, #0x30]
  1000d7390  stp     x29, x30, [sp, #0x40]
  1000d7394  add     x29, sp, #0x40
  1000d7398  sub     sp, sp, #0x10
  1000d739c  mov     x19, x0
  1000d73a0  adrp    x8, #0x10041d000
  1000d73a4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000d73a8  adrp    x8, #0x100417000
  1000d73ac  nop
  1000d73b0  ldr     x1, [x8, #0x4f0]
  1000d73b4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000d73b8  mov     x29, x29
  1000d73bc  bl      _objc_retainAutoreleasedReturnValue
  1000d73c0  mov     x20, x0
  1000d73c4  adrp    x8, #0x100417000
  1000d73c8  nop
  1000d73cc  ldr     x1, [x8, #0x4f8]
  1000d73d0  adrp    x2, #0x1003c2000
  1000d73d4  add     x2, x2, #0x690                           ; @"tesla_powerup"
  1000d73d8  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tesla_powerup"]
  1000d73dc  mov     x29, x29
  1000d73e0  bl      _objc_retainAutoreleasedReturnValue
  1000d73e4  mov     x21, x0
  1000d73e8  adrp    x8, #0x100417000
  1000d73ec  nop
  1000d73f0  ldr     x1, [x8, #0x500]
  1000d73f4  mov     x0, x19
  1000d73f8  mov     x2, x21
  1000d73fc  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:@"tesla_powerup"]]
  1000d7400  mov     x0, x21
  1000d7404  bl      _objc_release
  1000d7408  mov     x0, x20
  1000d740c  bl      _objc_release
  1000d7410  adrp    x8, #0x100416000
  1000d7414  nop
  1000d7418  ldr     x1, [x8, #0xc98]
  1000d741c  mov     x0, x19
  1000d7420  bl      _objc_msgSend                            ; [self playlist]
  1000d7424  mov     x29, x29
  1000d7428  bl      _objc_retainAutoreleasedReturnValue
  1000d742c  mov     x20, x0
  1000d7430  adrp    x8, #0x100417000
  1000d7434  nop
  1000d7438  ldr     x1, [x8, #0x508]
  1000d743c  bl      _objc_msgSend                            ; [[self playlist] activate]
  1000d7440  mov     x0, x20
  1000d7444  bl      _objc_release
  1000d7448  adrp    x8, #0x10041d000
  1000d744c  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000d7450  adrp    x8, #0x100417000
  1000d7454  nop
  1000d7458  ldr     x1, [x8, #0xa0]
  1000d745c  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000d7460  mov     x29, x29
  1000d7464  bl      _objc_retainAutoreleasedReturnValue
  1000d7468  mov     x21, x0
  1000d746c  adrp    x8, #0x100418000
  1000d7470  nop
  1000d7474  ldr     x1, [x8, #0x4a0]
  1000d7478  adrp    x2, #0x1003c0000
  1000d747c  add     x2, x2, #0xcf0                           ; @"tesla"
  1000d7480  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"]
  1000d7484  mov     x29, x29
  1000d7488  bl      _objc_retainAutoreleasedReturnValue
  1000d748c  mov     x20, x0
  1000d7490  mov     x0, x21
  1000d7494  bl      _objc_release
  1000d7498  adrp    x8, #0x100417000
  1000d749c  nop
  1000d74a0  ldr     x21, [x8, #0x40]
  1000d74a4  adrp    x2, #0x1003b9000
  1000d74a8  add     x2, x2, #0xdb0                           ; @"name"
  1000d74ac  mov     x0, x20
  1000d74b0  mov     x1, x21
  1000d74b4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:@"name"]
  1000d74b8  mov     x29, x29
  1000d74bc  bl      _objc_retainAutoreleasedReturnValue
  1000d74c0  mov     x22, x0
  1000d74c4  adrp    x8, #0x100417000
  1000d74c8  nop
  1000d74cc  ldr     x1, [x8, #0x428]
  1000d74d0  mov     x0, x19
  1000d74d4  mov     x2, x22
  1000d74d8  bl      _objc_msgSend                            ; [self setName:[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:@"name"]]
  1000d74dc  mov     x0, x22
  1000d74e0  bl      _objc_release
  1000d74e4  adrp    x8, #0x10041d000
  1000d74e8  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000d74ec  adrp    x8, #0x100416000
  1000d74f0  nop
  1000d74f4  ldr     x1, [x8, #0xec8]
  1000d74f8  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000d74fc  mov     x29, x29
  1000d7500  bl      _objc_retainAutoreleasedReturnValue
  1000d7504  mov     x23, x0
  1000d7508  adrp    x8, #0x100417000
  1000d750c  nop
  1000d7510  ldr     x1, [x8, #0xd90]
  1000d7514  adrp    x2, #0x1003c0000
  1000d7518  add     x2, x2, #0xcf0                           ; @"tesla"
  1000d751c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"]
  1000d7520  mov     x22, x0
  1000d7524  mov     x0, x23
  1000d7528  bl      _objc_release
  1000d752c  adrp    x8, #0x10041e000
  1000d7530  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000d7534  adrp    x8, #0x100417000
  1000d7538  nop
  1000d753c  ldr     x1, [x8, #0x510]
  1000d7540  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000d7544  mov     x29, x29
  1000d7548  bl      _objc_retainAutoreleasedReturnValue
  1000d754c  mov     x23, x0
  1000d7550  adrp    x8, #0x100419000
  1000d7554  nop
  1000d7558  ldr     x1, [x8, #0xfe0]
  1000d755c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] betterPowerUps]
  1000d7560  cbz     w0, loc_1000d75c8                        ; if ([[ADGameModifiers sharedModifiers] betterPowerUps] == 0)
  1000d7564  adrp    x8, #0x10041d000
  1000d7568  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000d756c  add     w8, w22, #1
  1000d7570  adrp    x9, #0x100416000
  1000d7574  nop
  1000d7578  ldr     x1, [x9, #0xee8]
  1000d757c  str     x8, [sp]
  1000d7580  adrp    x2, #0x1003ba000
  1000d7584  add     x2, x2, #0x450                           ; @"level_%i"
  1000d7588  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"] + 1)]
  1000d758c  mov     x29, x29
  1000d7590  bl      _objc_retainAutoreleasedReturnValue
  1000d7594  mov     x24, x0
  1000d7598  mov     x0, x20
  1000d759c  mov     x1, x21
  1000d75a0  mov     x2, x24
  1000d75a4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"] + 1)]]
  1000d75a8  mov     x29, x29
  1000d75ac  bl      _objc_retainAutoreleasedReturnValue
  1000d75b0  cmp     x0, #0
  1000d75b4  cset    w25, ne                                  ; t1 = ([[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:[NSString stringWithFormat:@… != 0)
  1000d75b8  bl      _objc_release
  1000d75bc  mov     x0, x24
  1000d75c0  bl      _objc_release
  1000d75c4  b       loc_1000d75cc
loc_1000d75c8:
  1000d75c8  mov     w25, #0
loc_1000d75cc:
  1000d75cc  mov     x0, x23
  1000d75d0  bl      _objc_release
  1000d75d4  add     w8, w25, w22
  1000d75d8  adrp    x9, #0x10041d000
  1000d75dc  ldr     x0, [x9, #0xf78]                         ; class NSString
  1000d75e0  adrp    x9, #0x100416000
  1000d75e4  nop
  1000d75e8  ldr     x1, [x9, #0xee8]
  1000d75ec  str     x8, [sp]
  1000d75f0  adrp    x2, #0x1003ba000
  1000d75f4  add     x2, x2, #0x450                           ; @"level_%i"
  1000d75f8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"])]
  1000d75fc  mov     x29, x29
  1000d7600  bl      _objc_retainAutoreleasedReturnValue
  1000d7604  mov     x22, x0
  1000d7608  mov     x0, x20
  1000d760c  mov     x1, x21
  1000d7610  mov     x2, x22
  1000d7614  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"])]]
  1000d7618  mov     x29, x29
  1000d761c  bl      _objc_retainAutoreleasedReturnValue
  1000d7620  mov     x23, x0
  1000d7624  adrp    x2, #0x1003ba000
  1000d7628  add     x2, x2, #0x230                           ; @"kills"
  1000d762c  mov     x1, x21
  1000d7630  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"])]] objectForKey:@"kills"]
  1000d7634  mov     x29, x29
  1000d7638  bl      _objc_retainAutoreleasedReturnValue
  1000d763c  mov     x24, x0
  1000d7640  adrp    x8, #0x100417000
  1000d7644  nop
  1000d7648  ldr     x1, [x8, #0x110]
  1000d764c  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"])]] objectForKey:@"kills"] intValue]
  1000d7650  adrp    x8, #0x100420000
  1000d7654  ldrsw   x8, [x8, #0x49c]                         ; ivar offset ADTeslaPowerUp.maxNumberOfKills (+0x8)
  1000d7658  str     w0, [x19, x8]                            ; self->maxNumberOfKills = [[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tesla"])]] objectForKey:@"kills"] intValue]
  1000d765c  mov     x0, x24
  1000d7660  bl      _objc_release
  1000d7664  mov     x0, x23
  1000d7668  bl      _objc_release
  1000d766c  mov     x0, x22
  1000d7670  bl      _objc_release
  1000d7674  adrp    x2, #0x1003c2000
  1000d7678  add     x2, x2, #0x6b0                           ; @"timeBetweenKills"
  1000d767c  mov     x0, x20
  1000d7680  mov     x1, x21
  1000d7684  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:@"timeBetweenKills"]
  1000d7688  mov     x29, x29
  1000d768c  bl      _objc_retainAutoreleasedReturnValue
  1000d7690  mov     x21, x0
  1000d7694  adrp    x8, #0x100417000
  1000d7698  nop
  1000d769c  ldr     x1, [x8, #0x48]
  1000d76a0  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:@"timeBetweenKills"] floatValue]
  1000d76a4  adrp    x8, #0x100420000
  1000d76a8  ldrsw   x8, [x8, #0x4a0]                         ; ivar offset ADTeslaPowerUp.timeBetweenKills (+0x18)
  1000d76ac  str     s0, [x19, x8]                            ; self->timeBetweenKills = [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tesla"] objectForKey:@"timeBetweenKills"] floatValue]
  1000d76b0  mov     x0, x21
  1000d76b4  bl      _objc_release
  1000d76b8  mov     x0, x20
  1000d76bc  sub     sp, x29, #0x40
  1000d76c0  ldp     x29, x30, [sp, #0x40]
  1000d76c4  ldp     x20, x19, [sp, #0x30]
  1000d76c8  ldp     x22, x21, [sp, #0x20]
  1000d76cc  ldp     x24, x23, [sp, #0x10]
  1000d76d0  ldp     x26, x25, [sp], #0x50
  1000d76d4  b       _objc_release
  1000d76d8  mov     x19, x0
  1000d76dc  b       loc_1000d7764
  1000d76e0  mov     x19, x0
  1000d76e4  b       loc_1000d775c
  1000d76e8  mov     x19, x0
  1000d76ec  b       loc_1000d7764
  1000d76f0  b       loc_1000d7744
  1000d76f4  mov     x19, x0
  1000d76f8  b       loc_1000d7764
  1000d76fc  mov     x19, x0
  1000d7700  mov     x0, x21
  1000d7704  b       loc_1000d7768
  1000d7708  mov     x19, x0
  1000d770c  b       loc_1000d773c
  1000d7710  mov     x19, x0
  1000d7714  b       loc_1000d775c
  1000d7718  mov     x19, x0
  1000d771c  b       loc_1000d773c
  1000d7720  mov     x19, x0
  1000d7724  b       loc_1000d7734
  1000d7728  mov     x19, x0
  1000d772c  mov     x0, x24
  1000d7730  bl      _objc_release
loc_1000d7734:
  1000d7734  mov     x0, x23
  1000d7738  bl      _objc_release
loc_1000d773c:
  1000d773c  mov     x0, x22
  1000d7740  b       loc_1000d7760
loc_1000d7744:
  1000d7744  mov     x19, x0
  1000d7748  mov     x0, x21
  1000d774c  b       loc_1000d7760
  1000d7750  mov     x19, x0
  1000d7754  mov     x0, x24
  1000d7758  bl      _objc_release
loc_1000d775c:
  1000d775c  mov     x0, x23
loc_1000d7760:
  1000d7760  bl      _objc_release
loc_1000d7764:
  1000d7764  mov     x0, x20
loc_1000d7768:
  1000d7768  bl      _objc_release
  1000d776c  mov     x0, x19
  1000d7770  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTeslaPowerUp use]
; address 0x1000d7774  size 248  kind objc
; ======================================================================
  1000d7774  stp     x22, x21, [sp, #-0x30]!
  1000d7778  stp     x20, x19, [sp, #0x10]
  1000d777c  stp     x29, x30, [sp, #0x20]
  1000d7780  add     x29, sp, #0x20
  1000d7784  sub     sp, sp, #0x10
  1000d7788  mov     x19, x0
  1000d778c  str     x19, [sp]
  1000d7790  adrp    x8, #0x10041e000
  1000d7794  ldr     x8, [x8, #0xff8]
  1000d7798  str     x8, [sp, #8]
  1000d779c  adrp    x8, #0x100417000
  1000d77a0  nop
  1000d77a4  ldr     x1, [x8, #0x9c0]
  1000d77a8  mov     x0, sp
  1000d77ac  bl      _objc_msgSendSuper2                      ; [super use]
  1000d77b0  adrp    x8, #0x100416000
  1000d77b4  nop
  1000d77b8  ldr     x1, [x8, #0xc98]
  1000d77bc  mov     x0, x19
  1000d77c0  bl      _objc_msgSend                            ; [self playlist]
  1000d77c4  mov     x29, x29
  1000d77c8  bl      _objc_retainAutoreleasedReturnValue
  1000d77cc  mov     x21, x0
  1000d77d0  adrp    x8, #0x100417000
  1000d77d4  nop
  1000d77d8  ldr     x1, [x8, #0x990]
  1000d77dc  adrp    x2, #0x1003c2000
  1000d77e0  add     x2, x2, #0x6d0                           ; @"tesla_launch"
  1000d77e4  bl      _objc_msgSend                            ; [[self playlist] S3DSound:@"tesla_launch"]
  1000d77e8  mov     x29, x29
  1000d77ec  bl      _objc_retainAutoreleasedReturnValue
  1000d77f0  mov     x20, x0
  1000d77f4  mov     x0, x21
  1000d77f8  bl      _objc_release
  1000d77fc  adrp    x8, #0x100416000
  1000d7800  nop
  1000d7804  ldr     x1, [x8, #0xcb8]
  1000d7808  mov     w2, #0
  1000d780c  mov     x0, x20
  1000d7810  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"tesla_launch"] play:0]
  1000d7814  adrp    x8, #0x100420000
  1000d7818  ldrsw   x8, [x8, #0x4a4]                         ; ivar offset ADTeslaPowerUp.active (+0xc)
  1000d781c  mov     w9, #1
  1000d7820  strb    w9, [x19, x8]                            ; self->active = 1
  1000d7824  adrp    x8, #0x100420000
  1000d7828  ldrsw   x8, [x8, #0x4a8]                         ; ivar offset ADTeslaPowerUp.timeSinceLastKill (+0x14)
  1000d782c  str     wzr, [x19, x8]                           ; self->timeSinceLastKill = 0
  1000d7830  mov     x0, x20
  1000d7834  bl      _objc_release
  1000d7838  sub     sp, x29, #0x20
  1000d783c  ldp     x29, x30, [sp, #0x20]
  1000d7840  ldp     x20, x19, [sp, #0x10]
  1000d7844  ldp     x22, x21, [sp], #0x30
  1000d7848  ret
  1000d784c  mov     x19, x0
  1000d7850  mov     x0, x21
  1000d7854  b       loc_1000d7860
  1000d7858  mov     x19, x0
  1000d785c  mov     x0, x20
loc_1000d7860:
  1000d7860  bl      _objc_release
  1000d7864  mov     x0, x19
  1000d7868  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTeslaPowerUp update:]
; address 0x1000d786c  size 704  kind objc
; ======================================================================
  1000d786c  stp     x24, x23, [sp, #-0x40]!
  1000d7870  stp     x22, x21, [sp, #0x10]
  1000d7874  stp     x20, x19, [sp, #0x20]
  1000d7878  stp     x29, x30, [sp, #0x30]
  1000d787c  add     x29, sp, #0x30
  1000d7880  sub     sp, sp, #0x30
  1000d7884  mov     x19, x0
  1000d7888  adrp    x8, #0x100420000
  1000d788c  ldrsw   x8, [x8, #0x4a4]                         ; ivar offset ADTeslaPowerUp.active (+0xc)
  1000d7890  ldrb    w8, [x19, x8]                            ; w8 = self->active
  1000d7894  cbz     w8, loc_1000d7ab8                        ; if (self->active == 0)
  1000d7898  adrp    x8, #0x100420000
  1000d789c  ldrsw   x23, [x8, #0x4a8]                        ; ivar offset ADTeslaPowerUp.timeSinceLastKill (+0x14)
  1000d78a0  ldr     s1, [x19, x23]                           ; s1 = self->timeSinceLastKill
  1000d78a4  fadd    s0, s1, s0
  1000d78a8  str     s0, [x19, x23]                           ; self->timeSinceLastKill = (self->timeSinceLastKill + arg1)
  1000d78ac  fmov    s1, #2.00000000
  1000d78b0  fcmp    s0, s1
  1000d78b4  b.le    loc_1000d7ab8                            ; if ((self->timeSinceLastKill + arg1) <= (or unordered) 2)
  1000d78b8  adrp    x8, #0x100420000
  1000d78bc  ldrsw   x22, [x8, #0x4ac]                        ; ivar offset ADTeslaPowerUp.currentKillCount (+0x10)
  1000d78c0  ldr     w8, [x19, x22]                           ; w8 = self->currentKillCount
  1000d78c4  adrp    x9, #0x100420000
  1000d78c8  ldrsw   x24, [x9, #0x49c]                        ; ivar offset ADTeslaPowerUp.maxNumberOfKills (+0x8)
  1000d78cc  ldr     w9, [x19, x24]                           ; w9 = self->maxNumberOfKills
  1000d78d0  cmp     w8, w9
  1000d78d4  b.ge    loc_1000d7ab8                            ; if (self->currentKillCount >= self->maxNumberOfKills)
  1000d78d8  add     w8, w8, #1
  1000d78dc  str     w8, [x19, x22]                           ; self->currentKillCount = (self->currentKillCount + 1)
  1000d78e0  adrp    x8, #0x10041e000
  1000d78e4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000d78e8  adrp    x8, #0x100417000
  1000d78ec  nop
  1000d78f0  ldr     x1, [x8, #0xaa8]
  1000d78f4  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000d78f8  mov     x29, x29
  1000d78fc  bl      _objc_retainAutoreleasedReturnValue
  1000d7900  mov     x21, x0
  1000d7904  adrp    x8, #0x10041a000
  1000d7908  nop
  1000d790c  ldr     x1, [x8, #0xea0]
  1000d7910  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] closestEnemy]
  1000d7914  mov     x29, x29
  1000d7918  bl      _objc_retainAutoreleasedReturnValue
  1000d791c  mov     x20, x0
  1000d7920  mov     x0, x21
  1000d7924  bl      _objc_release
  1000d7928  adrp    x8, #0x100418000
  1000d792c  nop
  1000d7930  ldr     x1, [x8, #0xcb8]
  1000d7934  movi    v0.16b, #0
  1000d7938  mov     x0, x20
  1000d793c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] closestEnemy] setLife:0]
  1000d7940  cbz     x20, loc_1000d7a88                       ; if ([[ADBrickManager sharedBrickManager] closestEnemy] == 0)
  1000d7944  adrp    x8, #0x100416000
  1000d7948  nop
  1000d794c  ldr     x1, [x8, #0xc98]
  1000d7950  mov     x0, x19
  1000d7954  bl      _objc_msgSend                            ; [self playlist]
  1000d7958  mov     x29, x29
  1000d795c  bl      _objc_retainAutoreleasedReturnValue
  1000d7960  mov     x22, x0
  1000d7964  adrp    x8, #0x100416000
  1000d7968  nop
  1000d796c  ldr     x1, [x8, #0xca0]
  1000d7970  adrp    x2, #0x1003c2000
  1000d7974  add     x2, x2, #0x6f0                           ; @"zap"
  1000d7978  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"zap"]
  1000d797c  mov     x29, x29
  1000d7980  bl      _objc_retainAutoreleasedReturnValue
  1000d7984  mov     x21, x0
  1000d7988  mov     x0, x22
  1000d798c  bl      _objc_release
  1000d7990  adrp    x8, #0x100416000
  1000d7994  nop
  1000d7998  ldr     x1, [x8, #0xca8]
  1000d799c  mov     w2, #1
  1000d79a0  mov     x0, x21
  1000d79a4  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"zap"] setSpatialized:1]
  1000d79a8  adrp    x8, #0x100416000
  1000d79ac  nop
  1000d79b0  ldr     x1, [x8, #0xff0]
  1000d79b4  mov     x0, x20
  1000d79b8  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] closestEnemy] sound]
  1000d79bc  mov     x29, x29
  1000d79c0  bl      _objc_retainAutoreleasedReturnValue
  1000d79c4  mov     x22, x0
  1000d79c8  adrp    x8, #0x100419000
  1000d79cc  nop
  1000d79d0  ldr     x1, [x8, #0x328]
  1000d79d4  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] closestEnemy] sound] planar]
  1000d79d8  adrp    x8, #0x100417000
  1000d79dc  nop
  1000d79e0  ldr     x1, [x8, #0x38]
  1000d79e4  mov     x0, x21
  1000d79e8  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"zap"] setPlanar:{[[[[ADBrickManager sharedBrickManager] closestEnemy] sound] planar].0, [[[[ADBrickManager sharedBrickManager] closestEnemy] sound] planar].1, [[[[ADBrickManager sharedBrickManager] closestEnemy] sound] planar].2}]
  1000d79ec  mov     x0, x22
  1000d79f0  bl      _objc_release
  1000d79f4  adrp    x8, #0x100416000
  1000d79f8  nop
  1000d79fc  ldr     x1, [x8, #0xcb0]
  1000d7a00  fmov    s0, #3.50000000
  1000d7a04  mov     x0, x21
  1000d7a08  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"zap"] setGain:3.5]
  1000d7a0c  adrp    x8, #0x100416000
  1000d7a10  nop
  1000d7a14  ldr     x1, [x8, #0xcb8]
  1000d7a18  mov     w2, #0
  1000d7a1c  mov     x0, x21
  1000d7a20  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"zap"] play:0]
  1000d7a24  adrp    x8, #0x1003b0000
  1000d7a28  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  1000d7a2c  mov     w9, #-0x3e000000
  1000d7a30  str     x8, [sp]
  1000d7a34  stp     w9, wzr, [sp, #8]
  1000d7a38  adr     x8, #0x1000d7b2c                         ; &-[ADTeslaPowerUp update:]_block_invoke
  1000d7a3c  nop
  1000d7a40  str     x8, [sp, #0x10]
  1000d7a44  adrp    x8, #0x1003b2000
  1000d7a48  add     x8, x8, #0xa60                           ; &d_1003b2a60
  1000d7a4c  str     x8, [sp, #0x18]
  1000d7a50  mov     x0, x19
  1000d7a54  bl      _objc_retain
  1000d7a58  stp     x0, x0, [sp, #0x20]
  1000d7a5c  adrp    x8, #0x100417000
  1000d7a60  nop
  1000d7a64  ldr     x1, [x8, #0x9c8]
  1000d7a68  mov     x2, sp
  1000d7a6c  mov     x0, x21
  1000d7a70  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"zap"] add3DSoundEndCallback:^{-[ADTeslaPowerUp update:]_block_invoke captures +0x20=self, +0x28=self}]
  1000d7a74  ldr     x0, [sp, #0x20]
  1000d7a78  bl      _objc_release
  1000d7a7c  mov     x0, x21
  1000d7a80  bl      _objc_release
  1000d7a84  b       loc_1000d7aac
loc_1000d7a88:
  1000d7a88  ldr     w8, [x19, x22]                           ; w8 = self->currentKillCount
  1000d7a8c  ldr     w9, [x19, x24]                           ; w9 = self->maxNumberOfKills
  1000d7a90  cmp     w8, w9
  1000d7a94  b.lt    loc_1000d7aac                            ; if (self->currentKillCount < self->maxNumberOfKills)
  1000d7a98  adrp    x8, #0x100419000
  1000d7a9c  nop
  1000d7aa0  ldr     x1, [x8, #0x158]
  1000d7aa4  mov     x0, x19
  1000d7aa8  bl      _objc_msgSend                            ; [self clean]
loc_1000d7aac:
  1000d7aac  str     wzr, [x19, x23]                          ; self->timeSinceLastKill = 0
  1000d7ab0  mov     x0, x20
  1000d7ab4  bl      _objc_release
loc_1000d7ab8:
  1000d7ab8  sub     sp, x29, #0x30
  1000d7abc  ldp     x29, x30, [sp, #0x30]
  1000d7ac0  ldp     x20, x19, [sp, #0x20]
  1000d7ac4  ldp     x22, x21, [sp, #0x10]
  1000d7ac8  ldp     x24, x23, [sp], #0x40
  1000d7acc  ret
  1000d7ad0  mov     x19, x0
  1000d7ad4  b       loc_1000d7b14
  1000d7ad8  mov     x19, x0
  1000d7adc  b       loc_1000d7b1c
  1000d7ae0  mov     x19, x0
  1000d7ae4  mov     x0, x22
  1000d7ae8  b       loc_1000d7b10
  1000d7aec  mov     x19, x0
  1000d7af0  mov     x0, x21
  1000d7af4  b       loc_1000d7b20
  1000d7af8  mov     x19, x0
  1000d7afc  mov     x0, x22
  1000d7b00  bl      _objc_release
  1000d7b04  b       loc_1000d7b1c
  1000d7b08  mov     x19, x0
  1000d7b0c  ldr     x0, [sp, #0x20]
loc_1000d7b10:
  1000d7b10  bl      _objc_release
loc_1000d7b14:
  1000d7b14  mov     x0, x21
  1000d7b18  bl      _objc_release
loc_1000d7b1c:
  1000d7b1c  mov     x0, x20
loc_1000d7b20:
  1000d7b20  bl      _objc_release
  1000d7b24  mov     x0, x19
  1000d7b28  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTeslaPowerUp update:]_block_invoke
; address 0x1000d7b2c  size 72  kind block
; ======================================================================
  1000d7b2c  stp     x29, x30, [sp, #-0x10]!
  1000d7b30  mov     x29, sp
  1000d7b34  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  1000d7b38  adrp    x9, #0x100420000
  1000d7b3c  ldrsw   x9, [x9, #0x4ac]                         ; ivar offset ADTeslaPowerUp.currentKillCount (+0x10)
  1000d7b40  ldr     w9, [x8, x9]                             ; w9 = self->currentKillCount
  1000d7b44  adrp    x10, #0x100420000
  1000d7b48  ldrsw   x10, [x10, #0x49c]                       ; ivar offset ADTeslaPowerUp.maxNumberOfKills (+0x8)
  1000d7b4c  ldr     w8, [x8, x10]                            ; w8 = self->maxNumberOfKills
  1000d7b50  cmp     w9, w8
  1000d7b54  b.lt    loc_1000d7b6c                            ; if (self->currentKillCount < self->maxNumberOfKills)
  1000d7b58  ldr     x0, [x0, #0x28]                          ; x0 = captured self
  1000d7b5c  adrp    x8, #0x100419000
  1000d7b60  nop
  1000d7b64  ldr     x1, [x8, #0x158]
  1000d7b68  bl      _objc_msgSend                            ; [self clean]
loc_1000d7b6c:
  1000d7b6c  ldp     x29, x30, [sp], #0x10
  1000d7b70  ret

; ======================================================================
; sub_1000d7b74
; address 0x1000d7b74  size 8  kind sub
; ======================================================================
  1000d7b74  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  1000d7b78  b       _objc_retain

; ======================================================================
; sub_1000d7b7c
; address 0x1000d7b7c  size 8  kind sub
; ======================================================================
  1000d7b7c  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  1000d7b80  b       _objc_release

; ======================================================================
; -[ADTeslaPowerUp clean]
; address 0x1000d7b84  size 400  kind objc
; ======================================================================
  1000d7b84  stp     x24, x23, [sp, #-0x40]!
  1000d7b88  stp     x22, x21, [sp, #0x10]
  1000d7b8c  stp     x20, x19, [sp, #0x20]
  1000d7b90  stp     x29, x30, [sp, #0x30]
  1000d7b94  add     x29, sp, #0x30
  1000d7b98  mov     x20, x0
  1000d7b9c  adrp    x8, #0x100420000
  1000d7ba0  ldrsw   x8, [x8, #0x4a4]                         ; ivar offset ADTeslaPowerUp.active (+0xc)
  1000d7ba4  strb    wzr, [x20, x8]                           ; self->active = 0
  1000d7ba8  adrp    x8, #0x100416000
  1000d7bac  nop
  1000d7bb0  ldr     x1, [x8, #0xc98]
  1000d7bb4  bl      _objc_msgSend                            ; [self playlist]
  1000d7bb8  mov     x29, x29
  1000d7bbc  bl      _objc_retainAutoreleasedReturnValue
  1000d7bc0  mov     x19, x0
  1000d7bc4  adrp    x8, #0x100417000
  1000d7bc8  nop
  1000d7bcc  ldr     x1, [x8, #0x618]
  1000d7bd0  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  1000d7bd4  mov     x0, x19
  1000d7bd8  bl      _objc_release
  1000d7bdc  adrp    x8, #0x10041e000
  1000d7be0  ldr     x0, [x8, #8]                             ; class ADTracker
  1000d7be4  adrp    x8, #0x100416000
  1000d7be8  nop
  1000d7bec  ldr     x1, [x8, #0xac0]
  1000d7bf0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000d7bf4  mov     x29, x29
  1000d7bf8  bl      _objc_retainAutoreleasedReturnValue
  1000d7bfc  mov     x19, x0
  1000d7c00  adrp    x24, #0x10041d000
  1000d7c04  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000d7c08  adrp    x8, #0x100417000
  1000d7c0c  nop
  1000d7c10  ldr     x21, [x8, #0x228]
  1000d7c14  mov     x1, x21
  1000d7c18  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d7c1c  mov     x29, x29
  1000d7c20  bl      _objc_retainAutoreleasedReturnValue
  1000d7c24  mov     x22, x0
  1000d7c28  adrp    x8, #0x10041a000
  1000d7c2c  nop
  1000d7c30  ldr     x1, [x8]
  1000d7c34  bl      _objc_msgSend                            ; [[ADInGameStats singleton] enemyKillsWithPowerup]
  1000d7c38  mov     x23, x0
  1000d7c3c  adrp    x8, #0x100417000
  1000d7c40  nop
  1000d7c44  ldr     x1, [x8, #0x450]
  1000d7c48  mov     x0, x20
  1000d7c4c  bl      _objc_msgSend                            ; [self name]
  1000d7c50  mov     x29, x29
  1000d7c54  bl      _objc_retainAutoreleasedReturnValue
  1000d7c58  mov     x20, x0
  1000d7c5c  adrp    x8, #0x10041a000
  1000d7c60  nop
  1000d7c64  ldr     x1, [x8, #8]
  1000d7c68  mov     x0, x19
  1000d7c6c  mov     x2, x23
  1000d7c70  mov     x3, x20
  1000d7c74  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] numberOfEnemyKills:[[ADInGameStats singleton] enemyKillsWithPowerup] ByPowerUp:[self name]]
  1000d7c78  mov     x0, x20
  1000d7c7c  bl      _objc_release
  1000d7c80  mov     x0, x22
  1000d7c84  bl      _objc_release
  1000d7c88  mov     x0, x19
  1000d7c8c  bl      _objc_release
  1000d7c90  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000d7c94  mov     x1, x21
  1000d7c98  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000d7c9c  mov     x29, x29
  1000d7ca0  bl      _objc_retainAutoreleasedReturnValue
  1000d7ca4  mov     x19, x0
  1000d7ca8  adrp    x8, #0x10041a000
  1000d7cac  nop
  1000d7cb0  ldr     x1, [x8, #0x10]
  1000d7cb4  mov     x2, #0
  1000d7cb8  bl      _objc_msgSend                            ; [[ADInGameStats singleton] setEnemyKillsWithPowerup:0]
  1000d7cbc  mov     x0, x19
  1000d7cc0  ldp     x29, x30, [sp, #0x30]
  1000d7cc4  ldp     x20, x19, [sp, #0x20]
  1000d7cc8  ldp     x22, x21, [sp, #0x10]
  1000d7ccc  ldp     x24, x23, [sp], #0x40
  1000d7cd0  b       _objc_release
  1000d7cd4  mov     x20, x0
  1000d7cd8  b       loc_1000d7cf4
  1000d7cdc  b       loc_1000d7d00
  1000d7ce0  b       loc_1000d7d00
  1000d7ce4  mov     x1, x20
  1000d7ce8  mov     x20, x0
  1000d7cec  mov     x0, x1
  1000d7cf0  bl      _objc_release
loc_1000d7cf4:
  1000d7cf4  mov     x0, x22
  1000d7cf8  bl      _objc_release
  1000d7cfc  b       loc_1000d7d04
loc_1000d7d00:
  1000d7d00  mov     x20, x0
loc_1000d7d04:
  1000d7d04  mov     x0, x19
  1000d7d08  bl      _objc_release
  1000d7d0c  mov     x0, x20
  1000d7d10  bl      __Unwind_Resume                          ; Unwind_Resume()
