// unit MBBarProgressView — 17 functions
//   0x1000339f4      52  -[MBBarProgressView init]
//   0x100033a28     428  -[MBBarProgressView initWithFrame:]
//   0x100033bd4     144  -[MBBarProgressView dealloc]
//   0x100033c64    1356  -[MBBarProgressView drawRect:]
//   0x1000341b0     344  -[MBBarProgressView registerForKVO]
//   0x100034308     336  -[MBBarProgressView unregisterFromKVO]
//   0x100034458      88  -[MBBarProgressView observableKeypaths]
//   0x1000344b0      32  -[MBBarProgressView observeValueForKeyPath:ofObject:change:context:]
//   0x1000344d0      16  -[MBBarProgressView progress]
//   0x1000344e0      16  -[MBBarProgressView setProgress:]
//   0x1000344f0      16  -[MBBarProgressView lineColor]
//   0x100034500      56  -[MBBarProgressView setLineColor:]
//   0x100034538      16  -[MBBarProgressView progressRemainingColor]
//   0x100034548      56  -[MBBarProgressView setProgressRemainingColor:]
//   0x100034580      16  -[MBBarProgressView progressColor]
//   0x100034590      56  -[MBBarProgressView setProgressColor:]
//   0x1000345c8      84  -[MBBarProgressView .cxx_destruct]

