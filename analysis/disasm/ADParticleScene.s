// unit ADParticleScene — 6 functions
//   0x100039374     716  -[ADParticleScene initWithSize:]
//   0x100039640     160  -[ADParticleScene willMoveFromView:]
//   0x1000396e0      40  -[ADParticleScene willMoveFromView:]_block_invoke
//   0x100039708      16  -[ADParticleScene emitter]
//   0x100039718      12  -[ADParticleScene setEmitter:]
//   0x100039724      20  -[ADParticleScene .cxx_destruct]

; ======================================================================
; -[ADParticleScene initWithSize:]
; address 0x100039374  size 716  kind objc
; ======================================================================
  100039374  stp     d9, d8, [sp, #-0x50]!
  100039378  stp     x24, x23, [sp, #0x10]
  10003937c  stp     x22, x21, [sp, #0x20]
  100039380  stp     x20, x19, [sp, #0x30]
  100039384  stp     x29, x30, [sp, #0x40]
  100039388  add     x29, sp, #0x40
  10003938c  sub     sp, sp, #0x10
  100039390  str     x0, [sp]
  100039394  adrp    x8, #0x10041e000
  100039398  ldr     x8, [x8, #0xca8]
  10003939c  str     x8, [sp, #8]
  1000393a0  adrp    x8, #0x100418000
  1000393a4  nop
  1000393a8  ldr     x1, [x8, #0x560]
  1000393ac  mov     x20, #0
  1000393b0  mov     x0, sp
  1000393b4  bl      _objc_msgSendSuper2                      ; [super initWithSize:{arg1.0, arg1.1}]
  1000393b8  mov     x19, x0
  1000393bc  cbz     x19, loc_1000395c0                       ; if (self == 0)
  1000393c0  mov     x20, x19
  1000393c4  adrp    x8, #0x10041e000
  1000393c8  ldr     x0, [x8, #0x158]                         ; class SKSpriteNode
  1000393cc  adrp    x8, #0x100418000
  1000393d0  nop
  1000393d4  ldr     x1, [x8, #0x568]
  1000393d8  adrp    x2, #0x1003bc000
  1000393dc  add     x2, x2, #0x550                           ; @"background_main"
  1000393e0  bl      _objc_msgSend                            ; [SKSpriteNode spriteNodeWithImageNamed:@"background_main"]
  1000393e4  mov     x29, x29
  1000393e8  bl      _objc_retainAutoreleasedReturnValue
  1000393ec  mov     x20, x0
  1000393f0  adrp    x8, #0x100416000
  1000393f4  nop
  1000393f8  ldr     x21, [x8, #0xf38]
  1000393fc  mov     x0, x19
  100039400  mov     x1, x21
  100039404  bl      _objc_msgSend                            ; [self frame]
  100039408  bl      _CGRectGetMidX                           ; CGRectGetMidX()
  10003940c  mov     v8.16b, v0.16b
  100039410  mov     x0, x19
  100039414  mov     x1, x21
  100039418  bl      _objc_msgSend                            ; [self frame]
  10003941c  bl      _CGRectGetMidY                           ; CGRectGetMidY()
  100039420  mov     v1.16b, v0.16b
  100039424  adrp    x8, #0x100417000
  100039428  nop
  10003942c  ldr     x1, [x8, #0x20]
  100039430  mov     x0, x20
  100039434  mov     v0.16b, v8.16b
  100039438  bl      _objc_msgSend                            ; [[SKSpriteNode spriteNodeWithImageNamed:@"background_main"] setPosition:{d0, d1}]
  10003943c  adrp    x8, #0x100417000
  100039440  nop
  100039444  ldr     x1, [x8, #0x428]
  100039448  adrp    x2, #0x1003bc000
  10003944c  add     x2, x2, #0x570                           ; @"BACKGROUND"
  100039450  mov     x0, x20
  100039454  bl      _objc_msgSend                            ; [[SKSpriteNode spriteNodeWithImageNamed:@"background_main"] setName:@"BACKGROUND"]
  100039458  adrp    x8, #0x100417000
  10003945c  nop
  100039460  ldr     x1, [x8, #0xf78]
  100039464  adrp    x8, #0x100181000
  100039468  ldr     d0, [x8, #0xb60]                         ; d0 = 1.10000002
  10003946c  mov     x0, x20
  100039470  bl      _objc_msgSend                            ; [[SKSpriteNode spriteNodeWithImageNamed:@"background_main"] setScale:1.1]
  100039474  adrp    x8, #0x100418000
  100039478  nop
  10003947c  ldr     x21, [x8, #0x570]
  100039480  mov     x0, x19
  100039484  mov     x1, x21
  100039488  mov     x2, x20
  10003948c  bl      _objc_msgSend                            ; [self addChild:[SKSpriteNode spriteNodeWithImageNamed:@"background_main"]]
  100039490  adrp    x8, #0x10041d000
  100039494  ldr     x0, [x8, #0xfa0]                         ; class UIColor
  100039498  adrp    x8, #0x100417000
  10003949c  nop
  1000394a0  ldr     x1, [x8, #0x180]
  1000394a4  bl      _objc_msgSend                            ; [UIColor blackColor]
  1000394a8  mov     x29, x29
  1000394ac  bl      _objc_retainAutoreleasedReturnValue
  1000394b0  mov     x22, x0
  1000394b4  adrp    x8, #0x100417000
  1000394b8  nop
  1000394bc  ldr     x1, [x8, #0x188]
  1000394c0  mov     x0, x19
  1000394c4  mov     x2, x22
  1000394c8  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor blackColor]]
  1000394cc  mov     x0, x22
  1000394d0  bl      _objc_release
  1000394d4  adrp    x8, #0x10041d000
  1000394d8  ldr     x24, [x8, #0xf48]                        ; class NSKeyedUnarchiver
  1000394dc  nop
  1000394e0  ldr     x0, [x8, #0xee8]                         ; class NSBundle
  1000394e4  adrp    x8, #0x100416000
  1000394e8  nop
  1000394ec  ldr     x1, [x8, #0xb58]
  1000394f0  bl      _objc_msgSend                            ; [NSBundle mainBundle]
  1000394f4  mov     x29, x29
  1000394f8  bl      _objc_retainAutoreleasedReturnValue
  1000394fc  mov     x22, x0
  100039500  adrp    x8, #0x100417000
  100039504  nop
  100039508  ldr     x1, [x8, #0x780]
  10003950c  adrp    x2, #0x1003bc000
  100039510  add     x2, x2, #0x590                           ; @"MyParticle"
  100039514  adrp    x3, #0x1003bc000
  100039518  add     x3, x3, #0x5b0                           ; @"sks"
  10003951c  bl      _objc_msgSend                            ; [[NSBundle mainBundle] pathForResource:@"MyParticle" ofType:@"sks"]
  100039520  mov     x29, x29
  100039524  bl      _objc_retainAutoreleasedReturnValue
  100039528  mov     x23, x0
  10003952c  adrp    x8, #0x100418000
  100039530  nop
  100039534  ldr     x1, [x8, #0x578]
  100039538  mov     x0, x24
  10003953c  mov     x2, x23
  100039540  bl      _objc_msgSend                            ; [NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:@"MyParticle" ofType:@"sks"]]
  100039544  mov     x29, x29
  100039548  bl      _objc_retainAutoreleasedReturnValue
  10003954c  mov     x24, x0
  100039550  adrp    x8, #0x100418000
  100039554  nop
  100039558  ldr     x1, [x8, #0x580]
  10003955c  mov     x0, x19
  100039560  mov     x2, x24
  100039564  bl      _objc_msgSend                            ; [self setEmitter:[NSKeyedUnarchiver unarchiveObjectWithFile:[[NSBundle mainBundle] pathForResource:@"MyParticle" ofType:@"sks"]]]
  100039568  mov     x0, x24
  10003956c  bl      _objc_release
  100039570  mov     x0, x23
  100039574  bl      _objc_release
  100039578  mov     x0, x22
  10003957c  bl      _objc_release
  100039580  adrp    x8, #0x100418000
  100039584  nop
  100039588  ldr     x1, [x8, #0x588]
  10003958c  mov     x0, x19
  100039590  bl      _objc_msgSend                            ; [self emitter]
  100039594  mov     x29, x29
  100039598  bl      _objc_retainAutoreleasedReturnValue
  10003959c  mov     x22, x0
  1000395a0  mov     x0, x19
  1000395a4  mov     x1, x21
  1000395a8  mov     x2, x22
  1000395ac  bl      _objc_msgSend                            ; [self addChild:[self emitter]]
  1000395b0  mov     x0, x22
  1000395b4  bl      _objc_release
  1000395b8  mov     x0, x20
  1000395bc  bl      _objc_release
loc_1000395c0:
  1000395c0  mov     x0, x19
  1000395c4  sub     sp, x29, #0x40
  1000395c8  ldp     x29, x30, [sp, #0x40]
  1000395cc  ldp     x20, x19, [sp, #0x30]
  1000395d0  ldp     x22, x21, [sp, #0x20]
  1000395d4  ldp     x24, x23, [sp, #0x10]
  1000395d8  ldp     d9, d8, [sp], #0x50
  1000395dc  ret
  1000395e0  mov     x21, x0
  1000395e4  b       loc_100039628
  1000395e8  mov     x21, x0
  1000395ec  mov     x19, x20
  1000395f0  b       loc_100039630
  1000395f4  b       loc_10003961c
  1000395f8  b       loc_10003961c
  1000395fc  mov     x21, x0
  100039600  b       loc_100039610
  100039604  mov     x21, x0
  100039608  mov     x0, x24
  10003960c  bl      _objc_release
loc_100039610:
  100039610  mov     x0, x23
  100039614  bl      _objc_release
  100039618  b       loc_100039620
loc_10003961c:
  10003961c  mov     x21, x0
loc_100039620:
  100039620  mov     x0, x22
  100039624  bl      _objc_release
loc_100039628:
  100039628  mov     x0, x20
  10003962c  bl      _objc_release
loc_100039630:
  100039630  mov     x0, x19
  100039634  bl      _objc_release
  100039638  mov     x0, x21
  10003963c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADParticleScene willMoveFromView:]
; address 0x100039640  size 160  kind objc
; ======================================================================
  100039640  stp     x20, x19, [sp, #-0x20]!
  100039644  stp     x29, x30, [sp, #0x10]
  100039648  add     x29, sp, #0x10
  10003964c  mov     x19, x0
  100039650  adrp    x8, #0x100418000
  100039654  nop
  100039658  ldr     x1, [x8, #0x590]
  10003965c  bl      _objc_msgSend                            ; [self children]
  100039660  mov     x29, x29
  100039664  bl      _objc_retainAutoreleasedReturnValue
  100039668  mov     x20, x0
  10003966c  adrp    x8, #0x100418000
  100039670  nop
  100039674  ldr     x1, [x8, #0x5a0]
  100039678  adrp    x2, #0x1003b1000
  10003967c  add     x2, x2, #0x590                           ; ^{-[ADParticleScene willMoveFromView:]_block_invoke}
  100039680  bl      _objc_msgSend                            ; [[self children] enumerateObjectsUsingBlock:^{-[ADParticleScene willMoveFromView:]_block_invoke}]
  100039684  mov     x0, x20
  100039688  bl      _objc_release
  10003968c  adrp    x8, #0x100418000
  100039690  nop
  100039694  ldr     x1, [x8, #0x5a8]
  100039698  mov     x0, x19
  10003969c  bl      _objc_msgSend                            ; [self removeAllChildren]
  1000396a0  adrp    x8, #0x100418000
  1000396a4  nop
  1000396a8  ldr     x1, [x8, #0x580]
  1000396ac  mov     x2, #0
  1000396b0  mov     x0, x19
  1000396b4  bl      _objc_msgSend                            ; [self setEmitter:0]
  1000396b8  ldp     x29, x30, [sp, #0x10]
  1000396bc  ldp     x20, x19, [sp], #0x20
  1000396c0  ret
  1000396c4  mov     x19, x0
  1000396c8  b       loc_1000396d8
  1000396cc  mov     x19, x0
  1000396d0  mov     x0, x20
  1000396d4  bl      _objc_release
loc_1000396d8:
  1000396d8  mov     x0, x19
  1000396dc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADParticleScene willMoveFromView:]_block_invoke
; address 0x1000396e0  size 40  kind block
; ======================================================================
  1000396e0  stp     x29, x30, [sp, #-0x10]!
  1000396e4  mov     x29, sp
  1000396e8  adrp    x8, #0x100418000
  1000396ec  nop
  1000396f0  ldr     x8, [x8, #0x598]
  1000396f4  mov     x0, x1
  1000396f8  mov     x1, x8
  1000396fc  bl      _objc_msgSend                            ; [blockarg1 removeFromParent]
  100039700  ldp     x29, x30, [sp], #0x10
  100039704  ret

; ======================================================================
; -[ADParticleScene emitter]
; address 0x100039708  size 16  kind objc
; ======================================================================
  100039708  adrp    x8, #0x10041f000
  10003970c  ldrsw   x2, [x8, #0x884]                         ; ivar offset ADParticleScene._emitter (+0x8)
  100039710  mov     w3, #1
  100039714  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADParticleScene setEmitter:]
; address 0x100039718  size 12  kind objc
; ======================================================================
  100039718  adrp    x8, #0x10041f000
  10003971c  ldrsw   x3, [x8, #0x884]                         ; ivar offset ADParticleScene._emitter (+0x8)
  100039720  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADParticleScene .cxx_destruct]
; address 0x100039724  size 20  kind objc
; ======================================================================
  100039724  mov     x1, #0
  100039728  adrp    x8, #0x10041f000
  10003972c  ldrsw   x8, [x8, #0x884]                         ; ivar offset ADParticleScene._emitter (+0x8)
  100039730  add     x0, x0, x8
  100039734  b       _objc_storeStrong
