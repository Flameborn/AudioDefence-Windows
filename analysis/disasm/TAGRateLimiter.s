// unit TAGRateLimiter — 10 functions
//   0x100114874     144  +[TAGRateLimiter rateLimiterWithMaxTokens:secondsPerToken:]
//   0x100114904     588  -[TAGRateLimiter tokenAvailable]
//   0x100114b50      16  -[TAGRateLimiter secondsPerToken]
//   0x100114b60      16  -[TAGRateLimiter setSecondsPerToken:]
//   0x100114b70      16  -[TAGRateLimiter maxTokens]
//   0x100114b80      16  -[TAGRateLimiter setMaxTokens:]
//   0x100114b90      16  -[TAGRateLimiter tokens]
//   0x100114ba0      16  -[TAGRateLimiter setTokens:]
//   0x100114bb0      16  -[TAGRateLimiter lastTrackTime]
//   0x100114bc0      16  -[TAGRateLimiter setLastTrackTime:]

; ======================================================================
; +[TAGRateLimiter rateLimiterWithMaxTokens:secondsPerToken:]
; address 0x100114874  size 144  kind objc
; ======================================================================
  100114874  stp     x29, x30, [sp, #-0x10]!
  100114878  mov     x29, sp
  10011487c  stp     x20, x19, [sp, #-0x10]!
  100114880  stp     d9, d8, [sp, #-0x10]!
  100114884  mov     v8.16b, v1.16b
  100114888  mov     v9.16b, v0.16b
  10011488c  adrp    x8, #0x100416000
  100114890  nop
  100114894  ldr     x1, [x8, #0xac8]
  100114898  bl      _objc_msgSend                            ; [TAGRateLimiter alloc]
  10011489c  adrp    x8, #0x100416000
  1001148a0  nop
  1001148a4  ldr     x1, [x8, #0xab8]
  1001148a8  bl      _objc_msgSend                            ; [[TAGRateLimiter alloc] init]
  1001148ac  mov     x19, x0
  1001148b0  adrp    x8, #0x10041b000
  1001148b4  nop
  1001148b8  ldr     x1, [x8, #0xcf0]
  1001148bc  mov     v0.16b, v9.16b
  1001148c0  bl      _objc_msgSend                            ; [[[TAGRateLimiter alloc] init] setMaxTokens:arg1]
  1001148c4  adrp    x8, #0x10041b000
  1001148c8  nop
  1001148cc  ldr     x1, [x8, #0xcf8]
  1001148d0  mov     x0, x19
  1001148d4  mov     v0.16b, v8.16b
  1001148d8  bl      _objc_msgSend                            ; [[[TAGRateLimiter alloc] init] setSecondsPerToken:arg2]
  1001148dc  mov     x0, x19
  1001148e0  ldp     d9, d8, [sp], #0x10
  1001148e4  ldp     x20, x19, [sp], #0x10
  1001148e8  ldp     x29, x30, [sp], #0x10
  1001148ec  b       _objc_autoreleaseReturnValue
  1001148f0  mov     x20, x0
  1001148f4  mov     x0, x19
  1001148f8  bl      _objc_release
  1001148fc  mov     x0, x20
  100114900  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRateLimiter tokenAvailable]
; address 0x100114904  size 588  kind objc
; ======================================================================
  100114904  stp     x29, x30, [sp, #-0x10]!
  100114908  mov     x29, sp
  10011490c  stp     x20, x19, [sp, #-0x10]!
  100114910  stp     x22, x21, [sp, #-0x10]!
  100114914  stp     d9, d8, [sp, #-0x10]!
  100114918  stp     d11, d10, [sp, #-0x10]!
  10011491c  bl      _objc_retain
  100114920  mov     x19, x0
  100114924  bl      _objc_sync_enter                         ; objc_sync_enter(self)
  100114928  adrp    x8, #0x10041b000
  10011492c  nop
  100114930  ldr     x1, [x8, #0xd00]
  100114934  mov     x0, x19
  100114938  bl      _objc_msgSend                            ; [self secondsPerToken]
  10011493c  mov     v9.16b, v0.16b
  100114940  fcmp    d9, #0.0
  100114944  b.le    loc_100114a4c                            ; if ([self secondsPerToken] <= (or unordered) 0.0)
  100114948  adrp    x8, #0x10041e000
  10011494c  ldr     x0, [x8, #0x38]                          ; class NSDate
  100114950  adrp    x8, #0x100419000
  100114954  nop
  100114958  ldr     x1, [x8, #0xb40]
  10011495c  bl      _objc_msgSend                            ; [NSDate timeIntervalSinceReferenceDate]
  100114960  mov     v8.16b, v0.16b
  100114964  adrp    x8, #0x10041b000
  100114968  nop
  10011496c  ldr     x20, [x8, #0xd08]
  100114970  mov     x0, x19
  100114974  mov     x1, x20
  100114978  bl      _objc_msgSend                            ; [self tokens]
  10011497c  mov     v10.16b, v0.16b
  100114980  adrp    x8, #0x10041b000
  100114984  nop
  100114988  ldr     x21, [x8, #0xd10]
  10011498c  mov     x0, x19
  100114990  mov     x1, x21
  100114994  bl      _objc_msgSend                            ; [self maxTokens]
  100114998  fcmp    d10, d0
  10011499c  b.pl    loc_100114a1c                            ; if ([self tokens] >= (or unordered) [self maxTokens])
  1001149a0  adrp    x8, #0x10041b000
  1001149a4  nop
  1001149a8  ldr     x1, [x8, #0xd18]
  1001149ac  mov     x0, x19
  1001149b0  bl      _objc_msgSend                            ; [self lastTrackTime]
  1001149b4  mov     v10.16b, v0.16b
  1001149b8  mov     x0, x19
  1001149bc  mov     x1, x21
  1001149c0  bl      _objc_msgSend                            ; [self maxTokens]
  1001149c4  mov     v11.16b, v0.16b
  1001149c8  mov     x0, x19
  1001149cc  mov     x1, x20
  1001149d0  bl      _objc_msgSend                            ; [self tokens]
  1001149d4  fsub    d1, d8, d10
  1001149d8  fdiv    d9, d1, d9                               ; t1 = (([NSDate timeIntervalSinceReferenceDate] - [self lastTrackTime]) / [self secondsPerToken])
  1001149dc  fadd    d0, d9, d0
  1001149e0  fcmp    d11, d0
  1001149e4  b.pl    loc_1001149f8                            ; if ([self maxTokens] >= (or unordered) (t1 + [self tokens]))
  1001149e8  mov     x0, x19
  1001149ec  mov     x1, x21
  1001149f0  bl      _objc_msgSend                            ; [self maxTokens]
  1001149f4  b       loc_100114a08
loc_1001149f8:
  1001149f8  mov     x0, x19
  1001149fc  mov     x1, x20
  100114a00  bl      _objc_msgSend                            ; [self tokens]
  100114a04  fadd    d0, d9, d0
loc_100114a08:
  100114a08  adrp    x8, #0x10041b000
  100114a0c  nop
  100114a10  ldr     x1, [x8, #0xd20]
  100114a14  mov     x0, x19
  100114a18  bl      _objc_msgSend                            ; [self setTokens:d0]
loc_100114a1c:
  100114a1c  adrp    x8, #0x10041b000
  100114a20  nop
  100114a24  ldr     x1, [x8, #0xd28]
  100114a28  mov     x0, x19
  100114a2c  mov     v0.16b, v8.16b
  100114a30  bl      _objc_msgSend                            ; [self setLastTrackTime:[NSDate timeIntervalSinceReferenceDate]]
  100114a34  mov     x0, x19
  100114a38  mov     x1, x20
  100114a3c  bl      _objc_msgSend                            ; [self tokens]
  100114a40  fmov    d1, #1.00000000
  100114a44  fcmp    d0, d1
  100114a48  b.ge    loc_100114abc                            ; if ([self tokens] >= 1)
loc_100114a4c:
  100114a4c  adrp    x8, #0x10041e000
  100114a50  ldr     x0, [x8, #0x548]                         ; class TAGDispatcher
  100114a54  adrp    x8, #0x10041b000
  100114a58  nop
  100114a5c  ldr     x1, [x8, #0xd30]
  100114a60  bl      _objc_msgSend                            ; [TAGDispatcher instance]
  100114a64  mov     x29, x29
  100114a68  bl      _objc_retainAutoreleasedReturnValue
  100114a6c  mov     x20, x0
  100114a70  adrp    x8, #0x100419000
  100114a74  nop
  100114a78  ldr     x1, [x8, #0xd20]
  100114a7c  bl      _objc_msgSend                            ; [[TAGDispatcher instance] logger]
  100114a80  mov     x29, x29
  100114a84  bl      _objc_retainAutoreleasedReturnValue
  100114a88  mov     x21, x0
  100114a8c  adrp    x8, #0x10041b000
  100114a90  nop
  100114a94  ldr     x1, [x8, #0xe90]
  100114a98  adrp    x2, #0x1003c4000
  100114a9c  add     x2, x2, #0x230                           ; @"Excessive tracking detected and throttled."
  100114aa0  bl      _objc_msgSend                            ; [[[TAGDispatcher instance] logger] warning:@"Excessive tracking detected and throttled."]
  100114aa4  mov     x0, x21
  100114aa8  bl      _objc_release
  100114aac  mov     x0, x20
  100114ab0  bl      _objc_release
  100114ab4  mov     w20, #0
  100114ab8  b       loc_100114ae8
loc_100114abc:
  100114abc  mov     x0, x19
  100114ac0  mov     x1, x20
  100114ac4  bl      _objc_msgSend                            ; [self tokens]
  100114ac8  fmov    d1, #-1.00000000
  100114acc  fadd    d0, d0, d1
  100114ad0  adrp    x8, #0x10041b000
  100114ad4  nop
  100114ad8  ldr     x1, [x8, #0xd20]
  100114adc  mov     x0, x19
  100114ae0  bl      _objc_msgSend                            ; [self setTokens:([self tokens] + -1)]
  100114ae4  mov     w20, #1
loc_100114ae8:
  100114ae8  mov     x0, x19
  100114aec  bl      _objc_sync_exit                          ; objc_sync_exit(self)
  100114af0  mov     x0, x19
  100114af4  bl      _objc_release
  100114af8  mov     x0, x20
  100114afc  ldp     d11, d10, [sp], #0x10
  100114b00  ldp     d9, d8, [sp], #0x10
  100114b04  ldp     x22, x21, [sp], #0x10
  100114b08  ldp     x20, x19, [sp], #0x10
  100114b0c  ldp     x29, x30, [sp], #0x10
  100114b10  ret
  100114b14  mov     x22, x0
  100114b18  b       loc_100114b28
  100114b1c  mov     x22, x0
  100114b20  mov     x0, x21
  100114b24  bl      _objc_release
loc_100114b28:
  100114b28  mov     x0, x20
  100114b2c  bl      _objc_release
  100114b30  b       loc_100114b38
  100114b34  mov     x22, x0
loc_100114b38:
  100114b38  mov     x0, x19
  100114b3c  bl      _objc_sync_exit                          ; objc_sync_exit()
  100114b40  mov     x0, x19
  100114b44  bl      _objc_release
  100114b48  mov     x0, x22
  100114b4c  bl      __Unwind_Resume                          ; Unwind_Resume()

; ======================================================================
; -[TAGRateLimiter secondsPerToken]
; address 0x100114b50  size 16  kind objc
; ======================================================================
  100114b50  adrp    x8, #0x100420000
  100114b54  ldrsw   x8, [x8, #0x7b0]                         ; ivar offset TAGRateLimiter._secondsPerToken (+0x8)
  100114b58  ldr     d0, [x0, x8]                             ; d0 = self->_secondsPerToken
  100114b5c  ret

; ======================================================================
; -[TAGRateLimiter setSecondsPerToken:]
; address 0x100114b60  size 16  kind objc
; ======================================================================
  100114b60  adrp    x8, #0x100420000
  100114b64  ldrsw   x8, [x8, #0x7b0]                         ; ivar offset TAGRateLimiter._secondsPerToken (+0x8)
  100114b68  str     d0, [x0, x8]                             ; self->_secondsPerToken = arg1
  100114b6c  ret

; ======================================================================
; -[TAGRateLimiter maxTokens]
; address 0x100114b70  size 16  kind objc
; ======================================================================
  100114b70  adrp    x8, #0x100420000
  100114b74  ldrsw   x8, [x8, #0x7b4]                         ; ivar offset TAGRateLimiter._maxTokens (+0x10)
  100114b78  ldr     d0, [x0, x8]                             ; d0 = self->_maxTokens
  100114b7c  ret

; ======================================================================
; -[TAGRateLimiter setMaxTokens:]
; address 0x100114b80  size 16  kind objc
; ======================================================================
  100114b80  adrp    x8, #0x100420000
  100114b84  ldrsw   x8, [x8, #0x7b4]                         ; ivar offset TAGRateLimiter._maxTokens (+0x10)
  100114b88  str     d0, [x0, x8]                             ; self->_maxTokens = arg1
  100114b8c  ret

; ======================================================================
; -[TAGRateLimiter tokens]
; address 0x100114b90  size 16  kind objc
; ======================================================================
  100114b90  adrp    x8, #0x100420000
  100114b94  ldrsw   x8, [x8, #0x7b8]                         ; ivar offset TAGRateLimiter._tokens (+0x18)
  100114b98  ldr     d0, [x0, x8]                             ; d0 = self->_tokens
  100114b9c  ret

; ======================================================================
; -[TAGRateLimiter setTokens:]
; address 0x100114ba0  size 16  kind objc
; ======================================================================
  100114ba0  adrp    x8, #0x100420000
  100114ba4  ldrsw   x8, [x8, #0x7b8]                         ; ivar offset TAGRateLimiter._tokens (+0x18)
  100114ba8  str     d0, [x0, x8]                             ; self->_tokens = arg1
  100114bac  ret

; ======================================================================
; -[TAGRateLimiter lastTrackTime]
; address 0x100114bb0  size 16  kind objc
; ======================================================================
  100114bb0  adrp    x8, #0x100420000
  100114bb4  ldrsw   x8, [x8, #0x7bc]                         ; ivar offset TAGRateLimiter._lastTrackTime (+0x20)
  100114bb8  ldr     d0, [x0, x8]                             ; d0 = self->_lastTrackTime
  100114bbc  ret

; ======================================================================
; -[TAGRateLimiter setLastTrackTime:]
; address 0x100114bc0  size 16  kind objc
; ======================================================================
  100114bc0  adrp    x8, #0x100420000
  100114bc4  ldrsw   x8, [x8, #0x7bc]                         ; ivar offset TAGRateLimiter._lastTrackTime (+0x20)
  100114bc8  str     d0, [x0, x8]                             ; self->_lastTrackTime = arg1
  100114bcc  ret
