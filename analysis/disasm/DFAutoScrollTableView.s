// unit DFAutoScrollTableView — 13 functions
//   0x100066a6c     132  -[DFAutoScrollTableView initWithFrame:]
//   0x100066af0     660  -[DFAutoScrollTableView startScrolling]
//   0x100066d84     120  -[DFAutoScrollTableView stopScrolling]
//   0x100066dfc     496  -[DFAutoScrollTableView scrollTick]
//   0x100066fec      28  -[DFAutoScrollTableView scrollTick]_block_invoke
//   0x100067008       8  sub_100067008
//   0x100067010       8  sub_100067010
//   0x100067018      36  -[DFAutoScrollTableView setScrolling:]
//   0x10006703c      64  -[DFAutoScrollTableView isScrolling]
//   0x10006707c      60  -[DFAutoScrollTableView drawRect:]
//   0x1000670b8      20  -[DFAutoScrollTableView scrollPointsPerSecond]
//   0x1000670cc      20  -[DFAutoScrollTableView setScrollPointsPerSecond:]
//   0x1000670e0      16  -[DFAutoScrollTableView scrolling]

; ======================================================================
; -[DFAutoScrollTableView initWithFrame:]
; address 0x100066a6c  size 132  kind objc
; ======================================================================
  100066a6c  stp     x20, x19, [sp, #-0x20]!
  100066a70  stp     x29, x30, [sp, #0x10]
  100066a74  add     x29, sp, #0x10
  100066a78  sub     sp, sp, #0x10
  100066a7c  str     x0, [sp]
  100066a80  adrp    x8, #0x10041e000
  100066a84  ldr     x8, [x8, #0xd98]
  100066a88  str     x8, [sp, #8]
  100066a8c  adrp    x8, #0x100417000
  100066a90  nop
  100066a94  ldr     x1, [x8, #0x178]
  100066a98  mov     x19, #0
  100066a9c  mov     x0, sp
  100066aa0  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100066aa4  mov     x20, x0
  100066aa8  cbz     x20, loc_100066ac8                       ; if (self == 0)
  100066aac  mov     x19, x20
  100066ab0  adrp    x8, #0x100417000
  100066ab4  nop
  100066ab8  ldr     x1, [x8, #0x6c0]
  100066abc  fmov    d0, #15.00000000
  100066ac0  mov     x0, x20
  100066ac4  bl      _objc_msgSend                            ; [self setScrollPointsPerSecond:15]
loc_100066ac8:
  100066ac8  mov     x0, x20
  100066acc  sub     sp, x29, #0x10
  100066ad0  ldp     x29, x30, [sp, #0x10]
  100066ad4  ldp     x20, x19, [sp], #0x20
  100066ad8  ret
  100066adc  mov     x20, x0
  100066ae0  mov     x0, x19
  100066ae4  bl      _objc_release
  100066ae8  mov     x0, x20
  100066aec  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTableView startScrolling]
; address 0x100066af0  size 660  kind objc
; ======================================================================
  100066af0  stp     d9, d8, [sp, #-0x40]!
  100066af4  stp     x22, x21, [sp, #0x10]
  100066af8  stp     x20, x19, [sp, #0x20]
  100066afc  stp     x29, x30, [sp, #0x30]
  100066b00  add     x29, sp, #0x30
  100066b04  mov     x19, x0
  100066b08  adrp    x8, #0x100417000
  100066b0c  nop
  100066b10  ldr     x1, [x8, #0x6c8]
  100066b14  bl      _objc_msgSend                            ; [self stopScrolling]
  100066b18  adrp    x8, #0x100417000
  100066b1c  nop
  100066b20  ldr     x21, [x8, #0x6d0]
  100066b24  mov     x0, x19
  100066b28  mov     x1, x21
  100066b2c  bl      _objc_msgSend                            ; [self window]
  100066b30  mov     x29, x29
  100066b34  bl      _objc_retainAutoreleasedReturnValue
  100066b38  mov     x20, x0
  100066b3c  cbz     x20, loc_100066b94                       ; if ([self window] == 0)
  100066b40  mov     x0, x19
  100066b44  mov     x1, x21
  100066b48  bl      _objc_msgSend                            ; [self window]
  100066b4c  mov     x29, x29
  100066b50  bl      _objc_retainAutoreleasedReturnValue
  100066b54  mov     x21, x0
  100066b58  adrp    x8, #0x100417000
  100066b5c  nop
  100066b60  ldr     x1, [x8, #0x6d8]
  100066b64  bl      _objc_msgSend                            ; [[self window] screen]
  100066b68  mov     x29, x29
  100066b6c  bl      _objc_retainAutoreleasedReturnValue
  100066b70  mov     x22, x0
  100066b74  adrp    x8, #0x100417000
  100066b78  nop
  100066b7c  ldr     x1, [x8, #0x6e0]
  100066b80  bl      _objc_msgSend                            ; [[[self window] screen] scale]
  100066b84  mov     v8.16b, v0.16b
  100066b88  mov     x0, x22
  100066b8c  bl      _objc_release
  100066b90  b       loc_100066bcc
loc_100066b94:
  100066b94  adrp    x8, #0x10041e000
  100066b98  ldr     x0, [x8, #0x28]                          ; class UIScreen
  100066b9c  adrp    x8, #0x100417000
  100066ba0  nop
  100066ba4  ldr     x1, [x8, #0x6e8]
  100066ba8  bl      _objc_msgSend                            ; [UIScreen mainScreen]
  100066bac  mov     x29, x29
  100066bb0  bl      _objc_retainAutoreleasedReturnValue
  100066bb4  mov     x21, x0
  100066bb8  adrp    x8, #0x100417000
  100066bbc  nop
  100066bc0  ldr     x1, [x8, #0x6e0]
  100066bc4  bl      _objc_msgSend                            ; [[UIScreen mainScreen] scale]
  100066bc8  mov     v8.16b, v0.16b
loc_100066bcc:
  100066bcc  mov     x0, x21
  100066bd0  bl      _objc_release
  100066bd4  mov     x0, x20
  100066bd8  bl      _objc_release
  100066bdc  adrp    x8, #0x100417000
  100066be0  nop
  100066be4  ldr     x1, [x8, #0x6f0]
  100066be8  mov     x0, x19
  100066bec  bl      _objc_msgSend                            ; [self scrollPointsPerSecond]
  100066bf0  fmul    d0, d8, d0
  100066bf4  fmov    d1, #1.00000000
  100066bf8  adrp    x8, #0x10041e000
  100066bfc  ldr     x0, [x8, #0x30]                          ; class NSTimer
  100066c00  adrp    x8, #0x100416000
  100066c04  nop
  100066c08  ldr     x1, [x8, #0xac8]
  100066c0c  fdiv    d8, d1, d0
  100066c10  bl      _objc_msgSend                            ; [NSTimer alloc]
  100066c14  mov     x21, x0
  100066c18  adrp    x8, #0x10041e000
  100066c1c  ldr     x0, [x8, #0x38]                          ; class NSDate
  100066c20  adrp    x8, #0x100417000
  100066c24  nop
  100066c28  ldr     x1, [x8, #0x6f8]
  100066c2c  adrp    x8, #0x100181000
  100066c30  ldr     d0, [x8, #0xa28]                         ; d0 = 0.02
  100066c34  bl      _objc_msgSend                            ; [NSDate dateWithTimeIntervalSinceNow:0.02]
  100066c38  mov     x29, x29
  100066c3c  bl      _objc_retainAutoreleasedReturnValue
  100066c40  mov     x20, x0
  100066c44  adrp    x8, #0x100417000
  100066c48  nop
  100066c4c  ldr     x4, [x8, #0x700]
  100066c50  adrp    x8, #0x100417000
  100066c54  nop
  100066c58  ldr     x1, [x8, #0x708]
  100066c5c  mov     w6, #1
  100066c60  mov     x0, x21
  100066c64  mov     x2, x20
  100066c68  mov     v0.16b, v8.16b
  100066c6c  mov     x3, x19
  100066c70  mov     x5, #0
  100066c74  bl      _objc_msgSend                            ; [[NSTimer alloc] initWithFireDate:[NSDate dateWithTimeIntervalSinceNow:0.02] interval:(1 / (d8 * [self scrollPointsPerSecond])) target:self selector:@selector(scrollTick) userInfo:0 repeats:1]
  100066c78  mov     x21, x0
  100066c7c  adrp    x8, #0x100417000
  100066c80  nop
  100066c84  ldr     x1, [x8, #0x710]
  100066c88  mov     x0, x19
  100066c8c  mov     x2, x21
  100066c90  bl      _objc_msgSend                            ; [self setAutoScrollTimer:[[NSTimer alloc] initWithFireDate:[NSDate dateWithTimeIntervalSinceNow:0.02] interval:(1 / (d8 * [self scrollPointsPerSecond])) target:self selector:@selector(scrollTick) userInfo:0 repeats:1]]
  100066c94  mov     x0, x21
  100066c98  bl      _objc_release
  100066c9c  mov     x0, x20
  100066ca0  bl      _objc_release
  100066ca4  adrp    x8, #0x10041e000
  100066ca8  ldr     x0, [x8, #0x40]                          ; class NSRunLoop
  100066cac  adrp    x8, #0x100417000
  100066cb0  nop
  100066cb4  ldr     x1, [x8, #0x718]
  100066cb8  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  100066cbc  mov     x29, x29
  100066cc0  bl      _objc_retainAutoreleasedReturnValue
  100066cc4  mov     x20, x0
  100066cc8  adrp    x8, #0x100417000
  100066ccc  nop
  100066cd0  ldr     x1, [x8, #0x720]
  100066cd4  mov     x0, x19
  100066cd8  bl      _objc_msgSend                            ; [self autoScrollTimer]
  100066cdc  mov     x29, x29
  100066ce0  bl      _objc_retainAutoreleasedReturnValue
  100066ce4  mov     x21, x0
  100066ce8  adrp    x8, #0x1003b0000
  100066cec  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  100066cf0  ldr     x3, [x8]                                 ; x3 = _NSRunLoopCommonModes[+0x0]
  100066cf4  adrp    x8, #0x100417000
  100066cf8  nop
  100066cfc  ldr     x1, [x8, #0x728]
  100066d00  mov     x0, x20
  100066d04  mov     x2, x21
  100066d08  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:[self autoScrollTimer] forMode:_NSRunLoopCommonModes[+0x0]]
  100066d0c  mov     x0, x21
  100066d10  bl      _objc_release
  100066d14  mov     x0, x20
  100066d18  ldp     x29, x30, [sp, #0x30]
  100066d1c  ldp     x20, x19, [sp, #0x20]
  100066d20  ldp     x22, x21, [sp, #0x10]
  100066d24  ldp     d9, d8, [sp], #0x40
  100066d28  b       _objc_release
  100066d2c  mov     x19, x0
  100066d30  b       loc_100066d74
  100066d34  b       loc_100066d68
  100066d38  mov     x19, x0
  100066d3c  b       loc_100066d74
  100066d40  b       loc_100066d68
  100066d44  mov     x19, x0
  100066d48  b       loc_100066d74
  100066d4c  b       loc_100066d68
  100066d50  mov     x19, x0
  100066d54  mov     x0, x22
  100066d58  bl      _objc_release
  100066d5c  b       loc_100066d6c
  100066d60  mov     x19, x0
  100066d64  b       loc_100066d74
loc_100066d68:
  100066d68  mov     x19, x0
loc_100066d6c:
  100066d6c  mov     x0, x21
  100066d70  bl      _objc_release
loc_100066d74:
  100066d74  mov     x0, x20
  100066d78  bl      _objc_release
  100066d7c  mov     x0, x19
  100066d80  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTableView stopScrolling]
; address 0x100066d84  size 120  kind objc
; ======================================================================
  100066d84  stp     x20, x19, [sp, #-0x20]!
  100066d88  stp     x29, x30, [sp, #0x10]
  100066d8c  add     x29, sp, #0x10
  100066d90  mov     x19, x0
  100066d94  adrp    x8, #0x100417000
  100066d98  nop
  100066d9c  ldr     x1, [x8, #0x720]
  100066da0  bl      _objc_msgSend                            ; [self autoScrollTimer]
  100066da4  mov     x29, x29
  100066da8  bl      _objc_retainAutoreleasedReturnValue
  100066dac  mov     x20, x0
  100066db0  adrp    x8, #0x100417000
  100066db4  nop
  100066db8  ldr     x1, [x8, #0x730]
  100066dbc  bl      _objc_msgSend                            ; [[self autoScrollTimer] invalidate]
  100066dc0  mov     x0, x20
  100066dc4  bl      _objc_release
  100066dc8  mov     x2, #0
  100066dcc  adrp    x8, #0x100417000
  100066dd0  nop
  100066dd4  ldr     x1, [x8, #0x710]
  100066dd8  mov     x0, x19
  100066ddc  ldp     x29, x30, [sp, #0x10]
  100066de0  ldp     x20, x19, [sp], #0x20
  100066de4  b       _objc_msgSend                            ; [self setAutoScrollTimer:0]
  100066de8  mov     x19, x0
  100066dec  mov     x0, x20
  100066df0  bl      _objc_release
  100066df4  mov     x0, x19
  100066df8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTableView scrollTick]
; address 0x100066dfc  size 496  kind objc
; ======================================================================
  100066dfc  stp     d11, d10, [sp, #-0x40]!
  100066e00  stp     d9, d8, [sp, #0x10]
  100066e04  stp     x20, x19, [sp, #0x20]
  100066e08  stp     x29, x30, [sp, #0x30]
  100066e0c  add     x29, sp, #0x30
  100066e10  sub     sp, sp, #0x40
  100066e14  mov     x19, x0
  100066e18  adrp    x0, #0x1003be000
  100066e1c  add     x0, x0, #0xb30                           ; @"Table view is ticking..."
  100066e20  bl      _NSLog                                   ; NSLog(@"Table view is ticking...", _cmd)
  100066e24  adrp    x8, #0x100417000
  100066e28  nop
  100066e2c  ldr     x1, [x8, #0x6d0]
  100066e30  mov     x0, x19
  100066e34  bl      _objc_msgSend                            ; [self window]
  100066e38  mov     x29, x29
  100066e3c  bl      _objc_retainAutoreleasedReturnValue
  100066e40  mov     x20, x0
  100066e44  bl      _objc_release
  100066e48  cbnz    x20, loc_100066e60                       ; if ([self window] != 0)
  100066e4c  adrp    x8, #0x100417000
  100066e50  nop
  100066e54  ldr     x1, [x8, #0x6c8]
  100066e58  mov     x0, x19
  100066e5c  bl      _objc_msgSend                            ; [self stopScrolling]
loc_100066e60:
  100066e60  adrp    x8, #0x100417000
  100066e64  nop
  100066e68  ldr     x1, [x8, #0x720]
  100066e6c  mov     x0, x19
  100066e70  bl      _objc_msgSend                            ; [self autoScrollTimer]
  100066e74  mov     x29, x29
  100066e78  bl      _objc_retainAutoreleasedReturnValue
  100066e7c  mov     x20, x0
  100066e80  adrp    x8, #0x100417000
  100066e84  nop
  100066e88  ldr     x1, [x8, #0x738]
  100066e8c  bl      _objc_msgSend                            ; [[self autoScrollTimer] timeInterval]
  100066e90  mov     v8.16b, v0.16b
  100066e94  mov     x0, x20
  100066e98  bl      _objc_release
  100066e9c  adrp    x8, #0x100417000
  100066ea0  nop
  100066ea4  ldr     x1, [x8, #0x6f0]
  100066ea8  mov     x0, x19
  100066eac  bl      _objc_msgSend                            ; [self scrollPointsPerSecond]
  100066eb0  fmul    d10, d8, d0
  100066eb4  adrp    x8, #0x100416000
  100066eb8  nop
  100066ebc  ldr     x20, [x8, #0xfb0]
  100066ec0  mov     x0, x19
  100066ec4  mov     x1, x20
  100066ec8  bl      _objc_msgSend                            ; [self contentOffset]
  100066ecc  mov     v9.16b, v0.16b
  100066ed0  mov     x0, x19
  100066ed4  mov     x1, x20
  100066ed8  bl      _objc_msgSend                            ; [self contentOffset]
  100066edc  fadd    d11, d10, d1                             ; t1 = (([[self autoScrollTimer] timeInterval] * [self scrollPointsPerSecond]) + [self contentOffset].1)
  100066ee0  adrp    x8, #0x100417000
  100066ee4  nop
  100066ee8  ldr     x1, [x8, #0x740]
  100066eec  mov     x0, x19
  100066ef0  bl      _objc_msgSend                            ; [self contentSize]
  100066ef4  mov     v10.16b, v1.16b
  100066ef8  adrp    x8, #0x100417000
  100066efc  nop
  100066f00  ldr     x1, [x8, #0x748]
  100066f04  mov     x0, x19
  100066f08  bl      _objc_msgSend                            ; [self bounds]
  100066f0c  fsub    d0, d10, d3
  100066f10  fcmp    d11, d0
  100066f14  b.le    loc_100066f40                            ; if (t1 <= (or unordered) ([self contentSize].1 - [self bounds].3))
  100066f18  adrp    x8, #0x100417000
  100066f1c  nop
  100066f20  ldr     x1, [x8, #0x6c8]
  100066f24  mov     x0, x19
  100066f28  sub     sp, x29, #0x30
  100066f2c  ldp     x29, x30, [sp, #0x30]
  100066f30  ldp     x20, x19, [sp, #0x20]
  100066f34  ldp     d9, d8, [sp, #0x10]
  100066f38  ldp     d11, d10, [sp], #0x40
  100066f3c  b       _objc_msgSend                            ; [self stopScrolling]
loc_100066f40:
  100066f40  adrp    x8, #0x1003b0000
  100066f44  ldr     x8, [x8, #0x118]                         ; __NSConcreteStackBlock
  100066f48  adrp    x9, #0x10041d000
  100066f4c  ldr     x20, [x9, #0xf98]                        ; class UIView
  100066f50  mov     w9, #-0x3e000000
  100066f54  str     x8, [sp, #8]
  100066f58  stp     w9, wzr, [sp, #0x10]
  100066f5c  adr     x8, #0x100066fec                         ; &-[DFAutoScrollTableView scrollTick]_block_invoke
  100066f60  nop
  100066f64  str     x8, [sp, #0x18]
  100066f68  adrp    x8, #0x1003b1000
  100066f6c  add     x8, x8, #0xd60                           ; &d_1003b1d60
  100066f70  str     x8, [sp, #0x20]
  100066f74  mov     x0, x19
  100066f78  bl      _objc_retain
  100066f7c  str     x0, [sp, #0x28]
  100066f80  stp     d9, d11, [sp, #0x30]
  100066f84  adrp    x8, #0x100417000
  100066f88  nop
  100066f8c  ldr     x1, [x8, #0x8f0]
  100066f90  movi    v1.16b, #0
  100066f94  mov     w2, #2
  100066f98  add     x3, sp, #8
  100066f9c  mov     x0, x20
  100066fa0  mov     v0.16b, v8.16b
  100066fa4  mov     x4, #0
  100066fa8  bl      _objc_msgSend                            ; [UIView animateWithDuration:[[self autoScrollTimer] timeInterval] delay:0 options:2 animations:^{-[DFAutoScrollTableView scrollTick]_block_invoke captures +0x20=self, +0x28=[self contentOffset].0, +0x30=t1} completion:0]
  100066fac  ldr     x0, [sp, #0x28]
  100066fb0  bl      _objc_release
  100066fb4  sub     sp, x29, #0x30
  100066fb8  ldp     x29, x30, [sp, #0x30]
  100066fbc  ldp     x20, x19, [sp, #0x20]
  100066fc0  ldp     d9, d8, [sp, #0x10]
  100066fc4  ldp     d11, d10, [sp], #0x40
  100066fc8  ret
  100066fcc  mov     x19, x0
  100066fd0  mov     x0, x20
  100066fd4  b       loc_100066fe0
  100066fd8  mov     x19, x0
  100066fdc  ldr     x0, [sp, #0x28]
loc_100066fe0:
  100066fe0  bl      _objc_release
  100066fe4  mov     x0, x19
  100066fe8  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[DFAutoScrollTableView scrollTick]_block_invoke
; address 0x100066fec  size 28  kind block
; ======================================================================
  100066fec  ldr     x8, [x0, #0x20]                          ; x8 = captured self
  100066ff0  adrp    x9, #0x100417000
  100066ff4  nop
  100066ff8  ldp     d0, d1, [x0, #0x28]
  100066ffc  ldr     x1, [x9, #0x758]
  100067000  mov     x0, x8
  100067004  b       _objc_msgSend                            ; [self setContentOffset:{d0, d1}]

; ======================================================================
; sub_100067008
; address 0x100067008  size 8  kind sub
; ======================================================================
  100067008  ldr     x0, [x1, #0x20]                          ; x0 = a1[+0x20]
  10006700c  b       _objc_retain

; ======================================================================
; sub_100067010
; address 0x100067010  size 8  kind sub
; ======================================================================
  100067010  ldr     x0, [x0, #0x20]                          ; x0 = a0[+0x20]
  100067014  b       _objc_release

; ======================================================================
; -[DFAutoScrollTableView setScrolling:]
; address 0x100067018  size 36  kind objc
; ======================================================================
  100067018  cbz     w2, loc_10006702c                        ; if (arg1 == 0)
  10006701c  adrp    x8, #0x100417000
  100067020  nop
  100067024  ldr     x1, [x8, #0x768]
  100067028  b       _objc_msgSend                            ; [self startScrolling]
loc_10006702c:
  10006702c  adrp    x8, #0x100417000
  100067030  nop
  100067034  ldr     x1, [x8, #0x6c8]
  100067038  b       _objc_msgSend                            ; [self stopScrolling]

; ======================================================================
; -[DFAutoScrollTableView isScrolling]
; address 0x10006703c  size 64  kind objc
; ======================================================================
  10006703c  stp     x20, x19, [sp, #-0x20]!
  100067040  stp     x29, x30, [sp, #0x10]
  100067044  add     x29, sp, #0x10
  100067048  adrp    x8, #0x100417000
  10006704c  nop
  100067050  ldr     x1, [x8, #0x720]
  100067054  bl      _objc_msgSend                            ; [self autoScrollTimer]
  100067058  mov     x29, x29
  10006705c  bl      _objc_retainAutoreleasedReturnValue
  100067060  cmp     x0, #0
  100067064  cset    w19, ne
  100067068  bl      _objc_release
  10006706c  mov     x0, x19
  100067070  ldp     x29, x30, [sp, #0x10]
  100067074  ldp     x20, x19, [sp], #0x20
  100067078  ret

; ======================================================================
; -[DFAutoScrollTableView drawRect:]
; address 0x10006707c  size 60  kind objc
; ======================================================================
  10006707c  stp     x29, x30, [sp, #-0x10]!
  100067080  mov     x29, sp
  100067084  sub     sp, sp, #0x10
  100067088  str     x0, [sp]
  10006708c  adrp    x8, #0x10041e000
  100067090  ldr     x8, [x8, #0xd98]
  100067094  str     x8, [sp, #8]
  100067098  adrp    x8, #0x100417000
  10006709c  nop
  1000670a0  ldr     x1, [x8, #0x770]
  1000670a4  mov     x0, sp
  1000670a8  bl      _objc_msgSendSuper2                      ; [super drawRect:{arg1.0, arg1.1, arg1.2, arg1.3}]
  1000670ac  mov     sp, x29
  1000670b0  ldp     x29, x30, [sp], #0x10
  1000670b4  ret

; ======================================================================
; -[DFAutoScrollTableView scrollPointsPerSecond]
; address 0x1000670b8  size 20  kind objc
; ======================================================================
  1000670b8  adrp    x8, #0x10041f000
  1000670bc  ldrsw   x8, [x8, #0xc44]                         ; ivar offset DFAutoScrollTableView._scrollPointsPerSecond (+0x78)
  1000670c0  ldr     x8, [x0, x8]                             ; x8 = self->_scrollPointsPerSecond
  1000670c4  fmov    d0, x8
  1000670c8  ret

; ======================================================================
; -[DFAutoScrollTableView setScrollPointsPerSecond:]
; address 0x1000670cc  size 20  kind objc
; ======================================================================
  1000670cc  fmov    x8, d0
  1000670d0  adrp    x9, #0x10041f000
  1000670d4  ldrsw   x9, [x9, #0xc44]                         ; ivar offset DFAutoScrollTableView._scrollPointsPerSecond (+0x78)
  1000670d8  str     x8, [x0, x9]                             ; self->_scrollPointsPerSecond = arg1
  1000670dc  ret

; ======================================================================
; -[DFAutoScrollTableView scrolling]
; address 0x1000670e0  size 16  kind objc
; ======================================================================
  1000670e0  adrp    x8, #0x10041f000
  1000670e4  ldrsw   x8, [x8, #0xc48]                         ; ivar offset DFAutoScrollTableView._scrolling (+0x70)
  1000670e8  ldrb    w0, [x0, x8]                             ; w0 = self->_scrolling
  1000670ec  ret
