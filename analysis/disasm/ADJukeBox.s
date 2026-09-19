// unit ADJukeBox — 11 functions
//   0x100065f4c     508  -[ADJukeBox initWithName:]
//   0x100066148     244  -[ADJukeBox update:]
//   0x10006623c      64  -[ADJukeBox spawn]
//   0x10006627c     724  -[ADJukeBox playRandomMusic]
//   0x100066550     564  -[ADJukeBox hitByWeapon:]
//   0x100066784     176  -[ADJukeBox hitByExplosionAtPosition:withDamages:dispersal:radius:]
//   0x100066834     120  -[ADJukeBox canBeShotAt]
//   0x1000668ac      64  -[ADJukeBox endOfPauseState]
//   0x1000668ec     344  -[ADJukeBox setRandomPosition]
//   0x100066a44      20  -[ADJukeBox pauseTime]
//   0x100066a58      20  -[ADJukeBox setPauseTime:]

; ======================================================================
; -[ADJukeBox initWithName:]
; address 0x100065f4c  size 508  kind objc
; ======================================================================
  100065f4c  stp     x24, x23, [sp, #-0x40]!
  100065f50  stp     x22, x21, [sp, #0x10]
  100065f54  stp     x20, x19, [sp, #0x20]
  100065f58  stp     x29, x30, [sp, #0x30]
  100065f5c  add     x29, sp, #0x30
  100065f60  sub     sp, sp, #0x10
  100065f64  mov     x20, x0
  100065f68  mov     x0, x2
  100065f6c  bl      _objc_retain
  100065f70  mov     x19, x0
  100065f74  str     x20, [sp]
  100065f78  adrp    x8, #0x10041e000
  100065f7c  ldr     x8, [x8, #0xd90]
  100065f80  str     x8, [sp, #8]
  100065f84  adrp    x8, #0x100418000
  100065f88  nop
  100065f8c  ldr     x1, [x8, #0xb70]
  100065f90  mov     x21, #0
  100065f94  mov     x0, sp
  100065f98  mov     x2, x19
  100065f9c  bl      _objc_msgSendSuper2                      ; [super initWithName:arg1]
  100065fa0  mov     x20, x0
  100065fa4  cbz     x20, loc_1000660b0                       ; if (self == 0)
  100065fa8  mov     x21, x20
  100065fac  adrp    x8, #0x10041e000
  100065fb0  ldr     x0, [x8, #0x98]                          ; class ADBrickManager
  100065fb4  adrp    x8, #0x100417000
  100065fb8  nop
  100065fbc  ldr     x1, [x8, #0xaa8]
  100065fc0  bl      _objc_msgSend                            ; [ADBrickManager sharedBrickManager]
  100065fc4  mov     x29, x29
  100065fc8  bl      _objc_retainAutoreleasedReturnValue
  100065fcc  mov     x21, x0
  100065fd0  adrp    x8, #0x100419000
  100065fd4  nop
  100065fd8  ldr     x1, [x8, #0x188]
  100065fdc  adrp    x2, #0x1003bd000
  100065fe0  add     x2, x2, #0xfd0                           ; @" "
  100065fe4  mov     x0, x19
  100065fe8  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@" "]
  100065fec  mov     x29, x29
  100065ff0  bl      _objc_retainAutoreleasedReturnValue
  100065ff4  mov     x23, x0
  100065ff8  adrp    x8, #0x100416000
  100065ffc  nop
  100066000  ldr     x1, [x8, #0xc30]
  100066004  mov     x2, #0
  100066008  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]
  10006600c  mov     x29, x29
  100066010  bl      _objc_retainAutoreleasedReturnValue
  100066014  mov     x24, x0
  100066018  adrp    x8, #0x100419000
  10006601c  nop
  100066020  ldr     x1, [x8, #0x198]
  100066024  mov     x0, x21
  100066028  mov     x2, x24
  10006602c  bl      _objc_msgSend                            ; [[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]]
  100066030  mov     x29, x29
  100066034  bl      _objc_retainAutoreleasedReturnValue
  100066038  mov     x22, x0
  10006603c  mov     x0, x24
  100066040  bl      _objc_release
  100066044  mov     x0, x23
  100066048  bl      _objc_release
  10006604c  mov     x0, x21
  100066050  bl      _objc_release
  100066054  adrp    x8, #0x100417000
  100066058  nop
  10006605c  ldr     x1, [x8, #0x40]
  100066060  adrp    x2, #0x1003be000
  100066064  add     x2, x2, #0xab0                           ; @"pauseTime"
  100066068  mov     x0, x22
  10006606c  bl      _objc_msgSend                            ; [[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"pauseTime"]
  100066070  mov     x29, x29
  100066074  bl      _objc_retainAutoreleasedReturnValue
  100066078  mov     x21, x0
  10006607c  adrp    x8, #0x100417000
  100066080  nop
  100066084  ldr     x1, [x8, #0x48]
  100066088  bl      _objc_msgSend                            ; [[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"pauseTime"] floatValue]
  10006608c  adrp    x8, #0x100419000
  100066090  nop
  100066094  ldr     x1, [x8, #0x4f0]
  100066098  mov     x0, x20
  10006609c  bl      _objc_msgSend                            ; [self setPauseTime:[[[[ADBrickManager sharedBrickManager] dictionaryForEnemyName:[[arg1 componentsSeparatedByString:@" "] objectAtIndex:0]] objectForKey:@"pauseTime"] floatValue]]
  1000660a0  mov     x0, x21
  1000660a4  bl      _objc_release
  1000660a8  mov     x0, x22
  1000660ac  bl      _objc_release
loc_1000660b0:
  1000660b0  mov     x0, x19
  1000660b4  bl      _objc_release
  1000660b8  mov     x0, x20
  1000660bc  sub     sp, x29, #0x30
  1000660c0  ldp     x29, x30, [sp, #0x30]
  1000660c4  ldp     x20, x19, [sp, #0x20]
  1000660c8  ldp     x22, x21, [sp, #0x10]
  1000660cc  ldp     x24, x23, [sp], #0x40
  1000660d0  ret
  1000660d4  mov     x23, x0
  1000660d8  b       loc_100066130
  1000660dc  mov     x23, x0
  1000660e0  mov     x0, x21
  1000660e4  bl      _objc_release
  1000660e8  b       loc_100066124
  1000660ec  mov     x23, x0
  1000660f0  b       loc_100066118
  1000660f4  mov     x22, x23
  1000660f8  mov     x23, x0
  1000660fc  b       loc_100066110
  100066100  mov     x22, x23
  100066104  mov     x23, x0
  100066108  mov     x0, x24
  10006610c  bl      _objc_release
loc_100066110:
  100066110  mov     x0, x22
  100066114  bl      _objc_release
loc_100066118:
  100066118  mov     x0, x21
  10006611c  b       loc_100066128
  100066120  mov     x23, x0
loc_100066124:
  100066124  mov     x0, x22
loc_100066128:
  100066128  bl      _objc_release
  10006612c  mov     x21, x20
loc_100066130:
  100066130  mov     x0, x19
  100066134  bl      _objc_release
  100066138  mov     x0, x21
  10006613c  bl      _objc_release
  100066140  mov     x0, x23
  100066144  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADJukeBox update:]
; address 0x100066148  size 244  kind objc
; ======================================================================
  100066148  stp     d9, d8, [sp, #-0x30]!
  10006614c  stp     x20, x19, [sp, #0x10]
  100066150  stp     x29, x30, [sp, #0x20]
  100066154  add     x29, sp, #0x20
  100066158  mov     v8.16b, v0.16b
  10006615c  mov     x19, x0
  100066160  adrp    x8, #0x100416000
  100066164  nop
  100066168  ldr     x1, [x8, #0xc60]
  10006616c  bl      _objc_msgSend                            ; [self state]
  100066170  cmp     w0, #0x12e
  100066174  b.ne    loc_1000661b8                            ; if ([self state] != 302)
  100066178  adrp    x8, #0x100416000
  10006617c  nop
  100066180  ldr     x1, [x8, #0xc68]
  100066184  mov     x0, x19
  100066188  bl      _objc_msgSend                            ; [self timeInState]
  10006618c  mov     v9.16b, v0.16b
  100066190  adrp    x8, #0x100419000
  100066194  nop
  100066198  ldr     x1, [x8, #0x4f8]
  10006619c  mov     x0, x19
  1000661a0  bl      _objc_msgSend                            ; [self pauseTime]
  1000661a4  fcmp    s9, s0
  1000661a8  b.le    loc_100066204                            ; if ([self timeInState] <= (or unordered) [self pauseTime])
  1000661ac  adrp    x8, #0x100419000
  1000661b0  add     x8, x8, #0x500                           ; &@selector(endOfPauseState)
  1000661b4  b       loc_1000661f8
loc_1000661b8:
  1000661b8  cbnz    w0, loc_100066204                        ; if ([self state] != 0)
  1000661bc  adrp    x8, #0x100416000
  1000661c0  nop
  1000661c4  ldr     x1, [x8, #0xc68]
  1000661c8  mov     x0, x19
  1000661cc  bl      _objc_msgSend                            ; [self timeInState]
  1000661d0  mov     v9.16b, v0.16b
  1000661d4  adrp    x8, #0x100416000
  1000661d8  nop
  1000661dc  ldr     x1, [x8, #0xfd0]
  1000661e0  mov     x0, x19
  1000661e4  bl      _objc_msgSend                            ; [self spawn_time]
  1000661e8  fcmp    s9, s0
  1000661ec  b.le    loc_100066204                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
  1000661f0  adrp    x8, #0x100416000
  1000661f4  add     x8, x8, #0xfd8                           ; &@selector(spawn)
loc_1000661f8:
  1000661f8  ldr     x1, [x8]                                 ; x1 = one of selectors {endOfPauseState, spawn}
  1000661fc  mov     x0, x19
  100066200  bl      _objc_msgSend                            ; [self endOfPauseState | spawn]
loc_100066204:
  100066204  adrp    x8, #0x100416000
  100066208  nop
  10006620c  ldr     x1, [x8, #0xc68]
  100066210  mov     x0, x19
  100066214  bl      _objc_msgSend                            ; [self timeInState]
  100066218  fadd    s0, s0, s8
  10006621c  adrp    x8, #0x100416000
  100066220  nop
  100066224  ldr     x1, [x8, #0xc80]
  100066228  mov     x0, x19
  10006622c  ldp     x29, x30, [sp, #0x20]
  100066230  ldp     x20, x19, [sp, #0x10]
  100066234  ldp     d9, d8, [sp], #0x30
  100066238  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]

; ======================================================================
; -[ADJukeBox spawn]
; address 0x10006623c  size 64  kind objc
; ======================================================================
  10006623c  stp     x20, x19, [sp, #-0x20]!
  100066240  stp     x29, x30, [sp, #0x10]
  100066244  add     x29, sp, #0x10
  100066248  mov     x19, x0
  10006624c  adrp    x8, #0x100419000
  100066250  nop
  100066254  ldr     x1, [x8, #0x508]
  100066258  bl      _objc_msgSend                            ; [self playRandomMusic]
  10006625c  adrp    x8, #0x100416000
  100066260  nop
  100066264  ldr     x1, [x8, #0xc78]
  100066268  mov     w2, #0x12d
  10006626c  mov     x0, x19
  100066270  ldp     x29, x30, [sp, #0x10]
  100066274  ldp     x20, x19, [sp], #0x20
  100066278  b       _objc_msgSend                            ; [self setState:301]

; ======================================================================
; -[ADJukeBox playRandomMusic]
; address 0x10006627c  size 724  kind objc
; ======================================================================
  10006627c  stp     d9, d8, [sp, #-0x70]!
  100066280  stp     x28, x27, [sp, #0x10]
  100066284  stp     x26, x25, [sp, #0x20]
  100066288  stp     x24, x23, [sp, #0x30]
  10006628c  stp     x22, x21, [sp, #0x40]
  100066290  stp     x20, x19, [sp, #0x50]
  100066294  stp     x29, x30, [sp, #0x60]
  100066298  add     x29, sp, #0x60
  10006629c  mov     x19, x0
  1000662a0  adrp    x8, #0x100416000
  1000662a4  nop
  1000662a8  ldr     x20, [x8, #0xc98]
  1000662ac  mov     x1, x20
  1000662b0  bl      _objc_msgSend                            ; [self playlist]
  1000662b4  mov     x29, x29
  1000662b8  bl      _objc_retainAutoreleasedReturnValue
  1000662bc  mov     x22, x0
  1000662c0  adrp    x8, #0x100416000
  1000662c4  nop
  1000662c8  ldr     x21, [x8, #0xca0]
  1000662cc  adrp    x2, #0x1003be000
  1000662d0  add     x2, x2, #0xad0                           ; @"jukebox_music_"
  1000662d4  mov     x1, x21
  1000662d8  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"jukebox_music_"]
  1000662dc  mov     x29, x29
  1000662e0  bl      _objc_retainAutoreleasedReturnValue
  1000662e4  mov     x23, x0
  1000662e8  adrp    x8, #0x100419000
  1000662ec  nop
  1000662f0  ldr     x1, [x8, #0x418]
  1000662f4  mov     x0, x19
  1000662f8  mov     x2, x23
  1000662fc  bl      _objc_msgSend                            ; [self setSound:[[self playlist] anySoundContaining:@"jukebox_music_"]]
  100066300  mov     x0, x23
  100066304  bl      _objc_release
  100066308  mov     x0, x22
  10006630c  bl      _objc_release
  100066310  adrp    x8, #0x100416000
  100066314  nop
  100066318  ldr     x26, [x8, #0xff0]
  10006631c  mov     x0, x19
  100066320  mov     x1, x26
  100066324  bl      _objc_msgSend                            ; [self sound]
  100066328  mov     x29, x29
  10006632c  bl      _objc_retainAutoreleasedReturnValue
  100066330  mov     x23, x0
  100066334  adrp    x8, #0x100416000
  100066338  nop
  10006633c  ldr     x22, [x8, #0xca8]
  100066340  mov     w2, #1
  100066344  mov     x1, x22
  100066348  bl      _objc_msgSend                            ; [[self sound] setSpatialized:1]
  10006634c  mov     x0, x23
  100066350  bl      _objc_release
  100066354  mov     x0, x19
  100066358  mov     x1, x26
  10006635c  bl      _objc_msgSend                            ; [self sound]
  100066360  mov     x29, x29
  100066364  bl      _objc_retainAutoreleasedReturnValue
  100066368  mov     x25, x0
  10006636c  adrp    x8, #0x100417000
  100066370  nop
  100066374  ldr     x23, [x8, #8]
  100066378  mov     x0, x19
  10006637c  mov     x1, x23
  100066380  bl      _objc_msgSend                            ; [self position]
  100066384  mov     v8.16b, v0.16b
  100066388  mov     x0, x19
  10006638c  mov     x1, x23
  100066390  bl      _objc_msgSend                            ; [self position]
  100066394  fcvt    s0, d8
  100066398  fcvt    s1, d1
  10006639c  adrp    x8, #0x100417000
  1000663a0  nop
  1000663a4  ldr     x24, [x8, #0x38]
  1000663a8  movi    v2.16b, #0
  1000663ac  mov     x0, x25
  1000663b0  mov     x1, x24
  1000663b4  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  1000663b8  mov     x0, x25
  1000663bc  bl      _objc_release
  1000663c0  mov     x0, x19
  1000663c4  mov     x1, x26
  1000663c8  bl      _objc_msgSend                            ; [self sound]
  1000663cc  mov     x29, x29
  1000663d0  bl      _objc_retainAutoreleasedReturnValue
  1000663d4  mov     x27, x0
  1000663d8  adrp    x8, #0x100416000
  1000663dc  nop
  1000663e0  ldr     x25, [x8, #0xcb8]
  1000663e4  mov     w2, #1
  1000663e8  mov     x1, x25
  1000663ec  bl      _objc_msgSend                            ; [[self sound] play:1]
  1000663f0  mov     x0, x27
  1000663f4  bl      _objc_release
  1000663f8  mov     x0, x19
  1000663fc  mov     x1, x26
  100066400  bl      _objc_msgSend                            ; [self sound]
  100066404  mov     x29, x29
  100066408  bl      _objc_retainAutoreleasedReturnValue
  10006640c  mov     x27, x0
  100066410  adrp    x8, #0x100416000
  100066414  nop
  100066418  ldr     x26, [x8, #0xcb0]
  10006641c  fmov    s0, #6.00000000
  100066420  mov     x1, x26
  100066424  bl      _objc_msgSend                            ; [[self sound] setGain:6]
  100066428  mov     x0, x27
  10006642c  bl      _objc_release
  100066430  mov     x0, x19
  100066434  mov     x1, x20
  100066438  bl      _objc_msgSend                            ; [self playlist]
  10006643c  mov     x29, x29
  100066440  bl      _objc_retainAutoreleasedReturnValue
  100066444  mov     x27, x0
  100066448  adrp    x2, #0x1003be000
  10006644c  add     x2, x2, #0xaf0                           ; @"jukebox_resume_"
  100066450  mov     x1, x21
  100066454  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"jukebox_resume_"]
  100066458  mov     x29, x29
  10006645c  bl      _objc_retainAutoreleasedReturnValue
  100066460  mov     x20, x0
  100066464  mov     x0, x27
  100066468  bl      _objc_release
  10006646c  mov     w2, #1
  100066470  mov     x0, x20
  100066474  mov     x1, x22
  100066478  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"jukebox_resume_"] setSpatialized:1]
  10006647c  mov     x0, x19
  100066480  mov     x1, x23
  100066484  bl      _objc_msgSend                            ; [self position]
  100066488  mov     v8.16b, v0.16b
  10006648c  mov     x0, x19
  100066490  mov     x1, x23
  100066494  bl      _objc_msgSend                            ; [self position]
  100066498  fcvt    s0, d8
  10006649c  fcvt    s1, d1
  1000664a0  movi    v2.16b, #0
  1000664a4  mov     x0, x20
  1000664a8  mov     x1, x24
  1000664ac  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"jukebox_resume_"] setPlanar:{[self position].0, [self position].1, 0}]
  1000664b0  mov     w2, #0
  1000664b4  mov     x0, x20
  1000664b8  mov     x1, x25
  1000664bc  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"jukebox_resume_"] play:0]
  1000664c0  fmov    s0, #6.00000000
  1000664c4  mov     x0, x20
  1000664c8  mov     x1, x26
  1000664cc  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"jukebox_resume_"] setGain:6]
  1000664d0  mov     x0, x20
  1000664d4  ldp     x29, x30, [sp, #0x60]
  1000664d8  ldp     x20, x19, [sp, #0x50]
  1000664dc  ldp     x22, x21, [sp, #0x40]
  1000664e0  ldp     x24, x23, [sp, #0x30]
  1000664e4  ldp     x26, x25, [sp, #0x20]
  1000664e8  ldp     x28, x27, [sp, #0x10]
  1000664ec  ldp     d9, d8, [sp], #0x70
  1000664f0  b       _objc_release
  1000664f4  mov     x19, x0
  1000664f8  mov     x0, x20
  1000664fc  b       loc_100066544
  100066500  mov     x19, x0
  100066504  mov     x0, x25
  100066508  b       loc_100066544
  10006650c  mov     x19, x0
  100066510  b       loc_100066520
  100066514  mov     x19, x0
  100066518  mov     x0, x23
  10006651c  bl      _objc_release
loc_100066520:
  100066520  mov     x0, x22
  100066524  b       loc_100066544
  100066528  mov     x19, x0
  10006652c  mov     x0, x23
  100066530  b       loc_100066544
  100066534  b       loc_10006653c
  100066538  b       loc_10006653c
loc_10006653c:
  10006653c  mov     x19, x0
  100066540  mov     x0, x27
loc_100066544:
  100066544  bl      _objc_release
  100066548  mov     x0, x19
  10006654c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADJukeBox hitByWeapon:]
; address 0x100066550  size 564  kind objc
; ======================================================================
  100066550  stp     d9, d8, [sp, #-0x40]!
  100066554  stp     x22, x21, [sp, #0x10]
  100066558  stp     x20, x19, [sp, #0x20]
  10006655c  stp     x29, x30, [sp, #0x30]
  100066560  add     x29, sp, #0x30
  100066564  mov     x19, x0
  100066568  adrp    x8, #0x100416000
  10006656c  nop
  100066570  ldr     x20, [x8, #0xff0]
  100066574  mov     x1, x20
  100066578  bl      _objc_msgSend                            ; [self sound]
  10006657c  mov     x29, x29
  100066580  bl      _objc_retainAutoreleasedReturnValue
  100066584  mov     x21, x0
  100066588  adrp    x8, #0x100417000
  10006658c  nop
  100066590  ldr     x1, [x8, #0x568]
  100066594  bl      _objc_msgSend                            ; [[self sound] stop]
  100066598  mov     x0, x21
  10006659c  bl      _objc_release
  1000665a0  adrp    x8, #0x100416000
  1000665a4  nop
  1000665a8  ldr     x1, [x8, #0xc98]
  1000665ac  mov     x0, x19
  1000665b0  bl      _objc_msgSend                            ; [self playlist]
  1000665b4  mov     x29, x29
  1000665b8  bl      _objc_retainAutoreleasedReturnValue
  1000665bc  mov     x21, x0
  1000665c0  adrp    x8, #0x100416000
  1000665c4  nop
  1000665c8  ldr     x1, [x8, #0xca0]
  1000665cc  adrp    x2, #0x1003be000
  1000665d0  add     x2, x2, #0xb10                           ; @"jukebox_hit_"
  1000665d4  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"jukebox_hit_"]
  1000665d8  mov     x29, x29
  1000665dc  bl      _objc_retainAutoreleasedReturnValue
  1000665e0  mov     x22, x0
  1000665e4  adrp    x8, #0x100419000
  1000665e8  nop
  1000665ec  ldr     x1, [x8, #0x418]
  1000665f0  mov     x0, x19
  1000665f4  mov     x2, x22
  1000665f8  bl      _objc_msgSend                            ; [self setSound:[[self playlist] anySoundContaining:@"jukebox_hit_"]]
  1000665fc  mov     x0, x22
  100066600  bl      _objc_release
  100066604  mov     x0, x21
  100066608  bl      _objc_release
  10006660c  mov     x0, x19
  100066610  mov     x1, x20
  100066614  bl      _objc_msgSend                            ; [self sound]
  100066618  mov     x29, x29
  10006661c  bl      _objc_retainAutoreleasedReturnValue
  100066620  mov     x21, x0
  100066624  adrp    x8, #0x100416000
  100066628  nop
  10006662c  ldr     x1, [x8, #0xca8]
  100066630  mov     w2, #1
  100066634  bl      _objc_msgSend                            ; [[self sound] setSpatialized:1]
  100066638  mov     x0, x21
  10006663c  bl      _objc_release
  100066640  mov     x0, x19
  100066644  mov     x1, x20
  100066648  bl      _objc_msgSend                            ; [self sound]
  10006664c  mov     x29, x29
  100066650  bl      _objc_retainAutoreleasedReturnValue
  100066654  mov     x21, x0
  100066658  adrp    x8, #0x100417000
  10006665c  nop
  100066660  ldr     x22, [x8, #8]
  100066664  mov     x0, x19
  100066668  mov     x1, x22
  10006666c  bl      _objc_msgSend                            ; [self position]
  100066670  mov     v8.16b, v0.16b
  100066674  mov     x0, x19
  100066678  mov     x1, x22
  10006667c  bl      _objc_msgSend                            ; [self position]
  100066680  fcvt    s0, d8
  100066684  fcvt    s1, d1
  100066688  adrp    x8, #0x100417000
  10006668c  nop
  100066690  ldr     x1, [x8, #0x38]
  100066694  movi    v2.16b, #0
  100066698  mov     x0, x21
  10006669c  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  1000666a0  mov     x0, x21
  1000666a4  bl      _objc_release
  1000666a8  mov     x0, x19
  1000666ac  mov     x1, x20
  1000666b0  bl      _objc_msgSend                            ; [self sound]
  1000666b4  mov     x29, x29
  1000666b8  bl      _objc_retainAutoreleasedReturnValue
  1000666bc  mov     x21, x0
  1000666c0  adrp    x8, #0x100416000
  1000666c4  nop
  1000666c8  ldr     x1, [x8, #0xcb8]
  1000666cc  mov     w2, #0
  1000666d0  bl      _objc_msgSend                            ; [[self sound] play:0]
  1000666d4  mov     x0, x21
  1000666d8  bl      _objc_release
  1000666dc  mov     x0, x19
  1000666e0  mov     x1, x20
  1000666e4  bl      _objc_msgSend                            ; [self sound]
  1000666e8  mov     x29, x29
  1000666ec  bl      _objc_retainAutoreleasedReturnValue
  1000666f0  mov     x20, x0
  1000666f4  adrp    x8, #0x100416000
  1000666f8  nop
  1000666fc  ldr     x1, [x8, #0xcb0]
  100066700  fmov    s0, #6.00000000
  100066704  bl      _objc_msgSend                            ; [[self sound] setGain:6]
  100066708  mov     x0, x20
  10006670c  bl      _objc_release
  100066710  adrp    x8, #0x100416000
  100066714  nop
  100066718  ldr     x1, [x8, #0xc78]
  10006671c  mov     w2, #0x12e
  100066720  mov     x0, x19
  100066724  bl      _objc_msgSend                            ; [self setState:302]
  100066728  ldp     x29, x30, [sp, #0x30]
  10006672c  ldp     x20, x19, [sp, #0x20]
  100066730  ldp     x22, x21, [sp, #0x10]
  100066734  ldp     d9, d8, [sp], #0x40
  100066738  ret
  10006673c  mov     x19, x0
  100066740  b       loc_100066770
  100066744  b       loc_100066764
  100066748  b       loc_100066764
  10006674c  b       loc_100066764
  100066750  mov     x19, x0
  100066754  mov     x0, x22
  100066758  bl      _objc_release
  10006675c  b       loc_100066768
  100066760  b       loc_100066764
loc_100066764:
  100066764  mov     x19, x0
loc_100066768:
  100066768  mov     x0, x21
loc_10006676c:
  10006676c  bl      _objc_release
loc_100066770:
  100066770  mov     x0, x19
  100066774  bl      __Unwind_Resume                          ; Unwind_Resume()
  100066778  mov     x19, x0
  10006677c  mov     x0, x20
  100066780  b       loc_10006676c

; ======================================================================
; -[ADJukeBox hitByExplosionAtPosition:withDamages:dispersal:radius:]
; address 0x100066784  size 176  kind objc
; ======================================================================
  100066784  stp     x20, x19, [sp, #-0x20]!
  100066788  stp     x29, x30, [sp, #0x10]
  10006678c  add     x29, sp, #0x10
  100066790  sub     sp, sp, #0x10
  100066794  mov     x19, x0
  100066798  str     x19, [sp]
  10006679c  adrp    x8, #0x10041e000
  1000667a0  ldr     x8, [x8, #0xd90]
  1000667a4  str     x8, [sp, #8]
  1000667a8  adrp    x8, #0x100419000
  1000667ac  nop
  1000667b0  ldr     x1, [x8, #0x3c8]
  1000667b4  mov     x0, sp
  1000667b8  mov     x2, #0
  1000667bc  bl      _objc_msgSendSuper2                      ; [super hitByExplosionAtPosition:{arg1.0, arg1.1} withDamages:arg2 dispersal:arg3 radius:arg4 powerupname:0]
  1000667c0  adrp    x8, #0x100416000
  1000667c4  nop
  1000667c8  ldr     x1, [x8, #0xff0]
  1000667cc  mov     x0, x19
  1000667d0  bl      _objc_msgSend                            ; [self sound]
  1000667d4  mov     x29, x29
  1000667d8  bl      _objc_retainAutoreleasedReturnValue
  1000667dc  mov     x20, x0
  1000667e0  adrp    x8, #0x100419000
  1000667e4  nop
  1000667e8  ldr     x1, [x8, #0x110]
  1000667ec  bl      _objc_msgSend                            ; [[self sound] pause]
  1000667f0  mov     x0, x20
  1000667f4  bl      _objc_release
  1000667f8  adrp    x8, #0x100416000
  1000667fc  nop
  100066800  ldr     x1, [x8, #0xc78]
  100066804  mov     w2, #0x12e
  100066808  mov     x0, x19
  10006680c  bl      _objc_msgSend                            ; [self setState:302]
  100066810  sub     sp, x29, #0x10
  100066814  ldp     x29, x30, [sp, #0x10]
  100066818  ldp     x20, x19, [sp], #0x20
  10006681c  ret
  100066820  mov     x19, x0
  100066824  mov     x0, x20
  100066828  bl      _objc_release
  10006682c  mov     x0, x19
  100066830  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADJukeBox canBeShotAt]
; address 0x100066834  size 120  kind objc
; ======================================================================
  100066834  stp     x20, x19, [sp, #-0x20]!
  100066838  stp     x29, x30, [sp, #0x10]
  10006683c  add     x29, sp, #0x10
  100066840  mov     x19, x0
  100066844  adrp    x8, #0x100416000
  100066848  nop
  10006684c  ldr     x20, [x8, #0xc60]
  100066850  mov     x1, x20
  100066854  bl      _objc_msgSend                            ; [self state]
  100066858  cmp     w0, #0x12e
  10006685c  b.eq    loc_100066884                            ; if ([self state] == 302)
  100066860  mov     x0, x19
  100066864  mov     x1, x20
  100066868  bl      _objc_msgSend                            ; [self state]
  10006686c  cbz     w0, loc_100066884                        ; if ([self state] == 0)
  100066870  mov     x0, x19
  100066874  mov     x1, x20
  100066878  bl      _objc_msgSend                            ; [self state]
  10006687c  cmp     w0, #0x3e7
  100066880  b.ne    loc_10006688c                            ; if ([self state] != 999)
loc_100066884:
  100066884  mov     w0, #0
  100066888  b       loc_1000668a0
loc_10006688c:
  10006688c  mov     x0, x19
  100066890  mov     x1, x20
  100066894  bl      _objc_msgSend                            ; [self state]
  100066898  cmn     w0, #1
  10006689c  cset    w0, ne
loc_1000668a0:
  1000668a0  ldp     x29, x30, [sp, #0x10]
  1000668a4  ldp     x20, x19, [sp], #0x20
  1000668a8  ret

; ======================================================================
; -[ADJukeBox endOfPauseState]
; address 0x1000668ac  size 64  kind objc
; ======================================================================
  1000668ac  stp     x20, x19, [sp, #-0x20]!
  1000668b0  stp     x29, x30, [sp, #0x10]
  1000668b4  add     x29, sp, #0x10
  1000668b8  mov     x19, x0
  1000668bc  adrp    x8, #0x100419000
  1000668c0  nop
  1000668c4  ldr     x1, [x8, #0x508]
  1000668c8  bl      _objc_msgSend                            ; [self playRandomMusic]
  1000668cc  adrp    x8, #0x100416000
  1000668d0  nop
  1000668d4  ldr     x1, [x8, #0xc78]
  1000668d8  mov     w2, #0x12d
  1000668dc  mov     x0, x19
  1000668e0  ldp     x29, x30, [sp, #0x10]
  1000668e4  ldp     x20, x19, [sp], #0x20
  1000668e8  b       _objc_msgSend                            ; [self setState:301]

; ======================================================================
; -[ADJukeBox setRandomPosition]
; address 0x1000668ec  size 344  kind objc
; ======================================================================
  1000668ec  stp     x24, x23, [sp, #-0x40]!
  1000668f0  stp     x22, x21, [sp, #0x10]
  1000668f4  stp     x20, x19, [sp, #0x20]
  1000668f8  stp     x29, x30, [sp, #0x30]
  1000668fc  add     x29, sp, #0x30
  100066900  sub     sp, sp, #0x20
  100066904  mov     x20, x0
  100066908  adrp    x8, #0x10041d000
  10006690c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  100066910  adrp    x8, #0x100416000
  100066914  nop
  100066918  ldr     x1, [x8, #0xac8]
  10006691c  bl      _objc_msgSend                            ; [NSDictionary alloc]
  100066920  mov     x21, x0
  100066924  adrp    x23, #0x10041d000
  100066928  ldr     x19, [x23, #0xf68]                       ; class NSNumber
  10006692c  bl      _rand                                    ; rand()
  100066930  sxtw    x8, w0
  100066934  mov     x9, #-0x49f40001
  100066938  movk    x9, #0x60b7
  10006693c  mul     x8, x8, x9
  100066940  lsr     x8, x8, #0x20
  100066944  add     w8, w8, w0
  100066948  asr     w9, w8, #8
  10006694c  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  100066950  mov     w9, #0x168
  100066954  msub    w2, w8, w9, w0
  100066958  adrp    x8, #0x100416000
  10006695c  nop
  100066960  ldr     x22, [x8, #0xec0]
  100066964  mov     x0, x19
  100066968  mov     x1, x22
  10006696c  bl      _objc_msgSend                            ; [NSNumber numberWithInt:(rand() - t1 * 360)]
  100066970  mov     x29, x29
  100066974  bl      _objc_retainAutoreleasedReturnValue
  100066978  mov     x19, x0
  10006697c  ldr     x0, [x23, #0xf68]                        ; class NSNumber
  100066980  mov     w2, #7
  100066984  mov     x1, x22
  100066988  bl      _objc_msgSend                            ; [NSNumber numberWithInt:7]
  10006698c  mov     x29, x29
  100066990  bl      _objc_retainAutoreleasedReturnValue
  100066994  mov     x22, x0
  100066998  adrp    x8, #0x100419000
  10006699c  nop
  1000669a0  ldr     x1, [x8, #0x510]
  1000669a4  adrp    x8, #0x1003b9000
  1000669a8  add     x8, x8, #0xc70                           ; @"spawn_distance"
  1000669ac  stp     x8, xzr, [sp, #0x10]
  1000669b0  adrp    x8, #0x1003b9000
  1000669b4  add     x8, x8, #0xc50                           ; @"spawn_angle"
  1000669b8  stp     x8, x22, [sp]
  1000669bc  mov     x0, x21
  1000669c0  mov     x2, x19
  1000669c4  bl      _objc_msgSend                            ; [[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:(rand() - t1 * 360)], @"spawn_angle", [NSNumber numberWithInt:7], @"spawn_distance", nil]
  1000669c8  mov     x21, x0
  1000669cc  adrp    x8, #0x100419000
  1000669d0  nop
  1000669d4  ldr     x1, [x8, #0x518]
  1000669d8  mov     x0, x20
  1000669dc  mov     x2, x21
  1000669e0  bl      _objc_msgSend                            ; [self setPositionFromDictionary:[[NSDictionary alloc] initWithObjectsAndKeys:[NSNumber numberWithInt:(rand() - t1 * 360)], @"spawn_angle", [NSNumber numberWithInt:7], @"spawn_distance", nil]]
  1000669e4  mov     x0, x21
  1000669e8  bl      _objc_release
  1000669ec  mov     x0, x22
  1000669f0  bl      _objc_release
  1000669f4  mov     x0, x19
  1000669f8  sub     sp, x29, #0x30
  1000669fc  ldp     x29, x30, [sp, #0x30]
  100066a00  ldp     x20, x19, [sp, #0x20]
  100066a04  ldp     x22, x21, [sp, #0x10]
  100066a08  ldp     x24, x23, [sp], #0x40
  100066a0c  b       _objc_release
  100066a10  mov     x20, x0
  100066a14  b       loc_100066a34
  100066a18  mov     x20, x0
  100066a1c  b       loc_100066a2c
  100066a20  mov     x20, x0
  100066a24  mov     x0, x21
  100066a28  bl      _objc_release
loc_100066a2c:
  100066a2c  mov     x0, x22
  100066a30  bl      _objc_release
loc_100066a34:
  100066a34  mov     x0, x19
  100066a38  bl      _objc_release
  100066a3c  mov     x0, x20
  100066a40  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADJukeBox pauseTime]
; address 0x100066a44  size 20  kind objc
; ======================================================================
  100066a44  adrp    x8, #0x10041f000
  100066a48  ldrsw   x8, [x8, #0xc40]                         ; ivar offset ADJukeBox._pauseTime (+0x8)
  100066a4c  ldr     w8, [x0, x8]                             ; w8 = self->_pauseTime
  100066a50  fmov    s0, w8
  100066a54  ret

; ======================================================================
; -[ADJukeBox setPauseTime:]
; address 0x100066a58  size 20  kind objc
; ======================================================================
  100066a58  fmov    w8, s0
  100066a5c  adrp    x9, #0x10041f000
  100066a60  ldrsw   x9, [x9, #0xc40]                         ; ivar offset ADJukeBox._pauseTime (+0x8)
  100066a64  str     w8, [x0, x9]                             ; self->_pauseTime = arg1
  100066a68  ret
