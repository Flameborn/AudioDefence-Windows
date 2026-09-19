// unit ADSlowMotionPowerUp — 3 functions
//   0x1000a6cbc     240  -[ADSlowMotionPowerUp preload]
//   0x1000a6dac     216  -[ADSlowMotionPowerUp use]
//   0x1000a6e84      92  -[ADSlowMotionPowerUp clean]

; ======================================================================
; -[ADSlowMotionPowerUp preload]
; address 0x1000a6cbc  size 240  kind objc
; ======================================================================
  1000a6cbc  stp     x22, x21, [sp, #-0x30]!
  1000a6cc0  stp     x20, x19, [sp, #0x10]
  1000a6cc4  stp     x29, x30, [sp, #0x20]
  1000a6cc8  add     x29, sp, #0x20
  1000a6ccc  mov     x19, x0
  1000a6cd0  adrp    x8, #0x10041d000
  1000a6cd4  ldr     x0, [x8, #0xff8]                         ; class S3DEngine
  1000a6cd8  adrp    x8, #0x100417000
  1000a6cdc  nop
  1000a6ce0  ldr     x1, [x8, #0x4f0]
  1000a6ce4  bl      _objc_msgSend                            ; [S3DEngine engine]
  1000a6ce8  mov     x29, x29
  1000a6cec  bl      _objc_retainAutoreleasedReturnValue
  1000a6cf0  mov     x20, x0
  1000a6cf4  adrp    x8, #0x100417000
  1000a6cf8  nop
  1000a6cfc  ldr     x1, [x8, #0x4f8]
  1000a6d00  adrp    x2, #0x1003c0000
  1000a6d04  add     x2, x2, #0xc50                           ; @"_slowmotion"
  1000a6d08  bl      _objc_msgSend                            ; [[S3DEngine engine] playListWithName:@"_slowmotion"]
  1000a6d0c  mov     x29, x29
  1000a6d10  bl      _objc_retainAutoreleasedReturnValue
  1000a6d14  mov     x21, x0
  1000a6d18  adrp    x8, #0x100417000
  1000a6d1c  nop
  1000a6d20  ldr     x1, [x8, #0x500]
  1000a6d24  mov     x0, x19
  1000a6d28  mov     x2, x21
  1000a6d2c  bl      _objc_msgSend                            ; [self setPlaylist:[[S3DEngine engine] playListWithName:@"_slowmotion"]]
  1000a6d30  mov     x0, x21
  1000a6d34  bl      _objc_release
  1000a6d38  mov     x0, x20
  1000a6d3c  bl      _objc_release
  1000a6d40  adrp    x8, #0x100416000
  1000a6d44  nop
  1000a6d48  ldr     x1, [x8, #0xc98]
  1000a6d4c  mov     x0, x19
  1000a6d50  bl      _objc_msgSend                            ; [self playlist]
  1000a6d54  mov     x29, x29
  1000a6d58  bl      _objc_retainAutoreleasedReturnValue
  1000a6d5c  mov     x20, x0
  1000a6d60  adrp    x8, #0x100417000
  1000a6d64  nop
  1000a6d68  ldr     x1, [x8, #0x508]
  1000a6d6c  bl      _objc_msgSend                            ; [[self playlist] activate]
  1000a6d70  mov     x0, x20
  1000a6d74  ldp     x29, x30, [sp, #0x20]
  1000a6d78  ldp     x20, x19, [sp, #0x10]
  1000a6d7c  ldp     x22, x21, [sp], #0x30
  1000a6d80  b       _objc_release
  1000a6d84  b       loc_1000a6d98
  1000a6d88  mov     x19, x0
  1000a6d8c  mov     x0, x21
  1000a6d90  bl      _objc_release
  1000a6d94  b       loc_1000a6d9c
loc_1000a6d98:
  1000a6d98  mov     x19, x0
loc_1000a6d9c:
  1000a6d9c  mov     x0, x20
  1000a6da0  bl      _objc_release
  1000a6da4  mov     x0, x19
  1000a6da8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSlowMotionPowerUp use]
; address 0x1000a6dac  size 216  kind objc
; ======================================================================
  1000a6dac  stp     x22, x21, [sp, #-0x30]!
  1000a6db0  stp     x20, x19, [sp, #0x10]
  1000a6db4  stp     x29, x30, [sp, #0x20]
  1000a6db8  add     x29, sp, #0x20
  1000a6dbc  sub     sp, sp, #0x10
  1000a6dc0  mov     x19, x0
  1000a6dc4  adrp    x8, #0x100416000
  1000a6dc8  nop
  1000a6dcc  ldr     x1, [x8, #0xc98]
  1000a6dd0  bl      _objc_msgSend                            ; [self playlist]
  1000a6dd4  mov     x29, x29
  1000a6dd8  bl      _objc_retainAutoreleasedReturnValue
  1000a6ddc  mov     x21, x0
  1000a6de0  adrp    x8, #0x100417000
  1000a6de4  nop
  1000a6de8  ldr     x1, [x8, #0x990]
  1000a6dec  adrp    x2, #0x1003c0000
  1000a6df0  add     x2, x2, #0xc70                           ; @"powerup_slowmo_in"
  1000a6df4  bl      _objc_msgSend                            ; [[self playlist] S3DSound:@"powerup_slowmo_in"]
  1000a6df8  mov     x29, x29
  1000a6dfc  bl      _objc_retainAutoreleasedReturnValue
  1000a6e00  mov     x20, x0
  1000a6e04  mov     x0, x21
  1000a6e08  bl      _objc_release
  1000a6e0c  adrp    x8, #0x100416000
  1000a6e10  nop
  1000a6e14  ldr     x1, [x8, #0xcb8]
  1000a6e18  mov     w2, #0
  1000a6e1c  mov     x0, x20
  1000a6e20  bl      _objc_msgSend                            ; [[[self playlist] S3DSound:@"powerup_slowmo_in"] play:0]
  1000a6e24  str     x19, [sp]
  1000a6e28  adrp    x8, #0x10041e000
  1000a6e2c  ldr     x8, [x8, #0xef8]
  1000a6e30  str     x8, [sp, #8]
  1000a6e34  adrp    x8, #0x100417000
  1000a6e38  nop
  1000a6e3c  ldr     x1, [x8, #0x9c0]
  1000a6e40  mov     x0, sp
  1000a6e44  bl      _objc_msgSendSuper2                      ; [super use]
  1000a6e48  mov     x0, x20
  1000a6e4c  bl      _objc_release
  1000a6e50  sub     sp, x29, #0x20
  1000a6e54  ldp     x29, x30, [sp, #0x20]
  1000a6e58  ldp     x20, x19, [sp, #0x10]
  1000a6e5c  ldp     x22, x21, [sp], #0x30
  1000a6e60  ret
  1000a6e64  mov     x19, x0
  1000a6e68  mov     x0, x20
  1000a6e6c  b       loc_1000a6e78
  1000a6e70  mov     x19, x0
  1000a6e74  mov     x0, x21
loc_1000a6e78:
  1000a6e78  bl      _objc_release
  1000a6e7c  mov     x0, x19
  1000a6e80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADSlowMotionPowerUp clean]
; address 0x1000a6e84  size 92  kind objc
; ======================================================================
  1000a6e84  stp     x20, x19, [sp, #-0x20]!
  1000a6e88  stp     x29, x30, [sp, #0x10]
  1000a6e8c  add     x29, sp, #0x10
  1000a6e90  adrp    x8, #0x100416000
  1000a6e94  nop
  1000a6e98  ldr     x1, [x8, #0xc98]
  1000a6e9c  bl      _objc_msgSend                            ; [self playlist]
  1000a6ea0  mov     x29, x29
  1000a6ea4  bl      _objc_retainAutoreleasedReturnValue
  1000a6ea8  mov     x19, x0
  1000a6eac  adrp    x8, #0x100417000
  1000a6eb0  nop
  1000a6eb4  ldr     x1, [x8, #0x618]
  1000a6eb8  bl      _objc_msgSend                            ; [[self playlist] deactivate]
  1000a6ebc  mov     x0, x19
  1000a6ec0  ldp     x29, x30, [sp, #0x10]
  1000a6ec4  ldp     x20, x19, [sp], #0x20
  1000a6ec8  b       _objc_release
  1000a6ecc  mov     x20, x0
  1000a6ed0  mov     x0, x19
  1000a6ed4  bl      _objc_release
  1000a6ed8  mov     x0, x20
  1000a6edc  bl      __Unwind_Resume                          ; Unwind_Resume()
