// unit ADMotionManager — 22 functions
//   0x100005830     132  +[ADMotionManager sharedInstance]
//   0x1000058b4     108  +[ADMotionManager sharedInstance]_block_invoke
//   0x100005920       4  sub_100005920
//   0x100005924       4  sub_100005924
//   0x100005928      36  +[ADMotionManager allocWithZone:]
//   0x10000594c       4  -[ADMotionManager copyWithZone:]
//   0x100005950     176  -[ADMotionManager startMotionManager]
//   0x100005a00     144  -[ADMotionManager getCurrentAcceleration]
//   0x100005a90     120  -[ADMotionManager getCurrentAttitude]
//   0x100005b08      12  -[ADMotionManager getStartingAttitude]
//   0x100005b14      44  -[ADMotionManager getInterval]
//   0x100005b40     120  -[ADMotionManager getStamp]
//   0x100005bb8     136  -[ADMotionManager setStartingAttitude:]
//   0x100005c40      24  -[ADMotionManager isDeviceReady]
//   0x100005c58      68  -[ADMotionManager destroyMotionManager]
//   0x100005c9c     336  -[ADMotionManager getYawDifference]
//   0x100005dec     356  -[ADMotionManager getTiltAngle]
//   0x100005f50      16  -[ADMotionManager lastGyroAngle]
//   0x100005f60      16  -[ADMotionManager setLastGyroAngle:]
//   0x100005f70      16  -[ADMotionManager lastTiltAngle]
//   0x100005f80      16  -[ADMotionManager setLastTiltAngle:]
//   0x100005f90      20  -[ADMotionManager .cxx_destruct]

