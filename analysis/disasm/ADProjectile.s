// unit ADProjectile — 19 functions
//   0x100053660     420  -[ADProjectile initWithSpeed:squaredDistanceToCover:timeToLive:soundsPrefix:orientation:]
//   0x100053804     592  -[ADProjectile update:]
//   0x100053a54     160  -[ADProjectile move]
//   0x100053af4     236  -[ADProjectile playCountDown]
//   0x100053be0     372  -[ADProjectile explode]
//   0x100053d54      48  -[ADProjectile setState:]
//   0x100053d84      60  -[ADProjectile position]
//   0x100053dc0      60  -[ADProjectile setPosition:]
//   0x100053dfc      16  -[ADProjectile state]
//   0x100053e0c      16  -[ADProjectile tag]
//   0x100053e1c      16  -[ADProjectile setTag:]
//   0x100053e2c      20  -[ADProjectile timeInState]
//   0x100053e40      20  -[ADProjectile setTimeInState:]
//   0x100053e54      20  -[ADProjectile explosionRadius]
//   0x100053e68      20  -[ADProjectile setExplosionRadius:]
//   0x100053e7c      32  -[ADProjectile weapon]
//   0x100053e9c      20  -[ADProjectile setWeapon:]
//   0x100053eb0     100  -[ADProjectile .cxx_destruct]
//   0x100053f14       4  -[ADProjectile .cxx_construct]

