// unit ADAmbientManager — 34 functions
//   0x100097e64     152  +[ADAmbientManager sharedAmbiantManager]
//   0x100097efc     264  -[ADAmbientManager startWithRandomAmbient]
//   0x100098004    1188  -[ADAmbientManager startWithambient:gain:]
//   0x1000984a8     608  -[ADAmbientManager startWithambient:gain:]_block_invoke
//   0x100098708       8  sub_100098708
//   0x100098710       8  sub_100098710
//   0x100098718     224  -[ADAmbientManager startBaseSound]
//   0x1000987f8     132  -[ADAmbientManager randomPositionAtDistance:]
//   0x10009887c     760  -[ADAmbientManager update:]
//   0x100098b74     156  -[ADAmbientManager randomPosition]
//   0x100098c10     304  -[ADAmbientManager stopAmbient]
//   0x100098d40     120  -[ADAmbientManager randomiseNextStormTime]
//   0x100098db8     164  -[ADAmbientManager playThunder]
//   0x100098e5c     236  -[ADAmbientManager initEnemiesAmbiant]
//   0x100098f48      32  -[ADAmbientManager enemyWithAmbiantNameAppeared:]
//   0x100098f68      32  -[ADAmbientManager enemyWithAmbiantNameKilled:]
//   0x100098f88      32  -[ADAmbientManager brickWithAmbiantStarted:]
//   0x100098fa8      32  -[ADAmbientManager brickWithAmbiantCleared:]
//   0x100098fc8     380  -[ADAmbientManager playEnemyAmbiantWithName:forceStop:]
//   0x100099144      28  -[ADAmbientManager stopAmbiant]
//   0x100099160     660  -[ADAmbientManager enemyWithCurrentAmbiantIsAlive]
//   0x1000993f4      80  -[ADAmbientManager stopEnemiesAmbientAndResetCount]
//   0x100099444    1252  -[ADAmbientManager checkAmbiant]
//   0x100099928     192  -[ADAmbientManager pause]
//   0x1000999e8     132  -[ADAmbientManager resume]
//   0x100099a6c      32  -[ADAmbientManager gameplayViewController]
//   0x100099a8c      20  -[ADAmbientManager setGameplayViewController:]
//   0x100099aa0      16  -[ADAmbientManager playlist]
//   0x100099ab0      56  -[ADAmbientManager setPlaylist:]
//   0x100099ae8      16  -[ADAmbientManager stormPLaylist]
//   0x100099af8      56  -[ADAmbientManager setStormPLaylist:]
//   0x100099b30      16  -[ADAmbientManager ambient_sound]
//   0x100099b40      56  -[ADAmbientManager setAmbient_sound:]
//   0x100099b78     240  -[ADAmbientManager .cxx_destruct]

