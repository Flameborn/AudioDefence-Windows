// unit ADPasserBy — 6 functions
//   0x10000b770    1036  -[ADPasserBy update:]
//   0x10000bb7c     948  -[ADPasserBy setPositionFromDictionary:]
//   0x10000bf30     172  -[ADPasserBy setRandomPositionAtDistance:]
//   0x10000bfdc     128  -[ADPasserBy setRandomPosition]
//   0x10000c05c      72  -[ADPasserBy passBy]
//   0x10000c0a4       8  -[ADPasserBy getType]

; ======================================================================
; -[ADPasserBy update:]
; address 0x10000b770  size 1036  kind objc
; ======================================================================
  10000b770  stp     d13, d12, [sp, #-0x60]!
  10000b774  stp     d11, d10, [sp, #0x10]
  10000b778  stp     d9, d8, [sp, #0x20]
  10000b77c  stp     x22, x21, [sp, #0x30]
  10000b780  stp     x20, x19, [sp, #0x40]
  10000b784  stp     x29, x30, [sp, #0x50]
  10000b788  add     x29, sp, #0x50
  10000b78c  mov     v8.16b, v0.16b
  10000b790  mov     x19, x0
  10000b794  adrp    x8, #0x100416000
  10000b798  nop
  10000b79c  ldr     x1, [x8, #0xc60]
  10000b7a0  bl      _objc_msgSend                            ; [self state]
  10000b7a4  cmp     w0, #0x3e6
  10000b7a8  b.gt    loc_10000b810                            ; if ([self state] > 998)
  10000b7ac  cbz     w0, loc_10000b89c                        ; if ([self state] == 0)
  10000b7b0  cmp     w0, #1
  10000b7b4  b.ne    loc_10000b8e8                            ; if ([self state] != 1)
  10000b7b8  adrp    x8, #0x100416000
  10000b7bc  nop
  10000b7c0  ldr     x20, [x8, #0xfe0]
  10000b7c4  mov     x0, x19
  10000b7c8  mov     x1, x20
  10000b7cc  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10000b7d0  fcmp    s0, #0.0
  10000b7d4  b.eq    loc_10000b8d0                            ; if ([self spawn_sound_duration] == 0.0)
  10000b7d8  adrp    x8, #0x100416000
  10000b7dc  nop
  10000b7e0  ldr     x1, [x8, #0xc68]
  10000b7e4  mov     x0, x19
  10000b7e8  bl      _objc_msgSend                            ; [self timeInState]
  10000b7ec  mov     v9.16b, v0.16b
  10000b7f0  mov     x0, x19
  10000b7f4  mov     x1, x20
  10000b7f8  bl      _objc_msgSend                            ; [self spawn_sound_duration]
  10000b7fc  fcmp    s9, s0
  10000b800  b.le    loc_10000ba8c                            ; if ([self timeInState] <= (or unordered) [self spawn_sound_duration])
  10000b804  adrp    x8, #0x100416000
  10000b808  add     x8, x8, #0xfe8                           ; &@selector(passBy)
  10000b80c  b       loc_10000b8d8
loc_10000b810:
  10000b810  cmp     w0, #0x3e7
  10000b814  b.ne    loc_10000ba8c                            ; if ([self state] != 999)
  10000b818  adrp    x8, #0x100416000
  10000b81c  nop
  10000b820  ldr     x20, [x8, #0xc68]
  10000b824  mov     x0, x19
  10000b828  mov     x1, x20
  10000b82c  bl      _objc_msgSend                            ; [self timeInState]
  10000b830  fcvt    d0, s0
  10000b834  adrp    x8, #0x100181000
  10000b838  ldr     d1, [x8, #0x9e0]                         ; d1 = 0.1
  10000b83c  fcmp    d0, d1
  10000b840  b.le    loc_10000ba8c                            ; if ([self timeInState] <= (or unordered) 0.1)
  10000b844  mov     x0, x19
  10000b848  mov     x1, x20
  10000b84c  bl      _objc_msgSend                            ; [self timeInState]
  10000b850  mov     v9.16b, v0.16b
  10000b854  adrp    x8, #0x100416000
  10000b858  nop
  10000b85c  ldr     x1, [x8, #0xff0]
  10000b860  mov     x0, x19
  10000b864  bl      _objc_msgSend                            ; [self sound]
  10000b868  mov     x29, x29
  10000b86c  bl      _objc_retainAutoreleasedReturnValue
  10000b870  mov     x20, x0
  10000b874  adrp    x8, #0x100416000
  10000b878  nop
  10000b87c  ldr     x1, [x8, #0xff8]
  10000b880  bl      _objc_msgSend                            ; [[self sound] duration]
  10000b884  mov     v10.16b, v0.16b
  10000b888  mov     x0, x20
  10000b88c  bl      _objc_release
  10000b890  fcmp    s9, s10
  10000b894  b.gt    loc_10000ba60                            ; if ([self timeInState] > [[self sound] duration])
  10000b898  b       loc_10000ba8c
loc_10000b89c:
  10000b89c  adrp    x8, #0x100416000
  10000b8a0  nop
  10000b8a4  ldr     x1, [x8, #0xc68]
  10000b8a8  mov     x0, x19
  10000b8ac  bl      _objc_msgSend                            ; [self timeInState]
  10000b8b0  mov     v9.16b, v0.16b
  10000b8b4  adrp    x8, #0x100416000
  10000b8b8  nop
  10000b8bc  ldr     x1, [x8, #0xfd0]
  10000b8c0  mov     x0, x19
  10000b8c4  bl      _objc_msgSend                            ; [self spawn_time]
  10000b8c8  fcmp    s9, s0
  10000b8cc  b.le    loc_10000ba8c                            ; if ([self timeInState] <= (or unordered) [self spawn_time])
loc_10000b8d0:
  10000b8d0  adrp    x8, #0x100416000
  10000b8d4  add     x8, x8, #0xfd8                           ; &@selector(spawn)
loc_10000b8d8:
  10000b8d8  ldr     x1, [x8]                                 ; x1 = one of selectors {passBy, spawn}
  10000b8dc  mov     x0, x19
  10000b8e0  bl      _objc_msgSend                            ; [self passBy | spawn]
  10000b8e4  b       loc_10000ba8c
loc_10000b8e8:
  10000b8e8  cmp     w0, #0xc9
  10000b8ec  b.ne    loc_10000ba8c                            ; if ([self state] != 201)
  10000b8f0  adrp    x8, #0x100417000
  10000b8f4  nop
  10000b8f8  ldr     x20, [x8, #8]
  10000b8fc  mov     x0, x19
  10000b900  mov     x1, x20
  10000b904  bl      _objc_msgSend                            ; [self position]
  10000b908  mov     v9.16b, v0.16b
  10000b90c  adrp    x8, #0x100417000
  10000b910  nop
  10000b914  ldr     x21, [x8, #0x10]
  10000b918  mov     x0, x19
  10000b91c  mov     x1, x21
  10000b920  bl      _objc_msgSend                            ; [self getOrientation]
  10000b924  mov     v10.16b, v0.16b
  10000b928  adrp    x8, #0x100417000
  10000b92c  nop
  10000b930  ldr     x22, [x8, #0x18]
  10000b934  mov     x0, x19
  10000b938  mov     x1, x22
  10000b93c  bl      _objc_msgSend                            ; [self speed]
  10000b940  fcvt    d0, s0
  10000b944  fmul    d0, d10, d0
  10000b948  fcvt    d12, s8
  10000b94c  fmul    d0, d12, d0
  10000b950  fadd    d9, d9, d0
  10000b954  mov     x0, x19
  10000b958  mov     x1, x20
  10000b95c  bl      _objc_msgSend                            ; [self position]
  10000b960  mov     v10.16b, v1.16b
  10000b964  mov     x0, x19
  10000b968  mov     x1, x21
  10000b96c  bl      _objc_msgSend                            ; [self getOrientation]
  10000b970  mov     v11.16b, v1.16b
  10000b974  mov     x0, x19
  10000b978  mov     x1, x22
  10000b97c  bl      _objc_msgSend                            ; [self speed]
  10000b980  fcvt    d0, s0
  10000b984  fmul    d0, d11, d0
  10000b988  fmul    d0, d12, d0
  10000b98c  fadd    d1, d10, d0
  10000b990  adrp    x8, #0x100417000
  10000b994  nop
  10000b998  ldr     x1, [x8, #0x20]
  10000b99c  mov     x0, x19
  10000b9a0  mov     v0.16b, v9.16b
  10000b9a4  bl      _objc_msgSend                            ; [self setPosition:{([self position].0 + (arg1 * ([self getOrientation].0 * [self speed]))), ([self position].1 + (arg1 * ([self getOrientation].1 * [self speed])))}]
  10000b9a8  mov     x0, x19
  10000b9ac  mov     x1, x20
  10000b9b0  bl      _objc_msgSend                            ; [self position]
  10000b9b4  mov     v9.16b, v0.16b
  10000b9b8  mov     x0, x19
  10000b9bc  mov     x1, x20
  10000b9c0  bl      _objc_msgSend                            ; [self position]
  10000b9c4  fmul    d10, d9, d0
  10000b9c8  mov     x0, x19
  10000b9cc  mov     x1, x20
  10000b9d0  bl      _objc_msgSend                            ; [self position]
  10000b9d4  mov     v9.16b, v1.16b
  10000b9d8  mov     x0, x19
  10000b9dc  mov     x1, x20
  10000b9e0  bl      _objc_msgSend                            ; [self position]
  10000b9e4  fmul    d0, d9, d1
  10000b9e8  fadd    d0, d10, d0
  10000b9ec  fsqrt   d0, d0
  10000b9f0  fcvt    s9, d0
  10000b9f4  mov     x0, x19
  10000b9f8  mov     x1, x20
  10000b9fc  bl      _objc_msgSend                            ; [self position]
  10000ba00  fcvt    d10, s9
  10000ba04  fdiv    d0, d1, d10                              ; t1 = ([self position].1 / sqrt((([self position].0 * [self position].0) + ([self position].1 * [self position].1))))
  10000ba08  fcvt    s9, d0
  10000ba0c  mov     x0, x19
  10000ba10  mov     x1, x20
  10000ba14  bl      _objc_msgSend                            ; [self position]
  10000ba18  fdiv    d0, d0, d10                              ; t2 = ([self position].0 / sqrt((([self position].0 * [self position].0) + ([self position].1 * [self position].1))))
  10000ba1c  fcvt    s1, d0
  10000ba20  mov     v0.16b, v9.16b
  10000ba24  bl      _atan2f                                  ; atan2f(t1, t2)
  10000ba28  adrp    x8, #0x100417000
  10000ba2c  nop
  10000ba30  ldr     x1, [x8, #0x28]
  10000ba34  mov     x0, x19
  10000ba38  bl      _objc_msgSend                            ; [self setAngleFromPlayer:atan2f(t1, t2)]
  10000ba3c  adrp    x8, #0x100417000
  10000ba40  nop
  10000ba44  ldr     x1, [x8, #0x30]
  10000ba48  mov     x0, x19
  10000ba4c  bl      _objc_msgSend                            ; [self squaredDistance]
  10000ba50  adrp    x8, #0x100181000
  10000ba54  ldr     s1, [x8, #0x9d8]                         ; s1 = 225.0
  10000ba58  fcmp    s0, s1
  10000ba5c  b.le    loc_10000ba8c                            ; if ([self squaredDistance] <= (or unordered) 225)
loc_10000ba60:
  10000ba60  adrp    x8, #0x100417000
  10000ba64  nop
  10000ba68  ldr     x1, [x8]
  10000ba6c  mov     x0, x19
  10000ba70  bl      _objc_msgSend                            ; [self deactivatePlaylist]
  10000ba74  adrp    x8, #0x100416000
  10000ba78  nop
  10000ba7c  ldr     x1, [x8, #0xc78]
  10000ba80  mov     w2, #-1
  10000ba84  mov     x0, x19
  10000ba88  bl      _objc_msgSend                            ; [self setState:0xffffffff]
loc_10000ba8c:
  10000ba8c  adrp    x8, #0x100416000
  10000ba90  nop
  10000ba94  ldr     x20, [x8, #0xff0]
  10000ba98  mov     x0, x19
  10000ba9c  mov     x1, x20
  10000baa0  bl      _objc_msgSend                            ; [self sound]
  10000baa4  mov     x29, x29
  10000baa8  bl      _objc_retainAutoreleasedReturnValue
  10000baac  mov     x21, x0
  10000bab0  bl      _objc_release
  10000bab4  cbz     x21, loc_10000bb20                       ; if ([self sound] == 0)
  10000bab8  mov     x0, x19
  10000babc  mov     x1, x20
  10000bac0  bl      _objc_msgSend                            ; [self sound]
  10000bac4  mov     x29, x29
  10000bac8  bl      _objc_retainAutoreleasedReturnValue
  10000bacc  mov     x20, x0
  10000bad0  adrp    x8, #0x100417000
  10000bad4  nop
  10000bad8  ldr     x21, [x8, #8]
  10000badc  mov     x0, x19
  10000bae0  mov     x1, x21
  10000bae4  bl      _objc_msgSend                            ; [self position]
  10000bae8  mov     v9.16b, v0.16b
  10000baec  mov     x0, x19
  10000baf0  mov     x1, x21
  10000baf4  bl      _objc_msgSend                            ; [self position]
  10000baf8  fcvt    s0, d9
  10000bafc  fcvt    s1, d1
  10000bb00  adrp    x8, #0x100417000
  10000bb04  nop
  10000bb08  ldr     x1, [x8, #0x38]
  10000bb0c  movi    v2.16b, #0
  10000bb10  mov     x0, x20
  10000bb14  bl      _objc_msgSend                            ; [[self sound] setPlanar:{[self position].0, [self position].1, 0}]
  10000bb18  mov     x0, x20
  10000bb1c  bl      _objc_release
loc_10000bb20:
  10000bb20  adrp    x8, #0x100416000
  10000bb24  nop
  10000bb28  ldr     x1, [x8, #0xc68]
  10000bb2c  mov     x0, x19
  10000bb30  bl      _objc_msgSend                            ; [self timeInState]
  10000bb34  fadd    s0, s0, s8
  10000bb38  adrp    x8, #0x100416000
  10000bb3c  nop
  10000bb40  ldr     x1, [x8, #0xc80]
  10000bb44  mov     x0, x19
  10000bb48  ldp     x29, x30, [sp, #0x50]
  10000bb4c  ldp     x20, x19, [sp, #0x40]
  10000bb50  ldp     x22, x21, [sp, #0x30]
  10000bb54  ldp     d9, d8, [sp, #0x20]
  10000bb58  ldp     d11, d10, [sp, #0x10]
  10000bb5c  ldp     d13, d12, [sp], #0x60
  10000bb60  b       _objc_msgSend                            ; [self setTimeInState:([self timeInState] + arg1)]
loc_10000bb64:
  10000bb64  mov     x19, x0
  10000bb68  mov     x0, x20
  10000bb6c  bl      _objc_release
  10000bb70  mov     x0, x19
  10000bb74  bl      __Unwind_Resume                          ; Unwind_Resume()
  10000bb78  b       loc_10000bb64

; ======================================================================
; -[ADPasserBy setPositionFromDictionary:]
; address 0x10000bb7c  size 948  kind objc
; ======================================================================
  10000bb7c  stp     d9, d8, [sp, #-0x60]!
  10000bb80  stp     x26, x25, [sp, #0x10]
  10000bb84  stp     x24, x23, [sp, #0x20]
  10000bb88  stp     x22, x21, [sp, #0x30]
  10000bb8c  stp     x20, x19, [sp, #0x40]
  10000bb90  stp     x29, x30, [sp, #0x50]
  10000bb94  add     x29, sp, #0x50
  10000bb98  mov     x20, x0
  10000bb9c  mov     x0, x2
  10000bba0  bl      _objc_retain
  10000bba4  mov     x19, x0
  10000bba8  adrp    x8, #0x100417000
  10000bbac  nop
  10000bbb0  ldr     x21, [x8, #0x40]
  10000bbb4  adrp    x2, #0x1003b9000
  10000bbb8  add     x2, x2, #0xc50                           ; @"spawn_angle"
  10000bbbc  mov     x1, x21
  10000bbc0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_angle"]
  10000bbc4  mov     x29, x29
  10000bbc8  bl      _objc_retainAutoreleasedReturnValue
  10000bbcc  mov     x23, x0
  10000bbd0  adrp    x8, #0x100417000
  10000bbd4  nop
  10000bbd8  ldr     x22, [x8, #0x48]
  10000bbdc  mov     x1, x22
  10000bbe0  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_angle"] floatValue]
  10000bbe4  mov     v8.16b, v0.16b
  10000bbe8  mov     x0, x23
  10000bbec  bl      _objc_release
  10000bbf0  adrp    x2, #0x1003b9000
  10000bbf4  add     x2, x2, #0xc70                           ; @"spawn_distance"
  10000bbf8  mov     x0, x19
  10000bbfc  mov     x1, x21
  10000bc00  bl      _objc_msgSend                            ; [arg1 objectForKey:@"spawn_distance"]
  10000bc04  mov     x29, x29
  10000bc08  bl      _objc_retainAutoreleasedReturnValue
  10000bc0c  mov     x23, x0
  10000bc10  mov     x1, x22
  10000bc14  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"spawn_distance"] floatValue]
  10000bc18  mov     v9.16b, v0.16b
  10000bc1c  fcvt    d0, s8
  10000bc20  adrp    x8, #0x100181000
  10000bc24  ldr     d1, [x8, #0x9e8]                         ; d1 = 3.14159265
  10000bc28  fmul    d0, d0, d1
  10000bc2c  nop
  10000bc30  ldr     d1, [x8, #0x9f0]                         ; d1 = 180.0
  10000bc34  fdiv    d0, d0, d1
  10000bc38  fcvt    s8, d0
  10000bc3c  mov     x0, x23
  10000bc40  bl      _objc_release
  10000bc44  mov     v0.16b, v8.16b
  10000bc48  bl      ___sincosf_stret                         ; d0 = sin((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180)), d1 = cos((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180))
  10000bc4c  fmul    s0, s9, s0                               ; t1 = ([[arg1 objectForKey:@"spawn_distance"] floatValue] * sin((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180)))
  10000bc50  fcvt    d0, s0
  10000bc54  fmul    s1, s9, s1                               ; t2 = ([[arg1 objectForKey:@"spawn_distance"] floatValue] * cos((([[arg1 objectForKey:@"spawn_angle"] floatValue] * 3.14159) / 180)))
  10000bc58  fcvt    d1, s1
  10000bc5c  adrp    x8, #0x100417000
  10000bc60  nop
  10000bc64  ldr     x1, [x8, #0x20]
  10000bc68  mov     x0, x20
  10000bc6c  bl      _objc_msgSend                            ; [self setPosition:{t1, t2}]
  10000bc70  adrp    x2, #0x1003b9000
  10000bc74  add     x2, x2, #0xc90                           ; @"orientation"
  10000bc78  mov     x0, x19
  10000bc7c  mov     x1, x21
  10000bc80  bl      _objc_msgSend                            ; [arg1 objectForKey:@"orientation"]
  10000bc84  mov     x29, x29
  10000bc88  bl      _objc_retainAutoreleasedReturnValue
  10000bc8c  mov     x22, x0
  10000bc90  bl      _objc_release
  10000bc94  cbz     x22, loc_10000bd84                       ; if ([arg1 objectForKey:@"orientation"] == 0)
  10000bc98  adrp    x2, #0x1003b9000
  10000bc9c  add     x2, x2, #0xc90                           ; @"orientation"
  10000bca0  mov     x0, x19
  10000bca4  mov     x1, x21
  10000bca8  bl      _objc_msgSend                            ; [arg1 objectForKey:@"orientation"]
  10000bcac  mov     x29, x29
  10000bcb0  bl      _objc_retainAutoreleasedReturnValue
  10000bcb4  mov     x24, x0
  10000bcb8  adrp    x8, #0x100417000
  10000bcbc  nop
  10000bcc0  ldr     x22, [x8, #0x50]
  10000bcc4  mov     x1, x22
  10000bcc8  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"orientation"] uppercaseString]
  10000bccc  mov     x29, x29
  10000bcd0  bl      _objc_retainAutoreleasedReturnValue
  10000bcd4  mov     x25, x0
  10000bcd8  adrp    x8, #0x100417000
  10000bcdc  nop
  10000bce0  ldr     x23, [x8, #0x58]
  10000bce4  adrp    x2, #0x1003b9000
  10000bce8  add     x2, x2, #0xcb0                           ; @"N"
  10000bcec  mov     x1, x23
  10000bcf0  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"N"]
  10000bcf4  mov     x26, x0
  10000bcf8  mov     x0, x25
  10000bcfc  bl      _objc_release
  10000bd00  mov     x0, x24
  10000bd04  bl      _objc_release
  10000bd08  mov     x8, #0x7fffffffffffffff
  10000bd0c  cmp     x26, x8
  10000bd10  b.ne    loc_10000bd9c                            ; if ([[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"N"] != 0x7fffffffffffffff)
  10000bd14  adrp    x2, #0x1003b9000
  10000bd18  add     x2, x2, #0xc90                           ; @"orientation"
  10000bd1c  mov     x0, x19
  10000bd20  mov     x1, x21
  10000bd24  bl      _objc_msgSend                            ; [arg1 objectForKey:@"orientation"]
  10000bd28  mov     x29, x29
  10000bd2c  bl      _objc_retainAutoreleasedReturnValue
  10000bd30  mov     x24, x0
  10000bd34  mov     x1, x22
  10000bd38  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"orientation"] uppercaseString]
  10000bd3c  mov     x29, x29
  10000bd40  bl      _objc_retainAutoreleasedReturnValue
  10000bd44  mov     x25, x0
  10000bd48  adrp    x2, #0x1003b9000
  10000bd4c  add     x2, x2, #0xcd0                           ; @"S"
  10000bd50  mov     x1, x23
  10000bd54  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"S"]
  10000bd58  mov     x26, x0
  10000bd5c  mov     x0, x25
  10000bd60  bl      _objc_release
  10000bd64  mov     x0, x24
  10000bd68  bl      _objc_release
  10000bd6c  mov     x8, #0x7fffffffffffffff
  10000bd70  cmp     x26, x8
  10000bd74  movi    v0.16b, #0
  10000bd78  fmov    s1, #-1.00000000
  10000bd7c  fcsel   s8, s0, s1, eq                           ; t3 = ([[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"S"] == 0x7fffffffffffffff ? 0 : -1)
  10000bd80  b       loc_10000bda0
loc_10000bd84:
  10000bd84  adrp    x8, #0x100417000
  10000bd88  nop
  10000bd8c  ldr     x1, [x8, #0x68]
  10000bd90  mov     x0, x20
  10000bd94  bl      _objc_msgSend                            ; [self updateOrientation]
  10000bd98  b       loc_10000be90
loc_10000bd9c:
  10000bd9c  fmov    s8, #1.00000000
loc_10000bda0:
  10000bda0  adrp    x2, #0x1003b9000
  10000bda4  add     x2, x2, #0xc90                           ; @"orientation"
  10000bda8  mov     x0, x19
  10000bdac  mov     x1, x21
  10000bdb0  bl      _objc_msgSend                            ; [arg1 objectForKey:@"orientation"]
  10000bdb4  mov     x29, x29
  10000bdb8  bl      _objc_retainAutoreleasedReturnValue
  10000bdbc  mov     x24, x0
  10000bdc0  mov     x1, x22
  10000bdc4  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"orientation"] uppercaseString]
  10000bdc8  mov     x29, x29
  10000bdcc  bl      _objc_retainAutoreleasedReturnValue
  10000bdd0  mov     x25, x0
  10000bdd4  adrp    x2, #0x1003b9000
  10000bdd8  add     x2, x2, #0xcf0                           ; @"E"
  10000bddc  mov     x1, x23
  10000bde0  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"E"]
  10000bde4  mov     x26, x0
  10000bde8  mov     x0, x25
  10000bdec  bl      _objc_release
  10000bdf0  mov     x0, x24
  10000bdf4  bl      _objc_release
  10000bdf8  mov     x8, #0x7fffffffffffffff
  10000bdfc  cmp     x26, x8
  10000be00  b.ne    loc_10000be74                            ; if ([[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"E"] != 0x7fffffffffffffff)
  10000be04  adrp    x2, #0x1003b9000
  10000be08  add     x2, x2, #0xc90                           ; @"orientation"
  10000be0c  mov     x0, x19
  10000be10  mov     x1, x21
  10000be14  bl      _objc_msgSend                            ; [arg1 objectForKey:@"orientation"]
  10000be18  mov     x29, x29
  10000be1c  bl      _objc_retainAutoreleasedReturnValue
  10000be20  mov     x21, x0
  10000be24  mov     x1, x22
  10000be28  bl      _objc_msgSend                            ; [[arg1 objectForKey:@"orientation"] uppercaseString]
  10000be2c  mov     x29, x29
  10000be30  bl      _objc_retainAutoreleasedReturnValue
  10000be34  mov     x22, x0
  10000be38  adrp    x2, #0x1003b9000
  10000be3c  add     x2, x2, #0xd10                           ; @"W"
  10000be40  mov     x1, x23
  10000be44  bl      _objc_msgSend                            ; [[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"W"]
  10000be48  mov     x23, x0
  10000be4c  mov     x0, x22
  10000be50  bl      _objc_release
  10000be54  mov     x0, x21
  10000be58  bl      _objc_release
  10000be5c  mov     x8, #0x7fffffffffffffff
  10000be60  cmp     x23, x8
  10000be64  movi    v0.16b, #0
  10000be68  fmov    s1, #-1.00000000
  10000be6c  fcsel   s0, s0, s1, eq                           ; t4 = ([[[arg1 objectForKey:@"orientation"] uppercaseString] rangeOfString:@"W"] == 0x7fffffffffffffff ? 0 : -1)
  10000be70  b       loc_10000be78
loc_10000be74:
  10000be74  fmov    s0, #1.00000000
loc_10000be78:
  10000be78  adrp    x8, #0x100417000
  10000be7c  nop
  10000be80  ldr     x1, [x8, #0x60]
  10000be84  mov     x0, x20
  10000be88  mov     v1.16b, v8.16b
  10000be8c  bl      _objc_msgSend                            ; [self setOrientationWithX:d0 andY:d1]
loc_10000be90:
  10000be90  mov     x0, x19
  10000be94  ldp     x29, x30, [sp, #0x50]
  10000be98  ldp     x20, x19, [sp, #0x40]
  10000be9c  ldp     x22, x21, [sp, #0x30]
  10000bea0  ldp     x24, x23, [sp, #0x20]
  10000bea4  ldp     x26, x25, [sp, #0x10]
  10000bea8  ldp     d9, d8, [sp], #0x60
  10000beac  b       _objc_release
  10000beb0  mov     x20, x0
  10000beb4  b       loc_10000bf20
  10000beb8  b       loc_10000bebc
loc_10000bebc:
  10000bebc  mov     x20, x0
  10000bec0  mov     x0, x23
  10000bec4  bl      _objc_release
  10000bec8  b       loc_10000bf20
  10000becc  mov     x20, x0
  10000bed0  b       loc_10000bef8
  10000bed4  b       loc_10000beec
  10000bed8  mov     x20, x0
  10000bedc  b       loc_10000bef8
  10000bee0  b       loc_10000beec
  10000bee4  mov     x20, x0
  10000bee8  b       loc_10000bef8
loc_10000beec:
  10000beec  mov     x20, x0
  10000bef0  mov     x0, x25
  10000bef4  bl      _objc_release
loc_10000bef8:
  10000bef8  mov     x0, x24
  10000befc  bl      _objc_release
  10000bf00  b       loc_10000bf20
  10000bf04  mov     x20, x0
  10000bf08  b       loc_10000bf18
  10000bf0c  mov     x20, x0
  10000bf10  mov     x0, x22
  10000bf14  bl      _objc_release
loc_10000bf18:
  10000bf18  mov     x0, x21
  10000bf1c  bl      _objc_release
loc_10000bf20:
  10000bf20  mov     x0, x19
  10000bf24  bl      _objc_release
  10000bf28  mov     x0, x20
  10000bf2c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPasserBy setRandomPositionAtDistance:]
; address 0x10000bf30  size 172  kind objc
; ======================================================================
  10000bf30  stp     x20, x19, [sp, #-0x20]!
  10000bf34  stp     x29, x30, [sp, #0x10]
  10000bf38  add     x29, sp, #0x10
  10000bf3c  mov     x19, x2
  10000bf40  mov     x20, x0
  10000bf44  bl      _rand                                    ; rand()
  10000bf48  sxtw    x8, w0
  10000bf4c  mov     x9, #-0x49f40001
  10000bf50  movk    x9, #0x60b7
  10000bf54  mul     x8, x8, x9
  10000bf58  lsr     x8, x8, #0x20
  10000bf5c  add     w8, w8, w0
  10000bf60  asr     w9, w8, #8
  10000bf64  add     w8, w9, w8, lsr #31                      ; t1 = (((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >> 8) + ((((rand() * 0xffffffffb60b60b7) >>> 32) + rand()) >>> 31))
  10000bf68  mov     w9, #0x168
  10000bf6c  msub    w8, w8, w9, w0
  10000bf70  scvtf   s0, w8
  10000bf74  fcvt    d0, s0
  10000bf78  adrp    x8, #0x100181000
  10000bf7c  ldr     d1, [x8, #0x9e8]                         ; d1 = 3.14159265
  10000bf80  fmul    d0, d0, d1
  10000bf84  nop
  10000bf88  ldr     d1, [x8, #0x9f0]                         ; d1 = 180.0
  10000bf8c  fdiv    d0, d0, d1
  10000bf90  fcvt    s0, d0
  10000bf94  bl      ___sincosf_stret                         ; d0 = sin((((float)(rand() - t1 * 360) * 3.14159) / 180)), d1 = cos((((float)(rand() - t1 * 360) * 3.14159) / 180))
  10000bf98  scvtf   s2, w19
  10000bf9c  fmul    s0, s2, s0
  10000bfa0  fcvt    d0, s0
  10000bfa4  fmul    s1, s2, s1
  10000bfa8  fcvt    d1, s1
  10000bfac  adrp    x8, #0x100417000
  10000bfb0  nop
  10000bfb4  ldr     x1, [x8, #0x20]
  10000bfb8  mov     x0, x20
  10000bfbc  bl      _objc_msgSend                            ; [self setPosition:{((float)arg1 * sin((((float)(rand() - t1 * 360) * 3.14159) / 180))), ((float)arg1 * cos((((float)(rand() - t1 * 360) * 3.14159) / 180)))}]
  10000bfc0  adrp    x8, #0x100417000
  10000bfc4  nop
  10000bfc8  ldr     x1, [x8, #0x68]
  10000bfcc  mov     x0, x20
  10000bfd0  ldp     x29, x30, [sp, #0x10]
  10000bfd4  ldp     x20, x19, [sp], #0x20
  10000bfd8  b       _objc_msgSend                            ; [self updateOrientation]

; ======================================================================
; -[ADPasserBy setRandomPosition]
; address 0x10000bfdc  size 128  kind objc
; ======================================================================
  10000bfdc  stp     x20, x19, [sp, #-0x20]!
  10000bfe0  stp     x29, x30, [sp, #0x10]
  10000bfe4  add     x29, sp, #0x10
  10000bfe8  mov     x19, x0
  10000bfec  bl      _rand                                    ; rand()
  10000bff0  lsl     w8, w0, #1
  10000bff4  and     w8, w8, #2
  10000bff8  sub     w20, w8, #1
  10000bffc  bl      _rand                                    ; rand()
  10000c000  add     w8, w0, #3
  10000c004  cmp     w0, #0
  10000c008  csel    w8, w8, w0, lt
  10000c00c  and     w8, w8, #0xfffffffc
  10000c010  sub     w8, w0, w8
  10000c014  add     w8, w8, #4
  10000c018  mul     w8, w8, w20                              ; t1 = (((rand() - ((rand() < 0 ? (rand() + 3) : rand()) & 0xfffffffc)) + 4) * (((rand() << 1) & 2) - 1))
  10000c01c  scvtf   d1, w8
  10000c020  adrp    x8, #0x100417000
  10000c024  nop
  10000c028  ldr     x1, [x8, #0x20]
  10000c02c  fmov    d0, #8.00000000
  10000c030  mov     x0, x19
  10000c034  bl      _objc_msgSend                            ; [self setPosition:{8, (float)t1}]
  10000c038  adrp    x8, #0x100417000
  10000c03c  nop
  10000c040  ldr     x1, [x8, #0x60]
  10000c044  fmov    s0, #-1.00000000
  10000c048  movi    v1.16b, #0
  10000c04c  mov     x0, x19
  10000c050  ldp     x29, x30, [sp, #0x10]
  10000c054  ldp     x20, x19, [sp], #0x20
  10000c058  b       _objc_msgSend                            ; [self setOrientationWithX:-1 andY:0]

; ======================================================================
; -[ADPasserBy passBy]
; address 0x10000c05c  size 72  kind objc
; ======================================================================
  10000c05c  stp     x20, x19, [sp, #-0x20]!
  10000c060  stp     x29, x30, [sp, #0x10]
  10000c064  add     x29, sp, #0x10
  10000c068  mov     x19, x0
  10000c06c  adrp    x8, #0x100416000
  10000c070  nop
  10000c074  ldr     x1, [x8, #0xc78]
  10000c078  mov     w2, #0xc9
  10000c07c  bl      _objc_msgSend                            ; [self setState:201]
  10000c080  adrp    x8, #0x100417000
  10000c084  nop
  10000c088  ldr     x1, [x8, #0x70]
  10000c08c  adrp    x2, #0x1003b9000
  10000c090  add     x2, x2, #0xd30                           ; @"_moving_"
  10000c094  mov     x0, x19
  10000c098  ldp     x29, x30, [sp, #0x10]
  10000c09c  ldp     x20, x19, [sp], #0x20
  10000c0a0  b       _objc_msgSend                            ; [self playAnySoundContaining:@"_moving_"]

; ======================================================================
; -[ADPasserBy getType]
; address 0x10000c0a4  size 8  kind objc
; ======================================================================
  10000c0a4  mov     w0, #1
  10000c0a8  ret
