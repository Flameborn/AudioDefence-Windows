// unit ADAirStrikePowerUp — 14 functions
//   0x10009d4ac     240  -[ADAirStrikePowerUp preload]
//   0x10009d59c     472  -[ADAirStrikePowerUp use]
//   0x10009d774     204  -[ADAirStrikePowerUp update:]
//   0x10009d840     100  -[ADAirStrikePowerUp randomizeNextExplosionTime]
//   0x10009d8a4     956  -[ADAirStrikePowerUp playRandomExplosion]
//   0x10009dc60     324  -[ADAirStrikePowerUp clean]
//   0x10009dda4      20  -[ADAirStrikePowerUp dispersal]
//   0x10009ddb8      20  -[ADAirStrikePowerUp setDispersal:]
//   0x10009ddcc      20  -[ADAirStrikePowerUp radius]
//   0x10009dde0      20  -[ADAirStrikePowerUp setRadius:]
//   0x10009ddf4      20  -[ADAirStrikePowerUp damages]
//   0x10009de08      20  -[ADAirStrikePowerUp setDamages:]
//   0x10009de1c      16  -[ADAirStrikePowerUp numberOfExplosions]
//   0x10009de2c      16  -[ADAirStrikePowerUp setNumberOfExplosions:]

; ======================================================================
; -[ADAirStrikePowerUp preload]
; address 0x10009d4ac  size 240  kind objc
; ======================================================================
  10009d4ac  stp     x22, x21, [sp, #-0x30]!
  10009d4b0  stp     x20, x19, [sp, #0x10]
  10009d4b4  stp     x29, x30, [sp, #0x20]
  10009d4b8  add     x29, sp, #0x20
  10009d4bc  mov     x19, x0
  10009d4c0  adrp    x8, #0x10041d000
  10009d4c4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10009d4c8  adrp    x8, #0x100417000
  10009d4cc  nop
  10009d4d0  ldr     x1, [x8, #0x4f0]
  10009d4d4  bl      _objc_msgSend                            ; [S3DEngine engine]
  10009d4d8  mov     x29, x29
  10009d4dc  bl      _objc_retainAutoreleasedReturnValue
  10009d4e0  mov     x20, x0
  10009d4e4  adrp    x8, #0x100417000
  10009d4e8  nop
  10009d4ec  ldr     x1, [x8, #0x4f8]
  10009d4f0  adrp    x2, #0x1003c0000
  10009d4f4  add     x2, x2, #0x5f0                           ; @"airstrike"
  10009d4f8  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"airstrike"]
  10009d4fc  mov     x29, x29
  10009d500  bl      _objc_retainAutoreleasedReturnValue
  10009d504  mov     x21, x0
  10009d508  adrp    x8, #0x100417000
  10009d50c  nop
  10009d510  ldr     x1, [x8, #0x500]
  10009d514  mov     x0, x19
  10009d518  mov     x2, x21
  10009d51c  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:@"airstrike"]]
  10009d520  mov     x0, x21
  10009d524  bl      _objc_release
  10009d528  mov     x0, x20
  10009d52c  bl      _objc_release
  10009d530  adrp    x8, #0x100416000
  10009d534  nop
  10009d538  ldr     x1, [x8, #0xc98]
  10009d53c  mov     x0, x19
  10009d540  bl      _objc_msgSend                            ; [self playlist]
  10009d544  mov     x29, x29
  10009d548  bl      _objc_retainAutoreleasedReturnValue
  10009d54c  mov     x20, x0
  10009d550  adrp    x8, #0x100417000
  10009d554  nop
  10009d558  ldr     x1, [x8, #0x508]
  10009d55c  bl      _objc_msgSend                            ; [[self playlist] activate]
  10009d560  mov     x0, x20
  10009d564  ldp     x29, x30, [sp, #0x20]
  10009d568  ldp     x20, x19, [sp, #0x10]
  10009d56c  ldp     x22, x21, [sp], #0x30
  10009d570  b       _objc_release
  10009d574  b       loc_10009d588
  10009d578  mov     x19, x0
  10009d57c  mov     x0, x21
  10009d580  bl      _objc_release
  10009d584  b       loc_10009d58c
loc_10009d588:
  10009d588  mov     x19, x0
loc_10009d58c:
  10009d58c  mov     x0, x20
  10009d590  bl      _objc_release
  10009d594  mov     x0, x19
  10009d598  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAirStrikePowerUp use]
; address 0x10009d59c  size 472  kind objc
; ======================================================================
  10009d59c  stp     x22, x21, [sp, #-0x30]!
  10009d5a0  stp     x20, x19, [sp, #0x10]
  10009d5a4  stp     x29, x30, [sp, #0x20]
  10009d5a8  add     x29, sp, #0x20
  10009d5ac  mov     x19, x0
  10009d5b0  adrp    x8, #0x100416000
  10009d5b4  nop
  10009d5b8  ldr     x1, [x8, #0xc98]
  10009d5bc  bl      _objc_msgSend                            ; [self playlist]
  10009d5c0  mov     x29, x29
  10009d5c4  bl      _objc_retainAutoreleasedReturnValue
  10009d5c8  mov     x21, x0
  10009d5cc  adrp    x8, #0x100417000
  10009d5d0  nop
  10009d5d4  ldr     x1, [x8, #0x990]
  10009d5d8  adrp    x2, #0x1003c0000
  10009d5dc  add     x2, x2, #0x610                           ; @"airstrike_plane"
  10009d5e0  bl      _objc_msgSend                            ; [[self playlist] S3DSound:@"airstrike_plane"]
  10009d5e4  mov     x29, x29
  10009d5e8  bl      _objc_retainAutoreleasedReturnValue
  10009d5ec  mov     x20, x0
  10009d5f0  mov     x0, x21
  10009d5f4  bl      _objc_release
  10009d5f8  adrp    x8, #0x100416000
  10009d5fc  nop
  10009d600  ldr     x1, [x8, #0xcb8]
  10009d604  mov     w2, #0
  10009d608  mov     x0, x20
  10009d60c  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"airstrike_plane"] play:0]
  10009d610  adrp    x8, #0x100416000
  10009d614  nop
  10009d618  ldr     x1, [x8, #0xcb0]
  10009d61c  nop
  10009d620  ldr     s0, #0x100181c10                         ; s0 = 0.300000012
  10009d624  mov     x0, x20
  10009d628  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"airstrike_plane"] setGain:0.3]
  10009d62c  adrp    x8, #0x100417000
  10009d630  nop
  10009d634  ldr     x1, [x8, #0x428]
  10009d638  adrp    x2, #0x1003c0000
  10009d63c  add     x2, x2, #0x5f0                           ; @"airstrike"
  10009d640  mov     x0, x19
  10009d644  bl      _objc_msgSend                            ; [self setName:@"airstrike"]
  10009d648  adrp    x8, #0x100419000
  10009d64c  nop
  10009d650  ldr     x1, [x8, #0xfd8]
  10009d654  fmov    s0, #6.00000000
  10009d658  mov     x0, x19
  10009d65c  bl      _objc_msgSend                            ; [self setRadius:6]
  10009d660  adrp    x8, #0x100417000
  10009d664  nop
  10009d668  ldr     x1, [x8, #0x470]
  10009d66c  fmov    s0, #20.00000000
  10009d670  mov     x0, x19
  10009d674  bl      _objc_msgSend                            ; [self setDamages:20]
  10009d678  adrp    x8, #0x100417000
  10009d67c  nop
  10009d680  ldr     x1, [x8, #0x4a0]
  10009d684  nop
  10009d688  ldr     s0, #0x100181d04                         ; s0 = 180.0
  10009d68c  mov     x0, x19
  10009d690  bl      _objc_msgSend                            ; [self setDispersal:180]
  10009d694  adrp    x8, #0x10041a000
  10009d698  nop
  10009d69c  ldr     x1, [x8, #0x250]
  10009d6a0  mov     w2, #0xa
  10009d6a4  mov     x0, x19
  10009d6a8  bl      _objc_msgSend                            ; [self setNumberOfExplosions:10]
  10009d6ac  adrp    x8, #0x100420000
  10009d6b0  adrp    x9, #0x100420000
  10009d6b4  ldrsw   x8, [x8, #0x44]                          ; ivar offset ADAirStrikePowerUp.timeSinceActivation (+0x8)
  10009d6b8  ldrsw   x9, [x9, #0x48]                          ; ivar offset ADAirStrikePowerUp.active (+0xc)
  10009d6bc  str     wzr, [x19, x8]                           ; self->timeSinceActivation = 0
  10009d6c0  mov     w8, #1
  10009d6c4  strb    w8, [x19, x9]                            ; self->active = 1
  10009d6c8  adrp    x8, #0x100419000
  10009d6cc  nop
  10009d6d0  ldr     x1, [x8, #0xfe8]
  10009d6d4  mov     x0, x19
  10009d6d8  bl      _objc_msgSend                            ; [self randomizeNextExplosionTime]
  10009d6dc  adrp    x8, #0x100420000
  10009d6e0  ldrsw   x8, [x8, #0x4c]                          ; ivar offset ADAirStrikePowerUp.currentExplosion (+0x14)
  10009d6e4  str     wzr, [x19, x8]                           ; self->currentExplosion = 0
  10009d6e8  adrp    x8, #0x10041d000
  10009d6ec  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  10009d6f0  adrp    x8, #0x100417000
  10009d6f4  nop
  10009d6f8  ldr     x1, [x8, #0x4f0]
  10009d6fc  bl      _objc_msgSend                            ; [S3DEngine engine]
  10009d700  mov     x29, x29
  10009d704  bl      _objc_retainAutoreleasedReturnValue
  10009d708  mov     x21, x0
  10009d70c  adrp    x8, #0x100419000
  10009d710  nop
  10009d714  ldr     x1, [x8, #0x98]
  10009d718  bl      _objc_msgSend                            ; [[S3DEngine engine] headOrientation]
  10009d71c  adrp    x8, #0x100420000
  10009d720  ldrsw   x8, [x8, #0x50]                          ; ivar offset ADAirStrikePowerUp.angle (+0x18)
  10009d724  str     s0, [x19, x8]                            ; self->angle = [[S3DEngine engine] headOrientation]
  10009d728  mov     x0, x21
  10009d72c  bl      _objc_release
  10009d730  mov     x0, x20
  10009d734  ldp     x29, x30, [sp, #0x20]
  10009d738  ldp     x20, x19, [sp, #0x10]
  10009d73c  ldp     x22, x21, [sp], #0x30
  10009d740  b       _objc_release
  10009d744  mov     x19, x0
loc_10009d748:
  10009d748  mov     x0, x20
loc_10009d74c:
  10009d74c  bl      _objc_release
  10009d750  mov     x0, x19
  10009d754  bl      __Unwind_Resume                          ; Unwind_Resume()
  10009d758  mov     x19, x0
  10009d75c  mov     x0, x21
  10009d760  b       loc_10009d74c
  10009d764  mov     x19, x0
  10009d768  mov     x0, x21
  10009d76c  bl      _objc_release
  10009d770  b       loc_10009d748

; ======================================================================
; -[ADAirStrikePowerUp update:]
; address 0x10009d774  size 204  kind objc
; ======================================================================
  10009d774  stp     x22, x21, [sp, #-0x30]!
  10009d778  stp     x20, x19, [sp, #0x10]
  10009d77c  stp     x29, x30, [sp, #0x20]
  10009d780  add     x29, sp, #0x20
  10009d784  mov     x19, x0
  10009d788  adrp    x8, #0x100420000
  10009d78c  ldrsw   x20, [x8, #0x48]                         ; ivar offset ADAirStrikePowerUp.active (+0xc)
  10009d790  ldrb    w8, [x19, x20]                           ; w8 = self->active
  10009d794  cbz     w8, loc_10009d830                        ; if (self->active == 0)
  10009d798  adrp    x8, #0x100420000
  10009d79c  ldrsw   x21, [x8, #0x44]                         ; ivar offset ADAirStrikePowerUp.timeSinceActivation (+0x8)
  10009d7a0  ldr     s1, [x19, x21]                           ; s1 = self->timeSinceActivation
  10009d7a4  fadd    s1, s1, s0
  10009d7a8  str     s1, [x19, x21]                           ; self->timeSinceActivation = (self->timeSinceActivation + arg1)
  10009d7ac  fmov    s2, #1.00000000
  10009d7b0  fcmp    s1, s2
  10009d7b4  b.le    loc_10009d830                            ; if ((self->timeSinceActivation + arg1) <= (or unordered) 1)
  10009d7b8  adrp    x8, #0x100420000
  10009d7bc  ldrsw   x8, [x8, #0x54]                          ; ivar offset ADAirStrikePowerUp.nextExplosionTime (+0x10)
  10009d7c0  ldr     s1, [x19, x8]                            ; s1 = self->nextExplosionTime
  10009d7c4  fsub    s0, s1, s0
  10009d7c8  fcmp    s0, #0.0
  10009d7cc  str     s0, [x19, x8]                            ; self->nextExplosionTime = (self->nextExplosionTime - arg1)
  10009d7d0  b.pl    loc_10009d7fc                            ; if ((self->nextExplosionTime - arg1) >= (or unordered) 0.0)
  10009d7d4  adrp    x8, #0x100419000
  10009d7d8  nop
  10009d7dc  ldr     x1, [x8, #0xfe8]
  10009d7e0  mov     x0, x19
  10009d7e4  bl      _objc_msgSend                            ; [self randomizeNextExplosionTime]
  10009d7e8  adrp    x8, #0x100419000
  10009d7ec  nop
  10009d7f0  ldr     x1, [x8, #0xff8]
  10009d7f4  mov     x0, x19
  10009d7f8  bl      _objc_msgSend                            ; [self playRandomExplosion]
loc_10009d7fc:
  10009d7fc  ldr     s0, [x19, x21]                           ; s0 = self->timeSinceActivation
  10009d800  fmov    s1, #8.00000000
  10009d804  fcmp    s0, s1
  10009d808  b.le    loc_10009d830                            ; if (self->timeSinceActivation <= (or unordered) 8)
  10009d80c  strb    wzr, [x19, x20]                          ; self->active = 0
  10009d810  adrp    x8, #0x100419000
  10009d814  nop
  10009d818  ldr     x1, [x8, #0x158]
  10009d81c  mov     x0, x19
  10009d820  ldp     x29, x30, [sp, #0x20]
  10009d824  ldp     x20, x19, [sp, #0x10]
  10009d828  ldp     x22, x21, [sp], #0x30
  10009d82c  b       _objc_msgSend                            ; [self clean]
loc_10009d830:
  10009d830  ldp     x29, x30, [sp, #0x20]
  10009d834  ldp     x20, x19, [sp, #0x10]
  10009d838  ldp     x22, x21, [sp], #0x30
  10009d83c  ret

; ======================================================================
; -[ADAirStrikePowerUp randomizeNextExplosionTime]
; address 0x10009d840  size 100  kind objc
; ======================================================================
  10009d840  stp     x20, x19, [sp, #-0x20]!
  10009d844  stp     x29, x30, [sp, #0x10]
  10009d848  add     x29, sp, #0x10
  10009d84c  mov     x19, x0
  10009d850  adrp    x8, #0x10041a000
  10009d854  nop
  10009d858  ldr     x1, [x8, #0x258]
  10009d85c  bl      _objc_msgSend                            ; [self numberOfExplosions]
  10009d860  scvtf   d0, w0
  10009d864  fmov    d1, #4.00000000
  10009d868  fdiv    d0, d1, d0
  10009d86c  fcvt    s0, d0
  10009d870  adrp    x8, #0x100420000
  10009d874  ldrsw   x8, [x8, #0x54]                          ; ivar offset ADAirStrikePowerUp.nextExplosionTime (+0x10)
  10009d878  fcvt    d1, s0
  10009d87c  nop
  10009d880  ldr     d2, #0x1001819e0                         ; d2 = 0.1
  10009d884  fcmp    d1, d2
  10009d888  nop
  10009d88c  ldr     s1, #0x100181d08                         ; s1 = 0.100000001
  10009d890  fcsel   s0, s1, s0, mi                           ; t1 = ((4 / (float)[self numberOfExplosions]) < 0.1 ? 0.1 : (4 / (float)[self numberOfExplosions]))
  10009d894  str     s0, [x19, x8]                            ; self->nextExplosionTime = t1
  10009d898  ldp     x29, x30, [sp, #0x10]
  10009d89c  ldp     x20, x19, [sp], #0x20
  10009d8a0  ret

; ======================================================================
; -[ADAirStrikePowerUp playRandomExplosion]
; address 0x10009d8a4  size 956  kind objc
; ======================================================================
  10009d8a4  stp     d9, d8, [sp, #-0x60]!
  10009d8a8  stp     x26, x25, [sp, #0x10]
  10009d8ac  stp     x24, x23, [sp, #0x20]
  10009d8b0  stp     x22, x21, [sp, #0x30]
  10009d8b4  stp     x20, x19, [sp, #0x40]
  10009d8b8  stp     x29, x30, [sp, #0x50]
  10009d8bc  add     x29, sp, #0x50
  10009d8c0  sub     sp, sp, #0x30
  10009d8c4  mov     x20, x0
  10009d8c8  adrp    x8, #0x100416000
  10009d8cc  nop
  10009d8d0  ldr     x1, [x8, #0xc98]
  10009d8d4  bl      _objc_msgSend                            ; [self playlist]
  10009d8d8  mov     x29, x29
  10009d8dc  bl      _objc_retainAutoreleasedReturnValue
  10009d8e0  mov     x21, x0
  10009d8e4  adrp    x8, #0x100416000
  10009d8e8  nop
  10009d8ec  ldr     x1, [x8, #0xca0]
  10009d8f0  adrp    x2, #0x1003be000
  10009d8f4  add     x2, x2, #0xb0                            ; @"explosion"
  10009d8f8  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"explosion"]
  10009d8fc  mov     x29, x29
  10009d900  bl      _objc_retainAutoreleasedReturnValue
  10009d904  mov     x19, x0
  10009d908  mov     x0, x21
  10009d90c  bl      _objc_release
  10009d910  adrp    x8, #0x100416000
  10009d914  nop
  10009d918  ldr     x1, [x8, #0xca8]
  10009d91c  mov     w2, #1
  10009d920  mov     x0, x19
  10009d924  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explosion"] setSpatialized:1]
  10009d928  bl      _rand                                    ; rand()
  10009d92c  mov     x21, x0
  10009d930  bl      _rand                                    ; rand()
  10009d934  sxtw    x8, w21
  10009d938  mov     w9, #0x51eb0000
  10009d93c  movk    w9, #0x851f
  10009d940  mul     x8, x8, x9
  10009d944  lsr     x9, x8, #0x3f
  10009d948  asr     x8, x8, #0x25
  10009d94c  add     w8, w8, w9
  10009d950  mov     w9, #0x64
  10009d954  msub    w8, w8, w9, w21
  10009d958  scvtf   d0, w8
  10009d95c  nop
  10009d960  ldr     d1, #0x100181c00                         ; d1 = 200.0
  10009d964  fdiv    d0, d0, d1                               ; t1 = ((float)(rand() - (((rand() * 0x51eb851f) >> 37) + ((rand() * 0x51eb851f) >>> 63)) * 100) / 200)
  10009d968  mov     w8, #2
  10009d96c  bic     w8, w8, w0, lsl #1
  10009d970  sub     w8, w8, #1
  10009d974  scvtf   d1, w8
  10009d978  fmul    d0, d1, d0
  10009d97c  nop
  10009d980  ldr     d1, #0x100181d10                         ; d1 = 0.785398163
  10009d984  fmul    d0, d0, d1
  10009d988  adrp    x8, #0x100420000
  10009d98c  ldrsw   x8, [x8, #0x50]                          ; ivar offset ADAirStrikePowerUp.angle (+0x18)
  10009d990  ldr     s1, [x20, x8]                            ; s1 = self->angle
  10009d994  fcvt    d1, s1
  10009d998  fadd    d0, d0, d1
  10009d99c  fcvt    s0, d0
  10009d9a0  str     s0, [x20, x8]                            ; self->angle = ((((float)((2 &~ (rand() << 1)) - 1) * t1) * 0.785398) + self->angle)
  10009d9a4  adrp    x8, #0x100420000
  10009d9a8  ldrsw   x26, [x8, #0x4c]                         ; ivar offset ADAirStrikePowerUp.currentExplosion (+0x14)
  10009d9ac  ldr     w8, [x20, x26]                           ; w8 = self->currentExplosion
  10009d9b0  add     w8, w8, #1
  10009d9b4  scvtf   s8, w8
  10009d9b8  fcvt    d0, s0
  10009d9bc  bl      ___sincos_stret                          ; d0 = sin(((((float)((2 &~ (rand() << 1)) - 1) * t1) * 0.785398) + self->angle)), d1 = cos(((((float)((2 &~ (rand() << 1)) - 1) * t1) * 0.785398) + self->angle))
  10009d9c0  fcvt    d2, s8
  10009d9c4  fmul    d9, d1, d2                               ; t2 = (cos(((((float)((2 &~ (rand() << 1)) - 1) * t1) * 0.785398) + self->angle)) * (float)(self->currentExplosion + 1))
  10009d9c8  fmul    d8, d2, d0                               ; t3 = ((float)(self->currentExplosion + 1) * sin(((((float)((2 &~ (rand() << 1)) - 1) * t1) * 0.785398) + self->angle)))
  10009d9cc  fcvt    s0, d9
  10009d9d0  fcvt    s1, d8
  10009d9d4  adrp    x8, #0x100417000
  10009d9d8  nop
  10009d9dc  ldr     x1, [x8, #0x38]
  10009d9e0  movi    v2.16b, #0
  10009d9e4  mov     x0, x19
  10009d9e8  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explosion"] setPlanar:{t2, t3, 0}]
  10009d9ec  adrp    x8, #0x100416000
  10009d9f0  nop
  10009d9f4  ldr     x1, [x8, #0xcb0]
  10009d9f8  fmov    s0, #3.00000000
  10009d9fc  mov     x0, x19
  10009da00  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explosion"] setGain:3]
  10009da04  adrp    x8, #0x100416000
  10009da08  nop
  10009da0c  ldr     x1, [x8, #0xcb8]
  10009da10  mov     w2, #0
  10009da14  mov     x0, x19
  10009da18  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"explosion"] play:0]
  10009da1c  mov     v0.16b, v9.16b
  10009da20  mov     v1.16b, v8.16b
  10009da24  bl      _NSStringFromCGPoint                     ; NSStringFromCGPoint([[[self playlist] anySoundContaining:@"explosion"] play:0])
  10009da28  mov     x29, x29
  10009da2c  bl      _objc_retainAutoreleasedReturnValue
  10009da30  mov     x21, x0
  10009da34  str     x21, [sp]
  10009da38  adrp    x0, #0x1003c0000
  10009da3c  add     x0, x0, #0x630                           ; @"position : %@"
  10009da40  bl      _NSLog                                   ; NSLog(@"position : %@", NSStringFromCGPoint([[[self playlist] anySoundContaining:@"explosion"] play:0]))
  10009da44  mov     x0, x21
  10009da48  bl      _objc_release
  10009da4c  adrp    x8, #0x10041d000
  10009da50  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10009da54  adrp    x8, #0x100416000
  10009da58  nop
  10009da5c  ldr     x1, [x8, #0xac8]
  10009da60  bl      _objc_msgSend                            ; [NSDictionary alloc]
  10009da64  mov     x22, x0
  10009da68  adrp    x25, #0x10041d000
  10009da6c  ldr     x21, [x25, #0xf68]                       ; class NSNumber
  10009da70  adrp    x8, #0x100419000
  10009da74  nop
  10009da78  ldr     x1, [x8, #0xff0]
  10009da7c  mov     x0, x20
  10009da80  bl      _objc_msgSend                            ; [self radius]
  10009da84  adrp    x8, #0x100418000
  10009da88  nop
  10009da8c  ldr     x24, [x8, #0x310]
  10009da90  mov     x0, x21
  10009da94  mov     x1, x24
  10009da98  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self radius]]
  10009da9c  mov     x29, x29
  10009daa0  bl      _objc_retainAutoreleasedReturnValue
  10009daa4  mov     x21, x0
  10009daa8  ldr     x23, [x25, #0xf68]                       ; class NSNumber
  10009daac  adrp    x8, #0x100419000
  10009dab0  nop
  10009dab4  ldr     x1, [x8, #0x370]
  10009dab8  mov     x0, x20
  10009dabc  bl      _objc_msgSend                            ; [self damages]
  10009dac0  mov     x0, x23
  10009dac4  mov     x1, x24
  10009dac8  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self damages]]
  10009dacc  mov     x29, x29
  10009dad0  bl      _objc_retainAutoreleasedReturnValue
  10009dad4  mov     x23, x0
  10009dad8  ldr     x25, [x25, #0xf68]                       ; class NSNumber
  10009dadc  adrp    x8, #0x100419000
  10009dae0  nop
  10009dae4  ldr     x1, [x8, #0x378]
  10009dae8  mov     x0, x20
  10009daec  bl      _objc_msgSend                            ; [self dispersal]
  10009daf0  mov     x0, x25
  10009daf4  mov     x1, x24
  10009daf8  bl      _objc_msgSend                            ; [NSNumber numberWithFloat:[self dispersal]]
  10009dafc  mov     x29, x29
  10009db00  bl      _objc_retainAutoreleasedReturnValue
  10009db04  mov     x24, x0
  10009db08  adrp    x8, #0x100419000
  10009db0c  nop
  10009db10  ldr     x1, [x8, #0x510]
  10009db14  adrp    x8, #0x1003ba000
  10009db18  add     x8, x8, #0x550                           ; @"dispersal"
  10009db1c  adrp    x9, #0x1003ba000
  10009db20  add     x9, x9, #0x490                           ; @"damages"
  10009db24  stp     x8, xzr, [sp, #0x20]
  10009db28  stp     x9, x24, [sp, #0x10]
  10009db2c  adrp    x8, #0x1003bf000
  10009db30  add     x8, x8, #0xe50                           ; @"radius"
  10009db34  stp     x8, x23, [sp]
  10009db38  mov     x0, x22
  10009db3c  mov     x2, x21
  10009db40  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithFloat:[self radius]], @"radius", [NSNumber numberWithFloat:[self damages]], @"damages", [NSNumber numberWithFloat:[self dispersal]], @"dispersal", nil]
  10009db44  mov     x22, x0
  10009db48  mov     x0, x24
  10009db4c  bl      _objc_release
  10009db50  mov     x0, x23
  10009db54  bl      _objc_release
  10009db58  mov     x0, x21
  10009db5c  bl      _objc_release
  10009db60  adrp    x8, #0x10041e000
  10009db64  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10009db68  adrp    x8, #0x100417000
  10009db6c  nop
  10009db70  ldr     x1, [x8, #0xaa8]
  10009db74  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10009db78  mov     x29, x29
  10009db7c  bl      _objc_retainAutoreleasedReturnValue
  10009db80  mov     x21, x0
  10009db84  adrp    x8, #0x100419000
  10009db88  nop
  10009db8c  ldr     x1, [x8, #0x400]
  10009db90  adrp    x3, #0x1003c0000
  10009db94  add     x3, x3, #0x5f0                           ; @"airstrike"
  10009db98  mov     w4, #1
  10009db9c  mov     x2, x22
  10009dba0  mov     v0.16b, v9.16b
  10009dba4  mov     v1.16b, v8.16b
  10009dba8  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] solveExplosionWithDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithFloat:[self radius]], @"radius", [NSNumber numberWithFloat:[self damages]], @"damages", [NSNumber numberWithFloat:[self dispersal]], @"dispersal", nil] atPosition:{t2, t3} withWeaponName:@"airstrike" ignoreTinnitus:1]
  10009dbac  mov     x0, x21
  10009dbb0  bl      _objc_release
  10009dbb4  ldr     w8, [x20, x26]                           ; w8 = self->currentExplosion
  10009dbb8  add     w8, w8, #1
  10009dbbc  str     w8, [x20, x26]                           ; self->currentExplosion = (self->currentExplosion + 1)
  10009dbc0  mov     x0, x22
  10009dbc4  bl      _objc_release
  10009dbc8  mov     x0, x19
  10009dbcc  sub     sp, x29, #0x50
  10009dbd0  ldp     x29, x30, [sp, #0x50]
  10009dbd4  ldp     x20, x19, [sp, #0x40]
  10009dbd8  ldp     x22, x21, [sp, #0x30]
  10009dbdc  ldp     x24, x23, [sp, #0x20]
  10009dbe0  ldp     x26, x25, [sp, #0x10]
  10009dbe4  ldp     d9, d8, [sp], #0x60
  10009dbe8  b       _objc_release
  10009dbec  mov     x20, x0
  10009dbf0  b       loc_10009dc50
  10009dbf4  mov     x20, x0
  10009dbf8  b       loc_10009dc2c
  10009dbfc  mov     x20, x0
  10009dc00  b       loc_10009dc24
  10009dc04  mov     x20, x0
  10009dc08  mov     x0, x21
  10009dc0c  b       loc_10009dc54
  10009dc10  mov     x20, x0
  10009dc14  b       loc_10009dc2c
  10009dc18  mov     x20, x0
  10009dc1c  mov     x0, x24
  10009dc20  bl      _objc_release
loc_10009dc24:
  10009dc24  mov     x0, x23
  10009dc28  bl      _objc_release
loc_10009dc2c:
  10009dc2c  mov     x0, x21
  10009dc30  b       loc_10009dc4c
  10009dc34  mov     x20, x0
  10009dc38  b       loc_10009dc48
  10009dc3c  mov     x20, x0
  10009dc40  mov     x0, x21
  10009dc44  bl      _objc_release
loc_10009dc48:
  10009dc48  mov     x0, x22
loc_10009dc4c:
  10009dc4c  bl      _objc_release
loc_10009dc50:
  10009dc50  mov     x0, x19
loc_10009dc54:
  10009dc54  bl      _objc_release
  10009dc58  mov     x0, x20
  10009dc5c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAirStrikePowerUp clean]
; address 0x10009dc60  size 324  kind objc
; ======================================================================
  10009dc60  stp     x22, x21, [sp, #-0x30]!
  10009dc64  stp     x20, x19, [sp, #0x10]
  10009dc68  stp     x29, x30, [sp, #0x20]
  10009dc6c  add     x29, sp, #0x20
  10009dc70  mov     x20, x0
  10009dc74  adrp    x8, #0x100416000
  10009dc78  nop
  10009dc7c  ldr     x1, [x8, #0xc98]
  10009dc80  bl      _objc_msgSend                            ; [self playlist]
  10009dc84  mov     x29, x29
  10009dc88  bl      _objc_retainAutoreleasedReturnValue
  10009dc8c  mov     x19, x0
  10009dc90  adrp    x8, #0x100417000
  10009dc94  nop
  10009dc98  ldr     x1, [x8, #0x618]
  10009dc9c  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  10009dca0  mov     x0, x19
  10009dca4  bl      _objc_release
  10009dca8  adrp    x8, #0x10041e000
  10009dcac  ldr     x0, [x8, #8]                             ; class ADTracker
  10009dcb0  adrp    x8, #0x100416000
  10009dcb4  nop
  10009dcb8  ldr     x1, [x8, #0xac0]
  10009dcbc  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10009dcc0  mov     x29, x29
  10009dcc4  bl      _objc_retainAutoreleasedReturnValue
  10009dcc8  mov     x19, x0
  10009dccc  adrp    x8, #0x10041d000
  10009dcd0  ldr     x0, [x8, #0xfc0]                         ; class ADInGameStats
  10009dcd4  adrp    x8, #0x100417000
  10009dcd8  nop
  10009dcdc  ldr     x1, [x8, #0x228]
  10009dce0  bl      _objc_msgSend                            ; [ADInGameStats singleton]
  10009dce4  mov     x29, x29
  10009dce8  bl      _objc_retainAutoreleasedReturnValue
  10009dcec  mov     x21, x0
  10009dcf0  adrp    x8, #0x10041a000
  10009dcf4  nop
  10009dcf8  ldr     x1, [x8]
  10009dcfc  bl      _objc_msgSend                            ; [[ADInGameStats singleton] enemyKillsWithPowerup]
  10009dd00  mov     x22, x0
  10009dd04  adrp    x8, #0x100417000
  10009dd08  nop
  10009dd0c  ldr     x1, [x8, #0x450]
  10009dd10  mov     x0, x20
  10009dd14  bl      _objc_msgSend                            ; [self name]
  10009dd18  mov     x29, x29
  10009dd1c  bl      _objc_retainAutoreleasedReturnValue
  10009dd20  mov     x20, x0
  10009dd24  adrp    x8, #0x10041a000
  10009dd28  nop
  10009dd2c  ldr     x1, [x8, #8]
  10009dd30  mov     x0, x19
  10009dd34  mov     x2, x22
  10009dd38  mov     x3, x20
  10009dd3c  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] numberOfEnemyKills:[[ADInGameStats singleton] enemyKillsWithPowerup] ByPowerUp:[self name]]
  10009dd40  mov     x0, x20
  10009dd44  bl      _objc_release
  10009dd48  mov     x0, x21
  10009dd4c  bl      _objc_release
  10009dd50  mov     x0, x19
  10009dd54  ldp     x29, x30, [sp, #0x20]
  10009dd58  ldp     x20, x19, [sp, #0x10]
  10009dd5c  ldp     x22, x21, [sp], #0x30
  10009dd60  b       _objc_release
  10009dd64  mov     x20, x0
  10009dd68  b       loc_10009dd8c
  10009dd6c  mov     x20, x0
  10009dd70  b       loc_10009dd94
  10009dd74  mov     x20, x0
  10009dd78  b       loc_10009dd94
  10009dd7c  mov     x1, x20
  10009dd80  mov     x20, x0
  10009dd84  mov     x0, x1
  10009dd88  bl      _objc_release
loc_10009dd8c:
  10009dd8c  mov     x0, x21
  10009dd90  bl      _objc_release
loc_10009dd94:
  10009dd94  mov     x0, x19
  10009dd98  bl      _objc_release
  10009dd9c  mov     x0, x20
  10009dda0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADAirStrikePowerUp dispersal]
; address 0x10009dda4  size 20  kind objc
; ======================================================================
  10009dda4  adrp    x8, #0x100420000
  10009dda8  ldrsw   x8, [x8, #0x58]                          ; ivar offset ADAirStrikePowerUp._dispersal (+0x1c)
  10009ddac  ldr     w8, [x0, x8]                             ; w8 = self->_dispersal
  10009ddb0  fmov    s0, w8
  10009ddb4  ret

; ======================================================================
; -[ADAirStrikePowerUp setDispersal:]
; address 0x10009ddb8  size 20  kind objc
; ======================================================================
  10009ddb8  fmov    w8, s0
  10009ddbc  adrp    x9, #0x100420000
  10009ddc0  ldrsw   x9, [x9, #0x58]                          ; ivar offset ADAirStrikePowerUp._dispersal (+0x1c)
  10009ddc4  str     w8, [x0, x9]                             ; self->_dispersal = arg1
  10009ddc8  ret

; ======================================================================
; -[ADAirStrikePowerUp radius]
; address 0x10009ddcc  size 20  kind objc
; ======================================================================
  10009ddcc  adrp    x8, #0x100420000
  10009ddd0  ldrsw   x8, [x8, #0x5c]                          ; ivar offset ADAirStrikePowerUp._radius (+0x20)
  10009ddd4  ldr     w8, [x0, x8]                             ; w8 = self->_radius
  10009ddd8  fmov    s0, w8
  10009dddc  ret

; ======================================================================
; -[ADAirStrikePowerUp setRadius:]
; address 0x10009dde0  size 20  kind objc
; ======================================================================
  10009dde0  fmov    w8, s0
  10009dde4  adrp    x9, #0x100420000
  10009dde8  ldrsw   x9, [x9, #0x5c]                          ; ivar offset ADAirStrikePowerUp._radius (+0x20)
  10009ddec  str     w8, [x0, x9]                             ; self->_radius = arg1
  10009ddf0  ret

; ======================================================================
; -[ADAirStrikePowerUp damages]
; address 0x10009ddf4  size 20  kind objc
; ======================================================================
  10009ddf4  adrp    x8, #0x100420000
  10009ddf8  ldrsw   x8, [x8, #0x60]                          ; ivar offset ADAirStrikePowerUp._damages (+0x24)
  10009ddfc  ldr     w8, [x0, x8]                             ; w8 = self->_damages
  10009de00  fmov    s0, w8
  10009de04  ret

; ======================================================================
; -[ADAirStrikePowerUp setDamages:]
; address 0x10009de08  size 20  kind objc
; ======================================================================
  10009de08  fmov    w8, s0
  10009de0c  adrp    x9, #0x100420000
  10009de10  ldrsw   x9, [x9, #0x60]                          ; ivar offset ADAirStrikePowerUp._damages (+0x24)
  10009de14  str     w8, [x0, x9]                             ; self->_damages = arg1
  10009de18  ret

; ======================================================================
; -[ADAirStrikePowerUp numberOfExplosions]
; address 0x10009de1c  size 16  kind objc
; ======================================================================
  10009de1c  adrp    x8, #0x100420000
  10009de20  ldrsw   x8, [x8, #0x64]                          ; ivar offset ADAirStrikePowerUp._numberOfExplosions (+0x28)
  10009de24  ldr     w0, [x0, x8]                             ; w0 = self->_numberOfExplosions
  10009de28  ret

; ======================================================================
; -[ADAirStrikePowerUp setNumberOfExplosions:]
; address 0x10009de2c  size 16  kind objc
; ======================================================================
  10009de2c  adrp    x8, #0x100420000
  10009de30  ldrsw   x8, [x8, #0x64]                          ; ivar offset ADAirStrikePowerUp._numberOfExplosions (+0x28)
  10009de34  str     w2, [x0, x8]                             ; self->_numberOfExplosions = arg1
  10009de38  ret
