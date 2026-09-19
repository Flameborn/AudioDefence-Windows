// unit UICountingLabel — 26 functions
//   0x10007cc90      20  -[UICountingLabel countFrom:to:]
//   0x10007cca4     924  -[UICountingLabel countFrom:to:withDuration:]
//   0x10007d040    1252  -[UICountingLabel updateValue:]
//   0x10007d524      16  -[UICountingLabel format]
//   0x10007d534      56  -[UICountingLabel setFormat:]
//   0x10007d56c      16  -[UICountingLabel method]
//   0x10007d57c      16  -[UICountingLabel setMethod:]
//   0x10007d58c      16  -[UICountingLabel formatBlock]
//   0x10007d59c      12  -[UICountingLabel setFormatBlock:]
//   0x10007d5a8      16  -[UICountingLabel completionBlock]
//   0x10007d5b8      12  -[UICountingLabel setCompletionBlock:]
//   0x10007d5c4      20  -[UICountingLabel startingValue]
//   0x10007d5d8      20  -[UICountingLabel setStartingValue:]
//   0x10007d5ec      20  -[UICountingLabel destinationValue]
//   0x10007d600      20  -[UICountingLabel setDestinationValue:]
//   0x10007d614      20  -[UICountingLabel progress]
//   0x10007d628      20  -[UICountingLabel setProgress:]
//   0x10007d63c      20  -[UICountingLabel lastUpdate]
//   0x10007d650      20  -[UICountingLabel setLastUpdate:]
//   0x10007d664      20  -[UICountingLabel totalTime]
//   0x10007d678      20  -[UICountingLabel setTotalTime:]
//   0x10007d68c      20  -[UICountingLabel easingRate]
//   0x10007d6a0      20  -[UICountingLabel setEasingRate:]
//   0x10007d6b4      16  -[UICountingLabel counter]
//   0x10007d6c4      56  -[UICountingLabel setCounter:]
//   0x10007d6fc     104  -[UICountingLabel .cxx_destruct]

