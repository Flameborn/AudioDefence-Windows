// unit ADCarAlarm — 4 functions
//   0x1000ae8b8     176  -[ADCarAlarm initWithName:]
//   0x1000ae968     336  -[ADCarAlarm update:]
//   0x1000aeab8     500  -[ADCarAlarm startAlarm]
//   0x1000aecac     152  -[ADCarAlarm die]

; ======================================================================
; -[ADCarAlarm initWithName:]
; address 0x1000ae8b8  size 176  kind objc
; ======================================================================
  1000ae8b8  stp     x22, x21, [sp, #-0x30]!
  1000ae8bc  stp     x20, x19, [sp, #0x10]
  1000ae8c0  stp     x29, x30, [sp, #0x20]
  1000ae8c4  add     x29, sp, #0x20
  1000ae8c8  sub     sp, sp, #0x10
  1000ae8cc  mov     x20, x0
  1000ae8d0  mov     x0, x2
  1000ae8d4  bl      _objc_retain
  1000ae8d8  mov     x19, x0
  1000ae8dc  str     x20, [sp]
  1000ae8e0  adrp    x8, #0x10041e000
  1000ae8e4  ldr     x8, [x8, #0xf18]
  1000ae8e8  str     x8, [sp, #8]
  1000ae8ec  adrp    x8, #0x100418000
  1000ae8f0  nop
  1000ae8f4  ldr     x1, [x8, #0xb70]
  1000ae8f8  mov     x20, #0
  1000ae8fc  mov     x0, sp
  1000ae900  mov     x2, x19
  1000ae904  bl      _objc_msgSendSuper2                      ; [super initWithName:arg1]
  1000ae908  mov     x21, x0
  1000ae90c  cbz     x21, loc_1000ae92c                       ; if (self == 0)
  1000ae910  mov     x20, x21
  1000ae914  adrp    x8, #0x100418000
  1000ae918  nop
  1000ae91c  ldr     x1, [x8, #0xca0]
  1000ae920  mov     w2, #1
  1000ae924  mov     x0, x21
  1000ae928  bl      _objc_msgSend                            ; [self setUseOwnImpactSounds:1]
loc_1000ae92c:
  1000ae92c  mov     x0, x19
  1000ae930  bl      _objc_release
  1000ae934  mov     x0, x21
  1000ae938  sub     sp, x29, #0x20
  1000ae93c  ldp     x29, x30, [sp, #0x20]
  1000ae940  ldp     x20, x19, [sp, #0x10]
  1000ae944  ldp     x22, x21, [sp], #0x30
  1000ae948  ret
  1000ae94c  mov     x21, x0
  1000ae950  mov     x0, x19
  1000ae954  bl      _objc_release
  1000ae958  mov     x0, x20
  1000ae95c  bl      _objc_release
  1000ae960  mov     x0, x21
  1000ae964  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCarAlarm update:]
; address 0x1000ae968  size 336  kind objc
; ======================================================================
  1000ae968  stp     d9, d8, [sp, #-0x30]!
  1000ae96c  stp     x20, x19, [sp, #0x10]
  1000ae970  stp     x29, x30, [sp, #0x20]
  1000ae974  add     x29, sp, #0x20
  1000ae978  mov     v8.16b, v0.16b
  1000ae97c  mov     x19, x0
  1000ae980  adrp    x8, #0x100416000
  1000ae984  nop
  1000ae988  ldr     x1, [x8, #0xc60]
  1000ae98c  bl      _objc_msgSend                            ; [self state]
  1000ae990  cmp     w0, #5
  1000ae994  b.eq    loc_1000ae9f8                            ; if ([self state] == 5)
  1000ae998  cmp     w0, #1
  1000ae99c  b.ne    loc_1000aea34                            ; if ([self state] != 1)
  1000ae9a0  adrp    x8, #0x100416000
  1000ae9a4  nop
  1000ae9a8  ldr     x20, [x8, #0xfe0]
  1000ae9ac  mov     x0, x19
  1000ae9b0  mov     x1, x20
  1000ae9b4  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  1000ae9b8  fcmp    s0, #0.0
  1000ae9bc  b.eq    loc_1000aea6c                            ; if ([self spawn_sound_duration] == 0.0)
  1000ae9c0  adrp    x8, #0x100416000
  1000ae9c4  nop
  1000ae9c8  ldr     x1, [x8, #0xc68]
  1000ae9cc  mov     x0, x19
  1000ae9d0  bl      _objc_msgSend                            ; [self timeInState]
  1000ae9d4  mov     v9.16b, v0.16b
  1000ae9d8  mov     x0, x19
  1000ae9dc  mov     x1, x20
  1000ae9e0  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  1000ae9e4  fcmp    s9, s0
  1000ae9e8  b.le    loc_1000aea80                            ; if ([self timeInState] <= (or unordered) [self spawn_sound_duration])
  1000ae9ec  adrp    x8, #0x10041a000
  1000ae9f0  add     x8, x8, #0x590                           ; &@selector(startAlarm)
  1000ae9f4  b       loc_1000aea74
loc_1000ae9f8:
  1000ae9f8  adrp    x8, #0x100416000
  1000ae9fc  nop
  1000aea00  ldr     x1, [x8, #0xc68]
  1000aea04  mov     x0, x19
  1000aea08  bl      _objc_msgSend                            ; [self timeInState]
  1000aea0c  fmov    s1, #3.00000000
  1000aea10  fcmp    s0, s1
  1000aea14  b.le    loc_1000aea80                            ; if ([self timeInState] <= (or unordered) 3)
  1000aea18  adrp    x8, #0x100416000
  1000aea1c  nop
  1000aea20  ldr     x1, [x8, #0xc78]
  1000aea24  mov     w2, #-1
  1000aea28  mov     x0, x19
  1000aea2c  bl      _objc_msgSend                            ; [self setState:0xffffffff]
  1000aea30  b       loc_1000aea80
loc_1000aea34:
  1000aea34  cbnz    w0, loc_1000aea80                        ; if ([self state] != 0)
  1000aea38  adrp    x8, #0x100416000
  1000aea3c  nop
  1000aea40  ldr     x1, [x8, #0xc68]
  1000aea44  mov     x0, x19
  1000aea48  bl      _objc_msgSend                            ; [self timeInState]
  1000aea4c  mov     v9.16b, v0.16b
  1000aea50  adrp    x8, #0x100416000
  1000aea54  nop
  1000aea58  ldr     x1, [x8, #0xfd0]
  1000aea5c  mov     x0, x19
  1000aea60  bl      _objc_msgSend                            ; [self spawn_time]
  1000aea64  fcmp    s9, s0
  1000aea68  b.le    loc_1000aea80                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
loc_1000aea6c:
  1000aea6c  adrp    x8, #0x100416000
  1000aea70  add     x8, x8, #0xfd8                           ; &@selector(spawn)
loc_1000aea74:
  1000aea74  ldr     x1, [x8]                                 ; x1 = one of selectors {spawn, startAlarm}
  1000aea78  mov     x0, x19
  1000aea7c  bl      _objc_msgSend                            ; [self spawn | startAlarm]
loc_1000aea80:
  1000aea80  adrp    x8, #0x100416000
  1000aea84  nop
  1000aea88  ldr     x1, [x8, #0xc68]
  1000aea8c  mov     x0, x19
  1000aea90  bl      _objc_msgSend                            ; [self timeInState]
  1000aea94  fadd    s0, s0, s8
  1000aea98  adrp    x8, #0x100416000
  1000aea9c  nop
  1000aeaa0  ldr     x1, [x8, #0xc80]
  1000aeaa4  mov     x0, x19
  1000aeaa8  ldp     x29, x30, [sp, #0x20]
  1000aeaac  ldp     x20, x19, [sp, #0x10]
  1000aeab0  ldp     d9, d8, [sp], #0x30
  1000aeab4  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]

; ======================================================================
; -[ADCarAlarm startAlarm]
; address 0x1000aeab8  size 500  kind objc
; ======================================================================
  1000aeab8  stp     d9, d8, [sp, #-0x40]!
  1000aeabc  stp     x22, x21, [sp, #0x10]
  1000aeac0  stp     x20, x19, [sp, #0x20]
  1000aeac4  stp     x29, x30, [sp, #0x30]
  1000aeac8  add     x29, sp, #0x30
  1000aeacc  mov     x19, x0
  1000aead0  adrp    x8, #0x100416000
  1000aead4  nop
  1000aead8  ldr     x1, [x8, #0xc98]
  1000aeadc  bl      _objc_msgSend                            ; [self playlist]
  1000aeae0  mov     x29, x29
  1000aeae4  bl      _objc_retainAutoreleasedReturnValue
  1000aeae8  mov     x20, x0
  1000aeaec  adrp    x8, #0x100416000
  1000aeaf0  nop
  1000aeaf4  ldr     x1, [x8, #0xca0]
  1000aeaf8  adrp    x2, #0x1003c0000
  1000aeafc  add     x2, x2, #0xfd0                           ; @"alarm"
  1000aeb00  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"alarm"]
  1000aeb04  mov     x29, x29
  1000aeb08  bl      _objc_retainAutoreleasedReturnValue
  1000aeb0c  mov     x21, x0
  1000aeb10  adrp    x8, #0x100419000
  1000aeb14  nop
  1000aeb18  ldr     x1, [x8, #0x418]
  1000aeb1c  mov     x0, x19
  1000aeb20  mov     x2, x21
  1000aeb24  bl      _objc_msgSend                            ; [self setSound:[[self playlist] anySoundContaining:@"alarm"]]
  1000aeb28  mov     x0, x21
  1000aeb2c  bl      _objc_release
  1000aeb30  mov     x0, x20
  1000aeb34  bl      _objc_release
  1000aeb38  adrp    x8, #0x100416000
  1000aeb3c  nop
  1000aeb40  ldr     x20, [x8, #0xff0]
  1000aeb44  mov     x0, x19
  1000aeb48  mov     x1, x20
  1000aeb4c  bl      _objc_msgSend                            ; [self sound]
  1000aeb50  mov     x29, x29
  1000aeb54  bl      _objc_retainAutoreleasedReturnValue
  1000aeb58  mov     x21, x0
  1000aeb5c  adrp    x8, #0x100416000
  1000aeb60  nop
  1000aeb64  ldr     x1, [x8, #0xca8]
  1000aeb68  mov     w2, #1
  1000aeb6c  bl      _objc_msgSend                            ; [[self sound] setSpatialized:1]
  1000aeb70  mov     x0, x21
  1000aeb74  bl      _objc_release
  1000aeb78  mov     x0, x19
  1000aeb7c  mov     x1, x20
  1000aeb80  bl      _objc_msgSend                            ; [self sound]
  1000aeb84  mov     x29, x29
  1000aeb88  bl      _objc_retainAutoreleasedReturnValue
  1000aeb8c  mov     x21, x0
  1000aeb90  adrp    x8, #0x100417000
  1000aeb94  nop
  1000aeb98  ldr     x22, [x8, #8]
  1000aeb9c  mov     x0, x19
  1000aeba0  mov     x1, x22
  1000aeba4  bl      _objc_msgSend                            ; [self position]
  1000aeba8  mov     v8.16b, v0.16b
  1000aebac  mov     x0, x19
  1000aebb0  mov     x1, x22
  1000aebb4  bl      _objc_msgSend                            ; [self position]
  1000aebb8  fcvt    s0, d8
  1000aebbc  fcvt    s1, d1
  1000aebc0  adrp    x8, #0x100417000
  1000aebc4  nop
  1000aebc8  ldr     x1, [x8, #0x38]
  1000aebcc  movi    v2.16b, #0
  1000aebd0  mov     x0, x21
  1000aebd4  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  1000aebd8  mov     x0, x21
  1000aebdc  bl      _objc_release
  1000aebe0  mov     x0, x19
  1000aebe4  mov     x1, x20
  1000aebe8  bl      _objc_msgSend                            ; [self sound]
  1000aebec  mov     x29, x29
  1000aebf0  bl      _objc_retainAutoreleasedReturnValue
  1000aebf4  mov     x21, x0
  1000aebf8  adrp    x8, #0x100416000
  1000aebfc  nop
  1000aec00  ldr     x1, [x8, #0xcb8]
  1000aec04  mov     w2, #1
  1000aec08  bl      _objc_msgSend                            ; [[self sound] play:1]
  1000aec0c  mov     x0, x21
  1000aec10  bl      _objc_release
  1000aec14  mov     x0, x19
  1000aec18  mov     x1, x20
  1000aec1c  bl      _objc_msgSend                            ; [self sound]
  1000aec20  mov     x29, x29
  1000aec24  bl      _objc_retainAutoreleasedReturnValue
  1000aec28  mov     x20, x0
  1000aec2c  adrp    x8, #0x100416000
  1000aec30  nop
  1000aec34  ldr     x1, [x8, #0xcb0]
  1000aec38  fmov    s0, #2.00000000
  1000aec3c  bl      _objc_msgSend                            ; [[self sound] setGain:2]
  1000aec40  mov     x0, x20
  1000aec44  bl      _objc_release
  1000aec48  adrp    x8, #0x100416000
  1000aec4c  nop
  1000aec50  ldr     x1, [x8, #0xc78]
  1000aec54  mov     w2, #0x191
  1000aec58  mov     x0, x19
  1000aec5c  ldp     x29, x30, [sp, #0x30]
  1000aec60  ldp     x20, x19, [sp, #0x20]
  1000aec64  ldp     x22, x21, [sp, #0x10]
  1000aec68  ldp     d9, d8, [sp], #0x40
  1000aec6c  b       _objc_msgSend                            ; [self setState:401]
  1000aec70  b       loc_1000aec8c
  1000aec74  b       loc_1000aec98
  1000aec78  mov     x19, x0
  1000aec7c  mov     x0, x21
  1000aec80  bl      _objc_release
  1000aec84  b       loc_1000aec9c
  1000aec88  b       loc_1000aec8c
loc_1000aec8c:
  1000aec8c  mov     x19, x0
  1000aec90  mov     x0, x21
  1000aec94  b       loc_1000aeca0
loc_1000aec98:
  1000aec98  mov     x19, x0
loc_1000aec9c:
  1000aec9c  mov     x0, x20
loc_1000aeca0:
  1000aeca0  bl      _objc_release
  1000aeca4  mov     x0, x19
  1000aeca8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADCarAlarm die]
; address 0x1000aecac  size 152  kind objc
; ======================================================================
  1000aecac  stp     x20, x19, [sp, #-0x20]!
  1000aecb0  stp     x29, x30, [sp, #0x10]
  1000aecb4  add     x29, sp, #0x10
  1000aecb8  sub     sp, sp, #0x10
  1000aecbc  mov     x19, x0
  1000aecc0  str     x19, [sp]
  1000aecc4  adrp    x8, #0x10041e000
  1000aecc8  ldr     x8, [x8, #0xf18]
  1000aeccc  str     x8, [sp, #8]
  1000aecd0  adrp    x8, #0x100418000
  1000aecd4  nop
  1000aecd8  ldr     x1, [x8, #0xcc0]
  1000aecdc  mov     x0, sp
  1000aece0  bl      _objc_msgSendSuper2                      ; [super die]
  1000aece4  adrp    x8, #0x100416000
  1000aece8  nop
  1000aecec  ldr     x1, [x8, #0xff0]
  1000aecf0  mov     x0, x19
  1000aecf4  bl      _objc_msgSend                            ; [self sound]
  1000aecf8  mov     x29, x29
  1000aecfc  bl      _objc_retainAutoreleasedReturnValue
  1000aed00  mov     x19, x0
  1000aed04  adrp    x8, #0x100416000
  1000aed08  nop
  1000aed0c  ldr     x1, [x8, #0xcb0]
  1000aed10  fmov    s0, #4.00000000
  1000aed14  bl      _objc_msgSend                            ; [[self sound] setGain:4]
  1000aed18  mov     x0, x19
  1000aed1c  bl      _objc_release
  1000aed20  sub     sp, x29, #0x10
  1000aed24  ldp     x29, x30, [sp, #0x10]
  1000aed28  ldp     x20, x19, [sp], #0x20
  1000aed2c  ret
  1000aed30  mov     x20, x0
  1000aed34  mov     x0, x19
  1000aed38  bl      _objc_release
  1000aed3c  mov     x0, x20
  1000aed40  bl      __Unwind_Resume                          ; Unwind_Resume()
