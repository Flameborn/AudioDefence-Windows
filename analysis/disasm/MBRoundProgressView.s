// unit MBRoundProgressView — 17 functions
//   0x100032f88      52  -[MBRoundProgressView init]
//   0x100032fbc     436  -[MBRoundProgressView initWithFrame:]
//   0x100033170     144  -[MBRoundProgressView dealloc]
//   0x100033200     964  -[MBRoundProgressView drawRect:]
//   0x1000335c4     344  -[MBRoundProgressView registerForKVO]
//   0x10003371c     336  -[MBRoundProgressView unregisterFromKVO]
//   0x10003386c      88  -[MBRoundProgressView observableKeypaths]
//   0x1000338c4      32  -[MBRoundProgressView observeValueForKeyPath:ofObject:change:context:]
//   0x1000338e4      16  -[MBRoundProgressView progress]
//   0x1000338f4      16  -[MBRoundProgressView setProgress:]
//   0x100033904      16  -[MBRoundProgressView progressTintColor]
//   0x100033914      56  -[MBRoundProgressView setProgressTintColor:]
//   0x10003394c      16  -[MBRoundProgressView backgroundTintColor]
//   0x10003395c      56  -[MBRoundProgressView setBackgroundTintColor:]
//   0x100033994      16  -[MBRoundProgressView isAnnular]
//   0x1000339a4      16  -[MBRoundProgressView setAnnular:]
//   0x1000339b4      64  -[MBRoundProgressView .cxx_destruct]