; ======================================================================
; -[UICountingLabel countFrom:to:]
; address 0x10007cc90  size 20  kind objc
; ======================================================================
  10007cc90  adrp    x8, #0x100419000
  10007cc94  nop
  10007cc98  ldr     x1, [x8, #0xb18]
  10007cc9c  fmov    d2, #2.00000000
  10007cca0  b       _objc_msgSend                            ; [self countFrom:arg1 to:arg2 withDuration:2]

; ======================================================================
; -[UICountingLabel countFrom:to:withDuration:]
; address 0x10007cca4  size 924  kind objc
; ======================================================================
  10007cca4  stp     d11, d10, [sp, #-0x40]!
  10007cca8  stp     d9, d8, [sp, #0x10]
  10007ccac  stp     x20, x19, [sp, #0x20]
  10007ccb0  stp     x29, x30, [sp, #0x30]
  10007ccb4  add     x29, sp, #0x30
  10007ccb8  mov     v8.16b, v2.16b
  10007ccbc  mov     v9.16b, v1.16b
  10007ccc0  mov     v10.16b, v0.16b
  10007ccc4  mov     x19, x0
  10007ccc8  adrp    x8, #0x100419000
  10007cccc  nop
  10007ccd0  ldr     x1, [x8, #0xb20]
  10007ccd4  fmov    s0, #3.00000000
  10007ccd8  bl      _objc_msgSend                            ; [self setEasingRate:3]
  10007ccdc  adrp    x8, #0x100419000
  10007cce0  nop
  10007cce4  ldr     x1, [x8, #0xb28]
  10007cce8  mov     x0, x19
  10007ccec  mov     v0.16b, v10.16b
  10007ccf0  bl      _objc_msgSend                            ; [self setStartingValue:arg1]
  10007ccf4  adrp    x8, #0x100419000
  10007ccf8  nop
  10007ccfc  ldr     x1, [x8, #0xb30]
  10007cd00  mov     x0, x19
  10007cd04  mov     v0.16b, v9.16b
  10007cd08  bl      _objc_msgSend                            ; [self setDestinationValue:arg2]
  10007cd0c  adrp    x8, #0x100418000
  10007cd10  nop
  10007cd14  ldr     x1, [x8, #0x308]
  10007cd18  movi    v0.16b, #0
  10007cd1c  mov     x0, x19
  10007cd20  bl      _objc_msgSend                            ; [self setProgress:0]
  10007cd24  adrp    x8, #0x100419000
  10007cd28  nop
  10007cd2c  ldr     x1, [x8, #0xb38]
  10007cd30  mov     x0, x19
  10007cd34  mov     v0.16b, v8.16b
  10007cd38  bl      _objc_msgSend                            ; [self setTotalTime:arg3]
  10007cd3c  adrp    x8, #0x10041e000
  10007cd40  ldr     x0, [x8, #0x38]                          ; class NSDate
  10007cd44  adrp    x8, #0x100419000
  10007cd48  nop
  10007cd4c  ldr     x1, [x8, #0xb40]
  10007cd50  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  10007cd54  adrp    x8, #0x100419000
  10007cd58  nop
  10007cd5c  ldr     x1, [x8, #0xb48]
  10007cd60  mov     x0, x19
  10007cd64  bl      _objc_msgSend                            ; [self setLastUpdate:[NSDate timeIntervalSinceReferenceDate]]
  10007cd68  adrp    x8, #0x100419000
  10007cd6c  nop
  10007cd70  ldr     x1, [x8, #0xb50]
  10007cd74  mov     x0, x19
  10007cd78  bl      _objc_msgSend                            ; [self format]
  10007cd7c  mov     x29, x29
  10007cd80  bl      _objc_retainAutoreleasedReturnValue
  10007cd84  mov     x20, x0
  10007cd88  bl      _objc_release
  10007cd8c  cbnz    x20, loc_10007cdac                       ; if ([self format] != 0)
  10007cd90  adrp    x8, #0x100419000
  10007cd94  nop
  10007cd98  ldr     x1, [x8, #0xb58]
  10007cd9c  adrp    x2, #0x1003bf000
  10007cda0  add     x2, x2, #0x590                           ; @"%f"
  10007cda4  mov     x0, x19
  10007cda8  bl      _objc_msgSend                            ; [self setFormat:@"%f"]
loc_10007cdac:
  10007cdac  adrp    x8, #0x100419000
  10007cdb0  nop
  10007cdb4  ldr     x1, [x8, #0xb60]
  10007cdb8  mov     x0, x19
  10007cdbc  bl      _objc_msgSend                            ; [self method]
  10007cdc0  cmp     w0, #3
  10007cdc4  b.hi    loc_10007cf10                            ; if ([self method] >u 3)
  10007cdc8  ubfx    x8, x0, #0, #0x20
  10007cdcc  adr     x9, #0x10007d030                         ; 0x10007d030
  10007cdd0  nop
  10007cdd4  ldrsw   x8, [x9, x8, lsl #2]
  10007cdd8  add     x8, x8, x9
  10007cddc  br      x8                                       ; switch ([self method]) { case 0: goto loc_10007cde0; case 1: goto loc_10007ce2c; case 2: goto loc_10007ce78; case 3: goto loc_10007cec4 }
loc_10007cde0:  ; case 0
  10007cde0  adrp    x8, #0x10041e000
  10007cde4  ldr     x0, [x8, #0x2d8]                         ; class UILabelCounterEaseInOut
  10007cde8  adrp    x8, #0x100416000
  10007cdec  nop
  10007cdf0  ldr     x1, [x8, #0xac8]
  10007cdf4  bl      _objc_msgSend                            ; [UILabelCounterEaseInOut alloc]
  10007cdf8  adrp    x8, #0x100416000
  10007cdfc  nop
  10007ce00  ldr     x1, [x8, #0xab8]
  10007ce04  bl      _objc_msgSend                            ; [[UILabelCounterEaseInOut alloc] init]
  10007ce08  mov     x20, x0
  10007ce0c  adrp    x8, #0x100419000
  10007ce10  nop
  10007ce14  ldr     x1, [x8, #0xb68]
  10007ce18  mov     x0, x19
  10007ce1c  mov     x2, x20
  10007ce20  bl      _objc_msgSend                            ; [self setCounter:[[UILabelCounterEaseInOut alloc] init]]
  10007ce24  b       loc_10007cf08
  10007ce28  b       loc_10007cff4
loc_10007ce2c:  ; case 1
  10007ce2c  adrp    x8, #0x10041e000
  10007ce30  ldr     x0, [x8, #0x2c8]                         ; class UILabelCounterEaseIn
  10007ce34  adrp    x8, #0x100416000
  10007ce38  nop
  10007ce3c  ldr     x1, [x8, #0xac8]
  10007ce40  bl      _objc_msgSend                            ; [UILabelCounterEaseIn alloc]
  10007ce44  adrp    x8, #0x100416000
  10007ce48  nop
  10007ce4c  ldr     x1, [x8, #0xab8]
  10007ce50  bl      _objc_msgSend                            ; [[UILabelCounterEaseIn alloc] init]
  10007ce54  mov     x20, x0
  10007ce58  adrp    x8, #0x100419000
  10007ce5c  nop
  10007ce60  ldr     x1, [x8, #0xb68]
  10007ce64  mov     x0, x19
  10007ce68  mov     x2, x20
  10007ce6c  bl      _objc_msgSend                            ; [self setCounter:[[UILabelCounterEaseIn alloc] init]]
  10007ce70  b       loc_10007cf08
  10007ce74  b       loc_10007cff4
loc_10007ce78:  ; case 2
  10007ce78  adrp    x8, #0x10041e000
  10007ce7c  ldr     x0, [x8, #0x2d0]                         ; class UILabelCounterEaseOut
  10007ce80  adrp    x8, #0x100416000
  10007ce84  nop
  10007ce88  ldr     x1, [x8, #0xac8]
  10007ce8c  bl      _objc_msgSend                            ; [UILabelCounterEaseOut alloc]
  10007ce90  adrp    x8, #0x100416000
  10007ce94  nop
  10007ce98  ldr     x1, [x8, #0xab8]
  10007ce9c  bl      _objc_msgSend                            ; [[UILabelCounterEaseOut alloc] init]
  10007cea0  mov     x20, x0
  10007cea4  adrp    x8, #0x100419000
  10007cea8  nop
  10007ceac  ldr     x1, [x8, #0xb68]
  10007ceb0  mov     x0, x19
  10007ceb4  mov     x2, x20
  10007ceb8  bl      _objc_msgSend                            ; [self setCounter:[[UILabelCounterEaseOut alloc] init]]
  10007cebc  b       loc_10007cf08
  10007cec0  b       loc_10007cff4
loc_10007cec4:  ; case 3
  10007cec4  adrp    x8, #0x10041e000
  10007cec8  ldr     x0, [x8, #0x2c0]                         ; class UILabelCounterLinear
  10007cecc  adrp    x8, #0x100416000
  10007ced0  nop
  10007ced4  ldr     x1, [x8, #0xac8]
  10007ced8  bl      _objc_msgSend                            ; [UILabelCounterLinear alloc]
  10007cedc  adrp    x8, #0x100416000
  10007cee0  nop
  10007cee4  ldr     x1, [x8, #0xab8]
  10007cee8  bl      _objc_msgSend                            ; [[UILabelCounterLinear alloc] init]
  10007ceec  mov     x20, x0
  10007cef0  adrp    x8, #0x100419000
  10007cef4  nop
  10007cef8  ldr     x1, [x8, #0xb68]
  10007cefc  mov     x0, x19
  10007cf00  mov     x2, x20
  10007cf04  bl      _objc_msgSend                            ; [self setCounter:[[UILabelCounterLinear alloc] init]]
loc_10007cf08:
  10007cf08  mov     x0, x20
  10007cf0c  bl      _objc_release
loc_10007cf10:
  10007cf10  adrp    x8, #0x100419000
  10007cf14  nop
  10007cf18  ldr     x1, [x8, #0xb70]
  10007cf1c  mov     x0, x19
  10007cf20  bl      _objc_msgSend                            ; [self counter]
  10007cf24  mov     x29, x29
  10007cf28  bl      _objc_retainAutoreleasedReturnValue
  10007cf2c  mov     x20, x0
  10007cf30  adrp    x8, #0x100419000
  10007cf34  nop
  10007cf38  ldr     x1, [x8, #0xb78]
  10007cf3c  fmov    s0, #3.00000000
  10007cf40  bl      _objc_msgSend                            ; [[self counter] setRate:3]
  10007cf44  mov     x0, x20
  10007cf48  bl      _objc_release
  10007cf4c  adrp    x8, #0x10041e000
  10007cf50  ldr     x0, [x8, #0x30]                          ; class NSTimer
  10007cf54  adrp    x8, #0x100419000
  10007cf58  nop
  10007cf5c  ldr     x3, [x8, #0xb80]
  10007cf60  adrp    x8, #0x100419000
  10007cf64  nop
  10007cf68  ldr     x1, [x8, #0x870]
  10007cf6c  adrp    x8, #0x100181000
  10007cf70  ldr     d0, [x8, #0xcb8]                         ; d0 = 0.0333333351
  10007cf74  mov     w5, #1
  10007cf78  mov     x2, x19
  10007cf7c  mov     x4, #0
  10007cf80  bl      _objc_msgSend                            ; [NSTimer timerWithTimeInterval:0.0333333 target:self selector:@selector(updateValue:) userInfo:0 repeats:1]
  10007cf84  mov     x29, x29
  10007cf88  bl      _objc_retainAutoreleasedReturnValue
  10007cf8c  mov     x19, x0
  10007cf90  adrp    x8, #0x10041e000
  10007cf94  ldr     x0, [x8, #0x40]                          ; class NSRunLoop
  10007cf98  adrp    x8, #0x100417000
  10007cf9c  nop
  10007cfa0  ldr     x1, [x8, #0x718]
  10007cfa4  bl      _objc_msgSend                            ; [NSRunLoop mainRunLoop]
  10007cfa8  mov     x29, x29
  10007cfac  bl      _objc_retainAutoreleasedReturnValue
  10007cfb0  mov     x20, x0
  10007cfb4  adrp    x8, #0x1003b0000
  10007cfb8  ldr     x8, [x8, #0x80]                          ; _NSRunLoopCommonModes
  10007cfbc  ldr     x3, [x8]                                 ; x3 = _NSRunLoopCommonModes[+0x0]
  10007cfc0  adrp    x8, #0x100417000
  10007cfc4  nop
  10007cfc8  ldr     x1, [x8, #0x728]
  10007cfcc  mov     x2, x19
  10007cfd0  bl      _objc_msgSend                            ; [[NSRunLoop mainRunLoop] addTimer:[NSTimer timerWithTimeInterval:0.0333333 target:self selector:@selector(updateValue:) userInfo:0 repeats:1] forMode:_NSRunLoopCommonModes[+0x0]]
  10007cfd4  mov     x0, x20
  10007cfd8  bl      _objc_release
  10007cfdc  mov     x0, x19
  10007cfe0  ldp     x29, x30, [sp, #0x30]
  10007cfe4  ldp     x20, x19, [sp, #0x20]
  10007cfe8  ldp     d9, d8, [sp, #0x10]
  10007cfec  ldp     d11, d10, [sp], #0x40
  10007cff0  b       _objc_release
loc_10007cff4:
  10007cff4  mov     x1, x20
  10007cff8  mov     x20, x0
  10007cffc  mov     x0, x1
  10007d000  b       loc_10007d020
  10007d004  mov     x20, x0
  10007d008  b       loc_10007d01c
  10007d00c  mov     x1, x20
  10007d010  mov     x20, x0
  10007d014  mov     x0, x1
  10007d018  bl      _objc_release
loc_10007d01c:
  10007d01c  mov     x0, x19
loc_10007d020:
  10007d020  bl      _objc_release
  10007d024  mov     x0, x20
  10007d028  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007d02c  b       loc_10007cff4
  10007d030  .word   jump table of 10007cddc, case 0 -> loc_10007cde0
  10007d034  .word   jump table of 10007cddc, case 1 -> loc_10007ce2c
  10007d038  .word   jump table of 10007cddc, case 2 -> loc_10007ce78
  10007d03c  .word   jump table of 10007cddc, case 3 -> loc_10007cec4

; ======================================================================
; -[UICountingLabel updateValue:]
; address 0x10007d040  size 1252  kind objc
; ======================================================================
  10007d040  stp     d11, d10, [sp, #-0x70]!
  10007d044  stp     d9, d8, [sp, #0x10]
  10007d048  stp     x26, x25, [sp, #0x20]
  10007d04c  stp     x24, x23, [sp, #0x30]
  10007d050  stp     x22, x21, [sp, #0x40]
  10007d054  stp     x20, x19, [sp, #0x50]
  10007d058  stp     x29, x30, [sp, #0x60]
  10007d05c  add     x29, sp, #0x60
  10007d060  sub     sp, sp, #0x10
  10007d064  mov     x20, x0
  10007d068  mov     x0, x2
  10007d06c  bl      _objc_retain
  10007d070  mov     x19, x0
  10007d074  adrp    x8, #0x10041e000
  10007d078  ldr     x0, [x8, #0x38]                          ; class NSDate
  10007d07c  adrp    x8, #0x100419000
  10007d080  nop
  10007d084  ldr     x1, [x8, #0xb40]
  10007d088  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  10007d08c  mov     v8.16b, v0.16b
  10007d090  adrp    x8, #0x100419000
  10007d094  nop
  10007d098  ldr     x1, [x8, #0xb88]
  10007d09c  mov     x0, x20
  10007d0a0  bl      _objc_msgSend                            ; [self lastUpdate]
  10007d0a4  mov     v9.16b, v0.16b
  10007d0a8  adrp    x8, #0x100418000
  10007d0ac  nop
  10007d0b0  ldr     x21, [x8, #0x370]
  10007d0b4  mov     x0, x20
  10007d0b8  mov     x1, x21
  10007d0bc  bl      _objc_msgSend                            ; [self progress]
  10007d0c0  fsub    d1, d8, d9
  10007d0c4  fadd    d0, d1, d0
  10007d0c8  adrp    x8, #0x100418000
  10007d0cc  nop
  10007d0d0  ldr     x23, [x8, #0x308]
  10007d0d4  mov     x0, x20
  10007d0d8  mov     x1, x23
  10007d0dc  bl      _objc_msgSend                            ; [self setProgress:(([NSDate timeIntervalSinceReferenceDate] - [self lastUpdate]) + [self progress])]
  10007d0e0  adrp    x8, #0x100419000
  10007d0e4  nop
  10007d0e8  ldr     x1, [x8, #0xb48]
  10007d0ec  mov     x0, x20
  10007d0f0  mov     v0.16b, v8.16b
  10007d0f4  bl      _objc_msgSend                            ; [self setLastUpdate:[NSDate timeIntervalSinceReferenceDate]]
  10007d0f8  mov     x0, x20
  10007d0fc  mov     x1, x21
  10007d100  bl      _objc_msgSend                            ; [self progress]
  10007d104  mov     v8.16b, v0.16b
  10007d108  adrp    x8, #0x100419000
  10007d10c  nop
  10007d110  ldr     x22, [x8, #0xb90]
  10007d114  mov     x0, x20
  10007d118  mov     x1, x22
  10007d11c  bl      _objc_msgSend                            ; [self totalTime]
  10007d120  fcmp    d8, d0
  10007d124  b.lt    loc_10007d154                            ; if ([self progress] < (or unordered) [self totalTime])
  10007d128  adrp    x8, #0x100417000
  10007d12c  nop
  10007d130  ldr     x1, [x8, #0x730]
  10007d134  mov     x0, x19
  10007d138  bl      _objc_msgSend                            ; [arg1 invalidate]
  10007d13c  mov     x0, x20
  10007d140  mov     x1, x22
  10007d144  bl      _objc_msgSend                            ; [self totalTime]
  10007d148  mov     x0, x20
  10007d14c  mov     x1, x23
  10007d150  bl      _objc_msgSend                            ; [self setProgress:[self totalTime]]
loc_10007d154:
  10007d154  mov     x0, x20
  10007d158  mov     x1, x21
  10007d15c  bl      _objc_msgSend                            ; [self progress]
  10007d160  mov     v8.16b, v0.16b
  10007d164  mov     x0, x20
  10007d168  mov     x1, x22
  10007d16c  bl      _objc_msgSend                            ; [self totalTime]
  10007d170  mov     v9.16b, v0.16b
  10007d174  adrp    x8, #0x100419000
  10007d178  nop
  10007d17c  ldr     x1, [x8, #0xb70]
  10007d180  mov     x0, x20
  10007d184  bl      _objc_msgSend                            ; [self counter]
  10007d188  fdiv    d0, d8, d9
  10007d18c  fcvt    s0, d0
  10007d190  adrp    x8, #0x100419000
  10007d194  nop
  10007d198  ldr     x1, [x8, #0x68]
  10007d19c  bl      _objc_msgSend                            ; [[self counter] update:([self progress] / [self totalTime])]
  10007d1a0  mov     v8.16b, v0.16b
  10007d1a4  adrp    x8, #0x100419000
  10007d1a8  nop
  10007d1ac  ldr     x23, [x8, #0xb98]
  10007d1b0  mov     x0, x20
  10007d1b4  mov     x1, x23
  10007d1b8  bl      _objc_msgSend                            ; [self startingValue]
  10007d1bc  mov     v9.16b, v0.16b
  10007d1c0  adrp    x8, #0x100419000
  10007d1c4  nop
  10007d1c8  ldr     x1, [x8, #0xba0]
  10007d1cc  mov     x0, x20
  10007d1d0  bl      _objc_msgSend                            ; [self destinationValue]
  10007d1d4  mov     v10.16b, v0.16b
  10007d1d8  mov     x0, x20
  10007d1dc  mov     x1, x23
  10007d1e0  bl      _objc_msgSend                            ; [self startingValue]
  10007d1e4  mov     v11.16b, v0.16b
  10007d1e8  adrp    x8, #0x100419000
  10007d1ec  nop
  10007d1f0  ldr     x23, [x8, #0xba8]
  10007d1f4  mov     x0, x20
  10007d1f8  mov     x1, x23
  10007d1fc  bl      _objc_msgSend                            ; [self formatBlock]
  10007d200  fsub    s0, s10, s11
  10007d204  fmul    s0, s8, s0
  10007d208  fadd    s8, s9, s0
  10007d20c  mov     x29, x29
  10007d210  bl      _objc_retainAutoreleasedReturnValue
  10007d214  mov     x24, x0
  10007d218  bl      _objc_release
  10007d21c  cbz     x24, loc_10007d270                       ; if ([self formatBlock] == 0)
  10007d220  mov     x0, x20
  10007d224  mov     x1, x23
  10007d228  bl      _objc_msgSend                            ; [self formatBlock]
  10007d22c  mov     x29, x29
  10007d230  bl      _objc_retainAutoreleasedReturnValue
  10007d234  mov     x23, x0
  10007d238  ldr     x8, [x23, #0x10]                         ; x8 = [self formatBlock][+0x10]
  10007d23c  mov     v0.16b, v8.16b
  10007d240  blr     x8                                       ; call [self formatBlock][+0x10]
  10007d244  mov     x29, x29
  10007d248  bl      _objc_retainAutoreleasedReturnValue
  10007d24c  mov     x24, x0
  10007d250  adrp    x8, #0x100416000
  10007d254  nop
  10007d258  ldr     x1, [x8, #0xb68]
  10007d25c  mov     x0, x20
  10007d260  mov     x2, x24
  10007d264  bl      _objc_msgSend                            ; [self setText:[self formatBlock][+0x10](…)]
  10007d268  b       loc_10007d3e4
  10007d26c  b       loc_10007d4ec
loc_10007d270:
  10007d270  adrp    x8, #0x100419000
  10007d274  nop
  10007d278  ldr     x23, [x8, #0xb50]
  10007d27c  mov     x0, x20
  10007d280  mov     x1, x23
  10007d284  bl      _objc_msgSend                            ; [self format]
  10007d288  mov     x29, x29
  10007d28c  bl      _objc_retainAutoreleasedReturnValue
  10007d290  mov     x24, x0
  10007d294  adrp    x8, #0x100419000
  10007d298  nop
  10007d29c  ldr     x1, [x8, #0xbb0]
  10007d2a0  adrp    x2, #0x1003bf000
  10007d2a4  add     x2, x2, #0x5b0                           ; @"%(.*)d"
  10007d2a8  mov     w3, #0x400
  10007d2ac  bl      _objc_msgSend                            ; [[self format] rangeOfString:@"%(.*)d" options:1024]
  10007d2b0  mov     x8, #0x7fffffffffffffff
  10007d2b4  cmp     x0, x8
  10007d2b8  b.ne    loc_10007d378                            ; if ([[self format] rangeOfString:@"%(.*)d" options:1024] != 0x7fffffffffffffff)
  10007d2bc  mov     x0, x20
  10007d2c0  mov     x1, x23
  10007d2c4  bl      _objc_msgSend                            ; [self format]
  10007d2c8  mov     x29, x29
  10007d2cc  bl      _objc_retainAutoreleasedReturnValue
  10007d2d0  mov     x25, x0
  10007d2d4  adrp    x8, #0x100417000
  10007d2d8  nop
  10007d2dc  ldr     x1, [x8, #0x58]
  10007d2e0  adrp    x2, #0x1003bf000
  10007d2e4  add     x2, x2, #0x5d0                           ; @"%(.*)i"
  10007d2e8  bl      _objc_msgSend                            ; [[self format] rangeOfString:@"%(.*)i"]
  10007d2ec  mov     x26, x0
  10007d2f0  mov     x0, x25
  10007d2f4  bl      _objc_release
  10007d2f8  mov     x0, x24
  10007d2fc  bl      _objc_release
  10007d300  adrp    x8, #0x10041d000
  10007d304  ldr     x24, [x8, #0xf78]                        ; class NSString
  10007d308  mov     x8, #0x7fffffffffffffff
  10007d30c  cmp     x26, x8
  10007d310  b.ne    loc_10007d388                            ; if ([[self format] rangeOfString:@"%(.*)i"] != 0x7fffffffffffffff)
  10007d314  mov     x0, x20
  10007d318  mov     x1, x23
  10007d31c  bl      _objc_msgSend                            ; [self format]
  10007d320  mov     x29, x29
  10007d324  bl      _objc_retainAutoreleasedReturnValue
  10007d328  mov     x23, x0
  10007d32c  fcvt    d0, s8
  10007d330  adrp    x8, #0x100416000
  10007d334  nop
  10007d338  ldr     x1, [x8, #0xee8]
  10007d33c  str     d0, [sp]
  10007d340  mov     x0, x24
  10007d344  mov     x2, x23
  10007d348  bl      _objc_msgSend                            ; [NSString stringWithFormat:[self format]]
  10007d34c  mov     x29, x29
  10007d350  bl      _objc_retainAutoreleasedReturnValue
  10007d354  mov     x24, x0
  10007d358  adrp    x8, #0x100416000
  10007d35c  nop
  10007d360  ldr     x1, [x8, #0xb68]
  10007d364  mov     x0, x20
  10007d368  mov     x2, x24
  10007d36c  bl      _objc_msgSend                            ; [self setText:[NSString stringWithFormat:[self format]]]
  10007d370  b       loc_10007d3e4
  10007d374  b       loc_10007d4ec
loc_10007d378:
  10007d378  mov     x0, x24
  10007d37c  bl      _objc_release
  10007d380  adrp    x8, #0x10041d000
  10007d384  ldr     x24, [x8, #0xf78]                        ; class NSString
loc_10007d388:
  10007d388  mov     x0, x20
  10007d38c  mov     x1, x23
  10007d390  bl      _objc_msgSend                            ; [self format]
  10007d394  mov     x29, x29
  10007d398  bl      _objc_retainAutoreleasedReturnValue
  10007d39c  mov     x23, x0
  10007d3a0  fcvtzs  w8, s8
  10007d3a4  adrp    x9, #0x100416000
  10007d3a8  nop
  10007d3ac  ldr     x1, [x9, #0xee8]
  10007d3b0  str     x8, [sp]
  10007d3b4  mov     x0, x24
  10007d3b8  mov     x2, x23
  10007d3bc  bl      _objc_msgSend                            ; [NSString stringWithFormat:[self format]]
  10007d3c0  mov     x29, x29
  10007d3c4  bl      _objc_retainAutoreleasedReturnValue
  10007d3c8  mov     x24, x0
  10007d3cc  adrp    x8, #0x100416000
  10007d3d0  nop
  10007d3d4  ldr     x1, [x8, #0xb68]
  10007d3d8  mov     x0, x20
  10007d3dc  mov     x2, x24
  10007d3e0  bl      _objc_msgSend                            ; [self setText:[NSString stringWithFormat:[self format]]]
loc_10007d3e4:
  10007d3e4  mov     x0, x24
  10007d3e8  bl      _objc_release
  10007d3ec  mov     x0, x23
  10007d3f0  bl      _objc_release
  10007d3f4  mov     x0, x20
  10007d3f8  mov     x1, x21
  10007d3fc  bl      _objc_msgSend                            ; [self progress]
  10007d400  mov     v8.16b, v0.16b
  10007d404  mov     x0, x20
  10007d408  mov     x1, x22
  10007d40c  bl      _objc_msgSend                            ; [self totalTime]
  10007d410  fcmp    d8, d0
  10007d414  b.ne    loc_10007d484                            ; if ([self progress] != [self totalTime])
  10007d418  adrp    x8, #0x100418000
  10007d41c  nop
  10007d420  ldr     x21, [x8, #0x1e0]
  10007d424  mov     x0, x20
  10007d428  mov     x1, x21
  10007d42c  bl      _objc_msgSend                            ; [self completionBlock]
  10007d430  mov     x29, x29
  10007d434  bl      _objc_retainAutoreleasedReturnValue
  10007d438  mov     x22, x0
  10007d43c  bl      _objc_release
  10007d440  cbz     x22, loc_10007d484                       ; if ([self completionBlock] == 0)
  10007d444  mov     x0, x20
  10007d448  mov     x1, x21
  10007d44c  bl      _objc_msgSend                            ; [self completionBlock]
  10007d450  mov     x29, x29
  10007d454  bl      _objc_retainAutoreleasedReturnValue
  10007d458  mov     x21, x0
  10007d45c  ldr     x8, [x21, #0x10]                         ; x8 = [self completionBlock][+0x10]
  10007d460  blr     x8                                       ; call [self completionBlock][+0x10]
  10007d464  mov     x0, x21
  10007d468  bl      _objc_release
  10007d46c  adrp    x8, #0x100418000
  10007d470  nop
  10007d474  ldr     x1, [x8, #0x1e8]
  10007d478  mov     x2, #0
  10007d47c  mov     x0, x20
  10007d480  bl      _objc_msgSend                            ; [self setCompletionBlock:0]
loc_10007d484:
  10007d484  mov     x0, x19
  10007d488  sub     sp, x29, #0x60
  10007d48c  ldp     x29, x30, [sp, #0x60]
  10007d490  ldp     x20, x19, [sp, #0x50]
  10007d494  ldp     x22, x21, [sp, #0x40]
  10007d498  ldp     x24, x23, [sp, #0x30]
  10007d49c  ldp     x26, x25, [sp, #0x20]
  10007d4a0  ldp     d9, d8, [sp, #0x10]
  10007d4a4  ldp     d11, d10, [sp], #0x70
  10007d4a8  b       _objc_release
loc_10007d4ac:
  10007d4ac  mov     x20, x0
loc_10007d4b0:
  10007d4b0  mov     x0, x19
  10007d4b4  bl      _objc_release
  10007d4b8  mov     x0, x20
  10007d4bc  bl      __Unwind_Resume                          ; Unwind_Resume()
  10007d4c0  b       loc_10007d4ac
  10007d4c4  mov     x20, x0
  10007d4c8  b       loc_10007d4f8
  10007d4cc  mov     x20, x0
  10007d4d0  b       loc_10007d510
  10007d4d4  mov     x20, x0
  10007d4d8  mov     x0, x21
  10007d4dc  bl      _objc_release
  10007d4e0  b       loc_10007d4b0
  10007d4e4  mov     x20, x0
  10007d4e8  b       loc_10007d4f8
loc_10007d4ec:
  10007d4ec  mov     x20, x0
  10007d4f0  mov     x0, x24
  10007d4f4  bl      _objc_release
loc_10007d4f8:
  10007d4f8  mov     x0, x23
  10007d4fc  bl      _objc_release
  10007d500  b       loc_10007d4b0
  10007d504  mov     x20, x0
  10007d508  mov     x0, x25
  10007d50c  bl      _objc_release
loc_10007d510:
  10007d510  mov     x0, x24
  10007d514  bl      _objc_release
  10007d518  b       loc_10007d4b0
  10007d51c  mov     x20, x0
  10007d520  b       loc_10007d4f8

; ======================================================================
; -[UICountingLabel format]
; address 0x10007d524  size 16  kind objc
; ======================================================================
  10007d524  adrp    x8, #0x10041f000
  10007d528  ldrsw   x8, [x8, #0xe00]                         ; ivar offset UICountingLabel._format (+0x78)
  10007d52c  ldr     x0, [x0, x8]                             ; x0 = self->_format
  10007d530  ret

; ======================================================================
; -[UICountingLabel setFormat:]
; address 0x10007d534  size 56  kind objc
; ======================================================================
  10007d534  stp     x20, x19, [sp, #-0x20]!
  10007d538  stp     x29, x30, [sp, #0x10]
  10007d53c  add     x29, sp, #0x10
  10007d540  mov     x19, x0
  10007d544  adrp    x8, #0x10041f000
  10007d548  ldrsw   x20, [x8, #0xe00]                        ; ivar offset UICountingLabel._format (+0x78)
  10007d54c  mov     x0, x2
  10007d550  bl      _objc_retain
  10007d554  ldr     x8, [x19, x20]                           ; x8 = self->_format
  10007d558  str     x0, [x19, x20]                           ; self->_format = arg1
  10007d55c  mov     x0, x8
  10007d560  ldp     x29, x30, [sp, #0x10]
  10007d564  ldp     x20, x19, [sp], #0x20
  10007d568  b       _objc_release

; ======================================================================
; -[UICountingLabel method]
; address 0x10007d56c  size 16  kind objc
; ======================================================================
  10007d56c  adrp    x8, #0x10041f000
  10007d570  ldrsw   x8, [x8, #0xe04]                         ; ivar offset UICountingLabel._method (+0x68)
  10007d574  ldr     w0, [x0, x8]                             ; w0 = self->_method
  10007d578  ret

; ======================================================================
; -[UICountingLabel setMethod:]
; address 0x10007d57c  size 16  kind objc
; ======================================================================
  10007d57c  adrp    x8, #0x10041f000
  10007d580  ldrsw   x8, [x8, #0xe04]                         ; ivar offset UICountingLabel._method (+0x68)
  10007d584  str     w2, [x0, x8]                             ; self->_method = arg1
  10007d588  ret

; ======================================================================
; -[UICountingLabel formatBlock]
; address 0x10007d58c  size 16  kind objc
; ======================================================================
  10007d58c  mov     w3, #0
  10007d590  adrp    x8, #0x10041f000
  10007d594  ldrsw   x2, [x8, #0xe08]                         ; ivar offset UICountingLabel._formatBlock (+0x80)
  10007d598  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[UICountingLabel setFormatBlock:]
; address 0x10007d59c  size 12  kind objc
; ======================================================================
  10007d59c  adrp    x8, #0x10041f000
  10007d5a0  ldrsw   x3, [x8, #0xe08]                         ; ivar offset UICountingLabel._formatBlock (+0x80)
  10007d5a4  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[UICountingLabel completionBlock]
; address 0x10007d5a8  size 16  kind objc
; ======================================================================
  10007d5a8  mov     w3, #0
  10007d5ac  adrp    x8, #0x10041f000
  10007d5b0  ldrsw   x2, [x8, #0xe0c]                         ; ivar offset UICountingLabel._completionBlock (+0x88)
  10007d5b4  b       _objc_getProperty                        ; objc_getProperty(self, _cmd, x2, 0)

; ======================================================================
; -[UICountingLabel setCompletionBlock:]
; address 0x10007d5b8  size 12  kind objc
; ======================================================================
  10007d5b8  adrp    x8, #0x10041f000
  10007d5bc  ldrsw   x3, [x8, #0xe0c]                         ; ivar offset UICountingLabel._completionBlock (+0x88)
  10007d5c0  b       _objc_setProperty_nonatomic_copy         ; objc_setProperty_nonatomic_copy(self, _cmd, arg1, x3)

; ======================================================================
; -[UICountingLabel startingValue]
; address 0x10007d5c4  size 20  kind objc
; ======================================================================
  10007d5c4  adrp    x8, #0x10041f000
  10007d5c8  ldrsw   x8, [x8, #0xe10]                         ; ivar offset UICountingLabel._startingValue (+0x6c)
  10007d5cc  ldr     w8, [x0, x8]                             ; w8 = self->_startingValue
  10007d5d0  fmov    s0, w8
  10007d5d4  ret

; ======================================================================
; -[UICountingLabel setStartingValue:]
; address 0x10007d5d8  size 20  kind objc
; ======================================================================
  10007d5d8  fmov    w8, s0
  10007d5dc  adrp    x9, #0x10041f000
  10007d5e0  ldrsw   x9, [x9, #0xe10]                         ; ivar offset UICountingLabel._startingValue (+0x6c)
  10007d5e4  str     w8, [x0, x9]                             ; self->_startingValue = arg1
  10007d5e8  ret

; ======================================================================
; -[UICountingLabel destinationValue]
; address 0x10007d5ec  size 20  kind objc
; ======================================================================
  10007d5ec  adrp    x8, #0x10041f000
  10007d5f0  ldrsw   x8, [x8, #0xe14]                         ; ivar offset UICountingLabel._destinationValue (+0x70)
  10007d5f4  ldr     w8, [x0, x8]                             ; w8 = self->_destinationValue
  10007d5f8  fmov    s0, w8
  10007d5fc  ret

; ======================================================================
; -[UICountingLabel setDestinationValue:]
; address 0x10007d600  size 20  kind objc
; ======================================================================
  10007d600  fmov    w8, s0
  10007d604  adrp    x9, #0x10041f000
  10007d608  ldrsw   x9, [x9, #0xe14]                         ; ivar offset UICountingLabel._destinationValue (+0x70)
  10007d60c  str     w8, [x0, x9]                             ; self->_destinationValue = arg1
  10007d610  ret

; ======================================================================
; -[UICountingLabel progress]
; address 0x10007d614  size 20  kind objc
; ======================================================================
  10007d614  adrp    x8, #0x10041f000
  10007d618  ldrsw   x8, [x8, #0xe18]                         ; ivar offset UICountingLabel._progress (+0x90)
  10007d61c  ldr     x8, [x0, x8]                             ; x8 = self->_progress
  10007d620  fmov    d0, x8
  10007d624  ret

; ======================================================================
; -[UICountingLabel setProgress:]
; address 0x10007d628  size 20  kind objc
; ======================================================================
  10007d628  fmov    x8, d0
  10007d62c  adrp    x9, #0x10041f000
  10007d630  ldrsw   x9, [x9, #0xe18]                         ; ivar offset UICountingLabel._progress (+0x90)
  10007d634  str     x8, [x0, x9]                             ; self->_progress = arg1
  10007d638  ret

; ======================================================================
; -[UICountingLabel lastUpdate]
; address 0x10007d63c  size 20  kind objc
; ======================================================================
  10007d63c  adrp    x8, #0x10041f000
  10007d640  ldrsw   x8, [x8, #0xe1c]                         ; ivar offset UICountingLabel._lastUpdate (+0x98)
  10007d644  ldr     x8, [x0, x8]                             ; x8 = self->_lastUpdate
  10007d648  fmov    d0, x8
  10007d64c  ret

; ======================================================================
; -[UICountingLabel setLastUpdate:]
; address 0x10007d650  size 20  kind objc
; ======================================================================
  10007d650  fmov    x8, d0
  10007d654  adrp    x9, #0x10041f000
  10007d658  ldrsw   x9, [x9, #0xe1c]                         ; ivar offset UICountingLabel._lastUpdate (+0x98)
  10007d65c  str     x8, [x0, x9]                             ; self->_lastUpdate = arg1
  10007d660  ret

; ======================================================================
; -[UICountingLabel totalTime]
; address 0x10007d664  size 20  kind objc
; ======================================================================
  10007d664  adrp    x8, #0x10041f000
  10007d668  ldrsw   x8, [x8, #0xe20]                         ; ivar offset UICountingLabel._totalTime (+0xa0)
  10007d66c  ldr     x8, [x0, x8]                             ; x8 = self->_totalTime
  10007d670  fmov    d0, x8
  10007d674  ret

; ======================================================================
; -[UICountingLabel setTotalTime:]
; address 0x10007d678  size 20  kind objc
; ======================================================================
  10007d678  fmov    x8, d0
  10007d67c  adrp    x9, #0x10041f000
  10007d680  ldrsw   x9, [x9, #0xe20]                         ; ivar offset UICountingLabel._totalTime (+0xa0)
  10007d684  str     x8, [x0, x9]                             ; self->_totalTime = arg1
  10007d688  ret

; ======================================================================
; -[UICountingLabel easingRate]
; address 0x10007d68c  size 20  kind objc
; ======================================================================
  10007d68c  adrp    x8, #0x10041f000
  10007d690  ldrsw   x8, [x8, #0xe24]                         ; ivar offset UICountingLabel._easingRate (+0x74)
  10007d694  ldr     w8, [x0, x8]                             ; w8 = self->_easingRate
  10007d698  fmov    s0, w8
  10007d69c  ret

; ======================================================================
; -[UICountingLabel setEasingRate:]
; address 0x10007d6a0  size 20  kind objc
; ======================================================================
  10007d6a0  fmov    w8, s0
  10007d6a4  adrp    x9, #0x10041f000
  10007d6a8  ldrsw   x9, [x9, #0xe24]                         ; ivar offset UICountingLabel._easingRate (+0x74)
  10007d6ac  str     w8, [x0, x9]                             ; self->_easingRate = arg1
  10007d6b0  ret

; ======================================================================
; -[UICountingLabel counter]
; address 0x10007d6b4  size 16  kind objc
; ======================================================================
  10007d6b4  adrp    x8, #0x10041f000
  10007d6b8  ldrsw   x8, [x8, #0xe28]                         ; ivar offset UICountingLabel._counter (+0xa8)
  10007d6bc  ldr     x0, [x0, x8]                             ; x0 = self->_counter
  10007d6c0  ret

; ======================================================================
; -[UICountingLabel setCounter:]
; address 0x10007d6c4  size 56  kind objc
; ======================================================================
  10007d6c4  stp     x20, x19, [sp, #-0x20]!
  10007d6c8  stp     x29, x30, [sp, #0x10]
  10007d6cc  add     x29, sp, #0x10
  10007d6d0  mov     x19, x0
  10007d6d4  adrp    x8, #0x10041f000
  10007d6d8  ldrsw   x20, [x8, #0xe28]                        ; ivar offset UICountingLabel._counter (+0xa8)
  10007d6dc  mov     x0, x2
  10007d6e0  bl      _objc_retain
  10007d6e4  ldr     x8, [x19, x20]                           ; x8 = self->_counter
  10007d6e8  str     x0, [x19, x20]                           ; self->_counter = arg1
  10007d6ec  mov     x0, x8
  10007d6f0  ldp     x29, x30, [sp, #0x10]
  10007d6f4  ldp     x20, x19, [sp], #0x20
  10007d6f8  b       _objc_release

; ======================================================================
; -[UICountingLabel .cxx_destruct]
; address 0x10007d6fc  size 104  kind objc
; ======================================================================
  10007d6fc  stp     x20, x19, [sp, #-0x20]!
  10007d700  stp     x29, x30, [sp, #0x10]
  10007d704  add     x29, sp, #0x10
  10007d708  mov     x19, x0
  10007d70c  adrp    x8, #0x10041f000
  10007d710  ldrsw   x8, [x8, #0xe28]                         ; ivar offset UICountingLabel._counter (+0xa8)
  10007d714  add     x0, x19, x8
  10007d718  mov     x1, #0
  10007d71c  bl      _objc_storeStrong
  10007d720  adrp    x8, #0x10041f000
  10007d724  ldrsw   x8, [x8, #0xe0c]                         ; ivar offset UICountingLabel._completionBlock (+0x88)
  10007d728  add     x0, x19, x8
  10007d72c  mov     x1, #0
  10007d730  bl      _objc_storeStrong
  10007d734  adrp    x8, #0x10041f000
  10007d738  ldrsw   x8, [x8, #0xe08]                         ; ivar offset UICountingLabel._formatBlock (+0x80)
  10007d73c  add     x0, x19, x8
  10007d740  mov     x1, #0
  10007d744  bl      _objc_storeStrong
  10007d748  mov     x1, #0
  10007d74c  adrp    x8, #0x10041f000
  10007d750  ldrsw   x8, [x8, #0xe00]                         ; ivar offset UICountingLabel._format (+0x78)
  10007d754  add     x0, x19, x8
  10007d758  ldp     x29, x30, [sp, #0x10]
  10007d75c  ldp     x20, x19, [sp], #0x20
  10007d760  b       _objc_storeStrong