; ======================================================================
; -[MBBarProgressView init]
; address 0x1000339f4  size 52  kind objc
; ======================================================================
  1000339f4  stp     x29, x30, [sp, #-0x10]!
  1000339f8  mov     x29, sp
  1000339fc  adrp    x8, #0x100417000
  100033a00  nop
  100033a04  ldr     x1, [x8, #0x178]
  100033a08  adrp    x8, #0x100181000
  100033a0c  ldr     d2, [x8, #0xab0]                         ; d2 = 120.0
  100033a10  fmov    d3, #20.00000000
  100033a14  movi    v0.16b, #0
  100033a18  movi    v1.16b, #0
  100033a1c  bl      _objc_msgSend                            ; [self initWithFrame:{0, 0, 120, 20}]
  100033a20  ldp     x29, x30, [sp], #0x10
  100033a24  ret

; ======================================================================
; -[MBBarProgressView initWithFrame:]
; address 0x100033a28  size 428  kind objc
; ======================================================================
  100033a28  stp     x22, x21, [sp, #-0x30]!
  100033a2c  stp     x20, x19, [sp, #0x10]
  100033a30  stp     x29, x30, [sp, #0x20]
  100033a34  add     x29, sp, #0x20
  100033a38  sub     sp, sp, #0x10
  100033a3c  str     x0, [sp]
  100033a40  adrp    x8, #0x10041e000
  100033a44  ldr     x8, [x8, #0xc88]
  100033a48  str     x8, [sp, #8]
  100033a4c  adrp    x8, #0x100417000
  100033a50  nop
  100033a54  ldr     x1, [x8, #0x178]
  100033a58  mov     x20, #0
  100033a5c  mov     x0, sp
  100033a60  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100033a64  mov     x19, x0
  100033a68  cbz     x19, loc_100033b94                       ; if (self == 0)
  100033a6c  adrp    x8, #0x10041f000
  100033a70  ldrsw   x8, [x8, #0x824]                         ; ivar offset MBBarProgressView._progress (+0x68)
  100033a74  str     wzr, [x19, x8]                           ; self->_progress = 0
  100033a78  mov     x20, x19
  100033a7c  adrp    x22, #0x10041d000
  100033a80  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  100033a84  adrp    x8, #0x100417000
  100033a88  nop
  100033a8c  ldr     x21, [x8, #0x328]
  100033a90  mov     x1, x21
  100033a94  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100033a98  mov     x20, x19
  100033a9c  mov     x29, x29
  100033aa0  bl      _objc_retainAutoreleasedReturnValue
  100033aa4  adrp    x8, #0x10041f000
  100033aa8  ldrsw   x9, [x8, #0x828]                         ; ivar offset MBBarProgressView._lineColor (+0x70)
  100033aac  ldr     x8, [x19, x9]                            ; x8 = self->_lineColor
  100033ab0  str     x0, [x19, x9]                            ; self->_lineColor = [UIColor whiteColor]
  100033ab4  mov     x0, x8
  100033ab8  bl      _objc_release
  100033abc  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  100033ac0  mov     x1, x21
  100033ac4  bl      _objc_msgSend                            ; [UIColor whiteColor]
  100033ac8  mov     x20, x19
  100033acc  mov     x29, x29
  100033ad0  bl      _objc_retainAutoreleasedReturnValue
  100033ad4  adrp    x8, #0x10041f000
  100033ad8  ldrsw   x9, [x8, #0x82c]                         ; ivar offset MBBarProgressView._progressColor (+0x80)
  100033adc  ldr     x8, [x19, x9]                            ; x8 = self->_progressColor
  100033ae0  str     x0, [x19, x9]                            ; self->_progressColor = [UIColor whiteColor]
  100033ae4  mov     x0, x8
  100033ae8  bl      _objc_release
  100033aec  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  100033af0  adrp    x8, #0x100417000
  100033af4  nop
  100033af8  ldr     x21, [x8, #0x340]
  100033afc  mov     x1, x21
  100033b00  bl      _objc_msgSend                            ; [UIColor clearColor]
  100033b04  mov     x20, x19
  100033b08  mov     x29, x29
  100033b0c  bl      _objc_retainAutoreleasedReturnValue
  100033b10  adrp    x8, #0x10041f000
  100033b14  ldrsw   x9, [x8, #0x830]                         ; ivar offset MBBarProgressView._progressRemainingColor (+0x78)
  100033b18  ldr     x8, [x19, x9]                            ; x8 = self->_progressRemainingColor
  100033b1c  str     x0, [x19, x9]                            ; self->_progressRemainingColor = [UIColor clearColor]
  100033b20  mov     x0, x8
  100033b24  bl      _objc_release
  100033b28  ldr     x0, [x22, #0xfa0]                        ; class UIColor
  100033b2c  mov     x1, x21
  100033b30  bl      _objc_msgSend                            ; [UIColor clearColor]
  100033b34  mov     x29, x29
  100033b38  bl      _objc_retainAutoreleasedReturnValue
  100033b3c  mov     x21, x0
  100033b40  adrp    x8, #0x100417000
  100033b44  nop
  100033b48  ldr     x1, [x8, #0x188]
  100033b4c  mov     x0, x19
  100033b50  mov     x2, x21
  100033b54  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  100033b58  mov     x20, x19
  100033b5c  mov     x0, x21
  100033b60  bl      _objc_release
  100033b64  adrp    x8, #0x100417000
  100033b68  nop
  100033b6c  ldr     x1, [x8, #0xf20]
  100033b70  mov     w2, #0
  100033b74  mov     x0, x19
  100033b78  bl      _objc_msgSend                            ; [self setOpaque:0]
  100033b7c  mov     x20, x19
  100033b80  adrp    x8, #0x100418000
  100033b84  nop
  100033b88  ldr     x1, [x8, #0x108]
  100033b8c  mov     x0, x19
  100033b90  bl      _objc_msgSend                            ; [self registerForKVO]
loc_100033b94:
  100033b94  mov     x0, x19
  100033b98  sub     sp, x29, #0x20
  100033b9c  ldp     x29, x30, [sp, #0x20]
  100033ba0  ldp     x20, x19, [sp, #0x10]
  100033ba4  ldp     x22, x21, [sp], #0x30
  100033ba8  ret
  100033bac  mov     x22, x0
loc_100033bb0:
  100033bb0  mov     x0, x20
  100033bb4  bl      _objc_release
  100033bb8  mov     x0, x22
  100033bbc  bl      __Unwind_Resume                          ; Unwind_Resume()
  100033bc0  mov     x22, x0
  100033bc4  mov     x0, x21
  100033bc8  bl      _objc_release
  100033bcc  mov     x20, x19
  100033bd0  b       loc_100033bb0

; ======================================================================
; -[MBBarProgressView dealloc]
; address 0x100033bd4  size 144  kind objc
; ======================================================================
  100033bd4  stp     x20, x19, [sp, #-0x20]!
  100033bd8  stp     x29, x30, [sp, #0x10]
  100033bdc  add     x29, sp, #0x10
  100033be0  sub     sp, sp, #0x20
  100033be4  mov     x19, x0
  100033be8  adrp    x8, #0x100418000
  100033bec  nop
  100033bf0  ldr     x1, [x8, #0x120]
  100033bf4  bl      _objc_msgSend                            ; [self unregisterFromKVO]
  100033bf8  str     x19, [sp, #0x10]
  100033bfc  adrp    x8, #0x10041e000
  100033c00  ldr     x8, [x8, #0xc88]
  100033c04  str     x8, [sp, #0x18]
  100033c08  adrp    x8, #0x100416000
  100033c0c  nop
  100033c10  ldr     x1, [x8, #0xfc8]
  100033c14  add     x0, sp, #0x10
  100033c18  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100033c1c  sub     sp, x29, #0x10
  100033c20  ldp     x29, x30, [sp, #0x10]
  100033c24  ldp     x20, x19, [sp], #0x20
  100033c28  ret
  100033c2c  mov     x8, x19
  100033c30  mov     x19, x0
  100033c34  str     x8, [sp]
  100033c38  adrp    x8, #0x10041e000
  100033c3c  ldr     x8, [x8, #0xc88]
  100033c40  str     x8, [sp, #8]
  100033c44  adrp    x8, #0x100416000
  100033c48  nop
  100033c4c  ldr     x1, [x8, #0xfc8]
  100033c50  mov     x0, sp
  100033c54  bl      _objc_msgSendSuper2                      ; [super dealloc]
  100033c58  mov     x0, x19
  100033c5c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100033c60  bl      sub_10000b760

; ======================================================================
; -[MBBarProgressView drawRect:]
; address 0x100033c64  size 1356  kind objc
; ======================================================================
  100033c64  stp     d15, d14, [sp, #-0x70]!
  100033c68  stp     d13, d12, [sp, #0x10]
  100033c6c  stp     d11, d10, [sp, #0x20]
  100033c70  stp     d9, d8, [sp, #0x30]
  100033c74  stp     x22, x21, [sp, #0x40]
  100033c78  stp     x20, x19, [sp, #0x50]
  100033c7c  stp     x29, x30, [sp, #0x60]
  100033c80  add     x29, sp, #0x60
  100033c84  sub     sp, sp, #0x10
  100033c88  str     d3, [sp, #8]
  100033c8c  mov     v9.16b, v3.16b
  100033c90  mov     v8.16b, v2.16b
  100033c94  mov     x20, x0
  100033c98  bl      _UIGraphicsGetCurrentContext             ; UIGraphicsGetCurrentContext(self, _cmd)
  100033c9c  mov     x19, x0
  100033ca0  fmov    d11, #2.00000000
  100033ca4  mov     v0.16b, v11.16b
  100033ca8  bl      _CGContextSetLineWidth                   ; CGContextSetLineWidth(UIGraphicsGetCurrentContext(self, _cmd))
  100033cac  adrp    x8, #0x10041f000
  100033cb0  ldrsw   x8, [x8, #0x828]                         ; ivar offset MBBarProgressView._lineColor (+0x70)
  100033cb4  ldr     x0, [x20, x8]                            ; x0 = self->_lineColor
  100033cb8  adrp    x8, #0x100418000
  100033cbc  nop
  100033cc0  ldr     x21, [x8, #0x2b8]
  100033cc4  mov     x1, x21
  100033cc8  bl      _objc_msgSend                            ; [self->_lineColor CGColor]
  100033ccc  mov     x1, x0
  100033cd0  mov     x0, x19
  100033cd4  bl      _CGContextSetStrokeColorWithColor        ; CGContextSetStrokeColorWithColor(UIGraphicsGetCurrentContext(self, _cmd), [self->_lineColor CGColor])
  100033cd8  adrp    x8, #0x10041f000
  100033cdc  ldrsw   x8, [x8, #0x830]                         ; ivar offset MBBarProgressView._progressRemainingColor (+0x78)
  100033ce0  ldr     x0, [x20, x8]                            ; x0 = self->_progressRemainingColor
  100033ce4  mov     x1, x21
  100033ce8  bl      _objc_msgSend                            ; [self->_progressRemainingColor CGColor]
  100033cec  mov     x1, x0
  100033cf0  mov     x0, x19
  100033cf4  bl      _CGContextSetFillColorWithColor          ; CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(self, _cmd), [self->_progressRemainingColor CGColor])
  100033cf8  fmov    d0, #0.50000000
  100033cfc  fmul    d10, d9, d0
  100033d00  fmov    d15, #-2.00000000
  100033d04  fadd    d0, d10, d15
  100033d08  fcvt    s9, d0
  100033d0c  str     s9, [sp, #4]
  100033d10  mov     x0, x19
  100033d14  mov     v0.16b, v11.16b
  100033d18  mov     v1.16b, v10.16b
  100033d1c  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033d20  fmov    s0, #2.00000000
  100033d24  fadd    s0, s9, s0
  100033d28  fcvt    d13, s0
  100033d2c  fcvt    d12, s9
  100033d30  mov     x0, x19
  100033d34  mov     v0.16b, v11.16b
  100033d38  mov     v1.16b, v11.16b
  100033d3c  mov     v2.16b, v13.16b
  100033d40  mov     v3.16b, v11.16b
  100033d44  mov     v4.16b, v12.16b
  100033d48  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033d4c  fsub    d0, d8, d12
  100033d50  fadd    d14, d0, d15
  100033d54  mov     x0, x19
  100033d58  mov     v0.16b, v14.16b
  100033d5c  mov     v1.16b, v11.16b
  100033d60  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033d64  fadd    d9, d8, d15
  100033d68  mov     x0, x19
  100033d6c  mov     v0.16b, v9.16b
  100033d70  mov     v1.16b, v11.16b
  100033d74  mov     v2.16b, v9.16b
  100033d78  mov     v3.16b, v10.16b
  100033d7c  mov     v4.16b, v12.16b
  100033d80  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033d84  ldr     d0, [sp, #8]
  100033d88  fadd    d15, d0, d15
  100033d8c  mov     x0, x19
  100033d90  mov     v0.16b, v9.16b
  100033d94  mov     v1.16b, v15.16b
  100033d98  mov     v2.16b, v14.16b
  100033d9c  mov     v3.16b, v15.16b
  100033da0  mov     v4.16b, v12.16b
  100033da4  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033da8  mov     x0, x19
  100033dac  mov     v0.16b, v13.16b
  100033db0  mov     v1.16b, v15.16b
  100033db4  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033db8  mov     x0, x19
  100033dbc  mov     v0.16b, v11.16b
  100033dc0  mov     v1.16b, v15.16b
  100033dc4  mov     v2.16b, v11.16b
  100033dc8  mov     v3.16b, v10.16b
  100033dcc  mov     v4.16b, v12.16b
  100033dd0  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033dd4  mov     x0, x19
  100033dd8  bl      _CGContextFillPath                       ; CGContextFillPath(UIGraphicsGetCurrentContext(self, _cmd))
  100033ddc  mov     x0, x19
  100033de0  mov     v0.16b, v11.16b
  100033de4  mov     v1.16b, v10.16b
  100033de8  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033dec  mov     x0, x19
  100033df0  mov     v0.16b, v11.16b
  100033df4  mov     v1.16b, v11.16b
  100033df8  mov     v2.16b, v13.16b
  100033dfc  mov     v3.16b, v11.16b
  100033e00  mov     v4.16b, v12.16b
  100033e04  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033e08  mov     x0, x19
  100033e0c  mov     v0.16b, v14.16b
  100033e10  mov     v1.16b, v11.16b
  100033e14  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033e18  mov     x0, x19
  100033e1c  mov     v0.16b, v9.16b
  100033e20  mov     v1.16b, v11.16b
  100033e24  mov     v2.16b, v9.16b
  100033e28  mov     v3.16b, v10.16b
  100033e2c  mov     v4.16b, v12.16b
  100033e30  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033e34  mov     x0, x19
  100033e38  mov     v0.16b, v9.16b
  100033e3c  mov     v9.16b, v10.16b
  100033e40  mov     v1.16b, v15.16b
  100033e44  mov     v2.16b, v14.16b
  100033e48  mov     v3.16b, v15.16b
  100033e4c  mov     v4.16b, v12.16b
  100033e50  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033e54  mov     x0, x19
  100033e58  mov     v0.16b, v13.16b
  100033e5c  mov     v1.16b, v15.16b
  100033e60  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033e64  mov     x0, x19
  100033e68  mov     v0.16b, v11.16b
  100033e6c  mov     v1.16b, v15.16b
  100033e70  mov     v2.16b, v11.16b
  100033e74  mov     v3.16b, v9.16b
  100033e78  mov     v4.16b, v12.16b
  100033e7c  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033e80  mov     x0, x19
  100033e84  bl      _CGContextStrokePath                     ; CGContextStrokePath(UIGraphicsGetCurrentContext(self, _cmd))
  100033e88  adrp    x8, #0x10041f000
  100033e8c  ldrsw   x8, [x8, #0x82c]                         ; ivar offset MBBarProgressView._progressColor (+0x80)
  100033e90  ldr     x0, [x20, x8]                            ; x0 = self->_progressColor
  100033e94  mov     x1, x21
  100033e98  bl      _objc_msgSend                            ; [self->_progressColor CGColor]
  100033e9c  mov     x1, x0
  100033ea0  mov     x0, x19
  100033ea4  bl      _CGContextSetFillColorWithColor          ; CGContextSetFillColorWithColor(UIGraphicsGetCurrentContext(self, _cmd), [self->_progressColor CGColor])
  100033ea8  fmov    s0, #-2.00000000
  100033eac  ldr     s1, [sp, #4]
  100033eb0  fadd    s14, s1, s0
  100033eb4  adrp    x8, #0x100418000
  100033eb8  nop
  100033ebc  ldr     x1, [x8, #0x370]
  100033ec0  mov     x0, x20
  100033ec4  bl      _objc_msgSend                            ; [self progress]
  100033ec8  fcvt    d0, s0
  100033ecc  mov     v2.16b, v8.16b
  100033ed0  fmul    d0, d0, d2
  100033ed4  fcvt    s0, d0
  100033ed8  fmov    s1, #4.00000000
  100033edc  fadd    s13, s14, s1
  100033ee0  fcmp    s0, s13
  100033ee4  fcvt    d12, s0
  100033ee8  fcvt    d11, s14
  100033eec  fsub    d1, d2, d11
  100033ef0  fmov    d15, #-4.00000000
  100033ef4  fadd    d10, d1, d15
  100033ef8  fccmp   d12, d10, #2, ge
  100033efc  b.ls    loc_100034028                            ; if (flags <=u)
  100033f00  fcmp    s0, s13
  100033f04  b.le    loc_1000340d0                            ; if (([self progress] * arg1.2) <= (or unordered) ((((arg1.3 * 0.5) + -2) + -2) + 4))
  100033f08  fsub    d0, d12, d10
  100033f0c  fcvt    s15, d0
  100033f10  fmov    d8, #4.00000000
  100033f14  mov     x0, x19
  100033f18  mov     v0.16b, v8.16b
  100033f1c  mov     v1.16b, v9.16b
  100033f20  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033f24  fcvt    d13, s13
  100033f28  mov     x0, x19
  100033f2c  mov     v0.16b, v8.16b
  100033f30  mov     v1.16b, v8.16b
  100033f34  mov     v2.16b, v13.16b
  100033f38  mov     v3.16b, v8.16b
  100033f3c  mov     v4.16b, v11.16b
  100033f40  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033f44  mov     x0, x19
  100033f48  mov     v0.16b, v10.16b
  100033f4c  mov     v1.16b, v8.16b
  100033f50  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033f54  fdiv    s0, s15, s14                             ; t1 = ((([self progress] * arg1.2) - ((arg1.2 - (((arg1.3 * 0.5) + -2) + -2)) + -4)) / (((arg1.3 * 0.5) + -2) + -2))
  100033f58  fcvt    d0, s0
  100033f5c  bl      _acos                                    ; acos(t1)
  100033f60  fcvt    s0, d0
  100033f64  fneg    s1, s0
  100033f68  fcvt    d1, s1
  100033f6c  fcmp    s0, s0
  100033f70  movi    v2.16b, #0
  100033f74  fcsel   d4, d2, d1, vs
  100033f78  fcvt    d0, s0
  100033f7c  fcsel   d14, d2, d0, vs
  100033f80  adrp    x8, #0x100181000
  100033f84  ldr     d3, [x8, #0x9e8]                         ; d3 = 3.14159265
  100033f88  mov     x0, x19
  100033f8c  mov     v0.16b, v10.16b
  100033f90  mov     v1.16b, v9.16b
  100033f94  mov     v2.16b, v11.16b
  100033f98  mov     w1, #0
  100033f9c  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 0)
  100033fa0  mov     x0, x19
  100033fa4  mov     v0.16b, v12.16b
  100033fa8  mov     v1.16b, v9.16b
  100033fac  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033fb0  mov     x0, x19
  100033fb4  mov     v0.16b, v8.16b
  100033fb8  mov     v1.16b, v9.16b
  100033fbc  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033fc0  ldr     d0, [sp, #8]
  100033fc4  fmov    d1, #-4.00000000
  100033fc8  fadd    d15, d0, d1
  100033fcc  mov     x0, x19
  100033fd0  mov     v0.16b, v8.16b
  100033fd4  mov     v1.16b, v15.16b
  100033fd8  mov     v2.16b, v13.16b
  100033fdc  mov     v3.16b, v15.16b
  100033fe0  mov     v4.16b, v11.16b
  100033fe4  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033fe8  mov     x0, x19
  100033fec  mov     v0.16b, v10.16b
  100033ff0  mov     v1.16b, v15.16b
  100033ff4  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100033ff8  adrp    x8, #0x100181000
  100033ffc  ldr     d3, [x8, #0xb30]                         ; d3 = -3.14159265
  100034000  mov     w1, #1
  100034004  mov     x0, x19
  100034008  mov     v0.16b, v10.16b
  10003400c  mov     v1.16b, v9.16b
  100034010  mov     v2.16b, v11.16b
  100034014  mov     v4.16b, v14.16b
  100034018  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(self, _cmd), 1)
  10003401c  mov     x0, x19
  100034020  mov     v0.16b, v12.16b
  100034024  b       loc_10003415c
loc_100034028:
  100034028  fmov    d8, #4.00000000
  10003402c  mov     x0, x19
  100034030  mov     v0.16b, v8.16b
  100034034  mov     v1.16b, v9.16b
  100034038  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003403c  fcvt    d10, s13
  100034040  mov     x0, x19
  100034044  mov     v0.16b, v8.16b
  100034048  mov     v1.16b, v8.16b
  10003404c  mov     v2.16b, v10.16b
  100034050  mov     v3.16b, v8.16b
  100034054  mov     v4.16b, v11.16b
  100034058  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003405c  mov     x0, x19
  100034060  mov     v0.16b, v12.16b
  100034064  mov     v1.16b, v8.16b
  100034068  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003406c  mov     x0, x19
  100034070  mov     v0.16b, v12.16b
  100034074  mov     v1.16b, v10.16b
  100034078  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003407c  mov     x0, x19
  100034080  mov     v0.16b, v8.16b
  100034084  mov     v1.16b, v9.16b
  100034088  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  10003408c  ldr     d0, [sp, #8]
  100034090  fadd    d9, d0, d15
  100034094  mov     x0, x19
  100034098  mov     v0.16b, v8.16b
  10003409c  mov     v1.16b, v9.16b
  1000340a0  mov     v2.16b, v10.16b
  1000340a4  mov     v3.16b, v9.16b
  1000340a8  mov     v4.16b, v11.16b
  1000340ac  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  1000340b0  mov     x0, x19
  1000340b4  mov     v0.16b, v12.16b
  1000340b8  mov     v1.16b, v9.16b
  1000340bc  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  1000340c0  mov     x0, x19
  1000340c4  mov     v0.16b, v12.16b
  1000340c8  mov     v1.16b, v10.16b
  1000340cc  b       loc_100034160
loc_1000340d0:
  1000340d0  b.pl    loc_10003418c                            ; if (flags >=0)
  1000340d4  fcmp    s0, #0.0
  1000340d8  b.le    loc_10003418c                            ; if (([self progress] * arg1.2) <= (or unordered) 0.0)
  1000340dc  fmov    d8, #4.00000000
  1000340e0  mov     x0, x19
  1000340e4  mov     v0.16b, v8.16b
  1000340e8  mov     v1.16b, v9.16b
  1000340ec  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  1000340f0  fcvt    d10, s13
  1000340f4  mov     x0, x19
  1000340f8  mov     v0.16b, v8.16b
  1000340fc  mov     v1.16b, v8.16b
  100034100  mov     v2.16b, v10.16b
  100034104  mov     v3.16b, v8.16b
  100034108  mov     v4.16b, v11.16b
  10003410c  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100034110  mov     x0, x19
  100034114  mov     v0.16b, v10.16b
  100034118  mov     v1.16b, v9.16b
  10003411c  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100034120  mov     x0, x19
  100034124  mov     v0.16b, v8.16b
  100034128  mov     v1.16b, v9.16b
  10003412c  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100034130  ldr     d0, [sp, #8]
  100034134  fmov    d1, #-4.00000000
  100034138  fadd    d1, d0, d1
  10003413c  mov     x0, x19
  100034140  mov     v0.16b, v8.16b
  100034144  mov     v2.16b, v10.16b
  100034148  mov     v3.16b, v1.16b
  10003414c  mov     v4.16b, v11.16b
  100034150  bl      _CGContextAddArcToPoint                  ; CGContextAddArcToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100034154  mov     x0, x19
  100034158  mov     v0.16b, v10.16b
loc_10003415c:
  10003415c  mov     v1.16b, v9.16b
loc_100034160:
  100034160  bl      _CGContextAddLineToPoint                 ; CGContextAddLineToPoint(UIGraphicsGetCurrentContext(self, _cmd))
  100034164  mov     x0, x19
  100034168  sub     sp, x29, #0x60
  10003416c  ldp     x29, x30, [sp, #0x60]
  100034170  ldp     x20, x19, [sp, #0x50]
  100034174  ldp     x22, x21, [sp, #0x40]
  100034178  ldp     d9, d8, [sp, #0x30]
  10003417c  ldp     d11, d10, [sp, #0x20]
  100034180  ldp     d13, d12, [sp, #0x10]
  100034184  ldp     d15, d14, [sp], #0x70
  100034188  b       _CGContextFillPath                       ; CGContextFillPath(UIGraphicsGetCurrentContext(self, _cmd))
loc_10003418c:
  10003418c  sub     sp, x29, #0x60
  100034190  ldp     x29, x30, [sp, #0x60]
  100034194  ldp     x20, x19, [sp, #0x50]
  100034198  ldp     x22, x21, [sp, #0x40]
  10003419c  ldp     d9, d8, [sp, #0x30]
  1000341a0  ldp     d11, d10, [sp, #0x20]
  1000341a4  ldp     d13, d12, [sp, #0x10]
  1000341a8  ldp     d15, d14, [sp], #0x70
  1000341ac  ret

; ======================================================================
; -[MBBarProgressView registerForKVO]
; address 0x1000341b0  size 344  kind objc
; ======================================================================
  1000341b0  stp     x28, x27, [sp, #-0x60]!
  1000341b4  stp     x26, x25, [sp, #0x10]
  1000341b8  stp     x24, x23, [sp, #0x20]
  1000341bc  stp     x22, x21, [sp, #0x30]
  1000341c0  stp     x20, x19, [sp, #0x40]
  1000341c4  stp     x29, x30, [sp, #0x50]
  1000341c8  add     x29, sp, #0x50
  1000341cc  sub     sp, sp, #0xd0
  1000341d0  mov     x19, x0
  1000341d4  adrp    x24, #0x1003b0000
  1000341d8  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000341dc  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000341e0  stur    x24, [x29, #-0x58]
  1000341e4  stp     xzr, xzr, [sp, #0x38]
  1000341e8  stp     xzr, xzr, [sp, #0x28]
  1000341ec  stp     xzr, xzr, [sp, #0x18]
  1000341f0  stp     xzr, xzr, [sp, #8]
  1000341f4  adrp    x8, #0x100418000
  1000341f8  nop
  1000341fc  ldr     x1, [x8, #0x2e0]
  100034200  bl      _objc_msgSend                            ; [self observableKeypaths]
  100034204  mov     x29, x29
  100034208  bl      _objc_retainAutoreleasedReturnValue
  10003420c  mov     x20, x0
  100034210  adrp    x8, #0x100416000
  100034214  nop
  100034218  ldr     x21, [x8, #0xe00]
  10003421c  add     x2, sp, #8
  100034220  add     x3, sp, #0x48
  100034224  mov     w4, #0x10
  100034228  mov     x1, x21
  10003422c  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100034230  mov     x22, x0
  100034234  cbz     x22, loc_1000342b4                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100034238  ldr     x8, [sp, #0x18]
  10003423c  ldr     x25, [x8]
  100034240  adrp    x8, #0x100418000
  100034244  add     x8, x8, #0x2e8                           ; &@selector(addObserver:forKeyPath:options:context:)
  100034248  ldr     x23, [x8]
loc_10003424c:
  10003424c  mov     x26, #0
loc_100034250:
  100034250  ldr     x8, [sp, #0x18]
  100034254  ldr     x8, [x8]
  100034258  cmp     x8, x25
  10003425c  b.eq    loc_100034268                            ; if (x8 == x25)
  100034260  mov     x0, x20
  100034264  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self observableKeypaths])
loc_100034268:
  100034268  ldr     x8, [sp, #0x10]
  10003426c  ldr     x3, [x8, x26, lsl #3]
  100034270  mov     w4, #1
  100034274  mov     x0, x19
  100034278  mov     x1, x23
  10003427c  mov     x2, x19
  100034280  mov     x5, #0
  100034284  bl      _objc_msgSend                            ; [self addObserver:self forKeyPath:x3 options:1 context:0]
  100034288  add     x26, x26, #1
  10003428c  cmp     x26, x22
  100034290  b.lo    loc_100034250                            ; if ((x26 + 1) <u [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  100034294  add     x2, sp, #8
  100034298  add     x3, sp, #0x48
  10003429c  mov     w4, #0x10
  1000342a0  mov     x0, x20
  1000342a4  mov     x1, x21
  1000342a8  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000342ac  mov     x22, x0
  1000342b0  cbnz    x22, loc_10003424c                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000342b4:
  1000342b4  mov     x0, x20
  1000342b8  bl      _objc_release
  1000342bc  ldur    x8, [x29, #-0x58]
  1000342c0  sub     x8, x24, x8
  1000342c4  cbnz    x8, loc_1000342e8                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000342c8  sub     sp, x29, #0x50
  1000342cc  ldp     x29, x30, [sp, #0x50]
  1000342d0  ldp     x20, x19, [sp, #0x40]
  1000342d4  ldp     x22, x21, [sp, #0x30]
  1000342d8  ldp     x24, x23, [sp, #0x20]
  1000342dc  ldp     x26, x25, [sp, #0x10]
  1000342e0  ldp     x28, x27, [sp], #0x60
  1000342e4  ret
loc_1000342e8:
  1000342e8  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_1000342ec:
  1000342ec  mov     x19, x0
  1000342f0  mov     x0, x20
  1000342f4  bl      _objc_release
  1000342f8  mov     x0, x19
  1000342fc  bl      __Unwind_Resume                          ; Unwind_Resume()
  100034300  b       loc_1000342ec
  100034304  b       loc_1000342ec

; ======================================================================
; -[MBBarProgressView unregisterFromKVO]
; address 0x100034308  size 336  kind objc
; ======================================================================
  100034308  stp     x28, x27, [sp, #-0x60]!
  10003430c  stp     x26, x25, [sp, #0x10]
  100034310  stp     x24, x23, [sp, #0x20]
  100034314  stp     x22, x21, [sp, #0x30]
  100034318  stp     x20, x19, [sp, #0x40]
  10003431c  stp     x29, x30, [sp, #0x50]
  100034320  add     x29, sp, #0x50
  100034324  sub     sp, sp, #0xd0
  100034328  mov     x19, x0
  10003432c  adrp    x24, #0x1003b0000
  100034330  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100034334  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  100034338  stur    x24, [x29, #-0x58]
  10003433c  stp     xzr, xzr, [sp, #0x38]
  100034340  stp     xzr, xzr, [sp, #0x28]
  100034344  stp     xzr, xzr, [sp, #0x18]
  100034348  stp     xzr, xzr, [sp, #8]
  10003434c  adrp    x8, #0x100418000
  100034350  nop
  100034354  ldr     x1, [x8, #0x2e0]
  100034358  bl      _objc_msgSend                            ; [self observableKeypaths]
  10003435c  mov     x29, x29
  100034360  bl      _objc_retainAutoreleasedReturnValue
  100034364  mov     x20, x0
  100034368  adrp    x8, #0x100416000
  10003436c  nop
  100034370  ldr     x21, [x8, #0xe00]
  100034374  add     x2, sp, #8
  100034378  add     x3, sp, #0x48
  10003437c  mov     w4, #0x10
  100034380  mov     x1, x21
  100034384  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100034388  mov     x22, x0
  10003438c  cbz     x22, loc_100034404                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  100034390  ldr     x8, [sp, #0x18]
  100034394  ldr     x25, [x8]
  100034398  adrp    x8, #0x100418000
  10003439c  add     x8, x8, #0x2f0                           ; &@selector(removeObserver:forKeyPath:)
  1000343a0  ldr     x23, [x8]
loc_1000343a4:
  1000343a4  mov     x26, #0
loc_1000343a8:
  1000343a8  ldr     x8, [sp, #0x18]
  1000343ac  ldr     x8, [x8]
  1000343b0  cmp     x8, x25
  1000343b4  b.eq    loc_1000343c0                            ; if (x8 == x25)
  1000343b8  mov     x0, x20
  1000343bc  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self observableKeypaths])
loc_1000343c0:
  1000343c0  ldr     x8, [sp, #0x10]
  1000343c4  ldr     x3, [x8, x26, lsl #3]
  1000343c8  mov     x0, x19
  1000343cc  mov     x1, x23
  1000343d0  mov     x2, x19
  1000343d4  bl      _objc_msgSend                            ; [self removeObserver:self forKeyPath:x3]
  1000343d8  add     x26, x26, #1
  1000343dc  cmp     x26, x22
  1000343e0  b.lo    loc_1000343a8                            ; if ((x26 + 1) <u [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000343e4  add     x2, sp, #8
  1000343e8  add     x3, sp, #0x48
  1000343ec  mov     w4, #0x10
  1000343f0  mov     x0, x20
  1000343f4  mov     x1, x21
  1000343f8  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000343fc  mov     x22, x0
  100034400  cbnz    x22, loc_1000343a4                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100034404:
  100034404  mov     x0, x20
  100034408  bl      _objc_release
  10003440c  ldur    x8, [x29, #-0x58]
  100034410  sub     x8, x24, x8
  100034414  cbnz    x8, loc_100034438                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  100034418  sub     sp, x29, #0x50
  10003441c  ldp     x29, x30, [sp, #0x50]
  100034420  ldp     x20, x19, [sp, #0x40]
  100034424  ldp     x22, x21, [sp, #0x30]
  100034428  ldp     x24, x23, [sp, #0x20]
  10003442c  ldp     x26, x25, [sp, #0x10]
  100034430  ldp     x28, x27, [sp], #0x60
  100034434  ret
loc_100034438:
  100034438  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_10003443c:
  10003443c  mov     x19, x0
  100034440  mov     x0, x20
  100034444  bl      _objc_release
  100034448  mov     x0, x19
  10003444c  bl      __Unwind_Resume                          ; Unwind_Resume()
  100034450  b       loc_10003443c
  100034454  b       loc_10003443c

; ======================================================================
; -[MBBarProgressView observableKeypaths]
; address 0x100034458  size 88  kind objc
; ======================================================================
  100034458  stp     x29, x30, [sp, #-0x10]!
  10003445c  mov     x29, sp
  100034460  sub     sp, sp, #0x20
  100034464  adrp    x8, #0x10041d000
  100034468  ldr     x0, [x8, #0xf20]                         ; class NSArray
  10003446c  adrp    x8, #0x100417000
  100034470  nop
  100034474  ldr     x1, [x8, #0xc0]
  100034478  adrp    x8, #0x1003bc000
  10003447c  add     x8, x8, #0x190                           ; @"progress"
  100034480  adrp    x9, #0x1003bc000
  100034484  add     x9, x9, #0x250                           ; @"progressColor"
  100034488  adrp    x10, #0x1003bc000
  10003448c  add     x10, x10, #0x230                         ; @"progressRemainingColor"
  100034490  stp     x8, xzr, [sp, #0x10]
  100034494  stp     x10, x9, [sp]
  100034498  adrp    x2, #0x1003bc000
  10003449c  add     x2, x2, #0x210                           ; @"lineColor"
  1000344a0  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"lineColor", @"progressRemainingColor", @"progressColor", @"progress", nil]
  1000344a4  mov     sp, x29
  1000344a8  ldp     x29, x30, [sp], #0x10
  1000344ac  ret

; ======================================================================
; -[MBBarProgressView observeValueForKeyPath:ofObject:change:context:]
; address 0x1000344b0  size 32  kind objc
; ======================================================================
  1000344b0  stp     x29, x30, [sp, #-0x10]!
  1000344b4  mov     x29, sp
  1000344b8  adrp    x8, #0x100418000
  1000344bc  nop
  1000344c0  ldr     x1, [x8, #0x140]
  1000344c4  bl      _objc_msgSend                            ; [self setNeedsDisplay]
  1000344c8  ldp     x29, x30, [sp], #0x10
  1000344cc  ret

; ======================================================================
; -[MBBarProgressView progress]
; address 0x1000344d0  size 16  kind objc
; ======================================================================
  1000344d0  adrp    x8, #0x10041f000
  1000344d4  ldrsw   x8, [x8, #0x824]                         ; ivar offset MBBarProgressView._progress (+0x68)
  1000344d8  ldr     s0, [x0, x8]                             ; s0 = self->_progress
  1000344dc  ret

; ======================================================================
; -[MBBarProgressView setProgress:]
; address 0x1000344e0  size 16  kind objc
; ======================================================================
  1000344e0  adrp    x8, #0x10041f000
  1000344e4  ldrsw   x8, [x8, #0x824]                         ; ivar offset MBBarProgressView._progress (+0x68)
  1000344e8  str     s0, [x0, x8]                             ; self->_progress = arg1
  1000344ec  ret

; ======================================================================
; -[MBBarProgressView lineColor]
; address 0x1000344f0  size 16  kind objc
; ======================================================================
  1000344f0  adrp    x8, #0x10041f000
  1000344f4  ldrsw   x8, [x8, #0x828]                         ; ivar offset MBBarProgressView._lineColor (+0x70)
  1000344f8  ldr     x0, [x0, x8]                             ; x0 = self->_lineColor
  1000344fc  ret

; ======================================================================
; -[MBBarProgressView setLineColor:]
; address 0x100034500  size 56  kind objc
; ======================================================================
  100034500  stp     x20, x19, [sp, #-0x20]!
  100034504  stp     x29, x30, [sp, #0x10]
  100034508  add     x29, sp, #0x10
  10003450c  mov     x19, x0
  100034510  adrp    x8, #0x10041f000
  100034514  ldrsw   x20, [x8, #0x828]                        ; ivar offset MBBarProgressView._lineColor (+0x70)
  100034518  mov     x0, x2
  10003451c  bl      _objc_retain
  100034520  ldr     x8, [x19, x20]                           ; x8 = self->_lineColor
  100034524  str     x0, [x19, x20]                           ; self->_lineColor = arg1
  100034528  mov     x0, x8
  10003452c  ldp     x29, x30, [sp, #0x10]
  100034530  ldp     x20, x19, [sp], #0x20
  100034534  b       _objc_release

; ======================================================================
; -[MBBarProgressView progressRemainingColor]
; address 0x100034538  size 16  kind objc
; ======================================================================
  100034538  adrp    x8, #0x10041f000
  10003453c  ldrsw   x8, [x8, #0x830]                         ; ivar offset MBBarProgressView._progressRemainingColor (+0x78)
  100034540  ldr     x0, [x0, x8]                             ; x0 = self->_progressRemainingColor
  100034544  ret

; ======================================================================
; -[MBBarProgressView setProgressRemainingColor:]
; address 0x100034548  size 56  kind objc
; ======================================================================
  100034548  stp     x20, x19, [sp, #-0x20]!
  10003454c  stp     x29, x30, [sp, #0x10]
  100034550  add     x29, sp, #0x10
  100034554  mov     x19, x0
  100034558  adrp    x8, #0x10041f000
  10003455c  ldrsw   x20, [x8, #0x830]                        ; ivar offset MBBarProgressView._progressRemainingColor (+0x78)
  100034560  mov     x0, x2
  100034564  bl      _objc_retain
  100034568  ldr     x8, [x19, x20]                           ; x8 = self->_progressRemainingColor
  10003456c  str     x0, [x19, x20]                           ; self->_progressRemainingColor = arg1
  100034570  mov     x0, x8
  100034574  ldp     x29, x30, [sp, #0x10]
  100034578  ldp     x20, x19, [sp], #0x20
  10003457c  b       _objc_release

; ======================================================================
; -[MBBarProgressView progressColor]
; address 0x100034580  size 16  kind objc
; ======================================================================
  100034580  adrp    x8, #0x10041f000
  100034584  ldrsw   x8, [x8, #0x82c]                         ; ivar offset MBBarProgressView._progressColor (+0x80)
  100034588  ldr     x0, [x0, x8]                             ; x0 = self->_progressColor
  10003458c  ret

; ======================================================================
; -[MBBarProgressView setProgressColor:]
; address 0x100034590  size 56  kind objc
; ======================================================================
  100034590  stp     x20, x19, [sp, #-0x20]!
  100034594  stp     x29, x30, [sp, #0x10]
  100034598  add     x29, sp, #0x10
  10003459c  mov     x19, x0
  1000345a0  adrp    x8, #0x10041f000
  1000345a4  ldrsw   x20, [x8, #0x82c]                        ; ivar offset MBBarProgressView._progressColor (+0x80)
  1000345a8  mov     x0, x2
  1000345ac  bl      _objc_retain
  1000345b0  ldr     x8, [x19, x20]                           ; x8 = self->_progressColor
  1000345b4  str     x0, [x19, x20]                           ; self->_progressColor = arg1
  1000345b8  mov     x0, x8
  1000345bc  ldp     x29, x30, [sp, #0x10]
  1000345c0  ldp     x20, x19, [sp], #0x20
  1000345c4  b       _objc_release

; ======================================================================
; -[MBBarProgressView .cxx_destruct]
; address 0x1000345c8  size 84  kind objc
; ======================================================================
  1000345c8  stp     x20, x19, [sp, #-0x20]!
  1000345cc  stp     x29, x30, [sp, #0x10]
  1000345d0  add     x29, sp, #0x10
  1000345d4  mov     x19, x0
  1000345d8  adrp    x8, #0x10041f000
  1000345dc  ldrsw   x8, [x8, #0x82c]                         ; ivar offset MBBarProgressView._progressColor (+0x80)
  1000345e0  add     x0, x19, x8
  1000345e4  mov     x1, #0
  1000345e8  bl      _objc_storeStrong
  1000345ec  adrp    x8, #0x10041f000
  1000345f0  ldrsw   x8, [x8, #0x830]                         ; ivar offset MBBarProgressView._progressRemainingColor (+0x78)
  1000345f4  add     x0, x19, x8
  1000345f8  mov     x1, #0
  1000345fc  bl      _objc_storeStrong
  100034600  mov     x1, #0
  100034604  adrp    x8, #0x10041f000
  100034608  ldrsw   x8, [x8, #0x828]                         ; ivar offset MBBarProgressView._lineColor (+0x70)
  10003460c  add     x0, x19, x8
  100034610  ldp     x29, x30, [sp, #0x10]
  100034614  ldp     x20, x19, [sp], #0x20
  100034618  b       _objc_storeStrong
