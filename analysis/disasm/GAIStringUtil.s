// unit GAIStringUtil — 12 functions
//   0x10011f014     136  +[GAIStringUtil urlParams:]
//   0x10011f09c     128  -[GAIStringUtil init]
//   0x10011f11c      72  +[GAIStringUtil trim:]
//   0x10011f164      60  +[GAIStringUtil intString:]
//   0x10011f1a0      60  +[GAIStringUtil uintString:]
//   0x10011f1dc     264  +[GAIStringUtil decimalString:decimals:]
//   0x10011f2e4     424  +[GAIStringUtil currencyMicrosString:]
//   0x10011f48c     120  +[GAIStringUtil percentEncode:]
//   0x10011f504      72  +[GAIStringUtil percentDecode:]
//   0x10011f54c     604  +[GAIStringUtil decodeParametersFromQuery:]
//   0x10011f7a8     208  +[GAIStringUtil decodeParametersFromUrl:]
//   0x10011f878      96  +[GAIStringUtil stripLeadingAmpersand:]

; ======================================================================
; +[GAIStringUtil urlParams:]
; address 0x10011f014  size 136  kind objc
; ======================================================================
  10011f014  stp     x29, x30, [sp, #-0x10]!
  10011f018  mov     x29, sp
  10011f01c  stp     x20, x19, [sp, #-0x10]!
  10011f020  mov     x19, x2
  10011f024  adrp    x8, #0x100417000
  10011f028  nop
  10011f02c  ldr     x1, [x8, #0x58]
  10011f030  adrp    x2, #0x1003c5000
  10011f034  add     x2, x2, #0x1b0                           ; @"?"
  10011f038  mov     x0, x19
  10011f03c  bl      _objc_msgSend                            ; [arg1 rangeOfString:@"?"]
  10011f040  mov     x20, x0
  10011f044  adrp    x8, #0x100417000
  10011f048  nop
  10011f04c  ldr     x1, [x8, #0xc58]
  10011f050  mov     x0, x19
  10011f054  bl      _objc_msgSend                            ; [arg1 length]
  10011f058  add     x2, x20, #1
  10011f05c  cmp     x0, x2
  10011f060  mov     x8, #0x7fffffffffffffff
  10011f064  ccmp    x20, x8, #4, hs
  10011f068  b.ne    loc_10011f080                            ; if (flags !=)
  10011f06c  adrp    x0, #0x1003b9000
  10011f070  add     x0, x0, #0x870                           ; @""
  10011f074  ldp     x20, x19, [sp], #0x10
  10011f078  ldp     x29, x30, [sp], #0x10
  10011f07c  ret
loc_10011f080:
  10011f080  adrp    x8, #0x10041c000
  10011f084  nop
  10011f088  ldr     x1, [x8, #0x110]
  10011f08c  mov     x0, x19
  10011f090  ldp     x20, x19, [sp], #0x10
  10011f094  ldp     x29, x30, [sp], #0x10
  10011f098  b       _objc_msgSend                            ; [arg1 substringFromIndex:([arg1 rangeOfString:@"?"] + 1)]

; ======================================================================
; -[GAIStringUtil init]
; address 0x10011f09c  size 128  kind objc
; ======================================================================
  10011f09c  stp     x29, x30, [sp, #-0x10]!
  10011f0a0  mov     x29, sp
  10011f0a4  stp     x20, x19, [sp, #-0x10]!
  10011f0a8  sub     sp, sp, #0x10
  10011f0ac  mov     x19, x1
  10011f0b0  str     x0, [sp]
  10011f0b4  adrp    x8, #0x10041f000
  10011f0b8  ldr     x8, [x8, #0x100]
  10011f0bc  str     x8, [sp, #8]
  10011f0c0  adrp    x8, #0x100416000
  10011f0c4  nop
  10011f0c8  ldr     x1, [x8, #0xab8]
  10011f0cc  mov     x0, sp
  10011f0d0  bl      _objc_msgSendSuper2                      ; [super init]
  10011f0d4  mov     x20, x0
  10011f0d8  cbz     x20, loc_10011f108                       ; if (self == 0)
  10011f0dc  adrp    x8, #0x10041b000
  10011f0e0  nop
  10011f0e4  ldr     x1, [x8, #0xd68]
  10011f0e8  mov     x0, x20
  10011f0ec  mov     x2, x19
  10011f0f0  bl      _objc_msgSend                            ; [self doesNotRecognizeSelector:_cmd]
  10011f0f4  adrp    x8, #0x10041b000
  10011f0f8  nop
  10011f0fc  ldr     x1, [x8, #0xd70]
  10011f100  mov     x0, x20
  10011f104  bl      _objc_msgSend                            ; [self release]
loc_10011f108:
  10011f108  mov     x0, #0
  10011f10c  sub     sp, x29, #0x10
  10011f110  ldp     x20, x19, [sp], #0x10
  10011f114  ldp     x29, x30, [sp], #0x10
  10011f118  ret

; ======================================================================
; +[GAIStringUtil trim:]
; address 0x10011f11c  size 72  kind objc
; ======================================================================
  10011f11c  stp     x29, x30, [sp, #-0x10]!
  10011f120  mov     x29, sp
  10011f124  stp     x20, x19, [sp, #-0x10]!
  10011f128  mov     x19, x2
  10011f12c  adrp    x8, #0x10041e000
  10011f130  ldr     x0, [x8, #0x628]                         ; class NSCharacterSet
  10011f134  adrp    x8, #0x10041c000
  10011f138  nop
  10011f13c  ldr     x1, [x8, #0x118]
  10011f140  bl      _objc_msgSend                            ; [NSCharacterSet whitespaceAndNewlineCharacterSet]
  10011f144  mov     x2, x0
  10011f148  adrp    x8, #0x10041c000
  10011f14c  nop
  10011f150  ldr     x1, [x8, #0x120]
  10011f154  mov     x0, x19
  10011f158  ldp     x20, x19, [sp], #0x10
  10011f15c  ldp     x29, x30, [sp], #0x10
  10011f160  b       _objc_msgSend                            ; [arg1 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]

; ======================================================================
; +[GAIStringUtil intString:]
; address 0x10011f164  size 60  kind objc
; ======================================================================
  10011f164  stp     x29, x30, [sp, #-0x10]!
  10011f168  mov     x29, sp
  10011f16c  sub     sp, sp, #0x10
  10011f170  adrp    x8, #0x10041d000
  10011f174  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011f178  adrp    x8, #0x100416000
  10011f17c  nop
  10011f180  ldr     x1, [x8, #0xee8]
  10011f184  str     x2, [sp]
  10011f188  adrp    x2, #0x1003c5000
  10011f18c  add     x2, x2, #0x1d0                           ; @"%lld"
  10011f190  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%lld", arg1]
  10011f194  mov     sp, x29
  10011f198  ldp     x29, x30, [sp], #0x10
  10011f19c  ret

; ======================================================================
; +[GAIStringUtil uintString:]
; address 0x10011f1a0  size 60  kind objc
; ======================================================================
  10011f1a0  stp     x29, x30, [sp, #-0x10]!
  10011f1a4  mov     x29, sp
  10011f1a8  sub     sp, sp, #0x10
  10011f1ac  adrp    x8, #0x10041d000
  10011f1b0  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011f1b4  adrp    x8, #0x100416000
  10011f1b8  nop
  10011f1bc  ldr     x1, [x8, #0xee8]
  10011f1c0  str     x2, [sp]
  10011f1c4  adrp    x2, #0x1003c5000
  10011f1c8  add     x2, x2, #0x1f0                           ; @"%llu"
  10011f1cc  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%llu", arg1]
  10011f1d0  mov     sp, x29
  10011f1d4  ldp     x29, x30, [sp], #0x10
  10011f1d8  ret

; ======================================================================
; +[GAIStringUtil decimalString:decimals:]
; address 0x10011f1dc  size 264  kind objc
; ======================================================================
  10011f1dc  stp     x29, x30, [sp, #-0x10]!
  10011f1e0  mov     x29, sp
  10011f1e4  stp     x20, x19, [sp, #-0x10]!
  10011f1e8  stp     x22, x21, [sp, #-0x10]!
  10011f1ec  sub     sp, sp, #0x10
  10011f1f0  adrp    x8, #0x10041d000
  10011f1f4  ldr     x0, [x8, #0xf78]                         ; class NSString
  10011f1f8  adrp    x8, #0x100416000
  10011f1fc  nop
  10011f200  ldr     x1, [x8, #0xee8]
  10011f204  str     d0, [sp, #8]
  10011f208  str     x2, [sp]
  10011f20c  adrp    x2, #0x1003c5000
  10011f210  add     x2, x2, #0x210                           ; @"%.*f"
  10011f214  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%.*f", arg2]
  10011f218  mov     x19, x0
  10011f21c  adrp    x8, #0x100419000
  10011f220  nop
  10011f224  ldr     x1, [x8, #0xbb0]
  10011f228  adrp    x2, #0x1003be000
  10011f22c  add     x2, x2, #0x9f0                           ; @"."
  10011f230  mov     x3, #4
  10011f234  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%.*f", arg2] rangeOfString:@"." options:4]
  10011f238  mov     x20, x0
  10011f23c  mov     x8, #0x7fffffffffffffff
  10011f240  cmp     x20, x8
  10011f244  b.ne    loc_10011f260                            ; if ([[NSString stringWithFormat:@"%.*f", arg2] rangeOfString:@"." options:4] != 0x7fffffffffffffff)
  10011f248  mov     x0, x19
  10011f24c  sub     sp, x29, #0x20
  10011f250  ldp     x22, x21, [sp], #0x10
  10011f254  ldp     x20, x19, [sp], #0x10
  10011f258  ldp     x29, x30, [sp], #0x10
  10011f25c  ret
loc_10011f260:
  10011f260  adrp    x8, #0x100417000
  10011f264  nop
  10011f268  ldr     x1, [x8, #0xc58]
  10011f26c  mov     x0, x19
  10011f270  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%.*f", arg2] length]
  10011f274  adrp    x8, #0x10041b000
  10011f278  nop
  10011f27c  ldr     x21, [x8, #0x2c0]
  10011f280  sub     x8, x0, #1
loc_10011f284:
  10011f284  mov     x22, x8
  10011f288  add     x8, x22, #1
  10011f28c  cmp     x8, x20
  10011f290  b.ls    loc_10011f2b0                            ; if ((x22 + 1) <=u [[NSString stringWithFormat:@"%.*f", arg2] rangeOfString:@"." options:4])
  10011f294  mov     x0, x19
  10011f298  mov     x1, x21
  10011f29c  mov     x2, x22
  10011f2a0  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%.*f", arg2] characterAtIndex:x2]
  10011f2a4  sub     x8, x22, #1
  10011f2a8  cmp     w0, #0x30
  10011f2ac  b.eq    loc_10011f284                            ; if ([[NSString stringWithFormat:@"%.*f", arg2] characterAtIndex:x2] == 48)
loc_10011f2b0:
  10011f2b0  cmp     x20, x22
  10011f2b4  cset    w8, eq
  10011f2b8  adrp    x9, #0x100418000
  10011f2bc  nop
  10011f2c0  ldr     x1, [x9, #0x418]
  10011f2c4  sub     x8, x22, w8, uxtw
  10011f2c8  add     x2, x8, #1
  10011f2cc  mov     x0, x19
  10011f2d0  sub     sp, x29, #0x20
  10011f2d4  ldp     x22, x21, [sp], #0x10
  10011f2d8  ldp     x20, x19, [sp], #0x10
  10011f2dc  ldp     x29, x30, [sp], #0x10
  10011f2e0  b       _objc_msgSend                            ; [[NSString stringWithFormat:@"%.*f", arg2] substringToIndex:((x22 - ([[NSString stringWithFormat:@"%.*f", arg2] rangeOfString:@"." options:4] == x22)) + 1)]

; ======================================================================
; +[GAIStringUtil currencyMicrosString:]
; address 0x10011f2e4  size 424  kind objc
; ======================================================================
  10011f2e4  stp     x29, x30, [sp, #-0x10]!
  10011f2e8  mov     x29, sp
  10011f2ec  stp     x20, x19, [sp, #-0x10]!
  10011f2f0  stp     x22, x21, [sp, #-0x10]!
  10011f2f4  stp     x24, x23, [sp, #-0x10]!
  10011f2f8  stp     x26, x25, [sp, #-0x10]!
  10011f2fc  stp     x28, x27, [sp, #-0x10]!
  10011f300  sub     sp, sp, #0x20
  10011f304  mov     x20, x2
  10011f308  cmp     x20, #0
  10011f30c  cneg    x26, x20, mi
  10011f310  mov     x8, #0x431b000000000000
  10011f314  movk    x8, #0xde82, lsl #32
  10011f318  movk    x8, #0xd7b6, lsl #16
  10011f31c  movk    x8, #0x34db
  10011f320  smulh   x8, x26, x8
  10011f324  asr     x9, x8, #0x12
  10011f328  add     x25, x9, x8, lsr #63                     ; t1 = (((((arg1 - 0) <0 ? -arg1 : arg1) *h 0x431bde82d7b634db) >> 18) + ((((arg1 - 0) <0 ? -arg1 : arg1) *h 0x431bde82d7b634db) >>> 63))
  10011f32c  mov     w8, #0xf0000
  10011f330  movk    w8, #0x4240
  10011f334  msub    w8, w25, w8, w26
  10011f338  adrp    x27, #0x10041d000
  10011f33c  ldr     x0, [x27, #0xf78]                        ; class NSString
  10011f340  cbz     w8, loc_10011f420                        ; if ((((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240) == 0)
  10011f344  adrp    x9, #0x100416000
  10011f348  nop
  10011f34c  ldr     x19, [x9, #0xee8]
  10011f350  str     x8, [sp]
  10011f354  adrp    x2, #0x1003c5000
  10011f358  add     x2, x2, #0x230                           ; @"%06d"
  10011f35c  mov     x1, x19
  10011f360  bl      _objc_msgSend                            ; [NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)]
  10011f364  mov     x21, x0
  10011f368  adrp    x8, #0x100417000
  10011f36c  nop
  10011f370  ldr     x1, [x8, #0xc58]
  10011f374  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] length]
  10011f378  mov     x22, x0
  10011f37c  mov     x28, #0
  10011f380  cbz     x22, loc_10011f3bc                       ; if ([[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] length] == 0)
  10011f384  sub     x23, x22, #1
  10011f388  adrp    x8, #0x10041b000
  10011f38c  add     x8, x8, #0x2c0                           ; &@selector(characterAtIndex:)
  10011f390  ldr     x24, [x8]
loc_10011f394:
  10011f394  mov     x0, x21
  10011f398  mov     x1, x24
  10011f39c  mov     x2, x23
  10011f3a0  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] characterAtIndex:x2]
  10011f3a4  cmp     w0, #0x30
  10011f3a8  b.ne    loc_10011f3bc                            ; if ([[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] characterAtIndex:x2] != 48)
  10011f3ac  add     x28, x28, #1
  10011f3b0  sub     x23, x23, #1
  10011f3b4  cmp     x22, x28
  10011f3b8  b.hi    loc_10011f394                            ; if ([[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] length] >u (x28 + 1))
loc_10011f3bc:
  10011f3bc  mov     x8, #0xf0000
  10011f3c0  movk    x8, #0x423f
  10011f3c4  add     x24, x26, x8
  10011f3c8  ldr     x23, [x27, #0xf78]                       ; class NSString
  10011f3cc  adrp    x8, #0x10038a000
  10011f3d0  add     x8, x8, #0xab8                           ; ""
  10011f3d4  adrp    x9, #0x100390000
  10011f3d8  add     x9, x9, #0x8dd                           ; "-"
  10011f3dc  cmp     x20, #0
  10011f3e0  csel    x20, x9, x8, lt
  10011f3e4  sub     x2, x22, x28                             ; t2 = ([[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] length] - x28)
  10011f3e8  adrp    x8, #0x100418000
  10011f3ec  nop
  10011f3f0  ldr     x1, [x8, #0x418]
  10011f3f4  mov     x0, x21
  10011f3f8  bl      _objc_msgSend                            ; [[NSString stringWithFormat:@"%06d", (((arg1 - 0) <0 ? -arg1 : arg1) - t1 * 0xf4240)] substringToIndex:t2]
  10011f3fc  mov     x8, #0x1e0000
  10011f400  movk    x8, #0x847f
  10011f404  cmp     x24, x8
  10011f408  b.lo    loc_10011f454                            ; if ((((arg1 - 0) <0 ? -arg1 : arg1) + 0xf423f) <u 0x1e847f)
  10011f40c  stp     x25, x0, [sp, #8]
  10011f410  str     x20, [sp]
  10011f414  adrp    x2, #0x1003c5000
  10011f418  add     x2, x2, #0x250                           ; @"%s%lld.%@"
  10011f41c  b       loc_10011f460
loc_10011f420:
  10011f420  adrp    x8, #0x10038a000
  10011f424  add     x8, x8, #0xab8                           ; ""
  10011f428  adrp    x9, #0x100390000
  10011f42c  add     x9, x9, #0x8dd                           ; "-"
  10011f430  cmp     x20, #0
  10011f434  csel    x8, x9, x8, lt
  10011f438  adrp    x9, #0x100416000
  10011f43c  add     x9, x9, #0xee8                           ; &@selector(stringWithFormat:)
  10011f440  ldr     x1, [x9]
  10011f444  stp     x8, x25, [sp]
  10011f448  adrp    x2, #0x1003c5000
  10011f44c  add     x2, x2, #0x290                           ; @"%s%lld"
  10011f450  b       loc_10011f468
loc_10011f454:
  10011f454  stp     x20, x0, [sp]
  10011f458  adrp    x2, #0x1003c5000
  10011f45c  add     x2, x2, #0x270                           ; @"%s.%@"
loc_10011f460:
  10011f460  mov     x0, x23
  10011f464  mov     x1, x19
loc_10011f468:
  10011f468  bl      _objc_msgSend                            ; [NSString stringWithFormat:one of {@"%s%lld.%@", @"%s.%@", @"%s%lld"}]
  10011f46c  sub     sp, x29, #0x50
  10011f470  ldp     x28, x27, [sp], #0x10
  10011f474  ldp     x26, x25, [sp], #0x10
  10011f478  ldp     x24, x23, [sp], #0x10
  10011f47c  ldp     x22, x21, [sp], #0x10
  10011f480  ldp     x20, x19, [sp], #0x10
  10011f484  ldp     x29, x30, [sp], #0x10
  10011f488  ret

; ======================================================================
; +[GAIStringUtil percentEncode:]
; address 0x10011f48c  size 120  kind objc
; ======================================================================
  10011f48c  stp     x29, x30, [sp, #-0x10]!
  10011f490  mov     x29, sp
  10011f494  stp     x20, x19, [sp, #-0x10]!
  10011f498  adrp    x8, #0x1003b0000
  10011f49c  ldr     x8, [x8, #0x200]                         ; _kCFAllocatorSystemDefault
  10011f4a0  ldr     x0, [x8]                                 ; x0 = _kCFAllocatorSystemDefault[+0x0]
  10011f4a4  adrp    x19, #0x1003bd000
  10011f4a8  add     x19, x19, #0xfd0                         ; @" "
  10011f4ac  adrp    x3, #0x1003c5000
  10011f4b0  add     x3, x3, #0x2f0                           ; @":/?#[]@!$&’()*+,;="
  10011f4b4  mov     w4, #0x8000000
  10011f4b8  movk    w4, #0x100
  10011f4bc  mov     x1, x2
  10011f4c0  mov     x2, x19
  10011f4c4  bl      _CFURLCreateStringByAddingPercentEscapes ; CFURLCreateStringByAddingPercentEscapes(_kCFAllocatorSystemDefault[+0x0], arg1, @" ", @":/?#[]@!$&’()*+,;=")
  10011f4c8  mov     x20, x0
  10011f4cc  adrp    x8, #0x10041a000
  10011f4d0  nop
  10011f4d4  ldr     x1, [x8, #0x6f0]
  10011f4d8  adrp    x3, #0x1003c5000
  10011f4dc  add     x3, x3, #0x2d0                           ; @"+"
  10011f4e0  mov     x2, x19
  10011f4e4  bl      _objc_msgSend                            ; [CFURLCreateStringByAddingPercentEscapes(_kCFAllocatorSystemDefault[+0x0], arg1, @" ", @":/?#[]@!$&’()*+,;=") stringByReplacingOccurrencesOfString:@" " withString:@"+"]
  10011f4e8  mov     x19, x0
  10011f4ec  mov     x0, x20
  10011f4f0  bl      _CFRelease                               ; CFRelease(CFURLCreateStringByAddingPercentEscapes(_kCFAllocatorSystemDefault[+0x0], arg1, @" ", @":/?#[]@!$&’()*+,;="))
  10011f4f4  mov     x0, x19
  10011f4f8  ldp     x20, x19, [sp], #0x10
  10011f4fc  ldp     x29, x30, [sp], #0x10
  10011f500  ret

; ======================================================================
; +[GAIStringUtil percentDecode:]
; address 0x10011f504  size 72  kind objc
; ======================================================================
  10011f504  stp     x29, x30, [sp, #-0x10]!
  10011f508  mov     x29, sp
  10011f50c  adrp    x8, #0x10041a000
  10011f510  nop
  10011f514  ldr     x1, [x8, #0x6f0]
  10011f518  adrp    x8, #0x1003c5000
  10011f51c  add     x8, x8, #0x2d0                           ; @"+"
  10011f520  adrp    x3, #0x1003bd000
  10011f524  add     x3, x3, #0xfd0                           ; @" "
  10011f528  mov     x0, x2
  10011f52c  mov     x2, x8
  10011f530  bl      _objc_msgSend                            ; [arg1 stringByReplacingOccurrencesOfString:@"+" withString:@" "]
  10011f534  adrp    x8, #0x10041c000
  10011f538  nop
  10011f53c  ldr     x1, [x8, #0x128]
  10011f540  mov     x2, #4
  10011f544  ldp     x29, x30, [sp], #0x10
  10011f548  b       _objc_msgSend                            ; [[arg1 stringByReplacingOccurrencesOfString:@"+" withString:@" "] stringByReplacingPercentEscapesUsingEncoding:4]

; ======================================================================
; +[GAIStringUtil decodeParametersFromQuery:]
; address 0x10011f54c  size 604  kind objc
; ======================================================================
  10011f54c  stp     x29, x30, [sp, #-0x10]!
  10011f550  mov     x29, sp
  10011f554  stp     x20, x19, [sp, #-0x10]!
  10011f558  stp     x22, x21, [sp, #-0x10]!
  10011f55c  stp     x24, x23, [sp, #-0x10]!
  10011f560  stp     x26, x25, [sp, #-0x10]!
  10011f564  stp     x28, x27, [sp, #-0x10]!
  10011f568  sub     sp, sp, #0x110
  10011f56c  mov     x19, x0
  10011f570  adrp    x8, #0x1003b0000
  10011f574  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011f578  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011f57c  stur    x8, [x29, #-0x58]
  10011f580  adrp    x8, #0x100419000
  10011f584  nop
  10011f588  ldr     x1, [x8, #0x188]
  10011f58c  adrp    x8, #0x1003c4000
  10011f590  add     x8, x8, #0xb10                           ; @"&"
  10011f594  mov     x0, x2
  10011f598  mov     x2, x8
  10011f59c  bl      _objc_msgSend                            ; [arg1 componentsSeparatedByString:@"&"]
  10011f5a0  mov     x21, x0
  10011f5a4  str     x21, [sp, #0x38]
  10011f5a8  adrp    x8, #0x10041d000
  10011f5ac  ldr     x20, [x8, #0xf90]                        ; class NSMutableDictionary
  10011f5b0  adrp    x8, #0x100416000
  10011f5b4  nop
  10011f5b8  ldr     x1, [x8, #0xe30]
  10011f5bc  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"&"] count]
  10011f5c0  mov     x2, x0
  10011f5c4  adrp    x8, #0x10041b000
  10011f5c8  nop
  10011f5cc  ldr     x1, [x8, #0x828]
  10011f5d0  mov     x0, x20
  10011f5d4  bl      _objc_msgSend                            ; [NSMutableDictionary dictionaryWithCapacity:[[arg1 componentsSeparatedByString:@"&"] count]]
  10011f5d8  str     x0, [sp, #0x40]
  10011f5dc  stp     xzr, xzr, [x29, #-0x68]
  10011f5e0  stp     xzr, xzr, [x29, #-0x78]
  10011f5e4  stp     xzr, xzr, [x29, #-0x88]
  10011f5e8  stp     xzr, xzr, [x29, #-0x98]
  10011f5ec  adrp    x8, #0x100416000
  10011f5f0  nop
  10011f5f4  ldr     x1, [x8, #0xe00]
  10011f5f8  str     x1, [sp, #0x20]
  10011f5fc  sub     x2, x29, #0x98
  10011f600  add     x3, sp, #0x48
  10011f604  mov     x4, #0x10
  10011f608  mov     x0, x21
  10011f60c  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10011f610  mov     x23, x0
  10011f614  cbz     x23, loc_10011f768                       ; if ([[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] == 0)
  10011f618  ldur    x8, [x29, #-0x88]
  10011f61c  ldr     x22, [x8]
  10011f620  adrp    x8, #0x100417000
  10011f624  nop
  10011f628  adrp    x9, #0x10041c000
  10011f62c  nop
  10011f630  ldr     x24, [x8, #0x58]
  10011f634  ldr     x25, [x9, #0x130]
  10011f638  adrp    x8, #0x100416000
  10011f63c  nop
  10011f640  adrp    x9, #0x100418000
  10011f644  add     x9, x9, #0x418                           ; &@selector(substringToIndex:)
  10011f648  ldr     x26, [x8, #0xdc8]
  10011f64c  ldr     x8, [x9]
  10011f650  str     x8, [sp, #0x30]
  10011f654  adrp    x8, #0x10041c000
  10011f658  nop
  10011f65c  ldr     x8, [x8, #0x110]
  10011f660  str     x8, [sp, #0x28]
  10011f664  sub     x8, x29, #0x98
  10011f668  str     x8, [sp, #0x18]
  10011f66c  add     x8, sp, #0x48
  10011f670  str     x8, [sp, #0x10]
loc_10011f674:
  10011f674  mov     x21, #0
loc_10011f678:
  10011f678  ldur    x8, [x29, #-0x88]
  10011f67c  ldr     x8, [x8]
  10011f680  cmp     x8, x22
  10011f684  b.eq    loc_10011f690                            ; if (x8 == x22)
  10011f688  ldr     x0, [sp, #0x38]
  10011f68c  bl      _objc_enumerationMutation                ; objc_enumerationMutation([arg1 componentsSeparatedByString:@"&"])
loc_10011f690:
  10011f690  ldur    x8, [x29, #-0x90]
  10011f694  ldr     x20, [x8, x21, lsl #3]
  10011f698  mov     x0, x20
  10011f69c  mov     x1, x24
  10011f6a0  adrp    x2, #0x1003c5000
  10011f6a4  add     x2, x2, #0x2b0                           ; @"="
  10011f6a8  bl      _objc_msgSend                            ; [x0 rangeOfString:@"="]
  10011f6ac  mov     x27, x0
  10011f6b0  mov     x8, #0x7fffffffffffffff
  10011f6b4  cmp     x27, x8
  10011f6b8  b.ne    loc_10011f6e4                            ; if ([x0 rangeOfString:@"="] != 0x7fffffffffffffff)
  10011f6bc  mov     x0, x19
  10011f6c0  mov     x1, x25
  10011f6c4  mov     x2, x20
  10011f6c8  bl      _objc_msgSend                            ; [GAIStringUtil percentDecode:x2]
  10011f6cc  mov     x3, x0
  10011f6d0  ldr     x0, [sp, #0x40]
  10011f6d4  mov     x1, x26
  10011f6d8  adrp    x2, #0x1003b9000
  10011f6dc  add     x2, x2, #0x870                           ; @""
  10011f6e0  b       loc_10011f73c
loc_10011f6e4:
  10011f6e4  mov     x0, x20
  10011f6e8  ldr     x1, [sp, #0x30]
  10011f6ec  mov     x2, x27
  10011f6f0  bl      _objc_msgSend                            ; [x0 substringToIndex:[x0 rangeOfString:@"="]]
  10011f6f4  mov     x28, x0
  10011f6f8  add     x2, x27, #1
  10011f6fc  mov     x0, x20
  10011f700  ldr     x1, [sp, #0x28]
  10011f704  bl      _objc_msgSend                            ; [x0 substringFromIndex:([x0 rangeOfString:@"="] + 1)]
  10011f708  mov     x2, x0
  10011f70c  mov     x0, x19
  10011f710  mov     x1, x25
  10011f714  bl      _objc_msgSend                            ; [GAIStringUtil percentDecode:[x0 substringFromIndex:([x0 rangeOfString:@"="] + 1)]]
  10011f718  mov     x20, x0
  10011f71c  mov     x0, x19
  10011f720  mov     x1, x25
  10011f724  mov     x2, x28
  10011f728  bl      _objc_msgSend                            ; [GAIStringUtil percentDecode:[x0 substringToIndex:[x0 rangeOfString:@"="]]]
  10011f72c  mov     x3, x0
  10011f730  ldr     x0, [sp, #0x40]
  10011f734  mov     x1, x26
  10011f738  mov     x2, x20
loc_10011f73c:
  10011f73c  bl      _objc_msgSend                            ; [[NSMutableDictionary dictionaryWithCapacity:[[arg1 componentsSeparatedByString:@"&"] count]] setObject:x2 forKey:x3]
  10011f740  add     x21, x21, #1
  10011f744  cmp     x21, x23
  10011f748  b.lo    loc_10011f678                            ; if ((x21 + 1) <u [[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])
  10011f74c  mov     x4, #0x10
  10011f750  ldr     x0, [sp, #0x38]
  10011f754  ldp     x2, x1, [sp, #0x18]
  10011f758  ldr     x3, [sp, #0x10]
  10011f75c  bl      _objc_msgSend                            ; [[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16]
  10011f760  mov     x23, x0
  10011f764  cbnz    x23, loc_10011f674                       ; if ([[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16] != 0)
loc_10011f768:
  10011f768  adrp    x8, #0x1003b0000
  10011f76c  ldr     x8, [x8, #0x1d8]                         ; ___stack_chk_guard
  10011f770  ldr     x8, [x8]                                 ; x8 = ___stack_chk_guard[+0x0]
  10011f774  ldur    x9, [x29, #-0x58]
  10011f778  sub     x8, x8, x9
  10011f77c  cbnz    x8, loc_10011f7a4                        ; if ((___stack_chk_guard[+0x0] - ___stack_chk_guard[+0x0]) != 0)
  10011f780  ldr     x0, [sp, #0x40]
  10011f784  sub     sp, x29, #0x50
  10011f788  ldp     x28, x27, [sp], #0x10
  10011f78c  ldp     x26, x25, [sp], #0x10
  10011f790  ldp     x24, x23, [sp], #0x10
  10011f794  ldp     x22, x21, [sp], #0x10
  10011f798  ldp     x20, x19, [sp], #0x10
  10011f79c  ldp     x29, x30, [sp], #0x10
  10011f7a0  ret
loc_10011f7a4:
  10011f7a4  bl      ___stack_chk_fail                        ; stack_chk_fail([[arg1 componentsSeparatedByString:@"&"] countByEnumeratingWithState:&x29[-0x98] objects:&sp[0x48] count:16])

; ======================================================================
; +[GAIStringUtil decodeParametersFromUrl:]
; address 0x10011f7a8  size 208  kind objc
; ======================================================================
  10011f7a8  stp     x29, x30, [sp, #-0x10]!
  10011f7ac  mov     x29, sp
  10011f7b0  stp     x20, x19, [sp, #-0x10]!
  10011f7b4  stp     x22, x21, [sp, #-0x10]!
  10011f7b8  mov     x19, x0
  10011f7bc  adrp    x8, #0x10041e000
  10011f7c0  ldr     x0, [x8, #0xa0]                          ; class NSURL
  10011f7c4  adrp    x8, #0x10041a000
  10011f7c8  nop
  10011f7cc  ldr     x1, [x8, #0x628]
  10011f7d0  bl      _objc_msgSend                            ; [NSURL URLWithString:arg1]
  10011f7d4  mov     x20, x0
  10011f7d8  cbz     x20, loc_10011f864                       ; if ([NSURL URLWithString:arg1] == 0)
  10011f7dc  adrp    x8, #0x10041c000
  10011f7e0  nop
  10011f7e4  ldr     x21, [x8, #0x138]
  10011f7e8  mov     x0, x20
  10011f7ec  mov     x1, x21
  10011f7f0  bl      _objc_msgSend                            ; [[NSURL URLWithString:arg1] query]
  10011f7f4  cbz     x0, loc_10011f848                        ; if ([[NSURL URLWithString:arg1] query] == 0)
  10011f7f8  mov     x0, x20
  10011f7fc  mov     x1, x21
  10011f800  bl      _objc_msgSend                            ; [[NSURL URLWithString:arg1] query]
  10011f804  adrp    x8, #0x100417000
  10011f808  nop
  10011f80c  ldr     x1, [x8, #0xc58]
  10011f810  bl      _objc_msgSend                            ; [[[NSURL URLWithString:arg1] query] length]
  10011f814  cbz     x0, loc_10011f848                        ; if ([[[NSURL URLWithString:arg1] query] length] == 0)
  10011f818  mov     x0, x20
  10011f81c  mov     x1, x21
  10011f820  bl      _objc_msgSend                            ; [[NSURL URLWithString:arg1] query]
  10011f824  mov     x2, x0
  10011f828  adrp    x8, #0x10041c000
  10011f82c  nop
  10011f830  ldr     x1, [x8, #0x140]
  10011f834  mov     x0, x19
  10011f838  ldp     x22, x21, [sp], #0x10
  10011f83c  ldp     x20, x19, [sp], #0x10
  10011f840  ldp     x29, x30, [sp], #0x10
  10011f844  b       _objc_msgSend                            ; [GAIStringUtil decodeParametersFromQuery:[[NSURL URLWithString:arg1] query]]
loc_10011f848:
  10011f848  adrp    x8, #0x10041d000
  10011f84c  ldr     x0, [x8, #0xef8]                         ; class NSDictionary
  10011f850  adrp    x8, #0x10041b000
  10011f854  nop
  10011f858  ldr     x1, [x8, #0xf20]
  10011f85c  bl      _objc_msgSend                            ; [NSDictionary dictionary]
  10011f860  b       loc_10011f868
loc_10011f864:
  10011f864  mov     x0, #0
loc_10011f868:
  10011f868  ldp     x22, x21, [sp], #0x10
  10011f86c  ldp     x20, x19, [sp], #0x10
  10011f870  ldp     x29, x30, [sp], #0x10
  10011f874  ret

; ======================================================================
; +[GAIStringUtil stripLeadingAmpersand:]
; address 0x10011f878  size 96  kind objc
; ======================================================================
  10011f878  stp     x29, x30, [sp, #-0x10]!
  10011f87c  mov     x29, sp
  10011f880  stp     x20, x19, [sp, #-0x10]!
  10011f884  mov     x19, x2
  10011f888  adrp    x8, #0x10041a000
  10011f88c  nop
  10011f890  ldr     x1, [x8, #0x2d0]
  10011f894  adrp    x2, #0x1003c4000
  10011f898  add     x2, x2, #0xb10                           ; @"&"
  10011f89c  mov     x0, x19
  10011f8a0  bl      _objc_msgSend                            ; [arg1 hasPrefix:@"&"]
  10011f8a4  cbz     w0, loc_10011f8c8                        ; if ([arg1 hasPrefix:@"&"] == 0)
  10011f8a8  adrp    x8, #0x10041c000
  10011f8ac  nop
  10011f8b0  ldr     x1, [x8, #0x110]
  10011f8b4  mov     x2, #1
  10011f8b8  mov     x0, x19
  10011f8bc  ldp     x20, x19, [sp], #0x10
  10011f8c0  ldp     x29, x30, [sp], #0x10
  10011f8c4  b       _objc_msgSend                            ; [arg1 substringFromIndex:1]
loc_10011f8c8:
  10011f8c8  mov     x0, x19
  10011f8cc  ldp     x20, x19, [sp], #0x10
  10011f8d0  ldp     x29, x30, [sp], #0x10
  10011f8d4  ret
