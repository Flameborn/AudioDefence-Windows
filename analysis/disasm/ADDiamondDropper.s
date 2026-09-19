// unit ADDiamondDropper — 6 functions
//   0x10007e2bc     148  -[ADDiamondDropper spawn]
//   0x10007e350    1128  -[ADDiamondDropper update:]
//   0x10007e7b8      72  -[ADDiamondDropper glow]
//   0x10007e800     404  -[ADDiamondDropper die]
//   0x10007e994      20  -[ADDiamondDropper die]_block_invoke
//   0x10007e9a8     104  -[ADDiamondDropper initSounds]

; ======================================================================
; -[ADDiamondDropper spawn]
; address 0x10007e2bc  size 148  kind objc
; ======================================================================
  10007e2bc  stp     x20, x19, [sp, #-0x20]!
  10007e2c0  stp     x29, x30, [sp, #0x10]
  10007e2c4  add     x29, sp, #0x10
  10007e2c8  sub     sp, sp, #0x10
  10007e2cc  str     x0, [sp]
  10007e2d0  adrp    x8, #0x10041e000
  10007e2d4  ldr     x8, [x8, #0xe30]
  10007e2d8  str     x8, [sp, #8]
  10007e2dc  adrp    x8, #0x100416000
  10007e2e0  nop
  10007e2e4  ldr     x1, [x8, #0xfd8]
  10007e2e8  mov     x0, sp
  10007e2ec  bl      _objc_msgSendSuper2                      ; [super spawn]
  10007e2f0  adrp    x8, #0x10041e000
  10007e2f4  ldr     x0, [x8, #8]                             ; class ADTracker
  10007e2f8  adrp    x8, #0x100416000
  10007e2fc  nop
  10007e300  ldr     x1, [x8, #0xac0]
  10007e304  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10007e308  mov     x29, x29
  10007e30c  bl      _objc_retainAutoreleasedReturnValue
  10007e310  mov     x19, x0
  10007e314  adrp    x8, #0x100419000
  10007e318  nop
  10007e31c  ldr     x1, [x8, #0xc58]
  10007e320  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] diamondAppeared]
  10007e324  mov     x0, x19
  10007e328  bl      _objc_release
  10007e32c  sub     sp, x29, #0x10
  10007e330  ldp     x29, x30, [sp, #0x10]
  10007e334  ldp     x20, x19, [sp], #0x20
  10007e338  ret
  10007e33c  mov     x20, x0
  10007e340  mov     x0, x19
  10007e344  bl      _objc_release
  10007e348  mov     x0, x20
  10007e34c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDiamondDropper update:]
; address 0x10007e350  size 1128  kind objc
; ======================================================================
  10007e350  stp     d11, d10, [sp, #-0x50]!
  10007e354  stp     d9, d8, [sp, #0x10]
  10007e358  stp     x22, x21, [sp, #0x20]
  10007e35c  stp     x20, x19, [sp, #0x30]
  10007e360  stp     x29, x30, [sp, #0x40]
  10007e364  add     x29, sp, #0x40
  10007e368  mov     v8.16b, v0.16b
  10007e36c  mov     x19, x0
  10007e370  adrp    x8, #0x100416000
  10007e374  nop
  10007e378  ldr     x1, [x8, #0xc60]
  10007e37c  bl      _objc_msgSend                            ; [self state]
  10007e380  cmp     w0, #0x3e6
  10007e384  b.gt    loc_10007e3cc                            ; if ([self state] > 998)
  10007e388  cmp     w0, #0x64
  10007e38c  b.gt    loc_10007e458                            ; if ([self state] > 100)
  10007e390  cbnz    w0, loc_10007e4b8                        ; if ([self state] != 0)
  10007e394  adrp    x8, #0x100416000
  10007e398  nop
  10007e39c  ldr     x1, [x8, #0xc68]
  10007e3a0  mov     x0, x19
  10007e3a4  bl      _objc_msgSend                            ; [self timeInState]
  10007e3a8  mov     v9.16b, v0.16b
  10007e3ac  adrp    x8, #0x100416000
  10007e3b0  nop
  10007e3b4  ldr     x1, [x8, #0xfd0]
  10007e3b8  mov     x0, x19
  10007e3bc  bl      _objc_msgSend                            ; [self spawn_time]
  10007e3c0  fcmp    s9, s0
  10007e3c4  b.le    loc_10007e674                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
  10007e3c8  b       loc_10007e4e0
loc_10007e3cc:
  10007e3cc  cmp     w0, #0x3e7
  10007e3d0  b.ne    loc_10007e674                            ; if ([self state] != 999)
  10007e3d4  adrp    x8, #0x100416000
  10007e3d8  nop
  10007e3dc  ldr     x20, [x8, #0xc68]
  10007e3e0  mov     x0, x19
  10007e3e4  mov     x1, x20
  10007e3e8  bl      _objc_msgSend                            ; [self timeInState]
  10007e3ec  fcvt    d0, s0
  10007e3f0  adrp    x8, #0x100181000
  10007e3f4  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  10007e3f8  fcmp    d0, d1
  10007e3fc  b.le    loc_10007e674                            ; if ([self timeInState] <= (or unordered) 0.1)
  10007e400  mov     x0, x19
  10007e404  mov     x1, x20
  10007e408  bl      _objc_msgSend                            ; [self timeInState]
  10007e40c  mov     v9.16b, v0.16b
  10007e410  adrp    x8, #0x100416000
  10007e414  nop
  10007e418  ldr     x1, [x8, #0xff0]
  10007e41c  mov     x0, x19
  10007e420  bl      _objc_msgSend                            ; [self sound]
  10007e424  mov     x29, x29
  10007e428  bl      _objc_retainAutoreleasedReturnValue
  10007e42c  mov     x20, x0
  10007e430  adrp    x8, #0x100416000
  10007e434  nop
  10007e438  ldr     x1, [x8, #0xff8]
  10007e43c  bl      _objc_msgSend                            ; [[self sound] duration]
  10007e440  mov     v10.16b, v0.16b
  10007e444  mov     x0, x20
  10007e448  bl      _objc_release
  10007e44c  fcmp    s9, s10
  10007e450  b.le    loc_10007e674                            ; if ([self timeInState] <= (or unordered) [[self sound] duration])
  10007e454  b       loc_10007e65c
loc_10007e458:
  10007e458  cmp     w0, #0x65
  10007e45c  b.ne    loc_10007e4f8                            ; if ([self state] != 101)
  10007e460  adrp    x8, #0x100416000
  10007e464  nop
  10007e468  ldr     x20, [x8, #0xc68]
  10007e46c  mov     x0, x19
  10007e470  mov     x1, x20
  10007e474  bl      _objc_msgSend                            ; [self timeInState]
  10007e478  fcvt    d0, s0
  10007e47c  adrp    x8, #0x100181000
  10007e480  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  10007e484  fcmp    d0, d1
  10007e488  b.le    loc_10007e674                            ; if ([self timeInState] <= (or unordered) 0.1)
  10007e48c  mov     x0, x19
  10007e490  mov     x1, x20
  10007e494  bl      _objc_msgSend                            ; [self timeInState]
  10007e498  fmov    s1, #7.50000000
  10007e49c  fcmp    s0, s1
  10007e4a0  b.le    loc_10007e674                            ; if ([self timeInState] <= (or unordered) 7.5)
  10007e4a4  adrp    x8, #0x100416000
  10007e4a8  add     x8, x8, #0xc78                           ; &@selector(setState:)
  10007e4ac  ldr     x1, [x8]
  10007e4b0  mov     w2, #0x66
  10007e4b4  b       loc_10007e66c
loc_10007e4b8:
  10007e4b8  cmp     w0, #1
  10007e4bc  b.ne    loc_10007e674                            ; if ([self state] != 1)
  10007e4c0  adrp    x8, #0x100416000
  10007e4c4  nop
  10007e4c8  ldr     x20, [x8, #0xfe0]
  10007e4cc  mov     x0, x19
  10007e4d0  mov     x1, x20
  10007e4d4  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10007e4d8  fcmp    s0, #0.0
  10007e4dc  b.ne    loc_10007e748                            ; if ([self spawn_sound_duration] != 0.0)
loc_10007e4e0:
  10007e4e0  adrp    x8, #0x100416000
  10007e4e4  add     x8, x8, #0xfd8                           ; &@selector(spawn)
loc_10007e4e8:
  10007e4e8  ldr     x1, [x8]                                 ; x1 = one of selectors {glow, spawn}
  10007e4ec  mov     x0, x19
  10007e4f0  bl      _objc_msgSend                            ; [self glow | spawn]
  10007e4f4  b       loc_10007e674
loc_10007e4f8:
  10007e4f8  cmp     w0, #0x66
  10007e4fc  b.ne    loc_10007e674                            ; if ([self state] != 102)
  10007e500  adrp    x8, #0x100416000
  10007e504  nop
  10007e508  ldr     x21, [x8, #0xc68]
  10007e50c  mov     x0, x19
  10007e510  mov     x1, x21
  10007e514  bl      _objc_msgSend                            ; [self timeInState]
  10007e518  mov     v9.16b, v0.16b
  10007e51c  adrp    x8, #0x100416000
  10007e520  nop
  10007e524  ldr     x1, [x8, #0xff0]
  10007e528  mov     x0, x19
  10007e52c  bl      _objc_msgSend                            ; [self sound]
  10007e530  mov     x29, x29
  10007e534  bl      _objc_retainAutoreleasedReturnValue
  10007e538  mov     x20, x0
  10007e53c  fmov    s0, #2.00000000
  10007e540  fcmp    s9, s0
  10007e544  b.pl    loc_10007e584                            ; if ([self timeInState] >= (or unordered) 2)
  10007e548  mov     x0, x19
  10007e54c  mov     x1, x21
  10007e550  bl      _objc_msgSend                            ; [self timeInState]
  10007e554  fmov    s1, #3.50000000
  10007e558  fmul    s0, s0, s1
  10007e55c  fmov    s1, #0.50000000
  10007e560  fmul    s0, s0, s1
  10007e564  adrp    x8, #0x100416000
  10007e568  nop
  10007e56c  ldr     x1, [x8, #0xcb0]
  10007e570  mov     x0, x20
  10007e574  bl      _objc_msgSend                            ; [[self sound] setGain:(([self timeInState] * 3.5) * 0.5)]
  10007e578  mov     x0, x20
  10007e57c  bl      _objc_release
  10007e580  b       loc_10007e674
loc_10007e584:
  10007e584  adrp    x8, #0x100417000
  10007e588  nop
  10007e58c  ldr     x1, [x8, #0x568]
  10007e590  mov     x0, x20
  10007e594  bl      _objc_msgSend                            ; [[self sound] stop]
  10007e598  mov     x0, x20
  10007e59c  bl      _objc_release
  10007e5a0  adrp    x8, #0x100419000
  10007e5a4  nop
  10007e5a8  ldr     x1, [x8, #0x358]
  10007e5ac  mov     x0, x19
  10007e5b0  bl      _objc_msgSend                            ; [self setLifeToZero]
  10007e5b4  adrp    x8, #0x10041e000
  10007e5b8  ldr     x0, [x8, #8]                             ; class ADTracker
  10007e5bc  adrp    x8, #0x100416000
  10007e5c0  nop
  10007e5c4  ldr     x1, [x8, #0xac0]
  10007e5c8  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10007e5cc  mov     x29, x29
  10007e5d0  bl      _objc_retainAutoreleasedReturnValue
  10007e5d4  mov     x20, x0
  10007e5d8  adrp    x8, #0x100419000
  10007e5dc  nop
  10007e5e0  ldr     x1, [x8, #0xc60]
  10007e5e4  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] diamondDisappered]
  10007e5e8  mov     x0, x20
  10007e5ec  bl      _objc_release
  10007e5f0  adrp    x8, #0x10041e000
  10007e5f4  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  10007e5f8  adrp    x8, #0x100417000
  10007e5fc  nop
  10007e600  ldr     x1, [x8, #0xaa8]
  10007e604  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  10007e608  mov     x29, x29
  10007e60c  bl      _objc_retainAutoreleasedReturnValue
  10007e610  mov     x20, x0
  10007e614  adrp    x8, #0x100417000
  10007e618  nop
  10007e61c  ldr     x1, [x8, #0x450]
  10007e620  mov     x0, x19
  10007e624  bl      _objc_msgSend                            ; [self name]
  10007e628  mov     x29, x29
  10007e62c  bl      _objc_retainAutoreleasedReturnValue
  10007e630  mov     x21, x0
  10007e634  adrp    x8, #0x100419000
  10007e638  nop
  10007e63c  ldr     x1, [x8, #0x360]
  10007e640  mov     x0, x20
  10007e644  mov     x2, x21
  10007e648  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] soundOrEnemyWithNameWasDeactivated:[self name]]
  10007e64c  mov     x0, x21
  10007e650  bl      _objc_release
  10007e654  mov     x0, x20
  10007e658  bl      _objc_release
loc_10007e65c:
  10007e65c  adrp    x8, #0x100416000
  10007e660  add     x8, x8, #0xc78                           ; &@selector(setState:)
  10007e664  ldr     x1, [x8]
  10007e668  mov     w2, #-1
loc_10007e66c:
  10007e66c  mov     x0, x19
  10007e670  bl      _objc_msgSend                            ; [self setState:one of {102, 0xffffffff}]
loc_10007e674:
  10007e674  adrp    x8, #0x100416000
  10007e678  nop
  10007e67c  ldr     x20, [x8, #0xff0]
  10007e680  mov     x0, x19
  10007e684  mov     x1, x20
  10007e688  bl      _objc_msgSend                            ; [self sound]
  10007e68c  mov     x29, x29
  10007e690  bl      _objc_retainAutoreleasedReturnValue
  10007e694  mov     x21, x0
  10007e698  bl      _objc_release
  10007e69c  cbz     x21, loc_10007e708                       ; if ([self sound] == 0)
  10007e6a0  mov     x0, x19
  10007e6a4  mov     x1, x20
  10007e6a8  bl      _objc_msgSend                            ; [self sound]
  10007e6ac  mov     x29, x29
  10007e6b0  bl      _objc_retainAutoreleasedReturnValue
  10007e6b4  mov     x20, x0
  10007e6b8  adrp    x8, #0x100417000
  10007e6bc  nop
  10007e6c0  ldr     x21, [x8, #8]
  10007e6c4  mov     x0, x19
  10007e6c8  mov     x1, x21
  10007e6cc  bl      _objc_msgSend                            ; [self position]
  10007e6d0  mov     v9.16b, v0.16b
  10007e6d4  mov     x0, x19
  10007e6d8  mov     x1, x21
  10007e6dc  bl      _objc_msgSend                            ; [self position]
  10007e6e0  fcvt    s0, d9
  10007e6e4  fcvt    s1, d1
  10007e6e8  adrp    x8, #0x100417000
  10007e6ec  nop
  10007e6f0  ldr     x1, [x8, #0x38]
  10007e6f4  movi    v2.16b, #0
  10007e6f8  mov     x0, x20
  10007e6fc  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  10007e700  mov     x0, x20
  10007e704  bl      _objc_release
loc_10007e708:
  10007e708  adrp    x8, #0x100416000
  10007e70c  nop
  10007e710  ldr     x1, [x8, #0xc68]
  10007e714  mov     x0, x19
  10007e718  bl      _objc_msgSend                            ; [self timeInState]
  10007e71c  fadd    s0, s0, s8
  10007e720  adrp    x8, #0x100416000
  10007e724  nop
  10007e728  ldr     x1, [x8, #0xc80]
  10007e72c  mov     x0, x19
  10007e730  ldp     x29, x30, [sp, #0x40]
  10007e734  ldp     x20, x19, [sp, #0x30]
  10007e738  ldp     x22, x21, [sp, #0x20]
  10007e73c  ldp     d9, d8, [sp, #0x10]
  10007e740  ldp     d11, d10, [sp], #0x50
  10007e744  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]
loc_10007e748:
  10007e748  adrp    x8, #0x100416000
  10007e74c  nop
  10007e750  ldr     x1, [x8, #0xc68]
  10007e754  mov     x0, x19
  10007e758  bl      _objc_msgSend                            ; [self timeInState]
  10007e75c  mov     v9.16b, v0.16b
  10007e760  mov     x0, x19
  10007e764  mov     x1, x20
  10007e768  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10007e76c  fcmp    s9, s0
  10007e770  b.le    loc_10007e674                            ; if ([self timeInState] <= (or unordered) [self spawn_sound_duration])
  10007e774  adrp    x8, #0x100418000
  10007e778  add     x8, x8, #0xa40                           ; &@selector(glow)
  10007e77c  b       loc_10007e4e8
loc_10007e780:
  10007e780  mov     x19, x0
loc_10007e784:
  10007e784  mov     x0, x20
  10007e788  bl      _objc_release
  10007e78c  mov     x0, x19
  10007e790  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007e794  b       loc_10007e780
  10007e798  b       loc_10007e780
  10007e79c  b       loc_10007e780
  10007e7a0  b       loc_10007e780
  10007e7a4  b       loc_10007e780
  10007e7a8  mov     x19, x0
  10007e7ac  mov     x0, x21
  10007e7b0  bl      _objc_release
  10007e7b4  b       loc_10007e784

; ======================================================================
; -[ADDiamondDropper glow]
; address 0x10007e7b8  size 72  kind objc
; ======================================================================
  10007e7b8  stp     x20, x19, [sp, #-0x20]!
  10007e7bc  stp     x29, x30, [sp, #0x10]
  10007e7c0  add     x29, sp, #0x10
  10007e7c4  mov     x19, x0
  10007e7c8  adrp    x8, #0x100416000
  10007e7cc  nop
  10007e7d0  ldr     x1, [x8, #0xc78]
  10007e7d4  mov     w2, #0x65
  10007e7d8  bl      _objc_msgSend                            ; [self setState:101]
  10007e7dc  adrp    x8, #0x100417000
  10007e7e0  nop
  10007e7e4  ldr     x1, [x8, #0x70]
  10007e7e8  adrp    x2, #0x1003bf000
  10007e7ec  add     x2, x2, #0x690                           ; @"_glow_"
  10007e7f0  mov     x0, x19
  10007e7f4  ldp     x29, x30, [sp, #0x10]
  10007e7f8  ldp     x20, x19, [sp], #0x20
  10007e7fc  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_glow_"]

; ======================================================================
; -[ADDiamondDropper die]
; address 0x10007e800  size 404  kind objc
; ======================================================================
  10007e800  stp     x22, x21, [sp, #-0x30]!
  10007e804  stp     x20, x19, [sp, #0x10]
  10007e808  stp     x29, x30, [sp, #0x20]
  10007e80c  add     x29, sp, #0x20
  10007e810  sub     sp, sp, #0x40
  10007e814  mov     x19, x0
  10007e818  str     x19, [sp, #0x30]
  10007e81c  adrp    x8, #0x10041e000
  10007e820  ldr     x8, [x8, #0xe30]
  10007e824  str     x8, [sp, #0x38]
  10007e828  adrp    x8, #0x100418000
  10007e82c  nop
  10007e830  ldr     x1, [x8, #0xcc0]
  10007e834  add     x0, sp, #0x30
  10007e838  bl      _objc_msgSendSuper2                      ; [super die]
  10007e83c  adrp    x8, #0x10041e000
  10007e840  ldr     x0, [x8]                                 ; class ADGameModifiers
  10007e844  adrp    x8, #0x100417000
  10007e848  nop
  10007e84c  ldr     x1, [x8, #0x510]
  10007e850  bl      _objc_msgSend                            ; [ADGameModifiers sharedModifiers]
  10007e854  mov     x29, x29
  10007e858  bl      _objc_retainAutoreleasedReturnValue
  10007e85c  mov     x20, x0
  10007e860  adrp    x8, #0x100419000
  10007e864  nop
  10007e868  ldr     x1, [x8, #0x458]
  10007e86c  bl      _objc_msgSend                            ; [[ADGameModifiers sharedModifiers] fullMoon]
  10007e870  mov     x21, x0
  10007e874  mov     x0, x20
  10007e878  bl      _objc_release
  10007e87c  cmp     w21, #0
  10007e880  mov     w8, #1
  10007e884  cinc    w2, w8, ne
  10007e888  adrp    x8, #0x10041d000
  10007e88c  ldr     x0, [x8, #0xf68]                         ; class NSNumber
  10007e890  adrp    x8, #0x100416000
  10007e894  nop
  10007e898  ldr     x1, [x8, #0xec0]
  10007e89c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:([[ADGameModifiers sharedModifiers] fullMoon] != 0 ? 1 + 1 : 1)]
  10007e8a0  mov     x29, x29
  10007e8a4  bl      _objc_retainAutoreleasedReturnValue
  10007e8a8  mov     x20, x0
  10007e8ac  adrp    x8, #0x100417000
  10007e8b0  nop
  10007e8b4  ldr     x1, [x8, #0xad8]
  10007e8b8  str     xzr, [sp]
  10007e8bc  adrp    x2, #0x1003bd000
  10007e8c0  add     x2, x2, #0xcb0                           ; @"UPDATE_DIAMONDS"
  10007e8c4  mov     x0, x19
  10007e8c8  mov     x3, x20
  10007e8cc  bl      _objc_msgSend                            ; [self notifyStatsSystemWithNotificationWithName:@"UPDATE_DIAMONDS" AndData:[NSNumber numberWithInt:([[ADGameModifiers sharedModifiers] fullMoon] != 0 ? 1 + 1 : 1)]]
  10007e8d0  mov     x0, x20
  10007e8d4  bl      _objc_release
  10007e8d8  adrp    x8, #0x10041e000
  10007e8dc  ldr     x0, [x8, #8]                             ; class ADTracker
  10007e8e0  adrp    x8, #0x100416000
  10007e8e4  nop
  10007e8e8  ldr     x1, [x8, #0xac0]
  10007e8ec  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10007e8f0  mov     x29, x29
  10007e8f4  bl      _objc_retainAutoreleasedReturnValue
  10007e8f8  mov     x20, x0
  10007e8fc  adrp    x8, #0x100419000
  10007e900  nop
  10007e904  ldr     x1, [x8, #0xc68]
  10007e908  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] diamondAcquired]
  10007e90c  mov     x0, x20
  10007e910  bl      _objc_release
  10007e914  mov     x1, #0x100000000
  10007e918  movk    x1, #0x2a05, lsl #16
  10007e91c  movk    x1, #0xf200
  10007e920  mov     x0, #0
  10007e924  bl      _dispatch_time                           ; dispatch_time(0, 0x12a05f200)
  10007e928  adrp    x8, #0x1003b0000
  10007e92c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10007e930  mov     w9, #-0x40000000
  10007e934  adr     x10, #0x10007e994                        ; &-[ADDiamondDropper die]_block_invoke
  10007e938  nop
  10007e93c  str     x8, [sp, #8]
  10007e940  stp     w9, wzr, [sp, #0x10]
  10007e944  adrp    x8, #0x1003b1000
  10007e948  add     x8, x8, #0xf90                           ; &d_1003b1f90
  10007e94c  stp     x10, x8, [sp, #0x18]
  10007e950  str     xzr, [sp, #0x28]
  10007e954  adrp    x1, #0x1003b0000
  10007e958  ldr     x1, [x1, #0x1e8]                         ; __dispatch_main_q
  10007e95c  add     x2, sp, #8
  10007e960  bl      _dispatch_after                          ; dispatch_after(dispatch_time(0, 0x12a05f200), __dispatch_main_q, ^{-[ADDiamondDropper die]_block_invoke captures +0x20=0, +0x28=self, +0x30=ADDiamondDropper})
  10007e964  sub     sp, x29, #0x20
  10007e968  ldp     x29, x30, [sp, #0x20]
  10007e96c  ldp     x20, x19, [sp, #0x10]
  10007e970  ldp     x22, x21, [sp], #0x30
  10007e974  ret
  10007e978  b       loc_10007e980
  10007e97c  b       loc_10007e980
loc_10007e980:
  10007e980  mov     x19, x0
  10007e984  mov     x0, x20
  10007e988  bl      _objc_release
  10007e98c  mov     x0, x19
  10007e990  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADDiamondDropper die]_block_invoke
; address 0x10007e994  size 20  kind block
; ======================================================================
  10007e994  ldr     x0, [x0, #0x20]                          ; x0 = captured 0
  10007e998  adrp    x8, #0x100417000
  10007e99c  nop
  10007e9a0  ldr     x1, [x8]
  10007e9a4  b       _objc_msgSend                            ; [0 deactivatePlaylist]

; ======================================================================
; -[ADDiamondDropper initSounds]
; address 0x10007e9a8  size 104  kind objc
; ======================================================================
  10007e9a8  stp     x20, x19, [sp, #-0x20]!
  10007e9ac  stp     x29, x30, [sp, #0x10]
  10007e9b0  add     x29, sp, #0x10
  10007e9b4  sub     sp, sp, #0x20
  10007e9b8  mov     x19, x0
  10007e9bc  str     x19, [sp, #0x10]
  10007e9c0  adrp    x20, #0x10041e000
  10007e9c4  ldr     x8, [x20, #0xe30]
  10007e9c8  str     x8, [sp, #0x18]
  10007e9cc  adrp    x8, #0x100419000
  10007e9d0  nop
  10007e9d4  ldr     x1, [x8, #0xc70]
  10007e9d8  add     x0, sp, #0x10
  10007e9dc  bl      _objc_msgSendSuper2                      ; [super initSounds]
  10007e9e0  str     x19, [sp]
  10007e9e4  ldr     x8, [x20, #0xe30]
  10007e9e8  str     x8, [sp, #8]
  10007e9ec  adrp    x8, #0x100418000
  10007e9f0  nop
  10007e9f4  ldr     x1, [x8, #0xb80]
  10007e9f8  mov     x0, sp
  10007e9fc  bl      _objc_msgSendSuper2                      ; [super activatePlaylist]
  10007ea00  sub     sp, x29, #0x10
  10007ea04  ldp     x29, x30, [sp, #0x10]
  10007ea08  ldp     x20, x19, [sp], #0x20
  10007ea0c  ret
