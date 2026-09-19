// unit ADMeleeWeapon — 4 functions
//   0x10000740c     180  -[ADMeleeWeapon update:]
//   0x1000074c0     120  -[ADMeleeWeapon singleShot]
//   0x100007538     216  -[ADMeleeWeapon playHitSound]
//   0x100007610     216  -[ADMeleeWeapon playMissSound]

; ======================================================================
; -[ADMeleeWeapon update:]
; address 0x10000740c  size 180  kind objc
; ======================================================================
  10000740c  stp     d9, d8, [sp, #-0x30]!
  100007410  stp     x20, x19, [sp, #0x10]
  100007414  stp     x29, x30, [sp, #0x20]
  100007418  add     x29, sp, #0x20
  10000741c  mov     v8.16b, v0.16b
  100007420  mov     x19, x0
  100007424  adrp    x8, #0x100416000
  100007428  nop
  10000742c  ldr     x1, [x8, #0xc60]
  100007430  bl      _objc_msgSend                            ; [self state]
  100007434  cmp     w0, #2
  100007438  b.ne    loc_100007488                            ; if ([self state] != 2)
  10000743c  adrp    x8, #0x100416000
  100007440  nop
  100007444  ldr     x1, [x8, #0xc68]
  100007448  mov     x0, x19
  10000744c  bl      _objc_msgSend                            ; [self timeInState]
  100007450  mov     v9.16b, v0.16b
  100007454  adrp    x8, #0x100416000
  100007458  nop
  10000745c  ldr     x1, [x8, #0xc70]
  100007460  mov     x0, x19
  100007464  bl      _objc_msgSend                            ; [self fireRate]
  100007468  fcmp    s9, s0
  10000746c  b.le    loc_100007488                            ; if ([self timeInState] <= (or unordered) [self fireRate])
  100007470  adrp    x8, #0x100416000
  100007474  nop
  100007478  ldr     x1, [x8, #0xc78]
  10000747c  mov     w2, #0
  100007480  mov     x0, x19
  100007484  bl      _objc_msgSend                            ; [self setState:0]
loc_100007488:
  100007488  adrp    x8, #0x100416000
  10000748c  nop
  100007490  ldr     x1, [x8, #0xc68]
  100007494  mov     x0, x19
  100007498  bl      _objc_msgSend                            ; [self timeInState]
  10000749c  fadd    s0, s0, s8
  1000074a0  adrp    x8, #0x100416000
  1000074a4  nop
  1000074a8  ldr     x1, [x8, #0xc80]
  1000074ac  mov     x0, x19
  1000074b0  ldp     x29, x30, [sp, #0x20]
  1000074b4  ldp     x20, x19, [sp, #0x10]
  1000074b8  ldp     d9, d8, [sp], #0x30
  1000074bc  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]

; ======================================================================
; -[ADMeleeWeapon singleShot]
; address 0x1000074c0  size 120  kind objc
; ======================================================================
  1000074c0  stp     x20, x19, [sp, #-0x20]!
  1000074c4  stp     x29, x30, [sp, #0x10]
  1000074c8  add     x29, sp, #0x10
  1000074cc  mov     x19, x0
  1000074d0  adrp    x8, #0x100416000
  1000074d4  nop
  1000074d8  ldr     x1, [x8, #0xc78]
  1000074dc  mov     w2, #2
  1000074e0  bl      _objc_msgSend                            ; [self setState:2]
  1000074e4  adrp    x8, #0x100416000
  1000074e8  nop
  1000074ec  ldr     x1, [x8, #0xc88]
  1000074f0  mov     x0, x19
  1000074f4  bl      _objc_msgSend                            ; [self weaponManager]
  1000074f8  mov     x29, x29
  1000074fc  bl      _objc_retainAutoreleasedReturnValue
  100007500  mov     x19, x0
  100007504  adrp    x8, #0x100416000
  100007508  nop
  10000750c  ldr     x1, [x8, #0xc90]
  100007510  bl      _objc_msgSend                            ; [[self weaponManager] didShotWithMelee]
  100007514  mov     x0, x19
  100007518  ldp     x29, x30, [sp, #0x10]
  10000751c  ldp     x20, x19, [sp], #0x20
  100007520  b       _objc_release
  100007524  mov     x20, x0
  100007528  mov     x0, x19
  10000752c  bl      _objc_release
  100007530  mov     x0, x20
  100007534  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMeleeWeapon playHitSound]
; address 0x100007538  size 216  kind objc
; ======================================================================
  100007538  stp     x22, x21, [sp, #-0x30]!
  10000753c  stp     x20, x19, [sp, #0x10]
  100007540  stp     x29, x30, [sp, #0x20]
  100007544  add     x29, sp, #0x20
  100007548  adrp    x8, #0x100416000
  10000754c  nop
  100007550  ldr     x1, [x8, #0xc98]
  100007554  bl      _objc_msgSend                            ; [self playlist]
  100007558  mov     x29, x29
  10000755c  bl      _objc_retainAutoreleasedReturnValue
  100007560  mov     x20, x0
  100007564  adrp    x8, #0x100416000
  100007568  nop
  10000756c  ldr     x1, [x8, #0xca0]
  100007570  adrp    x2, #0x1003b9000
  100007574  add     x2, x2, #0x9b0                           ; @"_hit_"
  100007578  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_hit_"]
  10000757c  mov     x29, x29
  100007580  bl      _objc_retainAutoreleasedReturnValue
  100007584  mov     x19, x0
  100007588  mov     x0, x20
  10000758c  bl      _objc_release
  100007590  adrp    x8, #0x100416000
  100007594  nop
  100007598  ldr     x1, [x8, #0xca8]
  10000759c  mov     w2, #0
  1000075a0  mov     x0, x19
  1000075a4  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"_hit_"] setSpatialized:0]
  1000075a8  adrp    x8, #0x100416000
  1000075ac  nop
  1000075b0  ldr     x1, [x8, #0xcb0]
  1000075b4  adrp    x8, #0x100181000
  1000075b8  ldr     s0, [x8, #0x9c8]                         ; s0 = 0.800000012
  1000075bc  mov     x0, x19
  1000075c0  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"_hit_"] setGain:0.8]
  1000075c4  adrp    x8, #0x100416000
  1000075c8  nop
  1000075cc  ldr     x1, [x8, #0xcb8]
  1000075d0  mov     w2, #0
  1000075d4  mov     x0, x19
  1000075d8  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"_hit_"] play:0]
  1000075dc  mov     x0, x19
  1000075e0  ldp     x29, x30, [sp, #0x20]
  1000075e4  ldp     x20, x19, [sp, #0x10]
  1000075e8  ldp     x22, x21, [sp], #0x30
  1000075ec  b       _objc_release
  1000075f0  mov     x21, x0
  1000075f4  mov     x0, x19
  1000075f8  b       loc_100007604
  1000075fc  mov     x21, x0
  100007600  mov     x0, x20
loc_100007604:
  100007604  bl      _objc_release
  100007608  mov     x0, x21
  10000760c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMeleeWeapon playMissSound]
; address 0x100007610  size 216  kind objc
; ======================================================================
  100007610  stp     x22, x21, [sp, #-0x30]!
  100007614  stp     x20, x19, [sp, #0x10]
  100007618  stp     x29, x30, [sp, #0x20]
  10000761c  add     x29, sp, #0x20
  100007620  adrp    x8, #0x100416000
  100007624  nop
  100007628  ldr     x1, [x8, #0xc98]
  10000762c  bl      _objc_msgSend                            ; [self playlist]
  100007630  mov     x29, x29
  100007634  bl      _objc_retainAutoreleasedReturnValue
  100007638  mov     x20, x0
  10000763c  adrp    x8, #0x100416000
  100007640  nop
  100007644  ldr     x1, [x8, #0xca0]
  100007648  adrp    x2, #0x1003b9000
  10000764c  add     x2, x2, #0x9d0                           ; @"_miss_"
  100007650  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"_miss_"]
  100007654  mov     x29, x29
  100007658  bl      _objc_retainAutoreleasedReturnValue
  10000765c  mov     x19, x0
  100007660  mov     x0, x20
  100007664  bl      _objc_release
  100007668  adrp    x8, #0x100416000
  10000766c  nop
  100007670  ldr     x1, [x8, #0xca8]
  100007674  mov     w2, #0
  100007678  mov     x0, x19
  10000767c  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"_miss_"] setSpatialized:0]
  100007680  adrp    x8, #0x100416000
  100007684  nop
  100007688  ldr     x1, [x8, #0xcb0]
  10000768c  adrp    x8, #0x100181000
  100007690  ldr     s0, [x8, #0x9c8]                         ; s0 = 0.800000012
  100007694  mov     x0, x19
  100007698  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"_miss_"] setGain:0.8]
  10000769c  adrp    x8, #0x100416000
  1000076a0  nop
  1000076a4  ldr     x1, [x8, #0xcb8]
  1000076a8  mov     w2, #0
  1000076ac  mov     x0, x19
  1000076b0  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"_miss_"] play:0]
  1000076b4  mov     x0, x19
  1000076b8  ldp     x29, x30, [sp, #0x20]
  1000076bc  ldp     x20, x19, [sp, #0x10]
  1000076c0  ldp     x22, x21, [sp], #0x30
  1000076c4  b       _objc_release
  1000076c8  mov     x21, x0
  1000076cc  mov     x0, x19
  1000076d0  b       loc_1000076dc
  1000076d4  mov     x21, x0
  1000076d8  mov     x0, x20
loc_1000076dc:
  1000076dc  bl      _objc_release
  1000076e0  mov     x0, x21
  1000076e4  bl      __Unwind_Resume                          ; Unwind_Resume()