; ======================================================================
; +[ADAmbientManager sharedAmbiantManager]
; address 0x100097e64  size 152  kind objc
; ======================================================================
  100097e64  stp     x20, x19, [sp, #-0x20]!
  100097e68  stp     x29, x30, [sp, #0x10]
  100097e6c  add     x29, sp, #0x10
  100097e70  bl      _objc_retain
  100097e74  mov     x19, x0
  100097e78  bl      _objc_sync_enter                         ; objc_sync_enter(ADAmbientManager)
  100097e7c  adrp    x20, #0x10042d000
  100097e80  ldr     x8, [x20, #0xa20]                        ; load g_10042da20
  100097e84  cbnz    x8, loc_100097ec0                        ; if (g_10042da20 != 0)
  100097e88  adrp    x8, #0x10041e000
  100097e8c  ldr     x0, [x8, #0x1e0]                         ; class ADAmbientManager
  100097e90  adrp    x8, #0x100416000
  100097e94  nop
  100097e98  ldr     x1, [x8, #0xac8]
  100097e9c  bl      _objc_msgSend                            ; [ADAmbientManager alloc]
  100097ea0  adrp    x8, #0x100416000
  100097ea4  nop
  100097ea8  ldr     x1, [x8, #0xab8]
  100097eac  bl      _objc_msgSend                            ; [[ADAmbientManager alloc] init]
  100097eb0  ldr     x8, [x20, #0xa20]                        ; load g_10042da20
  100097eb4  str     x0, [x20, #0xa20]                        ; store g_10042da20 = [[ADAmbientManager alloc] init]
  100097eb8  mov     x0, x8
  100097ebc  bl      _objc_release
loc_100097ec0:
  100097ec0  mov     x0, x19
  100097ec4  bl      _objc_sync_exit                          ; objc_sync_exit(ADAmbientManager)
  100097ec8  mov     x0, x19
  100097ecc  bl      _objc_release
  100097ed0  ldr     x0, [x20, #0xa20]                        ; load g_10042da20
  100097ed4  ldp     x29, x30, [sp, #0x10]
  100097ed8  ldp     x20, x19, [sp], #0x20
  100097edc  b       _objc_retainAutoreleaseReturnValue
  100097ee0  mov     x20, x0
  100097ee4  mov     x0, x19
  100097ee8  bl      _objc_sync_exit                          ; objc_sync_exit()
  100097eec  mov     x0, x19
  100097ef0  bl      _objc_release
  100097ef4  mov     x0, x20
  100097ef8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager startWithRandomAmbient]
; address 0x100097efc  size 264  kind objc
; ======================================================================
  100097efc  stp     x22, x21, [sp, #-0x30]!
  100097f00  stp     x20, x19, [sp, #0x10]
  100097f04  stp     x29, x30, [sp, #0x20]
  100097f08  add     x29, sp, #0x20
  100097f0c  sub     sp, sp, #0x20
  100097f10  mov     x20, x0
  100097f14  adrp    x8, #0x10041d000
  100097f18  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100097f1c  adrp    x8, #0x100417000
  100097f20  nop
  100097f24  ldr     x1, [x8, #0xc0]
  100097f28  adrp    x8, #0x1003c0000
  100097f2c  add     x8, x8, #0x210                           ; @"ambient_foundry"
  100097f30  adrp    x9, #0x1003c0000
  100097f34  add     x9, x9, #0x1f0                           ; @"ambient_ghosttown"
  100097f38  stp     x8, xzr, [sp, #8]
  100097f3c  str     x9, [sp]
  100097f40  adrp    x2, #0x1003c0000
  100097f44  add     x2, x2, #0x1d0                           ; @"ambient_ruins"
  100097f48  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"ambient_ruins", @"ambient_ghosttown", @"ambient_foundry", nil]
  100097f4c  mov     x29, x29
  100097f50  bl      _objc_retainAutoreleasedReturnValue
  100097f54  mov     x19, x0
  100097f58  bl      _rand                                    ; rand()
  100097f5c  mov     x21, x0
  100097f60  adrp    x8, #0x100416000
  100097f64  nop
  100097f68  ldr     x1, [x8, #0xe30]
  100097f6c  mov     x0, x19
  100097f70  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:@"ambient_ruins", @"ambient_ghosttown", @"ambient_foundry", nil] count]
  100097f74  sxtw    x8, w21
  100097f78  udiv    x9, x8, x0                               ; t1 = (rand() / [[NSArray arrayWithObjects:@"ambient_ruins", @"ambient_ghosttown", @"ambient_foundry", nil] count])
  100097f7c  msub    x2, x9, x0, x8                           ; t2 = (rand() - t1 * [[NSArray arrayWithObjects:@"ambient_ruins", @"ambient_ghosttown", @"ambient_foundry", nil] count])
  100097f80  adrp    x8, #0x100416000
  100097f84  nop
  100097f88  ldr     x1, [x8, #0xc30]
  100097f8c  mov     x0, x19
  100097f90  bl      _objc_msgSend                            ; [[NSArray arrayWithObjects:@"ambient_ruins", @"ambient_ghosttown", @"ambient_foundry", nil] objectAtIndex:t2]
  100097f94  mov     x29, x29
  100097f98  bl      _objc_retainAutoreleasedReturnValue
  100097f9c  mov     x21, x0
  100097fa0  adrp    x8, #0x10041a000
  100097fa4  nop
  100097fa8  ldr     x1, [x8, #0x100]
  100097fac  nop
  100097fb0  ldr     s0, #0x100181a14                         ; s0 = 0.600000024
  100097fb4  mov     x0, x20
  100097fb8  mov     x2, x21
  100097fbc  bl      _objc_msgSend                            ; [self startWithambient:[[NSArray arrayWithObjects:@"ambient_ruins", @"ambient_ghosttown", @"ambient_foundry", nil] objectAtIndex:t2] gain:0.6]
  100097fc0  mov     x0, x21
  100097fc4  bl      _objc_release
  100097fc8  mov     x0, x19
  100097fcc  sub     sp, x29, #0x20
  100097fd0  ldp     x29, x30, [sp, #0x20]
  100097fd4  ldp     x20, x19, [sp, #0x10]
  100097fd8  ldp     x22, x21, [sp], #0x30
  100097fdc  b       _objc_release
  100097fe0  mov     x20, x0
  100097fe4  b       loc_100097ff4
  100097fe8  mov     x20, x0
  100097fec  mov     x0, x21
  100097ff0  bl      _objc_release
loc_100097ff4:
  100097ff4  mov     x0, x19
  100097ff8  bl      _objc_release
  100097ffc  mov     x0, x20
  100098000  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager startWithambient:gain:]
; address 0x100098004  size 1188  kind objc
; ======================================================================
  100098004  stp     d9, d8, [sp, #-0x40]!
  100098008  stp     x22, x21, [sp, #0x10]
  10009800c  stp     x20, x19, [sp, #0x20]
  100098010  stp     x29, x30, [sp, #0x30]
  100098014  add     x29, sp, #0x30
  100098018  sub     sp, sp, #0x40
  10009801c  mov     v8.16b, v0.16b
  100098020  mov     x20, x0
  100098024  mov     x0, x2
  100098028  bl      _objc_retain
  10009802c  mov     x19, x0
  100098030  adrp    x8, #0x10041e000
  100098034  ldr     x0, [x8]                                 ; class ADGameModifiers
  100098038  adrp    x8, #0x100417000
  10009803c  nop
  100098040  ldr     x1, [x8, #0x510]
  100098044  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  100098048  mov     x29, x29
  10009804c  bl      _objc_retainAutoreleasedReturnValue
  100098050  mov     x21, x0
  100098054  adrp    x8, #0x10041a000
  100098058  nop
  10009805c  ldr     x1, [x8, #0x108]
  100098060  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] storm]
  100098064  tbz     w0, #0, loc_100098074                    ; if (!([[ADGameModifiers sharedModifiers] storm] & 1))
  100098068  mov     x0, x21
  10009806c  bl      _objc_release
  100098070  b       loc_1000980a0
loc_100098074:
  100098074  adrp    x8, #0x100416000
  100098078  nop
  10009807c  ldr     x1, [x8, #0xf58]
  100098080  adrp    x2, #0x1003c0000
  100098084  add     x2, x2, #0x230                           ; @"ambient_storm"
  100098088  mov     x0, x19
  10009808c  bl      _objc_msgSend                            ; [arg1 isEqualToString:@"ambient_storm"]
  100098090  mov     x22, x0
  100098094  mov     x0, x21
  100098098  bl      _objc_release
  10009809c  tbz     w22, #0, loc_1000982b0                   ; if (!([arg1 isEqualToString:@"ambient_storm"] & 1))
loc_1000980a0:
  1000980a0  adrp    x8, #0x10041d000
  1000980a4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000980a8  adrp    x8, #0x100417000
  1000980ac  nop
  1000980b0  ldr     x1, [x8, #0x4f0]
  1000980b4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000980b8  mov     x29, x29
  1000980bc  bl      _objc_retainAutoreleasedReturnValue
  1000980c0  mov     x21, x0
  1000980c4  adrp    x8, #0x100417000
  1000980c8  nop
  1000980cc  ldr     x1, [x8, #0x4f8]
  1000980d0  adrp    x2, #0x1003c0000
  1000980d4  add     x2, x2, #0x230                           ; @"ambient_storm"
  1000980d8  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"ambient_storm"]
  1000980dc  mov     x29, x29
  1000980e0  bl      _objc_retainAutoreleasedReturnValue
  1000980e4  mov     x22, x0
  1000980e8  adrp    x8, #0x10041a000
  1000980ec  nop
  1000980f0  ldr     x1, [x8, #0x110]
  1000980f4  mov     x0, x20
  1000980f8  mov     x2, x22
  1000980fc  bl      _objc_msgSend                            ; [self setStormPLaylist:[[S3DEngine engine] playListWithName:@"ambient_storm"]]
  100098100  mov     x0, x22
  100098104  bl      _objc_release
  100098108  mov     x0, x21
  10009810c  bl      _objc_release
  100098110  adrp    x8, #0x10041a000
  100098114  nop
  100098118  ldr     x21, [x8, #0x118]
  10009811c  mov     x0, x20
  100098120  mov     x1, x21
  100098124  bl      _objc_msgSend                            ; [self stormPLaylist]
  100098128  mov     x29, x29
  10009812c  bl      _objc_retainAutoreleasedReturnValue
  100098130  mov     x22, x0
  100098134  adrp    x8, #0x100417000
  100098138  nop
  10009813c  ldr     x1, [x8, #0x508]
  100098140  bl      _objc_msgSend                            ; [[self stormPLaylist] activate]
  100098144  mov     x0, x22
  100098148  bl      _objc_release
  10009814c  mov     x0, x20
  100098150  mov     x1, x21
  100098154  bl      _objc_msgSend                            ; [self stormPLaylist]
  100098158  mov     x29, x29
  10009815c  bl      _objc_retainAutoreleasedReturnValue
  100098160  mov     x21, x0
  100098164  adrp    x8, #0x100416000
  100098168  nop
  10009816c  ldr     x1, [x8, #0xca0]
  100098170  adrp    x2, #0x1003c0000
  100098174  add     x2, x2, #0x250                           ; @"ambient"
  100098178  bl      _objc_msgSend                            ; [[self stormPLaylist] anySoundContaining:@"ambient"]
  10009817c  mov     x29, x29
  100098180  bl      _objc_retainAutoreleasedReturnValue
  100098184  mov     x22, x0
  100098188  adrp    x8, #0x10041a000
  10009818c  nop
  100098190  ldr     x1, [x8, #0x120]
  100098194  mov     x0, x20
  100098198  mov     x2, x22
  10009819c  bl      _objc_msgSend                            ; [self setAmbient_sound:[[self stormPLaylist] anySoundContaining:@"ambient"]]
  1000981a0  mov     x0, x22
  1000981a4  bl      _objc_release
  1000981a8  mov     x0, x21
  1000981ac  bl      _objc_release
  1000981b0  adrp    x8, #0x10041a000
  1000981b4  add     x8, x8, #0x128                           ; &@selector(ambient_sound)
  1000981b8  ldr     x21, [x8]
  1000981bc  fcmp    s8, #0.0
  1000981c0  b.eq    loc_1000981f8                            ; if (arg2 == 0.0)
  1000981c4  mov     x0, x20
  1000981c8  mov     x1, x21
  1000981cc  bl      _objc_msgSend                            ; [self ambient_sound]
  1000981d0  mov     x29, x29
  1000981d4  bl      _objc_retainAutoreleasedReturnValue
  1000981d8  mov     x22, x0
  1000981dc  adrp    x8, #0x100416000
  1000981e0  nop
  1000981e4  ldr     x1, [x8, #0xcb0]
  1000981e8  mov     v0.16b, v8.16b
  1000981ec  bl      _objc_msgSend                            ; [[self ambient_sound] setGain:arg2]
  1000981f0  b       loc_100098228
  1000981f4  b       loc_100098450
loc_1000981f8:
  1000981f8  mov     x0, x20
  1000981fc  mov     x1, x21
  100098200  bl      _objc_msgSend                            ; [self ambient_sound]
  100098204  mov     x29, x29
  100098208  bl      _objc_retainAutoreleasedReturnValue
  10009820c  mov     x22, x0
  100098210  adrp    x8, #0x100416000
  100098214  nop
  100098218  ldr     x1, [x8, #0xcb0]
  10009821c  nop
  100098220  ldr     s0, #0x100181a14                         ; s0 = 0.600000024
  100098224  bl      _objc_msgSend                            ; [[self ambient_sound] setGain:0.6]
loc_100098228:
  100098228  mov     x0, x22
  10009822c  bl      _objc_release
  100098230  mov     x0, x20
  100098234  mov     x1, x21
  100098238  bl      _objc_msgSend                            ; [self ambient_sound]
  10009823c  mov     x29, x29
  100098240  bl      _objc_retainAutoreleasedReturnValue
  100098244  mov     x22, x0
  100098248  adrp    x8, #0x100419000
  10009824c  nop
  100098250  ldr     x1, [x8, #0xe08]
  100098254  mov     w2, #1
  100098258  bl      _objc_msgSend                            ; [[self ambient_sound] setStream:1]
  10009825c  mov     x0, x22
  100098260  bl      _objc_release
  100098264  mov     x0, x20
  100098268  mov     x1, x21
  10009826c  bl      _objc_msgSend                            ; [self ambient_sound]
  100098270  mov     x29, x29
  100098274  bl      _objc_retainAutoreleasedReturnValue
  100098278  mov     x21, x0
  10009827c  adrp    x8, #0x100416000
  100098280  nop
  100098284  ldr     x1, [x8, #0xcb8]
  100098288  mov     w2, #1
  10009828c  bl      _objc_msgSend                            ; [[self ambient_sound] play:1]
  100098290  mov     x0, x21
  100098294  bl      _objc_release
  100098298  adrp    x8, #0x10041a000
  10009829c  nop
  1000982a0  ldr     x1, [x8, #0x130]
  1000982a4  mov     x0, x20
  1000982a8  bl      _objc_msgSend                            ; [self randomiseNextStormTime]
  1000982ac  b       loc_1000983c0
loc_1000982b0:
  1000982b0  adrp    x8, #0x10041f000
  1000982b4  ldrsw   x21, [x8, #0xff0]                        ; ivar offset ADAmbientManager.ambientName (+0x8)
  1000982b8  mov     x0, x19
  1000982bc  bl      _objc_retain
  1000982c0  mov     x22, x0
  1000982c4  ldr     x0, [x20, x21]                           ; x0 = self->ambientName
  1000982c8  str     x22, [x20, x21]                          ; self->ambientName = arg1
  1000982cc  bl      _objc_release
  1000982d0  adrp    x8, #0x10041d000
  1000982d4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000982d8  adrp    x8, #0x100417000
  1000982dc  nop
  1000982e0  ldr     x1, [x8, #0x4f0]
  1000982e4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000982e8  mov     x29, x29
  1000982ec  bl      _objc_retainAutoreleasedReturnValue
  1000982f0  mov     x21, x0
  1000982f4  adrp    x8, #0x100417000
  1000982f8  nop
  1000982fc  ldr     x1, [x8, #0x4f8]
  100098300  mov     x2, x22
  100098304  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:arg1]
  100098308  mov     x29, x29
  10009830c  bl      _objc_retainAutoreleasedReturnValue
  100098310  mov     x22, x0
  100098314  adrp    x8, #0x100417000
  100098318  nop
  10009831c  ldr     x1, [x8, #0x500]
  100098320  mov     x0, x20
  100098324  mov     x2, x22
  100098328  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:arg1]]
  10009832c  mov     x0, x22
  100098330  bl      _objc_release
  100098334  mov     x0, x21
  100098338  bl      _objc_release
  10009833c  adrp    x8, #0x100416000
  100098340  nop
  100098344  ldr     x1, [x8, #0xc98]
  100098348  mov     x0, x20
  10009834c  bl      _objc_msgSend                            ; [self playlist]
  100098350  mov     x29, x29
  100098354  bl      _objc_retainAutoreleasedReturnValue
  100098358  mov     x21, x0
  10009835c  adrp    x8, #0x1003b0000
  100098360  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100098364  mov     w9, #-0x3e000000
  100098368  adr     x10, #0x1000984a8                        ; &-[ADAmbientManager startWithambient:gain:]_block_invoke
  10009836c  nop
  100098370  str     x8, [sp, #8]
  100098374  stp     w9, wzr, [sp, #0x10]
  100098378  adrp    x8, #0x1003b2000
  10009837c  add     x8, x8, #0x1f0                           ; &d_1003b21f0
  100098380  stp     x10, x8, [sp, #0x18]
  100098384  str     x20, [sp, #0x30]
  100098388  mov     x0, x20
  10009838c  bl      _objc_retain
  100098390  str     x0, [sp, #0x28]
  100098394  str     s8, [sp, #0x38]
  100098398  adrp    x8, #0x100419000
  10009839c  nop
  1000983a0  ldr     x1, [x8, #0x408]
  1000983a4  add     x2, sp, #8
  1000983a8  mov     x0, x21
  1000983ac  bl      _objc_msgSend                            ; [[self playlist] activate:^{-[ADAmbientManager startWithambient:gain:]_block_invoke captures +0x20=self, +0x28=self, +0x30=arg2}]
  1000983b0  mov     x0, x21
  1000983b4  bl      _objc_release
  1000983b8  ldr     x0, [sp, #0x28]
  1000983bc  bl      _objc_release
loc_1000983c0:
  1000983c0  adrp    x8, #0x10041a000
  1000983c4  nop
  1000983c8  ldr     x1, [x8, #0x140]
  1000983cc  mov     x0, x20
  1000983d0  bl      _objc_msgSend                            ; [self initEnemiesAmbiant]
  1000983d4  bl      _arc4random                              ; arc4random()
  1000983d8  ubfx    x8, x0, #0, #0x20
  1000983dc  mov     w9, #-0x33340000
  1000983e0  movk    w9, #0xcccd
  1000983e4  mul     x8, x8, x9
  1000983e8  lsr     x8, x8, #0x24
  1000983ec  mov     w9, #0x14
  1000983f0  msub    w8, w8, w9, w0
  1000983f4  add     w8, w8, #0xa
  1000983f8  ucvtf   s0, w8
  1000983fc  adrp    x8, #0x10041f000
  100098400  ldrsw   x8, [x8, #0xff4]                         ; ivar offset ADAmbientManager.scare_sound_timer (+0x28)
  100098404  str     s0, [x20, x8]                            ; self->scare_sound_timer = (float)((arc4random() - ((x8 * 0xcccccccd) >>> 36) * 20) + 10)
  100098408  mov     x0, x19
  10009840c  bl      _objc_release
  100098410  sub     sp, x29, #0x30
  100098414  ldp     x29, x30, [sp, #0x30]
  100098418  ldp     x20, x19, [sp, #0x20]
  10009841c  ldp     x22, x21, [sp, #0x10]
  100098420  ldp     d9, d8, [sp], #0x40
  100098424  ret
loc_100098428:
  100098428  mov     x20, x0
  10009842c  b       loc_10009847c
  100098430  b       loc_100098460
  100098434  b       loc_100098460
  100098438  b       loc_100098468
  10009843c  b       loc_100098450
  100098440  b       loc_100098460
  100098444  b       loc_100098468
  100098448  b       loc_100098450
  10009844c  b       loc_100098460
loc_100098450:
  100098450  mov     x20, x0
  100098454  mov     x0, x22
  100098458  bl      _objc_release
  10009845c  b       loc_10009847c
loc_100098460:
  100098460  mov     x20, x0
  100098464  b       loc_100098474
loc_100098468:
  100098468  mov     x20, x0
  10009846c  mov     x0, x22
  100098470  bl      _objc_release
loc_100098474:
  100098474  mov     x0, x21
  100098478  bl      _objc_release
loc_10009847c:
  10009847c  mov     x0, x19
  100098480  bl      _objc_release
  100098484  mov     x0, x20
  100098488  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009848c  b       loc_100098428
  100098490  mov     x20, x0
  100098494  mov     x0, x21
  100098498  bl      _objc_release
  10009849c  ldr     x0, [sp, #0x28]
  1000984a0  bl      _objc_release
  1000984a4  b       loc_10009847c

; ======================================================================
; -[ADAmbientManager startWithambient:gain:]_block_invoke
; address 0x1000984a8  size 608  kind block
; ======================================================================
  1000984a8  stp     x22, x21, [sp, #-0x30]!
  1000984ac  stp     x20, x19, [sp, #0x10]
  1000984b0  stp     x29, x30, [sp, #0x20]
  1000984b4  add     x29, sp, #0x20
  1000984b8  mov     x19, x0
  1000984bc  ldp     x0, x21, [x19, #0x20]
  1000984c0  adrp    x8, #0x100416000
  1000984c4  nop
  1000984c8  ldr     x1, [x8, #0xc98]
  1000984cc  bl      _objc_msgSend                            ; [x0 playlist]
  1000984d0  mov     x29, x29
  1000984d4  bl      _objc_retainAutoreleasedReturnValue
  1000984d8  mov     x20, x0
  1000984dc  adrp    x8, #0x100416000
  1000984e0  nop
  1000984e4  ldr     x1, [x8, #0xca0]
  1000984e8  adrp    x2, #0x1003c0000
  1000984ec  add     x2, x2, #0x250                           ; @"ambient"
  1000984f0  bl      _objc_msgSend                            ; [[x0 playlist] anySoundContaining:@"ambient"]
  1000984f4  mov     x29, x29
  1000984f8  bl      _objc_retainAutoreleasedReturnValue
  1000984fc  mov     x22, x0
  100098500  adrp    x8, #0x10041a000
  100098504  nop
  100098508  ldr     x1, [x8, #0x120]
  10009850c  mov     x0, x21
  100098510  mov     x2, x22
  100098514  bl      _objc_msgSend                            ; [x0 setAmbient_sound:[[x0 playlist] anySoundContaining:@"ambient"]]
  100098518  mov     x0, x22
  10009851c  bl      _objc_release
  100098520  mov     x0, x20
  100098524  bl      _objc_release
  100098528  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  10009852c  adrp    x8, #0x10041a000
  100098530  nop
  100098534  ldr     x20, [x8, #0x128]
  100098538  mov     x1, x20
  10009853c  bl      _objc_msgSend                            ; [self ambient_sound]
  100098540  mov     x29, x29
  100098544  bl      _objc_retainAutoreleasedReturnValue
  100098548  mov     x21, x0
  10009854c  adrp    x8, #0x100416000
  100098550  nop
  100098554  ldr     x1, [x8, #0xca8]
  100098558  mov     w2, #0
  10009855c  bl      _objc_msgSend                            ; [[self ambient_sound] setSpatialized:0]
  100098560  mov     x0, x21
  100098564  bl      _objc_release
  100098568  ldr     s0, [x19, #0x30]                         ; s0 = captured arg2
  10009856c  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100098570  fcmp    s0, #0.0
  100098574  b.eq    loc_1000985a8                            ; if (arg2 == 0.0)
  100098578  mov     x1, x20
  10009857c  bl      _objc_msgSend                            ; [self ambient_sound]
  100098580  mov     x29, x29
  100098584  bl      _objc_retainAutoreleasedReturnValue
  100098588  mov     x21, x0
  10009858c  ldr     s0, [x19, #0x30]                         ; s0 = captured arg2
  100098590  adrp    x8, #0x100416000
  100098594  nop
  100098598  ldr     x1, [x8, #0xcb0]
  10009859c  bl      _objc_msgSend                            ; [[self ambient_sound] setGain:arg2]
  1000985a0  b       loc_1000985d4
  1000985a4  b       loc_1000986f4
loc_1000985a8:
  1000985a8  mov     x1, x20
  1000985ac  bl      _objc_msgSend                            ; [self ambient_sound]
  1000985b0  mov     x29, x29
  1000985b4  bl      _objc_retainAutoreleasedReturnValue
  1000985b8  mov     x21, x0
  1000985bc  adrp    x8, #0x100416000
  1000985c0  nop
  1000985c4  ldr     x1, [x8, #0xcb0]
  1000985c8  nop
  1000985cc  ldr     s0, #0x100181a14                         ; s0 = 0.600000024
  1000985d0  bl      _objc_msgSend                            ; [[self ambient_sound] setGain:0.6]
loc_1000985d4:
  1000985d4  mov     x0, x21
  1000985d8  bl      _objc_release
  1000985dc  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  1000985e0  mov     x1, x20
  1000985e4  bl      _objc_msgSend                            ; [self ambient_sound]
  1000985e8  mov     x29, x29
  1000985ec  bl      _objc_retainAutoreleasedReturnValue
  1000985f0  mov     x21, x0
  1000985f4  adrp    x8, #0x100419000
  1000985f8  nop
  1000985fc  ldr     x1, [x8, #0xe08]
  100098600  mov     w2, #1
  100098604  bl      _objc_msgSend                            ; [[self ambient_sound] setStream:1]
  100098608  mov     x0, x21
  10009860c  bl      _objc_release
  100098610  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100098614  mov     x1, x20
  100098618  bl      _objc_msgSend                            ; [self ambient_sound]
  10009861c  mov     x29, x29
  100098620  bl      _objc_retainAutoreleasedReturnValue
  100098624  mov     x20, x0
  100098628  adrp    x8, #0x100416000
  10009862c  nop
  100098630  ldr     x1, [x8, #0xcb8]
  100098634  mov     w2, #1
  100098638  bl      _objc_msgSend                            ; [[self ambient_sound] play:1]
  10009863c  mov     x0, x20
  100098640  bl      _objc_release
  100098644  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100098648  adrp    x8, #0x100417000
  10009864c  nop
  100098650  ldr     x20, [x8, #0xac0]
  100098654  mov     x1, x20
  100098658  bl      _objc_msgSend                            ; [self gameplayViewController]
  10009865c  mov     x29, x29
  100098660  bl      _objc_retainAutoreleasedReturnValue
  100098664  mov     x21, x0
  100098668  bl      _objc_release
  10009866c  cbz     x21, loc_1000986ac                       ; if ([self gameplayViewController] == 0)
  100098670  ldr     x0, [x19, #0x28]                         ; x0 = captured self
  100098674  mov     x1, x20
  100098678  bl      _objc_msgSend                            ; [self gameplayViewController]
  10009867c  mov     x29, x29
  100098680  bl      _objc_retainAutoreleasedReturnValue
  100098684  mov     x20, x0
  100098688  adrp    x8, #0x10041a000
  10009868c  nop
  100098690  ldr     x1, [x8, #0x138]
  100098694  bl      _objc_msgSend                            ; [[self gameplayViewController] ambiantManagerDidActivatePlaylist]
  100098698  mov     x0, x20
  10009869c  ldp     x29, x30, [sp, #0x20]
  1000986a0  ldp     x20, x19, [sp, #0x10]
  1000986a4  ldp     x22, x21, [sp], #0x30
  1000986a8  b       _objc_release
loc_1000986ac:
  1000986ac  ldp     x29, x30, [sp, #0x20]
  1000986b0  ldp     x20, x19, [sp, #0x10]
  1000986b4  ldp     x22, x21, [sp], #0x30
  1000986b8  ret
  1000986bc  mov     x19, x0
  1000986c0  b       loc_100098700
  1000986c4  b       loc_1000986e4
  1000986c8  mov     x19, x0
  1000986cc  mov     x0, x22
  1000986d0  bl      _objc_release
  1000986d4  b       loc_1000986e8
  1000986d8  b       loc_1000986f4
  1000986dc  b       loc_1000986f4
  1000986e0  b       loc_1000986e4
loc_1000986e4:
  1000986e4  mov     x19, x0
loc_1000986e8:
  1000986e8  mov     x0, x20
  1000986ec  bl      _objc_release
  1000986f0  b       loc_100098700
loc_1000986f4:
  1000986f4  mov     x19, x0
  1000986f8  mov     x0, x21
  1000986fc  bl      _objc_release
loc_100098700:
  100098700  mov     x0, x19
  100098704  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; sub_100098708
; address 0x100098708  size 8  kind sub
; ======================================================================
  100098708  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10009870c  b       _objc_retain

; ======================================================================
; sub_100098710
; address 0x100098710  size 8  kind sub
; ======================================================================
  100098710  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100098714  b       _objc_release

; ======================================================================
; -[ADAmbientManager startBaseSound]
; address 0x100098718  size 224  kind objc
; ======================================================================
  100098718  stp     x22, x21, [sp, #-0x30]!
  10009871c  stp     x20, x19, [sp, #0x10]
  100098720  stp     x29, x30, [sp, #0x20]
  100098724  add     x29, sp, #0x20
  100098728  mov     x19, x0
  10009872c  adrp    x8, #0x100416000
  100098730  nop
  100098734  ldr     x1, [x8, #0xc98]
  100098738  bl      _objc_msgSend                            ; [self playlist]
  10009873c  mov     x29, x29
  100098740  bl      _objc_retainAutoreleasedReturnValue
  100098744  mov     x20, x0
  100098748  adrp    x8, #0x100417000
  10009874c  nop
  100098750  ldr     x1, [x8, #0x5c0]
  100098754  adrp    x2, #0x1003c0000
  100098758  add     x2, x2, #0x270                           ; @"BASE_"
  10009875c  bl      _objc_msgSend                            ; [[self playlist] anySoundWihPrefix:@"BASE_"]
  100098760  mov     x29, x29
  100098764  bl      _objc_retainAutoreleasedReturnValue
  100098768  adrp    x8, #0x10041f000
  10009876c  ldrsw   x21, [x8, #0xff8]                        ; ivar offset ADAmbientManager.baseSound (+0x20)
  100098770  ldr     x8, [x19, x21]                           ; x8 = self->baseSound
  100098774  str     x0, [x19, x21]                           ; self->baseSound = [[self playlist] anySoundWihPrefix:@"BASE_"]
  100098778  mov     x0, x8
  10009877c  bl      _objc_release
  100098780  mov     x0, x20
  100098784  bl      _objc_release
  100098788  ldr     x0, [x19, x21]                           ; x0 = self->baseSound
  10009878c  adrp    x8, #0x100417000
  100098790  nop
  100098794  ldr     x1, [x8, #0x38]
  100098798  fmov    s0, #4.00000000
  10009879c  movi    v1.16b, #0
  1000987a0  movi    v2.16b, #0
  1000987a4  bl      _objc_msgSend                            ; [self->baseSound setPlanar:{4, 0, 0}]
  1000987a8  ldr     x0, [x19, x21]                           ; x0 = self->baseSound
  1000987ac  adrp    x8, #0x100416000
  1000987b0  nop
  1000987b4  ldr     x1, [x8, #0xca8]
  1000987b8  mov     w2, #1
  1000987bc  bl      _objc_msgSend                            ; [self->baseSound setSpatialized:1]
  1000987c0  ldr     x0, [x19, x21]                           ; x0 = self->baseSound
  1000987c4  adrp    x8, #0x100416000
  1000987c8  nop
  1000987cc  ldr     x1, [x8, #0xcb8]
  1000987d0  mov     w2, #1
  1000987d4  ldp     x29, x30, [sp, #0x20]
  1000987d8  ldp     x20, x19, [sp, #0x10]
  1000987dc  ldp     x22, x21, [sp], #0x30
  1000987e0  b       _objc_msgSend                            ; [self->baseSound play:1]
  1000987e4  mov     x19, x0
  1000987e8  mov     x0, x20
  1000987ec  bl      _objc_release
  1000987f0  mov     x0, x19
  1000987f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager randomPositionAtDistance:]
; address 0x1000987f8  size 132  kind objc
; ======================================================================
  1000987f8  stp     x20, x19, [sp, #-0x20]!
  1000987fc  stp     x29, x30, [sp, #0x10]
  100098800  add     x29, sp, #0x10
  100098804  mov     x19, x2
  100098808  bl      _rand                                    ; rand()
  10009880c  sxtw    x8, w0
  100098810  mov     x9, #-0x49f40001
  100098814  movk    x9, #0x60b7
  100098818  mul     x8, x8, x9
  10009881c  lsr     x8, x8, #0x20
  100098820  add     w8, w8, w0
  100098824  asr     w9, w8, #8
  100098828  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  10009882c  mov     w9, #0x168
  100098830  msub    w8, w8, w9, w0
  100098834  scvtf   s0, w8
  100098838  fcvt    d0, s0
  10009883c  nop
  100098840  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  100098844  fmul    d0, d0, d1
  100098848  nop
  10009884c  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  100098850  fdiv    d0, d0, d1
  100098854  fcvt    s0, d0
  100098858  bl      ___sincosf_stret                         ; d0 = sin((((float)(rand() - t1 * 360) * 3.14159) / 180)), d1 = cos((((float)(rand() - t1 * 360) * 3.14159) / 180))
  10009885c  scvtf   s2, w19
  100098860  fmul    s0, s2, s0
  100098864  fcvt    d0, s0
  100098868  fmul    s1, s2, s1
  10009886c  fcvt    d1, s1
  100098870  ldp     x29, x30, [sp, #0x10]
  100098874  ldp     x20, x19, [sp], #0x20
  100098878  ret

; ======================================================================
; -[ADAmbientManager update:]
; address 0x10009887c  size 760  kind objc
; ======================================================================
  10009887c  stp     d9, d8, [sp, #-0x50]!
  100098880  stp     x24, x23, [sp, #0x10]
  100098884  stp     x22, x21, [sp, #0x20]
  100098888  stp     x20, x19, [sp, #0x30]
  10009888c  stp     x29, x30, [sp, #0x40]
  100098890  add     x29, sp, #0x40
  100098894  mov     v8.16b, v0.16b
  100098898  mov     x19, x0
  10009889c  adrp    x8, #0x10041f000
  1000988a0  ldrsw   x24, [x8, #0xff4]                        ; ivar offset ADAmbientManager.scare_sound_timer (+0x28)
  1000988a4  ldr     s0, [x19, x24]                           ; s0 = self->scare_sound_timer
  1000988a8  fsub    s0, s0, s8
  1000988ac  str     s0, [x19, x24]                           ; self->scare_sound_timer = (self->scare_sound_timer - arg1)
  1000988b0  adrp    x8, #0x10041a000
  1000988b4  nop
  1000988b8  ldr     x22, [x8, #0x128]
  1000988bc  mov     x1, x22
  1000988c0  bl      _objc_msgSend                            ; [self ambient_sound]
  1000988c4  mov     x29, x29
  1000988c8  bl      _objc_retainAutoreleasedReturnValue
  1000988cc  mov     x20, x0
  1000988d0  adrp    x8, #0x100419000
  1000988d4  nop
  1000988d8  ldr     x1, [x8, #0x3e8]
  1000988dc  bl      _objc_msgSend                            ; [[self ambient_sound] key]
  1000988e0  mov     x29, x29
  1000988e4  bl      _objc_retainAutoreleasedReturnValue
  1000988e8  mov     x21, x0
  1000988ec  adrp    x8, #0x100416000
  1000988f0  nop
  1000988f4  ldr     x1, [x8, #0xf58]
  1000988f8  adrp    x2, #0x1003c0000
  1000988fc  add     x2, x2, #0x290                           ; @"storm_ambient"
  100098900  bl      _objc_msgSend                            ; [[[self ambient_sound] key] isEqualToString:@"storm_ambient"]
  100098904  cbz     w0, loc_1000989a8                        ; if ([[[self ambient_sound] key] isEqualToString:@"storm_ambient"] == 0)
  100098908  mov     x0, x19
  10009890c  mov     x1, x22
  100098910  bl      _objc_msgSend                            ; [self ambient_sound]
  100098914  mov     x29, x29
  100098918  bl      _objc_retainAutoreleasedReturnValue
  10009891c  mov     x22, x0
  100098920  adrp    x8, #0x100417000
  100098924  nop
  100098928  ldr     x1, [x8, #0x598]
  10009892c  bl      _objc_msgSend                            ; [[self ambient_sound] playing]
  100098930  mov     x23, x0
  100098934  mov     x0, x22
  100098938  bl      _objc_release
  10009893c  mov     x0, x21
  100098940  bl      _objc_release
  100098944  mov     x0, x20
  100098948  bl      _objc_release
  10009894c  cbz     w23, loc_1000989b8                       ; if ([[self ambient_sound] playing] == 0)
  100098950  adrp    x8, #0x10041f000
  100098954  ldrsw   x8, [x8, #0xffc]                         ; ivar offset ADAmbientManager.nextStormTime (+0x2c)
  100098958  ldr     s0, [x19, x8]                            ; s0 = self->nextStormTime
  10009895c  fsub    s0, s0, s8
  100098960  fcmp    s0, #0.0
  100098964  str     s0, [x19, x8]                            ; self->nextStormTime = (self->nextStormTime - arg1)
  100098968  b.pl    loc_100098b20                            ; if ((self->nextStormTime - arg1) >= (or unordered) 0.0)
  10009896c  adrp    x8, #0x10041a000
  100098970  nop
  100098974  ldr     x1, [x8, #0x130]
  100098978  mov     x0, x19
  10009897c  bl      _objc_msgSend                            ; [self randomiseNextStormTime]
  100098980  adrp    x8, #0x10041a000
  100098984  nop
  100098988  ldr     x1, [x8, #0x148]
  10009898c  mov     x0, x19
  100098990  ldp     x29, x30, [sp, #0x40]
  100098994  ldp     x20, x19, [sp, #0x30]
  100098998  ldp     x22, x21, [sp, #0x20]
  10009899c  ldp     x24, x23, [sp, #0x10]
  1000989a0  ldp     d9, d8, [sp], #0x50
  1000989a4  b       _objc_msgSend                            ; [self playThunder]
loc_1000989a8:
  1000989a8  mov     x0, x21
  1000989ac  bl      _objc_release
  1000989b0  mov     x0, x20
  1000989b4  bl      _objc_release
loc_1000989b8:
  1000989b8  ldr     s0, [x19, x24]                           ; s0 = self->scare_sound_timer
  1000989bc  fcmp    s0, #0.0
  1000989c0  b.pl    loc_100098b20                            ; if (self->scare_sound_timer >= (or unordered) 0.0)
  1000989c4  adrp    x8, #0x10041e000
  1000989c8  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000989cc  adrp    x8, #0x100417000
  1000989d0  nop
  1000989d4  ldr     x1, [x8, #0xaa8]
  1000989d8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000989dc  mov     x29, x29
  1000989e0  bl      _objc_retainAutoreleasedReturnValue
  1000989e4  mov     x20, x0
  1000989e8  adrp    x8, #0x10041a000
  1000989ec  nop
  1000989f0  ldr     x1, [x8, #0x150]
  1000989f4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] numberOfActiveObjectsOnScene]
  1000989f8  mov     x21, x0
  1000989fc  mov     x0, x20
  100098a00  bl      _objc_release
  100098a04  cmp     w21, #3
  100098a08  b.gt    loc_100098aec                            ; if ([[ADBrickManager sharedBrickManager] numberOfActiveObjectsOnScene] > 3)
  100098a0c  adrp    x8, #0x10041a000
  100098a10  nop
  100098a14  ldr     x1, [x8, #0x158]
  100098a18  mov     x0, x19
  100098a1c  bl      _objc_msgSend                            ; [self randomPosition]
  100098a20  mov     v8.16b, v0.16b
  100098a24  mov     v9.16b, v1.16b
  100098a28  adrp    x8, #0x100416000
  100098a2c  nop
  100098a30  ldr     x1, [x8, #0xc98]
  100098a34  mov     x0, x19
  100098a38  bl      _objc_msgSend                            ; [self playlist]
  100098a3c  mov     x29, x29
  100098a40  bl      _objc_retainAutoreleasedReturnValue
  100098a44  mov     x20, x0
  100098a48  adrp    x8, #0x100416000
  100098a4c  nop
  100098a50  ldr     x1, [x8, #0xca0]
  100098a54  adrp    x2, #0x1003c0000
  100098a58  add     x2, x2, #0x2b0                           ; @"RANDOM_"
  100098a5c  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"RANDOM_"]
  100098a60  bl      _objc_retain
  100098a64  adrp    x8, #0x100420000
  100098a68  ldrsw   x21, [x8]                                ; ivar offset ADAmbientManager.scare_sound (+0x10)
  100098a6c  ldr     x8, [x19, x21]                           ; x8 = self->scare_sound
  100098a70  str     x0, [x19, x21]                           ; self->scare_sound = [[self playlist] anySoundContaining:@"RANDOM_"]
  100098a74  mov     x0, x8
  100098a78  bl      _objc_release
  100098a7c  mov     x0, x20
  100098a80  bl      _objc_release
  100098a84  ldr     x0, [x19, x21]                           ; x0 = self->scare_sound
  100098a88  adrp    x8, #0x100416000
  100098a8c  nop
  100098a90  ldr     x1, [x8, #0xca8]
  100098a94  mov     w2, #1
  100098a98  bl      _objc_msgSend                            ; [self->scare_sound setSpatialized:1]
  100098a9c  ldr     x0, [x19, x21]                           ; x0 = self->scare_sound
  100098aa0  fcvt    s0, d8
  100098aa4  fcvt    s1, d9
  100098aa8  adrp    x8, #0x100417000
  100098aac  nop
  100098ab0  ldr     x1, [x8, #0x38]
  100098ab4  movi    v2.16b, #0
  100098ab8  bl      _objc_msgSend                            ; [self->scare_sound setPlanar:{[self randomPosition].0, [self randomPosition].1, 0}]
  100098abc  ldr     x0, [x19, x21]                           ; x0 = self->scare_sound
  100098ac0  adrp    x8, #0x100416000
  100098ac4  nop
  100098ac8  ldr     x1, [x8, #0xcb0]
  100098acc  fmov    s0, #3.00000000
  100098ad0  bl      _objc_msgSend                            ; [self->scare_sound setGain:3]
  100098ad4  ldr     x0, [x19, x21]                           ; x0 = self->scare_sound
  100098ad8  adrp    x8, #0x100416000
  100098adc  nop
  100098ae0  ldr     x1, [x8, #0xcb8]
  100098ae4  mov     w2, #0
  100098ae8  bl      _objc_msgSend                            ; [self->scare_sound play:0]
loc_100098aec:
  100098aec  bl      _rand                                    ; rand()
  100098af0  sxtw    x8, w0
  100098af4  mov     w9, #0x66660000
  100098af8  movk    w9, #0x6667
  100098afc  mul     x8, x8, x9
  100098b00  lsr     x9, x8, #0x3f
  100098b04  asr     x8, x8, #0x22
  100098b08  add     w8, w8, w9
  100098b0c  mov     w9, #0xa
  100098b10  msub    w8, w8, w9, w0
  100098b14  add     w8, w8, #0xf
  100098b18  scvtf   s0, w8                                   ; t1 = (float)((rand() - (((rand() * 0x66666667) >> 34) + ((rand() * 0x66666667) >>> 63)) * 10) + 15)
  100098b1c  str     s0, [x19, x24]                           ; self->scare_sound_timer = t1
loc_100098b20:
  100098b20  ldp     x29, x30, [sp, #0x40]
  100098b24  ldp     x20, x19, [sp, #0x30]
  100098b28  ldp     x22, x21, [sp, #0x20]
  100098b2c  ldp     x24, x23, [sp, #0x10]
  100098b30  ldp     d9, d8, [sp], #0x50
  100098b34  ret
  100098b38  mov     x19, x0
  100098b3c  b       loc_100098b50
  100098b40  b       loc_100098b60
  100098b44  mov     x19, x0
  100098b48  mov     x0, x22
  100098b4c  bl      _objc_release
loc_100098b50:
  100098b50  mov     x0, x21
  100098b54  bl      _objc_release
  100098b58  b       loc_100098b64
  100098b5c  b       loc_100098b60
loc_100098b60:
  100098b60  mov     x19, x0
loc_100098b64:
  100098b64  mov     x0, x20
  100098b68  bl      _objc_release
  100098b6c  mov     x0, x19
  100098b70  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager randomPosition]
; address 0x100098b74  size 156  kind objc
; ======================================================================
  100098b74  stp     d9, d8, [sp, #-0x20]!
  100098b78  stp     x29, x30, [sp, #0x10]
  100098b7c  add     x29, sp, #0x10
  100098b80  bl      _arc4random                              ; arc4random()
  100098b84  lsr     w8, w0, #3
  100098b88  mov     w9, #0x16c10000
  100098b8c  movk    w9, #0x6c17
  100098b90  mul     x8, x8, x9
  100098b94  lsr     x8, x8, #0x22
  100098b98  mov     w9, #0x168
  100098b9c  msub    w8, w8, w9, w0
  100098ba0  ucvtf   s0, w8
  100098ba4  fcvt    d0, s0
  100098ba8  nop
  100098bac  ldr     d1, #0x1001819e8                         ; d1 = 3.14159265
  100098bb0  fmul    d0, d0, d1
  100098bb4  nop
  100098bb8  ldr     d1, #0x1001819f0                         ; d1 = 180.0
  100098bbc  fdiv    d0, d0, d1                               ; t1 = (((float)(arc4random() - (((arc4random() >>> 3) * 0x16c16c17) >>> 34) * 360) * 3.14159) / 180)
  100098bc0  fcvt    s8, d0
  100098bc4  bl      _arc4random                              ; arc4random()
  100098bc8  ubfx    x8, x0, #0, #0x20
  100098bcc  mov     w9, #-0x55560000
  100098bd0  movk    w9, #0xaaab
  100098bd4  mul     x8, x8, x9
  100098bd8  lsr     x8, x8, #0x21
  100098bdc  add     w8, w8, w8, lsl #1
  100098be0  sub     w8, w0, w8
  100098be4  add     w8, w8, #3
  100098be8  ucvtf   s9, w8                                   ; t2 = (float)((arc4random() - (((x8 * 0xaaaaaaab) >>> 33) + (((x8 * 0xaaaaaaab) >>> 33) << 1))) + 3)
  100098bec  mov     v0.16b, v8.16b
  100098bf0  bl      ___sincosf_stret                         ; d0 = sin(t1), d1 = cos(t1)
  100098bf4  fmul    s0, s0, s9
  100098bf8  fcvt    d0, s0
  100098bfc  fmul    s1, s1, s9
  100098c00  fcvt    d1, s1
  100098c04  ldp     x29, x30, [sp, #0x10]
  100098c08  ldp     d9, d8, [sp], #0x20
  100098c0c  ret

; ======================================================================
; -[ADAmbientManager stopAmbient]
; address 0x100098c10  size 304  kind objc
; ======================================================================
  100098c10  stp     x22, x21, [sp, #-0x30]!
  100098c14  stp     x20, x19, [sp, #0x10]
  100098c18  stp     x29, x30, [sp, #0x20]
  100098c1c  add     x29, sp, #0x20
  100098c20  mov     x19, x0
  100098c24  adrp    x8, #0x10041a000
  100098c28  nop
  100098c2c  ldr     x1, [x8, #0x128]
  100098c30  bl      _objc_msgSend                            ; [self ambient_sound]
  100098c34  mov     x29, x29
  100098c38  bl      _objc_retainAutoreleasedReturnValue
  100098c3c  mov     x20, x0
  100098c40  adrp    x8, #0x100417000
  100098c44  nop
  100098c48  ldr     x1, [x8, #0x568]
  100098c4c  bl      _objc_msgSend                            ; [[self ambient_sound] stop]
  100098c50  mov     x0, x20
  100098c54  bl      _objc_release
  100098c58  adrp    x8, #0x10041a000
  100098c5c  nop
  100098c60  ldr     x20, [x8, #0x118]
  100098c64  mov     x0, x19
  100098c68  mov     x1, x20
  100098c6c  bl      _objc_msgSend                            ; [self stormPLaylist]
  100098c70  mov     x29, x29
  100098c74  bl      _objc_retainAutoreleasedReturnValue
  100098c78  mov     x21, x0
  100098c7c  bl      _objc_release
  100098c80  cbz     x21, loc_100098cb4                       ; if ([self stormPLaylist] == 0)
  100098c84  mov     x0, x19
  100098c88  mov     x1, x20
  100098c8c  bl      _objc_msgSend                            ; [self stormPLaylist]
  100098c90  mov     x29, x29
  100098c94  bl      _objc_retainAutoreleasedReturnValue
  100098c98  mov     x20, x0
  100098c9c  adrp    x8, #0x100417000
  100098ca0  nop
  100098ca4  ldr     x1, [x8, #0x618]
  100098ca8  bl      _objc_msgSend                            ; [[self stormPLaylist] deactivate]
  100098cac  mov     x0, x20
  100098cb0  bl      _objc_release
loc_100098cb4:
  100098cb4  adrp    x8, #0x10041a000
  100098cb8  nop
  100098cbc  ldr     x1, [x8, #0x160]
  100098cc0  mov     x0, x19
  100098cc4  bl      _objc_msgSend                            ; [self stopEnemiesAmbientAndResetCount]
  100098cc8  adrp    x8, #0x100416000
  100098ccc  nop
  100098cd0  ldr     x1, [x8, #0xc98]
  100098cd4  mov     x0, x19
  100098cd8  bl      _objc_msgSend                            ; [self playlist]
  100098cdc  mov     x29, x29
  100098ce0  bl      _objc_retainAutoreleasedReturnValue
  100098ce4  mov     x20, x0
  100098ce8  adrp    x8, #0x100417000
  100098cec  nop
  100098cf0  ldr     x21, [x8, #0x618]
  100098cf4  mov     x1, x21
  100098cf8  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  100098cfc  mov     x0, x20
  100098d00  bl      _objc_release
  100098d04  adrp    x8, #0x100420000
  100098d08  ldrsw   x8, [x8, #4]                             ; ivar offset ADAmbientManager.enemiesPlaylist (+0x30)
  100098d0c  ldr     x0, [x19, x8]                            ; x0 = self->enemiesPlaylist
  100098d10  mov     x1, x21
  100098d14  ldp     x29, x30, [sp, #0x20]
  100098d18  ldp     x20, x19, [sp, #0x10]
  100098d1c  ldp     x22, x21, [sp], #0x30
  100098d20  b       _objc_msgSend                            ; [self->enemiesPlaylist deactivate]
  100098d24  b       loc_100098d2c
  100098d28  b       loc_100098d2c
loc_100098d2c:
  100098d2c  mov     x19, x0
  100098d30  mov     x0, x20
  100098d34  bl      _objc_release
  100098d38  mov     x0, x19
  100098d3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager randomiseNextStormTime]
; address 0x100098d40  size 120  kind objc
; ======================================================================
  100098d40  stp     x20, x19, [sp, #-0x20]!
  100098d44  stp     x29, x30, [sp, #0x10]
  100098d48  add     x29, sp, #0x10
  100098d4c  sub     sp, sp, #0x10
  100098d50  mov     x19, x0
  100098d54  bl      _rand                                    ; rand()
  100098d58  sxtw    x8, w0
  100098d5c  mov     x9, #-0x77770001
  100098d60  movk    x9, #0x8889
  100098d64  mul     x8, x8, x9
  100098d68  lsr     x8, x8, #0x20
  100098d6c  add     w8, w8, w0
  100098d70  asr     w9, w8, #4
  100098d74  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffff88888889) >>> 32) + rand()) >> 4) + ((((rand() * 0xffffffff88888889) >>> 32) + rand()) >>> 31))
  100098d78  mov     w9, #0x1e
  100098d7c  msub    w8, w8, w9, w0
  100098d80  add     w8, w8, #0xa
  100098d84  scvtf   s0, w8
  100098d88  adrp    x8, #0x10041f000
  100098d8c  ldrsw   x8, [x8, #0xffc]                         ; ivar offset ADAmbientManager.nextStormTime (+0x2c)
  100098d90  str     s0, [x19, x8]                            ; self->nextStormTime = (float)((rand() - t1 * 30) + 10)
  100098d94  fcvt    d0, s0
  100098d98  str     d0, [sp]
  100098d9c  adrp    x0, #0x1003c0000
  100098da0  add     x0, x0, #0x2d0                           ; @"Next thunder : %f"
  100098da4  bl      _NSLog                                   ; NSLog(@"Next thunder : %f", (float)((rand() - t1 * 30) + 10))
  100098da8  sub     sp, x29, #0x10
  100098dac  ldp     x29, x30, [sp, #0x10]
  100098db0  ldp     x20, x19, [sp], #0x20
  100098db4  ret

; ======================================================================
; -[ADAmbientManager playThunder]
; address 0x100098db8  size 164  kind objc
; ======================================================================
  100098db8  stp     x22, x21, [sp, #-0x30]!
  100098dbc  stp     x20, x19, [sp, #0x10]
  100098dc0  stp     x29, x30, [sp, #0x20]
  100098dc4  add     x29, sp, #0x20
  100098dc8  mov     x19, x0
  100098dcc  adrp    x8, #0x10041a000
  100098dd0  nop
  100098dd4  ldr     x1, [x8, #0x118]
  100098dd8  bl      _objc_msgSend                            ; [self stormPLaylist]
  100098ddc  mov     x29, x29
  100098de0  bl      _objc_retainAutoreleasedReturnValue
  100098de4  mov     x20, x0
  100098de8  adrp    x8, #0x100416000
  100098dec  nop
  100098df0  ldr     x1, [x8, #0xca0]
  100098df4  adrp    x2, #0x1003c0000
  100098df8  add     x2, x2, #0x2f0                           ; @"thunder"
  100098dfc  bl      _objc_msgSend                            ; [[self stormPLaylist] anySoundContaining:@"thunder"]
  100098e00  mov     x29, x29
  100098e04  bl      _objc_retainAutoreleasedReturnValue
  100098e08  adrp    x8, #0x100420000
  100098e0c  ldrsw   x21, [x8, #8]                            ; ivar offset ADAmbientManager.thunderSound (+0x18)
  100098e10  ldr     x8, [x19, x21]                           ; x8 = self->thunderSound
  100098e14  str     x0, [x19, x21]                           ; self->thunderSound = [[self stormPLaylist] anySoundContaining:@"thunder"]
  100098e18  mov     x0, x8
  100098e1c  bl      _objc_release
  100098e20  mov     x0, x20
  100098e24  bl      _objc_release
  100098e28  ldr     x0, [x19, x21]                           ; x0 = self->thunderSound
  100098e2c  adrp    x8, #0x100417000
  100098e30  nop
  100098e34  ldr     x1, [x8, #0x600]
  100098e38  ldp     x29, x30, [sp, #0x20]
  100098e3c  ldp     x20, x19, [sp, #0x10]
  100098e40  ldp     x22, x21, [sp], #0x30
  100098e44  b       _objc_msgSend                            ; [self->thunderSound play]
  100098e48  mov     x19, x0
  100098e4c  mov     x0, x20
  100098e50  bl      _objc_release
  100098e54  mov     x0, x19
  100098e58  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager initEnemiesAmbiant]
; address 0x100098e5c  size 236  kind objc
; ======================================================================
  100098e5c  stp     x22, x21, [sp, #-0x30]!
  100098e60  stp     x20, x19, [sp, #0x10]
  100098e64  stp     x29, x30, [sp, #0x20]
  100098e68  add     x29, sp, #0x20
  100098e6c  mov     x19, x0
  100098e70  adrp    x8, #0x10041d000
  100098e74  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  100098e78  adrp    x8, #0x100417000
  100098e7c  nop
  100098e80  ldr     x1, [x8, #0x4f0]
  100098e84  bl      _objc_msgSend                            ; [S3DEngine engine]
  100098e88  mov     x29, x29
  100098e8c  bl      _objc_retainAutoreleasedReturnValue
  100098e90  mov     x20, x0
  100098e94  adrp    x8, #0x100417000
  100098e98  nop
  100098e9c  ldr     x1, [x8, #0x4f8]
  100098ea0  adrp    x2, #0x1003c0000
  100098ea4  add     x2, x2, #0x310                           ; @"enemiesAmbiant"
  100098ea8  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"enemiesAmbiant"]
  100098eac  mov     x29, x29
  100098eb0  bl      _objc_retainAutoreleasedReturnValue
  100098eb4  adrp    x8, #0x100420000
  100098eb8  ldrsw   x21, [x8, #4]                            ; ivar offset ADAmbientManager.enemiesPlaylist (+0x30)
  100098ebc  ldr     x8, [x19, x21]                           ; x8 = self->enemiesPlaylist
  100098ec0  str     x0, [x19, x21]                           ; self->enemiesPlaylist = [[S3DEngine engine] playListWithName:@"enemiesAmbiant"]
  100098ec4  mov     x0, x8
  100098ec8  bl      _objc_release
  100098ecc  mov     x0, x20
  100098ed0  bl      _objc_release
  100098ed4  ldr     x0, [x19, x21]                           ; x0 = self->enemiesPlaylist
  100098ed8  adrp    x8, #0x100417000
  100098edc  nop
  100098ee0  ldr     x1, [x8, #0x508]
  100098ee4  bl      _objc_msgSend                            ; [self->enemiesPlaylist activate]
  100098ee8  adrp    x8, #0x10041d000
  100098eec  ldr     x0, [x8, #0xf90]                         ; class NSMutableDictionary
  100098ef0  adrp    x8, #0x100416000
  100098ef4  nop
  100098ef8  ldr     x1, [x8, #0xac8]
  100098efc  bl      _objc_msgSend                            ; [NSMutableDictionary alloc]
  100098f00  adrp    x8, #0x100416000
  100098f04  nop
  100098f08  ldr     x1, [x8, #0xab8]
  100098f0c  bl      _objc_msgSend                            ; [[NSMutableDictionary alloc] init]
  100098f10  adrp    x8, #0x100420000
  100098f14  ldrsw   x9, [x8, #0xc]                           ; ivar offset ADAmbientManager.enemiesAmbiantCount (+0x38)
  100098f18  ldr     x8, [x19, x9]                            ; x8 = self->enemiesAmbiantCount
  100098f1c  str     x0, [x19, x9]                            ; self->enemiesAmbiantCount = [[NSMutableDictionary alloc] init]
  100098f20  mov     x0, x8
  100098f24  ldp     x29, x30, [sp, #0x20]
  100098f28  ldp     x20, x19, [sp, #0x10]
  100098f2c  ldp     x22, x21, [sp], #0x30
  100098f30  b       _objc_release
  100098f34  mov     x19, x0
  100098f38  mov     x0, x20
  100098f3c  bl      _objc_release
  100098f40  mov     x0, x19
  100098f44  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAmbientManager enemyWithAmbiantNameAppeared:]
; address 0x100098f48  size 32  kind objc
; ======================================================================
  100098f48  stp     x29, x30, [sp, #-0x10]!
  100098f4c  mov     x29, sp
  100098f50  adrp    x8, #0x10041a000
  100098f54  nop
  100098f58  ldr     x1, [x8, #0x168]
  100098f5c  bl      _objc_msgSend                            ; [self checkAmbiant]
  100098f60  ldp     x29, x30, [sp], #0x10
  100098f64  ret

; ======================================================================
; -[ADAmbientManager enemyWithAmbiantNameKilled:]
; address 0x100098f68  size 32  kind objc
; ======================================================================
  100098f68  stp     x29, x30, [sp, #-0x10]!
  100098f6c  mov     x29, sp
  100098f70  adrp    x8, #0x10041a000
  100098f74  nop
  100098f78  ldr     x1, [x8, #0x168]
  100098f7c  bl      _objc_msgSend                            ; [self checkAmbiant]
  100098f80  ldp     x29, x30, [sp], #0x10
  100098f84  ret

; ======================================================================
; -[ADAmbientManager brickWithAmbiantStarted:]
; address 0x100098f88  size 32  kind objc
; ======================================================================
  100098f88  stp     x29, x30, [sp, #-0x10]!
  100098f8c  mov     x29, sp
  100098f90  adrp    x8, #0x10041a000
  100098f94  nop
  100098f98  ldr     x1, [x8, #0x168]
  100098f9c  bl      _objc_msgSend                            ; [self checkAmbiant]
  100098fa0  ldp     x29, x30, [sp], #0x10
  100098fa4  ret

; ======================================================================
; -[ADAmbientManager brickWithAmbiantCleared:]
; address 0x100098fa8  size 32  kind objc
; ======================================================================
  100098fa8  stp     x29, x30, [sp, #-0x10]!
  100098fac  mov     x29, sp
  100098fb0  adrp    x8, #0x10041a000
  100098fb4  nop
  100098fb8  ldr     x1, [x8, #0x168]
  100098fbc  bl      _objc_msgSend                            ; [self checkAmbiant]
  100098fc0  ldp     x29, x30, [sp], #0x10
  100098fc4  ret

; ======================================================================
; -[ADAmbientManager playEnemyAmbiantWithName:forceStop:]
; address 0x100098fc8  size 380  kind objc
; ======================================================================
  100098fc8  stp     x24, x23, [sp, #-0x40]!
  100098fcc  stp     x22, x21, [sp, #0x10]
  100098fd0  stp     x20, x19, [sp, #0x20]
  100098fd4  stp     x29, x30, [sp, #0x30]
  100098fd8  add     x29, sp, #0x30
  100098fdc  sub     sp, sp, #0x10
  100098fe0  mov     x21, x3
  100098fe4  mov     x20, x0
  100098fe8  mov     x0, x2
  100098fec  bl      _objc_retain
  100098ff0  mov     x19, x0
  100098ff4  adrp    x8, #0x100420000
  100098ff8  ldrsw   x24, [x8, #0x10]                         ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  100098ffc  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  100099000  adrp    x8, #0x100417000
  100099004  nop
  100099008  ldr     x1, [x8, #0x598]
  10009900c  bl      _objc_msgSend                            ; [self->enemyAmbiantSound playing]
  100099010  cbz     w0, loc_100099070                        ; if ([self->enemyAmbiantSound playing] == 0)
  100099014  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  100099018  adrp    x8, #0x100419000
  10009901c  nop
  100099020  ldr     x1, [x8, #0x3e8]
  100099024  bl      _objc_msgSend                            ; [self->enemyAmbiantSound key]
  100099028  mov     x29, x29
  10009902c  bl      _objc_retainAutoreleasedReturnValue
  100099030  mov     x22, x0
  100099034  adrp    x8, #0x100416000
  100099038  nop
  10009903c  ldr     x1, [x8, #0xf58]
  100099040  mov     x2, x19
  100099044  bl      _objc_msgSend                            ; [[self->enemyAmbiantSound key] isEqualToString:arg1]
  100099048  mov     x23, x0
  10009904c  mov     x0, x22
  100099050  bl      _objc_release
  100099054  tbnz    w23, #0, loc_100099104                   ; if (([[self->enemyAmbiantSound key] isEqualToString:arg1] & 1))
  100099058  cbz     w21, loc_100099070                       ; if (arg2 == 0)
  10009905c  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  100099060  adrp    x8, #0x100417000
  100099064  nop
  100099068  ldr     x1, [x8, #0x568]
  10009906c  bl      _objc_msgSend                            ; [self->enemyAmbiantSound stop]
loc_100099070:
  100099070  str     x19, [sp]
  100099074  adrp    x0, #0x1003c0000
  100099078  add     x0, x0, #0x330                           ; @"Play ambiant :%@"
  10009907c  bl      _NSLog                                   ; NSLog(@"Play ambiant :%@", arg1)
  100099080  adrp    x8, #0x100420000
  100099084  ldrsw   x8, [x8, #4]                             ; ivar offset ADAmbientManager.enemiesPlaylist (+0x30)
  100099088  ldr     x0, [x20, x8]                            ; x0 = self->enemiesPlaylist
  10009908c  adrp    x8, #0x100417000
  100099090  nop
  100099094  ldr     x1, [x8, #0x990]
  100099098  mov     x2, x19
  10009909c  bl      _objc_msgSend                            ; [self->enemiesPlaylist S3DSound:arg1]
  1000990a0  mov     x29, x29
  1000990a4  bl      _objc_retainAutoreleasedReturnValue
  1000990a8  ldr     x8, [x20, x24]                           ; x8 = self->enemyAmbiantSound
  1000990ac  str     x0, [x20, x24]                           ; self->enemyAmbiantSound = [self->enemiesPlaylist S3DSound:arg1]
  1000990b0  mov     x0, x8
  1000990b4  bl      _objc_release
  1000990b8  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  1000990bc  adrp    x8, #0x100416000
  1000990c0  nop
  1000990c4  ldr     x1, [x8, #0xcb8]
  1000990c8  mov     w2, #1
  1000990cc  bl      _objc_msgSend                            ; [self->enemyAmbiantSound play:1]
  1000990d0  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  1000990d4  adrp    x8, #0x100419000
  1000990d8  nop
  1000990dc  ldr     x1, [x8, #0xe08]
  1000990e0  mov     w2, #1
  1000990e4  bl      _objc_msgSend                            ; [self->enemyAmbiantSound setStream:1]
  1000990e8  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  1000990ec  adrp    x8, #0x100416000
  1000990f0  nop
  1000990f4  ldr     x1, [x8, #0xcb0]
  1000990f8  nop
  1000990fc  ldr     s0, #0x100181cf4                         ; s0 = 0.0850000009
  100099100  bl      _objc_msgSend                            ; [self->enemyAmbiantSound setGain:0.085]
loc_100099104:
  100099104  mov     x0, x19
  100099108  sub     sp, x29, #0x30
  10009910c  ldp     x29, x30, [sp, #0x30]
  100099110  ldp     x20, x19, [sp, #0x20]
  100099114  ldp     x22, x21, [sp, #0x10]
  100099118  ldp     x24, x23, [sp], #0x40
  10009911c  b       _objc_release
  100099120  mov     x20, x0
loc_100099124:
  100099124  mov     x0, x19
  100099128  bl      _objc_release
  10009912c  mov     x0, x20
  100099130  bl      __Unwind_Resume                          ; Unwind_Resume()
  100099134  mov     x20, x0
  100099138  mov     x0, x22
  10009913c  bl      _objc_release
  100099140  b       loc_100099124

; ======================================================================
; -[ADAmbientManager stopAmbiant]
; address 0x100099144  size 28  kind objc
; ======================================================================
  100099144  adrp    x8, #0x100420000
  100099148  ldrsw   x8, [x8, #0x10]                          ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  10009914c  ldr     x0, [x0, x8]                             ; x0 = self->enemyAmbiantSound
  100099150  adrp    x8, #0x100417000
  100099154  nop
  100099158  ldr     x1, [x8, #0x568]
  10009915c  b       _objc_msgSend                            ; [self->enemyAmbiantSound stop]

; ======================================================================
; -[ADAmbientManager enemyWithCurrentAmbiantIsAlive]
; address 0x100099160  size 660  kind objc
; ======================================================================
  100099160  stp     x28, x27, [sp, #-0x60]!
  100099164  stp     x26, x25, [sp, #0x10]
  100099168  stp     x24, x23, [sp, #0x20]
  10009916c  stp     x22, x21, [sp, #0x30]
  100099170  stp     x20, x19, [sp, #0x40]
  100099174  stp     x29, x30, [sp, #0x50]
  100099178  add     x29, sp, #0x50
  10009917c  sub     sp, sp, #0x100
  100099180  mov     x20, x0
  100099184  adrp    x19, #0x1003b0000
  100099188  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  10009918c  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100099190  stur    x19, [x29, #-0x58]
  100099194  stp     xzr, xzr, [sp, #0x68]
  100099198  stp     xzr, xzr, [sp, #0x58]
  10009919c  stp     xzr, xzr, [sp, #0x48]
  1000991a0  stp     xzr, xzr, [sp, #0x38]
  1000991a4  adrp    x8, #0x10041e000
  1000991a8  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  1000991ac  adrp    x8, #0x100417000
  1000991b0  nop
  1000991b4  ldr     x1, [x8, #0xaa8]
  1000991b8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000991bc  mov     x29, x29
  1000991c0  bl      _objc_retainAutoreleasedReturnValue
  1000991c4  mov     x21, x0
  1000991c8  adrp    x8, #0x10041a000
  1000991cc  nop
  1000991d0  ldr     x1, [x8, #0x170]
  1000991d4  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] allPotentialTargets]
  1000991d8  mov     x29, x29
  1000991dc  bl      _objc_retainAutoreleasedReturnValue
  1000991e0  mov     x22, x0
  1000991e4  str     x22, [sp, #0x30]
  1000991e8  mov     x0, x21
  1000991ec  bl      _objc_release
  1000991f0  adrp    x8, #0x100416000
  1000991f4  nop
  1000991f8  ldr     x1, [x8, #0xe00]
  1000991fc  str     x1, [sp, #0x10]
  100099200  add     x2, sp, #0x38
  100099204  add     x3, sp, #0x78
  100099208  mov     w4, #0x10
  10009920c  mov     x0, x22
  100099210  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100099214  mov     x23, x0
  100099218  cbz     x23, loc_10009936c                       ; if ([[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] == 0)
  10009921c  ldr     x8, [sp, #0x48]
  100099220  ldr     x19, [x8]
  100099224  adrp    x8, #0x100419000
  100099228  nop
  10009922c  ldr     x22, [x8, #0x578]
  100099230  adrp    x8, #0x10041a000
  100099234  nop
  100099238  ldr     x8, [x8, #0x178]
  10009923c  str     x8, [sp, #0x28]
  100099240  adrp    x8, #0x100420000
  100099244  ldrsw   x24, [x8, #0x10]                         ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  100099248  adrp    x8, #0x100419000
  10009924c  nop
  100099250  ldr     x8, [x8, #0x3e8]
  100099254  str     x8, [sp, #0x20]
  100099258  adrp    x8, #0x100416000
  10009925c  nop
  100099260  ldr     x26, [x8, #0xf58]
  100099264  adrp    x8, #0x100417000
  100099268  nop
  10009926c  ldr     x8, [x8, #0x598]
  100099270  str     x8, [sp, #0x18]
loc_100099274:
  100099274  mov     x25, #0
loc_100099278:
  100099278  ldr     x8, [sp, #0x48]
  10009927c  ldr     x8, [x8]
  100099280  cmp     x8, x19
  100099284  b.eq    loc_100099290                            ; if (x8 == x19)
  100099288  ldr     x0, [sp, #0x30]
  10009928c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADBrickManager sharedBrickManager] allPotentialTargets])
loc_100099290:
  100099290  ldr     x8, [sp, #0x40]
  100099294  ldr     x21, [x8, x25, lsl #3]
  100099298  mov     x0, x21
  10009929c  mov     x1, x22
  1000992a0  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  1000992a4  cbz     w0, loc_100099324                        ; if ([x0 canBeShotAt] == 0)
  1000992a8  mov     x0, x21
  1000992ac  ldr     x1, [sp, #0x28]
  1000992b0  bl      _objc_msgSend                            ; [x0 getAmbiantName]
  1000992b4  mov     x29, x29
  1000992b8  bl      _objc_retainAutoreleasedReturnValue
  1000992bc  mov     x28, x0
  1000992c0  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  1000992c4  ldr     x1, [sp, #0x20]
  1000992c8  bl      _objc_msgSend                            ; [self->enemyAmbiantSound key]
  1000992cc  mov     x29, x29
  1000992d0  bl      _objc_retainAutoreleasedReturnValue
  1000992d4  mov     x21, x0
  1000992d8  mov     x0, x28
  1000992dc  mov     x1, x26
  1000992e0  mov     x2, x21
  1000992e4  bl      _objc_msgSend                            ; [[x0 getAmbiantName] isEqualToString:[self->enemyAmbiantSound key]]
  1000992e8  cbz     w0, loc_100099314                        ; if ([[x0 getAmbiantName] isEqualToString:[self->enemyAmbiantSound key]] == 0)
  1000992ec  ldr     x0, [x20, x24]                           ; x0 = self->enemyAmbiantSound
  1000992f0  ldr     x1, [sp, #0x18]
  1000992f4  bl      _objc_msgSend                            ; [self->enemyAmbiantSound playing]
  1000992f8  mov     x27, x0
  1000992fc  mov     x0, x21
  100099300  bl      _objc_release
  100099304  mov     x0, x28
  100099308  bl      _objc_release
  10009930c  tbz     w27, #0, loc_100099324                   ; if (!([self->enemyAmbiantSound playing] & 1))
  100099310  b       loc_100099358
loc_100099314:
  100099314  mov     x0, x21
  100099318  bl      _objc_release
  10009931c  mov     x0, x28
  100099320  bl      _objc_release
loc_100099324:
  100099324  add     x25, x25, #1
  100099328  cmp     x25, x23
  10009932c  b.lo    loc_100099278                            ; if ((x25 + 1) <u [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count…)
  100099330  add     x2, sp, #0x38
  100099334  add     x3, sp, #0x78
  100099338  mov     w4, #0x10
  10009933c  ldr     x0, [sp, #0x30]
  100099340  ldr     x1, [sp, #0x10]
  100099344  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16]
  100099348  mov     x23, x0
  10009934c  cbnz    x23, loc_100099274                       ; if ([[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x38] objects:&sp[0x78] count:16] != 0)
  100099350  mov     w20, #0
  100099354  b       loc_10009935c
loc_100099358:
  100099358  mov     w20, #1
loc_10009935c:
  10009935c  adrp    x19, #0x1003b0000
  100099360  ldr     x19, [x19, #0x1d8]                       ; ___stack_chk_guard
  100099364  ldr     x19, [x19]                               ; x19 = ___stack_chk_guard[+0x0]
  100099368  b       loc_100099370
loc_10009936c:
  10009936c  mov     w20, #0
loc_100099370:
  100099370  ldr     x0, [sp, #0x30]
  100099374  bl      _objc_release
  100099378  ldur    x8, [x29, #-0x58]
  10009937c  sub     x8, x19, x8
  100099380  cbnz    x8, loc_1000993a8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100099384  mov     x0, x20
  100099388  sub     sp, x29, #0x50
  10009938c  ldp     x29, x30, [sp, #0x50]
  100099390  ldp     x20, x19, [sp, #0x40]
  100099394  ldp     x22, x21, [sp, #0x30]
  100099398  ldp     x24, x23, [sp, #0x20]
  10009939c  ldp     x26, x25, [sp, #0x10]
  1000993a0  ldp     x28, x27, [sp], #0x60
  1000993a4  ret
loc_1000993a8:
  1000993a8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000993ac:
  1000993ac  mov     x20, x0
  1000993b0  b       loc_1000993d0
  1000993b4  mov     x20, x0
  1000993b8  mov     x0, x21
  1000993bc  bl      _objc_release
  1000993c0  b       loc_1000993c8
  1000993c4  mov     x20, x0
loc_1000993c8:
  1000993c8  mov     x0, x28
  1000993cc  bl      _objc_release
loc_1000993d0:
  1000993d0  ldr     x0, [sp, #0x30]
loc_1000993d4:
  1000993d4  bl      _objc_release
  1000993d8  mov     x0, x20
  1000993dc  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000993e0  b       loc_1000993ac
  1000993e4  mov     x20, x0
  1000993e8  mov     x0, x21
  1000993ec  b       loc_1000993d4
  1000993f0  b       loc_1000993ac

; ======================================================================
; -[ADAmbientManager stopEnemiesAmbientAndResetCount]
; address 0x1000993f4  size 80  kind objc
; ======================================================================
  1000993f4  stp     x20, x19, [sp, #-0x20]!
  1000993f8  stp     x29, x30, [sp, #0x10]
  1000993fc  add     x29, sp, #0x10
  100099400  mov     x19, x0
  100099404  adrp    x0, #0x1003c0000
  100099408  add     x0, x0, #0x350                           ; @"stopEnemiesAmbientAndResetCount"
  10009940c  bl      _NSLog                                   ; NSLog(@"stopEnemiesAmbientAndResetCount", _cmd)
  100099410  adrp    x8, #0x100420000
  100099414  ldrsw   x8, [x8, #0x10]                          ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  100099418  ldr     x0, [x19, x8]                            ; x0 = self->enemyAmbiantSound
  10009941c  adrp    x8, #0x100417000
  100099420  nop
  100099424  ldr     x1, [x8, #0x568]
  100099428  bl      _objc_msgSend                            ; [self->enemyAmbiantSound stop]
  10009942c  adrp    x8, #0x100420000
  100099430  ldrsw   x8, [x8, #0x14]                          ; ivar offset ADAmbientManager.ambiantIsPlaying (+0x40)
  100099434  strb    wzr, [x19, x8]                           ; self->ambiantIsPlaying = 0
  100099438  ldp     x29, x30, [sp, #0x10]
  10009943c  ldp     x20, x19, [sp], #0x20
  100099440  ret

; ======================================================================
; -[ADAmbientManager checkAmbiant]
; address 0x100099444  size 1252  kind objc
; ======================================================================
  100099444  stp     x28, x27, [sp, #-0x60]!
  100099448  stp     x26, x25, [sp, #0x10]
  10009944c  stp     x24, x23, [sp, #0x20]
  100099450  stp     x22, x21, [sp, #0x30]
  100099454  stp     x20, x19, [sp, #0x40]
  100099458  stp     x29, x30, [sp, #0x50]
  10009945c  add     x29, sp, #0x50
  100099460  sub     sp, sp, #0xe0
  100099464  mov     x19, x0
  100099468  adrp    x27, #0x1003b0000
  10009946c  ldr     x27, [x27, #0x1d8]                       ; ___stack_chk_guard
  100099470  ldr     x27, [x27]                               ; x27 = ___stack_chk_guard[+0x0]
  100099474  stur    x27, [x29, #-0x58]
  100099478  adrp    x26, #0x10041e000
  10009947c  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  100099480  adrp    x8, #0x100417000
  100099484  nop
  100099488  ldr     x20, [x8, #0xaa8]
  10009948c  mov     x1, x20
  100099490  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100099494  mov     x29, x29
  100099498  bl      _objc_retainAutoreleasedReturnValue
  10009949c  mov     x21, x0
  1000994a0  adrp    x8, #0x100418000
  1000994a4  nop
  1000994a8  ldr     x1, [x8, #0xb58]
  1000994ac  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] playerIsDead]
  1000994b0  mov     x22, x0
  1000994b4  mov     x0, x21
  1000994b8  bl      _objc_release
  1000994bc  cbz     w22, loc_1000994fc                       ; if ([[ADBrickManager sharedBrickManager] playerIsDead] == 0)
  1000994c0  ldur    x8, [x29, #-0x58]
  1000994c4  sub     x8, x27, x8
  1000994c8  cbnz    x8, loc_100099888                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000994cc  adrp    x8, #0x10041a000
  1000994d0  nop
  1000994d4  ldr     x1, [x8, #0x160]
  1000994d8  mov     x0, x19
  1000994dc  sub     sp, x29, #0x50
  1000994e0  ldp     x29, x30, [sp, #0x50]
  1000994e4  ldp     x20, x19, [sp, #0x40]
  1000994e8  ldp     x22, x21, [sp, #0x30]
  1000994ec  ldp     x24, x23, [sp, #0x20]
  1000994f0  ldp     x26, x25, [sp, #0x10]
  1000994f4  ldp     x28, x27, [sp], #0x60
  1000994f8  b       _objc_msgSend                            ; [self stopEnemiesAmbientAndResetCount]
loc_1000994fc:
  1000994fc  adrp    x0, #0x1003c0000
  100099500  add     x0, x0, #0x370                           ; @"[AMBIANT] Checking ambiant"
  100099504  bl      _NSLog                                   ; NSLog(@"[AMBIANT] Checking ambiant")
  100099508  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  10009950c  mov     x1, x20
  100099510  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100099514  mov     x29, x29
  100099518  bl      _objc_retainAutoreleasedReturnValue
  10009951c  mov     x23, x0
  100099520  adrp    x8, #0x100417000
  100099524  nop
  100099528  ldr     x21, [x8, #0xab0]
  10009952c  mov     x1, x21
  100099530  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] currentBrick]
  100099534  mov     x29, x29
  100099538  bl      _objc_retainAutoreleasedReturnValue
  10009953c  mov     x24, x0
  100099540  adrp    x8, #0x10041a000
  100099544  nop
  100099548  ldr     x22, [x8, #0x180]
  10009954c  mov     x1, x22
  100099550  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] currentBrick] ambiantName]
  100099554  mov     x29, x29
  100099558  bl      _objc_retainAutoreleasedReturnValue
  10009955c  mov     x25, x0
  100099560  bl      _objc_release
  100099564  mov     x0, x24
  100099568  bl      _objc_release
  10009956c  mov     x0, x23
  100099570  bl      _objc_release
  100099574  cbz     x25, loc_10009967c                       ; if ([[[ADBrickManager sharedBrickManager] currentBrick] ambiantName] == 0)
  100099578  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  10009957c  mov     x1, x20
  100099580  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100099584  mov     x29, x29
  100099588  bl      _objc_retainAutoreleasedReturnValue
  10009958c  mov     x23, x0
  100099590  mov     x1, x21
  100099594  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] currentBrick]
  100099598  mov     x29, x29
  10009959c  bl      _objc_retainAutoreleasedReturnValue
  1000995a0  mov     x24, x0
  1000995a4  mov     x1, x22
  1000995a8  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] currentBrick] ambiantName]
  1000995ac  mov     x29, x29
  1000995b0  bl      _objc_retainAutoreleasedReturnValue
  1000995b4  mov     x25, x0
  1000995b8  str     x25, [sp]
  1000995bc  adrp    x0, #0x1003c0000
  1000995c0  add     x0, x0, #0x390                           ; @"[AMBIANT] Try to play brick ambiant : %@"
  1000995c4  bl      _NSLog                                   ; NSLog(@"[AMBIANT] Try to play brick ambiant : %@", [[[ADBrickManager sharedBrickManager] currentBrick] ambiantName])
  1000995c8  mov     x0, x25
  1000995cc  bl      _objc_release
  1000995d0  mov     x0, x24
  1000995d4  bl      _objc_release
  1000995d8  mov     x0, x23
  1000995dc  bl      _objc_release
  1000995e0  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  1000995e4  mov     x1, x20
  1000995e8  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000995ec  mov     x29, x29
  1000995f0  bl      _objc_retainAutoreleasedReturnValue
  1000995f4  mov     x20, x0
  1000995f8  mov     x1, x21
  1000995fc  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] currentBrick]
  100099600  mov     x29, x29
  100099604  bl      _objc_retainAutoreleasedReturnValue
  100099608  mov     x21, x0
  10009960c  mov     x1, x22
  100099610  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] currentBrick] ambiantName]
  100099614  mov     x29, x29
  100099618  bl      _objc_retainAutoreleasedReturnValue
  10009961c  mov     x22, x0
  100099620  adrp    x8, #0x10041a000
  100099624  nop
  100099628  ldr     x1, [x8, #0x188]
  10009962c  mov     w3, #1
  100099630  mov     x0, x19
  100099634  mov     x2, x22
  100099638  bl      _objc_msgSend                            ; [self playEnemyAmbiantWithName:[[[ADBrickManager sharedBrickManager] currentBrick] ambiantName] forceStop:1]
  10009963c  mov     x0, x22
  100099640  bl      _objc_release
  100099644  mov     x0, x21
  100099648  bl      _objc_release
  10009964c  ldur    x8, [x29, #-0x58]
  100099650  sub     x8, x27, x8
  100099654  cbnz    x8, loc_100099888                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100099658  mov     x0, x20
  10009965c  sub     sp, x29, #0x50
  100099660  ldp     x29, x30, [sp, #0x50]
  100099664  ldp     x20, x19, [sp, #0x40]
  100099668  ldp     x22, x21, [sp, #0x30]
  10009966c  ldp     x24, x23, [sp, #0x20]
  100099670  ldp     x26, x25, [sp, #0x10]
  100099674  ldp     x28, x27, [sp], #0x60
  100099678  b       _objc_release
loc_10009967c:
  10009967c  adrp    x8, #0x10041a000
  100099680  nop
  100099684  ldr     x1, [x8, #0x190]
  100099688  mov     x0, x19
  10009968c  bl      _objc_msgSend                            ; [self enemyWithCurrentAmbiantIsAlive]
  100099690  cbz     w0, loc_1000996a4                        ; if ([self enemyWithCurrentAmbiantIsAlive] == 0)
  100099694  adrp    x0, #0x1003c0000
  100099698  add     x0, x0, #0x3b0                           ; @"[AMBIANT]Enemy with current ambiant is alive"
  10009969c  bl      _NSLog                                   ; NSLog(@"[AMBIANT]Enemy with current ambiant is alive")
  1000996a0  b       loc_10009985c
loc_1000996a4:
  1000996a4  stp     xzr, xzr, [sp, #0x48]
  1000996a8  stp     xzr, xzr, [sp, #0x38]
  1000996ac  stp     xzr, xzr, [sp, #0x28]
  1000996b0  stp     xzr, xzr, [sp, #0x18]
  1000996b4  ldr     x0, [x26, #0x98]                         ; class ADBrickManager
  1000996b8  mov     x1, x20
  1000996bc  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  1000996c0  mov     x29, x29
  1000996c4  bl      _objc_retainAutoreleasedReturnValue
  1000996c8  mov     x21, x0
  1000996cc  adrp    x8, #0x10041a000
  1000996d0  nop
  1000996d4  ldr     x1, [x8, #0x170]
  1000996d8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] allPotentialTargets]
  1000996dc  mov     x29, x29
  1000996e0  bl      _objc_retainAutoreleasedReturnValue
  1000996e4  mov     x20, x0
  1000996e8  mov     x0, x21
  1000996ec  bl      _objc_release
  1000996f0  adrp    x8, #0x100416000
  1000996f4  nop
  1000996f8  ldr     x1, [x8, #0xe00]
  1000996fc  str     x1, [sp, #0x10]
  100099700  add     x2, sp, #0x18
  100099704  add     x3, sp, #0x58
  100099708  mov     w4, #0x10
  10009970c  mov     x0, x20
  100099710  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  100099714  mov     x23, x0
  100099718  cbz     x23, loc_1000997bc                       ; if ([[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] == 0)
  10009971c  ldr     x8, [sp, #0x28]
  100099720  ldr     x28, [x8]
  100099724  adrp    x8, #0x100419000
  100099728  nop
  10009972c  ldr     x24, [x8, #0x578]
  100099730  adrp    x8, #0x10041a000
  100099734  add     x8, x8, #0x178                           ; &@selector(getAmbiantName)
  100099738  ldr     x21, [x8]
loc_10009973c:
  10009973c  mov     x22, #0
loc_100099740:
  100099740  ldr     x8, [sp, #0x28]
  100099744  ldr     x8, [x8]
  100099748  cmp     x8, x28
  10009974c  b.eq    loc_100099758                            ; if (x8 == x28)
  100099750  mov     x0, x20
  100099754  bl      _objc_enumerationMutation                ; objc_enumerationMutation([[ADBrickManager sharedBrickManager] allPotentialTargets])
loc_100099758:
  100099758  ldr     x8, [sp, #0x20]
  10009975c  ldr     x25, [x8, x22, lsl #3]
  100099760  mov     x0, x25
  100099764  mov     x1, x24
  100099768  bl      _objc_msgSend                            ; [x0 canBeShotAt]
  10009976c  cbz     w0, loc_100099790                        ; if ([x0 canBeShotAt] == 0)
  100099770  mov     x0, x25
  100099774  mov     x1, x21
  100099778  bl      _objc_msgSend                            ; [x0 getAmbiantName]
  10009977c  mov     x29, x29
  100099780  bl      _objc_retainAutoreleasedReturnValue
  100099784  mov     x26, x0
  100099788  bl      _objc_release
  10009978c  cbnz    x26, loc_1000997e8                       ; if ([x0 getAmbiantName] != 0)
loc_100099790:
  100099790  add     x22, x22, #1
  100099794  cmp     x22, x23
  100099798  b.lo    loc_100099740                            ; if ((x22 + 1) <u [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count…)
  10009979c  add     x2, sp, #0x18
  1000997a0  add     x3, sp, #0x58
  1000997a4  mov     w4, #0x10
  1000997a8  mov     x0, x20
  1000997ac  ldr     x1, [sp, #0x10]
  1000997b0  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16]
  1000997b4  mov     x23, x0
  1000997b8  cbnz    x23, loc_10009973c                       ; if ([[[ADBrickManager sharedBrickManager] allPotentialTargets] countByEnumeratingWithState:&sp[0x18] objects:&sp[0x58] count:16] != 0)
loc_1000997bc:
  1000997bc  mov     x0, x20
  1000997c0  bl      _objc_release
  1000997c4  adrp    x0, #0x1003c0000
  1000997c8  add     x0, x0, #0x3f0                           ; @"[AMBIANT] Stop ambiant "
  1000997cc  bl      _NSLog                                   ; NSLog(@"[AMBIANT] Stop ambiant ")
  1000997d0  adrp    x8, #0x10041a000
  1000997d4  nop
  1000997d8  ldr     x1, [x8, #0x198]
  1000997dc  mov     x0, x19
  1000997e0  bl      _objc_msgSend                            ; [self stopAmbiant]
  1000997e4  b       loc_10009985c
loc_1000997e8:
  1000997e8  mov     x0, x25
  1000997ec  mov     x1, x21
  1000997f0  bl      _objc_msgSend                            ; [x0 getAmbiantName]
  1000997f4  mov     x29, x29
  1000997f8  bl      _objc_retainAutoreleasedReturnValue
  1000997fc  mov     x22, x0
  100099800  str     x22, [sp]
  100099804  adrp    x0, #0x1003c0000
  100099808  add     x0, x0, #0x3d0                           ; @"[AMBIANT] Try to play enemy ambiant : %@"
  10009980c  bl      _NSLog                                   ; NSLog(@"[AMBIANT] Try to play enemy ambiant : %@", [x0 getAmbiantName])
  100099810  mov     x0, x22
  100099814  bl      _objc_release
  100099818  mov     x0, x25
  10009981c  mov     x1, x21
  100099820  bl      _objc_msgSend                            ; [x0 getAmbiantName]
  100099824  mov     x29, x29
  100099828  bl      _objc_retainAutoreleasedReturnValue
  10009982c  mov     x21, x0
  100099830  adrp    x8, #0x10041a000
  100099834  nop
  100099838  ldr     x1, [x8, #0x188]
  10009983c  mov     w3, #1
  100099840  mov     x0, x19
  100099844  mov     x2, x21
  100099848  bl      _objc_msgSend                            ; [self playEnemyAmbiantWithName:[x0 getAmbiantName] forceStop:1]
  10009984c  mov     x0, x21
  100099850  bl      _objc_release
  100099854  mov     x0, x20
  100099858  bl      _objc_release
loc_10009985c:
  10009985c  ldur    x8, [x29, #-0x58]
  100099860  sub     x8, x27, x8
  100099864  cbnz    x8, loc_100099888                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100099868  sub     sp, x29, #0x50
  10009986c  ldp     x29, x30, [sp, #0x50]
  100099870  ldp     x20, x19, [sp, #0x40]
  100099874  ldp     x22, x21, [sp, #0x30]
  100099878  ldp     x24, x23, [sp, #0x20]
  10009987c  ldp     x26, x25, [sp, #0x10]
  100099880  ldp     x28, x27, [sp], #0x60
  100099884  ret
loc_100099888:
  100099888  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10009988c:
  10009988c  mov     x19, x0
loc_100099890:
  100099890  mov     x0, x20
  100099894  b       loc_1000998d8
loc_100099898:
  100099898  mov     x19, x0
  10009989c  mov     x0, x21
  1000998a0  b       loc_1000998d8
  1000998a4  mov     x19, x0
  1000998a8  b       loc_1000998d4
  1000998ac  b       loc_1000998b8
  1000998b0  mov     x19, x0
  1000998b4  b       loc_1000998d4
loc_1000998b8:
  1000998b8  mov     x19, x0
  1000998bc  b       loc_1000998cc
  1000998c0  mov     x19, x0
  1000998c4  mov     x0, x25
  1000998c8  bl      _objc_release
loc_1000998cc:
  1000998cc  mov     x0, x24
  1000998d0  bl      _objc_release
loc_1000998d4:
  1000998d4  mov     x0, x23
loc_1000998d8:
  1000998d8  bl      _objc_release
  1000998dc  mov     x0, x19
  1000998e0  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000998e4  b       loc_10009988c
  1000998e8  mov     x19, x0
  1000998ec  b       loc_1000998fc
  1000998f0  mov     x19, x0
  1000998f4  mov     x0, x22
  1000998f8  bl      _objc_release
loc_1000998fc:
  1000998fc  mov     x0, x21
loc_100099900:
  100099900  bl      _objc_release
  100099904  b       loc_100099890
  100099908  b       loc_10009988c
  10009990c  b       loc_10009988c
  100099910  b       loc_100099898
  100099914  mov     x19, x0
  100099918  mov     x0, x22
  10009991c  b       loc_100099900
  100099920  mov     x19, x0
  100099924  b       loc_1000998fc

; ======================================================================
; -[ADAmbientManager pause]
; address 0x100099928  size 192  kind objc
; ======================================================================
  100099928  stp     x22, x21, [sp, #-0x30]!
  10009992c  stp     x20, x19, [sp, #0x10]
  100099930  stp     x29, x30, [sp, #0x20]
  100099934  add     x29, sp, #0x20
  100099938  mov     x19, x0
  10009993c  adrp    x8, #0x100420000
  100099940  ldrsw   x21, [x8, #0x10]                         ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  100099944  ldr     x0, [x19, x21]                           ; x0 = self->enemyAmbiantSound
  100099948  adrp    x8, #0x100417000
  10009994c  nop
  100099950  ldr     x20, [x8, #0x598]
  100099954  mov     x1, x20
  100099958  bl      _objc_msgSend                            ; [self->enemyAmbiantSound playing]
  10009995c  cbz     w0, loc_100099974                        ; if ([self->enemyAmbiantSound playing] == 0)
  100099960  ldr     x0, [x19, x21]                           ; x0 = self->enemyAmbiantSound
  100099964  adrp    x8, #0x100419000
  100099968  nop
  10009996c  ldr     x1, [x8, #0x110]
  100099970  bl      _objc_msgSend                            ; [self->enemyAmbiantSound pause]
loc_100099974:
  100099974  adrp    x8, #0x100420000
  100099978  ldrsw   x21, [x8, #8]                            ; ivar offset ADAmbientManager.thunderSound (+0x18)
  10009997c  ldr     x0, [x19, x21]                           ; x0 = self->thunderSound
  100099980  mov     x1, x20
  100099984  bl      _objc_msgSend                            ; [self->thunderSound playing]
  100099988  cbz     w0, loc_1000999a0                        ; if ([self->thunderSound playing] == 0)
  10009998c  ldr     x0, [x19, x21]                           ; x0 = self->thunderSound
  100099990  adrp    x8, #0x100419000
  100099994  nop
  100099998  ldr     x1, [x8, #0x110]
  10009999c  bl      _objc_msgSend                            ; [self->thunderSound pause]
loc_1000999a0:
  1000999a0  adrp    x8, #0x10041f000
  1000999a4  ldrsw   x21, [x8, #0xff8]                        ; ivar offset ADAmbientManager.baseSound (+0x20)
  1000999a8  ldr     x0, [x19, x21]                           ; x0 = self->baseSound
  1000999ac  mov     x1, x20
  1000999b0  bl      _objc_msgSend                            ; [self->baseSound playing]
  1000999b4  cbz     w0, loc_1000999d8                        ; if ([self->baseSound playing] == 0)
  1000999b8  ldr     x0, [x19, x21]                           ; x0 = self->baseSound
  1000999bc  adrp    x8, #0x100419000
  1000999c0  nop
  1000999c4  ldr     x1, [x8, #0x110]
  1000999c8  ldp     x29, x30, [sp, #0x20]
  1000999cc  ldp     x20, x19, [sp, #0x10]
  1000999d0  ldp     x22, x21, [sp], #0x30
  1000999d4  b       _objc_msgSend                            ; [self->baseSound pause]
loc_1000999d8:
  1000999d8  ldp     x29, x30, [sp, #0x20]
  1000999dc  ldp     x20, x19, [sp, #0x10]
  1000999e0  ldp     x22, x21, [sp], #0x30
  1000999e4  ret

; ======================================================================
; -[ADAmbientManager resume]
; address 0x1000999e8  size 132  kind objc
; ======================================================================
  1000999e8  stp     x20, x19, [sp, #-0x20]!
  1000999ec  stp     x29, x30, [sp, #0x10]
  1000999f0  add     x29, sp, #0x10
  1000999f4  mov     x19, x0
  1000999f8  adrp    x8, #0x100420000
  1000999fc  ldrsw   x8, [x8, #0x10]                          ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  100099a00  ldr     x0, [x19, x8]                            ; x0 = self->enemyAmbiantSound
  100099a04  cbz     x0, loc_100099a18                        ; if (self->enemyAmbiantSound == 0)
  100099a08  adrp    x8, #0x100419000
  100099a0c  nop
  100099a10  ldr     x1, [x8, #0x128]
  100099a14  bl      _objc_msgSend                            ; [self->enemyAmbiantSound resume]
loc_100099a18:
  100099a18  adrp    x8, #0x100420000
  100099a1c  ldrsw   x8, [x8, #8]                             ; ivar offset ADAmbientManager.thunderSound (+0x18)
  100099a20  ldr     x0, [x19, x8]                            ; x0 = self->thunderSound
  100099a24  cbz     x0, loc_100099a38                        ; if (self->thunderSound == 0)
  100099a28  adrp    x8, #0x100419000
  100099a2c  nop
  100099a30  ldr     x1, [x8, #0x128]
  100099a34  bl      _objc_msgSend                            ; [self->thunderSound resume]
loc_100099a38:
  100099a38  adrp    x8, #0x10041f000
  100099a3c  ldrsw   x8, [x8, #0xff8]                         ; ivar offset ADAmbientManager.baseSound (+0x20)
  100099a40  ldr     x0, [x19, x8]                            ; x0 = self->baseSound
  100099a44  cbz     x0, loc_100099a60                        ; if (self->baseSound == 0)
  100099a48  adrp    x8, #0x100419000
  100099a4c  nop
  100099a50  ldr     x1, [x8, #0x128]
  100099a54  ldp     x29, x30, [sp, #0x10]
  100099a58  ldp     x20, x19, [sp], #0x20
  100099a5c  b       _objc_msgSend                            ; [self->baseSound resume]
loc_100099a60:
  100099a60  ldp     x29, x30, [sp, #0x10]
  100099a64  ldp     x20, x19, [sp], #0x20
  100099a68  ret

; ======================================================================
; -[ADAmbientManager gameplayViewController]
; address 0x100099a6c  size 32  kind objc
; ======================================================================
  100099a6c  stp     x29, x30, [sp, #-0x10]!
  100099a70  mov     x29, sp
  100099a74  adrp    x8, #0x100420000
  100099a78  ldrsw   x8, [x8, #0x18]                          ; ivar offset ADAmbientManager._gameplayViewController (+0x50)
  100099a7c  add     x0, x0, x8
  100099a80  bl      _objc_loadWeakRetained                   ; objc_loadWeakRetained(x0, _cmd)
  100099a84  ldp     x29, x30, [sp], #0x10
  100099a88  b       _objc_autoreleaseReturnValue

; ======================================================================
; -[ADAmbientManager setGameplayViewController:]
; address 0x100099a8c  size 20  kind objc
; ======================================================================
  100099a8c  adrp    x8, #0x100420000
  100099a90  ldrsw   x8, [x8, #0x18]                          ; ivar offset ADAmbientManager._gameplayViewController (+0x50)
  100099a94  add     x0, x0, x8
  100099a98  mov     x1, x2
  100099a9c  b       _objc_storeWeak                          ; objc_storeWeak(x0, arg1, arg1)

; ======================================================================
; -[ADAmbientManager playlist]
; address 0x100099aa0  size 16  kind objc
; ======================================================================
  100099aa0  adrp    x8, #0x100420000
  100099aa4  ldrsw   x8, [x8, #0x1c]                          ; ivar offset ADAmbientManager._playlist (+0x58)
  100099aa8  ldr     x0, [x0, x8]                             ; x0 = self->_playlist
  100099aac  ret

; ======================================================================
; -[ADAmbientManager setPlaylist:]
; address 0x100099ab0  size 56  kind objc
; ======================================================================
  100099ab0  stp     x20, x19, [sp, #-0x20]!
  100099ab4  stp     x29, x30, [sp, #0x10]
  100099ab8  add     x29, sp, #0x10
  100099abc  mov     x19, x0
  100099ac0  adrp    x8, #0x100420000
  100099ac4  ldrsw   x20, [x8, #0x1c]                         ; ivar offset ADAmbientManager._playlist (+0x58)
  100099ac8  mov     x0, x2
  100099acc  bl      _objc_retain
  100099ad0  ldr     x8, [x19, x20]                           ; x8 = self->_playlist
  100099ad4  str     x0, [x19, x20]                           ; self->_playlist = arg1
  100099ad8  mov     x0, x8
  100099adc  ldp     x29, x30, [sp, #0x10]
  100099ae0  ldp     x20, x19, [sp], #0x20
  100099ae4  b       _objc_release

; ======================================================================
; -[ADAmbientManager stormPLaylist]
; address 0x100099ae8  size 16  kind objc
; ======================================================================
  100099ae8  adrp    x8, #0x100420000
  100099aec  ldrsw   x8, [x8, #0x20]                          ; ivar offset ADAmbientManager._stormPLaylist (+0x60)
  100099af0  ldr     x0, [x0, x8]                             ; x0 = self->_stormPLaylist
  100099af4  ret

; ======================================================================
; -[ADAmbientManager setStormPLaylist:]
; address 0x100099af8  size 56  kind objc
; ======================================================================
  100099af8  stp     x20, x19, [sp, #-0x20]!
  100099afc  stp     x29, x30, [sp, #0x10]
  100099b00  add     x29, sp, #0x10
  100099b04  mov     x19, x0
  100099b08  adrp    x8, #0x100420000
  100099b0c  ldrsw   x20, [x8, #0x20]                         ; ivar offset ADAmbientManager._stormPLaylist (+0x60)
  100099b10  mov     x0, x2
  100099b14  bl      _objc_retain
  100099b18  ldr     x8, [x19, x20]                           ; x8 = self->_stormPLaylist
  100099b1c  str     x0, [x19, x20]                           ; self->_stormPLaylist = arg1
  100099b20  mov     x0, x8
  100099b24  ldp     x29, x30, [sp, #0x10]
  100099b28  ldp     x20, x19, [sp], #0x20
  100099b2c  b       _objc_release

; ======================================================================
; -[ADAmbientManager ambient_sound]
; address 0x100099b30  size 16  kind objc
; ======================================================================
  100099b30  adrp    x8, #0x100420000
  100099b34  ldrsw   x8, [x8, #0x24]                          ; ivar offset ADAmbientManager._ambient_sound (+0x68)
  100099b38  ldr     x0, [x0, x8]                             ; x0 = self->_ambient_sound
  100099b3c  ret

; ======================================================================
; -[ADAmbientManager setAmbient_sound:]
; address 0x100099b40  size 56  kind objc
; ======================================================================
  100099b40  stp     x20, x19, [sp, #-0x20]!
  100099b44  stp     x29, x30, [sp, #0x10]
  100099b48  add     x29, sp, #0x10
  100099b4c  mov     x19, x0
  100099b50  adrp    x8, #0x100420000
  100099b54  ldrsw   x20, [x8, #0x24]                         ; ivar offset ADAmbientManager._ambient_sound (+0x68)
  100099b58  mov     x0, x2
  100099b5c  bl      _objc_retain
  100099b60  ldr     x8, [x19, x20]                           ; x8 = self->_ambient_sound
  100099b64  str     x0, [x19, x20]                           ; self->_ambient_sound = arg1
  100099b68  mov     x0, x8
  100099b6c  ldp     x29, x30, [sp, #0x10]
  100099b70  ldp     x20, x19, [sp], #0x20
  100099b74  b       _objc_release

; ======================================================================
; -[ADAmbientManager .cxx_destruct]
; address 0x100099b78  size 240  kind objc
; ======================================================================
  100099b78  stp     x20, x19, [sp, #-0x20]!
  100099b7c  stp     x29, x30, [sp, #0x10]
  100099b80  add     x29, sp, #0x10
  100099b84  mov     x19, x0
  100099b88  adrp    x8, #0x100420000
  100099b8c  ldrsw   x8, [x8, #0x24]                          ; ivar offset ADAmbientManager._ambient_sound (+0x68)
  100099b90  add     x0, x19, x8
  100099b94  mov     x1, #0
  100099b98  bl      _objc_storeStrong
  100099b9c  adrp    x8, #0x100420000
  100099ba0  ldrsw   x8, [x8, #0x20]                          ; ivar offset ADAmbientManager._stormPLaylist (+0x60)
  100099ba4  add     x0, x19, x8
  100099ba8  mov     x1, #0
  100099bac  bl      _objc_storeStrong
  100099bb0  adrp    x8, #0x100420000
  100099bb4  ldrsw   x8, [x8, #0x1c]                          ; ivar offset ADAmbientManager._playlist (+0x58)
  100099bb8  add     x0, x19, x8
  100099bbc  mov     x1, #0
  100099bc0  bl      _objc_storeStrong
  100099bc4  adrp    x8, #0x100420000
  100099bc8  ldrsw   x8, [x8, #0x18]                          ; ivar offset ADAmbientManager._gameplayViewController (+0x50)
  100099bcc  add     x0, x19, x8
  100099bd0  bl      _objc_destroyWeak
  100099bd4  adrp    x8, #0x100420000
  100099bd8  ldrsw   x8, [x8, #0x10]                          ; ivar offset ADAmbientManager.enemyAmbiantSound (+0x48)
  100099bdc  add     x0, x19, x8
  100099be0  mov     x1, #0
  100099be4  bl      _objc_storeStrong
  100099be8  adrp    x8, #0x100420000
  100099bec  ldrsw   x8, [x8, #0xc]                           ; ivar offset ADAmbientManager.enemiesAmbiantCount (+0x38)
  100099bf0  add     x0, x19, x8
  100099bf4  mov     x1, #0
  100099bf8  bl      _objc_storeStrong
  100099bfc  adrp    x8, #0x100420000
  100099c00  ldrsw   x8, [x8, #4]                             ; ivar offset ADAmbientManager.enemiesPlaylist (+0x30)
  100099c04  add     x0, x19, x8
  100099c08  mov     x1, #0
  100099c0c  bl      _objc_storeStrong
  100099c10  adrp    x8, #0x10041f000
  100099c14  ldrsw   x8, [x8, #0xff8]                         ; ivar offset ADAmbientManager.baseSound (+0x20)
  100099c18  add     x0, x19, x8
  100099c1c  mov     x1, #0
  100099c20  bl      _objc_storeStrong
  100099c24  adrp    x8, #0x100420000
  100099c28  ldrsw   x8, [x8, #8]                             ; ivar offset ADAmbientManager.thunderSound (+0x18)
  100099c2c  add     x0, x19, x8
  100099c30  mov     x1, #0
  100099c34  bl      _objc_storeStrong
  100099c38  adrp    x8, #0x100420000
  100099c3c  ldrsw   x8, [x8]                                 ; ivar offset ADAmbientManager.scare_sound (+0x10)
  100099c40  add     x0, x19, x8
  100099c44  mov     x1, #0
  100099c48  bl      _objc_storeStrong
  100099c4c  mov     x1, #0
  100099c50  adrp    x8, #0x10041f000
  100099c54  ldrsw   x8, [x8, #0xff0]                         ; ivar offset ADAmbientManager.ambientName (+0x8)
  100099c58  add     x0, x19, x8
  100099c5c  ldp     x29, x30, [sp, #0x10]
  100099c60  ldp     x20, x19, [sp], #0x20
  100099c64  b       _objc_storeStrong