; ======================================================================
; -[ADProjectile initWithSpeed:squaredDistanceToCover:timeToLive:soundsPrefix:orientation:]
; address 0x100053660  size 420  kind objc
; ======================================================================
  100053660  stp     d13, d12, [sp, #-0x70]!
  100053664  stp     d11, d10, [sp, #0x10]
  100053668  stp     d9, d8, [sp, #0x20]
  10005366c  stp     x24, x23, [sp, #0x30]
  100053670  stp     x22, x21, [sp, #0x40]
  100053674  stp     x20, x19, [sp, #0x50]
  100053678  stp     x29, x30, [sp, #0x60]
  10005367c  add     x29, sp, #0x60
  100053680  sub     sp, sp, #0x10
  100053684  mov     v9.16b, v4.16b
  100053688  mov     v10.16b, v3.16b
  10005368c  mov     v8.16b, v2.16b
  100053690  mov     v12.16b, v1.16b
  100053694  mov     v11.16b, v0.16b
  100053698  mov     x20, x0
  10005369c  mov     x0, x2
  1000536a0  bl      _objc_retain
  1000536a4  mov     x19, x0
  1000536a8  str     x20, [sp]
  1000536ac  adrp    x8, #0x10041e000
  1000536b0  ldr     x8, [x8, #0xd58]
  1000536b4  str     x8, [sp, #8]
  1000536b8  adrp    x8, #0x100416000
  1000536bc  nop
  1000536c0  ldr     x1, [x8, #0xab8]
  1000536c4  mov     x21, #0
  1000536c8  mov     x0, sp
  1000536cc  bl      _objc_msgSendSuper2                      ; [super init]
  1000536d0  mov     x20, x0
  1000536d4  cbz     x20, loc_1000537a4                       ; if (self == 0)
  1000536d8  mov     x21, x20
  1000536dc  adrp    x8, #0x10041d000
  1000536e0  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000536e4  adrp    x8, #0x100417000
  1000536e8  nop
  1000536ec  ldr     x1, [x8, #0x4f0]
  1000536f0  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000536f4  mov     x29, x29
  1000536f8  bl      _objc_retainAutoreleasedReturnValue
  1000536fc  mov     x22, x0
  100053700  adrp    x8, #0x100417000
  100053704  nop
  100053708  ldr     x1, [x8, #0x4f8]
  10005370c  mov     x2, x19
  100053710  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:arg4]
  100053714  mov     x21, x20
  100053718  mov     x29, x29
  10005371c  bl      _objc_retainAutoreleasedReturnValue
  100053720  adrp    x8, #0x10041f000
  100053724  ldrsw   x9, [x8, #0xaac]                         ; ivar offset ADProjectile.playlist (+0x8)
  100053728  ldr     x8, [x20, x9]                            ; x8 = self->playlist
  10005372c  str     x0, [x20, x9]                            ; self->playlist = [[S3DEngine engine] playListWithName:arg4]
  100053730  mov     x0, x8
  100053734  bl      _objc_release
  100053738  mov     x0, x22
  10005373c  bl      _objc_release
  100053740  adrp    x8, #0x10041f000
  100053744  ldrsw   x8, [x8, #0xab0]                         ; ivar offset ADProjectile.squaredDistanceToCover (+0x24)
  100053748  str     s12, [x20, x8]                           ; self->squaredDistanceToCover = arg2
  10005374c  adrp    x8, #0x100418000
  100053750  nop
  100053754  ldr     x1, [x8, #0xe00]
  100053758  mov     x0, x20
  10005375c  bl      _objc_msgSend                            ; [self move]
  100053760  mov     x21, x20
  100053764  adrp    x8, #0x10041f000
  100053768  adrp    x9, #0x10041f000
  10005376c  ldrsw   x8, [x8, #0xab4]                         ; ivar offset ADProjectile.orientation (+0x30)
  100053770  add     x8, x20, x8
  100053774  stp     d10, d9, [x8]
  100053778  ldrsw   x8, [x9, #0xab8]                         ; ivar offset ADProjectile.speed (+0x20)
  10005377c  str     s11, [x20, x8]                           ; self->speed = arg1
  100053780  adrp    x8, #0x100417000
  100053784  nop
  100053788  ldr     x1, [x8, #0x4a8]
  10005378c  fmov    s0, #5.00000000
  100053790  mov     x0, x20
  100053794  bl      _objc_msgSend                            ; [self setExplosionRadius:5]
  100053798  adrp    x8, #0x10041f000
  10005379c  ldrsw   x8, [x8, #0xabc]                         ; ivar offset ADProjectile.ttl (+0x28)
  1000537a0  str     s8, [x20, x8]                            ; self->ttl = arg3
loc_1000537a4:
  1000537a4  mov     x0, x19
  1000537a8  bl      _objc_release
  1000537ac  mov     x0, x20
  1000537b0  sub     sp, x29, #0x60
  1000537b4  ldp     x29, x30, [sp, #0x60]
  1000537b8  ldp     x20, x19, [sp, #0x50]
  1000537bc  ldp     x22, x21, [sp, #0x40]
  1000537c0  ldp     x24, x23, [sp, #0x30]
  1000537c4  ldp     d9, d8, [sp, #0x20]
  1000537c8  ldp     d11, d10, [sp, #0x10]
  1000537cc  ldp     d13, d12, [sp], #0x70
  1000537d0  ret
  1000537d4  mov     x23, x0
  1000537d8  b       loc_1000537ec
  1000537dc  mov     x23, x0
  1000537e0  mov     x0, x22
  1000537e4  bl      _objc_release
  1000537e8  mov     x21, x20
loc_1000537ec:
  1000537ec  mov     x0, x19
  1000537f0  bl      _objc_release
  1000537f4  mov     x0, x21
  1000537f8  bl      _objc_release
  1000537fc  mov     x0, x23
  100053800  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADProjectile update:]
; address 0x100053804  size 592  kind objc
; ======================================================================
  100053804  stp     d11, d10, [sp, #-0x50]!
  100053808  stp     d9, d8, [sp, #0x10]
  10005380c  stp     x22, x21, [sp, #0x20]
  100053810  stp     x20, x19, [sp, #0x30]
  100053814  stp     x29, x30, [sp, #0x40]
  100053818  add     x29, sp, #0x40
  10005381c  mov     v8.16b, v0.16b
  100053820  mov     x19, x0
  100053824  adrp    x8, #0x100416000
  100053828  nop
  10005382c  ldr     x1, [x8, #0xc60]
  100053830  bl      _objc_msgSend                            ; [self state]
  100053834  cmp     w0, #1
  100053838  b.eq    loc_10005385c                            ; if ([self state] == 1)
  10005383c  cmp     w0, #2
  100053840  b.ne    loc_100053938                            ; if ([self state] != 2)
  100053844  adrp    x8, #0x10041f000
  100053848  ldrsw   x8, [x8, #0xabc]                         ; ivar offset ADProjectile.ttl (+0x28)
  10005384c  ldr     s0, [x19, x8]                            ; s0 = self->ttl
  100053850  fcmp    s0, #0.0
  100053854  b.pl    loc_100053a00                            ; if (self->ttl >= (or unordered) 0.0)
  100053858  b       loc_100053974
loc_10005385c:
  10005385c  adrp    x8, #0x100417000
  100053860  nop
  100053864  ldr     x20, [x8, #8]
  100053868  mov     x0, x19
  10005386c  mov     x1, x20
  100053870  bl      _objc_msgSend                            ; [self position]
  100053874  mov     v9.16b, v0.16b
  100053878  adrp    x8, #0x10041f000
  10005387c  ldrsw   x21, [x8, #0xab4]                        ; ivar offset ADProjectile.orientation (+0x30)
  100053880  ldr     d10, [x19, x21]                          ; d10 = self->orientation.x
  100053884  nop
  100053888  ldrsw   x22, [x8, #0xab8]                        ; ivar offset ADProjectile.speed (+0x20)
  10005388c  ldr     s11, [x19, x22]                          ; s11 = self->speed
  100053890  mov     x0, x19
  100053894  mov     x1, x20
  100053898  bl      _objc_msgSend                            ; [self position]
  10005389c  add     x8, x21, x19
  1000538a0  fcvt    d0, s11
  1000538a4  fmul    d0, d10, d0
  1000538a8  fcvt    d2, s8
  1000538ac  fmul    d0, d2, d0
  1000538b0  fadd    d0, d9, d0
  1000538b4  ldr     d3, [x8, #8]                             ; d3 = self->orientation.y
  1000538b8  ldr     s4, [x19, x22]                           ; s4 = self->speed
  1000538bc  fcvt    d4, s4
  1000538c0  fmul    d3, d3, d4
  1000538c4  fmul    d2, d2, d3
  1000538c8  fadd    d1, d1, d2
  1000538cc  fmul    d2, d0, d0                               ; t1 = (([self position].0 + (arg1 * (self->orientation.x * self->speed))) * ([self position].0 + (arg1 * (self->orientation.x * self->speed))))
  1000538d0  fmul    d3, d1, d1                               ; t2 = (([self position].1 + (arg1 * (self->orientation.y * self->speed))) * ([self position].1 + (arg1 * (self->orientation.y * self->speed))))
  1000538d4  fadd    d2, d2, d3
  1000538d8  adrp    x8, #0x10041f000
  1000538dc  ldrsw   x8, [x8, #0xab0]                         ; ivar offset ADProjectile.squaredDistanceToCover (+0x24)
  1000538e0  ldr     s3, [x19, x8]                            ; s3 = self->squaredDistanceToCover
  1000538e4  fcvt    d3, s3
  1000538e8  fcmp    d2, d3
  1000538ec  b.le    loc_1000539a4                            ; if ((t1 + t2) <= (or unordered) self->squaredDistanceToCover)
  1000538f0  adrp    x8, #0x10041f000
  1000538f4  ldrsw   x8, [x8, #0xabc]                         ; ivar offset ADProjectile.ttl (+0x28)
  1000538f8  ldr     s0, [x19, x8]                            ; s0 = self->ttl
  1000538fc  fcvt    d0, s0
  100053900  adrp    x8, #0x100181000
  100053904  ldr     d1, [x8, #0xa20]                         ; d1 = 0.05
  100053908  fcmp    d0, d1
  10005390c  b.le    loc_100053974                            ; if (self->ttl <= (or unordered) 0.05)
  100053910  adrp    x8, #0x100418000
  100053914  nop
  100053918  ldr     x1, [x8, #0xe08]
  10005391c  mov     x0, x19
  100053920  bl      _objc_msgSend                            ; [self playCountDown]
  100053924  adrp    x8, #0x100416000
  100053928  add     x8, x8, #0xc78                           ; &@selector(setState:)
  10005392c  ldr     x1, [x8]
  100053930  mov     w2, #2
  100053934  b       loc_100053998
loc_100053938:
  100053938  cmp     w0, #3
  10005393c  b.ne    loc_100053a00                            ; if ([self state] != 3)
  100053940  adrp    x8, #0x100416000
  100053944  nop
  100053948  ldr     x1, [x8, #0xc68]
  10005394c  mov     x0, x19
  100053950  bl      _objc_msgSend                            ; [self timeInState]
  100053954  fmov    s1, #3.00000000
  100053958  fcmp    s0, s1
  10005395c  b.le    loc_100053a00                            ; if ([self timeInState] <= (or unordered) 3)
  100053960  adrp    x8, #0x100416000
  100053964  add     x8, x8, #0xc78                           ; &@selector(setState:)
  100053968  ldr     x1, [x8]
  10005396c  mov     w2, #-1
  100053970  b       loc_100053998
loc_100053974:
  100053974  adrp    x8, #0x100418000
  100053978  nop
  10005397c  ldr     x1, [x8, #0xe10]
  100053980  mov     x0, x19
  100053984  bl      _objc_msgSend                            ; [self explode]
  100053988  adrp    x8, #0x100416000
  10005398c  add     x8, x8, #0xc78                           ; &@selector(setState:)
  100053990  ldr     x1, [x8]
  100053994  mov     w2, #3
loc_100053998:
  100053998  mov     x0, x19
  10005399c  bl      _objc_msgSend                            ; [self setState:one of {2, 3, 0xffffffff}]
  1000539a0  b       loc_100053a00
loc_1000539a4:
  1000539a4  adrp    x8, #0x100417000
  1000539a8  nop
  1000539ac  ldr     x1, [x8, #0x20]
  1000539b0  mov     x0, x19
  1000539b4  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * (self->orientation.x * self->speed))), ([self position].1 + (arg1 * (self->orientation.y * self->speed)))}]
  1000539b8  adrp    x8, #0x10041f000
  1000539bc  ldrsw   x8, [x8, #0xac0]                         ; ivar offset ADProjectile.movingSound (+0x10)
  1000539c0  ldr     x21, [x19, x8]                           ; x21 = self->movingSound
  1000539c4  mov     x0, x19
  1000539c8  mov     x1, x20
  1000539cc  bl      _objc_msgSend                            ; [self position]
  1000539d0  fcvt    s9, d0
  1000539d4  mov     x0, x19
  1000539d8  mov     x1, x20
  1000539dc  bl      _objc_msgSend                            ; [self position]
  1000539e0  fcvt    s1, d1
  1000539e4  adrp    x8, #0x100417000
  1000539e8  nop
  1000539ec  ldr     x1, [x8, #0x38]
  1000539f0  movi    v2.16b, #0
  1000539f4  mov     x0, x21
  1000539f8  mov     v0.16b, v9.16b
  1000539fc  bl      _objc_msgSend                            ; [self->movingSound setPlanar:{[self position].0, [self position].1, 0}]
loc_100053a00:
  100053a00  adrp    x8, #0x10041f000
  100053a04  ldrsw   x8, [x8, #0xabc]                         ; ivar offset ADProjectile.ttl (+0x28)
  100053a08  ldr     s0, [x19, x8]                            ; s0 = self->ttl
  100053a0c  fsub    s0, s0, s8
  100053a10  str     s0, [x19, x8]                            ; self->ttl = (self->ttl - arg1)
  100053a14  adrp    x8, #0x100416000
  100053a18  nop
  100053a1c  ldr     x1, [x8, #0xc68]
  100053a20  mov     x0, x19
  100053a24  bl      _objc_msgSend                            ; [self timeInState]
  100053a28  fadd    s0, s0, s8
  100053a2c  adrp    x8, #0x100416000
  100053a30  nop
  100053a34  ldr     x1, [x8, #0xc80]
  100053a38  mov     x0, x19
  100053a3c  ldp     x29, x30, [sp, #0x40]
  100053a40  ldp     x20, x19, [sp, #0x30]
  100053a44  ldp     x22, x21, [sp, #0x20]
  100053a48  ldp     d9, d8, [sp, #0x10]
  100053a4c  ldp     d11, d10, [sp], #0x50
  100053a50  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]

; ======================================================================
; -[ADProjectile move]
; address 0x100053a54  size 160  kind objc
; ======================================================================
  100053a54  stp     x20, x19, [sp, #-0x20]!
  100053a58  stp     x29, x30, [sp, #0x10]
  100053a5c  add     x29, sp, #0x10
  100053a60  mov     x19, x0
  100053a64  adrp    x8, #0x100416000
  100053a68  nop
  100053a6c  ldr     x1, [x8, #0xc78]
  100053a70  mov     w2, #1
  100053a74  bl      _objc_msgSend                            ; [self setState:1]
  100053a78  adrp    x8, #0x10041f000
  100053a7c  ldrsw   x8, [x8, #0xaac]                         ; ivar offset ADProjectile.playlist (+0x8)
  100053a80  ldr     x0, [x19, x8]                            ; x0 = self->playlist
  100053a84  adrp    x8, #0x100416000
  100053a88  nop
  100053a8c  ldr     x1, [x8, #0xca0]
  100053a90  adrp    x2, #0x1003bd000
  100053a94  add     x2, x2, #0x950                           ; @"_move_"
  100053a98  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:@"_move_"]
  100053a9c  mov     x29, x29
  100053aa0  bl      _objc_retainAutoreleasedReturnValue
  100053aa4  adrp    x8, #0x10041f000
  100053aa8  ldrsw   x20, [x8, #0xac0]                        ; ivar offset ADProjectile.movingSound (+0x10)
  100053aac  ldr     x8, [x19, x20]                           ; x8 = self->movingSound
  100053ab0  str     x0, [x19, x20]                           ; self->movingSound = [self->playlist anySoundContaining:@"_move_"]
  100053ab4  mov     x0, x8
  100053ab8  bl      _objc_release
  100053abc  ldr     x0, [x19, x20]                           ; x0 = self->movingSound
  100053ac0  adrp    x8, #0x100416000
  100053ac4  nop
  100053ac8  ldr     x1, [x8, #0xca8]
  100053acc  mov     w2, #1
  100053ad0  bl      _objc_msgSend                            ; [self->movingSound setSpatialized:1]
  100053ad4  ldr     x0, [x19, x20]                           ; x0 = self->movingSound
  100053ad8  adrp    x8, #0x100416000
  100053adc  nop
  100053ae0  ldr     x1, [x8, #0xcb8]
  100053ae4  mov     w2, #1
  100053ae8  ldp     x29, x30, [sp, #0x10]
  100053aec  ldp     x20, x19, [sp], #0x20
  100053af0  b       _objc_msgSend                            ; [self->movingSound play:1]

; ======================================================================
; -[ADProjectile playCountDown]
; address 0x100053af4  size 236  kind objc
; ======================================================================
  100053af4  stp     d9, d8, [sp, #-0x40]!
  100053af8  stp     x22, x21, [sp, #0x10]
  100053afc  stp     x20, x19, [sp, #0x20]
  100053b00  stp     x29, x30, [sp, #0x30]
  100053b04  add     x29, sp, #0x30
  100053b08  mov     x20, x0
  100053b0c  adrp    x8, #0x10041f000
  100053b10  ldrsw   x8, [x8, #0xaac]                         ; ivar offset ADProjectile.playlist (+0x8)
  100053b14  ldr     x0, [x20, x8]                            ; x0 = self->playlist
  100053b18  adrp    x8, #0x100416000
  100053b1c  nop
  100053b20  ldr     x1, [x8, #0xca0]
  100053b24  mov     x19, #0
  100053b28  adrp    x2, #0x1003bd000
  100053b2c  add     x2, x2, #0x970                           ; @"_timer"
  100053b30  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:@"_timer"]
  100053b34  mov     x29, x29
  100053b38  bl      _objc_retainAutoreleasedReturnValue
  100053b3c  mov     x19, x0
  100053b40  adrp    x8, #0x100416000
  100053b44  nop
  100053b48  ldr     x1, [x8, #0xca8]
  100053b4c  mov     w2, #1
  100053b50  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_timer"] setSpatialized:1]
  100053b54  adrp    x8, #0x100417000
  100053b58  nop
  100053b5c  ldr     x21, [x8, #8]
  100053b60  mov     x0, x20
  100053b64  mov     x1, x21
  100053b68  bl      _objc_msgSend                            ; [self position]
  100053b6c  mov     v8.16b, v0.16b
  100053b70  mov     x0, x20
  100053b74  mov     x1, x21
  100053b78  bl      _objc_msgSend                            ; [self position]
  100053b7c  fcvt    s0, d8
  100053b80  fcvt    s1, d1
  100053b84  adrp    x8, #0x100417000
  100053b88  nop
  100053b8c  ldr     x1, [x8, #0x38]
  100053b90  movi    v2.16b, #0
  100053b94  mov     x0, x19
  100053b98  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_timer"] setPlanar:{[self position].0, [self position].1, 0}]
  100053b9c  adrp    x8, #0x100416000
  100053ba0  nop
  100053ba4  ldr     x1, [x8, #0xcb8]
  100053ba8  mov     w2, #0
  100053bac  mov     x0, x19
  100053bb0  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_timer"] play:0]
  100053bb4  mov     x0, x19
  100053bb8  ldp     x29, x30, [sp, #0x30]
  100053bbc  ldp     x20, x19, [sp, #0x20]
  100053bc0  ldp     x22, x21, [sp, #0x10]
  100053bc4  ldp     d9, d8, [sp], #0x40
  100053bc8  b       _objc_release
  100053bcc  mov     x20, x0
  100053bd0  mov     x0, x19
  100053bd4  bl      _objc_release
  100053bd8  mov     x0, x20
  100053bdc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADProjectile explode]
; address 0x100053be0  size 372  kind objc
; ======================================================================
  100053be0  stp     d9, d8, [sp, #-0x40]!
  100053be4  stp     x22, x21, [sp, #0x10]
  100053be8  stp     x20, x19, [sp, #0x20]
  100053bec  stp     x29, x30, [sp, #0x30]
  100053bf0  add     x29, sp, #0x30
  100053bf4  mov     x20, x0
  100053bf8  adrp    x8, #0x10041f000
  100053bfc  ldrsw   x8, [x8, #0xac0]                         ; ivar offset ADProjectile.movingSound (+0x10)
  100053c00  ldr     x0, [x20, x8]                            ; x0 = self->movingSound
  100053c04  cbz     x0, loc_100053c18                        ; if (self->movingSound == 0)
  100053c08  adrp    x8, #0x100417000
  100053c0c  nop
  100053c10  ldr     x1, [x8, #0x568]
  100053c14  bl      _objc_msgSend                            ; [self->movingSound stop]
loc_100053c18:
  100053c18  adrp    x8, #0x10041f000
  100053c1c  ldrsw   x8, [x8, #0xaac]                         ; ivar offset ADProjectile.playlist (+0x8)
  100053c20  ldr     x0, [x20, x8]                            ; x0 = self->playlist
  100053c24  adrp    x8, #0x100416000
  100053c28  nop
  100053c2c  ldr     x1, [x8, #0xca0]
  100053c30  mov     x19, #0
  100053c34  adrp    x2, #0x1003bd000
  100053c38  add     x2, x2, #0x990                           ; @"_explosion_"
  100053c3c  bl      _objc_msgSend                            ; [self->playlist anySoundContaining:@"_explosion_"]
  100053c40  mov     x29, x29
  100053c44  bl      _objc_retainAutoreleasedReturnValue
  100053c48  mov     x19, x0
  100053c4c  adrp    x8, #0x100416000
  100053c50  nop
  100053c54  ldr     x1, [x8, #0xca8]
  100053c58  mov     w2, #1
  100053c5c  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_explosion_"] setSpatialized:1]
  100053c60  adrp    x8, #0x100417000
  100053c64  nop
  100053c68  ldr     x21, [x8, #8]
  100053c6c  mov     x0, x20
  100053c70  mov     x1, x21
  100053c74  bl      _objc_msgSend                            ; [self position]
  100053c78  mov     v8.16b, v0.16b
  100053c7c  mov     x0, x20
  100053c80  mov     x1, x21
  100053c84  bl      _objc_msgSend                            ; [self position]
  100053c88  fcvt    s0, d8
  100053c8c  fcvt    s1, d1
  100053c90  adrp    x8, #0x100417000
  100053c94  nop
  100053c98  ldr     x1, [x8, #0x38]
  100053c9c  movi    v2.16b, #0
  100053ca0  mov     x0, x19
  100053ca4  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_explosion_"] setPlanar:{[self position].0, [self position].1, 0}]
  100053ca8  adrp    x8, #0x100416000
  100053cac  nop
  100053cb0  ldr     x1, [x8, #0xcb0]
  100053cb4  fmov    s0, #10.00000000
  100053cb8  mov     x0, x19
  100053cbc  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_explosion_"] setGain:10]
  100053cc0  adrp    x8, #0x100416000
  100053cc4  nop
  100053cc8  ldr     x1, [x8, #0xcb8]
  100053ccc  mov     w2, #0
  100053cd0  mov     x0, x19
  100053cd4  bl      _objc_msgSend                            ; [[self->playlist anySoundContaining:@"_explosion_"] play:0]
  100053cd8  adrp    x8, #0x10041e000
  100053cdc  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100053ce0  adrp    x8, #0x100417000
  100053ce4  nop
  100053ce8  ldr     x1, [x8, #0xaa8]
  100053cec  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100053cf0  mov     x29, x29
  100053cf4  bl      _objc_retainAutoreleasedReturnValue
  100053cf8  mov     x21, x0
  100053cfc  adrp    x8, #0x100418000
  100053d00  nop
  100053d04  ldr     x1, [x8, #0xe18]
  100053d08  mov     x2, x20
  100053d0c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] solveExplosionOfProjectile:self]
  100053d10  mov     x0, x21
  100053d14  bl      _objc_release
  100053d18  mov     x0, x19
  100053d1c  ldp     x29, x30, [sp, #0x30]
  100053d20  ldp     x20, x19, [sp, #0x20]
  100053d24  ldp     x22, x21, [sp, #0x10]
  100053d28  ldp     d9, d8, [sp], #0x40
  100053d2c  b       _objc_release
  100053d30  mov     x20, x0
loc_100053d34:
  100053d34  mov     x0, x19
  100053d38  bl      _objc_release
  100053d3c  mov     x0, x20
  100053d40  bl      __Unwind_Resume                          ; Unwind_Resume()
  100053d44  mov     x20, x0
  100053d48  mov     x0, x21
  100053d4c  bl      _objc_release
  100053d50  b       loc_100053d34

; ======================================================================
; -[ADProjectile setState:]
; address 0x100053d54  size 48  kind objc
; ======================================================================
  100053d54  adrp    x8, #0x10041f000
  100053d58  ldrsw   x8, [x8, #0xac4]                         ; ivar offset ADProjectile._state (+0x40)
  100053d5c  ldr     w9, [x0, x8]                             ; w9 = self->_state
  100053d60  cmp     w9, w2
  100053d64  b.ne    loc_100053d6c                            ; if (self->_state != arg1)
  100053d68  ret
loc_100053d6c:
  100053d6c  str     w2, [x0, x8]                             ; self->_state = arg1
  100053d70  adrp    x8, #0x100416000
  100053d74  nop
  100053d78  ldr     x1, [x8, #0xc80]
  100053d7c  movi    v0.16b, #0
  100053d80  b       _objc_msgSend                            ; [self setTimeInState:0]

; ======================================================================
; -[ADProjectile position]
; address 0x100053d84  size 60  kind objc
; ======================================================================
  100053d84  stp     x29, x30, [sp, #-0x10]!
  100053d88  mov     x29, sp
  100053d8c  sub     sp, sp, #0x10
  100053d90  adrp    x8, #0x10041f000
  100053d94  ldrsw   x8, [x8, #0xac8]                         ; ivar offset ADProjectile._position (+0x58)
  100053d98  add     x1, x0, x8
  100053d9c  mov     x0, sp
  100053da0  mov     w2, #0x10
  100053da4  mov     w3, #1
  100053da8  mov     w4, #0
  100053dac  bl      _objc_copyStruct                         ; objc_copyStruct(&sp[0x0], x1, 16, 1)
  100053db0  ldp     d0, d1, [sp]
  100053db4  mov     sp, x29
  100053db8  ldp     x29, x30, [sp], #0x10
  100053dbc  ret

; ======================================================================
; -[ADProjectile setPosition:]
; address 0x100053dc0  size 60  kind objc
; ======================================================================
  100053dc0  stp     x29, x30, [sp, #-0x10]!
  100053dc4  mov     x29, sp
  100053dc8  sub     sp, sp, #0x10
  100053dcc  stp     d0, d1, [sp]
  100053dd0  adrp    x8, #0x10041f000
  100053dd4  ldrsw   x8, [x8, #0xac8]                         ; ivar offset ADProjectile._position (+0x58)
  100053dd8  add     x0, x0, x8
  100053ddc  mov     x1, sp
  100053de0  mov     w2, #0x10
  100053de4  mov     w3, #1
  100053de8  mov     w4, #0
  100053dec  bl      _objc_copyStruct                         ; objc_copyStruct(x0, &sp[0x0], 16, 1)
  100053df0  mov     sp, x29
  100053df4  ldp     x29, x30, [sp], #0x10
  100053df8  ret

; ======================================================================
; -[ADProjectile state]
; address 0x100053dfc  size 16  kind objc
; ======================================================================
  100053dfc  adrp    x8, #0x10041f000
  100053e00  ldrsw   x8, [x8, #0xac4]                         ; ivar offset ADProjectile._state (+0x40)
  100053e04  ldr     w0, [x0, x8]                             ; w0 = self->_state
  100053e08  ret

; ======================================================================
; -[ADProjectile tag]
; address 0x100053e0c  size 16  kind objc
; ======================================================================
  100053e0c  adrp    x8, #0x10041f000
  100053e10  ldrsw   x8, [x8, #0xacc]                         ; ivar offset ADProjectile._tag (+0x44)
  100053e14  ldr     w0, [x0, x8]                             ; w0 = self->_tag
  100053e18  ret

; ======================================================================
; -[ADProjectile setTag:]
; address 0x100053e1c  size 16  kind objc
; ======================================================================
  100053e1c  adrp    x8, #0x10041f000
  100053e20  ldrsw   x8, [x8, #0xacc]                         ; ivar offset ADProjectile._tag (+0x44)
  100053e24  str     w2, [x0, x8]                             ; self->_tag = arg1
  100053e28  ret

; ======================================================================
; -[ADProjectile timeInState]
; address 0x100053e2c  size 20  kind objc
; ======================================================================
  100053e2c  adrp    x8, #0x10041f000
  100053e30  ldrsw   x8, [x8, #0xad0]                         ; ivar offset ADProjectile._timeInState (+0x48)
  100053e34  ldr     w8, [x0, x8]                             ; w8 = self->_timeInState
  100053e38  fmov    s0, w8
  100053e3c  ret

; ======================================================================
; -[ADProjectile setTimeInState:]
; address 0x100053e40  size 20  kind objc
; ======================================================================
  100053e40  fmov    w8, s0
  100053e44  adrp    x9, #0x10041f000
  100053e48  ldrsw   x9, [x9, #0xad0]                         ; ivar offset ADProjectile._timeInState (+0x48)
  100053e4c  str     w8, [x0, x9]                             ; self->_timeInState = arg1
  100053e50  ret

; ======================================================================
; -[ADProjectile explosionRadius]
; address 0x100053e54  size 20  kind objc
; ======================================================================
  100053e54  adrp    x8, #0x10041f000
  100053e58  ldrsw   x8, [x8, #0xad4]                         ; ivar offset ADProjectile._explosionRadius (+0x4c)
  100053e5c  ldr     w8, [x0, x8]                             ; w8 = self->_explosionRadius
  100053e60  fmov    s0, w8
  100053e64  ret

; ======================================================================
; -[ADProjectile setExplosionRadius:]
; address 0x100053e68  size 20  kind objc
; ======================================================================
  100053e68  fmov    w8, s0
  100053e6c  adrp    x9, #0x10041f000
  100053e70  ldrsw   x9, [x9, #0xad4]                         ; ivar offset ADProjectile._explosionRadius (+0x4c)
  100053e74  str     w8, [x0, x9]                             ; self->_explosionRadius = arg1
  100053e78  ret

; ======================================================================
; -[ADProjectile weapon]
; address 0x100053e7c  size 32  kind objc
; ======================================================================
  100053e7c  stp     x29, x30, [sp, #-0x10]!
  100053e80  mov     x29, sp
  100053e84  adrp    x8, #0x10041f000
  100053e88  ldrsw   x8, [x8, #0xad8]                         ; ivar offset ADProjectile._weapon (+0x50)
  100053e8c  add     x0, x0, x8
  100053e90  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100053e94  ldp     x29, x30, [sp], #0x10
  100053e98  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADProjectile setWeapon:]
; address 0x100053e9c  size 20  kind objc
; ======================================================================
  100053e9c  adrp    x8, #0x10041f000
  100053ea0  ldrsw   x8, [x8, #0xad8]                         ; ivar offset ADProjectile._weapon (+0x50)
  100053ea4  add     x0, x0, x8
  100053ea8  mov     x1, x2
  100053eac  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADProjectile .cxx_destruct]
; address 0x100053eb0  size 100  kind objc
; ======================================================================
  100053eb0  stp     x20, x19, [sp, #-0x20]!
  100053eb4  stp     x29, x30, [sp, #0x10]
  100053eb8  add     x29, sp, #0x10
  100053ebc  mov     x19, x0
  100053ec0  adrp    x8, #0x10041f000
  100053ec4  ldrsw   x8, [x8, #0xad8]                         ; ivar offset ADProjectile._weapon (+0x50)
  100053ec8  add     x0, x19, x8
  100053ecc  bl      _objc_destroyWeak
  100053ed0  adrp    x8, #0x10041f000
  100053ed4  ldrsw   x8, [x8, #0xadc]                         ; ivar offset ADProjectile.soundsPrefix (+0x18)
  100053ed8  add     x0, x19, x8
  100053edc  mov     x1, #0
  100053ee0  bl      _objc_storeStrong
  100053ee4  adrp    x8, #0x10041f000
  100053ee8  ldrsw   x8, [x8, #0xac0]                         ; ivar offset ADProjectile.movingSound (+0x10)
  100053eec  add     x0, x19, x8
  100053ef0  mov     x1, #0
  100053ef4  bl      _objc_storeStrong
  100053ef8  mov     x1, #0
  100053efc  adrp    x8, #0x10041f000
  100053f00  ldrsw   x8, [x8, #0xaac]                         ; ivar offset ADProjectile.playlist (+0x8)
  100053f04  add     x0, x19, x8
  100053f08  ldp     x29, x30, [sp, #0x10]
  100053f0c  ldp     x20, x19, [sp], #0x20
  100053f10  b       _objc_storeStrong

; ======================================================================
; -[ADProjectile .cxx_construct]
; address 0x100053f14  size 4  kind objc
; ======================================================================
  100053f14  ret
