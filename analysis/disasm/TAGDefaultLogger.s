// unit TAGDefaultLogger — 8 functions
//   0x1001612b8      80  -[TAGDefaultLogger init]
//   0x100161308     124  -[TAGDefaultLogger error:]
//   0x100161384     124  -[TAGDefaultLogger warning:]
//   0x100161400     124  -[TAGDefaultLogger info:]
//   0x10016147c     124  -[TAGDefaultLogger debug:]
//   0x1001614f8     120  -[TAGDefaultLogger verbose:]
//   0x100161570      16  -[TAGDefaultLogger logLevel]
//   0x100161580      16  -[TAGDefaultLogger setLogLevel:]

; ======================================================================
; -[TAGDefaultLogger init]
; address 0x1001612b8  size 80  kind objc
; ======================================================================
  1001612b8  stp     x29, x30, [sp, #-0x10]!
  1001612bc  mov     x29, sp
  1001612c0  sub     sp, sp, #0x10
  1001612c4  str     x0, [sp]
  1001612c8  adrp    x8, #0x10041f000
  1001612cc  ldr     x8, [x8, #0x2a8]
  1001612d0  str     x8, [sp, #8]
  1001612d4  adrp    x8, #0x100416000
  1001612d8  nop
  1001612dc  ldr     x1, [x8, #0xab8]
  1001612e0  mov     x0, sp
  1001612e4  bl      _objc_msgSendSuper2                      ; [super init]
  1001612e8  cbz     x0, loc_1001612fc                        ; if (self == 0)
  1001612ec  adrp    x8, #0x100420000
  1001612f0  ldrsw   x8, [x8, #0xb60]                         ; ivar offset TAGDefaultLogger._logLevel (+0x8)
  1001612f4  mov     w9, #3
  1001612f8  str     w9, [x0, x8]                             ; self->_logLevel = 3
loc_1001612fc:
  1001612fc  mov     sp, x29
  100161300  ldp     x29, x30, [sp], #0x10
  100161304  ret

; ======================================================================
; -[TAGDefaultLogger error:]
; address 0x100161308  size 124  kind objc
; ======================================================================
  100161308  stp     x29, x30, [sp, #-0x10]!
  10016130c  mov     x29, sp
  100161310  stp     x20, x19, [sp, #-0x10]!
  100161314  sub     sp, sp, #0x10
  100161318  mov     x20, x0
  10016131c  mov     x0, x2
  100161320  bl      _objc_retain
  100161324  mov     x19, x0
  100161328  adrp    x8, #0x10041b000
  10016132c  nop
  100161330  ldr     x1, [x8, #0xda0]
  100161334  mov     x0, x20
  100161338  bl      _objc_msgSend                            ; [self logLevel]
  10016133c  cmp     w0, #4
  100161340  b.hi    loc_10016135c                            ; if ([self logLevel] >u 4)
  100161344  adrp    x8, #0x1003c8000
  100161348  add     x8, x8, #0x810                           ; @"GoogleTagManager"
  10016134c  stp     x8, x19, [sp]
  100161350  adrp    x0, #0x1003c8000
  100161354  add     x0, x0, #0x830                           ; @"%@ error: %@"
  100161358  bl      _NSLog                                   ; NSLog(@"%@ error: %@", @"GoogleTagManager", arg1)
loc_10016135c:
  10016135c  mov     x0, x19
  100161360  sub     sp, x29, #0x10
  100161364  ldp     x20, x19, [sp], #0x10
  100161368  ldp     x29, x30, [sp], #0x10
  10016136c  b       _objc_release
  100161370  mov     x20, x0
  100161374  mov     x0, x19
  100161378  bl      _objc_release
  10016137c  mov     x0, x20
  100161380  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDefaultLogger warning:]
; address 0x100161384  size 124  kind objc
; ======================================================================
  100161384  stp     x29, x30, [sp, #-0x10]!
  100161388  mov     x29, sp
  10016138c  stp     x20, x19, [sp, #-0x10]!
  100161390  sub     sp, sp, #0x10
  100161394  mov     x20, x0
  100161398  mov     x0, x2
  10016139c  bl      _objc_retain
  1001613a0  mov     x19, x0
  1001613a4  adrp    x8, #0x10041b000
  1001613a8  nop
  1001613ac  ldr     x1, [x8, #0xda0]
  1001613b0  mov     x0, x20
  1001613b4  bl      _objc_msgSend                            ; [self logLevel]
  1001613b8  cmp     w0, #3
  1001613bc  b.hi    loc_1001613d8                            ; if ([self logLevel] >u 3)
  1001613c0  adrp    x8, #0x1003c8000
  1001613c4  add     x8, x8, #0x810                           ; @"GoogleTagManager"
  1001613c8  stp     x8, x19, [sp]
  1001613cc  adrp    x0, #0x1003c8000
  1001613d0  add     x0, x0, #0x850                           ; @"%@ warning: %@"
  1001613d4  bl      _NSLog                                   ; NSLog(@"%@ warning: %@", @"GoogleTagManager", arg1)
loc_1001613d8:
  1001613d8  mov     x0, x19
  1001613dc  sub     sp, x29, #0x10
  1001613e0  ldp     x20, x19, [sp], #0x10
  1001613e4  ldp     x29, x30, [sp], #0x10
  1001613e8  b       _objc_release
  1001613ec  mov     x20, x0
  1001613f0  mov     x0, x19
  1001613f4  bl      _objc_release
  1001613f8  mov     x0, x20
  1001613fc  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDefaultLogger info:]
; address 0x100161400  size 124  kind objc
; ======================================================================
  100161400  stp     x29, x30, [sp, #-0x10]!
  100161404  mov     x29, sp
  100161408  stp     x20, x19, [sp, #-0x10]!
  10016140c  sub     sp, sp, #0x10
  100161410  mov     x20, x0
  100161414  mov     x0, x2
  100161418  bl      _objc_retain
  10016141c  mov     x19, x0
  100161420  adrp    x8, #0x10041b000
  100161424  nop
  100161428  ldr     x1, [x8, #0xda0]
  10016142c  mov     x0, x20
  100161430  bl      _objc_msgSend                            ; [self logLevel]
  100161434  cmp     w0, #2
  100161438  b.hi    loc_100161454                            ; if ([self logLevel] >u 2)
  10016143c  adrp    x8, #0x1003c8000
  100161440  add     x8, x8, #0x810                           ; @"GoogleTagManager"
  100161444  stp     x8, x19, [sp]
  100161448  adrp    x0, #0x1003c8000
  10016144c  add     x0, x0, #0x870                           ; @"%@ info: %@"
  100161450  bl      _NSLog                                   ; NSLog(@"%@ info: %@", @"GoogleTagManager", arg1)
loc_100161454:
  100161454  mov     x0, x19
  100161458  sub     sp, x29, #0x10
  10016145c  ldp     x20, x19, [sp], #0x10
  100161460  ldp     x29, x30, [sp], #0x10
  100161464  b       _objc_release
  100161468  mov     x20, x0
  10016146c  mov     x0, x19
  100161470  bl      _objc_release
  100161474  mov     x0, x20
  100161478  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDefaultLogger debug:]
; address 0x10016147c  size 124  kind objc
; ======================================================================
  10016147c  stp     x29, x30, [sp, #-0x10]!
  100161480  mov     x29, sp
  100161484  stp     x20, x19, [sp, #-0x10]!
  100161488  sub     sp, sp, #0x10
  10016148c  mov     x20, x0
  100161490  mov     x0, x2
  100161494  bl      _objc_retain
  100161498  mov     x19, x0
  10016149c  adrp    x8, #0x10041b000
  1001614a0  nop
  1001614a4  ldr     x1, [x8, #0xda0]
  1001614a8  mov     x0, x20
  1001614ac  bl      _objc_msgSend                            ; [self logLevel]
  1001614b0  cmp     w0, #1
  1001614b4  b.hi    loc_1001614d0                            ; if ([self logLevel] >u 1)
  1001614b8  adrp    x8, #0x1003c8000
  1001614bc  add     x8, x8, #0x810                           ; @"GoogleTagManager"
  1001614c0  stp     x8, x19, [sp]
  1001614c4  adrp    x0, #0x1003c8000
  1001614c8  add     x0, x0, #0x890                           ; @"%@ debug: %@"
  1001614cc  bl      _NSLog                                   ; NSLog(@"%@ debug: %@", @"GoogleTagManager", arg1)
loc_1001614d0:
  1001614d0  mov     x0, x19
  1001614d4  sub     sp, x29, #0x10
  1001614d8  ldp     x20, x19, [sp], #0x10
  1001614dc  ldp     x29, x30, [sp], #0x10
  1001614e0  b       _objc_release
  1001614e4  mov     x20, x0
  1001614e8  mov     x0, x19
  1001614ec  bl      _objc_release
  1001614f0  mov     x0, x20
  1001614f4  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDefaultLogger verbose:]
; address 0x1001614f8  size 120  kind objc
; ======================================================================
  1001614f8  stp     x29, x30, [sp, #-0x10]!
  1001614fc  mov     x29, sp
  100161500  stp     x20, x19, [sp, #-0x10]!
  100161504  sub     sp, sp, #0x10
  100161508  mov     x20, x0
  10016150c  mov     x0, x2
  100161510  bl      _objc_retain
  100161514  mov     x19, x0
  100161518  adrp    x8, #0x10041b000
  10016151c  nop
  100161520  ldr     x1, [x8, #0xda0]
  100161524  mov     x0, x20
  100161528  bl      _objc_msgSend                            ; [self logLevel]
  10016152c  cbnz    w0, loc_100161548                        ; if ([self logLevel] != 0)
  100161530  adrp    x8, #0x1003c8000
  100161534  add     x8, x8, #0x810                           ; @"GoogleTagManager"
  100161538  stp     x8, x19, [sp]
  10016153c  adrp    x0, #0x1003c8000
  100161540  add     x0, x0, #0x8b0                           ; @"%@ verbose: %@"
  100161544  bl      _NSLog                                   ; NSLog(@"%@ verbose: %@", @"GoogleTagManager", arg1)
loc_100161548:
  100161548  mov     x0, x19
  10016154c  sub     sp, x29, #0x10
  100161550  ldp     x20, x19, [sp], #0x10
  100161554  ldp     x29, x30, [sp], #0x10
  100161558  b       _objc_release
  10016155c  mov     x20, x0
  100161560  mov     x0, x19
  100161564  bl      _objc_release
  100161568  mov     x0, x20
  10016156c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGDefaultLogger logLevel]
; address 0x100161570  size 16  kind objc
; ======================================================================
  100161570  adrp    x8, #0x100420000
  100161574  ldrsw   x8, [x8, #0xb60]                         ; ivar offset TAGDefaultLogger._logLevel (+0x8)
  100161578  ldr     w0, [x0, x8]                             ; w0 = self->_logLevel
  10016157c  ret

; ======================================================================
; -[TAGDefaultLogger setLogLevel:]
; address 0x100161580  size 16  kind objc
; ======================================================================
  100161580  adrp    x8, #0x100420000
  100161584  ldrsw   x8, [x8, #0xb60]                         ; ivar offset TAGDefaultLogger._logLevel (+0x8)
  100161588  str     w2, [x0, x8]                             ; self->_logLevel = arg1
  10016158c  ret