; ======================================================================
; +[ADMotionManager sharedInstance]
; address 0x100005830  size 132  kind objc
; ======================================================================
  100005830  stp     x20, x19, [sp, #-0x20]!
  100005834  stp     x29, x30, [sp, #0x10]
  100005838  add     x29, sp, #0x10
  10000583c  sub     sp, sp, #0x30
  100005840  adrp    x19, #0x10042d000
  100005844  add     x19, x19, #0x930                         ; &g_10042d930
  100005848  ldr     x8, [x19]                                ; load g_10042d930
  10000584c  cbnz    x8, loc_10000588c                        ; if (g_10042d930 != 0)
  100005850  adrp    x8, #0x1003b0000
  100005854  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100005858  mov     w9, #-0x3e000000
  10000585c  adr     x10, #0x1000058b4                        ; &+[ADMotionManager sharedInstance]_block_invoke
  100005860  nop
  100005864  str     x8, [sp, #8]
  100005868  stp     w9, wzr, [sp, #0x10]
  10000586c  adrp    x8, #0x1003b0000
  100005870  add     x8, x8, #0xf50                           ; &d_1003b0f50
  100005874  stp     x10, x8, [sp, #0x18]
  100005878  str     x0, [sp, #0x28]
  10000587c  ldr     x8, [x19, #8]                            ; load g_10042d938
  100005880  cmn     x8, #1
  100005884  b.ne    loc_1000058a0                            ; if (g_10042d938 != -1)
  100005888  mov     x8, #0
loc_10000588c:
  10000588c  mov     x0, x8
  100005890  sub     sp, x29, #0x10
  100005894  ldp     x29, x30, [sp, #0x10]
  100005898  ldp     x20, x19, [sp], #0x20
  10000589c  b       _objc_retainAutoreleaseReturnValue
loc_1000058a0:
  1000058a0  add     x0, x19, #8                              ; &g_10042d938
  1000058a4  add     x1, sp, #8
  1000058a8  bl      _dispatch_once                           ; dispatch_once(&g_10042d938, ^{+[ADMotionManager sharedInstance]_block_invoke captures +0x20=ADMotionManager})
  1000058ac  ldr     x8, [x19]                                ; load g_10042d930
  1000058b0  b       loc_10000588c

; ======================================================================
; +[ADMotionManager sharedInstance]_block_invoke
; address 0x1000058b4  size 108  kind block
; ======================================================================
  1000058b4  stp     x29, x30, [sp, #-0x10]!
  1000058b8  mov     x29, sp
  1000058bc  sub     sp, sp, #0x10
  1000058c0  ldr     x8, [x0, #0x20]                          ; x8 = captured ADMotionManager
  1000058c4  str     x8, [sp]
  1000058c8  adrp    x8, #0x10041e000
  1000058cc  ldr     x8, [x8, #0xbb8]
  1000058d0  str     x8, [sp, #8]
  1000058d4  adrp    x8, #0x100416000
  1000058d8  nop
  1000058dc  ldr     x1, [x8, #0xab0]
  1000058e0  mov     x0, sp
  1000058e4  mov     x2, #0
  1000058e8  bl      _objc_msgSendSuper2                      ; [super allocWithZone:0]
  1000058ec  adrp    x8, #0x100416000
  1000058f0  nop
  1000058f4  ldr     x1, [x8, #0xab8]
  1000058f8  bl      _objc_msgSend                            ; [[super allocWithZone:0] init]
  1000058fc  adrp    x9, #0x10042d000
  100005900  add     x9, x9, #0x930                           ; &g_10042d930
  100005904  ldr     x8, [x9]                                 ; load g_10042d930
  100005908  str     x0, [x9]                                 ; store g_10042d930 = [[super allocWithZone:0] init]
  10000590c  mov     x0, x8
  100005910  bl      _objc_release
  100005914  mov     sp, x29
  100005918  ldp     x29, x30, [sp], #0x10
  10000591c  ret

; ======================================================================
; sub_100005920
; address 0x100005920  size 4  kind sub
; ======================================================================
  100005920  ret

; ======================================================================
; sub_100005924
; address 0x100005924  size 4  kind sub
; ======================================================================
  100005924  ret

; ======================================================================
; +[ADMotionManager allocWithZone:]
; address 0x100005928  size 36  kind objc
; ======================================================================
  100005928  stp     x29, x30, [sp, #-0x10]!
  10000592c  mov     x29, sp
  100005930  adrp    x8, #0x100416000
  100005934  nop
  100005938  ldr     x1, [x8, #0xac0]
  10000593c  bl      _objc_msgSend                            ; [ADMotionManager sharedInstance]
  100005940  mov     x29, x29
  100005944  ldp     x29, x30, [sp], #0x10
  100005948  b       _objc_retainAutoreleasedReturnValue

; ======================================================================
; -[ADMotionManager copyWithZone:]
; address 0x10000594c  size 4  kind objc
; ======================================================================
  10000594c  b       _objc_retain

; ======================================================================
; -[ADMotionManager startMotionManager]
; address 0x100005950  size 176  kind objc
; ======================================================================
  100005950  stp     x20, x19, [sp, #-0x20]!
  100005954  stp     x29, x30, [sp, #0x10]
  100005958  add     x29, sp, #0x10
  10000595c  adrp    x19, #0x10042d000
  100005960  ldrb    w8, [x19, #0x780]                        ; load g_10042d780
  100005964  cbnz    w8, loc_1000059f4                        ; if (g_10042d780 != 0)
  100005968  adrp    x8, #0x10041d000
  10000596c  ldr     x0, [x8, #0xed8]                         ; class CMMotionManager
  100005970  adrp    x8, #0x100416000
  100005974  nop
  100005978  ldr     x1, [x8, #0xac8]
  10000597c  bl      _objc_msgSend                            ; [CMMotionManager alloc]
  100005980  adrp    x8, #0x100416000
  100005984  nop
  100005988  ldr     x1, [x8, #0xab8]
  10000598c  bl      _objc_msgSend                            ; [[CMMotionManager alloc] init]
  100005990  adrp    x20, #0x10042d000
  100005994  ldr     x8, [x20, #0x770]                        ; load g_10042d770
  100005998  str     x0, [x20, #0x770]                        ; store g_10042d770 = [[CMMotionManager alloc] init]
  10000599c  mov     x0, x8
  1000059a0  bl      _objc_release
  1000059a4  ldr     x0, [x20, #0x770]                        ; load g_10042d770
  1000059a8  adrp    x8, #0x100416000
  1000059ac  nop
  1000059b0  ldr     x1, [x8, #0xad0]
  1000059b4  bl      _objc_msgSend                            ; [g_10042d770 isDeviceMotionAvailable]
  1000059b8  cbz     w0, loc_1000059f4                        ; if ([g_10042d770 isDeviceMotionAvailable] == 0)
  1000059bc  ldr     x0, [x20, #0x770]                        ; load g_10042d770
  1000059c0  adrp    x8, #0x100416000
  1000059c4  nop
  1000059c8  ldr     x1, [x8, #0xad8]
  1000059cc  adrp    x8, #0x100181000
  1000059d0  ldr     d0, [x8, #0x9c0]                         ; d0 = 0.0142857143
  1000059d4  bl      _objc_msgSend                            ; [g_10042d770 setDeviceMotionUpdateInterval:0.0142857]
  1000059d8  ldr     x0, [x20, #0x770]                        ; load g_10042d770
  1000059dc  adrp    x8, #0x100416000
  1000059e0  nop
  1000059e4  ldr     x1, [x8, #0xae0]
  1000059e8  bl      _objc_msgSend                            ; [g_10042d770 startDeviceMotionUpdates]
  1000059ec  mov     w8, #1
  1000059f0  strb    w8, [x19, #0x780]                        ; store g_10042d780 = 1
loc_1000059f4:
  1000059f4  ldp     x29, x30, [sp, #0x10]
  1000059f8  ldp     x20, x19, [sp], #0x20
  1000059fc  ret

; ======================================================================
; -[ADMotionManager getCurrentAcceleration]
; address 0x100005a00  size 144  kind objc
; ======================================================================
  100005a00  stp     d11, d10, [sp, #-0x40]!
  100005a04  stp     d9, d8, [sp, #0x10]
  100005a08  stp     x20, x19, [sp, #0x20]
  100005a0c  stp     x29, x30, [sp, #0x30]
  100005a10  add     x29, sp, #0x30
  100005a14  adrp    x8, #0x10042d000
  100005a18  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005a1c  adrp    x8, #0x100416000
  100005a20  nop
  100005a24  ldr     x1, [x8, #0xae8]
  100005a28  bl      _objc_msgSend                            ; [g_10042d770 deviceMotion]
  100005a2c  mov     x29, x29
  100005a30  bl      _objc_retainAutoreleasedReturnValue
  100005a34  mov     x19, x0
  100005a38  adrp    x8, #0x100416000
  100005a3c  nop
  100005a40  ldr     x1, [x8, #0xaf0]
  100005a44  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] userAcceleration]
  100005a48  mov     v8.16b, v0.16b
  100005a4c  mov     v9.16b, v1.16b
  100005a50  mov     v10.16b, v2.16b
  100005a54  mov     x0, x19
  100005a58  bl      _objc_release
  100005a5c  mov     v0.16b, v8.16b
  100005a60  mov     v1.16b, v9.16b
  100005a64  mov     v2.16b, v10.16b
  100005a68  ldp     x29, x30, [sp, #0x30]
  100005a6c  ldp     x20, x19, [sp, #0x20]
  100005a70  ldp     d9, d8, [sp, #0x10]
  100005a74  ldp     d11, d10, [sp], #0x40
  100005a78  ret
  100005a7c  mov     x20, x0
  100005a80  mov     x0, x19
  100005a84  bl      _objc_release
  100005a88  mov     x0, x20
  100005a8c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMotionManager getCurrentAttitude]
; address 0x100005a90  size 120  kind objc
; ======================================================================
  100005a90  stp     x20, x19, [sp, #-0x20]!
  100005a94  stp     x29, x30, [sp, #0x10]
  100005a98  add     x29, sp, #0x10
  100005a9c  adrp    x8, #0x10042d000
  100005aa0  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005aa4  adrp    x8, #0x100416000
  100005aa8  nop
  100005aac  ldr     x1, [x8, #0xae8]
  100005ab0  bl      _objc_msgSend                            ; [g_10042d770 deviceMotion]
  100005ab4  mov     x29, x29
  100005ab8  bl      _objc_retainAutoreleasedReturnValue
  100005abc  mov     x19, x0
  100005ac0  adrp    x8, #0x100416000
  100005ac4  nop
  100005ac8  ldr     x1, [x8, #0xaf8]
  100005acc  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] attitude]
  100005ad0  mov     x29, x29
  100005ad4  bl      _objc_retainAutoreleasedReturnValue
  100005ad8  mov     x20, x0
  100005adc  mov     x0, x19
  100005ae0  bl      _objc_release
  100005ae4  mov     x0, x20
  100005ae8  ldp     x29, x30, [sp, #0x10]
  100005aec  ldp     x20, x19, [sp], #0x20
  100005af0  b       _objc_autoreleaseReturnValue
  100005af4  mov     x20, x0
  100005af8  mov     x0, x19
  100005afc  bl      _objc_release
  100005b00  mov     x0, x20
  100005b04  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMotionManager getStartingAttitude]
; address 0x100005b08  size 12  kind objc
; ======================================================================
  100005b08  adrp    x8, #0x10042d000
  100005b0c  ldr     x0, [x8, #0x778]                         ; load g_10042d778
  100005b10  b       _objc_retainAutoreleaseReturnValue

; ======================================================================
; -[ADMotionManager getInterval]
; address 0x100005b14  size 44  kind objc
; ======================================================================
  100005b14  stp     x29, x30, [sp, #-0x10]!
  100005b18  mov     x29, sp
  100005b1c  adrp    x8, #0x10042d000
  100005b20  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005b24  adrp    x8, #0x100416000
  100005b28  nop
  100005b2c  ldr     x1, [x8, #0xb00]
  100005b30  bl      _objc_msgSend                            ; [g_10042d770 accelerometerUpdateInterval]
  100005b34  fcvt    s0, d0
  100005b38  ldp     x29, x30, [sp], #0x10
  100005b3c  ret

; ======================================================================
; -[ADMotionManager getStamp]
; address 0x100005b40  size 120  kind objc
; ======================================================================
  100005b40  stp     d9, d8, [sp, #-0x30]!
  100005b44  stp     x20, x19, [sp, #0x10]
  100005b48  stp     x29, x30, [sp, #0x20]
  100005b4c  add     x29, sp, #0x20
  100005b50  adrp    x8, #0x10042d000
  100005b54  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005b58  adrp    x8, #0x100416000
  100005b5c  nop
  100005b60  ldr     x1, [x8, #0xae8]
  100005b64  bl      _objc_msgSend                            ; [g_10042d770 deviceMotion]
  100005b68  mov     x29, x29
  100005b6c  bl      _objc_retainAutoreleasedReturnValue
  100005b70  mov     x19, x0
  100005b74  adrp    x8, #0x100416000
  100005b78  nop
  100005b7c  ldr     x1, [x8, #0xb08]
  100005b80  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] timestamp]
  100005b84  mov     v8.16b, v0.16b
  100005b88  mov     x0, x19
  100005b8c  bl      _objc_release
  100005b90  mov     v0.16b, v8.16b
  100005b94  ldp     x29, x30, [sp, #0x20]
  100005b98  ldp     x20, x19, [sp, #0x10]
  100005b9c  ldp     d9, d8, [sp], #0x30
  100005ba0  ret
  100005ba4  mov     x20, x0
  100005ba8  mov     x0, x19
  100005bac  bl      _objc_release
  100005bb0  mov     x0, x20
  100005bb4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMotionManager setStartingAttitude:]
; address 0x100005bb8  size 136  kind objc
; ======================================================================
  100005bb8  stp     x20, x19, [sp, #-0x20]!
  100005bbc  stp     x29, x30, [sp, #0x10]
  100005bc0  add     x29, sp, #0x10
  100005bc4  adrp    x8, #0x10042d000
  100005bc8  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005bcc  adrp    x8, #0x100416000
  100005bd0  nop
  100005bd4  ldr     x1, [x8, #0xae8]
  100005bd8  bl      _objc_msgSend                            ; [g_10042d770 deviceMotion]
  100005bdc  mov     x29, x29
  100005be0  bl      _objc_retainAutoreleasedReturnValue
  100005be4  mov     x19, x0
  100005be8  adrp    x8, #0x100416000
  100005bec  nop
  100005bf0  ldr     x1, [x8, #0xaf8]
  100005bf4  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] attitude]
  100005bf8  mov     x29, x29
  100005bfc  bl      _objc_retainAutoreleasedReturnValue
  100005c00  adrp    x9, #0x10042d000
  100005c04  ldr     x8, [x9, #0x778]                         ; load g_10042d778
  100005c08  str     x0, [x9, #0x778]                         ; store g_10042d778 = [[g_10042d770 deviceMotion] attitude]
  100005c0c  mov     x0, x8
  100005c10  bl      _objc_release
  100005c14  mov     x0, x19
  100005c18  ldp     x29, x30, [sp, #0x10]
  100005c1c  ldp     x20, x19, [sp], #0x20
  100005c20  b       _objc_release
  100005c24  mov     x20, x0
  100005c28  b       loc_100005c38
  100005c2c  mov     x20, x0
  100005c30  mov     x0, x19
  100005c34  bl      _objc_release
loc_100005c38:
  100005c38  mov     x0, x20
  100005c3c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMotionManager isDeviceReady]
; address 0x100005c40  size 24  kind objc
; ======================================================================
  100005c40  adrp    x8, #0x10042d000
  100005c44  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005c48  adrp    x8, #0x100416000
  100005c4c  nop
  100005c50  ldr     x1, [x8, #0xb10]
  100005c54  b       _objc_msgSend                            ; [g_10042d770 isDeviceMotionActive]

; ======================================================================
; -[ADMotionManager destroyMotionManager]
; address 0x100005c58  size 68  kind objc
; ======================================================================
  100005c58  stp     x20, x19, [sp, #-0x20]!
  100005c5c  stp     x29, x30, [sp, #0x10]
  100005c60  add     x29, sp, #0x10
  100005c64  adrp    x19, #0x10042d000
  100005c68  ldr     x0, [x19, #0x770]                        ; load g_10042d770
  100005c6c  adrp    x8, #0x100416000
  100005c70  nop
  100005c74  ldr     x1, [x8, #0xb18]
  100005c78  bl      _objc_msgSend                            ; [g_10042d770 stopDeviceMotionUpdates]
  100005c7c  ldr     x0, [x19, #0x770]                        ; load g_10042d770
  100005c80  str     xzr, [x19, #0x770]                       ; store g_10042d770 = 0
  100005c84  bl      _objc_release
  100005c88  adrp    x8, #0x10042d000
  100005c8c  strb    wzr, [x8, #0x780]                        ; store g_10042d780 = 0
  100005c90  ldp     x29, x30, [sp, #0x10]
  100005c94  ldp     x20, x19, [sp], #0x20
  100005c98  ret

; ======================================================================
; -[ADMotionManager getYawDifference]
; address 0x100005c9c  size 336  kind objc
; ======================================================================
  100005c9c  stp     d9, d8, [sp, #-0x50]!
  100005ca0  stp     x24, x23, [sp, #0x10]
  100005ca4  stp     x22, x21, [sp, #0x20]
  100005ca8  stp     x20, x19, [sp, #0x30]
  100005cac  stp     x29, x30, [sp, #0x40]
  100005cb0  add     x29, sp, #0x40
  100005cb4  sub     sp, sp, #0x10
  100005cb8  mov     x19, x0
  100005cbc  adrp    x20, #0x10042d000
  100005cc0  ldr     x22, [x20, #0x778]                       ; load g_10042d778
  100005cc4  adrp    x8, #0x10042d000
  100005cc8  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005ccc  adrp    x8, #0x100416000
  100005cd0  nop
  100005cd4  ldr     x1, [x8, #0xae8]
  100005cd8  bl      _objc_msgSend                            ; [g_10042d770 deviceMotion]
  100005cdc  mov     x29, x29
  100005ce0  bl      _objc_retainAutoreleasedReturnValue
  100005ce4  mov     x21, x0
  100005ce8  adrp    x8, #0x100416000
  100005cec  add     x8, x8, #0xaf8                           ; &@selector(attitude)
  100005cf0  ldr     x1, [x8]
  100005cf4  cbz     x22, loc_100005d64                       ; if (g_10042d778 == 0)
  100005cf8  mov     x0, x21
  100005cfc  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] attitude]
  100005d00  mov     x29, x29
  100005d04  bl      _objc_retainAutoreleasedReturnValue
  100005d08  mov     x20, x0
  100005d0c  mov     x0, x21
  100005d10  bl      _objc_release
  100005d14  adrp    x23, #0x10041f000
  100005d18  ldrsw   x22, [x23, #0x468]                       ; ivar offset ADMotionManager.lastAttitude (+0x8)
  100005d1c  ldr     x8, [x19, x22]                           ; x8 = self->lastAttitude
  100005d20  cbz     x8, loc_100005d94                        ; if (self->lastAttitude == 0)
  100005d24  adrp    x8, #0x100416000
  100005d28  nop
  100005d2c  ldr     x21, [x8, #0xb20]
  100005d30  mov     x0, x20
  100005d34  mov     x1, x21
  100005d38  bl      _objc_msgSend                            ; [[[g_10042d770 deviceMotion] attitude] yaw]
  100005d3c  mov     v8.16b, v0.16b
  100005d40  ldr     x0, [x19, x22]                           ; x0 = self->lastAttitude
  100005d44  mov     x1, x21
  100005d48  bl      _objc_msgSend                            ; [self->lastAttitude yaw]
  100005d4c  fsub    d0, d8, d0
  100005d50  fcvt    s0, d0
  100005d54  str     q0, [sp]
  100005d58  ldrsw   x22, [x23, #0x468]                       ; ivar offset ADMotionManager.lastAttitude (+0x8)
  100005d5c  ldr     x0, [x19, x22]                           ; x0 = self->lastAttitude
  100005d60  b       loc_100005da0
loc_100005d64:
  100005d64  mov     x0, x21
  100005d68  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] attitude]
  100005d6c  mov     x29, x29
  100005d70  bl      _objc_retainAutoreleasedReturnValue
  100005d74  ldr     x8, [x20, #0x778]                        ; load g_10042d778
  100005d78  str     x0, [x20, #0x778]                        ; store g_10042d778 = [[g_10042d770 deviceMotion] attitude]
  100005d7c  mov     x0, x8
  100005d80  bl      _objc_release
  100005d84  mov     x0, x21
  100005d88  bl      _objc_release
  100005d8c  movi    v0.16b, #0
  100005d90  b       loc_100005dac
loc_100005d94:
  100005d94  mov     x0, #0
  100005d98  movi    v0.16b, #0
  100005d9c  str     q0, [sp]
loc_100005da0:
  100005da0  str     x20, [x19, w22, sxtw]                    ; self->lastAttitude = [[g_10042d770 deviceMotion] attitude]
  100005da4  bl      _objc_release
  100005da8  ldr     q0, [sp]
loc_100005dac:
  100005dac  sub     sp, x29, #0x40
  100005db0  ldp     x29, x30, [sp, #0x40]
  100005db4  ldp     x20, x19, [sp, #0x30]
  100005db8  ldp     x22, x21, [sp, #0x20]
  100005dbc  ldp     x24, x23, [sp, #0x10]
  100005dc0  ldp     d9, d8, [sp], #0x50
  100005dc4  ret
  100005dc8  mov     x19, x0
  100005dcc  mov     x0, x20
  100005dd0  b       loc_100005de0
  100005dd4  b       loc_100005dd8
loc_100005dd8:
  100005dd8  mov     x19, x0
  100005ddc  mov     x0, x21
loc_100005de0:
  100005de0  bl      _objc_release
  100005de4  mov     x0, x19
  100005de8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMotionManager getTiltAngle]
; address 0x100005dec  size 356  kind objc
; ======================================================================
  100005dec  stp     x22, x21, [sp, #-0x30]!
  100005df0  stp     x20, x19, [sp, #0x10]
  100005df4  stp     x29, x30, [sp, #0x20]
  100005df8  add     x29, sp, #0x20
  100005dfc  sub     sp, sp, #0x10
  100005e00  mov     x19, x0
  100005e04  adrp    x8, #0x10041d000
  100005e08  ldr     x0, [x8, #0xee0]                         ; class UIApplication
  100005e0c  adrp    x8, #0x100416000
  100005e10  nop
  100005e14  ldr     x1, [x8, #0xb28]
  100005e18  bl      _objc_msgSend                            ; [UIApplication sharedApplication]
  100005e1c  mov     x29, x29
  100005e20  bl      _objc_retainAutoreleasedReturnValue
  100005e24  mov     x20, x0
  100005e28  adrp    x8, #0x100416000
  100005e2c  nop
  100005e30  ldr     x1, [x8, #0xb30]
  100005e34  bl      _objc_msgSend                            ; [[UIApplication sharedApplication] statusBarOrientation]
  100005e38  mov     x0, x20
  100005e3c  bl      _objc_release
  100005e40  adrp    x21, #0x10042d000
  100005e44  ldr     x22, [x21, #0x778]                       ; load g_10042d778
  100005e48  adrp    x8, #0x10042d000
  100005e4c  ldr     x0, [x8, #0x770]                         ; load g_10042d770
  100005e50  adrp    x8, #0x100416000
  100005e54  nop
  100005e58  ldr     x1, [x8, #0xae8]
  100005e5c  bl      _objc_msgSend                            ; [g_10042d770 deviceMotion]
  100005e60  mov     x29, x29
  100005e64  bl      _objc_retainAutoreleasedReturnValue
  100005e68  mov     x20, x0
  100005e6c  adrp    x8, #0x100416000
  100005e70  add     x8, x8, #0xaf8                           ; &@selector(attitude)
  100005e74  ldr     x1, [x8]
  100005e78  cbz     x22, loc_100005ecc                       ; if (g_10042d778 == 0)
  100005e7c  mov     x0, x20
  100005e80  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] attitude]
  100005e84  mov     x29, x29
  100005e88  bl      _objc_retainAutoreleasedReturnValue
  100005e8c  mov     x21, x0
  100005e90  mov     x0, x20
  100005e94  bl      _objc_release
  100005e98  adrp    x20, #0x10041f000
  100005e9c  ldrsw   x8, [x20, #0x468]                        ; ivar offset ADMotionManager.lastAttitude (+0x8)
  100005ea0  ldr     x0, [x19, x8]                            ; x0 = self->lastAttitude
  100005ea4  cbz     x0, loc_100005efc                        ; if (self->lastAttitude == 0)
  100005ea8  adrp    x8, #0x100416000
  100005eac  nop
  100005eb0  ldr     x1, [x8, #0xb38]
  100005eb4  bl      _objc_msgSend                            ; [self->lastAttitude pitch]
  100005eb8  fcvt    s0, d0
  100005ebc  str     q0, [sp]
  100005ec0  ldrsw   x8, [x20, #0x468]                        ; ivar offset ADMotionManager.lastAttitude (+0x8)
  100005ec4  ldr     x0, [x19, x8]                            ; x0 = self->lastAttitude
  100005ec8  b       loc_100005f08
loc_100005ecc:
  100005ecc  mov     x0, x20
  100005ed0  bl      _objc_msgSend                            ; [[g_10042d770 deviceMotion] attitude]
  100005ed4  mov     x29, x29
  100005ed8  bl      _objc_retainAutoreleasedReturnValue
  100005edc  ldr     x8, [x21, #0x778]                        ; load g_10042d778
  100005ee0  str     x0, [x21, #0x778]                        ; store g_10042d778 = [[g_10042d770 deviceMotion] attitude]
  100005ee4  mov     x0, x8
  100005ee8  bl      _objc_release
  100005eec  mov     x0, x20
  100005ef0  bl      _objc_release
  100005ef4  movi    v0.16b, #0
  100005ef8  b       loc_100005f14
loc_100005efc:
  100005efc  mov     x0, #0
  100005f00  movi    v0.16b, #0
  100005f04  str     q0, [sp]
loc_100005f08:
  100005f08  str     x21, [x19, w8, sxtw]                     ; self->lastAttitude = [[g_10042d770 deviceMotion] attitude]
  100005f0c  bl      _objc_release
  100005f10  ldr     q0, [sp]
loc_100005f14:
  100005f14  sub     sp, x29, #0x20
  100005f18  ldp     x29, x30, [sp, #0x20]
  100005f1c  ldp     x20, x19, [sp, #0x10]
  100005f20  ldp     x22, x21, [sp], #0x30
  100005f24  ret
  100005f28  b       loc_100005f3c
  100005f2c  b       loc_100005f3c
  100005f30  mov     x19, x0
  100005f34  mov     x0, x21
  100005f38  b       loc_100005f44
loc_100005f3c:
  100005f3c  mov     x19, x0
  100005f40  mov     x0, x20
loc_100005f44:
  100005f44  bl      _objc_release
  100005f48  mov     x0, x19
  100005f4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[ADMotionManager lastGyroAngle]
; address 0x100005f50  size 16  kind objc
; ======================================================================
  100005f50  adrp    x8, #0x10041f000
  100005f54  ldrsw   x8, [x8, #0x46c]                         ; ivar offset ADMotionManager._lastGyroAngle (+0x10)
  100005f58  ldr     s0, [x0, x8]                             ; s0 = self->_lastGyroAngle
  100005f5c  ret

; ======================================================================
; -[ADMotionManager setLastGyroAngle:]
; address 0x100005f60  size 16  kind objc
; ======================================================================
  100005f60  adrp    x8, #0x10041f000
  100005f64  ldrsw   x8, [x8, #0x46c]                         ; ivar offset ADMotionManager._lastGyroAngle (+0x10)
  100005f68  str     s0, [x0, x8]                             ; self->_lastGyroAngle = arg1
  100005f6c  ret

; ======================================================================
; -[ADMotionManager lastTiltAngle]
; address 0x100005f70  size 16  kind objc
; ======================================================================
  100005f70  adrp    x8, #0x10041f000
  100005f74  ldrsw   x8, [x8, #0x470]                         ; ivar offset ADMotionManager._lastTiltAngle (+0x14)
  100005f78  ldr     s0, [x0, x8]                             ; s0 = self->_lastTiltAngle
  100005f7c  ret

; ======================================================================
; -[ADMotionManager setLastTiltAngle:]
; address 0x100005f80  size 16  kind objc
; ======================================================================
  100005f80  adrp    x8, #0x10041f000
  100005f84  ldrsw   x8, [x8, #0x470]                         ; ivar offset ADMotionManager._lastTiltAngle (+0x14)
  100005f88  str     s0, [x0, x8]                             ; self->_lastTiltAngle = arg1
  100005f8c  ret

; ======================================================================
; -[ADMotionManager .cxx_destruct]
; address 0x100005f90  size 20  kind objc
; ======================================================================
  100005f90  mov     x1, #0
  100005f94  adrp    x8, #0x10041f000
  100005f98  ldrsw   x8, [x8, #0x468]                         ; ivar offset ADMotionManager.lastAttitude (+0x8)
  100005f9c  add     x0, x0, x8
  100005fa0  b       _objc_storeStrong
