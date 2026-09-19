// unit ADMachine — 4 functions
//   0x10004f74c     176  -[ADMachine initWithName:]
//   0x10004f7fc     512  -[ADMachine update:]
//   0x10004f9fc      72  -[ADMachine startLoop]
//   0x10004fa44     152  -[ADMachine die]

; ======================================================================
; -[ADMachine initWithName:]
; address 0x10004f74c  size 176  kind objc
; ======================================================================
  10004f74c  stp     x22, x21, [sp, #-0x30]!
  10004f750  stp     x20, x19, [sp, #0x10]
  10004f754  stp     x29, x30, [sp, #0x20]
  10004f758  add     x29, sp, #0x20
  10004f75c  sub     sp, sp, #0x10
  10004f760  mov     x20, x0
  10004f764  mov     x0, x2
  10004f768  bl      _objc_retain
  10004f76c  mov     x19, x0
  10004f770  str     x20, [sp]
  10004f774  adrp    x8, #0x10041e000
  10004f778  ldr     x8, [x8, #0xd48]
  10004f77c  str     x8, [sp, #8]
  10004f780  adrp    x8, #0x100418000
  10004f784  nop
  10004f788  ldr     x1, [x8, #0xb70]
  10004f78c  mov     x20, #0
  10004f790  mov     x0, sp
  10004f794  mov     x2, x19
  10004f798  bl      _objc_msgSendSuper2                      ; [super initWithName:arg1]
  10004f79c  mov     x21, x0
  10004f7a0  cbz     x21, loc_10004f7c0                       ; if (self == 0)
  10004f7a4  mov     x20, x21
  10004f7a8  adrp    x8, #0x100418000
  10004f7ac  nop
  10004f7b0  ldr     x1, [x8, #0xca0]
  10004f7b4  mov     w2, #1
  10004f7b8  mov     x0, x21
  10004f7bc  bl      _objc_msgSend                            ; [self setUseOwnImpactSounds:1]
loc_10004f7c0:
  10004f7c0  mov     x0, x19
  10004f7c4  bl      _objc_release
  10004f7c8  mov     x0, x21
  10004f7cc  sub     sp, x29, #0x20
  10004f7d0  ldp     x29, x30, [sp, #0x20]
  10004f7d4  ldp     x20, x19, [sp, #0x10]
  10004f7d8  ldp     x22, x21, [sp], #0x30
  10004f7dc  ret
  10004f7e0  mov     x21, x0
  10004f7e4  mov     x0, x19
  10004f7e8  bl      _objc_release
  10004f7ec  mov     x0, x20
  10004f7f0  bl      _objc_release
  10004f7f4  mov     x0, x21
  10004f7f8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMachine update:]
; address 0x10004f7fc  size 512  kind objc
; ======================================================================
  10004f7fc  stp     d9, d8, [sp, #-0x30]!
  10004f800  stp     x20, x19, [sp, #0x10]
  10004f804  stp     x29, x30, [sp, #0x20]
  10004f808  add     x29, sp, #0x20
  10004f80c  mov     v8.16b, v0.16b
  10004f810  mov     x19, x0
  10004f814  adrp    x8, #0x100416000
  10004f818  nop
  10004f81c  ldr     x1, [x8, #0xc60]
  10004f820  bl      _objc_msgSend                            ; [self state]
  10004f824  cmp     w0, #0x1f5
  10004f828  b.gt    loc_10004f890                            ; if ([self state] > 501)
  10004f82c  cbz     w0, loc_10004f8fc                        ; if ([self state] == 0)
  10004f830  cmp     w0, #1
  10004f834  b.ne    loc_10004f948                            ; if ([self state] != 1)
  10004f838  adrp    x8, #0x100416000
  10004f83c  nop
  10004f840  ldr     x20, [x8, #0xfe0]
  10004f844  mov     x0, x19
  10004f848  mov     x1, x20
  10004f84c  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10004f850  fcmp    s0, #0.0
  10004f854  b.eq    loc_10004f930                            ; if ([self spawn_sound_duration] == 0.0)
  10004f858  adrp    x8, #0x100416000
  10004f85c  nop
  10004f860  ldr     x1, [x8, #0xc68]
  10004f864  mov     x0, x19
  10004f868  bl      _objc_msgSend                            ; [self timeInState]
  10004f86c  mov     v9.16b, v0.16b
  10004f870  mov     x0, x19
  10004f874  mov     x1, x20
  10004f878  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10004f87c  fcmp    s9, s0
  10004f880  b.le    loc_10004f9c4                            ; if ([self timeInState] <= (or unordered) [self spawn_sound_duration])
  10004f884  adrp    x8, #0x100418000
  10004f888  add     x8, x8, #0xca8                           ; &@selector(startLoop)
  10004f88c  b       loc_10004f938
loc_10004f890:
  10004f890  cmp     w0, #0x1f6
  10004f894  b.ne    loc_10004f9c4                            ; if ([self state] != 502)
  10004f898  adrp    x8, #0x100416000
  10004f89c  nop
  10004f8a0  ldr     x1, [x8, #0xc68]
  10004f8a4  mov     x0, x19
  10004f8a8  bl      _objc_msgSend                            ; [self timeInState]
  10004f8ac  adrp    x8, #0x10041f000
  10004f8b0  ldrsw   x8, [x8, #0xa5c]                         ; ivar offset ADMachine.sleepTime (+0x8)
  10004f8b4  ldr     s1, [x19, x8]                            ; s1 = self->sleepTime
  10004f8b8  fcmp    s0, s1
  10004f8bc  b.le    loc_10004f9c4                            ; if ([self timeInState] <= (or unordered) self->sleepTime)
  10004f8c0  adrp    x8, #0x100418000
  10004f8c4  nop
  10004f8c8  ldr     x1, [x8, #0xcb0]
  10004f8cc  mov     x0, x19
  10004f8d0  bl      _objc_msgSend                            ; [self maxLife]
  10004f8d4  adrp    x8, #0x100418000
  10004f8d8  nop
  10004f8dc  ldr     x1, [x8, #0xcb8]
  10004f8e0  mov     x0, x19
  10004f8e4  bl      _objc_msgSend                            ; [self setLife:[self maxLife]]
  10004f8e8  adrp    x8, #0x100416000
  10004f8ec  add     x8, x8, #0xc78                           ; &@selector(setState:)
  10004f8f0  ldr     x1, [x8]
  10004f8f4  mov     w2, #1
  10004f8f8  b       loc_10004f9bc
loc_10004f8fc:
  10004f8fc  adrp    x8, #0x100416000
  10004f900  nop
  10004f904  ldr     x1, [x8, #0xc68]
  10004f908  mov     x0, x19
  10004f90c  bl      _objc_msgSend                            ; [self timeInState]
  10004f910  mov     v9.16b, v0.16b
  10004f914  adrp    x8, #0x100416000
  10004f918  nop
  10004f91c  ldr     x1, [x8, #0xfd0]
  10004f920  mov     x0, x19
  10004f924  bl      _objc_msgSend                            ; [self spawn_time]
  10004f928  fcmp    s9, s0
  10004f92c  b.le    loc_10004f9c4                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
loc_10004f930:
  10004f930  adrp    x8, #0x100416000
  10004f934  add     x8, x8, #0xfd8                           ; &@selector(spawn)
loc_10004f938:
  10004f938  ldr     x1, [x8]                                 ; x1 = one of selectors {spawn, startLoop}
  10004f93c  mov     x0, x19
  10004f940  bl      _objc_msgSend                            ; [self spawn | startLoop]
  10004f944  b       loc_10004f9c4
loc_10004f948:
  10004f948  cmp     w0, #5
  10004f94c  b.ne    loc_10004f9c4                            ; if ([self state] != 5)
  10004f950  adrp    x8, #0x100416000
  10004f954  nop
  10004f958  ldr     x1, [x8, #0xc68]
  10004f95c  mov     x0, x19
  10004f960  bl      _objc_msgSend                            ; [self timeInState]
  10004f964  fmov    s1, #3.00000000
  10004f968  fcmp    s0, s1
  10004f96c  b.le    loc_10004f9c4                            ; if ([self timeInState] <= (or unordered) 3)
  10004f970  bl      _rand                                    ; rand()
  10004f974  sxtw    x8, w0
  10004f978  mov     w9, #0x66660000
  10004f97c  movk    w9, #0x6667
  10004f980  mul     x8, x8, x9
  10004f984  lsr     x9, x8, #0x3f
  10004f988  asr     x8, x8, #0x23
  10004f98c  add     w8, w8, w9
  10004f990  mov     w9, #0x14
  10004f994  msub    w8, w8, w9, w0
  10004f998  add     w8, w8, #0x23
  10004f99c  scvtf   s0, w8                                   ; t1 = (float)((rand() - (((rand() * 0x66666667) >> 35) + ((rand() * 0x66666667) >>> 63)) * 20) + 35)
  10004f9a0  adrp    x8, #0x10041f000
  10004f9a4  ldrsw   x8, [x8, #0xa5c]                         ; ivar offset ADMachine.sleepTime (+0x8)
  10004f9a8  str     s0, [x19, x8]                            ; self->sleepTime = t1
  10004f9ac  adrp    x8, #0x100416000
  10004f9b0  add     x8, x8, #0xc78                           ; &@selector(setState:)
  10004f9b4  ldr     x1, [x8]
  10004f9b8  mov     w2, #0x1f6
loc_10004f9bc:
  10004f9bc  mov     x0, x19
  10004f9c0  bl      _objc_msgSend                            ; [self setState:one of {1, 502}]
loc_10004f9c4:
  10004f9c4  adrp    x8, #0x100416000
  10004f9c8  nop
  10004f9cc  ldr     x1, [x8, #0xc68]
  10004f9d0  mov     x0, x19
  10004f9d4  bl      _objc_msgSend                            ; [self timeInState]
  10004f9d8  fadd    s0, s0, s8
  10004f9dc  adrp    x8, #0x100416000
  10004f9e0  nop
  10004f9e4  ldr     x1, [x8, #0xc80]
  10004f9e8  mov     x0, x19
  10004f9ec  ldp     x29, x30, [sp, #0x20]
  10004f9f0  ldp     x20, x19, [sp, #0x10]
  10004f9f4  ldp     d9, d8, [sp], #0x30
  10004f9f8  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]

; ======================================================================
; -[ADMachine startLoop]
; address 0x10004f9fc  size 72  kind objc
; ======================================================================
  10004f9fc  stp     x20, x19, [sp, #-0x20]!
  10004fa00  stp     x29, x30, [sp, #0x10]
  10004fa04  add     x29, sp, #0x10
  10004fa08  mov     x19, x0
  10004fa0c  adrp    x8, #0x100417000
  10004fa10  nop
  10004fa14  ldr     x1, [x8, #0x70]
  10004fa18  adrp    x2, #0x1003bd000
  10004fa1c  add     x2, x2, #0x570                           ; @"loop"
  10004fa20  bl      _objc_msgSend                            ; [self playAnySoundContaining:@"loop"]
  10004fa24  adrp    x8, #0x100416000
  10004fa28  nop
  10004fa2c  ldr     x1, [x8, #0xc78]
  10004fa30  mov     w2, #0x1f5
  10004fa34  mov     x0, x19
  10004fa38  ldp     x29, x30, [sp, #0x10]
  10004fa3c  ldp     x20, x19, [sp], #0x20
  10004fa40  b       _objc_msgSend                            ; [self setState:501]

; ======================================================================
; -[ADMachine die]
; address 0x10004fa44  size 152  kind objc
; ======================================================================
  10004fa44  stp     x20, x19, [sp, #-0x20]!
  10004fa48  stp     x29, x30, [sp, #0x10]
  10004fa4c  add     x29, sp, #0x10
  10004fa50  sub     sp, sp, #0x10
  10004fa54  mov     x19, x0
  10004fa58  str     x19, [sp]
  10004fa5c  adrp    x8, #0x10041e000
  10004fa60  ldr     x8, [x8, #0xd48]
  10004fa64  str     x8, [sp, #8]
  10004fa68  adrp    x8, #0x100418000
  10004fa6c  nop
  10004fa70  ldr     x1, [x8, #0xcc0]
  10004fa74  mov     x0, sp
  10004fa78  bl      _objc_msgSendSuper2                      ; [super die]
  10004fa7c  adrp    x8, #0x100416000
  10004fa80  nop
  10004fa84  ldr     x1, [x8, #0xff0]
  10004fa88  mov     x0, x19
  10004fa8c  bl      _objc_msgSend                            ; [self sound]
  10004fa90  mov     x29, x29
  10004fa94  bl      _objc_retainAutoreleasedReturnValue
  10004fa98  mov     x19, x0
  10004fa9c  adrp    x8, #0x100416000
  10004faa0  nop
  10004faa4  ldr     x1, [x8, #0xcb0]
  10004faa8  fmov    s0, #2.00000000
  10004faac  bl      _objc_msgSend                            ; [[self sound] setGain:2]
  10004fab0  mov     x0, x19
  10004fab4  bl      _objc_release
  10004fab8  sub     sp, x29, #0x10
  10004fabc  ldp     x29, x30, [sp, #0x10]
  10004fac0  ldp     x20, x19, [sp], #0x20
  10004fac4  ret
  10004fac8  mov     x20, x0
  10004facc  mov     x0, x19
  10004fad0  bl      _objc_release
  10004fad4  mov     x0, x20
  10004fad8  bl      __Unwind_Resume                          ; Unwind_Resume()
