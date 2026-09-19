// unit ViewWithParalax — 3 functions
//   0x100055d84      60  -[ViewWithParalax initWithFrame:]
//   0x100055dc0      92  -[ViewWithParalax awakeFromNib]
//   0x100055e1c     816  -[ViewWithParalax addCustomMotionEffect]

; ======================================================================
; -[ViewWithParalax initWithFrame:]
; address 0x100055d84  size 60  kind objc
; ======================================================================
  100055d84  stp     x29, x30, [sp, #-0x10]!
  100055d88  mov     x29, sp
  100055d8c  sub     sp, sp, #0x10
  100055d90  str     x0, [sp]
  100055d94  adrp    x8, #0x10041e000
  100055d98  ldr     x8, [x8, #0xd70]
  100055d9c  str     x8, [sp, #8]
  100055da0  adrp    x8, #0x100417000
  100055da4  nop
  100055da8  ldr     x1, [x8, #0x178]
  100055dac  mov     x0, sp
  100055db0  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100055db4  mov     sp, x29
  100055db8  ldp     x29, x30, [sp], #0x10
  100055dbc  ret

; ======================================================================
; -[ViewWithParalax awakeFromNib]
; address 0x100055dc0  size 92  kind objc
; ======================================================================
  100055dc0  stp     x20, x19, [sp, #-0x20]!
  100055dc4  stp     x29, x30, [sp, #0x10]
  100055dc8  add     x29, sp, #0x10
  100055dcc  sub     sp, sp, #0x10
  100055dd0  mov     x19, x0
  100055dd4  str     x19, [sp]
  100055dd8  adrp    x8, #0x10041e000
  100055ddc  ldr     x8, [x8, #0xd70]
  100055de0  str     x8, [sp, #8]
  100055de4  adrp    x8, #0x100418000
  100055de8  nop
  100055dec  ldr     x1, [x8, #0xe68]
  100055df0  mov     x0, sp
  100055df4  bl      _objc_msgSendSuper2                      ; [super awakeFromNib]
  100055df8  adrp    x8, #0x100418000
  100055dfc  nop
  100055e00  ldr     x1, [x8, #0xe70]
  100055e04  mov     x0, x19
  100055e08  bl      _objc_msgSend                            ; [self addCustomMotionEffect]
  100055e0c  sub     sp, x29, #0x10
  100055e10  ldp     x29, x30, [sp, #0x10]
  100055e14  ldp     x20, x19, [sp], #0x20
  100055e18  ret

; ======================================================================
; -[ViewWithParalax addCustomMotionEffect]
; address 0x100055e1c  size 816  kind objc
; ======================================================================
  100055e1c  stp     x28, x27, [sp, #-0x60]!
  100055e20  stp     x26, x25, [sp, #0x10]
  100055e24  stp     x24, x23, [sp, #0x20]
  100055e28  stp     x22, x21, [sp, #0x30]
  100055e2c  stp     x20, x19, [sp, #0x40]
  100055e30  stp     x29, x30, [sp, #0x50]
  100055e34  add     x29, sp, #0x50
  100055e38  sub     sp, sp, #0x20
  100055e3c  mov     x23, x0
  100055e40  adrp    x20, #0x1003b0000
  100055e44  ldr     x20, [x20, #0x1d8]                       ; ___stack_chk_guard
  100055e48  ldr     x20, [x20]                               ; x20 = ___stack_chk_guard[+0x0]
  100055e4c  str     x20, [sp, #0x18]
  100055e50  adrp    x8, #0x10041e000
  100055e54  ldr     x0, [x8, #0x50]                          ; class UIDevice
  100055e58  adrp    x8, #0x100417000
  100055e5c  nop
  100055e60  ldr     x1, [x8, #0x788]
  100055e64  bl      _objc_msgSend                            ; [UIDevice currentDevice]
  100055e68  mov     x29, x29
  100055e6c  bl      _objc_retainAutoreleasedReturnValue
  100055e70  mov     x19, x0
  100055e74  adrp    x8, #0x100418000
  100055e78  nop
  100055e7c  ldr     x1, [x8, #0xa90]
  100055e80  bl      _objc_msgSend                            ; [[UIDevice currentDevice] systemVersion]
  100055e84  mov     x29, x29
  100055e88  bl      _objc_retainAutoreleasedReturnValue
  100055e8c  mov     x21, x0
  100055e90  adrp    x8, #0x100418000
  100055e94  nop
  100055e98  ldr     x1, [x8, #0xa98]
  100055e9c  adrp    x2, #0x1003bd000
  100055ea0  add     x2, x2, #0xf0                            ; @"7.0.0"
  100055ea4  mov     w3, #0x40
  100055ea8  bl      _objc_msgSend                            ; [[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64]
  100055eac  mov     x22, x0
  100055eb0  mov     x0, x21
  100055eb4  bl      _objc_release
  100055eb8  mov     x0, x19
  100055ebc  bl      _objc_release
  100055ec0  cmn     x22, #1
  100055ec4  b.eq    loc_1000560b0                            ; if ([[[UIDevice currentDevice] systemVersion] compare:@"7.0.0" options:64] == -1)
  100055ec8  str     x23, [sp]
  100055ecc  adrp    x27, #0x10041e000
  100055ed0  ldr     x0, [x27, #0x1c8]                        ; class UIInterpolatingMotionEffect
  100055ed4  adrp    x8, #0x100416000
  100055ed8  nop
  100055edc  ldr     x24, [x8, #0xac8]
  100055ee0  mov     x1, x24
  100055ee4  bl      _objc_msgSend                            ; [UIInterpolatingMotionEffect alloc]
  100055ee8  adrp    x8, #0x100418000
  100055eec  nop
  100055ef0  ldr     x21, [x8, #0xe78]
  100055ef4  adrp    x2, #0x1003bd000
  100055ef8  add     x2, x2, #0xab0                           ; @"center.y"
  100055efc  mov     w3, #1
  100055f00  mov     x1, x21
  100055f04  bl      _objc_msgSend                            ; [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:1]
  100055f08  mov     x19, x0
  100055f0c  adrp    x28, #0x10041d000
  100055f10  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  100055f14  adrp    x8, #0x100416000
  100055f18  nop
  100055f1c  ldr     x22, [x8, #0xec0]
  100055f20  mov     w2, #-0x32
  100055f24  mov     x1, x22
  100055f28  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0xffffffce]
  100055f2c  mov     x29, x29
  100055f30  bl      _objc_retainAutoreleasedReturnValue
  100055f34  mov     x25, x0
  100055f38  adrp    x8, #0x100418000
  100055f3c  nop
  100055f40  ldr     x23, [x8, #0xe80]
  100055f44  mov     x0, x19
  100055f48  mov     x1, x23
  100055f4c  mov     x2, x25
  100055f50  bl      _objc_msgSend                            ; [[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:1] setMinimumRelativeValue:[NSNumber numberWithInt:0xffffffce]]
  100055f54  mov     x0, x25
  100055f58  bl      _objc_release
  100055f5c  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  100055f60  mov     w2, #0x32
  100055f64  mov     x1, x22
  100055f68  bl      _objc_msgSend                            ; [NSNumber numberWithInt:50]
  100055f6c  mov     x29, x29
  100055f70  bl      _objc_retainAutoreleasedReturnValue
  100055f74  mov     x26, x0
  100055f78  adrp    x8, #0x100418000
  100055f7c  nop
  100055f80  ldr     x25, [x8, #0xe88]
  100055f84  mov     x0, x19
  100055f88  mov     x1, x25
  100055f8c  mov     x2, x26
  100055f90  bl      _objc_msgSend                            ; [[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:1] setMaximumRelativeValue:[NSNumber numberWithInt:50]]
  100055f94  mov     x0, x26
  100055f98  bl      _objc_release
  100055f9c  ldr     x0, [x27, #0x1c8]                        ; class UIInterpolatingMotionEffect
  100055fa0  mov     x1, x24
  100055fa4  bl      _objc_msgSend                            ; [UIInterpolatingMotionEffect alloc]
  100055fa8  mov     x3, #0
  100055fac  adrp    x2, #0x1003bd000
  100055fb0  add     x2, x2, #0xad0                           ; @"center.x"
  100055fb4  mov     x1, x21
  100055fb8  bl      _objc_msgSend                            ; [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0]
  100055fbc  mov     x21, x0
  100055fc0  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  100055fc4  mov     w2, #-0x32
  100055fc8  mov     x1, x22
  100055fcc  bl      _objc_msgSend                            ; [NSNumber numberWithInt:0xffffffce]
  100055fd0  mov     x29, x29
  100055fd4  bl      _objc_retainAutoreleasedReturnValue
  100055fd8  mov     x24, x0
  100055fdc  mov     x0, x21
  100055fe0  mov     x1, x23
  100055fe4  mov     x2, x24
  100055fe8  bl      _objc_msgSend                            ; [[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0] setMinimumRelativeValue:[NSNumber numberWithInt:0xffffffce]]
  100055fec  mov     x0, x24
  100055ff0  bl      _objc_release
  100055ff4  ldr     x0, [x28, #0xf68]                        ; class NSNumber
  100055ff8  mov     w2, #0x32
  100055ffc  mov     x1, x22
  100056000  bl      _objc_msgSend                            ; [NSNumber numberWithInt:50]
  100056004  mov     x29, x29
  100056008  bl      _objc_retainAutoreleasedReturnValue
  10005600c  mov     x22, x0
  100056010  mov     x0, x21
  100056014  mov     x1, x25
  100056018  mov     x2, x22
  10005601c  bl      _objc_msgSend                            ; [[[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0] setMaximumRelativeValue:[NSNumber numberWithInt:50]]
  100056020  mov     x0, x22
  100056024  bl      _objc_release
  100056028  adrp    x8, #0x10041e000
  10005602c  ldr     x0, [x8, #0x1d0]                         ; class UIMotionEffectGroup
  100056030  adrp    x8, #0x100418000
  100056034  nop
  100056038  ldr     x1, [x8, #0xe90]
  10005603c  bl      _objc_msgSend                            ; [UIMotionEffectGroup new]
  100056040  mov     x22, x0
  100056044  stp     x21, x19, [sp, #8]
  100056048  adrp    x8, #0x10041d000
  10005604c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100056050  adrp    x8, #0x100417000
  100056054  nop
  100056058  ldr     x1, [x8, #0x3c8]
  10005605c  add     x2, sp, #8
  100056060  mov     w3, #2
  100056064  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:&sp[0x8] count:2]
  100056068  mov     x2, x0
  10005606c  adrp    x8, #0x100418000
  100056070  nop
  100056074  ldr     x1, [x8, #0xe98]
  100056078  mov     x0, x22
  10005607c  bl      _objc_msgSend                            ; [[UIMotionEffectGroup new] setMotionEffects:[NSArray arrayWithObjects:&sp[0x8] count:2]]
  100056080  ldr     x0, [sp]
  100056084  adrp    x8, #0x100418000
  100056088  nop
  10005608c  ldr     x1, [x8, #0xea0]
  100056090  mov     x2, x22
  100056094  bl      _objc_msgSend                            ; [self addMotionEffect:[UIMotionEffectGroup new]]
  100056098  mov     x0, x22
  10005609c  bl      _objc_release
  1000560a0  mov     x0, x21
  1000560a4  bl      _objc_release
  1000560a8  mov     x0, x19
  1000560ac  bl      _objc_release
loc_1000560b0:
  1000560b0  ldr     x8, [sp, #0x18]
  1000560b4  sub     x8, x20, x8
  1000560b8  cbnz    x8, loc_1000560dc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000560bc  sub     sp, x29, #0x50
  1000560c0  ldp     x29, x30, [sp, #0x50]
  1000560c4  ldp     x20, x19, [sp, #0x40]
  1000560c8  ldp     x22, x21, [sp, #0x30]
  1000560cc  ldp     x24, x23, [sp, #0x20]
  1000560d0  ldp     x26, x25, [sp, #0x10]
  1000560d4  ldp     x28, x27, [sp], #0x60
  1000560d8  ret
loc_1000560dc:
  1000560dc  bl      ___stack_chk_fail                        ; stack_chk_fail()
  1000560e0  mov     x20, x0
  1000560e4  b       loc_10005613c
  1000560e8  b       loc_1000560f8
  1000560ec  b       loc_100056128
  1000560f0  mov     x20, x0
  1000560f4  b       loc_10005613c
loc_1000560f8:
  1000560f8  mov     x20, x0
  1000560fc  b       loc_100056134
  100056100  mov     x20, x0
  100056104  mov     x0, x25
  100056108  b       loc_100056138
  10005610c  mov     x20, x0
  100056110  mov     x0, x26
  100056114  b       loc_100056138
  100056118  mov     x20, x0
  10005611c  mov     x0, x24
  100056120  b       loc_100056130
  100056124  b       loc_100056128
loc_100056128:
  100056128  mov     x20, x0
  10005612c  mov     x0, x22
loc_100056130:
  100056130  bl      _objc_release
loc_100056134:
  100056134  mov     x0, x21
loc_100056138:
  100056138  bl      _objc_release
loc_10005613c:
  10005613c  mov     x0, x19
  100056140  bl      _objc_release
  100056144  mov     x0, x20
  100056148  bl      __Unwind_Resume                          ; Unwind_Resume()
