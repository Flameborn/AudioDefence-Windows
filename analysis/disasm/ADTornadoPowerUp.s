// unit ADTornadoPowerUp — 6 functions
//   0x100097624     240  -[ADTornadoPowerUp preload]
//   0x100097714     988  -[ADTornadoPowerUp use]
//   0x100097af0     172  -[ADTornadoPowerUp update:]
//   0x100097b9c     140  -[ADTornadoPowerUp randomizeNextWindTime]
//   0x100097c28     480  -[ADTornadoPowerUp playRandomWind]
//   0x100097e08      92  -[ADTornadoPowerUp clean]

; ======================================================================
; -[ADTornadoPowerUp preload]
; address 0x100097624  size 240  kind objc
; ======================================================================
  100097624  stp     x22, x21, [sp, #-0x30]!
  100097628  stp     x20, x19, [sp, #0x10]
  10009762c  stp     x29, x30, [sp, #0x20]
  100097630  add     x29, sp, #0x20
  100097634  mov     x19, x0
  100097638  adrp    x8, #0x10041d000
  10009763c  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100097640  adrp    x8, #0x100417000
  100097644  nop
  100097648  ldr     x1, [x8, #0x4f0]
  10009764c  bl      _objc_msgSend                            ; [S3DEngine engine]
  100097650  mov     x29, x29
  100097654  bl      _objc_retainAutoreleasedReturnValue
  100097658  mov     x20, x0
  10009765c  adrp    x8, #0x100417000
  100097660  nop
  100097664  ldr     x1, [x8, #0x4f8]
  100097668  adrp    x2, #0x1003c0000
  10009766c  add     x2, x2, #0x150                           ; @"tornado"
  100097670  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"tornado"]
  100097674  mov     x29, x29
  100097678  bl      _objc_retainAutoreleasedReturnValue
  10009767c  mov     x21, x0
  100097680  adrp    x8, #0x100417000
  100097684  nop
  100097688  ldr     x1, [x8, #0x500]
  10009768c  mov     x0, x19
  100097690  mov     x2, x21
  100097694  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:@"tornado"]]
  100097698  mov     x0, x21
  10009769c  bl      _objc_release
  1000976a0  mov     x0, x20
  1000976a4  bl      _objc_release
  1000976a8  adrp    x8, #0x100416000
  1000976ac  nop
  1000976b0  ldr     x1, [x8, #0xc98]
  1000976b4  mov     x0, x19
  1000976b8  bl      _objc_msgSend                            ; [self playlist]
  1000976bc  mov     x29, x29
  1000976c0  bl      _objc_retainAutoreleasedReturnValue
  1000976c4  mov     x20, x0
  1000976c8  adrp    x8, #0x100417000
  1000976cc  nop
  1000976d0  ldr     x1, [x8, #0x508]
  1000976d4  bl      _objc_msgSend                            ; [[self playlist] activate]
  1000976d8  mov     x0, x20
  1000976dc  ldp     x29, x30, [sp, #0x20]
  1000976e0  ldp     x20, x19, [sp, #0x10]
  1000976e4  ldp     x22, x21, [sp], #0x30
  1000976e8  b       _objc_release
  1000976ec  b       loc_100097700
  1000976f0  mov     x19, x0
  1000976f4  mov     x0, x21
  1000976f8  bl      _objc_release
  1000976fc  b       loc_100097704
loc_100097700:
  100097700  mov     x19, x0
loc_100097704:
  100097704  mov     x0, x20
  100097708  bl      _objc_release
  10009770c  mov     x0, x19
  100097710  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTornadoPowerUp use]
; address 0x100097714  size 988  kind objc
; ======================================================================
  100097714  stp     x26, x25, [sp, #-0x50]!
  100097718  stp     x24, x23, [sp, #0x10]
  10009771c  stp     x22, x21, [sp, #0x20]
  100097720  stp     x20, x19, [sp, #0x30]
  100097724  stp     x29, x30, [sp, #0x40]
  100097728  add     x29, sp, #0x40
  10009772c  sub     sp, sp, #0x20
  100097730  mov     x20, x0
  100097734  adrp    x8, #0x100416000
  100097738  nop
  10009773c  ldr     x1, [x8, #0xc98]
  100097740  bl      _objc_msgSend                            ; [self playlist]
  100097744  mov     x29, x29
  100097748  bl      _objc_retainAutoreleasedReturnValue
  10009774c  mov     x21, x0
  100097750  adrp    x8, #0x100417000
  100097754  nop
  100097758  ldr     x1, [x8, #0x990]
  10009775c  adrp    x2, #0x1003c0000
  100097760  add     x2, x2, #0x170                           ; @"tornado_launch"
  100097764  bl      _objc_msgSend                            ; [[self playlist] S3DSound:@"tornado_launch"]
  100097768  mov     x29, x29
  10009776c  bl      _objc_retainAutoreleasedReturnValue
  100097770  mov     x19, x0
  100097774  mov     x0, x21
  100097778  bl      _objc_release
  10009777c  adrp    x8, #0x100416000
  100097780  nop
  100097784  ldr     x1, [x8, #0xcb0]
  100097788  fmov    s0, #0.50000000
  10009778c  mov     x0, x19
  100097790  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"tornado_launch"] setGain:0.5]
  100097794  adrp    x8, #0x100416000
  100097798  nop
  10009779c  ldr     x1, [x8, #0xcb8]
  1000977a0  mov     w2, #0
  1000977a4  mov     x0, x19
  1000977a8  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"tornado_launch"] play:0]
  1000977ac  adrp    x8, #0x10041d000
  1000977b0  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000977b4  adrp    x8, #0x100417000
  1000977b8  nop
  1000977bc  ldr     x1, [x8, #0xa0]
  1000977c0  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000977c4  mov     x29, x29
  1000977c8  bl      _objc_retainAutoreleasedReturnValue
  1000977cc  mov     x22, x0
  1000977d0  adrp    x8, #0x100418000
  1000977d4  nop
  1000977d8  ldr     x1, [x8, #0x4a0]
  1000977dc  adrp    x2, #0x1003c0000
  1000977e0  add     x2, x2, #0x150                           ; @"tornado"
  1000977e4  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"]
  1000977e8  mov     x29, x29
  1000977ec  bl      _objc_retainAutoreleasedReturnValue
  1000977f0  mov     x21, x0
  1000977f4  mov     x0, x22
  1000977f8  bl      _objc_release
  1000977fc  adrp    x8, #0x100417000
  100097800  nop
  100097804  ldr     x22, [x8, #0x40]
  100097808  adrp    x2, #0x1003b9000
  10009780c  add     x2, x2, #0xdb0                           ; @"name"
  100097810  mov     x0, x21
  100097814  mov     x1, x22
  100097818  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:@"name"]
  10009781c  mov     x29, x29
  100097820  bl      _objc_retainAutoreleasedReturnValue
  100097824  mov     x23, x0
  100097828  adrp    x8, #0x100417000
  10009782c  nop
  100097830  ldr     x1, [x8, #0x428]
  100097834  mov     x0, x20
  100097838  mov     x2, x23
  10009783c  bl      _objc_msgSend                            ; [self setName:[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:@"name"]]
  100097840  mov     x0, x23
  100097844  bl      _objc_release
  100097848  adrp    x8, #0x10041d000
  10009784c  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  100097850  adrp    x8, #0x100416000
  100097854  nop
  100097858  ldr     x1, [x8, #0xec8]
  10009785c  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  100097860  mov     x29, x29
  100097864  bl      _objc_retainAutoreleasedReturnValue
  100097868  mov     x24, x0
  10009786c  adrp    x8, #0x100417000
  100097870  nop
  100097874  ldr     x1, [x8, #0xd90]
  100097878  adrp    x2, #0x1003c0000
  10009787c  add     x2, x2, #0x150                           ; @"tornado"
  100097880  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"]
  100097884  mov     x23, x0
  100097888  mov     x0, x24
  10009788c  bl      _objc_release
  100097890  adrp    x8, #0x10041e000
  100097894  ldr     x0, [x8]                                 ; class ADGameModifiers
  100097898  adrp    x8, #0x100417000
  10009789c  nop
  1000978a0  ldr     x1, [x8, #0x510]
  1000978a4  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000978a8  mov     x29, x29
  1000978ac  bl      _objc_retainAutoreleasedReturnValue
  1000978b0  mov     x24, x0
  1000978b4  adrp    x8, #0x100419000
  1000978b8  nop
  1000978bc  ldr     x1, [x8, #0xfe0]
  1000978c0  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] betterPowerUps]
  1000978c4  cbz     w0, loc_10009792c                        ; if ([[ADGameModifiers sharedModifiers] betterPowerUps] == 0)
  1000978c8  adrp    x8, #0x10041d000
  1000978cc  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000978d0  add     w8, w23, #1
  1000978d4  adrp    x9, #0x100416000
  1000978d8  nop
  1000978dc  ldr     x1, [x9, #0xee8]
  1000978e0  str     x8, [sp]
  1000978e4  adrp    x2, #0x1003ba000
  1000978e8  add     x2, x2, #0x450                           ; @"level_%i"
  1000978ec  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"] + 1)]
  1000978f0  mov     x29, x29
  1000978f4  bl      _objc_retainAutoreleasedReturnValue
  1000978f8  mov     x25, x0
  1000978fc  mov     x0, x21
  100097900  mov     x1, x22
  100097904  mov     x2, x25
  100097908  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"] + 1)]]
  10009790c  mov     x29, x29
  100097910  bl      _objc_retainAutoreleasedReturnValue
  100097914  cmp     x0, #0
  100097918  cset    w26, ne                                  ; t1 = ([[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:[NSString stringWithFormat… != 0)
  10009791c  bl      _objc_release
  100097920  mov     x0, x25
  100097924  bl      _objc_release
  100097928  b       loc_100097930
loc_10009792c:
  10009792c  mov     w26, #0
loc_100097930:
  100097930  mov     x0, x24
  100097934  bl      _objc_release
  100097938  add     w8, w26, w23
  10009793c  adrp    x9, #0x10041d000
  100097940  ldr     x0, [x9, #0xf78]                         ; class NSString
  100097944  adrp    x9, #0x100416000
  100097948  nop
  10009794c  ldr     x1, [x9, #0xee8]
  100097950  str     x8, [sp]
  100097954  adrp    x2, #0x1003ba000
  100097958  add     x2, x2, #0x450                           ; @"level_%i"
  10009795c  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"])]
  100097960  mov     x29, x29
  100097964  bl      _objc_retainAutoreleasedReturnValue
  100097968  mov     x23, x0
  10009796c  mov     x0, x21
  100097970  mov     x1, x22
  100097974  mov     x2, x23
  100097978  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"])]]
  10009797c  mov     x29, x29
  100097980  bl      _objc_retainAutoreleasedReturnValue
  100097984  mov     x24, x0
  100097988  adrp    x2, #0x1003c0000
  10009798c  add     x2, x2, #0x190                           ; @"blowDistance"
  100097990  mov     x1, x22
  100097994  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"])]] objectForKey:@"blowDistance"]
  100097998  mov     x29, x29
  10009799c  bl      _objc_retainAutoreleasedReturnValue
  1000979a0  mov     x22, x0
  1000979a4  adrp    x8, #0x100417000
  1000979a8  nop
  1000979ac  ldr     x1, [x8, #0x110]
  1000979b0  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"])]] objectForKey:@"blowDistance"] intValue]
  1000979b4  scvtf   s0, w0                                   ; t2 = (float)[[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"tornado"] objectForKey:[NSString stringWithFormat:@"level_%i", (w26 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"tornado"])]] objectForKey:@"blowDistance"] intValue]
  1000979b8  adrp    x8, #0x10041f000
  1000979bc  ldrsw   x8, [x8, #0xfdc]                         ; ivar offset ADTornadoPowerUp.blowDistance (+0x10)
  1000979c0  str     s0, [x20, x8]                            ; self->blowDistance = t2
  1000979c4  mov     x0, x22
  1000979c8  bl      _objc_release
  1000979cc  mov     x0, x24
  1000979d0  bl      _objc_release
  1000979d4  mov     x0, x23
  1000979d8  bl      _objc_release
  1000979dc  adrp    x8, #0x10041f000
  1000979e0  ldrsw   x8, [x8, #0xfe0]                         ; ivar offset ADTornadoPowerUp.timeSinceActivation (+0x8)
  1000979e4  str     wzr, [x20, x8]                           ; self->timeSinceActivation = 0
  1000979e8  adrp    x8, #0x10041f000
  1000979ec  ldrsw   x8, [x8, #0xfe4]                         ; ivar offset ADTornadoPowerUp.active (+0xc)
  1000979f0  mov     w9, #1
  1000979f4  strb    w9, [x20, x8]                            ; self->active = 1
  1000979f8  adrp    x8, #0x10041f000
  1000979fc  ldrsw   x8, [x8, #0xfe8]                         ; ivar offset ADTornadoPowerUp.nextWindTime (+0x14)
  100097a00  mov     w9, #0x3f000000
  100097a04  str     w9, [x20, x8]                            ; self->nextWindTime = 0x3f000000
  100097a08  str     x20, [sp, #0x10]
  100097a0c  adrp    x8, #0x10041e000
  100097a10  ldr     x8, [x8, #0xea8]
  100097a14  str     x8, [sp, #0x18]
  100097a18  adrp    x8, #0x100417000
  100097a1c  nop
  100097a20  ldr     x1, [x8, #0x9c0]
  100097a24  add     x0, sp, #0x10
  100097a28  bl      _objc_msgSendSuper2                      ; [super use]
  100097a2c  mov     x0, x21
  100097a30  bl      _objc_release
  100097a34  mov     x0, x19
  100097a38  bl      _objc_release
  100097a3c  sub     sp, x29, #0x40
  100097a40  ldp     x29, x30, [sp, #0x40]
  100097a44  ldp     x20, x19, [sp, #0x30]
  100097a48  ldp     x22, x21, [sp, #0x20]
  100097a4c  ldp     x24, x23, [sp, #0x10]
  100097a50  ldp     x26, x25, [sp], #0x50
  100097a54  ret
  100097a58  mov     x20, x0
  100097a5c  b       loc_100097ad8
  100097a60  mov     x20, x0
  100097a64  b       loc_100097ae0
  100097a68  mov     x20, x0
  100097a6c  b       loc_100097ad0
  100097a70  mov     x20, x0
  100097a74  mov     x0, x21
  100097a78  b       loc_100097ae4
  100097a7c  mov     x20, x0
  100097a80  mov     x0, x22
  100097a84  b       loc_100097adc
  100097a88  mov     x20, x0
  100097a8c  b       loc_100097abc
  100097a90  mov     x20, x0
  100097a94  b       loc_100097ad0
  100097a98  mov     x20, x0
  100097a9c  b       loc_100097abc
  100097aa0  mov     x20, x0
  100097aa4  b       loc_100097ab4
  100097aa8  mov     x20, x0
  100097aac  mov     x0, x22
  100097ab0  bl      _objc_release
loc_100097ab4:
  100097ab4  mov     x0, x24
  100097ab8  bl      _objc_release
loc_100097abc:
  100097abc  mov     x0, x23
  100097ac0  b       loc_100097ad4
  100097ac4  mov     x20, x0
  100097ac8  mov     x0, x25
  100097acc  bl      _objc_release
loc_100097ad0:
  100097ad0  mov     x0, x24
loc_100097ad4:
  100097ad4  bl      _objc_release
loc_100097ad8:
  100097ad8  mov     x0, x21
loc_100097adc:
  100097adc  bl      _objc_release
loc_100097ae0:
  100097ae0  mov     x0, x19
loc_100097ae4:
  100097ae4  bl      _objc_release
  100097ae8  mov     x0, x20
  100097aec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADTornadoPowerUp update:]
; address 0x100097af0  size 172  kind objc
; ======================================================================
  100097af0  stp     x20, x19, [sp, #-0x20]!
  100097af4  stp     x29, x30, [sp, #0x10]
  100097af8  add     x29, sp, #0x10
  100097afc  mov     x19, x0
  100097b00  adrp    x8, #0x10041f000
  100097b04  ldrsw   x8, [x8, #0xfe4]                         ; ivar offset ADTornadoPowerUp.active (+0xc)
  100097b08  ldrb    w8, [x19, x8]                            ; w8 = self->active
  100097b0c  cbz     w8, loc_100097b74                        ; if (self->active == 0)
  100097b10  adrp    x8, #0x10041f000
  100097b14  ldrsw   x8, [x8, #0xfe8]                         ; ivar offset ADTornadoPowerUp.nextWindTime (+0x14)
  100097b18  ldr     s1, [x19, x8]                            ; s1 = self->nextWindTime
  100097b1c  fsub    s0, s1, s0
  100097b20  fcmp    s0, #0.0
  100097b24  str     s0, [x19, x8]                            ; self->nextWindTime = (self->nextWindTime - arg1)
  100097b28  b.pl    loc_100097b74                            ; if ((self->nextWindTime - arg1) >= (or unordered) 0.0)
  100097b2c  adrp    x8, #0x10041f000
  100097b30  ldrsw   x20, [x8, #0xfec]                        ; ivar offset ADTornadoPowerUp.nb_wind (+0x18)
  100097b34  ldr     w8, [x19, x20]                           ; w8 = self->nb_wind
  100097b38  cmp     w8, #3
  100097b3c  b.gt    loc_100097b80                            ; if (self->nb_wind > 3)
  100097b40  adrp    x8, #0x10041a000
  100097b44  nop
  100097b48  ldr     x1, [x8, #0xe8]
  100097b4c  mov     x0, x19
  100097b50  bl      _objc_msgSend                            ; [self randomizeNextWindTime]
  100097b54  adrp    x8, #0x10041a000
  100097b58  nop
  100097b5c  ldr     x1, [x8, #0xf0]
  100097b60  mov     x0, x19
  100097b64  bl      _objc_msgSend                            ; [self playRandomWind]
  100097b68  ldr     w8, [x19, x20]                           ; w8 = self->nb_wind
  100097b6c  add     w8, w8, #1
  100097b70  str     w8, [x19, x20]                           ; self->nb_wind = (self->nb_wind + 1)
loc_100097b74:
  100097b74  ldp     x29, x30, [sp, #0x10]
  100097b78  ldp     x20, x19, [sp], #0x20
  100097b7c  ret
loc_100097b80:
  100097b80  adrp    x8, #0x100419000
  100097b84  nop
  100097b88  ldr     x1, [x8, #0x158]
  100097b8c  mov     x0, x19
  100097b90  ldp     x29, x30, [sp, #0x10]
  100097b94  ldp     x20, x19, [sp], #0x20
  100097b98  b       _objc_msgSend                            ; [self clean]

; ======================================================================
; -[ADTornadoPowerUp randomizeNextWindTime]
; address 0x100097b9c  size 140  kind objc
; ======================================================================
  100097b9c  stp     d9, d8, [sp, #-0x30]!
  100097ba0  stp     x20, x19, [sp, #0x10]
  100097ba4  stp     x29, x30, [sp, #0x20]
  100097ba8  add     x29, sp, #0x20
  100097bac  mov     x19, x0
  100097bb0  bl      _rand                                    ; rand()
  100097bb4  sxtw    x8, w0
  100097bb8  mov     w9, #0x51eb0000
  100097bbc  movk    w9, #0x851f
  100097bc0  mul     x8, x8, x9
  100097bc4  lsr     x9, x8, #0x3f
  100097bc8  asr     x8, x8, #0x25
  100097bcc  add     w8, w8, w9
  100097bd0  mov     w9, #0x64
  100097bd4  msub    w8, w8, w9, w0
  100097bd8  scvtf   d0, w8
  100097bdc  nop
  100097be0  ldr     d1, #0x100181c00                         ; d1 = 200.0
  100097be4  fdiv    d8, d0, d1                               ; t1 = ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) / 200)
  100097be8  bl      _rand                                    ; rand()
  100097bec  mov     w8, #2
  100097bf0  bic     w8, w8, w0, lsl #1
  100097bf4  sub     w8, w8, #1
  100097bf8  scvtf   d0, w8
  100097bfc  fmul    d0, d8, d0
  100097c00  fcvt    s0, d0
  100097c04  fmov    s1, #3.00000000
  100097c08  fadd    s0, s0, s1
  100097c0c  adrp    x8, #0x10041f000
  100097c10  ldrsw   x8, [x8, #0xfe8]                         ; ivar offset ADTornadoPowerUp.nextWindTime (+0x14)
  100097c14  str     s0, [x19, x8]                            ; self->nextWindTime = ((t1 * (float)((2 &~ (rand() << 1)) - 1)) + 3)
  100097c18  ldp     x29, x30, [sp, #0x20]
  100097c1c  ldp     x20, x19, [sp, #0x10]
  100097c20  ldp     d9, d8, [sp], #0x30
  100097c24  ret

; ======================================================================
; -[ADTornadoPowerUp playRandomWind]
; address 0x100097c28  size 480  kind objc
; ======================================================================
  100097c28  stp     d9, d8, [sp, #-0x50]!
  100097c2c  stp     x24, x23, [sp, #0x10]
  100097c30  stp     x22, x21, [sp, #0x20]
  100097c34  stp     x20, x19, [sp, #0x30]
  100097c38  stp     x29, x30, [sp, #0x40]
  100097c3c  add     x29, sp, #0x40
  100097c40  mov     x20, x0
  100097c44  adrp    x8, #0x100416000
  100097c48  nop
  100097c4c  ldr     x1, [x8, #0xc98]
  100097c50  bl      _objc_msgSend                            ; [self playlist]
  100097c54  mov     x29, x29
  100097c58  bl      _objc_retainAutoreleasedReturnValue
  100097c5c  mov     x21, x0
  100097c60  adrp    x8, #0x100416000
  100097c64  nop
  100097c68  ldr     x1, [x8, #0xca0]
  100097c6c  adrp    x2, #0x1003c0000
  100097c70  add     x2, x2, #0x1b0                           ; @"wind"
  100097c74  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"wind"]
  100097c78  mov     x29, x29
  100097c7c  bl      _objc_retainAutoreleasedReturnValue
  100097c80  mov     x19, x0
  100097c84  mov     x0, x21
  100097c88  bl      _objc_release
  100097c8c  adrp    x8, #0x100416000
  100097c90  nop
  100097c94  ldr     x1, [x8, #0xca8]
  100097c98  mov     w2, #1
  100097c9c  mov     x0, x19
  100097ca0  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"wind"] setSpatialized:1]
  100097ca4  bl      _rand                                    ; rand()
  100097ca8  mov     x22, x0
  100097cac  bl      _rand                                    ; rand()
  100097cb0  mov     x21, x0
  100097cb4  cmp     w21, #0
  100097cb8  cinc    w23, w21, lt
  100097cbc  adrp    x8, #0x100416000
  100097cc0  nop
  100097cc4  ldr     x1, [x8, #0xcb0]
  100097cc8  fmov    s0, #4.00000000
  100097ccc  mov     x0, x19
  100097cd0  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"wind"] setGain:4]
  100097cd4  sxtw    x8, w22
  100097cd8  mov     x9, #-0x49f40001
  100097cdc  movk    x9, #0x60b7
  100097ce0  mul     x8, x8, x9
  100097ce4  lsr     x8, x8, #0x20
  100097ce8  add     w8, w8, w22
  100097cec  asr     w9, w8, #8
  100097cf0  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  100097cf4  mov     w9, #0x168
  100097cf8  msub    w8, w8, w9, w22
  100097cfc  scvtf   s0, w8
  100097d00  fcvt    d0, s0
  100097d04  nop
  100097d08  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  100097d0c  fmul    d0, d0, d1
  100097d10  nop
  100097d14  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  100097d18  fdiv    d0, d0, d1
  100097d1c  fcvt    s0, d0
  100097d20  and     w8, w23, #0xfffffffe
  100097d24  sub     w8, w21, w8
  100097d28  add     w8, w8, #1
  100097d2c  scvtf   s8, w8
  100097d30  bl      ___sincosf_stret                         ; d0 = sin((((float)(rand() - t1 * 360) * 3.14159) / 180)), d1 = cos((((float)(rand() - t1 * 360) * 3.14159) / 180))
  100097d34  fmul    s0, s8, s0                               ; t2 = ((float)((rand() - ((rand() < 0 ? rand() + 1 : rand()) & 0xfffffffe)) + 1) * sin((((float)(rand() - t1 * 360) * 3.14159) / 180)))
  100097d38  fmul    s1, s8, s1                               ; t3 = ((float)((rand() - ((rand() < 0 ? rand() + 1 : rand()) & 0xfffffffe)) + 1) * cos((((float)(rand() - t1 * 360) * 3.14159) / 180)))
  100097d3c  adrp    x8, #0x100417000
  100097d40  nop
  100097d44  ldr     x1, [x8, #0x38]
  100097d48  movi    v2.16b, #0
  100097d4c  mov     x0, x19
  100097d50  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"wind"] setPlanar:{t2, t3, 0}]
  100097d54  adrp    x8, #0x10041e000
  100097d58  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100097d5c  adrp    x8, #0x100417000
  100097d60  nop
  100097d64  ldr     x1, [x8, #0xaa8]
  100097d68  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100097d6c  mov     x29, x29
  100097d70  bl      _objc_retainAutoreleasedReturnValue
  100097d74  mov     x21, x0
  100097d78  adrp    x8, #0x10041f000
  100097d7c  ldrsw   x8, [x8, #0xfdc]                         ; ivar offset ADTornadoPowerUp.blowDistance (+0x10)
  100097d80  ldr     s0, [x20, x8]                            ; s0 = self->blowDistance
  100097d84  fmov    s1, #0.25000000
  100097d88  fmul    s0, s0, s1
  100097d8c  adrp    x8, #0x10041a000
  100097d90  nop
  100097d94  ldr     x1, [x8, #0xf8]
  100097d98  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] blowEnemiesAway:(self->blowDistance * 0.25)]
  100097d9c  mov     x0, x21
  100097da0  bl      _objc_release
  100097da4  adrp    x8, #0x100416000
  100097da8  nop
  100097dac  ldr     x1, [x8, #0xcb8]
  100097db0  mov     w2, #0
  100097db4  mov     x0, x19
  100097db8  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"wind"] play:0]
  100097dbc  mov     x0, x19
  100097dc0  ldp     x29, x30, [sp, #0x40]
  100097dc4  ldp     x20, x19, [sp, #0x30]
  100097dc8  ldp     x22, x21, [sp, #0x20]
  100097dcc  ldp     x24, x23, [sp, #0x10]
  100097dd0  ldp     d9, d8, [sp], #0x50
  100097dd4  b       _objc_release
  100097dd8  mov     x20, x0
loc_100097ddc:
  100097ddc  mov     x0, x19
loc_100097de0:
  100097de0  bl      _objc_release
  100097de4  mov     x0, x20
  100097de8  bl      __Unwind_Resume                          ; Unwind_Resume()
  100097dec  mov     x20, x0
  100097df0  mov     x0, x21
  100097df4  b       loc_100097de0
  100097df8  mov     x20, x0
  100097dfc  mov     x0, x21
  100097e00  bl      _objc_release
  100097e04  b       loc_100097ddc

; ======================================================================
; -[ADTornadoPowerUp clean]
; address 0x100097e08  size 92  kind objc
; ======================================================================
  100097e08  stp     x20, x19, [sp, #-0x20]!
  100097e0c  stp     x29, x30, [sp, #0x10]
  100097e10  add     x29, sp, #0x10
  100097e14  adrp    x8, #0x100416000
  100097e18  nop
  100097e1c  ldr     x1, [x8, #0xc98]
  100097e20  bl      _objc_msgSend                            ; [self playlist]
  100097e24  mov     x29, x29
  100097e28  bl      _objc_retainAutoreleasedReturnValue
  100097e2c  mov     x19, x0
  100097e30  adrp    x8, #0x100417000
  100097e34  nop
  100097e38  ldr     x1, [x8, #0x618]
  100097e3c  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  100097e40  mov     x0, x19
  100097e44  ldp     x29, x30, [sp, #0x10]
  100097e48  ldp     x20, x19, [sp], #0x20
  100097e4c  b       _objc_release
  100097e50  mov     x20, x0
  100097e54  mov     x0, x19
  100097e58  bl      _objc_release
  100097e5c  mov     x0, x20
  100097e60  bl      __Unwind_Resume                          ; Unwind_Resume()
