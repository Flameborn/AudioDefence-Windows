// unit PECPUMeter — 2 functions
//   0x10003e348      60  -[PECPUMeter initWithFrame:]
//   0x10003e384    1100  -[PECPUMeter drawRect:]

; ======================================================================
; -[PECPUMeter initWithFrame:]
; address 0x10003e348  size 60  kind objc
; ======================================================================
  10003e348  stp     x29, x30, [sp, #-0x10]!
  10003e34c  mov     x29, sp
  10003e350  sub     sp, sp, #0x10
  10003e354  str     x0, [sp]
  10003e358  adrp    x8, #0x10041e000
  10003e35c  ldr     x8, [x8, #0xcc8]
  10003e360  str     x8, [sp, #8]
  10003e364  adrp    x8, #0x100417000
  10003e368  nop
  10003e36c  ldr     x1, [x8, #0x178]
  10003e370  mov     x0, sp
  10003e374  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  10003e378  mov     sp, x29
  10003e37c  ldp     x29, x30, [sp], #0x10
  10003e380  ret

; ======================================================================
; -[PECPUMeter drawRect:]
; address 0x10003e384  size 1100  kind objc
; ======================================================================
  10003e384  stp     d15, d14, [sp, #-0x90]!
  10003e388  stp     d13, d12, [sp, #0x10]
  10003e38c  stp     d11, d10, [sp, #0x20]
  10003e390  stp     d9, d8, [sp, #0x30]
  10003e394  stp     x26, x25, [sp, #0x40]
  10003e398  stp     x24, x23, [sp, #0x50]
  10003e39c  stp     x22, x21, [sp, #0x60]
  10003e3a0  stp     x20, x19, [sp, #0x70]
  10003e3a4  stp     x29, x30, [sp, #0x80]
  10003e3a8  add     x29, sp, #0x80
  10003e3ac  sub     sp, sp, #0x30
  10003e3b0  mov     v13.16b, v3.16b
  10003e3b4  mov     v8.16b, v2.16b
  10003e3b8  mov     v9.16b, v1.16b
  10003e3bc  mov     v12.16b, v0.16b
  10003e3c0  bl      _UIGraphicsGetCurrentContext             ; UIGraphicsGetCurrentContext(self, _cmd)
  10003e3c4  mov     x19, x0
  10003e3c8  adrp    x20, #0x10041d000
  10003e3cc  ldr     x0, [x20, #0xff8]                        ; class S3DEngine
  10003e3d0  adrp    x8, #0x100418000
  10003e3d4  nop
  10003e3d8  ldr     x1, [x8, #0x6d0]
  10003e3dc  bl      _objc_msgSend                            ; [S3DEngine metric_app_cpu_usage]
  10003e3e0  mov     v11.16b, v0.16b
  10003e3e4  ldr     x0, [x20, #0xff8]                        ; class S3DEngine
  10003e3e8  adrp    x8, #0x100418000
  10003e3ec  nop
  10003e3f0  ldr     x1, [x8, #0x6d8]
  10003e3f4  bl      _objc_msgSend                            ; [S3DEngine metric_MixPercent]
  10003e3f8  mov     v15.16b, v0.16b
  10003e3fc  ldr     x0, [x20, #0xff8]                        ; class S3DEngine
  10003e400  adrp    x8, #0x100418000
  10003e404  nop
  10003e408  ldr     x1, [x8, #0x6e0]
  10003e40c  bl      _objc_msgSend                            ; [S3DEngine metric_MixPercentLP]
  10003e410  str     s0, [sp, #0x20]
  10003e414  ldr     x0, [x20, #0xff8]                        ; class S3DEngine
  10003e418  adrp    x8, #0x100418000
  10003e41c  nop
  10003e420  ldr     x1, [x8, #0x6e8]
  10003e424  bl      _objc_msgSend                            ; [S3DEngine metric_MixPercentMax]
  10003e428  str     s0, [sp, #0x10]
  10003e42c  adrp    x24, #0x10041d000
  10003e430  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e434  adrp    x8, #0x100418000
  10003e438  nop
  10003e43c  ldr     x20, [x8, #0x5e8]
  10003e440  fmov    d0, #1.00000000
  10003e444  fmov    d3, #0.50000000
  10003e448  movi    v1.16b, #0
  10003e44c  mov     x1, x20
  10003e450  mov     v2.16b, v0.16b
  10003e454  bl      _objc_msgSend                            ; [UIColor colorWithRed:1 green:0 blue:1 alpha:0.5]
  10003e458  mov     x29, x29
  10003e45c  bl      _objc_retainAutoreleasedReturnValue
  10003e460  mov     x22, x0
  10003e464  adrp    x8, #0x100418000
  10003e468  nop
  10003e46c  ldr     x21, [x8, #0x360]
  10003e470  mov     x1, x21
  10003e474  bl      _objc_msgSend                            ; [[UIColor colorWithRed:1 green:0 blue:1 alpha:0.5] set]
  10003e478  fcvt    s0, d8
  10003e47c  adrp    x8, #0x100181000
  10003e480  ldr     s1, [x8, #0x9c8]                         ; s1 = 0.800000012
  10003e484  fmul    s10, s0, s1
  10003e488  fmov    d0, #0.25000000
  10003e48c  fmul    d0, d13, d0
  10003e490  str     d13, [sp, #8]
  10003e494  fcvt    s13, d0
  10003e498  fcvt    d14, s13
  10003e49c  nop
  10003e4a0  ldr     s0, [x8, #0xa10]                         ; s0 = 100.0
  10003e4a4  fdiv    s0, s11, s0
  10003e4a8  fmul    s0, s10, s0
  10003e4ac  fcvt    d11, s0
  10003e4b0  mov     x0, x22
  10003e4b4  bl      _objc_release
  10003e4b8  mov     v0.16b, v12.16b
  10003e4bc  mov     v1.16b, v9.16b
  10003e4c0  mov     v2.16b, v11.16b
  10003e4c4  mov     v3.16b, v14.16b
  10003e4c8  bl      _UIRectFill                              ; UIRectFill()
  10003e4cc  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e4d0  fmov    d0, #1.00000000
  10003e4d4  fmov    d3, #0.50000000
  10003e4d8  movi    v1.16b, #0
  10003e4dc  movi    v2.16b, #0
  10003e4e0  mov     x1, x20
  10003e4e4  bl      _objc_msgSend                            ; [UIColor colorWithRed:1 green:0 blue:0 alpha:0.5]
  10003e4e8  mov     x29, x29
  10003e4ec  bl      _objc_retainAutoreleasedReturnValue
  10003e4f0  mov     x22, x0
  10003e4f4  mov     x1, x21
  10003e4f8  bl      _objc_msgSend                            ; [[UIColor colorWithRed:1 green:0 blue:0 alpha:0.5] set]
  10003e4fc  fadd    d11, d14, d9
  10003e500  fmul    s0, s10, s15
  10003e504  fcvt    d15, s0
  10003e508  mov     x0, x22
  10003e50c  bl      _objc_release
  10003e510  mov     v0.16b, v12.16b
  10003e514  mov     v1.16b, v11.16b
  10003e518  mov     v2.16b, v15.16b
  10003e51c  mov     v3.16b, v14.16b
  10003e520  bl      _UIRectFill                              ; UIRectFill()
  10003e524  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e528  fmov    d1, #1.00000000
  10003e52c  fmov    d3, #0.50000000
  10003e530  movi    v0.16b, #0
  10003e534  mov     x1, x20
  10003e538  mov     v2.16b, v1.16b
  10003e53c  bl      _objc_msgSend                            ; [UIColor colorWithRed:0 green:1 blue:1 alpha:0.5]
  10003e540  mov     x29, x29
  10003e544  bl      _objc_retainAutoreleasedReturnValue
  10003e548  mov     x22, x0
  10003e54c  mov     x1, x21
  10003e550  bl      _objc_msgSend                            ; [[UIColor colorWithRed:0 green:1 blue:1 alpha:0.5] set]
  10003e554  mov     v15.16b, v10.16b
  10003e558  ldr     s0, [sp, #0x20]
  10003e55c  fmul    s0, s15, s0
  10003e560  fadd    s1, s13, s13
  10003e564  fcvt    d1, s1
  10003e568  fadd    d10, d1, d9
  10003e56c  fcvt    d11, s0
  10003e570  mov     x0, x22
  10003e574  bl      _objc_release
  10003e578  mov     v0.16b, v12.16b
  10003e57c  mov     v1.16b, v10.16b
  10003e580  mov     v2.16b, v11.16b
  10003e584  mov     v3.16b, v14.16b
  10003e588  bl      _UIRectFill                              ; UIRectFill()
  10003e58c  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e590  fmov    d10, #1.00000000
  10003e594  fmov    d3, #0.50000000
  10003e598  movi    v0.16b, #0
  10003e59c  movi    v2.16b, #0
  10003e5a0  mov     x1, x20
  10003e5a4  mov     v1.16b, v10.16b
  10003e5a8  bl      _objc_msgSend                            ; [UIColor colorWithRed:0 green:1 blue:0 alpha:0.5]
  10003e5ac  mov     x29, x29
  10003e5b0  bl      _objc_retainAutoreleasedReturnValue
  10003e5b4  mov     x22, x0
  10003e5b8  mov     x1, x21
  10003e5bc  bl      _objc_msgSend                            ; [[UIColor colorWithRed:0 green:1 blue:0 alpha:0.5] set]
  10003e5c0  ldr     s0, [sp, #0x10]
  10003e5c4  fmul    s0, s15, s0
  10003e5c8  fmov    s1, #3.00000000
  10003e5cc  fmul    s1, s13, s1
  10003e5d0  fcvt    d1, s1
  10003e5d4  fadd    d11, d1, d9
  10003e5d8  fcvt    d13, s0
  10003e5dc  mov     x0, x22
  10003e5e0  bl      _objc_release
  10003e5e4  mov     v0.16b, v12.16b
  10003e5e8  mov     v1.16b, v11.16b
  10003e5ec  mov     v2.16b, v13.16b
  10003e5f0  mov     v3.16b, v14.16b
  10003e5f4  bl      _UIRectFill                              ; UIRectFill()
  10003e5f8  fcmp    d8, #0.0
  10003e5fc  b.le    loc_10003e780                            ; if (arg1.2 <= (or unordered) 0.0)
  10003e600  mov     w25, #0
  10003e604  fmov    s0, #10.00000000
  10003e608  ldr     d1, [sp, #8]
  10003e60c  fadd    d11, d9, d1
  10003e610  adrp    x8, #0x100418000
  10003e614  nop
  10003e618  ldr     x21, [x8, #0x378]
  10003e61c  adrp    x8, #0x100181000
  10003e620  ldr     d12, [x8, #0xb78]                        ; d12 = 0.7
  10003e624  fmov    d13, #0.50000000
  10003e628  mov     w26, #0x66660000
  10003e62c  movk    w26, #0x6667
  10003e630  movi    v1.16b, #0
  10003e634  str     q1, [sp, #0x20]
  10003e638  movi    v1.16b, #0
  10003e63c  fdiv    s15, s15, s0
loc_10003e640:
  10003e640  str     q1, [sp, #0x10]
  10003e644  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e648  mov     x1, x20
  10003e64c  mov     v0.16b, v13.16b
  10003e650  mov     v1.16b, v13.16b
  10003e654  mov     v2.16b, v13.16b
  10003e658  mov     v3.16b, v12.16b
  10003e65c  bl      _objc_msgSend                            ; [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:0.7]
  10003e660  mov     x29, x29
  10003e664  bl      _objc_retainAutoreleasedReturnValue
  10003e668  mov     x22, x0
  10003e66c  sxtw    x8, w25
  10003e670  mul     x8, x8, x26
  10003e674  lsr     x9, x8, #0x3f
  10003e678  asr     x8, x8, #0x21
  10003e67c  add     w8, w8, w9
  10003e680  add     w8, w8, w8, lsl #2                       ; t1 = ((((x8 * 0x66666667) >> 33) + ((x8 * 0x66666667) >>> 63)) + ((((x8 * 0x66666667) >> 33) + ((x8 * 0x66666667) >>> 63)) << 2))
  10003e684  sub     w8, w25, w8
  10003e688  mov     v14.16b, v10.16b
  10003e68c  cbnz    w8, loc_10003e708                        ; if ((w25 - t1) != 0)
  10003e690  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e694  mov     x1, x20
  10003e698  mov     v0.16b, v12.16b
  10003e69c  mov     v1.16b, v12.16b
  10003e6a0  mov     v2.16b, v12.16b
  10003e6a4  mov     v3.16b, v12.16b
  10003e6a8  bl      _objc_msgSend                            ; [UIColor colorWithRed:0.7 green:0.7 blue:0.7 alpha:0.7]
  10003e6ac  mov     x29, x29
  10003e6b0  bl      _objc_retainAutoreleasedReturnValue
  10003e6b4  mov     x23, x0
  10003e6b8  mov     x0, x22
  10003e6bc  bl      _objc_release
  10003e6c0  fmov    d14, #2.00000000
  10003e6c4  mov     x22, x23
  10003e6c8  cmp     w25, #0xa
  10003e6cc  b.ne    loc_10003e708                            ; if (w25 != 10)
  10003e6d0  ldr     x0, [x24, #0xfa0]                        ; class UIColor
  10003e6d4  mov     x22, x23
  10003e6d8  movi    v1.16b, #0
  10003e6dc  movi    v2.16b, #0
  10003e6e0  mov     x1, x20
  10003e6e4  mov     v0.16b, v10.16b
  10003e6e8  mov     v3.16b, v10.16b
  10003e6ec  bl      _objc_msgSend                            ; [UIColor colorWithRed:1 green:0 blue:0 alpha:1]
  10003e6f0  mov     x29, x29
  10003e6f4  bl      _objc_retainAutoreleasedReturnValue
  10003e6f8  mov     x22, x0
  10003e6fc  mov     x0, x23
  10003e700  bl      _objc_release
  10003e704  fmov    d14, #2.00000000
loc_10003e708:
  10003e708  mov     x0, x19
  10003e70c  bl      _CGContextBeginPath                      ; CGContextBeginPath(UIGraphicsGetCurrentContext(self, _cmd))
  10003e710  mov     x0, x19
  10003e714  mov     v0.16b, v14.16b
  10003e718  bl      _CGContextSetLineWidth                   ; CGContextSetLineWidth(UIGraphicsGetCurrentContext(self, _cmd))
  10003e71c  mov     x0, x19
  10003e720  ldr     q0, [sp, #0x20]
  10003e724  mov     v1.16b, v9.16b
  10003e728  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003e72c  mov     x0, x19
  10003e730  ldr     q0, [sp, #0x20]
  10003e734  mov     v1.16b, v11.16b
  10003e738  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003e73c  mov     x0, x19
  10003e740  bl      _CGContextClosePath                      ; CGContextClosePath(UIGraphicsGetCurrentContext(self, _cmd))
  10003e744  mov     x0, x22
  10003e748  mov     x1, x21
  10003e74c  bl      _objc_msgSend                            ; [x0 setStroke]
  10003e750  mov     w1, #3
  10003e754  mov     x0, x19
  10003e758  bl      _CGContextDrawPath                       ; CGContextDrawPath(UIGraphicsGetCurrentContext(self, _cmd), 3)
  10003e75c  add     w25, w25, #1
  10003e760  mov     x0, x22
  10003e764  bl      _objc_release
  10003e768  ldr     q1, [sp, #0x10]
  10003e76c  fadd    s1, s15, s1
  10003e770  fcvt    d0, s1
  10003e774  str     q0, [sp, #0x20]
  10003e778  fcmp    d0, d8
  10003e77c  b.mi    loc_10003e640                            ; if ((((arg1.2 * 0.8) / 10) + s1) < arg1.2)
loc_10003e780:
  10003e780  sub     sp, x29, #0x80
  10003e784  ldp     x29, x30, [sp, #0x80]
  10003e788  ldp     x20, x19, [sp, #0x70]
  10003e78c  ldp     x22, x21, [sp, #0x60]
  10003e790  ldp     x24, x23, [sp, #0x50]
  10003e794  ldp     x26, x25, [sp, #0x40]
  10003e798  ldp     d9, d8, [sp, #0x30]
  10003e79c  ldp     d11, d10, [sp, #0x20]
  10003e7a0  ldp     d13, d12, [sp, #0x10]
  10003e7a4  ldp     d15, d14, [sp], #0x90
  10003e7a8  ret
loc_10003e7ac:
  10003e7ac  mov     x19, x0
  10003e7b0  mov     x0, x22
  10003e7b4  bl      _objc_release
  10003e7b8  mov     x0, x19
  10003e7bc  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003e7c0  b       loc_10003e7ac
  10003e7c4  b       loc_10003e7ac
  10003e7c8  b       loc_10003e7ac
  10003e7cc  b       loc_10003e7ac
