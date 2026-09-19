// unit ADPowerUp — 14 functions
//   0x10001d8c0     356  -[ADPowerUp initWithType:]
//   0x10001da24       4  -[ADPowerUp preload]
//   0x10001da28     100  -[ADPowerUp use]
//   0x10001da8c       4  -[ADPowerUp update:]
//   0x10001da90     120  -[ADPowerUp clean]
//   0x10001db08     356  -[ADPowerUp activate]
//   0x10001dc6c      36  -[ADPowerUp activate]_block_invoke
//   0x10001dc90      16  -[ADPowerUp playlist]
//   0x10001dca0      12  -[ADPowerUp setPlaylist:]
//   0x10001dcac      16  -[ADPowerUp name]
//   0x10001dcbc      12  -[ADPowerUp setName:]
//   0x10001dcc8      16  -[ADPowerUp type]
//   0x10001dcd8      16  -[ADPowerUp setType:]
//   0x10001dce8      64  -[ADPowerUp .cxx_destruct]

; ======================================================================
; -[ADPowerUp initWithType:]
; address 0x10001d8c0  size 356  kind objc
; ======================================================================
  10001d8c0  stp     x22, x21, [sp, #-0x30]!
  10001d8c4  stp     x20, x19, [sp, #0x10]
  10001d8c8  stp     x29, x30, [sp, #0x20]
  10001d8cc  add     x29, sp, #0x20
  10001d8d0  sub     sp, sp, #0x10
  10001d8d4  mov     x21, x2
  10001d8d8  str     x0, [sp]
  10001d8dc  adrp    x8, #0x10041e000
  10001d8e0  ldr     x8, [x8, #0xc28]
  10001d8e4  str     x8, [sp, #8]
  10001d8e8  adrp    x8, #0x100416000
  10001d8ec  nop
  10001d8f0  ldr     x1, [x8, #0xab8]
  10001d8f4  mov     x20, #0
  10001d8f8  mov     x0, sp
  10001d8fc  bl      _objc_msgSendSuper2                      ; [super init]
  10001d900  mov     x19, x0
  10001d904  cbz     x19, loc_10001d9e8                       ; if (self == 0)
  10001d908  mov     x20, x19
  10001d90c  sxtw    x2, w21
  10001d910  adrp    x8, #0x100417000
  10001d914  nop
  10001d918  ldr     x1, [x8, #0x9a0]
  10001d91c  mov     x0, x19
  10001d920  bl      _objc_msgSend                            ; [self setType:arg1]
  10001d924  mov     x20, x19
  10001d928  adrp    x8, #0x100417000
  10001d92c  nop
  10001d930  ldr     x1, [x8, #0x9a8]
  10001d934  mov     x0, x19
  10001d938  bl      _objc_msgSend                            ; [self type]
  10001d93c  sub     x8, x0, #1
  10001d940  cmp     x8, #3
  10001d944  b.hi    loc_10001d9e8                            ; if (([self type] - 1) >u 3)
  10001d948  adr     x9, #0x10001da14                         ; 0x10001da14
  10001d94c  nop
  10001d950  ldrsw   x8, [x9, x8, lsl #2]
  10001d954  add     x8, x8, x9
  10001d958  br      x8                                       ; switch (([self type] - 1)) { case 0: goto loc_10001d95c; case 1: goto loc_10001d980; case 2: goto loc_10001d9a4; case 3: goto loc_10001d9c8 }
loc_10001d95c:  ; case 0
  10001d95c  mov     x20, x19
  10001d960  adrp    x8, #0x100417000
  10001d964  nop
  10001d968  ldr     x1, [x8, #0x428]
  10001d96c  adrp    x2, #0x1003ba000
  10001d970  add     x2, x2, #0xd10                           ; @"MINIGUN"
  10001d974  mov     x0, x19
  10001d978  bl      _objc_msgSend                            ; [self setName:@"MINIGUN"]
  10001d97c  b       loc_10001d9e8
loc_10001d980:  ; case 1
  10001d980  mov     x20, x19
  10001d984  adrp    x8, #0x100417000
  10001d988  nop
  10001d98c  ldr     x1, [x8, #0x428]
  10001d990  adrp    x2, #0x1003ba000
  10001d994  add     x2, x2, #0xcf0                           ; @"FIREWORKS"
  10001d998  mov     x0, x19
  10001d99c  bl      _objc_msgSend                            ; [self setName:@"FIREWORKS"]
  10001d9a0  b       loc_10001d9e8
loc_10001d9a4:  ; case 2
  10001d9a4  mov     x20, x19
  10001d9a8  adrp    x8, #0x100417000
  10001d9ac  nop
  10001d9b0  ldr     x1, [x8, #0x428]
  10001d9b4  adrp    x2, #0x1003ba000
  10001d9b8  add     x2, x2, #0xd50                           ; @"TORNADO"
  10001d9bc  mov     x0, x19
  10001d9c0  bl      _objc_msgSend                            ; [self setName:@"TORNADO"]
  10001d9c4  b       loc_10001d9e8
loc_10001d9c8:  ; case 3
  10001d9c8  mov     x20, x19
  10001d9cc  adrp    x8, #0x100417000
  10001d9d0  nop
  10001d9d4  ldr     x1, [x8, #0x428]
  10001d9d8  adrp    x2, #0x1003ba000
  10001d9dc  add     x2, x2, #0xd30                           ; @"TESLA"
  10001d9e0  mov     x0, x19
  10001d9e4  bl      _objc_msgSend                            ; [self setName:@"TESLA"]
loc_10001d9e8:
  10001d9e8  mov     x0, x19
  10001d9ec  sub     sp, x29, #0x20
  10001d9f0  ldp     x29, x30, [sp, #0x20]
  10001d9f4  ldp     x20, x19, [sp, #0x10]
  10001d9f8  ldp     x22, x21, [sp], #0x30
  10001d9fc  ret
  10001da00  mov     x19, x0
  10001da04  mov     x0, x20
  10001da08  bl      _objc_release
  10001da0c  mov     x0, x19
  10001da10  bl      __Unwind_Resume                          ; Unwind_Resume()
  10001da14  .word   jump table of 10001d958, case 0 -> loc_10001d95c
  10001da18  .word   jump table of 10001d958, case 1 -> loc_10001d980
  10001da1c  .word   jump table of 10001d958, case 2 -> loc_10001d9a4
  10001da20  .word   jump table of 10001d958, case 3 -> loc_10001d9c8

; ======================================================================
; -[ADPowerUp preload]
; address 0x10001da24  size 4  kind objc
; ======================================================================
  10001da24  ret

; ======================================================================
; -[ADPowerUp use]
; address 0x10001da28  size 100  kind objc
; ======================================================================
  10001da28  stp     x20, x19, [sp, #-0x20]!
  10001da2c  stp     x29, x30, [sp, #0x10]
  10001da30  add     x29, sp, #0x10
  10001da34  adrp    x8, #0x10041e000
  10001da38  ldr     x0, [x8, #8]                             ; class ADTracker
  10001da3c  adrp    x8, #0x100416000
  10001da40  nop
  10001da44  ldr     x1, [x8, #0xac0]
  10001da48  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10001da4c  mov     x29, x29
  10001da50  bl      _objc_retainAutoreleasedReturnValue
  10001da54  mov     x19, x0
  10001da58  adrp    x8, #0x100417000
  10001da5c  nop
  10001da60  ldr     x1, [x8, #0x9b0]
  10001da64  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] powerUpUsed]
  10001da68  mov     x0, x19
  10001da6c  ldp     x29, x30, [sp, #0x10]
  10001da70  ldp     x20, x19, [sp], #0x20
  10001da74  b       _objc_release
  10001da78  mov     x20, x0
  10001da7c  mov     x0, x19
  10001da80  bl      _objc_release
  10001da84  mov     x0, x20
  10001da88  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUp update:]
; address 0x10001da8c  size 4  kind objc
; ======================================================================
  10001da8c  ret

; ======================================================================
; -[ADPowerUp clean]
; address 0x10001da90  size 120  kind objc
; ======================================================================
  10001da90  stp     x20, x19, [sp, #-0x20]!
  10001da94  stp     x29, x30, [sp, #0x10]
  10001da98  add     x29, sp, #0x10
  10001da9c  adrp    x8, #0x10041e000
  10001daa0  ldr     x0, [x8, #8]                             ; class ADTracker
  10001daa4  adrp    x8, #0x100416000
  10001daa8  nop
  10001daac  ldr     x1, [x8, #0xac0]
  10001dab0  bl      _objc_msgSend                            ; [ADTracker sharedInstance]
  10001dab4  mov     x29, x29
  10001dab8  bl      _objc_retainAutoreleasedReturnValue
  10001dabc  mov     x19, x0
  10001dac0  adrp    x8, #0x100417000
  10001dac4  nop
  10001dac8  ldr     x1, [x8, #0x9b8]
  10001dacc  mov     x2, #0
  10001dad0  mov     x4, #0
  10001dad4  adrp    x3, #0x1003ba000
  10001dad8  add     x3, x3, #0xd70                           ; @"PowerUp name"
  10001dadc  mov     x5, #0
  10001dae0  bl      _objc_msgSend                            ; [[ADTracker sharedInstance] setValue:0 ForDimension:@"PowerUp name" AndValue:0 ForMetric:0]
  10001dae4  mov     x0, x19
  10001dae8  ldp     x29, x30, [sp, #0x10]
  10001daec  ldp     x20, x19, [sp], #0x20
  10001daf0  b       _objc_release
  10001daf4  mov     x20, x0
  10001daf8  mov     x0, x19
  10001dafc  bl      _objc_release
  10001db00  mov     x0, x20
  10001db04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUp activate]
; address 0x10001db08  size 356  kind objc
; ======================================================================
  10001db08  stp     x22, x21, [sp, #-0x30]!
  10001db0c  stp     x20, x19, [sp, #0x10]
  10001db10  stp     x29, x30, [sp, #0x20]
  10001db14  add     x29, sp, #0x20
  10001db18  sub     sp, sp, #0x30
  10001db1c  mov     x20, x0
  10001db20  adrp    x8, #0x100416000
  10001db24  nop
  10001db28  ldr     x1, [x8, #0xc98]
  10001db2c  bl      _objc_msgSend                            ; [self playlist]
  10001db30  mov     x29, x29
  10001db34  bl      _objc_retainAutoreleasedReturnValue
  10001db38  mov     x21, x0
  10001db3c  adrp    x8, #0x100416000
  10001db40  nop
  10001db44  ldr     x1, [x8, #0xca0]
  10001db48  adrp    x2, #0x1003ba000
  10001db4c  add     x2, x2, #0xd90                           ; @"announce"
  10001db50  bl      _objc_msgSend                            ; [[self playlist] anySoundContaining:@"announce"]
  10001db54  mov     x29, x29
  10001db58  bl      _objc_retainAutoreleasedReturnValue
  10001db5c  mov     x19, x0
  10001db60  mov     x0, x21
  10001db64  bl      _objc_release
  10001db68  adrp    x8, #0x1003b0000
  10001db6c  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  10001db70  adr     x9, #0x10001dc6c                         ; &-[ADPowerUp activate]_block_invoke
  10001db74  nop
  10001db78  mov     w10, #-0x40000000
  10001db7c  adrp    x11, #0x1003b1000
  10001db80  add     x11, x11, #0x1a0                         ; &d_1003b11a0
  10001db84  str     x8, [sp, #8]
  10001db88  stp     w10, wzr, [sp, #0x10]
  10001db8c  stp     x9, x11, [sp, #0x18]
  10001db90  str     x20, [sp, #0x28]
  10001db94  adrp    x8, #0x100417000
  10001db98  nop
  10001db9c  ldr     x1, [x8, #0x9c8]
  10001dba0  add     x2, sp, #8
  10001dba4  mov     x0, x19
  10001dba8  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"announce"] add3DSoundEndCallback:^{-[ADPowerUp activate]_block_invoke captures +0x20=self}]
  10001dbac  adrp    x8, #0x10041d000
  10001dbb0  ldr     x0, [x8, #0xef0]                         ; class ADGameParameters
  10001dbb4  adrp    x8, #0x100416000
  10001dbb8  nop
  10001dbbc  ldr     x1, [x8, #0xc00]
  10001dbc0  bl      _objc_msgSend                            ; [ADGameParameters sharedParameters]
  10001dbc4  mov     x29, x29
  10001dbc8  bl      _objc_retainAutoreleasedReturnValue
  10001dbcc  mov     x21, x0
  10001dbd0  adrp    x8, #0x100417000
  10001dbd4  nop
  10001dbd8  ldr     x1, [x8, #0x5f8]
  10001dbdc  bl      _objc_msgSend                            ; [[ADGameParameters sharedParameters] lastAnnouncerValue]
  10001dbe0  mov     x20, x0
  10001dbe4  mov     x0, x21
  10001dbe8  bl      _objc_release
  10001dbec  tbnz    w20, #0, loc_10001dc08                   ; if (([[ADGameParameters sharedParameters] lastAnnouncerValue] & 1))
  10001dbf0  adrp    x8, #0x100416000
  10001dbf4  nop
  10001dbf8  ldr     x1, [x8, #0xcb0]
  10001dbfc  movi    v0.16b, #0
  10001dc00  mov     x0, x19
  10001dc04  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"announce"] setGain:0]
loc_10001dc08:
  10001dc08  adrp    x8, #0x100416000
  10001dc0c  nop
  10001dc10  ldr     x1, [x8, #0xcb8]
  10001dc14  mov     w2, #0
  10001dc18  mov     x0, x19
  10001dc1c  bl      _objc_msgSend                            ; [[[self playlist] anySoundContaining:@"announce"] play:0]
  10001dc20  mov     x0, x19
  10001dc24  bl      _objc_release
  10001dc28  sub     sp, x29, #0x20
  10001dc2c  ldp     x29, x30, [sp, #0x20]
  10001dc30  ldp     x20, x19, [sp, #0x10]
  10001dc34  ldp     x22, x21, [sp], #0x30
  10001dc38  ret
  10001dc3c  mov     x20, x0
  10001dc40  b       loc_10001dc5c
  10001dc44  mov     x20, x0
  10001dc48  mov     x0, x21
  10001dc4c  b       loc_10001dc60
  10001dc50  mov     x20, x0
  10001dc54  mov     x0, x21
  10001dc58  bl      _objc_release
loc_10001dc5c:
  10001dc5c  mov     x0, x19
loc_10001dc60:
  10001dc60  bl      _objc_release
  10001dc64  mov     x0, x20
  10001dc68  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADPowerUp activate]_block_invoke
; address 0x10001dc6c  size 36  kind block
; ======================================================================
  10001dc6c  stp     x29, x30, [sp, #-0x10]!
  10001dc70  mov     x29, sp
  10001dc74  ldr     x0, [x0, #0x20]                          ; x0 = captured self
  10001dc78  adrp    x8, #0x100417000
  10001dc7c  nop
  10001dc80  ldr     x1, [x8, #0x9c0]
  10001dc84  bl      _objc_msgSend                            ; [self use]
  10001dc88  ldp     x29, x30, [sp], #0x10
  10001dc8c  ret

; ======================================================================
; -[ADPowerUp playlist]
; address 0x10001dc90  size 16  kind objc
; ======================================================================
  10001dc90  adrp    x8, #0x10041f000
  10001dc94  ldrsw   x2, [x8, #0x6a4]                         ; ivar offset ADPowerUp._playlist (+0x8)
  10001dc98  mov     w3, #1
  10001dc9c  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADPowerUp setPlaylist:]
; address 0x10001dca0  size 12  kind objc
; ======================================================================
  10001dca0  adrp    x8, #0x10041f000
  10001dca4  ldrsw   x3, [x8, #0x6a4]                         ; ivar offset ADPowerUp._playlist (+0x8)
  10001dca8  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADPowerUp name]
; address 0x10001dcac  size 16  kind objc
; ======================================================================
  10001dcac  adrp    x8, #0x10041f000
  10001dcb0  ldrsw   x2, [x8, #0x6a8]                         ; ivar offset ADPowerUp._name (+0x10)
  10001dcb4  mov     w3, #1
  10001dcb8  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 1)

; ======================================================================
; -[ADPowerUp setName:]
; address 0x10001dcbc  size 12  kind objc
; ======================================================================
  10001dcbc  adrp    x8, #0x10041f000
  10001dcc0  ldrsw   x3, [x8, #0x6a8]                         ; ivar offset ADPowerUp._name (+0x10)
  10001dcc4  b       _objc_setProperty_atomic                 ; objc_setProperty_atomic(self, _cmd, arg1, x3)

; ======================================================================
; -[ADPowerUp type]
; address 0x10001dcc8  size 16  kind objc
; ======================================================================
  10001dcc8  adrp    x8, #0x10041f000
  10001dccc  ldrsw   x8, [x8, #0x6ac]                         ; ivar offset ADPowerUp._type (+0x18)
  10001dcd0  ldr     x0, [x0, x8]                             ; x0 = self->_type
  10001dcd4  ret

; ======================================================================
; -[ADPowerUp setType:]
; address 0x10001dcd8  size 16  kind objc
; ======================================================================
  10001dcd8  adrp    x8, #0x10041f000
  10001dcdc  ldrsw   x8, [x8, #0x6ac]                         ; ivar offset ADPowerUp._type (+0x18)
  10001dce0  str     x2, [x0, x8]                             ; self->_type = arg1
  10001dce4  ret

; ======================================================================
; -[ADPowerUp .cxx_destruct]
; address 0x10001dce8  size 64  kind objc
; ======================================================================
  10001dce8  stp     x20, x19, [sp, #-0x20]!
  10001dcec  stp     x29, x30, [sp, #0x10]
  10001dcf0  add     x29, sp, #0x10
  10001dcf4  mov     x19, x0
  10001dcf8  adrp    x8, #0x10041f000
  10001dcfc  ldrsw   x8, [x8, #0x6a8]                         ; ivar offset ADPowerUp._name (+0x10)
  10001dd00  add     x0, x19, x8
  10001dd04  mov     x1, #0
  10001dd08  bl      _objc_storeStrong
  10001dd0c  mov     x1, #0
  10001dd10  adrp    x8, #0x10041f000
  10001dd14  ldrsw   x8, [x8, #0x6a4]                         ; ivar offset ADPowerUp._playlist (+0x8)
  10001dd18  add     x0, x19, x8
  10001dd1c  ldp     x29, x30, [sp, #0x10]
  10001dd20  ldp     x20, x19, [sp], #0x20
  10001dd24  b       _objc_storeStrong
