// unit ADMinigunPowerUp — 8 functions
//   0x1000b23f0      60  -[ADMinigunPowerUp init]
//   0x1000b242c    1060  -[ADMinigunPowerUp preload]
//   0x1000b2850     228  -[ADMinigunPowerUp use]
//   0x1000b2934     568  -[ADMinigunPowerUp update:]
//   0x1000b2b6c      20  -[ADMinigunPowerUp update:]_block_invoke
//   0x1000b2b80      36  -[ADMinigunPowerUp update:]_block_invoke_2
//   0x1000b2ba4     388  -[ADMinigunPowerUp clean]
//   0x1000b2d28      64  -[ADMinigunPowerUp .cxx_destruct]

; ======================================================================
; -[ADMinigunPowerUp init]
; address 0x1000b23f0  size 60  kind objc
; ======================================================================
  1000b23f0  stp     x29, x30, [sp, #-0x10]!
  1000b23f4  mov     x29, sp
  1000b23f8  sub     sp, sp, #0x10
  1000b23fc  str     x0, [sp]
  1000b2400  adrp    x8, #0x10041e000
  1000b2404  ldr     x8, [x8, #0xf48]
  1000b2408  str     x8, [sp, #8]
  1000b240c  adrp    x8, #0x100416000
  1000b2410  nop
  1000b2414  ldr     x1, [x8, #0xab8]
  1000b2418  mov     x0, sp
  1000b241c  bl      _objc_msgSendSuper2                      ; [super init]
  1000b2420  mov     sp, x29
  1000b2424  ldp     x29, x30, [sp], #0x10
  1000b2428  ret

; ======================================================================
; -[ADMinigunPowerUp preload]
; address 0x1000b242c  size 1060  kind objc
; ======================================================================
  1000b242c  stp     x26, x25, [sp, #-0x50]!
  1000b2430  stp     x24, x23, [sp, #0x10]
  1000b2434  stp     x22, x21, [sp, #0x20]
  1000b2438  stp     x20, x19, [sp, #0x30]
  1000b243c  stp     x29, x30, [sp, #0x40]
  1000b2440  add     x29, sp, #0x40
  1000b2444  sub     sp, sp, #0x10
  1000b2448  mov     x19, x0
  1000b244c  adrp    x8, #0x10041d000
  1000b2450  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000b2454  adrp    x8, #0x100417000
  1000b2458  nop
  1000b245c  ldr     x1, [x8, #0x4f0]
  1000b2460  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000b2464  mov     x29, x29
  1000b2468  bl      _objc_retainAutoreleasedReturnValue
  1000b246c  mov     x20, x0
  1000b2470  adrp    x8, #0x100417000
  1000b2474  nop
  1000b2478  ldr     x1, [x8, #0x4f8]
  1000b247c  adrp    x2, #0x1003c0000
  1000b2480  add     x2, x2, #0xcd0                           ; @"minigun"
  1000b2484  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"minigun"]
  1000b2488  mov     x29, x29
  1000b248c  bl      _objc_retainAutoreleasedReturnValue
  1000b2490  mov     x21, x0
  1000b2494  adrp    x8, #0x100417000
  1000b2498  nop
  1000b249c  ldr     x1, [x8, #0x500]
  1000b24a0  mov     x0, x19
  1000b24a4  mov     x2, x21
  1000b24a8  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:@"minigun"]]
  1000b24ac  mov     x0, x21
  1000b24b0  bl      _objc_release
  1000b24b4  mov     x0, x20
  1000b24b8  bl      _objc_release
  1000b24bc  adrp    x8, #0x100416000
  1000b24c0  nop
  1000b24c4  ldr     x1, [x8, #0xc98]
  1000b24c8  mov     x0, x19
  1000b24cc  bl      _objc_msgSend                            ; [self playlist]
  1000b24d0  mov     x29, x29
  1000b24d4  bl      _objc_retainAutoreleasedReturnValue
  1000b24d8  mov     x20, x0
  1000b24dc  adrp    x8, #0x100417000
  1000b24e0  nop
  1000b24e4  ldr     x1, [x8, #0x508]
  1000b24e8  bl      _objc_msgSend                            ; [[self playlist] activate]
  1000b24ec  mov     x0, x20
  1000b24f0  bl      _objc_release
  1000b24f4  adrp    x8, #0x10041d000
  1000b24f8  ldr     x0, [x8, #0xf88]                         ; class ADWeaponManager
  1000b24fc  adrp    x8, #0x100417000
  1000b2500  nop
  1000b2504  ldr     x1, [x8, #0xa0]
  1000b2508  bl      _objc_msgSend                            ; [ADWeaponManager sharedWeaponManager]
  1000b250c  mov     x29, x29
  1000b2510  bl      _objc_retainAutoreleasedReturnValue
  1000b2514  mov     x21, x0
  1000b2518  adrp    x8, #0x100418000
  1000b251c  nop
  1000b2520  ldr     x1, [x8, #0x4a0]
  1000b2524  adrp    x2, #0x1003c0000
  1000b2528  add     x2, x2, #0xcd0                           ; @"minigun"
  1000b252c  bl      _objc_msgSend                            ; [[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"]
  1000b2530  mov     x29, x29
  1000b2534  bl      _objc_retainAutoreleasedReturnValue
  1000b2538  mov     x20, x0
  1000b253c  mov     x0, x21
  1000b2540  bl      _objc_release
  1000b2544  adrp    x8, #0x10041e000
  1000b2548  ldr     x0, [x8, #0x3c8]                         ; class ADWeapon
  1000b254c  adrp    x8, #0x100416000
  1000b2550  nop
  1000b2554  ldr     x1, [x8, #0xac8]
  1000b2558  bl      _objc_msgSend                            ; [ADWeapon alloc]
  1000b255c  mov     x22, x0
  1000b2560  adrp    x8, #0x100417000
  1000b2564  nop
  1000b2568  ldr     x21, [x8, #0x40]
  1000b256c  adrp    x2, #0x1003b9000
  1000b2570  add     x2, x2, #0xd50                           ; @"weaponDictionary"
  1000b2574  mov     x0, x20
  1000b2578  mov     x1, x21
  1000b257c  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:@"weaponDictionary"]
  1000b2580  mov     x29, x29
  1000b2584  bl      _objc_retainAutoreleasedReturnValue
  1000b2588  mov     x23, x0
  1000b258c  adrp    x8, #0x100416000
  1000b2590  nop
  1000b2594  ldr     x1, [x8, #0xd80]
  1000b2598  mov     x0, x22
  1000b259c  mov     x2, x23
  1000b25a0  bl      _objc_msgSend                            ; [[ADWeapon alloc] initWithDictionary:[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:@"weaponDictionary"]]
  1000b25a4  adrp    x8, #0x100420000
  1000b25a8  ldrsw   x9, [x8, #0x1d8]                         ; ivar offset ADMinigunPowerUp.minigunWeapon (+0x18)
  1000b25ac  ldr     x8, [x19, x9]                            ; x8 = self->minigunWeapon
  1000b25b0  str     x0, [x19, x9]                            ; self->minigunWeapon = [[ADWeapon alloc] initWithDictionary:[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:@"weaponDictionary"]]
  1000b25b4  mov     x0, x8
  1000b25b8  bl      _objc_release
  1000b25bc  mov     x0, x23
  1000b25c0  bl      _objc_release
  1000b25c4  adrp    x2, #0x1003b9000
  1000b25c8  add     x2, x2, #0xdb0                           ; @"name"
  1000b25cc  mov     x0, x20
  1000b25d0  mov     x1, x21
  1000b25d4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:@"name"]
  1000b25d8  mov     x29, x29
  1000b25dc  bl      _objc_retainAutoreleasedReturnValue
  1000b25e0  mov     x22, x0
  1000b25e4  adrp    x8, #0x100417000
  1000b25e8  nop
  1000b25ec  ldr     x1, [x8, #0x428]
  1000b25f0  mov     x0, x19
  1000b25f4  mov     x2, x22
  1000b25f8  bl      _objc_msgSend                            ; [self setName:[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:@"name"]]
  1000b25fc  mov     x0, x22
  1000b2600  bl      _objc_release
  1000b2604  adrp    x8, #0x10041d000
  1000b2608  ldr     x0, [x8, #0xf70]                         ; class ADInventory
  1000b260c  adrp    x8, #0x100416000
  1000b2610  nop
  1000b2614  ldr     x1, [x8, #0xec8]
  1000b2618  bl      _objc_msgSend                            ; [ADInventory sharedInventory]
  1000b261c  mov     x29, x29
  1000b2620  bl      _objc_retainAutoreleasedReturnValue
  1000b2624  mov     x23, x0
  1000b2628  adrp    x8, #0x100417000
  1000b262c  nop
  1000b2630  ldr     x1, [x8, #0xd90]
  1000b2634  adrp    x2, #0x1003c0000
  1000b2638  add     x2, x2, #0xcd0                           ; @"minigun"
  1000b263c  bl      _objc_msgSend                            ; [[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"]
  1000b2640  mov     x22, x0
  1000b2644  mov     x0, x23
  1000b2648  bl      _objc_release
  1000b264c  adrp    x8, #0x10041e000
  1000b2650  ldr     x0, [x8]                                 ; class ADGameModifiers
  1000b2654  adrp    x8, #0x100417000
  1000b2658  nop
  1000b265c  ldr     x1, [x8, #0x510]
  1000b2660  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  1000b2664  mov     x29, x29
  1000b2668  bl      _objc_retainAutoreleasedReturnValue
  1000b266c  mov     x23, x0
  1000b2670  adrp    x8, #0x100419000
  1000b2674  nop
  1000b2678  ldr     x1, [x8, #0xfe0]
  1000b267c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] betterPowerUps]
  1000b2680  cbz     w0, loc_1000b26e8                        ; if ([[ADGameModifiers sharedModifiers] betterPowerUps] == 0)
  1000b2684  adrp    x8, #0x10041d000
  1000b2688  ldr     x0, [x8, #0xf78]                         ; class NSString
  1000b268c  add     w8, w22, #1
  1000b2690  adrp    x9, #0x100416000
  1000b2694  nop
  1000b2698  ldr     x1, [x9, #0xee8]
  1000b269c  str     x8, [sp]
  1000b26a0  adrp    x2, #0x1003ba000
  1000b26a4  add     x2, x2, #0x450                           ; @"level_%i"
  1000b26a8  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"] + 1)]
  1000b26ac  mov     x29, x29
  1000b26b0  bl      _objc_retainAutoreleasedReturnValue
  1000b26b4  mov     x24, x0
  1000b26b8  mov     x0, x20
  1000b26bc  mov     x1, x21
  1000b26c0  mov     x2, x24
  1000b26c4  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:[NSString stringWithFormat:@"level_%i", ([[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"] + 1)]]
  1000b26c8  mov     x29, x29
  1000b26cc  bl      _objc_retainAutoreleasedReturnValue
  1000b26d0  cmp     x0, #0
  1000b26d4  cset    w25, ne                                  ; t1 = ([[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:[NSString stringWithFormat… != 0)
  1000b26d8  bl      _objc_release
  1000b26dc  mov     x0, x24
  1000b26e0  bl      _objc_release
  1000b26e4  b       loc_1000b26ec
loc_1000b26e8:
  1000b26e8  mov     w25, #0
loc_1000b26ec:
  1000b26ec  mov     x0, x23
  1000b26f0  bl      _objc_release
  1000b26f4  add     w8, w25, w22
  1000b26f8  adrp    x9, #0x10041d000
  1000b26fc  ldr     x0, [x9, #0xf78]                         ; class NSString
  1000b2700  adrp    x9, #0x100416000
  1000b2704  nop
  1000b2708  ldr     x1, [x9, #0xee8]
  1000b270c  str     x8, [sp]
  1000b2710  adrp    x2, #0x1003ba000
  1000b2714  add     x2, x2, #0x450                           ; @"level_%i"
  1000b2718  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"])]
  1000b271c  mov     x29, x29
  1000b2720  bl      _objc_retainAutoreleasedReturnValue
  1000b2724  mov     x22, x0
  1000b2728  mov     x0, x20
  1000b272c  mov     x1, x21
  1000b2730  mov     x2, x22
  1000b2734  bl      _objc_msgSend                            ; [[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"])]]
  1000b2738  mov     x29, x29
  1000b273c  bl      _objc_retainAutoreleasedReturnValue
  1000b2740  mov     x23, x0
  1000b2744  adrp    x2, #0x1003c1000
  1000b2748  add     x2, x2, #0x250                           ; @"duration"
  1000b274c  mov     x1, x21
  1000b2750  bl      _objc_msgSend                            ; [[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"])]] objectForKey:@"duration"]
  1000b2754  mov     x29, x29
  1000b2758  bl      _objc_retainAutoreleasedReturnValue
  1000b275c  mov     x21, x0
  1000b2760  adrp    x8, #0x100417000
  1000b2764  nop
  1000b2768  ldr     x1, [x8, #0x110]
  1000b276c  bl      _objc_msgSend                            ; [[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"])]] objectForKey:@"duration"] intValue]
  1000b2770  scvtf   s0, w0                                   ; t2 = (float)[[[[[ADWeaponManager sharedWeaponManager] dictionaryForPowerupWithName:@"minigun"] objectForKey:[NSString stringWithFormat:@"level_%i", (w25 + [[ADInventory sharedInventory] levelForPowerUpWithName:@"minigun"])]] objectForKey:@"duration"] intValue]
  1000b2774  adrp    x8, #0x100420000
  1000b2778  ldrsw   x8, [x8, #0x1dc]                         ; ivar offset ADMinigunPowerUp.minigunDuration (+0x20)
  1000b277c  str     s0, [x19, x8]                            ; self->minigunDuration = t2
  1000b2780  mov     x0, x21
  1000b2784  bl      _objc_release
  1000b2788  mov     x0, x23
  1000b278c  bl      _objc_release
  1000b2790  mov     x0, x22
  1000b2794  bl      _objc_release
  1000b2798  mov     x0, x20
  1000b279c  sub     sp, x29, #0x40
  1000b27a0  ldp     x29, x30, [sp, #0x40]
  1000b27a4  ldp     x20, x19, [sp, #0x30]
  1000b27a8  ldp     x22, x21, [sp, #0x20]
  1000b27ac  ldp     x24, x23, [sp, #0x10]
  1000b27b0  ldp     x26, x25, [sp], #0x50
  1000b27b4  b       _objc_release
  1000b27b8  mov     x19, x0
  1000b27bc  b       loc_1000b2830
  1000b27c0  b       loc_1000b27f8
  1000b27c4  mov     x19, x0
  1000b27c8  b       loc_1000b2830
  1000b27cc  mov     x19, x0
  1000b27d0  mov     x0, x21
  1000b27d4  b       loc_1000b282c
  1000b27d8  mov     x19, x0
  1000b27dc  b       loc_1000b2830
  1000b27e0  mov     x19, x0
  1000b27e4  mov     x0, x21
  1000b27e8  b       loc_1000b2834
  1000b27ec  b       loc_1000b27f8
  1000b27f0  mov     x19, x0
  1000b27f4  b       loc_1000b2828
loc_1000b27f8:
  1000b27f8  mov     x19, x0
loc_1000b27fc:
  1000b27fc  mov     x0, x23
  1000b2800  b       loc_1000b282c
  1000b2804  mov     x19, x0
  1000b2808  b       loc_1000b2828
  1000b280c  mov     x19, x0
  1000b2810  b       loc_1000b2820
  1000b2814  mov     x19, x0
  1000b2818  mov     x0, x21
  1000b281c  bl      _objc_release
loc_1000b2820:
  1000b2820  mov     x0, x23
  1000b2824  bl      _objc_release
loc_1000b2828:
  1000b2828  mov     x0, x22
loc_1000b282c:
  1000b282c  bl      _objc_release
loc_1000b2830:
  1000b2830  mov     x0, x20
loc_1000b2834:
  1000b2834  bl      _objc_release
  1000b2838  mov     x0, x19
  1000b283c  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000b2840  mov     x19, x0
  1000b2844  mov     x0, x24
  1000b2848  bl      _objc_release
  1000b284c  b       loc_1000b27fc

; ======================================================================
; -[ADMinigunPowerUp use]
; address 0x1000b2850  size 228  kind objc
; ======================================================================
  1000b2850  stp     x22, x21, [sp, #-0x30]!
  1000b2854  stp     x20, x19, [sp, #0x10]
  1000b2858  stp     x29, x30, [sp, #0x20]
  1000b285c  add     x29, sp, #0x20
  1000b2860  mov     x19, x0
  1000b2864  adrp    x8, #0x100416000
  1000b2868  nop
  1000b286c  ldr     x1, [x8, #0xc98]
  1000b2870  bl      _objc_msgSend                            ; [self playlist]
  1000b2874  mov     x29, x29
  1000b2878  bl      _objc_retainAutoreleasedReturnValue
  1000b287c  mov     x20, x0
  1000b2880  adrp    x8, #0x100416000
  1000b2884  nop
  1000b2888  ldr     x1, [x8, #0xca0]
  1000b288c  adrp    x2, #0x1003c1000
  1000b2890  add     x2, x2, #0x270                           ; @"minigun_fire"
  1000b2894  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"minigun_fire"]
  1000b2898  mov     x29, x29
  1000b289c  bl      _objc_retainAutoreleasedReturnValue
  1000b28a0  adrp    x8, #0x100420000
  1000b28a4  ldrsw   x21, [x8, #0x1e0]                        ; ivar offset ADMinigunPowerUp.loopSound (+0x28)
  1000b28a8  ldr     x8, [x19, x21]                           ; x8 = self->loopSound
  1000b28ac  str     x0, [x19, x21]                           ; self->loopSound = [[self playlist] anySoundContaining:@"minigun_fire"]
  1000b28b0  mov     x0, x8
  1000b28b4  bl      _objc_release
  1000b28b8  mov     x0, x20
  1000b28bc  bl      _objc_release
  1000b28c0  ldr     x0, [x19, x21]                           ; x0 = self->loopSound
  1000b28c4  adrp    x8, #0x100416000
  1000b28c8  nop
  1000b28cc  ldr     x1, [x8, #0xcb8]
  1000b28d0  mov     w2, #0
  1000b28d4  bl      _objc_msgSend                            ; [self->loopSound play:0]
  1000b28d8  ldr     x0, [x19, x21]                           ; x0 = self->loopSound
  1000b28dc  adrp    x8, #0x100416000
  1000b28e0  nop
  1000b28e4  ldr     x1, [x8, #0xcb0]
  1000b28e8  nop
  1000b28ec  ldr     s0, #0x100181cd0                         ; s0 = 0.400000006
  1000b28f0  bl      _objc_msgSend                            ; [self->loopSound setGain:0.4]
  1000b28f4  adrp    x8, #0x100420000
  1000b28f8  ldrsw   x8, [x8, #0x1e4]                         ; ivar offset ADMinigunPowerUp.timeSinceActivation (+0x8)
  1000b28fc  str     wzr, [x19, x8]                           ; self->timeSinceActivation = 0
  1000b2900  adrp    x8, #0x100420000
  1000b2904  ldrsw   x8, [x8, #0x1e8]                         ; ivar offset ADMinigunPowerUp.active (+0xc)
  1000b2908  mov     w9, #1
  1000b290c  strb    w9, [x19, x8]                            ; self->active = 1
  1000b2910  ldp     x29, x30, [sp, #0x20]
  1000b2914  ldp     x20, x19, [sp, #0x10]
  1000b2918  ldp     x22, x21, [sp], #0x30
  1000b291c  ret
  1000b2920  mov     x19, x0
  1000b2924  mov     x0, x20
  1000b2928  bl      _objc_release
  1000b292c  mov     x0, x19
  1000b2930  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMinigunPowerUp update:]
; address 0x1000b2934  size 568  kind objc
; ======================================================================
  1000b2934  stp     x24, x23, [sp, #-0x40]!
  1000b2938  stp     x22, x21, [sp, #0x10]
  1000b293c  stp     x20, x19, [sp, #0x20]
  1000b2940  stp     x29, x30, [sp, #0x30]
  1000b2944  add     x29, sp, #0x30
  1000b2948  sub     sp, sp, #0x50
  1000b294c  mov     x19, x0
  1000b2950  adrp    x8, #0x100420000
  1000b2954  ldrsw   x21, [x8, #0x1e8]                        ; ivar offset ADMinigunPowerUp.active (+0xc)
  1000b2958  ldrb    w8, [x19, x21]                           ; w8 = self->active
  1000b295c  cbz     w8, loc_1000b2b30                        ; if (self->active == 0)
  1000b2960  adrp    x8, #0x100420000
  1000b2964  ldrsw   x22, [x8, #0x1e4]                        ; ivar offset ADMinigunPowerUp.timeSinceActivation (+0x8)
  1000b2968  ldr     s1, [x19, x22]                           ; s1 = self->timeSinceActivation
  1000b296c  fadd    s1, s1, s0
  1000b2970  str     s1, [x19, x22]                           ; self->timeSinceActivation = (self->timeSinceActivation + arg1)
  1000b2974  fmov    s2, #1.50000000
  1000b2978  fcmp    s1, s2
  1000b297c  b.le    loc_1000b2b30                            ; if ((self->timeSinceActivation + arg1) <= (or unordered) 1.5)
  1000b2980  adrp    x8, #0x100420000
  1000b2984  ldrsw   x20, [x8, #0x1ec]                        ; ivar offset ADMinigunPowerUp.nextBulletTime (+0x10)
  1000b2988  ldr     s1, [x19, x20]                           ; s1 = self->nextBulletTime
  1000b298c  fsub    s0, s1, s0
  1000b2990  fcmp    s0, #0.0
  1000b2994  str     s0, [x19, x20]                           ; self->nextBulletTime = (self->nextBulletTime - arg1)
  1000b2998  b.pl    loc_1000b29fc                            ; if ((self->nextBulletTime - arg1) >= (or unordered) 0.0)
  1000b299c  adrp    x8, #0x100420000
  1000b29a0  ldrsw   x23, [x8, #0x1d8]                        ; ivar offset ADMinigunPowerUp.minigunWeapon (+0x18)
  1000b29a4  ldr     x0, [x19, x23]                           ; x0 = self->minigunWeapon
  1000b29a8  adrp    x8, #0x100416000
  1000b29ac  nop
  1000b29b0  ldr     x1, [x8, #0xc70]
  1000b29b4  bl      _objc_msgSend                            ; [self->minigunWeapon fireRate]
  1000b29b8  str     s0, [x19, x20]                           ; self->nextBulletTime = [self->minigunWeapon fireRate]
  1000b29bc  adrp    x8, #0x10041e000
  1000b29c0  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000b29c4  adrp    x8, #0x100417000
  1000b29c8  nop
  1000b29cc  ldr     x1, [x8, #0xaa8]
  1000b29d0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000b29d4  mov     x29, x29
  1000b29d8  bl      _objc_retainAutoreleasedReturnValue
  1000b29dc  mov     x20, x0
  1000b29e0  ldr     x2, [x19, x23]                           ; x2 = self->minigunWeapon
  1000b29e4  adrp    x8, #0x10041a000
  1000b29e8  nop
  1000b29ec  ldr     x1, [x8, #0x698]
  1000b29f0  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] shotWithSpecialWeapon:self->minigunWeapon]
  1000b29f4  mov     x0, x20
  1000b29f8  bl      _objc_release
loc_1000b29fc:
  1000b29fc  ldr     s0, [x19, x22]                           ; s0 = self->timeSinceActivation
  1000b2a00  adrp    x8, #0x100420000
  1000b2a04  ldrsw   x8, [x8, #0x1dc]                         ; ivar offset ADMinigunPowerUp.minigunDuration (+0x20)
  1000b2a08  ldr     s1, [x19, x8]                            ; s1 = self->minigunDuration
  1000b2a0c  fcmp    s0, s1
  1000b2a10  b.le    loc_1000b2b30                            ; if (self->timeSinceActivation <= (or unordered) self->minigunDuration)
  1000b2a14  ldrb    w8, [x19, x21]                           ; w8 = self->active
  1000b2a18  cbz     w8, loc_1000b2b30                        ; if (self->active == 0)
  1000b2a1c  strb    wzr, [x19, x21]                          ; self->active = 0
  1000b2a20  adrp    x8, #0x100420000
  1000b2a24  ldrsw   x8, [x8, #0x1e0]                         ; ivar offset ADMinigunPowerUp.loopSound (+0x28)
  1000b2a28  ldr     x8, [x19, x8]                            ; x8 = self->loopSound
  1000b2a2c  adrp    x22, #0x1003b0000
  1000b2a30  ldr     x22, [x22, #0x118]                       ; __NSConcreteStackBlock
  1000b2a34  str     x22, [sp, #0x28]
  1000b2a38  mov     w9, #-0x40000000
  1000b2a3c  stp     w9, wzr, [sp, #0x30]
  1000b2a40  adr     x9, #0x1000b2b6c                         ; &-[ADMinigunPowerUp update:]_block_invoke
  1000b2a44  nop
  1000b2a48  str     x9, [sp, #0x38]
  1000b2a4c  adrp    x9, #0x1003b2000
  1000b2a50  add     x9, x9, #0x5b0                           ; &d_1003b25b0
  1000b2a54  stp     x9, x8, [sp, #0x40]
  1000b2a58  adrp    x1, #0x1003b0000
  1000b2a5c  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  1000b2a60  add     x2, sp, #0x28
  1000b2a64  mov     x0, #0
  1000b2a68  bl      _dispatch_after                          ; dispatch_after(0, __dispatch_main_q, ^{-[ADMinigunPowerUp update:]_block_invoke captures +0x20=self->loopSound})
  1000b2a6c  adrp    x8, #0x100416000
  1000b2a70  nop
  1000b2a74  ldr     x1, [x8, #0xc98]
  1000b2a78  mov     x0, x19
  1000b2a7c  bl      _objc_msgSend                            ; [self playlist]
  1000b2a80  mov     x29, x29
  1000b2a84  bl      _objc_retainAutoreleasedReturnValue
  1000b2a88  mov     x21, x0
  1000b2a8c  adrp    x8, #0x100416000
  1000b2a90  nop
  1000b2a94  ldr     x1, [x8, #0xca0]
  1000b2a98  adrp    x2, #0x1003c1000
  1000b2a9c  add     x2, x2, #0x290                           ; @"minigun_tail"
  1000b2aa0  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"minigun_tail"]
  1000b2aa4  mov     x29, x29
  1000b2aa8  bl      _objc_retainAutoreleasedReturnValue
  1000b2aac  mov     x20, x0
  1000b2ab0  mov     x0, x21
  1000b2ab4  bl      _objc_release
  1000b2ab8  adrp    x8, #0x100416000
  1000b2abc  nop
  1000b2ac0  ldr     x1, [x8, #0xcb8]
  1000b2ac4  mov     w2, #0
  1000b2ac8  mov     x0, x20
  1000b2acc  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"minigun_tail"] play:0]
  1000b2ad0  adrp    x8, #0x100416000
  1000b2ad4  nop
  1000b2ad8  ldr     x1, [x8, #0xcb0]
  1000b2adc  nop
  1000b2ae0  ldr     s0, #0x100181cd0                         ; s0 = 0.400000006
  1000b2ae4  mov     x0, x20
  1000b2ae8  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"minigun_tail"] setGain:0.4]
  1000b2aec  str     x22, [sp]
  1000b2af0  mov     w8, #-0x40000000
  1000b2af4  stp     w8, wzr, [sp, #8]
  1000b2af8  adr     x8, #0x1000b2b80                         ; &-[ADMinigunPowerUp update:]_block_invoke_2
  1000b2afc  nop
  1000b2b00  adrp    x9, #0x1003b2000
  1000b2b04  add     x9, x9, #0x5d0                           ; &d_1003b25d0
  1000b2b08  stp     x8, x9, [sp, #0x10]
  1000b2b0c  str     x19, [sp, #0x20]
  1000b2b10  adrp    x8, #0x100417000
  1000b2b14  nop
  1000b2b18  ldr     x1, [x8, #0x9c8]
  1000b2b1c  mov     x2, sp
  1000b2b20  mov     x0, x20
  1000b2b24  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"minigun_tail"] add3DSoundEndCallback:^{-[ADMinigunPowerUp update:]_block_invoke_2 captures +0x20=self, +0x28=__NSConcreteStackBlock, +0x30=0xc0000000, +0x38=&-[ADMinigunPowerUp update:]_block_invok…, +0x40=&d_1003b25b0, +0x48=self->loopSound}]
  1000b2b28  mov     x0, x20
  1000b2b2c  bl      _objc_release
loc_1000b2b30:
  1000b2b30  sub     sp, x29, #0x30
  1000b2b34  ldp     x29, x30, [sp, #0x30]
  1000b2b38  ldp     x20, x19, [sp, #0x20]
  1000b2b3c  ldp     x22, x21, [sp, #0x10]
  1000b2b40  ldp     x24, x23, [sp], #0x40
  1000b2b44  ret
  1000b2b48  b       loc_1000b2b4c
loc_1000b2b4c:
  1000b2b4c  mov     x19, x0
  1000b2b50  mov     x0, x20
  1000b2b54  b       loc_1000b2b60
  1000b2b58  mov     x19, x0
  1000b2b5c  mov     x0, x21
loc_1000b2b60:
  1000b2b60  bl      _objc_release
  1000b2b64  mov     x0, x19
  1000b2b68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMinigunPowerUp update:]_block_invoke
; address 0x1000b2b6c  size 20  kind block
; ======================================================================
  1000b2b6c  ldr     x0, [x0, #0x20]                          ; x0 = captured self->loopSound
  1000b2b70  adrp    x8, #0x100417000
  1000b2b74  nop
  1000b2b78  ldr     x1, [x8, #0x568]
  1000b2b7c  b       _objc_msgSend                            ; [self->loopSound stop]

; ======================================================================
; -[ADMinigunPowerUp update:]_block_invoke_2
; address 0x1000b2b80  size 36  kind block
; ======================================================================
  1000b2b80  stp     x29, x30, [sp, #-0x10]!
  1000b2b84  mov     x29, sp
  1000b2b88  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  1000b2b8c  adrp    x8, #0x100419000
  1000b2b90  nop
  1000b2b94  ldr     x1, [x8, #0x158]
  1000b2b98  bl      _objc_msgSend                            ; [self clean]
  1000b2b9c  ldp     x29, x30, [sp], #0x10
  1000b2ba0  ret

; ======================================================================
; -[ADMinigunPowerUp clean]
; address 0x1000b2ba4  size 388  kind objc
; ======================================================================
  1000b2ba4  stp     x24, x23, [sp, #-0x40]!
  1000b2ba8  stp     x22, x21, [sp, #0x10]
  1000b2bac  stp     x20, x19, [sp, #0x20]
  1000b2bb0  stp     x29, x30, [sp, #0x30]
  1000b2bb4  add     x29, sp, #0x30
  1000b2bb8  mov     x20, x0
  1000b2bbc  adrp    x8, #0x100416000
  1000b2bc0  nop
  1000b2bc4  ldr     x1, [x8, #0xc98]
  1000b2bc8  bl      _objc_msgSend                            ; [self playlist]
  1000b2bcc  mov     x29, x29
  1000b2bd0  bl      _objc_retainAutoreleasedReturnValue
  1000b2bd4  mov     x19, x0
  1000b2bd8  adrp    x8, #0x100417000
  1000b2bdc  nop
  1000b2be0  ldr     x1, [x8, #0x618]
  1000b2be4  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  1000b2be8  mov     x0, x19
  1000b2bec  bl      _objc_release
  1000b2bf0  adrp    x8, #0x10041e000
  1000b2bf4  ldr     x0, [x8, #8]                             ; class ADTracker
  1000b2bf8  adrp    x8, #0x100416000
  1000b2bfc  nop
  1000b2c00  ldr     x1, [x8, #0xac0]
  1000b2c04  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  1000b2c08  mov     x29, x29
  1000b2c0c  bl      _objc_retainAutoreleasedReturnValue
  1000b2c10  mov     x19, x0
  1000b2c14  adrp    x24, #0x10041d000
  1000b2c18  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b2c1c  adrp    x8, #0x100417000
  1000b2c20  nop
  1000b2c24  ldr     x21, [x8, #0x228]
  1000b2c28  mov     x1, x21
  1000b2c2c  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b2c30  mov     x29, x29
  1000b2c34  bl      _objc_retainAutoreleasedReturnValue
  1000b2c38  mov     x22, x0
  1000b2c3c  adrp    x8, #0x10041a000
  1000b2c40  nop
  1000b2c44  ldr     x1, [x8]
  1000b2c48  bl      _objc_msgSend                            ; [[ADInGameStats singleton] enemyKillsWithPowerup]
  1000b2c4c  mov     x23, x0
  1000b2c50  adrp    x8, #0x100417000
  1000b2c54  nop
  1000b2c58  ldr     x1, [x8, #0x450]
  1000b2c5c  mov     x0, x20
  1000b2c60  bl      _objc_msgSend                            ; [self name]
  1000b2c64  mov     x29, x29
  1000b2c68  bl      _objc_retainAutoreleasedReturnValue
  1000b2c6c  mov     x20, x0
  1000b2c70  adrp    x8, #0x10041a000
  1000b2c74  nop
  1000b2c78  ldr     x1, [x8, #8]
  1000b2c7c  mov     x0, x19
  1000b2c80  mov     x2, x23
  1000b2c84  mov     x3, x20
  1000b2c88  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] numberOfEnemyKills:[[ADInGameStats singleton] enemyKillsWithPowerup] ByPowerUp:[self name]]
  1000b2c8c  mov     x0, x20
  1000b2c90  bl      _objc_release
  1000b2c94  mov     x0, x22
  1000b2c98  bl      _objc_release
  1000b2c9c  mov     x0, x19
  1000b2ca0  bl      _objc_release
  1000b2ca4  ldr     x0, [x24, #0xfc0]                        ; class ADInGameStats
  1000b2ca8  mov     x1, x21
  1000b2cac  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  1000b2cb0  mov     x29, x29
  1000b2cb4  bl      _objc_retainAutoreleasedReturnValue
  1000b2cb8  mov     x19, x0
  1000b2cbc  adrp    x8, #0x10041a000
  1000b2cc0  nop
  1000b2cc4  ldr     x1, [x8, #0x10]
  1000b2cc8  mov     x2, #0
  1000b2ccc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] setEnemyKillsWithPowerup:0]
  1000b2cd0  mov     x0, x19
  1000b2cd4  ldp     x29, x30, [sp, #0x30]
  1000b2cd8  ldp     x20, x19, [sp, #0x20]
  1000b2cdc  ldp     x22, x21, [sp, #0x10]
  1000b2ce0  ldp     x24, x23, [sp], #0x40
  1000b2ce4  b       _objc_release
  1000b2ce8  mov     x20, x0
  1000b2cec  b       loc_1000b2d08
  1000b2cf0  b       loc_1000b2d14
  1000b2cf4  b       loc_1000b2d14
  1000b2cf8  mov     x1, x20
  1000b2cfc  mov     x20, x0
  1000b2d00  mov     x0, x1
  1000b2d04  bl      _objc_release
loc_1000b2d08:
  1000b2d08  mov     x0, x22
  1000b2d0c  bl      _objc_release
  1000b2d10  b       loc_1000b2d18
loc_1000b2d14:
  1000b2d14  mov     x20, x0
loc_1000b2d18:
  1000b2d18  mov     x0, x19
  1000b2d1c  bl      _objc_release
  1000b2d20  mov     x0, x20
  1000b2d24  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMinigunPowerUp .cxx_destruct]
; address 0x1000b2d28  size 64  kind objc
; ======================================================================
  1000b2d28  stp     x20, x19, [sp, #-0x20]!
  1000b2d2c  stp     x29, x30, [sp, #0x10]
  1000b2d30  add     x29, sp, #0x10
  1000b2d34  mov     x19, x0
  1000b2d38  adrp    x8, #0x100420000
  1000b2d3c  ldrsw   x8, [x8, #0x1e0]                         ; ivar offset ADMinigunPowerUp.loopSound (+0x28)
  1000b2d40  add     x0, x19, x8
  1000b2d44  mov     x1, #0
  1000b2d48  bl      _objc_storeStrong
  1000b2d4c  mov     x1, #0
  1000b2d50  adrp    x8, #0x100420000
  1000b2d54  ldrsw   x8, [x8, #0x1d8]                         ; ivar offset ADMinigunPowerUp.minigunWeapon (+0x18)
  1000b2d58  add     x0, x19, x8
  1000b2d5c  ldp     x29, x30, [sp, #0x10]
  1000b2d60  ldp     x20, x19, [sp], #0x20
  1000b2d64  b       _objc_storeStrong