; ======================================================================
; -[MBRoundProgressView init]
; address 0x100032f88  size 52  kind objc
; ======================================================================
  100032f88  stp     x29, x30, [sp, #-0x10]!
  100032f8c  mov     x29, sp
  100032f90  adrp    x8, #0x100417000
  100032f94  nop
  100032f98  ldr     x1, [x8, #0x178]
  100032f9c  adrp    x8, #0x100181000
  100032fa0  ldr     d2, [x8, #0xb10]                         ; d2 = 37.0
  100032fa4  movi    v0.16b, #0
  100032fa8  movi    v1.16b, #0
  100032fac  mov     v3.16b, v2.16b
  100032fb0  bl      _objc_msgSend                            ; [self initWithFrame:{0, 0, 37, 37}]
  100032fb4  ldp     x29, x30, [sp], #0x10
  100032fb8  ret

; ======================================================================
; -[MBRoundProgressView initWithFrame:]
; address 0x100032fbc  size 436  kind objc
; ======================================================================
  100032fbc  stp     x24, x23, [sp, #-0x40]!
  100032fc0  stp     x22, x21, [sp, #0x10]
  100032fc4  stp     x20, x19, [sp, #0x20]
  100032fc8  stp     x29, x30, [sp, #0x30]
  100032fcc  add     x29, sp, #0x30
  100032fd0  sub     sp, sp, #0x10
  100032fd4  str     x0, [sp]
  100032fd8  adrp    x8, #0x10041e000
  100032fdc  ldr     x8, [x8, #0xc80]
  100032fe0  str     x8, [sp, #8]
  100032fe4  adrp    x8, #0x100417000
  100032fe8  nop
  100032fec  ldr     x1, [x8, #0x178]
  100032ff0  mov     x20, #0
  100032ff4  mov     x0, sp
  100032ff8  bl      _objc_msgSendSuper2                      ; [super initWithFrame:{arg1.0, arg1.1, arg1.2, arg1.3}]
  100032ffc  mov     x19, x0
  100033000  cbz     x19, loc_10003312c                       ; if (self == 0)
  100033004  mov     x20, x19
  100033008  adrp    x23, #0x10041d000
  10003300c  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  100033010  adrp    x8, #0x100417000
  100033014  nop
  100033018  ldr     x1, [x8, #0x340]
  10003301c  bl      _objc_msgSend                            ; [UIColor clearColor]
  100033020  mov     x29, x29
  100033024  bl      _objc_retainAutoreleasedReturnValue
  100033028  mov     x21, x0
  10003302c  adrp    x8, #0x100417000
  100033030  nop
  100033034  ldr     x1, [x8, #0x188]
  100033038  mov     x0, x19
  10003303c  mov     x2, x21
  100033040  bl      _objc_msgSend                            ; [self setBackgroundColor:[UIColor clearColor]]
  100033044  mov     x20, x19
  100033048  mov     x0, x21
  10003304c  bl      _objc_release
  100033050  adrp    x8, #0x100417000
  100033054  nop
  100033058  ldr     x1, [x8, #0xf20]
  10003305c  mov     w2, #0
  100033060  mov     x0, x19
  100033064  bl      _objc_msgSend                            ; [self setOpaque:0]
  100033068  mov     x20, x19
  10003306c  adrp    x8, #0x10041f000
  100033070  ldrsw   x8, [x8, #0x814]                         ; ivar offset MBRoundProgressView._progress (+0x6c)
  100033074  str     wzr, [x19, x8]                           ; self->_progress = 0
  100033078  adrp    x8, #0x10041f000
  10003307c  ldrsw   x8, [x8, #0x818]                         ; ivar offset MBRoundProgressView._annular (+0x68)
  100033080  strb    wzr, [x19, x8]                           ; self->_annular = 0
  100033084  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  100033088  adrp    x8, #0x100416000
  10003308c  nop
  100033090  ldr     x22, [x8, #0xac8]
  100033094  mov     x1, x22
  100033098  bl      _objc_msgSend                            ; [UIColor alloc]
  10003309c  mov     x20, x19
  1000330a0  adrp    x8, #0x100418000
  1000330a4  nop
  1000330a8  ldr     x21, [x8, #0x338]
  1000330ac  fmov    d0, #1.00000000
  1000330b0  mov     x1, x21
  1000330b4  mov     v1.16b, v0.16b
  1000330b8  bl      _objc_msgSend                            ; [[UIColor alloc] initWithWhite:1 alpha:1]
  1000330bc  mov     x20, x19
  1000330c0  adrp    x8, #0x10041f000
  1000330c4  ldrsw   x9, [x8, #0x81c]                         ; ivar offset MBRoundProgressView._progressTintColor (+0x70)
  1000330c8  ldr     x8, [x19, x9]                            ; x8 = self->_progressTintColor
  1000330cc  str     x0, [x19, x9]                            ; self->_progressTintColor = [[UIColor alloc] initWithWhite:1 alpha:1]
  1000330d0  mov     x0, x8
  1000330d4  bl      _objc_release
  1000330d8  ldr     x0, [x23, #0xfa0]                        ; class UIColor
  1000330dc  mov     x1, x22
  1000330e0  bl      _objc_msgSend                            ; [UIColor alloc]
  1000330e4  mov     x20, x19
  1000330e8  adrp    x8, #0x100181000
  1000330ec  ldr     d1, [x8, #0xb18]                         ; d1 = 0.100000001
  1000330f0  fmov    d0, #1.00000000
  1000330f4  mov     x1, x21
  1000330f8  bl      _objc_msgSend                            ; [[UIColor alloc] initWithWhite:1 alpha:0.1]
  1000330fc  mov     x20, x19
  100033100  adrp    x8, #0x10041f000
  100033104  ldrsw   x9, [x8, #0x820]                         ; ivar offset MBRoundProgressView._backgroundTintColor (+0x78)
  100033108  ldr     x8, [x19, x9]                            ; x8 = self->_backgroundTintColor
  10003310c  str     x0, [x19, x9]                            ; self->_backgroundTintColor = [[UIColor alloc] initWithWhite:1 alpha:0.1]
  100033110  mov     x0, x8
  100033114  bl      _objc_release
  100033118  adrp    x8, #0x100418000
  10003311c  nop
  100033120  ldr     x1, [x8, #0x108]
  100033124  mov     x0, x19
  100033128  bl      _objc_msgSend                            ; [self registerForKVO]
loc_10003312c:
  10003312c  mov     x0, x19
  100033130  sub     sp, x29, #0x30
  100033134  ldp     x29, x30, [sp, #0x30]
  100033138  ldp     x20, x19, [sp, #0x20]
  10003313c  ldp     x22, x21, [sp, #0x10]
  100033140  ldp     x24, x23, [sp], #0x40
  100033144  ret
  100033148  mov     x22, x0
loc_10003314c:
  10003314c  mov     x0, x20
  100033150  bl      _objc_release
  100033154  mov     x0, x22
  100033158  bl      __Unwind_Resume                          ; Unwind_Resume()
  10003315c  mov     x22, x0
  100033160  mov     x0, x21
  100033164  bl      _objc_release
  100033168  mov     x20, x19
  10003316c  b       loc_10003314c

; ======================================================================
; -[MBRoundProgressView dealloc]
; address 0x100033170  size 144  kind objc
; ======================================================================
  100033170  stp     x20, x19, [sp, #-0x20]!
  100033174  stp     x29, x30, [sp, #0x10]
  100033178  add     x29, sp, #0x10
  10003317c  sub     sp, sp, #0x20
  100033180  mov     x19, x0
  100033184  adrp    x8, #0x100418000
  100033188  nop
  10003318c  ldr     x1, [x8, #0x120]
  100033190  bl      _objc_msgSend                            ; [self unregisterFromKVO]
  100033194  str     x19, [sp, #0x10]
  100033198  adrp    x8, #0x10041e000
  10003319c  ldr     x8, [x8, #0xc80]
  1000331a0  str     x8, [sp, #0x18]
  1000331a4  adrp    x8, #0x100416000
  1000331a8  nop
  1000331ac  ldr     x1, [x8, #0xfc8]
  1000331b0  add     x0, sp, #0x10
  1000331b4  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000331b8  sub     sp, x29, #0x10
  1000331bc  ldp     x29, x30, [sp, #0x10]
  1000331c0  ldp     x20, x19, [sp], #0x20
  1000331c4  ret
  1000331c8  mov     x8, x19
  1000331cc  mov     x19, x0
  1000331d0  str     x8, [sp]
  1000331d4  adrp    x8, #0x10041e000
  1000331d8  ldr     x8, [x8, #0xc80]
  1000331dc  str     x8, [sp, #8]
  1000331e0  adrp    x8, #0x100416000
  1000331e4  nop
  1000331e8  ldr     x1, [x8, #0xfc8]
  1000331ec  mov     x0, sp
  1000331f0  bl      _objc_msgSendSuper2                      ; [super dealloc]
  1000331f4  mov     x0, x19
  1000331f8  bl      __Unwind_Resume                          ; Unwind_Resume()
  1000331fc  bl      sub_10000b760

; ======================================================================
; -[MBRoundProgressView drawRect:]
; address 0x100033200  size 964  kind objc
; ======================================================================
  100033200  stp     d13, d12, [sp, #-0x90]!
  100033204  stp     d11, d10, [sp, #0x10]
  100033208  stp     d9, d8, [sp, #0x20]
  10003320c  stp     x28, x27, [sp, #0x30]
  100033210  stp     x26, x25, [sp, #0x40]
  100033214  stp     x24, x23, [sp, #0x50]
  100033218  stp     x22, x21, [sp, #0x60]
  10003321c  stp     x20, x19, [sp, #0x70]
  100033220  stp     x29, x30, [sp, #0x80]
  100033224  add     x29, sp, #0x80
  100033228  mov     x19, x0
  10003322c  adrp    x8, #0x100417000
  100033230  nop
  100033234  ldr     x24, [x8, #0x748]
  100033238  mov     x1, x24
  10003323c  bl      _objc_msgSend                            ; [self bounds]
  100033240  mov     v8.16b, v2.16b
  100033244  mov     v9.16b, v3.16b
  100033248  fmov    d4, #2.00000000
  10003324c  mov     v5.16b, v4.16b
  100033250  bl      _CGRectInset                             ; CGRectInset()
  100033254  mov     v10.16b, v0.16b
  100033258  mov     v11.16b, v1.16b
  10003325c  mov     v12.16b, v2.16b
  100033260  mov     v13.16b, v3.16b
  100033264  bl      _UIGraphicsGetCurrentContext             ; UIGraphicsGetCurrentContext(CGRectInset())
  100033268  mov     x20, x0
  10003326c  adrp    x8, #0x10041f000
  100033270  ldrsw   x8, [x8, #0x818]                         ; ivar offset MBRoundProgressView._annular (+0x68)
  100033274  ldrb    w8, [x19, x8]                            ; w8 = self->_annular
  100033278  cbz     w8, loc_100033464                        ; if (self->_annular == 0)
  10003327c  adrp    x27, #0x10041e000
  100033280  ldr     x0, [x27, #0x130]                        ; class UIBezierPath
  100033284  adrp    x8, #0x100418000
  100033288  nop
  10003328c  ldr     x22, [x8, #0x340]
  100033290  mov     x1, x22
  100033294  bl      _objc_msgSend                            ; [UIBezierPath bezierPath]
  100033298  mov     x29, x29
  10003329c  bl      _objc_retainAutoreleasedReturnValue
  1000332a0  mov     x20, x0
  1000332a4  adrp    x8, #0x100418000
  1000332a8  nop
  1000332ac  ldr     x21, [x8, #0x348]
  1000332b0  fmov    d0, #5.00000000
  1000332b4  mov     x1, x21
  1000332b8  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] setLineWidth:5]
  1000332bc  adrp    x8, #0x100418000
  1000332c0  nop
  1000332c4  ldr     x23, [x8, #0x350]
  1000332c8  mov     w2, #1
  1000332cc  mov     x0, x20
  1000332d0  mov     x1, x23
  1000332d4  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] setLineCapStyle:1]
  1000332d8  mov     x0, x19
  1000332dc  mov     x1, x24
  1000332e0  bl      _objc_msgSend                            ; [self bounds]
  1000332e4  mov     v8.16b, v2.16b
  1000332e8  mov     x0, x19
  1000332ec  mov     x1, x24
  1000332f0  bl      _objc_msgSend                            ; [self bounds]
  1000332f4  mov     v9.16b, v3.16b
  1000332f8  mov     x0, x19
  1000332fc  mov     x1, x24
  100033300  bl      _objc_msgSend                            ; [self bounds]
  100033304  fmov    d0, #0.50000000
  100033308  fmul    d8, d8, d0
  10003330c  fmul    d9, d9, d0
  100033310  fmov    d1, #-5.00000000
  100033314  fadd    d1, d2, d1
  100033318  fmul    d10, d1, d0
  10003331c  adrp    x8, #0x100418000
  100033320  nop
  100033324  ldr     x24, [x8, #0x358]
  100033328  adrp    x8, #0x100181000
  10003332c  ldr     d11, [x8, #0xb20]                        ; d11 = -1.57079637
  100033330  nop
  100033334  ldr     d4, [x8, #0xb28]                         ; d4 = 4.71238911
  100033338  mov     w2, #1
  10003333c  mov     x0, x20
  100033340  mov     x1, x24
  100033344  mov     v0.16b, v8.16b
  100033348  mov     v1.16b, v9.16b
  10003334c  mov     v2.16b, v10.16b
  100033350  mov     v3.16b, v11.16b
  100033354  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] addArcWithCenter:{([self bounds].2 * 0.5), ([self bounds].3 * 0.5)} radius:(([self bounds].2 + -5) * 0.5) startAngle:-1.5708 endAngle:4.71239 clockwise:1]
  100033358  adrp    x8, #0x10041f000
  10003335c  ldrsw   x8, [x8, #0x820]                         ; ivar offset MBRoundProgressView._backgroundTintColor (+0x78)
  100033360  ldr     x0, [x19, x8]                            ; x0 = self->_backgroundTintColor
  100033364  adrp    x8, #0x100418000
  100033368  nop
  10003336c  ldr     x25, [x8, #0x360]
  100033370  mov     x1, x25
  100033374  bl      _objc_msgSend                            ; [self->_backgroundTintColor set]
  100033378  adrp    x8, #0x100418000
  10003337c  nop
  100033380  ldr     x26, [x8, #0x368]
  100033384  mov     x0, x20
  100033388  mov     x1, x26
  10003338c  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] stroke]
  100033390  ldr     x0, [x27, #0x130]                        ; class UIBezierPath
  100033394  mov     x1, x22
  100033398  bl      _objc_msgSend                            ; [UIBezierPath bezierPath]
  10003339c  mov     x29, x29
  1000333a0  bl      _objc_retainAutoreleasedReturnValue
  1000333a4  mov     x22, x0
  1000333a8  mov     w2, #1
  1000333ac  mov     x1, x23
  1000333b0  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] setLineCapStyle:1]
  1000333b4  fmov    d0, #5.00000000
  1000333b8  mov     x0, x22
  1000333bc  mov     x1, x21
  1000333c0  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] setLineWidth:5]
  1000333c4  adrp    x8, #0x100418000
  1000333c8  nop
  1000333cc  ldr     x1, [x8, #0x370]
  1000333d0  mov     x0, x19
  1000333d4  bl      _objc_msgSend                            ; [self progress]
  1000333d8  fadd    s0, s0, s0
  1000333dc  adrp    x8, #0x100181000
  1000333e0  ldr     s1, [x8, #0xae8]                         ; s1 = 3.14159274
  1000333e4  fmul    s0, s0, s1
  1000333e8  fcvt    d0, s0
  1000333ec  fadd    d4, d0, d11
  1000333f0  mov     w2, #1
  1000333f4  mov     x0, x22
  1000333f8  mov     x1, x24
  1000333fc  mov     v0.16b, v8.16b
  100033400  mov     v1.16b, v9.16b
  100033404  mov     v2.16b, v10.16b
  100033408  mov     v3.16b, v11.16b
  10003340c  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] addArcWithCenter:{([self bounds].2 * 0.5), ([self bounds].3 * 0.5)} radius:(([self bounds].2 + -5) * 0.5) startAngle:-1.5708 endAngle:((([self progress] + [self progress]) * 3.14159) + -1.5708) clockwise:1]
  100033410  adrp    x8, #0x10041f000
  100033414  ldrsw   x8, [x8, #0x81c]                         ; ivar offset MBRoundProgressView._progressTintColor (+0x70)
  100033418  ldr     x0, [x19, x8]                            ; x0 = self->_progressTintColor
  10003341c  mov     x1, x25
  100033420  bl      _objc_msgSend                            ; [self->_progressTintColor set]
  100033424  mov     x0, x22
  100033428  mov     x1, x26
  10003342c  bl      _objc_msgSend                            ; [[UIBezierPath bezierPath] stroke]
  100033430  mov     x0, x22
  100033434  bl      _objc_release
  100033438  mov     x0, x20
  10003343c  ldp     x29, x30, [sp, #0x80]
  100033440  ldp     x20, x19, [sp, #0x70]
  100033444  ldp     x22, x21, [sp, #0x60]
  100033448  ldp     x24, x23, [sp, #0x50]
  10003344c  ldp     x26, x25, [sp, #0x40]
  100033450  ldp     x28, x27, [sp, #0x30]
  100033454  ldp     d9, d8, [sp, #0x20]
  100033458  ldp     d11, d10, [sp, #0x10]
  10003345c  ldp     d13, d12, [sp], #0x90
  100033460  b       _objc_release
loc_100033464:
  100033464  adrp    x8, #0x10041f000
  100033468  ldrsw   x8, [x8, #0x81c]                         ; ivar offset MBRoundProgressView._progressTintColor (+0x70)
  10003346c  ldr     x0, [x19, x8]                            ; x0 = self->_progressTintColor
  100033470  adrp    x8, #0x100418000
  100033474  nop
  100033478  ldr     x1, [x8, #0x378]
  10003347c  bl      _objc_msgSend                            ; [self->_progressTintColor setStroke]
  100033480  adrp    x8, #0x10041f000
  100033484  ldrsw   x8, [x8, #0x820]                         ; ivar offset MBRoundProgressView._backgroundTintColor (+0x78)
  100033488  ldr     x0, [x19, x8]                            ; x0 = self->_backgroundTintColor
  10003348c  adrp    x8, #0x100418000
  100033490  nop
  100033494  ldr     x1, [x8, #0x380]
  100033498  bl      _objc_msgSend                            ; [self->_backgroundTintColor setFill]
  10003349c  fmov    d0, #2.00000000
  1000334a0  mov     x0, x20
  1000334a4  bl      _CGContextSetLineWidth                   ; CGContextSetLineWidth(UIGraphicsGetCurrentContext(CGRectInset()))
  1000334a8  mov     x0, x20
  1000334ac  mov     v0.16b, v10.16b
  1000334b0  mov     v1.16b, v11.16b
  1000334b4  mov     v2.16b, v12.16b
  1000334b8  mov     v3.16b, v13.16b
  1000334bc  bl      _CGContextFillEllipseInRect              ; CGContextFillEllipseInRect(UIGraphicsGetCurrentContext(CGRectInset()))
  1000334c0  mov     x0, x20
  1000334c4  mov     v0.16b, v10.16b
  1000334c8  mov     v1.16b, v11.16b
  1000334cc  mov     v2.16b, v12.16b
  1000334d0  mov     v3.16b, v13.16b
  1000334d4  bl      _CGContextStrokeEllipseInRect            ; CGContextStrokeEllipseInRect(UIGraphicsGetCurrentContext(CGRectInset()))
  1000334d8  fmov    d0, #0.50000000
  1000334dc  fmul    d10, d8, d0
  1000334e0  fmul    d9, d9, d0
  1000334e4  fmov    d1, #-4.00000000
  1000334e8  fadd    d1, d8, d1
  1000334ec  fmul    d8, d1, d0
  1000334f0  adrp    x8, #0x100418000
  1000334f4  nop
  1000334f8  ldr     x1, [x8, #0x370]
  1000334fc  mov     x0, x19
  100033500  bl      _objc_msgSend                            ; [self progress]
  100033504  fadd    s0, s0, s0
  100033508  adrp    x8, #0x100181000
  10003350c  ldr     s1, [x8, #0xae8]                         ; s1 = 3.14159274
  100033510  fmul    s0, s0, s1
  100033514  fcvt    d0, s0
  100033518  nop
  10003351c  ldr     d11, [x8, #0xb20]                        ; d11 = -1.57079637
  100033520  fadd    d12, d0, d11
  100033524  fmov    d0, #1.00000000
  100033528  mov     x0, x20
  10003352c  mov     v1.16b, v0.16b
  100033530  mov     v2.16b, v0.16b
  100033534  mov     v3.16b, v0.16b
  100033538  bl      _CGContextSetRGBFillColor                ; CGContextSetRGBFillColor(UIGraphicsGetCurrentContext(CGRectInset()))
  10003353c  mov     x0, x20
  100033540  mov     v0.16b, v10.16b
  100033544  mov     v1.16b, v9.16b
  100033548  bl      _CGContextMoveToPoint                    ; CGContextMoveToPoint(UIGraphicsGetCurrentContext(CGRectInset()))
  10003354c  mov     w1, #0
  100033550  mov     x0, x20
  100033554  mov     v0.16b, v10.16b
  100033558  mov     v1.16b, v9.16b
  10003355c  mov     v2.16b, v8.16b
  100033560  mov     v3.16b, v11.16b
  100033564  mov     v4.16b, v12.16b
  100033568  bl      _CGContextAddArc                         ; CGContextAddArc(UIGraphicsGetCurrentContext(CGRectInset()), 0)
  10003356c  mov     x0, x20
  100033570  bl      _CGContextClosePath                      ; CGContextClosePath(UIGraphicsGetCurrentContext(CGRectInset()))
  100033574  mov     x0, x20
  100033578  ldp     x29, x30, [sp, #0x80]
  10003357c  ldp     x20, x19, [sp, #0x70]
  100033580  ldp     x22, x21, [sp, #0x60]
  100033584  ldp     x24, x23, [sp, #0x50]
  100033588  ldp     x26, x25, [sp, #0x40]
  10003358c  ldp     x28, x27, [sp, #0x30]
  100033590  ldp     d9, d8, [sp, #0x20]
  100033594  ldp     d11, d10, [sp, #0x10]
  100033598  ldp     d13, d12, [sp], #0x90
  10003359c  b       _CGContextFillPath                       ; CGContextFillPath(UIGraphicsGetCurrentContext(CGRectInset()))
  1000335a0  mov     x19, x0
  1000335a4  b       loc_1000335b4
  1000335a8  mov     x19, x0
  1000335ac  mov     x0, x22
  1000335b0  bl      _objc_release
loc_1000335b4:
  1000335b4  mov     x0, x20
  1000335b8  bl      _objc_release
  1000335bc  mov     x0, x19
  1000335c0  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[MBRoundProgressView registerForKVO]
; address 0x1000335c4  size 344  kind objc
; ======================================================================
  1000335c4  stp     x28, x27, [sp, #-0x60]!
  1000335c8  stp     x26, x25, [sp, #0x10]
  1000335cc  stp     x24, x23, [sp, #0x20]
  1000335d0  stp     x22, x21, [sp, #0x30]
  1000335d4  stp     x20, x19, [sp, #0x40]
  1000335d8  stp     x29, x30, [sp, #0x50]
  1000335dc  add     x29, sp, #0x50
  1000335e0  sub     sp, sp, #0xd0
  1000335e4  mov     x19, x0
  1000335e8  adrp    x24, #0x1003b0000
  1000335ec  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  1000335f0  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  1000335f4  stur    x24, [x29, #-0x58]
  1000335f8  stp     xzr, xzr, [sp, #0x38]
  1000335fc  stp     xzr, xzr, [sp, #0x28]
  100033600  stp     xzr, xzr, [sp, #0x18]
  100033604  stp     xzr, xzr, [sp, #8]
  100033608  adrp    x8, #0x100418000
  10003360c  nop
  100033610  ldr     x1, [x8, #0x2e0]
  100033614  bl      _objc_msgSend                            ; [self observableKeypaths]
  100033618  mov     x29, x29
  10003361c  bl      _objc_retainAutoreleasedReturnValue
  100033620  mov     x20, x0
  100033624  adrp    x8, #0x100416000
  100033628  nop
  10003362c  ldr     x21, [x8, #0xe00]
  100033630  add     x2, sp, #8
  100033634  add     x3, sp, #0x48
  100033638  mov     w4, #0x10
  10003363c  mov     x1, x21
  100033640  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100033644  mov     x22, x0
  100033648  cbz     x22, loc_1000336c8                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  10003364c  ldr     x8, [sp, #0x18]
  100033650  ldr     x25, [x8]
  100033654  adrp    x8, #0x100418000
  100033658  add     x8, x8, #0x2e8                           ; &@selector(addObserver:forKeyPath:options:context:)
  10003365c  ldr     x23, [x8]
loc_100033660:
  100033660  mov     x26, #0
loc_100033664:
  100033664  ldr     x8, [sp, #0x18]
  100033668  ldr     x8, [x8]
  10003366c  cmp     x8, x25
  100033670  b.eq    loc_10003367c                            ; if (x8 == x25)
  100033674  mov     x0, x20
  100033678  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self observableKeypaths])
loc_10003367c:
  10003367c  ldr     x8, [sp, #0x10]
  100033680  ldr     x3, [x8, x26, lsl #3]
  100033684  mov     w4, #1
  100033688  mov     x0, x19
  10003368c  mov     x1, x23
  100033690  mov     x2, x19
  100033694  mov     x5, #0
  100033698  bl      _objc_msgSend                            ; [self addObserver:self forKeyPath:x3 options:1 context:0]
  10003369c  add     x26, x26, #1
  1000336a0  cmp     x26, x22
  1000336a4  b.lo    loc_100033664                            ; if ((x26 + 1) <u [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000336a8  add     x2, sp, #8
  1000336ac  add     x3, sp, #0x48
  1000336b0  mov     w4, #0x10
  1000336b4  mov     x0, x20
  1000336b8  mov     x1, x21
  1000336bc  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  1000336c0  mov     x22, x0
  1000336c4  cbnz    x22, loc_100033660                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_1000336c8:
  1000336c8  mov     x0, x20
  1000336cc  bl      _objc_release
  1000336d0  ldur    x8, [x29, #-0x58]
  1000336d4  sub     x8, x24, x8
  1000336d8  cbnz    x8, loc_1000336fc                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  1000336dc  sub     sp, x29, #0x50
  1000336e0  ldp     x29, x30, [sp, #0x50]
  1000336e4  ldp     x20, x19, [sp, #0x40]
  1000336e8  ldp     x22, x21, [sp, #0x30]
  1000336ec  ldp     x24, x23, [sp, #0x20]
  1000336f0  ldp     x26, x25, [sp, #0x10]
  1000336f4  ldp     x28, x27, [sp], #0x60
  1000336f8  ret
loc_1000336fc:
  1000336fc  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100033700:
  100033700  mov     x19, x0
  100033704  mov     x0, x20
  100033708  bl      _objc_release
  10003370c  mov     x0, x19
  100033710  bl      __Unwind_Resume                          ; Unwind_Resume()
  100033714  b       loc_100033700
  100033718  b       loc_100033700

; ======================================================================
; -[MBRoundProgressView unregisterFromKVO]
; address 0x10003371c  size 336  kind objc
; ======================================================================
  10003371c  stp     x28, x27, [sp, #-0x60]!
  100033720  stp     x26, x25, [sp, #0x10]
  100033724  stp     x24, x23, [sp, #0x20]
  100033728  stp     x22, x21, [sp, #0x30]
  10003372c  stp     x20, x19, [sp, #0x40]
  100033730  stp     x29, x30, [sp, #0x50]
  100033734  add     x29, sp, #0x50
  100033738  sub     sp, sp, #0xd0
  10003373c  mov     x19, x0
  100033740  adrp    x24, #0x1003b0000
  100033744  ldr     x24, [x24, #0x1d8]                       ; ___stack_chk_guard
  100033748  ldr     x24, [x24]                               ; x24 = ___stack_chk_guard[+0x0]
  10003374c  stur    x24, [x29, #-0x58]
  100033750  stp     xzr, xzr, [sp, #0x38]
  100033754  stp     xzr, xzr, [sp, #0x28]
  100033758  stp     xzr, xzr, [sp, #0x18]
  10003375c  stp     xzr, xzr, [sp, #8]
  100033760  adrp    x8, #0x100418000
  100033764  nop
  100033768  ldr     x1, [x8, #0x2e0]
  10003376c  bl      _objc_msgSend                            ; [self observableKeypaths]
  100033770  mov     x29, x29
  100033774  bl      _objc_retainAutoreleasedReturnValue
  100033778  mov     x20, x0
  10003377c  adrp    x8, #0x100416000
  100033780  nop
  100033784  ldr     x21, [x8, #0xe00]
  100033788  add     x2, sp, #8
  10003378c  add     x3, sp, #0x48
  100033790  mov     w4, #0x10
  100033794  mov     x1, x21
  100033798  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  10003379c  mov     x22, x0
  1000337a0  cbz     x22, loc_100033818                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] == 0)
  1000337a4  ldr     x8, [sp, #0x18]
  1000337a8  ldr     x25, [x8]
  1000337ac  adrp    x8, #0x100418000
  1000337b0  add     x8, x8, #0x2f0                           ; &@selector(removeObserver:forKeyPath:)
  1000337b4  ldr     x23, [x8]
loc_1000337b8:
  1000337b8  mov     x26, #0
loc_1000337bc:
  1000337bc  ldr     x8, [sp, #0x18]
  1000337c0  ldr     x8, [x8]
  1000337c4  cmp     x8, x25
  1000337c8  b.eq    loc_1000337d4                            ; if (x8 == x25)
  1000337cc  mov     x0, x20
  1000337d0  bl      _objc_enumerationMutation                ; objc_enumerationMutation([self observableKeypaths])
loc_1000337d4:
  1000337d4  ldr     x8, [sp, #0x10]
  1000337d8  ldr     x3, [x8, x26, lsl #3]
  1000337dc  mov     x0, x19
  1000337e0  mov     x1, x23
  1000337e4  mov     x2, x19
  1000337e8  bl      _objc_msgSend                            ; [self removeObserver:self forKeyPath:x3]
  1000337ec  add     x26, x26, #1
  1000337f0  cmp     x26, x22
  1000337f4  b.lo    loc_1000337bc                            ; if ((x26 + 1) <u [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16])
  1000337f8  add     x2, sp, #8
  1000337fc  add     x3, sp, #0x48
  100033800  mov     w4, #0x10
  100033804  mov     x0, x20
  100033808  mov     x1, x21
  10003380c  bl      _objc_msgSend                            ; [[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16]
  100033810  mov     x22, x0
  100033814  cbnz    x22, loc_1000337b8                       ; if ([[self observableKeypaths] countByEnumeratingWithState:&sp[0x8] objects:&sp[0x48] count:16] != 0)
loc_100033818:
  100033818  mov     x0, x20
  10003381c  bl      _objc_release
  100033820  ldur    x8, [x29, #-0x58]
  100033824  sub     x8, x24, x8
  100033828  cbnz    x8, loc_10003384c                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10003382c  sub     sp, x29, #0x50
  100033830  ldp     x29, x30, [sp, #0x50]
  100033834  ldp     x20, x19, [sp, #0x40]
  100033838  ldp     x22, x21, [sp, #0x30]
  10003383c  ldp     x24, x23, [sp, #0x20]
  100033840  ldp     x26, x25, [sp, #0x10]
  100033844  ldp     x28, x27, [sp], #0x60
  100033848  ret
loc_10003384c:
  10003384c  bl      ___stack_chk_fail                        ; stack_chk_fail()
loc_100033850:
  100033850  mov     x19, x0
  100033854  mov     x0, x20
  100033858  bl      _objc_release
  10003385c  mov     x0, x19
  100033860  bl      __Unwind_Resume                          ; Unwind_Resume()
  100033864  b       loc_100033850
  100033868  b       loc_100033850

; ======================================================================
; -[MBRoundProgressView observableKeypaths]
; address 0x10003386c  size 88  kind objc
; ======================================================================
  10003386c  stp     x29, x30, [sp, #-0x10]!
  100033870  mov     x29, sp
  100033874  sub     sp, sp, #0x20
  100033878  adrp    x8, #0x10041d000
  10003387c  ldr     x0, [x8, #0xf20]                         ; class NSArray
  100033880  adrp    x8, #0x100417000
  100033884  nop
  100033888  ldr     x1, [x8, #0xc0]
  10003388c  adrp    x8, #0x1003bc000
  100033890  add     x8, x8, #0x1f0                           ; @"annular"
  100033894  adrp    x9, #0x1003bc000
  100033898  add     x9, x9, #0x190                           ; @"progress"
  10003389c  adrp    x10, #0x1003bc000
  1000338a0  add     x10, x10, #0x1d0                         ; @"backgroundTintColor"
  1000338a4  stp     x8, xzr, [sp, #0x10]
  1000338a8  stp     x10, x9, [sp]
  1000338ac  adrp    x2, #0x1003bc000
  1000338b0  add     x2, x2, #0x1b0                           ; @"progressTintColor"
  1000338b4  bl      _objc_msgSend                            ; [NSArray arrayWithObjects:@"progressTintColor", @"backgroundTintColor", @"progress", @"annular", nil]
  1000338b8  mov     sp, x29
  1000338bc  ldp     x29, x30, [sp], #0x10
  1000338c0  ret

; ======================================================================
; -[MBRoundProgressView observeValueForKeyPath:ofObject:change:context:]
; address 0x1000338c4  size 32  kind objc
; ======================================================================
  1000338c4  stp     x29, x30, [sp, #-0x10]!
  1000338c8  mov     x29, sp
  1000338cc  adrp    x8, #0x100418000
  1000338d0  nop
  1000338d4  ldr     x1, [x8, #0x140]
  1000338d8  bl      _objc_msgSend                            ; [self setNeedsDisplay]
  1000338dc  ldp     x29, x30, [sp], #0x10
  1000338e0  ret

; ======================================================================
; -[MBRoundProgressView progress]
; address 0x1000338e4  size 16  kind objc
; ======================================================================
  1000338e4  adrp    x8, #0x10041f000
  1000338e8  ldrsw   x8, [x8, #0x814]                         ; ivar offset MBRoundProgressView._progress (+0x6c)
  1000338ec  ldr     s0, [x0, x8]                             ; s0 = self->_progress
  1000338f0  ret

; ======================================================================
; -[MBRoundProgressView setProgress:]
; address 0x1000338f4  size 16  kind objc
; ======================================================================
  1000338f4  adrp    x8, #0x10041f000
  1000338f8  ldrsw   x8, [x8, #0x814]                         ; ivar offset MBRoundProgressView._progress (+0x6c)
  1000338fc  str     s0, [x0, x8]                             ; self->_progress = arg1
  100033900  ret

; ======================================================================
; -[MBRoundProgressView progressTintColor]
; address 0x100033904  size 16  kind objc
; ======================================================================
  100033904  adrp    x8, #0x10041f000
  100033908  ldrsw   x8, [x8, #0x81c]                         ; ivar offset MBRoundProgressView._progressTintColor (+0x70)
  10003390c  ldr     x0, [x0, x8]                             ; x0 = self->_progressTintColor
  100033910  ret

; ======================================================================
; -[MBRoundProgressView setProgressTintColor:]
; address 0x100033914  size 56  kind objc
; ======================================================================
  100033914  stp     x20, x19, [sp, #-0x20]!
  100033918  stp     x29, x30, [sp, #0x10]
  10003391c  add     x29, sp, #0x10
  100033920  mov     x19, x0
  100033924  adrp    x8, #0x10041f000
  100033928  ldrsw   x20, [x8, #0x81c]                        ; ivar offset MBRoundProgressView._progressTintColor (+0x70)
  10003392c  mov     x0, x2
  100033930  bl      _objc_retain
  100033934  ldr     x8, [x19, x20]                           ; x8 = self->_progressTintColor
  100033938  str     x0, [x19, x20]                           ; self->_progressTintColor = arg1
  10003393c  mov     x0, x8
  100033940  ldp     x29, x30, [sp, #0x10]
  100033944  ldp     x20, x19, [sp], #0x20
  100033948  b       _objc_release

; ======================================================================
; -[MBRoundProgressView backgroundTintColor]
; address 0x10003394c  size 16  kind objc
; ======================================================================
  10003394c  adrp    x8, #0x10041f000
  100033950  ldrsw   x8, [x8, #0x820]                         ; ivar offset MBRoundProgressView._backgroundTintColor (+0x78)
  100033954  ldr     x0, [x0, x8]                             ; x0 = self->_backgroundTintColor
  100033958  ret

; ======================================================================
; -[MBRoundProgressView setBackgroundTintColor:]
; address 0x10003395c  size 56  kind objc
; ======================================================================
  10003395c  stp     x20, x19, [sp, #-0x20]!
  100033960  stp     x29, x30, [sp, #0x10]
  100033964  add     x29, sp, #0x10
  100033968  mov     x19, x0
  10003396c  adrp    x8, #0x10041f000
  100033970  ldrsw   x20, [x8, #0x820]                        ; ivar offset MBRoundProgressView._backgroundTintColor (+0x78)
  100033974  mov     x0, x2
  100033978  bl      _objc_retain
  10003397c  ldr     x8, [x19, x20]                           ; x8 = self->_backgroundTintColor
  100033980  str     x0, [x19, x20]                           ; self->_backgroundTintColor = arg1
  100033984  mov     x0, x8
  100033988  ldp     x29, x30, [sp, #0x10]
  10003398c  ldp     x20, x19, [sp], #0x20
  100033990  b       _objc_release

; ======================================================================
; -[MBRoundProgressView isAnnular]
; address 0x100033994  size 16  kind objc
; ======================================================================
  100033994  adrp    x8, #0x10041f000
  100033998  ldrsw   x8, [x8, #0x818]                         ; ivar offset MBRoundProgressView._annular (+0x68)
  10003399c  ldrb    w0, [x0, x8]                             ; w0 = self->_annular
  1000339a0  ret

; ======================================================================
; -[MBRoundProgressView setAnnular:]
; address 0x1000339a4  size 16  kind objc
; ======================================================================
  1000339a4  adrp    x8, #0x10041f000
  1000339a8  ldrsw   x8, [x8, #0x818]                         ; ivar offset MBRoundProgressView._annular (+0x68)
  1000339ac  strb    w2, [x0, x8]                             ; self->_annular = arg1
  1000339b0  ret

; ======================================================================
; -[MBRoundProgressView .cxx_destruct]
; address 0x1000339b4  size 64  kind objc
; ======================================================================
  1000339b4  stp     x20, x19, [sp, #-0x20]!
  1000339b8  stp     x29, x30, [sp, #0x10]
  1000339bc  add     x29, sp, #0x10
  1000339c0  mov     x19, x0
  1000339c4  adrp    x8, #0x10041f000
  1000339c8  ldrsw   x8, [x8, #0x820]                         ; ivar offset MBRoundProgressView._backgroundTintColor (+0x78)
  1000339cc  add     x0, x19, x8
  1000339d0  mov     x1, #0
  1000339d4  bl      _objc_storeStrong
  1000339d8  mov     x1, #0
  1000339dc  adrp    x8, #0x10041f000
  1000339e0  ldrsw   x8, [x8, #0x81c]                         ; ivar offset MBRoundProgressView._progressTintColor (+0x70)
  1000339e4  add     x0, x19, x8
  1000339e8  ldp     x29, x30, [sp, #0x10]
  1000339ec  ldp     x20, x19, [sp], #0x20
  1000339f0  b       _objc_storeStrong
